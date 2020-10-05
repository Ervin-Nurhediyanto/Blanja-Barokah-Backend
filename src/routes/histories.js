const express = require('express')
const historyController = require('../controllers/histories')
const router = express.Router()
const { verifyAccess, verifyAccessSeller } = require('../middlewares/auth')
const { upload } = require('../middlewares/image_history')
const { uploadTransfer } = require('../middlewares/image_transfer')
// const { upload } = require('../middlewares/multer')
// const redis = require('../middlewares/redis')

router
  .get('/:id', verifyAccess, historyController.getHistoryById)
  .get('/', verifyAccess, historyController.getAllhistory)
  .post('/', verifyAccess, upload, historyController.insertHistory)
  .patch('/:id', verifyAccessSeller, upload, historyController.updateHistory)
  .patch('/transfer/:id', verifyAccess, uploadTransfer, historyController.transfer)
  .delete('/:id', verifyAccessSeller, historyController.deleteHistory)

module.exports = router
