-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-03-2023 a las 19:04:31
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `evaluación`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorios`
--

CREATE TABLE `accesorios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` int(10) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `dimensiones` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `accesorios`
--

INSERT INTO `accesorios` (`id`, `nombre`, `precio`, `descripcion`, `marca`, `dimensiones`) VALUES
(1, 'HyperX Cloud Stinger Core ', 356, 'Audífonos para gaming con licencia oficial de PS4™, Compatible con Xbox One™ Y Nintendo Switch™ ', 'HyperX ', '18.08 x 8.2 x 17.7 cm'),
(2, 'Razer Razer BlackShark ', 1413, 'Headset Multi plataforma con Tarjeta de Sonido Negro StandardWindows Vista; Windows XP; Mac; Linux ', 'Razer ', '19.3 x 17.17 x 9.8 cm'),
(3, 'HyperX Cloud Alpha ', 989, 'Auriculares de diadema para videojuegos - Controladores de cámara dual - Confort galardonado - Marco de aluminio duradero Micrófono desmontable , Cloud Alpha ', 'HyperX ', '23.37 x 20.96 x 11.81 cm'),
(4, 'HyperX Cloud Alpha S ', 1128, 'Auriculares para juegos de PC, sonido envolvente 7.1 ', 'HyperX ', '19.91 x 13.49 x 9.22 cm'),
(5, 'HyperX Alloy Elite 2 ', 1799, 'Teclado mecnico para juegos ', 'HyperX ', '44.45 x 17.53 x 3.81 cm'),
(6, 'Nibio Teclado Gamer ', 599, 'Nibio Teclado Gamer K200 Strike RGB ', 'Nibio ', '44 x 14 x 2.5 cm'),
(7, 'Control Inalámbrico Xbox ', 1119, 'Control Inalámbrico Xbox - Robot White ', 'Microsoft', '7.1 x 17.5 x 17 cm'),
(8, 'Control inalámbrico Xbox ', 1586, 'Control inalámbrico Xbox – Daystrike Camo Edition ', 'Microsoft ', '17.5 x 7.1 x 17 cm'),
(9, 'Control Inalámbrico Xbox One ', 2249, 'Control Inalámbrico Xbox One - Special Edition - Phantom Black ', 'Microsoft ', '10 x 20 x 18 cm'),
(10, 'Microsoft Mando inalámbrico ', 1999, 'Microsoft Mando inalámbrico para Xbox One, Midnight Forces II edición Especial ', 'Microsoft  ', '17.78 x 12.7 x 7.62 cm'),
(11, 'Control Inalámbrico Xbox One ', 2075, 'Control Inalámbrico Xbox One - Special Edition - Grey/Blue ', 'Microsoft ', '17.5 x 17.7 x 7.3 cm'),
(12, 'Game Drive ', 2134, 'Game Drive para Xbox Game Pass Special Edition de 2 TB, color blanco ', 'Seagate ', '11.68 x 8.13 x 1.52 cm'),
(13, 'Consola Xbox Series S ', 5885, 'Consola Xbox Series S ', 'Microsoft ', '28.9 x 12.7 x 35.5 cm'),
(14, 'Consola Xbox Series X ', 12789, 'Consola Xbox Series X ', 'Microsoft ', '29.4 x 20.32 x 37.5 cm'),
(15, 'Silla Gamer Iskur X ', 7092, 'Silla Gamer Iskur X Diseñada Ergonómicamente - Negro/Verde ', 'Razer ', '127.61 x 71.04 x 63.58 cm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuegos`
--

