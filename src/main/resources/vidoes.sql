/*
 Navicat Premium Data Transfer

 Source Server         : ssss
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : vidoes

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 12/06/2018 19:08:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pickvideo
-- ----------------------------
DROP TABLE IF EXISTS `pickvideo`;
CREATE TABLE `pickvideo`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `modifyTime` datetime(0) NULL DEFAULT NULL,
  `haveCollect` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `haveSee` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` double(255, 0) NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `modifyTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '2', 3, '2018-06-10 13:07:18', '2018-06-10 13:07:22');
INSERT INTO `user` VALUES (2, NULL, 20, '2018-06-10 13:35:46', '2018-06-10 13:35:46');
INSERT INTO `user` VALUES (3, NULL, 20, '2018-06-10 13:39:28', '2018-06-10 13:39:28');
INSERT INTO `user` VALUES (4, NULL, 20, '2018-06-10 13:39:31', '2018-06-10 13:39:31');
INSERT INTO `user` VALUES (5, NULL, 20, '2018-06-10 13:41:53', '2018-06-10 13:41:53');
INSERT INTO `user` VALUES (6, NULL, 20, '2018-06-10 13:41:57', '2018-06-10 13:41:57');
INSERT INTO `user` VALUES (7, NULL, 20, '2018-06-10 13:41:58', '2018-06-10 13:41:58');
INSERT INTO `user` VALUES (8, NULL, 20, '2018-06-10 13:41:59', '2018-06-10 13:41:59');

-- ----------------------------
-- Table structure for user_data_relation
-- ----------------------------
DROP TABLE IF EXISTS `user_data_relation`;
CREATE TABLE `user_data_relation`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `itemtype` smallint(1) NOT NULL COMMENT '1:jira,2:jenkins,3:cicd,4:monitor',
  `itemid` int(10) NULL DEFAULT NULL COMMENT '任务对应的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for usergroup
-- ----------------------------
DROP TABLE IF EXISTS `usergroup`;
CREATE TABLE `usergroup`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1 超级用户（所有的用户行为的权限）；2 高级用户（可上传视频，可对自己上传的视频进行删除，可收藏视频，可观看视频）；3 普通用户（对视频进行观看，可对视频进收藏）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(11) NULL DEFAULT NULL,
  `videoName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `modifyTime` datetime(0) NULL DEFAULT NULL,
  `isdeleted` tinyint(255) NULL DEFAULT NULL,
  `seeUsers` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pptID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (1, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (2, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (3, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (4, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (5, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (6, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (7, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (8, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (9, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (10, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (11, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (12, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (13, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (14, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (15, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (16, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (17, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (18, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (19, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (20, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (21, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (22, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (23, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');
INSERT INTO `video` VALUES (24, 2, '学习jvm', '2018-06-10 16:03:35', '2018-06-10 16:03:43', 0, '[{\"id\": 1, \"name\": \"xiaoming\"}, {\"id\": 2, \"name\": \"xiaohong\"}]', '112', 'dd', '23', 'ss');

SET FOREIGN_KEY_CHECKS = 1;
