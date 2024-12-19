const response = require('../../helpers/response')
const validate = require('../../helpers/validate')
const supportTicketTable = require('../../models/supportTicket')
const supportMessageTable = require('../../models/supportMessage')
const userTable = require('../../models/userModel')

const supportTicket = async (req,res) =>{
    try{
        console.log("api hit")
        const userid = req.user.id
        const {issue,messages} = req.body
        const data = {userid, issue, messages }

        console.log(issue,messages)

        //getting the user information
        const {userName,email} = await userTable.findOne({where:{id:userid}})
        const rules = {userid:'required|isExist:users,id',  issue:'required', messages:'required'}
        const {status,message} = await validate(data,rules)
        if(!status) return res.send(response.error(message));

        //storing issue in supportTicketTable
        const saveIssue = await supportTicketTable.create({useremail:email, username:userName, userid,issue, message:messages })
        return res.send(response.successes())

        //storing the message
        // const saveMessage = await supportMessageTable.create ({userid,message:messages, ticketid:saveIssue.id })

    }catch(error){
        console.error(error.stack)
        return res.send(response.error(error.message))
    }
}

//get all issue
const getAllIssue = async(req,res) =>{
    try{
        const {id} = req.user
        const {status,message} = await validate ({id}, {id:'required|isExist:users,id'})
        if(!status) return res.send(response.error(message));
        const issues = await supportTicketTable.findAll({where:{userid:id}})
        return res.send(response.successes("All issue", issues))

    }catch(error){
        console.error(error.stack)
          return res.send(response.error(error.message))
    }
}


//get converSation between user and the admin
const getMessages = async (req,res) =>{
    try{
        const {id} = req.user
        const {status,message} = await validate({id},{id:'required|isExist:users,id'})
        if(!status) return res.send(response.error(message));

        //get all message of particular user
        const messages = await supportMessageTable.findAll({where:{userid:{id}}}) 
        return res.send(response.successes("all messages", messages))


    }catch(error){
        console.error(error)
        return res.send(response.error(error.message))
    }
}

module.exports = {supportTicket,getMessages,getAllIssue}