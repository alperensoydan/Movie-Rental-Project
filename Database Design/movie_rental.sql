-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 16 Nis 2017, 15:31:03
-- Sunucu sürümü: 5.6.36
-- PHP Sürümü: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `movie_rental`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `actor`
--

CREATE TABLE IF NOT EXISTS `actor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `First_name` varchar(20) DEFAULT NULL,
  `Last_name` varchar(20) DEFAULT NULL,
  `Role` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Address` text NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Pstal_code` int(11) NOT NULL,
  `Last_update` date NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `city` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Customer_id` (`Customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `First_name` varchar(20) DEFAULT NULL,
  `Last_name` varchar(20) DEFAULT NULL,
  `Number_of_movie` int(11) DEFAULT NULL,
  `Create_date` date DEFAULT NULL,
  `Last_update` date DEFAULT NULL,
  `e_mail` varchar(35) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Username` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `has_category`
--

CREATE TABLE IF NOT EXISTS `has_category` (
  `movie_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `has_language`
--

CREATE TABLE IF NOT EXISTS `has_language` (
  `Movie_id` int(11) NOT NULL,
  `Language_id` int(11) NOT NULL,
  PRIMARY KEY (`Movie_id`,`Language_id`),
  KEY `Language_id` (`Language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `Last_update` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(35) NOT NULL,
  `Year` int(11) NOT NULL,
  `Length` double NOT NULL,
  `Rental_duration` int(11) NOT NULL,
  `IMDB` double DEFAULT NULL,
  `Studio` varchar(35) DEFAULT NULL,
  `Directed_by` varchar(20) DEFAULT NULL,
  `Written_by` varchar(20) DEFAULT NULL,
  `Image_link` varchar(50) DEFAULT NULL,
  `Trailer_link` varchar(50) DEFAULT NULL,
  `Replacement_cost` double DEFAULT NULL,
  `Stock` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Tablo döküm verisi `movie`
--

INSERT INTO `movie` (`ID`, `Name`, `Year`, `Length`, `Rental_duration`, `IMDB`, `Studio`, `Directed_by`, `Written_by`, `Image_link`, `Trailer_link`, `Replacement_cost`, `Stock`) VALUES
(1, 'Esaretin Bedeli', 1994, 144, 7, 9.2, ' Castle Rock Entertainment', 'Frank Darabont', 'JS Golden', 'www.esaretinbedeli.com', 'www.esaretinbedeli.com', 50, 1),
(2, 'asd', 2017, 255, 5, 5, 'asad', 'sadad', 'dsadwa', 'wadawdwa', 'wdawda', 2, 1),
(3, 'asad', 2015, 255, 8, 6, 'wadwad', 'wadaa', 'wdwad', 'wada', 'wdawa', 65, 1),
(4, 'awda', 545, 4654, 54, 454, 'wda', 'wadwawa', 'wdwfawf', 'facaw', 'dwafw', 4, 1),
(5, 'waddaw', 5632, 5435, 4354, 3543, 'wdwa', 'wdada', 'wdawdada', 'wadac', 'wacaw', 55, 1),
(6, 'asd', 2017, 255, 5, 5, 'asad', 'sadad', 'dsadwa', 'wadawdwa', 'wdawda', 2, 1),
(7, 'Esaretin Bedeli', 1994, 144, 7, 9.2, ' Castle Rock Entertainment', 'Frank Darabont', 'JS Golden', 'www.esaretinbedeli.com', 'www.esaretinbedeli.com', 50, 1),
(8, 'Esaretin Bedeli', 1994, 144, 7, 9.2, ' Castle Rock Entertainment', 'Frank Darabont', 'JS Golden', 'www.esaretinbedeli.com', 'www.esaretinbedeli.com', 50, 1),
(9, 'asd', 2017, 255, 5, 5, 'asad', 'sadad', 'dsadwa', 'wadawdwa', 'wdawda', 2, 1),
(10, 'asd', 2017, 255, 5, 5, 'asad', 'sadad', 'dsadwa', 'wadawdwa', 'wdawda', 2, 1),
(11, 'awda', 545, 4654, 54, 454, 'wda', 'wadwawa', 'wdwfawf', 'facaw', 'dwafw', 4, 1),
(12, 'asd', 2017, 255, 5, 5, 'asad', 'sadad', 'dsadwa', 'wadawdwa', 'wdawda', 2, 1),
(13, 'asd', 2017, 255, 5, 5, 'asad', 'sadad', 'dsadwa', 'wadawdwa', 'wdawda', 2, 1),
(14, 'waddaw', 5632, 5435, 4354, 3543, 'wdwa', 'wdada', 'wdawdada', 'wadac', 'wacaw', 55, 1),
(15, 'asd', 2017, 255, 5, 5, 'asad', 'sadad', 'dsadwa', 'wadawdwa', 'wdawda', 2, 1),
(16, 'OSMAN TIKNA', 1996, 2.15, 7, 5.6, 'Sorma', 'Osman TIKNA', 'Osman TIKNA', 'http://blog.microsoft.com.tr/?p=3905', 'http://blog.microsoft.com.tr/?p=3905', 100, 1),
(17, 'OSMAN TIKNA', 1996, 2.15, 7, 5.6, 'Sorma', 'Osman TIKNA', 'Osman TIKNA', 'http://blog.microsoft.com.tr/?p=3905', 'http://blog.microsoft.com.tr/?p=3905', 100, 1),
(18, 'OSMAN TIKNA', 1996, 2.15, 7, 5.6, 'Sorma', 'Osman TIKNA', 'Osman TIKNA', 'http://blog.microsoft.com.tr/?p=3905', 'http://blog.microsoft.com.tr/?p=3905', 100, 1),
(19, 'OSMAN TIKNA', 1996, 2.15, 7, 5.6, 'Sorma', 'Osman TIKNA', 'Osman TIKNA', 'http://blog.microsoft.com.tr/?p=3905', 'http://blog.microsoft.com.tr/?p=3905', 100, 1),
(20, 'OSMAN TIKNA', 1996, 2.15, 7, 5.6, 'Sorma', 'Osman TIKNA', 'Osman TIKNA', 'http://blog.microsoft.com.tr/?p=3905', 'http://blog.microsoft.com.tr/?p=3905', 100, 1),
(21, 'OSMAN TIKNA', 1996, 2.15, 7, 5.6, 'Sorma', 'Osman TIKNA', 'Osman TIKNA', 'http://blog.microsoft.com.tr/?p=3905', 'http://blog.microsoft.com.tr/?p=3905', 100, 1),
(22, 'OSMAN TIKNA', 1996, 2.15, 7, 5.6, 'Sorma', 'Osman TIKNA', 'Osman TIKNA', 'http://blog.microsoft.com.tr/?p=3905', 'http://blog.microsoft.com.tr/?p=3905', 100, 1),
(23, 'waddaw', 5632, 5435, 4354, 3543, 'wdwa', 'wdada', 'wdawdada', 'wadac', 'wacaw', 55, 1),
(24, 'asad', 2015, 255, 8, 6, 'wadwad', 'wadaa', 'wdwad', 'wada', 'wdawa', 65, 1),
(25, 'waddaw', 5632, 5435, 4354, 3543, 'wdwa', 'wdada', 'wdawdada', 'wadac', 'wacaw', 55, 1),
(26, 'Esaretin Bedeli', 1994, 144, 7, 9.2, ' Castle Rock Entertainment', 'Frank Darabont', 'JS Golden', 'www.esaretinbedeli.com', 'www.esaretinbedeli.com', 50, 1),
(27, 'Esaretin Bedeli', 1994, 144, 7, 9.2, ' Castle Rock Entertainment', 'Frank Darabont', 'JS Golden', 'www.esaretinbedeli.com', 'www.esaretinbedeli.com', 50, 1),
(28, 'asad', 2015, 255, 8, 6, 'wadwad', 'wadaa', 'wdwad', 'wada', 'wdawa', 65, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `play_in`
--

CREATE TABLE IF NOT EXISTS `play_in` (
  `Actor_id` int(11) NOT NULL,
  `Movie_id` int(11) NOT NULL,
  PRIMARY KEY (`Actor_id`,`Movie_id`),
  KEY `Movie_id` (`Movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rental`
--

CREATE TABLE IF NOT EXISTS `rental` (
  `Rental_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Rental_date` date NOT NULL,
  `Return_date` date NOT NULL,
  `Last_update` date NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `Movie_id` int(11) NOT NULL,
  PRIMARY KEY (`Rental_ID`),
  KEY `Customer_id` (`Customer_id`),
  KEY `Movie_id` (`Movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `Reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `Reservation_date` date NOT NULL,
  `Finish_date` date NOT NULL,
  `Last_update` date DEFAULT NULL,
  `Username` varchar(20) NOT NULL,
  `Movie_id` int(11) NOT NULL,
  PRIMARY KEY (`Reservation_id`),
  KEY `Username` (`Username`),
  KEY `Movie_id` (`Movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `E_mail` varchar(35) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`Username`, `Password`, `E_mail`) VALUES
('asd', 'asd', 'asd');

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`ID`);

--
-- Tablo kısıtlamaları `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `users` (`Username`);

--
-- Tablo kısıtlamaları `has_category`
--
ALTER TABLE `has_category`
  ADD CONSTRAINT `has_category_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`ID`),
  ADD CONSTRAINT `has_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`ID`);

--
-- Tablo kısıtlamaları `has_language`
--
ALTER TABLE `has_language`
  ADD CONSTRAINT `has_language_ibfk_1` FOREIGN KEY (`Movie_id`) REFERENCES `movie` (`ID`),
  ADD CONSTRAINT `has_language_ibfk_2` FOREIGN KEY (`Language_id`) REFERENCES `language` (`ID`);

--
-- Tablo kısıtlamaları `play_in`
--
ALTER TABLE `play_in`
  ADD CONSTRAINT `play_in_ibfk_1` FOREIGN KEY (`Actor_id`) REFERENCES `actor` (`ID`),
  ADD CONSTRAINT `play_in_ibfk_2` FOREIGN KEY (`Movie_id`) REFERENCES `movie` (`ID`);

--
-- Tablo kısıtlamaları `rental`
--
ALTER TABLE `rental`
  ADD CONSTRAINT `rental_ibfk_1` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`ID`),
  ADD CONSTRAINT `rental_ibfk_2` FOREIGN KEY (`Movie_id`) REFERENCES `movie` (`ID`);

--
-- Tablo kısıtlamaları `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `users` (`Username`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`Movie_id`) REFERENCES `movie` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
