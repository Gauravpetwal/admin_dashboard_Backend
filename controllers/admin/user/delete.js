const  validate = require ("../../../helpers/validate")
const response = require ('../../../helpers/response')
const userTable = require ('../../../models/userModel')
const adminlog = require('../../../helpers/adminLog')
//deleting usre
const deleteUser = async (req, res) => {
    const id = req.body.id;
    const { status, message } = await validate({ id },{ id: "required|integer|isExist:users,id" })
    const adminActionLog  = {adminid:req.user.id, actiontype:'delete user', affectedentity: "User" , entityid:id, actiondetails:"deleting user"}
    if (status === 0) {
      adminActionLog.success = false
      adminlog(adminActionLog)
      return response.failed(res, message);
    }
 await userTable.destroy({ where: { id } });


 adminActionLog.success = true
    adminlog(adminActionLog)
    return response.success(res, "User deleted");
 
}
module.exports = deleteUser
