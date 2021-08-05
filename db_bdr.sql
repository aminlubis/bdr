/*
 Navicat Premium Data Transfer

 Source Server         : LOCALHOST
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : db_bdr

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 05/08/2021 11:45:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for changelog
-- ----------------------------
DROP TABLE IF EXISTS `changelog`;
CREATE TABLE `changelog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reff_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `reff_id` varchar(99) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of changelog
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for global_parameter
-- ----------------------------
DROP TABLE IF EXISTS `global_parameter`;
CREATE TABLE `global_parameter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_active` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Y',
  `is_deleted` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N',
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `log_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of global_parameter
-- ----------------------------
BEGIN;
INSERT INTO `global_parameter` VALUES (1, 'Islam', 'Islam', 'agama', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (2, 'Kristen Katolik', 'Kristen Katolik', 'agama', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (3, 'Kristen Portestan', 'Kristen Protestan', 'agama', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (4, 'Hindu', 'Hindu', 'agama', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (5, 'Budha', 'Budha', 'agama', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (6, 'Konghucu', 'Konghucu', 'agama', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (7, 'Pegawai Negeri Sipil (PNS)', 'PNS', 'jenis_pekerjaan', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (8, 'Karyawan Swasta', 'Karyawan Swasta', 'jenis_pekerjaan', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (9, 'Wiraswasta', 'Wiraswasta', 'jenis_pekerjaan', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (10, 'Polisi', 'Polisi', 'jenis_pekerjaan', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (11, 'TNI', 'TNI', 'jenis_pekerjaan', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (12, 'Lainnya', 'Lainnya', 'agama', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (13, 'Guru', 'Guru', 'jenis_pekerjaan', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (14, 'Dokter', 'Dokter', 'jenis_pekerjaan', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (15, 'Professional', 'Professional', 'jenis_pekerjaan', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (16, 'Wartawan', 'Wartawan', 'jenis_pekerjaan', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (17, 'Freelancer', 'Freelancer', 'jenis_pekerjaan', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (18, 'Lainnya', 'Lainnya', 'jenis_pekerjaan', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (19, 'Bhayangkara Utama', '01', 'jenis_anggota', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (20, 'Lidik Krimsus RI', '02', 'jenis_anggota', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (21, 'Lidik Krimsus News', '03', 'jenis_anggota', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (22, 'DPN', '01', 'kategori_wilayah', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (23, 'DPP', '02', 'kategori_wilayah', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (24, 'Pemimpin Perusahaan', '01', 'jabatan', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (25, 'Perwakilan', '02', 'jabatan', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (26, 'Biro', '03', 'jabatan', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (27, 'Jurnalis', '04', 'jabatan', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `global_parameter` VALUES (28, 'DPD', '03', 'kategori_wilayah', 'Y', 'N', NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ref_table` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ref_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `query_executed` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ip_address` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `modul_id` int DEFAULT NULL,
  `menu_id` int DEFAULT NULL,
  `full_modul` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
BEGIN;
INSERT INTO `log` VALUES (2, 't_invoice', '2', 'insert new record on Create Invoice module', '{\"letter_no\":\"09876\",\"invoice_date\":\"\",\"received_from\":\"CV Muhmmad Amin Lubis\",\"address\":\"Jl H Syahrin\",\"invoice_no\":\"978\",\"amount\":\"12000000\",\"check_no\":\"8768\",\"check_amount\":\"1200000\",\"note\":\"Oke\",\"is_active\":\"Y\",\"created_date\":\"2021-08-05 10:50:01\",\"created_by\":\"{\\\"user_id\\\":\\\"1\\\",\\\"fullname\\\":\\\"Amin Lubis\\\"}\"}', 'INSERT INTO `t_invoice` (`letter_no`, `invoice_date`, `received_from`, `address`, `invoice_no`, `amount`, `check_no`, `check_amount`, `note`, `is_active`, `created_date`, `created_by`) VALUES (\'09876\', \'\', \'CV Muhmmad Amin Lubis\', \'Jl H Syahrin\', \'978\', \'12000000\', \'8768\', \'1200000\', \'Oke\', \'Y\', \'2021-08-05 10:50:01\', \'{\\\"user_id\\\":\\\"1\\\",\\\"fullname\\\":\\\"Amin Lubis\\\"}\')', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 41, 163, '{\"menu_id\":\"163\",\"menu_name\":\"Create Invoice\",\"modul_id\":\"41\"}', '2021-08-05 10:50:01', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, 1);
INSERT INTO `log` VALUES (3, 't_invoice', '2', 'update record on Create Invoice module', '{\"letter_no\":\"09876\",\"invoice_date\":\"2021-08-05\",\"received_from\":\"CV Muhmmad Amin Lubis\",\"address\":\"Jl H Syahrin\",\"invoice_no\":\"978\",\"amount\":\"12000000\",\"check_no\":\"8768\",\"check_amount\":\"1200000\",\"note\":\"Oke\",\"is_active\":\"Y\",\"updated_date\":\"2021-08-05 10:52:58\",\"updated_by\":\"{\\\"user_id\\\":\\\"1\\\",\\\"fullname\\\":\\\"Amin Lubis\\\"}\"}', 'UPDATE `t_invoice` SET `letter_no` = \'09876\', `invoice_date` = \'2021-08-05\', `received_from` = \'CV Muhmmad Amin Lubis\', `address` = \'Jl H Syahrin\', `invoice_no` = \'978\', `amount` = \'12000000\', `check_no` = \'8768\', `check_amount` = \'1200000\', `note` = \'Oke\', `is_active` = \'Y\', `updated_date` = \'2021-08-05 10:52:58\', `updated_by` = \'{\\\"user_id\\\":\\\"1\\\",\\\"fullname\\\":\\\"Amin Lubis\\\"}\'\nWHERE `id` = \'2\'', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 41, 163, '{\"menu_id\":\"163\",\"menu_name\":\"Create Invoice\",\"modul_id\":\"41\"}', '2021-08-05 10:52:58', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for t_invoice
-- ----------------------------
DROP TABLE IF EXISTS `t_invoice`;
CREATE TABLE `t_invoice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `letter_no` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `received_from` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `invoice_no` varchar(25) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `amount` double(18,2) DEFAULT NULL,
  `check_no` varchar(25) DEFAULT NULL,
  `check_amount` double(18,2) DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `is_active` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `log_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_invoice
-- ----------------------------
BEGIN;
INSERT INTO `t_invoice` VALUES (2, '09876', 'CV Muhmmad Amin Lubis', 'Jl H Syahrin', '978', '2021-08-05', 12000000.00, '8768', 1200000.00, 'Oke', 'Y', '2021-08-05 10:50:01', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2021-08-05 10:52:58', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 3);
COMMIT;

-- ----------------------------
-- Table structure for tmp_mst_function
-- ----------------------------
DROP TABLE IF EXISTS `tmp_mst_function`;
CREATE TABLE `tmp_mst_function` (
  `function_id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `is_active` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Y',
  `is_deleted` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N',
  `created_date` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `log_id` int DEFAULT NULL,
  PRIMARY KEY (`function_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_mst_function
-- ----------------------------
BEGIN;
INSERT INTO `tmp_mst_function` VALUES (1, 'C', 'Create', 'Function for create new record', 'Y', 'N', '2017-12-18 19:41:56', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2018-02-15 11:23:27', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL);
INSERT INTO `tmp_mst_function` VALUES (2, 'R', 'Read', 'Function for read record', 'Y', 'N', '2017-12-18 19:42:08', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2018-07-17 14:13:35', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 3);
INSERT INTO `tmp_mst_function` VALUES (3, 'U', 'Update', 'Function for update record', 'Y', 'N', '2017-12-18 19:42:18', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2018-02-15 05:18:40', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL);
INSERT INTO `tmp_mst_function` VALUES (4, 'D', 'Delete', 'Function for delete record', 'Y', 'N', '2017-12-18 19:42:26', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2018-07-23 06:26:07', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 79);
COMMIT;

-- ----------------------------
-- Table structure for tmp_mst_group_modul
-- ----------------------------
DROP TABLE IF EXISTS `tmp_mst_group_modul`;
CREATE TABLE `tmp_mst_group_modul` (
  `group_modul_id` int NOT NULL AUTO_INCREMENT,
  `group_modul_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `group_modul_description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `group_modul_icon` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_active` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Y',
  `is_deleted` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `log_id` int DEFAULT NULL,
  PRIMARY KEY (`group_modul_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_mst_group_modul
-- ----------------------------
BEGIN;
INSERT INTO `tmp_mst_group_modul` VALUES (2, 'Admin BD&R', 'Administrator System and Content Owner', 'fa fa-cogs', 'Y', 'N', '2019-10-14 18:53:26', 'Amin Lubis', '2021-08-04 16:29:52', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 2093);
COMMIT;

-- ----------------------------
-- Table structure for tmp_mst_level
-- ----------------------------
DROP TABLE IF EXISTS `tmp_mst_level`;
CREATE TABLE `tmp_mst_level` (
  `level_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `is_active` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_deleted` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N',
  `created_date` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `log_id` int DEFAULT NULL,
  PRIMARY KEY (`level_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_mst_level
-- ----------------------------
BEGIN;
INSERT INTO `tmp_mst_level` VALUES (1, 'Sysadmin', 'System adminisrator (Admin Level 1)', 'Y', 'N', '2017-12-18 19:42:35', NULL, '2018-02-15 04:46:43', 'Amin Lubis', NULL);
INSERT INTO `tmp_mst_level` VALUES (2, 'Admin', 'Admin level 2', 'Y', 'N', '2017-12-18 19:54:56', NULL, '2018-02-15 04:46:23', 'Amin Lubis', NULL);
INSERT INTO `tmp_mst_level` VALUES (3, 'Publik', 'Pengguna publik', 'Y', 'N', '2018-02-15 04:47:44', 'Amin Lubis', '2018-07-18 09:20:15', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 2);
INSERT INTO `tmp_mst_level` VALUES (4, 'SUBCRIBER', 'Disable Input Kebencanaan', 'N', 'Y', '2020-02-28 15:22:21', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, 2026);
INSERT INTO `tmp_mst_level` VALUES (5, 'fadfa', 'fdsfa', 'Y', 'N', '2021-01-14 14:40:57', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, 2040);
COMMIT;

-- ----------------------------
-- Table structure for tmp_mst_menu
-- ----------------------------
DROP TABLE IF EXISTS `tmp_mst_menu`;
CREATE TABLE `tmp_mst_menu` (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `modul_id` int NOT NULL,
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `class` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `level` smallint DEFAULT NULL,
  `parent` int DEFAULT NULL,
  `icon` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `set_shortcut` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `counter` int DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `flag_menu` enum('public','private') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'private',
  `is_active` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Y',
  `is_deleted` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N',
  `created_date` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `log_id` int DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE,
  KEY `fk_tmp_mst_menu_tmp_mst_modul1_idx` (`modul_id`) USING BTREE,
  CONSTRAINT `tmp_mst_menu_ibfk_1` FOREIGN KEY (`modul_id`) REFERENCES `tmp_mst_modul` (`modul_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_mst_menu
-- ----------------------------
BEGIN;
INSERT INTO `tmp_mst_menu` VALUES (2, 1, 'Menu', 'Tmp_mst_menu', 'setting/Tmp_mst_menu', 1, 13, 'fa fa-circle-o', NULL, 3, '', 'private', 'Y', 'N', '2017-12-18 20:06:53', NULL, '2018-02-20 12:24:21', 'Amin Lubis', NULL);
INSERT INTO `tmp_mst_menu` VALUES (10, 1, 'Level', 'Tmp_mst_level', 'setting/Tmp_mst_level', 1, 11, 'fa fa-circle-o', 'N', 1, '', 'private', 'Y', 'N', '2018-02-14 20:24:30', 'Amin Lubis', '2018-07-19 12:34:24', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 65);
INSERT INTO `tmp_mst_menu` VALUES (11, 1, 'Role Management', '#', '#', 0, 0, 'fa fa-cogs', 'N', 2, NULL, 'private', 'Y', 'N', '2018-02-14 21:46:11', 'Amin Lubis', '2018-02-14 22:09:53', 'Amin Lubis', NULL);
INSERT INTO `tmp_mst_menu` VALUES (12, 1, 'Role', 'Tmp_mst_role', 'setting/Tmp_mst_role', 1, 11, 'fa fa-circle-o', 'N', 2, '', 'private', 'Y', 'N', '2018-02-14 21:46:53', 'Amin Lubis', '2018-02-20 12:24:53', 'Amin Lubis', NULL);
INSERT INTO `tmp_mst_menu` VALUES (13, 1, 'Module Management', '#', '#', 0, 0, 'fa fa-book', 'N', 1, NULL, 'private', 'Y', 'N', '2018-02-14 22:08:38', 'Amin Lubis', '2018-02-15 04:08:38', NULL, NULL);
INSERT INTO `tmp_mst_menu` VALUES (14, 1, 'User Group', 'Tmp_user_has_role', 'setting/Tmp_user_has_role', 1, 11, 'fa fa-circle-o', 'N', 5, '', 'private', 'Y', 'N', '2018-02-15 04:50:55', 'Amin Lubis', '2018-02-20 12:25:31', 'Amin Lubis', NULL);
INSERT INTO `tmp_mst_menu` VALUES (15, 1, 'Role Privileges', 'Tmp_role_has_menu', 'setting/Tmp_role_has_menu', 1, 11, 'fa fa-circle-o', 'Y', 3, '', 'private', 'Y', 'N', '2018-02-15 04:52:53', 'Amin Lubis', '2018-07-19 12:23:03', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 64);
INSERT INTO `tmp_mst_menu` VALUES (16, 1, 'Modul', 'Tmp_mst_modul', 'setting/Tmp_mst_modul', 1, 13, 'fa fa-circle-o', 'N', 2, '', 'private', 'Y', 'N', '2018-02-15 04:55:14', 'Amin Lubis', '2018-02-20 12:24:02', 'Amin Lubis', NULL);
INSERT INTO `tmp_mst_menu` VALUES (17, 1, 'Function', 'Tmp_mst_function', 'setting/Tmp_mst_function', 1, 13, 'fa fa-circle-o', 'N', 1, 'function for authority user', 'private', 'Y', 'N', '2018-02-15 05:11:58', 'Amin Lubis', '2018-02-20 12:23:48', 'Amin Lubis', NULL);
INSERT INTO `tmp_mst_menu` VALUES (18, 1, 'User', 'Tmp_user', 'setting/Tmp_user', 1, 11, 'fa fa-users', 'Y', 4, '', 'private', 'Y', 'N', '2018-02-15 05:24:20', 'Amin Lubis', '2018-07-19 12:21:23', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 63);
INSERT INTO `tmp_mst_menu` VALUES (50, 1, 'Apps Config', 'tmp_apps_config', 'setting/tmp_apps_config', 0, 0, 'fa fa-lock', 'Y', 3, 'Apps Configuration', 'private', 'Y', 'N', '2018-04-02 20:55:04', 'Amin Lubis', '2018-07-19 12:17:44', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 60);
INSERT INTO `tmp_mst_menu` VALUES (56, 1, 'Group Modul', 'tmp_mst_group_modul', 'setting/tmp_mst_group_modul', 1, 13, 'fa fa-circle-o', 'N', 3, '', 'private', 'Y', 'N', '2018-04-02 21:48:15', 'Amin Lubis', NULL, NULL, NULL);
INSERT INTO `tmp_mst_menu` VALUES (59, 1, 'Log History', 'Tmp_log_history', 'setting/tmp_log_history', 0, 0, 'fa fa-history', 'Y', 99, 'Log history pengguna', 'private', 'Y', 'N', '2018-07-17 16:30:02', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2018-07-23 06:26:22', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 81);
INSERT INTO `tmp_mst_menu` VALUES (161, 41, 'Sementara', 'T_bencana', 'kebencanaan/T_bencana', 0, 0, 'fa fa-list', 'Y', 1, '', 'private', 'N', 'Y', '2019-10-14 20:14:51', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2020-01-23 23:09:21', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL);
INSERT INTO `tmp_mst_menu` VALUES (162, 41, 'Logistik', 'T_logistik', 'kebencanaan/T_logistik', 0, 0, 'fa fa-cirle-o', 'Y', 2, '', 'private', 'N', 'Y', '2019-10-20 03:39:06', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, 1243);
INSERT INTO `tmp_mst_menu` VALUES (163, 41, 'Create Invoice', 'C_create_invoice', 'Invoice/C_create_invoice', 1, 0, 'fa fa-circle-o', 'Y', 2, '', 'private', 'Y', 'N', '2019-11-02 04:00:34', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2021-08-04 16:29:16', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL);
INSERT INTO `tmp_mst_menu` VALUES (164, 42, 'Berita & Artikel', 'T_berita', 'publikasi/T_berita', 0, 0, 'fa fa-circle-o', 'Y', 1, '', 'private', 'N', 'Y', '2019-11-02 10:56:31', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2019-11-02 11:04:53', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL);
INSERT INTO `tmp_mst_menu` VALUES (165, 42, 'Mitigasi Bencana', 'T_mitigasi', 'publikasi/T_mitigasi', 0, 0, 'fa fa-circle-o', 'Y', 2, '', 'private', 'N', 'Y', '2019-11-02 10:57:59', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, NULL);
INSERT INTO `tmp_mst_menu` VALUES (166, 43, 'Struktur Organisasi', 'T_unit_kerja', 'personil/T_unit_kerja', 1, 0, 'fa fa-circle-o', 'Y', 1, '', 'private', 'N', 'Y', '2019-11-02 13:13:48', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, NULL);
INSERT INTO `tmp_mst_menu` VALUES (167, 43, 'Data Personil', 'T_personil_tim', 'personil/T_personil_tim', 1, 0, 'fa fa-circle-o', 'Y', 2, '', 'private', 'N', 'Y', '2019-11-02 13:15:31', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, NULL);
INSERT INTO `tmp_mst_menu` VALUES (168, 42, 'Perintah Kaban', 'T_perintah', 'publikasi/T_perintah', 1, 0, 'fa fa-circle-o', 'Y', 3, '', 'private', 'N', 'Y', '2019-11-21 03:08:45', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, NULL);
INSERT INTO `tmp_mst_menu` VALUES (169, 44, 'Jenis Logistik', 'Global_parameter', 'master_data/Global_parameter?flag=jenis_logistik', 0, 0, 'fa fa-circle-o', 'Y', 1, '', 'private', 'N', 'Y', '2019-11-29 15:04:45', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, NULL);
INSERT INTO `tmp_mst_menu` VALUES (170, 44, 'Kategori Kerusakan', 'Global_parameter', 'master_data/Global_parameter?flag=kategori_dampak', 1, 0, 'fa fa-circle-o', 'Y', 2, '', 'private', 'N', 'Y', '2019-11-29 15:32:04', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, NULL);
INSERT INTO `tmp_mst_menu` VALUES (171, 44, 'Kategori Berita', 'Global_parameter', 'master_data/Global_parameter?flag=kategori_berita', 1, 0, 'fa fa-circle-o', 'Y', 3, '', 'private', 'N', 'Y', '2019-11-29 15:32:49', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, NULL);
INSERT INTO `tmp_mst_menu` VALUES (172, 44, 'Jenis Bencana', 'Global_parameter', 'master_data/Global_parameter?flag=jenis_bencana', 1, 0, 'fa fa-circle-o', 'Y', 4, '', 'private', 'N', 'Y', '2019-11-29 15:33:26', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, NULL);
INSERT INTO `tmp_mst_menu` VALUES (173, 44, 'Flag Mitigasi', 'Global_parameter', 'master_data/Global_parameter?flag=flag_mitigasi', 1, 0, 'fa fa-circle-o', 'Y', 5, '', 'private', 'N', 'Y', '2019-11-29 15:34:14', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, NULL);
INSERT INTO `tmp_mst_menu` VALUES (174, 44, 'Unit Wilayah', 'Global_parameter', 'master_data/Global_parameter?flag=wilayah_unit', 1, 0, 'fa fa-circle-o', 'Y', 6, '', 'private', 'N', 'Y', '2019-11-29 15:34:42', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, NULL);
INSERT INTO `tmp_mst_menu` VALUES (175, 44, 'Asal Relawan', 'Global_parameter', 'master_data/Global_parameter?flag=asal_relawan', 1, 0, 'fa fa-circle-o', 'Y', 8, '', 'private', 'N', 'Y', '2019-11-29 19:48:08', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, NULL);
INSERT INTO `tmp_mst_menu` VALUES (176, 44, 'Jenis Dokumen', 'Global_parameter', 'master_data/Global_parameter?flag=jenis_dok', 1, 0, 'fa fa-circle-o', 'Y', 9, '', 'private', 'N', 'Y', '2019-11-29 19:48:43', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, NULL);
INSERT INTO `tmp_mst_menu` VALUES (177, 44, 'Provinsi', 'Global_parameter', 'master_data/Global_parameter?flag=status_bencana', 1, 0, 'fa fa-circle-o', 'Y', 10, '', 'private', 'N', 'Y', '2019-11-29 19:49:19', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2021-01-15 01:19:56', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL);
INSERT INTO `tmp_mst_menu` VALUES (178, 44, 'Level Bencana', 'Global_parameter', 'master_data/Global_parameter?flag=level_bencana', 1, 0, 'fa fa-circle-o', 'Y', 3, '', 'private', 'N', 'Y', '2019-11-29 19:49:48', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, NULL);
INSERT INTO `tmp_mst_menu` VALUES (179, 44, 'Satuan Logistik', 'Global_parameter', 'master_data/Global_parameter?flag=satuan', 1, 0, 'fa fa-circle-o', 'Y', 11, '', 'private', 'N', 'Y', '2019-11-29 19:50:19', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, NULL);
INSERT INTO `tmp_mst_menu` VALUES (180, 41, 'Sumber_Daya', 'Global_parameter', 'master_data/Global_parameter?flag=sumberdaya', 1, 161, 'fa fa-circle-o', 'Y', 13, '', 'private', 'N', 'Y', '2020-02-19 14:40:27', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2020-02-19 14:45:03', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 1540);
INSERT INTO `tmp_mst_menu` VALUES (181, 45, 'Panduan Pengguna', 'T_panduan_pengguna', 'publikasi/T_panduan_pengguna', 0, 0, 'fa fa-circle-o', 'Y', 1, '', 'private', 'N', 'Y', '2020-03-24 11:43:06', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, 2015);
INSERT INTO `tmp_mst_menu` VALUES (182, 45, 'Kontak BNPB', 'T_personil_tim', 'personil/T_personil_tim?mod=bnpb', 0, 0, 'fa fa-circle-o', 'Y', 2, '', 'private', 'N', 'Y', '2020-03-24 11:44:23', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2020-03-24 11:44:49', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL);
INSERT INTO `tmp_mst_menu` VALUES (183, 45, 'Kontak BPBD', 'T_personil_tim_bpbd', 'personil/T_personil_tim_bpbd', 0, 0, 'fa fa-circle-o', 'Y', 3, '', 'private', 'N', 'Y', '2020-03-24 11:46:52', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2020-03-24 12:43:31', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL);
INSERT INTO `tmp_mst_menu` VALUES (184, 45, 'Kontak Darurat', 'T_kontak_darurat', 'personil/T_kontak_darurat', 0, 0, 'fa fa-circle-o', 'Y', 4, '', 'private', 'N', 'Y', '2020-03-24 11:48:09', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2020-03-24 12:45:48', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 2025);
INSERT INTO `tmp_mst_menu` VALUES (185, 43, 'Anggota Baru', 'T_verifikasi', 'verifikasi/T_verifikasi', 0, 0, 'fa fa-circle-o', 'Y', 1, '', 'private', 'N', 'Y', '2021-01-14 22:20:12', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2021-01-25 02:27:09', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL);
INSERT INTO `tmp_mst_menu` VALUES (186, 43, 'Pelaporan', '#', '#', 0, 0, 'fa fa-circle-o', 'Y', 2, '', 'private', 'N', 'Y', '2021-01-14 22:20:47', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2021-01-14 22:24:26', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 2067);
INSERT INTO `tmp_mst_menu` VALUES (187, 43, 'Perpanjang Masa Aktif Anggota', 'T_perpanjangan_masa_aktif', 'verifikasi/T_perpanjangan_masa_aktif', 1, 0, 'fa fa-circle-o', 'Y', 2, '', 'private', 'N', 'Y', '2021-01-14 22:22:01', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2021-01-25 12:57:26', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL);
INSERT INTO `tmp_mst_menu` VALUES (188, 43, 'Daftar/Cetak Permohonan Akta Kelahiran', 'T_cetak_akta', 'pelaporan/T_cetak_akta', 1, 186, 'fa fa-file', 'Y', 1, '', 'private', 'N', 'Y', '2021-01-14 22:29:29', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, 2091);
COMMIT;

-- ----------------------------
-- Table structure for tmp_mst_modul
-- ----------------------------
DROP TABLE IF EXISTS `tmp_mst_modul`;
CREATE TABLE `tmp_mst_modul` (
  `modul_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `icon` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'fontawesome',
  `group_modul_id` int DEFAULT NULL,
  `is_new_tab` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N',
  `link_on_new_tab` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `counter` int DEFAULT NULL,
  `is_active` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Y',
  `is_deleted` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N',
  `created_date` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `log_id` int DEFAULT NULL,
  PRIMARY KEY (`modul_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_mst_modul
-- ----------------------------
BEGIN;
INSERT INTO `tmp_mst_modul` VALUES (1, 'Pengaturan', 'Application Setting', 'Modul yang berfungsi untuk melakukan configurasi pada aplikasi. Pada modul ini admin dapat mengubah segala fubgsi yang berhubungan dengan aplikasi, dan modul ini direkomendasikan untuk kebutuhan developer saja, tidak direkomendasikan untuk dibuka pengguna publik', 'fa fa-cogs', 2, 'N', NULL, 6, 'Y', 'N', '2017-12-18 19:42:59', NULL, '2021-01-14 14:19:32', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 2033);
INSERT INTO `tmp_mst_modul` VALUES (41, 'Invoice', 'Invoice', 'Modul Pencarian Data', 'fa fa-globe', 2, 'N', NULL, 1, 'Y', 'N', '2019-10-14 20:09:57', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2021-08-04 16:29:37', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 2092);
INSERT INTO `tmp_mst_modul` VALUES (42, 'Laporan', 'Laporan', 'Modul Laporan', 'fa fa-globe', 2, 'N', NULL, 3, 'N', 'Y', '2019-11-02 10:55:41', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2021-01-14 11:46:25', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 2023);
INSERT INTO `tmp_mst_modul` VALUES (43, 'Verifikasi Data', 'Verifikasi Data', 'Verifikasi Data Keanggotaan', 'fa fa-user', 2, 'N', NULL, 2, 'N', 'Y', '2019-11-02 13:12:28', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2021-01-20 13:22:03', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 2066);
INSERT INTO `tmp_mst_modul` VALUES (44, 'Master Data', 'Master Data Bencana', 'Master Data Bencana', 'fa fa-circle-o', 2, 'N', NULL, 4, 'N', 'Y', '2019-11-29 14:54:02', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2021-01-15 15:09:36', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 2090);
INSERT INTO `tmp_mst_modul` VALUES (45, 'Bantuan', 'Bantuan Bencana', 'Bantuan Panduan Aplikasi dan Bencana', 'fa fa-circle-o', 2, 'N', NULL, 5, 'N', 'Y', '2020-03-24 11:41:49', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, 2024);
COMMIT;

-- ----------------------------
-- Table structure for tmp_mst_role
-- ----------------------------
DROP TABLE IF EXISTS `tmp_mst_role`;
CREATE TABLE `tmp_mst_role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `level_id` int NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `is_active` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Y',
  `is_deleted` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N',
  `created_date` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `log_id` int DEFAULT NULL,
  PRIMARY KEY (`role_id`,`level_id`) USING BTREE,
  KEY `fk_tmp_mst_role_tmp_mst_level1_idx` (`level_id`) USING BTREE,
  CONSTRAINT `tmp_mst_role_ibfk_1` FOREIGN KEY (`level_id`) REFERENCES `tmp_mst_level` (`level_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_mst_role
-- ----------------------------
BEGIN;
INSERT INTO `tmp_mst_role` VALUES (1, 1, 'Admin Sistem', '', 'Y', 'N', '2017-12-18 19:43:15', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2018-07-18 10:04:48', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 6);
INSERT INTO `tmp_mst_role` VALUES (2, 3, 'General User', '', 'Y', 'N', '2019-10-15 02:49:28', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, 1238);
INSERT INTO `tmp_mst_role` VALUES (3, 2, 'Pusdalops', '', 'N', 'Y', '2020-01-23 22:57:20', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, 1359);
INSERT INTO `tmp_mst_role` VALUES (4, 4, 'SUBCRIBER', '', 'N', 'Y', '2020-02-28 15:24:05', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', NULL, NULL, 2027);
COMMIT;

-- ----------------------------
-- Table structure for tmp_profile_app
-- ----------------------------
DROP TABLE IF EXISTS `tmp_profile_app`;
CREATE TABLE `tmp_profile_app` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `header_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `footer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `running_text` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `author` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `developer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `db_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `app_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cover_login` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `footer_text_form_login` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `app_description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `style_header_color` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url_file_tutorial_apps` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_active` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `created_by` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `log_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_profile_app
-- ----------------------------
BEGIN;
INSERT INTO `tmp_profile_app` VALUES (1, 'BD&R', 'BD&R', '© Copyright 2021 - BD&R', 'Selamat Datang', 'BD&R', 'Als23', '', 'Own Company', 'fa fa-leaf', '9LogoBDR221119.jpg', '88bg2.jpg', '-', 'Built on Custom up to CI 3.0 Framework', 'default', '12manualpenggunanitangguihmobile.pdf', 'Y', '2018-07-17 16:13:38', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2021-08-05 09:52:45', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 2101);
COMMIT;

-- ----------------------------
-- Table structure for tmp_role_has_menu
-- ----------------------------
DROP TABLE IF EXISTS `tmp_role_has_menu`;
CREATE TABLE `tmp_role_has_menu` (
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `action_code` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `log_id` int DEFAULT NULL,
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE,
  KEY `fk_tmp_mst_role_has_tmp_mst_menu_tmp_mst_menu1_idx` (`menu_id`) USING BTREE,
  KEY `fk_tmp_mst_role_has_tmp_mst_menu_tmp_mst_role1_idx` (`role_id`) USING BTREE,
  CONSTRAINT `tmp_role_has_menu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `tmp_mst_menu` (`menu_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tmp_role_has_menu_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `tmp_mst_role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_role_has_menu
-- ----------------------------
BEGIN;
INSERT INTO `tmp_role_has_menu` VALUES (1, 2, 'C,U,D', NULL);
INSERT INTO `tmp_role_has_menu` VALUES (1, 10, 'C,U,D', NULL);
INSERT INTO `tmp_role_has_menu` VALUES (1, 11, 'C,R,U,D', NULL);
INSERT INTO `tmp_role_has_menu` VALUES (1, 12, 'C,U,D', NULL);
INSERT INTO `tmp_role_has_menu` VALUES (1, 13, 'C,R,U,D', NULL);
INSERT INTO `tmp_role_has_menu` VALUES (1, 14, 'C,U,D', NULL);
INSERT INTO `tmp_role_has_menu` VALUES (1, 15, 'C,U,D', NULL);
INSERT INTO `tmp_role_has_menu` VALUES (1, 16, 'C,U,D', NULL);
INSERT INTO `tmp_role_has_menu` VALUES (1, 17, 'C,U,D', NULL);
INSERT INTO `tmp_role_has_menu` VALUES (1, 18, 'C,U,D', NULL);
INSERT INTO `tmp_role_has_menu` VALUES (1, 50, 'C,U,D', NULL);
INSERT INTO `tmp_role_has_menu` VALUES (1, 56, 'C,U,D', NULL);
INSERT INTO `tmp_role_has_menu` VALUES (1, 59, 'C,U,D', NULL);
INSERT INTO `tmp_role_has_menu` VALUES (1, 163, 'C,U,D', NULL);
COMMIT;

-- ----------------------------
-- Table structure for tmp_user
-- ----------------------------
DROP TABLE IF EXISTS `tmp_user`;
CREATE TABLE `tmp_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fullname` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `flag_user` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Admin',
  `principal_id` int DEFAULT NULL,
  `is_active` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Y',
  `is_deleted` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N',
  `created_date` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `last_logon` timestamp NULL DEFAULT NULL,
  `log_id` int DEFAULT NULL,
  `relation_id` int DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_user
-- ----------------------------
BEGIN;
INSERT INTO `tmp_user` VALUES (1, 'aminlubis23@gmail.com', 'Amin Lubis', 'sysadmin', '$2a$08$cyhwt7/b9jIC6K1Krm635es/.0LDEzMb6uLJOqvhZmV0ud6Ee0ZQG', 'Admin', NULL, 'Y', 'N', '2017-12-18 19:45:30', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2018-07-17 15:26:41', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2021-08-05 10:13:11', 2104, NULL);
COMMIT;

-- ----------------------------
-- Table structure for tmp_user_has_role
-- ----------------------------
DROP TABLE IF EXISTS `tmp_user_has_role`;
CREATE TABLE `tmp_user_has_role` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  `log_id` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE,
  KEY `fk_tmp_user_has_tmp_mst_role_tmp_mst_role1_idx` (`role_id`) USING BTREE,
  KEY `fk_tmp_user_has_tmp_mst_role_tmp_user1_idx` (`user_id`) USING BTREE,
  CONSTRAINT `tmp_user_has_role_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tmp_mst_role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tmp_user_has_role_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tmp_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_user_has_role
-- ----------------------------
BEGIN;
INSERT INTO `tmp_user_has_role` VALUES (1, 1, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for tmp_user_profile
-- ----------------------------
DROP TABLE IF EXISTS `tmp_user_profile`;
CREATE TABLE `tmp_user_profile` (
  `up_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `nip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `id_number` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pob` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `no_telp` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `no_hp` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gender` enum('L','P') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `about_me` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `instagram` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `path_foto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `kem_id` int DEFAULT NULL,
  `unit_org_id` int DEFAULT NULL,
  `uk_id` int DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `log_id` int DEFAULT NULL,
  `avatar_file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `msisdn` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`up_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `tmp_user_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tmp_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_user_profile
-- ----------------------------
BEGIN;
INSERT INTO `tmp_user_profile` VALUES (1, 1, NULL, NULL, 'Muhammad Amin Lubis', 'Tangerang', '1990-11-23', 'Jl. Kerinci Blok E 36 No 10 Pondok Indah Kutabumi Tangerang', '085819655296', '085819655296', NULL, 'L', 'Jika diam saat AGAMAMU DIHINA gantilah bajumu dengan KAIN KAFAN', 'aminlubis23', '@aminlubis23', 'aminlubis23', '36no-data-icon.png', 0, 0, 0, '2018-07-17 14:56:07', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', '2021-01-14 21:55:36', '{\"user_id\":\"1\",\"fullname\":\"Amin Lubis\"}', 2042, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of token
-- ----------------------------
BEGIN;
INSERT INTO `token` VALUES (36, '75efaa3a9dafd9fde047bf4d58e31c6d', 'Login', '2021-08-05 10:13:11', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
