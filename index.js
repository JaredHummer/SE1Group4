const express = require('express')
const app = express()
const { request } = require('http')
const port = 80

//import your query file here
const bookqueries = require('./queries/bookBrowsing')

const options = require('./options')

app.use(express())

  //main endpoint describing the project and authors
  app.get('/', (request, response) => {
    response.json({ 'info': 'Node.js, Express, and Postgres Implementation of GeekText API', 'authors': ['Jared Hummer', 'Gilbert Gomez', 'Fabian Gaddy', 'Agustin Gonzalez'],
      'class': "CEN4010", 'section': "RVBB", 'semester': "2021 Summber B", 'group': 4})
  })

  //add your endpoints here
  app.get('/books/', bookqueries.getBooks)

  //add you options here
  app.options('/books/', options.bookOptions)
  app.options('/users/', options.PMOptions)
  app.options('/users/creditCard/', options.CCOptions)

  app.listen(port, () => {
    console.log(`App running on port ${port}.`)
  })