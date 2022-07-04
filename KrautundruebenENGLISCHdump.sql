-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Erstellungszeit: 04. Jul 2022 um 11:55
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
-- Datenbank: `krautundruebenv2`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Allergen`
--

CREATE TABLE `Allergen` (
  `allergenID` int(11) NOT NULL,
  `allergenName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `Allergen`
--

INSERT INTO `Allergen` (`allergenID`, `allergenName`) VALUES
(1, 'Milk'),
(2, 'gluten'),
(3, 'Crustaceans'),
(4, 'Eggs'),
(5, 'Fish'),
(6, 'Peanuts'),
(7, 'Soybeans'),
(8, 'Nuts'),
(9, 'Celery'),
(10, 'Mustard'),
(11, 'Sesame'),
(12, 'Sulphur dioxide and sulphites'),
(13, 'Lupin'),
(14, 'Molluscs'),
(15, 'allergenfree');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Customer`
--

CREATE TABLE `Customer` (
  `customerID` int(11) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `houseNo` varchar(6) NOT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postCode` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `Customer`
--

INSERT INTO `Customer` (`customerID`, `lastName`, `firstName`, `birthday`, `phone`, `email`, `houseNo`, `street`, `city`, `postCode`) VALUES
(2001, 'Forger', 'Anya', '2012-05-05', '040/44133322', 'anya@spi.de', '104', 'Peanut Street', 'Hamburg', '20249'),
(2002, 'Lightyear', 'Buzz', '2000-03-24', '040/543822', 'd.foede@web.de', '23', 'Ohmstraße', 'Hamburg', '22765'),
(2003, 'Pride', 'Woody', '1989-09-21', '0175/1234588', 'sigrid@leberer.de', '6', 'Bilser Berg', 'Hamburg', '20459'),
(2004, 'Montana', 'Hannah', '1974-04-03', '040/634578', 'h.soerensen@yahoo.de', '95', 'Alter Teichweg', 'Hamburg', '22049'),
(2005, 'Cow', 'Jessie', '1964-04-17', '0176/447587', 'schni_mart@gmail.com', '10', 'Stübels', 'Barsbüttel', '22835'),
(2006, 'Stark', 'Tony', '1978-09-09', '040/332189', 'belinda1978@yahoo.de', '4a', 'Grotelertwiete', 'Hamburg', '21075'),
(2007, 'Parker', 'Peter', '1978-01-29', '040/67890', 'armin@gessert.de', '3', 'Küstersweg', 'Hamburg', '21079'),
(2008, 'Forger', 'Loid', '1988-08-30', '0178-67023390', 'loid@hspi.de', '30', 'Peanut Street', 'Hamburg', '21149'),
(2009, 'Forger', 'Yor', '1989-12-04', '0152-234701390', 'yor@spi.de', '228', 'Peanut Street', 'Hamburg', '22605'),
(2010, 'deleted', 'I will be', '2016-01-01', '110', 'iwillbegone@soon.bye', '420', 'Good-Bye-Street', 'Depression-City', '42069'),
(2011, 'deleted2', 'I will be', '2016-01-01', '110', 'iwillbegone@soon.bye', '420', 'Good-Bye-Street', 'Depression-City', '42069');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Ingredient`
--

CREATE TABLE `Ingredient` (
  `ingredientID` int(11) NOT NULL,
  `ingredientName` varchar(50) NOT NULL,
  `netPrice` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `caloriesPer100g` decimal(10,2) NOT NULL,
  `carbsPer100g` decimal(10,2) NOT NULL,
  `fatPer100g` decimal(10,2) NOT NULL,
  `proteinPer100g` decimal(10,2) NOT NULL,
  `supplierID` int(11) NOT NULL,
  `allergenID` int(11) NOT NULL DEFAULT 15
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `Ingredient`
--

INSERT INTO `Ingredient` (`ingredientID`, `ingredientName`, `netPrice`, `stock`, `caloriesPer100g`, `carbsPer100g`, `fatPer100g`, `proteinPer100g`, `supplierID`, `allergenID`) VALUES
(1001, 'Courgette', '0.89', 100, '20.00', '19.00', '0.40', '1.60', 101, 15),
(1002, 'Onion', '0.15', 50, '30.00', '28.00', '0.20', '1.20', 101, 15),
(1003, 'Tomatoes', '0.45', 50, '30.00', '18.00', '0.50', '1.00', 101, 15),
(1004, 'Shallots', '0.20', 500, '3.30', '25.00', '0.20', '1.50', 101, 15),
(1005, 'Carrot', '0.30', 500, '42.00', '7.60', '0.30', '0.60', 101, 15),
(1006, 'Potato', '0.15', 1500, '14.60', '7.00', '0.10', '2.00', 101, 15),
(1007, 'Rucola', '0.90', 10, '2.10', '5.00', '2.60', '2.60', 101, 15),
(1008, 'Leek', '1.20', 35, '3.00', '3.00', '3.30', '2.10', 101, 15),
(1009, 'Garlic', '0.25', 250, '24.00', '10.00', '0.12', '6.10', 101, 15),
(1010, 'Basil', '1.30', 10, '32.00', '7.70', '2.50', '3.80', 101, 15),
(1011, 'Sweet potatoes', '2.00', 200, '86.00', '86.00', '0.60', '1.60', 101, 15),
(1012, 'Chives', '0.90', 10, '1.00', '28.00', '32.00', '3.58', 101, 15),
(2001, 'Apple', '1.20', 750, '50.00', '54.00', '14.40', '0.30', 102, 15),
(3001, 'Whole milk. 3.5%', '1.50', 50, '268.00', '65.00', '1.50', '3.40', 103, 1),
(3002, 'Curd', '0.69', 50, '121.00', '75.00', '5.10', '12.40', 103, 1),
(3003, 'Mozzarella', '3.50', 20, '246.00', '241.00', '22.00', '18.10', 103, 1),
(3004, 'Butter', '3.00', 50, '741.00', '741.00', '83.00', '0.70', 103, 1),
(4001, 'Egg', '0.40', 300, '300.00', '137.00', '9.90', '11.90', 102, 4),
(5001, 'Vienna sausage', '1.80', 40, '329.00', '331.00', '25.00', '9.90', 101, 15),
(6300, 'Chickpeas', '1.00', 400, '138.00', '150.00', '6.00', '9.00', 103, 15),
(6408, 'Couscous', '1.90', 15, '112.00', '351.00', '2.80', '12.00', 102, 15),
(7043, 'Vegetable broth', '0.20', 4000, '4.00', '1.00', '0.10', '0.50', 101, 15),
(9001, 'Tofu-Sausages', '1.80', 20, '360.00', '252.00', '11.00', '17.00', 103, 7),
(10001, 'Noodles', '1.99', 0, '350.00', '800.00', '0.50', '10.00', 101, 2),
(10002, 'Salt', '1.20', 120, '0.00', '0.00', '0.00', '0.00', 104, 15),
(10003, 'sugar', '1.99', 120, '400.00', '6000.00', '0.00', '0.00', 104, 15),
(10004, 'pepper', '1.50', 100, '350.00', '0.00', '0.00', '0.00', 104, 15),
(10005, 'scrumbled Tofu', '5.00', 100, '144.00', '20.00', '10.00', '50.00', 101, 7),
(10006, 'olive oil', '4.99', 100, '900.00', '1.00', '7498.00', '1.00', 101, 15),
(10007, 'sunflower oil', '0.99', 100, '900.00', '1.00', '7598.00', '1.00', 101, 15),
(10008, 'tomatoes', '6.99', 100, '25.00', '20.00', '10.00', '10.00', 101, 15),
(10009, 'yeast flakes', '10.95', 100, '83.00', '50.00', '30.00', '500.00', 104, 15),
(10010, 'hokkaido pumpkin', '2.95', 50, '208.00', '500.00', '50.00', '60.00', 101, 15),
(10011, 'herbs of provence', '4.50', 100, '300.00', '0.00', '0.00', '0.00', 104, 15),
(10012, 'kale', '3.95', 50, '41.00', '500.00', '50.00', '60.00', 101, 15),
(10013, 'mustard', '1.95', 100, '520.00', '10.00', '40.00', '5.00', 104, 10),
(10014, 'rice', '1.99', 100, '350.00', '400.00', '0.50', '10.00', 101, 15),
(10015, 'water', '0.06', 100, '0.00', '0.00', '0.00', '0.00', 105, 15),
(10016, 'paprika', '10.50', 100, '37.00', '0.00', '0.00', '0.00', 104, 15),
(10017, 'fresh parsley', '1.60', 100, '53.00', '1.00', '1.00', '1.00', 104, 15),
(10019, 'cream cheese', '2.50', 60, '275.00', '260.00', '22.00', '20.00', 103, 1),
(10020, 'beluga lentils', '1.00', 400, '270.00', '150.00', '6.00', '9.00', 103, 15),
(10021, 'Mango', '2.20', 750, '50.00', '54.00', '14.40', '0.30', 102, 15),
(10022, 'coriander', '1.60', 100, '23.00', '1.00', '1.00', '1.00', 104, 15),
(10023, 'roasted sesame oil', '4.99', 100, '560.00', '1.00', '7600.00', '1.00', 101, 15),
(10024, 'ajvar', '1.95', 100, '97.00', '10.00', '40.00', '5.00', 104, 15),
(10025, 'orange juice', '1.95', 150, '48.00', '150.00', '10.00', '5.00', 101, 15),
(10026, 'lemon juice', '2.95', 50, '13.00', '60.00', '5.00', '5.00', 101, 15),
(10027, 'soy sauce', '7.20', 110, '57.00', '0.00', '0.00', '0.00', 104, 7),
(10028, 'cranberry jam', '2.99', 250, '440.00', '1100.00', '20.00', '15.00', 101, 15),
(10029, 'maple syrup', '8.99', 80, '260.00', '5500.00', '0.00', '0.00', 101, 15),
(10030, 'peanut butter', '2.99', 130, '597.00', '4500.00', '3500.00', '1000.00', 101, 6),
(10031, 'vinegar', '1.95', 300, '17.00', '40.00', '5.00', '5.00', 101, 15),
(10032, 'chives', '1.50', 100, '32.00', '1.00', '1.00', '1.00', 104, 15),
(10033, 'hem', '6.80', 140, '785.00', '120.00', '250.00', '300.00', 101, 15),
(10034, 'spicy cucumber', '1.99', 100, '30.00', '20.00', '10.00', '10.00', 101, 15),
(10035, 'camembert', '2.99', 20, '300.00', '290.00', '22.00', '16.00', 103, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `NutriPref`
--

CREATE TABLE `NutriPref` (
  `nutriPrefID` int(11) NOT NULL,
  `nutriPrefName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `NutriPref`
