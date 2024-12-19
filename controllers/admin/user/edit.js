
const response = require('../../../helpers/response')
const validate = require ('../../../helpers/validate')
const userTable = require ('../../../models/userModel')
const adminLog = require('../../../helpers/adminLog')
const bcrypt = require('bcrypt')

const editUser = async (req,res) =>{
    try{
        const {name, email, password, userId, accountStatus} = req.body
        const data = {name, email, password, userId}
       const rules = {
        userId : 'required|isExist:users,id',
        name:'required',
        email:'required',
      }

      const user = await userTable.findOne({where:{id:userId}})
      const adminActionLog = { adminid:req.user.id, actiontype:"update user", affectedentity: "User", entityid:userId, newvalue:{name,email,accountStatus}, oldvalue:{'name': user.userName, 'email':  user.email, 'accountStatus': user.accountStatus}}

       const {status,message} = await validate(data,rules)
        if(!status){
            adminActionLog.success = false
            adminLog(adminActionLog)
        return response.failed(res,message)
      }
      if(password){
          const hashedPassword = await bcrypt.hash(password,10)
          await userTable.update({Password:hashedPassword},{where:{id:userId}})
      }
      adminActionLog.success = true
       adminLog(adminActionLog)
      await userTable.update({userName:name, email, accountStatus},{where:{id:userId}})
      const updateduser = await userTable.findOne({where:{id:userId},attributes:['id','email','userName','accountStatus','createdAt']})
      return response.success(res,"User updated",updateduser)    
   }catch(error){
        return response.failed(res,"server Error")
    }
}

const userToUpdate = async (req,res) =>{
        const {userId} = req.query
        const {status, message} =await validate({userId},{userId:'required|integer|isExist:users,id'})
        if(!status)return response.failed(res,message);
        const user = await userTable.findOne({where:{id:userId},attributes:['id','email','userName','accountStatus']})
        return response.success(res,null,user)
}

module.exports = {editUser,userToUpdate}