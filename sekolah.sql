-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2022 at 08:33 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `thumbnail` text NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `is_visible` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `judul`, `isi`, `thumbnail`, `create_date`, `update_date`, `is_visible`) VALUES
(1, 'Agenda Liburan Trip ke Jogja', 'Tujuan utama adalah Ramen Golden Geisha', 'assets/img/recent-photos/recent-photos-4.jpg', '2022-12-02 11:30:45', '2022-12-02 11:32:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp(),
  `update_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `is_visible` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `isi`, `thumbnail`, `create_date`, `update_date`, `is_visible`) VALUES
(1, 'Berita 1', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula nisi condimentum, fermentum nisi et, luctus nisi. Sed interdum risus vitae massa elementum luctus. Vestibulum pellentesque dignissim laoreet. Curabitur vehicula, dolor quis sollicitudin interdum, sem est malesuada urna, et rutrum turpis mi eu ipsum. Phasellus vehicula, felis vel consectetur rutrum, magna lorem blandit lorem, at placerat libero dolor vitae ipsum. Vestibulum condimentum lacus tortor, quis venenatis nibh luctus in. Nullam non laoreet lectus, eu facilisis elit. Etiam placerat urna non eros consequat dictum eget feugiat eros. Donec euismod lacus nec nulla molestie, in consequat urna condimentum.\r\n</p>\r\n<p>\r\nPhasellus eget libero elit. Fusce sed arcu erat. Donec molestie elit nec nunc laoreet elementum. Nam eu lectus eu risus dictum ultrices in eget tortor. Duis suscipit, sapien vel gravida porta, dui lacus congue lectus, et tristique nunc massa et metus. Integer finibus ac dui vitae faucibus. Praesent cursus bibendum facilisis. Sed imperdiet massa tellus, ac blandit magna suscipit ac. Sed quis nisi pulvinar, tempus lacus at, feugiat nisi. Quisque eu nisi quam. Cras vehicula feugiat eros ac dapibus.\r\n</p>\r\n<p>\r\nPellentesque blandit elementum tellus, quis ornare mi tincidunt faucibus. Phasellus efficitur est in nunc volutpat condimentum sit amet eget ante. Nam ultrices blandit augue, in bibendum ipsum ullamcorper hendrerit. Proin metus quam, consequat et ultrices sit amet, porttitor at purus. Nulla tempus rutrum nunc. Phasellus quis ultricies libero. Sed at nisi dolor. Vivamus accumsan tortor in ex volutpat pulvinar. Cras convallis lobortis risus nec tristique. Nulla vehicula elit a molestie efficitur. Curabitur tincidunt gravida mollis.\r\n</p>\r\n<p>\r\nNullam risus ante, dignissim sit amet nulla nec, maximus porta quam. Aliquam dignissim magna massa. Duis lectus nulla, dictum vestibulum turpis ut, bibendum tincidunt arcu. Nullam id sollicitudin diam. Fusce a nulla sit amet nunc accumsan porta. Etiam tempus sapien ullamcorper dignissim pulvinar. Etiam a viverra nunc, sit amet facilisis quam. Suspendisse a dapibus nulla. Nullam malesuada ultricies molestie. Donec faucibus leo nisi, in consectetur risus ullamcorper at. Integer posuere odio sed eros pharetra maximus. Donec in metus a nisi aliquet porttitor in et lectus. Aliquam non ultricies velit. Nulla facilisi. Cras eros velit, vestibulum in mi sit amet, finibus efficitur massa. Integer commodo tempor justo, eget interdum ex iaculis eu.\r\n</p>\r\n<p>\r\nVivamus vitae tortor ut nibh cursus suscipit et in tellus. Phasellus scelerisque sem velit, a sagittis elit laoreet non. Nulla malesuada mi non nisl ullamcorper, eu luctus turpis congue. Pellentesque lacus eros, lacinia eget eros id, mattis volutpat ante. Ut quis convallis massa. Curabitur nulla urna, consequat quis quam eu, feugiat congue tellus. Ut semper urna non ligula iaculis mollis. Praesent sed sagittis diam, vitae gravida lectus. Nullam dignissim efficitur ornare. In hac habitasse platea dictumst. Nulla vel porta sem, vitae rutrum velit. Sed aliquet tortor vitae laoreet mattis.\r\n</p>', 'assets/img/recent-photos/recent-photos-1.jpg', '2022-11-30 10:16:32', '2022-11-30 10:17:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `file` text DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp(),
  `update_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `is_visible` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id`, `judul`, `keterangan`, `file`, `create_date`, `update_date`, `is_visible`) VALUES
(1, 'Galeri 1', 'Kegiatan 1', 'assets/img/recent-photos/recent-photos-1.jpg', '2022-11-30 09:15:32', '2022-11-30 10:17:05', 1),
(2, 'Galeri 2', 'Kegiatan 2', 'assets/img/recent-photos/recent-photos-2.jpg', '2022-11-30 09:15:32', '2022-11-30 10:17:05', 1),
(3, 'Galeri 3', 'Kegiatan 3', 'assets/img/recent-photos/recent-photos-3.jpg', '2022-11-30 09:15:32', '2022-11-30 10:17:05', 1),
(4, 'Galeri 4', 'Kegiatan 4', 'assets/img/recent-photos/recent-photos-4.jpg', '2022-11-30 09:15:32', '2022-11-30 10:17:05', 1),
(5, 'Galeri 5', 'Kegiatan 5', 'assets/img/recent-photos/recent-photos-5.jpg', '2022-11-30 09:15:32', '2022-11-30 10:17:05', 1),
(6, 'Galeri 6', 'Kegiatan 6', 'assets/img/recent-photos/recent-photos-6.jpg', '2022-11-30 09:15:32', '2022-11-30 10:17:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `id_jabatan` int(11) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `is_visible` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `id_jabatan`, `foto`, `keterangan`, `is_visible`) VALUES
(1, 'Bambang', 1, 'assets\\img\\members\\member-2.jpg', NULL, 1),
(2, 'Maharani', 2, 'assets\\img\\members\\member-1.jpg', NULL, 1),
(3, 'Annisa', 3, 'assets\\img\\members\\member-3.jpg', NULL, 1),
(4, 'Topan', 4, 'assets\\img\\members\\member-2.jpg', NULL, 1),
(5, 'Wiranto', 4, 'assets\\img\\members\\member-2.jpg', NULL, 1),
(6, 'Agus Bayu', 4, 'assets\\img\\members\\member-2.jpg', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id`, `nama`) VALUES
(1, 'Kepala Sekolah'),
(2, 'Wakil Kepala Sekolah'),
(3, 'Staff TU'),
(4, 'Guru');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_ruang`
--

CREATE TABLE `jenis_ruang` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jenis_ruang`
--

