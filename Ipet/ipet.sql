/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : ipet

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2020-07-14 21:10:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(2) NOT NULL AUTO_INCREMENT,
  `re_name` varchar(10) NOT NULL,
  `re_phone` int(11) NOT NULL,
  `o_money` int(10) NOT NULL,
  `o_pay` int(2) NOT NULL,
  `re_address` varchar(20) NOT NULL,
  `user_id` int(2) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '1', '1', '199', '1', '广东', '6');
INSERT INTO `orders` VALUES ('2', '1', '1', '199', '1', '广东', '6');
INSERT INTO `orders` VALUES ('5', '1', '1', '100', '1', '广东', '6');
INSERT INTO `orders` VALUES ('3', '1', '1', '199', '0', '广东', '6');
INSERT INTO `orders` VALUES ('6', '1', '1', '100', '1', '广东', '6');
INSERT INTO `orders` VALUES ('7', '1', '1', '100', '1', '广东', '6');
INSERT INTO `orders` VALUES ('8', '张铭浩', '123', '199', '1', '梅录', '8');
INSERT INTO `orders` VALUES ('9', '2', '2', '199', '1', '2', '10');
INSERT INTO `orders` VALUES ('10', '2', '2', '199', '0', '2', '10');
INSERT INTO `orders` VALUES ('11', '刘德华', '123', '100', '1', '123', '11');
INSERT INTO `orders` VALUES ('12', '刘德华', '123', '100', '0', '123', '11');
INSERT INTO `orders` VALUES ('13', '刘德华', '123', '20', '0', '123', '11');
INSERT INTO `orders` VALUES ('14', '刘德华', '123', '20', '0', '123', '11');
INSERT INTO `orders` VALUES ('15', '刘德华', '123', '199', '0', '123', '11');
INSERT INTO `orders` VALUES ('16', '刘德华', '123', '199', '0', '123', '11');
INSERT INTO `orders` VALUES ('17', '刘德华', '123', '199', '0', '123', '11');
INSERT INTO `orders` VALUES ('18', '刘德华', '123', '199', '0', '123', '11');
INSERT INTO `orders` VALUES ('19', '刘德华', '123', '199', '0', '123', '11');
INSERT INTO `orders` VALUES ('20', '刘德华', '123', '199', '0', '123', '11');
INSERT INTO `orders` VALUES ('21', '刘德华', '123', '199', '0', '123', '11');
INSERT INTO `orders` VALUES ('22', '刘德华', '123', '199', '0', '123', '11');
INSERT INTO `orders` VALUES ('23', '刘德华', '123', '199', '0', '123', '11');
INSERT INTO `orders` VALUES ('24', '刘德华', '123', '199', '0', '123', '11');
INSERT INTO `orders` VALUES ('25', '刘德华', '123', '199', '0', '123', '11');

-- ----------------------------
-- Table structure for orders_info
-- ----------------------------
DROP TABLE IF EXISTS `orders_info`;
CREATE TABLE `orders_info` (
  `order_id` int(20) NOT NULL AUTO_INCREMENT,
  `product_id` int(20) NOT NULL,
  `buynum` int(20) NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders_info
-- ----------------------------
INSERT INTO `orders_info` VALUES ('1', '1', '1');
INSERT INTO `orders_info` VALUES ('2', '2', '1');
INSERT INTO `orders_info` VALUES ('3', '2', '1');
INSERT INTO `orders_info` VALUES ('6', '1', '1');
INSERT INTO `orders_info` VALUES ('5', '3', '1');
INSERT INTO `orders_info` VALUES ('7', '13', '1');
INSERT INTO `orders_info` VALUES ('8', '2', '1');
INSERT INTO `orders_info` VALUES ('9', '1', '1');
INSERT INTO `orders_info` VALUES ('10', '1', '1');
INSERT INTO `orders_info` VALUES ('11', '3', '1');
INSERT INTO `orders_info` VALUES ('12', '3', '1');
INSERT INTO `orders_info` VALUES ('13', '21', '1');
INSERT INTO `orders_info` VALUES ('14', '21', '1');
INSERT INTO `orders_info` VALUES ('15', '2', '1');
INSERT INTO `orders_info` VALUES ('16', '2', '1');
INSERT INTO `orders_info` VALUES ('17', '2', '1');
INSERT INTO `orders_info` VALUES ('18', '2', '1');
INSERT INTO `orders_info` VALUES ('19', '2', '1');
INSERT INTO `orders_info` VALUES ('20', '2', '1');
INSERT INTO `orders_info` VALUES ('21', '2', '1');
INSERT INTO `orders_info` VALUES ('22', '2', '1');
INSERT INTO `orders_info` VALUES ('23', '2', '1');
INSERT INTO `orders_info` VALUES ('24', '2', '1');
INSERT INTO `orders_info` VALUES ('25', '2', '1');

-- ----------------------------
-- Table structure for pet
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet` (
  `pet_id` int(2) NOT NULL,
  `pet` varchar(255) NOT NULL,
  `imgurl` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet
-- ----------------------------
INSERT INTO `pet` VALUES ('1', '狗', '/img and video/dog1.png', '牧羊犬');
INSERT INTO `pet` VALUES ('1', '狗', '/img and video/dog2.png', '二哈');
INSERT INTO `pet` VALUES ('1', '狗', '/img and video/dog3.png', '田园农家犬');
INSERT INTO `pet` VALUES ('1', '狗', '/img and video/dog4.png', '藏獒');
INSERT INTO `pet` VALUES ('1', '狗', '/img and video/dog5.png', '松狮');
INSERT INTO `pet` VALUES ('2', '猫', '/img and video/cat1.jpg', '橘猫');
INSERT INTO `pet` VALUES ('2', '猫', '/img and video/cat2.png', '布偶猫');
INSERT INTO `pet` VALUES ('2', '猫', '/img and video/cat3.png', '波斯猫');
INSERT INTO `pet` VALUES ('2', '猫', '/img and video/cat4.png', '埃及猫');
INSERT INTO `pet` VALUES ('2', '猫', '/img and video/cat5.png', '孟买猫');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` int(20) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(255) NOT NULL,
  `p_price` int(20) NOT NULL,
  `p_category` varchar(20) NOT NULL,
  `p_num` int(20) NOT NULL,
  `p_img` varchar(255) NOT NULL,
  `p_pet` varchar(2) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '纯正狗粮', '199', '粮食', '20', '/img and video/sale.png', '狗');
