-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 06, 2019 at 01:29 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eStore`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessory`
--

CREATE TABLE `accessory` (
  `accId` int(11) NOT NULL,
  `accType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accessory`
--

INSERT INTO `accessory` (`accId`, `accType`) VALUES
(1, 'power bank'),
(2, 'cable'),
(3, 'charger'),
(4, 'screen protector'),
(5, 'case');

-- --------------------------------------------------------

--
-- Table structure for table `accessorySupport`
--

CREATE TABLE `accessorySupport` (
  `accId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `supportedPID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accessorySupport`
--

INSERT INTO `accessorySupport` (`accId`, `productId`, `supportedPID`) VALUES
(2, 18, 4),
(2, 18, 3),
(4, 21, 6),
(4, 22, 1),
(5, 23, 3),
(5, 24, 1),
(3, 20, 4),
(3, 20, 3),
(3, 20, 1),
(3, 20, 5),
(3, 20, 8),
(3, 20, 10),
(3, 20, 12),
(3, 20, 14),
(3, 20, 11);

-- --------------------------------------------------------

--
-- Table structure for table `accessory_product`
--

CREATE TABLE `accessory_product` (
  `accId` int(11) NOT NULL,
  `productId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accessory_product`
--

INSERT INTO `accessory_product` (`accId`, `productId`) VALUES
(1, 15),
(1, 16),
(2, 17),
(2, 18),
(3, 19),
(3, 20),
(4, 21),
(4, 22),
(5, 23),
(5, 24);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart_product`
--

CREATE TABLE `cart_product` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `QTY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL,
  `cName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `cName`) VALUES
(1, 'Google'),
(2, 'Apple'),
(3, 'Samsung'),
(4, 'Oppo'),
(5, 'Huawei'),
(6, 'LG'),
(7, 'Nokia'),
(8, 'Accessory');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerId` int(11) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `lName` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contactNo` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `profilePic` varchar(20) DEFAULT NULL,
  `dob` date NOT NULL,
  `username` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerId`, `fName`, `lName`, `email`, `password`, `contactNo`, `address`, `profilePic`, `dob`, `username`) VALUES
(1, 'Jongjet', 'Wong', 'j_guzaa@hotmail.com', '$2y$10$4TMCvjYoRVXLnv1G2dT.BuMgae3wP0HSQB7fJ22FuiXjsbweNHXue', '0415555555', '1222', NULL, '2019-08-06', 'jguzaa'),
(25, 'Jim', 'Thomsan', 'jim@hotmail.com', '$2y$10$DdTn7tCjoRcPFdekGJD10.6GfEg4n4FLbgtl2F6CFVu0ngAABzcEy', '0411222323', '222', NULL, '1989-09-19', 'jim99'),
(26, 'Josh', 'Mighel', 'josh@hotmail.com', '$2y$10$z4W0yTwBcFBLQNGDRVWSwuAqQI6f3BEDiK6ASbwHypWMv1HwcOodK', '2222222222', '222', NULL, '2019-09-19', 'MJ001');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orderId` int(11) NOT NULL,
  `orderStatus` varchar(30) NOT NULL,
  `trackingNo` varchar(10) NOT NULL,
  `customerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `QTY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentId` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `orderId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `pictureId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `link1` varchar(100) NOT NULL,
  `link2` varchar(100) NOT NULL,
  `link3` varchar(100) NOT NULL,
  `link4` varchar(100) NOT NULL,
  `link5` varchar(100) NOT NULL,
  `link6` varchar(100) NOT NULL,
  `link7` varchar(100) NOT NULL,
  `link8` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`pictureId`, `productId`, `link1`, `link2`, `link3`, `link4`, `link5`, `link6`, `link7`, `link8`) VALUES
(1, 1, 'Pictures/Products/phones/Google-px3-1.jpg', 'Pictures/Products/phones/Google-px3-2.jpg', '', '', '', '', '', ''),
(2, 2, 'Pictures/Products/phones/Google-px3xl-1.jpg', 'Pictures/Products/phones/Google-px3xl-2.jpg', '', '', '', '', '', ''),
(3, 3, 'Pictures/Products/phones/Apple-xsm-1.jpg', 'Pictures/Products/phones/Apple-xsm-2.jpg', '', '', '', '', '', ''),
(4, 4, 'Pictures/Products/phones/Apple-8-1.jpg', 'Pictures/Products/phones/Apple-8-2.jpg', '', '', '', '', '', ''),
(5, 5, 'Pictures/Products/phones/SS-s9-1.jpg', 'Pictures/Products/phones/SS-s9-2.jpg', 'Pictures/Products/phones/SS-s9-3.jpg', '', '', '', '', ''),
(6, 6, 'Pictures/Products/phones/SS-s10-1.jpg', 'Pictures/Products/phones/SS-s10-2.jpg', 'Pictures/Products/phones/SS-s10-3.jpg', 'Pictures/Products/phones/SS-s10-4.jpg', 'Pictures/Products/phones/SS-s10-5.jpg', 'Pictures/Products/phones/SS-s10-6.jpg', '', ''),
(7, 7, 'Pictures/Products/phones/oppo-AX5s-1.jpg', 'Pictures/Products/phones/oppo-AX5s-2.jpg', 'Pictures/Products/phones/oppo-AX5s-3.jpg', 'Pictures/Products/phones/oppo-AX5s-4.jpg', 'Pictures/Products/phones/oppo-AX5s-5.jpg', 'Pictures/Products/phones/oppo-AX5s-6.jpg', '', ''),
(8, 8, 'Pictures/Products/phones/oppo-renoZ-1.jpg', 'Pictures/Products/phones/oppo-renoZ-2.jpg', 'Pictures/Products/phones/oppo-renoZ-3.jpg', 'Pictures/Products/phones/oppo-renoZ-4.jpg', '', '', '', ''),
(9, 9, 'Pictures/Products/phones/Hw-nova3e-1.jpg', 'Pictures/Products/phones/Hw-nova3e-2.jpg', 'Pictures/Products/phones/Hw-nova3e-3.jpg', 'Pictures/Products/phones/Hw-nova3e-4.jpg', 'Pictures/Products/phones/Hw-nova3e-5.jpg', 'Pictures/Products/phones/Hw-nova3e-6.jpg', 'Pictures/Products/phones/Hw-nova3e-7.jpg', 'Pictures/Products/phones/Hw-nova3e-8.jpg'),
(10, 10, 'Pictures/Products/phones/Hw-p30p-1.jpg', 'Pictures/Products/phones/Hw-p30p-2.jpg', 'Pictures/Products/phones/Hw-p30p-3.jpg', 'Pictures/Products/phones/Hw-p30p-4.jpg', 'Pictures/Products/phones/Hw-p30p-5.jpg', '', '', ''),
(11, 11, 'Pictures/Products/phones/LG-v30p-1.jpg', 'Pictures/Products/phones/LG-v30p-2.jpg', 'Pictures/Products/phones/LG-v30p-3.jpg', 'Pictures/Products/phones/LG-v30p-4.jpg', 'Pictures/Products/phones/LG-v30p-5.jpg', 'Pictures/Products/phones/LG-v30p-6.jpg', 'Pictures/Products/phones/LG-v30p-7.jpg', 'Pictures/Products/phones/LG-v30p-8.jpg'),
(12, 12, 'Pictures/Products/phones/LG-v40-1.jpg', 'Pictures/Products/phones/LG-v40-2.jpg', 'Pictures/Products/phones/LG-v40-3.jpg', 'Pictures/Products/phones/LG-v40-4.jpg', 'Pictures/Products/phones/LG-v40-5.jpg', '', '', ''),
(13, 13, 'Pictures/Products/phones/nokia-8-1-1.jpg', 'Pictures/Products/phones/nokia-8-1-2.jpg', 'Pictures/Products/phones/nokia-8-1-3.jpg', 'Pictures/Products/phones/nokia-8-1-4.jpg', 'Pictures/Products/phones/nokia-8-1-5.jpg', 'Pictures/Products/phones/nokia-8-1-6.jpg', '', ''),
(14, 14, 'Pictures/Products/phones/nokia-9-1.jpg', 'Pictures/Products/phones/nokia-9-2.jpg', 'Pictures/Products/phones/nokia-9-3.jpg', 'Pictures/Products/phones/nokia-9-4.jpg', 'Pictures/Products/phones/nokia-9-5.jpg', 'Pictures/Products/phones/nokia-9-6.jpg', '', ''),
(15, 15, 'Pictures/Products/accessories/acc-PWBank-JKR-any-1.jpg', '', '', '', '', '', '', ''),
(16, 16, 'Pictures/Products/accessories/acc-PWBank-CN-any-1.png', '', '', '', '', '', '', ''),
(17, 17, 'Pictures/Products/accessories/acc-Cable-SS-MicroNC-1.jpg', 'Pictures/Products/accessories/acc-Cable-SS-MicroNC-2.jpg', 'Pictures/Products/accessories/acc-Cable-SS-MicroNC-3.jpg', 'Pictures/Products/accessories/acc-Cable-SS-MicroNC-4.jpg', '', '', '', ''),
(18, 18, 'Pictures/Products/accessories/acc-Cable-Belkin-LN-1.png', 'Pictures/Products/accessories/acc-Cable-Belkin-LN-2.png', 'Pictures/Products/accessories/acc-Cable-Belkin-LN-3.png', '', '', '', '', ''),
(19, 19, 'Pictures/Products/accessories/acc-Chg-XCD-any-1.jpg', '', '', '', '', '', '', ''),
(20, 20, 'Pictures/Products/accessories/acc-Chg-Belkin-wChg-1.jpg', '', '', '', '', '', '', ''),
(21, 21, 'Pictures/Products/accessories/acc-SCProt-Griff-SsS10-1.jpg', '', '', '', '', '', '', ''),
(22, 22, 'Pictures/Products/accessories/acc-SCProt-CN-GgPx3-1.jpg', '', '', '', '', '', '', ''),
(23, 23, 'Pictures/Products/accessories/acc-case-lifepf-apXsM-1.jpg', 'Pictures/Products/accessories/acc-case-lifepf-apXsM-2.jpg', 'Pictures/Products/accessories/acc-case-lifepf-apXsM-3.jpg', 'Pictures/Products/accessories/acc-case-lifepf-apXsM-4.jpg', 'Pictures/Products/accessories/acc-case-lifepf-apXsM-5.jpg', '', '', ''),
(24, 24, 'Pictures/Products/accessories/acc-case-SP-GP3-1.jpg', 'Pictures/Products/accessories/acc-case-SP-GP3-2.jpg', 'Pictures/Products/accessories/acc-case-SP-GP3-3.jpg', 'Pictures/Products/accessories/acc-case-SP-GP3-4.jpg', 'Pictures/Products/accessories/acc-case-SP-GP3-5.jpg', 'Pictures/Products/accessories/acc-case-SP-GP3-6.jpg', 'Pictures/Products/accessories/acc-case-SP-GP3-7.jpg', 'Pictures/Products/accessories/acc-case-SP-GP3-8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `pName` varchar(80) NOT NULL,
  `price` double(6,2) NOT NULL,
  `detail` varchar(50) NOT NULL,
  `catagoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `pName`, `price`, `detail`, `catagoryId`) VALUES
