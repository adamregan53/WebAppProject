/*
This file handles the server side of the application
It is used receive data from the client and send it to the dbConnect file
It is also used to receive data from the dbConnect file and send it to the client
It is an intermediary between the client and the database.
 */ 

const express = require('express');
const app = express();
const cors = require('cors');
const dotenv = require('dotenv');//used to store information about the database and localhost configurations.
dotenv.config();

const dbConnect = require('./dbConnect');

app.use(cors());//cross origin resource sharing is used to send data between the client and the server
app.use(express.json());
app.use(express.urlencoded({ extended : false }));


// create
app.post('/insert', (request, response) => {
    const { post } = request.body;//turn request into json format
    const db = dbConnect.getDbConnectInstance();
    
    const result = db.insertPost(post);//call insert post method using post json data

    result
    .then(data => response.json({ data: data}))//response takes the return value of the method as json
    .catch(err => console.log(err));
});

// read
app.get('/displayPosts', (request, response) => {
    const db = dbConnect.getDbConnectInstance();

    const result = db.getPosts();
    
    result
    .then(data => response.json({data : data}))
    .catch(err => console.log(err));
});

// update
app.patch('/update', (request, response) => {
    const { id, post } = request.body;
    const db = dbConnect.getDbConnectInstance();

    const result = db.updatePostById(id, post);
    
    result
    .then(data => response.json({success : data}))
    .catch(err => console.log(err));
});

// delete
app.delete('/delete/:id', (request, response) => {
    const { id } = request.params;
    const db = dbConnect .getDbConnectInstance();

    const result = db.deletePostById(id);
    
    result
    .then(data => response.json({success : data}))
    .catch(err => console.log(err));
});

app.listen(5000, () => console.log('app is running'));