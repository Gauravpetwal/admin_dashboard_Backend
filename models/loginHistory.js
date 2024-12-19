const { DataTypes } = require('sequelize');
const {sequelize} = require('../config/database');
const { default: isEmail } = require('validator/lib/isEmail');

const loginHistory =  sequelize.define('loginHistorys',{
    id:{
        type:DataTypes.INTEGER,
        autoIncrement:true,
        primaryKey:true,
        allowNull:false,
  },
  email:{
    type:DataTypes.STRING,
    allowNull:false,
  },
  loginstatus:{
    type:DataTypes.BOOLEAN,
    allowNull:false
  },
  ipaddress:{
    type:DataTypes.STRING
  },
  browsername:{
    type:DataTypes.STRING
  },
  location:{
    type:DataTypes.STRING
  },
  os:{
    type:DataTypes.STRING,
  },
  logintime:{
    type:DataTypes.STRING
  }

},
{
    timestamps:false
})

module.exports = loginHistory