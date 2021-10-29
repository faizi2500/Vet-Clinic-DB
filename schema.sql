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

CREATE TABLE vets(
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(65),
  age INT,
  date_of_graduation DATE,
  PRIMARY KEY(id)
);

CREATE TABLE specialization(
  species_id INT NOT NULL,
  vets_id INT NOT NULL,
  CONSTRAINT species_fk FOREIGN KEY (species_id) REFERENCES species(id),
  CONSTRAINT vets_id FOREIGN KEY (vets_id) REFERENCES vets(id)
);

CREATE TABLE visits(
  vets_id INT NOT NULL,
  animals_id INT NOT NULL,
  date_of_visit DATE NOT NULL,
  CONSTRAINT animals_fk2 FOREIGN KEY (animals_id) REFERENCES animals(id),
  CONSTRAINT vets_fk2 FOREIGN KEY (vets_id) REFERENCES vets(id)
);