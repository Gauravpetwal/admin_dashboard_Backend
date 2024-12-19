const express = require('express')
const router = express.Router();
const authentication = require('../../middlewares/authentication')
const {taskDetails,changeStatusOfTask,getTask} = require('../../controllers/userController/task')

router.get ('/tasks', authentication,  getTask)
router.get ('/task/taskdetail', authentication,  taskDetails)
router.patch ('/task/changeStatus', authentication,  changeStatusOfTask)

module.exports = router