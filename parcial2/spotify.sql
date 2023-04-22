-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2023 a las 03:25:03
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
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albumes`
--

CREATE TABLE `albumes` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `albumes`
--

INSERT INTO `albumes` (`id`, `artista_id`, `nombre`) VALUES
(1, 2, 'Super sangre joven'),
(2, 4, 'YSYSMO'),
(3, 6, 'X 100 pre'),
(4, 3, 'V anillos'),
(5, 10, '30'),
(6, 13, 'The car'),
(7, 9, 'Renaissance'),
(8, 7, 'Happier Than Ever'),
(9, 15, 'Nena trampa'),
(10, 16, 'Ahora'),
(11, 11, 'SMITHEREENS'),
(12, 14, 'Did You Know That There\'s a Tunnel Under Ocean Blvd'),
(13, 5, '511'),
(14, 1, 'Efectos Secundarios'),
(15, 17, 'Don\'t Be Stupid'),
(16, 8, 'Vencedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_canciones`
--

CREATE TABLE `album_canciones` (
  `id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `album_canciones`
--

INSERT INTO `album_canciones` (`id`, `album_id`, `cancion_id`) VALUES
(3, 5, 7),
(4, 13, 13),
(5, 10, 4),
(6, 12, 6),
(7, 15, 9),
(8, 14, 5),
(9, 8, 16),
(10, 9, 2),
(11, 7, 1),
(12, 7, 1),
(13, 11, 3),
(14, 1, 8),
(15, 6, 10),
(16, 4, 12),
(17, 16, 14),
(18, 3, 11),
(19, 2, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `imagen`) VALUES
(1, 'Peso pluma', 'pesopluma.jpg'),
(2, 'Duki', 'duki.jpg'),
(3, 'c.r.o', 'cro.jpg'),
(4, 'ysy a', 'ysya.jpg'),
(5, 'Milo j', 'miloj.jpg'),
(6, 'Bad bunny', 'badbunny.jpg'),
(7, 'billie eilish', 'billie.jpg'),
(8, 'valentin elizalde', 'vakentin.jpg'),
(9, 'beyonce', 'beyonce.jpg'),
(10, 'adele', 'adele.jpg'),
(11, 'joji', 'joji.jpg'),
(13, 'Artic monkeys', 'artic.jpg'),
(14, 'lana del rey', 'lana.jpg'),
(15, 'cazzu', 'cazzu.jpg\r\n'),
(16, 'Christian nodal', 'nodal.jpg'),
(17, 'Snoop dogg', 'dog.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `genero_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `disponible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `artista_id`, `duracion`, `genero_id`, `fecha`, `disponible`) VALUES
(1, 'its a vibe', 2, '03:40:00', 13, '2021-04-12', 1),
(2, 'Hello', 10, '00:06:28', 1, '2015-04-09', 1),
(3, 'I wanna be yours', 13, '03:00:00', 2, '2020-04-08', 1),
(4, 'amorfoda', 6, '02:10:00', 13, '2020-02-12', 1),
(5, 'cuff it', 9, '04:12:00', 2, '2022-08-18', 1),
(6, 'bad guy', 7, '02:34:00', 4, '2021-04-14', 1),
(7, 'After house', 3, '02:50:00', 6, '2018-04-13', 1),
(8, 'la gatita', 15, '03:01:00', 7, '2019-07-12', 1),
(9, 'Botella tras botella', 16, '02:39:00', 8, '2021-04-30', 1),
(10, 'Like you do', 11, '02:02:00', 5, '2020-11-11', 1),
(11, 'summertime sadness', 14, '03:14:00', 2, '2021-11-25', 1),
(12, 'Milagrosa', 5, '02:12:00', 10, '2021-02-19', 1),
(13, 'AMG', 1, '02:10:00', 9, '2022-08-18', 1),
(14, 'sexual eruptions', 17, '03:43:00', 3, '2014-04-09', 1),
(15, 'Te quiero asi', 8, '03:37:00', 11, '2014-04-08', 1),
(16, 'full ice', 4, '02:25:00', 13, '2020-09-17', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritas`
--

CREATE TABLE `favoritas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `favoritas`
--

INSERT INTO `favoritas` (`id`, `usuario_id`, `cancion_id`) VALUES
(4, 1, 6),
(5, 4, 3),
(6, 2, 1),
(7, 3, 13),
(8, 5, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'jazz'),
(2, 'pop'),
(3, 'rock and roll'),
(4, 'country'),
(5, 'disco'),
(6, 'techno'),
(7, 'reggae'),
(8, 'flamenco'),
(9, 'ranchera'),
(10, 'rap'),
(11, 'reggaeton'),
(12, 'metal'),
(13, 'trap');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresia`
--

CREATE TABLE `membresia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresia`
--

INSERT INTO `membresia` (`id`, `nombre`, `precio`) VALUES
(1, 'Individual', 115),
(2, 'Duo', 149),
(3, 'Para la familia', 179),
(4, 'Estudiantes', 57);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id`, `nombre`, `imagen`, `usuario_id`) VALUES
(3, 'chill', 'nodal.jpg', 1),
(4, 'rockkk', 'duki.jpg', 2),
(5, 'nada', 'valentin.jpg', 3),
(6, 'amor', 'lana.jpg', 4),
(7, 'aburrido', 'cro.jpg', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlist_canciones`
--

INSERT INTO `playlist_canciones` (`id`, `playlist_id`, `cancion_id`) VALUES
(1, 7, 7),
(2, 7, 13),
(3, 7, 4),
(4, 6, 6),
(5, 6, 9),
(6, 6, 5),
(7, 3, 16),
(8, 3, 2),
(9, 3, 1),
(10, 5, 3),
(11, 5, 8),
(12, 5, 10),
(13, 4, 12),
(14, 4, 14),
(15, 4, 11),
(16, 4, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `contrasena`, `usuario`, `telefono`, `membresia_id`) VALUES
(1, 'Adrian chavez', 'adrain@gmail.com', 'eitan1234', 'gayuser', '66729392', 1),
(2, 'Eitan Inzunza', 'eitan@gmail.com', 'eitan1234567', 'kidroto', '6673249331', 3),
(3, 'fransisco madrid', 'boynas@gmail.com', 'boynazzzz', 'wero20', '667352594', 4),
(4, 'Alexia armenta', 'alexia@gmail.com', 'lanadelrey123', 'aleee', '667392398', 2),
(5, 'hommey ochoa', 'ochoa@gmail.com', 'hommiii22', 'homei', '674545353', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albumes`
--
ALTER TABLE `albumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`);

--
-- Indices de la tabla `album_canciones`
--
ALTER TABLE `album_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `genero_id` (`genero_id`),
  ADD KEY `disponible` (`disponible`);

--
-- Indices de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresia`
--
ALTER TABLE `membresia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albumes`
--
ALTER TABLE `albumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `album_canciones`
--
ALTER TABLE `album_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `membresia`
--
ALTER TABLE `membresia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `albumes`
--
ALTER TABLE `albumes`
  ADD CONSTRAINT `albumes_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`);

--
-- Filtros para la tabla `album_canciones`
--
ALTER TABLE `album_canciones`
  ADD CONSTRAINT `album_canciones_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `album_canciones_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `albumes` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`),
  ADD CONSTRAINT `canciones_ibfk_2` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`);

--
-- Filtros para la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD CONSTRAINT `favoritas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `favoritas_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
