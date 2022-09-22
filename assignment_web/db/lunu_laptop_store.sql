-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2021 at 10:36 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lunu_laptop_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(256) NOT NULL,
  `website_link` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`, `website_link`, `email`, `phone`) VALUES
(1, 'ASUS', 'https://www.asus.com/vn/', 'support@asus.com', '123'),
(2, 'Dell', 'https://www.dell.com/', 'support@dell.com', '456'),
(3, 'Lenovo', 'https://www.lenovo.com/', 'support@lenovo.com', '789');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `PRODUCT_id` int(10) UNSIGNED NOT NULL,
  `CUSTOMER_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `qty`, `PRODUCT_id`, `CUSTOMER_id`) VALUES
(27, 8, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(256) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`user_id`, `customer_name`, `phone_number`, `email`, `address`) VALUES
(2, 'l?u Nguy?n', '0919842020', 'goriummaximum@gmail.com', 'Abc'),
(8, 'Bình', '0931565433', 'binhroninduc@gmail.com', '96/4, 9 street, Linh Tay Ward, Thu Duc District, Ho Chi Minh City'),
(9, 'Nguy?n Duy T?nh', '0907418036', 'tinh.nguyen9@hcmut.edu.vn', '123 LTK');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(1, 'binhroninduc@gmail.com'),
(2, 'binh@gmail.com'),
(3, 'binhlee@gmail.com'),
(4, 'binhlee123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(10) UNSIGNED NOT NULL,
  `action` varchar(256) NOT NULL,
  `qty` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `USER_id` int(11) NOT NULL,
  `PRODUCT_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `action`, `qty`, `updated_date`, `USER_id`, `PRODUCT_id`) VALUES
(1, 'Purchase', 46, '2021-11-17 00:00:00', 0, 0),
(2, 'Purchase', 8, '2021-11-17 00:00:00', 0, 0),
(3, 'Purchase', 9, '2021-11-17 00:00:00', 0, 0),
(4, 'Purchase', 2, '2021-11-17 00:00:00', 0, 0),
(5, 'Purchase', 4, '2021-11-17 00:00:00', 0, 0),
(6, 'Purchase', 2, '2021-11-17 00:00:00', 0, 0),
(7, 'Purchase', 2, '2021-11-21 00:00:00', 0, 0),
(8, 'Purchase', 2, '2021-11-21 00:00:00', 0, 0),
(9, 'Purchase', 2, '2021-11-22 00:00:00', 0, 0),
(27, 'Add Product', 100, '2021-11-22 17:37:24', 0, 0),
(28, 'Add Product', 100, '2021-11-22 17:41:31', 0, 0),
(29, 'Add Product', 100, '2021-11-22 17:43:21', 0, 0),
(30, 'Add Product', 100, '2021-11-22 17:44:38', 0, 0),
(31, 'Add Product', 90, '2021-11-23 09:44:01', 0, 0),
(32, 'Update Quantity', 100, '2021-11-23 10:48:32', 0, 0),
(33, 'Add Product', 100, '2021-11-23 12:27:29', 0, 0),
(34, 'Add Product', 90, '2021-11-23 14:03:39', 0, 0),
(35, 'Add Product', 90, '2021-11-23 14:24:41', 0, 0),
(36, 'Add Product', 50, '2021-11-23 14:27:36', 0, 0),
(37, 'Add Product', 100, '2021-11-23 14:33:44', 0, 0),
(38, 'Add Product', 100, '2021-11-23 14:38:27', 0, 0),
(39, 'Add Product', 20, '2021-11-23 14:42:54', 0, 0),
(42, 'Add Product', 90, '2021-11-23 20:12:51', 0, 0),
(43, 'Purchase', 1, '2021-11-30 03:48:19', 9, 2),
(44, 'Purchase', 25, '2021-11-30 04:23:26', 9, 19);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(256) NOT NULL,
  `color` varchar(256) DEFAULT NULL,
  `CPU` varchar(256) DEFAULT NULL,
  `RAM` varchar(256) DEFAULT NULL,
  `GPU` varchar(256) DEFAULT NULL,
  `storage` varchar(256) DEFAULT NULL,
  `monitor` varchar(256) DEFAULT NULL,
  `battery` varchar(256) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `size` varchar(256) DEFAULT NULL,
  `product_qty` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_photo_link` varchar(256) DEFAULT NULL,
  `status` varchar(256) NOT NULL,
  `USAGE_TYPE_id` int(10) UNSIGNED DEFAULT NULL,
  `BRAND_id` int(10) UNSIGNED NOT NULL,
  `ADMIN_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `color`, `CPU`, `RAM`, `GPU`, `storage`, `monitor`, `battery`, `weight`, `size`, `product_qty`, `product_price`, `product_photo_link`, `status`, `USAGE_TYPE_id`, `BRAND_id`, `ADMIN_id`) VALUES
(2, 'ASUS ROG Zephyrus G14 GA401QH-HZ035T 90NR07B-M00400', 'black', 'AMD Ryzen 7 5800HS ', '8GB Onboard DDR4', 'NVIDIA GeForce GTX 1650 4GB GDDR6 / AMD Radeon Graphics', '512GB SSD M.2 NVMe', '14 IPS (1920 x 1080), 144Hz', '4 cell 76 Wh', 2, '14', 195, 28990000, 'upload/1.png', 'A', NULL, 1, 3),
(3, 'ASUS UX425EA-KI439T 90NB0SM1-M09310', 'black', 'Intel Core i7-1165G7', '16GB Onboard LPDDR4X 2666MHz', 'Intel Iris Xe Graphics', '512GB SSD M.2 NVMe / ', '4 IPS', '4 cell 67 Wh', 1, '14', 100, 29990000, 'upload/2.png', 'A', NULL, 1, 3),
(4, 'ASUS ROG Flow GV301QC-K6029T 90NR04G5-M00510', 'black', 'AMD Ryzen 9 5980HS ', ' 32GB (16GB + 16GB Onboard) LPDDR4X 2666MHz ', 'NVIDIA GeForce RTX 3050 4GB GDDR6 / AMD Radeon Graphics', '1TB SSD M.2 NVMe / ', '13.4 IPS', '4 cell 62Wh', 1, '13.4', 0, 78990000, 'upload/3.png', 'U', NULL, 1, 3),
(5, 'ASUS ROG Zephyrus GX703HS-K4016T 90NR06F1-M00290', 'black', 'Intel Core i9-11900H', '1 x 16GB, 16GB Onboard DDR4 3200MHz ', 'NVIDIA GeForce RTX 3080 16GB GDDR6 / Intel UHD Graphics', '2TB SSD M.2 NVMe / ', 'IPS (2560 x 1440), 165Hz', '4 cell 90 Wh', 3, '17.3', 0, 98990000, 'upload/4.png', 'U', NULL, 1, 3),
(6, 'ASUS ROG Zephyrus G14 Alan Walker Edition GA401QEC-K2064T 90NR05R7-M02570', 'black', 'AMD Ryzen 9 5900HS', '16GB (8GB + 8GB Onboard) DDR4 3200MHz', 'NVIDIA GeForce RTX 3050Ti 4GB GDDR6 / AMD Radeon Graphics', '1TB SSD M.2 NVMe / ', 'IPS (2560 x 1440), 120Hz', '4 cell 76 Wh Pin li?n', 2, '14', 100, 49990000, 'upload/5.png', 'A', NULL, 1, 3),
(7, 'ASUS TUF Gaming FX506HCB-HN141W', 'black', 'Intel Core i7-11800H', '8GB DDR4 3200MHz', 'NVIDIA GeForce RTX 3050 4GB GDDR6 / Intel UHD Graphics', '512GB SSD M.2 NVMe /', 'IPS (1920 x 1080), 144Hz', '3 cell 48Wh', 2, '15.6', 50, 28490000, 'upload/6.png', 'A', NULL, 1, 3),
(8, 'ASUS Vivobook X415MA-BV088T', 'white', 'Intel Pentium Silver N5030', '1 x 4GB DDR4 3200MHz', 'Intel UHD Graphics 605', '256GB SSD M.2 NVMe /', '1366 x 768', '2 cell 37 Wh', 1, '14', 200, 9490000, 'upload/7.png', 'A', NULL, 1, 3),
(9, 'Dell Vostro 14 3405 V4R53500U001W', 'grey', 'AMD Ryzen 5 3500U', '1 x 4GB DDR4 2400MHz', 'AMD Radeon Vega 8 Graphics', '256GB SSD M.2 NVMe /', 'WVA (1920 x 1080)', '3 cell 42 Wh', 2, '14', 291, 16190000, 'upload/8.png', 'A', NULL, 2, 3),
(10, 'Dell Vostro 14 3405 V4R53500U003W', 'grey', 'AMD Ryzen 5 3500U', '1 x 8GB DDR4 2400MHz', 'AMD Radeon Vega 8 Graphics', '512GB SSD M.2 NVMe /', 'WVA (1920 x 1080)', '3 cell 42Wh', 2, '14', 300, 18090000, 'upload/9.png', 'A', NULL, 2, 3),
(11, 'Dell Alienware M15 R6 (P109F001BBL) P109F001', 'black', 'Intel Core i7-11800H ', '2 x 16GB DDR4 3200MHz', 'NVIDIA GeForce RTX 3060 6GB GDDR6 / Intel UHD Graphics', '1TB SSD M.2 NVMe /', 'WVA (1920 x 1080), 165Hz', '6 cel 86Wh', 3, '15.6', 20, 59990000, 'upload/10.png', 'A', NULL, 2, 3),
(12, 'Dell Inspiron 15 3505 3505-Y1N1T5', 'grey', 'AMD Ryzen 5 3500U', '1 x 8GB DDR4 3200MHz', 'AMD Radeon Vega 8 Graphics', '512GB SSD M.2 NVMe /', '(1920 x 1080)', '3 cell 42Wh', 2, '15.6', 80, 19690000, 'upload/11.png', 'A', NULL, 2, 3),
(13, 'Lenovo Yoga Slim 9 14ITL5 82D1004JVN', 'black', 'Intel Core i7-1165G7', '16GB Onboard LPDDR4X 4266MHz', 'Intel Iris Xe Graphics', '1TB SSD M.2 NVMe /', 'IPS (3840 x 2160)', '4 cell 63 Wh', 1, '14', 46, 49990000, 'upload/12.png', 'A', NULL, 3, 3),
(14, 'Dell Inspiron 15 3511 Intel gen 11', 'white', 'Intel Core i3 1115G4', '4GB DDR4 bus 2666 MHz', 'Intel UHD Graphics', '256GB m.2 NVMe', 'WVA (1920 x 1080)', '41Wh', 2, '14', 100, 15290000, 'upload/dellgen11.png', 'A', NULL, 2, 3),
(15, ' DELL GAMING G5 5500', 'black', 'Intel(R) Core( TM) i7-10750H ', '8GB (2x4Gb) DDR4-2933MHz', 'NVIDIA(R) GeForce(R) GTX 1660 Ti 6GB GDDR6', '512GB M.2 PCIe NVMe Solid Stat e Drive', 'WVA (1920 x 1080), 165Hz', '4 cell 63 Wh', NULL, '15.6', 100, 31290000, 'upload/dell500.jpg', 'A', NULL, 2, 3),
(16, 'Dell Gaming G15 5511', 'black', 'Intel Core i7-11800H', '8GB (2x4GB) DDR4 3200MHz', 'NVIDIA(R) GeForce RTX 3050 4GB GDDR6', '512GB M.2 PCIe NVMe SSD', 'WVA (1920 x 1080), 165Hz', '6 cel 86Wh', 2, '15.6', 100, 33990000, 'upload/dellg15.jpg', 'A', NULL, 2, 3),
(17, 'Lenovo Gaming Legion 5 15ACH6', 'black', 'AMD Ryzen 7 5800H 3.2GHz up to 4.4GHz 16MB', '8GB', 'NVIDIA GeForce RTX 3050 4GB GDDR6, Boost Clock 1500 / 1740MHz, TGP 95W', '512GB SSD M.2 2280 PCIe 3.0x4 NVMe', 'WVA (1920 x 1080), 165Hz', '4 Cell 60 WHr', 2, '15.6', 100, 29410000, 'upload/lenovo15.jpg', 'A', NULL, 3, 3),
(18, 'Lenovo Ideapad Gaming 3', 'black', '	Intel® Core™ i7-10750H', '8GB', 'NVIDIA GEFORCE GTX 1650Ti 4GB', '512GB SSD M.2 NVMe', 'IPS (3840 x 2160)', '3Cell 45WH', 2, '15.6', 90, 22290000, 'upload/lenovogaming3.jpg', 'A', NULL, 3, 3),
(19, 'Lenovo Ideapad 3', 'white', 'Intel® Core™ i3-1115G4', '8GB', 'Integrated Intel UHD Graphics', '512GB SSD M.2 2242 PCIe 3.0x4 NVMe', 'IPS (3840 x 2160)', '2Cell, 38WH', 1, '14', 50, 14590000, 'upload/lenovoideapad3.jpg', 'D', NULL, 3, 3),
(20, 'Lenovo Thinkbook 13s G2', 'white', 'Intel Core i7-1165G7', '8GB', 'Intel Iris Xe Graphics', '512GB SSD', 'IPS (3840 x 2160)', '4 Cell, 56Wh', 1, '	13.3', 80, 21990000, 'upload/lenovo13s.jpg', 'A', NULL, 3, 3),
(21, 'Lenovo Yoga 6', 'black', 'AMD Ryzen 7 5700U', '8GB', 'AMD Radeon Graphics', '512GB SSD M.2 2242 PCIe 3.0x4 NVMe', 'WVA (1920 x 1080)', '60Wh', 1, '13.3', 90, 22890000, 'upload/lenovoyoga6.jpg', 'A', NULL, 3, 3),
(22, 'Lenovo Legion Y520 Core 7th Gen', 'black', '7th Intel® Core™ i7, 7700HQ, 2.8GHz, 4, 3.8GHz, 8 GT/s DMI', '16GB, DDR4, 64GB', 'GDDR5 NVIDIA® GeForce® GTX 1050', '1 TB, HDD', 'WVA (1920 x 1080), 165Hz', '3-cell', 2, '15.6 ', 100, 33690000, 'upload/lenovoy520.png', 'A', NULL, 3, 3),
(27, 'Asus ROG Strix G15', 'white', 'Intel Core i5-10300H 2.5GHz up to 4.5GHz 8MB', '8GB DDR4 2933MHz ', 'NVIDIA GeForce GTX 1650 4GB GDDR6', '512GB SSD M.2 PCIE G3X2', '15,6 \"FHD (1920 x 1080) IPS', '3 Cell 48WHr', 2, '14', 50, 23790000, 'upload/asusrog5_1637639065.png', 'D', NULL, 1, 3),
(29, 'Laptop Lenovo IdeaPad 5 Pro 16ACH6', 'white', 'AMD Ryzen™ R5-5600H Processor', '8GB DDR4 onboard', 'AMD Radeon Graphics + NVIDIA GeForce RTX 1650', '512Gb SSD', 'IPS WQXGA', '4 Cell 75WHr', 2, '16', 70, 24990000, 'upload/ideapad5_1637651019.jpg', 'D', NULL, 3, 3),
(30, 'Asus Vivobook X515EA-BQ1004T ', 'white', 'Intel Core i3-1115G4', '4 GB, DDR4', 'Intel UHD Graphics', '4 GB, DDR4', '1920 x 1080 Pixel, IPS, 60 Hz, 250 nits, Anti-glare LED-backlit', '3 Cell 48WHr', 2, '15.6', 80, 14199000, 'upload/asusvivoR7_1637652281.jpg', 'A', NULL, 1, 3),
(31, 'Asus Zenbook Flip UX363EA-HP532T', 'black', 'Intel Core i5-1135G7', '8 GB, LPDDR4X, 4266 MHz', 'Intel Iris Xe Graphics', 'SSD 512 GB', '1920 x 1080 Pixel, OLED, 60 Hz, 500 nits, OLED', '3 Cell 48WHr', 1, '15.6', 50, 27999000, 'upload/zenbookflip_1637652456.png', 'D', NULL, 1, 3),
(32, 'Dell Vostro V5515 R3 5300U', 'white', 'AMD Ryzen 3-5300U', '8 GB, DDR4, 3200 MHz', 'AMD Radeon Graphics', '8 GB, DDR4, 3200 MHz', '1920 x 1080 Pixel', '4 cell', 1, '15.6', 100, 18599000, 'upload/dellvotro_1637652824.png', 'A', NULL, 2, 3),
(33, 'Dell Latitude 7300 I7 8665U', 'black', 'Intel Core i7-86650U', '8GB, DDR4 Bus 2400MHz', 'Intel UHD Graphics 620', ' 256Gb - SSD', 'FHD (1920 x 1080)', '4 cell', 1, '14', 100, 21190000, 'upload/delllatitude_1637653107.png', 'D', NULL, 2, 3),
(34, 'ASUS GAMING ROG STRIX SCAR G733QS-HG021T', 'black', 'AMD Ryzen R9-5900HX Processor', '2 x 16GB DDR4/ 3200MHz', 'NVIDIA® GeForce RTX™ 3080 16GB', '1TB SSD PCIe (M.2 2280)', 'HD (1920 x 1080) IPS-level panel', '4 cell', 3, '17.3', 20, 73000500, 'upload/asuspro_1637653374.png', 'D', NULL, 1, 3);

--
-- Triggers `product`
--
DELIMITER $$
CREATE TRIGGER `product_BEFORE_INSERT` BEFORE INSERT ON `product` FOR EACH ROW BEGIN
	if (new.product_qty <= 0 ) then
		set new.product_qty = 0;
		set new.status  = 'U';
    end if;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `product_BEFORE_UPDATE` BEFORE UPDATE ON `product` FOR EACH ROW BEGIN
    if (new.product_qty <= 0 ) then
		set new.product_qty = 0;
		set new.status  = 'U';
    end if;
    if (new.product_qty > 0 and old.status = 'D') then
		set  new.status = 'D';
    end if;
    if (new.product_qty > 0 and old.status = 'U') then
		set  new.status = 'A';
    end if;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(10) UNSIGNED NOT NULL,
  `sale_total_price` float NOT NULL,
  `sale_date` date NOT NULL,
  `CUSTOMER_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `sale_total_price`, `sale_date`, `CUSTOMER_id`) VALUES
