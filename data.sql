/* Populate database with sample data. */

/* INSERT FIRST ENTRY */
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Agunmon', '2020-02-03', 10.23, true, 0);
/* INSERT SECOND ENTRY */
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Gabumon', '2020-11-15', 8, true, 2);
/* INSERT THIRD ENTRY */
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Pikachu', '2021-01-07', 15.04, false, 1);
/* INSERT FORTH ENTRY */
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Devimon', '2017-05-12', 11, true, 5);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Charmander', '2020-02-08', 0, false, -11), ('Plantmon', '2022-11-15', 2, true, -5.7), ('Squirtle', '1993-04-02', 3, false, -12.13), ('Angemon', '2005-06-12', 1, true, -45), ('Boarmon', '2005-06-07', 7, true, 20.4), ('Blossom', '1998-10-13', 3, false, 17);


INSERT INTO owners (full_name, age) VALUES ('San Smith', 34), ('Jennifer Orwell', 19), ('Bob', 45), ('Melody Pond', 77), ('Dean Winchester', 14), ('Jodie Whittaker', 38);

INSERT INTO species (name) VALUES ('Pokemon'), ('Digimon');

BEGIN;
UPDATE animals SET species_id = 2 WHERE name LIKE ('%mon');
UPDATE animals SET species_id = 1 WHERE species_id IS NULL;
COMMIT;

UPDATE animals SET owners_id = 1 WHERE name = 'Agunmon';
UPDATE animals SET owners_id = 2 WHERE name IN ('Gabumon', 'Pikachu);
UPDATE animals SET owners_id = 2 WHERE name = 'Pikachu';
UPDATE animals SET owners_id = 3 WHERE name IN ('Devimon', 'Plantmon');
UPDATE animals SET owners_id = 3 WHERE id IN (5, 7, 10);
UPDATE animals SET owners_id = 3 WHERE id IN (8, 9);

INSERT INTO vets (name, age, date_of_graduation) VALUES ('William Tatcher', 45, '2000-04-23'), ('Maisy Smith', 26, '2019-01-17'), ('Stephanie Mendez', 64, '1981-05-04'), ('Jack Harkness', 38, '2008-06-08');

INSERT INTO specialization (vets_id, species_id) VALUES (1, 1), (2, 1), (2, 2), (4, 2);

INSERT INTO visits (animals_id, vets_id, date_of_visit) VALUES (1, 1, '2020-05-24'), (1, 3, '2020-07-22');
INSERT INTO visits (animals_id, vets_id, date_of_visit) VALUES (2, 4, '2021-07-22');
INSERT INTO visits (animals_id, vets_id, date_of_visit) VALUES (3, 2, '2020-01-05'), (3, 2, '2020-03-08'), (3, 2, '2020-05-14');
INSERT INTO visits (animals_id, vets_id, date_of_visit) VALUES (4, 3, '2021-05-04'), (5, 4, '2021-02-24');
INSERT INTO visits (animals_id, vets_id, date_of_visit) VALUES (11, 2, '2019-12-21'), (11, 1, '2020-08-10'), (11, 2, '2021-04-07');
INSERT INTO visits (animals_id, vets_id, date_of_visit) VALUES (7, 3, '2019-09-29'), (8, 4, '2020-10-03'), (11, 4, '2020-11-04');
INSERT INTO visits (animals_id, vets_id, date_of_visit) VALUES (9, 2, '2019-01-24'), (9, 2, '2019-05-15'), (9, 2, '2020-02-27'), (9, 2, '2020-08-03');
INSERT INTO visits (animals_id, vets_id, date_of_visit) VALUES (10, 2, '2020-05-24'), (10, 1, '2021-01-11');
