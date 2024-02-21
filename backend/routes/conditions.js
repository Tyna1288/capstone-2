
const Router = require("express").Router;
const router = new Router();

const Condition = require("../models/condition");
const {ensureLoggedIn} = require("../middleware/auth");
const ExpressError = require("../expressError");

/** GET /:id - get detail of information.
 *
 * => {condition: {id,
 *               info,
 *               from_user: {username, first_name, last_name, email}
 *               
 *               
 **/

router.get("/:id", ensureLoggedIn, async function (req, res, next) {
  try {
    let username = req.user.username;
    let cond = await Condition.get(req.params.id);

    if (cond.to_user.username !== username && cond.from_user.username !== username) {
      throw new ExpressError("Cannot view this information", 401);
    }

    return res.json({condition: cond});
  }

  catch (err) {
    return next(err);
  }
});




module.exports = router;
