const {sequelize} = require('../config/database')
const userTable = require('../models/userModel')
const taskTable = require('../models/taskModel')
const taskDetailTabale = require('../models/taskDetail')
const message = require('../models/message')
const loginHistory = require('../models/loginHistory')
const accessToken = require('../models/accessToken')
const adminLogs = require('../models/adminLog')
const template = require('../models/templates')
const supportMessage = require('../models/supportMessage')
const supportTicket = require('../models/supportTicket')

const syncmodels = async  () =>{
    try{
//    await sequelize.sync({alter:true});
        console.log("All models synced with database")
    }catch(error){
        console.log(error)
        console.log("Failed to sync the models", error)
    }
}

//relation between the usertable and the token table
accessToken.belongsTo(userTable,{foreignKey:'userid', targetKey:'id', onDelete:'CASCADE'})
userTable.hasMany(accessToken,{foreignKey: 'userid', sourceKey:'id' })


//relation between the supportmessage table tand the supportticket table
supportMessage.belongsTo(supportTicket,{foreignKey:'ticketid', targetKey:'id', onDelete:'CASCADE'})
supportTicket.hasMany(supportMessage,{foreignKey:'ticketid', sourceKey:'id'}) 

//relation between the user table and the support ticket table
supportTicket.belongsTo(userTable,{foreignKey:'userid', targetKey:'id'})
userTable.hasMany(supportTicket,{foreignKey:'userid', sourceKey:'id', onDelete:'CASCADE'})

module.exports = syncmodels