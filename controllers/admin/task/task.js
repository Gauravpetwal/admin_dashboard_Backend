const taskTable = require('../../../models/taskModel')
const validate = require ('../../../helpers/validate')
const response = require ('../../../helpers/response')

//pagination
const getTask = async (req, res) => {
    try {
      const page = parseInt(req.query.page) || 1;
      const page_size = parseInt(req.query.pageSize);
      const {orderby,column} = req.query
      const data = {
        page: page,
        page_size: page_size,
      };
      const rules = {
        page: "required|integer",
        page_size: "required|integer",
      };
      const validateResponse = await validate(data, rules);
      if (validateResponse.status === 0) {
        return response.failed(res, validateResponse.message);
      }
  
      const offset = (page - 1) * page_size;
      const limit = page_size;
  
      const Datarows = await taskTable.findAndCountAll({
        limit: limit,
        offset: offset,
        order:[[column, orderby]]
      });
      return response.success(res, "All task", Datarows);
    } catch (error) {
      return response.failed(res, error.message);
    }
  };

  module.exports = getTask