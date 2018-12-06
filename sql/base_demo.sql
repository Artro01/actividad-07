datos CREATE DATABASE practica6;

USE practica6;

CREATE TABLE datos(
	nombre varchar(50),
	paterno varchar(50),
	materno varchar(50),
	num varchar(50),
   email varchar(50) NOT NULL PRIMARY KEY,
   password varchar(32) NOT NULL
);


INSERT INTO datos (nombre, paterno, materno, num, email, password)
VALUES ('enriquee','aguilar','rodriguez','7715668190','dejah@email','1234');

SHOW TABLES;

SELECT * FROM datos;

DESCRIBE datos;

SELECT "Creando un usuario y asignandolo a la base de datos" as "Mensaje";
-- CREATE USER 'kuorra'@'localhost' IDENTIFIED BY 'kuorra.2018';
GRANT ALL PRIVILEGES ON practica6.* TO 'root'@'Abcdef1';
-- GRANT ALL PRIVILEGES ON base_demo.* TO kuorra@'%' IDENTIFIED BY 'kuorra.remote';

FLUSH PRIVILEGES;
