-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2024 a las 22:26:45
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(150) NOT NULL,
  `Genero` varchar(50) DEFAULT NULL,
  `Año_Publicación` int(11) DEFAULT NULL,
  `Autor_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`ID`, `Titulo`, `Genero`, `Año_Publicación`, `Autor_ID`) VALUES
(1, 'Cien años de soledad', 'Ciencia ficción', 1967, 1),
(2, 'El amor en los tiempos del cólera', 'Realismo mágico', 1985, 1),
(3, 'Harry Potter y la piedra filosofal', 'Fantasía', 1997, 2),
(4, 'Harry Potter y la cámara secreta', 'Fantasía', 1998, 2),
(6, 'Cien años de soledad', 'Realismo mágico', 1967, 1),
(7, 'El amor en los tiempos del cólera', 'Realismo mágico', 1985, 1),
(8, 'Harry Potter y la piedra filosofal', 'Fantasía', 1997, 2),
(9, 'Harry Potter y la cámara secreta', 'Fantasía', 1998, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_Autores_Libros` (`Autor_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `FK_Autores_Libros` FOREIGN KEY (`Autor_ID`) REFERENCES `autores` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`Autor_ID`) REFERENCES `autores` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
