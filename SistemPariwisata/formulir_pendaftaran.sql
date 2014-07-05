-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 18, 2012 at 06:47 PM
-- Server version: 5.0.95
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `alumniti_pendaftaran`
--

-- --------------------------------------------------------

--
-- Table structure for table `formulir_pendaftaran`
--

CREATE TABLE IF NOT EXISTS `formulir_pendaftaran` (
  `Nama_lengkap` varchar(50) NOT NULL,
  `Nama_panggilan` varchar(15) NOT NULL,
  `angkatan` varchar(4) NOT NULL,
  `Tempat_lahir` varchar(30) NOT NULL,
  `Alamat_rumah` varchar(50) NOT NULL,
  `Kode_pos_rumah` varchar(15) default NULL,
  `Provinsi` varchar(30) NOT NULL,
  `Negara` varchar(25) NOT NULL,
  `Telepon_rumah` int(20) NOT NULL,
  `Kantor` varchar(35) NOT NULL,
  `Industri` varchar(25) NOT NULL,
  `Jabatan` varchar(20) NOT NULL,
  `Alamat_kantor` varchar(20) NOT NULL,
  `Kode_pos_kantor` varchar(15) default NULL,
  `Provinsi_kantor` varchar(30) NOT NULL,
  `Negara_kantor` varchar(20) NOT NULL,
  `Telepon_kantor` int(15) NOT NULL,
  `Fax_kantor` int(15) default NULL,
  `Web_kantor` varchar(30) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `No_hp` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formulir_pendaftaran`
--

INSERT INTO `formulir_pendaftaran` (`Nama_lengkap`, `Nama_panggilan`, `angkatan`, `Tempat_lahir`, `Alamat_rumah`, `Kode_pos_rumah`, `Provinsi`, `Negara`, `Telepon_rumah`, `Kantor`, `Industri`, `Jabatan`, `Alamat_kantor`, `Kode_pos_kantor`, `Provinsi_kantor`, `Negara_kantor`, `Telepon_kantor`, `Fax_kantor`, `Web_kantor`, `Email`, `No_hp`) VALUES
('', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 0, '', '', 0),
('', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 0, '', '', 0),
('', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 0, '', '', 0),
('', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 0, '', '', 0),
('', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 0, '', '', 0),
('', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 0, '', '', 0),
('', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 0, '', '', 0),
('', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 0, '', '', 0),
('', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 0, '', '', 0),
('', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 0, '', '', 0),
('', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 0, '', '', 0),
('', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 0, '', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
