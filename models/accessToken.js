const { DataTypes } = require('sequelize');
const {sequelize} = require('../config/database');

const accessToken = sequelize.define('acesstokens',{
    id:{
        type:DataTypes.INTEGER,
        autoIncrement:true,
        allowNull:false,
        primaryKey:true
    },
    tokenid:{
        type:DataTypes.STRING,
        allowNulls:false,
        unique:true,
    },
    userid:{
        type:DataTypes.INTEGER,
        allowNulls:false
    },
    devicename:{
        type:DataTypes.STRING,
    }
})

module.exports = accessToken