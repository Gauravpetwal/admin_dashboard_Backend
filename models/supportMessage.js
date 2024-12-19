const { DataTypes } = require('sequelize');
const {sequelize} = require('../config/database');
const message = require('./message');


const supportMessage =  sequelize.define('supportMessages',{
        id:{
            type:DataTypes.INTEGER,
            autoIncrement:true,
            primaryKey:true,
            allowNull:false
        },
        ticketid:{
            type:DataTypes.INTEGER,
            allowNull:false
        },
        userid:{
            type:DataTypes.INTEGER,
            allowNull:false
        },
        message:{
            type:DataTypes.STRING,
        },
        imgurl:{
            type:DataTypes.STRING,
        },
        sendertype:{
            type:DataTypes.ENUM('user','admin'),
            allowNull:false
        }
    
})

module.exports = supportMessage