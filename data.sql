/* Populate database with sample data. */


/*INSERTING DATA INTO VARIOUS FIELDS*/

INSERT INTO animals( id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES
( 1, 'Agumon' , '2020-02-03', 0, 1, 10.23),
(2, 'Gabumon', '2018-11-15', 2, 1, 8),
(3, 'Pikachu', '2021-01-07', 1, 0, 15.04),
(4, 'Devimon', '2017-05-12', 5, 1, 11);

/*UPDATING ANIMALS TABLE*/

INSERT INTO animals (id,name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (6,'Charmander', '2020-02-08', 0,0, -11),
        (7, 'Plantmon', '2021-11-15', 2,1,-5.7),
		(8,'Squirtle', '1993-04-02',3, 0, -12.13),
		(9, 'Angemon','2005-06-12',1, 1, -45),
		(10,'Boarmon','2005-06-07',7, 1, 20.4),
		(11,'Blossom', '1998-10-13', 3, 1, 17),
		(12,'Ditto', '2022-05-14', 4, 1, 22 ) ;
