/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : live_stream

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 22/03/2024 22:47:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for device_schema
-- ----------------------------
DROP TABLE IF EXISTS `device_schema`;
CREATE TABLE `device_schema` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `device_serial` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `device_password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `manufacture_date` datetime DEFAULT NULL,
  `owner_user_id` int DEFAULT NULL,
  `device_stream_key` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_user` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_user` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `remove_identity` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of device_schema
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `dictionary_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `dictionary_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `remove_identity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
BEGIN;
INSERT INTO `dictionary` VALUES (1, '001', 'audio_background', 'audio', 'audio', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dictionary` VALUES (2, '002', 'audio_advertisement', 'audio', 'audio', NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for email_config
-- ----------------------------
DROP TABLE IF EXISTS `email_config`;
CREATE TABLE `email_config` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `port` int DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `debug` int DEFAULT NULL,
  `enable_ssl` int DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of email_config
-- ----------------------------
BEGIN;
INSERT INTO `email_config` VALUES (1, 'facuplivesoccergame@gmail.com', 'smtp.gmail.com', 587, 'facuplivesoccergame@gmail.com', 'bherzkxbwgowahfg', 1, 0, '1');
COMMIT;

-- ----------------------------
-- Table structure for file_path
-- ----------------------------
DROP TABLE IF EXISTS `file_path`;
CREATE TABLE `file_path` (
  `id` int NOT NULL AUTO_INCREMENT,
  `out_path` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `input_path` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `file_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `remove_identity` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `suffix` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2110574595 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of file_path
-- ----------------------------
BEGIN;
INSERT INTO `file_path` VALUES (-2122252286, 'audio/webm;codecs=opus/Jan 2, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 2, 2024', 'audio/webm;codecs=opus', '2024-01-02 034226.mp3', NULL, NULL, '2024-01-02 22:42:26', NULL, '2024-01-02 22:42:26', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-2108895231, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 024415.mp3', NULL, NULL, '2024-01-04 21:44:15', NULL, '2024-01-04 21:44:15', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-2083729407, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 031036.mp3', NULL, NULL, '2024-01-04 22:10:36', NULL, '2024-01-04 22:10:36', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-2075340798, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 031821.mp3', NULL, NULL, '2024-01-04 22:18:21', NULL, '2024-01-04 22:18:21', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-2066952191, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 031112.mp3', NULL, NULL, '2024-01-04 22:11:12', NULL, '2024-01-04 22:11:12', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-2025009150, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 034920.mp3', NULL, NULL, '2024-01-09 22:49:21', NULL, '2024-01-09 22:49:21', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1992228862, 'audio/webm;codecs=opus/Jan 2, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 2, 2024', 'audio/webm;codecs=opus', '2024-01-02 035252.mp3', NULL, NULL, '2024-01-02 22:52:53', NULL, '2024-01-02 22:52:53', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1987203071, 'application/octet-stream/Mar 6, 2024', '/home/fileStorage/application/octet-stream/Mar 6, 2024', 'application/octet-stream', '/home/fileStorage/', NULL, NULL, '2024-03-06 22:56:48', NULL, '2024-03-06 22:56:48', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1957842942, 'application/octet-stream/Mar 6, 2024', '/home/fileStorage/application/octet-stream/Mar 6, 2024', 'application/octet-stream', '/home/fileStorage/', NULL, NULL, '2024-03-06 23:02:24', NULL, '2024-03-06 23:02:24', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1946099710, 'audio/webm;codecs=opus/Jan 11, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 11, 2024', 'audio/webm;codecs=opus', '2024-01-11 024305.mp3', NULL, NULL, '2024-01-11 21:43:06', NULL, '2024-01-11 21:43:06', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1925128190, 'audio/webm;codecs=opus/Jan 10, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 10, 2024', 'audio/webm;codecs=opus', '2024-01-10 043900.mp3', NULL, NULL, '2024-01-10 23:39:01', NULL, '2024-01-10 23:39:01', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1903374334, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 031155.mp3', NULL, NULL, '2024-01-04 22:11:55', NULL, '2024-01-04 22:11:55', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1895768062, 'audio/webm;codecs=opus/Jan 11, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 11, 2024', 'audio/webm;codecs=opus', '2024-01-11 024428.mp3', NULL, NULL, '2024-01-11 21:44:29', NULL, '2024-01-11 21:44:29', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1844654079, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 030349.mp3', NULL, NULL, '2024-01-04 22:03:50', NULL, '2024-01-04 22:03:50', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1815293950, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 024644.mp3', NULL, NULL, '2024-01-04 21:46:45', NULL, '2024-01-04 21:46:45', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1811099647, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 030830.mp3', NULL, NULL, '2024-01-04 22:08:31', NULL, '2024-01-04 22:08:31', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1798516734, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032012.mp3', NULL, NULL, '2024-01-04 22:20:12', NULL, '2024-01-04 22:20:12', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1761550335, 'audio/webm;codecs=opus/Jan 11, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 11, 2024', 'audio/webm;codecs=opus', '2024-01-11 031651.mp3', NULL, NULL, '2024-01-11 22:16:51', NULL, '2024-01-11 22:16:51', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1761550334, 'audio/webm;codecs=opus/Jan 10, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 10, 2024', 'audio/webm;codecs=opus', '2024-01-10 043808.mp3', NULL, NULL, '2024-01-10 23:38:09', NULL, '2024-01-10 23:38:09', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1727172607, 'application/octet-stream/Mar 6, 2024', '/home/fileStorage/application/octet-stream/Mar 6, 2024', 'application/octet-stream', '/home/fileStorage/', NULL, NULL, '2024-03-06 22:50:59', NULL, '2024-03-06 22:50:59', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1697853439, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 041103.mp3', NULL, NULL, '2024-01-09 23:11:04', NULL, '2024-01-09 23:11:04', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1689464830, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 033242.mp3', NULL, NULL, '2024-01-04 22:32:43', NULL, '2024-01-04 22:32:43', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1618161663, 'audio/webm;codecs=opus/Jan 5, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 5, 2024', 'audio/webm;codecs=opus', '2024-01-05 040946.mp3', NULL, NULL, '2024-01-05 23:09:47', NULL, '2024-01-05 23:09:47', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1609773055, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032203.mp3', NULL, NULL, '2024-01-04 22:22:04', NULL, '2024-01-04 22:22:04', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1592995839, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 030742.mp3', NULL, NULL, '2024-01-04 22:07:43', NULL, '2024-01-04 22:07:43', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1559441406, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 041029.mp3', NULL, NULL, '2024-01-09 23:10:30', NULL, '2024-01-09 23:10:30', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1546858495, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 031752.mp3', NULL, NULL, '2024-01-04 22:17:53', NULL, '2024-01-04 22:17:53', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1546817535, 'audio/mpeg/Mar 6, 2024', '/home/fileStorage/audio/mpeg/Mar 6, 2024', 'audio/mpeg', '孙科舞蹈嘉年华超火的原创编舞霍元甲完整版舞台视频来啦  Chinese Dance .mp3', NULL, NULL, '2024-03-06 22:46:15', NULL, '2024-03-06 22:46:15', NULL, 'audio_background', 'mp3');
INSERT INTO `file_path` VALUES (-1542664191, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 040558.mp3', NULL, NULL, '2024-01-09 23:05:58', NULL, '2024-01-09 23:05:58', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1426051070, 'audio/mpeg/Mar 12, 2024', '/home/fileStorage/audio/mpeg/Mar 12, 2024', 'audio/mpeg', '111.mp3', NULL, NULL, '2024-03-12 21:57:44', NULL, '2024-03-12 21:57:44', NULL, 'audio_advertisement', 'mp3');
INSERT INTO `file_path` VALUES (-1426051069, 'audio/mpeg/Mar 12, 2024', '/home/fileStorage/audio/mpeg/Mar 12, 2024', 'audio/mpeg', '111.mp3', NULL, NULL, '2024-03-12 21:57:44', NULL, '2024-03-12 21:57:44', NULL, 'audio_advertisement', 'mp3');
INSERT INTO `file_path` VALUES (-1391669246, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 031337.mp3', NULL, NULL, '2024-01-04 22:13:38', NULL, '2024-01-04 22:13:38', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1379086334, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032058.mp3', NULL, NULL, '2024-01-04 22:20:58', NULL, '2024-01-04 22:20:58', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1371480063, 'audio/webm;codecs=opus/Mar 16, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Mar 16, 2024', 'audio/webm;codecs=opus', '2024-03-16 031023.mp3', NULL, NULL, '2024-03-16 23:10:23', NULL, '2024-03-16 23:10:23', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1367277567, 'audio/webm;codecs=opus/Jan 2, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 2, 2024', 'audio/webm;codecs=opus', '2024-01-02 035401.mp3', NULL, NULL, '2024-01-02 22:54:02', NULL, '2024-01-02 22:54:02', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1341337598, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 031908.mp3', NULL, NULL, '2024-01-04 22:19:09', NULL, '2024-01-04 22:19:09', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1316171774, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032004.mp3', NULL, NULL, '2024-01-04 22:20:05', NULL, '2024-01-04 22:20:05', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1299394558, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 034902.mp3', NULL, NULL, '2024-01-09 22:49:03', NULL, '2024-01-09 22:49:03', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1295200255, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032430.mp3', NULL, NULL, '2024-01-04 22:24:30', NULL, '2024-01-04 22:24:30', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1290948607, 'application/octet-stream/Mar 6, 2024', '/home/fileStorage/application/octet-stream/Mar 6, 2024', 'application/octet-stream', '/home/fileStorage/', NULL, NULL, '2024-03-06 22:56:26', NULL, '2024-03-06 22:56:26', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1270034431, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 041123.mp3', NULL, NULL, '2024-01-09 23:11:23', NULL, '2024-01-09 23:11:23', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1160916991, 'image/jpeg/Nov 6, 2023', '/Users/sw/Desktop/sw-vue/munumkum/liveStreamProject-back-end/image/jpeg/Nov 6, 2023', 'image/jpeg', 'soccerBall.jpeg', NULL, NULL, '2023-11-06 23:28:48', NULL, '2023-11-06 23:28:48', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1119039487, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 040708.mp3', NULL, NULL, '2024-01-09 23:07:08', NULL, '2024-01-09 23:07:08', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1115627519, 'audio/webm;codecs=opus/Jan 11, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 11, 2024', 'audio/webm;codecs=opus', '2024-01-11 024057.mp3', NULL, NULL, '2024-01-11 21:40:58', NULL, '2024-01-11 21:40:58', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1103044606, 'audio/webm;codecs=opus/Jan 10, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 10, 2024', 'audio/webm;codecs=opus', '2024-01-10 043650.mp3', NULL, NULL, '2024-01-10 23:36:51', NULL, '2024-01-10 23:36:51', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1068707838, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 030236.mp3', NULL, NULL, '2024-01-04 22:02:36', NULL, '2024-01-04 22:02:36', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1060343807, 'image/jpeg/Nov 12, 2023', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/image/jpeg/Nov 12, 2023', 'image/jpeg', 'soccerBall.jpeg', NULL, NULL, '2023-11-12 22:15:35', NULL, '2023-11-12 22:15:35', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1056124927, 'audio/webm;codecs=opus/Jan 5, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 5, 2024', 'audio/webm;codecs=opus', '2024-01-05 034105.mp3', NULL, NULL, '2024-01-05 22:41:06', NULL, '2024-01-05 22:41:06', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-1044324351, 'audio/webm;codecs=opus/Jan 11, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 11, 2024', 'audio/webm;codecs=opus', '2024-01-11 031915.mp3', NULL, NULL, '2024-01-11 22:19:16', NULL, '2024-01-11 22:19:16', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-973021182, 'audio/webm;codecs=opus/Jan 10, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 10, 2024', 'audio/webm;codecs=opus', '2024-01-10 043116.mp3', NULL, NULL, '2024-01-10 23:31:16', NULL, '2024-01-10 23:31:16', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-926101503, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 030552.mp3', NULL, NULL, '2024-01-04 22:05:52', NULL, '2024-01-04 22:05:52', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-926031871, 'audio/webm;codecs=opus/Dec 12, 2023', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Dec 12, 2023', 'audio/webm;codecs=opus', '2023-12-12 041037.mp3', NULL, NULL, '2023-12-12 23:10:37', NULL, '2023-12-12 23:10:37', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-892547070, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 031003.mp3', NULL, NULL, '2024-01-04 22:10:04', NULL, '2024-01-04 22:10:04', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-833785854, 'audio/mpeg/Mar 6, 2024', '/home/fileStorage/audio/mpeg/Mar 6, 2024', 'audio/mpeg', '.', NULL, NULL, '2024-03-06 22:43:54', NULL, '2024-03-06 22:43:54', NULL, '', '');
INSERT INTO `file_path` VALUES (-817823742, 'audio/webm;codecs=opus/Jan 2, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 2, 2024', 'audio/webm;codecs=opus', '2024-01-02 034349.mp3', NULL, NULL, '2024-01-02 22:43:49', NULL, '2024-01-02 22:43:49', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-812855294, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 034742.mp3', NULL, NULL, '2024-01-09 22:47:43', NULL, '2024-01-09 22:47:43', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-783527935, 'audio/mpeg/Mar 12, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/mpeg/Mar 12, 2024', 'audio/mpeg', '123.mp3', NULL, NULL, '2024-03-12 22:55:19', NULL, '2024-03-12 22:55:19', NULL, 'audio_background', 'mp3');
INSERT INTO `file_path` VALUES (-775888895, 'application/octet-stream/Mar 16, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/application/octet-stream/Mar 16, 2024', 'application/octet-stream', '2024-03-16 031359.mp3', NULL, NULL, '2024-03-16 23:14:00', NULL, '2024-03-16 23:14:00', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-770912254, 'audio/webm;codecs=opus/Jan 5, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 5, 2024', 'audio/webm;codecs=opus', '2024-01-05 034059.mp3', NULL, NULL, '2024-01-05 22:41:00', NULL, '2024-01-05 22:41:00', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-746520575, 'audio/webm;codecs=opus/Jan 2, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 2, 2024', 'audio/webm;codecs=opus', '2024-01-02 034426.mp3', NULL, NULL, '2024-01-02 22:44:26', NULL, '2024-01-02 22:44:26', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-720613374, 'audio/mpeg/Mar 14, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/mpeg/Mar 14, 2024', 'audio/mpeg', '123.mp3', NULL, NULL, '2024-03-14 21:39:12', NULL, '2024-03-14 21:39:12', NULL, 'audio_advertisement', 'mp3');
INSERT INTO `file_path` VALUES (-691994623, 'audio/webm;codecs=opus/Jan 2, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 2, 2024', 'audio/webm;codecs=opus', '2024-01-02 033941.mp3', NULL, NULL, '2024-01-02 22:39:42', NULL, '2024-01-02 22:39:42', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-679464958, 'application/octet-stream/Mar 12, 2024', '/home/fileStorage/application/octet-stream/Mar 12, 2024', 'application/octet-stream', '/home/fileStorage/', NULL, NULL, '2024-03-12 22:37:35', NULL, '2024-03-12 22:37:35', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-607334398, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032340.mp3', NULL, NULL, '2024-01-04 22:23:40', NULL, '2024-01-04 22:23:40', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-590557182, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 035911.mp3', NULL, NULL, '2024-01-09 22:59:11', NULL, '2024-01-09 22:59:11', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-570367998, 'audio/webm;codecs=opus/Jan 11, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 11, 2024', 'audio/webm;codecs=opus', '2024-01-11 031629.mp3', NULL, NULL, '2024-01-11 22:16:29', NULL, '2024-01-11 22:16:29', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-552808446, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032300.mp3', NULL, NULL, '2024-01-04 22:23:00', NULL, '2024-01-04 22:23:00', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-503259134, 'audio/webm;codecs=opus/Jan 10, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 10, 2024', 'audio/webm;codecs=opus', '2024-01-10 043746.mp3', NULL, NULL, '2024-01-10 23:37:46', NULL, '2024-01-10 23:37:46', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-477310974, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 033240.mp3', NULL, NULL, '2024-01-04 22:32:41', NULL, '2024-01-04 22:32:41', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-457121790, 'audio/webm;codecs=opus/Jan 10, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 10, 2024', 'audio/webm;codecs=opus', '2024-01-10 043003.mp3', NULL, NULL, '2024-01-10 23:30:04', NULL, '2024-01-10 23:30:04', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-447950847, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 033131.mp3', NULL, NULL, '2024-01-04 22:31:31', NULL, '2024-01-04 22:31:31', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-447909887, 'audio/mpeg/Mar 6, 2024', '/home/fileStorage/audio/mpeg/Mar 6, 2024', 'audio/mpeg', '古典舞 霍元甲改編版 原創 孫科.mp3', NULL, NULL, '2024-03-06 22:43:53', NULL, '2024-03-06 22:43:53', NULL, 'audio_advertisement', 'mp3');
INSERT INTO `file_path` VALUES (-440332286, 'image/jpeg/Nov 25, 2023', '/home/fileStorage/image/jpeg/Nov 25, 2023', 'image/jpeg', 'Asekem FC.jpg', NULL, NULL, '2023-11-25 19:37:22', NULL, '2023-11-25 19:37:22', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-401813503, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 031644.mp3', NULL, NULL, '2024-01-04 22:16:45', NULL, '2024-01-04 22:16:45', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-398401534, 'audio/webm;codecs=opus/Jan 10, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 10, 2024', 'audio/webm;codecs=opus', '2024-01-10 043356.mp3', NULL, NULL, '2024-01-10 23:33:57', NULL, '2024-01-10 23:33:57', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-381624319, 'audio/webm;codecs=opus/Jan 11, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 11, 2024', 'audio/webm;codecs=opus', '2024-01-11 024421.mp3', NULL, NULL, '2024-01-11 21:44:22', NULL, '2024-01-11 21:44:22', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-364838911, 'audio/webm;codecs=opus/Jan 2, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 2, 2024', 'audio/webm;codecs=opus', '2024-01-02 033903.mp3', NULL, NULL, '2024-01-02 22:39:04', NULL, '2024-01-02 22:39:04', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-364064766, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 040659.mp3', NULL, NULL, '2024-01-09 23:06:59', NULL, '2024-01-09 23:06:59', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-359870462, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 030946.mp3', NULL, NULL, '2024-01-04 22:09:47', NULL, '2024-01-04 22:09:47', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-338857983, 'application/octet-stream/Mar 6, 2024', '/home/fileStorage/application/octet-stream/Mar 6, 2024', 'application/octet-stream', '/home/fileStorage/', NULL, NULL, '2024-03-06 22:50:51', NULL, '2024-03-06 22:50:51', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-293543934, 'audio/webm;codecs=opus/Jan 11, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 11, 2024', 'audio/webm;codecs=opus', '2024-01-11 032001.mp3', NULL, NULL, '2024-01-11 22:20:01', NULL, '2024-01-11 22:20:01', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-292691967, 'image/jpeg/Nov 11, 2023', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/image/jpeg/Nov 11, 2023', 'image/jpeg', 'soccerBall.jpeg', NULL, NULL, '2023-11-11 22:42:39', NULL, '2023-11-11 22:42:39', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-288567295, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 041110.mp3', NULL, NULL, '2024-01-09 23:11:10', NULL, '2024-01-09 23:11:10', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-288497663, 'image/jpeg/Nov 11, 2023', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/image/jpeg/Nov 11, 2023', 'image/jpeg', 'soccerBall.jpeg', NULL, NULL, '2023-11-11 22:42:39', NULL, '2023-11-11 22:42:39', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-284332031, 'image/png/Nov 4, 2023', '/Users/sw/Desktop/sw-vue/munumkum/liveStreamProject-back-end/image/png/Nov 4, 2023', 'image/png', 'Screen Shot 2023-11-03 at 9.07.28 PM.png', NULL, NULL, '2023-11-04 00:04:24', NULL, '2023-11-04 00:04:24', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-275984383, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032334.mp3', NULL, NULL, '2024-01-04 22:23:34', NULL, '2024-01-04 22:23:34', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-229789694, 'application/octet-stream/Mar 6, 2024', '/home/fileStorage/application/octet-stream/Mar 6, 2024', 'application/octet-stream', '/home/fileStorage/', NULL, NULL, '2024-03-06 22:56:59', NULL, '2024-03-06 22:56:59', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-213069822, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 040349.mp3', NULL, NULL, '2024-01-09 23:03:50', NULL, '2024-01-09 23:03:50', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-209657855, 'application/octet-stream/Mar 16, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/application/octet-stream/Mar 16, 2024', 'application/octet-stream', '2024-03-16 032308.mp3', NULL, NULL, '2024-03-16 23:23:09', NULL, '2024-03-16 23:23:09', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-116600831, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 024301.mp3', NULL, NULL, '2024-01-04 21:43:01', NULL, '2024-01-04 21:43:01', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-108212223, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 034747.mp3', NULL, NULL, '2024-01-09 22:47:47', NULL, '2024-01-09 22:47:47', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-83046398, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 030323.mp3', NULL, NULL, '2024-01-04 22:03:24', NULL, '2024-01-04 22:03:24', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-71245822, 'audio/webm;codecs=opus/Jan 10, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 10, 2024', 'audio/webm;codecs=opus', '2024-01-10 042630.mp3', NULL, NULL, '2024-01-10 23:26:31', NULL, '2024-01-10 23:26:31', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (-46079999, 'audio/webm;codecs=opus/Jan 11, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 11, 2024', 'audio/webm;codecs=opus', '2024-01-11 031614.mp3', NULL, NULL, '2024-01-11 22:16:15', NULL, '2024-01-11 22:16:15', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (21041154, 'image/jpeg/Nov 25, 2023', '/home/fileStorage/image/jpeg/Nov 25, 2023', 'image/jpeg', 'Basake Holy Stars FC.jpg', NULL, NULL, '2023-11-25 19:37:32', NULL, '2023-11-25 19:37:32', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (37814274, 'audio/webm;codecs=opus/Jan 2, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 2, 2024', 'audio/webm;codecs=opus', '2024-01-02 034935.mp3', NULL, NULL, '2024-01-02 22:49:36', NULL, '2024-01-02 22:49:36', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (54583298, 'application/octet-stream/Mar 16, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/application/octet-stream/Mar 16, 2024', 'application/octet-stream', '2024-03-16 031430.mp3', NULL, NULL, '2024-03-16 23:14:30', NULL, '2024-03-16 23:14:30', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (93114370, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 040131.mp3', NULL, NULL, '2024-01-09 23:01:32', NULL, '2024-01-09 23:01:32', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (134275074, 'audio/webm;codecs=opus/Jan 10, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 10, 2024', 'audio/webm;codecs=opus', '2024-01-10 042607.mp3', NULL, NULL, '2024-01-10 23:26:07', NULL, '2024-01-10 23:26:07', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (135057409, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 040401.mp3', NULL, NULL, '2024-01-09 23:04:01', NULL, '2024-01-09 23:04:01', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (139251714, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 035916.mp3', NULL, NULL, '2024-01-09 22:59:16', NULL, '2024-01-09 22:59:16', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (142618626, 'application/octet-stream/Mar 12, 2024', '/home/fileStorage/application/octet-stream/Mar 12, 2024', 'application/octet-stream', '/home/fileStorage/', NULL, NULL, '2024-03-12 22:36:51', NULL, '2024-03-12 22:36:51', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (146857986, 'audio/webm;codecs=opus/Jan 11, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 11, 2024', 'audio/webm;codecs=opus', '2024-01-11 033452.mp3', NULL, NULL, '2024-01-11 22:34:52', NULL, '2024-01-11 22:34:52', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (172806145, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032923.mp3', NULL, NULL, '2024-01-04 22:29:23', NULL, '2024-01-04 22:29:23', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (197971969, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 031738.mp3', NULL, NULL, '2024-01-04 22:17:39', NULL, '2024-01-04 22:17:39', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (260104193, 'audio/webm;codecs=opus/Jan 10, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 10, 2024', 'audio/webm;codecs=opus', '2024-01-10 043044.mp3', NULL, NULL, '2024-01-10 23:30:45', NULL, '2024-01-10 23:30:45', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (297861121, 'audio/webm;codecs=opus/Jan 2, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 2, 2024', 'audio/webm;codecs=opus', '2024-01-02 034740.mp3', NULL, NULL, '2024-01-02 22:47:40', NULL, '2024-01-02 22:47:40', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (314630146, 'audio/webm;codecs=opus/Mar 16, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Mar 16, 2024', 'audio/webm;codecs=opus', '2024-03-16 030954.mp3', NULL, NULL, '2024-03-16 23:09:55', NULL, '2024-03-16 23:09:55', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (336384001, 'audio/webm;codecs=opus/Jan 5, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 5, 2024', 'audio/webm;codecs=opus', '2024-01-05 034132.mp3', NULL, NULL, '2024-01-05 22:41:33', NULL, '2024-01-05 22:41:33', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (352378881, 'audio/webm;codecs=opus/Jan 10, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 10, 2024', 'audio/webm;codecs=opus', '2024-01-10 042603.mp3', NULL, NULL, '2024-01-10 23:26:03', NULL, '2024-01-10 23:26:03', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (369938434, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032425.mp3', NULL, NULL, '2024-01-04 22:24:25', NULL, '2024-01-04 22:24:25', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (441241601, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 031212.mp3', NULL, NULL, '2024-01-04 22:12:12', NULL, '2024-01-04 22:12:12', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (478990337, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032325.mp3', NULL, NULL, '2024-01-04 22:23:25', NULL, '2024-01-04 22:23:25', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (511762433, 'audio/webm;codecs=opus/Jan 11, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 11, 2024', 'audio/webm;codecs=opus', '2024-01-11 033103.mp3', NULL, NULL, '2024-01-11 22:31:04', NULL, '2024-01-11 22:31:04', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (520151041, 'audio/webm;codecs=opus/Jan 10, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 10, 2024', 'audio/webm;codecs=opus', '2024-01-10 044056.mp3', NULL, NULL, '2024-01-10 23:40:56', NULL, '2024-01-10 23:40:56', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (533463041, 'image/png/Nov 11, 2023', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/image/png/Nov 11, 2023', 'image/png', 'Boston_Celtics.png', NULL, NULL, '2023-11-11 22:53:03', NULL, '2023-11-11 22:53:03', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (571265026, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032338.mp3', NULL, NULL, '2024-01-04 22:23:38', NULL, '2024-01-04 22:23:38', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (587268098, 'audio/webm;codecs=opus/Jan 2, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 2, 2024', 'audio/webm;codecs=opus', '2024-01-02 033912.mp3', NULL, NULL, '2024-01-02 22:39:12', NULL, '2024-01-02 22:39:12', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (600625153, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032355.mp3', NULL, NULL, '2024-01-04 22:23:56', NULL, '2024-01-04 22:23:56', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (654368770, 'audio/webm;codecs=opus/Jan 11, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 11, 2024', 'audio/webm;codecs=opus', '2024-01-11 024056.mp3', NULL, NULL, '2024-01-11 21:40:56', NULL, '2024-01-11 21:40:56', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (671928321, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 031544.mp3', NULL, NULL, '2024-01-04 22:15:44', NULL, '2024-01-04 22:15:44', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (759197698, 'image/jpeg/Nov 24, 2023', '/home/fileStorage/image/jpeg/Nov 24, 2023', 'image/jpeg', 'Asekem FC.jpg', NULL, NULL, '2023-11-24 22:28:57', NULL, '2023-11-24 22:28:57', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (764203009, 'audio/webm;codecs=opus/Jan 3, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 3, 2024', 'audio/webm;codecs=opus', '2024-01-03 032852.mp3', NULL, NULL, '2024-01-03 22:28:53', NULL, '2024-01-03 22:28:53', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (785174530, 'audio/webm;codecs=opus/Jan 5, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 5, 2024', 'audio/webm;codecs=opus', '2024-01-05 034208.mp3', NULL, NULL, '2024-01-05 22:42:09', NULL, '2024-01-05 22:42:09', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (839700482, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 041325.mp3', NULL, NULL, '2024-01-09 23:13:26', NULL, '2024-01-09 23:13:26', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (923586561, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032515.mp3', NULL, NULL, '2024-01-04 22:25:16', NULL, '2024-01-04 22:25:16', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (961335297, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 041049.mp3', NULL, NULL, '2024-01-09 23:10:50', NULL, '2024-01-09 23:10:50', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (965599234, 'audio/mpeg/Mar 18, 2024', '/home/fileStorage/audio/mpeg/Mar 18, 2024', 'audio/mpeg', 'PopCorners Breaking Bad Super Bowl Commercial  Breaking Good 60.mp3', NULL, NULL, '2024-03-18 22:48:43', NULL, '2024-03-18 22:48:43', NULL, 'audio_advertisement', 'mp3');
INSERT INTO `file_path` VALUES (969723906, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032303.mp3', NULL, NULL, '2024-01-04 22:23:04', NULL, '2024-01-04 22:23:04', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (986501121, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032250.mp3', NULL, NULL, '2024-01-04 22:22:50', NULL, '2024-01-04 22:22:50', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1053609986, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 031732.mp3', NULL, NULL, '2024-01-04 22:17:33', NULL, '2024-01-04 22:17:33', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1078775809, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 033542.mp3', NULL, NULL, '2024-01-04 22:35:43', NULL, '2024-01-04 22:35:43', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1170276354, 'audio/webm;codecs=opus/Jan 2, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 2, 2024', 'audio/webm;codecs=opus', '2024-01-02 034707.mp3', NULL, NULL, '2024-01-02 22:47:08', NULL, '2024-01-02 22:47:08', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1175244802, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 031950.mp3', NULL, NULL, '2024-01-04 22:19:50', NULL, '2024-01-04 22:19:50', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1175314433, 'audio/webm;codecs=opus/Dec 12, 2023', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Dec 12, 2023', 'audio/webm;codecs=opus', '2023-12-12 040911.mp3', NULL, NULL, '2023-12-12 23:09:12', NULL, '2023-12-12 23:09:12', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1191239681, 'audio/webm;codecs=opus/Jan 11, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 11, 2024', 'audio/webm;codecs=opus', '2024-01-11 031659.mp3', NULL, NULL, '2024-01-11 22:16:59', NULL, '2024-01-11 22:16:59', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1212993538, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 040434.mp3', NULL, NULL, '2024-01-09 23:04:34', NULL, '2024-01-09 23:04:34', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1259130881, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 041136.mp3', NULL, NULL, '2024-01-09 23:11:36', NULL, '2024-01-09 23:11:36', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1270931457, 'audio/webm;codecs=opus/Jan 10, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 10, 2024', 'audio/webm;codecs=opus', '2024-01-10 042626.mp3', NULL, NULL, '2024-01-10 23:26:27', NULL, '2024-01-10 23:26:27', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1292742658, 'application/octet-stream/Mar 6, 2024', '/home/fileStorage/application/octet-stream/Mar 6, 2024', 'application/octet-stream', '/home/fileStorage/', NULL, NULL, '2024-03-06 23:03:19', NULL, '2024-03-06 23:03:19', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1355599873, 'audio/webm;codecs=opus/Jan 5, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 5, 2024', 'audio/webm;codecs=opus', '2024-01-05 034141.mp3', NULL, NULL, '2024-01-05 22:41:42', NULL, '2024-01-05 22:41:42', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1384960001, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032846.mp3', NULL, NULL, '2024-01-04 22:28:47', NULL, '2024-01-04 22:28:47', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1426120705, 'audio/webm;codecs=opus/Mar 17, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Mar 17, 2024', 'audio/webm;codecs=opus', '2024-03-17 022746.mp3', NULL, NULL, '2024-03-17 22:27:47', NULL, '2024-03-17 22:27:47', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1434509314, 'audio/webm;codecs=opus/Jan 10, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 10, 2024', 'audio/webm;codecs=opus', '2024-01-10 043749.mp3', NULL, NULL, '2024-01-10 23:37:50', NULL, '2024-01-10 23:37:50', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1464651777, 'audio/webm;codecs=opus/Jan 3, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 3, 2024', 'audio/webm;codecs=opus', '2024-01-03 033040.mp3', NULL, NULL, '2024-01-03 22:30:41', NULL, '2024-01-03 22:30:41', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1468846081, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032830.mp3', NULL, NULL, '2024-01-04 22:28:30', NULL, '2024-01-04 22:28:30', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1493229569, 'audio/webm;codecs=opus/Jan 11, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 11, 2024', 'audio/webm;codecs=opus', '2024-01-11 024308.mp3', NULL, NULL, '2024-01-11 21:43:09', NULL, '2024-01-11 21:43:09', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1522589697, 'audio/webm;codecs=opus/Mar 16, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Mar 16, 2024', 'audio/webm;codecs=opus', '2024-03-16 035836.mp3', NULL, NULL, '2024-03-16 23:58:37', NULL, '2024-03-16 23:58:37', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1607258114, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 040005.mp3', NULL, NULL, '2024-01-09 23:00:06', NULL, '2024-01-09 23:00:06', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1678561281, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 031750.mp3', NULL, NULL, '2024-01-04 22:17:51', NULL, '2024-01-04 22:17:51', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1681973250, 'audio/webm;codecs=opus/Jan 10, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 10, 2024', 'audio/webm;codecs=opus', '2024-01-10 043908.mp3', NULL, NULL, '2024-01-10 23:39:09', NULL, '2024-01-10 23:39:09', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1728110593, 'audio/webm;codecs=opus/Jan 11, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 11, 2024', 'audio/webm;codecs=opus', '2024-01-11 024920.mp3', NULL, NULL, '2024-01-11 21:49:20', NULL, '2024-01-11 21:49:20', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1799413761, 'audio/webm;codecs=opus/Jan 10, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 10, 2024', 'audio/webm;codecs=opus', '2024-01-10 044107.mp3', NULL, NULL, '2024-01-10 23:41:08', NULL, '2024-01-10 23:41:08', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1808584705, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032007.mp3', NULL, NULL, '2024-01-04 22:20:08', NULL, '2024-01-04 22:20:08', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1858916354, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 030659.mp3', NULL, NULL, '2024-01-04 22:06:59', NULL, '2024-01-04 22:06:59', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1867304961, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 025830.mp3', NULL, NULL, '2024-01-04 21:58:30', NULL, '2024-01-04 21:58:30', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1879060481, 'application/octet-stream/Mar 12, 2024', '/home/fileStorage/application/octet-stream/Mar 12, 2024', 'application/octet-stream', '/home/fileStorage/', NULL, NULL, '2024-03-12 22:50:24', NULL, '2024-03-12 22:50:24', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1888276482, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032307.mp3', NULL, NULL, '2024-01-04 22:23:08', NULL, '2024-01-04 22:23:08', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1967915010, 'image/png/Nov 4, 2023', '/Users/sw/Desktop/sw-vue/munumkum/liveStreamProject-back-end/image/png/Nov 4, 2023', 'image/png', 'Screen Shot 2023-11-03 at 9.07.28 PM 1.png', NULL, NULL, '2023-11-04 22:31:20', NULL, '2023-11-04 22:31:20', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (1996546050, 'audio/webm;codecs=opus/Jan 11, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 11, 2024', 'audio/webm;codecs=opus', '2024-01-11 034539.mp3', NULL, NULL, '2024-01-11 22:45:40', NULL, '2024-01-11 22:45:40', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (2051854337, 'audio/webm;codecs=opus/Jan 9, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 9, 2024', 'audio/webm;codecs=opus', '2024-01-09 040344.mp3', NULL, NULL, '2024-01-09 23:03:44', NULL, '2024-01-09 23:03:44', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (2072825858, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032239.mp3', NULL, NULL, '2024-01-04 22:22:39', NULL, '2024-01-04 22:22:39', NULL, NULL, NULL);
INSERT INTO `file_path` VALUES (2110574594, 'audio/webm;codecs=opus/Jan 4, 2024', '/Users/sw/Desktop/pitchmic/pitchmic/fileStorage/audio/webm;codecs=opus/Jan 4, 2024', 'audio/webm;codecs=opus', '2024-01-04 032257.mp3', NULL, NULL, '2024-01-04 22:22:58', NULL, '2024-01-04 22:22:58', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for game
-- ----------------------------
DROP TABLE IF EXISTS `game`;
CREATE TABLE `game` (
  `id` int NOT NULL,
  `team_id` int DEFAULT NULL,
  `target_team_id` int DEFAULT NULL,
  `team_score` int DEFAULT NULL,
  `target_team_score` int DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `remove_identity` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of game
-- ----------------------------
BEGIN;
INSERT INTO `game` VALUES (-2024968191, -1404186623, -1060253694, NULL, NULL, '2024-03-06 22:47:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `game` VALUES (-1894985726, -1404186623, -1060253694, NULL, NULL, '2023-12-12 00:00:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `game` VALUES (-1744039935, -1404186623, -1060253694, NULL, NULL, '2023-12-19 00:00:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `game` VALUES (-1739796478, -1404186623, -1060253694, NULL, NULL, '2024-01-05 00:00:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `game` VALUES (-1328754686, -1404186623, -1060253694, NULL, NULL, '2024-01-03 00:00:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `game` VALUES (-1106456574, -1404186623, -1060253694, NULL, NULL, '2023-12-12 00:00:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `game` VALUES (-1106399231, -1060253694, -728903678, NULL, NULL, '2024-01-20 20:04:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `game` VALUES (-619958270, -1404186623, -1060253694, NULL, NULL, '2023-12-30 00:00:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `game` VALUES (-540200958, -1404186623, -1060253694, NULL, NULL, '2023-12-11 00:00:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `game` VALUES (-364097534, -1404186623, -1060253694, NULL, NULL, '2024-03-14 00:00:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `game` VALUES (1, 1, 2, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `game` VALUES (931192833, -1404186623, -1060253694, NULL, NULL, '2024-03-17 00:00:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `game` VALUES (1129107457, -1404186623, -1060253694, NULL, NULL, '2024-01-09 00:00:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `game` VALUES (1266745346, -1404186623, -1060253694, NULL, NULL, '2024-01-02 00:00:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `game` VALUES (1438658561, -1404186623, -1060253694, NULL, NULL, '2024-03-13 22:36:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `game` VALUES (1456263169, -1404186623, -1060253694, NULL, NULL, '2024-01-04 00:00:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `game` VALUES (1782636545, -1404186623, -1060253694, NULL, NULL, '2024-03-16 23:22:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `game` VALUES (2085482498, -1404186623, -1060253694, NULL, NULL, '2023-12-14 00:00:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for invitation_record
-- ----------------------------
DROP TABLE IF EXISTS `invitation_record`;
CREATE TABLE `invitation_record` (
  `id` int NOT NULL,
  `invitation_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `inviter_id` int DEFAULT NULL,
  `invitee_id` int DEFAULT NULL,
  `invitee_role_id` int DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `remove_identity` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of invitation_record
-- ----------------------------
BEGIN;
INSERT INTO `invitation_record` VALUES (-477257727, 'B138579D-BB05-4018-81A6-46E3E239020F', 1, 3, 1, '2023-11-08 23:59:36', '2023-11-08 23:59:36', NULL, NULL, '1', NULL);
INSERT INTO `invitation_record` VALUES (-284327934, '50824250-3DCA-4365-8012-C14AACD12AFF', 3, 4, 6, '2023-11-14 21:03:37', '2023-11-14 21:03:37', NULL, NULL, '1', NULL);
INSERT INTO `invitation_record` VALUES (-154349567, '78C80F8C-13A8-4DA4-A520-13AB5AD4E94C', 3, NULL, 2, '2024-01-09 22:09:57', '2024-01-09 22:09:57', NULL, NULL, NULL, NULL);
INSERT INTO `invitation_record` VALUES (1879117825, '3ED1ED35-5B50-4BD0-A409-9AF032D20CF9', 1, 5, 2, '2023-11-25 19:54:50', '2023-11-25 19:54:50', NULL, NULL, '1', NULL);
INSERT INTO `invitation_record` VALUES (1930166274, '17916279-2CBD-472D-B511-401D24CD90BE', 1, NULL, 1, '2023-11-12 18:43:56', '2023-11-12 18:43:56', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for language
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of language
-- ----------------------------
BEGIN;
INSERT INTO `language` VALUES (1, 'English');
INSERT INTO `language` VALUES (2, 'Twi');
COMMIT;

-- ----------------------------
-- Table structure for live_language_records
-- ----------------------------
DROP TABLE IF EXISTS `live_language_records`;
CREATE TABLE `live_language_records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language_id` int DEFAULT NULL,
  `live_records_id` int DEFAULT NULL,
  `file_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `live_start_key` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `rtmp_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `audio_user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2131546114 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of live_language_records
-- ----------------------------
BEGIN;
INSERT INTO `live_language_records` VALUES (-2129866750, 2, 1481428994, NULL, '123', '7B84E438-4A1F-4D11-974D-A950ADA52C94', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (-2125598719, 1, 2127425537, NULL, '123', 'D9123CF6-C62A-44EF-8157-C88478170EF4', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (-2071920639, NULL, 1338048513, -2122252286, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-2066952190, NULL, -1249062910, -2083729407, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-2050174974, NULL, -1249062910, -2075340798, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-2045980671, NULL, -1249062910, -2066952191, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-1991454718, NULL, -1249062910, -2108895231, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-1916731391, NULL, 1338048513, -1992228862, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-1886597118, NULL, -1249062910, -1903374334, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-1882361854, 1, -1953665023, 1292742658, '123', 'D50640F0-119E-494C-A340-CB59A3B51085', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (-1832071167, NULL, -1249062910, -1844654079, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-1794322431, NULL, -1249062910, -1815293950, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-1785933822, NULL, -1249062910, -1811099647, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-1781739519, NULL, -1249062910, -1798516734, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-1681076223, NULL, -1249062910, -1689464830, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-1672687614, 1, -1681076223, -1618161663, '123', 'B231A41F-5744-4D28-BF89-A09CD66586D4', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (-1630793727, 2, -1664348159, NULL, '123', '3D1B154A-6750-4529-98A8-8CFDD9C7FEE9', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (-1626599423, 1, -1664348159, NULL, '123', '7E1A84AB-C545-4082-ACA9-2868608EBA0A', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (-1601384446, NULL, -1249062910, -1609773055, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-1567830015, NULL, -1249062910, -1592995839, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-1538469886, NULL, -1249062910, -1546858495, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-1370697727, NULL, -1249062910, -1379086334, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-1337143295, NULL, -1249062910, -1391669246, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-1321140223, NULL, 1338048513, -1367277567, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-1299394559, NULL, -1249062910, -1341337598, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-1282617342, NULL, -1249062910, -1295200255, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-1278423039, NULL, -1249062910, -1316171774, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-1207119870, 1, -1249062910, NULL, '123', 'E8D9B973-2180-4498-A7C0-3A7CF180299C', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (-1056124926, 2, -1077096446, NULL, '123', '2F72127F-BBB3-4CCF-9C44-100C4537EA53', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (-1001598975, NULL, -1249062910, -1068707838, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-993251326, 2, -565432319, NULL, '123', 'DF03CE74-399F-4865-A531-35B49E34E511', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (-938627070, 1, -988958718, NULL, '123', 'C1267196-29E5-4053-BB18-63C850E95632', 'webrtc://localhost/live', 3);
INSERT INTO `live_language_records` VALUES (-896741375, NULL, -1249062910, -926101503, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-896667646, 2, 2127425537, NULL, '123', '8251E90B-9B7F-4ACE-AB69-133FFD256940', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (-884158462, NULL, -1249062910, -892547070, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-721354751, NULL, 1338048513, -817823742, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-658440191, NULL, 1338048513, -691994623, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-603914239, NULL, 1338048513, -746520575, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-598945790, NULL, -1249062910, -607334398, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-531836927, NULL, -1249062910, -552808446, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-519294974, 1, -565432319, NULL, '123', 'E570BA95-0C8B-4F6C-88B0-0D7E6B84DFD0', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (-494063615, 1, -506646526, NULL, '123', 'C54BE22B-B574-47A8-9EF0-CB970BCA56F2', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (-431173630, NULL, -1249062910, -477310974, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-372453375, NULL, -1249062910, -401813503, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-364064767, NULL, -1249062910, -447950847, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-305344510, NULL, -1249062910, -359870462, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-259207167, NULL, -1249062910, -275984383, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-176095230, NULL, 1338048513, -364838911, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-145993726, 1, -225685503, 54583298, '12345', '64E30228-50E1-4E57-83C0-A2FF13BD2627', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (-78852095, NULL, -1249062910, -116600831, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-45297662, NULL, -1249062910, -83046398, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (-15937535, 2, -1249062910, NULL, '123', '29661082-5E34-48A7-876A-0E5FA0EA880C', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (46202881, NULL, 1338048513, 37814274, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (88993793, 1, 2127425537, NULL, '123', '6C701147-A2B1-41FB-B1EA-F4A1B64EF4E4', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (210554881, NULL, -1249062910, 197971969, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (227332097, 2, -1681076223, NULL, '123', '120EEADD-D295-46D9-B734-61BB8DA8F3B6', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (265080833, NULL, -1249062910, 172806145, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (310444034, NULL, 1338048513, 297861121, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (332189698, 2, 1150078978, 260104193, '123', '421BC0C7-3878-4A7C-9D1E-8897D5AF8769', 'webrtc://localhost/live', 3);
INSERT INTO `live_language_records` VALUES (378327041, NULL, -1249062910, 369938434, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (449630210, NULL, -1249062910, 441241601, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (487378945, NULL, -1249062910, 478990337, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (600625154, NULL, -1249062910, 571265026, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (609013761, NULL, -1249062910, 600625153, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (641794049, NULL, 1338048513, 587268098, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (688705538, NULL, -1249062910, 671928321, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (835506178, NULL, -1249062910, 764203009, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (982306818, NULL, -1249062910, 969723906, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (999084033, NULL, -1249062910, 986501121, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (999084034, NULL, -1249062910, 923586561, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (1040244737, 1, 1015078913, 1426120705, '123', 'E1BFB30D-E3DE-4464-8CC0-A4F529DB73EB', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (1066192898, NULL, -1249062910, 1053609986, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (1095553026, NULL, 1481428994, 1078775809, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (1162661889, 1, 1150078978, 1996546050, '123', 'B10D0F30-9CAA-4A0B-95E0-8F5CD913AAC7', 'webrtc://localhost/live', 3);
INSERT INTO `live_language_records` VALUES (1196216321, NULL, -1249062910, 1175244802, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (1224802305, NULL, 1338048513, 1170276354, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (1379991554, 1, 1338048513, NULL, '123', '1A62125E-9CD4-4A70-8B63-3B916D200AE2', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (1397542914, NULL, -1249062910, 1384960001, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (1485623298, NULL, -1249062910, 1468846081, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (1498206210, 1, 1481428994, NULL, '123', '5445D55F-A44D-4BA4-B068-79987E0D26E4', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (1523372033, NULL, -1249062910, 1464651777, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (1686949890, NULL, -1249062910, 1678561281, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (1707094017, 1, 1623207937, 1879060481, 'test1111', '9590507D-42B4-499D-B543-FD9DC76309D1', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (1863110658, NULL, -1249062910, 1808584705, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (1900859394, NULL, -1249062910, 1888276482, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (1930219521, NULL, -1249062910, 1858916354, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (1975574529, 1, 1874911234, 1522589697, '123', '3FD27936-C171-4C99-A702-D0D7F06DE54A', 'webrtc://localhost/live', 4);
INSERT INTO `live_language_records` VALUES (2026688514, NULL, -1249062910, 1867304961, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (2089603073, NULL, -1249062910, 2072825858, NULL, NULL, NULL, NULL);
INSERT INTO `live_language_records` VALUES (2131546113, NULL, -1249062910, 2110574594, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for live_records
-- ----------------------------
DROP TABLE IF EXISTS `live_records`;
CREATE TABLE `live_records` (
  `id` int NOT NULL,
  `live_id` int DEFAULT NULL,
  `team_id` int DEFAULT NULL,
  `target_team_id` int DEFAULT NULL,
  `game_id` int DEFAULT NULL,
  `file_path_id` int DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `commentator_id` int DEFAULT NULL,
  `language_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `remove_identity` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of live_records
-- ----------------------------
BEGIN;
INSERT INTO `live_records` VALUES (-2054299647, 2009980929, -1404186623, -1060253694, NULL, NULL, '2023-11-11 02:10:08', 1, '1', '2023-11-11 00:08:31', '2023-11-11 00:08:31', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-1953665023, NULL, -1404186623, -1060253694, -2024968191, NULL, '2024-03-06 22:47:12', NULL, NULL, '2024-03-06 22:47:24', '2024-03-06 22:47:24', NULL, 4, 4, '0');
INSERT INTO `live_records` VALUES (-1878228990, 1896644609, -1404186623, -1060253694, NULL, NULL, '2023-11-29 01:01:00', 3, '1', '2023-11-29 21:48:40', '2023-11-29 21:48:40', NULL, 3, 3, NULL);
INSERT INTO `live_records` VALUES (-1811894270, -1916751871, 1, 2, NULL, NULL, '2023-10-28 23:25:49', NULL, NULL, '2023-10-24 23:26:02', '2023-10-24 23:26:02', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-1811148799, 2102136833, -1404186623, -1404186623, NULL, NULL, '2023-11-20 23:05:04', 4, '1', '2023-11-20 23:03:16', '2023-11-20 23:03:16', NULL, 4, 4, NULL);
INSERT INTO `live_records` VALUES (-1786728446, 2051059713, 1, 2, NULL, NULL, '2023-10-25 23:02:52', NULL, NULL, '2023-10-24 23:13:29', '2023-10-24 23:13:29', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-1785864191, -1886527486, -728903678, -1060253694, NULL, NULL, '2023-11-12 23:50:02', 1, '2', '2023-11-10 23:48:26', '2023-11-10 23:48:26', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-1681076223, NULL, -1404186623, -1060253694, -1739796478, NULL, '2024-01-05 00:00:31', NULL, NULL, '2024-01-05 22:34:47', '2024-01-05 22:34:47', NULL, 4, 4, '0');
INSERT INTO `live_records` VALUES (-1664348159, NULL, -1404186623, -1060253694, -1744039935, NULL, '2023-12-19 00:00:14', NULL, NULL, '2023-12-19 21:28:28', '2023-12-19 21:28:28', NULL, 4, 4, '0');
INSERT INTO `live_records` VALUES (-1610543103, -1669263358, -1404186623, -1060253694, NULL, NULL, '2023-11-25 20:36:18', 4, '1', '2023-11-25 19:35:32', '2023-11-25 19:35:32', NULL, 4, 4, NULL);
INSERT INTO `live_records` VALUES (-1609822206, -1949560830, 1036779521, -1404186623, NULL, NULL, '2023-11-12 03:03:00', 1, '1', '2023-11-12 23:06:02', '2023-11-12 23:06:02', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-1584541694, -1999777791, -1404186623, -1404186623, NULL, NULL, '2023-11-17 00:00:01', 1, '1', '2023-11-17 20:00:34', '2023-11-17 20:00:34', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-1560256511, -1614782462, -1404186623, -1060253694, NULL, NULL, '2023-11-21 00:00:00', 4, '2', '2023-11-21 21:44:06', '2023-11-21 21:44:06', NULL, 4, 4, NULL);
INSERT INTO `live_records` VALUES (-1560211455, 1883312129, -1404186623, -1404186623, NULL, NULL, '2023-11-25 00:02:01', 4, '1', '2023-11-25 19:26:56', '2023-11-25 19:26:56', NULL, 4, 4, NULL);
INSERT INTO `live_records` VALUES (-1534205951, -1815224318, -728903678, 256757761, NULL, NULL, '2023-11-13 02:52:14', 1, '1', '2023-11-10 23:49:39', '2023-11-10 23:49:39', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-1500651519, -2029133822, -686960638, -435302399, NULL, NULL, '2023-11-10 03:04:01', 1, '2', '2023-11-10 23:45:53', '2023-11-10 23:45:53', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-1496457214, -1576148991, 982372353, 1246613506, NULL, NULL, '2023-11-14 12:53:44', 1, '1', '2023-11-10 23:51:02', '2023-11-10 23:51:02', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-1488068607, -1559371774, 256757761, 1246613506, NULL, NULL, '2023-11-15 14:55:52', 1, '2', '2023-11-10 23:53:10', '2023-11-10 23:53:10', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-1483874302, -1567760382, -1060253694, -49426430, NULL, NULL, '2023-11-12 02:50:37', 1, '1', '2023-11-10 23:48:01', '2023-11-10 23:48:01', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-1458708479, -1542594558, -728903678, 982372353, NULL, NULL, '2023-11-11 05:50:16', 1, '2', '2023-11-10 23:47:35', '2023-11-10 23:47:35', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-1312026623, -1601433598, 1, 2, NULL, NULL, '2023-11-01 23:58:35', NULL, NULL, '2023-10-24 23:58:49', '2023-10-24 23:58:49', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-1303519230, -1467097087, 59625474, 1364054018, NULL, NULL, '2023-11-14 11:54:03', 1, '2', '2023-11-10 23:51:22', '2023-11-10 23:51:22', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-1249062910, NULL, -1404186623, -1060253694, -1328754686, NULL, '2024-01-03 00:00:43', NULL, NULL, '2024-01-03 22:28:02', '2024-01-03 22:28:02', NULL, 4, 4, '0');
INSERT INTO `live_records` VALUES (-1244798974, -1324490751, 101568513, 1364054018, NULL, NULL, '2023-11-14 11:54:24', 1, '1', '2023-11-10 23:51:50', '2023-11-10 23:51:50', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-1240616958, -1332891646, 1, 2, NULL, NULL, '2023-11-03 00:32:00', 1, '1', '2023-11-03 00:32:14', '2023-11-03 00:32:14', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-1077096446, NULL, -1404186623, -1060253694, -1106456574, NULL, '2023-12-12 00:00:47', NULL, NULL, '2023-12-12 21:55:04', '2023-12-12 21:55:04', NULL, 4, 4, NULL);
INSERT INTO `live_records` VALUES (-1060245502, -1144131582, -1404186623, -1060253694, NULL, NULL, '2023-11-22 04:00:26', 4, '1', '2023-11-21 21:53:41', '2023-11-21 21:53:41', NULL, 4, 4, NULL);
INSERT INTO `live_records` VALUES (-988958718, NULL, -1060253694, -728903678, -1106399231, NULL, '2024-01-20 20:04:01', NULL, NULL, '2024-01-20 20:04:11', '2024-01-20 20:04:11', NULL, 3, 3, '0');
INSERT INTO `live_records` VALUES (-812785663, -938614782, -1404186623, -686960638, NULL, NULL, '2023-11-13 02:50:52', 1, '2', '2023-11-10 23:49:12', '2023-11-10 23:49:12', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-796127231, -1349775359, -1404186623, -1060253694, NULL, NULL, '2023-11-10 23:26:56', 1, '1', '2023-11-10 23:27:16', '2023-11-10 23:27:16', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-767487998, -872345598, -1404186623, -1060253694, NULL, NULL, '2023-11-25 00:00:00', 4, '1', '2023-11-25 19:32:10', '2023-11-25 19:32:10', NULL, 4, 4, NULL);
INSERT INTO `live_records` VALUES (-683646974, -1195352063, -1404186623, -1060253694, NULL, NULL, '2023-11-21 00:00:16', 4, '1', '2023-11-21 21:41:35', '2023-11-21 21:41:35', NULL, 4, 4, NULL);
INSERT INTO `live_records` VALUES (-649207806, -716316671, 1246613506, -1060253694, NULL, NULL, '2023-11-15 13:55:33', 1, '2', '2023-11-10 23:53:52', '2023-11-10 23:53:52', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-632430590, -791814143, -1060253694, -49426430, NULL, NULL, '2023-11-13 06:50:28', 1, '1', '2023-11-10 23:48:50', '2023-11-10 23:48:50', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-611487742, -787648510, 1, 2, NULL, NULL, '2023-11-05 00:06:09', 1, '1', '2023-11-04 00:06:27', '2023-11-04 00:06:27', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-565432319, NULL, -1404186623, -1060253694, -619958270, NULL, '2023-12-30 00:00:38', NULL, NULL, '2023-12-30 00:59:51', '2023-12-30 00:59:51', NULL, 4, 4, '0');
INSERT INTO `live_records` VALUES (-506646526, NULL, -1404186623, -1060253694, -540200958, NULL, '2023-12-11 00:00:01', NULL, NULL, '2023-12-11 22:08:36', '2023-12-11 22:08:36', NULL, 4, 4, NULL);
INSERT INTO `live_records` VALUES (-347217919, -384966655, 101568513, -577908734, NULL, NULL, '2023-11-16 16:55:54', 1, '1', '2023-11-10 23:54:10', '2023-11-10 23:54:10', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (-225685503, NULL, -1404186623, -1060253694, -364097534, NULL, '2024-03-14 00:00:01', NULL, NULL, '2024-03-14 21:40:35', '2024-03-14 21:40:35', NULL, 4, 4, '0');
INSERT INTO `live_records` VALUES (-54501375, -129998846, -1404186623, -1060253694, NULL, NULL, '2023-11-21 18:00:00', 4, '1', '2023-11-21 21:42:45', '2023-11-21 21:42:45', NULL, 4, 4, NULL);
INSERT INTO `live_records` VALUES (63823873, -53616639, -686960638, 1246613506, NULL, NULL, '2023-11-13 10:52:40', 1, '1', '2023-11-10 23:50:04', '2023-11-10 23:50:04', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (101576706, -296882175, -1404186623, -1060253694, NULL, NULL, '2023-11-22 00:00:52', 4, '1', '2023-11-21 21:53:10', '2023-11-21 21:53:10', NULL, 4, 4, NULL);
INSERT INTO `live_records` VALUES (177065985, -1018310655, -1404186623, -1404186623, NULL, NULL, '2023-11-07 03:03:00', 1, '1', '2023-11-07 23:37:13', '2023-11-07 23:37:13', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (189652993, 51240962, -674377726, 1246613506, NULL, NULL, '2023-11-10 23:48:18', 1, '2', '2023-11-10 23:46:46', '2023-11-10 23:46:46', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (385900545, 251682817, -1404186623, -1060253694, NULL, NULL, '2023-11-21 00:00:01', 4, '1', '2023-11-21 21:43:41', '2023-11-21 21:43:41', NULL, 4, 4, NULL);
INSERT INTO `live_records` VALUES (432893953, -284332030, 1, 2, NULL, NULL, '2023-11-03 23:17:04', 1, '1', '2023-11-03 23:17:19', '2023-11-03 23:17:19', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (470601730, 202166274, -1404186623, -1404186623, NULL, NULL, '2023-11-18 12:51:34', 1, '1', '2023-11-15 08:47:45', '2023-11-15 08:47:45', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (504225793, 449699842, -686960638, 256757761, NULL, NULL, '2023-11-15 14:54:12', 1, '1', '2023-11-10 23:52:27', '2023-11-10 23:52:27', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (546140162, 223178753, 1, 2, NULL, NULL, '2023-11-04 00:02:18', 1, '1', '2023-11-04 00:02:35', '2023-11-04 00:02:35', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (583032834, 507535361, -1404186623, -728903678, NULL, NULL, '2023-11-21 01:02:01', 4, '1', '2023-11-21 21:44:33', '2023-11-21 21:44:33', NULL, 4, 4, NULL);
INSERT INTO `live_records` VALUES (588115970, 533590017, -1404186623, -1060253694, NULL, NULL, '2023-11-22 09:02:01', 4, '1', '2023-11-21 21:54:03', '2023-11-21 21:54:03', NULL, 4, 4, NULL);
INSERT INTO `live_records` VALUES (609013761, 369938433, -1060253694, -1060253694, NULL, NULL, '2023-11-15 03:00:01', 1, '1', '2023-11-15 22:41:21', '2023-11-15 22:41:21', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (659345410, 181194754, -1060253694, -1404186623, NULL, NULL, '2023-11-15 04:26:50', 1, '2', '2023-11-15 01:23:56', '2023-11-15 01:23:56', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (667803650, 458088450, -728903678, -49426430, NULL, NULL, '2023-11-10 07:04:01', 1, '1', '2023-11-10 23:46:17', '2023-11-10 23:46:17', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (713928705, 642625538, 1, 2, NULL, NULL, '2023-11-04 00:37:51', 1, '1', '2023-11-03 00:38:06', '2023-11-03 00:38:06', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (813719554, 692084738, -1404186623, -1060253694, NULL, NULL, '2023-11-21 13:00:01', 4, '1', '2023-11-21 21:42:30', '2023-11-21 21:42:30', NULL, 4, 4, NULL);
INSERT INTO `live_records` VALUES (852328450, 730693633, -728903678, -674377726, NULL, NULL, '2023-11-14 23:07:29', 4, '1', '2023-11-14 21:04:52', '2023-11-14 21:04:52', NULL, 4, 4, NULL);
INSERT INTO `live_records` VALUES (1015078913, NULL, -1404186623, -1060253694, 931192833, NULL, '2024-03-17 00:00:01', NULL, NULL, '2024-03-17 22:18:03', '2024-03-17 22:18:03', NULL, 4, 4, '0');
INSERT INTO `live_records` VALUES (1150078978, NULL, -1404186623, -1060253694, 1129107457, NULL, '2024-01-09 00:00:10', NULL, NULL, '2024-01-09 22:37:22', '2024-01-09 22:37:22', NULL, 3, 3, '0');
INSERT INTO `live_records` VALUES (1166041090, 1094737922, -1404186623, -1060253694, NULL, NULL, '2023-11-21 08:00:01', 4, '1', '2023-11-21 21:42:11', '2023-11-21 21:42:11', NULL, 4, 4, NULL);
INSERT INTO `live_records` VALUES (1204674562, 1154342913, 59625474, 256757761, NULL, NULL, '2023-11-15 13:56:11', 1, '1', '2023-11-10 23:53:31', '2023-11-10 23:53:31', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (1301131265, 869117954, 2, 1, NULL, NULL, '2023-11-03 00:29:38', 1, '2', '2023-11-03 00:29:47', '2023-11-03 00:29:47', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (1322045442, 1233965058, -1404186623, -1060253694, NULL, NULL, '2023-11-30 23:56:18', 1, '1', '2023-11-15 22:54:32', '2023-11-15 22:54:32', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (1338048513, NULL, -1404186623, -1060253694, 1266745346, NULL, '2024-01-02 00:00:05', NULL, NULL, '2024-01-02 22:03:21', '2024-01-02 22:03:21', NULL, 4, 4, '0');
INSERT INTO `live_records` VALUES (1388339202, 1283481602, -1060253694, -1404186623, NULL, NULL, '2023-11-21 23:00:01', 4, '1', '2023-11-21 21:43:07', '2023-11-21 21:43:07', NULL, 4, 4, NULL);
INSERT INTO `live_records` VALUES (1397612546, 1334697986, -1060253694, 1246613506, NULL, NULL, '2023-11-11 23:50:55', 1, '1', '2023-11-10 23:47:14', '2023-11-10 23:47:14', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (1481428994, NULL, -1404186623, -1060253694, 1456263169, NULL, '2024-01-04 00:00:46', NULL, NULL, '2024-01-04 22:35:00', '2024-01-04 22:35:00', NULL, 4, 4, '0');
INSERT INTO `live_records` VALUES (1489862657, 328040450, -1404186623, -1060253694, NULL, NULL, '2023-11-13 23:50:24', 1, '1', '2023-11-13 23:48:43', '2023-11-13 23:48:43', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (1623207937, NULL, -1404186623, -1060253694, 1438658561, NULL, '2024-03-13 22:36:27', NULL, NULL, '2024-03-12 22:36:41', '2024-03-12 22:36:41', NULL, 4, 4, '0');
INSERT INTO `live_records` VALUES (1736486913, 1606463489, 1, 2, NULL, NULL, '2023-10-29 23:27:11', NULL, NULL, '2023-10-24 23:27:21', '2023-10-24 23:27:21', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (1761652738, 1652600833, 1, 2, NULL, NULL, '2023-10-30 23:27:36', NULL, NULL, '2023-10-24 23:27:42', '2023-10-24 23:27:42', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (1766711297, 1703796737, -49426430, -435302399, NULL, NULL, '2023-11-14 14:53:20', 1, '1', '2023-11-10 23:50:42', '2023-11-10 23:50:42', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (1774997505, 1347178498, 1, 2, NULL, NULL, '2023-10-31 22:49:06', NULL, NULL, '2023-10-24 23:02:12', '2023-10-24 23:02:12', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (1874911234, NULL, -1404186623, -1060253694, 1782636545, NULL, '2024-03-16 23:22:33', NULL, NULL, '2024-03-16 23:22:44', '2024-03-16 23:22:44', NULL, 4, 4, '0');
INSERT INTO `live_records` VALUES (1955336194, 1716260865, 1, 2, NULL, NULL, '2023-11-03 01:41:21', NULL, NULL, '2023-10-25 01:42:21', '2023-10-25 01:42:21', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (1967173634, 1816178690, 1, 2, NULL, NULL, '2023-10-24 23:23:27', NULL, NULL, '2023-10-24 23:23:33', '2023-10-24 23:23:33', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (2051039234, 1933598721, -1060253694, -1404186623, NULL, NULL, '2023-11-21 04:00:01', 4, '1', '2023-11-21 21:41:54', '2023-11-21 21:41:54', NULL, 4, 4, NULL);
INSERT INTO `live_records` VALUES (2098061313, 2030952449, 982372353, 59625474, NULL, NULL, '2023-11-15 23:54:29', 1, '2', '2023-11-10 23:52:50', '2023-11-10 23:52:50', NULL, 1, 1, NULL);
INSERT INTO `live_records` VALUES (2127425537, NULL, -1404186623, -1060253694, 2085482498, NULL, '2023-12-14 00:00:01', NULL, NULL, '2023-12-14 22:38:17', '2023-12-14 22:38:17', NULL, 4, 4, '0');
COMMIT;

-- ----------------------------
-- Table structure for live_register
-- ----------------------------
DROP TABLE IF EXISTS `live_register`;
CREATE TABLE `live_register` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  `rtmp_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `live_start_key` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `remove_identity` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of live_register
-- ----------------------------
BEGIN;
INSERT INTO `live_register` VALUES (-2029133822, 'Nov 10 second game ', 1, 'webrtc://localhost/live', 'D0E60FCB-3576-44CF-BE3A-634391110074', '2023-11-10 03:04:01', '2023-11-10 23:45:52', '2023-11-10 23:45:52', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (-1999777791, 'test1117', 1, 'webrtc://localhost/live', 'CA9CC511-0D3F-4D24-B06B-0DE0C32DD121', '2023-11-17 00:00:01', '2023-11-17 20:00:34', '2023-11-17 20:00:34', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (-1949560830, 'boston game', 1, 'webrtc://localhost/live', '26E676B0-53ED-4342-9E3B-DF357E0AAECF', '2023-11-12 03:03:00', '2023-11-12 23:06:00', '2023-11-12 23:06:00', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (-1916751871, '123', 1, 'rtmp://localhost:1935/live', '1ced2cff-cbcd-4387-842b-ac82e15438aa', '2023-10-28 23:25:49', '2023-10-24 23:26:02', '2023-10-24 23:26:02', NULL, 1, 1, NULL);
INSERT INTO `live_register` VALUES (-1886527486, 'Nov 12 second game', 1, 'webrtc://localhost/live', 'F383C65F-3EDD-40DB-813D-FCB62BBBB2E7', '2023-11-12 23:50:02', '2023-11-10 23:48:26', '2023-11-10 23:48:26', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (-1815224318, 'Nov 13 third game', 1, 'webrtc://localhost/live', '55559FDD-BF58-418F-84AF-E6F748EE43EA', '2023-11-13 02:52:14', '2023-11-10 23:49:39', '2023-11-10 23:49:39', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (-1669263358, 'test111', 4, 'webrtc://localhost/live', '1793DBEB-8CDE-49A7-8E47-BA69D461AB2A', '2023-11-25 20:36:18', '2023-11-25 19:35:31', '2023-11-25 19:35:31', NULL, 4, 4, '2');
INSERT INTO `live_register` VALUES (-1601433598, '123', 1, 'rtmp://localhost:1935/live', 'A1D572A7-5B26-4755-BBEF-979BC4E859BB', '2023-11-01 23:58:35', '2023-10-24 23:58:49', '2023-10-24 23:58:49', NULL, 1, 1, NULL);
INSERT INTO `live_register` VALUES (-1576148991, 'Nov 14 second game', 1, 'webrtc://localhost/live', '016BCAD2-91DF-4BE3-B523-2C535C1FA92D', '2023-11-14 12:53:44', '2023-11-10 23:51:02', '2023-11-10 23:51:02', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (-1567760382, 'Nov 12 first game ', 1, 'webrtc://localhost/live', 'B8EFB605-ED8D-47B2-8C29-F49BA192DA1E', '2023-11-12 02:50:37', '2023-11-10 23:48:01', '2023-11-10 23:48:01', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (-1559371774, 'Nov 13 third game', 1, 'webrtc://localhost/live', '8E4B8DC9-740F-4B6B-B5C4-AB0B3AE56911', '2023-11-15 14:55:52', '2023-11-10 23:53:10', '2023-11-10 23:53:10', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (-1542594558, 'Nov 11 second game', 1, 'webrtc://localhost/live', '13F23815-37A5-4D90-8ED6-6900DCFE6339', '2023-11-11 05:50:16', '2023-11-10 23:47:35', '2023-11-10 23:47:35', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (-1467097087, 'Nov 14 third game', 1, 'webrtc://localhost/live', '2D650BBD-40D5-4409-B786-C04BFCA8338C', '2023-11-14 11:54:03', '2023-11-10 23:51:22', '2023-11-10 23:51:22', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (-1349775359, 'nov 10 game', 1, 'webrtc://localhost/live', '4F90A86E-767B-4BB8-9C1F-A372165ED142', '2023-11-10 23:26:56', '2023-11-10 23:27:15', '2023-11-10 23:27:15', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (-1332891646, 'GAME', 1, 'rtmp://localhost:1935/live', '68BB4F58-953E-496E-8B03-28FC6D8AD8F7', '2023-11-03 00:32:00', '2023-11-03 00:32:14', '2023-11-03 00:32:14', NULL, 1, 1, NULL);
INSERT INTO `live_register` VALUES (-1324490751, 'Nov 14 fifth game', 1, 'webrtc://localhost/live', '2CC6F97B-1E6B-4E48-B6AF-34529DB38707', '2023-11-14 11:54:24', '2023-11-10 23:51:50', '2023-11-10 23:51:50', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (-1195352063, '123', 4, 'webrtc://localhost/live', 'DA51A490-12D9-4014-BD5B-496076DDB0BE', '2023-11-21 00:00:16', '2023-11-21 21:41:35', '2023-11-21 21:41:35', NULL, 4, 4, '2');
INSERT INTO `live_register` VALUES (-1144131582, '123', 4, 'webrtc://localhost/live', '25F02CB8-7FBE-4863-8E82-4C10D2F7597B', '2023-11-22 04:00:26', '2023-11-21 21:53:41', '2023-11-21 21:53:41', NULL, 4, 4, '2');
INSERT INTO `live_register` VALUES (-1018310655, '123', 1, 'webrtc://localhost/live', 'B86CE935-AB4A-4C08-89F8-7CB9B918FC5B', '2023-11-07 03:03:00', '2023-11-07 23:37:12', '2023-11-07 23:37:12', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (-938614782, 'Nov 13 second game', 1, 'webrtc://localhost/live', 'B95227A5-5AD6-483F-92C2-47F8E4B66602', '2023-11-13 02:50:52', '2023-11-10 23:49:12', '2023-11-10 23:49:12', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (-872345598, 'test', 4, 'webrtc://localhost/live', '2B6BE0F1-67C3-4531-A3F3-9D4079E179A0', '2023-11-25 00:00:00', '2023-11-25 19:32:10', '2023-11-25 19:32:10', NULL, 4, 4, '2');
INSERT INTO `live_register` VALUES (-791814143, 'Nov 13 first game', 1, 'webrtc://localhost/live', '94E99E35-9205-491A-80A4-8378E336402D', '2023-11-13 06:50:28', '2023-11-10 23:48:50', '2023-11-10 23:48:50', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (-787648510, 'nov 05 a team vs b team', 1, 'webrtc://localhost/live', 'B3E040A2-9AD7-415A-8848-229164D64F07', '2023-11-05 00:06:09', '2023-11-04 00:06:27', '2023-11-04 00:06:27', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (-716316671, 'Nov 15 fifth game', 1, 'webrtc://localhost/live', 'DAFFD805-53C8-47DC-94AE-258E57C0E9B0', '2023-11-15 13:55:33', '2023-11-10 23:53:52', '2023-11-10 23:53:52', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (-384966655, 'Nov 16 first game', 1, 'webrtc://localhost/live', 'A738C2EE-117D-4C70-8D16-FDE85B26FFDC', '2023-11-16 16:55:54', '2023-11-10 23:54:09', '2023-11-10 23:54:09', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (-296882175, '123', 4, 'webrtc://localhost/live', '9F5B2579-3D38-49EF-92F1-EB6FB51FF9AC', '2023-11-22 00:00:52', '2023-11-21 21:53:10', '2023-11-21 21:53:10', NULL, 4, 4, '2');
INSERT INTO `live_register` VALUES (-284332030, 'new commentary', 1, 'webrtc://localhost/live', 'EA6C135B-11E3-4394-A0EE-73C4F0D0B0C8', '2023-11-03 23:17:04', '2023-11-03 23:17:18', '2023-11-03 23:17:18', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (-129998846, '123', 4, 'webrtc://localhost/live', '0B7417C9-95DF-48DE-83B1-4E99F95E178D', '2023-11-21 18:00:00', '2023-11-21 21:42:45', '2023-11-21 21:42:45', NULL, 4, 4, '2');
INSERT INTO `live_register` VALUES (-53616639, 'Nov 13 fourth game', 1, 'webrtc://localhost/live', 'D8B4B163-F101-490A-9A62-C13991DA1F26', '2023-11-13 10:52:40', '2023-11-10 23:50:04', '2023-11-10 23:50:04', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (51240962, 'Nov 10 fourth game', 1, 'webrtc://localhost/live', '74E93618-C674-45A7-B8F2-98F0339D35A7', '2023-11-10 23:48:18', '2023-11-10 23:46:46', '2023-11-10 23:46:46', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (181194754, 'Final', 1, 'webrtc://localhost/live', '91D43414-7EE3-417E-8023-B167496833CC', '2023-11-15 04:26:50', '2023-11-15 01:23:56', '2023-11-15 01:23:56', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (202166274, '123', 1, 'webrtc://localhost/live', '92E231FA-EB0F-4762-993E-2319589097F1', '2023-11-18 12:51:34', '2023-11-15 08:47:45', '2023-11-15 08:47:45', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (223178753, 'nov 04 a vs b ', 1, 'webrtc://localhost/live', '825DB172-02AF-4058-B826-4D3EBFE638BC', '2023-11-04 00:02:18', '2023-11-04 00:02:35', '2023-11-04 00:02:35', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (251682817, '123', 4, 'webrtc://localhost/live', 'BC3785E4-8F54-471E-85A7-498ABC145A02', '2023-11-21 00:00:01', '2023-11-21 21:43:41', '2023-11-21 21:43:41', NULL, 4, 4, '2');
INSERT INTO `live_register` VALUES (328040450, 'Nov 13 game', 1, 'webrtc://localhost/live', '56B420AC-FD42-47A4-93B6-5D2EF86A614B', '2023-11-13 23:50:24', '2023-11-13 23:48:43', '2023-11-13 23:48:43', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (369938433, '123', 1, 'webrtc://localhost/live', '02EA01E3-A3E3-44BA-BEC0-99400FB72D7E', '2023-11-15 03:00:01', '2023-11-15 22:41:21', '2023-11-15 22:41:21', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (449699842, 'Nov 15 first game ', 1, 'webrtc://localhost/live', 'DB48D50A-E5DC-4D59-8462-9A9B7BBD966B', '2023-11-15 14:54:12', '2023-11-10 23:52:27', '2023-11-10 23:52:27', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (458088450, 'Nov 10 third game', 1, 'webrtc://localhost/live', '623AD19B-10A5-474D-9241-0157AAA80203', '2023-11-10 07:04:01', '2023-11-10 23:46:17', '2023-11-10 23:46:17', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (507535361, '123', 4, 'webrtc://localhost/live', '6CA79A28-73A0-43AA-9E38-4F37A6FE9B16', '2023-11-21 01:02:01', '2023-11-21 21:44:33', '2023-11-21 21:44:33', NULL, 4, 4, '2');
INSERT INTO `live_register` VALUES (533590017, '123', 4, 'webrtc://localhost/live', '11C7D0AB-FD9C-4879-A60F-C3C444C9B35C', '2023-11-22 09:02:01', '2023-11-21 21:54:03', '2023-11-21 21:54:03', NULL, 4, 4, '2');
INSERT INTO `live_register` VALUES (642625538, 'iiii', 1, 'rtmp://localhost:1935/live', 'FB588F91-4246-43C1-93BF-BE02DE63F466', '2023-11-04 00:37:51', '2023-11-03 00:38:06', '2023-11-03 00:38:06', NULL, 1, 1, NULL);
INSERT INTO `live_register` VALUES (692084738, '123', 4, 'webrtc://localhost/live', '44EDB2C0-A6E7-49BE-B342-4579D43A4242', '2023-11-21 13:00:01', '2023-11-21 21:42:30', '2023-11-21 21:42:30', NULL, 4, 4, '2');
INSERT INTO `live_register` VALUES (730693633, 'game-11-14', 4, 'webrtc://localhost/live', '34502C7F-5910-43C8-993A-9B5C30C852D3', '2023-11-14 23:07:29', '2023-11-14 21:04:52', '2023-11-14 21:04:52', NULL, 4, 4, '2');
INSERT INTO `live_register` VALUES (869117954, '123', 1, 'rtmp://localhost:1935/live', '4EB181E1-259E-4867-BB38-2F270BD75603', '2023-11-03 00:29:38', '2023-11-03 00:29:46', '2023-11-03 00:29:46', NULL, 1, 1, NULL);
INSERT INTO `live_register` VALUES (1094737922, '123', 4, 'webrtc://localhost/live', '12360358-9742-4DAB-877D-D844B2C94935', '2023-11-21 08:00:01', '2023-11-21 21:42:11', '2023-11-21 21:42:11', NULL, 4, 4, '2');
INSERT INTO `live_register` VALUES (1154342913, 'Nov 15 fourth game', 1, 'webrtc://localhost/live', 'A8697550-FCB2-4253-BF87-2F79AF5C2DF4', '2023-11-15 13:56:11', '2023-11-10 23:53:31', '2023-11-10 23:53:31', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (1233965058, '11-30', 1, 'webrtc://localhost/live', '4249D38B-D4D9-44B6-B6B8-B69AE8BB5568', '2023-11-30 23:56:18', '2023-11-15 22:54:32', '2023-11-15 22:54:32', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (1283481602, '123', 4, 'webrtc://localhost/live', '72EDBBD1-C715-4958-A2FE-424F3066F5FB', '2023-11-21 23:00:01', '2023-11-21 21:43:07', '2023-11-21 21:43:07', NULL, 4, 4, '2');
INSERT INTO `live_register` VALUES (1334697986, 'Nov 11 first game', 1, 'webrtc://localhost/live', '80575555-2146-40D8-B466-D4628FD86201', '2023-11-11 23:50:55', '2023-11-10 23:47:14', '2023-11-10 23:47:14', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (1347178498, '123', 1, 'rtmp://localhost:1935/live', 'b846a927-4695-4774-ad8b-89aea089e92d', '2023-10-31 22:49:06', '2023-10-24 23:02:11', '2023-10-24 23:02:11', NULL, 1, 1, NULL);
INSERT INTO `live_register` VALUES (1606463489, '123', 1, 'rtmp://localhost:1935/live', '3324794a-dd3f-4404-9ab4-ac20f4f6fca3', '2023-10-29 23:27:11', '2023-10-24 23:27:21', '2023-10-24 23:27:21', NULL, 1, 1, NULL);
INSERT INTO `live_register` VALUES (1652600833, '123', 1, 'rtmp://localhost:1935/live', '1a76c5ac-9783-4eed-a78f-104e786de02d', '2023-10-30 23:27:36', '2023-10-24 23:27:42', '2023-10-24 23:27:42', NULL, 1, 1, NULL);
INSERT INTO `live_register` VALUES (1703796737, 'Nov 14 first game', 1, 'webrtc://localhost/live', '077CCCB7-67F6-4632-8751-F1D95EC81300', '2023-11-14 14:53:20', '2023-11-10 23:50:42', '2023-11-10 23:50:42', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (1716260865, '123', 1, 'rtmp://localhost:1935/live', 'C57D4AF4-85EB-4855-B3A2-AA5A229341E1', '2023-11-03 01:41:21', '2023-10-25 01:42:21', '2023-10-25 01:42:21', NULL, 1, 1, NULL);
INSERT INTO `live_register` VALUES (1816178690, '123', 1, 'rtmp://localhost:1935/live', '50ccc006-e70d-41de-b89f-b802f8f392b0', '2023-10-24 23:23:27', '2023-10-24 23:23:33', '2023-10-24 23:23:33', NULL, 1, 1, NULL);
INSERT INTO `live_register` VALUES (1883312129, '123', 4, 'webrtc://localhost/live', '245960F7-DE90-461F-94AC-E3B48FFF9CB9', '2023-11-25 00:02:01', '2023-11-25 19:26:56', '2023-11-25 19:26:56', NULL, 4, 4, '2');
INSERT INTO `live_register` VALUES (1896644609, 'test', 3, 'webrtc://localhost/live', '4AD06C19-8BA1-4672-ABE2-565782482FFE', '2023-11-29 01:01:00', '2023-11-29 21:48:40', '2023-11-29 21:48:40', NULL, 3, 3, '2');
INSERT INTO `live_register` VALUES (1933598721, '123', 4, 'webrtc://localhost/live', 'B4FADD7C-17CB-4F96-A598-E772EDD05EAC', '2023-11-21 04:00:01', '2023-11-21 21:41:54', '2023-11-21 21:41:54', NULL, 4, 4, '2');
INSERT INTO `live_register` VALUES (2009980929, 'Nov 11 third game', 1, 'webrtc://localhost/live', 'B9085C17-84A0-4ECD-9271-CC6C1B9F7AB5', '2023-11-11 02:10:08', '2023-11-11 00:08:31', '2023-11-11 00:08:31', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (2030952449, 'Nov 15 second game', 1, 'webrtc://localhost/live', 'B2E300AF-06B9-4777-8041-A1BFD915A252', '2023-11-15 23:54:29', '2023-11-10 23:52:50', '2023-11-10 23:52:50', NULL, 1, 1, '2');
INSERT INTO `live_register` VALUES (2051059713, '123', 1, 'rtmp://localhost:1935/live', '20ea52f8-e0a9-4200-bb43-56fa15e6e2fe', '2023-10-25 23:02:52', '2023-10-24 23:13:28', '2023-10-24 23:13:28', NULL, 1, 1, NULL);
COMMIT;

-- ----------------------------
-- Table structure for livestream
-- ----------------------------
DROP TABLE IF EXISTS `livestream`;
CREATE TABLE `livestream` (
  `id` int NOT NULL,
  `live_stream_acct` varchar(255) COLLATE utf8_bin NOT NULL,
  `live_stream_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `streamer_id` int NOT NULL,
  `live_stream_start_date` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `remove_identity` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_user` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_user` varchar(0) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of livestream
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for livestream_log
-- ----------------------------
DROP TABLE IF EXISTS `livestream_log`;
CREATE TABLE `livestream_log` (
  `id` int NOT NULL,
  `stream_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `live_stream_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `live_stream_start_date` datetime DEFAULT NULL,
  `live_stream_stop_date` datetime DEFAULT NULL,
  `viewer_count` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of livestream_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `role_value` varchar(255) COLLATE utf8_bin NOT NULL,
  `role_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `authority` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remove_identity` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES (1, 'ROLE_viewer', 'User', '', '2023-10-02 22:28:06', '2023-10-02 22:28:09', '0', NULL, NULL);
INSERT INTO `role` VALUES (2, 'ROLE_admin', 'Admin', '', '2023-10-02 22:29:12', '2023-10-02 22:29:14', '0', NULL, NULL);
INSERT INTO `role` VALUES (4, 'ROLE_team_user', 'Team User', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `role` VALUES (5, 'ROLE_tv_admin', 'TV Admin', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `role` VALUES (6, 'ROLE_commentary', 'Commentator', NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `logo_id` int DEFAULT NULL,
  `intro` varchar(10000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `league` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_user` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_user` datetime DEFAULT NULL,
  `remove_identity` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1443745794 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of team
-- ----------------------------
BEGIN;
INSERT INTO `team` VALUES (-1404186623, 'Ebusua Dwarfs FC', NULL, NULL, 'MTN FA Cup', 'Ghana', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `team` VALUES (-1060253694, 'Nzema Kotoko FC', NULL, NULL, 'MTN FA Cup', 'Ghana', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `team` VALUES (-728903678, 'New Edubiase FC', NULL, NULL, 'MTN FA Cup', 'Ghana', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `team` VALUES (-686960638, 'Soccer Intellectuals FC', NULL, NULL, 'MTN FA Cup', 'Ghana', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `team` VALUES (-674377726, 'Basake Holy Stars FC', NULL, NULL, 'MTN FA Cup', 'Ghana', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `team` VALUES (-577908734, 'Asekem FC', NULL, NULL, 'MTN FA Cup', 'Ghana', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `team` VALUES (-435302399, 'King Faisal FC', NULL, NULL, 'MTN FA Cup', 'Ghana', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `team` VALUES (-49426430, 'Sefwi All Stars FC', NULL, NULL, ' MTN FA Cup', 'Ghana', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `team` VALUES (59625474, 'Venomous Vipers Fc', NULL, NULL, 'MTN FA Cup', 'Ghana', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `team` VALUES (101568513, 'Rospak Sporting Club', NULL, NULL, 'MTN FA Cup', 'Ghana', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `team` VALUES (256757761, 'Young RedBull FC', NULL, NULL, 'MTN FA Cup', 'Ghana', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `team` VALUES (864055297, 'Test', 759197698, NULL, 'Test', 'Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `team` VALUES (982372353, 'Future Stars FC', NULL, NULL, 'MTN FA Cup', 'Ghana', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `team` VALUES (1036779521, 'Boston1', 533463041, NULL, 'Boston', 'Boston', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `team` VALUES (1246613506, 'Elmina Sharks FC', NULL, NULL, ' MTN FA Cup', 'Ghana', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `team` VALUES (1364054018, 'Skyy FC', NULL, NULL, 'MTN FA Cup', 'Ghana', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `team` VALUES (1443745793, 'Pac Academy FC', NULL, NULL, 'MTN FA Cup', 'Ghana', 1, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `team_id` int DEFAULT NULL,
  `identity` varchar(3) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `remove_identity` varchar(3) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `update_user` int DEFAULT NULL,
  `create_user` int DEFAULT NULL,
  `status` varchar(3) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0',
  `profile_picture` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'admin', '$2a$10$F6CqaR2qED6/AvyFyK8JDesFZfTsb6I2meIQCg15F/eI8qgPC6o3u', 'guanyiw5@gmail.com', '123', 1, '', '2023-10-02 22:25:00', '2023-10-02 22:25:03', '0', NULL, NULL, '0', -292691967);
INSERT INTO `user` VALUES (2, 'tom', '456', '456@gmail.com', '456', NULL, NULL, '2023-10-02 22:30:29', '2023-10-02 22:30:31', '0', NULL, NULL, '0', NULL);
INSERT INTO `user` VALUES (3, 'admin1', '$2a$10$orAGhartMqmRIhY5E6EiQ.WVNNwegpAaTU8WcKECK.Ua953G1zyw.', '1234@gmail.com', '1234', NULL, NULL, '2023-11-12 22:11:40', '2023-11-12 22:11:40', NULL, NULL, NULL, '0', -1060343807);
INSERT INTO `user` VALUES (4, 'admin2', '$2a$10$syDAM2aPjQEjvUXnZ8bF6uIAHMnqtqt7DmoK412Ajhg2GHlVxPzSK', '12345@gmail.com', '12345', NULL, NULL, '2023-11-14 21:04:17', '2023-11-14 21:04:17', NULL, NULL, NULL, '0', NULL);
INSERT INTO `user` VALUES (5, '12', '$2a$10$wCmK7d5ZVNREBJe4rd1dbeYXOPWyhGE8tS.qbeMTV8nqYzfDtLxRG', 'guanyiw@bu.edu', '12', NULL, NULL, '2023-11-25 19:55:28', '2023-11-25 19:55:28', NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for user_and_role
-- ----------------------------
DROP TABLE IF EXISTS `user_and_role`;
CREATE TABLE `user_and_role` (
  `id` int NOT NULL,
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_and_role
-- ----------------------------
BEGIN;
INSERT INTO `user_and_role` VALUES (-1534275582, 2, 1);
INSERT INTO `user_and_role` VALUES (-1483943935, 5, 1);
INSERT INTO `user_and_role` VALUES (-1412640767, 4, 1);
INSERT INTO `user_and_role` VALUES (-830402559, 2, 5);
INSERT INTO `user_and_role` VALUES (2, 2, 2);
INSERT INTO `user_and_role` VALUES (3, 1, 2);
INSERT INTO `user_and_role` VALUES (5, 2, 3);
INSERT INTO `user_and_role` VALUES (655126529, 1, 3);
INSERT INTO `user_and_role` VALUES (1049460738, 6, 4);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
