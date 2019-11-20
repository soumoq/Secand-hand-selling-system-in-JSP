-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 20, 2019 at 06:28 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Book`
--

-- --------------------------------------------------------

--
-- Table structure for table `Image_Table`
--

CREATE TABLE `Image_Table` (
  `image_id` int(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `image_path` varchar(100) NOT NULL,
  `product_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Image_Table`
--

INSERT INTO `Image_Table` (`image_id`, `image_name`, `image_path`, `product_id`) VALUES
(1, 'wow.jpg', 'wow.jpg/jsp', 7);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `register_id` int(100) NOT NULL,
  `product_details` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `product_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `register_id`, `product_details`, `price`, `product_image`) VALUES
(1, 'book', 1, 'organizer', '700', ''),
(2, 'book1', 1, 'Java', '200', ''),
(3, 'book2', 1, 'c++', '200', ''),
(4, 'laptop', 1, 'Lenovo ideapad 330 Rizen 5 8gb ram\r\nGood Condition.', '1800', ''),
(5, 'Realme', 1, 'Oppo realme 1 \r\nRam 3gb\r\nStorage 32gb\r\n1080p display full hd', '6000', ''),
(6, 'Umbrela', 1, 'Airtel red Color Umbrela', '200', ''),
(7, 'appel', 1, 'Red Kasmeri Apple', '10', ''),
(10, 'selena gomez', 1, 'Singer and dancer', '5000000', ''),
(11, 'power bank', 1, '4000 mh amber good condition.\r\n', '500', '');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `dp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `user_name`, `phone`, `password`, `dp`) VALUES
(1, 'Soumojyoti Ganguly', 'soumo', '7477540540', '123', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Image_Table`
--
ALTER TABLE `Image_Table`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_ibfk_1` (`register_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Image_Table`
--
ALTER TABLE `Image_Table`
  MODIFY `image_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Image_Table`
--
ALTER TABLE `Image_Table`
  ADD CONSTRAINT `Image_Table_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`register_id`) REFERENCES `register` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
