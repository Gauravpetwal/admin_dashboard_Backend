const express = require('express')
const router = express.Router();
const changPassword = require('../../controllers/userController/changPass')
const authentication = require('../../middlewares/authentication')

router.post('/changpassword', authentication,changPassword)
module.exports = router