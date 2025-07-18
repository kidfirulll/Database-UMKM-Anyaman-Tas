-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2025 at 11:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anyaman_tas`
--

-- --------------------------------------------------------

--
-- Table structure for table `bahan`
--

CREATE TABLE `bahan` (
  `id_bahan` int(11) NOT NULL,
  `jenis_bahan` varchar(255) NOT NULL,
  `stok_bahan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bahan`
--

INSERT INTO `bahan` (`id_bahan`, `jenis_bahan`, `stok_bahan`) VALUES
(1, 'plastik_pp_merah', 6500),
(2, 'plastik_pp_kuning', 5500),
(3, 'plastik_pp_hijau', 5500),
(4, 'plastik_pp_biru', 5500),
(5, 'plastik_pp_ungu', 8000),
(6, 'plastik_pp_hitam', 7000),
(7, 'plastik_pp_putih', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `kebutuhan_bahan`
--

CREATE TABLE `kebutuhan_bahan` (
  `id_kebutuhan_bahan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_bahan` int(11) NOT NULL,
  `jumlah_kebutuhan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kebutuhan_bahan`
--

INSERT INTO `kebutuhan_bahan` (`id_kebutuhan_bahan`, `id_produk`, `id_bahan`, `jumlah_kebutuhan`) VALUES
(1, 1, 1, 100),
(2, 1, 7, 100),
(3, 2, 1, 200),
(4, 2, 7, 200),
(5, 3, 1, 300),
(6, 3, 7, 300),
(7, 4, 6, 100),
(8, 4, 7, 100),
(9, 5, 6, 200),
(10, 5, 7, 200),
(11, 6, 6, 300),
(12, 6, 7, 300),
(13, 7, 5, 100),
(14, 7, 1, 100),
(15, 8, 5, 200),
(16, 8, 1, 200),
(17, 9, 5, 300),
(18, 9, 1, 300),
(19, 10, 3, 100),
(20, 10, 2, 100),
(21, 11, 3, 200),
(22, 11, 2, 200),
(23, 12, 3, 300),
(24, 12, 2, 300),
(25, 13, 4, 100),
(26, 13, 7, 100),
(27, 14, 4, 200),
(28, 14, 7, 200),
(29, 15, 4, 300),
(30, 15, 7, 300);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `alamat_pelanggan` varchar(255) NOT NULL,
  `no_tlp_pelanggan` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `no_tlp_pelanggan`) VALUES
(1, 'kai', 'kediri', 123),
(2, 'dyah', 'kediri', 124),
(3, 'yuli', 'tulungagung', 125),
(4, 'yaya', 'mojokerto', 126),
(5, 'siti', 'tulungagung', 127);

-- --------------------------------------------------------

--
-- Table structure for table `pengrajin`
--

CREATE TABLE `pengrajin` (
  `id_pengrajin` int(11) NOT NULL,
  `nama_pengrajin` varchar(255) NOT NULL,
  `alamat_pengrajin` varchar(255) NOT NULL,
  `no_tlp_pengrajin` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengrajin`
--

INSERT INTO `pengrajin` (`id_pengrajin`, `nama_pengrajin`, `alamat_pengrajin`, `no_tlp_pengrajin`) VALUES
(1, 'khusnul', 'kediri', 123),
(2, 'nurul', 'kediri', 124),
(3, 'eni', 'kediri', 125),
(4, 'lia', 'kediri', 126),
(5, 'umi', 'kediri', 127),
(6, 'eka', 'kediri', 128),
(7, 'luluk', 'kediri', 129),
(8, 'wariani', 'kediri', 130);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `jenis_produk` varchar(255) NOT NULL,
  `ukuran` varchar(255) NOT NULL,
  `stok_produk` int(11) NOT NULL,
  `harga_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `jenis_produk`, `ukuran`, `stok_produk`, `harga_produk`) VALUES
(1, 'Tas_merah_putih', 'kecil', 70, 4000),
(2, 'Tas_merah_putih', 'sedang', 25, 7000),
(3, 'Tas_merah_putih', 'besar', 25, 10000),
(4, 'Tas_hitam_putih', 'kecil', 25, 4000),
(5, 'Tas_hitam_putih', 'sedang', 25, 7000),
(6, 'Tas_hitam_putih', 'besar', 45, 10000),
(7, 'Tas_ungu_merah', 'kecil', 15, 4000),
(8, 'Tas_ungu_merah', 'sedang', 55, 7000),
(9, 'Tas_ungu_merah', 'besar', 25, 10000),
(10, 'Tas_hijau_kuning', 'kecil', 25, 4000),
(11, 'Tas_hijau_kuning', 'sedang', 25, 7000),
(12, 'Tas_hijau_kuning', 'besar', 60, 10000),
(13, 'Tas_biru_putih', 'kecil', 25, 4000),
(14, 'Tas_biru_putih', 'sedang', 25, 7000),
(15, 'Tas_biru_putih', 'besar', 45, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `produksi`
--

CREATE TABLE `produksi` (
  `id_produksi` int(11) NOT NULL,
  `id_pengrajin` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah_produksi` int(11) NOT NULL,
  `tanggal_produksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produksi`
