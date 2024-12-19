const accessToken = require('../../models/accessToken')
const response = require('../../helpers/response')
const validate = require('../../helpers/validate')
const {Op} = require('sequelize')

const logout = async (req,res) =>{
    try{
        const {id,tokenid} = req.user
        const {type} = req.body
        const {status,message} = await validate({id},{id:'required|isExist:users,id'})
        if(!status) return res.send(response.error(message));

        //if the request of logout from all devices
        if(type === 'all'){
          const logout =   await accessToken.destroy({where:{userid:id ,tokenid:{ [Op.ne]:tokenid}}})
          if(logout > 0) {return res.send(response.successes("Account has been logged out from all devices"))};
          if(logout === 0)return res.send(response.successes("You are already logged out from all other devices"));
        }
        const logoutCurrentAccount  = await accessToken.destroy({where:{userid:id, tokenid }})
        if(!logoutCurrentAccount) return res.send(response.error("Failed to logout!"));      
        return res.send(response.successes("Logout successfully"))
    }catch(error){
        console.log(error.stack)
        return res.send(response.error(error.message))
    }
}

module.exports = logout