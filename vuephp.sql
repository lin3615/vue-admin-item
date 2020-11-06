/*
Navicat MySQL Data Transfer

Source Server         : wamp
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : vuephp

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2020-11-07 01:01:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `feedback`
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `create_at` int(11) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES ('1', '2', 'lin3615', '1604223414', 'sdfasdf');

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `money` float(10,2) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '林小二', '110.00', '广西壮族自治区河池市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('2', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('3', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('4', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('5', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('6', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('7', '阿一7', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('8', '阿二8', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('9', '阿三9', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('10', '陈四10', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('11', '阿五11', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('12', '陈六12', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('13', '阿一13', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('14', '阿二14', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('15', '阿三15', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('16', '陈四16', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('17', '阿五17', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('18', '陈六18', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('19', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('20', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('21', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('22', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('23', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('24', '陈六24', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('25', '阿一25', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('26', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('27', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('28', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('29', '阿五29', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('30', '陈六30', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('31', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('32', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('33', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('34', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('35', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('36', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('37', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('38', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('39', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('40', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('41', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('42', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('43', '阿一43', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('44', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('45', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('46', '陈四46', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('47', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('48', '陈六48', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('49', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('50', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('51', '阿三51', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('52', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('53', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('54', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('55', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('56', '阿二56', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('57', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('58', '陈四58', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('59', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('60', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('61', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('62', '阿二62', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('63', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('64', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('65', '阿五65', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('66', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('67', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('68', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('69', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('70', '陈四70', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('71', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('72', '陈六72', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('73', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('74', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('75', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('76', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('77', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('78', '陈六78', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('79', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('80', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('81', '阿三81', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('82', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('83', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('84', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('85', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('86', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('87', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('88', '陈四88', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('89', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('90', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('91', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('92', '阿二92', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('93', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('94', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('95', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('96', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('97', '阿一97', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('98', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('99', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('100', '陈四100', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('101', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('102', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('103', '阿一103', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('104', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('105', '阿三105', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('106', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('107', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('108', '陈六108', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('109', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('110', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('111', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('112', '陈四112', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('113', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('114', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('115', '阿一115', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('116', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('117', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('118', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('119', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('120', '陈六120', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('121', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('122', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('123', '阿三123', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('124', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('125', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('126', '陈六126', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('127', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('128', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('129', '阿三129', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('130', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('131', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('132', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('133', '阿一133', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('134', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('135', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('136', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('137', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('138', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('139', '阿一139', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('140', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('141', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('142', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('143', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('144', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('145', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('146', '阿二146', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('147', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('148', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('149', '阿五149', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('150', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('151', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('152', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('153', '阿三153', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('154', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('155', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('156', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('157', '阿一157', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('158', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('159', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('160', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('161', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('162', '陈六162', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('163', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('164', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('165', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('166', '陈四166', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('167', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('168', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('169', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('170', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('171', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('172', '陈四172', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('173', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('174', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('175', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('176', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('177', '阿三177', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('178', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('179', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('180', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('181', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('182', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('183', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('184', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('185', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('186', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('187', '阿一', '110.00', '广东省广州市', '成功', '2020-11-01', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('188', '阿二', '100.00', '广东省深圳市', '成功', '2020-11-02', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('189', '阿三', '90.00', '广东省珠海市', '失败', '2020-11-03', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('190', '陈四', '80.00', '广东省韶关市', '失败', '2020-11-04', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('191', '阿五', '70.00', '广西壮族自治区南宁市', '成功', '2020-11-06', 'https://gitee.com/static/images/logo-black.svg');
INSERT INTO `test` VALUES ('192', '陈六', '60.00', '广西壮族自治区柳州市', '成功', '2020-11-05', 'https://gitee.com/static/images/logo-black.svg');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `create_at` int(11) DEFAULT NULL,
  `token` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'lin361500', 'ea1fea5e2471b26940c22050bb0f00bf', null, null, null, '65552c9a9a51f3f8b9f2e7f0eb3c451c');
INSERT INTO `user` VALUES ('2', 'lin3615', 'ea1fea5e2471b26940c22050bb0f00bf', '0', '', '1604216474', 'bf1938806154cafab294d4f28dbda52e');
