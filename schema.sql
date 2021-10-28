CREATE TABLE animals(
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(65) NOT NULL,
  date_of_birth DATE,
  escape_attempts INT,
  neutered BOOLEAN,
  weight_kg DECIMAL,
  PRIMARY KEY(id)
);

ALTER TABLE animals ADD species VARCHAR(50);


CREATE TABLE owners(
  id INT GENERATED ALWAYS AS IDENTITY,
  full_name VARCHAR(65),
  age INT,
  PRIMARY KEY(id)
);

CREATE TABLE species(
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(65),
  PRIMARY KEY(id)
);

ALTER TABLE animals DROP COLUMN species;

BEGIN;
ALTER TABLE animals ADD species_id INT;
ALTER TABLE animals ADD CONSTRAINT ft FOREIGN KEY (species_id) REFERENCES species(id);
COMMIT;
BEGIN;
ALTER TABLE animals ADD owners_id INT;
ALTER TABLE animals ADD CONSTRAINT owner_fk FOREIGN KEY (owners_id) REFERENCES owners(id);
COMMIT;
