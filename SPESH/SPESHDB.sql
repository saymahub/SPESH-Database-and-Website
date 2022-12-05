-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 01, 2022 at 09:43 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `speshdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `shipping deets`
--

CREATE TABLE `shipping deets` (
  `id` int(10) NOT NULL,
  `trackingnum` varchar(200) NOT NULL,
  `ETA` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `shipping deets` (`id`, `trackingnum`, `ETA`) VALUES
(1, '3200066534', 'Decemeber 5th, 2022'),
(2, '3264366534', 'Decemeber 5th, 2022'),
(3, '3200364534', 'Decemeber 5th, 2022'),
(4, '3264366534', 'Decemeber 5th, 2022'),
(5, '3264300034', 'Decemeber 5th, 2022'),
(6, '3264836534', 'Decemeber 5th, 2022'),
(7, '3264366534', 'Decemeber 5th, 2022'),
(8, '3200066534', 'Decemeber 5th, 2022');

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(30) NOT NULL,
  `country` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `prod name` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `product` (`id`, `country`, `category`, `prod name`, `price`) VALUES
(1, 'China', 'food', 'pancakes', '$10.00'),
(2, 'Afghanistan', 'food', 'thyme', '$10.00'),
(3, 'Bulgaria', 'food', 'ketchup chips', '$10.00'),
(4, 'Dominican Republic', 'food', 'biryani', '$10.00'),
(5, 'Afghanistan', 'food', 'macaroni salad', '$10.00'),
(6, 'Bulgaria', 'food', 'nestea', '$10.00'),
(7, 'Afghanistan', 'food', 'sand', '$10.00'),
(8, 'China', 'food', 'water', '$10.00'),
(9, 'France', 'food', 'cake', '$10.00'),
(10, 'Bulgaria', 'food', 'cupcake', '$10.00'),
(11, 'Dominican Republic', 'food', 'lasagna', '$10.00'),
(12, 'Afghanistan', 'food', 'shrimps', '$10.00'),
(13, 'England', 'food', 'mochi', '$10.00'),
(14, 'Dominican Republic', 'food', 'pizza', '$10.00'),
(15, 'China', 'food', 'mixed veggies', '$10.00'),
(16, 'Bulgaria', 'food', 'instant noodles', '$10.00'),
(17, 'Bulgaria', 'food', 'the entire collection of shakespeares work', '$10.00'),
(18, 'Afghanistan', 'food', 'burger', '$10.00'),
(19, 'China', 'food', 'peas', '$10.00'),
(20, 'England', 'food', 'coca cola', '$10.00');


--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `card` varchar(200) DEFAULT NULL,
  `cvv` varchar(200) DEFAULT NULL,
  `expiry` varchar(200) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `user_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `users` (`id`, `username`, `email`, `card`, `cvv`, `expiry`,`password`, `address`, `user_type`) VALUES
(1, 'MrGuy', 'guy@gmail.com', '1111111111111111', '123', '12/24', 'password', 'university drive', 'customer'),
(2, 'MsGirl', 'girl@gmail.com', '2222222222222222', '533', '04/25', 'password', 'university drive', 'customer'),
(3, 'Jana', 'Jana@ucalgary.ca', '3333333333333333', '354', '10/24', 'password', 'university drive', 'customer'),
(4, 'Sathya', 'baby@ucalgary.ca', '4444444444444444', '163', '08/26', 'password', 'university drive', 'customer'),
(5, 'adminsayma', 'sayma@gmail.com', '2222222222222222', '533', '04/25', 'adminpass', 'university drive', 'admin'),
(6, 'adminsamira', 'samira@gmail.com', '3333333333333333', '354', '10/24', 'adminpass', 'university drive', 'admin'),
(7, 'adminmichele', 'michele@gmail.com', '4444444444444444', '163', '08/26', 'adminpass', 'university drive', 'admin');

--
-- Table structure for table `distributer`
--

CREATE TABLE `distributer` (
  `id` int(10) NOT NULL,
  `first name` varchar(200) NOT NULL,
  `last name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `phone` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `distributer` (`id`, `first name`, `last name`, `email`, `country`, `phone`) VALUES
(1, 'Phil', 'Simpson', 'email', 'Japan', '4039882602'),
(2, 'Jasmeender', 'Simpson', 'email', 'Japan', '4039882602'),
(3, 'Siwon', 'Choi', 'email', 'Japan', '4039882602'),
(4, 'George', 'Simpson', 'email', 'Japan', '4039882602'),
(5, 'Daniel', 'Simpson', 'email', 'Japan', '4039882602'),
(6, 'Sangeet', 'Paramjeet', 'email', 'Japan', '4039882602'),
(7, 'Barthalomew', 'Simpson', 'email', 'Japan', '4039882602'),
(8, 'Putin', 'Simpson', 'email', 'Japan', '4039882602');

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Produce'),
(2, 'Drinks'),
(3, 'Spices'),
(4, 'Snacks');

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `country` (`id`, `name`) VALUES
(1, 'Afghanistan'),
(2, 'Bulgaria'),
(3, 'China'),
(4, 'Dominican Republic'),
(5, 'England'),
(6, 'France');

--
-- Indexes for table `shipping deets`
--
ALTER TABLE `shipping deets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `shipping deets`
--

ALTER TABLE `shipping deets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Indexes for table `users`
--

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for table `users`
--

ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

--
-- Indexes for table `Shipping Deets`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `product`
--

ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
  
--
-- Indexes for table `distributer`
--
ALTER TABLE `distributer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `distributer`
--

ALTER TABLE `distributer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `country`
--

ALTER TABLE `country`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `category`
--

ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
