-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 06:34 AM
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

INSERT INTO `distributer` (`id`, `first name`, `last name`, `email`, `country`, `phone`, `image`) VALUES
(0, 'Phil', 'Simpson', 'phil@distrib.ca', 'Japan', '184 758 3920', 'https://upload.wikimedia.org/wikipedia/en/d/da/Matt_LeBlanc_as_Joey_Tribbiani.jpg'),
(1, 'Phil', 'Simpson', 'phil@distrib.ca', 'Japan', '184 758 3920', 'https://upload.wikimedia.org/wikipedia/en/d/da/Matt_LeBlanc_as_Joey_Tribbiani.jpg'),
(2, 'Jasmeender', 'Simpson', 'Jasmeender@distrib.ca', 'Japan', '264 901 7284', 'https://m.media-amazon.com/images/M/MV5BMTM3NjcyODE1Nl5BMl5BanBnXkFtZTYwMjE1ODU3._V1_.jpg'),
(3, 'Siwon', 'Choi', 'Siwon@distrib.ca', 'Japan', '740 154 9174', 'https://i.pinimg.com/originals/32/cb/60/32cb600629bfdad9cbe5f138a67dc7d3.jpg'),
(4, 'George', 'Simpson', 'george@distrib.ca', 'Japan', '910 274 8394', 'https://i.pinimg.com/736x/a3/e1/56/a3e156bd4a2227ecbde97c6907e20a02.jpg'),
(5, 'Daniel', 'Simpson', 'daniel@distrib.ca', 'Japan', '672 839 0940', 'https://www.cs.colostate.edu/workshop/Students/hawkinsh/joey001.jpg'),
(6, 'Troy', 'Bolton', 'sangeet@distrib.ca', 'Japan', '567 890 2345', 'https://fotografias.antena3.com/clipping/cmsimages01/2018/10/18/226A74E0-C67D-40BA-BD22-9EE8E9909F51/69.jpg?crop=1:1,smart&width=1200&height=1200&optimize=low&format=webply'),
(7, 'Barthalomew', 'Simpson', 'Barthalomew@distrib.ca', 'Japan', '876 498 3900', 'https://todofriends.com/wp-content/uploads/2021/03/Joey-833x1024.jpg'),
(8, 'Putin', 'Simpson', 'putin@distrib.ca', 'Japan', '536 738 3988', 'https://i.guim.co.uk/img/media/513976d50736695ee8bd5014175e007f9980531f/0_289_2980_1788/master/2980.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=77863ec7b2622437668af3ff9ecd7ae6');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `bought` varchar(200) NOT NULL,
  `style` varchar(200) NOT NULL,
  `artist` varchar(200) NOT NULL,
  `prod name` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `image url` varbinary(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `bought`, `style`, `artist`, `prod name`, `price`, `image url`) VALUES