--

INSERT INTO `NutriPref` (`nutriPrefID`, `nutriPrefName`) VALUES
(0, 'frutarian'),
(1, 'vegan'),
(2, 'vegetarian'),
(3, 'omnivore');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Orders`
--

CREATE TABLE `Orders` (
  `orderID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `invoiceSum` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `Orders`
--

INSERT INTO `Orders` (`orderID`, `customerID`, `orderDate`, `invoiceSum`) VALUES
(1, 2001, '2020-07-01', '6.21'),
(2, 2002, '2020-07-08', '32.96'),
(3, 2003, '2020-08-01', '24.08'),
(4, 2004, '2020-08-02', '19.90'),
(5, 2005, '2020-08-02', '6.47'),
(6, 2006, '2020-08-10', '6.96'),
(7, 2007, '2020-08-10', '2.41'),
(8, 2008, '2020-08-10', '13.80'),
(9, 2009, '2020-08-10', '8.67'),
(10, 2007, '2020-08-15', '17.98'),
(11, 2005, '2020-08-12', '8.67'),
(12, 2003, '2020-08-13', '20.87'),
(13, 2010, '2020-07-01', '6.21'),
(14, 2010, '2020-07-08', '32.96'),
(15, 2011, '2020-08-01', '24.08'),
(16, 2011, '2020-08-02', '19.90');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Recipe`
--

CREATE TABLE `Recipe` (
  `recipeID` int(11) NOT NULL,
  `recipeName` varchar(50) NOT NULL,
  `nutriPrefID` int(11) NOT NULL,
  `totalPrice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `Recipe`
