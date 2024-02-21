/** Express app for THLG*/


const express = require("express");
const cors = require("cors");
const { authenticateJWT } = require("./middleware/auth");

const {NotFoundError} = require("./expressError")
const app = express();


app.use(express.json());
app.use(express.urlencoded({extended: true}));

app.use(cors());

// get auth token for all routes
app.use(authenticateJWT);

/** routes */

const authRoutes = require("./routes/auth");
const userRoutes = require("./routes/users");
const conditionRoutes = require("./routes/conditions");
const nutriLifeRoutes = require("./routes/nutriLife");

app.use("/auth", authRoutes);
app.use("/users", userRoutes);
app.use("/conditions", conditionRoutes);
app.use("/nutriLife", nutriLifeRoutes);

/** Handle 404 errors -- this matches everything */
app.use(function (req, res, next) {
  return next(new NotFoundError());
});

/** general error handler */

app.use(function(err, req, res, next) {
  res.status(err.status || 500);
  if (process.env.NODE_ENV != "test") console.error(err.stack);

  return res.json({
    error: err,
    condition: err.condition
  });
});


module.exports = app;
