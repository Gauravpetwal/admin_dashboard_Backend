const express = require('express')
const router = express.Router();

const {signin, verifyPin} = require('../../controllers/userController/signin')
router.post('/signin', signin)
router.post('/signin/verifyPin', verifyPin)

module.exports = router