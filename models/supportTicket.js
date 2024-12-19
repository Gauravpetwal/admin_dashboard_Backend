const {sequelize} = require('../config/database')
const {DataTypes} = require('sequelize')

const supportTicket = sequelize.define('supportTickets',{
    id:{
        type:DataTypes.INTEGER,
        autoIncrement:true,
        primaryKey:true,
        allowNull:false
    },
    useremail:{
        type:DataTypes.STRING,
        allowNull:false,
    },
    username:{
        type:DataTypes.STRING,
        allowNull:false
    },
    userid:{
        type:DataTypes.INTEGER,
        allowNull:false

    },
    message:{
        type:DataTypes.TEXT,
    },
    issue:{
        type:DataTypes.STRING
    },
    status:{
        type:DataTypes.ENUM('Pending', 'Resolved'),
        defaultValue:'Pending'
    },
    isread:{
        type:DataTypes.ENUM('read', 'unread'),
        defaultValue:'unread'
    }
})

module.exports =  supportTicket