INSERT INTO `jenis_ruang` (`id`, `nama`) VALUES
(1, 'Kelas');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp(),
  `update_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `is_visible` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama`, `keterangan`, `thumbnail`, `create_date`, `update_date`, `is_visible`) VALUES
(1, 'IPA', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula nisi condimentum, fermentum nisi et, luctus nisi. Sed interdum risus vitae massa elementum luctus. Vestibulum pellentesque dignissim laoreet. Curabitur vehicula, dolor quis sollicitudin interdum, sem est malesuada urna, et rutrum turpis mi eu ipsum. Phasellus vehicula, felis vel consectetur rutrum, magna lorem blandit lorem, at placerat libero dolor vitae ipsum. Vestibulum condimentum lacus tortor, quis venenatis nibh luctus in. Nullam non laoreet lectus, eu facilisis elit. Etiam placerat urna non eros consequat dictum eget feugiat eros. Donec euismod lacus nec nulla molestie, in consequat urna condimentum.\r\n</p>\r\n<p>\r\nPhasellus eget libero elit. Fusce sed arcu erat. Donec molestie elit nec nunc laoreet elementum. Nam eu lectus eu risus dictum ultrices in eget tortor. Duis suscipit, sapien vel gravida porta, dui lacus congue lectus, et tristique nunc massa et metus. Integer finibus ac dui vitae faucibus. Praesent cursus bibendum facilisis. Sed imperdiet massa tellus, ac blandit magna suscipit ac. Sed quis nisi pulvinar, tempus lacus at, feugiat nisi. Quisque eu nisi quam. Cras vehicula feugiat eros ac dapibus.\r\n</p>\r\n<p>\r\nPellentesque blandit elementum tellus, quis ornare mi tincidunt faucibus. Phasellus efficitur est in nunc volutpat condimentum sit amet eget ante. Nam ultrices blandit augue, in bibendum ipsum ullamcorper hendrerit. Proin metus quam, consequat et ultrices sit amet, porttitor at purus. Nulla tempus rutrum nunc. Phasellus quis ultricies libero. Sed at nisi dolor. Vivamus accumsan tortor in ex volutpat pulvinar. Cras convallis lobortis risus nec tristique. Nulla vehicula elit a molestie efficitur. Curabitur tincidunt gravida mollis.\r\n</p>\r\n<p>\r\nNullam risus ante, dignissim sit amet nulla nec, maximus porta quam. Aliquam dignissim magna massa. Duis lectus nulla, dictum vestibulum turpis ut, bibendum tincidunt arcu. Nullam id sollicitudin diam. Fusce a nulla sit amet nunc accumsan porta. Etiam tempus sapien ullamcorper dignissim pulvinar. Etiam a viverra nunc, sit amet facilisis quam. Suspendisse a dapibus nulla. Nullam malesuada ultricies molestie. Donec faucibus leo nisi, in consectetur risus ullamcorper at. Integer posuere odio sed eros pharetra maximus. Donec in metus a nisi aliquet porttitor in et lectus. Aliquam non ultricies velit. Nulla facilisi. Cras eros velit, vestibulum in mi sit amet, finibus efficitur massa. Integer commodo tempor justo, eget interdum ex iaculis eu.\r\n</p>\r\n<p>\r\nVivamus vitae tortor ut nibh cursus suscipit et in tellus. Phasellus scelerisque sem velit, a sagittis elit laoreet non. Nulla malesuada mi non nisl ullamcorper, eu luctus turpis congue. Pellentesque lacus eros, lacinia eget eros id, mattis volutpat ante. Ut quis convallis massa. Curabitur nulla urna, consequat quis quam eu, feugiat congue tellus. Ut semper urna non ligula iaculis mollis. Praesent sed sagittis diam, vitae gravida lectus. Nullam dignissim efficitur ornare. In hac habitasse platea dictumst. Nulla vel porta sem, vitae rutrum velit. Sed aliquet tortor vitae laoreet mattis.\r\n</p>', 'assets/img/recent-photos/recent-photos-1.jpg', '2022-11-30 10:16:32', '2022-11-30 15:25:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `thumbnail` text NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `is_visible` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `judul`, `isi`, `thumbnail`, `create_date`, `update_date`, `is_visible`) VALUES
(1, 'Pemilihan Ketua OSIS Periode 2022-2023', 'Phasellus eget libero elit. Fusce sed arcu erat. Donec molestie elit nec nunc laoreet elementum. Nam eu lectus eu risus dictum ultrices in eget tortor. Duis suscipit, sapien vel gravida porta, dui lacus congue lectus, et tristique nunc massa et metus. Integer finibus ac dui vitae faucibus. Praesent cursus bibendum facilisis. Sed imperdiet massa tellus, ac blandit magna suscipit ac. Sed quis nisi pulvinar, tempus lacus at, feugiat nisi. Quisque eu nisi quam. Cras vehicula feugiat eros ac dapibus.', 'assets/img/recent-photos/recent-photos-2.jpg', '2022-12-02 11:30:45', '2022-12-02 11:32:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) DEFAULT 0,
  `nama` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(4) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `is_visible` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `id_parent`, `nama`, `url`, `is_admin`, `order`, `is_visible`) VALUES
