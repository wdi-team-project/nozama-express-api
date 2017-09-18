'use strict'

module.exports = require('lib/wiring/routes')

// create routes

// what to run for `GET /`
.root('root#root')

// standards RESTful routes
.resources('examples')

// users of the app have special requirements
.post('/sign-up', 'users#signup')
.post('/sign-in', 'users#signin')
.delete('/sign-out/:id', 'users#signout')
.patch('/change-password/:id', 'users#changepw')
.resources('users', { only: ['index', 'show'] })
.patch('/users/:id', 'users#addproduct')
.patch('/users/:id/cart', 'users#emptyCart')
.get('/users/:id', 'users#getCart')

.get('/products', 'products#index')
.post('/products', 'products#create')
.get('/products/:id', 'products#show')
// all routes created
