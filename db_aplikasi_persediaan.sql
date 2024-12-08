-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2024 at 05:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_aplikasi_persediaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `Kodebarang` varchar(50) NOT NULL,
  `Nama` varchar(250) DEFAULT NULL,
  `Hargabeli` int(11) NOT NULL,
  `HargaJual` int(11) NOT NULL,
  `Stok` int(11) NOT NULL,
  `Satuan` varchar(50) DEFAULT NULL,
  `Petugas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`Kodebarang`, `Nama`, `Hargabeli`, `HargaJual`, `Stok`, `Satuan`, `Petugas`) VALUES
('BRG001', 'BISKUAT', 1000, 1500, 10, 'PLASTIK', 'Aidil ferryansyah'),
('BRG0010', 'PILLOWS RASA COKLAT', 12000, 12500, 10, 'KARDUS', 'Aidil Ferryansyah'),
('BRG002', 'NABATI RASA COKLAT', 2000, 2500, 10, 'KARDUS', 'Aidil ferryansyah'),
('BRG003', 'NEXTAR', 2000, 2500, 10, 'KARTON', 'Aidil Ferryansyah'),
('BRG004', 'BENG BENG', 2000, 2000, 10, 'KARTON', 'Aidil Ferryansyah'),
('BRG005', 'CHOCOLATOS', 1000, 1000, 10, 'KARTON', 'Aidil Ferryansyah'),
('BRG006', 'MIE INDOMIE', 2500, 3500, 10, 'KARDUS', 'Aidil Ferryansyah'),
('BRG007', 'POPMIE BESAR RASA AYAM BAWANG', 6000, 7000, 10, 'KARDUS', 'Aidil Ferryansyah'),
('BRG008', 'MOMOGI RASA JAGUNG', 500, 500, 10, 'KARTON', 'Aidil Ferryansyah'),
('BRG009', 'SPONGE RASA COKLAT 100 GRAM', 13000, 13500, 10, 'KARDUS', 'Aidil Ferryansyah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barangkeluar`
--

