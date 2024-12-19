const validate = require('../../../helpers/validate')
const response = require('../../../helpers/response')
const userTable = require ('../../../models/userModel')
const bcrypt = require ('bcrypt')
const loginHistory = require('../../../models/loginHistory')
const adminLog = require('../../../helpers/adminLog')

const addUser = async (req,res) =>{
        const {name, email, password} = req.body
        const data = {name, email,password}

        const rule ={
            name:'required',
            email:'required|email|isUnique:users,email',
            password:'required'
        }
       
        const adminActionLog  = {adminid:req.user.id, actiontype:'Add user', affectedentity: "User" , newvalue:{'name':name, 'email' : email}}
        const {status,message} = await validate (data,rule)
        if(status===0){
            adminActionLog.actiondetails = 'trying to add new user';
            adminActionLog.success = false;
            adminLog(adminActionLog)
            return response.failed(res,message)
        }

            const hashedPassword = await bcrypt.hash(password,10)
            const storeUser= await userTable.create({userName:name, email, Password:hashedPassword})
            if(storeUser === 0){
                return response.failed(res,"Failed to add user")
            }
            adminActionLog.success = true
            adminActionLog.actiondetails= "Adds new user"
            adminActionLog.entityid = storeUser.id
            await adminLog(adminActionLog)
            return response.success(res,"user added",storeUser)
}
module.exports = addUser
