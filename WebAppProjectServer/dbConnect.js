/*
this file is used to create a connection to the mysql database.
It contains connection information such as the database name and port number
It also contains methods that can use sql scripts to manipulate the mysql database
*/

const mysql = require('mysql');
const dotenv = require('dotenv');
let instance = null;
dotenv.config();

const connection = mysql.createConnection({
    host: process.env.HOST,
    user: process.env.USER,
    password: process.env.PASSWORD,
    database: process.env.DATABASE,
    port: process.env.DB_PORT
});

connection.connect((err) => {
    if (err) {
        console.log(err.message);
    }
});


class DbConnect {
    static getDbConnectInstance() {
        return instance ? instance : new DbConnect();
    }

    async getPosts() {
        try {
            const response = await new Promise((resolve, reject) => {
                const query = "SELECT * FROM user_posts;";

                connection.query(query, (err, results) => {
                    if (err) reject(new Error(err.message));
                    resolve(results);
                })
            });
            return response;
        } catch (error) {
            console.log(error);
        }
    }


    async insertPost(post) {
        try {
            const timePosted = new Date();
            const insertId = await new Promise((resolve, reject) => {
                const query = "INSERT INTO user_posts (post_content, time_posted) VALUES (?,?);";

                connection.query(query, [post, timePosted] , (err, result) => {
                    if (err) reject(new Error(err.message));
                    resolve(result.insertId);
                })
            });
            return {//method returns json object with data from database
                id : insertId,
                post : post,
                timePosted: timePosted
            };
        } catch (error) {
            console.log(error);
        }
    }

    async deletePostById(id) {
        try {
            id = parseInt(id, 10); 
            const response = await new Promise((resolve, reject) => {
                const query = "DELETE FROM user_posts WHERE id = ?";
    
                connection.query(query, [id] , (err, result) => {
                    if (err) reject(new Error(err.message));
                    resolve(result.affectedRows);
                })
            });
    
            return response === 1 ? true : false;
        } catch (error) {
            console.log(error);
            return false;
        }
    }

    async updatePostById(id, post) {
        try {
            id = parseInt(id, 10); 
            const response = await new Promise((resolve, reject) => {
                const query = "UPDATE user_posts SET post_content = ? WHERE id = ?";
    
                connection.query(query, [post, id] , (err, result) => {
                    if (err) reject(new Error(err.message));
                    resolve(result.affectedRows);
                })
            });
    
            return response === 1 ? true : false;
        } catch (error) {
            console.log(error);
            return false;
        }
    }


}

module.exports = DbConnect;