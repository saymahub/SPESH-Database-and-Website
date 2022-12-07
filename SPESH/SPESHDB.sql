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
  `phone` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `distributer`
--

INSERT INTO `distributer` (`id`, `first name`, `last name`, `email`, `country`, `phone`) VALUES
(1, 'Phil', 'Simpson', 'phil@distrib.ca', 'Japan', '184 758 3920'),
(2, 'Jasmeender', 'Simpson', 'Jasmeender@distrib.ca', 'Japan', '264 901 7284'),
(3, 'Siwon', 'Choi', 'Siwon@distrib.ca', 'Japan', '740 154 9174'),
(4, 'George', 'Simpson', 'george@distrib.ca', 'Japan', '910 274 8394'),
(5, 'Daniel', 'Simpson', 'daniel@distrib.ca', 'Japan', '672 839 0940'),
(6, 'Sangeet', 'Paramjeet', 'sangeet@distrib.ca', 'Japan', '567 890 2345'),
(7, 'Barthalomew', 'Simpson', 'Barthalomew@distrib.ca', 'Japan', '876 498 3900'),
(8, 'Putin', 'Simpson', 'putin@distrib.ca', 'Japan', '536 738 3988');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `country` varchar(200) NOT NULL,
  `bought` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `prod name` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `image url` varbinary(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `country`, `bought`, `category`, `description`, `prod name`, `price`, `image url`) VALUES
