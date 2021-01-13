/*
 Navicat Premium Data Transfer

 Source Server         : 123456
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 13/01/2021 12:06:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `classes` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `score` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 'mini', 'mini', 'mini', '99');
INSERT INTO `student` VALUES (2, 'mini', 'mini', 'mini', '99');
INSERT INTO `student` VALUES (3, 'zs', '1', 's3', '85');
INSERT INTO `student` VALUES (4, 'ls', '2', 's1', '78');
INSERT INTO `student` VALUES (5, 'ls', '2', 's2', '95');
INSERT INTO `student` VALUES (6, 'ls', '2', 's3', '79');
INSERT INTO `student` VALUES (7, 'ww', '1', 's1', '75');
INSERT INTO `student` VALUES (8, 'ww', '1', 's2', '85');
INSERT INTO `student` VALUES (9, 'ww', '1', 's3', '65');
INSERT INTO `student` VALUES (10, 'mini', 'mini', 'mini', '99');
INSERT INTO `student` VALUES (11, 'jack', '1', 's2', '85');
INSERT INTO `student` VALUES (12, 'jack', '1', 's3', '75');

SET FOREIGN_KEY_CHECKS = 1;
