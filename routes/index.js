// routes/index.js (Main routes file)
const express = require('express');
const adminSignin = require('./admin/signin');
const dashboard = require('./admin/dashboard');
const user = require('./admin/user');
const alluser = require('./admin/task');
const task = require('./admin/task');
const message = require('./user/message');
const userSignin = require('./user/signin')
const router = express.Router();
const userTask = require('./user/task')
const twofa = require ('./user/twoFactor')
const password = require('./user/password')
const logout = require('./user/logout')
const userSupport = require('./user/support')
const adminSupport = require('./admin/support')




// //admin routes
router.use(adminSignin);
router.use(dashboard);
router.use(user);
router.use(task);
router.use(alluser);
router.use(adminSupport)
//user route
router.use(message);
router.use(userSignin)
router.use(userTask)
router.use(twofa)
router.use(password)
router.use(logout)
router.use(userSupport)



module.exports = router;
