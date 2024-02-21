

const db = require("../db");
const {
  NotFoundError,
  BadRequestError,
  UnauthorizedError,
} = require("../expressError");




class NutriLife {
  /** Find all nutrilife.
   *
   * Returns [{ prognosis, guidelines, nutrition }, ...]
   **/
  static async findAll() {
    const result = await db.query(
      `SELECT prognosis,
                  guidelines,
                  nutrition
           FROM nutrilife
           ORDER BY prognosis`,
    );

    return result.rows;
  }

  /** Get: get nutriLife by prognosis
   *
   * returns {nutriLife}
   *
   * 
   *
   */

  static async get(prognosis) {
    const nutriLifeRes = await db.query(
      `SELECT prognosis,
              guidelines,
              nutrition
        FROM nutrilife
        WHERE prognosis = $1`,
      [prognosis],
    );

    const nutriLife = nutriLifeRes.rows[0];

    if (!nutriLife) throw new NotFoundError(`No Prognosis: ${prognosis}`, 404);

    return nutriLife;
  }
}


module.exports = NutriLife;