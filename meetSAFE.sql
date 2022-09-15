/*
 Navicat MySQL Data Transfer

 Source Server         : local3306
 Source Server Type    : MySQL
 Source Server Version : 80024
 Source Host           : localhost:3306
 Source Schema         : ssm_sms

 Target Server Type    : MySQL
 Target Server Version : 80024
 File Encoding         : 65001

 Date: 17/05/2021 09:05:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `portrait_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 156 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES (1, 'admin', 'admin', 'admin@syr.edu', 'chongqing', NULL);
INSERT INTO `tb_admin` VALUES (155, 'test_subject', 'demo114514', 'lin25@syr.edu', '114514', NULL);

-- ----------------------------
-- Table structure for tb_student
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student`  (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `telephone` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `portrait_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`student_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_student
-- ----------------------------
INSERT INTO `tb_student` VALUES (7, 'user', NULL, '12345', 'shixiong@syr.edu', NULL, NULL, NULL);
INSERT INTO `tb_student` VALUES (8, 'Wanggang', NULL, '12345', 'Wanggang@syr.edu', NULL, NULL, NULL);
INSERT INTO `tb_student` VALUES (9, 'Machao', NULL, '12345', 'Machao@syr.edu', NULL, NULL, NULL);
INSERT INTO `tb_student` VALUES (10, 'Maria', NULL, '12345', 'Maria@syr.edu', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_activity
-- ----------------------------
DROP TABLE IF EXISTS `tbl_activity`;
CREATE TABLE `tbl_activity`  (
  `activity_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NULL DEFAULT NULL,
  `activity_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `max_people` int NULL DEFAULT NULL,
  `cur_people` int NULL DEFAULT 1,
  `place_id` int NULL DEFAULT NULL,
  `date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `open_status` int NULL DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `place_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `category_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `student_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`activity_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 192 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_activity
-- ----------------------------
INSERT INTO `tbl_activity` VALUES (123, 234, 'Soccer', 13, 1, 34, '2021-08-19', 1, 'Nice weather, Let\'s play!', 'UIC West Field', 'Sports', 7);
INSERT INTO `tbl_activity` VALUES (145, 235, 'party', 15, 3, 31, '2021-07-14', 1, 'Having fun in my birthday party, everyone is welcomed!', 'Tomhad Department', 'Party', 8);
INSERT INTO `tbl_activity` VALUES (146, 3, 'Jim talk show', 12, 2, 43, '2021-07-01', 1, 'I need something new to challenge me. Enjoy my show!!', 'Forum Statium', 'Show', 9);
INSERT INTO `tbl_activity` VALUES (190, NULL, 'My Sushi', NULL, 13, NULL, '2021-06-21', 1, 'Sushi is the most famous Japanese dish outside of Japan!!!', 'collurton ST. 1162', 'Food', 10);
INSERT INTO `tbl_activity` VALUES (191, NULL, 'new', NULL, 0, NULL, '05-13-2021', 0, 'Hello', 'The west field in Syracuse', 'soccer', 7);

-- ----------------------------
-- Table structure for tbl_category
-- ----------------------------
DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category`  (
  `category_id` int NULL DEFAULT NULL,
  `category_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_category
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_healthinfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_healthinfo`;
CREATE TABLE `tbl_healthinfo`  (
  `healthInfo_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NULL DEFAULT NULL,
  `update_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `upload_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 0,
  `image` mediumblob NULL,
  PRIMARY KEY (`healthInfo_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_healthinfo
-- ----------------------------
INSERT INTO `tbl_healthinfo` VALUES (2, 8, NULL, NULL, NULL, 0, NULL);
INSERT INTO `tbl_healthinfo` VALUES (3, 9, NULL, NULL, NULL, 0, NULL);
INSERT INTO `tbl_healthinfo` VALUES (4, 10, NULL, NULL, NULL, 0, NULL);

-- ----------------------------
-- Table structure for tbl_person_activity
-- ----------------------------
DROP TABLE IF EXISTS `tbl_person_activity`;
CREATE TABLE `tbl_person_activity`  (
  `person_activity_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NULL DEFAULT NULL,
  `activity_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`person_activity_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_person_activity
-- ----------------------------
INSERT INTO `tbl_person_activity` VALUES (11, 7, 190);
INSERT INTO `tbl_person_activity` VALUES (12, 7, 123);
INSERT INTO `tbl_person_activity` VALUES (13, 7, 145);

SET FOREIGN_KEY_CHECKS = 1;