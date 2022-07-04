-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Erstellungszeit: 04. Jul 2022 um 16:54
-- Server-Version: 10.8.3-MariaDB-1:10.8.3+maria~jammy
-- PHP-Version: 8.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `krautundrueben`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ALLERGIE`
--

CREATE TABLE `ALLERGIE` (
  `ALLERGIENR` int(11) NOT NULL,
  `ALLERGIENAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `ALLERGIE`
--

INSERT INTO `ALLERGIE` (`ALLERGIENR`, `ALLERGIENAME`) VALUES
(1, 'Glutenhaltig'),
(2, 'Krebstiere'),
(3, 'Eier und Eiererzeugnisse'),
(4, 'Fisch und Fischerzeugnisse'),
(5, 'Erdnüsse und Erdnusserzeugnisse'),
(6, 'Soja und Sojaerzeugnisse'),
(7, 'Milch und Milcherzeugnisse'),
(8, 'Schalenobst (Nüsse)'),
(9, 'Sellerie und Sellerieerzeugnisse'),
(10, 'Senf und Senferzeugnisse'),
(11, 'Sesamsamen'),
(12, 'Schwefeldioxid und Sulfide'),
(13, 'Lupinen'),
(14, 'Weichtiere und Weichtiererzeugnisse'),
(15, 'Tomate');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ERNÄHRUNG`
--

CREATE TABLE `ERNÄHRUNG` (
  `ERNÄHRUNGNR` int(11) NOT NULL,
  `KALORIEN` int(5) NOT NULL,
  `PROTEINE` decimal(3,1) DEFAULT NULL,
  `KOHLENHYDRATE` decimal(3,1) DEFAULT NULL,
  `KOHLENHYDRATE_ZUCKER` decimal(3,1) DEFAULT NULL,
  `FETT` decimal(3,1) DEFAULT NULL,
  `FETT_FETTSÄUREN` decimal(3,1) DEFAULT NULL,
  `BALLASTSTOFFE` decimal(3,1) DEFAULT NULL,
  `NATRIUM` decimal(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `ERNÄHRUNG`
--

INSERT INTO `ERNÄHRUNG` (`ERNÄHRUNGNR`, `KALORIEN`, `PROTEINE`, `KOHLENHYDRATE`, `KOHLENHYDRATE_ZUCKER`, `FETT`, `FETT_FETTSÄUREN`, `BALLASTSTOFFE`, `NATRIUM`) VALUES
(1, 338, '11.1', '55.3', '6.0', '5.7', '3.0', '0.6', '50.0'),
(2, 322, '14.6', '9.2', '2.3', '27.9', '3.9', '6.3', '18.0'),
(3, 278, '5.6', '12.6', '3.4', '21.4', '5.6', '3.0', '10.0'),
(4, 285, '12.2', '22.3', '3.1', '50.2', '24.1', '20.1', '18.0'),
(5, 80, '0.4', '21.2', '7.8', '0.1', '0.0', '3.2', '22.0');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `KATEGORIE`
--

CREATE TABLE `KATEGORIE` (
  `KATEGORIENR` int(11) NOT NULL,
  `KATEGORIENAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `KATEGORIE`
--

INSERT INTO `KATEGORIE` (`KATEGORIENR`, `KATEGORIENAME`) VALUES
(1, 'Fleisch'),
(2, 'Vegetarisch'),
(3, 'Vegan'),
(4, 'Frutarisch'),
(5, 'Low Carb'),
(6, 'High Protein');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `KUNDE`
--

