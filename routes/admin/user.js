const express = require('express')
const router = express.Router()
const getUser = require('../../controllers/admin/user/getuser')
const auth = require('../../middlewares/authentication')
const {editUser,userToUpdate} = require('../../controllers/admin/user/edit')
const userSearching = require('../../controllers/admin/user/searching')
const addUser = require('../../controllers/admin/user/add')
const deleteuser = require ('../../controllers/admin/user/delete')

router.get('/getUser',auth, getUser)
router.get('/userToUpdate',auth, userToUpdate)
router.patch('/editUser',auth, editUser)
router.get('/user/search', userSearching)
router.post('/addUser',auth, addUser)
router.delete('/deleteUser',auth, deleteuser)


module.exports = router