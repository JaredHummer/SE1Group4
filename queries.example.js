const config = require("./config.js")
pool = config.pool


//add your queries here
const getBooksByGenre = (request, response) => {
    const genre = request.params.genre
  
    pool.query('SELECT * FROM book WHERE genre = $1', [genre], (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).json(results.rows)
    })
  }

  const getTopSellers = (request, response) => {
  
    pool.query('SELECT * FROM book order by number_sold desc', (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).json(results.rows)
    })
  }

  const getBooksByRating = (request, response) => {
    const rating = parseFloat(request.params.rating)
  
    pool.query('SELECT * FROM book WHERE rating > $1', [rating], (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).json(results.rows)
    })
  }

  const getXBooks = (request, response) => {
    const limit = parseInt(request.params.limit)
  
    pool.query('SELECT * FROM book limit "$1"', [limit], (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).json(results.rows)
    })
  }


  // Make sure your methods are exported
  // so they can be seen in index.java
  module.exports = {
      getBooksByGenre,
      getBooksByRating,
      getTopSellers,
      getXBooks
  }