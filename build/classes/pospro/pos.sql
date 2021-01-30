-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2020 at 10:00 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `INID` int(11) NOT NULL,
  `Product_Name` varchar(50) NOT NULL,
  `Bar_code` varchar(50) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `Unit_Price` varchar(20) NOT NULL,
  `Total_Price` varchar(20) NOT NULL,
  `qty1` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `INID`, `Product_Name`, `Bar_code`, `qty`, `Unit_Price`, `Total_Price`, `qty1`) VALUES
(49, 20, 'cake', '475869321452', '10', '100', '1000.0', '0'),
(50, 20, 'Kinder', '10102222', '10', '1000', '10000.0', '0'),
(51, 20, 'Pepsi', '789865453212', '10', '500', '10000.0', '0'),
(52, 21, 'cake', '475869321452', '5', '100', '500.0', '0'),
(53, 21, 'cold drink', '1122556644', '2', '1000', '2000.0', '0'),
(54, 21, 'biscuit', '102541256398', '4', '100', '400.0', '0'),
(55, 21, 'Kinder', '10102222', '2', '1000', '2000.0', '0'),
(56, 21, 'Candy', '0012541263', '2', '500', '1000.0', '0'),
(57, 21, 'Pepsi', '789865453212', '5', '500', '2500.0', '0'),
(58, 22, 'biscuit', '102541256398', '5', '100', '500.0', '0'),
(59, 22, 'cake', '475869321452', '5', '100', '500.0', '5'),
(60, 22, 'Kinder', '10102222', '4', '1000', '4000.0', '0'),
(61, 23, 'cold drink', '1122556644', '2', '1000', '2000.0', '0'),
(62, 23, 'Kinder', '10102222', '4', '1000', '4000.0', '0'),
(63, 23, 'Candy', '0012541263', '3', '500', '1500.0', '0'),
(64, 24, 'cake', '475869321452', '2', '100', '200.0', '2'),
(65, 24, 'cold drink', '1122556644', '2', '1000', '2000.0', '0'),
(66, 24, 'biscuit', '102541256398', '4', '100', '400.0', '0'),
(67, 24, 'Kinder', '10102222', '3', '1000', '3000.0', '0'),
(68, 24, 'Candy', '0012541263', '5', '500', '2500.0', '0'),
(69, 24, 'Pepsi', '789865453212', '2', '500', '1000.0', '0'),
(70, 25, 'cold drink', '1122556644', '4', '1000', '4000.0', '0'),
(71, 25, 'Candy', '0012541263', '3', '500', '1500.0', '0'),
(72, 25, 'Pepsi', '789865453212', '3', '500', '1500.0', '0'),
(73, 25, 'Kinder', '10102222', '2', '1000', '2000.0', '0'),
(74, 26, 'cold drink', '1122556644', '3', '1000', '3000.0', '0'),
(75, 26, 'biscuit', '102541256398', '20', '100', '2000.0', '0'),
(76, 26, 'Pepsi', '789865453212', '4', '500', '2000.0', '0'),
(77, 27, 'Kinder', '10102222', '4', '1000', '4000.0', '0'),
(78, 28, 'biscuit', '102541256398', '10', '100', '1000.0', '0'),
(79, 28, 'cold drink', '1122556644', '5', '1000', '5000.0', '0'),
(80, 28, 'Pepsi', '789865453212', '4', '500', '2000.0', '0'),
(81, 28, 'cold drink', '1122556644', '3', '1000', '3000.0', '0'),
(82, 29, 'cold drink', '1122556644', '4', '1000', '4000.0', '4'),
(83, 29, 'biscuit', '102541256398', '5', '100', '500.0', '5'),
(84, 29, 'Kinder', '10102222', '6', '1000', '6000.0', '0'),
(85, 29, 'Pepsi', '789865453212', '2', '500', '1000.0', '0'),
(86, 29, 'candy', '110022336655', '4', '250', '1000.0', '0'),
(87, 30, 'Pepsi', '789865453212', '38', '500', '19000.0', '0'),
(88, 31, 'cold drink', '1122556644', '2', '1000', '2000.0', '2'),
(89, 31, 'biscuit', '102541256398', '4', '100', '400.0', '4'),
(90, 31, 'Kinder', '10102222', '3', '1000', '3000.0', '0'),
(91, 32, 'Pepsi', '789865453212', '10', '500', '5000.0', '10'),
(92, 33, 'Kinder', '10102222', '10', '1000', '10000.0', '0'),
(93, 34, 'Kinder', '10102222', '10', '1000', '10000.0', '0'),
(94, 35, 'Kinder', '10102222', '4', '1000', '4000.0', '0'),
(95, 36, 'Kinder', '10102222', '4', '1000', '4000.0', '0'),
(96, 36, 'Pepsi', '789865453212', '6', '500', '3000.0', '6'),
(97, 37, 'candy', '110022336655', '4', '250', '1000.0', '0'),
(98, 37, 'Kinder', '10102222', '4', '1000', '4000.0', '0'),
(99, 38, 'Kinder', '10102222', '4', '1000', '4000.0', '0'),
(100, 38, 'candy', '110022336655', '4', '250', '1000.0', '0'),
(101, 39, 'Kinder', '10102222', '4', '1000', '4000.0', '0'),
(102, 39, 'candy', '110022336655', '4', '250', '1000.0', '0'),
(103, 40, 'Kinder', '10102222', '4', '1000', '4000.0', '0'),
(104, 40, 'cold drink', '1122556644', '6', '1000', '6000.0', '6'),
(105, 41, 'Kinder', '10102222', '6', '1000', '6000.0', '0'),
(106, 41, 'candy', '110022336655', '6', '250', '1500.0', '0'),
(107, 42, 'Kinder', '10102222', '5', '1000', '5000.0', '0'),
(108, 42, 'Pepsi', '789865453212', '4', '500', '2000.0', '4'),
(109, 42, 'Kinder', '10102222', '5', '1000', '5000.0', '0'),
(110, 42, 'Pepsi', '789865453212', '10', '500', '5000.0', '10'),
(111, 43, 'Pepsi', '789865453212', '4', '500', '2000.0', '4'),
(112, 44, 'Kinder', '10102222', '4', '1000', '4000.0', '0'),
(113, 44, 'Pepsi', '789865453212', '5', '500', '2500.0', '5'),
(114, 44, 'biscuit', '102541256398', '1', '100', '100.0', '1'),
(115, 44, 'biscuit', '102541256398', '1', '100', '100.0', '1'),
(116, 45, 'cold drink', '1122556644', '5', '1000', '5000.0', '5'),
(117, 45, 'candy', '110022336655', '10', '250', '2500.0', '0'),
(118, 46, 'Kinder', '10102222', '8', '1000', '8000.0', '8'),
(119, 46, 'candy', '110022336655', '10', '250', '2500.0', '0'),
(120, 47, 'cold drink', '1122556644', '1', '1000', '1000.0', '1'),
(121, 47, 'Kinder', '10102222', '1', '1000', '1000.0', '1'),
(122, 47, 'Pepsi', '789865453212', '1', '500', '500.0', '1'),
(123, 47, 'candy', '110022336655', '10', '250', '2500.0', '0'),
(124, 47, 'cold drink', '1122556644', '2', '1000', '2000.0', '2');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `Tp_Number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `customer_name`, `Tp_Number`) VALUES
(1, 'test', '123'),
(5, 'pesha', '7707707777'),
(6, 'ahmad', '11110'),
(9, 'hawshad', '5456958');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(11) NOT NULL,
  `employee_Name` varchar(50) NOT NULL,
  `Tp_Number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `employee_Name`, `Tp_Number`) VALUES
