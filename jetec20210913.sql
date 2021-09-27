-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2021-09-13 08:16:53
-- 伺服器版本： 5.7.24
-- PHP 版本： 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `jetec`
--

-- --------------------------------------------------------

--
-- 資料表結構 `addproduct`
--

CREATE TABLE `addproduct` (
  `id` int(50) NOT NULL,
  `productid` int(50) NOT NULL,
  `addproductid` int(11) NOT NULL,
  `context` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `message`
--

CREATE TABLE `message` (
  `id` int(50) NOT NULL,
  `company` varchar(70) COLLATE utf8_bin DEFAULT NULL,
  `firstname` varchar(35) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(35) COLLATE utf8_bin NOT NULL,
  `phone` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `message` varchar(10000) COLLATE utf8_bin NOT NULL,
  `reply` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '回覆',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product_model` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `productType` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `industry` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '產業',
  `country` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '國家',
  `state` varchar(4) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `message`
--

INSERT INTO `message` (`id`, `company`, `firstname`, `lastname`, `phone`, `email`, `message`, `reply`, `create_date`, `product_model`, `productType`, `industry`, `country`, `state`) VALUES
(3, '久德電子', 'yen lin', 'chen', '023729418', 'AAA@AAA.com', 'ddddddddddddddd ', NULL, '2021-09-09 01:12:30', NULL, 'otherQ', '工程顧問', 'Taiwan', '1'),
(4, '久德電子', 'yen lin', 'chen', '023729418', 'AAA@AAA.com', 'ddddddddddddddd ', NULL, '2021-09-09 01:13:42', NULL, 'otherQ', 'AAA', 'Armenia', '1'),
(5, '久德電子', 'yen lin', 'chen', '023729418', 'AAA@AAA.com', 'ddddddddddddddd', NULL, '2021-09-09 01:14:18', '55555', NULL, NULL, 'Taiwan', '1'),
(6, '久德電子', 'yen lin', 'chen', '023729418', 'AAA@AAA.com', ' ggg', 'fff', '2021-09-09 01:54:23', NULL, 'Markwting/Distribution inquiries', '精密電子業', 'Taiwan', '2');

-- --------------------------------------------------------

--
-- 資料表結構 `message_buy`
--

CREATE TABLE `message_buy` (
  `id` int(100) NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `firstname` varchar(35) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(35) COLLATE utf8_bin NOT NULL,
  `organization` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '主織',
  `phone` varchar(30) COLLATE utf8_bin NOT NULL,
  `country` varchar(15) COLLATE utf8_bin NOT NULL,
  `product_model` varchar(30) COLLATE utf8_bin NOT NULL,
  `message` varchar(1000) COLLATE utf8_bin NOT NULL,
  `reply` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `orderid` int(100) NOT NULL,
  `userid` int(20) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `firstname` varchar(20) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(20) COLLATE utf8_bin NOT NULL,
  `company` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `address` varchar(255) COLLATE utf8_bin NOT NULL,
  `country` varchar(20) COLLATE utf8_bin NOT NULL,
  `postalcode` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `message` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '備住',
  `orderstatus` varchar(10) COLLATE utf8_bin NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `order_address` varchar(255) COLLATE utf8_bin NOT NULL,
  `order_postalcode` varchar(20) COLLATE utf8_bin NOT NULL,
  `order_email` varchar(100) COLLATE utf8_bin NOT NULL,
  `order_phone` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`orderid`, `userid`, `email`, `firstname`, `lastname`, `company`, `phone`, `address`, `country`, `postalcode`, `message`, `orderstatus`, `createdate`, `order_name`, `order_address`, `order_postalcode`, `order_email`, `order_phone`) VALUES
(13, 1, 'AAA@AAA.com', 'yen lin', 'chen', '久德電子', '023729418', '福人街11號', '台灣', '404', '', '1', '2021-09-08 05:43:45', 'yen lin chen', '福人街11號', '404', 'AAA@AAA.com', '023729418'),
(14, 4, 'AAA@AAA.com', 'yen lin', 'chen', '久德電子', '023729418', '福人街11號', '台灣', '404', '', '1', '2021-09-08 07:35:48', 'yen lin chen', '福人街11號', '404', 'AAA@AAA.com', '023729418'),
(15, 1, 'dddd@ddddddd.com', 'yen lin', 'chen', '久德電子', '023729418', '福人街11號', '台灣', '404', '', '1', '2021-09-09 01:36:52', 'yen lin chen', '福人街11號', '404', 'dddd@ddddddd.com', '023729418'),
(16, 4, 'AAA@AAA.com', '2', '23', '', '4', 'alsak;dwekljrlc', 'taiwan', '1', '', '1', '2021-09-13 02:23:38', '2 23', 'alsak;dwekljrlc', '1', 'AAA@AAA.com', '4'),
(17, 1, 'AAA@AAA.com', 'yen lin', 'chen', '久德電子', '023729418', '福人街11號', 'Taiwan', '404', '', '1', '2021-09-13 05:54:07', 'yen lin chen', '福人街11號', '404', 'AAA@AAA.com', '023729418'),
(18, 4, 'AAA@AAA.com', 'yen lin', 'chen', '久德電子', '023729418', '福人街11號', 'Taiwan', '404', '', '1', '2021-09-13 08:07:07', 'yen lin chen', '福人街11號', '404', 'AAA@AAA.com', '023729418');

-- --------------------------------------------------------

--
-- 資料表結構 `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(100) NOT NULL,
  `orderid` int(100) DEFAULT NULL,
  `productid` int(100) NOT NULL,
  `sellingprice` int(100) NOT NULL,
  `quantity` int(40) NOT NULL COMMENT '數量',
  `discount` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '折扣',
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '備住'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `order_detail`
--

INSERT INTO `order_detail` (`id`, `orderid`, `productid`, `sellingprice`, `quantity`, `discount`, `remark`) VALUES
(87, 13, 35, 3200, 1, '1', NULL),
(88, 13, 36, 1360, 5, '1', NULL),
(89, 13, 32, 1340, 6, '1', NULL),
(93, 14, 46, 140, 1, '1', NULL),
(94, 14, 47, 240, 1, '1', NULL),
(95, 14, 48, 300, 1, '1', NULL),
(96, 15, 34, 2320, 1, '1', NULL),
(97, 16, 34, 2320, 1, '1', NULL),
(98, 16, 46, 140, 1, '1', NULL),
(99, 17, 34, 2320, 2, '1', NULL),
(100, 17, 159, 66, 1, '1', NULL),
(101, 18, 132, 1080, 1, '1', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `order_option`
--

CREATE TABLE `order_option` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `product_group` varchar(10) COLLATE utf8_bin NOT NULL,
  `product_option` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `order_status`
--

CREATE TABLE `order_status` (
  `orderstatus` int(4) NOT NULL,
  `content` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `order_status`
--

INSERT INTO `order_status` (`orderstatus`, `content`) VALUES
(1, '新訂單'),
(2, '包裝完成'),
(3, '已出貨'),
(4, '已完成');

-- --------------------------------------------------------

--
-- 資料表結構 `pdf_url`
--

CREATE TABLE `pdf_url` (
  `id` int(31) NOT NULL,
  `productid` int(21) NOT NULL,
  `url` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `pdf_url`
--

INSERT INTO `pdf_url` (`id`, `productid`, `url`) VALUES
(11, 48, 'TRM00J_E_data.pdf'),
(12, 51, 'TRM10C_E_data.pdf'),
(13, 52, 'TRM20_E_data.pdf'),
(14, 55, 'TTM04SP_E_data.pdf'),
(15, 53, 'TTM-000W_E_data.pdf'),
(16, 56, 'TTM-210_E_data.pdf'),
(17, 56, 'TTM-210_E_communication.pdf'),
(18, 57, 'TTM339_E_data.pdf'),
(19, 58, 'TTM509_E_data.pdf'),
(20, 59, 'TTMi4N_E_data.pdf'),
(21, 60, 'TTX-800_E_data.pdf'),
(22, 61, 'Joinsystem_E_data.pdf'),
(23, 61, 'Joinsystem.rar'),
(24, 61, 'NetFramework4.7.rar'),
(25, 62, 'TEMMETER.pdf'),
(26, 63, 'TEMMETER_PRO.pdf'),
(27, 64, 'HUBA210_E_data.pdf'),
(28, 65, 'FSAR_E_data.pdf'),
(29, 66, 'FSC_E_data.pdf'),
(30, 67, 'FSN_E_data.pdf'),
(31, 68, 'FS-SC_E_data.pdf'),
(32, 69, 'KSL-xLN_E_data.pdf'),
(33, 70, 'KSL-80_160L_E_data.pdf'),
(34, 71, 'PF2A511-03-2_E_data.pdf'),
(35, 72, 'PSL-5.10.30L_E_data.pdf'),
(36, 73, 'E2608Series_E_data.pdf'),
(37, 74, 'VVK2_E_data.pdf'),
(38, 74, 'VVxx_E_data.pdf'),
(39, 75, 'VVK2_E_data.pdf'),
(40, 75, 'VVxx_E_data.pdf'),
(42, 76, 'VVK2_E_data.pdf'),
(43, 77, 'LM1-10VPRO.pdf'),
(44, 77, 'LM1-420PRO.pdf'),
(45, 77, 'LM2-485PRO.pdf'),
(46, 78, 'LM1-420.pdf'),
(47, 79, 'LM1-420.pdf'),
(48, 80, 'Datasheet_PYR1-420.pdf'),
(49, 80, 'PYR2-420 – CLASS C(2).png'),
(51, 81, 'ExTemp_E_data.pdf'),
(52, 82, 'FibreMini_E_data.pdf'),
(53, 83, 'PM180_E_data.pdf'),
(54, 84, 'PC-PE-PB_E_data.pdf'),
(55, 85, 'PyroCouple_E_data.pdf'),
(56, 86, 'PyroCouple_E_data.pdf'),
(57, 87, 'PC-PE-PB_E_data.pdf'),
(58, 88, 'PyroMini_E_data.pdf'),
(59, 89, 'Pyromini22_E_data.pdf'),
(60, 90, 'PyroMiniBus_E_data.pdf'),
(61, 91, 'PyroNFC_E_data.pdf'),
(62, 91, 'PyroNFC-K _E_data.pdf'),
(63, 92, 'pyrosigma-data-sheet.pdf'),
(64, 93, 'pyrousb_E_data.pdf'),
(65, 94, 'PyroMiniUSB_E_data.pdf'),
(66, 95, '604_E_data.pdf'),
(67, 96, '610_E_data.pdf'),
(68, 97, 'PEK_E_data.pdf'),
(69, 98, '652_E_data.pdf'),
(70, 99, '692_E_data.pdf'),
(71, 100, '694_E_data.pdf'),
(72, 103, 'PEL8K_E_data.pdf'),
(73, 104, 'PEL1000_E_data.pdf'),
(74, 105, 'PEL2500_E_data.pdf'),
(75, 106, 'PP_E_data.pdf'),
(76, 101, '699_E_data.pdf'),
(77, 102, 'PEL_E_data.pdf'),
(78, 107, 'VPEL_E_data.pdf'),
(79, 108, 'VPL16_E_data.pdf'),
(80, 109, 'VPL60_E_data.pdf'),
(81, 110, '506_E_data.pdf'),
(82, 111, '511_E_data.pdf'),
(83, 112, 'IND-TH_E_data.pdf'),
(84, 113, 'SYSTH_E_data.pdf'),
(85, 114, 'SYSTH-BT_E_data.pdf'),
(86, 115, 'SYSTHL_E_data.pdf'),
(87, 116, 'IVL_E_data.pdf'),
(88, 117, 'IVLJ_E_data.pdf'),
(89, 118, 'Datasheet_WINDMETER_eng.pdf'),
(90, 119, 'TUNA20_E_data.pdf');

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `producttext` varchar(1500) COLLATE utf8_bin NOT NULL,
  `specification` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '特點',
  `sellprice` int(20) NOT NULL,
  `purchaseprice` int(20) NOT NULL,
  `vendorid` int(11) NOT NULL,
  `productcategoryid` int(11) NOT NULL,
  `productstatus` varchar(2) COLLATE utf8_bin NOT NULL,
  `quantity` int(100) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pictureurl` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `count` int(50) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`id`, `model`, `name`, `producttext`, `specification`, `sellprice`, `purchaseprice`, `vendorid`, `productcategoryid`, `productstatus`, `quantity`, `data`, `pictureurl`, `count`, `type`) VALUES
(48, 'TRM-00J', 'Paperless Recorder', 'This is a 6-Channel Paperless Recorder that displays measured data on a liquid crystal display and can easily be operated using a touch panel.\r\nData can be saved to USB memory or SD card, and the saved data can be played back.\r\nThe input type is Universal Input such as \"\"thermocouple\"\", \"\"RTD\"\", \"\"DC voltage\"\", \"\"DC current (shunt resistance required)\"\".\r\nThe communication function \"\"RS-485 (Modbus) / USB 2.0 (Modbus)\"\" is equipped as standard.\r\n', NULL, 134, 698, 1, 1, '1', 1111, '2021-09-08 01:40:46', 'TRM-00J.png', 215, 35),
(51, 'TRM10C', 'Hybrid Recorder ', 'A Hybrid recorder with a chart width of 100mm which adopted a large digital display in a complete pursuit of cost performance with the motto of \"Smaller and Easier\" for excellent reliability. The front door is IP65 compliant for excellent dustproof and waterproof. 6-Point, 1 pen and 2 pen types are available as number of measurement channels.\r\n', NULL, 1360, 672, 1, 1, '1', 1111, '2021-09-08 02:59:22', 'TRM10C.png', 357, 35),
(52, 'TRM20', 'Paperless Recorder', 'This paperless recorder displays the measured data on a liquid crystal display and can easily be operated using a touch panel. Data can be saved in a SD memory card, and the saved data can be played back. It can also be played back on a personal computer using the attached viewer software. Input type is universal input such as \"\"thermocouple\"\", \"\"RTD\"\", \"\"DC voltage (current)\"\".\r\n6, 9 and 12 channels are available as number of measurement channels.\r\n', NULL, 2000, 980, 1, 1, '1', 1111, '2021-09-08 03:30:35', 'TRM20.png', 1075, 35),
(53, 'TTM-000W', 'Digital Controller', 'Visibility had been improved by adopting white LED for PV color. A versatile Digital Temperature Controller which features a variety of functions and is easy to operate. It is compact in size, with a depth of only 77mm. (A depth of TTM-002W is 97mm.) Size ranges from 24x48 to 96x96. If the communication option is selected, up to 31 controller units can be connected with a single computer at the same time, allowing centralized supervision within a max. distance of 500m.\r\n', NULL, 120, 60, 1, 1, '1', 1111, '2021-09-08 06:03:54', 'TTM-000W.png', 9, 36),
(55, 'TTM-04SP', 'Plug-in Digital Temperature Controller', 'Improved controllability is provided employing a new PID algorithm and an accelerated sampling cycle. Due to a multi-input function, a single unit handles all input specifications. It is more compact in size with the depth of 69mm (front panel is 48mm x 48mm). The loader communication function is included, alleviating additional work that might be needed to set various parameters (Dedicated cable is sold separately).\r\n', NULL, 140, 68, 1, 1, '1', 1111, '2021-09-08 06:28:08', 'TTM-04SP.png', 9, 36),
(56, 'TTM-210 Series', 'Digital Controller ', 'With the adoption of the new PID algorithm, the controllability has been improved.\r\nAdopted white LCD (with LED backlight) for PV (measured value) display for improved visibility.\r\nWith universal input function, a single unit can handle all input specifications.\r\nCompact in size with the depth of 59.7 mm (TTM-214) and 65 mm (TTM-215/217/219).\r\nThe optional functions have been enhanced to support various applications.\r\nLoader communication function that can reduce complicated parameter setting work is equipped as standard. (Exclusive cable is available with a charge).\r\nExternal standards “UL”, “CUL” and “CE” approved (TTM-215/217/219 Pending application). Compliant with \"\"IP66\"\" or equivalent. Also, six substances regulated by the RoHS Directive are not used.\r\n', NULL, 240, 119, 1, 1, '1', 1111, '2021-09-08 06:34:37', 'TTM-210 Series.png', 20, 36),
(57, 'TTM-339', 'LCD Program Controller', 'TTM 339 is LCD Program Controller with maximum of 15 patterns & 99 steps. The Full Multi-Function Input support various types of input requirements within a single unit. The device is compact, with a depth of only 65mm. A loader communication function is provided as its standard feature to ease complicated work with setting parameters that is common for program controllers, (the cable is sold separately). The necessary software can be downloaded from our webpage.\r\n', NULL, 700, 350, 1, 1, '1', 1111, '2021-09-09 03:35:46', 'TTM-339.png', 9, 36),
(58, 'TTM-509', 'Dual Channel Controller', 'Capable of controlling 2 inputs maximum per unit. This device offers versatile features, high accuracy ±0.1% and a high speed sampling cycle 50msec, enabling support for a wide range of applications.\r\n', NULL, 870, 434, 1, 1, '1', 1111, '2021-09-09 06:31:35', 'TTM-509.png', 2, 36),
(59, 'TTM-i4N', 'Digital Controller', '\"This versatile series of digital controllers supports wide range of applications.\r\nEasy operation at reasonable price.\r\nUL, CE and KC approved, and compliant with the RoHS directive.\r\n\"\r\n', NULL, 46, 23, 1, 1, '1', 1111, '2021-09-09 06:43:14', 'TTM-i4N.png', 4, 36),
(60, 'TTX-800', 'Dual Channel Controller', 'A white LED is used for better visibility. It is a DIN rail mounting type 2ch controller with display and key switch mounted on the main unit, various settings are possible with the main unit alone.\r\nBy connecting the main unit with a connector, the power supply and RS-485 communication can be connected without the need for crossover wiring of the terminal block. (Up to 10 units can be connected)\r\n* If the analog is selected for input / output, it can be used as a signal converter. \"\"CE\"\" mark as an external standard has been acquired.\r\n', NULL, 400, 196, 1, 1, '1', 1111, '2021-09-09 06:56:24', 'TTX-800.png', 3, 36),
(61, 'JoinSystem', 'Local area network & Cloud system', '“Join System”is a service that are able to monitor,control and record data through LAN and wireless network.This enable users to integrate and enhance efficiency of their equipments.\r\n“Join System”also provides flexable and visualize interface for users to monitor and control the measurands.Through Cloud and LAN networks,users are able to obtain real-time information without the limitation of time and location,JETEC is here to support users with our professional knowledge of integrating software and hardware system.We also supply multiple transmitters that fit user’s demands and cover most applications of industries.Our aim is to reach comprehensive integration,then further remove problems and increase value during the whole process.\r\n', NULL, 2000, 1000, 1, 1, '1', 1111, '2021-09-09 07:01:24', 'JoinSystem.png', 22, 37),
(62, 'Temmeter', 'Temperature probe for photovoltaics', 'Temmeter is a high resistance temperature probe for photovoltaic modules (solar panels), based on a PT100 temperature sensor. It has strong adhesive fixing for quick and easy installation. Adhesive fixing makes it cheaper than Temmeter PRO, without sacrificing efficiency. Temmeter is an easy to install PT100 thermal sensor that does not require a mounting system, as it has a powerful adhesive surface. The non-hygroscopic white plastic casing is resistant up to 130°C; shows a neutral behavior in temperature measurement even in the presence of direct radiation on the sensor.\r\n', NULL, 150, 74, 1, 1, '1', 1111, '2021-09-09 07:05:37', 'Temmeter.png', 2, 38),
(63, 'TemmeterPro', 'Temperature probe for photovoltaics', 'Tenmeter PRO is a ready-to-install PT100 analog temperature sensor (temperature probe) with a stainless steel mounting system. It is equipped with an aluminum bracket and a spring of adjustable length, allowing the probe to stay attached to the solar panel with just the right amount of pressure. Quick and easy to install with no need for adhesives, accurate measurements, and highly resistant.\r\n', NULL, 210, 104, 1, 1, '1', 1111, '2021-09-09 07:21:33', 'TemmeterPro.png', 2, 38),
(64, '210.920241K', 'Flow sensor for liquid media', 'In comparison to the OEM flow sensor (type 200) the type 210 is available with a larger variety concerning power supply and outputs. You can choose between various versions as integrated temperature measurement. This flow sensor without moving parts is  insensitive to pollution and persuade by very few loss of pressure and a very high accuracy.\r\n', NULL, 2000, 1000, 1, 1, '1', 1111, '2021-09-09 07:45:49', '210.920241K.920241K_工作區域 1.png', 1, 40),
(65, 'FS-AR', 'Impeller flow meter', '\"This Flow Sensor Type FS-AR displays a sign\r\nby means of LED lamp whether a proper flow\r\nrate is exactly obtained against required flow\r\nrate set set up or not and alarm message\r\n（relay output）can be also given. At the same\r\ntime, the existent flow rate is output\r\nanalogically.　　\"\r\n', NULL, 2000, 1000, 1, 1, '1', 1, '2021-09-09 08:03:49', 'FS-AR.png', 4, 40),
(66, 'FS-C', 'Impeller flow meter', 'This flow sensor Type FS-C is used for\r\nmeasuring flow rate and fluid temperature at high accuracy. Microprocessor process technique make it possible to sense the measuring value very precisely. The result of measuring outputs to external terminal as analog value and is shown as digital value on LCD. Further, the result of displayed data compares the reference value to detect alarm signal, which output to \"\"Open Collector\"\"terminal and turns the LED on.\r\n', NULL, 2000, 1000, 1, 1, '1', 1, '2021-09-09 08:07:15', 'FS-C.png', 0, 40),
(67, 'FS-N', 'Impeller flow meter', '\"This Flow sensor Type FS-N can be used to output the electric pulse signals the number of which is proportional to the flow rate.\r\nWhen the fluid is flowing, LED lights.\"\r\n', NULL, 2000, 1000, 1, 1, '1', 1, '2021-09-09 08:12:05', 'FS-N.png', 0, 40),
(68, 'FS-SC', 'Impeller flow meter', 'Flow meter FS-SC uses a micro processor to detect and display the ow rate and temperature(option) with high accuracy. It always outputs the actual measurement value to the external device in analog, and simultaneously displays it on the LCD in digital form.\r\nIn addition, it can display if the set value is reached or not with an LED lamp, and can output alerts.\r\n', NULL, 2000, 1000, 1, 1, '1', 1, '2021-09-09 08:15:07', 'FS-SC.png', 1, 40),
(69, 'KSL', 'Karman vortex flow meter', 'The flow meter KSL-5/10/30/50LN measures the flow rate and temperature. At the same time, the KSL-5/10/30/50LN can output alarm signals, analog signals, and pulse signals. Because the liquid contacting part is made of a heat-resistant resin,high-temperature fluid can be measured.\r\n', NULL, 1000, 460, 1, 1, '1', 100, '2021-09-09 08:17:57', 'KSL.png', 18, 40),
(70, 'KSL-80L-160L', 'Karman vortex flow meter', 'The Karman Vortex System Flow-Rate Sensor KSL is capable of measuring flowrate, integration, and temperature.\r\nThe measurement results are output through cables and simultaneously displayed on the LED display in three digits.\r\nAs a sensor for monitoring the cooling water of equipment, acumulative total of 60,000 units have been delivered to leading semiconductor and LCD equipment manufactures in the world.\r\n', NULL, 1000, 480, 1, 1, '1', 1111, '2021-09-09 08:32:42', 'KSL-80L-160L.png', 2, 40),
(71, 'PF2A511-03-2', 'Digital Flow Switch for Air', 'Series JFS-2A511-03-2 for air. flow rate setting and monitoring are possible with the digital display. integrated and remote type displays are available for different types of application. water resistant construction is used conforming to IP65 protection. switching from real-time flow rate to accumulated flow is possible.\r\n', NULL, 20000, 1000, 1, 1, '1', 1, '2021-09-09 08:38:00', 'PF2A511-03-2.png', 0, 40),
(72, 'PSL-5-30L', 'Karman vortex flow meter', 'Karman vortex flow meter PSL-5L/30L is the new series of flow meters to measure flow rate,with simple functions and reasonable price.\r\nDue to compact construction it can be installed in narrow space and simple structure resulting easy maintenance, easy installation and de-installation.\r\n', NULL, 2000, 1000, 1, 1, '1', 1, '2021-09-09 08:43:52', 'PSL-5-30L.png', 1, 40),
(73, 'E2608Series', 'Gas detector', 'The instrument uses a variety of gas sensing principles, can be applied to a variety of gas detection, with excellent repeatability, stability and long life.\r\nTwo relays with closed contacts can be used for remote signaling or ventilation control. The user can set two alarm set points.\r\n\r\nTwo analog outputs and RS485 digital interface with industry standard Modbus RTU protocol can be used to connect the detector to a security or building automation system.\r\n', NULL, 1800, 790, 1, 1, '1', 1, '2021-09-09 08:56:40', 'E2608Series.png', 7, 47),
(74, 'VVN1 ,VVN2', 'Water leakage sensors', '\"VVA 1, VVA 2 and VVA 3 and also VVN 1 and VVN 2 are sensors, which will be used in the building automation systems together with VVK 2 or LPH 10 water leakage relays for detecting possible water leakages. The function of the sensors is based on the decreasing resistance resulting from the water on the sensor element. The resistance value of the dry sensors is about 300 kΩ. \r\nNOTE: The VVA sensors can also be used to detect glycol leakages. Clean the sensor with a cloth and mild cleaning agent after contact with glycol.\"\r\n', NULL, 70, 35, 1, 1, '1', 1, '2021-09-10 00:29:01', 'VVN1 ,VVN2.png', 3, 48),
(75, 'VVA3', 'Water leakage sensors', 'VVA 1, VVA 2 and VVA 3 and also VVN 1 and VVN 2 are sensors, which will be used in the building automation systems together with VVK 2 or LPH 10 water leakage relays for detecting possible water leakages.\r\nThe function of the sensors is based on the decreasing resistance resulting from the dousing water on the sensor element. The resistance value of the dry sensors is about 300 kΩ.\r\n* Need to connect to host VVK2\r\n\r\n', NULL, 49, 23, 1, 1, '1', 1, '2021-09-10 00:39:42', 'VVA3.png', 0, 48),
(76, 'VVK2', 'Water leakafe relay', 'VVK2 continuously detects the resistance of the sensor that is attached on the floor of the monitored space, for example. When the sensor gets wet and the sensor resistance drops below the alarm limit, the relay activates and the Alarm light is lit. When the sensor dries and the resistance rises over the alarm limit, the relay releases and the Alarm light turns off. The alarm limit (10 kΩ or 80 kΩ) can be set during commissioning.\r\n\r\nIf needed, several sensors may be connected in parallel.However, you must ensure that the total sensor circuit dry resistance doesn\'t drop below alarm level. Also observe the parallel connection effect on the alarm sensitivity. \r\n*Need to match Sensor(VVN1、VVN2、VVA3)\r\n', NULL, 2000, 1000, 1, 1, '1', 1, '2021-09-10 00:53:55', 'VVK2.png', 0, 48),
(77, 'LitemeterProSeries', 'Photovoltaic pyranometer', '\"The Litemeter Pro series are photovoltaic total pyranometers (or silicon irradiance sensors) used to measure solar irradiance and temperature. It provides a variety of output signals and is very suitable for monitoring medium-sized photovoltaic systems. Manufacturing and calibration comply with IEC 61215, IEC 60904-2, 60904-4 and 60904-10 standards. Litemeter Voltage Pro products are approved by ABB for use in string boxes, EVO data loggers and certain inverter models.\r\nPhysical characteristics\r\nSilicon photovoltaic cells and E.V.A. and high-performance anti-reflective glass for photovoltaic modules. It guarantees the maximum accuracy of the irradiance measurement and provides a measurement of the temperature indicated by the photovoltaic module next to it. It has an anodized aluminum housing, durable, practical mounting bracket with screw clamp and UV resistant cable. The irradiance sensor has two voltage signal outputs: one for solar irradiance and the other for temperature. The solar irradiance signal is temperature compensated; the allowable reading is independent of the battery temperature.\"\r\n', NULL, 2000, 1000, 1, 1, '1', 1, '2021-09-10 01:21:40', 'LitemeterProSeries.png', 1, 49),
(78, 'LM1-420', 'Analog photovoltaic pyranometer', 'LM1-420 is an analog photovoltaic pyranometer (or irradiance sensor) equipped with a monocrystalline silicon cell for high efficiency, and temperature compensated output. Manufacturing and Calibrations are done following the IEC 61215, IEC 60904-2; 60904-4; 60904-10 regulations. Analog Irradiance Sensor - LM1-420 needs an external power supply. The 4-20mA current loop output allows to obtain reliability and immunity to signal noise. This guarantees quality signal even at long distances (30m and more) also in areas with many electromagnetic disturbances like industrial areas and photovoltaic systems greater than 100 Kw. The current output 4-20mA allows the analog signal to remain unchanged in cases whereas the distance between the sensor and the control unit is 10m and more, or in disturbed areas. Distance up to 20-35m are attainable if there’s no signal interference. LM1-420 is simple, affordable and easy to install.\r\n\r\nLM１－４２０ are calibrated with our Class A PV Reference Cell, itself periodically calibrated by the Dakks accredited ISFH Institute and a HP34410A Multimeter.\r\n', NULL, 2000, 1000, 1, 1, '1', 1, '2021-09-10 01:31:21', 'LM1-420.png', 18, 49),
(79, 'LUX34', '日照計 / LUX照度計', 'LUX 34 is a transmitter measuring the intensity of light and temperature and converting the results into linear 0-10V signals, which can be used for controlling lighting and heating via HVAC system.\r\n\r\nThe range of 0...1000 lx (S1=on; factory setting) or 0...10000 lx (S1=off) can be chosen by the installer.\r\nThe range coding jumper switch S1 is located on the board inside the casing.\r\n\r\nAlso a model LUX 34-100 with the ranges of 0-100 lx and 0-500 lx is available. Factory setting is 0-100 lx.\r\n\r\nThe range of the temperature output is always -50 … +50°C = 0…10V.\r\nThe location for the installation on the wall is recommended to select so, that the transmitter will not be exposed to the direct sunshine or external light sources disturbing the measuring.', NULL, 240, 116, 1, 1, '1', 1, '2021-09-10 01:36:29', 'LUX34.png', 4, 49),
(80, 'PYR2-420', 'Thermopile Pyranometer', 'PYR2-420 is an ISO 9060 Class C (Second Class) Thermopile Pyranometer. It has a simpler construction than the Class B, but uses the same high quality materials. Class C Thermopile Pyranometer casingAs the Class C is equipped with the same electronics as the Class B, the signal has a high level of linearity and noise immunity. The signal is normalized in the 4 to 20mA range. This analog output mode of the signal (current loop) is characterized by a simple wiring (cable with 2 wires), and a high immunity to electromagnetic interference and interference caused by distances of over ten meters. This instrument is suitable for measuring solar power and monitoring the efficiency of photovoltaic systems when a precision of 5% – 10% is sufficient.\r\n', NULL, 1500, 750, 1, 1, '1', 1, '2021-09-10 01:40:18', 'PYR2-420.png', 7, 49),
(81, 'ExTemp', 'Intrinsically Safe Infrared Temperature Sensor', 'ExTemp intrinsically safe non-contact infrared temperature sensors measure the temperature of an area of the surface of a solid or liquid, and transmit this as a two wire, linear 4-20 mA output.\r\nTemperature ranges from -20°C to 1000°C are available. All models have an adjustable emissivity setting, and may be used to measure a wide variety of target materials, including food, paper, textiles, plastics, leather, tobacco, pharmaceuticals, chemicals, rubber, coal,asphalt and paint.\r\nA choice of precision optics is available to measure small or large targets at short or long distances. \r\nThe optional LCT Loop Configuration Tools (USB and RS-485 adapters) and free software allow the ExTemp to be connected to a PC, PLC or SCADA system for temperature indication, sensor configuration and data acquisition.\r\nThese sensors are designed primarily for use in hazardous areas in conjunction with a suitable safety barrier or isolator. All models have been certified Intrinsically Safe for use in gas and dust hazardous areas by Certification Management Ltd. They comply with the European ATEX Directive 2014/34/EU and are covered by certificates for IECEx (international),TIIS (Japan) and UKCA (United Kingdom).\r\n', NULL, 1600, 800, 1, 1, '1', 1, '2021-09-10 01:52:11', 'ExTemp.png', 3, 50),
(82, 'FibreMini', 'Fibre Optic Infrared Temperature Sensor for Harsh Applications', 'The FibreMini is an infrared temperature sensor (pyrometer) with a fibre optic sensing head and separate electronics module.\r\nThe fibre optic sensing head withstands ambient temperatures of up to 200°C and contains no electronics, so it may be used in areas of strong electromagnetic interference.\r\nContinuous laser sighting illuminates the position and size of the measurement spot while readings are being taken, without affecting the accuracy of the measurement.\r\nA touch screen interface is built into the electronics module, with temperature display, sensor configuration, data logging to optional MicroSD Card, and configurable alarm relay outputs.\r\nThe sensor works by detecting the infrared radiation emitted from a surface as a result of its own temperature. The amount of radiation emitted is related to the temperature, and the sensor uses this relationship to provide an accurate temperature output.\r\nFibreMini sensors are ideal for measuring the surface temperature of many reflective metals in high-temperature applications, including iron and steel, as well as non reflective nonmetals.\r\n', NULL, 3400, 1694, 1, 1, '1', 1, '2021-09-10 02:05:20', 'FibreMini.png', 9, 50),
(83, 'PM180Series', '6-channel Modbus Pyrometer Hub with Data Logging', 'The PM180 is a temperature indicator, data logger, alarm unit\r\nand configuration tool for Calex infrared temperature sensors. It is compatible with all models in the PyroBus and PyroMiniBus series, as well as all PyroMini and FibreMini\r\nmodels with Modbus output.\r\nThe PM180 functions as the Modbus Master on an RS485 network of up to 6 temperature sensors, and can itself be connected as a slave device to another RS485 network via a second, isolated Modbus interface. This allows multiple PM180 units to be multi-dropped to create a large network of sensors and displays.\r\nOptional alarm relay modules allow the PM180 to be connected to alarm equipment such as sounders and beacons, and optional analogue output modules allow it to be connected to non-Modbus instrumentation.\r\nAll the configurable parameters for the hub, the connected sensors and the optional output modules are adjustable via the PM180’s built-in resistive touch screen interface, which can be operated even with gloves on.\r\nWith an optional MicroSD Card inserted, the PM180 functions as a fully-configurable data logger.\r\n', NULL, 920, 460, 1, 1, '1', 1, '2021-09-10 02:15:56', 'PM180Series.png', 0, 50),
(84, 'PyroCAN', 'Infrared Temperature Sensor with CAN Bus Interface', 'The PyroCAN series is a range of general purpose infrared temperature sensors(pyrometers) that measure the temperature of surfaces without contact.\r\nThe temperature is transmitted digitally every 200 ms via a CAN interface. The sensor’s CAN ID and emissivity setting may be changed via a CAN command.\r\nThe sensor is suitable for measuring a variety of non-metal surfaces, including painted materials, rubber, plastics, asphalt, soil, plants, organic materials, food and pharmaceuticals. Metals can be measured if they are painted or heavily oxidised.\r\nThe PyroCAN is easily connected to existing networks with other CAN devices.\r\n', NULL, 660, 331, 1, 1, '1', 1, '2021-09-10 02:18:52', 'PyroCAN.png', 0, 50),
(85, 'PyroCouple', 'General Purpose Infrared Temperature Sensor with Analogue Output', 'PyroCouple non-contact infrared sensors measure temperatures from -20°C to 500°C and provide either a linear 4 to 20 mA output, a voltage output or a thermocouple output. This range of output signals is compatible with almost any indicator, controller, recorder, data logger etc., without the need for special interfacing or signal conditioning. They are suitable for most materials such as food, paper, textiles, plastics, leather, tobacco, pharmaceuticals,chemicals, rubber, coal and asphalt; but not materials with a low emissivity, for example polished metals. Two-wire and four-wire versions are available:\r\nTwo-wire PyroCouple sensors transmit the target temperature as a 4-20 mA output and offer a simple solution for most applications.\r\nFour-wire PyroCouple sensors transmit the target temperature as a 0-50 mV or thermocouple output (type J or K) plus the internal sensor temperature as a 4-20 mA output. This second output can be used to ensure that the sensor is being operated within the correct ambient temperature limits and prevent damage caused by overheating or overcooling. It can also be used to give an approximate indication of the air temperature surrounding the sensor.\r\n', NULL, 360, 177, 1, 1, '1', 1, '2021-09-10 02:21:41', 'PyroCouple.png', 0, 50),
(86, 'PyroCubeSeries', 'Infrared Temperature Sensors for Special Applications', 'The PyroCube is a non-contact infrared temperature sensor with built-in LED sighting. It has an extremely fast response time, and can precisely measure the temperature of a very small area.\r\nThe continuous LED sighting illuminates the position and size of the measurement spot while readings are being taken, without affecting the accuracy of the measurement.\r\nThe sensor works by detecting the infrared radiation emitted from a surface as a result of its own temperature. The amount of radiation emitted is related to the temperature, and the sensor uses this relationship to provide an accurate temperature measurement.\r\n', NULL, 2000, 1000, 1, 1, '1', 1, '2021-09-10 02:32:42', 'PyroCubeSeries.png', 6, 50),
(87, 'PyroEpsilon', 'Pyrometer with 4-20 mA Output and Adjustable Emissivity Setting', 'PyroEpsilon non-contact infrared sensors measure temperatures from -20°C to 500°C and provide a linear 4 to 20mA output. This output signal is compatible with almost any indicator,controller, recorder, data logger etc., without the need for special interfacing or signal conditioning.\r\nThe sensor’s emissivity setting can be adjusted from 0.2 to 1.0 to cope with different target materials and is controlled by a 4-20 mA input. This gives the opportunity to adjust the emissivity setting automatically from a programmable logic controller (PLC). Alternatively the emissivity setting can be adjusted manually using the optional PyroTune module. If the 4-20 mA input is left open or short-circuit, the emissivity setting defaults to 0.95.\r\n', NULL, 400, 193, 1, 1, '1', 1, '2021-09-10 03:02:58', 'PyroEpsilon.png', 0, 50),
(88, 'PyroMini', 'Miniature Infrared Temperature Sensors with Optional Touch Screen Interface', 'The PyroMini Series is a range of miniature non-contact infrared temperaturesensors with separate electronics modules.\r\nAll models have an adjustable emissivity setting and are capable of measuring a wide variety of target materials, including food, paper,textiles, plastics, leather, tobacco, pharmaceuticals,chemicals, rubber, coal and asphalt.\r\nGeneral-purpose PyroMini models measure non-reflective non-metals, or painted or coated metals, at temperatures from -20°C to 1000°C.\r\nPyroMini 2.2 models have a short measurement wavelength. They are ideal for measuring reflective surfaces such as uncoated iron and steel, as well as many otherhigh-temperature applications. They are capable of measuring temperatures from 100°C to 2000°C.\r\nThe optional touch screen interface provides temperature indication, alarms, sensor configuration and data logging to MicroSD Card. The optional high-temperaturesensing head on general-purpose models may be used in ambient temperatures of up to 180°C without cooling. The low-noise cable on high ambient temperaturemodels is resistant to interference from movement, so it is ideal for mounting on moving objects such as robot arms.\r\nA choice of optics is available to measure small or large targets at short or long distances, and there is a choice of 4-20 mA, RS485 Modbus and alarm relay outputs.', NULL, 1300, 645, 1, 1, '1', 1, '2021-09-10 03:07:22', 'PyroMini.png', 1, 50),
(89, 'PyroMini 2.2', 'Miniature Infrared Temperature Sensors with Optional Touch Screen Interface', 'The PyroMini Series is a range of miniature non-contact infrared temperaturesensors with separate electronics modules.\r\nAll models have an adjustable emissivity setting and are capable of measuring a wide variety of target materials, including food, paper,textiles, plastics, leather, tobacco, pharmaceuticals,chemicals, rubber, coal and asphalt.\r\nGeneral-purpose PyroMini models measure non-reflective non-metals, or painted or coated metals, at temperatures from -20°C to 1000°C. PyroMini 2.2 models have a short measurement wavelength. They are ideal for measuring reflective surfaces such as uncoated iron and steel, as well as many otherhigh-temperature applications. They are capable of measuring temperatures from 100°C to 2000°C. The optional touch screen interface provides temperature indication, alarms, sensor configuration and data logging to MicroSD Card. The optional high-temperaturesensing head on general-purpose models may be used in ambient temperatures of up to 180°C without cooling. The low-noise cable on high ambient temperaturemodels is resistant to interference from movement, so it is ideal for mounting on moving objects such as robot arms. A choice of optics is available to measure small or large targets at short or long distances, and there is a choice of 4-20 mA, RS485 Modbus and alarm relay outputs.', NULL, 1600, 799, 1, 1, '1', 1, '2021-09-10 03:15:17', 'PyroMini 2.2.2.png', 1, 50),
(90, 'PyroMiniBUS', 'Infrared Temperature Sensors with RS485 Modbus for Multi-Channel Installations', 'PyroMiniBus non-contact infrared sensors measure temperatures from -20°C to 1000°C and provide an RS485 Modbus RTU interface.\r\nThe sensors are capable of being used in ambient temperatures up to 120°C without cooling.\r\nThey may be connected directly to third party Modbus Masters, and they are compatible with the optional PM180 6-channel touch screen interface, which provides temperature display, data logging, alarms and analogue outputs.\r\nA 6-channel junction box (model PMBHUB) is available to easily connect PyroMiniBus sensors to the PM180 as a complete temperature measurement system.\r\n', NULL, 420, 208, 1, 1, '1', 1, '2021-09-10 03:24:28', 'PyroMiniBUS.png', 2, 50),
(91, 'PyroNFC', 'Smartphone Configurable Infrared Temperature Sensor', 'The PyroNFC is a non-contact infrared temperature sensor with Near Field Communication(NFC) capability. It has linear voltage and open collector alarm outputs for connection to industrial process instrumentation.\r\nBy touching an NFC-enabled smartphone against the back of the sensor, the user can configure the sensor’s settings, and read the measured temperature, via a free app.\r\n', NULL, 360, 177, 1, 1, '1', 1, '2021-09-10 03:38:17', 'PyroNFC.png', 2, 50),
(92, 'PyroSigma', 'Miniature Pyrometer with Built-In Displa', 'The PyroSigma is a fixed-mount sensor for measuring the temperature of a surface without contact. Its extremely small size makes it ideal for installation where space is restricted.\r\nThe sensor works by detecting infrared energy that is emitted by the target object. The temperature is shown on the sensor’s built-in OLED display, and can be monitored continuously via the DC voltage output,e.g. with industrial process instrumentation. The sensor also has a configurable alarm output.\r\n', NULL, 440, 214, 1, 1, '1', 1, '2021-09-10 03:43:36', 'PyroSigma.png', 1, 50),
(93, 'PyroUSBSeries', 'Miniature Infrared Temperature Sensors with Optional Touch Screen Interface', 'PyroUSB Series infrared sensors measure the temperature of surfaces without contact.\r\nThey have a linear 2-wire 4 to 20 mA output, which is compatible with almost any indicator,controller, recorder or data logger without the need for special interfacing or signal conditioning.\r\nA choice of measurement wavelengths and temperature ranges is available to suit a range of applications. \r\nGeneral-purpose PUA8 (8-14 μm) models can measure from -40°C to 1000°C. They are suitable for measuring high emissivity materials such as paper, thick plastics, food, pharmaceuticals, rubber, asphalt and painted surfaces. Short-wavelength PUA2 (2.2 μm) models have a choice of temperature ranges from 45°C to 2000°C. They provide a more accurate reading when measuring low-emissivity materials such as many reflective metals. They are also capable of measuring through glass viewports. Glass PUA5 (5 μm) models can measure from 200°C to 1650°C. They are filtered at a wavelength where glass is least reflective, making them ideal pyrometers for glass surface temperature measurement.', NULL, 1400, 700, 1, 1, '1', 1, '2021-09-10 03:47:14', 'PyroUSBSeries.png', 48, 50),
(94, 'PyroMiniUSB', 'USB Infrared Temperature Sensor for Benchtop,Laboratory and Education', 'The PyroMiniUSB is a simple, compact infrared temperature sensor with USB communications. It\r\nmeasures the surface temperature of a variety of materials without contact.\r\nThe included software is intuitive and easy to use, and the open Modbus protocol allows users to\r\nconnect directly to the sensor using software of their own design.\r\nThe sensor’s rugged construction makes it ideal for benchtop, laboratory and education\r\napplications.', NULL, 414, 207, 1, 1, '1', 100, '2021-09-13 00:58:15', 'PyroMiniUSB.png', 1, 50),
(95, '604', 'Mechanical Pressure Switch', 'The ideal pressure switch to control air flows in air conditioning and ventilation systems, but equally effective in industrial air monitoring applications. This product range, which is classified in 5 pressure ranges, makes installation easy with features such as combibracket, screw terminals and snap-on cover. Of unique benefit is the high adjustment accuracy resulting from individual scale engraving.', NULL, 2000, 1000, 1, 1, '1', 100, '2021-09-13 01:08:15', '604.png', 0, 51),
(96, '610', 'Relative and differential pressure switch', 'Type 610 pressure switches are especially suited to the monitoring of non-flammable gases in general industrial equipment.\r\nExemplary accuracy is maintained throughout the high pressure range of this switch. ', NULL, 2000, 1000, 1, 1, '1', 1, '2021-09-13 01:11:00', '610.png', 2, 51),
(97, 'PEK', '氣體差壓開關', 'PEK switches are designed for monitoring over and under pressures and pressure differences in systems that handle air and other non-flammable gases.Typical applications are monitoring of fans and filters in ventilation systems.\r\n\r\nSwitching point is set during commissioning.\r\n\r\nIt is recommended to install the switch in vertical position and process connections downwards. For example, the switching pressure is 20 Pa bigger if the switch is installed horizontally with cover upwards. ', NULL, 28, 14, 1, 1, '1', 1, '2021-09-13 01:14:56', 'PEK.png', 1, 51),
(98, '652.91410000002', 'Differential pressure transmitter', 'Type 652 pressure transmitters are ideally suited to the continuous monitoring of liquid and gas flow (or level) in heating, ventilation and process technology. Their especially rugged construction allows a \r\nsingle port over-pressure of up to 20 bar, depending upon pressure range.', NULL, 2000, 1000, 1, 1, '1', 1, '2021-09-13 01:19:30', '652.png', 1, 51),
(99, '692', 'Differential pressure transmitter', 'The pressure transmitter of type 692 with proven, unique ceramic technology, features adjusted and amplified sensor signals which are available as standardised voltage or current outputs. Various application-specific pressure and electrical connections and housing materials suitable for different media can be provided.', NULL, 2000, 1000, 1, 1, '1', 100, '2021-09-13 01:24:02', '692.png', 1, 51),
(100, '694', 'Differential pressure transmitter', 'Type 694 pressure transmitters are available with or without integral digital display. 0⁄10 V / 4⁄20 mA outputs are available as well as square.\r\nIndividually ranged sensors ensure optimum accuracy and long term stability of measurement, and the variety of options means great flexibility, not only in climate control, but also in industrial and medical fine pressure measurement.', NULL, 2000, 1000, 1, 1, '1', 1, '2021-09-13 01:35:46', '694.png', 0, 51),
(101, '699', 'Relative, and differential pressure transmitter', 'The type 699 transmitters are available in switchable pressure ranges and with or without display. The full-version includes customer specific adjustment possibilities. Especially developed sensors for each pressure range ensure accurate long term stable measurement and the large variety of options provide the perfect platform for use in air conditioning technology as well as for fine measurement in the industrial and medical environment.', NULL, 2000, 1000, 1, 1, '1', 1, '2021-09-13 01:39:42', '699.png', 2, 51),
(102, 'PEL', 'Differential pressure transmitter', 'PEL is a pressure transmitter for detecting pressures and pressure differences in air handling systems. The\r\npressure measurement is temperature compensated according to the ambient temperature.\r\n\r\nThe M models have RS-485 connection for Modbus RTU communication. ML-SER tool is needed at commissioning for making the Modbus settings.The transmitter zero point is kept accurate by using the regular automatic zeroing, eliminating the possible zero point drifting. No re-calibration is normally needed.\r\n\r\nThe influence of process disturbances (e.g.turbulence) can be damped by selecting suitable time constant (2 s or 8 s).\r\n\r\nThe N models have a display. The display resolution is 0.1 Pa for measured values below 200 Pa and 1 Pa for values over 200 Pa. The display can be added also after commissioning. ', NULL, 324, 162, 1, 1, '1', 1111, '2021-09-13 01:50:55', 'PEL.png', 1, 51),
(103, 'PEL-8K', 'Differential pressure transmitter', 'PEL 8K is a pressure transmitter for detecting pressures and pressure differences in air handling systems. The pressure measurement is temperature compensated according to the ambient temperature.\r\n\r\nOutput signal can be selected to be either differential pressure linear or flow (volume) linear.\r\n\r\nThe M models have RS-485 connection for Modbus RTU communication. ML-SER tool is needed at commissioning for making the Modbus settings.\r\n\r\nThe transmitter zero point is kept accurate by using the regular automatic zeroing, eliminating the possible zero point drifting. No re calibration is normally needed.\r\n\r\nThe influence of process disturbances (e.g. turbulence) can be damped by selecting a suitable time constant (2 s\r\nor 8 s).\r\n\r\nThe N models have a display. The display resolution is 0,1 Pa for measured values below 200 Pa and 1 Pa for values over 200 Pa. The display can be added also after commissioning. ', NULL, 230, 115, 1, 1, '1', 111, '2021-09-13 01:53:53', 'PEL-8K.png', 0, 51),
(104, 'PEL-1000', 'Differential pressure transmitter', 'PEL 1000 is a pressure transmitter for detecting pressures and pressure differences in air handling systems. The proper measuring range can be chosen\r\nat commissioning.\r\n\r\nThe M models have RS-485 connection for Modbus RTU communication. ML-SER tool is needed at commissioning for making the Modbus settings.\r\n\r\nThe N models have a backlit display. The display resolution is 1 Pa. The display can be added also after commissioning.\r\n\r\nThe measurement output (0…10 V, 2…10 V or 0…5 V) can be changed to control output by using the ML-SER tool. Accordingly, the controller settings can\r\nbe changed by using the ML-SER tool.\r\n\r\nThe zero point drift can be eliminated manually by disconnecting the tubes from the pressure inlets and by pushing the zeroing button on the board inside the device.', NULL, 150, 75, 1, 1, '1', 1000, '2021-09-13 01:56:03', 'PEL-1000.png', 0, 51),
(105, 'PEL-2500', 'Differential pressure transmitter', 'PEL 2500 is a pressure transmitter for detecting pressures and pressure differences in air handling systems. The pressure measurement is temperature compensated according to the ambient temperature.\r\n\r\nOutput signal can be selected to be either differential pressure linear or flow (volume) linear.\r\n\r\nThe M models have RS-485 connection for Modbus RTU communication. ML-SER tool is needed at commissioning for making the Modbus settings.\r\n\r\nThe transmitter zero point is kept accurate by using the regular automatic zeroing, eliminating the possible zero point drifting. No re-calibration is normally needed.\r\n\r\nThe influence of process disturbances (e.g. turbulence) can be damped by selecting a suitable time constant (2 s or 8 s).\r\n\r\nThe N models have a backlit display. The display resolution is 0,1 Pa for measured values below 200 Pa and 1 Pa for values over 200 Pa. The display can be added also after commissioning. ', NULL, 230, 115, 1, 1, '1', 1000, '2021-09-13 01:58:04', 'PEL-2500.png', 2, 51),
(106, 'PP-PK、PP-SK', 'PP-PK／PP-SK', 'The PP air flow volume probes are designed for air flow volume measurement together with the IML air volume transmitter, for example. PP probe is also easy to install to the existing ducts.\r\nThe probe operates on the pitot tube principle and measures the total (Ptot) and static (Pstat) pressure components of airflow .\r\nThe measurement is done over several measuring points inside the probe. The number of measurement points depends on the duct size and shape. The IML can determine the average air flow volume based on the measurements. The measuring profile shape makes it possible to make accurate measurements from 1.0 m/s air speeds', NULL, 66, 33, 1, 1, '1', 33, '2021-09-13 02:07:58', 'PP-PK、PP-SK.png', 5, 51),
(107, 'VPEL', 'Differential pressure transmitter for water', 'VPEL differential pressure transmitter for measuring pressures of water / glycol heating and cooling systems. The measurement range 1.0 or 2.5 bar can be selected at the time of commissioning.', NULL, 566, 283, 1, 1, '1', 111, '2021-09-13 02:26:28', 'VPEL.png', 2, 51),
(108, 'VPL16', 'Water pressure transmitter', 'Water pressure transmitter VPL 16 is designed to detect pressures at the HVAC automation systems.\r\nThe pressure is measured with ceramic sensor element. Allowed mediums are water, water/glycol mixtures, air and oils.\r\n\r\nOutput is directly proportional to the pressure inside the pipeline. Material of wetted parts is stainless steel (AISI 303) and housing for electrical connections is made of heat resisting plastics.\r\n\r\nWhen the transmitter is connected to the cold / chilled water circuit, condensation on the sensor must be prevented. The condensation can be prevented by installing the transmitter far enough from the cold pipe,for example.\r\n\r\nThe range for measuring can be chosen at commissioning. The cover with display can be added afterwards. The socket for display is ready installed on the card.', NULL, 228, 114, 1, 1, '1', 11, '2021-09-13 02:38:36', 'VPL16.png', 0, 51),
(109, 'VPL60', 'Water pressure transmitter', 'Water pressure transmitter VPL 60 is designed to detect pressures at the HVAC automation systems.The pressure is measured with ceramic sensor element. Allowed mediums are water, water/glycol mixtures, air and oils.\r\n\r\nOutput is directly proportional to the pressure inside the pipeline. Material of wetted parts is stainless steel(AISI 303) and housing for electrical connections is made of heat resisting plastics.\r\n\r\nWhen the transmitter is connected to the cold / chilled water circuit, condensation on the sensor must be prevented. The condensation can be prevented by installing the transmitter far enough from the cold pipe,for example.\r\n\r\nThe range for measuring can be chosen at commissioning. The cover with display can be added afterwards. The socket for display is ready installed on the card.', NULL, 228, 114, 1, 1, '1', 111, '2021-09-13 02:41:32', 'VPL60.png', 0, 51),
(110, '506.933a03101W0 ', 'OEM Pressure sensor', 'The pressure transmitter type 506 with proven ceramic technology, features adjusted and  amplified sensor signals which are available as standardised current outputs. The pressure sensors are specially developed for use in the industrial refrigeration technology.', NULL, 2000, 1000, 1, 1, '1', 1111, '2021-09-13 02:44:52', '506.933a03101W0 .png', 0, 51),
(111, '511.941003572', 'OEM Pressure sensor', 'These compact OEM pressure transmitters type 511 meet the highest specification for mechanical stress, EMC compatibility, and operational reliability, which means that this range is particulary suitable for all demanding industrial applications.  This sensor utilises a ceramic technology, developed by Huba Control and for the last 20 years, in millions of applications, used in combination with unique integrated electronic design, means that the type 511 series has a high degree of accuracy for all temperature ranges.  These units are available in small or production quantities, with an excellent price to performance ratio.', NULL, 2000, 1111, 1, 1, '1', 1111, '2021-09-13 03:06:31', '511.941003572.png', 0, 51),
(112, 'IND-TH Series', 'Humdity & Temperature Transmitter For HVAC Applications', 'IND-TH series is designed to serve the building automation / HVAC market, as well as a wide variety of general purpose relative humidity monitoring applications.', NULL, 2222, 1111, 1, 1, '1', 1111, '2021-09-13 03:09:30', 'IND-TH Series.png', 0, 52),
(113, 'SYS-TH Series', 'Humdity & Temperature Transmitter For Indoor Applications', 'SYS-TH series Wall-Mounted Humidity & Temperature Transmitter is the most versatile room transmitter on the market. The housing is made of ABS material, stable,durable and well vented to provide air flow across the sensor to improve measurement accuracy.\r\nSYS-TH Series with beautiful appearance and clear LCD display, it also equips with 1 relay output, and provides 0~10V or 4~20mA output. Moreover, it is able to use a transformer or power supply unit with wall-mounted or desktop mounting options.', NULL, 2222, 1111, 1, 1, '1', 1111, '2021-09-13 03:11:30', 'SYS-TH Series.png', 1, 52),
(114, 'SYS-TH-BT', 'Indoor Digital Thermo-Hygrometer', 'Clear and intuitive digital display of temperature,hygrometer and battery indicator.Most popular applications for incubators, building, office,storage any other place that requires monitoring of temperature and humidity levels.', NULL, 2222, 1111, 1, 1, '1', 1111, '2021-09-13 03:13:31', 'SYS-TH-BT.png', 0, 52),
(115, 'SYS-TH-L', 'USB Humdity & Temperature Datalogger', 'SYS-TH-L is an economical solution to monitoring server rooms, storage room, greenhouses, library, office or anyplace where you are concerned about the critical systems damage caused by temperature or humidity conditions.\r\nThe SYS-TH-L record temperature and time values,which can later be analysed using a PC.', NULL, 2222, 1111, 1, 1, '1', 1111, '2021-09-13 03:15:32', 'SYS-TH-L.png', 0, 52),
(116, 'IVL', 'Air velocity and temperature transmitter', '\"IVL 02 air velocity and temperature transmitter is designed for HVAC applications. Output signals correspond to the air flow velocity and temperature inside\r\nthe ventilation duct.\r\n\r\nTransmitter is to be mounted in the duct, on a place where the air flow is as laminar as possible. Both outputs can be separately selected to be either 4…20 mA or 0…10 V outputs.\r\n\r\nThe N model display resolution is 0,1 m/s for velocity and 0,1 °C for temperature. The display can be added also after commissioning.\r\n\r\nThe measurement values scroll on the display. The wanted value can be locked to view continuously by removing the jumper on back of the display board.\r\n\r\nAll models are also available with a 100 and 400 mm long stem. \"\r\n', NULL, 200, 100, 1, 1, '1', 111, '2021-09-13 03:21:02', 'IVL.png', 1, 53),
(117, 'IVLJ', 'Air flow and temperature transmitter', 'IVLJ transmitter is designed for HVAC applications.\r\nOutput signals correspond to the air flow velocity and temperature inside the ventilation duct.\r\n\r\nProbe of the transmitter is mounted in the duct, on a place where the air flow is as laminar as possible. The transmitter should be mounted a suitable place near the probe. Linear and air flow proportional measuring signal is produced by comparing the sensor element temperatures. Both outputs can be separately selected to be either 4…20 mA or 0…10 V outputs.\r\n\r\nThe N model display resolution is 0,1 m/s for velocity and 0,1 °C for temperature. The display can be added also after commissioning. The measurement values scroll on the display. The wanted value can be locked to view continuously by removing the jumper on back of the display board.\r\n\r\nIVLJ 10 is also available with a 100 and 400 mm long probe stem.', NULL, 322, 161, 1, 1, '1', 1111, '2021-09-13 03:28:50', 'IVLJ.png', 1, 53),
(118, 'IWM-485', 'ANEMOMETERS', 'IWM-485 is a high performance digital anemometer (wind gauge), suitable for monitoring wind plants and wind speed in ski lifts, motorways, airports and ridge ways. Easy mounting anemometer - measure windspeed IWM-485 has been designed to give reliable readings. The sensor has a mechanical plug-and-play. The use RS485 digital output simplifies the wiring especially in stations with multiple instruments and gauges, so that it’s possible to create a unique chain (bus) at the confluence of the different sensor data. IWM-485 is available with a M8-4 pole connector that allows a faster and superior installation and maintenance, as well as the possibility of installing a multi-probe plug&play for easier maintenance controls. It is compatible with the Ammonit Meteo-40 data-logger (on bus RS485). Also available in the MEASNET centre’s calibrated version.', NULL, 1072, 536, 1, 1, '1', 1111, '2021-09-13 03:33:46', 'IWM-485.png', 0, 53);
INSERT INTO `product` (`id`, `model`, `name`, `producttext`, `specification`, `sellprice`, `purchaseprice`, `vendorid`, `productcategoryid`, `productstatus`, `quantity`, `data`, `pictureurl`, `count`, `type`) VALUES
(119, 'TUNA 20', 'Wind speed detector', 'TUNA 20 has been designed to measure wind speed and outside air temperature. High wind shield factors cool down buildings faster and with wind measurement the heating system can be compensated to take the cooling effect into account.\r\n\r\nLinear output signal is calculated based on the cooling effect caused by the wind to the temperature\r\nmeasurement elements.\r\n\r\nTUNA 20 can be configured to operate with 0…10 Vdc or 4…20 mA output options.\r\n\r\nUsing RY 1-U relay module the voltage signal can be converted to a voltfree 230 Vac rated contact.\r\n\r\nInstallation instructions:\r\nSensor is mounted on a wall with the measurement element\r\ndownwards.\r\n\r\nThe sensor should be mounted on a wall where the wind speed is most prevalent. The wall should continue on both sides of the sensor for a minimum of 3 meters to provide accurate measurement. The sensor should also be more than 1 m below the roof edge. ', NULL, 370, 185, 1, 1, '1', 111, '2021-09-13 03:39:21', 'TUNA 20.png', 4, 53);

-- --------------------------------------------------------

--
-- 資料表結構 `product_option`
--

CREATE TABLE `product_option` (
  `id` int(50) NOT NULL,
  `productid` int(11) DEFAULT NULL,
  `product_group` varchar(40) COLLATE utf8_bin NOT NULL,
  `product_option` varchar(160) COLLATE utf8_bin DEFAULT NULL,
  `product_group2` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '群組2',
  `product_option2` varchar(160) COLLATE utf8_bin DEFAULT NULL COMMENT '子項2',
  `product_group3` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '群組3',
  `product_option3` varchar(160) COLLATE utf8_bin DEFAULT NULL COMMENT '子項3',
  `product_status` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '狀態',
  `purchase_price` int(20) DEFAULT NULL COMMENT '進價',
  `product_price` int(20) DEFAULT NULL COMMENT '售價',
  `product_quantity` int(20) DEFAULT NULL COMMENT '庫存',
  `product_model` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `product_type` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `product_option`
--

INSERT INTO `product_option` (`id`, `productid`, `product_group`, `product_option`, `product_group2`, `product_option2`, `product_group3`, `product_option3`, `product_status`, `purchase_price`, `product_price`, `product_quantity`, `product_model`, `product_type`) VALUES
(34, 51, 'Input', '1-pen', '', '', '', '', NULL, 1160, 2320, 1107, '1-pen--', 'TRM-1001C000T'),
(35, 51, 'Input', '2-pen', '', '', '', '', NULL, 1596, 3200, 10, '2-pen--', 'TRM-1002C000T'),
(36, 51, 'Input', '6-point', '', '', '', '', NULL, 672, 1360, 6, '6-point--', 'TRM-1006C000T'),
(37, 52, 'Input', '6-point', '', '', '', '', NULL, 980, 2000, 1111, '6-point--', 'TRM-2006A000T'),
(38, 52, 'Input', '9-point', '', '', '', '', NULL, 1148, 2296, 22, '9-point--', 'TRM-2009A000T'),
(39, 52, 'Input', '12-point', '', '', '', '', NULL, 1596, 3200, 22, '12-point--', 'TRM-2012A000T'),
(40, 53, 'Model', '24*48mm', '', '', '', '', NULL, 60, 120, 1111, '24*48mm--', 'TTM-002W-R-A'),
(41, 53, 'Model', '48*48mm', '', '', '', '', NULL, 52, 120, 11, '48*48mm--', 'TTM-004W-R-A'),
(42, 53, 'Model', '96*48mm', '', '', '', '', NULL, 69, 140, 11, '96*48mm--', 'TTM-005W-R-A'),
(43, 53, 'Model', '48*96mm', '', '', '', '', NULL, 70, 140, 11, '48*96mm--', 'TTM-006W-R-A'),
(44, 53, 'Model', '72*72mm', '', '', '', '', NULL, 64, 128, 11, '72*72mm--', 'TTM-007W-R-A'),
(45, 53, 'Model', '96*96mm', '', '', '', '', NULL, 73, 146, 33, '96*96mm--', 'TTM-009W-R-A'),
(46, 55, '1', NULL, NULL, NULL, NULL, NULL, NULL, 68, 140, 1109, NULL, NULL),
(47, 56, 'Model', '48*48', '', '', '', '', NULL, 119, 240, 1110, '48*48--', 'TTM-214-(Q/X)-N-N-100-240V (Free power supply)'),
(48, 56, 'Model', '96*48', '', '', '', '', NULL, 147, 300, 10, '96*48--', 'TTM-215-(Q/X)-N-N-100-240V (Free power supply)'),
(49, 56, 'Model', '72*72', '', '', '', '', NULL, 161, 330, 11, '72*72--', 'TTM-217-(Q/X)-N-N-100-240V (Free power supply)'),
(50, 56, 'Model', '96*96', '', '', '', '', NULL, 175, 350, 11, '96*96--', 'TTM-219-(Q/X)-N-N-100-240V (Free power supply)'),
(51, 57, '1', NULL, NULL, NULL, NULL, NULL, NULL, 350, 700, 1111, NULL, NULL),
(52, 48, '1', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 58, '1', NULL, NULL, NULL, NULL, NULL, NULL, 434, 870, 1111, NULL, NULL),
(54, 59, 'Output', 'Relay contac', '', '', '', '', NULL, 23, 46, 1111, 'Relay contac--', 'TTM-i4N-P-AB'),
(55, 59, 'Output', 'SSR drive voltage output', '', '', '', '', NULL, 23, 46, 44, 'SSR drive voltage output--', 'TTM-i4N-R-AB'),
(56, 60, '1', NULL, NULL, NULL, NULL, NULL, NULL, 196, 400, 1111, NULL, NULL),
(57, 61, '資料傳輸方式', '網際網路', '', '', '', '', NULL, 1000, 2000, 1111, '網際網路--', '網際網路'),
(58, 61, '資料傳輸方式', '區域網路', '', '', '', '', NULL, 1000, 2000, 11, '區域網路--', '區域網路'),
(59, 62, '1', NULL, NULL, NULL, NULL, NULL, NULL, 74, 150, 1111, NULL, NULL),
(60, 63, '1', NULL, NULL, NULL, NULL, NULL, NULL, 104, 210, 1111, NULL, NULL),
(61, 64, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1000, 2000, 1111, NULL, NULL),
(62, 65, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1000, 2000, 1, NULL, NULL),
(63, 66, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1000, 2000, 1, NULL, NULL),
(64, 67, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1000, 2000, 1, NULL, NULL),
(65, 68, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1000, 2000, 1, NULL, NULL),
(66, 69, 'Flow range', '0.5-5L/min', '', '', '', '', NULL, 422, 1000, 100, '0.5-5L/min--', 'KSL-5L'),
(67, 69, 'Flow range', '1.5-10L/min', '', '', '', '', NULL, 470, 1000, 100, '1.5-10L/min--', 'KSL-10L'),
(68, 69, 'Flow range', '5-30L/min', '', '', '', '', NULL, 470, 1000, 100, '5-30L/min--', 'KSL-30L'),
(69, 69, 'Flow range', '7-50L/min', '', '', '', '', NULL, 470, 1000, 100, '7-50L/min--', 'KSL-50L'),
(70, 70, 'Flow range', '10-80L/min', '', '', '', '', NULL, 637, 1300, 1111, '10-80L/min--', 'KSL-80L'),
(71, 70, 'Flow range', '20-160L/min', '', '', '', '', NULL, 637, 1300, 1, '20-160L/min--', 'KSL-160L'),
(72, 71, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1000, 20000, 1, NULL, NULL),
(73, 72, 'Flow range', '0.5-5L/min', '', '', '', '', NULL, 1000, 2000, 1, '0.5-5L/min--', 'PSL-5L'),
(74, 72, 'Flow range', '5-30L/min', '', '', '', '', NULL, 1000, 2000, 1, '5-30L/min--', 'PSL-30L'),
(75, 73, 'Gas', 'C2H4', '', '', '', '', NULL, 790, 1800, 1, 'C2H4--', 'E2608-C2H4-W-DC-N'),
(76, 73, 'Gas', 'O2', '', '', '', '', NULL, 307, 620, 1, 'O2--', 'E2608-O2-5Y-W-DC-N'),
(77, 73, 'Gas', 'CO', '', '', '', '', NULL, 216, 500, 1, 'CO--', 'E2608-CO-W-DC-N'),
(78, 73, 'Gas', 'CO2', '', '', '', '', NULL, 396, 800, 1, 'CO2--', 'E2608-CO2-10K-W-DC-N'),
(79, 73, 'Gas', 'NH3', '', '', '', '', NULL, 415, 930, 1, 'NH3--', 'E2608-NH3-E-W-DC-N'),
(80, 73, 'Gas', 'H2S', '', '', '', '', NULL, 396, 800, 1, 'H2S--', 'E2608-H2S-W-DC-N '),
(81, 74, 'Model', 'VVN1', '', '', '', '', NULL, 27, 55, 1, 'VVN1--', 'VVN1'),
(82, 74, 'Model', 'VVN2', '', '', '', '', NULL, 35, 70, 1, 'VVN2--', 'VVN2'),
(83, 75, '1', NULL, NULL, NULL, NULL, NULL, NULL, 23, 49, 1, NULL, NULL),
(84, 76, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1000, 2000, 1, NULL, NULL),
(85, 77, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1000, 2000, 1, NULL, NULL),
(86, 78, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1000, 2000, 1, NULL, NULL),
(87, 79, '1', NULL, NULL, NULL, NULL, NULL, NULL, 116, 240, 1, NULL, NULL),
(88, 80, '1', NULL, NULL, NULL, NULL, NULL, NULL, 750, 1500, 1, NULL, NULL),
(89, 81, 'Field of View', '2:1 divergent optics', '', '', '', '', NULL, 769, 1600, 1, '2:1 divergent optics--', 'EX-21-(LT/MT/HT/XT)-C-5'),
(90, 81, 'Field of View', '15:1 divergent optics', '', '', '', '', NULL, 800, 1600, 1, '15:1 divergent optics--', 'EX-151-(LT/MT/HT/XT)-C-5'),
(91, 81, 'Field of View', '30:1 divergent optics', '', '', '', '', NULL, 804, 1610, 1, '30:1 divergent optics--', 'EX-301-(LT/MT/HT/XT)-C-5'),
(92, 81, 'Field of View', 'Close focus optics', '', '', '', '', NULL, 977, 2000, 1, 'Close focus optics--', 'EX-CF-(LT/MT/HT/XT)-C-5'),
(93, 82, 'Field of view', '30:1 divergent optics', '', '', '', '', NULL, 1617, 3400, 1, '30:1 divergent optics--', 'FM2.2-301-(MT/HT)-(CRT/BRT)-3M'),
(94, 82, 'Field of view', '75:1 divergent optics', '', '', '', '', NULL, 1694, 3400, 1, '75:1 divergent optics--', 'FM2.2-751-(MT/HT)-(CRT/BRT)-3M'),
(95, 83, '1', NULL, NULL, NULL, NULL, NULL, NULL, 460, 920, 1, NULL, NULL),
(96, 84, '1', NULL, NULL, NULL, NULL, NULL, NULL, 331, 660, 1, NULL, NULL),
(97, 85, '1', NULL, NULL, NULL, NULL, NULL, NULL, 177, 360, 1, NULL, NULL),
(98, 86, 'Response time and optics', '10 ms response, 1.6 mm spot at 35 mm distance', '', '', '', '', NULL, 977, 2000, 1, '10 ms response, 1.6 mm spot at 35 mm distance--', 'PCU-S1.6-2M-1V'),
(99, 86, 'Response time and optics', '10 ms response, 3.0 mm spot at 70 mm distance', '', '', '', '', NULL, 977, 2000, 1, '10 ms response, 3.0 mm spot at 70 mm distance--', 'PCU-S3.0-2M-1V'),
(100, 86, 'Response time and optics', '1 ms response, 3.5 mm spot at 100 mm distance', '', '', '', '', NULL, 2638, 5300, 1, '1 ms response, 3.5 mm spot at 100 mm distance--', 'PCU-F3.5-2M-1V'),
(101, 86, 'Response time and optics', '1 ms response, 7.0 mm spot at 200 mm distance', '', '', '', '', NULL, 2638, 5300, 1, '1 ms response, 7.0 mm spot at 200 mm distance--', 'PCU-F7.0-2M-1V'),
(102, 86, 'Response time and optics', '7 mm measured spot diameter at 180 mm distanc', '', '', '', '', NULL, 2638, 5300, 1, '7 mm measured spot diameter at 180 mm distanc--', 'PCU-G7.0-2M-1V'),
(103, 86, 'Response time and optics', '20 mm measured spot diameter at 500 mm distance', '', '', '', '', NULL, 2638, 5300, 1, '20 mm measured spot diameter at 500 mm distance--', 'PCU-G20.0-2M-1V'),
(104, 86, 'Response time and optics', '2.2 mm measured spot diameter at 150 mm distance', '', '', '', '', NULL, 4303, 8600, 1, '2.2 mm measured spot diameter at 150 mm distance--', 'PCU-GH2.2-2M-1V'),
(105, 86, 'Response time and optics', '4.5 mm measured spot diameter at 300 mm distance', '', '', '', '', NULL, 4303, 8600, 1, '4.5 mm measured spot diameter at 300 mm distance--', 'PCU-GH4.5-2M-1V'),
(106, 86, 'Response time and optics', '12 mm measured spot diameter at 200 mm distance', '', '', '', '', NULL, 3476, 6900, 1, '12 mm measured spot diameter at 200 mm distance--', 'PCU-P12.0-2M-1V'),
(107, 86, 'Response time and optics', '0.7 mm measured spot diameter at 40 mm distance', '', '', '', '', NULL, 4303, 8600, 1, '0.7 mm measured spot diameter at 40 mm distance--', 'PCU-XSA0.7-2M-1V'),
(108, 86, 'Response time and optics', '1 mm measured spot diameter at 100 mm distance', '', '', '', '', NULL, 2638, 5300, 1, '1 mm measured spot diameter at 100 mm distance--', 'PCU-XSB1.0-2M-1V'),
(109, 86, 'Response time and optics', '1 mm measured spot diameter at 50 mm distance', '', '', '', '', NULL, 4303, 8600, 1, '1 mm measured spot diameter at 50 mm distance--', 'PCU-MA1.0-2M-1V'),
(110, 86, 'Response time and optics', '2 mm measured spot diameter at 100 mm distance', '', '', '', '', NULL, 4303, 8600, 1, '2 mm measured spot diameter at 100 mm distance--', 'PCU-MA2.0-2M-1V'),
(111, 86, 'Response time and optics', '3.5 mm measured spot diameter at 200 mm distance', '', '', '', '', NULL, 4303, 8600, 1, '3.5 mm measured spot diameter at 200 mm distance--', 'PCU-MA3.5-2M-1V'),
(112, 86, 'Response time and optics', '11 mm measured spot diameter at 200 mm distance', '', '', '', '', NULL, 3142, 6300, 1, '11 mm measured spot diameter at 200 mm distance--', 'PCU-MB11.0-2M-1V'),
(113, 87, '1', NULL, NULL, NULL, NULL, NULL, NULL, 193, 400, 1, NULL, NULL),
(114, 88, '型號', 'PM-MA-CF-CT-CRT', '', '', '', '', NULL, 645, 1300, 1, 'PM-MA-CF-CT-CRT--', 'PM-MA-CF-CT-CRT'),
(115, 89, '型號', 'PM2.2-251-(HT/MT)-CRT', '', '', '', '', NULL, 753, 1600, 1, 'PM2.2-251-(HT/MT)-CRT--', 'PM2.2-251-(HT/MT)-CRT'),
(116, 90, '型號', 'PMB21', '', '', '', '', NULL, 208, 420, 1, 'PMB21--', 'PMB21'),
(117, 90, '型號', 'PMB201', '', '', '', '', NULL, 239, 480, 1, 'PMB201--', 'PMB201'),
(118, 90, '型號', 'PMBXCF', '', '', '', '', NULL, 315, 630, 1, 'PMBXCF--', 'PMBXCF'),
(119, 89, '型號', 'PM2.2-751-HT-CRT', '', '', '', '', NULL, 799, 1600, 1, 'PM2.2-751-HT-CRT--', 'PM2.2-751-HT-CRT'),
(120, 89, '型號', 'PM2.2-151-(PT/MT/HT)-(CB/BB) ', '', '', '', '', NULL, 645, 1400, 1, 'PM2.2-151-(PT/MT/HT)-(CB/BB) --', 'PM2.2-151-(PT/MT/HT)-(CB/BB) '),
(121, 89, '型號', 'PM2.2-251-(PT/MT/HT)-(CB/BB) ', '', '', '', '', NULL, 599, 1200, 1, 'PM2.2-251-(PT/MT/HT)-(CB/BB) --', 'PM2.2-251-(PT/MT/HT)-(CB/BB) '),
(122, 89, '型號', 'PM2.2-751-(PT/MT/HT)-(CB/BB) ', '', '', '', '', NULL, 645, 1300, 1, 'PM2.2-751-(PT/MT/HT)-(CB/BB) --', 'PM2.2-751-(PT/MT/HT)-(CB/BB) '),
(123, 89, '型號', 'PM2.2-CF-751-(PT/MT/HT)-(CB/BB) ', '', '', '', '', NULL, 722, 1444, 1, 'PM2.2-CF-751-(PT/MT/HT)-(CB/BB) --', 'PM2.2-CF-751-(PT/MT/HT)-(CB/BB) '),
(124, 88, '型號', 'PM-MA-301-CT-CRT', '', '', '', '', NULL, 568, 1140, 1, 'PM-MA-301-CT-CRT--', 'PM-MA-301-CT-CRT'),
(125, 88, '型號', 'PM-MA-151-CT-CRT', '', '', '', '', NULL, 491, 1000, 1, 'PM-MA-151-CT-CRT--', 'PM-MA-151-CT-CRT'),
(126, 91, 'MODEL NUMBERS', 'PN151', '', '', '', '', NULL, 177, 360, 1, 'PN151--', 'PN151'),
(127, 91, 'MODEL NUMBERS', 'PN151-K', '', '', '', '', NULL, 193, 400, 1, 'PN151-K--', 'PN151-K'),
(128, 92, '1', NULL, NULL, NULL, NULL, NULL, NULL, 214, 440, 1, NULL, NULL),
(129, 93, 'Spectral response', '2.2 μm, for measuring reflective metals and high-temperature objects', 'Field of view', '25:1 divergent optics', 'Temperature range', '250°C to 1000°C', NULL, 691, 1390, 1, '2.2 μm, for measuring reflective metals and high-temperature objects-25:1 divergent optics-250°C to 1000°C', 'PUA2-251-MT'),
(130, 93, 'Spectral response', '2.2 μm, for measuring reflective metals and high-temperature objects', 'Field of view', '75:1 divergent optics', 'Temperature range', '250°C to 1000°C', NULL, 768, 1600, 1, '2.2 μm, for measuring reflective metals and high-temperature objects-75:1 divergent optics-250°C to 1000°C', 'PUA2-751-MT'),
(131, 93, 'Spectral response', '2.2 μm, for measuring reflective metals and high-temperature objects', 'Field of view', '75:1 divergent optics', 'Temperature range', '450°C to 2000°C', NULL, 768, 1600, 1, '2.2 μm, for measuring reflective metals and high-temperature objects-75:1 divergent optics-450°C to 2000°C', 'PUA2-751-HT'),
(132, 93, 'Spectral response', '8 to 14 μm, general-purpose, for non-reflective  non-metals, painted metal surfaces and most  other applications', 'Field of view', '30:1 divergent optics', 'Temperature range', '', NULL, 538, 1080, 9, '8 to 14 μm, general-purpose, for non-reflective  non-metals, painted metal surfaces and most  other applications-30:1 divergent optics-', 'PUA8-301'),
(133, 94, 'Field of view', '2:1 wide-angle divergent optics', '', '', '', '', NULL, 207, 414, 100, '2:1 wide-angle divergent optics--', 'PMU21'),
(134, 94, 'Field of view', '20:1 general-purpose divergent optics ', '', '', '', '', NULL, 238, 476, 100, '20:1 general-purpose divergent optics --', 'PMU201'),
(135, 95, 'Model', '941000', '', '', '', '', NULL, 1000, 2000, 100, '941000--', '941000'),
(136, 95, 'Model', '95000000', '', '', '', '', NULL, 1000, 2000, 100, '95000000--', '95000000'),
(137, 96, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1000, 2000, 1, NULL, NULL),
(138, 97, 'Switching range', '20...300 Pa ', '', '', '', '', NULL, 14, 28, 1, '20...300 Pa --', 'PEK 300 '),
(139, 97, 'Switching range', '50...500 Pa ', '', '', '', '', NULL, 14, 28, 1, '50...500 Pa --', 'PEK 500'),
(140, 97, 'Switching range', '500...2500 Pa', '', '', '', '', NULL, 14, 28, 1, '500...2500 Pa--', 'PEK 2500'),
(141, 97, 'Switching range', '1000...5000 Pa ', '', '', '', '', NULL, 14, 28, 1, '1000...5000 Pa --', 'PEK 5000'),
(142, 98, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1000, 2000, 1, NULL, NULL),
(143, 99, 'Model', '9300071A1', '', '', '', '', NULL, 1000, 2000, 100, '9300071A1--', '9300071A1'),
(144, 99, 'Model', '932007101', '', '', '', '', NULL, 1000, 2000, 100, '932007101--', '932007101'),
(145, 100, 'Model', '912015040', '', '', '', '', NULL, 1000, 2000, 1, '912015040--', '912015040'),
(146, 100, 'Model', '913025010', '', '', '', '', NULL, 1000, 2000, 1, '913025010--', '913025010'),
(147, 100, 'Model', '915025040', '', '', '', '', NULL, 1000, 2000, 1, '915025040--', '915025040'),
(148, 101, 'Model', '910225010', '', '', '', '', NULL, 1000, 2000, 1, '910225010--', '910225010'),
(149, 101, 'Model', '913015010', '', '', '', '', NULL, 1000, 2000, 1, '913015010--', '913015010'),
(150, 101, 'Model', '913035010', '', '', '', '', NULL, 1000, 2000, 1, '913035010--', '913035010'),
(151, 101, 'Model', '915015010', '', '', '', '', NULL, 1000, 2000, 1, '915015010--', '915015010'),
(152, 101, 'Model', '931225010', '', '', '', '', NULL, 1000, 2000, 1, '931225010--', '931225010'),
(153, 101, 'Model', '931226010', '', '', '', '', NULL, 1000, 2000, 1, '931226010--', '931226010'),
(154, 101, 'Model', '932225040', '', '', '', '', NULL, 1000, 2000, 1, '932225040--', '932225040'),
(155, 102, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1000, 2000, 1111, NULL, NULL),
(156, 103, '1', NULL, NULL, NULL, NULL, NULL, NULL, 115, 230, 111, NULL, NULL),
(157, 104, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1000, 2000, 1000, NULL, NULL),
(158, 105, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1000, 2000, 1000, NULL, NULL),
(159, 106, 'Duct diameter', '100 mm', '', '', '', '', NULL, 33, 66, 32, '100 mm--', 'PP-PK R100'),
(160, 106, 'Duct diameter', '125 mm', '', '', '', '', NULL, 33, 66, 33, '125 mm--', 'PP-PK R160'),
(161, 106, 'Duct diameter', '200 mm', '', '', '', '', NULL, 33, 66, 33, '200 mm--', 'PP-PK R200'),
(162, 106, 'Duct diameter', '250 mm', '', '', '', '', NULL, 33, 66, 33, '250 mm--', 'PP-PK R250'),
(163, 106, 'Duct diameter', '300 mm', '', '', '', '', NULL, 48, 96, 48, '300 mm--', 'PP-SK L300'),
(164, 106, 'Duct diameter', '450 mm', '', '', '', '', NULL, 48, 96, 48, '450 mm--', 'PP-SK L450'),
(165, 106, 'Duct diameter', '500 mm', '', '', '', '', NULL, 48, 96, 48, '500 mm--', 'PP-SK L500'),
(166, 106, 'Duct diameter', '600 mm', '', '', '', '', NULL, 48, 96, 48, '600 mm--', 'PP-SK L600'),
(167, 106, 'Duct diameter', '650 mm', '', '', '', '', NULL, 64, 128, 64, '650 mm--', 'PP-SK L650'),
(168, 106, 'Duct diameter', '800 mm', '', '', '', '', NULL, 64, 128, 64, '800 mm--', 'PP-SK L800'),
(169, 106, 'Duct diameter', '900 mm', '', '', '', '', NULL, 64, 128, 64, '900 mm--', 'PP-SK L900'),
(170, 106, 'Duct diameter', '1000 mm', '', '', '', '', NULL, 64, 128, 64, '1000 mm--', 'PP-SK L1000'),
(171, 107, 'Model', 'VPEL 1.0/2.5', '', '', '', '', NULL, 283, 566, 111, 'VPEL 1.0/2.5--', 'VPEL 1.0/2.5'),
(172, 107, 'Model', 'VPEL 1.0/2.5-N', '', '', '', '', NULL, 312, 624, 11, 'VPEL 1.0/2.5-N--', 'VPEL 1.0/2.5-N'),
(173, 107, 'Model', 'VPEL 4.0/6.0', '', '', '', '', NULL, 283, 466, 111, 'VPEL 4.0/6.0--', 'VPEL 4.0/6.0'),
(174, 107, 'Model', 'VPEL 4.0/6.0-N', '', '', '', '', NULL, 312, 466, 111, 'VPEL 4.0/6.0-N--', 'VPEL 4.0/6.0-N'),
(175, 108, '1', NULL, NULL, NULL, NULL, NULL, NULL, 114, 228, 11, NULL, NULL),
(176, 109, '1', NULL, NULL, NULL, NULL, NULL, NULL, 114, 228, 111, NULL, NULL),
(177, 110, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1000, 2000, 1111, NULL, NULL),
(178, 111, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1111, 2000, 1111, NULL, NULL),
(179, 112, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1111, 2222, 1111, NULL, NULL),
(180, 113, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1111, 2222, 1111, NULL, NULL),
(181, 114, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1111, 2222, 1111, NULL, NULL),
(182, 115, '1', NULL, NULL, NULL, NULL, NULL, NULL, 1111, 2222, 1111, NULL, NULL),
(183, 116, '1', 'IVL 10', '', '', '', '', NULL, 82, 165, 111, 'IVL 10--', 'IVL 10'),
(184, 116, '1', 'IVL 10-400', '', '', '', '', NULL, 99, 200, 111, 'IVL 10-400--', 'IVL 10-400'),
(185, 116, '1', 'IVL 10-100', '', '', '', '', NULL, 99, 200, 111, 'IVL 10-100--', 'IVL 10-100'),
(186, 116, '1', 'IVL 02', '', '', '', '', NULL, 82, 165, 111, 'IVL 02--', 'IVL 02'),
(187, 116, '1', 'IVL 20', '', '', '', '', NULL, 96, 192, 111, 'IVL 20--', 'IVL 20'),
(188, 116, '1', 'IVL 20-400', '', '', '', '', NULL, 143, 286, 111, 'IVL 20-400--', 'IVL 20-400'),
(189, 117, '1', 'IVLJ 02', '', '', '', '', NULL, 161, 322, 1111, 'IVLJ 02--', 'IVLJ 02'),
(190, 117, '1', 'IVLJ 10', '', '', '', '', NULL, 161, 322, 1111, 'IVLJ 10--', 'IVLJ 10'),
(191, 118, '1', NULL, NULL, NULL, NULL, NULL, NULL, 536, 1072, 1111, NULL, NULL),
(192, 119, '1', NULL, NULL, NULL, NULL, NULL, NULL, 185, 370, 111, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `product_picture`
--

CREATE TABLE `product_picture` (
  `id` int(20) NOT NULL,
  `productid` int(20) NOT NULL,
  `producturl` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `product_picture`
--

INSERT INTO `product_picture` (`id`, `productid`, `producturl`) VALUES
(1, 1, 'TTM000.gif'),
(2, 1, 'TTM000.gif');

-- --------------------------------------------------------

--
-- 資料表結構 `product_specification`
--

CREATE TABLE `product_specification` (
  `specification` int(50) NOT NULL,
  `id` int(20) DEFAULT NULL,
  `sptext` varchar(510) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `product_specification`
--

INSERT INTO `product_specification` (`specification`, `id`, `sptext`) VALUES
(39, 48, 'Large touch panel for easier operation'),
(40, 48, 'Large memory capacity with SD card and USB memory'),
(41, 48, 'Historical trend indication shows the currently recorded past time data and the past recorded data in the file and can output CSV file format.'),
(42, 48, 'Users can switch the display mode between bar graph, trend,and digital on a per-group basis in accordance with the subject of measurement.'),
(43, 48, '13 kinds of thermocouples, 2 kinds of RTDs, and 8 kinds of DC voltage/current input (shunt resistance required) can be recorded up to 6 points.'),
(44, 48, 'Automatically LCD shutoff function'),
(45, 48, 'Equipped with communication function as a standard RS485 Modbus/USB2.0 Modbus is possible'),
(46, 48, 'Equipped with DI/DO function as a standard'),
(63, 51, 'Compact size:144(W)*144(H)*150(D)mm'),
(64, 51, '1.5kg(6 point recirder)of lightest weight on an industrial level.'),
(65, 51, 'Universal input and range.'),
(66, 51, 'RS-232C communication function provided for in standard specifications.'),
(67, 51, 'Option(detailed on the reverse of Ordering Information) & consumables available. '),
(68, 51, 'IP-65 conformed with Dust-proof & Water-proof'),
(69, 51, 'UL,CSA & CE approvals.'),
(75, 52, '5.7-Inch TFT liquid crystal display touch panel.'),
(76, 52, 'Selectable from input channel 6.9 and 12CH'),
(77, 52, 'Multi-range input'),
(78, 52, 'PC support software as standard accessory'),
(79, 52, 'Etherent communication function supplied as standard equipmwnt'),
(80, 52, 'Data storage to large capacity SD card'),
(81, 52, 'Conforms to IP65 water-proof/dust-proof(Front portion)'),
(82, 52, 'Conforms to CE standard'),
(83, 53, 'The most appropriate PID constant is automatically computed for the controlled objects.PID constant is computed by performing the tuning, or when the hunting occurs.'),
(84, 53, 'Priority Display Demanding parameter screens are monitored and set up under operational mode screen. (max. 9 points)'),
(85, 53, 'Multiple Inputs Thermocouple / R.T.D. (Pt100 & JPt100) are selectable by front key'),
(86, 53, 'Conforms to '),
(87, 53, 'Manual output function is applicable for versatile applications of instrumentation systems.'),
(88, 53, 'Sampling Cycle: 250mS'),
(89, 53, 'Communication Function (RS-485: TOHO Protocol / MODBUS)'),
(90, 53, 'A PID control is available to control the overshoot which occurs when the control is just starting.Further, in order to improve the controllability, PID algorithm of TTM-200 series had been introduced.'),
(92, 53, 'DI Function The following functions are switchable:  ① SV / SV2  ② RUN / READY  ③ AUTO (RUN) / Manual  ④ Normal / Reverse Action  ⑤ AT (Auto-Tuning) Start  ⑥ Normal (SV2) / Reverse Action (SV)  ⑦ TIMER Start / Reset '),
(93, 53, 'Others  ① CT Input (w/ Input Monitor) ② Shift setting of OFF position during the ON / OFF control (for both Output 1 & 2). ③ Heating / Cooling Control (w/ PID Control Function on Cooling Side).  ④ Ramp Function '),
(95, 55, 'Equipped with a control method that reduces start-up time and suppresses overshoots following external disturbances.'),
(96, 55, 'The most suitable PID constant for the relevant control is automatically calculated. The PID constant is calculated when the parameters are amended and when tuning is carried out, when unstable temperatures occur owing to external disturbances, and when hunting occurs.'),
(97, 55, 'Displays and allows the setup of only the required parameters among all parameters.'),
(98, 55, 'The [Start or stop control when a predetermined period has elapsed] control can be set up for a single unit. The timer function can be used independently (ON/OFF for event output.)'),
(99, 55, 'Required parameter screens can be displayed and set up by displaying the operation mode screen without actually calling the parameter screens (maximum 9 screens.)'),
(100, 55, 'The use of the front-panel keys enables the input type to be switched between the thermocouple and the platinum resistance thermometer.'),
(101, 55, 'Conforms to UL-CUL-CE (pending application)'),
(102, 55, 'Conforms to IP66 equivalence.'),
(103, 55, 'Manual Control (Balanceless & Bumpless) The manual output function can be used with a wide range of instrumentation systems.\"'),
(104, 55, 'Sampling Cycle: 250ms'),
(105, 56, 'Controllability is improved with the New PID Algorithm'),
(106, 56, 'With just one unit, it can accommodate different types of input such as thermocouples (13 types), platinum resistance temperature sensor (2 types), voltage (5 types), current (1 type).'),
(107, 56, 'A liquid crystal display has been incorporated for the display'),
(108, 56, 'Extensive output type Relay contact, SSR drive, open collector, voltage (5 types) and current.\"'),
(109, 56, 'Enhanced optional function ①CT input (max. of 2-points), ②Event input (max. of 4-points), ③Event output (max. of 7-points, however, when all 7-points are used, the control output will not be available for use)\"'),
(110, 56, 'Conforms to CE markings UL, c-UL markings have been acquired.'),
(111, 56, 'IP66 Protection structure (TTM-214 only)'),
(112, 56, 'The system can be configured so that only the specific parameters are displayed from the set of parameters.'),
(113, 56, 'Simple timer function (3-point stand-alone) A control of \"\"Control start or stop after a lapse of certain time\"\" is possible with a single unit. An independent use as a timer (event output ON/OFF)is possible.'),
(114, 56, 'Indication/Setting is possible without shifting to parameter screen by indicating the necessary parameter screen with operation mode screen.(max. 16 screens)'),
(115, 56, 'Manual control Manual output function will enable the application of various instrumentation systems.'),
(116, 56, 'Communication function (RS485: Dedicated protocol / MODBUS) A communication distance can be extended to a maximum of 500 meters, and up to 31 units can be connected simultaneously. With one host computer, a centralized monitoring such as \"\"collection of all data\"\", \"\"changes of various setting value\"\" is possible from a distant location.'),
(117, 56, 'During ON/OFF control, the minimum duration time can be set independently for ON & OFF regardless of the control. This function is useful for any equipment which is not suited for frequent ON/OFF switching, or may be used as protection for the freezing equipment.'),
(118, 56, 'Loop error This function monitors the measured value and operation volume, and detects the abnormality in the control loop.'),
(119, 57, 'A liquid crystal display program controller with maximum of 15 patterns and 99 steps.'),
(120, 57, 'The multiple inputs of Thermocouple (13 types)・RTD (2 types)・Voltage (5 types)・Current (1 type) input'),
(121, 57, 'Utilizes a liquid crystal display'),
(122, 57, 'Backup and Initialization for the Setting Value.'),
(123, 57, 'A compact sized body with depth of only 65mm. In addition, the protrusion of the front panel is only 2mm when TTM-339 is mounted.'),
(124, 57, 'Blind function:The system can be configured so that only the selected parameters are displayed from the set of parameters.'),
(125, 57, 'Communication function(RS485: TOHO exclusive protocol / MODBUS) The cable can be extended up to the length of 500m, and can connect up to 31 units simultaneously. With one host computer, a centralized control such as “The collection of all data” and “Change of respective setting value” are possible from a distance place.'),
(127, 58, 'High accuracy・High speed sampling cycle'),
(128, 58, '2 inputs can be equipped upon request and variety of input type. 1/100℃ can be indicated for 4 wire RTD and RTD.'),
(129, 58, '2 inputs control, cascade control, remote SP, positioning proportional control and so on are selectable by parameters setting.'),
(130, 58, 'SD card available The data log function for recording measurement values and various statuses is installed. The stored data is taken into personal computer and it is readable by EXCEL etc.'),
(131, 58, 'Main control outputs and event outputs can be allocated into multiple functions. (Main outputs: 2, auxiliary outputs: 4)'),
(132, 58, 'MODBUS protocol available'),
(133, 58, 'The disconnection under three-phase circuit wires can be detected by using 2ch CT input.'),
(134, 58, '8 types of control parameters can be stored which is changed by Dl and communication.'),
(135, 58, 'The optimum PID constant against control object is automatically calculated. PID constant is calculated when making alteration of setting value, or it is corrected when disturbance/hunting etc occurred.'),
(136, 58, 'At the request, desirable parameter screen is only displayed and set up.'),
(137, 58, 'ON/OFF setting control is available after some certain interval. Function of ON/OFF alarm output is independently usable.'),
(138, 58, 'Demanding parameter screens are monitored and set up under operational mode screen. (max. 36 screens)'),
(139, 58, 'Thermocouple, RTD, voltage, current (Shunt resistor 250Ω is required with input type:1-5VDC)input. Types of input can be changed by parameter setting.'),
(140, 58, 'The deviation status can be checked in front monitor.'),
(141, 58, 'It is functional to inhibit PID over-shoot'),
(142, 59, 'Equipped with ultra-fuzzy control.'),
(143, 59, 'Large white display for clear view.'),
(144, 59, 'By connecting the loader cable, parameter setting would be possible without the external power supply (Power will be supplied from the PC).Even the complicated setting can easily be done with the simple key operation of the PC. The setting procedures are greatly minimized.'),
(145, 59, 'Compact body with depth of 59mm.'),
(146, 59, 'Sampling cycle:250mS.'),
(147, 59, 'UL/CE/KC standard'),
(148, 59, 'Fuzzy control:Effectively prevents the“OverShoot” better than the normal PID Control at the initial start-up stage.'),
(149, 59, 'In the event of power failure, the data of the integral operation volume at the time of normal operation is stored in EEPROM, and by restoring this volume upon resumption of power, the time required to stabilize the control will be improved, thus, the occurrence rate of defective item is diminished. '),
(150, 60, 'New PID algorithm for better controllability ①Time needed for the control to stabilize itself from its start is reduced ②Equipped with jumpless control that controls the overshoot after the disturbance ③Two types of PID control are available'),
(151, 60, 'Input specifications of thermocouple (13 types), RTD (2 types), voltage (4 types), and current (1 type) are realized in one model. (Change the setting by the parameter)'),
(152, 60, 'Various Control Types ①2 Inputs Individual Control ②1 Input Heating and Cooling Control ③2 Input Heating and Cooling Control ④Cascade Control ⑤Remote Control ⑥Position Ratio Control ⑦Temperature and Humidity Control'),
(153, 60, 'High sampling cycle speed of 100ms'),
(154, 60, 'Conforms to External CE Marking'),
(155, 60, 'Simple Timer Function “Start or stop the control after the lapse of a specific time” can be done in just one unit. Individual use of timer (turning the event ON or OFF) is also possible.'),
(156, 60, 'Communication Function (RS485: MODBUS)'),
(157, 60, 'Abnormality of the control loop can be detected by monitoring measuring value and MV.'),
(158, 61, 'Monitor data through LAN and Cloud network'),
(159, 61, 'History data/chart display and export(PDF,CSV)'),
(160, 61, 'Each JSC supports up to 4 measurands.'),
(161, 61, 'When measured value has reached to alarm points,system will send notifications to users via LINE and Email.'),
(162, 61, 'Selectable between manual and automatic mode.'),
(166, 62, 'Sensing element: PT100'),
(167, 62, 'Temperature measurement range: -40 to +120℃'),
(168, 62, 'Connector specification: M8 a 3 poles IP67'),
(169, 62, 'Calibration: IEC60751 (class A), DIN43760 (KL.A)'),
(170, 62, 'Strong adhesive, easy to install'),
(174, 63, 'Sensing element: PT100'),
(175, 63, 'Temperature measurement range: -50 to +200°C'),
(176, 63, 'Connector specification: M8 a 3 poles IP67'),
(177, 63, 'Calibration: IEC6075 (class B)'),
(178, 63, 'With aluminum bracket and adjustable spring, the installation is firmer'),
(182, 64, 'Flow measuring with voltage, current, pulse or frequency output'),
(183, 64, 'Temperature non-sensitive measuring principle'),
(184, 64, 'Excellent media resistance (measuring element not in contact with the media)'),
(185, 64, 'Wide application temperature range'),
(186, 64, 'Marginal loss of pressure'),
(187, 64, 'Measuring element not sensitive to debris'),
(188, 64, 'Direct temperature measurement in the medium'),
(189, 64, 'Drinking water approval KTW, W270, ACS, WRAS'),
(190, 65, 'Relay output'),
(191, 65, 'Analog output or Pulse output (Select when ordering)'),
(192, 65, 'LCD display'),
(193, 65, '3-color LED'),
(198, 66, 'Flow meter for measuring the fluid flow rate and temperature'),
(199, 66, 'Alarm output and Analog output'),
(200, 66, 'LCD display'),
(201, 66, '3-color LED'),
(206, 67, 'Pulse output'),
(207, 67, 'Different output signals can be obtained.'),
(208, 67, 'Contact us for CAD data and instructions.'),
(214, 68, 'Simultaneous output of analog and alarm.'),
(215, 68, 'Measurement value LCD digital display.'),
(216, 68, 'It can display if the set value is reached or  not with an LED lamp, and can output alerts.'),
(217, 68, 'Compact collective piping \"manifold\" can be mounted.'),
(218, 68, 'Display the flow rate and temperature(option) with high accuracy.'),
(222, 69, 'Low-cost with no display'),
(223, 69, 'Which involves no moving parts'),
(224, 69, 'Highly durable and maintenance-free'),
(225, 69, 'Compatible with high-temperature water'),
(226, 69, 'Flow meter for measuring the fluid flow rate and temperature'),
(227, 69, 'Alarm output'),
(228, 69, 'LCD display'),
(230, 70, 'Measures and displays the flow rate, temperature, and integrated values.'),
(231, 70, 'Analog output'),
(232, 70, ' Alarm output'),
(233, 70, 'The digital display is turned depending on the installation status.'),
(234, 70, 'Digital display　'),
(238, 71, 'Flow rate setting and monitoring are possible with the digital display.'),
(239, 71, 'Two types are available:Integrated and Remote type.'),
(240, 71, 'Three types of output:Switch, accumulated pulse, and analog outputs.'),
(241, 71, 'Switching from real-time flow rate to accumulated flow is possible.'),
(242, 71, 'Two independent flow rate settings are possible.'),
(243, 71, 'Water resistant construction conforming to IP65'),
(246, 72, 'Easy plumbing with quick fasteners.'),
(247, 72, 'To control manage flow rate in various cooling water system.'),
(248, 72, 'Simple structure and low price.'),
(254, 73, 'Industrial enclosure with IP65 protection'),
(255, 73, 'Attached or remote sensor options'),
(256, 73, 'Two SPST relays for alarm / ventilation control'),
(257, 73, 'Two analog outputs settable to 4-20 mA or 0-10 V'),
(258, 73, 'RS485 Modbus RTU digital interface'),
(259, 73, 'Power supply 24 VDC, 24 VAC or 230 VAC'),
(260, 74, 'Install on the floor or pipe'),
(261, 74, 'Length of detection belt: 2m, 1m'),
(262, 74, 'Cable length: 2m'),
(263, 74, 'Range: <300 kohm'),
(264, 74, 'Need to connect to host VVK2'),
(268, 75, 'Self-adhesive, fixed on the floor surface'),
(269, 75, 'Range: <300 kohm'),
(270, 75, 'Cable length: 2m'),
(271, 75, 'Need to connect to host VVK2'),
(276, 76, 'Setting value (sensibility): <80 kohm (= H), <10 kohm (= L) (adjustable)'),
(277, 76, 'Measuring range: 80…300 kohm (optional)'),
(278, 76, 'Alarm:> 330 kohm'),
(279, 76, 'Power supply: 24 Vdc, 2 VA'),
(280, 76, 'Output: change-over contact 60 V, 2 A res'),
(281, 76, ' Need to match Sensor: -VVN1-Leakage detection belt (with a length of 1M, suitable for pipeline measurement) -VVN2-Leakage detection belt (with a length of 2M, suitable for pipeline measurement)   -VVA3-Leakage detection belt (self-adhesive)'),
(284, 77, 'Irradiance and temperature measurement'),
(285, 77, 'Optional M8-4 connector'),
(286, 77, 'Aluminum housing is suitable for installation in various severe weather conditions'),
(287, 77, 'Comes with a Monocrystalline silicon cell made of the same material as the solar panel'),
(288, 77, 'Anti-reflective high-performance glass + E.V.A in the battery layer'),
(289, 77, 'Calibration standards: IEC61215, IEC60904-2, IEC60904-4, IEC60904-10'),
(290, 77, 'Output signal: LM2-485PRO: RS485 (standard Modbus protocol)                            LM1-10VPRO:0-10V                            LM1-420PRO: 4-20mA'),
(292, 78, '4-20mA output'),
(293, 78, 'Aluminum housing is suitable for installation in various severe weather conditions'),
(294, 78, 'Comes with a Monocrystalline silicon cell made of the same material as the solar panel'),
(295, 78, 'Calibration standards: IEC61215, IEC60904-2, IEC60904-4, IEC60904-10'),
(296, 78, 'Calibration using Class A reference battery'),
(300, 79, 'Measuring range: 0~1000 lux, 0~10,000 lux (can be adjusted by yourself)'),
(301, 79, 'According to the brightness and temperature of the environment, the lighting/heating system can be adjusted/controlled'),
(302, 79, 'Output signal: 0 ~ 10 V, wall-mounted installation'),
(303, 79, 'Protection grade: IP54'),
(308, 80, 'Thermopile sensor (300 ÷ 2900 nm)'),
(309, 80, 'Single dome in hemispherical optical type glass with high transparency'),
(310, 80, 'Anodized aluminum body ideal for outdoor use'),
(311, 80, 'Current loop output 4÷20 mA with 4 mA (± 0.01mA) @ 0W/m2 and 20mA (± 0.03mA)'),
(312, 80, '50m current loop cable'),
(313, 80, 'High weather resistance'),
(314, 80, 'ISO 9060 compliant'),
(316, 81, 'Suitable for hazardous areas, Zone 0, 1 and 2(gas), and Zone 20, 21 and 22 (dust), with a suitable Intrinsically Safe isolator'),
(317, 81, 'Temperature range: -20°C to 1000°C'),
(318, 81, 'Two wire, 4-20 mA output'),
(319, 81, 'Rescalable output and adjustable emissivity setting via optional USB and RS 485 adapters'),
(320, 81, 'Fast response time and high stability'),
(321, 81, 'Stainless steel 316 housing - ideal for offshore applications'),
(322, 81, 'IP65 sealed'),
(323, 81, 'Supplied with up to 25 m cable'),
(324, 82, 'Temperature ranges from 250°C to 2000°C'),
(325, 82, 'Miniature sensing head withstands 200°C ambient temperature'),
(326, 82, 'Short measurement wavelength for improved accuracy on metals'),
(327, 82, 'No electronics in the sensing head - ideal for use near induction heaters and strong electromagnetic fields'),
(328, 82, 'Touch screen display with configuration and data logging'),
(329, 82, 'Choice of analogue or digital output'),
(330, 82, 'Alarm relays on all models'),
(331, 82, 'Advanced signal processing functions'),
(332, 82, 'Built-in laser sighting, simultaneous with measurement'),
(333, 83, 'Configure, display and log data and alarm events'),
(334, 83, 'Connect up to 6 sensors per terminal unit'),
(335, 83, 'Operates as Modbus Master and Slave'),
(336, 83, 'High capacity data logging to MicroSD Card'),
(337, 83, 'Bright touch screen display with backlight'),
(338, 83, 'Analogue and relay outputs via optional ICPDAS modules M-7061 and M-7024'),
(339, 83, '2-channel scrolling temperature chart'),
(340, 83, 'Selectable language: English, Chinese,Japanese'),
(341, 84, 'Temperature range: -20°C to 1000°C'),
(342, 84, 'Raw CAN communications'),
(343, 84, 'Adjustable emissivity setting for measuring a variety of materials'),
(344, 84, 'Fast 200 ms response with high stability'),
(345, 84, 'Stainless steel housing, sealed to IP65'),
(346, 84, 'Ideal for vehicle-based applications in automotive testing, motorsport testing, industry, construction and agriculture, among many others.'),
(347, 84, 'Conforms to industrial EMC standards'),
(349, 85, 'Temperature ranges from -20°C to 500°C'),
(350, 85, 'Two-wire 4-20 mA output or four-wire voltage/thermocouple output'),
(351, 85, 'Choice of precision optics for large or small targets'),
(352, 85, 'Fast response with high stability'),
(353, 85, 'Stainless steel housing, sealed to IP65'),
(354, 85, 'Quick and easy installation'),
(355, 85, ' Wide range of accessories'),
(356, 85, 'Fixed emissivity 0.95 for measuring non reflective non-metals, and painted surfaces (including painted or coated metals)'),
(357, 85, 'Conforms to industrial EMC standards'),
(358, 86, 'High performance infrared temperature sensors'),
(359, 86, 'Choice of specialised models for demanding applications'),
(360, 86, 'Continuous LED sighting on all models shows position and size of measured spot while readings are being taken'),
(361, 86, 'Current, voltage and alarm outputs'),
(362, 86, 'Digital communications'),
(363, 86, 'Optional touch-screen display with configuration and data logging'),
(366, 87, 'Temperature ranges from -20°C to 500°C'),
(367, 87, 'Two-wire 4-20 mA output'),
(368, 87, 'Adjustable emissivity via continuously variable 4-20mA input - measure a wide range of target materials'),
(369, 87, 'Choice of precision optics for large or small targets'),
(370, 87, 'Fast response with high stability'),
(371, 87, 'Stainless steel housing, sealed to IP65'),
(372, 87, 'Quick and easy installation'),
(373, 87, 'Wide range of accessories'),
(374, 87, 'Conforms to industrial EMC standards'),
(375, 88, 'Two-part sensor with miniature sensing head and configurable electronics module'),
(376, 88, 'Touch screen (optional) for temperature indication and configuration'),
(377, 88, 'Screen turns bright red in alarm condition for maximum visibility'),
(378, 88, 'Adjustable emissivity setting on all models'),
(379, 88, 'Data logging to MicroSD Card (optional) on touch screen models'),
(380, 88, '4 to 20 mA or RS485 Modbus outputs'),
(381, 88, 'Alarm relay outputs rated 24 V DC (optional) - no need for separate trip amplifier'),
(382, 88, 'Maximum, minimum, average and instantaneous readings, peak or valley hold, reflected energy compensation'),
(383, 89, 'Two-part sensor with miniature sensing head and configurable electronics module'),
(384, 89, 'Touch screen (optional) for temperature indication and configuration'),
(385, 89, 'Screen turns bright red in alarm condition for maximum visibility'),
(386, 89, 'Adjustable emissivity setting on all models'),
(387, 89, 'Data logging to MicroSD Card (optional) on touch screen models'),
(388, 89, '4 to 20 mA or RS485 Modbus outputs'),
(389, 89, 'Alarm relay outputs rated 24 V DC (optional) no need for separate trip amplifier'),
(390, 89, 'Maximum, minimum, average and instantaneous readings, peak or valley hold, reflected energy compensation'),
(391, 90, 'Miniature non-contact temperature sensors'),
(392, 90, 'RS485 Modbus communications - sensors can be connected directly to third-party Modbus hardware'),
(393, 90, 'Optional Calex touch screen terminal for configuration, display, alarms and data logging'),
(394, 90, 'Low-cost standalone 6-channel system'),
(395, 90, 'Connect to larger systems using the PM180’s separate Modbus Master and Slave interfaces'),
(396, 90, 'Analogue and alarm relay outputs via optional modules'),
(397, 90, 'Conforms to industrial EMC standards'),
(398, 90, 'Ideal for continuous temperature monitoring at multiple locations e.g. busbar surface temperature in switchgear cabinets'),
(399, 91, 'Non-contact industrial temperature sensor'),
(400, 91, 'Fully configurable via iOS / Android app'),
(401, 91, 'Choice of voltage or thermocouple outputs'),
(402, 91, 'Simultaneous open collector alarm output'),
(403, 91, 'Measures from 0°C to 1000°C, accurately and consistently'),
(404, 91, 'Extremely small, with side-entry cable: ideal for mounting in tight spaces'),
(405, 91, 'Fast response time: 125 ms'),
(406, 91, 'Low cost, high performance'),
(407, 91, 'Operates in ambient temperatures up to 80°C without cooling'),
(408, 91, 'Form factor optimised or brake testing applications, plus many others'),
(409, 92, 'Small, low-cost industrial infrared temperature sensor'),
(410, 92, 'Side-entry cable: ideal for mounting in tight spaces'),
(411, 92, 'Voltage output, selectable 0-10 / 0-5 / 1-5 V DC'),
(412, 92, 'Measures temperatures from 0°C to 1000°C'),
(413, 92, 'Fully configurable for averaging, hold processing, emissivity, output scale etc.'),
(414, 92, 'Alarm output'),
(415, 92, 'Low-profile housing for applications with limited headroom e.g. IR curing, dryers, laminating machines, switchgear cabinets etc'),
(416, 92, 'Not designed or approved for fever detection'),
(417, 93, 'Temperature ranges from -40°C to 2000°C'),
(418, 93, '2-wire 4-20 mA output'),
(419, 93, 'Fully configurable via USB using Modbus protocol'),
(420, 93, 'Cable and software included'),
(421, 93, 'Specialised models for measuring metals,high- temperature objects or glass surfaces'),
(422, 93, 'General-purpose models for most other applications'),
(423, 93, 'Peak and valley hold mode allows easy measurement of objects on conveyors'),
(424, 93, 'Stainless steel housing, sealed to IP65'),
(425, 93, 'Quick and easy installation'),
(426, 94, 'Miniature non-contact temperature sensor with USB communications'),
(427, 94, 'Measures surface temperatures from-20°C to 1000°C without contact'),
(428, 94, 'Free PC software available for data logging and configuration'),
(429, 94, 'Open Modbus protocol - use your own software to communicate with the sensor'),
(434, 95, 'Easy to install'),
(435, 95, 'Combi-bracket for vertical or horizontal installation'),
(436, 95, 'User friendly snap cover'),
(437, 95, 'Case geometry allows easy cable lead-in'),
(438, 95, 'Cable strain relief integrated in PG11'),
(439, 95, 'High adjustment accuracy through individual laser etched scale'),
(440, 95, 'Long-term stability of switching points through trapezoidal bead diaphragm'),
(441, 95, 'Multi-layer gold plated contact'),
(442, 96, 'High accuracy (especially the upper pressure ranges with 17 ideally designed pressure range incrementations)'),
(443, 96, 'Ease of accurate adjustment by customer'),
(444, 96, 'Reproducibility of switching points up to < μ0.1 mbar'),
(445, 96, 'Rugged mechanics with high operating reliability and switching capacities up to 10 A'),
(450, 97, 'Range: 20~300, 30~400, 50~500, 200~1000, 500~2500, 1000~5000 Pa'),
(451, 97, 'Measuring medium: air/non-flammable/non-corrosive gas'),
(452, 97, 'Visual scale dial, easy to adjust the working range'),
(453, 97, 'Adjustable switching point, sensitive response, multiple range switches'),
(454, 97, 'It is suitable for monitoring the air-conditioning system flow such as fans, cross-lunet block alarm devices, ventilation pipes, combustion furnaces, etc.'),
(458, 98, 'High overpressure safety margin 10/20 bar on P1'),
(459, 98, '3 standardised output signals for direct Processing in control / monitoring systems'),
(460, 98, 'Functionally simple, rugged mechanics with high operating reliability'),
(461, 98, 'Attractive price / performance ratio'),
(462, 98, 'Also for slightly aggressive liquids and gases'),
(466, 99, 'Very low temperature sensitivity'),
(467, 99, 'High resistance to extreme temperatures'),
(468, 99, 'No mechanical creepage'),
(469, 99, 'Modular system and choice of materials to suit individual applications'),
(474, 100, 'Compact construction'),
(475, 100, 'Fast, easy mounting. Housing incorporates integral bracket for wall or ceiling mounting. Snap-on cover with a single screw'),
(476, 100, 'Available with or without LCD display'),
(477, 100, 'Available with or without square root extraction'),
(478, 100, 'Available zero point and full scale adjustable'),
(479, 100, 'Attractive price / performance ratio'),
(482, 101, 'Fast, easy mounting. Housing incorporates integral bracket for wall or ceiling mounting'),
(483, 101, 'Available with or without LCD display'),
(484, 101, 'Adjustable measurement range'),
(485, 101, 'Switchable output signals'),
(486, 101, 'Switchable response curve(linear or root-extracted)'),
(487, 101, 'Resettable Zero Point (Reset button)'),
(488, 101, 'Full scale adjustable'),
(489, 101, 'Attractive price / performance ratio'),
(490, 101, 'Application at over and low pressure range possible'),
(491, 102, 'Pressure range: 0~100 / 0~200 / 0~500 / 0~1000 Pa,'),
(492, 102, '-50~50 / -100~100 / -250~250 / -500~500 Pa (all inclusive)'),
(493, 102, 'PEL differential pressure transmitter, can measure positive pressure/connected pressure, can adjust the range by yourself'),
(494, 102, 'LCD display (optional), the panel can be replaced by yourself'),
(495, 102, 'Protection level: IP54'),
(496, 102, 'Can be used in negative pressure isolation wards, HVAC systems, mechanical and system engineering, environmental engineering, heat exchangers'),
(499, 103, 'Measuring range: 0~1000 to 0~8000 (Pa)'),
(500, 103, 'Can be used with ML-SER to adjust the range from 0~100 to 0~8000 Pa (amplitude is in 100 Pa units)'),
(501, 103, 'PEL-8K gas differential pressure transmitter can choose the measuring range and output signal by itself'),
(502, 103, 'With dynamic zero drift correction and temperature compensation function, IP54 protection level'),
(503, 103, 'LCD display and backlight function (optional), the panel can be replaced by yourself'),
(504, 103, 'With Modbus RTU (RS-485) communication (optional)'),
(505, 103, 'Applied in HVAC system (HVAC), mechanical and system engineering, environmental engineering'),
(507, 104, 'Pressure range: 0~500 / 0~1000 Pa (all inclusive)'),
(508, 104, 'P54 protection grade, the panel can be replaced by yourself'),
(509, 104, 'With RS485 communication interface (optional)'),
(510, 104, 'Can be applied to HVAC, mechanical and system engineering, environmental engineering'),
(511, 104, 'Pitot tube (average wind speed tube) can be used to measure wind speed, models PP-PK, PP-SK'),
(515, 105, 'Pressure range: ± 100 / 0...1000 / 0...100 / 0...1500/0...200 / 0...2000 / 0...500 / 0...2500(Pa)'),
(516, 105, 'PEL-2500 differential pressure transmitter can be applied to a large range of differential pressure'),
(517, 105, 'Adjustable measuring range, with automatic zero drift correction function'),
(518, 105, 'IP54 protection level'),
(519, 105, 'Can be applied to HVAC, mechanical and system engineering, environmental engineering'),
(523, 106, 'Suitable for monitoring the flow rate/flow rate of airtight ducts, process pipelines, VOC emissions, flue emissions, etc.'),
(524, 106, 'Measure the Pv value through the differential pressure transmitter to calculate the wind speed (V) and air volume (Q)'),
(525, 106, 'Operating temperature: 5~95 °C'),
(526, 106, 'Accurate value: ±2% (air speed> 1 m/s)'),
(527, 106, 'Connection: Ø 6/4 mm hose'),
(528, 106, 'Application: monitoring of flow rate and flow rate in pollution prevention, air conditioning, petrochemical, electronic industries, etc.'),
(529, 106, 'Can be matched with differential pressure transmitter PEL, PEL-1000, PEL-2500, PEL-25K'),
(531, 107, 'Pressure range: 0~1 / 0~2.5 / 0~4 / 0~6 bar (all inclusive)'),
(532, 107, 'Wetted part material: zinc, shell material: heat-resistant plastic'),
(533, 107, 'Suitable for measuring the differential pressure of heating/cooling system and flow'),
(534, 107, 'Suitable for non-corrosive liquids such as water/air/glycol/water solution'),
(535, 107, 'Special specifications (customized according to specifications), LED display (optional), IP54 protection level can be specified'),
(536, 107, 'Applied in HVAC system (HVAC), mechanical and system engineering, environmental engineering'),
(539, 108, 'Pressure range: 0~2.5 / 0~6 / 0~10 / 0~16 bar (all inclusive)'),
(540, 108, 'It can measure water vapor, has noise resistance function, and can adjust the range by itself'),
(541, 108, 'Wetted part: stainless steel material, shell: heat-resistant plastic material'),
(542, 108, 'Output signal: 0~10V / 4~20mA'),
(543, 108, 'LED display (optional), IP54 protection level'),
(544, 108, 'Applied in HVAC system (HVAC), mechanical and system engineering, environmental engineering'),
(547, 109, 'Pressure range: 0~16 / 0~25 / 0~40 / 0~60 bar (all inclusive)'),
(548, 109, 'It can measure water vapor, has noise resistance function, and can adjust the range by itself'),
(549, 109, 'Wetted part: stainless steel material, shell: heat-resistant plastic material'),
(550, 109, 'Output signal: 0~10V / 4~20mA'),
(551, 109, 'LED display (optional), IP54 protection level'),
(552, 109, 'Applied in HVAC system (HVAC), mechanical and system engineering, environmental engineering'),
(555, 110, 'Compact construction'),
(556, 110, 'Automated manufacture in large quantities for ideal price / performance ratio'),
(557, 110, 'Robust ceramic sensor technology'),
(558, 110, 'High resistance to extreme temperatures'),
(559, 110, 'No mechanical creepage'),
(563, 111, 'Compact, rugged construction for highest operational reliability'),
(564, 111, 'No media egress when exceeding rupture pressure (patented)'),
(565, 111, 'Negligible temperature influence on accuracy'),
(566, 111, 'Excellent EMC capacity'),
(567, 111, 'Saving time by quick cable mounting by the customer with swift connector'),
(571, 112, 'Optional Voltage or current analogue outputs'),
(572, 112, 'Modbus RTU interface (option)'),
(573, 112, 'High accuracy and long term stability'),
(574, 112, 'Temperature compensatio'),
(575, 112, 'Quality Certifications : CE certification'),
(576, 112, 'Optional monitor software'),
(577, 112, 'Most popular applications for Heating, Ventilation,'),
(578, 112, 'Air Conditioning and Storage rooms'),
(579, 113, 'Large easy-to-read LCD display'),
(580, 113, 'Modbus RTU interface (option)'),
(581, 113, 'Fold-out stand and Gourd hole for wall fastening'),
(582, 113, 'High accuracy and long term stability'),
(587, 114, 'Clear and intuitive digital display of temperature,hygrometer and battery indicator'),
(588, 114, 'Most popular applications for incubators, building, office,storage any other place that requires monitoring of temperature and humidity levels'),
(589, 114, 'Quality Certifications : CE certification'),
(590, 114, 'With LED, buzzer alarm and Max-Min temperature and humidity memory function'),
(591, 114, 'Time, Offset adjustable (±3℃ and ±5%RH)'),
(592, 114, 'Fold-out stand and Gourd hole for wall fastening'),
(593, 114, 'Selectable temperature units ℃ / ℉'),
(595, 115, 'Light Weight, Durable, and Easy–to–Transport Design'),
(596, 115, 'Large Internal Memory, 86,000 log readings'),
(597, 115, 'Selectable data sampling rate: 1 second to 24 hours'),
(598, 115, 'Easy to Use Menu System'),
(599, 115, 'Reserved data will not disappear even the battery is running down'),
(600, 115, 'Powered from 2×1.5V AAA batteries or external power (DC 5V)'),
(601, 115, 'Built-in display shows current, min/max readings, alarm states....'),
(602, 115, 'Free configuration, review, logs data, and Excel-export software'),
(603, 116, 'Measuring range: 0~2m/s, 0~10m/s, 0~20m/s / 0~50℃'),
(604, 116, 'Can measure wind speed/temperature value, display function (optional)'),
(605, 116, 'Can be used with VK10 switch or RY1-U relay'),
(606, 116, 'The wind speed and flow rate are lower than the set value, which can be controlled externally according to the Relay contact'),
(607, 116, 'Output signal: 0~10V/4~20mA'),
(608, 116, 'Measuring rod length up to 400mm'),
(611, 117, 'Working range: 0 ... 2 m / s'),
(612, 117, 'Operating temperature 0 ... 50°C'),
(613, 117, 'Measuring range: <0.1 m/s±7% of reading (at 25°C)'),
(614, 117, 'Output signal: 0...10V, <2mA, 4...20mA<600Ω'),
(615, 117, 'Probe cable 2 meters'),
(616, 117, 'Material PBT, PC, PA and stainless steel'),
(619, 118, 'Aluminum housing is suitable for installation in various severe weather conditions'),
(620, 118, 'M8-4 quick connector'),
(621, 118, 'Antifreeze accessories to improve the dilemma of low-temperature wind measurement'),
(622, 118, 'Wind speed and temperature measurement'),
(623, 118, 'Output signal: RS-485 (standard Modbus protocol)'),
(624, 118, 'Calibration standard: IEC61400-12-1 and MEASNE'),
(625, 118, 'Application: Suitable for highways, airports, ridge passages, wind power plants and ski lifts... etc.'),
(627, 119, 'Measuring range: 0~20m/s / -50~50℃'),
(628, 119, 'Measurable wind speed / temperature value'),
(629, 119, 'Wall-mounted installation, outdoor type, can be measured when installed under the eaves'),
(630, 119, 'Output signal: 0~10V/4~20mA');

-- --------------------------------------------------------

--
-- 資料表結構 `product_status`
--

CREATE TABLE `product_status` (
  `productstatus` int(4) NOT NULL,
  `content` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `product_status`
--

INSERT INTO `product_status` (`productstatus`, `content`) VALUES
(1, '正常'),
(2, '下架'),
(3, '無庫存');

-- --------------------------------------------------------

--
-- 資料表結構 `product_type`
--

CREATE TABLE `product_type` (
  `type` int(11) NOT NULL,
  `love1` varchar(40) COLLATE utf8_bin NOT NULL,
  `love2` varchar(40) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `product_type`
--

INSERT INTO `product_type` (`type`, `love1`, `love2`) VALUES
(35, 'Instrumentation', '1記錄器'),
(36, 'Instrumentation', '2控制器'),
(37, 'NetcomDevice', '1Join-System'),
(38, 'Sensor', 'Contact Temperature Sensor'),
(40, 'Sensor', 'Flow Meter'),
(47, 'Sensor', 'Gas Detector'),
(48, 'Sensor', 'Leak Detector'),
(49, 'Sensor', 'Light Sensor'),
(50, 'Sensor', 'Non-contact Temperature Sensor'),
(51, 'Sensor', 'PressureTransmitter'),
(52, 'Sensor', 'Temperature&HumiditySensor'),
(53, 'Sensor', 'WindSpeed、WindDirectionSensor');

-- --------------------------------------------------------

--
-- 資料表結構 `salesman`
--

CREATE TABLE `salesman` (
  `id` int(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `phome` varchar(20) COLLATE utf8_bin NOT NULL,
  `email` varchar(20) COLLATE utf8_bin NOT NULL,
  `address` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL,
  `state` varchar(10) COLLATE utf8_bin NOT NULL,
  `position` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `firstname` varchar(50) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(50) COLLATE utf8_bin NOT NULL,
  `phone` varchar(11) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `fax` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `company` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `state` varchar(5) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`userid`, `firstname`, `lastname`, `phone`, `email`, `fax`, `company`, `password`, `state`) VALUES
(4, '灰灰', 'aaa', '0926123456', 'AAA@AAA.com', '', '', '$2a$10$h8SuiQnf5UE/GUrmighW1enPC.FXHZmvNwMyzCU0tT8H.XMoBzB1m', '0'),
(7, 'yen lin', 'chen', '023729418', 'BBB@AAA.com', NULL, '久德電子', '$2a$10$S8x35NwnYmGS0vXjuKlnDeIAGIRoxxg25fi7APKDW5yvs1NN/UaW.', '1'),
(8, '灰灰', 'AAA', '0926123456', 'wiz71029@gmail.com', NULL, '久德電子', '$2a$10$jdtZktPh8WKeAy2LGp7naemV2yFoL7XjJr6kAN/IM5yTyT18GIQjW', '0'),
(9, 'yen lin', 'chen', '023729418', 'CCC@CCC.com', NULL, '久德電子', '$2a$10$u64TV7M2uzHnLwP0jApKv.7MVaetQUEcHUQmRVqk7YvBVoiOEuCeu', '0');

-- --------------------------------------------------------

--
-- 資料表結構 `vendor`
--

CREATE TABLE `vendor` (
  `vendorid` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `fax` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `person` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `addproduct`
--
ALTER TABLE `addproduct`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `message_buy`
--
ALTER TABLE `message_buy`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- 資料表索引 `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK715ucxrvknue1cfnb458qh5n5` (`orderid`);

--
-- 資料表索引 `order_option`
--
ALTER TABLE `order_option`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`orderstatus`);

--
-- 資料表索引 `pdf_url`
--
ALTER TABLE `pdf_url`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model` (`model`);

--
-- 資料表索引 `product_option`
--
ALTER TABLE `product_option`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product_picture`
--
ALTER TABLE `product_picture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKn14law9tomruxfmpttjt7kmvc` (`productid`);

--
-- 資料表索引 `product_specification`
--
ALTER TABLE `product_specification`
  ADD PRIMARY KEY (`specification`);

--
-- 資料表索引 `product_status`
--
ALTER TABLE `product_status`
  ADD PRIMARY KEY (`productstatus`);

--
-- 資料表索引 `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`type`);

--
-- 資料表索引 `salesman`
--
ALTER TABLE `salesman`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- 資料表索引 `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendorid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `addproduct`
--
ALTER TABLE `addproduct`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `message`
--
ALTER TABLE `message`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `message_buy`
--
ALTER TABLE `message_buy`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_option`
--
ALTER TABLE `order_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_status`
--
ALTER TABLE `order_status`
  MODIFY `orderstatus` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pdf_url`
--
ALTER TABLE `pdf_url`
  MODIFY `id` int(31) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_option`
--
ALTER TABLE `product_option`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_picture`
--
ALTER TABLE `product_picture`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_specification`
--
ALTER TABLE `product_specification`
  MODIFY `specification` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=635;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_status`
--
ALTER TABLE `product_status`
  MODIFY `productstatus` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_type`
--
ALTER TABLE `product_type`
  MODIFY `type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `salesman`
--
ALTER TABLE `salesman`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendorid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `FK715ucxrvknue1cfnb458qh5n5` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