--

INSERT INTO `produksi` (`id_produksi`, `id_pengrajin`, `id_produk`, `jumlah_produksi`, `tanggal_produksi`) VALUES
(7, 4, 15, 5, '2024-12-23'),
(8, 7, 12, 5, '2024-12-23');

--
-- Triggers `produksi`
--
DELIMITER $$
CREATE TRIGGER `Penambahan_stok_produk` AFTER INSERT ON `produksi` FOR EACH ROW BEGIN
UPDATE produk
JOIN produksi ON produksi.id_produk = produk.id_produk
SET produk.stok_produk = produk.stok_produk + NEW.jumlah_produksi
WHERE produk.id_produk = produksi.id_produk;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Penggunaan_bahan` AFTER INSERT ON `produksi` FOR EACH ROW BEGIN 
UPDATE bahan
JOIN kebutuhan_bahan ON kebutuhan_bahan.id_bahan = bahan.id_bahan
SET bahan.stok_bahan = bahan.stok_bahan - (kebutuhan_bahan.jumlah_kebutuhan * NEW.jumlah_produksi)
WHERE kebutuhan_bahan.id_produk = NEW.id_produk;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_penjualan`
--

CREATE TABLE `transaksi_penjualan` (
  `id_transaksi_penjualan` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_penjualan`
--

INSERT INTO `transaksi_penjualan` (`id_transaksi_penjualan`, `id_pelanggan`, `id_produk`, `jumlah_produk`, `tanggal_transaksi`) VALUES
(1, 1, 1, 10, '2024-12-23'),
(2, 3, 7, 10, '2024-12-23'),
(3, 4, 12, 10, '2024-12-23');

--
-- Triggers `transaksi_penjualan`
--
DELIMITER $$
CREATE TRIGGER `Pengurangan_stok_penjualan` AFTER INSERT ON `transaksi_penjualan` FOR EACH ROW BEGIN
UPDATE produk
SET produk.stok_produk = produk.stok_produk - NEW.jumlah_produk
WHERE produk.id_produk = NEW.id_produk;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bahan`
--
ALTER TABLE `bahan`
  ADD PRIMARY KEY (`id_bahan`);

--
-- Indexes for table `kebutuhan_bahan`
--
ALTER TABLE `kebutuhan_bahan`
  ADD PRIMARY KEY (`id_kebutuhan_bahan`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pengrajin`
--
ALTER TABLE `pengrajin`
  ADD PRIMARY KEY (`id_pengrajin`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `produksi`
--
ALTER TABLE `produksi`
  ADD PRIMARY KEY (`id_produksi`);

--
-- Indexes for table `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  ADD PRIMARY KEY (`id_transaksi_penjualan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bahan`
--
ALTER TABLE `bahan`
  MODIFY `id_bahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kebutuhan_bahan`
--
ALTER TABLE `kebutuhan_bahan`
  MODIFY `id_kebutuhan_bahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pengrajin`
--
ALTER TABLE `pengrajin`
  MODIFY `id_pengrajin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `produksi`
--
ALTER TABLE `produksi`
  MODIFY `id_produksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  MODIFY `id_transaksi_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
