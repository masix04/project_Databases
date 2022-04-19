/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.19-MariaDB : Database - api_collection
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`api_collection` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `api_collection`;

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `isocode` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `languages` */

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(8) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `iso_code` varchar(12) DEFAULT NULL,
  `native_name` varchar(128) DEFAULT NULL,
  `write_direction` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `quran_chapters` */

DROP TABLE IF EXISTS `quran_chapters`;

CREATE TABLE `quran_chapters` (
  `id` int(5) NOT NULL,
  `name_arabic` varchar(255) DEFAULT NULL,
  `name_english` varchar(128) DEFAULT NULL,
  `name_complex` varchar(192) DEFAULT NULL,
  `bismillah_pre` int(3) NOT NULL,
  `verses` int(6) NOT NULL,
  `reveal_order` int(5) NOT NULL,
  `reveal_place` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`bismillah_pre`,`verses`,`reveal_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `srch_result_occur_details` */

DROP TABLE IF EXISTS `srch_result_occur_details`;

CREATE TABLE `srch_result_occur_details` (
  `id` int(20) NOT NULL,
  `searched_id` int(20) NOT NULL,
  `verse` varchar(64) DEFAULT NULL,
  `ayat_id` int(10) NOT NULL,
  `ayat` varchar(255) DEFAULT NULL,
  `translation` varchar(255) DEFAULT NULL,
  `translator` varchar(255) DEFAULT NULL,
  `language` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ayat_id`),
  KEY `fk_searched_key_for_s_result` (`searched_id`),
  CONSTRAINT `fk_searched_key_for_s_result` FOREIGN KEY (`searched_id`) REFERENCES `srch_searched_keys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `srch_searched_keys` */

DROP TABLE IF EXISTS `srch_searched_keys`;

CREATE TABLE `srch_searched_keys` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `searched_key` varchar(255) DEFAULT NULL,
  `occur_times` int(20) DEFAULT NULL,
  `searched_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `srch_word_details` */

DROP TABLE IF EXISTS `srch_word_details`;

CREATE TABLE `srch_word_details` (
  `id` int(20) NOT NULL,
  `ayaat_id` int(10) NOT NULL,
  `word` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
