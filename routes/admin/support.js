const express = require('express')
const router = express.Router()
const auth = require('../../middlewares/authentication')
const support = require('../../controllers/admin/support')
const {storage,fileFilter} = require('../../helpers/imagesCheck')
const multer  = require('multer')
  const upload = multer({storage,fileFilter, limits: { fileSize: 5 * 1024 * 1024 }}); 


router.get('/allticket',auth,support.getIssues)
router.get('/ticket',auth,support.ticket)
router.delete('/delete/ticket',auth,support.deleteTicket)
router.patch('/update/ticket',auth,support.resolvedTicket)
// router.post('/ticket/savemessage',auth,support.storeMessages)
router.post('/ticket/sendMEssage',auth,upload.single('file'), support.saveMessage)





module.exports = router