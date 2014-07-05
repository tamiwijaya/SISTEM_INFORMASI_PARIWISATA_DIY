-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 29, 2012 at 08:37 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pariwisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'tami', 'tami'),
(3, 'tami', 'tami'),
(4, 'tami', 'tami');

-- --------------------------------------------------------

--
-- Table structure for table `bus_pariwisata`
--

CREATE TABLE IF NOT EXISTS `bus_pariwisata` (
  `id_agenbus` varchar(4) NOT NULL,
  `nama_agenbus` varchar(40) NOT NULL,
  `alamat_agenbus` varchar(40) NOT NULL,
  `tlp_agenbus` varchar(16) NOT NULL,
  `id_transport` varchar(4) NOT NULL,
  PRIMARY KEY (`id_agenbus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_pariwisata`
--

INSERT INTO `bus_pariwisata` (`id_agenbus`, `nama_agenbus`, `alamat_agenbus`, `tlp_agenbus`, `id_transport`) VALUES
('P01', 'Safari Dharma Raya ', 'Jl. Mangkubumi 70 ', '0274-581880', 'T03'),
('P02', 'Rosalia', 'Jl. Raya Solo - Sragen Km. 7,5 Palur, Ja', ' 0271 - 825173', 'T03'),
('P03', 'GeGe Transport', 'Jl. Ketandan Tengah 186 Imogiri Bantul Y', '081328444345', 'T03'),
('P04', 'ALAM PERSADA', 'Hotel LPP GARDEN Yogyakarta 55281, Indon', '(0274) 837 2227', 'T03'),
('P05', 'BEPE TOUR', 'Jl. Laksda Adisucipto 156, Yogyakarta 55', '(0274) 487 058, ', 'T03'),
('P06', 'BLUE EARTH', ' Jl. Ronodikdayan 20, Bausasran, Yogyaka', '(0274) 663 5773,', 'T03'),
('P07', 'DIAN WISATA', 'Jl. Sukoharjo 3E Condongcatur, Yogyakart', '(0274) 889 429', 'T03'),
('P08', 'GRAND JAVA', ' Jl. Veteran 59 Yogyakarta, Indonesia', ' (0274) 380 626', 'T03'),
('P09', 'JAVAINDO TOURS', 'Brontokusuman MG III/349 Yogyakarta, Ind', '(0274) 667 7111', 'T03'),
('P10', 'PACTO', 'Jl. Laksda Adisucipto km 9 No. 13 Yogyak', '(0274) 484 674', 'T03');

-- --------------------------------------------------------

--
-- Table structure for table `daerah`
--

CREATE TABLE IF NOT EXISTS `daerah` (
  `id_daerah` varchar(3) NOT NULL,
  `daerah` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daerah`
--

INSERT INTO `daerah` (`id_daerah`, `daerah`) VALUES
('D01', 'Kota Yogyakarta'),
('D02', 'Kabupaten Bantul'),
('D03', 'Kabupaten Sleman'),
('D04', 'Kabupaten Gunungkidul'),
('D05', 'Kabupaten Kulon Progo');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_event_acara`
--

CREATE TABLE IF NOT EXISTS `daftar_event_acara` (
  `id_acara` varchar(4) NOT NULL,
  `nama_acara` varchar(50) NOT NULL,
  `tanggal_acara` varchar(100) DEFAULT NULL,
  `lokasi` text NOT NULL,
  `waktu_acara` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `id_event` varchar(4) NOT NULL,
  PRIMARY KEY (`id_acara`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_event_acara`
--

INSERT INTO `daftar_event_acara` (`id_acara`, `nama_acara`, `tanggal_acara`, `lokasi`, `waktu_acara`, `deskripsi`, `id_event`) VALUES
('IA1', 'NATIONAL IT EXPO (NIX) 2012', '5, 6, 7, 8, 9 Mei 2012', 'Grand Bima Hall\r\nJOGJA EXPO CENTER (JEC)\r\nJl. Raya Janti, Yogyakarta', '10.00 - 21.00 WIB', 'NIX 2012 merupakan pameran komputer tahunan yang diadakan oleh APKOMINDO dan marathon di beberapa kota. Selain pameran, juga akan ada berbagai acara pendukung.', 'IE3'),
('IA10', 'SENDRATARI RAMAYANA BALLET - PRAMBANAN', '1, 3, 4, 5, 6, 7, 8, 10, 12, 15, 17, 19, 22, 24, 26, 29, 31 Mei 2012', 'Outdoor Theater / Panggung Terbuka\r\nTaman Wisata CANDI PRAMBANAN\r\nJalan Raya Yogya - Solo km 16 Prambanan, Yogyakarta, Indonesia\r\n      ', ' 19.30 - 21.30 WIB', 'Sendratari Ramayana dipentaskan di tempat \nkisah itu dipahat seribu tahun silam: Candi \nPrambanan. Pertunjukan ini mampu \nmenyatukan ragam kesenian Jawa berupa \ntari, drama dan musik dalam satu panggung \ndan satu momentum untuk menyuguhkan \nkisah Ramayana yang dirangkum dalam \n4 babak: penculikan Sinta, misi Anoman ke \nAlengka, kematian Kumbakarna atau \nRahwana, dan pertemuan kembali \nRama-Sinta.\r\n      \r\n', 'IE4'),
('IA11', 'PAGELARAN WAYANG KULIT DENGAN LAKON RAMAYANA', 'null', 'MUSEUM SONOBUDOYO\r\nJl. Trikora 6 Yogyakarta, Indonesia\r\n     \r\n      \r\n\r\n ', 'Setiap malam, 20.00 - 22.00 WIB	', ' Wayang kulit adalah mahakarya seni \npertunjukan Jawa yang telah mendapat \npengakuan dari UNESCO. Seorang dalang \nmemainkan wayang yang terbuat dari kulit \nkerbau di balik layar yang terbuat dari kain \nputih, sehingga para penonton hanya dapat \nmelihat bayangannya saja. Itulah sebabnya \npertunjukan ini dinamakan wayang, yang \nberasal dari kata "bayang". Daya tarik \npertunjukan wayang kulit terletak pada \nkelincahan ki dalang memainkan berbagai \ntokoh wayang sekaligus dengan gerakan \nyang atraktif, mengubah karakter suara,\n berganti intonasi, melontarkan guyonan dan \nbahkan bernyanyi.', 'IE4'),
('IA12', 'PAGELARAN WAYANG ORANG', NULL, 'KRATON YOGYAKARTA, Jl. Rotowijayan 1 Yogyakarta, Indonesia\r\n     ', 'Setiap hari Minggu,  11.00 - 12.00 WIB', ' Wayang orang adalah seni teater tradisional Jawa yang memadukan unsur drama, tari, dan musik. Aktor dalam pertunjukan ini berdandan menyerupai tokoh wayang kulit yang diperankannya. Cerita dalam pertunjukan wayang orang selalu mengambil tema dari kisah Mahabharata atau Ramayana.', 'IE4'),
('IA13', 'PAGELARAN KETOPRAK', 'null', ' Auditorium RRI\r\nJl. Affandi / Jl. Gejayan, Yogyakarta, Indonesia\r\n    \r\n\r\n\r\n  ', 'Setiap Minggu awal bulan, 20.00 - 24.00 WIB', '  Ketoprak adalah seni teater tradisional Jawa. Mirip dengan Wayang Orang, ketoprak menyajikan sandiwara yang diselingi dengan lagu-lagu Jawa dan musik gamelan. Perbedaannya, pertunjukan Ketoprak tidak mengambil tema cerita dari kisah Mahabharata atau Ramayana melainkan dari legenda ataupun cerita bebas lainnya.\r\n      ', 'IE6'),
('IA14', 'PAGELARAN KARAWITAN', NULL, 'KRATON YOGYAKARTA\r\nJl. Rotowijayan 1 Yogyakarta, Indonesia\r\n     ', 'Setiap Senin dan Selasa, 10.00 - 12.00 WIB', ' Pertunjukan gabungan dari alunan musik gamelan dan menyanyi. Karawitan berasal dari bahasa Sansekerta "rawit" yang berarti halus. Menyaksikan pertunjukkan ini dapat diibaratkan menghirup nilai - nilai ideal musik Jawa tepat di tempatnya, Keraton Yogyakarta.\r\n    ', 'IE6'),
('IA15', ' PAGELARAN WAYANG GOLEK', NULL, 'KRATON YOGYAKARTA\r\nJl. Rotowijayan 1 Yogyakarta, Indonesia\r\n      \r\n      \r\n\r\n\r\n  ', 'Setiap Rabu, 10.00 - 12.00 WIB', 'Wayang Golek adalah suatu seni pertunjukan wayang yang terbuat dari boneka kayu, yang terutama sangat populer di Jawa Barat.', 'IE6'),
('IA16', 'PAGELARAN GAMELAN DAN SENDRATARI KLASIK', NULL, 'KRATON YOGYAKARTA\r\nJl. Rotowijayan 1 Yogyakarta, Indonesia\r\n     ', 'Setiap Kamis, 10.00 - 12.00 WIB', 'Menyaksikan falsafah hidup orang Jawa melalui musik. Itulah yang akan didapatkan ketika menyaksikan pertunjukkan gamelan ditempat ini. Mendengarkan irama gamelan seperti mendengarkan alunan keselarasan yang menenangkan dan menentramkan jiwa.\r\n      ', 'IE6'),
('IA17', 'PAGELARAN SENI MACAPAT', NULL, 'KRATON YOGYAKARTA\r\nJl. Rotowijayan 1 Yogyakarta, Indonesia\r\n     \r\n    \r\n\r\n', ' Setiap Jumat, 10.00 - 11.30 WIB', ' Pementasan puisi Jawa yang diiringi oleh gamelan. Puisi ini dilantunkan seperti lagu yang memiliki aturan dan bentuk tertentu. Ada tujuh jenis lagu dalam macapat; seperti dhandang gula, sinom, asmarandana, dan kinanthi. Tiap-tiap lagu memiliki jumlah lirik dan bunyi yang disebut guru.', 'IE6'),
('IA18', 'PAGELARAN WAYANG KULIT', NULL, 'KRATON YOGYAKARTA\r\nJl. Rotowijayan 1 Yogyakarta, Indonesia\r\n     ', ' Setiap Sabtu, 10.00 - 13.00 WIB', 'Wayang kulit adalah mahakarya seni pertunjukan Jawa yang telah mendapat pengakuan dari UNESCO. Seorang dalang memainkan wayang yang terbuat dari kulit kerbau di balik layar yang terbuat dari kain putih, sehingga para penonton hanya dapat melihat bayangannya saja. Itulah sebabnya pertunjukan ini dinamakan wayang, yang berasal dari kata "bayang". Daya tarik pertunjukan wayang kulit terletak pada kelincahan ki dalang memainkan berbagai tokoh wayang sekaligus dengan gerakan yang atraktif, mengubah karakter suara, berganti intonasi, melontarkan guyonan dan bahkan bernyanyi.\r\n    \r\n', 'IE6'),
('IA2', 'WAISAK', '6 Mei 2012', '\r\nKompleks CANDI BOROBUDUR, Magelang, Indonesia', 'pukul 08.00 WIB - selesai', 'Prosesi waisak akan berlangsung selama sehari penuh. Pagi pukul 08.00 WIB umat Budha akan melakukan prosesi kirab dengan berjalan kaki dari Candi Mendut menuju Candi Borobudur. Sesampainya di Borobudur akcara akan dilanjutkan dengan puja bakti. Pada malam harinya yang merupakan detik-detik waisak seluruh umat akan berdiam diri untuk meditasi dan dilanjutkan dengan pradaksina mengelilingi candi Borobudur sebanyak 3 kali. Acara akan ditutup dengan pelepasan lampion di Kompleks Candi Borobudur.', 'IE4'),
('IA3', 'JEMPARINGAN', ' 15 Mei 2012', 'Halaman Kemandungan, Kompleks KRATON YOGYAKARTA, Indonesia\r\n     \r\n      \r\n     ', '14.30 WIB - selesai', 'Jemparingan merupakan lomba panahan dengan gaya tradisional. Para pemanah yang mengikuti acara ini wajib mengenakan busana adat Jawa. Saat memanah mereka tidak boleh sambil berdiri melainkan duduk bersila. Acara ini dilangsungkan setiap hari Selasa Wage untuk memperingati Tinggalan Dalem Sri Sultan HB X.\r\n      ', 'IE4'),
('IA4', 'HOT IMPORT NIGHT', '12, 13 Mei 2012', ' Bima Hall C\r\n JOGJA EXPO CENTER (JEC)\r\nJl. Raya Janti, Yogyakarta, Indonesia\r\n      \r\n      \r\n', '10.00 - 21.00 WIB', 'Hot Import Night merupakan pameran otomotif yang diadakan oleh PT HIN Promosindo.', 'IE4'),
('IA5', ' FESTIVAL BEDAH RUMAH', '16, 17, 18, 19, 20 Mei 2012', 'Grand Bima Hall\r\nJOGJA EXPO CENTER (JEC)\r\nJl. Raya Janti, Yogyakarta, Indonesia\r\n     \r\n     \r\n\r\n\r\n', '09.00 - 21.00 WIB', 'Festival Bedah Rumah menampilkan produk-produk temuan terbaru bidang konstruksi, interior dan perumahan yang sangat bermanfaat bagi para konsumen dengan harga terjangkau. Event ini punya keunggulan tersendiri dibanding event sejenis lainnya, yaitu sudah menjadi rujukan bagi masyarakat dan pelaku bisnis building material, interior, perumahan dan jasa arsitek se- Jogja & Jateng.', 'IE3'),
('IA6', ' AMAZING WEDDING & BEAUTY EXPO 2012', ' 16, 17, 18, 19, 20 Mei 2012', 'Grand Bima Hall\r\nJOGJA EXPO CENTER (JEC)\r\nJl. Raya Janti, Yogyakarta, Indonesia\r\n      ', '09.00 - 21.00 WIB', 'Amazing Wedding & Beauty Expo 2012 bertujuan untuk lebih memperkenalkan ragam budaya dan adat istiadat daerah-daerah di Indonesia dalam menyelenggarakan suatu pernikahan, termasuk segala pernak-pernik yang menyertainya. Event ini juga menjadi Tempat bagi mereka yang terlibat dalam penyediaan jasa pernikahan untuk mempromosikan usaha mereka. Berbagai usaha yang terkait diantaranya Tempat atau gedung Tempat resepsi, Tempat Wisata untuk Bulan Madu, Dekorasi, Baju Pengantin, Rias Wajah, Penata Rambut, Fotografi Pernikahan, Undangan, Souvenir, Catering, MC dan hiburan, Buket bunga, Body Treatment dan lain sebagainya mendapatkan kesempatan untuk lebih mengenalkan produk dan jasa yang mereka tawarkan secara langsung kepada konsumen.', 'IE3'),
('IA7', ' SUPERFOOD EXPO', '16, 17, 18, 19, 20 Mei 2012', 'Grand Bima Hall\r\nJOGJA EXPO CENTER (JEC)\r\nJl. Raya Janti, Yogyakarta, Indonesia\r\n     \r\n\r\n\r\n   ', '09.00 - 21.00 WIB', ' Superfood Expo merupakan pameran makanan yang akan dimeriahkan dengan demo produk dan demo memasak yang menghadirkan produk-produk unggulan serta menu masakan inovatif. Selain itu, untuk mengakomodir talenta dalam bidang kuliner digelar pula aneka lomba dengan berbagai hadiah menarik.\r\n      ', 'IE5'),
('IA8', 'JOGJA 3 POINT 3 TITex 2012', '30 Mei 2012, 1, 2, 3 Juni 2012', 'Bima Hall B & C\r\nJOGJA EXPO CENTER (JEC)\r\nJl. Raya Janti, Yogyakarta, Indonesia\r\n      ', '09.00 - 21.00 WIB', 'Jogja 3 Point 3 TITex 2011 (Trade, Investmen, Tourism Expo) diselenggarakan Dinas Pariwisata Provinsi DIY bekerjasama PT Aaliyah Citra Prima. Peserta pameran berasal dari berbagai daerah di Indonesia yang akan memamerkan potensi unggulan pariwisata, perdagangan serta peluang investasi.\r\n      \r\n', 'IE3'),
('IA9', 'PERMAINAN MASANGIN', NULL, 'Alun Alun Kidul (selatan) KRATON YOGYAKARTA, Indonesia\r\n    \r\n\r\n\r\n\r\n  ', ' Setiap malam, 19.00 WIB - sel', ' Cobalah berjalan dengan mata tertutup untuk memasuki ruang di antara dua pohon beringin yang ada di Alun-alun Selatan Keraton Yogyakarta. Bila beruntung maka Anda bisa melewati kedua beringin itu dengan lancar, namun tak jarang orang melenceng jauh sehingga mengundang tawa. Biar lebih seru ajaklah teman Anda untuk melakukan hal yang sama, dan bandingkan hasilnya.\r\n      ', 'IE4');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_hotel`
--

CREATE TABLE IF NOT EXISTS `daftar_hotel` (
  `id_hotel` varchar(4) NOT NULL,
  `nama_hotel` varchar(30) NOT NULL,
  `level_hotel` int(2) NOT NULL,
  `alamat` varchar(70) NOT NULL,
  `fasilitas` text NOT NULL,
  `kebijakan_hotel` text,
  `harga` text,
  `id_penginapan` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_hotel`
--

INSERT INTO `daftar_hotel` (`id_hotel`, `nama_hotel`, `level_hotel`, `alamat`, `fasilitas`, `kebijakan_hotel`, `harga`, `id_penginapan`) VALUES
('H01', 'Melia Purosani Hotel', 5, 'Jl. Suryotomo No 31 Yogyakarta', 'Umum:\r\nRestoran, Bar, Bagian Penerima Tamu 24 Jam, Surat Kabar, Taman, Teras, Kamar Bebas-Rokok, Kamar/Fasilitas untuk Tamu Penyandang Cacat, Lift, Check-In/Check-Out Ekspres, Brankas, Penitipan Bagasi, Toko di Dalam Hotel, AC, Ruangan Khusus Merokok, Restoran (a la carte), Restoran (prasmanan), Bar Makanan Ringan, Teras Berjemur\r\n\r\nKegiatan:\r\nSauna, Pusat Kebugaran , Ruang Permainan, Spa & Pusat Kesehatan, Pemijatan, Taman Bermain Anak, Biliar, Permainan Anak Panah, Hot Tub, Fasilitas BBQ, Kolam Renang Outdoor, Kolam Renang Outdoor (sepanjang tahun)\r\n\r\nLayanan:\r\nLayanan Kamar , Fasilitas Rapat/Perjamuan , Antar-Jemput Bandara , Pusat Bisnis, Layanan Penjagaan Anak, Binatu, Dry Cleaning, Pemangkas Rambut/Salon Kecantikan, Fasilitas Kamar VIP, Sarapan Dalam Kamar , Jasa Penyetrikaan, Penukaran Valuta Asing, Toko Oleh-Oleh , Penyemiran Sepatu, Penyewaan Mobil, Meja Layanan Wisata, Faks/Fotokopi, Layanan Tiket, Fasilitas ATM di-tempat, Layanan Pramutamu, Check-in/-out Pribadi, Layanan Antar-Jemput (berlaku biaya tambahan), Menu Diet Spesial (berdasarkan permintaan), Perapi Celana\r\n\r\nInternet:\r\nInternet kabel tersedia di kamar hotel dengan biaya USD 12 setiap 24 jam.\r\n\r\nParkir:\r\nGratis! Parkir pribadi gratis tersedia di hotel (reservasi tidak diperlukan). ', 'Check-in  : 14:00 - 15:30\r\nCheck-out :12:00 - 13:00\r\n\r\nPembatalan / Pembayaran di muka :\r\nKebijakan pembatalan dan pra-bayar berbeda-beda untuk tiap tipe kamar. Harap masukkan tanggal inap Anda dan periksa ketentuan dari kamar yang Anda butuhkan.\r\n\r\nAnak-anak dan tempat tidur tambahan:\r\nKetentuan berikut berlaku jika jumlah tamu melebihi kapasitas kamar:\r\n\r\nGratis! Semua anak di bawah umur 3 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur yang sudah ada.\r\n\r\nGratis! Satu anak di bawah umur 2 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur bayi.\r\n\r\nSatu anak remaja atau orang dewasa dikenai biaya USD 50 per malam per orang dengan menggunakan tempat tidur tambahan.\r\n\r\nKapasitas maksimal dari tempat tidur/tempat tidur bayi tambahan di kamar adalah 1.\r\n\r\nTempat tidur tambahan adalah berdasarkan permintaan dan perlu dikonfirmasi oleh pihak hotel.\r\n\r\nBiaya tambahan tidak akan dihitung secara otomatis dalam biaya total dan harus dibayar secara terpisah di hotel.\r\n\r\n\r\nHewan peliharaan:\r\nBinatang peliharaan tidak diperbolehkan.\r\n\r\nRombongan:\r\nJika memesan lebih dari 5 kamar, kebijakan berbeda dan biaya tambahan mungkin berlaku.\r\n\r\n\r\nKartu kredit yang diterima:\r\nAmerican Express, Visa, Euro/Mastercard, Diners Club, JCB, Maestro, Discover.\r\n ', '1. Deluxe Room	           Rp 1.286.000\r\n2. Grand Room	           Rp 1.345.000 \r\n3. Level Room	           Rp 1.645.000\r\n4. Duplex Suite	           Rp 3.524.600\r\n5. Executive Suite	   Rp 4.420.000\r\n6. Presidential Suite      Rp 8.460.000\r\n7. Premium	           Rp 1.487.500\r\n8. Executive	           Rp 1.756.100', 'A2'),
('H02', 'Hotel Mutiara Malioboro', 3, 'Jl. Malioboro No. 18 Yogyakarta', 'Umum :\r\nRestoran, Bar, Bagian Penerima Tamu 24 Jam, Surat Kabar, Kamar Bebas-Rokok, Kamar/Fasilitas untuk Tamu Penyandang Cacat, Lift, Brankas, AC\r\n\r\nKegiatan\r\nPemijatan, Kolam Renang Outdoor\r\n\r\nLayanan\r\nLayanan Kamar , Fasilitas Rapat/Perjamuan , Binatu, Penyemiran Sepatu\r\n\r\nInternet\r\nGratis! Hotspot Internet Tanpa Kabel (Wireless) tersedia di area umum hotel dan tidak dikenai biaya.\r\n\r\nParkir\r\nGratis! Parkir pribadi gratis tersedia di hotel (reservasi tidak diperlukan). ', 'Check-in   : Dari jam 14:00\r\nCheck-out  : Sampai jam 12:00\r\n\r\nPembatalan / Pembayaran di muka\r\nKebijakan pembatalan dan pra-bayar berbeda-beda untuk tiap tipe kamar. Harap masukkan tanggal inap Anda dan periksa ketentuan dari kamar yang Anda butuhkan.\r\n\r\nAnak-anak dan tempat tidur tambahan\r\nKetentuan berikut berlaku jika jumlah tamu melebihi kapasitas kamar:\r\n\r\nGratis! Semua anak di bawah umur 5 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur yang sudah ada.\r\n\r\nSemua anak remaja atau orang dewasa dikenai biaya USD 27 per malam per orang untuk tempat tidur tambahan.\r\n\r\nKapasitas maksimal dari tempat tidur tambahan di kamar adalah 1.\r\n\r\nTidak ada kapasitas untuk tempat tidur bayi di kamar.\r\n\r\nTempat tidur tambahan adalah berdasarkan permintaan dan perlu dikonfirmasi oleh pihak hotel.\r\n\r\nBiaya tambahan tidak akan dihitung secara otomatis dalam biaya total dan harus dibayar secara terpisah di hotel.\r\n\r\nHewan peliharaan\r\nBinatang peliharaan tidak diperbolehkan.\r\n\r\nKartu kredit yang diterima\r\nVisa, Euro/Mastercard', 'Deluxe 			 Rp   650.000 \r\nKelas Junior - Selatan 	 Rp 1.375.000	 \r\nKamar Superior - Selatan Rp   550.000	 \r\nKamar Superior - Utara 	 Rp   550.000 \r\nKamar Standar - Selatan  Rp   450.000\r\nKamar Standar - Utara 	 Rp   400.000', 'A2'),
('H03', 'The Phoenix Hotel Yogyakarta', 5, 'Jalan Jend. Sudirman No.9', 'Umum\r\nRestoran, Bar, Bagian Penerima Tamu 24 Jam, Surat Kabar, Kamar Bebas-Rokok, Kamar/Fasilitas untuk Tamu Penyandang Cacat, Lift, Brankas, Penitipan Bagasi, AC, Restoran (a la carte), Restoran (prasmanan)\r\n\r\nKegiatan\r\nSauna, Pusat Kebugaran , Spa & Pusat Kesehatan, Pemijatan, Biliar, Perpustakaan, Bersepeda , Kolam Renang Outdoor, Kolam Renang Outdoor (sepanjang tahun)\r\n\r\nLayanan\r\nLayanan Kamar , Fasilitas Rapat/Perjamuan , Antar-Jemput Bandara , Pusat Bisnis, Binatu, Dry Cleaning, Fasilitas Kamar VIP, Jasa Penyetrikaan, Penukaran Valuta Asing, Toko Oleh-Oleh , Penyewaan Sepeda, Penyemiran Sepatu, Penyewaan Mobil, Meja Layanan Wisata, Faks/Fotokopi, Layanan Tiket, Layanan Pramutamu, Layanan Antar-Jemput (berlaku biaya tambahan)\r\n\r\nInternet\r\nGratis! Hotspot Internet Tanpa Kabel (Wireless) tersedia di seluruh hotel dan tidak dikenai biaya.\r\n\r\nParkir\r\nGratis! Parkir pribadi gratis tersedia di hotel (reservasi tidak diperlukan). ', 'Check-in   14:00 - 00:00\r\nCheck-out 12:00 - 13:00\r\n\r\nPembatalan / Pembayaran di muka\r\nKebijakan pembatalan dan pra-bayar berbeda-beda untuk tiap tipe kamar. Harap masukkan tanggal inap Anda dan periksa ketentuan dari kamar yang Anda butuhkan.\r\n\r\nAnak-anak dan tempat tidur tambahan\r\nKetentuan berikut berlaku jika jumlah tamu melebihi kapasitas kamar:\r\n\r\nGratis! Satu anak di bawah umur 12 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur yang sudah ada.\r\n\r\nGratis! Satu anak di bawah umur 2 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur bayi.\r\n\r\nSatu anak remaja atau orang dewasa dikenai biaya USD 30 per malam per orang dengan menggunakan tempat tidur tambahan.\r\n\r\nKapasitas maksimal dari tempat tidur/tempat tidur bayi tambahan di kamar adalah 1.\r\n\r\nTempat tidur tambahan adalah berdasarkan permintaan dan perlu dikonfirmasi oleh pihak hotel.\r\n\r\nBiaya tambahan tidak akan dihitung secara otomatis dalam biaya total dan harus dibayar secara terpisah di hotel.\r\n\r\nHewan peliharaan\r\nBinatang peliharaan tidak diperbolehkan.\r\n\r\nRombongan\r\nJika memesan lebih dari 7 kamar, kebijakan berbeda dan biaya tambahan mungkin berlaku.\r\n\r\nKartu kredit yang diterima\r\nAmerican Express, Visa, Euro/Mastercard', 'Executive Double  Rp 1.352.855\r\nSuite Executive   Rp 1.655.340\r\nSuite Single 	  Rp 1.590.000	 \r\nExecutive Single  Rp 1.040.000	 \r\nDeluxe Single 	  Rp 890.000	 \r\nSuperior Single   Rp 790.000', 'A2'),
('H04', 'D''omah Yogya Hotel', 4, 'Jl. Parangtritis Km 8.5, Bantul', 'Umum\r\nRestoran, Bar, Taman, Teras, Kamar Bebas-Rokok, Check-In/Check-Out Ekspres, Hotel Desain, AC, Restoran (a la carte), Bar Makanan Ringan, Teras Berjemur\r\n\r\nKegiatan\r\nSauna, Pusat Kebugaran , Memancing, Spa & Pusat Kesehatan, Pemijatan, Taman Bermain Anak, Hot Tub, Perpustakaan, Bersepeda , Kolam Renang Outdoor, Kolam Renang Outdoor (sepanjang tahun)\r\n\r\nLayanan\r\nLayanan Kamar , Layanan Penjagaan Anak, Binatu, Dry Cleaning, Penyewaan Sepeda, Penyewaan Mobil, Meja Layanan Wisata, Faks/Fotokopi, Layanan Tiket, Tersedia Sepeda (gratis), Layanan Antar-Jemput (berlaku biaya tambahan)\r\n\r\nInternet\r\nGratis! Hotspot Internet Tanpa Kabel (Wireless) tersedia di seluruh hotel dan tidak dikenai biaya.\r\n\r\nParkir\r\nGratis! Parkir pribadi gratis tersedia di hotel (reservasi tidak diperlukan). ', 'Check-in   14:00 \r\nCheck-out  12:00 \r\n\r\nPembatalan / Pembayaran di muka\r\nKebijakan pembatalan dan pra-bayar berbeda-beda untuk tiap tipe kamar. Harap masukkan tanggal inap Anda dan periksa ketentuan dari kamar yang Anda butuhkan.\r\n\r\nAnak-anak dan tempat tidur tambahan\r\nKetentuan berikut berlaku jika jumlah tamu melebihi kapasitas kamar:\r\n\r\nGratis! Satu anak di bawah umur 12 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur yang sudah ada.\r\n\r\nGratis! Satu anak di bawah umur 2 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur bayi.\r\n\r\nSatu anak remaja atau orang dewasa dikenai biaya USD 15 per malam per orang dengan menggunakan tempat tidur tambahan.\r\n\r\nKapasitas maksimal dari tempat tidur/tempat tidur bayi tambahan di kamar adalah 1.\r\n\r\nTempat tidur tambahan adalah berdasarkan permintaan dan perlu dikonfirmasi oleh pihak hotel.\r\n\r\nBiaya tambahan tidak akan dihitung secara otomatis dalam biaya total dan harus dibayar secara terpisah di hotel.\r\n\r\nHewan peliharaan\r\nBinatang peliharaan tidak diperbolehkan.\r\n\r\nKartu kredit yang diterima\r\nAmerican Express, Visa, Euro/Mastercard', 'Superior    Rp776.496\r\nDeluxe Room Rp875.129', 'A2'),
('H05', 'Hyatt Regency Yogyakarta', 5, 'Jalan Palagan Tentara Pelajar', 'Umum\r\nRestoran, Bar, Bagian Penerima Tamu 24 Jam, Surat Kabar, Taman, Teras, Kamar Bebas-Rokok, Kamar/Fasilitas untuk Tamu Penyandang Cacat, Lift, Brankas, Penitipan Bagasi, AC \r\n\r\nKegiatan\r\nLapangan Tenis , Sauna, Lapangan Golf (dalam jarak 3 km), Spa & Pusat Kesehatan, Pemijatan, Taman Bermain Anak, Hot Tub, Kolam Renang Outdoor \r\n\r\nLayanan\r\nLayanan Kamar , Fasilitas Rapat/Perjamuan , Antar-Jemput Bandara , Pusat Bisnis, Layanan Penjagaan Anak, Binatu, Sarapan Dalam Kamar , Jasa Penyetrikaan, Penukaran Valuta Asing, Penyewaan Mobil, Meja Layanan Wisata, Faks/Fotokopi \r\n\r\nInternet\r\nWi-Fi tersedia di kamar hotel dengan biaya USD 17 setiap 24 jam.\r\n\r\nParkir\r\nGratis! Parkir pribadi gratis tersedia di hotel (reservasi tidak diperlukan). ', 'Check-in   13:00\r\nCheck-out  12:00 \r\n\r\nPembatalan / Pembayaran di muka\r\nKebijakan pembatalan dan pra-bayar berbeda-beda untuk tiap tipe kamar. Harap masukkan tanggal inap Anda dan periksa ketentuan dari kamar yang Anda butuhkan.\r\n\r\nAnak-anak dan tempat tidur tambahan\r\nKetentuan berikut berlaku jika jumlah tamu melebihi kapasitas kamar:\r\n\r\nGratis! Satu anak di bawah umur 12 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur yang sudah ada.\r\n\r\nGratis! Satu anak di bawah umur 2 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur bayi.\r\n\r\nSatu anak remaja atau orang dewasa dikenai biaya USD 35 per malam per orang dengan menggunakan tempat tidur tambahan.\r\n\r\nKapasitas maksimal dari tempat tidur/tempat tidur bayi tambahan di kamar adalah 1.\r\n\r\nTempat tidur tambahan adalah berdasarkan permintaan dan perlu dikonfirmasi oleh pihak hotel.\r\n\r\nBiaya tambahan tidak akan dihitung secara otomatis dalam biaya total dan harus dibayar secara terpisah di hotel.\r\n\r\nHewan peliharaan\r\nBinatang peliharaan tidak diperbolehkan.\r\n\r\nKartu kredit yang diterima\r\nAmerican Express, Visa, Diners Club, JCB', '1. Garden View	      Rp 1,054,800\r\n2. Garden Balcony     Rp 1,198,800\r\n3. Regency Club	      Rp 1,780,000  \r\n4. Junior Suite	      Rp 3,600,000  \r\n5. Executive Suite    Rp 5,500,000  \r\n6. Presidential Suite Rp10,200,000  ', 'A2'),
('H06', 'Grand Aston Yogyakarta', 5, 'Jl. Urip Sumoharjo No. 37', 'Umum\r\nRestoran, Bar, Bagian Penerima Tamu 24 Jam, Surat Kabar, Taman, Kamar Bebas-Rokok, Lift, Brankas, AC, Ruangan Khusus Merokok, Restoran (a la carte), Restoran (prasmanan) \r\n\r\nKegiatan\r\nPusat Kebugaran , Spa & Pusat Kesehatan, Pemijatan, Kolam Renang Outdoor, Kolam Renang Outdoor (sepanjang tahun) \r\n\r\nLayanan\r\nLayanan Kamar , Fasilitas Rapat/Perjamuan , Antar-Jemput Bandara , Pusat Bisnis, Layanan Penjagaan Anak, Binatu, Dry Cleaning, Penukaran Valuta Asing, Penyewaan Mobil, Faks/Fotokopi, Layanan Pramutamu \r\n\r\nInternet\r\nGratis! Wi-Fi tersedia di seluruh hotel dan tidak dikenai biaya. \r\n\r\nParkir\r\nGratis! Parkir pribadi gratis tersedia di hotel (reservasi tidak diperlukan)', 'Check-in   14:00\r\nCheck-out 12:00 \r\n\r\nPembatalan / Pembayaran di muka\r\nKebijakan pembatalan dan pra-bayar berbeda-beda untuk tiap tipe kamar. Harap masukkan tanggal inap Anda dan periksa ketentuan dari kamar yang Anda butuhkan.\r\n\r\nAnak-anak dan tempat tidur tambahan\r\nKetentuan berikut berlaku jika jumlah tamu melebihi kapasitas kamar:\r\n\r\nGratis! Satu anak di bawah umur 6 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur yang sudah ada.\r\n\r\nGratis! Satu anak di bawah umur 2 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur bayi.\r\n\r\nSatu anak remaja atau orang dewasa dikenai biaya USD 39 per malam per orang dengan menggunakan tempat tidur tambahan.\r\n\r\nKapasitas maksimal dari tempat tidur/tempat tidur bayi tambahan di kamar adalah 1.\r\n\r\nTempat tidur tambahan adalah berdasarkan permintaan dan perlu dikonfirmasi oleh pihak hotel.\r\n\r\nBiaya tambahan tidak akan dihitung secara otomatis dalam biaya total dan harus dibayar secara terpisah di hotel.\r\n\r\nHewan peliharaan\r\nBinatang peliharaan tidak diperbolehkan.\r\n\r\nKartu kredit yang diterima\r\nAmerican Express, Visa, Euro/Mastercard, JCB', 'Superior room	        IDR 1.279.983\r\nDeluxe room	        IDR 1.480.463 \r\nSuite room	        IDR 5.829.322\r\nPresidential suite	IDR 10.548.298', 'A2'),
('H07', 'Jambuluwuk Malioboro Jogja', 4, 'Jl. Gajah Mada No. 67', 'Umum\r\nBar, Bagian Penerima Tamu 24 Jam, Surat Kabar, Taman, Kamar Bebas-Rokok, Kamar/Fasilitas untuk Tamu Penyandang Cacat, Lift, Brankas, Penitipan Bagasi, AC, Restoran (a la carte) \r\n\r\nKegiatan\r\nPusat Kebugaran , Taman Bermain Anak, Karaoke, Perpustakaan, Kolam Renang Outdoor \r\n\r\nLayanan\r\nLayanan Kamar , Fasilitas Rapat/Perjamuan , Pusat Bisnis, Binatu, Dry Cleaning, Jasa Penyetrikaan, Toko Oleh-Oleh , Penyewaan Mobil, Meja Layanan Wisata, Faks/Fotokopi, Layanan Pramutamu, Layanan Antar-Jemput (berlaku biaya tambahan), Antar-Jemput Bandara (biaya ekstra) \r\n\r\nInternet\r\nGratis! Wi-Fi tersedia di seluruh hotel dan tidak dikenai biaya. \r\n\r\nParkir\r\nGratis! Parkir pribadi gratis tersedia di hotel (reservasi tidak diperlukan). ', 'Check-in   14:00\r\nCheck-out 12:00 \r\n\r\nPembatalan / Pembayaran di muka\r\nKebijakan pembatalan dan pra-bayar berbeda-beda untuk tiap tipe kamar. Harap masukkan tanggal inap Anda dan periksa ketentuan dari kamar yang Anda butuhkan.\r\n\r\nAnak-anak dan tempat tidur tambahan\r\nKetentuan berikut berlaku jika jumlah tamu melebihi kapasitas kamar:\r\n\r\nGratis! Satu anak di bawah umur 5 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur yang sudah ada.\r\n\r\nSatu anak remaja atau orang dewasa dikenai biaya USD 22 per malam per orang dengan menggunakan tempat tidur tambahan.\r\n\r\nKapasitas maksimal dari tempat tidur/tempat tidur bayi tambahan di kamar adalah 1.\r\n\r\nTempat tidur tambahan adalah berdasarkan permintaan dan perlu dikonfirmasi oleh pihak hotel.\r\n\r\nBiaya tambahan tidak akan dihitung secara otomatis dalam biaya total dan harus dibayar secara terpisah di hotel.\r\n\r\nHewan peliharaan\r\nBinatang peliharaan tidak diperbolehkan.\r\n\r\nKartu kredit yang diterima\r\nAmerican Express, Visa, Euro/Mastercard', 'Deluxe room	IDR 1.130.517 ', 'A2'),
('H08', 'All Seasons Yogyakarta', 3, 'Jl Dagen No 109, 55271 Yogyakarta', 'Umum\r\nRestoran, Bar, Bagian Penerima Tamu 24 Jam, Surat Kabar, Kamar/Fasilitas untuk Tamu Penyandang Cacat, Lift, Brankas, Penitipan Bagasi, AC \r\n\r\nKegiatan\r\nKolam Renang Outdoor \r\n\r\nLayanan\r\nLayanan Kamar , Fasilitas Rapat/Perjamuan , Layanan Penjagaan Anak, Binatu, Dry Cleaning, Jasa Penyetrikaan, Layanan Pramutamu \r\n\r\nInternet\r\nGratis! Wi-Fi tersedia di seluruh hotel dan tidak dikenai biaya. \r\n\r\nParkir\r\nGratis! Parkir pribadi gratis tersedia di hotel (reservasi tidak diperlukan). ', 'Check-in   14:00\r\nCheck-out 12:00 \r\n\r\nPembatalan / Pembayaran di muka\r\nKebijakan pembatalan dan pra-bayar berbeda-beda untuk tiap tipe kamar. Harap masukkan tanggal inap Anda dan periksa ketentuan dari kamar yang Anda butuhkan.\r\n\r\nAnak-anak dan tempat tidur tambahan\r\nGratis! Semua anak di bawah umur 12 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur yang sudah ada.\r\n\r\nTempat tidur tambahan tidak tersedia.\r\n\r\nTidak ada kapasitas untuk tempat tidur/tempat tidur bayi tambahan di kamar.\r\n\r\nHewan peliharaan\r\nBinatang peliharaan tidak diperbolehkan.\r\n\r\nKartu kredit yang diterima\r\nAmerican Express, Visa, Euro/Mastercard', 'Standard room with two single beds bb bed brkfast (hot deal prepaid no refund)	\r\nIDR 476.345\r\n 	  	  	 \r\nStandard room 1 queen bed bb bed brkfast (best unrestricted rate)\r\nIDR 529.272\r\n	  	  	 \r\nStandard room with two single beds bb bed brkfast (best unrestricted rate)\r\nIDR 529.272\r\n	  	  	 \r\nStandard room 1 queen bed bb bed brkfast (best unrestricted with breakfast)\r\nIDR 567.272\r\n	  	  	 \r\nStandard room with two single beds bb bed brkfast (best unrestricted with breakfast)\r\nIDR 567.272 \r\n', 'A2'),
('H09', 'Royal Ambarrukmo Yogyakarta ', 5, 'Jl. Laksda Adisucipto 81', 'Umum\r\nRestoran, Bar, Bagian Penerima Tamu 24 Jam, Surat Kabar, Kamar/Fasilitas untuk Tamu Penyandang Cacat, Lift, Brankas, Penitipan Bagasi, AC \r\n\r\nKegiatan\r\nPusat Kebugaran , Spa & Pusat Kesehatan, Pemijatan, Kolam Renang Outdoor, Kolam Renang Outdoor (sepanjang tahun) \r\n\r\nLayanan\r\nLayanan Kamar , Fasilitas Rapat/Perjamuan , Antar-Jemput Bandara , Binatu, Dry Cleaning, Toko Oleh-Oleh , Penyewaan Mobil, Meja Layanan Wisata, Faks/Fotokopi, Layanan Pramutamu, Layanan Antar-Jemput (berlaku biaya tambahan)  \r\n\r\nInternet\r\nGratis! Wi-Fi tersedia di seluruh hotel dan tidak dikenai biaya. \r\n\r\nParkir\r\nGratis! Parkir pribadi gratis tersedia di hotel (reservasi tidak diperlukan). ', 'Check-in   14:00\r\nCheck-out 12:00 \r\n\r\nPembatalan / Pembayaran di muka\r\nKebijakan pembatalan dan pra-bayar berbeda-beda untuk tiap tipe kamar. Harap masukkan tanggal inap Anda dan periksa ketentuan dari kamar yang Anda butuhkan.\r\n\r\nAnak-anak dan tempat tidur tambahan\r\nKetentuan berikut berlaku jika jumlah tamu melebihi kapasitas kamar:\r\n\r\nGratis! Semua anak di bawah umur 12 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur yang sudah ada.\r\n\r\nSatu anak remaja atau orang dewasa dikenai biaya USD 40 per malam per orang dengan menggunakan tempat tidur tambahan.\r\n\r\nGratis! Satu anak di bawah umur 2 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur bayi.\r\n\r\nKapasitas maksimal dari tempat tidur/tempat tidur bayi tambahan di kamar adalah 1.\r\n\r\nTempat tidur tambahan adalah berdasarkan permintaan dan perlu dikonfirmasi oleh pihak hotel.\r\n\r\nBiaya tambahan tidak akan dihitung secara otomatis dalam biaya total dan harus dibayar secara terpisah di hotel.\r\n\r\nHewan peliharaan\r\nBinatang peliharaan tidak diperbolehkan.\r\n\r\nKartu kredit yang diterima\r\nAmerican Express, Visa, Euro/Mastercard', 'Deluxe balkon              IDR 1.350.000 \r\nDeluxe pemandangan gunung  IDR 1.410.000\r\nVip (Ambarrukmo club)      IDR 1.700.000 ', 'A2'),
('H10', 'Novotel Yogyakarta', 4, 'Jalan Jend. Sudirman No. 89', 'Umum\r\nRestoran, Bar, Bagian Penerima Tamu 24 Jam, Surat Kabar, Kamar/Fasilitas untuk Tamu Penyandang Cacat, Lift, Brankas, Penitipan Bagasi, AC \r\n\r\nKegiatan\r\nSauna, Pusat Kebugaran , Spa & Pusat Kesehatan, Pemijatan, Kolam Renang Outdoor  \r\n\r\nLayanan\r\nFasilitas Rapat/Perjamuan , Binatu, Dry Cleaning, Pemangkas Rambut/Salon Kecantikan \r\n\r\nInternet\r\nGratis! Wi-Fi tersedia di seluruh hotel dan tidak dikenai biaya. \r\n\r\nParkir\r\nGratis! Parkir pribadi gratis tersedia di hotel (reservasi tidak diperlukan). ', 'Check-in   14:00\r\nCheck-out 12:00 \r\n\r\nPembatalan / Pembayaran di muka\r\nKebijakan pembatalan dan pra-bayar berbeda-beda untuk tiap tipe kamar. Harap masukkan tanggal inap Anda dan periksa ketentuan dari kamar yang Anda butuhkan.\r\n\r\nAnak-anak dan tempat tidur tambahan\r\nKetentuan berikut berlaku jika jumlah tamu melebihi kapasitas kamar:\r\n\r\nGratis! Semua anak di bawah umur 16 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur yang sudah ada.\r\n\r\nGratis! Satu anak di bawah umur 2 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur bayi.\r\n\r\nSatu anak remaja atau orang dewasa dikenai biaya USD 30 per malam per orang dengan menggunakan tempat tidur tambahan.\r\n\r\nKapasitas maksimal dari tempat tidur/tempat tidur bayi tambahan di kamar adalah 1.\r\n\r\nTempat tidur tambahan adalah berdasarkan permintaan dan perlu dikonfirmasi oleh pihak hotel.\r\n\r\nBiaya tambahan tidak akan dihitung secara otomatis dalam biaya total dan harus dibayar secara terpisah di hotel.\r\n\r\nHewan peliharaan\r\nBinatang peliharaan tidak diperbolehkan.\r\n\r\nKartu kredit yang diterima\r\nAmerican Express, Visa, Euro/Mastercard', 'Standar twin penawaran hebat IDR 493.000\r\nStandard king room           IDR 580.000 \r\nStandar twin                 IDR 580.000\r\n\r\nSuperior penawaran hebat tempat tidur king                         IDR 614.000\r\nSuperior tempat tidur king   IDR 701.000 ', 'A2'),
('H11', 'Inna Garuda    ', 4, 'Jl. Malioboro No. 60, 55213 Yogyakarta', 'Umum\r\nRestoran, Bar, Bagian Penerima Tamu 24 Jam, AC \r\n\r\nKegiatan\r\nLapangan Tenis , Spa & Pusat Kesehatan, Karaoke, Kolam Renang Outdoor  \r\n\r\nLayanan\r\nAntar-Jemput Bandara , Binatu, Penukaran Valuta Asing, Toko Oleh-Oleh , Meja Layanan Wisata, Layanan Tiket, Fasilitas ATM di-tempat \r\n\r\nInternet\r\nGratis! Wi-Fi tersedia di seluruh hotel dan tidak dikenai biaya. \r\n\r\nParkir\r\nParkir pribadi tersedia di hotel (reservasi tidak diperlukan) dan akan dikenakan biaya.', 'Check-in   14:00 - 22:00 \r\nCheck-out 05:00 - 12:00 \r\n\r\nPembatalan / Pembayaran di muka\r\nKebijakan pembatalan dan pra-bayar berbeda-beda untuk tiap tipe kamar. Harap masukkan tanggal inap Anda dan periksa ketentuan dari kamar yang Anda butuhkan.\r\n\r\nAnak-anak dan tempat tidur tambahan\r\nKetentuan berikut berlaku jika jumlah tamu melebihi kapasitas kamar:\r\n\r\nGratis! Semua anak di bawah umur 10 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur yang sudah ada.\r\n\r\nSatu anak remaja atau orang dewasa dikenai biaya USD 20 per malam per orang dengan menggunakan tempat tidur tambahan.\r\n\r\nKapasitas maksimal dari tempat tidur tambahan di kamar adalah 1.\r\n\r\nTidak ada kapasitas untuk tempat tidur bayi di kamar.\r\n\r\nTempat tidur tambahan adalah berdasarkan permintaan dan perlu dikonfirmasi oleh pihak hotel.\r\n\r\nBiaya tambahan tidak akan dihitung secara otomatis dalam biaya total dan harus dibayar secara terpisah di hotel.\r\n\r\nBepergian dengan lebih dari 2 orang? Tentukan berapa orang rombongan Anda untuk mendapatkan rekomendasi terbaik.\r\nHewan peliharaan\r\nBinatang peliharaan tidak diperbolehkan.\r\n\r\nKartu kredit yang diterima\r\nVisa', 'Superior         IDR 652.893\r\n	  	  	  	 \r\nDeluxe           IDR 768.595 ', 'A2'),
('H12', 'Raffles Holiday Jogja Hotel', 3, 'Jl. Kaliurang Km. 20 No. 198, Kaliurang, Yogyakarta', 'Umum\r\nRestoran, Bagian Penerima Tamu 24 Jam, Taman, Kamar Bebas-Rokok, Brankas, Semua Ruang Umum dan Pribadi Bebas-Rokok, AC \r\n\r\nKegiatan\r\nKolam Renang Outdoor  \r\n\r\nLayanan\r\nLayanan Kamar , Fasilitas Rapat/Perjamuan , Binatu, Sarapan Dalam Kamar , Jasa Penyetrikaan, Penyewaan Mobil, Meja Layanan Wisata, Faks/Fotokopi, Layanan Antar-Jemput (berlaku biaya tambahan) \r\n\r\nInternet\r\nGratis! Wi-Fi tersedia di seluruh hotel dan tidak dikenai biaya. \r\n\r\nParkir\r\nGratis! Parkir pribadi gratis tersedia di hotel (reservasi tidak diperlukan).', 'Check-in   Dari jam 14:00 \r\nCheck-out Sampai jam 12:00 \r\n\r\nPembatalan / Pembayaran di muka\r\nKebijakan pembatalan dan pra-bayar berbeda-beda untuk tiap tipe kamar. Harap masukkan tanggal inap Anda dan periksa ketentuan dari kamar yang Anda butuhkan.\r\n\r\nAnak-anak dan tempat tidur tambahan\r\nKetentuan berikut berlaku jika jumlah tamu melebihi kapasitas kamar:\r\n\r\nGratis! Semua anak di bawah umur 12 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur yang sudah ada.\r\n\r\nSatu anak remaja atau orang dewasa dikenai biaya USD 10 per malam per orang dengan menggunakan tempat tidur tambahan.\r\n\r\nKapasitas maksimal dari tempat tidur tambahan di kamar adalah 1.\r\n\r\nTidak ada kapasitas untuk tempat tidur bayi di kamar.\r\n\r\nTempat tidur tambahan adalah berdasarkan permintaan dan perlu dikonfirmasi oleh pihak hotel.\r\n\r\nBiaya tambahan tidak akan dihitung secara otomatis dalam biaya total dan harus dibayar secara terpisah di hotel.\r\n\r\nBepergian dengan lebih dari 2 orang? Tentukan berapa orang rombongan Anda untuk mendapatkan rekomendasi terbaik.\r\nHewan peliharaan\r\nBinatang peliharaan tidak diperbolehkan.\r\n\r\nKartu kredit yang diterima\r\nVisa,Euro/Mastercard', 'Standar                   IDR 413.223\r\nBungalow                  IDR 495.868\r\nFamily deluxe             IDR 495.868\r\nBulan madu(Honeymoon)     IDR 738.037 \r\nBulan madu(Honeymoon)     IDR 1.506.199\r\nSuite junior              IDR 836.442\r\nSuite junior(Junior suite)IDR 1.707.024', 'A2'),
('H13', 'Jogjakarta Plaza Hotel', 4, 'Jl. Affandi Gejayan Complex Colombo', 'Umum\r\nRestoran, Bar, Bagian Penerima Tamu 24 Jam, Taman, Brankas, Penitipan Bagasi, Toko di Dalam Hotel, AC, Restoran (a la carte), Restoran (prasmanan) \r\n\r\nKegiatan\r\nLapangan Tenis , Pusat Kebugaran , Spa & Pusat Kesehatan, Pemijatan, Taman Bermain Anak, Fasilitas BBQ, Kolam Renang Outdoor, Kolam Renang Outdoor (sepanjang tahun) \r\n\r\nLayanan\r\nLayanan Kamar , Fasilitas Rapat/Perjamuan , Pusat Bisnis, Binatu, Dry Cleaning, Toko Oleh-Oleh , Penyewaan Sepeda, Makan Siang Kemasan, Penyewaan Mobil, Faks/Fotokopi, Layanan Tiket, Layanan Pramutamu, Layanan Antar-Jemput (berlaku biaya tambahan) \r\n\r\nInternet\r\nWi-Fi tersedia di area umum hotel dan akan dikenakan biaya.\r\n\r\nParkir\r\nGratis! Parkir pribadi gratis tersedia di hotel (reservasi tidak diperlukan). \r\n', 'Check-in   Dari jam 14:00 \r\nCheck-out Sampai jam 12:00 \r\n\r\nPembatalan / Pembayaran di muka\r\nKebijakan pembatalan dan pra-bayar berbeda-beda untuk tiap tipe kamar. Harap masukkan tanggal inap Anda dan periksa ketentuan dari kamar yang Anda butuhkan.\r\n\r\nAnak-anak dan tempat tidur tambahan\r\nKetentuan berikut berlaku jika jumlah tamu melebihi kapasitas kamar:\r\n\r\nGratis! Semua anak di bawah umur 11 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur yang sudah ada.\r\n\r\nSatu anak remaja atau orang dewasa dikenai biaya USD 25 per malam per orang dengan menggunakan tempat tidur tambahan.\r\n\r\nKapasitas maksimal dari tempat tidur tambahan di kamar adalah 1.\r\n\r\nTidak ada kapasitas untuk tempat tidur bayi di kamar.\r\n\r\nTempat tidur tambahan adalah berdasarkan permintaan dan perlu dikonfirmasi oleh pihak hotel.\r\n\r\nBiaya tambahan tidak akan dihitung secara otomatis dalam biaya total dan harus dibayar secara terpisah di hotel.\r\n\r\nBepergian dengan lebih dari 2 orang? Tentukan berapa orang rombongan Anda untuk mendapatkan rekomendasi terbaik.\r\nHewan peliharaan\r\nBinatang peliharaan tidak diperbolehkan.\r\n\r\nKartu kredit yang diterima\r\nVisa,Euro/Mastercard, Diners Club, JCB', 'Deluxe                       IDR 615.868\r\n\r\nDeluxe pemandangan kolam     IDR 654.132\r\n	  	  	 \r\nEksekutif                    IDR 743.802\r\n	 	  	  	  	 \r\nDeluxe eksekutif             IDR 785.124\r\n\r\nExecutive deluxe pool access IDR 826.446 ', 'A2'),
('H14', 'The Edelweiss Hotel Yogyakarta', 3, 'Jl. Gejayan No. 17C', 'Umum\r\nRestoran, Bagian Penerima Tamu 24 Jam, Kamar Bebas-Rokok, Lift, Brankas, Penitipan Bagasi, Semua Ruang Umum dan Pribadi Bebas-Rokok, AC\r\n\r\nKegiatan\r\nKolam Renang Outdoor\r\n\r\nLayanan\r\nLayanan Kamar , Fasilitas Rapat/Perjamuan , Antar-Jemput Bandara , Pusat Bisnis, Binatu, Faks/Fotokopi, Layanan Antar-Jemput (berlaku biaya tambahan)\r\n\r\nInternet\r\nGratis! Hotspot Internet Tanpa Kabel (Wireless) tersedia di seluruh hotel dan tidak dikenai biaya.\r\n\r\nParkir\r\nGratis! Parkir umum gratis tersedia di hotel (reservasi tidak diperlukan). ', 'Check-in   Dari jam 14:00 \r\nCheck-out Sampai jam 12:00 \r\n\r\nPembatalan / Pembayaran di muka\r\nKebijakan pembatalan dan pra-bayar berbeda-beda untuk tiap tipe kamar. Harap masukkan tanggal inap Anda dan periksa ketentuan dari kamar yang Anda butuhkan.\r\n\r\nAnak-anak dan tempat tidur tambahan\r\nGratis! Semua anak di bawah umur 7 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur yang sudah ada.\r\n\r\nTempat tidur tambahan tidak tersedia.\r\n\r\nTempat tidur bayi tidak tersedia.\r\n\r\nTidak ada kapasitas untuk tempat tidur/tempat tidur bayi tambahan di kamar.\r\n\r\nBepergian dengan lebih dari 2 orang? Tentukan berapa orang rombongan Anda untuk mendapatkan rekomendasi terbaik\r\n\r\nHewan peliharaan\r\nBinatang peliharaan tidak diperbolehkan.\r\n\r\nKartu kredit yang diterima\r\nVisa,Euro/Mastercard', 'Superior   IDR 419.040', 'A2'),
('H15', 'Grand Quality Hotel', 4, 'Jl. Adisucipto 48, PO Box 82, Bandara Yogyakarta', 'Umum\r\nRestoran, Bar, Bagian Penerima Tamu 24 Jam, Kamar Bebas-Rokok, Kamar/Fasilitas untuk Tamu Penyandang Cacat, Lift, Brankas, Penitipan Bagasi, AC, Restoran (a la carte) \r\n\r\nKegiatan\r\nSauna, Pusat Kebugaran , Pemijatan, Taman Bermain Anak, Biliar, Kolam Renang Outdoor \r\n\r\nLayanan\r\nLayanan Kamar , Fasilitas Rapat/Perjamuan , Pusat Bisnis, Binatu, Dry Cleaning, Toko Oleh-Oleh , Penyewaan Sepeda, Makan Siang Kemasan, Penyewaan Mobil, Faks/Fotokopi, Layanan Tiket, Layanan Pramutamu, Layanan Antar-Jemput (berlaku biaya tambahan) \r\n\r\nInternet\r\nWi-Fi tersedia di area umum hotel dan akan dikenakan biaya.\r\n\r\nParkir\r\nGratis! Parkir pribadi gratis tersedia di hotel (reservasi tidak diperlukan). \r\n', 'Check-in   Dari jam 13:00 \r\nCheck-out Sampai jam 12:00 \r\n\r\nPembatalan / Pembayaran di muka\r\nKebijakan pembatalan dan pra-bayar berbeda-beda untuk tiap tipe kamar. Harap masukkan tanggal inap Anda dan periksa ketentuan dari kamar yang Anda butuhkan.\r\n\r\nAnak-anak dan tempat tidur tambahan\r\nKetentuan berikut berlaku jika jumlah tamu melebihi kapasitas kamar:\r\n\r\nGratis! Semua anak di bawah umur 12 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur yang sudah ada.\r\n\r\nGratis! Satu anak di bawah umur 2 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur bayi.\r\n\r\nSatu anak remaja atau orang dewasa dikenai biaya USD 25 per malam per orang dengan menggunakan tempat tidur tambahan.\r\n\r\nKapasitas maksimal dari tempat tidur/tempat tidur bayi tambahan di kamar adalah 1.\r\n\r\nTempat tidur tambahan adalah berdasarkan permintaan dan perlu dikonfirmasi oleh pihak hotel.\r\n\r\nBiaya tambahan tidak akan dihitung secara otomatis dalam biaya total dan harus dibayar secara terpisah di hotel.\r\n\r\nHewan peliharaan\r\nBinatang peliharaan tidak diperbolehkan.\r\n\r\nKartu kredit yang diterima\r\nVisa,Euro/Mastercard', '1. Deluxe Room IDR 494.331\r\n2. Executive Floor  580,000.00\r\n3. Studio Suite  648,000.00 \r\n4. Junior Suite  828,000.00\r\n5. Executive Suite 1,500,000 \r\n6. Bussines Suite 1,800,000 \r\n7. Presidential Suite 2,750,000 ', 'A2'),
('H16', 'Whiz Hotel Yogyakarta ', 3, '   Jl Dagen 8, Malioboro, 55271 Yogyakarta', 'Umum\r\nBagian Penerima Tamu 24 Jam, Brankas, Kamar Kedap Suara, Hotel Desain, Penitipan Bagasi, AC\r\n\r\nLayanan\r\nLayanan Kamar , Pusat Bisnis, Binatu, Penukaran Valuta Asing, Layanan Pramutamu, Mesin Penjual (minuman)\r\n\r\nInternet\r\nInternet melalui modem tersedia di kamar hotel dengan biaya USD 2 setiap 24 jam.\r\n\r\nParkir\r\nGratis! Parkir pribadi gratis tersedia di hotel (reservasi diperlukan). ', 'Check-in   Dari jam 14:00\r\nCheck-out  Sampai jam 12:00\r\n\r\nPembatalan / Pembayaran di muka\r\nKebijakan pembatalan dan pra-bayar berbeda-beda untuk tiap tipe kamar. Harap periksa ketentuan kamar saat memilih kamar Anda.\r\n\r\nAnak-anak dan tempat tidur tambahan\r\nGratis! Satu anak di bawah umur 10 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur yang sudah ada.\r\n\r\nTidak ada kapasitas untuk tempat tidur/tempat tidur bayi tambahan di kamar.\r\n\r\nHewan peliharaan\r\nBinatang peliharaan tidak diperbolehkan.\r\n\r\nKartu kredit yang diterima\r\nVisa, Euro/Mastercard', 'Double IDR 446.281\r\nTwin   IDR 446.281', 'A2'),
('H17', 'SHERATON MUSTIKA YOGYAKARTA ', 5, 'Jl. Laksda Adisucipto KM 8.7 Yogyakarta', 'Umum\r\nBagian Penerima Tamu 24 Jam, Surat Kabar, Taman, Kamar Bebas-Rokok, Brankas, Kamar Kedap Suara, Penitipan Bagasi, Toko di Dalam Hotel, AC, Restoran (a la carte), Restoran (prasmanan)\r\n\r\nKegiatan\r\nLapangan Tenis , Sauna, Pusat Kebugaran , Lapangan Golf (dalam jarak 3 km), Spa & Pusat Kesehatan, Pemijatan, Hot Tub, Kolam Renang Indoor, Kolam Renang Outdoor\r\n\r\nLayanan\r\nLayanan Kamar , Fasilitas Rapat/Perjamuan , Antar-Jemput Bandara , Pusat Bisnis, Binatu, Dry Cleaning, Pemangkas Rambut/Salon Kecantikan, Penyewaan Mobil, Faks/Fotokopi, Layanan Pramutamu, Layanan Antar-Jemput (gratis)\r\n\r\nInternet\r\nGratis! Wi-Fi tersedia di seluruh hotel dan tidak dikenai biaya.\r\n\r\nParkir\r\nGratis! Parkir umum gratis tersedia di hotel (reservasi tidak diperlukan). ', 'Check-in   Dari jam 14:00\r\nCheck-out  Sampai jam 12:00\r\n\r\nPembatalan / Pembayaran di muka\r\nKebijakan pembatalan dan pra-bayar berbeda-beda untuk tiap tipe kamar. Harap periksa ketentuan kamar saat memilih kamar Anda.\r\n\r\nAnak-anak dan tempat tidur tambahan\r\nKetentuan berikut berlaku jika jumlah tamu melebihi kapasitas kamar:\r\n\r\nGratis! Semua anak di bawah umur 12 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur yang sudah ada.\r\n\r\nSatu anak remaja atau orang dewasa dikenai biaya USD 65 per malam per orang dengan menggunakan tempat tidur tambahan.\r\n\r\nGratis! Satu anak di bawah umur 2 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur bayi.\r\n\r\nKapasitas maksimal dari tempat tidur/tempat tidur bayi tambahan di kamar adalah 1.\r\n\r\nTempat tidur tambahan adalah berdasarkan permintaan dan perlu dikonfirmasi oleh pihak hotel.\r\n\r\nBiaya tambahan tidak akan dihitung secara otomatis dalam biaya total dan harus dibayar secara terpisah di hotel.\r\n\r\nBepergian dengan lebih dari 2 orang? Tentukan berapa orang rombongan Anda untuk mendapatkan rekomendasi terbaik.\r\n\r\nHewan peliharaan\r\nBinatang peliharaan tidak diperbolehkan.\r\n\r\nKartu kredit yang diterima\r\nVisa, Euro/Mastercard', 'Garden View	Rp. 1.584.000	\r\nVolcano View	Rp. 1.663.200	\r\nClub Room	Rp. 1.848.000	\r\nLagoon Access	Rp. 2.112.000	\r\nJunior Suite	Rp. 2.772.000	\r\nLagoon Suite	Rp. 2.838.000	\r\nExecutive Suite	Rp. 5.478.000	\r\nPresident Suite	Rp. 11.880.000	\r\nRoyal Suite	Rp. 21.120.000	', 'A2'),
('H18', 'HOTEL BRONGTO', 3, 'Jl. Suryodiningratan 26, Yogyakarta', '62 kamar\r\nPendingin ruangan (AC), televisi, telpon.\r\nBathtub, dengan ari panas dan dinginKota penyimpanan yang aman (gratis)\r\nFree Hot Spot\r\nBar dan restoran\r\nLayanan kamar 24 jam\r\nLayanan laundry\r\nRuang pertemuan / serbaguna\r\nKolam renang\r\nHotspot\r\nLayanan taksi\r\nTempat parkir yang luas\r\n', '', 'Standard Double	        Rp. 414.750	2 persons capacity\r\n\r\nStandard Single	        Rp. 414.750	2 persons capacity\r\n\r\nDeluxe Bungalow Double	Rp. 609.788	2 persons capacity\r\n\r\nDeluxe Bungalow Single	Rp. 609.788	2 persons capacity\r\n\r\nSuite Bungalow Double	Rp. 763.875	2 persons capacity\r\n\r\nSuite Bungalow Single	Rp. 763.875	2 persons capacity\r\n\r\nFamily Bungalow Double	Rp. 1.062.138	4 persons capacity\r\n\r\nFamily Bungalow Single	Rp. 1.062.138	4 persons capacity', 'A2'),
('H19', 'Ibis Malioboro ', 3, 'Jl. Malioboro No. 52 - 58', 'Umum\r\nRestoran, Bar, Bagian Penerima Tamu 24 Jam, Kamar Bebas-Rokok, Kamar/Fasilitas untuk Tamu Penyandang Cacat, Lift, Brankas, Penitipan Bagasi, AC\r\n\r\nKegiatan\r\nSauna, Pusat Kebugaran , Spa & Pusat Kesehatan, Kolam Renang Outdoor\r\n\r\nLayanan\r\nLayanan Kamar , Fasilitas Rapat/Perjamuan , Pusat Bisnis, Binatu, Dry Cleaning, Jasa Penyetrikaan, Penukaran Valuta Asing, Penyewaan Mobil, Faks/Fotokopi\r\n\r\nInternet\r\nGratis! Wi-Fi tersedia di area umum hotel dan tidak dikenai biaya.\r\n\r\nParkir\r\nGratis! Parkir umum gratis tersedia di hotel (reservasi tidak diperlukan). ', 'Check-in   13:00 - 21:00\r\nCheck-out  12:00 - 13:00\r\n\r\nPembatalan / Pembayaran di muka\r\nKebijakan pembatalan dan pra-bayar berbeda-beda untuk tiap tipe kamar. Harap masukkan tanggal inap Anda dan periksa ketentuan dari kamar yang Anda butuhkan.\r\n\r\nAnak-anak dan tempat tidur tambahan\r\nGratis! Semua anak di bawah umur 12 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur yang sudah ada.\r\n\r\nTidak ada kapasitas untuk tempat tidur/tempat tidur bayi tambahan di kamar.\r\n\r\nHewan peliharaan\r\nBinatang peliharaan tidak diperbolehkan.\r\nRombongan\r\n\r\nJika memesan lebih dari 7 kamar, kebijakan berbeda dan biaya tambahan mungkin berlaku.\r\n\r\nKartu kredit yang diterima\r\nAmerican Express, Visa, Euro/Mastercard, Diners Club, JCB, Maestro', '', 'A2'),
('H20', 'Saphir Yogyakarta  ', 4, 'Jl. Laksda Adi Sucipto 38, Yogyakarta', 'Restoran, Bar, Bagian Penerima Tamu 24 Jam, Taman, Kamar Bebas-Rokok, Lift, Kapel/Kuil, Penghangat Ruangan, Penitipan Bagasi, Toko di Dalam Hotel, AC, Ruangan Khusus Merokok\r\n\r\nKegiatan\r\nLapangan Tenis , Pusat Kebugaran , Pemijatan, Fasilitas BBQ, Kolam Renang Outdoor\r\n\r\nLayanan\r\nLayanan Kamar , Fasilitas Rapat/Perjamuan , Antar-Jemput Bandara , Pusat Bisnis, Binatu, Dry Cleaning, Fasilitas Kamar VIP, Sarapan Dalam Kamar , Penukaran Valuta Asing, Makan Siang Kemasan, Penyewaan Mobil, Faks/Fotokopi, Layanan Tiket, Fasilitas ATM di-tempat\r\n\r\nInternet\r\nGratis! Hotspot Internet Tanpa Kabel (Wireless) tersedia di seluruh hotel dan tidak dikenai biaya.\r\n\r\nParkir\r\nGratis! Parkir pribadi gratis tersedia di hotel (reservasi tidak diperlukan). ', 'Check-in   14:00 - 18:00\r\nCheck-out  11:30 - 12:00\r\n\r\nPembatalan / Pembayaran di muka\r\nKebijakan pembatalan dan pra-bayar berbeda-beda untuk tiap tipe kamar. Harap masukkan tanggal inap Anda dan periksa ketentuan dari kamar yang Anda butuhkan.\r\n\r\nAnak-anak dan tempat tidur tambahan\r\nKetentuan berikut berlaku jika jumlah tamu melebihi kapasitas kamar:\r\n\r\nGratis! Semua anak di bawah umur 5 tahun menginap tanpa dikenai biaya dengan menggunakan tempat tidur yang sudah ada.\r\n\r\nSemua anak remaja atau orang dewasa dikenai biaya USD 30 per malam per orang untuk tempat tidur tambahan.\r\n\r\nKapasitas maksimal dari tempat tidur tambahan di kamar adalah 1.\r\n\r\nTidak ada kapasitas untuk tempat tidur bayi di kamar.\r\n\r\nTempat tidur tambahan adalah berdasarkan permintaan dan perlu dikonfirmasi oleh pihak hotel.\r\n\r\nBiaya tambahan tidak akan dihitung secara otomatis dalam biaya total dan harus dibayar secara terpisah di hotel.\r\n\r\nHewan peliharaan\r\nBinatang peliharaan tidak diperbolehkan.\r\n\r\nKartu kredit yang diterima\r\nVisa, Euro/Mastercard', 'Superior Room 	Rp 800.000,00 \r\nDeluxe Room 	Rp 900.000,00 \r\nSuperior Triple Rp 1.000.000,00  	 \r\nFamily Room 	Rp 1.200.000,00  	 \r\nSuperior suite 	Rp 2.000.000,00  	 \r\nDeluxe Suit 	Rp 2.700.000,00 \r\nExecutive Suit 	Rp 5.000.000,00  	\r\nExtra Bed 	Rp   250.000,00  	 ', 'A2');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_motel`
--

CREATE TABLE IF NOT EXISTS `daftar_motel` (
  `id_motel` varchar(4) NOT NULL,
  `nama_motel` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `id_penginapan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_motel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_motel`
--

INSERT INTO `daftar_motel` (`id_motel`, `nama_motel`, `alamat`, `id_penginapan`) VALUES
('M01', 'Losmen Famili', 'Jl. Dagen 14, Yogyakarta 55271 Indonesia', 'A3'),
('M02', 'Ndalem Suratin Guest House Jogjakarta', 'Jl. am sangaji 68 yogyakarta YOGYAKARTA', 'A3'),
('M03', 'Ainard Wisma', 'Jl Miliran 14 RT 014/04 YOGYAKARTA', 'A3'),
('M04', 'Anggraeni Losmen', 'Jl KH Agus Salim 14 YOGYAKARTA', 'A3'),
('M05', 'Calegesc Homestay Garden', 'Jl HOS Cokroaminoto 159 YOGYAKARTA', 'A3'),
('M06', 'Candi Losmen', 'Jl Pasar Kembang 5 YOGYAKARTA', 'A3'),
('M07', 'Cermat Losmen', 'Jl Kidul Psr Wates 56 YOGYAKARTA', 'A3'),
('M08', 'Dewa Home Stay', 'Kp Sosrowijayan Wetan Bl GT-I/154 YOGYAKARTA', 'A3'),
('M09', 'Dewi Ratih Losmen', 'Jl Baron Km 8 YOGYAKARTA', 'A3'),
('M10', 'Dian Losmen', 'jl Sosrowijayan Kulon Bl GT-1/160 YOGYAKARTA', 'A3'),
('M11', 'Famili Losmen', 'Jl Dagen 14 YOGYAKARTA', 'A3'),
('M12', 'Kroto Home Stay', 'Jl Prawirotaman Bl MG-3/612 YOGYAKARTA', 'A3'),
('M13', 'Kumala Wisma', 'Jl Mangkuyudan 56 YOGYAKARTA', 'A3'),
('M14', 'Laras Hati Wisma', 'Jl Sosrokusuman Bl DN-1/182 YOGYAKARTA', 'A3'),
('M15', 'Lotus Losmen', 'Jl Sosrowijayan Wetan Bl GT-1/167 YOGYAKARTA 20. L', 'A3'),
('M16', 'Lucy I Losmen', 'Jl Sosrowijayan Wetan Bl GT-I/94 RT 007/02 YOGYAKA', 'A3'),
('M17', 'Makuta Guest House', 'Jl Karangkajen MG-III/839 RT 040/10 YOGYAKARTA', 'A3'),
('M18', 'Mulia Wisma', 'Jl Mantri Jeron MJ-III/810 RT 060/16 YOGYAKARTA', 'A3'),
('M19', 'Hotel Nugraha', 'Jl Parangtritis Gg Sartono MJ III 813 RT 060/16 YO', 'A3'),
('M20', 'Palupi Guest House', 'Jl Prawirotaman MG-III/613 RT 029/08 YOGYAKARTA', 'A3'),
('M21', 'Puri Pertiwi Guest House', 'Jl Timuran MG-III 171 YOGYAKARTA', 'A3'),
('M22', 'Rejeki Home Stay', 'Jl Sosrowijayan Bl GT-1/70 RT 007/02 YOGYAKARTA', 'A3'),
('M23', 'Rose Guest House', 'Jl Prawirotaman 28 YOGYAKARTA', 'A3'),
('M24', 'Sartika Homestay', 'Jl Prawirotaman 44-A YOGYAKARTA', 'A3'),
('M25', 'Sasana Wiratama', 'Jl HOS Cokroaminoto TR-III/430 YOGYAKARTA', 'A3'),
('M26', 'Selecta Losmen', 'Jl HOS Cokroaminoto 177 YOGYAKARTA', 'A3');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_tempat_makan`
--

CREATE TABLE IF NOT EXISTS `daftar_tempat_makan` (
  `id_tm` varchar(4) NOT NULL,
  `nama_tempat` varchar(70) NOT NULL,
  `lokasi` varchar(170) NOT NULL,
  `deskripsi` text NOT NULL,
  `jam_buka` varchar(200) DEFAULT NULL,
  `id_tempat` varchar(4) NOT NULL,
  PRIMARY KEY (`id_tm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_tempat_makan`
--

INSERT INTO `daftar_tempat_makan` (`id_tm`, `nama_tempat`, `lokasi`, `deskripsi`, `jam_buka`, `id_tempat`) VALUES
('B01', 'Sate Sapi Lapangan Karang', 'Kotagede', 'Lokasi tempat kuliner yang terkenal di Kotagede \ndan berada di dekat terminal bis lama Umbulharjo ini cukup tersembunyi bagi mereka yang bukan orang Jogja asli, tapi hanya dengan sedikit petunjuk saja – orang Jogja pasti akan mampu membantu menunjukkan arah ke Lapangan Karang karena memang sate sapi yang satu ini terkenalnya bukan main walaupun bentuk warungnya sederhana, hanya warung tenda biasa di pinggir lapangan kecil.\r\n\r\nKenapa sate ini begitu menarik? Selain tentunya karena rasa yang (pinjam istilah Pak Bondan Winarno) mak nyus, ada yang unik dalam penyajiannya, tidak seperti sate biasa, sate sapi yang satu ini dihidangkan dengan saus kacang (alternatifnya ada bumbu kecap dan bumbu kocor) yang disajikan bersama-sama dengan lontong kuah lodeh tempe (Ha? Lontong kuah lodeh? Yep.), selain itu ada juga lontong sayur sebagai alternatif lontong bumbu kacang. Keunikan lain adalah minuman yang tersedia juga cukup menarik, yakni teh poci dan wedang jahe, secang atau ronde.\r\n\r\nSate sapi unik ini tadinya dijajakan berkeliling oleh Pak Karyo Semito sejak tahun 1948 dan baru menetap di lapangan karang sejak tahun 1955. Kini usahanya diteruskan oleh sang anak, Pak Prapto dan Pak Cipto (yang menjual menu sate sapi yang sama di Jalan Kemasan Kotagede). ', 'dari jam 17.00 hingga 22.30 WIB.', 'N02'),
('B02', 'Gudeg B. Djuminten ', 'Jln. Asem Gede 14 / Jln. Kranggan 69, Yogyakarta', 'Dari sekian banyak gudeg yang terkenal di kota Jogja, Warung Gudeg Ibu Djuminten yang telah berdiri sejak tahun 1926 merupakan salah satu pilihan yang wajib anda coba bila anda ingin menikmati gudeg citarasa asli jogja. Sejak pertama berdiri, warung gudeg yang pusatnya di Jl.Kranggan 69 Jogja ini tidak mengalami perubahan yang signifikan dalam penyajian maupun dari segi interior dan arsitektur bangunan, ini dimaksudkan untuk menjaga keorisinalitas suasana yang tercipta dari awal berdirinya usaha keluarga tersebut.\r\n\r\nWarung Gudeg B. Djuminten saat ini telah diteruskan kepada generasi kedua yang sekaligus anak dari B.Djuminten. Sepanjang perjalanannya, kini warung Gudeg Ibu Djuminten ini pun sudah memiliki cabang di Jl. Asem Gede, Jogjakarta. Bahkan, kini gudeg B. Djuminten telah hadir di kawasan Bintaro, Tangerang.\r\n\r\nGudeg Ibu Djuminten sering menjadi tujuan tokoh maupun pejabat negara apabila sedang berkunjung di Jogja, bahkan Presiden Indonesia pun sering mampir menikmati gudeg ini. Sehingga sering dijumpai mobil - mobil plat merah berjejer parkir di depan warung gudeg Ibu Djuminten. Anda penasaran ? langsung saja kunjungi gerainya dan nikmati gudeg asli Jogja langganan Presiden ini.', '', 'N03'),
('B03', 'Gudeg Permata Bu Pujo', ' Jl. Gadjah Mada (sisi barat bioskop permata), Yogyakarta ', 'Warung Gudeg Permata Bu Pujo tidak pernah sepi dari para pengunjung. Dari awal berdirinya warung ini memiliki sejarah panjang dalam perkembangannya hingga sekarang. Berdiri sejak tahun 1951 dan sekarang dikelola oleh anak-anak Bu Pujo. Pelanggan awal warung ini yaitu para penonton Bioskop Permata, karena letaknya tepat di sebelah barat bioskop. Meskipun bioskopnya sudah sepi, namun warung gudeg ini tidak kehilangan penggemarnya.\r\n\r\nBeroperasi mulai pukul 21.00 WIB hingga dini hari warung ini kerap dipadati pembeli yang ingin menikamti gudeg basah khas racikan keluarga bu Pujo yang rasanya dominan gurih, tidak terlalu manis dengan sambal krecek yang pedas ditemani air jeruk atau teh manis hangat. Harga dipatok mulai Rp 8.000,00 untuk tiap porsinya tergantung lauk yang dipilih disediakan  tempe, tahu, ayam kampung atau telur bebek', '', 'N03'),
('B04', 'Gudeg Bu Ahmad  ', 'Selokan Mataram UGM, Yogyakarta', 'Satu lagi tempat makan gudeg yang terkenal dan recommended untuk anda coba dan nikmati. Warung gudeg Bu Ahmad, terletak di sebelah utara fakultas Kehutanan UGM, dengan plang besar berwarna coklat, pasti anda akan mudah menemukannya saat menyusuri sisi utara selokan mataram Fakultas Kehutanan UGM. Gudeg Bu Ahmad termasuk sebagai gudeg kering, atau gudeg yang tidak berkuah. Rasanya cukup lebih manis dari gudeg basah. Pada siang hari warung ini ramai pengunjung. Ada pengunjung yang makan di tempat atau dibawa pulang dalam bentuk nasi kotak.\r\n\r\nGudeg Bu Ahmad juga menerima pesanan untuk berbagai acara. Apalagi menjelang atau sesudah lebaran, warung ini ramai pengunjung tidak hanya dari Kota Jogja, tetapi juga dari luar kota. Selain itu, banyak yang menjadikan gudeg ini sebagai oleh-oleh untuk keluarga dan sanak saudara di luar kota', '', 'N03'),
('B05', 'COLONIAL CUISINE', 'Jl. Timoho No. 31, di depan Ganesha APMD, Yogyakarta', '\r\nRestauran dengan menu India pertama di Yogyakarta dengan koki asli India.\r\n\r\n', 'setiap hari dari pukul 11 pagi - 10 malam.', 'N01'),
('B06', 'FOODFEZT', 'Jl. Kaliurang Km. 5,5 Jogjakarta', ' \r\nSemacam Tempat Makan menyediakan makan indonesia, masakan barata dan Cina.\r\n\r\n\r\n\r\n', 'Setiap Hari jam 10 pagi hingga 11 malam', 'N01'),
('B07', 'KEDAI KEBUN', 'Jl. Tirtodipuran No. 3 Yogyakarta', ' \r\nMenyajikan makanan sehat bagi Anda ketika jauh dari rumah. Dapur kami menyajikan berbagai macam menu sesuai selera Anda, dengan menu vegetarian atau non-vegetarian, masakan Indonesia dan Barat.\r\n\r\n', 'setiap hari, kecuali Selasa, KKF libur. Jam buka restoran: 11:00 siang – 11:00 malam.', 'N01'),
('B08', 'LANGGENG BISTRO ', 'Jl. Suryodiningratan no 37, Yogyakarta', '\r\nMenyajikan konsep unik dalam menikmati kuliner di dalam suasana seni. Nuansa ruang kontemporer dikombinasikan dengan aneka menu Barat dan Timur.\r\n\r\n\r\n\r\n', 'setiap hari dari pukul 11:30-2:30 siang, dan 6:00 – 11:00 malam.', 'N01'),
('B09', 'R&B Grill - Indoguna Meatshop & Grocery', 'Jl. R.W. Monginsidi 37 Jogjakarta', '\r\nMenyediakan Wagyu beef, Black Angus beef, US beef,\r\nAustralian beef, lamb chop, sausages, pasta, cold cuts, assorted cheese, aneka seafood, produk dairy, aneka menu sarapan, sayur organik dan katering.\r\n\r\n\r\n\r\n\r\n', '', 'N01'),
('B10', 'NANAMIA PIZZERIA', 'Jl. Moses Gatotkaca B 13 Gejayan - Jogjakarta', '\r\nPizza tradisional untuk orang modern. Pizza & sajian rasa asli Italia disajikan dalam nuansa Mediterranean.\r\n\r\n', '', 'N01'),
('B11', 'SANGAM House', 'Jalan Kaliurang Km 5.6, Jalan Pandega Siwi, 14 Jogjakarta', '\r\nRestoran India pertama di Jogjakarta. Terdapat juga kelas yoga, butik India dan galeri seni.\r\n\r\n', '', 'N01'),
('B12', 'Angkringan Kali Code', 'Jalan I Nyoman Oka, Kota Baru. Kali Code, Yogyakarta', 'Angkringan Kali code atau juga dikenal dengan Kopi Code adalah sebuah lokasi di sekitar Kali Code Kotabaru Yogyakarta yang dimanfaatkan untuk membuka warung-warung lesehan yang menyedikan makanan tradisional. Keberadaan warung-warung ini  telah mendapat ijin oleh Kecamatan Kotabaru sehingga tidak perlu cemas untuk berkunjung ke Kopi Code.\r\n\r\nPara pedagang yang tergabung dalam paguyuban dengan nama "Persatuan Kali Code" ini menjajakan makanan tradisional seperti nasi kucing yang juga dikenal dengan angkringan, roti bakar, pisang bakar, mie instan serta minuman tradisional seperti kopi, teh, dan jahe. lokasi ini menjadi salah satu alternatif untuk remaja dan wisatawan untuk berkumpul. Meskipun demikian banyak pengunjung dari kelas pekerja, seniman, mahasiswa bahkan pelajar yang sering bertemu  di tempat ini.\r\n\r\nTempat ini menjadi cukup ramai karena harganya yang relatif terjangkau, mulai dari Rp.1000,- untuk gorengan sampai Rp. 5000,- untuk makanan-makanannya. Harga yang relatif murah menarik para pengunjung untuk datang selain untuk menikmati suasana yang cukup tradisional karena berupa lesehan di pinggiran sungai Code.\r\n\r\nApabila anda ingin berkunjung ke lokasi Angkringan Kali Code ini, tempatnya cukup mudah untuk ditemukan karena berada di tengah kota Yogyakarta. Lokasinya berada di Kotabaru, pinggiran Sungai Code dekat dengan Restauran Mcdonal. Angkringan Kali Code ini dapat menjadi alternatif anda untuk kuliner sekaligus berwisata.', '', 'N04'),
('B13', 'Warung Bu Ageng', 'Jalan Tirtodipuran no. 13 Mantrijeron, Yogyakarta', '\r\nButet Kartaredjasa sukses di dunia seni peran. Itu kabar biasa. Apakah kali ini kesuksesan juga mengikutinya di dunia kuliner? Itu masih misteri. Saat ini, Butet mencoba peruntungannya melalui bisnis yang ia beri nama Warung Bu Ageng.\r\n\r\nBu Ageng dan Pak Ageng merupakan panggilan kesayangan dari cucu Butet dan istrinya, Rulyani Isfihana. Ruly menjadi inspirasi bagi Butet dan keluarga untuk membuat warung dengan konsep masakan rumahan. Warung Bu Ageng memiliki misi untuk menonjolkan keaslian kuliner Indonesia di wilayah yang sebagian besar dipenuhi restoran western. Pengelola mengharapkan keberadaan warung menjawab rasa penasaran para wisatawan yang ingin menikmati kelezatan masakan asli Indonesia.\r\n\r\nWarung Bu Ageng merupakan kolaborasi ide antara Butet dan keluarga. Dalam hal arsitekturnya, Butet dan keluarga bekerjasama dengan arsitek Eko Prawoto yang merancang pembagian ruang dan arsitektur Warung Bu Ageng.Perpaduan ini menghasilkan sebuah tempat makan dengan suasana yang nyaman. Apalagi didukung oleh kelezatan masakan yang luar biasa. Seperti kata pepatah, sekali mendayung dua-tiga pulau terlampaui. Begitu juga ketika mengunjungi Warung Bu Ageng: sekali datang, langsung mendapat menu yang menggoyang lidah, dan tempat yang nyaman.\r\n\r\nButet memang berbeda. Jika orang lain berbisnis makanan cepat saji, maka Butet memilih tahu diri dan realistis; bisnis masakan rumahan, hasil karya istri sendiri. Keahlian memasak Bu Ageng yang mumpuni terbukti dapat menghasilkan menu-menu unik nan lezat dan menggoda seperti lele njingkrung, bacem kambing, semur lidah, paru ketumbar, bubur duren mlekoh, sambal kutai, dan menu-menu lain yang sama lezatnya.\r\n\r\n\r\n', 'Jam Buka: Selasa - Minggu Pukul 11.00 - 23.00 WIB Hari Senin libur', 'N04'),
('B14', 'Restoran Pacific', 'Jl. Magelang Km. 4 Yogyakarta ', 'Beragam menu ala carte yang menjadi menu andalan seperti Juanlo spesial, Sapi lada hitam, Cumi donat, Ayam goring pacific, Udang Bago Saos Perancis dan masih banyak menu pilihan lainnya yang siap disajikan spesial untuk Anda.\r\n\r\nDengan chef berpengalaman pada masing-masing bagiannya, restoran ini tidak perlu diragukan lagi reputasinya dalam memberikan setiap menu masakan yang Anda kehendaki. Pelayanan yang profesional juga menambah kenyamanan dan kepuasan tersendiri bagi Anda ketika menikmati makanan di restoran China ini.\r\n\r\nKeluasan dan kenyamanan suasana di dalam ruangan yang dilengkapi dengan fasilitas standar restoran mewah yaitu AC dan karaoke akan menambah nilai lebih pada citra restoran yang elegan ini. Dengan tambahan sebuah gedung pertemuan yang besar dan luas dengan kapasitas ribuan orang, restoran ini juga dapat Anda gunakan sebagai tempat yang representatif untuk berbagai acara besar.\r\n\r\n\r\n', 'Setiap hari mulai pukul 10.00 - 16.00 WIB & 18.00 - 22.00 WIB', 'N01'),
('B15', 'FM Cafe & Resto  ', 'Jl. Sosrowijayan No. 10 Yogyakarta', 'Dengan nama FM cafe & Resto, tempat yang sesungguhnya memang sebuah restoran ini dibangun pertama kali pada tahun 2002. Nama FM cafe & Resto sendiri merupakan sebuah kepanjangan dari "Full Musik" yang memang merupakan bagian tak terpisahkan dari resto ini. Iringan musik yang senantiasa menemani para tamu ketika menikmati hidangan spesial yang disajikan oleh restoran yang buka mulai pukul 06.00 pagi ini.\r\n \r\nBerbagai hidangan yang ditawarkan resto ini banyak disukai oleh para turis mancanegara yang berkunjung ke tempat ini untuk sekadar refreshing dan relaxing. Disamping suasana khas restoran yang berbeda dengan tempat lain di Kota Jogja. Berderet lukisan yang terpampang memenuhi dinding restoran yang terbuat dari kayu ini memberikan kesan artistik yang kental yang mampu memberikan nuansa tersendiri bagi para pengunjungnya.\r\n \r\nRestoran ini menawarkan berbagai menu spesial yang terdiri dari European foods, Italian foods, Chinese foods, Indonesian foods, Vegetarian foods dan berbagai minuman. Setiap Sabtu malam, di restoran ini ada penampilan band lokal dengan konsep akustik yang siap menemani Anda selagi menikmati menu restoran ini.\r\n \r\nMENU\r\n- European foods\r\n- Italian foods\r\n- Chinese foods\r\n- Indonesian foods\r\n- Vegetarian foods\r\n- dan berbagai minuman\r\n\r\n\r\n', 'Pukul 06.00 - 01.00 WIB', 'N01'),
('B16', 'Warung kopi Blandongan', 'Jalan Sorowajan Baru No.11, RT/RW 15/16, desa sorowajan Lama, kec. Banguntapan, kab. Bantul. Yogyakarta.desa sorowajan Lama, Banguntapan. Bantul. Yogyaka', '\r\nWarung kopi Blandongan buka setiap hari pukul 08.00 - 00.00 WIB. Warung kopi ini memiliki tempat yang sesuai untuk nongkrong dan mengobrol dengan teman. Harga di warung kopi ini sangat terjangkau dengan kopi yang disajikan sangat berciri khas berbeda dengan warung kopi lainnya. Banyak anak muda Jogja dengan berbagai kalangan suka untuk menghabiskan waktu di warung kopi ini.', NULL, 'N04'),
('B17', 'Lusidus Vegetarian', 'Ruko Babarsari no.21, Sleman, Yogyakarta', 'Lusidus adalah sebuah Depot Vegetarian yang berada di Komplek Ruko Babarsari Yogyakarta. Meskipun menyediakan makanan nabati dan vegetarian yang tidak mengandung unsur hewan dan daging-dagingan, namun menu olahan yang disediakan di Depot Lusidus ini cukup lengkap dan bervariasi. Apabila pengunjung menginginkan menu nabati, Depot ini menyediakan cah kangkung, cah jamur, cah brokoli, mi goreng, nasi goreng, dan aneka olahan tahu. Selain itu, ada tempe kremes, sup jagung dan asparagus.\r\n\r\nYang menarik adalah apabila pengunjung ingin menikmati makanan olahan daging buatan, yang sama sekali tidak mengandung unsur daging melainkan gluten (olahan tepung) yang menyerupai daging, pengunjung dapat memesan sate, ham goreng, salmon, sarden, beef chunk, casio, daging kambing, sosis, hingga ikan asam manis. Ayam kremes dan chicken nugget dan seluruhnya dijamin tidak mengandung unsur daging. Dengan menu ini, maka kepuasan pengunjung yang ingin mencari variasi makanan pengganti daging akan terpuaskan.\r\n\r\nLusidus memang dikhususkan untuk para vegetarian, namun dalam perkembangannya tidak hanya vegetarian yang datang namun juga para pecinta kuliner. Dengan mengurangi unsur daging-dagingan akan menyeimbangkan gizi serta lebih menyehatkan tubuh. Di Depot ini, jenis makanan yang di sediakan tidak murni vegan karena dalam pengolahan beberapa makanannya masih menggunakan telur. Apabila pengunjung tidak ingin telur, makanan juga dapat diolah tanpa telur.\r\n\r\nRasa dari olahan daging tersebut memang tidak sama persis seperti daging, namun cukup mendekati dan dapat mengobati kerinduan akan daging apabila anda telah lama tidak makan daging.', NULL, 'N01'),
('B18', 'Djendelo Cafe Yogyakarta', 'Jl. H. Affandi - Gejayan No. 5 Yogyakarta', '\r\nDengan nama Djendelo, tempat makan dan minum yang dikemas dengan sederhana ini benar-benar ingin menjadi ''Djendelo'' bagi para tamunya yang datang. Betapa tidak, posisinya yang terletak tepat di lantai atas toko buku diskon Togamas memungkinkan pengunjung untuk ''menengok'' apa saja yang terjadi ''di luar'' maupun ''di dalam'' tempat ini di samping memberikan akses kepada pengunjung untuk memilah dan memilih buku-buku yang terdapat di toko buku Togamas.\r\n\r\nCoffee shop yang Jogja banget ini dibuka sejak Februari 2005 di jalan  H. Affandi - Gejayan Yogyakarta di lantai dua toko buku diskon Toga Mas. Dengan disain yang sederhana khas dengan bangku kuno terbuat dari anyaman rotan dan lantai kayu, tempat minum ini semakin menguatkan image-nya sebagai tempat untuk berinteraksi yang nyantai dan nyleneh bagi kawula muda Kota Gudeg. Aroma klasik semakin tercium dari tempat yang menyuguhkan hidangan yang serba murah ini ketika memandangi beberapa pernik kuno terpampang di beberapa sudut tempat ini. Sebagian besar koleksi tersebut merupakan pemberian khusus dari pengunjung dan sebagian lagi merupakan koleksi dari pemilik tempat ini.\r\n\r\nSambil menikmati hidangan khas tempat ini yakni aneka minuman dan makanan khas Jawa dalam bungkusan yang sederhana, Anda dapat pula menikmati beberapa kegiatan yang sering diadakan tempat ini seperti diskusi, bermacam acara sederhana atau sekadar melihat pameran fotografi yang berlokasi di sebelah timur tempat ini.\r\n\r\nMENU\r\n- Nasi bungkus\r\n- Mie Jawa\r\n- Aneka Kopi\r\n- Aneka Coklat\r\n- Aneka Es krim\r\n- Aneka Yogurt\r\n- Aneka Teh\r\n- Aneka Milkshake\r\n- Aneka Saribuah\r\n\r\n', 'Senin - Sabtu: pukul 12.00 - 23.00 WIB Minggu: pukul 16.00 - 23.00 WIB', 'N01'),
('B19', 'Banyu Mili', 'JL.Godean KM .4,5 Kwarasan - Yogyakarta', 'Jika anda ingin bersantap santai bersama keluarga dengan nuansa alam yang segar menyejukkan, anda bisa mampir ke Restoran Banyu Mili. Menawarkan menu nusantara yang menarik ditambah fasilitas yang memungkinkan anda untuk tidak sekedar berwisata kuliner tetapi juga rekreasi. Tersedia gubuk-gubuk (saung) disekitar danau buatan, lengkap dengan fasilitas pemancingan dan kolam renang, anda bisa sekedar menikmati taman yang ditata asri ataupun mengoperasikan alat permainan yang memang telah disediakan disana.\r\n\r\nMenu makanan yang jadi andalan adalah olahan Udang juga ikan Gurame. Menu spesial Banyu Mili yakni Udang Bakar Madu dan juga olahan Kepiting. Dengan pelengkap cah kangkung, tahu maupun tempe goreng plus aneka sambal yang menggoda selera. Untuk Gurame, coba anda cicipi Gurame Bumbu Cobek. Jangan kuatir soal harga, harga yang di bandrol sangat masuk akal, sesuai dengan kepuasan yang akan anda dapatkan.\r\n\r\n', 'mulai pukul 10.00-22.00 WIB,  arena rekreasinya dibuka sejak pukul 07.00-18.00 WIB', 'N01'),
('B20', 'Restoran Bumbu Desa', 'Jl. Kartini No. 8 Sagan Yogyakarta ', 'Banyak sekali menu makanan dan minuman yang bisa anda nikmati di restoran ini, menonjolkan ciri khas masakan sunda yang memanjakan lidah seperti aneka tumisan, aneka pepes, aneka lauk pauk olahan ayam (bakar atau goreng), gepuk, jeroan sapi, tahu, tempe, karedok, macam-macam sambal segar dari sambal mangga, sambal dadak, sambal terasi, ditemani minuman yang beraneka ragam dari aneka jus buah, es kelapa muda, es goyobod, es cingcau hijau, es kaelci tiis, soft drink, dan banyak lagi lainnya. Soal harga, Bumbu Desa memberikan harga yang variatif dan pastinya ramah dengan dompet anda.\r\n\r\nMengedepankan kenyamanan dan kepuasan pengunjung membuat Restoran Bumbu Desa ini jarang sepi pengunjung. Cara penyajian dan pelayanan makanan yang beda dari restoran lain pada umumnya menjadi ciri khas restoran ini. Anda dapat memilih sendiri menu makan yang akan anda nikmati dengan metode prasmanan, lauk pauk yang anda pilih bisa dihangatkan kembali di dapur resto, atau ada beberapa pilihan paket yang telah disediakan untuk anda yang tidak mau pusing dengan banyaknya jenis makanan juga minuman yang ditawarkan.\r\n', 'setiap hari buka dari pukul 10.00-22.00 WIB. ', 'N01'),
('B21', 'Jambon Resto', 'Jl. Kabupaten KM.3 Dusun Jambon Kelurahan Trihanggo Gamping Sleman', '\r\nRestoran Jambon Resto menyediakan menu olahan dengan berbahan dasar ikan air tawar seperti gurameh, nila, lele, udang galah. Di sini juga menyediakan beberapa menu olahan berbahan dasar ikan laut seperti hiu, kepiting, kerang, cumi. Jambon Resto juga menyediakan menu olahan dari tahu, tempe, ayam, cah kangkung, aneka sop, aneka mie, aneka nasi goreng, dan beberapa varian sambal yang akan memuaskan hobi kuliner anda. Makanan dibandrol dengan harga yang cukup terjangkau untuk semua kalangan, mulai dari Rp 10.000 – Rp 110.000 dan Juga terdapat menu paket mulai dari 5 orang hingga 25 orang.\r\n\r\nJambon Resto memiliki fasilitas yang terbilang komplit, diantaranya hall terbuka yang cukup untuk menampung 200 orang, pendopo yang menampung 75 orang juga terdapat meeting room VIP dengan kapasitas 150 orang untuk mengadakan pertemuan-pertemuan yang sifatnya lebih privat. Gazebo merupakan ciri khas dari Jambon Resto, disini terdapat 36 gazebo lesehan yang dibangun diatas air sehingga para pengunjung dapat menikmati hidangan sambil melakukan memancing. Selain itu tersedia fasilitas tambahan berupa lahan parkir luas berkapasitas lebih dari 100 mobil, screen & projectoraudio system, flying fox, ATV, juga memancing. Cukup komplit bukan fasilitas yang disuguhkan, pasti asik mengajak keluarga untuk menikmati liburan di Jambon Resto.\r\n', NULL, 'N01'),
('B22', 'Kedai Makan Aliyah', 'Jl. Flamboyan CT X/15 Depok, Yogyakarta', 'Bingung mencari tempat makan yang bisa sekalian untuk bersantai ? Silakan anda mampir ke Kedai Aliyah. Tempat makan yang suasananya asyik, bersih, dan nyaman. Interior ditata seperti beranda rumah yang hommy sekaligus asri, ditambah fasilitas free hotspot membuat siapapun betah singgah kemari.\r\n\r\nMenu yang ditawarkan ada Capcay, Nasi Goreng, Aneka penyetan mulai dari ayam, lele, telur, tahu tempe, juga empal. Tersedia pula menu paketan mulai dari Rp. 11.500 - Rp. 13.500,00. Untuk paket harga Rp. 11.500,00 saja anda sudah bisa menikmati Chicken Wing + Nasi + French Fries + Orang Float / Milkshake. Selain menu makanan berat, anda bisa juga pesan menu makanan ringan seperti Kentang Goreng Mayo, Tela Barbeque, atau Chicken Wings dengan harga yang amat sangat terjangkau apalagi untuk kantorng mahasiswa. Jangan ketinggalan untuk menikmati Ayam Tulang Lunak khas Kedai Aliyah yang pasti bikin anda ketagihan.\r\n\r\nHarga yang ditetapkan untuk makanan berkisar Rp. 4.500,00 - Rp. 9.500,00 sedangkan untuk minuman kira-kira Rp. 1.500,00 - Rp. 4.500,00 dengan pilihan Teh, Jeruk yang bisa disajikan panas juga dingin, Ice Lemon Tea, Aneka Soft Drink, dan masih banyak lainnya. Anda bisa mampir saat jam makan siang hingga malam hari. Tentunya Kedai Aliyah bisa jadi pilihan yang menarik untuk referensi kuliner anda. \r\n', NULL, 'N04'),
('B23', 'Bumbu Pawon  ', 'Jl. Demangan Baru No.19, Yogyakarta', '\r\nAsri dengan tatanan tumbuh-tumbuhan yang cantik menghiasai area depan resto. Terbagi menjadi dua pilihan, indoor maupun outdoor. Untuk indoor, interior ditata dengan paduan unsur modern dan tradisional, disediakan pula Ruang VIP A dengan kapasitas 15 orang atau VIP B dengan kapasitas 20 orang. Sedangkan bagi anda yang suka dengan nuansa serba alami bisa memilih duduk di area outdoor. Fasilitas lainnya di Bumbu Pawon ada Wifi dan Ruang Meeting ber-AC.\r\n\r\nMenu makanan yang ditawarkan dan bisa anda pilih misalnya Sop Buntut, Rawon, Sop Buntut Goreng, Rawon Buntut, Tahu Campur, Rujak Cingur, Lontong Kikil, pelengkap lainnya ada Nasi Goreng, Mie Goreng, Nasi Pecel, Gado-gado, dan banyak lagi lainnya. Untuk menu minuman sangat beragam ada Es Buah, Es Campur, Cappucino, Moccacino, aneka minuman tradisional dan lain-lain.\r\n\r\nRange harga makanan mulai dari Rp.15.000,00-Rp.32.500,00 sedangkan minuman Rp.3.000,00-Rp.12.000,00 belum termasuk ppn sebesar 10%.\r\n  ', 'mulai waktu sarapan yaitu pukul 07.00-10.00 WIB dan  untuk waktu makan siang hingga malam pukul 22.00 WIB.', 'N01'),
('B24', 'Pawon Sawah Resto', 'Wisata Kuliner Kampung Pringwulung, Condong Catur, Depok - Sleman ', 'Resto dengan konsep bangunan natural etnik nan sederhana ini memiliki kapasitas hingga 200 orang. Pawon Sawah Resto merupakan restoran yang sangat fleksibel, bisa untuk semua kalangan (all segment) dan cocok untuk segala acara misalnya acara nonton bareng pertandingan bola, perayaan ulang tahun, arisan, reuni, launching produk, rapat, bahkan resepsi pernikahan dengan tema garden party, paket menu sajian bisa disesuaikan dengan keinginan anda dengan harga yang kompromi. \r\n\r\nPawon Sawah Resto menawarkan menu makanan yang variatif, tersedia aneka pilihan Nasi Goreng Cumi, Udang, Jamu, Bakso + Sosis, Ayam, atau yang spesialnya yakni Nasi Goreng Pawon Sawah. Ada pula Capcay goreng atau rebus, Bakmi Goreng juga rebus, Ayam Goreng /  Bakar, Lele Goreng / Bakar, Telur Dadar, Tempe Tahu Goreng, Ikan Nila Goreng maupun bakar serta olahan seafood seperti Udang Pedas dan Cumi Pedas, bagi penyuka pedas jangan kuatir Pawon Sawah Resto memiliki pilihan sambal yang mampu membangkitkan semangat santap makan anda. Bila anda tidak ingin "makan berat", bisa pesan menu snack seperti Pisang Bakar, Roti Bakar atau Pawon Cake yang beraneka rasa, French Fries, Pizza Mie, Pempek, dan Banana Split. Menu minuman pun tak kalah beragamnya mulai dari soft drink, teh, kopi, susu, jahe, wedang uwuh, aneka jus buah segar, vanilla latte, hot chocolate dan banyak lagi lainnya dibandrol dengan harga sangat terjangkau mulai Rp. 1.500,00 saja. Harga makanan tak kalah menariknya, mulai dari Rp.5000,00. \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'setiap hari mulai pukul 16.00-01.00 WIB.  Untuk pemancingan buka setiap hari mulai pukul 08.00 - 16.00 WIB ', 'N04');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_villa`
--

CREATE TABLE IF NOT EXISTS `daftar_villa` (
  `id_vila` varchar(4) NOT NULL,
  `nama_vila` varchar(30) NOT NULL,
  `alamat` varchar(70) NOT NULL,
  `fasilitas` text NOT NULL,
  `harga` text NOT NULL,
  `id_penginapan` varchar(4) NOT NULL,
  PRIMARY KEY (`id_vila`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_villa`
--

INSERT INTO `daftar_villa` (`id_vila`, `nama_vila`, `alamat`, `fasilitas`, `harga`, `id_penginapan`) VALUES
('V01', 'THE KHARMA VILLAS', 'Jl. Padma, Palagan, Yogyakarta', 'The Kharma Villas adalah luxurious private villa pertama di Jogja. Villa ini menawarkan ketenangan dan privasi tinggi. Villa dengan fasilitas mewah menjadi tempat yang sempurna untuk berlibur, berbagi kasih sayang dan bersantai bersama keluarga atau teman\r\n# Gratis antar dan jemput dari Bandara Internasional Adisucipto dengan mobil ber-AC\r\n# Minuman segar Selamat Datang tanpa alkohol dan handuk dingin untuk wajah tersedia saat kedatangan\r\n# Layanan cepat Check-in di dalam villa\r\n# Buah-buahan segar & bunga pada saat kedatangan\r\n# Gratis 2 botol air mineral di setiap kamar selama menginap\r\n# Sarapan model Gourmet untuk maksimal 6 orang\r\n# Tersedia layanan butler dan petugas keamanan 24 jam di dalam komplek Villa', 'Rp. 5.000.000	', 'A1'),
('V02', 'VILLA MAWAR ASRI', 'Jl. Boyong II Kaliurang Barat, Kaliurang, Yogyakar', 'Sebuah villa mewah untuk mengadakan company retreat, berbulan madu, atau sekedar menikmati liburan di surga tropis Kaliurang yang memiliki pemandangan eksotik ke arah Kota Yogyakarta dan Gunung Merapi.\r\n    * Minimal pemesanan 5 kamar\r\n    * Setiap penambahan kamar dikenakan biaya Rp. 200.000 / kamar / malam. Harga sudah termasuk sarapan\r\n', 'Rp. 225.000', 'A1'),
('V03', 'VILLA ERLANGGA', 'Jl. Tlogo Putri, Kaliurang, Yogyakarta', 'Villa Erlangga terletak di Jalan Tlogo Putri kawasan \nKaliurang. Lokasinya sangat dekat dengan taman \nwisata Tlogo Putri. Villa ini memiliki 3 kamar dengan \nfasilitas TV dan kamar mandi dalam.', 'Rp 400.000/6 orang', 'A1'),
('V04', 'VILLA SRIKANDI', 'Jl. Tlogo Putri, Kaliurang, Yogyakarta', 'Villa Srikandi adalah villa yang letaknya dekat dengan \nwisata Tlogo Putri Kaliurang. Villa ini sangat cocok \nuntuk keluarga atau rombongan karna terdapat \n11 kamar dengan fasilitas TV, air minum dan handuk. ', 'Rp 125.000 s.d 150.000', 'A1'),
('V05', 'VILLA HANNA', 'Jl. Tlogo Putri, Kaliurang, Yogyakarta', 'Villa Hanna berada di kawasan Kaliurang yang terkenal bersahabat dan nikmat untuk di kunjungi. Dengan berbagai fasilitas seperti air panas, kulkas,TV dan juga keramah-tamahan penduduk desa, Anda pasti akan segera memulihkan hati dan pikiran Anda. Villa ini memiliki 8 kamar. ', 'Rp 750.000 s.d Rp 1.100.000', 'A1'),
('V06', 'VILLA SATYAWATI', 'Kaliurang, Yogyakarta ', 'Villa Satyawati terletak di kawasan wisata Kaliurang. Dari Villa ini Anda bisa menikmati pemandangan yang sangat menakjubkan, karena villa ini berada di Kaliurang bagian atas. Villa ini memiliki 3 kamar yang dilengkapi dapur, kulkas serta TV.', 'Rp 400.000', 'A1'),
('V07', 'VILLA SRI RAHAYU', 'Kaliurang, Yogyakarta ', 'Villa Sri Rahayu berada di kawasan wisata sejuk, Kaliurang. Villa ini minimalis namun sangat nyaman untuk ditinggali. Villa ini memiliki 5 kamar dan tidak menyediakan fasilitas TV ataupun sarapan. ', 'Rp 700.000 ', 'A1'),
('V08', 'VILLA MILLENNIUM', 'Jl. Astomulyo, Kaliurang, Yogyakarta', 'Vila Millennium terletak di kawasan sejuk Kaliurang. Lokasi Villa Millennium ini berada dekat dengan Rekreasi Taman Anak-Anak, Kaliurang. Villa ini memiliki 17 kamar yang dilengkapi dengan dapur, kulkas dan TV. ', 'Rp 1.750.000', 'A1'),
('V09', 'VILLA TAMAN EDEN 1', 'Jl. Astomulyo, Kaliurang, Yogyakarta', 'Villa Taman Eden 1 berada di kawasan wisata Kaliurang. Lokasinya dekat dengan maskot wisata Kaliurang. Hotel ini memiliki 95 kamar yang dilengkapi dengan fasilitas sarapan, air panas dan TV. ', 'Rp 290.000 s.d Rp 1.300.000', 'A1'),
('V10', 'VILLA BUKIT TURGO INDAH', 'Jl. Boyong, Kaliurang, Yogyakarta ', 'Villa Bukit Turgo Indah terletak di kawasan sejuk, Kaliurang. Kawasan yang ramai dan sangat cocok untuk tempat berlibur bersama keluarga. Villa ini memiliki 21 kamar lengkap dengan dapur, air panas dan TV. ', 'Rp 1.000.000 ', 'A1'),
('V11', 'VILLA KALIURANG  ', ' Jl. Boyong 1 Kaliurang, Yogyakarta', 'Villa Kaliurang terletak ditengah kawasan wisata Kaliurang. Kawasan sejuk yang jauh dari kebisingan kota. Villa ini memiliki 6 kamar yang dilengkapi fasilitas dapur, TV, ruang makan, taman di halaman depan dan belakang serta ruang meeting. ', 'Rp 880.000 untuk satu cottage', 'A1'),
('V12', 'FUJI VILLA', 'Jl. Pelajar 8, Kaliurang, Yogyakarta', 'Fuji Villa terletak di taman lanskap di kawasan wisata Kaliurang. Berjarak 26 km dari pusat kota Yogyakarta. Memiliki 4 pilihan kamar ber-AC dengan dinding kamar berpanel kayu. Vila ini menawarkan fasilitas bathtub, TV, Wi-Fi gratis, parkir gratis, dan layanan wisata. ', ' Rp 280.000 s.d 400.000 ', 'A1'),
('V13', 'VILLA CEMARA', 'Jl. Boyong, Kaliurang, Yogyakarta ', 'Villa Cemara berada di jalan Boyong kawasan Kaliurang. Kawasan nyaman yang sejuk untuk wisata Anda. Villa ini memiliki 3 kamar dengan fasilitas dapur, TV, kulkas dan air panas. ', ' Rp 750.000', 'A1'),
('V14', 'VILLA FIRDAUS', 'Kaliurang, Yogyakarta', 'Villa Firdaus merupakan sebuah rumah di Kaliurang yang memiliki suasana sejuk dan nyaman. Villa ini memiliki 3 kamar dengan 2 kamar mandi yang dilengkapi fasilitas air panas dan dapur. ', 'Rp 1.500.000', 'A4'),
('V15', 'AGRAPANA GUEST HOUSE', 'Gg. Pandega Siwi 6A, Jalan Kaliurang Km 5,6 Yogyakarta', 'Agrapana Guest House dibangun dengan konsep modern minimalis yang disewakan per kamar. Terletak di lokasi strategis dekat Kampus UGM dan pusat kuliner Jalan Kaliurang, Agrapana Guest House akan menjadi hunian yang nyaman saat menginap di Jogja.\r\nDengan fasilitas:\r\n* 4 kamar tidur\r\n* AC, TV, wifi\r\n* 2 kamar mandi dalam, 1 kamar mandi luar (shower, water heater)\r\n* Ruang tamu\r\n* Ruang makan\r\n* Ruang komunal\r\n* Dispenser,kulkas,toaster, rice cooker\r\n* Dapur dengan kitchen set\r\n* Garasi luas\r\n', 'Reguler Daily	Rp. 130.000	AC, shared bathroom Deluxe Daily	Rp. 170.000	AC, private bathroom Reguler Monthly	Rp. 1.400.000	AC, shared bathroom Deluxe Monthly	Rp. 1.800.000	AC, private bathroom', 'A1'),
('V16', 'TIGALIMA HOMESTAY', 'Jl. Affandi (Gejayan), Kepuh GK III / 946 Yogyakarta', 'TigaLima Homestay menjanjikan kenyamanan bak tinggal di rumah sendiri dengan fasilitas mewah dan harga murah meriah. Homestay ini menghadirkan hunian khas Indonesia, dikelilingi taman tropis yang sejuk, dan bisa disewa harian atau bulanan.\r\nLayanan & Fasilitas Villa\r\n* 17 unique rooms\r\n* AC\r\n* Private Bathroom\r\n* Hot and Cold Water\r\n* Refrigerator\r\n* TV (TV Kabel untuk kamar VIP Deluxe)\r\n* 24 hours Free WIFI Internet Access (speed up to 2 MB)\r\n* 2 Shared Kitchens and 2 Living Rooms\r\n* Private Patio & Garden\r\n* Car and Motorbike Rental\r\n* Laundry Service\r\n* Tour and activity on request\r\n\r\n', 'Standard Daily	        Rp. 140.000	\r\nSuperior Daily	        Rp. 175.000	\r\nVIP Deluxe Daily	Rp. 275.000	\r\nStandard Monthly	Rp. 2.200.000	\r\nSuperior Monthly	Rp. 2.500.000', 'A1'),
('V17', 'D''PARAGON', 'Jl. Wulung 443, Pringwulung, Yogyakarta', 'Layanan & Fasilitas Villa\r\n\r\n* AC\r\n* Hot water\r\n* Free WiFi & Cable TV\r\n* Parkir luas\r\n\r\n', '1 Day	Rp. 150.000	', 'A1'),
('V18', 'SARI HOMESTAY', 'Jl. Duwet 206, CTT, Sleman, Yogyakarta', 'Terletak di dekat pusat kuliner dan hiburan Babarsari, Sari Homestay menyediakan rumah sewa harian dengan suasana tenang dan homey. Dengan harga murah, Anda akan mendapatkan hunian yang dilengkapi AC, TV, kulkas, kamar mandi dalam dengan air panas.\r\n ', 'Deluxe Room	Rp. 175.000	for 2 persons, 1 double bed / twin bed, AC, TV, refrigerator, dispenser, bathroom with hot water.\r\nFamily Room	Rp. 500.000	for 5 persons, 2 double bed + 1 single bed, AC, TV, refrigerator, dispenser, living room, dining room, merapi view, bathroom with hot water\r\n\r\n    * Extra bed: Rp. 75.000\r\n    * Extra persons: Rp. 50.000', 'A1'),
('V19', 'RUMAH YOGYA', 'Jl. Tut Ipda Harsono (Timoho) 51 Yogyakarta', 'Rumah Yogya adalah satu-satunya rumah sewa dengan lapangan futsal. Berada dekat Mal Ambarrukmo Plaza & gedung-gedung pertemuan, cocok untuk rombongan / keluarga yang akan menghadiri resepsi pernikahan / wisuda. Jangan khawatir! Rumah sewa ini tidak mahal.', 'Deluxe Room	Rp. 195.000	\r\nAC, TV, private bathroom, hot & cold water\r\n\r\nJunior Room	Rp. 210.000	\r\nAC, TV, private bathroom, hot & cold water\r\n\r\nSuite Room	Rp. 250.000	\r\nAC, TV, private bathroom, hot & cold water\r\n\r\nStandard House	Rp. 600.000	\r\nliving room, dining room, 2 bedrooms, bathroom, kitchen\r\n\r\nDeluxe House	Rp. 900.000	\r\nliving room, dining room, 3 bedrooms, bathroom, kitchen\r\n\r\nJunior House	Rp. 1.050.000	\r\nliving room, dining room, 4 bedrooms, \r\nbathroom, kitchen\r\n\r\nSuite House	Rp. 1.200.000	\r\nliving room, dining room, 5 bedrooms, bathroom, kitchen', 'A1'),
('V20', 'MINO HOMESTAY', ' Perum Minomartani, Jl. Gabus Raya 21, Sleman, Yogyakarta', 'Facilities & Services\r\n\r\n* 5 Kamar\r\n* AC, LCD TV\r\n* Free Wifi\r\n* Setrika\r\n* Kulkas\r\n* Dapur dan kitchen set\r\n* 3 kamar mandi dalam & 2 kamar mandi luar (shower, air panas dan dingin)\r\n* Garasi berkapasitas 3-4 mobil\r\n* Penjaga rumah non-stop 24 jam\r\n\r\n', 'Mino Second Floor	Rp. 250.000	max 6 people, 2 bedroom, AC, LCD TV, 1 shared bathrooms (with shower & water heater)\r\n\r\nMino Downstairs	Rp. 600.000	\r\nmax 12 people, 3 bedroom, AC, LCD TV, 3 private bathrooms & 1 shared bathrooms (with shower & water heater)\r\n\r\nMino Rent a House	Rp. 850.000	max 18 people, 5 bedroom, AC, LCD TV, 3 private bathrooms & 2 shared bathrooms (with shower & water heater)\r\n\r\n    * Extra person Rp. 25.000 / malam\r\n    * Harga termasuk sarapan', 'A1'),
('V21', 'NDALEM HARDJODIKORO', 'Perum Citra Alam Sejahtera Kav 3E, Jl. Kaliurang km.9 Yogyakarta', 'Terletak di kawasan wisata kuliner Jogja utara yang sejuk, Ndalem Hardjodikoro menyediakan hunian yang nyaman lengkap dengan fasilitas AC, LCD TV, kulkas, kitchen set, breakfast dan free laundry.\r\n', 'Package A   Rp. 250.000    1-2 Persons\r\nPackage B   Rp. 450.000	   3-4 persons\r\nPackage C   Rp. 600.000	   5-6 persons', 'A1'),
('V22', 'AQEELA GUEST HOUSE', 'Jl. Lempong Sari, Puri Walet 1, Monjali, Yogyakarta', 'Aqeela Guest House adalah sebuah hunian homey dan asri yang berdiri megah di Puri Walet, sebuah real estate dekat kawasan Monjali. Kamar-kamar tematik ala Mesir dan China menjanjikan pengalaman menginap yang tak biasa ketika berkunjung ke Jogja', 'Aqeela (room)        Rp. 250.000  for 2 persons\r\n\r\nAqeela Guest House   Rp. 1.000.000	for 6 persons, 3 rooms', 'A1'),
('V23', 'CATY''S HOUSE', 'Pesona Mentari A3, Jl. Kaliurang Km 9, Yogyakarta', 'Tak banyak rumah sewa di Jogja yang memiliki koki, hal ini menjadikan Caty’s House lebih istimewa. Rumahnya cantik dengan pernak-pernik unik, ditambah fasilitas antar jemput gratis dari stasiun / bandara. Caty''s House is your sweet home far away from home', 'Catys 2 (second floor)	Rp. 300.000	for 2 persons, 1 bedroom (AC), sitting area (TV 32 "), bathroom (shower & water heater), living room, dining room (in door / out door)\r\n\r\nCatys 4	         Rp. 425.000	\r\nfor 4 persons, 2 bedrooms (AC), bathroom (shower & water heater), living room (TV, DVD player), dining room (in door / out door), kitchen (refrigerator, microwave, oven, toaster, gas stove)\r\n\r\nCatys 6	          Rp. 700.000	\r\nfor 6 persons, 3 bedrooms (AC), 2 bathrooms (shower & water heater), living room (TV, DVD player), sitting area (TV), dining room (in door & out door) , kitchen (refrigerator, microwave, oven, toaster, gas stove)\r\n\r\nCatys 8	       Rp. 900.000	\r\nfor 8 persons, 4 bedrooms (AC), 3 bathrooms (shower & water heater), living room (TV, DVD player), sitting area (TV), dining room (in door & out door), kitchen (refrigerator, microwave, oven, toaster, gas stove)', 'A1'),
('V24', 'D''TALENTS SUITES GUEST HOUSE', ' Jl. Prawirotaman III / 669A, Yogyakarta', 'D''Talents Suite Guest House merupakan penginapan dengan konsep semi apartemen yang bisa disewa harian, mingguan, atau bulanan. Tiap-tiap kamar dilengkapi dengan AC, TV, wifi, kulkas, dan kitchen set sehingga membuat Anda merasa homey. ', 'Crysant 1	Rp. 325.000	\r\nCrysant 2	Rp. 375.000	\r\nFamily Room	Rp. 550.000	', 'A1'),
('V25', 'SEJAHTERA RESORT', 'Jl. Kaliurang Km 9,5 No.18 Yogyakarta', 'Sejahtera Resorts adalah vacation rental mewah dengan konsep keluarga, menawarkan 5 kamar tidur dengan AC, internet, TV kabel layar datar, kamar mandi dalam (bath tub di Sejahtera Suite dan Sejahtera Ambassador) serta kolam renang.', 'Sejahtera Twin Studio	Rp. 400.000\r\nSejahtera Twin Superior	Rp. 400.000\r\nSejahtera Executive	Rp. 550.000\r\nSejahtera Ambassador	Rp. 650.000\r\nSejahtera Suites	Rp. 800.000', 'A1'),
('V26', 'PONDOK TERRA', 'Gg Ngadinegaran 103B, Mantrijeron, Yogyakarta', 'Dua pondok mewah dengan arsitektur khas Jawa ditawarkan oleh Pondok Terra sebagai alternatif tempat tinggal Anda selama di Jogja. Fasilitas modern dan lokasi strategis menjadi nilai tambah yang sempurna.\r\n ', 'Villa Silver	Rp. 899.000	\r\nVilla Gold	Rp. 899.000', 'A1'),
('V27', 'SIMPLY HOMY', 'Jl. Pandega Sakti 5 Kaliurang km 5,6 Yogyakarta', 'Simply Homy Guest House adalah rumah sewa harian dengan konsep syariah pertama di Jogja. Memiliki lokasi yang sangat strategis, yaitu berada diantara pusat wisata kuliner Jalan Kaliurang dan Gejayan, dekat pusat perbelanjaan, kawasan bisnis dan kampus.\r\n', 'Simply Homy 1	Rp. 1.000.000	', 'A1'),
('V28', 'PURI KARUNIA', 'Puri Gejayan Indah Blok C22 & E4 Yogyakarta', 'Puri Karunia menghadirkan 2 pilihan guest house yang njawani dengan bangunan besar yang megah dan fasilitas yang mewah. Masing-masing guest house dilengkapi dengan 4 kamar tidur, 2 bath tub, hot/cold water , AC, TV Kabel, dan gratis internet hot spot.', 'Rumah Blok E4	Rp. 1.500.000	\r\nRumah Blok C22	Rp. 1.500.000', 'A1'),
('V29', 'KAILLA GUEST HOUSE', 'Jl. Panggungsari Raya 154 C2 Sleman, Yogyakarta', 'Kailla Guest House menghadirkan konsep hunian modern khas rumah-rumah kota di tengah suasana pedesaan yang sejuk dan tenang. Terletak di tengah-tengah daerah wisata kuliner, vacation rental ini dilengkapi fasilitas modern seperti AC, WiFi dan LCD TV ', 'Kailla Guest House	Rp. 1.500.000', 'A1');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_wisma`
--

CREATE TABLE IF NOT EXISTS `daftar_wisma` (
  `id_wisma` varchar(4) NOT NULL,
  `nama_wisma` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `fasilitas` text NOT NULL,
  `harga` varchar(50) NOT NULL,
  `id_penginapan` varchar(4) NOT NULL,
  PRIMARY KEY (`id_wisma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_wisma`
--

INSERT INTO `daftar_wisma` (`id_wisma`, `nama_wisma`, `alamat`, `fasilitas`, `harga`, `id_penginapan`) VALUES
('F01', 'WISMA KALIURANG', 'Jl. Astorenggo 1, Kaliurang, Yogyakarta', 'Wisma Kaliurang adalah salah satu \npenginapan yang berada di kawasan sejuk \nnan ramai, Kaliurang. Penginapan ini memiliki \n4 kamar dengan fasilitas kamar mandi dalam \ndengan air panas dan TV. ', 'Rp 75.000 s.d Rp 500.000', 'A4'),
('F02', 'WISMA KINASIH', 'Jl. Boyong, Kaliurang, Yogyakarta', 'Wisma Kinasih adalah sebuah penginapan \nyang berada di kawasan sejuk, Kaliurang. \nHunian ini memiliki 30 kamar yang cocok \nuntuk keluarga ataupun rombongan dengan \nfasilitas dapur, TV, snack. ', 'Rp 65.000 s.d Rp 700.000', 'A4'),
('F03', 'WISMA SEJAHTERA I', ' Jl. Siaga 1 Kaliurang, Yogyakarta', 'Wisma Sejahtera I terletak di Jalan Siaga \nkawasan wisata Kaliurang. Penginapan ini \ncocok untuk rombongan karena berkapasitas \nhingga 120 orang dengan fasilitas aula, \nsound system dan menyediakan makan/\nsnack+minum.', 'Rp 50.000/orang', 'A4'),
('F04', 'WISMA KARYA MULIA 2', 'Jl. Giri Kondang, Kaliurang, Yogyakarta', 'Wisma Karya Mulia 2 terletak di kawasan \nnyaman Kaliurang. Penginapan ini hanya \nterdiri atas 3 kamar dengan fasilitas kamar \nmandi dalam, air minum dan TV. ', 'Rp 30.000 s.d Rp 50.000 ', 'A4'),
('F05', 'WISMA JOYO', 'Kaliurang, Yogyakarta', 'Wisma Joyo merupakan salah satu \npenginapan yang sangat cocok untuk liburan \nkeluarga saat berada di Kaliurang. Wisma ini \nmemiliki 31 kamar lengkap dengan aula dan \narea outbond. ', 'Rp 75.000 s.d 125.000 ', 'A4'),
('F06', 'WISMA BUMI PUTERA', ' Kaliurang, Yogyakarta', 'Wisma Bumi Putera terdapat di kawasan \nnyaman nan sejuk Kaliurang. Lokasinya dekat \ndengan taman wisata Tlogo Putri. Penginapan \nini menyediakan 9 kamar dengan fasilitas TV \ndan dapur. ', 'Rp 150.000 ', 'A4'),
('F07', 'WISMA PUAS', 'Kaliurang, Yogyakarta', 'Wisma Puas berada di dekat taman wisata \nKaliurang. Lokasinya berada di kiri jalan jika \nAnda dari arah taman wisata Tlogo Putri. \nWisma ini memiliki 23 kamar dengan aula dan \npavilion.', 'Rp 1.000.000 s.d Rp 1.500.000', 'A4'),
('F08', 'WISMA GHCC DUTA WACANA', 'Jl. Kaliurang Km. 23, Yogyakarta', 'Wisma GHCC Duta Wacana terletak di \nkawasan penuh ketenangan di Kaliurang. \nPenginapan ini terdiri atas 36 kamar atau 130 \nbed yang cocok untuk keluarga atau \nrombongan lengkap dengan fasilitas meeting \nroom, dining hall hingga out bound. ', 'Rp 300.000 s.d Rp 500.000', 'A4');

-- --------------------------------------------------------

--
-- Table structure for table `data_ka`
--

CREATE TABLE IF NOT EXISTS `data_ka` (
  `id_ka` varchar(4) NOT NULL,
  `armada` varchar(20) NOT NULL,
  PRIMARY KEY (`id_ka`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_ka`
--

INSERT INTO `data_ka` (`id_ka`, `armada`) VALUES
('KA1', 'Prameks 1'),
('KA10', 'Prameks 19'),
('KA11', 'Pandan Wangi I'),
('KA12', 'Pandan Wangi III'),
('KA13', 'Banyu Biru'),
('KA14', 'Lodaya'),
('KA15', 'Argo Lawu'),
('KA16', 'Argo Dwipangga'),
('KA17', 'Senja Utama'),
('KA18', 'Gajayana'),
('KA2', 'Prameks 3'),
('KA3', 'Prameks 5'),
('KA4', 'Prameks 7'),
('KA5', 'Prameks 9'),
('KA6', 'Prameks 11'),
('KA7', 'Prameks 13'),
('KA8', 'Prameks 15'),
('KA9', 'Prameks 17');

-- --------------------------------------------------------

--
-- Table structure for table `data_pesawat`
--

CREATE TABLE IF NOT EXISTS `data_pesawat` (
  `id_pesawat` varchar(3) NOT NULL,
  `armada` varchar(20) NOT NULL,
  PRIMARY KEY (`id_pesawat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pesawat`
--

INSERT INTO `data_pesawat` (`id_pesawat`, `armada`) VALUES
('P01', 'GARUDA'),
('P02', 'LION AIR'),
('P03', 'EXPRESS AIR'),
('P04', 'WING AIR'),
('P05', 'BATAVIA'),
('P06', 'AIR ASIA'),
('P07', 'MERPATI'),
('P08', 'SRIWIJAYA '),
('P09', 'MALAYSIA AIRLINES');

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE IF NOT EXISTS `data_user` (
  `id_user` int(4) NOT NULL AUTO_INCREMENT,
  `Nama_lengkap` varchar(100) NOT NULL,
  `Asal` varchar(200) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`id_user`, `Nama_lengkap`, `Asal`, `alamat`, `telepon`) VALUES
(2, 'tami wijaya', 'palembang', 'gdkiwo', '085664268751'),
(3, 'Isna Dewanti', 'Bantul', 'Bantul', '085725061278'),
(4, 'Arum Mei', 'Surabaya', 'Krapyak', '083867397854'),
(5, 'Nur Laili', 'Jakarta', 'Bantul', '085643582544');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id_ivent` varchar(4) NOT NULL,
  `nama_event` varchar(30) NOT NULL,
  PRIMARY KEY (`id_ivent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id_ivent`, `nama_event`) VALUES
('IE1', 'Karnaval'),
('IE2', 'Sekaten'),
('IE3', 'Acara_belanja'),
('IE4', 'Acara_keluarga'),
('IE5', 'Pameran'),
('IE6', 'Budaya');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_penerbangan`
--

CREATE TABLE IF NOT EXISTS `jadwal_penerbangan` (
  `id_pesawat` varchar(3) NOT NULL,
  `jadwal_berangkat` varchar(20) NOT NULL,
  `tujuan` varchar(30) NOT NULL,
  `id_transport` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_penerbangan`
--

INSERT INTO `jadwal_penerbangan` (`id_pesawat`, `jadwal_berangkat`, `tujuan`, `id_transport`) VALUES
('P02', '16.50', 'Jakarta', 'T01'),
('P02', '16.50', 'Jakarta', 'T01'),
('P02', '16.50', 'Jakarta', 'T01'),
('P02', '16.50', 'Jakarta', 'T01'),
('P02', '16.50', 'Jakarta', 'T01'),
('P02', '16.50', 'Jakarta', 'T01'),
('P02', '16.50', 'Jakarta', 'T01'),
('P02', '16.50', 'Jakarta', 'T01'),
('P03', '06.00', 'Ujung Pandang', 'T01'),
('P04', '06.05', 'Surabaya', 'T01'),
('P04', '09.10', 'Jakarta', 'T01'),
('P04', '13.00', 'Bandung', 'T01'),
('P04', '14.45', 'Surabaya', 'T01'),
('P05', '06.15', 'Jakarta', 'T01'),
('P05', '08.30', 'Batam', 'T01'),
('P05', '09.00', 'Pontianak', 'T01'),
('P05', '14.25', 'Jakarta', 'T01'),
('P05', '16.05', 'Balikpapan', 'T01'),
('P05', '16.50', 'Surabaya', 'T01'),
('P05', '17.25', 'Jakarta', 'T01'),
('P06', '09.00', 'Kuala Lumpur', 'T01'),
('P06', '07.30', 'Singapura', 'T01'),
('P06', '12.45', 'Jakarta', 'T01'),
('P06', '20.00', 'Jakarta', 'T01'),
('P07', '06.05', 'Ujung Pandang', 'T01'),
('P08', '10.00', 'Jakarta', 'T01'),
('P08', '15.00', 'Balikpapan', 'T01'),
('P09', '11.40', 'Kuala Lumpur', 'T01');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `kode_kategori` varchar(4) NOT NULL,
  `kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kode_kategori`, `kategori`) VALUES
('K01', 'Pantai'),
('K02', 'Situs'),
('K03', 'Kebun Binatang'),
('K04', 'Landscape/Gua'),
('K05', 'Desa Wisata/Sourvenir');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_transport`
--

CREATE TABLE IF NOT EXISTS `kategori_transport` (
  `id_transport` varchar(4) NOT NULL,
  `Transportasi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_transport`
--

INSERT INTO `kategori_transport` (`id_transport`, `Transportasi`) VALUES
('T01', 'Pesawat'),
('T02', 'Kereta Api'),
('T03', 'Bus_pariwisata'),
('T04', 'Bus_kota');

-- --------------------------------------------------------

--
-- Table structure for table `kereta_api`
--

CREATE TABLE IF NOT EXISTS `kereta_api` (
  `id_ka` varchar(4) NOT NULL,
  `jadwal` varchar(20) NOT NULL,
  `rute` varchar(40) NOT NULL,
  `id_transport` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kereta_api`
--

INSERT INTO `kereta_api` (`id_ka`, `jadwal`, `rute`, `id_transport`) VALUES
('KA3', '08.30', 'Palur – Yogyakarta ', 'T02'),
('KA4', '09.50', 'Jebres – Yogyakarta 	', 'T02'),
('KA5', '11.30', 'Jebres – Yogyakarta 	', 'T02'),
('KA6', '12.35', 'Jebres – Kutoarjo 	', 'T02'),
('KA7', '14.35', 'Jebres – Kutoarjo 	', 'T02'),
('KA8', '16.05', 'Jebres – Yogyakarta 	', 'T02'),
('KA9', '17.32', 'Palur – Yogyakarta', 'T02'),
('KA10', '17.35', 'Solo – Yogyakarta', 'T02'),
('KA11', '05.00', 'Solo – Semarang 	', 'T02'),
('KA12', '12.30', 'Solo – Semarang 	', 'T02'),
('KA13', '11.05', 'Solo – Semarang 	', 'T02'),
('KA14', '20.30', 'Solo – Bandung 	', 'T02'),
('KA14', '08.30', 'Solo – bandung ', 'T02'),
('KA15', '08.00', 'Solo – Gambir 	', 'T02'),
('KA16', '20.00', 'Solo – Gambir 	', 'T02'),
('KA17', '18.00', 'Solo – Pasar Senen 	', 'T02'),
('KA18', '22.40', 'Solo – Gambir 	', 'T02T'),
('KA18', '02.25', 'Solo – Malang 	', 'T02');

-- --------------------------------------------------------

--
-- Table structure for table `objek_wisata`
--

CREATE TABLE IF NOT EXISTS `objek_wisata` (
  `id_wisata` varchar(6) NOT NULL,
  `nama_wisata` varchar(50) NOT NULL,
  `Lokasi` varchar(50) NOT NULL,
  `id_daerah` varchar(4) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(45) NOT NULL,
  `kode_kategori` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `objek_wisata`
--

INSERT INTO `objek_wisata` (`id_wisata`, `nama_wisata`, `Lokasi`, `id_daerah`, `deskripsi`, `foto`, `kode_kategori`) VALUES
('W01', 'Keraton Yogyakarta', 'Kota Yogyakarta', 'D01', 'Keraton Ngayogyakarta Hadiningrat atau Keraton Yogyakarta merupakan istana resmi \nKesultanan Ngayogyakarta Hadiningrat yang kini berlokasi di Kota Yogyakarta, Daerah Istimewa \nYogyakarta, Indonesia. Walaupun kesultanan tersebut secara resmi telah menjadi bagian Republik \nIndonesia pada tahun 1950, kompleks bangunan keraton ini masih berfungsi sebagai tempat \ntinggal sultan dan rumah tangga istananya yang masih menjalankan tradisi kesultanan hingga \nsaat ini. Keraton ini kini juga merupakan salah satu objek wisata di Kota Yogyakarta. Sebagian \nkompleks keraton merupakan museum yang menyimpan berbagai koleksi milik kesultanan, \ntermasuk berbagai pemberian dari raja-raja Eropa, replika pusaka keraton, dan gamelan. Dari segi \nbangunannya, keraton ini merupakan salah satu contoh arsitektur istana \nJawa yang terbaik, memiliki balairung-balairung mewah dan lapangan serta paviliun yang luas.', '', 'K02'),
('W02', 'Taman Sari', 'Kota Yogyakarta', 'D01', 'Taman Sari Yogyakarta atau Taman Sari Keraton Yogyakarta adalah situs bekas taman atau kebun istana Keraton Yogyakarta, yang dapat dibandingkan dengan Kebun Raya Bogor sebagai kebun Istana Bogor. Kebun ini dibangun pada zaman Sultan Hamengku Buwono I (HB I) pada tahun 1758-1765/9. Awalnya, taman yang mendapat sebutan "The Fragrant Garden" ini memiliki luas lebih dari 10 hektare dengan sekitar 57 bangunan baik berupa gedung, kolam pemandian, jembatan gantung, kanal air, maupun danau buatan beserta pulau buatan dan lorong bawah air. Kebun yang digunakan secara efektif antara 1765-1812 ini pada mulanya membentang dari barat daya kompleks Kedhaton sampai tenggara kompleks Magangan. Namun saat ini, sisa-sisa bagian Taman Sari yang dapat dilihat hanyalah yang berada di barat daya kompleks Kedhaton saja.\r\nKompleks Taman Sari setidaknya dapat dibagi menjadi 4 bagian. Bagian pertama adalah danau buatan yang terletak di sebelah barat. Bagian selanjutnya adalah bangunan yang berada di sebelah selatan danau buatan antara lain Pemandian Umbul Binangun. Bagian ketiga adalah Pasarean Ledok Sari dan Kolam Garjitawati yang terletak di selatan bagian kedua. Bagian terakhir adalah bagian sebelah timur bagian pertama dan kedua dan meluas ke arah timur sampai tenggara kompleks Magangan.', '', 'K02'),
('W03', 'Gembira Loka', 'Kota Yogyakarta', 'D01', 'Kebun Binatang Gembira Loka adalah kebun binatang yang berada di Yogyakarta. Berisi berbagai macam spesies dari belahan dunia, seperti Orangutan, Gajah Asia, Simpanse, Harimau, dan lain sebagainya. Kebun Binatang Gembira Loka menjadi daya tarik tersendiri bagi para wisatawan Yogyakarta. Gembira Loka Zoo sempat rusak parah akibat gempa bumi yang mengguncang kota Yogyakarta tahun 2004. Tetapi, setelah direnovasi Kebun Binatang Gembira Loka tetap dicari para wisatawan.', '', 'K03'),
('W04', 'Kaliurang', 'Pakem', 'D03', 'Kaliurang yang secara harfiah dalam bahasa Indonesia berarti "Sungai Udang", adalah sebuah tempat wisata yang terletak di provinsi Yogyakarta, persisnya di Kabupaten Sleman, di perbatasan dengan provinsi Jawa Tengah.\r\n\r\nAkses menuju ke Kaliurang sangat mudah. Setidaknya dengan jalan kaki atau menumpang angkutan bus, kol (Colt), taxi, ojek atau becak (jarang yang mau), melewati Jalan Kaliurang. Jarak Kaliurang ke Yogyakarta kurang dari 1 jam perjalanan, dan ke Surakarta kurang dari 3 jam perjalanan.\r\n\r\nKaliurang terletak didaerah dataran tinggi banyak resor atau tempat peristirahatan karena sejuknya udaranya. Maka di sini terdapat banyak vila-vila penginapan, kebanyakan orang sekitar menyebutnya wisma. Tempat yang paling banyak dikunjungi oleh wisatawan baik dalam maupun luar negeri adalah Tlaga Putri.\r\n\r\nDi Kaliurang terdapat sebuah bangunan bersejarah yaitu Wisma Kaliurang. Di sana pernah terjadi Perundingan Khusus antara Republik Indonesia dengan Komisi Tiga Negara pada 13 Januari 1948. Perundingan Kaliurang ini melahirkan Notulen Kaliurang.', '', 'K04'),
('W05', 'Candi Prambanan', 'Desa Prambanan', 'D03', 'Candi Prambanan atau Candi Rara Jonggrang adalah kompleks candi Hindu terbesar di Indonesia yang dibangun pada abad ke-9 masehi. Candi ini dipersembahkan untuk Trimurti, tiga dewa utama Hindu yaitu Brahma sebagai dewa pencipta, Wishnu sebagai dewa pemelihara, dan Siwa sebagai dewa pemusnah. Berdasarkan prasasti Siwagrha nama asli kompleks candi ini adalah Siwagrha (bahasa sansekerta yang bermakna: ''Rumah Siwa''), dan memang di garbagriha (ruang utama) candi ini bersemayam arca Siwa Mahadewa setinggi tiga meter yang menujukkan bahwa di candi ini dewa Siwa lebih diutamakan.\r\n\r\nCandi ini terletak di desa Prambanan, pulau Jawa, kurang lebih 20 kilometer timur Yogyakarta, 40 kilometer barat Surakarta dan 120 kilometer selatan Semarang, persis di perbatasan antara provinsi Jawa Tengah dan Daerah Istimewa Yogyakarta.', '', 'K02'),
('W06', 'Candi Ratu Baka', 'Desa Prambanan', 'D03', 'Situs Ratu Baka (Bahasa Jawa: Ratu Boko) adalah situs purbakala yang merupakan kompleks sejumlah sisa bangunan yang berada kira-kira 3 km di sebelah selatan dari komplek Candi Prambanan, 18 km sebelah timur Kota Yogyakarta atau 50 km barat daya Kota Surakarta, Jawa Tengah, Indonesia. Luas keseluruhan komplek adalah sekitar 25 ha.\r\n\r\nSitus ini menampilkan atribut sebagai tempat berkegiatan atau situs pemukiman, namun fungsi tepatnya belum diketahui dengan jelas.', '', 'K02'),
('W07', 'Monumen Yogya Kembali', 'Desa Sariharjo', 'D03', 'Monumen Yogya Kembali dibangun pada tanggal 29 Juni 1985, dengan Upacara Tradisional penanaman kepala kerbau dan peletakan batu pertama oleh Hamengkubuwono IX dan Paku Alam VIII.\r\nDilihat dari bentuknya Monumen Yogya Kembali berbentuk kerucut/gunungan dengan ketinggian 31,80 meter adalah sebagai gambaran “Gunung Kecil” ditempatkan di sebuah lereng Gunung Merapi. Gunung Merapi ini sangat berarti bagi masyarakat Yogyakarta baik secara simbolik maupun faktual. Muntahan lava Gunung Merapi memberikan kesuburan bagi Daerah Istimewa Yogyakarta dan sekitarnya, sementara itu konturnya di langit selalu menghias cakrawala Yogyakarta dimanapun orang berada, dari Gunung Merapi pula sungai Winongo dan Code yang mengalir melalui kota Yogyakarta.\r\n\r\nSecara simbolik bersama laut selatan (Istana Ratu Kidul) yang berfungsi sebagai “Yoni” dan gunung Merapi sebagai “Lingga” merupakan suatu kepercayaan yang sangat tua dan berlaku sepanjang masa. Bahkan sementara orang menyebut Monumen Yogya Kembali sebagai tumpeng raksasa bertutup warna putih mengkilat, dalam tradisi Jawa tumpeng seolah-olah sebagai bentuk gunung yang dapat dihubungkan dengan kakayon atau gunungan dalam wayang kulit, yang melambangkan kebahagiaan/kekayaan kesucian dan sebagai penutup setiap episode perjuangan bangsa.\r\n\r\nMonumen Yogya Kembali terletak di Jalan Lingkar Utara, dusun Jongkang, desa Sariharjo, Kecamatan Ngaglik, kabupaten Sleman, Yogyakarta. Didirikan di atas lahan seluas 49.920 m². lokasi ini ditetapkan oleh Hamengkubuwono IX dengan alternatif diantaranya terletak digaris poros antara gunung Merapi - Monumen Yogya Kembali - Tugu Pal Putih - Kraton - Panggung Krapyak - Laut Selatan, yang merupakan “Sumbu Imajiner” yang pada kenyataannya sampai sekarang masih dihormati oleh masyarakat Yogyakarta, dan menurut kepercayaan bersatunya Lingga dan Yoni akan menimbulkan kemakmuran di tempat ini sebagai batas akhir ditariknya mundur tentara Belanda ke arah utara, usaha kesinambungan tata kota kegiatan dan keserasian Daerah Yogyakarta.', '', 'K02'),
('W08', 'PANTAI INDRAYANTI', 'Desa Tepus', 'D04', 'Selain menawarkan pesona pantai berpasir putih dengan air laut yang jernih, Indrayanti juga menawarkan sensasi dinner romantis bertabur bintang di restauran yang terletak di tepi pantai.\r\nTerletak di sebelah timur Pantai Sundak, pantai yang dibatasi bukit karang ini merupakan salah satu pantai yang menyajikan pemandangan berbeda dibandingkan pantai-pantai lain yang ada di Gunungkidul. Tidak hanya berhiaskan pasir putih, bukit karang, dan air biru jernih yang seolah memanggil-manggil wisatawan untuk menceburkan diri ke dalamnya, Pantai Indrayanti juga dilengkapi restoran dan cafe serta deretan penginapan yang akan memanjakan wisatawan. Beragam menu mulai dari hidangan laut hingga nasi goreng bisa di pesan di restoran yang menghadap ke pantai ini. Pada malam hari, gazebo-gazebo yang ada di bibir pantai akan terlihat cantik karena diterangi kerlip sinar lampu. Menikmati makan malam di cafe ini ditemani desau angin dan alunan debur ombak akan menjadi pengalaman romantis yang tak terlupa.', '', 'K01'),
('W09', 'PANTAI SEPANJANG', 'Desa Kemadang', 'D04', 'Bila ingin bernostalgia menikmati nuansa Pantai Kuta tempo doeloe, Pantai Sepanjang adalah tempat yang tepat. Sepanjang memiliki garis pantai yang panjang, pasir berwarna putih yang masih terjaga, dan ombak yang sedang. Anda tinggal memilih, ingin berjemur di atas pasir menikmati terik matahari, membelah ombak dengan papan selancar, ataupun hanya melihat keindahan pantai. Semuanya bisa Anda nikmati begitu tiba di pantai yang berjarak beberapa kilometer dari Pantai Sundak ini.\r\n\r\nPantai Sepanjang merupakan salah satu pantai yang baru dibuka. Nama "Sepanjang" diberikan karena ciri khas pantai ini yang memiliki garis pantai terpanjang di antara semua pantai di Kabupaten Gunung Kidul. Suasana pantai ini sangat alami. Bibir pantai dihiasi tumbuhan palem dan gubug-gubug beratap daun kering. Karang di wilayah pasang surut pantai pun masih terawat. Hempasan ombak masih memantulkan warna biru menandai air laut yang belum banyak tercemar. Dengan suasana itu, tak salah bila pemerintah daerah maupun investor berencana menjadikan pantai ini sebagai Pantai Kuta kedua.\r\n', '', 'K01'),
('W10', 'PANTAI SADENG', 'Girisubo', 'D04', 'Dahulu kala Sungai Bengawan Solo mengalir tenang dari hulunya di wilayah utara hingga bermuara di Pantai Sadeng yang kini berada di Kabupaten Gunung Kidul. Namun, empat juta tahun yang silam, sebuah proses geologi terjadi. Lempeng Australia menghujam ke bawah Pulau Jawa, menyebabkan dataran Pulau Jawa perlahan terangkat. Arus sungai akhirnya tak bisa melawan hingga akhirnya aliran pun berbalik ke utara. Jalur semula akhirnya tinggal jejak yang perlahan mengering karena tak ada lagi air yang mengalirinya. Wilayah ini menjadi kaya akan bukit-bukit kapur yang menurut beberapa penelitian, semula merupakan karang-karang yang berada di bawah permukaan laut.\r\n\r\nKini, bekas aliran sungai yang populer lewat lagu keroncong berjudul Bengawan Solo ciptaan Gesang itu menjadi objek wisata menarik. Tak ketinggalan Pantai Sadeng yang menjadi muaranya, selain menjadi objek wisata juga menjadi salah satu pelabuhan perikanan besar di Yogyakarta. Keduanya menjadi jejak geologi yang berharga. Beberapa waktu lalu, sempat diadakan paket wisata menyusuri jalur Bengawan Solo Purba hingga muaranya.\r\n\r\nDalam perjalanan menuju Pantai Sadeng, beberapa ratus meter jalur aliran Bengawan Solo Purba bisa dinikmati pemandangannya. Jalur aliran itu bisa dilihat setelah sampai di dekat plang biru bertuliskan "Girisubo - Ibukota Kecamatan". Berhenti sejenak di pinggir jalan menuju pantai atau berjalan perlahan adalah cara paling tepat untuk menikmati pemandangan bekas aliran ini, sekaligus memberi kesempatan mengabadikannya dengan kamera.', '', 'K01'),
('W11', 'PANTAI WEDIOMBO', 'Jepitu, Girisubo', 'D04', 'Sebuah imajinasi tentang pasir putih maha luas yang memungkinkan mata untuk leluasa meneropong ke berbagai sudut mungkin akan muncul bila mendengar pantai bernama Wediombo (wedi=pasir, ombo=lebar). Namun, sebenarnya pantai Wediombo tak mempunyai hamparan pasir yang luas itu. Bagian barat dan timur pantai diapit oleh bukit karang, membuat hamparan pasir pantai ini tak seluas Parangtritis, Glagah, atau mungkin Kuta.\r\n\r\nPenduduk setempat memang mengungkapkan bahwa nama pantai ini yang diberikan oleh nenek moyang tak sesuai dengan keadaannya. Ada yang mengungkapkan, pantai ini lebih pantas menyandang nama Teluk Ombo, sebab keadaan pantai memang menyerupai teluk yang lebar. Terdapat batu karang yang mengapit, air lautnya menjorok ke daratan, namun memiliki luas yang lebih lebar dibanding teluk biasa.', '', 'K01'),
('W12', 'PANTAI DEPOK', 'Depok', 'D02', 'Di antara pantai-pantai lain di wilayah Bantul, Pantai Depok-lah yang tampak paling dirancang menjadi pusat wisata kuliner menikmati sea food. Di pantai ini, tersedia sejumlah warung makan tradisional yang menjajakan sea food, berderet tak jauh dari bibir pantai. Beberapa warung makan bahkan sengaja dirancang menghadap ke selatan, jadi sambil menikmati hidangan laut, anda bisa melihat pemandangan laut lepas dengan ombaknya yang besar.\r\n\r\nNuansa khas warung makan pesisir dan aktivitas nelayan Pantai Depok telah berkembang sejak 10 tahun lalu. Menurut cerita, sekitar tahun 1997, beberapa nelayan yang berasal dari Cilacap menemukan tempat pendaratan yang memadai di Pantai Depok. Para nelayan itu membawa hasil tangkapan yang cukup banyak sehingga menggugah warga Pantai Depok yang umumnya berprofesi sebagai petani lahan pasir untuk ikut menangkap ikan.', '', 'K01'),
('W13', 'PANTAI PARANGKUSUMO', 'Parangkusumo', 'D02', 'Pantai Parangkusumo mengajak anda merasakan pengalaman spiritual tak terlupakan, melawati Batu Cinta sekaligus mengenang pertemuan Panembahan Senopati dengan Ratu Kidul.\r\nNuansa sakral akan segera terasa sesaat setelah memasuki kompleks Pantai Parangkusumo, pantai yang terletak 30 km dari pusat kota Yogyakarta dan diyakini sebagai pintu gerbang masuk ke istana laut selatan. Wangi kembang setaman akan segera tercium ketika melewati deretan penjual bunga yang dengan mudah dijumpai, berpadu dengan wangi kemenyan yang dibakar sebagai salah satu bahan sesajen. Sebuah nuansa yang jarang ditemui di pantai lain.\r\n\r\nKesakralan semakin terasa ketika anda melihat taburan kembang setaman dan serangkaian sesajen di Batu Cinta yang terletak di dalam Puri Cepuri, tempat Panembahan senopati bertemu dengan Ratu Kidul dan membuat perjanjian. Senopati kala itu duduk bertapa di batu yang berukuran lebih besar di sebelah utara sementara Ratu Kidul menghampiri dan duduk di batu yang lebih kecil di sebelah selatan.', '', 'K01'),
('W14', 'PANTAI SUNDAK', 'Desa Sidoharjo', 'D04', 'Bukan cuma ombak saja yang bisa dinikmati ketika ke pantai, tetapi juga bukti sejarah dan berkah yang ada; misalnya gua karang yang menjadi tempat perkelahian asu (anjing) dan landak.\r\nPantai Sundak tak hanya memiliki pemandangan alam yang mengasyikkan, tetapi juga menyimpan cerita. Nama Sundak ternyata mengalami evolusi yang bukti-buktinya bisa dilacak secara geologis.', '', 'K01'),
('W15', 'PANTAI PARANGTRITIS', 'Parangtritis', 'D02', 'Pantai Parangtritis adalah tempat wisata terbaik untuk menikmati sunset sambil having fun menaklukkan gundukan pasir dengan ATV (All-terrain Vechile) ataupun menyusuri pantai dengan bendi dalam senja yang romantis.\r\nPantai Parangtritis terletak 27 km selatan Kota Jogja dan mudah dicapai dengan transportasi umum yang beroperasi hingga pk 17.00 maupun kendaraan pribadi. Sore menjelang matahari terbenam adalah saat terbaik untuk mengunjungi pantai paling terkenal di Yogyakarta ini. Namun bila Anda tiba lebih cepat, tak ada salahnya untuk naik ke Tebing Gembirawati di belakang pantai ini. Dari sana kita bisa melihat seluruh area Pantai Parangtritis, laut selatan, hingga ke batas cakrawala.', '', 'K01'),
('W16', 'PANTAI NGOBARAN', 'Desa Kanigoro', 'D04', 'Pantai Ngobaran ternyata kaya pesona budaya; mulai dari pura, masjid yang menghadap ke selatan, hingga potensi kuliner terpendam yaitu landak laut goreng.\r\nNgobaran merupakan pantai yang cukup eksotik. Kalau air surut, anda bisa melihat hamparan alga (rumput laut) baik yang berwarna hijau maupun coklat. Jika dilihat dari atas, hamparan alga yang tumbuh di sela-sela karang tampak seperti sawah di wilayah padat penduduk. Puluhan jenis binatang laut juga terdapat di sela-sela karang, mulai dari landak laut, bintang laut, hingga golongan kerang-kerangan.\r\n\r\nTapi yang tak terdapat di pantai lain adalah pesona budayanya, mulai dari bangunan hingga makanan penduduk setempat. Satu diantaranya yang menarik adalah adanya tempat ibadah untuk empat agama atau kepercayaan berdiri berdekatan.\r\nBangunan yang paling jelas terlihat adalah tempat ibadah semacam pura dengan patung-patung dewa berwarna putih. Tempat peribadatan itu didirikan tahun 2003 untuk memperingati kehadiran Brawijaya V, salah satu keturunan raja Majapahit, di Ngobaran. Orang yang beribadah di tempat ini adalah penganut kepercayaan Kejawan (bukan Kejawen lho). Nama "Kejawan" menurut cerita berasal dari nama salah satu putra Brawijaya V, yaitu Bondhan Kejawan. Pembangun tempat peribadatan ini mengaku sebagai keturunan Brawijaya V dan menunjuk salah satu warga untuk menjaga tempat ini.', '', 'K01'),
('W17', 'PANTAI GLAGAH', 'Kulon Progo', 'D05', 'Sebuah dataran pantai yang lapang akan segera menyapa jika berkunjung ke Pantai Glagah. Kelapangan dataran pantai ini memberi anda kesempatan untuk merentangkan pandangan ke seluruh penjuru. Merentang pandangan ke depan, anda bisa melihat garis horizon maha panjang yang mempertemukan langit dan lautan. Sementara keindahan kelokan garis pantai akan memanjakan mata bila mengalihkan pandangan ke barat atau timur.\r\n\r\nDataran pantai yang lapang dan garis pantai yang panjang juga memberikan anda sejumlah lokasi alternatif untuk melihat keindahan pemandangan pantai. Masing-masing lokasi seolah memiliki nuansa yang berbeda walau masih terletak dalam satu kawasan. Di setiap lokasi itu, anda bisa menikmati seluruh keindahan pantai dengan leluasa, sama sekali tak ada karang-karang raksasa yang kadang menghalangi pandangan mata.\r\n\r\nLokasi pertama yang sangat tepat untuk melihat pemandangan pantai adalah sebuah lokasi yang akan dijadikan pelabuhan beberapa tahun ke depan. Anda bisa menjumpainya bila telah sampai di belokan pertama dari pos retribusi, tandanya adalah sebuah plang bertuliskan PP. Pertemuan aliran sungai dengan ombak lautan yang penuh harmoni bisa disaksikan dengan menaiki sebuah gardu pandang yang terdapat di sana.', '', 'K01'),
('W18', 'PANTAI CONGOT', 'Kulon Progo', 'D05', 'Pantai Congot adalah pantai wisata yang paling tepat dikunjungi setelah bertandang di Pantai Glagah. Kedua pantai itu berjarak sangat dekat dan dihubungkan oleh jalan beraspal halus yang bahkan cukup mudah ditempuh menggunakan sepeda. Terletak di Desa Jangkaran, Kecamatan Temon, Kabupaten Kulon Progo, Pantai Congot menjadi pusat kegiatan warga sekitar yang menggantungkan hidup dengan mencari ikan.\r\n\r\nKeindahan pemandangan bisa dijumpai bahkan selagi anda masih dalam perjalanan menuju pantai ini. Sepanjang jalan yang menghubungkan Wates dengan Pantai Congot, anda bisa bisa menyaksikan hamparan sawah hijau dan aktivitas warga desa di Kulon Progo yang umumnya menjadi petani. Seperti dataran dekat pantai di wilayah lain, jalan-jalan menuju Pantai Congot juga dihiasi oleh deretan pohon kelapa.\r\n\r\nPantai Congot memiliki pesona tersendiri dibanding pantai-pantai lainnya sebab nuansa nelayan dan perikanannya yang begitu kuat. Di sepanjang garis pantainya, anda bisa melihat aktivitas warga sekitar dan wisatawan lokal memuaskan kegemaran memancing. Di sudut lain, terdapat para nelayan yang tengah menjala ikan di tepi pantai, menghancurkan cangkang rajungan yang melekat di jala ataupun membersihkan perahu.', '', 'K01'),
('W19', 'PANTAI NGRENEHAN', 'Desa Kanigoro', 'D04', 'Terletak di desa Kanigoro Kecamatan Saptosari kurang lebih 30 km di sebelah selatan kota Wonosari. Suatu pantai berupa teluk yang dikelilingi hamparan perbukitan kapur dan memiliki panorama yang sangat memukau dengan deburan ombak menerpa pasir putih. Para wisatawan dapat menyaksikan aktivitas kegiatan nelayan dan menikmati ikan siap saji atau membawa ikan segar sebagai oleh-oleh.\r\n\r\nMasih dalam satu kawasan dengan Pantai Ngrenehan kurang lebih 1 km di sebelah Barat terdapat Pantai Ngobaran dan Pantai Nguyahan. Setiap bulan purnama pada hari raya Nyepi di Pantai Ngobaran di laksanakan upacara Melasti.\r\n', '', 'K01'),
('W20', 'PANTAI SIUNG', 'Desa Tepus', 'D04', 'Pantai Siung kaya akan karang-karang raksasa. Tebing karangnya memiliki 250 jalur pemanjatan, juga tempat tepat untuk menikmati panorama pantai. Ada pula karang menyerupai siung wanara yang menjadi dasar penamaan pantai.\r\nPantai Siung terletak di sebuah wilayah terpencil di Kabupaten Gunung Kidul, tepatnya sebelah selatan kecamatan Tepus. Jaraknya sekitar 70 km dari pusat kota Yogyakarta, atau sekitar 2 jam perjalanan. Menjangkau pantai ini dengan sepeda motor atau mobil menjadi pilihan banyak orang, sebab memang sulit menemukan angkutan umum. Colt atau bis dari kota Wonosari biasanya hanya sampai ke wilayah Tepus, itupun mesti menunggu berjam-jam.\r\n\r\nStamina yang prima dan performa kendaraan yang baik adalah modal utama untuk bisa menjangkau pantai ini. Maklum, banyak tantangan yang mesti ditaklukkan, mulai dari tanjakan, tikungan tajam yang kadang disertai turunan hingga panas terik yang menerpa kulit saat melalui jalan yang dikelilingi perbukitan kapur dan ladang-ladang palawija. Semuanya menghadang sejak di Pathuk (kecamatan pertama di Gunung Kidul yang dijumpai) hingga pantainya.', '', 'K01'),
('W21', 'PANTAI TRISIK', 'Kulon Progo', 'D05', 'Pantai Trisik merupakan pantai pertama di Kabupaten Kulon Progo yang akan ditemui bila anda melaju melewati lintasan Bantul - Purworejo, melewati Palbapang dan Srandakan. Berlokasi di wilayah Brosot, Kabupaten Kulon Progo, berjarak sekitar 37 kilometer dari pusat kota Yogyakarta. Pantai Trisik terletak sangat dekat dengan jalan raya sehingga sangat mudah dijangkau menggunakan kendaraan pribadi.\r\n\r\nPerjalanan ke Pantai Trisik akan terasa menyenangkan dan tak begitu melelahkan meski jaraknya cukup jauh. Jalan menuju pantai ini sangat halus dan minim tanjakan, terdapat pula warung makan di kanan kiri jalan yang bisa menjadi tempat beristirahat bila lelah. Melewati jalur Palbapang dan Srandakan, anda juga akan dapat menikmati pemandangan Sungai Progo ketika melewati jembatan penghubung Kabupaten Bantul dan Kabupaten Kulon Progo.\r\n\r\nPantai Trisik memiliki kekhasan dibanding pantai-pantai lainnya di Kulon Progo, yaitu suasana pedesaan pesisir yang begitu terasa. Pantai, rumah-rumah warga, gubug-gubug yang menjajakan makanan dan jalan penghubung desa dengan kota terletak saling berdekatan. Beragam aktivitas warga sekitar yang memanfaatkan wilayah pesisir dan laut sebagai sumber penghidupan juga turut meperkuat suasana pedesaan pesisir itu.', '', 'K01'),
('W22', 'PANTAI TIMANG', 'Gunungkidul', 'D04', 'Pantai Timang terletak di Gunung Kidul, Yogyakarta. Sekitar 3 jam perjalanan dari Yogyakarta. Pantai ini terletak diantara pantai siung dan pantai sundak Gunung Kidul, Yogyakarta. Lokasi yang relatif terpencil dan akses yang sulit, membuat namanya kurang dikenal warga sekitar. Akan tetapi jika sudah sampai, capek yang dirasa akan terbayar.Di sisi barat kita dapat melihat pantai dengan substrat berbatu terjal, sedangkan di sebelah timur dapat ditemui pantai berpasir seperti pantai di daerah pantai selatan pada umumnya.\r\n\r\nDi sebelah selatan dapat kita lihat onggokan batu besar yang oleh masyarakat sekitar disebut watu panjang atau batu panjang. Ada pula tali yang menghubungkan batu tersebut dengan daratan, dilengkapi alat sederhana untuk menyeberang. Pantai ini sepertinya belum dikembangkan sebagai obyek wisata. Ini terlihat dari jalan yang menuju pantai Timang yang lumayan berat. Kami harus melewati jalan berbatu sejauh kurang lebih 3 Km. Namun, panorama pantai yang alami dapat dinikmati di sini.\r\n', '', 'K01'),
('W23', 'PANTAI JUNGWOK', 'Jepitu, Girisubo', 'D04', 'Pantai Jungwok berada di sebelah timur pantai Wediombo dan dapat ditempuh dengan jalan kaki dari Pantai Wediombo. Akses menuju Pantai Jungwok belum dibuka dan baru dapat ditempuh dengan jalan kaki. Perjalanan ini sungguh  menyenangkan bila anda menikmatinya  dan di sekitarnya dapat melihat pantai dari tebing.\r\n\r\n\r\nPemandangan Pantai Jungwok  sangat indah. Pemandangan khas yang dapat dilihat adalah batu besar yang ada di tengah laut. Batu ini biasa disebut dengan watu topi. Watu topi biasa dapat dinaiki dan dapat digunakan untuk memancing oleh penduduk setempat dan beberapa pengunjung.\r\n\r\n\r\nPantai Jungwok memiliki pantai yang indah dan luas. Pantai ini memiliki pasir putih dan perairan yang dangkal. Biota laut yang banyak terdapat di sini antara lain bintang laut, ikan hias, dan berbagai macam algae.  Di samping itu, juga terdapat berbagai jenis burung. Di sepanjang pantai ditumbuhi oleh tumbuhan pandan. Pantai Jungwok masih sangat alami dan jauh dari keramaian. ', '', 'K01'),
('W24', 'PANTAI NGUSALAN', 'Jepitu, Girisubo', 'D04', 'Termasuk dalam Kawasan Pantai Wediombo, Gunung Kidul, Daerah Istimewa Yogyakarta. Ngusalan, kata yang cukup sulit diucapkan oleh sebagian orang ternyata mempunyai makna tersendiri di pantai ini. Untuk sebagian penduduk di sekitar pantai ini, pantai Ngusalan ini mempunyai makna khusus yang  berarti  tempat hidupnya keong. Sungguh mengasyikan bila ada disini, bisa melihat banyaknya keong yang hidup di pantai Ngusalan ini. Selain keong terdapat juga binatang-binatang laut  lainnya seperti kerang, udang, lobster dan beberapa jenis ikan yanga ada. \r\n\r\n\r\nTidak hanya itu saja, beberapa jenis algae seperti rumput laut mulai yang bisa di makan sampai yang tidak bisa di makan juga bisa temukan di pantai ini. Masih tak percaya?? Anda kesini saja, kami akan menunjukkan tempat indah ini.  Akan ada yang mengantarkan anda ketempat ini. ', '', 'K01'),
('W25', 'PANTAI PULUTAN', 'Jepitu, Girisubo', 'D04', 'Pantai Pulutan merupakan pantai di kawasan Wediombo yang sangat indah dan memiliki pasir putih yang sangat menawan. Keindahan panorama pantai ini dapat dinikmati sambil memancing ikan Panjau. Berbagai Jenis ikan khususnya ikan hias ini cukup banyak terdapat di kawasan pantai Pulutan. Kondisi Pantai Pulutan yang kecil dan terlindungi oleh dua buah bukit di samping kiri dan kanannya sangat menggugah hati untuk berjemur.\r\n\r\n\r\nSelain itu pantai Pulutan ini biasanya dilewati oleh serombongan monyet. Monyet-monyet tersebut hidup liar di alam bebas. Mereka biasa tinggal di gua-gua yang ada. Puluhan monyet bertahan hidup  menggantungkan diri dengan persediaan makanan yang ada disekitarnya. Tak mengherankan bila kelak anda berkunjung di sini anda mungkin dapat bertemu langsung dengan monyet tersebut. Mungkin juga, dengan keberanian yang anda miliki mungkin anda bisa memberi makan secara langsung. Sungguh menyenangkan.', '', 'K01'),
('W26', 'PANTAI SEDAHAN', 'Jepitu, Girisubo', 'D04', 'Pantai Sedahan seperti halnya pantai-pantai yang berada di sekitar kawasan Wediombo. Pantai ini juga memiliki panorama yang indah dan masih alami. Keindahan pantai ini diapit oleh dua buah tanjung yang tinggi sehingga seolah-olah diapit oleh dua buah gunung. Keindahan pantai kecil ini sangat disukai oleh wisatawan karena seakan-akan terpisah dari kehidupan luar.\r\n\r\n\r\n\r\nKeistimewaan dari Pantai Sedahan adalah sebagai tempat mendaratnya penyu untuk bertelur. Kejadian ini sangat digemari oleh wiatawan yang berminat. Beberapa jenis penyu langka masih ada disini. Pantai ini cukup luas sehingga tak ada salahnya anda bisa mengajak keluarga atau kerabat dekat anda untuk datang ke tempat ini. \r\nsumber: www.wediombo.com', '', 'K01'),
('W27', 'PANTAI WATU LUMBUNG', 'Jepitu, Girisubo', 'D04', 'Pantai Watu Lumbung terletak agak jauh dari pantai Wediombo. Pantai ini berada di sebelah barat pantai Wediombo. Pantai Watu Lumbung adalah berupa tanjung dengan tebing yang curam sehingga  nampak seperti batu-batu besar yang berada di tengah laut.\r\n\r\n\r\nPantai Watu Lumbung dapat dicapai dengan jalan kaki kira-kira selama satu jam dari pusat informasi wisata di Wediombo atau dengan bersepeda gunung. Menikmati keindahan dengan bersepeda gunung akan memberikan kesan yang istimewa bagi para pelancong. Jika anda berjalan kaki maka jangan khawatir, kelelahan akan terbayar dengan keindahan panorama pantai ini.\r\n\r\n\r\nPanorama yang ada tidak kalah bila dibandingkan dengan Tanah Lot yang ada di Pulau Dewata saat masih alami. Jadi jangan lewatkan kesempatan langka ini untuk mengunjungi Tanah Lot Gunung Kidul ini. ', '', 'K01'),
('W28', 'PANTAI KUKUP', 'Gunungkidul', 'D04', 'Pantai Kukup merupakan pantai yang berpasir putih yang indah dan luas, terdapat aneka biota laut terutama ikan hias yang dijual oleh pedagang di pinggir pantai atau dipelihara di gedung aquarium laut yang terletak pada satu kawasan di Pantai Kukup. Di sini juga terdapat sebuah pulau karang kecil yang diatasnya terdapat gardu pandang untuk menikmati keindahan laut. Fasilitas yang ada diantaranya pendopo untuk pertemuan, pondok wisata, hotel melati, warung makan, dan kios untuk cenderamata, pedagang ikan hias, dan pedagang ikan siap saji. Masyarakat setempat juga melaksanakan upacara sedekah laut dalam waktu yang bersamaan dengan nelayan Pantai Baron.', '', 'K01'),
('W29', 'PANTAI KRAKAL', 'Gunungkidul', 'D04', 'Pantai Krakal merupakan pantai yang luas dan terpanjang diantara pantai-pantai yang lain, dan terletak 2 km sebelah timur Pantai Drini. Pasir putih yang membentang berkilauan di sepanjang pantai sangat cocok untuk menikmati udara laut sambil melakukan aktivitas olahraga, sambil menikmati keindahan laut dan mencari biota laut dengan membawa jaring kecil yang banyak dijual disana. Pada waktu-waktu tertentu ada suguhan atraksi wisata di panggung terbuka di pinggir pantai. ', '', 'K01'),
('W30', 'PANTAI DRINI', 'Desa Kemadang', 'D04', 'Pantai Drini terletak di Desa Ngestirejo, Kecamatan Tanjungsari sekitar 1 KM ke arah Timur dari pantai Sepanjang. Keistimewaan pantai ini terdapat pulau karang yang tumbuh pohon Dirini dan konon kayunya dapat dipergunakan sebagai penangkal ular berbisa . .', '', 'K01'),
('W31', 'PANTAI BARON', 'Desa Kemadang', 'D04', ' Pantai Baron terletak di Desa Kemadang Kecamatan Tanjungsari sekitar 23 KM arah selatan Kota wonosari , merupakan pantai pertama yang ditemui dari rangkaian kawasan Pantai Baron , Kukup, Sepanjang, Drini, Krakal dan Sundak.\r\nDi pantai ini juga terdapat sungai bawah tanah yang bisa digunakan untuk pemandian setelah bermain dilaut. Selain itu wisatawan juga dapat menikmati aneka ikan laut segar maupun siap saji, dengan harga terjangkau , termasuk menu khas Pantai Baron yaitu Sop kakap. Pada sisi sebelah timur dapat dicapai melalui jalan setapak yang meligkar terdapat bukit kapur, wisatawan bisa beristirahat di gardu pandang, sambil menghirup udara pantai yang menyegarkan. Kurang lebih 10 KM ke arah barat dari Pantai Baron tedapat Pantai Parang Racuk dengan bukitnya yang menjulang dan terjal, menantang keberanian untuk bertualang dan menikmati keindahan laut sekitar dengan leluasa dari atas bukit.\r\nPada setiap bulan suro tahun baru jawa masyarakat nelayan setempat menyelenggarakan Upacara sedekah laut yang merupakan ungkapan rasa syukur kepada Tuhan Yang Maha Esa atas panenan ikan yan melimpah dan keselamatan mencari ikan dilaut. . .', '', 'K01'),
('W32', 'GUA RANCANG KENCONO', 'Playen', 'D04', 'Gua Rancang Kencono merupakan gua yang sarat cerita mulai dari jaman prasejarah hingga masa-masa perjuangan Laskar Mataram. Sebuah pohon klumpit berusia ratusan tahun menjadi saksi bisu beragam kisah yang tercipta di gua ini.\r\nGunungkidul merupakan salah satu kabupaten yang wilayahnya termasuk dalam Kawasan Karst Pegunungan Sewu dengan bentang alam yang unik. Selain fenomena di permukaan (eksokarst) yang berbentuk perbukitan karst, di Gunungkidul juga terdapat fenomena di bawah permukaan (endokarst) yang berbentuk sungai bawah tanah, lembah, telaga, hingga luweng dan gua. Karena itu tak heran jika Gunungkidul memiliki banyak gua yang tersebar di perut bumi. Salah satu gua yang bisa dimasuki siapa saja tanpa peralatan khusus adalah Gua Rancang Kencono yang terletak di Desa Wisata Bleberan.\r\nUntuk memasuki Gua Rancang Kencono cukup menuruni tangga batu yang sudah dibangun sejak dulu. Sebatang pohon klumpit yang tingginya sudah melampaui atap gua menyambut dengan gagahnya. Lubang besar akibat lapuk terlihat di batang pohon menjadi penanda usianya yang sudah renta. Gua Rancang Kencono memiliki sebuah pelataran atau ruang yang luas dan bisa digunakan untuk mengadakan pertemuan. Stalaktit tampak menghiasi langit-langit gua, banyak diantaranya sudah mati sehingga tidak terlihat lagi air yang menetes. Di sebelah ruangan yang luas terdapat ruang kecil dan sempit serta gelap gulita. ', '', 'K04'),
('W33', 'KALIADEM', 'Sleman', 'D03', 'Kaliadem adalah tempat melihat keindahan Gunung Merapi dan jejak ganasnya letusan gunung itu pada tahun 2006 lalu.\r\nKata orang-orang, pagi hari adalah saat terbaik untuk menikmati pemandangan Gunung Merapi sebelum berselimut kabut. Jadi pukul 07.00 pagi kami sudah berangkat menuju Kaliadem, sebuah kawasan sejuk yang berada di kaki Gunung Merapi, sekitar 25 km utara Kota Jogja. Kami memilih jalur alternatif lewat Maguwo karena jalur itu memiliki lebih banyak sawah ketimbang lewat Jalan Kaliurang. Benar saja, baru beberapa kilometer menjauhi kota, pemandangan hijaunya sawah langsung memanjakan mata, bagaikan lukisan-lukisan Mooi Indie. Udara sejuk pun segera menyergap lewat jendela mobil yang dibiarkan terbuka. Samar-samar tercium aroma batang padi; baunya segar, seperti bau rumput sehabis dimandikan hujan.\r\nDi balik penampilannya yang begitu tenang, Gunung Merapi menyimpan kekuatan alam yang dahsyat. Sebagian ilmuwan menduga letusan besar Gunung Merapi adalah penyebab kerajaan Mataram Kuno berpindah ke Jawa Timur pada abad ke-10. Ketika meletus, Gunung Merapi sanggup menyemburkan awan panas (800-1000 derajat celcius) yang meluncur ke bawah dengan kecepatan hingga 70 km/jam. Pada tahun 1930, awan panas dari letusan Gunung Merapi menghanguskan hutan, 13 desa, dan 1400 penduduk dalam sekejap.', '', 'K04'),
('W34', 'PUNCAK SUROLOYO', 'Kulon Progo', 'D05', 'Puncak Suroloyo yang menjadi tempat pertapaan Sultan Agung dan kiblat pancering bumi di tanah Jawa memberi anda kesempatan melihat empat gunung besar di Pulau Jawa, Candi Borobudur dan pemandangan matahari terbit.\r\nMatahari muncul dalam warna kemerahan kurang lebih pada pukul 5.00 WIB, menyembul di antara ranting pohon yang berwarna hijau. Sinarnya membuat langit terbagi dalam tiga warna utama, biru, jingga dan kuning. Serentak saat warna langit mulai terbagi, sekelompok burung berwarna hitam mulai meramaikan angkasa dan membuat suara serangga tanah yang semula kencang perlahan melirih.\r\n\r\nEmpat gunung besar di Pulau Jawa, yaitu Merapi, Merbabu, Sumbing dan Sindoro menyembul di antara kabut putih. Ketebalan kabut putih itu tampak seperti ombak yang menenggelamkan daratan hingga yang tersisa hanya sawah yang membentuk susunan tapak siring dan pepohonan yang terletak di dataran yang lebih tinggi. Dari balik kabut putih itu pula, stupa puncak Candi Borobudur yang tampak berwarna hitam muncul di permukaan lautan kabut.\r\n\r\nItulah pemandangan yang bisa dilihat saat fajar ketika berdiri di Puncak Suroloyo, buykit tertinggi di Pegunungan Menoreh yang berada pada 1.091 meter di atas permukaan laut. Untuk menikmatinya, anda harus melewati jalan berkelok tajam serta menakhlukkan tanjakan yang cukup curam, dan memulai perjalanan setidaknya pada pukul 2 dini hari. Dua jalur bisa dipilih, pertama rute Jalan Godean - Sentolo - Kalibawang dan kedua rute Jalan Magelang - Pasar Muntilan - Kalibawang. Rute pertama lebih baik dipilih karena akan membawa anda lebih cepat sampai. Tentu anda mesti berada dalam kondisi fisik prima, demikian juga kendaraan yang mesti berisi bahan bakar penuh serta bila perlu membawa ban cadangan.\r\n\r\nSetelah berjalan kurang lebih 40 km, anda akan menemui papan penunjuk ke arah Sendang Sono. Anda bisa berbelok ke kiri untuk menuju Puncak Suroloyo, namun disarankan anda berjalan terus dahulu sejauh 500 meter hingga menemui pertigaan kecil dan berbelok ke kiri karena jalannya lebih halus. Dari situ, anda masih harus menanjak lagi sejauh 15 km untuk menuju Puncak Suroloyo. Sebuah perjalanan yang melelahkan memang, namun terbayar dengan keindahan pemandangan yang dapat dilihat.', '', 'K04'),
('W35', 'WANAGAMA', 'Wonosari', 'D04', 'Wanagama meliputi empat desa di Kecamatan Patuk dan Playen, Gunung Kidul, yang berjarak tempuh satu jam perjalanan menggunakan kendaraan bermotor. Sepanjang perjalanan berjarak 35 kilometer tersebut, kita dapat melihat pemandangan indah kota Yogyakarta dari ketinggian. Sampai di perempatan lampu merah setelah Rest Area Bunder, terdapat plang penunjuk jalan dengan tulisan Wanagama dan panah kanan. YogYES kemudian berbelok ke kanan menyusuri jalan yang mengecil namun tetap beraspal. Gapura bertuliskan Hutan Wanagama seolah memberitahu pengunjung bahwa mereka telah tiba di hutan yang mulai dibangun sejak 1964 ini.', '', 'K04'),
('W36', 'GUNUNG NGLANGGERAN', 'Desa Nglanggeran', 'D04', 'Gunung Nglanggeran adalah gunung api purba berbentuk bongkahan batu raksasa. Selain dapat menyaksikan sunset & sunrise yang mempesona serta gemerlap Jogja di malam hari, di Puncak Timur Nglanggeran juga terdapat misteri dusun dengan 7 kepala keluarga.\r\nMenyaksikan mentari terbit dari puncak gunung merupakan satu kemewahan yang tidak semua orang bisa menikmatinya. Rute yang ekstrim, cuaca yang tidak menentu, perjalanan yang berat, serta jauhnya jarak yang harus ditempuh dengan berjalan kaki menjadi penghalang utama bagi sebagian orang. Namun hal ini tidak berlaku di Gunung Nglanggeran, Patuk, Gunungkidul. Hanya memakan waktu 1 hingga 1,5 jam pendakian, Anda akan tiba di puncak barat Gunung Nglanggeran, Gunung Gede. Pemandangan indah yang memanjakan mata pun menyambut. Sejauh mata memandang yang terlihat hamparan awan di ketinggian, jajaran gunung batu dengan bentuk yang unik, perkampungan warga, serta hijaunya sawah dan ladang. Saat senja menjelang, Kota Jogja akan terlihat laksana lautan kunang-kunang. Taburan cahaya bintang dan gemerlap lampu kota yang terlihat dari kejauhan menjadi pemandangan romantis bagi siapa saja yang berkemah di gunung ini.\r\n\r\nGunung Nglanggeran merupakan gunung api purba yang pernah aktif puluhan juta tahun lalu. Terletak di kawasan karst Baturagung, gunung yang litologinya tersusun oleh fragmen material vulkanik tua ini memiliki dua puncak yakni puncak barat dan puncak timur, serta sebuah kaldera ditengahnya. Saat ini Gunung Nglanggeran berupa deretan gunung batu raksasa dengan pemandangan eksotik serta bentuk dan nama yang unik dengan beragam cerita rakyat sebagai pengiringnya. Gunung-gunung tersebut biasanya dinamakan sesuai dengan bentuknya, seperti Gunung 5 Jari, Gunung Kelir, dan Gunung Wayang.', '', 'K04'),
('W37', 'AIR TERJUN SRI GETHUK', 'Playen', 'D04', 'Eksotisme Grand Canyon di daerah utara Arizona, Amerika Serikat tentunya tak bisa disangkal lagi. Grand Canyon merupakan bentukan alam berupa jurang dan tebing terjal yang dihiasi oleh aliran Sungai Colorado. Nama Grand Canyon kemudian diplesetkan menjadi Green Canyon untuk menyebut obyek wisata di Jawa Barat yang hampir serupa, yakni aliran sungai yang membelah tebing-tebing tinggi. Gunungkidul sebagai daerah yang sering diasumsikan sebagai wilayah kering dan tandus ternyata juga menyimpan keindahan serupa, yakni hijaunya aliran sungai yang membelah ngarai dengan air terjun indah yang tak pernah berhenti mengalir di setiap musim. Air terjun tersebut dikenal dengan nama Air Terjun Sri Gethuk.\r\n\r\nTerletak di Desa Wisata Bleberan, Air Terjun Sri Gethuk menjadi salah satu spot wisata yang sayang untuk dilewatkan. Untuk mencapai tempat ini Anda harus naik kendaraan melewati areal hutan kayu putih milik PERHUTANI dengan kondisi jalan yang bervariasi mulai dari aspal bagus hingga jalan makadam. Memasuki Dusun Menggoran, tanaman kayu putih berganti dengan ladang jati yang rapat. Sesampainya di areal pemancingan yang juga berfungsi sebagai tempat parkir, terdapat dua pilihan jalan untuk mencapai air terjun. Pilihan pertama yakni menyusuri jalan setapak dengan pemandangan sawah nan hijau berhiaskan nyiur kelapa, sedangkan pilihan kedua adalah naik melawan arus Sungai Oya. Tentu saja YogYES memilih untuk naik rakit sederhana yang terbuat dari drum bekas dan papan.\r\n\r\nPerjalanan menuju Air Terjun Sri Gethuk pun dimulai saat mentari belum naik tinggi. Pagi itu Sungai Oya terlihat begitu hijau dan tenang, menyatu dengan keheningan tebing-tebing karst yang berdiri dengan gagah di kanan kiri sungai. Suara rakit yang melaju melawan arus sungai menyibak keheningan pagi. Sembari mengatur laju rakit, seorang pemandu menceritakan asal muasal nama Air Terjun Sri Gethuk. Berdasarkan cerita yang dipercayai masyarakat, air terjun tersebut merupakan tempat penyimpanan kethuk yang merupakan salah satu instrumen gamelan milik Jin Anggo Meduro. Oleh karena itu disebut dengan nama Air Terjun Sri Gethuk. Konon, pada saat-saat tertentu masyarakat Dukuh Menggoran masih sering mendengar suara gamelan mengalun dari arah air terjun.\r\n\r\nTak berapa lama menaiki rakit, suara gemuruh mulai terdengar. Sri Gethuk menanti di depan mata. Bebatuan yang indah di bawah air terjun membentuk undak-undakan laksana tepian kolam renang mewah, memanggil siapa saja untuk bermain di dalam air. YogYES pun turun dari rakit dan melompati bebatuan untuk sampai di bawah air terjun dan mandi di bawahnya. Kali ini rasanya seperti berada di negeri antah berantah di mana air mengalir begitu melimpah. Air mengalir di sela-sela jemari kaki, air memercik ke seluruh tubuh, air mengalir di mana-mana. Seorang kawan tiba-tiba berteriak "Ada pelangi!". Saat menengadah, selengkung bianglala nan mempesona menghiasi air terjun.', '', 'K04'),
('W38', 'PANTAI SAMAS', 'Desa Srigading', 'D02', 'Pantai Samas terletak di sebelah barat pantai Parangtritis, tepatnya di Desa Srigading, Kecamatan Sanden, sekitar 14 (empat belas) kilometer arah selatan Kota Bantul. Dari Yogyakarta, Anda dapat menuju ke arah barat daya kurang lebih sejauh 35 (tiga puluh lima) kilometer dari pusat Kota Jogja. Pantai Samas cukup mudah untuk dicapai dengan kendaraan, baik pribadi maupun umum, karena prasarana jalan yang telah dibangun dengan baik. Perjalanan pun cukup menyenangkan karena melewati bentangan sawah yang menghijau dan banyak pohon kelapa di pinggir jalan.\r\n\r\nPantai Samas ini terkenal dengan keindahan pantainya yang disertai dengan angin kencang, ombak laut yang besar, delta-delta sungai dan danau air tawar yang membentuk telaga yang digunakan untuk pengembangan ikan dan udang galah. Namun perlu diperhatikan bentukan bibir pantai yang agak curam sehingga Anda disarankan untuk tidak mandi di pantai Samas karena cukup bahaya.\r\n\r\nDi pantai alami yang berpasir putih ini, Anda juga dapat menikmati keindahan laut dengan menaiki Mercusuar Patehan. Selain itu juga telah dikembangkan terminal, tempat parkir, MCK, penginapan, SAR, jaringan listrik, mushola, dan rumah makan. Di tempat itu, Anda dapat pula menyaksikan usaha pemeliharaan ikan dan udang yang dilakukan oleh Sub Dinas Perikanan Propinsi DIY. Beberapa upacara adat juga dilakukan di Pantai Samas ini seperti Upacara Kirab Tumuruning Maheso Suro, Labuhan Sedekah Laut, Pentas Seni Budaya (saat liburan dan lebaran).', '', 'K01'),
('W39', 'PANTAI KUWARU', 'Bantul', 'D02', 'Pantai Kuwaru merupakan salah satu pantai di Bantul terletak di sebelah timur Pantai Pandansimo. Secara administratif pantai tersebut termasuk wilayah dusun Kuwaru Desa Poncosari Kecamatan Srandakan. Jarak dari kota Yogyakarta sekitar 29 KM. Untuk menuju pantai ini cukup mudah karena tersedia fasilitas jalan yang memadai. Di pantai ini selain kita dapat menikmati deburan ombak pantai selatan tersedia pula warung -warung makanan dengan sajian menu beragam. Satu hal yang membedakan dengan pantai lain di Bantul yaitu di Pantai Kuwaru kita dapat menikmati hembusan angin pantai sambil makan ataupun bersantai di bawah rindangnya pohon cemara. Rindangnya pantai tersebut berkat usaha penghijauan yang dilakukan warga sejak sekitar enam tahun lalu. ', '', 'K01'),
('W40', 'PANTAI GOA CEMARA', 'Dusun Patehan', 'D02', 'Pantai Goa Cemara. Belum banyak yang tahu keberadaan pantai yang satu ini. Bahkan ketika pertama kalinya saya mengunjungi, sempat tersesat dan bertanya kepada penduduk sekitar Palbapang, Bantul, ternyata banyak yang tidak tahu. Padahal pantai ini sangat menarik untuk dijadikan tempat rekreasi keluarga, bahkan untuk tempat kegiatan pertemuan di dalam keteduhan hutan cemara.\r\n\r\nSuasana Pantai yang Teduh\r\n\r\nPantai Goa Cemara terletak di dusun Patehan, Gadingsari, kecamatan Sanden, kabupaten Bantul, Yogyakarta. Disebut Goa Cemara karena di sepanjang pantai ditumbuhi rerimbunan pohon cemara udang yang membentuk lorong di tengah-tengahnya mirip seperti goa. Masyarakat sendiri yang memberi nama pantai ini dengan Goa Cemara, karena sejak awal masyarakat yang mengusahakan penanaman pepohonan cemara dan merawatnya hingga memenuhi pinggiran pantai.\r\n\r\nSejak memasuki area parkir, kita langsung menjumpai rerimbunan pohon cemara udang yang membuat teduh suasana. Sungguh unik, pohon-pohon cemara tumbuh dengan subur di lahan pantai yang berpasir. Berjajar-jajar, ranting dan daunnya saling terhubung dan membentuk keteduhan yang sangat alami. Dari tempat parkir kita hanya melihat hutan cemara, menutupi pemandangan pantai.\r\n\r\nMulanya, sekitar tahun 2000 penduduk setempat memikirkan cara “memecah angin” untuk mencegah pengikisan pasir pantai. Mereka memilih tanaman cemara udang (casuarina equessetifolia) yang mampu menahan angin dan dapat hidup di pesisir pantai. Masyarakat bekerja bakti melakukan penanaman ribuan bibit cemara, dan memeliharanya dengan tertib, hingga kahirnya membentuk hutan seperti yang kita lihat sekarang.\r\n\r\nDi sepanjang kawasan Goa Cemara kita bisa menggelar tikar untuk bersantai, melepaskan kepenatan kerja dan rutinitas di rumah. Dari pagi hingga sore kita tidak akan kepanasan, karena banyaknya pepohonan cemara yang menjamin keteduhannya. Pada hari Sabtu dan Minggu kita akan menjumpai rombongan komunitas masyarakat yang menggelar acara di keteduhan cemara.', '', 'K01'),
('W41', 'GUA SELARONG', 'Dukuh Kembangputihan', 'D02', 'Gua Selarong adalah gua bermuatan sejarah yang berlokasi di di Dukuh Kembangputihan, Kecamatan Pajangan, Kabupaten Bantul, Provinsi DI Yogyakarta. Gua yang terbentuk di perbukitan batu padas ini digunakan sebagai markas gerilya Pangeran Diponegoro dalam Perang Jawa (1825-1830) melawan tentara Hindia Belanda. Pangeran Diponegoro pindah ke gua ini setelah rumahnya di Tegalrejo diserang dan dibakar habis oleh Belanda.\r\n\r\nGua Selarong sekarang merupakan objek wisata dengan dilengkapi area bumi perkemahan. Objek ini berlokasi sekitar 14 km arah selatan Kota Yogyakarta, di puncak bukit yang ditumbuhi banyak pohon. Di sekitar Gua Selarong juga sedang dikaji pengembangan objek agrowisata dengan klengkeng sebagai daya tarik utama.', '', 'K04'),
('W42', 'WADUK SERMO', 'Kulon Progo', 'D05', 'Waduk Sermo merupakan salah satu tempat wisata di Kabupaten Kulonprogo, provinsi DIY. Waduk Sermo mempunyai sumber daya alam yang amat potensial seperti kawasan wisata, dan saat ini dapat digunakan sebagai tempat pariwisata untuk umum. Waduk Sermo, selain menjadi tempat orang untuk berplesiran, juga menjadi sarana orang-orang yang mempunyai hobi memancing. Masyarakat sekitar Waduk Sermo juga ada yang memanfaatkan waduk ini untuk membangun keramba. Malah ada yang menggunakan keramba tersebut untuk dijadikan rumah apung untuk beristirahat dan makan bersama. Waduk Sermo yang pada mulanya secara hanya untuk diupayakan agar dipelihara sebaik-baiknya bakal jadi salah satu objek yang bisa diunggulkan di Yogyakarta. Sayang, waduk yang dibuat pada tahun 1993 tersebut hanyalah satu-satunya waduk yang ada di DIY.', '', 'K04'),
('W43', 'MAKAM RAJA-RAJA', 'Imogiri', 'D02', 'Makam Imogiri merupakan komplek makam bagi raja-raja Mataram dan keluarganya. Kompleks ini berada di Ginirejo Imogiri. Makam ini didirikan oleh Sultan Agung antara tahun 1632 – 1640M merupakan bangunan milik keraton kasultanan.\r\n\r\nRaja Mataram yang pertama dimakamkan di Imogiri yaitu Sultan Agung Hanyokrokusumo. Beliau yang memutuskan bahwa Imogiri menjadi makamnya kelak setelah beliau wafat. Hingga saat ini Raja Kasultanan Yogyakarta dan Surakarta yang wafat dimakamkan di sini. Musim liburan banyak wisatawan lokal berkunjung ke Makam Imogiri selain berziarah sambil menikmati pemandangan yang indah pegunungan selatan Yogyakarta. Pada bulan Soro menurut kalender jawa dilaksanakan upacara pembersihan “nguras” Padasan Kong Enceh.\r\n\r\nKomplek Makam Imogiri ini terdapat berbagai bangunan dan benda-benda keramat hingga saat ini masih terawat.', '', 'K02');
INSERT INTO `objek_wisata` (`id_wisata`, `nama_wisata`, `Lokasi`, `id_daerah`, `deskripsi`, `foto`, `kode_kategori`) VALUES
('W44', 'KASONGAN', 'Bantul', 'D02', 'Raja Mataram yang pertama dimakamkan di Imogiri yaitu Sultan Agung Hanyokrokusumo. Beliau yang memutuskan bahwa Imogiri menjadi makamnya kelak setelah beliau wafat. Hingga saat ini Raja Kasultanan Yogyakarta dan Surakarta yang wafat dimakamkan di sini. Musim liburan banyak wisatawan lokal berkunjung ke Makam Imogiri selain berziarah sambil menikmati pemandangan yang indah pegunungan selatan Yogyakarta. Pada bulan Soro menurut kalender jawa dilaksanakan upacara pembersihan “nguras” Padasan Kong Enceh.\r\n\r\nKomplek Makam Imogiri ini terdapat berbagai bangunan dan benda-benda keramat hingga saat ini masih terawat.\r\n\r\nHasil kerajinan dari gerabah yang diproduksi oleh Kasongan pada umumnya berupa guci dengan berbagai motif (burung merak, naga, bunga mawar dan banyak lainnya), pot berbagai ukuran (dari yang kecil hingga seukuran bahu orang dewasa), souvenir, pigura, hiasan dinding, perabotan seperti meja dan kursi, dll. Namun kemudian produknya berkembang bervariasi meliputi bunga tiruan dari daun pisang, perabotan dari bambu, topeng-topengan dan masih banyak yang lainnya. Hasil kerajinan tersebut berkualitas bagus dan telah diekspor ke mancanegara seperti Eropa dan Amerika. Biasanya desa ini sangat ramai dikunjungi oleh wisatawan yang berkunjung ke Yogyakarta.', '', 'K05'),
('W45', 'Gua Cerme ', 'Dusun Srunggo, Selopamioro', 'D02', 'Goa Cerme, sebuah goa yang terletak di dusun Srunggo, Selopamioro, Imogiri, Bantul mempunyai panjang lorong kurang lebih 1.200 meter, memiliki pemandangan dalam goa yang unik dan menarik dengan Stalaktit dan Stalakmit serta aliran air jernih yang di beberapa tempat mencapai kedalaman 1 meter merupakan obyek wisata alam yang cukup menarik untuk dikunjungi. Letaknya tidak begitu jauh dari kota Yogyakarta ± 22 Km dan mudah dicapai oleh segala macam kendaraan.\r\n\r\nDengan Stalaktit dan Stalakmit yang indah dan unik dengan aliran air yang jernih dan sejuk, pengunjung akan merasa senang dan santai menyusuri lorong – lorong goa, dengan begitu segala kepenatan akibat kesibukan dan rutinitas kehidupan dapat sirna begitu saja. Para pengunjung yang bermaksud memasuki goa, sebaiknya menghubungi juru kunci agar memperoleh keterangan dan panduan yang benar. Di samping goa Cerme sebagai goa utama di sekitarnya masih ada beberapa goa lebih kecil yang biasa digunakan sebagai tempat bersemedi antara lain goa Dalang, goa Ledek, goa Badut dan goa Kaum.Sepanjang perjalanan menyusuri lorong goa, mulai dari pintu masuk di dusun Srunggo, Imogiri, Bantul para pengunjung akan menjumpai bekas panggung pertemuan, air Zam – zam, mustoko, air suci, watu kaji, pelungguhan / paseban, kahyangan, grojogan sewu, air penguripan, gamelan, batu gilang, lumbung padi, gedung sekakap, kraton, panggung, goa lawa dan watu gantung, kemudian sampai di pintu keluar di desa Ploso, Giritirto, Panggang, Gunungkidul.', '', 'K04'),
('W46', 'Gua Kiskendo ', 'Pegunungan Menoreh,Samigaluh', 'D05', 'Merupakan goa alam di pegunungan Menoreh yang terletak 1.200 m di atas permukaan laut yang berhawa sejuk, dari bentuk serta keadaannya sangat serupa dengan apa yang tersirat dalam legenda Istana Goa Kiskendo (yang merupakan fragmen dari cerita Ramayana), tempat tinggal raksasa Mahesasura yang berkepala kerbau dan lembusura yang berkepala sapi. Dalam kisah pewayangan , di tempat ini terjadi pertempuran antara Subali – Sugriwa dengan raja Mahesasura dan patih Lembusura yang menghuni goa ini. Di samping itu keadaan – keadaan geologis dari goa – goa yang ada di daerah berbatu kapur (lime – stone), di dalam goa Kiskendo ini terdapat banyak stalaktit dan stalagmit yang aneh namun indah bentuknya. Di dalam goa ini mengalir sungai dibawah tanah yang dalam cerita pewayangan, dan dalam pertempuran antara Subali – Sugriwa dan Mahesasura – Lembusura, mengalirkan air berwarna merah dan putih.', '', 'K04'),
('W47', 'Gua Seropan ', 'Kecamatan Semanu', 'D04', 'Goa Seropan, Goa ini terletak di Kecamatan Semanu dekat jalan raya Wonosari-Rongkop, dengan ciri khas didalamnya terdapat air terjun cukup tinggi 7 m dan pemandangan alami sungai bawah tanah serta stalagmit dan stalagtit yang menakjubkan', '', 'K04'),
('W48', 'Desa Kasongan ', 'Desa Bangunjiwo', 'D02', 'Terletak di Desa Bangunjiwo, Kecamatan Kasihan, berjarak sekitar 6 km dari kota Yogyakarta, Dusun Kasongan sudah terkenal sejak lama. Terdapat banyak produk kualitas ekspor yang tersedia : peralatan rumah tangga seperti piring, mangkuk dan guci. Pengunjung tidak hanya dapat berbelanja tetapi juga dapat menikmati secara langsung proses pembuatan keramik sambil bertanya jawab dengan pengrajin.', '', 'K05'),
('W49', 'Desa Wisata Pucung ', 'Kecamatan Kasihan', 'D02', 'Pucung dikenal sebagai desa perajin patung primitive. Desa tetangga Kasongan ini sangat produktif dengan patung primitive yang terbuat dari kayu mahoni dan jati. Ide dan desain patung-patung ini bersumber dari pola dan tema tradisional dari berbagai daerah seperti Asmat, Dayak, Aborigin dan sebagainya. Tema ini kemudian dikembangkan menjadi ornament benda fungsional seprti meja sudut, tempat lilin, dan lain-lain, atau berdiri sendiri sebagai elemen estetik', '', 'K05'),
('W50', 'Desa Wisata Tembi ', 'Desa Tembi ', 'D02', 'Tembi adalah nama sebuah desa di Selatan Yogyakarta. Nama dsa ini kemudian diadaptasikan menjadi sebuah lembaga kebudayaan Rumah Budaya Tembi (Rumah Budaya TEMBI) menempati lahan seluas 3000 m2, memiliki fasilitas-fasilitas antara lain: Pendopo, Ruang Galeri, Perpustakaan dan Ruang Baca Perpustakaan, Rumah Dokumentasi Budaya.', '', 'K05'),
('W51', 'Desa Wisata Pundong ', 'Desa Pundong ', 'D02', 'Pundong merupakan wilayah Kecamatan di Kabupaten Bantul yang memiliki sebuah Desa yang bernama Panjang Rejo. Dusun Panjang Rejo merupakan salah satu Dusun yang memiliki Potensi Industri Kerajinan Grabah dan merupakan mata pencaharian pokok masyarakat setempat dan unik, berupa Aksesoris (Vas Bunga, Asbak, Tempat pensil/lilin, dll) serta berupa mainan dan cindera mata untuk pengantin. Disamping sebagai pusat Industri Grabah dea Panjang Rejo dengan alam pedesaan karakter kehidupan masyarakat dan dilengkapi berbagai kesenian tradisional. Keberadaan Pundong, Desa Panjang Rejo sangat strategis, disebelah timur ± 1 km. jalan menuju ke Parangtritis atau ± 25 km. arah selatan Yogyakarta. Untuk mencapai Pundong Desa Panjangrejo dijangkau dengan alat angkutan umum menuju Parangtritis.', '', 'K05'),
('W52', 'Desa Wisata Krebet ', 'Desa Sendangsari, Kecamatan Pajangan', 'D02', 'Terletak di Desa Sendangsari, Kecamatan Pajangan, ± 12 km sebelah barat daya dari Yogyakarta. Terdapt ± 400 pengrajin yang bekerja di 14 Sanggar Seni dengan produk atau kerajinan utama, topeng, batik, patung kayu, patung asmat. Selain itu di dusun ini juga tersedia penginapan berbentuk khas tradisional dalam rangka menarik wisatawan untuk dating dan menginap. Setiap bulan September diadakan Upacara Ritual Bersih Dusun untuk mensyukuri hasil panen masyarakat setempat.', '', 'K05'),
('W53', 'Desa Wisata Tanjung ', 'Utara Monumen Jogja Kembali (Monjali)', 'D03', 'Desa Wisata Tanjung terletak 5 km sebelah Utara Monumen Jogja Kembali (Monjali). Disana terdapat rumah Joglo di Desa Wisata Tanjung. Bangunannya yang besar serta halamannya yang luas dan Pendoponya yang dapat menampung 100-200 orang lesehan. Tiang penyangga di bagian depan bangunan tersebut terbuat dari kayu nagka yang sudah berumur ± 200 tahun, pada tiang dan dinding kayu di ruang bagian dalam terdapat relief gaya kuno.', '', 'K05'),
('W54', 'Desa Wisata Ketingan ', 'Desa Tirtiadi, Mlati ', 'D03', 'Desa Wisata Ketingan merupakan habitat dari ribuan burung Kuntul dan Blekok yang saat in sudah sangat langka ditemui di Pulau Jawa. Lokasi Desa Wisata Ketingan terletak di Desa Tirtiadi, Mlati Sleman, 10 km dari Kota Yogyakarta. Disamping memiliki nuansa kehidupan pedesaan yang masih kental dengan adat Jawa, juga memiliki potensi Idustri kerajinan rumah tangga berupa Industri emping Mlinjo, Industri Kerajinan Bambu dan Jamu Tradisional Jawa, sehingga sangat cocok sebagai Obyek Wisata Pendidikan.', '', 'K05'),
('W55', 'Desa Wisata Bobung Putat ', 'Bobung', 'D01', 'Hampir semua masyarakat bermata pencaharian menjadi pengrajin topeng kayu dan kerajinan batik kayu lainnya. Bobung juga sangat mudah dijangkau sarana lalu lintas yang ada, termasuk bus wisata. Wilayah ini berjarak sekitar 30 km arah timur kota Yogyakarta. Untuk menuju desa wisata initidaklah terlalu sulit, selain lokasi jalannya yang sudah beraspal juga dilalui dengan angkutan umum.', '', 'K05'),
('W56', 'Agro Wisata Salak Pondoh ', 'Desa Bangunkerto, Kecamatan Turi', 'D03', 'Merupakan kawasan seluas ± 75 ha yang oleh masyarakat setempat ditanami khusus tanaman salak pondoh. Obyek wista inidengan haw sejuk akan hidup dengan mudah khususnya buah salak pondoh, saat ini sudah terebar di seluruh Jawa. Lokasi obyek wisata ini masuk wilayah Desa Bangunkerto, Kecamatan Turi,Kabupaten Sleman ± 25 km arah Utara Yogyakarta,jalan beraspal baik dapat ditempuh dengan kendaraan bus, dan mini bus. Fasilitas yang ada gardu pandang, kolam pemancingan, becak air, arena bermain anak-anak, tempat pertemuan, jalan setapak ke kebun salak dan kios penjualan salak pondoh.', '', 'K05'),
('W57', 'Desa Palgading', 'Desa Palgading', 'D03', 'Di desa Palgading (ke arah Kaliurang), Ngaglik, Sleman merupakan sentra pengrajin tas handmade. Bahkan produk tas dari daerah ini menjadi langganan tetap bagi importer manca negara. Selain tas dari bahan kulit, pengrajin desa Palgading ini juga memanfaatkan bahan dasar alamiah seperti mendong. Pelepah pisang, enceng gondok, bahkan kertas koran dan kertas semen. Kerapian dan kekuatan merupakan keunggulan dari tas produksi Palgading.', '', 'K05'),
('W58', 'Sumber Agung', 'Sumber Agung, Moyudan', 'D03', 'Di daerah Sumber Agung, Moyudan, Sleman terdapat sentra pembuatan perabot rumah tangga dari bambu. Dari kotak sampah, tempat tisu sampai tempat aksesoris dibuat dengan bentuk yang unik dan menarik. Bahkan produknya sudah diekspor sampai ke negara-negara Eropa. Di tempat ini, wisatawan dapat memesan perabotan sesuai dengan keinginan.', '', 'K05'),
('W59', 'Desa Wisata Gendeng', 'Desa  Gendeng', 'D01', 'Desa Wisata Gendeng (sebelah selatan Jogja) merupakan sentra perajin Wayang Kulit. Paling tidak saat ini terdapat 10 orang perajin. Terbuat dari kulit Kambing dan Kerbau pilihan, pembuatan wayang ternyata sangatlah rumit. Selain untuk hiasan dinding, ternyata kerajinan Wayang Kulit ini juga bisa diperuntukkan buat kap lampu, kipas, souvenir perkawinan, gantungan kunci bahkan pembatas buku.', '', 'K05'),
('W60', 'Kotagede', 'Kotagede', 'D01', 'Selain toko-toko yang berjejer di pinggir jalan, di lorong-lorong kecil terdapat banyak perajin rumahan. Setiap toko memiliki dapur-dapur perak dimana wisatawan bisa melihat secara langsung proses pembuatannya. Proses dari bentuk lempengan-lempengan putih hingga menjadi perhiasan seperti kalung, anting, cincin atau perabot lainnya seperti sendok, tempat garam, miniatur kendaraan sampai miniatur candi. Bahkan disini terdapat museum perak, tepatnya di Jl. Kemasan, Kotagede, dimana wisatawan dapat mengetahui secara detail sejarah dan perkembangannya sampai saat ini.', '', 'K05'),
('W61', 'Agro Wisata Buah Naga', 'Pantai Glagah', 'D05', 'Kebun agrowisata yang terletak pinggiran Pantai Glagah memiliki lahan seluas 2,2 hektar (ha) yang sudah dihijaukan buah berwarna merah (dikenal dengan nama buah naga) dan yang sedang dalam perintisan seluas 2,8 ha. Buah naga banyak disukai warga Amerika. Sebab selain rasanya yang enak juga bisa menstabilkan gula darah, serta meningkatkan stamina tubuh. Kecuali itu juga bisa untuk memulihkan kinerja saraf jantung. Pengelola kebun agrowisata bernama “Kusumo Wanadri” itu adalah Romo DR Paulus Tribrata Br M Th MM. selain untuk berkebun ternyata di lahan itu juga untuk tempat pembinaan bagi anak nakal, preman, serta pecandu narkoba.\r\n\r\n', '', 'K05'),
('W62', 'Agro Wisata Kebun Plasma Nutfah Pisang', 'Desa Malangan', 'D01', 'Kebun Plasma Nutfah Pisang adalah sebuah kebun berbagai macam varietas pisang yang terdapt di seluruh Indonesia maupun mancanegara. Keberadaan kebun ini dikhususkan untuk wisata pendidikan dan penelitian. Areal seluas 2,5 ha ini berlokasi di bagian selatan kota Yogyakarta tepatnya di desa Malangan. Jarak tempuh dari pusat kota kira-kira 8 km. Meskipun berlokasi di pinggiran kota, namun dapat memberikan sentuhan suasana khas dan alami sehinga menciptakan daya tarik tersendiri.', '', 'K05'),
('W63', 'Malioboro', 'Malioboro', 'D01', 'Malioboro merupakan Jogja kecil. Pasar tradisional, pedagang kaki lima sampai pusat perbelanjaan modern ada di sana. Lagi pula, Malioboro merupakan tempat persinggahan tetap bagi wisatawan yang datang ke Jogja. Ribuan pedagang kaki lima dan pertokoan menawarkan pilihan souvenir untuk oleh-oleh sahabat, teman atau orang di rumah. Di Malioboro, souvenir barang yang dijual bisa didapat dengan harga yang sangat murah. Sementara, pertokoannya menawarkan beragam motif pakaian dan kain batik dengan desain eksklusif serta gift soft yang unik. Semuanya ada di sini, mulai yang berkelas sampai ke murah meriah. Pusat jajanan seperti ini juga banyak dijumpai di sepanjang Jl. Mataram, yang letaknya di sebelah timur Malioboro.', '', 'K05');

-- --------------------------------------------------------

--
-- Table structure for table `penginapan`
--

CREATE TABLE IF NOT EXISTS `penginapan` (
  `id_penginapan` varchar(4) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  PRIMARY KEY (`id_penginapan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penginapan`
--

INSERT INTO `penginapan` (`id_penginapan`, `kategori`) VALUES
('A1', 'Vila'),
('A2', 'Hotel'),
('A3', 'Motel'),
('A4', 'Wisma');

-- --------------------------------------------------------

--
-- Table structure for table `rute_trans`
--

CREATE TABLE IF NOT EXISTS `rute_trans` (
  `id_bus` varchar(3) NOT NULL,
  `id_rute` varchar(2) NOT NULL,
  `rute` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rute_trans`
--

INSERT INTO `rute_trans` (`id_bus`, `id_rute`, `rute`) VALUES
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.'),
('B01', '4B', 'Terminal Giwangan.');

-- --------------------------------------------------------

--
-- Table structure for table `tempat_makan`
--

CREATE TABLE IF NOT EXISTS `tempat_makan` (
  `id_tempat` varchar(4) NOT NULL,
  `jenis_tempat` varchar(30) NOT NULL,
  PRIMARY KEY (`id_tempat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempat_makan`
--

INSERT INTO `tempat_makan` (`id_tempat`, `jenis_tempat`) VALUES
('N01', 'Restoran'),
('N02', 'Lesehan'),
('N03', 'Warung gudeg'),
('N04', 'Tradisional');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
