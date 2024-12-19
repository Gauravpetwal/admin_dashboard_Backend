const response = require('../../helpers/response')
const validate = require('../../helpers/validate')
const messageTable = require('../../models/message')
const message = async (req,res) =>{
    try{
        const userid = req.user.id
        const {taskid,msg} = req.body
        const {status,message} = await validate({id:userid, message:msg},{message:'required',id:'required|isExist:users,id'})
        if(!status) return response.failed(res,message);
        const saveMessages = await messageTable.create({message:msg,userid,taskid})
        return res.send(response.successes(null, saveMessages))
        }catch(error){
        return res.send(response.error(error.message))
    }
}

const getmessage = async (req,res) =>{
    try{
        const userid = req.user.id
        const {taskid} = req.query
        const {status,message} = await validate({id:userid, taskid:taskid},{taskid:'required|isExist:tasks,id',id:'required|isExist:users,id'});
        if(!status) return res.send(response.error(message));
        const messages = await messageTable.findAll({where:{taskid}})
        const responseData = { message:messages, userid:userid}
        return res.json(response.successes(null, responseData))          
    }catch(error){
        return res.send(response.error(error.message))

    }
}

module.exports = {message,getmessage}