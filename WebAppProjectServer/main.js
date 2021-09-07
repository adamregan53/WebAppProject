//use path module
const path = require('path');
//use express module
const express = require('express');
//use hbs view engine
const hbs = require('hbs');
//use bodyParser middleware
const bodyParser = require('body-parser');
//use mysql database
const mysql = require('mysql');
const app = express();
app.use( bodyParser.json() );
app.use( bodyParser.urlencoded( { extended: true } ) );

//Create Connection
const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Halflife2',
    database: 'webapp',
    insecureAuth: true
});

//connect to database
conn.connect((err) => {
    if (err)
        throw err;
    console.log('Mysql Connected...');
});

//route for homepage
app.get('/',(req, res) => {
  let sql = "SELECT * FROM post";
  let query = conn.query(sql, (err, results) => {
    if(err) throw err;
    res.render('index.html',{
      results: results
    });
  });
});

//route for insert data
app.post('/save', (req, res) => {
    let data = {post: req.body.postContent};
    let sql = "INSERT INTO post SET ?";
    let query = conn.query(sql, data, (err, results) => {
        if (err)
            throw err;
        res.redirect('/');
    });
});

//server listening
app.listen(5000, () => {
    console.log('Server is running at port 5000');
});