-- phpMyAdmin SQL Dump
-- version 4.9.6
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2021 年 09 月 03 日 14:22
-- 伺服器版本： 10.3.24-MariaDB
-- PHP 版本： 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `JETEC`
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
  `theme` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '主题',
  `message` varchar(10000) COLLATE utf8_bin NOT NULL,
  `reply` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '回覆',
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `message`
--

INSERT INTO `message` (`id`, `company`, `firstname`, `lastname`, `phone`, `email`, `theme`, `message`, `reply`, `create_date`) VALUES
(1, '久德電子', 'yen lin', 'chen', '023729418', 'AAA@AAA.com', 'AAA', 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', 'gggggggggggggg', '2021-09-01 06:16:10'),
(2, '久德電子', 'yen lin', 'chen', '023729418', 'AAA@AAA.com', 'BBB', 'BBBBBBBBBBBBBBBBB', 'cc', '2021-09-01 06:25:28');

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
  `city` varchar(20) COLLATE utf8_bin NOT NULL,
  `country` varchar(20) COLLATE utf8_bin NOT NULL,
  `postalcode` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `remark` varchar(600) COLLATE utf8_bin DEFAULT NULL COMMENT '備住',
  `orderstatus` varchar(10) COLLATE utf8_bin NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`orderid`, `userid`, `email`, `firstname`, `lastname`, `company`, `phone`, `address`, `city`, `country`, `postalcode`, `remark`, `orderstatus`, `createdate`) VALUES
(1, 4, 'AAA@AAA.com', 'yen lin', 'chen', '久德電子', '023729418', '福人街11號', '台中市', '台灣', '404', NULL, '3', '2021-08-19 06:36:28'),
(3, 4, 'AAA@AAA.com', 'yen lin', 'chen', '久德電子', '023729418', '福人街11號', '台中市', '台灣', '404', NULL, '1', '2021-08-19 06:58:24'),
(4, 4, 'AAA@AAA.com', 'yen lin', 'chen', '久德電子', '023729418', '福人街11號', '台中市', '台灣', '404', NULL, '1', '2021-08-20 01:46:46'),
(6, 4, 'AAA@AAA.com', 'yen lin', 'chen', '久德電子', '023729418', '福人街11號', '台中市', '台灣', '404', NULL, '2', '2021-08-23 00:41:54'),
(7, 4, 'AAA@AAA.com', 'yen lin', 'chen', '久德電子', '023729418', '福人街11號', '台中市', '台灣', '404', NULL, '1', '2021-08-24 06:12:45'),
(8, 4, 'AAA@AAA.com', 'yen lin', 'chen', '久德電子', '023729418', '福人街11號', '台中市', '台灣', '404', NULL, '1', '2021-08-25 06:23:55'),
(10, 4, 'AAA@AAA.com', 'yen lin', 'chen', '久德電子', '023729418', '福人街11號', '台中市', '台灣', '404', NULL, '3', '2021-08-25 06:33:32'),
(11, 4, 'AAA@AAA.com', 'yen lin', 'chen', '久德電子', '023729418', '福人街11號', '台中市', '台灣', '404', NULL, '2', '2021-08-25 06:36:50'),
(12, 4, 'AAA@AAA.com', 'yen lin', 'chen', '久德電子', '023729418', 'XXXXX', '台中市', '台灣', '404', NULL, '1', '2021-08-27 08:41:29');

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
(1, 1, 1, 1000, 1, '1', NULL),
(2, 1, 4, 100, 4, '1', NULL),
(3, 3, 1, 1000, 2, '1', NULL),
(4, 3, 4, 100, 4, '1', NULL),
(5, 3, 5, 100, 2, '1', NULL),
(6, 4, 5, 100, 1, '1', NULL),
(7, 6, 1, 1000, 1, '1', NULL),
(8, 6, 4, 100, 1, '1', NULL),
(9, 6, 5, 100, 1, '1', NULL),
(10, 7, 4, 100, 1, '1', NULL),
(11, 7, 5, 100, 1, '1', NULL),
(12, 8, 1, 1000, 1, '1', NULL),
(13, 8, 4, 100, 1, '1', NULL),
(14, 8, 5, 100, 1, '1', NULL),
(82, 10, 4, 100, 1, '1', NULL),
(83, 11, 1, 1000, 5, '1', NULL),
(84, 11, 5, 100, 5, '1', NULL),
(85, 12, 4, 100, 1, '1', NULL),
(86, 12, 5, 100, 1, '1', NULL);

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
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `producttext` varchar(600) COLLATE utf8_bin NOT NULL,
  `specification` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '特點',
  `sellprice` int(20) NOT NULL,
  `purchaseprice` int(20) NOT NULL,
  `vendorid` int(11) NOT NULL,
  `productcategoryid` int(11) NOT NULL,
  `productstatus` varchar(2) COLLATE utf8_bin NOT NULL,
  `quantity` int(100) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp(),
  `pictureurl` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `count` int(50) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`id`, `model`, `name`, `producttext`, `specification`, `sellprice`, `purchaseprice`, `vendorid`, `productcategoryid`, `productstatus`, `quantity`, `data`, `pictureurl`, `count`, `type`) VALUES
