-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-06-2017 a las 05:32:55
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bowe`
--

CREATE TABLE `bowe` (
  `id_bowe` int(11) NOT NULL,
  `operario` set('nombrebowe1','nombrebowe2','nombrebowe3','nombrebowe4') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bowe_slalom`
--

CREATE TABLE `bowe_slalom` (
  `id_slalom` int(11) NOT NULL,
  `operario` set('nombreslalom1','nombreslalom2','nombreslalom3','nombreslalom4') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `despacho`
--

CREATE TABLE `despacho` (
  `id_despacho` int(11) NOT NULL,
  `operario` set('nombredespacho1','nombredespacho2','nombredespacho3','nombredespacho4','nombredespacho5','nombredespacho6') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumo_revisado`
--

CREATE TABLE `insumo_revisado` (
  `id_insumos` int(11) NOT NULL,
  `codigo` smallint(255) NOT NULL,
  `insumos_revisado` set('BANDAS ELASTICAS','LOMO NEGRO','BOLSAS TRASNPARENTES','') NOT NULL,
  `cantidad` smallint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquinas`
--

CREATE TABLE `maquinas` (
  `id_maquina` int(11) NOT NULL,
  `marca` set('PRINTRONIX','IBM 6500','','') NOT NULL,
  `id_martillos` int(11) NOT NULL,
  `id_tractor` int(11) NOT NULL,
  `id_ribbon` int(11) NOT NULL,
  `id_tintas` int(11) NOT NULL,
  `id_codigo` int(11) NOT NULL,
  `id_cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `martillos`
--

CREATE TABLE `martillos` (
  `id` int(11) NOT NULL,
  `codigo` smallint(255) NOT NULL,
  `martillos` varchar(200) NOT NULL,
  `cantidad` smallint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revisado`
--

CREATE TABLE `revisado` (
  `id_revisado` int(11) NOT NULL,
  `nombre_de operaria` set('nombre1','nombre2','nombre3','nombre4','nombre5') NOT NULL,
  `id_insumos` int(11) NOT NULL,
  `id_tapas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ribbon`
--

CREATE TABLE `ribbon` (
  `id` int(11) NOT NULL,
  `codigo` smallint(255) NOT NULL,
  `ribbon shield` set('P5215','P7210','','') NOT NULL,
  `cantidad` smallint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tapas_comun`
--

CREATE TABLE `tapas_comun` (
  `id_comun` int(11) NOT NULL,
  `codigo` smallint(255) NOT NULL,
  `tapas` set('CREDICOOP','NACION','PROVINCIA','CIUDAD','CHUBUT','CHACO','INDUSTRIAL','FRANCES','PATAGONIA','RIO','PIANO','COMAFI','BANCO DE VALORES','CAJA DE VALORES','HIPOTECARIO','FINANSUR','COLUMBIA','CORRIENTES','GALICIA') NOT NULL,
  `cantidad` smallint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tapas_diferido`
--

CREATE TABLE `tapas_diferido` (
  `id_diferido` int(11) NOT NULL,
  `codigo` smallint(255) NOT NULL,
  `tapas_diferido` set('CREDICOOP','NACION','PROVINCIA','CIUDAD','CHUBUT','CHACO','INDUSTRIAL','FRANCES','PATAGONIA','RIO','PIANO','COMAFI','BANCO DE VALORES','CAJA DE VALORES','HIPOTECARIO','FINANSUR','COLUMBIA','CORRIENTES','GALICIA') NOT NULL,
  `cantidad` smallint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tapas_especiales`
--

CREATE TABLE `tapas_especiales` (
  `id_especiales` int(11) NOT NULL,
  `codigo` smallint(255) NOT NULL,
  `especiales` set('RIO CORPORATIVA','RIO SELECT','RIO INFINITY','RIO INFINITY GOLD','RIO ADVANCED','GALICIA CUENTA CORRIENTE','GALICIA EMINENT','GALICIA EMINENT CUENTA CORRIENTE') NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tintas`
--

CREATE TABLE `tintas` (
  `id_tintas` int(11) NOT NULL,
  `codigo` int(255) NOT NULL,
  `tinta` set('ALTA PENETRANCIA','NEGRO PENETRANTE','VIRO VERDE','INVISIBLE','NEGRO FIJO') NOT NULL,
  `cantidad` smallint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_de_tapas`
--

CREATE TABLE `tipos_de_tapas` (
  `id_tapas` int(11) NOT NULL,
  `tipos_de_tapas` set('COMUN','DIFERIDO','ESPECIALES','') NOT NULL,
  `id_comun` int(11) NOT NULL,
  `id_diferido` int(11) NOT NULL,
  `id_especiales` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tractores`
--

CREATE TABLE `tractores` (
  `id` int(11) NOT NULL,
  `codigo` int(255) NOT NULL,
  `tractores` varchar(255) NOT NULL,
  `cantidad` smallint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(40) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `activo` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`, `fecha_registro`, `activo`) VALUES
(1, 'Jorge introini', 'email@servidorfalso.com', '1234', '2017-04-08 01:08:00', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bowe`
--
ALTER TABLE `bowe`
  ADD PRIMARY KEY (`id_bowe`);

--
-- Indices de la tabla `bowe_slalom`
--
ALTER TABLE `bowe_slalom`
  ADD PRIMARY KEY (`id_slalom`);

--
-- Indices de la tabla `despacho`
--
ALTER TABLE `despacho`
  ADD PRIMARY KEY (`id_despacho`);

--
-- Indices de la tabla `insumo_revisado`
--
ALTER TABLE `insumo_revisado`
  ADD PRIMARY KEY (`id_insumos`);

--
-- Indices de la tabla `maquinas`
--
ALTER TABLE `maquinas`
  ADD PRIMARY KEY (`id_maquina`),
  ADD KEY `id_martillos` (`id_martillos`),
  ADD KEY `id_tractor` (`id_tractor`),
  ADD KEY `id_ribbon` (`id_ribbon`),
  ADD KEY `id_tintas` (`id_tintas`),
  ADD KEY `id_codigo` (`id_codigo`),
  ADD KEY `id_cantidad` (`id_cantidad`);

--
-- Indices de la tabla `martillos`
--
ALTER TABLE `martillos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `revisado`
--
ALTER TABLE `revisado`
  ADD PRIMARY KEY (`id_revisado`),
  ADD KEY `id_insumos` (`id_insumos`),
  ADD KEY `id_tapas` (`id_tapas`);

--
-- Indices de la tabla `ribbon`
--
ALTER TABLE `ribbon`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tapas_comun`
--
ALTER TABLE `tapas_comun`
  ADD PRIMARY KEY (`id_comun`);

--
-- Indices de la tabla `tapas_diferido`
--
ALTER TABLE `tapas_diferido`
  ADD PRIMARY KEY (`id_diferido`);

--
-- Indices de la tabla `tapas_especiales`
--
ALTER TABLE `tapas_especiales`
  ADD PRIMARY KEY (`id_especiales`);

--
-- Indices de la tabla `tintas`
--
ALTER TABLE `tintas`
  ADD PRIMARY KEY (`id_tintas`);

--
-- Indices de la tabla `tipos_de_tapas`
--
ALTER TABLE `tipos_de_tapas`
  ADD PRIMARY KEY (`id_tapas`),
  ADD KEY `id_comun` (`id_comun`),
  ADD KEY `id_diferido` (`id_diferido`),
  ADD KEY `id_especiales` (`id_especiales`);

--
-- Indices de la tabla `tractores`
--
ALTER TABLE `tractores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bowe`
--
ALTER TABLE `bowe`
  MODIFY `id_bowe` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bowe_slalom`
--
ALTER TABLE `bowe_slalom`
  MODIFY `id_slalom` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `despacho`
--
ALTER TABLE `despacho`
  MODIFY `id_despacho` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `insumo_revisado`
--
ALTER TABLE `insumo_revisado`
  MODIFY `id_insumos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `maquinas`
--
ALTER TABLE `maquinas`
  MODIFY `id_maquina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `martillos`
--
ALTER TABLE `martillos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `revisado`
--
ALTER TABLE `revisado`
  MODIFY `id_revisado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ribbon`
--
ALTER TABLE `ribbon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tapas_comun`
--
ALTER TABLE `tapas_comun`
  MODIFY `id_comun` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tapas_diferido`
--
ALTER TABLE `tapas_diferido`
  MODIFY `id_diferido` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tapas_especiales`
--
ALTER TABLE `tapas_especiales`
  MODIFY `id_especiales` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tintas`
--
ALTER TABLE `tintas`
  MODIFY `id_tintas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tipos_de_tapas`
--
ALTER TABLE `tipos_de_tapas`
  MODIFY `id_tapas` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tractores`
--
ALTER TABLE `tractores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `maquinas`
--
ALTER TABLE `maquinas`
  ADD CONSTRAINT `maquinas_ibfk_1` FOREIGN KEY (`id_martillos`) REFERENCES `martillos` (`id`),
  ADD CONSTRAINT `maquinas_ibfk_2` FOREIGN KEY (`id_tractor`) REFERENCES `tractores` (`id`),
  ADD CONSTRAINT `maquinas_ibfk_3` FOREIGN KEY (`id_ribbon`) REFERENCES `ribbon` (`id`),
  ADD CONSTRAINT `maquinas_ibfk_4` FOREIGN KEY (`id_tintas`) REFERENCES `tintas` (`id_tintas`);

--
-- Filtros para la tabla `revisado`
--
ALTER TABLE `revisado`
  ADD CONSTRAINT `revisado_ibfk_1` FOREIGN KEY (`id_tapas`) REFERENCES `tipos_de_tapas` (`id_tapas`),
  ADD CONSTRAINT `revisado_ibfk_2` FOREIGN KEY (`id_insumos`) REFERENCES `insumo_revisado` (`id_insumos`);

--
-- Filtros para la tabla `tipos_de_tapas`
--
ALTER TABLE `tipos_de_tapas`
  ADD CONSTRAINT `tipos_de_tapas_ibfk_1` FOREIGN KEY (`id_comun`) REFERENCES `tapas_comun` (`id_comun`),
  ADD CONSTRAINT `tipos_de_tapas_ibfk_2` FOREIGN KEY (`id_especiales`) REFERENCES `tapas_especiales` (`id_especiales`),
  ADD CONSTRAINT `tipos_de_tapas_ibfk_3` FOREIGN KEY (`id_diferido`) REFERENCES `tapas_diferido` (`id_diferido`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
