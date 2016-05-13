/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50090
Source Host           : localhost:3306
Source Database       : ecs

Target Server Type    : MYSQL
Target Server Version : 50090
File Encoding         : 65001

Date: 2016-05-12 01:07:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ecs_account_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_account_log`;
CREATE TABLE `ecs_account_log` (
  `log_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL,
  `user_money` decimal(10,2) NOT NULL,
  `frozen_money` decimal(10,2) NOT NULL,
  `rank_points` mediumint(9) NOT NULL,
  `pay_points` mediumint(9) NOT NULL,
  `change_time` int(10) unsigned NOT NULL,
  `change_desc` varchar(255) NOT NULL,
  `change_type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY  (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_account_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_ad`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ad`;
CREATE TABLE `ecs_ad` (
  `ad_id` smallint(5) unsigned NOT NULL auto_increment,
  `position_id` smallint(5) unsigned NOT NULL default '0',
  `media_type` tinyint(3) unsigned NOT NULL default '0',
  `ad_name` varchar(60) NOT NULL default '',
  `ad_link` varchar(255) NOT NULL default '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL default '0',
  `end_time` int(11) NOT NULL default '0',
  `link_man` varchar(60) NOT NULL default '',
  `link_email` varchar(60) NOT NULL default '',
  `link_phone` varchar(60) NOT NULL default '',
  `click_count` mediumint(8) unsigned NOT NULL default '0',
  `enabled` tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_ad
-- ----------------------------
INSERT INTO `ecs_ad` VALUES ('193', '159', '0', '首页左侧广告', 'http://ectouch.cn/', '1413916122102071507.png', '1381219200', '1983427200', '', '', '', '0', '1');

-- ----------------------------
-- Table structure for `ecs_admin_action`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_action`;
CREATE TABLE `ecs_admin_action` (
  `action_id` tinyint(3) unsigned NOT NULL auto_increment,
  `parent_id` tinyint(3) unsigned NOT NULL default '0',
  `action_code` varchar(20) NOT NULL default '',
  `relevance` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`action_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_action
-- ----------------------------
INSERT INTO `ecs_admin_action` VALUES ('1', '0', 'goods', '');
INSERT INTO `ecs_admin_action` VALUES ('4', '0', 'priv_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('6', '0', 'order_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('21', '1', 'goods_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('22', '1', 'remove_back', '');
INSERT INTO `ecs_admin_action` VALUES ('23', '1', 'bind_type_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('24', '1', 'inner_type_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('92', '9', 'post_finished', '');
INSERT INTO `ecs_admin_action` VALUES ('91', '9', 'post_unfinished', '');
INSERT INTO `ecs_admin_action` VALUES ('9', '0', 'post', '');
INSERT INTO `ecs_admin_action` VALUES ('72', '7', 'agent_personal_info', '');
INSERT INTO `ecs_admin_action` VALUES ('43', '4', 'admin_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('44', '4', 'admin_drop', 'admin_manage');
INSERT INTO `ecs_admin_action` VALUES ('45', '4', 'allot_priv', 'admin_manage');
INSERT INTO `ecs_admin_action` VALUES ('46', '4', 'logs_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('47', '4', 'logs_drop', 'logs_manage');
INSERT INTO `ecs_admin_action` VALUES ('53', '6', 'order_os_edit', '');
INSERT INTO `ecs_admin_action` VALUES ('54', '6', 'order_ps_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` VALUES ('55', '6', 'order_ss_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` VALUES ('56', '6', 'order_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` VALUES ('57', '6', 'order_view', '');
INSERT INTO `ecs_admin_action` VALUES ('58', '6', 'order_view_finished', '');
INSERT INTO `ecs_admin_action` VALUES ('59', '6', 'repay_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('2', '0', 'template', '');
INSERT INTO `ecs_admin_action` VALUES ('61', '6', 'sale_order_stats', '');
INSERT INTO `ecs_admin_action` VALUES ('62', '6', 'client_flow_stats', '');
INSERT INTO `ecs_admin_action` VALUES ('83', '8', 'print_change_passwd', '');
INSERT INTO `ecs_admin_action` VALUES ('71', '7', 'agent_statistics', '');
INSERT INTO `ecs_admin_action` VALUES ('82', '8', 'print_finished', '');
INSERT INTO `ecs_admin_action` VALUES ('81', '8', 'print_unfinished', '');
INSERT INTO `ecs_admin_action` VALUES ('8', '0', 'print', '');
INSERT INTO `ecs_admin_action` VALUES ('73', '7', 'agent_change_passwd', '');
INSERT INTO `ecs_admin_action` VALUES ('7', '0', 'agent', '');
INSERT INTO `ecs_admin_action` VALUES ('31', '2', 'template_manage', '');
INSERT INTO `ecs_admin_action` VALUES ('93', '9', 'post_change_passwd', '');
INSERT INTO `ecs_admin_action` VALUES ('129', '6', 'delivery_view', '');
INSERT INTO `ecs_admin_action` VALUES ('130', '6', 'back_view', '');
INSERT INTO `ecs_admin_action` VALUES ('32', '2', 'template_category', '');

-- ----------------------------
-- Table structure for `ecs_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_log`;
CREATE TABLE `ecs_admin_log` (
  `log_id` int(10) unsigned NOT NULL auto_increment,
  `log_time` int(10) unsigned NOT NULL default '0',
  `user_id` tinyint(3) unsigned NOT NULL default '0',
  `log_info` varchar(255) NOT NULL default '',
  `ip_address` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`log_id`),
  KEY `log_time` (`log_time`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_log
-- ----------------------------
INSERT INTO `ecs_admin_log` VALUES ('1', '1461114539', '1', '回收商品: 秋冬黑色天鹅毛衣七分袖休闲套头毛衣蕾丝网纱半身裙蓬蓬裙套装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('2', '1461115598', '1', '还原商品: 秋冬黑色天鹅毛衣七分袖休闲套头毛衣蕾丝网纱半身裙蓬蓬裙套装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('3', '1461121557', '1', '编辑权限管理: youju', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('4', '1461124100', '1', '安装配送方式: EMS 国内邮政特快专递', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('5', '1461124157', '1', '添加配送区域: 全国', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('6', '1461127911', '1', '编辑权限管理: youju', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('7', '1461131769', '1', '编辑权限管理: youju', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('8', '1461643662', '1', ': ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('9', '1461954106', '1', '编辑商品: 大衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('10', '1461954742', '1', '编辑商品: 大衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('11', '1461954801', '1', '编辑商品: 大衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('12', '1461954818', '1', '编辑商品: 大衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('13', '1461954836', '1', '编辑商品: 大衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('14', '1461964184', '1', '编辑商品: 大衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('15', '1461964205', '1', '编辑商品: 大衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('16', '1461988363', '1', '编辑商品: 大衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('17', '1462265887', '1', '删除: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('18', '1462268351', '1', '编辑: 对裱蝴蝶精', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('19', '1462268431', '1', '编辑: 对裱蝴蝶精装', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('20', '1462268449', '1', '编辑: 对裱蝴蝶精', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('21', '1462270389', '1', '删除: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('22', '1462270892', '1', '删除: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('23', '1462270985', '1', '添加: test', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('24', '1462271041', '1', '添加: 测试累心', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('25', '1462271059', '1', '删除: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('26', '1462271064', '1', '删除: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('27', '1462272224', '1', '编辑: 铝合金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('28', '1462272342', '1', '编辑: 铝合金', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('29', '1462272378', '1', '添加: 测试类型', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('30', '1462272407', '1', '编辑: 测试', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('31', '1462272747', '1', '编辑: 测试lexington', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('32', '1462272755', '1', '删除: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('33', '1462272769', '1', '编辑: 锁线精', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('34', '1462272843', '1', '编辑: 锁线精', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('35', '1462329453', '1', '编辑权限管理: youju', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('36', '1462331040', '1', '编辑权限管理: print', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('37', '1462331422', '1', '编辑权限管理: agent', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('38', '1462344052', '1', '编辑配送区域: 全国', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('39', '1462344288', '1', '安装支付方式: <font color=\"#FF0000\">支付宝</font>', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('40', '1462401343', '1', ': ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('41', '1462401347', '1', ': ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('42', '1462401351', '1', ': ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('43', '1462401356', '1', ': ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('44', '1462401360', '1', ': ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('45', '1462401364', '1', ': ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('46', '1462401369', '1', ': ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('47', '1462401373', '1', ': ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('48', '1462401377', '1', ': ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('49', '1462401382', '1', ': ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('50', '1462401386', '1', ': ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('51', '1462486625', '1', '编辑商品: 大衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('52', '1462486644', '1', '编辑商品: 大衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('53', '1462486719', '1', '编辑商品: 大衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('54', '1462494125', '1', '回收: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('55', '1462512968', '1', '编辑商品: 大衣', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('56', '1462524455', '1', '编辑: 商品', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('57', '1462524509', '1', '编辑: 商品名', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('58', '1462524578', '1', '编辑: 商品名', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('59', '1462524609', '1', '编辑: 商品名', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('60', '1462524643', '1', '编辑: 商品名', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('61', '1462524652', '1', '编辑: 商品名', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('62', '1462524662', '1', '编辑: 商品名', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('63', '1462524859', '1', '编辑: 商品名', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('64', '1462525017', '1', '编辑: 商品名', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('65', '1462525834', '1', '编辑: 毕业纪念', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('66', '1462525951', '1', '编辑: 毕业纪念册', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('67', '1462587386', '1', '编辑: 测试类别', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('68', '1462587611', '1', '编辑: 测试类别', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('69', '1462588141', '1', '添加: 模板分类十一', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('70', '1462588210', '1', '删除: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('71', '1462588256', '1', '添加: 模板分类十', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('72', '1462588407', '1', '删除: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('73', '1462613826', '1', '编辑: 毕业纪念册', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('74', '1462613840', '1', '编辑: 毕业纪念册', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('75', '1462615133', '1', '编辑: 毕业纪念册', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('76', '1462615207', '1', '编辑: 毕业纪念册', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('77', '1462615696', '1', '编辑: 毕业纪念册', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('78', '1462616078', '1', '编辑: 毕业纪念册', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('79', '1462648614', '1', '添加: 测试模板100', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('80', '1462649162', '1', '添加: 测试模板100', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('81', '1462769708', '1', '编辑订单: 2016050332815', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('82', '1462769887', '1', '编辑订单: 2016050380926', '127.0.0.1');
INSERT INTO `ecs_admin_log` VALUES ('83', '1462867570', '1', '回收: ', '127.0.0.1');

-- ----------------------------
-- Table structure for `ecs_admin_message`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_message`;
CREATE TABLE `ecs_admin_message` (
  `message_id` smallint(5) unsigned NOT NULL auto_increment,
  `sender_id` tinyint(3) unsigned NOT NULL default '0',
  `receiver_id` tinyint(3) unsigned NOT NULL default '0',
  `sent_time` int(11) unsigned NOT NULL default '0',
  `read_time` int(11) unsigned NOT NULL default '0',
  `readed` tinyint(1) unsigned NOT NULL default '0',
  `deleted` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(150) NOT NULL default '',
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `sender_id` (`sender_id`,`receiver_id`),
  KEY `receiver_id` (`receiver_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_message
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_user`;
CREATE TABLE `ecs_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL auto_increment,
  `user_name` varchar(60) NOT NULL default '',
  `email` varchar(60) NOT NULL default '',
  `password` varchar(32) NOT NULL default '',
  `ec_salt` varchar(10) default NULL,
  `add_time` int(11) NOT NULL default '0',
  `last_login` int(11) NOT NULL default '0',
  `last_ip` varchar(15) NOT NULL default '',
  `action_list` text NOT NULL,
  `nav_list` text NOT NULL,
  `lang_type` varchar(50) NOT NULL default '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `suppliers_id` smallint(5) unsigned default '0',
  `todolist` longtext,
  `role_id` smallint(5) default NULL,
  `invitation_code` varchar(18) NOT NULL,
  `phone` varchar(18) NOT NULL,
  `company` varchar(32) NOT NULL,
  `bank_card` varchar(20) NOT NULL,
  PRIMARY KEY  (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_admin_user
-- ----------------------------
INSERT INTO `ecs_admin_user` VALUES ('1', 'admin', 'admin@admin.com', '8d9fc6d263dc34008d7a09366a83ed91', '9598', '1460530945', '1462953195', '127.0.0.1', 'all', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', '1', '0', null, null, '13151', '526436525', '45726527', '6275');
INSERT INTO `ecs_admin_user` VALUES ('2', 'bjgonghuo1', 'bj@163.com', 'd0c015b6eb9a280f318a4c0510581e7e', null, '1245044099', '0', '', '', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', '0', '1', '', null, '', '', '', '');
INSERT INTO `ecs_admin_user` VALUES ('3', 'shhaigonghuo1', 'shanghai@163.com', '4146fecce77907d264f6bd873f4ea27b', null, '1245044202', '0', '', '', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', '0', '2', '', null, '', '', '', '');
INSERT INTO `ecs_admin_user` VALUES ('4', 'youju', 'youju@timepost.com', '4fb4d824245b080ec73e1a7a76ce99f1', '3396', '1461121492', '1462330770', '127.0.0.1', 'post_finished,post_unfinished,post_change_passwd', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', '0', '0', null, '0', '', '', '', '');
INSERT INTO `ecs_admin_user` VALUES ('5', 'print', 'print@print.com', '66e7b554621439cd566352ffb227873e', '4448', '1462331030', '1462331048', '127.0.0.1', 'print_change_passwd,print_finished,print_unfinished', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', '0', '0', null, '0', '', '', '', '');
INSERT INTO `ecs_admin_user` VALUES ('6', 'agent', 'agent@agent.com', 'cc2eacc1c30204ea29f5ba4e3b84c14c', '7351', '1462331412', '1462401000', '127.0.0.1', 'agent_personal_info,agent_statistics,agent_change_passwd', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', '0', '0', null, '0', '', '', '', '');

-- ----------------------------
-- Table structure for `ecs_adsense`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_adsense`;
CREATE TABLE `ecs_adsense` (
  `from_ad` smallint(5) NOT NULL default '0',
  `referer` varchar(255) NOT NULL default '',
  `clicks` int(10) unsigned NOT NULL default '0',
  KEY `from_ad` (`from_ad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_adsense
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_ad_custom`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ad_custom`;
CREATE TABLE `ecs_ad_custom` (
  `ad_id` mediumint(8) unsigned NOT NULL auto_increment,
  `ad_type` tinyint(1) unsigned NOT NULL default '1',
  `ad_name` varchar(60) default NULL,
  `add_time` int(10) unsigned NOT NULL default '0',
  `content` mediumtext,
  `url` varchar(255) default NULL,
  `ad_status` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_ad_custom
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_ad_position`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ad_position`;
CREATE TABLE `ecs_ad_position` (
  `position_id` tinyint(3) unsigned NOT NULL auto_increment,
  `position_name` varchar(60) NOT NULL default '',
  `ad_width` smallint(5) unsigned NOT NULL default '0',
  `ad_height` smallint(5) unsigned NOT NULL default '0',
  `position_desc` varchar(255) NOT NULL default '',
  `position_style` text NOT NULL,
  PRIMARY KEY  (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_ad_position
-- ----------------------------
INSERT INTO `ecs_ad_position` VALUES ('159', '首页左侧广告', '240', '140', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');

-- ----------------------------
-- Table structure for `ecs_affiliate_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_affiliate_log`;
CREATE TABLE `ecs_affiliate_log` (
  `log_id` mediumint(8) NOT NULL auto_increment,
  `order_id` mediumint(8) NOT NULL,
  `time` int(10) NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  `user_name` varchar(60) default NULL,
  `money` decimal(10,2) NOT NULL default '0.00',
  `point` int(10) NOT NULL default '0',
  `separate_type` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_affiliate_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_agency`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_agency`;
CREATE TABLE `ecs_agency` (
  `agency_id` smallint(5) unsigned NOT NULL auto_increment,
  `agency_name` varchar(255) NOT NULL,
  `agency_desc` text NOT NULL,
  PRIMARY KEY  (`agency_id`),
  KEY `agency_name` (`agency_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_agency
-- ----------------------------
INSERT INTO `ecs_agency` VALUES ('1', 'test', 'test agency');

-- ----------------------------
-- Table structure for `ecs_agent`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_agent`;
CREATE TABLE `ecs_agent` (
  `agent_id` varchar(18) NOT NULL,
  `agent_passwd` varchar(500) NOT NULL,
  `agent_name` varchar(32) NOT NULL,
  `agent_invitation` varchar(18) NOT NULL,
  `agent_phone` varchar(18) NOT NULL,
  `agent_company` varchar(32) NOT NULL,
  `agent_bank_card` varchar(19) NOT NULL,
  KEY `agent_invitation` (`agent_invitation`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='代理信息';

-- ----------------------------
-- Records of ecs_agent
-- ----------------------------
INSERT INTO `ecs_agent` VALUES ('1', '', 'agent1', '7892452', '12345678901', 'test', '1234567890987654321');
INSERT INTO `ecs_agent` VALUES ('admin', '*01A6717B58FF5C7EAFFF6CB7C96F7428EA65FE4C', '管理员', '42561', '12135421431', '4145316', '154146516461');

-- ----------------------------
-- Table structure for `ecs_area_region`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_area_region`;
CREATE TABLE `ecs_area_region` (
  `shipping_area_id` smallint(5) unsigned NOT NULL default '0',
  `region_id` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`shipping_area_id`,`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_area_region
-- ----------------------------
INSERT INTO `ecs_area_region` VALUES ('1', '1');

-- ----------------------------
-- Table structure for `ecs_article`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_article`;
CREATE TABLE `ecs_article` (
  `article_id` mediumint(8) unsigned NOT NULL auto_increment,
  `cat_id` smallint(5) NOT NULL default '0',
  `title` varchar(150) NOT NULL default '',
  `content` longtext NOT NULL,
  `author` varchar(30) NOT NULL default '',
  `author_email` varchar(60) NOT NULL default '',
  `keywords` varchar(255) NOT NULL default '',
  `article_type` tinyint(1) unsigned NOT NULL default '2',
  `is_open` tinyint(1) unsigned NOT NULL default '1',
  `add_time` int(10) unsigned NOT NULL default '0',
  `file_url` varchar(255) NOT NULL default '',
  `open_type` tinyint(1) unsigned NOT NULL default '0',
  `link` varchar(255) NOT NULL default '',
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`article_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_article
-- ----------------------------
INSERT INTO `ecs_article` VALUES ('1', '2', '免责条款', '', '', '', '', '0', '1', '1418351509', '', '0', '', null);
INSERT INTO `ecs_article` VALUES ('2', '2', '隐私保护', '', '', '', '', '0', '1', '1418351509', '', '0', '', null);
INSERT INTO `ecs_article` VALUES ('3', '2', '咨询热点', '', '', '', '', '0', '1', '1418351509', '', '0', '', null);
INSERT INTO `ecs_article` VALUES ('4', '2', '联系我们', '', '', '', '', '0', '1', '1418351509', '', '0', '', null);
INSERT INTO `ecs_article` VALUES ('5', '2', '公司简介', '', '', '', '', '0', '1', '1418351509', '', '0', '', null);
INSERT INTO `ecs_article` VALUES ('6', '-1', '用户协议', '', '', '', '', '0', '1', '1418351509', '', '0', '', null);
INSERT INTO `ecs_article` VALUES ('7', '4', '三星电子宣布将在中国发布15款3G手机', '<p>全球领先的电子产品及第二大移动通信终端制造商三星电子今天在北京宣布，为全面支持中国开展3G移动通信业务，将在3G服务正式商用之际，向中国市场推出 15款3G手机。这些产品分别支持中国三大无线运营商的各种3G服务，并已经得到运营商的合作认可。凭借在电子和通信领域的整体技术实力和对消费者的准确 把握，三星电子已经开始全面发力中国的3G移动通信市场。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;2009年1月，中国政府宣布正式启动3G移动通信服务。并根据中国的实际情况，决定由三大运营商分别采用全部三种3G网络制式，&nbsp;即以中国自主知识产权为核心的TD-SCDMA，以欧洲为主要市场的WCDMA和源自北美的CDMA2000技术。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;多 年来，三星电子秉承&ldquo;做中国人民喜爱的企业，贡献于中国社会的企业&rdquo;的企业理念，准确地把握了中国社会的发展和市场的需求，推出了一系列深受中国消费者喜 爱的电子产品。为了配合中国推进具有自主知识产权的3G移动通信标准TD-SCDMA，&nbsp;三星电子从2000年开始在中国设立了通信技术研究院，&nbsp;开始进 行TD-SCDMA技术的研究。作为最早承诺支持中国3G标准的手机制造企业，三星电子已经先后投入了上亿元的研究费用，&nbsp;组建了几百人的研发团队。推出 的TD-SCDMA制式的产品，不仅通过了各级权威部门的试验和检测，也经历了2008年北京奥运会的现场考验。此次为中国移动定制的TD-SCDMA手 机，包括了满足高端商务需求的双待产品B7702C，以及数字电视手机、多媒体手机和时尚手机。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;作为世界第二大手机制造企业，三 星电子已经在全球3G市场积累了多年的技术和市场经验。最新的统计表明，在完全采用WCDMA标准的欧洲，三星电子的市场份额已经排名第二。在为中国联通 准备的产品中，不仅包括能够支持HSDPA的高端多媒体手机S7520U，也涵盖了能够支持高速上网、在线电影、在线音乐等适合不同消费需求的各种产品。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;而 在主要采用CDMA2000技术的北美市场，三星电子也取得了市场份额的第一名。即将陆续上市的支持中国电信3G服务的EVDO产品，有高端商务手机 W709。该机能够支持EVDO/GSM的双网双待功能，含800万像素拍摄系统。其他产品还包括音乐手机M609，双模手机W239，以及时尚设计的 F539等。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;作为世界上少数能够提供支持三种3G标准的终端厂商，三星电子正利用其在通信、半导体、显示器以及数字多媒体等方面 的优势，加快产品数字融合的进程。除上述3G手机产品外，三星电子也于近期推出了用于3G网络的上网卡和网络笔记本电脑。三星电子专务、无线事业部大中华 区高级副总裁卢基学先生说，&ldquo;上述15款新品，&nbsp;只是我们二季度新产品的一部分。随着中国3G移动通信市场的不断扩大，三星还将推出更多适合中国市场的终 端产品，以满足消费者对于通信和数字产品的不同需求。三星也将积极配合运营商业务的发展计划，加快技术和应用的研发。中国3G的移动通信市场前景将是非常 明亮的。&rdquo;</p>', '', '', '', '0', '1', '1241426864', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('8', '4', '诺基亚牵手移动 5款热门TD手机机型推荐', '<table width=\"100%\" cellspacing=\"0\" cellpadding=\"4\" align=\"center\" class=\"tableborder\">\r\n<tbody>\r\n<tr>\r\n<td width=\"180\" valign=\"top\" class=\"altbg4\">&nbsp;</td>\r\n<td height=\"100%\" valign=\"top\" class=\"altbg3\">\r\n<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"padding: 5px; table-layout: fixed; width: 973px; height: 2195px;\">\r\n<tbody>\r\n<tr>\r\n<td valign=\"top\">\r\n<div class=\"bbs_content clearfix\">随着5月17日电信日的来临，自从09年初网民对于3G方面关注越来越多，目前国内3G网络主要有中国移动TD-SCDMA，中国联通WCDMA以及 中国电信的CDMA2000这三种制式。到底是哪一种网络制式能让消费者满意，相信好多消费者都难以判断。<br />\r\n<br />\r\n而作为3G网络最主要的组 成部分-手持终端（手机） ，相信也是好多消费者关注的焦点。目前，中国移动TD-SCDMA手机机型频频爆出，其中不乏亮点产品，像联想联想 Ophone、诺基亚、多普达 Magic等，下面就让笔者与大家一起来了解TD-SCDMA网络制式下的几款强势机型吧。<br />\r\n<br />\r\n诺基亚TD-SCDMA手机　型号：待定　参考报价：尚未上市<br />\r\n<br />\r\n随着国内3G网络发展速度加快及众多手机厂商纷纷跟进，诺基亚终于推出TD-SCDMA手机，这款诺基亚的首台TD-SCDMA测试手机型号目前仍无法 得知，但从键盘及菜单设计来看，我们可以是知道其并没有采用S60操作系统，只是配备了S40系统，机身直板造型与早期热卖的6300有几分相像。<br />\r\n<br />\r\n<p><img width=\"450\" alt=\"\" src=\"http://dstatic.esqimg.com/4812278/1.jpg\" style=\"display: block;\" /></p>\r\n<br />\r\n<br />\r\n图为：诺基亚TD-SCDMA手机<br />\r\n<br />\r\n虽然没有更多的参数资料，但是从曝光的图片我们可以知道这款诺基亚TD-SCDMA手机必定配备了QVGA分辨率的屏幕以及320万像素的摄像头，而标准的MP3以及蓝牙等功能自然不会缺少，在功能方面不会比以往的S40手机逊色。<br />\r\n<br />\r\n<p><img width=\"450\" alt=\"\" src=\"http://dstatic.esqimg.com/4812279/2.jpg\" style=\"display: block;\" /></p>\r\n<br />\r\n<br />\r\n图为：诺基亚TD-SCDMA手机<br />\r\n<br />\r\n这款诺基亚的TD手机最大的卖点便是提供了对TD-HSDPA技术的支持，最大的功能特色便是该技术被看为是TD网络下一步的演进技术，能够同时适用于 WCDMA和TD-SCDMA两种不同的网络支持，能够很好的支持非对称的数据业务，也就是说这款诺基亚手机的用户即便在全球漫游都能够使用到3G网络。 而其机身前置的摄像头也更是证实了其3G手机的身份。<br />\r\n<br />\r\n<p><img width=\"450\" alt=\"\" src=\"http://dstatic.esqimg.com/4812280/3.jpg\" style=\"display: block;\" /></p>\r\n<p><br />\r\n<br />\r\n图为：诺基亚TD-SCDMA手机<br />\r\n<br />\r\n从目前曝光的测试情况来看，通过这款诺基亚TD手机连接网络，其下载速度能够稳定在1.3Mbps左右，不过根据国内有些媒体的报道，诺基亚官方已经证实将于今天下半年配合运营商中国移动对出自己的第一款TD-SCDMA制式的S60手机，大家要拭目以待了。</p>\r\n<p>&nbsp;</p>\r\n图为：诺基亚TD-SCDMA手机<br />\r\n<br />\r\n最后较为耐人寻味的便是目前有业内人士指出目前曝光的的诺基亚TD手机其实是去年夏季就出现过的 TD测试手机，但是随着诺基亚拥有部分股份的TD芯片厂商&ldquo;凯明&rdquo;的倒闭，这款机型也就被取消了。尽管对于目前这款诺基亚的TD测试手机的身份尚无官方的 消息，但是诺基亚将推出TD手机遗失毫无悬念的事情了，相信大家也希望在TD制式下能够有更多的手机可以选择。</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', '', '', '', '0', '1', '1241427051', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('9', '5', '售后流程', '', '', '', '', '0', '1', '1242576700', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('10', '5', '购物流程', '', '', '', '', '0', '1', '1242576717', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('11', '5', '订购方式', '', '', '', '', '0', '1', '1242576727', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('12', '6', '如何分辨原装电池', '<p><font size=\"2\">一般在购买时主要是依靠观察外观特征的方法来鉴别电池，而原装电池一般应具有以下一些特征：&nbsp;<br />\n<br />\n1、 电池外观整齐，外表面有一定的粗糙度且手感舒适，内表面手感光滑，灯光下能看见细密的纵向划痕&nbsp;<br />\n<br />\n2、 生产厂家字样应该轮廓清晰，且防伪标志亮度高，看上去有立体感，电池标贴 字迹清晰，有与电池类型相一致的电池件号<br />\n3、 电池标贴采用二次印刷技术，在一定光线下从斜面看，条形码部分的颜色比其他部分要黑，且用手触摸有凹凸感<br />\n<br />\n4、 原装电池电极与手机电池片宽度相等，电池电极下方标有&ldquo; + &rdquo;、&ldquo; - &rdquo;标志，电池电极片之间的隔离材料与外壳材料一致，但不是一体<br />\n<br />\n5、 原装电池装入手机时手感舒适，安装自如，电池按压部分卡位适当而且牢固<br />\n<br />\n6、 原装电池的金属触点采用优质的铜片，只有在正面看时才会有反光，而从其它角度看的话，都是比较暗淡的</font></p>', '', '', '', '1', '1', '1242576826', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('15', '7', '货到付款区域', '', '', '', '', '0', '1', '1242577023', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('16', '7', '配送支付智能查询 ', '', '', '', '', '0', '1', '1242577032', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('17', '7', '支付方式说明', '', '', '', '', '0', '1', '1242577041', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('18', '10', '资金管理', '', '', '', '', '0', '1', '1242577127', '', '0', 'user.php?act=account_log', null);
INSERT INTO `ecs_article` VALUES ('19', '10', '我的收藏', '', '', '', '', '0', '1', '1242577178', '', '0', 'user.php?act=collection_list', null);
INSERT INTO `ecs_article` VALUES ('20', '10', '我的订单', '', '', '', '', '0', '1', '1242577199', '', '0', 'user.php?act=order_list', null);
INSERT INTO `ecs_article` VALUES ('21', '8', '退换货原则', '', '', '', '服务', '0', '1', '1242577293', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('22', '8', '售后服务保证 ', '', '', '', '售后', '0', '1', '1242577308', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('23', '8', '产品质量保证 ', '', '', '', '质量', '1', '1', '1242577326', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('24', '9', '网站故障报告', '', '', '', '', '0', '1', '1242577432', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('25', '9', '选机咨询 ', '', '', '', '', '0', '1', '1242577448', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('26', '9', '投诉与建议 ', '', '', '', '', '0', '1', '1242577459', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('27', '4', '800万像素超强拍照机 LG Viewty Smart再曝光', '', '', '', '', '0', '1', '1242577702', '', '0', 'http://news.imobile.com.cn/index-a-view-id-66790.html', null);
INSERT INTO `ecs_article` VALUES ('28', '11', '飞利浦9@9促销', '<p>&nbsp;</p>\r\n<div class=\"boxCenterList RelaArticle\" id=\"com_v\">\r\n<p align=\"left\">作为一款性价比极高的入门级<font size=\"3\" color=\"#ff0000\"><strong>商务手机</strong></font>，飞利浦<a href=\"mailto:9@9v\">Xenium&nbsp; 9@9v</a>三围大小为105&times;44&times;15.8mm，机身重量仅为<strong><font size=\"3\" color=\"#ff0000\">75g</font></strong>，装配了一块低规格1.75英寸128&times;160像素65000色CSTN显示屏。身正面采用月银色功能键区与屏幕数字键区相分隔，键盘设计较为<font size=\"3\"><strong><font color=\"#ff0000\">别</font><font color=\"#ff0000\">致</font></strong></font>，中部导航键区采用钛金色的&ldquo;腰带&rdquo;彰显出浓郁的商务气息。</p>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"left\">此款手机采用<strong><font size=\"3\" color=\"#ff0000\">触摸屏</font></strong>设计，搭配精致的手写笔，可支持手写中文和英文两个版本。增强的内置系统还能识别潦草字迹，确保在移动中和匆忙时输入文字的识别率。手写指令功能还支持特定图案的瞬间调用，独特的手写记事本功能，可以在触摸屏上随意绘制个性化的图案并进行<strong><font size=\"3\" color=\"#ff0000\">记事提醒</font></strong>，让商务应用更加随意。</p>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"left\">&nbsp;作为入门级为数不多支持<strong><font size=\"3\" color=\"#ff0000\">双卡功能</font></strong>的手机，可以同时插入两张SIM卡，通过菜单随意切换，只需开启漫游自动切换模式，<a href=\"mailto:9@9V\">9@9V</a>在该模式下能够判断网络情况，自动切换适合的手机号。</p>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"left\">&nbsp;</p>\r\n</div>\r\n<p>&nbsp;</p>', '', '', '', '0', '1', '1242578199', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('29', '11', '诺基亚5320 促销', '<p>&nbsp;</p>\r\n<div id=\"com_v\" class=\"boxCenterList RelaArticle\">\r\n<p>诺基亚5320XpressMusic音乐手机采用XpressMusic系列常见的黑红、黑蓝配色方案，而材质方便则选用的是经过<strong><font size=\"3\" color=\"#ff0000\">抛光处理</font></strong>的工程塑料；三围/体重为，为108&times;46&times;15mm/<strong><font size=\"3\" color=\"#ff0000\">90g</font></strong>，手感舒适。</p>\r\n<p>&nbsp;</p>\r\n<p>诺基亚5320采用的是一块可视面积为2.0英寸的<font size=\"3\" color=\"#ff0000\"><strong>1600万色</strong></font>屏幕，分辨率是常见的240&times;320像素（QVGA）。虽然屏幕不是特别大，但效果非常精细，色彩还原不错。</p>\r\n<p>&nbsp;</p>\r\n<p>手机背面，诺基亚为5320XM配备一颗<strong><font size=\"3\" color=\"#ff0000\">200W像素</font></strong>的摄像头，并且带有<strong><font size=\"3\" color=\"#ff0000\">两个LED的补光灯</font></strong>，可以实现拍照、摄像功能，并能通过彩信、邮件方式发送给朋友。</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>&nbsp;</p>', '', '', '', '1', '1', '1242578676', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('30', '11', '促销诺基亚N96', '<p>&nbsp;</p>\r\n<div class=\"boxCenterList RelaArticle\" id=\"com_v\">\r\n<p>诺基亚N96采用了<strong><font size=\"3\" color=\"#ff0000\">双向滑盖</font></strong>设计，机身整体呈灰黑色，沉稳、大气，机身材质采用了高强度的塑料材质，手机背面采用了抛光面板的设计风格。N96三维体积103*55*20mm，重量为125g。屏幕方面，诺基亚N96配备一块<strong><font size=\"3\" color=\"#ff0000\">2.8英寸</font></strong>的屏幕，支持<strong><font size=\"3\" color=\"#ff0000\">1670万色</font></strong>显示，分辨率达到QVGA（320&times;240）水准。</p>\r\n<p>&nbsp;<img src=\"http://img2.zol.com.cn/product/21/896/ceN6LBMCid3X6.jpg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p>诺基亚N96设置有专门的<strong><font size=\"3\" color=\"#ff0000\">音乐播放键</font></strong>和标准的3.5毫米音频插口，支持多格式音乐播放。内置了<strong><font size=\"3\" color=\"#ff0000\">多媒体播放器</font></strong>，支持FM调频收音机等娱乐功能。N96手机支持<strong><font size=\"3\" color=\"#ff0000\">N-Gage游戏平台</font></strong>，内置包括<font size=\"3\" color=\"#ff0000\"><strong>《PinBall》完整版</strong></font>在内的四款N-Gage游戏，除了手机本身内置的游戏，还可以从N-Gage的网站下载或者购买最新的游戏，而且可以在论坛里和其他玩家一起讨论。</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>&nbsp;<img src=\"http://img2.zol.com.cn/product/21/898/cekkw57qJjSI.jpg\" alt=\"\" /></p>', '', '', '', '1', '1', '1242578826', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('13', '6', '如何分辨水货手机 ', '<p>\n<div class=\"artibody\">\n<p><font size=\"2\"><strong>1、&nbsp;什么是水货？</strong><br />\n提及水货手机，按照行业内的说法，可以将水货手机分成三类：A类、B类和C类。 </font></p>\n<p><font size=\"2\">A类水货手机是指由国外、港澳台等地区在没有经过正常海关渠道的情况下进入国内市场的产品，就是我们常说的走私货， 与行货的主要差异是在输入法上，这类手机都是英文输入法或者是港澳台地区的繁体中文输入法。这类手机其最主要的目的是为了逃避国家关税或者因为该种产品曾 经过不正当改装而不能够通过正常渠道入关，质量一般没有大的问题。但由于逃避关税本身就是违法的，所以购买这类手机的用户根本得不到任何售后保障服务； </font></p>\n<p><font size=\"2\">B类水货手机就是走私者将手机的系统软件由英文版升级至中文版后，偷运到内地，然后贴上非法渠道购买的入网标志，作为行货手机充数。 </font></p>\n<p><font size=\"2\">C类水货手机则是那些由其他型号机改装、更换芯片等等方法做假&ldquo;生产&rdquo;出来的，或者就是从各地购买手机的部件，自己组装然后再贴上非法购买的入网标志。 </font></p>\n<p><font size=\"2\">水货手机虽然不排除它是原厂正货的可能，但通过市场调研发现，绝大多数水货手机都是改版的次货，而且产品基本没有受国内厂商的保修许可。</font></p>\n<p><font size=\"2\"><strong>2、水货有哪些？</strong>水货有两种，一种俗称港行，也称作水行，这种产品原本是在香港 及周边地区销售的，但是经过非法途径进入大陆地区销售。另一种是欧版水改机，也称作欧版，水改等，此种产品以英文改版机为主，通过刷改机内软件达到英文改 中文的目的，原来这类产品是销往欧美地区的，由于和大陆地区有相当大的价格差，所以通过走私进入中国市场。</font></p>\n<p><font size=\"2\"><strong>3、水货手机的危害</strong><br />\n1、售后服务无保障 <br />\n手机作为精密类电子产品，软件、硬件方面都有可能产生不同的问题。购买正规渠道的手机，一旦出现问题，只要将问题反映给厂商客户服务中心并静候佳音就 可以了。大多数走私手机的贩卖点规模较小，根本没有资金和技术能力建立起自己的维修网点，因此他们往往制定非常苛刻的保修条件，将国家明令的一年保修期缩 短为三个月，并加入完全对走私手机经销商有利的诸如&ldquo;认为摔打&rdquo;等概念难以界定的排除条件(众所周知，手机很有可能发生摔撞事件)，是确确实实的霸王条 款。规定时间内手机出了故障，走私手机经销商会通过曲解条款尽可能地开脱保修责任。即使他们愿意承担保修服务，也需将手机发往广州、深圳等地，委托他人维 修。一来路途漫长，二来经手人繁多，小问题&ldquo;修&rdquo;成了大问题。最终走私手机经销商会以无法维修为由劝客户自行去当地正规客服维修。至于维修费用，他们自然 也不愿意出了。<br />\n<br />\n2、产品本身质量不过关<br />\n&nbsp;&nbsp;&nbsp; 现在很多奸商为了谋取暴利，经常使用C类的翻修或者组装手机冒充A类水货手机进行销售。作为消费者来说面对和正规行货之间巨大的价格差异，他们无法分辨想要购买的手机是否象销售商说的那样质量过硬，在销售商的巧舌如簧下只能眼看自己的钱包&ldquo;减肥&rdquo;。 </font></p>\n<p><font size=\"2\">但是这类翻修或者组装的水货手机往往为了降低成本，其采用的配件往往也是不合格产品，甚至也是伪劣产品，可以想象由这样产品组装起来的手机的质量究竟可以好到那里去。目前在经常看到手机电池爆炸伤人的事件的报道，究其原因也是消费者购买了这些组装的水货手机。</font></p>\n<p><font size=\"2\">而且不光这类手机硬件存在问题，包括手机使用的软件。由于组装的水货硬件规格根本无法保证和原场产品一致，手机使用的软件也会造成和手机硬件的冲突。频繁死机就是家常便饭，更有甚者会造成经常性的电话本丢失，无法联系到好友。</font></p>\n<p><br />\n<font size=\"2\"><strong>4、如何分辨行、水货手机？</strong><br />\n1、看手机上是否贴有信息产业部&ldquo;进网许可&rdquo;标志。水货与正品的入网标志稍微有一点不同：真的入网标志一般都是针式打印机打印的，数字清晰，颜色较浅，仔细看有针打的凹痕；假的入网标志一般是普通喷墨打印机打印的，数字不很清晰，颜色较深，没有凹痕。 </font></p>\n<p><font size=\"2\">2、检查手机的配置，包括中文说明书、电池、充电器等，如果是厂家原配，一般均贴有厂家的激光防伪标志。原厂配置的 中文说明书通常印刷精美，并与其他语言的说明书及相关产品资料的印刷质量、格式、风格等保持一致。不是原厂家配置的中文说明书通常印刷质量低劣，常出现错 别字，甚至字迹模糊。正品手机的包装盒中均附带有原厂合格证、原厂条码卡、原厂保修卡，而水货则没有。 </font></p>\n<p><font size=\"2\">3、确认经销商的保修条例是否与厂家一致，在购买手机时应索要发票和保修卡。 </font></p>\n<p><font size=\"2\">4、电子串号是否一致也是验证是否水货手机的重要途径。首先在手机上按&ldquo;*#06#&rdquo;，一般会在手机上显示15个数 字，这就是本手机的IMEI码。然后打开手机的电池盖，在手机里有一张贴纸，上面也有一个IMEI码，这个码应该同手机上显示的IMEI码完全一致。然后 再检查手机的外包装盒上的贴纸，上面也应该有一个IMEI码，这个码也应该同手机上显示的IMEI码完全一致。如果此三个码有不一致的地方，这个手机就有 问题。</font></p>\n</div>\n<p>&nbsp;</p>\n</p>', '', '', '', '0', '1', '1242576911', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('14', '6', '如何享受全国联保', '', '', '', '', '0', '1', '1242576927', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('31', '12', '诺基亚6681手机广告欣赏', '<object>\n<param value=\"always\" name=\"allowScriptAccess\" />\n<param value=\"transparent\" name=\"wmode\" />\n<param value=\"http://6.cn/player.swf?flag=0&amp;vid=nZNyu3nGNWWYjmtPQDY9nQ\" name=\"movie\" /><embed width=\"480\" height=\"385\" src=\"http://6.cn/player.swf?flag=0&amp;vid=nZNyu3nGNWWYjmtPQDY9nQ\" allowscriptaccess=\"always\" wmode=\"transparent\" type=\"application/x-shockwave-flash\"></embed></object>', '', '', '', '0', '1', '1242579069', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('32', '12', '手机游戏下载', '<p>三星SGHU308说明书下载，点击相关链接下载</p>', '', '', '', '1', '1', '1242579189', '', '0', 'http://soft.imobile.com.cn/index-a-list_softs-cid-1.html', null);
INSERT INTO `ecs_article` VALUES ('33', '12', '三星SGHU308说明书下载', '<p>三星SGHU308说明书下载</p>', '', '', '', '1', '1', '1242579559', 'data/article/1245043292228851198.rar', '2', 'http://', null);
INSERT INTO `ecs_article` VALUES ('34', '12', '3G知识普及', '<p>\n<h2>3G知识普及</h2>\n<div class=\"t_msgfont\" id=\"postmessage_8792145\"><font color=\"black\">3G，全称为3rd Generation，中文含义就是指第三代数字通信。<br />\n</font><br />\n<font color=\"black\">　　1995年问世的第一代<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C4%A3%C4%E2\">模拟</span>制式<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%CA%D6%BB%FA\">手机</span>（1G）只能进行<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D3%EF%D2%F4\">语音</span>通话；<br />\n</font><br />\n<font color=\"black\">　　1996到1997年出现的第二代GSM、TDMA等数字制式手机（2G）便增加了接收数据的功能，如接收电子邮件或网页；<br />\n</font><br />\n<font color=\"black\">　　3G不是2009年诞生的，它是上个世纪的产物，而早在2007年国外就已经产生4G了，而<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D6%D0%B9%FA\">中国</span>也于2008年成功开发出<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D6%D0%B9%FA\">中国</span>4G，其网络传输的速度可达到每秒钟2G，也就相当于下一部电影只要一秒钟。在上世纪90年末的日韩电影如《我的野蛮女友》中，女主角使用的可以让对方看见自己的视频<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%B5%E7%BB%B0\">电话</span>，就是属于3G技术的重要运用之一。日韩等国3G的运用是上世纪末期的事。而目前国外有些地区已经试运行3.5G甚至4G网络。<br />\n</font><br />\n<font color=\"black\">　 </font><font color=\"black\">（以下为误导）2009年问世的第三代（3G）与 前两代的主要区别是在传输声音和数据的速度上的提升，它能够在全球范围内更好地实现无缝漫游，并处理图像、音乐、视频流等多种媒体形式，提供包括网页浏 览、电话会议、电子商务等多种信息服务，同时也要考虑与已有第二代系统的良好兼容性。为了提供这种服务，无线网络必须能够支持不同的数据传输速度，也就是 说在室内、室外和行车的环境中能够分别支持至少2Mbps（兆比特／每秒）、384kbps（千比特／每秒）以及144kbps的传输速度。（此数值根据 网络环境会发生变化)。<br />\n</font><br />\n<font color=\"black\">　　3G标准，国际电信联盟(ITU)目前一共确定了全球四大3G标准，它们分别是WCDMA、CDMA2000和TD-SCDMA和WiMAX。</font><br />\n<br />\n<font color=\"black\">3G标准　　国际电信联盟（ITU）在2000年5月确定W-CDMA、CDMA2000、TD-SCDMA以 及WiMAX四大主流无线接口标准，写入3G技术指导性文件《2000年国际移动通讯计划》（简称IMT&mdash;2000）。 CDMA是Code Division Multiple Access (码分多址)的缩写，是第三代移动通信系统的技术基础。第一代移动通信系统采用频分多址(FDMA)的模拟调制方式，这种系统的主要缺点是频谱利用率低， 信令干扰话音业务。第二代移动通信系统主要采用时分多址(TDMA)的数字调制方式，提高了系统容量，并采用独立信道传送信令，使系统性能大大改善，但 TDMA的系统容量仍然有限，越区切换性能仍不完善。CDMA系统以其频率规划简单、系统容量大、频率复用系数高、抗多径能力强、通信质量好、软容量、软 切换等特点显示出巨大的发展潜力。下面分别介绍一下3G的几种标准：<br />\n</font><br />\n<br />\n<font color=\"black\">　　 </font><br />\n<font color=\"black\">(1) W-CDMA</font><font color=\"black\"><br />\n</font><br />\n<br />\n<font color=\"black\">　　也称为WCDMA，全称为Wideband CDMA，也称为CDMA Direct Spread，意为宽频分码多重存取，这是基于GSM网发展出来的3G技术规范，是欧洲提出的宽带CDMA技术，它与日本提出的宽带CDMA技术基本相 同，目前正在进一步融合。W-CDMA的支持者主要是以GSM系统为主的欧洲厂商，日本公司也或多或少参与其中，包括欧美的爱立信、阿尔卡特、<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C5%B5%BB%F9%D1%C7\">诺基亚</span>、 朗讯、北电，以及日本的NTT、富士通、夏普等厂商。 该标准提出了GSM(2G)-GPRS-EDGE-WCDMA(3G)的演进策略。这套系统能够架设在现有的GSM网络上，对于系统提供商而言可以较轻易 地过渡，但是GSM系统相当普及的亚洲对这套新技术的接受度预料会相当高。因此W-CDMA具有先天的市场优势。<br />\n</font><br />\n<br />\n<font color=\"black\">　　 </font><br />\n<font color=\"black\">(2)CDMA2000</font><font color=\"black\"><br />\n</font><br />\n<br />\n<font color=\"black\">　　CDMA2000是由窄带CDMA(CDMA IS95)技术发展而来的宽带CDMA技术，也称为CDMA Multi-Carrier，它是由美国高通北美公司为主导提出，<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C4%A6%CD%D0%C2%DE%C0%AD\">摩托罗拉</span>、Lucent 和后来加入的韩国三星都有参与，韩国现在成为该标准的主导者。这套系统是从窄频CDMAOne数字标准衍生出来的，可以从原有的CDMAOne结构直接升 级到3G，建设成本低廉。但目前使用CDMA的地区只有日、韩和北美，所以CDMA2000的支持者不如W-CDMA多。不过CDMA2000的研发技术 却是目前各标准中进度最快的，许多3G手机已经率先面世。该标准提出了从CDMA IS95(2G)-CDMA20001x-CDMA20003x(3G)的演进策略。CDMA20001x被称为2.5代移动通信技术。 CDMA20003x与CDMA20001x的主要区别在于应用了多路载波技术，通过采用三载波使带宽提高。目前<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%D6%D0%B9%FA%B5%E7%D0%C5\">中国电信</span>正在采用这一方案向3G过渡，并已建成了CDMA IS95网络。<br />\n</font><br />\n<br />\n<font color=\"black\">　　 </font><br />\n<font color=\"black\">(3)TD-SCDMA</font><font color=\"black\"><br />\n</font><br />\n<br />\n<font color=\"black\">　　全称为Time Division - Synchronous CDMA(时分<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%CD%AC%B2%BD\">同步</span>CDMA)，该标准是由中国大陆独自制定的3G标准，1999年6月29日，中国原邮电部电信科学技术研究院（大唐电信）向ITU提出。该标准将智能无线、<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%CD%AC%B2%BD\">同步</span>CDMA和<span class=\"t_tag\" onclick=\"tagshow(event)\" href=\"http://mbbs.enet.com.cn/tag.php?name=%C8%ED%BC%FE\">软件</span>无 线电等当今国际领先技术融于其中，在频谱利用率、对业务支持具有灵活性、频率灵活性及成本等方面的独特优势。另外，由于中国内的庞大的市场，该标准受到各 大主要电信设备厂商的重视，全球一半以上的设备厂商都宣布可以支持TD&mdash;SCDMA标准。 该标准提出不经过2.5代的中间环节，直接向3G过渡，非常适用于GSM系统向3G升级。<br />\n</font><br />\n<br />\n<font color=\"black\">　　 </font><br />\n<font color=\"black\">(4)WiMAX</font><font color=\"black\"><br />\n</font><br />\n<br />\n<font color=\"black\">　　WiMAX 的全名是微波存取全球互通(Worldwide Interoperability for Microwave Access)，又称为802&middot;16无线城域网，是又一种为企业和家庭用户提供&ldquo;最后一英里&rdquo;的宽带无线连接方案。将此技术与需要授权或免授权的微波设备 相结合之后，由于成本较低，将扩大宽带无线市场，改善企业与服务供应商的认知度。2007年10月19日，国际电信联盟在日内瓦举行的无线通信全体会议 上，经过多数国家投票通过，WiMAX正式被批准成为继WCDMA、CDMA2000和TD-SCDMA之后的第四个全球3G标准。</font></div>\n</p>', '', '', '', '0', '1', '1242580013', '', '0', 'http://', null);
INSERT INTO `ecs_article` VALUES ('35', '4', '“沃”的世界我做主', '<p><strong>导语：<br />\n<br />\n</strong>&nbsp;&nbsp;&nbsp;&nbsp;今年5月17日，是每年一度的世界电信日。同时，也是值得中国人民高兴的日子。昨天，中国联通企业品牌下的全品牌业务&ldquo;沃&rdquo;开始试商用，这也就意味着继中国移动、中国电信之后，国内第三种3G网络将要走入我们的生活，为我们带来更加快速便捷的通信服务。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;沃，意味着此品牌将为用户提供一个丰盈的平台，为个人客户、家庭客户、集团客户和企业服务提供全面的支撑，它代表着中国联通全新的服务理念和创新的品牌精神，在3G时代，为客户提供精彩的信息化服务。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;下面小编为各位介绍几款各大手机品牌专为&ldquo;沃&rdquo;打造的定制机型，为您迎接&ldquo;沃&rdquo;的到来做好充分准备。</p>\n<p><strong>诺基亚6210si<br />\n<br />\n</strong>&nbsp;&nbsp;&nbsp;&nbsp;诺基亚6210s大家肯定不陌生，经典的滑盖导航手机。其实6210si 与6210s外观、参数、硬件配置几乎完全一样，只不过在6210s的基础上，增加了对WCDMA网络的支持，成为中国联通定制手机。6210si采用诺 基亚经典的滑盖机身设计，机身面板为钢琴烤漆材质，高贵优雅。机身背板则为磨砂外观工程塑料材质，美观的同时增加了手机与手掌间的摩擦系数，防止使用中手 机滑落。</p>\n<p><strong>摩托罗拉A3100<br />\n</strong><br />\n&nbsp;&nbsp;&nbsp;&nbsp;作为摩托罗拉旗下为中国联通定制的A3100，它有着经典的鹅卵石造型， 大气稳重。从最初的U6，到U9再到A3100，鹅卵石的辉煌依旧。A3100有着高贵的血统，钢琴烤漆黑色面板，金属拉丝机身以及 Windows&nbsp;Mobile&nbsp;6.1&nbsp;Professional操作系统，都告诉我们它绝对是一部不可多得的好手机。</p>\n<p><br />\n<strong>三星S7520U<br />\n</strong><br />\n&nbsp;&nbsp;&nbsp;&nbsp;三星S7520U外观造型时尚，镜面设计以及超薄的 98.4&times;55&times;11.6mm金属机身，更适合女性朋友使用。通观机身，最显眼的就要数这3.0英寸的超大触摸屏幕了，400x240的WQGVA级别分 辨率，能够比QVGA级别屏幕显示更为细腻，细节表现力更强。500万像素摄像头说明了该机还是一名拍照能手，捕捉精彩瞬间不在话下。</p>', '', '', '', '0', '0', '1242974613', '', '0', 'http://', null);

-- ----------------------------
-- Table structure for `ecs_article_cat`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_article_cat`;
CREATE TABLE `ecs_article_cat` (
  `cat_id` smallint(5) NOT NULL auto_increment,
  `cat_name` varchar(255) NOT NULL default '',
  `cat_type` tinyint(1) unsigned NOT NULL default '1',
  `keywords` varchar(255) NOT NULL default '',
  `cat_desc` varchar(255) NOT NULL default '',
  `sort_order` tinyint(3) unsigned NOT NULL default '50',
  `show_in_nav` tinyint(1) unsigned NOT NULL default '0',
  `parent_id` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`cat_id`),
  KEY `cat_type` (`cat_type`),
  KEY `sort_order` (`sort_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_article_cat
-- ----------------------------
INSERT INTO `ecs_article_cat` VALUES ('1', '系统分类', '2', '', '系统保留分类', '50', '0', '0');
INSERT INTO `ecs_article_cat` VALUES ('2', '网店信息', '3', '', '网店信息分类', '50', '0', '1');
INSERT INTO `ecs_article_cat` VALUES ('3', '网店帮助分类', '4', '', '网店帮助分类', '50', '0', '1');
INSERT INTO `ecs_article_cat` VALUES ('4', '3G资讯', '1', '', '', '50', '0', '0');
INSERT INTO `ecs_article_cat` VALUES ('5', '新手上路 ', '5', '', '', '50', '0', '3');
INSERT INTO `ecs_article_cat` VALUES ('6', '手机常识 ', '5', '', '手机常识 ', '50', '0', '3');
INSERT INTO `ecs_article_cat` VALUES ('7', '配送与支付 ', '5', '', '配送与支付 ', '50', '0', '3');
INSERT INTO `ecs_article_cat` VALUES ('8', '服务保证 ', '5', '', '', '50', '0', '3');
INSERT INTO `ecs_article_cat` VALUES ('9', '联系我们 ', '5', '', '联系我们 ', '50', '0', '3');
INSERT INTO `ecs_article_cat` VALUES ('10', '会员中心', '5', '', '', '50', '0', '3');
INSERT INTO `ecs_article_cat` VALUES ('11', '手机促销', '1', '', '', '50', '0', '0');
INSERT INTO `ecs_article_cat` VALUES ('12', '站内快讯', '1', '', '', '50', '0', '0');

-- ----------------------------
-- Table structure for `ecs_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_attribute`;
CREATE TABLE `ecs_attribute` (
  `attr_id` smallint(5) unsigned NOT NULL auto_increment,
  `cat_id` smallint(5) unsigned NOT NULL default '0',
  `attr_name` varchar(60) NOT NULL default '',
  `attr_input_type` tinyint(1) unsigned NOT NULL default '1',
  `attr_type` tinyint(1) unsigned NOT NULL default '1',
  `attr_values` text NOT NULL,
  `attr_index` tinyint(1) unsigned NOT NULL default '0',
  `sort_order` tinyint(3) unsigned NOT NULL default '0',
  `is_linked` tinyint(1) unsigned NOT NULL default '0',
  `attr_group` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`attr_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_attribute
-- ----------------------------
INSERT INTO `ecs_attribute` VALUES ('1', '1', '作者', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('2', '1', '出版社', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('3', '1', '图书书号/ISBN', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('4', '1', '出版日期', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('5', '1', '开本', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('6', '1', '图书页数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('7', '1', '图书装订', '1', '0', '平装\r\n黑白', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('8', '1', '图书规格', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('9', '1', '版次', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('10', '1', '印张', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('11', '1', '字数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('12', '1', '所属分类', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('13', '2', '中文片名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('14', '2', '英文片名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('15', '2', '商品别名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('16', '2', '介质/格式', '1', '0', 'HDCD\r\nDTS\r\nDVD\r\nDVD9\r\nVCD\r\nCD\r\nTAPE\r\nLP', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('17', '2', '片装数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('18', '2', '国家地区', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('19', '2', '语种', '1', '0', '中文\r\n英文\r\n法文\r\n西班牙文', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('20', '2', '导演/指挥', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('21', '2', '主唱', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('22', '2', '所属类别', '1', '0', '古典\r\n流行\r\n摇滚\r\n乡村\r\n民谣\r\n爵士\r\n蓝调\r\n电子\r\n舞曲\r\n国乐\r\n民族\r\n怀旧\r\n经典\r\n人声\r\n合唱\r\n发烧\r\n试音\r\n儿童\r\n胎教\r\n轻音乐\r\n世界音乐\r\n庆典音乐\r\n影视音乐\r\n新世纪音乐\r\n大自然音乐', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('23', '2', '长度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('24', '2', '歌词', '1', '0', '有\r\n无', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('25', '2', '碟片代码', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('26', '2', 'ISRC码', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('27', '2', '发行公司', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('28', '2', '出版', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('29', '2', '出版号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('30', '2', '引进号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('31', '2', '版权号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('32', '3', '中文片名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('33', '3', '英文片名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('34', '3', '商品别名', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('35', '3', '介质/格式', '1', '0', 'HDCD\r\nDTS\r\nDVD\r\nDVD9\r\nVCD', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('36', '3', '碟片类型', '1', '0', '单面\r\n双层', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('37', '3', '片装数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('38', '3', '国家地区', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('39', '3', '语种/配音', '1', '0', '中文\r\n英文\r\n法文\r\n西班牙文', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('40', '3', '字幕', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('41', '3', '色彩', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('42', '3', '中文字幕', '1', '0', '有\r\n无', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('43', '3', '导演', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('44', '3', '表演者', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('45', '3', '所属类别', '1', '0', '爱情\r\n偶像\r\n生活\r\n社会\r\n科幻\r\n神话\r\n武侠\r\n动作\r\n惊险\r\n恐怖\r\n传奇\r\n人物\r\n侦探\r\n警匪\r\n历史\r\n军事\r\n戏剧\r\n舞台\r\n经典\r\n名著\r\n喜剧\r\n情景\r\n动漫\r\n卡通\r\n儿童\r\n伦理激情', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('46', '3', '年份', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('47', '3', '音频格式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('48', '3', '区码', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('49', '3', '碟片代码', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('50', '3', 'ISRC码', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('51', '3', '发行公司', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('52', '3', '出版 ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('53', '3', '出版号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('54', '3', '引进号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('55', '3', '版权号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('56', '4', '网络制式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('57', '4', '支持频率/网络频率', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('58', '4', '尺寸体积', '1', '0', '   ', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('59', '4', '外观样式/手机类型', '1', '0', '翻盖\r\n滑盖\r\n直板\r\n折叠\r\n手写', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('60', '4', '主屏参数/内屏参数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('61', '4', '副屏参数/外屏参数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('62', '4', '清晰度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('63', '4', '色数/灰度', '1', '0', '   ', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('64', '4', '长度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('65', '4', '宽度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('66', '4', '厚度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('67', '4', '屏幕材质', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('68', '4', '内存容量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('69', '4', '操作系统', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('70', '4', '通话时间', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('71', '4', '待机时间', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('72', '4', '标准配置', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('73', '4', 'WAP上网', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('74', '4', '数据业务', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('75', '4', '天线位置', '1', '0', '内置\r\n外置', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('76', '4', '随机配件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('77', '4', '铃声', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('78', '4', '摄像头', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('79', '4', '彩信/彩e', '1', '0', '支持\r\n不支持', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('80', '4', '红外/蓝牙', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('81', '4', '价格等级', '1', '0', '高价机\r\n中价机\r\n低价机', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('82', '5', '型号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('83', '5', '详细规格', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('84', '5', '笔记本尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('85', '5', '处理器类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('86', '5', '处理器最高主频', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('87', '5', '二级缓存', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('88', '5', '系统总线', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('89', '5', '主板芯片组', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('90', '5', '内存容量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('91', '5', '内存类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('92', '5', '硬盘', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('93', '5', '屏幕尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('94', '5', '显示芯片', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('95', '5', '标称频率', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('96', '5', '显卡显存', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('97', '5', '显卡类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('98', '5', '光驱类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('99', '5', '电池容量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('100', '5', '其他配置', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('101', '6', '类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('102', '6', '最大像素/总像素  ', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('103', '6', '有效像素', '1', '0', '  ', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('104', '6', '光学变焦倍数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('105', '6', '数字变焦倍数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('106', '6', '操作模式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('107', '6', '显示屏类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('108', '6', '显示屏尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('109', '6', '感光器件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('110', '6', '感光器件尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('111', '6', '最高分辨率', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('112', '6', '图像分辨率', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('113', '6', '传感器类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('114', '6', '传感器尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('115', '6', '镜头', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('116', '6', '光圈', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('117', '6', '焦距', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('118', '6', '旋转液晶屏', '1', '0', '支持\r\n不支持', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('119', '6', '存储介质', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('120', '6', '存储卡', '1', '0', '  记录媒体\r\n存储卡容量', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('121', '6', '影像格式', '1', '0', '    静像\r\n动画', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('122', '6', '曝光控制', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('123', '6', '曝光模式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('124', '6', '曝光补偿', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('125', '6', '白平衡', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('126', '6', '连拍', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('127', '6', '快门速度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('128', '6', '闪光灯', '1', '0', '内置\r\n外置', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('129', '6', '拍摄范围', '1', '0', '  ', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('130', '6', '自拍定时器', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('131', '6', 'ISO感光度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('132', '6', '测光模式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('133', '6', '场景模式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('134', '6', '短片拍摄', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('135', '6', '外接接口', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('136', '6', '电源', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('137', '6', '电池使用时间', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('138', '6', '外形尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('139', '6', '标配软件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('140', '6', '标准配件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('141', '6', '兼容操作系统', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('142', '7', '编号', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('143', '7', '类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('144', '7', '外型尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('145', '7', '最大像素数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('146', '7', '光学变焦倍数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('147', '7', '数字变焦倍数', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('148', '7', '显示屏尺寸及类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('149', '7', '感光器件', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('150', '7', '感光器件尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('151', '7', '感光器件数量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('152', '7', '像素范围', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('153', '7', '传感器数量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('154', '7', '传感器尺寸', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('155', '7', '水平清晰度', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('156', '7', '取景器', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('157', '7', '数码效果', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('158', '7', '镜头性能', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('159', '7', '对焦方式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('160', '7', '曝光控制', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('161', '7', '其他接口', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('162', '7', '随机存储', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('163', '7', '电池类型', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('164', '7', '电池供电时间', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('165', '8', '产地', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('166', '8', '产品规格/容量', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('167', '8', '主要原料', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('168', '8', '所属类别', '1', '0', '彩妆\r\n化妆工具\r\n护肤品\r\n香水', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('169', '8', '使用部位', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('170', '8', '适合肤质', '1', '0', '油性\r\n中性\r\n干性', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('171', '8', '适用人群', '1', '0', '女性\r\n男性', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('172', '9', '上市日期', '1', '0', '2008年01月\r\n2008年02月\r\n2008年03月\r\n2008年04月\r\n2008年05月\r\n2008年06月\r\n2008年07月\r\n2008年08月\r\n2008年09月\r\n2008年10月\r\n2008年11月\r\n2008年12月\r\n2007年01月\r\n2007年02月\r\n2007年03月\r\n2007年04月\r\n2007年05月\r\n2007年06月\r\n2007年07月\r\n2007年08月\r\n2007年09月\r\n2007年10月\r\n2007年11月\r\n2007年12月', '1', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('173', '9', '手机制式', '1', '0', 'GSM,850,900,1800,1900\r\nGSM,900,1800,1900,2100\r\nCDMA\r\n双模（GSM,900,1800,CDMA 1X）\r\n3G(GSM,900,1800,1900,TD-SCDMA )', '1', '1', '1', '0');
INSERT INTO `ecs_attribute` VALUES ('174', '9', '理论通话时间', '0', '0', '', '0', '2', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('175', '9', '理论待机时间', '0', '0', '', '0', '3', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('176', '9', '铃声', '0', '0', '', '0', '4', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('177', '9', '铃声格式', '0', '0', '', '0', '5', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('178', '9', '外观样式', '1', '0', '翻盖\r\n滑盖\r\n直板\r\n折叠', '1', '6', '1', '0');
INSERT INTO `ecs_attribute` VALUES ('179', '9', '中文短消息', '0', '0', '', '0', '7', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('180', '9', '存储卡格式', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('181', '9', '内存容量', '0', '0', '', '2', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('182', '9', '操作系统', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('183', '9', 'K-JAVA', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('184', '9', '尺寸体积', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('185', '9', '颜色', '1', '1', '黑色\r\n白色\r\n蓝色\r\n金色\r\n粉色\r\n银色\r\n灰色\r\n深李色\r\n黑红色\r\n黑蓝色\r\n白紫色', '1', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('186', '9', '屏幕颜色', '1', '0', '1600万\r\n262144万', '1', '0', '1', '1');
INSERT INTO `ecs_attribute` VALUES ('187', '9', '屏幕材质', '1', '0', 'TFT', '0', '0', '0', '1');
INSERT INTO `ecs_attribute` VALUES ('188', '9', '屏幕分辨率', '1', '0', '320×240 像素\r\n240×400 像素\r\n240×320 像素\r\n176x220 像素', '1', '0', '0', '1');
INSERT INTO `ecs_attribute` VALUES ('189', '9', '屏幕大小', '0', '0', '', '0', '0', '0', '1');
INSERT INTO `ecs_attribute` VALUES ('190', '9', '中文输入法', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` VALUES ('191', '9', '情景模式', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` VALUES ('192', '9', '网络链接', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` VALUES ('193', '9', '蓝牙接口', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('194', '9', '数据线接口', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` VALUES ('195', '9', '电子邮件', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` VALUES ('196', '9', '闹钟', '0', '0', '', '0', '35', '0', '4');
INSERT INTO `ecs_attribute` VALUES ('197', '9', '办公功能', '0', '0', '', '0', '0', '0', '4');
INSERT INTO `ecs_attribute` VALUES ('198', '9', '数码相机', '0', '0', '', '1', '0', '0', '3');
INSERT INTO `ecs_attribute` VALUES ('199', '9', '像素', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` VALUES ('200', '9', '传感器', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('201', '9', '变焦模式', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` VALUES ('202', '9', '视频拍摄', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` VALUES ('203', '9', 'MP3播放器', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` VALUES ('204', '9', '视频播放', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` VALUES ('205', '9', 'CPU频率', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `ecs_attribute` VALUES ('206', '9', '收音机', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` VALUES ('207', '9', '耳机接口', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` VALUES ('208', '9', '闪光灯', '0', '0', '', '0', '0', '0', '3');
INSERT INTO `ecs_attribute` VALUES ('209', '9', '浏览器', '0', '0', '', '0', '0', '0', '2');
INSERT INTO `ecs_attribute` VALUES ('210', '9', '配件', '1', '2', '线控耳机\r\n蓝牙耳机\r\n数据线', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `ecs_auction_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_auction_log`;
CREATE TABLE `ecs_auction_log` (
  `log_id` mediumint(8) unsigned NOT NULL auto_increment,
  `act_id` mediumint(8) unsigned NOT NULL,
  `bid_user` mediumint(8) unsigned NOT NULL,
  `bid_price` decimal(10,2) unsigned NOT NULL,
  `bid_time` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`log_id`),
  KEY `act_id` (`act_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_auction_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_auto_manage`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_auto_manage`;
CREATE TABLE `ecs_auto_manage` (
  `item_id` mediumint(8) NOT NULL,
  `type` varchar(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  PRIMARY KEY  (`item_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_auto_manage
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_background_category_yzldiy`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_background_category_yzldiy`;
CREATE TABLE `ecs_background_category_yzldiy` (
  `id` tinyint(5) NOT NULL auto_increment,
  `name` varchar(25) default NULL,
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_background_category_yzldiy
-- ----------------------------
INSERT INTO `ecs_background_category_yzldiy` VALUES ('1', '小清新', '1');
INSERT INTO `ecs_background_category_yzldiy` VALUES ('2', '糖果屋', '1');
INSERT INTO `ecs_background_category_yzldiy` VALUES ('3', '猫咪', '1');

-- ----------------------------
-- Table structure for `ecs_background_yzldiy`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_background_yzldiy`;
CREATE TABLE `ecs_background_yzldiy` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(25) default NULL,
  `category` tinyint(2) default '0',
  `status` tinyint(1) default '1',
  `ext` varchar(5) default '.jpg',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=219 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_background_yzldiy
-- ----------------------------
INSERT INTO `ecs_background_yzldiy` VALUES ('136', '4', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('137', '5', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('138', '6', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('139', '7', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('140', '8', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('141', '9', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('142', '10', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('143', '11', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('144', '12', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('145', '13', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('146', '14', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('147', '15', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('148', '16', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('149', '17', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('150', '18', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('151', '19', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('152', '20', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('153', '21', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('154', '22', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('155', '23', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('156', '24', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('157', '25', '3', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('158', '26', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('159', '27', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('160', '28', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('161', '29', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('162', '30', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('163', '31', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('164', '32', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('165', '33', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('166', '34', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('167', '35', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('168', '36', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('169', '37', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('170', '38', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('171', '39', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('172', '40', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('173', '41', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('174', '42', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('175', '43', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('176', '44', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('177', '45', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('178', '46', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('179', '47', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('180', '48', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('181', '49', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('182', '50', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('183', '51', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('184', '52', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('185', '53', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('186', '54', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('187', '55', '1', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('188', '56', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('189', '57', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('190', '58', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('191', '59', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('192', '60', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('193', '61', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('194', '62', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('195', '63', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('196', '64', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('197', '65', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('198', '66', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('199', '67', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('200', '68', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('201', '69', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('202', '70', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('203', '71', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('204', '72', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('205', '73', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('206', '74', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('207', '75', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('208', '76', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('209', '77', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('210', '78', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('211', '79', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('212', '80', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('213', '81', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('214', '82', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('215', '83', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('216', '84', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('217', '85', '2', '1', '.jpg');
INSERT INTO `ecs_background_yzldiy` VALUES ('218', '86', '2', '1', '.jpg');

-- ----------------------------
-- Table structure for `ecs_back_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_back_goods`;
CREATE TABLE `ecs_back_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL auto_increment,
  `back_id` mediumint(8) unsigned default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `product_id` mediumint(8) unsigned NOT NULL default '0',
  `product_sn` varchar(60) default NULL,
  `goods_name` varchar(120) default NULL,
  `brand_name` varchar(60) default NULL,
  `goods_sn` varchar(60) default NULL,
  `is_real` tinyint(1) unsigned default '0',
  `send_number` smallint(5) unsigned default '0',
  `goods_attr` text,
  PRIMARY KEY  (`rec_id`),
  KEY `back_id` (`back_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_back_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_back_order`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_back_order`;
CREATE TABLE `ecs_back_order` (
  `back_id` mediumint(8) unsigned NOT NULL auto_increment,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL default '0',
  `invoice_no` varchar(50) default NULL,
  `add_time` int(10) unsigned default '0',
  `shipping_id` tinyint(3) unsigned default '0',
  `shipping_name` varchar(120) default NULL,
  `user_id` mediumint(8) unsigned default '0',
  `action_user` varchar(30) default NULL,
  `consignee` varchar(60) default NULL,
  `address` varchar(250) default NULL,
  `country` smallint(5) unsigned default '0',
  `province` smallint(5) unsigned default '0',
  `city` smallint(5) unsigned default '0',
  `district` smallint(5) unsigned default '0',
  `sign_building` varchar(120) default NULL,
  `email` varchar(60) default NULL,
  `zipcode` varchar(60) default NULL,
  `tel` varchar(60) default NULL,
  `mobile` varchar(60) default NULL,
  `best_time` varchar(120) default NULL,
  `postscript` varchar(255) default NULL,
  `how_oos` varchar(120) default NULL,
  `insure_fee` decimal(10,2) unsigned default '0.00',
  `shipping_fee` decimal(10,2) unsigned default '0.00',
  `update_time` int(10) unsigned default '0',
  `suppliers_id` smallint(5) default '0',
  `status` tinyint(1) unsigned NOT NULL default '0',
  `return_time` int(10) unsigned default '0',
  `agency_id` smallint(5) unsigned default '0',
  PRIMARY KEY  (`back_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_back_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_bonus_type`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_bonus_type`;
CREATE TABLE `ecs_bonus_type` (
  `type_id` smallint(5) unsigned NOT NULL auto_increment,
  `type_name` varchar(60) NOT NULL default '',
  `type_money` decimal(10,2) NOT NULL default '0.00',
  `send_type` tinyint(3) unsigned NOT NULL default '0',
  `min_amount` decimal(10,2) unsigned NOT NULL default '0.00',
  `max_amount` decimal(10,2) unsigned NOT NULL default '0.00',
  `send_start_date` int(11) NOT NULL default '0',
  `send_end_date` int(11) NOT NULL default '0',
  `use_start_date` int(11) NOT NULL default '0',
  `use_end_date` int(11) NOT NULL default '0',
  `min_goods_amount` decimal(10,2) unsigned NOT NULL default '0.00',
  PRIMARY KEY  (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_bonus_type
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_booking_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_booking_goods`;
CREATE TABLE `ecs_booking_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `email` varchar(60) NOT NULL default '',
  `link_man` varchar(60) NOT NULL default '',
  `tel` varchar(60) NOT NULL default '',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_desc` varchar(255) NOT NULL default '',
  `goods_number` smallint(5) unsigned NOT NULL default '0',
  `booking_time` int(10) unsigned NOT NULL default '0',
  `is_dispose` tinyint(1) unsigned NOT NULL default '0',
  `dispose_user` varchar(30) NOT NULL default '',
  `dispose_time` int(10) unsigned NOT NULL default '0',
  `dispose_note` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`rec_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_booking_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_brand`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_brand`;
CREATE TABLE `ecs_brand` (
  `brand_id` smallint(5) unsigned NOT NULL auto_increment,
  `brand_name` varchar(60) NOT NULL default '',
  `brand_logo` varchar(80) NOT NULL default '',
  `brand_desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL default '',
  `sort_order` tinyint(3) unsigned NOT NULL default '50',
  `is_show` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`brand_id`),
  KEY `is_show` (`is_show`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_brand
-- ----------------------------
INSERT INTO `ecs_brand` VALUES ('1', '有讯网络', '1380685184117198956.jpg', '公司网站：http://www.nokia.com.cn/\r\n\r\n客服电话：400-880-0123', 'http://www.nokia.com.cn/', '50', '1');
INSERT INTO `ecs_brand` VALUES ('2', 'APPLE', '1380685191110433994.jpg', '官方咨询电话：4008105050\r\n售后网点：http://www.motorola.com.cn/service/carecenter/search.asp ', 'http://www.motorola.com.cn', '50', '1');
INSERT INTO `ecs_brand` VALUES ('3', '方正', '1380685198896536870.jpg', '官方咨询电话：4008201668\r\n售后网点：http://www.dopod.com/pc/service/searchresult2.php ', 'http://www.dopod.com ', '50', '1');
INSERT INTO `ecs_brand` VALUES ('4', '希捷', '1380685206906148108.jpg', '官方咨询电话：4008800008\r\n售后网点：http://www.philips.com.cn/service/mustservice/index.page ', 'http://www.philips.com.cn ', '50', '1');
INSERT INTO `ecs_brand` VALUES ('5', '漫步者', '1380685213383629650.jpg', '官方咨询电话：4008875777\r\n售后网点：http://www.amobile.com.cn/service_fwyzc.asp ', 'http://www.amobile.com.cn', '50', '1');
INSERT INTO `ecs_brand` VALUES ('6', '天翼', '1380685222792305410.jpg', '官方咨询电话：8008105858\r\n售后网点：http://cn.samsungmobile.com/cn/support/search_area_o.jsp ', 'http://cn.samsungmobile.com', '50', '1');
INSERT INTO `ecs_brand` VALUES ('7', '美的', '1380685232971191371.jpg', '官方咨询电话：4008100000\r\n售后网点：http://www.sonyericsson.com/cws/common/contact?cc=cn&lc=zh ', 'http://www.sonyericsson.com.cn/', '50', '1');
INSERT INTO `ecs_brand` VALUES ('8', '惠普', '1380685242589017695.jpg', '官方咨询电话：4008199999\r\n售后网点：http://www.lg.com.cn/front.support.svccenter.retrieveCenter.laf?hrefId=9 ', 'http://cn.wowlg.com', '50', '1');
INSERT INTO `ecs_brand` VALUES ('9', '联想', '1380685252873307833.jpg', '官方咨询电话：4008188818\r\n售后网点：http://www.lenovomobile.com/service/kf-wanglou.asp', 'http://www.lenovomobile.com/', '50', '1');
INSERT INTO `ecs_brand` VALUES ('10', '金立', '1380685292392455401.jpg', '官方咨询电话：4007796666\r\n售后网点：http://www.gionee.net/service.asp ', 'http://www.gionee.net', '50', '1');
INSERT INTO `ecs_brand` VALUES ('11', '  恒基伟业', '1380685907063087318.jpg', '官方咨询电话：4008899126\r\n售后网点：http://www.htwchina.com/htwt/wexiu.shtml ', 'http://www.htwchina.com', '50', '1');
INSERT INTO `ecs_brand` VALUES ('12', '夏普', '1380685309482040868.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('13', '索尼', '1380685318966924400.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('14', '创维', '1380685327309605456.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('15', '乐华', '1380685336300659451.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('20', '茵佳妮', '1380685345175448444.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('17', '爱普生', '1380685356455900353.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('18', 'AMD', '1380685367276048777.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('19', 'acer', '1380685373892689456.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('21', '白领', '1380685380419928070.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('22', 'LILY', '1380685392917690536.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('23', 'JNBY 江南布衣', '1380685401225598337.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('24', '裂帛', '1380685410377577740.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('25', 'O.SA', '1380685418074603841.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('26', '太平鸟', '1380685428529409794.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('27', '艾夫斯', '1380685437557546263.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('28', 'betu百图', '1380685447477195506.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('29', '韩都衣舍', '1380685458575185862.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('30', '圣迪奥', '1380685469784236028.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('31', 'EVENY', '1380685484076765558.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('32', '溢彩年华', '1380685493614241250.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('33', '空间大师', '1380685501661713371.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('34', '美好家', '1380685508100765689.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('35', '生活诚品', '1380685517465148857.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('36', '宝优妮', '1380685528138540997.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('37', '大豪', '1380685537002141945.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('38', '美亿佳', '1380685546460187418.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('39', '千弘', '1380685554945999090.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('40', '好事达', '1380685563264277972.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('41', '雅培', '1380685570445734371.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('42', '贝亲', '1380685578773247262.jpg', '', 'http://', '50', '1');
INSERT INTO `ecs_brand` VALUES ('43', '帮宝适', '1380685585445167375.jpg', '', 'http://', '50', '1');

-- ----------------------------
-- Table structure for `ecs_card`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_card`;
CREATE TABLE `ecs_card` (
  `card_id` tinyint(3) unsigned NOT NULL auto_increment,
  `card_name` varchar(120) NOT NULL default '',
  `card_img` varchar(255) NOT NULL default '',
  `card_fee` decimal(6,2) unsigned NOT NULL default '0.00',
  `free_money` decimal(6,2) unsigned NOT NULL default '0.00',
  `card_desc` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`card_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_card
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_cart`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_cart`;
CREATE TABLE `ecs_cart` (
  `rec_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `session_id` char(32) character set utf8 collate utf8_bin NOT NULL default '',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_sn` varchar(60) NOT NULL default '',
  `product_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_name` varchar(120) NOT NULL default '',
  `market_price` decimal(10,2) unsigned NOT NULL default '0.00',
  `goods_price` decimal(10,2) NOT NULL default '0.00',
  `goods_number` smallint(5) unsigned NOT NULL default '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL default '0',
  `extension_code` varchar(30) NOT NULL default '',
  `parent_id` mediumint(8) unsigned NOT NULL default '0',
  `rec_type` tinyint(1) unsigned NOT NULL default '0',
  `is_gift` smallint(5) unsigned NOT NULL default '0',
  `is_shipping` tinyint(1) unsigned NOT NULL default '0',
  `can_handsel` tinyint(3) unsigned NOT NULL default '0',
  `goods_attr_id` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`rec_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_cart
-- ----------------------------
INSERT INTO `ecs_cart` VALUES ('10', '0', '3b1fe44836ed2d682dd8242b276feecf', '141', 'ECS000141', '0', '大衣', '0.01', '0.01', '1', '', '1', '', '0', '0', '0', '0', '0', '');

-- ----------------------------
-- Table structure for `ecs_category`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_category`;
CREATE TABLE `ecs_category` (
  `cat_id` smallint(5) unsigned NOT NULL auto_increment,
  `cat_name` varchar(90) NOT NULL default '',
  `keywords` varchar(255) NOT NULL default '',
  `cat_desc` varchar(255) NOT NULL default '',
  `parent_id` smallint(5) unsigned NOT NULL default '0',
  `sort_order` tinyint(1) unsigned NOT NULL default '50',
  `template_file` varchar(50) NOT NULL default '',
  `measure_unit` varchar(15) NOT NULL default '',
  `show_in_nav` tinyint(1) NOT NULL default '0',
  `style` varchar(150) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL default '1',
  `grade` tinyint(4) NOT NULL default '0',
  `filter_attr` varchar(255) NOT NULL default '0',
  PRIMARY KEY  (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=683 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_category
-- ----------------------------
INSERT INTO `ecs_category` VALUES ('2', 'CDMA手机', '', '', '17', '50', '', '', '0', '', '1', '5', '6');
INSERT INTO `ecs_category` VALUES ('19', '双模手机', '', '', '17', '50', '', '', '0', '', '1', '5', '0');
INSERT INTO `ecs_category` VALUES ('20', 'GSM手机', '', '', '17', '50', '', '', '0', '', '1', '5', '0');
INSERT INTO `ecs_category` VALUES ('6', '装备配件', '', '耳机 电池 读卡内存卡 充 电 器 ', '16', '50', '', '', '0', '', '1', '5', '');
INSERT INTO `ecs_category` VALUES ('7', '充 电 器', '', '', '6', '50', '', '', '0', '', '1', '5', '0');
INSERT INTO `ecs_category` VALUES ('8', '耳机', '', '', '6', '50', '', '', '0', '', '1', '5', '0');
INSERT INTO `ecs_category` VALUES ('9', '电池', '', '', '6', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('11', '读卡内存卡', '', '', '6', '50', '', '', '0', '', '1', '5', '0');
INSERT INTO `ecs_category` VALUES ('12', '户外服装', '', '联通充值卡 小灵通充值卡 移动充值卡 ', '16', '50', '', '', '0', '', '1', '5', '');
INSERT INTO `ecs_category` VALUES ('13', '小灵通充值卡', '', '', '12', '50', '', '', '0', '', '1', '5', '0');
INSERT INTO `ecs_category` VALUES ('14', '移动充值卡', '', '', '12', '50', '', '', '0', '', '1', '5', '0');
INSERT INTO `ecs_category` VALUES ('15', '联通充值卡', '', '', '12', '50', '', '', '0', '', '1', '5', '0');
INSERT INTO `ecs_category` VALUES ('16', '运动户外', '', '', '0', '11', '', '', '0', '', '1', '5', '');
INSERT INTO `ecs_category` VALUES ('17', '运动鞋', '', '3G手机 GSM手机 CDMA手机 ', '16', '2', '', '', '0', '', '1', '5', '');
INSERT INTO `ecs_category` VALUES ('18', '3G手机', '', '', '17', '50', '', '', '0', '', '1', '5', '0');
INSERT INTO `ecs_category` VALUES ('21', '女装', '', '', '0', '11', '', '个', '1', '', '1', '10', '243,246,245,242,244');
INSERT INTO `ecs_category` VALUES ('22', 'T恤/POLO', '', '电话机 电熨斗 清洁机 饮水机', '21', '50', '', '', '0', '', '1', '0', '238,239');
INSERT INTO `ecs_category` VALUES ('23', 'POLO衫', '', '', '22', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('26', '短袖T恤', '', '', '22', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('27', '长袖T恤', '', '', '22', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('29', '衬衫', '', '燃气炉 电饭煲 电磁炉 电水壶 ', '21', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('30', '长袖衬衫', '', '', '29', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('624', '皮衣', '', '', '39', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('32', '短袖衬衫', '', '', '29', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('33', '分袖衬衫', '', '', '29', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('34', '裤子', '', '吹风机 血压计 剃须刀', '21', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('35', '牛仔分裤', '', '', '34', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('36', '牛仔短裤', '', '', '34', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('37', '休闲裤', '', '', '34', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('38', '牛仔裤', '', '', '34', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('39', '外套', '', '车载电源 GPS导航 汽车护理 ', '21', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('40', '卫衣', '', '汽车护理 车内饰品 车载电源', '39', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('41', '西装', '', '', '39', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('42', '羽绒服', '', '', '39', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('43', '棉服', '', '', '39', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('44', '鞋靴', '', '', '0', '13', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('45', '家居用品', '', '卫浴用品 家纺毛巾', '44', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('46', '被子', '', '', '45', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('47', '枕头', '', '', '45', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('48', '家纺毛巾', '', '', '45', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('49', '卫浴用品', '', '', '45', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('50', '女鞋', '', '童鞋 腰带 休闲鞋 ', '44', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('51', '休闲鞋', '', '', '50', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('52', '童鞋', '', '', '50', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('53', '腰带', '', '', '50', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('54', '礼品箱包', '', '瑞士军刀 工艺藏品 烟具 ', '44', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('55', '烟具', '', '', '54', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('56', '瑞士军刀', '', '', '54', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('57', '工艺藏品', '', '', '54', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('58', '钟表首饰', '', '国产表店 日本表店 流行饰品 ', '44', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('59', '日本表店', '', '', '58', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('60', '流行饰品', '', '', '58', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('61', '国产表店', '', '', '58', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('62', '运动健康', '', '室内球类 运动器材 户外装备 ', '44', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('63', '运动器材', '', '', '62', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('64', '户外装备', '', '', '62', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('65', '室内球类', '', '', '62', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('66', '趣味玩具', '', '遥控玩具 电动玩具 ', '44', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('67', '电动玩具', '', '', '66', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('68', '遥控玩具', '', '', '66', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('69', '母婴童', '', '', '0', '12', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('70', '童装', '', '台式机 服务器 笔记本 ', '69', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('71', '笔记本', '', '', '70', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('72', '台式机', '', '', '70', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('73', '服务器', '', '', '70', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('74', '婴童洗护', '', '光驱 显卡 CPU 主板', '69', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('75', 'CPU', '', '', '74', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('76', '硬盘', '', '', '74', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('77', '内存', '', '', '74', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('78', '显卡', '', '', '74', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('79', '主板', '', '', '74', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('80', '声卡', '', '', '74', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('81', '光驱', '', '', '74', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('82', '散热器', '', '', '74', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('83', '孕妈专区', '', '显示器 电源 主机箱 ', '69', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('84', '显示器', '', '', '83', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('111', '硒鼓', '', '', '101', '50', '', '个', '0', '', '1', '5', '230');
INSERT INTO `ecs_category` VALUES ('86', '鼠标', '', '', '83', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('87', '键盘', '', '', '83', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('88', '电源', '', '', '83', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('89', '婴儿装', '', '一体机  复印机 打印机 ', '69', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('90', '打印机', '', '', '89', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('91', '一体机', '', '', '89', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('92', '复印机', '', '', '89', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('93', '玩具/早教', '', '路由器  网卡 交换机 ', '69', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('94', '路由器', '', '', '93', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('95', '网卡', '', '', '93', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('96', '交换机', '', '', '93', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('97', '喂养用品', '', '游戏软件 杀毒软件 办公软件 ', '69', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('98', '杀毒软件', '', '', '97', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('99', '办公软件', '', '', '97', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('100', '游戏软件', '', '', '97', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('101', '童鞋', '', ' 色带  墨盒 墨粉 ', '69', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('102', '墨盒', '', '', '101', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('103', '墨粉', '', '', '101', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('104', '色带', '', '', '101', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('117', '便携相机', '', '', '116', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('118', '单反相机', '', '', '116', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('119', '数码摄像机', '', '', '116', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('120', '运动服', '', 'MP3/MP4  MP3/MP4配件 苹果配件 录音笔', '16', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('110', '针织衫', '', '电吹风 电蚊香', '21', '50', '', '3', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('112', 'UPS电源', '', '', '74', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `ecs_category` VALUES ('217', '衬衫', '', '', '216', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('625', '夹克', '', '', '39', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('116', '运动包', '', '便携相机\r\n单反相机\r\n数码摄像机', '16', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('201', 'MP3/MP4', '', '', '120', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('132', '男装', '', '', '0', '11', '', '', '1', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('114', '套头衫', '', '', '110', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('115', '开衫', '', '', '110', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('121', '男鞋', '', '乳液/面霜 身体护理 彩妆 香水', '44', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('122', '乳液/面霜', '', '', '121', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('123', '身体护理', '', '', '121', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('124', '裙', '', '动漫人物 遥控玩具 毛绒布艺 益智玩具', '21', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('125', '半裙', '', '', '124', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('126', '连衣裙', '', '', '124', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('127', '吊带裙', '', '', '124', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('216', '男装', '', '', '215', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('215', '箱包', '', '', '0', '14', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('634', '西裤', '', '', '34', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('627', '大衣', '', '', '39', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('626', '风衣', '', '', '39', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('138', '针织衫', '', '', '132', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('139', '针织背心', '', '', '138', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('140', '套头衫', '', '', '138', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('141', '开衫', '', '', '138', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('628', '短袖针织衫', '', '', '110', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('629', '休闲分裤', '', '', '170', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('630', '休闲短裤', '', '', '34', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('631', '哈伦裤', '', '', '34', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('632', '连身裤', '', '', '34', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('633', '打底裤', '', '', '34', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('154', '内衣', '', '', '132', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('635', '中老年服装', '', '', '21', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('156', '内衣/套装', '', '', '154', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('157', '袜子', '', '', '154', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('158', '家居服', '', '', '154', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('159', '内裤', '', '', '154', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('160', '外套', '', '', '132', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('161', '皮衣/皮草', '', '', '160', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('162', '卫衣', '', '', '160', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('163', '风衣', '', '', '160', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('164', '大衣', '', '', '160', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('166', '西服', '', '', '160', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('167', '棉服', '', '', '160', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('168', '羽绒服', '', '', '160', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('169', '夹克', '', '', '160', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('170', '裤子', '', '', '132', '52', '', '', '1', '', '1', '9', '246,245,242,244,243');
INSERT INTO `ecs_category` VALUES ('171', '西裤', '', '', '170', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('172', '牛仔中裤', '', '', '170', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('173', '休闲裤', '', '', '170', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('174', '牛仔裤', '', '', '170', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('175', 'T恤', '', '', '132', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('176', '长袖T恤', '', '', '175', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('178', '短袖T恤', '', '', '175', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('179', '背心', '', '', '175', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('639', '裤装', '', '', '635', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('638', '衬衫', '', '', '635', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('182', 'POLO衫', '', '', '132', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('185', '长袖POLO衫', '', '', '182', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('636', 'T恤', '', '', '635', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('188', '短袖POLO衫', '', '', '182', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('637', '针织衫', '', '', '635', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('190', '衬衫', '', '', '132', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('193', '短袖衬衫', '', '', '190', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('194', '长袖衬衫', '', '', '190', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('623', '休闲短裤', '', '', '170', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('202', 'MID', '', '', '120', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('203', '耳机', '', '', '116', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('204', '音箱', '', '', '120', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('205', '高清播放器', '', '', '120', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('206', '电子书', '', '', '120', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('207', '电子词典', '', '', '120', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('208', 'MP3/MP4配件', '', '', '120', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('209', '录音笔', '', '', '120', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('210', '麦克风', '', '', '120', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('211', '专业音频', '', '', '120', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('212', '电子教育', '', '', '120', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('213', '数码相框', '', '', '120', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('214', '苹果配件', '', '', '120', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('218', 'T恤', '', '', '216', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('219', '针织', '', '', '216', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('220', '外套', '', '', '216', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('221', '羽绒服', '', '', '216', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('222', '裤子', '', '', '216', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('223', '女装', '', '', '215', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('224', '衬衫', '', '', '223', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('225', 'T恤', '', '', '223', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('226', '针织', '', '', '223', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('227', '外套', '', '', '223', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('228', '裙子', '', '', '223', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('229', '羽绒服', '', '', '223', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('230', '裤子', '', '', '223', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('231', '孕妇装', '', '', '223', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('232', '皮衣', '', '', '223', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('233', '运动', '', '', '215', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('234', '运动装', '', '', '233', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('235', '运动鞋', '', '', '233', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('236', '运动配件', '', '', '233', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('237', '内衣', '', '', '215', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('238', '文胸', '', '', '237', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('239', '内裤', '', '', '237', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('240', '背心', '', '', '237', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('241', '塑身', '', '', '237', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('242', '睡衣', '', '', '237', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('243', '家居', '', '', '237', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('244', '袜子', '', '', '237', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('245', '情趣', '', '', '237', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('246', '保暖', '', '', '237', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('247', '配饰', '', '', '215', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('248', '眼镜', '', '', '247', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('249', '腰带', '', '', '247', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('250', '帽子', '', '', '247', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('251', '围巾', '', '', '247', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('252', '手套', '', '', '247', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('253', '领带', '', '', '247', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('254', '袖扣', '', '', '247', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('255', '鞋靴', '', '', '215', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('256', '男鞋', '', '', '255', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('257', '女鞋', '', '', '255', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('258', '拖鞋', '', '', '255', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('259', '童鞋', '', '', '255', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('260', '童装', '', '', '215', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('261', '女童', '', '', '260', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('262', '男童', '', '', '260', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('263', '宝宝服饰', '', '', '260', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('264', '亲子装', '', '', '260', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('265', '配饰', '', '', '0', '15', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('266', '饰品', '', '', '265', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('267', '洁面乳', '', '', '266', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('268', '爽肤水', '', '', '266', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('269', '精华露', '', '', '266', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('270', '乳液面霜', '', '', '266', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('271', '面膜面贴', '', '', '266', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('272', '眼部护理', '', '', '266', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('273', '颈部护理', '', '', '266', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('274', 'T区护理', '', '', '266', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('275', '护肤套装', '', '', '266', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('276', '防晒隔离', '', '', '266', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('277', '配饰', '', '', '265', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('278', '洗发护发', '', '', '277', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('279', '染发/造型', '', '', '277', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('280', '沐浴', '', '', '277', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('281', '磨砂/浴盐', '', '', '277', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('282', '身体乳', '', '', '277', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('283', '手工/香皂', '', '', '277', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('284', '香薰精油', '', '', '277', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('285', '纤体瘦身', '', '', '277', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('286', '脱毛膏', '', '', '277', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('287', '手足护理', '', '', '277', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('288', '洗护套装', '', '', '277', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('289', '手表', '', '', '265', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('290', '牙膏/牙粉', '', '', '289', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('291', '漱口水', '', '', '289', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('292', '牙刷/牙线', '', '', '289', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('293', '女性护理', '', '', '265', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('294', '卫生巾', '', '', '293', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('295', '卫生护垫', '', '', '293', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('296', '洗液', '', '', '293', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('297', '美容食品', '', '', '293', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('298', '其它', '', '', '293', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('299', '男士护理', '', '', '265', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('300', '脸部', '', '', '299', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('301', '眼部', '', '', '299', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('302', '身体护理', '', '', '299', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('303', '男士香水', '', '', '299', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('304', '剃须', '', '', '299', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('305', '防脱洗护', '', '', '299', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('306', '唇膏', '', '', '299', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('307', '魅力彩妆', '', '', '265', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('308', '粉底/遮瑕', '', '', '307', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('309', '腮红', '', '', '307', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('310', '眼影/眼线', '', '', '307', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('311', '眉笔', '', '', '307', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('312', '睫毛膏', '', '', '307', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('313', '唇膏唇彩', '', '', '307', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('314', '彩妆组合', '', '', '307', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('315', '卸妆', '', '', '293', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('316', '美甲', '', '', '293', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('317', '彩妆工具', '', '', '293', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('318', '帽子', '', '', '265', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('319', '女士香水', '', '', '318', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('320', '男士香水', '', '', '318', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('321', '组合套装', '', '', '318', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('322', '迷你香水', '', '', '318', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('323', '香体走珠', '', '', '318', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('324', '美妆', '', '', '0', '16', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('325', '个人洗护', '', '', '324', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('326', '钱包/卡包', '', '', '325', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('327', '手拿包', '', '', '325', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('328', '单肩包', '', '', '325', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('329', '双肩包', '', '', '325', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('330', '手提包', '', '', '325', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('331', '斜挎包', '', '', '325', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('332', '时尚男包', '', '', '324', '50', '', '', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('333', '钱包/手包', '', '', '332', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('334', '男士手包', '', '', '332', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('335', '腰带/礼盒', '', '', '332', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('336', '商务公文包', '', '', '332', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('337', '休闲包', '', '', '332', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('338', '腰包', '', '', '332', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('339', '功能箱包', '', '', '324', '50', '', '', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('340', '电脑数码包', '', '', '339', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('341', '拉杆箱', '', '', '339', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('342', '旅行包', '', '', '339', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('343', '旅行配件', '', '', '339', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('344', '运动包', '', '', '339', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('345', '登山包', '', '', '339', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('346', '妈咪包', '', '', '339', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('347', '书包', '', '', '339', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('348', '香水精油', '', '', '324', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('349', '火机烟具', '', '', '348', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('350', '礼品文具', '', '', '348', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('351', '瑞士军刀', '', '', '348', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('352', '收藏品', '', '', '348', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('353', '工艺摆件', '', '', '348', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('354', '创意礼品', '', '', '348', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('355', '礼卡礼券', '', '', '348', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('356', '鲜花速递', '', '', '348', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('357', '婚庆用品', '', '', '348', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('358', '奢侈品', '', '', '324', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('359', 'GUCCI', '', '', '358', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('360', 'PRADA', '', '', '358', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('361', 'FENDI', '', '', '358', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('362', 'BURBERRY', '', '', '358', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('363', 'BOTTEGA VENETA', '', '', '358', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('364', 'DIOR', '', '', '358', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('365', 'Ferragamo', '', '', '358', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('366', 'MONTBLANC', '', '', '358', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('367', 'ARMANI', '', '', '358', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('368', 'RIMOWA', '', '', '358', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('369', 'MIUMIU', '', '', '358', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('370', 'BALENCIAGA', '', '', '358', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('371', 'Dolce&Gabbana', '', '', '358', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('372', 'MARC JACOBS', '', '', '358', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('373', 'COACH', '', '', '358', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('374', '更多品牌', '', '', '358', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('375', '面部护理', '', '', '324', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('376', '瑞士品牌', '', '', '375', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('377', '国产品牌', '', '', '375', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('378', '日本品牌', '', '', '375', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('379', '时尚品牌', '', '', '375', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('380', '闹钟挂钟', '', '', '375', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('381', '儿童手表', '', '', '375', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('382', '彩妆', '', '', '324', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('383', '纯金K金饰品', '', '', '382', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('384', '金银投资', '', '', '382', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('385', '银饰', '', '', '382', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('386', '钻石饰品', '', '', '382', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('387', '翡翠玉石', '', '', '382', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('388', '水晶玛瑙', '', '', '382', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('389', '宝石珍珠', '', '', '382', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('390', '时尚饰品', '', '', '382', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('391', '家居', '', '', '0', '17', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('392', '户外鞋服', '', '', '391', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('393', '户外服装', '', '', '392', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('394', '户外鞋袜', '', '', '392', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('395', '户外配饰', '', '', '392', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('396', '户外装备', '', '', '391', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('397', '帐篷', '', '', '396', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('398', '睡袋', '', '', '396', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('399', '登山攀岩', '', '', '396', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('400', '户外背包', '', '', '396', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('401', '户外照明', '', '', '396', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('402', '户外垫子', '', '', '396', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('403', '户外仪表', '', '', '396', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('404', '户外工具', '', '', '396', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('405', '望远镜', '', '', '396', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('406', '垂钓用品', '', '', '396', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('407', '旅游用品', '', '', '396', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('408', '便携桌椅床', '', '', '396', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('409', '烧烤用品', '', '', '396', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('410', '野餐炊具', '', '', '396', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('411', '军迷用品', '', '', '396', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('412', '游泳用具', '', '', '396', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('413', '泳衣', '', '', '396', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('414', '运动器械', '', '', '391', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('415', '健身器械', '', '', '414', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('416', '运动器材', '', '', '414', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('417', '防护器具', '', '', '414', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('418', '骑行运动', '', '', '414', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('419', '极限运动', '', '', '414', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('420', '武术搏击', '', '', '414', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('421', '纤体瑜伽', '', '', '391', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('422', '瑜伽垫', '', '', '421', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('423', '瑜伽服', '', '', '421', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('424', '瑜伽配件', '', '', '421', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('425', '瑜伽套装', '', '', '421', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('426', '舞蹈鞋服', '', '', '421', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('427', '体育娱乐', '', '', '391', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('428', '羽毛球', '', '', '427', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('429', '乒乓球', '', '', '427', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('430', '篮球', '', '', '427', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('431', '足球', '', '', '427', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('432', '网球', '', '', '427', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('433', '排球', '', '', '427', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('434', '高尔夫球', '', '', '427', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('435', '棋牌麻将', '', '', '427', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('436', '其他', '', '', '427', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('437', '成人用品', '', '', '391', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('438', '安全避孕', '', '', '437', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('439', '验孕测孕', '', '', '437', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('440', '人体润滑', '', '', '437', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('441', '情爱玩具', '', '', '437', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('442', '情趣内衣', '', '', '437', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('443', '组合套装', '', '', '437', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('444', '保健器械', '', '', '391', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('445', '养生器械', '', '', '444', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('446', '保健用品', '', '', '444', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('447', '康复辅助', '', '', '444', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('448', '家庭护理', '', '', '444', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('449', '急救卫生', '', '', '391', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('450', '跌打损伤', '', '', '449', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('451', '烫伤止痒', '', '', '449', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('452', '防裂抗冻', '', '', '449', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('453', '口腔咽部', '', '', '449', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('454', '眼部保健', '', '', '449', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('455', '鼻炎健康', '', '', '449', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('456', '风湿骨痛', '', '', '449', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('457', '生殖泌尿', '', '', '449', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('458', '美体塑身', '', '', '449', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('459', '手机数码', '', '', '0', '19', '', '', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('460', '奶粉', '', '', '459', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('461', '1段', '', '', '460', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('462', '2段', '', '', '460', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('463', '3段', '', '', '460', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('464', '4段', '', '', '460', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('465', '羊奶粉', '', '', '460', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('466', '特殊配方', '', '', '460', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('467', '营养辅食', '', '', '459', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('468', '营养品', '', '', '467', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('469', '初乳', '', '', '467', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('470', '米粉/菜粉', '', '', '467', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('471', '泥糊/果汁', '', '', '467', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('472', '肉松/饼干', '', '', '467', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('473', '辅食/零食', '', '', '467', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('474', '尿裤湿巾', '', '', '459', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('475', '新生儿', '', '', '474', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('476', 'S号', '', '', '474', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('477', 'M号', '', '', '474', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('478', 'L号', '', '', '474', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('479', 'XL/XXL号', '', '', '474', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('480', '裤型尿裤', '', '', '474', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('481', '湿巾纸巾', '', '', '474', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('482', '尿布/尿垫', '', '', '474', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('483', '喂养用品', '', '', '459', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('484', '奶瓶/奶嘴', '', '', '483', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('485', '辅助用品', '', '', '483', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('486', '吸奶器', '', '', '483', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('487', '消毒用具', '', '', '483', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('488', '餐具饮具', '', '', '483', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('489', '牙胶', '', '', '483', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('490', '洗护用品', '', '', '459', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('491', '护肤用品', '', '', '490', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('492', '洗浴用品', '', '', '490', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('493', '洗发沐浴', '', '', '490', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('494', '清洁用品', '', '', '490', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('495', '护理用品', '', '', '490', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('496', '童车童床', '', '', '459', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('497', '婴儿推车', '', '', '496', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('498', '餐椅摇椅', '', '', '496', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('499', '婴儿床', '', '', '496', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('500', '学步车', '', '', '496', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('501', '三轮车', '', '', '496', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('502', '自行车', '', '', '496', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('503', '电动车', '', '', '496', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('504', '健身车', '', '', '496', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('505', '寝具服饰', '', '', '459', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('506', '婴儿服装', '', '', '505', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('507', '婴儿鞋袜', '', '', '505', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('508', '婴儿床品', '', '', '505', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('509', '安全用品', '', '', '505', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('510', '其他', '', '', '505', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('511', '妈妈专区', '', '', '459', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('512', '妈妈食品', '', '', '511', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('513', '妈妈护理', '', '', '511', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('514', '孕服/内衣', '', '', '511', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('515', '防辐射服', '', '', '511', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('516', '洗护/祛纹', '', '', '511', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('517', '产后塑身', '', '', '511', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('518', '包/背婴带', '', '', '511', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('519', '玩具乐器', '', '', '459', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('520', '适用年龄', '', '', '519', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('521', '遥控/电动', '', '', '519', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('522', '毛绒布艺', '', '', '519', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('523', '娃娃玩具', '', '', '519', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('524', '模型玩具', '', '', '519', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('525', '健身玩具', '', '', '519', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('526', '动漫玩具', '', '', '519', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('527', '益智玩具', '', '', '519', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('528', '积木拼插', '', '', '519', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('529', 'DIY玩具', '', '', '519', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('530', '创意减压', '', '', '519', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('531', '乐器相关', '', '', '519', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('532', '食品酒饮', '', '', '0', '19', '', '', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('533', '进口食品', '', '', '532', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('534', '饼干蛋糕', '', '', '533', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('535', '糖果巧克力', '', '', '533', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('536', '休闲零食', '', '', '533', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('537', '冲调饮品', '', '', '533', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('538', '粮油调味', '', '', '533', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('539', '地方特产', '', '', '532', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('540', '华北', '', '', '539', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('541', '西北', '', '', '539', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('542', '西南', '', '', '539', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('543', '东北', '', '', '539', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('544', '华南', '', '', '539', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('545', '华东', '', '', '539', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('546', '华中', '', '', '539', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('547', '休闲食品', '', '', '532', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('548', '休闲零食', '', '', '547', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('549', '坚果炒货', '', '', '547', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('550', '肉干肉松', '', '', '547', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('551', '蜜饯果脯', '', '', '547', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('552', '糖果/巧克力', '', '', '547', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('553', '饼干蛋糕', '', '', '547', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('554', '粮油调味', '', '', '532', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('555', '米面杂粮', '', '', '554', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('556', '食用油', '', '', '554', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('557', '调味品', '', '', '554', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('558', '南北干货', '', '', '554', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('559', '方便食品', '', '', '554', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('560', '有机食品', '', '', '554', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('561', '酒饮冲调', '', '', '532', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('562', '白酒/黄酒', '', '', '561', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('563', '葡萄酒', '', '', '561', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('564', '洋酒', '', '', '561', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('565', '啤酒', '', '', '561', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('566', '饮料', '', '', '561', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('567', '冲调', '', '', '561', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('568', '咖啡/奶茶', '', '', '561', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('569', '茗茶', '', '', '561', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('570', '营养健康', '', '', '532', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('571', '基础营养', '', '', '570', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('572', '美体养颜', '', '', '570', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('573', '滋补调养', '', '', '570', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('574', '骨骼健康', '', '', '570', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('575', '保健茶饮', '', '', '570', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('576', '成分保健', '', '', '570', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('577', '亚健康', '', '', '532', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('578', '调节三高', '', '', '577', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('579', '心脑养护', '', '', '577', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('580', '改善睡眠', '', '', '577', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('581', '肝肾养护', '', '', '577', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('582', '免疫调节', '', '', '577', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('583', '更多调理', '', '', '577', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('584', '健康礼品', '', '', '532', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('585', '参茸礼品', '', '', '584', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('586', '更多礼品', '', '', '584', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('587', '生鲜食品', '', '', '532', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('588', '水果', '', '', '587', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('589', '蔬菜', '', '', '587', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('590', '海鲜水产', '', '', '587', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('591', '禽蛋', '', '', '587', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('592', '鲜肉', '', '', '587', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('593', '加工类肉食', '', '', '587', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('594', '冻品', '', '', '587', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('595', '半成品', '', '', '587', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('596', '电脑办公', '', '', '0', '20', '', '', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('597', '彩票', '', '', '596', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('598', '双色球', '', '', '597', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('599', '大乐透', '', '', '597', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('600', '福彩3D', '', '', '597', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('601', '排列三', '', '', '597', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('602', '排列五', '', '', '597', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('603', '七星彩', '', '', '597', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('604', '七乐彩', '', '', '597', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('605', '竞彩足球', '', '', '597', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('606', '竞彩篮球', '', '', '597', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('607', '机票', '', '', '596', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('608', '国内机票', '', '', '607', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('609', '酒店', '', '', '596', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('610', '国内酒店', '', '', '609', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('611', '充值', '', '', '596', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('612', '手机充值', '', '', '611', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('613', '游戏充值', '', '', '611', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('614', 'QQ充值', '', '', '611', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('615', '票务', '', '', '596', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('616', '音乐会', '', '', '615', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('617', '演唱会', '', '', '615', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('618', '话剧歌剧', '', '', '615', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('619', '舞蹈芭蕾', '', '', '615', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('620', '戏曲综艺', '', '', '615', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('621', '体育赛事', '', '', '615', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('622', '家电', '', '', '0', '50', '', '', '0', '', '0', '0', '');
INSERT INTO `ecs_category` VALUES ('640', '裙装', '', '', '635', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('641', '内衣', '', '', '21', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('642', '文胸', '', '', '641', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('643', '内裤', '', '', '641', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('644', '睡衣', '', '', '641', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('645', '美体内衣', '', '', '641', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('646', '套装/打底', '', '', '641', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('647', '丝袜/裤袜', '', '', '641', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('648', '日用', '', '', '622', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('649', '厨房', '', '', '622', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('650', '个人护理', '', '', '622', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('651', '电饭煲', '', '', '648', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('652', '豆浆机', '', '', '648', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('653', '电压力锅', '', '', '648', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('654', '榨汁机', '', '', '648', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('655', '煮蛋器', '', '', '648', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('656', '电风扇', '', '', '649', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('657', '加湿器/净化', '', '', '649', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('658', '挂烫机/烘干', '', '', '649', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('659', '照明', '', '', '649', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('660', '美容/美发', '', '', '650', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('661', '剃须刀', '', '', '650', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('662', '美妆团购', '', '', '324', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('663', '面部护理', '', '', '662', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('664', '时尚彩妆', '', '', '662', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('665', '个人洗护', '', '', '662', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('666', '其他护理', '', '', '662', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('667', '洁面', '', '', '665', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('668', '爽肤水', '', '', '665', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('669', '乳液面霜', '', '', '665', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('670', '精华', '', '', '665', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('671', '隔离/BB霜', '', '', '663', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('672', '粉底粉饼', '', '', '663', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('673', '眼影/眼线', '', '', '663', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('674', '睫毛膏', '', '', '663', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('675', '沐浴/润肤', '', '', '666', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('676', '洗发/护发', '', '', '666', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('677', '美发造型', '', '', '666', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('678', '口腔护理', '', '', '666', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('679', '眉笔眉粉', '', '', '664', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('680', '唇部彩妆', '', '', '664', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('681', '腮红', '', '', '664', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` VALUES ('682', '美甲', '', '', '664', '50', '', '', '0', '', '1', '0', '');

-- ----------------------------
-- Table structure for `ecs_cat_recommend`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_cat_recommend`;
CREATE TABLE `ecs_cat_recommend` (
  `cat_id` smallint(5) NOT NULL,
  `recommend_type` tinyint(1) NOT NULL,
  PRIMARY KEY  (`cat_id`,`recommend_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_cat_recommend
-- ----------------------------
INSERT INTO `ecs_cat_recommend` VALUES ('3', '1');
INSERT INTO `ecs_cat_recommend` VALUES ('3', '2');
INSERT INTO `ecs_cat_recommend` VALUES ('3', '3');
INSERT INTO `ecs_cat_recommend` VALUES ('5', '1');
INSERT INTO `ecs_cat_recommend` VALUES ('5', '2');
INSERT INTO `ecs_cat_recommend` VALUES ('5', '3');
INSERT INTO `ecs_cat_recommend` VALUES ('12', '1');
INSERT INTO `ecs_cat_recommend` VALUES ('12', '2');
INSERT INTO `ecs_cat_recommend` VALUES ('12', '3');
INSERT INTO `ecs_cat_recommend` VALUES ('13', '3');
INSERT INTO `ecs_cat_recommend` VALUES ('14', '2');
INSERT INTO `ecs_cat_recommend` VALUES ('14', '3');
INSERT INTO `ecs_cat_recommend` VALUES ('15', '1');
INSERT INTO `ecs_cat_recommend` VALUES ('15', '2');
INSERT INTO `ecs_cat_recommend` VALUES ('16', '3');
INSERT INTO `ecs_cat_recommend` VALUES ('17', '3');
INSERT INTO `ecs_cat_recommend` VALUES ('21', '3');
INSERT INTO `ecs_cat_recommend` VALUES ('22', '3');
INSERT INTO `ecs_cat_recommend` VALUES ('34', '3');
INSERT INTO `ecs_cat_recommend` VALUES ('69', '3');
INSERT INTO `ecs_cat_recommend` VALUES ('70', '3');
INSERT INTO `ecs_cat_recommend` VALUES ('83', '3');
INSERT INTO `ecs_cat_recommend` VALUES ('89', '3');
INSERT INTO `ecs_cat_recommend` VALUES ('101', '3');
INSERT INTO `ecs_cat_recommend` VALUES ('110', '2');
INSERT INTO `ecs_cat_recommend` VALUES ('110', '3');
INSERT INTO `ecs_cat_recommend` VALUES ('111', '1');
INSERT INTO `ecs_cat_recommend` VALUES ('120', '3');
INSERT INTO `ecs_cat_recommend` VALUES ('229', '2');

-- ----------------------------
-- Table structure for `ecs_collect_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_collect_goods`;
CREATE TABLE `ecs_collect_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `add_time` int(11) unsigned NOT NULL default '0',
  `is_attention` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`rec_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`),
  KEY `is_attention` (`is_attention`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_collect_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_comment`;
CREATE TABLE `ecs_comment` (
  `comment_id` int(10) unsigned NOT NULL auto_increment,
  `comment_type` tinyint(3) unsigned NOT NULL default '0',
  `id_value` mediumint(8) unsigned NOT NULL default '0',
  `email` varchar(60) NOT NULL default '',
  `user_name` varchar(60) NOT NULL default '',
  `content` text NOT NULL,
  `comment_rank` tinyint(1) unsigned NOT NULL default '0',
  `add_time` int(10) unsigned NOT NULL default '0',
  `ip_address` varchar(15) NOT NULL default '',
  `status` tinyint(3) unsigned NOT NULL default '0',
  `parent_id` int(10) unsigned NOT NULL default '0',
  `user_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`comment_id`),
  KEY `parent_id` (`parent_id`),
  KEY `id_value` (`id_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_crons`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_crons`;
CREATE TABLE `ecs_crons` (
  `cron_id` tinyint(3) unsigned NOT NULL auto_increment,
  `cron_code` varchar(20) NOT NULL,
  `cron_name` varchar(120) NOT NULL,
  `cron_desc` text,
  `cron_order` tinyint(3) unsigned NOT NULL default '0',
  `cron_config` text NOT NULL,
  `thistime` int(10) NOT NULL default '0',
  `nextime` int(10) NOT NULL,
  `day` tinyint(2) NOT NULL,
  `week` varchar(1) NOT NULL,
  `hour` varchar(2) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `enable` tinyint(1) NOT NULL default '1',
  `run_once` tinyint(1) NOT NULL default '0',
  `allow_ip` varchar(100) NOT NULL default '',
  `alow_files` varchar(255) NOT NULL,
  PRIMARY KEY  (`cron_id`),
  KEY `nextime` (`nextime`),
  KEY `enable` (`enable`),
  KEY `cron_code` (`cron_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_crons
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_decorate_category_yzldiy`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_decorate_category_yzldiy`;
CREATE TABLE `ecs_decorate_category_yzldiy` (
  `id` tinyint(5) NOT NULL auto_increment,
  `name` varchar(25) default NULL,
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_decorate_category_yzldiy
-- ----------------------------
INSERT INTO `ecs_decorate_category_yzldiy` VALUES ('1', '人物', '1');
INSERT INTO `ecs_decorate_category_yzldiy` VALUES ('2', '动物', '1');
INSERT INTO `ecs_decorate_category_yzldiy` VALUES ('3', '装饰', '1');
INSERT INTO `ecs_decorate_category_yzldiy` VALUES ('4', '植物', '1');
INSERT INTO `ecs_decorate_category_yzldiy` VALUES ('5', '节日', '1');
INSERT INTO `ecs_decorate_category_yzldiy` VALUES ('6', '手绘', '1');
INSERT INTO `ecs_decorate_category_yzldiy` VALUES ('7', '对话框', '1');
INSERT INTO `ecs_decorate_category_yzldiy` VALUES ('8', '表情', '1');
INSERT INTO `ecs_decorate_category_yzldiy` VALUES ('9', '中国风', '1');
INSERT INTO `ecs_decorate_category_yzldiy` VALUES ('10', '艺术字', '1');
INSERT INTO `ecs_decorate_category_yzldiy` VALUES ('11', '复古', '1');
INSERT INTO `ecs_decorate_category_yzldiy` VALUES ('12', '插画', '1');

-- ----------------------------
-- Table structure for `ecs_decorate_yzldiy`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_decorate_yzldiy`;
CREATE TABLE `ecs_decorate_yzldiy` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(25) default NULL,
  `category` tinyint(2) default '0',
  `s` varchar(255) default NULL,
  `m` varchar(255) default NULL,
  `b` varchar(255) default NULL,
  `status` tinyint(1) default '1',
  `ext` varchar(5) default '.png',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_decorate_yzldiy
-- ----------------------------
INSERT INTO `ecs_decorate_yzldiy` VALUES ('51', '1', '1', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/1s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/1m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/1b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('52', '2', '1', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/2s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/2m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/2b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('53', '3', '1', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/3s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/3m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/3b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('54', '4', '1', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/4s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/4m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/4b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('55', '5', '1', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/5s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/5m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/5b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('56', '6', '1', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/6s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/6m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/6b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('57', '7', '1', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/7s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/7m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/7b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('58', '8', '1', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/8s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/8m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/8b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('59', '9', '1', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/9s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/9m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/9b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('60', '10', '1', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/10s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/10m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/10b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('61', '11', '1', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/11s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/11m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/11b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('62', '12', '1', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/12s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/12m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/12b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('63', '13', '2', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/13s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/13m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/13b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('64', '14', '2', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/14s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/14m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/14b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('65', '15', '2', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/15s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/15m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/15b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('66', '16', '2', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/16s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/16m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/16b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('67', '17', '2', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/17s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/17m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/17b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('68', '18', '2', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/18s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/18m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/18b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('69', '19', '2', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/19s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/19m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/19b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('70', '20', '2', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/20s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/20m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/20b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('71', '21', '2', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/21s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/21m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/21b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('72', '22', '2', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/22s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/22m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/22b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('73', '23', '2', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/23s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/23m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/23b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('74', '24', '2', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/24s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/24m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/24b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('75', '25', '2', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/25s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/25m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/25b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('76', '26', '2', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/26s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/26m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/26b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('77', '27', '2', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/27s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/27m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/27b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('78', '28', '2', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/28s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/28m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/28b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('79', '29', '2', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/29s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/29m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/29b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('80', '30', '2', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/30s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/30m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/30b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('81', '31', '3', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/31s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/31m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/31b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('82', '32', '3', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/32s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/32m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/32b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('83', '33', '3', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/33s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/33m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/33b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('84', '34', '3', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/34s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/34m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/34b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('85', '35', '3', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/35s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/35m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/35b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('86', '36', '3', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/36s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/36m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/36b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('87', '37', '3', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/37s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/37m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/37b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('88', '38', '3', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/38s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/38m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/38b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('89', '39', '3', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/39s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/39m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/39b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('90', '40', '3', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/40s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/40m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/40b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('91', '41', '3', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/41s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/41m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/41b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('92', '42', '3', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/42s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/42m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/42b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('93', '43', '3', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/43s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/43m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/43b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('94', '44', '3', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/44s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/44m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/44b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('95', '45', '3', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/45s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/45m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/45b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('96', '46', '3', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/46s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/46m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/46b.png', '1', '.png');
INSERT INTO `ecs_decorate_yzldiy` VALUES ('97', '47', '3', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/47s.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/47m.png', 'http://localhost/yzldiywww/yzldiy/Uploads/yzldiy/Decorate/47b.png', '1', '.png');

-- ----------------------------
-- Table structure for `ecs_delivery_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_delivery_goods`;
CREATE TABLE `ecs_delivery_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL auto_increment,
  `delivery_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `product_id` mediumint(8) unsigned default '0',
  `product_sn` varchar(60) default NULL,
  `goods_name` varchar(120) default NULL,
  `brand_name` varchar(60) default NULL,
  `goods_sn` varchar(60) default NULL,
  `is_real` tinyint(1) unsigned default '0',
  `extension_code` varchar(30) default NULL,
  `parent_id` mediumint(8) unsigned default '0',
  `send_number` smallint(5) unsigned default '0',
  `goods_attr` text,
  PRIMARY KEY  (`rec_id`),
  KEY `delivery_id` (`delivery_id`,`goods_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_delivery_goods
-- ----------------------------
INSERT INTO `ecs_delivery_goods` VALUES ('1', '1', '13', '0', null, '诺基亚5320 XpressMusic', '诺基亚', 'ECS000013', '1', '', '0', '3', null);
INSERT INTO `ecs_delivery_goods` VALUES ('2', '1', '14', '0', null, '诺基亚5800XM', '诺基亚', 'ECS000014', '1', '', '0', '1', null);
INSERT INTO `ecs_delivery_goods` VALUES ('3', '2', '24', '0', null, 'P806', '联想', 'ECS000024', '1', '', '0', '3', null);
INSERT INTO `ecs_delivery_goods` VALUES ('4', '2', '9', '0', null, '诺基亚E66', '诺基亚', 'ECS000009', '1', '', '0', '1', null);
INSERT INTO `ecs_delivery_goods` VALUES ('5', '3', '24', '0', null, 'P806', '联想', 'ECS000024', '1', '', '0', '1', null);
INSERT INTO `ecs_delivery_goods` VALUES ('6', '3', '8', '0', null, '飞利浦9@9v', '飞利浦', 'ECS000008', '1', '', '0', '3', null);
INSERT INTO `ecs_delivery_goods` VALUES ('7', '4', '12', '0', null, '摩托罗拉A810', '摩托罗拉', 'ECS000012', '1', '', '0', '2', null);
INSERT INTO `ecs_delivery_goods` VALUES ('8', '5', '24', '0', null, 'P806', '联想', 'ECS000024', '1', '', '0', '1', null);
INSERT INTO `ecs_delivery_goods` VALUES ('9', '6', '42', '0', null, '乐华(ROWA)32英寸高清液晶电视LCD32M08', '乐华', 'ECS000042', '1', null, '0', '1', null);
INSERT INTO `ecs_delivery_goods` VALUES ('10', '7', '91', '0', '', '富士（FUJIFILM）Z71 数码相机（银色）', '天翼', 'ECS000091', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('11', '7', '90', '0', '', '富士（FUJIFILM）Z71 数码相机（香槟色）', '漫步者', 'ECS000090', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('12', '8', '38', '0', '', '三星（SAMSUNG）26英寸 高清液晶电视LA32B350F1', '天翼', 'ECS000038', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('13', '8', '39', '0', '', '创维（Skyworth）37英寸液晶电视37L05HR（内置底座）', '创维', 'ECS000039', '1', null, '0', '1', '');
INSERT INTO `ecs_delivery_goods` VALUES ('14', '9', '55', '0', '', '三洋（Sanyo）ECJ-DF115MC　微电脑电饭煲', 'AMD', 'ECS000055', '1', null, '0', '1', '颜色:黑色 \n屏幕尺寸:42英寸 \n');
INSERT INTO `ecs_delivery_goods` VALUES ('15', '9', '66', '0', '', '飞科（FLYCO）浮动旋转式剃须刀-FS812', 'AMD', 'ECS000066', '1', null, '0', '1', '颜色:黑色 \n屏幕尺寸:42英寸 \n');
INSERT INTO `ecs_delivery_goods` VALUES ('16', '9', '88', '0', '', '索尼（sony）HDR-XR350E高清数码摄像机', '漫步者', 'ECS000088', '1', null, '0', '1', '颜色:黑色 \n屏幕尺寸:42英寸 \n');
INSERT INTO `ecs_delivery_goods` VALUES ('17', '10', '92', '0', '', '茵佳妮优雅公主风褶边修身轻盈衬衫 送胸花5121-1110045', '白领', 'ECS000092', '1', null, '0', '1', '颜色:红 \n尺寸:XL \n');
INSERT INTO `ecs_delivery_goods` VALUES ('18', '10', '123', '0', '', '美亿佳懒人沙发SF0505咖啡色', '千弘', 'ECS000123', '1', null, '0', '1', '颜色:黄 \n尺寸:XL \n');
INSERT INTO `ecs_delivery_goods` VALUES ('19', '10', '121', '0', '', '宝贝世家 儿童床品套件 海洋乐园 英国设计 精梳全棉 活性环保印染 儿童三件套', '千弘', 'ECS000121', '1', null, '0', '1', '颜色:黄 \n尺寸:XL \n');
INSERT INTO `ecs_delivery_goods` VALUES ('20', '11', '49', '0', '', '美的（Midea）空气加湿器 S30U-M1', '乐华', 'ECS000049', '1', null, '0', '1', '颜色:黑色 \n屏幕尺寸:42英寸 \n');
INSERT INTO `ecs_delivery_goods` VALUES ('21', '12', '43', '0', '', '乐华(ROWA)42英寸高清液晶电视LCD42M19', '乐华', 'ECS000043', '1', null, '0', '1', '颜色:黑色 \n屏幕尺寸:42英寸 \n');
INSERT INTO `ecs_delivery_goods` VALUES ('22', '13', '134', '0', '', '天使之城 新款 手工珍珠金线蕾丝衫雪纺衫LM0304 白色', '  恒基伟业', 'ECS000000', '1', null, '0', '3', '颜色:红 \n尺寸:XL \n');
INSERT INTO `ecs_delivery_goods` VALUES ('23', '13', '135', '0', '', 'JIULALA 久拉拉 2013年夏装新款 女 撞色波浪装', '金立', 'ECS000135', '1', null, '0', '1', '颜色:黄 \n尺寸:XXL \n');
INSERT INTO `ecs_delivery_goods` VALUES ('24', '13', '138', '0', '', 'ANDO STORE 安都韩版显瘦女裙雪纺两件套连衣裙9', '希捷', 'ECS000138', '1', null, '0', '1', '颜色:红 \n尺寸:L \n');
INSERT INTO `ecs_delivery_goods` VALUES ('25', '13', '139', '0', '', 'SDEER 圣迪奥 女夏装拼接感双层裙摆连衣裙22812', '漫步者', 'ECS000139', '1', null, '0', '1', '颜色:黄 \n尺寸:XL \n');
INSERT INTO `ecs_delivery_goods` VALUES ('26', '13', '136', '0', '', 'Souline 素缕 《斑驳》2013秋款新女棉麻刺绣长', 'APPLE', 'ECS000136', '1', null, '0', '1', '颜色:红 \n尺寸:XL \n');
INSERT INTO `ecs_delivery_goods` VALUES ('27', '13', '137', '0', '', '桑缇 2013秋季新款 韩版修身圆领外套ST133W540', '方正', 'ECS000137', '1', null, '0', '1', '颜色:黄 \n尺寸:XXL \n');
INSERT INTO `ecs_delivery_goods` VALUES ('28', '13', '140', '0', '', 'GOLDFARM 高梵 2013夏装新款 雪纺复古印花连衣', '天翼', 'ECS000140', '1', null, '0', '1', '颜色:红 \n尺寸:XL \n');
INSERT INTO `ecs_delivery_goods` VALUES ('29', '13', '141', '0', '', '茵克拉芙 2013夏装女装春款连衣裙碎花雪纺OL气', '美的', 'ECS000141', '1', null, '0', '1', '颜色:黄 \n尺寸:XXL \n');

-- ----------------------------
-- Table structure for `ecs_delivery_order`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_delivery_order`;
CREATE TABLE `ecs_delivery_order` (
  `delivery_id` mediumint(8) unsigned NOT NULL auto_increment,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL default '0',
  `invoice_no` varchar(50) default NULL,
  `add_time` int(10) unsigned default '0',
  `shipping_id` tinyint(3) unsigned default '0',
  `shipping_name` varchar(120) default NULL,
  `user_id` mediumint(8) unsigned default '0',
  `action_user` varchar(30) default NULL,
  `consignee` varchar(60) default NULL,
  `address` varchar(250) default NULL,
  `country` smallint(5) unsigned default '0',
  `province` smallint(5) unsigned default '0',
  `city` smallint(5) unsigned default '0',
  `district` smallint(5) unsigned default '0',
  `sign_building` varchar(120) default NULL,
  `email` varchar(60) default NULL,
  `zipcode` varchar(60) default NULL,
  `tel` varchar(60) default NULL,
  `mobile` varchar(60) default NULL,
  `best_time` varchar(120) default NULL,
  `postscript` varchar(255) default NULL,
  `how_oos` varchar(120) default NULL,
  `insure_fee` decimal(10,2) unsigned default '0.00',
  `shipping_fee` decimal(10,2) unsigned default '0.00',
  `update_time` int(10) unsigned default '0',
  `suppliers_id` smallint(5) default '0',
  `status` tinyint(1) unsigned NOT NULL default '0',
  `agency_id` smallint(5) unsigned default '0',
  PRIMARY KEY  (`delivery_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_delivery_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_email_list`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_email_list`;
CREATE TABLE `ecs_email_list` (
  `id` mediumint(8) NOT NULL auto_increment,
  `email` varchar(60) NOT NULL,
  `stat` tinyint(1) NOT NULL default '0',
  `hash` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_email_list
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_email_sendlist`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_email_sendlist`;
CREATE TABLE `ecs_email_sendlist` (
  `id` mediumint(8) NOT NULL auto_increment,
  `email` varchar(100) NOT NULL,
  `template_id` mediumint(8) NOT NULL,
  `email_content` text NOT NULL,
  `error` tinyint(1) NOT NULL default '0',
  `pri` tinyint(10) NOT NULL,
  `last_send` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_email_sendlist
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_error_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_error_log`;
CREATE TABLE `ecs_error_log` (
  `id` int(10) NOT NULL auto_increment,
  `info` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_exchange_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_exchange_goods`;
CREATE TABLE `ecs_exchange_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `exchange_integral` int(10) unsigned NOT NULL default '0',
  `is_exchange` tinyint(1) unsigned NOT NULL default '0',
  `is_hot` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_exchange_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_favourable_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_favourable_activity`;
CREATE TABLE `ecs_favourable_activity` (
  `act_id` smallint(5) unsigned NOT NULL auto_increment,
  `act_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `user_rank` varchar(255) NOT NULL,
  `act_range` tinyint(3) unsigned NOT NULL,
  `act_range_ext` varchar(255) NOT NULL,
  `min_amount` decimal(10,2) unsigned NOT NULL,
  `max_amount` decimal(10,2) unsigned NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `act_type_ext` decimal(10,2) unsigned NOT NULL,
  `gift` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL default '50',
  PRIMARY KEY  (`act_id`),
  KEY `act_name` (`act_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_favourable_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_feedback`;
CREATE TABLE `ecs_feedback` (
  `msg_id` mediumint(8) unsigned NOT NULL auto_increment,
  `parent_id` mediumint(8) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `user_name` varchar(60) NOT NULL default '',
  `user_email` varchar(60) NOT NULL default '',
  `msg_title` varchar(200) NOT NULL default '',
  `msg_type` tinyint(1) unsigned NOT NULL default '0',
  `msg_status` tinyint(1) unsigned NOT NULL default '0',
  `msg_content` text NOT NULL,
  `msg_time` int(10) unsigned NOT NULL default '0',
  `message_img` varchar(255) NOT NULL default '0',
  `order_id` int(11) unsigned NOT NULL default '0',
  `msg_area` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_frame_category_yzldiy`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_frame_category_yzldiy`;
CREATE TABLE `ecs_frame_category_yzldiy` (
  `id` tinyint(5) NOT NULL auto_increment,
  `name` varchar(25) default NULL,
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_frame_category_yzldiy
-- ----------------------------
INSERT INTO `ecs_frame_category_yzldiy` VALUES ('1', '简约', '1');
INSERT INTO `ecs_frame_category_yzldiy` VALUES ('2', '花边', '1');
INSERT INTO `ecs_frame_category_yzldiy` VALUES ('3', '校园', '1');

-- ----------------------------
-- Table structure for `ecs_frame_yzldiy`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_frame_yzldiy`;
CREATE TABLE `ecs_frame_yzldiy` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(25) default NULL,
  `category` tinyint(2) default '0',
  `status` tinyint(1) default '1',
  `ext` varchar(5) default '.png',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_frame_yzldiy
-- ----------------------------
INSERT INTO `ecs_frame_yzldiy` VALUES ('1', '10001', '1', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('2', '10002', '1', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('3', '10003', '1', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('4', '10004', '1', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('5', '10005', '1', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('6', '20001', '2', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('7', '20002', '2', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('8', '20003', '2', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('9', '20004', '2', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('10', '20005', '2', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('11', '20006', '2', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('12', '20007', '2', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('13', '20008', '2', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('14', '20009', '2', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('15', '20010', '2', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('16', '20011', '2', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('17', '20012', '2', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('18', '20013', '2', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('19', '30001', '3', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('20', '30002', '3', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('21', '30003', '3', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('22', '30004', '3', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('23', '30005', '3', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('24', '30006', '3', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('25', '30007', '3', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('26', '30008', '3', '1', '.png');
INSERT INTO `ecs_frame_yzldiy` VALUES ('27', '30009', '3', '1', '.png');

-- ----------------------------
-- Table structure for `ecs_friend_link`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_friend_link`;
CREATE TABLE `ecs_friend_link` (
  `link_id` smallint(5) unsigned NOT NULL auto_increment,
  `link_name` varchar(255) NOT NULL default '',
  `link_url` varchar(255) NOT NULL default '',
  `link_logo` varchar(255) NOT NULL default '',
  `show_order` tinyint(3) unsigned NOT NULL default '50',
  PRIMARY KEY  (`link_id`),
  KEY `show_order` (`show_order`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_friend_link
-- ----------------------------
INSERT INTO `ecs_friend_link` VALUES ('1', 'ECSHOP 网上商店管理系统', 'http://www.ecshop.com/', 'http://www.ecshop.com/images/logo/ecshop_logo.gif', '50');
INSERT INTO `ecs_friend_link` VALUES ('2', '买否网', 'http://www.maifou.net/', '', '51');
INSERT INTO `ecs_friend_link` VALUES ('3', '免费开独立网店', 'http://www.wdwd.com/', '', '52');

-- ----------------------------
-- Table structure for `ecs_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods`;
CREATE TABLE `ecs_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL auto_increment,
  `cat_id` smallint(5) unsigned NOT NULL default '0',
  `goods_sn` varchar(60) NOT NULL default '',
  `goods_name` varchar(120) NOT NULL default '',
  `goods_name_style` varchar(60) NOT NULL default '+',
  `click_count` int(10) unsigned NOT NULL default '0',
  `brand_id` smallint(5) unsigned NOT NULL default '0',
  `provider_name` varchar(100) NOT NULL default '',
  `goods_number` smallint(5) unsigned NOT NULL default '0',
  `goods_weight` decimal(10,3) unsigned NOT NULL default '0.000',
  `market_price` decimal(10,2) unsigned NOT NULL default '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL default '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL default '0.00',
  `promote_start_date` int(11) unsigned NOT NULL default '0',
  `promote_end_date` int(11) unsigned NOT NULL default '0',
  `warn_number` tinyint(3) unsigned NOT NULL default '1',
  `keywords` varchar(255) NOT NULL default '',
  `goods_brief` varchar(255) NOT NULL default '',
  `goods_desc` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL default '',
  `goods_img` varchar(255) NOT NULL default '',
  `original_img` varchar(255) NOT NULL default '',
  `is_real` tinyint(3) unsigned NOT NULL default '1',
  `extension_code` varchar(30) NOT NULL default '',
  `is_on_sale` tinyint(1) unsigned NOT NULL default '1',
  `is_alone_sale` tinyint(1) unsigned NOT NULL default '1',
  `is_shipping` tinyint(1) unsigned NOT NULL default '0',
  `integral` int(10) unsigned NOT NULL default '0',
  `add_time` int(10) unsigned NOT NULL default '0',
  `sort_order` smallint(4) unsigned NOT NULL default '100',
  `is_delete` tinyint(1) unsigned NOT NULL default '0',
  `is_best` tinyint(1) unsigned NOT NULL default '0',
  `is_new` tinyint(1) unsigned NOT NULL default '0',
  `is_hot` tinyint(1) unsigned NOT NULL default '0',
  `is_promote` tinyint(1) unsigned NOT NULL default '0',
  `bonus_type_id` tinyint(3) unsigned NOT NULL default '0',
  `last_update` int(10) unsigned NOT NULL default '0',
  `goods_type` smallint(5) unsigned NOT NULL default '0',
  `seller_note` varchar(255) NOT NULL default '',
  `give_integral` int(11) NOT NULL default '-1',
  `rank_integral` int(11) NOT NULL default '-1',
  `suppliers_id` smallint(5) unsigned default NULL,
  `is_check` tinyint(1) unsigned default NULL,
  `unit` varchar(8) NOT NULL,
  `goods_bar_code` varchar(32) NOT NULL,
  `goods_max_buy` int(11) NOT NULL default '0',
  `goods_min_buy` int(11) NOT NULL default '0',
  `goods_bind_type` varchar(18) NOT NULL,
  `goods_composite_page` int(11) NOT NULL,
  `goods_composite_pic` int(11) NOT NULL,
  `goods_gray` int(11) NOT NULL default '1',
  `goods_composite_pdf` int(11) NOT NULL default '1',
  `goods_album` int(11) NOT NULL default '1',
  `goods_add_page_start` int(11) NOT NULL,
  `goods_add_page_max` int(11) NOT NULL,
  `goods_add_page_unit` int(11) NOT NULL,
  `is_text_on` int(11) NOT NULL default '1',
  `is_pic` int(11) NOT NULL default '1',
  `is_background` int(11) NOT NULL default '1',
  `is_gif` int(11) NOT NULL default '1',
  `is_border` int(11) NOT NULL default '1',
  `is_mask` int(11) NOT NULL default '1',
  `is_format` int(11) NOT NULL default '1',
  `is_textvr` int(11) NOT NULL default '1',
  `goods_line_min` int(11) NOT NULL,
  `goods_line_max` int(11) NOT NULL,
  `goods_line_up_unit` int(11) NOT NULL,
  `goods_defination` int(11) NOT NULL,
  `goods_inner_width` int(11) NOT NULL,
  `goods_inner_height` int(11) NOT NULL,
  `goods_blood_h` int(11) NOT NULL,
  `goods_blood_v` int(11) NOT NULL,
  `goods_safe_line` int(11) NOT NULL,
  `goods_inner_type` varchar(18) NOT NULL,
  `goods_size_width` int(11) NOT NULL,
  `goods_size_length` int(11) NOT NULL,
  PRIMARY KEY  (`goods_id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`cat_id`),
  KEY `last_update` (`last_update`),
  KEY `brand_id` (`brand_id`),
  KEY `goods_weight` (`goods_weight`),
  KEY `promote_end_date` (`promote_end_date`),
  KEY `promote_start_date` (`promote_start_date`),
  KEY `goods_number` (`goods_number`),
  KEY `sort_order` (`sort_order`)
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods
-- ----------------------------
INSERT INTO `ecs_goods` VALUES ('134', '29', '件', '韩味HW-2014初冬套装 毛衣外套', '+', '624', '11', '', '97', '0.000', '132.00', '110.00', '110.00', '1380614400', '1948608000', '1', '', '我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息', '<p>&nbsp;</p>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d05.res.meilishuo.net/pic/a/7f/f8/98b51fb1a1121be38d462eb4996e_750_3467_5_1.cf.jpg_91d09cf3_q0_1_1_0_710_710.jpg\" alt=\"韩味HW-2014初冬套装 毛衣外套 长袖连衣裙 蓬蓬裙 气质长袖针织衫+半身裙  两件套连衣裙套装\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d05.res.meilishuo.net/pic/a/7f/f8/98b51fb1a1121be38d462eb4996e_750_3467_5_2.cf.jpg_91d09cf3_q0_1_1_0_710_710.jpg\" alt=\"韩味HW-2014初冬套装 毛衣外套 长袖连衣裙 蓬蓬裙 气质长袖针织衫+半身裙  两件套连衣裙套装\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://imgtest.meiliworks.com/pic/a/7f/f8/98b51fb1a1121be38d462eb4996e_750_3467_5_3.cf.jpg_91d09cf3_q0_1_1_0_710_710.jpg\" alt=\"韩味HW-2014初冬套装 毛衣外套 长袖连衣裙 蓬蓬裙 气质长袖针织衫+半身裙  两件套连衣裙套装\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d04.res.meilishuo.net/pic/a/7f/f8/98b51fb1a1121be38d462eb4996e_750_3467_5_4.cf.jpg_91d09cf3_q0_1_1_0_710_710.jpg\" alt=\"韩味HW-2014初冬套装 毛衣外套 长袖连衣裙 蓬蓬裙 气质长袖针织衫+半身裙  两件套连衣裙套装\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</div>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p>&nbsp;</p>', 'images/201410/thumb_img/134_thumb_G_1413930635678.jpg', 'images/201410/goods_img/134_G_1413930635959.jpg', 'images/201410/source_img/134_G_1413930635467.jpg', '1', '', '1', '1', '0', '1', '1380647163', '1', '0', '1', '0', '1', '1', '0', '1460589371', '14', '', '-1', '-1', '0', null, '件', '', '0', '0', '2', '0', '0', '1', '1', '1', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `ecs_goods` VALUES ('136', '29', 'ECS000136', '米兰时装周同款 法式优雅女人味性感尖头及踝靴 细跟高跟短靴裸靴', '+', '8', '2', '', '99', '0.000', '144.00', '120.00', '110.00', '1380614400', '1980230400', '1', '', '我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息', '<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d05.res.meilishuo.net/pic/a/e2/d3/187ad3bec2bc300be51107797424_640_900_2_1.cc.jpg_c844f589_q0_1_1_0_710_710.jpg\" alt=\"米兰时装周同款 法式优雅女人味性感尖头及踝靴 细跟高跟短靴裸靴\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 640px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d05.res.meilishuo.net/pic/a/e2/d3/187ad3bec2bc300be51107797424_640_900_2_2.cc.jpg_c844f589_q0_1_1_0_710_710.jpg\" alt=\"米兰时装周同款 法式优雅女人味性感尖头及踝靴 细跟高跟短靴裸靴\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 190px; width: 640px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d06.res.meilishuo.net/pic/a/db/70/8bb143ec35d816ad456074996d1f_640_900_2_1.cc.jpg_67be050a_q0_1_1_0_710_710.jpg\" alt=\"米兰时装周同款 法式优雅女人味性感尖头及踝靴 细跟高跟短靴裸靴\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 640px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d06.res.meilishuo.net/pic/a/db/70/8bb143ec35d816ad456074996d1f_640_900_2_2.cc.jpg_67be050a_q0_1_1_0_710_710.jpg\" alt=\"米兰时装周同款 法式优雅女人味性感尖头及踝靴 细跟高跟短靴裸靴\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 190px; width: 640px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d04.res.meilishuo.net/pic/a/1e/73/3340eb562c754bbb7c692fbea130_640_900_2_1.cc.jpg_7d057ebb_q0_1_1_0_710_710.jpg\" alt=\"米兰时装周同款 法式优雅女人味性感尖头及踝靴 细跟高跟短靴裸靴\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 640px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d04.res.meilishuo.net/pic/a/1e/73/3340eb562c754bbb7c692fbea130_640_900_2_2.cc.jpg_7d057ebb_q0_1_1_0_710_710.jpg\" alt=\"米兰时装周同款 法式优雅女人味性感尖头及踝靴 细跟高跟短靴裸靴\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 190px; width: 640px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>', 'images/201410/thumb_img/136_thumb_G_1413930502490.jpg', 'images/201410/goods_img/136_G_1413930502218.jpg', 'images/201410/source_img/136_G_1413930502372.jpg', '1', '', '1', '1', '0', '1', '1380647873', '2', '0', '1', '0', '1', '1', '0', '1413930542', '14', '', '-1', '-1', '0', null, '', '', '0', '0', '2', '0', '0', '1', '1', '1', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `ecs_goods` VALUES ('137', '29', 'ECS000137', '蜜糖家 METIME 秋季新品 自制薄毛呢西装长马甲', '+', '6', '3', '', '99', '0.000', '144.00', '120.00', '0.00', '0', '0', '1', '', '我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息', '<p>&nbsp;</p>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d05.res.meilishuo.net/pic/a/5a/1b/0b94da7cecba6dd72ead532854e5_640_1260_2_1.cg.jpg_94fbf1f5_q0_1_1_0_710_710.jpg\" alt=\"薄毛呢西装长马甲\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 640px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d05.res.meilishuo.net/pic/a/5a/1b/0b94da7cecba6dd72ead532854e5_640_1260_2_2.cg.jpg_94fbf1f5_q0_1_1_0_710_710.jpg\" alt=\"薄毛呢西装长马甲\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 550px; width: 640px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d03.res.meilishuo.net/pic/a/5a/c2/d87c5e88bb170a482932ec6e6803_800_1125_2_1.cg.jpg_9efd5827_q0_1_1_0_710_710.jpg\" alt=\"薄毛呢西装长马甲\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d02.res.meilishuo.net/pic/a/5a/c2/d87c5e88bb170a482932ec6e6803_800_1125_2_2.cg.jpg_9efd5827_q0_1_1_0_710_710.jpg\" alt=\"薄毛呢西装长马甲\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 288px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d04.res.meilishuo.net/pic/a/9d/7f/e45412a45aefd9319480325d0a32_800_1125_2_1.ch.jpg_94b4eafe_q0_1_1_0_710_710.jpg\" alt=\"薄毛呢西装长马甲\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d06.res.meilishuo.net/pic/a/9d/7f/e45412a45aefd9319480325d0a32_800_1125_2_2.ch.jpg_94b4eafe_q0_1_1_0_710_710.jpg\" alt=\"薄毛呢西装长马甲\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 288px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>', 'images/201410/thumb_img/137_thumb_G_1413930199355.jpg', 'images/201410/goods_img/137_G_1413930199852.jpg', 'images/201410/source_img/137_G_1413930199712.jpg', '1', '', '1', '1', '0', '1', '1380647890', '100', '0', '0', '1', '1', '0', '0', '1461115614', '14', '', '-1', '-1', '0', null, '', '', '0', '0', '2', '0', '0', '1', '1', '1', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `ecs_goods` VALUES ('138', '29', 'ECS000138', '现货发售 马海毛保暖毛衣', '+', '1', '4', '', '99', '0.000', '144.00', '120.00', '0.00', '0', '0', '1', '', '我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息', '<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d06.res.meilishuo.net/pic/a/94/06/952aec152f113d236c94888aceee_640_1260_2_1.ch.jpg_6606d987_q0_1_1_0_710_710.jpg\" alt=\"马海毛保暖毛衣\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 640px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d04.res.meilishuo.net/pic/a/94/06/952aec152f113d236c94888aceee_640_1260_2_2.ch.jpg_6606d987_q0_1_1_0_710_710.jpg\" alt=\"马海毛保暖毛衣\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 550px; width: 640px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d02.res.meilishuo.net/pic/a/51/d2/a95786fa4a551a9688339517ba1c_800_1125_2_1.cf.jpg_c096dbd1_q0_1_1_0_710_710.jpg\" alt=\"马海毛保暖毛衣\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d05.res.meilishuo.net/pic/a/51/d2/a95786fa4a551a9688339517ba1c_800_1125_2_2.cf.jpg_c096dbd1_q0_1_1_0_710_710.jpg\" alt=\"马海毛保暖毛衣\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 288px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d05.res.meilishuo.net/pic/a/49/68/046750acfae28bd0396fea6a2559_800_1125_2_1.cf.jpg_287145f6_q0_1_1_0_710_710.jpg\" alt=\"马海毛保暖毛衣\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d02.res.meilishuo.net/pic/a/49/68/046750acfae28bd0396fea6a2559_800_1125_2_2.cf.jpg_287145f6_q0_1_1_0_710_710.jpg\" alt=\"马海毛保暖毛衣\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 288px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div>&nbsp;</div>', 'images/201410/thumb_img/138_thumb_G_1413929827659.jpg', 'images/201410/goods_img/138_G_1413929827627.jpg', 'images/201410/source_img/138_G_1413929827744.jpg', '1', '', '1', '1', '0', '1', '1380647918', '100', '0', '1', '1', '1', '0', '0', '1460546869', '14', '', '-1', '-1', '0', null, '', '', '0', '0', '2', '0', '0', '1', '1', '1', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `ecs_goods` VALUES ('139', '29', 'ECS000139', '秋冬黑色天鹅毛衣七分袖休闲套头毛衣蕾丝网纱半身裙蓬蓬裙套装', '+', '4', '5', '', '99', '0.000', '144.00', '120.00', '110.00', '1381219200', '1633680000', '1', '', '我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息', '<p>&nbsp;</p>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d06.res.meilishuo.net/pic/a/24/ee/261b146a498fdcf84e42ce957331_640_900_2_1.cc.jpg_e8b99d4f_q0_1_1_0_710_710.jpg\" alt=\"秋冬黑色天鹅毛衣七分袖休闲套头毛衣蕾丝网纱半身裙蓬蓬裙套装\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 640px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d06.res.meilishuo.net/pic/a/24/ee/261b146a498fdcf84e42ce957331_640_900_2_2.cc.jpg_e8b99d4f_q0_1_1_0_710_710.jpg\" alt=\"秋冬黑色天鹅毛衣七分袖休闲套头毛衣蕾丝网纱半身裙蓬蓬裙套装\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 190px; width: 640px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d05.res.meilishuo.net/pic/a/12/39/80dbaa86f15556efa4a623b5d2ca_824_1000_2_1.cc.jpg_e362251b_q0_1_1_0_710_710.jpg\" alt=\"秋冬黑色天鹅毛衣七分袖休闲套头毛衣蕾丝网纱半身裙蓬蓬裙套装\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d02.res.meilishuo.net/pic/a/12/39/80dbaa86f15556efa4a623b5d2ca_824_1000_2_2.cc.jpg_e362251b_q0_1_1_0_710_710.jpg\" alt=\"秋冬黑色天鹅毛衣七分袖休闲套头毛衣蕾丝网纱半身裙蓬蓬裙套装\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 151px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d05.res.meilishuo.net/pic/a/19/cc/0a2998ed6d7ba254d0fd60ac8801_809_1000_2_1.cc.jpg_ec4ef9ec_q0_1_1_0_710_710.jpg\" alt=\"秋冬黑色天鹅毛衣七分袖休闲套头毛衣蕾丝网纱半身裙蓬蓬裙套装\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d04.res.meilishuo.net/pic/a/19/cc/0a2998ed6d7ba254d0fd60ac8801_809_1000_2_2.cc.jpg_ec4ef9ec_q0_1_1_0_710_710.jpg\" alt=\"秋冬黑色天鹅毛衣七分袖休闲套头毛衣蕾丝网纱半身裙蓬蓬裙套装\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 167px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>', 'images/201410/thumb_img/139_thumb_G_1413929154297.jpg', 'images/201410/goods_img/139_G_1413929154772.jpg', 'images/201410/source_img/139_G_1413929154930.jpg', '1', '', '1', '1', '0', '1', '1461115598', '100', '0', '1', '1', '0', '1', '0', '1460546870', '14', '', '-1', '-1', '0', null, '', '', '0', '0', '2', '0', '0', '1', '1', '1', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `ecs_goods` VALUES ('140', '29', 'ECS000140', '毛貂毛边卫衣套装', '+', '11', '6', '', '99', '0.000', '144.00', '120.00', '110.00', '1380614400', '1664611200', '1', '', '我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息', '<p>&nbsp;</p>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d06.res.meilishuo.net/pic/a/7a/54/de9cee1a3fce50be001fdb161b69_640_1260_2_1.cf.jpg_2a15cebf_q0_1_1_0_710_710.jpg\" alt=\"毛貂毛边卫衣套装\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 640px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d06.res.meilishuo.net/pic/a/7a/54/de9cee1a3fce50be001fdb161b69_640_1260_2_2.cf.jpg_2a15cebf_q0_1_1_0_710_710.jpg\" alt=\"毛貂毛边卫衣套装\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 550px; width: 640px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d05.res.meilishuo.net/pic/a/d2/fb/9c0b542ad856214e6ca2b818909d_800_1125_2_1.cg.jpg_64f6b7a3_q0_1_1_0_710_710.jpg\" alt=\"毛貂毛边卫衣套装\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d03.res.meilishuo.net/pic/a/d2/fb/9c0b542ad856214e6ca2b818909d_800_1125_2_2.cg.jpg_64f6b7a3_q0_1_1_0_710_710.jpg\" alt=\"毛貂毛边卫衣套装\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 288px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d05.res.meilishuo.net/pic/a/e2/a5/65d4a6fbc66d92b90958edf56648_800_1125_2_1.ch.jpg_eacf50ed_q0_1_1_0_710_710.jpg\" alt=\"毛貂毛边卫衣套装\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d02.res.meilishuo.net/pic/a/e2/a5/65d4a6fbc66d92b90958edf56648_800_1125_2_2.ch.jpg_eacf50ed_q0_1_1_0_710_710.jpg\" alt=\"毛貂毛边卫衣套装\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 288px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d06.res.meilishuo.net/pic/a/04/69/e21a0c3a15b37de005b6b1f9b69e_800_1125_2_1.cg.jpg_da5b3260_q0_1_1_0_710_710.jpg\" alt=\"毛貂毛边卫衣套装\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d02.res.meilishuo.net/pic/a/04/69/e21a0c3a15b37de005b6b1f9b69e_800_1125_2_2.cg.jpg_da5b3260_q0_1_1_0_710_710.jpg\" alt=\"毛貂毛边卫衣套装\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 288px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>', 'images/201410/thumb_img/140_thumb_G_1413928959052.jpg', 'images/201410/goods_img/140_G_1413928959785.jpg', 'images/201410/source_img/140_G_1413928959907.jpg', '1', '', '1', '1', '0', '1', '1380647948', '3', '0', '0', '1', '1', '1', '0', '1460589341', '14', '', '-1', '-1', '0', null, '', '', '0', '0', '2', '0', '0', '1', '1', '1', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `ecs_goods` VALUES ('141', '29', 'ECS000141', '大衣', '+', '54', '7', '', '99', '0.000', '0.01', '0.01', '110.00', '1381219200', '1633680000', '1', '', '我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息我是商品的简介信息', '<p>&nbsp;</p>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d02.res.meilishuo.net/pic/a/0a/7d/8b71d164b6d2646705412ffb4aa9_640_1260_2_1.cg.jpg_cb75fa30_q0_1_1_0_710_710.jpg\" alt=\"高质感毛呢大衣\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 640px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d05.res.meilishuo.net/pic/a/0a/7d/8b71d164b6d2646705412ffb4aa9_640_1260_2_2.cg.jpg_cb75fa30_q0_1_1_0_710_710.jpg\" alt=\"高质感毛呢大衣\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 550px; width: 640px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d04.res.meilishuo.net/pic/a/36/ad/2b9ee7382ba0542810239bcc70a6_800_1125_2_1.ch.jpg_54c0cd5e_q0_1_1_0_710_710.jpg\" alt=\"高质感毛呢大衣\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d03.res.meilishuo.net/pic/a/36/ad/2b9ee7382ba0542810239bcc70a6_800_1125_2_2.ch.jpg_54c0cd5e_q0_1_1_0_710_710.jpg\" alt=\"高质感毛呢大衣\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 288px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d02.res.meilishuo.net/pic/a/10/4d/4dda4d3ed817afaed6cc6365d182_800_1125_2_1.ch.jpg_ac5149a5_q0_1_1_0_710_710.jpg\" alt=\"高质感毛呢大衣\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d06.res.meilishuo.net/pic/a/10/4d/4dda4d3ed817afaed6cc6365d182_800_1125_2_2.ch.jpg_ac5149a5_q0_1_1_0_710_710.jpg\" alt=\"高质感毛呢大衣\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 288px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<p class=\"pro_txt\" style=\"margin: 0px 20px; padding: 0px 0px 10px; overflow: hidden; line-height: 24px; color: rgb(102, 102, 102); font-family: Arial;\">&nbsp;</p>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d06.res.meilishuo.net/pic/a/65/cd/5406b7ab4fa92ba8910d7cf0f613_800_1125_2_1.cg.jpg_7bbd614f_q0_1_1_0_710_710.jpg\" alt=\"高质感毛呢大衣\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 710px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>\r\n<div class=\"more_pic\" style=\"margin: 0px 20px; padding: 0px; overflow: hidden; text-align: center; color: rgb(102, 102, 102); font-family: Arial;\"><img src=\"http://d06.res.meilishuo.net/pic/a/65/cd/5406b7ab4fa92ba8910d7cf0f613_800_1125_2_2.cg.jpg_7bbd614f_q0_1_1_0_710_710.jpg\" alt=\"高质感毛呢大衣\" class=\"load_img\" style=\"border: 0px; display: block; margin-left: auto; margin-right: auto; background-image: url(http://i.meilishuo.net/css/images/share/loading.gif); height: 288px; width: 710px; background-position: 50% 50%; background-repeat: no-repeat no-repeat;\" /></div>', 'images/201410/thumb_img/141_thumb_G_1413926445469.jpg', 'images/201410/goods_img/141_G_1413926445159.jpg', 'images/201410/source_img/141_G_1413926445378.jpg', '1', '', '1', '1', '0', '1', '1380647968', '100', '0', '1', '1', '0', '1', '0', '1462512968', '14', '', '-1', '-1', '0', null, '', '012345688', '0', '0', '2', '0', '0', '0', '1', '1', '0', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '10', '0');

-- ----------------------------
-- Table structure for `ecs_goods_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_activity`;
CREATE TABLE `ecs_goods_activity` (
  `act_id` mediumint(8) unsigned NOT NULL auto_increment,
  `act_name` varchar(255) NOT NULL,
  `act_desc` text NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `product_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `is_finished` tinyint(3) unsigned NOT NULL,
  `ext_info` text NOT NULL,
  PRIMARY KEY  (`act_id`),
  KEY `act_name` (`act_name`,`act_type`,`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_activity
-- ----------------------------
INSERT INTO `ecs_goods_activity` VALUES ('1', '夺宝奇兵之诺基亚N96', '新一轮的夺宝开始了\n本期是 诺基亚n96', '0', '23', '0', '诺基亚N96', '1242107580', '1242193980', '0', 'a:4:{s:11:\"start_price\";s:4:\"1.00\";s:9:\"end_price\";s:6:\"800.00\";s:9:\"max_price\";i:0;s:11:\"cost_points\";s:1:\"1\";}');
INSERT INTO `ecs_goods_activity` VALUES ('2', '夺宝奇兵之夏新N7', '本期的夺宝奖品是 夏新N7', '0', '17', '0', '夏新N7', '1242107820', '1250661420', '0', 'a:4:{s:11:\"start_price\";s:4:\"1.00\";s:9:\"end_price\";s:6:\"800.00\";s:9:\"max_price\";i:0;s:11:\"cost_points\";s:1:\"1\";}');
INSERT INTO `ecs_goods_activity` VALUES ('18', '韩味HW-2014初冬套装 毛衣外套 长袖连衣裙 蓬蓬裙 气质长袖针织衫+半身裙 两件套连衣裙套装', '', '1', '134', '0', '韩味HW-2014初冬套装 毛衣外套 长袖连衣裙 蓬蓬裙 气质长袖针织衫+半身裙 两件套连衣裙套装', '1413878400', '1729843200', '0', 'a:4:{s:12:\"price_ladder\";a:1:{i:0;a:2:{s:6:\"amount\";i:10;s:5:\"price\";d:28;}}s:15:\"restrict_amount\";i:100;s:13:\"gift_integral\";i:30;s:7:\"deposit\";d:30;}');
INSERT INTO `ecs_goods_activity` VALUES ('4', '拍卖活动——索爱C702c', '', '2', '10', '0', '索爱C702c', '1242144000', '1242403200', '0', 'a:5:{s:7:\"deposit\";d:0;s:11:\"start_price\";d:0;s:9:\"end_price\";i:0;s:9:\"amplitude\";d:20;s:6:\"no_top\";i:1;}');
INSERT INTO `ecs_goods_activity` VALUES ('5', '摩托罗拉E8 大礼包', '礼包大优惠', '4', '31', '0', '摩托罗拉E8 ', '1242110400', '1252046400', '0', 'a:1:{s:13:\"package_price\";s:4:\"1430\";}');
INSERT INTO `ecs_goods_activity` VALUES ('6', '诺基亚N85大礼包', '诺基亚N85超值大礼包', '4', '32', '0', '诺基亚N85', '1242110760', '1248936360', '0', 'a:1:{s:13:\"package_price\";s:4:\"3150\";}');
INSERT INTO `ecs_goods_activity` VALUES ('9', '拍卖活动一', '', '2', '33', '0', '索尼（SONY）32英寸 高清 液晶电视 KLV-32S550A', '1278057600', '1404979200', '0', 'a:5:{s:7:\"deposit\";d:0;s:11:\"start_price\";d:10;s:9:\"end_price\";d:1000;s:9:\"amplitude\";d:10;s:6:\"no_top\";i:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('10', '拍卖活动二', '', '2', '40', '0', '创维（Skyworth）32英寸 高清 液晶电视 TFT32L01HM', '1277971200', '1341561600', '0', 'a:5:{s:7:\"deposit\";d:0;s:11:\"start_price\";d:10;s:9:\"end_price\";d:1000;s:9:\"amplitude\";d:10;s:6:\"no_top\";i:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('11', '拍卖活动三', '', '2', '38', '0', '三星（SAMSUNG）26英寸 高清液晶电视LA32B350F1', '1278057600', '1309939200', '0', 'a:5:{s:7:\"deposit\";d:0;s:11:\"start_price\";d:10;s:9:\"end_price\";d:1000;s:9:\"amplitude\";d:0;s:6:\"no_top\";i:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('12', '拍卖活动四', '', '2', '50', '0', '力开力朗双肩背包-休闲系列324灰色', '1278057600', '1404633600', '0', 'a:5:{s:7:\"deposit\";d:0;s:11:\"start_price\";d:10;s:9:\"end_price\";d:1000;s:9:\"amplitude\";d:0;s:6:\"no_top\";i:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('14', '拍卖活动五', '', '2', '35', '0', '飞利浦 42英寸 全高清 液晶电视 42PFL5609', '1278057600', '1688630400', '0', 'a:5:{s:7:\"deposit\";d:0;s:11:\"start_price\";d:10;s:9:\"end_price\";d:1000;s:9:\"amplitude\";d:0;s:6:\"no_top\";i:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('15', '拍卖活动六', '', '2', '49', '0', '美的（Midea）空气加湿器 S30U-M1', '1278057600', '1783324800', '0', 'a:5:{s:7:\"deposit\";d:0;s:11:\"start_price\";d:100;s:9:\"end_price\";d:1000;s:9:\"amplitude\";d:0;s:6:\"no_top\";i:0;}');
INSERT INTO `ecs_goods_activity` VALUES ('16', '拍卖活动七', '', '2', '48', '0', '尼康（Nikon）D90 （18-105/3.5-5.6VR）防抖镜头 单反套机', '1278057600', '2035785600', '0', 'a:5:{s:7:\"deposit\";d:0;s:11:\"start_price\";d:10;s:9:\"end_price\";d:1000;s:9:\"amplitude\";d:0;s:6:\"no_top\";i:0;}');

-- ----------------------------
-- Table structure for `ecs_goods_article`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_article`;
CREATE TABLE `ecs_goods_article` (
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `article_id` mediumint(8) unsigned NOT NULL default '0',
  `admin_id` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`goods_id`,`article_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_article
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_goods_attr`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_attr`;
CREATE TABLE `ecs_goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL auto_increment,
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `attr_id` smallint(5) unsigned NOT NULL default '0',
  `attr_value` text NOT NULL,
  `attr_price` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`goods_attr_id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3791 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_attr
-- ----------------------------
INSERT INTO `ecs_goods_attr` VALUES ('2271', '140', '246', 'XXL', '');
INSERT INTO `ecs_goods_attr` VALUES ('2270', '140', '246', 'M', '');
INSERT INTO `ecs_goods_attr` VALUES ('2269', '140', '246', 'L', '');
INSERT INTO `ecs_goods_attr` VALUES ('2268', '140', '246', 'XL', '');
INSERT INTO `ecs_goods_attr` VALUES ('2267', '140', '245', '黄', '');
INSERT INTO `ecs_goods_attr` VALUES ('2266', '140', '245', '蓝', '');
INSERT INTO `ecs_goods_attr` VALUES ('2265', '140', '245', '红', '');
INSERT INTO `ecs_goods_attr` VALUES ('2835', '140', '244', '小碎花', '0');
INSERT INTO `ecs_goods_attr` VALUES ('2836', '140', '243', '短袖', '0');
INSERT INTO `ecs_goods_attr` VALUES ('2837', '140', '242', '日韩', '0');
INSERT INTO `ecs_goods_attr` VALUES ('2251', '139', '246', 'XL', '');
INSERT INTO `ecs_goods_attr` VALUES ('2250', '139', '246', 'L', '');
INSERT INTO `ecs_goods_attr` VALUES ('2249', '139', '246', 'M', '');
INSERT INTO `ecs_goods_attr` VALUES ('2248', '139', '246', 'XXL', '');
INSERT INTO `ecs_goods_attr` VALUES ('2247', '139', '245', '红', '');
INSERT INTO `ecs_goods_attr` VALUES ('2246', '139', '245', '蓝', '');
INSERT INTO `ecs_goods_attr` VALUES ('2245', '139', '245', '黄', '');
INSERT INTO `ecs_goods_attr` VALUES ('2838', '139', '244', '印花/绣花', '0');
INSERT INTO `ecs_goods_attr` VALUES ('2839', '139', '243', '七分袖', '0');
INSERT INTO `ecs_goods_attr` VALUES ('2840', '139', '242', '简约', '0');
INSERT INTO `ecs_goods_attr` VALUES ('2231', '138', '246', 'XXL', '');
INSERT INTO `ecs_goods_attr` VALUES ('2230', '138', '246', 'M', '');
INSERT INTO `ecs_goods_attr` VALUES ('2229', '138', '246', 'L', '');
INSERT INTO `ecs_goods_attr` VALUES ('2228', '138', '246', 'XL', '');
INSERT INTO `ecs_goods_attr` VALUES ('2227', '138', '245', '黄', '');
INSERT INTO `ecs_goods_attr` VALUES ('2226', '138', '245', '蓝', '');
INSERT INTO `ecs_goods_attr` VALUES ('2225', '138', '245', '红', '');
INSERT INTO `ecs_goods_attr` VALUES ('2224', '138', '244', '素色', '0');
INSERT INTO `ecs_goods_attr` VALUES ('2841', '138', '243', '无袖', '0');
INSERT INTO `ecs_goods_attr` VALUES ('2842', '138', '242', '民族', '0');
INSERT INTO `ecs_goods_attr` VALUES ('2211', '137', '246', 'XL', '');
INSERT INTO `ecs_goods_attr` VALUES ('2210', '137', '246', 'L', '');
INSERT INTO `ecs_goods_attr` VALUES ('2209', '137', '246', 'M', '');
INSERT INTO `ecs_goods_attr` VALUES ('2208', '137', '246', 'XXL', '');
INSERT INTO `ecs_goods_attr` VALUES ('2207', '137', '245', '红', '');
INSERT INTO `ecs_goods_attr` VALUES ('2206', '137', '245', '蓝', '');
INSERT INTO `ecs_goods_attr` VALUES ('2205', '137', '245', '黄', '');
INSERT INTO `ecs_goods_attr` VALUES ('2843', '137', '244', '条纹', '0');
INSERT INTO `ecs_goods_attr` VALUES ('2203', '137', '243', '长袖', '0');
INSERT INTO `ecs_goods_attr` VALUES ('2844', '137', '242', '街头', '0');
INSERT INTO `ecs_goods_attr` VALUES ('2191', '136', '246', 'XXL', '');
INSERT INTO `ecs_goods_attr` VALUES ('2190', '136', '246', 'M', '');
INSERT INTO `ecs_goods_attr` VALUES ('2189', '136', '246', 'L', '');
INSERT INTO `ecs_goods_attr` VALUES ('2188', '136', '246', 'XL', '');
INSERT INTO `ecs_goods_attr` VALUES ('2187', '136', '245', '黄', '');
INSERT INTO `ecs_goods_attr` VALUES ('2186', '136', '245', '蓝', '');
INSERT INTO `ecs_goods_attr` VALUES ('2185', '136', '245', '红', '');
INSERT INTO `ecs_goods_attr` VALUES ('2845', '136', '244', '大方格', '0');
INSERT INTO `ecs_goods_attr` VALUES ('2846', '136', '243', '短袖', '0');
INSERT INTO `ecs_goods_attr` VALUES ('2847', '136', '242', '卡通', '0');
INSERT INTO `ecs_goods_attr` VALUES ('3550', '134', '251', '其他', '0');
INSERT INTO `ecs_goods_attr` VALUES ('2151', '134', '246', 'XXL', '');
INSERT INTO `ecs_goods_attr` VALUES ('2150', '134', '246', 'M', '');
INSERT INTO `ecs_goods_attr` VALUES ('2149', '134', '246', 'L', '');
INSERT INTO `ecs_goods_attr` VALUES ('2148', '134', '246', 'XL', '');
INSERT INTO `ecs_goods_attr` VALUES ('2147', '134', '245', '黄', '');
INSERT INTO `ecs_goods_attr` VALUES ('2146', '134', '245', '蓝', '');
INSERT INTO `ecs_goods_attr` VALUES ('2145', '134', '245', '红', '');
INSERT INTO `ecs_goods_attr` VALUES ('2850', '134', '244', '波点', '0');
INSERT INTO `ecs_goods_attr` VALUES ('2851', '134', '243', '七分袖', '0');
INSERT INTO `ecs_goods_attr` VALUES ('2852', '134', '242', '英伦学院', '0');
INSERT INTO `ecs_goods_attr` VALUES ('3549', '134', '250', '棉 聚酯纤维', '0');
INSERT INTO `ecs_goods_attr` VALUES ('3548', '134', '249', '套头', '0');
INSERT INTO `ecs_goods_attr` VALUES ('3547', '134', '248', '印花', '0');
INSERT INTO `ecs_goods_attr` VALUES ('3546', '134', '247', '圆领', '0');

-- ----------------------------
-- Table structure for `ecs_goods_bind_type`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_bind_type`;
CREATE TABLE `ecs_goods_bind_type` (
  `type_id` varchar(18) NOT NULL,
  `type_name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_bind_type
-- ----------------------------
INSERT INTO `ecs_goods_bind_type` VALUES ('1', '测试类别');
INSERT INTO `ecs_goods_bind_type` VALUES ('2', '锁线精装');
INSERT INTO `ecs_goods_bind_type` VALUES ('4', '杂志装订装');

-- ----------------------------
-- Table structure for `ecs_goods_cat`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_cat`;
CREATE TABLE `ecs_goods_cat` (
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `cat_id` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`goods_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_cat
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_goods_gallery`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_gallery`;
CREATE TABLE `ecs_goods_gallery` (
  `img_id` mediumint(8) unsigned NOT NULL auto_increment,
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `img_url` varchar(255) NOT NULL default '',
  `img_desc` varchar(255) NOT NULL default '',
  `thumb_url` varchar(255) NOT NULL default '',
  `img_original` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`img_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=286 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_gallery
-- ----------------------------
INSERT INTO `ecs_goods_gallery` VALUES ('276', '138', 'images/201410/goods_img/138_P_1413929842178.jpg', '', 'images/201410/thumb_img/138_thumb_P_1413929842899.jpg', 'images/201410/source_img/138_P_1413929842547.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('268', '139', 'images/201410/goods_img/139_P_1413929169416.jpg', '', 'images/201410/thumb_img/139_thumb_P_1413929169547.jpg', 'images/201410/source_img/139_P_1413929169688.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('264', '140', 'images/201410/goods_img/140_P_1413928911455.jpg', '', 'images/201410/thumb_img/140_thumb_P_1413928911277.jpg', 'images/201410/source_img/140_P_1413928911522.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('261', '141', 'images/201410/goods_img/141_P_1413926538102.jpg', '', 'images/201410/thumb_img/141_thumb_P_1413926538790.jpg', 'images/201410/source_img/141_P_1413926538088.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('279', '137', 'images/201410/goods_img/137_P_1413930214240.jpg', '', 'images/201410/thumb_img/137_thumb_P_1413930214488.jpg', 'images/201410/source_img/137_P_1413930214738.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('260', '141', 'images/201410/goods_img/141_P_1413926445875.jpg', '', 'images/201410/thumb_img/141_thumb_P_1413926445217.jpg', 'images/201410/source_img/141_P_1413926445082.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('263', '140', 'images/201410/goods_img/140_P_1413928892532.jpg', '', 'images/201410/thumb_img/140_thumb_P_1413928892626.jpg', 'images/201410/source_img/140_P_1413928892986.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('267', '139', 'images/201410/goods_img/139_P_1413929154557.jpg', '', 'images/201410/thumb_img/139_thumb_P_1413929154414.jpg', 'images/201410/source_img/139_P_1413929154178.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('275', '138', 'images/201410/goods_img/138_P_1413929842912.jpg', '', 'images/201410/thumb_img/138_thumb_P_1413929842231.jpg', 'images/201410/source_img/138_P_1413929842536.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('278', '137', 'images/201410/goods_img/137_P_1413930199401.jpg', '', 'images/201410/thumb_img/137_thumb_P_1413930199371.jpg', 'images/201410/source_img/137_P_1413930199588.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('285', '134', 'images/201410/goods_img/134_P_1413930635444.jpg', '', 'images/201410/thumb_img/134_thumb_P_1413930635465.jpg', 'images/201410/source_img/134_P_1413930635043.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('262', '141', 'images/201410/goods_img/141_P_1413926538993.jpg', '', 'images/201410/thumb_img/141_thumb_P_1413926538534.jpg', 'images/201410/source_img/141_P_1413926538134.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('265', '140', 'images/201410/goods_img/140_P_1413928911596.jpg', '', 'images/201410/thumb_img/140_thumb_P_1413928911009.jpg', 'images/201410/source_img/140_P_1413928911517.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('266', '140', 'images/201410/goods_img/140_P_1413928959652.jpg', '', 'images/201410/thumb_img/140_thumb_P_1413928959255.jpg', 'images/201410/source_img/140_P_1413928959377.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('269', '139', 'images/201410/goods_img/139_P_1413929169239.jpg', '', 'images/201410/thumb_img/139_thumb_P_1413929169012.jpg', 'images/201410/source_img/139_P_1413929169238.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('274', '138', 'images/201410/goods_img/138_P_1413929827023.jpg', '', 'images/201410/thumb_img/138_thumb_P_1413929827258.jpg', 'images/201410/source_img/138_P_1413929827611.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('280', '137', 'images/201410/goods_img/137_P_1413930214982.jpg', '', 'images/201410/thumb_img/137_thumb_P_1413930214448.jpg', 'images/201410/source_img/137_P_1413930214136.jpg');
INSERT INTO `ecs_goods_gallery` VALUES ('284', '136', 'images/201410/goods_img/136_P_1413930502890.jpg', '', 'images/201410/thumb_img/136_thumb_P_1413930502854.jpg', 'images/201410/source_img/136_P_1413930502437.jpg');

-- ----------------------------
-- Table structure for `ecs_goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_type`;
CREATE TABLE `ecs_goods_type` (
  `cat_id` smallint(5) unsigned NOT NULL auto_increment,
  `cat_name` varchar(60) NOT NULL default '',
  `enabled` tinyint(1) unsigned NOT NULL default '1',
  `attr_group` varchar(255) NOT NULL,
  PRIMARY KEY  (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_goods_type
-- ----------------------------
INSERT INTO `ecs_goods_type` VALUES ('1', '书', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('2', '音乐', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('3', '电影', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('4', '手机', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('5', '笔记本电脑', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('6', '数码相机', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('7', '数码摄像机', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('8', '化妆品', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('9', '精品手机', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('14', '服装', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('12', '液晶电视', '1', '主体\r\n显示\r\n音频');
INSERT INTO `ecs_goods_type` VALUES ('15', '美妆', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('16', '书', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('17', '音乐', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('18', '电影', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('19', '手机', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('20', '笔记本电脑', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('21', '数码相机', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('22', '数码摄像机', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('23', '化妆品', '1', '');
INSERT INTO `ecs_goods_type` VALUES ('24', '精品手机', '1', '');

-- ----------------------------
-- Table structure for `ecs_group_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_group_goods`;
CREATE TABLE `ecs_group_goods` (
  `parent_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_price` decimal(10,2) unsigned NOT NULL default '0.00',
  `admin_id` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`parent_id`,`goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_group_goods
-- ----------------------------
INSERT INTO `ecs_group_goods` VALUES ('134', '141', '100.00', '1');
INSERT INTO `ecs_group_goods` VALUES ('134', '140', '100.00', '1');
INSERT INTO `ecs_group_goods` VALUES ('134', '139', '100.00', '1');
INSERT INTO `ecs_group_goods` VALUES ('134', '138', '100.00', '1');
INSERT INTO `ecs_group_goods` VALUES ('134', '137', '100.00', '1');
INSERT INTO `ecs_group_goods` VALUES ('134', '136', '100.00', '1');

-- ----------------------------
-- Table structure for `ecs_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_keywords`;
CREATE TABLE `ecs_keywords` (
  `date` date NOT NULL default '0000-00-00',
  `searchengine` varchar(20) NOT NULL default '',
  `keyword` varchar(90) NOT NULL default '',
  `count` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`date`,`searchengine`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_keywords
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_link_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_link_goods`;
CREATE TABLE `ecs_link_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `link_goods_id` mediumint(8) unsigned NOT NULL default '0',
  `is_double` tinyint(1) unsigned NOT NULL default '0',
  `admin_id` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`goods_id`,`link_goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_link_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_mail_templates`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_mail_templates`;
CREATE TABLE `ecs_mail_templates` (
  `template_id` tinyint(1) unsigned NOT NULL auto_increment,
  `template_code` varchar(30) NOT NULL default '',
  `is_html` tinyint(1) unsigned NOT NULL default '0',
  `template_subject` varchar(200) NOT NULL default '',
  `template_content` text NOT NULL,
  `last_modify` int(10) unsigned NOT NULL default '0',
  `last_send` int(10) unsigned NOT NULL default '0',
  `type` varchar(10) NOT NULL,
  PRIMARY KEY  (`template_id`),
  UNIQUE KEY `template_code` (`template_code`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_mail_templates
-- ----------------------------
INSERT INTO `ecs_mail_templates` VALUES ('1', 'send_password', '1', '密码找回', '{$user_name}您好！<br>\n<br>\n您已经进行了密码重置的操作，请点击以下链接(或者复制到您的浏览器):<br>\n<br>\n<a href=\"{$reset_email}\" target=\"_blank\">{$reset_email}</a><br>\n<br>\n以确认您的新密码重置操作！<br>\n<br>\n{$shop_name}<br>\n{$send_date}', '1194824789', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('2', 'order_confirm', '0', '订单确认通知', '亲爱的{$order.consignee}，你好！ \n\n我们已经收到您于 {$order.formated_add_time} 提交的订单，该订单编号为：{$order.order_sn} 请记住这个编号以便日后的查询。\n\n{$shop_name}\n{$sent_date}\n\n\n', '1158226370', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('3', 'deliver_notice', '1', '发货通知', '亲爱的{$order.consignee}。你好！</br></br>\n\n您的订单{$order.order_sn}已于{$send_time}按照您预定的配送方式给您发货了。</br>\n</br>\n{if $order.invoice_no}发货单号是{$order.invoice_no}。</br>{/if}\n</br>\n在您收到货物之后请点击下面的链接确认您已经收到货物：</br>\n<a href=\"{$confirm_url}\" target=\"_blank\">{$confirm_url}</a></br></br>\n如果您还没有收到货物可以点击以下链接给我们留言：</br></br>\n<a href=\"{$send_msg_url}\" target=\"_blank\">{$send_msg_url}</a></br>\n<br>\n再次感谢您对我们的支持。欢迎您的再次光临。 <br>\n<br>\n{$shop_name} </br>\n{$send_date}', '1194823291', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('4', 'order_cancel', '0', '订单取消', '亲爱的{$order.consignee}，你好！ \n\n您的编号为：{$order.order_sn}的订单已取消。\n\n{$shop_name}\n{$send_date}', '1156491130', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('5', 'order_invalid', '0', '订单无效', '亲爱的{$order.consignee}，你好！\n\n您的编号为：{$order.order_sn}的订单无效。\n\n{$shop_name}\n{$send_date}', '1156491164', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('6', 'send_bonus', '0', '发红包', '亲爱的{$user_name}您好！\n\n恭喜您获得了{$count}个红包，金额{if $count > 1}分别{/if}为{$money}\n\n{$shop_name}\n{$send_date}\n', '1156491184', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('7', 'group_buy', '1', '团购商品', '亲爱的{$consignee}，您好！<br>\n<br>\n您于{$order_time}在本店参加团购商品活动，所购买的商品名称为：{$goods_name}，数量：{$goods_number}，订单号为：{$order_sn}，订单金额为：{$order_amount}<br>\n<br>\n此团购商品现在已到结束日期，并达到最低价格，您现在可以对该订单付款。<br>\n<br>\n请点击下面的链接：<br>\n<a href=\"{$shop_url}\" target=\"_blank\">{$shop_url}</a><br>\n<br>\n请尽快登录到用户中心，查看您的订单详情信息。 <br>\n<br>\n{$shop_name} <br>\n<br>\n{$send_date}', '1194824668', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('8', 'register_validate', '1', '邮件验证', '{$user_name}您好！<br><br>\r\n\r\n这封邮件是 {$shop_name} 发送的。你收到这封邮件是为了验证你注册邮件地址是否有效。如果您已经通过验证了，请忽略这封邮件。<br>\r\n请点击以下链接(或者复制到您的浏览器)来验证你的邮件地址:<br>\r\n<a href=\"{$validate_email}\" target=\"_blank\">{$validate_email}</a><br><br>\r\n\r\n{$shop_name}<br>\r\n{$send_date}', '1162201031', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('9', 'virtual_card', '0', '虚拟卡片', '亲爱的{$order.consignee}\r\n你好！您的订单{$order.order_sn}中{$goods.goods_name} 商品的详细信息如下:\r\n{foreach from=$virtual_card item=card}\r\n{if $card.card_sn}卡号：{$card.card_sn}{/if}{if $card.card_password}卡片密码：{$card.card_password}{/if}{if $card.end_date}截至日期：{$card.end_date}{/if}\r\n{/foreach}\r\n再次感谢您对我们的支持。欢迎您的再次光临。\r\n\r\n{$shop_name} \r\n{$send_date}', '1162201031', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('10', 'attention_list', '0', '关注商品', '亲爱的{$user_name}您好~\n\n您关注的商品 : {$goods_name} 最近已经更新,请您查看最新的商品信息\n\n{$goods_url}\r\n\r\n{$shop_name} \r\n{$send_date}', '1183851073', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('11', 'remind_of_new_order', '0', '新订单通知', '亲爱的店长，您好：\n   快来看看吧，又有新订单了。\n    订单号:{$order.order_sn} \n 订单金额:{$order.order_amount}，\n 用户购买商品:{foreach from=$goods_list item=goods_data}{$goods_data.goods_name}(货号:{$goods_data.goods_sn})    {/foreach} \n\n 收货人:{$order.consignee}， \n 收货人地址:{$order.address}，\n 收货人电话:{$order.tel} {$order.mobile}, \n 配送方式:{$order.shipping_name}(费用:{$order.shipping_fee}), \n 付款方式:{$order.pay_name}(费用:{$order.pay_fee})。\n\n               系统提醒\n               {$send_date}', '1196239170', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('12', 'goods_booking', '1', '缺货回复', '亲爱的{$user_name}。你好！</br></br>{$dispose_note}</br></br>您提交的缺货商品链接为</br></br><a href=\"{$goods_link}\" target=\"_blank\">{$goods_name}</a></br><br>{$shop_name} </br>{$send_date}', '0', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('13', 'user_message', '1', '留言回复', '亲爱的{$user_name}。你好！</br></br>对您的留言：</br>{$message_content}</br></br>店主作了如下回复：</br>{$message_note}</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', '0', '0', 'template');
INSERT INTO `ecs_mail_templates` VALUES ('14', 'recomment', '1', '用户评论回复', '亲爱的{$user_name}。你好！</br></br>对您的评论：</br>“{$comment}”</br></br>店主作了如下回复：</br>“{$recomment}”</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', '0', '0', 'template');

-- ----------------------------
-- Table structure for `ecs_material_type`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_material_type`;
CREATE TABLE `ecs_material_type` (
  `type_id` varchar(18) NOT NULL,
  `type_name` varchar(32) NOT NULL,
  `remark` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_material_type
-- ----------------------------
INSERT INTO `ecs_material_type` VALUES ('1', '铝合金类型', '');
INSERT INTO `ecs_material_type` VALUES ('2', '纸质类型', '');

-- ----------------------------
-- Table structure for `ecs_member_price`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_member_price`;
CREATE TABLE `ecs_member_price` (
  `price_id` mediumint(8) unsigned NOT NULL auto_increment,
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `user_rank` tinyint(3) NOT NULL default '0',
  `user_price` decimal(10,2) NOT NULL default '0.00',
  PRIMARY KEY  (`price_id`),
  KEY `goods_id` (`goods_id`,`user_rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_member_price
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_nav`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_nav`;
CREATE TABLE `ecs_nav` (
  `id` mediumint(8) NOT NULL auto_increment,
  `ctype` varchar(10) default NULL,
  `cid` smallint(5) unsigned default NULL,
  `name` varchar(255) NOT NULL,
  `ifshow` tinyint(1) NOT NULL,
  `vieworder` tinyint(1) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `type` (`type`),
  KEY `ifshow` (`ifshow`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_nav
-- ----------------------------
INSERT INTO `ecs_nav` VALUES ('2', '', '0', '选购中心', '1', '2', '0', 'pick_out.php', 'top');
INSERT INTO `ecs_nav` VALUES ('3', '', '0', '我的账户', '1', '0', '0', 'user.php', 'top');
INSERT INTO `ecs_nav` VALUES ('4', 'c', '21', '女装', '1', '0', '0', 'category.php?id=21', 'middle');
INSERT INTO `ecs_nav` VALUES ('6', '', '0', '标签云', '1', '5', '6', 'tag_cloud.php', 'top');
INSERT INTO `ecs_nav` VALUES ('7', '', '0', '免责条款', '1', '1', '0', 'article.php?id=1', 'bottom');
INSERT INTO `ecs_nav` VALUES ('8', '', '0', '隐私保护', '1', '2', '0', 'article.php?id=2', 'bottom');
INSERT INTO `ecs_nav` VALUES ('9', '', '0', '咨询热点', '1', '3', '0', 'article.php?id=3', 'bottom');
INSERT INTO `ecs_nav` VALUES ('10', '', '0', '联系我们', '1', '4', '0', 'article.php?id=4', 'bottom');
INSERT INTO `ecs_nav` VALUES ('11', '', '0', '公司简介', '1', '5', '0', 'article.php?id=5', 'bottom');
INSERT INTO `ecs_nav` VALUES ('12', '', '0', '批发方案', '1', '6', '0', 'wholesale.php', 'bottom');
INSERT INTO `ecs_nav` VALUES ('14', '', '0', '配送方式', '1', '7', '0', 'myship.php', 'bottom');
INSERT INTO `ecs_nav` VALUES ('18', 'c', '170', '裤子', '1', '2', '0', 'category.php?id=170', 'middle');
INSERT INTO `ecs_nav` VALUES ('23', '', '0', '报价单', '1', '6', '0', 'quotation.php', 'top');
INSERT INTO `ecs_nav` VALUES ('24', '', '0', '团购', '1', '23', '0', 'group_buy.php', 'middle');
INSERT INTO `ecs_nav` VALUES ('26', 'c', '132', '男装', '1', '1', '0', 'category.php?id=132', 'middle');
INSERT INTO `ecs_nav` VALUES ('33', '', '0', '品牌专区', '1', '7', '0', 'brand.php', 'middle');

-- ----------------------------
-- Table structure for `ecs_order_action`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_order_action`;
CREATE TABLE `ecs_order_action` (
  `action_id` mediumint(8) unsigned NOT NULL auto_increment,
  `order_id` mediumint(8) unsigned NOT NULL default '0',
  `action_user` varchar(30) NOT NULL default '',
  `order_status` tinyint(1) unsigned NOT NULL default '0',
  `shipping_status` tinyint(1) unsigned NOT NULL default '0',
  `pay_status` tinyint(1) unsigned NOT NULL default '0',
  `action_place` tinyint(1) unsigned NOT NULL default '0',
  `action_note` varchar(255) NOT NULL default '',
  `log_time` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`action_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_order_action
-- ----------------------------
INSERT INTO `ecs_order_action` VALUES ('1', '10', '买家', '1', '0', '2', '0', '', '1462251967');
INSERT INTO `ecs_order_action` VALUES ('2', '11', '买家', '1', '0', '2', '0', '', '1462342023');

-- ----------------------------
-- Table structure for `ecs_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_order_goods`;
CREATE TABLE `ecs_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL auto_increment,
  `order_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_name` varchar(120) NOT NULL default '',
  `goods_sn` varchar(60) NOT NULL default '',
  `product_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_number` smallint(5) unsigned NOT NULL default '1',
  `market_price` decimal(10,2) NOT NULL default '0.00',
  `goods_price` decimal(10,2) NOT NULL default '0.00',
  `goods_attr` text NOT NULL,
  `send_number` smallint(5) unsigned NOT NULL default '0',
  `is_real` tinyint(1) unsigned NOT NULL default '0',
  `extension_code` varchar(30) NOT NULL default '',
  `parent_id` mediumint(8) unsigned NOT NULL default '0',
  `is_gift` smallint(5) unsigned NOT NULL default '0',
  `goods_attr_id` varchar(255) NOT NULL default '',
  `bind_type` varchar(18) NOT NULL,
  `material_type` varchar(18) NOT NULL,
  `goods_height` varchar(18) NOT NULL,
  `goods_width` varchar(18) NOT NULL,
  `goods_page_count` varchar(18) NOT NULL,
  `goods_amount` varchar(18) NOT NULL,
  `goods_url` text NOT NULL,
  `print_status` int(11) NOT NULL default '0',
  `download_status` int(11) NOT NULL default '0',
  PRIMARY KEY  (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_order_goods
-- ----------------------------
INSERT INTO `ecs_order_goods` VALUES ('1', '1', '2', '', '', '0', '1', '0.00', '0.00', '', '0', '0', '', '0', '0', '', '1', '1', '', '', '', '', '', '0', '0');
INSERT INTO `ecs_order_goods` VALUES ('2', '2', '141', '大衣', 'ECS000141', '0', '1', '144.00', '110.00', '', '0', '1', '', '0', '0', '', '1', '1', '', '', '', '', '', '0', '0');
INSERT INTO `ecs_order_goods` VALUES ('3', '3', '140', '毛貂毛边卫衣套装', 'ECS000140', '0', '1', '144.00', '110.00', '', '0', '1', '', '0', '0', '', '1', '1', '', '', '', '', '', '0', '0');
INSERT INTO `ecs_order_goods` VALUES ('4', '4', '139', '秋冬黑色天鹅毛衣七分袖休闲套头毛衣蕾丝网纱半身裙蓬蓬裙套装', 'ECS000139', '0', '1', '144.00', '110.00', '', '0', '1', '', '0', '0', '', '1', '1', '', '', '', '', '', '0', '0');
INSERT INTO `ecs_order_goods` VALUES ('5', '5', '141', '大衣', 'ECS000141', '0', '1', '144.00', '110.00', '', '0', '1', '', '0', '0', '', '1', '1', '', '', '', '', '', '0', '0');
INSERT INTO `ecs_order_goods` VALUES ('6', '6', '141', '大衣', 'ECS000141', '0', '1', '144.00', '110.00', '', '0', '1', '', '0', '0', '', '1', '1', '', '', '', '', '', '0', '0');
INSERT INTO `ecs_order_goods` VALUES ('7', '7', '141', '大衣', 'ECS000141', '0', '1', '144.00', '110.00', '', '0', '1', '', '0', '0', '', '1', '1', '', '', '', '', '', '0', '0');
INSERT INTO `ecs_order_goods` VALUES ('8', '8', '139', '秋冬黑色天鹅毛衣七分袖休闲套头毛衣蕾丝网纱半身裙蓬蓬裙套装', 'ECS000139', '0', '1', '144.00', '110.00', '', '0', '1', '', '0', '0', '', '1', '1', '', '', '', '', '', '0', '0');
INSERT INTO `ecs_order_goods` VALUES ('9', '9', '141', '大衣', 'ECS000141', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '', '1', '1', '', '', '', '', '', '0', '0');
INSERT INTO `ecs_order_goods` VALUES ('10', '10', '141', '大衣', 'ECS000141', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '', '1', '1', '', '', '', '', '', '0', '0');
INSERT INTO `ecs_order_goods` VALUES ('11', '11', '141', '大衣', 'ECS000141', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '', '1', '1', '', '', '', '', '', '0', '0');
INSERT INTO `ecs_order_goods` VALUES ('12', '12', '141', '大衣', 'ECS000141', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '', '1', '1', '', '', '', '', '', '0', '0');

-- ----------------------------
-- Table structure for `ecs_order_info`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_order_info`;
CREATE TABLE `ecs_order_info` (
  `order_id` mediumint(8) unsigned NOT NULL auto_increment,
  `order_sn` varchar(20) NOT NULL default '',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `user_name` varchar(32) NOT NULL,
  `order_status` tinyint(1) unsigned NOT NULL default '0',
  `shipping_status` tinyint(1) unsigned NOT NULL default '0',
  `pay_status` tinyint(1) unsigned NOT NULL default '0',
  `consignee` varchar(60) NOT NULL default '',
  `country` smallint(5) unsigned NOT NULL default '0',
  `province` smallint(5) unsigned NOT NULL default '0',
  `city` smallint(5) unsigned NOT NULL default '0',
  `district` smallint(5) unsigned NOT NULL default '0',
  `address` varchar(255) NOT NULL default '',
  `zipcode` varchar(60) NOT NULL default '',
  `tel` varchar(60) NOT NULL default '',
  `mobile` varchar(60) NOT NULL default '',
  `email` varchar(60) NOT NULL default '',
  `best_time` varchar(120) NOT NULL default '',
  `sign_building` varchar(120) NOT NULL default '',
  `postscript` varchar(255) NOT NULL default '',
  `shipping_id` tinyint(3) NOT NULL default '0',
  `shipping_name` varchar(120) NOT NULL default '',
  `pay_id` tinyint(3) NOT NULL default '0',
  `pay_name` varchar(120) NOT NULL default '',
  `how_oos` varchar(120) NOT NULL default '',
  `how_surplus` varchar(120) NOT NULL default '',
  `pack_name` varchar(120) NOT NULL default '',
  `card_name` varchar(120) NOT NULL default '',
  `card_message` varchar(255) NOT NULL default '',
  `inv_payee` varchar(120) NOT NULL default '',
  `inv_content` varchar(120) NOT NULL default '',
  `goods_amount` decimal(10,2) NOT NULL default '0.00',
  `shipping_fee` decimal(10,2) NOT NULL default '0.00',
  `insure_fee` decimal(10,2) NOT NULL default '0.00',
  `pay_fee` decimal(10,2) NOT NULL default '0.00',
  `pack_fee` decimal(10,2) NOT NULL default '0.00',
  `card_fee` decimal(10,2) NOT NULL default '0.00',
  `money_paid` decimal(10,2) NOT NULL default '0.00',
  `surplus` decimal(10,2) NOT NULL default '0.00',
  `integral` int(10) unsigned NOT NULL default '0',
  `integral_money` decimal(10,2) NOT NULL default '0.00',
  `bonus` decimal(10,2) NOT NULL default '0.00',
  `order_amount` decimal(10,2) NOT NULL default '0.00',
  `from_ad` smallint(5) NOT NULL default '0',
  `referer` varchar(255) NOT NULL default '',
  `add_time` int(10) unsigned NOT NULL default '0',
  `confirm_time` int(10) unsigned NOT NULL default '0',
  `pay_time` int(10) unsigned NOT NULL default '0',
  `shipping_time` int(10) unsigned NOT NULL default '0',
  `pack_id` tinyint(3) unsigned NOT NULL default '0',
  `card_id` tinyint(3) unsigned NOT NULL default '0',
  `bonus_id` mediumint(8) unsigned NOT NULL default '0',
  `invoice_no` varchar(255) NOT NULL default '',
  `extension_code` varchar(30) NOT NULL default '',
  `extension_id` mediumint(8) unsigned NOT NULL default '0',
  `to_buyer` varchar(255) NOT NULL default '',
  `pay_note` varchar(255) NOT NULL default '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `inv_type` varchar(60) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `is_separate` tinyint(1) NOT NULL default '0',
  `parent_id` mediumint(8) unsigned NOT NULL default '0',
  `discount` decimal(10,2) NOT NULL,
  `invitation_code` varchar(18) default NULL,
  `print_status` int(11) NOT NULL default '0',
  `download_status` int(11) NOT NULL default '0',
  PRIMARY KEY  (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`),
  KEY `extension_code` (`extension_code`,`extension_id`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_order_info
-- ----------------------------
INSERT INTO `ecs_order_info` VALUES ('1', '2', '3', 'admin', '0', '0', '2', '', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0', '', '0', '0', '1461381526', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', '13151', '0', '0');
INSERT INTO `ecs_order_info` VALUES ('2', '2016050356508', '0', 'admin', '0', '0', '0', '的士判官', '1', '2', '52', '513', '记得送给浮生给你发的是； ', '100048', '13810332931', '13810332931', '13810332931@163.com', '12：00', '都是高手多伦多峰会', '', '1', 'EMS 国内邮政特快专递', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '110.00', '20.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '130.00', '0', '本站', '1462231565', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', null, '0', '0');
INSERT INTO `ecs_order_info` VALUES ('3', '2016050334382', '1', 'admin', '0', '0', '0', 'fiodos', '1', '2', '52', '513', 'disogisogosi', '100048', '13810332931', '13810332931', '13810332931@163.com', '1', '的四大护法', '丑八怪vfdsdl', '1', 'EMS 国内邮政特快专递', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '110.00', '20.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '130.00', '0', '本站', '1462232185', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', null, '0', '0');
INSERT INTO `ecs_order_info` VALUES ('4', '2016050360173', '73', 'admin', '0', '0', '0', 'KingDragon', '1', '2', '52', '513', 'sgaosgslg', '100048', '13810332931', '13810332931', '100048@163.com', '12：00', 'fdgjhdfdsghf', '', '1', 'EMS 国内邮政特快专递', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '110.00', '20.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '130.00', '0', '本站', '1462232847', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', null, '0', '0');
INSERT INTO `ecs_order_info` VALUES ('5', '2016050388087', '73', 'admin', '0', '0', '0', 'KingDragon', '1', '2', '52', '513', 'dshsdfhsdhz', '100048', '13810332931', '13810332931', '13810332931@163.com', '12：00', 'fdshdfhsd', '俄式测试测试', '1', 'EMS 国内邮政特快专递', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '110.00', '20.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '130.00', '0', '本站', '1462234485', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', null, '0', '0');
INSERT INTO `ecs_order_info` VALUES ('6', '2016050327378', '73', 'admin', '1', '0', '0', 'fjhh', '1', '2', '52', '513', 'sgaosgslg', '100048', '13810332931', '13810332931', '13810332931@163.com', '12：00', 'sadsgsdhsd', '', '1', 'EMS 国内邮政特快专递', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '110.00', '20.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '130.00', '0', '本站', '1462235152', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', null, '1', '1');
INSERT INTO `ecs_order_info` VALUES ('7', '2016050330995', '73', 'admin', '1', '0', '0', 'KingDragon', '1', '2', '52', '512', 'sgaosgslg', '100048', '13810332931', '13810332931', '13810332931@163.com', '12：00', 'sdfsbbfdsfds', '', '1', 'EMS 国内邮政特快专递', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '110.00', '20.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '130.00', '0', '本站', '1462235426', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', null, '1', '1');
INSERT INTO `ecs_order_info` VALUES ('8', '2016050332815', '73', 'admin', '1', '1', '0', 'KingDragon', '1', '2', '52', '513', 'sgaosgslg', '100048', '13810332931', '13810332931', '13810332931@163.com', '12：00', 'sgdnklgdhlbags', '', '1', 'EMS 国内邮政特快专递', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '110.00', '20.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '130.00', '0', '本站', '1462251627', '0', '0', '0', '0', '0', '0', '1231', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', null, '1', '1');
INSERT INTO `ecs_order_info` VALUES ('9', '2016050332894', '73', 'admin', '0', '0', '0', 'KingDragon', '1', '2', '52', '513', 'sgaosgslg', '100048', '13810332931', '13810332931', '13810332931@163.com', '12：00', 'dsgsgfdhsdghsh', '', '1', 'EMS 国内邮政特快专递', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '20.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '20.01', '0', '本站', '1462251769', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', null, '0', '0');
INSERT INTO `ecs_order_info` VALUES ('10', '2016050380926', '73', 'admin', '1', '0', '2', 'KingDragon', '1', '2', '52', '513', 'sgaosgslg', '100048', '13810332931', '13810332931', '13810332931@163.com', '12：00', 'sdfsbbfdsfds', '', '1', 'EMS 国内邮政特快专递', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1462251936', '1462251967', '1462251967', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', null, '0', '0');
INSERT INTO `ecs_order_info` VALUES ('11', '2016050494669', '73', 'admin', '1', '0', '2', 'KingDragon', '1', '2', '52', '513', 'qsqdsewdqe', '100048', '13810332931', '13810332931', '13810332931@163.com', '12：00', 'hjsigcdwhgbcidwogc', '', '1', 'EMS 国内邮政特快专递', '1', '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1462341914', '1462342023', '1462342023', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', null, '0', '0');
INSERT INTO `ecs_order_info` VALUES ('12', '2016050420238', '73', 'admin', '0', '0', '0', 'KingDragon', '1', '2', '52', '509', '1', '100048', '13810332931', '13810332931', '13810332931@163.com', '12：00', 'dsgsfgs', '', '1', 'EMS 国内邮政特快专递', '1', '<font color=\"#FF0000\">支付宝</font>', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1462344302', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00', null, '0', '0');

-- ----------------------------
-- Table structure for `ecs_pack`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_pack`;
CREATE TABLE `ecs_pack` (
  `pack_id` tinyint(3) unsigned NOT NULL auto_increment,
  `pack_name` varchar(120) NOT NULL default '',
  `pack_img` varchar(255) NOT NULL default '',
  `pack_fee` decimal(6,2) unsigned NOT NULL default '0.00',
  `free_money` smallint(5) unsigned NOT NULL default '0',
  `pack_desc` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`pack_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_pack
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_package_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_package_goods`;
CREATE TABLE `ecs_package_goods` (
  `package_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `product_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_number` smallint(5) unsigned NOT NULL default '1',
  `admin_id` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`package_id`,`goods_id`,`admin_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_package_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_payment`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_payment`;
CREATE TABLE `ecs_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL auto_increment,
  `pay_code` varchar(20) NOT NULL default '',
  `pay_name` varchar(120) NOT NULL default '',
  `pay_fee` varchar(10) NOT NULL default '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL default '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL default '0',
  `is_cod` tinyint(1) unsigned NOT NULL default '0',
  `is_online` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_payment
-- ----------------------------
INSERT INTO `ecs_payment` VALUES ('1', 'alipay', '<font color=\"#FF0000\">支付宝</font>', '0', '欢迎使用支付宝', '0', 'a:4:{i:0;a:3:{s:4:\"name\";s:14:\"alipay_account\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:22:\"zhaoyong@itimepost.com\";}i:1;a:3:{s:4:\"name\";s:10:\"alipay_key\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:32:\"o66d97xudc1exw10vgin42mxe3en5sar\";}i:2;a:3:{s:4:\"name\";s:14:\"alipay_partner\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:16:\"2088221380842125\";}i:3;a:3:{s:4:\"name\";s:17:\"alipay_pay_method\";s:4:\"type\";s:6:\"select\";s:5:\"value\";s:1:\"2\";}}', '1', '0', '1');

-- ----------------------------
-- Table structure for `ecs_pay_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_pay_log`;
CREATE TABLE `ecs_pay_log` (
  `log_id` int(10) unsigned NOT NULL auto_increment,
  `order_id` mediumint(8) unsigned NOT NULL default '0',
  `order_amount` decimal(10,2) unsigned NOT NULL,
  `order_type` tinyint(1) unsigned NOT NULL default '0',
  `is_paid` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_pay_log
-- ----------------------------
INSERT INTO `ecs_pay_log` VALUES ('1', '12', '0.01', '0', '0');
INSERT INTO `ecs_pay_log` VALUES ('2', '10', '0.00', '0', '0');

-- ----------------------------
-- Table structure for `ecs_plugins`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_plugins`;
CREATE TABLE `ecs_plugins` (
  `code` varchar(30) NOT NULL default '',
  `version` varchar(10) NOT NULL default '',
  `library` varchar(255) NOT NULL default '',
  `assign` tinyint(1) unsigned NOT NULL default '0',
  `install_date` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_plugins
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_products`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_products`;
CREATE TABLE `ecs_products` (
  `product_id` mediumint(8) unsigned NOT NULL auto_increment,
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_attr` varchar(50) default NULL,
  `product_sn` varchar(60) default NULL,
  `product_number` smallint(5) unsigned default '0',
  PRIMARY KEY  (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_products
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_product_category_yzldiy`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_product_category_yzldiy`;
CREATE TABLE `ecs_product_category_yzldiy` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(20) default NULL,
  `pid` int(11) default NULL,
  `info` varchar(50) default NULL,
  `sort` varchar(5) default NULL,
  `pt` varchar(15) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_product_category_yzldiy
-- ----------------------------
INSERT INTO `ecs_product_category_yzldiy` VALUES ('1', '测试类别一', null, '我是测试类别一的简介信息', '这是什么鬼', '不造这想表达啥意思');
INSERT INTO `ecs_product_category_yzldiy` VALUES ('2', '测试类别二', null, '我是测试类别二的简介信息', '这是什么鬼', '不造这想表达啥意思');
INSERT INTO `ecs_product_category_yzldiy` VALUES ('3', '测试类别三', null, '我是测试类别三的简介信息', '这是什么鬼', '不造这想表达啥意思');
INSERT INTO `ecs_product_category_yzldiy` VALUES ('4', '测试类别四', null, '我是测试类别四的简介信息', '这是什么鬼', '不造这想表达啥意思');
INSERT INTO `ecs_product_category_yzldiy` VALUES ('5', '测试类别五', null, '我是测试类别五的简介信息', '这是什么鬼', '不造这想表达啥意思');
INSERT INTO `ecs_product_category_yzldiy` VALUES ('6', '测试类别六', null, '我是测试类别六的简介信息', '这是什么鬼', '不造这想表达啥意思');
INSERT INTO `ecs_product_category_yzldiy` VALUES ('7', '测试类别七', null, '我是测试类别七的简介信息', '这是什么鬼', '不造这想表达啥意思');
INSERT INTO `ecs_product_category_yzldiy` VALUES ('8', '测试类别八', null, '我是测试类别八的简介信息', '这是什么鬼', '不造这想表达啥意思');
INSERT INTO `ecs_product_category_yzldiy` VALUES ('9', '测试类别九', null, '我是测试类别九的简介信息', '这是什么鬼', '不造这想表达啥意思');
INSERT INTO `ecs_product_category_yzldiy` VALUES ('10', '测试类别十', null, '我是测试类别十的简介信息', '这是什么鬼', '不造这想表达啥意思');

-- ----------------------------
-- Table structure for `ecs_product_yzldiy`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_product_yzldiy`;
CREATE TABLE `ecs_product_yzldiy` (
  `pid` int(11) NOT NULL auto_increment,
  `cid` int(32) default NULL,
  `type` tinyint(3) default '1',
  `preview` varchar(255) default NULL,
  `mbDes` text,
  `pageCount` int(3) default NULL,
  `mbCode` varchar(50) default NULL,
  `name` varchar(20) default NULL,
  `retailprice` varchar(10) default NULL,
  `extraInfo` varchar(100) default NULL,
  `status` tinyint(1) default '1',
  `tid` varchar(50) NOT NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_product_yzldiy
-- ----------------------------
INSERT INTO `ecs_product_yzldiy` VALUES ('1', '3', '1', 'http://img1.itimepost.com/o_1ai6bt9127ub6p0154d1k775t7i.jpg', '纪念册', '20', null, '毕业纪念册', '128', null, '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('2', '2', '2', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', null, '20', null, 'DIY案例', '128', null, '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('4', '1', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '100', '不造啥么玩意儿', '商品名', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('5', '1', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('6', '2', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('7', '3', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('8', '4', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('9', '4', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('10', '4', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('11', '5', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('12', '5', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('13', '5', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('14', '6', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('63', '1', '1', 'http://img1.itimepost.com/o_1ai75s4eig8vurt1san5keq8a.jpg', '', null, null, '测试模板100', null, null, '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('16', '7', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('17', '7', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('18', '7', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('19', '7', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('20', '8', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('21', '8', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('22', '8', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('23', '8', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('24', '8', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('25', '9', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('26', '9', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('27', '9', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('28', '10', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('29', '10', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('30', '10', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('31', '10', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('32', '10', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('33', '1', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('34', '1', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('35', '1', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('36', '1', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('37', '1', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('38', '2', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('39', '2', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('40', '2', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('41', '2', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('42', '2', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('43', '2', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('44', '3', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('45', '3', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('46', '3', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('47', '3', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('48', '3', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('49', '3', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('50', '3', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('51', '3', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('52', '3', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('53', '3', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('54', '3', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('55', '3', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('56', '3', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟我是商品的剪接信息哟', '1000', '不造啥么玩意儿', '商品名字', '1000', '多余的信息么？', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('57', '1', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字', '100', '发生的价格的撒娇', '我是每年工资', '1000', '大黄蜂蛋糕撒', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('58', '1', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字', '100', '发生的价格的撒娇', '我是每年工资', '1000', '大黄蜂蛋糕撒', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('59', '1', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字', '100', '发生的价格的撒娇', '我是每年工资', '1000', '大黄蜂蛋糕撒', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('60', '1', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字', '100', '发生的价格的撒娇', '我是每年工资', '1000', '大黄蜂蛋糕撒', '1', '00002');
INSERT INTO `ecs_product_yzldiy` VALUES ('61', '1', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字', '100', '发生的价格的撒娇', '我是每年工资', '1000', '大黄蜂蛋糕撒', '1', '00001');
INSERT INTO `ecs_product_yzldiy` VALUES ('62', '1', '1', 'http://img1.3lian.com/img013/v4/96/d/51.jpg', '我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字我是剪接文字', '100', '发生的价格的撒娇', '我是每年工资', '1000', '大黄蜂蛋糕撒', '1', '00002');

-- ----------------------------
-- Table structure for `ecs_region`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_region`;
CREATE TABLE `ecs_region` (
  `region_id` smallint(5) unsigned NOT NULL auto_increment,
  `parent_id` smallint(5) unsigned NOT NULL default '0',
  `region_name` varchar(120) NOT NULL default '',
  `region_type` tinyint(1) NOT NULL default '2',
  `agency_id` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`region_id`),
  KEY `parent_id` (`parent_id`),
  KEY `region_type` (`region_type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3409 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_region
-- ----------------------------
INSERT INTO `ecs_region` VALUES ('1', '0', '中国', '0', '0');
INSERT INTO `ecs_region` VALUES ('2', '1', '北京', '1', '0');
INSERT INTO `ecs_region` VALUES ('3', '1', '安徽', '1', '0');
INSERT INTO `ecs_region` VALUES ('4', '1', '福建', '1', '0');
INSERT INTO `ecs_region` VALUES ('5', '1', '甘肃', '1', '0');
INSERT INTO `ecs_region` VALUES ('6', '1', '广东', '1', '0');
INSERT INTO `ecs_region` VALUES ('7', '1', '广西', '1', '0');
INSERT INTO `ecs_region` VALUES ('8', '1', '贵州', '1', '0');
INSERT INTO `ecs_region` VALUES ('9', '1', '海南', '1', '0');
INSERT INTO `ecs_region` VALUES ('10', '1', '河北', '1', '0');
INSERT INTO `ecs_region` VALUES ('11', '1', '河南', '1', '0');
INSERT INTO `ecs_region` VALUES ('12', '1', '黑龙江', '1', '0');
INSERT INTO `ecs_region` VALUES ('13', '1', '湖北', '1', '0');
INSERT INTO `ecs_region` VALUES ('14', '1', '湖南', '1', '0');
INSERT INTO `ecs_region` VALUES ('15', '1', '吉林', '1', '0');
INSERT INTO `ecs_region` VALUES ('16', '1', '江苏', '1', '0');
INSERT INTO `ecs_region` VALUES ('17', '1', '江西', '1', '0');
INSERT INTO `ecs_region` VALUES ('18', '1', '辽宁', '1', '0');
INSERT INTO `ecs_region` VALUES ('19', '1', '内蒙古', '1', '0');
INSERT INTO `ecs_region` VALUES ('20', '1', '宁夏', '1', '0');
INSERT INTO `ecs_region` VALUES ('21', '1', '青海', '1', '0');
INSERT INTO `ecs_region` VALUES ('22', '1', '山东', '1', '0');
INSERT INTO `ecs_region` VALUES ('23', '1', '山西', '1', '0');
INSERT INTO `ecs_region` VALUES ('24', '1', '陕西', '1', '0');
INSERT INTO `ecs_region` VALUES ('25', '1', '上海', '1', '0');
INSERT INTO `ecs_region` VALUES ('26', '1', '四川', '1', '0');
INSERT INTO `ecs_region` VALUES ('27', '1', '天津', '1', '0');
INSERT INTO `ecs_region` VALUES ('28', '1', '西藏', '1', '0');
INSERT INTO `ecs_region` VALUES ('29', '1', '新疆', '1', '0');
INSERT INTO `ecs_region` VALUES ('30', '1', '云南', '1', '0');
INSERT INTO `ecs_region` VALUES ('31', '1', '浙江', '1', '0');
INSERT INTO `ecs_region` VALUES ('32', '1', '重庆', '1', '0');
INSERT INTO `ecs_region` VALUES ('33', '1', '香港', '1', '0');
INSERT INTO `ecs_region` VALUES ('34', '1', '澳门', '1', '0');
INSERT INTO `ecs_region` VALUES ('35', '1', '台湾', '1', '0');
INSERT INTO `ecs_region` VALUES ('36', '3', '安庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('37', '3', '蚌埠', '2', '0');
INSERT INTO `ecs_region` VALUES ('38', '3', '巢湖', '2', '0');
INSERT INTO `ecs_region` VALUES ('39', '3', '池州', '2', '0');
INSERT INTO `ecs_region` VALUES ('40', '3', '滁州', '2', '0');
INSERT INTO `ecs_region` VALUES ('41', '3', '阜阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('42', '3', '淮北', '2', '0');
INSERT INTO `ecs_region` VALUES ('43', '3', '淮南', '2', '0');
INSERT INTO `ecs_region` VALUES ('44', '3', '黄山', '2', '0');
INSERT INTO `ecs_region` VALUES ('45', '3', '六安', '2', '0');
INSERT INTO `ecs_region` VALUES ('46', '3', '马鞍山', '2', '0');
INSERT INTO `ecs_region` VALUES ('47', '3', '宿州', '2', '0');
INSERT INTO `ecs_region` VALUES ('48', '3', '铜陵', '2', '0');
INSERT INTO `ecs_region` VALUES ('49', '3', '芜湖', '2', '0');
INSERT INTO `ecs_region` VALUES ('50', '3', '宣城', '2', '0');
INSERT INTO `ecs_region` VALUES ('51', '3', '亳州', '2', '0');
INSERT INTO `ecs_region` VALUES ('52', '2', '北京', '2', '0');
INSERT INTO `ecs_region` VALUES ('53', '4', '福州', '2', '0');
INSERT INTO `ecs_region` VALUES ('54', '4', '龙岩', '2', '0');
INSERT INTO `ecs_region` VALUES ('55', '4', '南平', '2', '0');
INSERT INTO `ecs_region` VALUES ('56', '4', '宁德', '2', '0');
INSERT INTO `ecs_region` VALUES ('57', '4', '莆田', '2', '0');
INSERT INTO `ecs_region` VALUES ('58', '4', '泉州', '2', '0');
INSERT INTO `ecs_region` VALUES ('59', '4', '三明', '2', '0');
INSERT INTO `ecs_region` VALUES ('60', '4', '厦门', '2', '0');
INSERT INTO `ecs_region` VALUES ('61', '4', '漳州', '2', '0');
INSERT INTO `ecs_region` VALUES ('62', '5', '兰州', '2', '0');
INSERT INTO `ecs_region` VALUES ('63', '5', '白银', '2', '0');
INSERT INTO `ecs_region` VALUES ('64', '5', '定西', '2', '0');
INSERT INTO `ecs_region` VALUES ('65', '5', '甘南', '2', '0');
INSERT INTO `ecs_region` VALUES ('66', '5', '嘉峪关', '2', '0');
INSERT INTO `ecs_region` VALUES ('67', '5', '金昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('68', '5', '酒泉', '2', '0');
INSERT INTO `ecs_region` VALUES ('69', '5', '临夏', '2', '0');
INSERT INTO `ecs_region` VALUES ('70', '5', '陇南', '2', '0');
INSERT INTO `ecs_region` VALUES ('71', '5', '平凉', '2', '0');
INSERT INTO `ecs_region` VALUES ('72', '5', '庆阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('73', '5', '天水', '2', '0');
INSERT INTO `ecs_region` VALUES ('74', '5', '武威', '2', '0');
INSERT INTO `ecs_region` VALUES ('75', '5', '张掖', '2', '0');
INSERT INTO `ecs_region` VALUES ('76', '6', '广州', '2', '0');
INSERT INTO `ecs_region` VALUES ('77', '6', '深圳', '2', '0');
INSERT INTO `ecs_region` VALUES ('78', '6', '潮州', '2', '0');
INSERT INTO `ecs_region` VALUES ('79', '6', '东莞', '2', '0');
INSERT INTO `ecs_region` VALUES ('80', '6', '佛山', '2', '0');
INSERT INTO `ecs_region` VALUES ('81', '6', '河源', '2', '0');
INSERT INTO `ecs_region` VALUES ('82', '6', '惠州', '2', '0');
INSERT INTO `ecs_region` VALUES ('83', '6', '江门', '2', '0');
INSERT INTO `ecs_region` VALUES ('84', '6', '揭阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('85', '6', '茂名', '2', '0');
INSERT INTO `ecs_region` VALUES ('86', '6', '梅州', '2', '0');
INSERT INTO `ecs_region` VALUES ('87', '6', '清远', '2', '0');
INSERT INTO `ecs_region` VALUES ('88', '6', '汕头', '2', '0');
INSERT INTO `ecs_region` VALUES ('89', '6', '汕尾', '2', '0');
INSERT INTO `ecs_region` VALUES ('90', '6', '韶关', '2', '0');
INSERT INTO `ecs_region` VALUES ('91', '6', '阳江', '2', '0');
INSERT INTO `ecs_region` VALUES ('92', '6', '云浮', '2', '0');
INSERT INTO `ecs_region` VALUES ('93', '6', '湛江', '2', '0');
INSERT INTO `ecs_region` VALUES ('94', '6', '肇庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('95', '6', '中山', '2', '0');
INSERT INTO `ecs_region` VALUES ('96', '6', '珠海', '2', '0');
INSERT INTO `ecs_region` VALUES ('97', '7', '南宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('98', '7', '桂林', '2', '0');
INSERT INTO `ecs_region` VALUES ('99', '7', '百色', '2', '0');
INSERT INTO `ecs_region` VALUES ('100', '7', '北海', '2', '0');
INSERT INTO `ecs_region` VALUES ('101', '7', '崇左', '2', '0');
INSERT INTO `ecs_region` VALUES ('102', '7', '防城港', '2', '0');
INSERT INTO `ecs_region` VALUES ('103', '7', '贵港', '2', '0');
INSERT INTO `ecs_region` VALUES ('104', '7', '河池', '2', '0');
INSERT INTO `ecs_region` VALUES ('105', '7', '贺州', '2', '0');
INSERT INTO `ecs_region` VALUES ('106', '7', '来宾', '2', '0');
INSERT INTO `ecs_region` VALUES ('107', '7', '柳州', '2', '0');
INSERT INTO `ecs_region` VALUES ('108', '7', '钦州', '2', '0');
INSERT INTO `ecs_region` VALUES ('109', '7', '梧州', '2', '0');
INSERT INTO `ecs_region` VALUES ('110', '7', '玉林', '2', '0');
INSERT INTO `ecs_region` VALUES ('111', '8', '贵阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('112', '8', '安顺', '2', '0');
INSERT INTO `ecs_region` VALUES ('113', '8', '毕节', '2', '0');
INSERT INTO `ecs_region` VALUES ('114', '8', '六盘水', '2', '0');
INSERT INTO `ecs_region` VALUES ('115', '8', '黔东南', '2', '0');
INSERT INTO `ecs_region` VALUES ('116', '8', '黔南', '2', '0');
INSERT INTO `ecs_region` VALUES ('117', '8', '黔西南', '2', '0');
INSERT INTO `ecs_region` VALUES ('118', '8', '铜仁', '2', '0');
INSERT INTO `ecs_region` VALUES ('119', '8', '遵义', '2', '0');
INSERT INTO `ecs_region` VALUES ('120', '9', '海口', '2', '0');
INSERT INTO `ecs_region` VALUES ('121', '9', '三亚', '2', '0');
INSERT INTO `ecs_region` VALUES ('122', '9', '白沙', '2', '0');
INSERT INTO `ecs_region` VALUES ('123', '9', '保亭', '2', '0');
INSERT INTO `ecs_region` VALUES ('124', '9', '昌江', '2', '0');
INSERT INTO `ecs_region` VALUES ('125', '9', '澄迈县', '2', '0');
INSERT INTO `ecs_region` VALUES ('126', '9', '定安县', '2', '0');
INSERT INTO `ecs_region` VALUES ('127', '9', '东方', '2', '0');
INSERT INTO `ecs_region` VALUES ('128', '9', '乐东', '2', '0');
INSERT INTO `ecs_region` VALUES ('129', '9', '临高县', '2', '0');
INSERT INTO `ecs_region` VALUES ('130', '9', '陵水', '2', '0');
INSERT INTO `ecs_region` VALUES ('131', '9', '琼海', '2', '0');
INSERT INTO `ecs_region` VALUES ('132', '9', '琼中', '2', '0');
INSERT INTO `ecs_region` VALUES ('133', '9', '屯昌县', '2', '0');
INSERT INTO `ecs_region` VALUES ('134', '9', '万宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('135', '9', '文昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('136', '9', '五指山', '2', '0');
INSERT INTO `ecs_region` VALUES ('137', '9', '儋州', '2', '0');
INSERT INTO `ecs_region` VALUES ('138', '10', '石家庄', '2', '0');
INSERT INTO `ecs_region` VALUES ('139', '10', '保定', '2', '0');
INSERT INTO `ecs_region` VALUES ('140', '10', '沧州', '2', '0');
INSERT INTO `ecs_region` VALUES ('141', '10', '承德', '2', '0');
INSERT INTO `ecs_region` VALUES ('142', '10', '邯郸', '2', '0');
INSERT INTO `ecs_region` VALUES ('143', '10', '衡水', '2', '0');
INSERT INTO `ecs_region` VALUES ('144', '10', '廊坊', '2', '0');
INSERT INTO `ecs_region` VALUES ('145', '10', '秦皇岛', '2', '0');
INSERT INTO `ecs_region` VALUES ('146', '10', '唐山', '2', '0');
INSERT INTO `ecs_region` VALUES ('147', '10', '邢台', '2', '0');
INSERT INTO `ecs_region` VALUES ('148', '10', '张家口', '2', '0');
INSERT INTO `ecs_region` VALUES ('149', '11', '郑州', '2', '0');
INSERT INTO `ecs_region` VALUES ('150', '11', '洛阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('151', '11', '开封', '2', '0');
INSERT INTO `ecs_region` VALUES ('152', '11', '安阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('153', '11', '鹤壁', '2', '0');
INSERT INTO `ecs_region` VALUES ('154', '11', '济源', '2', '0');
INSERT INTO `ecs_region` VALUES ('155', '11', '焦作', '2', '0');
INSERT INTO `ecs_region` VALUES ('156', '11', '南阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('157', '11', '平顶山', '2', '0');
INSERT INTO `ecs_region` VALUES ('158', '11', '三门峡', '2', '0');
INSERT INTO `ecs_region` VALUES ('159', '11', '商丘', '2', '0');
INSERT INTO `ecs_region` VALUES ('160', '11', '新乡', '2', '0');
INSERT INTO `ecs_region` VALUES ('161', '11', '信阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('162', '11', '许昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('163', '11', '周口', '2', '0');
INSERT INTO `ecs_region` VALUES ('164', '11', '驻马店', '2', '0');
INSERT INTO `ecs_region` VALUES ('165', '11', '漯河', '2', '0');
INSERT INTO `ecs_region` VALUES ('166', '11', '濮阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('167', '12', '哈尔滨', '2', '0');
INSERT INTO `ecs_region` VALUES ('168', '12', '大庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('169', '12', '大兴安岭', '2', '0');
INSERT INTO `ecs_region` VALUES ('170', '12', '鹤岗', '2', '0');
INSERT INTO `ecs_region` VALUES ('171', '12', '黑河', '2', '0');
INSERT INTO `ecs_region` VALUES ('172', '12', '鸡西', '2', '0');
INSERT INTO `ecs_region` VALUES ('173', '12', '佳木斯', '2', '0');
INSERT INTO `ecs_region` VALUES ('174', '12', '牡丹江', '2', '0');
INSERT INTO `ecs_region` VALUES ('175', '12', '七台河', '2', '0');
INSERT INTO `ecs_region` VALUES ('176', '12', '齐齐哈尔', '2', '0');
INSERT INTO `ecs_region` VALUES ('177', '12', '双鸭山', '2', '0');
INSERT INTO `ecs_region` VALUES ('178', '12', '绥化', '2', '0');
INSERT INTO `ecs_region` VALUES ('179', '12', '伊春', '2', '0');
INSERT INTO `ecs_region` VALUES ('180', '13', '武汉', '2', '0');
INSERT INTO `ecs_region` VALUES ('181', '13', '仙桃', '2', '0');
INSERT INTO `ecs_region` VALUES ('182', '13', '鄂州', '2', '0');
INSERT INTO `ecs_region` VALUES ('183', '13', '黄冈', '2', '0');
INSERT INTO `ecs_region` VALUES ('184', '13', '黄石', '2', '0');
INSERT INTO `ecs_region` VALUES ('185', '13', '荆门', '2', '0');
INSERT INTO `ecs_region` VALUES ('186', '13', '荆州', '2', '0');
INSERT INTO `ecs_region` VALUES ('187', '13', '潜江', '2', '0');
INSERT INTO `ecs_region` VALUES ('188', '13', '神农架林区', '2', '0');
INSERT INTO `ecs_region` VALUES ('189', '13', '十堰', '2', '0');
INSERT INTO `ecs_region` VALUES ('190', '13', '随州', '2', '0');
INSERT INTO `ecs_region` VALUES ('191', '13', '天门', '2', '0');
INSERT INTO `ecs_region` VALUES ('192', '13', '咸宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('193', '13', '襄樊', '2', '0');
INSERT INTO `ecs_region` VALUES ('194', '13', '孝感', '2', '0');
INSERT INTO `ecs_region` VALUES ('195', '13', '宜昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('196', '13', '恩施', '2', '0');
INSERT INTO `ecs_region` VALUES ('197', '14', '长沙', '2', '0');
INSERT INTO `ecs_region` VALUES ('198', '14', '张家界', '2', '0');
INSERT INTO `ecs_region` VALUES ('199', '14', '常德', '2', '0');
INSERT INTO `ecs_region` VALUES ('200', '14', '郴州', '2', '0');
INSERT INTO `ecs_region` VALUES ('201', '14', '衡阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('202', '14', '怀化', '2', '0');
INSERT INTO `ecs_region` VALUES ('203', '14', '娄底', '2', '0');
INSERT INTO `ecs_region` VALUES ('204', '14', '邵阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('205', '14', '湘潭', '2', '0');
INSERT INTO `ecs_region` VALUES ('206', '14', '湘西', '2', '0');
INSERT INTO `ecs_region` VALUES ('207', '14', '益阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('208', '14', '永州', '2', '0');
INSERT INTO `ecs_region` VALUES ('209', '14', '岳阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('210', '14', '株洲', '2', '0');
INSERT INTO `ecs_region` VALUES ('211', '15', '长春', '2', '0');
INSERT INTO `ecs_region` VALUES ('212', '15', '吉林', '2', '0');
INSERT INTO `ecs_region` VALUES ('213', '15', '白城', '2', '0');
INSERT INTO `ecs_region` VALUES ('214', '15', '白山', '2', '0');
INSERT INTO `ecs_region` VALUES ('215', '15', '辽源', '2', '0');
INSERT INTO `ecs_region` VALUES ('216', '15', '四平', '2', '0');
INSERT INTO `ecs_region` VALUES ('217', '15', '松原', '2', '0');
INSERT INTO `ecs_region` VALUES ('218', '15', '通化', '2', '0');
INSERT INTO `ecs_region` VALUES ('219', '15', '延边', '2', '0');
INSERT INTO `ecs_region` VALUES ('220', '16', '南京', '2', '0');
INSERT INTO `ecs_region` VALUES ('221', '16', '苏州', '2', '0');
INSERT INTO `ecs_region` VALUES ('222', '16', '无锡', '2', '0');
INSERT INTO `ecs_region` VALUES ('223', '16', '常州', '2', '0');
INSERT INTO `ecs_region` VALUES ('224', '16', '淮安', '2', '0');
INSERT INTO `ecs_region` VALUES ('225', '16', '连云港', '2', '0');
INSERT INTO `ecs_region` VALUES ('226', '16', '南通', '2', '0');
INSERT INTO `ecs_region` VALUES ('227', '16', '宿迁', '2', '0');
INSERT INTO `ecs_region` VALUES ('228', '16', '泰州', '2', '0');
INSERT INTO `ecs_region` VALUES ('229', '16', '徐州', '2', '0');
INSERT INTO `ecs_region` VALUES ('230', '16', '盐城', '2', '0');
INSERT INTO `ecs_region` VALUES ('231', '16', '扬州', '2', '0');
INSERT INTO `ecs_region` VALUES ('232', '16', '镇江', '2', '0');
INSERT INTO `ecs_region` VALUES ('233', '17', '南昌', '2', '0');
INSERT INTO `ecs_region` VALUES ('234', '17', '抚州', '2', '0');
INSERT INTO `ecs_region` VALUES ('235', '17', '赣州', '2', '0');
INSERT INTO `ecs_region` VALUES ('236', '17', '吉安', '2', '0');
INSERT INTO `ecs_region` VALUES ('237', '17', '景德镇', '2', '0');
INSERT INTO `ecs_region` VALUES ('238', '17', '九江', '2', '0');
INSERT INTO `ecs_region` VALUES ('239', '17', '萍乡', '2', '0');
INSERT INTO `ecs_region` VALUES ('240', '17', '上饶', '2', '0');
INSERT INTO `ecs_region` VALUES ('241', '17', '新余', '2', '0');
INSERT INTO `ecs_region` VALUES ('242', '17', '宜春', '2', '0');
INSERT INTO `ecs_region` VALUES ('243', '17', '鹰潭', '2', '0');
INSERT INTO `ecs_region` VALUES ('244', '18', '沈阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('245', '18', '大连', '2', '0');
INSERT INTO `ecs_region` VALUES ('246', '18', '鞍山', '2', '0');
INSERT INTO `ecs_region` VALUES ('247', '18', '本溪', '2', '0');
INSERT INTO `ecs_region` VALUES ('248', '18', '朝阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('249', '18', '丹东', '2', '0');
INSERT INTO `ecs_region` VALUES ('250', '18', '抚顺', '2', '0');
INSERT INTO `ecs_region` VALUES ('251', '18', '阜新', '2', '0');
INSERT INTO `ecs_region` VALUES ('252', '18', '葫芦岛', '2', '0');
INSERT INTO `ecs_region` VALUES ('253', '18', '锦州', '2', '0');
INSERT INTO `ecs_region` VALUES ('254', '18', '辽阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('255', '18', '盘锦', '2', '0');
INSERT INTO `ecs_region` VALUES ('256', '18', '铁岭', '2', '0');
INSERT INTO `ecs_region` VALUES ('257', '18', '营口', '2', '0');
INSERT INTO `ecs_region` VALUES ('258', '19', '呼和浩特', '2', '0');
INSERT INTO `ecs_region` VALUES ('259', '19', '阿拉善盟', '2', '0');
INSERT INTO `ecs_region` VALUES ('260', '19', '巴彦淖尔盟', '2', '0');
INSERT INTO `ecs_region` VALUES ('261', '19', '包头', '2', '0');
INSERT INTO `ecs_region` VALUES ('262', '19', '赤峰', '2', '0');
INSERT INTO `ecs_region` VALUES ('263', '19', '鄂尔多斯', '2', '0');
INSERT INTO `ecs_region` VALUES ('264', '19', '呼伦贝尔', '2', '0');
INSERT INTO `ecs_region` VALUES ('265', '19', '通辽', '2', '0');
INSERT INTO `ecs_region` VALUES ('266', '19', '乌海', '2', '0');
INSERT INTO `ecs_region` VALUES ('267', '19', '乌兰察布市', '2', '0');
INSERT INTO `ecs_region` VALUES ('268', '19', '锡林郭勒盟', '2', '0');
INSERT INTO `ecs_region` VALUES ('269', '19', '兴安盟', '2', '0');
INSERT INTO `ecs_region` VALUES ('270', '20', '银川', '2', '0');
INSERT INTO `ecs_region` VALUES ('271', '20', '固原', '2', '0');
INSERT INTO `ecs_region` VALUES ('272', '20', '石嘴山', '2', '0');
INSERT INTO `ecs_region` VALUES ('273', '20', '吴忠', '2', '0');
INSERT INTO `ecs_region` VALUES ('274', '20', '中卫', '2', '0');
INSERT INTO `ecs_region` VALUES ('275', '21', '西宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('276', '21', '果洛', '2', '0');
INSERT INTO `ecs_region` VALUES ('277', '21', '海北', '2', '0');
INSERT INTO `ecs_region` VALUES ('278', '21', '海东', '2', '0');
INSERT INTO `ecs_region` VALUES ('279', '21', '海南', '2', '0');
INSERT INTO `ecs_region` VALUES ('280', '21', '海西', '2', '0');
INSERT INTO `ecs_region` VALUES ('281', '21', '黄南', '2', '0');
INSERT INTO `ecs_region` VALUES ('282', '21', '玉树', '2', '0');
INSERT INTO `ecs_region` VALUES ('283', '22', '济南', '2', '0');
INSERT INTO `ecs_region` VALUES ('284', '22', '青岛', '2', '0');
INSERT INTO `ecs_region` VALUES ('285', '22', '滨州', '2', '0');
INSERT INTO `ecs_region` VALUES ('286', '22', '德州', '2', '0');
INSERT INTO `ecs_region` VALUES ('287', '22', '东营', '2', '0');
INSERT INTO `ecs_region` VALUES ('288', '22', '菏泽', '2', '0');
INSERT INTO `ecs_region` VALUES ('289', '22', '济宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('290', '22', '莱芜', '2', '0');
INSERT INTO `ecs_region` VALUES ('291', '22', '聊城', '2', '0');
INSERT INTO `ecs_region` VALUES ('292', '22', '临沂', '2', '0');
INSERT INTO `ecs_region` VALUES ('293', '22', '日照', '2', '0');
INSERT INTO `ecs_region` VALUES ('294', '22', '泰安', '2', '0');
INSERT INTO `ecs_region` VALUES ('295', '22', '威海', '2', '0');
INSERT INTO `ecs_region` VALUES ('296', '22', '潍坊', '2', '0');
INSERT INTO `ecs_region` VALUES ('297', '22', '烟台', '2', '0');
INSERT INTO `ecs_region` VALUES ('298', '22', '枣庄', '2', '0');
INSERT INTO `ecs_region` VALUES ('299', '22', '淄博', '2', '0');
INSERT INTO `ecs_region` VALUES ('300', '23', '太原', '2', '0');
INSERT INTO `ecs_region` VALUES ('301', '23', '长治', '2', '0');
INSERT INTO `ecs_region` VALUES ('302', '23', '大同', '2', '0');
INSERT INTO `ecs_region` VALUES ('303', '23', '晋城', '2', '0');
INSERT INTO `ecs_region` VALUES ('304', '23', '晋中', '2', '0');
INSERT INTO `ecs_region` VALUES ('305', '23', '临汾', '2', '0');
INSERT INTO `ecs_region` VALUES ('306', '23', '吕梁', '2', '0');
INSERT INTO `ecs_region` VALUES ('307', '23', '朔州', '2', '0');
INSERT INTO `ecs_region` VALUES ('308', '23', '忻州', '2', '0');
INSERT INTO `ecs_region` VALUES ('309', '23', '阳泉', '2', '0');
INSERT INTO `ecs_region` VALUES ('310', '23', '运城', '2', '0');
INSERT INTO `ecs_region` VALUES ('311', '24', '西安', '2', '0');
INSERT INTO `ecs_region` VALUES ('312', '24', '安康', '2', '0');
INSERT INTO `ecs_region` VALUES ('313', '24', '宝鸡', '2', '0');
INSERT INTO `ecs_region` VALUES ('314', '24', '汉中', '2', '0');
INSERT INTO `ecs_region` VALUES ('315', '24', '商洛', '2', '0');
INSERT INTO `ecs_region` VALUES ('316', '24', '铜川', '2', '0');
INSERT INTO `ecs_region` VALUES ('317', '24', '渭南', '2', '0');
INSERT INTO `ecs_region` VALUES ('318', '24', '咸阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('319', '24', '延安', '2', '0');
INSERT INTO `ecs_region` VALUES ('320', '24', '榆林', '2', '0');
INSERT INTO `ecs_region` VALUES ('321', '25', '上海', '2', '0');
INSERT INTO `ecs_region` VALUES ('322', '26', '成都', '2', '0');
INSERT INTO `ecs_region` VALUES ('323', '26', '绵阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('324', '26', '阿坝', '2', '0');
INSERT INTO `ecs_region` VALUES ('325', '26', '巴中', '2', '0');
INSERT INTO `ecs_region` VALUES ('326', '26', '达州', '2', '0');
INSERT INTO `ecs_region` VALUES ('327', '26', '德阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('328', '26', '甘孜', '2', '0');
INSERT INTO `ecs_region` VALUES ('329', '26', '广安', '2', '0');
INSERT INTO `ecs_region` VALUES ('330', '26', '广元', '2', '0');
INSERT INTO `ecs_region` VALUES ('331', '26', '乐山', '2', '0');
INSERT INTO `ecs_region` VALUES ('332', '26', '凉山', '2', '0');
INSERT INTO `ecs_region` VALUES ('333', '26', '眉山', '2', '0');
INSERT INTO `ecs_region` VALUES ('334', '26', '南充', '2', '0');
INSERT INTO `ecs_region` VALUES ('335', '26', '内江', '2', '0');
INSERT INTO `ecs_region` VALUES ('336', '26', '攀枝花', '2', '0');
INSERT INTO `ecs_region` VALUES ('337', '26', '遂宁', '2', '0');
INSERT INTO `ecs_region` VALUES ('338', '26', '雅安', '2', '0');
INSERT INTO `ecs_region` VALUES ('339', '26', '宜宾', '2', '0');
INSERT INTO `ecs_region` VALUES ('340', '26', '资阳', '2', '0');
INSERT INTO `ecs_region` VALUES ('341', '26', '自贡', '2', '0');
INSERT INTO `ecs_region` VALUES ('342', '26', '泸州', '2', '0');
INSERT INTO `ecs_region` VALUES ('343', '27', '天津', '2', '0');
INSERT INTO `ecs_region` VALUES ('344', '28', '拉萨', '2', '0');
INSERT INTO `ecs_region` VALUES ('345', '28', '阿里', '2', '0');
INSERT INTO `ecs_region` VALUES ('346', '28', '昌都', '2', '0');
INSERT INTO `ecs_region` VALUES ('347', '28', '林芝', '2', '0');
INSERT INTO `ecs_region` VALUES ('348', '28', '那曲', '2', '0');
INSERT INTO `ecs_region` VALUES ('349', '28', '日喀则', '2', '0');
INSERT INTO `ecs_region` VALUES ('350', '28', '山南', '2', '0');
INSERT INTO `ecs_region` VALUES ('351', '29', '乌鲁木齐', '2', '0');
INSERT INTO `ecs_region` VALUES ('352', '29', '阿克苏', '2', '0');
INSERT INTO `ecs_region` VALUES ('353', '29', '阿拉尔', '2', '0');
INSERT INTO `ecs_region` VALUES ('354', '29', '巴音郭楞', '2', '0');
INSERT INTO `ecs_region` VALUES ('355', '29', '博尔塔拉', '2', '0');
INSERT INTO `ecs_region` VALUES ('356', '29', '昌吉', '2', '0');
INSERT INTO `ecs_region` VALUES ('357', '29', '哈密', '2', '0');
INSERT INTO `ecs_region` VALUES ('358', '29', '和田', '2', '0');
INSERT INTO `ecs_region` VALUES ('359', '29', '喀什', '2', '0');
INSERT INTO `ecs_region` VALUES ('360', '29', '克拉玛依', '2', '0');
INSERT INTO `ecs_region` VALUES ('361', '29', '克孜勒苏', '2', '0');
INSERT INTO `ecs_region` VALUES ('362', '29', '石河子', '2', '0');
INSERT INTO `ecs_region` VALUES ('363', '29', '图木舒克', '2', '0');
INSERT INTO `ecs_region` VALUES ('364', '29', '吐鲁番', '2', '0');
INSERT INTO `ecs_region` VALUES ('365', '29', '五家渠', '2', '0');
INSERT INTO `ecs_region` VALUES ('366', '29', '伊犁', '2', '0');
INSERT INTO `ecs_region` VALUES ('367', '30', '昆明', '2', '0');
INSERT INTO `ecs_region` VALUES ('368', '30', '怒江', '2', '0');
INSERT INTO `ecs_region` VALUES ('369', '30', '普洱', '2', '0');
INSERT INTO `ecs_region` VALUES ('370', '30', '丽江', '2', '0');
INSERT INTO `ecs_region` VALUES ('371', '30', '保山', '2', '0');
INSERT INTO `ecs_region` VALUES ('372', '30', '楚雄', '2', '0');
INSERT INTO `ecs_region` VALUES ('373', '30', '大理', '2', '0');
INSERT INTO `ecs_region` VALUES ('374', '30', '德宏', '2', '0');
INSERT INTO `ecs_region` VALUES ('375', '30', '迪庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('376', '30', '红河', '2', '0');
INSERT INTO `ecs_region` VALUES ('377', '30', '临沧', '2', '0');
INSERT INTO `ecs_region` VALUES ('378', '30', '曲靖', '2', '0');
INSERT INTO `ecs_region` VALUES ('379', '30', '文山', '2', '0');
INSERT INTO `ecs_region` VALUES ('380', '30', '西双版纳', '2', '0');
INSERT INTO `ecs_region` VALUES ('381', '30', '玉溪', '2', '0');
INSERT INTO `ecs_region` VALUES ('382', '30', '昭通', '2', '0');
INSERT INTO `ecs_region` VALUES ('383', '31', '杭州', '2', '0');
INSERT INTO `ecs_region` VALUES ('384', '31', '湖州', '2', '0');
INSERT INTO `ecs_region` VALUES ('385', '31', '嘉兴', '2', '0');
INSERT INTO `ecs_region` VALUES ('386', '31', '金华', '2', '0');
INSERT INTO `ecs_region` VALUES ('387', '31', '丽水', '2', '0');
INSERT INTO `ecs_region` VALUES ('388', '31', '宁波', '2', '0');
INSERT INTO `ecs_region` VALUES ('389', '31', '绍兴', '2', '0');
INSERT INTO `ecs_region` VALUES ('390', '31', '台州', '2', '0');
INSERT INTO `ecs_region` VALUES ('391', '31', '温州', '2', '0');
INSERT INTO `ecs_region` VALUES ('392', '31', '舟山', '2', '0');
INSERT INTO `ecs_region` VALUES ('393', '31', '衢州', '2', '0');
INSERT INTO `ecs_region` VALUES ('394', '32', '重庆', '2', '0');
INSERT INTO `ecs_region` VALUES ('395', '33', '香港', '2', '0');
INSERT INTO `ecs_region` VALUES ('396', '34', '澳门', '2', '0');
INSERT INTO `ecs_region` VALUES ('397', '35', '台湾', '2', '0');
INSERT INTO `ecs_region` VALUES ('398', '36', '迎江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('399', '36', '大观区', '3', '0');
INSERT INTO `ecs_region` VALUES ('400', '36', '宜秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('401', '36', '桐城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('402', '36', '怀宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('403', '36', '枞阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('404', '36', '潜山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('405', '36', '太湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('406', '36', '宿松县', '3', '0');
INSERT INTO `ecs_region` VALUES ('407', '36', '望江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('408', '36', '岳西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('409', '37', '中市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('410', '37', '东市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('411', '37', '西市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('412', '37', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('413', '37', '怀远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('414', '37', '五河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('415', '37', '固镇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('416', '38', '居巢区', '3', '0');
INSERT INTO `ecs_region` VALUES ('417', '38', '庐江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('418', '38', '无为县', '3', '0');
INSERT INTO `ecs_region` VALUES ('419', '38', '含山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('420', '38', '和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('421', '39', '贵池区', '3', '0');
INSERT INTO `ecs_region` VALUES ('422', '39', '东至县', '3', '0');
INSERT INTO `ecs_region` VALUES ('423', '39', '石台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('424', '39', '青阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('425', '40', '琅琊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('426', '40', '南谯区', '3', '0');
INSERT INTO `ecs_region` VALUES ('427', '40', '天长市', '3', '0');
INSERT INTO `ecs_region` VALUES ('428', '40', '明光市', '3', '0');
INSERT INTO `ecs_region` VALUES ('429', '40', '来安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('430', '40', '全椒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('431', '40', '定远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('432', '40', '凤阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('433', '41', '蚌山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('434', '41', '龙子湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('435', '41', '禹会区', '3', '0');
INSERT INTO `ecs_region` VALUES ('436', '41', '淮上区', '3', '0');
INSERT INTO `ecs_region` VALUES ('437', '41', '颍州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('438', '41', '颍东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('439', '41', '颍泉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('440', '41', '界首市', '3', '0');
INSERT INTO `ecs_region` VALUES ('441', '41', '临泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('442', '41', '太和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('443', '41', '阜南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('444', '41', '颖上县', '3', '0');
INSERT INTO `ecs_region` VALUES ('445', '42', '相山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('446', '42', '杜集区', '3', '0');
INSERT INTO `ecs_region` VALUES ('447', '42', '烈山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('448', '42', '濉溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('449', '43', '田家庵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('450', '43', '大通区', '3', '0');
INSERT INTO `ecs_region` VALUES ('451', '43', '谢家集区', '3', '0');
INSERT INTO `ecs_region` VALUES ('452', '43', '八公山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('453', '43', '潘集区', '3', '0');
INSERT INTO `ecs_region` VALUES ('454', '43', '凤台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('455', '44', '屯溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('456', '44', '黄山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('457', '44', '徽州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('458', '44', '歙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('459', '44', '休宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('460', '44', '黟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('461', '44', '祁门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('462', '45', '金安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('463', '45', '裕安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('464', '45', '寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('465', '45', '霍邱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('466', '45', '舒城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('467', '45', '金寨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('468', '45', '霍山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('469', '46', '雨山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('470', '46', '花山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('471', '46', '金家庄区', '3', '0');
INSERT INTO `ecs_region` VALUES ('472', '46', '当涂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('473', '47', '埇桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('474', '47', '砀山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('475', '47', '萧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('476', '47', '灵璧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('477', '47', '泗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('478', '48', '铜官山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('479', '48', '狮子山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('480', '48', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('481', '48', '铜陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('482', '49', '镜湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('483', '49', '弋江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('484', '49', '鸠江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('485', '49', '三山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('486', '49', '芜湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('487', '49', '繁昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('488', '49', '南陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('489', '50', '宣州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('490', '50', '宁国市', '3', '0');
INSERT INTO `ecs_region` VALUES ('491', '50', '郎溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('492', '50', '广德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('493', '50', '泾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('494', '50', '绩溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('495', '50', '旌德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('496', '51', '涡阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('497', '51', '蒙城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('498', '51', '利辛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('499', '51', '谯城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('500', '52', '东城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('501', '52', '西城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('502', '52', '海淀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('503', '52', '朝阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('504', '52', '崇文区', '3', '0');
INSERT INTO `ecs_region` VALUES ('505', '52', '宣武区', '3', '0');
INSERT INTO `ecs_region` VALUES ('506', '52', '丰台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('507', '52', '石景山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('508', '52', '房山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('509', '52', '门头沟区', '3', '0');
INSERT INTO `ecs_region` VALUES ('510', '52', '通州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('511', '52', '顺义区', '3', '0');
INSERT INTO `ecs_region` VALUES ('512', '52', '昌平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('513', '52', '怀柔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('514', '52', '平谷区', '3', '0');
INSERT INTO `ecs_region` VALUES ('515', '52', '大兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('516', '52', '密云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('517', '52', '延庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('518', '53', '鼓楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('519', '53', '台江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('520', '53', '仓山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('521', '53', '马尾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('522', '53', '晋安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('523', '53', '福清市', '3', '0');
INSERT INTO `ecs_region` VALUES ('524', '53', '长乐市', '3', '0');
INSERT INTO `ecs_region` VALUES ('525', '53', '闽侯县', '3', '0');
INSERT INTO `ecs_region` VALUES ('526', '53', '连江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('527', '53', '罗源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('528', '53', '闽清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('529', '53', '永泰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('530', '53', '平潭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('531', '54', '新罗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('532', '54', '漳平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('533', '54', '长汀县', '3', '0');
INSERT INTO `ecs_region` VALUES ('534', '54', '永定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('535', '54', '上杭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('536', '54', '武平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('537', '54', '连城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('538', '55', '延平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('539', '55', '邵武市', '3', '0');
INSERT INTO `ecs_region` VALUES ('540', '55', '武夷山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('541', '55', '建瓯市', '3', '0');
INSERT INTO `ecs_region` VALUES ('542', '55', '建阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('543', '55', '顺昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('544', '55', '浦城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('545', '55', '光泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('546', '55', '松溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('547', '55', '政和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('548', '56', '蕉城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('549', '56', '福安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('550', '56', '福鼎市', '3', '0');
INSERT INTO `ecs_region` VALUES ('551', '56', '霞浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('552', '56', '古田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('553', '56', '屏南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('554', '56', '寿宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('555', '56', '周宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('556', '56', '柘荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('557', '57', '城厢区', '3', '0');
INSERT INTO `ecs_region` VALUES ('558', '57', '涵江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('559', '57', '荔城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('560', '57', '秀屿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('561', '57', '仙游县', '3', '0');
INSERT INTO `ecs_region` VALUES ('562', '58', '鲤城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('563', '58', '丰泽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('564', '58', '洛江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('565', '58', '清濛开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('566', '58', '泉港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('567', '58', '石狮市', '3', '0');
INSERT INTO `ecs_region` VALUES ('568', '58', '晋江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('569', '58', '南安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('570', '58', '惠安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('571', '58', '安溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('572', '58', '永春县', '3', '0');
INSERT INTO `ecs_region` VALUES ('573', '58', '德化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('574', '58', '金门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('575', '59', '梅列区', '3', '0');
INSERT INTO `ecs_region` VALUES ('576', '59', '三元区', '3', '0');
INSERT INTO `ecs_region` VALUES ('577', '59', '永安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('578', '59', '明溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('579', '59', '清流县', '3', '0');
INSERT INTO `ecs_region` VALUES ('580', '59', '宁化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('581', '59', '大田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('582', '59', '尤溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('583', '59', '沙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('584', '59', '将乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('585', '59', '泰宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('586', '59', '建宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('587', '60', '思明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('588', '60', '海沧区', '3', '0');
INSERT INTO `ecs_region` VALUES ('589', '60', '湖里区', '3', '0');
INSERT INTO `ecs_region` VALUES ('590', '60', '集美区', '3', '0');
INSERT INTO `ecs_region` VALUES ('591', '60', '同安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('592', '60', '翔安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('593', '61', '芗城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('594', '61', '龙文区', '3', '0');
INSERT INTO `ecs_region` VALUES ('595', '61', '龙海市', '3', '0');
INSERT INTO `ecs_region` VALUES ('596', '61', '云霄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('597', '61', '漳浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('598', '61', '诏安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('599', '61', '长泰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('600', '61', '东山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('601', '61', '南靖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('602', '61', '平和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('603', '61', '华安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('604', '62', '皋兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('605', '62', '城关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('606', '62', '七里河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('607', '62', '西固区', '3', '0');
INSERT INTO `ecs_region` VALUES ('608', '62', '安宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('609', '62', '红古区', '3', '0');
INSERT INTO `ecs_region` VALUES ('610', '62', '永登县', '3', '0');
INSERT INTO `ecs_region` VALUES ('611', '62', '榆中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('612', '63', '白银区', '3', '0');
INSERT INTO `ecs_region` VALUES ('613', '63', '平川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('614', '63', '会宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('615', '63', '景泰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('616', '63', '靖远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('617', '64', '临洮县', '3', '0');
INSERT INTO `ecs_region` VALUES ('618', '64', '陇西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('619', '64', '通渭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('620', '64', '渭源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('621', '64', '漳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('622', '64', '岷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('623', '64', '安定区', '3', '0');
INSERT INTO `ecs_region` VALUES ('624', '64', '安定区', '3', '0');
INSERT INTO `ecs_region` VALUES ('625', '65', '合作市', '3', '0');
INSERT INTO `ecs_region` VALUES ('626', '65', '临潭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('627', '65', '卓尼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('628', '65', '舟曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('629', '65', '迭部县', '3', '0');
INSERT INTO `ecs_region` VALUES ('630', '65', '玛曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('631', '65', '碌曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('632', '65', '夏河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('633', '66', '嘉峪关市', '3', '0');
INSERT INTO `ecs_region` VALUES ('634', '67', '金川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('635', '67', '永昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('636', '68', '肃州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('637', '68', '玉门市', '3', '0');
INSERT INTO `ecs_region` VALUES ('638', '68', '敦煌市', '3', '0');
INSERT INTO `ecs_region` VALUES ('639', '68', '金塔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('640', '68', '瓜州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('641', '68', '肃北', '3', '0');
INSERT INTO `ecs_region` VALUES ('642', '68', '阿克塞', '3', '0');
INSERT INTO `ecs_region` VALUES ('643', '69', '临夏市', '3', '0');
INSERT INTO `ecs_region` VALUES ('644', '69', '临夏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('645', '69', '康乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('646', '69', '永靖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('647', '69', '广河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('648', '69', '和政县', '3', '0');
INSERT INTO `ecs_region` VALUES ('649', '69', '东乡族自治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('650', '69', '积石山', '3', '0');
INSERT INTO `ecs_region` VALUES ('651', '70', '成县', '3', '0');
INSERT INTO `ecs_region` VALUES ('652', '70', '徽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('653', '70', '康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('654', '70', '礼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('655', '70', '两当县', '3', '0');
INSERT INTO `ecs_region` VALUES ('656', '70', '文县', '3', '0');
INSERT INTO `ecs_region` VALUES ('657', '70', '西和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('658', '70', '宕昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('659', '70', '武都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('660', '71', '崇信县', '3', '0');
INSERT INTO `ecs_region` VALUES ('661', '71', '华亭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('662', '71', '静宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('663', '71', '灵台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('664', '71', '崆峒区', '3', '0');
INSERT INTO `ecs_region` VALUES ('665', '71', '庄浪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('666', '71', '泾川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('667', '72', '合水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('668', '72', '华池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('669', '72', '环县', '3', '0');
INSERT INTO `ecs_region` VALUES ('670', '72', '宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('671', '72', '庆城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('672', '72', '西峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('673', '72', '镇原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('674', '72', '正宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('675', '73', '甘谷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('676', '73', '秦安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('677', '73', '清水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('678', '73', '秦州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('679', '73', '麦积区', '3', '0');
INSERT INTO `ecs_region` VALUES ('680', '73', '武山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('681', '73', '张家川', '3', '0');
INSERT INTO `ecs_region` VALUES ('682', '74', '古浪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('683', '74', '民勤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('684', '74', '天祝', '3', '0');
INSERT INTO `ecs_region` VALUES ('685', '74', '凉州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('686', '75', '高台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('687', '75', '临泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('688', '75', '民乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('689', '75', '山丹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('690', '75', '肃南', '3', '0');
INSERT INTO `ecs_region` VALUES ('691', '75', '甘州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('692', '76', '从化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('693', '76', '天河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('694', '76', '东山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('695', '76', '白云区', '3', '0');
INSERT INTO `ecs_region` VALUES ('696', '76', '海珠区', '3', '0');
INSERT INTO `ecs_region` VALUES ('697', '76', '荔湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('698', '76', '越秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('699', '76', '黄埔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('700', '76', '番禺区', '3', '0');
INSERT INTO `ecs_region` VALUES ('701', '76', '花都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('702', '76', '增城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('703', '76', '从化区', '3', '0');
INSERT INTO `ecs_region` VALUES ('704', '76', '市郊', '3', '0');
INSERT INTO `ecs_region` VALUES ('705', '77', '福田区', '3', '0');
INSERT INTO `ecs_region` VALUES ('706', '77', '罗湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('707', '77', '南山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('708', '77', '宝安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('709', '77', '龙岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('710', '77', '盐田区', '3', '0');
INSERT INTO `ecs_region` VALUES ('711', '78', '湘桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('712', '78', '潮安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('713', '78', '饶平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('714', '79', '南城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('715', '79', '东城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('716', '79', '万江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('717', '79', '莞城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('718', '79', '石龙镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('719', '79', '虎门镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('720', '79', '麻涌镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('721', '79', '道滘镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('722', '79', '石碣镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('723', '79', '沙田镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('724', '79', '望牛墩镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('725', '79', '洪梅镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('726', '79', '茶山镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('727', '79', '寮步镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('728', '79', '大岭山镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('729', '79', '大朗镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('730', '79', '黄江镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('731', '79', '樟木头', '3', '0');
INSERT INTO `ecs_region` VALUES ('732', '79', '凤岗镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('733', '79', '塘厦镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('734', '79', '谢岗镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('735', '79', '厚街镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('736', '79', '清溪镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('737', '79', '常平镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('738', '79', '桥头镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('739', '79', '横沥镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('740', '79', '东坑镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('741', '79', '企石镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('742', '79', '石排镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('743', '79', '长安镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('744', '79', '中堂镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('745', '79', '高埗镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('746', '80', '禅城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('747', '80', '南海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('748', '80', '顺德区', '3', '0');
INSERT INTO `ecs_region` VALUES ('749', '80', '三水区', '3', '0');
INSERT INTO `ecs_region` VALUES ('750', '80', '高明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('751', '81', '东源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('752', '81', '和平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('753', '81', '源城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('754', '81', '连平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('755', '81', '龙川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('756', '81', '紫金县', '3', '0');
INSERT INTO `ecs_region` VALUES ('757', '82', '惠阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('758', '82', '惠城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('759', '82', '大亚湾', '3', '0');
INSERT INTO `ecs_region` VALUES ('760', '82', '博罗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('761', '82', '惠东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('762', '82', '龙门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('763', '83', '江海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('764', '83', '蓬江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('765', '83', '新会区', '3', '0');
INSERT INTO `ecs_region` VALUES ('766', '83', '台山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('767', '83', '开平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('768', '83', '鹤山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('769', '83', '恩平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('770', '84', '榕城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('771', '84', '普宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('772', '84', '揭东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('773', '84', '揭西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('774', '84', '惠来县', '3', '0');
INSERT INTO `ecs_region` VALUES ('775', '85', '茂南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('776', '85', '茂港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('777', '85', '高州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('778', '85', '化州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('779', '85', '信宜市', '3', '0');
INSERT INTO `ecs_region` VALUES ('780', '85', '电白县', '3', '0');
INSERT INTO `ecs_region` VALUES ('781', '86', '梅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('782', '86', '梅江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('783', '86', '兴宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('784', '86', '大埔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('785', '86', '丰顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('786', '86', '五华县', '3', '0');
INSERT INTO `ecs_region` VALUES ('787', '86', '平远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('788', '86', '蕉岭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('789', '87', '清城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('790', '87', '英德市', '3', '0');
INSERT INTO `ecs_region` VALUES ('791', '87', '连州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('792', '87', '佛冈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('793', '87', '阳山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('794', '87', '清新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('795', '87', '连山', '3', '0');
INSERT INTO `ecs_region` VALUES ('796', '87', '连南', '3', '0');
INSERT INTO `ecs_region` VALUES ('797', '88', '南澳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('798', '88', '潮阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('799', '88', '澄海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('800', '88', '龙湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('801', '88', '金平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('802', '88', '濠江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('803', '88', '潮南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('804', '89', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('805', '89', '陆丰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('806', '89', '海丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('807', '89', '陆河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('808', '90', '曲江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('809', '90', '浈江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('810', '90', '武江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('811', '90', '曲江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('812', '90', '乐昌市', '3', '0');
INSERT INTO `ecs_region` VALUES ('813', '90', '南雄市', '3', '0');
INSERT INTO `ecs_region` VALUES ('814', '90', '始兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('815', '90', '仁化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('816', '90', '翁源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('817', '90', '新丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('818', '90', '乳源', '3', '0');
INSERT INTO `ecs_region` VALUES ('819', '91', '江城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('820', '91', '阳春市', '3', '0');
INSERT INTO `ecs_region` VALUES ('821', '91', '阳西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('822', '91', '阳东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('823', '92', '云城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('824', '92', '罗定市', '3', '0');
INSERT INTO `ecs_region` VALUES ('825', '92', '新兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('826', '92', '郁南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('827', '92', '云安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('828', '93', '赤坎区', '3', '0');
INSERT INTO `ecs_region` VALUES ('829', '93', '霞山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('830', '93', '坡头区', '3', '0');
INSERT INTO `ecs_region` VALUES ('831', '93', '麻章区', '3', '0');
INSERT INTO `ecs_region` VALUES ('832', '93', '廉江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('833', '93', '雷州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('834', '93', '吴川市', '3', '0');
INSERT INTO `ecs_region` VALUES ('835', '93', '遂溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('836', '93', '徐闻县', '3', '0');
INSERT INTO `ecs_region` VALUES ('837', '94', '肇庆市', '3', '0');
INSERT INTO `ecs_region` VALUES ('838', '94', '高要市', '3', '0');
INSERT INTO `ecs_region` VALUES ('839', '94', '四会市', '3', '0');
INSERT INTO `ecs_region` VALUES ('840', '94', '广宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('841', '94', '怀集县', '3', '0');
INSERT INTO `ecs_region` VALUES ('842', '94', '封开县', '3', '0');
INSERT INTO `ecs_region` VALUES ('843', '94', '德庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('844', '95', '石岐街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('845', '95', '东区街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('846', '95', '西区街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('847', '95', '环城街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('848', '95', '中山港街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('849', '95', '五桂山街道', '3', '0');
INSERT INTO `ecs_region` VALUES ('850', '96', '香洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('851', '96', '斗门区', '3', '0');
INSERT INTO `ecs_region` VALUES ('852', '96', '金湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('853', '97', '邕宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('854', '97', '青秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('855', '97', '兴宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('856', '97', '良庆区', '3', '0');
INSERT INTO `ecs_region` VALUES ('857', '97', '西乡塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('858', '97', '江南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('859', '97', '武鸣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('860', '97', '隆安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('861', '97', '马山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('862', '97', '上林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('863', '97', '宾阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('864', '97', '横县', '3', '0');
INSERT INTO `ecs_region` VALUES ('865', '98', '秀峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('866', '98', '叠彩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('867', '98', '象山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('868', '98', '七星区', '3', '0');
INSERT INTO `ecs_region` VALUES ('869', '98', '雁山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('870', '98', '阳朔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('871', '98', '临桂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('872', '98', '灵川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('873', '98', '全州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('874', '98', '平乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('875', '98', '兴安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('876', '98', '灌阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('877', '98', '荔浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('878', '98', '资源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('879', '98', '永福县', '3', '0');
INSERT INTO `ecs_region` VALUES ('880', '98', '龙胜', '3', '0');
INSERT INTO `ecs_region` VALUES ('881', '98', '恭城', '3', '0');
INSERT INTO `ecs_region` VALUES ('882', '99', '右江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('883', '99', '凌云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('884', '99', '平果县', '3', '0');
INSERT INTO `ecs_region` VALUES ('885', '99', '西林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('886', '99', '乐业县', '3', '0');
INSERT INTO `ecs_region` VALUES ('887', '99', '德保县', '3', '0');
INSERT INTO `ecs_region` VALUES ('888', '99', '田林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('889', '99', '田阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('890', '99', '靖西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('891', '99', '田东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('892', '99', '那坡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('893', '99', '隆林', '3', '0');
INSERT INTO `ecs_region` VALUES ('894', '100', '海城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('895', '100', '银海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('896', '100', '铁山港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('897', '100', '合浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('898', '101', '江州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('899', '101', '凭祥市', '3', '0');
INSERT INTO `ecs_region` VALUES ('900', '101', '宁明县', '3', '0');
INSERT INTO `ecs_region` VALUES ('901', '101', '扶绥县', '3', '0');
INSERT INTO `ecs_region` VALUES ('902', '101', '龙州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('903', '101', '大新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('904', '101', '天等县', '3', '0');
INSERT INTO `ecs_region` VALUES ('905', '102', '港口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('906', '102', '防城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('907', '102', '东兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('908', '102', '上思县', '3', '0');
INSERT INTO `ecs_region` VALUES ('909', '103', '港北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('910', '103', '港南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('911', '103', '覃塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('912', '103', '桂平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('913', '103', '平南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('914', '104', '金城江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('915', '104', '宜州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('916', '104', '天峨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('917', '104', '凤山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('918', '104', '南丹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('919', '104', '东兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('920', '104', '都安', '3', '0');
INSERT INTO `ecs_region` VALUES ('921', '104', '罗城', '3', '0');
INSERT INTO `ecs_region` VALUES ('922', '104', '巴马', '3', '0');
INSERT INTO `ecs_region` VALUES ('923', '104', '环江', '3', '0');
INSERT INTO `ecs_region` VALUES ('924', '104', '大化', '3', '0');
INSERT INTO `ecs_region` VALUES ('925', '105', '八步区', '3', '0');
INSERT INTO `ecs_region` VALUES ('926', '105', '钟山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('927', '105', '昭平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('928', '105', '富川', '3', '0');
INSERT INTO `ecs_region` VALUES ('929', '106', '兴宾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('930', '106', '合山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('931', '106', '象州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('932', '106', '武宣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('933', '106', '忻城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('934', '106', '金秀', '3', '0');
INSERT INTO `ecs_region` VALUES ('935', '107', '城中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('936', '107', '鱼峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('937', '107', '柳北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('938', '107', '柳南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('939', '107', '柳江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('940', '107', '柳城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('941', '107', '鹿寨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('942', '107', '融安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('943', '107', '融水', '3', '0');
INSERT INTO `ecs_region` VALUES ('944', '107', '三江', '3', '0');
INSERT INTO `ecs_region` VALUES ('945', '108', '钦南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('946', '108', '钦北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('947', '108', '灵山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('948', '108', '浦北县', '3', '0');
INSERT INTO `ecs_region` VALUES ('949', '109', '万秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('950', '109', '蝶山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('951', '109', '长洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('952', '109', '岑溪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('953', '109', '苍梧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('954', '109', '藤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('955', '109', '蒙山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('956', '110', '玉州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('957', '110', '北流市', '3', '0');
INSERT INTO `ecs_region` VALUES ('958', '110', '容县', '3', '0');
INSERT INTO `ecs_region` VALUES ('959', '110', '陆川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('960', '110', '博白县', '3', '0');
INSERT INTO `ecs_region` VALUES ('961', '110', '兴业县', '3', '0');
INSERT INTO `ecs_region` VALUES ('962', '111', '南明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('963', '111', '云岩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('964', '111', '花溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('965', '111', '乌当区', '3', '0');
INSERT INTO `ecs_region` VALUES ('966', '111', '白云区', '3', '0');
INSERT INTO `ecs_region` VALUES ('967', '111', '小河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('968', '111', '金阳新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('969', '111', '新天园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('970', '111', '清镇市', '3', '0');
INSERT INTO `ecs_region` VALUES ('971', '111', '开阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('972', '111', '修文县', '3', '0');
INSERT INTO `ecs_region` VALUES ('973', '111', '息烽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('974', '112', '西秀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('975', '112', '关岭', '3', '0');
INSERT INTO `ecs_region` VALUES ('976', '112', '镇宁', '3', '0');
INSERT INTO `ecs_region` VALUES ('977', '112', '紫云', '3', '0');
INSERT INTO `ecs_region` VALUES ('978', '112', '平坝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('979', '112', '普定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('980', '113', '毕节市', '3', '0');
INSERT INTO `ecs_region` VALUES ('981', '113', '大方县', '3', '0');
INSERT INTO `ecs_region` VALUES ('982', '113', '黔西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('983', '113', '金沙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('984', '113', '织金县', '3', '0');
INSERT INTO `ecs_region` VALUES ('985', '113', '纳雍县', '3', '0');
INSERT INTO `ecs_region` VALUES ('986', '113', '赫章县', '3', '0');
INSERT INTO `ecs_region` VALUES ('987', '113', '威宁', '3', '0');
INSERT INTO `ecs_region` VALUES ('988', '114', '钟山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('989', '114', '六枝特区', '3', '0');
INSERT INTO `ecs_region` VALUES ('990', '114', '水城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('991', '114', '盘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('992', '115', '凯里市', '3', '0');
INSERT INTO `ecs_region` VALUES ('993', '115', '黄平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('994', '115', '施秉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('995', '115', '三穗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('996', '115', '镇远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('997', '115', '岑巩县', '3', '0');
INSERT INTO `ecs_region` VALUES ('998', '115', '天柱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('999', '115', '锦屏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1000', '115', '剑河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1001', '115', '台江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1002', '115', '黎平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1003', '115', '榕江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1004', '115', '从江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1005', '115', '雷山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1006', '115', '麻江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1007', '115', '丹寨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1008', '116', '都匀市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1009', '116', '福泉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1010', '116', '荔波县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1011', '116', '贵定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1012', '116', '瓮安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1013', '116', '独山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1014', '116', '平塘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1015', '116', '罗甸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1016', '116', '长顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1017', '116', '龙里县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1018', '116', '惠水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1019', '116', '三都', '3', '0');
INSERT INTO `ecs_region` VALUES ('1020', '117', '兴义市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1021', '117', '兴仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1022', '117', '普安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1023', '117', '晴隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1024', '117', '贞丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1025', '117', '望谟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1026', '117', '册亨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1027', '117', '安龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1028', '118', '铜仁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1029', '118', '江口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1030', '118', '石阡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1031', '118', '思南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1032', '118', '德江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1033', '118', '玉屏', '3', '0');
INSERT INTO `ecs_region` VALUES ('1034', '118', '印江', '3', '0');
INSERT INTO `ecs_region` VALUES ('1035', '118', '沿河', '3', '0');
INSERT INTO `ecs_region` VALUES ('1036', '118', '松桃', '3', '0');
INSERT INTO `ecs_region` VALUES ('1037', '118', '万山特区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1038', '119', '红花岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1039', '119', '务川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1040', '119', '道真县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1041', '119', '汇川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1042', '119', '赤水市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1043', '119', '仁怀市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1044', '119', '遵义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1045', '119', '桐梓县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1046', '119', '绥阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1047', '119', '正安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1048', '119', '凤冈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1049', '119', '湄潭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1050', '119', '余庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1051', '119', '习水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1052', '119', '道真', '3', '0');
INSERT INTO `ecs_region` VALUES ('1053', '119', '务川', '3', '0');
INSERT INTO `ecs_region` VALUES ('1054', '120', '秀英区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1055', '120', '龙华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1056', '120', '琼山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1057', '120', '美兰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1058', '137', '市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1059', '137', '洋浦开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1060', '137', '那大镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1061', '137', '王五镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1062', '137', '雅星镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1063', '137', '大成镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1064', '137', '中和镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1065', '137', '峨蔓镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1066', '137', '南丰镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1067', '137', '白马井镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1068', '137', '兰洋镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1069', '137', '和庆镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1070', '137', '海头镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1071', '137', '排浦镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1072', '137', '东成镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1073', '137', '光村镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1074', '137', '木棠镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1075', '137', '新州镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1076', '137', '三都镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1077', '137', '其他', '3', '0');
INSERT INTO `ecs_region` VALUES ('1078', '138', '长安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1079', '138', '桥东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1080', '138', '桥西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1081', '138', '新华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1082', '138', '裕华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1083', '138', '井陉矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1084', '138', '高新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1085', '138', '辛集市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1086', '138', '藁城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1087', '138', '晋州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1088', '138', '新乐市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1089', '138', '鹿泉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1090', '138', '井陉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1091', '138', '正定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1092', '138', '栾城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1093', '138', '行唐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1094', '138', '灵寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1095', '138', '高邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1096', '138', '深泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1097', '138', '赞皇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1098', '138', '无极县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1099', '138', '平山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1100', '138', '元氏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1101', '138', '赵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1102', '139', '新市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1103', '139', '南市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1104', '139', '北市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1105', '139', '涿州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1106', '139', '定州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1107', '139', '安国市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1108', '139', '高碑店市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1109', '139', '满城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1110', '139', '清苑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1111', '139', '涞水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1112', '139', '阜平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1113', '139', '徐水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1114', '139', '定兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1115', '139', '唐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1116', '139', '高阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1117', '139', '容城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1118', '139', '涞源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1119', '139', '望都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1120', '139', '安新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1121', '139', '易县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1122', '139', '曲阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1123', '139', '蠡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1124', '139', '顺平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1125', '139', '博野县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1126', '139', '雄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1127', '140', '运河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1128', '140', '新华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1129', '140', '泊头市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1130', '140', '任丘市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1131', '140', '黄骅市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1132', '140', '河间市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1133', '140', '沧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1134', '140', '青县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1135', '140', '东光县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1136', '140', '海兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1137', '140', '盐山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1138', '140', '肃宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1139', '140', '南皮县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1140', '140', '吴桥县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1141', '140', '献县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1142', '140', '孟村', '3', '0');
INSERT INTO `ecs_region` VALUES ('1143', '141', '双桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1144', '141', '双滦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1145', '141', '鹰手营子矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1146', '141', '承德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1147', '141', '兴隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1148', '141', '平泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1149', '141', '滦平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1150', '141', '隆化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1151', '141', '丰宁', '3', '0');
INSERT INTO `ecs_region` VALUES ('1152', '141', '宽城', '3', '0');
INSERT INTO `ecs_region` VALUES ('1153', '141', '围场', '3', '0');
INSERT INTO `ecs_region` VALUES ('1154', '142', '从台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1155', '142', '复兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1156', '142', '邯山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1157', '142', '峰峰矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1158', '142', '武安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1159', '142', '邯郸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1160', '142', '临漳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1161', '142', '成安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1162', '142', '大名县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1163', '142', '涉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1164', '142', '磁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1165', '142', '肥乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1166', '142', '永年县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1167', '142', '邱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1168', '142', '鸡泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1169', '142', '广平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1170', '142', '馆陶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1171', '142', '魏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1172', '142', '曲周县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1173', '143', '桃城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1174', '143', '冀州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1175', '143', '深州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1176', '143', '枣强县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1177', '143', '武邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1178', '143', '武强县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1179', '143', '饶阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1180', '143', '安平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1181', '143', '故城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1182', '143', '景县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1183', '143', '阜城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1184', '144', '安次区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1185', '144', '广阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1186', '144', '霸州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1187', '144', '三河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1188', '144', '固安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1189', '144', '永清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1190', '144', '香河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1191', '144', '大城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1192', '144', '文安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1193', '144', '大厂', '3', '0');
INSERT INTO `ecs_region` VALUES ('1194', '145', '海港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1195', '145', '山海关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1196', '145', '北戴河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1197', '145', '昌黎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1198', '145', '抚宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1199', '145', '卢龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1200', '145', '青龙', '3', '0');
INSERT INTO `ecs_region` VALUES ('1201', '146', '路北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1202', '146', '路南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1203', '146', '古冶区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1204', '146', '开平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1205', '146', '丰南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1206', '146', '丰润区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1207', '146', '遵化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1208', '146', '迁安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1209', '146', '滦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1210', '146', '滦南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1211', '146', '乐亭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1212', '146', '迁西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1213', '146', '玉田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1214', '146', '唐海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1215', '147', '桥东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1216', '147', '桥西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1217', '147', '南宫市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1218', '147', '沙河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1219', '147', '邢台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1220', '147', '临城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1221', '147', '内丘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1222', '147', '柏乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1223', '147', '隆尧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1224', '147', '任县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1225', '147', '南和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1226', '147', '宁晋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1227', '147', '巨鹿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1228', '147', '新河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1229', '147', '广宗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1230', '147', '平乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1231', '147', '威县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1232', '147', '清河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1233', '147', '临西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1234', '148', '桥西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1235', '148', '桥东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1236', '148', '宣化区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1237', '148', '下花园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1238', '148', '宣化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1239', '148', '张北县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1240', '148', '康保县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1241', '148', '沽源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1242', '148', '尚义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1243', '148', '蔚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1244', '148', '阳原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1245', '148', '怀安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1246', '148', '万全县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1247', '148', '怀来县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1248', '148', '涿鹿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1249', '148', '赤城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1250', '148', '崇礼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1251', '149', '金水区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1252', '149', '邙山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1253', '149', '二七区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1254', '149', '管城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1255', '149', '中原区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1256', '149', '上街区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1257', '149', '惠济区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1258', '149', '郑东新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1259', '149', '经济技术开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1260', '149', '高新开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1261', '149', '出口加工区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1262', '149', '巩义市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1263', '149', '荥阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1264', '149', '新密市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1265', '149', '新郑市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1266', '149', '登封市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1267', '149', '中牟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1268', '150', '西工区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1269', '150', '老城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1270', '150', '涧西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1271', '150', '瀍河回族区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1272', '150', '洛龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1273', '150', '吉利区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1274', '150', '偃师市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1275', '150', '孟津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1276', '150', '新安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1277', '150', '栾川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1278', '150', '嵩县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1279', '150', '汝阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1280', '150', '宜阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1281', '150', '洛宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1282', '150', '伊川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1283', '151', '鼓楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1284', '151', '龙亭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1285', '151', '顺河回族区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1286', '151', '金明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1287', '151', '禹王台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1288', '151', '杞县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1289', '151', '通许县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1290', '151', '尉氏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1291', '151', '开封县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1292', '151', '兰考县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1293', '152', '北关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1294', '152', '文峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1295', '152', '殷都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1296', '152', '龙安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1297', '152', '林州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1298', '152', '安阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1299', '152', '汤阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1300', '152', '滑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1301', '152', '内黄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1302', '153', '淇滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1303', '153', '山城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1304', '153', '鹤山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1305', '153', '浚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1306', '153', '淇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1307', '154', '济源市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1308', '155', '解放区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1309', '155', '中站区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1310', '155', '马村区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1311', '155', '山阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1312', '155', '沁阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1313', '155', '孟州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1314', '155', '修武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1315', '155', '博爱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1316', '155', '武陟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1317', '155', '温县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1318', '156', '卧龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1319', '156', '宛城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1320', '156', '邓州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1321', '156', '南召县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1322', '156', '方城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1323', '156', '西峡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1324', '156', '镇平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1325', '156', '内乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1326', '156', '淅川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1327', '156', '社旗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1328', '156', '唐河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1329', '156', '新野县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1330', '156', '桐柏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1331', '157', '新华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1332', '157', '卫东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1333', '157', '湛河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1334', '157', '石龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1335', '157', '舞钢市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1336', '157', '汝州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1337', '157', '宝丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1338', '157', '叶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1339', '157', '鲁山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1340', '157', '郏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1341', '158', '湖滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1342', '158', '义马市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1343', '158', '灵宝市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1344', '158', '渑池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1345', '158', '陕县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1346', '158', '卢氏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1347', '159', '梁园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1348', '159', '睢阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1349', '159', '永城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1350', '159', '民权县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1351', '159', '睢县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1352', '159', '宁陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1353', '159', '虞城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1354', '159', '柘城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1355', '159', '夏邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1356', '160', '卫滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1357', '160', '红旗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1358', '160', '凤泉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1359', '160', '牧野区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1360', '160', '卫辉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1361', '160', '辉县市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1362', '160', '新乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1363', '160', '获嘉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1364', '160', '原阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1365', '160', '延津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1366', '160', '封丘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1367', '160', '长垣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1368', '161', '浉河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1369', '161', '平桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1370', '161', '罗山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1371', '161', '光山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1372', '161', '新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1373', '161', '商城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1374', '161', '固始县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1375', '161', '潢川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1376', '161', '淮滨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1377', '161', '息县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1378', '162', '魏都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1379', '162', '禹州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1380', '162', '长葛市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1381', '162', '许昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1382', '162', '鄢陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1383', '162', '襄城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1384', '163', '川汇区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1385', '163', '项城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1386', '163', '扶沟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1387', '163', '西华县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1388', '163', '商水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1389', '163', '沈丘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1390', '163', '郸城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1391', '163', '淮阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1392', '163', '太康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1393', '163', '鹿邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1394', '164', '驿城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1395', '164', '西平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1396', '164', '上蔡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1397', '164', '平舆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1398', '164', '正阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1399', '164', '确山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1400', '164', '泌阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1401', '164', '汝南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1402', '164', '遂平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1403', '164', '新蔡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1404', '165', '郾城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1405', '165', '源汇区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1406', '165', '召陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1407', '165', '舞阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1408', '165', '临颍县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1409', '166', '华龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1410', '166', '清丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1411', '166', '南乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1412', '166', '范县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1413', '166', '台前县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1414', '166', '濮阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1415', '167', '道里区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1416', '167', '南岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1417', '167', '动力区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1418', '167', '平房区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1419', '167', '香坊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1420', '167', '太平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1421', '167', '道外区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1422', '167', '阿城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1423', '167', '呼兰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1424', '167', '松北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1425', '167', '尚志市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1426', '167', '双城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1427', '167', '五常市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1428', '167', '方正县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1429', '167', '宾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1430', '167', '依兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1431', '167', '巴彦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1432', '167', '通河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1433', '167', '木兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1434', '167', '延寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1435', '168', '萨尔图区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1436', '168', '红岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1437', '168', '龙凤区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1438', '168', '让胡路区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1439', '168', '大同区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1440', '168', '肇州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1441', '168', '肇源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1442', '168', '林甸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1443', '168', '杜尔伯特', '3', '0');
INSERT INTO `ecs_region` VALUES ('1444', '169', '呼玛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1445', '169', '漠河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1446', '169', '塔河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1447', '170', '兴山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1448', '170', '工农区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1449', '170', '南山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1450', '170', '兴安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1451', '170', '向阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1452', '170', '东山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1453', '170', '萝北县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1454', '170', '绥滨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1455', '171', '爱辉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1456', '171', '五大连池市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1457', '171', '北安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1458', '171', '嫩江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1459', '171', '逊克县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1460', '171', '孙吴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1461', '172', '鸡冠区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1462', '172', '恒山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1463', '172', '城子河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1464', '172', '滴道区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1465', '172', '梨树区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1466', '172', '虎林市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1467', '172', '密山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1468', '172', '鸡东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1469', '173', '前进区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1470', '173', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1471', '173', '向阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1472', '173', '东风区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1473', '173', '同江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1474', '173', '富锦市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1475', '173', '桦南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1476', '173', '桦川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1477', '173', '汤原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1478', '173', '抚远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1479', '174', '爱民区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1480', '174', '东安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1481', '174', '阳明区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1482', '174', '西安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1483', '174', '绥芬河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1484', '174', '海林市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1485', '174', '宁安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1486', '174', '穆棱市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1487', '174', '东宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1488', '174', '林口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1489', '175', '桃山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1490', '175', '新兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1491', '175', '茄子河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1492', '175', '勃利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1493', '176', '龙沙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1494', '176', '昂昂溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1495', '176', '铁峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1496', '176', '建华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1497', '176', '富拉尔基区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1498', '176', '碾子山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1499', '176', '梅里斯达斡尔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1500', '176', '讷河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1501', '176', '龙江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1502', '176', '依安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1503', '176', '泰来县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1504', '176', '甘南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1505', '176', '富裕县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1506', '176', '克山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1507', '176', '克东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1508', '176', '拜泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1509', '177', '尖山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1510', '177', '岭东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1511', '177', '四方台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1512', '177', '宝山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1513', '177', '集贤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1514', '177', '友谊县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1515', '177', '宝清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1516', '177', '饶河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1517', '178', '北林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1518', '178', '安达市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1519', '178', '肇东市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1520', '178', '海伦市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1521', '178', '望奎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1522', '178', '兰西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1523', '178', '青冈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1524', '178', '庆安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1525', '178', '明水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1526', '178', '绥棱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1527', '179', '伊春区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1528', '179', '带岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1529', '179', '南岔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1530', '179', '金山屯区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1531', '179', '西林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1532', '179', '美溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1533', '179', '乌马河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1534', '179', '翠峦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1535', '179', '友好区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1536', '179', '上甘岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1537', '179', '五营区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1538', '179', '红星区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1539', '179', '新青区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1540', '179', '汤旺河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1541', '179', '乌伊岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1542', '179', '铁力市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1543', '179', '嘉荫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1544', '180', '江岸区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1545', '180', '武昌区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1546', '180', '江汉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1547', '180', '硚口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1548', '180', '汉阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1549', '180', '青山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1550', '180', '洪山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1551', '180', '东西湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1552', '180', '汉南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1553', '180', '蔡甸区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1554', '180', '江夏区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1555', '180', '黄陂区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1556', '180', '新洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1557', '180', '经济开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1558', '181', '仙桃市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1559', '182', '鄂城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1560', '182', '华容区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1561', '182', '梁子湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1562', '183', '黄州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1563', '183', '麻城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1564', '183', '武穴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1565', '183', '团风县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1566', '183', '红安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1567', '183', '罗田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1568', '183', '英山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1569', '183', '浠水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1570', '183', '蕲春县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1571', '183', '黄梅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1572', '184', '黄石港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1573', '184', '西塞山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1574', '184', '下陆区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1575', '184', '铁山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1576', '184', '大冶市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1577', '184', '阳新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1578', '185', '东宝区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1579', '185', '掇刀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1580', '185', '钟祥市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1581', '185', '京山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1582', '185', '沙洋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1583', '186', '沙市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1584', '186', '荆州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1585', '186', '石首市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1586', '186', '洪湖市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1587', '186', '松滋市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1588', '186', '公安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1589', '186', '监利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1590', '186', '江陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1591', '187', '潜江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1592', '188', '神农架林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1593', '189', '张湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1594', '189', '茅箭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1595', '189', '丹江口市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1596', '189', '郧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1597', '189', '郧西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1598', '189', '竹山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1599', '189', '竹溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1600', '189', '房县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1601', '190', '曾都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1602', '190', '广水市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1603', '191', '天门市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1604', '192', '咸安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1605', '192', '赤壁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1606', '192', '嘉鱼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1607', '192', '通城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1608', '192', '崇阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1609', '192', '通山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1610', '193', '襄城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1611', '193', '樊城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1612', '193', '襄阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1613', '193', '老河口市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1614', '193', '枣阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1615', '193', '宜城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1616', '193', '南漳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1617', '193', '谷城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1618', '193', '保康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1619', '194', '孝南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1620', '194', '应城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1621', '194', '安陆市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1622', '194', '汉川市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1623', '194', '孝昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1624', '194', '大悟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1625', '194', '云梦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1626', '195', '长阳', '3', '0');
INSERT INTO `ecs_region` VALUES ('1627', '195', '五峰', '3', '0');
INSERT INTO `ecs_region` VALUES ('1628', '195', '西陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1629', '195', '伍家岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1630', '195', '点军区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1631', '195', '猇亭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1632', '195', '夷陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1633', '195', '宜都市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1634', '195', '当阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1635', '195', '枝江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1636', '195', '远安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1637', '195', '兴山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1638', '195', '秭归县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1639', '196', '恩施市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1640', '196', '利川市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1641', '196', '建始县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1642', '196', '巴东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1643', '196', '宣恩县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1644', '196', '咸丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1645', '196', '来凤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1646', '196', '鹤峰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1647', '197', '岳麓区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1648', '197', '芙蓉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1649', '197', '天心区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1650', '197', '开福区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1651', '197', '雨花区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1652', '197', '开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1653', '197', '浏阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1654', '197', '长沙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1655', '197', '望城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1656', '197', '宁乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1657', '198', '永定区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1658', '198', '武陵源区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1659', '198', '慈利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1660', '198', '桑植县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1661', '199', '武陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1662', '199', '鼎城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1663', '199', '津市市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1664', '199', '安乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1665', '199', '汉寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1666', '199', '澧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1667', '199', '临澧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1668', '199', '桃源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1669', '199', '石门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1670', '200', '北湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1671', '200', '苏仙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1672', '200', '资兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1673', '200', '桂阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1674', '200', '宜章县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1675', '200', '永兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1676', '200', '嘉禾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1677', '200', '临武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1678', '200', '汝城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1679', '200', '桂东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1680', '200', '安仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1681', '201', '雁峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1682', '201', '珠晖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1683', '201', '石鼓区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1684', '201', '蒸湘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1685', '201', '南岳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1686', '201', '耒阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1687', '201', '常宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1688', '201', '衡阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1689', '201', '衡南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1690', '201', '衡山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1691', '201', '衡东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1692', '201', '祁东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1693', '202', '鹤城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1694', '202', '靖州', '3', '0');
INSERT INTO `ecs_region` VALUES ('1695', '202', '麻阳', '3', '0');
INSERT INTO `ecs_region` VALUES ('1696', '202', '通道', '3', '0');
INSERT INTO `ecs_region` VALUES ('1697', '202', '新晃', '3', '0');
INSERT INTO `ecs_region` VALUES ('1698', '202', '芷江', '3', '0');
INSERT INTO `ecs_region` VALUES ('1699', '202', '沅陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1700', '202', '辰溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1701', '202', '溆浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1702', '202', '中方县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1703', '202', '会同县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1704', '202', '洪江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1705', '203', '娄星区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1706', '203', '冷水江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1707', '203', '涟源市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1708', '203', '双峰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1709', '203', '新化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1710', '204', '城步', '3', '0');
INSERT INTO `ecs_region` VALUES ('1711', '204', '双清区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1712', '204', '大祥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1713', '204', '北塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1714', '204', '武冈市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1715', '204', '邵东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1716', '204', '新邵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1717', '204', '邵阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1718', '204', '隆回县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1719', '204', '洞口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1720', '204', '绥宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1721', '204', '新宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1722', '205', '岳塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1723', '205', '雨湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1724', '205', '湘乡市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1725', '205', '韶山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1726', '205', '湘潭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1727', '206', '吉首市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1728', '206', '泸溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1729', '206', '凤凰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1730', '206', '花垣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1731', '206', '保靖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1732', '206', '古丈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1733', '206', '永顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1734', '206', '龙山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1735', '207', '赫山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1736', '207', '资阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1737', '207', '沅江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1738', '207', '南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1739', '207', '桃江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1740', '207', '安化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1741', '208', '江华', '3', '0');
INSERT INTO `ecs_region` VALUES ('1742', '208', '冷水滩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1743', '208', '零陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1744', '208', '祁阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1745', '208', '东安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1746', '208', '双牌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1747', '208', '道县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1748', '208', '江永县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1749', '208', '宁远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1750', '208', '蓝山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1751', '208', '新田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1752', '209', '岳阳楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1753', '209', '君山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1754', '209', '云溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1755', '209', '汨罗市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1756', '209', '临湘市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1757', '209', '岳阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1758', '209', '华容县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1759', '209', '湘阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1760', '209', '平江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1761', '210', '天元区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1762', '210', '荷塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1763', '210', '芦淞区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1764', '210', '石峰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1765', '210', '醴陵市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1766', '210', '株洲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1767', '210', '攸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1768', '210', '茶陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1769', '210', '炎陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1770', '211', '朝阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1771', '211', '宽城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1772', '211', '二道区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1773', '211', '南关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1774', '211', '绿园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1775', '211', '双阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1776', '211', '净月潭开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1777', '211', '高新技术开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1778', '211', '经济技术开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1779', '211', '汽车产业开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1780', '211', '德惠市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1781', '211', '九台市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1782', '211', '榆树市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1783', '211', '农安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1784', '212', '船营区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1785', '212', '昌邑区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1786', '212', '龙潭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1787', '212', '丰满区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1788', '212', '蛟河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1789', '212', '桦甸市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1790', '212', '舒兰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1791', '212', '磐石市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1792', '212', '永吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1793', '213', '洮北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1794', '213', '洮南市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1795', '213', '大安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1796', '213', '镇赉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1797', '213', '通榆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1798', '214', '江源区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1799', '214', '八道江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1800', '214', '长白', '3', '0');
INSERT INTO `ecs_region` VALUES ('1801', '214', '临江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1802', '214', '抚松县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1803', '214', '靖宇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1804', '215', '龙山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1805', '215', '西安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1806', '215', '东丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1807', '215', '东辽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1808', '216', '铁西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1809', '216', '铁东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1810', '216', '伊通', '3', '0');
INSERT INTO `ecs_region` VALUES ('1811', '216', '公主岭市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1812', '216', '双辽市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1813', '216', '梨树县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1814', '217', '前郭尔罗斯', '3', '0');
INSERT INTO `ecs_region` VALUES ('1815', '217', '宁江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1816', '217', '长岭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1817', '217', '乾安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1818', '217', '扶余县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1819', '218', '东昌区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1820', '218', '二道江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1821', '218', '梅河口市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1822', '218', '集安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1823', '218', '通化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1824', '218', '辉南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1825', '218', '柳河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1826', '219', '延吉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1827', '219', '图们市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1828', '219', '敦化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1829', '219', '珲春市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1830', '219', '龙井市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1831', '219', '和龙市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1832', '219', '安图县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1833', '219', '汪清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1834', '220', '玄武区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1835', '220', '鼓楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1836', '220', '白下区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1837', '220', '建邺区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1838', '220', '秦淮区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1839', '220', '雨花台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1840', '220', '下关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1841', '220', '栖霞区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1842', '220', '浦口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1843', '220', '江宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1844', '220', '六合区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1845', '220', '溧水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1846', '220', '高淳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1847', '221', '沧浪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1848', '221', '金阊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1849', '221', '平江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1850', '221', '虎丘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1851', '221', '吴中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1852', '221', '相城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1853', '221', '园区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1854', '221', '新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1855', '221', '常熟市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1856', '221', '张家港市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1857', '221', '玉山镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1858', '221', '巴城镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1859', '221', '周市镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1860', '221', '陆家镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1861', '221', '花桥镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1862', '221', '淀山湖镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1863', '221', '张浦镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1864', '221', '周庄镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1865', '221', '千灯镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1866', '221', '锦溪镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('1867', '221', '开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1868', '221', '吴江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1869', '221', '太仓市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1870', '222', '崇安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1871', '222', '北塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1872', '222', '南长区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1873', '222', '锡山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1874', '222', '惠山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1875', '222', '滨湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1876', '222', '新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1877', '222', '江阴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1878', '222', '宜兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1879', '223', '天宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1880', '223', '钟楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1881', '223', '戚墅堰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1882', '223', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1883', '223', '新北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1884', '223', '武进区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1885', '223', '溧阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1886', '223', '金坛市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1887', '224', '清河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1888', '224', '清浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1889', '224', '楚州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1890', '224', '淮阴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1891', '224', '涟水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1892', '224', '洪泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1893', '224', '盱眙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1894', '224', '金湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1895', '225', '新浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1896', '225', '连云区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1897', '225', '海州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1898', '225', '赣榆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1899', '225', '东海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1900', '225', '灌云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1901', '225', '灌南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1902', '226', '崇川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1903', '226', '港闸区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1904', '226', '经济开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1905', '226', '启东市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1906', '226', '如皋市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1907', '226', '通州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1908', '226', '海门市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1909', '226', '海安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1910', '226', '如东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1911', '227', '宿城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1912', '227', '宿豫区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1913', '227', '宿豫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1914', '227', '沭阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1915', '227', '泗阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1916', '227', '泗洪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1917', '228', '海陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1918', '228', '高港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1919', '228', '兴化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1920', '228', '靖江市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1921', '228', '泰兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1922', '228', '姜堰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1923', '229', '云龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1924', '229', '鼓楼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1925', '229', '九里区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1926', '229', '贾汪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1927', '229', '泉山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1928', '229', '新沂市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1929', '229', '邳州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1930', '229', '丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1931', '229', '沛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1932', '229', '铜山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1933', '229', '睢宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1934', '230', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1935', '230', '亭湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1936', '230', '盐都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1937', '230', '盐都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1938', '230', '东台市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1939', '230', '大丰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1940', '230', '响水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1941', '230', '滨海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1942', '230', '阜宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1943', '230', '射阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1944', '230', '建湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1945', '231', '广陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1946', '231', '维扬区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1947', '231', '邗江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1948', '231', '仪征市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1949', '231', '高邮市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1950', '231', '江都市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1951', '231', '宝应县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1952', '232', '京口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1953', '232', '润州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1954', '232', '丹徒区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1955', '232', '丹阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1956', '232', '扬中市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1957', '232', '句容市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1958', '233', '东湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1959', '233', '西湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1960', '233', '青云谱区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1961', '233', '湾里区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1962', '233', '青山湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1963', '233', '红谷滩新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1964', '233', '昌北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1965', '233', '高新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1966', '233', '南昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1967', '233', '新建县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1968', '233', '安义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1969', '233', '进贤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1970', '234', '临川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1971', '234', '南城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1972', '234', '黎川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1973', '234', '南丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1974', '234', '崇仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1975', '234', '乐安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1976', '234', '宜黄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1977', '234', '金溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1978', '234', '资溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1979', '234', '东乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1980', '234', '广昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1981', '235', '章贡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('1982', '235', '于都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1983', '235', '瑞金市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1984', '235', '南康市', '3', '0');
INSERT INTO `ecs_region` VALUES ('1985', '235', '赣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1986', '235', '信丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1987', '235', '大余县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1988', '235', '上犹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1989', '235', '崇义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1990', '235', '安远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1991', '235', '龙南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1992', '235', '定南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1993', '235', '全南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1994', '235', '宁都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1995', '235', '兴国县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1996', '235', '会昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1997', '235', '寻乌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1998', '235', '石城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('1999', '236', '安福县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2000', '236', '吉州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2001', '236', '青原区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2002', '236', '井冈山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2003', '236', '吉安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2004', '236', '吉水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2005', '236', '峡江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2006', '236', '新干县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2007', '236', '永丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2008', '236', '泰和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2009', '236', '遂川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2010', '236', '万安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2011', '236', '永新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2012', '237', '珠山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2013', '237', '昌江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2014', '237', '乐平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2015', '237', '浮梁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2016', '238', '浔阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2017', '238', '庐山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2018', '238', '瑞昌市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2019', '238', '九江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2020', '238', '武宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2021', '238', '修水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2022', '238', '永修县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2023', '238', '德安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2024', '238', '星子县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2025', '238', '都昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2026', '238', '湖口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2027', '238', '彭泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2028', '239', '安源区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2029', '239', '湘东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2030', '239', '莲花县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2031', '239', '芦溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2032', '239', '上栗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2033', '240', '信州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2034', '240', '德兴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2035', '240', '上饶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2036', '240', '广丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2037', '240', '玉山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2038', '240', '铅山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2039', '240', '横峰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2040', '240', '弋阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2041', '240', '余干县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2042', '240', '波阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2043', '240', '万年县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2044', '240', '婺源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2045', '241', '渝水区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2046', '241', '分宜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2047', '242', '袁州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2048', '242', '丰城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2049', '242', '樟树市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2050', '242', '高安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2051', '242', '奉新县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2052', '242', '万载县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2053', '242', '上高县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2054', '242', '宜丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2055', '242', '靖安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2056', '242', '铜鼓县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2057', '243', '月湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2058', '243', '贵溪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2059', '243', '余江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2060', '244', '沈河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2061', '244', '皇姑区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2062', '244', '和平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2063', '244', '大东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2064', '244', '铁西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2065', '244', '苏家屯区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2066', '244', '东陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2067', '244', '沈北新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2068', '244', '于洪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2069', '244', '浑南新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2070', '244', '新民市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2071', '244', '辽中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2072', '244', '康平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2073', '244', '法库县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2074', '245', '西岗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2075', '245', '中山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2076', '245', '沙河口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2077', '245', '甘井子区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2078', '245', '旅顺口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2079', '245', '金州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2080', '245', '开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2081', '245', '瓦房店市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2082', '245', '普兰店市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2083', '245', '庄河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2084', '245', '长海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2085', '246', '铁东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2086', '246', '铁西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2087', '246', '立山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2088', '246', '千山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2089', '246', '岫岩', '3', '0');
INSERT INTO `ecs_region` VALUES ('2090', '246', '海城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2091', '246', '台安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2092', '247', '本溪', '3', '0');
INSERT INTO `ecs_region` VALUES ('2093', '247', '平山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2094', '247', '明山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2095', '247', '溪湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2096', '247', '南芬区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2097', '247', '桓仁', '3', '0');
INSERT INTO `ecs_region` VALUES ('2098', '248', '双塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2099', '248', '龙城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2100', '248', '喀喇沁左翼蒙古族自治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2101', '248', '北票市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2102', '248', '凌源市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2103', '248', '朝阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2104', '248', '建平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2105', '249', '振兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2106', '249', '元宝区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2107', '249', '振安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2108', '249', '宽甸', '3', '0');
INSERT INTO `ecs_region` VALUES ('2109', '249', '东港市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2110', '249', '凤城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2111', '250', '顺城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2112', '250', '新抚区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2113', '250', '东洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2114', '250', '望花区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2115', '250', '清原', '3', '0');
INSERT INTO `ecs_region` VALUES ('2116', '250', '新宾', '3', '0');
INSERT INTO `ecs_region` VALUES ('2117', '250', '抚顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2118', '251', '阜新', '3', '0');
INSERT INTO `ecs_region` VALUES ('2119', '251', '海州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2120', '251', '新邱区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2121', '251', '太平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2122', '251', '清河门区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2123', '251', '细河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2124', '251', '彰武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2125', '252', '龙港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2126', '252', '南票区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2127', '252', '连山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2128', '252', '兴城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2129', '252', '绥中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2130', '252', '建昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2131', '253', '太和区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2132', '253', '古塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2133', '253', '凌河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2134', '253', '凌海市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2135', '253', '北镇市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2136', '253', '黑山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2137', '253', '义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2138', '254', '白塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2139', '254', '文圣区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2140', '254', '宏伟区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2141', '254', '太子河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2142', '254', '弓长岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2143', '254', '灯塔市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2144', '254', '辽阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2145', '255', '双台子区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2146', '255', '兴隆台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2147', '255', '大洼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2148', '255', '盘山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2149', '256', '银州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2150', '256', '清河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2151', '256', '调兵山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2152', '256', '开原市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2153', '256', '铁岭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2154', '256', '西丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2155', '256', '昌图县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2156', '257', '站前区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2157', '257', '西市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2158', '257', '鲅鱼圈区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2159', '257', '老边区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2160', '257', '盖州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2161', '257', '大石桥市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2162', '258', '回民区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2163', '258', '玉泉区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2164', '258', '新城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2165', '258', '赛罕区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2166', '258', '清水河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2167', '258', '土默特左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2168', '258', '托克托县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2169', '258', '和林格尔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2170', '258', '武川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2171', '259', '阿拉善左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2172', '259', '阿拉善右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2173', '259', '额济纳旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2174', '260', '临河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2175', '260', '五原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2176', '260', '磴口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2177', '260', '乌拉特前旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2178', '260', '乌拉特中旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2179', '260', '乌拉特后旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2180', '260', '杭锦后旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2181', '261', '昆都仑区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2182', '261', '青山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2183', '261', '东河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2184', '261', '九原区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2185', '261', '石拐区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2186', '261', '白云矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2187', '261', '土默特右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2188', '261', '固阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2189', '261', '达尔罕茂明安联合旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2190', '262', '红山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2191', '262', '元宝山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2192', '262', '松山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2193', '262', '阿鲁科尔沁旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2194', '262', '巴林左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2195', '262', '巴林右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2196', '262', '林西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2197', '262', '克什克腾旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2198', '262', '翁牛特旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2199', '262', '喀喇沁旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2200', '262', '宁城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2201', '262', '敖汉旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2202', '263', '东胜区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2203', '263', '达拉特旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2204', '263', '准格尔旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2205', '263', '鄂托克前旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2206', '263', '鄂托克旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2207', '263', '杭锦旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2208', '263', '乌审旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2209', '263', '伊金霍洛旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2210', '264', '海拉尔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2211', '264', '莫力达瓦', '3', '0');
INSERT INTO `ecs_region` VALUES ('2212', '264', '满洲里市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2213', '264', '牙克石市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2214', '264', '扎兰屯市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2215', '264', '额尔古纳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2216', '264', '根河市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2217', '264', '阿荣旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2218', '264', '鄂伦春自治旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2219', '264', '鄂温克族自治旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2220', '264', '陈巴尔虎旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2221', '264', '新巴尔虎左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2222', '264', '新巴尔虎右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2223', '265', '科尔沁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2224', '265', '霍林郭勒市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2225', '265', '科尔沁左翼中旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2226', '265', '科尔沁左翼后旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2227', '265', '开鲁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2228', '265', '库伦旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2229', '265', '奈曼旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2230', '265', '扎鲁特旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2231', '266', '海勃湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2232', '266', '乌达区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2233', '266', '海南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2234', '267', '化德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2235', '267', '集宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2236', '267', '丰镇市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2237', '267', '卓资县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2238', '267', '商都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2239', '267', '兴和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2240', '267', '凉城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2241', '267', '察哈尔右翼前旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2242', '267', '察哈尔右翼中旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2243', '267', '察哈尔右翼后旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2244', '267', '四子王旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2245', '268', '二连浩特市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2246', '268', '锡林浩特市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2247', '268', '阿巴嘎旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2248', '268', '苏尼特左旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2249', '268', '苏尼特右旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2250', '268', '东乌珠穆沁旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2251', '268', '西乌珠穆沁旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2252', '268', '太仆寺旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2253', '268', '镶黄旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2254', '268', '正镶白旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2255', '268', '正蓝旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2256', '268', '多伦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2257', '269', '乌兰浩特市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2258', '269', '阿尔山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2259', '269', '科尔沁右翼前旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2260', '269', '科尔沁右翼中旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2261', '269', '扎赉特旗', '3', '0');
INSERT INTO `ecs_region` VALUES ('2262', '269', '突泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2263', '270', '西夏区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2264', '270', '金凤区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2265', '270', '兴庆区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2266', '270', '灵武市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2267', '270', '永宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2268', '270', '贺兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2269', '271', '原州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2270', '271', '海原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2271', '271', '西吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2272', '271', '隆德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2273', '271', '泾源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2274', '271', '彭阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2275', '272', '惠农县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2276', '272', '大武口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2277', '272', '惠农区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2278', '272', '陶乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2279', '272', '平罗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2280', '273', '利通区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2281', '273', '中卫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2282', '273', '青铜峡市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2283', '273', '中宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2284', '273', '盐池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2285', '273', '同心县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2286', '274', '沙坡头区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2287', '274', '海原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2288', '274', '中宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2289', '275', '城中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2290', '275', '城东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2291', '275', '城西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2292', '275', '城北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2293', '275', '湟中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2294', '275', '湟源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2295', '275', '大通', '3', '0');
INSERT INTO `ecs_region` VALUES ('2296', '276', '玛沁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2297', '276', '班玛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2298', '276', '甘德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2299', '276', '达日县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2300', '276', '久治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2301', '276', '玛多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2302', '277', '海晏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2303', '277', '祁连县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2304', '277', '刚察县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2305', '277', '门源', '3', '0');
INSERT INTO `ecs_region` VALUES ('2306', '278', '平安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2307', '278', '乐都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2308', '278', '民和', '3', '0');
INSERT INTO `ecs_region` VALUES ('2309', '278', '互助', '3', '0');
INSERT INTO `ecs_region` VALUES ('2310', '278', '化隆', '3', '0');
INSERT INTO `ecs_region` VALUES ('2311', '278', '循化', '3', '0');
INSERT INTO `ecs_region` VALUES ('2312', '279', '共和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2313', '279', '同德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2314', '279', '贵德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2315', '279', '兴海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2316', '279', '贵南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2317', '280', '德令哈市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2318', '280', '格尔木市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2319', '280', '乌兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2320', '280', '都兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2321', '280', '天峻县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2322', '281', '同仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2323', '281', '尖扎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2324', '281', '泽库县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2325', '281', '河南蒙古族自治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2326', '282', '玉树县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2327', '282', '杂多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2328', '282', '称多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2329', '282', '治多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2330', '282', '囊谦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2331', '282', '曲麻莱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2332', '283', '市中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2333', '283', '历下区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2334', '283', '天桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2335', '283', '槐荫区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2336', '283', '历城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2337', '283', '长清区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2338', '283', '章丘市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2339', '283', '平阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2340', '283', '济阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2341', '283', '商河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2342', '284', '市南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2343', '284', '市北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2344', '284', '城阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2345', '284', '四方区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2346', '284', '李沧区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2347', '284', '黄岛区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2348', '284', '崂山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2349', '284', '胶州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2350', '284', '即墨市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2351', '284', '平度市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2352', '284', '胶南市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2353', '284', '莱西市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2354', '285', '滨城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2355', '285', '惠民县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2356', '285', '阳信县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2357', '285', '无棣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2358', '285', '沾化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2359', '285', '博兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2360', '285', '邹平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2361', '286', '德城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2362', '286', '陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2363', '286', '乐陵市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2364', '286', '禹城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2365', '286', '宁津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2366', '286', '庆云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2367', '286', '临邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2368', '286', '齐河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2369', '286', '平原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2370', '286', '夏津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2371', '286', '武城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2372', '287', '东营区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2373', '287', '河口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2374', '287', '垦利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2375', '287', '利津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2376', '287', '广饶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2377', '288', '牡丹区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2378', '288', '曹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2379', '288', '单县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2380', '288', '成武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2381', '288', '巨野县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2382', '288', '郓城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2383', '288', '鄄城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2384', '288', '定陶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2385', '288', '东明县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2386', '289', '市中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2387', '289', '任城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2388', '289', '曲阜市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2389', '289', '兖州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2390', '289', '邹城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2391', '289', '微山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2392', '289', '鱼台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2393', '289', '金乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2394', '289', '嘉祥县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2395', '289', '汶上县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2396', '289', '泗水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2397', '289', '梁山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2398', '290', '莱城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2399', '290', '钢城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2400', '291', '东昌府区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2401', '291', '临清市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2402', '291', '阳谷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2403', '291', '莘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2404', '291', '茌平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2405', '291', '东阿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2406', '291', '冠县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2407', '291', '高唐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2408', '292', '兰山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2409', '292', '罗庄区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2410', '292', '河东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2411', '292', '沂南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2412', '292', '郯城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2413', '292', '沂水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2414', '292', '苍山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2415', '292', '费县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2416', '292', '平邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2417', '292', '莒南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2418', '292', '蒙阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2419', '292', '临沭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2420', '293', '东港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2421', '293', '岚山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2422', '293', '五莲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2423', '293', '莒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2424', '294', '泰山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2425', '294', '岱岳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2426', '294', '新泰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2427', '294', '肥城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2428', '294', '宁阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2429', '294', '东平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2430', '295', '荣成市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2431', '295', '乳山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2432', '295', '环翠区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2433', '295', '文登市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2434', '296', '潍城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2435', '296', '寒亭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2436', '296', '坊子区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2437', '296', '奎文区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2438', '296', '青州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2439', '296', '诸城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2440', '296', '寿光市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2441', '296', '安丘市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2442', '296', '高密市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2443', '296', '昌邑市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2444', '296', '临朐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2445', '296', '昌乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2446', '297', '芝罘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2447', '297', '福山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2448', '297', '牟平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2449', '297', '莱山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2450', '297', '开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2451', '297', '龙口市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2452', '297', '莱阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2453', '297', '莱州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2454', '297', '蓬莱市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2455', '297', '招远市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2456', '297', '栖霞市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2457', '297', '海阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2458', '297', '长岛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2459', '298', '市中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2460', '298', '山亭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2461', '298', '峄城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2462', '298', '台儿庄区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2463', '298', '薛城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2464', '298', '滕州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2465', '299', '张店区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2466', '299', '临淄区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2467', '299', '淄川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2468', '299', '博山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2469', '299', '周村区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2470', '299', '桓台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2471', '299', '高青县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2472', '299', '沂源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2473', '300', '杏花岭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2474', '300', '小店区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2475', '300', '迎泽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2476', '300', '尖草坪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2477', '300', '万柏林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2478', '300', '晋源区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2479', '300', '高新开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2480', '300', '民营经济开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2481', '300', '经济技术开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2482', '300', '清徐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2483', '300', '阳曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2484', '300', '娄烦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2485', '300', '古交市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2486', '301', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2487', '301', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2488', '301', '沁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2489', '301', '潞城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2490', '301', '长治县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2491', '301', '襄垣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2492', '301', '屯留县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2493', '301', '平顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2494', '301', '黎城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2495', '301', '壶关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2496', '301', '长子县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2497', '301', '武乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2498', '301', '沁源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2499', '302', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2500', '302', '矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2501', '302', '南郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2502', '302', '新荣区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2503', '302', '阳高县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2504', '302', '天镇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2505', '302', '广灵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2506', '302', '灵丘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2507', '302', '浑源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2508', '302', '左云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2509', '302', '大同县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2510', '303', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2511', '303', '高平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2512', '303', '沁水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2513', '303', '阳城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2514', '303', '陵川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2515', '303', '泽州县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2516', '304', '榆次区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2517', '304', '介休市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2518', '304', '榆社县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2519', '304', '左权县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2520', '304', '和顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2521', '304', '昔阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2522', '304', '寿阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2523', '304', '太谷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2524', '304', '祁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2525', '304', '平遥县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2526', '304', '灵石县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2527', '305', '尧都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2528', '305', '侯马市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2529', '305', '霍州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2530', '305', '曲沃县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2531', '305', '翼城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2532', '305', '襄汾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2533', '305', '洪洞县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2534', '305', '吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2535', '305', '安泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2536', '305', '浮山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2537', '305', '古县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2538', '305', '乡宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2539', '305', '大宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2540', '305', '隰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2541', '305', '永和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2542', '305', '蒲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2543', '305', '汾西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2544', '306', '离石市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2545', '306', '离石区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2546', '306', '孝义市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2547', '306', '汾阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2548', '306', '文水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2549', '306', '交城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2550', '306', '兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2551', '306', '临县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2552', '306', '柳林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2553', '306', '石楼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2554', '306', '岚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2555', '306', '方山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2556', '306', '中阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2557', '306', '交口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2558', '307', '朔城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2559', '307', '平鲁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2560', '307', '山阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2561', '307', '应县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2562', '307', '右玉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2563', '307', '怀仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2564', '308', '忻府区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2565', '308', '原平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2566', '308', '定襄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2567', '308', '五台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2568', '308', '代县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2569', '308', '繁峙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2570', '308', '宁武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2571', '308', '静乐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2572', '308', '神池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2573', '308', '五寨县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2574', '308', '岢岚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2575', '308', '河曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2576', '308', '保德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2577', '308', '偏关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2578', '309', '城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2579', '309', '矿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2580', '309', '郊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2581', '309', '平定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2582', '309', '盂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2583', '310', '盐湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2584', '310', '永济市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2585', '310', '河津市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2586', '310', '临猗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2587', '310', '万荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2588', '310', '闻喜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2589', '310', '稷山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2590', '310', '新绛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2591', '310', '绛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2592', '310', '垣曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2593', '310', '夏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2594', '310', '平陆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2595', '310', '芮城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2596', '311', '莲湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2597', '311', '新城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2598', '311', '碑林区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2599', '311', '雁塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2600', '311', '灞桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2601', '311', '未央区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2602', '311', '阎良区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2603', '311', '临潼区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2604', '311', '长安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2605', '311', '蓝田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2606', '311', '周至县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2607', '311', '户县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2608', '311', '高陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2609', '312', '汉滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2610', '312', '汉阴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2611', '312', '石泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2612', '312', '宁陕县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2613', '312', '紫阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2614', '312', '岚皋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2615', '312', '平利县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2616', '312', '镇坪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2617', '312', '旬阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2618', '312', '白河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2619', '313', '陈仓区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2620', '313', '渭滨区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2621', '313', '金台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2622', '313', '凤翔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2623', '313', '岐山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2624', '313', '扶风县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2625', '313', '眉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2626', '313', '陇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2627', '313', '千阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2628', '313', '麟游县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2629', '313', '凤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2630', '313', '太白县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2631', '314', '汉台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2632', '314', '南郑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2633', '314', '城固县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2634', '314', '洋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2635', '314', '西乡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2636', '314', '勉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2637', '314', '宁强县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2638', '314', '略阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2639', '314', '镇巴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2640', '314', '留坝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2641', '314', '佛坪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2642', '315', '商州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2643', '315', '洛南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2644', '315', '丹凤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2645', '315', '商南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2646', '315', '山阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2647', '315', '镇安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2648', '315', '柞水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2649', '316', '耀州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2650', '316', '王益区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2651', '316', '印台区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2652', '316', '宜君县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2653', '317', '临渭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2654', '317', '韩城市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2655', '317', '华阴市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2656', '317', '华县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2657', '317', '潼关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2658', '317', '大荔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2659', '317', '合阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2660', '317', '澄城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2661', '317', '蒲城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2662', '317', '白水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2663', '317', '富平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2664', '318', '秦都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2665', '318', '渭城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2666', '318', '杨陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2667', '318', '兴平市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2668', '318', '三原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2669', '318', '泾阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2670', '318', '乾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2671', '318', '礼泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2672', '318', '永寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2673', '318', '彬县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2674', '318', '长武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2675', '318', '旬邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2676', '318', '淳化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2677', '318', '武功县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2678', '319', '吴起县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2679', '319', '宝塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2680', '319', '延长县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2681', '319', '延川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2682', '319', '子长县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2683', '319', '安塞县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2684', '319', '志丹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2685', '319', '甘泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2686', '319', '富县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2687', '319', '洛川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2688', '319', '宜川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2689', '319', '黄龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2690', '319', '黄陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2691', '320', '榆阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2692', '320', '神木县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2693', '320', '府谷县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2694', '320', '横山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2695', '320', '靖边县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2696', '320', '定边县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2697', '320', '绥德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2698', '320', '米脂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2699', '320', '佳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2700', '320', '吴堡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2701', '320', '清涧县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2702', '320', '子洲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2703', '321', '长宁区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2704', '321', '闸北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2705', '321', '闵行区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2706', '321', '徐汇区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2707', '321', '浦东新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2708', '321', '杨浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2709', '321', '普陀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2710', '321', '静安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2711', '321', '卢湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2712', '321', '虹口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2713', '321', '黄浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2714', '321', '南汇区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2715', '321', '松江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2716', '321', '嘉定区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2717', '321', '宝山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2718', '321', '青浦区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2719', '321', '金山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2720', '321', '奉贤区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2721', '321', '崇明县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2722', '322', '青羊区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2723', '322', '锦江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2724', '322', '金牛区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2725', '322', '武侯区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2726', '322', '成华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2727', '322', '龙泉驿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2728', '322', '青白江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2729', '322', '新都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2730', '322', '温江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2731', '322', '高新区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2732', '322', '高新西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2733', '322', '都江堰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2734', '322', '彭州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2735', '322', '邛崃市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2736', '322', '崇州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2737', '322', '金堂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2738', '322', '双流县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2739', '322', '郫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2740', '322', '大邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2741', '322', '蒲江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2742', '322', '新津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2743', '322', '都江堰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2744', '322', '彭州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2745', '322', '邛崃市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2746', '322', '崇州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2747', '322', '金堂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2748', '322', '双流县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2749', '322', '郫县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2750', '322', '大邑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2751', '322', '蒲江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2752', '322', '新津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2753', '323', '涪城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2754', '323', '游仙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2755', '323', '江油市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2756', '323', '盐亭县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2757', '323', '三台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2758', '323', '平武县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2759', '323', '安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2760', '323', '梓潼县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2761', '323', '北川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2762', '324', '马尔康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2763', '324', '汶川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2764', '324', '理县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2765', '324', '茂县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2766', '324', '松潘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2767', '324', '九寨沟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2768', '324', '金川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2769', '324', '小金县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2770', '324', '黑水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2771', '324', '壤塘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2772', '324', '阿坝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2773', '324', '若尔盖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2774', '324', '红原县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2775', '325', '巴州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2776', '325', '通江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2777', '325', '南江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2778', '325', '平昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2779', '326', '通川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2780', '326', '万源市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2781', '326', '达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2782', '326', '宣汉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2783', '326', '开江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2784', '326', '大竹县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2785', '326', '渠县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2786', '327', '旌阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2787', '327', '广汉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2788', '327', '什邡市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2789', '327', '绵竹市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2790', '327', '罗江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2791', '327', '中江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2792', '328', '康定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2793', '328', '丹巴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2794', '328', '泸定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2795', '328', '炉霍县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2796', '328', '九龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2797', '328', '甘孜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2798', '328', '雅江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2799', '328', '新龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2800', '328', '道孚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2801', '328', '白玉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2802', '328', '理塘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2803', '328', '德格县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2804', '328', '乡城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2805', '328', '石渠县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2806', '328', '稻城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2807', '328', '色达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2808', '328', '巴塘县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2809', '328', '得荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2810', '329', '广安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2811', '329', '华蓥市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2812', '329', '岳池县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2813', '329', '武胜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2814', '329', '邻水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2815', '330', '利州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2816', '330', '元坝区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2817', '330', '朝天区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2818', '330', '旺苍县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2819', '330', '青川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2820', '330', '剑阁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2821', '330', '苍溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2822', '331', '峨眉山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2823', '331', '乐山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2824', '331', '犍为县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2825', '331', '井研县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2826', '331', '夹江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2827', '331', '沐川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2828', '331', '峨边', '3', '0');
INSERT INTO `ecs_region` VALUES ('2829', '331', '马边', '3', '0');
INSERT INTO `ecs_region` VALUES ('2830', '332', '西昌市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2831', '332', '盐源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2832', '332', '德昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2833', '332', '会理县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2834', '332', '会东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2835', '332', '宁南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2836', '332', '普格县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2837', '332', '布拖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2838', '332', '金阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2839', '332', '昭觉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2840', '332', '喜德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2841', '332', '冕宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2842', '332', '越西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2843', '332', '甘洛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2844', '332', '美姑县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2845', '332', '雷波县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2846', '332', '木里', '3', '0');
INSERT INTO `ecs_region` VALUES ('2847', '333', '东坡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2848', '333', '仁寿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2849', '333', '彭山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2850', '333', '洪雅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2851', '333', '丹棱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2852', '333', '青神县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2853', '334', '阆中市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2854', '334', '南部县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2855', '334', '营山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2856', '334', '蓬安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2857', '334', '仪陇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2858', '334', '顺庆区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2859', '334', '高坪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2860', '334', '嘉陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2861', '334', '西充县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2862', '335', '市中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2863', '335', '东兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2864', '335', '威远县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2865', '335', '资中县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2866', '335', '隆昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2867', '336', '东  区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2868', '336', '西  区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2869', '336', '仁和区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2870', '336', '米易县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2871', '336', '盐边县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2872', '337', '船山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2873', '337', '安居区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2874', '337', '蓬溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2875', '337', '射洪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2876', '337', '大英县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2877', '338', '雨城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2878', '338', '名山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2879', '338', '荥经县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2880', '338', '汉源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2881', '338', '石棉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2882', '338', '天全县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2883', '338', '芦山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2884', '338', '宝兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2885', '339', '翠屏区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2886', '339', '宜宾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2887', '339', '南溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2888', '339', '江安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2889', '339', '长宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2890', '339', '高县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2891', '339', '珙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2892', '339', '筠连县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2893', '339', '兴文县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2894', '339', '屏山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2895', '340', '雁江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2896', '340', '简阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2897', '340', '安岳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2898', '340', '乐至县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2899', '341', '大安区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2900', '341', '自流井区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2901', '341', '贡井区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2902', '341', '沿滩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2903', '341', '荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2904', '341', '富顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2905', '342', '江阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2906', '342', '纳溪区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2907', '342', '龙马潭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2908', '342', '泸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2909', '342', '合江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2910', '342', '叙永县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2911', '342', '古蔺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2912', '343', '和平区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2913', '343', '河西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2914', '343', '南开区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2915', '343', '河北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2916', '343', '河东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2917', '343', '红桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2918', '343', '东丽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2919', '343', '津南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2920', '343', '西青区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2921', '343', '北辰区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2922', '343', '塘沽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2923', '343', '汉沽区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2924', '343', '大港区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2925', '343', '武清区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2926', '343', '宝坻区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2927', '343', '经济开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2928', '343', '宁河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2929', '343', '静海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2930', '343', '蓟县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2931', '344', '城关区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2932', '344', '林周县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2933', '344', '当雄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2934', '344', '尼木县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2935', '344', '曲水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2936', '344', '堆龙德庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2937', '344', '达孜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2938', '344', '墨竹工卡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2939', '345', '噶尔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2940', '345', '普兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2941', '345', '札达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2942', '345', '日土县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2943', '345', '革吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2944', '345', '改则县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2945', '345', '措勤县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2946', '346', '昌都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2947', '346', '江达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2948', '346', '贡觉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2949', '346', '类乌齐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2950', '346', '丁青县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2951', '346', '察雅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2952', '346', '八宿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2953', '346', '左贡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2954', '346', '芒康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2955', '346', '洛隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2956', '346', '边坝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2957', '347', '林芝县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2958', '347', '工布江达县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2959', '347', '米林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2960', '347', '墨脱县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2961', '347', '波密县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2962', '347', '察隅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2963', '347', '朗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2964', '348', '那曲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2965', '348', '嘉黎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2966', '348', '比如县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2967', '348', '聂荣县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2968', '348', '安多县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2969', '348', '申扎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2970', '348', '索县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2971', '348', '班戈县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2972', '348', '巴青县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2973', '348', '尼玛县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2974', '349', '日喀则市', '3', '0');
INSERT INTO `ecs_region` VALUES ('2975', '349', '南木林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2976', '349', '江孜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2977', '349', '定日县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2978', '349', '萨迦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2979', '349', '拉孜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2980', '349', '昂仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2981', '349', '谢通门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2982', '349', '白朗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2983', '349', '仁布县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2984', '349', '康马县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2985', '349', '定结县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2986', '349', '仲巴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2987', '349', '亚东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2988', '349', '吉隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2989', '349', '聂拉木县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2990', '349', '萨嘎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2991', '349', '岗巴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2992', '350', '乃东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2993', '350', '扎囊县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2994', '350', '贡嘎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2995', '350', '桑日县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2996', '350', '琼结县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2997', '350', '曲松县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2998', '350', '措美县', '3', '0');
INSERT INTO `ecs_region` VALUES ('2999', '350', '洛扎县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3000', '350', '加查县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3001', '350', '隆子县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3002', '350', '错那县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3003', '350', '浪卡子县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3004', '351', '天山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3005', '351', '沙依巴克区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3006', '351', '新市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3007', '351', '水磨沟区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3008', '351', '头屯河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3009', '351', '达坂城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3010', '351', '米东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3011', '351', '乌鲁木齐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3012', '352', '阿克苏市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3013', '352', '温宿县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3014', '352', '库车县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3015', '352', '沙雅县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3016', '352', '新和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3017', '352', '拜城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3018', '352', '乌什县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3019', '352', '阿瓦提县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3020', '352', '柯坪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3021', '353', '阿拉尔市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3022', '354', '库尔勒市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3023', '354', '轮台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3024', '354', '尉犁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3025', '354', '若羌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3026', '354', '且末县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3027', '354', '焉耆', '3', '0');
INSERT INTO `ecs_region` VALUES ('3028', '354', '和静县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3029', '354', '和硕县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3030', '354', '博湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3031', '355', '博乐市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3032', '355', '精河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3033', '355', '温泉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3034', '356', '呼图壁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3035', '356', '米泉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3036', '356', '昌吉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3037', '356', '阜康市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3038', '356', '玛纳斯县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3039', '356', '奇台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3040', '356', '吉木萨尔县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3041', '356', '木垒', '3', '0');
INSERT INTO `ecs_region` VALUES ('3042', '357', '哈密市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3043', '357', '伊吾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3044', '357', '巴里坤', '3', '0');
INSERT INTO `ecs_region` VALUES ('3045', '358', '和田市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3046', '358', '和田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3047', '358', '墨玉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3048', '358', '皮山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3049', '358', '洛浦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3050', '358', '策勒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3051', '358', '于田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3052', '358', '民丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3053', '359', '喀什市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3054', '359', '疏附县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3055', '359', '疏勒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3056', '359', '英吉沙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3057', '359', '泽普县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3058', '359', '莎车县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3059', '359', '叶城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3060', '359', '麦盖提县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3061', '359', '岳普湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3062', '359', '伽师县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3063', '359', '巴楚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3064', '359', '塔什库尔干', '3', '0');
INSERT INTO `ecs_region` VALUES ('3065', '360', '克拉玛依市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3066', '361', '阿图什市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3067', '361', '阿克陶县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3068', '361', '阿合奇县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3069', '361', '乌恰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3070', '362', '石河子市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3071', '363', '图木舒克市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3072', '364', '吐鲁番市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3073', '364', '鄯善县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3074', '364', '托克逊县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3075', '365', '五家渠市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3076', '366', '阿勒泰市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3077', '366', '布克赛尔', '3', '0');
INSERT INTO `ecs_region` VALUES ('3078', '366', '伊宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3079', '366', '布尔津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3080', '366', '奎屯市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3081', '366', '乌苏市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3082', '366', '额敏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3083', '366', '富蕴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3084', '366', '伊宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3085', '366', '福海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3086', '366', '霍城县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3087', '366', '沙湾县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3088', '366', '巩留县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3089', '366', '哈巴河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3090', '366', '托里县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3091', '366', '青河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3092', '366', '新源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3093', '366', '裕民县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3094', '366', '和布克赛尔', '3', '0');
INSERT INTO `ecs_region` VALUES ('3095', '366', '吉木乃县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3096', '366', '昭苏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3097', '366', '特克斯县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3098', '366', '尼勒克县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3099', '366', '察布查尔', '3', '0');
INSERT INTO `ecs_region` VALUES ('3100', '367', '盘龙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3101', '367', '五华区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3102', '367', '官渡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3103', '367', '西山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3104', '367', '东川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3105', '367', '安宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3106', '367', '呈贡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3107', '367', '晋宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3108', '367', '富民县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3109', '367', '宜良县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3110', '367', '嵩明县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3111', '367', '石林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3112', '367', '禄劝', '3', '0');
INSERT INTO `ecs_region` VALUES ('3113', '367', '寻甸', '3', '0');
INSERT INTO `ecs_region` VALUES ('3114', '368', '兰坪', '3', '0');
INSERT INTO `ecs_region` VALUES ('3115', '368', '泸水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3116', '368', '福贡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3117', '368', '贡山', '3', '0');
INSERT INTO `ecs_region` VALUES ('3118', '369', '宁洱', '3', '0');
INSERT INTO `ecs_region` VALUES ('3119', '369', '思茅区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3120', '369', '墨江', '3', '0');
INSERT INTO `ecs_region` VALUES ('3121', '369', '景东', '3', '0');
INSERT INTO `ecs_region` VALUES ('3122', '369', '景谷', '3', '0');
INSERT INTO `ecs_region` VALUES ('3123', '369', '镇沅', '3', '0');
INSERT INTO `ecs_region` VALUES ('3124', '369', '江城', '3', '0');
INSERT INTO `ecs_region` VALUES ('3125', '369', '孟连', '3', '0');
INSERT INTO `ecs_region` VALUES ('3126', '369', '澜沧', '3', '0');
INSERT INTO `ecs_region` VALUES ('3127', '369', '西盟', '3', '0');
INSERT INTO `ecs_region` VALUES ('3128', '370', '古城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3129', '370', '宁蒗', '3', '0');
INSERT INTO `ecs_region` VALUES ('3130', '370', '玉龙', '3', '0');
INSERT INTO `ecs_region` VALUES ('3131', '370', '永胜县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3132', '370', '华坪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3133', '371', '隆阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3134', '371', '施甸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3135', '371', '腾冲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3136', '371', '龙陵县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3137', '371', '昌宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3138', '372', '楚雄市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3139', '372', '双柏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3140', '372', '牟定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3141', '372', '南华县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3142', '372', '姚安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3143', '372', '大姚县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3144', '372', '永仁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3145', '372', '元谋县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3146', '372', '武定县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3147', '372', '禄丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3148', '373', '大理市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3149', '373', '祥云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3150', '373', '宾川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3151', '373', '弥渡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3152', '373', '永平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3153', '373', '云龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3154', '373', '洱源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3155', '373', '剑川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3156', '373', '鹤庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3157', '373', '漾濞', '3', '0');
INSERT INTO `ecs_region` VALUES ('3158', '373', '南涧', '3', '0');
INSERT INTO `ecs_region` VALUES ('3159', '373', '巍山', '3', '0');
INSERT INTO `ecs_region` VALUES ('3160', '374', '潞西市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3161', '374', '瑞丽市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3162', '374', '梁河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3163', '374', '盈江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3164', '374', '陇川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3165', '375', '香格里拉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3166', '375', '德钦县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3167', '375', '维西', '3', '0');
INSERT INTO `ecs_region` VALUES ('3168', '376', '泸西县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3169', '376', '蒙自县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3170', '376', '个旧市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3171', '376', '开远市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3172', '376', '绿春县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3173', '376', '建水县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3174', '376', '石屏县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3175', '376', '弥勒县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3176', '376', '元阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3177', '376', '红河县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3178', '376', '金平', '3', '0');
INSERT INTO `ecs_region` VALUES ('3179', '376', '河口', '3', '0');
INSERT INTO `ecs_region` VALUES ('3180', '376', '屏边', '3', '0');
INSERT INTO `ecs_region` VALUES ('3181', '377', '临翔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3182', '377', '凤庆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3183', '377', '云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3184', '377', '永德县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3185', '377', '镇康县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3186', '377', '双江', '3', '0');
INSERT INTO `ecs_region` VALUES ('3187', '377', '耿马', '3', '0');
INSERT INTO `ecs_region` VALUES ('3188', '377', '沧源', '3', '0');
INSERT INTO `ecs_region` VALUES ('3189', '378', '麒麟区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3190', '378', '宣威市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3191', '378', '马龙县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3192', '378', '陆良县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3193', '378', '师宗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3194', '378', '罗平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3195', '378', '富源县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3196', '378', '会泽县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3197', '378', '沾益县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3198', '379', '文山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3199', '379', '砚山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3200', '379', '西畴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3201', '379', '麻栗坡县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3202', '379', '马关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3203', '379', '丘北县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3204', '379', '广南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3205', '379', '富宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3206', '380', '景洪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3207', '380', '勐海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3208', '380', '勐腊县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3209', '381', '红塔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3210', '381', '江川县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3211', '381', '澄江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3212', '381', '通海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3213', '381', '华宁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3214', '381', '易门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3215', '381', '峨山', '3', '0');
INSERT INTO `ecs_region` VALUES ('3216', '381', '新平', '3', '0');
INSERT INTO `ecs_region` VALUES ('3217', '381', '元江', '3', '0');
INSERT INTO `ecs_region` VALUES ('3218', '382', '昭阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3219', '382', '鲁甸县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3220', '382', '巧家县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3221', '382', '盐津县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3222', '382', '大关县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3223', '382', '永善县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3224', '382', '绥江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3225', '382', '镇雄县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3226', '382', '彝良县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3227', '382', '威信县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3228', '382', '水富县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3229', '383', '西湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3230', '383', '上城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3231', '383', '下城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3232', '383', '拱墅区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3233', '383', '滨江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3234', '383', '江干区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3235', '383', '萧山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3236', '383', '余杭区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3237', '383', '市郊', '3', '0');
INSERT INTO `ecs_region` VALUES ('3238', '383', '建德市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3239', '383', '富阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3240', '383', '临安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3241', '383', '桐庐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3242', '383', '淳安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3243', '384', '吴兴区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3244', '384', '南浔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3245', '384', '德清县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3246', '384', '长兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3247', '384', '安吉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3248', '385', '南湖区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3249', '385', '秀洲区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3250', '385', '海宁市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3251', '385', '嘉善县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3252', '385', '平湖市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3253', '385', '桐乡市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3254', '385', '海盐县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3255', '386', '婺城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3256', '386', '金东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3257', '386', '兰溪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3258', '386', '市区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3259', '386', '佛堂镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3260', '386', '上溪镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3261', '386', '义亭镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3262', '386', '大陈镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3263', '386', '苏溪镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3264', '386', '赤岸镇', '3', '0');
INSERT INTO `ecs_region` VALUES ('3265', '386', '东阳市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3266', '386', '永康市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3267', '386', '武义县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3268', '386', '浦江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3269', '386', '磐安县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3270', '387', '莲都区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3271', '387', '龙泉市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3272', '387', '青田县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3273', '387', '缙云县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3274', '387', '遂昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3275', '387', '松阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3276', '387', '云和县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3277', '387', '庆元县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3278', '387', '景宁', '3', '0');
INSERT INTO `ecs_region` VALUES ('3279', '388', '海曙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3280', '388', '江东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3281', '388', '江北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3282', '388', '镇海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3283', '388', '北仑区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3284', '388', '鄞州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3285', '388', '余姚市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3286', '388', '慈溪市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3287', '388', '奉化市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3288', '388', '象山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3289', '388', '宁海县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3290', '389', '越城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3291', '389', '上虞市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3292', '389', '嵊州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3293', '389', '绍兴县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3294', '389', '新昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3295', '389', '诸暨市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3296', '390', '椒江区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3297', '390', '黄岩区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3298', '390', '路桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3299', '390', '温岭市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3300', '390', '临海市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3301', '390', '玉环县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3302', '390', '三门县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3303', '390', '天台县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3304', '390', '仙居县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3305', '391', '鹿城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3306', '391', '龙湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3307', '391', '瓯海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3308', '391', '瑞安市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3309', '391', '乐清市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3310', '391', '洞头县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3311', '391', '永嘉县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3312', '391', '平阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3313', '391', '苍南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3314', '391', '文成县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3315', '391', '泰顺县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3316', '392', '定海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3317', '392', '普陀区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3318', '392', '岱山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3319', '392', '嵊泗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3320', '393', '衢州市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3321', '393', '江山市', '3', '0');
INSERT INTO `ecs_region` VALUES ('3322', '393', '常山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3323', '393', '开化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3324', '393', '龙游县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3325', '394', '合川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3326', '394', '江津区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3327', '394', '南川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3328', '394', '永川区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3329', '394', '南岸区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3330', '394', '渝北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3331', '394', '万盛区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3332', '394', '大渡口区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3333', '394', '万州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3334', '394', '北碚区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3335', '394', '沙坪坝区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3336', '394', '巴南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3337', '394', '涪陵区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3338', '394', '江北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3339', '394', '九龙坡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3340', '394', '渝中区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3341', '394', '黔江开发区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3342', '394', '长寿区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3343', '394', '双桥区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3344', '394', '綦江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3345', '394', '潼南县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3346', '394', '铜梁县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3347', '394', '大足县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3348', '394', '荣昌县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3349', '394', '璧山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3350', '394', '垫江县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3351', '394', '武隆县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3352', '394', '丰都县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3353', '394', '城口县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3354', '394', '梁平县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3355', '394', '开县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3356', '394', '巫溪县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3357', '394', '巫山县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3358', '394', '奉节县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3359', '394', '云阳县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3360', '394', '忠县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3361', '394', '石柱', '3', '0');
INSERT INTO `ecs_region` VALUES ('3362', '394', '彭水', '3', '0');
INSERT INTO `ecs_region` VALUES ('3363', '394', '酉阳', '3', '0');
INSERT INTO `ecs_region` VALUES ('3364', '394', '秀山', '3', '0');
INSERT INTO `ecs_region` VALUES ('3365', '395', '沙田区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3366', '395', '东区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3367', '395', '观塘区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3368', '395', '黄大仙区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3369', '395', '九龙城区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3370', '395', '屯门区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3371', '395', '葵青区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3372', '395', '元朗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3373', '395', '深水埗区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3374', '395', '西贡区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3375', '395', '大埔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3376', '395', '湾仔区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3377', '395', '油尖旺区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3378', '395', '北区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3379', '395', '南区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3380', '395', '荃湾区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3381', '395', '中西区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3382', '395', '离岛区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3383', '396', '澳门', '3', '0');
INSERT INTO `ecs_region` VALUES ('3384', '397', '台北', '3', '0');
INSERT INTO `ecs_region` VALUES ('3385', '397', '高雄', '3', '0');
INSERT INTO `ecs_region` VALUES ('3386', '397', '基隆', '3', '0');
INSERT INTO `ecs_region` VALUES ('3387', '397', '台中', '3', '0');
INSERT INTO `ecs_region` VALUES ('3388', '397', '台南', '3', '0');
INSERT INTO `ecs_region` VALUES ('3389', '397', '新竹', '3', '0');
INSERT INTO `ecs_region` VALUES ('3390', '397', '嘉义', '3', '0');
INSERT INTO `ecs_region` VALUES ('3391', '397', '宜兰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3392', '397', '桃园县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3393', '397', '苗栗县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3394', '397', '彰化县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3395', '397', '南投县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3396', '397', '云林县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3397', '397', '屏东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3398', '397', '台东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3399', '397', '花莲县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3400', '397', '澎湖县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3401', '3', '合肥', '2', '0');
INSERT INTO `ecs_region` VALUES ('3402', '3401', '庐阳区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3403', '3401', '瑶海区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3404', '3401', '蜀山区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3405', '3401', '包河区', '3', '0');
INSERT INTO `ecs_region` VALUES ('3406', '3401', '长丰县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3407', '3401', '肥东县', '3', '0');
INSERT INTO `ecs_region` VALUES ('3408', '3401', '肥西县', '3', '0');

-- ----------------------------
-- Table structure for `ecs_reg_extend_info`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_reg_extend_info`;
CREATE TABLE `ecs_reg_extend_info` (
  `Id` int(10) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL,
  `reg_field_id` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_reg_extend_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_reg_fields`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_reg_fields`;
CREATE TABLE `ecs_reg_fields` (
  `id` tinyint(3) unsigned NOT NULL auto_increment,
  `reg_field_name` varchar(60) NOT NULL,
  `dis_order` tinyint(3) unsigned NOT NULL default '100',
  `display` tinyint(1) unsigned NOT NULL default '1',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `is_need` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_reg_fields
-- ----------------------------
INSERT INTO `ecs_reg_fields` VALUES ('1', 'MSN', '0', '1', '1', '1');
INSERT INTO `ecs_reg_fields` VALUES ('2', 'QQ', '0', '1', '1', '1');
INSERT INTO `ecs_reg_fields` VALUES ('3', '办公电话', '0', '1', '1', '1');
INSERT INTO `ecs_reg_fields` VALUES ('4', '家庭电话', '0', '1', '1', '1');
INSERT INTO `ecs_reg_fields` VALUES ('5', '手机', '0', '1', '1', '1');
INSERT INTO `ecs_reg_fields` VALUES ('6', '密码找回问题', '0', '1', '1', '1');

-- ----------------------------
-- Table structure for `ecs_role`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_role`;
CREATE TABLE `ecs_role` (
  `role_id` smallint(5) unsigned NOT NULL auto_increment,
  `role_name` varchar(60) NOT NULL default '',
  `action_list` text NOT NULL,
  `role_describe` text,
  PRIMARY KEY  (`role_id`),
  KEY `user_name` (`role_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_role
-- ----------------------------
INSERT INTO `ecs_role` VALUES ('1', '代理', 'order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view', '公司产品代理');

-- ----------------------------
-- Table structure for `ecs_searchengine`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_searchengine`;
CREATE TABLE `ecs_searchengine` (
  `date` date NOT NULL default '0000-00-00',
  `searchengine` varchar(20) NOT NULL default '',
  `count` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`date`,`searchengine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_searchengine
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_sessions`;
CREATE TABLE `ecs_sessions` (
  `sesskey` char(32) character set utf8 collate utf8_bin NOT NULL default '',
  `expiry` int(10) unsigned NOT NULL default '0',
  `userid` mediumint(8) unsigned NOT NULL default '0',
  `adminid` mediumint(8) unsigned NOT NULL default '0',
  `ip` char(15) NOT NULL default '',
  `user_name` varchar(60) NOT NULL,
  `user_rank` tinyint(3) NOT NULL,
  `discount` decimal(3,2) NOT NULL,
  `email` varchar(60) NOT NULL,
  `data` char(255) NOT NULL default '',
  PRIMARY KEY  (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_sessions
-- ----------------------------
INSERT INTO `ecs_sessions` VALUES ('3b1fe44836ed2d682dd8242b276feecf', '1462986368', '0', '0', '127.0.0.1', '0', '0', '1.00', '0', 'a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;}');
INSERT INTO `ecs_sessions` VALUES ('40ad1b79ff3fe6dff9b0408b9062386f', '1462985246', '0', '0', '127.0.0.1', '0', '0', '0.00', '0', 'a:0:{}');

-- ----------------------------
-- Table structure for `ecs_sessions_data`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_sessions_data`;
CREATE TABLE `ecs_sessions_data` (
  `sesskey` varchar(32) character set utf8 collate utf8_bin NOT NULL default '',
  `expiry` int(10) unsigned NOT NULL default '0',
  `data` longtext NOT NULL,
  PRIMARY KEY  (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_sessions_data
-- ----------------------------
INSERT INTO `ecs_sessions_data` VALUES ('82597fffd0a2a79cd5ac56be2ae5eaf0', '2924745488', 'a:7:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:9:\"flow_type\";i:0;s:15:\"direct_shopping\";i:1;s:14:\"flow_consignee\";a:13:{s:10:\"address_id\";i:0;s:9:\"consignee\";s:10:\"KingDragon\";s:7:\"country\";s:1:\"1\";s:8:\"province\";s:1:\"2\";s:4:\"city\";s:2:\"52\";s:8:\"district\";s:3:\"509\";s:5:\"email\";s:19:\"13810332931@163.com\";s:7:\"address\";s:1:\"1\";s:7:\"zipcode\";s:6:\"100048\";s:3:\"tel\";s:11:\"13810332931\";s:6:\"mobile\";s:11:\"13810332931\";s:13:\"sign_building\";s:7:\"dsgsfgs\";s:9:\"best_time\";s:7:\"12：00\";}s:10:\"flow_order\";a:8:{s:14:\"extension_code\";s:0:\"\";s:11:\"shipping_id\";i:0;s:6:\"pay_id\";i:0;s:7:\"pack_id\";i:0;s:7:\"card_id\";i:0;s:5:\"bonus\";i:0;s:8:\"integral\";i:0;s:7:\"surplus\";i:0;}}');

-- ----------------------------
-- Table structure for `ecs_shipping`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shipping`;
CREATE TABLE `ecs_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL auto_increment,
  `shipping_code` varchar(20) NOT NULL default '',
  `shipping_name` varchar(120) NOT NULL default '',
  `shipping_desc` varchar(255) NOT NULL default '',
  `insure` varchar(10) NOT NULL default '0',
  `support_cod` tinyint(1) unsigned NOT NULL default '0',
  `enabled` tinyint(1) unsigned NOT NULL default '0',
  `shipping_print` text NOT NULL,
  `print_bg` varchar(255) default NULL,
  `config_lable` text,
  `print_model` tinyint(1) default '0',
  `shipping_order` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`shipping_id`),
  KEY `shipping_code` (`shipping_code`,`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_shipping
-- ----------------------------
INSERT INTO `ecs_shipping` VALUES ('1', 'ems', 'EMS 国内邮政特快专递', 'EMS 国内邮政特快专递描述内容', '0', '0', '1', '', '/images/receipt/dly_ems.jpg', 't_shop_name,网店-名称,236,32,182,161,b_shop_name||,||t_shop_tel,网店-联系电话,127,21,295,135,b_shop_tel||,||t_shop_address,网店-地址,296,68,124,190,b_shop_address||,||t_pigeon,√-对号,21,21,192,278,b_pigeon||,||t_customer_name,收件人-姓名,107,23,494,136,b_customer_name||,||t_customer_tel,收件人-电话,155,21,639,124,b_customer_tel||,||t_customer_mobel,收件人-手机,159,21,639,147,b_customer_mobel||,||t_customer_post,收件人-邮编,88,21,680,258,b_customer_post||,||t_year,年-当日日期,37,21,534,379,b_year||,||t_months,月-当日日期,29,21,592,379,b_months||,||t_day,日-当日日期,27,21,642,380,b_day||,||t_order_best_time,送货时间-订单,104,39,688,359,b_order_best_time||,||t_order_postscript,备注-订单,305,34,485,402,b_order_postscript||,||t_customer_address,收件人-详细地址,289,48,503,190,b_customer_address||,||', '2', '0');

-- ----------------------------
-- Table structure for `ecs_shipping_area`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shipping_area`;
CREATE TABLE `ecs_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL auto_increment,
  `shipping_area_name` varchar(150) NOT NULL default '',
  `shipping_id` tinyint(3) unsigned NOT NULL default '0',
  `configure` text NOT NULL,
  PRIMARY KEY  (`shipping_area_id`),
  KEY `shipping_id` (`shipping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_shipping_area
-- ----------------------------
INSERT INTO `ecs_shipping_area` VALUES ('1', '全国', '1', 'a:5:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"20\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:1:\"0\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"0\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_weight\";}}');

-- ----------------------------
-- Table structure for `ecs_shop_config`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shop_config`;
CREATE TABLE `ecs_shop_config` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `parent_id` smallint(5) unsigned NOT NULL default '0',
  `code` varchar(30) NOT NULL default '',
  `type` varchar(10) NOT NULL default '',
  `store_range` varchar(255) NOT NULL default '',
  `store_dir` varchar(255) NOT NULL default '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=904 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_shop_config
-- ----------------------------
INSERT INTO `ecs_shop_config` VALUES ('1', '0', 'shop_info', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('2', '0', 'basic', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('3', '0', 'display', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('4', '0', 'shopping_flow', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('5', '0', 'smtp', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('6', '0', 'hidden', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('7', '0', 'goods', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('8', '0', 'sms', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('9', '0', 'wap', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('101', '1', 'shop_name', 'text', '', '', 'ECSHOP模板堂', '1');
INSERT INTO `ecs_shop_config` VALUES ('102', '1', 'shop_title', 'text', '', '', 'ECSHOP模板堂（www.ecmoban.com）专业ECSHOP模板制作 ECSHOP模板定制_ECSHOP模板修改_ECSHOP模板出售_ECSHOP模板案例', '1');
INSERT INTO `ecs_shop_config` VALUES ('103', '1', 'shop_desc', 'text', '', '', 'ECSHOP模板堂（www.ecmoban.com）专业ECSHOP模板制作 ECSHOP模板定制_ECSHOP模板修改_ECSHOP模板出售_ECSHOP模板案例', '1');
INSERT INTO `ecs_shop_config` VALUES ('104', '1', 'shop_keywords', 'text', '', '', 'ECSHOP模板堂（www.ecmoban.com）专业ECSHOP模板制作 ECSHOP模板定制_ECSHOP模板修改_ECSHOP模板出售_ECSHOP模板案例', '1');
INSERT INTO `ecs_shop_config` VALUES ('105', '1', 'shop_country', 'manual', '', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('106', '1', 'shop_province', 'manual', '', '', '2', '1');
INSERT INTO `ecs_shop_config` VALUES ('107', '1', 'shop_city', 'manual', '', '', '52', '1');
INSERT INTO `ecs_shop_config` VALUES ('108', '1', 'shop_address', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('109', '1', 'qq', 'text', '', '', '123456,234567', '1');
INSERT INTO `ecs_shop_config` VALUES ('110', '1', 'ww', 'text', '', '', '123456789', '1');
INSERT INTO `ecs_shop_config` VALUES ('111', '1', 'skype', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('112', '1', 'ym', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('113', '1', 'msn', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('114', '1', 'service_email', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('115', '1', 'service_phone', 'text', '', '', '400-000-000', '1');
INSERT INTO `ecs_shop_config` VALUES ('116', '1', 'shop_closed', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('117', '1', 'close_comment', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('118', '1', 'shop_logo', 'file', '', '../themes/{$template}/images/', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('119', '1', 'licensed', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('120', '1', 'user_notice', 'textarea', '', '', '用户中心公告！', '1');
INSERT INTO `ecs_shop_config` VALUES ('121', '1', 'shop_notice', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('122', '1', 'shop_reg_closed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('201', '2', 'lang', 'manual', '', '', 'zh_cn', '1');
INSERT INTO `ecs_shop_config` VALUES ('202', '2', 'icp_number', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('203', '2', 'icp_file', 'file', '', '../cert/', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('204', '2', 'watermark', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('205', '2', 'watermark_place', 'select', '0,1,2,3,4,5', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('206', '2', 'watermark_alpha', 'text', '', '', '65', '1');
INSERT INTO `ecs_shop_config` VALUES ('207', '2', 'use_storage', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('208', '2', 'market_price_rate', 'text', '', '', '1.2', '1');
INSERT INTO `ecs_shop_config` VALUES ('209', '2', 'rewrite', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('210', '2', 'integral_name', 'text', '', '', '积分', '1');
INSERT INTO `ecs_shop_config` VALUES ('211', '2', 'integral_scale', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('212', '2', 'integral_percent', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('213', '2', 'sn_prefix', 'text', '', '', 'ECS', '1');
INSERT INTO `ecs_shop_config` VALUES ('214', '2', 'comment_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('215', '2', 'no_picture', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('218', '2', 'stats_code', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('219', '2', 'cache_time', 'text', '', '', '3600', '1');
INSERT INTO `ecs_shop_config` VALUES ('220', '2', 'register_points', 'text', '', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('221', '2', 'enable_gzip', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('222', '2', 'top10_time', 'select', '0,1,2,3,4', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('223', '2', 'timezone', 'options', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', '1');
INSERT INTO `ecs_shop_config` VALUES ('224', '2', 'upload_size_limit', 'options', '-1,0,64,128,256,512,1024,2048,4096', '', '64', '1');
INSERT INTO `ecs_shop_config` VALUES ('226', '2', 'cron_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('227', '2', 'comment_factor', 'select', '0,1,2,3', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('228', '2', 'enable_order_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('229', '2', 'default_storage', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('230', '2', 'bgcolor', 'text', '', '', '#FFFFFF', '1');
INSERT INTO `ecs_shop_config` VALUES ('231', '2', 'visit_stats', 'select', 'on,off', '', 'on', '1');
INSERT INTO `ecs_shop_config` VALUES ('232', '2', 'send_mail_on', 'select', 'on,off', '', 'off', '1');
INSERT INTO `ecs_shop_config` VALUES ('233', '2', 'auto_generate_gallery', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('234', '2', 'retain_original_img', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('235', '2', 'member_email_validate', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('236', '2', 'message_board', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('239', '2', 'certificate_id', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('240', '2', 'token', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('241', '2', 'certi', 'hidden', '', '', 'http://service.shopex.cn/openapi/api.php', '1');
INSERT INTO `ecs_shop_config` VALUES ('242', '2', 'send_verify_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('243', '2', 'ent_id', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('244', '2', 'ent_ac', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('245', '2', 'ent_sign', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('246', '2', 'ent_email', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('301', '3', 'date_format', 'hidden', '', '', 'Y-m-d', '1');
INSERT INTO `ecs_shop_config` VALUES ('302', '3', 'time_format', 'text', '', '', 'Y-m-d H:i:s', '1');
INSERT INTO `ecs_shop_config` VALUES ('303', '3', 'currency_format', 'text', '', '', '￥%s元', '1');
INSERT INTO `ecs_shop_config` VALUES ('304', '3', 'thumb_width', 'text', '', '', '220', '1');
INSERT INTO `ecs_shop_config` VALUES ('305', '3', 'thumb_height', 'text', '', '', '220', '1');
INSERT INTO `ecs_shop_config` VALUES ('306', '3', 'image_width', 'text', '', '', '360', '1');
INSERT INTO `ecs_shop_config` VALUES ('307', '3', 'image_height', 'text', '', '', '360', '1');
INSERT INTO `ecs_shop_config` VALUES ('312', '3', 'top_number', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` VALUES ('313', '3', 'history_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` VALUES ('314', '3', 'comments_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` VALUES ('315', '3', 'bought_goods', 'text', '', '', '3', '1');
INSERT INTO `ecs_shop_config` VALUES ('316', '3', 'article_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` VALUES ('317', '3', 'goods_name_length', 'text', '', '', '7', '1');
INSERT INTO `ecs_shop_config` VALUES ('318', '3', 'price_format', 'select', '0,1,2,3,4,5', '', '5', '1');
INSERT INTO `ecs_shop_config` VALUES ('319', '3', 'page_size', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` VALUES ('320', '3', 'sort_order_type', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('321', '3', 'sort_order_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('322', '3', 'show_order_type', 'select', '0,1,2', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('323', '3', 'attr_related_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` VALUES ('324', '3', 'goods_gallery_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` VALUES ('325', '3', 'article_title_length', 'text', '', '', '16', '1');
INSERT INTO `ecs_shop_config` VALUES ('326', '3', 'name_of_region_1', 'text', '', '', '国家', '1');
INSERT INTO `ecs_shop_config` VALUES ('327', '3', 'name_of_region_2', 'text', '', '', '省', '1');
INSERT INTO `ecs_shop_config` VALUES ('328', '3', 'name_of_region_3', 'text', '', '', '市', '1');
INSERT INTO `ecs_shop_config` VALUES ('329', '3', 'name_of_region_4', 'text', '', '', '区', '1');
INSERT INTO `ecs_shop_config` VALUES ('330', '3', 'search_keywords', 'text', '', '', '', '0');
INSERT INTO `ecs_shop_config` VALUES ('332', '3', 'related_goods_number', 'text', '', '', '4', '1');
INSERT INTO `ecs_shop_config` VALUES ('333', '3', 'help_open', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('334', '3', 'article_page_size', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` VALUES ('335', '3', 'page_style', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('336', '3', 'recommend_order', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('337', '3', 'index_ad', 'hidden', '', '', 'sys', '1');
INSERT INTO `ecs_shop_config` VALUES ('401', '4', 'can_invoice', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('402', '4', 'use_integral', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('403', '4', 'use_bonus', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('404', '4', 'use_surplus', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('405', '4', 'use_how_oos', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('406', '4', 'send_confirm_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('407', '4', 'send_ship_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('408', '4', 'send_cancel_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('409', '4', 'send_invalid_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('410', '4', 'order_pay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('411', '4', 'order_unpay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('412', '4', 'order_ship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('413', '4', 'order_receive_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('414', '4', 'order_unship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('415', '4', 'order_return_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('416', '4', 'order_invalid_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('417', '4', 'order_cancel_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('418', '4', 'invoice_content', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('419', '4', 'anonymous_buy', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('420', '4', 'min_goods_amount', 'text', '', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('421', '4', 'one_step_buy', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('422', '4', 'invoice_type', 'manual', '', '', 'a:2:{s:4:\"type\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:0:\"\";}s:4:\"rate\";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}', '1');
INSERT INTO `ecs_shop_config` VALUES ('423', '4', 'stock_dec_time', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('424', '4', 'cart_confirm', 'options', '1,2,3,4', '', '3', '0');
INSERT INTO `ecs_shop_config` VALUES ('425', '4', 'send_service_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('426', '4', 'show_goods_in_cart', 'select', '1,2,3', '', '3', '1');
INSERT INTO `ecs_shop_config` VALUES ('427', '4', 'show_attr_in_cart', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('501', '5', 'smtp_host', 'text', '', '', 'localhost', '1');
INSERT INTO `ecs_shop_config` VALUES ('502', '5', 'smtp_port', 'text', '', '', '25', '1');
INSERT INTO `ecs_shop_config` VALUES ('503', '5', 'smtp_user', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('504', '5', 'smtp_pass', 'password', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('505', '5', 'smtp_mail', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('506', '5', 'mail_charset', 'select', 'UTF8,GB2312,BIG5', '', 'UTF8', '1');
INSERT INTO `ecs_shop_config` VALUES ('507', '5', 'mail_service', 'select', '0,1', '', '0', '0');
INSERT INTO `ecs_shop_config` VALUES ('508', '5', 'smtp_ssl', 'select', '0,1', '', '0', '0');
INSERT INTO `ecs_shop_config` VALUES ('601', '6', 'integrate_code', 'hidden', '', '', 'ecshop', '1');
INSERT INTO `ecs_shop_config` VALUES ('602', '6', 'integrate_config', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('603', '6', 'hash_code', 'hidden', '', '', '31693422540744c0a6b6da635b7a5a93', '1');
INSERT INTO `ecs_shop_config` VALUES ('604', '6', 'template', 'hidden', '', '', 'ecmoban_meilishuo', '1');
INSERT INTO `ecs_shop_config` VALUES ('605', '6', 'install_date', 'hidden', '', '', '1460538147', '1');
INSERT INTO `ecs_shop_config` VALUES ('606', '6', 'ecs_version', 'hidden', '', '', 'v2.7.3', '1');
INSERT INTO `ecs_shop_config` VALUES ('607', '6', 'sms_user_name', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('608', '6', 'sms_password', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('609', '6', 'sms_auth_str', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('610', '6', 'sms_domain', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('611', '6', 'sms_count', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('612', '6', 'sms_total_money', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('613', '6', 'sms_balance', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('614', '6', 'sms_last_request', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('616', '6', 'affiliate', 'hidden', '', '', 'a:3:{s:6:\"config\";a:7:{s:6:\"expire\";d:24;s:11:\"expire_unit\";s:4:\"hour\";s:11:\"separate_by\";i:0;s:15:\"level_point_all\";s:2:\"5%\";s:15:\"level_money_all\";s:2:\"1%\";s:18:\"level_register_all\";i:2;s:17:\"level_register_up\";i:60;}s:4:\"item\";a:4:{i:0;a:2:{s:11:\"level_point\";s:3:\"60%\";s:11:\"level_money\";s:3:\"60%\";}i:1;a:2:{s:11:\"level_point\";s:3:\"30%\";s:11:\"level_money\";s:3:\"30%\";}i:2;a:2:{s:11:\"level_point\";s:2:\"7%\";s:11:\"level_money\";s:2:\"7%\";}i:3;a:2:{s:11:\"level_point\";s:2:\"3%\";s:11:\"level_money\";s:2:\"3%\";}}s:2:\"on\";i:1;}', '1');
INSERT INTO `ecs_shop_config` VALUES ('617', '6', 'captcha', 'hidden', '', '', '12', '1');
INSERT INTO `ecs_shop_config` VALUES ('618', '6', 'captcha_width', 'hidden', '', '', '100', '1');
INSERT INTO `ecs_shop_config` VALUES ('619', '6', 'captcha_height', 'hidden', '', '', '20', '1');
INSERT INTO `ecs_shop_config` VALUES ('620', '6', 'sitemap', 'hidden', '', '', 'a:6:{s:19:\"homepage_changefreq\";s:6:\"hourly\";s:17:\"homepage_priority\";s:3:\"0.9\";s:19:\"category_changefreq\";s:6:\"hourly\";s:17:\"category_priority\";s:3:\"0.8\";s:18:\"content_changefreq\";s:6:\"weekly\";s:16:\"content_priority\";s:3:\"0.7\";}', '0');
INSERT INTO `ecs_shop_config` VALUES ('621', '6', 'points_rule', 'hidden', '', '', '', '0');
INSERT INTO `ecs_shop_config` VALUES ('622', '6', 'flash_theme', 'hidden', '', '', 'dynfocus', '1');
INSERT INTO `ecs_shop_config` VALUES ('623', '6', 'stylename', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('701', '7', 'show_goodssn', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('702', '7', 'show_brand', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('703', '7', 'show_goodsweight', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('704', '7', 'show_goodsnumber', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('705', '7', 'show_addtime', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('706', '7', 'goodsattr_style', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('707', '7', 'show_marketprice', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` VALUES ('801', '8', 'sms_shop_mobile', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('802', '8', 'sms_order_placed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('803', '8', 'sms_order_payed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('804', '8', 'sms_order_shipped', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('901', '9', 'wap_config', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` VALUES ('902', '9', 'wap_logo', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` VALUES ('903', '2', 'message_check', 'select', '1,0', '', '1', '1');

-- ----------------------------
-- Table structure for `ecs_snatch_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_snatch_log`;
CREATE TABLE `ecs_snatch_log` (
  `log_id` mediumint(8) unsigned NOT NULL auto_increment,
  `snatch_id` tinyint(3) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `bid_price` decimal(10,2) NOT NULL default '0.00',
  `bid_time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`log_id`),
  KEY `snatch_id` (`snatch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_snatch_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_stats`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_stats`;
CREATE TABLE `ecs_stats` (
  `access_time` int(10) unsigned NOT NULL default '0',
  `ip_address` varchar(15) NOT NULL default '',
  `visit_times` smallint(5) unsigned NOT NULL default '1',
  `browser` varchar(60) NOT NULL default '',
  `system` varchar(20) NOT NULL default '',
  `language` varchar(20) NOT NULL default '',
  `area` varchar(30) NOT NULL default '',
  `referer_domain` varchar(100) NOT NULL default '',
  `referer_path` varchar(200) NOT NULL default '',
  `access_url` varchar(255) NOT NULL default '',
  KEY `access_time` (`access_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_stats
-- ----------------------------
INSERT INTO `ecs_stats` VALUES ('1430070575', '127.0.0.1', '7', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/new3/install/index.php?lang=zh_cn&step=done', '/new3/index.php');
INSERT INTO `ecs_stats` VALUES ('1430074027', '127.0.0.1', '16', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/new3/index.php');
INSERT INTO `ecs_stats` VALUES ('1460530950', '127.0.0.1', '5', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://127.0.0.1', '/ecshop/install/index.php?lang=zh_cn&amp;step=done', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1460531417', '127.0.0.1', '6', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://127.0.0.1', '/', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1460531754', '127.0.0.1', '1', 'Safari 537.36', 'Windows NT', 'en-US', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1460533976', '127.0.0.1', '7', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1460589687', '127.0.0.1', '8', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://127.0.0.1', '/ecshop/admin/goods.php?act=list', '/ecshop/goods.php');
INSERT INTO `ecs_stats` VALUES ('1460775180', '127.0.0.1', '21', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://127.0.0.1', '/ecshop/category.php?id=21', '/ecshop/goods.php');
INSERT INTO `ecs_stats` VALUES ('1460776396', '127.0.0.1', '22', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1460777054', '127.0.0.1', '23', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1460857425', '127.0.0.1', '24', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1461033816', '127.0.0.1', '25', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1461135281', '127.0.0.1', '26', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1461149453', '127.0.0.1', '27', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1461120658', '127.0.0.1', '28', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ec/index.php');
INSERT INTO `ecs_stats` VALUES ('1461122774', '127.0.0.1', '29', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ec/index.php');
INSERT INTO `ecs_stats` VALUES ('1461123267', '127.0.0.1', '30', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1461571014', '127.0.0.1', '31', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1461631093', '127.0.0.1', '32', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1461633608', '127.0.0.1', '1', 'Unknow browser', 'Windows NT', 'en-US', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1461633618', '127.0.0.1', '2', 'Unknow browser', 'Windows NT', 'en-US', 'LAN', '', '', '/ecshop/activity.php');
INSERT INTO `ecs_stats` VALUES ('1461633643', '127.0.0.1', '33', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/activity.php');
INSERT INTO `ecs_stats` VALUES ('1461819222', '127.0.0.1', '34', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1461819222', '127.0.0.1', '34', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1461881769', '127.0.0.1', '35', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1461917326', '127.0.0.1', '36', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1462151596', '127.0.0.1', '37', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1462151596', '127.0.0.1', '37', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1462315078', '127.0.0.1', '38', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1462343767', '127.0.0.1', '89', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/list.php');
INSERT INTO `ecs_stats` VALUES ('1462395378', '127.0.0.1', '39', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1462399986', '127.0.0.1', '40', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://127.0.0.1', '/ecshop/album.php?id=510', '/ecshop/do.php');
INSERT INTO `ecs_stats` VALUES ('1462400614', '127.0.0.1', '2', 'Safari 537.36', 'Windows NT', 'en-US', 'LAN', '', '', '/ecshop/list.php');
INSERT INTO `ecs_stats` VALUES ('1462403060', '127.0.0.1', '41', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/do.php');
INSERT INTO `ecs_stats` VALUES ('1462421051', '127.0.0.1', '42', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://127.0.0.1', '/ecshop/admin/order.php?act=info&amp;order_id=12', '/ecshop/goods.php');
INSERT INTO `ecs_stats` VALUES ('1462587071', '127.0.0.1', '43', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1462589504', '127.0.0.1', '44', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/list.php');
INSERT INTO `ecs_stats` VALUES ('1462598554', '127.0.0.1', '44', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/list.php');
INSERT INTO `ecs_stats` VALUES ('1462601022', '127.0.0.1', '45', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/list.php');
INSERT INTO `ecs_stats` VALUES ('1462650057', '127.0.0.1', '46', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://127.0.0.1', '/ecshop/admin/template.php?act=show_image&amp;img_url=', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1462690038', '127.0.0.1', '47', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/list.php');
INSERT INTO `ecs_stats` VALUES ('1462694798', '127.0.0.1', '47', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/list.php');
INSERT INTO `ecs_stats` VALUES ('1462770369', '127.0.0.1', '48', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://127.0.0.1', '/ecshop/admin/order.php?act=info&amp;order_id=9', '/ecshop/goods.php');
INSERT INTO `ecs_stats` VALUES ('1462772446', '127.0.0.1', '49', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1462863653', '127.0.0.1', '50', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1462867685', '127.0.0.1', '51', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://127.0.0.1', '/ecshop/do.php?step=1&amp;album=254', '/ecshop/do.php');
INSERT INTO `ecs_stats` VALUES ('1462920293', '127.0.0.1', '52', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/list.php');
INSERT INTO `ecs_stats` VALUES ('1462924895', '127.0.0.1', '53', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/list.php');
INSERT INTO `ecs_stats` VALUES ('1462943936', '127.0.0.1', '54', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` VALUES ('1462957543', '127.0.0.1', '55', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');

-- ----------------------------
-- Table structure for `ecs_suppliers`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_suppliers`;
CREATE TABLE `ecs_suppliers` (
  `suppliers_id` smallint(5) unsigned NOT NULL auto_increment,
  `suppliers_name` varchar(255) default NULL,
  `suppliers_desc` mediumtext,
  `is_check` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (`suppliers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_suppliers
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_tag`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_tag`;
CREATE TABLE `ecs_tag` (
  `tag_id` mediumint(8) NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `tag_words` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`tag_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_template`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_template`;
CREATE TABLE `ecs_template` (
  `filename` varchar(30) NOT NULL default '',
  `region` varchar(40) NOT NULL default '',
  `library` varchar(40) NOT NULL default '',
  `sort_order` tinyint(1) unsigned NOT NULL default '0',
  `id` smallint(5) unsigned NOT NULL default '0',
  `number` tinyint(1) unsigned NOT NULL default '5',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `theme` varchar(60) NOT NULL default '',
  `remarks` varchar(30) NOT NULL default '',
  KEY `filename` (`filename`,`region`),
  KEY `theme` (`theme`),
  KEY `remarks` (`remarks`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_template
-- ----------------------------
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/vote_list.lbi', '8', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/email_list.lbi', '9', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/order_query.lbi', '6', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/cart.lbi', '0', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/promotion_info.lbi', '3', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/auction.lbi', '4', '0', '3', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/group_buy.lbi', '5', '0', '3', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/recommend_promotion.lbi', '0', '0', '4', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '右边主区域', '/library/recommend_hot.lbi', '2', '0', '10', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '右边主区域', '/library/recommend_new.lbi', '1', '0', '10', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '右边主区域', '/library/recommend_best.lbi', '0', '0', '10', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/invoice_query.lbi', '7', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/top10.lbi', '2', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/category_tree.lbi', '1', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/brands.lbi', '0', '0', '11', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '左边区域', '/library/category_tree.lbi', '1', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '右边区域', '/library/recommend_best.lbi', '0', '0', '5', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '右边区域', '/library/goods_list.lbi', '1', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '右边区域', '/library/pages.lbi', '2', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '左边区域', '/library/cart.lbi', '0', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '左边区域', '/library/price_grade.lbi', '3', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '左边区域', '/library/filter_attr.lbi', '2', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '商店公告下广告', '/library/ad_position.lbi', '0', '159', '1', '4', 'ecmoban_meilishuo', '');
INSERT INTO `ecs_template` VALUES ('index', '全宽行', '/library/cat_goods.lbi', '3', '21', '5', '1', 'ecmoban_meilishuo', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/brands.lbi', '0', '0', '3', '0', 'ecmoban_meilishuo', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/auction.lbi', '0', '0', '3', '0', 'ecmoban_meilishuo', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/group_buy.lbi', '0', '0', '3', '0', 'ecmoban_meilishuo', '');
INSERT INTO `ecs_template` VALUES ('index', '促销商品区域', '/library/recommend_promotion.lbi', '0', '0', '4', '0', 'ecmoban_meilishuo', '');
INSERT INTO `ecs_template` VALUES ('index', '全宽行', '/library/recommend_hot.lbi', '1', '0', '5', '0', 'ecmoban_meilishuo', '');
INSERT INTO `ecs_template` VALUES ('index', '全宽行', '/library/recommend_new.lbi', '0', '0', '5', '0', 'ecmoban_meilishuo', '');
INSERT INTO `ecs_template` VALUES ('index', '全宽行', '/library/recommend_best.lbi', '2', '0', '5', '0', 'ecmoban_meilishuo', '');
INSERT INTO `ecs_template` VALUES ('index', '商店公告', '/library/new_articles.lbi', '0', '0', '0', '0', 'ecmoban_meilishuo', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/vote_list.lbi', '8', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/email_list.lbi', '9', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/order_query.lbi', '6', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/cart.lbi', '0', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/promotion_info.lbi', '3', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/auction.lbi', '4', '0', '3', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/group_buy.lbi', '5', '0', '3', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/recommend_promotion.lbi', '0', '0', '4', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '右边主区域', '/library/recommend_hot.lbi', '2', '0', '10', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '右边主区域', '/library/recommend_new.lbi', '1', '0', '10', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '右边主区域', '/library/recommend_best.lbi', '0', '0', '10', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/invoice_query.lbi', '7', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/top10.lbi', '2', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/category_tree.lbi', '1', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/brands.lbi', '0', '0', '11', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '左边区域', '/library/category_tree.lbi', '1', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '右边区域', '/library/recommend_best.lbi', '0', '0', '5', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '右边区域', '/library/goods_list.lbi', '1', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '右边区域', '/library/pages.lbi', '2', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '左边区域', '/library/cart.lbi', '0', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '左边区域', '/library/price_grade.lbi', '3', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('category', '左边区域', '/library/filter_attr.lbi', '2', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` VALUES ('index', '商店公告下广告', '/library/ad_position.lbi', '0', '159', '1', '4', 'ecmoban_meilishuo', '');
INSERT INTO `ecs_template` VALUES ('index', '全宽行', '/library/cat_goods.lbi', '3', '21', '5', '1', 'ecmoban_meilishuo', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/brands.lbi', '0', '0', '3', '0', 'ecmoban_meilishuo', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/auction.lbi', '0', '0', '3', '0', 'ecmoban_meilishuo', '');
INSERT INTO `ecs_template` VALUES ('index', '', '/library/group_buy.lbi', '0', '0', '3', '0', 'ecmoban_meilishuo', '');
INSERT INTO `ecs_template` VALUES ('index', '促销商品区域', '/library/recommend_promotion.lbi', '0', '0', '4', '0', 'ecmoban_meilishuo', '');
INSERT INTO `ecs_template` VALUES ('index', '全宽行', '/library/recommend_hot.lbi', '1', '0', '5', '0', 'ecmoban_meilishuo', '');
INSERT INTO `ecs_template` VALUES ('index', '全宽行', '/library/recommend_new.lbi', '0', '0', '5', '0', 'ecmoban_meilishuo', '');
INSERT INTO `ecs_template` VALUES ('index', '全宽行', '/library/recommend_best.lbi', '2', '0', '5', '0', 'ecmoban_meilishuo', '');
INSERT INTO `ecs_template` VALUES ('index', '商店公告', '/library/new_articles.lbi', '0', '0', '0', '0', 'ecmoban_meilishuo', '');

-- ----------------------------
-- Table structure for `ecs_template_yzldiy`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_template_yzldiy`;
CREATE TABLE `ecs_template_yzldiy` (
  `id` int(11) NOT NULL auto_increment,
  `tid` varchar(20) default NULL,
  `info` text,
  `url` varchar(255) default NULL,
  `type` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_template_yzldiy
-- ----------------------------
INSERT INTO `ecs_template_yzldiy` VALUES ('1', '50001', null, './Uploads/yzldiy/template/00001.xml', '1');
INSERT INTO `ecs_template_yzldiy` VALUES ('2', '50002', null, './Uploads/yzldiy/template/00002.xml', '1');

-- ----------------------------
-- Table structure for `ecs_topic`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_topic`;
CREATE TABLE `ecs_topic` (
  `topic_id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '''''',
  `intro` text NOT NULL,
  `start_time` int(11) NOT NULL default '0',
  `end_time` int(10) NOT NULL default '0',
  `data` text NOT NULL,
  `template` varchar(255) NOT NULL default '''''',
  `css` text NOT NULL,
  `topic_img` varchar(255) default NULL,
  `title_pic` varchar(255) default NULL,
  `base_style` char(6) default NULL,
  `htmls` mediumtext,
  `keywords` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_topic
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_userproduct_yzldiy`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_userproduct_yzldiy`;
CREATE TABLE `ecs_userproduct_yzldiy` (
  `id` int(11) NOT NULL auto_increment,
  `pid` varchar(50) default NULL,
  `tid` varchar(50) default NULL,
  `type` varchar(15) default NULL,
  `preview` varchar(255) default NULL,
  `info` mediumtext,
  `mbDes` text,
  `pageCount` int(3) default NULL,
  `mbCode` varchar(50) default NULL,
  `name` varchar(20) default NULL,
  `retailprice` varchar(10) default NULL,
  `extraInfo` varchar(100) default NULL,
  `cartId` int(11) default NULL,
  `userId` int(11) default NULL,
  `status` tinyint(1) default '1',
  `goods_id` int(32) unsigned default NULL,
  `last_time` varchar(50) default NULL,
  `album_id` int(32) unsigned default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_userproduct_yzldiy
-- ----------------------------
INSERT INTO `ecs_userproduct_yzldiy` VALUES ('1', '60', '00002', '1', './Uploads/userProductPreview/0573bc5a0c665dac95fba7670bbf6fc2/0573bc5a0c665dac95fba7670bbf6fc2.jpg', '<pages printDpi=\"300\" version=\"1.0\" client=\"Windows 10;zh-CN;WIN 21,0,0,216;Google Pepper;PlugIn\">\n  <page width=\"5476\" height=\"3555\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/0.jpg\">\n    <background timeId=\"1269489065282\" x=\"0.00\" y=\"0.00\" width=\"5476.00\" height=\"3555.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xef8f88\"/>\n    <decorator timeId=\"14374467741392147903\" x=\"1228.25\" y=\"9.25\" width=\"4248.62\" height=\"3547.60\" fix=\"XY\" editable=\"0\" id=\"de1078036\" ext=\".png\"/>\n    <decorator timeId=\"14374467842892147907\" x=\"-3026.60\" y=\"-0.90\" width=\"4248.62\" height=\"3547.60\" fix=\"XY\" editable=\"0\" id=\"de1078036\" ext=\".png\"/>\n    <image timeId=\"14629635159197254216\" x=\"3247.47\" y=\"410.24\" width=\"1541.94\" height=\"2741.24\" rotation=\"359.78\" crc32=\"0\">\n      <photoid>1111</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/8950e42e94cf4c5b90383fc9951a43f2.jpg?ratio=0.56-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/8950e42e94cf4c5b90383fc9951a43f2.jpg?ratio=0.56</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/8950e42e94cf4c5b90383fc9951a43f2.jpg?ratio=0.56</b>\n      <crop>-193.4184175545438;0;1928.781649896869;2741.235226289389</crop>\n      <frame id=\"fr321859\">\n        <cornerLT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerLB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n      </frame>\n    </image>\n    <image timeId=\"14629635159247254218\" x=\"1112.52\" y=\"1135.77\" width=\"726.53\" height=\"1291.60\" rotation=\"359.78\" crc32=\"0\">\n      <photoid>1112</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/9cec85843baa43389c3524f2baafca6b.jpg?ratio=0.56-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/9cec85843baa43389c3524f2baafca6b.jpg?ratio=0.56</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/9cec85843baa43389c3524f2baafca6b.jpg?ratio=0.56</b>\n      <crop>-91.1341039481515;0;908.7954994018022;1291.6040737875542</crop>\n      <frame id=\"fr321859\">\n        <cornerLT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerLB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n      </frame>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/1.jpg\">\n    <background timeId=\"1269489065284\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\"\" color=\"0xf7f1df\"/>\n    <decorator timeId=\"14374467955302147909\" x=\"983.10\" y=\"3.00\" width=\"4074.95\" height=\"3402.59\" fix=\"XY\" editable=\"0\" id=\"de1077751\" ext=\".png\"/>\n    <decorator timeId=\"14374468083562147913\" x=\"-3044.65\" y=\"2.80\" width=\"4074.95\" height=\"3402.59\" fix=\"XY\" editable=\"0\" id=\"de1077751\" ext=\".png\"/>\n    <image timeId=\"14629635159287254220\" x=\"751.48\" y=\"142.60\" width=\"852.24\" height=\"1515.10\" crc32=\"0\">\n      <photoid>1113</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/bbd9b6ea47224c709a5943005a992110.jpg?ratio=0.56-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/bbd9b6ea47224c709a5943005a992110.jpg?ratio=0.56</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/bbd9b6ea47224c709a5943005a992110.jpg?ratio=0.56</b>\n      <crop>-189.38052499999998;0;1231.0048;1515.1</crop>\n    </image>\n    <image timeId=\"14629635159297254222\" x=\"1240.53\" y=\"1740.20\" width=\"852.24\" height=\"1515.10\" crc32=\"0\">\n      <photoid>1114</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/be5247c9b9b042859196d46a0bc4e790.jpg?ratio=0.56-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/be5247c9b9b042859196d46a0bc4e790.jpg?ratio=0.56</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/be5247c9b9b042859196d46a0bc4e790.jpg?ratio=0.56</b>\n      <crop>-189.38052499999998;0;1231.0048;1515.1</crop>\n    </image>\n    <image timeId=\"14629635159307254224\" x=\"2709.57\" y=\"-974.31\" width=\"2106.80\" height=\"3745.42\" crc32=\"0\">\n      <photoid>1115</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/9b5b77f0ab5c41d184ad5f0c4fff9759.jpg?ratio=0.56-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/9b5b77f0ab5c41d184ad5f0c4fff9759.jpg?ratio=0.56</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/9b5b77f0ab5c41d184ad5f0c4fff9759.jpg?ratio=0.56</b>\n      <crop>0;1171.406768670122;2106.799323553434;1402.607482310306</crop>\n    </image>\n    <image timeId=\"14629635159317254226\" x=\"2709.62\" y=\"631.49\" width=\"2106.80\" height=\"3745.42\" crc32=\"0\">\n      <photoid>1154</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d5261c38a97c4bcbb0a4b356e9dc4566.jpg?ratio=0.56-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d5261c38a97c4bcbb0a4b356e9dc4566.jpg?ratio=0.56</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d5261c38a97c4bcbb0a4b356e9dc4566.jpg?ratio=0.56</b>\n      <crop>0;1171.406768670122;2106.799323553434;1402.607482310306</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/2.jpg\">\n    <background timeId=\"1269489065286\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xe4f3fb\"/>\n    <decorator timeId=\"14374468473542147919\" x=\"-2.96\" y=\"3.77\" width=\"5054.09\" height=\"4220.16\" fix=\"XY\" editable=\"0\" id=\"de1077752\" ext=\".png\"/>\n    <image timeId=\"14629635159327254228\" x=\"120.10\" y=\"108.42\" width=\"2299.51\" height=\"1558.46\" crc32=\"0\">\n      <photoid>1194</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/f8824f0d9d174d7a8219639fe29c7f8a.jpg?ratio=1.48-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/f8824f0d9d174d7a8219639fe29c7f8a.jpg?ratio=1.48</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/f8824f0d9d174d7a8219639fe29c7f8a.jpg?ratio=1.48</b>\n      <crop>109.87849027291963;0;2079.7512173911928;1558.4557513362308</crop>\n    </image>\n    <image timeId=\"14629635159337254230\" x=\"94.70\" y=\"1743.47\" width=\"2350.31\" height=\"1558.46\" crc32=\"0\">\n      <photoid>1195</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/e34a51a900a84256b6c2275b30e49d28.jpg?ratio=1.51-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/e34a51a900a84256b6c2275b30e49d28.jpg?ratio=1.51</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/e34a51a900a84256b6c2275b30e49d28.jpg?ratio=1.51</b>\n      <crop>135.2780653605896;0;2079.7512173911928;1558.455751336231</crop>\n    </image>\n    <image timeId=\"14629635159347254232\" x=\"1180.88\" y=\"431.20\" width=\"5069.48\" height=\"2524.84\" crc32=\"0\">\n      <photoid>1196</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/c6ddef27015243438cae2e789055828f.jpg?ratio=2.01-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/c6ddef27015243438cae2e789055828f.jpg?ratio=2.01</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/c6ddef27015243438cae2e789055828f.jpg?ratio=2.01</b>\n      <crop>1587.924290896468;0;1893.6275643582203;2524.8367524776268</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/3.jpg\">\n    <background timeId=\"1269489065288\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xfadfeb\"/>\n    <decorator timeId=\"14374468805172147925\" x=\"2.50\" y=\"-1.65\" width=\"5051.49\" height=\"4217.99\" fix=\"XY\" editable=\"0\" id=\"de1077753\" ext=\".png\"/>\n    <image timeId=\"14629635159357254234\" x=\"303.80\" y=\"606.03\" width=\"1891.61\" height=\"2209.82\" crc32=\"0\">\n      <photoid>1201</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/7973178ec4134479b1805e0a3dc9bb60.jpg?ratio=0.86-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/7973178ec4134479b1805e0a3dc9bb60.jpg?ratio=0.86</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/7973178ec4134479b1805e0a3dc9bb60.jpg?ratio=0.86</b>\n      <crop>0;-156.16069742088098;1891.6069385699143;2522.142584759886</crop>\n    </image>\n    <image timeId=\"14629635159367254236\" x=\"2830.67\" y=\"230.58\" width=\"1890.19\" height=\"1516.55\" crc32=\"0\">\n      <photoid>1202</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/55daad8f3b2243e382d078f637a7d9c8.jpg?ratio=1.25-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/55daad8f3b2243e382d078f637a7d9c8.jpg?ratio=1.25</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/55daad8f3b2243e382d078f637a7d9c8.jpg?ratio=1.25</b>\n      <crop>0;104.28506170725063;1890.194545493155;1307.9813142486114</crop>\n    </image>\n    <image timeId=\"14629635159377254238\" x=\"2830.67\" y=\"1263.57\" width=\"1890.19\" height=\"2296.59\" crc32=\"0\">\n      <photoid>1203</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/7d56c1d49b8847ed9cf77f3524e1c2ab.jpg?ratio=0.82-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/7d56c1d49b8847ed9cf77f3524e1c2ab.jpg?ratio=0.82</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/7d56c1d49b8847ed9cf77f3524e1c2ab.jpg?ratio=0.82</b>\n      <crop>0;494.3025292627857;1890.1945454931547;1307.9813142486116</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/4.jpg\">\n    <background timeId=\"1269489065290\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xd8eace\"/>\n    <decorator timeId=\"14374469022932147931\" x=\"-5.76\" y=\"-1.65\" width=\"5056.97\" height=\"4222.57\" fix=\"XY\" editable=\"0\" id=\"de1077754\" ext=\".png\"/>\n    <image timeId=\"14629635159387254240\" x=\"183.15\" y=\"1025.14\" width=\"1231.00\" height=\"1390.42\" crc32=\"0\">\n      <photoid>1204</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/6b542e2d486649c28dc5d2cb72456e5a.jpg?ratio=0.89-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/6b542e2d486649c28dc5d2cb72456e5a.jpg?ratio=0.89</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/6b542e2d486649c28dc5d2cb72456e5a.jpg?ratio=0.89</b>\n      <crop>0;-126.19225323741;1231.0048;1642.8</crop>\n    </image>\n    <image timeId=\"14629635159397254242\" x=\"1194.61\" y=\"898.95\" width=\"1671.48\" height=\"1642.80\" crc32=\"0\">\n      <photoid>1205</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/93306501dae44eef95aaa0cc02f51884.jpg?ratio=1.02-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/93306501dae44eef95aaa0cc02f51884.jpg?ratio=1.02</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/93306501dae44eef95aaa0cc02f51884.jpg?ratio=1.02</b>\n      <crop>219.69190476190477;0;1232.1;1642.8</crop>\n    </image>\n    <image timeId=\"14629635159407254244\" x=\"2970.02\" y=\"372.91\" width=\"1349.76\" height=\"2662.41\" crc32=\"0\">\n      <photoid>1206</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/cc2784a4064d42b499db54f675884223.jpg?ratio=0.51-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/cc2784a4064d42b499db54f675884223.jpg?ratio=0.51</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/cc2784a4064d42b499db54f675884223.jpg?ratio=0.51</b>\n      <crop>-323.5211755647882;0;1996.804752442901;2662.4063365905326</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/5.jpg\">\n    <background timeId=\"1269489065292\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xc9a8ce\"/>\n    <decorator timeId=\"14374469148542147937\" x=\"3.75\" y=\"-1.65\" width=\"5043.83\" height=\"4211.60\" fix=\"XY\" editable=\"0\" id=\"de1077755\" ext=\".png\"/>\n    <image timeId=\"14629635159417254246\" x=\"790.45\" y=\"1019.90\" width=\"760.09\" height=\"2032.18\" crc32=\"0\">\n      <photoid>1207</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/7f2d6c56d8f5422e96100eddfa042a69.jpg?ratio=0.37-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/7f2d6c56d8f5422e96100eddfa042a69.jpg?ratio=0.37</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/7f2d6c56d8f5422e96100eddfa042a69.jpg?ratio=0.37</b>\n      <crop>-445.51942319606053;0;1651.1264480258562;2032.1786571457503</crop>\n    </image>\n    <image timeId=\"14629635159437254248\" x=\"1811.49\" y=\"1019.95\" width=\"3428.70\" height=\"2032.18\" crc32=\"0\">\n      <photoid>1502</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/1f7f64327d0842cba3560577fd84accf.jpg?ratio=1.69-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/1f7f64327d0842cba3560577fd84accf.jpg?ratio=1.69</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/1f7f64327d0842cba3560577fd84accf.jpg?ratio=1.69</b>\n      <crop>888.7865436266146;0;1651.1264480258562;2032.17865714575</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/6.jpg\">\n    <background timeId=\"1269489065294\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xbfe1d2\"/>\n    <decorator timeId=\"14374469296052147943\" x=\"-5.67\" y=\"3.00\" width=\"5060.06\" height=\"4225.15\" fix=\"XY\" editable=\"0\" id=\"de1077756\" ext=\".png\"/>\n    <image timeId=\"14629635159447254250\" x=\"222.13\" y=\"248.77\" width=\"2193.57\" height=\"1390.26\" crc32=\"0\">\n      <photoid>1503</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/c8b254132cbb4262a8d97cd01f108b2c.jpg?ratio=1.58-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/c8b254132cbb4262a8d97cd01f108b2c.jpg?ratio=1.58</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/c8b254132cbb4262a8d97cd01f108b2c.jpg?ratio=1.58</b>\n      <crop>134.08731629602414;0;1925.3915761027763;1390.2582709403723</crop>\n    </image>\n    <image timeId=\"14629635159457254252\" x=\"356.27\" y=\"1747.07\" width=\"1925.39\" height=\"1271.06\" crc32=\"0\">\n      <photoid>1552</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/68c68bdfdd344cd8b7ddce7239430b8e.jpg?ratio=1.51-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/68c68bdfdd344cd8b7ddce7239430b8e.jpg?ratio=1.51</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/68c68bdfdd344cd8b7ddce7239430b8e.jpg?ratio=1.51</b>\n      <crop>0;50.90050586061284;1925.3915761027763;1169.2582709403728</crop>\n    </image>\n    <image timeId=\"14629635159467254254\" x=\"2739.20\" y=\"249.06\" width=\"2035.21\" height=\"2713.62\" crc32=\"0\">\n      <photoid>2510</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/61c654ced68a4bf694c1084bb27c11c7.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/61c654ced68a4bf694c1084bb27c11c7.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/61c654ced68a4bf694c1084bb27c11c7.jpg?ratio=0.75</b>\n      <crop>-67.52832733375215;0;2170.2701537266844;2713.6179987455735</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/7.jpg\">\n    <background timeId=\"1269489065296\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xe4f3fb\"/>\n    <decorator timeId=\"14374468768542147923\" x=\"-2.96\" y=\"3.77\" width=\"5054.09\" height=\"4220.16\" fix=\"XY\" editable=\"0\" id=\"de1077752\" ext=\".png\"/>\n    <image timeId=\"14629635159487254256\" x=\"187.88\" y=\"172.45\" width=\"2195.03\" height=\"1463.35\" crc32=\"0\">\n      <photoid>2954</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/f36c9f63868a465b9edf21f06c4b5fb5.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/f36c9f63868a465b9edf21f06c4b5fb5.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/f36c9f63868a465b9edf21f06c4b5fb5.jpg?ratio=1.5</b>\n      <crop>0;34.21239205653626;2195.0266961224725;1394.9263466352425</crop>\n    </image>\n    <image timeId=\"14629635159497254258\" x=\"187.93\" y=\"829.95\" width=\"2195.03\" height=\"3104.90\" crc32=\"0\">\n      <photoid>2955</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/4aa12a76807949998f745df5b810a597.jpg?ratio=0.71-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/4aa12a76807949998f745df5b810a597.jpg?ratio=0.71</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/4aa12a76807949998f745df5b810a597.jpg?ratio=0.71</b>\n      <crop>0;771.7121593431917;2195.0266961224725;1561.476346635243</crop>\n    </image>\n    <image timeId=\"14629635159507254260\" x=\"2860.56\" y=\"206.70\" width=\"856.35\" height=\"1522.40\" crc32=\"0\">\n      <photoid>3056</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/99407f06d29b4f2bac6e003b3d245232.jpg?ratio=0.56-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/99407f06d29b4f2bac6e003b3d245232.jpg?ratio=0.56</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/99407f06d29b4f2bac6e003b3d245232.jpg?ratio=0.56</b>\n      <crop>-142.21750308070415;0;1140.7848239979414;1522.3996761538367</crop>\n    </image>\n    <image timeId=\"14629635159517254262\" x=\"3479.03\" y=\"1670.49\" width=\"1631.61\" height=\"1631.61\" crc32=\"0\">\n      <photoid>3875</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/1462328543187cIUupWhkpgRrjDZjaPr.jpg?ratio=1.0-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/1462328543187cIUupWhkpgRrjDZjaPr.jpg?ratio=1.0</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/1462328543187cIUupWhkpgRrjDZjaPr.jpg?ratio=1.0</b>\n      <crop>204.4956481045457;0;1222.622917391008;1631.6142136000994</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/8.jpg\">\n    <background timeId=\"1269489065298\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xfadfeb\"/>\n    <decorator timeId=\"14374468971452147929\" x=\"2.50\" y=\"-1.65\" width=\"5051.49\" height=\"4217.99\" fix=\"XY\" editable=\"0\" id=\"de1077753\" ext=\".png\"/>\n    <image timeId=\"14629635159527254264\" x=\"-290.39\" y=\"889.60\" width=\"2187.48\" height=\"1642.80\" crc32=\"0\">\n      <photoid>4438</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/1462628126461mXbBOTbOVgTuvzBhtrx.jpg-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/1462628126461mXbBOTbOVgTuvzBhtrx.jpg</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/1462628126461mXbBOTbOVgTuvzBhtrx.jpg</b>\n      <crop>478.2392777629826;0;1231.0048;1642.8</crop>\n    </image>\n    <image timeId=\"14629635159537254266\" x=\"1418.75\" y=\"889.65\" width=\"1.50\" height=\"1.00\" crc32=\"0\">\n      <photoid>4629</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/1462636797355gGfrVcQjOfCYFDqFJNS.jpg-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/1462636797355gGfrVcQjOfCYFDqFJNS.jpg</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/1462636797355gGfrVcQjOfCYFDqFJNS.jpg</b>\n      <crop>0.2507507507507507;0;1;1</crop>\n    </image>\n    <image timeId=\"14629635159547254268\" x=\"2803.74\" y=\"889.65\" width=\"923.61\" height=\"1642.80\" crc32=\"0\">\n      <photoid>5048</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/vm9a5jidnci49vwidh53fgvgnqw6s5ab.jpg-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/vm9a5jidnci49vwidh53fgvgnqw6s5ab.jpg</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/vm9a5jidnci49vwidh53fgvgnqw6s5ab.jpg</b>\n      <crop>-153.69580329835077;0;1231.0048;1642.8</crop>\n    </image>\n    <text timeId=\"14374474586122147378\" x=\"4038.75\" y=\"1655.55\" width=\"144.00\" height=\"22.00\" align=\"left\" color=\"0x0\">\n      <font>mnjzy</font>\n      <size>102</size>\n      <content><![CDATA[此处可编辑文字]]></content>\n    </text>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/9.jpg\">\n    <background timeId=\"1269489065300\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xd8eace\"/>\n    <decorator timeId=\"14374469131792147935\" x=\"-5.76\" y=\"-1.65\" width=\"5056.97\" height=\"4222.57\" fix=\"XY\" editable=\"0\" id=\"de1077754\" ext=\".png\"/>\n    <image timeId=\"14629635159557254270\" x=\"528.25\" y=\"627.43\" width=\"1609.12\" height=\"2145.49\" crc32=\"0\">\n      <photoid>5049</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/ne8v51nzrktimdgclp6hqtb6f37m9f88.jpg-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/ne8v51nzrktimdgclp6hqtb6f37m9f88.jpg</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/ne8v51nzrktimdgclp6hqtb6f37m9f88.jpg</b>\n      <crop>0;-6.821210263296962e-13;1609.118581574303;2145.491442099072</crop>\n    </image>\n    <image timeId=\"14629635159567254272\" x=\"2888.70\" y=\"627.43\" width=\"1608.31\" height=\"2145.49\" crc32=\"0\">\n      <photoid>5050</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/kgwiw4ng9187pu7vjju9pxwbvx62j3ta.jpg-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/kgwiw4ng9187pu7vjju9pxwbvx62j3ta.jpg</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/kgwiw4ng9187pu7vjju9pxwbvx62j3ta.jpg</b>\n      <crop>-0.40207860609007184;0;1609.118581574303;2145.491442099072</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/10.jpg\">\n    <background timeId=\"1269489065302\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xc9a8ce\"/>\n    <decorator timeId=\"14374469264452147941\" x=\"3.75\" y=\"-1.65\" width=\"5043.83\" height=\"4211.60\" fix=\"XY\" editable=\"0\" id=\"de1077755\" ext=\".png\"/>\n    <image timeId=\"14629635159577254274\" x=\"2692.70\" y=\"-170.96\" width=\"2114.82\" height=\"2114.82\" crc32=\"0\">\n      <photoid>5051</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/obtde1llv8jp205mokplf2ryc8tzod2k.jpg-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/obtde1llv8jp205mokplf2ryc8tzod2k.jpg</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/obtde1llv8jp205mokplf2ryc8tzod2k.jpg</b>\n      <crop>0;306.05733881646086;2114.8168515396046;1502.702173906683</crop>\n    </image>\n    <image timeId=\"14629635159587254276\" x=\"2709.62\" y=\"622.36\" width=\"2106.80\" height=\"3747.29\" crc32=\"0\">\n      <photoid>5054</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/vtr86h9mphde5609qjwi6kgp04b6tjq5.jpg-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/vtr86h9mphde5609qjwi6kgp04b6tjq5.jpg</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/vtr86h9mphde5609qjwi6kgp04b6tjq5.jpg</b>\n      <crop>0;1172.3431239250344;2106.799323553434;1402.607482310306</crop>\n    </image>\n    <image timeId=\"14629635159597254278\" x=\"590.57\" y=\"348.53\" width=\"1520.63\" height=\"2704.69\" crc32=\"0\">\n      <photoid>5055</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/e4db1y81srdolxt6vb0ucbjw2uxju3s2.jpg-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/e4db1y81srdolxt6vb0ucbjw2uxju3s2.jpg</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/e4db1y81srdolxt6vb0ucbjw2uxju3s2.jpg</b>\n      <crop>-253.04374502188534;0;2026.7180888943583;2704.694958488912</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/11.jpg\">\n    <background timeId=\"1269489065304\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xbfe1d2\"/>\n    <decorator timeId=\"14374469431752147947\" x=\"-5.67\" y=\"3.00\" width=\"5060.06\" height=\"4225.15\" fix=\"XY\" editable=\"0\" id=\"de1077756\" ext=\".png\"/>\n    <image timeId=\"14629635159607254280\" x=\"104.82\" y=\"505.98\" width=\"2379.44\" height=\"2379.44\" crc32=\"0\">\n      <photoid>5056</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/dv16sfastygevq9r9xciam161yghu6lq.jpg-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/dv16sfastygevq9r9xciam161yghu6lq.jpg</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/dv16sfastygevq9r9xciam161yghu6lq.jpg</b>\n      <crop>298.2234594893156;0;1782.995576946765;2379.442495925396</crop>\n    </image>\n    <image timeId=\"14629635159617254282\" x=\"2894.04\" y=\"506.44\" width=\"1783.00\" height=\"2378.52\" crc32=\"0\">\n      <photoid>5057</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/k1ze32aytk4ddq30ddj4j5oramzcyit6.jpg-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/k1ze32aytk4ddq30ddj4j5oramzcyit6.jpg</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/k1ze32aytk4ddq30ddj4j5oramzcyit6.jpg</b>\n      <crop>0;-0.4631981392055877;1782.995576946765;2379.4424959253956</crop>\n    </image>\n  </page>\n</pages>', null, null, null, '海水可凉?', '1000', null, null, '73', '2', '141', '1462963524', '319');
INSERT INTO `ecs_userproduct_yzldiy` VALUES ('4', '62', '00002', '1', './Uploads/userProductPreview/c1c99fcc79b66da49d33f31c28cbb8cd/c1c99fcc79b66da49d33f31c28cbb8cd.jpg', '<pages printDpi=\"300\" version=\"1.0\" client=\"Windows XP;zh-CN;WIN 18,0,0,209;Adobe Windows;PlugIn\">\n  <page width=\"5476\" height=\"3555\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/0.jpg\">\n    <background timeId=\"1269489065282\" x=\"0.00\" y=\"0.00\" width=\"5476.00\" height=\"3555.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xef8f88\"/>\n    <decorator timeId=\"14374467741392147903\" x=\"1228.25\" y=\"9.25\" width=\"4248.62\" height=\"3547.60\" fix=\"XY\" editable=\"0\" id=\"de1078036\" ext=\".png\"/>\n    <decorator timeId=\"14374467842892147907\" x=\"-3026.60\" y=\"-0.90\" width=\"4248.62\" height=\"3547.60\" fix=\"XY\" editable=\"0\" id=\"de1078036\" ext=\".png\"/>\n    <image timeId=\"14629720764532862349\" x=\"3054.05\" y=\"495.00\" width=\"1928.78\" height=\"2571.71\" rotation=\"359.78\" crc32=\"0\">\n      <photoid>1757</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/67d32d7e6b4c48da89797c96b2467ffa.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/67d32d7e6b4c48da89797c96b2467ffa.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/67d32d7e6b4c48da89797c96b2467ffa.jpg?ratio=0.75</b>\n      <crop>0;-84.7631798801151;1928.781649896869;2741.235226289389</crop>\n      <frame id=\"fr321859\">\n        <cornerLT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerLB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n      </frame>\n    </image>\n    <image timeId=\"14629720764532862351\" x=\"1021.39\" y=\"1175.71\" width=\"908.80\" height=\"1211.73\" rotation=\"359.78\" crc32=\"0\">\n      <photoid>1758</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/4eaf9c7f606646868c4e669910b26d6c.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/4eaf9c7f606646868c4e669910b26d6c.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/4eaf9c7f606646868c4e669910b26d6c.jpg?ratio=0.75</b>\n      <crop>0;-39.93837062590899;908.7954994018022;1291.6040737875542</crop>\n      <frame id=\"fr321859\">\n        <cornerLT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerLB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n      </frame>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/1.jpg\">\n    <background timeId=\"1269489065284\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\"\" color=\"0xf7f1df\"/>\n    <decorator timeId=\"14374467955302147909\" x=\"983.10\" y=\"3.00\" width=\"4074.95\" height=\"3402.59\" fix=\"XY\" editable=\"0\" id=\"de1077751\" ext=\".png\"/>\n    <decorator timeId=\"14374468083562147913\" x=\"-3044.65\" y=\"2.80\" width=\"4074.95\" height=\"3402.59\" fix=\"XY\" editable=\"0\" id=\"de1077751\" ext=\".png\"/>\n    <image timeId=\"14629720764682862353\" x=\"609.44\" y=\"142.60\" width=\"1136.32\" height=\"1515.10\" crc32=\"0\">\n      <photoid>1759</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/9d189f1eea9645a980eb777836fb6b41.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/9d189f1eea9645a980eb777836fb6b41.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/9d189f1eea9645a980eb777836fb6b41.jpg?ratio=0.75</b>\n      <crop>-47.33990000000006;0;1231.0048;1515.1</crop>\n    </image>\n    <image timeId=\"14629720764682862355\" x=\"1098.49\" y=\"1740.20\" width=\"1136.32\" height=\"1515.10\" crc32=\"0\">\n      <photoid>1760</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/271be5cab8a04ae28f4dc5afbc81e098.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/271be5cab8a04ae28f4dc5afbc81e098.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/271be5cab8a04ae28f4dc5afbc81e098.jpg?ratio=0.75</b>\n      <crop>-47.33990000000006;0;1231.0048;1515.1</crop>\n    </image>\n    <image timeId=\"14629720764682862357\" x=\"2709.57\" y=\"-506.13\" width=\"2106.80\" height=\"2809.07\" crc32=\"0\">\n      <photoid>1761</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/7314aeaf0ef843ad85b749c7bafa3c78.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/7314aeaf0ef843ad85b749c7bafa3c78.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/7314aeaf0ef843ad85b749c7bafa3c78.jpg?ratio=0.75</b>\n      <crop>0;703.229141213803;2106.799323553434;1402.607482310306</crop>\n    </image>\n    <image timeId=\"14629720764682862359\" x=\"2709.62\" y=\"1099.67\" width=\"2106.80\" height=\"2809.07\" crc32=\"0\">\n      <photoid>1762</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/30d5b468fe7d4d909f2e60cee1783713.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/30d5b468fe7d4d909f2e60cee1783713.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/30d5b468fe7d4d909f2e60cee1783713.jpg?ratio=0.75</b>\n      <crop>0;703.229141213803;2106.799323553434;1402.607482310306</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/2.jpg\">\n    <background timeId=\"1269489065286\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xe4f3fb\"/>\n    <decorator timeId=\"14374468473542147919\" x=\"-2.96\" y=\"3.77\" width=\"5054.09\" height=\"4220.16\" fix=\"XY\" editable=\"0\" id=\"de1077752\" ext=\".png\"/>\n    <image timeId=\"14629720764682862361\" x=\"229.98\" y=\"-498.85\" width=\"2079.75\" height=\"2773.00\" crc32=\"0\">\n      <photoid>1763</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/0835d8e3e331451d8a2bdb96e93bbc86.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/0835d8e3e331451d8a2bdb96e93bbc86.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/0835d8e3e331451d8a2bdb96e93bbc86.jpg?ratio=0.75</b>\n      <crop>0;607.272935926013;2079.7512173911928;1558.4557513362308</crop>\n    </image>\n    <image timeId=\"14629720764682862363\" x=\"229.98\" y=\"1136.19\" width=\"2079.75\" height=\"2773.00\" crc32=\"0\">\n      <photoid>1764</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/e574c77616cd4b7a8e0361f3d0e329e2.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/e574c77616cd4b7a8e0361f3d0e329e2.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/e574c77616cd4b7a8e0361f3d0e329e2.jpg?ratio=0.75</b>\n      <crop>0;607.2729359260129;2079.7512173911928;1558.455751336231</crop>\n    </image>\n    <image timeId=\"14629720764682862365\" x=\"2768.80\" y=\"431.20\" width=\"1893.63\" height=\"2524.84\" crc32=\"0\">\n      <photoid>1765</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d7a8c462f442478290113ec28637c208.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d7a8c462f442478290113ec28637c208.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d7a8c462f442478290113ec28637c208.jpg?ratio=0.75</b>\n      <crop>-1.1368683772161603e-13;0;1893.6275643582203;2524.8367524776268</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/3.jpg\">\n    <background timeId=\"1269489065288\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xfadfeb\"/>\n    <decorator timeId=\"14374468805172147925\" x=\"2.50\" y=\"-1.65\" width=\"5051.49\" height=\"4217.99\" fix=\"XY\" editable=\"0\" id=\"de1077753\" ext=\".png\"/>\n    <image timeId=\"14629720764682862367\" x=\"408.89\" y=\"449.87\" width=\"1681.43\" height=\"2522.14\" crc32=\"0\">\n      <photoid>1813</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/2751a15852e04662bfe4d599304664e9.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/2751a15852e04662bfe4d599304664e9.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/2751a15852e04662bfe4d599304664e9.jpg?ratio=0.67</b>\n      <crop>-105.08927436499516;0;1891.6069385699143;2522.142584759886</crop>\n    </image>\n    <image timeId=\"14629720764682862369\" x=\"2794.78\" y=\"334.87\" width=\"1961.97\" height=\"1307.98\" crc32=\"0\">\n      <photoid>1815</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/3cdd7eff123e41a7980a45a9dcd2c515.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/3cdd7eff123e41a7980a45a9dcd2c515.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/3cdd7eff123e41a7980a45a9dcd2c515.jpg?ratio=1.5</b>\n      <crop>35.88871293988109;0;1890.194545493155;1307.9813142486114</crop>\n    </image>\n    <image timeId=\"14629720764682862371\" x=\"2794.78\" y=\"1757.87\" width=\"1961.97\" height=\"1307.98\" crc32=\"0\">\n      <photoid>1816</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/68a22b4accfc4ee08ff479ef28ef13e9.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/68a22b4accfc4ee08ff479ef28ef13e9.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/68a22b4accfc4ee08ff479ef28ef13e9.jpg?ratio=1.5</b>\n      <crop>35.88871293988143;0;1890.1945454931547;1307.9813142486116</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/4.jpg\">\n    <background timeId=\"1269489065290\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xd8eace\"/>\n    <decorator timeId=\"14374469022932147931\" x=\"-5.76\" y=\"-1.65\" width=\"5056.97\" height=\"4222.57\" fix=\"XY\" editable=\"0\" id=\"de1077754\" ext=\".png\"/>\n    <image timeId=\"14629720764682862373\" x=\"-433.45\" y=\"898.95\" width=\"2464.20\" height=\"1642.80\" crc32=\"0\">\n      <photoid>1817</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/91eaeeed36db4d68aa5a57842f4f3cde.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/91eaeeed36db4d68aa5a57842f4f3cde.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/91eaeeed36db4d68aa5a57842f4f3cde.jpg?ratio=1.5</b>\n      <crop>616.5976000000002;0;1231.0048;1642.8</crop>\n    </image>\n    <image timeId=\"14629720764682862375\" x=\"798.25\" y=\"898.95\" width=\"2464.20\" height=\"1642.80\" crc32=\"0\">\n      <photoid>1818</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d8763e70d58046bf8e288361fae35f57.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d8763e70d58046bf8e288361fae35f57.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d8763e70d58046bf8e288361fae35f57.jpg?ratio=1.5</b>\n      <crop>616.0500000000002;0;1232.1;1642.8</crop>\n    </image>\n    <image timeId=\"14629720764682862377\" x=\"1648.10\" y=\"372.91\" width=\"3993.61\" height=\"2662.41\" crc32=\"0\">\n      <photoid>1821</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/0e8ddca4ce734d30945b377e388c315d.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/0e8ddca4ce734d30945b377e388c315d.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/0e8ddca4ce734d30945b377e388c315d.jpg?ratio=1.5</b>\n      <crop>998.4023762214489;0;1996.804752442901;2662.4063365905326</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/5.jpg\">\n    <background timeId=\"1269489065292\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xc9a8ce\"/>\n    <decorator timeId=\"14374469148542147937\" x=\"3.75\" y=\"-1.65\" width=\"5043.83\" height=\"4211.60\" fix=\"XY\" editable=\"0\" id=\"de1077755\" ext=\".png\"/>\n    <image timeId=\"14629720764682862379\" x=\"-353.64\" y=\"1019.90\" width=\"3048.27\" height=\"2032.18\" crc32=\"0\">\n      <photoid>1881</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/b447a0c3f5a9457dab3cc3e0a036e697.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/b447a0c3f5a9457dab3cc3e0a036e697.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/b447a0c3f5a9457dab3cc3e0a036e697.jpg?ratio=1.5</b>\n      <crop>698.5707688463846;0;1651.1264480258562;2032.1786571457503</crop>\n    </image>\n    <image timeId=\"14629720764682862381\" x=\"2001.71\" y=\"1019.95\" width=\"3048.27\" height=\"2032.18\" crc32=\"0\">\n      <photoid>1882</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/187bb4417ffc4eb58cce4add1ea55c26.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/187bb4417ffc4eb58cce4add1ea55c26.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/187bb4417ffc4eb58cce4add1ea55c26.jpg?ratio=1.5</b>\n      <crop>698.5707688463846;0;1651.1264480258562;2032.17865714575</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/6.jpg\">\n    <background timeId=\"1269489065294\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xbfe1d2\"/>\n    <decorator timeId=\"14374469296052147943\" x=\"-5.67\" y=\"3.00\" width=\"5060.06\" height=\"4225.15\" fix=\"XY\" editable=\"0\" id=\"de1077756\" ext=\".png\"/>\n    <image timeId=\"14629720764682862383\" x=\"356.22\" y=\"-500.14\" width=\"1925.39\" height=\"2888.09\" crc32=\"0\">\n      <photoid>1883</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/55d6aab2431e49f5871ff9d1f1279601.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/55d6aab2431e49f5871ff9d1f1279601.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/55d6aab2431e49f5871ff9d1f1279601.jpg?ratio=0.67</b>\n      <crop>0;748.914546606896;1925.3915761027763;1390.2582709403723</crop>\n    </image>\n    <image timeId=\"14629720764682862385\" x=\"356.27\" y=\"938.56\" width=\"1925.39\" height=\"2888.09\" crc32=\"0\">\n      <photoid>1884</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/e5a0eabf58a945e5add0f44df5ee9620.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/e5a0eabf58a945e5add0f44df5ee9620.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/e5a0eabf58a945e5add0f44df5ee9620.jpg?ratio=0.67</b>\n      <crop>0;859.4145466068958;1925.3915761027763;1169.2582709403728</crop>\n    </image>\n    <image timeId=\"14629720764682862387\" x=\"1721.59\" y=\"249.06\" width=\"4070.43\" height=\"2713.62\" crc32=\"0\">\n      <photoid>1885</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/07e4fcd474504e88943b51e6e7effc63.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/07e4fcd474504e88943b51e6e7effc63.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/07e4fcd474504e88943b51e6e7effc63.jpg?ratio=1.5</b>\n      <crop>950.0784221958379;0;2170.2701537266844;2713.6179987455735</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/7.jpg\">\n    <background timeId=\"1269489065296\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xe4f3fb\"/>\n    <decorator timeId=\"14374468768542147923\" x=\"-2.96\" y=\"3.77\" width=\"5054.09\" height=\"4220.16\" fix=\"XY\" editable=\"0\" id=\"de1077752\" ext=\".png\"/>\n    <image timeId=\"14629720764842862389\" x=\"187.88\" y=\"172.45\" width=\"2195.03\" height=\"1463.35\" crc32=\"0\">\n      <photoid>1886</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/126c8d2c36a14b71958b8141dfa59691.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/126c8d2c36a14b71958b8141dfa59691.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/126c8d2c36a14b71958b8141dfa59691.jpg?ratio=1.5</b>\n      <crop>0;34.21239205653626;2195.0266961224725;1394.9263466352425</crop>\n    </image>\n    <image timeId=\"14629720764842862391\" x=\"114.34\" y=\"1601.66\" width=\"2342.21\" height=\"1561.48\" crc32=\"0\">\n      <photoid>1887</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d3fd4b3e53bd41bf9063e444af28ad2b.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d3fd4b3e53bd41bf9063e444af28ad2b.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d3fd4b3e53bd41bf9063e444af28ad2b.jpg?ratio=1.5</b>\n      <crop>73.59391191519603;0;2195.0266961224725;1561.476346635243</crop>\n    </image>\n    <image timeId=\"14629720764842862393\" x=\"2146.93\" y=\"206.70\" width=\"2283.60\" height=\"1522.40\" crc32=\"0\">\n      <photoid>1888</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/8a699c34ebf747fc9897230dd11cb6f3.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/8a699c34ebf747fc9897230dd11cb6f3.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/8a699c34ebf747fc9897230dd11cb6f3.jpg?ratio=1.5</b>\n      <crop>571.4073451164069;0;1140.7848239979414;1522.3996761538367</crop>\n    </image>\n    <image timeId=\"14629720764842862395\" x=\"3071.13\" y=\"1670.49\" width=\"2447.42\" height=\"1631.61\" crc32=\"0\">\n      <photoid>1889</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/fdac969f7ccf405394275f4ac6b78425.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/fdac969f7ccf405394275f4ac6b78425.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/fdac969f7ccf405394275f4ac6b78425.jpg?ratio=1.5</b>\n      <crop>612.3992015045707;0;1222.622917391008;1631.6142136000994</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/8.jpg\">\n    <background timeId=\"1269489065298\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xfadfeb\"/>\n    <decorator timeId=\"14374468971452147929\" x=\"2.50\" y=\"-1.65\" width=\"5051.49\" height=\"4217.99\" fix=\"XY\" editable=\"0\" id=\"de1077753\" ext=\".png\"/>\n    <image timeId=\"14629720764842862397\" x=\"255.75\" y=\"889.60\" width=\"1095.20\" height=\"1642.80\" crc32=\"0\">\n      <photoid>1890</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/5c37b65f23da44ab8b69df5df54abb49.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/5c37b65f23da44ab8b69df5df54abb49.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/5c37b65f23da44ab8b69df5df54abb49.jpg?ratio=0.67</b>\n      <crop>-67.90239999999994;0;1231.0048;1642.8</crop>\n    </image>\n    <image timeId=\"14629720764842862399\" x=\"1419.00\" y=\"889.40\" width=\"1.00\" height=\"1.50\" crc32=\"0\">\n      <photoid>1892</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/7d73705115e54f8cababb4cfb4147439.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/7d73705115e54f8cababb4cfb4147439.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/7d73705115e54f8cababb4cfb4147439.jpg?ratio=0.67</b>\n      <crop>0;0.25;1;1</crop>\n    </image>\n    <image timeId=\"14629720764842862401\" x=\"2170.35\" y=\"889.65\" width=\"2190.40\" height=\"1642.80\" crc32=\"0\">\n      <photoid>1927</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d9989d4ce76c49ca88c1b608ad32af68.jpg?ratio=1.33-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d9989d4ce76c49ca88c1b608ad32af68.jpg?ratio=1.33</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d9989d4ce76c49ca88c1b608ad32af68.jpg?ratio=1.33</b>\n      <crop>479.69759999999985;0;1231.0048;1642.8</crop>\n    </image>\n    <text timeId=\"14374474586122147378\" x=\"4038.75\" y=\"1655.55\" width=\"144.00\" height=\"22.00\" align=\"left\" color=\"0x0\">\n      <font>mnjzy</font>\n      <size>102</size>\n      <content><![CDATA[此处可编辑文字]]></content>\n    </text>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/9.jpg\">\n    <background timeId=\"1269489065300\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xd8eace\"/>\n    <decorator timeId=\"14374469131792147935\" x=\"-5.76\" y=\"-1.65\" width=\"5056.97\" height=\"4222.57\" fix=\"XY\" editable=\"0\" id=\"de1077754\" ext=\".png\"/>\n    <image timeId=\"14629720764842862403\" x=\"528.25\" y=\"627.43\" width=\"1609.12\" height=\"2145.49\" crc32=\"0\">\n      <photoid>1968</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/ab6b4179f36c42ddb5b6c891d3891084.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/ab6b4179f36c42ddb5b6c891d3891084.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/ab6b4179f36c42ddb5b6c891d3891084.jpg?ratio=0.75</b>\n      <crop>0;-6.821210263296962e-13;1609.118581574303;2145.491442099072</crop>\n    </image>\n    <image timeId=\"14629720764842862405\" x=\"2888.30\" y=\"627.43\" width=\"1609.12\" height=\"2145.49\" crc32=\"0\">\n      <photoid>1969</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/57b9d09d9a8a4f5abba531109a6c771a.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/57b9d09d9a8a4f5abba531109a6c771a.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/57b9d09d9a8a4f5abba531109a6c771a.jpg?ratio=0.75</b>\n      <crop>0;-6.821210263296962e-13;1609.118581574303;2145.491442099072</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/10.jpg\">\n    <background timeId=\"1269489065302\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xc9a8ce\"/>\n    <decorator timeId=\"14374469264452147941\" x=\"3.75\" y=\"-1.65\" width=\"5043.83\" height=\"4211.60\" fix=\"XY\" editable=\"0\" id=\"de1077755\" ext=\".png\"/>\n    <image timeId=\"14629720764842862407\" x=\"2692.70\" y=\"-523.43\" width=\"2114.82\" height=\"2819.76\" crc32=\"0\">\n      <photoid>1970</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/e7f4300a6bac4a0a8b0ac7d79fb1bb65.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/e7f4300a6bac4a0a8b0ac7d79fb1bb65.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/e7f4300a6bac4a0a8b0ac7d79fb1bb65.jpg?ratio=0.75</b>\n      <crop>0;658.5268140730617;2114.8168515396046;1502.702173906683</crop>\n    </image>\n    <image timeId=\"14629720764842862409\" x=\"2709.62\" y=\"1091.47\" width=\"2106.80\" height=\"2809.07\" crc32=\"0\">\n      <photoid>1971</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/26bb3caba86e4a05aed68373cbfbd6e8.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/26bb3caba86e4a05aed68373cbfbd6e8.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/26bb3caba86e4a05aed68373cbfbd6e8.jpg?ratio=0.75</b>\n      <crop>0;703.229141213803;2106.799323553434;1402.607482310306</crop>\n    </image>\n    <image timeId=\"14629720764842862411\" x=\"337.53\" y=\"349.73\" width=\"2026.72\" height=\"2702.29\" crc32=\"0\">\n      <photoid>1972</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/b63612ad0a6a403f9e6e35a25f215ec4.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/b63612ad0a6a403f9e6e35a25f215ec4.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/b63612ad0a6a403f9e6e35a25f215ec4.jpg?ratio=0.75</b>\n      <crop>0;-1.2020866482171186;2026.7180888943583;2704.694958488912</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/11.jpg\">\n    <background timeId=\"1269489065304\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xbfe1d2\"/>\n    <decorator timeId=\"14374469431752147947\" x=\"-5.67\" y=\"3.00\" width=\"5060.06\" height=\"4225.15\" fix=\"XY\" editable=\"0\" id=\"de1077756\" ext=\".png\"/>\n    <image timeId=\"14629720764842862413\" x=\"-490.04\" y=\"505.98\" width=\"3569.16\" height=\"2379.44\" crc32=\"0\">\n      <photoid>1987</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d6e74bafecf546a591c798a56caf8547.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d6e74bafecf546a591c798a56caf8547.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d6e74bafecf546a591c798a56caf8547.jpg?ratio=1.5</b>\n      <crop>893.0840834706645;0;1782.995576946765;2379.442495925396</crop>\n    </image>\n    <image timeId=\"14629720764842862415\" x=\"2000.96\" y=\"505.98\" width=\"3569.16\" height=\"2379.44\" crc32=\"0\">\n      <photoid>1989</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/c2e707f43db54d8fb96741f5d08d114a.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/c2e707f43db54d8fb96741f5d08d114a.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/c2e707f43db54d8fb96741f5d08d114a.jpg?ratio=1.5</b>\n      <crop>893.084083470664;0;1782.995576946765;2379.4424959253956</crop>\n    </image>\n  </page>\n</pages>', null, null, null, '时光慢递团队风采', '1000', null, null, '117', '1', null, null, null);
INSERT INTO `ecs_userproduct_yzldiy` VALUES ('3', '62', '00002', '1', './Uploads/userProductPreview/8790eec41fa5755f607254a9dadf373e/8790eec41fa5755f607254a9dadf373e.jpg', '<pages printDpi=\"300\" version=\"1.0\" client=\"Windows 10;zh-CN;WIN 21,0,0,216;Google Pepper;PlugIn\">\n  <page width=\"5476\" height=\"3555\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/0.jpg\">\n    <background timeId=\"1269489065282\" x=\"0.00\" y=\"0.00\" width=\"5476.00\" height=\"3555.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xef8f88\"/>\n    <decorator timeId=\"14374467741392147903\" x=\"1228.25\" y=\"9.25\" width=\"4248.62\" height=\"3547.60\" fix=\"XY\" editable=\"0\" id=\"de1078036\" ext=\".png\"/>\n    <decorator timeId=\"14374467842892147907\" x=\"-3026.60\" y=\"-0.90\" width=\"4248.62\" height=\"3547.60\" fix=\"XY\" editable=\"0\" id=\"de1078036\" ext=\".png\"/>\n    <image timeId=\"14629714578454967349\" x=\"3054.05\" y=\"495.00\" width=\"1928.78\" height=\"2571.71\" rotation=\"359.78\" crc32=\"0\">\n      <photoid>1757</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/67d32d7e6b4c48da89797c96b2467ffa.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/67d32d7e6b4c48da89797c96b2467ffa.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/67d32d7e6b4c48da89797c96b2467ffa.jpg?ratio=0.75</b>\n      <crop>0;-84.7631798801151;1928.781649896869;2741.235226289389</crop>\n      <frame id=\"fr321859\">\n        <cornerLT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerLB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n      </frame>\n    </image>\n    <image timeId=\"14629714578514967351\" x=\"1021.39\" y=\"1175.71\" width=\"908.80\" height=\"1211.73\" rotation=\"359.78\" crc32=\"0\">\n      <photoid>1758</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/4eaf9c7f606646868c4e669910b26d6c.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/4eaf9c7f606646868c4e669910b26d6c.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/4eaf9c7f606646868c4e669910b26d6c.jpg?ratio=0.75</b>\n      <crop>0;-39.93837062590899;908.7954994018022;1291.6040737875542</crop>\n      <frame id=\"fr321859\">\n        <cornerLT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerLB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n      </frame>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/1.jpg\">\n    <background timeId=\"1269489065284\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\"\" color=\"0xf7f1df\"/>\n    <decorator timeId=\"14374467955302147909\" x=\"983.10\" y=\"3.00\" width=\"4074.95\" height=\"3402.59\" fix=\"XY\" editable=\"0\" id=\"de1077751\" ext=\".png\"/>\n    <decorator timeId=\"14374468083562147913\" x=\"-3044.65\" y=\"2.80\" width=\"4074.95\" height=\"3402.59\" fix=\"XY\" editable=\"0\" id=\"de1077751\" ext=\".png\"/>\n    <image timeId=\"14629714578554967353\" x=\"609.44\" y=\"142.60\" width=\"1136.32\" height=\"1515.10\" crc32=\"0\">\n      <photoid>1759</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/9d189f1eea9645a980eb777836fb6b41.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/9d189f1eea9645a980eb777836fb6b41.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/9d189f1eea9645a980eb777836fb6b41.jpg?ratio=0.75</b>\n      <crop>-47.33990000000006;0;1231.0048;1515.1</crop>\n    </image>\n    <image timeId=\"14629714578574967355\" x=\"1098.49\" y=\"1740.20\" width=\"1136.32\" height=\"1515.10\" crc32=\"0\">\n      <photoid>1760</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/271be5cab8a04ae28f4dc5afbc81e098.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/271be5cab8a04ae28f4dc5afbc81e098.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/271be5cab8a04ae28f4dc5afbc81e098.jpg?ratio=0.75</b>\n      <crop>-47.33990000000006;0;1231.0048;1515.1</crop>\n    </image>\n    <image timeId=\"14629714578584967357\" x=\"2709.57\" y=\"-506.13\" width=\"2106.80\" height=\"2809.07\" crc32=\"0\">\n      <photoid>1761</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/7314aeaf0ef843ad85b749c7bafa3c78.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/7314aeaf0ef843ad85b749c7bafa3c78.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/7314aeaf0ef843ad85b749c7bafa3c78.jpg?ratio=0.75</b>\n      <crop>0;703.229141213803;2106.799323553434;1402.607482310306</crop>\n    </image>\n    <image timeId=\"14629714578594967359\" x=\"2709.62\" y=\"1099.67\" width=\"2106.80\" height=\"2809.07\" crc32=\"0\">\n      <photoid>1762</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/30d5b468fe7d4d909f2e60cee1783713.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/30d5b468fe7d4d909f2e60cee1783713.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/30d5b468fe7d4d909f2e60cee1783713.jpg?ratio=0.75</b>\n      <crop>0;703.229141213803;2106.799323553434;1402.607482310306</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/2.jpg\">\n    <background timeId=\"1269489065286\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xe4f3fb\"/>\n    <decorator timeId=\"14374468473542147919\" x=\"-2.96\" y=\"3.77\" width=\"5054.09\" height=\"4220.16\" fix=\"XY\" editable=\"0\" id=\"de1077752\" ext=\".png\"/>\n    <image timeId=\"14629714578604967361\" x=\"229.98\" y=\"-498.85\" width=\"2079.75\" height=\"2773.00\" crc32=\"0\">\n      <photoid>1763</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/0835d8e3e331451d8a2bdb96e93bbc86.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/0835d8e3e331451d8a2bdb96e93bbc86.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/0835d8e3e331451d8a2bdb96e93bbc86.jpg?ratio=0.75</b>\n      <crop>0;607.272935926013;2079.7512173911928;1558.4557513362308</crop>\n    </image>\n    <image timeId=\"14629714578614967363\" x=\"229.98\" y=\"1136.19\" width=\"2079.75\" height=\"2773.00\" crc32=\"0\">\n      <photoid>1764</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/e574c77616cd4b7a8e0361f3d0e329e2.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/e574c77616cd4b7a8e0361f3d0e329e2.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/e574c77616cd4b7a8e0361f3d0e329e2.jpg?ratio=0.75</b>\n      <crop>0;607.2729359260129;2079.7512173911928;1558.455751336231</crop>\n    </image>\n    <image timeId=\"14629714578624967365\" x=\"2768.80\" y=\"431.20\" width=\"1893.63\" height=\"2524.84\" crc32=\"0\">\n      <photoid>1765</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d7a8c462f442478290113ec28637c208.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d7a8c462f442478290113ec28637c208.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d7a8c462f442478290113ec28637c208.jpg?ratio=0.75</b>\n      <crop>-1.1368683772161603e-13;0;1893.6275643582203;2524.8367524776268</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/3.jpg\">\n    <background timeId=\"1269489065288\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xfadfeb\"/>\n    <decorator timeId=\"14374468805172147925\" x=\"2.50\" y=\"-1.65\" width=\"5051.49\" height=\"4217.99\" fix=\"XY\" editable=\"0\" id=\"de1077753\" ext=\".png\"/>\n    <image timeId=\"14629714578634967367\" x=\"408.89\" y=\"449.87\" width=\"1681.43\" height=\"2522.14\" crc32=\"0\">\n      <photoid>1813</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/2751a15852e04662bfe4d599304664e9.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/2751a15852e04662bfe4d599304664e9.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/2751a15852e04662bfe4d599304664e9.jpg?ratio=0.67</b>\n      <crop>-105.08927436499516;0;1891.6069385699143;2522.142584759886</crop>\n    </image>\n    <image timeId=\"14629714578654967369\" x=\"2794.78\" y=\"334.87\" width=\"1961.97\" height=\"1307.98\" crc32=\"0\">\n      <photoid>1815</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/3cdd7eff123e41a7980a45a9dcd2c515.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/3cdd7eff123e41a7980a45a9dcd2c515.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/3cdd7eff123e41a7980a45a9dcd2c515.jpg?ratio=1.5</b>\n      <crop>35.88871293988109;0;1890.194545493155;1307.9813142486114</crop>\n    </image>\n    <image timeId=\"14629714578664967371\" x=\"2794.78\" y=\"1757.87\" width=\"1961.97\" height=\"1307.98\" crc32=\"0\">\n      <photoid>1816</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/68a22b4accfc4ee08ff479ef28ef13e9.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/68a22b4accfc4ee08ff479ef28ef13e9.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/68a22b4accfc4ee08ff479ef28ef13e9.jpg?ratio=1.5</b>\n      <crop>35.88871293988143;0;1890.1945454931547;1307.9813142486116</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/4.jpg\">\n    <background timeId=\"1269489065290\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xd8eace\"/>\n    <decorator timeId=\"14374469022932147931\" x=\"-5.76\" y=\"-1.65\" width=\"5056.97\" height=\"4222.57\" fix=\"XY\" editable=\"0\" id=\"de1077754\" ext=\".png\"/>\n    <image timeId=\"14629714578674967373\" x=\"-433.45\" y=\"898.95\" width=\"2464.20\" height=\"1642.80\" crc32=\"0\">\n      <photoid>1817</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/91eaeeed36db4d68aa5a57842f4f3cde.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/91eaeeed36db4d68aa5a57842f4f3cde.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/91eaeeed36db4d68aa5a57842f4f3cde.jpg?ratio=1.5</b>\n      <crop>616.5976000000002;0;1231.0048;1642.8</crop>\n    </image>\n    <image timeId=\"14629714578684967375\" x=\"798.25\" y=\"898.95\" width=\"2464.20\" height=\"1642.80\" crc32=\"0\">\n      <photoid>1818</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d8763e70d58046bf8e288361fae35f57.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d8763e70d58046bf8e288361fae35f57.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d8763e70d58046bf8e288361fae35f57.jpg?ratio=1.5</b>\n      <crop>616.0500000000002;0;1232.1;1642.8</crop>\n    </image>\n    <image timeId=\"14629714578694967377\" x=\"1648.10\" y=\"372.91\" width=\"3993.61\" height=\"2662.41\" crc32=\"0\">\n      <photoid>1821</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/0e8ddca4ce734d30945b377e388c315d.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/0e8ddca4ce734d30945b377e388c315d.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/0e8ddca4ce734d30945b377e388c315d.jpg?ratio=1.5</b>\n      <crop>998.4023762214489;0;1996.804752442901;2662.4063365905326</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/5.jpg\">\n    <background timeId=\"1269489065292\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xc9a8ce\"/>\n    <decorator timeId=\"14374469148542147937\" x=\"3.75\" y=\"-1.65\" width=\"5043.83\" height=\"4211.60\" fix=\"XY\" editable=\"0\" id=\"de1077755\" ext=\".png\"/>\n    <image timeId=\"14629714578714967379\" x=\"-353.64\" y=\"1019.90\" width=\"3048.27\" height=\"2032.18\" crc32=\"0\">\n      <photoid>1881</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/b447a0c3f5a9457dab3cc3e0a036e697.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/b447a0c3f5a9457dab3cc3e0a036e697.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/b447a0c3f5a9457dab3cc3e0a036e697.jpg?ratio=1.5</b>\n      <crop>698.5707688463846;0;1651.1264480258562;2032.1786571457503</crop>\n    </image>\n    <image timeId=\"14629714578724967381\" x=\"2001.71\" y=\"1019.95\" width=\"3048.27\" height=\"2032.18\" crc32=\"0\">\n      <photoid>1882</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/187bb4417ffc4eb58cce4add1ea55c26.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/187bb4417ffc4eb58cce4add1ea55c26.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/187bb4417ffc4eb58cce4add1ea55c26.jpg?ratio=1.5</b>\n      <crop>698.5707688463846;0;1651.1264480258562;2032.17865714575</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/6.jpg\">\n    <background timeId=\"1269489065294\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xbfe1d2\"/>\n    <decorator timeId=\"14374469296052147943\" x=\"-5.67\" y=\"3.00\" width=\"5060.06\" height=\"4225.15\" fix=\"XY\" editable=\"0\" id=\"de1077756\" ext=\".png\"/>\n    <image timeId=\"14629714578734967383\" x=\"356.22\" y=\"-500.14\" width=\"1925.39\" height=\"2888.09\" crc32=\"0\">\n      <photoid>1883</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/55d6aab2431e49f5871ff9d1f1279601.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/55d6aab2431e49f5871ff9d1f1279601.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/55d6aab2431e49f5871ff9d1f1279601.jpg?ratio=0.67</b>\n      <crop>0;748.914546606896;1925.3915761027763;1390.2582709403723</crop>\n    </image>\n    <image timeId=\"14629714578744967385\" x=\"356.27\" y=\"938.56\" width=\"1925.39\" height=\"2888.09\" crc32=\"0\">\n      <photoid>1884</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/e5a0eabf58a945e5add0f44df5ee9620.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/e5a0eabf58a945e5add0f44df5ee9620.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/e5a0eabf58a945e5add0f44df5ee9620.jpg?ratio=0.67</b>\n      <crop>0;859.4145466068958;1925.3915761027763;1169.2582709403728</crop>\n    </image>\n    <image timeId=\"14629714578754967387\" x=\"1721.59\" y=\"249.06\" width=\"4070.43\" height=\"2713.62\" crc32=\"0\">\n      <photoid>1885</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/07e4fcd474504e88943b51e6e7effc63.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/07e4fcd474504e88943b51e6e7effc63.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/07e4fcd474504e88943b51e6e7effc63.jpg?ratio=1.5</b>\n      <crop>950.0784221958379;0;2170.2701537266844;2713.6179987455735</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/7.jpg\">\n    <background timeId=\"1269489065296\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xe4f3fb\"/>\n    <decorator timeId=\"14374468768542147923\" x=\"-2.96\" y=\"3.77\" width=\"5054.09\" height=\"4220.16\" fix=\"XY\" editable=\"0\" id=\"de1077752\" ext=\".png\"/>\n    <image timeId=\"14629714578764967389\" x=\"187.88\" y=\"172.45\" width=\"2195.03\" height=\"1463.35\" crc32=\"0\">\n      <photoid>1886</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/126c8d2c36a14b71958b8141dfa59691.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/126c8d2c36a14b71958b8141dfa59691.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/126c8d2c36a14b71958b8141dfa59691.jpg?ratio=1.5</b>\n      <crop>0;34.21239205653626;2195.0266961224725;1394.9263466352425</crop>\n    </image>\n    <image timeId=\"14629714578774967391\" x=\"114.34\" y=\"1601.66\" width=\"2342.21\" height=\"1561.48\" crc32=\"0\">\n      <photoid>1887</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d3fd4b3e53bd41bf9063e444af28ad2b.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d3fd4b3e53bd41bf9063e444af28ad2b.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d3fd4b3e53bd41bf9063e444af28ad2b.jpg?ratio=1.5</b>\n      <crop>73.59391191519603;0;2195.0266961224725;1561.476346635243</crop>\n    </image>\n    <image timeId=\"14629714578784967393\" x=\"2146.93\" y=\"206.70\" width=\"2283.60\" height=\"1522.40\" crc32=\"0\">\n      <photoid>1888</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/8a699c34ebf747fc9897230dd11cb6f3.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/8a699c34ebf747fc9897230dd11cb6f3.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/8a699c34ebf747fc9897230dd11cb6f3.jpg?ratio=1.5</b>\n      <crop>571.4073451164069;0;1140.7848239979414;1522.3996761538367</crop>\n    </image>\n    <image timeId=\"14629714578804967395\" x=\"3071.13\" y=\"1670.49\" width=\"2447.42\" height=\"1631.61\" crc32=\"0\">\n      <photoid>1889</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/fdac969f7ccf405394275f4ac6b78425.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/fdac969f7ccf405394275f4ac6b78425.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/fdac969f7ccf405394275f4ac6b78425.jpg?ratio=1.5</b>\n      <crop>612.3992015045707;0;1222.622917391008;1631.6142136000994</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/8.jpg\">\n    <background timeId=\"1269489065298\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xfadfeb\"/>\n    <decorator timeId=\"14374468971452147929\" x=\"2.50\" y=\"-1.65\" width=\"5051.49\" height=\"4217.99\" fix=\"XY\" editable=\"0\" id=\"de1077753\" ext=\".png\"/>\n    <image timeId=\"14629714578814967397\" x=\"255.75\" y=\"889.60\" width=\"1095.20\" height=\"1642.80\" crc32=\"0\">\n      <photoid>1890</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/5c37b65f23da44ab8b69df5df54abb49.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/5c37b65f23da44ab8b69df5df54abb49.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/5c37b65f23da44ab8b69df5df54abb49.jpg?ratio=0.67</b>\n      <crop>-67.90239999999994;0;1231.0048;1642.8</crop>\n    </image>\n    <image timeId=\"14629714578824967399\" x=\"1419.00\" y=\"889.40\" width=\"1.00\" height=\"1.50\" crc32=\"0\">\n      <photoid>1892</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/7d73705115e54f8cababb4cfb4147439.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/7d73705115e54f8cababb4cfb4147439.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/7d73705115e54f8cababb4cfb4147439.jpg?ratio=0.67</b>\n      <crop>0;0.25;1;1</crop>\n    </image>\n    <image timeId=\"14629714578834967401\" x=\"2170.35\" y=\"889.65\" width=\"2190.40\" height=\"1642.80\" crc32=\"0\">\n      <photoid>1927</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d9989d4ce76c49ca88c1b608ad32af68.jpg?ratio=1.33-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d9989d4ce76c49ca88c1b608ad32af68.jpg?ratio=1.33</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d9989d4ce76c49ca88c1b608ad32af68.jpg?ratio=1.33</b>\n      <crop>479.69759999999985;0;1231.0048;1642.8</crop>\n    </image>\n    <text timeId=\"14374474586122147378\" x=\"4038.75\" y=\"1655.55\" width=\"144.00\" height=\"22.00\" align=\"left\" color=\"0x0\">\n      <font>mnjzy</font>\n      <size>102</size>\n      <content><![CDATA[此处可编辑文字]]></content>\n    </text>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/9.jpg\">\n    <background timeId=\"1269489065300\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xd8eace\"/>\n    <decorator timeId=\"14374469131792147935\" x=\"-5.76\" y=\"-1.65\" width=\"5056.97\" height=\"4222.57\" fix=\"XY\" editable=\"0\" id=\"de1077754\" ext=\".png\"/>\n    <image timeId=\"14629714578844967403\" x=\"528.25\" y=\"627.43\" width=\"1609.12\" height=\"2145.49\" crc32=\"0\">\n      <photoid>1968</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/ab6b4179f36c42ddb5b6c891d3891084.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/ab6b4179f36c42ddb5b6c891d3891084.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/ab6b4179f36c42ddb5b6c891d3891084.jpg?ratio=0.75</b>\n      <crop>0;-6.821210263296962e-13;1609.118581574303;2145.491442099072</crop>\n    </image>\n    <image timeId=\"14629714578854967405\" x=\"2888.30\" y=\"627.43\" width=\"1609.12\" height=\"2145.49\" crc32=\"0\">\n      <photoid>1969</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/57b9d09d9a8a4f5abba531109a6c771a.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/57b9d09d9a8a4f5abba531109a6c771a.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/57b9d09d9a8a4f5abba531109a6c771a.jpg?ratio=0.75</b>\n      <crop>0;-6.821210263296962e-13;1609.118581574303;2145.491442099072</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/10.jpg\">\n    <background timeId=\"1269489065302\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xc9a8ce\"/>\n    <decorator timeId=\"14374469264452147941\" x=\"3.75\" y=\"-1.65\" width=\"5043.83\" height=\"4211.60\" fix=\"XY\" editable=\"0\" id=\"de1077755\" ext=\".png\"/>\n    <image timeId=\"14629714578864967407\" x=\"2692.70\" y=\"-523.43\" width=\"2114.82\" height=\"2819.76\" crc32=\"0\">\n      <photoid>1970</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/e7f4300a6bac4a0a8b0ac7d79fb1bb65.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/e7f4300a6bac4a0a8b0ac7d79fb1bb65.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/e7f4300a6bac4a0a8b0ac7d79fb1bb65.jpg?ratio=0.75</b>\n      <crop>0;658.5268140730617;2114.8168515396046;1502.702173906683</crop>\n    </image>\n    <image timeId=\"14629714578874967409\" x=\"2709.62\" y=\"1091.47\" width=\"2106.80\" height=\"2809.07\" crc32=\"0\">\n      <photoid>1971</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/26bb3caba86e4a05aed68373cbfbd6e8.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/26bb3caba86e4a05aed68373cbfbd6e8.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/26bb3caba86e4a05aed68373cbfbd6e8.jpg?ratio=0.75</b>\n      <crop>0;703.229141213803;2106.799323553434;1402.607482310306</crop>\n    </image>\n    <image timeId=\"14629714578884967411\" x=\"337.53\" y=\"349.73\" width=\"2026.72\" height=\"2702.29\" crc32=\"0\">\n      <photoid>1972</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/b63612ad0a6a403f9e6e35a25f215ec4.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/b63612ad0a6a403f9e6e35a25f215ec4.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/b63612ad0a6a403f9e6e35a25f215ec4.jpg?ratio=0.75</b>\n      <crop>0;-1.2020866482171186;2026.7180888943583;2704.694958488912</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/11.jpg\">\n    <background timeId=\"1269489065304\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xbfe1d2\"/>\n    <decorator timeId=\"14374469431752147947\" x=\"-5.67\" y=\"3.00\" width=\"5060.06\" height=\"4225.15\" fix=\"XY\" editable=\"0\" id=\"de1077756\" ext=\".png\"/>\n    <image timeId=\"14629714578894967413\" x=\"-490.04\" y=\"505.98\" width=\"3569.16\" height=\"2379.44\" crc32=\"0\">\n      <photoid>1987</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d6e74bafecf546a591c798a56caf8547.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d6e74bafecf546a591c798a56caf8547.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d6e74bafecf546a591c798a56caf8547.jpg?ratio=1.5</b>\n      <crop>893.0840834706645;0;1782.995576946765;2379.442495925396</crop>\n    </image>\n    <image timeId=\"14629714578904967415\" x=\"2000.96\" y=\"505.98\" width=\"3569.16\" height=\"2379.44\" crc32=\"0\">\n      <photoid>1989</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/c2e707f43db54d8fb96741f5d08d114a.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/c2e707f43db54d8fb96741f5d08d114a.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/c2e707f43db54d8fb96741f5d08d114a.jpg?ratio=1.5</b>\n      <crop>893.084083470664;0;1782.995576946765;2379.4424959253956</crop>\n    </image>\n  </page>\n</pages>', null, null, null, '时光慢递团队风采', '1000', null, null, '73', '1', '141', '1462971475', '254');
INSERT INTO `ecs_userproduct_yzldiy` VALUES ('5', '62', '00002', '1', './Uploads/userProductPreview/2d62d9eedfc4795f256943e6f10c06d1/2d62d9eedfc4795f256943e6f10c06d1.jpg', '<pages printDpi=\"300\" version=\"1.0\" client=\"Windows XP;zh-CN;WIN 18,0,0,209;Adobe Windows;PlugIn\">\n  <page width=\"5476\" height=\"3555\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/0.jpg\">\n    <background timeId=\"1269489065282\" x=\"0.00\" y=\"0.00\" width=\"5476.00\" height=\"3555.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xef8f88\"/>\n    <decorator timeId=\"14374467741392147903\" x=\"1228.25\" y=\"9.25\" width=\"4248.62\" height=\"3547.60\" fix=\"XY\" editable=\"0\" id=\"de1078036\" ext=\".png\"/>\n    <decorator timeId=\"14374467842892147907\" x=\"-3026.60\" y=\"-0.90\" width=\"4248.62\" height=\"3547.60\" fix=\"XY\" editable=\"0\" id=\"de1078036\" ext=\".png\"/>\n    <image timeId=\"14629723479218232349\" x=\"3054.05\" y=\"495.00\" width=\"1928.78\" height=\"2571.71\" rotation=\"359.78\" crc32=\"0\">\n      <photoid>1757</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/67d32d7e6b4c48da89797c96b2467ffa.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/67d32d7e6b4c48da89797c96b2467ffa.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/67d32d7e6b4c48da89797c96b2467ffa.jpg?ratio=0.75</b>\n      <crop>0;-84.7631798801151;1928.781649896869;2741.235226289389</crop>\n      <frame id=\"fr321859\">\n        <cornerLT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerLB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n      </frame>\n    </image>\n    <image timeId=\"14629723479218232351\" x=\"1021.39\" y=\"1175.71\" width=\"908.80\" height=\"1211.73\" rotation=\"359.78\" crc32=\"0\">\n      <photoid>1758</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/4eaf9c7f606646868c4e669910b26d6c.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/4eaf9c7f606646868c4e669910b26d6c.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/4eaf9c7f606646868c4e669910b26d6c.jpg?ratio=0.75</b>\n      <crop>0;-39.93837062590899;908.7954994018022;1291.6040737875542</crop>\n      <frame id=\"fr321859\">\n        <cornerLT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerLB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n      </frame>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/1.jpg\">\n    <background timeId=\"1269489065284\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\"\" color=\"0xf7f1df\"/>\n    <decorator timeId=\"14374467955302147909\" x=\"983.10\" y=\"3.00\" width=\"4074.95\" height=\"3402.59\" fix=\"XY\" editable=\"0\" id=\"de1077751\" ext=\".png\"/>\n    <decorator timeId=\"14374468083562147913\" x=\"-3044.65\" y=\"2.80\" width=\"4074.95\" height=\"3402.59\" fix=\"XY\" editable=\"0\" id=\"de1077751\" ext=\".png\"/>\n    <image timeId=\"14629723479378232353\" x=\"609.44\" y=\"142.60\" width=\"1136.32\" height=\"1515.10\" crc32=\"0\">\n      <photoid>1759</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/9d189f1eea9645a980eb777836fb6b41.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/9d189f1eea9645a980eb777836fb6b41.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/9d189f1eea9645a980eb777836fb6b41.jpg?ratio=0.75</b>\n      <crop>-47.33990000000006;0;1231.0048;1515.1</crop>\n    </image>\n    <image timeId=\"14629723479378232355\" x=\"1098.49\" y=\"1740.20\" width=\"1136.32\" height=\"1515.10\" crc32=\"0\">\n      <photoid>1760</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/271be5cab8a04ae28f4dc5afbc81e098.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/271be5cab8a04ae28f4dc5afbc81e098.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/271be5cab8a04ae28f4dc5afbc81e098.jpg?ratio=0.75</b>\n      <crop>-47.33990000000006;0;1231.0048;1515.1</crop>\n    </image>\n    <image timeId=\"14629723479378232357\" x=\"2709.57\" y=\"-506.13\" width=\"2106.80\" height=\"2809.07\" crc32=\"0\">\n      <photoid>1761</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/7314aeaf0ef843ad85b749c7bafa3c78.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/7314aeaf0ef843ad85b749c7bafa3c78.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/7314aeaf0ef843ad85b749c7bafa3c78.jpg?ratio=0.75</b>\n      <crop>0;703.229141213803;2106.799323553434;1402.607482310306</crop>\n    </image>\n    <image timeId=\"14629723479378232359\" x=\"2709.62\" y=\"1099.67\" width=\"2106.80\" height=\"2809.07\" crc32=\"0\">\n      <photoid>1762</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/30d5b468fe7d4d909f2e60cee1783713.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/30d5b468fe7d4d909f2e60cee1783713.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/30d5b468fe7d4d909f2e60cee1783713.jpg?ratio=0.75</b>\n      <crop>0;703.229141213803;2106.799323553434;1402.607482310306</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/2.jpg\">\n    <background timeId=\"1269489065286\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xe4f3fb\"/>\n    <decorator timeId=\"14374468473542147919\" x=\"-2.96\" y=\"3.77\" width=\"5054.09\" height=\"4220.16\" fix=\"XY\" editable=\"0\" id=\"de1077752\" ext=\".png\"/>\n    <image timeId=\"14629723479378232361\" x=\"229.98\" y=\"-498.85\" width=\"2079.75\" height=\"2773.00\" crc32=\"0\">\n      <photoid>1763</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/0835d8e3e331451d8a2bdb96e93bbc86.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/0835d8e3e331451d8a2bdb96e93bbc86.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/0835d8e3e331451d8a2bdb96e93bbc86.jpg?ratio=0.75</b>\n      <crop>0;607.272935926013;2079.7512173911928;1558.4557513362308</crop>\n    </image>\n    <image timeId=\"14629723479378232363\" x=\"229.98\" y=\"1136.19\" width=\"2079.75\" height=\"2773.00\" crc32=\"0\">\n      <photoid>1764</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/e574c77616cd4b7a8e0361f3d0e329e2.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/e574c77616cd4b7a8e0361f3d0e329e2.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/e574c77616cd4b7a8e0361f3d0e329e2.jpg?ratio=0.75</b>\n      <crop>0;607.2729359260129;2079.7512173911928;1558.455751336231</crop>\n    </image>\n    <image timeId=\"14629723479378232365\" x=\"2768.80\" y=\"431.20\" width=\"1893.63\" height=\"2524.84\" crc32=\"0\">\n      <photoid>1765</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d7a8c462f442478290113ec28637c208.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d7a8c462f442478290113ec28637c208.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d7a8c462f442478290113ec28637c208.jpg?ratio=0.75</b>\n      <crop>-1.1368683772161603e-13;0;1893.6275643582203;2524.8367524776268</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/3.jpg\">\n    <background timeId=\"1269489065288\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xfadfeb\"/>\n    <decorator timeId=\"14374468805172147925\" x=\"2.50\" y=\"-1.65\" width=\"5051.49\" height=\"4217.99\" fix=\"XY\" editable=\"0\" id=\"de1077753\" ext=\".png\"/>\n    <image timeId=\"14629723479378232367\" x=\"408.89\" y=\"449.87\" width=\"1681.43\" height=\"2522.14\" crc32=\"0\">\n      <photoid>1813</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/2751a15852e04662bfe4d599304664e9.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/2751a15852e04662bfe4d599304664e9.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/2751a15852e04662bfe4d599304664e9.jpg?ratio=0.67</b>\n      <crop>-105.08927436499516;0;1891.6069385699143;2522.142584759886</crop>\n    </image>\n    <image timeId=\"14629723479378232369\" x=\"2794.78\" y=\"334.87\" width=\"1961.97\" height=\"1307.98\" crc32=\"0\">\n      <photoid>1815</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/3cdd7eff123e41a7980a45a9dcd2c515.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/3cdd7eff123e41a7980a45a9dcd2c515.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/3cdd7eff123e41a7980a45a9dcd2c515.jpg?ratio=1.5</b>\n      <crop>35.88871293988109;0;1890.194545493155;1307.9813142486114</crop>\n    </image>\n    <image timeId=\"14629723479378232371\" x=\"2794.78\" y=\"1757.87\" width=\"1961.97\" height=\"1307.98\" crc32=\"0\">\n      <photoid>1816</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/68a22b4accfc4ee08ff479ef28ef13e9.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/68a22b4accfc4ee08ff479ef28ef13e9.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/68a22b4accfc4ee08ff479ef28ef13e9.jpg?ratio=1.5</b>\n      <crop>35.88871293988143;0;1890.1945454931547;1307.9813142486116</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/4.jpg\">\n    <background timeId=\"1269489065290\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xd8eace\"/>\n    <decorator timeId=\"14374469022932147931\" x=\"-5.76\" y=\"-1.65\" width=\"5056.97\" height=\"4222.57\" fix=\"XY\" editable=\"0\" id=\"de1077754\" ext=\".png\"/>\n    <image timeId=\"14629723479378232373\" x=\"-433.45\" y=\"898.95\" width=\"2464.20\" height=\"1642.80\" crc32=\"0\">\n      <photoid>1817</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/91eaeeed36db4d68aa5a57842f4f3cde.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/91eaeeed36db4d68aa5a57842f4f3cde.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/91eaeeed36db4d68aa5a57842f4f3cde.jpg?ratio=1.5</b>\n      <crop>616.5976000000002;0;1231.0048;1642.8</crop>\n    </image>\n    <image timeId=\"14629723479378232375\" x=\"798.25\" y=\"898.95\" width=\"2464.20\" height=\"1642.80\" crc32=\"0\">\n      <photoid>1818</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d8763e70d58046bf8e288361fae35f57.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d8763e70d58046bf8e288361fae35f57.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d8763e70d58046bf8e288361fae35f57.jpg?ratio=1.5</b>\n      <crop>616.0500000000002;0;1232.1;1642.8</crop>\n    </image>\n    <image timeId=\"14629723479378232377\" x=\"1648.10\" y=\"372.91\" width=\"3993.61\" height=\"2662.41\" crc32=\"0\">\n      <photoid>1821</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/0e8ddca4ce734d30945b377e388c315d.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/0e8ddca4ce734d30945b377e388c315d.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/0e8ddca4ce734d30945b377e388c315d.jpg?ratio=1.5</b>\n      <crop>998.4023762214489;0;1996.804752442901;2662.4063365905326</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/5.jpg\">\n    <background timeId=\"1269489065292\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xc9a8ce\"/>\n    <decorator timeId=\"14374469148542147937\" x=\"3.75\" y=\"-1.65\" width=\"5043.83\" height=\"4211.60\" fix=\"XY\" editable=\"0\" id=\"de1077755\" ext=\".png\"/>\n    <image timeId=\"14629723479378232379\" x=\"-353.64\" y=\"1019.90\" width=\"3048.27\" height=\"2032.18\" crc32=\"0\">\n      <photoid>1881</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/b447a0c3f5a9457dab3cc3e0a036e697.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/b447a0c3f5a9457dab3cc3e0a036e697.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/b447a0c3f5a9457dab3cc3e0a036e697.jpg?ratio=1.5</b>\n      <crop>698.5707688463846;0;1651.1264480258562;2032.1786571457503</crop>\n    </image>\n    <image timeId=\"14629723479378232381\" x=\"2001.71\" y=\"1019.95\" width=\"3048.27\" height=\"2032.18\" crc32=\"0\">\n      <photoid>1882</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/187bb4417ffc4eb58cce4add1ea55c26.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/187bb4417ffc4eb58cce4add1ea55c26.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/187bb4417ffc4eb58cce4add1ea55c26.jpg?ratio=1.5</b>\n      <crop>698.5707688463846;0;1651.1264480258562;2032.17865714575</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/6.jpg\">\n    <background timeId=\"1269489065294\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xbfe1d2\"/>\n    <decorator timeId=\"14374469296052147943\" x=\"-5.67\" y=\"3.00\" width=\"5060.06\" height=\"4225.15\" fix=\"XY\" editable=\"0\" id=\"de1077756\" ext=\".png\"/>\n    <image timeId=\"14629723479378232383\" x=\"356.22\" y=\"-500.14\" width=\"1925.39\" height=\"2888.09\" crc32=\"0\">\n      <photoid>1883</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/55d6aab2431e49f5871ff9d1f1279601.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/55d6aab2431e49f5871ff9d1f1279601.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/55d6aab2431e49f5871ff9d1f1279601.jpg?ratio=0.67</b>\n      <crop>0;748.914546606896;1925.3915761027763;1390.2582709403723</crop>\n    </image>\n    <image timeId=\"14629723479378232385\" x=\"356.27\" y=\"938.56\" width=\"1925.39\" height=\"2888.09\" crc32=\"0\">\n      <photoid>1884</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/e5a0eabf58a945e5add0f44df5ee9620.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/e5a0eabf58a945e5add0f44df5ee9620.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/e5a0eabf58a945e5add0f44df5ee9620.jpg?ratio=0.67</b>\n      <crop>0;859.4145466068958;1925.3915761027763;1169.2582709403728</crop>\n    </image>\n    <image timeId=\"14629723479378232387\" x=\"1721.59\" y=\"249.06\" width=\"4070.43\" height=\"2713.62\" crc32=\"0\">\n      <photoid>1885</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/07e4fcd474504e88943b51e6e7effc63.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/07e4fcd474504e88943b51e6e7effc63.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/07e4fcd474504e88943b51e6e7effc63.jpg?ratio=1.5</b>\n      <crop>950.0784221958379;0;2170.2701537266844;2713.6179987455735</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/7.jpg\">\n    <background timeId=\"1269489065296\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xe4f3fb\"/>\n    <decorator timeId=\"14374468768542147923\" x=\"-2.96\" y=\"3.77\" width=\"5054.09\" height=\"4220.16\" fix=\"XY\" editable=\"0\" id=\"de1077752\" ext=\".png\"/>\n    <image timeId=\"14629723479378232389\" x=\"187.88\" y=\"172.45\" width=\"2195.03\" height=\"1463.35\" crc32=\"0\">\n      <photoid>1886</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/126c8d2c36a14b71958b8141dfa59691.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/126c8d2c36a14b71958b8141dfa59691.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/126c8d2c36a14b71958b8141dfa59691.jpg?ratio=1.5</b>\n      <crop>0;34.21239205653626;2195.0266961224725;1394.9263466352425</crop>\n    </image>\n    <image timeId=\"14629723479538232391\" x=\"114.34\" y=\"1601.66\" width=\"2342.21\" height=\"1561.48\" crc32=\"0\">\n      <photoid>1887</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d3fd4b3e53bd41bf9063e444af28ad2b.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d3fd4b3e53bd41bf9063e444af28ad2b.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d3fd4b3e53bd41bf9063e444af28ad2b.jpg?ratio=1.5</b>\n      <crop>73.59391191519603;0;2195.0266961224725;1561.476346635243</crop>\n    </image>\n    <image timeId=\"14629723479538232393\" x=\"2146.93\" y=\"206.70\" width=\"2283.60\" height=\"1522.40\" crc32=\"0\">\n      <photoid>1888</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/8a699c34ebf747fc9897230dd11cb6f3.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/8a699c34ebf747fc9897230dd11cb6f3.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/8a699c34ebf747fc9897230dd11cb6f3.jpg?ratio=1.5</b>\n      <crop>571.4073451164069;0;1140.7848239979414;1522.3996761538367</crop>\n    </image>\n    <image timeId=\"14629723479538232395\" x=\"3071.13\" y=\"1670.49\" width=\"2447.42\" height=\"1631.61\" crc32=\"0\">\n      <photoid>1889</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/fdac969f7ccf405394275f4ac6b78425.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/fdac969f7ccf405394275f4ac6b78425.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/fdac969f7ccf405394275f4ac6b78425.jpg?ratio=1.5</b>\n      <crop>612.3992015045707;0;1222.622917391008;1631.6142136000994</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/8.jpg\">\n    <background timeId=\"1269489065298\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xfadfeb\"/>\n    <decorator timeId=\"14374468971452147929\" x=\"2.50\" y=\"-1.65\" width=\"5051.49\" height=\"4217.99\" fix=\"XY\" editable=\"0\" id=\"de1077753\" ext=\".png\"/>\n    <image timeId=\"14629723479538232397\" x=\"255.75\" y=\"889.60\" width=\"1095.20\" height=\"1642.80\" crc32=\"0\">\n      <photoid>1890</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/5c37b65f23da44ab8b69df5df54abb49.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/5c37b65f23da44ab8b69df5df54abb49.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/5c37b65f23da44ab8b69df5df54abb49.jpg?ratio=0.67</b>\n      <crop>-67.90239999999994;0;1231.0048;1642.8</crop>\n    </image>\n    <image timeId=\"14629723479538232399\" x=\"1419.00\" y=\"889.40\" width=\"1.00\" height=\"1.50\" crc32=\"0\">\n      <photoid>1892</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/7d73705115e54f8cababb4cfb4147439.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/7d73705115e54f8cababb4cfb4147439.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/7d73705115e54f8cababb4cfb4147439.jpg?ratio=0.67</b>\n      <crop>0;0.25;1;1</crop>\n    </image>\n    <image timeId=\"14629723479538232401\" x=\"2170.35\" y=\"889.65\" width=\"2190.40\" height=\"1642.80\" crc32=\"0\">\n      <photoid>1927</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d9989d4ce76c49ca88c1b608ad32af68.jpg?ratio=1.33-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d9989d4ce76c49ca88c1b608ad32af68.jpg?ratio=1.33</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d9989d4ce76c49ca88c1b608ad32af68.jpg?ratio=1.33</b>\n      <crop>479.69759999999985;0;1231.0048;1642.8</crop>\n    </image>\n    <text timeId=\"14374474586122147378\" x=\"4038.75\" y=\"1655.55\" width=\"144.00\" height=\"22.00\" align=\"left\" color=\"0x0\">\n      <font>mnjzy</font>\n      <size>102</size>\n      <content><![CDATA[此处可编辑文字]]></content>\n    </text>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/9.jpg\">\n    <background timeId=\"1269489065300\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xd8eace\"/>\n    <decorator timeId=\"14374469131792147935\" x=\"-5.76\" y=\"-1.65\" width=\"5056.97\" height=\"4222.57\" fix=\"XY\" editable=\"0\" id=\"de1077754\" ext=\".png\"/>\n    <image timeId=\"14629723479538232403\" x=\"528.25\" y=\"627.43\" width=\"1609.12\" height=\"2145.49\" crc32=\"0\">\n      <photoid>1968</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/ab6b4179f36c42ddb5b6c891d3891084.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/ab6b4179f36c42ddb5b6c891d3891084.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/ab6b4179f36c42ddb5b6c891d3891084.jpg?ratio=0.75</b>\n      <crop>0;-6.821210263296962e-13;1609.118581574303;2145.491442099072</crop>\n    </image>\n    <image timeId=\"14629723479538232405\" x=\"2888.30\" y=\"627.43\" width=\"1609.12\" height=\"2145.49\" crc32=\"0\">\n      <photoid>1969</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/57b9d09d9a8a4f5abba531109a6c771a.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/57b9d09d9a8a4f5abba531109a6c771a.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/57b9d09d9a8a4f5abba531109a6c771a.jpg?ratio=0.75</b>\n      <crop>0;-6.821210263296962e-13;1609.118581574303;2145.491442099072</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/10.jpg\">\n    <background timeId=\"1269489065302\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xc9a8ce\"/>\n    <decorator timeId=\"14374469264452147941\" x=\"3.75\" y=\"-1.65\" width=\"5043.83\" height=\"4211.60\" fix=\"XY\" editable=\"0\" id=\"de1077755\" ext=\".png\"/>\n    <image timeId=\"14629723479538232407\" x=\"2692.70\" y=\"-523.43\" width=\"2114.82\" height=\"2819.76\" crc32=\"0\">\n      <photoid>1970</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/e7f4300a6bac4a0a8b0ac7d79fb1bb65.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/e7f4300a6bac4a0a8b0ac7d79fb1bb65.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/e7f4300a6bac4a0a8b0ac7d79fb1bb65.jpg?ratio=0.75</b>\n      <crop>0;658.5268140730617;2114.8168515396046;1502.702173906683</crop>\n    </image>\n    <image timeId=\"14629723479538232409\" x=\"2709.62\" y=\"1091.47\" width=\"2106.80\" height=\"2809.07\" crc32=\"0\">\n      <photoid>1971</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/26bb3caba86e4a05aed68373cbfbd6e8.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/26bb3caba86e4a05aed68373cbfbd6e8.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/26bb3caba86e4a05aed68373cbfbd6e8.jpg?ratio=0.75</b>\n      <crop>0;703.229141213803;2106.799323553434;1402.607482310306</crop>\n    </image>\n    <image timeId=\"14629723479538232411\" x=\"337.53\" y=\"349.73\" width=\"2026.72\" height=\"2702.29\" crc32=\"0\">\n      <photoid>1972</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/b63612ad0a6a403f9e6e35a25f215ec4.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/b63612ad0a6a403f9e6e35a25f215ec4.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/b63612ad0a6a403f9e6e35a25f215ec4.jpg?ratio=0.75</b>\n      <crop>0;-1.2020866482171186;2026.7180888943583;2704.694958488912</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/11.jpg\">\n    <background timeId=\"1269489065304\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xbfe1d2\"/>\n    <decorator timeId=\"14374469431752147947\" x=\"-5.67\" y=\"3.00\" width=\"5060.06\" height=\"4225.15\" fix=\"XY\" editable=\"0\" id=\"de1077756\" ext=\".png\"/>\n    <image timeId=\"14629723479538232413\" x=\"-490.04\" y=\"505.98\" width=\"3569.16\" height=\"2379.44\" crc32=\"0\">\n      <photoid>1987</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d6e74bafecf546a591c798a56caf8547.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d6e74bafecf546a591c798a56caf8547.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d6e74bafecf546a591c798a56caf8547.jpg?ratio=1.5</b>\n      <crop>893.0840834706645;0;1782.995576946765;2379.442495925396</crop>\n    </image>\n    <image timeId=\"14629723479538232415\" x=\"2000.96\" y=\"505.98\" width=\"3569.16\" height=\"2379.44\" crc32=\"0\">\n      <photoid>1989</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/c2e707f43db54d8fb96741f5d08d114a.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/c2e707f43db54d8fb96741f5d08d114a.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/c2e707f43db54d8fb96741f5d08d114a.jpg?ratio=1.5</b>\n      <crop>893.084083470664;0;1782.995576946765;2379.4424959253956</crop>\n    </image>\n  </page>\n</pages>', null, null, null, '时光慢递团队风采', '1000', null, null, '117', '1', null, null, null);
INSERT INTO `ecs_userproduct_yzldiy` VALUES ('6', '62', '00002', '1', './Uploads/userProductPreview/0482f9863afa28384dc442c8e7c83edb/0482f9863afa28384dc442c8e7c83edb.jpg', '<pages printDpi=\"300\" version=\"1.0\" client=\"Windows 10;zh-CN;WIN 21,0,0,216;Google Pepper;PlugIn\">\n  <page width=\"5476\" height=\"3555\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/0.jpg\">\n    <background timeId=\"1269489065282\" x=\"0.00\" y=\"0.00\" width=\"5476.00\" height=\"3555.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xef8f88\"/>\n    <decorator timeId=\"14374467741392147903\" x=\"1228.25\" y=\"9.25\" width=\"4248.62\" height=\"3547.60\" fix=\"XY\" editable=\"0\" id=\"de1078036\" ext=\".png\"/>\n    <decorator timeId=\"14374467842892147907\" x=\"-3026.60\" y=\"-0.90\" width=\"4248.62\" height=\"3547.60\" fix=\"XY\" editable=\"0\" id=\"de1078036\" ext=\".png\"/>\n    <image timeId=\"14629723569735414349\" x=\"3054.05\" y=\"495.00\" width=\"1928.78\" height=\"2571.71\" rotation=\"359.78\" crc32=\"0\">\n      <photoid>1757</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/67d32d7e6b4c48da89797c96b2467ffa.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/67d32d7e6b4c48da89797c96b2467ffa.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/67d32d7e6b4c48da89797c96b2467ffa.jpg?ratio=0.75</b>\n      <crop>0;-84.7631798801151;1928.781649896869;2741.235226289389</crop>\n      <frame id=\"fr321859\">\n        <cornerLT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerLB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n      </frame>\n    </image>\n    <image timeId=\"14629723569795414351\" x=\"1021.39\" y=\"1175.71\" width=\"908.80\" height=\"1211.73\" rotation=\"359.78\" crc32=\"0\">\n      <photoid>1758</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/4eaf9c7f606646868c4e669910b26d6c.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/4eaf9c7f606646868c4e669910b26d6c.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/4eaf9c7f606646868c4e669910b26d6c.jpg?ratio=0.75</b>\n      <crop>0;-39.93837062590899;908.7954994018022;1291.6040737875542</crop>\n      <frame id=\"fr321859\">\n        <cornerLT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerLB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRB offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n        <cornerRT offsetX=\"0\" offsetY=\"0\" pw=\"0\" ph=\"0\"/>\n      </frame>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/1.jpg\">\n    <background timeId=\"1269489065284\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\"\" color=\"0xf7f1df\"/>\n    <decorator timeId=\"14374467955302147909\" x=\"983.10\" y=\"3.00\" width=\"4074.95\" height=\"3402.59\" fix=\"XY\" editable=\"0\" id=\"de1077751\" ext=\".png\"/>\n    <decorator timeId=\"14374468083562147913\" x=\"-3044.65\" y=\"2.80\" width=\"4074.95\" height=\"3402.59\" fix=\"XY\" editable=\"0\" id=\"de1077751\" ext=\".png\"/>\n    <image timeId=\"14629723569825414353\" x=\"609.44\" y=\"142.60\" width=\"1136.32\" height=\"1515.10\" crc32=\"0\">\n      <photoid>1759</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/9d189f1eea9645a980eb777836fb6b41.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/9d189f1eea9645a980eb777836fb6b41.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/9d189f1eea9645a980eb777836fb6b41.jpg?ratio=0.75</b>\n      <crop>-47.33990000000006;0;1231.0048;1515.1</crop>\n    </image>\n    <image timeId=\"14629723569835414355\" x=\"1098.49\" y=\"1740.20\" width=\"1136.32\" height=\"1515.10\" crc32=\"0\">\n      <photoid>1760</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/271be5cab8a04ae28f4dc5afbc81e098.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/271be5cab8a04ae28f4dc5afbc81e098.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/271be5cab8a04ae28f4dc5afbc81e098.jpg?ratio=0.75</b>\n      <crop>-47.33990000000006;0;1231.0048;1515.1</crop>\n    </image>\n    <image timeId=\"14629723569845414357\" x=\"2709.57\" y=\"-506.13\" width=\"2106.80\" height=\"2809.07\" crc32=\"0\">\n      <photoid>1761</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/7314aeaf0ef843ad85b749c7bafa3c78.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/7314aeaf0ef843ad85b749c7bafa3c78.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/7314aeaf0ef843ad85b749c7bafa3c78.jpg?ratio=0.75</b>\n      <crop>0;703.229141213803;2106.799323553434;1402.607482310306</crop>\n    </image>\n    <image timeId=\"14629723569855414359\" x=\"2709.62\" y=\"1099.67\" width=\"2106.80\" height=\"2809.07\" crc32=\"0\">\n      <photoid>1762</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/30d5b468fe7d4d909f2e60cee1783713.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/30d5b468fe7d4d909f2e60cee1783713.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/30d5b468fe7d4d909f2e60cee1783713.jpg?ratio=0.75</b>\n      <crop>0;703.229141213803;2106.799323553434;1402.607482310306</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/2.jpg\">\n    <background timeId=\"1269489065286\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xe4f3fb\"/>\n    <decorator timeId=\"14374468473542147919\" x=\"-2.96\" y=\"3.77\" width=\"5054.09\" height=\"4220.16\" fix=\"XY\" editable=\"0\" id=\"de1077752\" ext=\".png\"/>\n    <image timeId=\"14629723569865414361\" x=\"229.98\" y=\"-498.85\" width=\"2079.75\" height=\"2773.00\" crc32=\"0\">\n      <photoid>1763</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/0835d8e3e331451d8a2bdb96e93bbc86.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/0835d8e3e331451d8a2bdb96e93bbc86.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/0835d8e3e331451d8a2bdb96e93bbc86.jpg?ratio=0.75</b>\n      <crop>0;607.272935926013;2079.7512173911928;1558.4557513362308</crop>\n    </image>\n    <image timeId=\"14629723569875414363\" x=\"229.98\" y=\"1136.19\" width=\"2079.75\" height=\"2773.00\" crc32=\"0\">\n      <photoid>1764</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/e574c77616cd4b7a8e0361f3d0e329e2.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/e574c77616cd4b7a8e0361f3d0e329e2.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/e574c77616cd4b7a8e0361f3d0e329e2.jpg?ratio=0.75</b>\n      <crop>0;607.2729359260129;2079.7512173911928;1558.455751336231</crop>\n    </image>\n    <image timeId=\"14629723569885414365\" x=\"2768.80\" y=\"431.20\" width=\"1893.63\" height=\"2524.84\" crc32=\"0\">\n      <photoid>1765</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d7a8c462f442478290113ec28637c208.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d7a8c462f442478290113ec28637c208.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d7a8c462f442478290113ec28637c208.jpg?ratio=0.75</b>\n      <crop>-1.1368683772161603e-13;0;1893.6275643582203;2524.8367524776268</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/3.jpg\">\n    <background timeId=\"1269489065288\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xfadfeb\"/>\n    <decorator timeId=\"14374468805172147925\" x=\"2.50\" y=\"-1.65\" width=\"5051.49\" height=\"4217.99\" fix=\"XY\" editable=\"0\" id=\"de1077753\" ext=\".png\"/>\n    <image timeId=\"14629723569895414367\" x=\"408.89\" y=\"449.87\" width=\"1681.43\" height=\"2522.14\" crc32=\"0\">\n      <photoid>1813</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/2751a15852e04662bfe4d599304664e9.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/2751a15852e04662bfe4d599304664e9.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/2751a15852e04662bfe4d599304664e9.jpg?ratio=0.67</b>\n      <crop>-105.08927436499516;0;1891.6069385699143;2522.142584759886</crop>\n    </image>\n    <image timeId=\"14629723569905414369\" x=\"2794.78\" y=\"334.87\" width=\"1961.97\" height=\"1307.98\" crc32=\"0\">\n      <photoid>1815</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/3cdd7eff123e41a7980a45a9dcd2c515.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/3cdd7eff123e41a7980a45a9dcd2c515.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/3cdd7eff123e41a7980a45a9dcd2c515.jpg?ratio=1.5</b>\n      <crop>35.88871293988109;0;1890.194545493155;1307.9813142486114</crop>\n    </image>\n    <image timeId=\"14629723569915414371\" x=\"2794.78\" y=\"1757.87\" width=\"1961.97\" height=\"1307.98\" crc32=\"0\">\n      <photoid>1816</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/68a22b4accfc4ee08ff479ef28ef13e9.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/68a22b4accfc4ee08ff479ef28ef13e9.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/68a22b4accfc4ee08ff479ef28ef13e9.jpg?ratio=1.5</b>\n      <crop>35.88871293988143;0;1890.1945454931547;1307.9813142486116</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/4.jpg\">\n    <background timeId=\"1269489065290\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xd8eace\"/>\n    <decorator timeId=\"14374469022932147931\" x=\"-5.76\" y=\"-1.65\" width=\"5056.97\" height=\"4222.57\" fix=\"XY\" editable=\"0\" id=\"de1077754\" ext=\".png\"/>\n    <image timeId=\"14629723569925414373\" x=\"-433.45\" y=\"898.95\" width=\"2464.20\" height=\"1642.80\" crc32=\"0\">\n      <photoid>1817</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/91eaeeed36db4d68aa5a57842f4f3cde.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/91eaeeed36db4d68aa5a57842f4f3cde.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/91eaeeed36db4d68aa5a57842f4f3cde.jpg?ratio=1.5</b>\n      <crop>616.5976000000002;0;1231.0048;1642.8</crop>\n    </image>\n    <image timeId=\"14629723569945414375\" x=\"798.25\" y=\"898.95\" width=\"2464.20\" height=\"1642.80\" crc32=\"0\">\n      <photoid>1818</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d8763e70d58046bf8e288361fae35f57.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d8763e70d58046bf8e288361fae35f57.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d8763e70d58046bf8e288361fae35f57.jpg?ratio=1.5</b>\n      <crop>616.0500000000002;0;1232.1;1642.8</crop>\n    </image>\n    <image timeId=\"14629723569955414377\" x=\"1648.10\" y=\"372.91\" width=\"3993.61\" height=\"2662.41\" crc32=\"0\">\n      <photoid>1821</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/0e8ddca4ce734d30945b377e388c315d.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/0e8ddca4ce734d30945b377e388c315d.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/0e8ddca4ce734d30945b377e388c315d.jpg?ratio=1.5</b>\n      <crop>998.4023762214489;0;1996.804752442901;2662.4063365905326</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/5.jpg\">\n    <background timeId=\"1269489065292\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xc9a8ce\"/>\n    <decorator timeId=\"14374469148542147937\" x=\"3.75\" y=\"-1.65\" width=\"5043.83\" height=\"4211.60\" fix=\"XY\" editable=\"0\" id=\"de1077755\" ext=\".png\"/>\n    <image timeId=\"14629723569965414379\" x=\"-353.64\" y=\"1019.90\" width=\"3048.27\" height=\"2032.18\" crc32=\"0\">\n      <photoid>1881</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/b447a0c3f5a9457dab3cc3e0a036e697.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/b447a0c3f5a9457dab3cc3e0a036e697.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/b447a0c3f5a9457dab3cc3e0a036e697.jpg?ratio=1.5</b>\n      <crop>698.5707688463846;0;1651.1264480258562;2032.1786571457503</crop>\n    </image>\n    <image timeId=\"14629723569975414381\" x=\"2001.71\" y=\"1019.95\" width=\"3048.27\" height=\"2032.18\" crc32=\"0\">\n      <photoid>1882</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/187bb4417ffc4eb58cce4add1ea55c26.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/187bb4417ffc4eb58cce4add1ea55c26.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/187bb4417ffc4eb58cce4add1ea55c26.jpg?ratio=1.5</b>\n      <crop>698.5707688463846;0;1651.1264480258562;2032.17865714575</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/6.jpg\">\n    <background timeId=\"1269489065294\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xbfe1d2\"/>\n    <decorator timeId=\"14374469296052147943\" x=\"-5.67\" y=\"3.00\" width=\"5060.06\" height=\"4225.15\" fix=\"XY\" editable=\"0\" id=\"de1077756\" ext=\".png\"/>\n    <image timeId=\"14629723569985414383\" x=\"356.22\" y=\"-500.14\" width=\"1925.39\" height=\"2888.09\" crc32=\"0\">\n      <photoid>1883</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/55d6aab2431e49f5871ff9d1f1279601.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/55d6aab2431e49f5871ff9d1f1279601.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/55d6aab2431e49f5871ff9d1f1279601.jpg?ratio=0.67</b>\n      <crop>0;748.914546606896;1925.3915761027763;1390.2582709403723</crop>\n    </image>\n    <image timeId=\"14629723570005414385\" x=\"356.27\" y=\"938.56\" width=\"1925.39\" height=\"2888.09\" crc32=\"0\">\n      <photoid>1884</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/e5a0eabf58a945e5add0f44df5ee9620.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/e5a0eabf58a945e5add0f44df5ee9620.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/e5a0eabf58a945e5add0f44df5ee9620.jpg?ratio=0.67</b>\n      <crop>0;859.4145466068958;1925.3915761027763;1169.2582709403728</crop>\n    </image>\n    <image timeId=\"14629723570015414387\" x=\"1721.59\" y=\"249.06\" width=\"4070.43\" height=\"2713.62\" crc32=\"0\">\n      <photoid>1885</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/07e4fcd474504e88943b51e6e7effc63.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/07e4fcd474504e88943b51e6e7effc63.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/07e4fcd474504e88943b51e6e7effc63.jpg?ratio=1.5</b>\n      <crop>950.0784221958379;0;2170.2701537266844;2713.6179987455735</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/7.jpg\">\n    <background timeId=\"1269489065296\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xe4f3fb\"/>\n    <decorator timeId=\"14374468768542147923\" x=\"-2.96\" y=\"3.77\" width=\"5054.09\" height=\"4220.16\" fix=\"XY\" editable=\"0\" id=\"de1077752\" ext=\".png\"/>\n    <image timeId=\"14629723570025414389\" x=\"187.88\" y=\"172.45\" width=\"2195.03\" height=\"1463.35\" crc32=\"0\">\n      <photoid>1886</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/126c8d2c36a14b71958b8141dfa59691.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/126c8d2c36a14b71958b8141dfa59691.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/126c8d2c36a14b71958b8141dfa59691.jpg?ratio=1.5</b>\n      <crop>0;34.21239205653626;2195.0266961224725;1394.9263466352425</crop>\n    </image>\n    <image timeId=\"14629723570035414391\" x=\"114.34\" y=\"1601.66\" width=\"2342.21\" height=\"1561.48\" crc32=\"0\">\n      <photoid>1887</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d3fd4b3e53bd41bf9063e444af28ad2b.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d3fd4b3e53bd41bf9063e444af28ad2b.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d3fd4b3e53bd41bf9063e444af28ad2b.jpg?ratio=1.5</b>\n      <crop>73.59391191519603;0;2195.0266961224725;1561.476346635243</crop>\n    </image>\n    <image timeId=\"14629723570045414393\" x=\"2146.93\" y=\"206.70\" width=\"2283.60\" height=\"1522.40\" crc32=\"0\">\n      <photoid>1888</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/8a699c34ebf747fc9897230dd11cb6f3.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/8a699c34ebf747fc9897230dd11cb6f3.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/8a699c34ebf747fc9897230dd11cb6f3.jpg?ratio=1.5</b>\n      <crop>571.4073451164069;0;1140.7848239979414;1522.3996761538367</crop>\n    </image>\n    <image timeId=\"14629723570055414395\" x=\"3071.13\" y=\"1670.49\" width=\"2447.42\" height=\"1631.61\" crc32=\"0\">\n      <photoid>1889</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/fdac969f7ccf405394275f4ac6b78425.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/fdac969f7ccf405394275f4ac6b78425.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/fdac969f7ccf405394275f4ac6b78425.jpg?ratio=1.5</b>\n      <crop>612.3992015045707;0;1222.622917391008;1631.6142136000994</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/8.jpg\">\n    <background timeId=\"1269489065298\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xfadfeb\"/>\n    <decorator timeId=\"14374468971452147929\" x=\"2.50\" y=\"-1.65\" width=\"5051.49\" height=\"4217.99\" fix=\"XY\" editable=\"0\" id=\"de1077753\" ext=\".png\"/>\n    <image timeId=\"14629723570065414397\" x=\"255.75\" y=\"889.60\" width=\"1095.20\" height=\"1642.80\" crc32=\"0\">\n      <photoid>1890</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/5c37b65f23da44ab8b69df5df54abb49.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/5c37b65f23da44ab8b69df5df54abb49.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/5c37b65f23da44ab8b69df5df54abb49.jpg?ratio=0.67</b>\n      <crop>-67.90239999999994;0;1231.0048;1642.8</crop>\n    </image>\n    <image timeId=\"14629723570085414399\" x=\"1419.00\" y=\"889.40\" width=\"1.00\" height=\"1.50\" crc32=\"0\">\n      <photoid>1892</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/7d73705115e54f8cababb4cfb4147439.jpg?ratio=0.67-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/7d73705115e54f8cababb4cfb4147439.jpg?ratio=0.67</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/7d73705115e54f8cababb4cfb4147439.jpg?ratio=0.67</b>\n      <crop>0;0.25;1;1</crop>\n    </image>\n    <image timeId=\"14629723570095414401\" x=\"2170.35\" y=\"889.65\" width=\"2190.40\" height=\"1642.80\" crc32=\"0\">\n      <photoid>1927</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d9989d4ce76c49ca88c1b608ad32af68.jpg?ratio=1.33-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d9989d4ce76c49ca88c1b608ad32af68.jpg?ratio=1.33</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d9989d4ce76c49ca88c1b608ad32af68.jpg?ratio=1.33</b>\n      <crop>479.69759999999985;0;1231.0048;1642.8</crop>\n    </image>\n    <text timeId=\"14374474586122147378\" x=\"4038.75\" y=\"1655.55\" width=\"144.00\" height=\"22.00\" align=\"left\" color=\"0x0\">\n      <font>mnjzy</font>\n      <size>102</size>\n      <content><![CDATA[此处可编辑文字]]></content>\n    </text>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/9.jpg\">\n    <background timeId=\"1269489065300\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xd8eace\"/>\n    <decorator timeId=\"14374469131792147935\" x=\"-5.76\" y=\"-1.65\" width=\"5056.97\" height=\"4222.57\" fix=\"XY\" editable=\"0\" id=\"de1077754\" ext=\".png\"/>\n    <image timeId=\"14629723570105414403\" x=\"528.25\" y=\"627.43\" width=\"1609.12\" height=\"2145.49\" crc32=\"0\">\n      <photoid>1968</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/ab6b4179f36c42ddb5b6c891d3891084.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/ab6b4179f36c42ddb5b6c891d3891084.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/ab6b4179f36c42ddb5b6c891d3891084.jpg?ratio=0.75</b>\n      <crop>0;-6.821210263296962e-13;1609.118581574303;2145.491442099072</crop>\n    </image>\n    <image timeId=\"14629723570115414405\" x=\"2888.30\" y=\"627.43\" width=\"1609.12\" height=\"2145.49\" crc32=\"0\">\n      <photoid>1969</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/57b9d09d9a8a4f5abba531109a6c771a.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/57b9d09d9a8a4f5abba531109a6c771a.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/57b9d09d9a8a4f5abba531109a6c771a.jpg?ratio=0.75</b>\n      <crop>0;-6.821210263296962e-13;1609.118581574303;2145.491442099072</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/10.jpg\">\n    <background timeId=\"1269489065302\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xc9a8ce\"/>\n    <decorator timeId=\"14374469264452147941\" x=\"3.75\" y=\"-1.65\" width=\"5043.83\" height=\"4211.60\" fix=\"XY\" editable=\"0\" id=\"de1077755\" ext=\".png\"/>\n    <image timeId=\"14629723570135414407\" x=\"2692.70\" y=\"-523.43\" width=\"2114.82\" height=\"2819.76\" crc32=\"0\">\n      <photoid>1970</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/e7f4300a6bac4a0a8b0ac7d79fb1bb65.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/e7f4300a6bac4a0a8b0ac7d79fb1bb65.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/e7f4300a6bac4a0a8b0ac7d79fb1bb65.jpg?ratio=0.75</b>\n      <crop>0;658.5268140730617;2114.8168515396046;1502.702173906683</crop>\n    </image>\n    <image timeId=\"14629723570145414409\" x=\"2709.62\" y=\"1091.47\" width=\"2106.80\" height=\"2809.07\" crc32=\"0\">\n      <photoid>1971</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/26bb3caba86e4a05aed68373cbfbd6e8.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/26bb3caba86e4a05aed68373cbfbd6e8.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/26bb3caba86e4a05aed68373cbfbd6e8.jpg?ratio=0.75</b>\n      <crop>0;703.229141213803;2106.799323553434;1402.607482310306</crop>\n    </image>\n    <image timeId=\"14629723570155414411\" x=\"337.53\" y=\"349.73\" width=\"2026.72\" height=\"2702.29\" crc32=\"0\">\n      <photoid>1972</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/b63612ad0a6a403f9e6e35a25f215ec4.jpg?ratio=0.75-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/b63612ad0a6a403f9e6e35a25f215ec4.jpg?ratio=0.75</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/b63612ad0a6a403f9e6e35a25f215ec4.jpg?ratio=0.75</b>\n      <crop>0;-1.2020866482171186;2026.7180888943583;2704.694958488912</crop>\n    </image>\n  </page>\n  <page width=\"5055\" height=\"3404\" preview=\"http://st1.yxp.126.net/img2012/flash2/images/preview/te1087768/11.jpg\">\n    <background timeId=\"1269489065304\" x=\"0.00\" y=\"0.00\" width=\"5055.00\" height=\"3404.00\" layer=\"2\" id=\"\" ext=\".jpg\" color=\"0xbfe1d2\"/>\n    <decorator timeId=\"14374469431752147947\" x=\"-5.67\" y=\"3.00\" width=\"5060.06\" height=\"4225.15\" fix=\"XY\" editable=\"0\" id=\"de1077756\" ext=\".png\"/>\n    <image timeId=\"14629723570165414413\" x=\"-490.04\" y=\"505.98\" width=\"3569.16\" height=\"2379.44\" crc32=\"0\">\n      <photoid>1987</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/d6e74bafecf546a591c798a56caf8547.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/d6e74bafecf546a591c798a56caf8547.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/d6e74bafecf546a591c798a56caf8547.jpg?ratio=1.5</b>\n      <crop>893.0840834706645;0;1782.995576946765;2379.442495925396</crop>\n    </image>\n    <image timeId=\"14629723570185414415\" x=\"2000.96\" y=\"505.98\" width=\"3569.16\" height=\"2379.44\" crc32=\"0\">\n      <photoid>1989</photoid>\n      <bh>0</bh>\n      <bw>0</bw>\n      <s>http://7xsxxm.com2.z0.glb.qiniucdn.com/c2e707f43db54d8fb96741f5d08d114a.jpg?ratio=1.5-mobile200</s>\n      <m>http://7xsxxm.com2.z0.glb.qiniucdn.com/c2e707f43db54d8fb96741f5d08d114a.jpg?ratio=1.5</m>\n      <b>http://7xsxxm.com2.z0.glb.qiniucdn.com/c2e707f43db54d8fb96741f5d08d114a.jpg?ratio=1.5</b>\n      <crop>893.084083470664;0;1782.995576946765;2379.4424959253956</crop>\n    </image>\n  </page>\n</pages>', null, null, null, '时光慢递团队风采', '1000', null, null, '73', '1', '141', '1462972364', '254');

-- ----------------------------
-- Table structure for `ecs_users`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_users`;
CREATE TABLE `ecs_users` (
  `user_id` mediumint(8) unsigned NOT NULL auto_increment,
  `email` varchar(60) NOT NULL default '',
  `user_name` varchar(60) NOT NULL default '',
  `password` varchar(32) NOT NULL default '',
  `question` varchar(255) NOT NULL default '',
  `answer` varchar(255) NOT NULL default '',
  `sex` tinyint(1) unsigned NOT NULL default '0',
  `birthday` date NOT NULL default '0000-00-00',
  `user_money` decimal(10,2) NOT NULL default '0.00',
  `frozen_money` decimal(10,2) NOT NULL default '0.00',
  `pay_points` int(10) unsigned NOT NULL default '0',
  `rank_points` int(10) unsigned NOT NULL default '0',
  `address_id` mediumint(8) unsigned NOT NULL default '0',
  `reg_time` int(10) unsigned NOT NULL default '0',
  `last_login` int(11) unsigned NOT NULL default '0',
  `last_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_ip` varchar(15) NOT NULL default '',
  `visit_count` smallint(5) unsigned NOT NULL default '0',
  `user_rank` tinyint(3) unsigned NOT NULL default '0',
  `is_special` tinyint(3) unsigned NOT NULL default '0',
  `ec_salt` varchar(10) default NULL,
  `salt` varchar(10) NOT NULL default '0',
  `parent_id` mediumint(9) NOT NULL default '0',
  `flag` tinyint(3) unsigned NOT NULL default '0',
  `alias` varchar(60) NOT NULL,
  `msn` varchar(60) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `mobile_phone` varchar(20) NOT NULL,
  `is_validated` tinyint(3) unsigned NOT NULL default '0',
  `credit_line` decimal(10,2) unsigned NOT NULL,
  `passwd_question` varchar(50) default NULL,
  `passwd_answer` varchar(255) default NULL,
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `parent_id` (`parent_id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_users
-- ----------------------------
INSERT INTO `ecs_users` VALUES ('3', '', '', '', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '', '0', '0', '0', null, '0', '0', '0', '', '', '', '', '', '', '0', '0.00', null, null);

-- ----------------------------
-- Table structure for `ecs_useruploadimg_yzldiy`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_useruploadimg_yzldiy`;
CREATE TABLE `ecs_useruploadimg_yzldiy` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `username` varchar(50) default NULL,
  `datatime` varchar(10) default NULL,
  `thumbImg` varchar(255) default NULL,
  `midImg` varchar(255) default NULL,
  `img` varchar(255) default NULL,
  `status` tinyint(1) default '1',
  `useCount` int(3) default '0',
  `bh` int(5) default '0',
  `bw` int(5) default '0',
  `photoid` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_useruploadimg_yzldiy
-- ----------------------------
INSERT INTO `ecs_useruploadimg_yzldiy` VALUES ('1', '255', '111', '2016-04-12', 'http://127.0.0.1/yzldiywww/yzldiy/Uploads/UserPhoto/111/2016-04-12/s/s_1460449260291.jpg', 'http://127.0.0.1/yzldiywww/yzldiy/Uploads/UserPhoto/111/2016-04-12/m/m_1460449260291.jpg', 'http://127.0.0.1/yzldiywww/yzldiy/Uploads/UserPhoto/111/2016-04-12/1460449260291.jpg', '1', '0', '400', '400', '1460449260291');
INSERT INTO `ecs_useruploadimg_yzldiy` VALUES ('2', '255', '111', '2016-04-12', 'http://127.0.0.1/yzldiywww/yzldiy/Uploads/UserPhoto/111/2016-04-12/s/s_1460449260207.jpg', 'http://127.0.0.1/yzldiywww/yzldiy/Uploads/UserPhoto/111/2016-04-12/m/m_1460449260207.jpg', 'http://127.0.0.1/yzldiywww/yzldiy/Uploads/UserPhoto/111/2016-04-12/1460449260207.jpg', '1', '0', '100', '100', '1460449260207');
INSERT INTO `ecs_useruploadimg_yzldiy` VALUES ('3', '255', '111', '2016-04-12', 'http://127.0.0.1/yzldiywww/yzldiy/Uploads/UserPhoto/111/2016-04-12/s/s_1460449260078.jpg', 'http://127.0.0.1/yzldiywww/yzldiy/Uploads/UserPhoto/111/2016-04-12/m/m_1460449260078.jpg', 'http://127.0.0.1/yzldiywww/yzldiy/Uploads/UserPhoto/111/2016-04-12/1460449260078.jpg', '1', '0', '42', '215', '1460449260078');

-- ----------------------------
-- Table structure for `ecs_user_account`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_account`;
CREATE TABLE `ecs_user_account` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `admin_user` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `add_time` int(10) NOT NULL default '0',
  `paid_time` int(10) NOT NULL default '0',
  `admin_note` varchar(255) NOT NULL,
  `user_note` varchar(255) NOT NULL,
  `process_type` tinyint(1) NOT NULL default '0',
  `payment` varchar(90) NOT NULL,
  `is_paid` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `is_paid` (`is_paid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_account
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_user_address`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_address`;
CREATE TABLE `ecs_user_address` (
  `address_id` mediumint(8) unsigned NOT NULL auto_increment,
  `address_name` varchar(50) NOT NULL default '',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `consignee` varchar(60) NOT NULL default '',
  `email` varchar(60) NOT NULL default '',
  `country` smallint(5) NOT NULL default '0',
  `province` smallint(5) NOT NULL default '0',
  `city` smallint(5) NOT NULL default '0',
  `district` smallint(5) NOT NULL default '0',
  `address` varchar(120) NOT NULL default '',
  `zipcode` varchar(60) NOT NULL default '',
  `tel` varchar(60) NOT NULL default '',
  `mobile` varchar(60) NOT NULL default '',
  `sign_building` varchar(120) NOT NULL default '',
  `best_time` varchar(120) NOT NULL default '',
  PRIMARY KEY  (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_address
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_user_bonus`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_bonus`;
CREATE TABLE `ecs_user_bonus` (
  `bonus_id` mediumint(8) unsigned NOT NULL auto_increment,
  `bonus_type_id` tinyint(3) unsigned NOT NULL default '0',
  `bonus_sn` bigint(20) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `used_time` int(10) unsigned NOT NULL default '0',
  `order_id` mediumint(8) unsigned NOT NULL default '0',
  `emailed` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`bonus_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_bonus
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_user_feed`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_feed`;
CREATE TABLE `ecs_user_feed` (
  `feed_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `value_id` mediumint(8) unsigned NOT NULL default '0',
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `feed_type` tinyint(1) unsigned NOT NULL default '0',
  `is_feed` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_feed
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_user_rank`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_rank`;
CREATE TABLE `ecs_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL auto_increment,
  `rank_name` varchar(30) NOT NULL default '',
  `min_points` int(10) unsigned NOT NULL default '0',
  `max_points` int(10) unsigned NOT NULL default '0',
  `discount` tinyint(3) unsigned NOT NULL default '0',
  `show_price` tinyint(1) unsigned NOT NULL default '1',
  `special_rank` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`rank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_user_rank
-- ----------------------------
INSERT INTO `ecs_user_rank` VALUES ('1', '注册用户', '0', '10000', '100', '1', '0');
INSERT INTO `ecs_user_rank` VALUES ('2', 'vip', '10000', '10000000', '95', '1', '0');
INSERT INTO `ecs_user_rank` VALUES ('3', '代销用户', '0', '0', '90', '0', '1');

-- ----------------------------
-- Table structure for `ecs_virtual_card`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_virtual_card`;
CREATE TABLE `ecs_virtual_card` (
  `card_id` mediumint(8) NOT NULL auto_increment,
  `goods_id` mediumint(8) unsigned NOT NULL default '0',
  `card_sn` varchar(60) NOT NULL default '',
  `card_password` varchar(60) NOT NULL default '',
  `add_date` int(11) NOT NULL default '0',
  `end_date` int(11) NOT NULL default '0',
  `is_saled` tinyint(1) NOT NULL default '0',
  `order_sn` varchar(20) NOT NULL default '',
  `crc32` varchar(12) NOT NULL default '0',
  PRIMARY KEY  (`card_id`),
  KEY `goods_id` (`goods_id`),
  KEY `car_sn` (`card_sn`),
  KEY `is_saled` (`is_saled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_virtual_card
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_volume_price`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_volume_price`;
CREATE TABLE `ecs_volume_price` (
  `price_type` tinyint(1) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `volume_number` smallint(5) unsigned NOT NULL default '0',
  `volume_price` decimal(10,2) NOT NULL default '0.00',
  PRIMARY KEY  (`price_type`,`goods_id`,`volume_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_volume_price
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_vote`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_vote`;
CREATE TABLE `ecs_vote` (
  `vote_id` smallint(5) unsigned NOT NULL auto_increment,
  `vote_name` varchar(250) NOT NULL default '',
  `start_time` int(11) unsigned NOT NULL default '0',
  `end_time` int(11) unsigned NOT NULL default '0',
  `can_multi` tinyint(1) unsigned NOT NULL default '0',
  `vote_count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_vote
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_vote_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_vote_log`;
CREATE TABLE `ecs_vote_log` (
  `log_id` mediumint(8) unsigned NOT NULL auto_increment,
  `vote_id` smallint(5) unsigned NOT NULL default '0',
  `ip_address` varchar(15) NOT NULL default '',
  `vote_time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`log_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_vote_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_vote_option`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_vote_option`;
CREATE TABLE `ecs_vote_option` (
  `option_id` smallint(5) unsigned NOT NULL auto_increment,
  `vote_id` smallint(5) unsigned NOT NULL default '0',
  `option_name` varchar(250) NOT NULL default '',
  `option_count` int(8) unsigned NOT NULL default '0',
  `option_order` tinyint(3) unsigned NOT NULL default '100',
  PRIMARY KEY  (`option_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_vote_option
-- ----------------------------

-- ----------------------------
-- Table structure for `ecs_wholesale`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wholesale`;
CREATE TABLE `ecs_wholesale` (
  `act_id` mediumint(8) unsigned NOT NULL auto_increment,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `goods_name` varchar(255) NOT NULL,
  `rank_ids` varchar(255) NOT NULL,
  `prices` text NOT NULL,
  `enabled` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY  (`act_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_wholesale
-- ----------------------------
