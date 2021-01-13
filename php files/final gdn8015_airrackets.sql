-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2020 at 04:31 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gdn8015_airrackets`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `activity_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `manager_name` varchar(30) NOT NULL,
  `place` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active',
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`activity_id`, `admin_id`, `manager_name`, `place`, `date`, `time`, `status`, `description`) VALUES
(1, 7, 'Mike Doe', 'Penguin Beach', '2014-01-01', '02:00:00', 'active', 'Bacon ipusum textBacon ipusum textBacon ipusum tex'),
(2, 7, 'John Doe', 'Parguito Beach', '2014-11-07', '02:00:00', 'active', ' ipusum textBacon ipusum tex'),
(3, 7, 'Jason Doe', 'Parguito Beach', '2014-11-07', '02:00:00', 'denied', ' ipusum textBacon ipusum tex'),
(4, 7, 'Mike Doe', 'The Yaque Beach', '2020-05-14', '02:00:00', 'active', 'Bacon ipusum textBacon ipusum textBacon ipusum tex');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL,
  `contact_1_id` int(11) NOT NULL,
  `contact_2_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `contact_1_id`, `contact_2_id`) VALUES
(1, 6, 2),
(2, 6, 3),
(3, 6, 4),
(4, 6, 5),
(5, 6, 7),
(6, 7, 1),
(7, 6, 1),
(8, 7, 2),
(9, 7, 3),
(10, 7, 4),
(11, 7, 5),
(12, 7, 6),
(13, 7, 8),
(14, 7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `friend_id` int(11) NOT NULL,
  `friend_1_id` int(11) NOT NULL,
  `friend_2_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friend_id`, `friend_1_id`, `friend_2_id`) VALUES
(1, 6, 2),
(2, 6, 3),
(3, 6, 4),
(4, 6, 5),
(5, 6, 7),
(6, 7, 1),
(7, 6, 1),
(8, 7, 2),
(9, 7, 3),
(10, 7, 4),
(11, 7, 5),
(12, 7, 6),
(13, 7, 8),
(14, 7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `store_logo` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `blade` varchar(30) NOT NULL,
  `core` varchar(20) NOT NULL,
  `size` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `grip_tape` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `quantity` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `date_added` date NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `store_id`, `product_name`, `type`, `image`, `store_logo`, `description`, `blade`, `core`, `size`, `color`, `grip_tape`, `status`, `quantity`, `code`, `date_added`, `price`) VALUES
(1, 1, 'PRO COMPETITION BLACK STAR', 'PROFESSIONAL', 'img-proyect/BLACK_STAR.jpg', 'img-proyect/shops/image-asset-logo.jpg', 'The blade is made from 12K carbon fibre laminated over a foam injected polyeurethane', '', '', '', '', '', 'active', 25, 183, '2014-11-07', '25.00'),
(2, 1, 'PERFORMANCE FLAMINGO', 'PROFESSIONAL', 'img-proyect/productos/FLAMINGO_04.jpg', 'img-proyect/shops/image-asset-logo.jpg', 'The blade is made from painted glassfiber laminated over a foam injected polyeutharane\r\n', '', '', '', '', '', 'little', 5, 219, '2014-11-07', '40.00'),
(3, 2, 'PERFORMANCE OCEAN', 'PROFESSIONAL', 'img-proyect/productos/OCEAN_04.jpg', 'img-proyect/shops/image-asset-logo2.jpg', 'The blade is made from painted glassfiber laminated over a foam injected polyeutharane', '', '', '', '', '', 'normal', 12, 657, '2014-11-07', '46.00'),
(4, 2, 'PERFORMANCE FIRE', 'PROFESSIONAL', 'img-proyect/productos/FIRE_04.jpg', 'img-proyect/shops/image-asset-logo3.jpg', 'The blade is made from painted glassfiber laminated over a foam injected polyeutharane', '', '', '', '', '', 'exhausted', 0, 175, '2014-11-07', '46.50'),
(5, 2, 'PERFORMANCE VIPER', 'PROFESSIONAL', 'img-proyect/productos/VIPER_04-1.jpg', 'img-proyect/shops/image-asset-logo.jpg', 'The blade is made from painted glassfiber laminated over a foam injected polyeutharane', '', '', '', '', '', 'exhausted', 0, 176, '2014-11-07', '35.50'),
(6, 1, 'PERFORMANCE BRAZIL', 'PROFESSIONAL', 'img-proyect/productos/BRAZIL_04.jpg', 'img-proyect/shops/image-asset-logo4.jpg', 'The blade is made from painted glassfiber laminated over a foam injected polyeutharane', '', '', '', '', '', 'active', 33, 321, '2014-11-07', '35.50'),
(7, 2, 'PACK BLUE & GREEN NEPTUNO', 'PACK', 'img-proyect/productos/pack-bluegreen-neptuno.jpg', 'img-proyect/shops/image-asset-logo4.jpg', 'pack of 2 paddles', '', '', '', 'blue and green', '', 'active', 33, 52, '2014-11-07', '35.50'),
(8, 3, 'BTR 900 PRECISI RED', 'PADDLE', 'img-proyect/productos/BTR+900+Precisi+n+negro.png', 'img-proyect/shops/image-asset-logo5.jpg', 'pack of 2 paddles', '', '', '', 'red', '', 'active', 22, 522, '2019-11-07', '25.50');

-- --------------------------------------------------------

--
-- Table structure for table `product_order1`
--

CREATE TABLE `product_order1` (
  `product_id` int(11) NOT NULL,
  `order_id` varchar(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `image` varchar(50) NOT NULL,
  `store_image` varchar(50) NOT NULL,
  `client_image` varchar(50) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `quantity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_order1`
--

INSERT INTO `product_order1` (`product_id`, `order_id`, `product_name`, `date`, `image`, `store_image`, `client_image`, `client_name`, `status`, `quantity`) VALUES
(1, 'OR123', 'PRO COMPETITION BLACK STAR', '2019-01-01', 'img-proyect/BLACK_STAR.jpg', 'img-proyect/shops/image-asset-logo.jpg', 'img-proyect/user1-128x128.jpg', 'Brad Diesel', 'Pending', '90'),
(2, 'OR123', 'PRO COMPETITION BLACK STAR', '2019-01-01', 'img-proyect/BLACK_STAR.jpg', 'img-proyect/shops/image-asset-logo.jpg', 'img-proyect/user8-128x128.jpg', 'John Pierce', 'Pending', '76'),
(3, 'OR456', 'PRO COMPETITION BLACK STAR', '2019-01-01', 'img-proyect/BLACK_STAR.jpg', 'img-proyect/shops/image-asset-logo.jpg', 'img-proyect/user3-128x128.jpg', 'Nora Silvester', 'Pending', '69'),
(4, 'OR098', 'PERFORMANCE VIPER', '2019-01-01', 'img-proyect/VIPER_04-1.jpg', 'img-proyect/shops/image-asset-logo.jpg', 'img-proyect/user2-128x128.jpg', 'James Perez', 'Delivered', '90');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `store_name` varchar(30) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `date_created` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `user_id`, `store_name`, `logo`, `date_created`, `status`) VALUES
(1, 2, 'Beach Boar', 'img-proyect/shops/image-asset-logo.jpg', '2019-01-01', 'active'),
(2, 13, 'CLASF', 'img-proyect/shops/image-asset-logo1.jpg', '2019-01-01', 'active'),
(3, 11, 'DECATHLON', 'img-proyect/shops/image-asset-logo2.jpg', '2019-01-01', 'active'),
(4, 14, 'DCM', 'img-proyect/shops/image-asset-logo3.jpg', '2019-01-01', 'active'),
(5, 12, 'PlayaLover', 'img-proyect/shops/image-asset-logo4.jpg', '2019-01-01', 'active'),
(6, 15, 'Rafaello', 'img-proyect/shops/image-asset-logo5.jpg', '2019-01-01', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `team_id` int(11) NOT NULL,
  `team_creator_id` int(11) NOT NULL,
  `team_name` varchar(20) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `description` varchar(300) NOT NULL,
  `team_date_created` date NOT NULL,
  `num_members` int(11) NOT NULL,
  `games_participated` int(11) NOT NULL,
  `games_won` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_id`, `team_creator_id`, `team_name`, `logo`, `description`, `team_date_created`, `num_members`, `games_participated`, `games_won`, `status`) VALUES
