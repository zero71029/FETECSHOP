-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2021-09-09 15:17:42
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
(15, 1, 'dddd@ddddddd.com', 'yen lin', 'chen', '久德電子', '023729418', '福人街11號', '台灣', '404', '', '1', '2021-09-09 01:36:52', 'yen lin chen', '福人街11號', '404', 'dddd@ddddddd.com', '023729418');

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
(96, 15, 34, 2320, 1, '1', NULL);

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
(2, 48, 'TRM-00J.pdf'),
(3, 51, 'TRM10C.pdf'),
(4, 52, 'TRM20.pdf'),
(6, 53, 'TTM-000W.pdf'),
(7, 55, 'TTM-04SP.pdf'),
(9, 56, 'TTM-210_E_data.pdf'),
(10, 56, 'TTM-210_E_communication.pdf');

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `producttext` varchar(1000) COLLATE utf8_bin NOT NULL,
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
(48, 'TRM-00J', 'Paperless Recorder', 'This is a 6-Channel Paperless Recorder that displays measured data on a liquid crystal display and can easily be operated using a touch panel.\r\nData can be saved to USB memory or SD card, and the saved data can be played back.\r\nThe input type is Universal Input such as \"\"thermocouple\"\", \"\"RTD\"\", \"\"DC voltage\"\", \"\"DC current (shunt resistance required)\"\".\r\nThe communication function \"\"RS-485 (Modbus) / USB 2.0 (Modbus)\"\" is equipped as standard.\r\n', NULL, 134, 698, 1, 1, '1', 1111, '2021-09-08 01:40:46', 'TRM-00J.png', 206, 35),
(51, 'TRM10C', 'Hybrid Recorder ', 'A Hybrid recorder with a chart width of 100mm which adopted a large digital display in a complete pursuit of cost performance with the motto of \"Smaller and Easier\" for excellent reliability. The front door is IP65 compliant for excellent dustproof and waterproof. 6-Point, 1 pen and 2 pen types are available as number of measurement channels.\r\n', NULL, 1360, 672, 1, 1, '1', 1111, '2021-09-08 02:59:22', 'TRM10C.png', 338, 35),
(52, 'TRM20', 'Paperless Recorder', 'This paperless recorder displays the measured data on a liquid crystal display and can easily be operated using a touch panel. Data can be saved in a SD memory card, and the saved data can be played back. It can also be played back on a personal computer using the attached viewer software. Input type is universal input such as \"\"thermocouple\"\", \"\"RTD\"\", \"\"DC voltage (current)\"\".\r\n6, 9 and 12 channels are available as number of measurement channels.\r\n', NULL, 2000, 980, 1, 1, '1', 1111, '2021-09-08 03:30:35', 'TRM20.png', 1073, 35),
(53, 'TTM-000W', 'Digital Controller', 'Visibility had been improved by adopting white LED for PV color. A versatile Digital Temperature Controller which features a variety of functions and is easy to operate. It is compact in size, with a depth of only 77mm. (A depth of TTM-002W is 97mm.) Size ranges from 24x48 to 96x96. If the communication option is selected, up to 31 controller units can be connected with a single computer at the same time, allowing centralized supervision within a max. distance of 500m.\r\n', NULL, 120, 60, 1, 1, '1', 1111, '2021-09-08 06:03:54', 'TTM-000W.png', 8, 36),
(55, 'TTM-04SP', 'Plug-in Digital Temperature Controller', 'Improved controllability is provided employing a new PID algorithm and an accelerated sampling cycle. Due to a multi-input function, a single unit handles all input specifications. It is more compact in size with the depth of 69mm (front panel is 48mm x 48mm). The loader communication function is included, alleviating additional work that might be needed to set various parameters (Dedicated cable is sold separately).\r\n', NULL, 140, 68, 1, 1, '1', 1111, '2021-09-08 06:28:08', 'TTM-04SP.png', 5, 36),
(56, 'TTM-210 Series', 'Digital Controller ', 'With the adoption of the new PID algorithm, the controllability has been improved.\r\nAdopted white LCD (with LED backlight) for PV (measured value) display for improved visibility.\r\nWith universal input function, a single unit can handle all input specifications.\r\nCompact in size with the depth of 59.7 mm (TTM-214) and 65 mm (TTM-215/217/219).\r\nThe optional functions have been enhanced to support various applications.\r\nLoader communication function that can reduce complicated parameter setting work is equipped as standard. (Exclusive cable is available with a charge).\r\nExternal standards “UL”, “CUL” and “CE” approved (TTM-215/217/219 Pending application). Compliant with \"\"IP66\"\" or equivalent. Also, six substances regulated by the RoHS Directive are not used.\r\n', NULL, 240, 119, 1, 1, '1', 1111, '2021-09-08 06:34:37', 'TTM-210 Series.png', 15, 36),
(57, 'TTM-339', 'LCD Program Controller', 'TTM 339 is LCD Program Controller with maximum of 15 patterns & 99 steps. The Full Multi-Function Input support various types of input requirements within a single unit. The device is compact, with a depth of only 65mm. A loader communication function is provided as its standard feature to ease complicated work with setting parameters that is common for program controllers, (the cable is sold separately). The necessary software can be downloaded from our webpage.\r\n', NULL, 700, 350, 1, 1, '1', 1111, '2021-09-09 03:35:46', 'TTM-339.png', 6, 36),
(58, 'TTM-509', 'Dual Channel Controller', 'Capable of controlling 2 inputs maximum per unit. This device offers versatile features, high accuracy ±0.1% and a high speed sampling cycle 50msec, enabling support for a wide range of applications.\r\n', NULL, 870, 434, 1, 1, '1', 1111, '2021-09-09 06:31:35', 'TTM-509.png', 0, 36),
(59, 'TTM-i4N', 'Digital Controller', '\"This versatile series of digital controllers supports wide range of applications.\r\nEasy operation at reasonable price.\r\nUL, CE and KC approved, and compliant with the RoHS directive.\r\n\"\r\n', NULL, 46, 23, 1, 1, '1', 1111, '2021-09-09 06:43:14', 'TTM-i4N.png', 2, 36),
(60, 'TTX-800', 'Dual Channel Controller', 'A white LED is used for better visibility. It is a DIN rail mounting type 2ch controller with display and key switch mounted on the main unit, various settings are possible with the main unit alone.\r\nBy connecting the main unit with a connector, the power supply and RS-485 communication can be connected without the need for crossover wiring of the terminal block. (Up to 10 units can be connected)\r\n* If the analog is selected for input / output, it can be used as a signal converter. \"\"CE\"\" mark as an external standard has been acquired.\r\n', NULL, 400, 196, 1, 1, '1', 1111, '2021-09-09 06:56:24', 'TTX-800.png', 1, 36),
(61, 'JoinSystem', 'Local area network & Cloud system', '“Join System”is a service that are able to monitor,control and record data through LAN and wireless network.This enable users to integrate and enhance efficiency of their equipments.\r\n“Join System”also provides flexable and visualize interface for users to monitor and control the measurands.Through Cloud and LAN networks,users are able to obtain real-time information without the limitation of time and location,JETEC is here to support users with our professional knowledge of integrating software and hardware system.We also supply multiple transmitters that fit user’s demands and cover most applications of industries.Our aim is to reach comprehensive integration,then further remove problems and increase value during the whole process.\r\n', NULL, 2000, 1000, 1, 1, '1', 1111, '2021-09-09 07:01:24', 'JoinSystem.png', 0, 37),
(62, 'Temmeter', 'Temperature probe for photovoltaics', 'Temmeter is a high resistance temperature probe for photovoltaic modules (solar panels), based on a PT100 temperature sensor. It has strong adhesive fixing for quick and easy installation. Adhesive fixing makes it cheaper than Temmeter PRO, without sacrificing efficiency. Temmeter is an easy to install PT100 thermal sensor that does not require a mounting system, as it has a powerful adhesive surface. The non-hygroscopic white plastic casing is resistant up to 130°C; shows a neutral behavior in temperature measurement even in the presence of direct radiation on the sensor.\r\n', NULL, 150, 74, 1, 1, '1', 1111, '2021-09-09 07:05:37', 'Temmeter.png', 0, 38);

