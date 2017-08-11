/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-08-12 05:58:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ads
-- ----------------------------
DROP TABLE IF EXISTS `ads`;
CREATE TABLE `ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ads_name` varchar(255) DEFAULT NULL,
  `ads_type` varchar(20) DEFAULT NULL,
  `announce_no` int(11) DEFAULT NULL,
  `click_no` int(11) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `show_rate` decimal(9,8) DEFAULT NULL,
  `validate_time` bigint(20) DEFAULT NULL,
  `statuse` varchar(20) DEFAULT NULL,
  `needs_origin` varchar(255) DEFAULT NULL,
  `feedback_score` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ads
-- ----------------------------
INSERT INTO `ads` VALUES ('5', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ads` VALUES ('6', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ads` VALUES ('7', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ads` VALUES ('8', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ads` VALUES ('9', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ads` VALUES ('10', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ads` VALUES ('11', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ads` VALUES ('12', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ads` VALUES ('13', 's', 's', null, null, '', null, null, '', '', null, '');
INSERT INTO `ads` VALUES ('14', 's', '', null, null, '', null, null, '', '', null, '');

-- ----------------------------
-- Table structure for oper
-- ----------------------------
DROP TABLE IF EXISTS `oper`;
CREATE TABLE `oper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of oper
-- ----------------------------
INSERT INTO `oper` VALUES ('1', 'admin', '123456', '111@11.com');
