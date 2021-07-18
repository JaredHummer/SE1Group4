//const config = require("../config.js")
//const { pool } = config

const { request } = require("express")
const config = require("../config")
pool = config.pool


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

const getBooksByAuthor = (request, response) => {
    const fname  = request.query.fname
    const lname = request.query.lname
    
    //check for first/last name input
    var fnamebool = false
    var lnamebool = false

    function checkName(xname) {
        if (typeof xname == 'undefined' || xname == '' || !isNaN(xname)) {
            return false
        }
        else {
            return true
        }
    }

    //build query
    var query = 'select a.first_name, a.last_name, a.publisher, b.* '
    query += 'from author AS a inner join book AS b on a.author_id = b.author_id where '


    fnamebool = checkName(fname)
    lnamebool = checkName(lname)
    if (fnamebool == false && lnamebool == false) {
        response.status(400).json({
            'Error': "Please check fname input",
            'Description': "Invalid value(s) defined or passed"
        })
        return
    } else {
        if (fnamebool == true && lnamebool == true) {
            query += 'a.first_name = '
            query += "'" + fname + "'"
            query += ' AND a.last_name = '
            query += "'" + lname + "'"
        }
        else if (fnamebool == true ) {
            query += 'a.first_name = '
            query += "'" + fname + "'"
        }
        else if (lnamebool == true) {
            query += 'a.last_name = '
            query += "'" + lname + "'"
        }
    }

    pool.query(query, (error, results) => {
        if (error) {
            response.status(400).json({
                'Error': "Cannot send query to database.",
            })
            return
        }
        
        if (results.rows.length != 0) {
            console.log('The selected author name is: ' + fname)
            response.status(200).json(results.rows)
        }
        else {
            console.log('Unable to find referenced author by entered value')
            response.status(200).send('The selected Author: ' + lname + ', ' + fname +' is not in the database')
        }
    })
}

const createBook = (request, response) => {
    const username = request.query.username
    const password = request.query.password

    var query = 'SELECT u.admin FROM users AS u WHERE u.username = '
    query += "'" + username + "'" + ' AND u.password = ' + "'" + password + "'"
    query += "AND u.admin = 'true'"
    pool.query(query, (error, results) => {
        if (error) {
            response.status(400).json({
                'Error': "Invalid username or password input.",
                'username:': username,
                'password': password
            })
            return
        }
        if (results.rows.length == 0) {
            response.status(401).json({
                'Error': "Unathorized.",
                'username:': username,
                'password': password
            })
            return
        }
        else {
            console.log(results.rows[0])
            response.status(200).json({ 'Result:': results.rows })
        }
    })

}

  // Make sure your methods are exported
  // so they can be seen in index.java
  module.exports = {
      getBookByISBN,
      getBooksByAuthor,
      createBook
  }