(2, 197980000, '2021-11-17', 2),
(3, 215960000, '2021-11-21', 2),
(4, 157980000, '2021-11-22', NULL),
(5, 0, '2021-11-22', NULL),
(6, 0, '2021-11-22', NULL),
(7, 0, '2021-11-22', NULL),
(8, 0, '2021-11-22', NULL),
(9, 0, '2021-11-22', NULL),
(10, 28990000, '2021-11-30', 9),
(11, 364750000, '2021-11-30', 9);

-- --------------------------------------------------------

--
-- Table structure for table `sales_item`
--

CREATE TABLE `sales_item` (
  `sale_item_id` int(10) UNSIGNED NOT NULL,
  `sale_qty` int(11) NOT NULL,
  `sale_price` float NOT NULL,
  `SALES_id` int(10) UNSIGNED NOT NULL,
  `PRODUCT_id` int(10) UNSIGNED DEFAULT NULL,
  `product_name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_item`
--

INSERT INTO `sales_item` (`sale_item_id`, `sale_qty`, `sale_price`, `SALES_id`, `PRODUCT_id`, `product_name`) VALUES
(6, 2, 98990000, 2, 5, 'ASUS ROG Zephyrus GX703HS-K4016T 90NR06F1-M00290'),
(7, 2, 78990000, 3, 4, 'ASUS ROG Flow GV301QC-K6029T 90NR04G5-M00510'),
(8, 2, 28990000, 3, 2, 'ASUS ROG Zephyrus G14 GA401QH-HZ035T 90NR07B-M00400'),
(9, 2, 78990000, 4, 4, 'ASUS ROG Flow GV301QC-K6029T 90NR04G5-M00510'),
(10, 1, 28990000, 10, 2, 'ASUS ROG Zephyrus G14 GA401QH-HZ035T 90NR07B-M00400'),
(11, 25, 14590000, 11, 19, 'Lenovo Ideapad 3');

-- --------------------------------------------------------

--
-- Table structure for table `showroom`
--

CREATE TABLE `showroom` (
  `showroom_id` int(10) UNSIGNED NOT NULL,
  `address` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `longtitude` double NOT NULL,
  `latitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showroom`
--

INSERT INTO `showroom` (`showroom_id`, `address`, `name`, `phone`, `longtitude`, `latitude`) VALUES
(1, 'sdfsdf', 'Lunu Shop', '01239123', 106.71117067337036, 10.802408064324322),
(5, '123 Ly Thuong Kiet', 'Lunu Shop Quan 10', '0907418036', 106.63889958119923, 10.805262535127204),
(6, '66 Nhat Chi Mai', 'Lunu Shop Tan Binh', '0907418036', 106.63889958119923, 10.805262535127204),
(7, '22 Do Xuan Hop', 'Lunu Shop Quan 9', '0907418036', 106.63889958119923, 10.805262535127204);

-- --------------------------------------------------------

--
-- Table structure for table `usage_type`
--

CREATE TABLE `usage_type` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `access` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `access`) VALUES
(2, 'lunu', '982a72def6aa24e36fd61ac36760f0f7', 'CUSTOMER'),
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'ADMIN'),
(8, 'binhlee', 'f908aedaee2bb7384a5fead92115e622', 'CUSTOMER'),
(9, 'xdtn7', '4697b728957a898227413e2d6f1ba05e', 'CUSTOMER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_ibfk_1` (`CUSTOMER_id`),
  ADD KEY `PRODUCT_id` (`PRODUCT_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `BRAND_id` (`BRAND_id`),
  ADD KEY `USAGE_TYPE_id` (`USAGE_TYPE_id`),
  ADD KEY `PRODUCT_ibfk_3` (`ADMIN_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `SALES_ibfk_1` (`CUSTOMER_id`);

--
-- Indexes for table `sales_item`
--
ALTER TABLE `sales_item`
  ADD PRIMARY KEY (`sale_item_id`),
  ADD KEY `SALES_id` (`SALES_id`),
  ADD KEY `SALES_ITEM_ibfk_2` (`PRODUCT_id`);

--
-- Indexes for table `showroom`
--
ALTER TABLE `showroom`
  ADD PRIMARY KEY (`showroom_id`);

--
-- Indexes for table `usage_type`
--
ALTER TABLE `usage_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sales_item`
--
ALTER TABLE `sales_item`
  MODIFY `sale_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `showroom`
--
ALTER TABLE `showroom`
  MODIFY `showroom_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `usage_type`
--
ALTER TABLE `usage_type`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `ADMIN_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`CUSTOMER_id`) REFERENCES `customer` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`PRODUCT_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `CUSTOMER_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `PRODUCT_ibfk_1` FOREIGN KEY (`BRAND_id`) REFERENCES `brand` (`brand_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PRODUCT_ibfk_2` FOREIGN KEY (`USAGE_TYPE_id`) REFERENCES `usage_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PRODUCT_ibfk_3` FOREIGN KEY (`ADMIN_id`) REFERENCES `admin` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `SALES_ibfk_1` FOREIGN KEY (`CUSTOMER_id`) REFERENCES `customer` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_item`
--
ALTER TABLE `sales_item`
  ADD CONSTRAINT `SALES_ITEM_ibfk_1` FOREIGN KEY (`SALES_id`) REFERENCES `sales` (`sale_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SALES_ITEM_ibfk_2` FOREIGN KEY (`PRODUCT_id`) REFERENCES `product` (`product_id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
