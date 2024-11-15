CREATE DATABASE IF NOT EXISTS db_empresa;
USE db_empresa;

CREATE TABLE inventarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_producto VARCHAR(50) NOT NULL,
    cantidad INT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL
);
