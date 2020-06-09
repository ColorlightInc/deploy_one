# deploy_one
## 脚本说明
### 全新系统
1. `sudo ./deploy_one_cloud.sh ip port`
### php老数据迁移
1. `sudo ./deploy_one_cloud.sh ip port`
2. 挂载旧数据(`uploads` 和 `database`)
3. `sudo ./unserialize_ccloud.sh`

## 修改记录
> ***2020年5月22日***
>> `nginx/ssl_myconf.conf`,`nginx/myconf.conf`
>>> 增加代理获取截图的配置

> ***2020年5月21日***
>> 新增`db_spring/update_lining_gps_tag_ccloud.sql`
>>> - 增加李宁表`device_status`,`device_info`
>>> - 增加素材标签表`wp_media_custom_tag_record`,`wp_custom_tag`
>>> - 增加素材分享表`wp_share_relationships`,`wp_media_share_record`
>>> - 增加节目特性表`wp_program_feature`
>>> - 增减GPS分表字段

>> 新增`add_tables_lining_gps_tag_share_ccloud.sh`建表脚本

>> `app/application.yml`增减配置项
>>> `camera-shot.clean.time-range: 10`

> ***2020年3月30日***
>> `deploy_one_cloud.sh`
>>> 删除睡眠300s，增加重启one-mysql

>> `ws/application.yml`
>>> 增加websocket配置文件

>> `redis/application.yml`
>>> 增加redis配置文件 

>> unserialize
>>> - 修改节目中间表转换脚本,增加一种新格式的转换: {"index":"id"}
>>> - `unserialize/ccloud_parse_program_relationships_table.php`
>>> - `unserialize/spring_parse_program_relationships_table.php`




> ***2020年3月23日***
>> `deploy_one_cloud.sh`
>>> 运行one-mysql后增加睡眠300s,等待one-mysql初始化

>> `nginx/myconf.conf`
>>> 增加天气请求转发

>> `nginx/ssl_myconf.conf`
>>> 增加雅虎天气请求转发

> ***2020年3月20日***
>> `application.yml`
>>> - 增加`device.report.time`
>>> - 增加`request.check.timeout`
>>> - 修改日志级别

>> unserialize
>>> - 增加将_terminal_group和_terminal_led解析到新的节目关系表(wp_group_program,wp_terminal_program)的脚本
>>> - `unserialize/ccloud_parse_program_relationships_table.php`
>>> - `unserialize/spring_parse_program_relationships_table.php`

>> db_spring
>>> `db_spring/fetch_unserialize_ccloud.sql`增加节目关系表的创建
>>> `db_spring/spring.sql`增加节目关系表的创建

>> `deploy_one_cloud.sh`
>>> 增加解析节目关系的语句

>> `unserialize_ccloud.sh`
>>> 增加解析节目关系的语句
