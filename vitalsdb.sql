-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 21. Jun 2017 um 18:55
-- Server-Version: 10.1.21-MariaDB
-- PHP-Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `vitalsdb`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bedarf`
--

CREATE TABLE `bedarf` (
  `Personentyp` varchar(9) NOT NULL,
  `A` decimal(6,2) DEFAULT NULL,
  `B1` decimal(6,2) DEFAULT NULL,
  `B2` decimal(6,2) DEFAULT NULL,
  `B3` decimal(7,2) DEFAULT NULL,
  `B5` decimal(6,2) DEFAULT NULL,
  `B6` decimal(6,2) DEFAULT NULL,
  `B7` decimal(4,2) DEFAULT NULL,
  `B9` decimal(5,2) DEFAULT NULL,
  `C` decimal(5,2) DEFAULT NULL,
  `E` decimal(6,2) DEFAULT NULL,
  `K` decimal(4,2) DEFAULT NULL,
  `Calcium` decimal(6,2) DEFAULT NULL,
  `Kalium` decimal(6,2) DEFAULT NULL,
  `Magnesium` decimal(5,2) DEFAULT NULL,
  `Phosphor` decimal(5,2) DEFAULT NULL,
  `Eisen` decimal(4,2) DEFAULT NULL,
  `Kupfer` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Daten für Tabelle `bedarf`
--

INSERT INTO `bedarf` (`Personentyp`, `A`, `B1`, `B2`, `B3`, `B5`, `B6`, `B7`, `B9`, `C`, `E`, `K`, `Calcium`, `Kalium`, `Magnesium`, `Phosphor`, `Eisen`, `Kupfer`) VALUES
('Frau', '800.00', '1000.00', '1100.00', '13000.00', '6000.00', '1200.00', '45.00', '300.00', '95.00', '1200.00', '60.00', '1000.00', '4000.00', '310.00', '700.00', '15.00', '1200.00'),
('Mann', '1000.00', '1300.00', '1400.00', '16000.00', '6000.00', '1500.00', '45.00', '300.00', '110.00', '1500.00', '70.00', '1000.00', '4000.00', '400.00', '700.00', '10.00', '1200.00'),
('Schwanger', '1100.00', '1200.00', '1300.00', '14000.00', '6000.00', '1900.00', '45.00', '550.00', '105.00', '1300.00', '60.00', '1000.00', '4000.00', '310.00', '800.00', '30.00', '1200.00'),
('Stillend', '1500.00', '1300.00', '1400.00', '16000.00', '6000.00', '1900.00', '45.00', '450.00', '125.00', '1700.00', '60.00', '1000.00', '4400.00', '390.00', '900.00', '20.00', '1200.00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fruechte`
--

