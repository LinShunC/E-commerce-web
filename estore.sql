-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2019 at 08:37 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estore`
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
-- Table structure for table `accessorysupport`
--

CREATE TABLE `accessorysupport` (
  `accId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `supportedPID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accessorysupport`
--

INSERT INTO `accessorysupport` (`accId`, `productId`, `supportedPID`) VALUES
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
(3, 20, 11),
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
(3, 20, 11),
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
(3, 20, 11),
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
(3, 20, 11),
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
(5, 24),
(1, 15),
(1, 16),
(2, 17),
(2, 18),
(3, 19),
(3, 20),
(4, 21),
(4, 22),
(5, 23),
(5, 24),
(1, 15),
(1, 16),
(2, 17),
(2, 18),
(3, 19),
(3, 20),
(4, 21),
(4, 22),
(5, 23),
(5, 24),
(1, 15),
(1, 16),
(2, 17),
(2, 18),
(3, 19),
(3, 20),
(4, 21),
(4, 22),
(5, 23),
(5, 24),
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
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `catagoryId` int(11) NOT NULL,
  `cName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`catagoryId`, `cName`) VALUES
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
  `catagoryId` int(11) NOT NULL,
  `ProductDescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `pName`, `price`, `detail`, `catagoryId`, `ProductDescription`) VALUES
