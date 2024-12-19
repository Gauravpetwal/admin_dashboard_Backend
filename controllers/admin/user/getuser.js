const validate = require('../../../helpers/validate')
const response = require('../../../helpers/response')
const userTable = require('../../../models/userModel')


//limied user
const getUsers = async (req,res) =>{
    try{
         
          const page = parseInt(req.query.page)||1
          const pageSize = parseInt(req.query.pageSize)
          const {orderType,column} = req.query   
          const data ={
            page:page,
            pageSize:pageSize
       }
       const rules = {
           page:'required|integer',
           pageSize:'required|integer'
       }
       const {status,message} = await validate(data,rules)
       if(status === 0){
        return response.failed(res,message)
       }

       const offset = (page-1)*pageSize
       const limit = pageSize

       const users = await userTable.findAndCountAll({limit:limit, offset:offset, order:[[column,orderType]],attributes:['id','email','userName','accountStatus','createdAt']})
       return response.success(res,null,users)

    }catch(error){
        console.log(error)
        return response.failed(res,"Server error")
    }
}



module.exports = getUsers