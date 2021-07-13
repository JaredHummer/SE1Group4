const config = require("../config.js")
const { pool } = config


const getBookByISBN = (request, response) => {
    const { isbn } = request.query
    

    pool.query('SELECT * FROM book WHERE isbn=$1', [isbn], (error, results) => {
        if (error)
        {
            response.status(400).json({
                'Error': "Cannot send query to database.",
            })
        }
        if (typeof isbn == 'undefined' || isbn == '')
        {
            response.status(400).json({
                'Error': "Please check ISBN input",
                'Description': "No value defined or passed",
                'input': isbn
            })
            return
        }
        let len = isbn.length
        if (len < 11)
        {
            response.status(400).json({
                'Error': "Please check ISBN input",
                'Description': "Invalid number of characters entered",
                'Required': "Valid 11-digit ISBN number in format 123456789-1",
                'input': isbn
            })
            return
        }
        if (results.rows.length != 0)
        {
            console.log('The selected ISBN: ' + isbn)
            response.status(200).json(results.rows)
        }
        else
        {
            console.log('Unable to find referenced book by ISBN value')
            response.status(200).send('The selected ISBN: ' + isbn + ', is not in the database')
        }
    })
  }



  // Make sure your methods are exported
  // so they can be seen in index.java
  module.exports = {
      getBookByISBN
  }