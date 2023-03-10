-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 09, 2023 at 05:25 PM
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
-- Table structure for table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
CREATE TABLE IF NOT EXISTS `tbl_roles` (
  `role_id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `role_desc` text NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`role_id`, `role_name`, `role_desc`) VALUES
(1, 'Admin', 'admin user'),
(2, 'Guest', 'guest user');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `user_id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_lname` varchar(75) NOT NULL,
  `user_fname` varchar(50) NOT NULL,
  `user_username` varchar(30) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `user_image` varchar(50) NOT NULL,
  `id_role` smallint UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `id_role` (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_lname`, `user_fname`, `user_username`, `user_password`, `user_image`, `id_role`) VALUES
(3, 'Macedo', 'Marcelo', 'marcelo3', '123', 'person2.jpg', 1),
(56, 'Smith', 'David', 'david', '12345', 'person1.jpg', 2),
(57, 'Maddison', 'Luke', 'luke1', '123456', 'person2.jpg', 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD CONSTRAINT `tbl_users_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `tbl_roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
