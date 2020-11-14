/*
 Date: 2020年9月29日
*/
use `spring`;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wp_terminal_custom_tag_record
-- ----------------------------
DROP TABLE IF EXISTS `wp_terminal_custom_tag_record`;
CREATE TABLE `wp_terminal_custom_tag_record`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(10) NULL DEFAULT NULL COMMENT '用户id',
  `terminal_id` int(10) NULL DEFAULT NULL COMMENT '终端id',
  `custom_tag_id` int(10) NULL DEFAULT NULL COMMENT '自定义标签id',
  `created_time` int(10) NULL DEFAULT 0 COMMENT '贴标签时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id_terminal_id_custom_tag_id`(`user_id`, `terminal_id`, `custom_tag_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for clt_region_task
-- ----------------------------
DROP TABLE IF EXISTS `clt_region_task`;
CREATE TABLE `clt_region_task`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '区域任务表主键',
  `task_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `task_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务描述',
  `task_user_id` int(11) NULL DEFAULT NULL COMMENT '任务作者',
  `task_create_datetime` datetime(0) NULL DEFAULT NULL COMMENT '任务创建时间',
  `task_update_datetime` datetime(0) NULL DEFAULT NULL COMMENT '任务更新时间',
  `task_status` tinyint(255) NULL DEFAULT 0 COMMENT '任务状态，-1表示删除，0表示未启动，1表示启动',
  `task_elimination_strategy` tinyint(255) NULL DEFAULT NULL COMMENT '淘汰策略选择，预留',
  `task_active_hour_start` int(255) NULL DEFAULT NULL COMMENT '任务活跃时间开始限制，0时区的当天小时数',
  `task_active_hour_end` int(255) NULL DEFAULT NULL COMMENT '任务活跃时间结束限制，0时区的当天小时数',
  `probe_radius` int(255) NULL DEFAULT NULL COMMENT '探测的半径,单位m',
  `in_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '进入区域时任务类型',
  `in_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '进入区域任务时内容',
  `in_weight` int(255) NULL DEFAULT 0 COMMENT '进入区域任务时权重',
  `out_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出区域时任务类型',
  `out_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '出区域时任务内容',
  `out_weight` int(255) NULL DEFAULT 0 COMMENT '出区域时任务权重',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for clt_task_area
-- ----------------------------
DROP TABLE IF EXISTS `clt_task_area`;
CREATE TABLE `clt_task_area`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NULL DEFAULT NULL,
  `area_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `index_task_area`(`task_id`, `area_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_gps_event
-- ----------------------------
DROP TABLE IF EXISTS `wp_gps_event`;
CREATE TABLE `wp_gps_event`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `location_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gps` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `baidu_gps` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for clt_terminal_group_task
-- ----------------------------
DROP TABLE IF EXISTS `clt_terminal_group_task`;
CREATE TABLE `clt_terminal_group_task`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `terminal_group_id` int(11) NULL DEFAULT NULL,
  `task_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `index_group_task`(`terminal_group_id`, `task_id`) USING BTREE COMMENT '终端区域任务关系表'
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for clt_terminal_task
-- ----------------------------
DROP TABLE IF EXISTS `clt_terminal_task`;
CREATE TABLE `clt_terminal_task`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `terminal_id` int(11) NULL DEFAULT NULL,
  `task_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `index_led_task`(`terminal_id`, `task_id`) USING BTREE COMMENT '终端区域任务关系表'
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;