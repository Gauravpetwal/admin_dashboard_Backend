const { DataTypes } = require('sequelize');
const {sequelize} = require('../config/database');

const message = sequelize.define('messages',{
    id:{
        type:DataTypes.INTEGER,
        autoIncrement:true,
        allowNull:false,
        primaryKey:true
    },
    message:{
        type:DataTypes.STRING,
        allowNull:false,
    },
    taskid:{
        type:DataTypes.INTEGER,
        allowNull:false,
    },
    userid:{
        type:DataTypes.INTEGER,
        allowNull:false
    }
})

module.exports = message
