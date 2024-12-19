const taskTable = require('../../../models/taskModel')
const validate = require ('../../../helpers/validate')
const response = require ('../../../helpers/response')
const adminLog = require('../../../helpers/adminLog')
const deleteTask = async (req,res) =>{
        const {taskId} = req.body
        //getting the value for store in log table
        const {title, content} = await taskTable.findOne({where:{id:taskId}})
        const logData = {adminid:req.user.id, actiotype:"delete task", affectedentity:"task", entityid: taskId, oldvalue:{title,content}, actiontype:'Delete task' }

        const {status,message} = await validate({taskId:taskId}, {taskId:'required|integer|isExist:tasks,id'})
        if(status === 0){
            logData.actiondetails = 'trying to delete a task'
            logData.success = false
            adminLog(logData)
            return response.failed(res,message)
        }
       await taskTable.destroy({where:{id:taskId}})
            logData.success = true
            logData.actiondetails = "delete a task"
            adminLog(logData)
            return response.success(res,"Task deleted")
}

module.exports = deleteTask