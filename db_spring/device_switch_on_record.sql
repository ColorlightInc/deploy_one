/*
 Navicat Premium Data Transfer

 Source Server         : 83
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : 192.168.1.83:3306
 Source Schema         : spring

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 14/10/2020 21:04:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for device_switch_on_record
-- ----------------------------
DROP TABLE IF EXISTS `device_switch_on_record`;
CREATE TABLE `device_switch_on_record`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL COMMENT '设备id',
  `switch_on_utc` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '开机的utc时间戳',
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
