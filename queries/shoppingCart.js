const config = require("../config.js")
const {pool} = config

//add your queries here

const createShoppingCart = (request, response) => {
    //Grabbing username from request.
    const {username} = request.query
    //Validating user exists in the database before creating Shopping Cart.
    pool.query('SELECT * FROM shopping_cart WHERE username=$1', [username], (error, results) => {
        if (error) {
            //The only possible issue that may arise is that the query cannot be executed or be sent to the database.
          response.status(400).json({'Error':"Cannot send query to database.", 
          'Description':'Please make sure the database is currently up and running and that there isn\'t any issues with your connection.'})
        }
        if(results.rows.length != 0)
        {
          console.log('The selected user was ' + username)
          response.status(200).json(results.rows)
        }
        else
        {
          console.log('The selected user ' + username + 'has an empty shopping cart.')
        response.status(200).send('The selected user ' + username + 'has an empty shopping cart.')
        }
      })
      

      
    }
  
const addBooktoShoppingCart = (request, response) => {

  const {username} = request.query
  const {isbn} = request.query
  const {quantity} = request.query

  console.log(username)
  console.log(isbn)
  pool.query('INSERT into shopping_cart(username,isbn) values( $1 , $2 ) returning *', [username, isbn], (error, results) => {
    if (error) {
      response.status(400).json({'Error':"Invalid username or isbn input.", 
                                'Description':'Either an non-existing username or isbn input from the database was supplied. Please make sure that the username or isbn exists before trying again.',
                                'username:':username, 
                                'isbn':isbn})
    }
    else
    {
    console.log(results.rows)
    response.status(200).json({'Added:':results.rows})
    }
  })



}

const deleteBookFromShoppingCart = (request, response) => {
  const {username} = request.query
  const {isbn} = request.query

  console.log(username)
  console.log(isbn)
  pool.query('delete from shopping_Cart where username = $1 and isbn = $2 and ' + 
             'item_id=(select MAX(item_ID) from shopping_Cart where username = $1 and isbn = $2) returning *', [username, isbn], (error,results) => {

    if (error) {
      response.status(400).json({'Error':"Invalid username or isbn input.", 
                                'Description':'Either an non-existing username or isbn input from the database was supplied. Please make sure that the username or isbn exists before trying again.',
                                'username:':username, 
                                'isbn':isbn})
    }
    else
    {
    console.log(results.rows)
    response.status(200).json({'Deleted:':results.rows})
    }
  })
}




  // Make sure your methods are exported
  // so they can be seen in index.java
  module.exports = {
      createShoppingCart,
      addBooktoShoppingCart,
      deleteBookFromShoppingCart
  }

