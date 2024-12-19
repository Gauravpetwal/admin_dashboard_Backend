const { DataTypes } = require('sequelize');
const {sequelize} = require('../config/database');
const { ticket } = require('../controllers/admin/support');

const template = sequelize.define('templates',{
    id:{
        type:DataTypes.INTEGER,
        primaryKey:true,
        allowNull:false
    },
    title:{
        type:DataTypes.STRING,
        allowNull:false
    },
    templateContent:{
        type:DataTypes.TEXT,
        allowNull:false
    }
})
module.exports = template