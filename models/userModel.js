const { Sequelize, DataTypes, Deferrable } = require("sequelize");
const {sequelize} = require('../config/database');


const user = sequelize.define(
  "user",
  {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      autoIncrement: true,
      primaryKey: true,
    },
    userName: {
      type: DataTypes.CHAR,
      allowNull: false,
    },

    email: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
    },

    Password: {
      type: DataTypes.STRING,
      allowNull: false,
    },

    role:{
      type:DataTypes.ENUM('user', 'admin'),
      defaultValue:'user'
    },
    
    accountStatus:{
      type:DataTypes.ENUM('blocked','unblocked'),
      defaultValue:'unblocked'
    },
    twoFactor:{
      type:DataTypes.BOOLEAN,
      defaultValue:false
    },
    twoFactorKey:{
      type:DataTypes.STRING,
      allowNull:true
    },
    isTwoFactorSetup:{
      type:DataTypes.BOOLEAN,
      defaultValue:false
    }



    
  },
  {
    
    timestamps: true,
  }
);
module.exports = user;
