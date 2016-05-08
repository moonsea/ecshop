-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016 年 05 月 08 日 07:55
-- 服务器版本: 5.0.90
-- PHP 版本: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `ecs`
--

-- --------------------------------------------------------

--
-- 表的结构 `ecs_order_info`
--
-- 创建时间: 2016 年 05 月 08 日 13:45
-- 最后更新: 2016 年 05 月 08 日 15:11
--

DROP TABLE IF EXISTS `ecs_order_info`;
CREATE TABLE IF NOT EXISTS `ecs_order_info` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `ecs_order_info`
--

INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `user_name`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`, `invitation_code`, `print_status`, `download_status`) VALUES
(1, '2', 3, '', 0, 0, 2, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, '', 0, 0, 1461381526, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00, '13151', 0, 0),
(2, '2016050356508', 0, '', 0, 0, 0, '的士判官', 1, 2, 52, 513, '记得送给浮生给你发的是； ', '100048', '13810332931', '13810332931', '13810332931@163.com', '12：00', '都是高手多伦多峰会', '', 1, 'EMS 国内邮政特快专递', 1, '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', 110.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 130.00, 0, '本站', 1462231565, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00, NULL, 0, 0),
(3, '2016050334382', 1, '', 0, 0, 0, 'fiodos', 1, 2, 52, 513, 'disogisogosi', '100048', '13810332931', '13810332931', '13810332931@163.com', '1', '的四大护法', '丑八怪vfdsdl', 1, 'EMS 国内邮政特快专递', 1, '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', 110.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 130.00, 0, '本站', 1462232185, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00, NULL, 0, 0),
(4, '2016050360173', 73, '', 0, 0, 0, 'KingDragon', 1, 2, 52, 513, 'sgaosgslg', '100048', '13810332931', '13810332931', '100048@163.com', '12：00', 'fdgjhdfdsghf', '', 1, 'EMS 国内邮政特快专递', 1, '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', 110.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 130.00, 0, '本站', 1462232847, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00, NULL, 0, 0),
(5, '2016050388087', 73, '', 0, 0, 0, 'KingDragon', 1, 2, 52, 513, 'dshsdfhsdhz', '100048', '13810332931', '13810332931', '13810332931@163.com', '12：00', 'fdshdfhsd', '俄式测试测试', 1, 'EMS 国内邮政特快专递', 1, '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', 110.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 130.00, 0, '本站', 1462234485, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00, NULL, 0, 0),
(6, '2016050327378', 73, '', 1, 0, 0, 'fjhh', 1, 2, 52, 513, 'sgaosgslg', '100048', '13810332931', '13810332931', '13810332931@163.com', '12：00', 'sadsgsdhsd', '', 1, 'EMS 国内邮政特快专递', 1, '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', 110.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 130.00, 0, '本站', 1462235152, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00, NULL, 1, 1),
(7, '2016050330995', 73, '', 1, 0, 0, 'KingDragon', 1, 2, 52, 512, 'sgaosgslg', '100048', '13810332931', '13810332931', '13810332931@163.com', '12：00', 'sdfsbbfdsfds', '', 1, 'EMS 国内邮政特快专递', 1, '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', 110.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 130.00, 0, '本站', 1462235426, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00, NULL, 1, 1),
(8, '2016050332815', 73, '', 1, 1, 0, 'KingDragon', 1, 2, 52, 513, 'sgaosgslg', '100048', '13810332931', '13810332931', '13810332931@163.com', '12：00', 'sgdnklgdhlbags', '', 1, 'EMS 国内邮政特快专递', 1, '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', 110.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 130.00, 0, '本站', 1462251627, 0, 0, 0, 0, 0, 0, '1231', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00, NULL, 1, 1),
(9, '2016050332894', 73, '', 0, 0, 0, 'KingDragon', 1, 2, 52, 513, 'sgaosgslg', '100048', '13810332931', '13810332931', '13810332931@163.com', '12：00', 'dsgsgfdhsdghsh', '', 1, 'EMS 国内邮政特快专递', 1, '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', 0.01, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 20.01, 0, '本站', 1462251769, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00, NULL, 0, 0),
(10, '2016050380926', 73, '', 1, 0, 2, 'KingDragon', 1, 2, 52, 513, 'sgaosgslg', '100048', '13810332931', '13810332931', '13810332931@163.com', '12：00', 'sdfsbbfdsfds', '', 1, 'EMS 国内邮政特快专递', 1, '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', 0.01, 0.00, 0.00, 0.00, 0.00, 0.00, 0.01, 0.00, 0, 0.00, 0.00, 0.00, 0, '本站', 1462251936, 1462251967, 1462251967, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00, NULL, 0, 0),
(11, '2016050494669', 73, '', 1, 0, 2, 'KingDragon', 1, 2, 52, 513, 'qsqdsewdqe', '100048', '13810332931', '13810332931', '13810332931@163.com', '12：00', 'hjsigcdwhgbcidwogc', '', 1, 'EMS 国内邮政特快专递', 1, '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', 0.01, 0.00, 0.00, 0.00, 0.00, 0.00, 0.01, 0.00, 0, 0.00, 0.00, 0.00, 0, '本站', 1462341914, 1462342023, 1462342023, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00, NULL, 0, 0),
(12, '2016050420238', 73, '', 0, 0, 0, 'KingDragon', 1, 2, 52, 509, '1', '100048', '13810332931', '13810332931', '13810332931@163.com', '12：00', 'dsgsfgs', '', 1, 'EMS 国内邮政特快专递', 1, '<font color="#FF0000">支付宝</font>', '等待所有商品备齐后再发', '', '', '', '', '', '', 0.01, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.01, 0, '本站', 1462344302, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', 0.00, 0, 0, 0.00, NULL, 0, 0);
