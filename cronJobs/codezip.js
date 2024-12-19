const fs = require("fs");
const archiver = require("archiver");
const path = require("path");
const B2 = require("backblaze-b2");
const { S3Client, PutObjectCommand } = require("@aws-sdk/client-s3");


const zipCode = async () => {
  try {
    const fileToZipPath = process.cwd(); //directory to zip
    const zipFilePath = path.join(fileToZipPath, "zip"); //path in which the zip file will store
    const outputZipFile = path.join(zipFilePath, "code.zip"); //output file name and path
    const output = fs.createWriteStream(outputZipFile);

    const archive = archiver("zip", { zlib: { level: 9 } });
    archive.pipe(output);

    archive.glob("**/*", {
      cwd: fileToZipPath, // Set the directory for glob pattern matching
      ignore: ["**/zip/**" , "**/node_modules/**"] // Exclude the 'zip' folder and its contents
    });

    output.on("end", function () {
      console.log("Archive has been finalized and the stream has ended.");
    });

    // Log when the archive has been successfully created
    output.on("close", function () {
      console.log(`Successfully created zip file: ${outputZipFile}`);
      uploadZip();
    });

    // Handle any errors that occur during the zipping process
    archive.on("error", function (err) {
      console.error("Error during zipping:", err);
      throw err;
    });

    await archive.finalize();
  
  } catch (error) {
    console.log(error);
  }
};

//backuping the zipped code file in backblaze b2
const uploadZip = async () => {
  //creating object for aws s3 (typically the credential)
  const s3 = new S3Client({
    region: process.env.REGION,
    endpoint: process.env.END_POINT,
    credentials: {
      accessKeyId:process.env.ACCESS_KEY_ID,
      secretAccessKey:process.env.SECRET_ACCESSKEY,
    },
  });
 

  const bucketName = process.env.BUCKET_NAME;
  const fileToBeUpload = path.join(process.cwd(), "zip", "code.zip"); 

  //checking whether the file is exits or not
  if (!fs.existsSync(fileToBeUpload)) {
    return;
  }

  //for read file from the system
  const fileContent = fs.readFileSync(fileToBeUpload);
  const uploadParams = {
    Bucket: bucketName,
    Key: "Task_Manager.zip",
    Body: fileContent,
  };

  const command = new PutObjectCommand(uploadParams);
  const response = s3.send(command);

};

module.exports = zipCode;