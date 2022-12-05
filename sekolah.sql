/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100417 (10.4.17-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : sekolah

 Target Server Type    : MySQL
 Target Server Version : 100417 (10.4.17-MariaDB)
 File Encoding         : 65001

 Date: 05/12/2022 19:48:57
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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agenda
-- ----------------------------
INSERT INTO `agenda` VALUES (1, 'Agenda Liburan Trip ke Jogja', 'Tujuan utama adalah Ramen Golden Geisha', 'assets/img/recent-photos/recent-photos-4.jpg', '2022-12-02 11:30:45', '2022-12-02 11:32:45', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of galeri
-- ----------------------------
INSERT INTO `galeri` VALUES (1, 'Galeri 1', 'Kegiatan 1', 'assets/img/recent-photos/recent-photos-1.jpg', '2022-11-30 09:15:32', '2022-11-30 10:17:05', 1);
INSERT INTO `galeri` VALUES (2, 'Galeri 2', 'Kegiatan 2', 'assets/img/recent-photos/recent-photos-2.jpg', '2022-11-30 09:15:32', '2022-11-30 10:17:05', 1);
INSERT INTO `galeri` VALUES (3, 'Galeri 3', 'Kegiatan 3', 'assets/img/recent-photos/recent-photos-3.jpg', '2022-11-30 09:15:32', '2022-11-30 10:17:05', 1);
INSERT INTO `galeri` VALUES (4, 'Galeri 4', 'Kegiatan 4', 'assets/img/recent-photos/recent-photos-4.jpg', '2022-11-30 09:15:32', '2022-11-30 10:17:05', 1);
INSERT INTO `galeri` VALUES (5, 'Galeri 5', 'Kegiatan 5', 'assets/img/recent-photos/recent-photos-5.jpg', '2022-11-30 09:15:32', '2022-11-30 10:17:05', 1);
INSERT INTO `galeri` VALUES (6, 'Galeri 6', 'Kegiatan 6', 'assets/img/recent-photos/recent-photos-6.jpg', '2022-11-30 09:15:32', '2022-11-30 10:17:05', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of guru
-- ----------------------------
INSERT INTO `guru` VALUES (1, 'Bambang', 1, 'assets\\img\\members\\member-2.jpg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `guru` VALUES (2, 'Maharani', 2, 'assets\\img\\members\\member-1.jpg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `guru` VALUES (3, 'Annisa', 3, 'assets\\img\\members\\member-3.jpg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `guru` VALUES (4, 'Topan', 4, 'assets\\img\\members\\member-2.jpg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `guru` VALUES (5, 'Wiranto', 4, 'assets\\img\\members\\member-2.jpg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `guru` VALUES (7, 'Ariffandy Abdurahman', 4, 'assets/img/guru/AriffandyAbdurahman.png', NULL, 1, '311134', '3520054806010001', '2022-12-19', 'Magetan', 'L', 'Alamat');

-- ----------------------------
-- Table structure for jabatan
-- ----------------------------
DROP TABLE IF EXISTS `jabatan`;
CREATE TABLE `jabatan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jabatan
-- ----------------------------
INSERT INTO `jabatan` VALUES (1, 'Kepala Sekolah');
INSERT INTO `jabatan` VALUES (2, 'Wakil Kepala Sekolah');
INSERT INTO `jabatan` VALUES (3, 'Staff TU');
INSERT INTO `jabatan` VALUES (4, 'Guru');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jurusan
-- ----------------------------
INSERT INTO `jurusan` VALUES (1, 'IPA', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula nisi condimentum, fermentum nisi et, luctus nisi. Sed interdum risus vitae massa elementum luctus. Vestibulum pellentesque dignissim laoreet. Curabitur vehicula, dolor quis sollicitudin interdum, sem est malesuada urna, et rutrum turpis mi eu ipsum. Phasellus vehicula, felis vel consectetur rutrum, magna lorem blandit lorem, at placerat libero dolor vitae ipsum. Vestibulum condimentum lacus tortor, quis venenatis nibh luctus in. Nullam non laoreet lectus, eu facilisis elit. Etiam placerat urna non eros consequat dictum eget feugiat eros. Donec euismod lacus nec nulla molestie, in consequat urna condimentum.\r\n</p>\r\n<p>\r\nPhasellus eget libero elit. Fusce sed arcu erat. Donec molestie elit nec nunc laoreet elementum. Nam eu lectus eu risus dictum ultrices in eget tortor. Duis suscipit, sapien vel gravida porta, dui lacus congue lectus, et tristique nunc massa et metus. Integer finibus ac dui vitae faucibus. Praesent cursus bibendum facilisis. Sed imperdiet massa tellus, ac blandit magna suscipit ac. Sed quis nisi pulvinar, tempus lacus at, feugiat nisi. Quisque eu nisi quam. Cras vehicula feugiat eros ac dapibus.\r\n</p>\r\n<p>\r\nPellentesque blandit elementum tellus, quis ornare mi tincidunt faucibus. Phasellus efficitur est in nunc volutpat condimentum sit amet eget ante. Nam ultrices blandit augue, in bibendum ipsum ullamcorper hendrerit. Proin metus quam, consequat et ultrices sit amet, porttitor at purus. Nulla tempus rutrum nunc. Phasellus quis ultricies libero. Sed at nisi dolor. Vivamus accumsan tortor in ex volutpat pulvinar. Cras convallis lobortis risus nec tristique. Nulla vehicula elit a molestie efficitur. Curabitur tincidunt gravida mollis.\r\n</p>\r\n<p>\r\nNullam risus ante, dignissim sit amet nulla nec, maximus porta quam. Aliquam dignissim magna massa. Duis lectus nulla, dictum vestibulum turpis ut, bibendum tincidunt arcu. Nullam id sollicitudin diam. Fusce a nulla sit amet nunc accumsan porta. Etiam tempus sapien ullamcorper dignissim pulvinar. Etiam a viverra nunc, sit amet facilisis quam. Suspendisse a dapibus nulla. Nullam malesuada ultricies molestie. Donec faucibus leo nisi, in consectetur risus ullamcorper at. Integer posuere odio sed eros pharetra maximus. Donec in metus a nisi aliquet porttitor in et lectus. Aliquam non ultricies velit. Nulla facilisi. Cras eros velit, vestibulum in mi sit amet, finibus efficitur massa. Integer commodo tempor justo, eget interdum ex iaculis eu.\r\n</p>\r\n<p>\r\nVivamus vitae tortor ut nibh cursus suscipit et in tellus. Phasellus scelerisque sem velit, a sagittis elit laoreet non. Nulla malesuada mi non nisl ullamcorper, eu luctus turpis congue. Pellentesque lacus eros, lacinia eget eros id, mattis volutpat ante. Ut quis convallis massa. Curabitur nulla urna, consequat quis quam eu, feugiat congue tellus. Ut semper urna non ligula iaculis mollis. Praesent sed sagittis diam, vitae gravida lectus. Nullam dignissim efficitur ornare. In hac habitasse platea dictumst. Nulla vel porta sem, vitae rutrum velit. Sed aliquet tortor vitae laoreet mattis.\r\n</p>', 'assets/img/recent-photos/recent-photos-1.jpg', '2022-11-30 10:16:32', '2022-11-30 15:25:22', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kegiatan
-- ----------------------------
INSERT INTO `kegiatan` VALUES (1, 'Pemilihan Ketua OSIS Periode 2022-2023', 'Phasellus eget libero elit. Fusce sed arcu erat. Donec molestie elit nec nunc laoreet elementum. Nam eu lectus eu risus dictum ultrices in eget tortor. Duis suscipit, sapien vel gravida porta, dui lacus congue lectus, et tristique nunc massa et metus. Integer finibus ac dui vitae faucibus. Praesent cursus bibendum facilisis. Sed imperdiet massa tellus, ac blandit magna suscipit ac. Sed quis nisi pulvinar, tempus lacus at, feugiat nisi. Quisque eu nisi quam. Cras vehicula feugiat eros ac dapibus.', 'assets/img/recent-photos/recent-photos-2.jpg', '2022-12-02 11:30:45', '2022-12-02 11:32:45', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `ruang` VALUES (1, 'X 1', 1, 7, 8, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 85, 1, 85, '4/U/KLS', 'assets/img/recent-photos/recent-photos-1.jpg');
INSERT INTO `ruang` VALUES (2, 'X 2', 1, 7, 8, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 85, 1, 85, '4/U/KLS', 'assets/img/recent-photos/recent-photos-2.jpg');
INSERT INTO `ruang` VALUES (3, 'X 3', 1, 7, 8, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 85, 1, 85, '4/U/KLS', 'assets/img/recent-photos/recent-photos-3.jpg');
INSERT INTO `ruang` VALUES (4, 'XI 1', 1, 7, 8, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 85, 1, 85, '4/U/KLS', 'assets/img/recent-photos/recent-photos-1.jpg');
INSERT INTO `ruang` VALUES (5, 'XI 2', 1, 7, 8, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 85, 1, 85, '4/U/KLS', 'assets/img/recent-photos/recent-photos-2.jpg');
INSERT INTO `ruang` VALUES (6, 'XI 3', 1, 7, 8, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 85, 1, 85, '4/U/KLS', 'assets/img/recent-photos/recent-photos-3.jpg');
INSERT INTO `ruang` VALUES (7, 'XII 1', 1, 7, 8, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 85, 1, 85, '4/U/KLS', 'assets/img/recent-photos/recent-photos-1.jpg');
INSERT INTO `ruang` VALUES (8, 'XII 2', 1, 7, 8, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 85, 1, 85, '4/U/KLS', 'assets/img/recent-photos/recent-photos-2.jpg');
INSERT INTO `ruang` VALUES (9, 'XII 3', 1, 7, 8, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 85, 1, 85, '4/U/KLS', 'assets/img/recent-photos/recent-photos-3.jpg');

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
INSERT INTO `setting` VALUES (1, 'nama', 'Sekolah');
INSERT INTO `setting` VALUES (2, 'tentang', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula nisi condimentum, fermentum nisi et, luctus nisi. Sed interdum risus vitae massa elementum luctus. Vestibulum pellentesque dignissim laoreet. Curabitur vehicula, dolor quis sollicitudin interdum, sem est malesuada urna, et rutrum turpis mi eu ipsum. Phasellus vehicula, felis vel consectetur rutrum, magna lorem blandit lorem, at placerat libero dolor vitae ipsum. Vestibulum condimentum lacus tortor, quis venenatis nibh luctus in. Nullam non laoreet lectus, eu facilisis elit. Etiam placerat urna non eros consequat dictum eget feugiat eros. Donec euismod lacus nec nulla molestie, in consequat urna condimentum.\r\n</p>\r\n<p>\r\nPhasellus eget libero elit. Fusce sed arcu erat. Donec molestie elit nec nunc laoreet elementum. Nam eu lectus eu risus dictum ultrices in eget tortor. Duis suscipit, sapien vel gravida porta, dui lacus congue lectus, et tristique nunc massa et metus. Integer finibus ac dui vitae faucibus. Praesent cursus bibendum facilisis. Sed imperdiet massa tellus, ac blandit magna suscipit ac. Sed quis nisi pulvinar, tempus lacus at, feugiat nisi. Quisque eu nisi quam. Cras vehicula feugiat eros ac dapibus.\r\n</p>\r\n<p>\r\nPellentesque blandit elementum tellus, quis ornare mi tincidunt faucibus. Phasellus efficitur est in nunc volutpat condimentum sit amet eget ante. Nam ultrices blandit augue, in bibendum ipsum ullamcorper hendrerit. Proin metus quam, consequat et ultrices sit amet, porttitor at purus. Nulla tempus rutrum nunc. Phasellus quis ultricies libero. Sed at nisi dolor. Vivamus accumsan tortor in ex volutpat pulvinar. Cras convallis lobortis risus nec tristique. Nulla vehicula elit a molestie efficitur. Curabitur tincidunt gravida mollis.\r\n</p>\r\n<p>\r\nNullam risus ante, dignissim sit amet nulla nec, maximus porta quam. Aliquam dignissim magna massa. Duis lectus nulla, dictum vestibulum turpis ut, bibendum tincidunt arcu. Nullam id sollicitudin diam. Fusce a nulla sit amet nunc accumsan porta. Etiam tempus sapien ullamcorper dignissim pulvinar. Etiam a viverra nunc, sit amet facilisis quam. Suspendisse a dapibus nulla. Nullam malesuada ultricies molestie. Donec faucibus leo nisi, in consectetur risus ullamcorper at. Integer posuere odio sed eros pharetra maximus. Donec in metus a nisi aliquet porttitor in et lectus. Aliquam non ultricies velit. Nulla facilisi. Cras eros velit, vestibulum in mi sit amet, finibus efficitur massa. Integer commodo tempor justo, eget interdum ex iaculis eu.\r\n</p>\r\n<p>\r\nVivamus vitae tortor ut nibh cursus suscipit et in tellus. Phasellus scelerisque sem velit, a sagittis elit laoreet non. Nulla malesuada mi non nisl ullamcorper, eu luctus turpis congue. Pellentesque lacus eros, lacinia eget eros id, mattis volutpat ante. Ut quis convallis massa. Curabitur nulla urna, consequat quis quam eu, feugiat congue tellus. Ut semper urna non ligula iaculis mollis. Praesent sed sagittis diam, vitae gravida lectus. Nullam dignissim efficitur ornare. In hac habitasse platea dictumst. Nulla vel porta sem, vitae rutrum velit. Sed aliquet tortor vitae laoreet mattis.\r\n</p>');
INSERT INTO `setting` VALUES (3, 'lokasi', '-7.5572012,110.8409193');
INSERT INTO `setting` VALUES (4, 'visi', 'Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.');
INSERT INTO `setting` VALUES (5, 'misi', '{\"1\":\"Mendidik\",\"2\":\"Mencerdaskan\",\"3\":\"Mengembangkan\"}');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of siswa
-- ----------------------------
INSERT INTO `siswa` VALUES (1, 'Bambang', 1, 'assets\\img\\members\\member-2.jpg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `siswa` VALUES (2, 'Maharani', 2, 'assets\\img\\members\\member-1.jpg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `siswa` VALUES (3, 'Annisa', 3, 'assets\\img\\members\\member-3.jpg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `siswa` VALUES (4, 'Topan', 4, 'assets\\img\\members\\member-2.jpg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `siswa` VALUES (5, 'Wiranto', 4, 'assets\\img\\members\\member-2.jpg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `siswa` VALUES (7, 'Ariffandy Abdurahman', 4, 'assets/img/guru/AriffandyAbdurahman.png', NULL, 1, '311134', '3520054806010001', '2022-12-19', 'Magetan', 'L', 'Alamat', NULL);
INSERT INTO `siswa` VALUES (8, 'Nama', 7, 'assets/img/siswa/Nama.png', NULL, 1, '12312', '1231', '2022-12-14', 'Tempat', 'L', 'Alamat', 2011);

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
INSERT INTO `slider` VALUES (1, 'assets/img/slide/slide-1.jpg', 1);
INSERT INTO `slider` VALUES (2, 'assets/img/slide/slide-2.jpg', 1);
INSERT INTO `slider` VALUES (3, 'assets/img/slide/slide-3.jpg', 1);

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (1, 'Video 1', 'Kegiatan 1', 'assets/video/oceans.mp4', 'assets/img/recent-photos/recent-photos-1.jpg', '2022-11-30 11:11:10', NULL, 1);

SET FOREIGN_KEY_CHECKS = 1;
