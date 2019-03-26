/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : bos

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2019-03-26 12:35:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cst_customer
-- ----------------------------
DROP TABLE IF EXISTS `cst_customer`;
CREATE TABLE `cst_customer` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(255) DEFAULT NULL,
  `cust_linkman` varchar(255) DEFAULT NULL,
  `cust_phone` varchar(255) DEFAULT NULL,
  `cust_source` varchar(255) DEFAULT NULL,
  `cust_industry` varchar(255) DEFAULT NULL,
  `cust_level` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cust_id`),
  KEY `FKdrn66dd3flbgk5d4josio7u3b` (`cust_source`),
  KEY `FKp3owt2fpfocgq4vfbgrrx1qlh` (`cust_industry`),
  KEY `FK98ydwg9gwqf7pps13y9idlb89` (`cust_level`),
  CONSTRAINT `cst_customer_ibfk_1` FOREIGN KEY (`cust_level`) REFERENCES `cst_basedict` (`dict_id`),
  CONSTRAINT `cst_customer_ibfk_2` FOREIGN KEY (`cust_source`) REFERENCES `cst_basedict` (`dict_id`),
  CONSTRAINT `cst_customer_ibfk_3` FOREIGN KEY (`cust_industry`) REFERENCES `cst_basedict` (`dict_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cst_customer
-- ----------------------------
INSERT INTO `cst_customer` VALUES ('1', '阿里爸爸', '', '18346185', '4', '3', '9');
INSERT INTO `cst_customer` VALUES ('2', '腾讯', '', '5344884', '5', '3', '9');
INSERT INTO `cst_customer` VALUES ('3', '百度', '', '54631', '4', '2', '9');
INSERT INTO `cst_customer` VALUES ('4', '头条', '', '4561623', '5', '2', '8');
INSERT INTO `cst_customer` VALUES ('5', '网易', '', '4154', '4', '1', '8');
