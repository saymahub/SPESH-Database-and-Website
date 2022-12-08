-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2022 at 10:28 PM
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
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Produce'),
(2, 'Drinks'),
(3, 'Spices'),
(4, 'Snacks');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'Afghanistan'),
(2, 'Bulgaria'),
(3, 'China'),
(4, 'Dominican Republic'),
(5, 'England'),
(6, 'France');

-- --------------------------------------------------------

--
-- Table structure for table `distributer`
--

CREATE TABLE `distributer` (
  `id` int(10) NOT NULL,
  `first name` varchar(200) NOT NULL,
  `last name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `distributer`
--

INSERT INTO `distributer` (`id`, `first name`, `last name`, `email`, `country`, `phone`,`image`) VALUES
(1, 'Phil', 'Simpson', 'phil@distrib.ca', 'Japan', '184 758 3920', 'https://upload.wikimedia.org/wikipedia/en/d/da/Matt_LeBlanc_as_Joey_Tribbiani.jpg'),
(2, 'Jasmeender', 'Simpson', 'Jasmeender@distrib.ca', 'Japan', '264 901 7284', 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img/https://www.easterneye.biz/wp-content/uploads/2022/03/LEAD-1-Jasminder-Singh-profile-Radisson2-scaled.jpg'),
(3, 'Siwon', 'Choi', 'Siwon@distrib.ca', 'Japan', '740 154 9174', 'https://upload.wikimedia.org/wikipedia/en/d/da/Matt_LeBlanc_as_Joey_Tribbiani.jpg'),
(4, 'George', 'Simpson', 'george@distrib.ca', 'Japan', '910 274 8394', 'https://upload.wikimedia.org/wikipedia/en/d/da/Matt_LeBlanc_as_Joey_Tribbiani.jpg'),
(5, 'Daniel', 'Simpson', 'daniel@distrib.ca', 'Japan', '672 839 0940', 'https://upload.wikimedia.org/wikipedia/en/d/da/Matt_LeBlanc_as_Joey_Tribbiani.jpg'),
(6, 'Sangeet', 'Paramjeet', 'sangeet@distrib.ca', 'Japan', '567 890 2345', 'https://upload.wikimedia.org/wikipedia/en/d/da/Matt_LeBlanc_as_Joey_Tribbiani.jpg'),
(7, 'Barthalomew', 'Simpson', 'Barthalomew@distrib.ca', 'Japan', '876 498 3900', 'https://upload.wikimedia.org/wikipedia/en/d/da/Matt_LeBlanc_as_Joey_Tribbiani.jpg'),
(8, 'Putin', 'Simpson', 'putin@distrib.ca', 'Japan', '536 738 3988', 'https://upload.wikimedia.org/wikipedia/en/d/da/Matt_LeBlanc_as_Joey_Tribbiani.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `bought` varchar(200) NOT NULL,
  `era` varchar(200) NOT NULL,
  `artist` varchar(200) NOT NULL,
  `prod name` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `image url` varbinary(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `bought`, `era`, `artist`, `prod name`, `price`, `image url`) VALUES
(0, 'no', 'sweets', 'Ivan Aivazovsky', 'The Ninth Wave', '$101.00', "https://imgix.ranker.com/user_node_img/2231/44616753/original/the-ninth-wave-photo-u1?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=200"),
(1, 'no', 'sweets', 'Ivan Aivazovsky', 'The Ninth Wave', '$101.00', "https://imgix.ranker.com/user_node_img/2231/44616753/original/the-ninth-wave-photo-u1?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"),
(2, 'no', 'sweets', 'John William Waterhouse', 'The Lady of Shalott', '$129.00', "https://imgix.ranker.com/user_node_img/475/9494074/original/the-lady-of-shalott-photo-u3?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"),
(3, 'no', 'chips', 'Pierre-Auguste Renoir', 'Dance at Le Moulin de la Galette', '$376.99', "https://imgix.ranker.com/user_node_img/27/536908/original/bal-au-moulin-de-la-galette-montmartre-photo-u2?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"),
(4, 'no', 'chocolate', 'Hokusai', 'The Great Wave off Kanagawa', '$152.89', "https://imgix.ranker.com/user_node_img/1698/33952630/original/the-great-wave-off-kanagawa-photo-u2?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"),
(5, 'no', 'msc', 'Hieronymus Bosch', 'The Garden of Earthly Delights', '$738.89', "https://imgix.ranker.com/user_node_img/110/2194180/original/the-garden-of-earthly-delights-photo-u5?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"),
(6, 'no', 'msc', 'Jean-François Millet', 'The Gleaners', '$927.99', "https://imgix.ranker.com/user_node_img/597/11936379/original/the-gleaners-photo-u1?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"),
(7, 'no', 'chips', 'Pierre-Auguste Renoir', 'Luncheon of the Boating Party', '$111.11', "https://imgix.ranker.com/user_node_img/75/1487553/original/luncheon-of-the-boating-party-photo-u1?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"),
(8, 'no', 'chocolate', 'Georges-Pierre Seurat', 'Sunday Afternoon on the Island of La Grande Jatte', '$321.00', "https://imgix.ranker.com/user_node_img/107/2121412/original/sunday-afternoon-on-the-island-of-la-grande-jatte-photo-u3?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"),
(9, 'no', 'msc', 'Gustave Caillebotte', 'Paris Street; Rainy Day', '$224.99', "https://imgix.ranker.com/user_node_img/88/1756510/original/paris-street_-rainy-day-photo-u2?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"),
(10, 'no', 'meat', 'Édouard Manet', 'A Bar at the Folies-Bergère', '$161.00', "https://imgix.ranker.com/user_node_img/27/521266/original/a-bar-at-the-folies-berg_re-photo-u1?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"),
(11, 'no', 'msc', 'Théodore Géricault', 'The Raft of the Medusa', '$189.50', "https://imgix.ranker.com/user_node_img/94/1865958/original/the-raft-of-the-medusa-photo-u1?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"),
(12, 'no', 'meat', 'Carl Bloch', 'In a Roman Osteria', '$210.00', "https://imgix.ranker.com/user_node_img/50090/1001781107/original/in-a-roman-osteria-photo-u2?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"),
(13, 'no', 'sweets', 'Caspar David Friedrich', 'Moonrise Over the Sea', '$843.99', "https://imgix.ranker.com/user_node_img/567/11334768/original/moonrise-over-the-sea-photo-u1?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"),
(14, 'no', 'chips', 'Rembrandt', 'The Anatomy Lesson of Dr. Nicolaes Tulp', '$721.25', "https://imgix.ranker.com/user_node_img/23/455180/original/anatomy-lesson-of-dr-nicolaes-tulp-photo-u1?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"),
(15, 'no', 'msc', 'J. M. W. Turner', 'The Fighting Temeraire', '$666.66', "https://imgix.ranker.com/user_node_img/110/2192029/original/the-fighting-temeraire-photo-u1?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"),
(16, 'no', 'msc', 'Emanuel Leutze', 'Washington Crossing the Delaware', '$102.50', "https://imgix.ranker.com/user_node_img/119/2362286/original/washington-crossing-the-delaware-photo-u2?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"),
(17, 'no', 'meat', 'Francisco Goya', 'The Third of May 1808', '$510.01', "https://imgix.ranker.com/user_node_img/112/2225478/original/the-third-of-may-1808-photo-u1?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"),
(18, 'no', 'chips', 'Vincent van Gogh', 'The Night Café', '$402.50', "https://imgix.ranker.com/user_node_img/111/2210420/original/the-night-caf_-photo-u1?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"),
(19, 'no', 'chocolate', 'Winslow Homer', 'Breezing Up', '$891.00', "https://imgix.ranker.com/user_node_img/1114/22279193/original/breezing-up-photo-u2?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375"),
(20, 'no', 'msc', 'J. M. W. Turner', 'The Slave Ship', '$399.99', "https://imgix.ranker.com/user_node_img/112/2221416/original/the-slave-ship-photo-u1?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375");

-- --------------------------------------------------------

--
-- Table structure for table `shipping deets`
--

CREATE TABLE `shipping deets` (
  `id` int(10) NOT NULL,
  `trackingnum` varchar(200) NOT NULL,
  `ETA` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping deets`
--

INSERT INTO `shipping deets` (`id`, `trackingnum`, `ETA`) VALUES
(1, '3200066534', 'Decemeber 5th, 2022'),
(2, '3264366534', 'Decemeber 5th, 2022'),
(3, '3200364534', 'Decemeber 5th, 2022'),
(4, '3264366534', 'Decemeber 5th, 2022'),
(5, '3264300034', 'Decemeber 5th, 2022'),
(6, '3264836534', 'Decemeber 5th, 2022'),
(7, '3264366534', 'Decemeber 5th, 2022'),
(8, '3200066534', 'Decemeber 5th, 2022');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `card` varchar(200) DEFAULT NULL,
  `cvv` varchar(200) DEFAULT NULL,
  `expiry` varchar(200) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `user_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `card`, `cvv`, `expiry`, `password`, `address`, `user_type`) VALUES
(1, 'MrGuy', 'guy@gmail.com', '1111111111111111', '123', '12/24', 'password', 'university drive', 'customer'),
(2, 'MsGirl', 'girl@gmail.com', '2222222222222222', '533', '04/25', 'password', 'university drive', 'customer'),
(3, 'Jana', 'Jana@ucalgary.ca', '3333333333333333', '354', '10/24', 'password', 'university drive', 'customer'),
(4, 'Sathya', 'baby@ucalgary.ca', '4444444444444444', '163', '08/26', 'password', 'university drive', 'customer'),
(5, 'adminsayma', 'sayma@gmail.com', '2222222222222222', '533', '04/25', 'adminpass', 'university drive', 'admin'),
(6, 'adminsamira', 'samira@gmail.com', '3333333333333333', '354', '10/24', 'adminpass', 'university drive', 'admin'),
(7, 'adminmichele', 'michele@gmail.com', '4444444444444444', '163', '08/26', 'adminpass', 'university drive', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distributer`
--
ALTER TABLE `distributer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping deets`
--
ALTER TABLE `shipping deets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
-- ALTER TABLE `users`
--   ADD PRIMARY KEY (`id`),
--   ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `distributer`

ALTER TABLE `distributer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `shipping deets`
--
ALTER TABLE `shipping deets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

-- --
-- -- AUTO_INCREMENT for table `users`
-- --
-- ALTER TABLE `users`
--   MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
-- COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;