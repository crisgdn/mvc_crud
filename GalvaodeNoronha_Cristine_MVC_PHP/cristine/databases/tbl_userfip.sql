-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 09, 2023 at 06:49 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_users`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userfip`
--

DROP TABLE IF EXISTS `tbl_userfip`;
CREATE TABLE IF NOT EXISTS `tbl_userfip` (
  `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_lname` varchar(300) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `user_fname` varchar(300) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `user_username` varchar(300) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `user_password` varchar(300) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `user_image` varchar(300) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `id_role` smallint NOT NULL,
  `user_role` varchar(300) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_userfip`
--

INSERT INTO `tbl_userfip` (`id`, `user_lname`, `user_fname`, `user_username`, `user_password`, `user_image`, `id_role`, `user_role`) VALUES
(1, 'Smith', 'Mary', 'Mary1', '123', 'person1.jpg', 1, 'admin'),
(2, 'Delgado', 'Bob', 'Bob2', '2222', 'person2.jpg', 2, 'guest');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
