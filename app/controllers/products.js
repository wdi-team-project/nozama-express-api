'use strict'

const controller = require('lib/wiring/controller')
const models = require('app/models')
const Product = models.product

const setModel = require('./concerns/set-mongoose-model')

const index = (req, res, next) => {
  // finding all products from model
  Product.find()
    .then(products => res.json({
      products: products.map((product) =>
        // sending to JSON
        product.toJSON()
    )
    }))
    .catch(next)
}

const create = (req, res, next) => {
  // defining a new product
  const product = Object.assign(req.body.product, {})
  // creating a new product
  Product.create(product)
    // resolving on success
    .then(product =>
    res.status(201)
      .json({
        product: product.toJSON()
      }))
    .catch(next)
}

module.exports = controller({
  index,
  create
})
