-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2020 at 04:57 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `umkm`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_bank_merchant`
--

CREATE TABLE `m_bank_merchant` (
  `id` int(3) NOT NULL,
  `kode_bank` int(4) NOT NULL,
  `nama_bank` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_bank_merchant`
--

INSERT INTO `m_bank_merchant` (`id`, `kode_bank`, `nama_bank`) VALUES
(1, 14, 'Bank BCA'),
(2, 2, 'Bank BRI'),
(3, 8, 'Bank Mandiri'),
(4, 9, 'Bank BNI');

-- --------------------------------------------------------

--
-- Table structure for table `m_category_produk`
--

CREATE TABLE `m_category_produk` (
  `id` int(3) NOT NULL,
  `nama_category` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_customer`
--

CREATE TABLE `m_customer` (
  `id` int(4) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone_number` int(14) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gender` varchar(14) NOT NULL,
  `birth_date` date NOT NULL,
  `profile` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_customer`
--

INSERT INTO `m_customer` (`id`, `name`, `phone_number`, `email`, `address`, `gender`, `birth_date`, `profile`, `created_at`, `updated_at`) VALUES
(1, 'Dicky Firmansyah', 222222222, 'dickydezchal6@gmail.com', 'Gayungan', 'Laki-Laki', '1998-07-13', '', '2020-02-08 00:00:00', '2020-02-08 16:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `m_merchant`
--

CREATE TABLE `m_merchant` (
  `id` int(4) NOT NULL,
  `merchant_name` varchar(30) NOT NULL,
  `merchant_phone` int(14) NOT NULL,
  `merchant_email` varchar(30) NOT NULL,
  `merchant_address` varchar(50) NOT NULL,
  `merchant_bank` varchar(50) NOT NULL,
  `merchant_desc` int(100) NOT NULL,
  `merchant_user` int(30) NOT NULL,
  `merchant_profile` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_merchant_pending`
--

CREATE TABLE `m_merchant_pending` (
  `id` int(4) NOT NULL,
  `merchant_name` varchar(30) NOT NULL,
  `merchant_phone` int(14) NOT NULL,
  `merchant_email` varchar(30) NOT NULL,
  `merchant_address` varchar(50) NOT NULL,
  `merchant_bank` varchar(50) NOT NULL,
  `merchant_desc` int(100) NOT NULL,
  `merchant_user` int(30) NOT NULL,
  `merchant_profile` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_bank_merchant`
--
ALTER TABLE `m_bank_merchant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_category_produk`
--
ALTER TABLE `m_category_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_customer`
--
ALTER TABLE `m_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_merchant`
--
ALTER TABLE `m_merchant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_merchant_pending`
--
ALTER TABLE `m_merchant_pending`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_bank_merchant`
--
ALTER TABLE `m_bank_merchant`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m_category_produk`
--
ALTER TABLE `m_category_produk`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_customer`
--
ALTER TABLE `m_customer`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `m_merchant`
--
ALTER TABLE `m_merchant`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_merchant_pending`
--
ALTER TABLE `m_merchant_pending`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
