-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2019 at 02:43 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taboo`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_referensi`
--

CREATE TABLE `daftar_referensi` (
  `id_referensi` int(11) NOT NULL,
  `url` text NOT NULL,
  `berita_id_berita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_referensi`
--

INSERT INTO `daftar_referensi` (`id_referensi`, `url`, `berita_id_berita`) VALUES
(1, 'http://www.tribunnews.com/nasional/2019/05/14/sempat-melarikan-diri-tersangka-pengancam-penggal-kepala-presiden-jokowi-ditahan-polisi', 3),
(2, 'https://www.alodokter.com/komunitas/topic/semut', 1),
(3, 'https://www.csuchico.edu/~pmccaffrey//syllabi/CMSD%20320/362unit3.html', 1),
(4, 'https://www.hoaxes.id/2017/01/semut-masuk-ke-otak-manusia-melalui-telinga-hoax.html ', 1),
(5, 'https://www.cnnindonesia.com/ekonomi/20190528110218-532-399012/jokowi-resmi-tetapkan-cuti-bersama-lebaran-pns-3-7-juni-2019', 2),
(6, 'https://www.liputan6.com/bisnis/read/3977785/jokowi-teken-keppres-cuti-bersama-pns-total-4-hari', 2),
(7, 'https://www.liputan6.com/bisnis/read/3977817/keppres-cuti-bersama-diteken-jokowi-libur-lebaran-pns-total-8-hari', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE `dokumen` (
  `id_dokumen` int(11) NOT NULL,
  `dokumen` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `keterangan` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id_dokumen`, `dokumen`, `file`, `keterangan`) VALUES
(2, 'UU ITE', 'UU_ITE_Regulasi.pdf', 'Regulasi'),
(5, 'Syarat dan Ketentuan TABOO Denpasar', 'Syarat_dan_Ketentuan_TABOO_Denpasar_Syarat_dan_Ketentuan.pdf', 'Syarat dan Ketentuan');

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `id_gambar` int(11) NOT NULL,
  `file1` varchar(100) NOT NULL,
  `file2` varchar(100) NOT NULL,
  `file3` varchar(100) NOT NULL,
  `file4` varchar(100) NOT NULL,
  `file5` varchar(100) NOT NULL,
  `file6` varchar(100) NOT NULL,
  `file7` varchar(100) NOT NULL,
  `file8` varchar(100) NOT NULL,
  `file9` varchar(100) NOT NULL,
  `file10` varchar(100) NOT NULL,
  `berita_id_berita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`id_gambar`, `file1`, `file2`, `file3`, `file4`, `file5`, `file6`, `file7`, `file8`, `file9`, `file10`, `berita_id_berita`) VALUES
(27, 'user4_berita35_file6.png', '', '', '', '', '', '', '', '', '', 35),
(28, 'user4_berita35_file6.png', '', '', '', '', '', '', '', '', '', 31),
(29, 'user4_berita35_file6.png', '', '', '', '', '', '', '', '', '', 29),
(30, 'user4_berita35_file6.png', '', '', '', '', '', '', '', '', '', 30),
(31, 'user4_berita35_file6.png', '', '', '', '', '', '', '', '', '', 31),
(32, 'user4_berita35_file6.png', '', '', '', '', '', '', '', '', '', 32),
(33, 'user4_berita35_file6.png', '', '', '', '', '', '', '', '', '', 33),
(34, 'user4_berita35_file6.png', '', '', '', '', '', '', '', '', '', 34),
(36, 'user4_berita35_file6.png', '', '', '', '', '', '', '', '', '', 36),
(37, '', '', '', '', '', '', '', '', '', '', 37),
(38, 'user1_berita38_file1.PNG', '', '', '', '', '', '', '', '', '', 38),
(39, 'user36_berita39_file1.png', '', '', '', '', '', '', '', '', '', 39),
(40, 'user37_berita40_file1.png', '', '', '', '', '', '', '', '', '', 40);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_berita`
--

CREATE TABLE `kategori_berita` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_berita`
--

INSERT INTO `kategori_berita` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Belum Teridentifikasi'),
(2, 'Informasi Benar'),
(3, 'Hoax (Disinformasi)'),
(4, 'Hoax (Misinformasi)');

-- --------------------------------------------------------

--
-- Table structure for table `klasifikasi_berita`
--

CREATE TABLE `klasifikasi_berita` (
  `id_klasifikasi` int(11) NOT NULL,
  `nama_klasifikasi` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `klasifikasi_berita`
--

INSERT INTO `klasifikasi_berita` (`id_klasifikasi`, `nama_klasifikasi`) VALUES
(0, '-'),
(1, 'Ekonomi'),
(2, 'Kesehatan'),
(3, 'Kriminal'),
(4, 'Kependudukan'),
(5, 'Teknologi'),
(6, 'Sosial'),
(7, 'Pendidikan'),
(8, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komen` int(11) NOT NULL,
  `komen` text NOT NULL,
  `tanggal` datetime NOT NULL,
  `berita_id_berita` int(11) NOT NULL,
  `user_id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `list_berita`
--

CREATE TABLE `list_berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` mediumtext NOT NULL,
  `narasi` longtext NOT NULL,
  `tanggal` datetime NOT NULL,
  `penjelasan` longtext,
  `status` varchar(45) NOT NULL DEFAULT 'Tidak Diterbitkan',
  `user_id_user` int(11) NOT NULL,
  `klasifikasi_id_klasifikasi` int(11) DEFAULT '0',
  `kategori_id_kategori` int(11) DEFAULT NULL,
  `sumber_id_sumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_berita`
--

INSERT INTO `list_berita` (`id_berita`, `judul`, `deskripsi`, `narasi`, `tanggal`, `penjelasan`, `status`, `user_id_user`, `klasifikasi_id_klasifikasi`, `kategori_id_kategori`, `sumber_id_sumber`) VALUES
(29, 'Berita Ekonomi', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2019-08-09 08:34:57', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Diterbitkan', 4, 1, 2, 1),
(30, 'Berita Kesehatan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-08-09 08:35:09', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Diterbitkan', 4, 2, 4, 6),
(31, 'Berita Kriminal', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-02-13 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Diterbitkan', 1, 3, 3, 5),
(32, 'Berita Kependudukan', '<blockquote><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p></blockquote>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2019-08-09 08:33:37', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Diterbitkan', 4, 4, 2, 2),
(33, 'Berita Teknologi', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2019-08-09 08:13:44', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Diterbitkan', 4, 5, 4, 4),
(34, 'Berita Sosial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2018-08-13 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Diterbitkan', 2, 6, 3, 1),
(35, 'Berita Pendidikan', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2019-08-09 08:48:17', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Diterbitkan', 4, 7, 3, 5),
(37, 'Test 1', '<p>Lorem ipsun</p>', '<p>Lorem ipsun</p>', '2019-08-09 09:38:40', '<p>hhhhh</p>', 'Diterbitkan', 4, 1, 3, 3),
(38, 'fff', '<p>ffff</p>', '<p>ffff</p>', '2019-08-09 09:13:36', '', 'Tidak Diterbitkan', 4, 1, 2, 1),
(39, 'testes', '<p>wwwww</p>', '<p>wwwww</p>', '2019-08-09 09:34:21', '', 'Tidak Diterbitkan', 4, 1, 3, 1),
(40, 'tes', 'tes', 'tes', '2019-08-09 10:32:23', '-', 'Tidak Diterbitkan', 37, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `referensi`
--

CREATE TABLE `referensi` (
  `id_referensi` int(11) NOT NULL,
  `url1` text NOT NULL,
  `url2` text NOT NULL,
  `url3` text NOT NULL,
  `berita_id_berita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referensi`
--

INSERT INTO `referensi` (`id_referensi`, `url1`, `url2`, `url3`, `berita_id_berita`) VALUES
(10, 'https://www.lipsum.com/', 'https://www.lipsum.com/', 'https://www.lipsum.com/', 29),
(11, 'https://www.lipsum.com/', '', '', 33),
(12, 'https://www.w3schools.com/sql/sql_foreignkey.asp', 'https://www.w3schools.com/sql/sql_foreignkey.asp', 'https://www.w3schools.com/sql/sql_foreignkey.asp', 32),
(14, '', '', '', 30),
(15, 'https://www.w3schools.com/tags/att_input_type_url.asp', 'https://www.w3schools.com/tags/att_input_type_url.asp', 'https://www.w3schools.com/tags/att_input_type_url.asp', 35),
(17, 'https://www.lipsum.com/', 'https://www.lipsum.com/', 'https://www.lipsum.com/', 37),
(18, 'https://docs.google.com/presentation/d/1Hzqb7CRL2wWuGlbbEQzlPhW7rDRw1qeBmhvbPYKNva8/edit#slide=id.g5e47911f55_0_22', 'https://docs.google.com/presentation/d/1Hzqb7CRL2wWuGlbbEQzlPhW7rDRw1qeBmhvbPYKNva8/edit#slide=id.g5e47911f55_0_22', 'https://docs.google.com/presentation/d/1Hzqb7CRL2wWuGlbbEQzlPhW7rDRw1qeBmhvbPYKNva8/edit#slide=id.g5e47911f55_0_22', 38),
(19, '', '', '', 39),
(20, '', '', '', 40);

-- --------------------------------------------------------

--
-- Table structure for table `sumber_berita`
--

CREATE TABLE `sumber_berita` (
  `id_sumber` int(11) NOT NULL,
  `nama_sumber` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sumber_berita`
--

INSERT INTO `sumber_berita` (`id_sumber`, `nama_sumber`) VALUES
(1, 'Media Sosial Facebook'),
(2, 'Media Sosial Twitter'),
(3, 'Media Sosial Instagram'),
(4, 'Situs Berita'),
(5, 'Aplikasi Chat Whatsapp'),
(6, 'Aplikasi Chat Telegram'),
(7, 'Aplikasi Chat Line');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(45) NOT NULL,
  `NIK` varchar(45) DEFAULT NULL,
  `jenis_kelamin` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `user_level` int(11) NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `no_hp`, `NIK`, `jenis_kelamin`, `password`, `user_level`, `aktif`) VALUES
(1, 'Julia Ferlin', 'julia@mail.com', '2222', '11111', 'Perempuan', '11111111', 3, 1),
(2, 'Anya', 'anya@mail.com', '081234', '', 'Perempuan', '12345678', 3, 1),
(3, 'Tri Puspa', 'tripuspa@mail.com', '081234', '', 'Perempuan', '12345678', 2, 1),
(4, 'Master Admin', 'masteradmin@mail.com', '081234', NULL, 'perempuan', '12345678', 1, 1),
(37, 'tes', 'nikomangtri@student.ub.ac.id', '12345678', NULL, 'Perempuan', '11111111', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_referensi`
--
ALTER TABLE `daftar_referensi`
  ADD PRIMARY KEY (`id_referensi`);

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id_dokumen`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `klasifikasi_berita`
--
ALTER TABLE `klasifikasi_berita`
  ADD PRIMARY KEY (`id_klasifikasi`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komen`),
  ADD KEY `berita_id_berita` (`berita_id_berita`),
  ADD KEY `user_id_user` (`user_id_user`);

--
-- Indexes for table `list_berita`
--
ALTER TABLE `list_berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `user_id_user` (`user_id_user`),
  ADD KEY `klasifikasi_id_klasifikasi` (`klasifikasi_id_klasifikasi`,`kategori_id_kategori`,`sumber_id_sumber`),
  ADD KEY `FK_kategori` (`kategori_id_kategori`),
  ADD KEY `FK_sumber` (`sumber_id_sumber`);

--
-- Indexes for table `referensi`
--
ALTER TABLE `referensi`
  ADD PRIMARY KEY (`id_referensi`),
  ADD KEY `FK_berita` (`berita_id_berita`);

--
-- Indexes for table `sumber_berita`
--
ALTER TABLE `sumber_berita`
  ADD PRIMARY KEY (`id_sumber`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_referensi`
--
ALTER TABLE `daftar_referensi`
  MODIFY `id_referensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id_dokumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `klasifikasi_berita`
--
ALTER TABLE `klasifikasi_berita`
  MODIFY `id_klasifikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `list_berita`
--
ALTER TABLE `list_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `referensi`
--
ALTER TABLE `referensi`
  MODIFY `id_referensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sumber_berita`
--
ALTER TABLE `sumber_berita`
  MODIFY `id_sumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`berita_id_berita`) REFERENCES `list_berita` (`id_berita`),
  ADD CONSTRAINT `komentar_ibfk_2` FOREIGN KEY (`user_id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `list_berita`
--
ALTER TABLE `list_berita`
  ADD CONSTRAINT `FK_kategori` FOREIGN KEY (`kategori_id_kategori`) REFERENCES `kategori_berita` (`id_kategori`),
  ADD CONSTRAINT `FK_klasifikasi` FOREIGN KEY (`klasifikasi_id_klasifikasi`) REFERENCES `klasifikasi_berita` (`id_klasifikasi`),
  ADD CONSTRAINT `FK_sumber` FOREIGN KEY (`sumber_id_sumber`) REFERENCES `sumber_berita` (`id_sumber`),
  ADD CONSTRAINT `list_berita_ibfk_1` FOREIGN KEY (`user_id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `referensi`
--
ALTER TABLE `referensi`
  ADD CONSTRAINT `FK_berita` FOREIGN KEY (`berita_id_berita`) REFERENCES `list_berita` (`id_berita`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