-- --------------------------------------------------------

--
-- 資料表結構 `product_option`
--

CREATE TABLE `product_option` (
  `id` int(50) NOT NULL,
  `productid` int(11) DEFAULT NULL,
  `product_group` varchar(20) COLLATE utf8_bin NOT NULL,
  `product_option` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `product_group2` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '群組2',
  `product_option2` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '子項2',
  `product_group3` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '群組3',
  `product_option3` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '子項3',
  `product_status` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '狀態',
  `purchase_price` int(20) DEFAULT NULL COMMENT '進價',
  `product_price` int(20) DEFAULT NULL COMMENT '售價',
  `product_quantity` int(20) DEFAULT NULL COMMENT '庫存'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `product_option`
--

INSERT INTO `product_option` (`id`, `productid`, `product_group`, `product_option`, `product_group2`, `product_option2`, `product_group3`, `product_option3`, `product_status`, `purchase_price`, `product_price`, `product_quantity`) VALUES
(34, 51, 'Input', '1-pen', '', '', '', '', NULL, 1160, 2320, 1110),
(35, 51, 'Input', '2-pen', '', '', '', '', NULL, 1596, 3200, 10),
(36, 51, 'Input', '6-point', '', '', '', '', NULL, 672, 1360, 6),
(37, 52, 'Input', '6-point', '', '', '', '', NULL, 980, 2000, 1111),
(38, 52, 'Input', '9-point', '', '', '', '', NULL, 1148, 2296, 22),
(39, 52, 'Input', '12-point', '', '', '', '', NULL, 1596, 3200, 22),
(40, 53, 'Model', '24*48mm', '', '', '', '', NULL, 60, 120, 1111),
(41, 53, 'Model', '48*48mm', '', '', '', '', NULL, 52, 120, 11),
(42, 53, 'Model', '96*48mm', '', '', '', '', NULL, 69, 140, 11),
(43, 53, 'Model', '48*96mm', '', '', '', '', NULL, 70, 140, 11),
(44, 53, 'Model', '72*72mm', '', '', '', '', NULL, 64, 128, 11),
(45, 53, 'Model', '96*96mm', '', '', '', '', NULL, 73, 146, 33),
(46, 55, '1', NULL, NULL, NULL, NULL, NULL, NULL, 68, 140, 1110),
(47, 56, 'Model', '48*48', '', '', '', '', NULL, 119, 240, 1110),
(48, 56, 'Model', '96*48', '', '', '', '', NULL, 147, 300, 10),
(49, 56, 'Model', '72*72', '', '', '', '', NULL, 161, 330, 11),
(50, 56, 'Model', '96*96', '', '', '', '', NULL, 175, 350, 11),
(51, 57, '1', NULL, NULL, NULL, NULL, NULL, NULL, 350, 700, 1111),
(52, 48, '1', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL),
(53, 58, '1', NULL, NULL, NULL, NULL, NULL, NULL, 434, 870, 1111),
(54, 59, 'Output', 'Relay contac', '', '', '', '', NULL, 23, 46, 1111),
(55, 59, 'Output', 'SSR drive voltage output', '', '', '', '', NULL, 23, 46, 44),
(56, 60, '1', NULL, NULL, NULL, NULL, NULL, NULL, 196, 400, 1111),
(57, 61, '資料傳輸方式', '網際網路', '', '', '', '', NULL, 1000, 2000, 1111),
(58, 61, '資料傳輸方式', '區域網路', '', '', '', '', NULL, 1000, 2000, 11),
(59, 62, '1', NULL, NULL, NULL, NULL, NULL, NULL, 74, 150, 1111);

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
(170, 62, 'Strong adhesive, easy to install');

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
  `love1` varchar(20) COLLATE utf8_bin NOT NULL,
  `love2` varchar(20) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `product_type`
--

INSERT INTO `product_type` (`type`, `love1`, `love2`) VALUES
(35, 'Instrumentation', '1記錄器'),
(36, 'Instrumentation', '2控制器'),
(37, 'NetcomDevice', '1Join-System'),
(38, 'Sensor', '日照'),
(39, 'Sensor', '非接觸式測溫'),
(40, 'Sensor', '流量'),
(41, 'Sensor', '風速、風向'),
(42, 'Sensor', '氣體偵測'),
(43, 'Sensor', '接觸式測溫'),
(44, 'Sensor', '溫濕度偵測'),
(45, 'Sensor', '漏液檢知器'),
(46, 'Sensor', '壓力');

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
  MODIFY `orderid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

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
  MODIFY `id` int(31) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_option`
--
ALTER TABLE `product_option`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_picture`
--
ALTER TABLE `product_picture`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_specification`
--
ALTER TABLE `product_specification`
  MODIFY `specification` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_status`
--
ALTER TABLE `product_status`
  MODIFY `productstatus` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_type`
--
ALTER TABLE `product_type`
  MODIFY `type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

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

--
-- 資料表的限制式 `product_picture`
--
ALTER TABLE `product_picture`
  ADD CONSTRAINT `FKn14law9tomruxfmpttjt7kmvc` FOREIGN KEY (`productid`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
