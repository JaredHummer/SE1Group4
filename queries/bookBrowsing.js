const { request } = require("express")
const config = require("../config")
pool = config.pool


//function for handling /books endpoint
const getBooks = (request, response) => {
  const genre = request.query.genre

  //check input of param <topSold>
  var topSold = false
  if ((typeof request.query.topSold !== 'undefined') && !(request.query.topSold==='true' || request.query.topSold==='false')) {
    response.status(400).json({'Error':"Please check top sold input", 'Description':'Not a boolean', 'input':request.query.topSold})
    return
  }
  else if (request.query.topSold==='true' || request.query.topSold==='false') {
    topSold = (request.query.topSold === 'true')
  }

  //check input of param <rating>
  var rating = -1
  if ((typeof request.query.rating !== 'undefined') && isNaN(parseFloat(request.query.rating))) {
    response.status(400).json({'Error':"Please check rating input", 'Description':'Not a Number'})
    return
  }
  else if (!isNaN(parseFloat(request.query.rating))) rating = parseFloat(request.query.rating)  
  
  //check input of param <limit>
  var limit = 10;
  if ((typeof request.query.limit !== 'undefined') && isNaN(parseInt(request.query.limit))) {
    response.status(400).json({'Error':"Please check query limit input", 'Description':'Not a Number'})
    return
  }
  else if (!isNaN(parseInt(request.query.limit))) limit = parseInt(request.query.limit)

  //build query
  var query = "select book.*, author.first_name as \"Author First Name\", author.last_name as \"Author Last Name\", author.publisher from book join author on book.author_id = author.author_id"
  if ((typeof request.query.genre !== 'undefined')){
    query += " where book.genre = '" + genre + "'"
    if (rating != -1)
      query += " and book.rating > " + rating
  } else if (rating != -1) 
    query += " where book.rating >= " + rating
  
  if (topSold === true)
    query += " order by book.number_sold desc"
  
  if ((typeof request.query.limit !== 'undefined')) 
    query += " limit " + limit

  //send query to DB
  pool.query(query, (error, results) => {
    if (error) {
      response.status(400).json(error)
      return
    }
    else response.status(200).json({'query':query, 'result':results.rows})
  })
}




  // Make sure your methods are exported
  // so they can be seen in index.java
  module.exports = {
      getBooks
  }