(1, 'Google Pixel 3 64GB (Clearly White)', 1199.00, '', 1, '<b>Overview</b>\r\n<br>\r\n<b>Hey Google, get it done</b><br>\r\nGet more done with an extraordinary camera, fast-charging battery [1] and the helpful Google Assistant built in [2] . Its the essential Google experience, at a smart price.<br><b>Capture better pictures with Night Sight.</b><br>\r\nYou will never want to use your flash again. Night Sight lets you capture rich detail and colour, even in the dark.'),
(2, 'Google Pixel 3a XL 64GB (Just Black)', 799.00, '', 1, '<b>Overview</b>\r\n<br>\r\n<b>Hey Google, get it done</b><br>\r\nGet more done with an extraordinary camera, fast-charging battery [1] and the helpful Google Assistant built in [2] . Its the essential Google experience, at a smart price.<br><b>Capture better pictures with Night Sight.</b><br>\r\nYou will never want to use your flash again. Night Sight lets you capture rich detail and colour, even in the dark.'),
(3, 'Apple iPhone XS Max 64GB (Space Grey)', 1799.00, '', 2, '<b>Overview</b><br>\r\n\r\niPhone XS Max features a 6.5-inch Super Retina display with custom-engineered OLED panels for an HDR display that provides the  best colour accuracy, as well as true blacks and remarkable brightness.1 Advanced Face ID lets you securely unlock your iPhone, log in to apps and pay with just a glance. The A12 Bionic chip with next-generation Neural Engine uses real-time machine learning to transform the way you experience photos, gaming, augmented reality and more. '),
(4, 'Apple iPhone 8 64GB (Space Grey)', 979.00, '', 2, '<b>Overview</b><br>\r\n\r\niPhone 8 is a new generation of iPhone. Designed with the most durable glass ever in a smartphone and a stronger, aerospace-grade aluminium band. Charges wirelessly.1 Resists water and dust.2 4.7-inch Retina HD display with True Tone.3 12-megapixel camera with a new sensor and an advanced image signal processor. Powered by A11 Bionic, the smartest and most powerful chip ever in a smartphone. Supports augmented reality experiences in games and apps. With iPhone 8, intelligence has never looked better.'),
(5, 'Samsung Galaxy S9 256GB (Midnight Black)', 1149.00, '', 3, '<b>Overview</b><br>\r\n\r\n<b>Super Slow-mo</b><br>\r\nThe camera that radically slows down time, making everyday moments epic.\r\n<br>\r\n<b>AR Emoji</b><br>\r\nThe camera that turns you into an emoji, so you are not the you everyone else is.\r\n<br>\r\n<b>Dual Aperture</b><br>\r\nThe revolutionary camera that adapts like the human eye, capturing stunning pictures in super low light.'),
(6, 'Samsung Galaxy S10 128GB (Prism Green)', 1349.00, '', 3, '<b>Overview</b><br>\r\n\r\nNo notch. No interruptions. The powerful new Galaxy S10 features a cinematic bezel-less screen to give you immersive viewing. Shoot like a professional with our Pro-grade camera and count on a battery so powerful, it can charge others with Wireless PowerShare.'),
(7, 'OPPO AX5s (Black)', 279.00, '', 4, '<b>Overview</b><br>\r\n\r\n<b>Waterdrop Screen</b><br>\r\n<b>Widen your view</b><br>\r\nThe vibrant display features a striking 6.2-inch Corning Gorilla Glass screen, enabling you to view more of what you love in a truly immersive experience.\r\n\r\n<br><b>Classic Colour</b><br>\r\nDesigned with you in mind\r\nJust like a diamond is timeless, the OPPO AX5s comes in two classic colourways, Red or Black. Show your inner artistic temperament with flare and style.\r\n\r\n'),
(8, 'OPPO Reno Z (Aurora Purple)', 499.00, '', 4, '<b>Overview</b><br>\r\n\r\nReno is about seeing the world from completely new perspectives. The technology behind Reno elevates photography and mobile entertainment to all-new heights. Let Reno further your vision.\r\n\r\n<br><b>3D Sleek Unified Body</b><br>\r\n<b>Appropriate but Not Compromising, Neat but Never Dull</b><br> \r\nThe Reno Z powerful camera lies concealed within the flawless contours of its 3D Corning Gorilla Glass 5 surface. With its radian shape designed to fit comfortably in your hand and cleverly designed O-Dot anti-abrasion structure, its look and feel bring to mind a gently rippling pool.  \r\n\r\n<br><b>Hidden Fingerprint Unlock</b><br>\r\nUnlock at the Speed of Light\r\nAn upgraded recognition structure combined with a more efficient AI algorithm enables even faster and more accurate unlocking.\r\n'),
(9, 'Huawei Nova 3e (Klein Blue)', 399.00, '', 5, '<B>Overview</B><BR>\r\n\r\n<b>The Best Just Got Better</b><br>\r\nLose yourself in your screen with new generation HUAWEI FullView Display. Designed for life on the go with no compromises, the HUAWEI Nova 3e sports a sleek compact frame that is almost entirely dedicated to its 5.84-inch Full HD screen.<br>\r\n<b>Body & Soul</b><br>\r\nThe HUAWEI Nova 3e takes colour to a higher level. Delve deeper into Klein Blue, a radiant shade that incorporates a nanometer-level light dazzle texture. Available too in deepest Midnight Black to contrast against the vibrancy of the Full HD screen, refined classic Platinum Gold and Sakura Pink with its rich pearlescent tone.'),
(10, 'Huawei P30 Pro (Breathing Crystal)', 1399.00, '', 5, '<b>Overview</b><br>\r\n\r\nZoom in to explore the mystery of the celestial at night, watch an eagle hovering over trees or examine the delicate details of crystal. Capture the best things happening now and create your vision for the future. The HUAWEI P30 Pro is accentuating a new peak of smartphone photography.\r\n\r\n<br><b>The Future of Photography</b><br>\r\nThe revolutionary Leica Quad Camera System enhances your photography letting you see the world in its entirety. With the combination of a SuperZoom and Ultra Wide Angle Lens, a 40 megapixel Super Sensing Camera and a unique HUAWEI TOF Camera (Time-of-flight camera), the Huawei P30 Pro lets you capture beauty in all its splendour.\r\n\r\n.'),
(11, 'LG V30+ 128GB Handset (Black)', 799.00, '', 6, '<b>Overview</b><br>\r\n\r\n<b>Balanced Dsign</b></br>\r\nSturdy and Seamless</br>\r\nThe LG V30+ is LG\'s ultimate expression of visual quality, with seamless curves, minimal bezels, and a 6\" OLED FullVision Display - all fitting in the palm of your hand.<br>\r\nThe phone has an IP68 rating.\r\n\r\n<br><b>Key Features</b></br>\r\n\r\n6\" QHD+ OLED FullVision Display\r\nSee More, Hold Less\r\nThe LG OLED display has breathtaking colour accuracy, and incorporates plastic for higher flexibility. Combined with FullVision technology, the LG V30+ 6 display makes your viewing experience a real treat'),
(12, 'LG V40 ThinQ 128GB Handset (Moroccan Blue)', 799.00, '', 6, '<b>Key Features</b><br>\r\n\r\n<b>See More, Hold Less</b><br>\r\nDesign that draws you in. Get immersed in perfect blacks with the large 6.4 OLED FullVision display, precisely engineered from metal and glass in a form that feels truly natural to hold.\r\n\r\n<br><b>Triple Preview</b><br>\r\nGet a live preview of all three rear cameras telephoto zoom, standard and super wide-to compare and select the best lens for your scene.\r\n\r\n<br><b>Triple Shot</b><br>\r\nEasily capture three photos-standard, telephoto zoom, and super wide-angle with just one click.'),
(13, 'Nokia 8.1 (Steel/Copper)', 649.00, '', 7, '<b>Overview</b><br>\r\n\r\nElegantly European, the Nokia 8.1 punches above its weight with the latest innovations from Google and extraordinary imaging achieved with its highly sensitive, industry-leading sensor, dual cameras with ZEISS optics and AI-Advanced 20MP Selfie Camera. PureDisplay screen technology delivers stunning HDR cinematic-quality even in bright sunlight, while Qualcomm\'s new high-performance Snapdragon 710 processor and Android 9 Pie\'s Adaptive Battery ensures smooth performance for up to 2 days on a single charge1.\r\n\r\n\r\n<br><b>Key Features</b><br>\r\n\r\nLatest Google innovations\r\nUnleash the power of AI with Google\'s latest Android 9 Pie. It will adapt to how you use your phone and improve over time, keeping things running smoother for longer. And, as part of the Android One family, Nokia 8.1 delivers a clean, intuitive and easy-to-navigate user experience endorsed by Google with guaranteed software upgrades and monthly security updates.'),
(14, 'Nokia 9 PureView with Android One (Midnight Blue)', 899.00, '', 7, '<b>Overview</b><br>\r\n\r\nEnjoy a Google-designed OS experience that\'s refreshingly pure and intuitive in a phone made for photography enthusiasts. It\'s free from hidden processes that eat-up battery life and comes packed with the latest AI innovations. Plus, as part of the Android One family your Nokia will be among the first to receive new features from Google-so it just keeps getting better.\r\n\r\n<br>\r\n<b>Key Features</b><br>\r\n\r\n<b>World\'s first 5-camera array with ZEISS optics, in a phone made for photographers.</b><br>\r\nThe industry defying camera captures DSLR-quality depth of field and 10 x more light than single-colour sensors[1]. All 5 of the 12MP cameras shoot simultaneously - with 3 monochromatic sensors for sharpness and 2 colour sensors. So, whether you\'re a photographer or enthusiast you can now shoot photos on your phone with unparalleled dynamic range.'),
(15, 'Jackery Power2Go Dock with 2 x 5100mAh Power Bank', 109.95, '', 8, '<b>Key Features</b><br>\r\n\r\nCharge up to 2 devices simultaneously<br>\r\n\r\nUp To 250 Hours extra Operation Time<br>\r\n\r\nAdvanced power lock technology for up to 6 months standby power<br>\r\n\r\n5100mAH x 2 Battery Capacity<br>\r\n\r\nInput: 5V/2A<br>\r\n\r\nOutput: 5V/2.1A<br>\r\n\r\nLightweight Design<br>\r\n\r\nIncludes Micro USB Cable<br>\r\n\r\nPre-Charged & ready for use<br>\r\n\r\nLED charge indicator<br>\r\n\r\nAirplane-safe<br>\r\n\r\n'),
(16, 'Cygnett ChargeUp Compact 10,000 mAh (Black)', 59.95, '', 8, '0'),
(17, 'Samsung Data Cable Combo (Type-C and Micro USB)', 19.95, '', 8, '0'),
(18, 'Belkin MixIT DuraTek Lightning to USB Cable (Gold)', 34.95, '', 8, '0'),
(19, 'XCD Essentials 5 Port USB Charger 39W/7.8A', 49.95, '', 8, '0'),
(20, 'Belkin BoostUp 5W Qi Wireless Charging Stand (Black)', 49.94, '', 8, '0'),
(21, 'Griffin TPU Film Screen Protector for Samsung Galaxy S10', 24.95, '', 8, '0'),
(22, 'Cygnett RealCurve 3D Double Tempered Glass for Google Pixel 3', 49.94, '', 8, '0'),
(23, 'Lifeproof Fre Case for iPhone XS Max (Black)', 129.95, '', 8, '0'),
(24, 'Speck Presidio Stay Clear Case for Google Pixel 3', 49.95, '', 8, '0');

-- --------------------------------------------------------

--
-- Table structure for table `productdetail`
--

CREATE TABLE `productdetail` (
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
-- Indexes for table `accessorysupport`
--
ALTER TABLE `accessorysupport`
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
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`catagoryId`);

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
-- Indexes for table `productdetail`
--
ALTER TABLE `productdetail`
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
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `catagoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `productdetail`
--
ALTER TABLE `productdetail`
  MODIFY `detailId` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accessorysupport`
--
ALTER TABLE `accessorysupport`
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
-- Constraints for table `productdetail`
--
ALTER TABLE `productdetail`
  ADD CONSTRAINT `productDetail_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
