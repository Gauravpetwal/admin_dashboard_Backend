const response = require('../../helpers/response')
const validate = require('../../helpers/validate')
const jwt = require('jsonwebtoken')
const bcrypt = require('bcrypt')
const userTable = require('../../models/userModel')
const user = require('../../models/userModel')


const changPassword = async (req,res) =>{
    try{
        const {currentPass, newPass} = req.body
        const {id} = req.user
        const data = {
            id,
            currentPass,
            newPass
        }
        console.log(currentPass)
        const rules = {
            id:'required|isExist:users,id',
            currentPass:'required',
            newPass:'required'
        }
        const {status,message} = await validate(data,rules)
        if(!status) return response.failed(res,message);
        const {Password} = await userTable.findOne({where:{id:id}})
        const isSamePassword = await bcrypt.compare(currentPass,Password)
        if(!isSamePassword) return response.failed(res,"Your current password is incorrect");
        const isNewPassSame = await bcrypt.compare(newPass,Password)
        if(isNewPassSame) return response.failed(res,"Your current password and new password is same");
        const hashedPassword = await bcrypt.hash(newPass,10)
        const changePass = await userTable.update({Password:hashedPassword},{where:{id:id}})
        return response.success(res,"Password Changed",)
        
    }catch(error){
        console.log(error)
        return response.failed(res,"faile",error)
    }
}

module.exports = changPassword