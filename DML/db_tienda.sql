-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-11-2024 a las 01:50:42
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL,
  `nombreCompleto` varchar(100) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `fechaContratacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `puesto` varchar(50) NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `nombreCompleto`, `fechaNacimiento`, `fechaContratacion`, `puesto`, `salario`, `email`) VALUES
(1, 'Victor Cabas', '1980-02-11', '2024-11-18 05:00:00', 'Gerente', 3000.00, 'vicab66@gmail.com'),
(2, 'Carlos Baloco', '1999-11-11', '2024-11-18 05:00:00', 'Subgerente', 2000.00, 'carlos@gmail.com'),
(3, 'Vanessa Cabas', '2004-09-28', '2024-11-18 05:00:00', 'Instructora', 3000.00, 'Vanessa@gmail.com'),
(4, 'Gabriela Cabas', '2007-05-25', '2024-11-18 05:00:00', 'Administradora', 2500.00, 'Gabriela@gmail.com'),
(5, 'Victoria Cabas', '2011-06-13', '2024-11-18 05:00:00', 'Asistente', 1500.00, 'toyi@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
