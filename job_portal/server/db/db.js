const mysql = require('mysql');

const db = mysql.createConnection({
    host: "localhost",
    user: "ENG-CJ",
    password: "123",
    database: "job_finder",
})

db.connect((err)=> {
    if(err){
        console.error('Database connection failed:', err);
        return;
    }
    console.log('Database connected successfully.');
})

module.exports = db;