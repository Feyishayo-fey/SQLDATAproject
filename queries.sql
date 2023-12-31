/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name = 'Luna';



/*QUERY TO FIND ALL ANIMALS WHOSE NAME ENDS IN MON*/
SELECT name 
FROM animals 
WHERE name LIKE '%mon';

/*QUERY TO FIND NAME OF ALL ANIMALS BORN BETWWEEN 2016 AND 2019*/
SELECT name
FROM animals
WHERE date_of_birth BETWEEN'2016-01-01'AND'2019-12-30'
;
/*QUERY TO FIND NAME OF ANIMALS THAT ARE NEUTERED AND HAVE LESS THAN 3 ESCAPE ATTEMPTS*/
SELECT name
FROM animals
WHERE neutered = 1 AND
escape_attempts < 3;

/*QUERY TO FIND DATE OF BIRTH OF ANIMALS WHOSE NAME IS EITHER AUGUMON OR PIKACHU*/
SELECT date_of_birth
FROM animals
WHERE name IN ('Agumon','Pikachu')
;

/*QUERY TO FIND THE NAME AND ESCAPE ATTEMPTS OF ANIMALS WEIGHING MORE THAN 10.5KG*/
SELECT name , escape_attempts
FROM animals 
WHERE weight_kg > 10.5
;

/*QUERY TO FIND ANIMALS THAT ARE NEUTERED*/
SELECT *
FROM animals
WHERE neutered = 1
;

/*QUERY TO FIND ANIMALS NOT NAMED GABUMON*/
SELECT *
FROM animals 
WHERE name <> 'Gabumon'
;

/*QUERY TO FIND ANIMALS WEIGHING BETWEEN 10.4KG AND 17.3KG(10.4KG AND 17.3KG INCLUSIVE*/
SELECT *
FROM animals
WHERE weight_kg >= 10.4 AND 
weight_kg <= 17.3
;

/*TRANSACTION UPDATE AND ROLLBACK OF SPECIE COLUMN*/
begin transaction
UPDATE animals 
SET species ='u'
ROLLBACK;
SELECT * 
FROM animals;
/*TRANSACTION UPDATE OF SPECIE COLUMN*/

BEGIN TRANSACTION
UPDATE animals
SET species = 'D'
WHERE name LIKE '%mon';

SELECT * FROM animals;
/*TRANSACTION UPDATE OF SPECIE COLUMN*/

begin transaction
UPDATE animals 
SET species = 'P'
WHERE species IS NULL;
COMMIT;

SELECT * FROM animals;
/*TRANSACTION DELETE AND ROLLBACK OF ANIMALS TABLE*/
BEGIN TRANSACTION;
DELETE FROM animals;
ROLLBACK;
SELECT * FROM animals;

/*TRANSACTION DELETE OF ANIMALS TABLE UNDER CERTAIN CONDITION*/
BEGIN TRANSACTION;
DELETE FROM animals
WHERE date_of_birth > '2022-01-01'
SAVE TRANSACTION savepoint;

UPDATE animals
SET weight_kg =(weight_kg * -1);
ROLLBACK ;
SELECT * FROM animals;

/*QUERY TO COUNT ALL ANIMALS */
SELECT COUNT(*)
FROM animals;

/*QUERY TO COUNT ANIMALS THAT HAVE NEVER ESCAPED*/
SELECT COUNT(*)
FROM animals
WHERE escape_attempts = 0;

/*QUERY TO CALCULATE AVERAGE WEIGHT OF ANIMALS */
SELECT AVG(weight_kg) 
FROM animals;

/*QUERY TO FIND WHICH ANIMALS ESCAOE THE MOST: NEUTERED OR NON NEUTERED*/
SELECT COUNT(escape_attempts), neutered
FROM animals
GROUP BY neutered;

/*QUERY TO FIND THE MIN AND MAX WEIGHT OF ANIMAL SPECIES*/
SELECT MIN(weight_kg), MAX(weight_kg), species
FROM animals
GROUP BY species;

/*QUERY TO CALCULATE THE AVERAGE NUMBER OF ESCAPE ATTEMPTS TP ANIMALS BORN BETWEEN 1990 AND 2000*/
SELECT AVG(escape_attempts), species
FROM animals
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY species;