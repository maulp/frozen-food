-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 05:02 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokopekita`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `idcart` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `tglorder` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL DEFAULT 'Cart'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`idcart`, `orderid`, `userid`, `tglorder`, `status`) VALUES
(10, '15wKVT0nej25Y', 2, '2020-03-16 12:10:42', 'Selesai'),
(11, '15Swf8Ye0Fm.M', 2, '2020-03-16 12:17:34', 'Confirmed'),
(12, '15PzF03ejd8W2', 1, '2020-05-13 02:40:48', 'Confirmed'),
(13, '16siy42DYKeso', 2, '2022-11-21 02:48:32', 'Selesai'),
(14, '16UEdjM.g4QCw', 2, '2022-12-05 01:44:01', 'Confirmed'),
(15, '163maQ4T6z2nY', 2, '2022-12-07 07:00:32', 'Confirmed'),
(16, '16KaIsh179Q0M', 2, '2022-12-07 07:03:32', 'Confirmed'),
(17, '16fr8Dwf8DFQo', 2, '2022-12-07 07:37:45', 'Selesai'),
(18, '169D99jYkky4.', 2, '2022-12-07 07:44:38', 'Payment'),
(19, '16eV2lWsNC.UY', 5, '2022-12-14 07:15:26', 'Confirmed'),
(20, '16sPSDz9Za32M', 2, '2022-12-14 07:42:20', 'Cart'),
(21, '168wjSVV91UuI', 1, '2022-12-14 07:50:46', 'Confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `detailorder`
--

CREATE TABLE `detailorder` (
  `detailid` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailorder`
--

INSERT INTO `detailorder` (`detailid`, `orderid`, `idproduk`, `qty`) VALUES
(16, '16siy42DYKeso', 6, 1),
(18, '16UEdjM.g4QCw', 5, 3),
(19, '16UEdjM.g4QCw', 10, 1),
(20, '163maQ4T6z2nY', 5, 3),
(21, '16KaIsh179Q0M', 10, 1),
(22, '16fr8Dwf8DFQo', 6, 1),
(23, '169D99jYkky4.', 5, 1),
(24, '169D99jYkky4.', 7, 2),
(25, '16eV2lWsNC.UY', 5, 1),
(26, '16sPSDz9Za32M', 5, 19),
(27, '168wjSVV91UuI', 6, 1),
(29, '168wjSVV91UuI', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `namakategori` varchar(20) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `namakategori`, `tgldibuat`) VALUES
(1, '1 - daging', '2022-11-14 02:04:44'),
(2, '2 - sayur', '2022-11-14 02:04:44'),
(3, '3 - frozen food', '2022-11-14 02:17:02'),
(4, '4  - kue', '2022-12-19 01:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `idkonfirmasi` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `namarekening` varchar(25) NOT NULL,
  `tglbayar` date NOT NULL,
  `tglsubmit` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`idkonfirmasi`, `orderid`, `userid`, `payment`, `namarekening`, `tglbayar`, `tglsubmit`) VALUES
(1, '15PzF03ejd8W2', 1, 'Bank BCA', 'Admin', '2020-05-16', '2020-05-13 02:41:51'),
(2, '15Swf8Ye0Fm.M', 2, 'DANA', 'adsfa', '2022-11-14', '2022-11-14 02:22:57'),
(4, '16UEdjM.g4QCw', 2, 'Bank BCA', 'adfadf', '2023-01-06', '2022-12-05 01:59:21'),
(5, '163maQ4T6z2nY', 2, 'Bank BCA', 'alex', '2022-12-21', '2022-12-07 07:08:10'),
(6, '16KaIsh179Q0M', 2, 'Bank BCA', 'yoga', '2022-12-26', '2022-12-07 07:38:09'),
(7, '16eV2lWsNC.UY', 5, 'Bank BCA', 'yoga', '2022-12-14', '2022-12-14 07:16:46'),
(8, '168wjSVV91UuI', 1, 'Bank Mandi', 'admin', '2022-12-15', '2022-12-19 14:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgljoin` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(7) NOT NULL DEFAULT 'Member',
  `lastlogin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `namalengkap`, `email`, `password`, `notelp`, `alamat`, `tgljoin`, `role`, `lastlogin`) VALUES
(1, 'Admin', 'admin', '$2y$10$GJVGd4ji3QE8ikTBzNyA0uLQhiGd6MirZeSJV1O6nUpjSVp1eaKzS', '01234567890', 'Indonesia', '2020-03-16 11:31:17', 'Admin', NULL),
(2, 'Guest', 'guest', '$2y$10$xXEMgj5pMT9EE0QAx3QW8uEn155Je.FHH5SuIATxVheOt0Z4rhK6K', '01234567890', 'Indonesia', '2020-03-16 11:30:40', 'Member', NULL),
(3, 'david', 'david@gmail.com', '$2y$10$SSq76CHg0HRlR3Tt7vWzPOLSTjlH2k6mWDLLNm2Pxu/4q7L4r0uW2', '091823781', 'malang', '2022-12-07 07:59:03', 'Member', NULL),
(4, 'faishol', 'faishol@gmail.com', '$2y$10$hkpd07HvBop7GRvwOvQKHeV8VKPr0hSzsnVhU.ZSKSHuflvEBdDOq', '09810293', 'malang', '2022-12-07 07:59:34', 'Member', NULL),
(5, 'yoga', 'yoga@gmail.com', '$2y$10$XRGdr4nb5hfmtlDvkw9U5.juLIzK3yql/CFk2UB4DZ9yfXRJKcjhu', '09821313123', 'malang', '2022-12-07 07:59:54', 'Member', NULL),
(6, 'mika', 'mika@gmail.com', '$2y$10$pQQ/fGF7phnNIogWFPqTj.RmC/wYfcVdwWIkz917kh7n19bwpwwVu', '09218309', 'malang', '2022-12-07 08:00:11', 'Member', NULL),
(7, 'yoga', 'yogsaa@gmail.com', '$2y$10$Ny5nfSo/ABEP2.IgCVvbrOvEjXeJTjPqR.Hn1RdL5AOhdirtoBqlG', '0849382', ',alang', '2022-12-14 07:13:47', 'Member', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no` int(11) NOT NULL,
  `metode` varchar(25) NOT NULL,
  `norek` varchar(25) NOT NULL,
  `logo` text DEFAULT NULL,
  `an` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`no`, `metode`, `norek`, `logo`, `an`) VALUES
