-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 06, 2011 at 09:07 PM
-- Server version: 5.1.33
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `nim` varchar(8) NOT NULL,
  `nama_mahasiswa` varchar(35) NOT NULL,
  `alamat_mahasiswa` varchar(30) NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--


-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE IF NOT EXISTS `matkul` (
  `kode_mk` varchar(5) NOT NULL,
  `nim` varchar(8) NOT NULL,
  `nama_mk` varchar(12) NOT NULL,
  `nilai` int(100) NOT NULL,
  `dosen` varchar(20) NOT NULL,
  PRIMARY KEY (`kode_mk`,`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`kode_mk`, `nim`, `nama_mk`, `nilai`, `dosen`) VALUES
('01', '08651001', 'TIK', 99, ''),
('01', '08651002', 'TIK', 80, 'Sumarsono'),
('01', '08651003', 'TIK', 70, 'Sumarsono'),
('02', '08651002', 'Basis data', 75, 'Didik'),
('02', '08651008', 'Basis data', 80, 'Didik');
