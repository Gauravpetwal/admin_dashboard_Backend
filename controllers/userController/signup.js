const response = require('../../helpers/response')
const userTable = require('../../models/userModel')
const validate = require('../../helpers/validate')
const bcrypt = require('bcrypt');
const  jwt = require('jsonwebtoken');
require('dotenv').config()
//signup new user
const singnup = async(req,res) => {

    try{
      const {userName, userEmail, userPassword}= req.body
      const data ={
        name:userName,
        email:userEmail,
        password:userPassword
      }
      const rules={
        name:'required|between:1,40',
        email:'required|email|isUnique:users,email',
        password:'required|between:8,40'
      }
  
      const validationResponse = await validate(data,rules)
      if(validationResponse.status === 0){
        return response.failed(res,validationResponse.message,null)
      }
      if(validationResponse.status === 1){
        const hashedPassword = await bcrypt.hash(userPassword, 10);
        const registerUser = await userTable.create({userName:userName, email:userEmail, Password:hashedPassword })
  
        if(registerUser.length === 0){
           return response.failed(res,"user not registerd", null)
        }
        return response.success(res,"user regitered successfully", null)
      }
  
    }catch(error){
          return response.serverError(res,error,null)
    
    }
  }
  module.exports = singnup