CREATE TABLE `videojuegos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` int(10) NOT NULL,
  `sinopsis` varchar(500) NOT NULL,
  `plataformas` varchar(500) NOT NULL,
  `calificacion` float(10,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `videojuegos`
--

INSERT INTO `videojuegos` (`id`, `nombre`, `precio`, `sinopsis`, `plataformas`, `calificacion`) VALUES
(1, 'Vampire Survivors', 93, 'Vampire Survivors es un videojuego de disparos tipo roguelike desarrollado y publicado por Luca Galante, también conocido como poncle', 'Android, iOS, Xbox One, Xbox Series X|S, Project xCloud, Microsoft Windows, Mac OS', 5.0),
(2, 'Stray', 569, 'Stray es un juego de aventuras desarrollado por BlueTwelve Studio y publicado por Annapurna Interactive', 'PlayStation 5, PlayStation 4, Microsoft Windows', 5.0),
(3, 'Leyendas Pokémon Arceus', 1222, 'Leyendas Pokémon: Arceus es un videojuego de rol de acción desarrollado por Game Freak y publicado por The Pokémon Company y Nintendo para Nintendo Switch', 'Nintendo Switch', 4.3),
(4, 'Gran Turismo 7', 1138, 'Gran Turismo 7 es un videojuego de simulación de carreras de 2022 desarrollado por Polyphony Digital y publicado por Sony Interactive Entertainment', 'PlayStation 5, PlayStation 4', 2.7),
(5, 'Tunic', 550, 'Tunic es un juego de acción-aventura desarrollado por Andrew Shouldice quien es un desarrollador indie Canadiense y publicado por Finji', 'Nintendo Switch, PlayStation 5, PlayStation 4, Xbox One, Xbox Series X|S, Mac OS, Project xCloud, Microsoft Windows', 4.5),
(6, 'Kirby y la tierra olvidada', 1099, 'Kirby y la tierra olvidada, titulado en inglés como Kirby and the Forgotten Land, es un videojuego de plataformas en 3D de la saga Kirby, desarrollado por HAL Laboratory y publicado por Nintendo para la videoconsola Nintendo Switch', 'Nintendo Switch', 4.9),
(7, 'OlliOlli World ', 359, 'OlliOlli World es un videojuego deportivo desarrollado por Roll7 y publicado por Private Division ', 'Nintendo Switch, PlayStation 5, PlayStation 4, Xbox One, Microsoft Windows, Xbox Series X|S ', 4.5),
(8, 'A Plague Tale: Requiem ', 616, 'A Plague Tale: Requiem es un videojuego de acción-aventura y sigilo desarrollado por Asobo Studio y distribuido por Focus Entertainment ', 'PlayStation 5, Xbox Series X|S, Nintendo Switch, Microsoft Windows, Project xCloud ', 4.5),
(9, 'Total War: Warhammer 3 ', 762, 'Total War: Warhammer III es un videojuego de estrategia por turnos y tácticas en tiempo real desarrollado por Creative Assembly y publicado por Sega ', 'Microsoft Windows, macOS, GNU/Linux, Mac OS ', 3.5),
(10, 'Splatoon 3 ', 999, 'Splatoon 3 es la tercera entrega de la serie Splatoon ', 'Nintendo Switch ', 4.9),
(11, 'Neon White ', 474, 'Neon White es un juego de disparos en primera persona y plataformas de rompecabezas desarrollado por Angel Matrix y publicado por Annapurna Interactive ', 'PlayStation 5, Nintendo Switch, PlayStation 4, Microsoft Windows ', 5.0),
(12, 'Rogue Legacy 2 ', 474, 'Rogue Legacy 2 es un juego de plataformas desarrollado y publicado por el estudio indie Cellar Door Games ', 'Nintendo Switch, Xbox One, Microsoft Windows, GNU/Linux, Xbox Series X|S, macOS ', 4.5),
(13, 'Teenage Mutant Ninja Turtles: Shredder\'s Revenge ', 474, 'Teenage Mutant Ninja Turtles: Shredder\'s Revenge es un juego de lucha desarrollado por Tribute Games y publicado por Dotemu ', 'Nintendo Switch, Android, PlayStation 4, PlayStation 5, Xbox One, iOS, Microsoft Windows, GNU/Linux, Project xCloud ', 4.5),
(14, 'Sifu ', 519, 'Sifu es un videojuego de lucha desarrollado y publicado por el estudio francés Sloclap ', 'Nintendo Switch, PlayStation 5, PlayStation 4, Xbox One, Xbox Series X|S, Microsoft Windows ', 4.5),
(15, 'Bayonetta 3 ', 1099, 'Bayonetta 3 es un videojuego de acción y aventuras desarrollado por PlatinumGames y publicado por Nintendo para Nintendo Switch ', 'Nintendo Switch ', 4.9);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesorios`
--
ALTER TABLE `accesorios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accesorios`
--
ALTER TABLE `accesorios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
