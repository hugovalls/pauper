-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2024 a las 18:43:14
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
-- Base de datos: `tournament_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archetypes`
--

CREATE TABLE `archetypes` (
  `archetype_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `archetypes`
--

INSERT INTO `archetypes` (`archetype_id`, `name`, `description`) VALUES
(1, 'Kuldotha Burn', 'A high-speed deck focused on aggressive plays using Kuldotha Rebirth.'),
(2, 'Grixis Affinity', 'A synergy deck based on artifact interactions and affinity discount for powerful creatures.'),
(3, 'Dimir Faeries', 'A control-oriented deck utilizing faerie creatures and spells.'),
(4, 'Jund Broodscale', 'A powerful combo deck with good midrange capabilities.'),
(5, 'Jund Gardens', 'midrange jund deck that uses crypt rats to control the board'),
(6, 'Tireless Tribe', 'A combo deck built around Tireless Tribe for high burst damage.'),
(7, 'Golgari Broodscale', 'much like und broodsacle but this deck is fuly reliant on its combo side.'),
(8, 'Elves', 'A tribal deck that uses elf creatures for rapid mana generation and powerful combos.'),
(9, 'MonoU Faeries', 'A mono-blue deck focusing on evasive faerie creatures and control spells trying to tempo out its oponent while grinding value.'),
(10, 'Rakdos Madness', 'An aggressive deck utilizing discard outlets and Madness synergies.'),
(11, 'White Weenie', 'A deck featuring low-cost white creatures to overwhelm the opponent.'),
(12, 'Jund Dredge', 'A graveyard-focused deck that reanimates creatures using the Dredge mechanic. with a big combo component.'),
(13, 'Caw Gates', 'A control deck leveraging card advantage and synergy between creatures and lands.'),
(14, 'Walls Combo', 'A combo deck using wall creatures to establish a defense eventualy combo'),
(15, 'Izzet Terror', 'A blue-red control deck that uses Terror as a removal option.'),
(16, 'MonoR Tron', 'A mono-red deck that uses the Tron lands to accelerate powerful spells.'),
(17, 'MonoU Delver', 'A tempo deck with Delver of Secrets as its primary threat.'),
(18, 'Golgari TurboFog', 'A deck that stalls opponents with fog effects while setting up a win condition.'),
(19, 'Gruul Ramp', 'A ramp deck that accelerates into large creatures and powerful spells.'),
(20, '5C Domain', 'A deck that leverages cards with bonuses for having multiple basic land types.'),
(21, 'Familiars', 'A combo-control deck using familiars to reduce spell costs and maintain card advantage.'),
(22, 'Jeskai Energy', 'a jeskai control deck that tryes to grind the oponent to a halt and drown them in value'),
(23, 'Gruul Ponza', 'A land-destruction deck focused on disrupting opponents’ mana base.'),
(24, 'Poison Storm', 'A combo deck that attempts to win by inflicting poison counters quickly.'),
(25, 'Boros Synth', 'a midrange red-white deck that uses synth and multiple creatures that return it to its owner´s hand to maximize its value.'),
(26, 'Orzhov Blades', 'A white-black deck that combines efficient creatures and removal spells.'),
(27, 'Kiln Fiend', 'A deck built around Kiln Fiend for explosive damage potential in a single turn.'),
(28, 'One Land Spy', 'A risky combo deck that seeks to win on the first turn with one land.'),
(29, 'Izzet Miracles', 'A blue-red deck utilizing powerful miracle spells for big plays.'),
(30, 'Dimir Terror', 'A blue-black control deck with efficient removal and disruption.'),
(31, 'Simic Frogs', 'A fun deck centered around frog creatures and Simic color synergies.'),
(32, 'MonoBlack Control', 'A black control deck with a focus on disruption and creature removal.'),
(33, 'Infect Reanimator', 'A deck that combines infect creatures with reanimation spells for fast kills.'),
(34, 'Tortex', 'A combo deck that uses Tortured Existence to loop creatures from the graveyard.'),
(35, 'Bogles', 'A hexproof-based deck with enchantments to make creatures very hard to deal with.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `players`
--

CREATE TABLE `players` (
  `player_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `years_playing` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `players`
--

INSERT INTO `players` (`player_id`, `name`, `age`, `years_playing`) VALUES
(1, 'Pau Vergés', 29, 5),
(2, 'Guillem Martinez', 34, 3),
(3, 'Miguel Ramos', 35, 9),
(4, 'Jonatan Diaz', 26, 7),
(5, 'Goyo Higa', 24, 5),
(6, 'Julio Schimbator', 20, 2),
(7, 'Suski', 32, 6),
(8, 'Nacho Prieto', 33, 9),
(9, 'Joan Rafols', 20, 5),
(10, 'Juan Sanchez', 35, 3),
(11, 'Frank Moyano', 32, 2),
(12, 'Jordi Carrasco', 38, 9),
(13, 'Juan Suárez', 33, 2),
(14, 'David Vallejo', 27, 8),
(15, 'Xavier Casellas', 24, 5),
(16, 'Ignasi Molinero', 36, 6),
(17, 'Viktor Alfredsson', 30, 6),
(18, 'Kevin Chen', 20, 4),
(19, 'Marco Gori', 30, 7),
(20, 'Christian Casanova', 26, 2),
(21, 'Pere Vias', 27, 4),
(22, 'Xavi Barranco', 25, 4),
(23, 'Omar G', 30, 1),
(24, 'Alex Mateu', 24, 9),
(25, 'Ken Pallicer', 36, 3),
(26, 'Jonathan Casanova', 39, 3),
(27, 'Roger Estalella', 37, 6),
(28, 'Francisco Seixas', 28, 6),
(29, 'Roger Estrada', 29, 8),
(30, 'Carlos DC', 29, 6),
(31, 'Daniel Rodriguez', 35, 5),
(32, 'Duelista Legendario', 31, 4),
(33, 'Alvaro Herrero', 24, 2),
(34, 'Oriol Saez', 37, 1),
(35, 'Oscar Aranega', 36, 2),
(36, 'Toni Andrés', 24, 4),
(37, 'Dani Belchi', 27, 5),
(38, 'Josue GR', 35, 1),
(39, 'Isaac Pradas', 38, 4),
(40, 'Pit FG', 20, 5),
(41, 'Alejandro JC', 36, 7),
(42, 'Xavi Navarro', 21, 2),
(43, 'Joan Bernabéu', 39, 3),
(44, 'Bichito Loco', 26, 3),
(45, 'Fran Gonzálvez', 29, 1),
(46, 'Guillermo Mariscal', 36, 1),
(47, 'Juan Luis Martos', 31, 4),
(48, 'Joan Ribera', 28, 9),
(49, 'Lluís Pujalte', 23, 5),
(50, 'Horacio Castillo', 26, 9),
(51, 'Jin You', 22, 2),
(52, 'Miki Redondo', 39, 6),
(53, 'Nahuel Quimaso', 36, 9),
(54, 'Lluís Josep Sinici Bargalló', 31, 7),
(55, 'Pol Campà', 21, 7),
(56, 'Marco Garrido', 26, 8),
(57, 'Jordi Vilella', 21, 7),
(58, 'Dmitry Abramov', 22, 9),
(59, 'Deko', 29, 9),
(60, 'Joel Barón', 36, 3),
(61, 'Francesc Torres', 24, 3),
(62, 'Jaume Tejero', 21, 4),
(63, 'Victor Rocha', 31, 8),
(64, 'Oscar Laguna', 22, 6),
(65, 'Miguel Zapata', 27, 7),
(66, 'Andreu Companys', 26, 4),
(67, 'Joan Artigas Rivas', 29, 3),
(68, 'Riotaire', 27, 4),
(69, 'Aleix Bertran Garcia', 32, 3),
(70, 'Oriol Asensio', 28, 6),
(71, 'Pau Regas', 22, 2),
(72, 'Roger Martin', 30, 5),
(73, 'Pablo R', 32, 7),
(74, 'Joan Frias', 20, 6),
(75, 'Cèlia Blanco', 28, 6),
(76, 'Henry Novoa', 33, 6),
(77, 'Carlos Malaraza', 22, 5),
(78, 'Miguel Malqui', 37, 8),
(79, 'Joan Rubies', 34, 7),
(80, 'Octavio I', 33, 6),
(81, 'Xavier Sanz', 32, 4),
(82, 'Bernat Sánchez', 34, 7),
(83, 'Guillem Lana', 34, 6),
(84, 'Davide Canevazzi', 30, 6),
(85, 'Gonzalo Porto', 36, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playertournamentarchetype`
--

CREATE TABLE `playertournamentarchetype` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `tournament_id` int(11) NOT NULL,
  `archetype_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `playertournamentarchetype`
--

INSERT INTO `playertournamentarchetype` (`id`, `player_id`, `tournament_id`, `archetype_id`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2),
(3, 3, 1, 3),
(4, 4, 1, 4),
(5, 5, 1, 2),
(6, 6, 1, 5),
(7, 7, 1, 1),
(8, 8, 1, 6),
(9, 9, 1, 7),
(10, 10, 1, 1),
(11, 11, 1, 8),
(12, 12, 1, 9),
(13, 13, 1, 10),
(14, 14, 1, 4),
(15, 15, 1, 11),
(16, 16, 1, 12),
(17, 17, 1, 13),
(18, 18, 1, 2),
(19, 19, 1, 1),
(20, 20, 1, 4),
(21, 21, 1, 4),
(22, 22, 1, 14),
(23, 23, 1, 1),
(24, 24, 1, 15),
(25, 25, 1, 16),
(26, 26, 1, 11),
(27, 27, 1, 17),
(28, 28, 1, 18),
(29, 29, 1, 19),
(30, 30, 1, 4),
(31, 31, 1, 19),
(32, 32, 1, 20),
(33, 33, 1, 19),
(34, 34, 1, 21),
(35, 35, 1, 1),
(36, 36, 1, 22),
(37, 37, 1, 17),
(38, 38, 1, 10),
(39, 39, 1, 2),
(40, 40, 1, 23),
(41, 41, 1, 24),
(42, 42, 1, 25),
(43, 43, 1, 5),
(44, 44, 1, 10),
(45, 45, 1, 11),
(46, 46, 1, 11),
(47, 47, 1, 9),
(48, 48, 1, 26),
(49, 49, 1, 19),
(50, 50, 1, 27),
(51, 51, 1, 28),
(52, 52, 1, 29),
(53, 53, 1, 17),
(54, 54, 1, 4),
(55, 55, 1, 11),
(56, 56, 1, 2),
(57, 57, 1, 9),
(58, 58, 1, 1),
(59, 59, 1, 30),
(60, 60, 1, 1),
(61, 61, 1, 2),
(62, 62, 1, 4),
(63, 63, 1, 11),
(64, 64, 1, 31),
(65, 65, 1, 23),
(66, 66, 1, 32),
(67, 67, 1, 7),
(68, 68, 1, 7),
(69, 69, 1, 24),
(70, 70, 1, 33),
(71, 71, 1, 19),
(72, 72, 1, 12),
(73, 73, 1, 34),
(74, 74, 1, 15),
(75, 75, 1, 35),
(76, 76, 1, 17),
(77, 77, 1, 30),
(78, 78, 1, 2),
(79, 79, 1, 3),
(80, 80, 1, 5),
(81, 81, 1, 10),
(82, 82, 1, 10),
(83, 83, 1, 15),
(84, 84, 1, 19),
(85, 85, 1, 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scores`
--

CREATE TABLE `scores` (
  `player_id` int(11) DEFAULT NULL,
  `tournament_id` int(11) DEFAULT NULL,
  `victories` int(11) DEFAULT 0,
  `defeats` int(11) DEFAULT 0,
  `draws` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `scores`
--

INSERT INTO `scores` (`player_id`, `tournament_id`, `victories`, `defeats`, `draws`) VALUES
(1, 1, 9, 1, 0),
(2, 1, 9, 1, 0),
(3, 1, 6, 1, 2),
(4, 1, 7, 2, 0),
(5, 1, 5, 3, 0),
(6, 1, 5, 3, 0),
(7, 1, 6, 2, 0),
(8, 1, 5, 3, 0),
(9, 1, 5, 2, 0),
(10, 1, 5, 2, 0),
(11, 1, 5, 2, 0),
(12, 1, 5, 2, 0),
(13, 1, 5, 2, 0),
(14, 1, 5, 2, 0),
(15, 1, 4, 1, 2),
(16, 1, 4, 1, 2),
(17, 1, 4, 1, 2),
(18, 1, 4, 2, 1),
(19, 1, 4, 2, 1),
(20, 1, 4, 2, 1),
(21, 1, 4, 3, 0),
(22, 1, 4, 3, 0),
(23, 1, 4, 3, 0),
(24, 1, 4, 3, 0),
(25, 1, 4, 3, 0),
(26, 1, 4, 3, 0),
(27, 1, 4, 3, 0),
(28, 1, 4, 3, 0),
(29, 1, 4, 3, 0),
(30, 1, 4, 3, 0),
(31, 1, 4, 3, 0),
(32, 1, 4, 3, 0),
(33, 1, 4, 3, 0),
(34, 1, 4, 3, 0),
(35, 1, 4, 3, 0),
(36, 1, 3, 3, 1),
(37, 1, 3, 3, 1),
(38, 1, 3, 4, 0),
(39, 1, 3, 4, 0),
(40, 1, 3, 4, 0),
(41, 1, 3, 4, 0),
(42, 1, 3, 4, 0),
(43, 1, 3, 4, 0),
(44, 1, 3, 4, 0),
(45, 1, 3, 4, 0),
(46, 1, 3, 4, 0),
(47, 1, 3, 4, 0),
(48, 1, 2, 2, 3),
(49, 1, 3, 4, 0),
(50, 1, 3, 4, 0),
(51, 1, 3, 4, 0),
(52, 1, 3, 4, 0),
(53, 1, 2, 3, 2),
(54, 1, 2, 3, 2),
(55, 1, 2, 3, 2),
(56, 1, 2, 2, 1),
(57, 1, 2, 3, 1),
(58, 1, 2, 2, 0),
(59, 1, 2, 5, 0),
(60, 1, 2, 5, 0),
(61, 1, 2, 5, 0),
(62, 1, 2, 2, 0),
(63, 1, 2, 5, 0),
(64, 1, 2, 3, 0),
(65, 1, 2, 3, 0),
(66, 1, 2, 3, 0),
(67, 1, 2, 3, 0),
(68, 1, 2, 3, 0),
(69, 1, 2, 3, 0),
(70, 1, 2, 5, 0),
(71, 1, 1, 2, 2),
(72, 1, 1, 4, 2),
(73, 1, 1, 5, 1),
(74, 1, 1, 6, 0),
(75, 1, 1, 4, 0),
(76, 1, 1, 2, 0),
(77, 1, 1, 3, 0),
(78, 1, 0, 1, 3),
(79, 1, 1, 4, 0),
(80, 1, 0, 2, 3),
(81, 1, 1, 5, 0),
(82, 1, 1, 4, 0),
(83, 1, 0, 2, 1),
(84, 1, 0, 2, 0),
(85, 1, 0, 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tournamentedition`
--

CREATE TABLE `tournamentedition` (
  `tournament_id` int(11) NOT NULL,
  `edition_name` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tournamentedition`
--

INSERT INTO `tournamentedition` (`tournament_id`, `edition_name`, `date`) VALUES
(1, '19º Torneo SuperPauper Septiembre', '2023-09-01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archetypes`
--
ALTER TABLE `archetypes`
  ADD PRIMARY KEY (`archetype_id`);

--
-- Indices de la tabla `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`);

--
-- Indices de la tabla `playertournamentarchetype`
--
ALTER TABLE `playertournamentarchetype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`),
  ADD KEY `tournament_id` (`tournament_id`),
  ADD KEY `archetype_id` (`archetype_id`);

--
-- Indices de la tabla `scores`
--
ALTER TABLE `scores`
  ADD KEY `player_id` (`player_id`),
  ADD KEY `tournament_id` (`tournament_id`);

--
-- Indices de la tabla `tournamentedition`
--
ALTER TABLE `tournamentedition`
  ADD PRIMARY KEY (`tournament_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archetypes`
--
ALTER TABLE `archetypes`
  MODIFY `archetype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `players`
--
ALTER TABLE `players`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de la tabla `playertournamentarchetype`
--
ALTER TABLE `playertournamentarchetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de la tabla `tournamentedition`
--
ALTER TABLE `tournamentedition`
  MODIFY `tournament_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `playertournamentarchetype`
--
ALTER TABLE `playertournamentarchetype`
  ADD CONSTRAINT `playertournamentarchetype_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playertournamentarchetype_ibfk_2` FOREIGN KEY (`tournament_id`) REFERENCES `tournamentedition` (`tournament_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playertournamentarchetype_ibfk_3` FOREIGN KEY (`archetype_id`) REFERENCES `archetypes` (`archetype_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`),
  ADD CONSTRAINT `scores_ibfk_2` FOREIGN KEY (`tournament_id`) REFERENCES `tournamentedition` (`tournament_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
