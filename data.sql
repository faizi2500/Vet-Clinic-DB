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
