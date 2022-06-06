-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2022 a las 04:40:08
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendam2020m`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `fnacimiento` date DEFAULT NULL,
  `detalle` varchar(500) DEFAULT NULL,
  `usr` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `cedula` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `fnacimiento`, `detalle`, `usr`, `pwd`, `cedula`) VALUES
(1, ' Amanda', ' Pilamonta', '2022-02-14', ' Estudiante', '11', '11', 1727165761),
(3, 'a', 'a', '2022-02-15', 'a', 'a', 'a', 0),
(5, ' celeste', ' ordoñez', '2022-02-16', ' estudiantes', 'cc', '12', 0),
(6, ' aaa', ' aaa', '2022-02-16', ' aaa', '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `idd` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precioventa` decimal(10,0) DEFAULT NULL,
  `importe` decimal(10,0) DEFAULT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `idfactura` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`idd`, `cantidad`, `precioventa`, `importe`, `idproducto`, `idfactura`) VALUES
(1, 1, '41', '41', 0, 1),
(2, 1, '41', '41', 0, 2),
(3, 1, '41', '41', 0, 3),
(4, 1, '34', '34', 2, 4),
(5, 3, '41', '123', 0, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `idf` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `subtotal` decimal(10,0) DEFAULT NULL,
  `IVA` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`idf`, `fecha`, `subtotal`, `IVA`, `total`, `idcliente`) VALUES
(1, '2022-02-16', '41', '5', '46', 3),
(2, '2022-02-16', '41', '5', '46', 3),
(3, '2022-02-16', '41', '5', '46', 3),
(4, '2022-02-23', '157', '19', '176', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `detalle` varchar(50) DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `foto` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `marca`, `detalle`, `precio`, `stock`, `foto`) VALUES
(0, 'Juegos', 'Juegos para perros', 'pruebas', '41', 21, 'foto.jpg'),
(2, 'Procan', 'Pronaca', 'Comida para Perros', '34', 15, 'comida.jpg'),
(5, 'Kit', 'varios', 'Kit para perros', '20', 11, 'kit.jpg'),
(6, 'Casa de Gatos', 'Varios', 'Varios', '47', 5, 'casa.jpg'),
(9, 'Ropa', 'Varios', 'Varios', '47', 11, 'ropa.jpg'),
(11, 'Kit', 'varios', 'Kit para perros', '20', 11, 'kit.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `clave` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `usuario`, `clave`) VALUES
(1, 'Amanda', 'Pilamonta', 'amanda', '12345'),
(3, 'Amanda', 'Pilamonta', 'amanda', '12345'),
(4, '', '', 'amanda1', '12345'),
(5, '', '', 'amanda1', '12345');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`idd`),
  ADD KEY `idproducto` (`idproducto`),
  ADD KEY `idfactura` (`idfactura`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`idf`),
  ADD KEY `idcliente` (`idcliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
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
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `idd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `idf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `detalles_ibfk_1` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `detalles_ibfk_2` FOREIGN KEY (`idfactura`) REFERENCES `facturas` (`idf`);

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `clientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
