CREATE DATABASE IF NOT EXISTS db_ferreteria;
USE db_ferreteria;

CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(100),
    telefono VARCHAR(15)
);
