-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2024 at 07:06 AM
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
-- Database: `newci2`
--

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `idKec` int(11) NOT NULL,
  `namaKec` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`idKec`, `namaKec`) VALUES
(1, 'Andir\r'),
(2, 'Astana Anyar\r'),
(3, 'Antapani\r'),
(4, 'Arcamanik\r'),
(5, 'Babakan Ciparay\r'),
(6, 'Bandung Kidul\r'),
(7, 'Bandung Kulon\r'),
(8, 'Bandung Wetan\r'),
(9, 'Batununggal\r'),
(10, 'Bojongloa Kaler\r'),
(11, 'Bojongloa Kidul\r'),
(12, 'Buahbatu\r'),
(13, 'Cibeunying Kaler\r'),
(14, 'Cibeunying Kidul\r'),
(15, 'Cibiru\r'),
(16, 'Cicendo\r'),
(17, 'Cidadap\r'),
(18, 'Cinambo\r'),
(19, 'Coblong\r'),
(20, 'Gedebage\r'),
(21, 'Kiaracondong\r'),
(22, 'Lengkong\r'),
(23, 'Mandalajati\r'),
(24, 'Panyileukan\r'),
(25, 'Rancasari\r'),
(26, 'Regol\r'),
(27, 'Sukajadi\r'),
(28, 'Sukasari\r'),
(29, 'Sumur Bandung\r'),
(30, 'Ujung Berung\r');

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `idKel` int(11) NOT NULL,
  `namaKel` varchar(100) DEFAULT NULL,
  `idKec` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`idKel`, `namaKel`, `idKec`) VALUES