(0, 'United States', 'no', 'sweets', 'meat', 'Cotton Candy Oreo', '$10.00', 0x68747470733a2f2f70656f706c652e636f6d2f74686d622f394151526462525853557571486f4e527756586f6d657876315a733d2f3135303078302f66696c746572733a6e6f5f75707363616c6528293a6d61785f627974657328313530303030293a73747269705f69636328293a666f63616c2832393978303a3330317832292f6f72656f2d30312d363030783435302d63353736396530633237623434313538613736353363643266616332313339382e6a7067),
(1, 'United States', 'no', 'sweets', 'A sweet treat for kids at festivals!', 'Cotton Candy Oreo', '$10.00', 0x68747470733a2f2f70656f706c652e636f6d2f74686d622f394151526462525853557571486f4e527756586f6d657876315a733d2f3135303078302f66696c746572733a6e6f5f75707363616c6528293a6d61785f627974657328313530303030293a73747269705f69636328293a666f63616c2832393978303a3330317832292f6f72656f2d30312d363030783435302d63353736396530633237623434313538613736353363643266616332313339382e6a7067),
(2, 'Japan', 'no', 'sweets', 'Yuck? NO! Crunchy and delish.', 'Candied crabs', '$1.00', 0x68747470733a2f2f692e7974696d672e636f6d2f76692f78596e5f664e334f3972632f6d617872657364656661756c742e6a7067),
(3, 'United Kingdom', 'no', 'chips', 'Not vegan friendly', 'Cajun Squirrel chips', '$3.00', 0x68747470733a2f2f63382e616c616d792e636f6d2f636f6d702f4243315830302f7061636b65742d6f662d77616c6b6572732d63616a756e2d737175697272656c2d666c61766f75722d6372697370732d4243315830302e6a7067),
(4, 'Australia', 'no', 'chocolate', 'Nutritious and delicious ;). Austrailias favourite.', 'Vegemite Cadbury', '$15.00', 0x68747470733a2f2f732e79696d672e636f6d2f6e792f6170692f7265732f312e322f59596448416755694c345374475466366f744a6f4d512d2d2f595842776157513961476c6e61477868626d526c636a746f505459324e672d2d2f68747470733a2f2f732e79696d672e636f6d2f6f732f656e2d41552f686f6d6572756e2f79372e7961686f6f376c6966657374796c652f3866393566656465346133323261653262326335613665643265316636383663),
(5, 'United States', 'no', 'msc', 'Can you handle the heat?', 'Hot Sauce Almonds', '$7.89', 0x68747470733a2f2f6d2e6d656469612d616d617a6f6e2e636f6d2f696d616765732f492f3631485a6d484d52696d4c2e5f41435f53583432355f2e6a7067),
(6, 'Pakistan', 'no', 'msc', 'You\'ve never tasted this before', 'Lemon and Pepper tang', '$9.00', 0x68747470733a2f2f692e65626179696d672e636f6d2f696d616765732f672f77495541414f5377354d4667613052522f732d6c3530302e6a7067),
(7, 'Bulgaria', 'no', 'chips', 'A gamers favourite snack.', 'Mountain Dew Cheetos', '$11.00', 0x68747470733a2f2f7777772e62616b657279616e64736e61636b732e636f6d2f7661722f7772626d5f67625f666f6f645f706861726d612f73746f726167652f696d616765732f332f302f372f392f313332393730332d312d656e672d47422f4d6f756e7461696e2d4465772d666c61766f7265642d43686565746f732d696e2d4a6170616e2e6a7067),
(8, 'Britain', 'no', 'chocolate', 'Keeps the vampires away :P', 'Garlic Chocolate', '$32.00', 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e3a414e6439476352785147376c53416852523756344b487a5f5758447279416d366f46337969716e5047706630465f436c444c776d3037366f3769314c336a692d4b7a3946647a5133546c3826757371703d434155),
(9, 'Austrailia', 'no', 'msc', 'Warning: might melt before delivery.', 'Fish and Chips Gelato', '$2.99', 0x68747470733a2f2f6c6976652e737461746963666c69636b722e636f6d2f343039372f353434393731393636335f303964393734373665385f622e6a7067),
(10, 'Russia', 'no', 'meat', 'Are you as dry as I am?', 'Dried Wild Fish', '$16.00', 0x68747470733a2f2f696d672e3231666f6f642e636f6d2f32303131303630392f70726f647563742f313330363931303734393634352e6a7067),
(11, 'Mexico', 'no', 'msc', 'The best combination of Mexico and Italy', 'Salsagheti', '$1.50', 0x68747470733a2f2f63646e2e73686f706966792e636f6d2f732f66696c65732f312f303336322f303534322f383837322f70726f64756374732f38313430363662302d633863372d343261332d626539322d3033343565663334346438342d34336361386466656664343333326261336533633231376535373265326630642e6a70673f763d31363336363633343835),
(12, 'Iceland', 'no', 'meat', 'At least it\'s fermented', 'Hákarl (Fermented Shark Meat)', '$10.00', 0x68747470733a2f2f696d616765732e6669727374776566656173742e636f6d2f636f6d706c65782f696d6167652f75706c6f61642f635f6c696d69742c665f6175746f2c666c5f6c6f7373792c715f6175746f2c775f313130302f646f62636e68667136773471767a617676316f662e6a7067),
(13, 'Belgium', 'no', 'sweets', 'The French don\'t want them. ', 'Curry-Flavoured Macarons', '$10.00', 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e3a414e6439476353396d5f624b416f67497a676a384177525271596d375150744b37394635314e54434e6c704e6777325a43512673),
(14, 'Scotland', 'no', 'chips', 'It\'s not as bad as it sounds.', 'Haggis (Sheep Innards) and Black Pepper Chips', '$7.25', 0x68747470733a2f2f696d616765732e6669727374776566656173742e636f6d2f636f6d706c65782f696d6167652f75706c6f61642f635f66696c6c2c6470725f6175746f2c665f6175746f2c666c5f6c6f7373792c675f666163652c715f6175746f2c775f313238302f6e62766831706578746b7a663479776e747065692e6a7067),
(15, 'Japan', 'no', 'msc', 'Italian children.', 'Spaghetti Flavoured Popsicles', '$66.66', 0x68747470733a2f2f63646e2e7472656e6468756e7465727374617469632e636f6d2f7068707468756d626e61696c732f3233352f3233353136362f3233353136365f325f3830302e6a7065673f6175746f3d77656270),
(16, 'Bulgaria', 'no', 'msc', 'Oh yummy Samu\'s favourite.', 'instant noodles', '$0.50', 0x68747470733a2f2f63646e2e746865776972656375747465722e636f6d2f77702d636f6e74656e742f75706c6f6164732f323032302f30362f6e6f6f646c65732d6c6f777265732d383630372e6a7067),
(17, 'Thailand', 'no', 'meat', 'These tiny critters are delicious.', 'Jing Leed (Grasshoppers)', '$10.01', 0x68747470733a2f2f7777772e7368757474657273746f636b2e636f6d2f696d6167652d70686f746f2f73636f7270696f6e2d646565702d66726965642d696e73656374732d62616e676b6f6b2d3236306e772d313032363537373631352e6a7067),
(18, 'New Zealand', 'no', 'chips', 'Not a baaa baaaaa d idea', 'Lamb And Mint Chips', '$4.50', 0x68747470733a2f2f7777772e7461717569746f732e6e65742f696d2f736e2f57616c6b6572732d4c616d624d696e742e6a7067),
(19, 'Japan', 'no', 'chocolate', 'It\'s corn1 A big lumb of knobs!', 'Grilled Corn KitKat', '$8.00', 0x68747470733a2f2f6c6976652e737461746963666c69636b722e636f6d2f323735372f343136333330373032375f653032386535376434375f622e6a7067),
(20, 'United States', 'no', 'msc', 'Dippin into chocolate', 'Brownie Flavour Hummus Dip', '$3.99', 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f696d616765733f713d74626e3a414e6439476353545075547a617979385a4b48644239396d6967456f4850366e5758664c3653596f4a5126757371703d434155);

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
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

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
--
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

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
