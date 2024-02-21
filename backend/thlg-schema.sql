
CREATE TABLE users (
  username VARCHAR(25) PRIMARY KEY,
  password TEXT NOT NULL,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT NOT NULL
    CHECK (position('@' IN email) > 1)
);

CREATE TABLE conditions (
  id SERIAL PRIMARY KEY,
  diagnosis TEXT NOT NULL
);

CREATE TABLE nutriLife (
  id SERIAL PRIMARY KEY,
  prognosis TEXT NOT NULL,
  guideline_id SERIAL NOT NULL,
  guidelines TEXT NOT NULL,
  nutrition TEXT NOT NULL,
  CONSTRAINT fk_guideline
      FOREIGN KEY(guideline_id) 
        REFERENCES conditions(id)
);