(1, 'Ancol', 26),
(2, 'Antapani Kidul', 3),
(3, 'Antapani Kulon', 3),
(4, 'Antapani Tengah', 3),
(5, 'Antapani Wetan', 3),
(6, 'Arjuna', 16),
(7, 'Babakan', 5),
(8, 'Babakan Asih', 10),
(9, 'Babakan Penghulu', 18),
(10, 'Babakan Tarogong', 10),
(11, 'Babakanciamis', 29),
(12, 'Babakanciparay', 5),
(13, 'Babakansari', 21),
(14, 'Babakansurabaya', 21),
(15, 'Balonggede', 26),
(16, 'Batununggal', 6),
(17, 'Binong', 9),
(18, 'Braga', 29),
(19, 'Burangrang', 22),
(20, 'Campaka', 1),
(21, 'Caringin', 7),
(22, 'Ciateul', 26),
(23, 'Cibadak', 2),
(24, 'Cibaduyut', 11),
(25, 'Cibaduyut Kidul', 11),
(26, 'Cibaduyut Wetan', 11),
(27, 'Cibangkong', 9),
(28, 'Cibuntu', 7),
(29, 'Cicadas', 14),
(30, 'Cigadung', 13),
(31, 'Cigending', 30),
(32, 'Cigereleng', 26),
(33, 'Cigondewah Kaler', 7),
(34, 'Cigondewah Kidul', 7),
(35, 'Cigondewah Rahayu', 7),
(36, 'Cihapit', 8),
(37, 'Cihaurgeulis', 13),
(38, 'Cijagra', 22),
(39, 'Cijawura', 12),
(40, 'Cijerah', 7),
(41, 'Cikawao', 22),
(42, 'Cikutra', 14),
(43, 'Cimincrang', 20),
(44, 'Cipadung', 15),
(45, 'Cipaganti', 19),
(46, 'Cipamokolan', 25),
(47, 'Cipandung Kidul', 24),
(48, 'Cipandung Kulon', 24),
(49, 'Cipandung Wetan', 24),
(50, 'Cipedes', 27),
(51, 'Cirangrang', 5),
(52, 'Ciroyom', 1),
(53, 'Cisaranten Bina Harapan', 4),
(54, 'Cisaranten Endah', 4),
(55, 'Cisaranten Kidul', 20),
(56, 'Cisaranten Kulon', 4),
(57, 'Cisaranten Wetan', 18),
(58, 'Ciseureuh', 26),
(59, 'Cisurupan', 15),
(60, 'Citarum', 8),
(61, 'Ciumbuleuit', 17),
(62, 'Dago', 19),
(63, 'Darwati', 25),
(64, 'Dunguscariang', 1),
(65, 'Garuda', 1),
(66, 'Gegerkalong', 28),
(67, 'Gempolsari', 7),
(68, 'Gumuruh', 9),
(69, 'Hegarmanah', 17),
(70, 'Husen Sastranegara', 16),
(71, 'Isola', 28),
(72, 'Jamika', 10),
(73, 'Jatihandap', 23),
(74, 'Jatisari', 12),
(75, 'Kacapiring', 9),
(76, 'Karanganyar', 2),
(77, 'Karangpamulang', 23),
(78, 'Karasak', 2),
(79, 'Kebon Lega', 11),
(80, 'Kebongedang', 9),
(81, 'Kebonjeruk', 1),
(82, 'Kebonkangkung', 21),
(83, 'Kebonpisang', 29),
(84, 'Kebonwaru', 9),
(85, 'Kebunjayanti', 21),
(86, 'Kopo', 10),
(87, 'Kujangsari', 6),
(88, 'Lebakgede', 19),
(89, 'Lebaksiliwangi', 19),
(90, 'Ledeng', 17),
(91, 'Lingkar Selatan', 22),
(92, 'Malabar', 22),
(93, 'Maleber', 1),
(94, 'Maleer', 9),
(95, 'Manjahlega', 25),
(96, 'Margahayu Utara', 5),
(97, 'Margasari', 12),
(98, 'Margasuka', 5),
(99, 'Mekar Jaya', 25),
(100, 'Mekarmulya', 24),
(101, 'Mekarwangi', 11),
(102, 'Mengger', 6),
(103, 'Merdeka', 29),
(104, 'Neglasari', 13),
(105, 'Nyengseret', 2),
(106, 'Padasuka', 14),
(107, 'Pajajaran', 16),
(108, 'Pakemitan', 18),
(109, 'Palasari', 15),
(110, 'Paledang', 22),
(111, 'Pamoyanan', 16),
(112, 'Panjunan', 2),
(113, 'Pasanggrahan', 30),
(114, 'Pasir Impun', 23),
(115, 'Pasirbiru', 15),
(116, 'Pasirendah', 30),
(117, 'Pasirjati', 30),
(118, 'Pasirkaliki', 16),
(119, 'Pasirlayung', 14),
(120, 'Pasirluyu', 26),
(121, 'Pasirwangi', 30),
(122, 'Pasteur', 27),
(123, 'Pelindunghewan', 2),
(124, 'Pungkur', 26),
(125, 'Rancabolang', 20),
(126, 'Rancanumpang', 20),
(127, 'Sadangserang', 19),
(128, 'Samoja', 9),
(129, 'Sarijadi', 28),
(130, 'Sekejati', 12),
(131, 'Sekeloa', 19),
(132, 'Sindangjaya', 23),
(133, 'Situsaeur', 11),
(134, 'Suka Asih', 10),
(135, 'Sukabungah', 27),
(136, 'Sukagalih', 27),
(137, 'Sukahaji', 5),
(138, 'Sukaluyu', 13),
(139, 'Sukamaju', 14),
(140, 'Sukamiskin', 4),
(141, 'Sukamulya', 18),
(142, 'Sukapada', 14),
(143, 'Sukapura', 21),
(144, 'Sukaraja', 16),
(145, 'Sukarasa', 28),
(146, 'Sukawarna', 27),
(147, 'Tamansari', 8),
(148, 'Turangga', 22),
(149, 'Warungmuncang', 7),
(150, 'Wates', 6);

-- --------------------------------------------------------

--
-- Table structure for table `mesincuci`
--

CREATE TABLE `mesincuci` (
  `idM` int(11) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `tarif` decimal(10,2) DEFAULT NULL,
  `merek` varchar(50) DEFAULT NULL,
  `kapasitas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mesincuci`
--

INSERT INTO `mesincuci` (`idM`, `nama`, `status`, `tarif`, `merek`, `kapasitas`) VALUES
(1, 'LG Turbo', 'Tersedia', 15000.00, 'LG', 7),
(2, 'Philips P', 'Tersedia', 17500.00, 'Philips', 8),
(3, 'Samsung E', 'Tersedia', 18000.00, 'Samsung', 8),
(5, 'Polytron P', 'Tersedia', 15000.00, 'Polytron', 7),
(6, 'Razer C', 'Tersedia', 17500.00, 'Razer', 9),
(7, 'Rexus S', 'Tersedia', 14500.00, 'Rexus', 6),
(25, 'Sharp J', 'Digunakan', 15000.00, 'Sharp', 10);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `idP` int(11) NOT NULL,
  `namaP` varchar(255) DEFAULT NULL,
  `noHP` varchar(12) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `idKel` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`idP`, `namaP`, `noHP`, `alamat`, `idKel`, `email`, `password`, `jabatan`) VALUES
