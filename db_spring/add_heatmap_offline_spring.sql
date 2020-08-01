/*
 Date: 01/08/2020 10:38:35
*/
use `spring`;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clt_heat_map_count
-- ----------------------------
DROP TABLE IF EXISTS `clt_heat_map_count`;
CREATE TABLE `clt_heat_map_count`  (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `heat_map_search_index` bigint(20) NOT NULL COMMENT 'clt_heat_map_search_index表主键',
  `gps_lng_range` decimal(10, 5) NOT NULL COMMENT 'gps经度范围',
  `gps_lat_range` decimal(10, 5) NOT NULL COMMENT 'gps维度范围',
  `count` bigint(20) NULL DEFAULT NULL COMMENT '数量统计',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `heat_map_count_update_index`(`heat_map_search_index`, `gps_lng_range`, `gps_lat_range`) USING BTREE COMMENT '更新count的查询索引'
) ENGINE = InnoDB AUTO_INCREMENT = 889 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for clt_heat_map_search_index
-- ----------------------------
DROP TABLE IF EXISTS `clt_heat_map_search_index`;
CREATE TABLE `clt_heat_map_search_index`  (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) NULL DEFAULT NULL COMMENT '终端组ID',
  `date` date NULL DEFAULT NULL,
  `hour_num` tinyint(2) NULL DEFAULT -1 COMMENT '表示一天的第几个小时',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 250 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for device_offline_record
-- ----------------------------
DROP TABLE IF EXISTS `device_offline_record`;
CREATE TABLE `device_offline_record`  (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NOT NULL COMMENT '终端id',
  `start_timestamp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '某天0:00对应的时间戳',
  `offline_time` bigint(20) NOT NULL COMMENT '离线时长，单位s',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `postId_startTimestamp`(`post_id`, `start_timestamp`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3150 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;