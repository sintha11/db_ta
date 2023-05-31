-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2023 at 05:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sistem_informasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_monitoring`
--

CREATE TABLE `tb_monitoring` (
  `id` int(10) NOT NULL,
  `Bulan` varchar(100) NOT NULL,
  `Indikator Kinerja` varchar(150) NOT NULL,
  `Program Kegiatan` varchar(100) NOT NULL,
  `Target Kinerja` varchar(100) NOT NULL,
  `Realisasi Kinerja` varchar(100) NOT NULL,
  `Pencapaian Kinerja` text NOT NULL,
  `Permasalahan` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_monitoring`
--

INSERT INTO `tb_monitoring` (`id`, `Bulan`, `Indikator Kinerja`, `Program Kegiatan`, `Target Kinerja`, `Realisasi Kinerja`, `Pencapaian Kinerja`, `Permasalahan`) VALUES
(1, 'Januari', 'Nilai SAKIP', 'Program Kinerja Perangkat Daerah Kabupaten/Kota', '80%', '0%', '0%', 'Tidak Ada'),
(3, 'Januari', 'Persentase Dokumen Perencanaan, Keuangan, Pelaporan Yang Disusun Tepat Waktu', 'Program Penunjang Urusan Pemerintah Daerah Kabupten/Kota', '100%', '16.68%', '16%', 'Tidak Ada'),
(5, 'Januari', 'Persentase Dokumen Perancanaan, Penganggaran dan Evaluasi Kinerja Perangkat Daerah Yang Disusun Sesuai Kententuan', 'Kegiatan Perencanaan, Penganggaran dan Evaluasi Kinerja Perangkat Daerah', '100%', '18.69%', '18%', 'Tidak Ada');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(5) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id`, `nama`, `username`, `password`) VALUES
(1, 'coba', 'admin', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_monitoring`
--
ALTER TABLE `tb_monitoring`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_monitoring`
--
ALTER TABLE `tb_monitoring`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