(1, 'TTM-000', '多功能PID溫度控制器', '描述\r\nE+E Elektronik 的 EE160 專為 HVAC 設計，是一款經濟高效、高精度的相對濕度和溫度變送器。EE160 具有傳感探頭內的封裝測量電子設備和濕度傳感器的 E+E 專有塗層保護，可提供出色的長期穩定性和可靠性。', NULL, 1000, 500, 1, 1, '1', 94, '2021-08-13 07:34:18', 'TTM000.gif', 79, 2),
(2, '品號', '名子', '描述', '規格', 100, 50, 1, 1, '0', 100, '2021-08-13 07:46:32', NULL, 0, 1),
(4, 'EE10-T', '室內溫度傳送器', 'EE10 is dedicated for accurate room temperature (T) measurement\r\nin residential and commercial HVAC.\r\nFor model EE10-M3, the measured data is available either on the\r\nanalogue output or on the BACnet MS/TP or Modbus RTU interface,\r\nas well as on the optional display.\r\nThe EE10-M7 features a passive output and can be fitted with a wide\r\nchoice of temperature sensors.\r\nThe stylish enclosure is available in several colors and in two sizes\r\naccording to regional standards.', NULL, 100, 50, 1, 1, '1', 8, '2021-08-16 01:52:14', 'EE10-T.png', 147, 1),
(5, 'EE431', '風管/水管應用溫度傳送器', 'The EE431 duct and immersion sensor measures reliably the\r\ntemperature (T) in air and liquids and is optimized for building\r\nautomation, HVAC and process control.<br>\r\nAnalogue, Digital and Passive Outputs\r\nThe T measured data is available on the voltage or current output,\r\nas well as on the RS485 interface with Modbus RTU or BACnet MS/\r\nTP protocol. In addition, EE431 features a wide choice of sensing\r\nelements for passive T measurement.', NULL, 100, 50, 1, 1, '1', 93, '2021-08-16 01:55:44', 'EE431.png', 85, 1),
(45, '3333', 'rrrrrrrrr', '33dddddddd', NULL, 11111, 1111, 1, 1, '2', 1111, '2021-08-25 00:35:36', '3333.jpg', 3, 1),
(46, 'ddssffs', 'AAAAA', 'dddddddd', NULL, 11111, 1111, 1, 1, '1', 1111, '2021-08-25 00:51:52', 'ddssffs.jpg', 41, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `product_option`
--

CREATE TABLE `product_option` (
  `id` int(50) NOT NULL,
  `productid` int(11) DEFAULT NULL,
  `product_group` varchar(10) COLLATE utf8_bin NOT NULL,
  `product_option` varchar(20) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `product_option`
--

INSERT INTO `product_option` (`id`, `productid`, `product_group`, `product_option`) VALUES
(1, 4, '溫度', '溫度XXXXX'),
(2, 4, '溫度', '0-50'),
(3, 4, '溫度', '0-100'),
(4, 4, 'XX', '123'),
(5, 4, 'XX', '456'),
(25, 46, 'ZZZ', 'aaa');

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
  `sptext` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `product_specification`
--

INSERT INTO `product_specification` (`specification`, `id`, `sptext`) VALUES
(6, 5, '溫度工作範圍：-40~150℃ '),
(7, 5, '精度： ± 0.2 °C '),
(8, 5, '多種輸出：0-10 V 、4-20 mA與RS485通訊'),
(9, 5, '防護等級：IP65 / NEMA 4 '),
(10, 5, '創新的immersion well安裝夾簧設計可用於液體管道測量 ．適用於樓宇控制 、HVAC應用、過程和環境控制 、氣體和液體測量'),
(11, 46, 'BBBBB'),
(12, 46, 'ssssssssss'),
(13, 46, 'mmmmmmm'),
(14, 46, 'eeeeeeeeeee'),
(15, 46, 'rrrrrrrrrrr'),
(16, 4, '溫度測量範圍：0～50 °C'),
(17, 4, '精度：± 0.3 °C'),
(18, 4, '輸出：0-10V, 4-20mA, Modbus RTU, BACnet'),
(19, 4, '供電電源：24 VDC'),
(20, 4, '應用於樓宇控制、電氣開關櫃、環境控制、綠色節能建築'),
(21, 1, '取樣週期0.5秒，精度: ±(0.3% + 1 digit) 、4位數LED顯示'),
(22, 1, '多種功能(如：優先參數,計時器,BLIND隱藏參數,數位PV濾波,AUTO-TUNING,冷卻或加熱...等)'),
(23, 1, '通訊介面(ModBus RS-485)'),
(24, 1, 'IP66防護等級、具CE、UL、cUL認證'),
(25, 1, '六款尺寸：TTM-002, TTM-004, TTM-005, TTM-006, TTM-007, TTM-009'),
(26, 45, 'PPPPPPPPPPPPPP'),
(27, 45, 'FFFFFFFFFFF'),
(28, 45, 'sssssssss'),
(29, 45, 'eeeeeeeeeee'),
(30, 45, 'rrrrrrrrrrr'),
(31, 47, 'AA'),
(32, 47, 'BB'),
(33, 47, 'CC'),
(34, 47, 'DD'),
(35, 47, '');

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
(1, 'XX', '11'),
(2, 'XX', '22'),
(16, 'XX', '33'),
(29, 'yy', NULL),
(30, 'yy', '44'),
(31, 'yy', '55');

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
(7, 'yen lin', 'chen', '023729418', 'BBB@AAA.com', NULL, '久德電子', '$2a$10$S8x35NwnYmGS0vXjuKlnDeIAGIRoxxg25fi7APKDW5yvs1NN/UaW.', '1');

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
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

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
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_option`
--
ALTER TABLE `product_option`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_picture`
--
ALTER TABLE `product_picture`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_specification`
--
ALTER TABLE `product_specification`
  MODIFY `specification` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_status`
--
ALTER TABLE `product_status`
  MODIFY `productstatus` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_type`
--
ALTER TABLE `product_type`
  MODIFY `type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `salesman`
--
ALTER TABLE `salesman`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
