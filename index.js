const express = require('express')
const app = express()
const bookqueries = require('./bookqueries')
const { request } = require('http')
const port = 80

app.use(express())

  app.get('/', (request, response) => {
    response.json({ info: 'Node.js, Express, and Postgres Implementation of GeekText API', authors: ['Jared Hummer', 'Gilbert Gomez', 'Fabian Gaddy', 'Agustin Gonzalez'],
      class: "CEN4010", section: "RVBB", semester: "2021 Summber B" })
  })

  //add your endpoints here
  app.get('/books/', bookqueries.getBooks)

  app.listen(port, () => {
    console.log(`App running on port ${port}.`)
  })