-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2023 a las 02:36:27
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `color` varchar(50) NOT NULL,
  `existencia` int(11) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `medida` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `descripcion`, `color`, `existencia`, `marca`, `medida`) VALUES
(1, 'Silla gamer', 1890, 'Azul economica', 'azul', 5, 'XTREME LIFER', '56D x 56w'),
(2, 'celular', 20000, 'celular aifon bro', 'negro', 100, 'ifone', '100 x 100'),
(3, 'Pulsera', 20, 'Roja de hilo sucia y fea', 'rojo', 1, 'gucci', 'antebrazo mini'),
(4, 'USB gamer', 100, 'Usb con juegos chipiados', 'verde', 20, 'AnyDesk', '10x10cm'),
(5, 'Caguama', 70, 'Helada y rica', 'cafe', 10000, 'tecate', '50cm'),
(6, 'cubrebocas', 10, 'Cubrebocas porque ai covid', 'negro', 100, 'isste', 'boca'),
(7, 'xbox 360', 1500, 'xbox 360 jala todo pero no prende chipeado', 'negro', 1, 'xbox', 'xbox'),
(8, 'tenis', 2000, 'tenis nike blazer', 'blanco', 100, 'nike', '5 mx'),
(9, 'funda gamer', 100, 'funda para celular gamer con rgb', 'rgb', 1, 'gamer', 'celular'),
(10, 'cigarro gamer', 25000, 'Cigarro ultra gamer te mata a los dos dias cancer insano', 'blanco', 1, 'llanezmx', 'chico');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
