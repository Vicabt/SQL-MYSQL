CREATE DATABASE IF NOT EXISTS db_colegio;
USE db_colegio;

CREATE TABLE estudiantes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    grado VARCHAR(10)
);

CREATE TABLE profesores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    materia VARCHAR(50)
);

CREATE TABLE asignaturas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    id_profesor INT,
    FOREIGN KEY (id_profesor) REFERENCES profesores(id)
);
