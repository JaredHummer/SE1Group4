//const config = require("../config.js")
//const { pool } = config

const { request } = require("express")
const config = require("../config")
pool = config.pool


const getBookByISBN = (request, response) => {
    const { isbn } = request.query

    console.log('test3')
    

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
    const isbn = request.query.isbn
    const title = request.query.title
    const desc = request.query.desc
    const price = request.query.price
    const author = request.query.author
    const genre = request.query.genre
    const pub = request.query.pub
    const ypub = request.query.ypub
    const sold = request.query.sold
    const rating = request.query.rating
    var query = 'INSERT INTO book VALUES ('
    query += "'" + isbn + "', "
    query += "'" + title + "', "
    query += "'" + desc + "', "
    query += "'" + price + "', "
    query += "'" + genre + "', "
    query += "'" + ypub + "', "
    query += "'" + sold + "', "
    query += "'" + rating + "', " //extra
    query += "'" + author + "', " //truly author ID
    query += "'" + pub + "')"
    console.log(query)
    pool.query(query, (error, results) => {
        if (error) {
            response.status(400).json({
                'Error': "Unable to insert into database",
                'Description:': 'Either book already exists in databse or invalid characters entered'
            })
            return
        }
        else {
            response.status(200).json({ 
                'Status:': 'Success!',
                'Inserted:': title,
                'ISBN:': isbn
            })
        }
    })

}


const createAuthor = (request, response) => {
    const pkey =  Math.floor((Math.random() * 500) + 251); 
    const fname = request.query.fname
    const lname = request.query.lname
    const bio = request.query.bio
    const pub = request.query.pub

    var query = 'INSERT INTO author VALUES'
    query += "('" + pkey + "', "
    query += "'" + fname + "', "
    query += "'" + lname + "', "
    query += "'" + bio + "', "
    query += "'" + pub + "')"
    console.log(query)
    pool.query(query, (error, results) => {
        if (error) {
            response.status(400).json({
                'Error': "Unable to insert into database",
                'Description:': 'Either author already exists in databse or invalid characters entered'
            })
            return
        }
        else {
            response.status(200).json({ 
                'Status:': 'Success!',
                'Inserted:': lname + ", " + fname,
                'Publisher': pub,
                'Biography': bio,

            })
        }
    })

}


const verifyAdmin = (request, response, next) => {
 
    const { username } = request.query
    var x = request.query.username

    pool.query('select * from users where username = $1', [username], (error, result) => {
        var test = ''
        try {
            test = result.rows[0].admin
        } catch (error) {
            console.log('ERROR')
        }
        
        if (error)
        {
            response.status(400).json({
                'Error': "Cannot send query to database.",
            })
        }
        if (typeof username == 'undefined' || username == '')
        {
            response.status(400).json({
                'Error': "Please check username input",
                'Description': "No value defined or passed",
                'input': username
            })
            return
        }
        
        console.log('Username: ', x)
        console.log('Admin: ', test)

        if(test == true){
            //response.json(result.rows[0])
            next()
        }
        else{
            console.log('User not authorized')
            response.status(403).json({
                'Error': "Please check username / password",
                'Description': "User not authorized to make changes"
            })

            var err =  new Error ('You are not autorized to perform this operation!')
            err.status =  403
            return 
        }
    })
}


  // Make sure your methods are exported
  // so they can be seen in index.java
  module.exports = {
      getBookByISBN,
      getBooksByAuthor,
      createBook,
      createAuthor,
      verifyAdmin
  }