(1, 'Bank BCA', '13131231231', 'images/bca.jpg', 'Mr. Food'),
(2, 'Bank Mandiri', '943248844843', 'images/mandiri.jpg', 'Mr. Food'),
(3, 'DANA', '087704756564', 'images/dana.png', 'Mr. Food');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `namaproduk` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `rate` int(11) NOT NULL,
  `hargabefore` int(11) NOT NULL,
  `hargaafter` int(11) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp(),
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `idkategori`, `namaproduk`, `gambar`, `deskripsi`, `rate`, `hargabefore`, `hargaafter`, `tgldibuat`, `stok`) VALUES
(5, 1, 'INI DAGING SAPI', 'produk/16nl08fYu96V6.jpg', 'daging sapi', 5, 60000, 50000, '2022-11-14 03:19:22', 9),
(6, 1, 'Kambing ', 'produk/16kQw0SdWtTE6.jpg', 'Daginng Kambing 500gr', 5, 70000, 55000, '2022-11-14 03:19:22', 5),
(7, 1, 'Daging Ayam ', 'produk/ayam.png', 'Daging ayam 500gr', 4, 20000, 18000, '2022-11-14 03:19:22', 5),
(8, 1, 'Ikan Salmon', 'produk/salmon.jpg', 'Ikan Salmon segar 1 kg', 5, 60000, 50000, '2022-11-14 03:19:22', 9),
(9, 1, 'Ikan Tuna', 'produk/tuna.jpg', 'Ikan Tuna 500gr', 5, 65000, 60000, '2022-11-14 03:19:22', 10),
(10, 2, 'Brokoli ', 'produk/brokoli.webp', 'Brokoli Segar', 3, 10000, 8000, '2022-11-14 03:19:22', 12),
(11, 2, 'Wortel', 'produk/wortel.jpg', 'Wortel', 2, 7000, 5999, '2022-11-14 03:19:22', 2),
(12, 2, 'Tomat', 'produk/tomat.jpg', 'Tomat Segar', 4, 5000, 4300, '2022-11-14 03:19:22', 0),
(13, 2, 'Bayam', 'produk/bayam.jpeg', 'Bayam perikat ', 3, 4000, 3450, '2022-11-14 03:19:22', 5),
(14, 2, 'Sawi', 'produk/sawi.jpg', 'Sawi ', 4, 6000, 5500, '2022-11-14 03:19:22', 0),
(15, 3, 'Bakso', 'produk/bakso.jpeg', 'Bakso 500gr', 5, 16000, 15000, '2022-11-14 03:19:22', 0),
(16, 3, 'Pempek', 'produk/mpek.jpg', 'Pempek tinggal masak ', 3, 12000, 11650, '2022-11-14 03:19:22', 0),
(17, 3, 'Sosis', 'produk/sosis.jpg', 'Sosis SAPI halal 500gr', 5, 27000, 26000, '2022-11-14 03:19:22', 0),
(18, 3, 'Bakso Aci', 'produk/baksoaci.jpg', 'Bakso Aci SEPESIAL', 3, 22000, 20000, '2022-11-14 03:19:22', 0),
(22, 4, 'kue ', 'produk/16jTXsHGF9h6I.jpg', 'kue enak', 4, 150000, 129000, '2022-12-19 07:28:04', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idcart`),
  ADD UNIQUE KEY `orderid` (`orderid`),
  ADD KEY `orderid_2` (`orderid`);

--
-- Indexes for table `detailorder`
--
ALTER TABLE `detailorder`
  ADD PRIMARY KEY (`detailid`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `idproduk` (`idproduk`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`idkonfirmasi`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`),
  ADD KEY `idkategori` (`idkategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `idcart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `detailorder`
--
ALTER TABLE `detailorder`
  MODIFY `detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `idkonfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailorder`
--
ALTER TABLE `detailorder`
  ADD CONSTRAINT `idproduk` FOREIGN KEY (`idproduk`) REFERENCES `produk` (`idproduk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderid` FOREIGN KEY (`orderid`) REFERENCES `cart` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `login` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `idkategori` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
