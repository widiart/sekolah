/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100427
 Source Host           : localhost:3306
 Source Schema         : sekolah

 Target Server Type    : MySQL
 Target Server Version : 100427
 File Encoding         : 65001

 Date: 12/12/2022 06:42:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agenda
-- ----------------------------
DROP TABLE IF EXISTS `agenda`;
CREATE TABLE `agenda`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `isi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `thumbnail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `is_visible` tinyint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of agenda
-- ----------------------------
INSERT INTO `agenda` VALUES (1, 'KANJI - Kegiatan Jumat Mengaji', 'Pada setiap hari Jum\'at, di SMK Darul Ulum Amessangeng Maros diadakan kegiatan Jum\'at mengaji atau biasa disebut KANJI. Kegiatan ini diadakan di mushola sebelum jam pelajaran pertama di mulai.', 'assets/img/kegiatan/kanji.jpeg', '2022-12-02 11:30:45', '2022-12-02 11:32:45', 1);
INSERT INTO `agenda` VALUES (2, 'Kegiatan Apel Pagi Setiap Hari selasa', 'Pada setiap hari Selasa Pagi, di SMK Darul Ulum Amessangeng Maros diadakan kegiatan Apel Pagi.', 'assets/img/kegiatan/apel.jpeg', '2022-12-12 06:08:12', '2022-12-13 06:08:15', 1);

-- ----------------------------
-- Table structure for berita
-- ----------------------------
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `thumbnail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `create_date` datetime NULL DEFAULT current_timestamp,
  `update_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_visible` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of berita
-- ----------------------------
INSERT INTO `berita` VALUES (1, 'Berita 1', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula nisi condimentum, fermentum nisi et, luctus nisi. Sed interdum risus vitae massa elementum luctus. Vestibulum pellentesque dignissim laoreet. Curabitur vehicula, dolor quis sollicitudin interdum, sem est malesuada urna, et rutrum turpis mi eu ipsum. Phasellus vehicula, felis vel consectetur rutrum, magna lorem blandit lorem, at placerat libero dolor vitae ipsum. Vestibulum condimentum lacus tortor, quis venenatis nibh luctus in. Nullam non laoreet lectus, eu facilisis elit. Etiam placerat urna non eros consequat dictum eget feugiat eros. Donec euismod lacus nec nulla molestie, in consequat urna condimentum.\r\n</p>\r\n<p>\r\nPhasellus eget libero elit. Fusce sed arcu erat. Donec molestie elit nec nunc laoreet elementum. Nam eu lectus eu risus dictum ultrices in eget tortor. Duis suscipit, sapien vel gravida porta, dui lacus congue lectus, et tristique nunc massa et metus. Integer finibus ac dui vitae faucibus. Praesent cursus bibendum facilisis. Sed imperdiet massa tellus, ac blandit magna suscipit ac. Sed quis nisi pulvinar, tempus lacus at, feugiat nisi. Quisque eu nisi quam. Cras vehicula feugiat eros ac dapibus.\r\n</p>\r\n<p>\r\nPellentesque blandit elementum tellus, quis ornare mi tincidunt faucibus. Phasellus efficitur est in nunc volutpat condimentum sit amet eget ante. Nam ultrices blandit augue, in bibendum ipsum ullamcorper hendrerit. Proin metus quam, consequat et ultrices sit amet, porttitor at purus. Nulla tempus rutrum nunc. Phasellus quis ultricies libero. Sed at nisi dolor. Vivamus accumsan tortor in ex volutpat pulvinar. Cras convallis lobortis risus nec tristique. Nulla vehicula elit a molestie efficitur. Curabitur tincidunt gravida mollis.\r\n</p>\r\n<p>\r\nNullam risus ante, dignissim sit amet nulla nec, maximus porta quam. Aliquam dignissim magna massa. Duis lectus nulla, dictum vestibulum turpis ut, bibendum tincidunt arcu. Nullam id sollicitudin diam. Fusce a nulla sit amet nunc accumsan porta. Etiam tempus sapien ullamcorper dignissim pulvinar. Etiam a viverra nunc, sit amet facilisis quam. Suspendisse a dapibus nulla. Nullam malesuada ultricies molestie. Donec faucibus leo nisi, in consectetur risus ullamcorper at. Integer posuere odio sed eros pharetra maximus. Donec in metus a nisi aliquet porttitor in et lectus. Aliquam non ultricies velit. Nulla facilisi. Cras eros velit, vestibulum in mi sit amet, finibus efficitur massa. Integer commodo tempor justo, eget interdum ex iaculis eu.\r\n</p>\r\n<p>\r\nVivamus vitae tortor ut nibh cursus suscipit et in tellus. Phasellus scelerisque sem velit, a sagittis elit laoreet non. Nulla malesuada mi non nisl ullamcorper, eu luctus turpis congue. Pellentesque lacus eros, lacinia eget eros id, mattis volutpat ante. Ut quis convallis massa. Curabitur nulla urna, consequat quis quam eu, feugiat congue tellus. Ut semper urna non ligula iaculis mollis. Praesent sed sagittis diam, vitae gravida lectus. Nullam dignissim efficitur ornare. In hac habitasse platea dictumst. Nulla vel porta sem, vitae rutrum velit. Sed aliquet tortor vitae laoreet mattis.\r\n</p>', 'assets/img/recent-photos/recent-photos-1.jpg', '2022-11-30 10:16:32', '2022-11-30 10:17:01', 1);

-- ----------------------------
-- Table structure for galeri
-- ----------------------------
DROP TABLE IF EXISTS `galeri`;
CREATE TABLE `galeri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `create_date` datetime NULL DEFAULT current_timestamp,
  `update_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_visible` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of galeri
