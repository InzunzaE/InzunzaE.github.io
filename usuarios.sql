-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2023 a las 01:42:23
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
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `edad` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `telefono`, `edad`, `fecha_nacimiento`, `sexo`) VALUES
(1, 'Eitan', 'eitan14@gmail.com', '6673249331', 16, '2023-05-14', 1),
(2, 'boynas', 'boynas@gmail.com', '6675017464', 22, '2022-11-25', 1),
(3, 'homie', 'homie@gmail.com', '6674916365', 17, '2023-02-15', 1),
(4, 'Llanes', 'llanes@gmail.com', '6674916365', 14, '2022-11-25', 1),
(5, 'dandi', 'dandi@gmail.com', '6675017464', 22, '2023-05-14', 1),
(6, 'jose', 'jose@gmail.com', '6675017464', 22, '2023-02-15', 1),
(7, 'pedro', 'pedro@gmail.com', '6675017464', 17, '2022-11-25', 1),
(8, 'pancho', 'pancho@gmail.com', '664545151', 34, '2023-02-26', 2),
(9, 'mario', 'mario@gmail.com', '665984545', 53, '2023-02-24', 2),
(10, 'juana', 'juana@gmail.com', '66789554', 21, '2023-02-10', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
