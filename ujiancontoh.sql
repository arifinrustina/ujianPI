-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2016 at 06:00 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ujiancontoh`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(2) NOT NULL AUTO_INCREMENT,
  `nama_admin` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `SID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`, `SID`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'a2lf6kugi01hmd3ii7g9knd236'),
(2, 'Guru', 'Guru', '1281d0ac7a74eb91550ff52a02862cda', 'a2lf6kugi01hmd3ii7g9knd236');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `komentar` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`nama`, `email`, `komentar`) VALUES
('budi', 'budi123@gmail.com', 'terima kasih'),
('ani', 'niani@ymail.com', 'keren ^^'),
('dian', 'dianodo@yahoo.com', 'webnya sangat menarik'),
('didi', 'dididi@gmail.com', 'selamat malam'),
('toto', 'totototo@gmail.com', 'wew sipp dah'),
('agi', 'agi', 'bagus'),
('azifa', 'aaaa', 'ssss'),
('sisi', 'abc@gmail.com', 'bagus oy'),
('hafizh', 'hafizfizh@gmail.com', 'keren artikelnya sangat membantu (y)'),
('Hendra', 'hendrapower@gmail.com', 'Keren Gan :)');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_jurusan`
--

CREATE TABLE IF NOT EXISTS `tabel_jurusan` (
  `id_jurusan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jurusan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tabel_jurusan`
--

INSERT INTO `tabel_jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(1, 'IPA'),
(2, 'IPS');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_nilai`
--

CREATE TABLE IF NOT EXISTS `tabel_nilai` (
  `id_nilai` int(4) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(100) NOT NULL,
  `benar` int(4) NOT NULL,
  `salah` int(4) NOT NULL,
  `kosong` int(4) NOT NULL,
  `point` int(4) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tabel_nilai`
--

INSERT INTO `tabel_nilai` (`id_nilai`, `id_user`, `benar`, `salah`, `kosong`, `point`, `tanggal`) VALUES
(7, '6', 1, 1, 0, 50, '2014-01-07'),
(8, '6', 1, 1, 0, 50, '2014-01-07'),
(9, '10', 1, 1, 0, 50, '2014-09-25'),
(10, '10', 3, 0, 0, 100, '2014-09-26'),
(11, '11', 2, 1, 0, 67, '2014-09-27'),
(12, '12', 2, 1, 0, 67, '2014-09-27'),
(13, '13', 2, 1, 0, 67, '2014-10-08'),
(14, '11', 2, 1, 0, 67, '2014-10-23'),
(15, '11', 1, 2, 0, 33, '2014-12-09'),
(16, '11', 2, 2, 0, 50, '2015-01-11'),
(17, '14', 1, 3, 0, 25, '2015-01-12'),
(18, '12', 3, 2, 0, 60, '2015-01-12'),
(19, '17', 0, 5, 0, 0, '2015-01-15'),
(20, '19', 15, 5, 0, 75, '2015-01-20'),
(21, '20', 9, 11, 0, 45, '2015-01-20'),
(22, '20', 10, 7, 3, 50, '2015-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_soal`
--

CREATE TABLE IF NOT EXISTS `tabel_soal` (
  `id_soal` int(4) NOT NULL AUTO_INCREMENT,
  `id_jurusan` int(11) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `pertanyaan` text NOT NULL,
  `pilihan_a` varchar(100) NOT NULL,
  `pilihan_b` varchar(100) NOT NULL,
  `pilihan_c` varchar(100) NOT NULL,
  `pilihan_d` varchar(100) NOT NULL,
  `pilihan_e` varchar(100) DEFAULT NULL,
  `jawaban` varchar(100) NOT NULL,
  `publish` enum('yes','no') NOT NULL,
  PRIMARY KEY (`id_soal`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tabel_soal`
--

INSERT INTO `tabel_soal` (`id_soal`, `id_jurusan`, `id_mapel`, `pertanyaan`, `pilihan_a`, `pilihan_b`, `pilihan_c`, `pilihan_d`, `pilihan_e`, `jawaban`, `publish`) VALUES
(1, 1, 1, 'Biologi Terdiri Dari Berbagai Cabang Dan Berkembang Pesat Sejak Abad Ke-20. Berikut Adalah Beberapa Cabang Ilmu Biologi Kecuali ?', 'Tumbuhan', 'Molekul', 'Zat', 'Organ', 'Kimia', 'E', 'yes'),
(2, 1, 1, 'Ikan Bernafas Menggunakan ?', 'Ingsang', 'Paru Paru', 'Mulut', 'Jantung', 'Hati', 'A', 'yes'),
(3, 1, 1, 'Tumbuhan Melakukan Fotosintesis Yang Menghasilkan ?', 'Uang', 'Buah', 'Oksigen', 'Daun', 'Protein', 'C', 'yes'),
(4, 1, 1, 'Musang Melindungi Diri Dari Ancaman Musuh Dengan Cara ?', 'Tidur', 'Menggigit', 'Menangis', 'Pura-pura Mati', 'Lari', 'A', 'yes'),
(5, 0, 0, 'Hewan Yang Bisa Hidup Di Dua Air Disebut?', 'Wopinami', 'Nocturnal', 'Amfibi', 'Herbivora', 'Karnivora', 'C', 'yes'),
(6, 0, 0, 'Yang Menyebabkan Urine Berwarna Kuning Adalah Zat?', 'Biliverdin', 'Histamine', 'Urobilin', 'Hemoglobin', 'Klorofil', 'C', 'yes'),
(7, 0, 0, 'Berikut Ini Yang Mempengaruhi Faktor Pertumbuhan Dan Perkembangan  Tumbuhan Dari Dalam Tubuh Tumbuhan Itu Sendiri Adalah ?', 'Hormon', 'Suhu', 'Cahaya', 'Mineral', 'Kelembaban', 'A', 'yes'),
(8, 0, 0, 'Zat Atau Senyawa Yang Menghalangi Ikatan Antara Enzim Dengan Substrat Disebut ?', 'Activator', 'Inhibitor', 'Enzim Konjugasi', 'Kofaktor', 'Biokatalisator', 'B', 'yes'),
(9, 0, 0, 'Sel Hibridoma Terbentuk Dari ?', 'Kloning', 'Rekombinasi DNA', 'Plasmid', 'Transplantasi Inti', 'Fusi Sel', 'E', 'yes'),
(10, 0, 0, 'Oksigen Yang Dilepas Ke Udara Selama Proses Fotosintesis Berasal Dari ?', 'Pemecahan Molekul CO2', 'Sintesis Glukosa', 'Siklus Calvin', 'Fiksasi CO2', 'Fotosintesis H2O', 'E', 'yes'),
(11, 1, 1, 'Pada Tanaman Karet, Jaringan Penghasil Lateks Yang Terdiri Dari Sel-sel Yang Berubah Bentuk Terdapat Pada Jaringan ?', 'Parenkim', 'Epidemis', 'Xilem', 'Defamis', 'Kolenkim', 'A', 'yes'),
(12, 0, 0, 'Uji Lboratorium Terhadap Sampel Darah Seorang Ibu Menunjukan Kadar LDL Melebihi Normal Dan Kadar HDL Kurang Dari Normal. Ibu Tersebut Disarankan Untuk Memperbaiki Pola Makan Agar Terhindar Dari Penyakit Pengerasan Pembuluh Nadi Yang Disebut Penyakit ?', 'Leukimia', 'Ateros Klerosis', 'Trombosit', 'Leukosit', 'Ateros Fluke', 'B', 'yes'),
(13, 0, 0, 'Tempurung Kelapa Memilik Struktur Yang Kuat Dan Keras Karena Terbentuk Dari Jaringan ?', 'Sklereid', 'Skeleton', 'Yoloserum', 'Parenkim', 'Ilemis', 'A', 'yes'),
(14, 0, 0, 'Bayi Akan Terinveksi Kuman Sivilis Semenjak Dalam Kandungan Sering Mengalami Gangguan Pada Proses Penulangannya Sehingga Sering Menimbulkan Gangguan Pada Tulang Yang Disebut ?', 'Diseros', 'Urai Sendi', 'Rahitis', 'Layuh Semu', 'Atritis Sika', 'D', 'yes'),
(15, 0, 0, 'Jaringan Tulang Rawan Orang Dewasa Berbeda Dengan Jaringan Tulang Rawan Anak-anak, Sebab ?', 'Sel-sel Penyusun Jaringan Tulang Rawan Orang Dewasa Memiliki Akson', 'Jaringan Tulang Rawan Anak-anak Berasal Dari Selaput Tulang Rawan', 'Jaringan Tulang Rawan Anak-anak Berasal Dari Sel-sel Penyusun Tulang Rawan', 'Sel Nya Berupa Serabut Bercabang', 'Inti Sel Terdapat Di Tengah', 'B', 'yes'),
(16, 0, 0, 'Ciri Tulang Rawan Fibrosa Adalah ?', 'Berwarna Putih Kebiruan', 'Tidak Berwarna', 'Berwarna Kuning', 'Terdapat Pada Rusuk', 'Terdapat Pada Embrio', 'E', 'yes'),
(17, 0, 0, 'Kontraksi Otot Yang Berlangsung Terus Menerus Akan Menimbulkan Kelelahan Disebabkan Oleh ?', 'Kekurangan Darah Putih', 'Kekurangan Glukosa', 'Penimbunan Asam Laktat Dalam Otot', 'Kelebihan CO2 Dalam Otot', 'Penikmbunan ATP Dalam Otot', 'C', 'yes'),
(18, 0, 0, 'Berikut Ini Yang Termasuk Tulang Rangka Aksial Adalah ?', 'Tulang Lengan Dan Tulang Dahi', 'Tulang Tangan Dan Tulang Kaki', 'Tulang Rusuk Dan Tulang Paha', 'Tulang Dada Dan Tulang Rusuk', 'Tulang Pinggul Dan Tulang Pinggang', 'D', 'yes'),
(19, 0, 0, 'Sel Sklerenkim Berbeda Dengan Sel Kolenkim Dalam Hal ?', 'Ukuran Sel', 'Jumlah Sel', 'Letak Sel', 'Panjang Dinding Sel', 'Ketebalan Dinding Sel', 'E', 'yes'),
(20, 1, 1, 'Komponen Kimia Dalam Sel Yang Berperan Memberi Ciri Dari Sel Adalah ?', 'Protein', 'Karbohidrat', 'Mineral', 'Enzim', 'Lemak', 'A', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_user`
--

CREATE TABLE IF NOT EXISTS `tabel_user` (
  `id_user` int(4) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `password` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `jurusan` int(10) DEFAULT NULL,
  `SID` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `konfirmasi` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tabel_user`
--

INSERT INTO `tabel_user` (`id_user`, `nama_user`, `username`, `password`, `jurusan`, `SID`, `konfirmasi`) VALUES
(13, 'udinus', 'udinus', '1b37770a3a2ae24f29db76b1e322ba3e', 0, '', 1),
(12, 'udinus', 'udinus', 'b9e588f017f9bc991baf9d230989608f', 0, '', 1),
(11, 'hafizh', 'hafizh', '77c3a161ddb7988a146a68943ed42015', 0, '', 1),
(10, 'hafizh', 'hafizh', '77c3a161ddb7988a146a68943ed42015', 0, '', 1),
(14, 'joni', 'joni', '1281d0ac7a74eb91550ff52a02862cda', 0, '', 1),
(15, 'udinus', 'udinus', 'b9e588f017f9bc991baf9d230989608f', 0, '', 1),
(16, 'udinus', 'udinus', '1b37770a3a2ae24f29db76b1e322ba3e', 0, '', 1),
(17, 'abi', 'abi', '7e45696bc221625bbb2242260d0f6cf2', 0, '', 1),
(18, 'hafiz', 'hafiz', '839a54bf20626e4942bc8f11873f0654', 0, '', 1),
(19, 'Miko', 'Miko', 'daac24b31d3fb2eb54c9deb8397d35f4', 0, '', 1),
(20, 'hartanto', 'hartanto', 'c58db9a81858acaa417118121a6e4eed', 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mapel`
--

CREATE TABLE IF NOT EXISTS `tbl_mapel` (
  `id_mapel` int(10) NOT NULL AUTO_INCREMENT,
  `idJurusan` int(10) NOT NULL,
  `nama_mpl` varchar(20) NOT NULL,
  PRIMARY KEY (`id_mapel`),
  UNIQUE KEY `id_mapel_2` (`id_mapel`),
  KEY `id_mapel` (`id_mapel`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_mapel`
--

INSERT INTO `tbl_mapel` (`id_mapel`, `idJurusan`, `nama_mpl`) VALUES
(1, 1, 'Bahasa Indonesia'),
(2, 1, 'Matematika'),
(3, 1, 'Biologi'),
(4, 2, 'Sosial Budaya'),
(5, 2, 'Matematika'),
(6, 2, 'Bahasa Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `x`
--

CREATE TABLE IF NOT EXISTS `x` (
  `id` int(10) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `x`
--

INSERT INTO `x` (`id`, `nama`) VALUES
(1, 'widi');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
