/*
 Navicat Premium Data Transfer

 Source Server         : mysqlrootconn
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : jumpstart

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 16/09/2020 18:46:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (3);

-- ----------------------------
-- Table structure for mentor_associate_mapping
-- ----------------------------
DROP TABLE IF EXISTS `mentor_associate_mapping`;
CREATE TABLE `mentor_associate_mapping`  (
  `mentor_id` int(11) NULL DEFAULT NULL,
  `associate_id` int(11) NULL DEFAULT NULL,
  INDEX `mentor_id`(`mentor_id`) USING BTREE,
  INDEX `associate_id`(`associate_id`) USING BTREE,
  CONSTRAINT `mentor_associate_mapping_ibfk_1` FOREIGN KEY (`mentor_id`) REFERENCES `mentorregistration` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `mentor_associate_mapping_ibfk_2` FOREIGN KEY (`associate_id`) REFERENCES `mentorregistration` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mentor_associate_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for mentorregistration
-- ----------------------------
DROP TABLE IF EXISTS `mentorregistration`;
CREATE TABLE `mentorregistration`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `organization` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area_of_interest` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exp_mentor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mentorregistration
-- ----------------------------
INSERT INTO `mentorregistration` VALUES (4, 'Basukinath', 'ADMIN', 'bsknath@gmail.com', '12345', 'ML', 'SDE', 'NO IMAGE', NULL, NULL);
INSERT INTO `mentorregistration` VALUES (5, 'Shesho', 'MENTOR', 'sheshanath@gmail.com', '12345', 'JAVA', 'SDE', 'NO IMAGE', NULL, NULL);
INSERT INTO `mentorregistration` VALUES (6, 'Nandani', 'ASSOCIATE', 'sheshanath@gmail.com', '12345', 'JAVA', 'SDE', 'NO IMAGE', 'ML', 'xyz');
INSERT INTO `mentorregistration` VALUES (7, 'PRATIBHA', 'ASSOCIATE', 'PRATIBHA@GMAIL.COM', '12345', NULL, NULL, 'NO IMAGE', NULL, NULL);
INSERT INTO `mentorregistration` VALUES (8, 'Manish', 'ADMIN', 'Manish@gmail.com', '12345', 'ML', 'SDE', 'NO IMAGE', NULL, NULL);
INSERT INTO `mentorregistration` VALUES (9, 'Shesho', 'MENTOR', 'sheshanath@gmail.com', '12345', 'JAVA', 'SDE', 'NO IMAGE', NULL, NULL);
INSERT INTO `mentorregistration` VALUES (10, 'Nandani', 'ASSOCIATE', 'sheshanath@gmail.com', '12345', 'JAVA', 'SDE', 'NO IMAGE', 'ML', 'xyz');

SET FOREIGN_KEY_CHECKS = 1;
