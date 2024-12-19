const taskTable = require ('../../models/taskModel')
const response = require('../../helpers/response')
const validate = require ('../../helpers/validate')
const taskDetailTable = require('../../models/taskDetail')


const taskDetails = async (req,res) =>{
    try{
        const {taskId} = req.query
        const {status,message} = await validate({taskId:taskId},{taskId:'required|isExist:tasks,id'})
        if(!status){
            return response.failed(res,message)
        }
        const task = await taskTable.findOne({where:{id:taskId}})
        return response.success(res,"task details", task)

    }catch(error){
        return response.failed(res,'Server Error')
    }
}

const changeStatusOfTask = async (req,res) =>{
    try{
        const {taskId} = req.query
        const userId = req.user.id
        const updatedStatus = await taskDetailTable.update({status:'complete'}, {where:{taskId:taskId, userId:userId}})
        return response.success(res,"Updated")

    }catch(error){
          return response.failed(res,"Server Error")
    }
}

//getting all task
const getTask = async (req,res) =>{
    try{
      const userId = req.user.id
     // console.log("the task id", taskId)
      const validationResponse = await validate({id:userId}, {id:'required|integer'})
      if(validationResponse.status === 0){
        return response.failed(res,validationResponse.message)
      }
      if(validationResponse.status === 1){
        const userTasks = await taskTable.findAll({include:[{model:taskDetailTable, where:{userId:userId}, attributes:['status']}]})
          return response.success(res,null,userTasks)
      }

    }catch(error){
      console.log(error)
      return response.serverError(res,null,error)
    }
  }

module.exports = { taskDetails,changeStatusOfTask,getTask}