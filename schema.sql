/* Database schema to keep the structure of entire database. */

/*CREATING DATABASE*/

CREATE DATABASE vet_clinic
/*CREATING TABLES AND INPUTING COLUMNS*/

CREATE TABLE animals (
    id INT ,
    name VARCHAR ,
    date_of_birth DATE ,
    escape_attempts INT,
    neutered BIT,
    weight_kg DECIMAL,
);


