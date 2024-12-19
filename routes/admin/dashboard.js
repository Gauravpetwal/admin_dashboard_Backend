const express = require('express')
const router = express.Router()
const auth = require('../../middlewares/authentication')
const dashboardDetail = require('../../controllers/admin/dashboard/dashboardDetails')


router.get('/dashboardDetails',auth,dashboardDetail)


module.exports = router