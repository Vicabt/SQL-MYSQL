CREATE DATABASE IF NOT EXISTS db_tienda;
USE db_tienda;

CREATE TABLE empleados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    puesto VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL
);
