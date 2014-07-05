-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 05, 2012 at 01:34 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `koperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `no_anggota` varchar(6) NOT NULL,
  `image` blob NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tempat_lahir` varchar(10) NOT NULL,
  `produk` varchar(20) NOT NULL,
  `Kontak` varchar(14) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `no_anggota` (`no_anggota`,`produk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `no_anggota`, `image`, `nama`, `alamat`, `tgl_lahir`, `tempat_lahir`, `produk`, `Kontak`) VALUES
(2, '212', '', 'Mabrur Roh Bintang J', 'sewon RT 04 , timbulharjo , Sewon ,Bantul', '1992-05-24', 'Karanganya', 'Tempe Gurih', '0856729353517'),
(3, '1234', '', 'M. Aprilian Fadholi', 'Yogyakarta', '1992-04-01', 'Boyolali', 'Keripik Kentang', '081081081081'),
(4, '12345', '', 'Tami Arifti W', 'Yogyakarta', '0000-00-00', 'tmpl', 'Kopi Joz', '03893993939393'),
(5, '2132', '', 'Ahmad Nur Kholik', 'Yogyakarta', '0000-00-00', 'tmpl', 'Kecap', '8484848484848'),
(6, '234566', '', 'Adhimatul ilmiyah', 'Yogyakarta', '0000-00-00', 'tmpl', 'Tahu Goreng', '0009999999');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
