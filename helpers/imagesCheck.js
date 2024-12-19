const multer = require('multer')
const path = require('path')
const response = require('./response')

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
      cb(null, './uploads/'); // Save in 'uploads' folder
    },
    filename: (req, file, cb) => {
      const ext = path.extname(file.originalname);  
      const filename = Date.now() + path.extname(file.originalname); 
      cb(null, filename);  
    }
  });

const fileFilter = (req, file, cb) => {
    const allowedExtensions = /jpeg|jpg|png|gif/;  
    const extname = allowedExtensions.test(path.extname(file.originalname).toLowerCase());  
    const mimetype = allowedExtensions.test(file.mimetype);  
  
    if (extname && mimetype) {
      return cb(null, true);  
    } else {
        // req.validationError = "onely jpg"
      return cb(new Error('Only JPEG, PNG, and GIF files are allowed!'), false);  // Reject the file
    }
  };


  module.exports ={fileFilter,storage}