-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 09:38 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `pdtable`
--

CREATE TABLE `pdtable` (
  `pid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `pname` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `pdetails` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `pprice` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pdtable`
--

INSERT INTO `pdtable` (`pid`, `pname`, `pdetails`, `pprice`) VALUES
('p-001', 'Simplus หม้อไฟฟ้าอเนกประสงค์ 3L', 'เหมาะสำหรับ 4-5 คน หม้อไฟ เครื่องใช้ไฟฟ้าในบ้าน ควบคุมอุณหภูมิ 2 ระดับ', '568.00'),
('p-002', 'กระทะปิ้งย่างไฟฟ้า 2IN1', 'กะทะ เตาปิ้งย่าง พร้อมหม้อสุกี้บาร์บีคิว หม้อปิ้งย่าง เครื่องใช้ไฟฟ้า', '386.00'),
('p-003', 'ELECTROLUX เตารีดแห้ง', 'ELECTROLUX เตารีดแห้ง รุ่น EDI1004 ', '349.00'),
('p-004', 'LG เครื่องซักผ้าฝาหน้า ( 9 kg)', ' รุ่น FM1209N6W.ABWPETH', '9,998.00'),
('p-005', 'Samsung ตู้เย็น 2 ประตู', 'ขนาด 14.1 คิว รุ่น RT38K501JS8/ST', '8,990.00'),
('p-006', 'SHARP หม้อหุ่งข้าวไฟฟ้า', 'รุ่น KS-11ET', '989.00'),
('p-007', 'TH GORGEOUS เครื่องฟอกอากาศ', 'เครื่องฟอกอากาศในครัวเรือนเงียบฆ่าเชื้ออัจฉริยะนอกเหนือจากหมอกควันกลิ่', '1,154.00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
