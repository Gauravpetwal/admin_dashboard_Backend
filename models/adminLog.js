const { DataTypes } = require('sequelize')
const {sequelize} = require('../config/database')

const adminLog = sequelize.define('adminlogs',{
    id:{
        type:DataTypes.INTEGER,
        autoIncrement:true,
        allownull:true,
        primaryKey:true
    },
    adminid:{
        type:DataTypes.INTEGER,
        allownull:false
    },
    actiontype:{
        type:DataTypes.TEXT,
        allownull:false
    },
    affectedentity:{
        type:DataTypes.TEXT,
        allownull:false
    },
    entityid:{
        type:DataTypes.INTEGER,
    },
    oldvalue:{
        type:DataTypes.JSON
    },
    newvalue:{
        type:DataTypes.JSON
    },
    success:{
        type:DataTypes.BOOLEAN
    },
    actiondetails:{
        type:DataTypes.TEXT
    }
})

module.exports = adminLog

