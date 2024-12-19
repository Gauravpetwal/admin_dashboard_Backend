const { Sequelize, DataTypes, DATE } = require("sequelize");
const {sequelize} = require('../config/database');
const userTable = require('../models/userModel')
const taskTable = require('../models/taskModel')


const taskDetail = sequelize.define(
    'taskdetail',{
        id:{
            type:DataTypes.INTEGER,
            primaryKey:true,
            autoIncrement:true,
            allowNull:false,
        },
        taskId:{
            type:DataTypes.INTEGER,
            allowNull:false,
        },
        userId:{
            type:DataTypes.INTEGER,
            allowNull:false
        },
        status:{
            type:DataTypes.ENUM('complete', 'pending'),
            defaultValue:'pending'

        }
    }
)

taskDetail.belongsTo(userTable,{foreignKey:'userId', targetKey:'id',onDelete: 'CASCADE'})
taskDetail.belongsTo(taskTable,{foreignKey:'taskId', targetKey:'id', onDelete: 'CASCADE'})

userTable.hasMany(taskDetail,{foreignKey:'userId', onDelete: 'CASCADE'})
taskTable.hasMany(taskDetail,{foreignKey:'taskId', onDelete:'CASCADE'})

module.exports = taskDetail 