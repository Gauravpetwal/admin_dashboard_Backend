const express = require('express')
const router = express.Router()
const auth = require('../../middlewares/authentication')
const {supportTicket,getMessages,getAllIssue} = require('../../controllers/userController/support')

router.get('/support/message',auth,getMessages)
router.post('/support',auth,supportTicket)
router.get('/issues',auth,getAllIssue)

module.exports = router