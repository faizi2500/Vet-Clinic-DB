
-- Find all animals whose name ends in "mon".
SELECT name FROM animals WHERE name LIKE '%mon';

-- List the name of all animals born between 2016 and 2019.
SELECT name from animals WHERE EXTRACT(year FROM date_of_birth) BETWEEN 2016 AND 2019;

-- List the name of all animals that are neutered and have less than 3 escape attempts.
SELECT name FROM animals WHERE neutered = true AND escape_at
tempts < 3;

-- List date of birth of all animals named either "Agumon" or "Pikachu".
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');

-- List name and escape attempts of animals that weigh more than 10.5kg
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;

-- Find all animals that are neutered.
SELECT * FROM animals WHERE neutered = true;

-- Find all animals not named Gabumon.
SELECT * FROM animals WHERE name!='Gabumon';

-- Find all animals with a weight between 10.4kg and 17.3kg (including the animals with the weights that equals precisely 10.4kg or 17.3kg)
SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;


BEGIN;
ALTER TABLE animals RENAME species TO unspecified;
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
UPDATE animals SET species='digimon' WHERE name LIKE '%mon';
UPDATE animals SET species='pokemon' WHERE species IS NULL;
SELECT * FROM animals;
COMMIT;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals;
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT SP1;
UPDATE animals SET weight_kg = weight_kg * -1;
SELECT * FROM animals;
ROLLBACK TO SP1;
SELECT * FROM animals;
UPDATE animals SET weight_kg = weight_kg * '-1' WHERE weight_kg < 0;
SELECT * FROM animals;
COMMIT;
SELECT * FROM animals;

SELECT COUNT(*) FROM animals;
SELECT Count(name) FROM animals WHERE escape_attempts = 0;
SElECT AVG(weight_kg) FROM animals;
SELECT neutered, SUM(escape_attempts) FROM animals GROUP BY neutered;
SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals WHERE EXTRACT(year FROM date_of_birth) BETWEEN 1990 AND 2000  GROUP BY species;

SELECT name, owners_id, full_name  FROM animals INNER JOIN owners ON animals.owners_id = owners.id WHERE full_name = 'Melody Pond';

SELECT a.name, a.species_id, b.name FROM animals AS a INNER JOIN species AS b ON a.species_id = b.id WHERE species_id=1;
SELECT a.name, b.full_name FROM animals AS a RIGHT JOIN owners AS b ON a.owners_id = b.id;
SELECT b.name, b.id, COUNT(a.species_id) FROM animals AS a FULL OUTER JOIN species AS b ON a.species_id = b.id GROUP BY b.id;
SELECT a.name, b.full_name FROM animals AS a INNER JOIN owners AS b ON a.owners_id = b.id WHERE b.full_name = 'Jennifer Orwell' AND a.species_id = 2;
SELECT a.name, b.full_name FROM animals AS a RIGHT JOIN owners AS b ON a.owners_id = b.id WHERE b.full_name = 'Dean Winchester' AND a.escape_attempts = 0;
SELECT COUNT(a.owners_id) AS tc, b.full_name FROM animals AS a FULL JOIN owners AS b ON a.owners_id = b.id GROUP BY b.full_name ORDER BY tc DESC LIMIT 1;
