(1, 'hawshad', '7707707777'),
(2, 'rayan', '77011111');

-- --------------------------------------------------------

--
-- Table structure for table `extra`
--

CREATE TABLE `extra` (
  `exid` int(11) NOT NULL,
  `val` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `extra`
--

INSERT INTO `extra` (`exid`, `val`) VALUES
(1, '47');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `product_Name` varchar(50) NOT NULL,
  `Bar_code` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `Qty` int(11) NOT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `product_Name`, `Bar_code`, `price`, `Qty`, `sid`) VALUES
(3, 'cold drink', '1122556644', '1000', 80, 1),
(4, 'biscuit', '102541256398', '100', 39, 1),
(5, 'Kinder', '10102222', '1000', 91, 1),
(7, 'Pepsi', '789865453212', '500', 30, 1),
(8, 'candy', '110022336655', '250', 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `saleid` int(11) NOT NULL,
  `INID` int(11) NOT NULL,
  `Cid` int(11) NOT NULL,
  `Customer_Name` varchar(50) NOT NULL,
  `Total_Qty` varchar(10) NOT NULL,
  `Total_Bill` varchar(10) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Balance` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tot_bill_after_disc` varchar(20) DEFAULT NULL,
  `disc_amt` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`saleid`, `INID`, `Cid`, `Customer_Name`, `Total_Qty`, `Total_Bill`, `Status`, `Balance`, `created_at`, `tot_bill_after_disc`, `disc_amt`) VALUES
