const response = require('../../helpers/response')
const express = require('express')
const validate = require('../../helpers/validate')
const supportTicket = require('../../models/supportTicket')
const supportMessage = require('../../models/supportMessage');


const getIssues = async(req,res) =>{
    try{
        const {id} = req.user
        const {status,message} = await validate({id},{id:'required|isExist:users,id'})
        if(!status) return res.send(response.error(message));
        const page = parseInt(req.query.page) || 1;
        const limit = parseInt(req.query.pageSize);
        const offset = (page-1) * limit
        const issues = await supportTicket.findAndCountAll({offset,limit})
        return res.send(response.successes("All issues", issues))

    }catch(error){
        console.error(error.stack)
        return res.send(response.error(error.message))

    }

}


//getting the specific thicket
const ticket = async(req,res) =>{
    try{
        const {id} = req.query
        const {status,message} = await validate ({id},{id:'required|isExist:supporttickets,id'}) 
        if (!status) return res.send(response.error(message));
        const ticket = await supportTicket.findOne({where:{id}})
        const messages = await supportMessage.findAll({where:{ticketid:id}})
        return res.send(response.successes('Ticket',{ticket,messages}))

    }catch(error){
        console.error(error.stack)
        return res.send(response.error(error.message))
    }
}

//delete a ticket
const deleteTicket = async (req,res) =>{
    try{
        const {ticketid} = req.query
        const {status,message} = await validate ({ticketid}, {ticketid:'required|isExist:supporttickets,id'})
        if(!status) return res.send(response.error(message));
        const deleteTask = await supportTicket.destroy({where:{id:ticketid}})
        return res.send(response.successes("Ticket deleted"))
        
    }catch(error){
        return res.send(response.error(error.message))
    }
}

const resolvedTicket = async(req,res)=>{
    try{
        const {ticketid} = req.query
        const {status,message} = await validate ({ticketid}, {ticketid:'required|isExist:supporttickets,id'})
        if(!status) return res.send(response.error(message));
        const updatedStatus = await supportTicket.update({status:'Resolved'},{where:{id:ticketid}})
        return res.send(response.successes("Ticket resolved"))

    }catch(error){
        return res.send(response.error(error.message))
    }

}


//conver sation between the admin and the user
const storeMessages = async(req,res) =>{
    try{
        console.log("hitting the api")
        const {ticketid,message,userid} = req.body
        const data = {ticketid,message,userid}
        
        const rules ={
            ticketid:'required|integer',
            message:'required',
            userid:'required|integer'
        }
        const validateResponse = await validate(data,rules)
        console.log(validateResponse)

        if(!validateResponse.status) return res.send(response.error(validateResponse.message));
        const storedMessages = await supportMessage.create({ticketid,message,userid,sendertype:'admin'})
        return res.send(response.successes('message saved'))

    }catch(error){
        return res.send(response.error(error.message))
    }
}

//saving  the message
const saveMessage = async(req,res) =>{
    try{ 
        const io = req.app.get('io')
        // console.log(io)
        let imgurl=null ;
        const {ticketid, userid,message,sendertype} = req.body
        const validateResponse = await validate({userid,ticketid},{userid:'required|integer', ticketid:'required|integer'})
        if(!validateResponse.status) return res.send(response.error(message))
            
            if(req.file){
                const {filename } = req.file;
                imgurl = `/uploads/${filename}`; 
            }
            const saveMessage = await supportMessage.create({ticketid,userid,sendertype, imgurl, message})
            io.emit(ticketid,(saveMessage))
        return res.send(response.successes("filepath",saveMessage))

    }catch(error){
        console.log(error)
        return res.send(response.error(error.message))
    }
}

module.exports = {getIssues,ticket,deleteTicket,resolvedTicket,storeMessages,saveMessage}