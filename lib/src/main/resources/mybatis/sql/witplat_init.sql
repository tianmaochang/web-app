#CREATE DATABASE `witplat` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE witplat;

CREATE TABLE `t_department` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT '0',
  `parent_id` bigint(20) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "t_menu"
#

CREATE TABLE `t_menu` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `href` varchar(200) NOT NULL DEFAULT '',
  `permission` varchar(80) NOT NULL DEFAULT '',
  `type` smallint(1) NOT NULL DEFAULT '0',
  `sort` int(4) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '-1',
  `icon` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "t_role"
#

CREATE TABLE `t_role` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "t_role_menu"
#

CREATE TABLE `t_role_menu` (
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  KEY `FK821BBDE32CAC3169` (`menu_id`),
  KEY `FK821BBDE3461AC609` (`role_id`),
  CONSTRAINT `FK821BBDE3461AC609` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`),
  CONSTRAINT `FK821BBDE32CAC3169` FOREIGN KEY (`menu_id`) REFERENCES `t_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "t_user"
#

CREATE TABLE `t_user` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `loginName` varchar(20) NOT NULL DEFAULT '',
  `tel` varchar(20) DEFAULT NULL,
  `password` varchar(32) NOT NULL DEFAULT '',
  `role_id` bigint(20) NOT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '0',
  `salt` varchar(32) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Id`),
  KEY `FK92CB8890461AC609` (`role_id`),
  CONSTRAINT `FK92CB8890461AC609` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
#2017-04-11 15:00 ath begin
#

#
# Structure for table "tb_img_news"
#

CREATE TABLE `tb_img_news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `img_path` varchar(500) DEFAULT NULL,
  `content` longtext,
  `status` smallint(1) DEFAULT NULL COMMENT '待审核;\n            审核通过;\n            已上刊;\n            已下刊',
  `check_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order_num`  int(11) default 0,
  `push_status` smallint(1) DEFAULT NULL COMMENT '已推送;未推送',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图片新闻表';

#
# Structure for table "tb_nav_base"
#

CREATE TABLE `tb_nav_base` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nav_name` varchar(200) DEFAULT NULL,
  `nav_type` smallint(1) DEFAULT NULL COMMENT '下辖二级菜单;\n            无二级菜单;\n            URL外链',
  `nav_level` int(11) DEFAULT NULL COMMENT '一级栏目;\n            二级栏目;',
  `nav_icon` varchar(500) DEFAULT NULL,
  `nav_order_num` int(11) DEFAULT '0',
  `nav_status` smallint(1) DEFAULT NULL COMMENT '展示;\n            取消展示;',
  `parent_id` bigint(20) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目基础表';

#
# Structure for table "tb_nav_content"
#

CREATE TABLE `tb_nav_content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content_head_icon` varchar(500) DEFAULT NULL,
  `content_template_id` bigint(20) DEFAULT NULL,
  `nav_id` bigint(20) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目表扩展_内容';

#
# Structure for table "tb_nav_info"
#

CREATE TABLE `tb_nav_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `type` smallint(1) DEFAULT NULL COMMENT '交通类;文章类等',
  `status` smallint(1) DEFAULT NULL COMMENT '待审核;\n            审核通过;\n            已上刊;\n            已下刊',
  `content` longtext,
  `nav_id` bigint(20) DEFAULT NULL,
  `check_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `push_status` smallint(1) DEFAULT NULL COMMENT '已推送;未推送',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目信息表';

#
# Structure for table "tb_nav_second_menu"
#

CREATE TABLE `tb_nav_second_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_head_icon` varchar(500) DEFAULT NULL,
  `menu_list_template_id` bigint(20) DEFAULT NULL,
  `menu_content_template_id` bigint(20) DEFAULT NULL,
  `nav_id` bigint(20) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目表扩展_下辖二级菜单';

#
# Structure for table "tb_nav_url"
#

CREATE TABLE `tb_nav_url` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(500) DEFAULT NULL,
  `target` varchar(6) DEFAULT NULL COMMENT '_blank:新页面打开;\n            _self:当前页打开;',
  `nav_id` bigint(20) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目表扩展_外链';

#
# Structure for table "tb_notice"
#

CREATE TABLE `tb_notice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `content` longtext,
  `status` smallint(1) DEFAULT NULL COMMENT '待审核;\n            审核通过;\n            已上刊;\n            已下刊',
  `check_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `push_status` smallint(1) DEFAULT NULL COMMENT '已推送;未推送',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='紧急公告表';

#
# Structure for table "tb_template"
#

CREATE TABLE `tb_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `img_path` varchar(500) DEFAULT NULL,
  `file_path` varchar(500) DEFAULT NULL,
  `type` smallint(1) DEFAULT NULL COMMENT '列表页模板;\n            内容页模板;',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模板表';

#
#2017-04-11 15:00 ath end
#

CREATE TABLE `t_log_access` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `requestUrl` varchar(500) DEFAULT NULL,
  `params` varchar(2500) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8;


CREATE TABLE `t_log_login` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `userAgent` varchar(2000) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

alter table t_log_access modify column params longtext;

-- del 恢复上刊
DELETE FROM t_role_menu WHERE menu_id IN (30, 37, 44);
DELETE FROM t_menu WHERE Id IN (30, 37, 44);
UPDATE t_menu SET NAME = '上刊' WHERE Id IN(31, 38, 45);
UPDATE t_menu SET NAME = '预览' WHERE Id IN (55, 56, 57);

/*Table structure for table `tb_info_push` */
DROP TABLE IF EXISTS `tb_info_push`;
CREATE TABLE `tb_info_push` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `info_name` varchar(500) DEFAULT NULL COMMENT '信息名称',
  `info_type` smallint(1) DEFAULT NULL COMMENT '信息类型：栏目文章、图片新闻、通知公告等',
  `info_img` varchar(500) DEFAULT NULL COMMENT '信息配图',
  `info_content` longtext COMMENT '信息内容',
  `push_status` smallint(1) DEFAULT NULL COMMENT '推送状态：已推送、待处理',
  `push_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '推送时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `push_range` varchar(20) DEFAULT NULL COMMENT '推送范围：微信公众号等',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

ALTER TABLE tb_img_news ADD COLUMN TYPE SMALLINT(1) COMMENT '外链 or 自编';
ALTER TABLE tb_img_news ADD COLUMN url varchar(500) COMMENT '外链URL';

/*==============================================================*/
/* Table: tb_index_ck                                           */
/*==============================================================*/
CREATE TABLE tb_index_ck
(
   id                   BIGINT(20) NOT NULL AUTO_INCREMENT,
   ck                   INT(11),
   ck_date              DATE,
   model_type           INT COMMENT '1：图片新闻；2：栏目导航；3：紧急公告',
   nav_id               BIGINT(20),
   PRIMARY KEY (id)
);

ALTER TABLE tb_index_ck COMMENT '首页点击数据记录';

/*==============================================================*/
/* Table: tb_index_pv                                           */
/*==============================================================*/
CREATE TABLE tb_index_pv
(
   id                   BIGINT(20) NOT NULL AUTO_INCREMENT,
   pv                   INT,
   visit_date           DATE,
   PRIMARY KEY (id)
);

ALTER TABLE tb_index_pv COMMENT '首页PV数据记录';


-- o2o begin
/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/11/23 9:37:55                           */
/*==============================================================*/

drop table if exists tb_o2o_business_catagory;

drop table if exists tb_o2o_management_class;

drop table if exists tb_o2o_merchant;

drop table if exists tb_o2o_merchant_imgs;

drop table if exists tb_o2o_sales_promotion;

drop table if exists tb_o2o_sales_promotion_imgs;

/*==============================================================*/
/* Table: tb_o2o_business_catagory                              */
/*==============================================================*/
create table tb_o2o_business_catagory
(
   id                   bigint(20) not null auto_increment,
   catagory_name        varchar(280) comment '类别名称',
   nav_icon             varchar(500) comment '导航图标',
   hot_img              varchar(500) comment '热图图标',
   hot_img_url          varchar(500) comment '热图链接',
   status               smallint(1) comment '状态',
   order_num            int(11) default 0 comment '显示序号',
   create_time          timestamp default CURRENT_TIMESTAMP,
   update_time          timestamp default '0000-00-00 00:00:00',
   primary key (id)
);

alter table tb_o2o_business_catagory comment '商业类别表';

/*==============================================================*/
/* Table: tb_o2o_management_class                               */
/*==============================================================*/
create table tb_o2o_management_class
(
   id                   bigint(20) not null auto_increment,
   class_name           varchar(200) comment '细类名称',
   business_catagory_id bigint(20) comment '商业类别ID',
   class_img            varchar(500) comment '细类图标',
   jump_url             varchar(500) comment '细类图标外链链接：站外跳转时填写，站内跳转可不填写',
   hot_img              varchar(500) comment '热图图标',
   hot_img_url          varchar(500) comment '热图链接',
   status               smallint(1) comment '状态',
   order_num            int(11) default 0 comment '显示序号',
   create_time          timestamp default CURRENT_TIMESTAMP,
   update_time          timestamp default '0000-00-00 00:00:00',
   primary key (id)
);

alter table tb_o2o_management_class comment '经营细类表';

/*==============================================================*/
/* Table: tb_o2o_merchant                                       */
/*==============================================================*/
create table tb_o2o_merchant
(
   id                   bigint(20) not null auto_increment,
   business_catagory_id bigint(20) comment '商业类别ID',
   management_class_id  bigint(20) comment '经营细类ID',
   merchant_name        varchar(200) comment '商户名称',
   merchant_desc        varchar(1000) comment '商户介绍',
   merchant_address     varchar(500) comment '商户地址',
   open_begin_time      char(5) comment '营业时间开始',
   open_end_time        char(5) comment '营业时间结束',
   merchant_tel         varchar(18) comment '商户电话',
   jump_url             varchar(500) comment '店铺链接',
   active_content       varchar(1000) comment '活动内容',
   active_theme         varchar(200) comment '活动主题',
   status               smallint(1) comment '状态',
   order_num            int(11) default 0 comment '显示序号',
   create_time          timestamp default CURRENT_TIMESTAMP,
   update_time          timestamp default '0000-00-00 00:00:00',
   primary key (id)
);

alter table tb_o2o_merchant comment '商户表';

/*==============================================================*/
/* Table: tb_o2o_merchant_imgs                                  */
/*==============================================================*/
create table tb_o2o_merchant_imgs
(
   id                   bigint(20) not null auto_increment,
   merchant_id          bigint(20) comment '商户ID',
   img_path             varchar(500) comment '商户图片',
   img_desc             varchar(800) comment '商户图片描述',
   jump_url             varchar(500) comment '跳转URL',
   order_num            int(11) default 0 comment '显示序号',
   create_time          timestamp default CURRENT_TIMESTAMP,
   update_time          timestamp default '0000-00-00 00:00:00',
   primary key (id)
);

alter table tb_o2o_merchant_imgs comment '商户图片表';

/*==============================================================*/
/* Table: tb_o2o_sales_promotion                                */
/*==============================================================*/
create table tb_o2o_sales_promotion
(
   id                   bigint(20) not null auto_increment,
   business_catagory_id bigint(20) comment '商业类别ID',
   name                 varchar(200) comment '促销名称',
   content              varchar(1000) comment '促销内容',
   jump_url             varchar(500) comment '外部链接',
   order_num            int(11) default 0 comment '显示序号',
   merchant_tel         varchar(18) comment '商户电话',
   begin_time           timestamp default '0000-00-00 00:00:00' comment '开始时间',
   end_time             timestamp default '0000-00-00 00:00:00' comment '结束时间',
   create_time          timestamp default CURRENT_TIMESTAMP,
   update_time          timestamp default '0000-00-00 00:00:00',
   primary key (id)
);

alter table tb_o2o_sales_promotion comment '促销表';

/*==============================================================*/
/* Table: tb_o2o_sales_promotion_imgs                           */
/*==============================================================*/
create table tb_o2o_sales_promotion_imgs
(
   id                   bigint(20) not null auto_increment,
   sales_promotion_id   bigint(20) comment '促销ID',
   img_path             varchar(500) comment '促销图片',
   img_desc             varchar(800) comment '促销图片描述',
   jump_url             varchar(500) comment '跳转URL',
   order_num            int(11) default 0 comment '显示序号',
   create_time          timestamp default CURRENT_TIMESTAMP,
   update_time          timestamp default '0000-00-00 00:00:00',
   primary key (id)
);

alter table tb_o2o_sales_promotion_imgs comment '促销图片表';
-- o2o end

-- 机场资讯  begin
drop table if exists tb_info_airport;

/*==============================================================*/
/* Table: tb_info_airport                                       */
/*==============================================================*/
create table tb_info_airport
(
   id                   bigint(20) not null auto_increment,
   title                varchar(500),
   img_path             varchar(500),
   content              longtext,
   status               smallint(1) comment '待审核;
            审核通过;
            已上刊;
            已下刊',
   check_time           timestamp default '0000-00-00 00:00:00',
   order_num            int(11) default 0,
   create_time          timestamp default CURRENT_TIMESTAMP,
   update_time          timestamp default '0000-00-00 00:00:00',
   primary key (id)
);

alter table tb_info_airport comment '机场资讯表';
-- 机场资讯  end

