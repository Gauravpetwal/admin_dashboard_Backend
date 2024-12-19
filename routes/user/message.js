const express = require('express')
const authenticate = require('../../middlewares/authentication')
const router = express.Router()
const message = require('../../controllers/userController/message')

router.post('/message',authenticate,message.message)
router.get('/getmessage',authenticate,message.getmessage)

module.exports =router