(0, 'no', 'romantic', 'Ivan Aivazovsky', 'The Ninth Wave', '$101.00', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f323233312f34343631363735332f6f726967696e616c2f7468652d6e696e74682d776176652d70686f746f2d75313f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d323030),
(1, 'no', 'romantic', 'Ivan Aivazovsky', 'The Ninth Wave', '$101.00', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f323233312f34343631363735332f6f726967696e616c2f7468652d6e696e74682d776176652d70686f746f2d75313f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d333735),
(2, 'no', 'victorian', 'John William Waterhouse', 'The Lady of Shalott', '$129.00', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f3437352f393439343037342f6f726967696e616c2f7468652d6c6164792d6f662d7368616c6f74742d70686f746f2d75333f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d333735),
(3, 'no', 'impressionism', 'Pierre-Auguste Renoir', 'Dance at Le Moulin de la Galette', '$376.99', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f32372f3533363930382f6f726967696e616c2f62616c2d61752d6d6f756c696e2d64652d6c612d67616c657474652d6d6f6e746d61727472652d70686f746f2d75323f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d333735),
(4, 'no', 'edo', 'Hokusai', 'The Great Wave off Kanagawa', '$152.89', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f313639382f33333935323633302f6f726967696e616c2f7468652d67726561742d776176652d6f66662d6b616e61676177612d70686f746f2d75323f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d333735),
(5, 'no', 'renaissance', 'Hieronymus Bosch', 'The Garden of Earthly Delights', '$738.89', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f3131302f323139343138302f6f726967696e616c2f7468652d67617264656e2d6f662d65617274686c792d64656c69676874732d70686f746f2d75353f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d333735),
(6, 'no', 'realism', 'Jean-François Millet', 'The Gleaners', '$927.99', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f3539372f31313933363337392f6f726967696e616c2f7468652d676c65616e6572732d70686f746f2d75313f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d333735),
(7, 'no', 'impressionism', 'Pierre-Auguste Renoir', 'Luncheon of the Boating Party', '$111.11', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f37352f313438373535332f6f726967696e616c2f6c756e6368656f6e2d6f662d7468652d626f6174696e672d70617274792d70686f746f2d75313f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d333735),
(8, 'no', 'impressionism', 'Georges-Pierre Seurat', 'Sunday Afternoon on the Island of La Grande Jatte', '$321.00', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f3130372f323132313431322f6f726967696e616c2f73756e6461792d61667465726e6f6f6e2d6f6e2d7468652d69736c616e642d6f662d6c612d6772616e64652d6a617474652d70686f746f2d75333f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d333735),
(9, 'no', 'impressionism', 'Gustave Caillebotte', 'Paris Street; Rainy Day', '$224.99', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f38382f313735363531302f6f726967696e616c2f70617269732d7374726565745f2d7261696e792d6461792d70686f746f2d75323f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d333735),
(10, 'no', 'realism', 'Édouard Manet', 'A Bar at the Folies-Bergère', '$161.00', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f32372f3532313236362f6f726967696e616c2f612d6261722d61742d7468652d666f6c6965732d626572675f72652d70686f746f2d75313f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d333735),
(11, 'no', 'romantic', 'Théodore Géricault', 'The Raft of the Medusa', '$189.50', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f39342f313836353935382f6f726967696e616c2f7468652d726166742d6f662d7468652d6d65647573612d70686f746f2d75313f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d333735),
(12, 'no', 'religious', 'Carl Bloch', 'In a Roman Osteria', '$210.00', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f35303039302f313030313738313130372f6f726967696e616c2f696e2d612d726f6d616e2d6f7374657269612d70686f746f2d75323f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d333735),
(13, 'no', 'romantic', 'Caspar David Friedrich', 'Moonrise Over the Sea', '$843.99', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f3536372f31313333343736382f6f726967696e616c2f6d6f6f6e726973652d6f7665722d7468652d7365612d70686f746f2d75313f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d333735),
(14, 'no', 'baroque', 'Rembrandt', 'The Anatomy Lesson of Dr. Nicolaes Tulp', '$721.25', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f32332f3435353138302f6f726967696e616c2f616e61746f6d792d6c6573736f6e2d6f662d64722d6e69636f6c6165732d74756c702d70686f746f2d75313f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d333735),
(15, 'no', 'romantic', 'J. M. W. Turner', 'The Fighting Temeraire', '$666.66', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f3131302f323139323032392f6f726967696e616c2f7468652d6669676874696e672d74656d6572616972652d70686f746f2d75313f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d333735),
(16, 'no', 'romantic', 'Emanuel Leutze', 'Washington Crossing the Delaware', '$102.50', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f3131392f323336323238362f6f726967696e616c2f77617368696e67746f6e2d63726f7373696e672d7468652d64656c61776172652d70686f746f2d75323f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d333735),
(17, 'no', 'renaissance', 'Leonardo Da Vinci', 'Annunciation', '$510.01', "https://www.theartist.me/wp-content/uploads/2021/01/renaissance.jpg"),
(18, 'no', 'impressionism', 'Vincent Van Gogh', 'The Night Café', '$402.50', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f3131312f323231303432302f6f726967696e616c2f7468652d6e696768742d6361665f2d70686f746f2d75313f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d333735),
(19, 'no', 'realism', 'Winslow Homer', 'Breezing Up', '$891.00', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f313131342f32323237393139332f6f726967696e616c2f627265657a696e672d75702d70686f746f2d75323f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d333735),
(20, 'no', 'romantic', 'J. M. W. Turner', 'The Slave Ship', '$399.99', 0x68747470733a2f2f696d6769782e72616e6b65722e636f6d2f757365725f6e6f64655f696d672f3131322f323232313431362f6f726967696e616c2f7468652d736c6176652d736869702d70686f746f2d75313f6175746f3d666f726d617426713d3630266669743d63726f7026666d3d706a7067266470723d3226773d333735);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_deets`
--

CREATE TABLE `shipping_deets` (
  `id` int(10) NOT NULL,
  `ETA` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_deets`
--

INSERT INTO `shipping_deets` (`id`, `ETA`) VALUES
(1, '10/19/2023'),
(2, '9/21/2025'),
(3, '10/19/2025'),
(4, '9/27/2025');

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
-- Indexes for table `shipping_deets`
--
ALTER TABLE `shipping_deets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
-- AUTO_INCREMENT for table `shipping_deets`
--
ALTER TABLE `shipping_deets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
