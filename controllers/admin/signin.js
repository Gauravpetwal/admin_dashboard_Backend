const userTable = require("../../models/userModel");
const response = require("../../helpers/response");
const validate = require("../../helpers/validate");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const uuid = require('uuid')
const accessToken = require('../../models/accessToken')
const { OAuth2Client } = require('google-auth-library');


//admin signin
const signin = async (req, res) => {
    const { userEmail, userPassword } = req.body;
    const data = {
      Email: userEmail,
      Password: userPassword,
    };
    const rules = {
      Email: "required|email|isExist:users,email",
      Password: `required`,
    };

    const {status,message} = await validate(data, rules);
    if (!status) return response.failed(res,message, null);
    

    const user = await userTable.findOne({where: { email: userEmail, role: "admin" }});
    if (!user) return response.failed(res, "Invalid Email or Password");

    const confirmPassword = await bcrypt.compare(userPassword, user.Password);
    if (!confirmPassword) return response.failed(res, "Password is incorrect", null);

    const tokenid = uuid.v6()
    const payload = { id: user.id, tokenid}
    const token = jwt.sign(payload, process.env.JWT_SECRET_key, {
      expiresIn: "4h",
    });

    //adding cokies in response
     res.cookie("Token",token,{
      httpOnly:true,
      secure:true,
      expires: new Date(Date.now() + 3600000),
      sameSite:'Lax'
    })

    await accessToken.create({tokenid, userid:user.id})
    return response.success(res, message, { token: token });
};


//signing with google
const signInWithGoogle = async(req,res) =>{
  try{  
  const client = new OAuth2Client("133982942406-4naomvq0s544eb8or90eb8pqkfprkq1i.apps.googleusercontent.com");
  const {idToken} = req.body

  //verifying the token of the google
  const validationResponse =await client.verifyIdToken({idToken,client})
  const email = validationResponse.payload.email
  const {status,message} = await validate({email},{email:'required|email|isExist:users,email'});

  if(!status) return response.failed(res,message,null)  
    const admin = await userTable.findOne({where: {email, role: "admin" }});
    if(!admin) return res.failed(res,"Wrong Emain address")

      //if credential are valid
      const tokenid = uuid.v6()
      const payload = { id: admin.id, tokenid}
      const token = jwt.sign(payload, process.env.JWT_SECRET_key, {
        expiresIn: "4h",
      });
      await accessToken.create({tokenid, userid:admin.id})
      return response.success(res, message, { token: token });
  
  }catch(error){      
    console.error(error.stack)

  }
  
}

module.exports ={signin,signInWithGoogle}