--

INSERT INTO `Recipe` (`recipeID`, `recipeName`, `nutriPrefID`, `totalPrice`) VALUES
(0, 'Apple puree', 0, '3.90'),
(1, 'Cooked noodles with tofu and tomatosauce', 1, '5.60'),
(2, 'Baked pumpkin', 1, '6.80'),
(3, 'Kale with potatoes and tofu', 1, '7.20'),
(40, 'Pepper rice pan', 2, '6.30'),
(50, 'Mango lentil salad with marinated tofu', 2, '7.30'),
(60, 'Baked camembert with cranberry jam', 2, '4.60'),
(700, 'Baked Potato with ham', 3, '5.20'),
(800, 'Fried Potatoes with ham', 3, '4.20'),
(900, 'Farmers breakfast', 3, '6.50');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `RecipeIngredient`
--

CREATE TABLE `RecipeIngredient` (
  `recipeID` int(11) DEFAULT NULL,
  `ingredientID` int(11) NOT NULL,
  `quantity` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `RecipeIngredient`
--

INSERT INTO `RecipeIngredient` (`recipeID`, `ingredientID`, `quantity`) VALUES
(0, 2001, '2.00'),
(1, 10001, '3.00'),
(1, 10005, '2.00'),
(1, 10006, '3.00'),
(1, 10008, '4.00'),
(1, 10004, '3.00'),
(1, 10002, '5.00'),
(1, 10003, '3.00'),
(1, 10009, '3.00'),
(2, 10010, '6.00'),
(2, 10007, '4.00'),
(2, 10002, '5.00'),
(2, 10011, '1.00'),
(3, 10012, '3.00'),
(3, 1006, '1.00'),
(3, 10005, '1.00'),
(3, 10007, '3.00'),
(3, 10013, '1.00'),
(3, 10002, '5.00'),
(40, 10014, '2.00'),
(40, 10002, '1.00'),
(40, 10014, '2.00'),
(40, 10002, '1.00'),
(40, 10023, '2.00'),
(40, 10004, '1.00'),
(40, 10023, '2.00'),
(40, 10004, '1.00'),
(40, 10019, '2.00'),
(40, 10006, '1.00'),
(40, 10015, '4.00'),
(40, 10016, '1.00'),
(40, 10017, '0.50'),
(40, 10004, '1.00'),
(40, 10017, '0.50'),
(40, 10017, '0.50'),
(50, 10005, '3.00'),
(50, 10020, '1.00'),
(50, 10021, '1.00'),
(50, 1002, '1.00'),
(50, 10022, '1.00'),
(50, 10023, '4.00'),
(50, 10002, '1.00'),
(50, 10004, '1.00'),
(50, 10024, '1.00'),
(50, 10025, '4.00'),
(50, 10026, '4.00'),
(50, 10027, '3.00'),
(50, 10029, '1.00'),
(50, 10030, '2.00'),
(60, 10035, '5.00'),
(60, 10028, '5.00'),
(700, 1006, '4.00'),
(700, 3002, '2.00'),
(700, 10002, '4.00'),
(700, 10003, '1.00'),
(700, 1012, '5.00'),
(700, 10031, '1.00'),
(700, 10033, '5.00'),
(800, 1006, '3.00'),
(800, 10007, '2.00'),
(800, 10002, '8.00'),
(800, 10033, '5.00'),
(900, 1006, '3.00'),
(900, 10007, '2.00'),
(900, 10002, '8.00'),
(900, 10033, '1.00'),
(900, 4001, '1.00'),
(900, 10034, '1.00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `RecipeOrder`
--

CREATE TABLE `RecipeOrder` (
  `recipeID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `RecipeOrder`
--

INSERT INTO `RecipeOrder` (`recipeID`, `orderID`, `quantity`) VALUES
(1, 1, 2),
(2, 2, 5),
(3, 3, 7),
(40, 4, 3),
(50, 5, 6),
(60, 6, 9),
(700, 7, 13),
(800, 8, 42),
(900, 9, 4),
(3, 10, 7),
(800, 11, 1),
(50, 12, 8),
(1, 13, 2),
(2, 14, 5),
(3, 15, 7),
(40, 16, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Supplier`
--

CREATE TABLE `Supplier` (
  `supplierID` int(11) NOT NULL,
  `supplierName` varchar(50) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `houseNo` varchar(6) NOT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postCode` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `Supplier`
--

INSERT INTO `Supplier` (`supplierID`, `supplierName`, `phone`, `email`, `houseNo`, `street`, `city`, `postCode`) VALUES
(101, 'Bio-Hof Müller', '04354-9080', 'mueller@biohof.de', '74', 'Dorfstraße', 'Weseby', '24354'),
(102, 'Obst-Hof Altes Land', '04162-4523', 'info@biohof-altesland.de', '76', 'Westerjork 74', 'Jork', '21635'),
(103, 'Molkerei Henning', '038873-8976', 'info@molkerei-henning.de', '13', 'Molkereiwegkundekunde', 'Dechow', '19217'),
(104, 'Gewürzhandel Johannsen', '040-1205656', 'mail@gewuerze-johannsen.de', '11', 'Hamburger Straße', 'Hamburg', '22059'),
(105, 'Hamburg Wasser', '040-78882222', 'info@hamburg-wasser.de', '1', 'Ballindamm', 'Hamburg', '20095');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Allergen`
--
ALTER TABLE `Allergen`
  ADD PRIMARY KEY (`allergenID`);

--
-- Indizes für die Tabelle `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indizes für die Tabelle `Ingredient`
--
ALTER TABLE `Ingredient`
  ADD PRIMARY KEY (`ingredientID`),
  ADD KEY `supplierID` (`supplierID`),
  ADD KEY `allergenID` (`allergenID`);

--
-- Indizes für die Tabelle `NutriPref`
--
ALTER TABLE `NutriPref`
  ADD PRIMARY KEY (`nutriPrefID`);

--
-- Indizes für die Tabelle `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indizes für die Tabelle `Recipe`
--
ALTER TABLE `Recipe`
  ADD PRIMARY KEY (`recipeID`),
  ADD KEY `nutriPrefID` (`nutriPrefID`);

--
-- Indizes für die Tabelle `RecipeIngredient`
--
ALTER TABLE `RecipeIngredient`
  ADD KEY `recipeID` (`recipeID`),
  ADD KEY `ingredientID` (`ingredientID`);

--
-- Indizes für die Tabelle `RecipeOrder`
--
ALTER TABLE `RecipeOrder`
  ADD KEY `recipeID` (`recipeID`),
  ADD KEY `orderID` (`orderID`);

--
-- Indizes für die Tabelle `Supplier`
--
ALTER TABLE `Supplier`
  ADD PRIMARY KEY (`supplierID`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `Ingredient`
--
ALTER TABLE `Ingredient`
  ADD CONSTRAINT `Ingredient_ibfk_1` FOREIGN KEY (`supplierID`) REFERENCES `Supplier` (`supplierID`),
  ADD CONSTRAINT `Ingredient_ibfk_2` FOREIGN KEY (`allergenID`) REFERENCES `Allergen` (`allergenID`);

--
-- Constraints der Tabelle `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `Customer` (`customerID`);

--
-- Constraints der Tabelle `Recipe`
--
ALTER TABLE `Recipe`
  ADD CONSTRAINT `Recipe_ibfk_1` FOREIGN KEY (`nutriPrefID`) REFERENCES `NutriPref` (`nutriPrefID`);

--
-- Constraints der Tabelle `RecipeIngredient`
--
ALTER TABLE `RecipeIngredient`
  ADD CONSTRAINT `RecipeIngredient_ibfk_1` FOREIGN KEY (`recipeID`) REFERENCES `Recipe` (`recipeID`),
  ADD CONSTRAINT `RecipeIngredient_ibfk_2` FOREIGN KEY (`ingredientID`) REFERENCES `Ingredient` (`ingredientID`);

--
-- Constraints der Tabelle `RecipeOrder`
--
ALTER TABLE `RecipeOrder`
  ADD CONSTRAINT `RecipeOrder_ibfk_1` FOREIGN KEY (`recipeID`) REFERENCES `Recipe` (`recipeID`),
  ADD CONSTRAINT `RecipeOrder_ibfk_2` FOREIGN KEY (`orderID`) REFERENCES `Orders` (`orderID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
