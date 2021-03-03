-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-02-2021 a las 22:44:08
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante`
--
CREATE DATABASE IF NOT EXISTS `restaurante` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `restaurante`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_carrito`
--

DROP TABLE IF EXISTS `tb_carrito`;
CREATE TABLE IF NOT EXISTS `tb_carrito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_usuario` int(11) NOT NULL,
  `fk_id_comida` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_carta`
--

DROP TABLE IF EXISTS `tb_carta`;
CREATE TABLE IF NOT EXISTS `tb_carta` (
  `id_comida` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` double NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `subcategoria` varchar(50) NOT NULL,
  `imagen` varchar(10000) NOT NULL,
  `idusuario` varchar(600) NOT NULL,
  PRIMARY KEY (`id_comida`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_carta`
--

INSERT INTO `tb_carta` (`id_comida`, `nombre`, `precio`, `categoria`, `subcategoria`, `imagen`, `idusuario`) VALUES
(83, 'Fanta', 1, 'bebidas', 'gaseosa', '1614384661.jpg', 'elias@gmail.com'),
(84, 'Coca cola', 1.25, 'bebidas', 'gaseosa', '1614384677.jpg', 'elias@gmail.com'),
(85, 'Helado mixto', 2.5, 'postres', 'helado', '1614384718.jpg', 'elias@gmail.com'),
(86, 'Chocolate', 2, 'postres', 'helado', '1614384762.jpg', 'elias@gmail.com'),
(87, 'Juego de naranja', 1.25, 'bebidas', 'jugos', '1614384799.jpg', 'elias@gmail.com'),
(88, 'Salchipapa', 1, 'comidas', 'frituras', '1614384877.jpg', 'elias@gmail.com'),
(89, 'torta de chocolate', 3, 'postres', 'torta', '1614385148.jpg', 'elias@gmail.com'),
(81, 'arroz con menestra y lomo', 1.25, 'comidas', 'arroz', '1614384613.jpg', 'elias@gmail.com'),
(82, 'Sopa de queso', 1, 'comidas', 'sopa', '1614384640.jpg', 'elias@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_facturas`
--

DROP TABLE IF EXISTS `tb_facturas`;
CREATE TABLE IF NOT EXISTS `tb_facturas` (
  `id_facturas` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `cantidad` varchar(20) NOT NULL,
  `precio` varchar(255) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `subcategoria` varchar(600) NOT NULL,
  `idusuario` varchar(200) NOT NULL,
  `fecha` date NOT NULL,
  `notificacion` int(11) NOT NULL,
  PRIMARY KEY (`id_facturas`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_facturas`
--

INSERT INTO `tb_facturas` (`id_facturas`, `nombre`, `cantidad`, `precio`, `categoria`, `subcategoria`, `idusuario`, `fecha`, `notificacion`) VALUES
(9, 'torta', '2', '2.50', 'postres', 'chocolate', 'prejus@gmail.com', '2021-02-20', 1),
(10, 'Salchipapa', '0', '1', 'comidas', 'frituras', '118', '2021-02-22', 1),
(11, 'atun', '2', '2.50', 'comidas', 'atuncito', 'bryan@gmail.com', '2021-02-25', 1),
(12, 'sopa de queso', '0', '2', 'comidas', 'sopa', '118', '2021-02-25', 1),
(13, 'Arroz con menestra', '0', '5', 'comidas', 'arroz', '118', '2021-02-25', 1),
(14, 'arroz con menestra y lomo', '0', '1.25', 'comidas', 'arroz', '118', '2021-02-26', 1),
(15, 'Fanta', '0', '1', 'bebidas', 'gaseosa', '118', '2021-02-26', 1),
(16, 'Salchipapa', '0', '1', 'comidas', 'frituras', '118', '2021-02-26', 1),
(17, 'Sopa de queso', '0', '1', 'comidas', 'sopa', '118', '2021-02-26', 1),
(18, 'arroz con menestra y lomo', '0', '1.25', 'comidas', 'arroz', '119', '2021-02-26', 1),
(19, 'Helado mixto', '0', '2.5', 'postres', 'helado', '119', '2021-02-26', 0),
(20, 'Helado mixto', '0', '2.5', 'postres', 'helado', '123', '2021-02-27', 0),
(21, 'Coca cola', '0', '1.25', 'bebidas', 'gaseosa', '123', '2021-02-27', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pedidos`
--

DROP TABLE IF EXISTS `tb_pedidos`;
CREATE TABLE IF NOT EXISTS `tb_pedidos` (
  `id_pedidos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `cantidad` varchar(20) NOT NULL,
  `precio` varchar(255) NOT NULL,
  `imagen` varchar(600) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `subcategoria` varchar(600) NOT NULL,
  `estado` varchar(600) NOT NULL,
  `idusuario` varchar(200) NOT NULL,
  `fecha` date NOT NULL,
  `notificacion` int(11) NOT NULL,
  PRIMARY KEY (`id_pedidos`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_pedidos`
--

INSERT INTO `tb_pedidos` (`id_pedidos`, `nombre`, `cantidad`, `precio`, `imagen`, `categoria`, `subcategoria`, `estado`, `idusuario`, `fecha`, `notificacion`) VALUES
(86, 'arroz con menestra y lomo', '0', '1.25', '1614384613.jpg', 'comidas', 'arroz', 'Despachar', '119', '2021-02-26', 2),
(76, 'Sopa de queso', '0', '1', '1614384640.jpg', 'comidas', 'sopa', 'Despachar', '118', '2021-02-26', 0),
(77, 'Salchipapa', '0', '1', '1614384877.jpg', 'comidas', 'frituras', 'Despachar', '118', '2021-02-26', 0),
(83, 'Fanta', '0', '1', '1614384661.jpg', 'bebidas', 'gaseosa', 'Despachar', '118', '2021-02-26', 0),
(84, 'torta de chocolate', '0', '3', '1614385148.jpg', 'postres', 'torta', 'Pendiente', '118', '2021-02-26', 0),
(85, 'Chocolate', '0', '2', '1614384762.jpg', 'postres', 'helado', 'Pendiente', '118', '2021-02-26', 0),
(87, 'Coca cola', '0', '1.25', '1614384677.jpg', 'bebidas', 'gaseosa', 'Pendiente', '119', '2021-02-26', 2),
(88, 'Helado mixto', '0', '2.5', '1614384718.jpg', 'postres', 'helado', 'Despachar', '119', '2021-02-26', 2),
(90, 'arroz con menestra y lomo', '0', '1.25', '1614384613.jpg', 'comidas', 'arroz', 'Pendiente', '123', '2021-02-27', 0),
(91, 'Coca cola', '0', '1.25', '1614384677.jpg', 'bebidas', 'gaseosa', 'Despachar', '123', '2021-02-27', 0),
(92, 'Helado mixto', '0', '2.5', '1614384718.jpg', 'postres', 'helado', 'Despachar', '123', '2021-02-27', 0),
(75, 'arroz con menestra y lomo', '0', '1.25', '1614384613.jpg', 'comidas', 'arroz', 'Despachar', '118', '2021-02-26', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pedidos_prueba`
--

DROP TABLE IF EXISTS `tb_pedidos_prueba`;
CREATE TABLE IF NOT EXISTS `tb_pedidos_prueba` (
  `id` int(11) NOT NULL,
  `fk_id_usuario` int(11) NOT NULL,
  `fk_id_pedido` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(200) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `cedula` varchar(50) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `img_perfil` varchar(300) NOT NULL,
  `nivel` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_editado` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `usuario_creacion` varchar(600) NOT NULL,
  `usuario_editado` varchar(600) NOT NULL,
  `conexion` varchar(50) NOT NULL,
  `eliminado` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `cedula`, `telefono`, `email`, `password`, `img_perfil`, `nivel`, `estado`, `fecha_creacion`, `fecha_editado`, `usuario_creacion`, `usuario_editado`, `conexion`, `eliminado`) VALUES
(6, 'administrador', 'administrador', '0987654123', '0993073898', 'admin@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '1610381933.png', 'Administrador', 'Activado', '0000-00-00 00:00:00', '2021-02-27 22:40:37', '', '', 'Desconectado', 1),
(118, 'Denise', 'Villamar', '0987654321', '0987654321', 'denise@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '1611887963.jpeg', 'Cliente', 'Activado', '2021-02-19 00:18:36', '2021-02-27 22:42:09', 'cliente_creado', 'Sin editar', 'Desconectado', 1),
(119, 'prueba', 'prueba', '0987451265', '0984515487', 'prueba@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '1610381944.jpeg', 'Cliente', 'Activado', '2021-02-19 23:25:39', '2021-02-27 22:42:34', 'elias@gmail.com', 'elias@gmail.com', 'Conectado', 1),
(121, 'prueba', 'prueba', '0951815869', '0993073898', 'prueba@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'nulo', 'Cliente', 'Activado', '2021-02-21 13:32:56', '2021-02-21 18:46:12', 'cliente_creado', 'Sin editar', 'Desconectado', 1),
(123, 'asd', 'asd', '0951815869', '0993073898', 'asd@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'nulo', 'Cliente', 'Activado', '2021-02-27 09:35:23', '2021-02-27 15:04:59', 'cliente_creado', 'Sin editar', 'Conectado', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
