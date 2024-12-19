const { Sequelize, DataTypes } = require("sequelize");
const {sequelize} = require('../config/database');
const userTable = require('./userModel')

const Task = sequelize.define(
    'task',{
        id:{
            type:DataTypes.INTEGER,
            primaryKey:true,
            autoIncrement:true,
            allowNull:false,
            unique:true
        },
        title:{
            type:DataTypes.STRING,
            allowNull:false,
            unique:true,
        },
        description:{
            type:DataTypes.STRING,
            allowNull:false,
            unique:true
        },
        content:{
            type: DataTypes.STRING(300),
            allowNull:false,
            unique:true
        },
        expirydate :{
            type:DataTypes.DATE
            
            
        }
    }
)


module.exports = Task