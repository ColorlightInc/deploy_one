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

 Date: 20/10/2020 14:14:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wp_media_play_record
-- ----------------------------
DROP TABLE IF EXISTS `wp_media_play_record`;
CREATE TABLE `wp_media_play_record`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `led_id` int(11) NOT NULL COMMENT '设备id',
  `media_id` int(11) NOT NULL COMMENT '素材id',
  `area_id` int(11) NOT NULL COMMENT '区域id',
  `start_timestamp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '素材播放的开始时间戳',
  `end_timestamp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '素材播放的结束时间戳',
  `duration` int(255) NOT NULL COMMENT '素材的播放时长',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
