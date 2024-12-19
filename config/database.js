require('dotenv').config();
const { Sequelize } = require('sequelize'); 

const sequelize = new Sequelize(process.env.DB_NAME, process.env.DB_USER, process.env.DB_PASSWORD, {
  host: process.env.DB_HOST || 'localhost',  
  dialect: 'mysql',  
});

// Function to authenticate the database connection
const connectDatabase = async () => {
  try {
    await sequelize.authenticate();  
    console.log("Connection established successfully!");
  } catch (error) {
    console.error("Can't connect to the database", error);  
  }
};


module.exports = { sequelize, connectDatabase };