CREATE TABLE `fruechte` (
  `Fruchtname` varchar(255) NOT NULL,
  `A` decimal(6,2) DEFAULT NULL,
  `B1` decimal(6,2) DEFAULT NULL,
  `B2` decimal(6,2) DEFAULT NULL,
  `B3` decimal(6,2) DEFAULT NULL,
  `B5` decimal(6,2) DEFAULT NULL,
  `B6` decimal(6,2) DEFAULT NULL,
  `B7` decimal(6,2) DEFAULT NULL,
  `B9` decimal(6,2) DEFAULT NULL,
  `C` decimal(6,2) DEFAULT NULL,
  `E` decimal(6,2) DEFAULT NULL,
  `K` decimal(5,2) DEFAULT NULL,
  `Calcium` decimal(5,2) DEFAULT NULL,
  `Kalium` decimal(5,2) DEFAULT NULL,
  `Magnesium` decimal(5,2) DEFAULT NULL,
  `Phosphor` decimal(5,2) DEFAULT NULL,
  `Eisen` decimal(3,2) DEFAULT NULL,
  `Kupfer` decimal(5,2) DEFAULT NULL,
  `Fruchtzucker` decimal(3,2) DEFAULT NULL,
  `Traubenzucker` decimal(3,2) DEFAULT NULL,
  `Zuckeralkohole` decimal(3,2) DEFAULT NULL,
  `Vertraeglichkeit` decimal(4,2) DEFAULT NULL,
  `Fruchttyp` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Daten für Tabelle `fruechte`
--

INSERT INTO `fruechte` (`Fruchtname`, `A`, `B1`, `B2`, `B3`, `B5`, `B6`, `B7`, `B9`, `C`, `E`, `K`, `Calcium`, `Kalium`, `Magnesium`, `Phosphor`, `Eisen`, `Kupfer`, `Fruchtzucker`, `Traubenzucker`, `Zuckeralkohole`, `Vertraeglichkeit`, `Fruchttyp`) VALUES
('Apfel', '8.00', '30.00', '30.00', '200.00', '100.00', '50.00', '1.00', '7.00', '12.00', '490.00', '4.00', '7.00', '144.00', '6.00', '11.00', '0.48', '100.00', '5.74', '2.04', '0.51', '6.17', 'o'),
('Aprikose', '267.00', '40.00', '53.00', '770.00', '290.00', '70.00', '1.00', '4.00', '9.40', '500.00', '3.00', '16.00', '280.00', '9.00', '21.00', '0.65', '134.00', '0.87', '1.73', '0.80', '0.73', 'o'),
('Aubergine', '7.00', '38.00', '44.00', '600.00', '230.00', '80.00', '0.80', '31.00', '5.00', '30.00', '5.00', '13.00', '224.00', '11.00', '21.00', '0.42', '90.00', '1.12', '1.12', '0.00', '0.71', 'g'),
('Birne', '3.00', '30.00', '30.00', '200.00', '62.00', '15.00', '0.10', '14.00', '5.00', '430.00', '0.00', '9.00', '125.00', '7.00', '15.00', '0.26', '90.00', '6.75', '1.67', '2.17', '10.13', 'o'),
('Blaubeere', '6.00', '20.00', '20.00', '400.00', '160.00', '60.00', '1.00', '6.00', '30.00', '2069.00', '10.00', '13.00', '73.00', '2.00', '13.00', '0.74', '97.00', '4.07', '3.00', '0.01', '2.40', 'o'),
('Blumenkohl', '2.00', '110.00', '100.00', '600.00', '1010.00', '200.00', '1.00', '0.00', '73.00', '89.00', '208.00', '20.00', '328.00', '17.00', '54.00', '0.63', '42.00', '0.91', '1.01', '0.02', '0.61', 'g'),
('Bohne', '56.00', '81.00', '120.00', '570.00', '500.00', '280.00', '7.00', '44.00', '20.00', '132.00', '22.00', '57.00', '248.00', '25.00', '38.00', '0.83', '84.00', '0.56', '0.43', '0.10', '0.90', 'g'),
('Brokkoli', '143.00', '98.00', '178.00', '1000.00', '1290.00', '170.00', '0.50', '90.00', '115.00', '621.00', '121.00', '105.00', '373.00', '24.00', '82.00', '1.30', '126.00', '0.90', '1.00', '0.00', '0.59', 'g'),
('Brombeere', '45.00', '30.00', '40.00', '400.00', '220.00', '50.00', '0.40', '34.00', '17.00', '720.00', '10.00', '45.00', '190.00', '30.00', '30.00', '0.90', '108.00', '1.35', '1.28', '0.00', '0.81', 'o'),
('Erbse', '72.00', '300.00', '160.00', '2380.00', '720.00', '160.00', '5.00', '33.00', '25.00', '257.00', '30.00', '24.00', '304.00', '33.00', '108.00', '1.84', '380.00', '0.25', '0.37', '0.00', '0.55', 'g'),
('Erdbeere', '8.00', '30.00', '50.00', '500.00', '300.00', '60.00', '4.00', '16.00', '65.00', '120.00', '13.00', '25.00', '145.00', '15.00', '25.00', '0.96', '120.00', '2.28', '2.16', '0.06', '1.09', 'o'),
('Fenchel', '783.00', '230.00', '110.00', '200.00', '250.00', '100.00', '2.00', '100.00', '93.00', '6000.00', '240.00', '109.00', '494.00', '49.00', '51.00', '2.70', '60.00', '1.14', '1.33', '0.00', '0.53', 'g'),
('Grünkohl', '862.00', '100.00', '250.00', '2100.00', '1000.00', '250.00', '0.50', '60.00', '105.00', '1700.00', '250.00', '212.00', '490.00', '31.00', '87.00', '1.90', '56.00', '0.99', '0.81', '0.00', '0.88', 'g'),
('Gurke', '66.00', '20.00', '30.00', '200.00', '240.00', '35.00', '0.90', '20.00', '8.00', '63.00', '12.00', '15.00', '141.00', '8.00', '23.00', '0.50', '90.00', '0.88', '0.79', '0.05', '0.83', 'g'),
('Himbeeren', '3.00', '25.00', '50.00', '300.00', '300.00', '75.00', '2.00', '16.00', '25.00', '912.00', '10.00', '40.00', '170.00', '30.00', '45.00', '1.00', '140.00', '2.04', '1.77', '0.01', '1.13', 'o'),
('Karotte', '1574.00', '69.00', '53.00', '580.00', '270.00', '93.00', '5.00', '12.00', '0.00', '465.00', '47.00', '41.00', '290.00', '18.00', '35.00', '2.10', '52.00', '1.32', '1.63', '0.17', '0.62', 'g'),
('Kirsche', '6.00', '39.00', '42.00', '270.00', '190.00', '45.00', '0.00', '27.00', '15.00', '130.00', '2.00', '17.00', '235.00', '13.00', '24.00', '0.35', '100.00', '5.40', '6.09', '1.61', '3.13', 'o'),
('Kohlrabi', '33.00', '48.00', '46.00', '1800.00', '100.00', '120.00', '2.00', '25.00', '64.00', '400.00', '7.00', '68.00', '380.00', '43.00', '50.00', '0.90', '120.00', '1.11', '1.29', '0.00', '0.53', 'g'),
('Kürbis', '233.00', '90.00', '60.00', '1600.00', '400.00', '150.00', '0.40', '17.00', '14.00', '100.00', '5.00', '27.00', '351.00', '23.00', '43.00', '0.77', '100.00', '1.56', '1.33', '0.05', '1.06', 'g'),
('Mais', '185.00', '360.00', '200.00', '1500.00', '650.00', '400.00', '6.00', '26.00', '0.00', '2014.00', '40.00', '15.00', '330.00', '120.00', '256.00', '1.50', '200.00', '0.07', '0.07', '0.00', '0.68', 'g'),
('Paprika', '354.00', '40.00', '120.00', '1600.00', '270.00', '450.00', '3.00', '50.00', '140.00', '2900.00', '5.00', '10.00', '260.00', '14.00', '30.00', '0.55', '80.00', '3.74', '2.34', '0.00', '2.63', 'g'),
('Pflaume', '61.00', '70.00', '45.00', '440.00', '180.00', '45.00', '0.10', '2.00', '5.00', '862.00', '10.00', '14.00', '220.00', '10.00', '18.00', '0.44', '95.00', '2.02', '3.38', '1.42', '1.21', 'o'),
('Porree', '167.00', '86.00', '68.00', '530.00', '140.00', '250.00', '1.00', '56.00', '24.00', '529.00', '200.00', '87.00', '235.00', '18.00', '46.00', '1.00', '55.00', '1.16', '0.90', '0.10', '1.09', 'g'),
('Quitte', '6.00', '30.00', '30.00', '200.00', '80.00', '40.00', '0.10', '8.00', '13.00', '400.00', '0.00', '10.00', '200.00', '8.00', '20.00', '0.60', '130.00', '4.29', '2.67', '0.00', '2.99', 'o'),
('Rhabarber', '12.00', '30.00', '30.00', '250.00', '85.00', '30.00', '1.00', '3.00', '10.00', '250.00', '11.00', '52.00', '270.00', '13.00', '24.00', '0.50', '50.00', '0.39', '0.41', '0.00', '0.64', 'g'),
('Tomate', '84.00', '57.00', '35.00', '530.00', '310.00', '100.00', '4.00', '39.00', '24.54', '813.00', '9.00', '14.00', '242.00', '13.00', '26.00', '0.50', '60.00', '1.30', '1.10', '0.01', '0.95', '0'),
('Trauben', '4.00', '45.00', '25.00', '230.00', '65.00', '75.00', '1.00', '5.00', '4.00', '666.00', '10.00', '18.00', '190.00', '9.00', '20.00', '0.50', '83.00', '7.63', '7.33', '0.20', '2.99', '0'),
('Wassermelone', '41.00', '45.00', '50.00', '150.00', '1.00', '70.00', '4.00', '5.00', '6.00', '70.00', '0.00', '7.00', '109.00', '9.00', '9.00', '0.23', '28.00', '3.92', '2.02', '0.00', '3.17', '0'),
('Zucchini', '58.00', '70.00', '90.00', '400.00', '80.00', '89.00', '2.00', '48.00', '16.00', '500.00', '5.00', '30.00', '200.00', '22.00', '23.00', '1.50', '80.00', '0.70', '0.59', '0.02', '0.81', '0');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `saison`
--

CREATE TABLE `saison` (
  `Frucht` varchar(12) DEFAULT NULL,
  `MonatID` int(2) DEFAULT NULL,
  `ID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Daten für Tabelle `saison`
--

INSERT INTO `saison` (`Frucht`, `MonatID`, `ID`) VALUES
('Apfel', 8, 1),
('Apfel', 9, 2),
('Apfel', 10, 3),
('Apfel', 11, 4),
('Aprikose', 7, 5),
('Aprikose', 8, 6),
('Aubergine', 7, 7),
('Aubergine', 8, 8),
('Aubergine', 9, 9),
('Aubergine', 10, 10),
('Birne', 9, 11),
('Birne', 10, 12),
('Birne', 11, 13),
('Blaubeere', 6, 14),
('Blaubeere', 7, 15),
('Blaubeere', 8, 16),
('Blaubeere', 9, 17),
('Blumenkohl', 5, 18),
('Blumenkohl', 6, 19),
('Blumenkohl', 7, 20),
('Blumenkohl', 8, 21),
('Blumenkohl', 9, 22),
('Blumenkohl', 10, 23),
('Bohne', 7, 24),
('Bohne', 8, 25),
('Bohne', 9, 26),
('Bohne', 10, 27),
('Brokkoli', 6, 28),
('Brokkoli', 7, 29),
('Brokkoli', 8, 30),
('Brokkoli', 9, 31),
('Brokkoli', 10, 32),
('Brombeere', 7, 33),
('Brombeere', 8, 34),
('Brombeere', 9, 35),
('Erdbeere', 5, 36),
('Erdbeere', 6, 37),
('Erdbeere', 7, 38),
('Erbse', 6, 39),
('Erbse', 7, 40),
('Erbse', 8, 41),
('Fenchel', 6, 42),
('Fenchel', 7, 43),
('Fenchel', 8, 44),
('Fenchel', 9, 45),
('Fenchel', 10, 46),
('Fenchel', 11, 47),
('Grünkohl', 1, 48),
('Grünkohl', 2, 49),
('Grünkohl', 11, 50),
('Grünkohl', 12, 51),
('Gurke', 6, 52),
('Gurke', 7, 53),
('Gurke', 8, 54),
('Gurke', 9, 55),
('Gurke', 10, 56),
('Himbeeren', 6, 57),
('Himbeeren', 7, 58),
('Himbeeren', 8, 59),
('Karotte', 6, 65),
('Karotte', 7, 66),
('Karotte', 8, 67),
('Karotte', 9, 68),
('Karotte', 10, 69),
('Kirsche', 6, 70),
('Kirsche', 7, 71),
('Kirsche', 8, 72),
('Kohlrabi', 5, 73),
('Kohlrabi', 6, 74),
('Kohlrabi', 7, 75),
('Kohlrabi', 8, 76),
('Kohlrabi', 9, 77),
('Kohlrabi', 10, 78),
('Kürbis', 8, 79),
('Kürbis', 9, 80),
('Kürbis', 10, 81),
('Kürbis', 11, 82),
('Mais', 8, 83),
('Mais', 9, 84),
('Mais', 10, 85),
('Paprika', 7, 86),
('Paprika', 8, 87),
('Paprika', 9, 88),
('Paprika', 10, 89),
('Pflaume', 7, 90),
('Pflaume', 8, 91),
('Pflaume', 9, 92),
('Porree', 1, 93),
('Porree', 2, 94),
('Porree', 3, 95),
('Porree', 4, 96),
('Porree', 5, 97),
('Porree', 6, 98),
('Porree', 7, 99),
('Porree', 8, 100),
('Porree', 9, 101),
('Porree', 10, 102),
('Porree', 11, 103),
('Porree', 12, 104),
('Quitte', 9, 105),
('Quitte', 10, 106),
('Quitte', 11, 107),
('Rhabarber', 4, 108),
('Rhabarber', 5, 109),
('Rhabarber', 6, 110),
('Tomate', 7, 111),
('Tomate', 8, 112),
('Tomate', 9, 113),
('Tomate', 10, 114),
('Trauben', 9, 115),
('Trauben', 10, 116),
('Wassermelone', 8, 117),
('Wassermelone', 9, 118),
('Zucchini', 6, 119),
('Zucchini', 7, 120),
('Zucchini', 8, 121),
('Zucchini', 9, 122),
('Zucchini', 10, 123);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `zusatzinfo`
--

CREATE TABLE `zusatzinfo` (
  `Inhaltsstoff` varchar(9) NOT NULL,
  `Einheit` varchar(2) DEFAULT NULL,
  `Kategorie` varchar(30) DEFAULT NULL,
  `Infotext` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Daten für Tabelle `zusatzinfo`
--

INSERT INTO `zusatzinfo` (`Inhaltsstoff`, `Einheit`, `Kategorie`, `Infotext`) VALUES
('A', 'µg', 'Vitamin', 'Vitamin A (Retinol) findet man in der Natur in zwei Formen: als tierisches Retinol und in Form von pflanzlichen Provitaminen, wie zum Beispiel das Provitamin A, auch Beta-Carotin genannt, welches erst im Körper zu Retinol umgewandelt wird. Eine Aufgabe von Vitamin A ist es das Immunsystem zu stärken, indem es die Produktion von weißen Blutkörperchen unterstützt. Des Weiteren benötigt unser Körper dieses Vitamin für die Zellteilung und Wachstumsprozesse, sowie für das Erhalten des Sehvermögens (Hell-Dunkel-Sehen). <br> <br>\nMögliche Anzeichen für einen Vitamin A-Mangel betreffen vor allem unsere Augen. Typisch sind:\n<ul>\n<li>Nachtblindheit</li>\n<li>Verminderte Sehfähigkeit</li>\n<li>Infektionsanfälligkeit, besonders im Nasen- und Rachenraum</li>\n</ul>'),
('B1', 'µg', 'Vitamin', 'Vitamin B1, in der Fachsprache Thiamin genannt, ist ein wasserlösliches Vitamin. Der Körper benötigt es, um die Nährstoffe, speziell die Kohlenhydrate, aus unserer Nahrung zu verstoffwechseln und in Energie umzuwandeln. Zudem sorgt Vitamin B1 für eine normale Funktion des Herzens, sowie des Nervensystems. Der Körper kann Vitamin B1 nicht längerfristig speichern – maximal 10 Tage. Daher ist eine ausreichende Zufuhr an Vitamin B1 bei Stress und in Zeiten, in denen wir geistig stark gefordert sind, essentiell. <br><br>\nBei einem Vitamin B1-Mangel sind häufig folgende Symptome anzutreffen:\n<ul>\n<li>schnelles Ermüden</li>\n<li>Gereiztheit</li>\n<li>Schlechtes Konzentrationsvermögen</li>\n</ul>'),
('B2', 'µg', 'Vitamin', 'Vitamin B2 spielt bei zahlreichen Stoffwechselvorgängen eine Rolle. Wandelt der Körper zum Beispiel Traubenzucker oder Fettsäuren in Energie um, benötigt er dafür unter anderem Vitamin B2, was auch als Riboflavin oder Lactoflavin bezeichnet wird. Übrigens bildet Vitamin B2 mit dem Mineralstoff Eisen ein starkes Team zur Produktion roter Blutkörperchen. Vitamin B2 wirkt zudem antioxidativ. Es neutralisiert schädliche, freie Radikale im Körper und schützt dadurch die Zellen. Auch unsere Augen profitieren von ausreichend Vitamin B2, da es als vorbeugend gegenüber Augenerkrankungen, wie dem Grauen Star erwiesen hat.<br><br>\nEin Mangel an Vitamin B2 kann zum Beispiel durch eine streng vegetarische oder vegane Ernährung verursacht werden. Die Symptome:\n<ul>\n<li>Schleimhautentzündung</li>\n<li>Trockene und eingerissene Mundwinkel</li>\n<li>Augenentzündungen</li>\n</ul>'),
('B3', 'µg', 'Vitamin', 'Vitamin B3, das auch als Niacin bekannt ist, gehört zur Gruppe der wasserlöslichen B-Vitamine. Wissenschaftliche Untersuchungen haben ergeben, dass Vitamin B3 einen positiven Einfluss auf den Fettstoffwechsel hat. Des übrigen hat Vitamin B3 einen regulierenden Effekt auf den Feuchtigkeitsgehalt der Haut und ist für das Nervensystem besonders wichtig, denn es ist am Aufbau verschiedener Neurotransmitter (Botenstoffe des Nervensystems) beteiligt. <br> <br> \nEin leichter Vitamin B3-Mangel fällt vermutlich erst mal nicht sonderlich auf bzw. macht sich eher in unspezifischen Symptomen bemerkbar, so wie:\n<ul>\n<li>Durchfall</li>\n<li>Depressionen</li>\n<li>raue, trockene Haut</li>\n <li>Konzentrationsstörungen</li>\n</ul>'),
('B5', 'µg', 'Vitamin', 'Vitamin B5 (Pantothensäure) gilt als echtes Anti-Stress-Vitamin. Schließlich ist es von Bedeutung für die Produktion von Hormonen, die den körperlichen Stress steuern. Damit ist es unerlässlich für die gesunde Nervenaktivität. Zudem ist Vitamin B5 an der Herstellung entzündungshemmender Stoffe im Körper beteiligt. Es eignet sich für die Therapie von Schleimhautentzündungen, wie es bei Schnupfen und Halsschmerzen der Fall ist und spielt eine große Rolle bei der Wundheilung. Zudem fördert es auch einen gesunden Haarwuchs und regt die Darmaktivität an. <br> <br>\nEin Mangel an Vitamin B5 kann sich durch recht unspezifische Beschwerden äußern. Dazu zählen etwa:\n<ul>\n<li>Müdigkeit</li>\n<li>Kopfweh (häufig in Verbindung mit niedrigen Blutzuckerwerten)</li>\n<li>starkes Herzklopfen</li>\n</ul>'),
('B6', 'µg', 'Vitamin', 'Vitamin B6 oder auch Pyridoxin genannt, ist ein Sammelbegriff für verschiedene Stoffe und ist dafür da, um zentrale Abläufe im Stoffwechsel zu regeln. Außerdem benötigt der Körper es vor allem, um Eiweißstoffe umwandeln und einbauen zu können und damit den Muskelaufbau zu fördern. Des Weiteren trägt es zur Bildung von Botenstoffen in den Nerven bei und hat Auswirkungen auf das Immunsystem. Grundsätzlich sollte jeder auf die gezielte Zufuhr von Vitamin B6 achten, der etwas für Herz und Gehirn tun möchte.<br><br>\nDer Mangel an Vitamin B6 kann sich in vielen, relativ unspezifischen Symptomen äußern. Diese sind:\n<ul>\n<li>Schlaflosigkeit oder ständige Müdigkeit</li>\n<li>Reizbarkeit</li>\n<li>mangelnde Konzentration</li>\n<li>Veränderungen der Haut</li>\n</ul>'),
('B7', 'µg', 'Vitamin', 'Biotin, auch Vitamin B7 genannt und in seltesten Fällen Vitamin H, ist ein wasserlösliches Vitamin der B-Vitamine. Der menschliche Organismus benötigt es, zum Beispiel für gesunde Haut, Haare und Nägel. Es fördert die Stoffwechselaktivität in den erwähnten Bereichen und beeinflusst deren Wachstum und Qualität positiv. Zudem ist Biotin beziehungsweise Vitamin B7 am Fett-und Eiweißstoffwechsel beteiligt und spielt eine Rolle bei der korrekten Umsetzung der im Erbgut enthaltenen Information.<br><br>\nWie erkennt man einen Biotin-Mangel? Insbesondere gilt es auf folgende Symptome zu achten:\n<ul>\n<li>Trockene, schuppige Haut</li>\n<li>Splissiges, stumpfes und teils brüchiges Haar</li>\n<li>Brüchige Fingernägel</li>\n</ul>'),
('B9', 'µg', 'Vitamin', 'Das Vitamin Folsäure zählt zur Gruppe der B-Vitamine und ist somit ein wasserlösliches Vitamin. Vereinzelt wird es auch als Vitamin B9 oder Vitamin B11 bezeichnet, noch seltener ist der Name Vitamin M. Der menschliche Körper kann es nicht selbst herstellen und muss es deshalb über die Nahrung aufnehmen. Folsäure ist für alle Wachstums- und Entwicklungsprozesse zentral und spielt auch eine wichtige Rolle im Bezug auf die geistige Leistungsfähigkeit. Neben der Erneuerung der Zellen und der Bildung der Blutzellen ist Folsäure wichtig für die Gesundheit des Herz-Kreislauf-Systems.<br><br>\nDer Folsäure-Mangel ist in Deutschland weit verbreitet und stellt sich eher schleichend ein. Unspezifische Symptome wären:\n<ul>\n <li>Müdigkeit</li>\n<li>Konzentrationsproblemen</li>\n</ul>'),
('C', 'mg', 'Vitamin', 'Vitamin C (Ascorbinsäure) ist ein echtes Multitalent unter den Vitaminen. Es fördert die Aktivität der weißen Blutkörperchen und stimuliert das Immunsystem. Außerdem besitzt Vitamin C antioxidative Eigenschaften, dass heißt es schützt die Zellen vor freien Radikalen, die die Zellen schädigen. Übrigens verhindert es auch die Ablagerung von Fetten in den Gefäßen. Für die Resorption des essentiellen Vitalstoffs Eisen spielt Vitamin C auch eine Schlüsselrolle.<br><br>\nMeist bleibt ein Mangel an Vitamin C zunächst unbemerkt. Er äußert sich in unspezifischen Beschwerden wie beispielsweise:\n<ul>\n<li>Müdigkeit</li>\n<li>Erhöhte Infektanfälligkeit</li>\n<li>Schlechte Wundheilung</li>\n<li>Verdauungsbeschwerden</li>\n</ul>    '),
('Calcium', 'mg', 'Mineralstoff', 'Calcium ist einer der zentralen Baustoffe von Knochen und Zähnen und ist somit unverzichtbar. So ist im Skelett und in den Zähnen des Menschen etwa 1 Kilogramm Calcium eingelagert. Und das ist gut so, denn erst durch das Calcium erhalten die Knochen und auch die Zähne ihre Stabilität. Doch dieser wertvolle Mineralstoff besitzt noch weitere wichtige Aufgaben in unserem Körper, wie zum Beispiel das reibungslose Funktionieren des Herzmuskels. Auch für die Übertragung von Reizen in den Nerven spielt Calcium eine wichtige Rolle.<br><br>\nZu den wichtigsten Folgen eines nicht regulierten Calcium-Mangels zählen diese Symptome:\n<ul>\n<li>Nachlassende Zahngesundheit</li>\n<li>Zunehmende Porösität der Knochen</li>\n<li>Störung der Blutgerinnung</li>\n<li>Muskelkrämpfe</li>\n</ul>'),
('E', 'µg', 'Vitamin', 'Vitamin E gehört zu den fettlöslichen Vitaminen und kommt in unterschiedliche Formen vor, die Fachleute unter dem Begriff Tocopherole zusammenfassen. Wenn es um den Schutz unserer Zellen geht, ist Vitamin E essentiell, denn in seiner Rolle als Antioxidans macht es freie Radikale unschädlich. Darüber hinaus unterstützt Vitamin E die Fließeigenschaften des Blutes und verbessert die Sauerstoffversorgung unserer Gefäße.<br><br>\nEin Vitamin E-Mangel kann zum Beispiel bei Krankheitsbildern hervorgerufen werden, die mit einer Störung der Verdauung einhergehen. Symptome, die auf einen Vitamin E-Mangel hindeuten können, sind zum Beispiel:\n<ul>\n<li>nachlassende körperliche und geistige Leistungsfähigkeit</li>\n<li>Nervosität</li>\n<li>Antriebsschwäche</li>\n<li>Erschöpfung</li>\n</ul>'),
('Eisen', 'mg', 'Spurenelement', 'Eisen ist ein echtes Multitalent, denn er ist an der Bildung von Hämoglobin beteiligt, welches dem Blut seinen roten Farbton verleiht und für die Sauerstoffversorgung unserer Zellen verantwortlich ist. Zudem ist Eisen ein Baustein unterschiedlicher Enzyme und als solcher, unter anderem auch unverzichtbar für den Energiestoffwechsel, die Produktion von Hormonen und Nervenbotenstoffen, sowie für Entgiftungsprozesse. Besonders Frauen sollten bis in die Wechseljahre hinein auf eine ausreichende Eisenzufuhr achten, da aufgrund des Blutverlustes bei der Menstruation Frauen besonders auf die Hilfe von Eisen bei der Blutbildung angewiesen sind.<br><br> \r\nDie Symptome für den Eisen-Mangel sind wie folgt:\r\n<ul>\r\n<li>Müdigkeit</li>\r\n<li>Appetitlosigkeit</li>\r\n<li>Erhöhte Anfälligkeit für Infekte</li> \r\n</ul>'),
('K', 'µg', 'Vitamin', 'Das fettlösliche Vitamin K spielt eine Rolle bei der Blutgerinnung, indem es die hierfür notwendigen Eiweißstoffe produziert. Außerdem hemmt es bei Frauen nach den Wechseljahren den Knochenabbau, da es ist zuständig für die Bildung des Eiweißstoffes Osteocalcin ist. Dieser ermöglicht den Einbau von Calcium in die Knochenstruktur. Insofern wird ein Mangel an Vitamin K heute vermehrt mit der Entstehung von Osteoporose in Verbindung gebracht.<br><br> \nBesonders häufig tritt ein Vitamin K-Mangel nach der Gabe von Antibiotika auf, wenn es gleichzeitig zu einer verminderten Aufnahme von Nahrung kommt. Symptome hierfür sind:\n<ul>\n<li>Störungen im Bereich der Fettresorption</li>\n<li>chronische Erkrankungen der Bauchspeicheldrüse</li> \n</ul>'),
('Kalium', 'mg', 'Mineralstoff', 'Der Mineralstoff Kalium liegt in unserem Körper größtenteils im Zellinneren vor. Nur ein Bruchteil ist auch außerhalb unserer Körperzellen zu finden. Kalium erfüllt in unserem Körper vielfältige Aufgaben, insbesondere die Regulation des Wasserhaushalts, sowie die Übertragung von Nervenimpulsen in verschiedenen Muskeln. Da auch unser Herzmuskel auf eine reibungslose Impulsübertragung angewiesen ist, spielt Kalium auch eine wichtige Rolle für ein gesundes Herz und unseren Herzrhythmus.<br><br>\nDie Symptome eines Kalium-Mangels sind unter anderem:\n<ul>\n<li>Abgeschlagenheit</li>\n<li>Schwindel</li>\n<li>Nachlassende Kontraktionsfähigkeit der Muskeln</li>\n<li>Verstopfung</li>\n</ul>'),
('Kupfer', 'µg', 'Spurenelement', 'Kupfer wird zu den Spurenelementen gezählt. Diese kommen nur in geringen Konzentrationen im menschlichen Körper vor, wie zum Beispiel im Gehirn oder im Muskelgewebe. Im Körper wird Kupfer vor allem für die Blutbildung und die Bildung von Bindegewebe gebraucht. Außerdem ist Kupfer wichtig für die Funktion des Nervensystems, sowie für das Funktionieren des Immunsystems. Neben einem Mangel ist aber auch die Überdosierung von Kupfer gefährlich.<br><br> \r\nZu den typischen Symptomes eines Kupfer-Mangels gehören:\r\n<ul>\r\n<li>Blutarmut</li>\r\n<li>Infektanfälligkeit</li>\r\n<li>Hautpigmentstörungen</li>\r\n<li>Appetitlosigkeit</li>\r\n</ul>'),
('Magnesium', 'mg', 'Mineralstoff', 'Magnesium ist ein für uns lebenswichtiger und gleichzeitig äußerst vielseitiger Mineralstoff. Er ist Baustein unserer Zellen und Knochen und wirkt an mehr als 300 unterschiedlichen, durch Enzyme gesteuerten Vorgängen im Körper mit. Es steigert die Leistungsfähigkeit des Herzmuskels und regt den Fettstoffwechsel an. Insofern gilt: Ohne Magnesium keine Energie!<br><br>\nEigentlich sollten wir aufgrund des Magnesiumgehalts zahlreicher Lebensmittel davon ausgehen, dass wir ausreichend mit Magnesium versorgt sind. Doch Tatsache ist, dass ein Magnesium-Mangel auch in Deutschland keine Seltenheit ist. Einige der typischen Symptome sind:\n<ul>\n<li>Muskelkrämpfe sowie unwillkürliche Muskelzuckungen</li>\n<li>Müdigkeit</li>\n<li>Appetitlosigkeit</li>\n<li>Nervosität</li>\n</ul>'),
('Phosphor', 'mg', 'Mineralstoff', 'Phosphor ist ein wichtiger Mineralstoff für den menschlichen Körper, der in Form von Phosphat eine Reihe von Funktionen erfüllt. Vor allem für die Knochenfestigkeit und Zahngesundheit ist Phosphor von besonderer Wichtigkeit. Die Wirkung des Mineralstoffs hängt eng mit der Calcium- und Vitamin D-Versorgung zusammen. Hohe Calciummengen hemmen die Phosphataufnahme und bei einem Vitamin D-Mangel sinkt der Phosphatspiegel im Blut. Phosphor beeinflusst außerdem die Wirkung von einigen Hormonen, den pH-Wert des Blutes und die DNA-Synthese.<br><br>\nBei einem Phosphormangel, der aber relativ selten ist, können diese Symptome vorkommen:\n<ul>\n<li>Infektanfälligkeit</li>\n<li>Appetitmagel</li>\n<li>Müdigkeit und Abgeschlagenheit</li>\n<li>leichte Reizbarkeit</li>\n</ul>');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `bedarf`
--
ALTER TABLE `bedarf`
  ADD PRIMARY KEY (`Personentyp`);

--
-- Indizes für die Tabelle `fruechte`
--
ALTER TABLE `fruechte`
  ADD PRIMARY KEY (`Fruchtname`);

--
-- Indizes für die Tabelle `saison`
--
ALTER TABLE `saison`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Frucht` (`Frucht`);

--
-- Indizes für die Tabelle `zusatzinfo`
--
ALTER TABLE `zusatzinfo`
  ADD PRIMARY KEY (`Inhaltsstoff`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `saison`
--
ALTER TABLE `saison`
  ADD CONSTRAINT `saison_ibfk_1` FOREIGN KEY (`Frucht`) REFERENCES `fruechte` (`Fruchtname`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