CREATE TABLE `KUNDE` (
  `KUNDENNR` int(11) NOT NULL,
  `NACHNAME` varchar(50) DEFAULT NULL,
  `VORNAME` varchar(50) DEFAULT NULL,
  `GEBURTSDATUM` date DEFAULT NULL,
  `STRASSE` varchar(50) DEFAULT NULL,
  `HAUSNR` varchar(6) DEFAULT NULL,
  `PLZ` varchar(5) DEFAULT NULL,
  `ORT` varchar(50) DEFAULT NULL,
  `TELEFON` varchar(25) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `KUNDE`
--

INSERT INTO `KUNDE` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES
(2001, 'Wellensteyn', 'Kira', '1990-05-05', 'Eppendorfer Landstrasse', '104', '20249', 'Hamburg', '040/443322', 'k.wellensteyn@yahoo.de'),
(2002, 'Foede', 'Dorothea', '2000-03-24', 'Ohmstraße', '23', '22765', 'Hamburg', '040/543822', 'd.foede@web.de'),
(2003, 'Leberer', 'Sigrid', '1989-09-21', 'Bilser Berg', '6', '20459', 'Hamburg', '0175/1234588', 'sigrid@leberer.de'),
(2004, 'Soerensen', 'Hanna', '1974-04-03', 'Alter Teichweg', '95', '22049', 'Hamburg', '040/634578', 'h.soerensen@yahoo.de'),
(2005, 'Schnitter', 'Marten', '1964-04-17', 'Stübels', '10', '22835', 'Barsbüttel', '0176/447587', 'schni_mart@gmail.com'),
(2006, 'Maurer', 'Belinda', '1978-09-09', 'Grotelertwiete', '4a', '21075', 'Hamburg', '040/332189', 'belinda1978@yahoo.de'),
(2007, 'Gessert', 'Armin', '1978-01-29', 'Küstersweg', '3', '21079', 'Hamburg', '040/67890', 'armin@gessert.de'),
(2008, 'Haessig', 'Jean-Marc', '1982-08-30', 'Neugrabener Bahnhofstraße', '30', '21149', 'Hamburg', '0178-67013390', 'jm@haessig.de'),
(2009, 'Urocki', 'Eric', '1999-12-04', 'Elbchaussee', '228', '22605', 'Hamburg', '0152-96701390', 'urocki@outlook.de'),
(2010, 'Forger', 'Anya', '2016-01-01', 'Erdnussstraße', '7', '69007', 'Erdnussdorf', '0152-92630719', 'cant.read.minds@forger.de'),
(2011, 'Müller', 'Hans', '1968-06-09', 'Burgstraße', '31', '20537', 'Hamburg', '040/1231231', 'Hans123@gmail.com');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `LIEFERANT`
--

CREATE TABLE `LIEFERANT` (
  `LIEFERANTENNR` int(11) NOT NULL,
  `LIEFERANTENNAME` varchar(50) DEFAULT NULL,
  `STRASSE` varchar(50) DEFAULT NULL,
  `HAUSNR` varchar(6) DEFAULT NULL,
  `PLZ` varchar(5) DEFAULT NULL,
  `ORT` varchar(50) DEFAULT NULL,
  `TELEFON` varchar(25) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `LIEFERANT`
--

INSERT INTO `LIEFERANT` (`LIEFERANTENNR`, `LIEFERANTENNAME`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES
(101, 'Bio-GmbH', 'Biostraße', '69', '42069', 'Biostadt', '04200-0071', 'biogmbh@bio.de'),
(102, 'Spy-Vegetables', 'Weststraße', '26', '24476', 'Westalis', '04162-4523', 'spy-vegetables@twilight.de'),
(103, 'Peanuts GmbH', 'Erdnussstraße', '21', '69007', 'Erdnussdorf', '02865-5713', 'peanuts@peanuts.de');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `REZEPT`
--

CREATE TABLE `REZEPT` (
  `REZEPTNR` int(11) NOT NULL,
  `REZEPTNAME` varchar(50) DEFAULT NULL,
  `PREIS_PORTION` decimal(10,2) DEFAULT NULL,
  `LÄNGE_MIN` int(3) DEFAULT NULL,
  `ABLAUF` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `REZEPT`
--

INSERT INTO `REZEPT` (`REZEPTNR`, `REZEPTNAME`, `PREIS_PORTION`, `LÄNGE_MIN`, `ABLAUF`) VALUES
(1, 'Kalorienarme Bananen-Pfannkuchen', '0.50', 10, 'Die Banane zerdrücken und einfach mit den anderen Zutaten mischen (man kann auch Eiweiß und Eigelb trennen und das Eiweiß steif schlagen, dann wirds fluffiger). Die Masse dann portionsweise in einer kleinen beschichteten Pfanne ausbacken.'),
(2, 'Gekochte Erdnüsse', '2.00', 180, 'Step 1\r\nWash the peanuts and place them in a pot. Add salt and water. Bring the water to a boil.\r\n\r\nStep 2\r\nLet the water boil for 3 hours.\r\n\r\nStep 3\r\nTaste the peanuts, if they are not salty enough for your taste add more salt. If you would like the peanuts to be softer, return the water to boil and cook until they reach the consistency you desire.'),
(3, 'Tomatensuppe', '2.00', 20, 'Eine Zwiebel in kleine Stückchen schneiden und glasig braten. Eine Knoblauchzehe hinzufügen und zusammen weiter braten. Die passierten Tomaten hinzufügen und einen Schuss Weinbrand oder Cognac. Gleichzeitig etwa 10 frische Basilikumblätter, Gemüsebrühe, Pfeffer und etwas Paprikapulver hineingeben.\r\nNach 5 Minuten Kochzeit mit dem Pürierstab pürieren. Schlagsahne hinzufügen, aufkochen und abschmecken.'),
(4, 'Gefüllte Ofenkartoffel', '2.50', 30, 'Backofen auf 200°C vorheizen. Die Kartoffeln waschen, auf ein Backblech legen und 40 Minuten im Ofen weich backen.\r\n\r\nIn der Zwischenzeit Tomaten waschen und hacken. Die Frühlingszwiebeln putzen und in Ringe schneiden.\r\n\r\nKartoffeln halbieren und aushöhlen, dabei einen ca. 3 mm breiten Rand lassen. Die Schale mit Öl bepinseln. Zurück in den Ofen geben, dann ca. 20 Minuten weiterbacken.\r\n\r\nKartoffeln nun in eine feuerfeste Form setzen und mit der Hälfte vom Käse, den Frühlingszwiebeln, den Tomaten, den Gewürzen und den Chilischeiben füllen. Die restliche Hälfte vom Käse darüber streuen. Die Kartoffeln zurück in den Ofen geben und noch einmal 5 Minuten überbacken, bis der Käse geschmolzen ist. Heiß servieren.'),
(5, 'Apfelsaft', '5.00', 40, 'Äpfel grob würfeln, in einen großen Kochtopf geben und mit einen Stampfer zerdrücken.1 L Wasser dazugeben, aufkochen und bei mittlerer Hitze 10 min. köcheln lassen. Durch ein großes, feines Haarsieb schütten, den Saft in einem Topf auffangen. Saft und Zucker verrühren, aufkochen lassen und abschäumen. Mit der Einmachhilfe verrühren und heiß in ausgekochte Flaschen füllen. Gut verschließen.\r\nErgibt ca. 4 Flaschen á ½ l, ungeöffnet 1 Jahr haltbar');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `REZEPTALLERGIE`
--

CREATE TABLE `REZEPTALLERGIE` (
  `ALLERGIENR` int(11) NOT NULL,
  `REZEPTNR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `REZEPTALLERGIE`
--

INSERT INTO `REZEPTALLERGIE` (`ALLERGIENR`, `REZEPTNR`) VALUES
(3, 1),
(5, 2),
(7, 3),
(9, 3),
(15, 3),
(7, 4),
(15, 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `REZEPTBESTELLUNG`
--

CREATE TABLE `REZEPTBESTELLUNG` (
  `REZEPTNR` int(11) NOT NULL,
  `KUNDENNR` int(11) NOT NULL,
  `BESTELLDATUM` date DEFAULT NULL,
  `RECHNUNGSBETRAG` decimal(10,2) DEFAULT NULL,
  `REZEPTMENGE` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `REZEPTBESTELLUNG`
--

INSERT INTO `REZEPTBESTELLUNG` (`REZEPTNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `REZEPTMENGE`) VALUES
(2, 2010, '2022-06-09', '200.00', 100),
(1, 2001, '2020-07-01', '5.00', 10),
(3, 2002, '2020-07-08', '4.00', 2),
(4, 2003, '2020-08-01', '2.50', 1),
(5, 2004, '2020-08-02', '20.00', 4),
(1, 2005, '2020-08-02', '4.00', 8),
(1, 2006, '2020-08-10', '5.00', 10),
(2, 2007, '2020-08-10', '6.00', 3),
(4, 2008, '2020-08-10', '12.50', 5),
(4, 2009, '2020-08-10', '25.00', 10),
(5, 2007, '2020-08-15', '44.00', 11),
(3, 2005, '2020-08-12', '8.00', 4),
(1, 2003, '2020-08-13', '20.50', 41);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `REZEPTERNÄHRUNG`
--

CREATE TABLE `REZEPTERNÄHRUNG` (
  `ERNÄHRUNGNR` int(11) NOT NULL,
  `REZEPTNR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `REZEPTERNÄHRUNG`
--

INSERT INTO `REZEPTERNÄHRUNG` (`ERNÄHRUNGNR`, `REZEPTNR`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `REZEPTKATEGORIE`
--

CREATE TABLE `REZEPTKATEGORIE` (
  `KATEGORIENR` int(11) NOT NULL,
  `REZEPTNR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `REZEPTKATEGORIE`
--

INSERT INTO `REZEPTKATEGORIE` (`KATEGORIENR`, `REZEPTNR`) VALUES
(2, 1),
(3, 2),
(6, 2),
(2, 3),
(5, 3),
(2, 4),
(4, 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `REZEPTZUTATEN`
--

CREATE TABLE `REZEPTZUTATEN` (
  `REZEPTNR` int(11) NOT NULL,
  `ZUTATENNR` int(11) NOT NULL,
  `MENGE` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `REZEPTZUTATEN`
--

INSERT INTO `REZEPTZUTATEN` (`REZEPTNR`, `ZUTATENNR`, `MENGE`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 2),
(2, 9002, 1),
(3, 1003, 1),
(3, 1009, 1),
(3, 1010, 1),
(3, 1002, 1),
(3, 7043, 1),
(4, 1006, 1),
(4, 3002, 1),
(4, 1002, 1),
(4, 1003, 1),
(5, 2001, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ZUTAT`
--

CREATE TABLE `ZUTAT` (
  `ZUTATENNR` int(11) NOT NULL,
  `BEZEICHNUNG` varchar(50) DEFAULT NULL,
  `EINHEIT` varchar(25) DEFAULT NULL,
  `NETTOPREIS` decimal(10,2) DEFAULT NULL,
  `BESTAND` int(11) DEFAULT NULL,
  `LIEFERANTENNR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `ZUTAT`
--

INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANTENNR`) VALUES
(1, 'Banane', 'Stück', '0.10', 1000, 101),
(2, 'Ei', 'Stück', '0.30', 500, 101),
(3, 'Mehl', '10 Gramm', '0.01', 1000000, 101),
(1001, 'Zucchini', 'Stück', '0.89', 100, 101),
(1002, 'Zwiebel', 'Stück', '0.15', 50, 101),
(1003, 'Tomate', 'Stück', '0.45', 50, 101),
(1004, 'Schalotte', 'Stück', '0.20', 500, 101),
(1005, 'Karotte', 'Stück', '0.30', 500, 101),
(1006, 'Kartoffel', 'Stück', '0.15', 1500, 101),
(1007, 'Rucola', 'Bund', '0.90', 10, 101),
(1008, 'Lauch', 'Stück', '1.20', 35, 101),
(1009, 'Knoblauch', 'Stück', '0.25', 250, 101),
(1010, 'Basilikum', 'Bund', '1.30', 10, 101),
(1011, 'Süßkartoffel', 'Stück', '2.00', 200, 101),
(1012, 'Schnittlauch', 'Bund', '0.90', 10, 101),
(2001, 'Apfel', 'Stück', '1.20', 750, 102),
(3001, 'Vollmilch. 3.5%', 'Liter', '1.50', 50, 102),
(3002, 'Mozzarella', 'Packung', '3.50', 20, 102),
(3003, 'Butter', 'Stück', '3.00', 50, 102),
(5001, 'Wiener Würstchen', 'Paar', '1.80', 40, 101),
(6300, 'Kichererbsen', 'Dose', '1.00', 400, 102),
(6408, 'Couscous', 'Packung', '1.90', 15, 102),
(7043, 'Gemüsebrühe', 'Würfel', '0.20', 4000, 101),
(9001, 'Tofu-Würstchen', 'Stück', '1.80', 20, 101),
(9002, 'Erdnüsse', 'Dose', '1.00', 400, 103);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `ALLERGIE`
--
ALTER TABLE `ALLERGIE`
  ADD PRIMARY KEY (`ALLERGIENR`);

--
-- Indizes für die Tabelle `ERNÄHRUNG`
--
ALTER TABLE `ERNÄHRUNG`
  ADD PRIMARY KEY (`ERNÄHRUNGNR`);

--
-- Indizes für die Tabelle `KATEGORIE`
--
ALTER TABLE `KATEGORIE`
  ADD PRIMARY KEY (`KATEGORIENR`);

--
-- Indizes für die Tabelle `KUNDE`
--
ALTER TABLE `KUNDE`
  ADD PRIMARY KEY (`KUNDENNR`);

--
-- Indizes für die Tabelle `LIEFERANT`
--
ALTER TABLE `LIEFERANT`
  ADD PRIMARY KEY (`LIEFERANTENNR`);

--
-- Indizes für die Tabelle `REZEPT`
--
ALTER TABLE `REZEPT`
  ADD PRIMARY KEY (`REZEPTNR`);

--
-- Indizes für die Tabelle `REZEPTALLERGIE`
--
ALTER TABLE `REZEPTALLERGIE`
  ADD KEY `REZEPTNR` (`REZEPTNR`),
  ADD KEY `ALLERGIENR` (`ALLERGIENR`);

--
-- Indizes für die Tabelle `REZEPTBESTELLUNG`
--
ALTER TABLE `REZEPTBESTELLUNG`
  ADD KEY `KUNDENNR` (`KUNDENNR`),
  ADD KEY `REZEPTNR` (`REZEPTNR`);

--
-- Indizes für die Tabelle `REZEPTERNÄHRUNG`
--
ALTER TABLE `REZEPTERNÄHRUNG`
  ADD KEY `REZEPTNR` (`REZEPTNR`),
  ADD KEY `ERNÄHRUNGNR` (`ERNÄHRUNGNR`);

--
-- Indizes für die Tabelle `REZEPTKATEGORIE`
--
ALTER TABLE `REZEPTKATEGORIE`
  ADD KEY `REZEPTNR` (`REZEPTNR`),
  ADD KEY `KATEGORIENR` (`KATEGORIENR`);

--
-- Indizes für die Tabelle `REZEPTZUTATEN`
--
ALTER TABLE `REZEPTZUTATEN`
  ADD KEY `REZEPTNR` (`REZEPTNR`),
  ADD KEY `ZUTATNR` (`ZUTATENNR`);

--
-- Indizes für die Tabelle `ZUTAT`
--
ALTER TABLE `ZUTAT`
  ADD PRIMARY KEY (`ZUTATENNR`),
  ADD KEY `LIEFERANT` (`LIEFERANTENNR`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `ALLERGIE`
--
ALTER TABLE `ALLERGIE`
  MODIFY `ALLERGIENR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT für Tabelle `ERNÄHRUNG`
--
ALTER TABLE `ERNÄHRUNG`
  MODIFY `ERNÄHRUNGNR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `KATEGORIE`
--
ALTER TABLE `KATEGORIE`
  MODIFY `KATEGORIENR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `KUNDE`
--
ALTER TABLE `KUNDE`
  MODIFY `KUNDENNR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2012;

--
-- AUTO_INCREMENT für Tabelle `LIEFERANT`
--
ALTER TABLE `LIEFERANT`
  MODIFY `LIEFERANTENNR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT für Tabelle `REZEPT`
--
ALTER TABLE `REZEPT`
  MODIFY `REZEPTNR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `ZUTAT`
--
ALTER TABLE `ZUTAT`
  MODIFY `ZUTATENNR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9003;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `REZEPTALLERGIE`
--
ALTER TABLE `REZEPTALLERGIE`
  ADD CONSTRAINT `REZEPTALLERGIE_ibfk_1` FOREIGN KEY (`REZEPTNR`) REFERENCES `REZEPT` (`REZEPTNR`),
  ADD CONSTRAINT `REZEPTALLERGIE_ibfk_2` FOREIGN KEY (`REZEPTNR`) REFERENCES `REZEPT` (`REZEPTNR`),
  ADD CONSTRAINT `REZEPTALLERGIE_ibfk_3` FOREIGN KEY (`ALLERGIENR`) REFERENCES `ALLERGIE` (`ALLERGIENR`);

--
-- Constraints der Tabelle `REZEPTBESTELLUNG`
--
ALTER TABLE `REZEPTBESTELLUNG`
  ADD CONSTRAINT `REZEPTBESTELLUNG_ibfk_1` FOREIGN KEY (`KUNDENNR`) REFERENCES `KUNDE` (`KUNDENNR`),
  ADD CONSTRAINT `REZEPTBESTELLUNG_ibfk_2` FOREIGN KEY (`REZEPTNR`) REFERENCES `REZEPT` (`REZEPTNR`),
  ADD CONSTRAINT `REZEPTBESTELLUNG_ibfk_3` FOREIGN KEY (`REZEPTNR`) REFERENCES `REZEPT` (`REZEPTNR`);

--
-- Constraints der Tabelle `REZEPTERNÄHRUNG`
--
ALTER TABLE `REZEPTERNÄHRUNG`
  ADD CONSTRAINT `REZEPTERNÄHRUNG_ibfk_1` FOREIGN KEY (`REZEPTNR`) REFERENCES `REZEPT` (`REZEPTNR`),
  ADD CONSTRAINT `REZEPTERNÄHRUNG_ibfk_2` FOREIGN KEY (`ERNÄHRUNGNR`) REFERENCES `ERNÄHRUNG` (`ERNÄHRUNGNR`);

--
-- Constraints der Tabelle `REZEPTKATEGORIE`
--
ALTER TABLE `REZEPTKATEGORIE`
  ADD CONSTRAINT `REZEPTKATEGORIE_ibfk_2` FOREIGN KEY (`REZEPTNR`) REFERENCES `REZEPT` (`REZEPTNR`),
  ADD CONSTRAINT `REZEPTKATEGORIE_ibfk_3` FOREIGN KEY (`KATEGORIENR`) REFERENCES `KATEGORIE` (`KATEGORIENR`);

--
-- Constraints der Tabelle `REZEPTZUTATEN`
--
ALTER TABLE `REZEPTZUTATEN`
  ADD CONSTRAINT `REZEPTZUTATEN_ibfk_1` FOREIGN KEY (`REZEPTNR`) REFERENCES `REZEPT` (`REZEPTNR`),
  ADD CONSTRAINT `REZEPTZUTATEN_ibfk_2` FOREIGN KEY (`ZUTATENNR`) REFERENCES `ZUTAT` (`ZUTATENNR`);

--
-- Constraints der Tabelle `ZUTAT`
--
ALTER TABLE `ZUTAT`
  ADD CONSTRAINT `ZUTAT_ibfk_1` FOREIGN KEY (`LIEFERANTENNR`) REFERENCES `LIEFERANT` (`LIEFERANTENNR`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
