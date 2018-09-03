-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2018 a las 18:08:54
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `employee`
--
CREATE DATABASE IF NOT EXISTS `employee` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `employee`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employes`
--

CREATE TABLE `employes` (
  `ID` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `tel` int(9) NOT NULL,
  `password` varchar(30) NOT NULL,
  `password2` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `employes`
--

INSERT INTO `employes` (`ID`, `first_name`, `last_name`, `address`, `tel`, `password`, `password2`, `email`, `username`) VALUES
(1, 'Mario', 'Arnedo', 'Lejos de aqui', 565666666, '25f9e794323b453885f5181f1b624d', '25f9e794323b453885f5181f1b624d', 'marioarnedo1@gmail.com', 'marioarnedo'),
(2, 'Test', '123', 'HDh', 123131323, '25f9e794323b453885f5181f1b624d', '25f9e794323b453885f5181f1b624d', 'marioarnedo1@gmail.com', 'Test'),
(3, 'Test', '123', 'HDh', 123131323, '25f9e794323b453885f5181f1b624d', '25f9e794323b453885f5181f1b624d', 'marioarnedo1@gmail.com', 'Test');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `employes`
--
ALTER TABLE `employes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
