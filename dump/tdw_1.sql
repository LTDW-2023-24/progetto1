-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Mag 29, 2024 alle 09:59
-- Versione del server: 5.7.39
-- Versione PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tdw_1`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `content`
--

CREATE TABLE `content` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `subtitle` varchar(100) DEFAULT NULL,
  `slogan` varchar(100) DEFAULT NULL,
  `b_text` varchar(20) DEFAULT NULL,
  `b_link` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `body` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `content`
--

INSERT INTO `content` (`id`, `username`, `title`, `subtitle`, `slogan`, `b_text`, `b_link`, `image`, `body`) VALUES
(1, 'pippo', 'The UI pippo that you\'ll actually love to use.', 'We created an easy-to-use set of components for building startup sites and apps.', 'Enable the future of tech', 'Get it now', 'https://www.disim.univaq.it', 'http://localhost/tdw/2023-24/Landkit/dist/assets/img/screenshots/desktop/dashkit-alt.jpg', NULL),
(2, 'admin', 'dasjkhdsa kjdash kjdsah ', 'jhkdas khdask jhadskjh dkjh daskjh dakjh dakjh dakj ', 'jk kjhdas kjh daskj dsa', NULL, NULL, NULL, NULL),
(3, 'admin', 'strtoupper', 'Nota: i caratteri \'alfabetici\' sono determinati in base alle impostazioni locali.', NULL, NULL, NULL, NULL, NULL),
(4, 'pippo', 'sjkhskj', 'skjsh kskjh skhj ksah ksajhks ajhsa kjah ', NULL, NULL, NULL, NULL, NULL),
(5, 'pippo', 'a', 'a', 'a', '', '', '', 'a'),
(6, 'admin', '1', '1', '1', '', '', '', '1'),
(7, 'pippo', 'w', 'w', 'w', '', '', '', 'w'),
(8, 'admin', 's', 's', '', '', '', '', ''),
(9, 'admin', 's', 's', '', '', '', '', ''),
(10, 'admin', 's', 's', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `role`
--

CREATE TABLE `role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `descrizione` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `role`
--

INSERT INTO `role` (`id`, `name`, `descrizione`) VALUES
(1, 'Administrator', 'Amministratore generale'),
(2, 'Content Manager', 'Utenza per la gestioen dei contenuti');

-- --------------------------------------------------------

--
-- Struttura della tabella `role_service`
--

CREATE TABLE `role_service` (
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `service_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `role_service`
--

INSERT INTO `role_service` (`role_id`, `service_id`) VALUES
(2, 2),
(2, 1),
(1, 1),
(2, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `service`
--

CREATE TABLE `service` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `script` varchar(255) DEFAULT NULL,
  `default` varchar(1) NOT NULL,
  `description` text,
  `permission` varchar(1) NOT NULL,
  `entity` varchar(100) NOT NULL,
  `field` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `service`
--

INSERT INTO `service` (`id`, `name`, `script`, `default`, `description`, `permission`, `entity`, `field`) VALUES
(1, 'Dashboard', 'dashboard.php', '', NULL, '', '', ''),
(2, 'Aggiungi Contenuto', 'content-add2.php', '', NULL, '', '', ''),
(3, 'Logout', 'logout.php', '*', NULL, '', '', ''),
(4, 'Modifica Contenuto', 'content-edit.php', '', NULL, '*', 'content', 'id');

-- --------------------------------------------------------

--
-- Struttura della tabella `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `user`
--

INSERT INTO `user` (`username`, `password`, `name`, `surname`, `email`) VALUES
('admin', '43114b230055bf2e6a6b914bc5efb997', 'Amministratore', '', 'admin@nasa.com'),
('pippo', '84b52fdf97e7f3dd46de6824169e0bea', 'Pippo', 'Baudo', 'pippo.baudo@gmail.com');

-- --------------------------------------------------------

--
-- Struttura della tabella `user_role`
--

CREATE TABLE `user_role` (
  `username` varchar(50) DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `user_role`
--

INSERT INTO `user_role` (`username`, `role_id`) VALUES
('pippo', 2);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `role`
--
ALTER TABLE `role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `service`
--
ALTER TABLE `service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