(1, 0, 'Beranda', '/home', 0, 1, 1),
(2, 1, 'Berita', '/home/berita', 0, 1, 1),
(3, 1, 'Galeri', '/home/galeri', 0, 2, 1),
(4, 1, 'Video', '/home/video', 0, 3, 1),
(5, 0, 'Profil', '/profile', 0, 2, 1),
(6, 5, 'Tentang Sekolah', '/profile/about', 0, 1, 1),
(7, 5, 'Visi dan Misi', '/profile/visimisi', 0, 2, 1),
(8, 5, 'Jurusan', '/profile/jurusan', 0, 3, 1),
(9, 0, 'Data', '/data', 0, 3, 1),
(10, 9, 'Inventaris', '/data/inventaris', 0, 1, 1),
(11, 9, 'Guru', '/data/guru', 0, 2, 1),
(12, 9, 'Siswa', '/data/siswa', 0, 3, 1),
(13, 0, 'Informasi', '/informasi', 0, 4, 1),
(14, 13, 'Pengumuman', '/informasi/pengumuman', 0, 1, 1),
(15, 13, 'Agenda Kegiatan', '/informasi/agenda', 0, 2, 1),
(16, 13, 'Unduhan', '/informasi/unduhan', 0, 3, 1),
(17, 0, 'Osis', '/osis', 0, 5, 1),
(18, 17, 'Tentang Osis', '/osis/about', 0, 1, 1),
(19, 17, 'Pengurus Osis', '/osis/pengurus', 0, 2, 1),
(20, 17, 'Bidang Kegiatan', '/osis/kegiatan', 0, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `thumbnail` text NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `is_visible` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `judul`, `isi`, `thumbnail`, `create_date`, `update_date`, `is_visible`) VALUES
(1, 'Pengumuman Justin dan Sisca Kohl Menikah', 'Baru muncul berita terbarunya guys wkwk', 'assets/img/recent-photos/recent-photos-1.jpg', '2022-12-02 10:40:31', '2022-12-02 10:46:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `id_jenis_ruang` int(11) DEFAULT NULL,
  `panjang` int(11) DEFAULT NULL,
  `lebar` int(11) DEFAULT NULL,
  `pencahayaan` varchar(255) DEFAULT NULL,
  `udara` varchar(255) DEFAULT NULL,
  `bangunan` varchar(255) DEFAULT NULL,
  `kesesuaian_ruang` int(11) DEFAULT NULL,
  `kesesuaian_barang` int(11) DEFAULT NULL,
  `kesesuaian_rasio` int(11) DEFAULT NULL,
  `index_ruang` varchar(255) DEFAULT NULL,
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`id`, `nama`, `id_jenis_ruang`, `panjang`, `lebar`, `pencahayaan`, `udara`, `bangunan`, `kesesuaian_ruang`, `kesesuaian_barang`, `kesesuaian_rasio`, `index_ruang`, `foto`) VALUES
(1, 'X AKL 2', 1, 7, 8, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 85, 1, 85, '4/U/KLS', 'assets/img/recent-photos/recent-photos-1.jpg'),
(2, 'X AKL 1', 1, 7, 8, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 85, 1, 85, '4/U/KLS', 'assets/img/recent-photos/recent-photos-2.jpg'),
(3, 'X AKL 3', 1, 7, 8, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 85, 1, 85, '4/U/KLS', 'assets/img/recent-photos/recent-photos-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `value`) VALUES
(1, 'nama', 'Sekolah'),
(2, 'tentang', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula nisi condimentum, fermentum nisi et, luctus nisi. Sed interdum risus vitae massa elementum luctus. Vestibulum pellentesque dignissim laoreet. Curabitur vehicula, dolor quis sollicitudin interdum, sem est malesuada urna, et rutrum turpis mi eu ipsum. Phasellus vehicula, felis vel consectetur rutrum, magna lorem blandit lorem, at placerat libero dolor vitae ipsum. Vestibulum condimentum lacus tortor, quis venenatis nibh luctus in. Nullam non laoreet lectus, eu facilisis elit. Etiam placerat urna non eros consequat dictum eget feugiat eros. Donec euismod lacus nec nulla molestie, in consequat urna condimentum.\r\n</p>\r\n<p>\r\nPhasellus eget libero elit. Fusce sed arcu erat. Donec molestie elit nec nunc laoreet elementum. Nam eu lectus eu risus dictum ultrices in eget tortor. Duis suscipit, sapien vel gravida porta, dui lacus congue lectus, et tristique nunc massa et metus. Integer finibus ac dui vitae faucibus. Praesent cursus bibendum facilisis. Sed imperdiet massa tellus, ac blandit magna suscipit ac. Sed quis nisi pulvinar, tempus lacus at, feugiat nisi. Quisque eu nisi quam. Cras vehicula feugiat eros ac dapibus.\r\n</p>\r\n<p>\r\nPellentesque blandit elementum tellus, quis ornare mi tincidunt faucibus. Phasellus efficitur est in nunc volutpat condimentum sit amet eget ante. Nam ultrices blandit augue, in bibendum ipsum ullamcorper hendrerit. Proin metus quam, consequat et ultrices sit amet, porttitor at purus. Nulla tempus rutrum nunc. Phasellus quis ultricies libero. Sed at nisi dolor. Vivamus accumsan tortor in ex volutpat pulvinar. Cras convallis lobortis risus nec tristique. Nulla vehicula elit a molestie efficitur. Curabitur tincidunt gravida mollis.\r\n</p>\r\n<p>\r\nNullam risus ante, dignissim sit amet nulla nec, maximus porta quam. Aliquam dignissim magna massa. Duis lectus nulla, dictum vestibulum turpis ut, bibendum tincidunt arcu. Nullam id sollicitudin diam. Fusce a nulla sit amet nunc accumsan porta. Etiam tempus sapien ullamcorper dignissim pulvinar. Etiam a viverra nunc, sit amet facilisis quam. Suspendisse a dapibus nulla. Nullam malesuada ultricies molestie. Donec faucibus leo nisi, in consectetur risus ullamcorper at. Integer posuere odio sed eros pharetra maximus. Donec in metus a nisi aliquet porttitor in et lectus. Aliquam non ultricies velit. Nulla facilisi. Cras eros velit, vestibulum in mi sit amet, finibus efficitur massa. Integer commodo tempor justo, eget interdum ex iaculis eu.\r\n</p>\r\n<p>\r\nVivamus vitae tortor ut nibh cursus suscipit et in tellus. Phasellus scelerisque sem velit, a sagittis elit laoreet non. Nulla malesuada mi non nisl ullamcorper, eu luctus turpis congue. Pellentesque lacus eros, lacinia eget eros id, mattis volutpat ante. Ut quis convallis massa. Curabitur nulla urna, consequat quis quam eu, feugiat congue tellus. Ut semper urna non ligula iaculis mollis. Praesent sed sagittis diam, vitae gravida lectus. Nullam dignissim efficitur ornare. In hac habitasse platea dictumst. Nulla vel porta sem, vitae rutrum velit. Sed aliquet tortor vitae laoreet mattis.\r\n</p>'),
(3, 'lokasi', '-7.5572012,110.8409193'),
(4, 'visi', 'Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.'),
(5, 'misi', '{\"1\":\"Mendidik\",\"2\":\"Mencerdaskan\",\"3\":\"Mengembangkan\"}');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `file` text DEFAULT NULL,
  `is_visible` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `file`, `is_visible`) VALUES
(1, 'assets/img/slide/slide-1.jpg', 1),
(2, 'assets/img/slide/slide-2.jpg', 1),
(3, 'assets/img/slide/slide-3.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `unduhan`
--

CREATE TABLE `unduhan` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `file` text NOT NULL,
  `create_date` datetime NOT NULL,
  `is_visible` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unduhan`
--

INSERT INTO `unduhan` (`id`, `judul`, `keterangan`, `file`, `create_date`, `is_visible`) VALUES
(1, 'Jadwal Semester Genap 2022', 'jadwal ini berisi ndak tahu kok tanya saya\r\n\r\nkamu nanya ? \r\nkamu nanya ?', 'assets/img/recent-photos/recent-photos-5.jpg', '2022-12-02 11:41:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `file` text DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp(),
  `update_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `is_visible` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `judul`, `keterangan`, `file`, `thumbnail`, `create_date`, `update_date`, `is_visible`) VALUES
(1, 'Video 1', 'Kegiatan 1', 'assets/video/oceans.mp4', 'assets/img/recent-photos/recent-photos-1.jpg', '2022-11-30 11:11:10', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jenis_ruang`
--
ALTER TABLE `jenis_ruang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jenis_ruang`
--
ALTER TABLE `jenis_ruang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
