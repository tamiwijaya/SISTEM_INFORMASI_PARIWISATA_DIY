-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 18, 2012 at 02:28 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pendaftaran`
--

-- --------------------------------------------------------

--
-- Table structure for table `formulir`
--

CREATE TABLE IF NOT EXISTS `formulir` (
  `Nama_lengkap` varchar(100) NOT NULL,
  `Nama_panggilan` varchar(50) NOT NULL,
  `angkatan` int(4) NOT NULL,
  `Tempat_lahir` varchar(50) NOT NULL,
  `Tanggal_lahir` date NOT NULL,
  `Alamat_rumah` varchar(100) NOT NULL,
  `Kode_pos_rumah` int(20) NOT NULL,
  `Provinsi` varchar(50) NOT NULL,
  `Negara` varchar(50) NOT NULL,
  `Telepon_rumah` int(20) NOT NULL,
  `Kantor` varchar(50) NOT NULL,
  `Industri` varchar(50) NOT NULL,
  `Jabatan` varchar(100) NOT NULL,
  `Alamat_kantor` varchar(50) NOT NULL,
  `Kode_pos_kantor` int(12) NOT NULL,
  `Provinsi_kantor` varchar(50) NOT NULL,
  `Negara_kantor` varchar(50) NOT NULL,
  `Telepon_kantor` int(15) NOT NULL,
  `Fax_kantor` int(15) NOT NULL,
  `Web_kantor` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `No_hp` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formulir`
--

INSERT INTO `formulir` (`Nama_lengkap`, `Nama_panggilan`, `angkatan`, `Tempat_lahir`, `Tanggal_lahir`, `Alamat_rumah`, `Kode_pos_rumah`, `Provinsi`, `Negara`, `Telepon_rumah`, `Kantor`, `Industri`, `Jabatan`, `Alamat_kantor`, `Kode_pos_kantor`, `Provinsi_kantor`, `Negara_kantor`, `Telepon_kantor`, `Fax_kantor`, `Web_kantor`, `Email`, `No_hp`) VALUES
('Tami Wijaya', 'Tami', 22, 'Lubuklinggau', '0000-00-00', '''jogja', 0, '5', 'Indonesia', 2147483647, 'Tami Wijaya Production', '16', 'Direktur', 'bandung', 1434, '9', 'Indonesia', 23098, 24678, 'www.tam2.com', 'tamiwijaya@gmail.com', 2147483647);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
