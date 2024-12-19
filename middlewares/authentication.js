const jwt = require('jsonwebtoken');
const accessToken = require('../models/accessToken');
const response = require('../helpers/response')


const authentication = (req, res, next) => {  
    try {    
        const token = req.headers['authorization']?.split(' ')[1]; 
        if (!token) {
            return res.status(403).json({ message: "Unauthorized" ,staus:403 }); 
        }
        jwt.verify(token, process.env.JWT_SECRET_key, async (err, decoded) => { 
            if (err) {
            return res.status(403).json({ message: "Unauthorized", status:403 }); 
        }  
        if(!decoded.tokenid) return res.send(response.unauthorization("Unauthorized")); 
    const tokenid = decoded.tokenid
    const isTokenid = await accessToken.findOne({where:{tokenid}})
    if(!isTokenid)return res.send(response.unauthorization("Unauthorized"))
           
    req.user = decoded;  
    req.tokenid = decoded;
        next();
    });

}catch(error){
    console.log(error)
}
};

module.exports = authentication;
