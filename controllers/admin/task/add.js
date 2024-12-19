const taskTable = require('../../../models/taskModel')
const userTable = require('../../../models/userModel')
const validate = require ('../../../helpers/validate')
const response = require ('../../../helpers/response')
const adminLog = require('../../../helpers/adminLog')
const taskDetail = require('../../../models/taskDetail')

const addTask = async (req, res) => {
    try {
      const { title, description, content, expirydate, userIds } = req.body;
  
      const data = {title,description,content,expirydate};
      const rules = {
        title: "required|string|isUnique:tasks,title",
        description: "required|string|isUnique:tasks,description",
        content: "required|string|isUnique:tasks,content",
      };

      //storing in admin log in table 
      const logData = {adminid:req.user.id, actiontype:"Add task", affectedentity:'Task', newvalue:{'task name': title, 'content':content, "assign user": userIds}, actiondetails:"adding new task"}
  
      const {status,message} = await validate(data, rules);
      if (status === 0) {
        logData.success = false
        adminLog(logData)
        return response.failed(res, message);
      }
        const addtask = await taskTable.create({title: title,description: description, content: content,expirydate: expirydate,});   
  
        //storing user-task ids in a table
        if (userIds && userIds.length > 0) {
          const taskDetails = userIds.map((userId) => ({
            taskId: addtask.id,
            userId: userId,
          }));
        await taskDetail.bulkCreate(taskDetails);
        }
        logData.success = true
        logData.entityid = addtask.id
        adminLog(logData)
        return response.success(res, "Task Added", addtask);
      
    } catch (errors) {
      return response.failed(res, "An error accured while adding the new task");
    }
  };


  //getting all user, so task can assign to them
  const allUers = async(req,res) =>{
      const {id} = req.user
      const {status, message} = await validate({id}, {id:'required|isExist:users,id'})
      if(!status) return res.send(response.error(message));
      const users = await userTable.findAll({attributes:['id','userName']})
      return res.send(response.successes(null, users))
  }
  module.exports = {addTask, allUers}