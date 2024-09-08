-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2024 at 07:26 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edusql`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `address` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `phone`, `gender`, `address`, `name`) VALUES
(1, 'naruto.uzumaki@gmail.com', '080-1234567', 'Male', 'Konohagakure', 'Naruto Uzumaki'),
(2, 'sasuke.uchiha@gmail.com', '080-2345678', 'Male', 'Konohagakure', 'Sasuke Uchiha'),
(3, 'sakura.haruno@gmail.com', '080-3456789', 'Female', 'Konohagakure', 'Sakura Haruno'),
(4, 'kakashi.hatake@gmail.com', '080-4567890', 'Male', 'Konohagakure', 'Kakashi Hatake'),
(5, 'hinata.hyuuga@gmail.com', '080-5678901', 'Female', 'Konohagakure', 'Hinata Hyuuga'),
(6, 'iruka.uchiha@gmail.com', '080-6789012', 'Male', 'Konohagakure', 'Iruka Uchiha'),
(7, 'shikamaru.nara@gmail.com', '080-7890123', 'Male', 'Konohagakure', 'Shikamaru Nara'),
(8, 'temari@gmail.com', '080-8901234', 'Female', 'Sunagakure', 'Temari'),
(9, 'gaara@gmail.com', '080-9012345', 'Male', 'Sunagakure', 'Gaara'),
(10, 'kankuro@gmail.com', '080-0123456', 'Male', 'Sunagakure', 'Kankuro'),
(11, 'luffy.d.monkey@gmail.com', '090-1234567', 'Male', 'Grand Line', 'Monkey D. Luffy'),
(12, 'zoro.roronoa@gmail.com', '090-2345678', 'Male', 'Grand Line', 'Roronoa Zoro'),
(13, 'nami@gmail.com', '090-3456789', 'Female', 'Grand Line', 'Nami'),
(14, 'usopp@gmail.com', '090-4567890', 'Male', 'Grand Line', 'Usopp'),
(15, 'sanji@gmail.com', '090-5678901', 'Male', 'Grand Line', 'Sanji'),
(16, 'chopper@gmail.com', '090-6789012', 'Male', 'Grand Line', 'Tony Tony Chopper'),
(17, 'robin.nico@gmail.com', '090-7890123', 'Female', 'Grand Line', 'Nico Robin'),
(18, 'franky@gmail.com', '090-8901234', 'Male', 'Grand Line', 'Franky'),
(19, 'brook@gmail.com', '090-9012345', 'Male', 'Grand Line', 'Brook'),
(20, 'jinbe@gmail.com', '090-0123456', 'Male', 'Grand Line', 'Jinbe'),
(21, 'neji.hyuuga@gmail.com', '080-2345679', 'Male', 'Konohagakure', 'Neji Hyuuga'),
(22, 'choji.akimichi@gmail.com', '080-3456790', 'Male', 'Konohagakure', 'Choji Akimichi'),
(23, 'ino.yamanaka@gmail.com', '080-4567901', 'Female', 'Konohagakure', 'Ino Yamanaka'),
(24, 'asuma.sarutobi@gmail.com', '080-5679012', 'Male', 'Konohagakure', 'Asuma Sarutobi'),
(25, 'rock.lee@gmail.com', '080-6789123', 'Male', 'Konohagakure', 'Rock Lee'),
(26, 'ten.ten@gmail.com', '080-7890234', 'Female', 'Konohagakure', 'Ten Ten'),
(27, 'kurenai.yuhi@gmail.com', '080-8901345', 'Female', 'Konohagakure', 'Kurenai Yuhi'),
(28, 'hinata.hyuuga@gmail.com', '090-1234567', 'Female', 'Konohagakure', 'Hinata Hyuuga'),
(29, 'sai@gmail.com', '090-2345678', 'Male', 'Konohagakure', 'Sai'),
(30, 'yamato@gmail.com', '090-3456789', 'Male', 'Konohagakure', 'Yamato');

--
-- Indexes for dumped tables
--
-- alias eduwork
SELECT 
    name AS 'Name', 
    phone AS 'Phone Number', 
    address AS 'Address'
FROM users;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
