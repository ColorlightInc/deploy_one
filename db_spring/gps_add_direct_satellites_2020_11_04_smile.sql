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

 Date: 2020年11月4日 09点39分
*/

use `smile`;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DELIMITER //
Drop PROCEDURE if exists ADDGPSCLOLMN;
CREATE PROCEDURE ADDGPSCLOLMN()

BEGIN
	declare i int;
	set i=0;
  while i<128 do

		SELECT count(*) into @count FROM INFORMATION_SCHEMA.Columns
		WHERE table_schema= DATABASE() AND table_name=CONCAT('wp_clt_gps',i) AND column_name='satellites';
		IF (@count=1)THEN
			SET @sqladd = CONCAT('alter table wp_clt_gps',i,' DROP COLUMN  direct , DROP COLUMN satellites');
			PREPARE addcol FROM @sqladd;
			EXECUTE addcol;

			SET @sql = CONCAT('alter table wp_clt_gps',i,' ADD COLUMN  direct float(12, 1) NOT NULL DEFAULT 0.0, ADD COLUMN satellites int NOT NULL DEFAULT 0');
			PREPARE dropcol FROM @sql;
			EXECUTE dropcol;
		end if;
		if(@count=0) THEN
			SET @sql = CONCAT('alter table wp_clt_gps',i,' ADD COLUMN  direct float(12, 1) NOT NULL DEFAULT 0.0, ADD COLUMN satellites int NOT NULL DEFAULT 0');
			PREPARE addcol FROM @sql;
			EXECUTE addcol;
		end if;
		set i=i+1;
	end while;

END
//
DELIMITER ;

CALL ADDGPSCLOLMN();

SET FOREIGN_KEY_CHECKS = 1;
