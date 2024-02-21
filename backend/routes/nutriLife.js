
const Router = require("express").Router;
const router = new Router();

const NutriLife = require("../models/nutriLife");
const {ensureLoggedIn} = require("../middleware/auth");
const ExpressError = require("../expressError");


/** GET / => { All NutriLife: [ { prognosis, guidelines, nutrition }, ... ] }
 *
 * Returns list of all NutriLife.
 *
 * Authorization required: no
 **/

router.get("/", async function (req, res, next) {
  try {
    const nutriLifes = await NutriLife.findAll();
    return res.json({ nutriLifes });
  } catch (err) {
    return next(err);
  }
});

/** GET /[prognosis] => { NutriLife }
 *
 * Returns { prognosis, guidelines, nutrition }
 *
 * Authorization required: NO
 **/

router.get("/:prognosis", async function (req, res, next) {
  try {
    const nutriLife = await NutriLife.get(req.params.prognosis);
    return res.json({ nutriLife });
  } catch (err) {
    return next(err);
  }
});

module.exports = router;
