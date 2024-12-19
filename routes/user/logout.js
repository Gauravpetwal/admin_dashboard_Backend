const express = require('express')
const router = express.Router();
const logout = require('../../controllers/userController/logout');
const authentication = require('../../middlewares/authentication');
router.post('/user/logout',authentication,logout)

module.exports = router;