INSERT INTO `product` VALUES ('2', '纯正猫粮', '199', '粮食', '20', '/img and video/catfood.png', '猫');
INSERT INTO `product` VALUES ('3', '猫衣服', '100', '衣服', '20', '/img and video/catwear1.png', '猫');
INSERT INTO `product` VALUES ('4', '猫衣服', '100', '衣服', '20', '/img and video/catwear2.png', '猫');
INSERT INTO `product` VALUES ('5', '猫衣服', '100', '衣服', '20', '/img and video/catwear3.png', '猫');
INSERT INTO `product` VALUES ('6', '猫衣服', '100', '衣服', '20', '/img and video/catwear4.png', '猫');
INSERT INTO `product` VALUES ('7', '猫衣服', '100', '衣服', '20', '/img and video/catwear5.png', '猫');
INSERT INTO `product` VALUES ('8', '猫衣服', '100', '衣服', '20', '/img and video/catwear6.png', '猫');
INSERT INTO `product` VALUES ('9', '猫衣服', '100', '衣服', '20', '/img and video/catwear7.png', '猫');
INSERT INTO `product` VALUES ('10', '猫衣服', '100', '衣服', '20', '/img and video/catwear8.png', '猫');
INSERT INTO `product` VALUES ('11', '猫衣服', '100', '衣服', '20', '/img and video/catwear9.png', '猫');
INSERT INTO `product` VALUES ('12', '狗衣服', '100', '衣服', '20', '/img and video/dogwear1.png', '狗');
INSERT INTO `product` VALUES ('13', '狗衣服', '100', '衣服', '20', '/img and video/dogwear2.png', '狗');
INSERT INTO `product` VALUES ('14', '狗衣服', '100', '衣服', '20', '/img and video/dogwear3.png', '狗');
INSERT INTO `product` VALUES ('15', '狗衣服', '100', '衣服', '20', '/img and video/dogwear4.png', '狗');
INSERT INTO `product` VALUES ('16', '狗衣服', '100', '衣服', '20', '/img and video/dogwear5.png', '狗');
INSERT INTO `product` VALUES ('17', '狗衣服', '100', '衣服', '20', '/img and video/dogwear6.png', '狗');
INSERT INTO `product` VALUES ('18', '狗衣服', '100', '衣服', '20', '/img and video/dogwear7.png', '狗');
INSERT INTO `product` VALUES ('19', '狗衣服', '100', '衣服', '20', '/img and video/dogwear8.png', '狗');
INSERT INTO `product` VALUES ('20', '猫玩具', '20', '玩具', '2', '/img and video/catplay1.png', '猫');
INSERT INTO `product` VALUES ('21', '猫玩具', '20', '玩具', '2', '/img and video/catplay2.png', '猫');
INSERT INTO `product` VALUES ('22', '猫玩具', '20', '玩具', '2', '/img and video/catplay3.png', '猫');
INSERT INTO `product` VALUES ('23', '猫玩具', '20', '玩具', '2', '/img and video/catplay4.png', '猫');
INSERT INTO `product` VALUES ('24', '狗玩具', '20', '玩具', '2', '/img and video/dogplay1.png', '狗');
INSERT INTO `product` VALUES ('25', '狗玩具', '20', '玩具', '2', '/img and video/dogplay2.png', '狗');
INSERT INTO `product` VALUES ('26', '狗玩具', '20', '玩具', '2', '/img and video/dogplay3.png', '狗');
INSERT INTO `product` VALUES ('27', '狗玩具', '20', '玩具', '2', '/img and video/dogplay4.png', '狗');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` int(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', '123', '123', '123');
INSERT INTO `user` VALUES ('2', '12313', '213123', '121312', '2121');
INSERT INTO `user` VALUES ('3', '123', '123', '123', '123');
INSERT INTO `user` VALUES ('4', '123', '123', '123', '123');
INSERT INTO `user` VALUES ('5', '1234', '123', '123', '广东');
INSERT INTO `user` VALUES ('6', '1', '123', '1', '');
INSERT INTO `user` VALUES ('7', 'zmh', '123', '123', '梅录');
INSERT INTO `user` VALUES ('8', '张铭浩', '123', '123', '梅录');
INSERT INTO `user` VALUES ('9', '1', '1', '1', '1');
INSERT INTO `user` VALUES ('10', '2', '2', '2', '2');
INSERT INTO `user` VALUES ('11', '刘德华', '123', '123', '123');