(1, 'Dadan', '081234567891', 'Jl. Setiabudi No. 1', 1, 'gmail@gmail.com', 'password', 'Pemilik'),
(2, 'Rina', '081234567892', 'Jl. Dago No. 2', 2, 'gmail@gmail.com', 'password', 'Pegawai'),
(3, 'Ahmad', '081234567893', 'Jl. Ciumbuleuit No. 3', 3, 'gmail@gmail.com', 'password', 'Pegawai'),
(4, 'Siti', '081234567894', 'Jl. Pasteur No. 4', 4, 'gmail@gmail.com', 'password', 'Pegawai'),
(5, 'Euis', '081234567895', 'Jl. Sukajadi No. 5', 5, NULL, NULL, NULL),
(7, 'Leo', '081234567892', 'Jl. Dago No. 2', 7, NULL, NULL, NULL),
(11, 'Tito', '08123456789', 'JL. Ciumbuleuit no 31', 144, NULL, NULL, NULL),
(12, 'Mika', '0987634233', 'JL. Ciumbuleuit no 36', 18, NULL, NULL, NULL),
(13, 'Burhan', '0983432355', 'Jln Sukajadi no 87', 17, NULL, NULL, NULL),
(14, 'Malika', '565364643', 'Jl Kelenteng no 53', 5, NULL, NULL, NULL),
(15, 'Dito', '093849242', 'JL. CIcendo no 90', 17, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `idTransaksi` int(11) NOT NULL,
  `tglmulai` datetime DEFAULT NULL,
  `tglselesai` datetime DEFAULT NULL,
  `durasi` int(11) DEFAULT NULL,
  `statusPembayaran` varchar(30) DEFAULT 'Belum Lunas',
  `biaya` decimal(10,2) DEFAULT NULL,
  `idP` int(11) DEFAULT NULL,
  `idM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`idTransaksi`, `tglmulai`, `tglselesai`, `durasi`, `statusPembayaran`, `biaya`, `idP`, `idM`) VALUES
(43, '2024-06-10 19:33:44', '2024-06-10 19:50:07', 2, 'Lunas', 35000.00, 5, 2),
(44, '2024-06-10 19:43:21', '2024-06-10 19:43:38', 1, 'Lunas', 18000.00, 11, 3),
(47, '2024-06-10 19:52:51', '2024-06-10 20:03:45', 1, 'Belum Lunas', 15000.00, 13, 1),
(48, '2024-06-10 19:53:03', '2024-06-10 20:30:05', 3, 'Belum Lunas', 45000.00, 14, 5),
(49, '2024-06-10 19:54:31', '2024-06-11 07:14:54', 46, 'Lunas', 805000.00, 12, 6),
(50, '2024-06-10 20:05:05', '2024-06-10 20:05:13', 1, 'Lunas', 15000.00, 15, 25),
(52, '2024-06-13 11:28:58', '2024-06-13 11:29:32', 1, 'Lunas', 15000.00, 15, 25),
(53, '2024-06-13 11:34:05', '2024-06-13 11:34:30', 1, 'Lunas', 15000.00, 15, 25),
(54, '2024-06-13 11:34:17', '2024-06-13 11:34:24', 1, 'Belum Lunas', 14500.00, 15, 7),
(55, '2024-06-13 11:35:25', '2024-06-13 11:35:33', 1, 'Lunas', 15000.00, 15, 25),
(56, '2024-06-13 12:06:35', NULL, NULL, 'Belum Lunas', NULL, 7, 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`idKec`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`idKel`),
  ADD KEY `idKec` (`idKec`);

--
-- Indexes for table `mesincuci`
--
ALTER TABLE `mesincuci`
  ADD PRIMARY KEY (`idM`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`idP`),
  ADD KEY `pengguna_ibfk_1` (`idKel`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idTransaksi`),
  ADD KEY `idP` (`idP`),
  ADD KEY `idM` (`idM`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mesincuci`
--
ALTER TABLE `mesincuci`
  MODIFY `idM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `idP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `idTransaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD CONSTRAINT `kelurahan_ibfk_1` FOREIGN KEY (`idKec`) REFERENCES `kecamatan` (`idKec`);

--
-- Constraints for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `pengguna_ibfk_1` FOREIGN KEY (`idKel`) REFERENCES `kelurahan` (`idKel`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`idP`) REFERENCES `pengguna` (`idP`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`idM`) REFERENCES `mesincuci` (`idM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