-- ----------------------------
INSERT INTO `galeri` VALUES (1, 'Galeri 1', 'Kegiatan Belajar', 'assets/img/gallery/kelas-1.jpg', '2022-11-30 09:15:32', '2022-12-12 06:30:17', 1);
INSERT INTO `galeri` VALUES (2, 'Galeri 2', 'Kegiatan Belajar', 'assets/img/gallery/kelas-2.jpg', '2022-11-30 09:15:32', '2022-12-12 06:30:29', 1);
INSERT INTO `galeri` VALUES (3, 'Galeri 3', 'Kegiatan Belajar', 'assets/img/gallery/kelas-3.jpg', '2022-11-30 09:15:32', '2022-12-12 06:30:34', 1);
INSERT INTO `galeri` VALUES (4, 'Galeri 4', 'Kegiatan Belajar', 'assets/img/gallery/kelas-4.jpg', '2022-11-30 09:15:32', '2022-12-12 06:30:37', 1);
INSERT INTO `galeri` VALUES (5, 'Galeri 5', 'Kegiatan Belajar', 'assets/img/gallery/kelas-5.jpg', '2022-11-30 09:15:32', '2022-12-12 06:30:39', 1);
INSERT INTO `galeri` VALUES (6, 'Galeri 6', 'Kegiatan Belajar', 'assets/img/gallery/kelas-6.jpg', '2022-11-30 09:15:32', '2022-12-12 06:30:41', 1);
INSERT INTO `galeri` VALUES (7, 'Galeri 7', 'Kegiatan Belajar', 'assets/img/gallery/kelas-7.jpg', '2022-11-30 09:15:32', '2022-12-12 06:32:08', 1);
INSERT INTO `galeri` VALUES (8, 'Galeri 8', 'Kegiatan Lab Komputer', 'assets/img/gallery/lab-komputer-1.jpg', '2022-11-30 09:15:32', '2022-12-12 06:32:58', 1);
INSERT INTO `galeri` VALUES (9, 'Galeri 9', 'Kegiatan Lab Komputer', 'assets/img/gallery/lab-komputer-2.jpg', '2022-11-30 09:15:32', '2022-12-12 06:33:31', 1);
INSERT INTO `galeri` VALUES (10, 'Galeri 10', 'Kegiatan Lab Komputer', 'assets/img/gallery/lab-komputer-3.jpg', '2022-11-30 09:15:32', '2022-12-12 06:33:31', 1);
INSERT INTO `galeri` VALUES (11, 'Galeri 11', 'Foto Bersama', 'assets/img/gallery/guru-1.jpg', '2022-11-30 09:15:32', '2022-12-12 06:33:53', 1);
INSERT INTO `galeri` VALUES (12, 'Galeri 12', 'Halal Bi Halal', 'assets/img/gallery/halal-bi-halal.jpg', '2022-11-30 09:15:32', '2022-12-12 06:34:10', 1);
INSERT INTO `galeri` VALUES (13, 'Galeri 13', 'Lab Jahit', 'assets/img/gallery/lab-jahit-1.jpg', '2022-11-30 09:15:32', '2022-12-12 06:33:31', 1);

