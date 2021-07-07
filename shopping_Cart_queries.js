const config = require("./config.js")
const {pool} = config

//add your queries here
const createShoppingCart = (request, response) => {
    //Grabbing username from request.
    const {username} = request.query
    //Validating user exists in the database before creating Shopping Cart.
    pool.query('SELECT * FROM shopping_cart WHERE username=$1', [username], (error, results) => {
        if (error) {

          throw error
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
  






  // Make sure your methods are exported
  // so they can be seen in index.java
  module.exports = {
      createShoppingCart,
  }