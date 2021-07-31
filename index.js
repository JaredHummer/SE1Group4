const express = require('express')
const app = express()
const { request } = require('http')
const port = 80

//import your query file here
const bookqueries = require('./queries/bookBrowsing')
const shoppingcart = require('./queries/shoppingCart')
const userprofiles = require('./queries/userProfiles')
const bookdetails = require('./queries/bookDetails')
const options = require('./options')

app.use(express())

  //main endpoint describing the project and authors
  app.get('/', (request, response) => {
    response.json({ 'info': 'Node.js, Express, and Postgres Implementation of GeekText API', 'authors': ['Jared Hummer', 'Gilbert Gomez', 'Fabian Gaddy', 'Agustin Gonzalez'],
      'class': "CEN4010", 'section': "RVBB", 'semester': "2021 Summber B", 'group': 4})
  })

  //add your endpoints here
  app.get('/books/', bookqueries.getBooks)
  app.get('/books/isbn', bookdetails.getBookByISBN)
  app.get('/books/author', bookdetails.getBooksByAuthor)
  app.post('/books/newAuthor', [bookdetails.verifyAdmin, bookdetails.createAuthor])
  app.post('/books/newBook', [bookdetails.verifyAdmin, bookdetails.createBook])
  
  //add you options here
  app.options('/books/', options.bookOptions)
  
  //Shopping Cart endpoints - Gilbert Gomez
  app.get('/shoppingcart/', shoppingcart.createShoppingCart)
  app.post('/shoppingcart/', shoppingcart.addBooktoShoppingCart)
  app.delete('/shoppingcart/', shoppingcart.deleteBookFromShoppingCart)

  //Profile Management Endpoints
  app.post('/user/create/', userprofiles.createUser)
  app.get('/user/retrieve/', userprofiles.retrieveUser)
  app.put('/user/update/', userprofiles.updateUser)
  app.post('/user/createcc', userprofiles.createCC)

  app.listen(port, () => {
    console.log(`App running on port ${port}.`)
  })
