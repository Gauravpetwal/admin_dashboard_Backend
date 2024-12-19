
const response = require('../../../helpers/response')
const validate = require ('../../../helpers/validate')
const taskTable = require ('../../../models/taskModel')
const taskDetail = require('../../../models/taskDetail')
const userTable = require('../../../models/userModel')
const adminLog = require('../../../helpers/adminLog')


const editTask = async (req,res) =>{
    try{
          const dataToUpdate = req.body
          const {taskId,assignedUserId} = req.body

          const logData = {adminid:req.user.id, affectedentity:'Task', actiontype:"update", entityid:taskId, newvalue:{ 'title': dataToUpdate.title, 'content': dataToUpdate.content, 'description':dataToUpdate.description}, actiondetails:"upating a task "}
          
          //checking if the taskid is available or not
          const {status,message} = await validate({taskId},{ taskId:'required|isExist:tasks,id',}) 
          if(!status){
            logData.status = false
            logData.actiondetails= 'Trying to update task'
            return response.failed(res,message)
           }
       

          
          //filtering the null values
          const filteredDataToUpdate = Object.fromEntries(
            Object.entries(dataToUpdate).filter(([key, value]) => {
              if (value === null || value === undefined) {
                return false; 
              }         

              if (typeof value === 'string' && value.trim() === "") {
                return false; 
              }
          
              if (Array.isArray(value) && value.length === 0) {

                return false;
              }
          
              return true; 
            })
          );

          //deleting all associated value if array is empty
          if(assignedUserId.length === 0 && Array.isArray(assignedUserId)){
          await taskDetail.destroy({where:{taskId:taskId}})
          }
            //getting the assing users id
          const updatedUserIds = filteredDataToUpdate.assignedUserId   
          const preveiousUser = await taskDetail.findAll({where:{taskId:taskId}, attributes:["userId"],  distinct: true})
          const preveiousUserUserId = preveiousUser.map((user) => user.userId)
  
     

          //creating or adding the value in data base if there is any values and type of the opeartor is arry
          if(assignedUserId.length >0 && Array.isArray(assignedUserId)){
            console.log("inside create model")
              const newUserIds =  assignedUserId.filter((user) => !preveiousUserUserId.includes(user))
              const taskDetails = newUserIds.map((userId) => ({
                  taskId: taskId,
                  userId: userId,
                }));
             await taskDetail.bulkCreate(taskDetails); 
                
            }
            
            if(assignedUserId.length > 0 && Array.isArray(assignedUserId)){
             const removedUserIds =  preveiousUserUserId.filter((user) => !updatedUserIds.includes(user))
               await taskDetail.destroy({where:{userId: removedUserIds,taskId:taskId}})
         }
      logData.success = true
      logData.newvalue = filteredDataToUpdate
      adminLog(logData)
      await taskTable.update(filteredDataToUpdate,{where:{id:taskId}})  //updating taskTable
      const updatedTask = await taskTable.findOne({where:{id:taskId}})//getting updating task
      return response.success(res,"Task updated",updatedTask)    
   }catch(error){
               return response.failed(res,"server Error")
    }
}


//function to get the task who is to be updated
const taskToUpdate = async (req,res) =>{
    try{
        const {taskId} = req.query
        const {status, message} =await validate({taskId},{taskId:'required|integer|isExist:tasks,id'})
        if(!status) return response.failed(res,message);
  
        const task = await taskTable.findOne({where:{id:taskId}})
        const assignedUsers = await userTable.findAll({include:[{model:taskDetail, where:{taskId:taskId}, attributes:[]}],attributes:["id","userName"]})
        const users = await userTable.findAll({attributes:["id","userName"]})
       return response.success(res,null,{assignedUsers, task, users})
    }catch(error){
        console.error(error)
        return response.failed(res,"Server error")
    }
}

module.exports = {editTask,taskToUpdate}