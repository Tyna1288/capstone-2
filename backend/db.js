/** Database connection for THLG. */


const { Client } = require("pg");
const { DB_URI, getDatabaseUri } = require("./config");

const client = new Client(DB_URI);

let db;

if (process.env.NODE_ENV === "production") {
  db = new Client({
    connectionString: getDatabaseUri(),
    ssl: {
      rejectUnauthorized: false
    }
  });
} else {
  db = new Client({
    connectionString: getDatabaseUri()
  });
}

db.connect();

module.exports = db;
