/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : bos

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2019-03-26 12:36:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cst_linkman
-- ----------------------------
DROP TABLE IF EXISTS `cst_linkman`;
CREATE TABLE `cst_linkman` (
  `lkm_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lkm_gender` char(1) DEFAULT NULL,
  `lkm_name` varchar(255) DEFAULT NULL,
  `lkm_phone` varchar(255) DEFAULT NULL,
  `lkm_cust_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`lkm_id`),
  KEY `FKh9yp1nql5227xxcopuxqx2e7q` (`lkm_cust_id`),
  CONSTRAINT `cst_linkman_ibfk_1` FOREIGN KEY (`lkm_cust_id`) REFERENCES `cst_customer` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cst_linkman
-- ----------------------------
INSERT INTO `cst_linkman` VALUES ('2', '女', '小红', '4546', '2');
INSERT INTO `cst_linkman` VALUES ('3', '男', '连接', '2165', '3');
INSERT INTO `cst_linkman` VALUES ('4', '男', '大发送端', '312', '4');
INSERT INTO `cst_linkman` VALUES ('5', '1', 'dan', '12546', '4');
INSERT INTO `cst_linkman` VALUES ('6', '男', '小明', '1634645', '1');
INSERT INTO `cst_linkman` VALUES ('7', '女', '笑话', '15431', '5');
