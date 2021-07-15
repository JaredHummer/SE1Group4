const config = require("../config")
pool = config.pool

const createUser = (req,res) => {
    const fname = req.body.firstName;
    const lname = req.body.lastName;
    const email = req.body.email;
    const password = req.body.password;
    const address = req.body.address;
    const insertquery = {
        text: 'INSERT INTO users(firstname,lastname,email,password) VALUES($1, $2, $3, $4, $5)',
        values: [fname,lname,email,password, address],
    }
    const selectquery = {
        text: 'SELECT email FROM users WHERE email = $1',
        values: [email],
    }

    if(rows.rows.length == 1){
        res.status(401).json("The user already exists");
    }
    else{
    pool.query(insertquery, (err, result) => {
        if(err)
        {
            console.log('Can not log into the database.');
        }
        else{
            console.log('Connect to database...');
            res.json('The new user has been added to the database');
        }
      })
    }  
};

const retrieveUser = (req, res) => {
    const email = req.body.email;
    const query = {
        text: 'SELECT * FROM users WHERE email = $1',
        values: [email],
    }

    pool.query(query, (err, result) => {
        if(result.rows.length == 1)
        {
            console.log('Connected to database...');
            res.json(result.rows[0]);
        }
        else if(result.rows.length == 0){
            res.status(401).json("The username or password is incorrect.")
        }
        else if(err)
        {
            console.log('Can not log into the database.');
        }
      })
};

const updateUser = (req, res) => {
    const email = req.body.email;
    const query = {
        text: 'SELECT * FROM users WHERE email = $1',
        values: [email],
    }

    pool.query(query, (err, result) => {
        if(result.rows.length == 1)
        {
            console.log('Connected to database...');
            const id = result.rows[0].id;
            /*
            const updateQuery = {
                text: 'UPDATE users SET username ',
                values: [id]
            }
            */
        }
        else if(err)
        {
            console.log('Can not log into the database.');
        }
      })
};

module.exports = {
    createUser,
    retrieveUser,
    updateUser
}
