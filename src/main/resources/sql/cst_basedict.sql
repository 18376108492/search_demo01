/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : bos

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2019-03-26 12:35:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cst_basedict
-- ----------------------------
DROP TABLE IF EXISTS `cst_basedict`;
CREATE TABLE `cst_basedict` (
  `dict_id` varchar(255) NOT NULL,
  `dict_type_code` varchar(255) DEFAULT NULL,
  `dict_type_name` varchar(255) DEFAULT NULL,
  `dict_item_name` varchar(255) DEFAULT NULL,
  `dict_memo` varchar(255) DEFAULT NULL,
  `dict_sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cst_basedict
-- ----------------------------
INSERT INTO `cst_basedict` VALUES ('1', '001', '客户行业', '教育事业', '1', '1');
INSERT INTO `cst_basedict` VALUES ('2', '001', '客户行业', '医疗事业', '1', '2');
INSERT INTO `cst_basedict` VALUES ('3', '001', '客户行业', '服务事业', '1', '3');
INSERT INTO `cst_basedict` VALUES ('4', '002', '客户信息来源', '电话营销', '2', '1');
INSERT INTO `cst_basedict` VALUES ('5', '002', '客户信息来源', '中介', '1', '1');
INSERT INTO `cst_basedict` VALUES ('6', '003', '公司性质', '国企', '3', '2');
INSERT INTO `cst_basedict` VALUES ('7', '003', '公司性质', '私营', '4', '1');
INSERT INTO `cst_basedict` VALUES ('8', '004', '客户级别', '普通', '2', '1');
INSERT INTO `cst_basedict` VALUES ('9', '004', '客户级别', 'VIP', '1', '2');