(1, 'Google Pixel 3 64GB (Clearly White)', 1199.00, '', 1),
(2, 'Google Pixel 3a XL 64GB (Just Black)', 799.00, '', 1),
(3, 'Apple iPhone XS Max 64GB (Space Grey)', 1799.00, '', 2),
(4, 'Apple iPhone 8 64GB (Space Grey)', 979.00, '', 2),
(5, 'Samsung Galaxy S9 256GB (Midnight Black)', 1149.00, '', 3),
(6, 'Samsung Galaxy S10 128GB (Prism Green)', 1349.00, '', 3),
(7, 'OPPO AX5s (Black)', 279.00, '', 4),
(8, 'OPPO Reno Z (Aurora Purple)', 499.00, '', 4),
(9, 'Huawei Nova 3e (Klein Blue)', 399.00, '', 5),
(10, 'Huawei P30 Pro (Breathing Crystal)', 1399.00, '', 5),
(11, 'LG V30+ 128GB Handset (Black)', 799.00, '', 6),
(12, 'LG V40 ThinQ 128GB Handset (Moroccan Blue)', 799.00, '', 6),
(13, 'Nokia 8.1 (Steel/Copper)', 649.00, '', 7),
(14, 'Nokia 9 PureView with Android One (Midnight Blue)', 899.00, '', 7),
(15, 'Jackery Power2Go Dock with 2 x 5100mAh Power Bank', 109.95, '', 8),
(16, 'Cygnett ChargeUp Compact 10,000 mAh (Black)', 59.95, '', 8),
(17, 'Samsung Data Cable Combo (Type-C and Micro USB)', 19.95, '', 8),
(18, 'Belkin MixIT DuraTek Lightning to USB Cable (Gold)', 34.95, '', 8),
(19, 'XCD Essentials 5 Port USB Charger 39W/7.8A', 49.95, '', 8),
(20, 'Belkin BoostUp 5W Qi Wireless Charging Stand (Black)', 49.94, '', 8),
(21, 'Griffin TPU Film Screen Protector for Samsung Galaxy S10', 24.95, '', 8),
(22, 'Cygnett RealCurve 3D Double Tempered Glass for Google Pixel 3', 49.94, '', 8),
(23, 'Lifeproof Fre Case for iPhone XS Max (Black)', 129.95, '', 8),
(24, 'Speck Presidio Stay Clear Case for Google Pixel 3', 49.95, '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `productDetail`
--

CREATE TABLE `productDetail` (
  `detailId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `detail1` varchar(1000) NOT NULL,
  `detail2` varchar(1000) NOT NULL,
  `detail3` varchar(1000) NOT NULL,
  `detail4` varchar(1000) NOT NULL,
  `detail5` varchar(1000) NOT NULL,
  `detail6` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessory`
--
ALTER TABLE `accessory`
  ADD PRIMARY KEY (`accId`);

--
-- Indexes for table `accessorySupport`
--
ALTER TABLE `accessorySupport`
  ADD KEY `accId` (`accId`),
  ADD KEY `productId` (`productId`),
  ADD KEY `supportedPID` (`supportedPID`);

--
-- Indexes for table `accessory_product`
--
ALTER TABLE `accessory_product`
  ADD KEY `accId` (`accId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `customerId` (`customerId`);

--
-- Indexes for table `cart_product`
--
ALTER TABLE `cart_product`
  ADD KEY `cartId` (`cartId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerId`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `customerId` (`customerId`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD KEY `orderId` (`orderId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentId`),
  ADD KEY `orderId` (`orderId`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`pictureId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `catagoryId` (`catagoryId`);

--
-- Indexes for table `productDetail`
--
ALTER TABLE `productDetail`
  ADD PRIMARY KEY (`detailId`),
  ADD KEY `productId` (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessory`
--
ALTER TABLE `accessory`
  MODIFY `accId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `pictureId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `productDetail`
--
ALTER TABLE `productDetail`
  MODIFY `detailId` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accessorySupport`
--
ALTER TABLE `accessorySupport`
  ADD CONSTRAINT `accessorySupport_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `accessorySupport_ibfk_2` FOREIGN KEY (`accId`) REFERENCES `accessory` (`accId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `accessorySupport_ibfk_3` FOREIGN KEY (`supportedPID`) REFERENCES `product` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `accessory_product`
--
ALTER TABLE `accessory_product`
  ADD CONSTRAINT `accessory_product_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `accessory_product_ibfk_2` FOREIGN KEY (`accId`) REFERENCES `accessory` (`accId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_product`
--
ALTER TABLE `cart_product`
  ADD CONSTRAINT `cart_product_ibfk_1` FOREIGN KEY (`cartId`) REFERENCES `cart` (`cartId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_product_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`orderId`) REFERENCES `order` (`orderId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `order_product` (`orderId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pictures`
--
ALTER TABLE `pictures`
  ADD CONSTRAINT `pictures_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`catagoryId`) REFERENCES `category` (`categoryId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `productDetail`
--
ALTER TABLE `productDetail`
  ADD CONSTRAINT `productDetail_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
