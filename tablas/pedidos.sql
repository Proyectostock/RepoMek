-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-07-2017 a las 16:31:06
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `repomek`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `codigo` int(11) NOT NULL,
  `tipo_de_insumo` enum('TINTAS','MARTILLOS','RIBBON','TRACTORES') NOT NULL,
  `maquina` enum('PRINTRONIX','IBM 6500') NOT NULL,
  `martillos` enum('SPRING 1500','SPRING 1505') NOT NULL,
  `ribbon` enum('P7210','P5215') NOT NULL,
  `tractores` enum('GENERIC 1500','GENERIC 1505') NOT NULL,
  `tintas` enum('ALTA PENETRANCIA','NEGRO PENETRANTE','VIRO VERDE','INVISIBLE','NEGRO FIJO') NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`codigo`, `tipo_de_insumo`, `maquina`, `martillos`, `ribbon`, `tractores`, `tintas`, `cantidad`) VALUES
(1, 'TINTAS', 'PRINTRONIX', 'SPRING 1505', 'P7210', 'GENERIC 1500', 'ALTA PENETRANCIA', 10),
(2, 'TINTAS', 'PRINTRONIX', 'SPRING 1500', 'P7210', 'GENERIC 1500', 'NEGRO PENETRANTE', 20);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
