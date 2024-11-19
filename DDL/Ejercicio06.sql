CREATE DATABASE IF NOT EXISTS db_pedidos;
USE db_pedidos;

CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(100)
);

CREATE TABLE productos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL
);

CREATE TABLE ventas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_producto INT,
    cantidad INT NOT NULL,
    fecha DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_producto) REFERENCES productos(id)
);
