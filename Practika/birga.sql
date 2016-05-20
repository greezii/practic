-- --------------------------------------------------------
-- Хост:                         localhost
-- Версия сервера:               5.7.10-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win64
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных birga
CREATE DATABASE IF NOT EXISTS `birga` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `birga`;


-- Дамп структуры для таблица birga.bezrab
CREATE TABLE IF NOT EXISTS `bezrab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `professia` varchar(50) NOT NULL DEFAULT '0',
  `obrazovanie` varchar(50) NOT NULL DEFAULT '0',
  `mestoposrab` varchar(50) NOT NULL DEFAULT '0',
  `dolgposrab` varchar(50) NOT NULL DEFAULT '0',
  `prichinayvol` varchar(50) NOT NULL DEFAULT '0',
  `semeinoepol` varchar(50) NOT NULL DEFAULT '0',
  `gilyslov` varchar(50) NOT NULL DEFAULT '0',
  `FIO` varchar(150) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `addres` varchar(1500) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `trebovanie` varchar(50) DEFAULT NULL,
  `arxiv` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_bezrab_profa` (`professia`),
  CONSTRAINT `FK_bezrab_profa` FOREIGN KEY (`professia`) REFERENCES `profa` (`professia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица birga.profa
CREATE TABLE IF NOT EXISTS `profa` (
  `professia` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`professia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица birga.vacan
CREATE TABLE IF NOT EXISTS `vacan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frima` varchar(50) NOT NULL DEFAULT '0',
  `dolgnost` varchar(50) NOT NULL DEFAULT '0',
  `yslovtryd` varchar(50) NOT NULL DEFAULT '0',
  `yslovoplat` varchar(50) NOT NULL DEFAULT '0',
  `gilyslov` varchar(50) NOT NULL DEFAULT '0',
  `trebovanie` varchar(50) DEFAULT NULL,
  `zarplata` int(11) DEFAULT NULL,
  `arxiv` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
