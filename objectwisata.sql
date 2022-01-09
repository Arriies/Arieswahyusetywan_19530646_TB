-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 11:20 AM
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
-- Database: `objectwisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `ivent`
--

CREATE TABLE `ivent` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `tanggal` varchar(225) NOT NULL,
  `tempat` varchar(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ivent`
--

INSERT INTO `ivent` (`id`, `nama`, `tanggal`, `tempat`, `keterangan`) VALUES
('EV001', 'panjat pinang', '01-01-2022', 'bandung', 'umum');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `paket` varchar(225) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `bayar` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id`, `tanggal`, `paket`, `jumlah`, `bayar`) VALUES
('TK001', '01-01-2022', 'Anak Anak', '1', '100000'),
('TK002', '01-01-2022', 'Dewasa', '1', '100000');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id`, `nama`, `alamat`, `keterangan`) VALUES
('WS001', 'air terjun', 'bandung', 'tidak ada');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ivent`
--
ALTER TABLE `ivent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
