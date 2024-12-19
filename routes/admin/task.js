const express = require('express')
const router = express.Router()
const auth = require('../../middlewares/authentication')
const {editTask,taskToUpdate} = require('../../controllers/admin/task/edit')
const getTask = require('../../controllers/admin/task/task')
const search = require('../../controllers/admin/task/searching')
const deleteTask = require ('../../controllers/admin/task/delete')
const {addTask,allUers} = require('../../controllers/admin/task/add')

router.patch('/editask', auth, editTask)
router.get('/taskToUpdate',  taskToUpdate)
router.get('/searching',  search)
router.get('/task', auth, getTask)
router.delete('/task/delete',auth, deleteTask)
router.post('/addtask', auth, addTask)
router.get('/allusers',auth, allUers)


module.exports = router