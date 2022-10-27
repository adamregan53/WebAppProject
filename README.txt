Adam Regan x19401956
Conor FitzGerald x19444092

This project uses a basic CRUD model and involves the use of a distributed system using JavaScript and NodeJS. There are 2 applications, a client and a server which communicate information across localhost using NodeJS. The Server application uses a SQL database to store information which is displayed on the client application on loading. the client application can request to add, update and delete items from the the database by sending GET and POST requests to the server application. The server is also programmed using JavaScript Async to handle requests to the server asychronously.

------------------------------
Dependencies:
------------------------------
npm install express
npm install mysql
npm install cors
npm install nodemon --save-dev
npm install dotenv

------------------------------
Installations
------------------------------
xampp to start mysql server and phpmyadmin
nodejs
gitbash or cmd

------------------------------
To start app
------------------------------
open xampp and start apache and mysql
ensure mysql open on port 3306

alter .env file to your mysql user details

open server folder ".../WebAppProjectServer"
right click and select gitbash
enter "nodemon app" into terminal
 
or

open cmd
use cd .../WebAppProjectServer
enter "nodemon app" into terminal

URL="http://127.0.0.1:5500/index.html"

if url does not work, open or install visual studio code
install "live server" plugin
open html file in visual studio
right click and select "open with line server"
