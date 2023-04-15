-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 04:59 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be18_cr6_bigeventsjaimecoca`
--
CREATE DATABASE IF NOT EXISTS `be18_cr6_bigeventsjaimecoca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be18_cr6_bigeventsjaimecoca`;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230414135656', '2023-04-14 16:01:35', 39),
('DoctrineMigrations\\Version20230414145638', '2023-04-14 16:56:43', 30),
('DoctrineMigrations\\Version20230414145921', '2023-04-14 16:59:31', 30);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `description`, `image`, `capacity`, `email`, `phone_number`, `url`, `type`, `address`, `date`) VALUES
(4, 'Chaplin, 1939', 'Charlie Chaplin steht am Höhepunkt seiner Karriere als Stummfilmstar, als er am Drehbuch zu seinem Meisterwerk \"Der große Diktator\" zu arbeiten beginnt.', 'OIP-4-643a803b025a3.jpg', 1500, 'event-manager@gmail.com', 630447895, 'https://events.at/calendar/date/10/1?&event_type[0]=theater', 'Theater', 'Wiedner Hauptstraße 60B 1040 Wien', '2023-04-18 18:00:00'),
(5, 'Die Dreigroschenoper', 'Ein Stück mit Musik in einem Vorspiel und acht Bildern nach John Gays \"The Beggar\'s Opera\" von Bertolt Brecht (Text) und Kurt Weill (Musik) unter Mitarbeit von Elisabeth Hauptmann.', 'OIP-1-643a8731c5636.jpg', 3000, 'event-manager@gmail.com', 650900524, 'https://events.at/calendar/date/10/1?event_type[0]=theater&date=2023-4-18#calendarContainer', 'Music', 'Rotenturmstraße 20 1010 Wien - Innere Stadt', '2023-04-19 18:00:00'),
(6, 'Murder by Misadventure', 'Edward Taylor’s ingenious play updates the classic thriller genre while paying homage to the great stage mysteries of the past. Murder by Misadventure is a cat-and-mouse thriller filled with enough twists and turns to keep audiences guessing right up to the final curtain.', 'OIP-5-643a87f886d97.jpg', 5000, 'event-manager@gmail.com', 650669785, 'https://events.at/event/murder-by-misadventure', 'Theater', 'Josefsgasse 12 1080 Wien', '2023-05-12 19:45:00'),
(7, 'Rebecca - Das Musical', 'Die beiden erfolgreichsten deutschsprachigen Musicalautoren Michael Kunze…', 'OIP-6-643a884f17183.jpg', 8000, 'event-manager@gmail.com', 685744589, 'https://events.at/event/rebecca-das-musical', 'Music', 'Wallgasse 18-20 1060 Wien', '2023-06-18 17:00:00'),
(8, 'Idomeneo', 'Idomeneo, König von Kreta, kehrt nach dem trojanischen Krieg in seine Heimat zurück. Sein Schiff droht im heftigen Sturm vor der Küste zu kentern. Um sich zu retten und den Meeresgott Neptun zu besänftigen, schwört er, das erste Lebewesen zu opfern, das er am Strand trifft. Der Sturm klingt ab…', 'Idomeneo-tickets-23-m-643a88f440f30.jpg', 12500, 'event-manager@gmail.com', 630558447, 'https://events.at/event/idomeneo', 'Music', 'Schlosstheater Schönbrunn', '2023-05-12 20:00:00'),
(9, 'FAC - FC Liefering', 'Der FAC startet in die neue Saison.\r\n\r\nIn der Hopfengasse 8 werden sich die Blau-Weißen mit einer Vielzahl an hochkarätigen Gegner messen.', 'imager-643ab7971c6cd.jpg', 25000, 'event-manager@gmail.com', 650558745, 'https://www.wien-ticket.at/de/ticket/89001/fac-wien-saison-202223-fac-platz-wien', 'Sport', 'FAC Platz, Wien', '2023-04-21 16:00:00'),
(10, 'A1 CEV Beach Volleyball Europameisterschaften Wien 2023', 'Nach dem erfolgreichen Gastspiel am Heumarkt finden die A1 CEV Beach Volleyball Europameisterschaften 2023 erstmalig vor großer Kulisse auf der Wiener Donauinsel statt! Die europäische Beach-Elite trifft sich vom 2. bis 6. August also erneut am Ort legendärer Events, wie der Weltmeisterschaften 2017 und der Beach Majors Turnieren 2018 und 2019.\r\n\r\nSpektakuläre Ballwechsel und Gänsehautstimmung sind garantiert, wenn sich die 32 besten europäischen Damen- und Herren-Teams in der Red Bull Beach Arena um den heißbegehrten Titel matchen.\r\n\r\nWie im letzten Jahr wird es von Donnerstag bis Samstag täglich unterschiedliche Sessions geben, während am Mittwoch und Sonntag nur eine Session stattfinden wird. Die Tickets sind nur für die auf dem Ticket angegebene Session gültig.', 'Download-3-643abaaaf31af.jpg', 10000, 'event-manager@gmail.com', 2147483647, 'https://www.wien-ticket.at/de/ticket/96164/a1-cev-beach-volleyball-em-2023-donauinsel-donauinsel-wien', 'Sport', 'Donauinsel, Wien', '2018-05-19 13:30:00'),
(12, 'Die Frau ohne schatten', 'Es ist eine komplexe, aus der Märchenwelt entstammende Erzählung, die das kongeniale Paar Richard Strauss und Hugo von Hofmannsthal in der Frau ohne Schatten entwickelte: ein vielschichtiges thematisches Gewebe, das sich mit dem Mitleid als menschliche Wesenskategorie auseinandersetzt. Regisseur Vincent Huguet verortet das 1919 an der Wiener Staatsoper uraufgeführte Riesenwerk im Ersten Weltkrieg und schlägt so die Brücke zwischen der Entstehungszeit der Oper und der damaligen Weltenrealität. Dirigent der Wiederaufnahme ist – wie bei der Premiere 2019 – Christian Thielemann.', 'csm-Die-Frau-ohne-Schatten-120262-fc7c5b5f78-643ab9c02bbe6.jpg', 4500, 'event-manager@gmail.com', 680558412, 'https://www.wiener-staatsoper.at/die-neue-saison/wiederaufnahmen/', 'Opera', 'A Opernring 2, 1010 Wien', '2023-10-18 17:00:00'),
(13, 'Creed III', 'Seit er die Welt des Boxsports dominiert, entwickeln sich sowohl Adonis Creeds Karriere als auch sein Familienleben glänzend. Doch dann taucht Adonis’ Jugendfreund Damian (Jonathan Majors), ein ehemaliges Box-Wunderkind, nach einer langen Haftstrafe wieder auf. Damian brennt darauf, sein Können im Ring unter Beweis zu stellen. Das Aufeinandertreffen der ehemaligen Freunde ist mehr als nur ein Kampf. Um die Angelegenheit ein für alle Mal zu regeln, muss Adonis seine Zukunft aufs Spiel setzen und sich Damian stellen – einem Fighter, der nichts zu verlieren hat.', 'vJU3rXSP9hwUuLeq8IpfsJShLOk-643aba774f67a.jpg', 800, 'event-manager@gmail.com', 660555422, 'https://www.film.at/creed-iii', 'Movie', 'Wiedner Hauptstraße 60B 1040 Wien', '2023-05-19 18:00:00'),
(14, 'Air', 'Im Bunker beaufsichtigen zwei Männer (Norman Reedus und Djimon Hounsou) die in einen Kälteschlaf versetzten Männer und Frauen, die zu gegebener Zeit eine neue Gesellschaft aufbauen sollen. Dabei müssen sie jedoch darum kämpfen, an diesem letzten lebensfähigen, aber kargen Ort ihre eigene mentale Gesundheit zu bewahren.', 'a06ddfb79c38a03131c7b2a3292d14fd-jpeg-643abb009ae23.jpg', 900, 'event-manager@gmail.com', 660555889, 'https://www.film.at/air', 'Movie', 'Wiedner Hauptstraße 60B 1040 Wien', '2023-06-20 21:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
