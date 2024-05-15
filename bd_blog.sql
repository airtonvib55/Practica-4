-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:33065
-- Tiempo de generación: 15-05-2024 a las 07:42:57
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `contenido` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `fecha`, `titulo`, `contenido`) VALUES
(3, '2025-10-08', 'Que depara para la proxima generacion de procesadores? editado', 'La tecnologÃÂÃÂ­a de los procesadores ha sido fundamental para el avance de la informÃÂÃÂ¡tica y la electrÃÂÃÂ³nica en las ÃÂÃÂºltimas dÃÂÃÂ©cadas. Desde los primeros microprocesadores hasta los modernos chips multinÃÂÃÂºcleo, cada nueva generaciÃÂÃÂ³n ha traÃÂÃÂ­do consigo aumentos significativos en velocidad, eficiencia y capacidad. A medida que nos adentramos en la prÃÂÃÂ³xima era de la computaciÃÂÃÂ³n, surgen nuevas preguntas sobre quÃÂÃÂ© innovaciones y mejoras podemos esperar en la prÃÂÃÂ³xima generaciÃÂÃÂ³n de procesadores. En este artÃÂÃÂ­culo, exploraremos algunas de las tendencias y tecnologÃÂÃÂ­as emergentes que podrÃÂÃÂ­an definir el futuro de los procesadores.'),
(4, '2024-05-09', 'Ciencia de Datos', 'En la era digital, la ciencia de datos se ha convertido en una herramienta fundamental para la toma de decisiones y la innovaciÃ³n en una amplia gama de industrias. Desde la predicciÃ³n de tendencias de mercado hasta la personalizaciÃ³n de experiencias de usuario, la ciencia de datos estÃ¡ revolucionando la forma en que las organizaciones entienden y utilizan la informaciÃ³n. En este artÃ­culo, exploraremos quÃ© es la ciencia de datos, sus componentes clave, aplicaciones y el impacto que estÃ¡ teniendo en nuestro mundo.'),
(5, '2024-03-07', 'IA en la sociedad', 'La tecnologÃÂ­a avanza a un ritmo vertiginoso y con ella, los lenguajes de programaciÃÂ³n que utilizamos para construir el software del maÃÂ±ana. A medida que surgen nuevas necesidades y paradigmas, los lenguajes de programaciÃÂ³n evolucionan para satisfacer estas demandas. En este artÃÂ­culo, exploraremos algunos de los lenguajes de programaciÃÂ³n que podrÃÂ­an jugar un papel crucial en el futuro de la informÃÂ¡tica.'),
(7, '2024-11-15', 'NVIDIA', 'NVIDIA, fundada en 1993, ha evolucionado de ser una empresa de tarjetas grÃ¡ficas a convertirse en un lÃ­der en la industria de la tecnologÃ­a, impulsando innovaciones en grÃ¡ficos, inteligencia artificial, computaciÃ³n en la nube y vehÃ­culos autÃ³nomos. Con su enfoque en la innovaciÃ³n constante y su capacidad para anticipar y moldear las tendencias tecnolÃ³gicas, NVIDIA ha jugado un papel crucial en la transformaciÃ³n del panorama tecnolÃ³gico global. En este artÃ­culo, exploraremos la historia, las innovaciones y el impacto de NVIDIA en el mundo de la tecnologÃ­a.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
