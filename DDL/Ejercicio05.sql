CREATE DATABASE IF NOT EXISTS db_biblioteca;
USE db_biblioteca;

CREATE TABLE autores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    nacionalidad VARCHAR(50)
);

CREATE TABLE libros (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    id_autor INT,
    FOREIGN KEY (id_autor) REFERENCES autores(id)
);