(1, 7, 'Shark', 'img-proyect/image0-100.png', 'We are here to make not only a team but a great family because each member matters to us and they are special for sharks that are not intimidated by our logo, come and enjoy a pleasant family atmosphere.', '2020-04-04', 45, 200, 20, 'active'),
(2, 7, 'NAVIGATOR KING', 'img-proyect/image1-100.png', 'We are here to make not only a team but a great family because each member.', '2019-04-04', 45, 200, 20, 'active'),
(3, 7, 'SWEET ORANGES', 'img-proyect/image2-100.png', 'We are here to make not only a team but a great family because each member.', '2019-04-04', 45, 200, 20, 'active'),
(4, 7, 'SAND BOATERS', 'img-proyect/image3-100.png', 'We are here to make not only a team but a great family because each member.', '2019-04-04', 45, 200, 20, 'active'),
(5, 1, 'SEA BREEZES', 'img-proyect/image4-100.png', 'We are here to make not only a team but a great family because each member.', '2019-04-04', 45, 200, 20, 'active'),
(6, 2, 'BRAVE FOXES', 'img-proyect/image5-100.png', 'We are here to make not only a team but a great family because each member.', '2019-04-04', 45, 200, 20, 'active'),
(7, 3, 'BIRDS OF THE SUN', 'img-proyect/image6-100.png', 'We are here to make not only a team but a great family because each member.', '2019-04-04', 45, 200, 20, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `team_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `date_joined` date NOT NULL,
  `position` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`team_id`, `player_id`, `date_joined`, `position`, `status`) VALUES
(1, 1, '2019-01-02', 'captain', 'active'),
(1, 2, '2019-01-02', 'gamer', 'active'),
(1, 3, '2019-01-02', 'captain', 'active'),
(1, 4, '2019-01-02', 'captain', 'active'),
(1, 5, '2019-01-02', 'captain', 'active'),
(1, 6, '2019-01-02', 'captain', 'active'),
(1, 7, '2019-01-02', 'captain', 'active'),
(1, 8, '2019-01-02', 'captain', 'active'),
(1, 9, '2019-01-02', 'captain', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `birthday` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `altphone` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `beach` varchar(50) NOT NULL,
  `racket` varchar(50) NOT NULL,
  `team` varchar(50) NOT NULL,
  `hands` varchar(50) NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `usertype`, `photo`, `age`, `birthday`, `gender`, `profession`, `tel`, `altphone`, `address`, `country`, `city`, `beach`, `racket`, `team`, `hands`, `approved`) VALUES
(1, 'Jonh Alvarado', 'john@gmail.com', 'Password;1', 'gamer', 'img-proyect/user1-128x128.jpg', 40, '01/01/1980', 'male', 'Web designer', '1231231234', '3213214321', 'Demo Street 123', 'US', 'Demo City', 'Parguito Beach', 'blackstar', 'Shark', 'left', 0),
(2, 'HariGanapathy', 'store1@gmail.com', 'Password;1', 'store', 'img-proyect/user2-128x128.jpg', 12, '12-12-2012', 'Male', 'web dev', '1231231234', '123312', '12323121dj2nf', 'us', 'arlington', 'Parguito Beach', 'black', 'Shark', 'R', 1),
(3, 'Hari', 'admin2@gmail.com', 'Password;1', 'admin', 'img-proyect/user3-128x128.jpg', 0, '', 'Male', '', '', '', '', '', '', 'Parguito Beach', '', 'Shark', '', 0),
(4, 'Hari Ganapathy', 'hariganapathy.k@gmail.com', 'Qwert#12', 'gamer', 'img-proyect/user4-128x128.jpg', 22, '12/05/2000', 'Male', 'Student', '7641263452', '', 'Pinewoods', 'USA', 'Arlington', 'Miami', 'Wilson', 'Manchester', 'Right', 1),
(5, 'Mounick Karnam Mohan Babu', 'mounickkm97@gmail.com', 'Asdfg#12', 'gamer', 'img-proyect/user5-128x128.jpg', 22, '10/27/1997', 'Male', 'Student', '3213214321', '1231231234', 'Meadow Run', 'US', 'Arlington', 'Florida', 'Brazil ', 'Barcelona', 'Right', 1),
(6, 'Golay Nie', 'michaelvickexp@yahoo.com', 'Password;1', 'gamer', 'img-proyect/user6-128x128.jpg', 25, '01/01/1990', 'Male', 'Web dev', '3213214321', '1231231234', '123 Street', 'US', 'Arlington', 'Parguito Beach', 'braz', 'Shark', 'right', 0),
(7, 'Admin Golay', 'golay7@gmail.com', 'Password;2', 'admin', 'img-proyect/user7-128x128.jpg\r\n', 25, '01/01/1990', 'Male', 'Web dev', '3213214321', '1231231234', '321 st', 'US', 'Arlington', 'Parguito Beach', '', 'Shark', 'right', 0),
(8, 'Kamila Gil', 'kamila@gmail.com', 'Password;1', 'gamer', 'img-proyect/user8-128x128.jpg', 40, '01/01/1980', 'male', 'Graphic artist', '1231231234', '3213214321', 'Demo Street 123', 'US', 'Demo City', 'beach1', 'blackstar', 'Shark', 'left', 0),
(9, 'Altonio Nieto', 'altonio@gmail.com', 'Password;1', 'gamer', 'img-proyect/avatar1.PNG', 40, '01/01/1980', 'male', 'Mech E', '1231231234', '3213214321', 'Demo Street 123', 'US', 'Demo City', 'beach1', 'blackstar', 'Shark', 'left', 0),
(11, 'Sam 2', 'store2@gmail.com', 'Password;1', 'store', 'img-proyect/avatar2.PNG', 12, '12-12-2012', 'Male', 'qwfwef', '232131', '123312', '12323121dj2nf', 'US', 'Demo City', 'Parguito Beach', 'eve rv', 'Shark', '', 0),
(12, 'Sam 3', 'store3@gmail.com', 'Password;1', 'store', 'img-proyect/avatar3.PNG', 12, '12-12-2012', 'Male', 'qwfwef', '232131', '123312', '12323121dj2nf', 'US', 'Demo City', 'Parguito Beach', 'eve rv', 'Shark', '', 0),
(13, 'Sam 4', 'store4@gmail.com', 'Password;1', 'store', 'img-proyect/avatar2.PNG', 12, '12-12-2012', 'Male', 'qwfwef', '232131', '123312', '12323121dj2nf', 'US', 'Demo City', 'Parguito Beach', 'eve rv', 'Shark', '', 0),
(14, 'Sam 5', 'store5@gmail.com', 'Password;1', 'store', 'img-proyect/avatar3.PNG', 12, '12-12-2012', 'Male', 'qwfwef', '232131', '123312', '12323121dj2nf', 'US', 'Demo City', 'Parguito Beach', 'eve rv', 'Shark', '', 1),
(15, 'Sam 6', 'store6@gmail.com', 'Password;1', 'store', 'img-proyect/avatar2.PNG', 12, '12-12-2012', 'Male', 'qwfwef', '232131', '123312', '12323121dj2nf', 'US', 'Demo City', 'Parguito Beach', 'eve rv', 'Shark', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `contact_1_id` (`contact_1_id`),
  ADD KEY `contact_2_id` (`contact_2_id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`friend_id`),
  ADD KEY `friend_1_id` (`friend_1_id`) USING BTREE,
  ADD KEY `friend_2_id` (`friend_2_id`) USING BTREE;

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `product_ibfk_1` (`store_id`);

--
-- Indexes for table `product_order1`
--
ALTER TABLE `product_order1`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`),
  ADD KEY `team_creator_id` (`team_creator_id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`team_id`,`player_id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `friend_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_order1`
--
ALTER TABLE `product_order1`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`contact_1_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contacts_ibfk_2` FOREIGN KEY (`contact_2_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`friend_1_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`friend_2_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`);

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`team_creator_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `team_members`
--
ALTER TABLE `team_members`
  ADD CONSTRAINT `team_members_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_members_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
