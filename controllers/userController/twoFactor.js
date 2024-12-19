const response = require('../../helpers/response')
const userTable = require('../../models/userModel')
const validate = require('../../helpers/validate')
const  speakeasy = require("speakeasy");
const  QRCode = require('qrcode');



const checkTwoFactor = async (req,res) =>{
    try{
        const {id} = req.user
        const {status,message} = await validate({id:id},{id:'required|isExist:users,id'})
        if(!status) {
            return response.failed(res,message)
        }
        const isTwoFactor = await userTable.findOne({where:{id:id, twoFactor:1}})
        if(!isTwoFactor){
            return response.success(res,"Not enables", false)
        }
        return response.success(res,"Enabled",true)

    }catch(error){
           return response.failed(res,"Server Error")
    }
}

const setTwoFactor = async (req,res) =>{
    try{
        const {id} = req.user
        const {status,message} = await validate({id:id},{id:'required|isExist:users,id'})
        if(!status){
            return response.failed(res,message)
        }
        //checking if the user already setup two factor authentication
        const user = await userTable.findOne({where:{id:id}})
        if(user.twoFactorKey && user.isTwoFactorSetup ) {
            await userTable.update({twoFactor:1},{where:{id:id}})
            return response.success(res,"Already setup 2fa", {status:1})
        }

        const  secret = speakeasy.generateSecret();
       const setkey = await userTable.update({twoFactorKey:secret.base32},{where:{id}})
       QRCode.toDataURL(secret.otpauth_url, function(err, data_url) {
       return response.success(res,null, {secretKey:secret, url:data_url })
       }
    )
    }catch(error){
        return response.failed(res,"Server Error")
    }
}

const varifyPin = async (req,res) =>{
    const {pin} = req.body
    const {id} = req.user
      const {status,message} = await validate({pin:pin, id:id}, {pin:'required',id:'required|isExist:users,id'})
    if(!status){
        return response.failed(res, message)
    }
    const getSecretKey = await userTable.findOne({where:{id},attributes:['twoFactorKey']})
    const secret = getSecretKey.twoFactorKey
     const  tokenValidates =  speakeasy.totp.verify({
        secret:secret,
        encoding: 'base32',
        token: pin,
        // window:1
     
      });
   if(!tokenValidates){
       return response.failed(res,"Incorrect PIN")
    }
    const setSecrateKey = await userTable.update({twoFactorKey:secret,twoFactor:1,isTwoFactorSetup:1},{where:{id}})
    return response.success(res,"TwoFa enabled")

}
const disableTwoFa = async(req,res) =>{
    try{
        const {id} = req.user
        const {status} = await validate({id:id},{id:'required|isExist:users,id'})
        if(!status){
            return response.failed(res,message)
        }
        const disable = await userTable.update({twoFactor:false}, {where:{id:id}})
        if(!disable){
            return response.failed(res,"Failed to disable")
        }
        return response.success(res,"Two Factor disabled")

    }catch(error){
               return response.failed(res,"failed to disable")
    }
}


module.exports = {checkTwoFactor,setTwoFactor,varifyPin,disableTwoFa}