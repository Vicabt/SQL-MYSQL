CREATE DATABASE IF NOT EXISTS db_inventario;
USE db_inventario;

CREATE TABLE proveedores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    contacto VARCHAR(50),
    telefono VARCHAR(15)
);
