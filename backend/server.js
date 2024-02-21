/** Server startup for THLG. */


const app = require("./app");
const { PORT } = require("./config");

app.listen(3000, function () {
  console.log("Listening on 3000");
});