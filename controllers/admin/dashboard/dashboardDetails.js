const response = require('../../../helpers/response')
const taskTable = require('../../../models/taskModel')
const userTable = require('../../../models/userModel')
const supportTable = require('../../../models/supportTicket')
const  cookieParser = require('cookie-parser')
const dashboardDeatails = async (req,res) =>{
    try{

        const token = req.cookies;
        console.log("cookie",token)

        const totalTaskCount = await taskTable.count()
        const totalUserCount = await userTable.count()
        const totalSupportCount = await supportTable.count()
        const supportPendingCount = await supportTable.count({where:{status:'Pending'}})
        const supportResolvedCount = await supportTable.count({where:{status:'Resolved'}})
        const supportOngoingCount = await supportTable.count({where:{status:'In Progress'}})

        return response.success(res,null,{totalTaskCount,totalUserCount,totalSupportCount,supportPendingCount,supportResolvedCount,supportOngoingCount})
    }catch{
        return response.failed(res,"Server Error")
    }
}

module.exports = dashboardDeatails