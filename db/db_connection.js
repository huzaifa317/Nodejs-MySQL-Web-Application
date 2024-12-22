// This is the mysql connection block
require("dotenv").config();
var mysql = require("mysql2");
// Create the connection
var connection = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME
});

connection.connect(function(err) {
    if (!err){
    	console.log("Connection Successful!");
    } else{
    	console.log("Error while connecting to the database:" + err);
    }
});
module.exports = connection;



