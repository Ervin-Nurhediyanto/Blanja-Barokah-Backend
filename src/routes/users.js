const express = require('express')
const userController = require('../controllers/users')
const userForgot = require('../middlewares/forgot_email')
const { upload } = require('../middlewares/multer')
const router = express.Router()

router
  .post('/register/seller', userController.registerSeller)
  .post('/register/custommer', userController.registerCustommer)
  .post('/login/seller', userController.loginSeller)
  .post('/login/custommer', userController.loginCustommer)
  .post('/forgotpassword', userForgot.forgotPass)
  .patch('/resetpassword/:id', userController.resetPassword)
  .patch('/myProfile/:id', upload, userController.custommerProfile)
  .patch('/shippingAddress/:id', userController.shippingAddress)
  .patch('/storeProfile/:id', upload, userController.storeProfile)
  .get('/:id', userController.getUserById)

module.exports = router
