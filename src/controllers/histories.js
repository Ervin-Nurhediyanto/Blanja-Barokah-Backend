const historyModels = require('../models/histories')
const helpers = require('../helpers/helpers')
// const redis = require('redis')
// const client = redis.createClient(6379)

const histories = {
  getHistoryById: (req, res) => {
    const id = req.params.id
    historyModels.getHistoryById(id)
      .then((result) => {
        if (result != '') {
          helpers.response(res, null, result, 200, null)
        } else {
          helpers.response(res, null, 'Data search not found', 404, 'Error')
        }
      })
      .catch((err) => {
        console.log(err)
      })
  },

  getAllhistory: (req, res) => {
    const search = req.query.search
    const sort = req.query.sort
    const order = req.query.order
    const page = req.query.page
    const limit = req.query.limit
    const group = req.query.group
    const user = req.query.user
    const seller = req.query.seller
    const status = req.query.status

    historyModels.getAllhistory(search, sort, order, page, limit, group, user, seller, status)
      .then((result) => {
        if (result != '') {
          // client.setex('getallhistory', 60 * 60 * 12, JSON.stringify(result))
          helpers.response(res, page, result, 200, null)
        } else {
          helpers.response(res, null, 'Data search not found', 200, 'Error')
        }
      })
      .catch((err) => {
        console.log(err)
      })
  },

  updateHistory: (req, res) => {
    const id = req.params.id
    const { idUser, idProduct, countItem, payment } = req.body
    const data = {
      idUser,
      idProduct,
      countItem,
      payment
    }
    historyModels.updateHistory(id, data)
      .then((result) => {
        console.log(result)
        helpers.response(res, null, result, 200, null)
      })
      .catch((err) => {
        console.log(err)
      })
  },
  statusHistory: (req, res) => {
    const id = req.params.id
    const { status } = req.body
    const data = {
      status
    }
    historyModels.updateHistory(id, data)
      .then((result) => {
        console.log(result)
        helpers.response(res, null, result, 200, null)
      })
      .catch((err) => {
        console.log(err)
      })
  },
  deleteHistory: (req, res) => {
    const id = req.params.id
    historyModels.deleteHistory(id)
      .then((result) => {
        helpers.response(res, null, result, 200, null)
      })
      .catch((err) => {
        console.log(err)
      })
  },
  insertHistory: (req, res) => {
    const { idUser, idSeller, nameProduct, idProduct, countItem, payment, addressUser, imageProduct } = req.body
    const data = {
      idUser,
      idSeller,
      nameProduct,
      idProduct,
      countItem,
      payment,
      addressUser,
      imageProduct,
      status: 'not yet paid'
    }
    historyModels.insertHistory(data)
      .then((result) => {
        console.log(result)
        helpers.response(res, null, result, 200, null)
      })
      .catch((err) => {
        console.log(err)
      })
  },
  transfer: (req, res) => {
    const id = req.params.id

    const data = {
      status: 'already paid',
      imageTransfer: req.files.map((item) => {
        return process.env.BASE_URL + 'uploads/' + item.filename
      }).join()
    }

    historyModels.updateHistory(id, data)
      .then((result) => {
        console.log(result)
        helpers.response(res, null, result, 200, null)
      })
      .catch((err) => {
        console.log(err)
      })
  }
}

module.exports = histories
