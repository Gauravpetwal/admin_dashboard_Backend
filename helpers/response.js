const message = require("../models/message")

const success = (res,message,data) =>{
  
    return res.status(201).json({message:message,data:data})
}
 
const failed = (res,message,data) =>{
    return res.status(400).json({message:message, data:data})
}

const serverError =(res,message,data)=>{
    return res.status(500).json({message:message,data:data})
}

 const successes  =  (msg , data)=>{
    return  {
        statusCode : 1,
        data:data,
        message : msg
    }
}

const error = (msg, data) =>{
    return {statusCode : 0, data:data, message:msg}
}

//if somone account has blocked
const blockedError = (msg, data) =>{
    return { statusCode:3, data:data, message:msg}
}

//if 2fa is on
const twofactor = (msg, data)=>{
    return {statusCode:4, data:data,message:msg}
}

//for unauthorization
const unauthorization = (message , data) =>{
    return { statusCode: 401, data, message}
}
module.exports ={successes, error, success,failed,serverError,blockedError,twofactor, unauthorization}