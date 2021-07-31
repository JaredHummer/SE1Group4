const config = require("../config")
pool = config.pool

const createUser = async(req,res) => {
    const username = req.query.username;
    const password = req.query.password;
    const name = req.query.name
    const email = req.query.email;
    const address = req.query.address;
    const insertquery = {
        text: 'INSERT INTO users(username,password,name,email,address) VALUES($1, $2, $3, $4, $5)',
        values: [username,password,name,email, address],
    }
    const selectquery = {
        text: 'SELECT username FROM users WHERE username = $1',
        values: [username],
    }

    const rows = await pool.query(selectquery);

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
    const username = req.query.username;
    const query = {
        text: 'SELECT * FROM users WHERE username = $1',
        values: [username],
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
    const username = req.query.username;
    const password = req.query.password;
    const name = req.query.name
    const email = req.query.email;
    const address = req.query.address;

    const updatequery = {
        text: 'UPDATE users SET password = $1, name = $2, email = $3, address= $4 WHERE username = $5 RETURNING *',
        values: [password, name, email, address, username],
    }

    pool.query(updatequery, (err, result) => {
            res.json(result.rows[0]);
    })
};

const createCC = (req, res) => {
    const cc_id = req.query.cc_id;
    const username = req.query.username;
    const card_number = req.query.card_number;
    const exp_date = req.query.exp_date;
    const cvv = req.query.cvv;

    const insertCC = {
        text: "INSERT INTO credit_card (cc_id,username,card_number,exp_date,cvv) VALUES($1, $2, $3, $4, $5) RETURNING cc_id",
        values: [cc_id,username,card_number,exp_date,cvv],
    }

    const ccquery = {
        text: "SELECT DISTINCT cc_id,card_number,exp_date,cvv FROM credit_card INNER JOIN users ON users.username = credit_card.username WHERE credit_card.username = $1",
        values: [username],
    }

    pool.query(ccquery, (err, result) => {
          res.json(result.rows[0]);
    })
};

module.exports = {
    createUser,
    retrieveUser,
    updateUser,
    createCC,
}
