

const db = require("../db");
const ExpressError = require("../expressError");




class Condition {

  /** Get: get condition by id
   *
   * returns {id, info}
   *
   * to_user = {username, first_name, last_name, email}
   *
   */

  static async get(id) {
    const result = await db.query(
        `SELECT c.id,
                c.to_username,
                t.first_name AS to_first_name,
                t.last_name AS to_last_name,
                t.email AS to_email,
                c.info,
          FROM conditions AS c
            JOIN users AS t ON c.to_username = t.username
          WHERE c.id = $1`,
        [id]);

    let c = result.rows[0];

    if (!c) {
      throw new ExpressError(`No such condition: ${id}`, 404);
    }

    return {
      id: c.id,
      to_user: {
        username: c.to_username,
        first_name: c.to_first_name,
        last_name: c.to_last_name,
        phone: c.to_email,
      },
      info: c.info,
    };
  }
}


module.exports = Condition;