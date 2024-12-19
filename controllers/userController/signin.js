  const userTable = require('../../models/userModel')
  const response = require('../../helpers/response')
  const validate = require('../../helpers/validate')
  const bcrypt = require('bcrypt')
  const jwt = require('jsonwebtoken')
  const  speakeasy = require("speakeasy");
  const dayjs = require('dayjs');
  const loginHistory = require('../../models/loginHistory')
  const uuid = require('uuid')
  const accessToken = require('../../models/accessToken')

  
  //signin the user
  const signin = async (req, res) => {  
    try { 
      //user information
      const logintime = dayjs().format("YYYY-MM-DD HH:mm:ss");
      const userAgent = req.get('User-Agent');
      let ipaddress = req.ip
      const browserRegex = /(chrome|firefox|safari|msie|edge|opera|trident|mozilla)/i;
      const osRegex = /(windows nt|mac os x|linux|android|ios)/i;  
      const browsername = userAgent.match(browserRegex)[0];
      const os = userAgent.match(osRegex)[0];
  
      const {userEmail, userPassword}= req.body
      const data = {
      Email: userEmail,
      Password: userPassword,
    };
    const rules = {
      Email: "required|email|isExist:users,email",
      Password: `required`,
    };

    const validationResponse = await validate(data, rules);
     if (validationResponse.status === 0) {
    await loginHistory.create({email:userEmail,loginstatus:0, ipaddress, os, logintime,browsername })
      return response.failed(res,validationResponse.message,null) 
    }
     
    //finding the user 
    const user = await userTable.findOne({ where: { email: userEmail } });

    //checking if the user is blocked
    if(user.accountStatus === 'blocked') return res.send(response.blockedError("Account has been blocked"));

    //confirming the user password
    const confirmPassword = await bcrypt.compare(userPassword, user.Password);
    if (!confirmPassword) {
      await loginHistory.create({email:userEmail,loginstatus:0, ipaddress, os, logintime, browsername })
      return response.failed(res,"Password is incorrect",null);
    }

    //checking if the two factor is on or off 
    if(user.twoFactor){
      return res.send(response.twofactor("Two factor is enabled"))
    }

        //unique id for the token (jti)
        const tokenid =  uuid.v6() 
        const payload = {
          id:user.id,
          tokenid
        }    
        //integrating the tokenid into the jwt
        const token = jwt.sign(payload, process.env.JWT_SECRET_key, { expiresIn: "4h", });
        await accessToken.create({tokenid, userid:user.id})      

    await loginHistory.create({email:userEmail,loginstatus:1, ipaddress, os, logintime, browsername })
   return res.send(response.successes(null,{token}))
  }
   catch (error) {
         console.log(error)
          return response.serverError(res,"due to server Error",(error))
    }
};

//verifying pin if the two factor is on 
const verifyPin =  async (req,res) =>{
    try{

        const {pin,email} = req.body       
        const {status,message} = await validate({pin:pin},{pin:'required'})
        if(!status){
            return response.failed(res,message)
        }
        const {id,twoFactorKey} = await userTable.findOne({where:{email},attributes:['twoFactorKey','id']})
        const secretKey = twoFactorKey
         const  tokenValidates =  speakeasy.totp.verify({
            secret:secretKey,
            encoding: 'base32',
            token: pin,
            window:1
         
          })
          if(!tokenValidates){
            let data = {
                tokenValidates
            }
            return res.send(response.error("invalid 2fa" , data))  
          }
             //unique id for the token (jti)
        const tokenid =  uuid.v6() 
        const payload = {
          id,
          tokenid
        }    
        //integrating the tokenid into the jwt
        const token = jwt.sign(payload, process.env.JWT_SECRET_key, { expiresIn: "4h", });
        await accessToken.create({tokenid, userid:id})      
          return response.success(res,"Signin successfully",{ tokenValidates,token:token})


    }catch(error){
        console.log(error)
        return response.failed(res,"Failed to verify")
    }
}
module.exports = {signin, verifyPin}