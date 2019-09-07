-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2019 at 10:22 AM
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
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `pName` varchar(80) NOT NULL,
  `price` double(6,2) NOT NULL,
  `catagoryId` int(11) NOT NULL,
  `ProductDescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `pName`, `price`, `catagoryId`, `ProductDescription`) VALUES
(1, 'Google Pixel 3 64GB (Clearly White)', 1199.00, 1, '<b>Overview</b> <br> <b>Hey Google, get it done</b><br> Get more done with an extraordinary camera, fast-charging battery [1] and the helpful Google Assistant built in [2] . Its the essential Google experience, at a smart price.<br><b>Capture better pictures with Night Sight.</b><br> You will never want to use your flash again. Night Sight lets you capture rich detail and colour, even in the dark.'),
(2, 'Google Pixel 3a XL 64GB (Just Black)', 799.00, 1, '<b>Overview</b> <br> <b>Hey Google, get it done</b><br> Get more done with an extraordinary camera, fast-charging battery [1] and the helpful Google Assistant built in [2] . Its the essential Google experience, at a smart price.<br><b>Capture better pictures with Night Sight.</b><br> You will never want to use your flash again. Night Sight lets you capture rich detail and colour, even in the dark.'),
(3, 'Apple iPhone XS Max 64GB (Space Grey)', 1799.00, 2, '<b>Overview</b><br>  iPhone XS Max features a 6.5-inch Super Retina display with custom-engineered OLED panels for an HDR display that provides the  best colour accuracy, as well as true blacks and remarkable brightness.1 Advanced Face ID lets you securely unlock your iPhone, log in to apps and pay with just a glance. The A12 Bionic chip with next-generation Neural Engine uses real-time machine learning to transform the way you experience photos, gaming, augmented reality and more. '),
(4, 'Apple iPhone 8 64GB (Space Grey)', 979.00, 2, '<b>Overview</b><br>  iPhone 8 is a new generation of iPhone. Designed with the most durable glass ever in a smartphone and a stronger, aerospace-grade aluminium band. Charges wirelessly.1 Resists water and dust.2 4.7-inch Retina HD display with True Tone.3 12-megapixel camera with a new sensor and an advanced image signal processor. Powered by A11 Bionic, the smartest and most powerful chip ever in a smartphone. Supports augmented reality experiences in games and apps. With iPhone 8, intelligence has never looked better.'),
(5, 'Samsung Galaxy S9 256GB (Midnight Black)', 1149.00, 3, '<b>Overview</b><br>  <b>Super Slow-mo</b><br> The camera that radically slows down time, making everyday moments epic. <br> <b>AR Emoji</b><br> The camera that turns you into an emoji, so you are not the you everyone else is. <br> <b>Dual Aperture</b><br> The revolutionary camera that adapts like the human eye, capturing stunning pictures in super low light.'),
(6, 'Samsung Galaxy S10 128GB (Prism Green)', 1349.00, 3, '<b>Overview</b><br>  No notch. No interruptions. The powerful new Galaxy S10 features a cinematic bezel-less screen to give you immersive viewing. Shoot like a professional with our Pro-grade camera and count on a battery so powerful, it can charge others with Wireless PowerShare.'),
(7, 'OPPO AX5s (Black)', 279.00, 4, '<b>Overview</b><br>  <b>Waterdrop Screen</b><br> <b>Widen your view</b><br> The vibrant display features a striking 6.2-inch Corning Gorilla Glass screen, enabling you to view more of what you love in a truly immersive experience.  <br><b>Classic Colour</b><br> Designed with you in mind Just like a diamond is timeless, the OPPO AX5s comes in two classic colourways, Red or Black. Show your inner artistic temperament with flare and style.'),
(8, 'OPPO Reno Z (Aurora Purple)', 499.00, 4, '<b>Overview</b><br>  Reno is about seeing the world from completely new perspectives. The technology behind Reno elevates photography and mobile entertainment to all-new heights. Let Reno further your vision.  <br><b>3D Sleek Unified Body</b><br> <b>Appropriate but Not Compromising, Neat but Never Dull</b><br>  The Reno Z powerful camera lies concealed within the flawless contours of its 3D Corning Gorilla Glass 5 surface. With its radian shape designed to fit comfortably in your hand and cleverly designed O-Dot anti-abrasion structure, its look and feel bring to mind a gently rippling pool.    <br><b>Hidden Fingerprint Unlock</b><br> Unlock at the Speed of Light An upgraded recognition structure combined with a more efficient AI algorithm enables even faster and more accurate unlocking.'),
(9, 'Huawei Nova 3e (Klein Blue)', 399.00, 5, '<B>Overview</B><BR>  <b>The Best Just Got Better</b><br> Lose yourself in your screen with new generation HUAWEI FullView Display. Designed for life on the go with no compromises, the HUAWEI Nova 3e sports a sleek compact frame that is almost entirely dedicated to its 5.84-inch Full HD screen.<br> <b>Body & Soul</b><br> The HUAWEI Nova 3e takes colour to a higher level. Delve deeper into Klein Blue, a radiant shade that incorporates a nanometer-level light dazzle texture. Available too in deepest Midnight Black to contrast against the vibrancy of the Full HD screen, refined classic Platinum Gold and Sakura Pink with its rich pearlescent tone.'),
(10, 'Huawei P30 Pro (Breathing Crystal)', 1399.00, 5, '<b>Overview</b><br>  Zoom in to explore the mystery of the celestial at night, watch an eagle hovering over trees or examine the delicate details of crystal. Capture the best things happening now and create your vision for the future. The HUAWEI P30 Pro is accentuating a new peak of smartphone photography.  <br><b>The Future of Photography</b><br> The revolutionary Leica Quad Camera System enhances your photography letting you see the world in its entirety. With the combination of a SuperZoom and Ultra Wide Angle Lens, a 40 megapixel Super Sensing Camera and a unique HUAWEI TOF Camera (Time-of-flight camera), the Huawei P30 Pro lets you capture beauty in all its splendour.  .'),
(11, 'LG V30+ 128GB Handset (Black)', 799.00, 6, '<b>Overview</b><br>  <b>Balanced Dsign</b></br> Sturdy and Seamless</br> The LG V30+ is LG\'s ultimate expression of visual quality, with seamless curves, minimal bezels, and a 6\" OLED FullVision Display - all fitting in the palm of your hand.<br> The phone has an IP68 rating.  <br><b>Key Features</b></br>  6\" QHD+ OLED FullVision Display See More, Hold Less The LG OLED display has breathtaking colour accuracy, and incorporates plastic for higher flexibility. Combined with FullVision technology, the LG V30+ 6 display makes your viewing experience a real treat'),
(12, 'LG V40 ThinQ 128GB Handset (Moroccan Blue)', 799.00, 6, '<b>Key Features</b><br>  <b>See More, Hold Less</b><br> Design that draws you in. Get immersed in perfect blacks with the large 6.4 OLED FullVision display, precisely engineered from metal and glass in a form that feels truly natural to hold.  <br><b>Triple Preview</b><br> Get a live preview of all three rear cameras telephoto zoom, standard and super wide-to compare and select the best lens for your scene.  <br><b>Triple Shot</b><br> Easily capture three photos-standard, telephoto zoom, and super wide-angle with just one click.'),
(13, 'Nokia 8.1 (Steel/Copper)', 649.00, 7, '<b>Overview</b><br>  Elegantly European, the Nokia 8.1 punches above its weight with the latest innovations from Google and extraordinary imaging achieved with its highly sensitive, industry-leading sensor, dual cameras with ZEISS optics and AI-Advanced 20MP Selfie Camera. PureDisplay screen technology delivers stunning HDR cinematic-quality even in bright sunlight, while Qualcomm\'s new high-performance Snapdragon 710 processor and Android 9 Pie\'s Adaptive Battery ensures smooth performance for up to 2 days on a single charge1.   <br><b>Key Features</b><br>  Latest Google innovations Unleash the power of AI with Google\'s latest Android 9 Pie. It will adapt to how you use your phone and improve over time, keeping things running smoother for longer. And, as part of the Android One family, Nokia 8.1 delivers a clean, intuitive and easy-to-navigate user experience endorsed by Google with guaranteed software upgrades and monthly security updates.'),
(14, 'Nokia 9 PureView with Android One (Midnight Blue)', 899.00, 7, '<b>Overview</b><br>  Enjoy a Google-designed OS experience that\'s refreshingly pure and intuitive in a phone made for photography enthusiasts. It\'s free from hidden processes that eat-up battery life and comes packed with the latest AI innovations. Plus, as part of the Android One family your Nokia will be among the first to receive new features from Google-so it just keeps getting better.  <br> <b>Key Features</b><br>  <b>World\'s first 5-camera array with ZEISS optics, in a phone made for photographers.</b><br> The industry defying camera captures DSLR-quality depth of field and 10 x more light than single-colour sensors[1]. All 5 of the 12MP cameras shoot simultaneously - with 3 monochromatic sensors for sharpness and 2 colour sensors. So, whether you\'re a photographer or enthusiast you can now shoot photos on your phone with unparalleled dynamic range.'),
(15, 'Jackery Power2Go Dock with 2 x 5100mAh Power Bank', 109.95, 8, '<b>Key Features</b><br>  Charge up to 2 devices simultaneously<br>  Up To 250 Hours extra Operation Time<br>  Advanced power lock technology for up to 6 months standby power<br>  5100mAH x 2 Battery Capacity<br>  Input: 5V/2A<br>  Output: 5V/2.1A<br>  Lightweight Design<br>  Includes Micro USB Cable<br>  Pre-Charged & ready for use<br>  LED charge indicator<br>  Airplane-safe<br>'),
(16, 'Cygnett ChargeUp Compact 10,000 mAh (Black)', 59.95, 8, '<b>Key Features</b><br>\r\n\r\nUp to 52 additional hours of smartphone battery life<br>\r\n\r\nCharge 2 smartphones at once<br>\r\n\r\nCompact, pocket friendly form factor<br>\r\n\r\nLED battery indicator<br>\r\nPre-charged and ready to usev\r\n\r\n'),
(17, 'Samsung Data Cable Combo (Type-C and Micro USB)', 19.95, 8, '<b>Key Features</b><br>\r\n\r\n2-in-1 connection<br>\r\n\r\nSupports USB Typ-C interface as well as Micro-USB<br>\r\n\r\nLength 1.5m<br>'),
(18, 'Belkin MixIT DuraTek Lightning to USB Cable (Gold)', 34.95, 8, '<b>Overview</b><br>\r\n\r\nNot just any charge cable, DuraTek cables were forged from superior quality materials for ultimate durability. Kevlar fibers reinforce the inner wiring for added strength, abrasion-resistant nylon forms a tough outer jacket, and highly flexible insulation minimizes damage from friction. The strength created by these resilient ingredients is further enhanced by smart design details to reinforce the cable at its stress points. This ensures the finished product can withstand even the most demanding routines, and perform above and beyond expectation to deliver a cable that borders on indestructible.\r\n'),
(19, 'XCD Essentials 5 Port USB Charger 39W/7.8A', 49.95, 8, '<b>Overview</b><br>\r\n\r\nThe desktop USB Charger allows you to charge up to 5 devices at once.  With 39 Watts of power you can charge smartphones, tablets and other USB devices quickly and easily.\r\n\r\nThis charger is compatible with USB devices such as smartphones, GPS, cameras and tablets.\r\n\r\n<br>\r\n<b>Key Features</b><br>\r\n\r\nBuilt-in protection against over heating and short circuits<br>\r\n\r\nVertical or Horizontal set up<br>\r\n\r\nTotal power Output 7.8A/39W<br>\r\n\r\n5V / 2.4A + 2.4A + 1A + 1A+ 1A\r\n<br>\r\nIncludes 1.5m power cable<br>'),
(20, 'Belkin BoostUp 5W Qi Wireless Charging Stand (Black)', 49.94, 8, '<b>Overview</b><br>\r\n\r\nTry wireless charging with the affordable BOOST UP Wireless Charging Stand. 5W is perfect for charging throughout the day or an overnight power up. Qi certification provides peace of mind while universal compatibility makes it easy to find the charger that\'s right for your Qi-compatible phone or tablet.\r\n\r\n<br><b>Up to 5w charging power</b><br>\r\nSay goodbye to low power anxiety. With this Qi-certified stand at your desk you are able to keep your smartphone accessible while charging up to 5W throughout the day. Staying charged all day is easier than ever. Keep a BOOST UP Wireless Charging Stand on your nightstand and wake each morning fully charged.\r\n\r\n'),
(21, 'Griffin TPU Film Screen Protector for Samsung Galaxy S10', 24.95, 8, '<b>Key Features</b><br>\r\n\r\nSelf-regenerative coating<br>\r\n\r\n\r\nBubble-free Installation<br>\r\n\r\n\r\nPerfect clarity and adhesion<br>\r\n\r\n\r\nSeamless touchscreen experience<br>\r\n'),
(22, 'Cygnett RealCurve 3D Double Tempered Glass for Google Pixel 3', 49.94, 8, '<b>Overview</b><br>\r\n\r\nThe RealCurve 3D Edge to Edge 9H Double Tempered Glass Screen Protector offers screen protection against damage due to everyday wear and tear from daily use items such as keys and coins. On top of the added protection from scratches and damage, the RealCurve 3D also provides protection from fingerprints, water, and oil as well as smudges.\r\n\r\nThe RealCurve 3D Screen Protector offers optimal clarity and protection for your phone and its precise laser cut process ensures a perfect curved fit for your new Google Pixel 3, along with a bubble-free easy application ensuring it will go on your iPhone\'s screen easily.\r\n\r\n'),
(23, 'Lifeproof Fre Case for iPhone XS Max (Black)', 129.95, 8, '<b>Overview</b><br>\r\n\r\nIf you spy a soggy future on your horizon, fortify your iPhone Xs Max with the only case purpose-built for water: FRE.\r\n<br>\r\n<b>Key Features</b><br>\r\n\r\nEquipped with a subtle screen cover, FRE  blocks the elements from scuffing your touchscreen\r\n\r\nFRE lets you ditch the charging cable-it\'s fully compatible with a QI wireless charging base\r\n\r\nTailored to exact specs, FRE features a low-profile design that feels like it\'s not even there\r\n<br>\r\nSubmersible up to 2m for 1 hour'),
(24, 'Speck Presidio Stay Clear Case for Google Pixel 3', 49.95, 8, '<b>Overview</b><br>\r\n\r\nThis slim case stays clearly beautiful longer. Its high-tech coating resists UV rays, oils, and other substances to help prevent discoloration. A patented two-layer design absorbs and disperses shock on impact. Engineered to withstand drops of up to 8 feet, these cases have been tested by third-party laboratories to ensure superior protection. A raised bezel helps to protect your screen from scratching and shattering if your phone falls face-down.\r\n\r\n<br>\r\n<b>Key Features</b><br>\r\n\r\n8-foot drop-protection with IMPACTIUM CLEAR shock barrier\r\nIMPACTIUM CLEAR material on the inside perimeter compresses on impact to absorb and disperse shock. Dropped from 8 feet multiple times by independent labs to ensure superior protection.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `catagoryId` (`catagoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`catagoryId`) REFERENCES `category` (`categoryId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
