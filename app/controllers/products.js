'use strict'

const controller = require('lib/wiring/controller')
const models = require('app/models')
const Product = models.product

const setModel = require('./concerns/set-mongoose-model')

const index = (req, res, next) => {
  Product.find()
    .then(products => res.json({
      products: products.map((product) =>
        product.toJSON()
    )
    }))
    .catch(next)
}

const create = (req, res, next) => {
  const product = Object.assign(req.body.product, {})
  Product.create(product)
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
