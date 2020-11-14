/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.1.83
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : 192.168.1.83:3306
 Source Schema         : spring

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 27/10/2020 21:12:04
*/
use `spring`;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clt_permission
-- ----------------------------
DROP TABLE IF EXISTS `clt_permission`;
CREATE TABLE `clt_permission`  (
  `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `auth_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `auth_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `auth_parent_id` int(11) NULL DEFAULT NULL,
  `auth_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `auth_module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for clt_role
-- ----------------------------
DROP TABLE IF EXISTS `clt_role`;
CREATE TABLE `clt_role`  (
  `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role_creator_id` int(11) NOT NULL,
  `role_parent_id` int(11) NOT NULL,
  `role_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role_sort` int(11) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for clt_role_conflict
-- ----------------------------
DROP TABLE IF EXISTS `clt_role_conflict`;
CREATE TABLE `clt_role_conflict`  (
  `role_id` int(11) NOT NULL,
  `role_conflict_id` int(11) NOT NULL,
  UNIQUE INDEX `rela_role_conflict`(`role_id`, `role_conflict_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for clt_role_dependency
-- ----------------------------
DROP TABLE IF EXISTS `clt_role_dependency`;
CREATE TABLE `clt_role_dependency`  (
  `role_id` int(11) NOT NULL,
  `role_dependency_id` int(11) NOT NULL,
  UNIQUE INDEX `rela_role_dependency`(`role_id`, `role_dependency_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for clt_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `clt_role_permission`;
CREATE TABLE `clt_role_permission`  (
  `role_id` int(11) UNSIGNED NOT NULL,
  `permission_id` int(11) UNSIGNED NOT NULL,
  `necessary` tinyint(1) UNSIGNED NULL DEFAULT 0,
  UNIQUE INDEX `rela_role_auth`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for clt_user_role
-- ----------------------------
DROP TABLE IF EXISTS `clt_user_role`;
CREATE TABLE `clt_user_role`  (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  UNIQUE INDEX `rela_user_role`(`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;