
const Router = require("express").Router;
const User = require("../models/user");
const {ensureLoggedIn, ensureCorrectUserOrAdmin} = require("../middleware/auth");

const router = new Router();

/** GET / - get list of users.
 *
 * => {users: [{username, first_name, last_name, email}, ...]}
 *
 **/

router.get("/", ensureLoggedIn, async function (req, res, next) {
  try {
    let users = await User.all();
    return res.json({users});
  }

  catch (err) {
    return next(err);
  }
});

/** GET /:username - get detail of users.
 *
 * => {user: {username, first_name, last_name, email}}
 *
 **/
router.get("/:username", ensureCorrectUserOrAdmin, async function (req, res, next) {
  try {
    let user = await User.get(req.params.username);
    return res.json({user});
  }

  catch (err) {
    return next(err);
  }
});

// /** GET /:username/from - get information
//  *
//  * => {messages: [{id,
//  *                 info,
//  *                 from_user: {username, first_name, last_name, email}}, ...]}
//  *     
//  **/
// router.get("/:username/to", ensureCorrectUser, async function (req, res, next) {
//   try {
//     let conditions = await User.conditionsTo(req.params.username);
//     return res.json({conditions});
//   }

//   catch (err) {
//     return next(err);
//   }
// });


/** GET /:username/from - get information
 *
 * => {conditions: [{id,
 *                 info,
 *                 to_user: {username, first_name, last_name, email}}, ...]}
 *                 
 *
 **/
router.get("/:username/from", ensureCorrectUserOrAdmin, async function (req, res, next) {
  try {
    let conditions = await User.conditionsFrom(req.params.username);
    return res.json({conditions});
  }

  catch (err) {
    return next(err);
  }
});



module.exports = router;