const express = require('express')
const app = express()
const bookqueries = require('./bookqueries')
const shoppingcart = require('./shopping_Cart_queries')
const { request } = require('http')
const port = 80

app.use(express())

  app.get('/', (request, response) => {
    response.json({ info: 'Node.js, Express, and Postgres Implementation of GeekText API', authors: ['Jared Hummer', 'Gilbert Gomez', 'Fabian Gaddy', 'Agustin Gonzalez'],
      class: "CEN4010", section: "RVBB", semester: "2021 Summber B" })
  })

  //add your endpoints here
  app.get('/books/', bookqueries.getBooks)

  //Shopping Cart endpoints - Gilbert Gomez
  app.get('/shoppingcart/', shoppingcart.createShoppingCart)
  //app.post('/shoppingcart/', shoppingcart.addBooktoShoppingCart)


  app.listen(port, () => {
    console.log(`App running on port ${port}.`)
  })