const express = require('express')
const router = express.Router();
const authentication = require('../../middlewares/authentication')
const {checkTwoFactor,setTwoFactor,varifyPin,disableTwoFa} = require('../../controllers/userController/twoFactor')

router.get ('/checkTwoFactor', authentication,  checkTwoFactor)
router.post ('/setTwoFactor', authentication,  setTwoFactor)
router.post ('/varifyPin', authentication,  varifyPin)
router.post ('/disableTwoFactor', authentication,  disableTwoFa)

module.exports = router