-- ----------------------------
-- Table structure for guru
-- ----------------------------
DROP TABLE IF EXISTS `guru`;
CREATE TABLE `guru`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_jabatan` int NULL DEFAULT NULL,
  `foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `is_visible` tinyint NULL DEFAULT 1,
  `nuptk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_lahir` date NULL DEFAULT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jk` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of guru
-- ----------------------------
INSERT INTO `guru` VALUES (1, 'AHMAD AQIL', 5, 'assets/img/members/default-user-imge.jpeg', 'GTY/PTY', 1, '1934766667130192', '7309120206880003', '1900-01-19', 'MAROS', 'L', 'Cambayya, Bonto Bahari, Kec. Maros Utara / Bontoa');
INSERT INTO `guru` VALUES (2, 'Basri N', 5, 'assets/img/members/default-user-imge.jpeg', 'GTY/PTY', 1, '7357753654130103', '7371072510750002', '1900-01-19', 'Toasae', 'L', 'Jl. Barawaja No. 11, Tammua, Kec. Tallo');
INSERT INTO `guru` VALUES (3, 'Fatimang', 5, 'assets/img/members/default-user-imge.jpeg', 'GTY/PTY', 1, '', '7309036703750001', '1900-01-19', 'PONGKA BONE', 'P', 'MANARANG, TUKAMASEA, Kec. Bantimurung');
INSERT INTO `guru` VALUES (4, 'Hamzah', 5, 'assets/img/members/default-user-imge.jpeg', 'GTY/PTY', 1, '3346771672130023', '7309031410930001', '1900-01-19', 'MAROS', 'L', 'SAMARIGA, BARUGA, Kec. Bantimurung');
INSERT INTO `guru` VALUES (5, 'Lanni', 5, 'assets/img/members/default-user-imge.jpeg', 'GTY/PTY', 1, '', '7310104212960002', '1900-01-19', 'Bung', 'P', 'Kamp. Kantisang, Bontoa, Kec. Minasatene');
INSERT INTO `guru` VALUES (6, 'Nasrul', 5, 'assets/img/members/default-user-imge.jpeg', 'Guru Honor Sekolah', 1, '', '730902221080901 ', '1900-01-19', 'PANGKEP', 'L', 'MAROS, SOERANG, Kec. Maros Baru');
INSERT INTO `guru` VALUES (7, 'Nuraeni', 5, 'assets/img/members/default-user-imge.jpeg', 'Guru Honor Sekolah', 1, '', '7311036311880002', '1900-01-19', 'SIKAPA', 'P', 'Jl. A.Naping - Katapang, Samalewa, Kec. Bungoro');
INSERT INTO `guru` VALUES (8, 'Nurismi', 5, 'assets/img/members/default-user-imge.jpeg', 'GTY/PTY', 1, '8146766667230243', '7310065408880002', '1900-01-19', 'Katapang', 'P', 'Jl. A.Naping - Katapang, Samalewa, Kec. Bungoro');
INSERT INTO `guru` VALUES (9, 'Nurwana', 5, 'assets/img/members/default-user-imge.jpeg', 'GTY/PTY', 1, '7533765666130113', '7309034112870005', '1900-01-19', 'MAROS', 'P', 'AMESSANGENG, TUKAMASEA, Kec. Bantimurung');
INSERT INTO `guru` VALUES (10, 'Rosbiah', 5, 'assets/img/members/default-user-imge.jpeg', 'GTY/PTY', 1, '1563769670230023', '7309037112910009', '1900-01-19', 'MAROS', 'P', 'AMESSANGENG, TUKAMASEA, Kec. Bantimurung');
INSERT INTO `guru` VALUES (11, 'Rosnaeni', 5, 'assets/img/members/default-user-imge.jpeg', 'GTY/PTY', 1, '2437768669230052', '7308174501900001', '1900-01-19', 'PONGKA', 'P', 'Cambayya Bonto bahari, Bonto Bahari, Kec. Maros Utara / Bontoa');
INSERT INTO `guru` VALUES (12, 'Salmiah', 5, 'assets/img/members/default-user-imge.jpeg', 'GTY/PTY', 1, '0862758659300082', '7309057005800003', '1900-01-19', 'Maros', 'P', 'Suli-suli, Bontoa, Kec. Maros Utara / Bontoa');
INSERT INTO `guru` VALUES (13, 'Sinta Bella', 5, 'assets/img/members/default-user-imge.jpeg', 'GTY/PTY', 1, '', '7310076107970002', '1900-01-19', 'Taraweang', 'P', 'Kampung Bontoloa, Taraweang, Kec. Labakkang');
INSERT INTO `guru` VALUES (14, 'Sri Rahayu', 5, 'assets/img/members/default-user-imge.jpeg', 'GTY/PTY', 1, '8343769670230213', '7309035110910003', '1900-01-19', 'LAMPOKO', 'P', 'SAMARIGA, BARUGA, Kec. Bantimurung');
INSERT INTO `guru` VALUES (15, 'Sufianto', 5, 'assets/img/members/default-user-imge.jpeg', 'GTY/PTY', 1, '6940771672130192', '7313050806930003', '1900-01-19', 'MELLENGE', 'L', 'Manarang, Tukamasea, Kec. Bantimurung');
INSERT INTO `guru` VALUES (16, 'Wahida', 5, 'assets/img/members/default-user-imge.jpeg', 'GTY/PTY', 1, '2253773674230103', '7401146109950002', '1900-01-19', 'Kolaka', 'P', 'Manarang, Tukamasea, Kec. Bantimurung');
INSERT INTO `guru` VALUES (17, 'Yusuf Dhahir Rahman', 5, 'assets/img/members/default-user-imge.jpeg', 'GTY/PTY', 1, '3560765666130142', '7310102802870001', '1900-01-19', 'PANGKEP', 'L', 'JL. NANGKA, MINASATENE, Kec. Minasatene');

-- ----------------------------
-- Table structure for jabatan
-- ----------------------------
DROP TABLE IF EXISTS `jabatan`;
CREATE TABLE `jabatan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jabatan
-- ----------------------------
INSERT INTO `jabatan` VALUES (1, 'Kepala Sekolah');
INSERT INTO `jabatan` VALUES (2, 'Wakil Kepala Sekolah');
INSERT INTO `jabatan` VALUES (3, 'Staff TU');
INSERT INTO `jabatan` VALUES (4, 'Guru');
INSERT INTO `jabatan` VALUES (5, 'Guru Mapel');

