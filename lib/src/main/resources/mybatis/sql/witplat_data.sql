USE `witplat`;

/*Data for the table `t_menu` */
LOCK TABLES `t_menu` WRITE;
insert  into `t_menu`(`Id`,`name`,`href`,`permission`,`type`,`sort`,`parent_id`,`icon`) values (1,'会员管理','/sys/member','',0,1,-1,'/upload/2017/04/24/navigation-usermanage-icon_oEb.png'),(2,'信息管理','/sys/info','',0,2,-1,'/upload/2017/04/24/navigation-infomanage-icon_KGk.png'),(3,'信息推送','/sys/push','',0,3,-1,'/upload/2017/04/24/navigation-userpush-icon_FcQ.png'),(4,'在线客服','/sys/service','',0,4,-1,'/upload/2017/04/24/navigation-coustomer-icon_ac0.png'),(5,'系统管理','/sys/system','',0,5,-1,'/upload/2017/04/24/navigation-sysmanage-icon_kkW.png'),(6,'系统日志','/sys/log','',0,6,-1,'/upload/2017/04/24/navigation-sysmanage-icon_bHc.png'),(7,'用户管理','/sys/system/user','user:list',0,1,5,NULL),(8,'角色管理','/sys/system/role','role:list',0,2,5,NULL),(9,'菜单管理','/sys/system/menu','menu:list',0,3,5,NULL),(10,'部门管理','/sys/system/department','department:list',0,4,5,NULL),(11,'新增','/sys/system/user/create','user:create',1,1,7,NULL),(12,'编辑','/sys/system/user/update/*','user:update',1,2,7,NULL),(13,'删除','/sys/system/user/delete/*','user:delete',1,3,7,NULL),(14,'启用','/sys/system/user/open','user:open',1,4,7,NULL),(15,'禁用','/sys/system/user/close','user:close',1,5,7,NULL),(16,'密码重置','/sys/system/user/init','user:init',1,6,7,NULL),(17,'新增','/sys/system/role/create','role:create',1,1,8,NULL),(18,'编辑','/sys/system/role/update/*','role:update',1,2,8,NULL),(19,'删除','/sys/system/role/delete/*','role:delete',1,3,8,NULL),(20,'新增','/sys/system/menu/create','menu:create',1,1,9,NULL),(21,'编辑','/sys/system/menu/update/*','menu:update',1,2,9,NULL),(22,'删除','/sys/system/menu/delete/*','menu:delete',1,3,9,NULL),(23,'新增','/sys/system/department/create','department:create',1,1,10,NULL),(24,'编辑','/sys/system/department/update/*','department:update',1,2,10,NULL),(25,'删除','/sys/system/department/delete/*','department:delete',1,3,10,NULL),(26,'登录日志','/sys/log/login','log:login',0,1,6,NULL),(27,'访问日志','/sys/log/access','log:access',0,2,6,NULL),(28,'图片新闻','/sys/info/news','info:news:list',0,1,2,NULL),(29,'下刊','/sys/info/news/check/yxk','info:news:xk',1,1,28,NULL),(30,'恢复上刊','/sys/info/news/check/hfsk','info:news:hfsk',1,1,28,NULL),(31,'审核通过','/sys/info/news/check/shtg','info:news:shtg',1,1,28,NULL),(32,'新增','/sys/info/news/create','info:news:add',1,1,28,NULL),(33,'编辑','/sys/info/news/update/*','info:news:update',1,1,28,NULL),(34,'删除','/sys/info/news/delete/*','info:news:delete',1,1,28,NULL),(35,'紧急公告','/sys/info/notice','info:notice:list',0,2,2,NULL),(36,'下刊','/sys/info/notice/check/yxk','info:notice:xk',1,1,35,NULL),(37,'恢复上刊','/sys/info/notice/check/hfsk','info:notice:hfsk',1,1,35,NULL),(38,'审核通过','/sys/info/notice/check/shtg','info:notice:shtg',1,1,35,NULL),(39,'新增','/sys/info/notice/create','info:notice:add',1,1,35,NULL),(40,'编辑','/sys/info/notice/update/*','info:notice:update',1,1,35,NULL),(41,'删除','/sys/info/notice/delete/*','info:notice:delete',1,1,35,NULL),(42,'栏目文章','/sys/info/ninfo','info:navinfo:list',0,3,2,NULL),(43,'下刊','/sys/info/ninfo/check/yxk','info:navinfo:xk',1,1,42,NULL),(44,'恢复上刊','/sys/info/ninfo/check/hfsk','info:navinfo:hfsk',1,1,42,NULL),(45,'审核通过','/sys/info/ninfo/check/shtg','info:navinfo:shtg',1,1,42,NULL),(46,'新增','/sys/info/ninfo/create','info:navinfo:add',1,1,42,NULL),(47,'编辑','/sys/info/ninfo/update/*','info:navinfo:update',1,1,42,NULL),(48,'删除','/sys/info/ninfo/delete/*','info:navinfo:delete',1,1,42,NULL),(49,'栏目管理','/sys/info/nav','info:nav:list',0,4,2,NULL),(50,'恢复展示','/sys/info/nav/hfshow','info:nav:show',1,1,49,NULL),(51,'取消展示','/sys/info/nav/hide','info:nav:hide',1,1,49,NULL),(52,'新增','/sys/info/nav/create','info:nav:add',1,1,49,NULL),(53,'编辑','/sys/info/nav/update/*','info:nav:update',1,1,49,NULL),(54,'删除','/sys/info/nav/delete/*','info:nav:delete',1,1,49,NULL),(55,'查看','/sys/info/news/detail/*','info:news:detail',1,1,28,NULL),(56,'查看','/sys/info/notice/detail/*','info:notice:detail',1,1,35,NULL),(57,'查看','/sys/info/ninfo/detail/*','info:navinfo:detail',1,1,42,NULL);
UNLOCK TABLES;

