const taskTable = require('../../../models/taskModel')
const response = require('../../../helpers/response')
const {sequelize} = require('../../../config/database')
 
const userSearching = async(req,res) =>{
    try{
        const {column, value} = req.query
        const searchResult =  await sequelize.query(`select *from users where ${column} like '%${value}%' or ${column} like '%${value}' or ${column} like '${value}%' or ${column} like '%________${value}'`)
          return response.success(res,null, searchResult)

    }catch(error){
          return response.serverError(res,"server error")

    }

}

module.exports = userSearching