CREATE TABLE `tb_barangkeluar` (
  `id` int(11) NOT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `KodePelanggan` varchar(50) DEFAULT NULL,
  `KodeBarang` varchar(50) DEFAULT NULL,
  `Nama` varchar(250) DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL,
  `Satuan` varchar(50) DEFAULT NULL,
  `Petugas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_barangmasuk`
--

CREATE TABLE `tb_barangmasuk` (
  `id` int(11) NOT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `KodeSupplier` varchar(50) DEFAULT NULL,
  `KodeBarang` varchar(50) DEFAULT NULL,
  `Nama` varchar(250) DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL,
  `Satuan` varchar(50) DEFAULT NULL,
  `Petugas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `KodePelanggan` varchar(50) NOT NULL,
  `Nama` varchar(250) DEFAULT NULL,
  `Alamat` varchar(250) DEFAULT NULL,
  `Telp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`KodePelanggan`, `Nama`, `Alamat`, `Telp`) VALUES
('PLG001', 'MUHAMMAD DEVA PUTRA HARIANTO', 'DUSUN KRAJAN ', '0881036732235'),
('PLG0010', 'Adhitama', 'PRONOJIWO', '5204578527867'),
('PLG002', 'MUHAMMAD SILMI KAFFAH', 'TAWANGASRI', '0821-2383-1873'),
('PLG003', 'MUHAMMAD SEVA HARIANTO', 'SIMOJAYAN', '0821-4276-3229'),
('PLG004', 'CARELO MARLISTO', 'ARGOYONO', '853-2024-9837'),
('PLG005', 'MUHAMMAD DWIKY REZA', 'SIMOJAYAN', '0822-4567-1626'),
('PLG006', 'DARUL ASMAWAN', 'TAWANGAGUNG', '0812-3224-7334'),
('PLG007', 'NITA TRIYA ELSABELT', 'PERTANIAN', '0881-1830-427'),
('PLG008', 'RIYAN DWI MULYO', 'MULYOASARI', '082131051944'),
('PLG009', 'MUHAMMAD LUTFI AMIN', 'TAWANGAGUNG', '5204578527867');

-- --------------------------------------------------------

--
-- Table structure for table `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `KodePetugas` varchar(50) NOT NULL,
  `Nama` varchar(250) NOT NULL,
  `Jabatan` varchar(250) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_petugas`
--

INSERT INTO `tb_petugas` (`KodePetugas`, `Nama`, `Jabatan`, `Password`) VALUES
('PTG001', 'AIDIL FERRYANSYAH', 'MANAGER', 'DHIEL01'),
('PTG0010', 'CIKA LARAS WATI', 'KARYAWAN', 'CIKKA78'),
('PTG002', 'AURELYO PUTRA DEVA HARIANTO', 'MANAGER', 'DEVA02'),
('PTG003', 'MUHAMMAD SEVA HARIANTO', 'KEAMANAN', 'SEV123'),
('PTG004', 'MUHAMMAD SILMI KAFFAH', 'KEAMANAN', 'KAFFA22'),
('PTG005', 'CARELO MARLISTO', 'KARYAWAN', 'RELO55'),
('PTG006', 'NITA TRIYA ELSABELT', 'KARYAWAN', 'NIT234'),
('PTG007', 'ADHIT', 'KARYAWAN', 'DHIT44'),
('PTG008', 'MUHAMMAD LUTFI AMIN', 'KARYAWAN ', 'LUT244'),
('PTG009', 'RIYAN DWI MULYO', 'KARYAWAN ', 'RIAN9999');

-- --------------------------------------------------------

--
-- Table structure for table `tb_suppliee`
--

CREATE TABLE `tb_suppliee` (
  `KodeSupplier` varchar(50) NOT NULL,
  `Nama` varchar(250) DEFAULT NULL,
  `Alamat` varchar(250) DEFAULT NULL,
  `Telp` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_suppliee`
--

INSERT INTO `tb_suppliee` (`KodeSupplier`, `Nama`, `Alamat`, `Telp`) VALUES
('SPL001', 'MUHAMMAD LUTFI AMIN\r\n', 'TAWANGAGUNG', '5204578527867'),
('SPL0010', 'RIYAN DWI MULYO\r\n', 'MULYOASARI', '082131051944'),
('SPL002', 'MUHAMMAD DEVA PUTRA HARIANTO\r\n', 'DUSUN KRAJAN \r\n', '0881036732235'),
('SPL003', 'Adhitama\r\n', 'PRONOJIWO', '5204578527867'),
('SPL004', 'MUHAMMAD SILMI KAFFAH\r\n', 'ARGOYONO', '853-2024-9837'),
('SPL005', 'MUHAMMAD SEVA HARIANTO\r\n', 'SIMOJAYAN', '0821-4276-3229'),
('SPL006', 'CARELO MARLISTO\r\n', 'SIMOJAYAN', '0812-3224-7334'),
('SPL007', 'MUHAMMAD DWIKY REZA\r\n\r\n', 'SIMOJAYAN', '0822-4567-1626'),
('SPL008', 'DARUL ASMAWAN\r\n\r\n\r\n', 'TAWANGAGUNG', '082131051944'),
('SPL009', 'NITA TRIYA ELSABELT\r\n\r\n', 'PERTANIAN', '5204578527867');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`Kodebarang`);

--
-- Indexes for table `tb_barangkeluar`
--
ALTER TABLE `tb_barangkeluar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `KodePelanggan` (`KodePelanggan`,`KodeBarang`);

--
-- Indexes for table `tb_barangmasuk`
--
ALTER TABLE `tb_barangmasuk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `KodeSupplier` (`KodeSupplier`,`KodeBarang`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`KodePelanggan`);

--
-- Indexes for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`KodePetugas`);

--
-- Indexes for table `tb_suppliee`
--
ALTER TABLE `tb_suppliee`
  ADD PRIMARY KEY (`KodeSupplier`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
