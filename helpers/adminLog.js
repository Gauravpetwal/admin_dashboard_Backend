const adminLogTable = require('../models/adminLog')
const adminLog = async (data) =>{
    try{
      await adminLogTable.create(data)
    }catch(error){
        return console.log(error)
    }
}
module.exports = adminLog