-- ----------------------------
-- Table structure for jabatan_osis
-- ----------------------------
DROP TABLE IF EXISTS `jabatan_osis`;
CREATE TABLE `jabatan_osis`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jabatan_osis
-- ----------------------------
INSERT INTO `jabatan_osis` VALUES (1, 'Ketua Osis');
INSERT INTO `jabatan_osis` VALUES (2, 'Wakil Ketua Osis');
INSERT INTO `jabatan_osis` VALUES (3, 'Sekretaris');
INSERT INTO `jabatan_osis` VALUES (4, 'Bendahara');

-- ----------------------------
-- Table structure for jenis_ruang
-- ----------------------------
DROP TABLE IF EXISTS `jenis_ruang`;
CREATE TABLE `jenis_ruang`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jenis_ruang
-- ----------------------------
INSERT INTO `jenis_ruang` VALUES (1, 'Kelas');

-- ----------------------------
-- Table structure for jurusan
-- ----------------------------
DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE `jurusan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `thumbnail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `create_date` datetime NULL DEFAULT current_timestamp,
  `update_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_visible` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jurusan
-- ----------------------------
INSERT INTO `jurusan` VALUES (1, 'Tata Busana', '<p>\r\nJurusan Tata Busana atau Fashion Design pada dasarnya adalah jurusan yang mempelajari ilmu merancang busana. Jurusan ini diperuntukkan bagi mereka yang ingin mengembangkan bakat dan minatnya dalam hal jahit menjahit, sampai dengan membuat produk yang berkualitas\r\n</p>', 'assets/img/jurusan/tata-busana.jpg', '2022-11-30 10:16:32', '2022-12-12 04:27:39', 1);
INSERT INTO `jurusan` VALUES (2, 'Teknik Instalasi Tenaga Listrik', '<p>\r\nJurusan ini mempelajari tentang perencanaan dan pemasangan instalasi listrik.\r\n</p>', 'assets/img/jurusan/teknik-listrik.png', '2022-11-30 10:16:32', '2022-12-12 04:31:40', 1);

-- ----------------------------
-- Table structure for kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `kegiatan`;
CREATE TABLE `kegiatan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `isi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `thumbnail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `is_visible` tinyint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kegiatan
-- ----------------------------
INSERT INTO `kegiatan` VALUES (1, 'Pemilihan Ketua OSIS Periode 2022-2023', 'Phasellus eget libero elit. Fusce sed arcu erat. Donec molestie elit nec nunc laoreet elementum. Nam eu lectus eu risus dictum ultrices in eget tortor. Duis suscipit, sapien vel gravida porta, dui lacus congue lectus, et tristique nunc massa et metus. Integer finibus ac dui vitae faucibus. Praesent cursus bibendum facilisis. Sed imperdiet massa tellus, ac blandit magna suscipit ac. Sed quis nisi pulvinar, tempus lacus at, feugiat nisi. Quisque eu nisi quam. Cras vehicula feugiat eros ac dapibus.', 'assets/img/recent-photos/recent-photos-2.jpg', '2022-12-02 11:30:45', '2022-12-02 11:32:45', 1);

-- ----------------------------
-- Table structure for kelas
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_wali` int NULL DEFAULT NULL,
  `id_jurusan` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kelas
-- ----------------------------
INSERT INTO `kelas` VALUES (1, 'Kelas 10 TITL', NULL, 1);
INSERT INTO `kelas` VALUES (2, 'Kelas 11 TITL', NULL, 1);
INSERT INTO `kelas` VALUES (3, 'Kelas 12 TITL', NULL, 1);
INSERT INTO `kelas` VALUES (4, 'Kelas 10 TB', NULL, 2);
INSERT INTO `kelas` VALUES (5, 'Kelas 11 TB', NULL, 2);
INSERT INTO `kelas` VALUES (6, 'Kelas 12 TB', NULL, 2);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_parent` int NULL DEFAULT 0,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_admin` tinyint NULL DEFAULT 0,
  `order` int NULL DEFAULT NULL,
  `is_visible` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 0, 'Beranda', '/home', 0, 1, 1);
