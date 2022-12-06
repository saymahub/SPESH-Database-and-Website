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
  `bought` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `prod name` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `image url` varbinary(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `product` (`id`, `country`, `bought`,`description`, `prod name`, `price`, `image url`) VALUES
(0, 'United States', 'no', 'meat', 'Cotton Candy Oreo', '$10.00', 'https://people.com/thmb/9AQRdbRXSUuqHoNRwVXomexv1Zs=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(299x0:301x2)/oreo-01-600x450-c5769e0c27b44158a7653cd2fac21398.jpg'),
(1, 'United States', 'no', 'A sweet treat for kids at festivals!', 'Cotton Candy Oreo', '$10.00', 'https://people.com/thmb/9AQRdbRXSUuqHoNRwVXomexv1Zs=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(299x0:301x2)/oreo-01-600x450-c5769e0c27b44158a7653cd2fac21398.jpg'),
(2, 'Japan', 'no', 'Yuck? NO! Crunchy and delish.', 'Candied crabs', '$1.00', 'https://i.ytimg.com/vi/xYn_fN3O9rc/maxresdefault.jpg'),
(3, 'United Kingdom', 'no', 'Not vegan friendly', 'Cajun Squirrel chips', '$3.00', 'https://c8.alamy.com/comp/BC1X00/packet-of-walkers-cajun-squirrel-flavour-crisps-BC1X00.jpg'),
(4, 'Australia', 'no', 'Nutritious and delicious ;). Austrailias favourite.', 'Vegemite Cadbury', '$15.00', 'https://s.yimg.com/ny/api/res/1.2/YYdHAgUiL4StGTf6otJoMQ--/YXBwaWQ9aGlnaGxhbmRlcjtoPTY2Ng--/https://s.yimg.com/os/en-AU/homerun/y7.yahoo7lifestyle/8f95fede4a322ae2b2c5a6ed2e1f686c'),
(5, 'United States', 'no', 'Can you handle the heat?', 'Hot Sauce Almonds', '$7.89', 'https://m.media-amazon.com/images/I/61HZmHMRimL._AC_SX425_.jpg'),
(6, 'Pakistan', 'no', "You've never tasted this before", 'Lemon and Pepper tang', '$9.00', 'https://i.ebayimg.com/images/g/wIUAAOSw5MFga0RR/s-l500.jpg'),
(7, 'Bulgaria', 'no', 'A gamers favourite snack.', 'Mountain Dew Cheetos', '$11.00', 'https://www.bakeryandsnacks.com/var/wrbm_gb_food_pharma/storage/images/3/0/7/9/1329703-1-eng-GB/Mountain-Dew-flavored-Cheetos-in-Japan.jpg'),
(8, 'Britain', 'no', 'Keeps the vampires away :P', 'Garlic Chocolate', '$32.00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxQG7lSAhRR7V4KHz_WXDryAm6oF3yiqnPGpf0F_ClDLwm076o7i1L3ji-Kz9FdzQ3Tl8&usqp=CAU'),
(9, 'Austrailia', 'no', 'Warning: might melt before delivery.', 'Fish and Chips Gelato', '$2.99', 'https://live.staticflickr.com/4097/5449719663_09d97476e8_b.jpg'),
(10, 'Russia', 'no', "Are you as dry as I am?", 'Dried Wild Fish', '$16.00', 'https://img.21food.com/20110609/product/1306910749645.jpg'),
(11, 'Mexico', 'no', "The best combination of Mexico and Italy", 'Salsagheti', '$1.50', 'https://cdn.shopify.com/s/files/1/0362/0542/8872/products/814066b0-c8c7-42a3-be92-0345ef344d84-43ca8dfefd4332ba3e3c217e572e2f0d.jpg?v=1636663485'),
(12, 'Iceland', 'no', "At least it's fermented", 'Hákarl (Fermented Shark Meat)', '$10.00', 'https://images.firstwefeast.com/complex/image/upload/c_limit,f_auto,fl_lossy,q_auto,w_1100/dobcnhfq6w4qvzavv1of.jpg'),
(13, 'Belgium', 'no', "The French don't want them. ", 'Curry-Flavoured Macarons', '$10.00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9m_bKAogIzgj8AwRRqYm7QPtK79F51NTCNlpNgw2ZCQ&s'),
(14, 'Scotland', 'no', "It's not as bad as it sounds.", 'Haggis (Sheep Innards) and Black Pepper Chips', '$7.25', 'https://images.firstwefeast.com/complex/image/upload/c_fill,dpr_auto,f_auto,fl_lossy,g_face,q_auto,w_1280/nbvh1pextkzf4ywntpei.jpg'),
(15, 'Japan', 'no', "Italian children.", 'Spaghetti Flavoured Popsicles', '$66.66', 'https://cdn.trendhunterstatic.com/phpthumbnails/235/235166/235166_2_800.jpeg?auto=webp'),
(16, 'Bulgaria', 'no', "Oh yummy Samu's favourite.", 'instant noodles', '$0.50', 'https://cdn.thewirecutter.com/wp-content/uploads/2020/06/noodles-lowres-8607.jpg'),
(17, 'Thailand', 'no', 'These tiny critters are delicious.', 'Jing Leed (Grasshoppers)', '$10.01', 'https://www.shutterstock.com/image-photo/scorpion-deep-fried-insects-bangkok-260nw-1026577615.jpg'),
(18, 'New Zealand', 'no', "Not a baaa baaaaa d idea", 'Lamb And Mint Chips', '$4.50', 'https://www.taquitos.net/im/sn/Walkers-LambMint.jpg'),
(19, 'Japan', 'no', "It's corn1 A big lumb of knobs!", 'Grilled Corn KitKat', '$8.00', 'https://live.staticflickr.com/2757/4163307027_e028e57d47_b.jpg'),
(20, 'United States', 'no', "Dippin into chocolate", 'Brownie Flavour Hummus Dip', '$3.99', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTPuTzayy8ZKHdB99migEoHP6nWXfL6SYoJQ&usqp=CAU');


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
