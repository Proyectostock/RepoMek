-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-07-2017 a las 17:45:10
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
-- Estructura de tabla para la tabla `pedidos_revisado`
--

CREATE TABLE `pedidos_revisado` (
  `id_pedido_revisado` int(11) NOT NULL,
  `codigo` smallint(255) NOT NULL,
  `tipos_de_insumos` set('TAPAS','CONTRATAPAS','BANDAS ELASTICAS','BOLSAS PLASTICAS','ROLLO DE LOMO','PLANILLA') NOT NULL,
  `tipos_de_cheques` set('COMUN','DIFERIDO') NOT NULL,
  `tipos_de_planillas` set('PROVINCIA','RIO','TIERRA DEL FUEGO','FRANCES','GENERICA') NOT NULL,
  `tapas` set('CREDICOOP','NACION','PROVINCIA','CIUDAD','CHUBUT','CHACO','INDUSTRIAL','FRANCES','PATAGONIA','RIO CORPORATIVA','RIO SELECT','RIO INFINITY','RIO INFINITY GOLD','RIO ADVANCED','PIANO','COMAFI','BANCO DE VALORES','CAJA DE VALORES','HIPOTECARIO','FINANSUR','COLUMBIA','CORRIENTES','GALICIA','GALICIA CUENTA CORRIENTE','GALICIA EMINENT','GALICIA EMINENT CUENTA CORRIENTE') NOT NULL,
  `contratapas` set('CREDICOOP','NACION','PROVINCIA','CIUDAD','CHUBUT','CHACO','INDUSTRIAL','FRANCES','PATAGONIA','RIO','PIANO','BANCO DE VALORES','CAJA DE VALORES','HIPOTECARIO','FINANSUR','COLUMBIA','CORRIENTES','GENERICA (BLANCA)') NOT NULL,
  `cantidad` smallint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pedidos_revisado`
--
ALTER TABLE `pedidos_revisado`
  ADD PRIMARY KEY (`id_pedido_revisado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pedidos_revisado`
--
ALTER TABLE `pedidos_revisado`
  MODIFY `id_pedido_revisado` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