INSERT INTO `menu` VALUES (2, 1, 'Berita', '/home/berita', 0, 1, 1);
INSERT INTO `menu` VALUES (3, 1, 'Galeri', '/home/galeri', 0, 2, 1);
INSERT INTO `menu` VALUES (4, 1, 'Video', '/home/video', 0, 3, 1);
INSERT INTO `menu` VALUES (5, 0, 'Profil', '/profile', 0, 2, 1);
INSERT INTO `menu` VALUES (6, 5, 'Tentang Sekolah', '/profile/about', 0, 1, 1);
INSERT INTO `menu` VALUES (7, 5, 'Visi dan Misi', '/profile/visimisi', 0, 2, 1);
INSERT INTO `menu` VALUES (8, 5, 'Jurusan', '/profile/jurusan', 0, 3, 1);
INSERT INTO `menu` VALUES (9, 0, 'Data', '/data', 0, 3, 1);
INSERT INTO `menu` VALUES (10, 9, 'Inventaris', '/data/inventaris', 0, 1, 1);
INSERT INTO `menu` VALUES (11, 9, 'Guru', '/data/guru', 0, 2, 1);
INSERT INTO `menu` VALUES (12, 9, 'Siswa', '/data/siswa', 0, 3, 1);
INSERT INTO `menu` VALUES (13, 0, 'Informasi', '/informasi', 0, 4, 1);
INSERT INTO `menu` VALUES (14, 13, 'Pengumuman', '/informasi/pengumuman', 0, 1, 1);
INSERT INTO `menu` VALUES (15, 13, 'Agenda Kegiatan', '/informasi/agenda', 0, 2, 1);
INSERT INTO `menu` VALUES (16, 13, 'Unduhan', '/informasi/unduhan', 0, 3, 1);
INSERT INTO `menu` VALUES (17, 0, 'Osis', '/osis', 0, 5, 1);
INSERT INTO `menu` VALUES (18, 17, 'Tentang Osis', '/osis/about', 0, 1, 1);
INSERT INTO `menu` VALUES (19, 17, 'Pengurus Osis', '/osis/pengurus', 0, 2, 1);
INSERT INTO `menu` VALUES (20, 17, 'Bidang Kegiatan', '/osis/kegiatan', 0, 3, 1);

-- ----------------------------
-- Table structure for osis
-- ----------------------------
DROP TABLE IF EXISTS `osis`;
CREATE TABLE `osis`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_jabatan` int NULL DEFAULT NULL,
  `foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `is_visible` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of osis
-- ----------------------------
INSERT INTO `osis` VALUES (1, 'Sehun', 1, 'assets\\img\\members\\sehun.jpg', NULL, 1);
INSERT INTO `osis` VALUES (2, 'Jeno', 2, 'assets\\img\\members\\jeno.jpg', NULL, 1);
INSERT INTO `osis` VALUES (3, 'Jaemin', 3, 'assets\\img\\members\\jaemin.jpg', NULL, 1);
INSERT INTO `osis` VALUES (4, 'Hanbin', 4, 'assets\\img\\members\\hanbin.jpg', NULL, 1);

-- ----------------------------
-- Table structure for pengumuman
-- ----------------------------
DROP TABLE IF EXISTS `pengumuman`;
CREATE TABLE `pengumuman`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `isi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `thumbnail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `is_visible` tinyint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pengumuman
-- ----------------------------
INSERT INTO `pengumuman` VALUES (1, 'Pengumuman Justin dan Sisca Kohl Menikah', 'Baru muncul berita terbarunya guys wkwk', 'assets/img/recent-photos/recent-photos-1.jpg', '2022-12-02 10:40:31', '2022-12-02 10:46:31', 1);

-- ----------------------------
-- Table structure for ruang
-- ----------------------------
DROP TABLE IF EXISTS `ruang`;
CREATE TABLE `ruang`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_jenis_ruang` int NULL DEFAULT NULL,
  `panjang` int NULL DEFAULT NULL,
  `lebar` int NULL DEFAULT NULL,
  `pencahayaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `udara` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bangunan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kesesuaian_ruang` int NULL DEFAULT NULL,
  `kesesuaian_barang` int NULL DEFAULT NULL,
  `kesesuaian_rasio` int NULL DEFAULT NULL,
  `index_ruang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ruang
-- ----------------------------
INSERT INTO `ruang` VALUES (1, 'Kantor', 2, 15, 10, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 85, 1, 85, '4/U/KLS', 'assets/img/inventaris/kantor.jpg');
INSERT INTO `ruang` VALUES (2, 'Kelas X', 1, 7, 8, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 85, 1, 85, '4/U/KLS', 'assets/img/inventaris/kelas_x.jpg');
INSERT INTO `ruang` VALUES (3, 'Kelas XI', 1, 7, 8, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 85, 1, 85, '4/U/KLS', 'assets/img/inventaris/kelas_xi.jpg');
INSERT INTO `ruang` VALUES (4, 'Kelas XII', 1, 7, 8, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 85, 1, 85, '4/U/KLS', 'assets/img/inventaris/kelas_xii.jpg');
INSERT INTO `ruang` VALUES (5, 'Mushola', 3, 20, 20, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 85, 1, 85, '4/U/KLS', 'assets/img/inventaris/mushola.jpg');
INSERT INTO `ruang` VALUES (6, 'Lab Komputer', 3, 7, 8, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 85, 1, 85, '4/U/KLS', 'assets/img/inventaris/lab_komputer.jpg');
INSERT INTO `ruang` VALUES (7, 'Kamar Mandi', 3, 5, 6, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 85, 1, 85, '4/U/KLS', 'assets/img/inventaris/kamar_mandi.jpg');

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES (1, 'nama', 'SMK Darul Ulum Amessangeng Maros');
INSERT INTO `setting` VALUES (2, 'tentang', '<p>SMK Darul Ulum Amessangeng Maros terletak di Kelurahan Tukamasea Kecamatan Bantimurung, Sulawesi Selatan. SMK Darul Ulum Amessangeng Maros mempunyai 2 jurusan yaitu Tata Busana dan Teknik Instalasi tenaga listrik\r\n</p>');
INSERT INTO `setting` VALUES (3, 'lokasi', '-7.5572012,110.8409193');
INSERT INTO `setting` VALUES (4, 'visi', 'Berprestasi, Terampil, Mandiri dan Berkarakter Berlandaskan iman dan Taqwa.');
INSERT INTO `setting` VALUES (5, 'misi', '{\"1\":\"Melaksanakan Pembelajaran Dan Bimbingan\",\"2\":\"Memberikan pelayanan prima dan menumbuhkan semangat belajar\",\"3\":\"Melatih dengan tekun untuk meningkatkan keterampilan peserta didik\",\"4\":\"Meningkatkan kemampuan peserta didik dalam menjalin hubungan timbal balik lingkungan budaya sekitar\",\"5\":\"Menambahkan sikap dan perilaku mulia melalui pengkajian nilai-nilai kagamaaan (IMTAQ)\"}');

