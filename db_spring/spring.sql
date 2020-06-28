/*
 Navicat Premium Data Transfer

 Source Server         : clt
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : 192.168.1.70:3306
 Source Schema         : spring

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 29/11/2019 09:56:29
*/

drop database if exists `spring`;
create database `spring` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

use `spring`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for WP_ACTIVE_TABLE
-- ----------------------------
DROP TABLE IF EXISTS `WP_ACTIVE_TABLE`;
CREATE TABLE `WP_ACTIVE_TABLE`  (
  `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `active_timestamp` int(11) UNSIGNED NULL DEFAULT NULL,
  `flow_rate` int(20) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `online_INDEX`(`post_id`, `active_timestamp`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_bright
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_bright`;
CREATE TABLE `wp_clt_bright`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `screenValue` float NOT NULL,
  `masterValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4262 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_camera
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_camera`;
CREATE TABLE `wp_clt_camera`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `file` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `thumbnail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `camera_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 651 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_electromagnetic
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_electromagnetic`;
CREATE TABLE `wp_clt_electromagnetic`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1366 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps0
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps0`;
CREATE TABLE `wp_clt_gps0`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps1
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps1`;
CREATE TABLE `wp_clt_gps1`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps10
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps10`;
CREATE TABLE `wp_clt_gps10`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps100
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps100`;
CREATE TABLE `wp_clt_gps100`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps101
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps101`;
CREATE TABLE `wp_clt_gps101`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps102
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps102`;
CREATE TABLE `wp_clt_gps102`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps103
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps103`;
CREATE TABLE `wp_clt_gps103`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps104
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps104`;
CREATE TABLE `wp_clt_gps104`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps105
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps105`;
CREATE TABLE `wp_clt_gps105`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps106
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps106`;
CREATE TABLE `wp_clt_gps106`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps107
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps107`;
CREATE TABLE `wp_clt_gps107`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps108
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps108`;
CREATE TABLE `wp_clt_gps108`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps109
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps109`;
CREATE TABLE `wp_clt_gps109`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps11
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps11`;
CREATE TABLE `wp_clt_gps11`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps110
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps110`;
CREATE TABLE `wp_clt_gps110`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps111
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps111`;
CREATE TABLE `wp_clt_gps111`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps112
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps112`;
CREATE TABLE `wp_clt_gps112`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps113
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps113`;
CREATE TABLE `wp_clt_gps113`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps114
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps114`;
CREATE TABLE `wp_clt_gps114`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps115
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps115`;
CREATE TABLE `wp_clt_gps115`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps116
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps116`;
CREATE TABLE `wp_clt_gps116`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps117
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps117`;
CREATE TABLE `wp_clt_gps117`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps118
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps118`;
CREATE TABLE `wp_clt_gps118`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps119
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps119`;
CREATE TABLE `wp_clt_gps119`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps12
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps12`;
CREATE TABLE `wp_clt_gps12`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps120
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps120`;
CREATE TABLE `wp_clt_gps120`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps121
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps121`;
CREATE TABLE `wp_clt_gps121`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps122
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps122`;
CREATE TABLE `wp_clt_gps122`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps123
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps123`;
CREATE TABLE `wp_clt_gps123`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps124
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps124`;
CREATE TABLE `wp_clt_gps124`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps125
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps125`;
CREATE TABLE `wp_clt_gps125`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps126
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps126`;
CREATE TABLE `wp_clt_gps126`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps127
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps127`;
CREATE TABLE `wp_clt_gps127`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps13
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps13`;
CREATE TABLE `wp_clt_gps13`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps14
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps14`;
CREATE TABLE `wp_clt_gps14`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps15
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps15`;
CREATE TABLE `wp_clt_gps15`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps16
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps16`;
CREATE TABLE `wp_clt_gps16`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps17
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps17`;
CREATE TABLE `wp_clt_gps17`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps18
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps18`;
CREATE TABLE `wp_clt_gps18`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps19
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps19`;
CREATE TABLE `wp_clt_gps19`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps2
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps2`;
CREATE TABLE `wp_clt_gps2`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps20
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps20`;
CREATE TABLE `wp_clt_gps20`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps21
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps21`;
CREATE TABLE `wp_clt_gps21`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps22
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps22`;
CREATE TABLE `wp_clt_gps22`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps23
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps23`;
CREATE TABLE `wp_clt_gps23`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps24
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps24`;
CREATE TABLE `wp_clt_gps24`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps25
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps25`;
CREATE TABLE `wp_clt_gps25`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps26
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps26`;
CREATE TABLE `wp_clt_gps26`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps27
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps27`;
CREATE TABLE `wp_clt_gps27`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps28
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps28`;
CREATE TABLE `wp_clt_gps28`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps29
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps29`;
CREATE TABLE `wp_clt_gps29`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps3
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps3`;
CREATE TABLE `wp_clt_gps3`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps30
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps30`;
CREATE TABLE `wp_clt_gps30`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps31
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps31`;
CREATE TABLE `wp_clt_gps31`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps32
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps32`;
CREATE TABLE `wp_clt_gps32`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps33
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps33`;
CREATE TABLE `wp_clt_gps33`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps34
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps34`;
CREATE TABLE `wp_clt_gps34`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps35
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps35`;
CREATE TABLE `wp_clt_gps35`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps36
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps36`;
CREATE TABLE `wp_clt_gps36`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps37
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps37`;
CREATE TABLE `wp_clt_gps37`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps38
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps38`;
CREATE TABLE `wp_clt_gps38`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps39
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps39`;
CREATE TABLE `wp_clt_gps39`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps4
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps4`;
CREATE TABLE `wp_clt_gps4`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps40
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps40`;
CREATE TABLE `wp_clt_gps40`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps41
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps41`;
CREATE TABLE `wp_clt_gps41`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps42
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps42`;
CREATE TABLE `wp_clt_gps42`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps43
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps43`;
CREATE TABLE `wp_clt_gps43`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps44
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps44`;
CREATE TABLE `wp_clt_gps44`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps45
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps45`;
CREATE TABLE `wp_clt_gps45`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps46
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps46`;
CREATE TABLE `wp_clt_gps46`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps47
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps47`;
CREATE TABLE `wp_clt_gps47`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps48
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps48`;
CREATE TABLE `wp_clt_gps48`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps49
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps49`;
CREATE TABLE `wp_clt_gps49`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps5
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps5`;
CREATE TABLE `wp_clt_gps5`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps50
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps50`;
CREATE TABLE `wp_clt_gps50`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps51
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps51`;
CREATE TABLE `wp_clt_gps51`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps52
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps52`;
CREATE TABLE `wp_clt_gps52`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps53
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps53`;
CREATE TABLE `wp_clt_gps53`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps54
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps54`;
CREATE TABLE `wp_clt_gps54`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps55
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps55`;
CREATE TABLE `wp_clt_gps55`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps56
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps56`;
CREATE TABLE `wp_clt_gps56`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps57
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps57`;
CREATE TABLE `wp_clt_gps57`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps58
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps58`;
CREATE TABLE `wp_clt_gps58`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps59
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps59`;
CREATE TABLE `wp_clt_gps59`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps6
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps6`;
CREATE TABLE `wp_clt_gps6`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps60
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps60`;
CREATE TABLE `wp_clt_gps60`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps61
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps61`;
CREATE TABLE `wp_clt_gps61`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps62
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps62`;
CREATE TABLE `wp_clt_gps62`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps63
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps63`;
CREATE TABLE `wp_clt_gps63`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps64
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps64`;
CREATE TABLE `wp_clt_gps64`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps65
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps65`;
CREATE TABLE `wp_clt_gps65`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps66
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps66`;
CREATE TABLE `wp_clt_gps66`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps67
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps67`;
CREATE TABLE `wp_clt_gps67`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps68
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps68`;
CREATE TABLE `wp_clt_gps68`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps69
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps69`;
CREATE TABLE `wp_clt_gps69`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps7
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps7`;
CREATE TABLE `wp_clt_gps7`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps70
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps70`;
CREATE TABLE `wp_clt_gps70`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps71
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps71`;
CREATE TABLE `wp_clt_gps71`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps72
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps72`;
CREATE TABLE `wp_clt_gps72`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps73
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps73`;
CREATE TABLE `wp_clt_gps73`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps74
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps74`;
CREATE TABLE `wp_clt_gps74`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps75
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps75`;
CREATE TABLE `wp_clt_gps75`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps76
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps76`;
CREATE TABLE `wp_clt_gps76`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps77
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps77`;
CREATE TABLE `wp_clt_gps77`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps78
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps78`;
CREATE TABLE `wp_clt_gps78`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps79
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps79`;
CREATE TABLE `wp_clt_gps79`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps8
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps8`;
CREATE TABLE `wp_clt_gps8`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps80
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps80`;
CREATE TABLE `wp_clt_gps80`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps81
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps81`;
CREATE TABLE `wp_clt_gps81`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps82
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps82`;
CREATE TABLE `wp_clt_gps82`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps83
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps83`;
CREATE TABLE `wp_clt_gps83`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps84
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps84`;
CREATE TABLE `wp_clt_gps84`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps85
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps85`;
CREATE TABLE `wp_clt_gps85`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps86
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps86`;
CREATE TABLE `wp_clt_gps86`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps87
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps87`;
CREATE TABLE `wp_clt_gps87`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps88
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps88`;
CREATE TABLE `wp_clt_gps88`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps89
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps89`;
CREATE TABLE `wp_clt_gps89`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps9
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps9`;
CREATE TABLE `wp_clt_gps9`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps90
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps90`;
CREATE TABLE `wp_clt_gps90`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps91
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps91`;
CREATE TABLE `wp_clt_gps91`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps92
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps92`;
CREATE TABLE `wp_clt_gps92`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps93
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps93`;
CREATE TABLE `wp_clt_gps93`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps94
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps94`;
CREATE TABLE `wp_clt_gps94`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps95
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps95`;
CREATE TABLE `wp_clt_gps95`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps96
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps96`;
CREATE TABLE `wp_clt_gps96`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps97
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps97`;
CREATE TABLE `wp_clt_gps97`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps98
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps98`;
CREATE TABLE `wp_clt_gps98`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_gps99
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_gps99`;
CREATE TABLE `wp_clt_gps99`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `longitude` float(12, 8) NOT NULL,
  `latitude` float(12, 8) NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `accuracy` float(12, 1) NOT NULL DEFAULT 0.0,
  `altitude` float(12, 1) NOT NULL DEFAULT 0.0,
  `speed` float(12, 1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_humidity
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_humidity`;
CREATE TABLE `wp_clt_humidity`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1366 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_operation_log`;
CREATE TABLE `wp_clt_operation_log`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_role` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `author_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `author_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime(0) NOT NULL,
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `detail` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `terminal_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard0
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard0`;
CREATE TABLE `wp_clt_receiveCard0`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard1
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard1`;
CREATE TABLE `wp_clt_receiveCard1`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard10
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard10`;
CREATE TABLE `wp_clt_receiveCard10`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard100
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard100`;
CREATE TABLE `wp_clt_receiveCard100`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard101
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard101`;
CREATE TABLE `wp_clt_receiveCard101`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard102
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard102`;
CREATE TABLE `wp_clt_receiveCard102`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard103
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard103`;
CREATE TABLE `wp_clt_receiveCard103`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard104
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard104`;
CREATE TABLE `wp_clt_receiveCard104`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard105
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard105`;
CREATE TABLE `wp_clt_receiveCard105`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard106
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard106`;
CREATE TABLE `wp_clt_receiveCard106`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard107
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard107`;
CREATE TABLE `wp_clt_receiveCard107`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard108
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard108`;
CREATE TABLE `wp_clt_receiveCard108`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard109
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard109`;
CREATE TABLE `wp_clt_receiveCard109`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard11
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard11`;
CREATE TABLE `wp_clt_receiveCard11`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 330 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard110
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard110`;
CREATE TABLE `wp_clt_receiveCard110`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard111
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard111`;
CREATE TABLE `wp_clt_receiveCard111`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard112
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard112`;
CREATE TABLE `wp_clt_receiveCard112`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard113
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard113`;
CREATE TABLE `wp_clt_receiveCard113`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard114
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard114`;
CREATE TABLE `wp_clt_receiveCard114`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard115
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard115`;
CREATE TABLE `wp_clt_receiveCard115`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard116
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard116`;
CREATE TABLE `wp_clt_receiveCard116`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard117
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard117`;
CREATE TABLE `wp_clt_receiveCard117`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard118
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard118`;
CREATE TABLE `wp_clt_receiveCard118`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard119
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard119`;
CREATE TABLE `wp_clt_receiveCard119`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard12
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard12`;
CREATE TABLE `wp_clt_receiveCard12`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard120
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard120`;
CREATE TABLE `wp_clt_receiveCard120`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard121
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard121`;
CREATE TABLE `wp_clt_receiveCard121`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard122
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard122`;
CREATE TABLE `wp_clt_receiveCard122`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard123
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard123`;
CREATE TABLE `wp_clt_receiveCard123`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard124
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard124`;
CREATE TABLE `wp_clt_receiveCard124`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard125
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard125`;
CREATE TABLE `wp_clt_receiveCard125`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard126
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard126`;
CREATE TABLE `wp_clt_receiveCard126`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard127
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard127`;
CREATE TABLE `wp_clt_receiveCard127`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard13
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard13`;
CREATE TABLE `wp_clt_receiveCard13`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard14
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard14`;
CREATE TABLE `wp_clt_receiveCard14`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard15
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard15`;
CREATE TABLE `wp_clt_receiveCard15`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 312 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard16
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard16`;
CREATE TABLE `wp_clt_receiveCard16`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard17
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard17`;
CREATE TABLE `wp_clt_receiveCard17`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard18
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard18`;
CREATE TABLE `wp_clt_receiveCard18`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard19
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard19`;
CREATE TABLE `wp_clt_receiveCard19`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard2
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard2`;
CREATE TABLE `wp_clt_receiveCard2`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard20
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard20`;
CREATE TABLE `wp_clt_receiveCard20`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard21
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard21`;
CREATE TABLE `wp_clt_receiveCard21`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard22
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard22`;
CREATE TABLE `wp_clt_receiveCard22`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1567 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard23
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard23`;
CREATE TABLE `wp_clt_receiveCard23`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard24
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard24`;
CREATE TABLE `wp_clt_receiveCard24`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard25
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard25`;
CREATE TABLE `wp_clt_receiveCard25`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard26
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard26`;
CREATE TABLE `wp_clt_receiveCard26`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard27
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard27`;
CREATE TABLE `wp_clt_receiveCard27`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard28
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard28`;
CREATE TABLE `wp_clt_receiveCard28`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard29
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard29`;
CREATE TABLE `wp_clt_receiveCard29`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard3
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard3`;
CREATE TABLE `wp_clt_receiveCard3`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard30
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard30`;
CREATE TABLE `wp_clt_receiveCard30`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard31
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard31`;
CREATE TABLE `wp_clt_receiveCard31`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard32
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard32`;
CREATE TABLE `wp_clt_receiveCard32`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard33
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard33`;
CREATE TABLE `wp_clt_receiveCard33`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard34
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard34`;
CREATE TABLE `wp_clt_receiveCard34`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard35
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard35`;
CREATE TABLE `wp_clt_receiveCard35`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard36
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard36`;
CREATE TABLE `wp_clt_receiveCard36`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard37
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard37`;
CREATE TABLE `wp_clt_receiveCard37`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard38
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard38`;
CREATE TABLE `wp_clt_receiveCard38`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard39
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard39`;
CREATE TABLE `wp_clt_receiveCard39`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard4
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard4`;
CREATE TABLE `wp_clt_receiveCard4`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard40
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard40`;
CREATE TABLE `wp_clt_receiveCard40`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard41
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard41`;
CREATE TABLE `wp_clt_receiveCard41`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard42
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard42`;
CREATE TABLE `wp_clt_receiveCard42`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard43
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard43`;
CREATE TABLE `wp_clt_receiveCard43`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard44
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard44`;
CREATE TABLE `wp_clt_receiveCard44`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard45
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard45`;
CREATE TABLE `wp_clt_receiveCard45`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard46
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard46`;
CREATE TABLE `wp_clt_receiveCard46`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard47
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard47`;
CREATE TABLE `wp_clt_receiveCard47`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard48
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard48`;
CREATE TABLE `wp_clt_receiveCard48`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard49
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard49`;
CREATE TABLE `wp_clt_receiveCard49`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard5
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard5`;
CREATE TABLE `wp_clt_receiveCard5`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard50
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard50`;
CREATE TABLE `wp_clt_receiveCard50`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard51
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard51`;
CREATE TABLE `wp_clt_receiveCard51`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard52
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard52`;
CREATE TABLE `wp_clt_receiveCard52`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard53
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard53`;
CREATE TABLE `wp_clt_receiveCard53`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard54
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard54`;
CREATE TABLE `wp_clt_receiveCard54`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard55
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard55`;
CREATE TABLE `wp_clt_receiveCard55`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard56
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard56`;
CREATE TABLE `wp_clt_receiveCard56`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard57
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard57`;
CREATE TABLE `wp_clt_receiveCard57`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard58
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard58`;
CREATE TABLE `wp_clt_receiveCard58`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard59
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard59`;
CREATE TABLE `wp_clt_receiveCard59`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard6
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard6`;
CREATE TABLE `wp_clt_receiveCard6`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard60
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard60`;
CREATE TABLE `wp_clt_receiveCard60`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard61
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard61`;
CREATE TABLE `wp_clt_receiveCard61`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard62
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard62`;
CREATE TABLE `wp_clt_receiveCard62`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard63
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard63`;
CREATE TABLE `wp_clt_receiveCard63`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard64
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard64`;
CREATE TABLE `wp_clt_receiveCard64`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard65
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard65`;
CREATE TABLE `wp_clt_receiveCard65`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard66
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard66`;
CREATE TABLE `wp_clt_receiveCard66`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard67
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard67`;
CREATE TABLE `wp_clt_receiveCard67`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard68
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard68`;
CREATE TABLE `wp_clt_receiveCard68`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard69
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard69`;
CREATE TABLE `wp_clt_receiveCard69`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard7
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard7`;
CREATE TABLE `wp_clt_receiveCard7`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard70
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard70`;
CREATE TABLE `wp_clt_receiveCard70`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard71
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard71`;
CREATE TABLE `wp_clt_receiveCard71`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard72
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard72`;
CREATE TABLE `wp_clt_receiveCard72`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard73
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard73`;
CREATE TABLE `wp_clt_receiveCard73`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard74
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard74`;
CREATE TABLE `wp_clt_receiveCard74`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard75
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard75`;
CREATE TABLE `wp_clt_receiveCard75`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard76
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard76`;
CREATE TABLE `wp_clt_receiveCard76`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard77
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard77`;
CREATE TABLE `wp_clt_receiveCard77`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard78
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard78`;
CREATE TABLE `wp_clt_receiveCard78`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 290 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard79
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard79`;
CREATE TABLE `wp_clt_receiveCard79`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard8
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard8`;
CREATE TABLE `wp_clt_receiveCard8`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard80
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard80`;
CREATE TABLE `wp_clt_receiveCard80`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard81
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard81`;
CREATE TABLE `wp_clt_receiveCard81`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard82
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard82`;
CREATE TABLE `wp_clt_receiveCard82`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard83
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard83`;
CREATE TABLE `wp_clt_receiveCard83`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard84
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard84`;
CREATE TABLE `wp_clt_receiveCard84`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard85
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard85`;
CREATE TABLE `wp_clt_receiveCard85`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard86
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard86`;
CREATE TABLE `wp_clt_receiveCard86`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard87
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard87`;
CREATE TABLE `wp_clt_receiveCard87`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard88
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard88`;
CREATE TABLE `wp_clt_receiveCard88`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard89
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard89`;
CREATE TABLE `wp_clt_receiveCard89`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard9
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard9`;
CREATE TABLE `wp_clt_receiveCard9`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard90
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard90`;
CREATE TABLE `wp_clt_receiveCard90`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard91
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard91`;
CREATE TABLE `wp_clt_receiveCard91`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard92
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard92`;
CREATE TABLE `wp_clt_receiveCard92`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard93
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard93`;
CREATE TABLE `wp_clt_receiveCard93`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard94
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard94`;
CREATE TABLE `wp_clt_receiveCard94`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard95
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard95`;
CREATE TABLE `wp_clt_receiveCard95`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard96
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard96`;
CREATE TABLE `wp_clt_receiveCard96`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard97
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard97`;
CREATE TABLE `wp_clt_receiveCard97`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard98
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard98`;
CREATE TABLE `wp_clt_receiveCard98`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_receiveCard99
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_receiveCard99`;
CREATE TABLE `wp_clt_receiveCard99`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `netPortNum` int(3) NOT NULL,
  `receiveCardNum` int(3) NOT NULL,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bitErrorRate` float NOT NULL,
  `humidity` float NULL DEFAULT NULL,
  `smoke` float NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_smoke
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_smoke`;
CREATE TABLE `wp_clt_smoke`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1576 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_status
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_status`;
CREATE TABLE `wp_clt_status`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `statusValue` int(20) NOT NULL,
  `status2Value` int(20) NULL DEFAULT NULL,
  `status3Value` int(20) NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp0
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp0`;
CREATE TABLE `wp_clt_temp0`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp1
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp1`;
CREATE TABLE `wp_clt_temp1`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp10
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp10`;
CREATE TABLE `wp_clt_temp10`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp100
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp100`;
CREATE TABLE `wp_clt_temp100`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp101
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp101`;
CREATE TABLE `wp_clt_temp101`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp102
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp102`;
CREATE TABLE `wp_clt_temp102`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp103
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp103`;
CREATE TABLE `wp_clt_temp103`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp104
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp104`;
CREATE TABLE `wp_clt_temp104`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp105
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp105`;
CREATE TABLE `wp_clt_temp105`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp106
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp106`;
CREATE TABLE `wp_clt_temp106`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp107
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp107`;
CREATE TABLE `wp_clt_temp107`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp108
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp108`;
CREATE TABLE `wp_clt_temp108`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp109
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp109`;
CREATE TABLE `wp_clt_temp109`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp11
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp11`;
CREATE TABLE `wp_clt_temp11`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp110
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp110`;
CREATE TABLE `wp_clt_temp110`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp111
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp111`;
CREATE TABLE `wp_clt_temp111`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp112
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp112`;
CREATE TABLE `wp_clt_temp112`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp113
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp113`;
CREATE TABLE `wp_clt_temp113`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp114
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp114`;
CREATE TABLE `wp_clt_temp114`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp115
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp115`;
CREATE TABLE `wp_clt_temp115`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp116
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp116`;
CREATE TABLE `wp_clt_temp116`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp117
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp117`;
CREATE TABLE `wp_clt_temp117`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp118
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp118`;
CREATE TABLE `wp_clt_temp118`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp119
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp119`;
CREATE TABLE `wp_clt_temp119`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp12
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp12`;
CREATE TABLE `wp_clt_temp12`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp120
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp120`;
CREATE TABLE `wp_clt_temp120`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp121
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp121`;
CREATE TABLE `wp_clt_temp121`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp122
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp122`;
CREATE TABLE `wp_clt_temp122`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp123
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp123`;
CREATE TABLE `wp_clt_temp123`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp124
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp124`;
CREATE TABLE `wp_clt_temp124`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp125
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp125`;
CREATE TABLE `wp_clt_temp125`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp126
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp126`;
CREATE TABLE `wp_clt_temp126`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp127
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp127`;
CREATE TABLE `wp_clt_temp127`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1366 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp13
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp13`;
CREATE TABLE `wp_clt_temp13`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp14
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp14`;
CREATE TABLE `wp_clt_temp14`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp15
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp15`;
CREATE TABLE `wp_clt_temp15`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp16
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp16`;
CREATE TABLE `wp_clt_temp16`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp17
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp17`;
CREATE TABLE `wp_clt_temp17`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp18
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp18`;
CREATE TABLE `wp_clt_temp18`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp19
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp19`;
CREATE TABLE `wp_clt_temp19`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp2
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp2`;
CREATE TABLE `wp_clt_temp2`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp20
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp20`;
CREATE TABLE `wp_clt_temp20`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp21
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp21`;
CREATE TABLE `wp_clt_temp21`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp22
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp22`;
CREATE TABLE `wp_clt_temp22`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp23
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp23`;
CREATE TABLE `wp_clt_temp23`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp24
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp24`;
CREATE TABLE `wp_clt_temp24`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp25
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp25`;
CREATE TABLE `wp_clt_temp25`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp26
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp26`;
CREATE TABLE `wp_clt_temp26`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp27
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp27`;
CREATE TABLE `wp_clt_temp27`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp28
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp28`;
CREATE TABLE `wp_clt_temp28`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp29
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp29`;
CREATE TABLE `wp_clt_temp29`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp3
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp3`;
CREATE TABLE `wp_clt_temp3`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp30
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp30`;
CREATE TABLE `wp_clt_temp30`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp31
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp31`;
CREATE TABLE `wp_clt_temp31`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp32
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp32`;
CREATE TABLE `wp_clt_temp32`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp33
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp33`;
CREATE TABLE `wp_clt_temp33`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp34
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp34`;
CREATE TABLE `wp_clt_temp34`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp35
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp35`;
CREATE TABLE `wp_clt_temp35`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp36
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp36`;
CREATE TABLE `wp_clt_temp36`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp37
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp37`;
CREATE TABLE `wp_clt_temp37`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp38
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp38`;
CREATE TABLE `wp_clt_temp38`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp39
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp39`;
CREATE TABLE `wp_clt_temp39`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp4
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp4`;
CREATE TABLE `wp_clt_temp4`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp40
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp40`;
CREATE TABLE `wp_clt_temp40`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp41
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp41`;
CREATE TABLE `wp_clt_temp41`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp42
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp42`;
CREATE TABLE `wp_clt_temp42`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp43
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp43`;
CREATE TABLE `wp_clt_temp43`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp44
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp44`;
CREATE TABLE `wp_clt_temp44`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp45
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp45`;
CREATE TABLE `wp_clt_temp45`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp46
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp46`;
CREATE TABLE `wp_clt_temp46`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp47
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp47`;
CREATE TABLE `wp_clt_temp47`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp48
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp48`;
CREATE TABLE `wp_clt_temp48`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp49
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp49`;
CREATE TABLE `wp_clt_temp49`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp5
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp5`;
CREATE TABLE `wp_clt_temp5`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp50
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp50`;
CREATE TABLE `wp_clt_temp50`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp51
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp51`;
CREATE TABLE `wp_clt_temp51`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp52
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp52`;
CREATE TABLE `wp_clt_temp52`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp53
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp53`;
CREATE TABLE `wp_clt_temp53`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp54
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp54`;
CREATE TABLE `wp_clt_temp54`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp55
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp55`;
CREATE TABLE `wp_clt_temp55`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp56
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp56`;
CREATE TABLE `wp_clt_temp56`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp57
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp57`;
CREATE TABLE `wp_clt_temp57`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp58
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp58`;
CREATE TABLE `wp_clt_temp58`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp59
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp59`;
CREATE TABLE `wp_clt_temp59`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp6
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp6`;
CREATE TABLE `wp_clt_temp6`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp60
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp60`;
CREATE TABLE `wp_clt_temp60`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp61
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp61`;
CREATE TABLE `wp_clt_temp61`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp62
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp62`;
CREATE TABLE `wp_clt_temp62`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp63
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp63`;
CREATE TABLE `wp_clt_temp63`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp64
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp64`;
CREATE TABLE `wp_clt_temp64`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp65
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp65`;
CREATE TABLE `wp_clt_temp65`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp66
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp66`;
CREATE TABLE `wp_clt_temp66`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp67
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp67`;
CREATE TABLE `wp_clt_temp67`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp68
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp68`;
CREATE TABLE `wp_clt_temp68`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp69
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp69`;
CREATE TABLE `wp_clt_temp69`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp7
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp7`;
CREATE TABLE `wp_clt_temp7`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp70
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp70`;
CREATE TABLE `wp_clt_temp70`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp71
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp71`;
CREATE TABLE `wp_clt_temp71`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp72
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp72`;
CREATE TABLE `wp_clt_temp72`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp73
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp73`;
CREATE TABLE `wp_clt_temp73`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp74
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp74`;
CREATE TABLE `wp_clt_temp74`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp75
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp75`;
CREATE TABLE `wp_clt_temp75`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp76
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp76`;
CREATE TABLE `wp_clt_temp76`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp77
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp77`;
CREATE TABLE `wp_clt_temp77`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp78
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp78`;
CREATE TABLE `wp_clt_temp78`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp79
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp79`;
CREATE TABLE `wp_clt_temp79`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp8
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp8`;
CREATE TABLE `wp_clt_temp8`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp80
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp80`;
CREATE TABLE `wp_clt_temp80`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp81
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp81`;
CREATE TABLE `wp_clt_temp81`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp82
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp82`;
CREATE TABLE `wp_clt_temp82`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp83
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp83`;
CREATE TABLE `wp_clt_temp83`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp84
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp84`;
CREATE TABLE `wp_clt_temp84`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp85
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp85`;
CREATE TABLE `wp_clt_temp85`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp86
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp86`;
CREATE TABLE `wp_clt_temp86`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp87
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp87`;
CREATE TABLE `wp_clt_temp87`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp88
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp88`;
CREATE TABLE `wp_clt_temp88`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp89
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp89`;
CREATE TABLE `wp_clt_temp89`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp9
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp9`;
CREATE TABLE `wp_clt_temp9`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp90
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp90`;
CREATE TABLE `wp_clt_temp90`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp91
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp91`;
CREATE TABLE `wp_clt_temp91`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp92
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp92`;
CREATE TABLE `wp_clt_temp92`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp93
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp93`;
CREATE TABLE `wp_clt_temp93`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp94
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp94`;
CREATE TABLE `wp_clt_temp94`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp95
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp95`;
CREATE TABLE `wp_clt_temp95`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp96
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp96`;
CREATE TABLE `wp_clt_temp96`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp97
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp97`;
CREATE TABLE `wp_clt_temp97`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp98
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp98`;
CREATE TABLE `wp_clt_temp98`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_temp99
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_temp99`;
CREATE TABLE `wp_clt_temp99`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sensorValue` float NOT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_clt_voltage
-- ----------------------------
DROP TABLE IF EXISTS `wp_clt_voltage`;
CREATE TABLE `wp_clt_voltage`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `sensorId` int(3) NOT NULL DEFAULT 1,
  `sensorType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `voltageValue` float NOT NULL,
  `voltage2Value` float NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `monitor_ledid`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1353 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_commentmeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta`  (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  PRIMARY KEY (`meta_id`) USING BTREE,
  INDEX `comment_id`(`comment_id`) USING BTREE,
  INDEX `meta_key`(`meta_key`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46909 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_comments
-- ----------------------------
DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments`  (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime(0) NOT NULL,
  `comment_date_gmt` datetime(0) NOT NULL,
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`) USING BTREE,
  INDEX `comment_post_ID`(`comment_post_ID`) USING BTREE,
  INDEX `comment_approved_date_gmt`(`comment_approved`, `comment_date_gmt`) USING BTREE,
  INDEX `comment_date_gmt`(`comment_date_gmt`) USING BTREE,
  INDEX `comment_parent`(`comment_parent`) USING BTREE,
  INDEX `comment_author_email`(`comment_author_email`(10)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37385 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_group_relationships
-- ----------------------------
DROP TABLE IF EXISTS `wp_group_relationships`;
CREATE TABLE `wp_group_relationships`  (
  `user_group_id` int(20) NOT NULL,
  `led_group_id` int(20) NOT NULL,
  `group_order` int(20) NULL DEFAULT 0,
  `others` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  INDEX `group_id_index`(`user_group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee0
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee0`;
CREATE TABLE `wp_led_flowfee0`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee1
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee1`;
CREATE TABLE `wp_led_flowfee1`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee10
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee10`;
CREATE TABLE `wp_led_flowfee10`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee100
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee100`;
CREATE TABLE `wp_led_flowfee100`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee101
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee101`;
CREATE TABLE `wp_led_flowfee101`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee102
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee102`;
CREATE TABLE `wp_led_flowfee102`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee103
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee103`;
CREATE TABLE `wp_led_flowfee103`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee104
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee104`;
CREATE TABLE `wp_led_flowfee104`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee105
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee105`;
CREATE TABLE `wp_led_flowfee105`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee106
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee106`;
CREATE TABLE `wp_led_flowfee106`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee107
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee107`;
CREATE TABLE `wp_led_flowfee107`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee108
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee108`;
CREATE TABLE `wp_led_flowfee108`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee109
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee109`;
CREATE TABLE `wp_led_flowfee109`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 170 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee11
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee11`;
CREATE TABLE `wp_led_flowfee11`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11505 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee110
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee110`;
CREATE TABLE `wp_led_flowfee110`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee111
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee111`;
CREATE TABLE `wp_led_flowfee111`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee112
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee112`;
CREATE TABLE `wp_led_flowfee112`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee113
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee113`;
CREATE TABLE `wp_led_flowfee113`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee114
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee114`;
CREATE TABLE `wp_led_flowfee114`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee115
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee115`;
CREATE TABLE `wp_led_flowfee115`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee116
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee116`;
CREATE TABLE `wp_led_flowfee116`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee117
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee117`;
CREATE TABLE `wp_led_flowfee117`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee118
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee118`;
CREATE TABLE `wp_led_flowfee118`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3325 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee119
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee119`;
CREATE TABLE `wp_led_flowfee119`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 637 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee12
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee12`;
CREATE TABLE `wp_led_flowfee12`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee120
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee120`;
CREATE TABLE `wp_led_flowfee120`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee121
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee121`;
CREATE TABLE `wp_led_flowfee121`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee122
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee122`;
CREATE TABLE `wp_led_flowfee122`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 464 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee123
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee123`;
CREATE TABLE `wp_led_flowfee123`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee124
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee124`;
CREATE TABLE `wp_led_flowfee124`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8444 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee125
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee125`;
CREATE TABLE `wp_led_flowfee125`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee126
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee126`;
CREATE TABLE `wp_led_flowfee126`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee127
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee127`;
CREATE TABLE `wp_led_flowfee127`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee13
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee13`;
CREATE TABLE `wp_led_flowfee13`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee14
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee14`;
CREATE TABLE `wp_led_flowfee14`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee15
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee15`;
CREATE TABLE `wp_led_flowfee15`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee16
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee16`;
CREATE TABLE `wp_led_flowfee16`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee17
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee17`;
CREATE TABLE `wp_led_flowfee17`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee18
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee18`;
CREATE TABLE `wp_led_flowfee18`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee19
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee19`;
CREATE TABLE `wp_led_flowfee19`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee2
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee2`;
CREATE TABLE `wp_led_flowfee2`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee20
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee20`;
CREATE TABLE `wp_led_flowfee20`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 188 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee21
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee21`;
CREATE TABLE `wp_led_flowfee21`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee22
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee22`;
CREATE TABLE `wp_led_flowfee22`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 277 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee23
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee23`;
CREATE TABLE `wp_led_flowfee23`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee24
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee24`;
CREATE TABLE `wp_led_flowfee24`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee25
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee25`;
CREATE TABLE `wp_led_flowfee25`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee26
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee26`;
CREATE TABLE `wp_led_flowfee26`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee27
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee27`;
CREATE TABLE `wp_led_flowfee27`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee28
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee28`;
CREATE TABLE `wp_led_flowfee28`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee29
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee29`;
CREATE TABLE `wp_led_flowfee29`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee3
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee3`;
CREATE TABLE `wp_led_flowfee3`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee30
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee30`;
CREATE TABLE `wp_led_flowfee30`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee31
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee31`;
CREATE TABLE `wp_led_flowfee31`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee32
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee32`;
CREATE TABLE `wp_led_flowfee32`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee33
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee33`;
CREATE TABLE `wp_led_flowfee33`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee34
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee34`;
CREATE TABLE `wp_led_flowfee34`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee35
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee35`;
CREATE TABLE `wp_led_flowfee35`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee36
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee36`;
CREATE TABLE `wp_led_flowfee36`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee37
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee37`;
CREATE TABLE `wp_led_flowfee37`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee38
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee38`;
CREATE TABLE `wp_led_flowfee38`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee39
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee39`;
CREATE TABLE `wp_led_flowfee39`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee4
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee4`;
CREATE TABLE `wp_led_flowfee4`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee40
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee40`;
CREATE TABLE `wp_led_flowfee40`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee41
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee41`;
CREATE TABLE `wp_led_flowfee41`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee42
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee42`;
CREATE TABLE `wp_led_flowfee42`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee43
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee43`;
CREATE TABLE `wp_led_flowfee43`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee44
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee44`;
CREATE TABLE `wp_led_flowfee44`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee45
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee45`;
CREATE TABLE `wp_led_flowfee45`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee46
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee46`;
CREATE TABLE `wp_led_flowfee46`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee47
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee47`;
CREATE TABLE `wp_led_flowfee47`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee48
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee48`;
CREATE TABLE `wp_led_flowfee48`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee49
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee49`;
CREATE TABLE `wp_led_flowfee49`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 419 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee5
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee5`;
CREATE TABLE `wp_led_flowfee5`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee50
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee50`;
CREATE TABLE `wp_led_flowfee50`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee51
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee51`;
CREATE TABLE `wp_led_flowfee51`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee52
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee52`;
CREATE TABLE `wp_led_flowfee52`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee53
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee53`;
CREATE TABLE `wp_led_flowfee53`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1221 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee54
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee54`;
CREATE TABLE `wp_led_flowfee54`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee55
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee55`;
CREATE TABLE `wp_led_flowfee55`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee56
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee56`;
CREATE TABLE `wp_led_flowfee56`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 838 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee57
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee57`;
CREATE TABLE `wp_led_flowfee57`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 169 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee58
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee58`;
CREATE TABLE `wp_led_flowfee58`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee59
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee59`;
CREATE TABLE `wp_led_flowfee59`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee6
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee6`;
CREATE TABLE `wp_led_flowfee6`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee60
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee60`;
CREATE TABLE `wp_led_flowfee60`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee61
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee61`;
CREATE TABLE `wp_led_flowfee61`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee62
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee62`;
CREATE TABLE `wp_led_flowfee62`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 625 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee63
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee63`;
CREATE TABLE `wp_led_flowfee63`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee64
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee64`;
CREATE TABLE `wp_led_flowfee64`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee65
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee65`;
CREATE TABLE `wp_led_flowfee65`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee66
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee66`;
CREATE TABLE `wp_led_flowfee66`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee67
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee67`;
CREATE TABLE `wp_led_flowfee67`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee68
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee68`;
CREATE TABLE `wp_led_flowfee68`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee69
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee69`;
CREATE TABLE `wp_led_flowfee69`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee7
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee7`;
CREATE TABLE `wp_led_flowfee7`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee70
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee70`;
CREATE TABLE `wp_led_flowfee70`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee71
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee71`;
CREATE TABLE `wp_led_flowfee71`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee72
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee72`;
CREATE TABLE `wp_led_flowfee72`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee73
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee73`;
CREATE TABLE `wp_led_flowfee73`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee74
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee74`;
CREATE TABLE `wp_led_flowfee74`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee75
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee75`;
CREATE TABLE `wp_led_flowfee75`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10809 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee76
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee76`;
CREATE TABLE `wp_led_flowfee76`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee77
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee77`;
CREATE TABLE `wp_led_flowfee77`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee78
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee78`;
CREATE TABLE `wp_led_flowfee78`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18988 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee79
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee79`;
CREATE TABLE `wp_led_flowfee79`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee8
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee8`;
CREATE TABLE `wp_led_flowfee8`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 206 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee80
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee80`;
CREATE TABLE `wp_led_flowfee80`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee81
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee81`;
CREATE TABLE `wp_led_flowfee81`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee82
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee82`;
CREATE TABLE `wp_led_flowfee82`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee83
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee83`;
CREATE TABLE `wp_led_flowfee83`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee84
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee84`;
CREATE TABLE `wp_led_flowfee84`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee85
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee85`;
CREATE TABLE `wp_led_flowfee85`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee86
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee86`;
CREATE TABLE `wp_led_flowfee86`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee87
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee87`;
CREATE TABLE `wp_led_flowfee87`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee88
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee88`;
CREATE TABLE `wp_led_flowfee88`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee89
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee89`;
CREATE TABLE `wp_led_flowfee89`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee9
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee9`;
CREATE TABLE `wp_led_flowfee9`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 334 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee90
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee90`;
CREATE TABLE `wp_led_flowfee90`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee91
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee91`;
CREATE TABLE `wp_led_flowfee91`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3206 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee92
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee92`;
CREATE TABLE `wp_led_flowfee92`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee93
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee93`;
CREATE TABLE `wp_led_flowfee93`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee94
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee94`;
CREATE TABLE `wp_led_flowfee94`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 341 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee95
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee95`;
CREATE TABLE `wp_led_flowfee95`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6294 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee96
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee96`;
CREATE TABLE `wp_led_flowfee96`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee97
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee97`;
CREATE TABLE `wp_led_flowfee97`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee98
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee98`;
CREATE TABLE `wp_led_flowfee98`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_led_flowfee99
-- ----------------------------
DROP TABLE IF EXISTS `wp_led_flowfee99`;
CREATE TABLE `wp_led_flowfee99`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `endLocalTime` datetime(0) NULL DEFAULT NULL,
  `endUtcTime` datetime(0) NOT NULL,
  `itemType` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `programName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resMd5Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resOriginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `startLocalTime` datetime(0) NOT NULL,
  `startUtcTime` datetime(0) NOT NULL,
  `duration` int(20) NOT NULL,
  `startTimeStamp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageIndex` int(11) NOT NULL,
  `regionIndex` int(11) NOT NULL,
  `server_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`, `server_time`) USING BTREE,
  INDEX `QUERY_INDEX`(`led_id`, `resMd5Name`, `startLocalTime`) USING BTREE,
  INDEX `LOCAL_TIME`(`led_id`, `startLocalTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_links
-- ----------------------------
DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links`  (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime(0) NOT NULL,
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`) USING BTREE,
  INDEX `link_visible`(`link_visible`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_log_operation
-- ----------------------------
DROP TABLE IF EXISTS `wp_log_operation`;
CREATE TABLE `wp_log_operation`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime(0) NOT NULL,
  `action` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `target_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `target_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `result_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `args` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12310 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_log_record
-- ----------------------------
DROP TABLE IF EXISTS `wp_log_record`;
CREATE TABLE `wp_log_record`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL,
  `led_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `log_type` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `log_subtype1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `log_subtype2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `log_subtype3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int(1) NOT NULL DEFAULT 7,
  `categories` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `device_time` datetime(0) NOT NULL DEFAULT '0000-10-10 00:00:00',
  `server_time` datetime(0) NOT NULL DEFAULT '0000-10-10 00:00:00',
  `hand_status` int(1) NOT NULL DEFAULT 0,
  `hand_time` datetime(0) NOT NULL DEFAULT '0000-10-10 00:00:00',
  `log_arg1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `log_arg2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `log_arg3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `log_arg4` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `log_arg5` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `log_arg6` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `others` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `led_index`(`led_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1570 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_options
-- ----------------------------
DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options`  (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`) USING BTREE,
  UNIQUE INDEX `option_name`(`option_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 116 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_postmeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta`  (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  PRIMARY KEY (`meta_id`) USING BTREE,
  INDEX `post_id`(`post_id`) USING BTREE,
  INDEX `meta_key`(`meta_key`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 182984 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_posts
-- ----------------------------
DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts`  (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime(0) NOT NULL,
  `post_date_gmt` datetime(0) NOT NULL,
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime(0) NOT NULL,
  `post_modified_gmt` datetime(0) NOT NULL,
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `post_name`(`post_name`(191)) USING BTREE,
  INDEX `type_status_date`(`post_type`, `post_status`, `post_date`, `ID`) USING BTREE,
  INDEX `post_parent`(`post_parent`) USING BTREE,
  INDEX `post_author`(`post_author`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66159 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_term_relationships
-- ----------------------------
DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships`  (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`, `term_taxonomy_id`) USING BTREE,
  INDEX `term_taxonomy_id`(`term_taxonomy_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_term_taxonomy
-- ----------------------------
DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy`  (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`) USING BTREE,
  UNIQUE INDEX `term_id_taxonomy`(`term_id`, `taxonomy`) USING BTREE,
  INDEX `taxonomy`(`taxonomy`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27058 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_termmeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta`  (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  PRIMARY KEY (`meta_id`) USING BTREE,
  INDEX `term_id`(`term_id`) USING BTREE,
  INDEX `meta_key`(`meta_key`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3842 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_terms
-- ----------------------------
DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms`  (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`) USING BTREE,
  INDEX `slug`(`slug`(191)) USING BTREE,
  INDEX `name`(`name`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15068 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_usermeta
-- ----------------------------
DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta`  (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  PRIMARY KEY (`umeta_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `meta_key`(`meta_key`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5290 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_users
-- ----------------------------
DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users`  (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime(0) NOT NULL,
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `user_login_key`(`user_login`) USING BTREE,
  INDEX `user_nicename`(`user_nicename`) USING BTREE,
  INDEX `user_email`(`user_email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5727 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- Table structure for wp_group_program
-- ----------------------------
DROP TABLE IF EXISTS `wp_group_program`;
CREATE TABLE `wp_group_program`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `groupId` bigint(20) UNSIGNED NOT NULL,
  `programId` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_gid_pid`(`groupId`, `programId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4048 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- Table structure for wp_terminal_program
-- ----------------------------
DROP TABLE IF EXISTS `wp_terminal_program`;
CREATE TABLE `wp_terminal_program`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `terminalId` bigint(20) UNSIGNED NOT NULL,
  `programId` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_tid_pid`(`terminalId`, `programId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10726 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_custom_tag
-- ----------------------------
DROP TABLE IF EXISTS `wp_custom_tag`;
CREATE TABLE `wp_custom_tag`  (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自定义标签表主键',
  `tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '自定义标签名',
  `trash` tinyint(10) NULL DEFAULT NULL,
  `extra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tag_id`) USING BTREE,
  UNIQUE INDEX `index_tag`(`tag_name`) USING BTREE COMMENT 'tag名唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 136 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- Table structure for wp_media_custom_tag_record
-- ----------------------------
DROP TABLE IF EXISTS `wp_media_custom_tag_record`;
CREATE TABLE `wp_media_custom_tag_record`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `media_id` int(11) NULL DEFAULT NULL COMMENT '素材id',
  `custom_tag_id` int(11) NULL DEFAULT NULL COMMENT '自定义标签id',
  `tag_date` datetime(0) NULL DEFAULT NULL COMMENT '贴标签时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `index_tag_record`(`user_id`, `media_id`, `custom_tag_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 340 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- Table structure for wp_share_relationships
-- ----------------------------
DROP TABLE IF EXISTS `wp_share_relationships`;
CREATE TABLE `wp_share_relationships`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `current_id` int(11) NOT NULL COMMENT '分享的主体ID，只能是终端组',
  `target_id` int(11) NOT NULL COMMENT '被分享的对象ID',
  `target_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '被分享的对象类型，如用户组，用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27153 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- Table structure for wp_media_share_record
-- ----------------------------
DROP TABLE IF EXISTS `wp_media_share_record`;
CREATE TABLE `wp_media_share_record`  (
  `media_id` int(11) NOT NULL COMMENT '素材ID',
  `share_rela_id` int(11) NOT NULL COMMENT '分享关系ID，wp_share_relationships表主键',
  `share_date` datetime(0) NOT NULL COMMENT '分享日期',
  UNIQUE INDEX `index_share_record`(`media_id`, `share_rela_id`) USING BTREE COMMENT '分享记录，只有分享过和未分享过两种状态'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- Table structure for wp_program_feature
-- ----------------------------
DROP TABLE IF EXISTS `wp_program_feature`;
CREATE TABLE `wp_program_feature`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `post_id` int(4) NOT NULL COMMENT '节目id',
  `max_video_height` int(4) NOT NULL COMMENT '节目中视频最大高',
  `max_video_width` int(4) NOT NULL COMMENT '节目中视频最大宽',
  `max_video_resolution` int(10) NOT NULL COMMENT '节目中视频最大分辨率',
  `program_height` int(4) NOT NULL COMMENT '节目高',
  `program_width` int(4) NOT NULL COMMENT '节目宽',
  `contain_video` tinyint(1) NOT NULL COMMENT '是否包含视频: 1包含,0不包含.',
  `mvh_media_id` int(10) NOT NULL COMMENT '节目中视频最大高对应的素材Id',
  `mvw_media_id` int(10) NOT NULL COMMENT '节目中视频最大宽对应的素材Id',
  `mvr_media_id` int(10) NOT NULL COMMENT '节目中视频最大分辨率对应的素材Id',
  `mvh_media_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '节目中视频最大高对应的素材名',
  `mvw_media_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '节目中视频最大高对应的素材名',
  `mvr_media_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '节目中视频最大高对应的素材名',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_programId`(`id`, `post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 931 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- Table structure for device_status
-- ----------------------------
DROP TABLE IF EXISTS `device_status`;
CREATE TABLE `device_status`  (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NOT NULL COMMENT '终端 ID',
  `offline_utc` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '离线时间',
  `online_utc` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '上线时间',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `post_id`(`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- Table structure for device_info
-- ----------------------------
DROP TABLE IF EXISTS `device_info`;
CREATE TABLE `device_info`  (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NULL DEFAULT NULL,
  `shop_code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `province` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `shop_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `device_location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `width` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `network_status` int(11) NULL DEFAULT NULL,
  `install_date` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `offline_days` int(11) NULL DEFAULT 0,
  `total_offline_days` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 210 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;


DROP PROCEDURE IF EXISTS `UpdateGps`;
delimiter //
CREATE DEFINER=`root`@`%` PROCEDURE `UpdateGps`()
BEGIN
	declare i int;
	set i=0;
  while i<128 do

		SELECT count(*) into @count FROM INFORMATION_SCHEMA.Columns
		WHERE table_schema= DATABASE() AND table_name=CONCAT('wp_clt_gps',i) AND column_name='accuracy';
		IF (@count=1)THEN
			SET @sqladd = CONCAT('alter table wp_clt_gps',i,' DROP COLUMN  accuracy , DROP COLUMN altitude , DROP COLUMN speed');
			PREPARE addcol FROM @sqladd;
			EXECUTE addcol;

			SET @sql = CONCAT('alter table wp_clt_gps',i,' ADD COLUMN  accuracy float(12, 1) NOT NULL DEFAULT 0.0, ADD COLUMN altitude float(12, 1) NOT NULL DEFAULT 0.0, ADD COLUMN speed float(12, 1) NOT NULL DEFAULT 0.0');
			PREPARE dropcol FROM @sql;
			EXECUTE dropcol;
		end if;
		if(@count=0) THEN
			SET @sql = CONCAT('alter table wp_clt_gps',i,' ADD COLUMN  accuracy float(12, 1) NOT NULL DEFAULT 0.0, ADD COLUMN altitude float(12, 1) NOT NULL DEFAULT 0.0, ADD COLUMN speed float(12, 1) NOT NULL DEFAULT 0.0');
			PREPARE addcol FROM @sql;
			EXECUTE addcol;
		end if;
		set i=i+1;
	end while;

END
//

Call UpdateGps();

SET FOREIGN_KEY_CHECKS = 1;


-- init neccessary data
INSERT INTO `spring`.`wp_users`(`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES (1, 'superroot', '$P$BjzPjuwyjEo4Be5yLnkacuMZgoI3Nq0', 'superroot', 'colorlight@lednets.com', '', '2019-01-01 00:00:00', '', 0, 'superroot');

INSERT INTO `spring`.`wp_terms`(`term_id`, `name`, `slug`, `term_group`) VALUES (1, 'root', 'root', 0);
INSERT INTO `spring`.`wp_terms`(`term_id`, `name`, `slug`, `term_group`) VALUES (2, 'root', 'root', 0);

INSERT INTO `spring`.`wp_term_taxonomy`(`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES (1, 1, 'terminalgroup', 'root', 0, 0);
INSERT INTO `spring`.`wp_term_taxonomy`(`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES (2, 2, 'organization', 'root', 0, 0);

INSERT INTO `spring`.`wp_termmeta`(`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES (1, 2, '_can_control_terminal_group', '[1]'); 

INSERT INTO `spring`.`wp_group_relationships`(`user_group_id`, `led_group_id`, `group_order`, `others`) VALUES (2, 1, 0, NULL);

INSERT INTO `spring`.`wp_term_relationships`(`object_id`, `term_taxonomy_id`, `term_order`) VALUES (1, 2, 0);

INSERT INTO `spring`.`wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (1, 1, 'nickname', 'root');
INSERT INTO `spring`.`wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (2, 1, 'first_name', '');
INSERT INTO `spring`.`wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (3, 1, 'last_name', '');
INSERT INTO `spring`.`wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (4, 1, 'description', '');
INSERT INTO `spring`.`wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (5, 1, 'rich_editing', 'true');
INSERT INTO `spring`.`wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (6, 1, 'comment_shortcuts', 'false');
INSERT INTO `spring`.`wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (7, 1, 'admin_color', 'fresh');
INSERT INTO `spring`.`wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (8, 1, 'use_ssl', '0');
INSERT INTO `spring`.`wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (9, 1, 'show_admin_bar_front', 'true');
INSERT INTO `spring`.`wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (10, 1, 'locale', '');
INSERT INTO `spring`.`wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (11, 1, 'wp_capabilities', '{\"administrator\":true}');
INSERT INTO `spring`.`wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (12, 1, 'wp_user_level', '10');
INSERT INTO `spring`.`wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (13, 1, 'dismissed_wp_pointers', '');
INSERT INTO `spring`.`wp_usermeta`(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (14, 1, 'show_welcome_panel', '1');


LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://han.colorlightcloud.com','yes'),(2,'home','http://han.colorlightcloud.com','yes'),(3,'blogname','colorlight','yes'),(4,'blogdescription','又一个WordPress站点','yes'),(5,'users_can_register','1','yes'),(6,'admin_email','hanxiaoxin@lednets.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','Y年n月j日','yes'),(24,'time_format','ag:i','yes'),(25,'links_updated_date_format','Y年n月j日ag:i','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/archives/%post_id%','yes'),(29,'rewrite_rules','{\"^wp-json/?$\":\"index.php?rest_route=/\",\"^wp-json/(.*)?\":\"index.php?rest_route=/$matches[1]\",\"^index.php/wp-json/?$\":\"index.php?rest_route=/\",\"^index.php/wp-json/(.*)?\":\"index.php?rest_route=/$matches[1]\",\"archives/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?category_name=$matches[1]&feed=$matches[2]\",\"archives/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?category_name=$matches[1]&feed=$matches[2]\",\"archives/category/(.+?)/embed/?$\":\"index.php?category_name=$matches[1]&embed=true\",\"archives/category/(.+?)/page/?([0-9]{1,})/?$\":\"index.php?category_name=$matches[1]&paged=$matches[2]\",\"archives/category/(.+?)/?$\":\"index.php?category_name=$matches[1]\",\"archives/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?tag=$matches[1]&feed=$matches[2]\",\"archives/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?tag=$matches[1]&feed=$matches[2]\",\"archives/tag/([^/]+)/embed/?$\":\"index.php?tag=$matches[1]&embed=true\",\"archives/tag/([^/]+)/page/?([0-9]{1,})/?$\":\"index.php?tag=$matches[1]&paged=$matches[2]\",\"archives/tag/([^/]+)/?$\":\"index.php?tag=$matches[1]\",\"archives/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?post_format=$matches[1]&feed=$matches[2]\",\"archives/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?post_format=$matches[1]&feed=$matches[2]\",\"archives/type/([^/]+)/embed/?$\":\"index.php?post_format=$matches[1]&embed=true\",\"archives/type/([^/]+)/page/?([0-9]{1,})/?$\":\"index.php?post_format=$matches[1]&paged=$matches[2]\",\"archives/type/([^/]+)/?$\":\"index.php?post_format=$matches[1]\",\"archives/author/terminalgroup/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?terminalgroup=$matches[1]&feed=$matches[2]\",\"archives/author/terminalgroup/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?terminalgroup=$matches[1]&feed=$matches[2]\",\"archives/author/terminalgroup/([^/]+)/embed/?$\":\"index.php?terminalgroup=$matches[1]&embed=true\",\"archives/author/terminalgroup/([^/]+)/page/?([0-9]{1,})/?$\":\"index.php?terminalgroup=$matches[1]&paged=$matches[2]\",\"archives/author/terminalgroup/([^/]+)/?$\":\"index.php?terminalgroup=$matches[1]\",\"archives/led/[^/]+/attachment/([^/]+)/?$\":\"index.php?attachment=$matches[1]\",\"archives/led/[^/]+/attachment/([^/]+)/trackback/?$\":\"index.php?attachment=$matches[1]&tb=1\",\"archives/led/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?attachment=$matches[1]&feed=$matches[2]\",\"archives/led/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?attachment=$matches[1]&feed=$matches[2]\",\"archives/led/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\":\"index.php?attachment=$matches[1]&cpage=$matches[2]\",\"archives/led/[^/]+/attachment/([^/]+)/embed/?$\":\"index.php?attachment=$matches[1]&embed=true\",\"archives/led/([^/]+)/embed/?$\":\"index.php?led=$matches[1]&embed=true\",\"archives/led/([^/]+)/trackback/?$\":\"index.php?led=$matches[1]&tb=1\",\"archives/led/([^/]+)/page/?([0-9]{1,})/?$\":\"index.php?led=$matches[1]&paged=$matches[2]\",\"archives/led/([^/]+)/comment-page-([0-9]{1,})/?$\":\"index.php?led=$matches[1]&cpage=$matches[2]\",\"archives/led/([^/]+)(?:/([0-9]+))?/?$\":\"index.php?led=$matches[1]&page=$matches[2]\",\"archives/led/[^/]+/([^/]+)/?$\":\"index.php?attachment=$matches[1]\",\"archives/led/[^/]+/([^/]+)/trackback/?$\":\"index.php?attachment=$matches[1]&tb=1\",\"archives/led/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?attachment=$matches[1]&feed=$matches[2]\",\"archives/led/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?attachment=$matches[1]&feed=$matches[2]\",\"archives/led/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\":\"index.php?attachment=$matches[1]&cpage=$matches[2]\",\"archives/led/[^/]+/([^/]+)/embed/?$\":\"index.php?attachment=$matches[1]&embed=true\",\"archives/author/attachmentgroup/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?attachmentgroup=$matches[1]&feed=$matches[2]\",\"archives/author/attachmentgroup/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?attachmentgroup=$matches[1]&feed=$matches[2]\",\"archives/author/attachmentgroup/([^/]+)/embed/?$\":\"index.php?attachmentgroup=$matches[1]&embed=true\",\"archives/author/attachmentgroup/([^/]+)/page/?([0-9]{1,})/?$\":\"index.php?attachmentgroup=$matches[1]&paged=$matches[2]\",\"archives/author/attachmentgroup/([^/]+)/?$\":\"index.php?attachmentgroup=$matches[1]\",\"archives/program/[^/]+/attachment/([^/]+)/?$\":\"index.php?attachment=$matches[1]\",\"archives/program/[^/]+/attachment/([^/]+)/trackback/?$\":\"index.php?attachment=$matches[1]&tb=1\",\"archives/program/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?attachment=$matches[1]&feed=$matches[2]\",\"archives/program/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?attachment=$matches[1]&feed=$matches[2]\",\"archives/program/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\":\"index.php?attachment=$matches[1]&cpage=$matches[2]\",\"archives/program/[^/]+/attachment/([^/]+)/embed/?$\":\"index.php?attachment=$matches[1]&embed=true\",\"archives/program/([^/]+)/embed/?$\":\"index.php?program=$matches[1]&embed=true\",\"archives/program/([^/]+)/trackback/?$\":\"index.php?program=$matches[1]&tb=1\",\"archives/program/([^/]+)/page/?([0-9]{1,})/?$\":\"index.php?program=$matches[1]&paged=$matches[2]\",\"archives/program/([^/]+)/comment-page-([0-9]{1,})/?$\":\"index.php?program=$matches[1]&cpage=$matches[2]\",\"archives/program/([^/]+)(?:/([0-9]+))?/?$\":\"index.php?program=$matches[1]&page=$matches[2]\",\"archives/program/[^/]+/([^/]+)/?$\":\"index.php?attachment=$matches[1]\",\"archives/program/[^/]+/([^/]+)/trackback/?$\":\"index.php?attachment=$matches[1]&tb=1\",\"archives/program/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?attachment=$matches[1]&feed=$matches[2]\",\"archives/program/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?attachment=$matches[1]&feed=$matches[2]\",\"archives/program/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\":\"index.php?attachment=$matches[1]&cpage=$matches[2]\",\"archives/program/[^/]+/([^/]+)/embed/?$\":\"index.php?attachment=$matches[1]&embed=true\",\"archives/author/pfolder/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?pfolder=$matches[1]&feed=$matches[2]\",\"archives/author/pfolder/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?pfolder=$matches[1]&feed=$matches[2]\",\"archives/author/pfolder/([^/]+)/embed/?$\":\"index.php?pfolder=$matches[1]&embed=true\",\"archives/author/pfolder/([^/]+)/page/?([0-9]{1,})/?$\":\"index.php?pfolder=$matches[1]&paged=$matches[2]\",\"archives/author/pfolder/([^/]+)/?$\":\"index.php?pfolder=$matches[1]\",\"archives/author/mfolder/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?mfolder=$matches[1]&feed=$matches[2]\",\"archives/author/mfolder/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?mfolder=$matches[1]&feed=$matches[2]\",\"archives/author/mfolder/([^/]+)/embed/?$\":\"index.php?mfolder=$matches[1]&embed=true\",\"archives/author/mfolder/([^/]+)/page/?([0-9]{1,})/?$\":\"index.php?mfolder=$matches[1]&paged=$matches[2]\",\"archives/author/mfolder/([^/]+)/?$\":\"index.php?mfolder=$matches[1]\",\"archives/author/online/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?mshare=$matches[1]&feed=$matches[2]\",\"archives/author/online/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?mshare=$matches[1]&feed=$matches[2]\",\"archives/author/online/([^/]+)/embed/?$\":\"index.php?mshare=$matches[1]&embed=true\",\"archives/author/online/([^/]+)/page/?([0-9]{1,})/?$\":\"index.php?mshare=$matches[1]&paged=$matches[2]\",\"archives/author/online/([^/]+)/?$\":\"index.php?mshare=$matches[1]\",\"archives/author/terminal/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?terminal=$matches[1]&feed=$matches[2]\",\"archives/author/terminal/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?terminal=$matches[1]&feed=$matches[2]\",\"archives/author/terminal/([^/]+)/embed/?$\":\"index.php?terminal=$matches[1]&embed=true\",\"archives/author/terminal/([^/]+)/page/?([0-9]{1,})/?$\":\"index.php?terminal=$matches[1]&paged=$matches[2]\",\"archives/author/terminal/([^/]+)/?$\":\"index.php?terminal=$matches[1]\",\"archives/author/organization/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?organization=$matches[1]&feed=$matches[2]\",\"archives/author/organization/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?organization=$matches[1]&feed=$matches[2]\",\"archives/author/organization/([^/]+)/embed/?$\":\"index.php?organization=$matches[1]&embed=true\",\"archives/author/organization/([^/]+)/page/?([0-9]{1,})/?$\":\"index.php?organization=$matches[1]&paged=$matches[2]\",\"archives/author/organization/([^/]+)/?$\":\"index.php?organization=$matches[1]\",\"robots\\.txt$\":\"index.php?robots=1\",\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\":\"index.php?feed=old\",\".*wp-app\\.php(/.*)?$\":\"index.php?error=403\",\".*wp-register.php$\":\"index.php?register=true\",\"feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?&feed=$matches[1]\",\"(feed|rdf|rss|rss2|atom)/?$\":\"index.php?&feed=$matches[1]\",\"embed/?$\":\"index.php?&embed=true\",\"page/?([0-9]{1,})/?$\":\"index.php?&paged=$matches[1]\",\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?&feed=$matches[1]&withcomments=1\",\"comments/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?&feed=$matches[1]&withcomments=1\",\"comments/embed/?$\":\"index.php?&embed=true\",\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?s=$matches[1]&feed=$matches[2]\",\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?s=$matches[1]&feed=$matches[2]\",\"search/(.+)/embed/?$\":\"index.php?s=$matches[1]&embed=true\",\"search/(.+)/page/?([0-9]{1,})/?$\":\"index.php?s=$matches[1]&paged=$matches[2]\",\"search/(.+)/?$\":\"index.php?s=$matches[1]\",\"archives/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?author_name=$matches[1]&feed=$matches[2]\",\"archives/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?author_name=$matches[1]&feed=$matches[2]\",\"archives/author/([^/]+)/embed/?$\":\"index.php?author_name=$matches[1]&embed=true\",\"archives/author/([^/]+)/page/?([0-9]{1,})/?$\":\"index.php?author_name=$matches[1]&paged=$matches[2]\",\"archives/author/([^/]+)/?$\":\"index.php?author_name=$matches[1]\",\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\",\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\",\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\":\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\",\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\":\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\",\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\":\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\",\"archives/date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\",\"archives/date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\",\"archives/date/([0-9]{4})/([0-9]{1,2})/embed/?$\":\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\",\"archives/date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\":\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\",\"archives/date/([0-9]{4})/([0-9]{1,2})/?$\":\"index.php?year=$matches[1]&monthnum=$matches[2]\",\"archives/date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?year=$matches[1]&feed=$matches[2]\",\"archives/date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?year=$matches[1]&feed=$matches[2]\",\"archives/date/([0-9]{4})/embed/?$\":\"index.php?year=$matches[1]&embed=true\",\"archives/date/([0-9]{4})/page/?([0-9]{1,})/?$\":\"index.php?year=$matches[1]&paged=$matches[2]\",\"archives/date/([0-9]{4})/?$\":\"index.php?year=$matches[1]\",\"archives/[0-9]+/attachment/([^/]+)/?$\":\"index.php?attachment=$matches[1]\",\"archives/[0-9]+/attachment/([^/]+)/trackback/?$\":\"index.php?attachment=$matches[1]&tb=1\",\"archives/[0-9]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?attachment=$matches[1]&feed=$matches[2]\",\"archives/[0-9]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?attachment=$matches[1]&feed=$matches[2]\",\"archives/[0-9]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\":\"index.php?attachment=$matches[1]&cpage=$matches[2]\",\"archives/[0-9]+/attachment/([^/]+)/embed/?$\":\"index.php?attachment=$matches[1]&embed=true\",\"archives/([0-9]+)/embed/?$\":\"index.php?p=$matches[1]&embed=true\",\"archives/([0-9]+)/trackback/?$\":\"index.php?p=$matches[1]&tb=1\",\"archives/([0-9]+)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?p=$matches[1]&feed=$matches[2]\",\"archives/([0-9]+)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?p=$matches[1]&feed=$matches[2]\",\"archives/([0-9]+)/page/?([0-9]{1,})/?$\":\"index.php?p=$matches[1]&paged=$matches[2]\",\"archives/([0-9]+)/comment-page-([0-9]{1,})/?$\":\"index.php?p=$matches[1]&cpage=$matches[2]\",\"archives/([0-9]+)(?:/([0-9]+))?/?$\":\"index.php?p=$matches[1]&page=$matches[2]\",\"archives/[0-9]+/([^/]+)/?$\":\"index.php?attachment=$matches[1]\",\"archives/[0-9]+/([^/]+)/trackback/?$\":\"index.php?attachment=$matches[1]&tb=1\",\"archives/[0-9]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?attachment=$matches[1]&feed=$matches[2]\",\"archives/[0-9]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?attachment=$matches[1]&feed=$matches[2]\",\"archives/[0-9]+/([^/]+)/comment-page-([0-9]{1,})/?$\":\"index.php?attachment=$matches[1]&cpage=$matches[2]\",\"archives/[0-9]+/([^/]+)/embed/?$\":\"index.php?attachment=$matches[1]&embed=true\",\".?.+?/attachment/([^/]+)/?$\":\"index.php?attachment=$matches[1]\",\".?.+?/attachment/([^/]+)/trackback/?$\":\"index.php?attachment=$matches[1]&tb=1\",\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?attachment=$matches[1]&feed=$matches[2]\",\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?attachment=$matches[1]&feed=$matches[2]\",\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\":\"index.php?attachment=$matches[1]&cpage=$matches[2]\",\".?.+?/attachment/([^/]+)/embed/?$\":\"index.php?attachment=$matches[1]&embed=true\",\"(.?.+?)/embed/?$\":\"index.php?pagename=$matches[1]&embed=true\",\"(.?.+?)/trackback/?$\":\"index.php?pagename=$matches[1]&tb=1\",\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?pagename=$matches[1]&feed=$matches[2]\",\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\":\"index.php?pagename=$matches[1]&feed=$matches[2]\",\"(.?.+?)/page/?([0-9]{1,})/?$\":\"index.php?pagename=$matches[1]&paged=$matches[2]\",\"(.?.+?)/comment-page-([0-9]{1,})/?$\":\"index.php?pagename=$matches[1]&cpage=$matches[2]\",\"(.?.+?)(?:/([0-9]+))?/?$\":\"index.php?pagename=$matches[1]&page=$matches[2]\"}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','{\"0\":\"Basic-Auth/basic-auth.php\",\"1\":\"clt-Doc/clt-Doc.php\",\"2\":\"clt-camera/clt-camera.php\",\"3\":\"clt-cap/clt-cap.php\",\"4\":\"clt-common/common.php\",\"5\":\"clt-flowfee/clt-flowfee.php\",\"6\":\"clt-function/clt-function.php\",\"7\":\"clt-group-relationships/clt_group_relationships.php\",\"8\":\"clt-internet-account/clt-internet-account.php\",\"9\":\"clt-ledmonitor/clt-ledmonitor.php\",\"10\":\"clt-leds/clt-leds.php\",\"11\":\"clt-program/clt-program.php\",\"12\":\"clt-role/clt-role.php\",\"13\":\"clt-terminal-log/clt-terminal-log.php\",\"14\":\"clt-terminal/clt-terminal.php\",\"15\":\"clt-user-group/clt-terminal-group.php\",\"16\":\"clt-user-group/clt-user-group.php\",\"17\":\"disable-google-fonts/disable-google-fonts.php\",\"19\":\"wp-force-login/wp-force-login.php\"}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','twentysixteen-child2','yes'),(41,'stylesheet','twentysixteen-child2','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','terminal','yes'),(48,'db_version','38590','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','1','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','posts','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','[]','yes'),(78,'widget_categories','{\"2\":{\"title\":\"\",\"count\":0,\"hierarchical\":0,\"dropdown\":0},\"_multiwidget\":1}','yes'),(79,'widget_text','[]','yes'),(80,'widget_rss','[]','yes'),(81,'uninstall_plugins','[]','no'),(82,'timezone_string','Asia/Shanghai','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','0','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'initial_db_version','38590','yes'),(92,'wp_user_roles','{\"administrator\":{\"name\":\"Administrator\",\"capabilities\":{\"switch_themes\":true,\"edit_themes\":true,\"activate_plugins\":true,\"edit_plugins\":true,\"edit_users\":true,\"edit_files\":true,\"manage_options\":true,\"moderate_comments\":true,\"manage_categories\":true,\"manage_links\":true,\"upload_files\":true,\"import\":true,\"unfiltered_html\":true,\"edit_posts\":true,\"edit_others_posts\":true,\"edit_published_posts\":true,\"publish_posts\":true,\"edit_pages\":true,\"read\":true,\"level_10\":true,\"level_9\":true,\"level_8\":true,\"level_7\":true,\"level_6\":true,\"level_5\":true,\"level_4\":true,\"level_3\":true,\"level_2\":true,\"level_1\":true,\"level_0\":true,\"edit_others_pages\":true,\"edit_published_pages\":true,\"publish_pages\":true,\"delete_pages\":true,\"delete_others_pages\":true,\"delete_published_pages\":true,\"delete_posts\":true,\"delete_others_posts\":true,\"delete_published_posts\":true,\"delete_private_posts\":true,\"edit_private_posts\":true,\"read_private_posts\":true,\"delete_private_pages\":true,\"edit_private_pages\":true,\"read_private_pages\":true,\"delete_users\":true,\"create_users\":true,\"unfiltered_upload\":true,\"edit_dashboard\":true,\"update_plugins\":true,\"delete_plugins\":true,\"install_plugins\":true,\"update_themes\":true,\"install_themes\":true,\"update_core\":true,\"list_users\":true,\"remove_users\":true,\"promote_users\":true,\"edit_theme_options\":true,\"delete_themes\":true,\"export\":true,\"read_terminalgroups\":true,\"create_terminalgroups\":true,\"edit_terminalgroups\":true,\"delete_terminalgroups\":true,\"assign_terminalgroups\":true,\"manage_terminalgroups\":true,\"create_leds\":true,\"delete_leds\":true,\"delete_others_leds\":true,\"delete_published_leds\":true,\"edit_leds\":true,\"edit_others_leds\":true,\"edit_published_leds\":true,\"publish_leds\":true,\"create_programs\":true,\"delete_others_programs\":true,\"delete_programs\":true,\"delete_published_programs\":true,\"edit_others_programs\":true,\"edit_programs\":true,\"edit_published_programs\":true,\"publish_programs\":true,\"add_comments\":true,\"edit_terms\":true,\"manage_attachmentlables\":true,\"edit_attachmentlables\":true,\"delete_attachmentlable\":true,\"assign_attachmentlable\":true,\"manage_pfolders\":true,\"edit_pfolders\":true,\"delete_pfolders\":true,\"assign_pfolders\":true,\"manage_mfolders\":true,\"edit_mfolders\":true,\"delete_mfolders\":true,\"assign_mfolders\":true,\"edit_post\":true,\"edit_settings\":true,\"read_post\":true,\"delete_post\":true,\"read_logs\":true,\"1\":true}},\"editor\":{\"name\":\"Editor\",\"capabilities\":{\"moderate_comments\":true,\"manage_categories\":true,\"manage_links\":true,\"upload_files\":true,\"unfiltered_html\":true,\"edit_posts\":true,\"edit_others_posts\":true,\"edit_published_posts\":true,\"publish_posts\":true,\"edit_pages\":true,\"read\":true,\"level_7\":true,\"level_6\":true,\"level_5\":true,\"level_4\":true,\"level_3\":true,\"level_2\":true,\"level_1\":true,\"level_0\":true,\"edit_others_pages\":true,\"edit_published_pages\":true,\"publish_pages\":true,\"delete_pages\":true,\"delete_others_pages\":true,\"delete_published_pages\":true,\"delete_posts\":true,\"delete_others_posts\":true,\"delete_published_posts\":true,\"delete_private_posts\":true,\"edit_private_posts\":true,\"read_private_posts\":true,\"delete_private_pages\":true,\"edit_private_pages\":true,\"read_private_pages\":true,\"read_terminalgroups\":true,\"create_terminalgroups\":true,\"edit_terminalgroups\":true,\"delete_terminalgroups\":true,\"assign_terminalgroups\":true,\"manage_terminalgroups\":true,\"create_users\":true,\"delete_users\":true,\"list_users\":true,\"create_leds\":true,\"delete_leds\":true,\"delete_others_leds\":true,\"delete_published_leds\":true,\"edit_leds\":true,\"edit_others_leds\":true,\"edit_published_leds\":true,\"publish_leds\":true,\"create_programs\":true,\"delete_others_programs\":true,\"delete_programs\":true,\"delete_published_programs\":true,\"edit_others_programs\":true,\"edit_programs\":true,\"edit_published_programs\":true,\"publish_programs\":true,\"add_comments\":true,\"manage_options\":true,\"manage_attachmentlables\":true,\"edit_attachmentlables\":true,\"delete_attachmentlable\":true,\"assign_attachmentlable\":true,\"manage_pfolders\":true,\"edit_pfolders\":true,\"delete_pfolders\":true,\"assign_pfolders\":true,\"manage_mfolders\":true,\"edit_mfolders\":true,\"delete_mfolders\":true,\"assign_mfolders\":true,\"edit_post\":true,\"read_post\":true,\"delete_post\":true,\"read_logs\":true,\"1\":true}},\"author\":{\"name\":\"Author\",\"capabilities\":{\"upload_files\":true,\"edit_posts\":true,\"edit_published_posts\":true,\"publish_posts\":true,\"read\":true,\"level_2\":true,\"level_1\":true,\"level_0\":true,\"delete_posts\":true,\"delete_published_posts\":true,\"read_terminalgroups\":true,\"create_terminalgroups\":true,\"edit_terminalgroups\":true,\"delete_terminalgroups\":true,\"assign_terminalgroups\":true,\"manage_terminalgroups\":true,\"moderate_comments\":true,\"delete_others_posts\":true,\"edit_others_posts\":true,\"list_users\":true,\"create_leds\":true,\"delete_leds\":true,\"delete_others_leds\":true,\"delete_published_leds\":true,\"edit_leds\":true,\"edit_others_leds\":true,\"edit_published_leds\":true,\"publish_leds\":true,\"create_programs\":true,\"delete_others_programs\":true,\"delete_programs\":true,\"delete_published_programs\":true,\"edit_others_programs\":true,\"edit_programs\":true,\"edit_published_programs\":true,\"publish_programs\":true,\"add_comments\":true,\"manage_options\":true,\"manage_attachmentlables\":true,\"edit_attachmentlables\":true,\"delete_attachmentlable\":true,\"assign_attachmentlable\":true,\"manage_pfolders\":true,\"edit_pfolders\":true,\"delete_pfolders\":true,\"assign_pfolders\":true,\"manage_mfolders\":true,\"edit_mfolders\":true,\"delete_mfolders\":true,\"assign_mfolders\":true,\"edit_post\":true,\"create_users\":true,\"read_post\":true,\"delete_post\":true,\"read_logs\":true,\"1\":true}},\"contributor\":{\"name\":\"Contributor\",\"capabilities\":{\"edit_posts\":true,\"read\":true,\"level_1\":true,\"level_0\":true,\"delete_posts\":true,\"upload_files\":true,\"create_programs\":true,\"delete_others_programs\":true,\"delete_programs\":true,\"edit_others_programs\":true,\"edit_programs\":true,\"manage_attachmentlables\":true,\"edit_attachmentlables\":true,\"delete_attachmentlable\":true,\"assign_attachmentlable\":true,\"manage_pfolders\":true,\"edit_pfolders\":true,\"delete_pfolders\":true,\"assign_pfolders\":true,\"manage_mfolders\":true,\"edit_mfolders\":true,\"delete_mfolders\":true,\"assign_mfolders\":true,\"edit_post\":true,\"read_post\":true,\"delete_post\":true,\"1\":true}},\"subscriber\":{\"name\":\"Subscriber\",\"capabilities\":{\"read\":true,\"level_0\":true,\"1\":true}},\"terminal\":{\"name\":\"Terminal\",\"capabilities\":{\"read\":true,\"edit_others_posts\":true}},\"invitee\":{\"name\":\"invitee\",\"capabilities\":{\"read\":true,\"edit_others_posts\":true}},\"supervisor\":{\"name\":\"supervisor\",\"capabilities\":{\"read\":true,\"edit_others_posts\":true}},\"auditor\":{\"name\":\"Auditor\",\"capabilities\":{\"read\":true,\"edit_others_posts\":true}},\"manager\":{\"name\":\"Manager\",\"capabilities\":{\"read\":true,\"edit_others_posts\":true}}}','yes'),(93,'fresh_site','1','yes'),(94,'WPLANG','','yes'),(95,'widget_search','{\"2\":{\"title\":\"\"},\"_multiwidget\":1}','yes'),(96,'widget_recent-posts','{\"2\":{\"title\":\"\",\"number\":5},\"_multiwidget\":1}','yes'),(97,'widget_recent-comments','{\"2\":{\"title\":\"\",\"number\":5},\"_multiwidget\":1}','yes'),(98,'widget_archives','{\"2\":{\"title\":\"\",\"count\":0,\"dropdown\":0},\"_multiwidget\":1}','yes'),(99,'widget_meta','{\"2\":{\"title\":\"\"},\"_multiwidget\":1}','yes'),(100,'sidebars_widgets','{\"wp_inactive_widgets\":[],\"sidebar-1\":[\"search-2\",\"recent-posts-2\",\"recent-comments-2\",\"archives-2\",\"categories-2\",\"meta-2\"],\"sidebar-2\":[],\"sidebar-3\":[],\"array_version\":3}','yes'),(101,'widget_pages','{\"_multiwidget\":1}','yes'),(102,'widget_calendar','{\"_multiwidget\":1}','yes'),(103,'widget_tag_cloud','{\"_multiwidget\":1}','yes'),(104,'widget_nav_menu','{\"_multiwidget\":1}','yes'),(105,'can_compress_scripts','0','no'),(106,'recently_activated','{\"redis-cache/redis-cache.php\":1569292744}','yes'),(107,'terminalgroup_children','[]','yes'),(108,'organization_children','[]','yes'),(109,'zh_cn_l10n_icp_num','','yes'),(110,'lightcontrol','','yes'),(112,'siteTitle','','yes'),(113,'siteBackground','','yes'),(114,'siteLogo','','yes'),(115,'site_meta','','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;
