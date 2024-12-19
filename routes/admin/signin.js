const express = require('express')
const router = express.Router()
const {signin,signInWithGoogle} = require('../../controllers/admin/signin')
const { siginLimiter } = require('../../middlewares/rateLimiting')

router.post('/adminSignin',siginLimiter, signin)
router.post('/google/signin',siginLimiter, signInWithGoogle)

module.exports = router