-- ----------------------------
-- Table structure for siswa
-- ----------------------------
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_kelas` int NULL DEFAULT NULL,
  `foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `is_visible` tinyint NULL DEFAULT 1,
  `nisn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_lahir` date NULL DEFAULT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jk` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tahun_masuk` int NULL DEFAULT NULL,
  `agama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of siswa
-- ----------------------------
INSERT INTO `siswa` VALUES (1, 'AGUS BUDIANTO WIJAYA', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0075784837', '7309031308070002', '1900-07-20', 'Maros', 'L', 'Balang, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (2, 'Ahmad Kristian ', 1, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0076784459', '7309031601070002', '1900-07-20', 'Maros', 'L', 'Bungaeja, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (3, 'AISYAH', 6, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0045828468', '7309036011040001', '1900-04-20', 'MAROS', 'P', 'Cambajawa, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (4, 'Alif Fandi Nasrullah', 1, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0076334513', '7309032604070001', '1900-07-20', 'Maros', 'L', 'Leang-Leang, Leang-Leang, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (5, 'Amran', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0058754007', '7309031908050001', '1900-05-20', 'Maros', 'L', 'Batunapara, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (6, 'ANDI ADHIAKSA', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0066270429', '7309032006060001', '1900-06-20', 'MAROS', 'L', 'BONTOE, TUKAMASEA, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (7, 'ANDI WAHYU SAPUTRA', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0061853149', '7309031808060002', '1900-06-20', 'Maros', 'L', 'Batunapara, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (8, 'Andika', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0064838169', '7371031509070005', '1900-06-20', 'Maros', 'L', 'Manarang, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (9, 'Ardiansyah Kadir', 1, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0079378445', '7309030201070001', '1900-07-20', 'Maros', 'L', 'Bungaeja, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (10, 'Ardiansyah. S', 1, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0072599730', '7309030902070002', '1900-07-20', 'Maros', 'L', 'Dusun Balang, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (11, 'Ariel Syam Saputra', 3, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0053353936', '7309031304050001', '1900-05-20', 'Maros', 'L', 'Cambajawa, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (12, 'Arya Saputra', 1, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0072942389', '7322032203070001', '1900-07-20', 'Maros', 'L', 'Balang, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (13, 'ASNUR HIDAYAT', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '3069944209', '7309030501060004', '1900-06-20', 'Maros', 'L', 'Dusun Balang, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (14, 'Dirga', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0064403743', '9271031708060001', '1900-06-20', 'Sorong', 'L', 'Jl. Batua Raya, Batua, Kec. Panakukkang', 2022, 'Islam');
INSERT INTO `siswa` VALUES (15, 'Farhan Saputra Sudirman', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0057230761', '8271022112050001', '1900-05-20', 'Sidangoli', 'L', 'Pajjaiang, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (16, 'Firmansyah J', 3, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0059460932', '7371072506050010', '1900-05-20', 'Makassar', 'L', 'Gusung, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (17, 'FITRA', 4, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0065519745', '7309037112060002', '1900-06-20', 'Maros', 'P', 'POROS BONTOKAPPONG, TUKAMASEA, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (18, 'Haikal', 1, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0061406636', '7309031101060001', '1900-06-20', 'Maros', 'L', 'Dusun Amessangeng, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (19, 'Hasmidar', 6, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0054853918', '7309035303050003', '1900-05-20', 'Maros', 'P', 'Dusun Balang, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (20, 'Hasrul', 1, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0072654874', '7371110905070010', '1900-07-20', 'Makassar', 'L', 'Samariga, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (21, 'Herlinda aris', 6, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0058169263', '7309036705050002', '1900-05-20', 'Maros', 'P', 'Dusun Balang, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (22, 'Hikma Ayu', 6, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0066472099', '7310076202060001', '1900-06-20', 'Labakang', 'P', 'Jl. Pahlawan, Saonek, Kec. Waigeo Selatan', 2022, 'Islam');
INSERT INTO `siswa` VALUES (23, 'Islam Abd. Fahd', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0069021965', '7309030702060001', '1900-06-20', 'Maros', 'L', 'Saja, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (24, 'Jefri. M', 1, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Wali', 1, '0068804624', '7309030708060001', '1900-06-20', 'Maros', 'L', 'Jl. BARUGA, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (25, 'JUMARDI', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0063888368', '7309032205050003', '1900-05-20', 'Maros', 'L', 'Bungaeja, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (26, 'Karlina', 4, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0079552921', '7309037101070003', '1900-07-20', 'Maros', 'P', 'Bungaeja, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (27, 'Khaila', 4, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0073438772', '7309036612070002', '1900-07-20', 'Maros', 'P', 'Balang, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (28, 'Kurniawan', 3, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0053317846', '7310100304050003', '1900-05-20', 'Pangkep', 'L', 'Banggae, Bonto Langkasa, Kec. Minasatene', 2022, 'Islam');
INSERT INTO `siswa` VALUES (29, 'M. ALIF ADRIAN', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0056219228', '7309030604060002', '1900-06-20', 'MAROS', 'L', 'BONTOE, TUKAMASEA, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (30, 'MAHARANI', 5, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0052747220', '7309035902050001', '1900-05-20', 'MAROS', 'P', 'AMESSANGENG, TUKAMASEA, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (31, 'Maudu', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0053657338', '7371072804040006', '1900-05-20', 'Maros', 'L', 'Pajjaiang, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (32, 'Mirnawati', 5, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0063895590', '7309036006060002', '1900-06-20', 'Maros', 'P', 'Pajjaiang, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (33, 'Muh. Aidil', 1, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0075573159', '7309033005070002', '1900-07-20', 'Maros', 'L', 'Batunapara, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (34, 'Muh. Aril', 1, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0072676998', '7210012004070003', '1900-07-20', 'Kalukubula', 'L', 'Dusun Bonto Padalle, Mangeloreng, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (35, 'Muh. Arya', 1, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0069577799', '7309032904070006', '1900-07-20', 'Maros', 'L', 'Dusun Bonto Padalle, Mangeloreng, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (36, 'Muh. Fahril', 3, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0041073481', '7309030710040001', '1900-04-20', 'Maros', 'L', 'Manarang, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (37, 'Muh. Nurdin', 3, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0051065438', '7309033005050001', '1900-05-20', 'Maros', 'L', 'Batunapara, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (38, 'Muh. Ridwan', 1, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0078762939', '7309031503070001', '1900-07-20', 'Maros', 'L', 'Dusun Amessangeng, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (39, 'Muh. Risky', 1, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0063491621', '7309030505060001', '1900-06-20', 'Maros', 'L', 'Amessangeng, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (40, 'MUH. SYAHRIL', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0076888696', '7309031901070001', '1900-07-20', 'MAROS', 'L', 'BONTOKAPPONG, TUKAMESEA, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (41, 'MUH.IRFAIS', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0061804715', '7371071703080003', '1900-06-20', 'Maros', 'L', 'Batunapara, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (42, 'MUHAMMAD REZKY AL-AMIN', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0067555226', '7309032805060002', '1900-06-20', 'Balikpapan', 'L', 'Cambajawa, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (43, 'Muhammad Riski Yusuf', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0069230492', '7309031507060001', '1900-06-20', 'Makassar', 'L', 'Bungaeja, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (44, 'MUTHMAINNAH', 5, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0069456192', '7039034607060001', '1900-06-20', 'Maros', 'P', 'Samariga, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (45, 'NUR ANIZAH', 4, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0075186721', '7309036201070001', '1900-07-20', 'Maros', 'P', 'Bontokappong, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (46, 'Nur Anniza Suci Anti', 4, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0076256035', '7309116206070001', '1900-07-20', 'Maros', 'P', 'Masale, Tompobulu, Kec. Tompobulu', 2022, 'Islam');
INSERT INTO `siswa` VALUES (47, 'Nur Fadillah', 6, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0045800268', '7309037108040003', '1900-04-20', 'Maros', 'P', 'Dusun Balang, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (48, 'Nur Felisa Ramadhani', 3, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0066464886', '7309116606060001', '1900-05-20', 'Maros', 'P', 'DESI, TUKAMASEA, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (49, 'Nur Janna', 4, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0062010637', '9113095010060001', '1900-06-20', 'Timika', 'P', 'Dusun Cambajawa, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (50, 'NURASMI', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0068758097', '7309035905060003', '1900-06-20', 'Maros', 'P', 'Dusun Manarang, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (51, 'Nurfadillah', 6, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0047916094', '7309034409040002', '1900-04-20', 'Maros', 'P', 'Dusun Balang, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (52, 'Putra', 3, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0053457777', '7309032306050005', '1900-05-20', 'Maros', 'L', 'Samariga, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (53, 'Putri Ramadani', 6, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0043807750', '7309035810040001', '1900-04-20', 'Maros', 'P', 'Leang-leang, Leang-leang, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (54, 'Rendy', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0048386331', '7371031111040002', '1900-04-20', 'Makassar', 'L', 'Pajjaiang, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (55, 'Rezky Al Bani', 4, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0076910607', '7309036410070004', '1900-07-20', 'Maros', 'P', 'Dusun Balang, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (56, 'Ridwan', 1, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0068101781', '7309032906060002', '1900-06-20', 'Maros', 'L', 'Balang, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (57, 'Riska amelia', 4, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0066572459', '7309036912060001', '1900-06-20', 'Maros', 'P', 'Bungaeja, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (58, 'Risna Wahyuni', 5, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0069351306', '7309035103060002', '1900-06-20', 'Maros', 'P', 'Bungaeja, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (59, 'Risnawati Eka Putri', 4, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0072926407', '7309034708070001', '1900-07-20', 'Makassar', 'P', 'Balang, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (60, 'Rita Nadila Putri', 6, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0057566417', '7309034303050001', '1900-05-20', 'Maros', 'P', 'Dusun Samariga, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (61, 'Sabrina', 4, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0076499326', '7309036410070006', '1900-07-20', 'Maros', 'P', 'Dusun Balang, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (62, 'Safaruddin', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0051185860', '7309031509050003', '1900-05-20', 'Maros', 'L', 'Dusun Balang, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (63, 'SAHRUL', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0056633264', '7309030703050002', '1900-05-20', 'MAROS', 'L', 'BONTOE, TUKAMASEA, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (64, 'Sakriadi', 1, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0062859646', '7309032202060002', '1900-06-20', 'Maros', 'L', 'Pajjaiang, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (65, 'SANTUO', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '3051385564', '7309032410050002', '1900-05-20', 'MAROS', 'L', 'Dusun Batunapara, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (66, 'Saparuddin', 1, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Wali', 1, '0073256724', '7309120303070002', '1900-07-20', 'Maros', 'L', 'Bungaeja, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (67, 'SERLI', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '3051251718', '7309035112050001', '1900-05-20', 'Maros', 'P', 'Camba Jawa, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (68, 'Suci Amaliah Ramadani', 5, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0051768073', '7309035010050002', '1900-05-20', 'Maros', 'P', 'Tanete, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (69, 'Suwandi', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0041842118', '7309032710040002', '1900-04-20', 'Maros', 'L', 'Pajjaiang, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (70, 'Syahlan', 1, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0075652519', '7309031604070001', '1900-07-20', 'Maros', 'L', 'Dusun Bontopadalle, Mangeloreng, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (71, 'Tahir', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0041086925', '7309030108040001', '1900-04-20', 'Maros', 'L', 'Pajjaiang, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (72, 'WULANSARI', 4, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0075469878', '7309035207070007', '1900-07-20', 'Maros', 'P', 'Bontokappong, Tukamasea, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (73, 'ZULKIFLI', 2, 'assets/img/members/default-user-imge.jpeg', 'Tinggal Bersama orang tua', 1, '0051397785', '7309031911050003', '1900-05-20', 'Maros', 'L', 'Batunapara, Baruga, Kec. Bantimurung', 2022, 'Islam');
INSERT INTO `siswa` VALUES (74, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `siswa` VALUES (75, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for slider
-- ----------------------------
DROP TABLE IF EXISTS `slider`;
CREATE TABLE `slider`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `is_visible` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of slider
-- ----------------------------
INSERT INTO `slider` VALUES (1, 'assets/img/slide/slider1.jpg', 1);
INSERT INTO `slider` VALUES (2, 'assets/img/slide/slider2.jpg', 1);
INSERT INTO `slider` VALUES (3, 'assets/img/slide/slider3.jpeg', 1);

-- ----------------------------
-- Table structure for unduhan
-- ----------------------------
DROP TABLE IF EXISTS `unduhan`;
CREATE TABLE `unduhan`  (
  `id` int NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `is_visible` tinyint NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of unduhan
-- ----------------------------
INSERT INTO `unduhan` VALUES (1, 'Jadwal Semester Genap 2022', 'jadwal ini berisi ndak tahu kok tanya saya\r\n\r\nkamu nanya ? \r\nkamu nanya ?', 'assets/img/recent-photos/recent-photos-5.jpg', '2022-12-02 11:41:55', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `thumbnail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `create_date` datetime NULL DEFAULT current_timestamp,
  `update_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_visible` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (1, 'Persiapan Kemerdekaan', 'Persiapan Kemerdekaan', 'assets/video/kemerdekaan.mp4', 'assets/video/kemerdekaan.mp4', '2022-11-30 11:11:10', '2022-12-12 06:12:09', 1);
INSERT INTO `video` VALUES (2, 'Siswa SMK Darul Ulum Maros', ' Siswa SMK Darul Ulum Maros', 'assets/video/siswa.mp4', 'assets/video/siswa.mp4', '2022-11-30 11:11:10', '2022-12-12 06:15:28', 1);
INSERT INTO `video` VALUES (3, 'Praktikum Teknik Instalasi Listrik', 'Praktikum Teknik Instalasi Listrik', 'assets/video/praktikum_listrik.mp4', 'assets/video/praktikum_listrik.mp4', '2022-11-30 11:11:10', '2022-12-12 06:14:53', 1);

SET FOREIGN_KEY_CHECKS = 1;
