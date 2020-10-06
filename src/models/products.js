const connection = require('../configs/db')

const products = {
  getProductById: (id) => {
    return new Promise((resolve, reject) => {
      connection.query('SELECT * FROM category INNER JOIN products ON products.idCategory = category.id WHERE products.id = ?', id, (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },

  getAllproduct: (search, sort, order, page, limit, seller, color, size, category, brand) => {
    return new Promise((resolve, reject) => {
      let searchProduct = ''
      let sortProduct = ''
      let pageProduct = ''
      let productSeller = ''

      if (seller) {
        if (search) {
          productSeller = `WHERE products.idSeller = ${seller} AND products.name LIKE '%${search}%'`
        } else {
          productSeller = `WHERE products.idSeller = ${seller}`
        }
      } else if (search) {
        searchProduct = `WHERE products.name LIKE '%${search}%'`
      }

      // Filter Products
      if (color) {
        searchProduct = `WHERE products.color = ${color}`
      }
      if (size) {
        searchProduct = `WHERE products.size = ${size}`
      }
      if (category) {
        searchProduct = `WHERE products.category = ${category}`
      }
      if (brand) {
        searchProduct = `WHERE products.brand = ${brand}`
      }
      // End Filter Products

      if (sort != null) {
        if (order != null) {
          sortProduct = `ORDER BY ${sort} ${order}`
        } else {
          sortProduct = `ORDER BY ${sort} ASC`
        }
      }

      if (page != null) {
        if (limit != null) {
          pageProduct = `LIMIT ${limit} OFFSET ${(page - 1) * limit}`
        } else {
          pageProduct = `LIMIT 6 OFFSET ${(page - 1) * 6}`
        }
      }

      if (sort === 'new') {
        connection.query(`SELECT * FROM category INNER JOIN products ON products.idCategory = category.id INNER JOIN history ON history.idProduct = products.id ${searchProduct} ${productSeller} ORDER BY date DESC ${pageProduct}`, (err, result) => {
          if (!err) {
            resolve(result)
          } else {
            reject(new Error(err))
          }
        })
      } else {
        connection.query(`SELECT * FROM category INNER JOIN products ON products.idCategory = category.id ${searchProduct} ${productSeller} ${sortProduct} ${pageProduct}`, (err, result) => {
          if (!err) {
            resolve(result)
          } else {
            reject(new Error(err))
          }
        })
      }
    })
  },

  updateProduct: (id, data) => {
    return new Promise((resolve, reject) => {
      connection.query('UPDATE products SET ? WHERE id = ?', [data, id], (err, result) => {
        if (!err) {
          resolve('Update Product Success')
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  deleteProduct: (id) => {
    return new Promise((resolve, reject) => {
      connection.query('SELECT * FROM products WHERE id = ?', id, (err, result) => {
        if (!err) {
          if (result != '') {
            connection.query('DELETE FROM products WHERE id = ?', id, (err, result) => {
              if (!err) {
                resolve('Delete Product Success')
              } else {
                reject(new Error(err))
              }
            })
          } else {
            resolve('Data Not Found')
          }
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  insertProduct: (data) => {
    console.log(data)
    return new Promise((resolve, reject) => {
      connection.query('INSERT INTO products SET ?', data, (err, result) => {
        if (!err) {
          resolve('Add Product Success')
        } else {
          reject(new Error(err))
        }
      })
    })
  }
}

module.exports = products
