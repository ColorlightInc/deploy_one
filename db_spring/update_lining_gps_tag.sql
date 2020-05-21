SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
  `mvh_media_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '节目中视频最大高对应的素材名',
  `mvw_media_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '节目中视频最大高对应的素材名',
  `mvr_media_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '节目中视频最大高对应的素材名',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_programId`(`id`, `post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 931 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

UpdateGps();

SET FOREIGN_KEY_CHECKS = 1;


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