(21, 20, 5, 'pesha', '30.0', '21000.0', 'Paid', '0.0', '2020-12-01 15:43:29', NULL, NULL),
(22, 21, 6, 'ahmad', '20.0', '8400.0', 'Paid', '600.0', '2020-12-01 15:49:02', NULL, NULL),
(23, 22, 5, 'pesha', '14.0', '5000.0', 'UnPaid', '-5000.0', '2020-12-01 16:31:56', NULL, NULL),
(24, 23, 5, 'pesha', '9.0', '7500.0', 'Paid', '2500.0', '2020-12-01 18:12:18', NULL, NULL),
(25, 24, 5, 'pesha', '18.0', '9100.0', 'Paid', '900.0', '2020-12-01 19:06:08', NULL, NULL),
(26, 25, 5, 'pesha', '12.0', '9000.0', 'Paid', '1000.0', '2020-12-02 15:32:54', NULL, NULL),
(27, 26, 5, 'pesha', '27.0', '7000.0', 'Paid', '3000.0', '2020-12-02 15:37:44', NULL, NULL),
(28, 27, 5, 'pesha', '4.0', '4000.0', 'UnPaid', '-4000.0', '2020-12-02 17:56:37', NULL, NULL),
(29, 28, 5, 'pesha', '22.0', '11000.0', 'UnPaid', '-11000.0', '2020-12-02 17:58:24', NULL, NULL),
(30, 29, 6, 'ahmad', '21.0', '12500.0', 'UnPaid', '-12500.0', '2020-12-02 18:37:24', NULL, NULL),
(31, 30, 5, 'pesha', '38.0', '19000.0', 'Paid', '1000.0', '2020-12-02 18:49:09', NULL, NULL),
(32, 31, 5, 'pesha', '9.0', '5400.0', 'UnPaid', '-5400.0', '2020-12-02 19:21:08', NULL, NULL),
(33, 32, 5, 'test', '10.0', '5000.0', 'Paid', '0.0', '2020-12-02 19:22:04', NULL, NULL),
(34, 33, 5, 'pesha', '10.0', '10000.0', 'Paid', '1000.0', '2020-12-02 22:59:19', NULL, NULL),
(35, 34, 5, 'pesha', '10.0', '9000.0', 'Paid', '1000.0', '2020-12-02 23:03:35', NULL, NULL),
(36, 35, 5, 'pesha', '4.0', '3600.0', 'Paid', '400.0', '2020-12-03 11:03:48', NULL, NULL),
(37, 36, 5, 'pesha', '10.0', '6300.0', 'Partial', '200.0', '2020-12-03 11:39:40', NULL, NULL),
(38, 37, 5, 'pesha', '8.0', '5000.0', 'Partial', '0.0', '2020-12-03 12:06:49', NULL, NULL),
(39, 38, 5, 'pesha', '8.0', '5000.0', 'Partial', '0.0', '2020-12-03 12:10:36', '4500.0', NULL),
(40, 39, 5, 'pesha', '8.0', '5000.0', 'Paid', '0.0', '2020-12-03 12:14:22', '4500.0', NULL),
(41, 40, 5, 'pesha', '10.0', '10000.0', 'Paid', '1000.0', '2020-12-03 12:23:21', '9000.0', NULL),
(42, 41, 5, 'pesha', '12.0', '7500.0', 'Paid', '2500.0', '2020-12-03 12:25:32', '00.00', NULL),
(43, 42, 5, 'pesha', '9.0', '7000.0', 'Paid', '3000.0', '2020-12-03 19:47:34', '7000.0', NULL),
(45, 43, 5, 'pesha', '4.0', '2000.0', 'Paid', '0.0', '2020-12-03 19:50:49', '2000.0', NULL),
(46, 44, 5, 'pesha', '11.0', '6700.0', 'Paid', '0.0', '2020-12-03 19:55:40', '6030.0', NULL),
(47, 45, 5, 'pesha', '15.0', '7500.0', 'Paid', '0.0', '2020-12-03 20:00:29', '6750.0', '0.10'),
(48, 46, 6, 'ahmad', '18.0', '10500.0', 'Paid', '1600.0', '2020-12-03 20:22:24', '8400.0', '0.20'),
(49, 47, 9, 'hawshad', '15.0', '7000.0', 'Paid', '700.0', '2020-12-03 20:31:17', '6300.0', '0.10');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `sid` int(11) NOT NULL,
  `supplier_Name` varchar(50) NOT NULL,
  `Tp_Number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sid`, `supplier_Name`, `Tp_Number`) VALUES
(1, 'cola', '101010'),
(3, 'pepsi', '4456332211'),
(4, 'ozmo', '5854815181');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Roll` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Name`, `Password`, `Roll`) VALUES
(1, 'pesha', 'aabbcc112233', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`exid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`saleid`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `extra`
--
ALTER TABLE `extra`
  MODIFY `exid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `saleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
