-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 19. Jan 2021 um 22:20
-- Server-Version: 10.4.16-MariaDB
-- PHP-Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `schooling`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `weighting` double NOT NULL,
  `rating` double NOT NULL,
  `subject_id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `grades`
--

INSERT INTO `grades` (`id`, `title`, `weighting`, `rating`, `subject_id`, `username`) VALUES
(1, 'Projekt', 50, 5.5, 1, 'ardiandemiri'),
(2, 'M133 Theorie', 50, 5, 1, 'ardiandemiri');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `semesters`
--

CREATE TABLE `semesters` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `username` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `semesters`
--

INSERT INTO `semesters` (`id`, `title`, `username`) VALUES
(1, '1.1', 'ardiandemiri'),
(2, '1.2', 'ardiandemiri'),
(4, '2.1', 'ardiandemiri');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `weighting` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `username` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `subjects`
--

INSERT INTO `subjects` (`id`, `title`, `weighting`, `semester_id`, `username`) VALUES
(1, 'M133', NULL, 1, 'ardiandemiri'),
(2, 'Mathematik', NULL, 4, 'ardiandemiri');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `todos`
--

CREATE TABLE `todos` (
  `id` int(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `checked` tinyint(4) NOT NULL DEFAULT 0,
  `username` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `todos`
--

INSERT INTO `todos` (`id`, `title`, `date_time`, `checked`, `username`) VALUES
(1, 'M133 Projekt', '2021-01-19 00:36:42', 0, 'ardiandemiri'),
(2, 'Dokumentation', '2021-01-19 00:36:49', 0, 'ardiandemiri'),
(3, 'test', '2021-01-19 18:56:00', 0, 'ardiandemiri');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `IsAdmin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `create_datetime`, `IsAdmin`) VALUES
(1, 'ardiandemiri', 'ardian@gmail.com', 'ardiandemiri', '2021-01-19 01:30:29', 1),
(3, 'ardi', 'ardi@gmail.com', 'ardi', '2021-01-19 22:06:16', 0);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
