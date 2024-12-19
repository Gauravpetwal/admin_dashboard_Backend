const cron = require("node-cron");
const { exec } = require("child_process");
const B2 = require('backblaze-b2');
const path = require("path");
const fileName = `backup${new Date().toISOString().replace(/[: .]/g, "-")}.sql`;
const backupPath = `backups\\${fileName}`;
const fs = require('fs');
const axios = require('axios')


//function for backup the database
const backupDatabase = async () => {
  const dbUser = process.env.DB_USER;
  const database = process.env.DB_NAME;

  //query for backup the database
  const backupQuery =   `C:\\xampp\\mysql\\bin\\mysqldump.exe -u ${dbUser}  ${database} > ${backupPath}`;
   exec(backupQuery, (error, stdout, stderr) => {
    if (error) return console.log(error);
    if (stderr) return console.log(stderr);
    console.log("database backup successfully", stdout);
  });
  uploadFile();
};



//function that will upload the backuped databse file in some cloud service(in my case backblaz)
const uploadFile = async () => {
  try {
    const b2 = new B2({
        accountId:process.env.ACCOUNT_ID,
        applicationKey:process.env.APPLICATION_KEY
    },);

    const auth = await b2.authorize();    
    const uploadUrlResponse = await b2.getUploadUrl({
        bucketId:process.env.BUCKET_ID
    });  
    const authorization =await uploadUrlResponse.data.authorizationToken
    const uploadUrl =  await uploadUrlResponse.data.uploadUrl  
  
    const fileBuffer =  fs.readFileSync(backupPath); 
    const headers = {
        'Authorization': authorization,
        'Content-Type': 'application/octet-stream', 
        'X-Bz-File-Name': fileName,  
        'X-Bz-Content-Sha1': 'do_not_verify', 
    };
    await axios.post(uploadUrl, fileBuffer, {headers });
      console.log("file uploaded")     
  
  } catch (error) {
    console.error(error.message)
 
  }
};



module.exports = {backupDatabase};
