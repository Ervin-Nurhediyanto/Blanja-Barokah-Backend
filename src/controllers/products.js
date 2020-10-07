const productModels = require('../models/products')
const helpers = require('../helpers/helpers')

const products = {
  getProductById: (req, res) => {
    const id = req.params.id
    productModels.getProductById(id)
      .then((result) => {
        console.log(result)
        if (result != '') {
          helpers.response(res, null, result, 200, null)
        } else {
          helpers.response(res, null, 'Product not found', 200, 'error')
        }
      })
      .catch((err) => {
        console.log(err)
      })
  },

  getAllproduct: (req, res) => {
    const search = req.query.search
    const sort = req.query.sort
    const order = req.query.order
    const page = req.query.page
    const limit = req.query.limit
    const seller = req.query.seller
    // Filter
    const color = req.query.color
    const size = req.query.size
    const category = req.query.category
    const brand = req.query.brand
    // End Filter
    productModels.getAllproduct(search, sort, order, page, limit, seller, color, size, category, brand)
      .then((result) => {
        if (result != '') {
          helpers.response(res, page, result, 200, null)
        } else {
          helpers.response(res, page, 'Product not found', 200, 'error')
        }
      })
      .catch((err) => {
        console.log(err)
      })
  },

  updateProduct: (req, res) => {
    const id = req.params.id
    const { name, price, color, category, size, brand, condition, stock, description, idCategory, idSeller } = req.body

    const data = {
      name,
      price,
      color,
      category,
      size,
      brand,
      condition,
      stock,
      description
    }

    if (req.files) {
      data.image = req.files.map((item) => {
        return process.env.BASE_URL + 'uploads/' + item.filename
      }).join()
    }

    productModels.updateProduct(id, data)
      .then((result) => {
        const resultProducts = result
        console.log(result)
        helpers.response(res, null, resultProducts, 200, null)
      })
      .catch((err) => {
        console.log(err)
      })
  },

  deleteProduct: (req, res) => {
    const id = req.params.id
    productModels.deleteProduct(id)
      .then((result) => {
        if (result != 'Data not found') {
          helpers.response(res, null, result, 200, null)
        } else {
          helpers.response(res, null, result, 404, 'Not Found')
        }
      })
      .catch((err) => {
        console.log(err)
      })
  },

  insertProduct: (req, res) => {
    const { name, price, color, category, size, brand, author, rate, condition, stock, description, idSeller } = req.body

    const data = {
      name,
      price,
      rate,
      condition,
      stock,
      description,
      idSeller,
      idCategory: 1,
      color: 'White',
      size: 'M'
    }

    if (req.files) {
      data.image = req.files.map((item) => {
        return process.env.BASE_URL + 'uploads/' + item.filename
      }).join()
    }

    if (req.body.author) {
      data.author = {
        author
      }
    }
    if (req.body.brand) {
      data.brand = {
        brand
      }
    }
    if (req.body.category) {
      data.category = {
        category
      }
    }
    // if (req.body.color) {
    //   data.color = {
    //     color
    //   }
    // }
    // if (req.body.size) {
    //   data.size = {
    //     size
    //   }
    // }

    productModels.insertProduct(data)
      .then((result) => {
        helpers.response(res, null, result, 200, null)
      })
      .catch((err) => {
        console.log(err)
      })
  },

  updateImageProduct: (req, res) => {
    const id = req.params.id

    const data = {
      image: req.files.map((item) => {
        return process.env.BASE_URL + 'uploads/' + item.filename
      }).join()
    }

    productModels.updateProduct(id, data)
      .then((result) => {
        const resultProducts = result
        helpers.response(res, null, resultProducts, 200, null)
      })
      .catch((err) => {
        console.log(err)
      })
  }
}

module.exports = products
