CREATE DATABASE IF NOT EXISTS db_clinica;
USE db_clinica;

CREATE TABLE pacientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    edad INT
);

CREATE TABLE doctores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    especialidad VARCHAR(50)
);

CREATE TABLE citas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT,
    id_doctor INT,
    fecha DATE,
    hora TIME,
    FOREIGN KEY (id_paciente) REFERENCES pacientes(id),
    FOREIGN KEY (id_doctor) REFERENCES doctores(id)
);
