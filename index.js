const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const db = require('./queries')
const { request } = require('http')
const port = 80

app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  }))

  app.get('/', (request, response) => {
    response.json({ info: 'Node.js, Express, and Postgres API' })
  })

  //add your endpoints here
  app.get('/books/byGenre/:genre', db.getBooksByGenre)
  app.get('/books/byRating/:rating', db.getBooksByRating)
  app.get('/books/limit/:limit', db.getXBooks)
  app.get('/books/topSellers/', db.getTopSellers)

  app.listen(port, () => {
    console.log(`App running on port ${port}.`)
  })