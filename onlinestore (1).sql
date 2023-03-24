-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2023 at 06:31 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(1, 'dudhatra', 'pratik', 'admin@samako.com', '$2y$10$tc5kQ8voWvAiZHst1P97ju/pBPCS6RnGJ1jZsY61Ss2Fef6GYF3eK'),
(2, 'pratik', 'dudhatra', 'p@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL,
  `status` enum('In_Use','Not_In_Use') NOT NULL,
  `Date_Added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `status`, `Date_Added`) VALUES
(2, 'Chair', 'In_Use', '2023-01-04'),
(3, 'Sofa', 'In_Use', '2023-01-04'),
(4, 'Table', 'In_Use', '2023-01-04'),
(5, 'Office Desk', 'In_Use', '2023-01-04'),
(6, 'Dinning', 'In_Use', '2023-01-04'),
(7, 'Bedroom', 'In_Use', '2023-01-04'),
(8, 'Occasional', 'In_Use', '2023-01-04'),
(9, 'Home Decor', 'In_Use', '2023-01-04');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `pquantity` varchar(255) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productprice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `pid`, `pquantity`, `orderid`, `productprice`) VALUES
(1, 19, '5', 1, '16'),
(2, 19, '5', 2, '16'),
(3, 1, '2', 2, '20990'),
(4, 1, '1', 3, '20990'),
(5, 20, '10', 3, '99'),
(6, 18, '1', 4, '12890'),
(7, 21, '1', 4, '75'),
(8, 2, '1', 5, '7590'),
(9, 19, '10', 5, '16'),
(10, 2, '1', 6, '7590'),
(11, 2, '1', 7, '7590'),
(12, 18, '1', 7, '12890'),
(13, 20, '1', 9, '120000'),
(14, 2, '1', 11, '40000'),
(15, 9, '1', 12, '40000'),
(16, 1, '1', 12, '40000'),
(17, 19, '1', 12, '15000'),
(18, 21, '1', 13, '120000'),
(19, 10, '1', 14, '40000'),
(20, 17, '1', 15, '15000'),
(21, 3, '1', 17, '15000'),
(22, 6, '1', 18, '15000'),
(23, 6, '1', 19, '15000'),
(24, 16, '1', 19, '15000'),
(25, 6, '1', 24, '15000'),
(26, 17, '1', 25, '20000'),
(27, 7, '1', 26, '40000');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `totalprice` varchar(255) NOT NULL,
  `orderstatus` varchar(255) NOT NULL,
  `paymentmode` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `totalprice`, `orderstatus`, `paymentmode`, `timestamp`) VALUES
(15, 10, '15000', 'Order Placed', 'on', '2023-01-31 17:54:48'),
(16, 10, '0', 'Order Placed', '', '2023-01-31 18:38:52'),
(17, 10, '15000', 'Order Placed', 'cod', '2023-01-31 18:39:45'),
(18, 10, '15000', 'Order Placed', 'on', '2023-01-31 18:41:22'),
(19, 10, '30000', 'Order Placed', 'on', '2023-01-31 18:42:57'),
(20, 11, '0', 'Order Placed', 'cod', '2023-01-31 19:13:05'),
(21, 12, '0', 'Order Placed', 'cod', '2023-01-31 20:46:13'),
(22, 13, '0', 'Order Placed', '', '2023-02-02 12:48:56'),
(24, 22, '15000', 'Order Placed', 'cod', '2023-03-10 10:37:34'),
(25, 22, '20000', 'Order Placed', 'cod', '2023-03-10 10:38:25'),
(26, 22, '40000', 'In Progress', 'cod', '2023-03-10 10:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `ordertracking`
--

CREATE TABLE `ordertracking` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertracking`
--

INSERT INTO `ordertracking` (`id`, `orderid`, `status`, `message`, `timestamp`) VALUES
(3, 3, 'Cancelled', ' I don&#39;t want this item now.', '2023-02-02 17:54:18'),
(5, 4, 'In Progress', ' Order is in Progress', '2023-01-30 13:31:08'),
(6, 5, 'In Progress', ' Order is in Progress', '2023-01-06 19:45:11'),
(7, 8, 'Cancelled', ' ', '2023-01-22 12:22:14'),
(8, 10, 'In Progress', ' the product has been delivered', '2023-02-22 13:49:50'),
(9, 9, 'Dispatched', ' delivery in 5 days', '2023-02-15 13:50:15'),
(10, 23, 'Cancelled', ' ', '2023-03-10 10:37:47'),
(11, 26, 'In Progress', ' in progress your product', '2023-03-10 11:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(2, 1, 'King Size', 40000, '<p>king size bed 6X6 in size</p>', '30.jpg', 'kingsize, bed'),
(3, 2, 'High Back chair', 22000, 'comfort for your office', '31.jpg', 'office seat, high back, leather seat'),
(4, 4, 'Round Table', 40000, '<p>dinning round table for a family of 8</p>', '6.jpg', 'dinning, round table'),
(5, 7, 'Bedroom set', 120000, '<p>complete bedroom set, kingsize bed, chest, shoe rack</p>', '18.jpg', 'bed, king size,chest'),
(6, 2, 'Arm Chair', 15000, '<p>arm chair brown in color single seater</p>', '17.jpg', 'arm chair, single seater'),
(7, 3, 'L Shape Sofa', 40000, '<p>Leather white L-Shape, sofa</p>', '15.jpg', 'Leather, L-shape, Sofa'),
(8, 1, 'Bed 2', 45000, '<p>bed 2</p>', '28.jpg', 'bed'),
(9, 1, 'product 19', 40000, '<p>product 19</p>', '19.jpg', 'product 19'),
(10, 3, 'product 2', 40000, '<p>product 2</p>', '2.jpg', 'sofa, clasic, 2 seater'),
(12, 5, 'Product 7', 45000, '<p>Office desk</p>', '7.jpg', 'office, desk'),
(13, 4, 'table 1', 19000, '<p>table table table</p>', '9.jpg', 'table, round'),
(14, 3, 'Product 38', 120000, '<p>sofa white, royal</p>', '38.jpg', 'sofa, royal'),
(15, 3, 'Product 39', 40000, '<p>lazy chair, maharaja</p>', '39.jpg', 'maharaja, lazy chair'),
(16, 2, 'Product 36', 35000, '<p>out door, school seats</p>', '36.jpg', 'Out door, chair, school'),
(17, 2, 'Product 35', 20000, '<p>chair</p>', '35.jpg', 'arm chair, single seater'),
(18, 3, 'Classic Sofa', 120000, '<p>recliner</p>', '4.jpg', 'sofa, clasic, 2 seater'),
(19, 2, 'Product 34', 15000, '<p>short back office chair, color block</p>', '34.jpg', 'office chair, chair'),
(20, 3, 'Classic Sofa', 120000, '<p>jghgjhg</p>', '2.jpg', 'sofa, clasic, 2 seater'),
(21, 3, 'Classic Sofa', 120000, 'sofa sofa', '4.jpg', 'sofa, clasic, 2 seater'),
(22, 3, 'Classic Sofa', 120000, 'sofa sofa', '4.jpg', 'sofa, clasic, 2 seater'),
(23, 1, 'King Size', 40000, 'bed', '21.jpg', 'bed, king size'),
(24, 3, 'sofa', 25000, '<p>sofa is very cool</p>', '123.jfif', 'sofa '),
(25, 4, 'table', 5000, '<p><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">Buy a Stunning Coffee&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Table</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Online for Your Beautiful Living Room. Your home is a reflection of your personality, and a&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">classy</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;coffee&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">table</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;in your living room.</span><br></p>', 'download (15).jfif', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `timestamp`) VALUES
(9, 'p@gmail.com', '1234', '2023-01-31 17:51:50'),
(10, 'pratik@gmail.com', '123', '2023-01-31 17:52:44'),
(11, 'pratik76@gmail.com', '$2y$10$Xk9ByHU96lwV6/kYHPTvzO7TBVojiVg3sO5YblJjF.SnfL8Tp8rI.', '2023-01-31 19:11:43'),
(12, 'pd@gmail.com', '$2y$10$4HGX2cxTLTTZnwtNgUrX9.CdfC7iJfl8PYb8OL.E3Tp5nuPtjtMfC', '2023-01-31 20:45:35'),
(13, 'pdudhatra@gmail.com', '$2y$10$zFRZ4VMjsRzVJ6XQCxievesHx/LA3szXwHx7GBrfjEtUjOMWyCI4.', '2023-02-02 12:48:19'),
(14, '', '$2y$10$Of/nKxcEuGBoHH0iWT2QPeByFYpRvXyou.ZvGAF8Gzb.YIdxoDBKi', '2023-03-10 10:25:39'),
(18, 'rahul@gmail.com', '$2y$10$IjYteZkBKQnvAxNHeIa3h.4XKspDYtcERTho0mgCb8Sxe2kgcxLVy', '2023-03-10 10:28:51'),
(22, 'patel@gmail.com', '$2y$10$TL6/aZs7QElUz6ZMeD3xPufEyK.mF6uTRIr6Ch9XH5rT7w8NmxxtW', '2023-03-10 10:33:31');

-- --------------------------------------------------------

--
-- Table structure for table `usersmeta`
--

CREATE TABLE `usersmeta` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersmeta`
--

INSERT INTO `usersmeta` (`id`, `uid`, `firstname`, `lastname`, `company`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `mobile`) VALUES
(1, 2, 'Vivek', 'V', 'Coding Cyber', 'Hyd', 'Hyd', 'Hyderabad', 'Telangana', '', '500060', ''),
(2, 6, 'Vivek', 'Vengala', 'Coding Cyber', '#201', 'DSNR', 'Hyderabad', 'Telangana', '', '500060', '9876543211'),
(3, 7, 'chris', 'erricks', 'starixc', '124 nakuru', 'highway towers ', 'nakuru', 'nakuru', 'SOM', '20100', '0712748950'),
(4, 8, 'Evans ', 'Kamau', 'Mwanzo', 'oginga odinga nakuru', 'gido plaza', 'nakuru', 'nakuru', 'SOM', '20100', '0725698574'),
(5, 10, 'pratik', 'dudhatra', '---', 'new plot', '', 'rajkot', 'gujrat', 'SOM', '362310', '9638527418'),
(6, 11, 'pratik', 'dudhatra', 'shop', 'new radhavadi palot,', 'junagadh ', 'junagadh', 'gujrat', 'IN', '362310', '8956231475'),
(7, 12, 'pratik', 'dudhatra', 'shop', 'new radhavadi palot,', 'junagadh ', 'rajkot', 'gujrat', 'IN', '362310', '9638527418'),
(8, 13, 'pratik', 'dudhatra', 'shop', 'new radhavadi palot,', 'junagadh ', 'junagadh', 'gujrat', 'IN', '362310', '9638527418'),
(9, 22, 'pratik', 'dudhatra', 'shop', 'new radhavadi palot,', 'junagadh ', 'rajkot', 'gujrat', 'SOM', '362310', '9638527418');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `pid`, `uid`, `timestamp`) VALUES
(6, 3, 10, '2023-01-31 18:39:07'),
(7, 6, 10, '2023-01-31 18:41:54'),
(8, 6, 22, '2023-03-10 10:42:31'),
(9, 7, 22, '2023-03-10 10:42:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertracking`
--
ALTER TABLE `ordertracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `usersmeta`
--
ALTER TABLE `usersmeta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `ordertracking`
--
ALTER TABLE `ordertracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `usersmeta`
--
ALTER TABLE `usersmeta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
