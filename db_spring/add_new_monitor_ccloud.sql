use `ccloud`;

-- 存储过程用于创建wp_clt_noise的128张表
DELIMITER //
DROP PROCEDURE IF EXISTS createTable;
CREATE PROCEDURE createTable ()
BEGIN
	DECLARE table_prefix_noise VARCHAR ( 30 );
	DECLARE table_number INT DEFAULT 0;
	DECLARE table_name VARCHAR ( 30 );
	DECLARE sql_text1 VARCHAR ( 2000 );
	SET table_prefix_noise = 'wp_clt_noise';
	WHILE
			table_number < 128 DO

		SET table_name = CONCAT( table_prefix_noise, table_number );
		SET @sql_text1 = CONCAT('CREATE TABLE ', table_name, ' (
			`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
			`led_id` int(11) NOT NULL,
			`sensorId` int(3) NOT NULL DEFAULT \'1\',
			`sensorType` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
			`sensorValue` float NOT NULL,
			`date` datetime NOT NULL,
			`server_time` datetime NOT NULL,
			PRIMARY KEY (`id`) USING BTREE,
			KEY `monitor_ledid` (`led_id`) USING BTREE
		) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC' );
		PREPARE stmt FROM @sql_text1;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;

		SET table_number = table_number + 1;
	END WHILE;

END //
DELIMITER ;
CALL createTable ();


-- 存储过程用于创建wp_clt_pm25的128张表
DELIMITER //
DROP PROCEDURE IF EXISTS createTablePm25;
CREATE PROCEDURE createTablePm25 ()
BEGIN
	DECLARE table_prefix_noise VARCHAR ( 30 );
	DECLARE table_number INT DEFAULT 0;
	DECLARE table_name VARCHAR ( 30 );
	DECLARE sql_text1 VARCHAR ( 2000 );
	SET table_prefix_noise = 'wp_clt_pm25_';
	WHILE
			table_number < 128 DO

		SET table_name = CONCAT( table_prefix_noise, table_number );
		SET @sql_text1 = CONCAT('CREATE TABLE ', table_name, ' (
			`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
			`led_id` int(11) NOT NULL,
			`sensorId` int(3) NOT NULL DEFAULT \'1\',
			`sensorType` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
			`sensorValue` float NOT NULL,
			`date` datetime NOT NULL,
			`server_time` datetime NOT NULL,
			PRIMARY KEY (`id`) USING BTREE,
			KEY `monitor_ledid` (`led_id`) USING BTREE
		) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC' );
		PREPARE stmt FROM @sql_text1;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;

		SET table_number = table_number + 1;
	END WHILE;

END //
DELIMITER ;
CALL createTablePm25 ();

-- 存储过程用于创建wp_clt_pm10的128张表
DELIMITER //
DROP PROCEDURE IF EXISTS createTablePm10;
CREATE PROCEDURE createTablePm10 ()
BEGIN
	DECLARE table_prefix_noise VARCHAR ( 30 );
	DECLARE table_number INT DEFAULT 0;
	DECLARE table_name VARCHAR ( 30 );
	DECLARE sql_text1 VARCHAR ( 2000 );
	SET table_prefix_noise = 'wp_clt_pm10_';
	WHILE
			table_number < 128 DO

		SET table_name = CONCAT( table_prefix_noise, table_number );
		SET @sql_text1 = CONCAT('CREATE TABLE ', table_name, ' (
			`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
			`led_id` int(11) NOT NULL,
			`sensorId` int(3) NOT NULL DEFAULT \'1\',
			`sensorType` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
			`sensorValue` float NOT NULL,
			`date` datetime NOT NULL,
			`server_time` datetime NOT NULL,
			PRIMARY KEY (`id`) USING BTREE,
			KEY `monitor_ledid` (`led_id`) USING BTREE
		) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC' );
		PREPARE stmt FROM @sql_text1;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;

		SET table_number = table_number + 1;
	END WHILE;

END //
DELIMITER ;
CALL createTablePm10 ();