/*Data for the table `t_role` */
LOCK TABLES `t_role` WRITE;
insert  into `t_role`(`Id`,`name`) values (1,'系统角色');
UNLOCK TABLES;

/*Data for the table `t_role_menu` */
LOCK TABLES `t_role_menu` WRITE;
insert  into `t_role_menu`(`role_id`,`menu_id`) values (1,1),(1,2),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,53),(1,54),(1,3),(1,4),(1,5),(1,7),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,8),(1,17),(1,18),(1,19),(1,9),(1,20),(1,21),(1,22),(1,10),(1,23),(1,24),(1,25),(1,6),(1,26),(1,27);
UNLOCK TABLES;

/*Data for the table `t_user` */
LOCK TABLES `t_user` WRITE;
insert  into `t_user`(`Id`,`name`,`loginName`,`tel`,`password`,`role_id`,`department_id`,`status`,`salt`,`createDate`) values (1,'超级管理员','admin_J','888888888','e838b8d53e1eab100f4ed8f54fd75be5',1,0,0,'c7ccf98f7201cfbb51d8227240162d46','2017-04-24 17:45:02');
UNLOCK TABLES;

/*Data for the table `tb_template` */
LOCK TABLES `tb_template` WRITE;
insert  into `tb_template`(`id`,`name`,`img_path`,`file_path`,`type`,`create_time`,`update_time`) values (1,'列表页模板1','/upload/templates/l/l.jpg','info/list.jsp',0,'2017-04-18 14:38:33','0000-00-00 00:00:00'),(2,'详情页模板1','/upload/templates/c/c.jpg','info/detail.jsp',1,'2017-04-18 16:07:16','0000-00-00 00:00:00');
UNLOCK TABLES;


INSERT INTO `t_menu` (`Id`,`name`,`href`,`permission`,`type`,`sort`,`parent_id`,`icon`) 
VALUES (58,'站点统计','/sys/member/access','member:access',0,1,1,NULL),(59,'会员记录','/sys/member/auth','member:auth',0,2,1,NULL);

insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values(60,'待处理信息','/sys/push/ing','push:ing:list','0','1','3',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values(61,'已推送信息','/sys/push/ed','push:ed:list','0','2','3',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values(62,'新增','/sys/push/ing/create','push:ing:add','1','1','60',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values(63,'修改','/sys/push/ing/update/*','push:ing:update','1','2','60',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values(64,'推送','/sys/push/ing/push*','push:ing:push','1','3','60',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values(65,'删除','/sys/push/ing/delete/*','push:ing:delete','1','4','60',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values(66,'查看','/sys/push/ed/detail/*','push:ed:detail','1','1','61',NULL);

update tb_img_news set type = 1 where 1 = 1;
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values(67,'微官统计','/sys/member/data/toData','data:show','0','3','1',NULL);

/*2017-09-27 15:45*/
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values(68,'导出_微官网访问量','/sys/data/expot/index/pv','data:export:index:pv','1','1','67',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values(69,'导出_模块点击量','/sys/data/expot/model/ck','data:export:model:ck','1','2','67',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values(70,'导出_栏目点击量','/sys/data/expot/nav/ck','data:export:nav:ck','1','3','67',NULL);

INSERT INTO `t_menu` (`Id`, `name`,`href`,`permission`,`type`,`sort`,`parent_id`,`icon`) VALUES (71,'会员记录下载','/sys/member/down','member:down',1,3,1,NULL);

-- o2o begin
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('73','O2O商城','/sys/o2o','','0','4','-1','/upload/2017/04/24/navigation-infomanage-icon_KGk.png');
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('74','商业类别','/sys/o2o/bc','o2o:bc:list','0','1','73',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('75','新增','/sys/o2o/bc/create','o2o:bc:add','1','1','74',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('76','修改','/sys/o2o/bc/update/*','o2o:bc:update','1','2','74',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('77','删除','/sys/o2o/bc/delete/*','o2o:bc:delete','1','3','74',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('78','查看','/sys/o2o/bc/detail/*','o2o:bc:detail','1','4','74',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('79','展示','/sys/o2o/bc/zs','o2o:bc:zs','1','5','74',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('80','取消展示','/sys/o2o/bc/qxzs','o2o:bc:qxzs','1','6','74',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('81','经营细类','/sys/o2o/mc','o2o:mc:list','0','2','73',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('82','新增','/sys/o2o/mc/create','o2o:mc:add','1','1','81',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('83','修改','/sys/o2o/mc/update/*','o2o:mc:update','1','2','81',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('84','删除','/sys/o2o/mc/delete/*','o2o:mc:delete','1','3','81',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('85','查看','/sys/o2o/mc/detail/*','o2o:mc:detail','1','4','81',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('86','展示','/sys/o2o/mc/zs','o2o:mc:zs','1','5','81',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('87','取消展示','/sys/o2o/mc/qxzs','o2o:mc:qxzs','1','6','81',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('88','商户管理','/sys/o2o/merchant','o2o:merchant:list','0','3','73',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('89','新增','/sys/o2o/merchant/create','o2o:merchant:add','1','1','88',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('90','修改','/sys/o2o/merchant/update/*','o2o:merchant:update','1','2','88',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('91','删除','/sys/o2o/merchant/delete/*','o2o:merchant:delete','1','3','88',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('92','查看','/sys/o2o/merchant/detail/*','o2o:merchant:detail','1','4','88',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('93','展示','/sys/o2o/merchant/zs','o2o:merchant:zs','1','5','88',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('94','取消展示','/sys/o2o/merchant/qxzs','o2o:merchant:qxzs','1','6','88',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('95','促销管理','/sys/o2o/sp','o2o:sp:list','0','4','73',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('96','新增','/sys/o2o/sp/create','o2o:sp:add','1','1','95',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('97','修改','/sys/o2o/sp/update/*','o2o:sp:update','1','2','95',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('98','删除','/sys/o2o/sp/delete/*','o2o:sp:delete','1','3','95',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('99','查看','/sys/o2o/sp/detail/*','o2o:sp:detail','1','4','95',NULL);
-- o2o end

-- 机场资讯 begin
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('100','机场资讯','/sys/info/airport','info:airport:list','0','5','2',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('101','新增','/sys/info/airport/create','info:airport:add','1','1','100',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('102','修改','/sys/info/airport/update/*','info:airport:update','1','2','100',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('103','删除','/sys/info/airport/delete/*','info:airport:delete','1','3','100',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('104','查看','/sys/info/airport/detail/*','info:airport:detail','1','4','100',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('105','审核通过','/sys/info/airport/check/shtg','info:airport:shtg','1','5','100',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('106','下刊','/sys/info/airport/check/xk','info:airport:xk','1','6','100',NULL);
insert into `t_menu` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('107','恢复上刊','/sys/info/airport/check/hfsk','info:airport:hfsk','1','7','100',NULL);
-- 机场资讯 end