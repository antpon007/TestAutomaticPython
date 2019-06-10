/*
 Navicat Premium Data Transfer

 Source Server         : pcnetwork_aws
 Source Server Type    : MariaDB
 Source Server Version : 100221
 Source Host           : usernetwork.cm0nxgalavt4.us-east-2.rds.amazonaws.com:3306
 Source Schema         : db_pcnetwork

 Target Server Type    : MariaDB
 Target Server Version : 100221
 File Encoding         : 65001

 Date: 10/06/2019 11:57:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for allotment
-- ----------------------------
DROP TABLE IF EXISTS `allotment`;
CREATE TABLE `allotment` (
  `id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `lot_id` int(50) unsigned NOT NULL,
  `project_id` int(50) unsigned NOT NULL,
  `block_id` int(50) unsigned NOT NULL,
  `name` varchar(200) CHARACTER SET latin1 NOT NULL,
  `x` varchar(100) CHARACTER SET latin1 NOT NULL,
  `y` varchar(100) CHARACTER SET latin1 NOT NULL,
  `status` enum('processing','available','sold') CHARACTER SET latin1 NOT NULL,
  `user_id` bigint(30) NOT NULL,
  `status_payment` enum('finished','in_process') COLLATE latin1_spanish_ci DEFAULT NULL,
  `insurance_status` tinyint(2) DEFAULT NULL,
  `insurance_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `project_block_lot` (`lot_id`,`project_id`,`block_id`) USING BTREE,
  KEY `project_id` (`project_id`) USING BTREE,
  KEY `block_id` (`block_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `fk_block_lot` FOREIGN KEY (`block_id`) REFERENCES `blocks` (`block_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_project_block_lot` FOREIGN KEY (`project_id`) REFERENCES `dbpcn_projects` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1739 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of allotment
-- ----------------------------
BEGIN;
INSERT INTO `allotment` VALUES (1, 26, 1, 1, '26', '0.747', '0.614', 'processing', 0, '', 0, 0, '2019-03-12 11:36:08', '2019-04-10 15:17:46');
INSERT INTO `allotment` VALUES (2, 999999, 1, 1, '00', '', '', 'sold', 1, NULL, 0, 0, '2019-05-01 10:58:34', '2019-05-01 10:58:38');
INSERT INTO `allotment` VALUES (4, 12, 1, 41, '12', '0.541', '0.532', 'available', 0, NULL, 0, 0, '2019-03-07 15:56:04', '2019-04-16 10:24:53');
INSERT INTO `allotment` VALUES (6, 13, 1, 41, '13', '0.544', '0.538', 'available', 0, NULL, 0, 0, '2019-03-11 14:38:47', '2019-04-15 12:14:02');
INSERT INTO `allotment` VALUES (7, 1, 1, 41, '01', '0.503', '0.447', 'sold', 10211, 'in_process', 0, 0, '2019-03-11 14:37:00', '2019-05-16 16:08:34');
INSERT INTO `allotment` VALUES (8, 26, 1, 41, '26', '0.498', '0.450', 'processing', 0, '', 0, 0, '2019-03-11 14:38:41', '2019-04-30 00:53:38');
INSERT INTO `allotment` VALUES (9, 2, 1, 41, '02', '0.506', '0.455', 'available', 0, NULL, 0, 0, '2019-03-11 14:43:50', '2019-03-14 21:03:45');
INSERT INTO `allotment` VALUES (10, 1, 1, 2, '01', '0.743', '0.639', 'available', 0, '', 0, 0, '2019-03-12 10:39:41', '2019-05-02 21:45:04');
INSERT INTO `allotment` VALUES (11, 2, 1, 2, '02', '0.749', '0.635', 'available', 0, NULL, 0, 0, '2019-03-12 10:44:44', '2019-03-12 10:44:59');
INSERT INTO `allotment` VALUES (12, 28, 1, 2, '28', '0.746', '0.648', 'sold', 10172, 'in_process', 0, 0, '2019-03-12 10:47:15', '2019-05-15 00:08:26');
INSERT INTO `allotment` VALUES (13, 27, 1, 2, '27', '0.752', '0.644', 'processing', 0, '', 0, 0, '2019-03-12 10:49:24', '2019-04-30 19:03:10');
INSERT INTO `allotment` VALUES (14, 3, 1, 2, '03', '0.755', '0.631', 'available', 0, NULL, 0, 0, '2019-03-12 10:50:47', '2019-03-12 10:50:51');
INSERT INTO `allotment` VALUES (15, 26, 1, 2, '26', '0.758', '0.640', 'processing', 0, '', 0, 0, '2019-03-12 10:54:03', '2019-04-30 01:55:29');
INSERT INTO `allotment` VALUES (16, 4, 1, 2, '04', '0.761', '0.627', 'available', 0, NULL, 0, 0, '2019-03-12 10:55:53', '2019-03-12 10:55:58');
INSERT INTO `allotment` VALUES (17, 25, 1, 2, '25', '0.764', '0.635', 'sold', 10248, 'in_process', 0, 0, '2019-03-12 10:58:02', '2019-06-10 16:20:18');
INSERT INTO `allotment` VALUES (18, 5, 1, 2, '05', '0.766', '0.622', 'available', 0, NULL, 0, 0, '2019-03-12 11:00:05', '2019-03-12 11:00:09');
INSERT INTO `allotment` VALUES (19, 24, 1, 2, '24', '0.769', '0.630', 'available', 0, NULL, 0, 0, '2019-03-12 11:03:38', '2019-03-12 11:03:43');
INSERT INTO `allotment` VALUES (20, 6, 1, 2, '06', '0.772', '0.617', 'available', 0, NULL, 0, 0, '2019-03-12 11:04:50', '2019-03-12 11:04:54');
INSERT INTO `allotment` VALUES (21, 23, 1, 2, '23', '0.775', '0.626', 'sold', 10166, 'in_process', 0, 0, '2019-03-12 11:05:44', '2019-05-14 22:53:23');
INSERT INTO `allotment` VALUES (22, 7, 1, 2, '07', '0.778', '0.613', 'available', 0, NULL, 0, 0, '2019-03-12 11:06:48', '2019-03-12 11:06:53');
INSERT INTO `allotment` VALUES (23, 22, 1, 2, '22', '0.781', '0.622', 'processing', 0, NULL, 0, 0, '2019-03-12 11:07:43', '2019-06-07 16:49:58');
INSERT INTO `allotment` VALUES (24, 8, 1, 2, '08', '0.783', '0.608', 'available', 0, NULL, 0, 0, '2019-03-12 11:09:11', '2019-03-12 11:09:15');
INSERT INTO `allotment` VALUES (25, 21, 1, 2, '21', '0.788', '0.617', 'processing', 0, NULL, 0, 0, '2019-03-12 11:10:09', '2019-05-28 15:14:48');
INSERT INTO `allotment` VALUES (26, 9, 1, 2, '09', '0.789', '0.604', 'available', 0, NULL, 0, 0, '2019-03-12 11:11:08', '2019-03-12 11:11:12');
INSERT INTO `allotment` VALUES (27, 20, 1, 2, '20', '0.794', '0.612', 'processing', 0, '', 0, 0, '2019-03-12 11:11:59', '2019-04-29 23:07:00');
INSERT INTO `allotment` VALUES (28, 10, 1, 2, '10', '0.794', '0.601', 'available', 0, NULL, 0, 0, '2019-03-12 11:18:49', '2019-03-12 11:18:54');
INSERT INTO `allotment` VALUES (29, 19, 1, 2, '19', '0.799', '0.608', 'processing', 0, '', 0, 0, '2019-03-12 11:19:41', '2019-04-29 22:40:12');
INSERT INTO `allotment` VALUES (30, 11, 1, 2, '11', '0.800', '0.596', 'available', 0, NULL, 0, 0, '2019-03-12 11:20:42', '0000-00-00 00:00:00');
INSERT INTO `allotment` VALUES (31, 18, 1, 2, '18', '0.805', '0.604', 'sold', 10188, 'in_process', 0, 0, '2019-03-12 11:21:49', '2019-05-15 00:39:46');
INSERT INTO `allotment` VALUES (32, 12, 1, 2, '12', '0.806', '0.593', 'available', 0, NULL, 0, 0, '2019-03-12 11:22:38', '2019-03-12 11:22:42');
INSERT INTO `allotment` VALUES (33, 17, 1, 2, '17', '0.811', '0.600', 'processing', 0, '', 0, 0, '2019-03-12 11:23:38', '2019-04-29 18:45:17');
INSERT INTO `allotment` VALUES (34, 13, 1, 2, '13', '0.812', '0.588', 'available', 0, NULL, 0, 0, '2019-03-12 11:24:29', '2019-03-12 11:24:32');
INSERT INTO `allotment` VALUES (35, 16, 1, 2, '16', '0.817', '0.596', 'sold', 10183, 'in_process', 0, 0, '2019-03-12 11:25:13', '2019-05-15 00:36:40');
INSERT INTO `allotment` VALUES (36, 14, 1, 2, '14', '0.818', '0.583', 'sold', 10194, 'in_process', 0, 0, '2019-03-12 11:26:03', '2019-05-15 00:41:13');
INSERT INTO `allotment` VALUES (37, 15, 1, 2, '15', '0.822', '0.592', 'sold', 10170, 'in_process', 0, 0, '2019-03-12 11:27:00', '2019-05-15 00:03:16');
INSERT INTO `allotment` VALUES (38, 1, 1, 1, '01', '0.730', '0.614', 'sold', 10181, 'in_process', 0, 0, '2019-03-12 11:30:18', '2019-05-15 00:36:09');
INSERT INTO `allotment` VALUES (39, 28, 1, 1, '28', '0.735', '0.624', 'sold', 10213, 'in_process', 0, 0, '2019-03-12 11:31:18', '2019-05-17 14:13:58');
INSERT INTO `allotment` VALUES (40, 2, 1, 1, '02', '0.736', '0.610', 'processing', 0, '', 0, 0, '2019-03-12 11:32:12', '2019-04-29 17:59:15');
INSERT INTO `allotment` VALUES (41, 27, 1, 1, '27', '0.741', '0.619', 'available', 0, NULL, 0, 0, '2019-03-12 11:33:22', '2019-03-12 11:33:26');
INSERT INTO `allotment` VALUES (42, 3, 1, 1, '03', '0.742', '0.605', 'processing', 0, '', 0, 0, '2019-03-12 11:34:14', '2019-04-30 13:37:48');
INSERT INTO `allotment` VALUES (44, 4, 1, 1, '04', '0.748', '0.601', 'sold', 10242, 'in_process', 0, 0, '2019-03-12 11:38:31', '2019-06-05 17:21:56');
INSERT INTO `allotment` VALUES (45, 25, 1, 1, '25', '0.752', '0.610', 'available', 0, NULL, 0, 0, '2019-03-12 11:39:58', '2019-03-12 11:40:03');
INSERT INTO `allotment` VALUES (46, 5, 1, 1, '05', '0.753', '0.596', 'sold', 10179, 'in_process', 0, 0, '2019-03-12 11:41:06', '2019-05-15 00:35:42');
INSERT INTO `allotment` VALUES (47, 24, 1, 1, '24', '0.758', '0.605', 'available', 0, NULL, 0, 0, '2019-03-12 11:42:57', '2019-03-12 11:43:09');
INSERT INTO `allotment` VALUES (48, 6, 1, 1, '06', '0.759', '0.592', 'sold', 10196, 'in_process', 0, 0, '2019-03-12 11:44:55', '2019-05-15 13:56:56');
INSERT INTO `allotment` VALUES (49, 23, 1, 1, '23', '0.764', '0.600', 'available', 0, NULL, 0, 0, '2019-03-12 11:45:37', '2019-03-12 11:45:42');
INSERT INTO `allotment` VALUES (50, 7, 1, 1, '07', '0.765', '0.587', 'processing', 0, '', 0, 0, '2019-03-12 11:46:39', '2019-04-29 00:53:48');
INSERT INTO `allotment` VALUES (51, 22, 1, 1, '22', '0.770', '0.596', 'available', 0, NULL, 0, 0, '2019-03-12 11:47:32', '2019-03-12 11:47:36');
INSERT INTO `allotment` VALUES (52, 8, 1, 1, '08', '0.771', '0.582', 'processing', 0, '', 0, 0, '2019-03-12 11:48:53', '2019-05-02 15:17:42');
INSERT INTO `allotment` VALUES (53, 21, 1, 1, '21', '0.776', '0.592', 'available', 0, NULL, 0, 0, '2019-03-12 11:54:05', '2019-03-12 11:54:10');
INSERT INTO `allotment` VALUES (54, 9, 1, 1, '09', '0.777', '0.579', 'processing', 0, '', 0, 0, '2019-03-12 12:06:47', '2019-05-01 18:27:03');
INSERT INTO `allotment` VALUES (55, 20, 1, 1, '20', '0.781', '0.585', 'available', 0, NULL, 0, 0, '2019-03-12 12:13:35', '2019-03-12 12:13:39');
INSERT INTO `allotment` VALUES (56, 10, 1, 1, '10', '0.782', '0.574', 'processing', 0, '', 0, 0, '2019-03-12 12:16:24', '2019-05-01 18:27:10');
INSERT INTO `allotment` VALUES (57, 19, 1, 1, '19', '0.788', '0.582', 'available', 0, NULL, 0, 0, '2019-03-12 15:10:14', '2019-03-12 15:10:20');
INSERT INTO `allotment` VALUES (70, 11, 1, 1, '11', '0.788', '0.570', 'sold', 10163, 'in_process', 0, 0, '2019-03-12 15:11:11', '2019-05-13 21:38:17');
INSERT INTO `allotment` VALUES (71, 18, 1, 1, '18', '0.793', '0.578', 'available', 0, NULL, 0, 0, '2019-03-12 15:12:17', '2019-03-12 15:12:23');
INSERT INTO `allotment` VALUES (72, 12, 1, 1, '12', '0.794', '0.564', 'sold', 10149, 'in_process', 0, 0, '2019-03-12 15:14:06', '2019-04-29 22:48:12');
INSERT INTO `allotment` VALUES (73, 17, 1, 1, '17', '0.799', '0.573', 'processing', 0, '', 0, 0, '2019-03-12 15:27:44', '2019-05-01 02:11:19');
INSERT INTO `allotment` VALUES (74, 13, 1, 1, '13', '0.800', '0.561', 'sold', 10175, 'in_process', 0, 0, '2019-03-12 15:29:05', '2019-05-15 00:34:27');
INSERT INTO `allotment` VALUES (75, 16, 1, 1, '16', '0.805', '0.568', 'sold', 10193, 'in_process', 0, 0, '2019-03-12 15:29:59', '2019-05-15 00:41:05');
INSERT INTO `allotment` VALUES (76, 14, 1, 1, '14', '0.805', '0.557', 'sold', 10197, 'in_process', 0, 0, '2019-03-12 15:30:50', '2019-05-15 13:59:09');
INSERT INTO `allotment` VALUES (77, 15, 1, 1, '15', '0.810', '0.564', 'sold', 10187, 'in_process', 0, 0, '2019-03-12 15:31:48', '2019-05-15 00:39:29');
INSERT INTO `allotment` VALUES (78, 10, 1, 3, '10', '0.836', '0.578', 'processing', 0, '', 0, 0, '2019-03-12 15:35:24', '2019-04-28 10:55:37');
INSERT INTO `allotment` VALUES (79, 1, 1, 3, '01', '0.831', '0.573', 'processing', 0, '', 0, 0, '2019-03-12 15:39:08', '2019-04-29 22:29:58');
INSERT INTO `allotment` VALUES (80, 2, 1, 3, '02', '0.836', '0.568', 'sold', 10219, 'in_process', 0, 0, '2019-03-12 15:42:04', '2019-05-21 21:47:04');
INSERT INTO `allotment` VALUES (81, 9, 1, 3, '09', '0.841', '0.574', 'sold', 10174, 'in_process', 0, 0, '2019-03-12 15:43:10', '2019-05-15 00:34:09');
INSERT INTO `allotment` VALUES (82, 3, 1, 3, '03', '0.842', '0.564', 'available', 0, NULL, 0, 0, '2019-03-12 15:45:15', '2019-03-12 15:45:20');
INSERT INTO `allotment` VALUES (83, 8, 1, 3, '08', '0.847', '0.570', 'sold', 10216, 'in_process', 0, 0, '2019-03-12 15:46:17', '2019-05-20 14:50:42');
INSERT INTO `allotment` VALUES (84, 4, 1, 3, '04', '0.848', '0.560', 'available', 0, NULL, 0, 0, '2019-03-12 15:52:06', '2019-03-12 15:52:14');
INSERT INTO `allotment` VALUES (85, 6, 1, 3, '06', '0.858', '0.562', 'sold', 10236, 'in_process', 0, 0, '2019-03-12 15:54:06', '2019-05-31 14:15:26');
INSERT INTO `allotment` VALUES (86, 5, 1, 3, '05', '0.854', '0.555', 'processing', 0, '', 0, 0, '2019-03-12 15:56:07', '2019-05-01 03:24:25');
INSERT INTO `allotment` VALUES (87, 7, 1, 3, '07', '0.852', '0.566', 'processing', 0, NULL, 0, 0, '2019-03-12 15:59:47', '2019-06-01 17:48:00');
INSERT INTO `allotment` VALUES (88, 1, 1, 4, '01', '0.819', '0.545', 'sold', 10148, 'in_process', 0, 0, '2019-03-12 16:04:30', '2019-04-27 02:48:01');
INSERT INTO `allotment` VALUES (89, 19, 1, 4, '19', '0.824', '0.551', 'sold', 10161, 'in_process', 0, 0, '2019-03-12 16:05:48', '2019-05-13 20:58:39');
INSERT INTO `allotment` VALUES (90, 2, 1, 4, '02', '0.825', '0.541', 'sold', 10162, 'in_process', 0, 0, '2019-03-12 16:07:20', '2019-05-13 21:20:59');
INSERT INTO `allotment` VALUES (91, 18, 1, 4, '18', '0.829', '0.547', 'sold', 10151, 'in_process', 0, 0, '2019-03-12 16:08:46', '2019-05-13 20:01:48');
INSERT INTO `allotment` VALUES (92, 3, 1, 4, '03', '0.831', '0.537', 'sold', 10167, 'in_process', 0, 0, '2019-03-12 16:11:32', '2019-05-15 00:01:01');
INSERT INTO `allotment` VALUES (93, 17, 1, 4, '17', '0.835', '0.542', 'sold', 10239, 'in_process', 0, 0, '2019-03-12 16:14:01', '2019-06-05 14:05:09');
INSERT INTO `allotment` VALUES (94, 4, 1, 4, '04', '0.837', '0.532', 'sold', 10168, 'in_process', 0, 0, '2019-03-12 16:15:45', '2019-05-15 00:01:54');
INSERT INTO `allotment` VALUES (96, 16, 1, 4, '16', '0.841', '0.539', 'available', 0, NULL, 0, 0, '2019-03-12 16:17:12', '2019-03-12 16:17:17');
INSERT INTO `allotment` VALUES (97, 5, 1, 4, '05', '0.842', '0.528', 'processing', 0, '', 0, 0, '2019-03-12 16:18:18', '2019-04-29 03:50:15');
INSERT INTO `allotment` VALUES (98, 15, 1, 4, '15', '0.847', '0.534', 'available', 0, NULL, 0, 0, '2019-03-12 16:19:15', '2019-03-12 16:19:18');
INSERT INTO `allotment` VALUES (99, 6, 1, 4, '06', '0.848', '0.524', 'processing', 0, '', 0, 0, '2019-03-12 16:19:58', '2019-04-30 03:56:39');
INSERT INTO `allotment` VALUES (100, 14, 1, 4, '14', '0.853', '0.529', 'available', 0, NULL, 0, 0, '2019-03-12 16:20:46', '2019-03-12 16:20:51');
INSERT INTO `allotment` VALUES (101, 7, 1, 4, '07', '0.854', '0.520', 'processing', 0, '', 0, 0, '2019-03-12 16:21:49', '2019-04-29 16:17:46');
INSERT INTO `allotment` VALUES (102, 13, 1, 4, '13', '0.859', '0.525', 'available', 0, NULL, 0, 0, '2019-03-12 16:22:36', '2019-03-12 16:22:41');
INSERT INTO `allotment` VALUES (103, 8, 1, 4, '08', '0.860', '0.515', 'processing', 0, '', 0, 0, '2019-03-12 16:23:31', '2019-05-01 01:47:16');
INSERT INTO `allotment` VALUES (104, 12, 1, 4, '12', '0.863', '0.524', 'processing', 0, '', 0, 0, '2019-03-12 16:24:30', '2019-04-29 19:27:20');
INSERT INTO `allotment` VALUES (105, 9, 1, 4, '09', '0.865', '0.510', 'processing', 0, '', 0, 0, '2019-03-12 16:25:36', '2019-04-29 18:16:16');
INSERT INTO `allotment` VALUES (106, 11, 1, 4, '11', '0.869', '0.520', 'processing', 0, '', 0, 0, '2019-03-12 16:26:28', '2019-05-02 22:01:32');
INSERT INTO `allotment` VALUES (107, 10, 1, 4, '10', '0.871', '0.506', 'sold', 10185, 'in_process', 0, 0, '2019-03-12 16:27:17', '2019-05-15 00:37:12');
INSERT INTO `allotment` VALUES (108, 1, 1, 5, '01', '0.891', '0.506', 'sold', 10210, 'in_process', 0, 0, '2019-03-12 16:48:52', '2019-05-16 16:07:44');
INSERT INTO `allotment` VALUES (109, 2, 1, 5, '02', '0.887', '0.498', 'sold', 10164, 'in_process', 0, 0, '2019-03-12 16:49:42', '2019-05-14 19:05:20');
INSERT INTO `allotment` VALUES (110, 3, 1, 5, '03', '0.884', '0.490', 'processing', 0, '', 0, 0, '2019-03-12 16:50:33', '2019-04-29 23:35:23');
INSERT INTO `allotment` VALUES (111, 4, 1, 5, '04', '0.879', '0.484', 'sold', 10182, 'in_process', 0, 0, '2019-03-12 16:51:33', '2019-05-15 00:36:37');
INSERT INTO `allotment` VALUES (112, 5, 1, 5, '05', '0.882', '0.478', 'available', 0, NULL, 0, 0, '2019-03-12 16:53:40', '2019-03-12 16:53:45');
INSERT INTO `allotment` VALUES (113, 6, 1, 5, '06', '0.889', '0.474', 'available', 0, NULL, 0, 0, '2019-03-12 16:54:33', '2019-03-12 16:54:38');
INSERT INTO `allotment` VALUES (114, 7, 1, 5, '07', '0.894', '0.470', 'available', 0, NULL, 0, 0, '2019-03-12 16:55:23', '2019-03-12 16:55:28');
INSERT INTO `allotment` VALUES (115, 8, 1, 5, '08', '0.900', '0.465', 'available', 0, NULL, 0, 0, '2019-03-12 16:56:09', '2019-03-12 16:56:18');
INSERT INTO `allotment` VALUES (116, 9, 1, 5, '09', '0.906', '0.461', 'processing', 0, '', 0, 0, '2019-03-12 16:57:02', '2019-04-30 01:55:39');
INSERT INTO `allotment` VALUES (117, 1, 1, 6, '01', '0.865', '0.457', 'sold', 10180, 'in_process', 0, 0, '2019-03-12 16:59:16', '2019-05-15 00:35:59');
INSERT INTO `allotment` VALUES (118, 2, 1, 6, '02', '0.871', '0.453', 'available', 0, NULL, 0, 0, '2019-03-12 17:00:07', '2019-03-12 17:00:13');
INSERT INTO `allotment` VALUES (119, 3, 1, 6, '03', '0.877', '0.449', 'available', 0, NULL, 0, 0, '2019-03-12 17:00:51', '2019-03-12 17:00:55');
INSERT INTO `allotment` VALUES (120, 4, 1, 6, '04', '0.883', '0.444', 'available', 0, NULL, 0, 0, '2019-03-12 17:01:43', '2019-03-12 17:02:06');
INSERT INTO `allotment` VALUES (121, 5, 1, 6, '05', '0.889', '0.440', 'available', 0, NULL, 0, 0, '2019-03-12 17:02:41', '2019-03-12 17:02:45');
INSERT INTO `allotment` VALUES (122, 6, 1, 6, '06', '0.895', '0.435', 'available', 0, NULL, 0, 0, '2019-03-12 17:03:34', '2019-03-12 17:03:39');
INSERT INTO `allotment` VALUES (123, 7, 1, 6, '07', '0.898', '0.444', 'available', 0, NULL, 0, 0, '2019-03-12 17:04:27', '2019-03-12 17:04:30');
INSERT INTO `allotment` VALUES (124, 8, 1, 6, '08', '0.892', '0.449', 'available', 0, NULL, 0, 0, '2019-03-12 17:07:07', '2019-03-12 17:07:10');
INSERT INTO `allotment` VALUES (125, 9, 1, 6, '09', '0.887', '0.454', 'available', 0, NULL, 0, 0, '2019-03-12 17:08:02', '2019-03-12 17:08:06');
INSERT INTO `allotment` VALUES (126, 10, 1, 6, '10', '0.881', '0.459', 'available', 0, NULL, 0, 0, '2019-03-12 17:08:46', '2019-03-12 17:08:49');
INSERT INTO `allotment` VALUES (127, 11, 1, 6, '11', '0.875', '0.462', 'available', 0, NULL, 0, 0, '2019-03-12 17:09:25', '2019-03-12 17:09:29');
INSERT INTO `allotment` VALUES (128, 12, 1, 6, '12', '0.869', '0.466', 'processing', 0, '', 0, 0, '2019-03-12 17:10:10', '2019-04-28 22:50:00');
INSERT INTO `allotment` VALUES (129, 1, 1, 7, '01', '0.854', '0.430', 'sold', 10200, 'in_process', 0, 0, '2019-03-12 17:18:05', '2019-05-15 15:29:22');
INSERT INTO `allotment` VALUES (130, 2, 1, 7, '02', '0.860', '0.426', 'available', 0, NULL, 0, 0, '2019-03-12 17:18:46', '2019-03-12 17:18:50');
INSERT INTO `allotment` VALUES (131, 3, 1, 7, '03', '0.866', '0.422', 'available', 0, NULL, 0, 0, '2019-03-12 17:19:52', '2019-03-12 17:19:56');
INSERT INTO `allotment` VALUES (132, 4, 1, 7, '04', '0.872', '0.417', 'available', 0, NULL, 0, 0, '2019-03-12 17:21:42', '2019-03-12 17:21:46');
INSERT INTO `allotment` VALUES (133, 5, 1, 7, '05', '0.877', '0.413', 'available', 0, NULL, 0, 0, '2019-03-12 17:22:20', '2019-03-12 17:22:24');
INSERT INTO `allotment` VALUES (134, 6, 1, 7, '06', '0.883', '0.409', 'available', 0, NULL, 0, 0, '2019-03-12 17:23:22', '2019-03-12 17:23:26');
INSERT INTO `allotment` VALUES (135, 7, 1, 7, '07', '0.887', '0.418', 'available', 0, NULL, 0, 0, '2019-03-12 17:24:16', '2019-03-12 17:24:20');
INSERT INTO `allotment` VALUES (136, 8, 1, 7, '08', '0.881', '0.422', 'available', 0, NULL, 0, 0, '2019-03-12 17:24:54', '2019-03-12 17:24:58');
INSERT INTO `allotment` VALUES (137, 9, 1, 7, '09', '0.875', '0.427', 'available', 0, NULL, 0, 0, '2019-03-12 17:25:42', '2019-03-12 17:26:13');
INSERT INTO `allotment` VALUES (138, 10, 1, 7, '10', '0.869', '0.431', 'available', 0, NULL, 0, 0, '2019-03-12 17:26:55', '2019-03-12 17:26:59');
INSERT INTO `allotment` VALUES (139, 11, 1, 7, '11', '0.864', '0.435', 'available', 0, NULL, 0, 0, '2019-03-12 17:27:46', '2019-03-12 17:27:50');
INSERT INTO `allotment` VALUES (140, 12, 1, 7, '12', '0.858', '0.441', 'sold', 10177, 'in_process', 0, 0, '2019-03-12 17:28:30', '2019-05-15 00:35:16');
INSERT INTO `allotment` VALUES (141, 1, 1, 8, '01', '0.842', '0.405', 'sold', 10205, 'in_process', 0, 0, '2019-03-12 17:30:03', '2019-05-15 15:33:13');
INSERT INTO `allotment` VALUES (142, 2, 1, 8, '02', '0.848', '0.400', 'sold', 10206, 'in_process', 0, 0, '2019-03-12 17:30:57', '2019-05-15 15:33:27');
INSERT INTO `allotment` VALUES (143, 3, 1, 8, '03', '0.854', '0.396', 'available', 0, NULL, 0, 0, '2019-03-12 17:31:45', '2019-03-12 17:31:49');
INSERT INTO `allotment` VALUES (144, 4, 1, 8, '04', '0.860', '0.392', 'available', 0, NULL, 0, 0, '2019-03-12 17:32:36', '2019-03-12 17:32:40');
INSERT INTO `allotment` VALUES (145, 5, 1, 8, '05', '0.865', '0.387', 'available', 0, NULL, 0, 0, '2019-03-12 17:33:20', '2019-03-12 17:33:25');
INSERT INTO `allotment` VALUES (146, 6, 1, 8, '06', '0.871', '0.383', 'available', 0, NULL, 0, 0, '2019-03-12 17:34:10', '2019-03-12 17:34:15');
INSERT INTO `allotment` VALUES (147, 7, 1, 8, '07', '0.875', '0.391', 'available', 0, NULL, 0, 0, '2019-03-12 17:35:02', '2019-03-12 17:35:06');
INSERT INTO `allotment` VALUES (148, 8, 1, 8, '08', '0.869', '0.396', 'available', 0, NULL, 0, 0, '2019-03-12 17:35:50', '2019-03-12 17:35:54');
INSERT INTO `allotment` VALUES (149, 9, 1, 8, '09', '0.864', '0.400', 'available', 0, NULL, 0, 0, '2019-03-12 17:36:31', '2019-03-12 17:36:34');
INSERT INTO `allotment` VALUES (150, 10, 1, 8, '10', '0.858', '0.404', 'available', 0, NULL, 0, 0, '2019-03-12 17:37:18', '2019-03-12 17:37:22');
INSERT INTO `allotment` VALUES (151, 11, 1, 8, '11', '0.852', '0.409', 'processing', 0, '', 0, 0, '2019-03-12 17:38:05', '2019-04-30 15:08:05');
INSERT INTO `allotment` VALUES (152, 12, 1, 8, '12', '0.846', '0.413', 'sold', 10201, 'in_process', 0, 0, '2019-03-12 17:38:51', '2019-05-15 15:29:37');
INSERT INTO `allotment` VALUES (153, 1, 1, 9, '01', '0.830', '0.378', 'sold', 10232, 'in_process', 0, 0, '2019-03-12 17:41:02', '2019-05-30 14:28:49');
INSERT INTO `allotment` VALUES (154, 2, 1, 9, '02', '0.836', '0.374', 'available', 0, NULL, 0, 0, '2019-03-12 17:41:51', '2019-03-12 17:41:55');
INSERT INTO `allotment` VALUES (155, 3, 1, 9, '03', '0.842', '0.369', 'available', 0, NULL, 0, 0, '2019-03-12 17:42:38', '2019-03-12 17:42:41');
INSERT INTO `allotment` VALUES (156, 4, 1, 9, '04', '0.848', '0.365', 'available', 0, NULL, 0, 0, '2019-03-12 17:43:24', '2019-03-12 17:43:28');
INSERT INTO `allotment` VALUES (157, 5, 1, 9, '05', '0.854', '0.360', 'available', 0, NULL, 0, 0, '2019-03-12 17:44:09', '2019-03-12 17:44:13');
INSERT INTO `allotment` VALUES (158, 6, 1, 9, '06', '0.859', '0.356', 'available', 0, NULL, 0, 0, '2019-03-12 17:45:05', '2019-03-12 17:45:09');
INSERT INTO `allotment` VALUES (159, 7, 1, 9, '07', '0.863', '0.364', 'available', 0, NULL, 0, 0, '2019-03-12 17:45:52', '2019-03-12 17:45:56');
INSERT INTO `allotment` VALUES (160, 8, 1, 9, '08', '0.858', '0.370', 'available', 0, NULL, 0, 0, '2019-03-12 17:46:43', '2019-03-12 17:46:48');
INSERT INTO `allotment` VALUES (161, 9, 1, 9, '09', '0.852', '0.374', 'available', 0, NULL, 0, 0, '2019-03-12 17:47:33', '2019-03-12 17:47:36');
INSERT INTO `allotment` VALUES (162, 10, 1, 9, '10', '0.846', '0.378', 'available', 0, NULL, 0, 0, '2019-03-12 17:48:20', '2019-03-12 17:48:24');
INSERT INTO `allotment` VALUES (163, 11, 1, 9, '11', '0.840', '0.382', 'available', 0, NULL, 0, 0, '2019-03-12 17:49:12', '2019-03-12 17:49:16');
INSERT INTO `allotment` VALUES (164, 12, 1, 9, '12', '0.835', '0.387', 'processing', 0, '', 0, 0, '2019-03-12 17:50:00', '2019-04-30 00:13:58');
INSERT INTO `allotment` VALUES (165, 1, 1, 10, '01', '0.819', '0.352', 'available', 0, NULL, 0, 0, '2019-03-12 17:51:32', '2019-03-12 17:51:37');
INSERT INTO `allotment` VALUES (166, 2, 1, 10, '02', '0.825', '0.348', 'available', 0, NULL, 0, 0, '2019-03-12 17:52:28', '2019-03-12 17:52:32');
INSERT INTO `allotment` VALUES (167, 3, 1, 10, '03', '0.830', '0.343', 'available', 0, NULL, 0, 0, '2019-03-12 17:53:38', '2019-03-12 17:53:42');
INSERT INTO `allotment` VALUES (168, 4, 1, 10, '04', '0.836', '0.339', 'available', 0, NULL, 0, 0, '2019-03-12 17:54:37', '2019-03-12 17:54:42');
INSERT INTO `allotment` VALUES (169, 5, 1, 10, '05', '0.842', '0.334', 'available', 0, NULL, 0, 0, '2019-03-12 17:55:23', '2019-03-12 17:55:27');
INSERT INTO `allotment` VALUES (170, 6, 1, 10, '06', '0.848', '0.329', 'available', 0, NULL, 0, 0, '2019-03-12 17:56:08', '2019-03-12 17:56:12');
INSERT INTO `allotment` VALUES (171, 7, 1, 10, '07', '0.852', '0.338', 'available', 0, NULL, 0, 0, '2019-03-12 17:56:54', '2019-03-12 17:56:58');
INSERT INTO `allotment` VALUES (172, 8, 1, 10, '08', '0.846', '0.342', 'available', 0, NULL, 0, 0, '2019-03-12 17:57:43', '2019-03-12 17:57:46');
INSERT INTO `allotment` VALUES (173, 9, 1, 10, '09', '0.840', '0.348', 'available', 0, NULL, 0, 0, '2019-03-12 17:58:23', '2019-03-12 17:58:26');
INSERT INTO `allotment` VALUES (174, 10, 1, 10, '10', '0.834', '0.352', 'available', 0, NULL, 0, 0, '2019-03-12 17:59:06', '2019-03-12 17:59:10');
INSERT INTO `allotment` VALUES (175, 11, 1, 10, '11', '0.828', '0.356', 'available', 0, NULL, 0, 0, '2019-03-12 18:00:05', '2019-03-12 18:00:08');
INSERT INTO `allotment` VALUES (176, 12, 1, 10, '12', '0.822', '0.361', 'available', 0, NULL, 0, 0, '2019-03-12 18:01:03', '2019-03-12 18:01:08');
INSERT INTO `allotment` VALUES (177, 1, 1, 11, '01', '0.807', '0.325', 'available', 0, NULL, 0, 0, '2019-03-14 12:08:44', '2019-03-14 12:08:49');
INSERT INTO `allotment` VALUES (178, 2, 1, 11, '02', '0.813', '0.320', 'available', 0, NULL, 0, 0, '2019-03-14 12:09:36', '2019-03-14 12:09:41');
INSERT INTO `allotment` VALUES (179, 3, 1, 11, '03', '0.819', '0.316', 'available', 0, NULL, 0, 0, '2019-03-14 12:10:25', '2019-03-14 12:10:28');
INSERT INTO `allotment` VALUES (180, 4, 1, 11, '04', '0.824', '0.312', 'available', 0, NULL, 0, 0, '2019-03-14 12:12:25', '2019-03-14 12:12:30');
INSERT INTO `allotment` VALUES (181, 5, 1, 11, '05', '0.830', '0.307', 'available', 0, NULL, 0, 0, '2019-03-14 12:13:26', '2019-03-14 12:13:30');
INSERT INTO `allotment` VALUES (182, 6, 1, 11, '06', '0.836', '0.303', 'available', 0, NULL, 0, 0, '2019-03-14 12:14:13', '2019-03-14 12:14:18');
INSERT INTO `allotment` VALUES (183, 7, 1, 11, '07', '0.839', '0.310', 'available', 0, NULL, 0, 0, '2019-03-14 12:16:10', '2019-03-14 12:16:15');
INSERT INTO `allotment` VALUES (184, 8, 1, 11, '08', '0.834', '0.316', 'available', 0, NULL, 0, 0, '2019-03-14 12:17:09', '2019-03-14 12:17:13');
INSERT INTO `allotment` VALUES (185, 9, 1, 11, '09', '0.828', '0.320', 'available', 0, NULL, 0, 0, '2019-03-14 12:17:55', '2019-03-14 12:17:59');
INSERT INTO `allotment` VALUES (186, 10, 1, 11, '10', '0.822', '0.324', 'available', 0, NULL, 0, 0, '2019-03-14 12:18:42', '2019-03-14 12:18:46');
INSERT INTO `allotment` VALUES (187, 11, 1, 11, '11', '0.817', '0.329', 'available', 0, NULL, 0, 0, '2019-03-14 12:19:29', '2019-03-14 12:19:33');
INSERT INTO `allotment` VALUES (188, 12, 1, 11, '12', '0.811', '0.333', 'available', 0, NULL, 0, 0, '2019-03-14 12:20:17', '2019-03-14 12:20:24');
INSERT INTO `allotment` VALUES (189, 1, 1, 12, '01', '0.796', '0.298', 'available', 0, NULL, 0, 0, '2019-03-14 12:23:30', '2019-03-14 12:23:34');
INSERT INTO `allotment` VALUES (190, 2, 1, 12, '02', '0.801', '0.293', 'available', 0, NULL, 0, 0, '2019-03-14 12:24:20', '2019-03-14 12:24:24');
INSERT INTO `allotment` VALUES (191, 3, 1, 12, '03', '0.807', '0.289', 'available', 0, NULL, 0, 0, '2019-03-14 12:25:19', '2019-03-14 12:25:24');
INSERT INTO `allotment` VALUES (192, 4, 1, 12, '04', '0.813', '0.285', 'available', 0, NULL, 0, 0, '2019-03-14 12:26:19', '2019-03-14 12:26:23');
INSERT INTO `allotment` VALUES (194, 5, 1, 12, '05', '0.817', '0.293', 'available', 0, NULL, 0, 0, '2019-03-14 12:27:25', '2019-03-14 12:27:29');
INSERT INTO `allotment` VALUES (195, 6, 1, 12, '06', '0.811', '0.298', 'available', 0, NULL, 0, 0, '2019-03-14 12:28:23', '2019-03-14 12:28:27');
INSERT INTO `allotment` VALUES (196, 7, 1, 12, '07', '0.805', '0.302', 'available', 0, NULL, 0, 0, '2019-03-14 12:29:16', '2019-03-14 12:29:19');
INSERT INTO `allotment` VALUES (197, 8, 1, 12, '08', '0.799', '0.306', 'available', 0, NULL, 0, 0, '2019-03-14 12:30:03', '2019-03-14 12:30:12');
INSERT INTO `allotment` VALUES (198, 1, 1, 13, '01', '0.721', '0.320', 'sold', 10223, 'in_process', 0, 0, '2019-03-14 12:32:28', '2019-05-27 19:15:31');
INSERT INTO `allotment` VALUES (199, 2, 1, 13, '02', '0.727', '0.314', 'available', 0, NULL, 0, 0, '2019-03-14 12:33:12', '2019-03-14 12:33:16');
INSERT INTO `allotment` VALUES (200, 3, 1, 13, '03', '0.733', '0.310', 'available', 0, NULL, 0, 0, '2019-03-14 12:36:33', '2019-03-14 12:37:33');
INSERT INTO `allotment` VALUES (201, 4, 1, 13, '04', '0.739', '0.306', 'available', 0, NULL, 0, 0, '2019-03-14 12:40:49', '2019-03-14 12:40:53');
INSERT INTO `allotment` VALUES (202, 5, 1, 13, '05', '0.745', '0.301', 'available', 0, NULL, 0, 0, '2019-03-14 13:03:58', '2019-03-14 13:04:01');
INSERT INTO `allotment` VALUES (203, 6, 1, 13, '06', '0.750', '0.297', 'available', 0, NULL, 0, 0, '2019-03-14 13:04:37', '2019-03-14 13:04:40');
INSERT INTO `allotment` VALUES (204, 7, 1, 13, '07', '0.756', '0.293', 'available', 0, NULL, 0, 0, '2019-03-14 13:05:19', '2019-03-14 13:05:23');
INSERT INTO `allotment` VALUES (205, 8, 1, 13, '08', '0.762', '0.288', 'available', 0, NULL, 0, 0, '2019-03-14 13:05:59', '2019-03-14 13:06:03');
INSERT INTO `allotment` VALUES (206, 9, 1, 13, '09', '0.768', '0.284', 'available', 0, NULL, 0, 0, '2019-03-14 13:06:48', '2019-03-14 13:06:53');
INSERT INTO `allotment` VALUES (207, 10, 1, 13, '10', '0.774', '0.279', 'available', 0, NULL, 0, 0, '2019-03-14 13:07:34', '2019-03-14 13:07:37');
INSERT INTO `allotment` VALUES (208, 11, 1, 13, '11', '0.777', '0.288', 'available', 0, NULL, 0, 0, '2019-03-14 13:08:23', '2019-03-14 13:08:27');
INSERT INTO `allotment` VALUES (209, 12, 1, 13, '12', '0.771', '0.293', 'available', 0, NULL, 0, 0, '2019-03-14 13:09:03', '2019-03-14 13:09:07');
INSERT INTO `allotment` VALUES (210, 13, 1, 13, '13', '0.765', '0.297', 'available', 0, NULL, 0, 0, '2019-03-14 13:09:45', '2019-03-14 13:09:50');
INSERT INTO `allotment` VALUES (211, 14, 1, 13, '14', '0.760', '0.301', 'available', 0, NULL, 0, 0, '2019-03-14 14:39:15', '2019-03-14 14:39:19');
INSERT INTO `allotment` VALUES (212, 15, 1, 13, '15', '0.754', '0.306', 'available', 0, NULL, 0, 0, '2019-03-14 14:40:34', '2019-03-14 14:40:38');
INSERT INTO `allotment` VALUES (213, 16, 1, 13, '16', '0.748', '0.310', 'available', 0, NULL, 0, 0, '2019-03-14 14:41:16', '2019-03-14 14:41:20');
INSERT INTO `allotment` VALUES (214, 17, 1, 13, '17', '0.743', '0.314', 'available', 0, NULL, 0, 0, '2019-03-14 14:42:05', '2019-03-14 14:42:10');
INSERT INTO `allotment` VALUES (215, 18, 1, 13, '18', '0.737', '0.319', 'available', 0, NULL, 0, 0, '2019-03-14 14:42:49', '2019-03-14 14:42:53');
INSERT INTO `allotment` VALUES (216, 19, 1, 13, '19', '0.731', '0.323', 'available', 0, NULL, 0, 0, '2019-03-14 14:43:29', '2019-03-14 14:43:33');
INSERT INTO `allotment` VALUES (217, 20, 1, 13, '20', '0.726', '0.327', 'available', 0, NULL, 0, 0, '2019-03-14 14:44:23', '2019-03-14 14:44:26');
INSERT INTO `allotment` VALUES (218, 1, 1, 14, '01', '0.733', '0.345', 'available', 0, NULL, 0, 0, '2019-03-14 14:49:04', '2019-03-14 14:49:08');
INSERT INTO `allotment` VALUES (219, 2, 1, 14, '02', '0.739', '0.341', 'available', 0, NULL, 0, 0, '2019-03-14 14:49:48', '2019-03-14 14:49:52');
INSERT INTO `allotment` VALUES (220, 3, 1, 14, '03', '0.745', '0.337', 'available', 0, NULL, 0, 0, '2019-03-14 14:50:38', '2019-03-14 14:50:42');
INSERT INTO `allotment` VALUES (221, 4, 1, 14, '04', '0.750', '0.332', 'available', 0, NULL, 0, 0, '2019-03-14 14:51:21', '2019-03-14 14:51:26');
INSERT INTO `allotment` VALUES (222, 5, 1, 14, '05', '0.756', '0.328', 'available', 0, NULL, 0, 0, '2019-03-14 14:52:05', '2019-03-14 14:52:09');
INSERT INTO `allotment` VALUES (223, 6, 1, 14, '06', '0.762', '0.323', 'available', 0, NULL, 0, 0, '2019-03-14 14:52:51', '2019-03-14 14:52:56');
INSERT INTO `allotment` VALUES (224, 7, 1, 14, '07', '0.768', '0.319', 'available', 0, NULL, 0, 0, '2019-03-14 14:53:34', '2019-03-14 14:53:38');
INSERT INTO `allotment` VALUES (225, 8, 1, 14, '08', '0.774', '0.315', 'available', 0, NULL, 0, 0, '2019-03-14 14:55:56', '2019-03-14 14:55:59');
INSERT INTO `allotment` VALUES (226, 9, 1, 14, '09', '0.779', '0.309', 'available', 0, NULL, 0, 0, '2019-03-14 15:13:51', '2019-03-14 15:13:55');
INSERT INTO `allotment` VALUES (227, 10, 1, 14, '10', '0.785', '0.305', 'available', 0, NULL, 0, 0, '2019-03-14 15:14:33', '2019-03-14 15:14:36');
INSERT INTO `allotment` VALUES (228, 11, 1, 14, '11', '0.789', '0.315', 'available', 0, NULL, 0, 0, '2019-03-14 15:15:12', '2019-03-14 15:15:16');
INSERT INTO `allotment` VALUES (229, 12, 1, 14, '12', '0.783', '0.319', 'available', 0, NULL, 0, 0, '2019-03-14 15:15:54', '2019-03-14 15:15:58');
INSERT INTO `allotment` VALUES (230, 13, 1, 14, '13', '0.777', '0.323', 'available', 0, NULL, 0, 0, '2019-03-14 15:16:38', '2019-03-14 15:16:41');
INSERT INTO `allotment` VALUES (231, 14, 1, 14, '14', '0.771', '0.327', 'available', 0, NULL, 0, 0, '2019-03-14 15:17:25', '2019-03-14 15:17:31');
INSERT INTO `allotment` VALUES (232, 15, 1, 14, '15', '0.766', '0.332', 'available', 0, NULL, 0, 0, '2019-03-14 15:18:10', '2019-03-14 15:18:13');
INSERT INTO `allotment` VALUES (233, 16, 1, 14, '16', '0.760', '0.336', 'available', 0, NULL, 0, 0, '2019-03-14 15:18:58', '2019-03-14 15:19:01');
INSERT INTO `allotment` VALUES (234, 17, 1, 14, '17', '0.754', '0.341', 'available', 0, NULL, 0, 0, '2019-03-14 15:19:43', '2019-03-14 15:19:51');
INSERT INTO `allotment` VALUES (235, 18, 1, 14, '18', '0.749', '0.346', 'available', 0, NULL, 0, 0, '2019-03-14 15:20:40', '2019-03-14 15:20:45');
INSERT INTO `allotment` VALUES (236, 19, 1, 14, '19', '0.743', '0.350', 'available', 0, NULL, 0, 0, '2019-03-14 15:22:49', '2019-03-14 15:22:52');
INSERT INTO `allotment` VALUES (237, 20, 1, 14, '20', '0.737', '0.354', 'available', 0, NULL, 0, 0, '2019-03-14 15:23:42', '2019-03-14 15:23:47');
INSERT INTO `allotment` VALUES (238, 1, 1, 15, '01', '0.745', '0.372', 'available', 0, NULL, 0, 0, '2019-03-14 15:26:13', '2019-03-14 15:26:17');
INSERT INTO `allotment` VALUES (239, 2, 1, 15, '02', '0.750', '0.368', 'available', 0, NULL, 0, 0, '2019-03-14 15:26:54', '2019-03-14 15:27:01');
INSERT INTO `allotment` VALUES (240, 3, 1, 15, '03', '0.756', '0.364', 'available', 0, NULL, 0, 0, '2019-03-14 15:32:35', '2019-03-14 15:32:39');
INSERT INTO `allotment` VALUES (241, 4, 1, 15, '04', '0.762', '0.359', 'available', 0, NULL, 0, 0, '2019-03-14 15:33:21', '2019-03-14 15:33:25');
INSERT INTO `allotment` VALUES (242, 5, 1, 15, '05', '0.768', '0.355', 'available', 0, NULL, 0, 0, '2019-03-14 15:34:02', '2019-03-14 15:34:07');
INSERT INTO `allotment` VALUES (243, 6, 1, 15, '06', '0.774', '0.350', 'available', 0, NULL, 0, 0, '2019-03-14 15:34:44', '2019-03-14 15:34:47');
INSERT INTO `allotment` VALUES (244, 7, 1, 15, '07', '0.780', '0.346', 'available', 0, NULL, 0, 0, '2019-03-14 15:35:34', '2019-03-14 15:35:37');
INSERT INTO `allotment` VALUES (245, 8, 1, 15, '08', '0.785', '0.342', 'available', 0, NULL, 0, 0, '2019-03-14 15:36:14', '2019-03-14 15:36:17');
INSERT INTO `allotment` VALUES (246, 9, 1, 15, '09', '0.791', '0.337', 'available', 0, NULL, 0, 0, '2019-03-14 15:36:51', '2019-03-14 15:36:54');
INSERT INTO `allotment` VALUES (247, 10, 1, 15, '10', '0.797', '0.332', 'available', 0, NULL, 0, 0, '2019-03-14 15:37:34', '2019-03-14 15:37:40');
INSERT INTO `allotment` VALUES (248, 11, 1, 15, '11', '0.801', '0.341', 'available', 0, NULL, 0, 0, '2019-03-14 15:38:20', '2019-03-14 15:38:23');
INSERT INTO `allotment` VALUES (249, 12, 1, 15, '12', '0.795', '0.346', 'available', 0, NULL, 0, 0, '2019-03-14 15:38:58', '2019-03-14 15:39:01');
INSERT INTO `allotment` VALUES (250, 13, 1, 15, '13', '0.789', '0.350', 'available', 0, NULL, 0, 0, '2019-03-14 15:39:42', '2019-03-14 15:39:47');
INSERT INTO `allotment` VALUES (251, 14, 1, 15, '14', '0.783', '0.354', 'available', 0, NULL, 0, 0, '2019-03-14 15:40:24', '2019-03-14 15:40:30');
INSERT INTO `allotment` VALUES (252, 15, 1, 15, '15', '0.777', '0.359', 'available', 0, NULL, 0, 0, '2019-03-14 15:41:06', '2019-03-14 15:41:10');
INSERT INTO `allotment` VALUES (253, 16, 1, 15, '16', '0.772', '0.364', 'available', 0, NULL, 0, 0, '2019-03-14 15:42:12', '2019-04-16 11:26:57');
INSERT INTO `allotment` VALUES (255, 17, 1, 15, '17', '0.766', '0.368', 'available', 0, NULL, 0, 0, '2019-03-14 15:43:03', '2019-03-14 15:43:10');
INSERT INTO `allotment` VALUES (256, 18, 1, 15, '18', '0.760', '0.372', 'available', 0, NULL, 0, 0, '2019-03-14 15:43:47', '2019-03-14 15:43:50');
INSERT INTO `allotment` VALUES (257, 19, 1, 15, '19', '0.754', '0.377', 'available', 0, NULL, 0, 0, '2019-03-14 15:44:34', '2019-03-14 15:44:38');
INSERT INTO `allotment` VALUES (258, 20, 1, 15, '20', '0.749', '0.381', 'available', 0, NULL, 0, 0, '2019-03-14 15:45:17', '2019-03-14 15:45:26');
INSERT INTO `allotment` VALUES (259, 1, 1, 16, '01', '0.757', '0.399', 'available', 0, NULL, 0, 0, '2019-03-14 15:50:14', '2019-03-14 15:50:19');
INSERT INTO `allotment` VALUES (260, 2, 1, 16, '02', '0.762', '0.394', 'available', 0, NULL, 0, 0, '2019-03-14 15:50:58', '2019-03-14 15:51:02');
INSERT INTO `allotment` VALUES (261, 3, 1, 16, '03', '0.768', '0.391', 'available', 0, NULL, 0, 0, '2019-03-14 15:51:43', '2019-03-14 15:51:46');
INSERT INTO `allotment` VALUES (262, 4, 1, 16, '04', '0.774', '0.386', 'available', 0, NULL, 0, 0, '2019-03-14 15:52:27', '2019-03-14 15:52:31');
INSERT INTO `allotment` VALUES (263, 5, 1, 16, '05', '0.779', '0.381', 'available', 0, NULL, 0, 0, '2019-03-14 15:53:21', '2019-03-14 15:53:25');
INSERT INTO `allotment` VALUES (264, 6, 1, 16, '06', '0.786', '0.377', 'available', 0, NULL, 0, 0, '2019-03-14 15:54:06', '2019-03-14 15:54:11');
INSERT INTO `allotment` VALUES (265, 7, 1, 16, '07', '0.791', '0.373', 'available', 0, NULL, 0, 0, '2019-03-14 15:55:17', '2019-03-14 15:55:21');
INSERT INTO `allotment` VALUES (266, 8, 1, 16, '08', '0.797', '0.369', 'available', 0, NULL, 0, 0, '2019-03-14 15:56:07', '2019-03-14 15:56:16');
INSERT INTO `allotment` VALUES (267, 9, 1, 16, '09', '0.803', '0.364', 'available', 0, NULL, 0, 0, '2019-03-14 15:57:23', '2019-03-14 15:57:28');
INSERT INTO `allotment` VALUES (268, 10, 1, 16, '10', '0.808', '0.359', 'available', 0, NULL, 0, 0, '2019-03-14 15:58:11', '2019-03-14 15:58:21');
INSERT INTO `allotment` VALUES (269, 11, 1, 16, '11', '0.812', '0.367', 'available', 0, NULL, 0, 0, '2019-03-14 15:59:29', '2019-03-14 15:59:33');
INSERT INTO `allotment` VALUES (270, 12, 1, 16, '12', '0.806', '0.371', 'available', 0, NULL, 0, 0, '2019-03-14 16:00:55', '2019-03-14 16:00:59');
INSERT INTO `allotment` VALUES (271, 13, 1, 16, '13', '0.800', '0.375', 'available', 0, NULL, 0, 0, '2019-03-14 16:02:16', '2019-03-14 16:02:21');
INSERT INTO `allotment` VALUES (272, 14, 1, 16, '14', '0.795', '0.381', 'available', 0, NULL, 0, 0, '2019-03-14 16:03:34', '2019-03-14 16:03:39');
INSERT INTO `allotment` VALUES (273, 15, 1, 16, '15', '0.789', '0.385', 'available', 0, NULL, 0, 0, '2019-03-14 16:04:51', '2019-03-14 16:04:56');
INSERT INTO `allotment` VALUES (274, 16, 1, 16, '16', '0.783', '0.389', 'available', 0, NULL, 0, 0, '2019-03-14 16:05:42', '2019-03-14 16:05:47');
INSERT INTO `allotment` VALUES (275, 17, 1, 16, '17', '0.777', '0.396', 'available', 0, NULL, 0, 0, '2019-03-14 16:06:31', '2019-03-14 16:06:35');
INSERT INTO `allotment` VALUES (276, 18, 1, 16, '18', '0.772', '0.399', 'available', 0, NULL, 0, 0, '2019-03-14 16:07:16', '2019-03-14 16:07:21');
INSERT INTO `allotment` VALUES (277, 19, 1, 16, '19', '0.766', '0.403', 'available', 0, NULL, 0, 0, '2019-03-14 16:07:55', '2019-03-14 16:08:02');
INSERT INTO `allotment` VALUES (278, 20, 1, 16, '20', '0.761', '0.407', 'available', 0, NULL, 0, 0, '2019-03-14 16:08:41', '2019-03-14 16:08:48');
INSERT INTO `allotment` VALUES (279, 1, 1, 17, '01', '0.768', '0.425', 'processing', 0, '', 0, 0, '2019-03-14 16:17:55', '2019-04-30 17:07:44');
INSERT INTO `allotment` VALUES (280, 2, 1, 17, '02', '0.774', '0.422', 'available', 0, NULL, 0, 0, '2019-03-14 16:18:36', '2019-03-14 16:18:40');
INSERT INTO `allotment` VALUES (281, 3, 1, 17, '03', '0.779', '0.417', 'available', 0, NULL, 0, 0, '2019-03-14 16:19:23', '2019-03-14 16:19:27');
INSERT INTO `allotment` VALUES (283, 4, 1, 17, '04', '0.785', '0.412', 'available', 0, NULL, 0, 0, '2019-03-14 16:20:36', '2019-03-14 16:20:40');
INSERT INTO `allotment` VALUES (284, 5, 1, 17, '05', '0.791', '0.408', 'available', 0, NULL, 0, 0, '2019-03-14 16:21:26', '2019-03-14 16:21:30');
INSERT INTO `allotment` VALUES (285, 6, 1, 17, '06', '0.797', '0.403', 'available', 0, NULL, 0, 0, '2019-03-14 16:24:21', '2019-03-14 16:24:25');
INSERT INTO `allotment` VALUES (286, 7, 1, 17, '07', '0.803', '0.400', 'available', 0, NULL, 0, 0, '2019-03-14 16:25:07', '2019-03-14 16:25:12');
INSERT INTO `allotment` VALUES (287, 8, 1, 17, '08', '0.809', '0.395', 'available', 0, NULL, 0, 0, '2019-03-14 16:27:33', '2019-03-14 16:27:37');
INSERT INTO `allotment` VALUES (288, 9, 1, 17, '09', '0.815', '0.390', 'available', 0, NULL, 0, 0, '2019-03-14 16:28:15', '2019-03-14 16:28:18');
INSERT INTO `allotment` VALUES (289, 10, 1, 17, '10', '0.820', '0.385', 'available', 0, NULL, 0, 0, '2019-03-14 16:29:01', '2019-03-14 16:29:06');
INSERT INTO `allotment` VALUES (290, 11, 1, 17, '11', '0.824', '0.394', 'processing', 0, '', 0, 0, '2019-03-14 16:38:30', '2019-04-29 22:40:17');
INSERT INTO `allotment` VALUES (291, 12, 1, 17, '12', '0.818', '0.399', 'processing', 0, '', 0, 0, '2019-03-14 16:39:14', '2019-05-02 17:33:10');
INSERT INTO `allotment` VALUES (292, 13, 1, 17, '13', '0.813', '0.404', 'sold', 10195, 'in_process', 0, 0, '2019-03-14 16:40:00', '2019-05-15 00:41:21');
INSERT INTO `allotment` VALUES (293, 14, 1, 17, '14', '0.807', '0.408', 'sold', 10240, 'in_process', 0, 0, '2019-03-14 16:46:08', '2019-06-05 15:14:31');
INSERT INTO `allotment` VALUES (294, 15, 1, 17, '15', '0.801', '0.412', 'sold', 10241, 'in_process', 0, 0, '2019-03-14 16:47:21', '2019-06-05 15:14:37');
INSERT INTO `allotment` VALUES (295, 16, 1, 17, '16', '0.795', '0.417', 'processing', 0, '', 0, 0, '2019-03-14 16:48:03', '2019-05-03 05:08:47');
INSERT INTO `allotment` VALUES (296, 17, 1, 17, '17', '0.789', '0.421', 'processing', 0, '', 0, 0, '2019-03-14 16:48:47', '2019-04-29 23:13:37');
INSERT INTO `allotment` VALUES (297, 18, 1, 17, '18', '0.784', '0.425', 'processing', 0, '', 0, 0, '2019-03-14 16:49:36', '2019-05-02 22:01:41');
INSERT INTO `allotment` VALUES (298, 19, 1, 17, '19', '0.778', '0.430', 'processing', 0, '', 0, 0, '2019-03-14 16:50:29', '2019-04-28 23:27:42');
INSERT INTO `allotment` VALUES (299, 20, 1, 17, '20', '0.772', '0.434', 'processing', 0, NULL, 0, 0, '2019-03-14 16:51:10', '2019-04-28 08:11:27');
INSERT INTO `allotment` VALUES (300, 1, 1, 18, '01', '0.691', '0.520', 'processing', 0, '', 0, 0, '2019-03-14 16:53:19', '2019-04-30 04:12:54');
INSERT INTO `allotment` VALUES (301, 2, 1, 18, '02', '0.696', '0.515', 'sold', 10214, 'in_process', 0, 0, '2019-03-14 17:07:03', '2019-05-17 20:17:49');
INSERT INTO `allotment` VALUES (302, 3, 1, 18, '03', '0.702', '0.512', 'processing', 0, NULL, 0, 0, '2019-03-14 17:08:02', '2019-05-16 14:51:24');
INSERT INTO `allotment` VALUES (303, 4, 1, 18, '04', '0.708', '0.506', 'available', 0, NULL, 0, 0, '2019-03-14 17:09:25', '2019-03-14 17:09:31');
INSERT INTO `allotment` VALUES (304, 5, 1, 18, '05', '0.714', '0.502', 'available', 0, NULL, 0, 0, '2019-03-14 17:10:25', '2019-03-14 17:10:29');
INSERT INTO `allotment` VALUES (305, 6, 1, 18, '06', '0.720', '0.498', 'available', 0, NULL, 0, 0, '2019-03-14 17:12:19', '2019-03-14 17:12:23');
INSERT INTO `allotment` VALUES (306, 7, 1, 18, '07', '0.726', '0.493', 'processing', 0, '', 0, 0, '2019-03-14 17:13:35', '2019-04-30 00:14:05');
INSERT INTO `allotment` VALUES (307, 8, 1, 18, '08', '0.732', '0.490', 'processing', 0, '', 0, 0, '2019-03-14 17:14:32', '2019-04-29 16:38:07');
INSERT INTO `allotment` VALUES (308, 9, 1, 18, '09', '0.735', '0.497', 'sold', 10173, 'in_process', 0, 0, '2019-03-14 17:15:53', '2019-05-15 00:32:28');
INSERT INTO `allotment` VALUES (309, 10, 1, 18, '10', '0.730', '0.502', 'processing', 0, '', 0, 0, '2019-03-14 17:17:06', '2019-04-29 19:27:14');
INSERT INTO `allotment` VALUES (310, 11, 1, 18, '11', '0.724', '0.507', 'processing', 0, '', 0, 0, '2019-03-14 17:18:18', '2019-04-29 20:52:57');
INSERT INTO `allotment` VALUES (311, 12, 1, 18, '12', '0.718', '0.511', 'processing', 0, '', 0, 0, '2019-03-14 17:19:15', '2019-04-29 23:46:35');
INSERT INTO `allotment` VALUES (312, 13, 1, 18, '13', '0.712', '0.515', 'sold', 10176, 'in_process', 0, 0, '2019-03-14 17:20:27', '2019-05-15 00:34:40');
INSERT INTO `allotment` VALUES (313, 14, 1, 18, '14', '0.706', '0.520', 'processing', 0, '', 0, 0, '2019-03-14 17:38:57', '2019-04-29 22:29:53');
INSERT INTO `allotment` VALUES (314, 15, 1, 18, '15', '0.701', '0.525', 'processing', 0, '', 0, 0, '2019-03-14 17:46:00', '2019-04-29 21:42:56');
INSERT INTO `allotment` VALUES (315, 16, 1, 18, '16', '0.695', '0.529', 'sold', 10203, 'in_process', 0, 0, '2019-03-14 17:46:50', '2019-05-15 15:30:40');
INSERT INTO `allotment` VALUES (316, 1, 1, 19, '01', '0.679', '0.493', 'sold', 10220, 'in_process', 0, 0, '2019-03-14 17:48:23', '2019-05-23 21:08:04');
INSERT INTO `allotment` VALUES (317, 2, 1, 19, '02', '0.685', '0.489', 'available', 0, NULL, 0, 0, '2019-03-14 17:49:11', '2019-03-14 17:49:16');
INSERT INTO `allotment` VALUES (318, 3, 1, 19, '03', '0.691', '0.484', 'available', 0, NULL, 0, 0, '2019-03-14 17:50:04', '2019-03-14 17:50:07');
INSERT INTO `allotment` VALUES (319, 4, 1, 19, '04', '0.696', '0.480', 'available', 0, NULL, 0, 0, '2019-03-14 17:50:54', '2019-03-14 17:50:58');
INSERT INTO `allotment` VALUES (320, 5, 1, 19, '05', '0.702', '0.476', 'available', 0, NULL, 0, 0, '2019-03-14 17:51:52', '2019-03-14 17:51:56');
INSERT INTO `allotment` VALUES (321, 6, 1, 19, '06', '0.708', '0.471', 'available', 0, NULL, 0, 0, '2019-03-14 17:53:21', '2019-03-14 17:53:25');
INSERT INTO `allotment` VALUES (322, 7, 1, 19, '07', '0.714', '0.467', 'available', 0, NULL, 0, 0, '2019-03-14 17:55:59', '2019-03-14 17:56:03');
INSERT INTO `allotment` VALUES (323, 8, 1, 19, '08', '0.720', '0.462', 'available', 0, NULL, 0, 0, '2019-03-14 17:56:46', '2019-03-14 17:56:53');
INSERT INTO `allotment` VALUES (324, 9, 1, 19, '09', '0.726', '0.458', 'available', 0, NULL, 0, 0, '2019-03-14 17:57:42', '2019-03-14 17:57:46');
INSERT INTO `allotment` VALUES (325, 10, 1, 19, '10', '0.731', '0.454', 'available', 0, NULL, 0, 0, '2019-03-14 17:58:39', '2019-03-14 17:58:43');
INSERT INTO `allotment` VALUES (326, 11, 1, 19, '11', '0.737', '0.449', 'available', 0, NULL, 0, 0, '2019-03-14 17:59:20', '2019-03-14 17:59:24');
INSERT INTO `allotment` VALUES (327, 12, 1, 19, '12', '0.743', '0.445', 'available', 0, NULL, 0, 0, '2019-03-14 18:00:03', '2019-03-14 18:00:07');
INSERT INTO `allotment` VALUES (328, 13, 1, 19, '13', '0.748', '0.440', 'available', 0, NULL, 0, 0, '2019-03-14 18:00:55', '2019-03-14 18:00:58');
INSERT INTO `allotment` VALUES (329, 14, 1, 19, '14', '0.755', '0.436', 'processing', 0, '', 0, 0, '2019-03-14 18:01:44', '2019-04-30 04:39:44');
INSERT INTO `allotment` VALUES (330, 15, 1, 19, '15', '0.758', '0.444', 'processing', 0, '', 0, 0, '2019-03-14 18:03:57', '2019-04-28 21:33:09');
INSERT INTO `allotment` VALUES (331, 16, 1, 19, '16', '0.752', '0.448', 'processing', 0, '', 0, 0, '2019-03-14 18:04:47', '2019-04-30 19:03:18');
INSERT INTO `allotment` VALUES (332, 17, 1, 19, '17', '0.747', '0.453', 'processing', 0, '', 0, 0, '2019-03-14 18:05:27', '2019-05-02 20:11:09');
INSERT INTO `allotment` VALUES (333, 18, 1, 19, '18', '0.741', '0.457', 'processing', 0, '', 0, 0, '2019-03-14 18:06:13', '2019-05-01 23:52:36');
INSERT INTO `allotment` VALUES (334, 19, 1, 19, '19', '0.735', '0.462', 'processing', 0, '', 0, 0, '2019-03-14 18:07:01', '2019-04-29 21:23:58');
INSERT INTO `allotment` VALUES (335, 20, 1, 19, '20', '0.729', '0.466', 'sold', 10191, 'in_process', 0, 0, '2019-03-14 18:07:49', '2019-05-15 00:40:41');
INSERT INTO `allotment` VALUES (336, 21, 1, 19, '21', '0.723', '0.472', 'available', 0, NULL, 0, 0, '2019-03-14 18:08:36', '2019-03-14 18:08:41');
INSERT INTO `allotment` VALUES (337, 22, 1, 19, '22', '0.718', '0.475', 'available', 0, NULL, 0, 0, '2019-03-14 18:09:39', '2019-03-14 18:09:43');
INSERT INTO `allotment` VALUES (338, 23, 1, 19, '23', '0.712', '0.480', 'available', 0, NULL, 0, 0, '2019-03-14 18:10:21', '2019-03-14 18:10:24');
INSERT INTO `allotment` VALUES (339, 24, 1, 19, '24', '0.706', '0.484', 'available', 0, NULL, 0, 0, '2019-03-14 18:15:15', '2019-03-14 18:15:25');
INSERT INTO `allotment` VALUES (340, 25, 1, 19, '25', '0.700', '0.489', 'available', 0, NULL, 0, 0, '2019-03-14 18:19:04', '2019-03-14 18:19:07');
INSERT INTO `allotment` VALUES (341, 26, 1, 19, '26', '0.694', '0.493', 'available', 0, NULL, 0, 0, '2019-03-14 18:20:31', '2019-03-14 18:20:34');
INSERT INTO `allotment` VALUES (342, 27, 1, 19, '27', '0.689', '0.498', 'available', 0, NULL, 0, 0, '2019-03-14 18:22:09', '2019-03-14 18:22:12');
INSERT INTO `allotment` VALUES (343, 28, 1, 19, '28', '0.683', '0.502', 'processing', 0, '', 0, 0, '2019-03-14 18:22:56', '2019-05-02 04:29:50');
INSERT INTO `allotment` VALUES (344, 1, 1, 20, '01', '0.667', '0.467', 'available', 0, NULL, 0, 0, '2019-03-14 20:37:06', '2019-03-14 20:41:44');
INSERT INTO `allotment` VALUES (345, 2, 1, 20, '02', '0.673', '0.463', 'available', 0, NULL, 0, 0, '2019-03-14 20:46:30', '2019-03-14 20:46:33');
INSERT INTO `allotment` VALUES (346, 3, 1, 20, '03', '0.679', '0.458', 'available', 0, NULL, 0, 0, '2019-03-14 20:47:12', '2019-03-14 20:47:15');
INSERT INTO `allotment` VALUES (347, 4, 1, 20, '04', '0.685', '0.454', 'available', 0, NULL, 0, 0, '2019-03-14 20:48:01', '2019-03-14 20:48:04');
INSERT INTO `allotment` VALUES (348, 5, 1, 20, '05', '0.691', '0.450', 'available', 0, NULL, 0, 0, '2019-03-14 20:52:41', '2019-03-14 20:52:45');
INSERT INTO `allotment` VALUES (349, 6, 1, 20, '06', '0.696', '0.445', 'available', 0, NULL, 0, 0, '2019-03-14 20:53:27', '2019-03-14 20:53:31');
INSERT INTO `allotment` VALUES (350, 7, 1, 20, '07', '0.703', '0.441', 'available', 0, NULL, 0, 0, '2019-03-14 20:54:08', '2019-03-14 20:54:11');
INSERT INTO `allotment` VALUES (351, 8, 1, 20, '08', '0.708', '0.437', 'available', 0, NULL, 0, 0, '2019-03-14 20:54:45', '2019-03-14 20:54:50');
INSERT INTO `allotment` VALUES (352, 9, 1, 20, '09', '0.714', '0.432', 'available', 0, NULL, 0, 0, '2019-03-14 20:55:30', '2019-03-14 20:55:36');
INSERT INTO `allotment` VALUES (353, 10, 1, 20, '10', '0.720', '0.428', 'available', 0, NULL, 0, 0, '2019-03-14 20:56:08', '2019-03-14 20:56:12');
INSERT INTO `allotment` VALUES (354, 11, 1, 20, '11', '0.725', '0.422', 'available', 0, NULL, 0, 0, '2019-03-14 20:56:46', '2019-03-14 20:56:50');
INSERT INTO `allotment` VALUES (355, 12, 1, 20, '12', '0.731', '0.418', 'available', 0, NULL, 0, 0, '2019-03-14 20:57:40', '2019-03-14 20:57:44');
INSERT INTO `allotment` VALUES (356, 13, 1, 20, '13', '0.737', '0.414', 'available', 0, NULL, 0, 0, '2019-03-14 20:58:24', '2019-03-14 20:58:27');
INSERT INTO `allotment` VALUES (357, 14, 1, 20, '14', '0.743', '0.409', 'available', 0, NULL, 0, 0, '2019-03-14 20:59:06', '2019-03-14 20:59:11');
INSERT INTO `allotment` VALUES (358, 15, 1, 20, '15', '0.746', '0.417', 'processing', 0, '', 0, 0, '2019-03-14 21:24:04', '2019-05-02 15:17:36');
INSERT INTO `allotment` VALUES (359, 16, 1, 20, '16', '0.741', '0.422', 'available', 0, NULL, 0, 0, '2019-03-14 21:24:49', '2019-03-14 21:24:53');
INSERT INTO `allotment` VALUES (360, 17, 1, 20, '17', '0.735', '0.427', 'available', 0, NULL, 0, 0, '2019-03-14 21:25:38', '2019-03-14 21:25:42');
INSERT INTO `allotment` VALUES (361, 18, 1, 20, '18', '0.729', '0.430', 'available', 0, NULL, 0, 0, '2019-03-14 21:26:41', '2019-03-14 21:26:44');
INSERT INTO `allotment` VALUES (362, 19, 1, 20, '19', '0.723', '0.436', 'available', 0, NULL, 0, 0, '2019-03-14 21:27:26', '2019-03-14 21:27:29');
INSERT INTO `allotment` VALUES (363, 20, 1, 20, '29', '0.717', '0.439', 'available', 0, NULL, 0, 0, '2019-03-14 21:28:10', '2019-03-14 21:28:14');
INSERT INTO `allotment` VALUES (364, 21, 1, 20, '21', '0.711', '0.445', 'available', 0, NULL, 0, 0, '2019-03-14 21:29:23', '2019-03-14 21:29:26');
INSERT INTO `allotment` VALUES (365, 22, 1, 20, '22', '0.706', '0.448', 'available', 0, NULL, 0, 0, '2019-03-14 21:30:38', '2019-03-14 21:30:44');
INSERT INTO `allotment` VALUES (366, 23, 1, 20, '23', '0.700', '0.453', 'available', 0, NULL, 0, 0, '2019-03-14 21:31:24', '2019-03-14 21:31:31');
INSERT INTO `allotment` VALUES (367, 24, 1, 20, '24', '0.695', '0.458', 'available', 0, NULL, 0, 0, '2019-03-14 21:32:15', '2019-03-14 21:32:19');
INSERT INTO `allotment` VALUES (368, 25, 1, 20, '25', '0.689', '0.463', 'available', 0, NULL, 0, 0, '2019-03-14 21:32:57', '2019-03-14 21:33:01');
INSERT INTO `allotment` VALUES (369, 26, 1, 20, '26', '0.683', '0.466', 'available', 0, NULL, 0, 0, '2019-03-14 21:33:39', '2019-03-14 21:33:42');
INSERT INTO `allotment` VALUES (370, 27, 1, 20, '27', '0.677', '0.470', 'available', 0, NULL, 0, 0, '2019-03-14 21:34:21', '2019-03-14 21:34:25');
INSERT INTO `allotment` VALUES (371, 28, 1, 20, '28', '0.672', '0.475', 'processing', 0, '', 0, 0, '2019-03-14 21:35:09', '2019-05-01 03:37:09');
INSERT INTO `allotment` VALUES (372, 1, 1, 21, '01', '0.656', '0.441', 'sold', 10224, 'in_process', 0, 0, '2019-03-15 15:50:06', '2019-05-27 21:58:51');
INSERT INTO `allotment` VALUES (373, 2, 1, 21, '02', '0.661', '0.437', 'available', 0, NULL, 0, 0, '2019-03-15 15:50:46', '2019-03-15 15:50:50');
INSERT INTO `allotment` VALUES (374, 3, 1, 21, '03', '0.667', '0.432', 'available', 0, NULL, 0, 0, '2019-03-15 15:51:30', '2019-03-15 15:51:33');
INSERT INTO `allotment` VALUES (375, 4, 1, 21, '04', '0.673', '0.427', 'available', 0, NULL, 0, 0, '2019-03-15 15:56:08', '2019-03-15 15:56:11');
INSERT INTO `allotment` VALUES (376, 5, 1, 21, '05', '0.679', '0.423', 'available', 0, NULL, 0, 0, '2019-03-15 15:56:50', '2019-03-15 15:56:53');
INSERT INTO `allotment` VALUES (377, 6, 1, 21, '06', '0.685', '0.419', 'available', 0, NULL, 0, 0, '2019-03-15 15:59:32', '2019-03-15 15:59:35');
INSERT INTO `allotment` VALUES (378, 7, 1, 21, '07', '0.691', '0.414', 'available', 0, NULL, 0, 0, '2019-03-15 16:00:53', '2019-03-15 16:00:56');
INSERT INTO `allotment` VALUES (379, 8, 1, 21, '08', '0.696', '0.410', 'available', 0, NULL, 0, 0, '2019-03-15 16:01:49', '2019-03-15 16:01:52');
INSERT INTO `allotment` VALUES (380, 9, 1, 21, '09', '0.702', '0.405', 'available', 0, NULL, 0, 0, '2019-03-15 17:20:18', '2019-03-15 17:20:21');
INSERT INTO `allotment` VALUES (381, 10, 1, 21, '10', '0.708', '0.401', 'available', 0, NULL, 0, 0, '2019-03-15 17:21:14', '2019-03-15 17:21:18');
INSERT INTO `allotment` VALUES (382, 11, 1, 21, '11', '0.714', '0.396', 'available', 0, NULL, 0, 0, '2019-03-15 17:22:42', '2019-03-15 17:22:49');
INSERT INTO `allotment` VALUES (383, 12, 1, 21, '12', '0.720', '0.392', 'available', 0, NULL, 0, 0, '2019-03-15 17:24:12', '2019-03-15 17:24:15');
INSERT INTO `allotment` VALUES (384, 13, 1, 21, '13', '0.725', '0.387', 'available', 0, NULL, 0, 0, '2019-03-15 17:32:50', '2019-03-15 17:32:53');
INSERT INTO `allotment` VALUES (385, 14, 1, 21, '14', '0.731', '0.383', 'available', 0, NULL, 0, 0, '2019-03-15 17:33:39', '2019-03-15 17:33:42');
INSERT INTO `allotment` VALUES (386, 15, 1, 21, '15', '0.735', '0.391', 'sold', 10225, 'in_process', 0, 0, '2019-03-15 17:35:16', '2019-05-28 20:31:32');
INSERT INTO `allotment` VALUES (387, 16, 1, 21, '16', '0.729', '0.396', 'available', 0, NULL, 0, 0, '2019-03-15 17:36:03', '2019-03-15 17:36:06');
INSERT INTO `allotment` VALUES (388, 17, 1, 21, '17', '0.723', '0.400', 'available', 0, NULL, 0, 0, '2019-03-15 17:36:55', '2019-03-15 17:37:01');
INSERT INTO `allotment` VALUES (389, 18, 1, 21, '18', '0.717', '0.404', 'available', 0, NULL, 0, 0, '2019-03-15 17:37:41', '2019-03-15 17:37:44');
INSERT INTO `allotment` VALUES (390, 19, 1, 21, '19', '0.712', '0.408', 'available', 0, NULL, 0, 0, '2019-03-15 17:38:24', '2019-03-15 17:46:24');
INSERT INTO `allotment` VALUES (391, 20, 1, 21, '20', '0.706', '0.414', 'available', 0, NULL, 0, 0, '2019-03-15 17:47:04', '2019-03-15 17:47:08');
INSERT INTO `allotment` VALUES (392, 21, 1, 21, '21', '0.700', '0.419', 'available', 0, NULL, 0, 0, '2019-03-15 17:47:49', '2019-03-15 17:47:54');
INSERT INTO `allotment` VALUES (393, 22, 1, 21, '22', '0.694', '0.422', 'available', 0, NULL, 0, 0, '2019-03-15 17:48:37', '2019-03-15 17:48:41');
INSERT INTO `allotment` VALUES (394, 23, 1, 21, '23', '0.688', '0.427', 'available', 0, NULL, 0, 0, '2019-03-15 17:49:24', '2019-04-26 12:28:26');
INSERT INTO `allotment` VALUES (395, 24, 1, 21, '24', '0.683', '0.432', 'available', 0, NULL, 0, 0, '2019-03-15 17:50:03', '2019-03-15 17:50:06');
INSERT INTO `allotment` VALUES (396, 25, 1, 21, '25', '0.677', '0.435', 'available', 0, NULL, 0, 0, '2019-03-15 17:50:43', '2019-03-15 17:50:48');
INSERT INTO `allotment` VALUES (397, 26, 1, 21, '26', '0.672', '0.440', 'available', 0, NULL, 0, 0, '2019-03-15 17:51:24', '2019-03-15 17:51:28');
INSERT INTO `allotment` VALUES (398, 27, 1, 21, '27', '0.666', '0.444', 'available', 0, NULL, 0, 0, '2019-03-15 17:52:02', '2019-03-15 17:52:06');
INSERT INTO `allotment` VALUES (399, 28, 1, 21, '28', '0.660', '0.449', 'processing', 0, NULL, 0, 0, '2019-03-15 17:52:38', '2019-06-08 13:48:19');
INSERT INTO `allotment` VALUES (400, 1, 1, 22, '01', '0.644', '0.414', 'sold', 10226, 'in_process', 0, 0, '2019-03-15 17:54:12', '2019-05-28 20:33:46');
INSERT INTO `allotment` VALUES (401, 2, 1, 22, '02', '0.650', '0.409', 'available', 0, NULL, 0, 0, '2019-03-15 17:54:49', '2019-03-15 17:54:53');
INSERT INTO `allotment` VALUES (402, 3, 1, 22, '03', '0.655', '0.405', 'available', 0, NULL, 0, 0, '2019-03-15 17:55:25', '2019-03-15 17:55:28');
INSERT INTO `allotment` VALUES (403, 4, 1, 22, '04', '0.661', '0.401', 'available', 0, NULL, 0, 0, '2019-03-15 17:55:58', '2019-03-15 17:56:02');
INSERT INTO `allotment` VALUES (404, 5, 1, 22, '05', '0.667', '0.396', 'available', 0, NULL, 0, 0, '2019-03-15 17:56:44', '2019-03-15 17:56:47');
INSERT INTO `allotment` VALUES (405, 6, 1, 22, '06', '0.673', '0.392', 'available', 0, NULL, 0, 0, '2019-03-15 17:57:49', '2019-03-15 17:58:05');
INSERT INTO `allotment` VALUES (406, 7, 1, 22, '07', '0.679', '0.388', 'available', 0, NULL, 0, 0, '2019-03-15 17:58:48', '2019-03-15 17:58:52');
INSERT INTO `allotment` VALUES (407, 8, 1, 22, '08', '0.685', '0.384', 'available', 0, NULL, 0, 0, '2019-03-15 17:59:29', '2019-03-15 17:59:32');
INSERT INTO `allotment` VALUES (408, 9, 1, 22, '09', '0.690', '0.379', 'available', 0, NULL, 0, 0, '2019-03-15 18:00:05', '2019-03-15 18:00:09');
INSERT INTO `allotment` VALUES (409, 10, 1, 22, '10', '0.696', '0.374', 'available', 0, NULL, 0, 0, '2019-03-15 18:00:44', '2019-03-15 18:00:47');
INSERT INTO `allotment` VALUES (410, 11, 1, 22, '11', '0.702', '0.369', 'available', 0, NULL, 0, 0, '2019-03-15 18:01:24', '2019-03-15 18:01:27');
INSERT INTO `allotment` VALUES (411, 12, 1, 22, '12', '0.708', '0.365', 'available', 0, NULL, 0, 0, '2019-03-15 18:02:02', '2019-03-15 18:02:06');
INSERT INTO `allotment` VALUES (412, 13, 1, 22, '13', '0.714', '0.360', 'available', 0, NULL, 0, 0, '2019-03-15 18:02:42', '2019-03-15 18:02:45');
INSERT INTO `allotment` VALUES (413, 14, 1, 22, '14', '0.720', '0.356', 'available', 0, NULL, 0, 0, '2019-03-15 18:03:26', '2019-03-15 18:03:30');
INSERT INTO `allotment` VALUES (414, 15, 1, 22, '15', '0.723', '0.365', 'available', 0, NULL, 0, 0, '2019-03-15 18:04:06', '2019-03-15 18:04:09');
INSERT INTO `allotment` VALUES (415, 16, 1, 22, '16', '0.717', '0.369', 'available', 0, NULL, 0, 0, '2019-03-15 18:04:51', '2019-03-15 18:04:55');
INSERT INTO `allotment` VALUES (416, 17, 1, 22, '17', '0.712', '0.374', 'available', 0, NULL, 0, 0, '2019-03-15 18:05:28', '2019-03-15 18:05:31');
INSERT INTO `allotment` VALUES (417, 18, 1, 22, '18', '0.706', '0.378', 'available', 0, NULL, 0, 0, '2019-03-15 18:06:07', '2019-03-15 18:06:11');
INSERT INTO `allotment` VALUES (418, 19, 1, 22, '19', '0.700', '0.383', 'available', 0, NULL, 0, 0, '2019-03-15 18:06:54', '2019-03-15 18:06:58');
INSERT INTO `allotment` VALUES (419, 20, 1, 22, '20', '0.694', '0.387', 'available', 0, NULL, 0, 0, '2019-03-15 18:07:44', '2019-04-17 11:44:32');
INSERT INTO `allotment` VALUES (420, 21, 1, 22, '21', '0.688', '0.392', 'available', 0, NULL, 0, 0, '2019-03-15 18:08:27', '2019-03-15 18:08:30');
INSERT INTO `allotment` VALUES (421, 22, 1, 22, '22', '0.683', '0.396', 'available', 0, NULL, 0, 0, '2019-03-15 18:09:10', '2019-03-15 18:09:14');
INSERT INTO `allotment` VALUES (422, 23, 1, 22, '23', '0.677', '0.401', 'available', 0, NULL, 0, 0, '2019-03-15 18:10:04', '2019-03-15 18:10:08');
INSERT INTO `allotment` VALUES (423, 24, 1, 22, '24', '0.671', '0.404', 'available', 0, NULL, 0, 0, '2019-03-15 18:10:47', '2019-03-15 18:10:51');
INSERT INTO `allotment` VALUES (424, 25, 1, 22, '25', '0.665', '0.410', 'available', 0, NULL, 0, 0, '2019-03-15 18:11:36', '2019-03-15 18:11:39');
INSERT INTO `allotment` VALUES (425, 26, 1, 22, '26', '0.659', '0.414', 'available', 0, NULL, 0, 0, '2019-03-15 18:12:15', '2019-03-15 18:12:19');
INSERT INTO `allotment` VALUES (426, 27, 1, 22, '27', '0.654', '0.418', 'available', 0, NULL, 0, 0, '2019-03-15 18:12:55', '2019-03-15 18:12:58');
INSERT INTO `allotment` VALUES (427, 28, 1, 22, '28', '0.649', '0.422', 'sold', 10243, 'in_process', 0, 0, '2019-03-15 18:13:40', '2019-06-07 19:53:31');
INSERT INTO `allotment` VALUES (428, 1, 1, 23, '01', '0.632', '0.388', 'sold', 10235, 'in_process', 0, 0, '2019-03-15 18:14:55', '2019-05-30 20:58:41');
INSERT INTO `allotment` VALUES (429, 2, 1, 23, '02', '0.638', '0.384', 'available', 0, NULL, 0, 0, '2019-03-15 18:15:36', '2019-03-15 18:15:40');
INSERT INTO `allotment` VALUES (430, 3, 1, 23, '03', '0.644', '0.379', 'available', 0, NULL, 0, 0, '2019-03-15 18:16:12', '2019-03-15 18:16:16');
INSERT INTO `allotment` VALUES (431, 4, 1, 23, '04', '0.650', '0.374', 'available', 0, NULL, 0, 0, '2019-03-15 18:16:56', '2019-03-15 18:16:59');
INSERT INTO `allotment` VALUES (432, 5, 1, 23, '05', '0.656', '0.370', 'available', 0, NULL, 0, 0, '2019-03-15 18:17:36', '2019-03-15 18:17:39');
INSERT INTO `allotment` VALUES (433, 6, 1, 23, '06', '0.661', '0.366', 'available', 0, NULL, 0, 0, '2019-03-15 18:18:18', '2019-03-15 18:18:22');
INSERT INTO `allotment` VALUES (434, 7, 1, 23, '07', '0.667', '0.361', 'available', 0, NULL, 0, 0, '2019-03-15 18:19:01', '2019-03-15 18:19:04');
INSERT INTO `allotment` VALUES (435, 8, 1, 23, '08', '0.672', '0.357', 'available', 0, NULL, 0, 0, '2019-03-15 18:20:03', '2019-03-15 18:20:07');
INSERT INTO `allotment` VALUES (436, 9, 1, 23, '09', '0.678', '0.352', 'available', 0, NULL, 0, 0, '2019-03-15 18:20:47', '2019-03-15 18:20:50');
INSERT INTO `allotment` VALUES (437, 10, 1, 23, '10', '0.684', '0.348', 'available', 0, NULL, 0, 0, '2019-03-15 18:21:26', '2019-03-15 18:21:29');
INSERT INTO `allotment` VALUES (438, 11, 1, 23, '11', '0.691', '0.343', 'available', 0, NULL, 0, 0, '2019-03-15 18:22:04', '2019-03-15 18:22:08');
INSERT INTO `allotment` VALUES (439, 12, 1, 23, '12', '0.696', '0.339', 'available', 0, NULL, 0, 0, '2019-03-15 18:22:44', '2019-03-15 18:22:47');
INSERT INTO `allotment` VALUES (440, 13, 1, 23, '13', '0.702', '0.334', 'available', 0, NULL, 0, 0, '2019-03-15 18:23:22', '2019-03-15 18:23:25');
INSERT INTO `allotment` VALUES (441, 14, 1, 23, '14', '0.708', '0.330', 'available', 0, NULL, 0, 0, '2019-03-15 18:23:56', '2019-03-15 18:24:02');
INSERT INTO `allotment` VALUES (442, 15, 1, 23, '15', '0.711', '0.338', 'available', 0, NULL, 0, 0, '2019-03-15 18:24:33', '2019-03-15 18:24:36');
INSERT INTO `allotment` VALUES (443, 16, 1, 23, '16', '0.706', '0.343', 'available', 0, NULL, 0, 0, '2019-03-15 18:25:12', '2019-03-15 18:25:15');
INSERT INTO `allotment` VALUES (444, 17, 1, 23, '17', '0.700', '0.347', 'available', 0, NULL, 0, 0, '2019-03-15 18:25:47', '2019-03-15 18:25:50');
INSERT INTO `allotment` VALUES (445, 18, 1, 23, '18', '0.694', '0.352', 'available', 0, NULL, 0, 0, '2019-03-15 18:26:33', '2019-03-15 18:26:37');
INSERT INTO `allotment` VALUES (446, 19, 1, 23, '19', '0.688', '0.356', 'available', 0, NULL, 0, 0, '2019-03-15 18:27:15', '2019-03-15 18:27:20');
INSERT INTO `allotment` VALUES (447, 20, 1, 23, '20', '0.683', '0.361', 'available', 0, NULL, 0, 0, '2019-03-15 18:27:57', '2019-03-15 18:28:01');
INSERT INTO `allotment` VALUES (448, 21, 1, 23, '21', '0.676', '0.366', 'available', 0, NULL, 0, 0, '2019-03-15 18:28:34', '2019-03-15 18:28:37');
INSERT INTO `allotment` VALUES (449, 22, 1, 23, '22', '0.671', '0.370', 'available', 0, NULL, 0, 0, '2019-03-15 18:29:12', '2019-03-15 18:29:15');
INSERT INTO `allotment` VALUES (450, 23, 1, 23, '23', '0.665', '0.374', 'available', 0, NULL, 0, 0, '2019-03-15 18:29:57', '2019-04-25 10:45:07');
INSERT INTO `allotment` VALUES (451, 24, 1, 23, '24', '0.660', '0.379', 'available', 0, NULL, 0, 0, '2019-03-15 18:30:36', '2019-03-15 18:30:40');
INSERT INTO `allotment` VALUES (452, 25, 1, 23, '25', '0.654', '0.383', 'available', 0, NULL, 0, 0, '2019-03-15 18:31:20', '2019-03-15 18:31:24');
INSERT INTO `allotment` VALUES (453, 26, 1, 23, '26', '0.648', '0.387', 'available', 0, NULL, 0, 0, '2019-03-15 18:32:06', '2019-03-15 18:32:10');
INSERT INTO `allotment` VALUES (454, 27, 1, 23, '27', '0.642', '0.391', 'available', 0, NULL, 0, 0, '2019-03-15 18:32:44', '2019-03-15 18:32:48');
INSERT INTO `allotment` VALUES (455, 28, 1, 23, '28', '0.636', '0.396', 'sold', 10234, 'in_process', 0, 0, '2019-03-15 18:33:26', '2019-05-30 20:56:41');
INSERT INTO `allotment` VALUES (456, 1, 1, 24, '01', '0.626', '0.356', 'processing', 0, '', 0, 0, '2019-03-15 18:34:25', '2019-04-30 01:55:59');
INSERT INTO `allotment` VALUES (457, 2, 1, 24, '02', '0.632', '0.352', 'available', 0, NULL, 0, 0, '2019-03-15 18:35:05', '2019-03-15 18:35:08');
INSERT INTO `allotment` VALUES (458, 3, 1, 24, '03', '0.638', '0.348', 'available', 0, NULL, 0, 0, '2019-03-15 18:35:50', '2019-03-15 18:35:54');
INSERT INTO `allotment` VALUES (459, 4, 1, 24, '04', '0.644', '0.343', 'available', 0, NULL, 0, 0, '2019-03-15 18:36:37', '2019-03-15 18:36:40');
INSERT INTO `allotment` VALUES (460, 5, 1, 24, '05', '0.650', '0.338', 'available', 0, NULL, 0, 0, '2019-03-15 18:37:13', '2019-03-15 18:37:18');
INSERT INTO `allotment` VALUES (461, 6, 1, 24, '06', '0.656', '0.334', 'available', 0, NULL, 0, 0, '2019-03-15 18:37:55', '2019-03-15 18:38:27');
INSERT INTO `allotment` VALUES (462, 7, 1, 24, '07', '0.661', '0.330', 'available', 0, NULL, 0, 0, '2019-03-15 18:39:01', '2019-03-15 18:39:05');
INSERT INTO `allotment` VALUES (463, 8, 1, 24, '08', '0.666', '0.325', 'available', 0, NULL, 0, 0, '2019-03-15 18:39:44', '2019-03-15 18:39:48');
INSERT INTO `allotment` VALUES (464, 9, 1, 24, '09', '0.673', '0.321', 'available', 0, NULL, 0, 0, '2019-03-15 18:40:23', '2019-03-15 18:40:26');
INSERT INTO `allotment` VALUES (465, 10, 1, 24, '10', '0.678', '0.316', 'available', 0, NULL, 0, 0, '2019-03-15 18:40:59', '2019-03-15 18:41:03');
INSERT INTO `allotment` VALUES (466, 11, 1, 24, '11', '0.684', '0.312', 'sold', 10221, 'in_process', 0, 0, '2019-03-15 18:42:02', '2019-05-24 13:42:51');
INSERT INTO `allotment` VALUES (467, 12, 1, 24, '12', '0.694', '0.316', 'sold', 10189, 'in_process', 0, 0, '2019-03-15 18:42:35', '2019-05-15 00:40:10');
INSERT INTO `allotment` VALUES (468, 13, 1, 24, '13', '0.688', '0.321', 'available', 0, NULL, 0, 0, '2019-03-15 18:43:10', '2019-03-15 18:43:14');
INSERT INTO `allotment` VALUES (469, 14, 1, 24, '14', '0.683', '0.325', 'available', 0, NULL, 0, 0, '2019-03-15 18:43:50', '2019-03-15 18:43:53');
INSERT INTO `allotment` VALUES (470, 15, 1, 24, '15', '0.677', '0.330', 'available', 0, NULL, 0, 0, '2019-03-15 18:44:28', '2019-03-15 18:44:34');
INSERT INTO `allotment` VALUES (471, 16, 1, 24, '16', '0.671', '0.334', 'available', 0, NULL, 0, 0, '2019-03-15 18:45:07', '2019-03-15 18:45:10');
INSERT INTO `allotment` VALUES (472, 17, 1, 24, '17', '0.665', '0.339', 'available', 0, NULL, 0, 0, '2019-03-15 18:45:46', '2019-03-15 18:45:50');
INSERT INTO `allotment` VALUES (473, 18, 1, 24, '18', '0.659', '0.343', 'available', 0, NULL, 0, 0, '2019-03-15 18:46:29', '2019-03-15 18:46:32');
INSERT INTO `allotment` VALUES (474, 19, 1, 24, '19', '0.654', '0.347', 'available', 0, NULL, 0, 0, '2019-03-15 18:47:07', '2019-03-15 18:47:11');
INSERT INTO `allotment` VALUES (475, 20, 1, 24, '20', '0.648', '0.352', 'available', 0, NULL, 0, 0, '2019-03-15 18:47:49', '2019-03-15 18:47:52');
INSERT INTO `allotment` VALUES (476, 21, 1, 24, '21', '0.641', '0.356', 'available', 0, NULL, 0, 0, '2019-03-15 18:48:27', '2019-03-15 18:48:31');
INSERT INTO `allotment` VALUES (477, 22, 1, 24, '22', '0.636', '0.361', 'available', 0, NULL, 0, 0, '2019-03-15 18:49:13', '2019-03-15 18:49:16');
INSERT INTO `allotment` VALUES (478, 23, 1, 24, '23', '0.630', '0.365', 'sold', 10165, 'in_process', 0, 0, '2019-03-15 18:55:24', '2019-05-14 20:06:33');
INSERT INTO `allotment` VALUES (479, 1, 1, 25, '01', '0.613', '0.326', 'sold', 10190, 'in_process', 0, 0, '2019-03-15 19:12:44', '2019-05-15 00:40:30');
INSERT INTO `allotment` VALUES (480, 2, 1, 25, '02', '0.619', '0.322', 'available', 0, NULL, 0, 0, '2019-03-15 19:13:35', '2019-03-15 19:13:39');
INSERT INTO `allotment` VALUES (481, 3, 1, 25, '03', '0.624', '0.317', 'available', 0, NULL, 0, 0, '2019-03-15 19:14:54', '2019-03-15 19:14:57');
INSERT INTO `allotment` VALUES (482, 4, 1, 25, '04', '0.630', '0.312', 'available', 0, NULL, 0, 0, '2019-03-15 19:15:40', '2019-03-15 19:15:45');
INSERT INTO `allotment` VALUES (483, 5, 1, 25, '05', '0.636', '0.309', 'available', 0, NULL, 0, 0, '2019-03-15 19:16:36', '2019-03-15 19:16:39');
INSERT INTO `allotment` VALUES (484, 6, 1, 25, '06', '0.642', '0.304', 'available', 0, NULL, 0, 0, '2019-03-15 19:17:20', '2019-03-15 19:17:23');
INSERT INTO `allotment` VALUES (485, 7, 1, 25, '07', '0.647', '0.299', 'available', 0, NULL, 0, 0, '2019-03-15 19:18:02', '2019-03-15 19:18:06');
INSERT INTO `allotment` VALUES (486, 8, 1, 25, '08', '0.653', '0.295', 'available', 0, NULL, 0, 0, '2019-03-15 19:19:10', '2019-03-15 19:19:18');
INSERT INTO `allotment` VALUES (487, 9, 1, 25, '09', '0.659', '0.290', 'sold', 10222, 'in_process', 0, 0, '2019-03-15 19:20:04', '2019-05-24 13:44:36');
INSERT INTO `allotment` VALUES (488, 10, 1, 25, '10', '0.663', '0.299', 'sold', 10208, 'in_process', 0, 0, '2019-03-15 19:20:52', '2019-05-15 17:34:03');
INSERT INTO `allotment` VALUES (489, 11, 1, 25, '11', '0.658', '0.304', 'available', 0, NULL, 0, 0, '2019-03-15 19:21:30', '2019-03-15 19:21:36');
INSERT INTO `allotment` VALUES (490, 12, 1, 25, '12', '0.652', '0.308', 'available', 0, NULL, 0, 0, '2019-03-15 19:22:11', '2019-03-15 19:22:15');
INSERT INTO `allotment` VALUES (491, 13, 1, 25, '13', '0.647', '0.312', 'available', 0, NULL, 0, 0, '2019-03-15 19:22:54', '2019-03-15 19:22:57');
INSERT INTO `allotment` VALUES (492, 14, 1, 25, '14', '0.640', '0.317', 'available', 0, NULL, 0, 0, '2019-03-15 19:23:33', '2019-03-15 19:23:37');
INSERT INTO `allotment` VALUES (493, 15, 1, 25, '15', '0.635', '0.320', 'available', 0, NULL, 0, 0, '2019-03-15 19:24:15', '2019-03-15 19:24:18');
INSERT INTO `allotment` VALUES (494, 16, 1, 25, '16', '0.629', '0.326', 'available', 0, NULL, 0, 0, '2019-03-15 19:24:50', '2019-03-15 19:24:53');
INSERT INTO `allotment` VALUES (495, 17, 1, 25, '17', '0.623', '0.330', 'available', 0, NULL, 0, 0, '2019-03-15 19:26:40', '2019-03-15 19:26:43');
INSERT INTO `allotment` VALUES (496, 18, 1, 25, '18', '0.617', '0.335', 'processing', 0, '', 0, 0, '2019-03-15 19:27:50', '2019-04-30 16:34:06');
INSERT INTO `allotment` VALUES (497, 1, 1, 26, '01', '0.596', '0.304', 'processing', 0, NULL, 0, 0, '2019-03-15 19:31:00', '2019-05-17 18:04:06');
INSERT INTO `allotment` VALUES (498, 2, 1, 26, '02', '0.602', '0.299', 'available', 0, NULL, 0, 0, '2019-03-15 19:31:55', '2019-03-15 19:31:58');
INSERT INTO `allotment` VALUES (499, 3, 1, 26, '03', '0.607', '0.295', 'available', 0, NULL, 0, 0, '2019-03-15 19:32:34', '2019-03-15 19:32:40');
INSERT INTO `allotment` VALUES (500, 4, 1, 26, '04', '0.613', '0.291', 'available', 0, NULL, 0, 0, '2019-03-15 19:33:19', '2019-03-15 19:33:23');
INSERT INTO `allotment` VALUES (501, 5, 1, 26, '05', '0.619', '0.286', 'available', 0, NULL, 0, 0, '2019-03-15 19:33:59', '2019-03-15 19:34:02');
INSERT INTO `allotment` VALUES (502, 6, 1, 26, '06', '0.625', '0.281', 'available', 0, NULL, 0, 0, '2019-03-15 19:34:39', '2019-03-15 19:34:43');
INSERT INTO `allotment` VALUES (503, 7, 1, 26, '07', '0.630', '0.277', 'available', 0, NULL, 0, 0, '2019-03-15 19:35:18', '2019-03-15 19:35:22');
INSERT INTO `allotment` VALUES (504, 8, 1, 26, '08', '0.634', '0.286', 'sold', 10233, 'in_process', 0, 0, '2019-03-15 19:36:04', '2019-05-30 19:06:24');
INSERT INTO `allotment` VALUES (505, 9, 1, 26, '09', '0.628', '0.291', 'available', 0, NULL, 0, 0, '2019-03-15 19:36:46', '2019-03-15 19:36:50');
INSERT INTO `allotment` VALUES (506, 10, 1, 26, '10', '0.623', '0.294', 'available', 0, NULL, 0, 0, '2019-03-15 19:38:43', '2019-03-15 19:38:47');
INSERT INTO `allotment` VALUES (507, 11, 1, 26, '11', '0.617', '0.299', 'available', 0, NULL, 0, 0, '2019-03-15 19:41:10', '2019-03-15 19:41:13');
INSERT INTO `allotment` VALUES (508, 12, 1, 26, '12', '0.611', '0.305', 'available', 0, NULL, 0, 0, '2019-03-15 19:41:52', '2019-03-15 19:41:55');
INSERT INTO `allotment` VALUES (509, 13, 1, 26, '13', '0.606', '0.307', 'available', 0, NULL, 0, 0, '2019-03-15 19:42:36', '2019-03-15 19:42:40');
INSERT INTO `allotment` VALUES (510, 14, 1, 26, '14', '0.600', '0.313', 'processing', 0, '', 0, 0, '2019-03-15 19:43:30', '2019-04-30 23:49:33');
INSERT INTO `allotment` VALUES (511, 1, 1, 27, '01', '0.584', '0.278', 'available', 0, NULL, 0, 0, '2019-03-15 19:44:19', '2019-03-15 19:44:22');
INSERT INTO `allotment` VALUES (512, 2, 1, 27, '02', '0.590', '0.273', 'available', 0, NULL, 0, 0, '2019-03-15 19:45:43', '2019-03-15 19:45:48');
INSERT INTO `allotment` VALUES (513, 3, 1, 27, '03', '0.596', '0.268', 'available', 0, NULL, 0, 0, '2019-03-15 19:46:25', '2019-03-15 19:46:29');
INSERT INTO `allotment` VALUES (514, 4, 1, 27, '04', '0.601', '0.263', 'available', 0, NULL, 0, 0, '2019-03-15 19:47:10', '2019-03-15 19:47:17');
INSERT INTO `allotment` VALUES (515, 5, 1, 27, '05', '0.607', '0.260', 'available', 0, NULL, 0, 0, '2019-03-15 19:48:06', '2019-03-15 19:48:10');
INSERT INTO `allotment` VALUES (516, 6, 1, 27, '06', '0.613', '0.255', 'available', 0, NULL, 0, 0, '2019-03-15 19:49:09', '2019-03-15 19:49:12');
INSERT INTO `allotment` VALUES (517, 7, 1, 27, '07', '0.617', '0.264', 'available', 0, NULL, 0, 0, '2019-03-15 19:49:54', '2019-03-15 19:49:57');
INSERT INTO `allotment` VALUES (518, 8, 1, 27, '08', '0.611', '0.268', 'available', 0, NULL, 0, 0, '2019-03-15 19:50:36', '2019-03-15 19:50:41');
INSERT INTO `allotment` VALUES (519, 9, 1, 27, '09', '0.605', '0.273', 'available', 0, NULL, 0, 0, '2019-03-15 19:52:11', '2019-03-15 19:52:14');
INSERT INTO `allotment` VALUES (520, 10, 1, 27, '10', '0.599', '0.277', 'available', 0, NULL, 0, 0, '2019-03-15 19:52:57', '2019-03-15 19:53:00');
INSERT INTO `allotment` VALUES (521, 11, 1, 27, '11', '0.594', '0.281', 'available', 0, NULL, 0, 0, '2019-03-15 19:53:35', '2019-03-15 19:53:39');
INSERT INTO `allotment` VALUES (522, 12, 1, 27, '12', '0.588', '0.286', 'processing', 0, '', 0, 0, '2019-03-15 19:54:15', '2019-05-03 01:42:55');
INSERT INTO `allotment` VALUES (523, 1, 1, 28, '01', '0.573', '0.250', 'available', 0, NULL, 0, 0, '2019-03-15 19:58:16', '2019-03-15 19:58:20');
INSERT INTO `allotment` VALUES (524, 2, 1, 28, '02', '0.578', '0.246', 'available', 0, NULL, 0, 0, '2019-03-15 19:59:07', '2019-03-15 19:59:10');
INSERT INTO `allotment` VALUES (525, 3, 1, 28, '03', '0.584', '0.242', 'available', 0, NULL, 0, 0, '2019-03-15 19:59:51', '2019-03-15 19:59:54');
INSERT INTO `allotment` VALUES (526, 4, 1, 28, '04', '0.590', '0.237', 'available', 0, NULL, 0, 0, '2019-03-15 20:00:36', '2019-03-15 20:00:39');
INSERT INTO `allotment` VALUES (527, 5, 1, 28, '05', '0.595', '0.233', 'available', 0, NULL, 0, 0, '2019-03-15 20:02:10', '2019-03-15 20:02:19');
INSERT INTO `allotment` VALUES (528, 6, 1, 28, '06', '0.599', '0.242', 'available', 0, NULL, 0, 0, '2019-03-15 20:03:49', '2019-03-15 20:03:52');
INSERT INTO `allotment` VALUES (529, 7, 1, 28, '07', '0.593', '0.246', 'available', 0, NULL, 0, 0, '2019-03-15 20:04:59', '2019-03-15 20:05:02');
INSERT INTO `allotment` VALUES (530, 8, 1, 28, '08', '0.588', '0.252', 'available', 0, NULL, 0, 0, '2019-03-15 20:05:49', '2019-03-15 20:05:53');
INSERT INTO `allotment` VALUES (531, 9, 1, 28, '09', '0.582', '0.255', 'available', 0, NULL, 0, 0, '2019-03-15 20:06:31', '2019-03-15 20:06:35');
INSERT INTO `allotment` VALUES (532, 10, 1, 28, '10', '0.576', '0.259', 'available', 0, NULL, 0, 0, '2019-03-15 20:07:18', '2019-03-15 20:07:21');
INSERT INTO `allotment` VALUES (533, 1, 1, 29, '01', '0.561', '0.224', 'available', 0, NULL, 0, 0, '2019-03-15 20:10:09', '2019-03-15 20:10:12');
INSERT INTO `allotment` VALUES (534, 2, 1, 29, '02', '0.567', '0.220', 'available', 0, NULL, 0, 0, '2019-03-15 20:10:46', '2019-03-15 20:10:51');
INSERT INTO `allotment` VALUES (535, 3, 1, 29, '03', '0.572', '0.216', 'available', 0, NULL, 0, 0, '2019-03-15 20:11:26', '2019-03-15 20:11:29');
INSERT INTO `allotment` VALUES (536, 4, 1, 29, '04', '0.578', '0.211', 'available', 0, NULL, 0, 0, '2019-03-15 20:12:05', '2019-03-15 20:12:08');
INSERT INTO `allotment` VALUES (537, 5, 1, 29, '05', '0.582', '0.220', 'available', 0, NULL, 0, 0, '2019-03-15 20:12:46', '2019-03-15 20:12:49');
INSERT INTO `allotment` VALUES (538, 6, 1, 29, '06', '0.576', '0.224', 'available', 0, NULL, 0, 0, '2019-03-15 20:13:22', '2019-03-15 20:13:25');
INSERT INTO `allotment` VALUES (539, 7, 1, 29, '07', '0.570', '0.229', 'available', 0, NULL, 0, 0, '2019-03-15 20:13:56', '2019-03-15 20:13:59');
INSERT INTO `allotment` VALUES (540, 8, 1, 29, '08', '0.565', '0.233', 'available', 0, NULL, 0, 0, '2019-03-15 20:14:32', '2019-03-15 20:14:36');
INSERT INTO `allotment` VALUES (543, 1, 1, 33, '01', '0.466', '0.262', 'processing', 0, '', 0, 0, '2019-03-15 20:25:51', '2019-05-03 02:57:18');
INSERT INTO `allotment` VALUES (544, 2, 1, 33, '02', '0.472', '0.257', 'available', 0, NULL, 0, 0, '2019-03-18 07:38:10', '2019-03-18 07:38:12');
INSERT INTO `allotment` VALUES (545, 3, 1, 33, '03', '0.477', '0.253', 'available', 0, NULL, 0, 0, '2019-03-18 07:38:54', '2019-03-18 07:38:57');
INSERT INTO `allotment` VALUES (546, 4, 1, 33, '04', '0.483', '0.248', 'processing', 0, '', 0, 0, '2019-03-18 07:39:34', '2019-05-03 02:57:28');
INSERT INTO `allotment` VALUES (547, 5, 1, 33, '05', '0.487', '0.257', 'available', 0, NULL, 0, 0, '2019-03-18 07:40:17', '2019-03-18 07:40:19');
INSERT INTO `allotment` VALUES (548, 6, 1, 33, '06', '0.481', '0.261', 'available', 0, NULL, 0, 0, '2019-03-18 07:40:55', '2019-03-18 07:40:58');
INSERT INTO `allotment` VALUES (549, 7, 1, 33, '07', '0.476', '0.266', 'available', 0, NULL, 0, 0, '2019-03-18 07:41:30', '2019-03-18 07:41:33');
INSERT INTO `allotment` VALUES (550, 8, 1, 33, '08', '0.470', '0.270', 'sold', 10229, 'in_process', 0, 0, '2019-03-18 07:42:06', '2019-05-29 14:49:00');
INSERT INTO `allotment` VALUES (554, 1, 1, 34, '01', '0.454', '0.234', 'available', 0, NULL, 0, 0, '2019-03-18 07:43:48', '2019-03-18 07:43:51');
INSERT INTO `allotment` VALUES (555, 2, 1, 34, '02', '0.460', '0.230', 'available', 0, NULL, 0, 0, '2019-03-18 07:44:21', '2019-03-18 07:44:24');
INSERT INTO `allotment` VALUES (556, 3, 1, 34, '03', '0.466', '0.226', 'available', 0, NULL, 0, 0, '2019-03-18 07:44:56', '2019-03-18 07:44:58');
INSERT INTO `allotment` VALUES (557, 4, 1, 34, '04', '0.470', '0.235', 'available', 0, NULL, 0, 0, '2019-03-18 07:45:30', '2019-03-18 07:45:33');
INSERT INTO `allotment` VALUES (558, 5, 1, 34, '05', '0.464', '0.239', 'available', 0, NULL, 0, 0, '2019-03-18 07:46:03', '2019-03-18 07:46:06');
INSERT INTO `allotment` VALUES (559, 6, 1, 34, '06', '0.458', '0.244', 'available', 0, NULL, 0, 0, '2019-03-18 07:46:37', '2019-03-18 07:46:41');
INSERT INTO `allotment` VALUES (560, 1, 1, 35, '01', '0.385', '0.266', 'available', 0, NULL, 0, 0, '2019-03-18 07:48:07', '2019-03-18 07:48:10');
INSERT INTO `allotment` VALUES (561, 2, 1, 35, '02', '0.390', '0.262', 'available', 0, NULL, 0, 0, '2019-03-18 07:49:18', '2019-03-18 07:49:21');
INSERT INTO `allotment` VALUES (562, 3, 1, 35, '03', '0.396', '0.258', 'available', 0, NULL, 0, 0, '2019-03-18 07:49:55', '2019-03-18 07:49:58');
INSERT INTO `allotment` VALUES (563, 4, 1, 35, '04', '0.402', '0.254', 'available', 0, NULL, 0, 0, '2019-03-18 07:50:39', '2019-03-18 07:50:41');
INSERT INTO `allotment` VALUES (565, 6, 1, 35, '06', '0.414', '0.246', 'available', 0, NULL, 0, 0, '2019-03-18 07:52:17', '2019-03-18 07:52:20');
INSERT INTO `allotment` VALUES (566, 5, 1, 35, '05', '0.408', '0.249', 'available', 0, NULL, 0, 0, '2019-03-18 07:53:25', '2019-03-18 07:53:28');
INSERT INTO `allotment` VALUES (567, 7, 1, 35, '07', '0.419', '0.240', 'available', 0, NULL, 0, 0, '2019-03-18 07:53:57', '2019-03-18 07:54:00');
INSERT INTO `allotment` VALUES (568, 8, 1, 35, '08', '0.425', '0.236', 'available', 0, NULL, 0, 0, '2019-03-18 07:54:32', '2019-03-18 07:54:35');
INSERT INTO `allotment` VALUES (569, 9, 1, 35, '09', '0.431', '0.231', 'available', 0, NULL, 0, 0, '2019-03-18 07:55:09', '2019-03-18 07:55:12');
INSERT INTO `allotment` VALUES (570, 10, 1, 35, '10', '0.437', '0.227', 'available', 0, NULL, 0, 0, '2019-03-18 07:55:44', '2019-03-18 07:55:47');
INSERT INTO `allotment` VALUES (571, 11, 1, 35, '11', '0.442', '0.222', 'available', 0, NULL, 0, 0, '2019-03-18 07:56:33', '2019-03-18 07:56:35');
INSERT INTO `allotment` VALUES (572, 12, 1, 35, '12', '0.448', '0.218', 'available', 0, NULL, 0, 0, '2019-03-18 07:57:09', '2019-03-18 07:57:11');
INSERT INTO `allotment` VALUES (573, 13, 1, 35, '13', '0.454', '0.214', 'available', 0, NULL, 0, 0, '2019-03-18 07:57:46', '2019-03-18 07:57:49');
INSERT INTO `allotment` VALUES (574, 1, 1, 30, '01', '0.501', '0.341', 'processing', 0, '', 0, 0, '2019-03-18 09:30:29', '2019-04-30 00:38:19');
INSERT INTO `allotment` VALUES (575, 2, 1, 30, '02', '0.507', '0.337', 'processing', 0, '', 0, 0, '2019-03-18 09:31:19', '2019-05-03 05:32:56');
INSERT INTO `allotment` VALUES (576, 3, 1, 30, '03', '0.512', '0.333', 'available', 0, NULL, 0, 0, '2019-03-18 09:32:05', '2019-03-18 09:32:08');
INSERT INTO `allotment` VALUES (577, 4, 1, 30, '04', '0.519', '0.329', 'available', 0, NULL, 0, 0, '2019-03-18 09:32:53', '2019-03-18 09:32:58');
INSERT INTO `allotment` VALUES (578, 5, 1, 30, '05', '0.524', '0.324', 'available', 0, NULL, 0, 0, '2019-03-18 09:33:42', '2019-03-18 09:33:45');
INSERT INTO `allotment` VALUES (579, 6, 1, 30, '06', '0.530', '0.320', 'available', 0, NULL, 0, 0, '2019-03-18 09:34:49', '2019-03-18 09:34:54');
INSERT INTO `allotment` VALUES (580, 7, 1, 30, '07', '0.536', '0.315', 'available', 0, NULL, 0, 0, '2019-03-18 09:35:35', '2019-03-18 09:35:38');
INSERT INTO `allotment` VALUES (581, 8, 1, 30, '08', '0.542', '0.311', 'available', 0, NULL, 0, 0, '2019-03-18 09:37:03', '2019-03-18 09:37:06');
INSERT INTO `allotment` VALUES (582, 9, 1, 30, '09', '0.547', '0.306', 'available', 0, NULL, 0, 0, '2019-03-18 09:37:42', '2019-03-18 09:37:45');
INSERT INTO `allotment` VALUES (583, 10, 1, 30, '10', '0.553', '0.302', 'sold', 10198, 'in_process', 0, 0, '2019-03-18 09:38:26', '2019-05-15 14:00:16');
INSERT INTO `allotment` VALUES (584, 11, 1, 30, '11', '0.559', '0.298', 'available', 0, NULL, 0, 0, '2019-03-18 09:39:06', '2019-03-18 09:39:10');
INSERT INTO `allotment` VALUES (585, 12, 1, 30, '12', '0.564', '0.293', 'available', 0, NULL, 0, 0, '2019-03-18 09:39:54', '2019-03-18 09:39:57');
INSERT INTO `allotment` VALUES (586, 13, 1, 30, '13', '0.570', '0.288', 'available', 0, NULL, 0, 0, '2019-03-18 09:40:31', '2019-03-18 09:40:34');
INSERT INTO `allotment` VALUES (587, 14, 1, 30, '14', '0.574', '0.296', 'processing', 0, '', 0, 0, '2019-03-18 09:41:16', '2019-05-02 21:05:11');
INSERT INTO `allotment` VALUES (588, 15, 1, 30, '15', '0.568', '0.301', 'available', 0, NULL, 0, 0, '2019-03-18 09:41:52', '2019-03-18 09:41:55');
INSERT INTO `allotment` VALUES (589, 16, 1, 30, '16', '0.563', '0.305', 'available', 0, NULL, 0, 0, '2019-03-18 09:42:31', '2019-03-18 09:42:34');
INSERT INTO `allotment` VALUES (590, 17, 1, 30, '17', '0.557', '0.310', 'available', 0, NULL, 0, 0, '2019-03-18 09:43:04', '2019-03-18 09:43:07');
INSERT INTO `allotment` VALUES (591, 18, 1, 30, '18', '0.551', '0.314', 'available', 0, NULL, 0, 0, '2019-03-18 09:43:39', '2019-03-18 09:43:41');
INSERT INTO `allotment` VALUES (592, 19, 1, 30, '19', '0.544', '0.319', 'available', 0, NULL, 0, 0, '2019-03-18 09:44:12', '2019-03-18 09:44:15');
INSERT INTO `allotment` VALUES (593, 20, 1, 30, '20', '0.539', '0.322', 'available', 0, NULL, 0, 0, '2019-03-18 09:44:46', '2019-03-18 09:44:49');
INSERT INTO `allotment` VALUES (594, 21, 1, 30, '21', '0.534', '0.327', 'available', 0, NULL, 0, 0, '2019-03-18 09:45:27', '2019-03-18 09:45:30');
INSERT INTO `allotment` VALUES (595, 22, 1, 30, '22', '0.528', '0.331', 'available', 0, NULL, 0, 0, '2019-03-18 09:46:10', '2019-03-18 09:46:13');
INSERT INTO `allotment` VALUES (596, 23, 1, 30, '23', '0.522', '0.336', 'available', 0, NULL, 0, 0, '2019-03-18 09:46:49', '2019-04-26 18:19:32');
INSERT INTO `allotment` VALUES (597, 24, 1, 30, '24', '0.516', '0.341', 'available', 0, NULL, 0, 0, '2019-03-18 09:47:28', '2019-04-24 16:23:58');
INSERT INTO `allotment` VALUES (598, 25, 1, 30, '25', '0.511', '0.345', 'sold', 10192, 'in_process', 0, 0, '2019-03-18 09:48:15', '2019-05-15 00:40:56');
INSERT INTO `allotment` VALUES (599, 26, 1, 30, '26', '0.505', '0.350', 'processing', 0, '', 0, 0, '2019-03-18 09:50:54', '2019-04-28 23:09:11');
INSERT INTO `allotment` VALUES (601, 1, 1, 31, '01', '0.490', '0.315', 'processing', 0, '', 0, 0, '2019-03-18 10:06:19', '2019-04-29 00:09:05');
INSERT INTO `allotment` VALUES (602, 2, 1, 31, '02', '0.495', '0.310', 'available', 0, NULL, 0, 0, '2019-03-18 10:06:53', '2019-03-18 10:06:57');
INSERT INTO `allotment` VALUES (603, 3, 1, 31, '03', '0.501', '0.306', 'available', 0, NULL, 0, 0, '2019-03-18 10:07:48', '2019-03-18 10:07:51');
INSERT INTO `allotment` VALUES (604, 4, 1, 31, '04', '0.507', '0.301', 'available', 0, NULL, 0, 0, '2019-03-18 10:08:34', '2019-03-18 10:08:38');
INSERT INTO `allotment` VALUES (605, 5, 1, 31, '05', '0.513', '0.297', 'available', 0, NULL, 0, 0, '2019-03-18 10:09:14', '2019-03-18 10:09:17');
INSERT INTO `allotment` VALUES (606, 6, 1, 31, '06', '0.518', '0.292', 'available', 0, NULL, 0, 0, '2019-03-18 10:09:54', '2019-03-18 10:09:57');
INSERT INTO `allotment` VALUES (607, 7, 1, 31, '07', '0.524', '0.288', 'available', 0, NULL, 0, 0, '2019-03-18 10:10:29', '2019-03-18 10:10:33');
INSERT INTO `allotment` VALUES (608, 8, 1, 31, '08', '0.529', '0.284', 'available', 0, NULL, 0, 0, '2019-03-18 10:11:10', '2019-03-18 10:11:13');
INSERT INTO `allotment` VALUES (609, 9, 1, 31, '09', '0.535', '0.279', 'available', 0, NULL, 0, 0, '2019-03-18 10:17:21', '2019-03-18 10:17:24');
INSERT INTO `allotment` VALUES (610, 10, 1, 31, '10', '0.541', '0.275', 'available', 0, NULL, 0, 0, '2019-03-18 10:18:17', '2019-03-18 10:18:21');
INSERT INTO `allotment` VALUES (611, 11, 1, 31, '11', '0.547', '0.270', 'available', 0, NULL, 0, 0, '2019-03-18 10:19:04', '2019-03-18 10:19:08');
INSERT INTO `allotment` VALUES (612, 12, 1, 31, '12', '0.553', '0.265', 'available', 0, NULL, 0, 0, '2019-03-18 10:19:38', '2019-03-18 10:19:41');
INSERT INTO `allotment` VALUES (613, 13, 1, 31, '13', '0.559', '0.262', 'available', 0, NULL, 0, 0, '2019-03-18 10:20:14', '2019-03-18 10:20:17');
INSERT INTO `allotment` VALUES (614, 14, 1, 31, '14', '0.563', '0.270', 'available', 0, NULL, 0, 0, '2019-03-18 10:20:50', '2019-03-18 10:20:53');
INSERT INTO `allotment` VALUES (615, 15, 1, 31, '15', '0.557', '0.274', 'available', 0, NULL, 0, 0, '2019-03-18 10:21:27', '2019-03-18 10:21:30');
INSERT INTO `allotment` VALUES (616, 16, 1, 31, '16', '0.551', '0.279', 'available', 0, NULL, 0, 0, '2019-03-18 10:22:09', '2019-03-18 10:22:13');
INSERT INTO `allotment` VALUES (617, 17, 1, 31, '17', '0.545', '0.284', 'available', 0, NULL, 0, 0, '2019-03-18 10:22:54', '2019-04-23 15:37:50');
INSERT INTO `allotment` VALUES (618, 18, 1, 31, '18', '0.539', '0.288', 'available', 0, NULL, 0, 0, '2019-03-18 10:23:32', '2019-03-18 10:23:35');
INSERT INTO `allotment` VALUES (619, 19, 1, 31, '19', '0.533', '0.293', 'available', 0, NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `allotment` VALUES (620, 20, 1, 31, '20', '0.528', '0.296', 'available', 0, NULL, 0, 0, '2019-03-18 10:25:18', '2019-03-18 10:25:21');
INSERT INTO `allotment` VALUES (621, 21, 1, 31, '21', '0.522', '0.301', 'available', 0, NULL, 0, 0, '2019-03-18 10:25:57', '2019-03-18 10:26:01');
INSERT INTO `allotment` VALUES (622, 22, 1, 31, '22', '0.516', '0.305', 'available', 0, NULL, 0, 0, '2019-03-18 10:26:31', '2019-03-18 10:26:34');
INSERT INTO `allotment` VALUES (623, 23, 1, 31, '23', '0.511', '0.310', 'available', 0, NULL, 0, 0, '2019-03-18 10:27:17', '2019-03-18 10:27:20');
INSERT INTO `allotment` VALUES (624, 24, 1, 31, '24', '0.505', '0.315', 'available', 0, NULL, 0, 0, '2019-03-18 10:27:55', '2019-03-18 10:27:58');
INSERT INTO `allotment` VALUES (625, 25, 1, 31, '25', '0.499', '0.319', 'available', 0, NULL, 0, 0, '2019-03-18 10:28:37', '2019-03-18 10:28:40');
INSERT INTO `allotment` VALUES (626, 26, 1, 31, '26', '0.493', '0.323', 'sold', 10202, 'in_process', 0, 0, '2019-03-18 10:29:23', '2019-05-15 15:29:46');
INSERT INTO `allotment` VALUES (628, 1, 1, 32, '01', '0.478', '0.288', 'processing', 0, '', 0, 0, '2019-03-18 10:35:25', '2019-04-30 05:28:39');
INSERT INTO `allotment` VALUES (629, 2, 1, 32, '02', '0.483', '0.284', 'available', 0, NULL, 0, 0, '2019-03-18 10:36:00', '2019-03-18 10:36:03');
INSERT INTO `allotment` VALUES (630, 3, 1, 32, '03', '0.489', '0.280', 'available', 0, NULL, 0, 0, '2019-03-18 10:36:40', '2019-03-18 10:36:43');
INSERT INTO `allotment` VALUES (631, 4, 1, 32, '04', '0.495', '0.275', 'available', 0, NULL, 0, 0, '2019-03-18 10:37:25', '2019-03-18 10:37:28');
INSERT INTO `allotment` VALUES (632, 5, 1, 32, '05', '0.501', '0.270', 'available', 0, NULL, 0, 0, '2019-03-18 10:38:41', '2019-03-18 10:38:44');
INSERT INTO `allotment` VALUES (633, 6, 1, 32, '06', '0.507', '0.266', 'available', 0, NULL, 0, 0, '2019-03-18 10:39:20', '2019-03-18 10:39:24');
INSERT INTO `allotment` VALUES (634, 7, 1, 32, '07', '0.513', '0.262', 'available', 0, NULL, 0, 0, '2019-03-18 10:40:00', '2019-03-18 10:40:03');
INSERT INTO `allotment` VALUES (635, 8, 1, 32, '08', '0.518', '0.258', 'available', 0, NULL, 0, 0, '2019-03-18 10:40:45', '2019-03-18 10:40:48');
INSERT INTO `allotment` VALUES (636, 9, 1, 32, '09', '0.524', '0.253', 'available', 0, NULL, 0, 0, '2019-03-18 10:41:28', '2019-03-18 10:41:32');
INSERT INTO `allotment` VALUES (637, 10, 1, 32, '10', '0.530', '0.248', 'available', 0, NULL, 0, 0, '2019-03-18 10:42:08', '2019-03-18 10:42:11');
INSERT INTO `allotment` VALUES (638, 11, 1, 32, '11', '0.536', '0.244', 'available', 0, NULL, 0, 0, '2019-03-18 10:42:44', '2019-03-18 10:42:47');
INSERT INTO `allotment` VALUES (639, 12, 1, 32, '12', '0.541', '0.239', 'available', 0, NULL, 0, 0, '2019-03-18 10:43:20', '2019-03-18 10:43:23');
INSERT INTO `allotment` VALUES (640, 13, 1, 32, '13', '0.547', '0.234', 'available', 0, NULL, 0, 0, '2019-03-18 10:43:58', '2019-03-18 10:44:01');
INSERT INTO `allotment` VALUES (641, 14, 1, 32, '14', '0.551', '0.243', 'available', 0, NULL, 0, 0, '2019-03-18 10:47:29', '2019-03-18 10:47:32');
INSERT INTO `allotment` VALUES (642, 15, 1, 32, '15', '0.545', '0.247', 'available', 0, NULL, 0, 0, '2019-03-18 10:48:18', '2019-03-18 10:48:21');
INSERT INTO `allotment` VALUES (643, 16, 1, 32, '16', '0.539', '0.252', 'available', 0, NULL, 0, 0, '2019-03-18 10:56:04', '2019-03-18 10:56:07');
INSERT INTO `allotment` VALUES (644, 17, 1, 32, '17', '0.534', '0.257', 'available', 0, NULL, 0, 0, '2019-03-18 10:56:41', '2019-03-18 10:56:44');
INSERT INTO `allotment` VALUES (646, 18, 1, 32, '18', '0.528', '0.262', 'available', 0, NULL, 0, 0, '2019-03-18 10:58:37', '2019-03-18 10:58:40');
INSERT INTO `allotment` VALUES (647, 19, 1, 32, '19', '0.522', '0.267', 'available', 0, NULL, 0, 0, '2019-03-18 10:59:13', '2019-03-18 10:59:16');
INSERT INTO `allotment` VALUES (648, 20, 1, 32, '20', '0.517', '0.270', 'available', 0, NULL, 0, 0, '2019-03-18 10:59:50', '2019-03-18 10:59:53');
INSERT INTO `allotment` VALUES (649, 21, 1, 32, '21', '0.510', '0.275', 'available', 0, NULL, 0, 0, '2019-03-18 11:00:41', '2019-03-18 11:00:43');
INSERT INTO `allotment` VALUES (650, 22, 1, 32, '22', '0.505', '0.279', 'available', 0, NULL, 0, 0, '2019-03-18 11:01:52', '2019-03-18 11:02:00');
INSERT INTO `allotment` VALUES (651, 23, 1, 32, '23', '0.499', '0.283', 'available', 0, NULL, 0, 0, '2019-03-18 11:06:06', '2019-03-18 11:06:09');
INSERT INTO `allotment` VALUES (652, 24, 1, 32, '24', '0.493', '0.289', 'available', 0, NULL, 0, 0, '2019-03-18 11:06:48', '2019-03-18 11:06:51');
INSERT INTO `allotment` VALUES (653, 25, 1, 32, '25', '0.487', '0.292', 'available', 0, NULL, 0, 0, '2019-03-18 11:07:28', '2019-03-18 11:07:31');
INSERT INTO `allotment` VALUES (654, 26, 1, 32, '26', '0.481', '0.297', 'sold', 10199, 'in_process', 0, 0, '2019-03-18 11:08:13', '2019-05-15 15:28:59');
INSERT INTO `allotment` VALUES (655, 1, 1, 36, '01', '0.374', '0.297', 'available', 0, NULL, 0, 0, '2019-03-18 11:22:48', '2019-03-18 11:22:52');
INSERT INTO `allotment` VALUES (656, 2, 1, 36, '02', '0.380', '0.292', 'available', 0, NULL, 0, 0, '2019-03-18 11:23:36', '2019-03-18 11:23:38');
INSERT INTO `allotment` VALUES (657, 3, 1, 36, '03', '0.386', '0.287', 'available', 0, NULL, 0, 0, '2019-03-18 11:24:12', '2019-03-18 11:24:15');
INSERT INTO `allotment` VALUES (658, 4, 1, 36, '04', '0.392', '0.283', 'available', 0, NULL, 0, 0, '2019-03-18 11:24:49', '2019-03-18 11:24:51');
INSERT INTO `allotment` VALUES (659, 5, 1, 36, '05', '0.398', '0.279', 'available', 0, NULL, 0, 0, '2019-03-18 11:25:25', '2019-03-18 11:25:28');
INSERT INTO `allotment` VALUES (660, 6, 1, 36, '06', '0.403', '0.275', 'available', 0, NULL, 0, 0, '2019-03-18 11:26:06', '2019-03-18 11:26:08');
INSERT INTO `allotment` VALUES (661, 7, 1, 36, '07', '0.409', '0.269', 'available', 0, NULL, 0, 0, '2019-03-18 11:26:41', '2019-03-18 11:26:46');
INSERT INTO `allotment` VALUES (662, 8, 1, 36, '08', '0.415', '0.265', 'available', 0, NULL, 0, 0, '2019-03-18 11:27:19', '2019-03-18 11:27:22');
INSERT INTO `allotment` VALUES (663, 9, 1, 36, '09', '0.421', '0.261', 'available', 0, NULL, 0, 0, '2019-03-18 11:28:05', '2019-03-18 11:28:07');
INSERT INTO `allotment` VALUES (664, 10, 1, 36, '10', '0.427', '0.256', 'available', 0, NULL, 0, 0, '2019-03-18 11:28:42', '2019-03-18 11:28:45');
INSERT INTO `allotment` VALUES (665, 11, 1, 36, '11', '0.432', '0.252', 'available', 0, NULL, 0, 0, '2019-03-18 11:29:27', '2019-03-18 11:29:31');
INSERT INTO `allotment` VALUES (666, 12, 1, 36, '12', '0.438', '0.247', 'available', 0, NULL, 0, 0, '2019-03-18 11:30:03', '2019-03-18 11:30:05');
INSERT INTO `allotment` VALUES (667, 13, 1, 36, '13', '0.444', '0.243', 'available', 0, NULL, 0, 0, '2019-03-18 11:30:37', '2019-03-18 11:30:41');
INSERT INTO `allotment` VALUES (668, 14, 1, 36, '14', '0.448', '0.251', 'available', 0, NULL, 0, 0, '2019-03-18 11:31:28', '2019-03-18 11:31:32');
INSERT INTO `allotment` VALUES (669, 15, 1, 36, '15', '0.442', '0.256', 'available', 0, NULL, 0, 0, '2019-03-18 11:32:06', '2019-03-18 11:32:09');
INSERT INTO `allotment` VALUES (670, 16, 1, 36, '16', '0.436', '0.261', 'available', 0, NULL, 0, 0, '2019-03-18 11:32:44', '2019-03-18 11:32:47');
INSERT INTO `allotment` VALUES (671, 17, 1, 36, '17', '0.430', '0.265', 'available', 0, NULL, 0, 0, '2019-03-18 11:33:30', '2019-03-18 11:33:32');
INSERT INTO `allotment` VALUES (672, 18, 1, 36, '18', '0.424', '0.270', 'available', 0, NULL, 0, 0, '2019-03-18 11:34:23', '2019-03-18 11:34:26');
INSERT INTO `allotment` VALUES (673, 19, 1, 36, '19', '0.419', '0.274', 'available', 0, NULL, 0, 0, '2019-03-18 11:35:11', '2019-03-18 11:35:15');
INSERT INTO `allotment` VALUES (674, 20, 1, 36, '20', '0.413', '0.278', 'available', 0, NULL, 0, 0, '2019-03-18 11:36:07', '2019-03-18 11:36:09');
INSERT INTO `allotment` VALUES (675, 21, 1, 36, '21', '0.408', '0.282', 'available', 0, NULL, 0, 0, '2019-03-18 11:36:46', '2019-03-18 11:36:49');
INSERT INTO `allotment` VALUES (676, 22, 1, 36, '22', '0.402', '0.287', 'sold', 10207, 'in_process', 0, 0, '2019-03-18 11:37:24', '2019-05-15 15:34:13');
INSERT INTO `allotment` VALUES (677, 23, 1, 36, '23', '0.396', '0.291', 'available', 0, NULL, 0, 0, '2019-03-18 11:38:06', '2019-03-18 11:38:08');
INSERT INTO `allotment` VALUES (678, 24, 1, 36, '24', '0.390', '0.296', 'available', 0, NULL, 0, 0, '2019-03-18 11:38:42', '2019-03-18 11:38:45');
INSERT INTO `allotment` VALUES (679, 25, 1, 36, '25', '0.384', '0.300', 'available', 0, NULL, 0, 0, '2019-03-18 11:39:17', '2019-03-18 11:39:20');
INSERT INTO `allotment` VALUES (680, 26, 1, 36, '26', '0.378', '0.305', 'sold', 10246, 'in_process', 0, 0, '2019-03-18 11:39:58', '2019-06-10 16:15:24');
INSERT INTO `allotment` VALUES (681, 1, 1, 37, '01', '0.380', '0.327', 'processing', 0, NULL, 0, 0, '2019-03-18 11:43:19', '2019-06-10 10:49:04');
INSERT INTO `allotment` VALUES (682, 2, 1, 37, '02', '0.386', '0.323', 'available', 0, NULL, 0, 0, '2019-03-18 11:43:55', '2019-03-18 11:43:58');
INSERT INTO `allotment` VALUES (683, 3, 1, 37, '03', '0.392', '0.319', 'available', 0, NULL, 0, 0, '2019-03-18 11:44:35', '2019-03-18 11:44:38');
INSERT INTO `allotment` VALUES (684, 4, 1, 37, '04', '0.398', '0.314', 'available', 0, NULL, 0, 0, '2019-03-18 11:45:13', '2019-03-18 11:45:17');
INSERT INTO `allotment` VALUES (685, 5, 1, 37, '05', '0.404', '0.310', 'available', 0, NULL, 0, 0, '2019-03-18 11:45:53', '2019-03-18 11:45:56');
INSERT INTO `allotment` VALUES (686, 6, 1, 37, '06', '0.409', '0.305', 'available', 0, NULL, 0, 0, '2019-03-18 11:46:30', '2019-03-18 11:46:33');
INSERT INTO `allotment` VALUES (687, 7, 1, 37, '07', '0.415', '0.301', 'available', 0, NULL, 0, 0, '2019-03-18 11:47:34', '2019-04-13 00:46:21');
INSERT INTO `allotment` VALUES (688, 8, 1, 37, '08', '0.421', '0.296', 'available', 0, NULL, 0, 0, '2019-03-18 11:48:17', '2019-03-18 11:48:20');
INSERT INTO `allotment` VALUES (689, 9, 1, 37, '09', '0.426', '0.292', 'available', 0, NULL, 0, 0, '2019-03-18 11:49:01', '2019-03-18 11:49:04');
INSERT INTO `allotment` VALUES (690, 10, 1, 37, '10', '0.432', '0.288', 'available', 0, NULL, 0, 0, '2019-03-18 11:49:47', '2019-03-18 11:49:50');
INSERT INTO `allotment` VALUES (691, 11, 1, 37, '11', '0.438', '0.283', 'available', 0, NULL, 0, 0, '2019-03-18 11:50:27', '2019-03-18 11:50:30');
INSERT INTO `allotment` VALUES (692, 12, 1, 37, '12', '0.444', '0.279', 'available', 0, NULL, 0, 0, '2019-03-18 11:51:01', '2019-03-18 11:51:04');
INSERT INTO `allotment` VALUES (693, 13, 1, 37, '13', '0.450', '0.274', 'available', 0, NULL, 0, 0, '2019-03-18 11:51:36', '2019-03-18 11:51:39');
INSERT INTO `allotment` VALUES (694, 14, 1, 37, '14', '0.456', '0.269', 'processing', 0, '', 0, 0, '2019-03-18 11:52:37', '2019-05-03 04:54:18');
INSERT INTO `allotment` VALUES (695, 15, 1, 37, '15', '0.459', '0.278', 'processing', 0, '', 0, 0, '2019-03-18 11:53:17', '2019-04-30 23:49:41');
INSERT INTO `allotment` VALUES (696, 16, 1, 37, '16', '0.454', '0.282', 'sold', 10238, 'in_process', 0, 0, '2019-03-18 11:53:52', '2019-06-04 14:10:16');
INSERT INTO `allotment` VALUES (697, 17, 1, 37, '17', '0.448', '0.287', 'sold', 10244, 'in_process', 0, 0, '2019-03-18 11:54:32', '2019-06-10 16:13:04');
INSERT INTO `allotment` VALUES (698, 18, 1, 37, '18', '0.442', '0.291', 'available', 0, NULL, 0, 0, '2019-03-18 11:55:08', '2019-03-18 11:55:11');
INSERT INTO `allotment` VALUES (699, 19, 1, 37, '19', '0.437', '0.295', 'available', 0, NULL, 0, 0, '2019-03-18 11:55:59', '2019-03-18 11:56:02');
INSERT INTO `allotment` VALUES (700, 20, 1, 37, '20', '0.431', '0.300', 'available', 0, NULL, 0, 0, '2019-03-18 11:56:39', '2019-03-18 11:56:42');
INSERT INTO `allotment` VALUES (701, 21, 1, 37, '21', '0.425', '0.305', 'available', 0, NULL, 0, 0, '2019-03-18 11:57:17', '2019-03-18 11:57:20');
INSERT INTO `allotment` VALUES (702, 22, 1, 37, '22', '0.419', '0.309', 'available', 0, NULL, 0, 0, '2019-03-18 11:57:54', '2019-03-18 11:57:58');
INSERT INTO `allotment` VALUES (703, 23, 1, 37, '23', '0.413', '0.314', 'available', 0, NULL, 0, 0, '2019-03-18 11:58:47', '2019-03-18 11:58:51');
INSERT INTO `allotment` VALUES (704, 24, 1, 37, '24', '0.408', '0.318', 'available', 0, NULL, 0, 0, '2019-03-18 11:59:30', '2019-03-18 11:59:33');
INSERT INTO `allotment` VALUES (705, 25, 1, 37, '25', '0.402', '0.322', 'available', 0, NULL, 0, 0, '2019-03-18 12:00:13', '2019-03-18 12:00:17');
INSERT INTO `allotment` VALUES (706, 26, 1, 37, '26', '0.396', '0.327', 'available', 0, NULL, 0, 0, '2019-03-18 12:00:52', '2019-03-18 12:00:56');
INSERT INTO `allotment` VALUES (707, 27, 1, 37, '27', '0.390', '0.331', 'available', 0, NULL, 0, 0, '2019-03-18 12:01:29', '2019-03-18 12:01:33');
INSERT INTO `allotment` VALUES (708, 28, 1, 37, '28', '0.384', '0.336', 'processing', 0, '', 0, 0, '2019-03-18 12:02:18', '2019-05-02 20:11:16');
INSERT INTO `allotment` VALUES (709, 1, 1, 38, '01', '0.567', '0.431', 'sold', 10218, 'in_process', 0, 0, '2019-03-18 12:05:27', '2019-05-21 19:08:57');
INSERT INTO `allotment` VALUES (710, 2, 1, 38, '02', '0.571', '0.439', 'available', 0, NULL, 0, 0, '2019-03-18 12:06:11', '2019-03-18 12:06:14');
INSERT INTO `allotment` VALUES (711, 3, 1, 38, '03', '0.574', '0.446', 'available', 0, NULL, 0, 0, '2019-03-18 12:06:47', '2019-03-18 12:06:50');
INSERT INTO `allotment` VALUES (712, 4, 1, 38, '04', '0.577', '0.454', 'available', 0, NULL, 0, 0, '2019-03-18 12:07:25', '2019-03-18 12:07:28');
INSERT INTO `allotment` VALUES (713, 5, 1, 38, '05', '0.581', '0.460', 'available', 0, NULL, 0, 0, '2019-03-18 12:08:04', '2019-03-18 12:08:07');
INSERT INTO `allotment` VALUES (714, 6, 1, 38, '06', '0.584', '0.469', 'available', 0, NULL, 0, 0, '2019-03-18 12:08:41', '2019-03-18 12:08:44');
INSERT INTO `allotment` VALUES (715, 7, 1, 38, '07', '0.587', '0.476', 'processing', 0, '', 0, 0, '2019-03-18 12:09:21', '2019-04-29 19:10:12');
INSERT INTO `allotment` VALUES (716, 1, 1, 39, '01', '0.545', '0.417', 'sold', 10209, 'in_process', 0, 0, '2019-03-18 12:11:15', '2019-05-16 16:07:17');
INSERT INTO `allotment` VALUES (717, 2, 1, 39, '02', '0.548', '0.424', 'available', 0, NULL, 0, 0, '2019-03-18 12:11:51', '2019-03-18 12:11:54');
INSERT INTO `allotment` VALUES (718, 3, 1, 39, '03', '0.551', '0.432', 'available', 0, NULL, 0, 0, '2019-03-18 12:12:29', '2019-03-18 12:12:32');
INSERT INTO `allotment` VALUES (719, 4, 1, 39, '04', '0.555', '0.440', 'available', 0, NULL, 0, 0, '2019-03-18 12:13:05', '2019-03-18 12:13:08');
INSERT INTO `allotment` VALUES (720, 5, 1, 39, '05', '0.558', '0.447', 'available', 0, NULL, 0, 0, '2019-03-18 12:13:53', '2019-03-18 12:13:56');
INSERT INTO `allotment` VALUES (721, 6, 1, 39, '06', '0.561', '0.455', 'available', 0, NULL, 0, 0, '2019-03-18 12:14:38', '2019-03-18 12:14:41');
INSERT INTO `allotment` VALUES (722, 7, 1, 39, '07', '0.565', '0.462', 'available', 0, NULL, 0, 0, '2019-03-18 12:15:21', '2019-03-18 12:15:24');
INSERT INTO `allotment` VALUES (723, 8, 1, 39, '08', '0.568', '0.470', 'available', 0, NULL, 0, 0, '2019-03-18 12:16:00', '2019-03-18 12:16:03');
INSERT INTO `allotment` VALUES (724, 9, 1, 39, '09', '0.572', '0.478', 'available', 0, NULL, 0, 0, '2019-03-18 12:16:35', '2019-03-18 12:16:38');
INSERT INTO `allotment` VALUES (725, 10, 1, 39, '10', '0.575', '0.486', 'available', 0, NULL, 0, 0, '2019-03-18 12:17:11', '2019-03-18 12:17:14');
INSERT INTO `allotment` VALUES (726, 11, 1, 39, '11', '0.578', '0.493', 'available', 0, NULL, 0, 0, '2019-03-18 12:17:55', '2019-03-18 12:17:58');
INSERT INTO `allotment` VALUES (727, 12, 1, 39, '12', '0.582', '0.500', 'processing', 0, '', 0, 0, '2019-03-18 12:18:38', '2019-05-03 03:53:57');
INSERT INTO `allotment` VALUES (728, 13, 1, 39, '13', '0.578', '0.514', 'available', 0, NULL, 0, 0, '2019-03-18 12:26:58', '2019-03-18 12:27:01');
INSERT INTO `allotment` VALUES (729, 14, 1, 39, '14', '0.575', '0.506', 'available', 0, NULL, 0, 0, '2019-03-18 12:27:39', '2019-03-18 12:27:42');
INSERT INTO `allotment` VALUES (730, 15, 1, 39, '15', '0.571', '0.499', 'available', 0, NULL, 0, 0, '2019-03-18 12:29:04', '2019-03-18 12:29:08');
INSERT INTO `allotment` VALUES (731, 16, 1, 39, '16', '0.568', '0.491', 'available', 0, NULL, 0, 0, '2019-03-18 12:29:54', '2019-03-18 12:29:57');
INSERT INTO `allotment` VALUES (732, 17, 1, 39, '17', '0.565', '0.483', 'available', 0, NULL, 0, 0, '2019-03-18 12:30:52', '2019-03-18 12:30:55');
INSERT INTO `allotment` VALUES (733, 18, 1, 39, '18', '0.561', '0.475', 'available', 0, NULL, 0, 0, '2019-03-18 12:31:31', '2019-03-18 12:31:34');
INSERT INTO `allotment` VALUES (734, 19, 1, 39, '19', '0.558', '0.468', 'available', 0, NULL, 0, 0, '2019-03-18 12:32:12', '2019-03-18 12:32:15');
INSERT INTO `allotment` VALUES (735, 20, 1, 39, '20', '0.555', '0.460', 'available', 0, NULL, 0, 0, '2019-03-18 12:32:55', '2019-03-18 12:32:58');
INSERT INTO `allotment` VALUES (736, 21, 1, 39, '21', '0.551', '0.452', 'available', 0, NULL, 0, 0, '2019-03-18 12:33:28', '2019-03-18 12:33:31');
INSERT INTO `allotment` VALUES (737, 22, 1, 39, '22', '0.548', '0.445', 'available', 0, NULL, 0, 0, '2019-03-18 12:34:05', '2019-03-18 12:34:08');
INSERT INTO `allotment` VALUES (738, 23, 1, 39, '23', '0.544', '0.436', 'available', 0, NULL, 0, 0, '2019-03-18 12:34:42', '2019-03-18 12:34:45');
INSERT INTO `allotment` VALUES (739, 24, 1, 39, '24', '0.541', '0.430', 'available', 0, NULL, 0, 0, '2019-03-18 12:35:20', '2019-03-18 12:35:23');
INSERT INTO `allotment` VALUES (740, 25, 1, 39, '25', '0.537', '0.422', 'processing', 0, '', 0, 0, '2019-03-18 12:35:55', '2019-04-30 20:31:45');
INSERT INTO `allotment` VALUES (741, 1, 1, 40, '01', '0.525', '0.432', 'processing', 0, '', 0, 0, '2019-03-18 12:37:32', '2019-04-30 04:26:09');
INSERT INTO `allotment` VALUES (742, 2, 1, 40, '02', '0.528', '0.440', 'available', 0, NULL, 0, 0, '2019-03-18 12:38:14', '2019-03-18 12:38:17');
INSERT INTO `allotment` VALUES (743, 3, 1, 40, '03', '0.531', '0.447', 'available', 0, NULL, 0, 0, '2019-03-18 12:38:58', '2019-03-18 12:39:01');
INSERT INTO `allotment` VALUES (744, 4, 1, 40, '04', '0.535', '0.455', 'available', 0, NULL, 0, 0, '2019-03-18 12:39:36', '2019-03-18 12:39:39');
INSERT INTO `allotment` VALUES (745, 5, 1, 40, '05', '0.538', '0.463', 'available', 0, NULL, 0, 0, '2019-03-18 12:40:17', '2019-03-18 12:40:20');
INSERT INTO `allotment` VALUES (746, 6, 1, 40, '06', '0.541', '0.470', 'processing', 0, '', 0, 0, '2019-03-18 12:40:53', '2019-04-30 13:37:41');
INSERT INTO `allotment` VALUES (747, 7, 1, 40, '07', '0.544', '0.478', 'available', 0, NULL, 0, 0, '2019-03-18 12:41:35', '2019-03-18 12:41:37');
INSERT INTO `allotment` VALUES (748, 8, 1, 40, '08', '0.548', '0.486', 'available', 0, NULL, 0, 0, '2019-03-18 12:42:44', '2019-03-18 12:42:47');
INSERT INTO `allotment` VALUES (749, 9, 1, 40, '09', '0.551', '0.493', 'processing', 0, '', 0, 0, '2019-03-18 12:43:23', '2019-05-03 04:40:43');
INSERT INTO `allotment` VALUES (750, 10, 1, 40, '10', '0.555', '0.500', 'available', 0, NULL, 0, 0, '2019-03-18 12:49:22', '2019-04-23 11:38:57');
INSERT INTO `allotment` VALUES (751, 11, 1, 40, '11', '0.558', '0.508', 'available', 0, NULL, 0, 0, '2019-03-18 12:50:03', '2019-03-18 12:50:06');
INSERT INTO `allotment` VALUES (752, 12, 1, 40, '12', '0.562', '0.516', 'available', 0, NULL, 0, 0, '2019-03-18 12:50:38', '2019-03-18 12:50:41');
INSERT INTO `allotment` VALUES (753, 13, 1, 40, '13', '0.565', '0.524', 'available', 0, NULL, 0, 0, '2019-03-18 12:51:14', '2019-04-16 10:38:35');
INSERT INTO `allotment` VALUES (754, 14, 1, 40, '14', '0.558', '0.528', 'available', 0, NULL, 0, 0, '2019-03-18 12:51:54', '2019-04-23 12:32:32');
INSERT INTO `allotment` VALUES (755, 15, 1, 40, '15', '0.555', '0.522', 'available', 0, NULL, 0, 0, '2019-03-18 12:52:32', '2019-03-18 12:52:34');
INSERT INTO `allotment` VALUES (756, 16, 1, 40, '16', '0.552', '0.513', 'available', 0, NULL, 0, 0, '2019-03-18 12:54:58', '2019-04-16 10:58:06');
INSERT INTO `allotment` VALUES (757, 17, 1, 40, '17', '0.548', '0.506', 'available', 0, NULL, 0, 0, '2019-03-18 12:55:35', '2019-03-18 12:55:38');
INSERT INTO `allotment` VALUES (758, 18, 1, 40, '18', '0.545', '0.498', 'available', 0, NULL, 0, 0, '2019-03-18 12:58:27', '2019-03-18 12:58:30');
INSERT INTO `allotment` VALUES (759, 19, 1, 40, '19', '0.541', '0.491', 'available', 0, NULL, 0, 0, '2019-03-18 13:00:19', '2019-03-18 13:00:22');
INSERT INTO `allotment` VALUES (760, 20, 1, 40, '20', '0.538', '0.483', 'available', 0, NULL, 0, 0, '2019-03-18 13:00:57', '2019-03-18 13:01:00');
INSERT INTO `allotment` VALUES (761, 21, 1, 40, '21', '0.535', '0.475', 'available', 0, NULL, 0, 0, '2019-03-18 13:01:33', '2019-03-18 13:01:36');
INSERT INTO `allotment` VALUES (762, 22, 1, 40, '22', '0.531', '0.467', 'available', 0, NULL, 0, 0, '2019-03-18 13:02:14', '2019-03-18 13:02:18');
INSERT INTO `allotment` VALUES (763, 23, 1, 40, '23', '0.528', '0.460', 'available', 0, NULL, 0, 0, '2019-03-18 13:02:55', '2019-03-18 13:02:58');
INSERT INTO `allotment` VALUES (764, 24, 1, 40, '24', '0.524', '0.452', 'available', 0, NULL, 0, 0, '2019-03-18 13:03:32', '2019-03-18 13:03:35');
INSERT INTO `allotment` VALUES (765, 25, 1, 40, '25', '0.521', '0.445', 'available', 0, NULL, 0, 0, '2019-03-18 13:04:10', '2019-03-18 13:04:13');
INSERT INTO `allotment` VALUES (766, 26, 1, 40, '26', '0.518', '0.437', 'sold', 10217, 'in_process', 0, 0, '2019-03-18 13:04:44', '2019-05-21 19:07:30');
INSERT INTO `allotment` VALUES (769, 3, 1, 41, '03', '0.510', '0.462', 'available', 0, NULL, 0, 0, '2019-03-18 13:15:26', '2019-03-18 13:15:29');
INSERT INTO `allotment` VALUES (770, 4, 1, 41, '04', '0.514', '0.470', 'available', 0, NULL, 0, 0, '2019-03-18 13:16:24', '2019-03-18 13:16:30');
INSERT INTO `allotment` VALUES (771, 5, 1, 41, '05', '0.518', '0.478', 'available', 0, NULL, 0, 0, '2019-03-18 13:17:33', '2019-03-18 13:17:36');
INSERT INTO `allotment` VALUES (772, 6, 1, 41, '06', '0.521', '0.486', 'available', 0, NULL, 0, 0, '2019-03-18 13:18:08', '2019-03-18 13:18:10');
INSERT INTO `allotment` VALUES (773, 7, 1, 41, '07', '0.525', '0.494', 'available', 0, NULL, 0, 0, '2019-03-18 13:18:49', '2019-03-18 13:18:52');
INSERT INTO `allotment` VALUES (774, 8, 1, 41, '08', '0.528', '0.501', 'available', 0, NULL, 0, 0, '2019-03-18 13:19:31', '2019-03-18 13:19:34');
INSERT INTO `allotment` VALUES (775, 9, 1, 41, '09', '0.531', '0.509', 'available', 0, NULL, 0, 0, '2019-03-18 13:20:29', '2019-03-18 13:20:32');
INSERT INTO `allotment` VALUES (776, 10, 1, 41, '10', '0.535', '0.516', 'available', 0, NULL, 0, 0, '2019-03-18 13:21:07', '2019-03-18 13:21:10');
INSERT INTO `allotment` VALUES (777, 11, 1, 41, '11', '0.538', '0.524', 'available', 0, NULL, 0, 0, '2019-03-18 13:21:44', '2019-03-18 13:21:47');
INSERT INTO `allotment` VALUES (778, 14, 1, 41, '14', '0.538', '0.544', 'available', 0, NULL, 0, 0, '2019-03-18 13:22:30', '2019-04-06 00:13:35');
INSERT INTO `allotment` VALUES (779, 15, 1, 41, '15', '0.535', '0.536', 'available', 0, NULL, 0, 0, '2019-03-18 13:23:09', '2019-04-11 17:50:15');
INSERT INTO `allotment` VALUES (780, 16, 1, 41, '16', '0.532', '0.529', 'available', 0, NULL, 0, 0, '2019-03-18 13:23:45', '2019-03-18 13:23:48');
INSERT INTO `allotment` VALUES (781, 17, 1, 41, '17', '0.528', '0.521', 'available', 0, NULL, 0, 0, '2019-03-18 13:24:21', '2019-03-18 13:24:24');
INSERT INTO `allotment` VALUES (782, 18, 1, 41, '18', '0.525', '0.513', 'available', 0, NULL, 0, 0, '2019-03-18 13:25:23', '2019-03-18 13:25:26');
INSERT INTO `allotment` VALUES (783, 19, 1, 41, '19', '0.521', '0.506', 'available', 0, NULL, 0, 0, '2019-03-18 13:26:03', '2019-03-18 13:26:06');
INSERT INTO `allotment` VALUES (784, 20, 1, 41, '20', '0.518', '0.498', 'available', 0, NULL, 0, 0, '2019-03-18 13:26:43', '2019-04-29 19:37:32');
INSERT INTO `allotment` VALUES (785, 21, 1, 41, '21', '0.514', '0.491', 'available', 0, NULL, 0, 0, '2019-03-18 13:27:23', '2019-03-18 13:27:26');
INSERT INTO `allotment` VALUES (786, 22, 1, 41, '22', '0.511', '0.483', 'available', 0, NULL, 0, 0, '2019-03-18 13:27:59', '2019-03-18 13:28:02');
INSERT INTO `allotment` VALUES (787, 23, 1, 41, '23', '0.508', '0.475', 'available', 0, NULL, 0, 0, '2019-03-18 13:28:33', '2019-03-18 13:28:36');
INSERT INTO `allotment` VALUES (788, 24, 1, 41, '24', '0.504', '0.468', 'available', 0, NULL, 0, 0, '2019-03-18 13:29:14', '2019-03-18 13:29:18');
INSERT INTO `allotment` VALUES (789, 25, 1, 41, '25', '0.501', '0.461', 'processing', 0, '', 0, 0, '2019-03-18 13:29:49', '2019-05-03 03:54:03');
INSERT INTO `allotment` VALUES (790, 1, 1, 42, '01', '0.484', '0.463', 'sold', 10215, 'in_process', 0, 0, '2019-03-18 13:31:03', '2019-05-20 14:47:32');
INSERT INTO `allotment` VALUES (791, 2, 1, 42, '02', '0.488', '0.471', 'available', 0, NULL, 0, 0, '2019-03-18 13:31:41', '2019-03-18 13:31:44');
INSERT INTO `allotment` VALUES (792, 3, 1, 42, '03', '0.491', '0.478', 'available', 0, NULL, 0, 0, '2019-03-18 13:32:53', '2019-03-18 13:32:56');
INSERT INTO `allotment` VALUES (793, 4, 1, 42, '04', '0.495', '0.486', 'available', 0, NULL, 0, 0, '2019-03-18 13:33:30', '2019-03-18 13:33:33');
INSERT INTO `allotment` VALUES (794, 5, 1, 42, '05', '0.498', '0.493', 'available', 0, NULL, 0, 0, '2019-03-18 13:34:07', '2019-03-18 13:34:10');
INSERT INTO `allotment` VALUES (795, 6, 1, 42, '06', '0.501', '0.501', 'available', 0, NULL, 0, 0, '2019-03-18 13:34:52', '2019-03-18 13:34:55');
INSERT INTO `allotment` VALUES (796, 7, 1, 42, '07', '0.504', '0.509', 'available', 0, NULL, 0, 0, '2019-03-18 13:35:26', '2019-03-18 13:35:30');
INSERT INTO `allotment` VALUES (797, 8, 1, 42, '08', '0.508', '0.516', 'available', 0, NULL, 0, 0, '2019-03-18 13:36:03', '2019-03-18 13:36:06');
INSERT INTO `allotment` VALUES (798, 9, 1, 42, '09', '0.512', '0.524', 'available', 0, NULL, 0, 0, '2019-03-18 13:36:38', '2019-03-18 13:36:40');
INSERT INTO `allotment` VALUES (799, 10, 1, 42, '10', '0.515', '0.532', 'available', 0, NULL, 0, 0, '2019-03-18 13:39:42', '2019-04-15 17:20:35');
INSERT INTO `allotment` VALUES (800, 11, 1, 42, '11', '0.518', '0.539', 'available', 0, NULL, 0, 0, '2019-03-18 13:40:24', '2019-04-15 12:09:08');
INSERT INTO `allotment` VALUES (801, 12, 1, 42, '12', '0.521', '0.547', 'available', 0, NULL, 0, 0, '2019-03-18 13:41:10', '2019-03-28 20:52:52');
INSERT INTO `allotment` VALUES (802, 13, 1, 42, '13', '0.524', '0.554', 'available', 0, NULL, 0, 0, '2019-03-18 13:42:02', '2019-04-26 19:54:11');
INSERT INTO `allotment` VALUES (803, 14, 1, 42, '14', '0.518', '0.560', 'available', 0, NULL, 0, 0, '2019-03-18 13:42:39', '2019-04-23 15:46:36');
INSERT INTO `allotment` VALUES (804, 15, 1, 42, '15', '0.515', '0.552', 'available', 0, NULL, 0, 0, '2019-03-18 13:43:17', '2019-04-25 15:21:09');
INSERT INTO `allotment` VALUES (805, 16, 1, 42, '16', '0.512', '0.544', 'available', 0, NULL, 0, 0, '2019-03-18 13:43:57', '2019-04-12 22:57:41');
INSERT INTO `allotment` VALUES (806, 17, 1, 42, '17', '0.508', '0.537', 'available', 0, NULL, 0, 0, '2019-03-18 13:44:35', '2019-04-16 10:41:42');
INSERT INTO `allotment` VALUES (807, 18, 1, 42, '18', '0.504', '0.529', 'available', 0, NULL, 0, 0, '2019-03-18 13:45:27', '2019-04-16 15:00:47');
INSERT INTO `allotment` VALUES (808, 19, 1, 42, '19', '0.501', '0.522', 'available', 0, NULL, 0, 0, '2019-03-18 13:46:05', '2019-03-18 13:46:09');
INSERT INTO `allotment` VALUES (809, 20, 1, 42, '20', '0.498', '0.514', 'available', 0, NULL, 0, 0, '2019-03-18 13:46:43', '2019-03-18 13:46:46');
INSERT INTO `allotment` VALUES (810, 21, 1, 42, '21', '0.494', '0.506', 'available', 0, NULL, 0, 0, '2019-03-18 13:47:37', '2019-03-18 13:47:40');
INSERT INTO `allotment` VALUES (811, 22, 1, 42, '22', '0.491', '0.498', 'available', 0, NULL, 0, 0, '2019-03-18 13:48:17', '2019-03-18 13:48:20');
INSERT INTO `allotment` VALUES (812, 23, 1, 42, '23', '0.488', '0.491', 'available', 0, NULL, 0, 0, '2019-03-18 13:48:54', '2019-03-18 13:48:57');
INSERT INTO `allotment` VALUES (813, 24, 1, 42, '24', '0.484', '0.483', 'available', 0, NULL, 0, 0, '2019-03-18 13:49:50', '2019-03-18 13:49:53');
INSERT INTO `allotment` VALUES (814, 25, 1, 42, '25', '0.481', '0.476', 'available', 0, NULL, 0, 0, '2019-03-18 13:50:42', '2019-03-18 13:50:45');
INSERT INTO `allotment` VALUES (815, 26, 1, 42, '26', '0.478', '0.468', 'sold', 10204, 'in_process', 0, 0, '2019-03-18 13:51:28', '2019-05-15 15:30:49');
INSERT INTO `allotment` VALUES (816, 1, 1, 43, '01', '0.480', '0.825', 'processing', 0, '', 0, 0, '2019-03-18 13:55:28', '2019-04-30 04:19:03');
INSERT INTO `allotment` VALUES (817, 2, 1, 43, '02', '0.480', '0.833', 'available', 0, NULL, 0, 0, '2019-03-18 13:56:16', '2019-03-18 13:56:20');
INSERT INTO `allotment` VALUES (818, 3, 1, 43, '03', '0.480', '0.842', 'available', 0, NULL, 0, 0, '2019-03-18 13:56:54', '2019-03-18 13:56:57');
INSERT INTO `allotment` VALUES (819, 4, 1, 43, '04', '0.480', '0.851', 'available', 0, NULL, 0, 0, '2019-03-18 13:57:44', '2019-03-18 13:57:47');
INSERT INTO `allotment` VALUES (820, 5, 1, 43, '05', '0.480', '0.859', 'available', 0, NULL, 0, 0, '2019-03-18 13:58:33', '2019-03-18 13:58:36');
INSERT INTO `allotment` VALUES (821, 6, 1, 43, '06', '0.480', '0.869', 'available', 0, NULL, 0, 0, '2019-03-18 13:59:37', '2019-03-18 13:59:40');
INSERT INTO `allotment` VALUES (822, 7, 1, 43, '07', '0.480', '0.877', 'available', 0, NULL, 0, 0, '2019-03-18 14:00:13', '2019-03-18 14:00:16');
INSERT INTO `allotment` VALUES (823, 8, 1, 43, '08', '0.480', '0.886', 'available', 0, NULL, 0, 0, '2019-03-18 14:00:47', '2019-03-18 14:00:50');
INSERT INTO `allotment` VALUES (824, 9, 1, 43, '09', '0.480', '0.895', 'available', 0, NULL, 0, 0, '2019-03-18 14:01:22', '2019-03-18 14:01:24');
INSERT INTO `allotment` VALUES (825, 10, 1, 43, '10', '0.480', '0.903', 'sold', 10245, 'in_process', 0, 0, '2019-03-18 14:01:58', '2019-06-10 16:14:41');
INSERT INTO `allotment` VALUES (826, 11, 1, 43, '11', '0.472', '0.903', 'processing', 0, '', 0, 0, '2019-03-18 14:06:02', '2019-04-30 01:55:45');
INSERT INTO `allotment` VALUES (827, 12, 1, 43, '12', '0.472', '0.895', 'available', 0, NULL, 0, 0, '2019-03-18 14:07:45', '2019-03-18 14:07:48');
INSERT INTO `allotment` VALUES (828, 13, 1, 43, '13', '0.472', '0.886', 'available', 0, NULL, 0, 0, '2019-03-18 14:08:24', '2019-03-18 14:08:26');
INSERT INTO `allotment` VALUES (829, 14, 1, 43, '14', '0.472', '0.877', 'available', 0, NULL, 0, 0, '2019-03-18 14:08:55', '2019-03-18 14:08:58');
INSERT INTO `allotment` VALUES (830, 15, 1, 43, '15', '0.472', '0.869', 'available', 0, NULL, 0, 0, '2019-03-18 14:09:32', '2019-03-18 14:09:35');
INSERT INTO `allotment` VALUES (831, 16, 1, 43, '16', '0.472', '0.859', 'available', 0, NULL, 0, 0, '2019-03-18 14:10:12', '2019-03-18 14:10:15');
INSERT INTO `allotment` VALUES (832, 17, 1, 43, '17', '0.472', '0.851', 'available', 0, NULL, 0, 0, '2019-03-18 14:10:50', '2019-03-18 14:10:53');
INSERT INTO `allotment` VALUES (833, 18, 1, 43, '18', '0.472', '0.842', 'available', 0, NULL, 0, 0, '2019-03-18 14:11:21', '2019-03-18 14:11:24');
INSERT INTO `allotment` VALUES (834, 19, 1, 43, '19', '0.472', '0.833', 'available', 0, NULL, 0, 0, '2019-03-18 14:11:52', '2019-03-18 14:11:55');
INSERT INTO `allotment` VALUES (835, 20, 1, 43, '20', '0.472', '0.825', 'available', 0, NULL, 0, 0, '2019-03-18 14:12:23', '2019-03-18 14:12:26');
INSERT INTO `allotment` VALUES (836, 1, 1, 44, '01', '0.480', '0.712', 'available', 0, NULL, 0, 0, '2019-03-18 14:26:18', '2019-03-18 14:26:21');
INSERT INTO `allotment` VALUES (840, 2, 1, 44, '02', '0.480', '0.720', 'available', 0, NULL, 0, 0, '2019-03-18 14:46:37', '2019-03-18 14:46:40');
INSERT INTO `allotment` VALUES (841, 3, 1, 44, '03', '0.480', '0.729', 'available', 0, NULL, 0, 0, '2019-03-18 14:47:20', '2019-03-18 14:47:23');
INSERT INTO `allotment` VALUES (842, 4, 1, 44, '04', '0.480', '0.738', 'available', 0, NULL, 0, 0, '2019-03-18 14:48:01', '2019-03-18 14:48:03');
INSERT INTO `allotment` VALUES (843, 5, 1, 44, '05', '0.480', '0.748', 'available', 0, NULL, 0, 0, '2019-03-18 14:48:48', '2019-03-18 14:48:51');
INSERT INTO `allotment` VALUES (844, 6, 1, 44, '06', '0.480', '0.755', 'available', 0, NULL, 0, 0, '2019-03-18 14:49:23', '2019-03-18 14:49:26');
INSERT INTO `allotment` VALUES (845, 7, 1, 44, '07', '0.480', '0.765', 'available', 0, NULL, 0, 0, '2019-03-18 14:50:09', '2019-03-18 14:50:12');
INSERT INTO `allotment` VALUES (846, 8, 1, 44, '08', '0.480', '0.773', 'available', 0, NULL, 0, 0, '2019-03-18 14:50:56', '2019-03-18 14:50:58');
INSERT INTO `allotment` VALUES (847, 9, 1, 44, '09', '0.480', '0.783', 'available', 0, NULL, 0, 0, '2019-03-18 14:51:32', '2019-03-18 14:51:35');
INSERT INTO `allotment` VALUES (848, 10, 1, 44, '10', '0.480', '0.790', 'available', 0, NULL, 0, 0, '2019-03-18 14:52:06', '2019-03-18 14:52:09');
INSERT INTO `allotment` VALUES (849, 11, 1, 44, '11', '0.480', '0.799', 'available', 0, NULL, 0, 0, '2019-03-18 14:52:54', '2019-03-18 14:52:57');
INSERT INTO `allotment` VALUES (851, 12, 1, 44, '12', '0.480', '0.808', 'available', 0, NULL, 0, 0, '2019-03-18 14:56:34', '2019-03-18 14:56:37');
INSERT INTO `allotment` VALUES (852, 13, 1, 44, '13', '0.472', '0.808', 'available', 0, NULL, 0, 0, '2019-03-18 14:58:11', '2019-03-18 14:58:16');
INSERT INTO `allotment` VALUES (853, 14, 1, 44, '14', '0.472', '0.799', 'available', 0, NULL, 0, 0, '2019-03-18 14:58:43', '2019-03-18 14:58:46');
INSERT INTO `allotment` VALUES (854, 15, 1, 44, '15', '0.472', '0.790', 'available', 0, NULL, 0, 0, '2019-03-18 15:01:03', '2019-03-18 15:01:06');
INSERT INTO `allotment` VALUES (855, 16, 1, 44, '16', '0.472', '0.783', 'available', 0, NULL, 0, 0, '2019-03-18 15:01:32', '2019-03-18 15:01:34');
INSERT INTO `allotment` VALUES (856, 17, 1, 44, '17', '0.472', '0.773', 'available', 0, NULL, 0, 0, '2019-03-18 15:01:57', '2019-03-18 15:02:00');
INSERT INTO `allotment` VALUES (857, 18, 1, 44, '18', '0.472', '0.765', 'available', 0, NULL, 0, 0, '2019-03-18 15:02:28', '2019-03-18 15:02:31');
INSERT INTO `allotment` VALUES (858, 19, 1, 44, '19', '0.472', '0.755', 'available', 0, NULL, 0, 0, '2019-03-18 15:03:04', '2019-03-18 15:03:07');
INSERT INTO `allotment` VALUES (859, 20, 1, 44, '20', '0.472', '0.748', 'available', 0, NULL, 0, 0, '2019-03-18 15:03:39', '2019-03-18 15:03:42');
INSERT INTO `allotment` VALUES (860, 21, 1, 44, '21', '0.472', '0.738', 'available', 0, NULL, 0, 0, '2019-03-18 15:04:19', '2019-03-18 15:04:22');
INSERT INTO `allotment` VALUES (861, 22, 1, 44, '22', '0.472', '0.729', 'available', 0, NULL, 0, 0, '2019-03-18 15:04:49', '2019-03-18 15:04:52');
INSERT INTO `allotment` VALUES (862, 23, 1, 44, '23', '0.472', '0.720', 'available', 0, NULL, 0, 0, '2019-03-18 15:05:24', '2019-03-18 15:05:27');
INSERT INTO `allotment` VALUES (863, 24, 1, 44, '24', '0.472', '0.712', 'available', 0, NULL, 0, 0, '2019-03-18 15:05:54', '2019-03-18 15:05:56');
INSERT INTO `allotment` VALUES (864, 1, 1, 45, '01', '0.430', '0.645', 'available', 0, NULL, 0, 0, '2019-03-18 15:07:49', '2019-03-18 15:07:52');
INSERT INTO `allotment` VALUES (865, 2, 1, 45, '02', '0.434', '0.653', 'available', 0, NULL, 0, 0, '2019-03-18 15:08:34', '2019-03-18 15:08:37');
INSERT INTO `allotment` VALUES (866, 3, 1, 45, '03', '0.437', '0.661', 'available', 0, NULL, 0, 0, '2019-03-18 15:09:09', '2019-03-18 15:09:12');
INSERT INTO `allotment` VALUES (867, 4, 1, 45, '04', '0.441', '0.668', 'available', 0, NULL, 0, 0, '2019-03-18 15:10:02', '2019-03-18 15:10:04');
INSERT INTO `allotment` VALUES (868, 5, 1, 45, '05', '0.444', '0.676', 'available', 0, NULL, 0, 0, '2019-03-18 15:10:41', '2019-03-18 15:10:44');
INSERT INTO `allotment` VALUES (869, 6, 1, 45, '06', '0.447', '0.684', 'available', 0, NULL, 0, 0, '2019-03-18 15:11:23', '2019-03-18 15:11:26');
INSERT INTO `allotment` VALUES (870, 7, 1, 45, '07', '0.451', '0.691', 'available', 0, NULL, 0, 0, '2019-03-18 15:12:07', '2019-03-18 15:12:10');
INSERT INTO `allotment` VALUES (871, 8, 1, 45, '08', '0.444', '0.696', 'available', 0, NULL, 0, 0, '2019-03-18 15:12:43', '2019-03-18 15:12:46');
INSERT INTO `allotment` VALUES (872, 9, 1, 45, '09', '0.440', '0.688', 'available', 0, NULL, 0, 0, '2019-03-18 15:13:30', '2019-03-18 15:13:33');
INSERT INTO `allotment` VALUES (873, 10, 1, 45, '10', '0.437', '0.680', 'available', 0, NULL, 0, 0, '2019-03-18 15:14:10', '2019-03-18 15:14:13');
INSERT INTO `allotment` VALUES (874, 11, 1, 45, '11', '0.434', '0.674', 'available', 0, NULL, 0, 0, '2019-03-18 15:15:02', '2019-03-18 15:15:04');
INSERT INTO `allotment` VALUES (875, 12, 1, 45, '12', '0.430', '0.665', 'available', 0, NULL, 0, 0, '2019-03-18 15:15:36', '2019-03-18 15:15:39');
INSERT INTO `allotment` VALUES (876, 13, 1, 45, '13', '0.427', '0.657', 'available', 0, NULL, 0, 0, '2019-03-18 15:16:09', '2019-03-18 15:16:15');
INSERT INTO `allotment` VALUES (877, 14, 1, 45, '14', '0.423', '0.650', 'available', 0, NULL, 0, 0, '2019-03-18 15:16:48', '2019-03-18 15:16:51');
INSERT INTO `allotment` VALUES (878, 1, 1, 46, '01', '0.451', '0.630', 'available', 0, NULL, 0, 0, '2019-03-18 15:20:20', '2019-03-18 15:20:23');
INSERT INTO `allotment` VALUES (879, 2, 1, 46, '02', '0.454', '0.638', 'available', 0, NULL, 0, 0, '2019-03-18 15:20:57', '2019-03-18 15:21:00');
INSERT INTO `allotment` VALUES (880, 3, 1, 46, '03', '0.457', '0.646', 'available', 0, NULL, 0, 0, '2019-03-18 15:21:29', '2019-03-18 15:21:33');
INSERT INTO `allotment` VALUES (881, 4, 1, 46, '04', '0.461', '0.653', 'available', 0, NULL, 0, 0, '2019-03-18 15:22:04', '2019-03-18 15:22:07');
INSERT INTO `allotment` VALUES (882, 5, 1, 46, '05', '0.464', '0.661', 'available', 0, NULL, 0, 0, '2019-03-18 15:22:43', '2019-03-18 15:22:46');
INSERT INTO `allotment` VALUES (883, 6, 1, 46, '06', '0.467', '0.669', 'available', 0, NULL, 0, 0, '2019-03-18 15:23:28', '2019-03-18 15:23:31');
INSERT INTO `allotment` VALUES (884, 7, 1, 46, '07', '0.471', '0.676', 'available', 0, NULL, 0, 0, '2019-03-18 15:24:13', '2019-03-18 15:24:19');
INSERT INTO `allotment` VALUES (885, 8, 1, 46, '08', '0.474', '0.684', 'available', 0, NULL, 0, 0, '2019-03-18 15:24:59', '2019-03-18 15:25:02');
INSERT INTO `allotment` VALUES (886, 9, 1, 46, '09', '0.478', '0.692', 'available', 0, NULL, 0, 0, '2019-03-18 15:25:41', '2019-03-18 15:25:45');
INSERT INTO `allotment` VALUES (887, 10, 1, 46, '10', '0.471', '0.696', 'available', 0, NULL, 0, 0, '2019-03-18 15:26:21', '2019-03-18 15:26:25');
INSERT INTO `allotment` VALUES (888, 11, 1, 46, '11', '0.467', '0.689', 'available', 0, NULL, 0, 0, '2019-03-18 15:27:15', '2019-03-18 15:27:17');
INSERT INTO `allotment` VALUES (889, 12, 1, 46, '12', '0.464', '0.681', 'available', 0, NULL, 0, 0, '2019-03-18 15:27:59', '2019-03-18 15:28:03');
INSERT INTO `allotment` VALUES (890, 13, 1, 46, '13', '0.460', '0.674', 'available', 0, NULL, 0, 0, '2019-03-18 15:30:07', '2019-03-18 15:30:10');
INSERT INTO `allotment` VALUES (891, 14, 1, 46, '14', '0.457', '0.666', 'available', 0, NULL, 0, 0, '2019-03-18 15:31:12', '2019-03-18 15:31:18');
INSERT INTO `allotment` VALUES (892, 15, 1, 46, '15', '0.454', '0.658', 'available', 0, NULL, 0, 0, '2019-03-18 15:32:01', '2019-03-18 15:32:04');
INSERT INTO `allotment` VALUES (893, 16, 1, 46, '16', '0.450', '0.651', 'available', 0, NULL, 0, 0, '2019-03-18 15:32:46', '2019-03-18 15:32:49');
INSERT INTO `allotment` VALUES (894, 17, 1, 46, '17', '0.446', '0.643', 'available', 0, NULL, 0, 0, '2019-03-18 15:33:26', '2019-03-18 15:33:29');
INSERT INTO `allotment` VALUES (895, 18, 1, 46, '18', '0.444', '0.635', 'available', 0, NULL, 0, 0, '2019-03-18 15:34:04', '2019-03-18 15:34:07');
INSERT INTO `allotment` VALUES (896, 1, 1, 47, '01', '0.474', '0.612', 'available', 0, NULL, 0, 0, '2019-03-18 15:35:40', '2019-03-18 15:35:43');
INSERT INTO `allotment` VALUES (897, 2, 1, 47, '02', '0.477', '0.620', 'available', 0, NULL, 0, 0, '2019-03-18 15:36:15', '2019-03-18 15:36:21');
INSERT INTO `allotment` VALUES (898, 3, 1, 47, '03', '0.480', '0.628', 'available', 0, NULL, 0, 0, '2019-03-18 15:36:57', '2019-03-18 15:37:00');
INSERT INTO `allotment` VALUES (900, 4, 1, 47, '04', '0.483', '0.635', 'available', 0, NULL, 0, 0, '2019-03-18 15:38:00', '2019-03-18 15:38:03');
INSERT INTO `allotment` VALUES (901, 5, 1, 47, '05', '0.487', '0.663', 'available', 0, NULL, 0, 0, '2019-03-18 15:38:54', '2019-03-18 15:38:57');
INSERT INTO `allotment` VALUES (902, 6, 1, 47, '06', '0.484', '0.655', 'available', 0, NULL, 0, 0, '2019-03-18 15:39:37', '2019-03-18 15:39:39');
INSERT INTO `allotment` VALUES (903, 7, 1, 47, '07', '0.480', '0.648', 'available', 0, NULL, 0, 0, '2019-03-18 15:40:11', '2019-03-18 15:40:16');
INSERT INTO `allotment` VALUES (904, 8, 1, 47, '08', '0.477', '0.640', 'available', 0, NULL, 0, 0, '2019-03-18 15:40:52', '2019-03-18 15:40:55');
INSERT INTO `allotment` VALUES (905, 9, 1, 47, '09', '0.473', '0.633', 'available', 0, NULL, 0, 0, '2019-03-18 15:41:29', '2019-03-18 15:41:32');
INSERT INTO `allotment` VALUES (906, 10, 1, 47, '10', '0.470', '0.626', 'available', 0, NULL, 0, 0, '2019-03-18 15:42:14', '2019-03-18 15:42:17');
INSERT INTO `allotment` VALUES (907, 11, 1, 47, '11', '0.467', '0.617', 'available', 0, NULL, 0, 0, '2019-03-18 15:42:53', '2019-03-18 15:42:56');
INSERT INTO `allotment` VALUES (908, 1, 1, 48, '01', '0.427', '0.507', 'processing', 0, '', 0, 0, '2019-03-18 16:16:04', '2019-04-30 03:40:05');
INSERT INTO `allotment` VALUES (909, 2, 1, 48, '02', '0.430', '0.515', 'available', 0, NULL, 0, 0, '2019-03-18 16:18:43', '2019-03-18 16:18:46');
INSERT INTO `allotment` VALUES (910, 3, 1, 48, '03', '0.434', '0.523', 'available', 0, NULL, 0, 0, '2019-03-18 16:19:40', '2019-03-18 16:19:49');
INSERT INTO `allotment` VALUES (911, 4, 1, 48, '04', '0.437', '0.530', 'available', 0, NULL, 0, 0, '2019-03-18 16:20:24', '2019-03-18 16:20:28');
INSERT INTO `allotment` VALUES (912, 5, 1, 48, '05', '0.441', '0.537', 'available', 0, NULL, 0, 0, '2019-03-18 16:21:09', '2019-03-18 16:21:12');
INSERT INTO `allotment` VALUES (913, 6, 1, 48, '06', '0.444', '0.545', 'available', 0, NULL, 0, 0, '2019-03-18 16:21:54', '2019-03-18 16:21:57');
INSERT INTO `allotment` VALUES (914, 7, 1, 48, '07', '0.448', '0.553', 'available', 0, NULL, 0, 0, '2019-03-18 16:22:32', '2019-03-18 16:22:36');
INSERT INTO `allotment` VALUES (915, 8, 1, 48, '08', '0.451', '0.560', 'available', 0, NULL, 0, 0, '2019-03-18 16:23:11', '2019-03-18 16:23:14');
INSERT INTO `allotment` VALUES (916, 9, 1, 48, '09', '0.454', '0.568', 'available', 0, NULL, 0, 0, '2019-03-18 16:23:49', '2019-03-18 16:23:52');
INSERT INTO `allotment` VALUES (917, 10, 1, 48, '10', '0.457', '0.576', 'available', 0, NULL, 0, 0, '2019-03-18 16:24:37', '2019-03-18 16:24:42');
INSERT INTO `allotment` VALUES (918, 11, 1, 48, '11', '0.461', '0.583', 'available', 0, NULL, 0, 0, '2019-03-18 16:25:21', '2019-03-18 16:25:24');
INSERT INTO `allotment` VALUES (919, 12, 1, 48, '12', '0.464', '0.591', 'available', 0, NULL, 0, 0, '2019-03-18 16:26:11', '2019-03-18 16:26:16');
INSERT INTO `allotment` VALUES (920, 13, 1, 48, '13', '0.468', '0.598', 'available', 0, NULL, 0, 0, '2019-03-18 16:27:16', '2019-03-18 16:27:19');
INSERT INTO `allotment` VALUES (921, 14, 1, 48, '14', '0.461', '0.604', 'available', 0, NULL, 0, 0, '2019-03-18 16:28:06', '2019-03-18 16:28:09');
INSERT INTO `allotment` VALUES (922, 15, 1, 48, '15', '0.458', '0.596', 'available', 0, NULL, 0, 0, '2019-03-18 16:29:52', '2019-03-18 16:29:56');
INSERT INTO `allotment` VALUES (923, 16, 1, 48, '16', '0.454', '0.588', 'available', 0, NULL, 0, 0, '2019-03-18 16:30:53', '2019-03-18 16:30:56');
INSERT INTO `allotment` VALUES (924, 17, 1, 48, '17', '0.451', '0.581', 'available', 0, NULL, 0, 0, '2019-03-18 16:31:46', '2019-03-18 16:31:49');
INSERT INTO `allotment` VALUES (925, 18, 1, 48, '18', '0.447', '0.574', 'available', 0, NULL, 0, 0, '2019-03-18 16:32:42', '2019-03-18 16:32:45');
INSERT INTO `allotment` VALUES (926, 19, 1, 48, '19', '0.444', '0.566', 'available', 0, NULL, 0, 0, '2019-03-18 16:33:56', '2019-03-18 16:34:01');
INSERT INTO `allotment` VALUES (927, 20, 1, 48, '20', '0.440', '0.558', 'available', 0, NULL, 0, 0, '2019-03-18 16:34:46', '2019-03-18 16:34:49');
INSERT INTO `allotment` VALUES (928, 21, 1, 48, '21', '0.437', '0.550', 'available', 0, NULL, 0, 0, '2019-03-18 16:35:33', '2019-03-18 16:35:37');
INSERT INTO `allotment` VALUES (929, 22, 1, 48, '22', '0.434', '0.542', 'available', 0, NULL, 0, 0, '2019-03-18 16:36:43', '2019-03-18 16:36:46');
INSERT INTO `allotment` VALUES (930, 23, 1, 48, '23', '0.430', '0.535', 'available', 0, NULL, 0, 0, '2019-03-18 16:37:45', '2019-03-18 16:37:49');
INSERT INTO `allotment` VALUES (931, 24, 1, 48, '24', '0.427', '0.527', 'available', 0, NULL, 0, 0, '2019-03-18 16:38:25', '2019-03-18 16:38:29');
INSERT INTO `allotment` VALUES (932, 25, 1, 48, '25', '0.424', '0.520', 'available', 0, NULL, 0, 0, '2019-03-18 16:39:14', '2019-03-18 16:39:17');
INSERT INTO `allotment` VALUES (933, 1, 1, 49, '01', '0.408', '0.532', 'available', 0, NULL, 0, 0, '2019-03-18 16:40:35', '2019-03-18 16:40:39');
INSERT INTO `allotment` VALUES (934, 2, 1, 49, '02', '0.411', '0.540', 'available', 0, NULL, 0, 0, '2019-03-18 16:45:33', '2019-03-18 16:45:36');
INSERT INTO `allotment` VALUES (935, 3, 1, 49, '03', '0.414', '0.547', 'available', 0, NULL, 0, 0, '2019-03-18 16:46:20', '2019-03-18 16:46:25');
INSERT INTO `allotment` VALUES (937, 4, 1, 49, '04', '0.418', '0.555', 'available', 0, NULL, 0, 0, '2019-03-18 16:48:12', '2019-03-18 16:48:17');
INSERT INTO `allotment` VALUES (938, 5, 1, 49, '05', '0.421', '0.563', 'available', 0, NULL, 0, 0, '2019-03-18 16:54:30', '2019-03-18 16:54:34');
INSERT INTO `allotment` VALUES (939, 6, 1, 49, '06', '0.424', '0.571', 'available', 0, NULL, 0, 0, '2019-03-18 16:55:54', '2019-03-18 16:55:58');
INSERT INTO `allotment` VALUES (940, 7, 1, 49, '07', '0.428', '0.577', 'available', 0, NULL, 0, 0, '2019-03-18 16:56:36', '2019-03-18 16:56:40');
INSERT INTO `allotment` VALUES (941, 8, 1, 49, '08', '0.431', '0.586', 'available', 0, NULL, 0, 0, '2019-03-18 16:57:18', '2019-03-18 16:57:22');
INSERT INTO `allotment` VALUES (942, 9, 1, 49, '09', '0.435', '0.594', 'available', 0, NULL, 0, 0, '2019-03-18 16:57:57', '2019-03-18 16:58:03');
INSERT INTO `allotment` VALUES (943, 10, 1, 49, '10', '0.438', '0.601', 'available', 0, NULL, 0, 0, '2019-03-18 17:00:25', '2019-03-18 17:00:32');
INSERT INTO `allotment` VALUES (944, 11, 1, 49, '11', '0.441', '0.609', 'available', 0, NULL, 0, 0, '2019-03-18 17:01:14', '2019-03-18 17:01:18');
INSERT INTO `allotment` VALUES (945, 12, 1, 49, '12', '0.444', '0.616', 'available', 0, NULL, 0, 0, '2019-03-18 17:02:05', '2019-03-18 17:02:08');
INSERT INTO `allotment` VALUES (946, 13, 1, 49, '13', '0.438', '0.622', 'available', 0, NULL, 0, 0, '2019-03-18 17:02:48', '2019-03-18 17:02:53');
INSERT INTO `allotment` VALUES (947, 14, 1, 49, '14', '0.434', '0.614', 'available', 0, NULL, 0, 0, '2019-03-18 17:03:30', '2019-03-18 17:03:33');
INSERT INTO `allotment` VALUES (948, 15, 1, 49, '15', '0.431', '0.606', 'available', 0, NULL, 0, 0, '2019-03-18 17:04:12', '2019-03-18 17:04:16');
INSERT INTO `allotment` VALUES (949, 16, 1, 49, '16', '0.428', '0.599', 'available', 0, NULL, 0, 0, '2019-03-18 17:05:11', '2019-03-18 17:05:17');
INSERT INTO `allotment` VALUES (950, 17, 1, 49, '17', '0.424', '0.591', 'available', 0, NULL, 0, 0, '2019-03-18 17:05:55', '2019-03-18 17:05:59');
INSERT INTO `allotment` VALUES (951, 18, 1, 49, '18', '0.421', '0.583', 'available', 0, NULL, 0, 0, '2019-03-18 17:06:45', '2019-03-18 17:06:49');
INSERT INTO `allotment` VALUES (952, 19, 1, 49, '19', '0.417', '0.576', 'available', 0, NULL, 0, 0, '2019-03-18 17:07:24', '2019-03-18 17:07:28');
INSERT INTO `allotment` VALUES (953, 20, 1, 49, '20', '0.414', '0.568', 'available', 0, NULL, 0, 0, '2019-03-18 17:08:24', '2019-03-18 17:08:29');
INSERT INTO `allotment` VALUES (954, 21, 1, 49, '21', '0.411', '0.560', 'available', 0, NULL, 0, 0, '2019-03-18 17:09:11', '2019-03-18 17:09:17');
INSERT INTO `allotment` VALUES (955, 22, 1, 49, '22', '0.407', '0.553', 'available', 0, NULL, 0, 0, '2019-03-18 17:09:53', '2019-03-18 17:09:57');
INSERT INTO `allotment` VALUES (956, 23, 1, 49, '23', '0.404', '0.546', 'available', 0, NULL, 0, 0, '2019-03-18 17:12:44', '2019-03-18 17:12:49');
INSERT INTO `allotment` VALUES (957, 24, 1, 49, '24', '0.401', '0.538', 'available', 0, NULL, 0, 0, '2019-03-18 17:13:50', '2019-03-18 17:13:53');
INSERT INTO `allotment` VALUES (958, 25, 1, 49, '25', '0.398', '0.530', 'sold', 10228, 'in_process', 0, 0, '2019-03-18 17:14:40', '2019-05-28 21:13:03');
INSERT INTO `allotment` VALUES (959, 1, 1, 50, '01', '0.384', '0.540', 'available', 0, NULL, 0, 0, '2019-03-18 17:23:16', '2019-04-25 10:49:45');
INSERT INTO `allotment` VALUES (960, 2, 1, 50, '02', '0.388', '0.547', 'available', 0, NULL, 0, 0, '2019-03-18 17:24:21', '2019-03-18 17:24:25');
INSERT INTO `allotment` VALUES (961, 3, 1, 50, '03', '0.391', '0.555', 'available', 0, NULL, 0, 0, '2019-03-18 17:25:14', '2019-03-18 17:25:19');
INSERT INTO `allotment` VALUES (962, 4, 1, 50, '04', '0.394', '0.563', 'available', 0, NULL, 0, 0, '2019-03-18 17:26:07', '2019-03-18 17:26:10');
INSERT INTO `allotment` VALUES (963, 5, 1, 50, '05', '0.398', '0.570', 'available', 0, NULL, 0, 0, '2019-03-18 17:27:01', '2019-03-18 17:27:04');
INSERT INTO `allotment` VALUES (964, 6, 1, 50, '06', '0.401', '0.578', 'available', 0, NULL, 0, 0, '2019-03-18 17:35:22', '2019-03-18 17:35:26');
INSERT INTO `allotment` VALUES (965, 7, 1, 50, '07', '0.404', '0.587', 'available', 0, NULL, 0, 0, '2019-03-18 17:36:41', '2019-03-18 17:36:48');
INSERT INTO `allotment` VALUES (966, 8, 1, 50, '08', '0.407', '0.594', 'available', 0, NULL, 0, 0, '2019-03-18 17:37:33', '2019-03-18 17:37:36');
INSERT INTO `allotment` VALUES (967, 9, 1, 50, '09', '0.410', '0.601', 'available', 0, NULL, 0, 0, '2019-03-18 17:38:31', '2019-03-18 17:38:57');
INSERT INTO `allotment` VALUES (968, 10, 1, 50, '10', '0.414', '0.609', 'available', 0, NULL, 0, 0, '2019-03-18 17:40:11', '2019-03-18 17:40:28');
INSERT INTO `allotment` VALUES (969, 11, 1, 50, '11', '0.417', '0.616', 'available', 0, NULL, 0, 0, '2019-03-18 17:41:25', '2019-03-18 17:41:28');
INSERT INTO `allotment` VALUES (970, 12, 1, 50, '12', '0.421', '0.625', 'available', 0, NULL, 0, 0, '2019-03-18 17:42:17', '2019-03-18 17:42:21');
INSERT INTO `allotment` VALUES (971, 13, 1, 50, '13', '0.425', '0.632', 'available', 0, NULL, 0, 0, '2019-03-18 17:43:09', '2019-03-18 17:43:12');
INSERT INTO `allotment` VALUES (972, 14, 1, 50, '14', '0.418', '0.637', 'available', 0, NULL, 0, 0, '2019-03-18 22:17:02', '2019-03-18 22:17:08');
INSERT INTO `allotment` VALUES (973, 15, 1, 50, '15', '0.414', '0.629', 'available', 0, NULL, 0, 0, '2019-03-18 22:18:08', '2019-03-18 22:18:12');
INSERT INTO `allotment` VALUES (974, 16, 1, 50, '16', '0.411', '0.622', 'available', 0, NULL, 0, 0, '2019-03-18 22:18:45', '2019-03-18 22:18:48');
INSERT INTO `allotment` VALUES (975, 17, 1, 50, '17', '0.407', '0.614', 'available', 0, NULL, 0, 0, '2019-03-18 22:19:27', '2019-03-18 22:19:31');
INSERT INTO `allotment` VALUES (976, 18, 1, 50, '18', '0.404', '0.606', 'available', 0, NULL, 0, 0, '2019-03-18 22:19:58', '2019-03-18 22:20:01');
INSERT INTO `allotment` VALUES (977, 19, 1, 50, '19', '0.401', '0.599', 'available', 0, NULL, 0, 0, '2019-03-18 22:20:41', '2019-03-18 22:20:45');
INSERT INTO `allotment` VALUES (978, 20, 1, 50, '20', '0.398', '0.592', 'available', 0, NULL, 0, 0, '2019-03-18 22:21:30', '2019-03-18 22:21:34');
INSERT INTO `allotment` VALUES (979, 21, 1, 50, '21', '0.394', '0.585', 'available', 0, NULL, 0, 0, '2019-03-18 22:22:33', '2019-03-18 22:22:36');
INSERT INTO `allotment` VALUES (980, 22, 1, 50, '22', '0.391', '0.577', 'available', 0, NULL, 0, 0, '2019-03-18 22:23:07', '2019-03-18 22:23:10');
INSERT INTO `allotment` VALUES (981, 23, 1, 50, '23', '0.387', '0.569', 'available', 0, NULL, 0, 0, '2019-03-18 22:23:45', '2019-03-18 22:23:48');
INSERT INTO `allotment` VALUES (982, 24, 1, 50, '24', '0.383', '0.562', 'available', 0, NULL, 0, 0, '2019-03-18 22:24:19', '2019-03-18 22:24:22');
INSERT INTO `allotment` VALUES (983, 25, 1, 50, '25', '0.381', '0.554', 'available', 0, NULL, 0, 0, '2019-03-18 22:24:52', '2019-03-18 22:24:55');
INSERT INTO `allotment` VALUES (984, 26, 1, 50, '26', '0.377', '0.546', 'available', 0, NULL, 0, 0, '2019-03-18 22:25:26', '2019-03-18 22:25:29');
INSERT INTO `allotment` VALUES (985, 1, 1, 51, '01', '0.364', '0.555', 'available', 0, NULL, 0, 0, '2019-03-18 22:26:30', '2019-03-18 22:26:33');
INSERT INTO `allotment` VALUES (986, 2, 1, 51, '02', '0.367', '0.562', 'available', 0, NULL, 0, 0, '2019-03-19 07:59:17', '2019-03-19 07:59:21');
INSERT INTO `allotment` VALUES (987, 3, 1, 51, '03', '0.370', '0.570', 'available', 0, NULL, 0, 0, '2019-03-19 07:59:56', '2019-03-19 07:59:59');
INSERT INTO `allotment` VALUES (988, 4, 1, 51, '04', '0.374', '0.578', 'available', 0, NULL, 0, 0, '2019-03-19 08:00:30', '2019-03-19 08:00:34');
INSERT INTO `allotment` VALUES (989, 5, 1, 51, '05', '0.377', '0.586', 'available', 0, NULL, 0, 0, '2019-03-19 08:01:04', '2019-03-19 08:01:07');
INSERT INTO `allotment` VALUES (990, 6, 1, 51, '06', '0.381', '0.593', 'available', 0, NULL, 0, 0, '2019-03-19 08:01:52', '2019-04-25 11:30:39');
INSERT INTO `allotment` VALUES (991, 7, 1, 51, '07', '0.384', '0.601', 'available', 0, NULL, 0, 0, '2019-03-19 08:02:29', '2019-03-19 08:02:33');
INSERT INTO `allotment` VALUES (992, 8, 1, 51, '08', '0.387', '0.609', 'available', 0, NULL, 0, 0, '2019-03-19 08:03:02', '2019-03-19 08:03:05');
INSERT INTO `allotment` VALUES (993, 9, 1, 51, '09', '0.391', '0.617', 'available', 0, NULL, 0, 0, '2019-03-19 08:03:39', '2019-03-19 08:03:42');
INSERT INTO `allotment` VALUES (994, 10, 1, 51, '10', '0.394', '0.624', 'available', 0, NULL, 0, 0, '2019-03-19 08:04:13', '2019-03-19 08:04:16');
INSERT INTO `allotment` VALUES (995, 11, 1, 51, '11', '0.398', '0.631', 'available', 0, NULL, 0, 0, '2019-03-19 08:04:45', '2019-03-19 08:04:48');
INSERT INTO `allotment` VALUES (996, 12, 1, 51, '12', '0.401', '0.639', 'available', 0, NULL, 0, 0, '2019-03-19 08:05:17', '2019-03-19 08:05:20');
INSERT INTO `allotment` VALUES (997, 13, 1, 51, '13', '0.404', '0.647', 'available', 0, NULL, 0, 0, '2019-03-19 08:05:52', '2019-03-19 08:05:55');
INSERT INTO `allotment` VALUES (998, 14, 1, 51, '14', '0.397', '0.652', 'available', 0, NULL, 0, 0, '2019-03-19 08:06:28', '2019-04-23 17:47:03');
INSERT INTO `allotment` VALUES (999, 15, 1, 51, '15', '0.394', '0.644', 'available', 0, NULL, 0, 0, '2019-03-19 08:07:14', '2019-03-19 08:07:18');
INSERT INTO `allotment` VALUES (1001, 16, 1, 51, '16', '0.390', '0.637', 'available', 0, NULL, 0, 0, '2019-03-19 08:07:57', '2019-03-19 08:08:00');
INSERT INTO `allotment` VALUES (1002, 17, 1, 51, '17', '0.387', '0.629', 'available', 0, NULL, 0, 0, '2019-03-19 08:08:31', '2019-03-19 08:08:34');
INSERT INTO `allotment` VALUES (1003, 18, 1, 51, '18', '0.384', '0.621', 'available', 0, NULL, 0, 0, '2019-03-19 08:09:05', '2019-03-19 08:09:08');
INSERT INTO `allotment` VALUES (1004, 19, 1, 51, '19', '0.381', '0.613', 'available', 0, NULL, 0, 0, '2019-03-19 08:09:38', '2019-03-19 08:09:43');
INSERT INTO `allotment` VALUES (1005, 20, 1, 51, '20', '0.377', '0.606', 'available', 0, NULL, 0, 0, '2019-03-19 08:10:11', '2019-03-19 08:10:14');
INSERT INTO `allotment` VALUES (1006, 21, 1, 51, '21', '0.374', '0.598', 'available', 0, NULL, 0, 0, '2019-03-19 08:10:51', '2019-03-19 08:10:53');
INSERT INTO `allotment` VALUES (1007, 22, 1, 51, '22', '0.370', '0.591', 'available', 0, NULL, 0, 0, '2019-03-19 08:11:25', '2019-03-19 08:11:28');
INSERT INTO `allotment` VALUES (1008, 23, 1, 51, '23', '0.367', '0.584', 'available', 0, NULL, 0, 0, '2019-03-19 08:12:14', '2019-03-19 08:12:17');
INSERT INTO `allotment` VALUES (1009, 24, 1, 51, '24', '0.364', '0.576', 'available', 0, NULL, 0, 0, '2019-03-19 08:12:46', '2019-03-19 08:12:49');
INSERT INTO `allotment` VALUES (1010, 25, 1, 51, '25', '0.360', '0.568', 'available', 0, NULL, 0, 0, '2019-03-19 08:13:18', '2019-03-19 08:13:21');
INSERT INTO `allotment` VALUES (1011, 26, 1, 51, '26', '0.357', '0.560', 'available', 0, NULL, 0, 0, '2019-03-19 08:13:54', '2019-03-19 08:14:02');
INSERT INTO `allotment` VALUES (1012, 1, 1, 52, '01', '0.344', '0.571', 'available', 0, NULL, 0, 0, '2019-03-19 09:50:27', '2019-03-19 09:50:31');
INSERT INTO `allotment` VALUES (1013, 2, 1, 52, '02', '0.347', '0.578', 'available', 0, NULL, 0, 0, '2019-03-19 09:51:05', '2019-03-19 09:51:08');
INSERT INTO `allotment` VALUES (1014, 3, 1, 52, '03', '0.350', '0.585', 'available', 0, NULL, 0, 0, '2019-03-19 09:51:47', '2019-03-19 09:51:50');
INSERT INTO `allotment` VALUES (1015, 4, 1, 52, '04', '0.354', '0.593', 'available', 0, NULL, 0, 0, '2019-03-19 09:52:20', '2019-03-19 09:52:23');
INSERT INTO `allotment` VALUES (1016, 5, 1, 52, '05', '0.357', '0.601', 'available', 0, NULL, 0, 0, '2019-03-19 09:53:05', '2019-03-19 09:53:08');
INSERT INTO `allotment` VALUES (1017, 6, 1, 52, '06', '0.361', '0.609', 'available', 0, NULL, 0, 0, '2019-03-19 09:53:45', '2019-03-19 09:53:49');
INSERT INTO `allotment` VALUES (1018, 7, 1, 52, '07', '0.363', '0.617', 'available', 0, NULL, 0, 0, '2019-03-19 09:54:23', '2019-03-19 09:54:26');
INSERT INTO `allotment` VALUES (1019, 8, 1, 52, '08', '0.368', '0.624', 'available', 0, NULL, 0, 0, '2019-03-19 09:55:02', '2019-03-19 09:55:05');
INSERT INTO `allotment` VALUES (1020, 9, 1, 52, '09', '0.371', '0.632', 'available', 0, NULL, 0, 0, '2019-03-19 09:55:38', '2019-03-19 09:57:21');
INSERT INTO `allotment` VALUES (1021, 10, 1, 52, '10', '0.374', '0.639', 'available', 0, NULL, 0, 0, '2019-03-19 09:57:56', '2019-03-19 09:57:59');
INSERT INTO `allotment` VALUES (1022, 11, 1, 52, '11', '0.377', '0.647', 'available', 0, NULL, 0, 0, '2019-03-19 09:58:45', '2019-03-19 09:58:48');
INSERT INTO `allotment` VALUES (1023, 12, 1, 52, '12', '0.380', '0.655', 'available', 0, NULL, 0, 0, '2019-03-19 09:59:20', '2019-03-19 09:59:23');
INSERT INTO `allotment` VALUES (1024, 13, 1, 52, '13', '0.384', '0.662', 'available', 0, NULL, 0, 0, '2019-03-19 10:00:13', '2019-03-19 10:00:20');
INSERT INTO `allotment` VALUES (1025, 14, 1, 52, '14', '0.377', '0.668', 'available', 0, NULL, 0, 0, '2019-03-19 10:01:11', '2019-03-19 10:01:15');
INSERT INTO `allotment` VALUES (1026, 15, 1, 52, '15', '0.374', '0.660', 'available', 0, NULL, 0, 0, '2019-03-19 10:01:52', '2019-03-19 10:01:54');
INSERT INTO `allotment` VALUES (1027, 16, 1, 52, '16', '0.370', '0.652', 'available', 0, NULL, 0, 0, '2019-03-19 10:02:33', '2019-03-19 10:02:36');
INSERT INTO `allotment` VALUES (1028, 17, 1, 52, '17', '0.367', '0.645', 'available', 0, NULL, 0, 0, '2019-03-19 10:03:58', '2019-03-19 10:04:01');
INSERT INTO `allotment` VALUES (1029, 18, 1, 52, '18', '0.364', '0.636', 'available', 0, NULL, 0, 0, '2019-03-19 10:04:35', '2019-03-19 10:04:38');
INSERT INTO `allotment` VALUES (1030, 19, 1, 52, '19', '0.361', '0.629', 'available', 0, NULL, 0, 0, '2019-03-19 10:05:14', '2019-03-19 10:05:17');
INSERT INTO `allotment` VALUES (1031, 20, 1, 52, '20', '0.357', '0.621', 'available', 0, NULL, 0, 0, '2019-03-19 10:05:52', '2019-03-19 10:05:55');
INSERT INTO `allotment` VALUES (1032, 21, 1, 52, '21', '0.354', '0.614', 'available', 0, NULL, 0, 0, '2019-03-19 10:06:36', '2019-03-19 10:06:39');
INSERT INTO `allotment` VALUES (1033, 22, 1, 52, '22', '0.350', '0.606', 'available', 0, NULL, 0, 0, '2019-03-19 10:11:16', '2019-03-19 10:11:19');
INSERT INTO `allotment` VALUES (1034, 23, 1, 52, '23', '0.347', '0.599', 'available', 0, NULL, 0, 0, '2019-03-19 10:11:54', '2019-03-19 10:11:58');
INSERT INTO `allotment` VALUES (1035, 24, 1, 52, '24', '0.344', '0.591', 'available', 0, NULL, 0, 0, '2019-03-19 10:12:31', '2019-03-19 10:12:34');
INSERT INTO `allotment` VALUES (1036, 25, 1, 52, '25', '0.340', '0.583', 'available', 0, NULL, 0, 0, '2019-03-19 10:13:10', '2019-03-19 10:13:13');
INSERT INTO `allotment` VALUES (1037, 26, 1, 52, '26', '0.337', '0.576', 'available', 0, NULL, 0, 0, '2019-03-19 10:13:44', '2019-03-19 10:13:47');
INSERT INTO `allotment` VALUES (1038, 1, 1, 53, '01', '0.324', '0.586', 'available', 0, NULL, 0, 0, '2019-03-19 10:27:33', '2019-03-19 10:27:37');
INSERT INTO `allotment` VALUES (1039, 2, 1, 53, '02', '0.327', '0.594', 'available', 0, NULL, 0, 0, '2019-03-19 10:28:09', '2019-03-19 10:28:12');
INSERT INTO `allotment` VALUES (1040, 3, 1, 53, '03', '0.330', '0.601', 'available', 0, NULL, 0, 0, '2019-03-19 10:28:49', '2019-03-19 10:28:52');
INSERT INTO `allotment` VALUES (1041, 4, 1, 53, '04', '0.334', '0.609', 'available', 0, NULL, 0, 0, '2019-03-19 10:29:26', '2019-03-19 10:29:29');
INSERT INTO `allotment` VALUES (1042, 5, 1, 53, '05', '0.337', '0.617', 'available', 0, NULL, 0, 0, '2019-03-19 10:30:05', '2019-03-19 10:30:08');
INSERT INTO `allotment` VALUES (1043, 6, 1, 53, '06', '0.340', '0.624', 'available', 0, NULL, 0, 0, '2019-03-19 10:30:43', '2019-03-19 10:30:47');
INSERT INTO `allotment` VALUES (1044, 7, 1, 53, '07', '0.344', '0.631', 'available', 0, NULL, 0, 0, '2019-03-19 10:31:21', '2019-03-19 10:31:24');
INSERT INTO `allotment` VALUES (1045, 8, 1, 53, '08', '0.347', '0.639', 'available', 0, NULL, 0, 0, '2019-03-19 10:32:45', '2019-03-19 10:32:48');
INSERT INTO `allotment` VALUES (1046, 9, 1, 53, '09', '0.351', '0.647', 'available', 0, NULL, 0, 0, '2019-03-19 10:33:24', '2019-03-19 10:33:27');
INSERT INTO `allotment` VALUES (1047, 10, 1, 53, '10', '0.354', '0.655', 'available', 0, NULL, 0, 0, '2019-03-19 10:36:55', '2019-03-19 10:36:58');
INSERT INTO `allotment` VALUES (1048, 11, 1, 53, '11', '0.357', '0.662', 'available', 0, NULL, 0, 0, '2019-03-19 10:37:37', '2019-03-19 10:37:40');
INSERT INTO `allotment` VALUES (1049, 12, 1, 53, '12', '0.360', '0.670', 'available', 0, NULL, 0, 0, '2019-03-19 10:39:09', '2019-03-19 10:39:12');
INSERT INTO `allotment` VALUES (1050, 13, 1, 53, '13', '0.364', '0.679', 'available', 0, NULL, 0, 0, '2019-03-19 10:39:47', '2019-03-19 10:39:51');
INSERT INTO `allotment` VALUES (1051, 14, 1, 53, '14', '0.357', '0.683', 'available', 0, NULL, 0, 0, '2019-03-19 10:40:26', '2019-03-19 10:40:30');
INSERT INTO `allotment` VALUES (1052, 15, 1, 53, '15', '0.354', '0.675', 'available', 0, NULL, 0, 0, '2019-03-19 10:41:02', '2019-03-19 10:41:05');
INSERT INTO `allotment` VALUES (1053, 16, 1, 53, '16', '0.351', '0.667', 'available', 0, NULL, 0, 0, '2019-03-19 10:41:40', '2019-03-19 10:41:43');
INSERT INTO `allotment` VALUES (1054, 17, 1, 53, '17', '0.347', '0.660', 'available', 0, NULL, 0, 0, '2019-03-19 10:42:15', '2019-03-19 10:42:18');
INSERT INTO `allotment` VALUES (1055, 18, 1, 53, '18', '0.344', '0.653', 'available', 0, NULL, 0, 0, '2019-03-19 10:42:52', '2019-03-19 10:42:56');
INSERT INTO `allotment` VALUES (1056, 19, 1, 53, '19', '0.340', '0.644', 'available', 0, NULL, 0, 0, '2019-03-19 10:43:35', '2019-03-19 10:43:37');
INSERT INTO `allotment` VALUES (1057, 20, 1, 53, '20', '0.337', '0.637', 'available', 0, NULL, 0, 0, '2019-03-19 10:44:19', '2019-03-19 10:44:23');
INSERT INTO `allotment` VALUES (1058, 21, 1, 53, '21', '0.334', '0.629', 'available', 0, NULL, 0, 0, '2019-03-19 10:45:01', '2019-03-19 10:45:04');
INSERT INTO `allotment` VALUES (1059, 22, 1, 53, '22', '0.330', '0.622', 'available', 0, NULL, 0, 0, '2019-03-19 10:46:07', '2019-03-19 10:46:10');
INSERT INTO `allotment` VALUES (1060, 23, 1, 53, '23', '0.327', '0.614', 'available', 0, NULL, 0, 0, '2019-03-19 10:46:47', '2019-03-19 10:46:50');
INSERT INTO `allotment` VALUES (1061, 24, 1, 53, '24', '0.323', '0.606', 'available', 0, NULL, 0, 0, '2019-03-19 10:47:29', '2019-03-19 10:47:32');
INSERT INTO `allotment` VALUES (1062, 25, 1, 53, '25', '0.320', '0.599', 'available', 0, NULL, 0, 0, '2019-03-19 10:48:11', '2019-03-19 10:48:14');
INSERT INTO `allotment` VALUES (1063, 26, 1, 53, '26', '0.317', '0.591', 'available', 0, NULL, 0, 0, '2019-03-19 10:48:50', '2019-04-22 19:14:57');
INSERT INTO `allotment` VALUES (1064, 1, 1, 54, '01', '0.304', '0.602', 'available', 0, NULL, 0, 0, '2019-03-19 10:50:14', '2019-03-19 10:50:20');
INSERT INTO `allotment` VALUES (1065, 2, 1, 54, '02', '0.307', '0.610', 'available', 0, NULL, 0, 0, '2019-03-19 10:50:57', '2019-03-19 10:51:00');
INSERT INTO `allotment` VALUES (1066, 3, 1, 54, '03', '0.310', '0.617', 'available', 0, NULL, 0, 0, '2019-03-19 10:51:33', '2019-03-19 10:51:36');
INSERT INTO `allotment` VALUES (1067, 4, 1, 54, '04', '0.313', '0.624', 'available', 0, NULL, 0, 0, '2019-03-19 10:52:06', '2019-03-19 10:52:09');
INSERT INTO `allotment` VALUES (1068, 5, 1, 54, '05', '0.317', '0.632', 'available', 0, NULL, 0, 0, '2019-03-19 10:52:44', '2019-03-19 10:52:47');
INSERT INTO `allotment` VALUES (1069, 6, 1, 54, '06', '0.320', '0.639', 'available', 0, NULL, 0, 0, '2019-03-19 10:53:19', '2019-03-19 10:53:22');
INSERT INTO `allotment` VALUES (1070, 7, 1, 54, '07', '0.324', '0.648', 'available', 0, NULL, 0, 0, '2019-03-19 10:53:53', '2019-03-19 10:53:56');
INSERT INTO `allotment` VALUES (1071, 8, 1, 54, '08', '0.327', '0.655', 'available', 0, NULL, 0, 0, '2019-03-19 10:54:24', '2019-03-19 10:54:27');
INSERT INTO `allotment` VALUES (1072, 9, 1, 54, '09', '0.330', '0.663', 'available', 0, NULL, 0, 0, '2019-03-19 10:54:55', '2019-03-19 10:54:58');
INSERT INTO `allotment` VALUES (1073, 10, 1, 54, '10', '0.334', '0.670', 'available', 0, NULL, 0, 0, '2019-03-19 10:55:30', '2019-03-19 10:55:33');
INSERT INTO `allotment` VALUES (1074, 11, 1, 54, '11', '0.337', '0.678', 'available', 0, NULL, 0, 0, '2019-03-19 10:56:09', '2019-03-19 10:56:12');
INSERT INTO `allotment` VALUES (1075, 12, 1, 54, '12', '0.341', '0.685', 'available', 0, NULL, 0, 0, '2019-03-19 10:56:51', '2019-03-19 10:56:54');
INSERT INTO `allotment` VALUES (1076, 13, 1, 54, '13', '0.344', '0.693', 'available', 0, NULL, 0, 0, '2019-03-19 10:57:27', '2019-03-19 10:57:30');
INSERT INTO `allotment` VALUES (1077, 14, 1, 54, '14', '0.337', '0.698', 'available', 0, NULL, 0, 0, '2019-03-19 10:58:03', '2019-03-19 10:58:06');
INSERT INTO `allotment` VALUES (1078, 15, 1, 54, '15', '0.334', '0.690', 'available', 0, NULL, 0, 0, '2019-03-19 10:58:42', '2019-03-19 10:58:46');
INSERT INTO `allotment` VALUES (1079, 16, 1, 54, '16', '0.330', '0.683', 'available', 0, NULL, 0, 0, '2019-03-19 10:59:28', '2019-03-19 10:59:32');
INSERT INTO `allotment` VALUES (1081, 17, 1, 54, '17', '0.327', '0.675', 'available', 0, NULL, 0, 0, '2019-03-19 11:00:42', '2019-03-19 11:00:45');
INSERT INTO `allotment` VALUES (1082, 18, 1, 54, '18', '0.324', '0.667', 'available', 0, NULL, 0, 0, '2019-03-19 11:01:26', '2019-03-19 11:01:28');
INSERT INTO `allotment` VALUES (1083, 19, 1, 54, '19', '0.321', '0.660', 'available', 0, NULL, 0, 0, '2019-03-19 11:02:03', '2019-03-19 11:02:06');
INSERT INTO `allotment` VALUES (1084, 20, 1, 54, '20', '0.317', '0.652', 'available', 0, NULL, 0, 0, '2019-03-19 11:02:48', '2019-03-19 11:02:51');
INSERT INTO `allotment` VALUES (1085, 21, 1, 54, '21', '0.313', '0.644', 'available', 0, NULL, 0, 0, '2019-03-19 11:03:19', '2019-03-19 11:03:22');
INSERT INTO `allotment` VALUES (1086, 22, 1, 54, '22', '0.310', '0.637', 'available', 0, NULL, 0, 0, '2019-03-19 11:03:55', '2019-03-19 11:03:58');
INSERT INTO `allotment` VALUES (1087, 23, 1, 54, '23', '0.307', '0.629', 'available', 0, NULL, 0, 0, '2019-03-19 11:04:29', '2019-03-19 11:04:32');
INSERT INTO `allotment` VALUES (1088, 24, 1, 54, '24', '0.303', '0.621', 'available', 0, NULL, 0, 0, '2019-03-19 11:05:12', '2019-03-19 11:05:15');
INSERT INTO `allotment` VALUES (1089, 25, 1, 54, '25', '0.300', '0.614', 'available', 0, NULL, 0, 0, '2019-03-19 11:05:59', '2019-03-19 11:06:02');
INSERT INTO `allotment` VALUES (1090, 26, 1, 54, '26', '0.297', '0.606', 'available', 0, NULL, 0, 0, '2019-03-19 11:06:36', '2019-03-19 11:06:39');
INSERT INTO `allotment` VALUES (1091, 1, 1, 55, '01', '0.283', '0.616', 'available', 0, NULL, 0, 0, '2019-03-19 11:13:25', '2019-03-19 11:13:28');
INSERT INTO `allotment` VALUES (1092, 2, 1, 55, '02', '0.286', '0.624', 'available', 0, NULL, 0, 0, '2019-03-19 11:14:05', '2019-03-19 11:14:09');
INSERT INTO `allotment` VALUES (1093, 3, 1, 55, '03', '0.290', '0.631', 'available', 0, NULL, 0, 0, '2019-03-19 11:14:44', '2019-03-19 11:14:47');
INSERT INTO `allotment` VALUES (1094, 4, 1, 55, '04', '0.293', '0.640', 'available', 0, NULL, 0, 0, '2019-03-19 11:15:29', '2019-03-19 11:15:31');
INSERT INTO `allotment` VALUES (1095, 5, 1, 55, '05', '0.297', '0.647', 'available', 0, NULL, 0, 0, '2019-03-19 11:16:21', '2019-03-19 11:16:24');
INSERT INTO `allotment` VALUES (1096, 6, 1, 55, '06', '0.300', '0.656', 'available', 0, NULL, 0, 0, '2019-03-19 11:17:14', '2019-03-19 11:17:17');
INSERT INTO `allotment` VALUES (1097, 7, 1, 55, '07', '0.303', '0.662', 'available', 0, NULL, 0, 0, '2019-03-19 11:18:56', '2019-03-19 11:18:59');
INSERT INTO `allotment` VALUES (1098, 8, 1, 55, '08', '0.307', '0.670', 'available', 0, NULL, 0, 0, '2019-03-19 11:19:34', '2019-03-19 11:19:37');
INSERT INTO `allotment` VALUES (1099, 9, 1, 55, '09', '0.311', '0.677', 'available', 0, NULL, 0, 0, '2019-03-19 11:20:12', '2019-03-19 11:20:15');
INSERT INTO `allotment` VALUES (1100, 10, 1, 55, '10', '0.314', '0.685', 'available', 0, NULL, 0, 0, '2019-03-19 11:20:49', '2019-03-19 11:20:52');
INSERT INTO `allotment` VALUES (1101, 11, 1, 55, '11', '0.317', '0.693', 'available', 0, NULL, 0, 0, '2019-03-19 11:21:26', '2019-03-19 11:21:29');
INSERT INTO `allotment` VALUES (1102, 12, 1, 55, '12', '0.321', '0.701', 'available', 0, NULL, 0, 0, '2019-03-19 11:21:57', '2019-03-19 11:22:00');
INSERT INTO `allotment` VALUES (1103, 13, 1, 55, '13', '0.324', '0.709', 'available', 0, NULL, 0, 0, '2019-03-19 11:22:34', '2019-03-19 11:22:37');
INSERT INTO `allotment` VALUES (1104, 14, 1, 55, '14', '0.317', '0.714', 'available', 0, NULL, 0, 0, '2019-03-19 11:23:09', '2019-03-19 11:23:12');
INSERT INTO `allotment` VALUES (1105, 15, 1, 55, '15', '0.313', '0.707', 'available', 0, NULL, 0, 0, '2019-03-19 11:23:44', '2019-03-19 11:23:47');
INSERT INTO `allotment` VALUES (1106, 16, 1, 55, '16', '0.311', '0.699', 'available', 0, NULL, 0, 0, '2019-03-19 11:24:18', '2019-03-19 11:24:21');
INSERT INTO `allotment` VALUES (1107, 17, 1, 55, '17', '0.307', '0.692', 'available', 0, NULL, 0, 0, '2019-03-19 11:26:58', '2019-03-19 11:27:00');
INSERT INTO `allotment` VALUES (1108, 18, 1, 55, '18', '0.304', '0.684', 'available', 0, NULL, 0, 0, '2019-03-19 11:27:31', '2019-03-19 11:27:34');
INSERT INTO `allotment` VALUES (1109, 19, 1, 55, '19', '0.300', '0.676', 'available', 0, NULL, 0, 0, '2019-03-19 11:28:04', '2019-03-19 11:28:08');
INSERT INTO `allotment` VALUES (1110, 20, 1, 55, '20', '0.297', '0.668', 'available', 0, NULL, 0, 0, '2019-03-19 11:28:40', '2019-03-19 11:28:43');
INSERT INTO `allotment` VALUES (1111, 21, 1, 55, '21', '0.293', '0.660', 'available', 0, NULL, 0, 0, '2019-03-19 11:29:32', '2019-03-19 11:29:35');
INSERT INTO `allotment` VALUES (1112, 22, 1, 55, '22', '0.290', '0.653', 'available', 0, NULL, 0, 0, '2019-03-19 11:30:11', '2019-03-19 11:30:15');
INSERT INTO `allotment` VALUES (1113, 23, 1, 55, '23', '0.287', '0.645', 'available', 0, NULL, 0, 0, '2019-03-19 11:30:53', '2019-03-19 11:30:56');
INSERT INTO `allotment` VALUES (1114, 24, 1, 55, '24', '0.284', '0.638', 'available', 0, NULL, 0, 0, '2019-03-19 11:31:36', '2019-03-19 11:31:41');
INSERT INTO `allotment` VALUES (1115, 25, 1, 55, '25', '0.280', '0.629', 'available', 0, NULL, 0, 0, '2019-03-19 11:33:01', '2019-03-19 11:33:04');
INSERT INTO `allotment` VALUES (1116, 26, 1, 55, '26', '0.277', '0.623', 'available', 0, NULL, 0, 0, '2019-03-19 11:33:55', '2019-03-19 11:33:58');
INSERT INTO `allotment` VALUES (1117, 1, 1, 56, '01', '0.263', '0.632', 'available', 0, NULL, 0, 0, '2019-03-19 11:42:08', '2019-03-19 11:42:11');
INSERT INTO `allotment` VALUES (1118, 2, 1, 56, '02', '0.267', '0.640', 'available', 0, NULL, 0, 0, '2019-03-19 11:42:53', '2019-03-19 11:42:56');
INSERT INTO `allotment` VALUES (1119, 3, 1, 56, '03', '0.270', '0.648', 'available', 0, NULL, 0, 0, '2019-03-19 11:44:25', '2019-03-19 11:44:28');
INSERT INTO `allotment` VALUES (1120, 4, 1, 56, '04', '0.274', '0.655', 'available', 0, NULL, 0, 0, '2019-03-19 11:49:53', '2019-03-19 11:49:56');
INSERT INTO `allotment` VALUES (1121, 5, 1, 56, '05', '0.277', '0.663', 'available', 0, NULL, 0, 0, '2019-03-19 11:50:27', '2019-03-19 11:50:30');
INSERT INTO `allotment` VALUES (1122, 6, 1, 56, '06', '0.280', '0.671', 'available', 0, NULL, 0, 0, '2019-03-19 11:51:11', '2019-03-19 11:51:14');
INSERT INTO `allotment` VALUES (1123, 7, 1, 56, '07', '0.283', '0.678', 'available', 0, NULL, 0, 0, '2019-03-19 11:52:00', '2019-03-19 11:52:03');
INSERT INTO `allotment` VALUES (1124, 8, 1, 56, '08', '0.287', '0.685', 'available', 0, NULL, 0, 0, '2019-03-19 11:52:40', '2019-03-19 11:52:43');
INSERT INTO `allotment` VALUES (1125, 9, 1, 56, '09', '0.291', '0.693', 'available', 0, NULL, 0, 0, '2019-03-19 11:53:13', '2019-03-19 11:53:16');
INSERT INTO `allotment` VALUES (1126, 10, 1, 56, '10', '0.294', '0.700', 'available', 0, NULL, 0, 0, '2019-03-19 11:53:47', '2019-03-19 11:53:49');
INSERT INTO `allotment` VALUES (1127, 11, 1, 56, '11', '0.297', '0.709', 'available', 0, NULL, 0, 0, '2019-03-19 11:55:37', '2019-03-19 11:55:40');
INSERT INTO `allotment` VALUES (1128, 12, 1, 56, '12', '0.300', '0.716', 'available', 0, NULL, 0, 0, '2019-03-19 11:56:32', '2019-03-19 11:56:35');
INSERT INTO `allotment` VALUES (1129, 13, 1, 56, '13', '0.303', '0.723', 'available', 0, NULL, 0, 0, '2019-03-19 11:57:09', '2019-03-19 11:57:12');
INSERT INTO `allotment` VALUES (1130, 14, 1, 56, '14', '0.297', '0.729', 'available', 0, NULL, 0, 0, '2019-03-19 11:57:45', '2019-03-19 11:57:49');
INSERT INTO `allotment` VALUES (1131, 15, 1, 56, '15', '0.293', '0.722', 'available', 0, NULL, 0, 0, '2019-03-19 11:58:21', '2019-03-19 11:58:25');
INSERT INTO `allotment` VALUES (1132, 16, 1, 56, '16', '0.290', '0.714', 'available', 0, NULL, 0, 0, '2019-03-19 11:59:46', '2019-03-19 11:59:49');
INSERT INTO `allotment` VALUES (1133, 17, 1, 56, '17', '0.287', '0.706', 'available', 0, NULL, 0, 0, '2019-03-19 12:00:29', '2019-03-19 12:00:32');
INSERT INTO `allotment` VALUES (1134, 18, 1, 56, '18', '0.283', '0.699', 'available', 0, NULL, 0, 0, '2019-03-19 12:05:19', '2019-03-19 12:05:22');
INSERT INTO `allotment` VALUES (1135, 19, 1, 56, '19', '0.280', '0.691', 'available', 0, NULL, 0, 0, '2019-03-19 12:06:11', '2019-03-19 12:06:14');
INSERT INTO `allotment` VALUES (1136, 20, 1, 56, '20', '0.277', '0.683', 'available', 0, NULL, 0, 0, '2019-03-19 12:06:51', '2019-03-19 12:06:53');
INSERT INTO `allotment` VALUES (1137, 21, 1, 56, '21', '0.273', '0.676', 'available', 0, NULL, 0, 0, '2019-03-19 12:11:45', '2019-03-19 12:11:48');
INSERT INTO `allotment` VALUES (1138, 22, 1, 56, '22', '0.270', '0.668', 'available', 0, NULL, 0, 0, '2019-03-19 12:12:18', '2019-03-19 12:12:21');
INSERT INTO `allotment` VALUES (1139, 23, 1, 56, '23', '0.267', '0.660', 'available', 0, NULL, 0, 0, '2019-03-19 12:13:25', '2019-03-19 12:13:29');
INSERT INTO `allotment` VALUES (1140, 24, 1, 56, '24', '0.263', '0.653', 'available', 0, NULL, 0, 0, '2019-03-19 12:14:01', '2019-03-19 12:14:04');
INSERT INTO `allotment` VALUES (1141, 25, 1, 56, '25', '0.260', '0.645', 'available', 0, NULL, 0, 0, '2019-03-19 12:14:42', '2019-03-19 12:14:45');
INSERT INTO `allotment` VALUES (1142, 26, 1, 56, '26', '0.256', '0.637', 'available', 0, NULL, 0, 0, '2019-03-19 12:15:22', '2019-03-19 12:15:24');
INSERT INTO `allotment` VALUES (1143, 1, 1, 57, '01', '0.243', '0.648', 'available', 0, NULL, 0, 0, '2019-03-19 12:17:19', '2019-03-19 12:17:23');
INSERT INTO `allotment` VALUES (1144, 2, 1, 57, '02', '0.247', '0.655', 'available', 0, NULL, 0, 0, '2019-03-19 12:18:17', '2019-03-19 12:18:20');
INSERT INTO `allotment` VALUES (1145, 3, 1, 57, '03', '0.250', '0.663', 'available', 0, NULL, 0, 0, '2019-03-19 12:18:52', '2019-03-19 12:18:55');
INSERT INTO `allotment` VALUES (1146, 4, 1, 57, '04', '0.253', '0.671', 'available', 0, NULL, 0, 0, '2019-03-19 12:19:29', '2019-03-19 12:19:32');
INSERT INTO `allotment` VALUES (1147, 5, 1, 57, '05', '0.257', '0.679', 'available', 0, NULL, 0, 0, '2019-03-19 12:20:06', '2019-03-19 12:20:09');
INSERT INTO `allotment` VALUES (1148, 6, 1, 57, '06', '0.261', '0.686', 'available', 0, NULL, 0, 0, '2019-03-19 12:20:44', '2019-03-19 12:20:47');
INSERT INTO `allotment` VALUES (1149, 7, 1, 57, '07', '0.264', '0.693', 'available', 0, NULL, 0, 0, '2019-03-19 12:21:29', '2019-03-19 12:21:32');
INSERT INTO `allotment` VALUES (1150, 8, 1, 57, '08', '0.267', '0.701', 'available', 0, NULL, 0, 0, '2019-03-19 12:22:12', '2019-03-19 12:22:15');
INSERT INTO `allotment` VALUES (1151, 9, 1, 57, '09', '0.271', '0.708', 'available', 0, NULL, 0, 0, '2019-03-19 12:22:53', '2019-03-19 12:22:57');
INSERT INTO `allotment` VALUES (1152, 10, 1, 57, '10', '0.274', '0.717', 'available', 0, NULL, 0, 0, '2019-03-19 12:25:00', '2019-03-19 12:25:02');
INSERT INTO `allotment` VALUES (1153, 11, 1, 57, '11', '0.277', '0.724', 'available', 0, NULL, 0, 0, '2019-03-19 12:26:43', '2019-03-19 12:26:46');
INSERT INTO `allotment` VALUES (1154, 12, 1, 57, '12', '0.280', '0.732', 'available', 0, NULL, 0, 0, '2019-03-19 12:27:20', '2019-03-19 12:27:22');
INSERT INTO `allotment` VALUES (1155, 13, 1, 57, '13', '0.283', '0.740', 'available', 0, NULL, 0, 0, '2019-03-19 12:27:58', '2019-03-19 12:28:01');
INSERT INTO `allotment` VALUES (1156, 14, 1, 57, '14', '0.277', '0.745', 'available', 0, NULL, 0, 0, '2019-03-19 12:28:40', '2019-03-19 12:28:44');
INSERT INTO `allotment` VALUES (1157, 15, 1, 57, '15', '0.273', '0.738', 'available', 0, NULL, 0, 0, '2019-03-19 12:29:27', '2019-03-19 12:29:31');
INSERT INTO `allotment` VALUES (1158, 16, 1, 57, '16', '0.270', '0.729', 'available', 0, NULL, 0, 0, '2019-03-19 12:30:04', '2019-03-19 12:30:06');
INSERT INTO `allotment` VALUES (1159, 17, 1, 57, '17', '0.267', '0.722', 'available', 0, NULL, 0, 0, '2019-03-19 12:30:41', '2019-03-19 12:30:45');
INSERT INTO `allotment` VALUES (1160, 18, 1, 57, '18', '0.263', '0.715', 'available', 0, NULL, 0, 0, '2019-03-19 12:31:22', '2019-03-19 12:31:25');
INSERT INTO `allotment` VALUES (1161, 19, 1, 57, '19', '0.260', '0.706', 'available', 0, NULL, 0, 0, '2019-03-19 12:32:02', '2019-03-19 12:32:06');
INSERT INTO `allotment` VALUES (1162, 20, 1, 57, '20', '0.257', '0.699', 'available', 0, NULL, 0, 0, '2019-03-19 12:32:40', '2019-03-19 12:32:43');
INSERT INTO `allotment` VALUES (1163, 21, 1, 57, '21', '0.253', '0.691', 'available', 0, NULL, 0, 0, '2019-03-19 12:33:19', '2019-03-19 12:33:22');
INSERT INTO `allotment` VALUES (1164, 22, 1, 57, '22', '0.250', '0.684', 'available', 0, NULL, 0, 0, '2019-03-19 12:34:02', '2019-03-19 12:34:05');
INSERT INTO `allotment` VALUES (1165, 23, 1, 57, '23', '0.246', '0.676', 'available', 0, NULL, 0, 0, '2019-03-19 12:34:37', '2019-03-19 12:34:40');
INSERT INTO `allotment` VALUES (1166, 24, 1, 57, '24', '0.243', '0.668', 'available', 0, NULL, 0, 0, '2019-03-19 12:35:10', '2019-03-19 12:35:13');
INSERT INTO `allotment` VALUES (1167, 25, 1, 57, '25', '0.240', '0.661', 'available', 0, NULL, 0, 0, '2019-03-19 12:35:55', '2019-03-19 12:35:58');
INSERT INTO `allotment` VALUES (1168, 26, 1, 57, '26', '0.236', '0.654', 'available', 0, NULL, 0, 0, '2019-03-19 12:36:38', '2019-03-19 12:36:41');
INSERT INTO `allotment` VALUES (1169, 1, 1, 58, '01', '0.223', '0.663', 'available', 0, NULL, 0, 0, '2019-03-19 12:41:33', '2019-03-19 12:41:36');
INSERT INTO `allotment` VALUES (1170, 2, 1, 58, '02', '0.227', '0.671', 'available', 0, NULL, 0, 0, '2019-03-19 12:42:08', '2019-03-19 12:42:12');
INSERT INTO `allotment` VALUES (1171, 3, 1, 58, '03', '0.230', '0.679', 'available', 0, NULL, 0, 0, '2019-03-19 12:43:41', '2019-03-19 12:43:44');
INSERT INTO `allotment` VALUES (1172, 4, 1, 58, '04', '0.234', '0.686', 'available', 0, NULL, 0, 0, '2019-03-19 12:44:14', '2019-03-19 12:44:17');
INSERT INTO `allotment` VALUES (1173, 5, 1, 58, '05', '0.237', '0.693', 'available', 0, NULL, 0, 0, '2019-03-19 12:44:47', '2019-03-19 12:44:50');
INSERT INTO `allotment` VALUES (1174, 6, 1, 58, '06', '0.240', '0.701', 'available', 0, NULL, 0, 0, '2019-03-19 12:45:29', '2019-03-19 12:45:32');
INSERT INTO `allotment` VALUES (1175, 7, 1, 58, '07', '0.243', '0.709', 'available', 0, NULL, 0, 0, '2019-03-19 12:46:09', '2019-03-19 12:46:12');
INSERT INTO `allotment` VALUES (1176, 8, 1, 58, '08', '0.247', '0.716', 'available', 0, NULL, 0, 0, '2019-03-19 12:46:46', '2019-03-19 12:46:49');
INSERT INTO `allotment` VALUES (1177, 9, 1, 58, '09', '0.250', '0.724', 'available', 0, NULL, 0, 0, '2019-03-19 12:47:22', '2019-03-19 12:47:24');
INSERT INTO `allotment` VALUES (1178, 10, 1, 58, '10', '0.253', '0.732', 'available', 0, NULL, 0, 0, '2019-03-19 12:47:57', '2019-03-19 12:48:00');
INSERT INTO `allotment` VALUES (1179, 11, 1, 58, '11', '0.257', '0.739', 'available', 0, NULL, 0, 0, '2019-03-19 12:48:29', '2019-03-19 12:48:32');
INSERT INTO `allotment` VALUES (1180, 12, 1, 58, '12', '0.260', '0.747', 'available', 0, NULL, 0, 0, '2019-03-19 12:49:03', '2019-03-19 12:49:06');
INSERT INTO `allotment` VALUES (1181, 13, 1, 58, '13', '0.264', '0.754', 'available', 0, NULL, 0, 0, '2019-03-19 12:49:39', '2019-03-19 12:49:41');
INSERT INTO `allotment` VALUES (1182, 14, 1, 58, '14', '0.256', '0.760', 'available', 0, NULL, 0, 0, '2019-03-19 12:58:05', '2019-03-19 12:58:08');
INSERT INTO `allotment` VALUES (1183, 15, 1, 58, '15', '0.253', '0.752', 'available', 0, NULL, 0, 0, '2019-03-19 12:59:34', '2019-03-19 12:59:38');
INSERT INTO `allotment` VALUES (1184, 16, 1, 58, '16', '0.250', '0.745', 'available', 0, NULL, 0, 0, '2019-03-19 13:01:29', '2019-03-19 13:01:32');
INSERT INTO `allotment` VALUES (1185, 17, 1, 58, '17', '0.246', '0.738', 'available', 0, NULL, 0, 0, '2019-03-19 13:02:30', '2019-03-19 13:02:33');
INSERT INTO `allotment` VALUES (1186, 18, 1, 58, '18', '0.243', '0.729', 'available', 0, NULL, 0, 0, '2019-03-19 13:04:39', '2019-03-19 13:04:42');
INSERT INTO `allotment` VALUES (1187, 19, 1, 58, '19', '0.240', '0.722', 'available', 0, NULL, 0, 0, '2019-03-19 13:06:21', '2019-03-19 13:06:24');
INSERT INTO `allotment` VALUES (1188, 20, 1, 58, '20', '0.236', '0.714', 'available', 0, NULL, 0, 0, '2019-03-19 13:07:32', '2019-03-19 13:07:34');
INSERT INTO `allotment` VALUES (1189, 21, 1, 58, '21', '0.233', '0.706', 'available', 0, NULL, 0, 0, '2019-03-19 13:08:34', '2019-03-19 13:08:37');
INSERT INTO `allotment` VALUES (1190, 22, 1, 58, '22', '0.229', '0.699', 'available', 0, NULL, 0, 0, '2019-03-19 13:09:38', '2019-03-19 13:09:41');
INSERT INTO `allotment` VALUES (1191, 23, 1, 58, '23', '0.226', '0.691', 'available', 0, NULL, 0, 0, '2019-03-19 13:10:40', '2019-03-19 13:10:43');
INSERT INTO `allotment` VALUES (1192, 24, 1, 58, '24', '0.223', '0.684', 'available', 0, NULL, 0, 0, '2019-03-19 13:11:31', '2019-03-19 13:11:34');
INSERT INTO `allotment` VALUES (1193, 25, 1, 58, '25', '0.219', '0.676', 'available', 0, NULL, 0, 0, '2019-03-19 13:12:19', '2019-03-19 13:12:22');
INSERT INTO `allotment` VALUES (1194, 26, 1, 58, '26', '0.216', '0.669', 'available', 0, NULL, 0, 0, '2019-03-19 13:13:03', '2019-03-19 13:13:06');
INSERT INTO `allotment` VALUES (1195, 1, 1, 59, '01', '0.203', '0.678', 'available', 0, NULL, 0, 0, '2019-03-19 13:27:35', '2019-03-19 13:27:38');
INSERT INTO `allotment` VALUES (1196, 2, 1, 59, '02', '0.207', '0.686', 'available', 0, NULL, 0, 0, '2019-03-19 13:28:51', '2019-03-19 13:29:05');
INSERT INTO `allotment` VALUES (1197, 3, 1, 59, '03', '0.210', '0.694', 'available', 0, NULL, 0, 0, '2019-03-19 13:33:01', '2019-03-19 13:33:04');
INSERT INTO `allotment` VALUES (1198, 4, 1, 59, '04', '0.213', '0.701', 'available', 0, NULL, 0, 0, '2019-03-19 13:35:36', '2019-03-19 13:35:39');
INSERT INTO `allotment` VALUES (1199, 5, 1, 59, '05', '0.217', '0.709', 'available', 0, NULL, 0, 0, '2019-03-19 13:36:22', '2019-03-19 13:36:25');
INSERT INTO `allotment` VALUES (1200, 6, 1, 59, '06', '0.220', '0.717', 'available', 0, NULL, 0, 0, '2019-03-19 13:37:04', '2019-03-19 13:37:06');
INSERT INTO `allotment` VALUES (1201, 7, 1, 59, '07', '0.223', '0.724', 'available', 0, NULL, 0, 0, '2019-03-19 13:37:54', '2019-03-19 13:37:57');
INSERT INTO `allotment` VALUES (1202, 8, 1, 59, '08', '0.227', '0.732', 'available', 0, NULL, 0, 0, '2019-03-19 13:38:31', '2019-03-19 13:38:34');
INSERT INTO `allotment` VALUES (1203, 9, 1, 59, '09', '0.230', '0.740', 'available', 0, NULL, 0, 0, '2019-03-19 13:39:33', '2019-03-19 13:39:35');
INSERT INTO `allotment` VALUES (1204, 10, 1, 59, '10', '0.233', '0.747', 'available', 0, NULL, 0, 0, '2019-03-19 13:40:51', '2019-03-19 13:40:54');
INSERT INTO `allotment` VALUES (1205, 11, 1, 59, '11', '0.237', '0.755', 'available', 0, NULL, 0, 0, '2019-03-19 13:41:31', '2019-03-19 13:41:33');
INSERT INTO `allotment` VALUES (1206, 12, 1, 59, '12', '0.240', '0.762', 'available', 0, NULL, 0, 0, '2019-03-19 13:42:04', '2019-03-19 13:42:06');
INSERT INTO `allotment` VALUES (1207, 13, 1, 59, '13', '0.243', '0.770', 'available', 0, NULL, 0, 0, '2019-03-19 13:43:02', '2019-03-19 13:43:05');
INSERT INTO `allotment` VALUES (1208, 14, 1, 59, '14', '0.237', '0.775', 'available', 0, NULL, 0, 0, '2019-03-19 13:43:40', '2019-03-19 13:43:43');
INSERT INTO `allotment` VALUES (1209, 15, 1, 59, '15', '0.233', '0.768', 'available', 0, NULL, 0, 0, '2019-03-19 13:44:13', '2019-03-19 13:44:16');
INSERT INTO `allotment` VALUES (1210, 16, 1, 59, '16', '0.230', '0.760', 'available', 0, NULL, 0, 0, '2019-03-19 13:44:49', '2019-03-19 13:44:51');
INSERT INTO `allotment` VALUES (1211, 17, 1, 59, '17', '0.227', '0.752', 'available', 0, NULL, 0, 0, '2019-03-19 13:45:28', '2019-03-19 13:45:31');
INSERT INTO `allotment` VALUES (1212, 18, 1, 59, '18', '0.223', '0.744', 'available', 0, NULL, 0, 0, '2019-03-19 13:46:05', '2019-03-19 13:46:07');
INSERT INTO `allotment` VALUES (1213, 19, 1, 59, '19', '0.220', '0.737', 'available', 0, NULL, 0, 0, '2019-03-19 13:46:49', '2019-03-19 13:46:52');
INSERT INTO `allotment` VALUES (1214, 20, 1, 59, '20', '0.216', '0.730', 'available', 0, NULL, 0, 0, '2019-03-19 13:47:39', '2019-03-19 13:47:42');
INSERT INTO `allotment` VALUES (1215, 21, 1, 59, '21', '0.213', '0.722', 'available', 0, NULL, 0, 0, '2019-03-19 13:48:15', '2019-03-19 13:48:18');
INSERT INTO `allotment` VALUES (1216, 22, 1, 59, '22', '0.210', '0.714', 'available', 0, NULL, 0, 0, '2019-03-19 13:48:47', '2019-03-19 13:48:50');
INSERT INTO `allotment` VALUES (1217, 23, 1, 59, '23', '0.207', '0.706', 'available', 0, NULL, 0, 0, '2019-03-19 13:50:00', '2019-03-19 13:50:03');
INSERT INTO `allotment` VALUES (1218, 24, 1, 59, '24', '0.203', '0.698', 'available', 0, NULL, 0, 0, '2019-03-19 13:50:35', '2019-03-19 13:50:39');
INSERT INTO `allotment` VALUES (1219, 25, 1, 59, '25', '0.200', '0.690', 'available', 0, NULL, 0, 0, '2019-03-19 13:51:18', '2019-03-19 13:51:22');
INSERT INTO `allotment` VALUES (1220, 26, 1, 59, '26', '0.196', '0.683', 'available', 0, NULL, 0, 0, '2019-03-19 13:51:54', '2019-03-19 13:51:57');
INSERT INTO `allotment` VALUES (1221, 1, 1, 60, '01', '0.183', '0.694', 'available', 0, NULL, 0, 0, '2019-03-19 13:58:44', '2019-03-19 13:58:47');
INSERT INTO `allotment` VALUES (1222, 2, 1, 60, '02', '0.187', '0.702', 'available', 0, NULL, 0, 0, '2019-03-19 13:59:19', '2019-03-19 13:59:21');
INSERT INTO `allotment` VALUES (1223, 3, 1, 60, '03', '0.190', '0.709', 'available', 0, NULL, 0, 0, '2019-03-19 13:59:53', '2019-03-19 13:59:56');
INSERT INTO `allotment` VALUES (1224, 4, 1, 60, '04', '0.193', '0.717', 'available', 0, NULL, 0, 0, '2019-03-19 14:00:33', '2019-03-19 14:00:36');
INSERT INTO `allotment` VALUES (1225, 5, 1, 60, '05', '0.197', '0.725', 'available', 0, NULL, 0, 0, '2019-03-19 14:01:13', '2019-03-19 14:01:15');
INSERT INTO `allotment` VALUES (1226, 6, 1, 60, '06', '0.200', '0.732', 'available', 0, NULL, 0, 0, '2019-03-19 14:01:57', '2019-03-19 14:02:00');
INSERT INTO `allotment` VALUES (1227, 7, 1, 60, '07', '0.203', '0.740', 'available', 0, NULL, 0, 0, '2019-03-19 14:02:35', '2019-03-19 14:02:37');
INSERT INTO `allotment` VALUES (1228, 8, 1, 60, '08', '0.207', '0.747', 'available', 0, NULL, 0, 0, '2019-03-19 14:03:08', '2019-03-19 14:03:11');
INSERT INTO `allotment` VALUES (1229, 9, 1, 60, '09', '0.210', '0.755', 'available', 0, NULL, 0, 0, '2019-03-19 14:04:11', '2019-03-19 14:04:15');
INSERT INTO `allotment` VALUES (1230, 10, 1, 60, '10', '0.213', '0.762', 'available', 0, NULL, 0, 0, '2019-03-19 14:04:48', '2019-03-19 14:04:51');
INSERT INTO `allotment` VALUES (1231, 11, 1, 60, '11', '0.216', '0.770', 'available', 0, NULL, 0, 0, '2019-03-19 14:05:20', '2019-03-19 14:05:23');
INSERT INTO `allotment` VALUES (1232, 12, 1, 60, '12', '0.220', '0.777', 'available', 0, NULL, 0, 0, '2019-03-19 14:06:00', '2019-03-19 14:06:04');
INSERT INTO `allotment` VALUES (1233, 13, 1, 60, '13', '0.223', '0.786', 'available', 0, NULL, 0, 0, '2019-03-19 14:06:48', '2019-03-19 14:06:50');
INSERT INTO `allotment` VALUES (1234, 14, 1, 60, '14', '0.217', '0.790', 'available', 0, NULL, 0, 0, '2019-03-19 14:07:24', '2019-03-19 14:07:28');
INSERT INTO `allotment` VALUES (1235, 15, 1, 60, '15', '0.213', '0.784', 'available', 0, NULL, 0, 0, '2019-03-19 14:08:05', '2019-03-19 14:08:08');
INSERT INTO `allotment` VALUES (1236, 16, 1, 60, '16', '0.210', '0.775', 'available', 0, NULL, 0, 0, '2019-03-19 14:08:40', '2019-03-19 14:08:43');
INSERT INTO `allotment` VALUES (1237, 17, 1, 60, '17', '0.206', '0.768', 'available', 0, NULL, 0, 0, '2019-03-19 14:09:17', '2019-03-19 14:09:21');
INSERT INTO `allotment` VALUES (1238, 18, 1, 60, '18', '0.203', '0.760', 'available', 0, NULL, 0, 0, '2019-03-19 14:09:58', '2019-03-19 14:10:01');
INSERT INTO `allotment` VALUES (1239, 19, 1, 60, '19', '0.200', '0.753', 'available', 0, NULL, 0, 0, '2019-03-19 14:10:57', '2019-03-19 14:11:01');
INSERT INTO `allotment` VALUES (1240, 20, 1, 60, '20', '0.196', '0.745', 'available', 0, NULL, 0, 0, '2019-03-19 14:11:43', '2019-03-19 14:11:46');
INSERT INTO `allotment` VALUES (1241, 21, 1, 60, '21', '0.193', '0.737', 'available', 0, NULL, 0, 0, '2019-03-19 14:12:25', '2019-03-19 14:12:30');
INSERT INTO `allotment` VALUES (1242, 22, 1, 60, '22', '0.190', '0.729', 'available', 0, NULL, 0, 0, '2019-03-19 14:13:00', '2019-03-19 14:13:03');
INSERT INTO `allotment` VALUES (1243, 23, 1, 60, '23', '0.186', '0.722', 'available', 0, NULL, 0, 0, '2019-03-19 14:13:31', '2019-03-19 14:13:34');
INSERT INTO `allotment` VALUES (1244, 24, 1, 60, '24', '0.183', '0.714', 'available', 0, NULL, 0, 0, '2019-03-19 14:14:27', '2019-03-19 14:14:30');
INSERT INTO `allotment` VALUES (1245, 25, 1, 60, '25', '0.179', '0.706', 'available', 0, NULL, 0, 0, '2019-03-19 14:15:15', '2019-03-19 14:15:18');
INSERT INTO `allotment` VALUES (1246, 26, 1, 60, '26', '0.176', '0.698', 'available', 0, NULL, 0, 0, '2019-03-19 14:15:55', '2019-03-19 14:15:59');
INSERT INTO `allotment` VALUES (1247, 1, 1, 61, '01', '0.164', '0.709', 'available', 0, NULL, 0, 0, '2019-03-20 10:56:00', '2019-03-20 10:56:03');
INSERT INTO `allotment` VALUES (1248, 2, 1, 61, '02', '0.167', '0.717', 'available', 0, NULL, 0, 0, '2019-03-20 10:56:37', '2019-03-20 10:56:41');
INSERT INTO `allotment` VALUES (1249, 3, 1, 61, '03', '0.170', '0.725', 'available', 0, NULL, 0, 0, '2019-03-20 10:57:17', '2019-03-20 10:57:19');
INSERT INTO `allotment` VALUES (1250, 4, 1, 61, '04', '0.173', '0.732', 'available', 0, NULL, 0, 0, '2019-03-20 10:59:31', '2019-03-20 10:59:36');
INSERT INTO `allotment` VALUES (1251, 5, 1, 61, '05', '0.176', '0.739', 'available', 0, NULL, 0, 0, '2019-03-20 11:01:00', '2019-03-20 11:01:03');
INSERT INTO `allotment` VALUES (1252, 6, 1, 61, '06', '0.180', '0.746', 'available', 0, NULL, 0, 0, '2019-03-20 11:01:41', '2019-03-20 11:01:44');
INSERT INTO `allotment` VALUES (1253, 7, 1, 61, '07', '0.183', '0.755', 'available', 0, NULL, 0, 0, '2019-03-20 11:02:18', '2019-03-20 11:02:21');
INSERT INTO `allotment` VALUES (1254, 8, 1, 61, '08', '0.187', '0.762', 'available', 0, NULL, 0, 0, '2019-03-20 11:02:52', '2019-03-20 11:02:55');
INSERT INTO `allotment` VALUES (1255, 9, 1, 61, '09', '0.190', '0.770', 'available', 0, NULL, 0, 0, '2019-03-20 11:03:29', '2019-03-20 11:03:32');
INSERT INTO `allotment` VALUES (1256, 10, 1, 61, '10', '0.193', '0.778', 'available', 0, NULL, 0, 0, '2019-03-20 11:04:09', '2019-03-20 11:04:12');
INSERT INTO `allotment` VALUES (1257, 11, 1, 61, '11', '0.196', '0.786', 'available', 0, NULL, 0, 0, '2019-03-20 11:04:44', '2019-03-20 11:04:48');
INSERT INTO `allotment` VALUES (1258, 12, 1, 61, '12', '0.200', '0.793', 'available', 0, NULL, 0, 0, '2019-03-20 11:05:27', '2019-03-20 11:05:30');
INSERT INTO `allotment` VALUES (1259, 13, 1, 61, '13', '0.203', '0.801', 'available', 0, NULL, 0, 0, '2019-03-20 11:06:10', '2019-03-20 11:06:13');
INSERT INTO `allotment` VALUES (1260, 14, 1, 61, '14', '0.203', '0.801', 'available', 0, NULL, 0, 0, '2019-03-20 11:06:39', '2019-03-20 11:06:42');
INSERT INTO `allotment` VALUES (1261, 15, 1, 61, '15', '0.193', '0.798', 'available', 0, NULL, 0, 0, '2019-03-20 11:07:20', '2019-03-20 11:07:23');
INSERT INTO `allotment` VALUES (1262, 16, 1, 61, '16', '0.190', '0.791', 'available', 0, NULL, 0, 0, '2019-03-20 11:07:58', '2019-03-20 11:08:04');
INSERT INTO `allotment` VALUES (1263, 17, 1, 61, '17', '0.186', '0.782', 'available', 0, NULL, 0, 0, '2019-03-20 11:10:28', '2019-03-20 11:10:31');
INSERT INTO `allotment` VALUES (1264, 18, 1, 61, '18', '0.183', '0.775', 'available', 0, NULL, 0, 0, '2019-03-20 11:11:10', '2019-03-20 11:11:12');
INSERT INTO `allotment` VALUES (1265, 19, 1, 61, '19', '0.180', '0.767', 'available', 0, NULL, 0, 0, '2019-03-20 11:11:43', '2019-03-20 11:11:46');
INSERT INTO `allotment` VALUES (1266, 20, 1, 61, '20', '0.177', '0.760', 'available', 0, NULL, 0, 0, '2019-03-20 11:12:30', '2019-03-20 11:12:33');
INSERT INTO `allotment` VALUES (1267, 21, 1, 61, '21', '0.173', '0.752', 'available', 0, NULL, 0, 0, '2019-03-20 11:13:09', '2019-03-20 11:13:12');
INSERT INTO `allotment` VALUES (1268, 22, 1, 61, '22', '0.169', '0.745', 'available', 0, NULL, 0, 0, '2019-03-20 11:13:52', '2019-03-20 11:13:56');
INSERT INTO `allotment` VALUES (1269, 23, 1, 61, '23', '0.166', '0.738', 'available', 0, NULL, 0, 0, '2019-03-20 11:14:43', '2019-03-20 11:14:47');
INSERT INTO `allotment` VALUES (1270, 24, 1, 61, '24', '0.163', '0.729', 'available', 0, NULL, 0, 0, '2019-03-20 11:15:21', '2019-03-20 11:15:24');
INSERT INTO `allotment` VALUES (1271, 25, 1, 61, '25', '0.159', '0.721', 'available', 0, NULL, 0, 0, '2019-03-20 11:16:05', '2019-03-20 11:16:08');
INSERT INTO `allotment` VALUES (1272, 26, 1, 61, '26', '0.156', '0.714', 'available', 0, NULL, 0, 0, '2019-03-20 11:16:41', '2019-03-20 11:16:45');
INSERT INTO `allotment` VALUES (1273, 1, 1, 62, '01', '0.153', '0.747', 'available', 0, NULL, 0, 0, '2019-03-20 11:17:52', '2019-03-20 11:17:55');
INSERT INTO `allotment` VALUES (1274, 2, 1, 62, '02', '0.156', '0.755', 'available', 0, NULL, 0, 0, '2019-03-20 11:18:28', '2019-03-20 11:18:31');
INSERT INTO `allotment` VALUES (1275, 3, 1, 62, '03', '0.160', '0.763', 'available', 0, NULL, 0, 0, '2019-03-20 11:19:05', '2019-03-20 11:19:08');
INSERT INTO `allotment` VALUES (1276, 4, 1, 62, '04', '0.163', '0.770', 'available', 0, NULL, 0, 0, '2019-03-20 11:19:41', '2019-03-20 11:19:44');
INSERT INTO `allotment` VALUES (1277, 5, 1, 62, '05', '0.166', '0.778', 'available', 0, NULL, 0, 0, '2019-03-20 11:20:32', '2019-03-20 11:20:34');
INSERT INTO `allotment` VALUES (1278, 6, 1, 62, '06', '0.170', '0.786', 'available', 0, NULL, 0, 0, '2019-03-20 11:22:10', '2019-03-20 11:22:13');
INSERT INTO `allotment` VALUES (1279, 7, 1, 62, '07', '0.173', '0.793', 'available', 0, NULL, 0, 0, '2019-03-20 11:22:50', '2019-03-20 11:22:53');
INSERT INTO `allotment` VALUES (1280, 8, 1, 62, '08', '0.177', '0.802', 'available', 0, NULL, 0, 0, '2019-03-20 11:23:34', '2019-03-20 11:23:37');
INSERT INTO `allotment` VALUES (1281, 9, 1, 62, '09', '0.180', '0.809', 'available', 0, NULL, 0, 0, '2019-03-20 11:24:12', '2019-03-20 11:24:16');
INSERT INTO `allotment` VALUES (1282, 10, 1, 62, '10', '0.183', '0.816', 'available', 0, NULL, 0, 0, '2019-03-20 11:24:59', '2019-03-20 11:25:04');
INSERT INTO `allotment` VALUES (1283, 11, 1, 62, '11', '0.176', '0.821', 'available', 0, NULL, 0, 0, '2019-03-20 11:27:26', '2019-03-20 11:27:29');
INSERT INTO `allotment` VALUES (1284, 12, 1, 62, '12', '0.173', '0.814', 'available', 0, NULL, 0, 0, '2019-03-20 11:29:53', '2019-03-20 11:29:57');
INSERT INTO `allotment` VALUES (1285, 13, 1, 62, '13', '0.169', '0.806', 'available', 0, NULL, 0, 0, '2019-03-20 11:30:33', '2019-03-20 11:30:36');
INSERT INTO `allotment` VALUES (1286, 14, 1, 62, '14', '0.166', '0.798', 'available', 0, NULL, 0, 0, '2019-03-20 11:31:07', '2019-03-20 11:31:09');
INSERT INTO `allotment` VALUES (1287, 15, 1, 62, '15', '0.163', '0.791', 'available', 0, NULL, 0, 0, '2019-03-20 11:31:43', '2019-03-20 11:31:46');
INSERT INTO `allotment` VALUES (1288, 16, 1, 62, '16', '0.159', '0.783', 'available', 0, NULL, 0, 0, '2019-03-20 11:32:25', '2019-03-20 11:32:29');
INSERT INTO `allotment` VALUES (1289, 17, 1, 62, '17', '0.156', '0.776', 'available', 0, NULL, 0, 0, '2019-03-20 11:33:03', '2019-03-20 11:33:06');
INSERT INTO `allotment` VALUES (1290, 18, 1, 62, '18', '0.152', '0.768', 'available', 0, NULL, 0, 0, '2019-03-20 11:33:39', '2019-03-20 11:33:41');
INSERT INTO `allotment` VALUES (1291, 19, 1, 62, '19', '0.149', '0.760', 'available', 0, NULL, 0, 0, '2019-03-20 11:34:11', '2019-03-20 11:34:18');
INSERT INTO `allotment` VALUES (1292, 20, 1, 62, '20', '0.146', '0.752', 'available', 0, NULL, 0, 0, '2019-03-20 11:34:55', '2019-03-20 11:34:58');
INSERT INTO `allotment` VALUES (1293, 1, 1, 63, '01', '0.133', '0.763', 'available', 0, NULL, 0, 0, '2019-03-20 11:42:40', '2019-03-20 11:42:43');
INSERT INTO `allotment` VALUES (1294, 2, 1, 63, '02', '0.136', '0.770', 'available', 0, NULL, 0, 0, '2019-03-20 11:43:20', '2019-03-20 11:43:23');
INSERT INTO `allotment` VALUES (1295, 3, 1, 63, '03', '0.139', '0.778', 'available', 0, NULL, 0, 0, '2019-03-20 11:44:07', '2019-03-20 11:44:10');
INSERT INTO `allotment` VALUES (1296, 4, 1, 63, '04', '0.143', '0.786', 'available', 0, NULL, 0, 0, '2019-03-20 11:44:56', '2019-03-20 11:44:59');
INSERT INTO `allotment` VALUES (1297, 5, 1, 63, '05', '0.147', '0.793', 'available', 0, NULL, 0, 0, '2019-03-20 11:45:35', '2019-03-20 11:45:38');
INSERT INTO `allotment` VALUES (1298, 6, 1, 63, '06', '0.150', '0.801', 'available', 0, NULL, 0, 0, '2019-03-20 11:46:06', '2019-03-20 11:46:09');
INSERT INTO `allotment` VALUES (1299, 7, 1, 63, '07', '0.153', '0.808', 'available', 0, NULL, 0, 0, '2019-03-20 11:46:45', '2019-03-20 11:46:49');
INSERT INTO `allotment` VALUES (1300, 8, 1, 63, '08', '0.157', '0.816', 'available', 0, NULL, 0, 0, '2019-03-20 11:47:24', '2019-03-20 11:47:28');
INSERT INTO `allotment` VALUES (1301, 9, 1, 63, '09', '0.160', '0.824', 'available', 0, NULL, 0, 0, '2019-03-20 11:48:04', '2019-03-20 11:48:07');
INSERT INTO `allotment` VALUES (1302, 10, 1, 63, '10', '0.153', '0.829', 'available', 0, NULL, 0, 0, '2019-03-20 11:48:53', '2019-03-20 11:48:56');
INSERT INTO `allotment` VALUES (1303, 11, 1, 63, '11', '0.149', '0.821', 'available', 0, NULL, 0, 0, '2019-03-20 11:49:28', '2019-03-20 11:49:31');
INSERT INTO `allotment` VALUES (1304, 12, 1, 63, '12', '0.146', '0.814', 'available', 0, NULL, 0, 0, '2019-03-20 11:50:56', '2019-03-20 11:50:59');
INSERT INTO `allotment` VALUES (1305, 13, 1, 63, '13', '0.142', '0.806', 'available', 0, NULL, 0, 0, '2019-03-20 11:51:35', '2019-03-20 11:51:38');
INSERT INTO `allotment` VALUES (1306, 14, 1, 63, '14', '0.140', '0.798', 'available', 0, NULL, 0, 0, '2019-03-20 11:52:08', '2019-03-20 11:52:11');
INSERT INTO `allotment` VALUES (1307, 15, 1, 63, '15', '0.136', '0.791', 'available', 0, NULL, 0, 0, '2019-03-20 11:52:50', '2019-03-20 11:52:53');
INSERT INTO `allotment` VALUES (1308, 16, 1, 63, '16', '0.132', '0.783', 'available', 0, NULL, 0, 0, '2019-03-20 11:53:25', '2019-03-20 11:53:28');
INSERT INTO `allotment` VALUES (1309, 17, 1, 63, '17', '0.129', '0.775', 'available', 0, NULL, 0, 0, '2019-03-20 11:54:15', '2019-03-20 11:54:18');
INSERT INTO `allotment` VALUES (1310, 18, 1, 63, '18', '0.126', '0.768', 'available', 0, NULL, 0, 0, '2019-03-20 11:55:12', '2019-03-20 11:55:15');
INSERT INTO `allotment` VALUES (1311, 1, 1, 64, '01', '0.113', '0.778', 'available', 0, NULL, 0, 0, '2019-03-20 12:00:42', '2019-03-20 12:00:45');
INSERT INTO `allotment` VALUES (1312, 2, 1, 64, '02', '0.116', '0.786', 'available', 0, NULL, 0, 0, '2019-03-20 12:03:05', '2019-03-20 12:03:08');
INSERT INTO `allotment` VALUES (1313, 3, 1, 64, '03', '0.120', '0.794', 'available', 0, NULL, 0, 0, '2019-03-20 12:03:49', '2019-03-20 12:03:52');
INSERT INTO `allotment` VALUES (1314, 4, 1, 64, '04', '0.123', '0.801', 'available', 0, NULL, 0, 0, '2019-03-20 12:04:41', '2019-03-20 12:04:44');
INSERT INTO `allotment` VALUES (1315, 5, 1, 64, '05', '0.126', '0.809', 'available', 0, NULL, 0, 0, '2019-03-20 12:05:29', '2019-03-20 12:05:32');
INSERT INTO `allotment` VALUES (1316, 6, 1, 64, '06', '0.130', '0.817', 'available', 0, NULL, 0, 0, '2019-03-20 12:06:01', '2019-03-20 12:06:05');
INSERT INTO `allotment` VALUES (1317, 7, 1, 64, '07', '0.133', '0.824', 'available', 0, NULL, 0, 0, '2019-03-20 12:06:41', '2019-03-20 12:06:44');
INSERT INTO `allotment` VALUES (1318, 8, 1, 64, '08', '0.137', '0.832', 'available', 0, NULL, 0, 0, '2019-03-20 12:07:28', '2019-03-20 12:07:31');
INSERT INTO `allotment` VALUES (1319, 9, 1, 64, '09', '0.140', '0.840', 'available', 0, NULL, 0, 0, '2019-03-20 12:07:59', '2019-03-20 12:08:01');
INSERT INTO `allotment` VALUES (1320, 10, 1, 64, '10', '0.133', '0.844', 'available', 0, NULL, 0, 0, '2019-03-20 12:08:45', '2019-03-20 12:08:48');
INSERT INTO `allotment` VALUES (1321, 11, 1, 64, '11', '0.129', '0.837', 'available', 0, NULL, 0, 0, '2019-03-20 12:09:28', '2019-03-20 12:09:30');
INSERT INTO `allotment` VALUES (1322, 12, 1, 64, '12', '0.126', '0.830', 'available', 0, NULL, 0, 0, '2019-03-20 12:10:03', '2019-03-20 12:10:06');
INSERT INTO `allotment` VALUES (1323, 13, 1, 64, '13', '0.123', '0.822', 'available', 0, NULL, 0, 0, '2019-03-20 12:10:47', '2019-03-20 12:10:50');
INSERT INTO `allotment` VALUES (1324, 14, 1, 64, '14', '0.120', '0.814', 'available', 0, NULL, 0, 0, '2019-03-20 12:11:19', '2019-03-20 12:11:22');
INSERT INTO `allotment` VALUES (1325, 15, 1, 64, '15', '0.116', '0.806', 'available', 0, NULL, 0, 0, '2019-03-20 12:12:06', '2019-03-20 12:12:09');
INSERT INTO `allotment` VALUES (1326, 16, 1, 64, '16', '0.112', '0.799', 'available', 0, NULL, 0, 0, '2019-03-20 12:12:40', '2019-03-20 12:12:42');
INSERT INTO `allotment` VALUES (1327, 17, 1, 64, '17', '0.109', '0.792', 'available', 0, NULL, 0, 0, '2019-03-20 12:13:15', '2019-03-20 12:13:18');
INSERT INTO `allotment` VALUES (1328, 18, 1, 64, '18', '0.106', '0.783', 'available', 0, NULL, 0, 0, '2019-03-20 12:13:46', '2019-03-20 12:13:50');
INSERT INTO `allotment` VALUES (1329, 1, 1, 65, '01', '0.093', '0.793', 'available', 0, NULL, 0, 0, '2019-03-20 12:16:50', '2019-03-20 12:16:53');
INSERT INTO `allotment` VALUES (1330, 2, 1, 65, '02', '0.097', '0.801', 'available', 0, NULL, 0, 0, '2019-03-20 12:17:25', '2019-03-20 12:17:28');
INSERT INTO `allotment` VALUES (1331, 3, 1, 65, '03', '0.099', '0.808', 'available', 0, NULL, 0, 0, '2019-03-20 12:18:00', '2019-03-20 12:18:04');
INSERT INTO `allotment` VALUES (1332, 4, 1, 65, '04', '0.103', '0.816', 'available', 0, NULL, 0, 0, '2019-03-20 12:18:34', '2019-03-20 12:18:37');
INSERT INTO `allotment` VALUES (1333, 5, 1, 65, '05', '0.106', '0.824', 'available', 0, NULL, 0, 0, '2019-03-20 12:19:14', '2019-03-20 12:19:18');
INSERT INTO `allotment` VALUES (1334, 6, 1, 65, '06', '0.109', '0.831', 'available', 0, NULL, 0, 0, '2019-03-20 12:19:45', '2019-03-20 12:19:48');
INSERT INTO `allotment` VALUES (1335, 7, 1, 65, '07', '0.102', '0.837', 'available', 0, NULL, 0, 0, '2019-03-20 12:20:23', '2019-03-20 12:20:26');
INSERT INTO `allotment` VALUES (1336, 8, 1, 65, '08', '0.099', '0.829', 'available', 0, NULL, 0, 0, '2019-03-20 12:20:53', '2019-03-20 12:20:56');
INSERT INTO `allotment` VALUES (1337, 9, 1, 65, '09', '0.096', '0.821', 'available', 0, NULL, 0, 0, '2019-03-20 12:21:33', '2019-03-20 12:21:36');
INSERT INTO `allotment` VALUES (1338, 10, 1, 65, '10', '0.092', '0.814', 'available', 0, NULL, 0, 0, '2019-03-20 12:22:06', '2019-03-20 12:22:09');
INSERT INTO `allotment` VALUES (1339, 11, 1, 65, '11', '0.089', '0.806', 'available', 0, NULL, 0, 0, '2019-03-20 12:22:43', '2019-03-20 12:22:46');
INSERT INTO `allotment` VALUES (1340, 12, 1, 65, '12', '0.085', '0.799', 'available', 0, NULL, 0, 0, '2019-03-20 12:23:37', '2019-03-20 12:23:42');
INSERT INTO `allotment` VALUES (1341, 1, 1, 66, '01', '0.072', '0.806', 'available', 0, NULL, 0, 0, '2019-03-20 12:24:29', '2019-03-20 12:24:31');
INSERT INTO `allotment` VALUES (1342, 2, 1, 66, '02', '0.075', '0.813', 'available', 0, NULL, 0, 0, '2019-03-20 12:25:11', '2019-03-20 12:25:13');
INSERT INTO `allotment` VALUES (1344, 3, 1, 66, '03', '0.078', '0.821', 'available', 0, NULL, 0, 0, '2019-03-20 12:25:51', '2019-03-20 12:25:54');
INSERT INTO `allotment` VALUES (1345, 4, 1, 66, '04', '0.082', '0.829', 'available', 0, NULL, 0, 0, '2019-03-20 12:26:39', '2019-03-20 12:26:41');
INSERT INTO `allotment` VALUES (1346, 5, 1, 66, '05', '0.085', '0.836', 'available', 0, NULL, 0, 0, '2019-03-20 12:27:17', '2019-03-20 12:27:20');
INSERT INTO `allotment` VALUES (1347, 1, 1, 67, '01', '0.165', '0.653', 'available', 0, NULL, 0, 0, '2019-03-20 13:55:41', '2019-03-20 13:55:44');
INSERT INTO `allotment` VALUES (1348, 2, 1, 67, '02', '0.168', '0.661', 'available', 0, NULL, 0, 0, '2019-03-20 13:56:27', '2019-03-20 13:56:31');
INSERT INTO `allotment` VALUES (1349, 3, 1, 67, '03', '0.171', '0.667', 'available', 0, NULL, 0, 0, '2019-03-20 13:57:06', '2019-03-20 13:57:09');
INSERT INTO `allotment` VALUES (1350, 4, 1, 67, '04', '0.175', '0.676', 'available', 0, NULL, 0, 0, '2019-03-20 13:57:44', '2019-03-20 13:57:47');
INSERT INTO `allotment` VALUES (1351, 5, 1, 67, '05', '0.168', '0.681', 'available', 0, NULL, 0, 0, '2019-03-20 13:58:16', '2019-03-20 13:58:19');
INSERT INTO `allotment` VALUES (1352, 6, 1, 67, '06', '0.165', '0.673', 'available', 0, NULL, 0, 0, '2019-03-20 13:58:50', '2019-03-20 13:58:53');
INSERT INTO `allotment` VALUES (1353, 7, 1, 67, '07', '0.162', '0.665', 'available', 0, NULL, 0, 0, '2019-03-20 13:59:24', '2019-03-20 13:59:28');
INSERT INTO `allotment` VALUES (1354, 8, 1, 67, '08', '0.158', '0.658', 'available', 0, NULL, 0, 0, '2019-03-20 14:00:10', '2019-03-20 14:00:13');
INSERT INTO `allotment` VALUES (1355, 1, 1, 68, '01', '0.176', '0.615', 'available', 0, NULL, 0, 0, '2019-03-20 14:00:52', '2019-03-20 14:00:56');
INSERT INTO `allotment` VALUES (1356, 2, 1, 68, '02', '0.178', '0.622', 'available', 0, NULL, 0, 0, '2019-03-20 14:01:41', '2019-03-20 14:01:45');
INSERT INTO `allotment` VALUES (1357, 3, 1, 68, '03', '0.182', '0.630', 'available', 0, NULL, 0, 0, '2019-03-20 14:02:21', '2019-03-20 14:02:24');
INSERT INTO `allotment` VALUES (1358, 4, 1, 68, '04', '0.185', '0.638', 'available', 0, NULL, 0, 0, '2019-03-20 14:03:05', '2019-03-20 14:03:08');
INSERT INTO `allotment` VALUES (1359, 5, 1, 68, '05', '0.188', '0.645', 'available', 0, NULL, 0, 0, '2019-03-20 14:03:44', '2019-03-20 14:03:47');
INSERT INTO `allotment` VALUES (1360, 6, 1, 68, '06', '0.192', '0.652', 'available', 0, NULL, 0, 0, '2019-03-20 14:08:41', '2019-03-20 14:08:44');
INSERT INTO `allotment` VALUES (1361, 7, 1, 68, '07', '0.195', '0.660', 'available', 0, NULL, 0, 0, '2019-03-20 14:09:22', '2019-03-20 14:09:25');
INSERT INTO `allotment` VALUES (1362, 8, 1, 68, '08', '0.188', '0.665', 'available', 0, NULL, 0, 0, '2019-03-20 14:10:21', '2019-03-20 14:10:24');
INSERT INTO `allotment` VALUES (1363, 9, 1, 68, '09', '0.185', '0.658', 'available', 0, NULL, 0, 0, '2019-03-20 14:10:57', '2019-03-20 14:11:00');
INSERT INTO `allotment` VALUES (1364, 10, 1, 68, '10', '0.182', '0.651', 'available', 0, NULL, 0, 0, '2019-03-20 14:11:36', '2019-03-20 14:11:39');
INSERT INTO `allotment` VALUES (1365, 11, 1, 68, '11', '0.178', '0.642', 'available', 0, NULL, 0, 0, '2019-03-20 14:12:09', '2019-03-20 14:12:11');
INSERT INTO `allotment` VALUES (1366, 12, 1, 68, '12', '0.175', '0.634', 'available', 0, NULL, 0, 0, '2019-03-20 14:12:42', '2019-03-20 14:12:45');
INSERT INTO `allotment` VALUES (1367, 13, 1, 68, '13', '0.172', '0.627', 'available', 0, NULL, 0, 0, '2019-03-20 14:14:56', '2019-03-20 14:14:59');
INSERT INTO `allotment` VALUES (1368, 14, 1, 68, '14', '0.168', '0.620', 'available', 0, NULL, 0, 0, '2019-03-20 14:17:36', '2019-03-20 14:17:39');
INSERT INTO `allotment` VALUES (1369, 1, 1, 69, '01', '0.192', '0.591', 'available', 0, NULL, 0, 0, '2019-03-20 14:48:39', '2019-03-20 14:48:42');
INSERT INTO `allotment` VALUES (1370, 2, 1, 69, '02', '0.195', '0.599', 'available', 0, NULL, 0, 0, '2019-03-20 14:49:42', '2019-03-20 14:49:46');
INSERT INTO `allotment` VALUES (1371, 3, 1, 69, '03', '0.198', '0.606', 'available', 0, NULL, 0, 0, '2019-03-20 14:50:20', '2019-03-20 14:50:23');
INSERT INTO `allotment` VALUES (1372, 4, 1, 69, '04', '0.202', '0.614', 'available', 0, NULL, 0, 0, '2019-03-20 14:51:05', '2019-03-20 14:51:08');
INSERT INTO `allotment` VALUES (1373, 5, 1, 69, '05', '0.206', '0.621', 'available', 0, NULL, 0, 0, '2019-03-20 14:51:58', '2019-03-20 14:52:00');
INSERT INTO `allotment` VALUES (1374, 6, 1, 69, '06', '0.208', '0.629', 'available', 0, NULL, 0, 0, '2019-03-20 14:52:31', '2019-03-20 14:52:34');
INSERT INTO `allotment` VALUES (1375, 7, 1, 69, '07', '0.212', '0.637', 'available', 0, NULL, 0, 0, '2019-03-20 14:53:12', '2019-03-20 14:53:14');
INSERT INTO `allotment` VALUES (1376, 8, 1, 69, '08', '0.215', '0.644', 'available', 0, NULL, 0, 0, '2019-03-20 14:53:47', '2019-03-20 14:53:50');
INSERT INTO `allotment` VALUES (1377, 9, 1, 69, '09', '0.208', '0.650', 'available', 0, NULL, 0, 0, '2019-03-20 14:54:20', '2019-03-20 14:54:25');
INSERT INTO `allotment` VALUES (1378, 10, 1, 69, '10', '0.205', '0.643', 'available', 0, NULL, 0, 0, '2019-03-20 14:55:08', '2019-03-20 14:55:13');
INSERT INTO `allotment` VALUES (1379, 11, 1, 69, '11', '0.202', '0.635', 'available', 0, NULL, 0, 0, '2019-03-20 14:57:12', '2019-03-20 14:57:16');
INSERT INTO `allotment` VALUES (1380, 12, 1, 69, '12', '0.198', '0.627', 'available', 0, NULL, 0, 0, '2019-03-20 14:57:45', '2019-03-20 14:57:50');
INSERT INTO `allotment` VALUES (1381, 13, 1, 69, '13', '0.195', '0.620', 'available', 0, NULL, 0, 0, '2019-03-20 14:58:32', '2019-03-20 14:58:35');
INSERT INTO `allotment` VALUES (1382, 14, 1, 69, '14', '0.191', '0.611', 'available', 0, NULL, 0, 0, '2019-03-20 14:59:17', '2019-03-20 14:59:20');
INSERT INTO `allotment` VALUES (1383, 15, 1, 69, '15', '0.188', '0.604', 'available', 0, NULL, 0, 0, '2019-03-20 14:59:50', '2019-03-20 14:59:52');
INSERT INTO `allotment` VALUES (1384, 16, 1, 69, '16', '0.185', '0.597', 'available', 0, NULL, 0, 0, '2019-03-20 15:00:46', '2019-03-20 15:00:49');
INSERT INTO `allotment` VALUES (1385, 1, 1, 70, '01', '0.208', '0.568', 'available', 0, NULL, 0, 0, '2019-03-20 15:03:59', '2019-03-20 15:04:01');
INSERT INTO `allotment` VALUES (1386, 2, 1, 70, '02', '0.212', '0.575', 'available', 0, NULL, 0, 0, '2019-03-20 15:04:37', '2019-03-20 15:04:40');
INSERT INTO `allotment` VALUES (1387, 3, 1, 70, '03', '0.215', '0.584', 'available', 0, NULL, 0, 0, '2019-03-20 15:05:28', '2019-03-20 15:05:31');
INSERT INTO `allotment` VALUES (1388, 4, 1, 70, '04', '0.218', '0.590', 'available', 0, NULL, 0, 0, '2019-03-20 15:06:28', '2019-03-20 15:06:31');
INSERT INTO `allotment` VALUES (1389, 5, 1, 70, '05', '0.222', '0.598', 'available', 0, NULL, 0, 0, '2019-03-20 15:07:08', '2019-03-20 15:07:10');
INSERT INTO `allotment` VALUES (1390, 6, 1, 70, '06', '0.226', '0.606', 'available', 0, NULL, 0, 0, '2019-03-20 15:07:47', '2019-03-20 15:07:50');
INSERT INTO `allotment` VALUES (1391, 7, 1, 70, '07', '0.229', '0.614', 'available', 0, NULL, 0, 0, '2019-03-20 15:08:21', '2019-03-20 15:08:24');
INSERT INTO `allotment` VALUES (1392, 8, 1, 70, '08', '0.232', '0.622', 'available', 0, NULL, 0, 0, '2019-03-20 15:09:08', '2019-03-20 15:09:11');
INSERT INTO `allotment` VALUES (1393, 9, 1, 70, '09', '0.235', '0.629', 'available', 0, NULL, 0, 0, '2019-03-20 15:09:47', '2019-03-20 15:09:50');
INSERT INTO `allotment` VALUES (1394, 10, 1, 70, '10', '0.228', '0.634', 'available', 0, NULL, 0, 0, '2019-03-20 15:10:38', '2019-03-20 15:10:41');
INSERT INTO `allotment` VALUES (1395, 11, 1, 70, '11', '0.225', '0.626', 'available', 0, NULL, 0, 0, '2019-03-20 15:11:17', '2019-03-20 15:11:20');
INSERT INTO `allotment` VALUES (1396, 12, 1, 70, '12', '0.222', '0.619', 'available', 0, NULL, 0, 0, '2019-03-20 15:11:53', '2019-03-20 15:11:56');
INSERT INTO `allotment` VALUES (1397, 13, 1, 70, '13', '0.218', '0.612', 'available', 0, NULL, 0, 0, '2019-03-20 15:12:28', '2019-03-20 15:12:31');
INSERT INTO `allotment` VALUES (1398, 14, 1, 70, '14', '0.215', '0.604', 'available', 0, NULL, 0, 0, '2019-03-20 15:13:03', '2019-03-20 15:13:06');
INSERT INTO `allotment` VALUES (1399, 15, 1, 70, '15', '0.212', '0.596', 'available', 0, NULL, 0, 0, '2019-03-20 15:13:54', '2019-03-20 15:13:56');
INSERT INTO `allotment` VALUES (1400, 16, 1, 70, '16', '0.208', '0.588', 'available', 0, NULL, 0, 0, '2019-03-20 15:14:47', '2019-03-20 15:14:50');
INSERT INTO `allotment` VALUES (1401, 17, 1, 70, '17', '0.205', '0.581', 'available', 0, NULL, 0, 0, '2019-03-20 15:15:24', '2019-03-20 15:15:27');
INSERT INTO `allotment` VALUES (1402, 18, 1, 70, '18', '0.202', '0.572', 'available', 0, NULL, 0, 0, '2019-03-20 15:16:05', '2019-03-20 15:16:08');
INSERT INTO `allotment` VALUES (1403, 1, 1, 71, '01', '0.229', '0.553', 'available', 0, NULL, 0, 0, '2019-03-20 16:06:28', '2019-03-20 16:06:31');
INSERT INTO `allotment` VALUES (1404, 2, 1, 71, '02', '0.232', '0.561', 'available', 0, NULL, 0, 0, '2019-03-20 16:07:09', '2019-03-20 16:07:12');
INSERT INTO `allotment` VALUES (1405, 3, 1, 71, '03', '0.235', '0.568', 'available', 0, NULL, 0, 0, '2019-03-20 16:07:45', '2019-03-20 16:07:48');
INSERT INTO `allotment` VALUES (1406, 4, 1, 71, '04', '0.238', '0.576', 'available', 0, NULL, 0, 0, '2019-03-20 16:08:19', '2019-03-20 16:08:21');
INSERT INTO `allotment` VALUES (1407, 5, 1, 71, '05', '0.242', '0.584', 'available', 0, NULL, 0, 0, '2019-03-20 16:09:09', '2019-03-20 16:09:13');
INSERT INTO `allotment` VALUES (1408, 6, 1, 71, '06', '0.245', '0.591', 'available', 0, NULL, 0, 0, '2019-03-20 16:10:09', '2019-03-20 16:10:12');
INSERT INTO `allotment` VALUES (1409, 7, 1, 71, '07', '0.248', '0.599', 'available', 0, NULL, 0, 0, '2019-03-20 16:10:42', '2019-03-20 16:10:45');
INSERT INTO `allotment` VALUES (1410, 8, 1, 71, '07', '0.252', '0.606', 'available', 0, NULL, 0, 0, '2019-03-20 16:11:17', '2019-03-20 16:11:20');
INSERT INTO `allotment` VALUES (1411, 9, 1, 71, '09', '0.255', '0.614', 'available', 0, NULL, 0, 0, '2019-03-20 16:11:48', '2019-03-20 16:11:51');
INSERT INTO `allotment` VALUES (1412, 10, 1, 71, '10', '0.249', '0.619', 'available', 0, NULL, 0, 0, '2019-03-20 16:12:36', '2019-03-20 16:12:38');
INSERT INTO `allotment` VALUES (1413, 11, 1, 71, '10', '0.245', '0.611', 'available', 0, NULL, 0, 0, '2019-03-20 16:13:21', '2019-03-20 16:13:24');
INSERT INTO `allotment` VALUES (1414, 12, 1, 71, '11', '0.242', '0.604', 'available', 0, NULL, 0, 0, '2019-03-20 16:13:53', '2019-03-20 16:13:55');
INSERT INTO `allotment` VALUES (1415, 13, 1, 71, '12', '0.239', '0.596', 'available', 0, NULL, 0, 0, '2019-03-20 16:14:39', '2019-03-20 16:14:42');
INSERT INTO `allotment` VALUES (1416, 14, 1, 71, '14', '0.235', '0.589', 'available', 0, NULL, 0, 0, '2019-03-20 16:15:27', '2019-03-20 16:15:29');
INSERT INTO `allotment` VALUES (1417, 15, 1, 71, '15', '0.232', '0.581', 'available', 0, NULL, 0, 0, '2019-03-20 16:16:09', '2019-03-20 16:16:12');
INSERT INTO `allotment` VALUES (1418, 16, 1, 71, '16', '0.228', '0.574', 'available', 0, NULL, 0, 0, '2019-03-20 16:16:48', '2019-03-20 16:16:53');
INSERT INTO `allotment` VALUES (1419, 17, 1, 71, '17', '0.225', '0.566', 'available', 0, NULL, 0, 0, '2019-03-20 16:17:31', '2019-03-20 16:17:34');
INSERT INTO `allotment` VALUES (1420, 18, 1, 71, '18', '0.222', '0.558', 'available', 0, NULL, 0, 0, '2019-03-20 16:18:06', '2019-03-20 16:18:08');
INSERT INTO `allotment` VALUES (1421, 1, 1, 72, '01', '0.249', '0.537', 'available', 0, NULL, 0, 0, '2019-03-20 16:18:48', '2019-03-20 16:18:50');
INSERT INTO `allotment` VALUES (1422, 2, 1, 72, '02', '0.252', '0.545', 'available', 0, NULL, 0, 0, '2019-03-20 16:19:46', '2019-03-20 16:19:49');
INSERT INTO `allotment` VALUES (1423, 3, 1, 72, '03', '0.255', '0.553', 'available', 0, NULL, 0, 0, '2019-03-20 16:20:18', '2019-03-20 16:20:21');
INSERT INTO `allotment` VALUES (1424, 4, 1, 72, '04', '0.259', '0.560', 'available', 0, NULL, 0, 0, '2019-03-20 16:21:10', '2019-03-20 16:21:12');
INSERT INTO `allotment` VALUES (1425, 5, 1, 72, '05', '0.262', '0.568', 'available', 0, NULL, 0, 0, '2019-03-20 16:22:12', '2019-03-20 16:22:14');
INSERT INTO `allotment` VALUES (1426, 6, 1, 72, '06', '0.266', '0.575', 'available', 0, NULL, 0, 0, '2019-03-20 16:23:09', '2019-03-20 16:23:12');
INSERT INTO `allotment` VALUES (1427, 7, 1, 72, '07', '0.269', '0.584', 'available', 0, NULL, 0, 0, '2019-03-20 16:23:47', '2019-03-20 16:23:50');
INSERT INTO `allotment` VALUES (1428, 8, 1, 72, '08', '0.272', '0.591', 'available', 0, NULL, 0, 0, '2019-03-20 16:24:43', '2019-03-20 16:24:46');
INSERT INTO `allotment` VALUES (1429, 9, 1, 72, '09', '0.276', '0.598', 'available', 0, NULL, 0, 0, '2019-03-20 16:25:49', '2019-03-20 16:25:52');
INSERT INTO `allotment` VALUES (1430, 10, 1, 72, '10', '0.269', '0.604', 'available', 0, NULL, 0, 0, '2019-03-20 16:28:35', '2019-03-20 16:28:38');
INSERT INTO `allotment` VALUES (1431, 11, 1, 72, '11', '0.265', '0.597', 'available', 0, NULL, 0, 0, '2019-03-20 16:29:48', '2019-03-20 16:29:51');
INSERT INTO `allotment` VALUES (1432, 12, 1, 72, '12', '0.262', '0.589', 'available', 0, NULL, 0, 0, '2019-03-20 16:30:43', '2019-03-20 16:30:46');
INSERT INTO `allotment` VALUES (1433, 13, 1, 72, '13', '0.258', '0.582', 'available', 0, NULL, 0, 0, '2019-03-20 16:31:39', '2019-03-20 16:31:42');
INSERT INTO `allotment` VALUES (1434, 14, 1, 72, '14', '0.255', '0.573', 'available', 0, NULL, 0, 0, '2019-03-20 16:32:17', '2019-03-20 16:32:21');
INSERT INTO `allotment` VALUES (1435, 15, 1, 72, '15', '0.251', '0.565', 'available', 0, NULL, 0, 0, '2019-03-20 16:33:30', '2019-03-20 16:33:32');
INSERT INTO `allotment` VALUES (1436, 16, 1, 72, '16', '0.248', '0.558', 'available', 0, NULL, 0, 0, '2019-03-20 16:34:12', '2019-03-20 16:34:16');
INSERT INTO `allotment` VALUES (1437, 17, 1, 72, '17', '0.245', '0.550', 'available', 0, NULL, 0, 0, '2019-03-20 16:34:53', '2019-03-20 16:34:55');
INSERT INTO `allotment` VALUES (1438, 18, 1, 72, '18', '0.242', '0.543', 'available', 0, NULL, 0, 0, '2019-03-20 16:35:30', '2019-03-20 16:35:33');
INSERT INTO `allotment` VALUES (1439, 1, 1, 73, '01', '0.269', '0.522', 'available', 0, NULL, 0, 0, '2019-03-20 16:41:09', '2019-03-20 16:41:12');
INSERT INTO `allotment` VALUES (1440, 2, 1, 73, '02', '0.273', '0.530', 'available', 0, NULL, 0, 0, '2019-03-20 16:42:55', '2019-03-20 16:42:57');
INSERT INTO `allotment` VALUES (1441, 3, 1, 73, '03', '0.275', '0.538', 'available', 0, NULL, 0, 0, '2019-03-20 16:43:44', '2019-03-20 16:43:47');
INSERT INTO `allotment` VALUES (1442, 4, 1, 73, '04', '0.279', '0.544', 'available', 0, NULL, 0, 0, '2019-03-20 16:44:21', '2019-03-20 16:44:24');
INSERT INTO `allotment` VALUES (1443, 5, 1, 73, '05', '0.283', '0.553', 'available', 0, NULL, 0, 0, '2019-03-20 16:45:10', '2019-03-20 16:45:17');
INSERT INTO `allotment` VALUES (1444, 6, 1, 73, '06', '0.286', '0.560', 'available', 0, NULL, 0, 0, '2019-03-20 16:46:07', '2019-03-20 16:46:10');
INSERT INTO `allotment` VALUES (1445, 7, 1, 73, '07', '0.289', '0.568', 'available', 0, NULL, 0, 0, '2019-03-20 16:46:49', '2019-03-20 16:46:51');
INSERT INTO `allotment` VALUES (1446, 8, 1, 73, '08', '0.293', '0.576', 'available', 0, NULL, 0, 0, '2019-03-20 16:47:31', '2019-03-20 16:47:34');
INSERT INTO `allotment` VALUES (1447, 9, 1, 73, '09', '0.296', '0.583', 'available', 0, NULL, 0, 0, '2019-03-20 16:48:03', '2019-03-20 16:48:08');
INSERT INTO `allotment` VALUES (1448, 10, 1, 73, '10', '0.289', '0.588', 'available', 0, NULL, 0, 0, '2019-03-20 16:48:54', '2019-03-20 16:48:57');
INSERT INTO `allotment` VALUES (1449, 11, 1, 73, '11', '0.285', '0.581', 'available', 0, NULL, 0, 0, '2019-03-20 16:49:35', '2019-03-20 16:49:38');
INSERT INTO `allotment` VALUES (1450, 12, 1, 73, '12', '0.282', '0.574', 'available', 0, NULL, 0, 0, '2019-03-20 16:50:15', '2019-03-20 16:50:18');
INSERT INTO `allotment` VALUES (1451, 13, 1, 73, '13', '0.279', '0.565', 'available', 0, NULL, 0, 0, '2019-03-20 16:50:50', '2019-03-20 16:50:53');
INSERT INTO `allotment` VALUES (1452, 14, 1, 73, '14', '0.275', '0.558', 'available', 0, NULL, 0, 0, '2019-03-20 16:51:28', '2019-03-20 16:51:31');
INSERT INTO `allotment` VALUES (1453, 15, 1, 73, '15', '0.272', '0.550', 'available', 0, NULL, 0, 0, '2019-03-20 16:52:13', '2019-03-20 16:52:17');
INSERT INTO `allotment` VALUES (1454, 16, 1, 73, '16', '0.269', '0.543', 'available', 0, NULL, 0, 0, '2019-03-20 16:52:51', '2019-03-20 16:52:55');
INSERT INTO `allotment` VALUES (1455, 17, 1, 73, '17', '0.265', '0.535', 'available', 0, NULL, 0, 0, '2019-03-20 16:53:38', '2019-03-20 16:53:41');
INSERT INTO `allotment` VALUES (1456, 18, 1, 73, '18', '0.262', '0.528', 'available', 0, NULL, 0, 0, '2019-03-20 16:54:16', '2019-03-20 16:54:19');
INSERT INTO `allotment` VALUES (1457, 1, 1, 74, '01', '0.289', '0.507', 'available', 0, NULL, 0, 0, '2019-03-20 17:03:10', '2019-03-20 17:03:13');
INSERT INTO `allotment` VALUES (1458, 2, 1, 74, '02', '0.293', '0.515', 'available', 0, NULL, 0, 0, '2019-03-20 17:03:45', '2019-03-20 17:03:47');
INSERT INTO `allotment` VALUES (1459, 3, 1, 74, '03', '0.296', '0.523', 'available', 0, NULL, 0, 0, '2019-03-20 17:04:19', '2019-03-20 17:04:21');
INSERT INTO `allotment` VALUES (1460, 4, 1, 74, '04', '0.299', '0.529', 'available', 0, NULL, 0, 0, '2019-03-20 17:05:17', '2019-03-20 17:05:19');
INSERT INTO `allotment` VALUES (1461, 5, 1, 74, '05', '0.303', '0.537', 'available', 0, NULL, 0, 0, '2019-03-20 17:05:55', '2019-03-20 17:05:58');
INSERT INTO `allotment` VALUES (1462, 6, 1, 74, '06', '0.306', '0.545', 'available', 0, NULL, 0, 0, '2019-03-20 17:12:33', '2019-03-20 17:12:36');
INSERT INTO `allotment` VALUES (1463, 7, 1, 74, '07', '0.309', '0.552', 'available', 0, NULL, 0, 0, '2019-03-20 17:15:15', '2019-03-20 17:15:18');
INSERT INTO `allotment` VALUES (1464, 8, 1, 74, '08', '0.313', '0.561', 'available', 0, NULL, 0, 0, '2019-03-20 17:15:46', '2019-03-20 17:15:49');
INSERT INTO `allotment` VALUES (1465, 9, 1, 74, '09', '0.316', '0.568', 'available', 0, NULL, 0, 0, '2019-03-20 17:16:17', '2019-03-20 17:16:20');
INSERT INTO `allotment` VALUES (1466, 10, 1, 74, '10', '0.309', '0.574', 'available', 0, NULL, 0, 0, '2019-03-20 17:19:22', '2019-03-20 17:19:25');
INSERT INTO `allotment` VALUES (1467, 11, 1, 74, '11', '0.306', '0.565', 'available', 0, NULL, 0, 0, '2019-03-20 17:19:57', '2019-03-20 17:20:00');
INSERT INTO `allotment` VALUES (1468, 12, 1, 74, '12', '0.302', '0.557', 'available', 0, NULL, 0, 0, '2019-03-20 17:20:29', '2019-03-20 17:20:32');
INSERT INTO `allotment` VALUES (1469, 13, 1, 74, '13', '0.299', '0.550', 'available', 0, NULL, 0, 0, '2019-03-20 17:21:03', '2019-03-20 17:21:05');
INSERT INTO `allotment` VALUES (1470, 14, 1, 74, '14', '0.295', '0.542', 'available', 0, NULL, 0, 0, '2019-03-20 17:22:16', '2019-03-20 17:22:19');
INSERT INTO `allotment` VALUES (1471, 15, 1, 74, '15', '0.292', '0.535', 'available', 0, NULL, 0, 0, '2019-03-20 17:23:02', '2019-03-20 17:23:04');
INSERT INTO `allotment` VALUES (1472, 16, 1, 74, '16', '0.289', '0.527', 'available', 0, NULL, 0, 0, '2019-03-20 17:23:48', '2019-03-20 17:23:51');
INSERT INTO `allotment` VALUES (1473, 17, 1, 74, '17', '0.285', '0.520', 'available', 0, NULL, 0, 0, '2019-03-20 17:24:23', '2019-03-20 17:24:26');
INSERT INTO `allotment` VALUES (1474, 18, 1, 74, '18', '0.282', '0.512', 'available', 0, NULL, 0, 0, '2019-03-20 17:25:04', '2019-03-20 17:25:07');
INSERT INTO `allotment` VALUES (1475, 1, 1, 75, '01', '0.309', '0.492', 'available', 0, NULL, 0, 0, '2019-03-20 17:27:40', '2019-03-20 17:27:43');
INSERT INTO `allotment` VALUES (1476, 2, 1, 75, '02', '0.313', '0.499', 'available', 0, NULL, 0, 0, '2019-03-20 17:28:16', '2019-03-20 17:28:19');
INSERT INTO `allotment` VALUES (1477, 3, 1, 75, '03', '0.316', '0.507', 'available', 0, NULL, 0, 0, '2019-03-20 17:28:52', '2019-03-20 17:28:57');
INSERT INTO `allotment` VALUES (1478, 4, 1, 75, '04', '0.319', '0.514', 'available', 0, NULL, 0, 0, '2019-03-20 17:29:31', '2019-04-16 11:58:44');
INSERT INTO `allotment` VALUES (1479, 5, 1, 75, '05', '0.323', '0.522', 'available', 0, NULL, 0, 0, '2019-03-20 17:30:12', '2019-03-20 17:30:15');
INSERT INTO `allotment` VALUES (1480, 6, 1, 75, '06', '0.326', '0.530', 'available', 0, NULL, 0, 0, '2019-03-20 17:30:44', '2019-03-20 17:30:47');
INSERT INTO `allotment` VALUES (1481, 7, 1, 75, '07', '0.330', '0.537', 'available', 0, NULL, 0, 0, '2019-03-20 17:31:19', '2019-03-20 17:31:23');
INSERT INTO `allotment` VALUES (1482, 8, 1, 75, '08', '0.333', '0.545', 'available', 0, NULL, 0, 0, '2019-03-20 17:31:55', '2019-03-20 17:32:00');
INSERT INTO `allotment` VALUES (1483, 9, 1, 75, '09', '0.336', '0.553', 'available', 0, NULL, 0, 0, '2019-03-20 17:32:32', '2019-03-20 17:32:35');
INSERT INTO `allotment` VALUES (1484, 10, 1, 75, '10', '0.329', '0.558', 'available', 0, NULL, 0, 0, '2019-03-20 17:34:59', '2019-03-20 17:35:02');
INSERT INTO `allotment` VALUES (1485, 11, 1, 75, '11', '0.326', '0.550', 'available', 0, NULL, 0, 0, '2019-03-20 17:35:57', '2019-03-20 17:36:00');
INSERT INTO `allotment` VALUES (1486, 12, 1, 75, '12', '0.322', '0.543', 'available', 0, NULL, 0, 0, '2019-03-20 17:36:31', '2019-03-20 17:36:34');
INSERT INTO `allotment` VALUES (1487, 13, 1, 75, '13', '0.319', '0.535', 'available', 0, NULL, 0, 0, '2019-03-20 17:37:05', '2019-03-20 17:37:11');
INSERT INTO `allotment` VALUES (1488, 14, 1, 75, '14', '0.315', '0.528', 'available', 0, NULL, 0, 0, '2019-03-20 17:37:44', '2019-03-20 17:37:47');
INSERT INTO `allotment` VALUES (1489, 15, 1, 75, '15', '0.312', '0.520', 'available', 0, NULL, 0, 0, '2019-03-20 17:38:21', '2019-04-16 14:08:01');
INSERT INTO `allotment` VALUES (1490, 16, 1, 75, '16', '0.309', '0.512', 'available', 0, NULL, 0, 0, '2019-03-20 17:38:59', '2019-03-20 17:39:01');
INSERT INTO `allotment` VALUES (1491, 17, 1, 75, '17', '0.305', '0.504', 'available', 0, NULL, 0, 0, '2019-03-20 17:39:40', '2019-03-20 17:39:42');
INSERT INTO `allotment` VALUES (1492, 18, 1, 75, '18', '0.302', '0.497', 'available', 0, NULL, 0, 0, '2019-03-20 17:40:11', '2019-03-20 17:40:16');
INSERT INTO `allotment` VALUES (1494, 1, 1, 76, '01', '0.329', '0.476', 'available', 0, NULL, 0, 0, '2019-03-20 17:44:48', '2019-03-20 17:44:50');
INSERT INTO `allotment` VALUES (1495, 2, 1, 76, '02', '0.333', '0.483', 'available', 0, NULL, 0, 0, '2019-03-20 17:45:30', '2019-03-20 17:45:32');
INSERT INTO `allotment` VALUES (1496, 3, 1, 76, '03', '0.336', '0.491', 'available', 0, NULL, 0, 0, '2019-03-20 17:46:02', '2019-03-20 17:46:04');
INSERT INTO `allotment` VALUES (1497, 4, 1, 76, '04', '0.340', '0.499', 'available', 0, NULL, 0, 0, '2019-03-20 17:46:33', '2019-03-20 17:46:36');
INSERT INTO `allotment` VALUES (1498, 5, 1, 76, '05', '0.343', '0.507', 'available', 0, NULL, 0, 0, '2019-03-20 17:57:17', '2019-03-20 17:57:20');
INSERT INTO `allotment` VALUES (1499, 6, 1, 76, '06', '0.346', '0.514', 'available', 0, NULL, 0, 0, '2019-03-20 17:57:50', '2019-03-20 17:57:53');
INSERT INTO `allotment` VALUES (1500, 7, 1, 76, '07', '0.349', '0.521', 'available', 0, NULL, 0, 0, '2019-03-20 18:01:47', '2019-03-20 18:01:50');
INSERT INTO `allotment` VALUES (1501, 8, 1, 76, '08', '0.353', '0.529', 'available', 0, NULL, 0, 0, '2019-03-20 18:02:23', '2019-04-23 15:24:35');
INSERT INTO `allotment` VALUES (1502, 9, 1, 76, '09', '0.357', '0.537', 'available', 0, NULL, 0, 0, '2019-03-20 18:03:09', '2019-04-23 12:40:34');
INSERT INTO `allotment` VALUES (1503, 10, 1, 76, '10', '0.349', '0.542', 'available', 0, NULL, 0, 0, '2019-03-20 18:03:39', '2019-03-20 18:03:41');
INSERT INTO `allotment` VALUES (1504, 11, 1, 76, '11', '0.346', '0.534', 'available', 0, NULL, 0, 0, '2019-03-20 18:04:15', '2019-03-20 18:04:18');
INSERT INTO `allotment` VALUES (1505, 12, 1, 76, '12', '0.342', '0.527', 'available', 0, NULL, 0, 0, '2019-03-20 18:04:53', '2019-03-20 18:04:56');
INSERT INTO `allotment` VALUES (1506, 13, 1, 76, '13', '0.339', '0.519', 'available', 0, NULL, 0, 0, '2019-03-20 18:05:24', '2019-03-20 18:05:26');
INSERT INTO `allotment` VALUES (1507, 14, 1, 76, '14', '0.335', '0.512', 'available', 0, NULL, 0, 0, '2019-03-20 18:05:57', '2019-03-20 18:06:02');
INSERT INTO `allotment` VALUES (1508, 15, 1, 76, '15', '0.332', '0.504', 'available', 0, NULL, 0, 0, '2019-03-20 18:06:34', '2019-03-20 18:06:36');
INSERT INTO `allotment` VALUES (1509, 16, 1, 76, '16', '0.328', '0.497', 'available', 0, NULL, 0, 0, '2019-03-20 18:07:21', '2019-03-20 18:07:24');
INSERT INTO `allotment` VALUES (1510, 17, 1, 76, '17', '0.325', '0.488', 'available', 0, NULL, 0, 0, '2019-03-20 18:07:53', '2019-03-20 18:07:56');
INSERT INTO `allotment` VALUES (1511, 18, 1, 76, '18', '0.322', '0.481', 'available', 0, NULL, 0, 0, '2019-03-20 18:08:27', '2019-03-20 18:08:32');
INSERT INTO `allotment` VALUES (1513, 1, 1, 77, '01', '0.333', '0.423', 'available', 0, NULL, 0, 0, '2019-03-21 10:11:41', '2019-03-21 10:11:45');
INSERT INTO `allotment` VALUES (1514, 2, 1, 77, '02', '0.336', '0.430', 'available', 0, NULL, 0, 0, '2019-03-21 10:17:42', '2019-03-21 10:17:47');
INSERT INTO `allotment` VALUES (1515, 3, 1, 77, '03', '0.339', '0.438', 'available', 0, NULL, 0, 0, '2019-03-21 10:18:32', '2019-03-21 10:18:36');
INSERT INTO `allotment` VALUES (1516, 4, 1, 77, '04', '0.343', '0.446', 'available', 0, NULL, 0, 0, '2019-03-21 10:19:14', '2019-03-21 10:19:18');
INSERT INTO `allotment` VALUES (1517, 5, 1, 77, '05', '0.346', '0.453', 'available', 0, NULL, 0, 0, '2019-03-21 10:19:49', '2019-03-21 10:19:53');
INSERT INTO `allotment` VALUES (1518, 6, 1, 77, '06', '0.349', '0.460', 'available', 0, NULL, 0, 0, '2019-03-21 10:20:37', '2019-03-21 10:20:41');
INSERT INTO `allotment` VALUES (1519, 7, 1, 77, '07', '0.353', '0.468', 'available', 0, NULL, 0, 0, '2019-03-21 10:21:26', '2019-03-21 10:21:29');
INSERT INTO `allotment` VALUES (1520, 8, 1, 77, '08', '0.357', '0.476', 'available', 0, NULL, 0, 0, '2019-03-21 10:22:21', '2019-03-21 10:22:27');
INSERT INTO `allotment` VALUES (1521, 9, 1, 77, '09', '0.359', '0.483', 'available', 0, NULL, 0, 0, '2019-03-21 10:23:03', '2019-03-21 10:23:07');
INSERT INTO `allotment` VALUES (1522, 10, 1, 77, '10', '0.363', '0.492', 'available', 0, NULL, 0, 0, '2019-03-21 10:24:05', '2019-03-21 10:24:11');
INSERT INTO `allotment` VALUES (1523, 11, 1, 77, '11', '0.366', '0.499', 'available', 0, NULL, 0, 0, '2019-03-21 10:24:43', '2019-03-21 10:24:47');
INSERT INTO `allotment` VALUES (1524, 12, 1, 77, '12', '0.370', '0.506', 'available', 0, NULL, 0, 0, '2019-03-21 10:25:17', '2019-03-21 10:25:21');
INSERT INTO `allotment` VALUES (1525, 13, 1, 77, '13', '0.373', '0.514', 'available', 0, NULL, 0, 0, '2019-03-21 10:27:54', '2019-03-21 10:27:59');
INSERT INTO `allotment` VALUES (1526, 14, 1, 77, '14', '0.376', '0.522', 'processing', 0, NULL, 0, 0, '2019-03-21 10:28:49', '2019-05-29 16:48:09');
INSERT INTO `allotment` VALUES (1527, 15, 1, 77, '15', '0.369', '0.527', 'available', 0, NULL, 0, 0, '2019-03-21 10:29:45', '2019-03-21 10:29:49');
INSERT INTO `allotment` VALUES (1528, 16, 1, 77, '16', '0.366', '0.520', 'available', 0, NULL, 0, 0, '2019-03-21 10:30:24', '2019-03-21 10:30:28');
INSERT INTO `allotment` VALUES (1529, 17, 1, 77, '17', '0.362', '0.511', 'available', 0, NULL, 0, 0, '2019-03-21 10:31:07', '2019-03-21 10:31:11');
INSERT INTO `allotment` VALUES (1530, 18, 1, 77, '18', '0.359', '0.504', 'available', 0, NULL, 0, 0, '2019-03-21 10:31:52', '2019-03-21 10:31:56');
INSERT INTO `allotment` VALUES (1531, 19, 1, 77, '19', '0.356', '0.497', 'available', 0, NULL, 0, 0, '2019-03-21 10:32:55', '2019-03-21 10:32:58');
INSERT INTO `allotment` VALUES (1532, 20, 1, 77, '20', '0.353', '0.489', 'available', 0, NULL, 0, 0, '2019-03-21 10:33:43', '2019-03-21 10:33:47');
INSERT INTO `allotment` VALUES (1533, 21, 1, 77, '21', '0.349', '0.481', 'available', 0, NULL, 0, 0, '2019-03-21 10:34:48', '2019-03-21 10:34:52');
INSERT INTO `allotment` VALUES (1534, 22, 1, 77, '22', '0.345', '0.474', 'available', 0, NULL, 0, 0, '2019-03-21 10:35:29', '2019-03-21 10:35:33');
INSERT INTO `allotment` VALUES (1535, 23, 1, 77, '23', '0.342', '0.466', 'available', 0, NULL, 0, 0, '2019-03-21 10:36:04', '2019-03-21 10:36:07');
INSERT INTO `allotment` VALUES (1536, 24, 1, 77, '24', '0.338', '0.458', 'available', 0, NULL, 0, 0, '2019-03-21 10:38:50', '2019-03-21 10:38:54');
INSERT INTO `allotment` VALUES (1537, 25, 1, 77, '25', '0.335', '0.451', 'available', 0, NULL, 0, 0, '2019-03-21 10:41:28', '2019-03-21 10:41:31');
INSERT INTO `allotment` VALUES (1538, 26, 1, 77, '26', '0.332', '0.443', 'available', 0, NULL, 0, 0, '2019-03-21 10:42:19', '2019-03-21 10:42:22');
INSERT INTO `allotment` VALUES (1539, 27, 1, 77, '26', '0.329', '0.435', 'available', 0, NULL, 0, 0, '2019-03-21 10:42:52', '2019-03-21 10:42:55');
INSERT INTO `allotment` VALUES (1540, 28, 1, 77, '28', '0.325', '0.428', 'available', 0, NULL, 0, 0, '2019-03-21 10:43:29', '2019-03-21 10:43:32');
INSERT INTO `allotment` VALUES (1542, 1, 1, 78, '01', '0.352', '0.407', 'available', 0, NULL, 0, 0, '2019-03-21 10:52:43', '2019-03-21 10:52:47');
INSERT INTO `allotment` VALUES (1543, 2, 1, 78, '02', '0.356', '0.415', 'available', 0, NULL, 0, 0, '2019-03-21 10:53:41', '2019-03-21 10:53:45');
INSERT INTO `allotment` VALUES (1544, 3, 1, 78, '03', '0.359', '0.422', 'available', 0, NULL, 0, 0, '2019-03-21 10:54:26', '2019-03-21 10:54:30');
INSERT INTO `allotment` VALUES (1545, 4, 1, 78, '04', '0.362', '0.430', 'available', 0, NULL, 0, 0, '2019-03-21 10:55:02', '2019-03-21 10:55:06');
INSERT INTO `allotment` VALUES (1546, 5, 1, 78, '05', '0.366', '0.438', 'available', 0, NULL, 0, 0, '2019-03-21 10:55:36', '2019-03-21 10:55:39');
INSERT INTO `allotment` VALUES (1547, 6, 1, 78, '06', '0.370', '0.445', 'available', 0, NULL, 0, 0, '2019-03-21 10:56:17', '2019-03-21 10:56:20');
INSERT INTO `allotment` VALUES (1548, 7, 1, 78, '07', '0.372', '0.453', 'available', 0, NULL, 0, 0, '2019-03-21 10:56:53', '2019-03-21 10:56:56');
INSERT INTO `allotment` VALUES (1549, 8, 1, 78, '08', '0.376', '0.461', 'available', 0, NULL, 0, 0, '2019-03-21 10:57:44', '2019-03-21 10:57:48');
INSERT INTO `allotment` VALUES (1550, 9, 1, 78, '09', '0.379', '0.468', 'available', 0, NULL, 0, 0, '2019-03-21 10:58:19', '2019-03-21 10:58:22');
INSERT INTO `allotment` VALUES (1551, 10, 1, 78, '10', '0.383', '0.476', 'available', 0, NULL, 0, 0, '2019-03-21 10:59:07', '2019-03-21 10:59:10');
INSERT INTO `allotment` VALUES (1552, 11, 1, 78, '11', '0.386', '0.484', 'available', 0, NULL, 0, 0, '2019-03-21 10:59:42', '2019-03-21 10:59:46');
INSERT INTO `allotment` VALUES (1553, 12, 1, 78, '12', '0.389', '0.491', 'available', 0, NULL, 0, 0, '2019-03-21 11:00:21', '2019-03-21 11:00:24');
INSERT INTO `allotment` VALUES (1554, 13, 1, 78, '13', '0.393', '0.498', 'available', 0, NULL, 0, 0, '2019-03-21 11:04:35', '2019-03-21 11:04:39');
INSERT INTO `allotment` VALUES (1555, 14, 1, 78, '14', '0.389', '0.512', 'processing', 0, '', 0, 0, '2019-03-21 11:05:27', '2019-05-03 02:57:33');
INSERT INTO `allotment` VALUES (1556, 15, 1, 78, '15', '0.386', '0.504', 'available', 0, NULL, 0, 0, '2019-03-21 11:06:12', '2019-03-21 11:06:16');
INSERT INTO `allotment` VALUES (1557, 16, 1, 78, '16', '0.382', '0.497', 'available', 0, NULL, 0, 0, '2019-03-21 11:07:03', '2019-03-21 11:07:07');
INSERT INTO `allotment` VALUES (1558, 17, 1, 78, '17', '0.379', '0.489', 'available', 0, NULL, 0, 0, '2019-03-21 11:07:38', '2019-03-21 11:07:41');
INSERT INTO `allotment` VALUES (1559, 18, 1, 78, '18', '0.376', '0.481', 'available', 0, NULL, 0, 0, '2019-03-21 11:08:17', '2019-03-21 11:08:20');
INSERT INTO `allotment` VALUES (1560, 19, 1, 78, '19', '0.373', '0.473', 'available', 0, NULL, 0, 0, '2019-03-21 11:09:02', '2019-03-21 11:09:06');
INSERT INTO `allotment` VALUES (1561, 20, 1, 78, '20', '0.369', '0.465', 'available', 0, NULL, 0, 0, '2019-03-21 11:09:38', '2019-03-21 11:09:42');
INSERT INTO `allotment` VALUES (1562, 21, 1, 78, '21', '0.366', '0.458', 'available', 0, NULL, 0, 0, '2019-03-21 11:10:37', '2019-03-21 11:10:40');
INSERT INTO `allotment` VALUES (1563, 22, 1, 78, '22', '0.362', '0.451', 'available', 0, NULL, 0, 0, '2019-03-21 11:11:11', '2019-03-21 11:11:15');
INSERT INTO `allotment` VALUES (1564, 23, 1, 78, '23', '0.359', '0.443', 'available', 0, NULL, 0, 0, '2019-03-21 11:12:01', '2019-03-21 11:12:04');
INSERT INTO `allotment` VALUES (1565, 24, 1, 78, '24', '0.355', '0.435', 'available', 0, NULL, 0, 0, '2019-03-21 11:13:30', '2019-03-21 11:13:33');
INSERT INTO `allotment` VALUES (1566, 25, 1, 78, '25', '0.352', '0.427', 'available', 0, NULL, 0, 0, '2019-03-21 11:14:19', '2019-03-21 11:14:22');
INSERT INTO `allotment` VALUES (1567, 26, 1, 78, '26', '0.349', '0.420', 'available', 0, NULL, 0, 0, '2019-03-21 11:14:55', '2019-03-21 11:14:59');
INSERT INTO `allotment` VALUES (1568, 27, 1, 78, '27', '0.345', '0.412', 'available', 0, NULL, 0, 0, '2019-03-21 11:15:31', '2019-03-21 11:15:34');
INSERT INTO `allotment` VALUES (1569, 1, 1, 79, '01', '0.376', '0.390', 'sold', 10230, 'in_process', 0, 0, '2019-03-21 11:28:19', '2019-05-29 15:35:06');
INSERT INTO `allotment` VALUES (1570, 2, 1, 79, '02', '0.379', '0.397', 'available', 0, NULL, 0, 0, '2019-03-21 11:32:15', '2019-03-21 11:32:18');
INSERT INTO `allotment` VALUES (1571, 3, 1, 79, '03', '0.383', '0.405', 'available', 0, NULL, 0, 0, '2019-03-21 11:32:59', '2019-03-21 11:33:03');
INSERT INTO `allotment` VALUES (1572, 4, 1, 79, '04', '0.386', '0.413', 'available', 0, NULL, 0, 0, '2019-03-21 11:33:43', '2019-03-21 11:33:47');
INSERT INTO `allotment` VALUES (1573, 5, 1, 79, '05', '0.390', '0.420', 'available', 0, NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `allotment` VALUES (1574, 6, 1, 79, '06', '0.393', '0.427', 'available', 0, NULL, 0, 0, '2019-03-21 11:34:39', '2019-03-21 11:34:42');
INSERT INTO `allotment` VALUES (1575, 7, 1, 79, '07', '0.395', '0.435', 'processing', 0, '', 0, 0, '2019-03-21 11:35:53', '2019-05-03 15:23:59');
INSERT INTO `allotment` VALUES (1576, 8, 1, 79, '08', '0.399', '0.443', 'available', 0, NULL, 0, 0, '2019-03-21 11:36:30', '2019-03-21 11:36:33');
INSERT INTO `allotment` VALUES (1577, 9, 1, 79, '09', '0.403', '0.450', 'available', 0, NULL, 0, 0, '2019-03-21 11:37:06', '2019-03-21 11:37:10');
INSERT INTO `allotment` VALUES (1578, 10, 1, 79, '10', '0.406', '0.458', 'available', 0, NULL, 0, 0, '2019-03-21 11:39:27', '2019-03-21 11:39:31');
INSERT INTO `allotment` VALUES (1579, 11, 1, 79, '11', '0.409', '0.465', 'available', 0, NULL, 0, 0, '2019-03-21 11:40:03', '2019-03-21 11:40:07');
INSERT INTO `allotment` VALUES (1580, 12, 1, 79, '12', '0.413', '0.474', 'available', 0, NULL, 0, 0, '2019-03-21 11:41:17', '2019-03-21 11:41:20');
INSERT INTO `allotment` VALUES (1581, 13, 1, 79, '13', '0.416', '0.481', 'available', 0, NULL, 0, 0, '2019-03-21 11:42:00', '2019-03-21 11:42:04');
INSERT INTO `allotment` VALUES (1582, 14, 1, 79, '14', '0.418', '0.489', 'processing', 0, '', 0, 0, '2019-03-21 11:42:40', '2019-04-29 20:41:51');
INSERT INTO `allotment` VALUES (1583, 15, 1, 79, '15', '0.409', '0.486', 'available', 0, NULL, 0, 0, '2019-03-21 11:43:20', '2019-05-06 21:26:40');
INSERT INTO `allotment` VALUES (1584, 16, 1, 79, '16', '0.406', '0.479', 'available', 0, NULL, 0, 0, '2019-03-21 11:44:11', '2019-03-21 11:44:17');
INSERT INTO `allotment` VALUES (1585, 17, 1, 79, '17', '0.402', '0.471', 'available', 0, NULL, 0, 0, '2019-03-21 11:46:26', '2019-03-21 11:46:29');
INSERT INTO `allotment` VALUES (1586, 18, 1, 79, '18', '0.399', '0.463', 'available', 0, NULL, 0, 0, '2019-03-21 11:47:21', '2019-03-21 11:47:26');
INSERT INTO `allotment` VALUES (1587, 19, 1, 79, '19', '0.396', '0.456', 'available', 0, NULL, 0, 0, '2019-03-21 11:48:08', '2019-03-21 11:48:11');
INSERT INTO `allotment` VALUES (1588, 20, 1, 79, '20', '0.392', '0.448', 'available', 0, NULL, 0, 0, '2019-03-21 11:48:50', '2019-03-21 11:48:53');
INSERT INTO `allotment` VALUES (1589, 21, 1, 79, '21', '0.389', '0.440', 'available', 0, NULL, 0, 0, '2019-03-21 11:49:31', '2019-03-21 11:49:35');
INSERT INTO `allotment` VALUES (1590, 22, 1, 79, '22', '0.385', '0.433', 'available', 0, NULL, 0, 0, '2019-03-21 11:51:30', '2019-03-21 11:51:34');
INSERT INTO `allotment` VALUES (1591, 23, 1, 79, '23', '0.382', '0.425', 'available', 0, NULL, 0, 0, '2019-03-21 11:53:39', '2019-03-21 11:53:42');
INSERT INTO `allotment` VALUES (1592, 24, 1, 79, '24', '0.379', '0.418', 'available', 0, NULL, 0, 0, '2019-03-21 11:54:11', '2019-03-21 11:54:15');
INSERT INTO `allotment` VALUES (1593, 25, 1, 79, '25', '0.375', '0.410', 'available', 0, NULL, 0, 0, '2019-03-21 11:56:53', '2019-03-21 11:56:56');
INSERT INTO `allotment` VALUES (1594, 26, 1, 79, '26', '0.372', '0.402', 'available', 0, NULL, 0, 0, '2019-03-21 11:57:31', '2019-03-21 11:57:34');
INSERT INTO `allotment` VALUES (1595, 27, 1, 79, '27', '0.369', '0.394', 'available', 0, NULL, 0, 0, '2019-03-21 11:58:10', '2019-03-21 11:58:14');
INSERT INTO `allotment` VALUES (1596, 1, 1, 80, '01', '0.300', '0.409', 'available', 0, NULL, 0, 0, '2019-03-21 12:06:18', '2019-03-21 12:06:21');
INSERT INTO `allotment` VALUES (1597, 2, 1, 80, '02', '0.303', '0.416', 'available', 0, NULL, 0, 0, '2019-03-21 12:06:57', '2019-03-21 12:07:00');
INSERT INTO `allotment` VALUES (1598, 3, 1, 80, '03', '0.306', '0.424', 'available', 0, NULL, 0, 0, '2019-03-21 12:07:56', '2019-03-21 12:08:00');
INSERT INTO `allotment` VALUES (1599, 4, 1, 80, '04', '0.309', '0.432', 'available', 0, NULL, 0, 0, '2019-03-21 12:08:44', '2019-03-21 12:08:47');
INSERT INTO `allotment` VALUES (1600, 5, 1, 80, '05', '0.313', '0.439', 'available', 0, NULL, 0, 0, '2019-03-21 12:09:52', '2019-03-21 12:09:55');
INSERT INTO `allotment` VALUES (1601, 6, 1, 80, '06', '0.316', '0.447', 'available', 0, NULL, 0, 0, '2019-03-21 12:10:58', '2019-03-21 12:11:03');
INSERT INTO `allotment` VALUES (1602, 7, 1, 80, '07', '0.320', '0.454', 'available', 0, NULL, 0, 0, '2019-03-21 12:11:47', '2019-03-21 12:11:52');
INSERT INTO `allotment` VALUES (1603, 8, 1, 80, '08', '0.323', '0.462', 'available', 0, NULL, 0, 0, '2019-03-21 12:12:30', '2019-03-21 12:12:35');
INSERT INTO `allotment` VALUES (1604, 9, 1, 80, '09', '0.316', '0.467', 'available', 0, NULL, 0, 0, '2019-03-21 12:13:54', '2019-03-21 12:13:57');
INSERT INTO `allotment` VALUES (1605, 10, 1, 80, '10', '0.312', '0.460', 'available', 0, NULL, 0, 0, '2019-03-21 12:14:29', '2019-03-21 12:14:32');
INSERT INTO `allotment` VALUES (1606, 11, 1, 80, '11', '0.310', '0.452', 'available', 0, NULL, 0, 0, '2019-03-21 12:15:02', '2019-03-21 12:15:05');
INSERT INTO `allotment` VALUES (1607, 12, 1, 80, '12', '0.306', '0.444', 'available', 0, NULL, 0, 0, '2019-03-21 12:15:38', '2019-03-21 12:15:41');
INSERT INTO `allotment` VALUES (1608, 13, 1, 80, '13', '0.303', '0.437', 'available', 0, NULL, 0, 0, '2019-03-21 12:16:12', '2019-03-21 12:16:15');
INSERT INTO `allotment` VALUES (1609, 14, 1, 80, '14', '0.300', '0.429', 'available', 0, NULL, 0, 0, '2019-03-21 12:16:54', '2019-03-21 12:16:57');
INSERT INTO `allotment` VALUES (1610, 15, 1, 80, '15', '0.296', '0.421', 'available', 0, NULL, 0, 0, '2019-03-21 12:17:32', '2019-03-21 12:17:36');
INSERT INTO `allotment` VALUES (1611, 16, 1, 80, '16', '0.293', '0.413', 'available', 0, NULL, 0, 0, '2019-03-21 12:18:10', '2019-03-21 12:18:15');
INSERT INTO `allotment` VALUES (1612, 1, 1, 81, '01', '0.279', '0.424', 'available', 0, NULL, 0, 0, '2019-03-21 12:26:42', '2019-03-21 12:26:45');
INSERT INTO `allotment` VALUES (1613, 2, 1, 81, '02', '0.283', '0.432', 'available', 0, NULL, 0, 0, '2019-03-21 12:27:20', '2019-03-21 12:27:23');
INSERT INTO `allotment` VALUES (1614, 3, 1, 81, '03', '0.286', '0.439', 'available', 0, NULL, 0, 0, '2019-03-21 13:06:35', '2019-03-21 13:06:38');
INSERT INTO `allotment` VALUES (1615, 4, 1, 81, '04', '0.289', '0.448', 'available', 0, NULL, 0, 0, '2019-03-21 13:07:08', '2019-03-21 13:07:11');
INSERT INTO `allotment` VALUES (1616, 5, 1, 81, '05', '0.292', '0.454', 'available', 0, NULL, 0, 0, '2019-03-21 13:07:40', '2019-03-21 13:07:43');
INSERT INTO `allotment` VALUES (1617, 6, 1, 81, '06', '0.296', '0.462', 'available', 0, NULL, 0, 0, '2019-03-21 13:08:25', '2019-03-21 13:08:29');
INSERT INTO `allotment` VALUES (1618, 7, 1, 81, '07', '0.299', '0.470', 'available', 0, NULL, 0, 0, '2019-03-21 13:09:12', '2019-03-21 13:09:16');
INSERT INTO `allotment` VALUES (1619, 8, 1, 81, '08', '0.303', '0.477', 'available', 0, NULL, 0, 0, '2019-03-21 13:10:06', '2019-03-21 13:10:10');
INSERT INTO `allotment` VALUES (1620, 9, 1, 81, '09', '0.296', '0.482', 'available', 0, NULL, 0, 0, '2019-03-21 13:10:53', '2019-03-21 13:10:56');
INSERT INTO `allotment` VALUES (1621, 10, 1, 81, '10', '0.292', '0.475', 'available', 0, NULL, 0, 0, '2019-03-21 13:11:24', '2019-03-21 13:11:27');
INSERT INTO `allotment` VALUES (1622, 11, 1, 81, '11', '0.290', '0.468', 'available', 0, NULL, 0, 0, '2019-03-21 13:11:57', '2019-03-21 13:12:00');
INSERT INTO `allotment` VALUES (1623, 12, 1, 81, '12', '0.286', '0.460', 'available', 0, NULL, 0, 0, '2019-03-21 13:12:28', '2019-03-21 13:12:31');
INSERT INTO `allotment` VALUES (1624, 13, 1, 81, '13', '0.283', '0.452', 'available', 0, NULL, 0, 0, '2019-03-21 13:13:10', '2019-03-21 13:13:13');
INSERT INTO `allotment` VALUES (1625, 14, 1, 81, '14', '0.279', '0.444', 'available', 0, NULL, 0, 0, '2019-03-21 13:14:06', '2019-03-21 13:14:09');
INSERT INTO `allotment` VALUES (1626, 15, 1, 81, '15', '0.276', '0.437', 'available', 0, NULL, 0, 0, '2019-03-21 13:14:57', '2019-03-21 13:15:00');
INSERT INTO `allotment` VALUES (1627, 16, 1, 81, '16', '0.272', '0.429', 'available', 0, NULL, 0, 0, '2019-03-21 13:15:33', '2019-03-21 13:15:37');
INSERT INTO `allotment` VALUES (1628, 1, 1, 82, '01', '0.259', '0.440', 'available', 0, NULL, 0, 0, '2019-03-21 13:16:42', '2019-03-21 13:16:45');
INSERT INTO `allotment` VALUES (1629, 2, 1, 82, '02', '0.262', '0.447', 'available', 0, NULL, 0, 0, '2019-03-21 13:17:36', '2019-03-21 13:17:39');
INSERT INTO `allotment` VALUES (1630, 3, 1, 82, '03', '0.266', '0.455', 'available', 0, NULL, 0, 0, '2019-03-21 13:18:09', '2019-03-21 13:18:13');
INSERT INTO `allotment` VALUES (1631, 4, 1, 82, '04', '0.269', '0.462', 'available', 0, NULL, 0, 0, '2019-03-21 13:18:45', '2019-03-21 13:18:50');
INSERT INTO `allotment` VALUES (1632, 5, 1, 82, '05', '0.273', '0.470', 'available', 0, NULL, 0, 0, '2019-03-21 13:19:25', '2019-03-21 13:19:28');
INSERT INTO `allotment` VALUES (1633, 6, 1, 82, '06', '0.276', '0.478', 'available', 0, NULL, 0, 0, '2019-03-21 13:20:02', '2019-03-21 13:20:05');
INSERT INTO `allotment` VALUES (1634, 7, 1, 82, '07', '0.279', '0.486', 'available', 0, NULL, 0, 0, '2019-03-21 13:20:34', '2019-03-21 13:20:37');
INSERT INTO `allotment` VALUES (1635, 8, 1, 82, '08', '0.283', '0.493', 'available', 0, NULL, 0, 0, '2019-03-21 13:21:12', '2019-03-21 13:21:16');
INSERT INTO `allotment` VALUES (1636, 9, 1, 82, '09', '0.276', '0.498', 'available', 0, NULL, 0, 0, '2019-03-21 13:21:47', '2019-03-21 13:21:51');
INSERT INTO `allotment` VALUES (1637, 10, 1, 82, '10', '0.273', '0.490', 'available', 0, NULL, 0, 0, '2019-03-21 13:22:45', '2019-03-21 13:22:48');
INSERT INTO `allotment` VALUES (1638, 11, 1, 82, '11', '0.269', '0.483', 'available', 0, NULL, 0, 0, '2019-03-21 13:24:29', '2019-03-21 13:24:32');
INSERT INTO `allotment` VALUES (1639, 12, 1, 82, '12', '0.266', '0.476', 'available', 0, NULL, 0, 0, '2019-03-21 13:25:02', '2019-03-21 13:25:05');
INSERT INTO `allotment` VALUES (1640, 13, 1, 82, '13', '0.262', '0.468', 'available', 0, NULL, 0, 0, '2019-03-21 13:25:56', '2019-03-21 13:26:00');
INSERT INTO `allotment` VALUES (1641, 14, 1, 82, '14', '0.259', '0.460', 'available', 0, NULL, 0, 0, '2019-03-21 13:26:32', '2019-03-21 13:26:35');
INSERT INTO `allotment` VALUES (1642, 15, 1, 82, '15', '0.256', '0.453', 'available', 0, NULL, 0, 0, '2019-03-21 13:27:02', '2019-03-21 13:27:06');
INSERT INTO `allotment` VALUES (1643, 16, 1, 82, '16', '0.252', '0.444', 'available', 0, NULL, 0, 0, '2019-03-21 13:27:36', '2019-03-21 13:27:39');
INSERT INTO `allotment` VALUES (1644, 1, 1, 83, '01', '0.239', '0.455', 'available', 0, NULL, 0, 0, '2019-03-21 13:30:30', '2019-03-21 13:30:34');
INSERT INTO `allotment` VALUES (1645, 2, 1, 83, '02', '0.243', '0.462', 'available', 0, NULL, 0, 0, '2019-03-21 14:05:42', '2019-03-21 14:05:45');
INSERT INTO `allotment` VALUES (1646, 3, 1, 83, '03', '0.246', '0.470', 'available', 0, NULL, 0, 0, '2019-03-21 14:06:15', '2019-03-21 14:06:18');
INSERT INTO `allotment` VALUES (1647, 4, 1, 83, '04', '0.249', '0.478', 'available', 0, NULL, 0, 0, '2019-03-21 14:06:49', '2019-03-21 14:06:52');
INSERT INTO `allotment` VALUES (1648, 5, 1, 83, '05', '0.253', '0.486', 'available', 0, NULL, 0, 0, '2019-03-21 14:07:28', '2019-03-21 14:07:31');
INSERT INTO `allotment` VALUES (1649, 6, 1, 83, '06', '0.256', '0.493', 'available', 0, NULL, 0, 0, '2019-03-21 14:08:09', '2019-03-21 14:08:12');
INSERT INTO `allotment` VALUES (1650, 7, 1, 83, '07', '0.260', '0.501', 'available', 0, NULL, 0, 0, '2019-03-21 14:08:45', '2019-03-21 14:08:49');
INSERT INTO `allotment` VALUES (1651, 8, 1, 83, '08', '0.263', '0.508', 'available', 0, NULL, 0, 0, '2019-03-21 14:09:18', '2019-03-21 14:09:21');
INSERT INTO `allotment` VALUES (1652, 9, 1, 83, '09', '0.256', '0.513', 'available', 0, NULL, 0, 0, '2019-03-21 14:09:55', '2019-03-21 14:10:03');
INSERT INTO `allotment` VALUES (1653, 10, 1, 83, '10', '0.253', '0.506', 'available', 0, NULL, 0, 0, '2019-03-21 14:10:47', '2019-03-21 14:10:51');
INSERT INTO `allotment` VALUES (1654, 11, 1, 83, '11', '0.249', '0.499', 'available', 0, NULL, 0, 0, '2019-03-21 14:11:30', '2019-03-21 14:11:33');
INSERT INTO `allotment` VALUES (1655, 12, 1, 83, '12', '0.246', '0.491', 'available', 0, NULL, 0, 0, '2019-03-21 14:12:15', '2019-03-21 14:12:18');
INSERT INTO `allotment` VALUES (1656, 13, 1, 83, '13', '0.242', '0.483', 'available', 0, NULL, 0, 0, '2019-03-21 14:12:58', '2019-03-21 14:13:01');
INSERT INTO `allotment` VALUES (1657, 14, 1, 83, '14', '0.239', '0.476', 'available', 0, NULL, 0, 0, '2019-03-21 14:13:34', '2019-03-21 14:13:37');
INSERT INTO `allotment` VALUES (1658, 15, 1, 83, '15', '0.236', '0.467', 'available', 0, NULL, 0, 0, '2019-03-21 14:14:17', '2019-03-21 14:14:20');
INSERT INTO `allotment` VALUES (1659, 16, 1, 83, '16', '0.232', '0.460', 'available', 0, NULL, 0, 0, '2019-03-21 14:14:57', '2019-03-21 14:15:00');
INSERT INTO `allotment` VALUES (1660, 1, 1, 84, '01', '0.219', '0.470', 'available', 0, NULL, 0, 0, '2019-03-21 14:16:25', '2019-03-21 14:16:29');
INSERT INTO `allotment` VALUES (1661, 2, 1, 84, '02', '0.223', '0.478', 'available', 0, NULL, 0, 0, '2019-03-21 14:17:03', '2019-03-21 14:17:07');
INSERT INTO `allotment` VALUES (1662, 3, 1, 84, '03', '0.226', '0.485', 'available', 0, NULL, 0, 0, '2019-03-21 14:18:32', '2019-03-21 14:18:36');
INSERT INTO `allotment` VALUES (1663, 4, 1, 84, '04', '0.230', '0.493', 'available', 0, NULL, 0, 0, '2019-03-21 14:19:10', '2019-04-16 16:15:17');
INSERT INTO `allotment` VALUES (1664, 5, 1, 84, '05', '0.233', '0.501', 'available', 0, NULL, 0, 0, '2019-03-21 14:19:42', '2019-03-21 14:19:45');
INSERT INTO `allotment` VALUES (1665, 6, 1, 84, '06', '0.236', '0.508', 'available', 0, NULL, 0, 0, '2019-03-21 14:20:21', '2019-03-21 14:20:25');
INSERT INTO `allotment` VALUES (1666, 7, 1, 84, '07', '0.239', '0.515', 'available', 0, NULL, 0, 0, '2019-03-21 14:21:17', '2019-03-21 14:21:20');
INSERT INTO `allotment` VALUES (1667, 8, 1, 84, '08', '0.242', '0.524', 'available', 0, NULL, 0, 0, '2019-03-21 14:21:55', '2019-03-21 14:21:58');
INSERT INTO `allotment` VALUES (1668, 9, 1, 84, '09', '0.235', '0.529', 'available', 0, NULL, 0, 0, '2019-03-21 14:22:36', '0000-00-00 00:00:00');
INSERT INTO `allotment` VALUES (1669, 10, 1, 84, '10', '0.232', '0.521', 'available', 0, NULL, 0, 0, '2019-03-21 14:23:52', '2019-03-21 14:23:56');
INSERT INTO `allotment` VALUES (1670, 11, 1, 84, '11', '0.230', '0.513', 'available', 0, NULL, 0, 0, '2019-03-21 14:24:28', '2019-03-21 14:24:31');
INSERT INTO `allotment` VALUES (1671, 12, 1, 84, '12', '0.226', '0.506', 'available', 0, NULL, 0, 0, '2019-03-21 14:25:18', '2019-03-21 14:25:23');
INSERT INTO `allotment` VALUES (1672, 13, 1, 84, '13', '0.222', '0.498', 'available', 0, NULL, 0, 0, '2019-03-21 14:26:01', '2019-03-21 14:26:07');
INSERT INTO `allotment` VALUES (1673, 14, 1, 84, '14', '0.219', '0.491', 'available', 0, NULL, 0, 0, '2019-03-21 14:26:55', '2019-03-21 14:26:59');
INSERT INTO `allotment` VALUES (1674, 15, 1, 84, '15', '0.215', '0.483', 'available', 0, NULL, 0, 0, '2019-03-21 14:27:37', '2019-03-21 14:27:41');
INSERT INTO `allotment` VALUES (1675, 16, 1, 84, '16', '0.212', '0.476', 'available', 0, NULL, 0, 0, '2019-03-21 14:32:17', '2019-03-21 14:32:12');
INSERT INTO `allotment` VALUES (1676, 1, 1, 85, '01', '0.203', '0.493', 'available', 0, NULL, 0, 0, '2019-03-21 14:31:42', '2019-03-21 14:31:49');
INSERT INTO `allotment` VALUES (1677, 2, 1, 85, '02', '0.205', '0.501', 'available', 0, NULL, 0, 0, '2019-03-21 14:32:54', '2019-03-21 14:32:58');
INSERT INTO `allotment` VALUES (1678, 3, 1, 85, '03', '0.209', '0.509', 'available', 0, NULL, 0, 0, '2019-03-21 14:33:32', '2019-03-21 14:33:35');
INSERT INTO `allotment` VALUES (1679, 4, 1, 85, '04', '0.212', '0.516', 'available', 0, NULL, 0, 0, '2019-03-21 14:34:06', '2019-03-21 14:34:09');
INSERT INTO `allotment` VALUES (1680, 5, 1, 85, '05', '0.216', '0.524', 'available', 0, NULL, 0, 0, '2019-03-21 14:34:39', '2019-03-21 14:34:42');
INSERT INTO `allotment` VALUES (1681, 6, 1, 85, '06', '0.220', '0.531', 'available', 0, NULL, 0, 0, '2019-03-21 14:35:15', '2019-03-21 14:35:19');
INSERT INTO `allotment` VALUES (1682, 7, 1, 85, '07', '0.223', '0.539', 'available', 0, NULL, 0, 0, '2019-03-21 14:35:59', '2019-03-21 14:36:02');
INSERT INTO `allotment` VALUES (1683, 8, 1, 85, '08', '0.215', '0.545', 'available', 0, NULL, 0, 0, '2019-03-21 14:36:44', '2019-03-21 14:36:47');
INSERT INTO `allotment` VALUES (1684, 9, 1, 85, '09', '0.212', '0.537', 'available', 0, NULL, 0, 0, '2019-03-21 14:41:08', '2019-03-21 14:41:11');
INSERT INTO `allotment` VALUES (1685, 10, 1, 85, '10', '0.209', '0.529', 'available', 0, NULL, 0, 0, '2019-03-21 14:41:46', '2019-03-21 14:41:51');
INSERT INTO `allotment` VALUES (1686, 11, 1, 85, '11', '0.206', '0.521', 'available', 0, NULL, 0, 0, '2019-03-21 14:42:46', '2019-03-21 14:42:49');
INSERT INTO `allotment` VALUES (1687, 12, 1, 85, '12', '0.202', '0.514', 'available', 0, NULL, 0, 0, '2019-03-21 14:43:18', '2019-03-21 14:43:21');
INSERT INTO `allotment` VALUES (1688, 13, 1, 85, '13', '0.199', '0.506', 'available', 0, NULL, 0, 0, '2019-03-21 14:43:55', '2019-03-21 14:43:59');
INSERT INTO `allotment` VALUES (1689, 14, 1, 85, '14', '0.195', '0.498', 'sold', 10184, 'in_process', 0, 0, '2019-03-21 14:44:52', '2019-05-15 00:37:06');
INSERT INTO `allotment` VALUES (1690, 1, 1, 86, '01', '0.196', '0.539', 'available', 0, NULL, 0, 0, '2019-03-21 14:47:17', '2019-03-21 14:47:20');
INSERT INTO `allotment` VALUES (1691, 2, 1, 86, '02', '0.199', '0.547', 'available', 0, NULL, 0, 0, '2019-03-21 14:49:14', '2019-03-21 14:49:17');
INSERT INTO `allotment` VALUES (1692, 3, 1, 86, '03', '0.202', '0.554', 'available', 0, NULL, 0, 0, '2019-03-21 14:49:46', '2019-03-21 14:49:49');
INSERT INTO `allotment` VALUES (1693, 4, 1, 86, '04', '0.195', '0.560', 'available', 0, NULL, 0, 0, '2019-03-21 14:50:32', '2019-03-21 14:50:35');
INSERT INTO `allotment` VALUES (1694, 5, 1, 86, '05', '0.192', '0.552', 'available', 0, NULL, 0, 0, '2019-03-21 14:51:13', '2019-03-21 14:51:16');
INSERT INTO `allotment` VALUES (1695, 6, 1, 86, '06', '0.189', '0.544', 'available', 0, NULL, 0, 0, '2019-03-21 14:51:55', '2019-03-21 14:51:58');
INSERT INTO `allotment` VALUES (1697, 1, 1, 87, '01', '0.788', '0.742', 'sold', 10169, 'in_process', 0, 0, '2019-03-21 14:55:50', '2019-05-15 00:02:23');
INSERT INTO `allotment` VALUES (1702, 2, 1, 87, '02', '0.794', '0.736', 'processing', 0, '', 0, 0, '2019-03-21 15:07:38', '2019-05-02 15:17:31');
INSERT INTO `allotment` VALUES (1703, 3, 1, 87, '03', '0.799', '0.732', 'sold', 10231, 'in_process', 0, 0, '2019-03-21 15:08:15', '2019-05-29 21:16:40');
INSERT INTO `allotment` VALUES (1704, 4, 1, 87, '04', '0.805', '0.728', 'sold', 10212, 'in_process', 0, 0, '2019-03-21 15:08:49', '2019-05-16 21:18:20');
INSERT INTO `allotment` VALUES (1705, 5, 1, 87, '05', '0.811', '0.723', 'sold', 10227, 'in_process', 0, 0, '2019-03-21 15:09:22', '2019-05-28 21:11:53');
INSERT INTO `allotment` VALUES (1706, 6, 1, 87, '06', '0.817', '0.719', 'processing', 0, NULL, 0, 0, '2019-03-21 15:09:59', '2019-05-20 18:19:10');
INSERT INTO `allotment` VALUES (1707, 7, 1, 87, '07', '0.823', '0.715', 'sold', 10237, 'in_process', 0, 0, '2019-03-21 15:10:30', '2019-06-04 14:10:09');
INSERT INTO `allotment` VALUES (1708, 8, 1, 87, '08', '0.829', '0.710', 'available', 0, NULL, 0, 0, '2019-03-21 15:11:07', '2019-03-21 15:11:11');
INSERT INTO `allotment` VALUES (1709, 9, 1, 87, '09', '0.834', '0.705', 'sold', 10249, 'in_process', 0, 0, '2019-03-21 15:11:42', '2019-06-10 16:46:52');
INSERT INTO `allotment` VALUES (1710, 10, 1, 87, '10', '0.840', '0.701', 'available', 0, NULL, 0, 0, '2019-03-21 15:12:17', '2019-03-21 15:12:20');
INSERT INTO `allotment` VALUES (1711, 11, 1, 87, '11', '0.846', '0.697', 'sold', 10247, 'in_process', 0, 0, '2019-03-21 15:13:13', '2019-06-10 16:18:43');
INSERT INTO `allotment` VALUES (1712, 12, 1, 87, '12', '0.851', '0.691', 'processing', 0, NULL, 0, 0, '2019-03-21 15:14:23', '2019-05-28 19:29:23');
INSERT INTO `allotment` VALUES (1713, 13, 1, 87, '13', '0.857', '0.688', 'sold', 10186, 'in_process', 0, 0, '2019-03-21 15:14:59', '2019-05-15 00:37:26');
INSERT INTO `allotment` VALUES (1714, 14, 1, 87, '14', '0.863', '0.683', 'sold', 10171, 'in_process', 0, 0, '2019-03-21 15:15:35', '2019-05-15 00:03:49');
INSERT INTO `allotment` VALUES (1715, 15, 1, 87, '15', '0.867', '0.692', 'processing', 0, '', 0, 0, '2019-03-21 15:16:09', '2019-05-03 02:57:23');
INSERT INTO `allotment` VALUES (1716, 16, 1, 87, '16', '0.861', '0.696', 'available', 0, NULL, 0, 0, '2019-03-21 15:16:41', '2019-03-21 15:16:44');
INSERT INTO `allotment` VALUES (1717, 17, 1, 87, '17', '0.855', '0.700', 'available', 0, NULL, 0, 0, '2019-03-21 15:17:14', '2019-03-21 15:17:17');
INSERT INTO `allotment` VALUES (1718, 18, 1, 87, '18', '0.849', '0.705', 'available', 0, NULL, 0, 0, '2019-03-21 15:17:47', '2019-03-21 15:17:52');
INSERT INTO `allotment` VALUES (1719, 19, 1, 87, '19', '0.844', '0.710', 'available', 0, NULL, 0, 0, '2019-03-21 15:18:44', '2019-03-21 15:18:48');
INSERT INTO `allotment` VALUES (1720, 20, 1, 87, '20', '0.838', '0.713', 'available', 0, NULL, 0, 0, '2019-03-21 15:19:23', '2019-03-21 15:19:29');
INSERT INTO `allotment` VALUES (1721, 21, 1, 87, '21', '0.832', '0.718', 'available', 0, NULL, 0, 0, '2019-03-21 15:20:03', '2019-03-21 15:20:06');
INSERT INTO `allotment` VALUES (1722, 22, 1, 87, '22', '0.826', '0.723', 'available', 0, NULL, 0, 0, '2019-03-21 15:20:41', '2019-03-21 15:20:44');
INSERT INTO `allotment` VALUES (1723, 1, 1, 88, '01', '0.876', '0.672', 'sold', 10178, 'in_process', 0, 0, '2019-03-21 15:21:30', '2019-05-15 00:35:28');
INSERT INTO `allotment` VALUES (1724, 2, 1, 88, '02', '0.882', '0.668', 'processing', 0, '', 0, 0, '2019-03-21 15:22:07', '2019-04-30 16:33:59');
INSERT INTO `allotment` VALUES (1725, 3, 1, 88, '03', '0.888', '0.664', 'processing', 0, NULL, 0, 0, '2019-03-21 15:22:37', '2019-06-07 17:59:52');
INSERT INTO `allotment` VALUES (1726, 4, 1, 88, '04', '0.894', '0.659', 'processing', 0, '', 0, 0, '2019-03-21 15:23:09', '2019-04-29 20:53:03');
INSERT INTO `allotment` VALUES (1727, 5, 1, 88, '05', '0.900', '0.655', 'processing', 0, '', 0, 0, '2019-03-21 15:23:42', '2019-04-29 15:36:18');
INSERT INTO `allotment` VALUES (1728, 6, 1, 88, '06', '0.904', '0.664', 'processing', 0, '', 0, 0, '2019-03-21 15:24:17', '2019-04-30 00:23:38');
INSERT INTO `allotment` VALUES (1729, 7, 1, 88, '07', '0.898', '0.668', 'processing', 0, '', 0, 0, '2019-03-21 15:25:33', '2019-04-30 03:56:45');
INSERT INTO `allotment` VALUES (1730, 8, 1, 88, '08', '0.892', '0.672', 'available', 0, NULL, 0, 0, '2019-03-21 15:26:19', '2019-03-21 15:26:23');
INSERT INTO `allotment` VALUES (1731, 9, 1, 88, '09', '0.886', '0.677', 'available', 0, NULL, 0, 0, '2019-03-21 15:27:04', '2019-03-21 15:27:07');
INSERT INTO `allotment` VALUES (1732, 10, 1, 88, '10', '0.880', '0.681', 'processing', 0, '', 0, 0, '2019-03-21 15:27:42', '2019-05-03 01:09:08');
INSERT INTO `allotment` VALUES (1733, 23, 1, 87, '23', '0.821', '0.728', 'available', 0, NULL, 0, 0, '2019-03-21 15:30:47', '2019-03-21 15:30:50');
INSERT INTO `allotment` VALUES (1734, 24, 1, 87, '24', '0.815', '0.732', 'available', 0, NULL, 0, 0, '2019-03-21 15:31:29', '2019-03-21 15:31:31');
INSERT INTO `allotment` VALUES (1735, 25, 1, 87, '25', '0.809', '0.738', 'available', 0, NULL, 0, 0, '2019-03-21 15:32:16', '2019-03-21 15:32:20');
INSERT INTO `allotment` VALUES (1736, 26, 1, 87, '26', '0.803', '0.741', 'available', 0, NULL, 0, 0, '2019-03-21 15:32:57', '2019-03-21 15:33:00');
INSERT INTO `allotment` VALUES (1737, 27, 1, 87, '27', '0.798', '0.745', 'available', 0, NULL, 0, 0, '2019-03-21 15:33:34', '2019-03-21 15:33:39');
INSERT INTO `allotment` VALUES (1738, 28, 1, 87, '28', '0.792', '0.749', 'processing', 0, '', 0, 0, '2019-03-21 15:34:12', '2019-04-29 12:30:53');
COMMIT;

-- ----------------------------
-- Table structure for bank_account_of_the_company
-- ----------------------------
DROP TABLE IF EXISTS `bank_account_of_the_company`;
CREATE TABLE `bank_account_of_the_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_account` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_bank` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `type` enum('Corriente','Ahorros') COLLATE utf8_spanish_ci DEFAULT NULL,
  `n_account` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `status` enum('inactive','active') COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of bank_account_of_the_company
-- ----------------------------
BEGIN;
INSERT INTO `bank_account_of_the_company` VALUES (1, 'Cuenta de Palacios', 'BANCOLOMBIA', 'Ahorros', '483-053324-21', 'active', '2019-04-15 12:51:03', '2019-04-15 12:51:06');
COMMIT;

-- ----------------------------
-- Table structure for bdpcn_payment_history
-- ----------------------------
DROP TABLE IF EXISTS `bdpcn_payment_history`;
CREATE TABLE `bdpcn_payment_history` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `entidad` int(11) NOT NULL,
  `referencia` varchar(260) NOT NULL,
  `firma` varchar(260) NOT NULL,
  `firma2` text NOT NULL,
  `errror` text NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for blocks
-- ----------------------------
DROP TABLE IF EXISTS `blocks`;
CREATE TABLE `blocks` (
  `id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(50) unsigned NOT NULL,
  `block_id` int(50) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `block_project_id` (`block_id`,`project_id`) USING BTREE COMMENT 'llave priamria formada',
  KEY `project_id` (`project_id`) USING BTREE,
  KEY `block_id` (`block_id`) USING BTREE,
  CONSTRAINT `fk_projectblock` FOREIGN KEY (`project_id`) REFERENCES `dbpcn_projects` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blocks
-- ----------------------------
BEGIN;
INSERT INTO `blocks` VALUES (1, 1, 2, '02');
INSERT INTO `blocks` VALUES (8, 1, 1, '01');
INSERT INTO `blocks` VALUES (9, 1, 3, '03');
INSERT INTO `blocks` VALUES (10, 1, 4, '04');
INSERT INTO `blocks` VALUES (11, 1, 5, '05');
INSERT INTO `blocks` VALUES (12, 1, 6, '06');
INSERT INTO `blocks` VALUES (17, 1, 8, '08');
INSERT INTO `blocks` VALUES (18, 1, 9, '09');
INSERT INTO `blocks` VALUES (19, 1, 10, '10');
INSERT INTO `blocks` VALUES (20, 1, 11, '11');
INSERT INTO `blocks` VALUES (21, 1, 12, '12');
INSERT INTO `blocks` VALUES (22, 1, 13, '13');
INSERT INTO `blocks` VALUES (23, 1, 14, '14');
INSERT INTO `blocks` VALUES (24, 1, 15, '15');
INSERT INTO `blocks` VALUES (25, 1, 16, '16');
INSERT INTO `blocks` VALUES (26, 1, 17, '17');
INSERT INTO `blocks` VALUES (27, 1, 18, '18');
INSERT INTO `blocks` VALUES (28, 1, 19, '19');
INSERT INTO `blocks` VALUES (29, 1, 20, '20');
INSERT INTO `blocks` VALUES (30, 1, 21, '21');
INSERT INTO `blocks` VALUES (31, 1, 22, '22');
INSERT INTO `blocks` VALUES (32, 1, 23, '23');
INSERT INTO `blocks` VALUES (33, 1, 24, '24');
INSERT INTO `blocks` VALUES (34, 1, 25, '25');
INSERT INTO `blocks` VALUES (35, 1, 26, '26');
INSERT INTO `blocks` VALUES (36, 1, 27, '27');
INSERT INTO `blocks` VALUES (37, 1, 28, '28');
INSERT INTO `blocks` VALUES (38, 1, 29, '29');
INSERT INTO `blocks` VALUES (39, 1, 30, '30');
INSERT INTO `blocks` VALUES (40, 1, 31, '31');
INSERT INTO `blocks` VALUES (41, 1, 41, '41');
INSERT INTO `blocks` VALUES (42, 1, 42, '42');
INSERT INTO `blocks` VALUES (43, 1, 43, '43');
INSERT INTO `blocks` VALUES (44, 1, 44, '44');
INSERT INTO `blocks` VALUES (45, 1, 45, '45');
INSERT INTO `blocks` VALUES (46, 1, 46, '46');
INSERT INTO `blocks` VALUES (47, 1, 47, '47');
INSERT INTO `blocks` VALUES (48, 1, 48, '48');
INSERT INTO `blocks` VALUES (51, 1, 49, '49');
INSERT INTO `blocks` VALUES (52, 1, 50, '50');
INSERT INTO `blocks` VALUES (53, 1, 51, '51');
INSERT INTO `blocks` VALUES (54, 1, 52, '52');
INSERT INTO `blocks` VALUES (55, 1, 53, '53');
INSERT INTO `blocks` VALUES (56, 1, 54, '54');
INSERT INTO `blocks` VALUES (57, 1, 55, '55');
INSERT INTO `blocks` VALUES (58, 1, 56, '56');
INSERT INTO `blocks` VALUES (59, 1, 57, '57');
INSERT INTO `blocks` VALUES (60, 1, 58, '58');
INSERT INTO `blocks` VALUES (61, 1, 59, '59');
INSERT INTO `blocks` VALUES (62, 1, 60, '60');
INSERT INTO `blocks` VALUES (63, 1, 61, '61');
INSERT INTO `blocks` VALUES (65, 1, 62, '62');
INSERT INTO `blocks` VALUES (66, 1, 63, '63');
INSERT INTO `blocks` VALUES (67, 1, 64, '64');
INSERT INTO `blocks` VALUES (68, 1, 65, '65');
INSERT INTO `blocks` VALUES (69, 1, 66, '66');
INSERT INTO `blocks` VALUES (70, 1, 67, '67');
INSERT INTO `blocks` VALUES (71, 1, 68, '68');
INSERT INTO `blocks` VALUES (72, 1, 69, '69');
INSERT INTO `blocks` VALUES (73, 1, 70, '70');
INSERT INTO `blocks` VALUES (74, 1, 71, '71');
INSERT INTO `blocks` VALUES (75, 1, 72, '72');
INSERT INTO `blocks` VALUES (76, 1, 73, '73');
INSERT INTO `blocks` VALUES (77, 1, 74, '74');
INSERT INTO `blocks` VALUES (78, 1, 75, '75');
INSERT INTO `blocks` VALUES (79, 1, 76, '76');
INSERT INTO `blocks` VALUES (80, 1, 77, '77');
INSERT INTO `blocks` VALUES (81, 1, 78, '78');
INSERT INTO `blocks` VALUES (82, 1, 79, '79');
INSERT INTO `blocks` VALUES (83, 1, 80, '80');
INSERT INTO `blocks` VALUES (84, 1, 81, '81');
INSERT INTO `blocks` VALUES (85, 1, 82, '82');
INSERT INTO `blocks` VALUES (86, 1, 83, '83');
INSERT INTO `blocks` VALUES (87, 1, 84, '84');
INSERT INTO `blocks` VALUES (88, 1, 85, '85');
INSERT INTO `blocks` VALUES (89, 1, 86, '86');
INSERT INTO `blocks` VALUES (109, 1, 32, '32');
INSERT INTO `blocks` VALUES (110, 1, 33, '33');
INSERT INTO `blocks` VALUES (111, 1, 34, '34');
INSERT INTO `blocks` VALUES (112, 1, 35, '35');
INSERT INTO `blocks` VALUES (113, 1, 36, '36');
INSERT INTO `blocks` VALUES (114, 1, 37, '37');
INSERT INTO `blocks` VALUES (115, 1, 38, '38');
INSERT INTO `blocks` VALUES (116, 1, 39, '39');
INSERT INTO `blocks` VALUES (117, 1, 40, '40');
INSERT INTO `blocks` VALUES (118, 1, 87, 'A');
INSERT INTO `blocks` VALUES (119, 1, 88, 'B');
INSERT INTO `blocks` VALUES (120, 1, 7, '07');
COMMIT;

-- ----------------------------
-- Table structure for commission_withdrawal
-- ----------------------------
DROP TABLE IF EXISTS `commission_withdrawal`;
CREATE TABLE `commission_withdrawal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `amount_minimum` double NOT NULL,
  `amount_maximum` double NOT NULL,
  `details` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of commission_withdrawal
-- ----------------------------
BEGIN;
INSERT INTO `commission_withdrawal` VALUES (1, 16000, 100000, 10000000, '16,000.00 COP ');
COMMIT;

-- ----------------------------
-- Table structure for continents
-- ----------------------------
DROP TABLE IF EXISTS `continents`;
CREATE TABLE `continents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `continents` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of continents
-- ----------------------------
BEGIN;
INSERT INTO `continents` VALUES (1, 'Europa');
INSERT INTO `continents` VALUES (2, 'America');
INSERT INTO `continents` VALUES (3, 'Asia ');
INSERT INTO `continents` VALUES (4, 'Africa');
INSERT INTO `continents` VALUES (5, 'Oceania');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_Indirects
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_Indirects`;
CREATE TABLE `dbpcn_Indirects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `amount_cop` decimal(30,2) NOT NULL,
  `ranking_id` int(10) NOT NULL,
  `detail` text NOT NULL,
  `status` enum('Pending','Approved','Rejected') NOT NULL,
  `indirect_points` int(11) NOT NULL,
  `indirect_users` longtext CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `indirect_loses` longtext DEFAULT NULL,
  `quantity_earns` longtext DEFAULT NULL,
  `quantity_loses` longtext DEFAULT NULL,
  `indirect_hash` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `date_concept` (`user_id`,`transaction_date`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_Indirects
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_Indirects` VALUES (52, 1, '2019-05-14', 2070090.00, 10, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":{\"1\":{\"cantidad\":4,\"first_payment\":2255000,\"project\":1}},\"3\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}},\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[{\"cantidad\":4,\"first_payment\":2255000,\"project\":1}],\"3\":[{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-14 08:26:38', '2019-05-14 08:26:38');
INSERT INTO `dbpcn_Indirects` VALUES (53, 10180, '2019-05-15', 460020.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10211\",\"username\":\"wtpropiedad1\",\"quantity\":[{\"project\":1,\"allotment_id\":\"7\",\"first_payment\":2255000,\"purchase\":\"2019-05-16 16:08:34\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-15 00:25:59', '2019-05-15 00:25:59');
INSERT INTO `dbpcn_Indirects` VALUES (54, 10148, '2019-05-15', 5807752.50, 10, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10163\",\"username\":\"jjpalacio26\",\"quantity\":[{\"project\":1,\"allotment_id\":\"70\",\"first_payment\":2255000,\"purchase\":\"2019-05-13 21:38:17\"}]},{\"id\":\"10169\",\"username\":\"adelito62\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1697\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:02:23\"}]},{\"id\":\"10179\",\"username\":\"darioquijano\",\"quantity\":[{\"project\":1,\"allotment_id\":\"46\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:35:42\"}]},{\"id\":\"10174\",\"username\":\"masterdreamers\",\"quantity\":[{\"project\":1,\"allotment_id\":\"81\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:34:09\"}]},{\"id\":\"10164\",\"username\":\"globalvision\",\"quantity\":[{\"project\":1,\"allotment_id\":\"109\",\"first_payment\":2255000,\"purchase\":\"2019-05-14 19:05:20\"}]},{\"id\":\"10167\",\"username\":\"wolf_ecu\",\"quantity\":[{\"project\":1,\"allotment_id\":\"70\",\"first_payment\":2255000,\"purchase\":\"2019-05-13 21:38:17\"}]}],\"3\":[{\"id\":\"10170\",\"username\":\"farcoin93\",\"quantity\":[{\"project\":1,\"allotment_id\":\"37\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:03:16\"}]},{\"id\":\"10173\",\"username\":\"trillonario\",\"quantity\":[{\"project\":1,\"allotment_id\":\"308\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:32:28\"}]},{\"id\":\"10168\",\"username\":\"paulhstevens\",\"quantity\":[{\"project\":1,\"allotment_id\":\"94\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:01:54\"}]},{\"id\":\"10165\",\"username\":\"yesidf\",\"quantity\":[{\"project\":1,\"allotment_id\":\"478\",\"first_payment\":2255000,\"purchase\":\"2019-05-14 20:06:33\"}]},{\"id\":\"10197\",\"username\":\"alexluisv\",\"quantity\":[{\"project\":1,\"allotment_id\":\"76\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 13:59:09\"}]}],\"4\":[{\"id\":\"10171\",\"username\":\"eliasbm\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1714\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:03:49\"}]},{\"id\":\"10183\",\"username\":\"juan1515\",\"quantity\":[{\"project\":1,\"allotment_id\":\"35\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:36:40\"}]},{\"id\":\"10166\",\"username\":\"jagaby\",\"quantity\":[{\"project\":1,\"allotment_id\":\"21\",\"first_payment\":2255000,\"purchase\":\"2019-05-14 22:53:22\"}]},{\"id\":\"10177\",\"username\":\"diamond17\",\"quantity\":[{\"project\":1,\"allotment_id\":\"140\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:35:16\"}]},{\"id\":\"10178\",\"username\":\"luchomaster\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1723\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:35:27\"}]}],\"5\":[{\"id\":\"10172\",\"username\":\"carolinayjimmy\",\"quantity\":[{\"project\":1,\"allotment_id\":\"12\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:08:26\"}]},{\"id\":\"10180\",\"username\":\"luzirene\",\"quantity\":[{\"project\":1,\"allotment_id\":\"117\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:35:59\"}]},{\"id\":\"10181\",\"username\":\"familiasl\",\"quantity\":[{\"project\":1,\"allotment_id\":\"38\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:36:09\"}]},{\"id\":\"10184\",\"username\":\"nelson_mejia1\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1689\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:37:06\"}]},{\"id\":\"10186\",\"username\":\"tico1977\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1713\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:37:25\"}]},{\"id\":\"10188\",\"username\":\"yulimarolivera0408\",\"quantity\":[{\"project\":1,\"allotment_id\":\"31\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:39:45\"}]},{\"id\":\"10191\",\"username\":\"fdam.master\",\"quantity\":[{\"project\":1,\"allotment_id\":\"335\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:40:41\"}]}],\"6\":[{\"id\":\"10175\",\"username\":\"yosoy\",\"quantity\":[{\"project\":1,\"allotment_id\":\"74\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:34:27\"}]},{\"id\":\"10182\",\"username\":\"carly\",\"quantity\":[{\"project\":1,\"allotment_id\":\"111\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:36:37\"}]},{\"id\":\"10185\",\"username\":\"hernuesga\",\"quantity\":[{\"project\":1,\"allotment_id\":\"107\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:37:12\"}]},{\"id\":\"10195\",\"username\":\"macdfd01\",\"quantity\":[{\"project\":1,\"allotment_id\":\"292\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:41:21\"}]},{\"id\":\"10196\",\"username\":\"atlanrot\",\"quantity\":[{\"project\":1,\"allotment_id\":\"48\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 13:56:55\"}]},{\"id\":\"10198\",\"username\":\"kano\",\"quantity\":[{\"project\":1,\"allotment_id\":\"583\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 14:00:16\"}]}],\"7\":[{\"id\":\"10176\",\"username\":\"emjv2019\",\"quantity\":[{\"project\":1,\"allotment_id\":\"312\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:34:40\"}]},{\"id\":\"10187\",\"username\":\"goldteam\",\"quantity\":[{\"project\":1,\"allotment_id\":\"77\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:39:29\"}]},{\"id\":\"10194\",\"username\":\"dserrano\",\"quantity\":[{\"project\":1,\"allotment_id\":\"36\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:41:13\"}]}]}\n', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[{\"cantidad\":6,\"first_payment\":2255000,\"project\":1}],\"3\":[{\"cantidad\":5,\"first_payment\":2255000,\"project\":1}],\"4\":[{\"cantidad\":5,\"first_payment\":2255000,\"project\":1}],\"5\":[{\"cantidad\":7,\"first_payment\":2255000,\"project\":1}],\"6\":[{\"cantidad\":6,\"first_payment\":2255000,\"project\":1}],\"7\":[{\"cantidad\":3,\"first_payment\":2255000,\"project\":1}]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-15 09:53:04', '2019-05-15 09:53:04');
INSERT INTO `dbpcn_Indirects` VALUES (58, 10167, '2019-05-15', 460020.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10199\",\"username\":\"dyjingenieria\",\"quantity\":[{\"project\":1,\"allotment_id\":\"654\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:28:59\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[{\"id\":\"10200\",\"username\":\"luisfercast\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"129\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:22\\\"}]\"},{\"id\":\"10201\",\"username\":\"jufesera\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"152\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:37\\\"}]\"},{\"id\":\"10202\",\"username\":\"andreyamaya1927\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"626\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:46\\\"}]\"},{\"id\":\"10203\",\"username\":\"housedream\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"315\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:30:40\\\"}]\"},{\"id\":\"10204\",\"username\":\"adriana\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"815\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:30:49\\\"}]\"}],\"4\":[{\"id\":\"10205\",\"username\":\"excellentpower\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"141\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:33:13\\\"}]\"}],\"5\":[{\"id\":\"10206\",\"username\":\"heyeve\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"142\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:33:27\\\"}]\"}],\"6\":[],\"7\":[]}', '{\"2\":[{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-15 10:37:58', '2019-05-15 10:37:58');
INSERT INTO `dbpcn_Indirects` VALUES (59, 10148, '2019-05-20', 1897582.50, 10, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[{\"id\":\"10208\",\"username\":\"visionary\",\"quantity\":[{\"project\":1,\"allotment_id\":\"488\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 17:34:03\"}]},{\"id\":\"10215\",\"username\":\"sergioparra\",\"quantity\":[{\"project\":1,\"allotment_id\":\"790\",\"first_payment\":2255000,\"purchase\":\"2019-05-20 14:47:32\"}]},{\"id\":\"10216\",\"username\":\"byronochoa\",\"quantity\":[{\"project\":1,\"allotment_id\":\"83\",\"first_payment\":2255000,\"purchase\":\"2019-05-20 14:50:42\"}]}],\"4\":[{\"id\":\"10199\",\"username\":\"dyjingenieria\",\"quantity\":[{\"project\":1,\"allotment_id\":\"654\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:28:59\"}]},{\"id\":\"10209\",\"username\":\"camilo1140\",\"quantity\":[{\"project\":1,\"allotment_id\":\"716\",\"first_payment\":2255000,\"purchase\":\"2019-05-16 16:07:17\"}]}],\"5\":[{\"id\":\"10200\",\"username\":\"luisfercast\",\"quantity\":[{\"project\":1,\"allotment_id\":\"129\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:29:22\"}]},{\"id\":\"10201\",\"username\":\"jufesera\",\"quantity\":[{\"project\":1,\"allotment_id\":\"152\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:29:37\"}]},{\"id\":\"10202\",\"username\":\"andreyamaya1927\",\"quantity\":[{\"project\":1,\"allotment_id\":\"626\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:29:46\"}]},{\"id\":\"10203\",\"username\":\"housedream\",\"quantity\":[{\"project\":1,\"allotment_id\":\"315\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:30:40\"}]},{\"id\":\"10204\",\"username\":\"adriana\",\"quantity\":[{\"project\":1,\"allotment_id\":\"815\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:30:49\"}]}],\"6\":[{\"id\":\"10205\",\"username\":\"excellentpower\",\"quantity\":[{\"project\":1,\"allotment_id\":\"141\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:33:13\"}]},{\"id\":\"10210\",\"username\":\"cupercuevas83\",\"quantity\":[{\"project\":1,\"allotment_id\":\"108\",\"first_payment\":2255000,\"purchase\":\"2019-05-16 16:07:44\"}]},{\"id\":\"10212\",\"username\":\"nancy.roa\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1704\",\"first_payment\":2255000,\"purchase\":\"2019-05-16 21:18:20\"}]},{\"id\":\"10214\",\"username\":\"kano\",\"quantity\":[{\"project\":1,\"allotment_id\":\"301\",\"first_payment\":2255000,\"purchase\":\"2019-05-17 20:17:49\"}]}],\"7\":[{\"id\":\"10206\",\"username\":\"heyeve\",\"quantity\":[{\"project\":1,\"allotment_id\":\"142\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:33:27\"}]},{\"id\":\"10207\",\"username\":\"inari\",\"quantity\":[{\"project\":1,\"allotment_id\":\"676\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:34:13\"}]},{\"id\":\"10211\",\"username\":\"wtpropiedad1\",\"quantity\":[{\"project\":1,\"allotment_id\":\"7\",\"first_payment\":2255000,\"purchase\":\"2019-05-16 16:08:34\"}]}]}\n', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"3\":[{\"cantidad\":3,\"first_payment\":2255000,\"project\":1}],\"4\":[{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}],\"5\":[{\"cantidad\":5,\"first_payment\":2255000,\"project\":1}],\"6\":[{\"cantidad\":4,\"first_payment\":2255000,\"project\":1}],\"7\":[{\"cantidad\":3,\"first_payment\":2255000,\"project\":1}]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-20 13:11:50', '2019-05-20 13:11:50');
INSERT INTO `dbpcn_Indirects` VALUES (60, 10171, '2019-05-21', 1840080.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10175\",\"username\":\"yosoy\",\"quantity\":[{\"project\":1,\"allotment_id\":\"74\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:34:27\"}]},{\"id\":\"10196\",\"username\":\"atlanrot\",\"quantity\":[{\"project\":1,\"allotment_id\":\"48\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 13:56:55\"}]},{\"id\":\"10198\",\"username\":\"kano\",\"quantity\":[{\"project\":1,\"allotment_id\":\"583\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 14:00:16\"}]},{\"id\":\"10210\",\"username\":\"cupercuevas83\",\"quantity\":[{\"project\":1,\"allotment_id\":\"108\",\"first_payment\":2255000,\"purchase\":\"2019-05-16 16:07:44\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}\n', '{\"2\":[],\"3\":[{\"id\":\"10176\",\"username\":\"emjv2019\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"312\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:40\\\"}]\"},{\"id\":\"10194\",\"username\":\"dserrano\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"36\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:13\\\"}]\"},{\"id\":\"10207\",\"username\":\"inari\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"676\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:34:13\\\"}]\"}],\"4\":[{\"id\":\"10189\",\"username\":\"reymidas07\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"467\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:10\\\"}]\"},{\"id\":\"10193\",\"username\":\"iferrer2019\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"75\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:05\\\"}]\"}],\"5\":[{\"id\":\"10190\",\"username\":\"reinamidas\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"479\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:30\\\"}]\"},{\"id\":\"10192\",\"username\":\"lnlb2019\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"598\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:56\\\"}]\"}],\"6\":[],\"7\":[]}', '{\"2\":[{\"cantidad\":4,\"first_payment\":2255000,\"project\":1}]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-21 07:53:35', '2019-05-21 07:53:35');
INSERT INTO `dbpcn_Indirects` VALUES (61, 10148, '2019-05-21', 230010.00, 10, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":[{\"id\":\"10217\",\"username\":\"juanjose\",\"quantity\":[{\"project\":1,\"allotment_id\":\"766\",\"first_payment\":2255000,\"purchase\":\"2019-05-21 19:07:30\"}]}],\"5\":[{\"id\":\"10218\",\"username\":\"lote1mz38\",\"quantity\":[{\"project\":1,\"allotment_id\":\"709\",\"first_payment\":2255000,\"purchase\":\"2019-05-21 19:08:57\"}]}],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"4\":[{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}],\"5\":[{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-21 14:18:42', '2019-05-21 14:18:42');
INSERT INTO `dbpcn_Indirects` VALUES (62, 10199, '2019-05-21', 920040.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10205\",\"username\":\"excellentpower\",\"quantity\":[{\"project\":1,\"allotment_id\":\"141\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:33:13\"}]},{\"id\":\"10214\",\"username\":\"jesuscardona\",\"quantity\":[{\"project\":1,\"allotment_id\":\"301\",\"first_payment\":2255000,\"purchase\":\"2019-05-17 20:17:49\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[{\"id\":\"10206\",\"username\":\"heyeve\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"142\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:33:27\\\"}]\"}],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-21 14:37:37', '2019-05-21 14:37:37');
INSERT INTO `dbpcn_Indirects` VALUES (63, 10164, '2019-05-21', 460020.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10166\",\"username\":\"jagaby\",\"quantity\":[{\"project\":1,\"allotment_id\":\"21\",\"first_payment\":2255000,\"purchase\":\"2019-05-14 22:53:22\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-21 15:55:20', '2019-05-21 15:55:20');
INSERT INTO `dbpcn_Indirects` VALUES (67, 10199, '2019-05-22', 0.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[{\"id\":\"10206\",\"username\":\"heyeve\",\"quantity\":\"[]\"}],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '[]', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-22 09:25:41', '2019-05-22 09:25:41');
INSERT INTO `dbpcn_Indirects` VALUES (68, 10199, '2019-05-23', 0.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[{\"id\":\"10206\",\"username\":\"heyeve\",\"quantity\":\"[]\"}],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '[]', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-23 08:28:10', '2019-05-23 08:28:10');
INSERT INTO `dbpcn_Indirects` VALUES (69, 10148, '2019-05-23', 287512.50, 10, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[{\"id\":\"10219\",\"username\":\"dreamerazul\",\"quantity\":[{\"project\":1,\"allotment_id\":\"80\",\"first_payment\":2255000,\"purchase\":\"2019-05-21 21:47:04\"}]}],\"4\":[],\"5\":[],\"6\":[{\"id\":\"10220\",\"username\":\"rmartinez2459\",\"quantity\":[{\"project\":1,\"allotment_id\":\"316\",\"first_payment\":2255000,\"purchase\":\"2019-05-23 21:08:04\"}]}],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"3\":[{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}],\"6\":[{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-23 18:24:06', '2019-05-23 18:24:06');
INSERT INTO `dbpcn_Indirects` VALUES (70, 10199, '2019-05-24', 0.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[{\"id\":\"10206\",\"username\":\"heyeve\",\"quantity\":\"[]\"}],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '[]', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-24 08:21:40', '2019-05-24 08:21:40');
INSERT INTO `dbpcn_Indirects` VALUES (71, 10164, '2019-05-24', 920040.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10221\",\"username\":\"refricol\",\"quantity\":[{\"project\":1,\"allotment_id\":\"466\",\"first_payment\":2255000,\"purchase\":\"2019-05-24 13:42:51\"}]},{\"id\":\"10222\",\"username\":\"cayita\",\"quantity\":[{\"project\":1,\"allotment_id\":\"487\",\"first_payment\":2255000,\"purchase\":\"2019-05-24 13:44:36\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-24 13:29:11', '2019-05-24 13:29:11');
INSERT INTO `dbpcn_Indirects` VALUES (72, 10148, '2019-05-24', 230010.00, 10, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":[{\"id\":\"10221\",\"username\":\"refricol\",\"quantity\":[{\"project\":1,\"allotment_id\":\"466\",\"first_payment\":2255000,\"purchase\":\"2019-05-24 13:42:51\"}]},{\"id\":\"10222\",\"username\":\"cayita\",\"quantity\":[{\"project\":1,\"allotment_id\":\"487\",\"first_payment\":2255000,\"purchase\":\"2019-05-24 13:44:36\"}]}],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"4\":[{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-24 16:45:46', '2019-05-24 16:45:46');
INSERT INTO `dbpcn_Indirects` VALUES (73, 10180, '2019-05-27', 460020.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10187\",\"username\":\"goldteam\",\"quantity\":[{\"project\":1,\"allotment_id\":\"77\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:39:29\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[{\"id\":\"10213\",\"username\":\"billions\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"39\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-17 14:13:58\\\"}]\"}],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-27 11:52:37', '2019-05-27 11:52:37');
INSERT INTO `dbpcn_Indirects` VALUES (74, 10164, '2019-05-27', 920040.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10223\",\"username\":\"rimexy\",\"quantity\":[{\"project\":1,\"allotment_id\":\"198\",\"first_payment\":2255000,\"purchase\":\"2019-05-27 19:15:30\"}]},{\"id\":\"10217\",\"username\":\"juanjose\",\"quantity\":[{\"project\":1,\"allotment_id\":\"766\",\"first_payment\":2255000,\"purchase\":\"2019-05-21 19:07:30\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-27 14:27:43', '2019-05-27 14:27:43');
INSERT INTO `dbpcn_Indirects` VALUES (75, 1, '2019-05-27', 5290230.00, 10, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10149\",\"username\":\"pasal\",\"quantity\":[{\"project\":1,\"allotment_id\":\"72\",\"first_payment\":2255000,\"purchase\":\"2019-05-10 17:22:49\"}]}],\"3\":{\"1\":{\"id\":\"10169\",\"username\":\"adelito62\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1697\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:02:23\"}]},\"2\":{\"id\":\"10179\",\"username\":\"darioquijano\",\"quantity\":[{\"project\":1,\"allotment_id\":\"46\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:35:42\"}]},\"3\":{\"id\":\"10174\",\"username\":\"masterdreamers\",\"quantity\":[{\"project\":1,\"allotment_id\":\"81\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:34:09\"}]},\"4\":{\"id\":\"10164\",\"username\":\"globalvision\",\"quantity\":[{\"project\":1,\"allotment_id\":\"109\",\"first_payment\":2255000,\"purchase\":\"2019-05-14 19:05:20\"}]},\"5\":{\"id\":\"10167\",\"username\":\"wolf_ecu\",\"quantity\":[{\"project\":1,\"allotment_id\":\"92\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:01:01\"}]}},\"4\":[{\"id\":\"10170\",\"username\":\"farcoin93\",\"quantity\":[{\"project\":1,\"allotment_id\":\"37\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:03:16\"}]},{\"id\":\"10173\",\"username\":\"trillonario\",\"quantity\":[{\"project\":1,\"allotment_id\":\"308\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:32:28\"}]},{\"id\":\"10219\",\"username\":\"dreamerazul\",\"quantity\":[{\"project\":1,\"allotment_id\":\"80\",\"first_payment\":2255000,\"purchase\":\"2019-05-21 21:47:04\"}]},{\"id\":\"10165\",\"username\":\"yesidf\",\"quantity\":[{\"project\":1,\"allotment_id\":\"478\",\"first_payment\":2255000,\"purchase\":\"2019-05-14 20:06:33\"}]},{\"id\":\"10208\",\"username\":\"visionary\",\"quantity\":[{\"project\":1,\"allotment_id\":\"488\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 17:34:03\"}]},{\"id\":\"10215\",\"username\":\"sergioparra\",\"quantity\":[{\"project\":1,\"allotment_id\":\"790\",\"first_payment\":2255000,\"purchase\":\"2019-05-20 14:47:32\"}]},{\"id\":\"10216\",\"username\":\"byronochoa\",\"quantity\":[{\"project\":1,\"allotment_id\":\"83\",\"first_payment\":2255000,\"purchase\":\"2019-05-20 14:50:42\"}]},{\"id\":\"10168\",\"username\":\"paulhstevens\",\"quantity\":[{\"project\":1,\"allotment_id\":\"94\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:01:54\"}]},{\"id\":\"10197\",\"username\":\"alexluisv\",\"quantity\":[{\"project\":1,\"allotment_id\":\"76\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 13:59:09\"}]}],\"5\":[{\"id\":\"10171\",\"username\":\"eliasbm\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1714\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:03:49\"}]},{\"id\":\"10183\",\"username\":\"juan1515\",\"quantity\":[{\"project\":1,\"allotment_id\":\"35\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:36:40\"}]},{\"id\":\"10177\",\"username\":\"diamond17\",\"quantity\":[{\"project\":1,\"allotment_id\":\"140\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:35:16\"}]},{\"id\":\"10178\",\"username\":\"luchomaster\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1723\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:35:27\"}]},{\"id\":\"10209\",\"username\":\"camilo1140\",\"quantity\":[{\"project\":1,\"allotment_id\":\"716\",\"first_payment\":2255000,\"purchase\":\"2019-05-16 16:07:17\"}]},{\"id\":\"10166\",\"username\":\"jagaby\",\"quantity\":[{\"project\":1,\"allotment_id\":\"21\",\"first_payment\":2255000,\"purchase\":\"2019-05-14 22:53:22\"}]},{\"id\":\"10221\",\"username\":\"refricol\",\"quantity\":[{\"project\":1,\"allotment_id\":\"466\",\"first_payment\":2255000,\"purchase\":\"2019-05-24 13:42:51\"}]},{\"id\":\"10222\",\"username\":\"cayita\",\"quantity\":[{\"project\":1,\"allotment_id\":\"487\",\"first_payment\":2255000,\"purchase\":\"2019-05-24 13:44:36\"}]},{\"id\":\"10223\",\"username\":\"rimexy\",\"quantity\":[{\"project\":1,\"allotment_id\":\"198\",\"first_payment\":2255000,\"purchase\":\"2019-05-27 19:15:30\"}]},{\"id\":\"10217\",\"username\":\"juanjose\",\"quantity\":[{\"project\":1,\"allotment_id\":\"766\",\"first_payment\":2255000,\"purchase\":\"2019-05-21 19:07:30\"}]},{\"id\":\"10199\",\"username\":\"dyjingenieria\",\"quantity\":[{\"project\":1,\"allotment_id\":\"654\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:28:59\"}]}],\"6\":[{\"id\":\"10172\",\"username\":\"carolinayjimmy\",\"quantity\":[{\"project\":1,\"allotment_id\":\"12\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:08:26\"}]},{\"id\":\"10184\",\"username\":\"nelson_mejia1\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1689\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:37:06\"}]},{\"id\":\"10186\",\"username\":\"tico1977\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1713\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:37:25\"}]},{\"id\":\"10188\",\"username\":\"yulimarolivera0408\",\"quantity\":[{\"project\":1,\"allotment_id\":\"31\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:39:45\"}]},{\"id\":\"10181\",\"username\":\"familiasl\",\"quantity\":[{\"project\":1,\"allotment_id\":\"38\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:36:09\"}]},{\"id\":\"10191\",\"username\":\"fdam.master\",\"quantity\":[{\"project\":1,\"allotment_id\":\"335\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:40:41\"}]},{\"id\":\"10180\",\"username\":\"luzirene\",\"quantity\":[{\"project\":1,\"allotment_id\":\"117\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:35:59\"}]},{\"id\":\"10200\",\"username\":\"luisfercast\",\"quantity\":[{\"project\":1,\"allotment_id\":\"129\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:29:22\"}]},{\"id\":\"10201\",\"username\":\"jufesera\",\"quantity\":[{\"project\":1,\"allotment_id\":\"152\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:29:37\"}]},{\"id\":\"10202\",\"username\":\"andreyamaya1927\",\"quantity\":[{\"project\":1,\"allotment_id\":\"626\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:29:46\"}]},{\"id\":\"10203\",\"username\":\"housedream\",\"quantity\":[{\"project\":1,\"allotment_id\":\"315\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:30:40\"}]},{\"id\":\"10204\",\"username\":\"adriana\",\"quantity\":[{\"project\":1,\"allotment_id\":\"815\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:30:49\"}]},{\"id\":\"10218\",\"username\":\"lote1mz38\",\"quantity\":[{\"project\":1,\"allotment_id\":\"709\",\"first_payment\":2255000,\"purchase\":\"2019-05-21 19:08:57\"}]}],\"7\":[{\"id\":\"10175\",\"username\":\"yosoy\",\"quantity\":[{\"project\":1,\"allotment_id\":\"74\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:34:27\"}]},{\"id\":\"10196\",\"username\":\"atlanrot\",\"quantity\":[{\"project\":1,\"allotment_id\":\"48\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 13:56:55\"}]},{\"id\":\"10198\",\"username\":\"kano\",\"quantity\":[{\"project\":1,\"allotment_id\":\"583\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 14:00:16\"}]},{\"id\":\"10210\",\"username\":\"cupercuevas83\",\"quantity\":[{\"project\":1,\"allotment_id\":\"108\",\"first_payment\":2255000,\"purchase\":\"2019-05-16 16:07:44\"}]},{\"id\":\"10195\",\"username\":\"macdfd01\",\"quantity\":[{\"project\":1,\"allotment_id\":\"292\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:41:21\"}]},{\"id\":\"10220\",\"username\":\"rmartinez2459\",\"quantity\":[{\"project\":1,\"allotment_id\":\"316\",\"first_payment\":2255000,\"purchase\":\"2019-05-23 21:08:04\"}]},{\"id\":\"10212\",\"username\":\"nancy.roa\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1704\",\"first_payment\":2255000,\"purchase\":\"2019-05-16 21:18:20\"}]},{\"id\":\"10182\",\"username\":\"carly\",\"quantity\":[{\"project\":1,\"allotment_id\":\"111\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:36:37\"}]},{\"id\":\"10185\",\"username\":\"hernuesga\",\"quantity\":[{\"project\":1,\"allotment_id\":\"107\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:37:12\"}]},{\"id\":\"10205\",\"username\":\"excellentpower\",\"quantity\":[{\"project\":1,\"allotment_id\":\"141\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:33:13\"}]},{\"id\":\"10214\",\"username\":\"jesuscardona\",\"quantity\":[{\"project\":1,\"allotment_id\":\"301\",\"first_payment\":2255000,\"purchase\":\"2019-05-17 20:17:49\"}]}]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}},\"3\":{\"1\":{\"cantidad\":5,\"first_payment\":2255000,\"project\":1}},\"4\":{\"1\":{\"cantidad\":9,\"first_payment\":2255000,\"project\":1}},\"5\":{\"1\":{\"cantidad\":11,\"first_payment\":2255000,\"project\":1}},\"6\":{\"1\":{\"cantidad\":13,\"first_payment\":2255000,\"project\":1}},\"7\":{\"1\":{\"cantidad\":11,\"first_payment\":2255000,\"project\":1}}}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-27 16:00:44', '2019-05-27 16:00:44');
INSERT INTO `dbpcn_Indirects` VALUES (76, 10148, '2019-05-27', 115005.00, 10, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":{\"8\":{\"id\":\"10223\",\"username\":\"rimexy\",\"quantity\":[{\"project\":1,\"allotment_id\":\"198\",\"first_payment\":2255000,\"purchase\":\"2019-05-27 19:15:30\"}]}},\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}},\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-27 16:47:37', '2019-05-27 16:47:37');
INSERT INTO `dbpcn_Indirects` VALUES (81, 10162, '2019-05-27', 2760120.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10165\",\"username\":\"yesidf\",\"quantity\":[{\"project\":1,\"allotment_id\":\"478\",\"first_payment\":2255000,\"purchase\":\"2019-05-14 20:06:33\"}]},{\"id\":\"10208\",\"username\":\"visionary\",\"quantity\":[{\"project\":1,\"allotment_id\":\"488\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 17:34:03\"}]},{\"id\":\"10215\",\"username\":\"sergioparra\",\"quantity\":[{\"project\":1,\"allotment_id\":\"790\",\"first_payment\":2255000,\"purchase\":\"2019-05-20 14:47:32\"}]},{\"id\":\"10216\",\"username\":\"byronochoa\",\"quantity\":[{\"project\":1,\"allotment_id\":\"83\",\"first_payment\":2255000,\"purchase\":\"2019-05-20 14:50:42\"}]},{\"id\":\"10168\",\"username\":\"paulhstevens\",\"quantity\":[{\"project\":1,\"allotment_id\":\"94\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:01:54\"}]},{\"id\":\"10197\",\"username\":\"alexluisv\",\"quantity\":[{\"project\":1,\"allotment_id\":\"76\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 13:59:09\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[{\"id\":\"10166\",\"username\":\"jagaby\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"21\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-14 22:53:22\\\"}]\"},{\"id\":\"10221\",\"username\":\"refricol\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"466\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-24 13:42:51\\\"}]\"},{\"id\":\"10222\",\"username\":\"cayita\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"487\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-24 13:44:36\\\"}]\"},{\"id\":\"10223\",\"username\":\"rimexy\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"198\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-27 19:15:30\\\"}]\"},{\"id\":\"10217\",\"username\":\"juanjose\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"766\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-21 19:07:30\\\"}]\"},{\"id\":\"10199\",\"username\":\"dyjingenieria\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"654\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:28:59\\\"}]\"}],\"4\":[{\"id\":\"10200\",\"username\":\"luisfercast\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"129\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:22\\\"}]\"},{\"id\":\"10201\",\"username\":\"jufesera\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"152\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:37\\\"}]\"},{\"id\":\"10202\",\"username\":\"andreyamaya1927\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"626\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:46\\\"}]\"},{\"id\":\"10203\",\"username\":\"housedream\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"315\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:30:40\\\"}]\"},{\"id\":\"10204\",\"username\":\"adriana\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"815\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:30:49\\\"}]\"},{\"id\":\"10218\",\"username\":\"lote1mz38\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"709\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-21 19:08:57\\\"}]\"}],\"5\":[{\"id\":\"10205\",\"username\":\"excellentpower\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"141\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:33:13\\\"}]\"},{\"id\":\"10214\",\"username\":\"jesuscardona\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"301\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-17 20:17:49\\\"}]\"}],\"6\":[{\"id\":\"10206\",\"username\":\"heyeve\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"142\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:33:27\\\"}]\"}],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":6,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-27 20:06:25', '2019-05-27 20:06:25');
INSERT INTO `dbpcn_Indirects` VALUES (82, 10148, '2019-05-28', 57502.50, 10, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[{\"id\":\"10224\",\"username\":\"m21-01\",\"quantity\":[{\"project\":1,\"allotment_id\":\"372\",\"first_payment\":2255000,\"purchase\":\"2019-05-27 21:58:51\"}]}]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}}}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-28 10:23:52', '2019-05-28 10:23:52');
INSERT INTO `dbpcn_Indirects` VALUES (83, 10199, '2019-05-28', 0.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[{\"id\":\"10206\",\"username\":\"heyeve\",\"quantity\":\"[]\"}],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '[]', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-28 10:52:24', '2019-05-28 10:52:24');
INSERT INTO `dbpcn_Indirects` VALUES (84, 10181, '2019-05-28', 460020.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10224\",\"username\":\"m21-01\",\"quantity\":[{\"project\":1,\"allotment_id\":\"372\",\"first_payment\":2255000,\"purchase\":\"2019-05-27 21:58:51\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-28 11:31:17', '2019-05-28 11:31:17');
INSERT INTO `dbpcn_Indirects` VALUES (85, 10169, '2019-05-28', 2300100.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10171\",\"username\":\"eliasbm\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1714\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:03:49\"}]},{\"id\":\"10183\",\"username\":\"juan1515\",\"quantity\":[{\"project\":1,\"allotment_id\":\"35\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:36:40\"}]},{\"id\":\"10177\",\"username\":\"diamond17\",\"quantity\":[{\"project\":1,\"allotment_id\":\"140\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:35:16\"}]},{\"id\":\"10178\",\"username\":\"luchomaster\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1723\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:35:27\"}]},{\"id\":\"10209\",\"username\":\"camilo1140\",\"quantity\":[{\"project\":1,\"allotment_id\":\"716\",\"first_payment\":2255000,\"purchase\":\"2019-05-16 16:07:17\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[{\"id\":\"10172\",\"username\":\"carolinayjimmy\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"12\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:08:26\\\"}]\"},{\"id\":\"10184\",\"username\":\"nelson_mejia1\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1689\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:06\\\"}]\"},{\"id\":\"10186\",\"username\":\"tico1977\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1713\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:25\\\"}]\"},{\"id\":\"10188\",\"username\":\"yulimarolivera0408\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"31\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:39:45\\\"}]\"},{\"id\":\"10181\",\"username\":\"familiasl\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"38\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:36:09\\\"}]\"},{\"id\":\"10191\",\"username\":\"fdam.master\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"335\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:41\\\"}]\"},{\"id\":\"10180\",\"username\":\"luzirene\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"117\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:35:59\\\"}]\"}],\"4\":[{\"id\":\"10175\",\"username\":\"yosoy\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"74\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:27\\\"}]\"},{\"id\":\"10196\",\"username\":\"atlanrot\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"48\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 13:56:55\\\"}]\"},{\"id\":\"10198\",\"username\":\"kano\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"583\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 14:00:16\\\"}]\"},{\"id\":\"10210\",\"username\":\"cupercuevas83\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"108\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:07:44\\\"}]\"},{\"id\":\"10195\",\"username\":\"macdfd01\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"292\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:21\\\"}]\"},{\"id\":\"10220\",\"username\":\"rmartinez2459\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"316\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-23 21:08:04\\\"}]\"},{\"id\":\"10212\",\"username\":\"nancy.roa\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1704\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 21:18:20\\\"}]\"},{\"id\":\"10182\",\"username\":\"carly\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"111\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:36:37\\\"}]\"},{\"id\":\"10185\",\"username\":\"hernuesga\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"107\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:12\\\"}]\"}],\"5\":[{\"id\":\"10176\",\"username\":\"emjv2019\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"312\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:40\\\"}]\"},{\"id\":\"10194\",\"username\":\"dserrano\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"36\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:13\\\"}]\"},{\"id\":\"10207\",\"username\":\"inari\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"676\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:34:13\\\"}]\"},{\"id\":\"10224\",\"username\":\"m21-01\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"372\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-27 21:58:51\\\"}]\"},{\"id\":\"10211\",\"username\":\"wtpropiedad1\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"7\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:08:34\\\"}]\"},{\"id\":\"10187\",\"username\":\"goldteam\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"77\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:39:29\\\"}]\"}],\"6\":[{\"id\":\"10189\",\"username\":\"reymidas07\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"467\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:10\\\"}]\"},{\"id\":\"10193\",\"username\":\"iferrer2019\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"75\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:05\\\"}]\"},{\"id\":\"10213\",\"username\":\"billions\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"39\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-17 14:13:58\\\"}]\"}],\"7\":[{\"id\":\"10190\",\"username\":\"reinamidas\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"479\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:30\\\"}]\"},{\"id\":\"10192\",\"username\":\"lnlb2019\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"598\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:56\\\"}]\"}]}', '{\"2\":{\"1\":{\"cantidad\":5,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-28 11:58:18', '2019-05-28 11:58:18');
INSERT INTO `dbpcn_Indirects` VALUES (86, 10170, '2019-05-28', 1840080.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10172\",\"username\":\"carolinayjimmy\",\"quantity\":[{\"project\":1,\"allotment_id\":\"12\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:08:26\"}]},{\"id\":\"10184\",\"username\":\"nelson_mejia1\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1689\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:37:06\"}]},{\"id\":\"10186\",\"username\":\"tico1977\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1713\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:37:25\"}]},{\"id\":\"10188\",\"username\":\"yulimarolivera0408\",\"quantity\":[{\"project\":1,\"allotment_id\":\"31\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:39:45\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[{\"id\":\"10175\",\"username\":\"yosoy\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"74\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:27\\\"}]\"},{\"id\":\"10196\",\"username\":\"atlanrot\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"48\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 13:56:55\\\"}]\"},{\"id\":\"10198\",\"username\":\"kano\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"583\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 14:00:16\\\"}]\"},{\"id\":\"10210\",\"username\":\"cupercuevas83\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"108\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:07:44\\\"}]\"}],\"4\":[{\"id\":\"10176\",\"username\":\"emjv2019\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"312\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:40\\\"}]\"},{\"id\":\"10194\",\"username\":\"dserrano\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"36\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:13\\\"}]\"},{\"id\":\"10207\",\"username\":\"inari\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"676\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:34:13\\\"}]\"}],\"5\":[{\"id\":\"10189\",\"username\":\"reymidas07\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"467\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:10\\\"}]\"},{\"id\":\"10193\",\"username\":\"iferrer2019\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"75\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:05\\\"}]\"}],\"6\":[{\"id\":\"10190\",\"username\":\"reinamidas\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"479\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:30\\\"}]\"},{\"id\":\"10192\",\"username\":\"lnlb2019\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"598\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:56\\\"}]\"}],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":4,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-28 12:00:46', '2019-05-28 12:00:46');
INSERT INTO `dbpcn_Indirects` VALUES (89, 10185, '2019-05-28', 460020.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10213\",\"username\":\"billions\",\"quantity\":[{\"project\":1,\"allotment_id\":\"39\",\"first_payment\":2255000,\"purchase\":\"2019-05-17 14:13:58\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-28 16:14:18', '2019-05-28 16:14:18');
INSERT INTO `dbpcn_Indirects` VALUES (91, 10171, '2019-05-28', 460020.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10225\",\"username\":\"yolanda2019\",\"quantity\":[{\"project\":1,\"allotment_id\":\"386\",\"first_payment\":2255000,\"purchase\":\"2019-05-28 20:31:32\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[{\"id\":\"10176\",\"username\":\"emjv2019\",\"quantity\":\"[]\"},{\"id\":\"10194\",\"username\":\"dserrano\",\"quantity\":\"[]\"},{\"id\":\"10207\",\"username\":\"inari\",\"quantity\":\"[]\"}],\"4\":[{\"id\":\"10189\",\"username\":\"reymidas07\",\"quantity\":\"[]\"},{\"id\":\"10193\",\"username\":\"iferrer2019\",\"quantity\":\"[]\"}],\"5\":[{\"id\":\"10190\",\"username\":\"reinamidas\",\"quantity\":\"[]\"},{\"id\":\"10192\",\"username\":\"lnlb2019\",\"quantity\":\"[]\"}],\"6\":[],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-28 16:53:21', '2019-05-28 16:53:21');
INSERT INTO `dbpcn_Indirects` VALUES (92, 10208, '2019-05-28', 460020.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10228\",\"username\":\"peter9301\",\"quantity\":[{\"project\":1,\"allotment_id\":\"958\",\"first_payment\":2255000,\"purchase\":\"2019-05-28 21:13:03\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-28 17:59:46', '2019-05-28 17:59:46');
INSERT INTO `dbpcn_Indirects` VALUES (93, 10151, '2019-05-28', 920040.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10170\",\"username\":\"farcoin93\",\"quantity\":[{\"project\":1,\"allotment_id\":\"37\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:03:16\"}]},{\"id\":\"10173\",\"username\":\"trillonario\",\"quantity\":[{\"project\":1,\"allotment_id\":\"308\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:32:28\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[{\"id\":\"10171\",\"username\":\"eliasbm\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1714\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:03:49\\\"}]\"},{\"id\":\"10183\",\"username\":\"juan1515\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"35\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:36:40\\\"}]\"},{\"id\":\"10177\",\"username\":\"diamond17\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"140\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:35:16\\\"}]\"},{\"id\":\"10178\",\"username\":\"luchomaster\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1723\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:35:27\\\"}]\"},{\"id\":\"10209\",\"username\":\"camilo1140\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"716\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:07:17\\\"}]\"}],\"4\":[{\"id\":\"10172\",\"username\":\"carolinayjimmy\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"12\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:08:26\\\"}]\"},{\"id\":\"10184\",\"username\":\"nelson_mejia1\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1689\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:06\\\"}]\"},{\"id\":\"10186\",\"username\":\"tico1977\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1713\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:25\\\"}]\"},{\"id\":\"10188\",\"username\":\"yulimarolivera0408\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"31\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:39:45\\\"}]\"},{\"id\":\"10181\",\"username\":\"familiasl\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"38\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:36:09\\\"}]\"},{\"id\":\"10191\",\"username\":\"fdam.master\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"335\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:41\\\"}]\"},{\"id\":\"10180\",\"username\":\"luzirene\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"117\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:35:59\\\"}]\"}],\"5\":[{\"id\":\"10175\",\"username\":\"yosoy\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"74\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:27\\\"}]\"},{\"id\":\"10196\",\"username\":\"atlanrot\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"48\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 13:56:55\\\"}]\"},{\"id\":\"10198\",\"username\":\"kano\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"583\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 14:00:16\\\"}]\"},{\"id\":\"10210\",\"username\":\"cupercuevas83\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"108\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:07:44\\\"}]\"},{\"id\":\"10225\",\"username\":\"yolanda2019\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"386\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-28 20:31:32\\\"}]\"},{\"id\":\"10195\",\"username\":\"macdfd01\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"292\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:21\\\"}]\"},{\"id\":\"10220\",\"username\":\"rmartinez2459\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"316\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-23 21:08:04\\\"}]\"},{\"id\":\"10212\",\"username\":\"nancy.roa\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1704\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 21:18:20\\\"}]\"},{\"id\":\"10182\",\"username\":\"carly\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"111\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:36:37\\\"}]\"},{\"id\":\"10185\",\"username\":\"hernuesga\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"107\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:12\\\"}]\"}],\"6\":[{\"id\":\"10176\",\"username\":\"emjv2019\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"312\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:40\\\"}]\"},{\"id\":\"10194\",\"username\":\"dserrano\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"36\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:13\\\"}]\"},{\"id\":\"10207\",\"username\":\"inari\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"676\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:34:13\\\"}]\"},{\"id\":\"10224\",\"username\":\"m21-01\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"372\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-27 21:58:51\\\"}]\"},{\"id\":\"10211\",\"username\":\"wtpropiedad1\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"7\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:08:34\\\"}]\"},{\"id\":\"10187\",\"username\":\"goldteam\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"77\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:39:29\\\"}]\"},{\"id\":\"10227\",\"username\":\"gabi1976\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1705\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-28 21:11:53\\\"}]\"}],\"7\":[{\"id\":\"10189\",\"username\":\"reymidas07\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"467\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:10\\\"}]\"},{\"id\":\"10193\",\"username\":\"iferrer2019\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"75\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:05\\\"}]\"},{\"id\":\"10213\",\"username\":\"billions\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"39\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-17 14:13:58\\\"}]\"}]}', '{\"2\":{\"1\":{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-28 20:30:55', '2019-05-28 20:30:55');
INSERT INTO `dbpcn_Indirects` VALUES (94, 10162, '2019-05-28', 0.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[{\"id\":\"10166\",\"username\":\"jagaby\",\"quantity\":\"[]\"},{\"id\":\"10221\",\"username\":\"refricol\",\"quantity\":\"[]\"},{\"id\":\"10222\",\"username\":\"cayita\",\"quantity\":\"[]\"},{\"id\":\"10223\",\"username\":\"rimexy\",\"quantity\":\"[]\"},{\"id\":\"10217\",\"username\":\"juanjose\",\"quantity\":\"[]\"},{\"id\":\"10199\",\"username\":\"dyjingenieria\",\"quantity\":\"[]\"}],\"4\":[{\"id\":\"10204\",\"username\":\"adriana\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"815\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:30:49\\\"}]\"},{\"id\":\"10218\",\"username\":\"lote1mz38\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"709\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-21 19:08:57\\\"}]\"}],\"5\":[{\"id\":\"10205\",\"username\":\"excellentpower\",\"quantity\":\"[]\"},{\"id\":\"10214\",\"username\":\"jesuscardona\",\"quantity\":\"[]\"}],\"6\":[{\"id\":\"10206\",\"username\":\"heyeve\",\"quantity\":\"[]\"}],\"7\":[]}', '[]', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-28 20:32:09', '2019-05-28 20:32:09');
INSERT INTO `dbpcn_Indirects` VALUES (95, 10172, '2019-05-28', 1380060.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10176\",\"username\":\"emjv2019\",\"quantity\":[{\"project\":1,\"allotment_id\":\"312\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:34:40\"}]},{\"id\":\"10194\",\"username\":\"dserrano\",\"quantity\":[{\"project\":1,\"allotment_id\":\"36\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:41:13\"}]},{\"id\":\"10207\",\"username\":\"inari\",\"quantity\":[{\"project\":1,\"allotment_id\":\"676\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:34:13\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[{\"id\":\"10190\",\"username\":\"reinamidas\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"479\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:30\\\"}]\"},{\"id\":\"10192\",\"username\":\"lnlb2019\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"598\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:56\\\"}]\"}],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":3,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-28 22:53:22', '2019-05-28 22:53:22');
INSERT INTO `dbpcn_Indirects` VALUES (96, 10176, '2019-05-29', 920040.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10190\",\"username\":\"reinamidas\",\"quantity\":[{\"project\":1,\"allotment_id\":\"479\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:40:30\"}]},{\"id\":\"10192\",\"username\":\"lnlb2019\",\"quantity\":[{\"project\":1,\"allotment_id\":\"598\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:40:56\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-29 07:10:42', '2019-05-29 07:10:42');
INSERT INTO `dbpcn_Indirects` VALUES (97, 10148, '2019-05-29', 460020.00, 10, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":[],\"5\":[{\"id\":\"10228\",\"username\":\"peter9301\",\"quantity\":[{\"project\":1,\"allotment_id\":\"958\",\"first_payment\":2255000,\"purchase\":\"2019-05-28 21:13:03\"}]},{\"id\":\"10226\",\"username\":\"joca2689\",\"quantity\":[{\"project\":1,\"allotment_id\":\"400\",\"first_payment\":2255000,\"purchase\":\"2019-05-28 20:33:46\"}]}],\"6\":[{\"id\":\"10225\",\"username\":\"yolanda2019\",\"quantity\":[{\"project\":1,\"allotment_id\":\"386\",\"first_payment\":2255000,\"purchase\":\"2019-05-28 20:31:32\"}]}],\"7\":[{\"id\":\"10229\",\"username\":\"sharom2204\",\"quantity\":[{\"project\":1,\"allotment_id\":\"550\",\"first_payment\":2255000,\"purchase\":\"2019-05-29 14:49:00\"}]},{\"id\":\"10231\",\"username\":\"santiago2026\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1703\",\"first_payment\":2255000,\"purchase\":\"2019-05-29 21:16:40\"}]},{\"id\":\"10227\",\"username\":\"gabi1976\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1705\",\"first_payment\":2255000,\"purchase\":\"2019-05-28 21:11:53\"}]}]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":{\"1\":{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}},\"6\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}},\"7\":{\"1\":{\"cantidad\":3,\"first_payment\":2255000,\"project\":1}}}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-29 16:59:12', '2019-05-29 16:59:12');
INSERT INTO `dbpcn_Indirects` VALUES (98, 10180, '2019-05-29', 460020.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10227\",\"username\":\"gabi1976\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1705\",\"first_payment\":2255000,\"purchase\":\"2019-05-28 21:11:53\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[{\"id\":\"10213\",\"username\":\"billions\",\"quantity\":\"[]\"}],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-29 18:55:40', '2019-05-29 18:55:40');
INSERT INTO `dbpcn_Indirects` VALUES (99, 10172, '2019-05-29', 1150050.00, 3, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10229\",\"username\":\"sharom2204\",\"quantity\":[{\"project\":1,\"allotment_id\":\"550\",\"first_payment\":2255000,\"purchase\":\"2019-05-29 14:49:00\"}]},{\"id\":\"10231\",\"username\":\"santiago2026\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1703\",\"first_payment\":2255000,\"purchase\":\"2019-05-29 21:16:40\"}]}],\"3\":[{\"id\":\"10230\",\"username\":\"fernandolondonoruiz1969\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1569\",\"first_payment\":2255000,\"purchase\":\"2019-05-29 15:35:06\"}]}],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[{\"id\":\"10190\",\"username\":\"reinamidas\",\"quantity\":\"[]\"},{\"id\":\"10192\",\"username\":\"lnlb2019\",\"quantity\":\"[]\"}],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}},\"3\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}},\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-29 19:09:08', '2019-05-29 19:09:08');
INSERT INTO `dbpcn_Indirects` VALUES (100, 10185, '2019-05-30', 460020.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10232\",\"username\":\"fannyguz\",\"quantity\":[{\"project\":1,\"allotment_id\":\"153\",\"first_payment\":2255000,\"purchase\":\"2019-05-30 14:28:49\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-30 10:21:09', '2019-05-30 10:21:09');
INSERT INTO `dbpcn_Indirects` VALUES (101, 10151, '2019-05-30', 0.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[{\"id\":\"10171\",\"username\":\"eliasbm\",\"quantity\":\"[]\"},{\"id\":\"10183\",\"username\":\"juan1515\",\"quantity\":\"[]\"},{\"id\":\"10177\",\"username\":\"diamond17\",\"quantity\":\"[]\"},{\"id\":\"10178\",\"username\":\"luchomaster\",\"quantity\":\"[]\"},{\"id\":\"10209\",\"username\":\"camilo1140\",\"quantity\":\"[]\"}],\"4\":[{\"id\":\"10172\",\"username\":\"carolinayjimmy\",\"quantity\":\"[]\"},{\"id\":\"10184\",\"username\":\"nelson_mejia1\",\"quantity\":\"[]\"},{\"id\":\"10186\",\"username\":\"tico1977\",\"quantity\":\"[]\"},{\"id\":\"10188\",\"username\":\"yulimarolivera0408\",\"quantity\":\"[]\"},{\"id\":\"10181\",\"username\":\"familiasl\",\"quantity\":\"[]\"},{\"id\":\"10191\",\"username\":\"fdam.master\",\"quantity\":\"[]\"},{\"id\":\"10180\",\"username\":\"luzirene\",\"quantity\":\"[]\"}],\"5\":[{\"id\":\"10175\",\"username\":\"yosoy\",\"quantity\":\"[]\"},{\"id\":\"10196\",\"username\":\"atlanrot\",\"quantity\":\"[]\"},{\"id\":\"10198\",\"username\":\"kano\",\"quantity\":\"[]\"},{\"id\":\"10210\",\"username\":\"cupercuevas83\",\"quantity\":\"[]\"},{\"id\":\"10225\",\"username\":\"yolanda2019\",\"quantity\":\"[]\"},{\"id\":\"10195\",\"username\":\"macdfd01\",\"quantity\":\"[]\"},{\"id\":\"10220\",\"username\":\"rmartinez2459\",\"quantity\":\"[]\"},{\"id\":\"10212\",\"username\":\"nancy.roa\",\"quantity\":\"[]\"},{\"id\":\"10182\",\"username\":\"carly\",\"quantity\":\"[]\"},{\"id\":\"10185\",\"username\":\"hernuesga\",\"quantity\":\"[]\"}],\"6\":[{\"id\":\"10176\",\"username\":\"emjv2019\",\"quantity\":\"[]\"},{\"id\":\"10194\",\"username\":\"dserrano\",\"quantity\":\"[]\"},{\"id\":\"10207\",\"username\":\"inari\",\"quantity\":\"[]\"},{\"id\":\"10229\",\"username\":\"sharom2204\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"550\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 14:49:00\\\"}]\"},{\"id\":\"10231\",\"username\":\"santiago2026\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1703\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 21:16:40\\\"}]\"},{\"id\":\"10224\",\"username\":\"m21-01\",\"quantity\":\"[]\"},{\"id\":\"10211\",\"username\":\"wtpropiedad1\",\"quantity\":\"[]\"},{\"id\":\"10187\",\"username\":\"goldteam\",\"quantity\":\"[]\"},{\"id\":\"10227\",\"username\":\"gabi1976\",\"quantity\":\"[]\"}],\"7\":[{\"id\":\"10189\",\"username\":\"reymidas07\",\"quantity\":\"[]\"},{\"id\":\"10193\",\"username\":\"iferrer2019\",\"quantity\":\"[]\"},{\"id\":\"10230\",\"username\":\"fernandolondonoruiz1969\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1569\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 15:35:06\\\"}]\"},{\"id\":\"10213\",\"username\":\"billions\",\"quantity\":\"[]\"},{\"id\":\"10232\",\"username\":\"fannyguz\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"153\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 14:28:49\\\"}]\"}]}', '[]', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-30 15:06:35', '2019-05-30 15:06:35');
INSERT INTO `dbpcn_Indirects` VALUES (102, 10148, '2019-05-30', 230010.00, 10, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":[],\"5\":[{\"id\":\"10233\",\"username\":\"jamessofia10\",\"quantity\":[{\"project\":1,\"allotment_id\":\"504\",\"first_payment\":2255000,\"purchase\":\"2019-05-30 19:06:24\"}]}],\"6\":[{\"id\":\"10234\",\"username\":\"casasfredy\",\"quantity\":[{\"project\":1,\"allotment_id\":\"455\",\"first_payment\":2255000,\"purchase\":\"2019-05-30 20:56:41\"}]},{\"id\":\"10235\",\"username\":\"germanchacon\",\"quantity\":[{\"project\":1,\"allotment_id\":\"428\",\"first_payment\":2255000,\"purchase\":\"2019-05-30 20:58:41\"}]}],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}},\"6\":{\"1\":{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}},\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-30 18:06:01', '2019-05-30 18:06:01');
INSERT INTO `dbpcn_Indirects` VALUES (103, 10208, '2019-05-30', 460020.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10233\",\"username\":\"jamessofia10\",\"quantity\":[{\"project\":1,\"allotment_id\":\"504\",\"first_payment\":2255000,\"purchase\":\"2019-05-30 19:06:24\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-30 18:35:33', '2019-05-30 18:35:33');
INSERT INTO `dbpcn_Indirects` VALUES (104, 10180, '2019-05-31', 0.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[{\"id\":\"10213\",\"username\":\"billions\",\"quantity\":\"[]\"},{\"id\":\"10232\",\"username\":\"fannyguz\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"153\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 14:28:49\\\"}]\"}],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '[]', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-31 00:35:10', '2019-05-31 00:35:10');
INSERT INTO `dbpcn_Indirects` VALUES (105, 10167, '2019-05-31', 460020.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10236\",\"username\":\"brayohan1985\",\"quantity\":[{\"project\":1,\"allotment_id\":\"85\",\"first_payment\":2255000,\"purchase\":\"2019-05-31 14:15:26\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[{\"id\":\"10200\",\"username\":\"luisfercast\",\"quantity\":\"[]\"},{\"id\":\"10201\",\"username\":\"jufesera\",\"quantity\":\"[]\"},{\"id\":\"10202\",\"username\":\"andreyamaya1927\",\"quantity\":\"[]\"},{\"id\":\"10203\",\"username\":\"housedream\",\"quantity\":\"[]\"},{\"id\":\"10204\",\"username\":\"adriana\",\"quantity\":\"[]\"},{\"id\":\"10218\",\"username\":\"lote1mz38\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"709\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-21 19:08:57\\\"}]\"}],\"4\":[{\"id\":\"10205\",\"username\":\"excellentpower\",\"quantity\":\"[]\"},{\"id\":\"10214\",\"username\":\"jesuscardona\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"301\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-17 20:17:49\\\"}]\"}],\"5\":[{\"id\":\"10206\",\"username\":\"heyeve\",\"quantity\":\"[]\"}],\"6\":[],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-31 10:10:01', '2019-05-31 10:10:01');
INSERT INTO `dbpcn_Indirects` VALUES (106, 10168, '2019-05-31', 2760120.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10200\",\"username\":\"luisfercast\",\"quantity\":[{\"project\":1,\"allotment_id\":\"129\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:29:22\"}]},{\"id\":\"10201\",\"username\":\"jufesera\",\"quantity\":[{\"project\":1,\"allotment_id\":\"152\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:29:37\"}]},{\"id\":\"10202\",\"username\":\"andreyamaya1927\",\"quantity\":[{\"project\":1,\"allotment_id\":\"626\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:29:46\"}]},{\"id\":\"10203\",\"username\":\"housedream\",\"quantity\":[{\"project\":1,\"allotment_id\":\"315\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:30:40\"}]},{\"id\":\"10204\",\"username\":\"adriana\",\"quantity\":[{\"project\":1,\"allotment_id\":\"815\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:30:49\"}]},{\"id\":\"10218\",\"username\":\"lote1mz38\",\"quantity\":[{\"project\":1,\"allotment_id\":\"709\",\"first_payment\":2255000,\"purchase\":\"2019-05-21 19:08:57\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[{\"id\":\"10205\",\"username\":\"excellentpower\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"141\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:33:13\\\"}]\"},{\"id\":\"10214\",\"username\":\"jesuscardona\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"301\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-17 20:17:49\\\"}]\"}],\"4\":[{\"id\":\"10206\",\"username\":\"heyeve\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"142\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:33:27\\\"}]\"}],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":6,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-31 13:42:31', '2019-05-31 13:42:31');
INSERT INTO `dbpcn_Indirects` VALUES (107, 10171, '2019-05-31', 0.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[{\"id\":\"10176\",\"username\":\"emjv2019\",\"quantity\":\"[]\"},{\"id\":\"10194\",\"username\":\"dserrano\",\"quantity\":\"[]\"},{\"id\":\"10207\",\"username\":\"inari\",\"quantity\":\"[]\"},{\"id\":\"10229\",\"username\":\"sharom2204\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"550\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 14:49:00\\\"}]\"},{\"id\":\"10231\",\"username\":\"santiago2026\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1703\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 21:16:40\\\"}]\"}],\"4\":[{\"id\":\"10189\",\"username\":\"reymidas07\",\"quantity\":\"[]\"},{\"id\":\"10193\",\"username\":\"iferrer2019\",\"quantity\":\"[]\"},{\"id\":\"10230\",\"username\":\"fernandolondonoruiz1969\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1569\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 15:35:06\\\"}]\"}],\"5\":[{\"id\":\"10190\",\"username\":\"reinamidas\",\"quantity\":\"[]\"},{\"id\":\"10192\",\"username\":\"lnlb2019\",\"quantity\":\"[]\"}],\"6\":[],\"7\":[]}', '[]', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-31 17:33:38', '2019-05-31 17:33:38');
INSERT INTO `dbpcn_Indirects` VALUES (108, 10148, '2019-05-31', 115005.00, 10, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":[{\"id\":\"10236\",\"username\":\"brayohan1985\",\"quantity\":[{\"project\":1,\"allotment_id\":\"85\",\"first_payment\":2255000,\"purchase\":\"2019-05-31 14:15:26\"}]}],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}},\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-05-31 17:59:32', '2019-05-31 17:59:32');
INSERT INTO `dbpcn_Indirects` VALUES (111, 10175, '2019-06-01', 920040.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10189\",\"username\":\"reymidas07\",\"quantity\":[{\"project\":1,\"allotment_id\":\"467\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:40:10\"}]},{\"id\":\"10193\",\"username\":\"iferrer2019\",\"quantity\":[{\"project\":1,\"allotment_id\":\"75\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:41:05\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-06-01 09:34:13', '2019-06-01 09:34:13');
INSERT INTO `dbpcn_Indirects` VALUES (114, 10172, '2019-06-01', 460020.00, 3, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[{\"id\":10189,\"username\":\"reymidas07\",\"quantity\":[{\"project\":1,\"allotment_id\":\"467\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:40:10\"}]},{\"id\":10193,\"username\":\"iferrer2019\",\"quantity\":[{\"project\":1,\"allotment_id\":\"75\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:41:05\"}]}],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":{\"1\":{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}},\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-06-01 12:28:02', '2019-06-01 12:28:02');
INSERT INTO `dbpcn_Indirects` VALUES (115, 10169, '2019-06-01', 0.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[{\"id\":\"10175\",\"username\":\"yosoy\",\"quantity\":\"[]\"},{\"id\":\"10196\",\"username\":\"atlanrot\",\"quantity\":\"[]\"},{\"id\":\"10198\",\"username\":\"kano\",\"quantity\":\"[]\"},{\"id\":\"10210\",\"username\":\"cupercuevas83\",\"quantity\":\"[]\"},{\"id\":\"10225\",\"username\":\"yolanda2019\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"386\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-28 20:31:32\\\"}]\"},{\"id\":\"10195\",\"username\":\"macdfd01\",\"quantity\":\"[]\"},{\"id\":\"10220\",\"username\":\"rmartinez2459\",\"quantity\":\"[]\"},{\"id\":\"10212\",\"username\":\"nancy.roa\",\"quantity\":\"[]\"},{\"id\":\"10182\",\"username\":\"carly\",\"quantity\":\"[]\"},{\"id\":\"10185\",\"username\":\"hernuesga\",\"quantity\":\"[]\"}],\"5\":[{\"id\":\"10176\",\"username\":\"emjv2019\",\"quantity\":\"[]\"},{\"id\":\"10194\",\"username\":\"dserrano\",\"quantity\":\"[]\"},{\"id\":\"10207\",\"username\":\"inari\",\"quantity\":\"[]\"},{\"id\":\"10229\",\"username\":\"sharom2204\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"550\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 14:49:00\\\"}]\"},{\"id\":\"10231\",\"username\":\"santiago2026\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1703\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 21:16:40\\\"}]\"},{\"id\":\"10224\",\"username\":\"m21-01\",\"quantity\":\"[]\"},{\"id\":\"10211\",\"username\":\"wtpropiedad1\",\"quantity\":\"[]\"},{\"id\":\"10187\",\"username\":\"goldteam\",\"quantity\":\"[]\"},{\"id\":\"10227\",\"username\":\"gabi1976\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1705\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-28 21:11:53\\\"}]\"}],\"6\":[{\"id\":\"10189\",\"username\":\"reymidas07\",\"quantity\":\"[]\"},{\"id\":\"10193\",\"username\":\"iferrer2019\",\"quantity\":\"[]\"},{\"id\":\"10230\",\"username\":\"fernandolondonoruiz1969\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1569\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 15:35:06\\\"}]\"},{\"id\":\"10213\",\"username\":\"billions\",\"quantity\":\"[]\"},{\"id\":\"10232\",\"username\":\"fannyguz\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"153\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 14:28:49\\\"}]\"}],\"7\":[{\"id\":\"10190\",\"username\":\"reinamidas\",\"quantity\":\"[]\"},{\"id\":\"10192\",\"username\":\"lnlb2019\",\"quantity\":\"[]\"}]}', '[]', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-06-01 14:34:44', '2019-06-01 14:34:44');
INSERT INTO `dbpcn_Indirects` VALUES (116, 10177, '2019-06-03', 1380060.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10195\",\"username\":\"macdfd01\",\"quantity\":[{\"project\":1,\"allotment_id\":\"292\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:41:21\"}]},{\"id\":\"10220\",\"username\":\"rmartinez2459\",\"quantity\":[{\"project\":1,\"allotment_id\":\"316\",\"first_payment\":2255000,\"purchase\":\"2019-05-23 21:08:04\"}]},{\"id\":\"10212\",\"username\":\"nancy.roa\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1704\",\"first_payment\":2255000,\"purchase\":\"2019-05-16 21:18:20\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":3,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-06-03 11:09:04', '2019-06-03 11:09:04');
INSERT INTO `dbpcn_Indirects` VALUES (117, 10148, '2019-06-05', 517522.50, 10, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":[{\"id\":\"10240\",\"username\":\"georgemaster\",\"quantity\":[{\"project\":1,\"allotment_id\":\"293\",\"first_payment\":2255000,\"purchase\":\"2019-06-05 15:14:30\"}]}],\"5\":[{\"id\":\"10239\",\"username\":\"dpanche2019\",\"quantity\":[{\"project\":1,\"allotment_id\":\"93\",\"first_payment\":2255000,\"purchase\":\"2019-06-05 14:05:09\"}]},{\"id\":\"10241\",\"username\":\"margaritamora\",\"quantity\":[{\"project\":1,\"allotment_id\":\"294\",\"first_payment\":2255000,\"purchase\":\"2019-06-05 15:14:37\"}]},{\"id\":\"10242\",\"username\":\"stellar1\",\"quantity\":[{\"project\":1,\"allotment_id\":\"44\",\"first_payment\":2255000,\"purchase\":\"2019-06-05 17:21:56\"}]}],\"6\":[{\"id\":\"10237\",\"username\":\"mastermind\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1707\",\"first_payment\":2255000,\"purchase\":\"2019-06-04 14:10:09\"}]}],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}},\"5\":{\"1\":{\"cantidad\":3,\"first_payment\":2255000,\"project\":1}},\"6\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}},\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-06-05 13:59:46', '2019-06-05 13:59:46');
INSERT INTO `dbpcn_Indirects` VALUES (118, 10162, '2019-06-05', 0.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[{\"id\":\"10233\",\"username\":\"jamessofia10\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"504\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 19:06:24\\\"}]\"},{\"id\":\"10228\",\"username\":\"peter9301\",\"quantity\":\"[]\"},{\"id\":\"10226\",\"username\":\"joca2689\",\"quantity\":\"[]\"},{\"id\":\"10200\",\"username\":\"luisfercast\",\"quantity\":\"[]\"},{\"id\":\"10201\",\"username\":\"jufesera\",\"quantity\":\"[]\"},{\"id\":\"10202\",\"username\":\"andreyamaya1927\",\"quantity\":\"[]\"},{\"id\":\"10203\",\"username\":\"housedream\",\"quantity\":\"[]\"},{\"id\":\"10204\",\"username\":\"adriana\",\"quantity\":\"[]\"},{\"id\":\"10218\",\"username\":\"lote1mz38\",\"quantity\":\"[]\"}],\"5\":[{\"id\":\"10234\",\"username\":\"casasfredy\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"455\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 20:56:41\\\"}]\"},{\"id\":\"10235\",\"username\":\"germanchacon\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"428\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 20:58:41\\\"}]\"},{\"id\":\"10205\",\"username\":\"excellentpower\",\"quantity\":\"[]\"},{\"id\":\"10214\",\"username\":\"jesuscardona\",\"quantity\":\"[]\"}],\"6\":[{\"id\":\"10206\",\"username\":\"heyeve\",\"quantity\":\"[]\"}],\"7\":[]}', '[]', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-06-05 14:06:50', '2019-06-05 14:06:50');
INSERT INTO `dbpcn_Indirects` VALUES (120, 10167, '2019-06-05', 0.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[{\"id\":\"10205\",\"username\":\"excellentpower\",\"quantity\":\"[]\"},{\"id\":\"10214\",\"username\":\"jesuscardona\",\"quantity\":\"[]\"}],\"5\":[{\"id\":\"10206\",\"username\":\"heyeve\",\"quantity\":\"[]\"}],\"6\":[],\"7\":[]}', '[]', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-06-05 14:39:49', '2019-06-05 14:39:49');
INSERT INTO `dbpcn_Indirects` VALUES (122, 10162, '2019-06-06', 0.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[{\"id\":\"10233\",\"username\":\"jamessofia10\",\"quantity\":\"[]\"},{\"id\":\"10228\",\"username\":\"peter9301\",\"quantity\":\"[]\"},{\"id\":\"10226\",\"username\":\"joca2689\",\"quantity\":\"[]\"},{\"id\":\"10200\",\"username\":\"luisfercast\",\"quantity\":\"[]\"},{\"id\":\"10201\",\"username\":\"jufesera\",\"quantity\":\"[]\"},{\"id\":\"10202\",\"username\":\"andreyamaya1927\",\"quantity\":\"[]\"},{\"id\":\"10203\",\"username\":\"housedream\",\"quantity\":\"[]\"},{\"id\":\"10204\",\"username\":\"adriana\",\"quantity\":\"[]\"},{\"id\":\"10218\",\"username\":\"lote1mz38\",\"quantity\":\"[]\"}],\"5\":[{\"id\":\"10234\",\"username\":\"casasfredy\",\"quantity\":\"[]\"},{\"id\":\"10235\",\"username\":\"germanchacon\",\"quantity\":\"[]\"},{\"id\":\"10205\",\"username\":\"excellentpower\",\"quantity\":\"[]\"},{\"id\":\"10214\",\"username\":\"jesuscardona\",\"quantity\":\"[]\"}],\"6\":[{\"id\":\"10206\",\"username\":\"heyeve\",\"quantity\":\"[]\"}],\"7\":[]}', '[]', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-06-06 18:16:40', '2019-06-06 18:16:40');
INSERT INTO `dbpcn_Indirects` VALUES (123, 10164, '2019-06-10', 920040.00, 3, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10246\",\"username\":\"dkb.musical26\",\"quantity\":[{\"project\":1,\"allotment_id\":\"680\",\"first_payment\":2255000,\"purchase\":\"2019-06-10 16:15:24\"}]},{\"id\":\"10247\",\"username\":\"jhonjaironino\",\"quantity\":[{\"project\":1,\"allotment_id\":\"1711\",\"first_payment\":2255000,\"purchase\":\"2019-06-10 16:18:43\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-06-10 11:27:49', '2019-06-10 11:27:49');
INSERT INTO `dbpcn_Indirects` VALUES (124, 10171, '2019-06-10', 460020.00, 2, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 0, '{\"2\":[{\"id\":\"10245\",\"username\":\"inmobiliariayconstructorazosas\",\"quantity\":[{\"project\":1,\"allotment_id\":\"825\",\"first_payment\":2255000,\"purchase\":\"2019-06-10 16:14:41\"}]}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[{\"id\":\"10189\",\"username\":\"reymidas07\",\"quantity\":\"[]\"},{\"id\":\"10193\",\"username\":\"iferrer2019\",\"quantity\":\"[]\"},{\"id\":\"10230\",\"username\":\"fernandolondonoruiz1969\",\"quantity\":\"[]\"}],\"5\":[{\"id\":\"10190\",\"username\":\"reinamidas\",\"quantity\":\"[]\"},{\"id\":\"10192\",\"username\":\"lnlb2019\",\"quantity\":\"[]\"},{\"id\":\"10238\",\"username\":\"marbit2017\",\"quantity\":\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"696\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-06-04 14:10:16\\\"}]\"}],\"6\":[],\"7\":[]}', '{\"2\":{\"1\":{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}},\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 'sdfssfsfs', '2019-06-10 11:53:26', '2019-06-10 11:53:26');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_bank_accounts
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_bank_accounts`;
CREATE TABLE `dbpcn_bank_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(30) unsigned NOT NULL,
  `legal_entity` int(11) DEFAULT NULL,
  `name_bank` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `titular` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `account_type` text COLLATE utf8_spanish_ci NOT NULL,
  `n_account` text COLLATE utf8_spanish_ci NOT NULL,
  `swift` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `aba` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `certificate` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_check` datetime DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `status` enum('Approved','Rejected','Pending') COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `dbpcn_members` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_bank_accounts
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_bank_accounts` VALUES (19, 10197, NULL, 'Bancolombia', 'Alex Luis Vargas Aragón', '1', '47700012014', 'COLOCOBMCL1', NULL, NULL, NULL, NULL, 'Rejected', '2019-05-15 11:55:11', '2019-05-15 11:55:11');
INSERT INTO `dbpcn_bank_accounts` VALUES (24, 10165, NULL, 'Banco Davivienda', 'Yesid Alexander Fernandez Rodriguez', '1', '027070055200', NULL, NULL, NULL, NULL, NULL, 'Rejected', '2019-05-15 19:54:06', '2019-05-15 19:54:06');
INSERT INTO `dbpcn_bank_accounts` VALUES (27, 10206, NULL, 'BANCOLOMBIA', 'HERMAN YESID VERA SARMIENTO', '1', '93222122811', NULL, NULL, NULL, NULL, NULL, 'Rejected', '2019-05-16 16:01:54', '2019-05-16 16:01:54');
INSERT INTO `dbpcn_bank_accounts` VALUES (29, 10205, NULL, 'BANCOLOMBIA', 'HERMAN YESID VERA SARMIENTO', '1', '93222122811', NULL, NULL, NULL, NULL, NULL, 'Rejected', '2019-05-17 07:03:44', '2019-05-17 07:03:44');
INSERT INTO `dbpcn_bank_accounts` VALUES (34, 10189, 1, 'BANCO DE COLOMBIA', 'ADOLFO CHARRY OLARTE', '1', '77317139431', 'COLOCOBMCL1', NULL, 'administrator/certificate/10189/certificate_10189.pdf', '2019-05-30 14:05:07', 25, 'Approved', '2019-05-21 09:29:26', '2019-05-30 14:05:07');
INSERT INTO `dbpcn_bank_accounts` VALUES (35, 10209, NULL, 'BANCOLOMBIA', 'CAMILO JOSE RIVEROS MANJARRES', '1', '40017371668', NULL, NULL, 'administrator/certificate/10209/certificate_10209.pdf', '2019-05-30 13:47:18', 25, 'Approved', '2019-05-21 13:43:31', '2019-05-30 13:47:18');
INSERT INTO `dbpcn_bank_accounts` VALUES (36, 10212, NULL, 'Banco Av Villas', 'Nancy Frailech Roa Zubieta', '1', '615816738', 'BAVICOBB', NULL, 'administrator/certificate/10212/certificate_10212.pdf', '2019-05-30 14:46:18', 25, 'Approved', '2019-05-21 20:32:22', '2019-05-30 14:46:18');
INSERT INTO `dbpcn_bank_accounts` VALUES (37, 10179, NULL, 'AV VILLAS', 'DARIO ALFONSO QUIJANO PALACIO', '1', '809915155', NULL, NULL, 'administrator/certificate/10179/certificate_10179.pdf', '2019-05-30 13:47:54', 25, 'Approved', '2019-05-22 16:54:13', '2019-05-30 13:47:54');
INSERT INTO `dbpcn_bank_accounts` VALUES (39, 10190, NULL, 'BANCO DE COLOMBIA', 'YOLANDA MARINA VARELA VARGAS', '1', '47728206477', 'COLOCOBMCL1', NULL, 'administrator/certificate/10190/certificate_10190.pdf', '2019-05-30 14:04:30', 25, 'Approved', '2019-05-23 13:18:49', '2019-05-30 14:04:30');
INSERT INTO `dbpcn_bank_accounts` VALUES (40, 1, NULL, 'BANCOLOMBIA', 'PALACIO OFICINA DE CONSTRUCCIONES', '1', '48305332421', NULL, NULL, 'administrator/certificate/1/certificate_1.pdf', '2019-05-27 21:24:32', 25, 'Approved', '2019-05-23 16:44:06', '2019-05-27 21:24:32');
INSERT INTO `dbpcn_bank_accounts` VALUES (41, 10201, NULL, 'Banco Colpatria', 'Juan Felipe Sepulveda Ramirez', '1', '4932007886', NULL, NULL, 'administrator/certificate/10201/certificate_10201.pdf', '2019-05-30 14:01:24', 25, 'Approved', '2019-05-24 12:05:31', '2019-05-30 14:01:24');
INSERT INTO `dbpcn_bank_accounts` VALUES (42, 10199, NULL, 'bancolombia', 'Diana Patricia Torres Penagos', '1', '75648273681', NULL, NULL, 'administrator/certificate/10199/certificate_10199.pdf', '2019-05-30 13:50:28', 25, 'Approved', '2019-05-24 13:28:44', '2019-05-30 13:50:28');
INSERT INTO `dbpcn_bank_accounts` VALUES (43, 10164, NULL, 'DAVIVIENDA', 'Ricardo Andres Davila Fuentes', '1', '0570027070044113', NULL, NULL, 'administrator/certificate/10164/certificate_10164.pdf', '2019-05-30 13:57:13', 25, 'Approved', '2019-05-27 15:31:36', '2019-05-30 13:57:13');
INSERT INTO `dbpcn_bank_accounts` VALUES (45, 10169, NULL, 'BBVA COLOMBIA', 'Adel de Jesus Solano Mendoza', '1', '0367074978', NULL, NULL, 'administrator/certificate/10169/certificate_10169.pdf', '2019-05-30 13:45:22', 25, 'Approved', '2019-05-27 17:13:12', '2019-05-30 13:45:22');
INSERT INTO `dbpcn_bank_accounts` VALUES (46, 10180, NULL, 'BANCOLOMBIA S.A', 'LUZ IRENE OROZCO GARCIA', '1', '25041582726', NULL, NULL, 'administrator/certificate/10180/certificate_10180.pdf', '2019-05-30 14:02:40', 25, 'Approved', '2019-05-27 20:29:30', '2019-05-30 14:02:40');
INSERT INTO `dbpcn_bank_accounts` VALUES (47, 10226, NULL, 'DAVIVIENDA', 'LEYDDY JOHANA CASAS CHACON', '1', '0550466800023080', NULL, NULL, 'administrator/certificate/10226/certificate_10226.pdf', '2019-05-30 13:58:34', 25, 'Approved', '2019-05-28 16:44:04', '2019-05-30 13:58:34');
INSERT INTO `dbpcn_bank_accounts` VALUES (48, 10171, NULL, 'Bancolombia', 'Elias Alberto Bernier Manjarres', '1', '43458557081', NULL, NULL, 'administrator/certificate/10171/certificate_10171.pdf', '2019-05-30 13:51:22', 25, 'Approved', '2019-05-29 07:59:49', '2019-05-30 13:51:22');
INSERT INTO `dbpcn_bank_accounts` VALUES (49, 10161, NULL, 'BANCOLOMBIA', 'GIN CONSULTORES SAS', '2', '48700015002', NULL, NULL, 'administrator/certificate/10161/certificate_10161.pdf', '2019-05-30 13:45:54', 25, 'Approved', '2019-05-29 08:40:46', '2019-05-30 13:45:54');
INSERT INTO `dbpcn_bank_accounts` VALUES (50, 10148, NULL, 'BANCOLOMBIA', 'GIN CONSULTORES SAS', '2', '48700015002', NULL, NULL, 'administrator/certificate/10148/certificate_10148.pdf', '2019-05-30 14:44:34', 25, 'Approved', '2019-05-29 08:43:28', '2019-05-30 14:44:34');
INSERT INTO `dbpcn_bank_accounts` VALUES (51, 10196, NULL, 'BBVA COLOMBIA', 'Angel Anibal Rojas Triana', '1', '0765000807', NULL, NULL, 'administrator/certificate/10196/certificate_10196.pdf', '2019-05-29 15:45:22', 25, 'Rejected', '2019-05-29 09:26:30', '2019-05-29 15:45:22');
INSERT INTO `dbpcn_bank_accounts` VALUES (52, 10230, NULL, 'Banco Caja Social', 'Marlon Fernando Londoño Ruiz', '1', '24083901243', NULL, NULL, 'administrator/certificate/10230/certificate_10230.pdf', '2019-05-30 14:45:51', 25, 'Approved', '2019-05-29 12:03:51', '2019-05-30 14:45:51');
INSERT INTO `dbpcn_bank_accounts` VALUES (53, 10181, NULL, 'Davivienda', 'María Fernanda Leyva', '1', '488404428507', 'CAFECOBBXXX', 'CAFECOBBXXX', 'administrator/certificate/10181/certificate_10181.pdf', '2019-05-30 14:43:21', 25, 'Approved', '2019-05-29 14:46:03', '2019-05-30 14:43:21');
INSERT INTO `dbpcn_bank_accounts` VALUES (57, 10215, NULL, 'bancolombia', 'sergio Parra', '1', '69867200568', 'colocobmxxx', NULL, 'administrator/certificate/10215/certificate_10215.pdf', '2019-05-30 14:47:01', 25, 'Approved', '2019-05-30 08:48:46', '2019-05-30 14:47:01');
INSERT INTO `dbpcn_bank_accounts` VALUES (58, 10149, NULL, 'BANCOLOMBIA', 'PALACIO OFICINA DE CONSTRUCCIONES', '1', '48305332421', NULL, NULL, 'administrator/certificate/10149/certificate_10149.pdf', '2019-05-30 15:44:25', 25, 'Approved', '2019-05-30 10:15:33', '2019-05-30 15:44:25');
INSERT INTO `dbpcn_bank_accounts` VALUES (59, 10172, NULL, 'Bancolombia', 'María Carolina Ascanio Botello', '1', '04483899799', 'COLOCOBM', 'COLOCOBMXXX', 'administrator/certificate/10172/certificate_10172.pdf', '2019-05-31 12:40:40', 25, 'Approved', '2019-05-30 10:48:05', '2019-05-31 12:40:40');
INSERT INTO `dbpcn_bank_accounts` VALUES (60, 10151, NULL, 'BANCOLOMBIA', 'FLAVIO ANDRES HERNANDEZ RAMIREZ', '1', '08300022341', NULL, NULL, 'administrator/certificate/10151/certificate_10151.pdf', '2019-05-31 12:41:31', 25, 'Approved', '2019-05-30 13:07:28', '2019-05-31 12:41:31');
INSERT INTO `dbpcn_bank_accounts` VALUES (62, 10203, NULL, 'bancolombia', 'Omar Alonso Zamora Miranda', '1', '86743078081', NULL, NULL, 'administrator/certificate/10203/certificate_10203.pdf', '2019-05-31 18:56:55', 25, 'Approved', '2019-05-30 16:32:46', '2019-05-31 18:56:55');
INSERT INTO `dbpcn_bank_accounts` VALUES (63, 10198, NULL, 'DAVIVIENDA', 'ORLANDO QUINTERO GUEVARA', '1', '0090500718029', NULL, NULL, 'administrator/certificate/10198/certificate_10198.pdf', '2019-05-31 18:57:24', 25, 'Approved', '2019-05-30 17:48:29', '2019-05-31 18:57:24');
INSERT INTO `dbpcn_bank_accounts` VALUES (64, 10207, NULL, 'MULTIBANCA COLPATRIA', 'MARGARITA ROJAS BETANCUR', '1', '2006857995', NULL, NULL, 'administrator/certificate/10207/certificate_10207.pdf', '2019-05-31 18:57:10', 25, 'Approved', '2019-05-30 17:59:28', '2019-05-31 18:57:10');
INSERT INTO `dbpcn_bank_accounts` VALUES (65, 10176, NULL, 'BanColombia', 'Edwin Moises Jaraba Visbal', '1', '03013891476', 'COLOCOBM', 'COLOCOBM', 'administrator/certificate/10176/certificate_10176.pdf', '2019-05-31 18:56:07', 25, 'Approved', '2019-05-30 18:08:32', '2019-05-31 18:56:07');
INSERT INTO `dbpcn_bank_accounts` VALUES (68, 10220, NULL, 'DAVIVIENDA', 'ROBINSON MARTINEZ CALDERON', '1', '009600111331', NULL, NULL, 'administrator/certificate/10220/certificate_10220.pdf', '2019-06-04 15:34:14', 25, 'Approved', '2019-05-31 14:08:27', '2019-06-04 15:34:14');
INSERT INTO `dbpcn_bank_accounts` VALUES (69, 10208, NULL, 'BANCOLOMBIA', 'JOAQUIN CONTRERAS', '1', '62675089952', NULL, NULL, 'administrator/certificate/10208/certificate_10208.pdf', '2019-06-04 19:23:33', 25, 'Approved', '2019-05-31 14:13:23', '2019-06-04 19:23:33');
INSERT INTO `dbpcn_bank_accounts` VALUES (70, 10222, NULL, 'BANCOLOMBIA', 'CLAUDIA CAMACHO', '1', '03515973311', NULL, NULL, 'administrator/certificate/10222/certificate_10222.pdf', '2019-06-04 15:31:20', 25, 'Approved', '2019-05-31 14:24:02', '2019-06-04 15:31:20');
INSERT INTO `dbpcn_bank_accounts` VALUES (71, 10225, NULL, 'DAVIVIENDA', 'Juan Jose Onofre Sierra', '1', '286000213301', 'CAFECOBB', NULL, 'administrator/certificate/10225/certificate_10225.pdf', '2019-06-04 15:35:20', 25, 'Approved', '2019-05-31 15:47:28', '2019-06-04 15:35:20');
INSERT INTO `dbpcn_bank_accounts` VALUES (72, 10178, NULL, 'bancolombia', 'luis alberto alfonso orozco', '1', '91200464929', NULL, NULL, 'administrator/certificate/10178/certificate_10178.pdf', '2019-06-04 19:21:52', 25, 'Approved', '2019-05-31 20:30:07', '2019-06-04 19:21:52');
INSERT INTO `dbpcn_bank_accounts` VALUES (73, 10177, NULL, 'DAVIVIENDA S.A.', 'DIANA MARCELA LEYVA VARGAS', '1', '007100863039', 'CAFECOBB', NULL, 'administrator/certificate/10177/certificate_10177.pdf', '2019-06-04 19:21:09', 25, 'Approved', '2019-06-03 11:06:11', '2019-06-04 19:21:09');
INSERT INTO `dbpcn_bank_accounts` VALUES (74, 10185, NULL, 'Bancolombia', 'hernando acosta', '1', '21321535442', NULL, NULL, 'administrator/certificate/10185/certificate_10185.pdf', '2019-06-04 19:30:03', 25, 'Approved', '2019-06-03 14:12:05', '2019-06-04 19:30:03');
INSERT INTO `dbpcn_bank_accounts` VALUES (75, 10234, NULL, 'BANCOLOMBIA', 'FREDY EDUARDO CASAS PEREZ', '1', '80686549040', NULL, NULL, 'administrator/certificate/10234/certificate_10234.pdf', '2019-06-04 19:30:36', 25, 'Approved', '2019-06-04 11:45:30', '2019-06-04 19:30:36');
INSERT INTO `dbpcn_bank_accounts` VALUES (76, 10191, NULL, 'Bancolombia', 'Franky Ernesto Lizarazo Riaño', '1', '69850895872', NULL, NULL, 'administrator/certificate/10191/certificate_10191.pdf', '2019-06-04 21:57:28', 25, 'Approved', '2019-06-04 13:15:08', '2019-06-04 21:57:28');
INSERT INTO `dbpcn_bank_accounts` VALUES (80, 10183, NULL, 'Bancolombia', 'Juan David Sánchez Ruano', '1', '66292348941', NULL, NULL, 'administrator/certificate/10183/certificate_10183.pdf', '2019-06-06 15:18:53', 19, 'Approved', '2019-06-05 16:17:59', '2019-06-06 15:18:53');
INSERT INTO `dbpcn_bank_accounts` VALUES (81, 10167, NULL, 'Davivienda', 'Hugo Tellez Justiniano', '1', '026500131532', NULL, NULL, 'administrator/certificate/10167/certificate_10167.pdf', '2019-06-06 13:01:41', 19, 'Approved', '2019-06-05 16:38:28', '2019-06-06 13:01:41');
INSERT INTO `dbpcn_bank_accounts` VALUES (82, 10162, NULL, 'Banco davivienda', 'HUGO TELLEZ JUSTINIANO', '1', '026500131532', NULL, NULL, 'administrator/certificate/10162/certificate_10162.pdf', '2019-06-06 13:01:05', 19, 'Approved', '2019-06-05 16:42:54', '2019-06-06 13:01:05');
INSERT INTO `dbpcn_bank_accounts` VALUES (83, 10168, NULL, 'Davivienda', 'Hugo Tellez Justiniano', '1', '026500131532', NULL, NULL, 'administrator/certificate/10168/certificate_10168.pdf', '2019-06-06 13:01:23', 19, 'Approved', '2019-06-05 16:44:38', '2019-06-06 13:01:23');
INSERT INTO `dbpcn_bank_accounts` VALUES (84, 10223, NULL, 'BANCOLOMBIA', 'Lina Jimena Cancino La Rotta', '1', '94660072190', NULL, NULL, 'administrator/certificate/10223/certificate_10223.pdf', '2019-06-06 22:13:41', 19, 'Approved', '2019-06-06 10:19:29', '2019-06-06 22:13:41');
INSERT INTO `dbpcn_bank_accounts` VALUES (85, 10175, NULL, 'Davivienda', 'Denilce maria florez cardona', '1', '026170880871', NULL, NULL, 'administrator/certificate/10175/certificate_10175.pdf', '2019-06-07 17:29:34', 19, 'Approved', '2019-06-06 16:24:19', '2019-06-07 17:29:34');
INSERT INTO `dbpcn_bank_accounts` VALUES (86, 10229, NULL, 'BANCOLOMBIA', 'SANDRA PATRICIA BUSTAMANTE GONZALEZ', '1', '88256624707', 'COLOCOBM', NULL, 'administrator/certificate/10229/certificate_10229.pdf', '2019-06-07 17:29:29', 19, 'Approved', '2019-06-06 16:28:54', '2019-06-07 17:29:29');
INSERT INTO `dbpcn_bank_accounts` VALUES (87, 10216, NULL, 'BANCOLOMBIA S.A', 'BYRON ANDRES OCHOA NIÑO', '1', '91200746801', 'COLOCOBMBGA', NULL, 'administrator/certificate/10216/certificate_10216.pdf', '2019-06-07 17:29:24', 19, 'Approved', '2019-06-06 23:45:00', '2019-06-07 17:29:24');
INSERT INTO `dbpcn_bank_accounts` VALUES (88, 10236, NULL, 'Davivienda', 'Braulio Yohan giraldo Restrepo Cc', '1', '488404442219', NULL, NULL, 'administrator/certificate/10236/certificate_10236.pdf', NULL, NULL, 'Pending', '2019-06-07 19:43:33', '2019-06-07 19:43:33');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_countries
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_countries`;
CREATE TABLE `dbpcn_countries` (
  `country_master_id` int(11) NOT NULL,
  `country_master_name` varchar(50) DEFAULT NULL,
  `country_master_sig` char(2) DEFAULT NULL,
  `country_flag` varchar(100) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `continents_id` int(11) DEFAULT NULL,
  `language` char(2) NOT NULL,
  PRIMARY KEY (`country_master_id`) USING BTREE,
  KEY `fk_countries_continents` (`continents_id`) USING BTREE,
  CONSTRAINT `fk_countries_continents` FOREIGN KEY (`continents_id`) REFERENCES `continents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_countries
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_countries` VALUES (2, 'Albania', 'AL', 'Albania.png', '355', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (3, 'Algeria', 'DZ', 'Algeria.png', '213', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (4, 'American Samoa', 'AS', 'American_Samoa.png', '1-684', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (5, 'Andorra', 'AD', 'Andorra.png', '376', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (6, 'Angola', 'AO', 'Angola.png', '244', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (7, 'Anguilla', 'AI', 'Anguilla.png', '1-264', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (8, 'Antarctica', 'AQ', NULL, '672', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (9, 'Antigua And Barbuda', 'AG', 'Antigua_and_Barbuda.png', '1-268', 2, 'en');
INSERT INTO `dbpcn_countries` VALUES (10, 'Argentina', 'AR', 'Argentina.png', '54', 2, 'es');
INSERT INTO `dbpcn_countries` VALUES (11, 'Armenia', 'AM', 'Armenia.png', '374', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (12, 'Aruba', 'AW', 'Aruba.png', '297', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (13, 'Australia', 'AU', 'Australia.png', '61', 5, 'en');
INSERT INTO `dbpcn_countries` VALUES (14, 'Austria', 'AT', 'Austria.png', '43', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (15, 'Azerbaijan', 'AZ', 'Azerbaijan.png', '994', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (16, 'Bahamas', 'BS', 'Bahamas.png', '1-242', 2, 'en');
INSERT INTO `dbpcn_countries` VALUES (17, 'Bahrain', 'BH', 'Bahrain.png', '973', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (18, 'Bangladesh', 'BD', 'Bangladesh.png', '880', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (19, 'Barbados', 'BB', 'Barbados.png', '1-246', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (20, 'Belarus', 'BY', 'Belarus.png', '375', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (21, 'Belgium', 'BE', 'Belgium.png', '32', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (22, 'Belize', 'BZ', 'Belize.png', '501', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (23, 'Benin', 'BJ', 'Benin.png', '229', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (24, 'Bermuda', 'BM', 'Bermuda.png', '1-441', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (25, 'Bhutan', 'BT', 'Bhutan.png', '975', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (26, 'Bolivia', 'BO', 'Bolivia.png', '591', 1, 'es');
INSERT INTO `dbpcn_countries` VALUES (27, 'Bosnia and Herzegovina', 'BA', 'Bosnia.png', '387', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (28, 'Botswana', 'BW', 'Botswana.png', '267', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (29, 'Bouvet Island', 'BV', NULL, NULL, 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (30, 'Brazil', 'BR', 'Brazil.png', '55', 1, 'pt');
INSERT INTO `dbpcn_countries` VALUES (31, 'British Indian Ocean Territory', 'IO', NULL, '246', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (32, 'Brunei', 'BN', 'Brunei.png', '673', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (33, 'Bulgaria', 'BG', 'Bulgaria.png', '359', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (34, 'Burkina Faso', 'BF', 'Burkina_Faso.png', '226', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (35, 'Burundi', 'BI', 'Burundi.png', '257', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (36, 'Cambodia', 'KH', 'Cambodia.png', '855', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (37, 'Cameroon', 'CM', 'Cameroon.png', '237', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (38, 'Canada', 'CA', 'Canada.png', '1', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (39, 'Cape verde', 'CV', 'Cape_Verde.png', '238', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (40, 'Cayman Islands', 'KY', 'Cayman_Islands.png', '1-345', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (41, 'Central African Republic', 'CF', 'Central_African_Republic.png', '236', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (42, 'Chad', 'TD', 'Chad.png', '235', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (43, 'Chile', 'CL', 'Chile.png', '56', 1, 'es');
INSERT INTO `dbpcn_countries` VALUES (44, 'China', 'CN', 'China.png', '86', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (45, 'Christmas Island', 'CX', 'Christmas_Island.png', '61', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (46, 'Cocos (keeling) Islands', 'CC', 'Cocos_(Keeling)_Islands.png', '61', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (47, 'Colombia', 'CO', 'Colombia.png', '57', 1, 'es');
INSERT INTO `dbpcn_countries` VALUES (48, 'Comoros', 'KM', 'Comoros.png', '269', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (49, 'Congo', 'CG', 'Congo.png', '242', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (50, 'Cook Islands', 'CK', 'Cook_Islands.png', '682', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (51, 'Costa Rica', 'CR', 'Costa_Rica.png', '506', 1, 'es');
INSERT INTO `dbpcn_countries` VALUES (52, 'Croatia', 'HR', 'Croatia.png', '385', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (53, 'Cuba', 'CU', 'Cuba.png', '53', 1, 'es');
INSERT INTO `dbpcn_countries` VALUES (54, 'Cyprus', 'CY', 'Cyprus.png', '357', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (55, 'Czech Republic', 'CZ', 'Czech_Republic.png', '420', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (56, 'Dem Rep of Congo (Zaire)', 'ZR', 'Democratic_Republic_of_the_Congo.png', NULL, 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (57, 'Denmark', 'DK', 'Denmark.png', '45', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (58, 'Djibouti', 'DJ', 'Djibouti.png', '253', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (59, 'Dominica', 'DM', 'Dominica.png', '1-767', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (60, 'Dominican Republic', 'DO', 'Dominican_Republic.png', '1-809', 1, 'es');
INSERT INTO `dbpcn_countries` VALUES (61, 'East Timor', 'TP', NULL, '670', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (62, 'Ecuador', 'EC', 'Ecuador.png', '593', 1, 'es');
INSERT INTO `dbpcn_countries` VALUES (63, 'Egypt', 'EG', 'Egypt.png', '20', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (64, 'El Salvador', 'SV', 'El_Salvador.png', '503', 1, 'es');
INSERT INTO `dbpcn_countries` VALUES (65, 'England', 'UK', NULL, NULL, 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (66, 'Equatorial Guinea', 'GQ', 'Equatorial_Guinea.png', '240', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (68, 'Estonia', 'EE', 'Estonia.png', '372', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (69, 'Ethiopia', 'ET', 'Ethiopia.png', '251', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (70, 'Falkland Islands', 'FK', 'Falkland_Islands.png', '500	', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (71, 'Faroe Islands', 'FO', 'Faroe_Islands.png', '298', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (72, 'Fiji', 'FJ', 'Fiji.png', '679', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (73, 'Finland', 'FI', 'Finland.png', '358', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (74, 'France', 'FR', 'France.png', '33', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (75, 'French Guiana', 'GF', 'French_Guiana.png', '594', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (76, 'French Polynesia', 'PF', 'French_Polynesia.png', '689', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (77, 'French Southern Territories', 'TF', 'French_Southern_and_Antarctic_Lands.png', NULL, 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (78, 'Gabon', 'GA', 'Gabon.png', '241', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (79, 'Gambia', 'GM', 'Gambia.png', '220', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (80, 'Georgia', 'GE', 'Georgia.png', '995', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (81, 'Germany', 'DE', 'Germany.png', '49', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (82, 'Ghana', 'GH', 'Ghana.png', '233', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (83, 'Gibraltar', 'GI', 'Gibraltar.png', '350', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (84, 'Greece', 'GR', 'Greece.png', '30', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (85, 'Greenland', 'GL', 'Greenland.png', '299', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (86, 'Grenada', 'GD', 'Grenada.png', '1-473', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (87, 'Guadeloupe', 'GP', 'Guadeloupe.png', '590', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (88, 'Guam', 'GU', 'Guam.png', '1-671', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (89, 'Guatemala', 'GT', 'Guatemala.png', '502', 1, 'es');
INSERT INTO `dbpcn_countries` VALUES (90, 'Guinea', 'GN', 'Guinea.png', '224', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (91, 'Guinea-Bissau', 'GW', 'Guinea_Bissau.png', '245', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (92, 'Guyana', 'GY', 'Guyana.png', '592	', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (93, 'Haiti', 'HT', 'Haiti.png', '509', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (94, 'Heard and McDonald Islands', 'HM', NULL, NULL, 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (95, 'Honduras', 'HN', 'Honduras.png', '504', 1, 'es');
INSERT INTO `dbpcn_countries` VALUES (96, 'Hungary', 'HU', 'Hungary.png', '36', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (97, 'Iceland', 'IS', 'Iceland.png', '354	', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (98, 'India', 'IN', 'India.png', '91', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (99, 'Indonesia', 'ID', 'Indonesia.png', '62', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (100, 'Iran', 'IR', 'Iran.png', '98', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (101, 'Iraq', 'IQ', 'Iraq.png', '964', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (102, 'Ireland', 'IE', 'Ireland.png', '353', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (103, 'Israel', 'IL', 'Israel.png', '972', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (104, 'Italy', 'IT', 'Italy.png', '39', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (105, 'Ivory Coast', 'CI', NULL, '225', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (106, 'Jamaica', 'JM', 'Jamaica.png', '1-876', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (107, 'Japan', 'JP', 'Japan.png', '81', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (108, 'Jordan', 'JO', 'Jordan.png', '962', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (109, 'Kazakhstan', 'KZ', 'Kazakhstan.png', '7', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (110, 'Kenya', 'KE', 'Kenya.png', '254', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (111, 'Kiribati', 'KI', 'Kiribati.png', '686', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (113, 'Korea (D.P.R.)', 'KP', '', NULL, 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (114, 'Kuwait', 'KW', 'Kuwait.png', '965', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (115, 'Kyrgyzstan', 'KG', 'Kyrgyzstan.png', '996', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (116, 'Laos', 'LA', 'Laos.png', '856', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (117, 'Latvia', 'LV', 'Latvia.png', '371', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (118, 'Lebanon', 'LB', 'Lebanon.png', '961', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (119, 'Lesotho', 'LS', 'Lesotho.png', '266', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (120, 'Liberia', 'LR', 'Liberia.png', '231', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (121, 'Libya', 'LY', 'Libya.png', '218', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (122, 'Liechtenstein', 'LI', 'Liechtenstein.png', '423', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (123, 'Lithuania', 'LT', 'Lithuania.png', '370', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (124, 'Luxembourg', 'LU', 'Luxembourg.png', '352', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (125, 'Macedonia', 'MK', 'Macedonia.png', '389', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (126, 'Madagascar', 'MG', 'Madagascar.png', '261', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (127, 'Malawi', 'MW', 'Malawi.png', '265', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (128, 'Malaysia', 'MY', 'Malaysia.png', '60', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (129, 'Maldives', 'MV', 'Maldives.png', '960', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (130, 'Mali', 'ML', 'Mali.png', '223', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (131, 'Malta', 'MT', 'Malta.png', '356', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (132, 'Marshall Islands', 'MH', 'Marshall_Islands.png', '692', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (133, 'Martinique', 'MQ', 'Martinique.png', '596', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (134, 'Mauritania', 'MR', 'Mauritania.png', '222', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (135, 'Mauritius', 'MU', 'Mauritius.png', '230', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (136, 'Mayotte', 'YT', NULL, '262', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (137, 'Mexico', 'MX', 'Mexico.png', '52', 1, 'es');
INSERT INTO `dbpcn_countries` VALUES (138, 'Micronesia', 'FM', 'Micronesia.png', '691', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (139, 'Moldova', 'MD', 'Moldova.png', '373', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (140, 'Monaco', 'MC', 'Monaco.png', '377', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (141, 'Mongolia', 'MN', 'Mongolia.png', '976', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (142, 'Montserrat', 'MS', 'Montserrat.png', '1-664', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (143, 'Morocco', 'MA', 'Morocco.png', '212', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (144, 'Mozambique', 'MZ', 'Mozambique.png', '258', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (145, 'Myanmar', 'MM', 'Myanmar.png', '95', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (146, 'Namibia', 'NA', 'Namibia.png', '264', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (147, 'Nauru', 'NR', 'Nauru.png', '674', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (148, 'Nepal', 'NP', 'Nepal.png', '977', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (149, 'Netherlands', 'NL', 'Netherlands.png', '31', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (153, 'Nicaragua', 'NI', 'Nicaragua.png', '505', 1, 'es');
INSERT INTO `dbpcn_countries` VALUES (154, 'Niger', 'NE', 'Niger.png', '227', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (155, 'Nigeria', 'NG', 'Nigeria.png', '234', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (156, 'Niue', 'NU', 'Niue.png', '683', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (157, 'Norfolk Island', 'NF', 'Norfolk_Island.png', '672', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (158, 'Northern Mariana Islands', 'MP', 'Northern_Mariana_Islands_flag_300.png', '1-670', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (159, 'Norway', 'NO', 'Norway.png', '47', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (160, 'Oman', 'OM', 'Oman.png', '968', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (162, 'Pakistan', 'PK', 'Pakistan.png', '92', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (163, 'Palau', 'PW', 'Palau.png', '680', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (164, 'Palestinian Territory, Occupie', 'PS', NULL, '970', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (165, 'Panama', 'PA', 'Panama.png', '507', 1, 'es');
INSERT INTO `dbpcn_countries` VALUES (166, 'Papua new Guinea', 'PW', 'Papua_New_Guinea.png', '675', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (167, 'Paraguay', 'PY', 'Paraguay.png', '595', 1, 'es');
INSERT INTO `dbpcn_countries` VALUES (168, 'Peru', 'PE', 'Peru.png', '51', 1, 'es');
INSERT INTO `dbpcn_countries` VALUES (169, 'Philippines', 'PH', 'Philippines.png', '63', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (170, 'Pitcairn Island', 'PN', 'Pitcairn_Islands.png', '64', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (171, 'Poland', 'PL', 'Poland.png', '48', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (172, 'Portugal', 'PT', 'Portugal.png', '351', 1, 'pt');
INSERT INTO `dbpcn_countries` VALUES (173, 'Puerto Rico', 'PR', 'Puerto_Rico.png', '1-787', 1, 'es');
INSERT INTO `dbpcn_countries` VALUES (174, 'Qatar', 'QA', 'Qatar.png', '974', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (175, 'Reunion', 'RE', NULL, '262', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (176, 'Romania', 'RO', 'Romania.png', '40', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (177, 'Russia', 'RU', 'russia.png', '7', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (178, 'Rwanda', 'RW', 'Rwanda.png', '250', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (179, 'Saint Kitts And Nevis', 'KN', 'Saint_Kitts_and_Nevis.png', '590', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (180, 'Saint Lucia', 'LC', 'Saint_Lucia.png', NULL, 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (181, 'Saint Vincent And The Grenadin', 'VC', 'Saint_Vicent_and_the_Grenadines.png', NULL, 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (182, 'Samoa', 'WS', 'Samoa.png', '685', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (183, 'San Marino', 'SM', 'San_Marino.png', '378', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (184, 'Sao Tome and Principe', 'ST', 'Sao_Tome_and_Principe.png', '239', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (185, 'Saudi Arabia', 'SA', 'Saudi_Arabia.png', '966', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (186, 'Scotland', 'UK', '500px-Flag_of_Scotland.svg.png', '44', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (187, 'Senegal', 'SN', 'Senegal.png', '221', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (188, 'Seychelles', 'SC', 'Seychelles.png', '248', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (189, 'Sierra Leone', 'SL', 'Sierra_Leone.png', '232', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (190, 'Singapore', 'SG', 'Singapore.png', '65', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (191, 'Slovak Republic', 'SK', 'Slovakia.png', '421', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (192, 'Slovenia', 'SI', 'Slovenia.png', '421', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (193, 'Solomon Islands', 'SB', 'Soloman_Islands.png', '677', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (194, 'Somalia', 'SO', 'Somalia.png', '252', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (195, 'South Africa', 'ZA', 'South_Africa.png', '27', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (196, 'South Georgia, Sth Sandwich Islands', 'GS', 'South_Georgia.png', NULL, 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (197, 'Spain', 'ES', 'Spain.png', '34', 1, 'es');
INSERT INTO `dbpcn_countries` VALUES (198, 'Sri Lanka', 'LK', 'Sri_Lanka.png', '94', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (199, 'St Helena', 'SH', 'St_helena_flag_300.png', '290', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (200, 'St Pierre and Miquelon', 'PM', NULL, '508', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (201, 'Sudan', 'SD', 'Sudan.png', '249', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (202, 'Suriname', 'SR', 'Suriname.png', '597', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (203, 'Svalbard And Jan Mayen Islands', 'SJ', NULL, NULL, 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (204, 'Swaziland', 'SZ', 'Swaziland.png', '268', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (205, 'Sweden', 'SE', 'Sweden.png', '46', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (206, 'Switzerland', 'CH', 'Switzerland.png', '41', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (207, 'Syria', 'SY', 'Syria.png', '963', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (208, 'Taiwan', 'TW', 'Taiwan.png', '886', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (209, 'Tajikistan', 'TJ', 'Tajikistan.png', '992', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (210, 'Tanzania', 'TZ', 'Tanzania.png', '255', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (211, 'Thailand', 'TH', 'Thailand.png', '66', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (212, 'Togo', 'TG', 'Togo.png', '228', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (213, 'Tokelau', 'TK', 'Flag_of_Tokelau.svg.png', '690', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (214, 'Tonga', 'TO', 'Tonga.png', '676', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (215, 'Trinidad And Tobago', 'TT', 'Trinidad_and_Tobago.png', '1-868', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (216, 'Tunisia', 'TN', 'Tunisia.png', '216', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (217, 'Turkey', 'TR', 'Turkey.png', '90', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (218, 'Turkmenistan', 'TM', 'Turkmenistan.png', '993', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (219, 'Turks And Caicos Islands', 'TC', 'Turks_and_Caicos_Islands.png', '1-649', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (220, 'Tuvalu', 'TV', 'Tuvalu.png', '688', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (221, 'Uganda', 'UG', 'Uganda.png', '256', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (222, 'Ukraine', 'UA', 'Ukraine.png', '380', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (223, 'United Arab Emirates', 'AE', NULL, '971', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (224, 'United States', 'US', 'United_States_of_America.png', '1', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (225, 'Uruguay', 'UY', 'Uruguay.png', '598', 1, 'es');
INSERT INTO `dbpcn_countries` VALUES (226, 'Uzbekistan', 'UZ', 'Uzbekistan.png', '998', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (227, 'Vanuatu', 'VU', 'Vanuatu.png', '678', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (228, 'Vatican City State (Holy See)', 'VA', 'Vatican_City.png', '678', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (229, 'Venezuela', 'VE', 'Venezuela.png', '58', 1, 'es');
INSERT INTO `dbpcn_countries` VALUES (230, 'Vietnam', 'VN', 'Vietnam.png', '84', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (231, 'Virgin Islands (British)', 'VG', NULL, '1-340', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (232, 'Virgin Islands (US)', 'VI', NULL, '1-340', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (233, 'Wales', 'UK', 'Flag_of_Wales.png', '44', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (234, 'Wallis And Futuna Islands', 'WF', 'Wallis_and_Futuna.png', '681', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (235, 'Western Sahara', 'EH', 'Western_Sahara.png', '212', 1, 'en');
INSERT INTO `dbpcn_countries` VALUES (236, 'Yemen', 'YE', 'Yemen.png', '967', 3, 'en');
INSERT INTO `dbpcn_countries` VALUES (237, 'Zambia', 'ZM', 'Zambia.png', '260', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (238, 'Zimbabwe', 'ZW', 'Zimbabwe.png', '263', 4, 'en');
INSERT INTO `dbpcn_countries` VALUES (239, 'Serbia', 'RS', 'Serbia.png', '381', 1, 'en');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_customer_knowledge_nat
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_customer_knowledge_nat`;
CREATE TABLE `dbpcn_customer_knowledge_nat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `allotment_id` int(11) DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `secondname` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `firstlastname` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `secondlastname` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `place_of_birth` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nationality` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `civil_status` enum('Union_libre','Separado','Viudo','Divorciado','Casado','Soltero') COLLATE utf8_spanish_ci DEFAULT NULL,
  `gender` enum('Femenino','Masculino') COLLATE utf8_spanish_ci DEFAULT NULL,
  `hobby` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `number_of_children` int(11) DEFAULT NULL,
  `residence_address` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `city_of_residence` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `residence_phone` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `celular_phone` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `profession` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `current_occupation` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `company_where_you_work` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `job_that_performs` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `work_address` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `work_city` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `work_phone` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `independent_person` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `code_ciiu` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `are_you_a_publicly_exposed_person` enum('No','Si') COLLATE utf8_spanish_ci DEFAULT NULL,
  `family_ties_with_a_publicly_exposed_person` enum('No','Si') COLLATE utf8_spanish_ci DEFAULT NULL,
  `name_surnames` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `identification_number` int(11) DEFAULT NULL,
  `relationship` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `position_or_activity` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `total_activos` decimal(50,2) DEFAULT NULL,
  `total_pasivos` decimal(50,2) DEFAULT NULL,
  `total_patrimonio` decimal(50,2) DEFAULT NULL,
  `total_ingresos_mensuales` decimal(50,2) DEFAULT NULL,
  `total_egresos_mensuales` decimal(50,2) DEFAULT NULL,
  `ingresos_adicionales` enum('No','Si') COLLATE utf8_spanish_ci DEFAULT NULL,
  `detalle_ingresos_adicionales` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `realiza_transacciones_en_moneda_extranjera` enum('No','Si') COLLATE utf8_spanish_ci DEFAULT NULL,
  `moneda_ex` enum('Otra','Dolar','Euro') COLLATE utf8_spanish_ci DEFAULT NULL,
  `realiza_operaciones_internacionales` enum('No','Si') COLLATE utf8_spanish_ci DEFAULT NULL,
  `operaciones_internacionales` enum('servicios','giros','prestamos','divisas','inversiones','exportacion','importacion') COLLATE utf8_spanish_ci DEFAULT NULL,
  `posee_productos_financieros_en_el_exterior` enum('No','Si') COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_de_producto` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `n_del_producot` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `entidad` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `monto` decimal(10,0) DEFAULT NULL,
  `ciudad` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `moneda_p` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `reclamaciones` enum('No','Si') COLLATE utf8_spanish_ci DEFAULT NULL,
  `ano_r` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ramo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor_r` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_r` enum('RECLAMACION','INDEMNIZACION') COLLATE utf8_spanish_ci DEFAULT NULL,
  `ano_r_2` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ramo_2` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `company_2` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor_r_2` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_r_2` enum('RECLAMACION','INDEMNIZACION') COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for dbpcn_directs
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_directs`;
CREATE TABLE `dbpcn_directs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `direct_id` int(11) NOT NULL,
  `amount_cop` decimal(30,2) NOT NULL,
  `detail` text NOT NULL,
  `status` enum('Pending','Approved','Rejected') NOT NULL,
  `direct_hash` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `direct_id` (`direct_id`) USING BTREE,
  UNIQUE KEY `direct_user` (`user_id`,`direct_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_directs
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_directs` VALUES (158, 10148, 10149, 920040.00, 'Pago de Directo :: (pasal)', 'Approved', '8a963ceb3c97d42219d6a1242e8e4b5ed823dd5491a6de7571a11eaf4afa4303', '2019-05-10 17:22:49', '2019-05-10 17:22:49');
INSERT INTO `dbpcn_directs` VALUES (159, 10148, 10151, 920040.00, 'Pago de Directo :: (luhercar)', 'Approved', 'b6c3f77703e99702de74f4d1f7977a0ed823dd5491a6de7571a11eaf4afa4303', '2019-05-13 20:01:48', '2019-05-13 20:01:48');
INSERT INTO `dbpcn_directs` VALUES (160, 10148, 10161, 920040.00, 'Pago de Directo :: (cabapella)', 'Approved', 'ce0ff74f80dbf7beccc42947551fdcf3d823dd5491a6de7571a11eaf4afa4303', '2019-05-13 20:58:39', '2019-05-13 20:58:39');
INSERT INTO `dbpcn_directs` VALUES (161, 10148, 10162, 920040.00, 'Pago de Directo :: (bitboss)', 'Approved', 'de1f1f9d70a0e2c21e7f4abdeb661ffbd823dd5491a6de7571a11eaf4afa4303', '2019-05-13 21:20:59', '2019-05-13 21:20:59');
INSERT INTO `dbpcn_directs` VALUES (162, 10149, 10163, 920040.00, 'Pago de Directo :: (jjpalacio26)', 'Approved', '616d4f810af508d996eaa1caf4e0d369d823dd5491a6de7571a11eaf4afa4303', '2019-05-13 21:38:17', '2019-05-13 21:38:17');
INSERT INTO `dbpcn_directs` VALUES (163, 10162, 10164, 920040.00, 'Pago de Directo :: (globalvision)', 'Approved', '46d237849902e1fd6e43e797d7f37d08d823dd5491a6de7571a11eaf4afa4303', '2019-05-14 19:05:20', '2019-05-14 19:05:20');
INSERT INTO `dbpcn_directs` VALUES (164, 10164, 10165, 920040.00, 'Pago de Directo :: (yesidf)', 'Approved', 'dbc516d7244c9374cf3992d4f2af6940d823dd5491a6de7571a11eaf4afa4303', '2019-05-14 20:06:33', '2019-05-14 20:06:33');
INSERT INTO `dbpcn_directs` VALUES (165, 10165, 10166, 920040.00, 'Pago de Directo :: (jagaby)', 'Approved', 'caf7417df46cef4e2f33cfd82347b9eed823dd5491a6de7571a11eaf4afa4303', '2019-05-14 22:53:23', '2019-05-14 22:53:23');
INSERT INTO `dbpcn_directs` VALUES (166, 10162, 10167, 920040.00, 'Pago de Directo :: (wolf_ecu)', 'Approved', 'da59416b50c76cbd7f3552535ae08802d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:01:01', '2019-05-15 00:01:01');
INSERT INTO `dbpcn_directs` VALUES (167, 10167, 10168, 920040.00, 'Pago de Directo :: (paulhstevens)', 'Approved', '937a0be41d2d37a6adbd95f18d7d2687d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:01:54', '2019-05-15 00:01:54');
INSERT INTO `dbpcn_directs` VALUES (168, 10151, 10169, 920040.00, 'Pago de Directo :: (adelito62)', 'Approved', 'e0df42438e3087559773ab0f5a3a1b3ed823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:02:23', '2019-05-15 00:02:23');
INSERT INTO `dbpcn_directs` VALUES (169, 10169, 10170, 920040.00, 'Pago de Directo :: (farcoin93)', 'Approved', 'a4579d5240d626d8b0cdb02afcd28782d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:03:16', '2019-05-15 00:03:16');
INSERT INTO `dbpcn_directs` VALUES (170, 10170, 10171, 920040.00, 'Pago de Directo :: (eliasbm)', 'Approved', '71d71671cc13d18eb321b58a7778fb25d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:03:49', '2019-05-15 00:03:49');
INSERT INTO `dbpcn_directs` VALUES (171, 10171, 10172, 920040.00, 'Pago de Directo :: (carolinayjimmy)', 'Approved', '9339337a9a13b66261fbd849575a93f9d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:08:26', '2019-05-15 00:08:26');
INSERT INTO `dbpcn_directs` VALUES (172, 10169, 10173, 920040.00, 'Pago de Directo :: (trillonario)', 'Approved', '46fbb2e8a4d455aac47f5141581c15b1d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:32:28', '2019-05-15 00:32:28');
INSERT INTO `dbpcn_directs` VALUES (173, 10161, 10174, 920040.00, 'Pago de Directo :: (masterdreamers)', 'Approved', '9fca9434c23c594d715d4ecbc9bde906d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:34:09', '2019-05-15 00:34:09');
INSERT INTO `dbpcn_directs` VALUES (174, 10172, 10175, 920040.00, 'Pago de Directo :: (yosoy)', 'Approved', '96a5dc7c20b05f806cf725dcf75c33e5d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:34:27', '2019-05-15 00:34:27');
INSERT INTO `dbpcn_directs` VALUES (175, 10175, 10176, 920040.00, 'Pago de Directo :: (emjv2019)', 'Approved', '4565b3cbb8e99dd61887d68bb79fb14ad823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:34:40', '2019-05-15 00:34:40');
INSERT INTO `dbpcn_directs` VALUES (176, 10173, 10177, 920040.00, 'Pago de Directo :: (diamond17)', 'Approved', '0a80563ca7b58616198f59d6a69b435bd823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:35:16', '2019-05-15 00:35:16');
INSERT INTO `dbpcn_directs` VALUES (177, 10173, 10178, 920040.00, 'Pago de Directo :: (luchomaster)', 'Approved', '116036c4bd7f705ddfc1cd4d3c167dcfd823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:35:28', '2019-05-15 00:35:28');
INSERT INTO `dbpcn_directs` VALUES (178, 10151, 10179, 920040.00, 'Pago de Directo :: (darioquijano)', 'Approved', 'a1ad447c162e0bba5f490ca34dcbe741d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:35:42', '2019-05-15 00:35:42');
INSERT INTO `dbpcn_directs` VALUES (179, 10178, 10180, 920040.00, 'Pago de Directo :: (luzirene)', 'Approved', 'f45a1760861d7c0a616c48d5e57224b1d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:35:59', '2019-05-15 00:35:59');
INSERT INTO `dbpcn_directs` VALUES (180, 10177, 10181, 920040.00, 'Pago de Directo :: (familiasl)', 'Approved', 'a31067122a5dd2917d56cc12f54e7ca4d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:36:09', '2019-05-15 00:36:09');
INSERT INTO `dbpcn_directs` VALUES (181, 10180, 10182, 920040.00, 'Pago de Directo :: (carly)', 'Approved', '1e612a61eada8284dc7ed52bc7dd73e7d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:36:37', '2019-05-15 00:36:37');
INSERT INTO `dbpcn_directs` VALUES (182, 10170, 10183, 920040.00, 'Pago de Directo :: (juan1515)', 'Approved', 'e34978aa49e9dcae0aeaa6ef3bfdcc58d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:36:40', '2019-05-15 00:36:40');
INSERT INTO `dbpcn_directs` VALUES (183, 10171, 10184, 920040.00, 'Pago de Directo :: (nelson_mejia1)', 'Approved', '927470fc953b56d5de10c158db2117fbd823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:37:06', '2019-05-15 00:37:06');
INSERT INTO `dbpcn_directs` VALUES (184, 10180, 10185, 920040.00, 'Pago de Directo :: (hernuesga)', 'Approved', 'b4ab3893ab475ff73165e6640c76c29cd823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:37:12', '2019-05-15 00:37:12');
INSERT INTO `dbpcn_directs` VALUES (185, 10171, 10186, 920040.00, 'Pago de Directo :: (tico1977)', 'Approved', '9bda58f69dcdae0516744945bad0127bd823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:37:26', '2019-05-15 00:37:26');
INSERT INTO `dbpcn_directs` VALUES (186, 10185, 10187, 920040.00, 'Pago de Directo :: (goldteam)', 'Approved', '4e0d67dbc1936037e6c54c6f599b47b2d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:39:29', '2019-05-15 00:39:29');
INSERT INTO `dbpcn_directs` VALUES (187, 10183, 10188, 920040.00, 'Pago de Directo :: (yulimarolivera0408)', 'Approved', 'c350ebaf50eb89e364acd8add693a70ad823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:39:46', '2019-05-15 00:39:46');
INSERT INTO `dbpcn_directs` VALUES (188, 10176, 10189, 920040.00, 'Pago de Directo :: (reymidas07)', 'Approved', 'ffc521acc6d19a50184f543be2240c85d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:40:10', '2019-05-15 00:40:10');
INSERT INTO `dbpcn_directs` VALUES (189, 10189, 10190, 920040.00, 'Pago de Directo :: (reinamidas)', 'Approved', 'ea39667b8693c83894f045137d57f0e0d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:40:30', '2019-05-15 00:40:30');
INSERT INTO `dbpcn_directs` VALUES (190, 10177, 10191, 920040.00, 'Pago de Directo :: (fdam.master)', 'Approved', '8a6a2b5c1eacf97b339259520c42d2d9d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:40:41', '2019-05-15 00:40:41');
INSERT INTO `dbpcn_directs` VALUES (191, 10189, 10192, 920040.00, 'Pago de Directo :: (lnlb2019)', 'Approved', '64aeede5811e24bb564773056399f0f4d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:40:56', '2019-05-15 00:40:56');
INSERT INTO `dbpcn_directs` VALUES (192, 10176, 10193, 920040.00, 'Pago de Directo :: (iferrer2019)', 'Approved', '31b8906326218240435d1305256820cbd823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:41:05', '2019-05-15 00:41:05');
INSERT INTO `dbpcn_directs` VALUES (193, 10175, 10194, 920040.00, 'Pago de Directo :: (dserrano)', 'Approved', '0bd681e90f98c0506cc044ba052f9422d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:41:13', '2019-05-15 00:41:13');
INSERT INTO `dbpcn_directs` VALUES (194, 10181, 10195, 920040.00, 'Pago de Directo :: (macdfd01)', 'Approved', '1808c74023b97ba564276c3f113c8537d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 00:41:21', '2019-05-15 00:41:21');
INSERT INTO `dbpcn_directs` VALUES (195, 10172, 10196, 920040.00, 'Pago de Directo :: (atlanrot)', 'Approved', '566851064fa5960406ecf4be9904dc57d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 13:56:56', '2019-05-15 13:56:56');
INSERT INTO `dbpcn_directs` VALUES (196, 10167, 10197, 920040.00, 'Pago de Directo :: (alexluisv)', 'Approved', '117e1b17cd42739f7b1347e08fde3511d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 13:59:09', '2019-05-15 13:59:09');
INSERT INTO `dbpcn_directs` VALUES (197, 10172, 10198, 920040.00, 'Pago de Directo :: (kano)', 'Approved', 'c8d90973710244e9a7234a3f63bebfd7d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 14:00:16', '2019-05-15 14:00:16');
INSERT INTO `dbpcn_directs` VALUES (198, 10168, 10199, 920040.00, 'Pago de Directo :: (dyjingenieria)', 'Approved', 'cd0074e0d37190d193ea5b2b22312239d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 15:28:59', '2019-05-15 15:28:59');
INSERT INTO `dbpcn_directs` VALUES (199, 10199, 10200, 920040.00, 'Pago de Directo :: (luisfercast)', 'Approved', '6708502f9205be2bebb31e03ec76d2d6d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 15:29:22', '2019-05-15 15:29:22');
INSERT INTO `dbpcn_directs` VALUES (200, 10199, 10201, 920040.00, 'Pago de Directo :: (jufesera)', 'Approved', 'e0246478c6ba91a62ffe1c1db79ec069d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 15:29:37', '2019-05-15 15:29:37');
INSERT INTO `dbpcn_directs` VALUES (201, 10199, 10202, 920040.00, 'Pago de Directo :: (andreyamaya1927)', 'Approved', 'eb34a5a96d4e93c27f521cf3e7da1c8fd823dd5491a6de7571a11eaf4afa4303', '2019-05-15 15:29:46', '2019-05-15 15:29:46');
INSERT INTO `dbpcn_directs` VALUES (202, 10199, 10203, 920040.00, 'Pago de Directo :: (housedream)', 'Approved', '465987a05a2a93ed4069c0f896a9c86ad823dd5491a6de7571a11eaf4afa4303', '2019-05-15 15:30:40', '2019-05-15 15:30:40');
INSERT INTO `dbpcn_directs` VALUES (203, 10199, 10204, 920040.00, 'Pago de Directo :: (adriana)', 'Approved', '55be4b9b232e45f0fed0ee635e81a22ad823dd5491a6de7571a11eaf4afa4303', '2019-05-15 15:30:49', '2019-05-15 15:30:49');
INSERT INTO `dbpcn_directs` VALUES (204, 10201, 10205, 920040.00, 'Pago de Directo :: (excellentpower)', 'Approved', 'acf95d9a2c9431167181cd81dce1a064d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 15:33:13', '2019-05-15 15:33:13');
INSERT INTO `dbpcn_directs` VALUES (205, 10205, 10206, 920040.00, 'Pago de Directo :: (heyeve)', 'Approved', 'ac12ddf148f58122fa366c06d8880b50d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 15:33:27', '2019-05-15 15:33:27');
INSERT INTO `dbpcn_directs` VALUES (206, 10198, 10207, 920040.00, 'Pago de Directo :: (inari)', 'Approved', 'dd7391af7f683b63814458f9e6bbdae0d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 15:34:13', '2019-05-15 15:34:13');
INSERT INTO `dbpcn_directs` VALUES (207, 10164, 10208, 920040.00, 'Pago de Directo :: (visionary)', 'Approved', 'ab78e16dc324af8fcfbe652c7ac4d2d2d823dd5491a6de7571a11eaf4afa4303', '2019-05-15 17:34:03', '2019-05-15 17:34:03');
INSERT INTO `dbpcn_directs` VALUES (208, 10173, 10209, 920040.00, 'Pago de Directo :: (camilo1140)', 'Approved', '4afbfe1767a63a6b0759de0c9b127aead823dd5491a6de7571a11eaf4afa4303', '2019-05-16 16:07:17', '2019-05-16 16:07:17');
INSERT INTO `dbpcn_directs` VALUES (209, 10172, 10210, 920040.00, 'Pago de Directo :: (cupercuevas83)', 'Approved', '0c4534b39ab0a13dd2db06b7a13c5397d823dd5491a6de7571a11eaf4afa4303', '2019-05-16 16:07:44', '2019-05-16 16:07:44');
INSERT INTO `dbpcn_directs` VALUES (210, 10182, 10211, 920040.00, 'Pago de Directo :: (wtpropiedad1)', 'Approved', '668b2ad4411d0978daf1de7e1594046cd823dd5491a6de7571a11eaf4afa4303', '2019-05-16 16:08:34', '2019-05-16 16:08:34');
INSERT INTO `dbpcn_directs` VALUES (211, 10191, 10212, 920040.00, 'Pago de Directo :: (nancy.roa)', 'Approved', '1cd4f6668249a4c2b78a4644c5ffa542d823dd5491a6de7571a11eaf4afa4303', '2019-05-16 21:18:20', '2019-05-16 21:18:20');
INSERT INTO `dbpcn_directs` VALUES (212, 10187, 10213, 920040.00, 'Pago de Directo :: (billions)', 'Approved', '71f74e39570b9825533ae9df241f8935d823dd5491a6de7571a11eaf4afa4303', '2019-05-17 14:13:58', '2019-05-17 14:13:58');
INSERT INTO `dbpcn_directs` VALUES (213, 10203, 10214, 920040.00, 'Pago de Directo :: (jesuscardona)', 'Approved', '28921a970698a8f59b17f0264dcc1360d823dd5491a6de7571a11eaf4afa4303', '2019-05-17 20:17:49', '2019-05-17 20:17:49');
INSERT INTO `dbpcn_directs` VALUES (214, 10164, 10215, 920040.00, 'Pago de Directo :: (sergioparra)', 'Approved', 'e4835c2cc60c39f4b8f38e4caa03e7d1d823dd5491a6de7571a11eaf4afa4303', '2019-05-20 14:47:32', '2019-05-20 14:47:32');
INSERT INTO `dbpcn_directs` VALUES (215, 10164, 10216, 920040.00, 'Pago de Directo :: (byronochoa)', 'Approved', 'd05711e44bf5dc273cd038be07ad4e5bd823dd5491a6de7571a11eaf4afa4303', '2019-05-20 14:50:42', '2019-05-20 14:50:42');
INSERT INTO `dbpcn_directs` VALUES (216, 10215, 10217, 920040.00, 'Pago de Directo :: (juanjose)', 'Approved', '5d8ea5e14e29b23e01aad99ca1e9a561d823dd5491a6de7571a11eaf4afa4303', '2019-05-21 19:07:30', '2019-05-21 19:07:30');
INSERT INTO `dbpcn_directs` VALUES (217, 10199, 10218, 920040.00, 'Pago de Directo :: (lote1mz38)', 'Approved', 'f7193c1cfca232b73f1fb25c11e02b58d823dd5491a6de7571a11eaf4afa4303', '2019-05-21 19:08:57', '2019-05-21 19:08:57');
INSERT INTO `dbpcn_directs` VALUES (218, 10174, 10219, 920040.00, 'Pago de Directo :: (dreamerazul)', 'Approved', '30ebb122995426956a0f7104817804f1d823dd5491a6de7571a11eaf4afa4303', '2019-05-21 21:47:04', '2019-05-21 21:47:04');
INSERT INTO `dbpcn_directs` VALUES (219, 10181, 10220, 920040.00, 'Pago de Directo :: (rmartinez2459)', 'Approved', 'b006f5a890a4f45084fd3aa24cff60ecd823dd5491a6de7571a11eaf4afa4303', '2019-05-23 21:08:04', '2019-05-23 21:08:04');
INSERT INTO `dbpcn_directs` VALUES (220, 10208, 10221, 920040.00, 'Pago de Directo :: (refricol)', 'Approved', 'ee4ca20104b25e96f94e325bd763c963d823dd5491a6de7571a11eaf4afa4303', '2019-05-24 13:42:51', '2019-05-24 13:42:51');
INSERT INTO `dbpcn_directs` VALUES (221, 10208, 10222, 920040.00, 'Pago de Directo :: (cayita)', 'Approved', '3472cc5442da492fa115e46cf5223d4ed823dd5491a6de7571a11eaf4afa4303', '2019-05-24 13:44:36', '2019-05-24 13:44:36');
INSERT INTO `dbpcn_directs` VALUES (222, 10208, 10223, 920040.00, 'Pago de Directo :: (rimexy)', 'Approved', '28d648f77e9158193081cd9973b7c0d3d823dd5491a6de7571a11eaf4afa4303', '2019-05-27 19:15:31', '2019-05-27 19:15:31');
INSERT INTO `dbpcn_directs` VALUES (223, 10220, 10224, 920040.00, 'Pago de Directo :: (m21-01)', 'Approved', 'af6f303c03f337ad3cf9ef1ced7455ced823dd5491a6de7571a11eaf4afa4303', '2019-05-27 21:58:51', '2019-05-27 21:58:51');
INSERT INTO `dbpcn_directs` VALUES (224, 10172, 10225, 920040.00, 'Pago de Directo :: (yolanda2019)', 'Approved', '7087297df291fc438d91747faf72794ed823dd5491a6de7571a11eaf4afa4303', '2019-05-28 20:31:32', '2019-05-28 20:31:32');
INSERT INTO `dbpcn_directs` VALUES (225, 10217, 10226, 920040.00, 'Pago de Directo :: (joca2689)', 'Approved', '9040a1d74cd120ff0b3979da468ad500d823dd5491a6de7571a11eaf4afa4303', '2019-05-28 20:33:46', '2019-05-28 20:33:46');
INSERT INTO `dbpcn_directs` VALUES (226, 10185, 10227, 920040.00, 'Pago de Directo :: (gabi1976)', 'Approved', '50b3700c5e29dce07804b3e46a9284b0d823dd5491a6de7571a11eaf4afa4303', '2019-05-28 21:11:53', '2019-05-28 21:11:53');
INSERT INTO `dbpcn_directs` VALUES (227, 10223, 10228, 920040.00, 'Pago de Directo :: (peter9301)', 'Approved', '1bdf81f9f1f2b5a69460a3aba6f14f5ad823dd5491a6de7571a11eaf4afa4303', '2019-05-28 21:13:03', '2019-05-28 21:13:03');
INSERT INTO `dbpcn_directs` VALUES (228, 10225, 10229, 920040.00, 'Pago de Directo :: (sharom2204)', 'Approved', '5264262a33a9381076eeb64b2ebe48c8d823dd5491a6de7571a11eaf4afa4303', '2019-05-29 14:49:00', '2019-05-29 14:49:00');
INSERT INTO `dbpcn_directs` VALUES (229, 10229, 10230, 920040.00, 'Pago de Directo :: (fernandolondonoruiz1969)', 'Approved', 'd58a6693523493d855a2d47acc7e4dc0d823dd5491a6de7571a11eaf4afa4303', '2019-05-29 15:35:06', '2019-05-29 15:35:06');
INSERT INTO `dbpcn_directs` VALUES (230, 10225, 10231, 920040.00, 'Pago de Directo :: (santiago2026)', 'Approved', '405871cd3e30aac4cc4fc578250c7a40d823dd5491a6de7571a11eaf4afa4303', '2019-05-29 21:16:40', '2019-05-29 21:16:40');
INSERT INTO `dbpcn_directs` VALUES (231, 10187, 10232, 920040.00, 'Pago de Directo :: (fannyguz)', 'Approved', '221edc715e7d545035c31e8ea367b473d823dd5491a6de7571a11eaf4afa4303', '2019-05-30 14:28:49', '2019-05-30 14:28:49');
INSERT INTO `dbpcn_directs` VALUES (232, 10222, 10233, 920040.00, 'Pago de Directo :: (jamessofia10)', 'Approved', '9e76c7acc3c364eea5925077fab8c33dd823dd5491a6de7571a11eaf4afa4303', '2019-05-30 19:06:24', '2019-05-30 19:06:24');
INSERT INTO `dbpcn_directs` VALUES (233, 10226, 10234, 920040.00, 'Pago de Directo :: (casasfredy)', 'Approved', '6164c7a22c7376493d33265adfd707c6d823dd5491a6de7571a11eaf4afa4303', '2019-05-30 20:56:41', '2019-05-30 20:56:41');
INSERT INTO `dbpcn_directs` VALUES (234, 10226, 10235, 920040.00, 'Pago de Directo :: (germanchacon)', 'Approved', '635c45cce7b8fd648d74cdcafc0cefbcd823dd5491a6de7571a11eaf4afa4303', '2019-05-30 20:58:41', '2019-05-30 20:58:41');
INSERT INTO `dbpcn_directs` VALUES (235, 10168, 10236, 920040.00, 'Pago de Directo :: (brayohan1985)', 'Approved', '445e5a99732c25cfa35d0d9da769ad6dd823dd5491a6de7571a11eaf4afa4303', '2019-05-31 14:15:26', '2019-05-31 14:15:26');
INSERT INTO `dbpcn_directs` VALUES (236, 10180, 10237, 920040.00, 'Pago de Directo :: (mastermind)', 'Approved', 'b75ab2b36d71aa92183d4db0b37b51d3d823dd5491a6de7571a11eaf4afa4303', '2019-06-04 14:10:09', '2019-06-04 14:10:09');
INSERT INTO `dbpcn_directs` VALUES (237, 10230, 10238, 920040.00, 'Pago de Directo :: (marbit2017)', 'Approved', 'aee4dc53f3fc01818fe045319c7bda72d823dd5491a6de7571a11eaf4afa4303', '2019-06-04 14:10:16', '2019-06-04 14:10:16');
INSERT INTO `dbpcn_directs` VALUES (238, 10177, 10239, 920040.00, 'Pago de Directo :: (dpanche2019)', 'Approved', '4853647b4187e357c0244e0efc2f05d4d823dd5491a6de7571a11eaf4afa4303', '2019-06-05 14:05:09', '2019-06-05 14:05:09');
INSERT INTO `dbpcn_directs` VALUES (239, 10173, 10240, 920040.00, 'Pago de Directo :: (georgemaster)', 'Approved', '32990e6d91a4e365e4a7b81fb2657e5ed823dd5491a6de7571a11eaf4afa4303', '2019-06-05 15:14:31', '2019-06-05 15:14:31');
INSERT INTO `dbpcn_directs` VALUES (240, 10240, 10241, 920040.00, 'Pago de Directo :: (margaritamora)', 'Approved', '9f5cda6cd9c310670bcf22e648439e3cd823dd5491a6de7571a11eaf4afa4303', '2019-06-05 15:14:37', '2019-06-05 15:14:37');
INSERT INTO `dbpcn_directs` VALUES (241, 10240, 10242, 920040.00, 'Pago de Directo :: (stellar1)', 'Approved', '321573ce38777a74f78dd32a2d7524e7d823dd5491a6de7571a11eaf4afa4303', '2019-06-05 17:21:56', '2019-06-05 17:21:56');
INSERT INTO `dbpcn_directs` VALUES (242, 10226, 10243, 920040.00, 'Pago de Directo :: (joelariza)', 'Approved', '7aca2a4971a9d5ea5ab1cd7db2753754d823dd5491a6de7571a11eaf4afa4303', '2019-06-07 19:53:31', '2019-06-07 19:53:31');
INSERT INTO `dbpcn_directs` VALUES (243, 10177, 10244, 920040.00, 'Pago de Directo :: (eriyharold)', 'Approved', '840f78dcddb7b06a8157a05690c0d8c4d823dd5491a6de7571a11eaf4afa4303', '2019-06-10 16:13:04', '2019-06-10 16:13:04');
INSERT INTO `dbpcn_directs` VALUES (244, 10172, 10245, 920040.00, 'Pago de Directo :: (inmobiliariayconstructorazosas)', 'Approved', '16312348f1e15a317b840e3c8587864cd823dd5491a6de7571a11eaf4afa4303', '2019-06-10 16:14:41', '2019-06-10 16:14:41');
INSERT INTO `dbpcn_directs` VALUES (245, 10208, 10246, 920040.00, 'Pago de Directo :: (dkb.musical26)', 'Approved', '10a93f7ed7058ad9eb3ca83713cb9ff2d823dd5491a6de7571a11eaf4afa4303', '2019-06-10 16:15:24', '2019-06-10 16:15:24');
INSERT INTO `dbpcn_directs` VALUES (246, 10216, 10247, 920040.00, 'Pago de Directo :: (jhonjaironino)', 'Approved', '552762c52f4106d58239b9cf6ad23c16d823dd5491a6de7571a11eaf4afa4303', '2019-06-10 16:18:43', '2019-06-10 16:18:43');
INSERT INTO `dbpcn_directs` VALUES (247, 10219, 10248, 920040.00, 'Pago de Directo :: (edudav)', 'Approved', '5212d29988867342aa35d742c804366ad823dd5491a6de7571a11eaf4afa4303', '2019-06-10 16:20:18', '2019-06-10 16:20:18');
INSERT INTO `dbpcn_directs` VALUES (248, 10170, 10249, 920040.00, 'Pago de Directo :: (peralta7)', 'Approved', 'ca9bd27ed7484c295cd0b6a667652f66d823dd5491a6de7571a11eaf4afa4303', '2019-06-10 16:46:52', '2019-06-10 16:46:52');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_document_type
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_document_type`;
CREATE TABLE `dbpcn_document_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` enum('inactivo','activo') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_document_type
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_document_type` VALUES (1, 'Cédula', 'activo', '2019-02-25 14:17:16', '2019-02-25 14:18:02');
INSERT INTO `dbpcn_document_type` VALUES (2, 'Cédula de Extranjería', 'activo', '2019-02-25 14:23:08', '2019-02-25 14:23:10');
INSERT INTO `dbpcn_document_type` VALUES (3, 'Pasaporte', 'activo', '2019-02-28 11:45:16', '2019-02-28 11:45:20');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_insurace_form_status
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_insurace_form_status`;
CREATE TABLE `dbpcn_insurace_form_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `allotment_id` int(11) DEFAULT NULL,
  `legal_entity` int(11) DEFAULT NULL,
  `customer_knowledge_nat` enum('Finished','Pending') COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Pending',
  `customer_knowledge_jur` enum('Pending','Finished') COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Pending',
  `life_insurance_application` enum('Finished','Pending') COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Pending',
  `discount_authorization` enum('Pending','Finished') COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Pending',
  `status` enum('in_process','Finished') COLLATE utf8_spanish_ci NOT NULL DEFAULT 'in_process',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_insurace_form_status
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_insurace_form_status` VALUES (5, 10148, 88, 1, 'Pending', 'Pending', 'Pending', 'Pending', 'in_process', '2019-05-10 15:36:55', '2019-05-10 15:36:55');
INSERT INTO `dbpcn_insurace_form_status` VALUES (6, 10149, 315, 2, 'Pending', 'Pending', 'Pending', 'Pending', 'in_process', '2019-05-11 15:17:40', '2019-05-11 15:17:40');
INSERT INTO `dbpcn_insurace_form_status` VALUES (7, 1, 2, 1, 'Pending', 'Pending', 'Pending', 'Pending', 'in_process', '2019-05-13 13:51:31', '2019-05-13 13:51:31');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_insurace_status
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_insurace_status`;
CREATE TABLE `dbpcn_insurace_status` (
  `id` tinyint(2) NOT NULL,
  `status_name` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_insurace_status
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_insurace_status` VALUES (0, 'Sin seguro');
INSERT INTO `dbpcn_insurace_status` VALUES (1, 'Pendiente');
INSERT INTO `dbpcn_insurace_status` VALUES (2, 'En Verificacion');
INSERT INTO `dbpcn_insurace_status` VALUES (3, 'Aprobvado');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_insurance
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_insurance`;
CREATE TABLE `dbpcn_insurance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insurance` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_insurance
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_insurance` VALUES (1, 'Seguros Bolivar', '2019-04-23', '2200-04-23 11:56:55', 1);
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_invoice_details
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_invoice_details`;
CREATE TABLE `dbpcn_invoice_details` (
  `id_detalle` bigint(20) NOT NULL AUTO_INCREMENT,
  `idpay` bigint(20) NOT NULL,
  `idpack` bigint(20) NOT NULL,
  `cantidad` int(20) NOT NULL,
  `precio` int(20) NOT NULL,
  PRIMARY KEY (`id_detalle`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for dbpcn_invoice_nums
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_invoice_nums`;
CREATE TABLE `dbpcn_invoice_nums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consecutivo` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`consecutivo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_invoice_nums
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_invoice_nums` VALUES (1, 93, '2019-04-10 09:43:48', '2019-06-10 16:46:52');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_invoices
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_invoices`;
CREATE TABLE `dbpcn_invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpay` int(100) NOT NULL,
  `n_ref` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `concept_id` int(11) NOT NULL,
  `method_payment_id` int(11) NOT NULL,
  `allotment_id` int(11) DEFAULT NULL,
  `cant_cuotas` int(11) DEFAULT NULL,
  `monthly_fees_id` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `obs` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_reg` date DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `status` enum('pending','paid') COLLATE utf8_spanish_ci DEFAULT NULL,
  `hash` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_invoices
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_invoices` VALUES (1, 1, 'Activación manual desde admin :1', 10148, 1, 4, 88, 1, '109', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-07', '2019-05-07', 'paid', 'd89d8e9e361ea6ab6bae44bbf0d935a15aebe68465c842ce431a8b2cd98a031e', '2019-05-09 11:37:06', '2019-05-09 11:37:09');
INSERT INTO `dbpcn_invoices` VALUES (2, 2, 'Activación manual desde admin :19', 10149, 1, 4, 315, 1, '121', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-10', '2019-05-10', 'paid', 'd89d8e9e361ea6ab6bae44bbf0d935a15aebe68465c842ce431a8b2cd98a031e', '2019-05-10 17:22:49', '2019-05-10 17:22:49');
INSERT INTO `dbpcn_invoices` VALUES (3, 3, 'Activación manual desde admin :19', 10151, 1, 4, 91, 1, '123', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-13', '2019-05-13', 'paid', '16b44a35ccef4d59bcf4a47e6b796dac5aebe68465c842ce431a8b2cd98a031e', '2019-05-13 20:01:48', '2019-05-13 20:01:48');
INSERT INTO `dbpcn_invoices` VALUES (4, 4, 'Activación manual desde admin :19', 10161, 1, 4, 89, 1, '125', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-13', '2019-05-13', 'paid', 'df86a6e432abafd11f1bfd355494b0e45aebe68465c842ce431a8b2cd98a031e', '2019-05-13 20:58:39', '2019-05-13 20:58:39');
INSERT INTO `dbpcn_invoices` VALUES (5, 5, 'Activación manual desde admin :19', 10162, 1, 4, 90, 1, '127', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-13', '2019-05-13', 'paid', 'a4ec060c82545f0534d4a63ff9e95b7e5aebe68465c842ce431a8b2cd98a031e', '2019-05-13 21:20:59', '2019-05-13 21:20:59');
INSERT INTO `dbpcn_invoices` VALUES (6, 6, 'Activación manual desde admin :19', 10163, 1, 4, 70, 1, '129', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-13', '2019-05-13', 'paid', '45119954f49212bcbf2c16c422fe20bf5aebe68465c842ce431a8b2cd98a031e', '2019-05-13 21:38:17', '2019-05-13 21:38:17');
INSERT INTO `dbpcn_invoices` VALUES (7, 7, 'Activación manual desde admin :19', 10164, 1, 4, 109, 1, '131', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-14', '2019-05-14', 'paid', '827d13c024aecb4d8182846fd5f0c4035aebe68465c842ce431a8b2cd98a031e', '2019-05-14 19:05:20', '2019-05-14 19:05:20');
INSERT INTO `dbpcn_invoices` VALUES (8, 8, 'Activación manual desde admin :19', 10165, 1, 4, 478, 1, '133', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-14', '2019-05-14', 'paid', '9817b8804e53569050ae71d50095ccc65aebe68465c842ce431a8b2cd98a031e', '2019-05-14 20:06:33', '2019-05-14 20:06:33');
INSERT INTO `dbpcn_invoices` VALUES (9, 9, 'Activación manual desde admin :19', 10166, 1, 4, 21, 1, '135', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-14', '2019-05-14', 'paid', '8f64c684d3363691facb14d7a7528afa5aebe68465c842ce431a8b2cd98a031e', '2019-05-14 22:53:23', '2019-05-14 22:53:23');
INSERT INTO `dbpcn_invoices` VALUES (10, 10, 'Activación manual desde admin :19', 10167, 1, 4, 92, 1, '137', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '05ded3669453f14143a799f854b82faf5aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:01:01', '2019-05-15 00:01:01');
INSERT INTO `dbpcn_invoices` VALUES (11, 11, 'Activación manual desde admin :19', 10168, 1, 4, 94, 1, '139', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '21f5ea3af0eaef56efac59216475a3d35aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:01:54', '2019-05-15 00:01:54');
INSERT INTO `dbpcn_invoices` VALUES (12, 12, 'Activación manual desde admin :19', 10169, 1, 4, 1697, 1, '141', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', 'bb0dce758b52e253524c2c71736e04dc5aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:02:23', '2019-05-15 00:02:23');
INSERT INTO `dbpcn_invoices` VALUES (13, 13, 'Activación manual desde admin :19', 10170, 1, 4, 37, 1, '143', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '64551e2b0cb9343fe5c8fbb28eff21945aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:03:16', '2019-05-15 00:03:16');
INSERT INTO `dbpcn_invoices` VALUES (14, 14, 'Activación manual desde admin :19', 10171, 1, 4, 1714, 1, '145', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '881b67fe058f4e2ec4e4041bc2407f725aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:03:49', '2019-05-15 00:03:49');
INSERT INTO `dbpcn_invoices` VALUES (15, 15, 'Activación manual desde admin :19', 10172, 1, 4, 12, 1, '147', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', 'd19d7cd51d2a3fc08965794b9b7566cf5aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:08:26', '2019-05-15 00:08:26');
INSERT INTO `dbpcn_invoices` VALUES (16, 16, 'Activación manual desde admin :25', 10173, 1, 4, 308, 1, '149', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', 'd31683c1618010eb51785e889c6c36e25aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:32:28', '2019-05-15 00:32:28');
INSERT INTO `dbpcn_invoices` VALUES (17, 17, 'Activación manual desde admin :25', 10174, 1, 4, 81, 1, '151', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', 'e3567be83ffd15a9fd5bf2619aa994825aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:34:09', '2019-05-15 00:34:09');
INSERT INTO `dbpcn_invoices` VALUES (18, 18, 'Activación manual desde admin :25', 10175, 1, 4, 74, 1, '153', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '14effd4c68e5c0ec599dae67c8f8cdf25aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:34:27', '2019-05-15 00:34:27');
INSERT INTO `dbpcn_invoices` VALUES (19, 19, 'Activación manual desde admin :19', 10176, 1, 4, 312, 1, '155', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '1d6c2868caabf43befe3490dbd6105165aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:34:40', '2019-05-15 00:34:40');
INSERT INTO `dbpcn_invoices` VALUES (20, 20, 'Activación manual desde admin :25', 10177, 1, 4, 140, 1, '157', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '2139022da281f55f7c0a4f1916aff0b55aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:35:16', '2019-05-15 00:35:16');
INSERT INTO `dbpcn_invoices` VALUES (21, 21, 'Activación manual desde admin :25', 10178, 1, 4, 1723, 1, '159', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '5f094374bccbaf1be1cf9679d528363b5aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:35:28', '2019-05-15 00:35:28');
INSERT INTO `dbpcn_invoices` VALUES (22, 22, 'Activación manual desde admin :25', 10179, 1, 4, 46, 1, '161', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '58ae3b6ad98d3e3e4ba2b404c9142e0f5aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:35:42', '2019-05-15 00:35:42');
INSERT INTO `dbpcn_invoices` VALUES (23, 23, 'Activación manual desde admin :25', 10180, 1, 4, 117, 1, '163', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '714c04dedba906c4a255e1206c974b205aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:35:59', '2019-05-15 00:35:59');
INSERT INTO `dbpcn_invoices` VALUES (24, 24, 'Activación manual desde admin :19', 10181, 1, 4, 38, 1, '165', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '769788ade06411e063edbd51239787f95aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:36:09', '2019-05-15 00:36:09');
INSERT INTO `dbpcn_invoices` VALUES (25, 25, 'Activación manual desde admin :25', 10182, 1, 4, 111, 1, '167', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '2fd0adbb9d593da8778468e545c96cde5aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:36:37', '2019-05-15 00:36:37');
INSERT INTO `dbpcn_invoices` VALUES (26, 26, 'Activación manual desde admin :19', 10183, 1, 4, 35, 1, '169', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', 'a9ac4c2c3c0b49e4a49633022360077f5aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:36:41', '2019-05-15 00:36:41');
INSERT INTO `dbpcn_invoices` VALUES (27, 27, 'Activación manual desde admin :19', 10184, 1, 4, 1689, 1, '171', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '7825c20b5d10d389dcbb3af1b4975e355aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:37:06', '2019-05-15 00:37:06');
INSERT INTO `dbpcn_invoices` VALUES (28, 28, 'Activación manual desde admin :25', 10185, 1, 4, 107, 1, '173', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '1ed8749f23aec3ab68c65460459bbeb15aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:37:12', '2019-05-15 00:37:12');
INSERT INTO `dbpcn_invoices` VALUES (29, 29, 'Activación manual desde admin :25', 10186, 1, 4, 1713, 1, '175', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '4e2ef4f4d0b7c8a89a3af6ee7113e6cd5aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:37:26', '2019-05-15 00:37:26');
INSERT INTO `dbpcn_invoices` VALUES (30, 30, 'Activación manual desde admin :25', 10187, 1, 4, 77, 1, '177', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '48548c5057733f0c65e9d94c51fadceb5aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:39:29', '2019-05-15 00:39:29');
INSERT INTO `dbpcn_invoices` VALUES (31, 31, 'Activación manual desde admin :25', 10188, 1, 4, 31, 1, '179', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', 'cb8c905bfc8e77c73d25861c37acea8c5aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:39:46', '2019-05-15 00:39:46');
INSERT INTO `dbpcn_invoices` VALUES (32, 32, 'Activación manual desde admin :25', 10189, 1, 4, 467, 1, '181', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '84f5661b35a729f55047f9e793d8798b5aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:40:11', '2019-05-15 00:40:11');
INSERT INTO `dbpcn_invoices` VALUES (33, 33, 'Activación manual desde admin :25', 10190, 1, 4, 479, 1, '183', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '07cef92cedfd3254a2ea39853bbd70175aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:40:30', '2019-05-15 00:40:30');
INSERT INTO `dbpcn_invoices` VALUES (34, 34, 'Activación manual desde admin :25', 10191, 1, 4, 335, 1, '185', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', 'a6716c74c67fd05d663c17f8af5332365aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:40:41', '2019-05-15 00:40:41');
INSERT INTO `dbpcn_invoices` VALUES (35, 35, 'Activación manual desde admin :25', 10192, 1, 4, 598, 1, '187', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '41cbe71f9cacffa82f1627883b54b47c5aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:40:56', '2019-05-15 00:40:56');
INSERT INTO `dbpcn_invoices` VALUES (36, 36, 'Activación manual desde admin :25', 10193, 1, 4, 75, 1, '189', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '7e40de6a4ac6ec84525a9ed2527091265aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:41:05', '2019-05-15 00:41:05');
INSERT INTO `dbpcn_invoices` VALUES (37, 37, 'Activación manual desde admin :25', 10194, 1, 4, 36, 1, '191', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '9d702b80a03ca5efba60b87934efd7275aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:41:13', '2019-05-15 00:41:13');
INSERT INTO `dbpcn_invoices` VALUES (38, 38, 'Activación manual desde admin :25', 10195, 1, 4, 292, 1, '193', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '9af9b6b820bc062543dac164510beb655aebe68465c842ce431a8b2cd98a031e', '2019-05-15 00:41:21', '2019-05-15 00:41:21');
INSERT INTO `dbpcn_invoices` VALUES (39, 39, 'Activación manual desde admin :19', 10196, 1, 4, 48, 1, '195', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '1e8dbbd1abd9927d1e15d918ad7bca435aebe68465c842ce431a8b2cd98a031e', '2019-05-15 13:56:56', '2019-05-15 13:56:56');
INSERT INTO `dbpcn_invoices` VALUES (40, 40, 'Activación manual desde admin :19', 10197, 1, 4, 76, 1, '197', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '52a1f803d1ba9aad11fad4226a5247645aebe68465c842ce431a8b2cd98a031e', '2019-05-15 13:59:09', '2019-05-15 13:59:09');
INSERT INTO `dbpcn_invoices` VALUES (41, 41, 'Activación manual desde admin :19', 10198, 1, 4, 583, 1, '199', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '89fbc70085636b3a39e662efe80a7dc95aebe68465c842ce431a8b2cd98a031e', '2019-05-15 14:00:16', '2019-05-15 14:00:16');
INSERT INTO `dbpcn_invoices` VALUES (42, 42, 'Activación manual desde admin :25', 10199, 1, 4, 654, 1, '201', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '049ff39ed379d2991c6df37d9b1d93305aebe68465c842ce431a8b2cd98a031e', '2019-05-15 15:28:59', '2019-05-15 15:28:59');
INSERT INTO `dbpcn_invoices` VALUES (43, 43, 'Activación manual desde admin :25', 10200, 1, 4, 129, 1, '203', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '9d353c78d2d7520e94213fa211f713cc5aebe68465c842ce431a8b2cd98a031e', '2019-05-15 15:29:22', '2019-05-15 15:29:22');
INSERT INTO `dbpcn_invoices` VALUES (44, 44, 'Activación manual desde admin :25', 10201, 1, 4, 152, 1, '205', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', 'c5433e915c5f181ec0076dae35c7cef55aebe68465c842ce431a8b2cd98a031e', '2019-05-15 15:29:37', '2019-05-15 15:29:37');
INSERT INTO `dbpcn_invoices` VALUES (45, 45, 'Activación manual desde admin :25', 10202, 1, 4, 626, 1, '207', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '1f41d48fafb2c71f526f9a624db6c9de5aebe68465c842ce431a8b2cd98a031e', '2019-05-15 15:29:46', '2019-05-15 15:29:46');
INSERT INTO `dbpcn_invoices` VALUES (46, 46, 'Activación manual desde admin :25', 10203, 1, 4, 315, 1, '209', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', 'ae376bd6cf2b0081bffe4571b10744c75aebe68465c842ce431a8b2cd98a031e', '2019-05-15 15:30:40', '2019-05-15 15:30:40');
INSERT INTO `dbpcn_invoices` VALUES (47, 47, 'Activación manual desde admin :25', 10204, 1, 4, 815, 1, '211', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '6e5629f2ab9973c09e947a0e1100fb525aebe68465c842ce431a8b2cd98a031e', '2019-05-15 15:30:49', '2019-05-15 15:30:49');
INSERT INTO `dbpcn_invoices` VALUES (48, 48, 'Activación manual desde admin :25', 10205, 1, 4, 141, 1, '213', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', 'd450c0dc4cf104d20c9f4268e0ddb3b65aebe68465c842ce431a8b2cd98a031e', '2019-05-15 15:33:13', '2019-05-15 15:33:13');
INSERT INTO `dbpcn_invoices` VALUES (49, 49, 'Activación manual desde admin :25', 10206, 1, 4, 142, 1, '215', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', 'c5b4758c668eb928b6e33452c16501085aebe68465c842ce431a8b2cd98a031e', '2019-05-15 15:33:27', '2019-05-15 15:33:27');
INSERT INTO `dbpcn_invoices` VALUES (50, 50, 'Activación manual desde admin :25', 10207, 1, 4, 676, 1, '217', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '0e2f10f8d8b5f082d72b3847191df4095aebe68465c842ce431a8b2cd98a031e', '2019-05-15 15:34:13', '2019-05-15 15:34:13');
INSERT INTO `dbpcn_invoices` VALUES (51, 51, 'Activación manual desde admin :19', 10208, 1, 4, 488, 1, '219', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-15', '2019-05-15', 'paid', '07f07bb971302916fdbedc2cb568167d5aebe68465c842ce431a8b2cd98a031e', '2019-05-15 17:34:03', '2019-05-15 17:34:03');
INSERT INTO `dbpcn_invoices` VALUES (52, 52, 'Activación manual desde admin :25', 10209, 1, 4, 716, 1, '221', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-16', '2019-05-16', 'paid', 'f1a9f77d4f6fa9e16391c58cb9442c645aebe68465c842ce431a8b2cd98a031e', '2019-05-16 16:07:17', '2019-05-16 16:07:17');
INSERT INTO `dbpcn_invoices` VALUES (53, 53, 'Activación manual desde admin :25', 10210, 1, 4, 108, 1, '223', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-16', '2019-05-16', 'paid', '46b6a806d23f6b88bf865b83710e6af35aebe68465c842ce431a8b2cd98a031e', '2019-05-16 16:07:44', '2019-05-16 16:07:44');
INSERT INTO `dbpcn_invoices` VALUES (54, 54, 'Activación manual desde admin :25', 10211, 1, 4, 7, 1, '225', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-16', '2019-05-16', 'paid', 'ab8972fc09bb17e07fd92828fb240d935aebe68465c842ce431a8b2cd98a031e', '2019-05-16 16:08:34', '2019-05-16 16:08:34');
INSERT INTO `dbpcn_invoices` VALUES (55, 55, 'Activación manual desde admin :25', 10212, 1, 4, 1704, 1, '227', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-16', '2019-05-16', 'paid', '76c0cd761ae0e081a738eb435e83c4ca5aebe68465c842ce431a8b2cd98a031e', '2019-05-16 21:18:20', '2019-05-16 21:18:20');
INSERT INTO `dbpcn_invoices` VALUES (56, 56, 'Activación manual desde admin :25', 10213, 1, 4, 39, 1, '229', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-17', '2019-05-17', 'paid', 'd857a1bd18e5d145a7c14b7d050813015aebe68465c842ce431a8b2cd98a031e', '2019-05-17 14:13:58', '2019-05-17 14:13:58');
INSERT INTO `dbpcn_invoices` VALUES (57, 57, 'Activación manual desde admin :25', 10214, 1, 4, 301, 1, '231', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-17', '2019-05-17', 'paid', 'cf81132064091053758f0ae738dc10bf5aebe68465c842ce431a8b2cd98a031e', '2019-05-17 20:17:49', '2019-05-17 20:17:49');
INSERT INTO `dbpcn_invoices` VALUES (58, 58, 'Activación manual desde admin :25', 10215, 1, 4, 790, 1, '233', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-20', '2019-05-20', 'paid', 'a5346c9266ff7fe69d0a9c7d4be672305aebe68465c842ce431a8b2cd98a031e', '2019-05-20 14:47:32', '2019-05-20 14:47:32');
INSERT INTO `dbpcn_invoices` VALUES (59, 59, 'Activación manual desde admin :25', 10216, 1, 4, 83, 1, '235', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-20', '2019-05-20', 'paid', '3092e713da527da1fa292d4783ec96c85aebe68465c842ce431a8b2cd98a031e', '2019-05-20 14:50:42', '2019-05-20 14:50:42');
INSERT INTO `dbpcn_invoices` VALUES (60, 60, 'Activación manual desde admin :25', 10217, 1, 4, 766, 1, '237', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-21', '2019-05-21', 'paid', 'ddc58fd63f5ef92246951d1679c0833d5aebe68465c842ce431a8b2cd98a031e', '2019-05-21 19:07:30', '2019-05-21 19:07:30');
INSERT INTO `dbpcn_invoices` VALUES (61, 61, 'Activación manual desde admin :25', 10218, 1, 4, 709, 1, '239', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-21', '2019-05-21', 'paid', '9c36621710ad4866a956847d2e7e033c5aebe68465c842ce431a8b2cd98a031e', '2019-05-21 19:08:57', '2019-05-21 19:08:57');
INSERT INTO `dbpcn_invoices` VALUES (62, 62, 'Activación manual desde admin :25', 10219, 1, 4, 80, 1, '241', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-21', '2019-05-21', 'paid', 'a4d274b3a70fceee79aa54970e57a4115aebe68465c842ce431a8b2cd98a031e', '2019-05-21 21:47:04', '2019-05-21 21:47:04');
INSERT INTO `dbpcn_invoices` VALUES (63, 63, 'Activación manual desde admin :25', 10220, 1, 4, 316, 1, '243', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-23', '2019-05-23', 'paid', 'c6eb1d0995e569c56645cb16f63a9f905aebe68465c842ce431a8b2cd98a031e', '2019-05-23 21:08:04', '2019-05-23 21:08:04');
INSERT INTO `dbpcn_invoices` VALUES (64, 64, 'Activación manual desde admin :25', 10221, 1, 4, 466, 1, '245', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-24', '2019-05-24', 'paid', '9f61770434adf6637b45ac93f7f58e835aebe68465c842ce431a8b2cd98a031e', '2019-05-24 13:42:51', '2019-05-24 13:42:51');
INSERT INTO `dbpcn_invoices` VALUES (65, 65, 'Activación manual desde admin :25', 10222, 1, 4, 487, 1, '247', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-24', '2019-05-24', 'paid', '090081b6f6a3b3f2161fff7f24ff2fb85aebe68465c842ce431a8b2cd98a031e', '2019-05-24 13:44:36', '2019-05-24 13:44:36');
INSERT INTO `dbpcn_invoices` VALUES (66, 66, 'xy3V5/10149/730249.33/1/XFC2N8M4AH/72', 10149, 11, 2, 72, 1, '122', 730249.33, 'Pago de cuotas mensual', '2019-05-27', '2019-05-27', 'paid', 'd89d8e9e361ea6ab6bae44bbf0d935a15aebe68465c842ce431a8b2cd98a031e', '2019-05-27 11:50:51', '2019-05-27 11:50:51');
INSERT INTO `dbpcn_invoices` VALUES (67, 67, 'Activación manual desde admin :25', 10223, 1, 4, 198, 1, '250', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-27', '2019-05-27', 'paid', '568da1596a380745bb885984f825b93e5aebe68465c842ce431a8b2cd98a031e', '2019-05-27 19:15:31', '2019-05-27 19:15:31');
INSERT INTO `dbpcn_invoices` VALUES (68, 68, 'Activación manual desde admin :25', 10224, 1, 4, 372, 1, '252', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-27', '2019-05-27', 'paid', 'ef1f99b0cc45f9c72d5cd6dec62ef83e5aebe68465c842ce431a8b2cd98a031e', '2019-05-27 21:58:51', '2019-05-27 21:58:51');
INSERT INTO `dbpcn_invoices` VALUES (69, 69, 'Activación manual desde admin :25', 10225, 1, 4, 386, 1, '254', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-28', '2019-05-28', 'paid', 'c5320bfd4030f44047b022d4714337cd5aebe68465c842ce431a8b2cd98a031e', '2019-05-28 20:31:32', '2019-05-28 20:31:32');
INSERT INTO `dbpcn_invoices` VALUES (70, 70, 'Activación manual desde admin :25', 10226, 1, 4, 400, 1, '256', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-28', '2019-05-28', 'paid', 'b92d0ddc9614210b50a521ac8fb7efea5aebe68465c842ce431a8b2cd98a031e', '2019-05-28 20:33:46', '2019-05-28 20:33:46');
INSERT INTO `dbpcn_invoices` VALUES (71, 71, 'Activación manual desde admin :25', 10227, 1, 4, 1705, 1, '258', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-28', '2019-05-28', 'paid', '30a0660217ff4e6ecd903ded600815345aebe68465c842ce431a8b2cd98a031e', '2019-05-28 21:11:53', '2019-05-28 21:11:53');
INSERT INTO `dbpcn_invoices` VALUES (72, 72, 'Activación manual desde admin :25', 10228, 1, 4, 958, 1, '260', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-28', '2019-05-28', 'paid', 'b505e3ffdeb4c55b7f412c76a0535d3a5aebe68465c842ce431a8b2cd98a031e', '2019-05-28 21:13:03', '2019-05-28 21:13:03');
INSERT INTO `dbpcn_invoices` VALUES (73, 73, 'Activación manual desde admin :25', 10229, 1, 4, 550, 1, '262', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-29', '2019-05-29', 'paid', '6be59228e3685ae973144e0d09070fc55aebe68465c842ce431a8b2cd98a031e', '2019-05-29 14:49:01', '2019-05-29 14:49:01');
INSERT INTO `dbpcn_invoices` VALUES (74, 74, 'Activación manual desde admin :25', 10230, 1, 4, 1569, 1, '264', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-29', '2019-05-29', 'paid', '60a16db11f669087d3f34f3cf12134d35aebe68465c842ce431a8b2cd98a031e', '2019-05-29 15:35:06', '2019-05-29 15:35:06');
INSERT INTO `dbpcn_invoices` VALUES (75, 75, 'Activación manual desde admin :25', 10231, 1, 4, 1703, 1, '266', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-29', '2019-05-29', 'paid', '5b463f1e582bba7a1b92e2cd7ab5b2355aebe68465c842ce431a8b2cd98a031e', '2019-05-29 21:16:40', '2019-05-29 21:16:40');
INSERT INTO `dbpcn_invoices` VALUES (76, 76, 'Activación manual desde admin :25', 10232, 1, 4, 153, 1, '268', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-30', '2019-05-30', 'paid', 'cd2c87ad61b3c808e1c0d0004b3c90af5aebe68465c842ce431a8b2cd98a031e', '2019-05-30 14:28:49', '2019-05-30 14:28:49');
INSERT INTO `dbpcn_invoices` VALUES (77, 77, 'Activación manual desde admin :25', 10233, 1, 4, 504, 1, '270', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-30', '2019-05-30', 'paid', '48e308ab7be500de3cb1cc0d0391e7845aebe68465c842ce431a8b2cd98a031e', '2019-05-30 19:06:24', '2019-05-30 19:06:24');
INSERT INTO `dbpcn_invoices` VALUES (78, 78, 'Activación manual desde admin :25', 10234, 1, 4, 455, 1, '272', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-30', '2019-05-30', 'paid', '4bc528927ccad4bddc8a92a7234d5cdf5aebe68465c842ce431a8b2cd98a031e', '2019-05-30 20:56:41', '2019-05-30 20:56:41');
INSERT INTO `dbpcn_invoices` VALUES (79, 79, 'Activación manual desde admin :25', 10235, 1, 4, 428, 1, '274', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-30', '2019-05-30', 'paid', '9d5e1da74a11a7094aa732943d759c1e5aebe68465c842ce431a8b2cd98a031e', '2019-05-30 20:58:41', '2019-05-30 20:58:41');
INSERT INTO `dbpcn_invoices` VALUES (80, 80, 'Activación manual desde admin :25', 10236, 1, 4, 85, 1, '276', 2255000.00, 'Pago de Cuotas Inicial', '2019-05-31', '2019-05-31', 'paid', '374f76e10f1d0614ab863ff094a5cbb55aebe68465c842ce431a8b2cd98a031e', '2019-05-31 14:15:26', '2019-05-31 14:15:26');
INSERT INTO `dbpcn_invoices` VALUES (81, 81, 'Activación manual desde admin :25', 10237, 1, 4, 1707, 1, '278', 2255000.00, 'Pago de Cuotas Inicial', '2019-06-04', '2019-06-04', 'paid', '82be39f2fca162b016567e5014b81e3f5aebe68465c842ce431a8b2cd98a031e', '2019-06-04 14:10:10', '2019-06-04 14:10:10');
INSERT INTO `dbpcn_invoices` VALUES (82, 82, 'Activación manual desde admin :25', 10238, 1, 4, 696, 1, '280', 2255000.00, 'Pago de Cuotas Inicial', '2019-06-04', '2019-06-04', 'paid', '69661f92c86d439057118c9d007b18b35aebe68465c842ce431a8b2cd98a031e', '2019-06-04 14:10:16', '2019-06-04 14:10:16');
INSERT INTO `dbpcn_invoices` VALUES (83, 83, 'Activación manual desde admin :25', 10239, 1, 4, 93, 1, '282', 2255000.00, 'Pago de Cuotas Inicial', '2019-06-05', '2019-06-05', 'paid', 'b774c20b78f0a3d2ea849a202f8984165aebe68465c842ce431a8b2cd98a031e', '2019-06-05 14:05:09', '2019-06-05 14:05:09');
INSERT INTO `dbpcn_invoices` VALUES (84, 84, 'Activación manual desde admin :25', 10240, 1, 4, 293, 1, '284', 2255000.00, 'Pago de Cuotas Inicial', '2019-06-05', '2019-06-05', 'paid', 'a6b94eb25130553eb5e9b3a431eb065a5aebe68465c842ce431a8b2cd98a031e', '2019-06-05 15:14:31', '2019-06-05 15:14:31');
INSERT INTO `dbpcn_invoices` VALUES (85, 85, 'Activación manual desde admin :25', 10241, 1, 4, 294, 1, '286', 2255000.00, 'Pago de Cuotas Inicial', '2019-06-05', '2019-06-05', 'paid', 'a553028df57eab58d05b12462b411d645aebe68465c842ce431a8b2cd98a031e', '2019-06-05 15:14:37', '2019-06-05 15:14:37');
INSERT INTO `dbpcn_invoices` VALUES (86, 86, 'Activación manual desde admin :19', 10242, 1, 4, 44, 1, '288', 2255000.00, 'Pago de Cuotas Inicial', '2019-06-05', '2019-06-05', 'paid', '2cca058b6751a2afa46e79b5b50850ba5aebe68465c842ce431a8b2cd98a031e', '2019-06-05 17:21:56', '2019-06-05 17:21:56');
INSERT INTO `dbpcn_invoices` VALUES (87, 87, 'Activación manual desde admin :19', 10243, 1, 4, 427, 1, '290', 2255000.00, 'Pago de Cuotas Inicial', '2019-06-07', '2019-06-07', 'paid', '6413d96e22015d1c41dcb05d2c40af8b5aebe68465c842ce431a8b2cd98a031e', '2019-06-07 19:53:31', '2019-06-07 19:53:31');
INSERT INTO `dbpcn_invoices` VALUES (88, 88, 'Activación manual desde admin :19', 10244, 1, 4, 697, 1, '292', 2255000.00, 'Pago de Cuotas Inicial', '2019-06-10', '2019-06-10', 'paid', 'b97edf184b6154293ebef402af228c0d5aebe68465c842ce431a8b2cd98a031e', '2019-06-10 16:13:04', '2019-06-10 16:13:04');
INSERT INTO `dbpcn_invoices` VALUES (89, 89, 'Activación manual desde admin :19', 10245, 1, 4, 825, 1, '294', 2255000.00, 'Pago de Cuotas Inicial', '2019-06-10', '2019-06-10', 'paid', '2547abc01f4d937293ffc87435f8e8525aebe68465c842ce431a8b2cd98a031e', '2019-06-10 16:14:41', '2019-06-10 16:14:41');
INSERT INTO `dbpcn_invoices` VALUES (90, 90, 'Activación manual desde admin :19', 10246, 1, 4, 680, 1, '296', 2255000.00, 'Pago de Cuotas Inicial', '2019-06-10', '2019-06-10', 'paid', 'e0ccaa86a750a4aeae2a71859a1a5f7d5aebe68465c842ce431a8b2cd98a031e', '2019-06-10 16:15:24', '2019-06-10 16:15:24');
INSERT INTO `dbpcn_invoices` VALUES (91, 91, 'Activación manual desde admin :19', 10247, 1, 4, 1711, 1, '298', 2255000.00, 'Pago de Cuotas Inicial', '2019-06-10', '2019-06-10', 'paid', 'ad7358bdcff9fe9c77a6d1ffd80bc77e5aebe68465c842ce431a8b2cd98a031e', '2019-06-10 16:18:43', '2019-06-10 16:18:43');
INSERT INTO `dbpcn_invoices` VALUES (92, 92, 'Activación manual desde admin :19', 10248, 1, 4, 17, 1, '300', 2255000.00, 'Pago de Cuotas Inicial', '2019-06-10', '2019-06-10', 'paid', 'dda146db4c8e427bf10a4a822e14ed545aebe68465c842ce431a8b2cd98a031e', '2019-06-10 16:20:18', '2019-06-10 16:20:18');
INSERT INTO `dbpcn_invoices` VALUES (93, 93, 'Activación manual desde admin :19', 10249, 1, 4, 1709, 1, '302', 2255000.00, 'Pago de Cuotas Inicial', '2019-06-10', '2019-06-10', 'paid', '5486bc1e779e65b2253cec15c40ee3225aebe68465c842ce431a8b2cd98a031e', '2019-06-10 16:46:52', '2019-06-10 16:46:52');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_logs_admin
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_logs_admin`;
CREATE TABLE `dbpcn_logs_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pre_user_id` int(11) DEFAULT NULL,
  `execution_id` int(11) DEFAULT NULL,
  `tabla_id` int(11) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `before` text DEFAULT NULL,
  `after` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=524 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dbpcn_logs_admin
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_logs_admin` VALUES (1, 20, NULL, 433, 2, 13, 'Rechazo recibo de consignación del usuario = bitboss', '190.145.44.98', NULL, NULL, '2019-05-10 16:38:49', '2019-05-10 16:38:49');
INSERT INTO `dbpcn_logs_admin` VALUES (2, 20, NULL, 434, 2, 15, 'Rechazo recibo de consignación del usuario = cabapella', '190.145.44.98', NULL, NULL, '2019-05-10 16:39:04', '2019-05-10 16:39:04');
INSERT INTO `dbpcn_logs_admin` VALUES (3, 20, NULL, 501, 2, 11, 'Rechazo recibo de consignación del usuario = pasal', '190.145.44.98', NULL, NULL, '2019-05-10 16:41:00', '2019-05-10 16:41:00');
INSERT INTO `dbpcn_logs_admin` VALUES (4, 20, NULL, 501, 1, 16, 'Aprobó recibo de consignación del usuario = pasal', '190.145.44.98', NULL, NULL, '2019-05-10 16:53:29', '2019-05-10 16:53:29');
INSERT INTO `dbpcn_logs_admin` VALUES (5, 20, NULL, 467, 1, 8, 'Aprobó recibo de consignación del usuario = andreyamaya1927', '190.145.44.98', NULL, NULL, '2019-05-10 17:00:48', '2019-05-10 17:00:48');
INSERT INTO `dbpcn_logs_admin` VALUES (6, 20, NULL, 448, 1, 5, 'Aprobó recibo de consignación del usuario = dyjingenieria', '190.145.44.98', NULL, NULL, '2019-05-10 17:01:03', '2019-05-10 17:01:03');
INSERT INTO `dbpcn_logs_admin` VALUES (7, 20, NULL, 437, 1, 4, 'Aprobó recibo de consignación del usuario = globalvision', '190.145.44.98', NULL, NULL, '2019-05-10 17:01:47', '2019-05-10 17:01:47');
INSERT INTO `dbpcn_logs_admin` VALUES (8, 19, 10149, 501, 3, 10149, 'Activación del usuario = pasal', '190.145.44.98', NULL, NULL, '2019-05-10 17:22:49', '2019-05-10 17:22:49');
INSERT INTO `dbpcn_logs_admin` VALUES (9, 20, NULL, 434, 2, 20, 'Rechazo recibo de consignación del usuario = cabapella', '190.65.71.64', NULL, NULL, '2019-05-10 23:47:41', '2019-05-10 23:47:41');
INSERT INTO `dbpcn_logs_admin` VALUES (10, 20, NULL, 435, 2, 17, 'Rechazo recibo de consignación del usuario = luhercar', '190.65.71.64', NULL, NULL, '2019-05-10 23:50:51', '2019-05-10 23:50:51');
INSERT INTO `dbpcn_logs_admin` VALUES (11, 20, NULL, 433, 2, 30, 'Rechazo recibo de consignación del usuario = bitboss', '190.145.44.98', NULL, NULL, '2019-05-13 15:43:27', '2019-05-13 15:43:27');
INSERT INTO `dbpcn_logs_admin` VALUES (12, 20, NULL, 434, 2, 31, 'Rechazo recibo de consignación del usuario = cabapella', '190.145.44.98', NULL, NULL, '2019-05-13 15:45:35', '2019-05-13 15:45:35');
INSERT INTO `dbpcn_logs_admin` VALUES (13, 12, 1, NULL, 5, 17, 'Aprobo Documentación del usuario = pcnetwork', '190.145.44.98', NULL, NULL, '2019-05-13 17:03:53', '2019-05-13 17:03:53');
INSERT INTO `dbpcn_logs_admin` VALUES (14, 21, 1, NULL, 7, 14, 'Aprobo la promesa de compra-venta del usuario = pcnetwork', '190.145.44.98', NULL, NULL, '2019-05-13 17:06:22', '2019-05-13 17:06:22');
INSERT INTO `dbpcn_logs_admin` VALUES (15, 12, 10149, NULL, 5, 18, 'Aprobo Documentación del usuario = pasal', '190.145.44.98', NULL, NULL, '2019-05-13 17:09:08', '2019-05-13 17:09:08');
INSERT INTO `dbpcn_logs_admin` VALUES (16, 21, 10149, NULL, 7, 15, 'Aprobo la promesa de compra-venta del usuario = pasal', '190.145.44.98', NULL, NULL, '2019-05-13 17:10:38', '2019-05-13 17:10:38');
INSERT INTO `dbpcn_logs_admin` VALUES (17, 12, 10148, NULL, 5, 16, 'Aprobo Documentación del usuario = gin', '190.145.44.98', NULL, NULL, '2019-05-13 18:01:41', '2019-05-13 18:01:41');
INSERT INTO `dbpcn_logs_admin` VALUES (18, 21, 10148, NULL, 7, 16, 'Aprobo la promesa de compra-venta del usuario = gin', '190.145.44.98', NULL, NULL, '2019-05-13 19:38:33', '2019-05-13 19:38:33');
INSERT INTO `dbpcn_logs_admin` VALUES (19, 20, NULL, 435, 1, 34, 'Aprobó recibo de consignación del usuario = luhercar', '190.145.44.98', NULL, NULL, '2019-05-13 19:45:25', '2019-05-13 19:45:25');
INSERT INTO `dbpcn_logs_admin` VALUES (20, 20, NULL, 433, 2, 36, 'Rechazo recibo de consignación del usuario = bitboss', '190.145.44.98', NULL, NULL, '2019-05-13 19:47:26', '2019-05-13 19:47:26');
INSERT INTO `dbpcn_logs_admin` VALUES (21, 20, NULL, 434, 1, 38, 'Aprobó recibo de consignación del usuario = cabapella', '190.145.44.98', NULL, NULL, '2019-05-13 20:00:23', '2019-05-13 20:00:23');
INSERT INTO `dbpcn_logs_admin` VALUES (22, 19, 10151, 435, 3, 10151, 'Activación del usuario = luhercar', '190.145.44.98', NULL, NULL, '2019-05-13 20:01:48', '2019-05-13 20:01:48');
INSERT INTO `dbpcn_logs_admin` VALUES (23, 19, 10161, 434, 3, 10161, 'Activación del usuario = cabapella', '190.145.44.98', NULL, NULL, '2019-05-13 20:58:39', '2019-05-13 20:58:39');
INSERT INTO `dbpcn_logs_admin` VALUES (24, 12, 10161, NULL, 5, 19, 'Aprobo Documentación del usuario = cabapella', '190.145.44.98', NULL, NULL, '2019-05-13 21:17:20', '2019-05-13 21:17:20');
INSERT INTO `dbpcn_logs_admin` VALUES (25, 20, NULL, 433, 1, 41, 'Aprobó recibo de consignación del usuario = bitboss', '190.145.44.98', NULL, NULL, '2019-05-13 21:18:46', '2019-05-13 21:18:46');
INSERT INTO `dbpcn_logs_admin` VALUES (26, 19, 10162, 433, 3, 10162, 'Activación del usuario = bitboss', '190.145.44.98', NULL, NULL, '2019-05-13 21:20:59', '2019-05-13 21:20:59');
INSERT INTO `dbpcn_logs_admin` VALUES (27, 21, 10161, NULL, 7, 17, 'Aprobo la promesa de compra-venta del usuario = cabapella', '190.145.44.98', NULL, NULL, '2019-05-13 21:32:33', '2019-05-13 21:32:33');
INSERT INTO `dbpcn_logs_admin` VALUES (28, 20, NULL, 540, 1, 40, 'Aprobó recibo de consignación del usuario = jjpalacio26', '190.145.44.98', NULL, NULL, '2019-05-13 21:37:24', '2019-05-13 21:37:24');
INSERT INTO `dbpcn_logs_admin` VALUES (29, 19, 10163, 540, 3, 10163, 'Activación del usuario = jjpalacio26', '190.145.44.98', NULL, NULL, '2019-05-13 21:38:17', '2019-05-13 21:38:17');
INSERT INTO `dbpcn_logs_admin` VALUES (30, 12, 10162, NULL, 5, 20, 'Aprobo Documentación del usuario = bitboss', '190.145.44.98', NULL, NULL, '2019-05-13 21:39:39', '2019-05-13 21:39:39');
INSERT INTO `dbpcn_logs_admin` VALUES (31, 21, 10162, NULL, 7, 18, 'Aprobo la promesa de compra-venta del usuario = bitboss', '190.145.44.98', NULL, NULL, '2019-05-13 21:52:01', '2019-05-13 21:52:01');
INSERT INTO `dbpcn_logs_admin` VALUES (32, 12, 10163, NULL, 5, 21, 'Aprobo Documentación del usuario = jjpalacio26', '190.145.44.98', NULL, NULL, '2019-05-13 21:53:55', '2019-05-13 21:53:55');
INSERT INTO `dbpcn_logs_admin` VALUES (33, 21, 10163, NULL, 7, 19, 'Aprobo la promesa de compra-venta del usuario = jjpalacio26', '190.145.44.98', NULL, NULL, '2019-05-13 22:20:27', '2019-05-13 22:20:27');
INSERT INTO `dbpcn_logs_admin` VALUES (34, 12, 10151, NULL, 5, 22, 'Aprobo Documentación del usuario = luhercar', '190.145.44.98', NULL, NULL, '2019-05-14 15:17:59', '2019-05-14 15:17:59');
INSERT INTO `dbpcn_logs_admin` VALUES (35, 21, 10151, NULL, 7, 20, 'Aprobo la promesa de compra-venta del usuario = luhercar', '190.145.44.98', NULL, NULL, '2019-05-14 18:41:50', '2019-05-14 18:41:50');
INSERT INTO `dbpcn_logs_admin` VALUES (36, 19, 10164, 437, 3, 10164, 'Activación del usuario = globalvision', '190.145.44.98', NULL, NULL, '2019-05-14 19:05:20', '2019-05-14 19:05:20');
INSERT INTO `dbpcn_logs_admin` VALUES (37, 20, NULL, 521, 1, 21, 'Aprobó recibo de consignación del usuario = yesidf', '190.145.44.98', NULL, NULL, '2019-05-14 19:59:01', '2019-05-14 19:59:01');
INSERT INTO `dbpcn_logs_admin` VALUES (38, 20, NULL, 463, 1, 7, 'Aprobó recibo de consignación del usuario = jufesera', '190.145.44.98', NULL, NULL, '2019-05-14 20:04:52', '2019-05-14 20:04:52');
INSERT INTO `dbpcn_logs_admin` VALUES (39, 19, 10165, 521, 3, 10165, 'Activación del usuario = yesidf', '190.145.44.98', NULL, NULL, '2019-05-14 20:06:33', '2019-05-14 20:06:33');
INSERT INTO `dbpcn_logs_admin` VALUES (40, 20, NULL, 462, 1, 6, 'Aprobó recibo de consignación del usuario = luisfercast', '190.145.44.98', NULL, NULL, '2019-05-14 20:52:47', '2019-05-14 20:52:47');
INSERT INTO `dbpcn_logs_admin` VALUES (41, 12, 10164, NULL, 5, 23, 'Aprobo Documentación del usuario = globalvision', '190.145.44.98', NULL, NULL, '2019-05-14 21:05:35', '2019-05-14 21:05:35');
INSERT INTO `dbpcn_logs_admin` VALUES (42, 20, NULL, 530, 1, 9, 'Aprobó recibo de consignación del usuario = fdam.master', '190.145.44.98', NULL, NULL, '2019-05-14 21:19:41', '2019-05-14 21:19:41');
INSERT INTO `dbpcn_logs_admin` VALUES (43, 20, NULL, 558, 1, 10, 'Aprobó recibo de consignación del usuario = jagaby', '190.145.44.98', NULL, NULL, '2019-05-14 21:36:27', '2019-05-14 21:36:27');
INSERT INTO `dbpcn_logs_admin` VALUES (44, 21, 10164, NULL, 7, 21, 'Aprobo la promesa de compra-venta del usuario = globalvision', '190.145.44.98', NULL, NULL, '2019-05-14 22:44:46', '2019-05-14 22:44:46');
INSERT INTO `dbpcn_logs_admin` VALUES (45, 19, 10166, 558, 3, 10166, 'Activación del usuario = jagaby', '190.145.44.98', NULL, NULL, '2019-05-14 22:53:23', '2019-05-14 22:53:23');
INSERT INTO `dbpcn_logs_admin` VALUES (46, 20, NULL, 478, 1, 37, 'Aprobó recibo de consignación del usuario = nelson_mejia1', '190.145.44.98', NULL, NULL, '2019-05-14 22:58:58', '2019-05-14 22:58:58');
INSERT INTO `dbpcn_logs_admin` VALUES (47, 20, NULL, 465, 1, 23, 'Aprobó recibo de consignación del usuario = carolinayjimmy', '190.145.44.98', NULL, NULL, '2019-05-14 22:59:51', '2019-05-14 22:59:51');
INSERT INTO `dbpcn_logs_admin` VALUES (48, 20, NULL, 452, 1, 24, 'Aprobó recibo de consignación del usuario = diamond17', '190.145.44.98', NULL, NULL, '2019-05-14 23:00:40', '2019-05-14 23:00:40');
INSERT INTO `dbpcn_logs_admin` VALUES (49, 20, NULL, 471, 1, 32, 'Aprobó recibo de consignación del usuario = excellentpower', '190.145.44.98', NULL, NULL, '2019-05-14 23:01:07', '2019-05-14 23:01:07');
INSERT INTO `dbpcn_logs_admin` VALUES (50, 20, NULL, 472, 1, 33, 'Aprobó recibo de consignación del usuario = heyeve', '190.145.44.98', NULL, NULL, '2019-05-14 23:02:04', '2019-05-14 23:02:04');
INSERT INTO `dbpcn_logs_admin` VALUES (51, 20, NULL, 464, 1, 35, 'Aprobó recibo de consignación del usuario = hernuesga', '190.145.44.98', NULL, NULL, '2019-05-14 23:02:54', '2019-05-14 23:02:54');
INSERT INTO `dbpcn_logs_admin` VALUES (52, 20, NULL, 458, 1, 39, 'Aprobó recibo de consignación del usuario = familiasl', '190.145.44.98', NULL, NULL, '2019-05-14 23:22:32', '2019-05-14 23:22:32');
INSERT INTO `dbpcn_logs_admin` VALUES (53, 20, NULL, 511, 1, 43, 'Aprobó recibo de consignación del usuario = camilo1140', '190.145.44.98', NULL, NULL, '2019-05-14 23:23:28', '2019-05-14 23:23:28');
INSERT INTO `dbpcn_logs_admin` VALUES (54, 20, NULL, 489, 1, 44, 'Aprobó recibo de consignación del usuario = yosoy', '190.145.44.98', NULL, NULL, '2019-05-14 23:24:16', '2019-05-14 23:24:16');
INSERT INTO `dbpcn_logs_admin` VALUES (55, 20, NULL, 481, 1, 45, 'Aprobó recibo de consignación del usuario = goldteam', '190.145.44.98', NULL, NULL, '2019-05-14 23:24:49', '2019-05-14 23:24:49');
INSERT INTO `dbpcn_logs_admin` VALUES (56, 20, NULL, 518, 1, 46, 'Aprobó recibo de consignación del usuario = reymidas07', '190.145.44.98', NULL, NULL, '2019-05-14 23:25:29', '2019-05-14 23:25:29');
INSERT INTO `dbpcn_logs_admin` VALUES (57, 20, NULL, 522, 1, 47, 'Aprobó recibo de consignación del usuario = reinamidas', '190.145.44.98', NULL, NULL, '2019-05-14 23:37:31', '2019-05-14 23:37:31');
INSERT INTO `dbpcn_logs_admin` VALUES (58, 20, NULL, 505, 1, 48, 'Aprobó recibo de consignación del usuario = emjv2019', '190.145.44.98', NULL, NULL, '2019-05-14 23:38:01', '2019-05-14 23:38:01');
INSERT INTO `dbpcn_logs_admin` VALUES (59, 20, NULL, 546, 1, 49, 'Aprobó recibo de consignación del usuario = lnlb2019', '190.145.44.98', NULL, NULL, '2019-05-14 23:38:43', '2019-05-14 23:38:43');
INSERT INTO `dbpcn_logs_admin` VALUES (60, 20, NULL, 479, 1, 25, 'Aprobó recibo de consignación del usuario = housedream', '190.145.44.98', NULL, NULL, '2019-05-14 23:47:04', '2019-05-14 23:47:04');
INSERT INTO `dbpcn_logs_admin` VALUES (61, 20, NULL, 451, 1, 14, 'Aprobó recibo de consignación del usuario = eliasbm', '190.145.44.98', NULL, NULL, '2019-05-14 23:50:15', '2019-05-14 23:50:15');
INSERT INTO `dbpcn_logs_admin` VALUES (62, 20, NULL, 436, 1, 18, 'Aprobó recibo de consignación del usuario = wolf_ecu', '190.145.44.98', NULL, NULL, '2019-05-14 23:51:36', '2019-05-14 23:51:36');
INSERT INTO `dbpcn_logs_admin` VALUES (63, 20, NULL, 442, 1, 19, 'Aprobó recibo de consignación del usuario = paulhstevens', '190.145.44.98', NULL, NULL, '2019-05-14 23:52:19', '2019-05-14 23:52:19');
INSERT INTO `dbpcn_logs_admin` VALUES (64, 20, NULL, 453, 1, 28, 'Aprobó recibo de consignación del usuario = luchomaster', '190.145.44.98', NULL, NULL, '2019-05-14 23:52:45', '2019-05-14 23:52:45');
INSERT INTO `dbpcn_logs_admin` VALUES (65, 20, NULL, 456, 1, 29, 'Aprobó recibo de consignación del usuario = luzirene', '190.145.44.98', NULL, NULL, '2019-05-14 23:52:57', '2019-05-14 23:52:57');
INSERT INTO `dbpcn_logs_admin` VALUES (66, 20, NULL, 443, 1, 26, 'Aprobó recibo de consignación del usuario = adelito62', '190.145.44.98', NULL, NULL, '2019-05-14 23:54:19', '2019-05-14 23:54:19');
INSERT INTO `dbpcn_logs_admin` VALUES (67, 20, NULL, 449, 1, 27, 'Aprobó recibo de consignación del usuario = farcoin93', '190.145.44.98', NULL, NULL, '2019-05-14 23:54:37', '2019-05-14 23:54:37');
INSERT INTO `dbpcn_logs_admin` VALUES (68, 19, 10167, 436, 3, 10167, 'Activación del usuario = wolf_ecu', '190.145.44.98', NULL, NULL, '2019-05-15 00:01:01', '2019-05-15 00:01:01');
INSERT INTO `dbpcn_logs_admin` VALUES (69, 19, 10168, 442, 3, 10168, 'Activación del usuario = paulhstevens', '190.145.44.98', NULL, NULL, '2019-05-15 00:01:54', '2019-05-15 00:01:54');
INSERT INTO `dbpcn_logs_admin` VALUES (70, 19, 10169, 443, 3, 10169, 'Activación del usuario = adelito62', '190.145.44.98', NULL, NULL, '2019-05-15 00:02:23', '2019-05-15 00:02:23');
INSERT INTO `dbpcn_logs_admin` VALUES (71, 20, NULL, 569, 2, 22, 'Rechazo recibo de consignación del usuario = visionary', '190.145.44.98', NULL, NULL, '2019-05-15 00:02:50', '2019-05-15 00:02:50');
INSERT INTO `dbpcn_logs_admin` VALUES (72, 19, 10170, 449, 3, 10170, 'Activación del usuario = farcoin93', '190.145.44.98', NULL, NULL, '2019-05-15 00:03:16', '2019-05-15 00:03:16');
INSERT INTO `dbpcn_logs_admin` VALUES (73, 19, 10171, 451, 3, 10171, 'Activación del usuario = eliasbm', '190.145.44.98', NULL, NULL, '2019-05-15 00:03:49', '2019-05-15 00:03:49');
INSERT INTO `dbpcn_logs_admin` VALUES (74, 19, 10172, 465, 3, 10172, 'Activación del usuario = carolinayjimmy', '190.145.44.98', NULL, NULL, '2019-05-15 00:08:26', '2019-05-15 00:08:26');
INSERT INTO `dbpcn_logs_admin` VALUES (75, 20, NULL, 475, 1, 42, 'Aprobó recibo de consignación del usuario = juan1515', '190.145.44.98', NULL, NULL, '2019-05-15 00:23:23', '2019-05-15 00:23:23');
INSERT INTO `dbpcn_logs_admin` VALUES (76, 20, NULL, 454, 1, 51, 'Aprobó recibo de consignación del usuario = darioquijano', '190.145.44.98', NULL, NULL, '2019-05-15 00:23:49', '2019-05-15 00:23:49');
INSERT INTO `dbpcn_logs_admin` VALUES (77, 20, NULL, 469, 1, 53, 'Aprobó recibo de consignación del usuario = tico1977', '190.145.44.98', NULL, NULL, '2019-05-15 00:24:14', '2019-05-15 00:24:14');
INSERT INTO `dbpcn_logs_admin` VALUES (78, 20, NULL, 484, 1, 54, 'Aprobó recibo de consignación del usuario = yulimarolivera0408', '190.145.44.98', NULL, NULL, '2019-05-15 00:24:25', '2019-05-15 00:24:25');
INSERT INTO `dbpcn_logs_admin` VALUES (79, 20, NULL, 547, 1, 55, 'Aprobó recibo de consignación del usuario = iferrer2019', '190.145.44.98', NULL, NULL, '2019-05-15 00:24:36', '2019-05-15 00:24:36');
INSERT INTO `dbpcn_logs_admin` VALUES (80, 20, NULL, 496, 1, 56, 'Aprobó recibo de consignación del usuario = adriana', '190.145.44.98', NULL, NULL, '2019-05-15 00:24:44', '2019-05-15 00:24:44');
INSERT INTO `dbpcn_logs_admin` VALUES (81, 20, NULL, 459, 1, 57, 'Aprobó recibo de consignación del usuario = carly', '190.145.44.98', NULL, NULL, '2019-05-15 00:24:56', '2019-05-15 00:24:56');
INSERT INTO `dbpcn_logs_admin` VALUES (82, 20, NULL, 549, 1, 58, 'Aprobó recibo de consignación del usuario = dserrano', '190.145.44.98', NULL, NULL, '2019-05-15 00:25:10', '2019-05-15 00:25:10');
INSERT INTO `dbpcn_logs_admin` VALUES (83, 20, NULL, 589, 1, 60, 'Aprobó recibo de consignación del usuario = masterdreamers', '190.145.44.98', NULL, NULL, '2019-05-15 00:25:19', '2019-05-15 00:25:19');
INSERT INTO `dbpcn_logs_admin` VALUES (84, 20, NULL, 440, 1, 59, 'Aprobó recibo de consignación del usuario = trillonario', '190.145.44.98', NULL, NULL, '2019-05-15 00:29:36', '2019-05-15 00:29:36');
INSERT INTO `dbpcn_logs_admin` VALUES (85, 20, NULL, 574, 1, 52, 'Aprobó recibo de consignación del usuario = macdfd01', '190.145.44.98', NULL, NULL, '2019-05-15 00:29:41', '2019-05-15 00:29:41');
INSERT INTO `dbpcn_logs_admin` VALUES (86, 25, 10173, 440, 3, 10173, 'Activación del usuario = trillonario', '190.145.44.98', NULL, NULL, '2019-05-15 00:32:28', '2019-05-15 00:32:28');
INSERT INTO `dbpcn_logs_admin` VALUES (87, 25, 10174, 589, 3, 10174, 'Activación del usuario = masterdreamers', '190.145.44.98', NULL, NULL, '2019-05-15 00:34:09', '2019-05-15 00:34:09');
INSERT INTO `dbpcn_logs_admin` VALUES (88, 25, 10175, 489, 3, 10175, 'Activación del usuario = yosoy', '190.145.44.98', NULL, NULL, '2019-05-15 00:34:27', '2019-05-15 00:34:27');
INSERT INTO `dbpcn_logs_admin` VALUES (89, 19, 10176, 505, 3, 10176, 'Activación del usuario = emjv2019', '190.145.44.98', NULL, NULL, '2019-05-15 00:34:40', '2019-05-15 00:34:40');
INSERT INTO `dbpcn_logs_admin` VALUES (90, 25, 10177, 452, 3, 10177, 'Activación del usuario = diamond17', '190.145.44.98', NULL, NULL, '2019-05-15 00:35:16', '2019-05-15 00:35:16');
INSERT INTO `dbpcn_logs_admin` VALUES (91, 25, 10178, 453, 3, 10178, 'Activación del usuario = luchomaster', '190.145.44.98', NULL, NULL, '2019-05-15 00:35:28', '2019-05-15 00:35:28');
INSERT INTO `dbpcn_logs_admin` VALUES (92, 25, 10179, 454, 3, 10179, 'Activación del usuario = darioquijano', '190.145.44.98', NULL, NULL, '2019-05-15 00:35:42', '2019-05-15 00:35:42');
INSERT INTO `dbpcn_logs_admin` VALUES (93, 25, 10180, 456, 3, 10180, 'Activación del usuario = luzirene', '190.145.44.98', NULL, NULL, '2019-05-15 00:35:59', '2019-05-15 00:35:59');
INSERT INTO `dbpcn_logs_admin` VALUES (94, 19, 10181, 458, 3, 10181, 'Activación del usuario = familiasl', '190.145.44.98', NULL, NULL, '2019-05-15 00:36:09', '2019-05-15 00:36:09');
INSERT INTO `dbpcn_logs_admin` VALUES (95, 25, 10182, 459, 3, 10182, 'Activación del usuario = carly', '190.145.44.98', NULL, NULL, '2019-05-15 00:36:37', '2019-05-15 00:36:37');
INSERT INTO `dbpcn_logs_admin` VALUES (96, 19, 10183, 475, 3, 10183, 'Activación del usuario = juan1515', '190.145.44.98', NULL, NULL, '2019-05-15 00:36:41', '2019-05-15 00:36:41');
INSERT INTO `dbpcn_logs_admin` VALUES (97, 19, 10184, 478, 3, 10184, 'Activación del usuario = nelson_mejia1', '190.145.44.98', NULL, NULL, '2019-05-15 00:37:06', '2019-05-15 00:37:06');
INSERT INTO `dbpcn_logs_admin` VALUES (98, 25, 10185, 464, 3, 10185, 'Activación del usuario = hernuesga', '190.145.44.98', NULL, NULL, '2019-05-15 00:37:12', '2019-05-15 00:37:12');
INSERT INTO `dbpcn_logs_admin` VALUES (99, 25, 10186, 469, 3, 10186, 'Activación del usuario = tico1977', '190.145.44.98', NULL, NULL, '2019-05-15 00:37:26', '2019-05-15 00:37:26');
INSERT INTO `dbpcn_logs_admin` VALUES (100, 25, 10187, 481, 3, 10187, 'Activación del usuario = goldteam', '190.145.44.98', NULL, NULL, '2019-05-15 00:39:29', '2019-05-15 00:39:29');
INSERT INTO `dbpcn_logs_admin` VALUES (101, 25, 10188, 484, 3, 10188, 'Activación del usuario = yulimarolivera0408', '190.145.44.98', NULL, NULL, '2019-05-15 00:39:46', '2019-05-15 00:39:46');
INSERT INTO `dbpcn_logs_admin` VALUES (102, 25, 10189, 518, 3, 10189, 'Activación del usuario = reymidas07', '190.145.44.98', NULL, NULL, '2019-05-15 00:40:11', '2019-05-15 00:40:11');
INSERT INTO `dbpcn_logs_admin` VALUES (103, 25, 10190, 522, 3, 10190, 'Activación del usuario = reinamidas', '190.145.44.98', NULL, NULL, '2019-05-15 00:40:30', '2019-05-15 00:40:30');
INSERT INTO `dbpcn_logs_admin` VALUES (104, 25, 10191, 530, 3, 10191, 'Activación del usuario = fdam.master', '190.145.44.98', NULL, NULL, '2019-05-15 00:40:41', '2019-05-15 00:40:41');
INSERT INTO `dbpcn_logs_admin` VALUES (105, 25, 10192, 546, 3, 10192, 'Activación del usuario = lnlb2019', '190.145.44.98', NULL, NULL, '2019-05-15 00:40:56', '2019-05-15 00:40:56');
INSERT INTO `dbpcn_logs_admin` VALUES (106, 25, 10193, 547, 3, 10193, 'Activación del usuario = iferrer2019', '190.145.44.98', NULL, NULL, '2019-05-15 00:41:05', '2019-05-15 00:41:05');
INSERT INTO `dbpcn_logs_admin` VALUES (107, 25, 10194, 549, 3, 10194, 'Activación del usuario = dserrano', '190.145.44.98', NULL, NULL, '2019-05-15 00:41:13', '2019-05-15 00:41:13');
INSERT INTO `dbpcn_logs_admin` VALUES (108, 25, 10195, 574, 3, 10195, 'Activación del usuario = macdfd01', '190.145.44.98', NULL, NULL, '2019-05-15 00:41:21', '2019-05-15 00:41:21');
INSERT INTO `dbpcn_logs_admin` VALUES (109, 12, 10179, NULL, 5, 29, 'Aprobo Documentación del usuario = darioquijano', '190.145.44.98', NULL, NULL, '2019-05-15 12:53:56', '2019-05-15 12:53:56');
INSERT INTO `dbpcn_logs_admin` VALUES (110, 12, 10176, NULL, 5, 32, 'Aprobo Documentación del usuario = emjv2019', '190.145.44.98', NULL, NULL, '2019-05-15 13:03:13', '2019-05-15 13:03:13');
INSERT INTO `dbpcn_logs_admin` VALUES (111, 12, 10191, NULL, 5, 26, 'Aprobo Documentación del usuario = fdam.master', '190.145.44.98', NULL, NULL, '2019-05-15 13:08:07', '2019-05-15 13:08:07');
INSERT INTO `dbpcn_logs_admin` VALUES (112, 12, 10185, NULL, 5, 30, 'Aprobo Documentación del usuario = hernuesga', '190.145.44.98', NULL, NULL, '2019-05-15 13:15:03', '2019-05-15 13:15:03');
INSERT INTO `dbpcn_logs_admin` VALUES (113, 12, 10171, NULL, 5, 33, 'Aprobo Documentación del usuario = eliasbm', '190.145.44.98', NULL, NULL, '2019-05-15 13:22:23', '2019-05-15 13:22:23');
INSERT INTO `dbpcn_logs_admin` VALUES (114, 12, 10168, NULL, 5, 28, 'Aprobo Documentación del usuario = paulhstevens', '190.145.44.98', NULL, NULL, '2019-05-15 13:35:59', '2019-05-15 13:35:59');
INSERT INTO `dbpcn_logs_admin` VALUES (115, 12, 10167, NULL, 5, 27, 'Aprobo Documentación del usuario = wolf_ecu', '190.145.44.98', NULL, NULL, '2019-05-15 13:36:11', '2019-05-15 13:36:11');
INSERT INTO `dbpcn_logs_admin` VALUES (116, 20, NULL, 493, 1, 50, 'Aprobó recibo de consignación del usuario = atlanrot', '190.145.44.98', NULL, NULL, '2019-05-15 13:43:45', '2019-05-15 13:43:45');
INSERT INTO `dbpcn_logs_admin` VALUES (117, 12, 10178, NULL, 5, 31, 'Aprobo Documentación del usuario = luchomaster', '190.145.44.98', NULL, NULL, '2019-05-15 13:49:30', '2019-05-15 13:49:30');
INSERT INTO `dbpcn_logs_admin` VALUES (118, 19, 10196, 493, 3, 10196, 'Activación del usuario = atlanrot', '190.145.44.98', NULL, NULL, '2019-05-15 13:56:56', '2019-05-15 13:56:56');
INSERT INTO `dbpcn_logs_admin` VALUES (119, 20, NULL, 439, 1, 62, 'Aprobó recibo de consignación del usuario = alexluisv', '190.145.44.98', NULL, NULL, '2019-05-15 13:57:14', '2019-05-15 13:57:14');
INSERT INTO `dbpcn_logs_admin` VALUES (120, 20, NULL, 531, 1, 64, 'Aprobó recibo de consignación del usuario = inari', '190.145.44.98', NULL, NULL, '2019-05-15 13:57:54', '2019-05-15 13:57:54');
INSERT INTO `dbpcn_logs_admin` VALUES (121, 20, NULL, 486, 1, 63, 'Aprobó recibo de consignación del usuario = kano', '190.145.44.98', NULL, NULL, '2019-05-15 13:57:59', '2019-05-15 13:57:59');
INSERT INTO `dbpcn_logs_admin` VALUES (122, 19, 10197, 439, 3, 10197, 'Activación del usuario = alexluisv', '190.145.44.98', NULL, NULL, '2019-05-15 13:59:09', '2019-05-15 13:59:09');
INSERT INTO `dbpcn_logs_admin` VALUES (123, 19, 10198, 486, 3, 10198, 'Activación del usuario = kano', '190.145.44.98', NULL, NULL, '2019-05-15 14:00:16', '2019-05-15 14:00:16');
INSERT INTO `dbpcn_logs_admin` VALUES (124, 20, NULL, 569, 2, 61, 'Rechazo recibo de consignación del usuario = visionary', '190.145.44.98', NULL, NULL, '2019-05-15 14:17:22', '2019-05-15 14:17:22');
INSERT INTO `dbpcn_logs_admin` VALUES (125, 25, 10199, 448, 3, 10199, 'Activación del usuario = dyjingenieria', '190.145.44.98', NULL, NULL, '2019-05-15 15:28:59', '2019-05-15 15:28:59');
INSERT INTO `dbpcn_logs_admin` VALUES (126, 25, 10200, 462, 3, 10200, 'Activación del usuario = luisfercast', '190.145.44.98', NULL, NULL, '2019-05-15 15:29:22', '2019-05-15 15:29:22');
INSERT INTO `dbpcn_logs_admin` VALUES (127, 25, 10201, 463, 3, 10201, 'Activación del usuario = jufesera', '190.145.44.98', NULL, NULL, '2019-05-15 15:29:37', '2019-05-15 15:29:37');
INSERT INTO `dbpcn_logs_admin` VALUES (128, 25, 10202, 467, 3, 10202, 'Activación del usuario = andreyamaya1927', '190.145.44.98', NULL, NULL, '2019-05-15 15:29:46', '2019-05-15 15:29:46');
INSERT INTO `dbpcn_logs_admin` VALUES (129, 25, 10203, 479, 3, 10203, 'Activación del usuario = housedream', '190.145.44.98', NULL, NULL, '2019-05-15 15:30:41', '2019-05-15 15:30:41');
INSERT INTO `dbpcn_logs_admin` VALUES (130, 25, 10204, 496, 3, 10204, 'Activación del usuario = adriana', '190.145.44.98', NULL, NULL, '2019-05-15 15:30:49', '2019-05-15 15:30:49');
INSERT INTO `dbpcn_logs_admin` VALUES (131, 25, 10205, 471, 3, 10205, 'Activación del usuario = excellentpower', '190.145.44.98', NULL, NULL, '2019-05-15 15:33:13', '2019-05-15 15:33:13');
INSERT INTO `dbpcn_logs_admin` VALUES (132, 25, 10206, 472, 3, 10206, 'Activación del usuario = heyeve', '190.145.44.98', NULL, NULL, '2019-05-15 15:33:27', '2019-05-15 15:33:27');
INSERT INTO `dbpcn_logs_admin` VALUES (133, 25, 10207, 531, 3, 10207, 'Activación del usuario = inari', '190.145.44.98', NULL, NULL, '2019-05-15 15:34:13', '2019-05-15 15:34:13');
INSERT INTO `dbpcn_logs_admin` VALUES (134, 12, 10172, NULL, 5, 38, 'Aprobo Documentación del usuario = carolinayjimmy', '190.145.44.98', NULL, NULL, '2019-05-15 16:51:44', '2019-05-15 16:51:44');
INSERT INTO `dbpcn_logs_admin` VALUES (135, 20, NULL, 569, 1, 65, 'Aprobó recibo de consignación del usuario = visionary', '190.145.44.98', NULL, NULL, '2019-05-15 17:18:25', '2019-05-15 17:18:25');
INSERT INTO `dbpcn_logs_admin` VALUES (136, 19, 10208, 569, 3, 10208, 'Activación del usuario = visionary', '190.145.44.98', NULL, NULL, '2019-05-15 17:34:03', '2019-05-15 17:34:03');
INSERT INTO `dbpcn_logs_admin` VALUES (137, 12, 10183, NULL, 5, 41, 'Aprobo Documentación del usuario = juan1515', '190.145.44.98', NULL, NULL, '2019-05-15 18:36:55', '2019-05-15 18:36:55');
INSERT INTO `dbpcn_logs_admin` VALUES (138, 21, 10191, NULL, 7, 26, 'Aprobo la promesa de compra-venta del usuario = fdam.master', '190.145.44.98', NULL, NULL, '2019-05-15 19:48:49', '2019-05-15 19:48:49');
INSERT INTO `dbpcn_logs_admin` VALUES (139, 21, 10176, NULL, 7, 25, 'Aprobo la promesa de compra-venta del usuario = emjv2019', '190.145.44.98', NULL, NULL, '2019-05-15 19:52:06', '2019-05-15 19:52:06');
INSERT INTO `dbpcn_logs_admin` VALUES (140, 21, 10185, NULL, 7, 24, 'Aprobo la promesa de compra-venta del usuario = hernuesga', '190.145.44.98', NULL, NULL, '2019-05-15 19:54:47', '2019-05-15 19:54:47');
INSERT INTO `dbpcn_logs_admin` VALUES (141, 12, 10197, NULL, 5, 39, 'Aprobo Documentación del usuario = alexluisv', '190.145.44.98', NULL, NULL, '2019-05-15 20:02:50', '2019-05-15 20:02:50');
INSERT INTO `dbpcn_logs_admin` VALUES (142, 12, 10202, NULL, 5, 36, 'Aprobo Documentación del usuario = andreyamaya1927', '190.145.44.98', NULL, NULL, '2019-05-15 20:03:39', '2019-05-15 20:03:39');
INSERT INTO `dbpcn_logs_admin` VALUES (143, 12, 10199, NULL, 5, 35, 'Aprobo Documentación del usuario = dyjingenieria', '190.145.44.98', NULL, NULL, '2019-05-15 20:03:49', '2019-05-15 20:03:49');
INSERT INTO `dbpcn_logs_admin` VALUES (144, 12, 10203, NULL, 5, 44, 'Aprobo Documentación del usuario = housedream', '190.145.44.98', NULL, NULL, '2019-05-15 20:03:56', '2019-05-15 20:03:56');
INSERT INTO `dbpcn_logs_admin` VALUES (145, 12, 10192, NULL, 5, 43, 'Aprobo Documentación del usuario = lnlb2019', '190.145.44.98', NULL, NULL, '2019-05-15 20:08:35', '2019-05-15 20:08:35');
INSERT INTO `dbpcn_logs_admin` VALUES (146, 12, 10180, NULL, 5, 40, 'Aprobo Documentación del usuario = luzirene', '190.145.44.98', NULL, NULL, '2019-05-15 20:08:43', '2019-05-15 20:08:43');
INSERT INTO `dbpcn_logs_admin` VALUES (147, 12, 10190, NULL, 5, 42, 'Aprobo Documentación del usuario = reinamidas', '190.145.44.98', NULL, NULL, '2019-05-15 20:08:51', '2019-05-15 20:08:51');
INSERT INTO `dbpcn_logs_admin` VALUES (148, 12, 10189, NULL, 5, 37, 'Aprobo Documentación del usuario = reymidas07', '190.145.44.98', NULL, NULL, '2019-05-15 20:08:57', '2019-05-15 20:08:57');
INSERT INTO `dbpcn_logs_admin` VALUES (149, 12, 10175, NULL, 5, 25, 'Aprobo Documentación del usuario = yosoy', '190.145.44.98', NULL, NULL, '2019-05-15 20:09:03', '2019-05-15 20:09:03');
INSERT INTO `dbpcn_logs_admin` VALUES (150, 12, 10193, NULL, 5, 34, 'Aprobo Documentación del usuario = iferrer2019', '190.145.44.98', NULL, NULL, '2019-05-15 20:10:20', '2019-05-15 20:10:20');
INSERT INTO `dbpcn_logs_admin` VALUES (151, 12, 10166, NULL, 5, 24, 'Aprobo Documentación del usuario = jagaby', '190.145.44.98', NULL, NULL, '2019-05-15 20:10:28', '2019-05-15 20:10:28');
INSERT INTO `dbpcn_logs_admin` VALUES (152, 21, 10179, NULL, 6, 22, 'Rechazo la promesa de compra-venta  del usuario = darioquijano', '190.145.44.98', NULL, NULL, '2019-05-15 20:28:58', '2019-05-15 20:28:58');
INSERT INTO `dbpcn_logs_admin` VALUES (153, 21, 10171, NULL, 6, 23, 'Rechazo la promesa de compra-venta  del usuario = eliasbm', '190.145.44.98', NULL, NULL, '2019-05-15 20:29:17', '2019-05-15 20:29:17');
INSERT INTO `dbpcn_logs_admin` VALUES (154, 21, 10167, NULL, 7, 27, 'Aprobo la promesa de compra-venta del usuario = wolf_ecu', '190.145.44.98', NULL, NULL, '2019-05-15 21:29:10', '2019-05-15 21:29:10');
INSERT INTO `dbpcn_logs_admin` VALUES (155, 21, 10192, NULL, 7, 29, 'Aprobo la promesa de compra-venta del usuario = lnlb2019', '190.145.44.98', NULL, NULL, '2019-05-15 21:43:05', '2019-05-15 21:43:05');
INSERT INTO `dbpcn_logs_admin` VALUES (156, 21, 10183, NULL, 7, 28, 'Aprobo la promesa de compra-venta del usuario = juan1515', '190.145.44.98', NULL, NULL, '2019-05-15 22:20:40', '2019-05-15 22:20:40');
INSERT INTO `dbpcn_logs_admin` VALUES (157, 21, 10179, NULL, 7, 30, 'Aprobo la promesa de compra-venta del usuario = darioquijano', '190.145.44.98', NULL, NULL, '2019-05-15 22:22:16', '2019-05-15 22:22:16');
INSERT INTO `dbpcn_logs_admin` VALUES (158, 21, 10178, NULL, 6, 31, 'Rechazo la promesa de compra-venta  del usuario = luchomaster', '190.145.44.98', NULL, NULL, '2019-05-15 22:29:50', '2019-05-15 22:29:50');
INSERT INTO `dbpcn_logs_admin` VALUES (159, 12, 10198, NULL, 5, 49, 'Aprobo Documentación del usuario = kano', '190.145.44.98', NULL, NULL, '2019-05-16 12:56:32', '2019-05-16 12:56:32');
INSERT INTO `dbpcn_logs_admin` VALUES (160, 12, 10184, NULL, 5, 46, 'Aprobo Documentación del usuario = nelson_mejia1', '190.145.44.98', NULL, NULL, '2019-05-16 12:59:58', '2019-05-16 12:59:58');
INSERT INTO `dbpcn_logs_admin` VALUES (161, 12, 10208, NULL, 5, 51, 'Aprobo Documentación del usuario = visionary', '190.145.44.98', NULL, NULL, '2019-05-16 13:04:38', '2019-05-16 13:04:38');
INSERT INTO `dbpcn_logs_admin` VALUES (162, 12, 10165, NULL, 5, 47, 'Aprobo Documentación del usuario = yesidf', '190.145.44.98', NULL, NULL, '2019-05-16 13:06:51', '2019-05-16 13:06:51');
INSERT INTO `dbpcn_logs_admin` VALUES (163, 12, 10188, NULL, 5, 45, 'Aprobo Documentación del usuario = yulimarolivera0408', '190.145.44.98', NULL, NULL, '2019-05-16 13:12:03', '2019-05-16 13:12:03');
INSERT INTO `dbpcn_logs_admin` VALUES (164, 20, NULL, 495, 1, 66, 'Aprobó recibo de consignación del usuario = cupercuevas83', '190.145.44.98', NULL, NULL, '2019-05-16 13:23:03', '2019-05-16 13:23:03');
INSERT INTO `dbpcn_logs_admin` VALUES (165, 20, NULL, 461, 1, 67, 'Aprobó recibo de consignación del usuario = wtpropiedad1', '190.145.44.98', NULL, NULL, '2019-05-16 13:23:08', '2019-05-16 13:23:08');
INSERT INTO `dbpcn_logs_admin` VALUES (166, 21, 10199, NULL, 7, 35, 'Aprobo la promesa de compra-venta del usuario = dyjingenieria', '190.145.44.98', NULL, NULL, '2019-05-16 14:11:56', '2019-05-16 14:11:56');
INSERT INTO `dbpcn_logs_admin` VALUES (167, 21, 10171, NULL, 7, 34, 'Aprobo la promesa de compra-venta del usuario = eliasbm', '190.145.44.98', NULL, NULL, '2019-05-16 14:45:36', '2019-05-16 14:45:36');
INSERT INTO `dbpcn_logs_admin` VALUES (168, 21, 10203, NULL, 7, 40, 'Aprobo la promesa de compra-venta del usuario = housedream', '190.145.44.98', NULL, NULL, '2019-05-16 14:47:59', '2019-05-16 14:47:59');
INSERT INTO `dbpcn_logs_admin` VALUES (169, 21, 10166, NULL, 7, 36, 'Aprobo la promesa de compra-venta del usuario = jagaby', '190.145.44.98', NULL, NULL, '2019-05-16 14:54:50', '2019-05-16 14:54:50');
INSERT INTO `dbpcn_logs_admin` VALUES (170, 21, 10189, NULL, 7, 37, 'Aprobo la promesa de compra-venta del usuario = reymidas07', '190.145.44.98', NULL, NULL, '2019-05-16 15:03:36', '2019-05-16 15:03:36');
INSERT INTO `dbpcn_logs_admin` VALUES (171, 21, 10178, NULL, 7, 32, 'Aprobo la promesa de compra-venta del usuario = luchomaster', '190.145.44.98', NULL, NULL, '2019-05-16 15:11:28', '2019-05-16 15:11:28');
INSERT INTO `dbpcn_logs_admin` VALUES (172, 21, 10193, NULL, 6, 39, 'Rechazo la promesa de compra-venta  del usuario = iferrer2019', '190.145.44.98', NULL, NULL, '2019-05-16 15:14:07', '2019-05-16 15:14:07');
INSERT INTO `dbpcn_logs_admin` VALUES (173, 21, 10180, NULL, 6, 33, 'Rechazo la promesa de compra-venta  del usuario = luzirene', '190.145.44.98', NULL, NULL, '2019-05-16 15:15:01', '2019-05-16 15:15:01');
INSERT INTO `dbpcn_logs_admin` VALUES (174, 21, 10190, NULL, 6, 38, 'Rechazo la promesa de compra-venta  del usuario = reinamidas', '190.145.44.98', NULL, NULL, '2019-05-16 15:16:16', '2019-05-16 15:16:16');
INSERT INTO `dbpcn_logs_admin` VALUES (175, 21, 10197, NULL, 6, 41, 'Rechazo la promesa de compra-venta  del usuario = alexluisv', '190.145.44.98', NULL, NULL, '2019-05-16 15:17:42', '2019-05-16 15:17:42');
INSERT INTO `dbpcn_logs_admin` VALUES (176, 12, 10207, NULL, 5, 50, 'Aprobo Documentación del usuario = inari', '190.145.44.98', NULL, NULL, '2019-05-16 15:19:31', '2019-05-16 15:19:31');
INSERT INTO `dbpcn_logs_admin` VALUES (177, 12, 10201, NULL, 5, 52, 'Aprobo Documentación del usuario = jufesera', '190.145.44.98', NULL, NULL, '2019-05-16 15:21:32', '2019-05-16 15:21:32');
INSERT INTO `dbpcn_logs_admin` VALUES (178, 12, 10200, NULL, 5, 48, 'Aprobo Documentación del usuario = luisfercast', '190.145.44.98', NULL, NULL, '2019-05-16 15:23:47', '2019-05-16 15:23:47');
INSERT INTO `dbpcn_logs_admin` VALUES (179, 25, 10209, 511, 3, 10209, 'Activación del usuario = camilo1140', '190.145.44.98', NULL, NULL, '2019-05-16 16:07:17', '2019-05-16 16:07:17');
INSERT INTO `dbpcn_logs_admin` VALUES (180, 25, 10210, 495, 3, 10210, 'Activación del usuario = cupercuevas83', '190.145.44.98', NULL, NULL, '2019-05-16 16:07:44', '2019-05-16 16:07:44');
INSERT INTO `dbpcn_logs_admin` VALUES (181, 25, 10211, 461, 3, 10211, 'Activación del usuario = wtpropiedad1', '190.145.44.98', NULL, NULL, '2019-05-16 16:08:34', '2019-05-16 16:08:34');
INSERT INTO `dbpcn_logs_admin` VALUES (182, 21, 10197, NULL, 7, 43, 'Aprobo la promesa de compra-venta del usuario = alexluisv', '190.145.44.98', NULL, NULL, '2019-05-16 16:15:44', '2019-05-16 16:15:44');
INSERT INTO `dbpcn_logs_admin` VALUES (183, 21, 10201, NULL, 6, 42, 'Rechazo la promesa de compra-venta  del usuario = jufesera', '190.145.44.98', NULL, NULL, '2019-05-16 16:23:25', '2019-05-16 16:23:25');
INSERT INTO `dbpcn_logs_admin` VALUES (184, 12, 10196, NULL, 5, 57, 'Aprobo Documentación del usuario = atlanrot', '190.145.44.98', NULL, NULL, '2019-05-16 18:53:53', '2019-05-16 18:53:53');
INSERT INTO `dbpcn_logs_admin` VALUES (185, 12, 10177, NULL, 5, 53, 'Aprobo Documentación del usuario = diamond17', '190.145.44.98', NULL, NULL, '2019-05-16 18:55:27', '2019-05-16 18:55:27');
INSERT INTO `dbpcn_logs_admin` VALUES (186, 12, 10205, NULL, 5, 54, 'Aprobo Documentación del usuario = excellentpower', '190.145.44.98', NULL, NULL, '2019-05-16 19:01:41', '2019-05-16 19:01:41');
INSERT INTO `dbpcn_logs_admin` VALUES (187, 12, 10206, NULL, 5, 55, 'Aprobo Documentación del usuario = heyeve', '190.145.44.98', NULL, NULL, '2019-05-16 19:04:04', '2019-05-16 19:04:04');
INSERT INTO `dbpcn_logs_admin` VALUES (188, 12, 10181, NULL, 5, 56, 'Aprobo Documentación del usuario = familiasl', '190.145.44.98', NULL, NULL, '2019-05-16 19:07:06', '2019-05-16 19:07:06');
INSERT INTO `dbpcn_logs_admin` VALUES (189, 21, 10202, NULL, 7, 45, 'Aprobo la promesa de compra-venta del usuario = andreyamaya1927', '190.145.44.98', NULL, NULL, '2019-05-16 19:10:34', '2019-05-16 19:10:34');
INSERT INTO `dbpcn_logs_admin` VALUES (190, 21, 10208, NULL, 6, 44, 'Rechazo la promesa de compra-venta  del usuario = visionary', '190.145.44.98', NULL, NULL, '2019-05-16 19:51:14', '2019-05-16 19:51:14');
INSERT INTO `dbpcn_logs_admin` VALUES (191, 21, 10180, NULL, 7, 48, 'Aprobo la promesa de compra-venta del usuario = luzirene', '190.145.44.98', NULL, NULL, '2019-05-16 20:45:17', '2019-05-16 20:45:17');
INSERT INTO `dbpcn_logs_admin` VALUES (192, 20, NULL, 590, 1, 68, 'Aprobó recibo de consignación del usuario = nancy.roa', '190.145.44.98', NULL, NULL, '2019-05-16 20:55:29', '2019-05-16 20:55:29');
INSERT INTO `dbpcn_logs_admin` VALUES (193, 21, 10172, NULL, 7, 46, 'Aprobo la promesa de compra-venta del usuario = carolinayjimmy', '190.145.44.98', NULL, NULL, '2019-05-16 20:58:38', '2019-05-16 20:58:38');
INSERT INTO `dbpcn_logs_admin` VALUES (194, 21, 10205, NULL, 7, 49, 'Aprobo la promesa de compra-venta del usuario = excellentpower', '190.145.44.98', NULL, NULL, '2019-05-16 21:01:48', '2019-05-16 21:01:48');
INSERT INTO `dbpcn_logs_admin` VALUES (195, 21, 10206, NULL, 7, 50, 'Aprobo la promesa de compra-venta del usuario = heyeve', '190.145.44.98', NULL, NULL, '2019-05-16 21:02:02', '2019-05-16 21:02:02');
INSERT INTO `dbpcn_logs_admin` VALUES (196, 25, 10212, 590, 3, 10212, 'Activación del usuario = nancy.roa', '190.145.44.98', NULL, NULL, '2019-05-16 21:18:20', '2019-05-16 21:18:20');
INSERT INTO `dbpcn_logs_admin` VALUES (197, 27, 10208, NULL, 6, 47, 'Rechazo la promesa de compra-venta  del usuario = visionary', '190.145.44.98', NULL, NULL, '2019-05-16 23:02:11', '2019-05-16 23:02:11');
INSERT INTO `dbpcn_logs_admin` VALUES (198, 20, NULL, 494, 1, 69, 'Aprobó recibo de consignación del usuario = billions', '190.145.44.98', NULL, NULL, '2019-05-17 13:46:19', '2019-05-17 13:46:19');
INSERT INTO `dbpcn_logs_admin` VALUES (199, 21, 10193, NULL, 7, 56, 'Aprobo la promesa de compra-venta del usuario = iferrer2019', '190.145.44.98', NULL, NULL, '2019-05-17 13:52:21', '2019-05-17 13:52:21');
INSERT INTO `dbpcn_logs_admin` VALUES (200, 21, 10188, NULL, 7, 55, 'Aprobo la promesa de compra-venta del usuario = yulimarolivera0408', '190.145.44.98', NULL, NULL, '2019-05-17 14:07:31', '2019-05-17 14:07:31');
INSERT INTO `dbpcn_logs_admin` VALUES (201, 25, 10213, 494, 3, 10213, 'Activación del usuario = billions', '190.145.44.98', NULL, NULL, '2019-05-17 14:13:58', '2019-05-17 14:13:58');
INSERT INTO `dbpcn_logs_admin` VALUES (202, 12, 10182, NULL, 5, 59, 'Aprobo Documentación del usuario = carly', '190.145.44.98', NULL, NULL, '2019-05-17 14:38:51', '2019-05-17 14:38:51');
INSERT INTO `dbpcn_logs_admin` VALUES (203, 12, 10210, NULL, 5, 62, 'Aprobo Documentación del usuario = cupercuevas83', '190.145.44.98', NULL, NULL, '2019-05-17 14:42:14', '2019-05-17 14:42:14');
INSERT INTO `dbpcn_logs_admin` VALUES (204, 12, 10195, NULL, 5, 58, 'Aprobo Documentación del usuario = macdfd01', '190.145.44.98', NULL, NULL, '2019-05-17 14:46:27', '2019-05-17 14:46:27');
INSERT INTO `dbpcn_logs_admin` VALUES (205, 12, 10212, NULL, 5, 61, 'Aprobo Documentación del usuario = nancy.roa', '190.145.44.98', NULL, NULL, '2019-05-17 14:49:41', '2019-05-17 14:49:41');
INSERT INTO `dbpcn_logs_admin` VALUES (206, 12, 10186, NULL, 5, 60, 'Aprobo Documentación del usuario = tico1977', '190.145.44.98', NULL, NULL, '2019-05-17 14:52:52', '2019-05-17 14:52:52');
INSERT INTO `dbpcn_logs_admin` VALUES (207, 21, 10207, NULL, 6, 53, 'Rechazo la promesa de compra-venta  del usuario = inari', '190.145.44.98', NULL, NULL, '2019-05-17 15:57:09', '2019-05-17 15:57:09');
INSERT INTO `dbpcn_logs_admin` VALUES (208, 21, 10201, NULL, 6, 51, 'Rechazo la promesa de compra-venta  del usuario = jufesera', '190.145.44.98', NULL, NULL, '2019-05-17 15:57:30', '2019-05-17 15:57:30');
INSERT INTO `dbpcn_logs_admin` VALUES (209, 21, 10198, NULL, 6, 52, 'Rechazo la promesa de compra-venta  del usuario = kano', '190.145.44.98', NULL, NULL, '2019-05-17 15:57:44', '2019-05-17 15:57:44');
INSERT INTO `dbpcn_logs_admin` VALUES (210, 21, 10184, NULL, 6, 54, 'Rechazo la promesa de compra-venta  del usuario = nelson_mejia1', '190.145.44.98', NULL, NULL, '2019-05-17 15:58:05', '2019-05-17 15:58:05');
INSERT INTO `dbpcn_logs_admin` VALUES (211, 21, 10190, NULL, 6, 57, 'Rechazo la promesa de compra-venta  del usuario = reinamidas', '190.145.44.98', NULL, NULL, '2019-05-17 15:58:14', '2019-05-17 15:58:14');
INSERT INTO `dbpcn_logs_admin` VALUES (212, 21, 10196, NULL, 7, 58, 'Aprobo la promesa de compra-venta del usuario = atlanrot', '190.145.44.98', NULL, NULL, '2019-05-17 16:03:27', '2019-05-17 16:03:27');
INSERT INTO `dbpcn_logs_admin` VALUES (213, 21, 10208, NULL, 7, 59, 'Aprobo la promesa de compra-venta del usuario = visionary', '190.145.44.98', NULL, NULL, '2019-05-17 16:05:49', '2019-05-17 16:05:49');
INSERT INTO `dbpcn_logs_admin` VALUES (214, 12, 10174, NULL, 5, 63, 'Aprobo Documentación del usuario = masterdreamers', '190.145.44.98', NULL, NULL, '2019-05-17 16:23:33', '2019-05-17 16:23:33');
INSERT INTO `dbpcn_logs_admin` VALUES (215, 21, 10186, NULL, 6, 60, 'Rechazo la promesa de compra-venta  del usuario = tico1977', '190.145.44.98', NULL, NULL, '2019-05-17 16:25:46', '2019-05-17 16:25:46');
INSERT INTO `dbpcn_logs_admin` VALUES (216, 20, NULL, 594, 1, 70, 'Aprobó recibo de consignación del usuario = jesuscardona', '190.145.44.98', NULL, NULL, '2019-05-17 19:17:47', '2019-05-17 19:17:47');
INSERT INTO `dbpcn_logs_admin` VALUES (217, 21, 10210, NULL, 7, 61, 'Aprobo la promesa de compra-venta del usuario = cupercuevas83', '190.145.44.98', NULL, NULL, '2019-05-17 19:45:26', '2019-05-17 19:45:26');
INSERT INTO `dbpcn_logs_admin` VALUES (218, 21, 10198, NULL, 6, 62, 'Rechazo la promesa de compra-venta  del usuario = kano', '190.145.44.98', NULL, NULL, '2019-05-17 19:53:18', '2019-05-17 19:53:18');
INSERT INTO `dbpcn_logs_admin` VALUES (219, 25, 10214, 594, 3, 10214, 'Activación del usuario = jesuscardona', '190.145.44.98', NULL, NULL, '2019-05-17 20:17:49', '2019-05-17 20:17:49');
INSERT INTO `dbpcn_logs_admin` VALUES (220, 12, 10188, NULL, 11, 45, 'Aprobo RUT del usuario = yulimarolivera0408', '190.145.44.98', NULL, NULL, '2019-05-20 13:03:13', '2019-05-20 13:03:13');
INSERT INTO `dbpcn_logs_admin` VALUES (221, 21, 10181, NULL, 7, 63, 'Aprobo la promesa de compra-venta del usuario = familiasl', '190.145.44.98', NULL, NULL, '2019-05-20 13:10:59', '2019-05-20 13:10:59');
INSERT INTO `dbpcn_logs_admin` VALUES (222, 12, 10214, NULL, 5, 64, 'Aprobo Documentación del usuario = jesuscardona', '190.145.44.98', NULL, NULL, '2019-05-20 13:26:46', '2019-05-20 13:26:46');
INSERT INTO `dbpcn_logs_admin` VALUES (223, 20, NULL, 508, 1, 72, 'Aprobó recibo de consignación del usuario = sergioparra', '190.145.44.98', NULL, NULL, '2019-05-20 13:43:22', '2019-05-20 13:43:22');
INSERT INTO `dbpcn_logs_admin` VALUES (224, 20, NULL, 591, 1, 71, 'Aprobó recibo de consignación del usuario = byronochoa', '190.145.44.98', NULL, NULL, '2019-05-20 13:44:54', '2019-05-20 13:44:54');
INSERT INTO `dbpcn_logs_admin` VALUES (225, 21, 10201, NULL, 7, 64, 'Aprobo la promesa de compra-venta del usuario = jufesera', '190.145.44.98', NULL, NULL, '2019-05-20 13:54:41', '2019-05-20 13:54:41');
INSERT INTO `dbpcn_logs_admin` VALUES (226, 12, 10201, NULL, 11, 52, 'Aprobo RUT del usuario = jufesera', '190.145.44.98', NULL, NULL, '2019-05-20 14:05:37', '2019-05-20 14:05:37');
INSERT INTO `dbpcn_logs_admin` VALUES (227, 25, 10215, 508, 3, 10215, 'Activación del usuario = sergioparra', '190.145.44.98', NULL, NULL, '2019-05-20 14:47:32', '2019-05-20 14:47:32');
INSERT INTO `dbpcn_logs_admin` VALUES (228, 25, 10216, 591, 3, 10216, 'Activación del usuario = byronochoa', '190.145.44.98', NULL, NULL, '2019-05-20 14:50:42', '2019-05-20 14:50:42');
INSERT INTO `dbpcn_logs_admin` VALUES (229, 21, 10200, NULL, 7, 69, 'Aprobo la promesa de compra-venta del usuario = luisfercast', '190.145.44.98', NULL, NULL, '2019-05-20 15:19:00', '2019-05-20 15:19:00');
INSERT INTO `dbpcn_logs_admin` VALUES (230, 21, 10174, NULL, 7, 65, 'Aprobo la promesa de compra-venta del usuario = masterdreamers', '190.145.44.98', NULL, NULL, '2019-05-20 15:20:52', '2019-05-20 15:20:52');
INSERT INTO `dbpcn_logs_admin` VALUES (231, 21, 10212, NULL, 7, 68, 'Aprobo la promesa de compra-venta del usuario = nancy.roa', '190.145.44.98', NULL, NULL, '2019-05-20 15:21:39', '2019-05-20 15:21:39');
INSERT INTO `dbpcn_logs_admin` VALUES (232, 12, 10216, NULL, 5, 65, 'Aprobo Documentación del usuario = byronochoa', '190.145.44.98', NULL, NULL, '2019-05-20 15:39:57', '2019-05-20 15:39:57');
INSERT INTO `dbpcn_logs_admin` VALUES (233, 21, 10207, NULL, 7, 67, 'Aprobo la promesa de compra-venta del usuario = inari', '190.145.44.98', NULL, NULL, '2019-05-20 15:42:59', '2019-05-20 15:42:59');
INSERT INTO `dbpcn_logs_admin` VALUES (234, 21, 10198, NULL, 7, 66, 'Aprobo la promesa de compra-venta del usuario = kano', '190.145.44.98', NULL, NULL, '2019-05-20 15:43:08', '2019-05-20 15:43:08');
INSERT INTO `dbpcn_logs_admin` VALUES (235, 12, 10182, NULL, 11, 59, 'Aprobo RUT del usuario = carly', '190.145.44.98', NULL, NULL, '2019-05-20 16:20:14', '2019-05-20 16:20:14');
INSERT INTO `dbpcn_logs_admin` VALUES (236, 12, 10198, NULL, 11, 49, 'Aprobo RUT del usuario = kano', '190.145.44.98', NULL, NULL, '2019-05-20 16:20:39', '2019-05-20 16:20:39');
INSERT INTO `dbpcn_logs_admin` VALUES (237, 21, 10184, NULL, 7, 70, 'Aprobo la promesa de compra-venta del usuario = nelson_mejia1', '190.145.44.98', NULL, NULL, '2019-05-20 19:22:58', '2019-05-20 19:22:58');
INSERT INTO `dbpcn_logs_admin` VALUES (238, 12, 10215, NULL, 5, 66, 'Aprobo Documentación del usuario = sergioparra', '190.145.44.98', NULL, NULL, '2019-05-20 20:16:51', '2019-05-20 20:16:51');
INSERT INTO `dbpcn_logs_admin` VALUES (239, 21, 10215, NULL, 7, 72, 'Aprobo la promesa de compra-venta del usuario = sergioparra', '190.145.44.98', NULL, NULL, '2019-05-21 13:15:10', '2019-05-21 13:15:10');
INSERT INTO `dbpcn_logs_admin` VALUES (240, 21, 10190, NULL, 7, 73, 'Aprobo la promesa de compra-venta del usuario = reinamidas', '190.145.44.98', NULL, NULL, '2019-05-21 13:50:40', '2019-05-21 13:50:40');
INSERT INTO `dbpcn_logs_admin` VALUES (241, 12, 10187, NULL, 5, 67, 'Aprobo Documentación del usuario = goldteam', '190.145.44.98', NULL, NULL, '2019-05-21 16:14:04', '2019-05-21 16:14:04');
INSERT INTO `dbpcn_logs_admin` VALUES (242, 20, NULL, 596, 1, 73, 'Aprobó recibo de consignación del usuario = lote1mz38', '190.145.44.98', NULL, NULL, '2019-05-21 16:14:11', '2019-05-21 16:14:11');
INSERT INTO `dbpcn_logs_admin` VALUES (243, 21, 10216, NULL, 7, 74, 'Aprobo la promesa de compra-venta del usuario = byronochoa', '190.145.44.98', NULL, NULL, '2019-05-21 16:17:20', '2019-05-21 16:17:20');
INSERT INTO `dbpcn_logs_admin` VALUES (244, 21, 10214, NULL, 7, 71, 'Aprobo la promesa de compra-venta del usuario = jesuscardona', '190.145.44.98', NULL, NULL, '2019-05-21 16:35:30', '2019-05-21 16:35:30');
INSERT INTO `dbpcn_logs_admin` VALUES (245, 20, NULL, 525, 1, 74, 'Aprobó recibo de consignación del usuario = juanjose', '190.145.44.98', NULL, NULL, '2019-05-21 18:00:27', '2019-05-21 18:00:27');
INSERT INTO `dbpcn_logs_admin` VALUES (246, 12, 10209, NULL, 5, 68, 'Aprobo Documentación del usuario = camilo1140', '190.145.44.98', NULL, NULL, '2019-05-21 19:04:52', '2019-05-21 19:04:52');
INSERT INTO `dbpcn_logs_admin` VALUES (247, 25, 10217, 525, 3, 10217, 'Activación del usuario = juanjose', '190.145.44.98', NULL, NULL, '2019-05-21 19:07:30', '2019-05-21 19:07:30');
INSERT INTO `dbpcn_logs_admin` VALUES (248, 25, 10218, 596, 3, 10218, 'Activación del usuario = lote1mz38', '190.145.44.98', NULL, NULL, '2019-05-21 19:08:57', '2019-05-21 19:08:57');
INSERT INTO `dbpcn_logs_admin` VALUES (249, 21, 10209, NULL, 7, 75, 'Aprobo la promesa de compra-venta del usuario = camilo1140', '190.145.44.98', NULL, NULL, '2019-05-21 20:30:59', '2019-05-21 20:30:59');
INSERT INTO `dbpcn_logs_admin` VALUES (250, 20, NULL, 598, 1, 75, 'Aprobó recibo de consignación del usuario = dreamerazul', '190.145.44.98', NULL, NULL, '2019-05-21 21:31:58', '2019-05-21 21:31:58');
INSERT INTO `dbpcn_logs_admin` VALUES (251, 25, 10219, 598, 3, 10219, 'Activación del usuario = dreamerazul', '190.145.44.98', NULL, NULL, '2019-05-21 21:47:04', '2019-05-21 21:47:04');
INSERT INTO `dbpcn_logs_admin` VALUES (252, 21, 10195, NULL, 7, 76, 'Aprobo la promesa de compra-venta del usuario = macdfd01', '190.145.44.98', NULL, NULL, '2019-05-22 13:26:56', '2019-05-22 13:26:56');
INSERT INTO `dbpcn_logs_admin` VALUES (253, 21, 10177, NULL, 7, 77, 'Aprobo la promesa de compra-venta del usuario = diamond17', '190.145.44.98', NULL, NULL, '2019-05-22 19:30:00', '2019-05-22 19:30:00');
INSERT INTO `dbpcn_logs_admin` VALUES (254, 12, 10218, NULL, 5, 69, 'Aprobo Documentación del usuario = lote1mz38', '190.145.44.98', NULL, NULL, '2019-05-22 21:30:13', '2019-05-22 21:30:13');
INSERT INTO `dbpcn_logs_admin` VALUES (255, 21, 10165, NULL, 6, 78, 'Rechazo la promesa de compra-venta  del usuario = yesidf', '190.145.44.98', NULL, NULL, '2019-05-23 14:15:47', '2019-05-23 14:15:47');
INSERT INTO `dbpcn_logs_admin` VALUES (256, 21, 10165, NULL, 6, 79, 'Rechazo la promesa de compra-venta  del usuario = yesidf', '190.145.44.98', NULL, NULL, '2019-05-23 18:31:20', '2019-05-23 18:31:20');
INSERT INTO `dbpcn_logs_admin` VALUES (257, 21, 10149, NULL, 7, 80, 'Aprobo la promesa de compra-venta del usuario = pasal', '190.145.44.98', NULL, NULL, '2019-05-23 20:16:10', '2019-05-23 20:16:10');
INSERT INTO `dbpcn_logs_admin` VALUES (258, 12, 10169, NULL, 5, 70, 'Aprobo Documentación del usuario = adelito62', '190.145.44.98', NULL, NULL, '2019-05-23 20:28:55', '2019-05-23 20:28:55');
INSERT INTO `dbpcn_logs_admin` VALUES (259, 12, 10169, NULL, 11, 70, 'Aprobo RUT del usuario = adelito62', '190.145.44.98', NULL, NULL, '2019-05-23 20:31:53', '2019-05-23 20:31:53');
INSERT INTO `dbpcn_logs_admin` VALUES (260, 12, 10196, NULL, 11, 57, 'Aprobo RUT del usuario = atlanrot', '190.145.44.98', NULL, NULL, '2019-05-23 20:33:28', '2019-05-23 20:33:28');
INSERT INTO `dbpcn_logs_admin` VALUES (261, 12, 10209, NULL, 11, 68, 'Aprobo RUT del usuario = camilo1140', '190.145.44.98', NULL, NULL, '2019-05-23 20:35:14', '2019-05-23 20:35:14');
INSERT INTO `dbpcn_logs_admin` VALUES (262, 12, 10195, NULL, 12, 58, 'Rechazo RUT del usuario = macdfd01', '190.145.44.98', NULL, NULL, '2019-05-23 20:54:57', '2019-05-23 20:54:57');
INSERT INTO `dbpcn_logs_admin` VALUES (263, 12, 10212, NULL, 12, 61, 'Rechazo RUT del usuario = nancy.roa', '190.145.44.98', NULL, NULL, '2019-05-23 20:55:31', '2019-05-23 20:55:31');
INSERT INTO `dbpcn_logs_admin` VALUES (264, 12, 10184, NULL, 11, 46, 'Aprobo RUT del usuario = nelson_mejia1', '190.145.44.98', NULL, NULL, '2019-05-23 20:57:24', '2019-05-23 20:57:24');
INSERT INTO `dbpcn_logs_admin` VALUES (265, 12, 10208, NULL, 11, 51, 'Aprobo RUT del usuario = visionary', '190.145.44.98', NULL, NULL, '2019-05-23 21:00:08', '2019-05-23 21:00:08');
INSERT INTO `dbpcn_logs_admin` VALUES (266, 12, 10165, NULL, 12, 47, 'Rechazo RUT del usuario = yesidf', '190.145.44.98', NULL, NULL, '2019-05-23 21:00:46', '2019-05-23 21:00:46');
INSERT INTO `dbpcn_logs_admin` VALUES (267, 20, NULL, 602, 1, 76, 'Aprobó recibo de consignación del usuario = rmartinez2459', '190.145.44.98', NULL, NULL, '2019-05-23 21:01:07', '2019-05-23 21:01:07');
INSERT INTO `dbpcn_logs_admin` VALUES (268, 12, 10186, NULL, 12, 60, 'Rechazo RUT del usuario = tico1977', '190.145.44.98', NULL, NULL, '2019-05-23 21:01:28', '2019-05-23 21:01:28');
INSERT INTO `dbpcn_logs_admin` VALUES (269, 25, 10220, 602, 3, 10220, 'Activación del usuario = rmartinez2459', '190.145.44.98', NULL, NULL, '2019-05-23 21:08:04', '2019-05-23 21:08:04');
INSERT INTO `dbpcn_logs_admin` VALUES (270, 20, NULL, 601, 1, 77, 'Aprobó recibo de consignación del usuario = cayita', '190.145.44.98', NULL, NULL, '2019-05-24 13:18:36', '2019-05-24 13:18:36');
INSERT INTO `dbpcn_logs_admin` VALUES (271, 20, NULL, 599, 1, 78, 'Aprobó recibo de consignación del usuario = refricol', '190.145.44.98', NULL, NULL, '2019-05-24 13:18:43', '2019-05-24 13:18:43');
INSERT INTO `dbpcn_logs_admin` VALUES (272, 12, 10219, NULL, 5, 72, 'Aprobo Documentación del usuario = dreamerazul', '190.145.44.98', NULL, NULL, '2019-05-24 13:19:45', '2019-05-24 13:19:45');
INSERT INTO `dbpcn_logs_admin` VALUES (273, 12, 10219, NULL, 12, 72, 'Rechazo RUT del usuario = dreamerazul', '190.145.44.98', NULL, NULL, '2019-05-24 13:20:10', '2019-05-24 13:20:10');
INSERT INTO `dbpcn_logs_admin` VALUES (274, 12, 10220, NULL, 5, 71, 'Aprobo Documentación del usuario = rmartinez2459', '190.145.44.98', NULL, NULL, '2019-05-24 13:28:28', '2019-05-24 13:28:28');
INSERT INTO `dbpcn_logs_admin` VALUES (275, 25, 10221, 599, 3, 10221, 'Activación del usuario = refricol', '190.145.44.98', NULL, NULL, '2019-05-24 13:42:51', '2019-05-24 13:42:51');
INSERT INTO `dbpcn_logs_admin` VALUES (276, 25, 10222, 601, 3, 10222, 'Activación del usuario = cayita', '190.145.44.98', NULL, NULL, '2019-05-24 13:44:36', '2019-05-24 13:44:36');
INSERT INTO `dbpcn_logs_admin` VALUES (277, 21, 10186, NULL, 7, 82, 'Aprobo la promesa de compra-venta del usuario = tico1977', '190.145.44.98', NULL, NULL, '2019-05-24 20:13:07', '2019-05-24 20:13:07');
INSERT INTO `dbpcn_logs_admin` VALUES (278, 21, 10165, NULL, 6, 81, 'Rechazo la promesa de compra-venta  del usuario = yesidf', '190.145.44.98', NULL, NULL, '2019-05-24 20:13:25', '2019-05-24 20:13:25');
INSERT INTO `dbpcn_logs_admin` VALUES (279, 21, 10218, NULL, 7, 84, 'Aprobo la promesa de compra-venta del usuario = lote1mz38', '190.145.44.98', NULL, NULL, '2019-05-27 13:01:49', '2019-05-27 13:01:49');
INSERT INTO `dbpcn_logs_admin` VALUES (280, 21, 10165, NULL, 7, 83, 'Aprobo la promesa de compra-venta del usuario = yesidf', '190.145.44.98', NULL, NULL, '2019-05-27 13:38:58', '2019-05-27 13:38:58');
INSERT INTO `dbpcn_logs_admin` VALUES (281, 20, NULL, 600, 1, 79, 'Aprobó recibo de consignación del usuario = rimexy', '190.145.44.98', NULL, NULL, '2019-05-27 19:07:30', '2019-05-27 19:07:30');
INSERT INTO `dbpcn_logs_admin` VALUES (282, 25, 10223, 600, 3, 10223, 'Activación del usuario = rimexy', '190.145.44.98', NULL, NULL, '2019-05-27 19:15:31', '2019-05-27 19:15:31');
INSERT INTO `dbpcn_logs_admin` VALUES (283, 25, 1, NULL, 17, 40, 'Aprobo la cuenta bancaria del usuario = pcnetwork', '190.145.44.98', NULL, NULL, '2019-05-27 21:24:32', '2019-05-27 21:24:32');
INSERT INTO `dbpcn_logs_admin` VALUES (284, 20, NULL, 603, 1, 80, 'Aprobó recibo de consignación del usuario = m21-01', '190.145.44.98', NULL, NULL, '2019-05-27 21:56:11', '2019-05-27 21:56:11');
INSERT INTO `dbpcn_logs_admin` VALUES (285, 25, 10224, 603, 3, 10224, 'Activación del usuario = m21-01', '190.145.44.98', NULL, NULL, '2019-05-27 21:58:51', '2019-05-27 21:58:51');
INSERT INTO `dbpcn_logs_admin` VALUES (286, 12, 10170, NULL, 5, 73, 'Aprobo Documentación del usuario = farcoin93', '190.145.44.98', NULL, NULL, '2019-05-28 13:26:43', '2019-05-28 13:26:43');
INSERT INTO `dbpcn_logs_admin` VALUES (287, 21, 10169, NULL, 7, 85, 'Aprobo la promesa de compra-venta del usuario = adelito62', '190.145.44.98', NULL, NULL, '2019-05-28 13:36:08', '2019-05-28 13:36:08');
INSERT INTO `dbpcn_logs_admin` VALUES (288, 12, 10170, NULL, 11, 73, 'Aprobo RUT del usuario = farcoin93', '190.145.44.98', NULL, NULL, '2019-05-28 13:39:44', '2019-05-28 13:39:44');
INSERT INTO `dbpcn_logs_admin` VALUES (289, 12, 10194, NULL, 4, 74, 'Rechazo Documentación del usuario = dserrano', '190.145.44.98', NULL, NULL, '2019-05-28 13:58:16', '2019-05-28 13:58:16');
INSERT INTO `dbpcn_logs_admin` VALUES (290, 21, 10170, NULL, 7, 86, 'Aprobo la promesa de compra-venta del usuario = farcoin93', '190.145.44.98', NULL, NULL, '2019-05-28 18:59:40', '2019-05-28 18:59:40');
INSERT INTO `dbpcn_logs_admin` VALUES (291, 21, 10220, NULL, 7, 87, 'Aprobo la promesa de compra-venta del usuario = rmartinez2459', '190.145.44.98', NULL, NULL, '2019-05-28 18:59:46', '2019-05-28 18:59:46');
INSERT INTO `dbpcn_logs_admin` VALUES (292, 20, NULL, 607, 1, 81, 'Aprobó recibo de consignación del usuario = joca2689', '190.145.44.98', NULL, NULL, '2019-05-28 19:03:47', '2019-05-28 19:03:47');
INSERT INTO `dbpcn_logs_admin` VALUES (293, 20, NULL, 568, 1, 82, 'Aprobó recibo de consignación del usuario = yolanda2019', '190.145.44.98', NULL, NULL, '2019-05-28 20:24:07', '2019-05-28 20:24:07');
INSERT INTO `dbpcn_logs_admin` VALUES (294, 25, 10225, 568, 3, 10225, 'Activación del usuario = yolanda2019', '190.145.44.98', NULL, NULL, '2019-05-28 20:31:32', '2019-05-28 20:31:32');
INSERT INTO `dbpcn_logs_admin` VALUES (295, 25, 10226, 607, 3, 10226, 'Activación del usuario = joca2689', '190.145.44.98', NULL, NULL, '2019-05-28 20:33:46', '2019-05-28 20:33:46');
INSERT INTO `dbpcn_logs_admin` VALUES (296, 20, NULL, 592, 1, 83, 'Aprobó recibo de consignación del usuario = gabi1976', '190.145.44.98', NULL, NULL, '2019-05-28 20:39:31', '2019-05-28 20:39:31');
INSERT INTO `dbpcn_logs_admin` VALUES (297, 20, NULL, 605, 1, 84, 'Aprobó recibo de consignación del usuario = peter9301', '190.145.44.98', NULL, NULL, '2019-05-28 20:56:44', '2019-05-28 20:56:44');
INSERT INTO `dbpcn_logs_admin` VALUES (298, 25, 10227, 592, 3, 10227, 'Activación del usuario = gabi1976', '190.145.44.98', NULL, NULL, '2019-05-28 21:11:53', '2019-05-28 21:11:53');
INSERT INTO `dbpcn_logs_admin` VALUES (299, 25, 10228, 605, 3, 10228, 'Activación del usuario = peter9301', '190.145.44.98', NULL, NULL, '2019-05-28 21:13:03', '2019-05-28 21:13:03');
INSERT INTO `dbpcn_logs_admin` VALUES (300, 21, 10175, NULL, 7, 88, 'Aprobo la promesa de compra-venta del usuario = yosoy', '190.145.44.98', NULL, NULL, '2019-05-29 13:22:38', '2019-05-29 13:22:38');
INSERT INTO `dbpcn_logs_admin` VALUES (301, 25, 10208, NULL, 15, 44, 'Rechazo la cuenta bancaria  del usuario = visionary', '190.145.44.98', NULL, NULL, '2019-05-29 13:24:12', '2019-05-29 13:24:12');
INSERT INTO `dbpcn_logs_admin` VALUES (302, 12, 10194, NULL, 5, 79, 'Aprobo Documentación del usuario = dserrano', '190.145.44.98', NULL, NULL, '2019-05-29 13:31:29', '2019-05-29 13:31:29');
INSERT INTO `dbpcn_logs_admin` VALUES (303, 20, NULL, 573, 1, 85, 'Aprobó recibo de consignación del usuario = sharom2204', '190.145.44.98', NULL, NULL, '2019-05-29 13:40:31', '2019-05-29 13:40:31');
INSERT INTO `dbpcn_logs_admin` VALUES (304, 12, 10226, NULL, 5, 77, 'Aprobo Documentación del usuario = joca2689', '190.145.44.98', NULL, NULL, '2019-05-29 14:11:50', '2019-05-29 14:11:50');
INSERT INTO `dbpcn_logs_admin` VALUES (305, 12, 10224, NULL, 5, 75, 'Aprobo Documentación del usuario = m21-01', '190.145.44.98', NULL, NULL, '2019-05-29 14:21:45', '2019-05-29 14:21:45');
INSERT INTO `dbpcn_logs_admin` VALUES (306, 12, 10224, NULL, 11, 75, 'Aprobo RUT del usuario = m21-01', '190.145.44.98', NULL, NULL, '2019-05-29 14:22:19', '2019-05-29 14:22:19');
INSERT INTO `dbpcn_logs_admin` VALUES (307, 12, 10177, NULL, 11, 53, 'Aprobo RUT del usuario = diamond17', '190.145.44.98', NULL, NULL, '2019-05-29 14:23:47', '2019-05-29 14:23:47');
INSERT INTO `dbpcn_logs_admin` VALUES (308, 25, 10229, 573, 3, 10229, 'Activación del usuario = sharom2204', '190.145.44.98', NULL, NULL, '2019-05-29 14:49:01', '2019-05-29 14:49:01');
INSERT INTO `dbpcn_logs_admin` VALUES (309, 12, 10225, NULL, 5, 76, 'Aprobo Documentación del usuario = yolanda2019', '190.145.44.98', NULL, NULL, '2019-05-29 15:00:39', '2019-05-29 15:00:39');
INSERT INTO `dbpcn_logs_admin` VALUES (310, 20, NULL, 575, 1, 86, 'Aprobó recibo de consignación del usuario = fernandolondonoruiz1969', '190.145.44.98', NULL, NULL, '2019-05-29 15:29:18', '2019-05-29 15:29:18');
INSERT INTO `dbpcn_logs_admin` VALUES (311, 25, 10230, 575, 3, 10230, 'Activación del usuario = fernandolondonoruiz1969', '190.145.44.98', NULL, NULL, '2019-05-29 15:35:06', '2019-05-29 15:35:06');
INSERT INTO `dbpcn_logs_admin` VALUES (312, 25, 10196, NULL, 15, 51, 'Rechazo la cuenta bancaria  del usuario = atlanrot', '190.145.44.98', NULL, NULL, '2019-05-29 15:45:22', '2019-05-29 15:45:22');
INSERT INTO `dbpcn_logs_admin` VALUES (313, 12, 10221, NULL, 5, 80, 'Aprobo Documentación del usuario = refricol', '190.145.44.98', NULL, NULL, '2019-05-29 16:12:11', '2019-05-29 16:12:11');
INSERT INTO `dbpcn_logs_admin` VALUES (314, 12, 10228, NULL, 4, 78, 'Rechazo Documentación del usuario = peter9301', '190.145.44.98', NULL, NULL, '2019-05-29 16:16:54', '2019-05-29 16:16:54');
INSERT INTO `dbpcn_logs_admin` VALUES (315, 20, NULL, 584, 1, 87, 'Aprobó recibo de consignación del usuario = santiago2026', '190.145.44.98', NULL, NULL, '2019-05-29 17:06:52', '2019-05-29 17:06:52');
INSERT INTO `dbpcn_logs_admin` VALUES (316, 12, 10230, NULL, 11, 81, 'Aprobo RUT del usuario = fernandolondonoruiz1969', '190.145.44.98', NULL, NULL, '2019-05-29 18:49:53', '2019-05-29 18:49:53');
INSERT INTO `dbpcn_logs_admin` VALUES (317, 12, 10225, NULL, 11, 76, 'Aprobo RUT del usuario = yolanda2019', '190.145.44.98', NULL, NULL, '2019-05-29 18:54:39', '2019-05-29 18:54:39');
INSERT INTO `dbpcn_logs_admin` VALUES (318, 12, 10230, NULL, 5, 81, 'Aprobo Documentación del usuario = fernandolondonoruiz1969', '190.145.44.98', NULL, NULL, '2019-05-29 18:55:14', '2019-05-29 18:55:14');
INSERT INTO `dbpcn_logs_admin` VALUES (319, 21, 10225, NULL, 6, 89, 'Rechazo la promesa de compra-venta  del usuario = yolanda2019', '190.145.44.98', NULL, NULL, '2019-05-29 20:14:05', '2019-05-29 20:14:05');
INSERT INTO `dbpcn_logs_admin` VALUES (320, 21, 10221, NULL, 7, 90, 'Aprobo la promesa de compra-venta del usuario = refricol', '190.145.44.98', NULL, NULL, '2019-05-29 20:17:14', '2019-05-29 20:17:14');
INSERT INTO `dbpcn_logs_admin` VALUES (321, 12, 10229, NULL, 5, 82, 'Aprobo Documentación del usuario = sharom2204', '190.145.44.98', NULL, NULL, '2019-05-29 20:56:39', '2019-05-29 20:56:39');
INSERT INTO `dbpcn_logs_admin` VALUES (322, 12, 10229, NULL, 11, 82, 'Aprobo RUT del usuario = sharom2204', '190.145.44.98', NULL, NULL, '2019-05-29 20:57:05', '2019-05-29 20:57:05');
INSERT INTO `dbpcn_logs_admin` VALUES (323, 12, 10220, NULL, 12, 71, 'Rechazo RUT del usuario = rmartinez2459', '190.145.44.98', NULL, NULL, '2019-05-29 20:58:37', '2019-05-29 20:58:37');
INSERT INTO `dbpcn_logs_admin` VALUES (324, 12, 10226, NULL, 11, 77, 'Aprobo RUT del usuario = joca2689', '190.145.44.98', NULL, NULL, '2019-05-29 21:00:53', '2019-05-29 21:00:53');
INSERT INTO `dbpcn_logs_admin` VALUES (325, 12, 10181, NULL, 11, 56, 'Aprobo RUT del usuario = familiasl', '190.145.44.98', NULL, NULL, '2019-05-29 21:07:02', '2019-05-29 21:07:02');
INSERT INTO `dbpcn_logs_admin` VALUES (326, 25, 10231, 584, 3, 10231, 'Activación del usuario = santiago2026', '190.145.44.98', NULL, NULL, '2019-05-29 21:16:40', '2019-05-29 21:16:40');
INSERT INTO `dbpcn_logs_admin` VALUES (327, 25, 10169, NULL, 17, 45, 'Aprobo la cuenta bancaria del usuario = adelito62', '190.145.44.98', NULL, NULL, '2019-05-30 13:45:22', '2019-05-30 13:45:22');
INSERT INTO `dbpcn_logs_admin` VALUES (328, 25, 10161, NULL, 17, 49, 'Aprobo la cuenta bancaria del usuario = cabapella', '190.145.44.98', NULL, NULL, '2019-05-30 13:45:54', '2019-05-30 13:45:54');
INSERT INTO `dbpcn_logs_admin` VALUES (329, 25, 10209, NULL, 17, 35, 'Aprobo la cuenta bancaria del usuario = camilo1140', '190.145.44.98', NULL, NULL, '2019-05-30 13:47:18', '2019-05-30 13:47:18');
INSERT INTO `dbpcn_logs_admin` VALUES (330, 25, 10179, NULL, 17, 37, 'Aprobo la cuenta bancaria del usuario = darioquijano', '190.145.44.98', NULL, NULL, '2019-05-30 13:47:54', '2019-05-30 13:47:54');
INSERT INTO `dbpcn_logs_admin` VALUES (331, 25, 10199, NULL, 17, 42, 'Aprobo la cuenta bancaria del usuario = dyjingenieria', '190.145.44.98', NULL, NULL, '2019-05-30 13:50:28', '2019-05-30 13:50:28');
INSERT INTO `dbpcn_logs_admin` VALUES (332, 25, 10171, NULL, 17, 48, 'Aprobo la cuenta bancaria del usuario = eliasbm', '190.145.44.98', NULL, NULL, '2019-05-30 13:51:22', '2019-05-30 13:51:22');
INSERT INTO `dbpcn_logs_admin` VALUES (333, 25, 10176, NULL, 15, 56, 'Rechazo la cuenta bancaria  del usuario = emjv2019', '190.145.44.98', NULL, NULL, '2019-05-30 13:52:12', '2019-05-30 13:52:12');
INSERT INTO `dbpcn_logs_admin` VALUES (334, 25, 10164, NULL, 17, 43, 'Aprobo la cuenta bancaria del usuario = globalvision', '190.145.44.98', NULL, NULL, '2019-05-30 13:57:13', '2019-05-30 13:57:13');
INSERT INTO `dbpcn_logs_admin` VALUES (335, 25, 10226, NULL, 17, 47, 'Aprobo la cuenta bancaria del usuario = joca2689', '190.145.44.98', NULL, NULL, '2019-05-30 13:58:34', '2019-05-30 13:58:34');
INSERT INTO `dbpcn_logs_admin` VALUES (336, 25, 10201, NULL, 17, 41, 'Aprobo la cuenta bancaria del usuario = jufesera', '190.145.44.98', NULL, NULL, '2019-05-30 14:01:24', '2019-05-30 14:01:24');
INSERT INTO `dbpcn_logs_admin` VALUES (337, 25, 10180, NULL, 17, 46, 'Aprobo la cuenta bancaria del usuario = luzirene', '190.145.44.98', NULL, NULL, '2019-05-30 14:02:40', '2019-05-30 14:02:40');
INSERT INTO `dbpcn_logs_admin` VALUES (338, 20, NULL, 604, 1, 88, 'Aprobó recibo de consignación del usuario = fannyguz', '190.145.44.98', NULL, NULL, '2019-05-30 14:03:49', '2019-05-30 14:03:49');
INSERT INTO `dbpcn_logs_admin` VALUES (339, 25, 10190, NULL, 17, 39, 'Aprobo la cuenta bancaria del usuario = reinamidas', '190.145.44.98', NULL, NULL, '2019-05-30 14:04:30', '2019-05-30 14:04:30');
INSERT INTO `dbpcn_logs_admin` VALUES (340, 25, 10189, NULL, 17, 34, 'Aprobo la cuenta bancaria del usuario = reymidas07', '190.145.44.98', NULL, NULL, '2019-05-30 14:05:07', '2019-05-30 14:05:07');
INSERT INTO `dbpcn_logs_admin` VALUES (341, 25, 10185, NULL, 15, 54, 'Rechazo la cuenta bancaria  del usuario = hernuesga', '190.145.44.98', NULL, NULL, '2019-05-30 14:20:16', '2019-05-30 14:20:16');
INSERT INTO `dbpcn_logs_admin` VALUES (342, 25, 10229, NULL, 15, 55, 'Rechazo la cuenta bancaria  del usuario = sharom2204', '190.145.44.98', NULL, NULL, '2019-05-30 14:24:10', '2019-05-30 14:24:10');
INSERT INTO `dbpcn_logs_admin` VALUES (343, 25, 10232, 604, 3, 10232, 'Activación del usuario = fannyguz', '190.145.44.98', NULL, NULL, '2019-05-30 14:28:49', '2019-05-30 14:28:49');
INSERT INTO `dbpcn_logs_admin` VALUES (344, 25, 10181, NULL, 17, 53, 'Aprobo la cuenta bancaria del usuario = familiasl', '190.145.44.98', NULL, NULL, '2019-05-30 14:43:21', '2019-05-30 14:43:21');
INSERT INTO `dbpcn_logs_admin` VALUES (345, 25, 10148, NULL, 17, 50, 'Aprobo la cuenta bancaria del usuario = gin', '190.145.44.98', NULL, NULL, '2019-05-30 14:44:34', '2019-05-30 14:44:34');
INSERT INTO `dbpcn_logs_admin` VALUES (346, 25, 10230, NULL, 17, 52, 'Aprobo la cuenta bancaria del usuario = fernandolondonoruiz1969', '190.145.44.98', NULL, NULL, '2019-05-30 14:45:51', '2019-05-30 14:45:51');
INSERT INTO `dbpcn_logs_admin` VALUES (347, 25, 10212, NULL, 17, 36, 'Aprobo la cuenta bancaria del usuario = nancy.roa', '190.145.44.98', NULL, NULL, '2019-05-30 14:46:18', '2019-05-30 14:46:18');
INSERT INTO `dbpcn_logs_admin` VALUES (348, 25, 10215, NULL, 17, 57, 'Aprobo la cuenta bancaria del usuario = sergioparra', '190.145.44.98', NULL, NULL, '2019-05-30 14:47:01', '2019-05-30 14:47:01');
INSERT INTO `dbpcn_logs_admin` VALUES (349, 25, 10177, NULL, 17, 38, 'Aprobo la cuenta bancaria del usuario = diamond17', '190.145.44.98', NULL, NULL, '2019-05-30 14:53:26', '2019-05-30 14:53:26');
INSERT INTO `dbpcn_logs_admin` VALUES (350, 25, 10149, NULL, 17, 58, 'Aprobo la cuenta bancaria del usuario = pasal', '190.145.44.98', NULL, NULL, '2019-05-30 15:44:25', '2019-05-30 15:44:25');
INSERT INTO `dbpcn_logs_admin` VALUES (351, 20, NULL, 611, 1, 89, 'Aprobó recibo de consignación del usuario = jamessofia10', '190.145.44.98', NULL, NULL, '2019-05-30 15:50:01', '2019-05-30 15:50:01');
INSERT INTO `dbpcn_logs_admin` VALUES (352, 21, 10226, NULL, 7, 93, 'Aprobo la promesa de compra-venta del usuario = joca2689', '190.145.44.98', NULL, NULL, '2019-05-30 18:16:03', '2019-05-30 18:16:03');
INSERT INTO `dbpcn_logs_admin` VALUES (353, 21, 10225, NULL, 7, 91, 'Aprobo la promesa de compra-venta del usuario = yolanda2019', '190.145.44.98', NULL, NULL, '2019-05-30 18:22:37', '2019-05-30 18:22:37');
INSERT INTO `dbpcn_logs_admin` VALUES (354, 21, 10224, NULL, 7, 92, 'Aprobo la promesa de compra-venta del usuario = m21-01', '190.145.44.98', NULL, NULL, '2019-05-30 18:25:26', '2019-05-30 18:25:26');
INSERT INTO `dbpcn_logs_admin` VALUES (355, 12, 10222, NULL, 5, 84, 'Aprobo Documentación del usuario = cayita', '190.145.44.98', NULL, NULL, '2019-05-30 18:43:55', '2019-05-30 18:43:55');
INSERT INTO `dbpcn_logs_admin` VALUES (356, 12, 10228, NULL, 5, 83, 'Aprobo Documentación del usuario = peter9301', '190.145.44.98', NULL, NULL, '2019-05-30 18:56:51', '2019-05-30 18:56:51');
INSERT INTO `dbpcn_logs_admin` VALUES (357, 12, 10223, NULL, 12, 85, 'Rechazo RUT del usuario = rimexy', '190.145.44.98', NULL, NULL, '2019-05-30 19:03:14', '2019-05-30 19:03:14');
INSERT INTO `dbpcn_logs_admin` VALUES (358, 12, 10228, NULL, 11, 83, 'Aprobo RUT del usuario = peter9301', '190.145.44.98', NULL, NULL, '2019-05-30 19:03:23', '2019-05-30 19:03:23');
INSERT INTO `dbpcn_logs_admin` VALUES (359, 12, 10223, NULL, 5, 85, 'Aprobo Documentación del usuario = rimexy', '190.145.44.98', NULL, NULL, '2019-05-30 19:05:02', '2019-05-30 19:05:02');
INSERT INTO `dbpcn_logs_admin` VALUES (360, 25, 10233, 611, 3, 10233, 'Activación del usuario = jamessofia10', '190.145.44.98', NULL, NULL, '2019-05-30 19:06:24', '2019-05-30 19:06:24');
INSERT INTO `dbpcn_logs_admin` VALUES (361, 20, NULL, 609, 1, 90, 'Aprobó recibo de consignación del usuario = casasfredy', '190.145.44.98', NULL, NULL, '2019-05-30 19:56:23', '2019-05-30 19:56:23');
INSERT INTO `dbpcn_logs_admin` VALUES (362, 12, 10231, NULL, 12, 86, 'Rechazo RUT del usuario = santiago2026', '190.145.44.98', NULL, NULL, '2019-05-30 19:56:36', '2019-05-30 19:56:36');
INSERT INTO `dbpcn_logs_admin` VALUES (363, 20, NULL, 610, 1, 91, 'Aprobó recibo de consignación del usuario = germanchacon', '190.145.44.98', NULL, NULL, '2019-05-30 19:59:18', '2019-05-30 19:59:18');
INSERT INTO `dbpcn_logs_admin` VALUES (364, 12, 10231, NULL, 5, 86, 'Aprobo Documentación del usuario = santiago2026', '190.145.44.98', NULL, NULL, '2019-05-30 20:30:16', '2019-05-30 20:30:16');
INSERT INTO `dbpcn_logs_admin` VALUES (365, 25, 10234, 609, 3, 10234, 'Activación del usuario = casasfredy', '190.145.44.98', NULL, NULL, '2019-05-30 20:56:41', '2019-05-30 20:56:41');
INSERT INTO `dbpcn_logs_admin` VALUES (366, 25, 10235, 610, 3, 10235, 'Activación del usuario = germanchacon', '190.145.44.98', NULL, NULL, '2019-05-30 20:58:41', '2019-05-30 20:58:41');
INSERT INTO `dbpcn_logs_admin` VALUES (367, 25, 10172, NULL, 17, 59, 'Aprobo la cuenta bancaria del usuario = carolinayjimmy', '190.145.44.98', NULL, NULL, '2019-05-31 12:40:40', '2019-05-31 12:40:40');
INSERT INTO `dbpcn_logs_admin` VALUES (368, 25, 10151, NULL, 17, 60, 'Aprobo la cuenta bancaria del usuario = luhercar', '190.145.44.98', NULL, NULL, '2019-05-31 12:41:31', '2019-05-31 12:41:31');
INSERT INTO `dbpcn_logs_admin` VALUES (369, 25, 10220, NULL, 17, 61, 'Aprobo la cuenta bancaria del usuario = rmartinez2459', '190.145.44.98', NULL, NULL, '2019-05-31 12:42:39', '2019-05-31 12:42:39');
INSERT INTO `dbpcn_logs_admin` VALUES (370, 25, 10225, NULL, 15, 66, 'Rechazo la cuenta bancaria  del usuario = yolanda2019', '190.145.44.98', NULL, NULL, '2019-05-31 12:52:16', '2019-05-31 12:52:16');
INSERT INTO `dbpcn_logs_admin` VALUES (371, 12, 10232, NULL, 5, 87, 'Aprobo Documentación del usuario = fannyguz', '190.145.44.98', NULL, NULL, '2019-05-31 13:41:17', '2019-05-31 13:41:17');
INSERT INTO `dbpcn_logs_admin` VALUES (372, 20, NULL, 502, 1, 92, 'Aprobó recibo de consignación del usuario = brayohan1985', '190.145.44.98', NULL, NULL, '2019-05-31 13:49:33', '2019-05-31 13:49:33');
INSERT INTO `dbpcn_logs_admin` VALUES (373, 12, 10227, NULL, 5, 88, 'Aprobo Documentación del usuario = gabi1976', '190.145.44.98', NULL, NULL, '2019-05-31 13:56:22', '2019-05-31 13:56:22');
INSERT INTO `dbpcn_logs_admin` VALUES (374, 12, 10227, NULL, 11, 88, 'Aprobo RUT del usuario = gabi1976', '190.145.44.98', NULL, NULL, '2019-05-31 13:56:34', '2019-05-31 13:56:34');
INSERT INTO `dbpcn_logs_admin` VALUES (375, 21, 10230, NULL, 7, 95, 'Aprobo la promesa de compra-venta del usuario = fernandolondonoruiz1969', '190.145.44.98', NULL, NULL, '2019-05-31 13:59:09', '2019-05-31 13:59:09');
INSERT INTO `dbpcn_logs_admin` VALUES (376, 21, 10228, NULL, 7, 94, 'Aprobo la promesa de compra-venta del usuario = peter9301', '190.145.44.98', NULL, NULL, '2019-05-31 14:05:53', '2019-05-31 14:05:53');
INSERT INTO `dbpcn_logs_admin` VALUES (377, 21, 10229, NULL, 6, 96, 'Rechazo la promesa de compra-venta  del usuario = sharom2204', '190.145.44.98', NULL, NULL, '2019-05-31 14:08:55', '2019-05-31 14:08:55');
INSERT INTO `dbpcn_logs_admin` VALUES (378, 25, 10236, 502, 3, 10236, 'Activación del usuario = brayohan1985', '190.145.44.98', NULL, NULL, '2019-05-31 14:15:26', '2019-05-31 14:15:26');
INSERT INTO `dbpcn_logs_admin` VALUES (379, 12, 10215, NULL, 11, 66, 'Aprobo RUT del usuario = sergioparra', '190.145.44.98', NULL, NULL, '2019-05-31 15:44:20', '2019-05-31 15:44:20');
INSERT INTO `dbpcn_logs_admin` VALUES (380, 12, 10220, NULL, 11, 71, 'Aprobo RUT del usuario = rmartinez2459', '190.145.44.98', NULL, NULL, '2019-05-31 15:57:36', '2019-05-31 15:57:36');
INSERT INTO `dbpcn_logs_admin` VALUES (381, 12, 10207, NULL, 11, 50, 'Aprobo RUT del usuario = inari', '190.145.44.98', NULL, NULL, '2019-05-31 16:19:17', '2019-05-31 16:19:17');
INSERT INTO `dbpcn_logs_admin` VALUES (382, 21, 10222, NULL, 6, 98, 'Rechazo la promesa de compra-venta  del usuario = cayita', '190.145.44.98', NULL, NULL, '2019-05-31 16:35:48', '2019-05-31 16:35:48');
INSERT INTO `dbpcn_logs_admin` VALUES (383, 21, 10229, NULL, 6, 97, 'Rechazo la promesa de compra-venta  del usuario = sharom2204', '190.145.44.98', NULL, NULL, '2019-05-31 16:35:53', '2019-05-31 16:35:53');
INSERT INTO `dbpcn_logs_admin` VALUES (384, 12, 10222, NULL, 12, 84, 'Rechazo RUT del usuario = cayita', '190.145.44.98', NULL, NULL, '2019-05-31 17:33:15', '2019-05-31 17:33:15');
INSERT INTO `dbpcn_logs_admin` VALUES (385, 25, 10220, NULL, 16, 61, 'Devolvio la cuenta bancaria a estado pendiente del usuario = rmartinez2459', '190.145.44.98', NULL, NULL, '2019-05-31 18:42:24', '2019-05-31 18:42:24');
INSERT INTO `dbpcn_logs_admin` VALUES (386, 25, 10220, NULL, 15, 61, 'Rechazo la cuenta bancaria  del usuario = rmartinez2459', '190.145.44.98', NULL, NULL, '2019-05-31 18:42:50', '2019-05-31 18:42:50');
INSERT INTO `dbpcn_logs_admin` VALUES (387, 25, 10176, NULL, 17, 65, 'Aprobo la cuenta bancaria del usuario = emjv2019', '190.145.44.98', NULL, NULL, '2019-05-31 18:56:07', '2019-05-31 18:56:07');
INSERT INTO `dbpcn_logs_admin` VALUES (388, 25, 10203, NULL, 17, 62, 'Aprobo la cuenta bancaria del usuario = housedream', '190.145.44.98', NULL, NULL, '2019-05-31 18:56:55', '2019-05-31 18:56:55');
INSERT INTO `dbpcn_logs_admin` VALUES (389, 25, 10207, NULL, 17, 64, 'Aprobo la cuenta bancaria del usuario = inari', '190.145.44.98', NULL, NULL, '2019-05-31 18:57:10', '2019-05-31 18:57:10');
INSERT INTO `dbpcn_logs_admin` VALUES (390, 25, 10198, NULL, 17, 63, 'Aprobo la cuenta bancaria del usuario = kano', '190.145.44.98', NULL, NULL, '2019-05-31 18:57:24', '2019-05-31 18:57:24');
INSERT INTO `dbpcn_logs_admin` VALUES (391, 25, 10208, NULL, 15, 67, 'Rechazo la cuenta bancaria  del usuario = visionary', '190.145.44.98', NULL, NULL, '2019-05-31 19:02:30', '2019-05-31 19:02:30');
INSERT INTO `dbpcn_logs_admin` VALUES (392, 25, 10177, NULL, 16, 38, 'Devolvio la cuenta bancaria a estado pendiente del usuario = diamond17', '190.145.44.98', NULL, NULL, '2019-05-31 21:26:49', '2019-05-31 21:26:49');
INSERT INTO `dbpcn_logs_admin` VALUES (393, 25, 10177, NULL, 15, 38, 'Rechazo la cuenta bancaria  del usuario = diamond17', '190.145.44.98', NULL, NULL, '2019-05-31 21:27:29', '2019-05-31 21:27:29');
INSERT INTO `dbpcn_logs_admin` VALUES (394, 25, 10208, NULL, 15, 69, 'Rechazo la cuenta bancaria  del usuario = visionary', '190.145.44.98', NULL, NULL, '2019-05-31 21:35:34', '2019-05-31 21:35:34');
INSERT INTO `dbpcn_logs_admin` VALUES (395, 25, 10208, NULL, 16, 69, 'Devolvio la cuenta bancaria a estado pendiente del usuario = visionary', '190.145.44.98', NULL, NULL, '2019-05-31 22:02:03', '2019-05-31 22:02:03');
INSERT INTO `dbpcn_logs_admin` VALUES (396, 18, 10149, NULL, 18, 2, 'proceso la cuenta de cobro del usuario = pasal - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-04 13:10:06', '2019-06-04 13:10:06');
INSERT INTO `dbpcn_logs_admin` VALUES (397, 12, 10236, NULL, 5, 89, 'Aprobo Documentación del usuario = brayohan1985', '190.145.44.98', NULL, NULL, '2019-06-04 13:18:33', '2019-06-04 13:18:33');
INSERT INTO `dbpcn_logs_admin` VALUES (398, 21, 10194, NULL, 7, 100, 'Aprobo la promesa de compra-venta del usuario = dserrano', '190.145.44.98', NULL, NULL, '2019-06-04 13:27:08', '2019-06-04 13:27:08');
INSERT INTO `dbpcn_logs_admin` VALUES (399, 21, 10223, NULL, 7, 101, 'Aprobo la promesa de compra-venta del usuario = rimexy', '190.145.44.98', NULL, NULL, '2019-06-04 13:29:44', '2019-06-04 13:29:44');
INSERT INTO `dbpcn_logs_admin` VALUES (400, 21, 10229, NULL, 7, 102, 'Aprobo la promesa de compra-venta del usuario = sharom2204', '190.145.44.98', NULL, NULL, '2019-06-04 13:33:23', '2019-06-04 13:33:23');
INSERT INTO `dbpcn_logs_admin` VALUES (401, 12, 10222, NULL, 12, 84, 'Rechazo RUT del usuario = cayita', '190.145.44.98', NULL, NULL, '2019-06-04 13:49:40', '2019-06-04 13:49:40');
INSERT INTO `dbpcn_logs_admin` VALUES (402, 12, 10166, NULL, 13, 24, 'Devolvio el RUT a estado pendiente del usuario = jagaby', '190.145.44.98', NULL, NULL, '2019-06-04 14:00:09', '2019-06-04 14:00:09');
INSERT INTO `dbpcn_logs_admin` VALUES (403, 12, 10166, NULL, 12, 24, 'Rechazo RUT del usuario = jagaby', '190.145.44.98', NULL, NULL, '2019-06-04 14:00:31', '2019-06-04 14:00:31');
INSERT INTO `dbpcn_logs_admin` VALUES (404, 20, NULL, 613, 1, 94, 'Aprobó recibo de consignación del usuario = marbit2017', '190.145.44.98', NULL, NULL, '2019-06-04 14:03:27', '2019-06-04 14:03:27');
INSERT INTO `dbpcn_logs_admin` VALUES (405, 12, 10193, NULL, 13, 34, 'Devolvio el RUT a estado pendiente del usuario = iferrer2019', '190.145.44.98', NULL, NULL, '2019-06-04 14:04:14', '2019-06-04 14:04:14');
INSERT INTO `dbpcn_logs_admin` VALUES (406, 12, 10193, NULL, 12, 34, 'Rechazo RUT del usuario = iferrer2019', '190.145.44.98', NULL, NULL, '2019-06-04 14:04:22', '2019-06-04 14:04:22');
INSERT INTO `dbpcn_logs_admin` VALUES (407, 20, NULL, 559, 1, 93, 'Aprobó recibo de consignación del usuario = mastermind', '190.145.44.98', NULL, NULL, '2019-06-04 14:05:04', '2019-06-04 14:05:04');
INSERT INTO `dbpcn_logs_admin` VALUES (408, 25, 10237, 559, 3, 10237, 'Activación del usuario = mastermind', '190.145.44.98', NULL, NULL, '2019-06-04 14:10:10', '2019-06-04 14:10:10');
INSERT INTO `dbpcn_logs_admin` VALUES (409, 25, 10238, 613, 3, 10238, 'Activación del usuario = marbit2017', '190.145.44.98', NULL, NULL, '2019-06-04 14:10:16', '2019-06-04 14:10:16');
INSERT INTO `dbpcn_logs_admin` VALUES (410, 21, 10222, NULL, 6, 99, 'Rechazo la promesa de compra-venta  del usuario = cayita', '190.145.44.98', NULL, NULL, '2019-06-04 15:02:47', '2019-06-04 15:02:47');
INSERT INTO `dbpcn_logs_admin` VALUES (411, 25, 10222, NULL, 17, 70, 'Aprobo la cuenta bancaria del usuario = cayita', '190.145.44.98', NULL, NULL, '2019-06-04 15:31:20', '2019-06-04 15:31:20');
INSERT INTO `dbpcn_logs_admin` VALUES (412, 25, 10220, NULL, 17, 68, 'Aprobo la cuenta bancaria del usuario = rmartinez2459', '190.145.44.98', NULL, NULL, '2019-06-04 15:34:14', '2019-06-04 15:34:14');
INSERT INTO `dbpcn_logs_admin` VALUES (413, 25, 10225, NULL, 17, 71, 'Aprobo la cuenta bancaria del usuario = yolanda2019', '190.145.44.98', NULL, NULL, '2019-06-04 15:35:20', '2019-06-04 15:35:20');
INSERT INTO `dbpcn_logs_admin` VALUES (414, 12, 10234, NULL, 12, 90, 'Rechazo RUT del usuario = casasfredy', '190.145.44.98', NULL, NULL, '2019-06-04 16:47:09', '2019-06-04 16:47:09');
INSERT INTO `dbpcn_logs_admin` VALUES (415, 12, 10234, NULL, 5, 90, 'Aprobo Documentación del usuario = casasfredy', '190.145.44.98', NULL, NULL, '2019-06-04 16:57:14', '2019-06-04 16:57:14');
INSERT INTO `dbpcn_logs_admin` VALUES (416, 12, 10235, NULL, 5, 91, 'Aprobo Documentación del usuario = germanchacon', '190.145.44.98', NULL, NULL, '2019-06-04 17:08:53', '2019-06-04 17:08:53');
INSERT INTO `dbpcn_logs_admin` VALUES (417, 12, 10222, NULL, 12, 84, 'Rechazo RUT del usuario = cayita', '190.145.44.98', NULL, NULL, '2019-06-04 17:10:13', '2019-06-04 17:10:13');
INSERT INTO `dbpcn_logs_admin` VALUES (418, 12, 10212, NULL, 11, 61, 'Aprobo RUT del usuario = nancy.roa', '190.145.44.98', NULL, NULL, '2019-06-04 18:18:05', '2019-06-04 18:18:05');
INSERT INTO `dbpcn_logs_admin` VALUES (419, 21, 10222, NULL, 6, 103, 'Rechazo la promesa de compra-venta  del usuario = cayita', '190.145.44.98', NULL, NULL, '2019-06-04 18:37:09', '2019-06-04 18:37:09');
INSERT INTO `dbpcn_logs_admin` VALUES (420, 25, 10177, NULL, 17, 73, 'Aprobo la cuenta bancaria del usuario = diamond17', '190.145.44.98', NULL, NULL, '2019-06-04 19:21:09', '2019-06-04 19:21:09');
INSERT INTO `dbpcn_logs_admin` VALUES (421, 25, 10178, NULL, 17, 72, 'Aprobo la cuenta bancaria del usuario = luchomaster', '190.145.44.98', NULL, NULL, '2019-06-04 19:21:52', '2019-06-04 19:21:52');
INSERT INTO `dbpcn_logs_admin` VALUES (422, 25, 10208, NULL, 17, 69, 'Aprobo la cuenta bancaria del usuario = visionary', '190.145.44.98', NULL, NULL, '2019-06-04 19:23:33', '2019-06-04 19:23:33');
INSERT INTO `dbpcn_logs_admin` VALUES (423, 25, 10185, NULL, 17, 74, 'Aprobo la cuenta bancaria del usuario = hernuesga', '190.145.44.98', NULL, NULL, '2019-06-04 19:30:03', '2019-06-04 19:30:03');
INSERT INTO `dbpcn_logs_admin` VALUES (424, 25, 10234, NULL, 17, 75, 'Aprobo la cuenta bancaria del usuario = casasfredy', '190.145.44.98', NULL, NULL, '2019-06-04 19:30:36', '2019-06-04 19:30:36');
INSERT INTO `dbpcn_logs_admin` VALUES (425, 21, 10234, NULL, 7, 105, 'Aprobo la promesa de compra-venta del usuario = casasfredy', '190.145.44.98', NULL, NULL, '2019-06-04 19:42:40', '2019-06-04 19:42:40');
INSERT INTO `dbpcn_logs_admin` VALUES (426, 21, 10235, NULL, 7, 104, 'Aprobo la promesa de compra-venta del usuario = germanchacon', '190.145.44.98', NULL, NULL, '2019-06-04 19:44:18', '2019-06-04 19:44:18');
INSERT INTO `dbpcn_logs_admin` VALUES (427, 25, 10191, NULL, 17, 76, 'Aprobo la cuenta bancaria del usuario = fdam.master', '190.145.44.98', NULL, NULL, '2019-06-04 21:57:28', '2019-06-04 21:57:28');
INSERT INTO `dbpcn_logs_admin` VALUES (428, 20, NULL, 536, 1, 97, 'Aprobó recibo de consignación del usuario = dpanche2019', '190.145.44.98', NULL, NULL, '2019-06-05 13:46:37', '2019-06-05 13:46:37');
INSERT INTO `dbpcn_logs_admin` VALUES (429, 20, NULL, 556, 2, 95, 'Rechazo recibo de consignación del usuario = stellar1', '190.145.44.98', NULL, NULL, '2019-06-05 13:59:32', '2019-06-05 13:59:32');
INSERT INTO `dbpcn_logs_admin` VALUES (430, 20, NULL, 455, 2, 96, 'Rechazo recibo de consignación del usuario = georgemaster', '190.145.44.98', NULL, NULL, '2019-06-05 13:59:51', '2019-06-05 13:59:51');
INSERT INTO `dbpcn_logs_admin` VALUES (431, 20, NULL, 477, 1, 98, 'Aprobó recibo de consignación del usuario = margaritamora', '190.145.44.98', NULL, NULL, '2019-06-05 14:04:53', '2019-06-05 14:04:53');
INSERT INTO `dbpcn_logs_admin` VALUES (432, 25, 10239, 536, 3, 10239, 'Activación del usuario = dpanche2019', '190.145.44.98', NULL, NULL, '2019-06-05 14:05:09', '2019-06-05 14:05:09');
INSERT INTO `dbpcn_logs_admin` VALUES (433, 20, NULL, 455, 1, 99, 'Aprobó recibo de consignación del usuario = georgemaster', '190.145.44.98', NULL, NULL, '2019-06-05 15:10:27', '2019-06-05 15:10:27');
INSERT INTO `dbpcn_logs_admin` VALUES (434, 21, 10222, NULL, 7, 106, 'Aprobo la promesa de compra-venta del usuario = cayita', '190.145.44.98', NULL, NULL, '2019-06-05 15:10:57', '2019-06-05 15:10:57');
INSERT INTO `dbpcn_logs_admin` VALUES (435, 25, 10240, 455, 3, 10240, 'Activación del usuario = georgemaster', '190.145.44.98', NULL, NULL, '2019-06-05 15:14:31', '2019-06-05 15:14:31');
INSERT INTO `dbpcn_logs_admin` VALUES (436, 25, 10241, 477, 3, 10241, 'Activación del usuario = margaritamora', '190.145.44.98', NULL, NULL, '2019-06-05 15:14:37', '2019-06-05 15:14:37');
INSERT INTO `dbpcn_logs_admin` VALUES (437, 18, 10164, NULL, 18, 3, 'proceso la cuenta de cobro del usuario = globalvision - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-05 15:50:11', '2019-06-05 15:50:11');
INSERT INTO `dbpcn_logs_admin` VALUES (438, 21, 10236, NULL, 6, 107, 'Rechazo la promesa de compra-venta  del usuario = brayohan1985', '190.145.44.98', NULL, NULL, '2019-06-05 16:37:20', '2019-06-05 16:37:20');
INSERT INTO `dbpcn_logs_admin` VALUES (439, 18, 10169, NULL, 18, 7, 'proceso la cuenta de cobro del usuario = adelito62 - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-05 16:46:08', '2019-06-05 16:46:08');
INSERT INTO `dbpcn_logs_admin` VALUES (440, 18, 10172, NULL, 18, 8, 'proceso la cuenta de cobro del usuario = carolinayjimmy - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-05 16:49:13', '2019-06-05 16:49:13');
INSERT INTO `dbpcn_logs_admin` VALUES (441, 18, 10177, NULL, 18, 16, 'proceso la cuenta de cobro del usuario = diamond17 - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-05 16:54:59', '2019-06-05 16:54:59');
INSERT INTO `dbpcn_logs_admin` VALUES (442, 18, 10199, NULL, 18, 4, 'proceso la cuenta de cobro del usuario = dyjingenieria - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-05 16:59:36', '2019-06-05 16:59:36');
INSERT INTO `dbpcn_logs_admin` VALUES (443, 18, 10171, NULL, 18, 5, 'proceso la cuenta de cobro del usuario = eliasbm - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-05 17:03:12', '2019-06-05 17:03:12');
INSERT INTO `dbpcn_logs_admin` VALUES (444, 20, NULL, 556, 1, 100, 'Aprobó recibo de consignación del usuario = stellar1', '190.145.44.98', NULL, NULL, '2019-06-05 17:12:10', '2019-06-05 17:12:10');
INSERT INTO `dbpcn_logs_admin` VALUES (445, 19, 10242, 556, 3, 10242, 'Activación del usuario = stellar1', '190.145.44.98', NULL, NULL, '2019-06-05 17:21:56', '2019-06-05 17:21:56');
INSERT INTO `dbpcn_logs_admin` VALUES (446, 18, 10176, NULL, 18, 6, 'proceso la cuenta de cobro del usuario = emjv2019 - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-05 18:18:19', '2019-06-05 18:18:19');
INSERT INTO `dbpcn_logs_admin` VALUES (447, 18, 10181, NULL, 18, 10, 'proceso la cuenta de cobro del usuario = familiasl - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-05 18:19:10', '2019-06-05 18:19:10');
INSERT INTO `dbpcn_logs_admin` VALUES (448, 18, 10185, NULL, 18, 15, 'proceso la cuenta de cobro del usuario = hernuesga - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-05 18:20:12', '2019-06-05 18:20:12');
INSERT INTO `dbpcn_logs_admin` VALUES (449, 18, 10201, NULL, 18, 9, 'proceso la cuenta de cobro del usuario = jufesera - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-05 18:21:03', '2019-06-05 18:21:03');
INSERT INTO `dbpcn_logs_admin` VALUES (450, 18, 10198, NULL, 18, 18, 'proceso la cuenta de cobro del usuario = kano - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-05 18:22:06', '2019-06-05 18:22:06');
INSERT INTO `dbpcn_logs_admin` VALUES (451, 21, 10236, NULL, 6, 108, 'Rechazo la promesa de compra-venta  del usuario = brayohan1985', '190.145.44.98', NULL, NULL, '2019-06-05 18:27:32', '2019-06-05 18:27:32');
INSERT INTO `dbpcn_logs_admin` VALUES (452, 18, 10178, NULL, 18, 14, 'proceso la cuenta de cobro del usuario = luchomaster - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-05 18:32:23', '2019-06-05 18:32:23');
INSERT INTO `dbpcn_logs_admin` VALUES (453, 18, 10151, NULL, 18, 13, 'proceso la cuenta de cobro del usuario = luhercar - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-05 18:34:27', '2019-06-05 18:34:27');
INSERT INTO `dbpcn_logs_admin` VALUES (454, 18, 10180, NULL, 18, 12, 'proceso la cuenta de cobro del usuario = luzirene - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-05 18:36:00', '2019-06-05 18:36:00');
INSERT INTO `dbpcn_logs_admin` VALUES (455, 18, 10220, NULL, 18, 11, 'proceso la cuenta de cobro del usuario = rmartinez2459 - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-05 18:38:05', '2019-06-05 18:38:05');
INSERT INTO `dbpcn_logs_admin` VALUES (456, 18, 10225, NULL, 18, 17, 'proceso la cuenta de cobro del usuario = yolanda2019 - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-05 18:39:13', '2019-06-05 18:39:13');
INSERT INTO `dbpcn_logs_admin` VALUES (457, 21, 10168, NULL, 7, 109, 'Aprobo la promesa de compra-venta del usuario = paulhstevens', '190.145.44.98', NULL, NULL, '2019-06-05 21:15:47', '2019-06-05 21:15:47');
INSERT INTO `dbpcn_logs_admin` VALUES (458, 21, 10236, NULL, 7, 110, 'Aprobo la promesa de compra-venta del usuario = brayohan1985', '190.145.44.98', NULL, NULL, '2019-06-05 21:23:53', '2019-06-05 21:23:53');
INSERT INTO `dbpcn_logs_admin` VALUES (459, 19, 10168, NULL, 15, 79, 'Rechazo la cuenta bancaria  del usuario = paulhstevens', '190.145.44.98', NULL, NULL, '2019-06-05 21:29:45', '2019-06-05 21:29:45');
INSERT INTO `dbpcn_logs_admin` VALUES (460, 19, 10167, NULL, 15, 78, 'Rechazo la cuenta bancaria  del usuario = wolf_ecu', '190.145.44.98', NULL, NULL, '2019-06-05 21:30:06', '2019-06-05 21:30:06');
INSERT INTO `dbpcn_logs_admin` VALUES (461, 19, 10162, NULL, 15, 77, 'Rechazo la cuenta bancaria  del usuario = bitboss', '190.145.44.98', NULL, NULL, '2019-06-05 21:38:16', '2019-06-05 21:38:16');
INSERT INTO `dbpcn_logs_admin` VALUES (462, 12, 10222, NULL, 11, 84, 'Aprobo RUT del usuario = cayita', '190.145.44.98', NULL, NULL, '2019-06-05 21:41:19', '2019-06-05 21:41:19');
INSERT INTO `dbpcn_logs_admin` VALUES (463, 19, 10162, NULL, 17, 82, 'Aprobo la cuenta bancaria del usuario = bitboss', '190.145.44.98', NULL, NULL, '2019-06-06 13:01:05', '2019-06-06 13:01:05');
INSERT INTO `dbpcn_logs_admin` VALUES (464, 19, 10168, NULL, 17, 83, 'Aprobo la cuenta bancaria del usuario = paulhstevens', '190.145.44.98', NULL, NULL, '2019-06-06 13:01:23', '2019-06-06 13:01:23');
INSERT INTO `dbpcn_logs_admin` VALUES (465, 19, 10167, NULL, 17, 81, 'Aprobo la cuenta bancaria del usuario = wolf_ecu', '190.145.44.98', NULL, NULL, '2019-06-06 13:01:41', '2019-06-06 13:01:41');
INSERT INTO `dbpcn_logs_admin` VALUES (466, 19, 10183, NULL, 17, 80, 'Aprobo la cuenta bancaria del usuario = juan1515', '190.145.44.98', NULL, NULL, '2019-06-06 15:18:53', '2019-06-06 15:18:53');
INSERT INTO `dbpcn_logs_admin` VALUES (467, 12, 10242, NULL, 5, 92, 'Aprobo Documentación del usuario = stellar1', '190.145.44.98', NULL, NULL, '2019-06-06 15:39:54', '2019-06-06 15:39:54');
INSERT INTO `dbpcn_logs_admin` VALUES (468, 12, 10223, NULL, 12, 85, 'Rechazo RUT del usuario = rimexy', '190.145.44.98', NULL, NULL, '2019-06-06 15:42:25', '2019-06-06 15:42:25');
INSERT INTO `dbpcn_logs_admin` VALUES (469, 18, 10161, NULL, 18, 20, 'proceso la cuenta de cobro del usuario = cabapella - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-06 16:31:16', '2019-06-06 16:31:16');
INSERT INTO `dbpcn_logs_admin` VALUES (470, 18, 10226, NULL, 18, 24, 'proceso la cuenta de cobro del usuario = joca2689 - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-06 16:34:28', '2019-06-06 16:34:28');
INSERT INTO `dbpcn_logs_admin` VALUES (471, 18, 10191, NULL, 18, 21, 'proceso la cuenta de cobro del usuario = fdam.master - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-06 16:38:26', '2019-06-06 16:38:26');
INSERT INTO `dbpcn_logs_admin` VALUES (472, 18, 10189, NULL, 18, 23, 'proceso la cuenta de cobro del usuario = reymidas07 - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-06 16:40:27', '2019-06-06 16:40:27');
INSERT INTO `dbpcn_logs_admin` VALUES (473, 18, 10208, NULL, 18, 22, 'proceso la cuenta de cobro del usuario = visionary - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-06 16:43:58', '2019-06-06 16:43:58');
INSERT INTO `dbpcn_logs_admin` VALUES (474, 12, 10223, NULL, 12, 85, 'Rechazo RUT del usuario = rimexy', '190.145.44.98', NULL, NULL, '2019-06-06 18:47:08', '2019-06-06 18:47:08');
INSERT INTO `dbpcn_logs_admin` VALUES (475, 19, 10223, NULL, 17, 84, 'Aprobo la cuenta bancaria del usuario = rimexy', '190.145.44.98', NULL, NULL, '2019-06-06 22:13:41', '2019-06-06 22:13:41');
INSERT INTO `dbpcn_logs_admin` VALUES (476, 12, 10223, NULL, 12, 85, 'Rechazo RUT del usuario = rimexy', '190.145.44.98', NULL, NULL, '2019-06-07 14:47:02', '2019-06-07 14:47:02');
INSERT INTO `dbpcn_logs_admin` VALUES (477, 29, 10162, NULL, 18, 26, 'proceso la cuenta de cobro del usuario = bitboss - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-07 15:02:27', '2019-06-07 15:02:27');
INSERT INTO `dbpcn_logs_admin` VALUES (478, 29, 10222, NULL, 18, 27, 'proceso la cuenta de cobro del usuario = cayita - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-07 15:02:53', '2019-06-07 15:02:53');
INSERT INTO `dbpcn_logs_admin` VALUES (479, 29, 10230, NULL, 18, 28, 'proceso la cuenta de cobro del usuario = fernandolondonoruiz1969 - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-07 15:03:34', '2019-06-07 15:03:34');
INSERT INTO `dbpcn_logs_admin` VALUES (480, 29, 10183, NULL, 18, 25, 'proceso la cuenta de cobro del usuario = juan1515 - estado en processing', '190.145.44.98', NULL, NULL, '2019-06-07 15:03:57', '2019-06-07 15:03:57');
INSERT INTO `dbpcn_logs_admin` VALUES (481, 29, 10164, NULL, 19, 3, 'Aprobo la cuenta de cobro del usuario = globalvision - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 15:50:17', '2019-06-07 15:50:17');
INSERT INTO `dbpcn_logs_admin` VALUES (482, 31, 10199, NULL, 19, 4, 'Aprobo la cuenta de cobro del usuario = dyjingenieria - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 16:37:36', '2019-06-07 16:37:36');
INSERT INTO `dbpcn_logs_admin` VALUES (483, 31, 10171, NULL, 19, 5, 'Aprobo la cuenta de cobro del usuario = eliasbm - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 16:40:56', '2019-06-07 16:40:56');
INSERT INTO `dbpcn_logs_admin` VALUES (484, 31, 10176, NULL, 19, 6, 'Aprobo la cuenta de cobro del usuario = emjv2019 - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 16:42:00', '2019-06-07 16:42:00');
INSERT INTO `dbpcn_logs_admin` VALUES (485, 31, 10169, NULL, 19, 7, 'Aprobo la cuenta de cobro del usuario = adelito62 - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 16:42:32', '2019-06-07 16:42:32');
INSERT INTO `dbpcn_logs_admin` VALUES (486, 31, 10172, NULL, 19, 8, 'Aprobo la cuenta de cobro del usuario = carolinayjimmy - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 16:43:15', '2019-06-07 16:43:15');
INSERT INTO `dbpcn_logs_admin` VALUES (487, 31, 10201, NULL, 19, 9, 'Aprobo la cuenta de cobro del usuario = jufesera - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 16:43:48', '2019-06-07 16:43:48');
INSERT INTO `dbpcn_logs_admin` VALUES (488, 31, 10181, NULL, 19, 10, 'Aprobo la cuenta de cobro del usuario = familiasl - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 16:44:04', '2019-06-07 16:44:04');
INSERT INTO `dbpcn_logs_admin` VALUES (489, 31, 10220, NULL, 19, 11, 'Aprobo la cuenta de cobro del usuario = rmartinez2459 - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 16:44:20', '2019-06-07 16:44:20');
INSERT INTO `dbpcn_logs_admin` VALUES (490, 31, 10180, NULL, 19, 12, 'Aprobo la cuenta de cobro del usuario = luzirene - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 16:44:36', '2019-06-07 16:44:36');
INSERT INTO `dbpcn_logs_admin` VALUES (491, 31, 10151, NULL, 19, 13, 'Aprobo la cuenta de cobro del usuario = luhercar - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 16:45:02', '2019-06-07 16:45:02');
INSERT INTO `dbpcn_logs_admin` VALUES (492, 31, 10178, NULL, 19, 14, 'Aprobo la cuenta de cobro del usuario = luchomaster - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 16:45:18', '2019-06-07 16:45:18');
INSERT INTO `dbpcn_logs_admin` VALUES (493, 31, 10185, NULL, 19, 15, 'Aprobo la cuenta de cobro del usuario = hernuesga - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 16:45:38', '2019-06-07 16:45:38');
INSERT INTO `dbpcn_logs_admin` VALUES (494, 31, 10177, NULL, 19, 16, 'Aprobo la cuenta de cobro del usuario = diamond17 - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 16:50:26', '2019-06-07 16:50:26');
INSERT INTO `dbpcn_logs_admin` VALUES (495, 31, 10225, NULL, 19, 17, 'Aprobo la cuenta de cobro del usuario = yolanda2019 - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 16:51:15', '2019-06-07 16:51:15');
INSERT INTO `dbpcn_logs_admin` VALUES (496, 31, 10198, NULL, 19, 18, 'Aprobo la cuenta de cobro del usuario = kano - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 16:51:44', '2019-06-07 16:51:44');
INSERT INTO `dbpcn_logs_admin` VALUES (497, 31, 10161, NULL, 19, 20, 'Aprobo la cuenta de cobro del usuario = cabapella - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 16:52:28', '2019-06-07 16:52:28');
INSERT INTO `dbpcn_logs_admin` VALUES (498, 31, 10191, NULL, 19, 21, 'Aprobo la cuenta de cobro del usuario = fdam.master - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 16:53:16', '2019-06-07 16:53:16');
INSERT INTO `dbpcn_logs_admin` VALUES (499, 31, 10208, NULL, 19, 22, 'Aprobo la cuenta de cobro del usuario = visionary - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 17:00:38', '2019-06-07 17:00:38');
INSERT INTO `dbpcn_logs_admin` VALUES (500, 31, 10189, NULL, 19, 23, 'Aprobo la cuenta de cobro del usuario = reymidas07 - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 17:01:11', '2019-06-07 17:01:11');
INSERT INTO `dbpcn_logs_admin` VALUES (501, 31, 10226, NULL, 19, 24, 'Aprobo la cuenta de cobro del usuario = joca2689 - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 17:01:29', '2019-06-07 17:01:29');
INSERT INTO `dbpcn_logs_admin` VALUES (502, 19, 10216, NULL, 17, 87, 'Aprobo la cuenta bancaria del usuario = byronochoa', '190.145.44.98', NULL, NULL, '2019-06-07 17:29:24', '2019-06-07 17:29:24');
INSERT INTO `dbpcn_logs_admin` VALUES (503, 19, 10229, NULL, 17, 86, 'Aprobo la cuenta bancaria del usuario = sharom2204', '190.145.44.98', NULL, NULL, '2019-06-07 17:29:29', '2019-06-07 17:29:29');
INSERT INTO `dbpcn_logs_admin` VALUES (504, 19, 10175, NULL, 17, 85, 'Aprobo la cuenta bancaria del usuario = yosoy', '190.145.44.98', NULL, NULL, '2019-06-07 17:29:34', '2019-06-07 17:29:34');
INSERT INTO `dbpcn_logs_admin` VALUES (505, 20, NULL, 617, 1, 101, 'Aprobó recibo de consignación del usuario = joelariza', '190.145.44.98', NULL, NULL, '2019-06-07 19:41:14', '2019-06-07 19:41:14');
INSERT INTO `dbpcn_logs_admin` VALUES (506, 19, 10243, 617, 3, 10243, 'Activación del usuario = joelariza', '190.145.44.98', NULL, NULL, '2019-06-07 19:53:31', '2019-06-07 19:53:31');
INSERT INTO `dbpcn_logs_admin` VALUES (507, 31, 10162, NULL, 19, 26, 'Aprobo la cuenta de cobro del usuario = bitboss - estado en aprobada', '190.145.44.98', NULL, NULL, '2019-06-07 21:35:01', '2019-06-07 21:35:01');
INSERT INTO `dbpcn_logs_admin` VALUES (508, 18, 10148, NULL, 22, 19, 'Rechazo la cuenta de cobro del usuario = gin', '190.145.44.98', NULL, NULL, '2019-06-10 13:46:50', '2019-06-10 13:46:50');
INSERT INTO `dbpcn_logs_admin` VALUES (509, 20, NULL, 622, 2, 106, 'Rechazo recibo de consignación del usuario = peralta7', '190.145.44.98', NULL, NULL, '2019-06-10 14:37:17', '2019-06-10 14:37:17');
INSERT INTO `dbpcn_logs_admin` VALUES (510, 20, NULL, 563, 1, 105, 'Aprobó recibo de consignación del usuario = eriyharold', '190.145.44.98', NULL, NULL, '2019-06-10 14:56:42', '2019-06-10 14:56:42');
INSERT INTO `dbpcn_logs_admin` VALUES (511, 20, NULL, 619, 1, 102, 'Aprobó recibo de consignación del usuario = edudav', '190.145.44.98', NULL, NULL, '2019-06-10 14:57:07', '2019-06-10 14:57:07');
INSERT INTO `dbpcn_logs_admin` VALUES (512, 20, NULL, 616, 1, 103, 'Aprobó recibo de consignación del usuario = dkb.musical26', '190.145.44.98', NULL, NULL, '2019-06-10 14:57:39', '2019-06-10 14:57:39');
INSERT INTO `dbpcn_logs_admin` VALUES (513, 20, NULL, 606, 1, 107, 'Aprobó recibo de consignación del usuario = inmobiliariayconstructorazosas', '190.145.44.98', NULL, NULL, '2019-06-10 15:33:18', '2019-06-10 15:33:18');
INSERT INTO `dbpcn_logs_admin` VALUES (514, 20, NULL, 618, 1, 104, 'Aprobó recibo de consignación del usuario = jhonjaironino', '190.145.44.98', NULL, NULL, '2019-06-10 15:33:33', '2019-06-10 15:33:33');
INSERT INTO `dbpcn_logs_admin` VALUES (515, 19, 10244, 563, 3, 10244, 'Activación del usuario = eriyharold', '190.145.44.98', NULL, NULL, '2019-06-10 16:13:04', '2019-06-10 16:13:04');
INSERT INTO `dbpcn_logs_admin` VALUES (516, 19, 10245, 606, 3, 10245, 'Activación del usuario = inmobiliariayconstructorazosas', '190.145.44.98', NULL, NULL, '2019-06-10 16:14:41', '2019-06-10 16:14:41');
INSERT INTO `dbpcn_logs_admin` VALUES (517, 19, 10246, 616, 3, 10246, 'Activación del usuario = dkb.musical26', '190.145.44.98', NULL, NULL, '2019-06-10 16:15:24', '2019-06-10 16:15:24');
INSERT INTO `dbpcn_logs_admin` VALUES (518, 12, 10243, NULL, 5, 93, 'Aprobo Documentación del usuario = joelariza', '190.145.44.98', NULL, NULL, '2019-06-10 16:15:26', '2019-06-10 16:15:26');
INSERT INTO `dbpcn_logs_admin` VALUES (519, 19, 10247, 618, 3, 10247, 'Activación del usuario = jhonjaironino', '190.145.44.98', NULL, NULL, '2019-06-10 16:18:43', '2019-06-10 16:18:43');
INSERT INTO `dbpcn_logs_admin` VALUES (520, 19, 10248, 619, 3, 10248, 'Activación del usuario = edudav', '190.145.44.98', NULL, NULL, '2019-06-10 16:20:18', '2019-06-10 16:20:18');
INSERT INTO `dbpcn_logs_admin` VALUES (521, 20, NULL, 622, 1, 108, 'Aprobó recibo de consignación del usuario = peralta7', '190.145.44.98', NULL, NULL, '2019-06-10 16:42:52', '2019-06-10 16:42:52');
INSERT INTO `dbpcn_logs_admin` VALUES (522, 19, 10249, 622, 3, 10249, 'Activación del usuario = peralta7', '190.145.44.98', NULL, NULL, '2019-06-10 16:46:52', '2019-06-10 16:46:52');
INSERT INTO `dbpcn_logs_admin` VALUES (523, 12, 10239, NULL, 5, 94, 'Aprobo Documentación del usuario = dpanche2019', '190.145.44.98', NULL, NULL, '2019-06-10 16:48:13', '2019-06-10 16:48:13');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_logs_payu
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_logs_payu`;
CREATE TABLE `dbpcn_logs_payu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process` enum('activate_user','payment_of_fee') COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `error` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `detalle` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `referer` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `signature` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `signature2` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `request_all` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_logs_payu
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_logs_payu` VALUES (1, 'payment_of_fee', 10149, 'Error-state_pol = 6', 'Error-state_pol = 6', 'EdyZQ/10149/730249.33/1/XFC2N8M4AH/72', 'qHY6W7ui8eZdWvPToQEy9uzgaE~798687~EdyZQ/10149/730249.33/1/XFC2N8M4AH/72~730249.33~COP~6', 'aedfa6fada3e4c65d69d8080a3263d16', '{\"date\":\"2019.05.27 08:53:47\",\"pse_reference3\":\"900974625\",\"payment_method_type\":\"4\",\"pse_reference2\":\"NIT\",\"pse_reference1\":\"190.145.44.98\",\"shipping_city\":null,\"bank_referenced_name\":null,\"sign\":\"aedfa6fada3e4c65d69d8080a3263d16\",\"extra2\":null,\"extra3\":null,\"operation_date\":\"2019-05-27 08:53:47\",\"payment_request_state\":\"R\",\"billing_address\":null,\"extra1\":null,\"administrative_fee\":\"0.00\",\"administrative_fee_tax\":\"0.00\",\"bank_id\":\"25\",\"nickname_buyer\":null,\"payment_method\":\"25\",\"attempts\":\"1\",\"transaction_id\":\"0f96ad26-d2c0-4024-9374-0be72aba8e6f\",\"transaction_date\":\"2019-05-27 08:53:47\",\"test\":\"0\",\"exchange_rate\":\"1.00\",\"ip\":\"190.145.44.98\",\"reference_pol\":\"247274525\",\"tax\":\"0.00\",\"antifraudMerchantId\":null,\"pse_bank\":\"BANCOLOMBIA\",\"state_pol\":\"6\",\"billing_city\":null,\"phone\":\"3853370\",\"error_message_bank\":null,\"shipping_country\":\"CO\",\"error_code_bank\":\"SUCCESS\",\"cus\":\"450658171\",\"customer_number\":null,\"description\":\"Pago de Cuota Mensual\",\"merchant_id\":\"798687\",\"administrative_fee_base\":\"0.00\",\"currency\":\"COP\",\"shipping_address\":null,\"nickname_seller\":null,\"installments_number\":null,\"value\":\"730249.33\",\"billing_country\":\"CO\",\"response_code_pol\":\"4\",\"payment_method_name\":\"PSE\",\"office_phone\":null,\"email_buyer\":\"pasal@palacio.com.co\",\"payment_method_id\":\"4\",\"response_message_pol\":\"PAYMENT_NETWORK_REJECTED\",\"airline_code\":null,\"pseCycle\":\"2\",\"risk\":\"0.0\",\"reference_sale\":\"EdyZQ\\/10149\\/730249.33\\/1\\/XFC2N8M4AH\\/72\",\"additional_value\":\"0.00\"}', '2019-05-27 08:53:48', '2019-05-27 08:53:48');
INSERT INTO `dbpcn_logs_payu` VALUES (2, 'payment_of_fee', 10149, 'Error al buscar registros anteriores', 'Error al buscar registros anteriores', 'xy3V5/10149/730249.33/1/XFC2N8M4AH/72', 'qHY6W7ui8eZdWvPToQEy9uzgaE~798687~xy3V5/10149/730249.33/1/XFC2N8M4AH/72~730249.33~COP~4', 'fa866fb4572faff3d260baa9bc75dc12', '{\"date\":\"2019.05.27 09:00:15\",\"pse_reference3\":\"900974625\",\"payment_method_type\":\"4\",\"pse_reference2\":\"NIT\",\"commision_pol\":\"0.00\",\"pse_reference1\":\"190.145.44.98\",\"shipping_city\":null,\"bank_referenced_name\":null,\"sign\":\"fa866fb4572faff3d260baa9bc75dc12\",\"extra2\":null,\"extra3\":null,\"operation_date\":\"2019-05-27 09:00:15\",\"payment_request_state\":\"A\",\"billing_address\":null,\"extra1\":null,\"administrative_fee\":\"0.00\",\"administrative_fee_tax\":\"0.00\",\"bank_id\":\"25\",\"nickname_buyer\":null,\"payment_method\":\"25\",\"attempts\":\"1\",\"transaction_id\":\"06dbecaf-367a-4102-a2cf-f08847069844\",\"transaction_date\":\"2019-05-27 09:00:15\",\"test\":\"0\",\"exchange_rate\":\"1.00\",\"ip\":\"190.145.44.98\",\"reference_pol\":\"247275956\",\"tax\":\"0.00\",\"antifraudMerchantId\":null,\"pse_bank\":\"BANCOLOMBIA\",\"state_pol\":\"4\",\"billing_city\":null,\"phone\":\"3853370\",\"error_message_bank\":null,\"shipping_country\":\"CO\",\"error_code_bank\":\"SUCCESS\",\"cus\":\"450660707\",\"commision_pol_currency\":null,\"customer_number\":null,\"description\":\"Pago de Cuota Mensual\",\"merchant_id\":\"798687\",\"administrative_fee_base\":\"0.00\",\"authorization_code\":null,\"currency\":\"COP\",\"shipping_address\":null,\"nickname_seller\":null,\"installments_number\":null,\"value\":\"730249.33\",\"transaction_bank_id\":null,\"billing_country\":\"CO\",\"response_code_pol\":\"1\",\"payment_method_name\":\"PSE\",\"office_phone\":null,\"email_buyer\":\"pasal@palacio.com.co\",\"payment_method_id\":\"4\",\"response_message_pol\":\"APPROVED\",\"airline_code\":null,\"pseCycle\":\"2\",\"risk\":\"0.0\",\"reference_sale\":\"xy3V5\\/10149\\/730249.33\\/1\\/XFC2N8M4AH\\/72\",\"additional_value\":\"0.00\"}', '2019-05-27 09:00:21', '2019-05-27 09:00:21');
INSERT INTO `dbpcn_logs_payu` VALUES (3, 'payment_of_fee', 10221, 'Error-state_pol = 6', 'Error-state_pol = 6', 'dhOde/10221/730249.33/1/XFC2N8M4AH/466', 'qHY6W7ui8eZdWvPToQEy9uzgaE~798687~dhOde/10221/730249.33/1/XFC2N8M4AH/466~730249.33~COP~6', 'c536f7cf2e5dfa52e9bc43b25e604abd', '{\"date\":\"2019.05.29 11:02:04\",\"pse_reference3\":\"900796311\",\"payment_method_type\":\"4\",\"pse_reference2\":\"NIT\",\"pse_reference1\":\"190.146.82.47\",\"shipping_city\":null,\"bank_referenced_name\":null,\"sign\":\"c536f7cf2e5dfa52e9bc43b25e604abd\",\"extra2\":null,\"extra3\":null,\"operation_date\":\"2019-05-29 11:02:04\",\"payment_request_state\":\"R\",\"billing_address\":null,\"extra1\":null,\"administrative_fee\":\"0.00\",\"administrative_fee_tax\":\"0.00\",\"bank_id\":\"25\",\"nickname_buyer\":null,\"payment_method\":\"25\",\"attempts\":\"1\",\"transaction_id\":\"d136bd62-59bb-4ec4-990b-faecd4c4d92a\",\"transaction_date\":\"2019-05-29 11:02:04\",\"test\":\"0\",\"exchange_rate\":\"1.00\",\"ip\":\"190.146.82.47\",\"reference_pol\":\"247964922\",\"tax\":\"0.00\",\"antifraudMerchantId\":null,\"pse_bank\":\"BANCOLOMBIA\",\"state_pol\":\"6\",\"billing_city\":null,\"phone\":\"3102587069\",\"error_message_bank\":null,\"shipping_country\":\"CO\",\"error_code_bank\":\"SUCCESS\",\"cus\":\"451453882\",\"customer_number\":null,\"description\":\"Pago de Cuota Mensual\",\"merchant_id\":\"798687\",\"administrative_fee_base\":\"0.00\",\"currency\":\"COP\",\"shipping_address\":null,\"nickname_seller\":null,\"installments_number\":null,\"value\":\"730249.33\",\"billing_country\":\"CO\",\"response_code_pol\":\"4\",\"payment_method_name\":\"PSE\",\"office_phone\":null,\"email_buyer\":\"refricol2000@hotmail.com\",\"payment_method_id\":\"4\",\"response_message_pol\":\"PAYMENT_NETWORK_REJECTED\",\"airline_code\":null,\"pseCycle\":\"3\",\"risk\":\"0.0\",\"reference_sale\":\"dhOde\\/10221\\/730249.33\\/1\\/XFC2N8M4AH\\/466\",\"additional_value\":\"0.00\"}', '2019-05-29 11:02:05', '2019-05-29 11:02:05');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_member_details
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_member_details`;
CREATE TABLE `dbpcn_member_details` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(20) NOT NULL,
  `avatar_img` varchar(150) NOT NULL,
  `ranking_id` int(10) NOT NULL,
  `grade_date` datetime NOT NULL,
  `month_installments` text NOT NULL,
  `user_directs` longtext NOT NULL,
  `hasFirstLogIn` int(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `user_id` (`user_id`) USING BTREE,
  KEY `rankin_id` (`ranking_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29274 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_member_details
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_member_details` VALUES (29273, 1, '', 1, '2019-03-13 10:35:54', '{}', '', 0, '2019-03-13 10:36:14', '2019-03-17 06:10:46');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_members
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_members`;
CREATE TABLE `dbpcn_members` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(30) unsigned NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `sponsor_code` varchar(255) NOT NULL,
  `referer_id` int(11) NOT NULL,
  `enroller_id` int(11) NOT NULL,
  `level` int(10) DEFAULT NULL,
  `legal_entity` int(1) NOT NULL,
  `firstname` varchar(120) NOT NULL,
  `secondname` varchar(120) DEFAULT NULL,
  `firstlastname` varchar(120) DEFAULT NULL,
  `secondlastname` varchar(120) DEFAULT NULL,
  `birthday` date NOT NULL,
  `t_doc` int(2) NOT NULL,
  `n_doc` varchar(50) NOT NULL,
  `expedition_date` date NOT NULL,
  `expedition_place` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country_id` int(10) NOT NULL,
  `nit` varchar(20) DEFAULT NULL,
  `company_name` varchar(30) DEFAULT NULL,
  `company_phone` varchar(20) DEFAULT NULL,
  `company_address` varchar(100) DEFAULT NULL,
  `company_city` varchar(30) DEFAULT NULL,
  `company_country` int(10) DEFAULT NULL,
  `affiliation_date` datetime NOT NULL,
  `t_account` int(2) NOT NULL,
  `status` int(2) NOT NULL,
  `n_allotment` int(20) NOT NULL,
  `allotment` text NOT NULL,
  `ranking_id` int(11) NOT NULL,
  `avatar_img` text DEFAULT NULL,
  `user_directs` text NOT NULL,
  `n_directs` int(10) NOT NULL,
  `user_indirects` longtext NOT NULL,
  `n_indbylevel` text DEFAULT NULL,
  `n_indirects` int(10) NOT NULL,
  `grade_date` datetime DEFAULT NULL,
  `month_installments` datetime DEFAULT NULL,
  `pre_user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE,
  UNIQUE KEY `n_doc` (`n_doc`) USING BTREE,
  UNIQUE KEY `user_id` (`user_id`) USING BTREE,
  UNIQUE KEY `sponsor_code` (`sponsor_code`) USING BTREE,
  KEY `referer_id` (`referer_id`) USING BTREE,
  KEY `enroller_id` (`enroller_id`) USING BTREE,
  KEY `idcountry` (`country_id`) USING BTREE,
  KEY `fecha_registro` (`affiliation_date`) USING BTREE,
  KEY `fk_legal_ent` (`legal_entity`) USING BTREE,
  KEY `fk_tdoc` (`t_doc`) USING BTREE,
  KEY `created_at` (`created_at`) USING BTREE,
  CONSTRAINT `fk_countryid` FOREIGN KEY (`country_id`) REFERENCES `dbpcn_countries` (`country_master_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_legal_ent` FOREIGN KEY (`legal_entity`) REFERENCES `dbpcn_people_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tdoc` FOREIGN KEY (`t_doc`) REFERENCES `dbpcn_document_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10364 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_members
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_members` VALUES (3, 1, 'pcnetwork', 'pcnetwork@palacio.com.co', '2hmsHBO3a1', 0, 0, NULL, 1, 'PEDRO', 'ANTONIO', 'PALACIO', 'AREVALO', '1960-10-01', 1, '8734069', '1981-10-01', 'BARRANQUILLA', '3853370', 'CALLE 84 # 42C -341', 'BARRANQUILLA', 47, '802.002.678-1', 'PALACIO OFICINA DE CONSTRUCCIO', '3853370', 'CALLE 84 # 42C -341', 'BARRANQUIILLA', 47, '2019-03-08 13:51:37', 0, 0, 1, '[{\"project\":1,\"allotment_id\":\"2\",\"first_payment\":2255000}]', 10, '1.png', '', 0, '{\"2\":[{\"cantidad\":4,\"first_payment\":2255000,\"project\":1}],\"3\":[{\"cantidad\":6,\"first_payment\":2255000,\"project\":1}],\"4\":[{\"cantidad\":9,\"first_payment\":2255000,\"project\":1}],\"5\":[{\"cantidad\":11,\"first_payment\":2255000,\"project\":1}],\"6\":[{\"cantidad\":13,\"first_payment\":2255000,\"project\":1}],\"7\":[{\"cantidad\":11,\"first_payment\":2255000,\"project\":1}]}', '{\"2\":[[\"10149\",\"pasal\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"72\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-10 17:22:49\\\"}]\"],[\"10151\",\"luhercar\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"91\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-13 20:01:48\\\"}]\"],[\"10161\",\"cabapella\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"89\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-13 20:58:39\\\"}]\"],[\"10162\",\"bitboss\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"90\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-13 21:20:59\\\"}]\"]],\"3\":[[\"10163\",\"jjpalacio26\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"70\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-13 21:38:17\\\"}]\"],[\"10169\",\"adelito62\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1697\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:02:23\\\"}]\"],[\"10179\",\"darioquijano\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"46\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:35:42\\\"}]\"],[\"10174\",\"masterdreamers\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"81\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:09\\\"}]\"],[\"10164\",\"globalvision\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"109\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-14 19:05:20\\\"}]\"],[\"10167\",\"wolf_ecu\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"92\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:01:01\\\"}]\"]],\"4\":[[\"10170\",\"farcoin93\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"37\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:03:16\\\"}]\"],[\"10173\",\"trillonario\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"308\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:32:28\\\"}]\"],[\"10219\",\"dreamerazul\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"80\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-21 21:47:04\\\"}]\"],[\"10165\",\"yesidf\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"478\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-14 20:06:33\\\"}]\"],[\"10208\",\"visionary\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"488\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 17:34:03\\\"}]\"],[\"10215\",\"sergioparra\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"790\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-20 14:47:32\\\"}]\"],[\"10216\",\"byronochoa\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"83\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-20 14:50:42\\\"}]\"],[\"10168\",\"paulhstevens\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"94\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:01:54\\\"}]\"],[\"10197\",\"alexluisv\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"76\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 13:59:09\\\"}]\"]],\"5\":[[\"10171\",\"eliasbm\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1714\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:03:49\\\"}]\"],[\"10183\",\"juan1515\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"35\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:36:40\\\"}]\"],[\"10177\",\"diamond17\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"140\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:35:16\\\"}]\"],[\"10178\",\"luchomaster\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1723\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:35:27\\\"}]\"],[\"10209\",\"camilo1140\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"716\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:07:17\\\"}]\"],[\"10166\",\"jagaby\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"21\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-14 22:53:22\\\"}]\"],[\"10221\",\"refricol\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"466\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-24 13:42:51\\\"}]\"],[\"10222\",\"cayita\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"487\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-24 13:44:36\\\"}]\"],[\"10223\",\"rimexy\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"198\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-27 19:15:30\\\"}]\"],[\"10217\",\"juanjose\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"766\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-21 19:07:30\\\"}]\"],[\"10199\",\"dyjingenieria\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"654\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:28:59\\\"}]\"]],\"6\":[[\"10172\",\"carolinayjimmy\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"12\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:08:26\\\"}]\"],[\"10184\",\"nelson_mejia1\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1689\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:06\\\"}]\"],[\"10186\",\"tico1977\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1713\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:25\\\"}]\"],[\"10188\",\"yulimarolivera0408\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"31\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:39:45\\\"}]\"],[\"10181\",\"familiasl\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"38\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:36:09\\\"}]\"],[\"10191\",\"fdam.master\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"335\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:41\\\"}]\"],[\"10180\",\"luzirene\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"117\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:35:59\\\"}]\"],[\"10200\",\"luisfercast\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"129\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:22\\\"}]\"],[\"10201\",\"jufesera\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"152\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:37\\\"}]\"],[\"10202\",\"andreyamaya1927\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"626\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:46\\\"}]\"],[\"10203\",\"housedream\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"315\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:30:40\\\"}]\"],[\"10204\",\"adriana\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"815\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:30:49\\\"}]\"],[\"10218\",\"lote1mz38\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"709\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-21 19:08:57\\\"}]\"]],\"7\":[[\"10175\",\"yosoy\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"74\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:27\\\"}]\"],[\"10196\",\"atlanrot\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"48\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 13:56:55\\\"}]\"],[\"10198\",\"kano\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"583\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 14:00:16\\\"}]\"],[\"10210\",\"cupercuevas83\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"108\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:07:44\\\"}]\"],[\"10195\",\"macdfd01\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"292\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:21\\\"}]\"],[\"10220\",\"rmartinez2459\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"316\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-23 21:08:04\\\"}]\"],[\"10212\",\"nancy.roa\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1704\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 21:18:20\\\"}]\"],[\"10182\",\"carly\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"111\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:36:37\\\"}]\"],[\"10185\",\"hernuesga\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"107\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:12\\\"}]\"],[\"10205\",\"excellentpower\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"141\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:33:13\\\"}]\"],[\"10214\",\"jesuscardona\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"301\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-17 20:17:49\\\"}]\"]]}', 0, '2019-04-25 14:07:10', NULL, NULL, '2019-03-01 10:01:14', '2019-05-27 16:00:44');
INSERT INTO `dbpcn_members` VALUES (10115, 10148, 'gin', 'gin.network.consult@gmail.com', 'h1110148p6x1jmr', 1, 0, NULL, 1, 'eduardo', 'felipe', 'caballero', 'danna', '1980-10-01', 1, '723116610', '1998-11-13', 'Puerto Colombia', '3858772', 'Cra 64C #84-260', 'Barranquilla', 47, '901247219-5', 'Grupo Internacional de Negocio', '3858772', 'Cra 64C #84-260', 'Barranquilla', 47, '2019-04-27 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"88\",\"first_payment\":2255000}]', 10, '', '[{\"id\":10149,\"username\":\"pasal\"},{\"id\":10151,\"username\":\"luhercar\"},{\"id\":10161,\"username\":\"cabapella\"},{\"id\":10162,\"username\":\"bitboss\"}]', 4, '{\"2\":[{\"cantidad\":6,\"first_payment\":2255000,\"project\":1}],\"3\":[{\"cantidad\":9,\"first_payment\":2255000,\"project\":1}],\"4\":[{\"cantidad\":13,\"first_payment\":2255000,\"project\":1}],\"5\":[{\"cantidad\":19,\"first_payment\":2255000,\"project\":1}],\"6\":[{\"cantidad\":15,\"first_payment\":2255000,\"project\":1}],\"7\":[{\"cantidad\":10,\"first_payment\":2255000,\"project\":1}]}', '{\"2\":[[\"10163\",\"jjpalacio26\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"70\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-13 21:38:17\\\"}]\"],[\"10169\",\"adelito62\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1697\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:02:23\\\"}]\"],[\"10179\",\"darioquijano\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"46\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:35:42\\\"}]\"],[\"10174\",\"masterdreamers\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"81\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:09\\\"}]\"],[\"10164\",\"globalvision\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"109\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-14 19:05:20\\\"}]\"],[\"10167\",\"wolf_ecu\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"92\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:01:01\\\"}]\"]],\"3\":[[\"10170\",\"farcoin93\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"37\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:03:16\\\"}]\"],[\"10173\",\"trillonario\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"308\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:32:28\\\"}]\"],[\"10219\",\"dreamerazul\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"80\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-21 21:47:04\\\"}]\"],[\"10165\",\"yesidf\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"478\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-14 20:06:33\\\"}]\"],[\"10208\",\"visionary\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"488\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 17:34:03\\\"}]\"],[\"10215\",\"sergioparra\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"790\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-20 14:47:32\\\"}]\"],[\"10216\",\"byronochoa\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"83\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-20 14:50:42\\\"}]\"],[\"10168\",\"paulhstevens\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"94\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:01:54\\\"}]\"],[\"10197\",\"alexluisv\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"76\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 13:59:09\\\"}]\"]],\"4\":[[\"10171\",\"eliasbm\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1714\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:03:49\\\"}]\"],[\"10183\",\"juan1515\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"35\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:36:40\\\"}]\"],[\"10177\",\"diamond17\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"140\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:35:16\\\"}]\"],[\"10178\",\"luchomaster\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1723\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:35:27\\\"}]\"],[\"10209\",\"camilo1140\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"716\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:07:17\\\"}]\"],[\"10240\",\"georgemaster\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"293\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-06-05 15:14:30\\\"}]\"],[\"10166\",\"jagaby\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"21\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-14 22:53:22\\\"}]\"],[\"10221\",\"refricol\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"466\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-24 13:42:51\\\"}]\"],[\"10222\",\"cayita\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"487\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-24 13:44:36\\\"}]\"],[\"10223\",\"rimexy\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"198\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-27 19:15:30\\\"}]\"],[\"10217\",\"juanjose\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"766\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-21 19:07:30\\\"}]\"],[\"10199\",\"dyjingenieria\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"654\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:28:59\\\"}]\"],[\"10236\",\"brayohan1985\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"85\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-31 14:15:26\\\"}]\"]],\"5\":[[\"10172\",\"carolinayjimmy\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"12\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:08:26\\\"}]\"],[\"10184\",\"nelson_mejia1\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1689\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:06\\\"}]\"],[\"10186\",\"tico1977\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1713\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:25\\\"}]\"],[\"10188\",\"yulimarolivera0408\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"31\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:39:45\\\"}]\"],[\"10181\",\"familiasl\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"38\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:36:09\\\"}]\"],[\"10191\",\"fdam.master\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"335\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:41\\\"}]\"],[\"10239\",\"dpanche2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"93\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-06-05 14:05:09\\\"}]\"],[\"10180\",\"luzirene\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"117\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:35:59\\\"}]\"],[\"10241\",\"margaritamora\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"294\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-06-05 15:14:37\\\"}]\"],[\"10242\",\"stellar1\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"44\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-06-05 17:21:56\\\"}]\"],[\"10233\",\"jamessofia10\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"504\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 19:06:24\\\"}]\"],[\"10228\",\"peter9301\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"958\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-28 21:13:03\\\"}]\"],[\"10226\",\"joca2689\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"400\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-28 20:33:46\\\"}]\"],[\"10200\",\"luisfercast\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"129\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:22\\\"}]\"],[\"10201\",\"jufesera\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"152\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:37\\\"}]\"],[\"10202\",\"andreyamaya1927\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"626\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:46\\\"}]\"],[\"10203\",\"housedream\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"315\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:30:40\\\"}]\"],[\"10204\",\"adriana\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"815\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:30:49\\\"}]\"],[\"10218\",\"lote1mz38\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"709\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-21 19:08:57\\\"}]\"]],\"6\":[[\"10175\",\"yosoy\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"74\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:27\\\"}]\"],[\"10196\",\"atlanrot\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"48\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 13:56:55\\\"}]\"],[\"10198\",\"kano\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"583\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 14:00:16\\\"}]\"],[\"10210\",\"cupercuevas83\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"108\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:07:44\\\"}]\"],[\"10225\",\"yolanda2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"386\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-28 20:31:32\\\"}]\"],[\"10195\",\"macdfd01\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"292\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:21\\\"}]\"],[\"10220\",\"rmartinez2459\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"316\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-23 21:08:04\\\"}]\"],[\"10212\",\"nancy.roa\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1704\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 21:18:20\\\"}]\"],[\"10182\",\"carly\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"111\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:36:37\\\"}]\"],[\"10185\",\"hernuesga\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"107\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:12\\\"}]\"],[\"10237\",\"mastermind\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1707\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-06-04 14:10:09\\\"}]\"],[\"10234\",\"casasfredy\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"455\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 20:56:41\\\"}]\"],[\"10235\",\"germanchacon\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"428\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 20:58:41\\\"}]\"],[\"10205\",\"excellentpower\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"141\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:33:13\\\"}]\"],[\"10214\",\"jesuscardona\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"301\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-17 20:17:49\\\"}]\"]],\"7\":[[\"10176\",\"emjv2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"312\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:40\\\"}]\"],[\"10194\",\"dserrano\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"36\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:13\\\"}]\"],[\"10207\",\"inari\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"676\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:34:13\\\"}]\"],[\"10229\",\"sharom2204\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"550\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 14:49:00\\\"}]\"],[\"10231\",\"santiago2026\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1703\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 21:16:40\\\"}]\"],[\"10224\",\"m21-01\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"372\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-27 21:58:51\\\"}]\"],[\"10211\",\"wtpropiedad1\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"7\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:08:34\\\"}]\"],[\"10187\",\"goldteam\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"77\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:39:29\\\"}]\"],[\"10227\",\"gabi1976\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1705\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-28 21:11:53\\\"}]\"],[\"10206\",\"heyeve\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"142\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:33:27\\\"}]\"]]}', 0, '2019-04-26 22:12:08', '2019-04-27 00:00:00', 28, '2019-04-27 02:48:00', '2019-06-05 13:59:46');
INSERT INTO `dbpcn_members` VALUES (10272, 10149, 'pasal', 'pasal@palacio.com.co', 'jaW10217ogs10148LJy', 10148, 0, NULL, 1, 'ana', 'rocio', 'salazar', 'gamboa', '1962-02-10', 1, '32659169', '1981-01-15', 'Barranquilla', '3853370', 'CALLE 84 # 42 C 341', 'Barranquilla', 47, '900.974.625-7', 'BIENES PAS SAS', '3853370', 'Calle 84 # 42c 341', 'BARRANQUILLA', 47, '2019-05-10 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"72\",\"first_payment\":2255000,\"purchase\":\"2019-05-10 17:22:49\"}]', 1, '', '[{\"id\":10163,\"username\":\"jjpalacio26\"}]', 1, '', NULL, 0, '2019-05-10 00:00:00', '2019-05-10 00:00:00', 501, '2019-05-10 17:22:49', '2019-05-13 21:38:17');
INSERT INTO `dbpcn_members` VALUES (10274, 10151, 'luhercar', 'workwithflavio@gmail.com', 'Zd410151wVn10148GCh', 10148, 0, NULL, 2, 'flavio', 'andres', 'hernandez', 'ramirez', '1991-04-07', 1, '1140839578', '2009-04-17', 'Barranquilla', '3016744135', 'Calle 67 no 44 93', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-13 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"91\",\"first_payment\":2255000,\"purchase\":\"2019-05-13 20:01:48\"}]', 2, '', '[{\"id\":10169,\"username\":\"adelito62\"},{\"id\":10179,\"username\":\"darioquijano\"}]', 2, '{\"2\":[{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}],\"3\":[{\"cantidad\":5,\"first_payment\":2255000,\"project\":1}],\"4\":[{\"cantidad\":7,\"first_payment\":2255000,\"project\":1}],\"5\":[{\"cantidad\":10,\"first_payment\":2255000,\"project\":1}],\"6\":[{\"cantidad\":9,\"first_payment\":2255000,\"project\":1}],\"7\":[{\"cantidad\":5,\"first_payment\":2255000,\"project\":1}]}', '{\"2\":[[\"10170\",\"farcoin93\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"37\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:03:16\\\"}]\"],[\"10173\",\"trillonario\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"308\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:32:28\\\"}]\"]],\"3\":[[\"10171\",\"eliasbm\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1714\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:03:49\\\"}]\"],[\"10183\",\"juan1515\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"35\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:36:40\\\"}]\"],[\"10177\",\"diamond17\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"140\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:35:16\\\"}]\"],[\"10178\",\"luchomaster\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1723\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:35:27\\\"}]\"],[\"10209\",\"camilo1140\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"716\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:07:17\\\"}]\"]],\"4\":[[\"10172\",\"carolinayjimmy\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"12\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:08:26\\\"}]\"],[\"10184\",\"nelson_mejia1\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1689\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:06\\\"}]\"],[\"10186\",\"tico1977\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1713\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:25\\\"}]\"],[\"10188\",\"yulimarolivera0408\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"31\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:39:45\\\"}]\"],[\"10181\",\"familiasl\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"38\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:36:09\\\"}]\"],[\"10191\",\"fdam.master\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"335\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:41\\\"}]\"],[\"10180\",\"luzirene\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"117\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:35:59\\\"}]\"]],\"5\":[[\"10175\",\"yosoy\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"74\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:27\\\"}]\"],[\"10196\",\"atlanrot\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"48\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 13:56:55\\\"}]\"],[\"10198\",\"kano\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"583\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 14:00:16\\\"}]\"],[\"10210\",\"cupercuevas83\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"108\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:07:44\\\"}]\"],[\"10225\",\"yolanda2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"386\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-28 20:31:32\\\"}]\"],[\"10195\",\"macdfd01\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"292\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:21\\\"}]\"],[\"10220\",\"rmartinez2459\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"316\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-23 21:08:04\\\"}]\"],[\"10212\",\"nancy.roa\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1704\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 21:18:20\\\"}]\"],[\"10182\",\"carly\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"111\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:36:37\\\"}]\"],[\"10185\",\"hernuesga\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"107\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:12\\\"}]\"]],\"6\":[[\"10176\",\"emjv2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"312\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:40\\\"}]\"],[\"10194\",\"dserrano\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"36\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:13\\\"}]\"],[\"10207\",\"inari\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"676\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:34:13\\\"}]\"],[\"10229\",\"sharom2204\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"550\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 14:49:00\\\"}]\"],[\"10231\",\"santiago2026\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1703\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 21:16:40\\\"}]\"],[\"10224\",\"m21-01\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"372\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-27 21:58:51\\\"}]\"],[\"10211\",\"wtpropiedad1\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"7\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:08:34\\\"}]\"],[\"10187\",\"goldteam\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"77\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:39:29\\\"}]\"],[\"10227\",\"gabi1976\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1705\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-28 21:11:53\\\"}]\"]],\"7\":[[\"10189\",\"reymidas07\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"467\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:10\\\"}]\"],[\"10193\",\"iferrer2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"75\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:05\\\"}]\"],[\"10230\",\"fernandolondonoruiz1969\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1569\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 15:35:06\\\"}]\"],[\"10213\",\"billions\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"39\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-17 14:13:58\\\"}]\"],[\"10232\",\"fannyguz\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"153\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 14:28:49\\\"}]\"]]}', 0, '2019-05-15 11:43:08', '2019-05-13 00:00:00', 435, '2019-05-13 20:01:48', '2019-05-30 15:06:35');
INSERT INTO `dbpcn_members` VALUES (10275, 10161, 'cabapella', 'gin.felipecaballero@gmail.com', '8MP10150TBu101481Nv', 10148, 0, NULL, 2, 'eduardo', 'felipe', 'caballero', 'danna', '1980-10-01', 1, '72311661', '1998-11-13', 'Puerto Colombia', '3182062783', 'CRA 64C#84-260', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-13 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"89\",\"first_payment\":2255000,\"purchase\":\"2019-05-13 20:58:39\"}]', 1, '', '[{\"id\":10174,\"username\":\"masterdreamers\"}]', 1, '', NULL, 0, '2019-05-13 00:00:00', '2019-05-13 00:00:00', 434, '2019-05-13 20:58:39', '2019-05-15 00:34:09');
INSERT INTO `dbpcn_members` VALUES (10276, 10162, 'bitboss', 'tellezhugojustiniano@gmail.com', '7VA10149UgS10148mao', 10148, 0, NULL, 2, 'hugo', '', 'tellez', 'justiniano', '1987-04-07', 2, '846910', '2018-10-08', 'Barranquilla', '3006155867', 'Cra42h #87-181', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-13 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"90\",\"first_payment\":2255000,\"purchase\":\"2019-05-13 21:20:59\"}]', 2, '', '[{\"id\":10164,\"username\":\"globalvision\"},{\"id\":10167,\"username\":\"wolf_ecu\"}]', 2, '{\"2\":[{\"cantidad\":6,\"first_payment\":2255000,\"project\":1}],\"3\":[{\"cantidad\":7,\"first_payment\":2255000,\"project\":1}],\"4\":[{\"cantidad\":9,\"first_payment\":2255000,\"project\":1}],\"5\":[{\"cantidad\":4,\"first_payment\":2255000,\"project\":1}],\"6\":[{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}],\"7\":[]}', '{\"2\":[[\"10165\",\"yesidf\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"478\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-14 20:06:33\\\"}]\"],[\"10208\",\"visionary\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"488\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 17:34:03\\\"}]\"],[\"10215\",\"sergioparra\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"790\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-20 14:47:32\\\"}]\"],[\"10216\",\"byronochoa\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"83\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-20 14:50:42\\\"}]\"],[\"10168\",\"paulhstevens\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"94\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:01:54\\\"}]\"],[\"10197\",\"alexluisv\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"76\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 13:59:09\\\"}]\"]],\"3\":[[\"10166\",\"jagaby\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"21\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-14 22:53:22\\\"}]\"],[\"10221\",\"refricol\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"466\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-24 13:42:51\\\"}]\"],[\"10222\",\"cayita\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"487\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-24 13:44:36\\\"}]\"],[\"10223\",\"rimexy\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"198\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-27 19:15:30\\\"}]\"],[\"10217\",\"juanjose\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"766\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-21 19:07:30\\\"}]\"],[\"10199\",\"dyjingenieria\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"654\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:28:59\\\"}]\"],[\"10236\",\"brayohan1985\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"85\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-31 14:15:26\\\"}]\"]],\"4\":[[\"10233\",\"jamessofia10\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"504\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 19:06:24\\\"}]\"],[\"10228\",\"peter9301\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"958\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-28 21:13:03\\\"}]\"],[\"10226\",\"joca2689\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"400\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-28 20:33:46\\\"}]\"],[\"10200\",\"luisfercast\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"129\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:22\\\"}]\"],[\"10201\",\"jufesera\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"152\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:37\\\"}]\"],[\"10202\",\"andreyamaya1927\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"626\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:46\\\"}]\"],[\"10203\",\"housedream\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"315\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:30:40\\\"}]\"],[\"10204\",\"adriana\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"815\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:30:49\\\"}]\"],[\"10218\",\"lote1mz38\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"709\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-21 19:08:57\\\"}]\"]],\"5\":[[\"10234\",\"casasfredy\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"455\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 20:56:41\\\"}]\"],[\"10235\",\"germanchacon\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"428\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 20:58:41\\\"}]\"],[\"10205\",\"excellentpower\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"141\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:33:13\\\"}]\"],[\"10214\",\"jesuscardona\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"301\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-17 20:17:49\\\"}]\"]],\"6\":[[\"10206\",\"heyeve\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"142\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:33:27\\\"}]\"]],\"7\":[]}', 0, '2019-05-15 10:38:36', '2019-05-13 00:00:00', 433, '2019-05-13 21:20:59', '2019-06-05 14:06:50');
INSERT INTO `dbpcn_members` VALUES (10277, 10163, 'jjpalacio26', 'jesuspalacio26@gmail.com', 'h2s10256n1W10217wVo', 10149, 0, NULL, 2, 'jesùs', 'alberto', 'palacio', 'villamizar', '1988-12-26', 1, '1143224752', '2007-02-06', 'Barranquilla', '30129536', 'Calle 14 N. 16 - 183 La playa', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-13 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"70\",\"first_payment\":2255000,\"purchase\":\"2019-05-13 21:38:17\"}]', 1, '10163.jpg', '', 0, '', NULL, 0, '2019-05-13 00:00:00', '2019-05-13 00:00:00', 540, '2019-05-13 21:38:17', '2019-05-14 20:02:35');
INSERT INTO `dbpcn_members` VALUES (10278, 10164, 'globalvision', 'rdavilaf@gmail.com', 'i6T10153cCw10149bNX', 10162, 0, NULL, 2, 'ricardo', 'andres', 'davila', 'fuentes', '1982-11-22', 1, '80096808', '2000-11-24', 'Bogota', '3041040907', 'Calle 66 # 50 50', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-14 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"109\",\"first_payment\":2255000,\"purchase\":\"2019-05-14 19:05:20\"}]', 3, '10164.jpeg', '[{\"id\":10165,\"username\":\"yesidf\"},{\"id\":10208,\"username\":\"visionary\"},{\"id\":10215,\"username\":\"sergioparra\"},{\"id\":10216,\"username\":\"byronochoa\"}]', 4, '{\"2\":[{\"cantidad\":7,\"first_payment\":2255000,\"project\":1}],\"3\":[{\"cantidad\":3,\"first_payment\":2255000,\"project\":1}],\"4\":[{\"cantidad\":3,\"first_payment\":2255000,\"project\":1}],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[[\"10166\",\"jagaby\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"21\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-14 22:53:22\\\"}]\"],[\"10221\",\"refricol\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"466\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-24 13:42:51\\\"}]\"],[\"10222\",\"cayita\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"487\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-24 13:44:36\\\"}]\"],[\"10223\",\"rimexy\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"198\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-27 19:15:30\\\"}]\"],[\"10246\",\"dkb.musical26\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"680\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-06-10 16:15:24\\\"}]\"],[\"10217\",\"juanjose\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"766\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-21 19:07:30\\\"}]\"],[\"10247\",\"jhonjaironino\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1711\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-06-10 16:18:43\\\"}]\"]],\"3\":[[\"10233\",\"jamessofia10\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"504\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 19:06:24\\\"}]\"],[\"10228\",\"peter9301\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"958\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-28 21:13:03\\\"}]\"],[\"10226\",\"joca2689\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"400\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-28 20:33:46\\\"}]\"]],\"4\":[[\"10234\",\"casasfredy\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"455\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 20:56:41\\\"}]\"],[\"10235\",\"germanchacon\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"428\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 20:58:41\\\"}]\"],[\"10243\",\"joelariza\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"427\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-06-07 19:53:31\\\"}]\"]],\"5\":[],\"6\":[],\"7\":[]}', 0, '2019-06-10 11:27:29', '2019-05-14 00:00:00', 437, '2019-05-14 19:05:20', '2019-06-10 11:27:49');
INSERT INTO `dbpcn_members` VALUES (10279, 10165, 'yesidf', 'yesidfernandezr@gmail.com', 'GXC10237zAd10153vDu', 10164, 0, NULL, 2, 'yesid', 'alexander', 'fernandez', 'rodriguez', '1983-04-05', 1, '72279155', '2001-04-10', 'Barranquilla', '3014837699', 'Calle 45 No. 18-46', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-14 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"478\",\"first_payment\":2255000,\"purchase\":\"2019-05-14 20:06:33\"}]', 1, '', '[{\"id\":10166,\"username\":\"jagaby\"}]', 1, '', NULL, 0, '2019-05-14 00:00:00', '2019-05-14 00:00:00', 521, '2019-05-14 20:06:33', '2019-05-14 22:53:23');
INSERT INTO `dbpcn_members` VALUES (10280, 10166, 'jagaby', 'gabrila2030@gmail.com', 'NtE10274mqV10237sus', 10165, 0, NULL, 2, 'jair', 'arturo', 'cabarcas', 'jimenez', '1987-04-08', 1, '1129576268', '2005-04-28', 'Barranquilla', '3217729769', 'carrera 61 No 58-18', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-14 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"21\",\"first_payment\":2255000,\"purchase\":\"2019-05-14 22:53:22\"}]', 1, '10166.jpg', '', 0, '', NULL, 0, '2019-05-14 00:00:00', '2019-05-14 00:00:00', 558, '2019-05-14 22:53:22', '2019-05-14 20:26:54');
INSERT INTO `dbpcn_members` VALUES (10281, 10167, 'wolf_ecu', 'prosperidadglobaljs@gmail.com', 'um510152TE910149fpB', 10162, 0, NULL, 2, 'josé', 'javier', 'salazar', 'ortiz', '1981-10-21', 3, '0703179945', '2023-12-11', 'Santa Cruz', '3002628134', '79B # 42 494', 'Barranquilla', 26, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"92\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:01:01\"}]', 2, '10167.jpg', '[{\"id\":10168,\"username\":\"paulhstevens\"},{\"id\":10197,\"username\":\"alexluisv\"}]', 2, '{\"2\":[{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}],\"3\":[{\"cantidad\":6,\"first_payment\":2255000,\"project\":1}],\"4\":[{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}],\"5\":[{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}],\"6\":[],\"7\":[]}', '{\"2\":[[\"10199\",\"dyjingenieria\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"654\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:28:59\\\"}]\"],[\"10236\",\"brayohan1985\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"85\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-31 14:15:26\\\"}]\"]],\"3\":[[\"10200\",\"luisfercast\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"129\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:22\\\"}]\"],[\"10201\",\"jufesera\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"152\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:37\\\"}]\"],[\"10202\",\"andreyamaya1927\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"626\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:46\\\"}]\"],[\"10203\",\"housedream\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"315\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:30:40\\\"}]\"],[\"10204\",\"adriana\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"815\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:30:49\\\"}]\"],[\"10218\",\"lote1mz38\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"709\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-21 19:08:57\\\"}]\"]],\"4\":[[\"10205\",\"excellentpower\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"141\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:33:13\\\"}]\"],[\"10214\",\"jesuscardona\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"301\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-17 20:17:49\\\"}]\"]],\"5\":[[\"10206\",\"heyeve\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"142\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:33:27\\\"}]\"]],\"6\":[],\"7\":[]}', 0, '2019-05-15 10:10:59', '2019-05-15 00:00:00', 436, '2019-05-15 00:01:01', '2019-05-31 10:10:01');
INSERT INTO `dbpcn_members` VALUES (10282, 10168, 'paulhstevens', 'paulhstevens@gmail.com', 'OXE10158Gqw10152lb5', 10167, 0, NULL, 2, 'paul', 'henry', 'stevens', 'arce', '1947-01-21', 3, '565788783', '2028-03-29', 'Florida', '7862109443', '1805 Ponce de Leon Blvd., Suite 1200', 'miami', 224, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"94\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:01:54\"}]', 2, '', '[{\"id\":10199,\"username\":\"dyjingenieria\"},{\"id\":10236,\"username\":\"brayohan1985\"}]', 2, '{\"2\":[{\"cantidad\":6,\"first_payment\":2255000,\"project\":1}],\"3\":[{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}],\"4\":[{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[[\"10200\",\"luisfercast\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"129\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:22\\\"}]\"],[\"10201\",\"jufesera\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"152\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:37\\\"}]\"],[\"10202\",\"andreyamaya1927\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"626\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:29:46\\\"}]\"],[\"10203\",\"housedream\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"315\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:30:40\\\"}]\"],[\"10204\",\"adriana\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"815\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:30:49\\\"}]\"],[\"10218\",\"lote1mz38\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"709\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-21 19:08:57\\\"}]\"]],\"3\":[[\"10205\",\"excellentpower\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"141\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:33:13\\\"}]\"],[\"10214\",\"jesuscardona\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"301\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-17 20:17:49\\\"}]\"]],\"4\":[[\"10206\",\"heyeve\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"142\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:33:27\\\"}]\"]],\"5\":[],\"6\":[],\"7\":[]}', 0, '2019-05-31 09:46:39', '2019-05-15 00:00:00', 442, '2019-05-15 00:01:54', '2019-05-31 13:42:31');
INSERT INTO `dbpcn_members` VALUES (10283, 10169, 'adelito62', 'adelito62@hotmail.com', 'lyz101598cj10156s3Y', 10151, 0, NULL, 2, 'adel', 'de jesus', 'solano', 'mendoza', '1962-06-17', 1, '17952146', '1982-09-21', 'Fonseca', '3114018470', 'Calle 15 #13-05', 'Fonseca', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"1697\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:02:23\"}]', 2, '', '[{\"id\":10170,\"username\":\"farcoin93\"},{\"id\":10173,\"username\":\"trillonario\"}]', 2, '{\"2\":[{\"cantidad\":5,\"first_payment\":2255000,\"project\":1}],\"3\":[{\"cantidad\":7,\"first_payment\":2255000,\"project\":1}],\"4\":[{\"cantidad\":10,\"first_payment\":2255000,\"project\":1}],\"5\":[{\"cantidad\":9,\"first_payment\":2255000,\"project\":1}],\"6\":[{\"cantidad\":5,\"first_payment\":2255000,\"project\":1}],\"7\":[{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}]}', '{\"2\":[[\"10171\",\"eliasbm\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1714\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:03:49\\\"}]\"],[\"10183\",\"juan1515\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"35\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:36:40\\\"}]\"],[\"10177\",\"diamond17\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"140\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:35:16\\\"}]\"],[\"10178\",\"luchomaster\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1723\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:35:27\\\"}]\"],[\"10209\",\"camilo1140\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"716\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:07:17\\\"}]\"]],\"3\":[[\"10172\",\"carolinayjimmy\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"12\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:08:26\\\"}]\"],[\"10184\",\"nelson_mejia1\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1689\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:06\\\"}]\"],[\"10186\",\"tico1977\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1713\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:25\\\"}]\"],[\"10188\",\"yulimarolivera0408\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"31\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:39:45\\\"}]\"],[\"10181\",\"familiasl\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"38\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:36:09\\\"}]\"],[\"10191\",\"fdam.master\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"335\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:41\\\"}]\"],[\"10180\",\"luzirene\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"117\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:35:59\\\"}]\"]],\"4\":[[\"10175\",\"yosoy\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"74\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:27\\\"}]\"],[\"10196\",\"atlanrot\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"48\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 13:56:55\\\"}]\"],[\"10198\",\"kano\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"583\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 14:00:16\\\"}]\"],[\"10210\",\"cupercuevas83\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"108\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:07:44\\\"}]\"],[\"10225\",\"yolanda2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"386\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-28 20:31:32\\\"}]\"],[\"10195\",\"macdfd01\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"292\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:21\\\"}]\"],[\"10220\",\"rmartinez2459\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"316\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-23 21:08:04\\\"}]\"],[\"10212\",\"nancy.roa\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1704\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 21:18:20\\\"}]\"],[\"10182\",\"carly\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"111\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:36:37\\\"}]\"],[\"10185\",\"hernuesga\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"107\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:12\\\"}]\"]],\"5\":[[\"10176\",\"emjv2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"312\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:40\\\"}]\"],[\"10194\",\"dserrano\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"36\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:13\\\"}]\"],[\"10207\",\"inari\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"676\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:34:13\\\"}]\"],[\"10229\",\"sharom2204\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"550\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 14:49:00\\\"}]\"],[\"10231\",\"santiago2026\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1703\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 21:16:40\\\"}]\"],[\"10224\",\"m21-01\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"372\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-27 21:58:51\\\"}]\"],[\"10211\",\"wtpropiedad1\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"7\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:08:34\\\"}]\"],[\"10187\",\"goldteam\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"77\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:39:29\\\"}]\"],[\"10227\",\"gabi1976\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1705\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-28 21:11:53\\\"}]\"]],\"6\":[[\"10189\",\"reymidas07\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"467\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:10\\\"}]\"],[\"10193\",\"iferrer2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"75\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:05\\\"}]\"],[\"10230\",\"fernandolondonoruiz1969\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1569\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 15:35:06\\\"}]\"],[\"10213\",\"billions\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"39\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-17 14:13:58\\\"}]\"],[\"10232\",\"fannyguz\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"153\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 14:28:49\\\"}]\"]],\"7\":[[\"10190\",\"reinamidas\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"479\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:30\\\"}]\"],[\"10192\",\"lnlb2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"598\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:56\\\"}]\"]]}', 0, '2019-05-14 20:16:21', '2019-05-15 00:00:00', 443, '2019-05-15 00:02:23', '2019-06-01 14:34:44');
INSERT INTO `dbpcn_members` VALUES (10284, 10170, 'farcoin93', 'farly1993@hotmail.com', 'EJO10165LnZ10159Qne', 10169, 0, NULL, 2, 'farly', 'david', 'solano', 'rodriguez', '1993-02-01', 1, '1098733264', '2011-02-04', 'Bucaramanga', '3014357238', 'Cra 42f #84b-55', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"37\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:03:16\"}]', 2, '10170.jpg', '[{\"id\":10171,\"username\":\"eliasbm\"},{\"id\":10183,\"username\":\"juan1515\"},{\"id\":10249,\"username\":\"peralta7\"}]', 3, '{\"2\":[{\"cantidad\":4,\"first_payment\":2255000,\"project\":1}],\"3\":[{\"cantidad\":4,\"first_payment\":2255000,\"project\":1}],\"4\":[{\"cantidad\":3,\"first_payment\":2255000,\"project\":1}],\"5\":[{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}],\"6\":[{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}],\"7\":[]}', '{\"2\":[[\"10172\",\"carolinayjimmy\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"12\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:08:26\\\"}]\"],[\"10184\",\"nelson_mejia1\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1689\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:06\\\"}]\"],[\"10186\",\"tico1977\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1713\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:37:25\\\"}]\"],[\"10188\",\"yulimarolivera0408\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"31\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:39:45\\\"}]\"]],\"3\":[[\"10175\",\"yosoy\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"74\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:27\\\"}]\"],[\"10196\",\"atlanrot\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"48\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 13:56:55\\\"}]\"],[\"10198\",\"kano\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"583\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 14:00:16\\\"}]\"],[\"10210\",\"cupercuevas83\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"108\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:07:44\\\"}]\"]],\"4\":[[\"10176\",\"emjv2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"312\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:40\\\"}]\"],[\"10194\",\"dserrano\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"36\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:13\\\"}]\"],[\"10207\",\"inari\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"676\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:34:13\\\"}]\"]],\"5\":[[\"10189\",\"reymidas07\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"467\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:10\\\"}]\"],[\"10193\",\"iferrer2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"75\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:05\\\"}]\"]],\"6\":[[\"10190\",\"reinamidas\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"479\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:30\\\"}]\"],[\"10192\",\"lnlb2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"598\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:56\\\"}]\"]],\"7\":[]}', 0, '2019-05-14 20:18:46', '2019-05-15 00:00:00', 449, '2019-05-15 00:03:16', '2019-06-10 16:46:52');
INSERT INTO `dbpcn_members` VALUES (10285, 10171, 'eliasbm', 'eliasbernier@gmail.com', 'LTv101674II10165pwK', 10170, 0, NULL, 2, 'elias', 'alberto', 'bernier', 'manjarres', '1977-12-01', 1, '7143178', '1996-07-24', 'santa marta', '3164807798', 'Cra 26 #3a-272 apto 203 torre 1', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, 47, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"1714\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:03:49\"}]', 2, '10171.jpg', '[{\"id\":10172,\"username\":\"carolinayjimmy\"},{\"id\":10184,\"username\":\"nelson_mejia1\"},{\"id\":10186,\"username\":\"tico1977\"}]', 3, '{\"2\":[{\"cantidad\":6,\"first_payment\":2255000,\"project\":1}],\"3\":[{\"cantidad\":5,\"first_payment\":2255000,\"project\":1}],\"4\":[{\"cantidad\":3,\"first_payment\":2255000,\"project\":1}],\"5\":[{\"cantidad\":3,\"first_payment\":2255000,\"project\":1}],\"6\":[],\"7\":[]}', '{\"2\":[[\"10175\",\"yosoy\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"74\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:27\\\"}]\"],[\"10196\",\"atlanrot\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"48\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 13:56:55\\\"}]\"],[\"10198\",\"kano\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"583\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 14:00:16\\\"}]\"],[\"10210\",\"cupercuevas83\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"108\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:07:44\\\"}]\"],[\"10225\",\"yolanda2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"386\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-28 20:31:32\\\"}]\"],[\"10245\",\"inmobiliariayconstructorazosas\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"825\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-06-10 16:14:41\\\"}]\"]],\"3\":[[\"10176\",\"emjv2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"312\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:40\\\"}]\"],[\"10194\",\"dserrano\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"36\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:13\\\"}]\"],[\"10207\",\"inari\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"676\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:34:13\\\"}]\"],[\"10229\",\"sharom2204\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"550\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 14:49:00\\\"}]\"],[\"10231\",\"santiago2026\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1703\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 21:16:40\\\"}]\"]],\"4\":[[\"10189\",\"reymidas07\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"467\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:10\\\"}]\"],[\"10193\",\"iferrer2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"75\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:05\\\"}]\"],[\"10230\",\"fernandolondonoruiz1969\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1569\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 15:35:06\\\"}]\"]],\"5\":[[\"10190\",\"reinamidas\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"479\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:30\\\"}]\"],[\"10192\",\"lnlb2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"598\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:56\\\"}]\"],[\"10238\",\"marbit2017\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"696\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-06-04 14:10:16\\\"}]\"]],\"6\":[],\"7\":[]}', 0, '2019-05-14 19:40:18', '2019-05-15 00:00:00', 451, '2019-05-15 00:03:49', '2019-06-10 11:53:26');
INSERT INTO `dbpcn_members` VALUES (10286, 10172, 'carolinayjimmy', 'proyectofincaraizcolombia@gmail.com', 'iTc10181wMB10167Lcf', 10171, 0, NULL, 2, 'maría', 'carolina', 'ascanio', 'botello', '1978-10-03', 1, '37720345', '1996-11-26', 'Bucaramanga', '3053361438', 'Calle 5 # 9-60 Barrio San Rafael', 'Piedecuesta', 47, NULL, NULL, NULL, NULL, NULL, 47, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"12\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:08:26\"}]', 3, '10172.jpg', '[{\"id\":10175,\"username\":\"yosoy\"},{\"id\":10196,\"username\":\"atlanrot\"},{\"id\":10198,\"username\":\"kano\"},{\"id\":10210,\"username\":\"cupercuevas83\"},{\"id\":10225,\"username\":\"yolanda2019\"},{\"id\":10245,\"username\":\"inmobiliariayconstructorazosas\"}]', 6, '{\"2\":[{\"cantidad\":5,\"first_payment\":2255000,\"project\":1}],\"3\":[{\"cantidad\":3,\"first_payment\":2255000,\"project\":1}],\"4\":[{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[[\"10176\",\"emjv2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"312\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:34:40\\\"}]\"],[\"10194\",\"dserrano\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"36\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:13\\\"}]\"],[\"10207\",\"inari\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"676\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:34:13\\\"}]\"],[\"10229\",\"sharom2204\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"550\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 14:49:00\\\"}]\"],[\"10231\",\"santiago2026\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1703\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 21:16:40\\\"}]\"]],\"3\":[[\"10189\",\"reymidas07\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"467\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:10\\\"}]\"],[\"10193\",\"iferrer2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"75\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:05\\\"}]\"],[\"10230\",\"fernandolondonoruiz1969\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1569\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-29 15:35:06\\\"}]\"]],\"4\":[[\"10190\",\"reinamidas\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"479\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:30\\\"}]\"],[\"10192\",\"lnlb2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"598\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:56\\\"}]\"]],\"5\":[],\"6\":[],\"7\":[]}', 0, '2019-05-29 19:07:01', '2019-05-15 00:00:00', 465, '2019-05-15 00:08:26', '2019-06-10 16:14:41');
INSERT INTO `dbpcn_members` VALUES (10287, 10173, 'trillonario', 'ing.andres.arciniegas@gmail.com', 'Q1410156UZ910151qBg', 10169, 0, NULL, 2, 'andres', 'augusto', 'arciniegas', 'caicedo', '1990-05-10', 1, '1098686753', '2008-05-16', 'BUCARAMANGA', '3172935861', 'AVENIDA 88# 20-99 BARRIO DIAMANTE 2', 'BUCARAMANGA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"308\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:32:28\"}]', 3, '', '[{\"id\":10177,\"username\":\"diamond17\"},{\"id\":10178,\"username\":\"luchomaster\"},{\"id\":10209,\"username\":\"camilo1140\"},{\"id\":10240,\"username\":\"georgemaster\"}]', 4, '', NULL, 0, '2019-06-05 17:25:54', '2019-05-15 00:00:00', 440, '2019-05-15 00:32:28', '2019-06-05 17:25:54');
INSERT INTO `dbpcn_members` VALUES (10288, 10174, 'masterdreamers', 'salcedoriverainversiones@gmail.com', 'zqv81uay10161vBL', 10161, 0, NULL, 1, 'david', 'guillermo', 'salcedo', 'morante', '1979-03-17', 1, '72310937', '1997-05-22', 'puerto colombia', '3158991958', 'calle 2 no 100c-121', 'puerto colombia', 47, '901037463-5', 'inversiones', '3158991958', 'calle 2 no 10c-121', 'Barranquilla', 47, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"81\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:34:09\"}]', 1, '', '[{\"id\":10219,\"username\":\"dreamerazul\"}]', 1, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 589, '2019-05-15 00:34:09', '2019-05-21 21:47:04');
INSERT INTO `dbpcn_members` VALUES (10289, 10175, 'yosoy', 'denilceserranoflorez@gmail.com', '6SS102053KN10181ERS', 10172, 0, NULL, 2, 'denilce', 'maria', 'florez', 'cardona', '1960-12-23', 1, '37922940', '1979-05-03', 'barrancabermeja', '3013124870', 'cra 33 47 28', 'barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"74\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:34:27\"}]', 2, '', '[{\"id\":10176,\"username\":\"emjv2019\"},{\"id\":10194,\"username\":\"dserrano\"}]', 2, '{\"2\":[{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}],\"3\":[{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[[\"10189\",\"reymidas07\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"467\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:10\\\"}]\"],[\"10193\",\"iferrer2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"75\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:05\\\"}]\"]],\"3\":[[\"10190\",\"reinamidas\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"479\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:30\\\"}]\"],[\"10192\",\"lnlb2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"598\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:56\\\"}]\"]],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 0, '2019-05-14 21:04:47', '2019-05-15 00:00:00', 489, '2019-05-15 00:34:27', '2019-06-01 09:34:13');
INSERT INTO `dbpcn_members` VALUES (10290, 10176, 'emjv2019', 'edwinjaraba@gmail.com', 'zHD10221idU10205v8X', 10175, 0, NULL, 2, 'edwin', 'moises', 'jaraba', 'visbal', '1969-12-27', 1, '8770112', '1988-05-30', 'Soledad', '3013891476', 'Calle 21 # 26-124 Cabrera', 'Soledad', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"312\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:34:40\"}]', 2, '', '[{\"id\":10189,\"username\":\"reymidas07\"},{\"id\":10193,\"username\":\"iferrer2019\"}]', 2, '{\"2\":[{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[[\"10190\",\"reinamidas\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"479\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:30\\\"}]\"],[\"10192\",\"lnlb2019\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"598\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:40:56\\\"}]\"]],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 0, '2019-05-15 06:23:31', '2019-05-15 00:00:00', 505, '2019-05-15 00:34:40', '2019-05-29 07:10:42');
INSERT INTO `dbpcn_members` VALUES (10291, 10177, 'diamond17', 'dianamleyvav@gmail.com', 'W1q10168erc10156Vv9', 10173, 0, NULL, 2, 'diana', 'marcela', 'leyva', 'vargas', '1988-11-12', 1, '1014197352', '2007-01-24', 'Bogota', '3022872300', 'calle 128a # 54b - 56', 'Bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"140\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:35:16\"}]', 2, '10177.jpeg', '[{\"id\":10181,\"username\":\"familiasl\"},{\"id\":10191,\"username\":\"fdam.master\"},{\"id\":10239,\"username\":\"dpanche2019\"},{\"id\":10244,\"username\":\"eriyharold\"}]', 4, '{\"2\":[{\"cantidad\":3,\"first_payment\":2255000,\"project\":1}],\"3\":[{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[[\"10195\",\"macdfd01\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"292\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:41:21\\\"}]\"],[\"10220\",\"rmartinez2459\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"316\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-23 21:08:04\\\"}]\"],[\"10212\",\"nancy.roa\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1704\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 21:18:20\\\"}]\"]],\"3\":[[\"10224\",\"m21-01\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"372\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-27 21:58:51\\\"}]\"]],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 0, '2019-05-14 22:44:05', '2019-05-15 00:00:00', 452, '2019-05-15 00:35:16', '2019-06-10 16:13:04');
INSERT INTO `dbpcn_members` VALUES (10292, 10178, 'luchomaster', '89laalfonso@gmail.com', 'p4j10169vDN101562Vj', 10173, 0, NULL, 2, 'luis', 'alberto', 'alfonso', 'orozco', '1989-06-24', 1, '1016018524', '2007-06-27', 'bogota', '3106194527', 'diagonal 13 no 60-125 torre 3 apto 1105 conjunto residencial Oasis de mardel', 'Bucaramanga', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"1723\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:35:27\"}]', 1, '', '[{\"id\":10180,\"username\":\"luzirene\"}]', 1, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 453, '2019-05-15 00:35:27', '2019-05-15 00:35:59');
INSERT INTO `dbpcn_members` VALUES (10293, 10179, 'darioquijano', 'dario_quijano@me.com', '1x1101706zc10151wOs', 10151, 0, NULL, 2, 'darío', 'alfonso', 'quijano', 'palacio', '1985-11-20', 1, '72357240', '2003-11-26', 'Barranquilla', '3003184366', 'Carrera 51 # 76 - 76', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"46\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:35:42\"}]', 1, '10179.jpeg', '', 0, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 454, '2019-05-15 00:35:42', '2019-05-14 22:37:09');
INSERT INTO `dbpcn_members` VALUES (10294, 10180, 'luzirene', 'fibrasysuministros@hotmail.com', 'QIy10172F9M101694iy', 10178, 0, NULL, 2, 'luz', 'irene', 'orozco', 'garcia', '1966-11-26', 1, '39748815', '1985-12-06', 'fontibon', '3208205669', 'calle 21 No 87b-36 torre 5 apartamento 504 parque de los hayuelos', 'bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"117\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:35:59\"}]', 2, '', '[{\"id\":10182,\"username\":\"carly\"},{\"id\":10185,\"username\":\"hernuesga\"},{\"id\":10237,\"username\":\"mastermind\"}]', 3, '{\"2\":[{\"cantidad\":3,\"first_payment\":2255000,\"project\":1}],\"3\":[{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[[\"10211\",\"wtpropiedad1\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"7\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-16 16:08:34\\\"}]\"],[\"10187\",\"goldteam\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"77\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 00:39:29\\\"}]\"],[\"10227\",\"gabi1976\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"1705\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-28 21:11:53\\\"}]\"]],\"3\":[[\"10213\",\"billions\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"39\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-17 14:13:58\\\"}]\"],[\"10232\",\"fannyguz\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"153\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 14:28:49\\\"}]\"]],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 0, '2019-05-15 00:18:00', '2019-05-15 00:00:00', 456, '2019-05-15 00:35:59', '2019-06-04 14:10:09');
INSERT INTO `dbpcn_members` VALUES (10295, 10181, 'familiasl', 'jonnathansepulveda9218@gmail.com', 'ck310174SIZ10168hU8', 10177, 0, NULL, 2, 'maria', 'fernanda', 'leyva', 'vargas', '1994-09-18', 1, '1015448722', '2012-09-19', 'Bogota', '3107818032', 'carrera 56b # 65-63', 'bogota', 47, NULL, NULL, NULL, NULL, NULL, 47, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"38\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:36:09\"}]', 2, '10181.jpg', '[{\"id\":10195,\"username\":\"macdfd01\"},{\"id\":10220,\"username\":\"rmartinez2459\"}]', 2, '{\"2\":[{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[[\"10224\",\"m21-01\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"372\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-27 21:58:51\\\"}]\"]],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 0, '2019-05-23 16:28:37', '2019-05-15 00:00:00', 458, '2019-05-15 00:36:09', '2019-05-29 21:48:32');
INSERT INTO `dbpcn_members` VALUES (10296, 10182, 'carly', 'carolina.ejecutiva@gmail.com', 'xP8101752zV10172ZQC', 10180, 0, NULL, 2, 'carolina', 'del pilar', 'ulloa', 'castillo', '1981-05-24', 1, '52831777', '1999-06-02', 'Bogotá', '3203495338', 'Carrera 13a #30-61 Sur Interior 1 A. pto 312', 'Bogotá', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"111\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:36:37\"}]', 1, '10182.jpg', '[{\"id\":10211,\"username\":\"wtpropiedad1\"}]', 1, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 459, '2019-05-15 00:36:37', '2019-05-16 16:08:34');
INSERT INTO `dbpcn_members` VALUES (10297, 10183, 'juan1515', 'juan.david1515@gmail.com', 'eUu10191Uz610165tMo', 10170, 0, NULL, 2, 'juan', 'david', 'sánchez', 'ruano', '1993-07-08', 1, '1020783359', '2011-07-22', 'Bogotá', '3125096995', 'Calle 135 # 160 - 28', 'Bogotá', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"35\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:36:40\"}]', 1, '10183.png', '[{\"id\":10188,\"username\":\"yulimarolivera0408\"}]', 1, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 475, '2019-05-15 00:36:40', '2019-05-15 17:23:00');
INSERT INTO `dbpcn_members` VALUES (10298, 10184, 'nelson_mejia1', 'neme917249@gmail.com', 'EzY10194xvm10167r96', 10171, 0, NULL, 2, 'nelson', 'emilio', 'mejia', 'silva', '1967-09-18', 1, '72149193', '1985-12-09', 'Barranquilla', '3103528433', 'Calle 122 No 45A-17 Apto 302', 'Bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"1689\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:37:06\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 478, '2019-05-15 00:37:06', '2019-05-15 00:37:06');
INSERT INTO `dbpcn_members` VALUES (10299, 10185, 'hernuesga', 'heracosmo@gmail.com', 'H7a10180PoY10172Ur7', 10180, 0, NULL, 2, 'hernando', '', 'acosta', 'moreno', '1971-02-05', 1, '79560486', '1989-05-22', 'Bogotá', '3115269872', 'CRA 80f 47b 13 sur', 'Bogotá', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"107\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:37:12\"}]', 2, '10185.bin', '[{\"id\":10187,\"username\":\"goldteam\"},{\"id\":10227,\"username\":\"gabi1976\"}]', 2, '{\"2\":[{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[[\"10213\",\"billions\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"39\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-17 14:13:58\\\"}]\"],[\"10232\",\"fannyguz\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"153\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 14:28:49\\\"}]\"]],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 0, '2019-05-28 16:12:27', '2019-05-15 00:00:00', 464, '2019-05-15 00:37:12', '2019-05-30 10:21:09');
INSERT INTO `dbpcn_members` VALUES (10300, 10186, 'tico1977', 'hola5951@gmail.com', 'ef710185GSx10167z0I', 10171, 0, NULL, 2, 'nestor', 'manuel', 'freytter', 'contreras', '1977-02-01', 1, '85476372', '1995-02-16', 'santa marta', '3007886236', 'av suba 100-93 edificio arco oficina 302', 'bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"1713\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:37:25\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 469, '2019-05-15 00:37:25', '2019-05-15 00:37:25');
INSERT INTO `dbpcn_members` VALUES (10301, 10187, 'goldteam', 'jimmyeg07@gmail.com', '5Gp101972jK10180quG', 10185, 0, NULL, 2, 'jimmy', 'nelson', 'estacio', 'guzmán', '1983-02-07', 1, '80139525', '2001-02-07', 'Bogotá', '3208403975', 'Calle 42b sur # 72h 15 AP 1401', 'Bogotá', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"77\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:39:29\"}]', 2, '', '[{\"id\":10213,\"username\":\"billions\"},{\"id\":10232,\"username\":\"fannyguz\"}]', 2, '', NULL, 0, '2019-05-30 13:19:05', '2019-05-15 00:00:00', 481, '2019-05-15 00:39:29', '2019-05-30 13:19:05');
INSERT INTO `dbpcn_members` VALUES (10302, 10188, 'yulimarolivera0408', 'yulimarolivera0408@gmail.com', 'WoI102008Sx10191B1a', 10183, 0, NULL, 2, 'yulimar', '', 'olivera', 'hernandez', '1996-04-08', 1, '1019118465', '2014-04-22', 'Bogota', '3205542296', 'kr 160 # 133 - 12 Santa Cecilia', 'Bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"31\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:39:45\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 484, '2019-05-15 00:39:46', '2019-05-15 00:39:46');
INSERT INTO `dbpcn_members` VALUES (10303, 10189, 'reymidas07', 'aatila07@yahoo.es', 'U8N102341vN10221kBW', 10176, 0, NULL, 2, 'adolfo', '', 'charry', 'olarte', '1959-07-14', 1, '8709830', '1979-07-25', 'BARRANQUILLA', '3015925434', 'CARRERA 63 No. 64 - 62  APTO 302', 'BARRANQUILLA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"467\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:40:10\"}]', 2, '', '[{\"id\":10190,\"username\":\"reinamidas\"},{\"id\":10192,\"username\":\"lnlb2019\"}]', 2, '', NULL, 0, '2019-05-14 23:25:33', '2019-05-15 00:00:00', 518, '2019-05-15 00:40:10', '2019-05-14 23:25:33');
INSERT INTO `dbpcn_members` VALUES (10304, 10190, 'reinamidas', 'yolareinamidas@gmail.com', 'wO310238UuO10234HhT', 10189, 0, NULL, 2, 'yolanda', 'marina', 'varela', 'vargas', '1949-01-11', 1, '22373268', '1968-11-21', 'Barranquilla', '3217482473', 'CARRERA 62 # 75 -31', 'BARRANQUILLA', 47, NULL, NULL, NULL, NULL, NULL, 47, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"479\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:40:30\"}]', 1, '10190.jpg', '', 0, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 522, '2019-05-15 00:40:30', '2019-05-15 11:34:17');
INSERT INTO `dbpcn_members` VALUES (10305, 10191, 'fdam.master', 'franklizara02@gmail.com', 'Cbs10246kYL10168Nsi', 10177, 0, NULL, 2, 'franky', 'ernesto', 'lizarazo', 'riaño', '1988-02-06', 1, '1052383929', '2006-02-23', 'Duitama', '3002246790', 'Carrera 25 N 9 - 20', 'Duitama', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"335\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:40:41\"}]', 1, '10191.jpg', '[{\"id\":10212,\"username\":\"nancy.roa\"}]', 1, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 530, '2019-05-15 00:40:41', '2019-05-16 21:18:20');
INSERT INTO `dbpcn_members` VALUES (10306, 10192, 'lnlb2019', 'leyder.lasprilla1@gmail.com', 'ND910262Yty10234mVn', 10189, 0, NULL, 2, 'leyder', '', 'lasprilla', 'barreto', '1987-08-14', 1, '1044422936', '2006-02-07', 'Puerto Colombia', '3008233453', 'Barranquilla', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"598\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:40:56\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 546, '2019-05-15 00:40:56', '2019-05-15 00:40:56');
INSERT INTO `dbpcn_members` VALUES (10307, 10193, 'iferrer2019', 'isis0659@gmail.com', 'ui410263mwt10221PYt', 10176, 0, NULL, 2, 'isidora', 'mercedes', 'ferrer', 'rodriguez', '1959-09-06', 1, '32627066', '1977-12-20', 'Barranquilla', '3004265322', 'Calle 16 # 25-11 Cruz De Mayo', 'Soledad', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"75\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:41:05\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 547, '2019-05-15 00:41:05', '2019-05-15 00:41:05');
INSERT INTO `dbpcn_members` VALUES (10308, 10194, 'dserrano', 'denilcesf1004@gmail.com', 'Djx102659vk10205QB4', 10175, 0, NULL, 2, 'denilce', '', 'serrano', 'florez', '1984-10-04', 1, '55229535', '2002-10-16', 'Barranquilla', '3016299410', 'Cra 53 #75 - 143 oficina legis', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"36\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:41:13\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 549, '2019-05-15 00:41:13', '2019-05-15 00:41:13');
INSERT INTO `dbpcn_members` VALUES (10309, 10195, 'macdfd01', 'marco.castaneda4@hotmail.com', '7jS10290Olk10174Lvp', 10181, 0, NULL, 2, 'marco', 'antonio', 'castañeda', 'leal', '1989-01-04', 1, '1032425904', '2007-01-12', 'bogota', '3172791983', 'av calle 63 No 73-13', 'bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"292\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 00:41:21\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 574, '2019-05-15 00:41:21', '2019-05-15 00:41:21');
INSERT INTO `dbpcn_members` VALUES (10310, 10196, 'atlanrot', 'atlanrot@gmail.com', 'CXc102093Nw10181N1G', 10172, 0, NULL, 2, 'angel', 'anibal', 'rojas', 'triana', '1983-12-14', 1, '80101546', '2002-01-25', 'Bogotá', '3185778950', 'Calle 98 b # 70c - 38 Int. 5 Apto. 401', 'Bogotá', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"48\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 13:56:55\"}]', 1, '10196.jpg', '', 0, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 493, '2019-05-15 13:56:55', '2019-05-16 12:30:04');
INSERT INTO `dbpcn_members` VALUES (10311, 10197, 'alexluisv', 'alexluisv@gmail.com', 'NxI10155iw910152QKs', 10167, 0, NULL, 2, 'alex', 'luis', 'vargas', 'aragon', '1973-06-07', 1, '8775507', '1991-07-26', 'soledad', '3155787133', 'Carrera 8b No. 51b-55 Santuario', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"76\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 13:59:09\"}]', 1, '10197.jpg', '', 0, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 439, '2019-05-15 13:59:09', '2019-05-15 11:30:09');
INSERT INTO `dbpcn_members` VALUES (10312, 10198, 'kano', 'orlando.quinterog@gmail.com', '3B1102021d71018192M', 10172, 0, NULL, 2, 'orlando', '-', 'quintero', 'guevara', '1962-05-28', 1, '19478664', '1980-09-08', 'Bogota', '3107695045', 'Kra 53 No 5-51', 'Bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"583\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 14:00:16\"}]', 1, '', '[{\"id\":10207,\"username\":\"inari\"}]', 1, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 486, '2019-05-15 14:00:16', '2019-05-15 15:34:13');
INSERT INTO `dbpcn_members` VALUES (10313, 10199, 'dyjingenieria', 'gerencia@dyjingenieria.com', 'nll101644dg10160dPs', 10168, 0, NULL, 2, 'diana', 'patricia', 'torres', 'penagos', '1978-07-05', 1, '41941383', '1996-10-19', 'armenia', '3188732386', 'calle 19 Norte 15 86', 'armenia', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"654\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:28:59\"}]', 2, '10199.jpeg', '[{\"id\":10200,\"username\":\"luisfercast\"},{\"id\":10201,\"username\":\"jufesera\"},{\"id\":10202,\"username\":\"andreyamaya1927\"},{\"id\":10203,\"username\":\"housedream\"},{\"id\":10204,\"username\":\"adriana\"},{\"id\":10218,\"username\":\"lote1mz38\"}]', 6, '{\"2\":[{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}],\"3\":[{\"cantidad\":1,\"first_payment\":2255000,\"project\":1}],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[[\"10205\",\"excellentpower\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"141\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:33:13\\\"}]\"],[\"10214\",\"jesuscardona\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"301\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-17 20:17:49\\\"}]\"]],\"3\":[[\"10206\",\"heyeve\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"142\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-15 15:33:27\\\"}]\"]],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 0, '2019-05-15 10:32:55', '2019-05-15 00:00:00', 448, '2019-05-15 15:28:59', '2019-05-21 14:37:37');
INSERT INTO `dbpcn_members` VALUES (10314, 10200, 'luisfercast', 'luisfdocastanob@gmail.com', 'uwF10178ztA10164c3l', 10199, 0, NULL, 2, 'luis', 'felipe', 'castaño', 'pardo', '2000-05-26', 1, '1004959937', '2018-06-01', 'Armenia', '3043876152', 'Cra 19 # 30N 65 condominio la aurora manzana D casa 13', 'Armenia', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"129\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:29:22\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 462, '2019-05-15 15:29:22', '2019-05-15 15:29:22');
INSERT INTO `dbpcn_members` VALUES (10315, 10201, 'jufesera', 'capisepulveda@gmail.com', 'o7x10179UkE10164t2x', 10199, 0, NULL, 2, 'juan', 'felipe', 'sepulveda', 'ramirez', '1970-03-31', 1, '10287411', '1988-07-30', 'Manizales', '3185744021', 'Calle 8 Bis # 15-51 Apto. 1101 Edificio Parque Central', 'Pereira', 47, NULL, NULL, NULL, NULL, NULL, 47, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"152\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:29:37\"}]', 1, '', '[{\"id\":10205,\"username\":\"excellentpower\"}]', 1, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 463, '2019-05-15 15:29:37', '2019-05-15 15:33:13');
INSERT INTO `dbpcn_members` VALUES (10316, 10202, 'andreyamaya1927', 'andreiiamaya2438@gmail.com', 'a2910183jlS10164Wx4', 10199, 0, NULL, 2, 'andrey', 'alexander', 'amaya', 'rojas', '1995-01-17', 1, '1094946953', '2013-01-25', 'Armenia', '3183410309', 'Calle 47 Numero 39-71 Conjunto Residencial Brisas del Bosque Bloque G Apartamento 401', 'Armenia', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"626\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:29:46\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 467, '2019-05-15 15:29:46', '2019-05-15 15:29:46');
INSERT INTO `dbpcn_members` VALUES (10317, 10203, 'housedream', 'gerenciaomarzamora@gmail.com', 'vrQ1019527R10164o4g', 10199, 0, NULL, 2, 'omar', 'alonso', 'zamora', 'miranda', '1986-02-27', 2, '1094878746', '2004-03-01', 'Armenia', '3137947539', 'cra 14 numero 46N 78 torre B  apto 1306 oro negro atardecer', 'Armenia', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"315\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:30:40\"}]', 1, '10203.JPG', '[{\"id\":10214,\"username\":\"jesuscardona\"}]', 1, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 479, '2019-05-15 15:30:40', '2019-05-17 20:17:49');
INSERT INTO `dbpcn_members` VALUES (10318, 10204, 'adriana', 'adrianatunjo23@gmail.com', 'Oqy102128MD10164VRo', 10199, 0, NULL, 2, 'adriana', '', 'tunjo', 'barazeta', '1984-12-27', 1, '20977107', '2003-03-28', 'Susa', '3112560610', 'Calle 35 N 51-22', 'Bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"815\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:30:49\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 496, '2019-05-15 15:30:49', '2019-05-15 15:30:49');
INSERT INTO `dbpcn_members` VALUES (10319, 10205, 'excellentpower', 'excellentpower2015@gmail.com', 'czK10187tEf10179v8G', 10201, 0, NULL, 2, 'herman', 'yesid', 'vera', 'sarmiento', '1963-04-21', 1, '79275781', '1981-09-15', 'Bogota', '3203197450', 'Cra 16 # 4b-15 Apto 703 Torre 1 Edificio Candelaria', 'Bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"141\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:33:13\"}]', 1, '', '[{\"id\":10206,\"username\":\"heyeve\"}]', 1, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 471, '2019-05-15 15:33:13', '2019-05-15 15:33:27');
INSERT INTO `dbpcn_members` VALUES (10320, 10206, 'heyeve', 'heyeve.pcnetwork@gmail.com', '2OP10188HJJ1018789U', 10205, 0, NULL, 2, 'herman', 'yesid', 'vera', 'sarmiento', '1963-04-21', 1, '79.275.781', '1981-09-15', 'Bogota', '3203197450', 'Cra 16 # 4b-15 Apto 703, Torre 1 Edificio Candelaria', 'Bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"142\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:33:27\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 472, '2019-05-15 15:33:27', '2019-05-15 15:33:27');
INSERT INTO `dbpcn_members` VALUES (10321, 10207, 'inari', 'margaritarojas10@gmail.com', 'XoN10247pjC10202TXz', 10198, 0, NULL, 2, 'margarita', 'maria', 'rojas', 'betancur', '1961-08-10', 1, '39632403', '1979-08-28', 'Bogota', '3105534052', 'Kra 82 # 17-95 T2 Ap 603', 'Bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"676\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 15:34:13\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-15 00:00:00', '2019-05-15 00:00:00', 531, '2019-05-15 15:34:13', '2019-05-15 15:34:13');
INSERT INTO `dbpcn_members` VALUES (10322, 10208, 'visionary', 'negociosengrande2020@gmail.com', 'GqU10285CpC10153W5F', 10164, 0, NULL, 2, 'joaquin', 'mauricio', 'contreras', 'cortes', '1978-09-21', 1, '79949390', '1996-11-02', 'Bogota', '3012786143', 'carrera 2 # 32 73 torre 6 apto 303', 'chia', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-15 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"488\",\"first_payment\":2255000,\"purchase\":\"2019-05-15 17:34:03\"}]', 2, '', '[{\"id\":10221,\"username\":\"refricol\"},{\"id\":10222,\"username\":\"cayita\"},{\"id\":10223,\"username\":\"rimexy\"},{\"id\":10246,\"username\":\"dkb.musical26\"}]', 4, '{\"2\":[{\"cantidad\":2,\"first_payment\":2255000,\"project\":1}],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', '{\"2\":[[\"10233\",\"jamessofia10\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"504\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-30 19:06:24\\\"}]\"],[\"10228\",\"peter9301\",\"[{\\\"project\\\":1,\\\"allotment_id\\\":\\\"958\\\",\\\"first_payment\\\":2255000,\\\"purchase\\\":\\\"2019-05-28 21:13:03\\\"}]\"]],\"3\":[],\"4\":[],\"5\":[],\"6\":[],\"7\":[]}', 0, '2019-05-24 11:29:37', '2019-05-15 00:00:00', 569, '2019-05-15 17:34:03', '2019-06-10 16:15:24');
INSERT INTO `dbpcn_members` VALUES (10323, 10209, 'camilo1140', 'camilo.riveros.m@gmail.com', 'CX910227dnv10166l0R', 10173, 0, NULL, 2, 'camilo', 'jose', 'riveros', 'manjarres', '1990-05-16', 1, '1140829986', '2008-05-20', 'BARRANQUILLA', '3006127486', 'CARRERA 77A 85 130 CASA 7A', 'BARRANQUILLA', 47, '', '', '', '', '', NULL, '2019-05-16 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"716\",\"first_payment\":2255000,\"purchase\":\"2019-05-16 16:07:17\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-16 00:00:00', '2019-05-16 00:00:00', 511, '2019-05-16 16:07:17', '2019-05-16 16:07:17');
INSERT INTO `dbpcn_members` VALUES (10324, 10210, 'cupercuevas83', 'cupercuevas83@gmail.com', 'xID10211vpv101819F3', 10172, 0, NULL, 2, 'cuper', 'alberto', 'cuevas', 'torres', '1983-09-04', 1, '9432046', '2001-10-09', 'YOPAL', '3227018171', 'CALLE 4 #18-154', 'YOPAL', 47, NULL, NULL, NULL, NULL, NULL, 47, '2019-05-16 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"108\",\"first_payment\":2255000,\"purchase\":\"2019-05-16 16:07:44\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-16 00:00:00', '2019-05-16 00:00:00', 495, '2019-05-16 16:07:44', '2019-05-16 16:07:44');
INSERT INTO `dbpcn_members` VALUES (10325, 10211, 'wtpropiedad1', 'waltru4377@gmail.com', 'GwM101773rI10175Nac', 10182, 0, NULL, 2, 'walddy', '', 'trujillo', 'riaño', '1977-03-04', 1, '79892000', '1995-07-04', 'Bogotá', '3134595681', 'Calle 161a # 62-52', 'Bogota', 47, NULL, NULL, NULL, NULL, NULL, 47, '2019-05-16 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"7\",\"first_payment\":2255000,\"purchase\":\"2019-05-16 16:08:34\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-16 00:00:00', '2019-05-16 00:00:00', 461, '2019-05-16 16:08:34', '2019-05-16 16:08:34');
INSERT INTO `dbpcn_members` VALUES (10326, 10212, 'nancy.roa', 'frailech@gmail.com', 'WV11704QS6101914qR', 10191, 0, NULL, 2, 'nancy', 'frailech', 'roa', 'zubieta', '1982-10-12', 1, '23682293', '2001-01-09', 'LA CAPILLA', '3104790781', 'CRA 103 B # 16 f 72', 'Bogotá D.C.', 47, NULL, NULL, NULL, NULL, NULL, 47, '2019-05-16 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"1704\",\"first_payment\":2255000,\"purchase\":\"2019-05-16 21:18:20\"}]', 1, '10212.png', '', 0, '', NULL, 0, '2019-05-16 00:00:00', '2019-05-16 00:00:00', 590, '2019-05-16 21:18:20', '2019-05-21 18:05:38');
INSERT INTO `dbpcn_members` VALUES (10327, 10213, 'billions', 'adricrileo71@gmail.com', 'LTB10210rkO10197Mjh', 10187, 0, NULL, 2, 'adriana', '', 'betancur', 'zorro', '1971-11-22', 1, '52096549', '1989-12-07', 'Bogots', '3132827354', 'Kr30 #35-35 sur', 'Bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-17 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"39\",\"first_payment\":2255000,\"purchase\":\"2019-05-17 14:13:58\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-17 00:00:00', '2019-05-17 00:00:00', 494, '2019-05-17 14:13:58', '2019-05-17 14:13:58');
INSERT INTO `dbpcn_members` VALUES (10328, 10214, 'jesuscardona', 'jesuscardonap1710@gmail.com', '3g9301nQw10203zVD', 10203, 0, NULL, 2, 'jesus', 'david', 'cardona', 'pineda', '2000-10-17', 1, '1192791968', '2018-10-19', 'Calarca', '3128083952', 'cra 17 numero 42-07 Versalles', 'Calarca', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-17 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"301\",\"first_payment\":2255000,\"purchase\":\"2019-05-17 20:17:49\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-17 00:00:00', '2019-05-17 00:00:00', 594, '2019-05-17 20:17:49', '2019-05-17 20:17:49');
INSERT INTO `dbpcn_members` VALUES (10329, 10215, 'sergioparra', 'sergipau84@gmail.com', 'tGi10224BP310153pLQ', 10164, 0, NULL, 2, 'sergio', 'giovanni', 'parra', 'pacheco', '1984-06-17', 1, '80849908', '2002-06-25', 'BOGOTÁ D.C', '3136646866', 'CRA 115A #89B-20 TORRE 30 APTO 104', 'BOGOTÁ D.C', 47, NULL, NULL, NULL, NULL, NULL, 47, '2019-05-20 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"790\",\"first_payment\":2255000,\"purchase\":\"2019-05-20 14:47:32\"}]', 1, '10215.jpg', '[{\"id\":10217,\"username\":\"juanjose\"}]', 1, '', NULL, 0, '2019-05-20 00:00:00', '2019-05-20 00:00:00', 508, '2019-05-20 14:47:32', '2019-05-21 19:07:30');
INSERT INTO `dbpcn_members` VALUES (10330, 10216, 'byronochoa', 'bochoa64@icloud.com', 'H1T83o5S101646en', 10164, 0, NULL, 2, 'byron', 'andres', 'ochoa', 'niÑo', '1998-01-30', 1, '1098803733', '2016-02-01', 'BUCARAMANGA', '3143931974', 'calle 64 # 12w - 03', 'BUCARAMANGA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-20 00:00:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"83\",\"first_payment\":2255000,\"purchase\":\"2019-05-20 14:50:42\"}]', 1, '', '[{\"id\":10247,\"username\":\"jhonjaironino\"}]', 1, '', NULL, 0, '2019-05-20 00:00:00', '2019-05-20 00:00:00', 591, '2019-05-20 14:50:42', '2019-06-10 16:18:43');
INSERT INTO `dbpcn_members` VALUES (10331, 10217, 'juanjose', 'oscarjrolo@gmail.com', 'KmO102411IY10224HLE', 10215, 0, NULL, 2, 'oscar', 'javier', 'jimenez', 'munevar', '1973-10-26', 1, '79611217', '1992-03-09', 'Bogota', '3208353454', 'calle 47 b sur # 23 b70 bloque 24 apt 347', 'Bogotá D.C.', 47, NULL, NULL, NULL, NULL, NULL, 47, '2019-05-07 03:54:07', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"766\",\"first_payment\":2255000,\"purchase\":\"2019-05-21 19:07:30\"}]', 1, '', '[{\"id\":10226,\"username\":\"joca2689\"}]', 1, '', NULL, 0, '2019-05-21 00:00:00', '2019-05-21 00:00:00', 525, '2019-05-21 19:07:30', '2019-05-28 20:33:46');
INSERT INTO `dbpcn_members` VALUES (10332, 10218, 'lote1mz38', 'zeiralberto@gmail.com', 'NqY7091tV10199ifT', 10199, 0, NULL, 2, 'zehir', 'alberto', 'martinez', 'arbelaez', '1977-01-28', 1, '18397098', '1995-03-17', 'Calarca', '3104210896', 'Cra 19 36N 30 Portal de alameda Manzana F casa 7', 'Armenia', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-20 13:31:46', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"709\",\"first_payment\":2255000,\"purchase\":\"2019-05-21 19:08:57\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-21 00:00:00', '2019-05-21 00:00:00', 596, '2019-05-21 19:08:57', '2019-05-21 19:08:57');
INSERT INTO `dbpcn_members` VALUES (10333, 10219, 'dreamerazul', 'biosferamosconsultores@gmail.com', '2vr80Zjn10174juT', 10174, 0, NULL, 1, 'claudia', 'lorena', 'rivera', 'pérez', '1980-02-21', 1, '31570089', '1998-08-10', 'Cali', '3147722248', 'Calle 2 #10c121 Puerto Colombia, Atl', 'Cali', 47, '900774032-1', 'Biosferamos Consultores Agríco', '3147722248', 'Calle 36#3N36 Cali', 'Cali', 47, '2019-05-21 15:15:58', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"80\",\"first_payment\":2255000,\"purchase\":\"2019-05-21 21:47:04\"}]', 1, '', '[{\"id\":10248,\"username\":\"edudav\"}]', 1, '', NULL, 0, '2019-05-21 00:00:00', '2019-05-21 00:00:00', 598, '2019-05-21 21:47:04', '2019-06-10 16:20:18');
INSERT INTO `dbpcn_members` VALUES (10334, 10220, 'rmartinez2459', 'info@portalcargo.com', 'esO316EPc10181LQ0', 10181, 0, NULL, 2, 'robinson', '', 'martinez', 'calderon', '1975-08-02', 1, '79869916', '1994-02-07', 'bogota', '3003484115', 'transv 86 # 99-25 casa 25', 'bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-22 12:45:55', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"316\",\"first_payment\":2255000,\"purchase\":\"2019-05-23 21:08:04\"}]', 1, '', '[{\"id\":10224,\"username\":\"m21-01\"}]', 1, '', NULL, 0, '2019-05-23 00:00:00', '2019-05-23 00:00:00', 602, '2019-05-23 21:08:04', '2019-05-27 21:58:51');
INSERT INTO `dbpcn_members` VALUES (10335, 10221, 'refricol', 'refricol2000@hotmail.com', 'bjj4660PA10208Iu3', 10208, 0, NULL, 2, 'luis', 'alberto', 'alvarez', 'movilla', '1985-05-01', 1, '80797281', '2003-05-14', 'BOGOTA', '3102587069', 'transversal 74 # 81 F 05', 'BOGOTA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-21 16:29:09', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"466\",\"first_payment\":2255000,\"purchase\":\"2019-05-24 13:42:51\"}]', 1, '10221.jpg', '', 0, '', NULL, 0, '2019-05-24 00:00:00', '2019-05-24 00:00:00', 599, '2019-05-24 13:42:51', '2019-05-29 10:54:26');
INSERT INTO `dbpcn_members` VALUES (10336, 10222, 'cayita', 'rojas.milena@hotmail.com', '6j2487krK10208Jhb', 10208, 0, NULL, 2, 'claudia', 'milena', 'camacho', 'rojas', '1980-10-16', 1, '37840562', '1998-12-16', 'BUCARAMANGA', '3203429473', 'CARRERA 24 · 63A-42   APTO 301', 'BOGOTA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-22 12:45:46', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"487\",\"first_payment\":2255000,\"purchase\":\"2019-05-24 13:44:36\"}]', 1, '', '[{\"id\":10233,\"username\":\"jamessofia10\"}]', 1, '', NULL, 0, '2019-05-24 00:00:00', '2019-05-24 00:00:00', 601, '2019-05-24 13:44:36', '2019-05-30 19:06:24');
INSERT INTO `dbpcn_members` VALUES (10337, 10223, 'rimexy', 'linacan65@gmail.com', 'fjn198gNU10208Vt5', 10208, 0, NULL, 2, 'lina', 'jimena', 'cancino', 'la rotta', '1986-01-22', 1, '1072639781', '2004-04-12', 'chia', '3045542376', 'av pradilla # 5 - 74', 'chia', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-21 21:48:50', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"198\",\"first_payment\":2255000,\"purchase\":\"2019-05-27 19:15:30\"}]', 1, '', '[{\"id\":10228,\"username\":\"peter9301\"}]', 1, '', NULL, 0, '2019-05-27 00:00:00', '2019-05-27 00:00:00', 600, '2019-05-27 19:15:30', '2019-05-28 21:13:03');
INSERT INTO `dbpcn_members` VALUES (10338, 10224, 'm21-01', 'y.ortegonromero@yahoo.es', '60n372i5J10220pTK', 10220, 0, NULL, 2, 'yenny', 'andrea', 'ortegon', 'romero', '1980-07-30', 1, '52800833', '1999-01-21', 'BOGOTA', '3133176592', 'CRA 109 A 131 B 20', 'BOGOTA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-24 13:16:03', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"372\",\"first_payment\":2255000,\"purchase\":\"2019-05-27 21:58:51\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-27 00:00:00', '2019-05-27 00:00:00', 603, '2019-05-27 21:58:51', '2019-05-27 21:58:51');
INSERT INTO `dbpcn_members` VALUES (10339, 10225, 'yolanda2019', 'yolandayanethsierracepeda@gmail.com', '0la10284uwk10181QPr', 10172, 0, NULL, 2, 'yolanda', 'yaneth', 'sierra', 'cediel', '1970-05-10', 1, '40389434', '1988-09-29', 'villavicencio', '3203713428', 'carrera 22 #9-84', 'Yopal', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-07 03:54:16', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"386\",\"first_payment\":2255000,\"purchase\":\"2019-05-28 20:31:32\"}]', 2, '', '[{\"id\":10229,\"username\":\"sharom2204\"},{\"id\":10231,\"username\":\"santiago2026\"}]', 2, '', NULL, 0, '2019-05-29 16:30:29', '2019-05-28 00:00:00', 568, '2019-05-28 20:31:32', '2019-05-29 16:30:29');
INSERT INTO `dbpcn_members` VALUES (10340, 10226, 'joca2689', 'jo_ca26@hotmail.com', 'ZjO400OPh10217dgA', 10217, 0, NULL, 2, 'leyddy', 'johana', 'casas', 'chacon', '1989-06-26', 1, '1030558633', '2007-07-17', 'BOGOTA', '3193886071', 'AV CRA 80 8C 85 TORRES DE CASTILLA TORRE 7 APTO 626', 'BOGOTA', 47, NULL, NULL, NULL, NULL, NULL, 47, '2019-05-28 08:51:00', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"400\",\"first_payment\":2255000,\"purchase\":\"2019-05-28 20:33:46\"}]', 2, '', '[{\"id\":10234,\"username\":\"casasfredy\"},{\"id\":10235,\"username\":\"germanchacon\"},{\"id\":10243,\"username\":\"joelariza\"}]', 3, '', NULL, 0, '2019-05-30 16:58:44', '2019-05-28 00:00:00', 607, '2019-05-28 20:33:46', '2019-06-07 19:53:31');
INSERT INTO `dbpcn_members` VALUES (10341, 10227, 'gabi1976', 'asa.lam@hotmail.com', 'aNt1705h2A10185ufw', 10185, 0, NULL, 2, 'alba', 'nury', 'salamanca', 'ibañez', '1976-10-05', 1, '52375956', '1994-11-21', 'bogota', '3105576145', 'Cra 80 f 47 b 12 sur', 'Bogotá', 47, NULL, NULL, NULL, NULL, NULL, 47, '2019-05-16 09:25:56', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"1705\",\"first_payment\":2255000,\"purchase\":\"2019-05-28 21:11:53\"}]', 1, '10227.jpg', '', 0, '', NULL, 0, '2019-05-28 00:00:00', '2019-05-28 00:00:00', 592, '2019-05-28 21:11:53', '2019-05-31 08:15:25');
INSERT INTO `dbpcn_members` VALUES (10342, 10228, 'peter9301', 'peter9301@gmail.com', 't9x958tsY10223gjO', 10223, 0, NULL, 2, 'pedro', 'eduardo', 'acosta', 'bermudez', '1978-02-03', 1, '11201509', '1996-07-30', 'chia', '3132076213', 'vereda la balsa', 'chia', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-27 20:47:43', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"958\",\"first_payment\":2255000,\"purchase\":\"2019-05-28 21:13:03\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-28 00:00:00', '2019-05-28 00:00:00', 605, '2019-05-28 21:13:03', '2019-05-28 21:13:03');
INSERT INTO `dbpcn_members` VALUES (10343, 10229, 'sharom2204', 'sandritasharon22@gmail.com', 'F3q10289f4P10284haG', 10225, 0, NULL, 2, 'sandra', 'patricia', 'bustamante', 'gonzalez', '1972-04-22', 1, '40035988', '1992-05-29', 'TUNJA', '3213221535', 'CARRERA 8 1A-60 MANZANA G TORRE 2 APTO 402', 'TUNJA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-07 03:54:17', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"550\",\"first_payment\":2255000,\"purchase\":\"2019-05-29 14:49:00\"}]', 1, '', '[{\"id\":10230,\"username\":\"fernandolondonoruiz1969\"}]', 1, '', NULL, 0, '2019-05-29 00:00:00', '2019-05-29 00:00:00', 573, '2019-05-29 14:49:00', '2019-05-29 15:35:06');
INSERT INTO `dbpcn_members` VALUES (10344, 10230, 'fernandolondonoruiz1969', 'fernandolondonoruiz@gmail.com', 'R9f10291R7l102896DC', 10229, 0, NULL, 2, 'marlon', 'fernando', 'londoÑo', 'ruiz', '1969-02-26', 1, '7160489', '1987-04-24', 'TUNJA', '3132712959', 'TRANSVERSAL 11 N° 31-54', 'TUNJA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-07 03:54:17', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"1569\",\"first_payment\":2255000,\"purchase\":\"2019-05-29 15:35:06\"}]', 1, '', '[{\"id\":10238,\"username\":\"marbit2017\"}]', 1, '', NULL, 0, '2019-05-29 00:00:00', '2019-05-29 00:00:00', 575, '2019-05-29 15:35:06', '2019-06-04 14:10:16');
INSERT INTO `dbpcn_members` VALUES (10345, 10231, 'santiago2026', 'marailes_83@hotmail.com', 'WgL10300lZC10284LUr', 10225, 0, NULL, 2, 'maryit', 'ailes', 'salgado', 'lopez', '1983-01-15', 1, '41242575', '2001-02-19', 'San José del Guaviar', '3134279742', 'calle 9 # 15-35', 'Aguazul Casanare', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-07 03:54:19', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"1703\",\"first_payment\":2255000,\"purchase\":\"2019-05-29 21:16:40\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-29 00:00:00', '2019-05-29 00:00:00', 584, '2019-05-29 21:16:40', '2019-05-29 21:16:40');
INSERT INTO `dbpcn_members` VALUES (10346, 10232, 'fannyguz', 'herminda12234@hotmail.com', 'jvq153Sgq10187hEo', 10187, 0, NULL, 2, 'fanny', '', 'guzman', 'carlos', '1966-12-23', 1, '40920468', '1985-08-12', 'Riohacha', '3202050702', 'Cra 89 a N 45-38 sur Las Margaritas 1  apto 502 torre 7', 'Bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-26 11:24:36', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"153\",\"first_payment\":2255000,\"purchase\":\"2019-05-30 14:28:49\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-30 00:00:00', '2019-05-30 00:00:00', 604, '2019-05-30 14:28:49', '2019-05-30 14:28:49');
INSERT INTO `dbpcn_members` VALUES (10347, 10233, 'jamessofia10', 'ponychildren@hotmail.com', 'mer50408T10222XsS', 10222, 0, NULL, 2, 'diana', 'carolina', 'hernandez', 'baldeleon', '1987-03-10', 1, '1121831914', '2005-06-03', 'VILLAVICENCIO', '3143199110', 'CONJUNTO CAMINO REAL 1 CA88 CARRERA 13 No. 36-36', 'VILLAVICENCIO', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-28 17:51:34', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"504\",\"first_payment\":2255000,\"purchase\":\"2019-05-30 19:06:24\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-30 00:00:00', '2019-05-30 00:00:00', 611, '2019-05-30 19:06:24', '2019-05-30 19:06:24');
INSERT INTO `dbpcn_members` VALUES (10348, 10234, 'casasfredy', 'casasfredy@outlook.com', 'D3G455tBH10226A7Y', 10226, 0, NULL, 2, 'fredy', 'eduardo', 'casas', 'perez', '1965-07-08', 1, '79356551', '1983-09-30', 'BOGOTA', '3204804541', 'CALLE 7 A 74 04 PARQUE DE LOS ANGELES INT 6 APTO 103', 'BOGOTA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-28 16:58:55', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"455\",\"first_payment\":2255000,\"purchase\":\"2019-05-30 20:56:41\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-30 00:00:00', '2019-05-30 00:00:00', 609, '2019-05-30 20:56:41', '2019-05-30 20:56:41');
INSERT INTO `dbpcn_members` VALUES (10349, 10235, 'germanchacon', 'casas.johana@outlook.com', 'ZP8428tso102269j7', 10226, 0, NULL, 2, 'william', 'german', 'chacon', 'bonilla', '1966-03-03', 1, '79393317', '1984-10-16', 'BOGOTA', '3193886071', 'AV CRA 80 8C 85 TORRES DE CASTILLA TORRE 7 APTO 626', 'BOGOTA', 47, NULL, NULL, NULL, NULL, NULL, 47, '2019-05-28 17:08:33', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"428\",\"first_payment\":2255000,\"purchase\":\"2019-05-30 20:58:41\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-30 00:00:00', '2019-05-30 00:00:00', 610, '2019-05-30 20:58:41', '2019-05-30 20:58:41');
INSERT INTO `dbpcn_members` VALUES (10350, 10236, 'brayohan1985', 'empresariodeexito2014@gmail.com', 'rnY1021847u10158xT2', 10168, 0, NULL, 2, 'braulio', 'yohan', 'giraldo', 'restrepo', '1985-02-28', 1, '18471151', '2003-03-12', 'Quimbaya', '3152892051', 'Carrera 3 # 16-38', 'Quimbaya Quindío', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-07 03:54:02', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"85\",\"first_payment\":2255000,\"purchase\":\"2019-05-31 14:15:26\"}]', 1, '', '', 0, '', NULL, 0, '2019-05-31 00:00:00', '2019-05-31 00:00:00', 502, '2019-05-31 14:15:26', '2019-05-31 14:15:26');
INSERT INTO `dbpcn_members` VALUES (10351, 10237, 'mastermind', 'david.sepulveda86@gmail.com', '4D610275EG710172jJs', 10180, 0, NULL, 2, 'adriana', 'paola', 'pineda', 'guerrero', '1996-03-10', 1, '1020813803', '2014-03-27', 'Bogota D.C', '3023772303', 'calle 181d #17-17', 'Bogota', 47, NULL, NULL, NULL, NULL, NULL, 47, '2019-05-07 03:54:14', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"1707\",\"first_payment\":2255000,\"purchase\":\"2019-06-04 14:10:09\"}]', 1, '', '', 0, '', NULL, 0, '2019-06-04 00:00:00', '2019-06-04 00:00:00', 559, '2019-06-04 14:10:09', '2019-06-04 14:10:09');
INSERT INTO `dbpcn_members` VALUES (10352, 10238, 'marbit2017', 'visionganar2@gmail.com', 'xUF696AZO10230fwt', 10230, 0, NULL, 2, 'marco', 'fidel', 'vargas', 'becerra', '1971-08-04', 1, '72279235', '1990-08-06', 'Duitama', '307608838', 'carrera 12 #8-34', 'Duitama', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-29 11:30:35', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"696\",\"first_payment\":2255000,\"purchase\":\"2019-06-04 14:10:16\"}]', 1, '', '', 0, '', NULL, 0, '2019-06-04 00:00:00', '2019-06-04 00:00:00', 613, '2019-06-04 14:10:16', '2019-06-04 14:10:16');
INSERT INTO `dbpcn_members` VALUES (10353, 10239, 'dpanche2019', 'dennisyolima@gmail.com', 'nkj10252Z4110168Jmz', 10177, 0, NULL, 2, 'dennis', 'yolima', 'panche', 'pirachican', '1993-08-19', 1, '1024543213', '2011-08-26', 'bogota', '3002888465', 'cra 61 A # 51 A 49 sur', 'Bogotá', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-07 03:54:09', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"93\",\"first_payment\":2255000,\"purchase\":\"2019-06-05 14:05:09\"}]', 1, '', '', 0, '', NULL, 0, '2019-06-05 00:00:00', '2019-06-05 00:00:00', 536, '2019-06-05 14:05:09', '2019-06-05 14:05:09');
INSERT INTO `dbpcn_members` VALUES (10354, 10240, 'georgemaster', 'georgegeorge40@hotmail.com', 'ME210171L3W10156zTA', 10173, 0, NULL, 2, 'jorge', 'armando', 'bolivar', 'bonilla', '1986-04-15', 1, '1010163001', '2004-05-14', 'BOGOTA', '3059127315', 'cra 24 da  # 10e 205 apto 1706 interclub medellin', 'BOGOTA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-07 03:53:51', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"293\",\"first_payment\":2255000,\"purchase\":\"2019-06-05 15:14:30\"}]', 2, '', '[{\"id\":10241,\"username\":\"margaritamora\"},{\"id\":10242,\"username\":\"stellar1\"}]', 2, '', NULL, 0, '2019-06-05 12:36:43', '2019-06-05 00:00:00', 455, '2019-06-05 15:14:30', '2019-06-05 12:36:43');
INSERT INTO `dbpcn_members` VALUES (10355, 10241, 'margaritamora', 'margaritamora07@gmail.com', 'cVI10193y5110171NK1', 10240, 0, NULL, 2, 'margarita mora', 'margarita', 'mora', 'mora', '1990-11-27', 1, '1026565484', '2008-12-02', 'bogota', '3123799659', 'cll 6a # 88d 71, casa 136', 'bogota', 47, NULL, NULL, NULL, NULL, NULL, 47, '2019-05-07 03:53:56', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"294\",\"first_payment\":2255000,\"purchase\":\"2019-06-05 15:14:37\"}]', 1, '', '', 0, '', NULL, 0, '2019-06-05 00:00:00', '2019-06-05 00:00:00', 477, '2019-06-05 15:14:37', '2019-06-05 15:14:37');
INSERT INTO `dbpcn_members` VALUES (10356, 10242, 'stellar1', 'realtystellarview@gmail.com', 'dG610272qhm10171rLR', 10240, 0, NULL, 2, 'leidy', 'enith', 'echeverri', 'borja', '1984-01-29', 1, '53057012', '2002-04-30', 'Bogota', '3206055636', 'Vereda el Jardín,Altos del Jardín,casa 10,Belen,Corregimiento Altavista', 'medellin', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-07 03:54:13', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"44\",\"first_payment\":2255000,\"purchase\":\"2019-06-05 17:21:56\"}]', 1, '', '', 0, '', NULL, 0, '2019-06-05 00:00:00', '2019-06-05 00:00:00', 556, '2019-06-05 17:21:56', '2019-06-05 17:21:56');
INSERT INTO `dbpcn_members` VALUES (10357, 10243, 'joelariza', 'joelariza49@hotmail.com', 'mky427k4h10226hFp', 10226, 0, NULL, 2, 'willy', 'joel', 'ariza', 'otalora', '1983-07-02', 1, '80761604', '2001-07-10', 'BOGOTA', '3183940549', 'CALLE 33 SUR NO. 51 G 67 BARRIO ALCALA', 'BOGOTA', 47, NULL, NULL, NULL, NULL, NULL, 47, '2019-06-06 18:44:59', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"427\",\"first_payment\":2255000,\"purchase\":\"2019-06-07 19:53:31\"}]', 1, '', '', 0, '', NULL, 0, '2019-06-07 00:00:00', '2019-06-07 00:00:00', 617, '2019-06-07 19:53:31', '2019-06-07 19:53:31');
INSERT INTO `dbpcn_members` VALUES (10358, 10244, 'eriyharold', 'lizi1002@hotmail.com', 'NtN10279FQq10168gby', 10177, 0, NULL, 2, 'erika', 'lizeth', 'nieto', 'osorio', '1995-10-02', 1, '1075677663', '2013-10-28', 'Zipaquira', '3102698783', 'calle 26a# 14b-27', 'zipaquira', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-07 03:54:15', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"697\",\"first_payment\":2255000,\"purchase\":\"2019-06-10 16:13:04\"}]', 1, '', '', 0, '', NULL, 0, '2019-06-10 00:00:00', '2019-06-10 00:00:00', 563, '2019-06-10 16:13:04', '2019-06-10 16:13:04');
INSERT INTO `dbpcn_members` VALUES (10359, 10245, 'inmobiliariayconstructorazosas', 'realtor.construczosa@gmail.com', 'hpt825lKY10172WXh', 10172, 0, NULL, 1, 'jhon', 'jairo', 'zorrilla', 'salazar', '1969-02-04', 1, '79539016', '1988-10-28', 'Bogota', '3124503285', 'calle 153 bis numero 7c21', 'BOGOTA', 47, '900488590-3', 'inmobiliariayconstructorazosa ', '3124503285', 'calle 153 numero 7c21', 'Bogota', 47, '2019-05-27 22:14:05', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"825\",\"first_payment\":2255000,\"purchase\":\"2019-06-10 16:14:41\"}]', 1, '', '', 0, '', NULL, 0, '2019-06-10 00:00:00', '2019-06-10 00:00:00', 606, '2019-06-10 16:14:41', '2019-06-10 16:14:41');
INSERT INTO `dbpcn_members` VALUES (10360, 10246, 'dkb.musical26', 'yanethsantafe@gmail.com', 'MmK680zDT10208bkO', 10208, 0, NULL, 2, 'jorge', 'enrique', 'zamudio', 'cortes', '1975-05-26', 1, '86046750', '1993-06-30', 'Villavicencio', '3144660595', 'Kra 6 este 38-66 Casa 126 San Mateo', 'Soacha', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-04 16:22:53', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"680\",\"first_payment\":2255000,\"purchase\":\"2019-06-10 16:15:24\"}]', 1, '', '', 0, '', NULL, 0, '2019-06-10 00:00:00', '2019-06-10 00:00:00', 616, '2019-06-10 16:15:24', '2019-06-10 16:15:24');
INSERT INTO `dbpcn_members` VALUES (10361, 10247, 'jhonjaironino', 'byronochoa30@gmail.com', 'RHa17119TI102163B1', 10216, 0, NULL, 2, 'jhon', 'jairo', 'niño', 'rojas', '1979-08-14', 1, '13721871', '1997-09-25', 'Bucaramanga', '3107631805', 'carrera 31w # 63a-201', 'Bucaramanga', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-06 23:35:46', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"1711\",\"first_payment\":2255000,\"purchase\":\"2019-06-10 16:18:43\"}]', 1, '', '', 0, '', NULL, 0, '2019-06-10 00:00:00', '2019-06-10 00:00:00', 618, '2019-06-10 16:18:43', '2019-06-10 16:18:43');
INSERT INTO `dbpcn_members` VALUES (10362, 10248, 'edudav', 'eduardoemt1@hotmail.com', 'X2A17Zfr102196Xy', 10219, 0, NULL, 2, 'david', '', 'sarria', 'dulcey', '1988-08-23', 1, '1130623220', '2007-02-12', 'CALI', '3016346363', 'Carrera 57 # 3-57 Apto 402', 'CALI', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-07 13:06:01', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"17\",\"first_payment\":2255000,\"purchase\":\"2019-06-10 16:20:18\"}]', 1, '', '', 0, '', NULL, 0, '2019-06-10 00:00:00', '2019-06-10 00:00:00', 619, '2019-06-10 16:20:18', '2019-06-10 16:20:18');
INSERT INTO `dbpcn_members` VALUES (10363, 10249, 'peralta7', 'luarperalta@gmail.com', 'Xed1709CG810170y49', 10170, 0, NULL, 2, 'luz', 'marina', 'ariño', 'gamez', '1958-10-01', 1, '26994235', '1977-12-22', 'Fonseca', '3209166405', 'calle 15 #13-05', 'Fonseca', 47, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-08 12:08:23', 1, 1, 1, '[{\"project\":1,\"allotment_id\":\"1709\",\"first_payment\":2255000,\"purchase\":\"2019-06-10 16:46:52\"}]', 1, '', '', 0, '', NULL, 0, '2019-06-10 00:00:00', '2019-06-10 00:00:00', 622, '2019-06-10 16:46:52', '2019-06-10 16:46:52');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_method_of_payment
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_method_of_payment`;
CREATE TABLE `dbpcn_method_of_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `detail` text DEFAULT NULL,
  `status` enum('inactive','active') DEFAULT NULL,
  `status_cuota` enum('active','inactive') NOT NULL,
  `status_register` enum('inactive','active') DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_method_of_payment
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_method_of_payment` VALUES (1, 'Consignación bancaria', 'Consignación ', 'active', 'active', 'active');
INSERT INTO `dbpcn_method_of_payment` VALUES (2, 'PayU', 'Consignación ', 'inactive', 'inactive', 'inactive');
INSERT INTO `dbpcn_method_of_payment` VALUES (3, 'Saldo Backofficce', 'Consignación ', 'inactive', 'inactive', 'inactive');
INSERT INTO `dbpcn_method_of_payment` VALUES (4, 'Metodo manual (Administrador)', 'Consignación ', 'inactive', 'inactive', 'inactive');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_monthly_fees
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_monthly_fees`;
CREATE TABLE `dbpcn_monthly_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(30) unsigned NOT NULL,
  `allotment_id` int(50) unsigned NOT NULL,
  `type` enum('monthly','initial') COLLATE utf8_spanish_ci NOT NULL,
  `value` decimal(30,2) NOT NULL,
  `date_to_payment` date NOT NULL,
  `payment_date_made` date DEFAULT NULL,
  `payment_hours` time DEFAULT NULL,
  `status` enum('paid','pending') COLLATE utf8_spanish_ci NOT NULL,
  `initial_cut_date` date DEFAULT NULL,
  `final_cut_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `user` (`user_id`) USING BTREE,
  KEY `date_to_pay` (`date_to_payment`) USING BTREE,
  KEY `date_paid` (`payment_date_made`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  CONSTRAINT `fk_monthly_user_id` FOREIGN KEY (`user_id`) REFERENCES `dbpcn_members` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_monthly_fees
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_monthly_fees` VALUES (1, 1, 0, 'initial', 0.00, '2019-04-23', '2019-04-23', '15:46:36', 'paid', NULL, NULL, '2019-04-23 15:46:36', '2019-04-23 15:46:36');
INSERT INTO `dbpcn_monthly_fees` VALUES (2, 1, 0, 'monthly', 730249.33, '2019-05-23', NULL, NULL, 'pending', '2019-05-16', '2019-05-21', '2019-04-23 15:46:36', '2019-06-16 20:06:10');
INSERT INTO `dbpcn_monthly_fees` VALUES (109, 10148, 88, 'initial', 2255000.00, '2019-04-10', '2019-04-27', '02:48:00', 'paid', NULL, NULL, '2019-04-27 02:48:00', '2019-04-27 02:48:00');
INSERT INTO `dbpcn_monthly_fees` VALUES (110, 10148, 88, 'monthly', 730249.33, '2019-06-10', NULL, NULL, 'pending', '2019-05-16', '2019-05-21', '2019-04-27 02:48:01', '2019-06-16 20:06:10');
INSERT INTO `dbpcn_monthly_fees` VALUES (121, 10149, 72, 'initial', 2255000.00, '2019-05-10', '2019-05-10', '17:22:49', 'paid', NULL, NULL, '2019-05-10 17:22:49', '2019-05-10 17:22:49');
INSERT INTO `dbpcn_monthly_fees` VALUES (122, 10149, 72, 'monthly', 730249.33, '2019-06-10', '2019-05-27', '11:50:51', 'paid', '2019-06-01', '2019-06-05', '2019-05-10 17:22:49', '2019-06-16 20:06:10');
INSERT INTO `dbpcn_monthly_fees` VALUES (123, 10151, 91, 'initial', 2255000.00, '2019-05-13', '2019-05-13', '20:01:48', 'paid', NULL, NULL, '2019-05-13 20:01:48', '2019-05-13 20:01:48');
INSERT INTO `dbpcn_monthly_fees` VALUES (124, 10151, 91, 'monthly', 730249.33, '2019-06-13', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-13 20:01:48', '2019-06-16 20:06:11');
INSERT INTO `dbpcn_monthly_fees` VALUES (125, 10161, 89, 'initial', 2255000.00, '2019-05-13', '2019-05-13', '20:58:39', 'paid', NULL, NULL, '2019-05-13 20:58:39', '2019-05-13 20:58:39');
INSERT INTO `dbpcn_monthly_fees` VALUES (126, 10161, 89, 'monthly', 730249.33, '2019-06-13', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-13 20:58:39', '2019-06-16 20:06:11');
INSERT INTO `dbpcn_monthly_fees` VALUES (127, 10162, 90, 'initial', 2255000.00, '2019-05-13', '2019-05-13', '21:20:59', 'paid', NULL, NULL, '2019-05-13 21:20:59', '2019-05-13 21:20:59');
INSERT INTO `dbpcn_monthly_fees` VALUES (128, 10162, 90, 'monthly', 730249.33, '2019-06-13', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-13 21:20:59', '2019-06-16 20:06:11');
INSERT INTO `dbpcn_monthly_fees` VALUES (129, 10163, 70, 'initial', 2255000.00, '2019-05-13', '2019-05-13', '21:38:17', 'paid', NULL, NULL, '2019-05-13 21:38:17', '2019-05-13 21:38:17');
INSERT INTO `dbpcn_monthly_fees` VALUES (130, 10163, 70, 'monthly', 730249.33, '2019-06-13', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-13 21:38:17', '2019-06-16 20:06:11');
INSERT INTO `dbpcn_monthly_fees` VALUES (131, 10164, 109, 'initial', 2255000.00, '2019-05-14', '2019-05-14', '19:05:20', 'paid', NULL, NULL, '2019-05-14 19:05:20', '2019-05-14 19:05:20');
INSERT INTO `dbpcn_monthly_fees` VALUES (132, 10164, 109, 'monthly', 730249.33, '2019-06-14', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-14 19:05:20', '2019-06-16 20:06:11');
INSERT INTO `dbpcn_monthly_fees` VALUES (133, 10165, 478, 'initial', 2255000.00, '2019-05-14', '2019-05-14', '20:06:33', 'paid', NULL, NULL, '2019-05-14 20:06:33', '2019-05-14 20:06:33');
INSERT INTO `dbpcn_monthly_fees` VALUES (134, 10165, 478, 'monthly', 730249.33, '2019-06-14', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-14 20:06:33', '2019-06-16 20:06:12');
INSERT INTO `dbpcn_monthly_fees` VALUES (135, 10166, 21, 'initial', 2255000.00, '2019-05-14', '2019-05-14', '22:53:22', 'paid', NULL, NULL, '2019-05-14 22:53:22', '2019-05-14 22:53:22');
INSERT INTO `dbpcn_monthly_fees` VALUES (136, 10166, 21, 'monthly', 730249.33, '2019-06-14', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-14 22:53:22', '2019-06-16 20:06:12');
INSERT INTO `dbpcn_monthly_fees` VALUES (137, 10167, 92, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:01:01', 'paid', NULL, NULL, '2019-05-15 00:01:01', '2019-05-15 00:01:01');
INSERT INTO `dbpcn_monthly_fees` VALUES (138, 10167, 92, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:01:01', '2019-06-16 20:06:12');
INSERT INTO `dbpcn_monthly_fees` VALUES (139, 10168, 94, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:01:54', 'paid', NULL, NULL, '2019-05-15 00:01:54', '2019-05-15 00:01:54');
INSERT INTO `dbpcn_monthly_fees` VALUES (140, 10168, 94, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:01:54', '2019-06-16 20:06:12');
INSERT INTO `dbpcn_monthly_fees` VALUES (141, 10169, 1697, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:02:23', 'paid', NULL, NULL, '2019-05-15 00:02:23', '2019-05-15 00:02:23');
INSERT INTO `dbpcn_monthly_fees` VALUES (142, 10169, 1697, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:02:23', '2019-06-16 20:06:12');
INSERT INTO `dbpcn_monthly_fees` VALUES (143, 10170, 37, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:03:16', 'paid', NULL, NULL, '2019-05-15 00:03:16', '2019-05-15 00:03:16');
INSERT INTO `dbpcn_monthly_fees` VALUES (144, 10170, 37, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:03:16', '2019-06-16 20:06:13');
INSERT INTO `dbpcn_monthly_fees` VALUES (145, 10171, 1714, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:03:49', 'paid', NULL, NULL, '2019-05-15 00:03:49', '2019-05-15 00:03:49');
INSERT INTO `dbpcn_monthly_fees` VALUES (146, 10171, 1714, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:03:49', '2019-06-16 20:06:13');
INSERT INTO `dbpcn_monthly_fees` VALUES (147, 10172, 12, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:08:26', 'paid', NULL, NULL, '2019-05-15 00:08:26', '2019-05-15 00:08:26');
INSERT INTO `dbpcn_monthly_fees` VALUES (148, 10172, 12, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:08:26', '2019-06-16 20:06:13');
INSERT INTO `dbpcn_monthly_fees` VALUES (149, 10173, 308, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:32:28', 'paid', NULL, NULL, '2019-05-15 00:32:28', '2019-05-15 00:32:28');
INSERT INTO `dbpcn_monthly_fees` VALUES (150, 10173, 308, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:32:28', '2019-06-16 20:06:13');
INSERT INTO `dbpcn_monthly_fees` VALUES (151, 10174, 81, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:34:09', 'paid', NULL, NULL, '2019-05-15 00:34:09', '2019-05-15 00:34:09');
INSERT INTO `dbpcn_monthly_fees` VALUES (152, 10174, 81, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:34:09', '2019-06-16 20:06:13');
INSERT INTO `dbpcn_monthly_fees` VALUES (153, 10175, 74, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:34:27', 'paid', NULL, NULL, '2019-05-15 00:34:27', '2019-05-15 00:34:27');
INSERT INTO `dbpcn_monthly_fees` VALUES (154, 10175, 74, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:34:27', '2019-06-16 20:06:14');
INSERT INTO `dbpcn_monthly_fees` VALUES (155, 10176, 312, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:34:40', 'paid', NULL, NULL, '2019-05-15 00:34:40', '2019-05-15 00:34:40');
INSERT INTO `dbpcn_monthly_fees` VALUES (156, 10176, 312, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:34:40', '2019-06-16 20:06:14');
INSERT INTO `dbpcn_monthly_fees` VALUES (157, 10177, 140, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:35:16', 'paid', NULL, NULL, '2019-05-15 00:35:16', '2019-05-15 00:35:16');
INSERT INTO `dbpcn_monthly_fees` VALUES (158, 10177, 140, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:35:16', '2019-06-16 20:06:14');
INSERT INTO `dbpcn_monthly_fees` VALUES (159, 10178, 1723, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:35:28', 'paid', NULL, NULL, '2019-05-15 00:35:28', '2019-05-15 00:35:28');
INSERT INTO `dbpcn_monthly_fees` VALUES (160, 10178, 1723, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:35:28', '2019-06-16 20:06:14');
INSERT INTO `dbpcn_monthly_fees` VALUES (161, 10179, 46, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:35:42', 'paid', NULL, NULL, '2019-05-15 00:35:42', '2019-05-15 00:35:42');
INSERT INTO `dbpcn_monthly_fees` VALUES (162, 10179, 46, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:35:42', '2019-06-16 20:06:14');
INSERT INTO `dbpcn_monthly_fees` VALUES (163, 10180, 117, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:35:59', 'paid', NULL, NULL, '2019-05-15 00:35:59', '2019-05-15 00:35:59');
INSERT INTO `dbpcn_monthly_fees` VALUES (164, 10180, 117, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:35:59', '2019-06-16 20:06:15');
INSERT INTO `dbpcn_monthly_fees` VALUES (165, 10181, 38, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:36:09', 'paid', NULL, NULL, '2019-05-15 00:36:09', '2019-05-15 00:36:09');
INSERT INTO `dbpcn_monthly_fees` VALUES (166, 10181, 38, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:36:09', '2019-06-16 20:06:15');
INSERT INTO `dbpcn_monthly_fees` VALUES (167, 10182, 111, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:36:37', 'paid', NULL, NULL, '2019-05-15 00:36:37', '2019-05-15 00:36:37');
INSERT INTO `dbpcn_monthly_fees` VALUES (168, 10182, 111, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:36:37', '2019-06-16 20:06:15');
INSERT INTO `dbpcn_monthly_fees` VALUES (169, 10183, 35, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:36:40', 'paid', NULL, NULL, '2019-05-15 00:36:40', '2019-05-15 00:36:40');
INSERT INTO `dbpcn_monthly_fees` VALUES (170, 10183, 35, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:36:40', '2019-06-16 20:06:15');
INSERT INTO `dbpcn_monthly_fees` VALUES (171, 10184, 1689, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:37:06', 'paid', NULL, NULL, '2019-05-15 00:37:06', '2019-05-15 00:37:06');
INSERT INTO `dbpcn_monthly_fees` VALUES (172, 10184, 1689, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:37:06', '2019-06-16 20:06:15');
INSERT INTO `dbpcn_monthly_fees` VALUES (173, 10185, 107, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:37:12', 'paid', NULL, NULL, '2019-05-15 00:37:12', '2019-05-15 00:37:12');
INSERT INTO `dbpcn_monthly_fees` VALUES (174, 10185, 107, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:37:12', '2019-06-16 20:06:16');
INSERT INTO `dbpcn_monthly_fees` VALUES (175, 10186, 1713, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:37:25', 'paid', NULL, NULL, '2019-05-15 00:37:25', '2019-05-15 00:37:25');
INSERT INTO `dbpcn_monthly_fees` VALUES (176, 10186, 1713, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:37:25', '2019-06-16 20:06:16');
INSERT INTO `dbpcn_monthly_fees` VALUES (177, 10187, 77, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:39:29', 'paid', NULL, NULL, '2019-05-15 00:39:29', '2019-05-15 00:39:29');
INSERT INTO `dbpcn_monthly_fees` VALUES (178, 10187, 77, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:39:29', '2019-06-16 20:06:16');
INSERT INTO `dbpcn_monthly_fees` VALUES (179, 10188, 31, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:39:46', 'paid', NULL, NULL, '2019-05-15 00:39:46', '2019-05-15 00:39:46');
INSERT INTO `dbpcn_monthly_fees` VALUES (180, 10188, 31, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:39:46', '2019-06-16 20:06:16');
INSERT INTO `dbpcn_monthly_fees` VALUES (181, 10189, 467, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:40:10', 'paid', NULL, NULL, '2019-05-15 00:40:10', '2019-05-15 00:40:10');
INSERT INTO `dbpcn_monthly_fees` VALUES (182, 10189, 467, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:40:10', '2019-06-16 20:06:16');
INSERT INTO `dbpcn_monthly_fees` VALUES (183, 10190, 479, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:40:30', 'paid', NULL, NULL, '2019-05-15 00:40:30', '2019-05-15 00:40:30');
INSERT INTO `dbpcn_monthly_fees` VALUES (184, 10190, 479, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:40:30', '2019-06-16 20:06:16');
INSERT INTO `dbpcn_monthly_fees` VALUES (185, 10191, 335, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:40:41', 'paid', NULL, NULL, '2019-05-15 00:40:41', '2019-05-15 00:40:41');
INSERT INTO `dbpcn_monthly_fees` VALUES (186, 10191, 335, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:40:41', '2019-06-16 20:06:17');
INSERT INTO `dbpcn_monthly_fees` VALUES (187, 10192, 598, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:40:56', 'paid', NULL, NULL, '2019-05-15 00:40:56', '2019-05-15 00:40:56');
INSERT INTO `dbpcn_monthly_fees` VALUES (188, 10192, 598, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:40:56', '2019-06-16 20:06:17');
INSERT INTO `dbpcn_monthly_fees` VALUES (189, 10193, 75, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:41:05', 'paid', NULL, NULL, '2019-05-15 00:41:05', '2019-05-15 00:41:05');
INSERT INTO `dbpcn_monthly_fees` VALUES (190, 10193, 75, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:41:05', '2019-06-16 20:06:17');
INSERT INTO `dbpcn_monthly_fees` VALUES (191, 10194, 36, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:41:13', 'paid', NULL, NULL, '2019-05-15 00:41:13', '2019-05-15 00:41:13');
INSERT INTO `dbpcn_monthly_fees` VALUES (192, 10194, 36, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:41:13', '2019-06-16 20:06:17');
INSERT INTO `dbpcn_monthly_fees` VALUES (193, 10195, 292, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '00:41:21', 'paid', NULL, NULL, '2019-05-15 00:41:21', '2019-05-15 00:41:21');
INSERT INTO `dbpcn_monthly_fees` VALUES (194, 10195, 292, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 00:41:21', '2019-06-16 20:06:18');
INSERT INTO `dbpcn_monthly_fees` VALUES (195, 10196, 48, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '13:56:55', 'paid', NULL, NULL, '2019-05-15 13:56:55', '2019-05-15 13:56:55');
INSERT INTO `dbpcn_monthly_fees` VALUES (196, 10196, 48, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 13:56:55', '2019-06-16 20:06:18');
INSERT INTO `dbpcn_monthly_fees` VALUES (197, 10197, 76, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '13:59:09', 'paid', NULL, NULL, '2019-05-15 13:59:09', '2019-05-15 13:59:09');
INSERT INTO `dbpcn_monthly_fees` VALUES (198, 10197, 76, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 13:59:09', '2019-06-16 20:06:18');
INSERT INTO `dbpcn_monthly_fees` VALUES (199, 10198, 583, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '14:00:16', 'paid', NULL, NULL, '2019-05-15 14:00:16', '2019-05-15 14:00:16');
INSERT INTO `dbpcn_monthly_fees` VALUES (200, 10198, 583, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 14:00:16', '2019-06-16 20:06:18');
INSERT INTO `dbpcn_monthly_fees` VALUES (201, 10199, 654, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '15:28:59', 'paid', NULL, NULL, '2019-05-15 15:28:59', '2019-05-15 15:28:59');
INSERT INTO `dbpcn_monthly_fees` VALUES (202, 10199, 654, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 15:28:59', '2019-06-16 20:06:18');
INSERT INTO `dbpcn_monthly_fees` VALUES (203, 10200, 129, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '15:29:22', 'paid', NULL, NULL, '2019-05-15 15:29:22', '2019-05-15 15:29:22');
INSERT INTO `dbpcn_monthly_fees` VALUES (204, 10200, 129, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 15:29:22', '2019-06-16 20:06:19');
INSERT INTO `dbpcn_monthly_fees` VALUES (205, 10201, 152, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '15:29:37', 'paid', NULL, NULL, '2019-05-15 15:29:37', '2019-05-15 15:29:37');
INSERT INTO `dbpcn_monthly_fees` VALUES (206, 10201, 152, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 15:29:37', '2019-06-16 20:06:19');
INSERT INTO `dbpcn_monthly_fees` VALUES (207, 10202, 626, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '15:29:46', 'paid', NULL, NULL, '2019-05-15 15:29:46', '2019-05-15 15:29:46');
INSERT INTO `dbpcn_monthly_fees` VALUES (208, 10202, 626, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 15:29:46', '2019-06-16 20:06:19');
INSERT INTO `dbpcn_monthly_fees` VALUES (209, 10203, 315, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '15:30:40', 'paid', NULL, NULL, '2019-05-15 15:30:40', '2019-05-15 15:30:40');
INSERT INTO `dbpcn_monthly_fees` VALUES (210, 10203, 315, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 15:30:40', '2019-06-16 20:06:19');
INSERT INTO `dbpcn_monthly_fees` VALUES (211, 10204, 815, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '15:30:49', 'paid', NULL, NULL, '2019-05-15 15:30:49', '2019-05-15 15:30:49');
INSERT INTO `dbpcn_monthly_fees` VALUES (212, 10204, 815, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 15:30:49', '2019-06-16 20:06:19');
INSERT INTO `dbpcn_monthly_fees` VALUES (213, 10205, 141, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '15:33:13', 'paid', NULL, NULL, '2019-05-15 15:33:13', '2019-05-15 15:33:13');
INSERT INTO `dbpcn_monthly_fees` VALUES (214, 10205, 141, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 15:33:13', '2019-06-16 20:06:20');
INSERT INTO `dbpcn_monthly_fees` VALUES (215, 10206, 142, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '15:33:27', 'paid', NULL, NULL, '2019-05-15 15:33:27', '2019-05-15 15:33:27');
INSERT INTO `dbpcn_monthly_fees` VALUES (216, 10206, 142, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 15:33:27', '2019-06-16 20:06:20');
INSERT INTO `dbpcn_monthly_fees` VALUES (217, 10207, 676, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '15:34:13', 'paid', NULL, NULL, '2019-05-15 15:34:13', '2019-05-15 15:34:13');
INSERT INTO `dbpcn_monthly_fees` VALUES (218, 10207, 676, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 15:34:13', '2019-06-16 20:06:20');
INSERT INTO `dbpcn_monthly_fees` VALUES (219, 10208, 488, 'initial', 2255000.00, '2019-05-15', '2019-05-15', '17:34:03', 'paid', NULL, NULL, '2019-05-15 17:34:03', '2019-05-15 17:34:03');
INSERT INTO `dbpcn_monthly_fees` VALUES (220, 10208, 488, 'monthly', 730249.33, '2019-06-15', NULL, NULL, 'pending', '2019-06-01', '2019-06-05', '2019-05-15 17:34:03', '2019-06-16 20:06:20');
INSERT INTO `dbpcn_monthly_fees` VALUES (221, 10209, 716, 'initial', 2255000.00, '2019-05-16', '2019-05-16', '16:07:17', 'paid', NULL, NULL, '2019-05-16 16:07:17', '2019-05-16 16:07:17');
INSERT INTO `dbpcn_monthly_fees` VALUES (222, 10209, 716, 'monthly', 730249.33, '2019-06-16', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-16 16:07:17', '2019-06-16 20:06:20');
INSERT INTO `dbpcn_monthly_fees` VALUES (223, 10210, 108, 'initial', 2255000.00, '2019-05-16', '2019-05-16', '16:07:44', 'paid', NULL, NULL, '2019-05-16 16:07:44', '2019-05-16 16:07:44');
INSERT INTO `dbpcn_monthly_fees` VALUES (224, 10210, 108, 'monthly', 730249.33, '2019-06-16', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-16 16:07:44', '2019-06-16 20:06:21');
INSERT INTO `dbpcn_monthly_fees` VALUES (225, 10211, 7, 'initial', 2255000.00, '2019-05-16', '2019-05-16', '16:08:34', 'paid', NULL, NULL, '2019-05-16 16:08:34', '2019-05-16 16:08:34');
INSERT INTO `dbpcn_monthly_fees` VALUES (226, 10211, 7, 'monthly', 730249.33, '2019-06-16', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-16 16:08:34', '2019-06-16 20:06:21');
INSERT INTO `dbpcn_monthly_fees` VALUES (227, 10212, 1704, 'initial', 2255000.00, '2019-05-16', '2019-05-16', '21:18:20', 'paid', NULL, NULL, '2019-05-16 21:18:20', '2019-05-16 21:18:20');
INSERT INTO `dbpcn_monthly_fees` VALUES (228, 10212, 1704, 'monthly', 730249.33, '2019-06-16', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-16 21:18:20', '2019-06-16 20:06:21');
INSERT INTO `dbpcn_monthly_fees` VALUES (229, 10213, 39, 'initial', 2255000.00, '2019-05-17', '2019-05-17', '14:13:58', 'paid', NULL, NULL, '2019-05-17 14:13:58', '2019-05-17 14:13:58');
INSERT INTO `dbpcn_monthly_fees` VALUES (230, 10213, 39, 'monthly', 730249.33, '2019-06-17', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-17 14:13:58', '2019-06-16 20:06:21');
INSERT INTO `dbpcn_monthly_fees` VALUES (231, 10214, 301, 'initial', 2255000.00, '2019-05-17', '2019-05-17', '20:17:49', 'paid', NULL, NULL, '2019-05-17 20:17:49', '2019-05-17 20:17:49');
INSERT INTO `dbpcn_monthly_fees` VALUES (232, 10214, 301, 'monthly', 730249.33, '2019-06-17', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-17 20:17:49', '2019-06-16 20:06:21');
INSERT INTO `dbpcn_monthly_fees` VALUES (233, 10215, 790, 'initial', 2255000.00, '2019-05-20', '2019-05-20', '14:47:32', 'paid', NULL, NULL, '2019-05-20 14:47:32', '2019-05-20 14:47:32');
INSERT INTO `dbpcn_monthly_fees` VALUES (234, 10215, 790, 'monthly', 730249.33, '2019-06-20', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-20 14:47:32', '2019-06-16 20:06:22');
INSERT INTO `dbpcn_monthly_fees` VALUES (235, 10216, 83, 'initial', 2255000.00, '2019-05-20', '2019-05-20', '14:50:42', 'paid', NULL, NULL, '2019-05-20 14:50:42', '2019-05-20 14:50:42');
INSERT INTO `dbpcn_monthly_fees` VALUES (236, 10216, 83, 'monthly', 730249.33, '2019-06-20', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-20 14:50:42', '2019-06-16 20:06:22');
INSERT INTO `dbpcn_monthly_fees` VALUES (237, 10217, 766, 'initial', 2255000.00, '2019-05-21', '2019-05-21', '19:07:30', 'paid', NULL, NULL, '2019-05-21 19:07:30', '2019-05-21 19:07:30');
INSERT INTO `dbpcn_monthly_fees` VALUES (238, 10217, 766, 'monthly', 730249.33, '2019-06-21', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-21 19:07:30', '2019-06-16 20:06:22');
INSERT INTO `dbpcn_monthly_fees` VALUES (239, 10218, 709, 'initial', 2255000.00, '2019-05-21', '2019-05-21', '19:08:57', 'paid', NULL, NULL, '2019-05-21 19:08:57', '2019-05-21 19:08:57');
INSERT INTO `dbpcn_monthly_fees` VALUES (240, 10218, 709, 'monthly', 730249.33, '2019-06-21', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-21 19:08:57', '2019-06-16 20:06:22');
INSERT INTO `dbpcn_monthly_fees` VALUES (241, 10219, 80, 'initial', 2255000.00, '2019-05-21', '2019-05-21', '21:47:04', 'paid', NULL, NULL, '2019-05-21 21:47:04', '2019-05-21 21:47:04');
INSERT INTO `dbpcn_monthly_fees` VALUES (242, 10219, 80, 'monthly', 730249.33, '2019-06-21', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-21 21:47:04', '2019-06-16 20:06:22');
INSERT INTO `dbpcn_monthly_fees` VALUES (243, 10220, 316, 'initial', 2255000.00, '2019-05-23', '2019-05-23', '21:08:04', 'paid', NULL, NULL, '2019-05-23 21:08:04', '2019-05-23 21:08:04');
INSERT INTO `dbpcn_monthly_fees` VALUES (244, 10220, 316, 'monthly', 730249.33, '2019-06-23', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-23 21:08:04', '2019-06-16 20:06:23');
INSERT INTO `dbpcn_monthly_fees` VALUES (245, 10221, 466, 'initial', 2255000.00, '2019-05-24', '2019-05-24', '13:42:51', 'paid', NULL, NULL, '2019-05-24 13:42:51', '2019-05-24 13:42:51');
INSERT INTO `dbpcn_monthly_fees` VALUES (246, 10221, 466, 'monthly', 730249.33, '2019-06-24', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-24 13:42:51', '2019-06-16 20:06:23');
INSERT INTO `dbpcn_monthly_fees` VALUES (247, 10222, 487, 'initial', 2255000.00, '2019-05-24', '2019-05-24', '13:44:36', 'paid', NULL, NULL, '2019-05-24 13:44:36', '2019-05-24 13:44:36');
INSERT INTO `dbpcn_monthly_fees` VALUES (248, 10222, 487, 'monthly', 730249.33, '2019-06-24', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-24 13:44:36', '2019-06-16 20:06:23');
INSERT INTO `dbpcn_monthly_fees` VALUES (249, 10149, 72, 'monthly', 730249.33, '2019-07-10', NULL, NULL, 'pending', '2019-07-01', '2019-07-05', '2019-05-27 11:50:51', '2019-06-16 20:06:23');
INSERT INTO `dbpcn_monthly_fees` VALUES (250, 10223, 198, 'initial', 2255000.00, '2019-05-27', '2019-05-27', '19:15:30', 'paid', NULL, NULL, '2019-05-27 19:15:30', '2019-05-27 19:15:30');
INSERT INTO `dbpcn_monthly_fees` VALUES (251, 10223, 198, 'monthly', 730249.33, '2019-06-27', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-27 19:15:31', '2019-06-16 20:06:23');
INSERT INTO `dbpcn_monthly_fees` VALUES (252, 10224, 372, 'initial', 2255000.00, '2019-05-27', '2019-05-27', '21:58:51', 'paid', NULL, NULL, '2019-05-27 21:58:51', '2019-05-27 21:58:51');
INSERT INTO `dbpcn_monthly_fees` VALUES (253, 10224, 372, 'monthly', 730249.33, '2019-06-27', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-27 21:58:51', '2019-06-16 20:06:23');
INSERT INTO `dbpcn_monthly_fees` VALUES (254, 10225, 386, 'initial', 2255000.00, '2019-05-28', '2019-05-28', '20:31:32', 'paid', NULL, NULL, '2019-05-28 20:31:32', '2019-05-28 20:31:32');
INSERT INTO `dbpcn_monthly_fees` VALUES (255, 10225, 386, 'monthly', 730249.33, '2019-06-28', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-28 20:31:32', '2019-06-16 20:06:24');
INSERT INTO `dbpcn_monthly_fees` VALUES (256, 10226, 400, 'initial', 2255000.00, '2019-05-28', '2019-05-28', '20:33:46', 'paid', NULL, NULL, '2019-05-28 20:33:46', '2019-05-28 20:33:46');
INSERT INTO `dbpcn_monthly_fees` VALUES (257, 10226, 400, 'monthly', 730249.33, '2019-06-28', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-28 20:33:46', '2019-06-16 20:06:24');
INSERT INTO `dbpcn_monthly_fees` VALUES (258, 10227, 1705, 'initial', 2255000.00, '2019-05-28', '2019-05-28', '21:11:53', 'paid', NULL, NULL, '2019-05-28 21:11:53', '2019-05-28 21:11:53');
INSERT INTO `dbpcn_monthly_fees` VALUES (259, 10227, 1705, 'monthly', 730249.33, '2019-06-28', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-28 21:11:53', '2019-06-16 20:06:24');
INSERT INTO `dbpcn_monthly_fees` VALUES (260, 10228, 958, 'initial', 2255000.00, '2019-05-28', '2019-05-28', '21:13:03', 'paid', NULL, NULL, '2019-05-28 21:13:03', '2019-05-28 21:13:03');
INSERT INTO `dbpcn_monthly_fees` VALUES (261, 10228, 958, 'monthly', 730249.33, '2019-06-28', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-28 21:13:03', '2019-06-16 20:06:24');
INSERT INTO `dbpcn_monthly_fees` VALUES (262, 10229, 550, 'initial', 2255000.00, '2019-05-29', '2019-05-29', '14:49:00', 'paid', NULL, NULL, '2019-05-29 14:49:00', '2019-05-29 14:49:00');
INSERT INTO `dbpcn_monthly_fees` VALUES (263, 10229, 550, 'monthly', 730249.33, '2019-06-29', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-29 14:49:00', '2019-06-16 20:06:24');
INSERT INTO `dbpcn_monthly_fees` VALUES (264, 10230, 1569, 'initial', 2255000.00, '2019-05-29', '2019-05-29', '15:35:06', 'paid', NULL, NULL, '2019-05-29 15:35:06', '2019-05-29 15:35:06');
INSERT INTO `dbpcn_monthly_fees` VALUES (265, 10230, 1569, 'monthly', 730249.33, '2019-06-29', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-29 15:35:06', '2019-06-16 20:06:25');
INSERT INTO `dbpcn_monthly_fees` VALUES (266, 10231, 1703, 'initial', 2255000.00, '2019-05-29', '2019-05-29', '21:16:40', 'paid', NULL, NULL, '2019-05-29 21:16:40', '2019-05-29 21:16:40');
INSERT INTO `dbpcn_monthly_fees` VALUES (267, 10231, 1703, 'monthly', 730249.33, '2019-06-29', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-29 21:16:40', '2019-06-16 20:06:25');
INSERT INTO `dbpcn_monthly_fees` VALUES (268, 10232, 153, 'initial', 2255000.00, '2019-05-30', '2019-05-30', '14:28:49', 'paid', NULL, NULL, '2019-05-30 14:28:49', '2019-05-30 14:28:49');
INSERT INTO `dbpcn_monthly_fees` VALUES (269, 10232, 153, 'monthly', 730249.33, '2019-06-30', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-30 14:28:49', '2019-06-16 20:06:25');
INSERT INTO `dbpcn_monthly_fees` VALUES (270, 10233, 504, 'initial', 2255000.00, '2019-05-30', '2019-05-30', '19:06:24', 'paid', NULL, NULL, '2019-05-30 19:06:24', '2019-05-30 19:06:24');
INSERT INTO `dbpcn_monthly_fees` VALUES (271, 10233, 504, 'monthly', 730249.33, '2019-06-30', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-30 19:06:24', '2019-06-16 20:06:25');
INSERT INTO `dbpcn_monthly_fees` VALUES (272, 10234, 455, 'initial', 2255000.00, '2019-05-30', '2019-05-30', '20:56:41', 'paid', NULL, NULL, '2019-05-30 20:56:41', '2019-05-30 20:56:41');
INSERT INTO `dbpcn_monthly_fees` VALUES (273, 10234, 455, 'monthly', 730249.33, '2019-06-30', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-30 20:56:41', '2019-06-16 20:06:25');
INSERT INTO `dbpcn_monthly_fees` VALUES (274, 10235, 428, 'initial', 2255000.00, '2019-05-30', '2019-05-30', '20:58:41', 'paid', NULL, NULL, '2019-05-30 20:58:41', '2019-05-30 20:58:41');
INSERT INTO `dbpcn_monthly_fees` VALUES (275, 10235, 428, 'monthly', 730249.33, '2019-06-30', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-30 20:58:41', '2019-06-16 20:06:26');
INSERT INTO `dbpcn_monthly_fees` VALUES (276, 10236, 85, 'initial', 2255000.00, '2019-05-31', '2019-05-31', '14:15:26', 'paid', NULL, NULL, '2019-05-31 14:15:26', '2019-05-31 14:15:26');
INSERT INTO `dbpcn_monthly_fees` VALUES (277, 10236, 85, 'monthly', 730249.33, '2019-07-01', NULL, NULL, 'pending', '2019-06-16', '2019-06-21', '2019-05-31 14:15:26', '2019-06-16 20:06:26');
INSERT INTO `dbpcn_monthly_fees` VALUES (278, 10237, 1707, 'initial', 2255000.00, '2019-06-04', '2019-06-04', '14:10:09', 'paid', NULL, NULL, '2019-06-04 14:10:09', '2019-06-04 14:10:09');
INSERT INTO `dbpcn_monthly_fees` VALUES (279, 10237, 1707, 'monthly', 730249.33, '2019-07-04', NULL, NULL, 'pending', '2019-07-01', '2019-07-05', '2019-06-04 14:10:09', '2019-06-16 20:06:26');
INSERT INTO `dbpcn_monthly_fees` VALUES (280, 10238, 696, 'initial', 2255000.00, '2019-06-04', '2019-06-04', '14:10:16', 'paid', NULL, NULL, '2019-06-04 14:10:16', '2019-06-04 14:10:16');
INSERT INTO `dbpcn_monthly_fees` VALUES (281, 10238, 696, 'monthly', 730249.33, '2019-07-04', NULL, NULL, 'pending', '2019-07-01', '2019-07-05', '2019-06-04 14:10:16', '2019-06-16 20:06:26');
INSERT INTO `dbpcn_monthly_fees` VALUES (282, 10239, 93, 'initial', 2255000.00, '2019-06-05', '2019-06-05', '14:05:09', 'paid', NULL, NULL, '2019-06-05 14:05:09', '2019-06-05 14:05:09');
INSERT INTO `dbpcn_monthly_fees` VALUES (283, 10239, 93, 'monthly', 730249.33, '2019-07-05', NULL, NULL, 'pending', '2019-07-01', '2019-07-05', '2019-06-05 14:05:09', '2019-06-05 14:05:09');
INSERT INTO `dbpcn_monthly_fees` VALUES (284, 10240, 293, 'initial', 2255000.00, '2019-06-05', '2019-06-05', '15:14:30', 'paid', NULL, NULL, '2019-06-05 15:14:30', '2019-06-05 15:14:30');
INSERT INTO `dbpcn_monthly_fees` VALUES (285, 10240, 293, 'monthly', 730249.33, '2019-07-05', NULL, NULL, 'pending', '2019-07-01', '2019-07-05', '2019-06-05 15:14:30', '2019-06-05 15:14:30');
INSERT INTO `dbpcn_monthly_fees` VALUES (286, 10241, 294, 'initial', 2255000.00, '2019-06-05', '2019-06-05', '15:14:37', 'paid', NULL, NULL, '2019-06-05 15:14:37', '2019-06-05 15:14:37');
INSERT INTO `dbpcn_monthly_fees` VALUES (287, 10241, 294, 'monthly', 730249.33, '2019-07-05', NULL, NULL, 'pending', '2019-07-01', '2019-07-05', '2019-06-05 15:14:37', '2019-06-05 15:14:37');
INSERT INTO `dbpcn_monthly_fees` VALUES (288, 10242, 44, 'initial', 2255000.00, '2019-06-05', '2019-06-05', '17:21:56', 'paid', NULL, NULL, '2019-06-05 17:21:56', '2019-06-05 17:21:56');
INSERT INTO `dbpcn_monthly_fees` VALUES (289, 10242, 44, 'monthly', 730249.33, '2019-07-05', NULL, NULL, 'pending', '2019-07-01', '2019-07-05', '2019-06-05 17:21:56', '2019-06-05 17:21:56');
INSERT INTO `dbpcn_monthly_fees` VALUES (290, 10243, 427, 'initial', 2255000.00, '2019-06-07', '2019-06-07', '19:53:31', 'paid', NULL, NULL, '2019-06-07 19:53:31', '2019-06-07 19:53:31');
INSERT INTO `dbpcn_monthly_fees` VALUES (291, 10243, 427, 'monthly', 730249.33, '2019-07-07', NULL, NULL, 'pending', '2019-07-01', '2019-07-05', '2019-06-07 19:53:31', '2019-06-07 19:53:31');
INSERT INTO `dbpcn_monthly_fees` VALUES (292, 10244, 697, 'initial', 2255000.00, '2019-06-10', '2019-06-10', '16:13:04', 'paid', NULL, NULL, '2019-06-10 16:13:04', '2019-06-10 16:13:04');
INSERT INTO `dbpcn_monthly_fees` VALUES (293, 10244, 697, 'monthly', 730249.33, '2019-07-10', NULL, NULL, 'pending', '2019-07-01', '2019-07-05', '2019-06-10 16:13:04', '2019-06-10 16:13:04');
INSERT INTO `dbpcn_monthly_fees` VALUES (294, 10245, 825, 'initial', 2255000.00, '2019-06-10', '2019-06-10', '16:14:41', 'paid', NULL, NULL, '2019-06-10 16:14:41', '2019-06-10 16:14:41');
INSERT INTO `dbpcn_monthly_fees` VALUES (295, 10245, 825, 'monthly', 730249.33, '2019-07-10', NULL, NULL, 'pending', '2019-07-01', '2019-07-05', '2019-06-10 16:14:41', '2019-06-10 16:14:41');
INSERT INTO `dbpcn_monthly_fees` VALUES (296, 10246, 680, 'initial', 2255000.00, '2019-06-10', '2019-06-10', '16:15:24', 'paid', NULL, NULL, '2019-06-10 16:15:24', '2019-06-10 16:15:24');
INSERT INTO `dbpcn_monthly_fees` VALUES (297, 10246, 680, 'monthly', 730249.33, '2019-07-10', NULL, NULL, 'pending', '2019-07-01', '2019-07-05', '2019-06-10 16:15:24', '2019-06-10 16:15:24');
INSERT INTO `dbpcn_monthly_fees` VALUES (298, 10247, 1711, 'initial', 2255000.00, '2019-06-10', '2019-06-10', '16:18:43', 'paid', NULL, NULL, '2019-06-10 16:18:43', '2019-06-10 16:18:43');
INSERT INTO `dbpcn_monthly_fees` VALUES (299, 10247, 1711, 'monthly', 730249.33, '2019-07-10', NULL, NULL, 'pending', '2019-07-01', '2019-07-05', '2019-06-10 16:18:43', '2019-06-10 16:18:43');
INSERT INTO `dbpcn_monthly_fees` VALUES (300, 10248, 17, 'initial', 2255000.00, '2019-06-10', '2019-06-10', '16:20:18', 'paid', NULL, NULL, '2019-06-10 16:20:18', '2019-06-10 16:20:18');
INSERT INTO `dbpcn_monthly_fees` VALUES (301, 10248, 17, 'monthly', 730249.33, '2019-07-10', NULL, NULL, 'pending', '2019-07-01', '2019-07-05', '2019-06-10 16:20:18', '2019-06-10 16:20:18');
INSERT INTO `dbpcn_monthly_fees` VALUES (302, 10249, 1709, 'initial', 2255000.00, '2019-06-10', '2019-06-10', '16:46:52', 'paid', NULL, NULL, '2019-06-10 16:46:52', '2019-06-10 16:46:52');
INSERT INTO `dbpcn_monthly_fees` VALUES (303, 10249, 1709, 'monthly', 730249.33, '2019-07-10', NULL, NULL, 'pending', '2019-07-01', '2019-07-05', '2019-06-10 16:46:52', '2019-06-10 16:46:52');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_payu_approved
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_payu_approved`;
CREATE TABLE `dbpcn_payu_approved` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process` enum('payment_of_fee','activate_user') COLLATE utf8_spanish_ci NOT NULL,
  `user_id` bigint(30) unsigned NOT NULL,
  `success` text COLLATE utf8_spanish_ci NOT NULL,
  `value` decimal(30,2) NOT NULL,
  `detalle` text COLLATE utf8_spanish_ci NOT NULL,
  `referer` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `signature` text COLLATE utf8_spanish_ci NOT NULL,
  `signature2` text COLLATE utf8_spanish_ci NOT NULL,
  `request_all` text COLLATE utf8_spanish_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `referer` (`referer`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `fk_payu_user_id` FOREIGN KEY (`user_id`) REFERENCES `dbpcn_members` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_payu_approved
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_payu_approved` VALUES (1, 'payment_of_fee', 10149, 'Pago de cuota realizada con exito', 730249.33, '72', 'xy3V5/10149/730249.33/1/XFC2N8M4AH/72', 'qHY6W7ui8eZdWvPToQEy9uzgaE~798687~xy3V5/10149/730249.33/1/XFC2N8M4AH/72~730249.33~COP~4', 'fa866fb4572faff3d260baa9bc75dc12', '{\"date\":\"2019.05.27 09:00:15\",\"pse_reference3\":\"900974625\",\"payment_method_type\":\"4\",\"pse_reference2\":\"NIT\",\"commision_pol\":\"0.00\",\"pse_reference1\":\"190.145.44.98\",\"shipping_city\":null,\"bank_referenced_name\":null,\"sign\":\"fa866fb4572faff3d260baa9bc75dc12\",\"extra2\":null,\"extra3\":null,\"operation_date\":\"2019-05-27 09:00:15\",\"payment_request_state\":\"A\",\"billing_address\":null,\"extra1\":null,\"administrative_fee\":\"0.00\",\"administrative_fee_tax\":\"0.00\",\"bank_id\":\"25\",\"nickname_buyer\":null,\"payment_method\":\"25\",\"attempts\":\"1\",\"transaction_id\":\"06dbecaf-367a-4102-a2cf-f08847069844\",\"transaction_date\":\"2019-05-27 09:00:15\",\"test\":\"0\",\"exchange_rate\":\"1.00\",\"ip\":\"190.145.44.98\",\"reference_pol\":\"247275956\",\"tax\":\"0.00\",\"antifraudMerchantId\":null,\"pse_bank\":\"BANCOLOMBIA\",\"state_pol\":\"4\",\"billing_city\":null,\"phone\":\"3853370\",\"error_message_bank\":null,\"shipping_country\":\"CO\",\"error_code_bank\":\"SUCCESS\",\"cus\":\"450660707\",\"commision_pol_currency\":null,\"customer_number\":null,\"description\":\"Pago de Cuota Mensual\",\"merchant_id\":\"798687\",\"administrative_fee_base\":\"0.00\",\"authorization_code\":null,\"currency\":\"COP\",\"shipping_address\":null,\"nickname_seller\":null,\"installments_number\":null,\"value\":\"730249.33\",\"transaction_bank_id\":null,\"billing_country\":\"CO\",\"response_code_pol\":\"1\",\"payment_method_name\":\"PSE\",\"office_phone\":null,\"email_buyer\":\"pasal@palacio.com.co\",\"payment_method_id\":\"4\",\"response_message_pol\":\"APPROVED\",\"airline_code\":null,\"pseCycle\":\"2\",\"risk\":\"0.0\",\"reference_sale\":\"xy3V5\\/10149\\/730249.33\\/1\\/XFC2N8M4AH\\/72\",\"additional_value\":\"0.00\"}', '2019-05-27 11:50:51', '2019-05-27 11:50:51');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_people_type
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_people_type`;
CREATE TABLE `dbpcn_people_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` enum('inactivo','activo') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_people_type
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_people_type` VALUES (1, 'Persona Jurídica', 'activo', '2019-02-25 14:56:04', '2019-02-25 14:56:11');
INSERT INTO `dbpcn_people_type` VALUES (2, 'Persona Natural', 'activo', '2019-02-25 14:56:07', '2019-02-25 14:56:15');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_pre_users
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_pre_users`;
CREATE TABLE `dbpcn_pre_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET latin1 NOT NULL,
  `email` varchar(60) CHARACTER SET latin1 NOT NULL,
  `sponsor_id` int(20) unsigned NOT NULL,
  `firstname` varchar(40) CHARACTER SET latin1 NOT NULL,
  `secondname` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `firstlastname` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `secondlastname` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `sponsor_code` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `password` text CHARACTER SET latin1 NOT NULL,
  `legal_entity` int(2) DEFAULT NULL,
  `birthday` date NOT NULL,
  `t_doc` int(2) DEFAULT NULL,
  `n_doc` varchar(50) CHARACTER SET latin1 NOT NULL,
  `expedition_date` date NOT NULL,
  `expedition_place` varchar(20) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(20) CHARACTER SET latin1 NOT NULL,
  `address` varchar(100) CHARACTER SET latin1 NOT NULL,
  `city` varchar(30) CHARACTER SET latin1 NOT NULL,
  `country_id` int(5) NOT NULL,
  `nit` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `company_phone` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `company_address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `company_city` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `company_country` int(10) DEFAULT NULL,
  `allotment` varchar(10) CHARACTER SET latin1 NOT NULL,
  `payment_upload_status` enum('empty','Rejected','Approved','loaded') COLLATE latin1_spanish_ci DEFAULT NULL,
  `status_pre` enum('Pending','Rejected') COLLATE latin1_spanish_ci DEFAULT 'Pending',
  `sponsor_username` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username_unico` (`username`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE,
  UNIQUE KEY `n_doc` (`n_doc`) USING BTREE,
  KEY `legal_entity` (`legal_entity`) USING BTREE,
  KEY `t_doc` (`t_doc`) USING BTREE,
  KEY `country_id` (`country_id`) USING BTREE,
  KEY `sponsor_id` (`sponsor_id`) USING BTREE,
  KEY `sponsor_username` (`sponsor_username`) USING BTREE,
  CONSTRAINT `fk_country_id` FOREIGN KEY (`country_id`) REFERENCES `dbpcn_countries` (`country_master_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_legal_entity` FOREIGN KEY (`legal_entity`) REFERENCES `dbpcn_people_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_doc` FOREIGN KEY (`t_doc`) REFERENCES `dbpcn_document_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=625 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_pre_users
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_pre_users` VALUES (9, 'pcpalacio', 'a@a.com', 0, 'username reservado por sistema', NULL, '', NULL, '', '', NULL, '0000-00-00', NULL, '99999999', '0000-00-00', '', '', '', '', 47, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Rejected', NULL, '0000-00-00 00:00:00', '2019-04-29 19:37:46');
INSERT INTO `dbpcn_pre_users` VALUES (10, 'mastercode', 'a2@a.com', 0, 'username reservado por sistema', NULL, '', NULL, '', '', NULL, '0000-00-00', NULL, '9999999', '0000-00-00', '', '', '', '', 47, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Rejected', NULL, '0000-00-00 00:00:00', '2019-04-29 19:39:39');
INSERT INTO `dbpcn_pre_users` VALUES (12, 'codigomaster', 'darkness44@hotmail.com', 0, 'username reservado por sistema', NULL, '', NULL, '', '', NULL, '0000-00-00', NULL, '999999', '0000-00-00', '', '', '', '', 47, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Rejected', NULL, '0000-00-00 00:00:00', '2019-04-29 19:40:37');
INSERT INTO `dbpcn_pre_users` VALUES (438, 'porbit', 'oilorivera@gmail.com', 0, 'pablo', 'enrique', 'oilo', 'rivera', 'Xcb10154bvv10149o9U', '$2y$10$wuZNvDRZiKfceTvHok0s3OKX/Ya11Ljtwrs41bLswcJGKIhrEFarK', 2, '1978-06-29', 3, '3701801', '2024-05-08', 'Santa Cruz de La Sie', '76003591', 'Av la salle #500', 'Santa Cruz', 26, NULL, NULL, NULL, NULL, NULL, NULL, '78', 'empty', 'Pending', 'bitboss', '2019-05-07 03:53:47', '2019-05-07 03:53:47');
INSERT INTO `dbpcn_pre_users` VALUES (441, 'adro2237', 'adrianabs2237@gmail.com', 0, 'adriana', '', 'barron', 'saucedo', '5ik10157Pxn10153WrE', '$2y$10$oEPEtPzxdPZFebqzRU45IOSqKd2R.68fjGTZ1abAu5bmhJ2DXIhAy', 2, '1986-08-22', 2, '846923', '2018-10-08', 'barranquilla', '3014029483', 'cra 42H 87-181', 'barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '330', 'empty', 'Pending', 'globalvision', '2019-05-07 03:53:48', '2019-05-07 03:53:48');
INSERT INTO `dbpcn_pre_users` VALUES (444, 'walteralvarado', 'walteralvaradotfi@gmail.com', 0, 'walter', 'oliver', 'alvarado', 'arroyave', 'Z9f10160jZF10158JKr', '$2y$10$LZMB4OO9y/Auq8Yas3DeTuU/MocPQm9ns84NY4hm3oyy40bQDhbmG', 2, '1974-05-05', 1, '18395480', '1992-08-31', 'Calarca Quindio', '3145468231', 'carrera 5 no 13 35', 'Quimbaya Quindio', 47, NULL, NULL, NULL, NULL, NULL, NULL, '128', 'empty', 'Pending', 'paulhstevens', '2019-05-07 03:53:49', '2019-05-07 03:53:49');
INSERT INTO `dbpcn_pre_users` VALUES (445, 'ayopcnetwork', 'ayo1023865295@hotmail.com', 0, 'dairo', 'fabian', 'hernandez', 'saavedra', 'eut10161LPt10157kl2', '$2y$10$WYvvXO70uZhfp/AvgXDd7eYeCzEF248CxCKBiH1y.pxMOMKZkKlYC', 2, '1986-09-19', 1, '1023865295', '2004-09-23', 'Bogota', '3173781438', 'Calle 27 sur # 8a - 21', 'Bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '599', 'empty', 'Pending', 'adro2237', '2019-05-07 03:53:49', '2019-05-07 03:53:49');
INSERT INTO `dbpcn_pre_users` VALUES (446, 'danielarce234', 'danielarce234@hotmail.com', 0, 'daniel', 'felipe', 'aece', 'polania', 'ElE10162bmh10157CXv', '$2y$10$v0S3yDWx8yXp6RUescPdWertWbkFfVJlfG2b827UH8Bk/a2Lxsbxu', 2, '1989-10-27', 1, '1.075.239.611', '2007-11-14', 'Neiva', '3173659405', 'Calle 46 no 16 224', 'Neiva', 47, NULL, NULL, NULL, NULL, NULL, NULL, '298', 'empty', 'Pending', 'adro2237', '2019-05-07 03:53:49', '2019-05-07 03:53:49');
INSERT INTO `dbpcn_pre_users` VALUES (447, 'sofipcnetwork', 'gloriasofia26@gmail.com', 0, 'gloria', 'sofia', 'patiÑo', 'ramirez', 're210163BHx10161Og8', '$2y$10$g9WkhGKoIsDRRsMjVvy/S.DdsKffoza3gf5xilw0SNFVLnfAqj11S', 2, '1988-09-19', 1, '1117503958', '2006-12-16', 'FLORECIA', '3182099801', 'CALLE 27 SUR # 8A - 21', 'BOGOTA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '601', 'empty', 'Pending', 'ayopcnetwork', '2019-05-07 03:53:50', '2019-05-07 03:53:50');
INSERT INTO `dbpcn_pre_users` VALUES (450, 'thelegend', 'ivanvelandiasuarez2@gmail.com', 0, 'iván', 'alexander', 'velandia', 'suarez', 'mBr10166EpU10159IpP', '$2y$10$duqykp7mMxoftqvGGvOsj.T0sZJOyxVdsO2O1OEHe52fe9Q5SsuQG', 2, '1988-07-04', 1, '1052385097', '2006-07-12', 'Duitama', '3007104319', 'Cra 22 # 14 70', 'Duitama', 47, NULL, NULL, NULL, NULL, NULL, NULL, '50', 'empty', 'Pending', 'adelito62', '2019-05-07 03:53:50', '2019-05-07 03:53:50');
INSERT INTO `dbpcn_pre_users` VALUES (457, 'anyipaolasalasalarcon', 'anypao077@gmail.com', 0, 'anyi', 'paola', 'salas', 'alarcon', 'OR510173F2b10152kVy', '$2y$10$3DXjmLhZ4lbCR72IKagtfO/J6Eo2Q8/fe9sgiSiD8S4x.tIKVNF4e', 2, '1996-08-07', 1, '1020818812', '2014-09-17', 'Bogota D.C', '3002641528', 'calle 79b # 42 494', 'Bogota D.C', 47, NULL, NULL, NULL, NULL, NULL, NULL, '97', 'empty', 'Pending', 'wolf_ecu', '2019-05-07 03:53:52', '2019-05-07 03:53:52');
INSERT INTO `dbpcn_pre_users` VALUES (460, 'fabiop28', 'fabioalonsop2883@gmail.com', 0, 'fabio', 'alonso', 'peña', 'villamizar', 'uqv10176sl510151dWJ', '$2y$10$wlHTa9VZ5bERe58XQNJUlOwhy7QFN8IlwmdeNE6JSkE.vLs..w1Pu', 2, '1983-11-28', 1, '91524184', '2001-11-30', 'Bucaramanga', '3175165067', 'carrera 41 # 52-87', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '1738', 'empty', 'Pending', 'luhercar', '2019-05-07 03:53:52', '2019-05-07 03:53:52');
INSERT INTO `dbpcn_pre_users` VALUES (466, 'oviel', 'oviel.mg@hotmail.com', 0, 'oviel', '', 'mendoza', 'guerrero', 'tPH101829Ia10156jaA', '$2y$10$N1wH3w/.nVc23IeFXkkDveuziqL31ZTF6zrz32i7RI5i/YUBYGNSe', 2, '1970-08-15', 1, '91275303', '1989-02-28', 'Bucaramanga', '3187441565', 'Circunvalar 36a No 104-128 Torre3 Apto 1204 Altos de la Pradera', 'Bucaramanga', 47, NULL, NULL, NULL, NULL, NULL, NULL, '1727', 'empty', 'Pending', 'trillonario', '2019-05-07 03:53:53', '2019-05-07 03:53:53');
INSERT INTO `dbpcn_pre_users` VALUES (468, 'remberyanita', 'rembertogem@gmail.com', 0, 'remberto', 'ricardo segundo', 'peña', 'pacheco', '0fY1018499x10153Qkm', '$2y$10$uJX/bgYZnG7uaURGQTBVluOua2u2QmkWyZRqFOSw.l7', 2, '1980-06-02', 1, '78036862', '1999-07-09', 'cienega de oro', '3008747300', 'calle 93 #71-117', 'monteria', 47, NULL, NULL, NULL, NULL, NULL, NULL, '101', 'empty', 'Pending', 'globalvision', '2019-05-07 03:53:54', '2019-05-07 03:53:54');
INSERT INTO `dbpcn_pre_users` VALUES (470, 'drago0524', 'urdiales240572@hotmail.com', 0, 'dagoberto', 'enrique', 'urdiales', 'rodriguez', 'Kxd101865eO10181Alr', '$2y$10$WnPg0bycLNNxH2.zz2BSb.GPEI4T.ueuvfTct92yk8u2rXQpdoT82', 2, '1972-05-24', 1, '77170640', '1990-11-09', 'valledupar', '3003258420', 'KR 34 A BIS # 18 A2 - 13', 'Valledupar', 47, NULL, NULL, NULL, NULL, NULL, 47, '307', 'empty', 'Pending', 'carolinayjimmy', '2019-05-07 03:53:54', '2019-05-07 03:53:54');
INSERT INTO `dbpcn_pre_users` VALUES (473, 'dana', 'duvercadena83@gmail.com', 0, 'duver', '', 'cadena', 'yucuma', 'lvz10189yMV101678Fj', '$2y$10$2HZZUrxZQ/wo9kTm0PX4.uMnfIHGXXay7UuXjMukBFP', 2, '1983-07-12', 1, '7724788', '2001-08-16', 'neiva', '3016247157', 'KR 88c no 63  67 sur torre 11 apto 104', 'Bogotá D.C.', 47, NULL, NULL, NULL, NULL, NULL, NULL, '40', 'empty', 'Pending', 'eliasbm', '2019-05-07 03:53:55', '2019-05-07 03:53:55');
INSERT INTO `dbpcn_pre_users` VALUES (474, 'anjubama', 'anjubama@gmail.com', 0, 'andres', 'julian', 'barrera', 'maya', 'eeY10190M8g10171Lfn', '$2y$10$Hzfik6T6Csdx1DkVDgHTXOggO7IQpUWOs.Zu0JNrJlp', 2, '1985-11-10', 1, '1020393122', '2004-03-24', 'Bello', '3503497151', 'calle 1a sur #31-114 apr 303', 'Medellín', 47, NULL, NULL, NULL, NULL, NULL, 47, '105', 'empty', 'Pending', 'georgemaster', '2019-05-07 03:53:55', '2019-05-07 03:53:55');
INSERT INTO `dbpcn_pre_users` VALUES (476, 'smartbusiness', 'teamsmartbusiness@gmail.com', 0, 'jimmy', 'orlando', 'pulido', 'alvarado', 'XXs10192IMU10165JEO', '$2y$10$ICpZ4/lgTZC4ISXhHiiWqe55lWarV8qP0SuWbaCSSYaxlbnr1WtDq', 2, '1975-08-06', 1, '79828458', '1993-12-10', 'BOGOTÁ', '3209162795', 'Calle 145 #85-80 Torre 11 Apto 244 Balcones de la Colina', 'Bogotá', 47, NULL, NULL, NULL, NULL, NULL, NULL, '33', 'empty', 'Pending', 'farcoin93', '2019-05-07 03:53:55', '2019-05-07 03:53:55');
INSERT INTO `dbpcn_pre_users` VALUES (480, 'eduardotordecilla', 'asesorofmarketing@gmail.com', 0, 'eduardo', 'enrique', 'tordecilla', 'misal', 'O5a10196ym210181WQl', '$2y$10$bZqG4EBbVhwPTPNS/AJ7qOSqP1xWO6pQXbVC2aYER0B', 2, '1988-11-05', 1, '1027958755', '2006-12-04', 'Apartado', '3502349315', 'asesorofmarketing@gmail.com', 'Apratado', 47, NULL, NULL, NULL, NULL, NULL, NULL, '715', 'empty', 'Pending', 'carolinayjimmy', '2019-05-07 03:53:56', '2019-05-07 03:53:56');
INSERT INTO `dbpcn_pre_users` VALUES (482, 'ccasas', 'casasherrerac@gmail.com', 0, 'cristian', 'javier', 'casas', 'herrera', 'W1e10198fWP10156KTw', '$2y$10$YJbUEwNaPq1HvSkmUBrjue/81RcscMFPzLUD8rXd9Up6dSj9NWiyu', 2, '1991-05-27', 1, '1095808766', '2009-06-02', 'Floridablanca', '3212551127', 'bucarica cuarta etapa torre 13-25b apto 411', 'Floridablanca', 47, NULL, NULL, NULL, NULL, NULL, NULL, '309', 'empty', 'Pending', 'trillonario', '2019-05-07 03:53:57', '2019-05-07 03:53:57');
INSERT INTO `dbpcn_pre_users` VALUES (483, 'betitudis', 'hernusga@gmail.com', 0, 'beatriz', '', 'moreno', 'giménez', 'ot610199aQb10180ALQ', '$2y$10$2lCQzVQh8uVCncL9tpZzbOa4CyjfT7s5XcvDYhjqX/t', 2, '1967-11-11', 1, '51877681', '1985-12-05', 'Bogotá', '3115904193', 'Calle 28 sur # 4-03 este', 'Bogotá', 47, NULL, NULL, NULL, NULL, NULL, NULL, '104', 'empty', 'Pending', 'hernuesga', '2019-05-07 03:53:57', '2019-05-07 03:53:57');
INSERT INTO `dbpcn_pre_users` VALUES (485, 'evacla', 'claudialilianaramirez22@gmail.com', 0, 'claudia', 'liliana', 'ramirez', 'lÓpez', 'ik110201U4v10177bW5', '$2y$10$KhiZl27h3PdcstpYzUB.ve11pUug7HpadGRmgLv4Ozz', 2, '1974-10-22', 1, '52318485', '1992-11-17', 'Bogota d.c', '3124576903', 'calle 138 # 58 d - 01 int 7 apto 207  (conjunto colina campeste)', 'Bogota d.c', 47, NULL, NULL, NULL, NULL, NULL, NULL, '1582', 'empty', 'Pending', 'wtpropiedad1', '2019-05-07 03:53:57', '2019-05-07 03:53:57');
INSERT INTO `dbpcn_pre_users` VALUES (487, 'jnetzer', 'jamez.netzer@gmail.com', 0, 'jamez', 'netser', 'carmona', 'dominguez', 'giF10203SkI10195Z44', '$2y$10$Ph3ZheBP4gIL4.kk1Cl4J.rT3GT7bt16cwcCyR60Qx3', 2, '1975-09-04', 1, '10027482', '1994-06-20', 'Pereira', '3148904094', 'Calle 9 10-160 Torre 3 Apto 304 Mitaca', 'Dosquebradas', 47, NULL, NULL, NULL, NULL, NULL, NULL, '310', 'empty', 'Pending', 'housedream', '2019-05-07 03:53:58', '2019-05-07 03:53:58');
INSERT INTO `dbpcn_pre_users` VALUES (488, 'omega', 'cosincogroup@gmail.com', 0, 'maritza', '', 'pineda', 'celis', 'Uhz10204BGh10182nea', '$2y$10$aa8hppP2sbgKVXtzTas/u.Xvp5RDRVNKe2tG6sUEBk2', 2, '1971-10-25', 1, '63478758', '1990-10-03', 'Bucaramanga', '3182725145', 'Circunvalar 36a No 104 128 Torre 3 1204, Altos de la Pradera', 'Bucaramanga', 47, NULL, NULL, NULL, NULL, NULL, 47, '1726', 'empty', 'Pending', 'oviel', '2019-05-07 03:53:58', '2019-05-07 03:53:58');
INSERT INTO `dbpcn_pre_users` VALUES (490, 'emezrod', 'emezrod@gmail.com', 0, 'eliezer', 'segundo', 'meza', 'rodriguez', 'jhj10206WMQ10163FPq', '$2y$10$B3WBNp.agMc6ujpv8Mu3HeYDo0mf/16CMBhFnkQqQi6', 2, '1988-09-07', 1, '1068660530', '2006-11-03', 'CIENAGA DE ORO', '3504825598', 'CRA 16 1 - 70', 'CIENAGA DE ORO', 47, NULL, NULL, NULL, NULL, NULL, NULL, '334', 'empty', 'Pending', 'sofipcnetwork', '2019-05-07 03:53:59', '2019-05-07 03:53:59');
INSERT INTO `dbpcn_pre_users` VALUES (491, 'jdavids88', 'jdavids88@gmail.com', 0, 'juan', 'david', 'salazar', 'salazar', '1zw10207VPz10164dUF', '$2y$10$d/L8c22W2MtP8GtKhr2RsuJyzrEoWehE64gOxYQt0z2', 2, '1988-01-24', 1, '1094894684', '2006-02-10', 'armenia', '3103720418', 'cra15#5n19', 'Armenia', 47, NULL, NULL, NULL, NULL, NULL, NULL, '709', 'empty', 'Rejected', 'dyjingenieria', '2019-05-07 03:53:59', '2019-05-20 17:12:50');
INSERT INTO `dbpcn_pre_users` VALUES (492, 'kevinc', 'k.carmonadominguez@gmail.com', 0, 'kevin', 'lussac', 'carmona', 'dominguez', 'B6X10208ShP10203cj4', '$2y$10$pdbtLMFq6sfRwQLiSo6TNebBZl1YZ8GRzk0HJr8dguh', 2, '1988-04-17', 1, '1126001723', '2009-12-04', 'LONDRES', '7506146866', '8 STAVELEY CLOSE, E9 6DY', 'LONDON', 65, NULL, NULL, NULL, NULL, NULL, NULL, '314', 'empty', 'Pending', 'jnetzer', '2019-05-07 03:53:59', '2019-05-07 03:53:59');
INSERT INTO `dbpcn_pre_users` VALUES (497, 'fortalezaeamm', 'monasterios.e@gmail.com', 0, 'eliana', 'antonia', 'monasterios', 'monasterios', 'esv102138qL1020388b', '$2y$10$TwDddBRdRPcvLP13nVvo2.2nhpRvDO.v3kx3ZB5Xahg', 2, '1964-08-16', 2, '0962663092', '2018-07-31', 'Guayaquil', '958957128', 'Av. Huayna Capac 5-36  y Mariscal Lamar', 'Cuenca', 62, NULL, NULL, NULL, NULL, NULL, 62, '313', 'empty', 'Pending', 'jnetzer', '2019-05-07 03:54:00', '2019-05-07 03:54:00');
INSERT INTO `dbpcn_pre_users` VALUES (498, 'fdoluque', 'fdoluque@hotmail.com', 0, 'fernando', '', 'luque', 'velasquez', 'nAh10214V8x10175atf', '$2y$10$IyGMCih.99qLrVXePmOFFOF.tPSQAswx1SVZgZAy0yf', 2, '1968-02-09', 1, '79443441', '1986-05-02', 'Bogota', '3138772151', 'CR 8 # 62-50 T.5 AP.204', 'Ibague', 47, NULL, NULL, NULL, NULL, NULL, NULL, '79', 'empty', 'Pending', 'carly', '2019-05-07 03:54:01', '2019-05-07 03:54:01');
INSERT INTO `dbpcn_pre_users` VALUES (499, 'jefwiluy', 'smyhdani@gmail.com', 0, 'sandra', 'milena', 'cuy', 'hernandez', 'Y9E10215kAv10192MW4', '$2y$10$MvDqnNJ3FlGp6EXKJNTKtOQ19YAieAmoksh94F5Gsh9', 2, '1983-09-29', 2, '53009290', '2001-11-29', 'Bogota', '3214631808', 'DIAGONAL 2 #21A43', 'BOGOTA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '29', 'empty', 'Pending', 'smartbusiness', '2019-05-07 03:54:01', '2019-05-07 03:54:01');
INSERT INTO `dbpcn_pre_users` VALUES (500, 'mildreth', 'mildrethcorzo18@gmail.com', 0, 'mildreth', 'liliana', 'corzo', 'banderas', 'o3i10216l3910150FcV', '$2y$10$5wulqlK3v/uKTffBujwLuurdboNKDljdIAkbxGENBAJ', 2, '1977-12-23', 1, '49787353', '1997-01-23', 'guajira', '3045473188', 'Cra 66B numero 49-27', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '290', 'empty', 'Pending', 'cabapella', '2019-05-07 03:54:01', '2019-05-07 03:54:01');
INSERT INTO `dbpcn_pre_users` VALUES (503, 'alejo3705', 'alejo3705@gmail.com', 0, 'alejandro', '', 'zapata', 'saldarriaga', 'EHH10219q6H10190Hcp', '$2y$10$QhS6aixadJT7.hVhsphQfeQQibsSjUPjtm/qhA.Qd74', 2, '1985-07-05', 1, '98763915', '2003-07-07', 'ciudad de medellin', '3122587407', 'Cra 86 No 37 97', 'Medellín', 47, NULL, NULL, NULL, NULL, NULL, 47, '27', 'empty', 'Pending', 'anjubama', '2019-05-07 03:54:02', '2019-05-07 03:54:02');
INSERT INTO `dbpcn_pre_users` VALUES (504, 'exitosa777', 'dora.navas@hotmail.com', 0, 'dora', 'ligia', 'navas', 'merchan', 'i5910220Fm510165dom', '$2y$10$llHOj6c..ttKwijA/EIsR.v20bURfqvtZeSVdGmSCBf', 2, '1965-04-14', 1, '39641195', '1983-12-12', 'bogota', '3505088058', 'av 30 29 30', 'bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '296', 'empty', 'Pending', 'farcoin93', '2019-05-07 03:54:02', '2019-05-07 03:54:02');
INSERT INTO `dbpcn_pre_users` VALUES (506, 'orlandomosquera', 'omosquera@unal.edu.co', 0, 'orlando', '', 'mosquera', 'rodríguez', 'obo1022212w10153qj5', '$2y$10$q/PoPadNE8jklYM7EDOteeQyi/4WbLsx5KFo.H9IRb2yW7Kj0gXAm', 2, '1963-12-02', 1, '5712390', '1981-12-14', 'Puente Nacional', '3133921310', 'Cra 34 10-12 sur', 'Bogotá', 47, NULL, NULL, NULL, NULL, NULL, NULL, '110', 'empty', 'Pending', 'globalvision', '2019-05-07 03:54:03', '2019-05-07 03:54:03');
INSERT INTO `dbpcn_pre_users` VALUES (507, 'mtmh2019', 'maryter73@hotmail.com', 0, 'maria', 'teresa', 'marenco', 'hurtado', 'KHl10223egL10221nvP', '$2y$10$W6Eb3korOszS48MUTufpGOQ5ioSJ2HPvDU5qFt.Rt62', 2, '1973-10-27', 1, '57303974', '1993-02-19', 'Pivijay', '3126045556', 'Calle 45A # 17-60 Villa Zambrano', 'Soledad', 47, NULL, NULL, NULL, NULL, NULL, NULL, '311', 'empty', 'Pending', 'emjv2019', '2019-05-07 03:54:03', '2019-05-07 03:54:03');
INSERT INTO `dbpcn_pre_users` VALUES (509, 'camiju', 'joseevv01@gmail.com', 0, 'jose', 'ezequiel', 'vega', 'vargas', 'V4B10225wwH102103LF', '$2y$10$fHAJCdFjYh4Ly1Fu52n2u.EezeGYhYyEH9ACvg6ffqQ', 2, '1973-09-29', 1, '79639438', '1992-03-09', 'BOGOTA D.C.', '3014433889', 'KA 1 ESTE 20 A 65', 'SOACHA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '164', 'empty', 'Pending', 'billions', '2019-05-07 03:54:04', '2019-05-07 03:54:04');
INSERT INTO `dbpcn_pre_users` VALUES (510, 'dnsd2019', 'divasantiagoempresaria@hotmail.com', 0, 'diva', '', 'santiago', 'de rozo', 'y5f10226tiV10223jBv', '$2y$10$tmESkmskkGegSfrCzXubmOSbEHiSkvDhEQytALTsHF9', 2, '1954-12-12', 1, '27766180', '1976-01-17', 'Ocaña', '3014087034', 'Transversal 41 # 45-289 El  Parque', 'Soledad', 47, NULL, NULL, NULL, NULL, NULL, NULL, '306', 'empty', 'Pending', 'mtmh2019', '2019-05-07 03:54:04', '2019-05-07 03:54:04');
INSERT INTO `dbpcn_pre_users` VALUES (512, 'humanhelp', 'oviel.mg@gmail.com', 0, 'james', 'enrique', 'mendoza', 'guerrero', 'ZVA10228Cb310204jNy', '$2y$10$XCq6ne1jp9G6Axl4UUtpb.U7lksc1zmIitHlGTWIxtWW.PthsXYKe', 1, '1962-10-18', 1, '91422965', '1981-11-22', 'Barrancabermeja', '3187441565', 'Circunvalar 36a No 104-128 Torre3 Apto 1204 Altos de la Pradera', 'Bucaramanga', 47, '900482129', 'FUNDACION HUMAN HELP', '3187441565', 'CALLE 55A No 1-27 APTO 401 B. CENTAUROS', 'BUCARAMANGA', 47, '1728', 'empty', 'Pending', 'omega', '2019-05-07 03:54:04', '2019-05-07 03:54:04');
INSERT INTO `dbpcn_pre_users` VALUES (513, 'ameliabillete', 'ameber19845@gmail.com', 0, 'amelia', 'andrea', 'berrio', 'luna', 'UGu10229oQf10195Ojt', '$2y$10$ihYBv34CHtqVgh0YRlVt3u6z2Gguejq7jllhnKwV6sY', 2, '1984-01-28', 1, '42693377', '2002-03-20', 'Copacabana', '3184287200', 'Carrera 60A # 56-32 apto 301', 'Copacabana', 47, NULL, NULL, NULL, NULL, NULL, NULL, '574', 'empty', 'Pending', 'housedream', '2019-05-07 03:54:04', '2019-05-07 03:54:04');
INSERT INTO `dbpcn_pre_users` VALUES (514, 'sersqintegramos', 'sersqintegramos@gmail.com', 0, 'ricardo', 'ser', 'serrano', 'quijano', 'ad410230BT810227MYr', '$2y$10$WmHZBSxg0PynUy8IwYfJ4e6Sx47bvtkoMvK10S5sbkL', 2, '1969-02-17', 1, '72154530', '1987-04-30', 'BARRANQUILLA', '57', 'CARRERA 44 # 65-05', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '8', 'empty', 'Pending', 'camilo1140', '2019-05-07 03:54:05', '2019-05-07 03:54:05');
INSERT INTO `dbpcn_pre_users` VALUES (515, 'esteban', 'johannacastro-@hotmail.com', 0, 'johanna', 'cecilia', 'castro', 'sandoval', 'QQT10231VHG10210PtJ', '$2y$10$/2NJZ9fhxfxzI1ID084Z3Opku0Jxijp0kDIzWDCwK4PDHbE2W/ywe', 2, '1985-03-13', 1, '53040158', '2003-04-04', 'bogota', '3107518809', 'carrera 30 No. 35 - 41', 'bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '15', 'empty', 'Pending', 'billions', '2019-05-07 03:54:05', '2019-05-07 03:54:05');
INSERT INTO `dbpcn_pre_users` VALUES (516, 'pc2101', 'johana.riveros2101@gmail.com', 0, 'ediyohana', '', 'riveros', 'ortiz', 'biV102320u110222EKn', '$2y$10$qRRCZDMqXcLeXhYxi2uEhO/0UO9w27JkZ9Ks.5l8ArlQgjXV9Vw5u', 2, '1980-01-21', 1, '52200608', '1998-07-30', 'BOGOTA', '3017598580', 'CALLE 20 # 2 B BIS 13', 'BOGOTA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '116', 'empty', 'Pending', 'orlandomosquera', '2019-05-07 03:54:05', '2019-05-07 03:54:05');
INSERT INTO `dbpcn_pre_users` VALUES (517, 'lacolmena', 'cudrisdj@gmail.com', 0, 'jose', 'daniel', 'cudris', 'duarte', 'Lfz10233RRE101890WM', '$2y$10$e9GdNYq2i8I57VjnBIJb9.lwPtNdRIO4pOdOJVhxgNc', 2, '1993-01-14', 1, '1057546927', '2011-02-11', 'SOATA', '3013308139', 'Cra 65b No. 32e-20', 'Medellin', 47, NULL, NULL, NULL, NULL, NULL, NULL, '826', 'empty', 'Pending', 'dana', '2019-05-07 03:54:05', '2019-05-07 03:54:05');
INSERT INTO `dbpcn_pre_users` VALUES (519, 'richman10', 'rfabianp@gmail.com', 0, 'rene', 'fabian', 'parra', 'pacheco', 'cF9102359fm10224HPX', '$2y$10$0jPqQs6pcBQdu4G./2dQTO/TztkyeQzRuyfWKUp2/NR', 2, '1981-11-15', 1, '80093196', '1999-11-22', 'Bogota', '3164684276', 'Calle 75 # 97-31', 'Bogota', 47, NULL, NULL, NULL, NULL, NULL, 47, '456', 'empty', 'Pending', 'sergioparra', '2019-05-07 03:54:06', '2019-05-07 03:54:06');
INSERT INTO `dbpcn_pre_users` VALUES (520, 'manunetwork', 'manuel.arana@gmail.com', 0, 'manuel', 'de jesus', 'arana', 'forero', 'y67102362Po10177nNd', '$2y$10$MWakd0CUrkZPtfL64txK4.PXPtBBV3QBGklyduWZuYS', 2, '1955-10-17', 1, '79142559', '1976-12-07', 'BOGOTA', '3153331115', 'Transversal 57 # 104 - 44 Ap.101 - Bogotá D.C.', 'BOGOTA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '908', 'empty', 'Pending', 'wtpropiedad1', '2019-05-07 03:54:06', '2019-05-07 03:54:06');
INSERT INTO `dbpcn_pre_users` VALUES (523, 'yezidrod', 'yesyrodriguez99@gmail.com', 0, 'jaider', 'yezid', 'rodriguez', 'chaparro', 'd5l102395EC10232I0p', '$2y$10$YTF.6cW/4b6S7tMAmWjuBOKsgvMIPhKYpYD5u7HQqGSv1rdu0s2Ni', 2, '1989-02-28', 1, '1144126492', '2007-06-26', 'CALI', '3505757824', 'CARRERA 75 I  # 62 33 SUR', 'BOGOTA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '99', 'empty', 'Pending', 'pc2101', '2019-05-07 03:54:07', '2019-05-07 03:54:07');
INSERT INTO `dbpcn_pre_users` VALUES (524, 'germayago', 'germayago@gmail.com', 0, 'german', '', 'ayala', 'gomez', '1pF10240C531022865k', '$2y$10$jRyaSDS/LUNGBoY4/lSPZeG2LhLvv4qnojii721WLwWxs0GhfW2Oq', 2, '1960-08-07', 1, '91212497', '1979-06-13', 'BUCARAMANGA', '3183771509', 'AVENIDA CIRCUNVALAR 35-117 C73', 'BUCARAMANGA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '1729', 'empty', 'Pending', 'humanhelp', '2019-05-07 03:54:07', '2019-05-07 03:54:07');
INSERT INTO `dbpcn_pre_users` VALUES (526, 'franko2r', 'kaboompub@gmail.com', 0, 'francisco', 'raul', 'restrepo', 'castilla', 'q5n10242MIK10203XHG', '$2y$10$MPTP5Tz0n5.lJowbS0/bHuQ8ly1ASazp9gu.u.qoYG1', 2, '1985-02-15', 1, '8028559', '2003-02-27', 'Medellin', '3184096207', 'Cra 8 num 21-45 apto 201', 'Monteria', 47, NULL, NULL, NULL, NULL, NULL, NULL, '300', 'empty', 'Pending', 'jnetzer', '2019-05-07 03:54:07', '2019-05-07 03:54:07');
INSERT INTO `dbpcn_pre_users` VALUES (527, 'luzelenaandrade', 'luzelenandrade@hotmail.com', 0, 'luz', 'elena', 'andrade', 'urbano', 'Wgt10243dlZ101817gk', '$2y$10$zmtPw5aSdOhfhfOd8.c2fOQ0frrMX3dwkTZ4AhBSW2M', 2, '1960-11-06', 1, '34536074', '1979-07-10', 'Popayan', '3122897653', 'calle 26 AN 8.27', 'Popayan', 47, NULL, NULL, NULL, NULL, NULL, 47, '816', 'empty', 'Pending', 'carolinayjimmy', '2019-05-07 03:54:07', '2019-05-07 03:54:07');
INSERT INTO `dbpcn_pre_users` VALUES (528, 'masterpro90', 'camitrujillo9005@gmail.com', 0, 'cristian', 'camilo', 'trujillo', 'arango', 'wLz102442eZ10241kqt', '$2y$10$4CXCNFXe5YqUn8GjBdzRpugbckL0X6y3pCdJ35oGVJS', 2, '0000-00-00', 1, '1037605288', '0000-00-00', 'Envigado', '3023892816', 'Cr 6a# 47a - 40', 'Medellin', 47, NULL, NULL, NULL, NULL, NULL, NULL, '741', 'empty', 'Pending', 'juanjose', '2019-05-07 03:54:08', '2019-05-07 03:54:08');
INSERT INTO `dbpcn_pre_users` VALUES (529, 'oscar58', 'oscararrieta58@gmail.com', 0, 'oscar', 'elias', 'arrieta', 'villalobos', 'iLQ10245NCa101766pv', '$2y$10$HWwmUKFVLgQW2AVczYP0TOoXxrvk2HQXQSmXtHfIImB0t/v8w/3Ae', 2, '1955-02-13', 1, '8675946', '1976-12-09', 'Barranquilla', '3012865637', 'Calle 45 # 33 - 90 casa 17', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '329', 'empty', 'Pending', 'fabiop28', '2019-05-07 03:54:08', '2019-05-07 03:54:08');
INSERT INTO `dbpcn_pre_users` VALUES (532, 'yuargypc2019', 'yuargy8@gmail.com', 0, 'yuly', 'ermelina', 'arango', 'giraldo', 'dIo10248Cjo10244MJc', '$2y$10$A6ypaMRVsBC6ljiwKTlrbuFWvqrUWdboMgcv2OnoVqPeiVZkMr.4u', 2, '0000-00-00', 1, '30387020', '0000-00-00', 'LA DORADA', '3184902566', 'CARRERA 6 A N. 47A 40 BLOQUE 4 APARTAMENTO 1168', 'MEDELLIN', 47, NULL, NULL, NULL, NULL, NULL, NULL, '628', 'empty', 'Pending', 'masterpro90', '2019-05-07 03:54:08', '2019-05-07 03:54:08');
INSERT INTO `dbpcn_pre_users` VALUES (533, 'jimmybayona', 'mentoriaslicenciadojimmybayona@gmail.com', 0, 'jimmy', 'rolando', 'bayona', 'ropero', 'o8J10249C6g10181gqi', '$2y$10$l16jSmUuUirMC8sFCzC7tu98mVg/AW8FuP0Gz88X7qT', 2, '1974-09-07', 1, '88287149', '1993-03-05', 'Abrego', '3153283068', 'Calle 5 # 9-60', 'Piedecuesta', 47, NULL, NULL, NULL, NULL, NULL, NULL, '746', 'empty', 'Pending', 'carolinayjimmy', '2019-05-07 03:54:09', '2019-05-07 03:54:09');
INSERT INTO `dbpcn_pre_users` VALUES (534, 'afe.1009', 'alexandra.mateusmoreno@gmail.com', 0, 'leidy', 'alexandra', 'mateus', 'moreno', 'tbf10250Xvt101809iC', '$2y$10$nsy.QkwSwECuvfRHCSYkWOEw8wmAi01ylBaknjauTB1', 2, '1996-04-07', 1, '1026294722', '2019-04-11', 'Bogotá', '3194113308', 'Calle 45a # 80i 27 sur', 'Bogotá', 47, NULL, NULL, NULL, NULL, NULL, NULL, '42', 'empty', 'Pending', 'hernuesga', '2019-05-07 03:54:09', '2019-05-07 03:54:09');
INSERT INTO `dbpcn_pre_users` VALUES (535, 'cata24', 'titaniacontreras85@gmail.com', 0, 'tatiana', '', 'contreras', 'leguizamÓn', 'xU3102510Sl10232A98', '$2y$10$Uk7tpZJg1.ok3Xqi24p8buEsy08VFBrXIRT3V.cwJ.T', 2, '1985-03-27', 1, '53160058', '2003-08-12', 'BOGOTA', '3208114490', 'CALLE 72 N 22 -14 APTO 306', 'BOGOTA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '151', 'empty', 'Pending', 'pc2101', '2019-05-07 03:54:09', '2019-05-07 03:54:09');
INSERT INTO `dbpcn_pre_users` VALUES (537, 'carlossalamanca', 'salamancagomezcarlosmiguel@gmail.com', 0, 'carlos', 'miguel', 'salamanca', 'gomez', '0vP10253R2x10182WwU', '$2y$10$yEnWVva86K1Rcm5j.FVZyOxKl1mhdjTDxo4EVxjVvCh', 2, '1956-12-29', 1, '5706117', '1976-01-17', 'Piedecuesta', '3178761666', 'Carrera 28 54-28 Apto 603', 'Piedecuesta', 47, NULL, NULL, NULL, NULL, NULL, NULL, '1724', 'empty', 'Pending', 'oviel', '2019-05-07 03:54:09', '2019-05-07 03:54:09');
INSERT INTO `dbpcn_pre_users` VALUES (538, 'visionemprender', 'ronalruedak@gmail.com', 0, 'ronal', '', 'rueda', 'rueda', 'pxp10254XUl10240BgJ', '$2y$10$wObKVoxmJGDhfdDJrVJeS.9WeF0j7oRXmrsd0ygLktSnfY/HDXKBi', 2, '1986-09-12', 1, '1005272157', '2006-01-25', 'EL CARMEN', '3219435885', 'CALLE 12B 25-31 RIO PRADO', 'GIRON', 47, NULL, NULL, NULL, NULL, NULL, NULL, '496', 'empty', 'Pending', 'germayago', '2019-05-07 03:54:10', '2019-05-07 03:54:10');
INSERT INTO `dbpcn_pre_users` VALUES (539, 'elprofeharold', 'haroldlopez1967@gmail.com', 0, 'harold', 'miguel', 'lopez', 'castro', 'mE910255iwI10155Ndz', '$2y$10$YRY7LqzpQYDyevwcsuqEw.6ebKDedTRY2T6faCi.LT3a079EvWbeq', 2, '1967-04-23', 1, '8767055', '1985-12-09', 'Soledad', '3006133308', 'calle 18 No. 18b-53 adelita de char 3era etapa', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '279', 'empty', 'Pending', 'alexluisv', '2019-05-07 03:54:10', '2019-05-07 03:54:10');
INSERT INTO `dbpcn_pre_users` VALUES (541, 'gelbert', 'gelbertramirez13@gmail.com', 0, 'gelbert', 'lisardo', 'ramírez', '—', 'AFs10257LDf10231cne', '$2y$10$kpNoPFln9AO2GolHAspyg.ovpf6ZRopdYFQrS8NLwtH.ohUxGtMny', 2, '1974-01-13', 1, '79620178', '1992-03-09', 'Bogota', '3108592742', 'Calle 58f sur # 48b 16', 'Bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '13', 'empty', 'Pending', 'esteban', '2019-05-07 03:54:10', '2019-05-07 03:54:10');
INSERT INTO `dbpcn_pre_users` VALUES (542, 'wil6', 'wilmercaballero1982@gmail.com', 0, 'wilmer', 'jose', 'caballero', 'silva', 'omT10258HAN10155etI', '$2y$10$gBIz8885nKDJJsDlTnteDuYK4ujomUSnIY8DBd5BEBpR/9tQ1acFC', 2, '1982-12-02', 1, '72285220', '2001-05-14', 'Barranquilla', '3137345373', 'Calle 61 No. 15-27 Barranquilla', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '331', 'empty', 'Pending', 'alexluisv', '2019-05-07 03:54:10', '2019-05-07 03:54:10');
INSERT INTO `dbpcn_pre_users` VALUES (543, 'gabinoduarte', 'gadumay24@gmail.com', 0, 'gabino', '', 'duarte', 'jurado', 'Bmq10259SRn10181Yx7', '$2y$10$OlOXprBD21SL17iJd7LBXOUQJUZmfreLqYlyTj5rZRM97K765IzMi', 2, '1955-03-24', 1, '73072162', '1976-12-07', 'Cartagena', '3124803825', 'Carrera 11A # 3-64', 'Puedecuesta', 47, NULL, NULL, NULL, NULL, NULL, NULL, '740', 'empty', 'Pending', 'carolinayjimmy', '2019-05-07 03:54:11', '2019-05-07 03:54:11');
INSERT INTO `dbpcn_pre_users` VALUES (544, 'josearmj', 'jolarjy07@hotmail.com', 0, 'jose', 'luis', 'armenta', 'jimenez', 'eBt10260HS9102299n0', '$2y$10$9VhCd5aHm5IhAo28qA1Rn.7A6Vq/uhpsYyeTrc6aSqDCwTB4yDRuy', 2, '1975-03-07', 1, '77181561', '1993-04-20', 'Valledupar', '3205215965', 'Carrera 50 No 32 - 38', 'Valledupar', 47, NULL, NULL, NULL, NULL, NULL, NULL, '510', 'empty', 'Pending', 'ameliabillete', '2019-05-07 03:54:11', '2019-05-07 03:54:11');
INSERT INTO `dbpcn_pre_users` VALUES (545, 'natalia', 'natimarhernandez@hotmail.com', 0, 'natalia', 'marcela', 'hernandez', 'ordoñez', 'T2A10261Rw410205Wxy', '$2y$10$JtWT2Bp2xAXTL9XLaEMqgeEmTThsYzk8ajKNwE2AqK0dISDSqr.rK', 2, '1998-01-16', 1, '1042457434', '2016-01-20', 'Soledad', '3003665565', 'Calle 18 # 42 -35 Villa Sofia Manzana 9 casa 1', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '695', 'empty', 'Pending', 'yosoy', '2019-05-07 03:54:11', '2019-05-07 03:54:11');
INSERT INTO `dbpcn_pre_users` VALUES (548, 'jpclau', 'jnietousa@gmail.com', 0, 'juan', 'paulo', 'nieto', 'clavijo', 'nkx102647oG10177n6I', '$2y$10$d7LN6xHlKXtV4sN/dT8zdeqM6R4EAkbGGzdS/kIVzKpCAMuBJlGce', 2, '1963-04-04', 3, '466968239', '2010-02-11', 'United States', '9542578532', '13585 nw 9th CT', 'Pembroke Pines', 224, NULL, NULL, NULL, NULL, NULL, NULL, '103', 'empty', 'Pending', 'wtpropiedad1', '2019-05-07 03:54:12', '2019-05-07 03:54:12');
INSERT INTO `dbpcn_pre_users` VALUES (550, 'crisdocor1967', 'anmapepo@gmail.com', 0, 'cristina', '', 'donado', 'cordoba', 'mXq10266tC410263TYX', '$2y$10$pb2H9paNERXTdhbriURRB.xPz2Eh3hzz2P/JzPX6f2ikllSHCpNBu', 2, '1967-03-02', 1, '32827453', '1988-06-01', 'Soledad', '3008903909', 'Calle 19 # 21-106 Centro', 'Soledad', 47, NULL, NULL, NULL, NULL, NULL, NULL, '73', 'empty', 'Pending', 'iferrer2019', '2019-05-07 03:54:12', '2019-05-07 03:54:12');
INSERT INTO `dbpcn_pre_users` VALUES (551, 'saidavid', 'davidmiguelacosta@gmail.com', 0, 'david', 'miguel', 'acosta', 'suarez', '3yj10267HEq102655uj', '$2y$10$qa/XPxXDDNsSMtYHihc7Z.pNLtn80/JGHRrYygD4WtsARiRcBFgO.', 2, '1953-09-16', 1, '8678222', '1977-01-28', 'Barranquilla', '3017902657', 'Cra 46 #68-25', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '86', 'empty', 'Pending', 'dserrano', '2019-05-07 03:54:12', '2019-05-07 03:54:12');
INSERT INTO `dbpcn_pre_users` VALUES (552, 'strodiba', 'strodiba18@gmail.com', 0, 'stefany', 'rocio', 'diaz', 'barbosa', 'R7j102687rc10153AR4', '$2y$10$IGaLFcMDvbRWZTE71agBBub78NaAl1ol301xNZqgqOL.1f4vAD57y', 2, '1983-06-18', 1, '49721601', '2002-01-17', 'valledupar', '3007230353', 'cr 4g 21bis 220 super manzana A3 Apto 204', 'valledupar', 47, NULL, NULL, NULL, NULL, NULL, NULL, '371', 'empty', 'Pending', 'globalvision', '2019-05-07 03:54:12', '2019-05-07 03:54:12');
INSERT INTO `dbpcn_pre_users` VALUES (553, 'drako523_pc/network', 'ramirezl_obrasciviles@hotmail.com', 0, 'juan', 'david', 'ramirez', 'leon', '7AM10269nyS10228xAb', '$2y$10$/um0Rpgaih8rH/3UMmfcse5a1TNOWHrzzm8.25bz9IfQhFQEkEo4i', 2, '1985-09-04', 1, '9773789', '2003-10-17', 'Armenia, Quindío', '3147808176', 'Barrio La Milagrosa Mz 7 Cs 5', 'Armenia', 47, NULL, NULL, NULL, NULL, NULL, 47, '54', 'empty', 'Pending', 'humanhelp', '2019-05-07 03:54:13', '2019-05-07 03:54:13');
INSERT INTO `dbpcn_pre_users` VALUES (554, 'frj10', 'snfreddyr@gmail.com', 0, 'rosalba', '', 'rosas', 'rodriguez', 'dYu10270rQh10173bjZ', '$2y$10$wBNc5qICdU5DDy9ZcAv4k.w3NTG53BqTKODGpI1nVEx8SvCYRK6ry', 2, '1962-07-18', 1, '51697600', '1981-10-30', 'Bogota', '3214709942', 'carrera 150 a 142 c 32', 'Bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '56', 'empty', 'Pending', 'anyipaolasalasalarcon', '2019-05-07 03:54:13', '2019-05-07 03:54:13');
INSERT INTO `dbpcn_pre_users` VALUES (555, 'alirin', 'alirin0219@gmail.com', 0, 'alirio', '', 'ramirez', 'rodriguez', 'BDU10271Axq10247ALI', '$2y$10$7wBPvu/0vKxH5jnJvBwa1elKW3VbXIB3/aOqUSlSjD7jwdQ8s1t8i', 2, '1951-02-19', 1, '13820722', '1973-07-25', 'Bucaramanga', '3108152706', 'Calle 8 No. 23-75', 'Yopal', 47, NULL, NULL, NULL, NULL, NULL, NULL, '333', 'empty', 'Pending', 'inari', '2019-05-07 03:54:13', '2019-05-07 03:54:13');
INSERT INTO `dbpcn_pre_users` VALUES (557, 'citibank72019', 'miguelgomezb40@gmail.com', 0, 'johan', 'sebastian', 'gomez', 'gomez', 'qmh10273W7p10166uSf', '$2y$10$3nmGIzcHMhbSKyo0f9bIuOKz7wN8ifIAaYzTuRDFOxrzBixQZSqeO', 2, '1990-01-26', 1, '1094910392', '2008-01-29', 'armenia', '3126445906', 'ciudadela del cafe sector A manzana 31 casa 9 primer piso', 'pereira', 47, NULL, NULL, NULL, NULL, NULL, NULL, '343', 'empty', 'Pending', 'thelegend', '2019-05-07 03:54:13', '2019-05-07 03:54:13');
INSERT INTO `dbpcn_pre_users` VALUES (560, 'hricaurte', 'hdricaurte06@gmail.com', 0, 'hernán', 'darío', 'ricaurte', 'movilla', 'uKq10276fHY10155rD9', '$2y$10$EHVcCx5BkHV2Ixfhhw3NVOg6MDIeTsfbHMPfCy3rwzELMfZIayi/.', 2, '1977-06-06', 1, '72230413', '1995-09-17', 'Barranquilla', '3013739926', 'Carrera 44 No 44 - 85 Apto 204', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '1702', 'empty', 'Pending', 'alexluisv', '2019-05-07 03:54:14', '2019-05-07 03:54:14');
INSERT INTO `dbpcn_pre_users` VALUES (561, 'jbarrientos', 'imaginatec@hotmail.com', 0, 'juan', 'alberto', 'barrientos', 'perez', 'yOi10277IfZ10221ZUV', '$2y$10$Gso.WhbdZMosX0dnRgNbJ.lKeYTj8yLNwutdlmTWxDEnwj8dCpDY6', 2, '1986-12-26', 1, '1018407819', '2005-11-22', 'bogota', '3219386599', 'Cra 16a #56 40', 'bucaramanga', 47, NULL, NULL, NULL, NULL, NULL, 47, '358', 'empty', 'Pending', 'emjv2019', '2019-05-07 03:54:14', '2019-05-07 03:54:14');
INSERT INTO `dbpcn_pre_users` VALUES (562, 'bussinescompany', 'angelguerra264@gmail.com', 0, 'antonio', 'angel', 'guerra', 'galindo', 'NeY10278Waw101524sB', '$2y$10$jNbSoiylwQ9rTbnvIKmxeef1Nq6oKTRHiCx.HWJAm88O0UpnRzzWe', 2, '1986-10-06', 3, 'J313043', '2016-12-19', 'La Habana', '982838858', 'Cdla. El recreo, Calle Pangua y Adriano Cobo', 'Quito', 62, NULL, NULL, NULL, NULL, NULL, NULL, '52', 'empty', 'Pending', 'wolf_ecu', '2019-05-07 03:54:15', '2019-05-07 03:54:15');
INSERT INTO `dbpcn_pre_users` VALUES (564, 'asierra', 'alexandersierrasoler@gmail.com', 0, 'alexander', '', 'sierra', 'soler', 'bvk10280Ruh10171R8V', '$2y$10$qCrtvYL29TxuIkJW1XCXi.eaYIQSthwarhaqQYnFLfHlmcsip4wQ2', 2, '1971-09-27', 1, '11185445', '1989-12-11', 'Bogota', '3015598588', 'cra 53f #4c 06', 'Bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '291', 'empty', 'Pending', 'georgemaster', '2019-05-07 03:54:15', '2019-05-07 03:54:15');
INSERT INTO `dbpcn_pre_users` VALUES (565, 'morarondon', 'consultornuevaeconomia1980@gmail.com', 0, 'alexander', 'javier', 'mora', 'rondon', 'ygd10281hXe10169iVx', '$2y$10$P41kqlW1QgKM4qsqiyUOCe5aNBdGhLAhgxnSpzZYooZ.01ckCaFDS', 2, '1980-12-01', 1, '17294000', '1999-03-12', 'Vista Hermosa', '3175670487', 'Calle 30#3-16', 'Granada (meta)', 47, NULL, NULL, NULL, NULL, NULL, NULL, '332', 'empty', 'Pending', 'luzirene', '2019-05-07 03:54:15', '2019-05-07 03:54:15');
INSERT INTO `dbpcn_pre_users` VALUES (566, 'jacosta@-*decastro1252', 'jacostadecastro@gmail.com', 0, 'juan', 'manuel', 'acosta', 'de castro', 'ogY10282uRX101550WR', '$2y$10$vnKQmJ2F.V2.pp3EM9U/G.JhtG//YSxavB8b.811EkJ/ISy0ixMW6', 2, '1962-01-18', 1, '79238294', '1983-04-22', 'BOGOTA', '3152294540', 'ALTOS DE PLAN PAREJO MZ V LT 15', 'BOGOTA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '708', 'empty', 'Pending', 'alexluisv', '2019-05-07 03:54:15', '2019-05-07 03:54:15');
INSERT INTO `dbpcn_pre_users` VALUES (567, 'lest2019', 'luissanjuan1001@gmail.com', 0, 'luis', 'enrique', 'sanjuan', 'trespalacios', 'DYp102831rC10262jiT', '$2y$10$DkACi054dPD17gZbFEoTCOo/kbHX/DPwwxDicQhwN2enMAQZ6nOwK', 2, '1992-02-21', 1, '1140848469', '2010-02-25', 'Barranquilla', '3116391836', 'Carrera 42B1 # 84-91 Los Nogales', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, 47, '587', 'empty', 'Pending', 'lnlb2019', '2019-05-07 03:54:16', '2019-05-07 03:54:16');
INSERT INTO `dbpcn_pre_users` VALUES (570, 'sosanso', 'sorayasoto@hotmail.com', 0, 'soraya', '', 'soto', 'muñoz', 'E7N10286EXz10222O7q', '$2y$10$JiVqnQ5Db8GXbi//LiPovOx6TfK/VVriNjk.X9P2t5Zls0lSWWUy.', 2, '1971-10-14', 1, '52047889', '1990-08-15', 'bogota', '3102950665', 'calle 70A # 17-42 APT 201', 'bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '106', 'empty', 'Pending', 'orlandomosquera', '2019-05-07 03:54:16', '2019-05-07 03:54:16');
INSERT INTO `dbpcn_pre_users` VALUES (571, 'maolinares', 'maolin0411@gmail.com', 0, 'darley', 'mauricio', 'linares', 'gonzález', 'P8S10287uS810281fpz', '$2y$10$8O63541RRxzms9d/WN5IaeEZIA/Rf2WEH2brJH/Lbg.NEMJlMdzJS', 2, '1971-11-04', 1, '79530876', '1989-12-11', 'Bogotá', '3208377718', 'Calle 63 #74a 11 in 7 apto 203', 'Bogotá', 47, NULL, NULL, NULL, NULL, NULL, NULL, '297', 'empty', 'Pending', 'morarondon', '2019-05-07 03:54:16', '2019-05-07 03:54:16');
INSERT INTO `dbpcn_pre_users` VALUES (572, 'networker', 'selfatoloza@gmail.com', 0, 'janeth', 'dahiana', 'alfonso', 'ruiz', '5vn10288H4F10281TXg', '$2y$10$G9yX9Dj.INmUO5fSCr18o.5IICCvwVz5c5XmLP.5jZbT08c6QVmHS', 2, '1970-11-13', 1, '1030555452', '1989-11-30', 'restrepo', '3016836379', 'diagonal 18 # 19 d 21 cantarrana 1', 'villavicencio', 47, NULL, NULL, NULL, NULL, NULL, NULL, '1732', 'empty', 'Pending', 'morarondon', '2019-05-07 03:54:17', '2019-05-07 03:54:17');
INSERT INTO `dbpcn_pre_users` VALUES (576, 'micasacampestre', 'cesaruwa@yahoo.es', 0, 'cesar', 'augusto', 'ubaque', 'vargas', 'N0C10292N0j10289dk3', '$2y$10$E1UCkkMCbC9nssfstwPTOecisrrW4IoDLL7x2MwmgYDAgoRZhZWHy', 2, '1957-02-12', 1, '6759190', '1976-10-04', 'Tunja', '3193821852', 'Carrera 11B Nª 2A-14 Barrio Surinama', 'Tunja', 47, NULL, NULL, NULL, NULL, NULL, NULL, '522', 'empty', 'Pending', 'sharom2204', '2019-05-07 03:54:17', '2019-05-07 03:54:17');
INSERT INTO `dbpcn_pre_users` VALUES (577, 'analuciadividivi', 'franja0410@gmail.com', 0, 'francisco', 'javier', 'laguna', 'gelvez', 'kpV10293pik10291Bss', '$2y$10$STbSgU4HE7Cl8YCTWZqTweW2ss9cJ03wBga7Vo/Ra1LJcl8wJA//u', 2, '1975-09-13', 1, '7170234', '1993-11-24', 'TUNJA', '3168698415', 'TRANSVERSAL 3 NO. 56-29', 'TUNJA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '543', 'empty', 'Pending', 'fernandolondonoruiz1969', '2019-05-07 03:54:18', '2019-05-07 03:54:18');
INSERT INTO `dbpcn_pre_users` VALUES (578, 'teresautria', 'teresa.utria@gmail.com', 0, 'olga', 'teresa', 'utria', 'larrotta', 'xna10294Q6310288geM', '$2y$10$NdEqVVrIbn5Nn3D9zBk4A.Bxow8QAew3nUFHmMWSMTa0W2IMvwvVS', 2, '1992-02-18', 1, '1121885452', '2010-02-19', 'VILLAVICENCIO', '3174494155', 'MANZANA F CASA 7 BALCONES DEL LLANO', 'RESTREPO - META', 47, NULL, NULL, NULL, NULL, NULL, NULL, '1715', 'empty', 'Pending', 'networker', '2019-05-07 03:54:18', '2019-05-07 03:54:18');
INSERT INTO `dbpcn_pre_users` VALUES (579, 'estella69', 'danielferney1999@gmail.com', 0, 'luz', 'estella', 'gil', 'bogoya', 'J7w102954nP10289ILu', '$2y$10$5T6.zntwDGIUj/EIHmVAS.BoZQrv10ior0ZeNKhPIzkQan.Qo/yKy', 2, '1969-03-01', 1, '40029639', '1988-07-25', 'tunja', '3144325658', 'Cra 4c  4-69 mz g casa 1 ciudadela sol de oriente', 'tunja', 47, NULL, NULL, NULL, NULL, NULL, NULL, '546', 'empty', 'Pending', 'sharom2204', '2019-05-07 03:54:18', '2019-05-07 03:54:18');
INSERT INTO `dbpcn_pre_users` VALUES (580, 'cristian23.', 'fabianscristian@gmail.com', 0, 'cristian', 'fabián', 'suárez', 'suárez', '5wC10296isp102114Hv', '$2y$10$.Vq8oInm.q7bBv9hZHkIi.C9AzYKRWAcVkvsrfV0wN.476PdN8asq', 2, '1991-08-23', 1, '1122129043', '2009-08-31', 'Acacías', '3125408395', 'Carrera 40 # 11A - 38 Barrio Independencia Etapa 1', 'Acacías (Meta)', 47, NULL, NULL, NULL, NULL, NULL, NULL, '1555', 'empty', 'Pending', 'cupercuevas83', '2019-05-07 03:54:18', '2019-05-07 03:54:18');
INSERT INTO `dbpcn_pre_users` VALUES (581, 'mujermillonaria', 'lagg1492@gmail.com', 0, 'luz', 'adriana', 'guevara', 'giraldo', 'rd210297ngw10196Pj7', '$2y$10$t2FFO.5MsSJ3YLfQlcNrsOOFbt218JpdpxaV5XQEpHhDvrCxI4WG2', 2, '1992-10-14', 1, '1152443267', '2010-10-14', 'Medellin', '3103770555', 'Carrera 98 #97-27', 'Apartado', 47, NULL, NULL, NULL, NULL, NULL, NULL, '727', 'empty', 'Pending', 'eduardotordecilla', '2019-05-07 03:54:19', '2019-05-07 03:54:19');
INSERT INTO `dbpcn_pre_users` VALUES (582, 'serpcnetwork', 'trespalaciosa@hotmail.com', 0, 'armando', 'arturo', 'trespalacios', 'trespalacios', 'BIL10298Taw10230fxn', '$2y$10$JuxSVK9yM7Ok9NGovyroUuIyQUJn78cpwTXFylBoa48Pkez1585fO', 2, '1960-04-04', 1, '8705655', '1979-03-26', 'BARRANQUILLA', '57', 'CARRERA 64 B # 96-29', 'Barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '789', 'empty', 'Pending', 'sersqintegramos', '2019-05-07 03:54:19', '2019-05-07 03:54:19');
INSERT INTO `dbpcn_pre_users` VALUES (583, 'wilsonccastaneda', 'cristian1414k@gmail.com', 0, 'wilson', 'henry', 'castañeda', 'melo', 'AMU10299MKF10230t9i', '$2y$10$hLhZRSWoRAwSCsShz.jsvOb5H0AvyOVUDYO3wMbAzT7B0rJ98Yj32', 2, '1968-03-25', 1, '72151797', '1986-07-30', 'Barranquilla', '3156127594', 'calle 63 # 43- 78', 'barranquilla', 47, NULL, NULL, NULL, NULL, NULL, NULL, '749', 'empty', 'Pending', 'sersqintegramos', '2019-05-07 03:54:19', '2019-05-07 03:54:19');
INSERT INTO `dbpcn_pre_users` VALUES (585, 'jesusangarita', 'pangaritaduran@gmail.com', 0, 'pioquinto', 'de jesus', 'angarita', 'duran', 'J1t10301bK410295Av2', '$2y$10$wRNJyfn8.V49mhyeZ742seoLxIzZoRimmU7aqBWkb7o4Fl8qqd7/C', 2, '1964-10-04', 1, '4207329', '1983-09-12', 'Paz de Rio', '3203206014', 'CLL 18 · 13-53 TOPO', 'TUNJA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '694', 'empty', 'Pending', 'estella69', '2019-05-07 03:54:19', '2019-05-07 03:54:19');
INSERT INTO `dbpcn_pre_users` VALUES (586, 'lanmos', 'alexislandivar@gmail.com', 0, 'alexis', 'miguel', 'landivar', 'mosiño', 'jNK10302Sj010152Y5m', '$2y$10$OAd3j6Lp3eW.1bphxqTAIuEJKxLjbnw4GjJp5A6qN1O00NnWXHMT6', 2, '1982-09-30', 1, '4175987', '2018-11-21', 'Santa Cruz', '982682230', 'B/ Equipetrillo', 'Santa Cruz', 26, NULL, NULL, NULL, NULL, NULL, NULL, '295', 'empty', 'Pending', 'wolf_ecu', '2019-05-07 03:54:20', '2019-05-07 03:54:20');
INSERT INTO `dbpcn_pre_users` VALUES (587, 'andrey', 'andreygarzon01@gmail.com', 0, 'jawinson', 'andrey', 'garzon', 'anacona', 'mJ410303OQL10156dsF', '$2y$10$t.3OYioyY4dTHTKQTHBagOtVUrGuepLXjyPtDHAf4sg97IeJ4DVXK', 2, '0000-00-00', 1, '1117515543', '0000-00-00', 'Florencia', '3156000010', 'calle 37 n 30 -34', 'florencia', 47, NULL, NULL, NULL, NULL, NULL, NULL, '575', 'empty', 'Pending', 'trillonario', '2019-05-07 03:54:20', '2019-05-07 03:54:20');
INSERT INTO `dbpcn_pre_users` VALUES (588, 'negocios', 'angielombana1999@gmail.com', 0, 'angie', 'paola', 'lombana', 'franco', 'CKU10304Qi110275F2U', '$2y$10$jXIDe4ALFRABlMrqdpFMluHekY9DUI6jj5Y27C7F7glreHWGj/vZO', 2, '1999-10-30', 1, '1003688497', '2017-11-01', 'Medellin', '3014630506', 'crr 65 # 4 - 57 barrio campo amor', 'medellin', 47, NULL, NULL, NULL, NULL, NULL, 47, '1575', 'empty', 'Pending', 'mastermind', '2019-05-07 03:54:20', '2019-05-07 03:54:20');
INSERT INTO `dbpcn_pre_users` VALUES (593, 'bydunkan', 'manueleduardomc@hotmail.com', 10172, 'manuel', 'eduardo', 'montealegre', 'camacho', 'VAX302yVX10172gkB', '$2y$10$ginoTSqEuwaSXBWZOB.j5eD2jGsksDlAoTDUkm8LNK68jSOOuhV6a', 2, '1998-12-02', 1, '1118572922', '2016-12-12', 'yopal', '3209760624', 'carrera 22 # 9-70', 'yopal', 47, NULL, NULL, NULL, NULL, NULL, NULL, '302', 'empty', 'Pending', 'carolinayjimmy', '2019-05-16 14:51:24', '2019-05-16 14:51:24');
INSERT INTO `dbpcn_pre_users` VALUES (595, 'monica73', 'oxxenbogota@gmail.com', 10183, 'mónica', 'astrid', 'rojas', 'herrera', 'UOi497YLY10183iF8', '$2y$10$y29Pf31.t3kYLChsNU0gfuLkRrMTsV8W6KcdwHssirNnlCnpN/0ie', 2, '1973-09-29', 1, '52145003', '1991-10-11', 'Bogotá', '3144436542', 'Calle 77 B # 129-70 Torre 1 Apto. 907', 'Bogotá', 47, NULL, NULL, NULL, NULL, NULL, NULL, '497', 'empty', 'Pending', 'juan1515', '2019-05-17 18:04:06', '2019-05-17 18:04:06');
INSERT INTO `dbpcn_pre_users` VALUES (597, 'indira_2999', 'indira_2999@hotmail.com', 10179, 'indira', 'patricia', 'arroyo', 'barros', 'Tox1706rdI10179q7G', '$2y$10$UWXEcjIq66ROnnT5.BOfYOolpaY/0.5EnHA3.gjsP7tzOJ36bRTGC', 2, '1980-03-14', 1, '22520001', '1998-07-14', 'BARRANQUILLA', '3145285344', 'CRA 15 NO. 57 276  MZ 4 CASA 8 CONJ VILLA LINDA', 'BARRANQUILLA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '1706', 'empty', 'Pending', 'darioquijano', '2019-05-20 18:19:10', '2019-05-20 18:19:10');
INSERT INTO `dbpcn_pre_users` VALUES (608, 'cjarcos', 'cjarcos@gmail.com', 10180, 'cristian', 'julian', 'arcos', 'zubietta', 'mON25gPx101804O9', '$2y$10$5iedhnszM5qyVN6eAtnt9uTNrVkXDWq98wKc82/vngKwcO8mP50Sq', 2, '1982-04-23', 1, '80207623', '2000-10-12', 'bogota', '3123093479', 'carrera 12f No. 31a-29 sur apto 303 int. 1', 'bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '25', 'empty', 'Pending', 'luzirene', '2019-05-28 15:14:48', '2019-05-28 15:14:48');
INSERT INTO `dbpcn_pre_users` VALUES (612, 'consu1030', 'consusanty2007@gmail.com', 10171, 'consuelo', 'eugenia', 'gallego', 'raigoza', 'qw31712REo10171M5f', '$2y$10$t74A2kkTvfjQyLcNKYhgwOx0oJlchoOT41VIRYWpIjl/reT3QzP7q', 2, '1974-01-30', 1, '32781460', '1993-07-30', 'Barranquilla', '3176378397', 'Calle 22 D# 72-38 T4 Apto 704', 'Bogota', 47, NULL, NULL, NULL, NULL, NULL, NULL, '1712', 'empty', 'Pending', 'eliasbm', '2019-05-28 19:29:23', '2019-05-28 19:29:23');
INSERT INTO `dbpcn_pre_users` VALUES (614, 'samantoro31', 's.at31@hotmail.com', 10229, 'samudio', 'antonio', 'torres', 'rodriguez', 'fit15265sY102299b6', '$2y$10$bjmoAFRZ5P2.SpFeLGWEjOhkKFm2Ng/bqpzPcLULfr9hWzfpgUS6a', 2, '1962-03-31', 1, '19496664', '1981-03-10', 'Bogota', '3127765339', 'calle 33 # 11-29 int-2', 'Tunja', 47, NULL, NULL, NULL, NULL, NULL, NULL, '1526', 'empty', 'Pending', 'sharom2204', '2019-05-29 16:48:09', '2019-05-29 16:48:09');
INSERT INTO `dbpcn_pre_users` VALUES (615, 'mariaroshy', 'mariaroshy1961@gmail.com', 10236, 'maria', 'rocio', 'restrepo', 'restrepo', 'tgG87BCm102364C2', '$2y$10$mxYa1gsjvSCnA7hvfHiIKeWr9rlqIH3LDsdQI0W8MhAXEoDzCB36e', 2, '1961-05-13', 1, '25017592', '1980-09-17', 'Quimbaya', '3165613270', 'Carrera 3 No 1638', 'Quimbaya', 47, NULL, NULL, NULL, NULL, NULL, NULL, '87', 'empty', 'Pending', 'brayohan1985', '2019-06-01 17:48:00', '2019-06-01 17:48:00');
INSERT INTO `dbpcn_pre_users` VALUES (620, 'dariolopez', 'ruben_78@yahoo.com', 10226, 'ruben', 'dario', 'lopez', 'pulido', 'COI23Gae10226REY', '$2y$10$UV17jt6Vn9KJ6A5g9S6EEu416hjnaaUYM/8DFZef61w7xWHT9Wv1a', 2, '1978-10-15', 1, '80019668', '1996-10-26', 'BOGOTA', '3002834881', 'CARRERA 80 # 72 A-37', 'BOGOTA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '23', 'empty', 'Pending', 'joca2689', '2019-06-07 16:49:58', '2019-06-07 16:49:58');
INSERT INTO `dbpcn_pre_users` VALUES (621, 'yesenia88', 'yeseniaxo@hotmail.com', 10236, 'yesenia', '', 'pinilla', 'castillo', 'TZw1725Rmg102367Ea', '$2y$10$wHbJE8ttd5yFrZ6IUe4hsuhdAuAXcKh37IBUbTBrDwKCX/UDMGiz2', 2, '1988-10-09', 1, '1125809234', '2016-12-06', 'nueva york', '9179627081', '226-07   59 ave  apto 2   oakland gardens 11364', 'nueva york', 224, NULL, NULL, NULL, NULL, NULL, NULL, '1725', 'empty', 'Pending', 'brayohan1985', '2019-06-07 17:59:52', '2019-06-07 17:59:52');
INSERT INTO `dbpcn_pre_users` VALUES (623, 'juanlombana', 'juanmalombana10@gmail.com', 10234, 'juan', 'manuel', 'lombana', 'moncada', 'wvP39963810234HRD', '$2y$10$ZaeL/Gekivp9FRhZ92K6J.zZe6fb7.boDIQ6z527GUY7fRxFItHT6', 2, '1977-08-18', 1, '79809910', '1995-11-08', 'BOGOTA', '3165229163', 'CRA 52C 18-15 SUR', 'BOGOTA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '399', 'empty', 'Pending', 'casasfredy', '2019-06-08 13:48:19', '2019-06-08 13:48:19');
INSERT INTO `dbpcn_pre_users` VALUES (624, 'angelicacalderon', 'angelica.calderon@outlook.com', 10208, 'angelica', 'rocio', 'calderon', 'murillo', 'HTs681zcE1020816m', '$2y$10$X3kn2Xdhtog7hy9YfgAYYuOj007OGbsGaBo8h0wvbGfxz/hQH2zI2', 2, '1981-03-18', 1, '52543870', '1999-04-06', 'BOGOTA', '3156362007', 'CRA 79 10D 96 TORRE 36 APTO 501', 'BOGOTA', 47, NULL, NULL, NULL, NULL, NULL, NULL, '681', 'empty', 'Pending', 'visionary', '2019-06-10 10:49:04', '2019-06-10 10:49:04');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_projects
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_projects`;
CREATE TABLE `dbpcn_projects` (
  `id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `allotment_price` double(20,2) NOT NULL,
  `first_payment` double(20,2) NOT NULL,
  `n_payments` int(11) NOT NULL,
  `direct_bonus` double DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_projects
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_projects` VALUES (1, 'Condominio Campestre Dividivi', 46069960.00, 2255000.00, 60, 40.8, '2019-03-18 11:47:29', '2019-03-18 11:47:33');
INSERT INTO `dbpcn_projects` VALUES (2, 'pototo', 0.00, 0.00, 0, 40.8, '2019-03-18 17:22:34', '2019-03-18 17:22:36');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_rankings
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_rankings`;
CREATE TABLE `dbpcn_rankings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ranking` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `description` tinytext COLLATE latin1_general_ci NOT NULL,
  `status` enum('activo','noactivo') COLLATE latin1_general_ci NOT NULL,
  `ant` int(10) NOT NULL,
  `sig` int(10) NOT NULL,
  `direct_bonus` float(5,2) NOT NULL,
  `allotment` int(10) NOT NULL,
  `generation` int(2) NOT NULL,
  `indirect_bonus_2` float(5,2) NOT NULL,
  `indirect_bonus_3` float(5,2) NOT NULL,
  `indirect_bonus_4` float(5,2) NOT NULL,
  `indirect_bonus_5` float(5,2) NOT NULL,
  `indirect_bonus_6` float(5,2) NOT NULL,
  `indirect_bonus_7` float(5,2) NOT NULL,
  `residual_level` int(50) NOT NULL,
  `residual_bonus` float(50,0) NOT NULL,
  `annual_pcpot` float(2,0) NOT NULL,
  `t_bono` enum('%','Plano') COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_rankings
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_rankings` VALUES (1, 'PC', 'Rango Inicial ', 'activo', 0, 2, 40.80, 1, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, '%');
INSERT INTO `dbpcn_rankings` VALUES (2, 'Ejecutivo Bronce', 'Ejecutivo nivel 1', 'activo', 1, 3, 40.80, 2, 2, 20.40, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, '%');
INSERT INTO `dbpcn_rankings` VALUES (3, 'Ejecutivo Plata', 'Ejecutivo nivel 2', 'activo', 2, 4, 40.80, 10, 3, 20.40, 10.20, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, '%');
INSERT INTO `dbpcn_rankings` VALUES (4, 'Ejecutivo Oro', 'Ejecutivo nivel 3', 'activo', 3, 5, 40.80, 30, 4, 20.40, 10.20, 5.10, 0.00, 0.00, 0.00, 0, 0, 0, '%');
INSERT INTO `dbpcn_rankings` VALUES (5, 'Master Bronce', 'Master nivel 1', 'activo', 4, 6, 40.80, 75, 5, 20.40, 10.20, 5.10, 5.10, 0.00, 0.00, 0, 0, 0, '%');
INSERT INTO `dbpcn_rankings` VALUES (6, 'Master Plata', 'Master Nivel 2', 'activo', 5, 7, 40.80, 190, 6, 20.40, 10.20, 5.10, 5.10, 2.55, 0.00, 6, 1, 0, '%');
INSERT INTO `dbpcn_rankings` VALUES (7, 'Master Oro', 'Master Nivel 3', 'activo', 6, 8, 40.80, 380, 7, 20.40, 10.20, 5.10, 5.10, 2.55, 2.55, 7, 1, 0, '%');
INSERT INTO `dbpcn_rankings` VALUES (8, 'Senior Ejecutivo', 'Senior Nivel 1', 'activo', 7, 9, 40.80, 760, 7, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 7, 1, 30, '%');
INSERT INTO `dbpcn_rankings` VALUES (9, 'Senior Master', 'Senior Nivel 2', 'activo', 8, 10, 40.80, 1520, 7, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 7, 1, 70, '%');
INSERT INTO `dbpcn_rankings` VALUES (10, 'Senior Pro', 'Senior Nivel 3', 'activo', 9, 0, 40.80, 2800, 7, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 7, 0, 0, '%');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_rankings_details
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_rankings_details`;
CREATE TABLE `dbpcn_rankings_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(30) unsigned NOT NULL,
  `previous_rank` int(11) NOT NULL,
  `new_rank` int(11) NOT NULL,
  `detail` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `token` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `fk_ranking_user_id` FOREIGN KEY (`user_id`) REFERENCES `dbpcn_members` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=548 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_rankings_details
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_rankings_details` VALUES (53, 1, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-03-18 20:16:03', '2019-03-18 20:16:03');
INSERT INTO `dbpcn_rankings_details` VALUES (431, 10149, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-10 17:22:49', '2019-05-10 17:22:49');
INSERT INTO `dbpcn_rankings_details` VALUES (432, 10151, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-13 20:01:48', '2019-05-13 20:01:48');
INSERT INTO `dbpcn_rankings_details` VALUES (433, 10161, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-13 20:58:39', '2019-05-13 20:58:39');
INSERT INTO `dbpcn_rankings_details` VALUES (434, 10162, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-13 21:20:59', '2019-05-13 21:20:59');
INSERT INTO `dbpcn_rankings_details` VALUES (435, 10163, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-13 21:38:17', '2019-05-13 21:38:17');
INSERT INTO `dbpcn_rankings_details` VALUES (436, 10164, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-14 19:05:20', '2019-05-14 19:05:20');
INSERT INTO `dbpcn_rankings_details` VALUES (437, 10165, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-14 20:06:33', '2019-05-14 20:06:33');
INSERT INTO `dbpcn_rankings_details` VALUES (438, 10166, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-14 22:53:22', '2019-05-14 22:53:22');
INSERT INTO `dbpcn_rankings_details` VALUES (439, 10167, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:01:01', '2019-05-15 00:01:01');
INSERT INTO `dbpcn_rankings_details` VALUES (440, 10168, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:01:54', '2019-05-15 00:01:54');
INSERT INTO `dbpcn_rankings_details` VALUES (441, 10169, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:02:23', '2019-05-15 00:02:23');
INSERT INTO `dbpcn_rankings_details` VALUES (442, 10170, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:03:16', '2019-05-15 00:03:16');
INSERT INTO `dbpcn_rankings_details` VALUES (443, 10171, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:03:49', '2019-05-15 00:03:49');
INSERT INTO `dbpcn_rankings_details` VALUES (444, 10172, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:08:26', '2019-05-15 00:08:26');
INSERT INTO `dbpcn_rankings_details` VALUES (445, 10173, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:32:28', '2019-05-15 00:32:28');
INSERT INTO `dbpcn_rankings_details` VALUES (446, 10174, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:34:09', '2019-05-15 00:34:09');
INSERT INTO `dbpcn_rankings_details` VALUES (447, 10175, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:34:27', '2019-05-15 00:34:27');
INSERT INTO `dbpcn_rankings_details` VALUES (448, 10176, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:34:40', '2019-05-15 00:34:40');
INSERT INTO `dbpcn_rankings_details` VALUES (449, 10177, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:35:16', '2019-05-15 00:35:16');
INSERT INTO `dbpcn_rankings_details` VALUES (450, 10178, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:35:27', '2019-05-15 00:35:27');
INSERT INTO `dbpcn_rankings_details` VALUES (451, 10179, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:35:42', '2019-05-15 00:35:42');
INSERT INTO `dbpcn_rankings_details` VALUES (452, 10180, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:35:59', '2019-05-15 00:35:59');
INSERT INTO `dbpcn_rankings_details` VALUES (453, 10181, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:36:09', '2019-05-15 00:36:09');
INSERT INTO `dbpcn_rankings_details` VALUES (454, 10182, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:36:37', '2019-05-15 00:36:37');
INSERT INTO `dbpcn_rankings_details` VALUES (455, 10183, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:36:40', '2019-05-15 00:36:40');
INSERT INTO `dbpcn_rankings_details` VALUES (456, 10184, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:37:06', '2019-05-15 00:37:06');
INSERT INTO `dbpcn_rankings_details` VALUES (457, 10185, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:37:12', '2019-05-15 00:37:12');
INSERT INTO `dbpcn_rankings_details` VALUES (458, 10186, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:37:25', '2019-05-15 00:37:25');
INSERT INTO `dbpcn_rankings_details` VALUES (459, 10187, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:39:29', '2019-05-15 00:39:29');
INSERT INTO `dbpcn_rankings_details` VALUES (460, 10188, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:39:46', '2019-05-15 00:39:46');
INSERT INTO `dbpcn_rankings_details` VALUES (461, 10189, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:40:10', '2019-05-15 00:40:10');
INSERT INTO `dbpcn_rankings_details` VALUES (462, 10171, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', '6bbd80911a901e457af63397847998fea8f1e03e', '2019-05-14 19:40:18', '2019-05-14 19:40:18');
INSERT INTO `dbpcn_rankings_details` VALUES (463, 10190, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:40:30', '2019-05-15 00:40:30');
INSERT INTO `dbpcn_rankings_details` VALUES (464, 10191, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:40:41', '2019-05-15 00:40:41');
INSERT INTO `dbpcn_rankings_details` VALUES (465, 10192, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:40:56', '2019-05-15 00:40:56');
INSERT INTO `dbpcn_rankings_details` VALUES (466, 10193, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:41:05', '2019-05-15 00:41:05');
INSERT INTO `dbpcn_rankings_details` VALUES (467, 10194, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:41:13', '2019-05-15 00:41:13');
INSERT INTO `dbpcn_rankings_details` VALUES (468, 10195, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 00:41:21', '2019-05-15 00:41:21');
INSERT INTO `dbpcn_rankings_details` VALUES (469, 10169, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', '04fd9d49d03ddc6c12c6f72d3c67b5244a9dd606', '2019-05-14 20:16:21', '2019-05-14 20:16:21');
INSERT INTO `dbpcn_rankings_details` VALUES (470, 10170, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', '7db1f5861c8aae9b053501b7ca46fff952f958e1', '2019-05-14 20:18:46', '2019-05-14 20:18:46');
INSERT INTO `dbpcn_rankings_details` VALUES (471, 10173, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', '2ea362205c9f71bed5e8de0dad09eb40f9a11a48', '2019-05-14 20:25:19', '2019-05-14 20:25:19');
INSERT INTO `dbpcn_rankings_details` VALUES (472, 10175, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', '717179c07381b935b5cf0b7059ba3125396e8e54', '2019-05-14 21:04:47', '2019-05-14 21:04:47');
INSERT INTO `dbpcn_rankings_details` VALUES (473, 10177, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', '08e777d4d8e9bdd24618a05909ad4f33e6ac2c9c', '2019-05-14 22:44:05', '2019-05-14 22:44:05');
INSERT INTO `dbpcn_rankings_details` VALUES (474, 10189, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', '11f7bbaa3ff3189df4d8edc4dae5acee194464b5', '2019-05-14 23:25:33', '2019-05-14 23:25:33');
INSERT INTO `dbpcn_rankings_details` VALUES (475, 10180, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', '403919ef59e87f43f0c75c9d784b45e7019f440c', '2019-05-15 00:18:00', '2019-05-15 00:18:00');
INSERT INTO `dbpcn_rankings_details` VALUES (476, 10176, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', '855a82022455209f541887a4db900f5e4774480c', '2019-05-15 06:23:31', '2019-05-15 06:23:31');
INSERT INTO `dbpcn_rankings_details` VALUES (477, 10196, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 13:56:55', '2019-05-15 13:56:55');
INSERT INTO `dbpcn_rankings_details` VALUES (478, 10197, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 13:59:09', '2019-05-15 13:59:09');
INSERT INTO `dbpcn_rankings_details` VALUES (479, 10198, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 14:00:16', '2019-05-15 14:00:16');
INSERT INTO `dbpcn_rankings_details` VALUES (480, 10167, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', '456750cb1bf294b436094910cf5c95bcf68f4987', '2019-05-15 10:10:59', '2019-05-15 10:10:59');
INSERT INTO `dbpcn_rankings_details` VALUES (481, 10199, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 15:28:59', '2019-05-15 15:28:59');
INSERT INTO `dbpcn_rankings_details` VALUES (482, 10200, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 15:29:22', '2019-05-15 15:29:22');
INSERT INTO `dbpcn_rankings_details` VALUES (483, 10201, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 15:29:37', '2019-05-15 15:29:37');
INSERT INTO `dbpcn_rankings_details` VALUES (484, 10202, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 15:29:46', '2019-05-15 15:29:46');
INSERT INTO `dbpcn_rankings_details` VALUES (485, 10203, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 15:30:40', '2019-05-15 15:30:40');
INSERT INTO `dbpcn_rankings_details` VALUES (486, 10204, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 15:30:49', '2019-05-15 15:30:49');
INSERT INTO `dbpcn_rankings_details` VALUES (487, 10199, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', 'f05d1e62e3d14e08d4519be95ba864c2cee7d832', '2019-05-15 10:32:55', '2019-05-15 10:32:55');
INSERT INTO `dbpcn_rankings_details` VALUES (488, 10205, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 15:33:13', '2019-05-15 15:33:13');
INSERT INTO `dbpcn_rankings_details` VALUES (489, 10206, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 15:33:27', '2019-05-15 15:33:27');
INSERT INTO `dbpcn_rankings_details` VALUES (490, 10207, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 15:34:13', '2019-05-15 15:34:13');
INSERT INTO `dbpcn_rankings_details` VALUES (491, 10162, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', 'cd1e35e2921b164c74e9e9c0bd28285e098302d6', '2019-05-15 10:38:36', '2019-05-15 10:38:36');
INSERT INTO `dbpcn_rankings_details` VALUES (492, 10172, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', 'd431f3f9a6ec7efadd629bb3f5dcd2bd791ef97b', '2019-05-15 10:55:37', '2019-05-15 10:55:37');
INSERT INTO `dbpcn_rankings_details` VALUES (493, 10151, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', 'a0b9dc886fe152f5916282d63cf7aadc97ec0c87', '2019-05-15 11:43:08', '2019-05-15 11:43:08');
INSERT INTO `dbpcn_rankings_details` VALUES (494, 10208, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-15 17:34:03', '2019-05-15 17:34:03');
INSERT INTO `dbpcn_rankings_details` VALUES (495, 10164, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', '4c5bed32ef2d1ec4a1424bdd607fb7a2ef8a45e8', '2019-05-15 12:36:13', '2019-05-15 12:36:13');
INSERT INTO `dbpcn_rankings_details` VALUES (496, 10209, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-16 16:07:17', '2019-05-16 16:07:17');
INSERT INTO `dbpcn_rankings_details` VALUES (497, 10210, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-16 16:07:44', '2019-05-16 16:07:44');
INSERT INTO `dbpcn_rankings_details` VALUES (498, 10211, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-16 16:08:34', '2019-05-16 16:08:34');
INSERT INTO `dbpcn_rankings_details` VALUES (499, 10212, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-16 21:18:20', '2019-05-16 21:18:20');
INSERT INTO `dbpcn_rankings_details` VALUES (500, 10213, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-17 14:13:58', '2019-05-17 14:13:58');
INSERT INTO `dbpcn_rankings_details` VALUES (501, 10214, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-17 20:17:49', '2019-05-17 20:17:49');
INSERT INTO `dbpcn_rankings_details` VALUES (502, 10215, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-20 14:47:32', '2019-05-20 14:47:32');
INSERT INTO `dbpcn_rankings_details` VALUES (503, 10216, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-20 14:50:42', '2019-05-20 14:50:42');
INSERT INTO `dbpcn_rankings_details` VALUES (504, 10217, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-21 19:07:30', '2019-05-21 19:07:30');
INSERT INTO `dbpcn_rankings_details` VALUES (505, 10218, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-21 19:08:57', '2019-05-21 19:08:57');
INSERT INTO `dbpcn_rankings_details` VALUES (506, 10219, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-21 21:47:04', '2019-05-21 21:47:04');
INSERT INTO `dbpcn_rankings_details` VALUES (507, 10220, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-23 21:08:04', '2019-05-23 21:08:04');
INSERT INTO `dbpcn_rankings_details` VALUES (508, 10181, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', 'e2ce20b5190fa2665d53f6108642ca8c73065d59', '2019-05-23 16:28:37', '2019-05-23 16:28:37');
INSERT INTO `dbpcn_rankings_details` VALUES (509, 10221, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-24 13:42:51', '2019-05-24 13:42:51');
INSERT INTO `dbpcn_rankings_details` VALUES (510, 10222, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-24 13:44:36', '2019-05-24 13:44:36');
INSERT INTO `dbpcn_rankings_details` VALUES (511, 10208, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', 'b5d347f6012cdfa90753eaf05f2fc38d73c54243', '2019-05-24 11:29:37', '2019-05-24 11:29:37');
INSERT INTO `dbpcn_rankings_details` VALUES (512, 10223, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-27 19:15:30', '2019-05-27 19:15:30');
INSERT INTO `dbpcn_rankings_details` VALUES (513, 10224, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-27 21:58:51', '2019-05-27 21:58:51');
INSERT INTO `dbpcn_rankings_details` VALUES (514, 10225, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-28 20:31:32', '2019-05-28 20:31:32');
INSERT INTO `dbpcn_rankings_details` VALUES (515, 10226, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-28 20:33:46', '2019-05-28 20:33:46');
INSERT INTO `dbpcn_rankings_details` VALUES (516, 10227, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-28 21:11:53', '2019-05-28 21:11:53');
INSERT INTO `dbpcn_rankings_details` VALUES (517, 10185, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', '1200d661f64c3772b8bbe0276dbc3ecba8a1c52d', '2019-05-28 16:12:27', '2019-05-28 16:12:27');
INSERT INTO `dbpcn_rankings_details` VALUES (518, 10228, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-28 21:13:03', '2019-05-28 21:13:03');
INSERT INTO `dbpcn_rankings_details` VALUES (519, 10229, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-29 14:49:00', '2019-05-29 14:49:00');
INSERT INTO `dbpcn_rankings_details` VALUES (520, 10230, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-29 15:35:06', '2019-05-29 15:35:06');
INSERT INTO `dbpcn_rankings_details` VALUES (521, 10231, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-29 21:16:40', '2019-05-29 21:16:40');
INSERT INTO `dbpcn_rankings_details` VALUES (522, 10225, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', 'd35202b57351a2bd2c3f111a84e033fe698d8eaf', '2019-05-29 16:30:29', '2019-05-29 16:30:29');
INSERT INTO `dbpcn_rankings_details` VALUES (523, 10172, 2, 3, 'Rankin Bronze Ejecutive to Silver Ejecutive', '5221a62f563b0a008438c8a9124fde1e2f910e7a', '2019-05-29 19:07:01', '2019-05-29 19:07:01');
INSERT INTO `dbpcn_rankings_details` VALUES (524, 10232, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-30 14:28:49', '2019-05-30 14:28:49');
INSERT INTO `dbpcn_rankings_details` VALUES (525, 10187, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', '40df234f77bfd14777caa660db3d9d78ce82e474', '2019-05-30 13:19:05', '2019-05-30 13:19:05');
INSERT INTO `dbpcn_rankings_details` VALUES (526, 10233, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-30 19:06:24', '2019-05-30 19:06:24');
INSERT INTO `dbpcn_rankings_details` VALUES (527, 10234, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-30 20:56:41', '2019-05-30 20:56:41');
INSERT INTO `dbpcn_rankings_details` VALUES (528, 10235, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-30 20:58:41', '2019-05-30 20:58:41');
INSERT INTO `dbpcn_rankings_details` VALUES (529, 10226, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', '8cb931bda4a3bd1c89b8316f1ff2299ff6013b4d', '2019-05-30 16:58:44', '2019-05-30 16:58:44');
INSERT INTO `dbpcn_rankings_details` VALUES (530, 10236, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-05-31 14:15:26', '2019-05-31 14:15:26');
INSERT INTO `dbpcn_rankings_details` VALUES (531, 10168, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', '6269964619028cefab81a10912291d2d340c5a8b', '2019-05-31 09:46:39', '2019-05-31 09:46:39');
INSERT INTO `dbpcn_rankings_details` VALUES (532, 10237, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-06-04 14:10:09', '2019-06-04 14:10:09');
INSERT INTO `dbpcn_rankings_details` VALUES (533, 10238, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-06-04 14:10:16', '2019-06-04 14:10:16');
INSERT INTO `dbpcn_rankings_details` VALUES (534, 10239, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-06-05 14:05:09', '2019-06-05 14:05:09');
INSERT INTO `dbpcn_rankings_details` VALUES (535, 10240, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-06-05 15:14:30', '2019-06-05 15:14:30');
INSERT INTO `dbpcn_rankings_details` VALUES (536, 10241, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-06-05 15:14:37', '2019-06-05 15:14:37');
INSERT INTO `dbpcn_rankings_details` VALUES (537, 10242, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-06-05 17:21:56', '2019-06-05 17:21:56');
INSERT INTO `dbpcn_rankings_details` VALUES (538, 10240, 1, 2, 'Ranking Co-Propietary to Bonze ejecutive', '36742b73318145f7bab5954bdb43ec9dcb6009e8', '2019-06-05 12:36:43', '2019-06-05 12:36:43');
INSERT INTO `dbpcn_rankings_details` VALUES (539, 10173, 2, 3, 'Rankin Bronze Ejecutive to Silver Ejecutive', 'fbfe662f7534d30945447bf2ebd3fb1662158e0e', '2019-06-05 17:25:54', '2019-06-05 17:25:54');
INSERT INTO `dbpcn_rankings_details` VALUES (540, 10243, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-06-07 19:53:31', '2019-06-07 19:53:31');
INSERT INTO `dbpcn_rankings_details` VALUES (541, 10244, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-06-10 16:13:04', '2019-06-10 16:13:04');
INSERT INTO `dbpcn_rankings_details` VALUES (542, 10245, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-06-10 16:14:41', '2019-06-10 16:14:41');
INSERT INTO `dbpcn_rankings_details` VALUES (543, 10246, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-06-10 16:15:24', '2019-06-10 16:15:24');
INSERT INTO `dbpcn_rankings_details` VALUES (544, 10247, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-06-10 16:18:43', '2019-06-10 16:18:43');
INSERT INTO `dbpcn_rankings_details` VALUES (545, 10248, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-06-10 16:20:18', '2019-06-10 16:20:18');
INSERT INTO `dbpcn_rankings_details` VALUES (546, 10164, 2, 3, 'Rankin Bronze Ejecutive to Silver Ejecutive', '3bf9f708515274fb2b0ac4466e7f4a4e173c7dee', '2019-06-10 11:27:29', '2019-06-10 11:27:29');
INSERT INTO `dbpcn_rankings_details` VALUES (547, 10249, 0, 1, 'Initial Rankings Co-Propietary', NULL, '2019-06-10 16:46:52', '2019-06-10 16:46:52');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_residuals
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_residuals`;
CREATE TABLE `dbpcn_residuals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(30) unsigned NOT NULL,
  `transaction_date` date NOT NULL,
  `amount_cop` decimal(30,2) NOT NULL,
  `ranking_id` int(10) NOT NULL,
  `detail` text NOT NULL,
  `status` enum('Pending','Approved','Rejected') NOT NULL,
  `residual_date_year` int(4) NOT NULL,
  `residual_date_month` int(2) NOT NULL,
  `residual_points` int(11) NOT NULL,
  `residual_users` longtext NOT NULL,
  `residual_hash` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `date_paid` (`user_id`,`residual_date_year`,`residual_date_month`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `fk_residual_ranking_id` (`ranking_id`),
  CONSTRAINT `fk_residual_ranking_id` FOREIGN KEY (`ranking_id`) REFERENCES `dbpcn_rankings` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_residual_user_id` FOREIGN KEY (`user_id`) REFERENCES `dbpcn_members` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for dbpcn_transaction
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_transaction`;
CREATE TABLE `dbpcn_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(30) unsigned NOT NULL,
  `type` enum('egreso','ingreso') NOT NULL,
  `transaction_date` date NOT NULL,
  `concept_id` int(11) NOT NULL,
  `bonus_id` int(11) NOT NULL,
  `amount_cop` decimal(30,2) NOT NULL,
  `current_balance` decimal(30,2) NOT NULL,
  `total_earning` decimal(30,2) NOT NULL,
  `detail` text NOT NULL,
  `status` enum('Pending','Approved','Rejected') NOT NULL,
  `transaction_hash` text NOT NULL,
  `withdrawal_id` int(11) DEFAULT NULL,
  `withdrawal_status` enum('pending','paid') DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `transaction` (`user_id`,`concept_id`,`bonus_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `fk_transaction_concept_id` (`concept_id`),
  CONSTRAINT `fk_transaction_concept_id` FOREIGN KEY (`concept_id`) REFERENCES `general_concepts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_transaction_user_id` FOREIGN KEY (`user_id`) REFERENCES `dbpcn_members` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_transaction
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_transaction` VALUES (1, 1, 'ingreso', '2019-04-27', 2, 1, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (gin)', 'Approved', '83c920351236c95ad6ead3ae1db58af1d823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-04-27 02:48:02', '2019-04-27 02:48:02');
INSERT INTO `dbpcn_transaction` VALUES (177, 10148, 'ingreso', '2019-05-10', 2, 158, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (pasal)', 'Approved', '8a963ceb3c97d42219d6a1242e8e4b5ed823dd5491a6de7571a11eaf4afa4303', 19, 'pending', '2019-05-10 17:22:49', '2019-06-05 15:13:16');
INSERT INTO `dbpcn_transaction` VALUES (178, 10148, 'ingreso', '2019-05-13', 2, 159, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (luhercar)', 'Approved', 'b6c3f77703e99702de74f4d1f7977a0ed823dd5491a6de7571a11eaf4afa4303', 19, 'pending', '2019-05-13 20:01:48', '2019-06-05 15:13:16');
INSERT INTO `dbpcn_transaction` VALUES (179, 10148, 'ingreso', '2019-05-13', 2, 160, 920040.00, 2760120.00, 2760120.00, 'Pago de Directo :: (cabapella)', 'Approved', 'ce0ff74f80dbf7beccc42947551fdcf3d823dd5491a6de7571a11eaf4afa4303', 19, 'pending', '2019-05-13 20:58:39', '2019-06-05 15:13:16');
INSERT INTO `dbpcn_transaction` VALUES (180, 10148, 'ingreso', '2019-05-13', 2, 161, 920040.00, 3680160.00, 3680160.00, 'Pago de Directo :: (bitboss)', 'Approved', 'de1f1f9d70a0e2c21e7f4abdeb661ffbd823dd5491a6de7571a11eaf4afa4303', 19, 'pending', '2019-05-13 21:20:59', '2019-06-05 15:13:16');
INSERT INTO `dbpcn_transaction` VALUES (181, 10149, 'ingreso', '2019-05-13', 2, 162, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (jjpalacio26)', 'Approved', '616d4f810af508d996eaa1caf4e0d369d823dd5491a6de7571a11eaf4afa4303', 2, 'pending', '2019-05-13 21:38:17', '2019-05-31 08:23:51');
INSERT INTO `dbpcn_transaction` VALUES (182, 1, 'ingreso', '2019-05-14', 3, 52, 2070090.00, 2990130.00, 2990130.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', NULL, NULL, '2019-05-14 08:26:38', '2019-05-14 08:26:38');
INSERT INTO `dbpcn_transaction` VALUES (183, 10162, 'ingreso', '2019-05-14', 2, 163, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (globalvision)', 'Approved', '46d237849902e1fd6e43e797d7f37d08d823dd5491a6de7571a11eaf4afa4303', 26, 'paid', '2019-05-14 19:05:20', '2019-06-07 21:35:01');
INSERT INTO `dbpcn_transaction` VALUES (184, 10164, 'ingreso', '2019-05-14', 2, 164, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (yesidf)', 'Approved', 'dbc516d7244c9374cf3992d4f2af6940d823dd5491a6de7571a11eaf4afa4303', 3, 'paid', '2019-05-14 20:06:33', '2019-06-07 15:50:17');
INSERT INTO `dbpcn_transaction` VALUES (185, 10165, 'ingreso', '2019-05-14', 2, 165, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (jagaby)', 'Approved', 'caf7417df46cef4e2f33cfd82347b9eed823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-05-14 22:53:23', '2019-05-14 22:53:23');
INSERT INTO `dbpcn_transaction` VALUES (186, 10162, 'ingreso', '2019-05-15', 2, 166, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (wolf_ecu)', 'Approved', 'da59416b50c76cbd7f3552535ae08802d823dd5491a6de7571a11eaf4afa4303', 26, 'paid', '2019-05-15 00:01:01', '2019-06-07 21:35:01');
INSERT INTO `dbpcn_transaction` VALUES (187, 10167, 'ingreso', '2019-05-15', 2, 167, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (paulhstevens)', 'Approved', '937a0be41d2d37a6adbd95f18d7d2687d823dd5491a6de7571a11eaf4afa4303', 30, 'pending', '2019-05-15 00:01:54', '2019-06-07 17:03:12');
INSERT INTO `dbpcn_transaction` VALUES (188, 10151, 'ingreso', '2019-05-15', 2, 168, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (adelito62)', 'Approved', 'e0df42438e3087559773ab0f5a3a1b3ed823dd5491a6de7571a11eaf4afa4303', 13, 'paid', '2019-05-15 00:02:23', '2019-06-07 16:45:02');
INSERT INTO `dbpcn_transaction` VALUES (189, 10169, 'ingreso', '2019-05-15', 2, 169, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (farcoin93)', 'Approved', 'a4579d5240d626d8b0cdb02afcd28782d823dd5491a6de7571a11eaf4afa4303', 7, 'paid', '2019-05-15 00:03:16', '2019-06-07 16:42:32');
INSERT INTO `dbpcn_transaction` VALUES (190, 10170, 'ingreso', '2019-05-15', 2, 170, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (eliasbm)', 'Approved', '71d71671cc13d18eb321b58a7778fb25d823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-05-15 00:03:49', '2019-05-15 00:03:49');
INSERT INTO `dbpcn_transaction` VALUES (191, 10171, 'ingreso', '2019-05-15', 2, 171, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (carolinayjimmy)', 'Approved', '9339337a9a13b66261fbd849575a93f9d823dd5491a6de7571a11eaf4afa4303', 5, 'paid', '2019-05-15 00:08:26', '2019-06-07 16:40:56');
INSERT INTO `dbpcn_transaction` VALUES (192, 10169, 'ingreso', '2019-05-15', 2, 172, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (trillonario)', 'Approved', '46fbb2e8a4d455aac47f5141581c15b1d823dd5491a6de7571a11eaf4afa4303', 7, 'paid', '2019-05-15 00:32:28', '2019-06-07 16:42:32');
INSERT INTO `dbpcn_transaction` VALUES (193, 10161, 'ingreso', '2019-05-15', 2, 173, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (masterdreamers)', 'Approved', '9fca9434c23c594d715d4ecbc9bde906d823dd5491a6de7571a11eaf4afa4303', 20, 'paid', '2019-05-15 00:34:09', '2019-06-07 16:52:28');
INSERT INTO `dbpcn_transaction` VALUES (194, 10172, 'ingreso', '2019-05-15', 2, 174, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (yosoy)', 'Approved', '96a5dc7c20b05f806cf725dcf75c33e5d823dd5491a6de7571a11eaf4afa4303', 8, 'paid', '2019-05-15 00:34:27', '2019-06-07 16:43:15');
INSERT INTO `dbpcn_transaction` VALUES (195, 10175, 'ingreso', '2019-05-15', 2, 175, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (emjv2019)', 'Approved', '4565b3cbb8e99dd61887d68bb79fb14ad823dd5491a6de7571a11eaf4afa4303', 29, 'pending', '2019-05-15 00:34:40', '2019-06-07 15:49:14');
INSERT INTO `dbpcn_transaction` VALUES (196, 10173, 'ingreso', '2019-05-15', 2, 176, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (diamond17)', 'Approved', '0a80563ca7b58616198f59d6a69b435bd823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-05-15 00:35:16', '2019-05-15 00:35:16');
INSERT INTO `dbpcn_transaction` VALUES (197, 10173, 'ingreso', '2019-05-15', 2, 177, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (luchomaster)', 'Approved', '116036c4bd7f705ddfc1cd4d3c167dcfd823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-05-15 00:35:28', '2019-05-15 00:35:28');
INSERT INTO `dbpcn_transaction` VALUES (198, 10151, 'ingreso', '2019-05-15', 2, 178, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (darioquijano)', 'Approved', 'a1ad447c162e0bba5f490ca34dcbe741d823dd5491a6de7571a11eaf4afa4303', 13, 'paid', '2019-05-15 00:35:42', '2019-06-07 16:45:02');
INSERT INTO `dbpcn_transaction` VALUES (199, 10178, 'ingreso', '2019-05-15', 2, 179, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (luzirene)', 'Approved', 'f45a1760861d7c0a616c48d5e57224b1d823dd5491a6de7571a11eaf4afa4303', 14, 'paid', '2019-05-15 00:35:59', '2019-06-07 16:45:18');
INSERT INTO `dbpcn_transaction` VALUES (200, 10177, 'ingreso', '2019-05-15', 2, 180, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (familiasl)', 'Approved', 'a31067122a5dd2917d56cc12f54e7ca4d823dd5491a6de7571a11eaf4afa4303', 16, 'paid', '2019-05-15 00:36:09', '2019-06-07 16:50:26');
INSERT INTO `dbpcn_transaction` VALUES (201, 10180, 'ingreso', '2019-05-15', 2, 181, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (carly)', 'Approved', '1e612a61eada8284dc7ed52bc7dd73e7d823dd5491a6de7571a11eaf4afa4303', 12, 'paid', '2019-05-15 00:36:37', '2019-06-07 16:44:36');
INSERT INTO `dbpcn_transaction` VALUES (202, 10170, 'ingreso', '2019-05-15', 2, 182, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (juan1515)', 'Approved', 'e34978aa49e9dcae0aeaa6ef3bfdcc58d823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-05-15 00:36:40', '2019-05-15 00:36:40');
INSERT INTO `dbpcn_transaction` VALUES (203, 10171, 'ingreso', '2019-05-15', 2, 183, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (nelson_mejia1)', 'Approved', '927470fc953b56d5de10c158db2117fbd823dd5491a6de7571a11eaf4afa4303', 5, 'paid', '2019-05-15 00:37:06', '2019-06-07 16:40:56');
INSERT INTO `dbpcn_transaction` VALUES (204, 10180, 'ingreso', '2019-05-15', 2, 184, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (hernuesga)', 'Approved', 'b4ab3893ab475ff73165e6640c76c29cd823dd5491a6de7571a11eaf4afa4303', 12, 'paid', '2019-05-15 00:37:12', '2019-06-07 16:44:36');
INSERT INTO `dbpcn_transaction` VALUES (205, 10171, 'ingreso', '2019-05-15', 2, 185, 920040.00, 2760120.00, 2760120.00, 'Pago de Directo :: (tico1977)', 'Approved', '9bda58f69dcdae0516744945bad0127bd823dd5491a6de7571a11eaf4afa4303', 5, 'paid', '2019-05-15 00:37:26', '2019-06-07 16:40:56');
INSERT INTO `dbpcn_transaction` VALUES (206, 10185, 'ingreso', '2019-05-15', 2, 186, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (goldteam)', 'Approved', '4e0d67dbc1936037e6c54c6f599b47b2d823dd5491a6de7571a11eaf4afa4303', 15, 'paid', '2019-05-15 00:39:29', '2019-06-07 16:45:38');
INSERT INTO `dbpcn_transaction` VALUES (207, 10183, 'ingreso', '2019-05-15', 2, 187, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (yulimarolivera0408)', 'Approved', 'c350ebaf50eb89e364acd8add693a70ad823dd5491a6de7571a11eaf4afa4303', 25, 'pending', '2019-05-15 00:39:46', '2019-06-06 16:23:19');
INSERT INTO `dbpcn_transaction` VALUES (208, 10176, 'ingreso', '2019-05-15', 2, 188, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (reymidas07)', 'Approved', 'ffc521acc6d19a50184f543be2240c85d823dd5491a6de7571a11eaf4afa4303', 6, 'paid', '2019-05-15 00:40:10', '2019-06-07 16:42:00');
INSERT INTO `dbpcn_transaction` VALUES (209, 10189, 'ingreso', '2019-05-15', 2, 189, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (reinamidas)', 'Approved', 'ea39667b8693c83894f045137d57f0e0d823dd5491a6de7571a11eaf4afa4303', 23, 'paid', '2019-05-15 00:40:30', '2019-06-07 17:01:11');
INSERT INTO `dbpcn_transaction` VALUES (210, 10177, 'ingreso', '2019-05-15', 2, 190, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (fdam.master)', 'Approved', '8a6a2b5c1eacf97b339259520c42d2d9d823dd5491a6de7571a11eaf4afa4303', 16, 'paid', '2019-05-15 00:40:41', '2019-06-07 16:50:26');
INSERT INTO `dbpcn_transaction` VALUES (211, 10189, 'ingreso', '2019-05-15', 2, 191, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (lnlb2019)', 'Approved', '64aeede5811e24bb564773056399f0f4d823dd5491a6de7571a11eaf4afa4303', 23, 'paid', '2019-05-15 00:40:56', '2019-06-07 17:01:11');
INSERT INTO `dbpcn_transaction` VALUES (212, 10176, 'ingreso', '2019-05-15', 2, 192, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (iferrer2019)', 'Approved', '31b8906326218240435d1305256820cbd823dd5491a6de7571a11eaf4afa4303', 6, 'paid', '2019-05-15 00:41:05', '2019-06-07 16:42:00');
INSERT INTO `dbpcn_transaction` VALUES (213, 10175, 'ingreso', '2019-05-15', 2, 193, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (dserrano)', 'Approved', '0bd681e90f98c0506cc044ba052f9422d823dd5491a6de7571a11eaf4afa4303', 29, 'pending', '2019-05-15 00:41:13', '2019-06-07 15:49:14');
INSERT INTO `dbpcn_transaction` VALUES (214, 10181, 'ingreso', '2019-05-15', 2, 194, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (macdfd01)', 'Approved', '1808c74023b97ba564276c3f113c8537d823dd5491a6de7571a11eaf4afa4303', 10, 'paid', '2019-05-15 00:41:21', '2019-06-07 16:44:04');
INSERT INTO `dbpcn_transaction` VALUES (215, 10180, 'ingreso', '2019-05-15', 3, 53, 460020.00, 2300100.00, 2300100.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 12, 'paid', '2019-05-15 00:25:59', '2019-06-07 16:44:36');
INSERT INTO `dbpcn_transaction` VALUES (216, 10172, 'ingreso', '2019-05-15', 2, 195, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (atlanrot)', 'Approved', '566851064fa5960406ecf4be9904dc57d823dd5491a6de7571a11eaf4afa4303', 8, 'paid', '2019-05-15 13:56:56', '2019-06-07 16:43:15');
INSERT INTO `dbpcn_transaction` VALUES (217, 10167, 'ingreso', '2019-05-15', 2, 196, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (alexluisv)', 'Approved', '117e1b17cd42739f7b1347e08fde3511d823dd5491a6de7571a11eaf4afa4303', 30, 'pending', '2019-05-15 13:59:09', '2019-06-07 17:03:12');
INSERT INTO `dbpcn_transaction` VALUES (218, 10172, 'ingreso', '2019-05-15', 2, 197, 920040.00, 2760120.00, 2760120.00, 'Pago de Directo :: (kano)', 'Approved', 'c8d90973710244e9a7234a3f63bebfd7d823dd5491a6de7571a11eaf4afa4303', 8, 'paid', '2019-05-15 14:00:16', '2019-06-07 16:43:15');
INSERT INTO `dbpcn_transaction` VALUES (219, 10148, 'ingreso', '2019-05-15', 3, 54, 5807752.50, 9487912.50, 9487912.50, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 19, 'pending', '2019-05-15 09:53:04', '2019-06-05 15:13:16');
INSERT INTO `dbpcn_transaction` VALUES (220, 10168, 'ingreso', '2019-05-15', 2, 198, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (dyjingenieria)', 'Approved', 'cd0074e0d37190d193ea5b2b22312239d823dd5491a6de7571a11eaf4afa4303', 31, 'pending', '2019-05-15 15:28:59', '2019-06-07 17:34:49');
INSERT INTO `dbpcn_transaction` VALUES (221, 10199, 'ingreso', '2019-05-15', 2, 199, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (luisfercast)', 'Approved', '6708502f9205be2bebb31e03ec76d2d6d823dd5491a6de7571a11eaf4afa4303', 4, 'paid', '2019-05-15 15:29:22', '2019-06-07 16:37:36');
INSERT INTO `dbpcn_transaction` VALUES (222, 10199, 'ingreso', '2019-05-15', 2, 200, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (jufesera)', 'Approved', 'e0246478c6ba91a62ffe1c1db79ec069d823dd5491a6de7571a11eaf4afa4303', 4, 'paid', '2019-05-15 15:29:37', '2019-06-07 16:37:36');
INSERT INTO `dbpcn_transaction` VALUES (223, 10199, 'ingreso', '2019-05-15', 2, 201, 920040.00, 2760120.00, 2760120.00, 'Pago de Directo :: (andreyamaya1927)', 'Approved', 'eb34a5a96d4e93c27f521cf3e7da1c8fd823dd5491a6de7571a11eaf4afa4303', 4, 'paid', '2019-05-15 15:29:46', '2019-06-07 16:37:36');
INSERT INTO `dbpcn_transaction` VALUES (224, 10199, 'ingreso', '2019-05-15', 2, 202, 920040.00, 3680160.00, 3680160.00, 'Pago de Directo :: (housedream)', 'Approved', '465987a05a2a93ed4069c0f896a9c86ad823dd5491a6de7571a11eaf4afa4303', 4, 'paid', '2019-05-15 15:30:40', '2019-06-07 16:37:36');
INSERT INTO `dbpcn_transaction` VALUES (225, 10199, 'ingreso', '2019-05-15', 2, 203, 920040.00, 4600200.00, 4600200.00, 'Pago de Directo :: (adriana)', 'Approved', '55be4b9b232e45f0fed0ee635e81a22ad823dd5491a6de7571a11eaf4afa4303', 4, 'paid', '2019-05-15 15:30:49', '2019-06-07 16:37:36');
INSERT INTO `dbpcn_transaction` VALUES (226, 10201, 'ingreso', '2019-05-15', 2, 204, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (excellentpower)', 'Approved', 'acf95d9a2c9431167181cd81dce1a064d823dd5491a6de7571a11eaf4afa4303', 9, 'paid', '2019-05-15 15:33:13', '2019-06-07 16:43:48');
INSERT INTO `dbpcn_transaction` VALUES (227, 10205, 'ingreso', '2019-05-15', 2, 205, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (heyeve)', 'Approved', 'ac12ddf148f58122fa366c06d8880b50d823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-05-15 15:33:27', '2019-05-15 15:33:27');
INSERT INTO `dbpcn_transaction` VALUES (228, 10198, 'ingreso', '2019-05-15', 2, 206, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (inari)', 'Approved', 'dd7391af7f683b63814458f9e6bbdae0d823dd5491a6de7571a11eaf4afa4303', 18, 'paid', '2019-05-15 15:34:13', '2019-06-07 16:51:44');
INSERT INTO `dbpcn_transaction` VALUES (229, 10167, 'ingreso', '2019-05-15', 3, 58, 460020.00, 2300100.00, 2300100.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 30, 'pending', '2019-05-15 10:37:58', '2019-06-07 17:03:12');
INSERT INTO `dbpcn_transaction` VALUES (230, 10164, 'ingreso', '2019-05-15', 2, 207, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (visionary)', 'Approved', 'ab78e16dc324af8fcfbe652c7ac4d2d2d823dd5491a6de7571a11eaf4afa4303', 3, 'paid', '2019-05-15 17:34:03', '2019-06-07 15:50:17');
INSERT INTO `dbpcn_transaction` VALUES (231, 10173, 'ingreso', '2019-05-16', 2, 208, 920040.00, 2760120.00, 2760120.00, 'Pago de Directo :: (camilo1140)', 'Approved', '4afbfe1767a63a6b0759de0c9b127aead823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-05-16 16:07:17', '2019-05-16 16:07:17');
INSERT INTO `dbpcn_transaction` VALUES (232, 10172, 'ingreso', '2019-05-16', 2, 209, 920040.00, 3680160.00, 3680160.00, 'Pago de Directo :: (cupercuevas83)', 'Approved', '0c4534b39ab0a13dd2db06b7a13c5397d823dd5491a6de7571a11eaf4afa4303', 8, 'paid', '2019-05-16 16:07:44', '2019-06-07 16:43:15');
INSERT INTO `dbpcn_transaction` VALUES (233, 10182, 'ingreso', '2019-05-16', 2, 210, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (wtpropiedad1)', 'Approved', '668b2ad4411d0978daf1de7e1594046cd823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-05-16 16:08:34', '2019-05-16 16:08:34');
INSERT INTO `dbpcn_transaction` VALUES (234, 10191, 'ingreso', '2019-05-16', 2, 211, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (nancy.roa)', 'Approved', '1cd4f6668249a4c2b78a4644c5ffa542d823dd5491a6de7571a11eaf4afa4303', 21, 'paid', '2019-05-16 21:18:20', '2019-06-07 16:53:16');
INSERT INTO `dbpcn_transaction` VALUES (235, 10187, 'ingreso', '2019-05-17', 2, 212, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (billions)', 'Approved', '71f74e39570b9825533ae9df241f8935d823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-05-17 14:13:58', '2019-05-17 14:13:58');
INSERT INTO `dbpcn_transaction` VALUES (236, 10203, 'ingreso', '2019-05-17', 2, 213, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (jesuscardona)', 'Approved', '28921a970698a8f59b17f0264dcc1360d823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-05-17 20:17:49', '2019-05-17 20:17:49');
INSERT INTO `dbpcn_transaction` VALUES (237, 10164, 'ingreso', '2019-05-20', 2, 214, 920040.00, 2760120.00, 2760120.00, 'Pago de Directo :: (sergioparra)', 'Approved', 'e4835c2cc60c39f4b8f38e4caa03e7d1d823dd5491a6de7571a11eaf4afa4303', 3, 'paid', '2019-05-20 14:47:32', '2019-06-07 15:50:17');
INSERT INTO `dbpcn_transaction` VALUES (238, 10164, 'ingreso', '2019-05-20', 2, 215, 920040.00, 3680160.00, 3680160.00, 'Pago de Directo :: (byronochoa)', 'Approved', 'd05711e44bf5dc273cd038be07ad4e5bd823dd5491a6de7571a11eaf4afa4303', 3, 'paid', '2019-05-20 14:50:42', '2019-06-07 15:50:17');
INSERT INTO `dbpcn_transaction` VALUES (239, 10148, 'ingreso', '2019-05-20', 3, 59, 1897582.50, 11385495.00, 11385495.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 19, 'pending', '2019-05-20 13:11:50', '2019-06-05 15:13:16');
INSERT INTO `dbpcn_transaction` VALUES (240, 10171, 'ingreso', '2019-05-21', 3, 60, 1840080.00, 4600200.00, 4600200.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 5, 'paid', '2019-05-21 07:53:35', '2019-06-07 16:40:56');
INSERT INTO `dbpcn_transaction` VALUES (241, 10215, 'ingreso', '2019-05-21', 2, 216, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (juanjose)', 'Approved', '5d8ea5e14e29b23e01aad99ca1e9a561d823dd5491a6de7571a11eaf4afa4303', 32, 'pending', '2019-05-21 19:07:30', '2019-06-08 13:10:22');
INSERT INTO `dbpcn_transaction` VALUES (242, 10199, 'ingreso', '2019-05-21', 2, 217, 920040.00, 5520240.00, 5520240.00, 'Pago de Directo :: (lote1mz38)', 'Approved', 'f7193c1cfca232b73f1fb25c11e02b58d823dd5491a6de7571a11eaf4afa4303', 4, 'paid', '2019-05-21 19:08:57', '2019-06-07 16:37:36');
INSERT INTO `dbpcn_transaction` VALUES (243, 10148, 'ingreso', '2019-05-21', 3, 61, 230010.00, 11615505.00, 11615505.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 19, 'pending', '2019-05-21 14:18:42', '2019-06-05 15:13:16');
INSERT INTO `dbpcn_transaction` VALUES (244, 10199, 'ingreso', '2019-05-21', 3, 62, 920040.00, 6440280.00, 6440280.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 4, 'paid', '2019-05-21 14:37:37', '2019-06-07 16:37:36');
INSERT INTO `dbpcn_transaction` VALUES (245, 10164, 'ingreso', '2019-05-21', 3, 63, 460020.00, 4140180.00, 4140180.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 3, 'paid', '2019-05-21 15:55:20', '2019-06-07 15:50:17');
INSERT INTO `dbpcn_transaction` VALUES (246, 10174, 'ingreso', '2019-05-21', 2, 218, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (dreamerazul)', 'Approved', '30ebb122995426956a0f7104817804f1d823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-05-21 21:47:04', '2019-05-21 21:47:04');
INSERT INTO `dbpcn_transaction` VALUES (247, 10181, 'ingreso', '2019-05-23', 2, 219, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (rmartinez2459)', 'Approved', 'b006f5a890a4f45084fd3aa24cff60ecd823dd5491a6de7571a11eaf4afa4303', 10, 'paid', '2019-05-23 21:08:04', '2019-06-07 16:44:04');
INSERT INTO `dbpcn_transaction` VALUES (248, 10148, 'ingreso', '2019-05-23', 3, 69, 287512.50, 11903017.50, 11903017.50, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 19, 'pending', '2019-05-23 18:24:06', '2019-06-05 15:13:16');
INSERT INTO `dbpcn_transaction` VALUES (249, 10208, 'ingreso', '2019-05-24', 2, 220, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (refricol)', 'Approved', 'ee4ca20104b25e96f94e325bd763c963d823dd5491a6de7571a11eaf4afa4303', 22, 'paid', '2019-05-24 13:42:51', '2019-06-07 17:00:38');
INSERT INTO `dbpcn_transaction` VALUES (250, 10208, 'ingreso', '2019-05-24', 2, 221, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (cayita)', 'Approved', '3472cc5442da492fa115e46cf5223d4ed823dd5491a6de7571a11eaf4afa4303', 22, 'paid', '2019-05-24 13:44:36', '2019-06-07 17:00:38');
INSERT INTO `dbpcn_transaction` VALUES (251, 10164, 'ingreso', '2019-05-24', 3, 71, 920040.00, 5060220.00, 5060220.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 3, 'paid', '2019-05-24 13:29:11', '2019-06-07 15:50:17');
INSERT INTO `dbpcn_transaction` VALUES (252, 10148, 'ingreso', '2019-05-24', 3, 72, 230010.00, 12133027.50, 12133027.50, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 19, 'pending', '2019-05-24 16:45:46', '2019-06-05 15:13:16');
INSERT INTO `dbpcn_transaction` VALUES (253, 10180, 'ingreso', '2019-05-27', 3, 73, 460020.00, 2760120.00, 2760120.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 12, 'paid', '2019-05-27 11:52:37', '2019-06-07 16:44:36');
INSERT INTO `dbpcn_transaction` VALUES (254, 10208, 'ingreso', '2019-05-27', 2, 222, 920040.00, 2760120.00, 2760120.00, 'Pago de Directo :: (rimexy)', 'Approved', '28d648f77e9158193081cd9973b7c0d3d823dd5491a6de7571a11eaf4afa4303', 22, 'paid', '2019-05-27 19:15:31', '2019-06-07 17:00:38');
INSERT INTO `dbpcn_transaction` VALUES (255, 10164, 'ingreso', '2019-05-27', 3, 74, 920040.00, 5980260.00, 5980260.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 3, 'paid', '2019-05-27 14:27:43', '2019-06-07 15:50:17');
INSERT INTO `dbpcn_transaction` VALUES (256, 1, 'ingreso', '2019-05-27', 3, 75, 5290230.00, 8280360.00, 8280360.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', NULL, NULL, '2019-05-27 16:00:44', '2019-05-27 16:00:44');
INSERT INTO `dbpcn_transaction` VALUES (257, 10148, 'ingreso', '2019-05-27', 3, 76, 115005.00, 12248032.50, 12248032.50, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 19, 'pending', '2019-05-27 16:47:37', '2019-06-05 15:13:16');
INSERT INTO `dbpcn_transaction` VALUES (258, 10220, 'ingreso', '2019-05-27', 2, 223, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (m21-01)', 'Approved', 'af6f303c03f337ad3cf9ef1ced7455ced823dd5491a6de7571a11eaf4afa4303', 11, 'paid', '2019-05-27 21:58:51', '2019-06-07 16:44:20');
INSERT INTO `dbpcn_transaction` VALUES (259, 10162, 'ingreso', '2019-05-27', 3, 81, 2760120.00, 4600200.00, 4600200.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 26, 'paid', '2019-05-27 20:06:25', '2019-06-07 21:35:01');
INSERT INTO `dbpcn_transaction` VALUES (260, 10148, 'ingreso', '2019-05-28', 3, 82, 57502.50, 12305535.00, 12305535.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 19, 'pending', '2019-05-28 10:23:52', '2019-06-05 15:13:16');
INSERT INTO `dbpcn_transaction` VALUES (261, 10181, 'ingreso', '2019-05-28', 3, 84, 460020.00, 2300100.00, 2300100.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 10, 'paid', '2019-05-28 11:31:17', '2019-06-07 16:44:04');
INSERT INTO `dbpcn_transaction` VALUES (262, 10169, 'ingreso', '2019-05-28', 3, 85, 2300100.00, 4140180.00, 4140180.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 7, 'paid', '2019-05-28 11:58:18', '2019-06-07 16:42:32');
INSERT INTO `dbpcn_transaction` VALUES (263, 10170, 'ingreso', '2019-05-28', 3, 86, 1840080.00, 3680160.00, 3680160.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', NULL, NULL, '2019-05-28 12:00:46', '2019-05-28 12:00:46');
INSERT INTO `dbpcn_transaction` VALUES (264, 10172, 'ingreso', '2019-05-28', 2, 224, 920040.00, 4600200.00, 4600200.00, 'Pago de Directo :: (yolanda2019)', 'Approved', '7087297df291fc438d91747faf72794ed823dd5491a6de7571a11eaf4afa4303', 8, 'paid', '2019-05-28 20:31:32', '2019-06-07 16:43:15');
INSERT INTO `dbpcn_transaction` VALUES (265, 10217, 'ingreso', '2019-05-28', 2, 225, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (joca2689)', 'Approved', '9040a1d74cd120ff0b3979da468ad500d823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-05-28 20:33:46', '2019-05-28 20:33:46');
INSERT INTO `dbpcn_transaction` VALUES (266, 10185, 'ingreso', '2019-05-28', 2, 226, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (gabi1976)', 'Approved', '50b3700c5e29dce07804b3e46a9284b0d823dd5491a6de7571a11eaf4afa4303', 15, 'paid', '2019-05-28 21:11:53', '2019-06-07 16:45:38');
INSERT INTO `dbpcn_transaction` VALUES (267, 10223, 'ingreso', '2019-05-28', 2, 227, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (peter9301)', 'Approved', '1bdf81f9f1f2b5a69460a3aba6f14f5ad823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-05-28 21:13:03', '2019-05-28 21:13:03');
INSERT INTO `dbpcn_transaction` VALUES (268, 10185, 'ingreso', '2019-05-28', 3, 89, 460020.00, 2300100.00, 2300100.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 15, 'paid', '2019-05-28 16:14:18', '2019-06-07 16:45:38');
INSERT INTO `dbpcn_transaction` VALUES (269, 10171, 'ingreso', '2019-05-28', 3, 91, 460020.00, 5060220.00, 5060220.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 5, 'paid', '2019-05-28 16:53:21', '2019-06-07 16:40:56');
INSERT INTO `dbpcn_transaction` VALUES (270, 10208, 'ingreso', '2019-05-28', 3, 92, 460020.00, 3220140.00, 3220140.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 22, 'paid', '2019-05-28 17:59:46', '2019-06-07 17:00:38');
INSERT INTO `dbpcn_transaction` VALUES (271, 10151, 'ingreso', '2019-05-28', 3, 93, 920040.00, 2760120.00, 2760120.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 13, 'paid', '2019-05-28 20:30:55', '2019-06-07 16:45:02');
INSERT INTO `dbpcn_transaction` VALUES (272, 10172, 'ingreso', '2019-05-28', 3, 95, 1380060.00, 5980260.00, 5980260.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 8, 'paid', '2019-05-28 22:53:22', '2019-06-07 16:43:15');
INSERT INTO `dbpcn_transaction` VALUES (273, 10176, 'ingreso', '2019-05-29', 3, 96, 920040.00, 2760120.00, 2760120.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 6, 'paid', '2019-05-29 07:10:42', '2019-06-07 16:42:00');
INSERT INTO `dbpcn_transaction` VALUES (274, 10225, 'ingreso', '2019-05-29', 2, 228, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (sharom2204)', 'Approved', '5264262a33a9381076eeb64b2ebe48c8d823dd5491a6de7571a11eaf4afa4303', 17, 'paid', '2019-05-29 14:49:00', '2019-06-07 16:51:15');
INSERT INTO `dbpcn_transaction` VALUES (275, 10229, 'ingreso', '2019-05-29', 2, 229, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (fernandolondonoruiz1969)', 'Approved', 'd58a6693523493d855a2d47acc7e4dc0d823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-05-29 15:35:06', '2019-05-29 15:35:06');
INSERT INTO `dbpcn_transaction` VALUES (276, 10225, 'ingreso', '2019-05-29', 2, 230, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (santiago2026)', 'Approved', '405871cd3e30aac4cc4fc578250c7a40d823dd5491a6de7571a11eaf4afa4303', 17, 'paid', '2019-05-29 21:16:40', '2019-06-07 16:51:15');
INSERT INTO `dbpcn_transaction` VALUES (277, 10148, 'ingreso', '2019-05-29', 3, 97, 460020.00, 12765555.00, 12765555.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 19, 'pending', '2019-05-29 16:59:12', '2019-06-05 15:13:16');
INSERT INTO `dbpcn_transaction` VALUES (278, 10180, 'ingreso', '2019-05-29', 3, 98, 460020.00, 3220140.00, 3220140.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 12, 'paid', '2019-05-29 18:55:40', '2019-06-07 16:44:36');
INSERT INTO `dbpcn_transaction` VALUES (279, 10172, 'ingreso', '2019-05-29', 3, 99, 1150050.00, 7130310.00, 7130310.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 8, 'paid', '2019-05-29 19:09:08', '2019-06-07 16:43:15');
INSERT INTO `dbpcn_transaction` VALUES (280, 10187, 'ingreso', '2019-05-30', 2, 231, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (fannyguz)', 'Approved', '221edc715e7d545035c31e8ea367b473d823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-05-30 14:28:49', '2019-05-30 14:28:49');
INSERT INTO `dbpcn_transaction` VALUES (281, 10185, 'ingreso', '2019-05-30', 3, 100, 460020.00, 2760120.00, 2760120.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 15, 'paid', '2019-05-30 10:21:09', '2019-06-07 16:45:38');
INSERT INTO `dbpcn_transaction` VALUES (282, 10222, 'ingreso', '2019-05-30', 2, 232, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (jamessofia10)', 'Approved', '9e76c7acc3c364eea5925077fab8c33dd823dd5491a6de7571a11eaf4afa4303', 27, 'pending', '2019-05-30 19:06:24', '2019-06-06 18:38:28');
INSERT INTO `dbpcn_transaction` VALUES (283, 10226, 'ingreso', '2019-05-30', 2, 233, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (casasfredy)', 'Approved', '6164c7a22c7376493d33265adfd707c6d823dd5491a6de7571a11eaf4afa4303', 24, 'paid', '2019-05-30 20:56:41', '2019-06-07 17:01:29');
INSERT INTO `dbpcn_transaction` VALUES (284, 10226, 'ingreso', '2019-05-30', 2, 234, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (germanchacon)', 'Approved', '635c45cce7b8fd648d74cdcafc0cefbcd823dd5491a6de7571a11eaf4afa4303', 24, 'paid', '2019-05-30 20:58:41', '2019-06-07 17:01:29');
INSERT INTO `dbpcn_transaction` VALUES (285, 10148, 'ingreso', '2019-05-30', 3, 102, 230010.00, 12995565.00, 12995565.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 19, 'pending', '2019-05-30 18:06:01', '2019-06-05 15:13:16');
INSERT INTO `dbpcn_transaction` VALUES (286, 10208, 'ingreso', '2019-05-30', 3, 103, 460020.00, 3680160.00, 3680160.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 22, 'paid', '2019-05-30 18:35:33', '2019-06-07 17:00:38');
INSERT INTO `dbpcn_transaction` VALUES (287, 10149, 'egreso', '2019-05-31', 9, 2, -920040.00, 0.00, 920040.00, 'Solicitud de retiro', 'Pending', 'd89d8e9e361ea6ab6bae44bbf0d935a1d823dd5491a6de7571a11eaf4afa4303', 2, 'pending', '2019-05-31 08:23:51', '2019-05-31 08:23:51');
INSERT INTO `dbpcn_transaction` VALUES (288, 10168, 'ingreso', '2019-05-31', 2, 235, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (brayohan1985)', 'Approved', '445e5a99732c25cfa35d0d9da769ad6dd823dd5491a6de7571a11eaf4afa4303', 31, 'pending', '2019-05-31 14:15:26', '2019-06-07 17:34:49');
INSERT INTO `dbpcn_transaction` VALUES (289, 10167, 'ingreso', '2019-05-31', 3, 105, 460020.00, 2760120.00, 2760120.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 30, 'pending', '2019-05-31 10:10:01', '2019-06-07 17:03:12');
INSERT INTO `dbpcn_transaction` VALUES (290, 10168, 'ingreso', '2019-05-31', 3, 106, 2760120.00, 4600200.00, 4600200.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 31, 'pending', '2019-05-31 13:42:31', '2019-06-07 17:34:49');
INSERT INTO `dbpcn_transaction` VALUES (291, 10148, 'ingreso', '2019-05-31', 3, 108, 115005.00, 13110570.00, 13110570.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 19, 'pending', '2019-05-31 17:59:32', '2019-06-05 15:13:16');
INSERT INTO `dbpcn_transaction` VALUES (292, 10164, 'egreso', '2019-05-31', 9, 3, -5980260.00, 0.00, 5980260.00, 'Solicitud de retiro', 'Pending', '827d13c024aecb4d8182846fd5f0c403d823dd5491a6de7571a11eaf4afa4303', 3, 'paid', '2019-05-31 18:44:42', '2019-06-07 15:50:17');
INSERT INTO `dbpcn_transaction` VALUES (293, 10199, 'egreso', '2019-06-01', 9, 4, -6440280.00, 0.00, 6440280.00, 'Solicitud de retiro', 'Pending', '049ff39ed379d2991c6df37d9b1d9330d823dd5491a6de7571a11eaf4afa4303', 4, 'paid', '2019-06-01 08:39:49', '2019-06-07 16:37:36');
INSERT INTO `dbpcn_transaction` VALUES (294, 10175, 'ingreso', '2019-06-01', 3, 111, 920040.00, 2760120.00, 2760120.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 29, 'pending', '2019-06-01 09:34:13', '2019-06-07 15:49:14');
INSERT INTO `dbpcn_transaction` VALUES (295, 10171, 'egreso', '2019-06-01', 9, 5, -5060220.00, 0.00, 5060220.00, 'Solicitud de retiro', 'Pending', '881b67fe058f4e2ec4e4041bc2407f72d823dd5491a6de7571a11eaf4afa4303', 5, 'paid', '2019-06-01 09:57:29', '2019-06-07 16:40:56');
INSERT INTO `dbpcn_transaction` VALUES (296, 10176, 'egreso', '2019-06-01', 9, 6, -2760120.00, 0.00, 2760120.00, 'Solicitud de retiro', 'Pending', '1d6c2868caabf43befe3490dbd610516d823dd5491a6de7571a11eaf4afa4303', 6, 'paid', '2019-06-01 13:07:30', '2019-06-07 16:42:00');
INSERT INTO `dbpcn_transaction` VALUES (297, 10172, 'ingreso', '2019-06-01', 3, 114, 460020.00, 7590330.00, 7590330.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 8, 'paid', '2019-06-01 12:28:03', '2019-06-07 16:43:15');
INSERT INTO `dbpcn_transaction` VALUES (298, 10169, 'egreso', '2019-06-01', 9, 7, -4140180.00, 0.00, 4140180.00, 'Solicitud de retiro', 'Pending', 'bb0dce758b52e253524c2c71736e04dcd823dd5491a6de7571a11eaf4afa4303', 7, 'paid', '2019-06-01 14:57:18', '2019-06-07 16:42:32');
INSERT INTO `dbpcn_transaction` VALUES (299, 10172, 'egreso', '2019-06-01', 9, 8, -7590330.00, 0.00, 7590330.00, 'Solicitud de retiro', 'Pending', 'd19d7cd51d2a3fc08965794b9b7566cfd823dd5491a6de7571a11eaf4afa4303', 8, 'paid', '2019-06-01 15:59:47', '2019-06-07 16:43:15');
INSERT INTO `dbpcn_transaction` VALUES (300, 10201, 'egreso', '2019-06-01', 9, 9, -920040.00, 0.00, 920040.00, 'Solicitud de retiro', 'Pending', 'c5433e915c5f181ec0076dae35c7cef5d823dd5491a6de7571a11eaf4afa4303', 9, 'paid', '2019-06-01 18:21:57', '2019-06-07 16:43:48');
INSERT INTO `dbpcn_transaction` VALUES (301, 10181, 'egreso', '2019-06-03', 9, 10, -2300100.00, 0.00, 2300100.00, 'Solicitud de retiro', 'Pending', '769788ade06411e063edbd51239787f9d823dd5491a6de7571a11eaf4afa4303', 10, 'paid', '2019-06-03 00:06:48', '2019-06-07 16:44:04');
INSERT INTO `dbpcn_transaction` VALUES (302, 10177, 'ingreso', '2019-06-03', 3, 116, 1380060.00, 3220140.00, 3220140.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 16, 'paid', '2019-06-03 11:09:04', '2019-06-07 16:50:26');
INSERT INTO `dbpcn_transaction` VALUES (303, 10180, 'ingreso', '2019-06-04', 2, 236, 920040.00, 4140180.00, 4140180.00, 'Pago de Directo :: (mastermind)', 'Approved', 'b75ab2b36d71aa92183d4db0b37b51d3d823dd5491a6de7571a11eaf4afa4303', 12, 'paid', '2019-06-04 14:10:09', '2019-06-07 16:44:36');
INSERT INTO `dbpcn_transaction` VALUES (304, 10230, 'ingreso', '2019-06-04', 2, 237, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (marbit2017)', 'Approved', 'aee4dc53f3fc01818fe045319c7bda72d823dd5491a6de7571a11eaf4afa4303', 28, 'pending', '2019-06-04 14:10:16', '2019-06-07 08:22:52');
INSERT INTO `dbpcn_transaction` VALUES (305, 10220, 'egreso', '2019-06-04', 9, 11, -920040.00, 0.00, 920040.00, 'Solicitud de retiro', 'Pending', 'c6eb1d0995e569c56645cb16f63a9f90d823dd5491a6de7571a11eaf4afa4303', 11, 'paid', '2019-06-04 12:00:45', '2019-06-07 16:44:20');
INSERT INTO `dbpcn_transaction` VALUES (306, 10180, 'egreso', '2019-06-04', 9, 12, -4140180.00, 0.00, 4140180.00, 'Solicitud de retiro', 'Pending', '714c04dedba906c4a255e1206c974b20d823dd5491a6de7571a11eaf4afa4303', 12, 'paid', '2019-06-04 12:44:46', '2019-06-07 16:44:36');
INSERT INTO `dbpcn_transaction` VALUES (307, 10151, 'egreso', '2019-06-04', 9, 13, -2760120.00, 0.00, 2760120.00, 'Solicitud de retiro', 'Pending', '16b44a35ccef4d59bcf4a47e6b796dacd823dd5491a6de7571a11eaf4afa4303', 13, 'paid', '2019-06-04 15:29:38', '2019-06-07 16:45:02');
INSERT INTO `dbpcn_transaction` VALUES (308, 10178, 'egreso', '2019-06-04', 9, 14, -920040.00, 0.00, 920040.00, 'Solicitud de retiro', 'Pending', '5f094374bccbaf1be1cf9679d528363bd823dd5491a6de7571a11eaf4afa4303', 14, 'paid', '2019-06-04 17:30:47', '2019-06-07 16:45:18');
INSERT INTO `dbpcn_transaction` VALUES (309, 10185, 'egreso', '2019-06-04', 9, 15, -2760120.00, 0.00, 2760120.00, 'Solicitud de retiro', 'Pending', '1ed8749f23aec3ab68c65460459bbeb1d823dd5491a6de7571a11eaf4afa4303', 15, 'paid', '2019-06-04 21:18:01', '2019-06-07 16:45:38');
INSERT INTO `dbpcn_transaction` VALUES (310, 10177, 'ingreso', '2019-06-05', 2, 238, 920040.00, 4140180.00, 4140180.00, 'Pago de Directo :: (dpanche2019)', 'Approved', '4853647b4187e357c0244e0efc2f05d4d823dd5491a6de7571a11eaf4afa4303', 16, 'paid', '2019-06-05 14:05:09', '2019-06-07 16:50:26');
INSERT INTO `dbpcn_transaction` VALUES (311, 10173, 'ingreso', '2019-06-05', 2, 239, 920040.00, 3680160.00, 3680160.00, 'Pago de Directo :: (georgemaster)', 'Approved', '32990e6d91a4e365e4a7b81fb2657e5ed823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-06-05 15:14:31', '2019-06-05 15:14:31');
INSERT INTO `dbpcn_transaction` VALUES (312, 10240, 'ingreso', '2019-06-05', 2, 240, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (margaritamora)', 'Approved', '9f5cda6cd9c310670bcf22e648439e3cd823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-06-05 15:14:37', '2019-06-05 15:14:37');
INSERT INTO `dbpcn_transaction` VALUES (313, 10177, 'egreso', '2019-06-05', 9, 16, -4140180.00, 0.00, 4140180.00, 'Solicitud de retiro', 'Pending', '2139022da281f55f7c0a4f1916aff0b5d823dd5491a6de7571a11eaf4afa4303', 16, 'paid', '2019-06-05 11:03:45', '2019-06-07 16:50:26');
INSERT INTO `dbpcn_transaction` VALUES (314, 10225, 'egreso', '2019-06-05', 9, 17, -1840080.00, 0.00, 1840080.00, 'Solicitud de retiro', 'Pending', 'c5320bfd4030f44047b022d4714337cdd823dd5491a6de7571a11eaf4afa4303', 17, 'paid', '2019-06-05 11:30:19', '2019-06-07 16:51:15');
INSERT INTO `dbpcn_transaction` VALUES (315, 10240, 'ingreso', '2019-06-05', 2, 241, 920040.00, 1840080.00, 1840080.00, 'Pago de Directo :: (stellar1)', 'Approved', '321573ce38777a74f78dd32a2d7524e7d823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-06-05 17:21:56', '2019-06-05 17:21:56');
INSERT INTO `dbpcn_transaction` VALUES (316, 10198, 'egreso', '2019-06-05', 9, 18, -920040.00, 0.00, 920040.00, 'Solicitud de retiro', 'Pending', '89fbc70085636b3a39e662efe80a7dc9d823dd5491a6de7571a11eaf4afa4303', 18, 'paid', '2019-06-05 13:08:14', '2019-06-07 16:51:44');
INSERT INTO `dbpcn_transaction` VALUES (317, 10148, 'ingreso', '2019-06-05', 3, 117, 517522.50, 13628092.50, 13628092.50, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', 19, 'pending', '2019-06-05 13:59:46', '2019-06-05 15:13:16');
INSERT INTO `dbpcn_transaction` VALUES (318, 10148, 'egreso', '2019-06-05', 9, 19, -13628092.50, 0.00, 13628092.50, 'Solicitud de retiro', 'Pending', '10189f074ecdb02e0770ebe83288af58d823dd5491a6de7571a11eaf4afa4303', 19, 'pending', '2019-06-05 15:13:16', '2019-06-05 15:13:16');
INSERT INTO `dbpcn_transaction` VALUES (319, 10161, 'egreso', '2019-06-05', 9, 20, -920040.00, 0.00, 920040.00, 'Solicitud de retiro', 'Pending', 'df86a6e432abafd11f1bfd355494b0e4d823dd5491a6de7571a11eaf4afa4303', 20, 'paid', '2019-06-05 15:45:30', '2019-06-07 16:52:28');
INSERT INTO `dbpcn_transaction` VALUES (320, 10191, 'egreso', '2019-06-05', 9, 21, -920040.00, 0.00, 920040.00, 'Solicitud de retiro', 'Pending', 'a6716c74c67fd05d663c17f8af533236d823dd5491a6de7571a11eaf4afa4303', 21, 'paid', '2019-06-05 16:08:47', '2019-06-07 16:53:16');
INSERT INTO `dbpcn_transaction` VALUES (321, 10208, 'egreso', '2019-06-06', 9, 22, -3680160.00, 0.00, 3680160.00, 'Solicitud de retiro', 'Pending', '07f07bb971302916fdbedc2cb568167dd823dd5491a6de7571a11eaf4afa4303', 22, 'paid', '2019-06-06 06:35:37', '2019-06-07 17:00:38');
INSERT INTO `dbpcn_transaction` VALUES (322, 10189, 'egreso', '2019-06-06', 9, 23, -1840080.00, 0.00, 1840080.00, 'Solicitud de retiro', 'Pending', '84f5661b35a729f55047f9e793d8798bd823dd5491a6de7571a11eaf4afa4303', 23, 'paid', '2019-06-06 11:07:39', '2019-06-07 17:01:11');
INSERT INTO `dbpcn_transaction` VALUES (323, 10226, 'egreso', '2019-06-06', 9, 24, -1840080.00, 0.00, 1840080.00, 'Solicitud de retiro', 'Pending', 'b92d0ddc9614210b50a521ac8fb7efead823dd5491a6de7571a11eaf4afa4303', 24, 'paid', '2019-06-06 11:29:47', '2019-06-07 17:01:29');
INSERT INTO `dbpcn_transaction` VALUES (324, 10183, 'egreso', '2019-06-06', 9, 25, -920040.00, 0.00, 920040.00, 'Solicitud de retiro', 'Pending', 'a9ac4c2c3c0b49e4a49633022360077fd823dd5491a6de7571a11eaf4afa4303', 25, 'pending', '2019-06-06 16:23:19', '2019-06-06 16:23:19');
INSERT INTO `dbpcn_transaction` VALUES (325, 10162, 'egreso', '2019-06-06', 9, 26, -4600200.00, 0.00, 4600200.00, 'Solicitud de retiro', 'Pending', 'a4ec060c82545f0534d4a63ff9e95b7ed823dd5491a6de7571a11eaf4afa4303', 26, 'paid', '2019-06-06 18:14:25', '2019-06-07 21:35:01');
INSERT INTO `dbpcn_transaction` VALUES (326, 10222, 'egreso', '2019-06-06', 9, 27, -920040.00, 0.00, 920040.00, 'Solicitud de retiro', 'Pending', '090081b6f6a3b3f2161fff7f24ff2fb8d823dd5491a6de7571a11eaf4afa4303', 27, 'pending', '2019-06-06 18:38:28', '2019-06-06 18:38:28');
INSERT INTO `dbpcn_transaction` VALUES (327, 10230, 'egreso', '2019-06-07', 9, 28, -920040.00, 0.00, 920040.00, 'Solicitud de retiro', 'Pending', '60a16db11f669087d3f34f3cf12134d3d823dd5491a6de7571a11eaf4afa4303', 28, 'pending', '2019-06-07 08:22:52', '2019-06-07 08:22:52');
INSERT INTO `dbpcn_transaction` VALUES (328, 10226, 'ingreso', '2019-06-07', 2, 242, 920040.00, 920040.00, 2760120.00, 'Pago de Directo :: (joelariza)', 'Approved', '7aca2a4971a9d5ea5ab1cd7db2753754d823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-06-07 19:53:31', '2019-06-07 19:53:31');
INSERT INTO `dbpcn_transaction` VALUES (329, 10175, 'egreso', '2019-06-07', 9, 29, -2760120.00, 0.00, 2760120.00, 'Solicitud de retiro', 'Pending', '14effd4c68e5c0ec599dae67c8f8cdf2d823dd5491a6de7571a11eaf4afa4303', 29, 'pending', '2019-06-07 15:49:14', '2019-06-07 15:49:14');
INSERT INTO `dbpcn_transaction` VALUES (330, 10167, 'egreso', '2019-06-07', 9, 30, -2760120.00, 0.00, 2760120.00, 'Solicitud de retiro', 'Pending', '05ded3669453f14143a799f854b82fafd823dd5491a6de7571a11eaf4afa4303', 30, 'pending', '2019-06-07 17:03:11', '2019-06-07 17:03:12');
INSERT INTO `dbpcn_transaction` VALUES (331, 10168, 'egreso', '2019-06-07', 9, 31, -4600200.00, 0.00, 4600200.00, 'Solicitud de retiro', 'Pending', '21f5ea3af0eaef56efac59216475a3d3d823dd5491a6de7571a11eaf4afa4303', 31, 'pending', '2019-06-07 17:34:49', '2019-06-07 17:34:49');
INSERT INTO `dbpcn_transaction` VALUES (332, 10215, 'egreso', '2019-06-08', 9, 32, -920040.00, 0.00, 920040.00, 'Solicitud de retiro', 'Pending', 'a5346c9266ff7fe69d0a9c7d4be67230d823dd5491a6de7571a11eaf4afa4303', 32, 'pending', '2019-06-08 13:10:22', '2019-06-08 13:10:22');
INSERT INTO `dbpcn_transaction` VALUES (333, 10177, 'ingreso', '2019-06-10', 2, 243, 920040.00, 920040.00, 5060220.00, 'Pago de Directo :: (eriyharold)', 'Approved', '840f78dcddb7b06a8157a05690c0d8c4d823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-06-10 16:13:04', '2019-06-10 16:13:04');
INSERT INTO `dbpcn_transaction` VALUES (334, 10172, 'ingreso', '2019-06-10', 2, 244, 920040.00, 920040.00, 8510370.00, 'Pago de Directo :: (inmobiliariayconstructorazosas)', 'Approved', '16312348f1e15a317b840e3c8587864cd823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-06-10 16:14:41', '2019-06-10 16:14:41');
INSERT INTO `dbpcn_transaction` VALUES (335, 10208, 'ingreso', '2019-06-10', 2, 245, 920040.00, 920040.00, 4600200.00, 'Pago de Directo :: (dkb.musical26)', 'Approved', '10a93f7ed7058ad9eb3ca83713cb9ff2d823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-06-10 16:15:24', '2019-06-10 16:15:24');
INSERT INTO `dbpcn_transaction` VALUES (336, 10216, 'ingreso', '2019-06-10', 2, 246, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (jhonjaironino)', 'Approved', '552762c52f4106d58239b9cf6ad23c16d823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-06-10 16:18:43', '2019-06-10 16:18:43');
INSERT INTO `dbpcn_transaction` VALUES (337, 10219, 'ingreso', '2019-06-10', 2, 247, 920040.00, 920040.00, 920040.00, 'Pago de Directo :: (edudav)', 'Approved', '5212d29988867342aa35d742c804366ad823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-06-10 16:20:18', '2019-06-10 16:20:18');
INSERT INTO `dbpcn_transaction` VALUES (338, 10164, 'ingreso', '2019-06-10', 3, 123, 920040.00, 920040.00, 6900300.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', NULL, NULL, '2019-06-10 11:27:49', '2019-06-10 11:27:49');
INSERT INTO `dbpcn_transaction` VALUES (339, 10170, 'ingreso', '2019-06-10', 2, 248, 920040.00, 4600200.00, 4600200.00, 'Pago de Directo :: (peralta7)', 'Approved', 'ca9bd27ed7484c295cd0b6a667652f66d823dd5491a6de7571a11eaf4afa4303', NULL, NULL, '2019-06-10 16:46:52', '2019-06-10 16:46:52');
INSERT INTO `dbpcn_transaction` VALUES (340, 10171, 'ingreso', '2019-06-10', 3, 124, 460020.00, 460020.00, 5520240.00, 'Pago de Comisión por Venta de Equipo Unilevel', 'Approved', 'gfdsfdgf', NULL, NULL, '2019-06-10 11:53:26', '2019-06-10 11:53:26');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_type_of_bank_account
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_type_of_bank_account`;
CREATE TABLE `dbpcn_type_of_bank_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `status` enum('inactive','active') COLLATE utf8_spanish_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_type_of_bank_account
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_type_of_bank_account` VALUES (1, 'Ahorros', 'active', '2019-04-02 11:35:20', '2019-04-02 11:35:23');
INSERT INTO `dbpcn_type_of_bank_account` VALUES (2, 'Corriente', 'active', '2019-04-02 11:35:35', '2019-04-02 11:35:38');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_upload_of_document
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_upload_of_document`;
CREATE TABLE `dbpcn_upload_of_document` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(30) unsigned NOT NULL,
  `frontal` text COLLATE utf8_spanish_ci NOT NULL,
  `posterior` text COLLATE utf8_spanish_ci NOT NULL,
  `rut` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `status` enum('Approved','Rejected','Pending') COLLATE utf8_spanish_ci NOT NULL,
  `date_check` datetime DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `status_rut` enum('Rejected','Approved','Pending','Empty') COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_check_rut` datetime DEFAULT NULL,
  `id_admin_rut` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `user_id` (`user_id`) USING BTREE,
  KEY `status_doc` (`status`) USING BTREE,
  CONSTRAINT `fk_upload_user_id` FOREIGN KEY (`user_id`) REFERENCES `dbpcn_members` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_upload_of_document
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_upload_of_document` VALUES (16, 10148, 'administrator/documents/10148/frontal_10148.jpg', 'administrator/documents/10148/posterior_10148.jpg', 'administrator/documents/10148/rut_10148.pdf', 'Approved', '2019-05-13 18:01:41', 12, 'Approved', NULL, NULL, '2019-05-10 11:42:33', '2019-05-13 18:01:41');
INSERT INTO `dbpcn_upload_of_document` VALUES (17, 1, 'administrator/documents/1/frontal_1.pdf', 'administrator/documents/1/posterior_1.JPG', 'administrator/documents/1/rut_1.PDF', 'Approved', '2019-05-13 17:03:53', 12, 'Approved', NULL, NULL, '2019-05-13 09:23:10', '2019-05-13 17:03:53');
INSERT INTO `dbpcn_upload_of_document` VALUES (18, 10149, 'administrator/documents/10149/frontal_10149.PDF', 'administrator/documents/10149/posterior_10149.jpg', 'administrator/documents/10149/rut_10149.PDF', 'Approved', '2019-05-13 17:09:08', 12, 'Approved', NULL, NULL, '2019-05-13 09:25:28', '2019-05-13 17:09:08');
INSERT INTO `dbpcn_upload_of_document` VALUES (19, 10161, 'administrator/documents/10161/frontal_10161.jpg', 'administrator/documents/10161/posterior_10161.jpg', 'administrator/documents/10161/rut_10161.pdf', 'Approved', '2019-05-13 21:17:20', 12, 'Approved', NULL, NULL, '2019-05-13 16:15:59', '2019-05-13 21:17:20');
INSERT INTO `dbpcn_upload_of_document` VALUES (20, 10162, 'administrator/documents/10162/frontal_10162.jpg', 'administrator/documents/10162/posterior_10162.jpg', 'administrator/documents/10162/rut_10162.jpg', 'Approved', '2019-05-13 21:39:39', 12, 'Approved', NULL, NULL, '2019-05-13 16:37:05', '2019-05-13 21:39:39');
INSERT INTO `dbpcn_upload_of_document` VALUES (21, 10163, 'administrator/documents/10163/frontal_10163.pdf', 'administrator/documents/10163/posterior_10163.pdf', 'administrator/documents/10163/rut_10163.pdf', 'Approved', '2019-05-13 21:53:55', 12, 'Approved', NULL, NULL, '2019-05-13 16:52:01', '2019-05-13 21:53:55');
INSERT INTO `dbpcn_upload_of_document` VALUES (22, 10151, 'administrator/documents/10151/frontal_10151.jpeg', 'administrator/documents/10151/posterior_10151.jpeg', 'administrator/documents/10151/rut_10151.jpg', 'Approved', '2019-05-14 15:17:59', 12, 'Approved', NULL, NULL, '2019-05-14 09:43:37', '2019-05-14 15:17:59');
INSERT INTO `dbpcn_upload_of_document` VALUES (23, 10164, 'administrator/documents/10164/frontal_10164.jpeg', 'administrator/documents/10164/posterior_10164.jpeg', 'administrator/documents/10164/rut_10164.jpeg', 'Approved', '2019-05-14 21:05:35', 12, 'Approved', NULL, NULL, '2019-05-14 15:13:41', '2019-05-14 21:05:35');
INSERT INTO `dbpcn_upload_of_document` VALUES (24, 10166, 'administrator/documents/10166/frontal_10166.jpg', 'administrator/documents/10166/posterior_10166.jpg', 'administrator/documents/10166/rut_10166.', 'Approved', '2019-05-15 20:10:28', 12, 'Rejected', '2019-06-04 14:00:31', 12, '2019-05-14 20:20:13', '2019-06-04 14:00:31');
INSERT INTO `dbpcn_upload_of_document` VALUES (25, 10175, 'administrator/documents/10175/frontal_10175.jpeg', 'administrator/documents/10175/posterior_10175.jpeg', 'administrator/documents/10175/rut_10175.png', 'Approved', '2019-05-15 20:09:03', 12, 'Approved', NULL, NULL, '2019-05-14 21:08:51', '2019-05-15 20:09:03');
INSERT INTO `dbpcn_upload_of_document` VALUES (26, 10191, 'administrator/documents/10191/frontal_10191.jpg', 'administrator/documents/10191/posterior_10191.jpg', 'administrator/documents/10191/rut_10191.jpg', 'Approved', '2019-05-15 13:08:07', 12, 'Approved', NULL, NULL, '2019-05-14 21:48:51', '2019-05-15 13:08:07');
INSERT INTO `dbpcn_upload_of_document` VALUES (27, 10167, 'administrator/documents/10167/frontal_10167.jpg', 'administrator/documents/10167/posterior_10167.jpg', 'administrator/documents/10167/rut_10167.jpeg', 'Approved', '2019-05-15 13:36:11', 12, 'Approved', NULL, NULL, '2019-05-14 22:12:53', '2019-05-15 13:36:11');
INSERT INTO `dbpcn_upload_of_document` VALUES (28, 10168, 'administrator/documents/10168/frontal_10168.jpeg', 'administrator/documents/10168/posterior_10168.jpeg', 'administrator/documents/10168/rut_10168.jpeg', 'Approved', '2019-05-15 13:35:59', 12, 'Approved', NULL, NULL, '2019-05-14 22:22:14', '2019-05-15 13:35:59');
INSERT INTO `dbpcn_upload_of_document` VALUES (29, 10179, 'administrator/documents/10179/frontal_10179.jpeg', 'administrator/documents/10179/posterior_10179.jpeg', 'administrator/documents/10179/rut_10179.pdf', 'Approved', '2019-05-15 12:53:56', 12, 'Approved', NULL, NULL, '2019-05-14 22:35:44', '2019-05-15 12:53:56');
INSERT INTO `dbpcn_upload_of_document` VALUES (30, 10185, 'administrator/documents/10185/frontal_10185.jpg', 'administrator/documents/10185/posterior_10185.jpg', 'administrator/documents/10185/rut_10185.pdf', 'Approved', '2019-05-15 13:15:03', 12, 'Approved', NULL, NULL, '2019-05-14 22:43:46', '2019-05-15 13:15:03');
INSERT INTO `dbpcn_upload_of_document` VALUES (31, 10178, 'administrator/documents/10178/frontal_10178.jpeg', 'administrator/documents/10178/posterior_10178.jpeg', 'administrator/documents/10178/rut_10178.pdf', 'Approved', '2019-05-15 13:49:30', 12, 'Approved', NULL, NULL, '2019-05-14 23:24:21', '2019-05-15 13:49:30');
INSERT INTO `dbpcn_upload_of_document` VALUES (32, 10176, 'administrator/documents/10176/frontal_10176.png', 'administrator/documents/10176/posterior_10176.png', 'administrator/documents/10176/rut_10176.pdf', 'Approved', '2019-05-15 13:03:13', 12, 'Approved', NULL, NULL, '2019-05-15 06:34:25', '2019-05-15 13:03:13');
INSERT INTO `dbpcn_upload_of_document` VALUES (33, 10171, 'administrator/documents/10171/frontal_10171.jpg', 'administrator/documents/10171/posterior_10171.jpg', 'administrator/documents/10171/rut_10171.pdf', 'Approved', '2019-05-15 13:22:23', 12, 'Approved', NULL, NULL, '2019-05-15 07:13:30', '2019-05-15 13:22:23');
INSERT INTO `dbpcn_upload_of_document` VALUES (34, 10193, 'administrator/documents/10193/frontal_10193.jpg', 'administrator/documents/10193/posterior_10193.jpg', 'administrator/documents/10193/rut_10193.pdf', 'Approved', '2019-05-15 20:10:20', 12, 'Rejected', '2019-06-04 14:04:22', 12, '2019-05-15 10:15:02', '2019-06-04 14:04:22');
INSERT INTO `dbpcn_upload_of_document` VALUES (35, 10199, 'administrator/documents/10199/frontal_10199.jpeg', 'administrator/documents/10199/posterior_10199.jpeg', 'administrator/documents/10199/rut_10199.pdf', 'Approved', '2019-05-15 20:03:49', 12, 'Approved', NULL, NULL, '2019-05-15 10:51:03', '2019-05-15 20:03:49');
INSERT INTO `dbpcn_upload_of_document` VALUES (36, 10202, 'administrator/documents/10202/frontal_10202.jpg', 'administrator/documents/10202/posterior_10202.jpg', 'administrator/documents/10202/rut_10202.pdf', 'Approved', '2019-05-15 20:03:39', 12, 'Approved', NULL, NULL, '2019-05-15 10:55:04', '2019-05-15 20:03:39');
INSERT INTO `dbpcn_upload_of_document` VALUES (37, 10189, 'administrator/documents/10189/frontal_10189.pdf', 'administrator/documents/10189/posterior_10189.pdf', 'administrator/documents/10189/rut_10189.pdf', 'Approved', '2019-05-15 20:08:57', 12, 'Approved', NULL, NULL, '2019-05-15 11:10:47', '2019-05-15 20:08:57');
INSERT INTO `dbpcn_upload_of_document` VALUES (38, 10172, 'administrator/documents/10172/frontal_10172.jpeg', 'administrator/documents/10172/posterior_10172.jpeg', 'administrator/documents/10172/rut_10172.pdf', 'Approved', '2019-05-15 16:51:44', 12, 'Approved', NULL, NULL, '2019-05-15 11:28:00', '2019-05-15 16:51:44');
INSERT INTO `dbpcn_upload_of_document` VALUES (39, 10197, 'administrator/documents/10197/frontal_10197.jpeg', 'administrator/documents/10197/posterior_10197.jpeg', 'administrator/documents/10197/rut_10197.pdf', 'Approved', '2019-05-15 20:02:50', 12, 'Approved', NULL, NULL, '2019-05-15 11:29:01', '2019-05-15 20:02:50');
INSERT INTO `dbpcn_upload_of_document` VALUES (40, 10180, 'administrator/documents/10180/frontal_10180.pdf', 'administrator/documents/10180/posterior_10180.pdf', 'administrator/documents/10180/rut_10180.pdf', 'Approved', '2019-05-15 20:08:43', 12, 'Approved', NULL, NULL, '2019-05-15 11:45:18', '2019-05-15 20:08:43');
INSERT INTO `dbpcn_upload_of_document` VALUES (41, 10183, 'administrator/documents/10183/frontal_10183.jpg', 'administrator/documents/10183/posterior_10183.jpg', 'administrator/documents/10183/rut_10183.pdf', 'Approved', '2019-05-15 18:36:55', 12, 'Approved', NULL, NULL, '2019-05-15 12:01:38', '2019-05-15 18:36:55');
INSERT INTO `dbpcn_upload_of_document` VALUES (42, 10190, 'administrator/documents/10190/frontal_10190.jpg', 'administrator/documents/10190/posterior_10190.jpg', 'administrator/documents/10190/rut_10190.pdf', 'Approved', '2019-05-15 20:08:51', 12, 'Approved', NULL, NULL, '2019-05-15 12:24:33', '2019-05-15 20:08:51');
INSERT INTO `dbpcn_upload_of_document` VALUES (43, 10192, 'administrator/documents/10192/frontal_10192.jpeg', 'administrator/documents/10192/posterior_10192.jpeg', 'administrator/documents/10192/rut_10192.pdf', 'Approved', '2019-05-15 20:08:35', 12, 'Approved', NULL, NULL, '2019-05-15 12:33:27', '2019-05-15 20:08:35');
INSERT INTO `dbpcn_upload_of_document` VALUES (44, 10203, 'administrator/documents/10203/frontal_10203.jpeg', 'administrator/documents/10203/posterior_10203.jpeg', 'administrator/documents/10203/rut_10203.pdf', 'Approved', '2019-05-15 20:03:56', 12, 'Approved', NULL, NULL, '2019-05-15 12:55:39', '2019-05-15 20:03:56');
INSERT INTO `dbpcn_upload_of_document` VALUES (45, 10188, 'administrator/documents/10188/frontal_10188.jpeg', 'administrator/documents/10188/posterior_10188.jpeg', 'administrator/documents/10188/rut_10188.pdf', 'Approved', '2019-05-16 13:12:03', 12, 'Approved', '2019-05-20 13:03:13', 12, '2019-05-15 18:30:17', '2019-05-20 13:03:13');
INSERT INTO `dbpcn_upload_of_document` VALUES (46, 10184, 'administrator/documents/10184/frontal_10184.jpg', 'administrator/documents/10184/posterior_10184.jpg', 'administrator/documents/10184/rut_10184.pdf', 'Approved', '2019-05-16 12:59:58', 12, 'Approved', '2019-05-23 20:57:24', 12, '2019-05-15 18:41:30', '2019-05-23 20:57:24');
INSERT INTO `dbpcn_upload_of_document` VALUES (47, 10165, 'administrator/documents/10165/frontal_10165.pdf', 'administrator/documents/10165/posterior_10165.pdf', '', 'Approved', '2019-05-16 13:06:51', 12, 'Empty', '2019-05-23 21:00:46', 12, '2019-05-15 19:44:09', '2019-05-24 13:25:50');
INSERT INTO `dbpcn_upload_of_document` VALUES (48, 10200, 'administrator/documents/10200/frontal_10200.jpeg', 'administrator/documents/10200/posterior_10200.jpeg', NULL, 'Approved', '2019-05-16 15:23:47', 12, 'Empty', NULL, NULL, '2019-05-15 22:44:39', '2019-05-16 15:23:47');
INSERT INTO `dbpcn_upload_of_document` VALUES (49, 10198, 'administrator/documents/10198/frontal_10198.pdf', 'administrator/documents/10198/posterior_10198.pdf', 'administrator/documents/10198/rut_10198.pdf', 'Approved', '2019-05-16 12:56:32', 12, 'Approved', '2019-05-20 16:20:39', 12, '2019-05-15 23:37:01', '2019-05-20 16:20:39');
INSERT INTO `dbpcn_upload_of_document` VALUES (50, 10207, 'administrator/documents/10207/frontal_10207.pdf', 'administrator/documents/10207/posterior_10207.pdf', 'administrator/documents/10207/rut_10207.pdf', 'Approved', '2019-05-16 15:19:31', 12, 'Approved', '2019-05-31 16:19:17', 12, '2019-05-15 23:51:16', '2019-05-31 16:19:17');
INSERT INTO `dbpcn_upload_of_document` VALUES (51, 10208, 'administrator/documents/10208/frontal_10208.jpeg', 'administrator/documents/10208/posterior_10208.jpeg', 'administrator/documents/10208/rut_10208.pdf', 'Approved', '2019-05-16 13:04:38', 12, 'Approved', '2019-05-23 21:00:08', 12, '2019-05-16 06:36:37', '2019-05-23 21:00:08');
INSERT INTO `dbpcn_upload_of_document` VALUES (52, 10201, 'administrator/documents/10201/frontal_10201.jpg', 'administrator/documents/10201/posterior_10201.jpg', 'administrator/documents/10201/rut_10201.pdf', 'Approved', '2019-05-16 15:21:32', 12, 'Approved', '2019-05-20 14:05:37', 12, '2019-05-16 10:04:47', '2019-05-20 14:05:37');
INSERT INTO `dbpcn_upload_of_document` VALUES (53, 10177, 'administrator/documents/10177/frontal_10177.jpeg', 'administrator/documents/10177/posterior_10177.jpeg', 'administrator/documents/10177/rut_10177.pdf', 'Approved', '2019-05-16 18:55:27', 12, 'Approved', '2019-05-29 14:23:47', 12, '2019-05-16 11:23:47', '2019-05-29 14:23:47');
INSERT INTO `dbpcn_upload_of_document` VALUES (54, 10205, 'administrator/documents/10205/frontal_10205.jpg', 'administrator/documents/10205/posterior_10205.jpg', NULL, 'Approved', '2019-05-16 19:01:41', 12, 'Empty', NULL, NULL, '2019-05-16 11:59:17', '2019-05-16 19:01:41');
INSERT INTO `dbpcn_upload_of_document` VALUES (55, 10206, 'administrator/documents/10206/frontal_10206.jpg', 'administrator/documents/10206/posterior_10206.jpg', NULL, 'Approved', '2019-05-16 19:04:04', 12, 'Empty', NULL, NULL, '2019-05-16 12:03:32', '2019-05-16 19:04:04');
INSERT INTO `dbpcn_upload_of_document` VALUES (56, 10181, 'administrator/documents/10181/frontal_10181.jpg', 'administrator/documents/10181/posterior_10181.jpg', 'administrator/documents/10181/rut_10181.pdf', 'Approved', '2019-05-16 19:07:06', 12, 'Approved', '2019-05-29 21:07:02', 12, '2019-05-16 12:22:44', '2019-05-29 21:07:02');
INSERT INTO `dbpcn_upload_of_document` VALUES (57, 10196, 'administrator/documents/10196/frontal_10196.JPG', 'administrator/documents/10196/posterior_10196.JPG', 'administrator/documents/10196/rut_10196.pdf', 'Approved', '2019-05-16 18:53:53', 12, 'Approved', '2019-05-23 20:33:28', 12, '2019-05-16 12:25:59', '2019-05-23 20:33:28');
INSERT INTO `dbpcn_upload_of_document` VALUES (58, 10195, 'administrator/documents/10195/frontal_10195.pdf', 'administrator/documents/10195/posterior_10195.pdf', 'administrator/documents/10195/rut_10195.pdf', 'Approved', '2019-05-17 14:46:27', 12, 'Rejected', '2019-05-23 20:54:57', 12, '2019-05-16 16:56:39', '2019-05-23 20:54:57');
INSERT INTO `dbpcn_upload_of_document` VALUES (59, 10182, 'administrator/documents/10182/frontal_10182.jpg', 'administrator/documents/10182/posterior_10182.jpg', 'administrator/documents/10182/rut_10182.jpg', 'Approved', '2019-05-17 14:38:51', 12, 'Approved', '2019-05-20 16:20:14', 12, '2019-05-16 20:02:13', '2019-05-20 16:20:14');
INSERT INTO `dbpcn_upload_of_document` VALUES (60, 10186, 'administrator/documents/10186/frontal_10186.pdf', 'administrator/documents/10186/posterior_10186.pdf', '', 'Approved', '2019-05-17 14:52:52', 12, 'Empty', '2019-05-23 21:01:28', 12, '2019-05-16 20:28:55', '2019-05-24 13:31:39');
INSERT INTO `dbpcn_upload_of_document` VALUES (61, 10212, 'administrator/documents/10212/frontal_10212.pdf', 'administrator/documents/10212/posterior_10212.pdf', 'administrator/documents/10212/rut_10212.pdf', 'Approved', '2019-05-17 14:49:41', 12, 'Approved', '2019-06-04 18:18:05', 12, '2019-05-16 21:34:16', '2019-06-04 18:18:05');
INSERT INTO `dbpcn_upload_of_document` VALUES (62, 10210, 'administrator/documents/10210/frontal_10210.jpg', 'administrator/documents/10210/posterior_10210.jpg', NULL, 'Approved', '2019-05-17 14:42:14', 12, 'Empty', NULL, NULL, '2019-05-17 06:47:47', '2019-05-17 14:42:14');
INSERT INTO `dbpcn_upload_of_document` VALUES (63, 10174, 'administrator/documents/10174/frontal_10174.jpeg', 'administrator/documents/10174/posterior_10174.jpeg', NULL, 'Approved', '2019-05-17 16:23:33', 12, 'Empty', NULL, NULL, '2019-05-17 10:51:11', '2019-05-17 16:23:34');
INSERT INTO `dbpcn_upload_of_document` VALUES (64, 10214, 'administrator/documents/10214/frontal_10214.jpeg', 'administrator/documents/10214/posterior_10214.jpeg', NULL, 'Approved', '2019-05-20 13:26:46', 12, 'Empty', NULL, NULL, '2019-05-17 20:06:58', '2019-05-20 13:26:46');
INSERT INTO `dbpcn_upload_of_document` VALUES (65, 10216, 'administrator/documents/10216/frontal_10216.jpeg', 'administrator/documents/10216/posterior_10216.jpeg', NULL, 'Approved', '2019-05-20 15:39:57', 12, 'Empty', NULL, NULL, '2019-05-20 10:07:25', '2019-05-20 15:39:57');
INSERT INTO `dbpcn_upload_of_document` VALUES (66, 10215, 'administrator/documents/10215/frontal_10215.jpg', 'administrator/documents/10215/posterior_10215.jpg', 'administrator/documents/10215/rut_10215.pdf', 'Approved', '2019-05-20 20:16:51', 12, 'Approved', '2019-05-31 15:44:20', 12, '2019-05-20 14:52:59', '2019-05-31 15:44:20');
INSERT INTO `dbpcn_upload_of_document` VALUES (67, 10187, 'administrator/documents/10187/frontal_10187.jpg', 'administrator/documents/10187/posterior_10187.jpg', NULL, 'Approved', '2019-05-21 16:14:04', 12, 'Empty', NULL, NULL, '2019-05-20 22:26:25', '2019-05-21 16:14:04');
INSERT INTO `dbpcn_upload_of_document` VALUES (68, 10209, 'administrator/documents/10209/frontal_10209.pdf', 'administrator/documents/10209/posterior_10209.pdf', 'administrator/documents/10209/rut_10209.pdf', 'Approved', '2019-05-21 19:04:52', 12, 'Approved', '2019-05-23 20:35:14', 12, '2019-05-21 12:25:22', '2019-05-23 20:35:14');
INSERT INTO `dbpcn_upload_of_document` VALUES (69, 10218, 'administrator/documents/10218/frontal_10218.jpeg', 'administrator/documents/10218/posterior_10218.jpeg', NULL, 'Approved', '2019-05-22 21:30:13', 12, 'Empty', NULL, NULL, '2019-05-22 16:05:37', '2019-05-22 21:30:13');
INSERT INTO `dbpcn_upload_of_document` VALUES (70, 10169, 'administrator/documents/10169/frontal_10169.png', 'administrator/documents/10169/posterior_10169.png', 'administrator/documents/10169/rut_10169.pdf', 'Approved', '2019-05-23 20:28:55', 12, 'Approved', '2019-05-23 20:31:53', 12, '2019-05-23 12:01:25', '2019-05-23 20:31:53');
INSERT INTO `dbpcn_upload_of_document` VALUES (71, 10220, 'administrator/documents/10220/frontal_10220.jpeg', 'administrator/documents/10220/posterior_10220.jpeg', 'administrator/documents/10220/rut_10220.pdf', 'Approved', '2019-05-24 13:28:28', 12, 'Approved', '2019-05-31 15:57:36', 12, '2019-05-23 23:07:08', '2019-05-31 15:57:36');
INSERT INTO `dbpcn_upload_of_document` VALUES (72, 10219, 'administrator/documents/10219/frontal_10219.pdf', 'administrator/documents/10219/posterior_10219.pdf', 'administrator/documents/10219/rut_10219.pdf', 'Approved', '2019-05-24 13:19:45', 12, 'Rejected', '2019-05-24 13:20:10', 12, '2019-05-24 00:12:12', '2019-05-24 13:20:10');
INSERT INTO `dbpcn_upload_of_document` VALUES (73, 10170, 'administrator/documents/10170/frontal_10170.png', 'administrator/documents/10170/posterior_10170.png', 'administrator/documents/10170/rut_10170.pdf', 'Approved', '2019-05-28 13:26:43', 12, 'Approved', '2019-05-28 13:39:44', 12, '2019-05-27 17:21:18', '2019-05-28 13:39:44');
INSERT INTO `dbpcn_upload_of_document` VALUES (75, 10224, 'administrator/documents/10224/frontal_10224.pdf', 'administrator/documents/10224/posterior_10224.pdf', 'administrator/documents/10224/rut_10224.pdf', 'Approved', '2019-05-29 14:21:45', 12, 'Approved', '2019-05-29 14:22:19', 12, '2019-05-28 14:40:57', '2019-05-29 14:22:19');
INSERT INTO `dbpcn_upload_of_document` VALUES (76, 10225, 'administrator/documents/10225/frontal_10225.pdf', 'administrator/documents/10225/posterior_10225.pdf', 'administrator/documents/10225/rut_10225.pdf', 'Approved', '2019-05-29 15:00:39', 12, 'Approved', '2019-05-29 18:54:39', 12, '2019-05-28 16:15:22', '2019-05-29 18:54:39');
INSERT INTO `dbpcn_upload_of_document` VALUES (77, 10226, 'administrator/documents/10226/frontal_10226.jpg', 'administrator/documents/10226/posterior_10226.jpg', 'administrator/documents/10226/rut_10226.pdf', 'Approved', '2019-05-29 14:11:50', 12, 'Approved', '2019-05-29 21:00:53', 12, '2019-05-28 16:42:13', '2019-05-29 21:00:53');
INSERT INTO `dbpcn_upload_of_document` VALUES (79, 10194, 'administrator/documents/10194/frontal_10194.jpeg', 'administrator/documents/10194/posterior_10194.jpeg', NULL, 'Approved', '2019-05-29 13:31:29', 12, 'Empty', NULL, NULL, '2019-05-28 21:57:42', '2019-05-29 13:31:29');
INSERT INTO `dbpcn_upload_of_document` VALUES (80, 10221, 'administrator/documents/10221/frontal_10221.jpg', 'administrator/documents/10221/posterior_10221.jpg', NULL, 'Approved', '2019-05-29 16:12:11', 12, 'Empty', NULL, NULL, '2019-05-29 10:53:29', '2019-05-29 16:12:11');
INSERT INTO `dbpcn_upload_of_document` VALUES (81, 10230, 'administrator/documents/10230/frontal_10230.pdf', 'administrator/documents/10230/posterior_10230.pdf', 'administrator/documents/10230/rut_10230.pdf', 'Approved', '2019-05-29 18:55:14', 12, 'Approved', '2019-05-29 18:49:53', 12, '2019-05-29 11:54:38', '2019-05-29 18:55:14');
INSERT INTO `dbpcn_upload_of_document` VALUES (82, 10229, 'administrator/documents/10229/frontal_10229.pdf', 'administrator/documents/10229/posterior_10229.pdf', 'administrator/documents/10229/rut_10229.pdf', 'Approved', '2019-05-29 20:56:39', 12, 'Approved', '2019-05-29 20:57:05', 12, '2019-05-29 15:47:01', '2019-05-29 20:57:05');
INSERT INTO `dbpcn_upload_of_document` VALUES (83, 10228, 'administrator/documents/10228/frontal_10228.jpeg', 'administrator/documents/10228/posterior_10228.jpeg', 'administrator/documents/10228/rut_10228.pdf', 'Approved', '2019-05-30 18:56:51', 12, 'Approved', '2019-05-30 19:03:23', 12, '2019-05-29 19:45:43', '2019-05-30 19:03:23');
INSERT INTO `dbpcn_upload_of_document` VALUES (84, 10222, 'administrator/documents/10222/frontal_10222.jpg', 'administrator/documents/10222/posterior_10222.jpg', 'administrator/documents/10222/rut_10222.pdf', 'Approved', '2019-05-30 18:43:55', 12, 'Approved', '2019-06-05 21:41:19', 12, '2019-05-29 20:00:00', '2019-06-05 21:41:19');
INSERT INTO `dbpcn_upload_of_document` VALUES (85, 10223, 'administrator/documents/10223/frontal_10223.jpeg', 'administrator/documents/10223/posterior_10223.jpeg', 'administrator/documents/10223/rut_10223.pdf', 'Approved', '2019-05-30 19:05:02', 12, 'Pending', '2019-06-07 14:47:02', 12, '2019-05-30 12:35:36', '2019-06-08 10:52:29');
INSERT INTO `dbpcn_upload_of_document` VALUES (86, 10231, 'administrator/documents/10231/frontal_10231.jpg', 'administrator/documents/10231/posterior_10231.jpg', 'administrator/documents/10231/rut_10231.pdf', 'Approved', '2019-05-30 20:30:16', 12, 'Rejected', '2019-05-30 19:56:36', 12, '2019-05-30 13:16:52', '2019-05-30 20:30:16');
INSERT INTO `dbpcn_upload_of_document` VALUES (87, 10232, 'administrator/documents/10232/frontal_10232.jpg', 'administrator/documents/10232/posterior_10232.jpg', NULL, 'Approved', '2019-05-31 13:41:17', 12, 'Empty', NULL, NULL, '2019-05-30 19:21:25', '2019-05-31 13:41:17');
INSERT INTO `dbpcn_upload_of_document` VALUES (88, 10227, 'administrator/documents/10227/frontal_10227.pdf', 'administrator/documents/10227/posterior_10227.pdf', 'administrator/documents/10227/rut_10227.pdf', 'Approved', '2019-05-31 13:56:22', 12, 'Approved', '2019-05-31 13:56:34', 12, '2019-05-31 08:11:25', '2019-05-31 13:56:34');
INSERT INTO `dbpcn_upload_of_document` VALUES (89, 10236, 'administrator/documents/10236/frontal_10236.jpg', 'administrator/documents/10236/posterior_10236.jpg', NULL, 'Approved', '2019-06-04 13:18:33', 12, 'Empty', NULL, NULL, '2019-05-31 21:32:03', '2019-06-04 13:18:33');
INSERT INTO `dbpcn_upload_of_document` VALUES (90, 10234, 'administrator/documents/10234/frontal_10234.jpg', 'administrator/documents/10234/posterior_10234.jpg', 'administrator/documents/10234/rut_10234.', 'Approved', '2019-06-04 16:57:14', 12, 'Rejected', '2019-06-04 16:47:09', 12, '2019-06-04 11:28:35', '2019-06-04 16:57:14');
INSERT INTO `dbpcn_upload_of_document` VALUES (91, 10235, 'administrator/documents/10235/frontal_10235.jpg', 'administrator/documents/10235/posterior_10235.jpg', NULL, 'Approved', '2019-06-04 17:08:53', 12, 'Empty', NULL, NULL, '2019-06-04 11:33:05', '2019-06-04 17:08:53');
INSERT INTO `dbpcn_upload_of_document` VALUES (92, 10242, 'administrator/documents/10242/frontal_10242.jpg', 'administrator/documents/10242/posterior_10242.jpg', NULL, 'Approved', '2019-06-06 15:39:54', 12, 'Empty', NULL, NULL, '2019-06-05 23:27:44', '2019-06-06 15:39:54');
INSERT INTO `dbpcn_upload_of_document` VALUES (93, 10243, 'administrator/documents/10243/frontal_10243.jpg', 'administrator/documents/10243/posterior_10243.jpg', NULL, 'Approved', '2019-06-10 16:15:26', 12, 'Empty', NULL, NULL, '2019-06-07 16:35:48', '2019-06-10 16:15:26');
INSERT INTO `dbpcn_upload_of_document` VALUES (94, 10239, 'administrator/documents/10239/frontal_10239.jpg', 'administrator/documents/10239/posterior_10239.jpg', NULL, 'Approved', '2019-06-10 16:48:13', 12, 'Empty', NULL, NULL, '2019-06-10 10:06:53', '2019-06-10 16:48:13');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_upload_of_monthly_fee
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_upload_of_monthly_fee`;
CREATE TABLE `dbpcn_upload_of_monthly_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(30) unsigned NOT NULL,
  `lote_id` int(11) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `total_to_pay` decimal(40,2) DEFAULT NULL,
  `payment_cuota` text COLLATE utf8_spanish_ci NOT NULL,
  `status` enum('Approved','Rejected','Pending') COLLATE utf8_spanish_ci NOT NULL,
  `date_check` datetime DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `cuotas_id` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `price_monthly_fee` decimal(30,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `lote` (`lote_id`) USING BTREE,
  CONSTRAINT `dbpcn_upload_of_monthly_fee_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `dbpcn_members` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_upload_of_monthly_fee
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_upload_of_monthly_fee` VALUES (5, 10164, 109, 1, 730249.33, 'administrator/payment_cuota/10164/109/iDH1E/payment_cuota_10164.pdf', 'Pending', NULL, NULL, NULL, 730249.33, '2019-06-07 11:07:17', '2019-06-07 11:07:17');
INSERT INTO `dbpcn_upload_of_monthly_fee` VALUES (6, 10177, 140, 1, 730249.33, 'administrator/payment_cuota/10177/140/WlGJC/payment_cuota_10177.png', 'Pending', NULL, NULL, NULL, 730249.33, '2019-06-07 20:54:58', '2019-06-07 20:54:58');
INSERT INTO `dbpcn_upload_of_monthly_fee` VALUES (7, 10181, 38, 1, 730249.33, 'administrator/payment_cuota/10181/38/RfGkd/payment_cuota_10181.jpeg', 'Pending', NULL, NULL, NULL, 730249.33, '2019-06-08 20:28:00', '2019-06-08 20:28:00');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_upload_of_promise
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_upload_of_promise`;
CREATE TABLE `dbpcn_upload_of_promise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(30) unsigned NOT NULL,
  `lote_id` int(11) DEFAULT NULL,
  `promise` text COLLATE utf8_spanish_ci NOT NULL,
  `status` enum('Approved','Rejected','Pending') COLLATE utf8_spanish_ci NOT NULL,
  `date_check` datetime DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `lote` (`lote_id`) USING BTREE,
  CONSTRAINT `fk_uploadpromise_user_id` FOREIGN KEY (`user_id`) REFERENCES `dbpcn_members` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_upload_of_promise
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_upload_of_promise` VALUES (14, 1, 2, 'administrator/promise/1/2/promise_1.pdf', 'Approved', '2019-05-13 17:06:22', 21, '2019-05-13 12:05:25', '2019-05-13 17:06:22');
INSERT INTO `dbpcn_upload_of_promise` VALUES (15, 10149, 315, 'administrator/promise/10149/315/promise_10149.pdf', 'Approved', '2019-05-13 17:10:38', 21, '2019-05-13 12:10:06', '2019-05-13 17:10:38');
INSERT INTO `dbpcn_upload_of_promise` VALUES (16, 10148, 88, 'administrator/promise/10148/88/promise_10148.pdf', 'Approved', '2019-05-13 19:38:33', 21, '2019-05-13 14:23:50', '2019-05-13 19:38:33');
INSERT INTO `dbpcn_upload_of_promise` VALUES (17, 10161, 89, 'administrator/promise/10161/89/promise_10161.pdf', 'Approved', '2019-05-13 21:32:33', 21, '2019-05-13 16:28:45', '2019-05-13 21:32:33');
INSERT INTO `dbpcn_upload_of_promise` VALUES (18, 10162, 90, 'administrator/promise/10162/90/promise_10162.pdf', 'Approved', '2019-05-13 21:52:00', 21, '2019-05-13 16:46:13', '2019-05-13 21:52:01');
INSERT INTO `dbpcn_upload_of_promise` VALUES (19, 10163, 70, 'administrator/promise/10163/70/promise_10163.pdf', 'Approved', '2019-05-13 22:20:27', 21, '2019-05-13 17:15:03', '2019-05-13 22:20:27');
INSERT INTO `dbpcn_upload_of_promise` VALUES (20, 10151, 91, 'administrator/promise/10151/91/promise_10151.pdf', 'Approved', '2019-05-14 18:41:50', 21, '2019-05-14 11:56:00', '2019-05-14 18:41:50');
INSERT INTO `dbpcn_upload_of_promise` VALUES (21, 10164, 109, 'administrator/promise/10164/109/promise_10164.pdf', 'Approved', '2019-05-14 22:44:46', 21, '2019-05-14 16:39:57', '2019-05-14 22:44:46');
INSERT INTO `dbpcn_upload_of_promise` VALUES (24, 10185, 107, 'administrator/promise/10185/107/promise_10185.pdf', 'Approved', '2019-05-15 19:54:47', 21, '2019-05-15 10:35:35', '2019-05-15 19:54:47');
INSERT INTO `dbpcn_upload_of_promise` VALUES (25, 10176, 312, 'administrator/promise/10176/312/promise_10176.pdf', 'Approved', '2019-05-15 19:52:06', 21, '2019-05-15 12:50:24', '2019-05-15 19:52:06');
INSERT INTO `dbpcn_upload_of_promise` VALUES (26, 10191, 335, 'administrator/promise/10191/335/promise_10191.pdf', 'Approved', '2019-05-15 19:48:49', 21, '2019-05-15 13:48:19', '2019-05-15 19:48:49');
INSERT INTO `dbpcn_upload_of_promise` VALUES (27, 10167, 92, 'administrator/promise/10167/92/promise_10167.pdf', 'Approved', '2019-05-15 21:29:10', 21, '2019-05-15 15:45:30', '2019-05-15 21:29:10');
INSERT INTO `dbpcn_upload_of_promise` VALUES (28, 10183, 35, 'administrator/promise/10183/35/promise_10183.pdf', 'Approved', '2019-05-15 22:20:40', 21, '2019-05-15 16:11:32', '2019-05-15 22:20:40');
INSERT INTO `dbpcn_upload_of_promise` VALUES (29, 10192, 598, 'administrator/promise/10192/598/promise_10192.pdf', 'Approved', '2019-05-15 21:43:05', 21, '2019-05-15 16:28:50', '2019-05-15 21:43:05');
INSERT INTO `dbpcn_upload_of_promise` VALUES (30, 10179, 46, 'administrator/promise/10179/46/promise_10179.pdf', 'Approved', '2019-05-15 22:22:16', 21, '2019-05-15 16:37:39', '2019-05-15 22:22:16');
INSERT INTO `dbpcn_upload_of_promise` VALUES (32, 10178, 1723, 'administrator/promise/10178/1723/promise_10178.pdf', 'Approved', '2019-05-16 15:11:28', 21, '2019-05-15 17:42:04', '2019-05-16 15:11:28');
INSERT INTO `dbpcn_upload_of_promise` VALUES (34, 10171, 1714, 'administrator/promise/10171/1714/promise_10171.pdf', 'Approved', '2019-05-16 14:45:36', 21, '2019-05-15 19:28:36', '2019-05-16 14:45:36');
INSERT INTO `dbpcn_upload_of_promise` VALUES (35, 10199, 654, 'administrator/promise/10199/654/promise_10199.pdf', 'Approved', '2019-05-16 14:11:56', 21, '2019-05-15 19:37:18', '2019-05-16 14:11:56');
INSERT INTO `dbpcn_upload_of_promise` VALUES (36, 10166, 21, 'administrator/promise/10166/21/promise_10166.pdf', 'Approved', '2019-05-16 14:54:50', 21, '2019-05-15 19:49:44', '2019-05-16 14:54:50');
INSERT INTO `dbpcn_upload_of_promise` VALUES (37, 10189, 467, 'administrator/promise/10189/467/promise_10189.pdf', 'Approved', '2019-05-16 15:03:36', 21, '2019-05-15 21:06:44', '2019-05-16 15:03:36');
INSERT INTO `dbpcn_upload_of_promise` VALUES (40, 10203, 315, 'administrator/promise/10203/315/promise_10203.pdf', 'Approved', '2019-05-16 14:47:59', 21, '2019-05-15 22:37:55', '2019-05-16 14:47:59');
INSERT INTO `dbpcn_upload_of_promise` VALUES (43, 10197, 76, 'administrator/promise/10197/76/promise_10197.pdf', 'Approved', '2019-05-16 16:15:44', 21, '2019-05-16 10:42:48', '2019-05-16 16:15:44');
INSERT INTO `dbpcn_upload_of_promise` VALUES (45, 10202, 626, 'administrator/promise/10202/626/promise_10202.pdf', 'Approved', '2019-05-16 19:10:34', 21, '2019-05-16 13:47:20', '2019-05-16 19:10:34');
INSERT INTO `dbpcn_upload_of_promise` VALUES (46, 10172, 12, 'administrator/promise/10172/12/promise_10172.pdf', 'Approved', '2019-05-16 20:58:38', 21, '2019-05-16 15:09:15', '2019-05-16 20:58:38');
INSERT INTO `dbpcn_upload_of_promise` VALUES (48, 10180, 117, 'administrator/promise/10180/117/promise_10180.pdf', 'Approved', '2019-05-16 20:45:17', 21, '2019-05-16 15:19:02', '2019-05-16 20:45:17');
INSERT INTO `dbpcn_upload_of_promise` VALUES (49, 10205, 141, 'administrator/promise/10205/141/promise_10205.pdf', 'Approved', '2019-05-16 21:01:48', 21, '2019-05-16 15:20:20', '2019-05-16 21:01:48');
INSERT INTO `dbpcn_upload_of_promise` VALUES (50, 10206, 142, 'administrator/promise/10206/142/promise_10206.pdf', 'Approved', '2019-05-16 21:02:02', 21, '2019-05-16 15:45:56', '2019-05-16 21:02:02');
INSERT INTO `dbpcn_upload_of_promise` VALUES (55, 10188, 31, 'administrator/promise/10188/31/promise_10188.pdf', 'Approved', '2019-05-17 14:07:31', 21, '2019-05-16 20:36:48', '2019-05-17 14:07:31');
INSERT INTO `dbpcn_upload_of_promise` VALUES (56, 10193, 75, 'administrator/promise/10193/75/promise_10193.pdf', 'Approved', '2019-05-17 13:52:21', 21, '2019-05-16 21:09:33', '2019-05-17 13:52:21');
INSERT INTO `dbpcn_upload_of_promise` VALUES (58, 10196, 48, 'administrator/promise/10196/48/promise_10196.pdf', 'Approved', '2019-05-17 16:03:27', 21, '2019-05-17 09:33:24', '2019-05-17 16:03:27');
INSERT INTO `dbpcn_upload_of_promise` VALUES (59, 10208, 488, 'administrator/promise/10208/488/promise_10208.pdf', 'Approved', '2019-05-17 16:05:49', 21, '2019-05-17 10:04:15', '2019-05-17 16:05:49');
INSERT INTO `dbpcn_upload_of_promise` VALUES (61, 10210, 108, 'administrator/promise/10210/108/promise_10210.pdf', 'Approved', '2019-05-17 19:45:26', 21, '2019-05-17 12:52:15', '2019-05-17 19:45:26');
INSERT INTO `dbpcn_upload_of_promise` VALUES (63, 10181, 38, 'administrator/promise/10181/38/promise_10181.pdf', 'Approved', '2019-05-20 13:10:59', 21, '2019-05-17 17:13:23', '2019-05-20 13:10:59');
INSERT INTO `dbpcn_upload_of_promise` VALUES (64, 10201, 152, 'administrator/promise/10201/152/promise_10201.pdf', 'Approved', '2019-05-20 13:54:41', 21, '2019-05-17 20:32:18', '2019-05-20 13:54:41');
INSERT INTO `dbpcn_upload_of_promise` VALUES (65, 10174, 81, 'administrator/promise/10174/81/promise_10174.pdf', 'Approved', '2019-05-20 15:20:52', 21, '2019-05-18 08:04:15', '2019-05-20 15:20:52');
INSERT INTO `dbpcn_upload_of_promise` VALUES (66, 10198, 583, 'administrator/promise/10198/583/promise_10198.pdf', 'Approved', '2019-05-20 15:43:08', 21, '2019-05-18 12:51:18', '2019-05-20 15:43:08');
INSERT INTO `dbpcn_upload_of_promise` VALUES (67, 10207, 676, 'administrator/promise/10207/676/promise_10207.pdf', 'Approved', '2019-05-20 15:42:59', 21, '2019-05-18 12:52:44', '2019-05-20 15:42:59');
INSERT INTO `dbpcn_upload_of_promise` VALUES (68, 10212, 1704, 'administrator/promise/10212/1704/promise_10212.pdf', 'Approved', '2019-05-20 15:21:39', 21, '2019-05-18 17:49:29', '2019-05-20 15:21:39');
INSERT INTO `dbpcn_upload_of_promise` VALUES (69, 10200, 129, 'administrator/promise/10200/129/promise_10200.pdf', 'Approved', '2019-05-20 15:19:00', 21, '2019-05-18 20:45:06', '2019-05-20 15:19:00');
INSERT INTO `dbpcn_upload_of_promise` VALUES (70, 10184, 1689, 'administrator/promise/10184/1689/promise_10184.pdf', 'Approved', '2019-05-20 19:22:58', 21, '2019-05-20 13:56:36', '2019-05-20 19:22:58');
INSERT INTO `dbpcn_upload_of_promise` VALUES (71, 10214, 301, 'administrator/promise/10214/301/promise_10214.pdf', 'Approved', '2019-05-21 16:35:30', 21, '2019-05-20 17:48:10', '2019-05-21 16:35:30');
INSERT INTO `dbpcn_upload_of_promise` VALUES (72, 10215, 790, 'administrator/promise/10215/790/promise_10215.pdf', 'Approved', '2019-05-21 13:15:10', 21, '2019-05-20 18:27:30', '2019-05-21 13:15:10');
INSERT INTO `dbpcn_upload_of_promise` VALUES (73, 10190, 479, 'administrator/promise/10190/479/promise_10190.pdf', 'Approved', '2019-05-21 13:50:40', 21, '2019-05-20 22:18:36', '2019-05-21 13:50:40');
INSERT INTO `dbpcn_upload_of_promise` VALUES (74, 10216, 83, 'administrator/promise/10216/83/promise_10216.pdf', 'Approved', '2019-05-21 16:17:20', 21, '2019-05-21 09:41:01', '2019-05-21 16:17:20');
INSERT INTO `dbpcn_upload_of_promise` VALUES (75, 10209, 716, 'administrator/promise/10209/716/promise_10209.pdf', 'Approved', '2019-05-21 20:30:59', 21, '2019-05-21 14:50:00', '2019-05-21 20:30:59');
INSERT INTO `dbpcn_upload_of_promise` VALUES (76, 10195, 292, 'administrator/promise/10195/292/promise_10195.pdf', 'Approved', '2019-05-22 13:26:56', 21, '2019-05-21 17:48:29', '2019-05-22 13:26:56');
INSERT INTO `dbpcn_upload_of_promise` VALUES (77, 10177, 140, 'administrator/promise/10177/140/promise_10177.pdf', 'Approved', '2019-05-22 19:30:00', 21, '2019-05-22 11:26:08', '2019-05-22 19:30:00');
INSERT INTO `dbpcn_upload_of_promise` VALUES (80, 10149, 72, 'administrator/promise/10149/72/promise_10149.pdf', 'Approved', '2019-05-23 20:16:10', 21, '2019-05-23 15:14:30', '2019-05-23 20:16:10');
INSERT INTO `dbpcn_upload_of_promise` VALUES (82, 10186, 1713, 'administrator/promise/10186/1713/promise_10186.pdf', 'Approved', '2019-05-24 20:13:07', 21, '2019-05-24 14:10:32', '2019-05-24 20:13:07');
INSERT INTO `dbpcn_upload_of_promise` VALUES (83, 10165, 478, 'administrator/promise/10165/478/promise_10165.pdf', 'Approved', '2019-05-27 13:38:58', 21, '2019-05-24 17:56:23', '2019-05-27 13:38:58');
INSERT INTO `dbpcn_upload_of_promise` VALUES (84, 10218, 709, 'administrator/promise/10218/709/promise_10218.pdf', 'Approved', '2019-05-27 13:01:49', 21, '2019-05-26 13:37:15', '2019-05-27 13:01:49');
INSERT INTO `dbpcn_upload_of_promise` VALUES (85, 10169, 1697, 'administrator/promise/10169/1697/promise_10169.pdf', 'Approved', '2019-05-28 13:36:08', 21, '2019-05-27 17:01:20', '2019-05-28 13:36:08');
INSERT INTO `dbpcn_upload_of_promise` VALUES (86, 10170, 37, 'administrator/promise/10170/37/promise_10170.pdf', 'Approved', '2019-05-28 18:59:40', 21, '2019-05-28 12:29:16', '2019-05-28 18:59:40');
INSERT INTO `dbpcn_upload_of_promise` VALUES (87, 10220, 316, 'administrator/promise/10220/316/promise_10220.pdf', 'Approved', '2019-05-28 18:59:46', 21, '2019-05-28 13:27:27', '2019-05-28 18:59:46');
INSERT INTO `dbpcn_upload_of_promise` VALUES (88, 10175, 74, 'administrator/promise/10175/74/promise_10175.pdf', 'Approved', '2019-05-29 13:22:38', 21, '2019-05-28 21:55:40', '2019-05-29 13:22:38');
INSERT INTO `dbpcn_upload_of_promise` VALUES (90, 10221, 466, 'administrator/promise/10221/466/promise_10221.pdf', 'Approved', '2019-05-29 20:17:14', 21, '2019-05-29 13:58:57', '2019-05-29 20:17:14');
INSERT INTO `dbpcn_upload_of_promise` VALUES (91, 10225, 386, 'administrator/promise/10225/386/promise_10225.pdf', 'Approved', '2019-05-30 18:22:37', 21, '2019-05-29 17:51:55', '2019-05-30 18:22:37');
INSERT INTO `dbpcn_upload_of_promise` VALUES (92, 10224, 372, 'administrator/promise/10224/372/promise_10224.pdf', 'Approved', '2019-05-30 18:25:26', 21, '2019-05-30 08:40:03', '2019-05-30 18:25:26');
INSERT INTO `dbpcn_upload_of_promise` VALUES (93, 10226, 400, 'administrator/promise/10226/400/promise_10226.pdf', 'Approved', '2019-05-30 18:16:03', 21, '2019-05-30 09:03:51', '2019-05-30 18:16:03');
INSERT INTO `dbpcn_upload_of_promise` VALUES (94, 10228, 958, 'administrator/promise/10228/958/promise_10228.pdf', 'Approved', '2019-05-31 14:05:53', 21, '2019-05-30 15:57:34', '2019-05-31 14:05:53');
INSERT INTO `dbpcn_upload_of_promise` VALUES (95, 10230, 1569, 'administrator/promise/10230/1569/promise_10230.pdf', 'Approved', '2019-05-31 13:59:09', 21, '2019-05-31 08:40:41', '2019-05-31 13:59:09');
INSERT INTO `dbpcn_upload_of_promise` VALUES (100, 10194, 36, 'administrator/promise/10194/36/promise_10194.pdf', 'Approved', '2019-06-04 13:27:08', 21, '2019-06-01 09:50:49', '2019-06-04 13:27:08');
INSERT INTO `dbpcn_upload_of_promise` VALUES (101, 10223, 198, 'administrator/promise/10223/198/promise_10223.pdf', 'Approved', '2019-06-04 13:29:44', 21, '2019-06-01 10:12:05', '2019-06-04 13:29:44');
INSERT INTO `dbpcn_upload_of_promise` VALUES (102, 10229, 550, 'administrator/promise/10229/550/promise_10229.pdf', 'Approved', '2019-06-04 13:33:23', 21, '2019-06-01 15:21:18', '2019-06-04 13:33:23');
INSERT INTO `dbpcn_upload_of_promise` VALUES (104, 10235, 428, 'administrator/promise/10235/428/promise_10235.pdf', 'Approved', '2019-06-04 19:44:18', 21, '2019-06-04 13:41:30', '2019-06-04 19:44:18');
INSERT INTO `dbpcn_upload_of_promise` VALUES (105, 10234, 455, 'administrator/promise/10234/455/promise_10234.pdf', 'Approved', '2019-06-04 19:42:40', 21, '2019-06-04 13:48:36', '2019-06-04 19:42:40');
INSERT INTO `dbpcn_upload_of_promise` VALUES (106, 10222, 487, 'administrator/promise/10222/487/promise_10222.pdf', 'Approved', '2019-06-05 15:10:57', 21, '2019-06-04 16:44:07', '2019-06-05 15:10:57');
INSERT INTO `dbpcn_upload_of_promise` VALUES (109, 10168, 94, 'administrator/promise/10168/94/promise_10168.pdf', 'Approved', '2019-06-05 21:15:47', 21, '2019-06-05 14:05:24', '2019-06-05 21:15:47');
INSERT INTO `dbpcn_upload_of_promise` VALUES (110, 10236, 85, 'administrator/promise/10236/85/promise_10236.pdf', 'Approved', '2019-06-05 21:23:53', 21, '2019-06-05 15:44:21', '2019-06-05 21:23:53');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_uploaded_payments
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_uploaded_payments`;
CREATE TABLE `dbpcn_uploaded_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_user_id` bigint(30) DEFAULT NULL,
  `user_id` bigint(30) unsigned DEFAULT NULL,
  `url_image` text COLLATE utf8_spanish_ci NOT NULL,
  `detail` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `status` enum('Rejected','Approved','Pending') COLLATE utf8_spanish_ci NOT NULL,
  `date_check` datetime DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `type_of_activation` enum('automatic_admin','automatic_payu','admin_user') COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_upload_pay_user_id` (`user_id`),
  CONSTRAINT `fk_upload_pay_user_id` FOREIGN KEY (`user_id`) REFERENCES `dbpcn_members` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_uploaded_payments
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_uploaded_payments` VALUES (4, 437, 10164, 'backoffice/payments/437/Oh42t_437.JPG', 'Ricardo Andres Dávila Fuentes c.c 80096808', 'Approved', '2019-05-10 17:01:47', 20, 'admin_user', '2019-05-09 20:18:42', '2019-05-14 19:05:20');
INSERT INTO `dbpcn_uploaded_payments` VALUES (5, 448, 10199, 'backoffice/payments/448/lh4NJ_448.pdf', 'Pago Cuota inicial Lote 026 Manzana 32', 'Approved', '2019-05-10 17:01:03', 20, 'admin_user', '2019-05-09 21:07:45', '2019-05-15 15:28:59');
INSERT INTO `dbpcn_uploaded_payments` VALUES (6, 462, 10200, 'backoffice/payments/462/UeLrK_462.pdf', 'pago cuota inicial lote 001 manzana 07', 'Approved', '2019-05-14 20:52:47', 20, 'admin_user', '2019-05-09 21:28:15', '2019-05-15 15:29:22');
INSERT INTO `dbpcn_uploaded_payments` VALUES (7, 463, 10201, 'backoffice/payments/463/X22qg_463.jpg', 'Comprobante de pago Lote 012, manzana 08, usuario:jufesera, nombre: Juan Felipe Sepulveda Ramirez, email: capisepulveda@gmail.com', 'Approved', '2019-05-14 20:04:52', 20, 'admin_user', '2019-05-09 21:34:08', '2019-05-15 15:29:37');
INSERT INTO `dbpcn_uploaded_payments` VALUES (8, 467, 10202, 'backoffice/payments/467/N7pWG_467.pdf', 'Soporte de pago, cuota inicial.', 'Approved', '2019-05-10 17:00:48', 20, 'admin_user', '2019-05-09 22:15:55', '2019-05-15 15:29:46');
INSERT INTO `dbpcn_uploaded_payments` VALUES (9, 530, 10191, 'backoffice/payments/530/IxA3b_530.jpg', 'Pago del lote 20 manzana 19', 'Approved', '2019-05-14 21:19:41', 20, 'admin_user', '2019-05-09 23:23:28', '2019-05-15 00:40:41');
INSERT INTO `dbpcn_uploaded_payments` VALUES (10, 558, 10166, 'backoffice/payments/558/SxrUC_558.pdf', 'Jair Arturo Cabarcas Jimenez; C.C. 1.129.576.268 de Barranquilla; Correo: gabrila2030@gmail.com Usuario: Jagaby', 'Approved', '2019-05-14 21:36:27', 20, 'admin_user', '2019-05-10 07:50:04', '2019-05-14 22:53:23');
INSERT INTO `dbpcn_uploaded_payments` VALUES (11, 501, 10149, 'backoffice/payments/501/NRqvH_501.png', 'Pago Pasal', 'Rejected', '2019-05-10 16:41:00', 20, 'admin_user', '2019-05-10 08:33:34', '2019-05-10 16:41:00');
INSERT INTO `dbpcn_uploaded_payments` VALUES (13, 433, 10162, 'backoffice/payments/433/JR4ia_433.pdf', NULL, 'Rejected', '2019-05-10 16:38:49', 20, 'admin_user', '2019-05-10 10:11:58', '2019-05-10 16:38:49');
INSERT INTO `dbpcn_uploaded_payments` VALUES (14, 451, 10171, 'backoffice/payments/451/GkQU8_451.jpeg', 'Elias Alberto Bernier Manjarres Mz 87 lote 14 usuario eliasbm', 'Approved', '2019-05-14 23:50:14', 20, 'admin_user', '2019-05-10 10:21:21', '2019-05-15 00:03:49');
INSERT INTO `dbpcn_uploaded_payments` VALUES (15, 434, 10161, 'backoffice/payments/434/SwPfo_434.jpg', NULL, 'Rejected', '2019-05-10 16:39:04', 20, 'admin_user', '2019-05-10 11:33:17', '2019-05-10 16:39:04');
INSERT INTO `dbpcn_uploaded_payments` VALUES (16, 501, 10149, 'backoffice/payments/501/SscqP_501.pdf', 'Pago de Pasal P1 M18 L16', 'Approved', '2019-05-10 16:53:29', 20, 'admin_user', '2019-05-10 11:45:46', '2019-05-10 16:53:29');
INSERT INTO `dbpcn_uploaded_payments` VALUES (17, 435, 10151, 'backoffice/payments/435/XCRS4_435.jpeg', NULL, 'Rejected', '2019-05-10 23:50:51', 20, 'admin_user', '2019-05-10 12:34:42', '2019-05-10 23:50:51');
INSERT INTO `dbpcn_uploaded_payments` VALUES (18, 436, 10167, 'backoffice/payments/436/s0c58_436.jpeg', 'Envio el comprobante que me emitio el banco, Mi Lote esta Ubicado en El Proyecto. Dividivi, Manzana 4 Lote 3.', 'Approved', '2019-05-14 23:51:36', 20, 'admin_user', '2019-05-10 14:11:37', '2019-05-15 00:01:01');
INSERT INTO `dbpcn_uploaded_payments` VALUES (19, 442, 10168, 'backoffice/payments/442/TtoEZ_442.jpeg', 'Envio el comprobante de pago que me emitio el banco, Proyecto Dividivi. Manzana 4 Lote 4.', 'Approved', '2019-05-14 23:52:19', 20, 'admin_user', '2019-05-10 14:15:45', '2019-05-15 00:01:54');
INSERT INTO `dbpcn_uploaded_payments` VALUES (20, 434, 10161, 'backoffice/payments/434/0iLXf_434.jpg', NULL, 'Rejected', '2019-05-10 23:47:41', 20, 'admin_user', '2019-05-10 14:22:21', '2019-05-10 23:47:41');
INSERT INTO `dbpcn_uploaded_payments` VALUES (21, 521, 10165, 'backoffice/payments/521/wWsp3_521.pdf', 'YESID ALEXÁNDER FERNÁNDEZ RODRÍGUEZ C.C. 72279155 e-mail: yesidfernandezr@gmail.com USUARIO: Yesidf No. CUENTA AHORRO DAVIVIENDA: 027070055200 PROYECTO : Dividivi MANZANA : M-24 LOTE : 23', 'Approved', '2019-05-14 19:59:01', 20, 'admin_user', '2019-05-10 14:23:57', '2019-05-14 20:06:33');
INSERT INTO `dbpcn_uploaded_payments` VALUES (22, 569, 10208, 'backoffice/payments/569/XyZFw_569.jpeg', 'condominio dividivi, manzana 25, lote 10', 'Rejected', '2019-05-15 00:02:50', 20, 'admin_user', '2019-05-10 14:29:14', '2019-05-15 17:34:03');
INSERT INTO `dbpcn_uploaded_payments` VALUES (23, 465, 10172, 'backoffice/payments/465/1QmbJ_465.pdf', 'Comprobante de Pago Cuota Inicial Lote 18 Mz 2 - Usuario: CarolinayJimmy', 'Approved', '2019-05-14 22:59:51', 20, 'admin_user', '2019-05-10 17:57:54', '2019-05-15 00:08:26');
INSERT INTO `dbpcn_uploaded_payments` VALUES (24, 452, 10177, 'backoffice/payments/452/eYOw7_452.jpeg', 'P: Dividivi M: 7 L:12', 'Approved', '2019-05-14 23:00:40', 20, 'admin_user', '2019-05-10 18:03:24', '2019-05-15 00:35:16');
INSERT INTO `dbpcn_uploaded_payments` VALUES (25, 479, 10203, 'backoffice/payments/479/EiBnI_479.pdf', 'Pago Lote 016 Manzana 018 Omar Alonso Zamora Miranda', 'Approved', '2019-05-14 23:47:04', 20, 'admin_user', '2019-05-10 18:10:09', '2019-05-15 15:30:40');
INSERT INTO `dbpcn_uploaded_payments` VALUES (26, 443, 10169, 'backoffice/payments/443/b33JC_443.pdf', 'Adel Solano Mendoza, Lote 1, Manzana 87', 'Approved', '2019-05-14 23:54:19', 20, 'admin_user', '2019-05-10 18:31:53', '2019-05-15 00:02:23');
INSERT INTO `dbpcn_uploaded_payments` VALUES (27, 449, 10170, 'backoffice/payments/449/EI3hI_449.pdf', 'Farly Solano Rodriguez, Lote 15 Manzana 2', 'Approved', '2019-05-14 23:54:37', 20, 'admin_user', '2019-05-10 18:37:11', '2019-05-15 00:03:16');
INSERT INTO `dbpcn_uploaded_payments` VALUES (28, 453, 10178, 'backoffice/payments/453/kpPl6_453.jpeg', 'pago de luis alberto alfonso orozco', 'Approved', '2019-05-14 23:52:45', 20, 'admin_user', '2019-05-10 22:00:47', '2019-05-15 00:35:28');
INSERT INTO `dbpcn_uploaded_payments` VALUES (29, 456, 10180, 'backoffice/payments/456/P04p2_456.jpeg', 'Pago luz irene orozco', 'Approved', '2019-05-14 23:52:57', 20, 'admin_user', '2019-05-10 22:17:20', '2019-05-15 00:35:59');
INSERT INTO `dbpcn_uploaded_payments` VALUES (30, 433, 10162, 'backoffice/payments/433/8FsgC_433.pdf', 'Envió recibo tipo vale , ya fue conversado con Sr Pedro y Sr Rafael Palacio', 'Rejected', '2019-05-13 15:43:27', 20, 'admin_user', '2019-05-11 12:20:09', '2019-05-13 15:43:27');
INSERT INTO `dbpcn_uploaded_payments` VALUES (31, 434, 10161, 'backoffice/payments/434/kAw7i_434.jpg', 'VALE CUOTA INCIAL ACEPTADO CON PEDRO, ADJUNTO FOTO DE CEDULA COMO REQUISITO PARA LLENAR ESTE ESPACIO.', 'Rejected', '2019-05-13 15:45:35', 20, 'admin_user', '2019-05-11 12:24:33', '2019-05-13 15:45:36');
INSERT INTO `dbpcn_uploaded_payments` VALUES (32, 471, 10205, 'backoffice/payments/471/FekEe_471.jpg', 'Herman Yesid Vera Sarmiento, lote 1 manzana 8', 'Approved', '2019-05-14 23:01:07', 20, 'admin_user', '2019-05-12 19:42:19', '2019-05-15 15:33:13');
INSERT INTO `dbpcn_uploaded_payments` VALUES (33, 472, 10206, 'backoffice/payments/472/rKBIO_472.jpg', 'Herman Yesid Vera Sarmiento Lote 2 Manzana 8', 'Approved', '2019-05-14 23:02:04', 20, 'admin_user', '2019-05-12 19:55:29', '2019-05-15 15:33:27');
INSERT INTO `dbpcn_uploaded_payments` VALUES (34, 435, 10151, 'backoffice/payments/435/aiYiJ_435.pdf', NULL, 'Approved', '2019-05-13 19:45:25', 20, 'admin_user', '2019-05-13 14:08:06', '2019-05-13 20:01:48');
INSERT INTO `dbpcn_uploaded_payments` VALUES (35, 464, 10185, 'backoffice/payments/464/qLUvV_464.jpg', 'pago de la cuota inicial del lote 10 manzana 4', 'Approved', '2019-05-14 23:02:54', 20, 'admin_user', '2019-05-13 14:09:42', '2019-05-15 00:37:12');
INSERT INTO `dbpcn_uploaded_payments` VALUES (36, 433, 10162, 'backoffice/payments/433/rA9HO_433.17', 'Envió recibo tipo vale , ya fue conversado con Sr Pedro y Sr Rafael Palacio', 'Rejected', '2019-05-13 19:47:26', 20, 'admin_user', '2019-05-13 14:23:18', '2019-05-13 19:47:26');
INSERT INTO `dbpcn_uploaded_payments` VALUES (37, 478, 10184, 'backoffice/payments/478/NhSY3_478.jpg', 'Nelson Emilio Mejia Silva Mz 85 Lote 14 Usuario nelson_mejia1', 'Approved', '2019-05-14 22:58:58', 20, 'admin_user', '2019-05-13 14:32:06', '2019-05-15 00:37:06');
INSERT INTO `dbpcn_uploaded_payments` VALUES (38, 434, 10161, 'backoffice/payments/434/CgAiy_434.jpeg', 'MANZANA #4 - LOTE #19', 'Approved', '2019-05-13 20:00:23', 20, 'admin_user', '2019-05-13 14:55:04', '2019-05-13 20:58:39');
INSERT INTO `dbpcn_uploaded_payments` VALUES (39, 458, 10181, 'backoffice/payments/458/Xlm8O_458.jpeg', 'A nombre de Maria Fernanda Leyva Vargas, Manzana 1 lote 01.', 'Approved', '2019-05-14 23:22:32', 20, 'admin_user', '2019-05-13 15:09:53', '2019-05-15 00:36:09');
INSERT INTO `dbpcn_uploaded_payments` VALUES (40, 540, 10163, 'backoffice/payments/540/WYYcU_540.pdf', 'Autorización del Lote', 'Approved', '2019-05-13 21:37:24', 20, 'admin_user', '2019-05-13 16:11:24', '2019-05-13 21:38:17');
INSERT INTO `dbpcn_uploaded_payments` VALUES (41, 433, 10162, 'backoffice/payments/433/ghogu_433.jpeg', 'Documento enviado', 'Approved', '2019-05-13 21:18:46', 20, 'admin_user', '2019-05-13 16:17:10', '2019-05-13 21:20:59');
INSERT INTO `dbpcn_uploaded_payments` VALUES (42, 475, 10183, 'backoffice/payments/475/WFeUi_475.jpeg', 'Juan1515 M2-L16', 'Approved', '2019-05-15 00:23:23', 20, 'admin_user', '2019-05-13 17:05:09', '2019-05-15 00:36:40');
INSERT INTO `dbpcn_uploaded_payments` VALUES (43, 511, 10209, 'backoffice/payments/511/U5VBa_511.jpeg', 'comprobante de pago M 39 LT 01', 'Approved', '2019-05-14 23:23:28', 20, 'admin_user', '2019-05-13 17:29:41', '2019-05-16 16:07:17');
INSERT INTO `dbpcn_uploaded_payments` VALUES (44, 489, 10175, 'backoffice/payments/489/Zp0db_489.jpeg', 'Consignación Denilce maria Florez Cardona c.c. 37922940', 'Approved', '2019-05-14 23:24:16', 20, 'admin_user', '2019-05-13 20:41:03', '2019-05-15 00:34:27');
INSERT INTO `dbpcn_uploaded_payments` VALUES (45, 481, 10187, 'backoffice/payments/481/Cc07y_481.jpg', 'Lote 15 manzana 1', 'Approved', '2019-05-14 23:24:49', 20, 'admin_user', '2019-05-13 21:12:52', '2019-05-15 00:39:29');
INSERT INTO `dbpcn_uploaded_payments` VALUES (46, 518, 10189, 'backoffice/payments/518/WIQBt_518.jpeg', 'SRS:  PC NETWORK  LES ENVÍO RECIBO DE PAGO EN CTA DE DAVIVIENDA A MI NOMBE ADOLFO CHARRY OLARTE PARA LA CUOTA INICIAL DEL LOTE 12 DE LA MANZANA 24 DEL PROYECTO DIVIDIVI ..', 'Approved', '2019-05-14 23:25:29', 20, 'admin_user', '2019-05-13 22:16:22', '2019-05-15 00:40:11');
INSERT INTO `dbpcn_uploaded_payments` VALUES (47, 522, 10190, 'backoffice/payments/522/NOFsl_522.jpeg', 'YOLANDA MARINA VARELA VARGAS.  -   MANZANA  25     LOTE 01   -  ID  :   REINAMIDAS', 'Approved', '2019-05-14 23:37:31', 20, 'admin_user', '2019-05-13 22:43:33', '2019-05-15 00:40:30');
INSERT INTO `dbpcn_uploaded_payments` VALUES (48, 505, 10176, 'backoffice/payments/505/M2bPF_505.jpg', 'Pago Cuota Inicial 190513', 'Approved', '2019-05-14 23:38:01', 20, 'admin_user', '2019-05-14 09:30:50', '2019-05-15 00:34:40');
INSERT INTO `dbpcn_uploaded_payments` VALUES (49, 546, 10192, 'backoffice/payments/546/EKB9B_546.jpg', 'Pago cuota inicial', 'Approved', '2019-05-14 23:38:43', 20, 'admin_user', '2019-05-14 10:02:37', '2019-05-15 00:40:56');
INSERT INTO `dbpcn_uploaded_payments` VALUES (50, 493, 10196, 'backoffice/payments/493/v42Py_493.jpg', 'Pago Angel Anibal Rojas Triana Manzana 1 Lote 006 Divi Divi', 'Approved', '2019-05-15 13:43:45', 20, 'admin_user', '2019-05-14 10:12:07', '2019-05-15 13:56:56');
INSERT INTO `dbpcn_uploaded_payments` VALUES (51, 454, 10179, 'backoffice/payments/454/6tYN0_454.jpeg', NULL, 'Approved', '2019-05-15 00:23:49', 20, 'admin_user', '2019-05-14 10:13:24', '2019-05-15 00:35:42');
INSERT INTO `dbpcn_uploaded_payments` VALUES (52, 574, 10195, 'backoffice/payments/574/FMwFR_574.jpg', 'Pago lote 13 Manzana 17 Marco Antonio Castañeda Leal cc 1 032 425 904 usuario macdfd01', 'Approved', '2019-05-15 00:29:41', 20, 'admin_user', '2019-05-14 10:24:01', '2019-05-15 00:41:21');
INSERT INTO `dbpcn_uploaded_payments` VALUES (53, 469, 10186, 'backoffice/payments/469/KN2f5_469.jpeg', 'Nestor manuel freytter contreras Mz 87 lote 13 usuario TICO1977', 'Approved', '2019-05-15 00:24:14', 20, 'admin_user', '2019-05-14 11:24:33', '2019-05-15 00:37:26');
INSERT INTO `dbpcn_uploaded_payments` VALUES (54, 484, 10188, 'backoffice/payments/484/BulGJ_484.jpeg', 'mz 2 lote 18', 'Approved', '2019-05-15 00:24:25', 20, 'admin_user', '2019-05-14 11:44:27', '2019-05-15 00:39:46');
INSERT INTO `dbpcn_uploaded_payments` VALUES (55, 547, 10193, 'backoffice/payments/547/4jfRj_547.jpg', 'Pago Cuota Inicial', 'Approved', '2019-05-15 00:24:36', 20, 'admin_user', '2019-05-14 12:24:51', '2019-05-15 00:41:05');
INSERT INTO `dbpcn_uploaded_payments` VALUES (56, 496, 10204, 'backoffice/payments/496/U8Bgf_496.pdf', 'pago lote 026 manzana 042 adriana tunjo', 'Approved', '2019-05-15 00:24:43', 20, 'admin_user', '2019-05-14 14:09:49', '2019-05-15 15:30:49');
INSERT INTO `dbpcn_uploaded_payments` VALUES (57, 459, 10182, 'backoffice/payments/459/WQozB_459.jpg', 'Carolina Ulloa Castillo, Manzana 5 Lote 4.', 'Approved', '2019-05-15 00:24:56', 20, 'admin_user', '2019-05-14 14:35:18', '2019-05-15 00:36:37');
INSERT INTO `dbpcn_uploaded_payments` VALUES (58, 549, 10194, 'backoffice/payments/549/kwDVk_549.jpeg', 'Denilce serrano Florez 55.229.535', 'Approved', '2019-05-15 00:25:10', 20, 'admin_user', '2019-05-14 16:35:07', '2019-05-15 00:41:13');
INSERT INTO `dbpcn_uploaded_payments` VALUES (59, 440, 10173, 'backoffice/payments/440/XmuNx_440.jpg', NULL, 'Approved', '2019-05-15 00:29:36', 20, 'admin_user', '2019-05-14 16:46:38', '2019-05-15 00:32:28');
INSERT INTO `dbpcn_uploaded_payments` VALUES (60, 589, 10174, 'backoffice/payments/589/arggH_589.jpeg', 'Manzana3 lote 9', 'Approved', '2019-05-15 00:25:19', 20, 'admin_user', '2019-05-14 17:57:33', '2019-05-15 00:34:09');
INSERT INTO `dbpcn_uploaded_payments` VALUES (61, 569, 10208, 'backoffice/payments/569/pcRhU_569.jpeg', 'Joaquín Mauricio Contreras Cortés', 'Rejected', '2019-05-15 14:17:22', 20, 'admin_user', '2019-05-14 21:22:47', '2019-05-15 17:34:03');
INSERT INTO `dbpcn_uploaded_payments` VALUES (62, 439, 10197, 'backoffice/payments/439/WaJsR_439.png', 'Pago cuota inicial manzana 1 lote 14', 'Approved', '2019-05-15 13:57:14', 20, 'admin_user', '2019-05-14 22:26:31', '2019-05-15 13:59:09');
INSERT INTO `dbpcn_uploaded_payments` VALUES (63, 486, 10198, 'backoffice/payments/486/KeVWx_486.jpg', 'Pago Cuota Inicial Manzana 30 Lote 10 Usuario KANO  (Orlando Quintero G)', 'Approved', '2019-05-15 13:57:59', 20, 'admin_user', '2019-05-14 23:22:46', '2019-05-15 14:00:16');
INSERT INTO `dbpcn_uploaded_payments` VALUES (64, 531, 10207, 'backoffice/payments/531/N6gAs_531.jpg', 'Pago cuota Inicial Manzana 36 Lote 22 /  Usuario INARI  /  (Margarita Maria Rojas Betancur)', 'Approved', '2019-05-15 13:57:54', 20, 'admin_user', '2019-05-14 23:47:13', '2019-05-15 15:34:13');
INSERT INTO `dbpcn_uploaded_payments` VALUES (65, 569, 10208, 'backoffice/payments/569/rPm85_569.jpeg', NULL, 'Approved', '2019-05-15 17:18:25', 20, 'admin_user', '2019-05-15 11:27:05', '2019-05-15 17:34:03');
INSERT INTO `dbpcn_uploaded_payments` VALUES (66, 495, 10210, 'backoffice/payments/495/Rp7HL_495.jpg', 'Pago cuota inicial Manzana 5 Lote 1 usuario: cupercuevas83', 'Approved', '2019-05-16 13:23:03', 20, 'admin_user', '2019-05-15 16:49:55', '2019-05-16 16:07:44');
INSERT INTO `dbpcn_uploaded_payments` VALUES (67, 461, 10211, 'backoffice/payments/461/mnD1L_461.pdf', 'Baucher de pago lote 1 Walddy Trujillo cédula 79892000', 'Approved', '2019-05-16 13:23:08', 20, 'admin_user', '2019-05-15 17:50:59', '2019-05-16 16:08:34');
INSERT INTO `dbpcn_uploaded_payments` VALUES (68, 590, 10212, 'backoffice/payments/590/raAup_590.pdf', 'Manzana M87 lote 04 Nancy frailech Roa Zubieta cc 23682293', 'Approved', '2019-05-16 20:55:29', 20, 'admin_user', '2019-05-16 14:54:08', '2019-05-16 21:18:20');
INSERT INTO `dbpcn_uploaded_payments` VALUES (69, 494, 10213, 'backoffice/payments/494/Pr9In_494.JPG', 'adriana  betancur cc 52.096.549 Manzana 1 lote 28', 'Approved', '2019-05-17 13:46:19', 20, 'admin_user', '2019-05-16 18:44:02', '2019-05-17 14:13:58');
INSERT INTO `dbpcn_uploaded_payments` VALUES (70, 594, 10214, 'backoffice/payments/594/QDkoC_594.pdf', 'pago lote Jesus Cardona Pinena Lote 2  manzana 18  jesuscardonap1710@gmail.com  usuario: jesuscardonaº', 'Approved', '2019-05-17 19:17:47', 20, 'admin_user', '2019-05-17 11:55:55', '2019-05-17 20:17:49');
INSERT INTO `dbpcn_uploaded_payments` VALUES (71, 591, 10216, 'backoffice/payments/591/Pk0XI_591.jpeg', 'adjunto comprobante de consignacion lote 08 manzana 03', 'Approved', '2019-05-20 13:44:54', 20, 'admin_user', '2019-05-17 16:57:06', '2019-05-20 14:50:42');
INSERT INTO `dbpcn_uploaded_payments` VALUES (72, 508, 10215, 'backoffice/payments/508/ol5K3_508.jpeg', 'Pago cuota inicial mz 42 lote 01 a nombre de Sergio Giovanni Parra Pacheco cc 80849908', 'Approved', '2019-05-20 13:43:22', 20, 'admin_user', '2019-05-17 18:10:46', '2019-05-20 14:47:32');
INSERT INTO `dbpcn_uploaded_payments` VALUES (73, 596, 10218, 'backoffice/payments/596/Wh3R2_596.jpeg', 'Lote 1 manzana 38  usuario: lote1mz38', 'Approved', '2019-05-21 16:14:11', 20, 'admin_user', '2019-05-21 10:30:11', '2019-05-21 19:08:57');
INSERT INTO `dbpcn_uploaded_payments` VALUES (74, 525, 10217, 'backoffice/payments/525/AxgCK_525.jpg', NULL, 'Approved', '2019-05-21 18:00:27', 20, 'admin_user', '2019-05-21 12:50:53', '2019-05-21 19:07:30');
INSERT INTO `dbpcn_uploaded_payments` VALUES (75, 598, 10219, 'backoffice/payments/598/9nwCt_598.pdf', 'Pago Lote Dreamers Revolution Azul M3 V2', 'Approved', '2019-05-21 21:31:58', 20, 'admin_user', '2019-05-21 15:22:30', '2019-05-21 21:47:04');
INSERT INTO `dbpcn_uploaded_payments` VALUES (76, 602, 10220, 'backoffice/payments/602/kVDnI_602.jpeg', 'Lote 01 Manzana 19', 'Approved', '2019-05-23 21:01:07', 20, 'admin_user', '2019-05-23 15:54:31', '2019-05-23 21:08:04');
INSERT INTO `dbpcn_uploaded_payments` VALUES (77, 601, 10222, 'backoffice/payments/601/Ttt04_601.jpeg', 'lote 09 manzana 25', 'Approved', '2019-05-24 13:18:36', 20, 'admin_user', '2019-05-23 17:24:05', '2019-05-24 13:44:36');
INSERT INTO `dbpcn_uploaded_payments` VALUES (78, 599, 10221, 'backoffice/payments/599/aiDjv_599.pdf', 'pago lote 11-24', 'Approved', '2019-05-24 13:18:43', 20, 'admin_user', '2019-05-23 21:57:59', '2019-05-24 13:42:51');
INSERT INTO `dbpcn_uploaded_payments` VALUES (79, 600, 10223, 'backoffice/payments/600/6K79S_600.jpg', NULL, 'Approved', '2019-05-27 19:07:30', 20, 'admin_user', '2019-05-27 13:51:25', '2019-05-27 19:15:31');
INSERT INTO `dbpcn_uploaded_payments` VALUES (80, 603, 10224, 'backoffice/payments/603/Jx7En_603.pdf', 'LOTE M21-01 a nombre de YENNY ANDREA ORTEGON ROMERO', 'Approved', '2019-05-27 21:56:11', 20, 'admin_user', '2019-05-27 14:38:33', '2019-05-27 21:58:51');
INSERT INTO `dbpcn_uploaded_payments` VALUES (81, 607, 10226, 'backoffice/payments/607/lbg83_607.jpg', 'Comprobante de pago manzana 22 lote 01 a nombre de Leyddy Johana Casas Chacon cc 1030558633', 'Approved', '2019-05-28 19:03:47', 20, 'admin_user', '2019-05-28 12:27:52', '2019-05-28 20:33:46');
INSERT INTO `dbpcn_uploaded_payments` VALUES (82, 568, 10225, 'backoffice/payments/568/YNBhy_568.pdf', 'Comprobante de pago cuota inicial, Lote 15 Manzana 21 Usuario yolanda2019', 'Approved', '2019-05-28 20:24:07', 20, 'admin_user', '2019-05-28 14:13:33', '2019-05-28 20:31:32');
INSERT INTO `dbpcn_uploaded_payments` VALUES (83, 592, 10227, 'backoffice/payments/592/6GiN7_592.jpg', NULL, 'Approved', '2019-05-28 20:39:31', 20, 'admin_user', '2019-05-28 15:30:42', '2019-05-28 21:11:53');
INSERT INTO `dbpcn_uploaded_payments` VALUES (84, 605, 10228, 'backoffice/payments/605/fRRK1_605.jpeg', 'Pedro Acosta. lote 25 manzana 49', 'Approved', '2019-05-28 20:56:44', 20, 'admin_user', '2019-05-28 15:42:10', '2019-05-28 21:13:03');
INSERT INTO `dbpcn_uploaded_payments` VALUES (85, 573, 10229, 'backoffice/payments/573/MgwpM_573.pdf', 'Comprobante de pago Lote 8 Manzana 33, usuario:  SHAROM2204', 'Approved', '2019-05-29 13:40:31', 20, 'admin_user', '2019-05-28 19:32:11', '2019-05-29 14:49:01');
INSERT INTO `dbpcn_uploaded_payments` VALUES (86, 575, 10230, 'backoffice/payments/575/1Xy0t_575.pdf', 'pago lote manzana 79 lote 1 conjunto dividivi marlon fernando londoño ruiz c.c 7160489 de tunja', 'Approved', '2019-05-29 15:29:18', 20, 'admin_user', '2019-05-29 09:29:03', '2019-05-29 15:35:06');
INSERT INTO `dbpcn_uploaded_payments` VALUES (87, 584, 10231, 'backoffice/payments/584/VHidj_584.pdf', 'Comprobante de pago, Manzana M 87, usuario: Santiago2026', 'Approved', '2019-05-29 17:06:52', 20, 'admin_user', '2019-05-29 11:08:48', '2019-05-29 21:16:40');
INSERT INTO `dbpcn_uploaded_payments` VALUES (88, 604, 10232, 'backoffice/payments/604/KpyHH_604.jpg', NULL, 'Approved', '2019-05-30 14:03:49', 20, 'admin_user', '2019-05-29 21:11:12', '2019-05-30 14:28:49');
INSERT INTO `dbpcn_uploaded_payments` VALUES (89, 611, 10233, 'backoffice/payments/611/84ms6_611.jpeg', 'lote 08, manzana 26', 'Approved', '2019-05-30 15:50:01', 20, 'admin_user', '2019-05-30 10:38:52', '2019-05-30 19:06:24');
INSERT INTO `dbpcn_uploaded_payments` VALUES (90, 609, 10234, 'backoffice/payments/609/20Qt9_609.jpg', NULL, 'Approved', '2019-05-30 19:56:23', 20, 'admin_user', '2019-05-30 14:44:45', '2019-05-30 20:56:41');
INSERT INTO `dbpcn_uploaded_payments` VALUES (91, 610, 10235, 'backoffice/payments/610/5H53u_610.jpg', NULL, 'Approved', '2019-05-30 19:59:18', 20, 'admin_user', '2019-05-30 14:54:44', '2019-05-30 20:58:41');
INSERT INTO `dbpcn_uploaded_payments` VALUES (92, 502, 10236, 'backoffice/payments/502/EvnoW_502.jpeg', 'Braulio Yohan Giraldo Restrepo cédula. 18471151', 'Approved', '2019-05-31 13:49:33', 20, 'admin_user', '2019-05-30 16:40:10', '2019-05-31 14:15:26');
INSERT INTO `dbpcn_uploaded_payments` VALUES (93, 559, 10237, 'backoffice/payments/559/U4xI6_559.jpeg', 'Pago del lote 07 manzana 87 Usuario Mastermind', 'Approved', '2019-06-04 14:05:04', 20, 'admin_user', '2019-05-31 18:29:59', '2019-06-04 14:10:09');
INSERT INTO `dbpcn_uploaded_payments` VALUES (94, 613, 10238, 'backoffice/payments/613/DX3cI_613.pdf', 'pago marcos vargas becerra', 'Approved', '2019-06-04 14:03:27', 20, 'admin_user', '2019-06-01 07:37:41', '2019-06-04 14:10:16');
INSERT INTO `dbpcn_uploaded_payments` VALUES (95, 556, 10242, 'backoffice/payments/556/FkZsJ_556.jpg', 'hola el pago lo tube que realizar asi pór que el cajero no lo paso  pero mi lote es el Manzana  M-1.  Lote 04', 'Rejected', '2019-06-05 13:59:32', 20, 'admin_user', '2019-06-04 19:31:14', '2019-06-05 17:21:56');
INSERT INTO `dbpcn_uploaded_payments` VALUES (96, 455, 10240, 'backoffice/payments/455/McjnP_455.jpg', 'Hola mi referencia tube que enviarla asi porque no me pasaba en el banco mi lote correcto es M17 lote 14 gracias agradesco la comprension y la correccion', 'Rejected', '2019-06-05 13:59:51', 20, 'admin_user', '2019-06-04 20:30:43', '2019-06-05 15:14:31');
INSERT INTO `dbpcn_uploaded_payments` VALUES (97, 536, 10239, 'backoffice/payments/536/FL3Ji_536.jpg', 'Buenas noches tuve problemas con davivienda, no se pudo colocar los datos de mi   manzana  y lote , los adjunto a continuación  :manzana 4 lote 17', 'Approved', '2019-06-05 13:46:37', 20, 'admin_user', '2019-06-04 21:12:58', '2019-06-05 14:05:09');
INSERT INTO `dbpcn_uploaded_payments` VALUES (98, 477, 10241, 'backoffice/payments/477/B5Uwm_477.jpeg', 'adjunto consignacion de mi cuota inicial pero tuve que poner en la referencia n2 otro numero de lote porque el banco no me dejo pasar con el mio que el el M-17 aclaro para que se haga efectivo el cambio correspondiente!!!', 'Approved', '2019-06-05 14:04:53', 20, 'admin_user', '2019-06-04 21:56:21', '2019-06-05 15:14:37');
INSERT INTO `dbpcn_uploaded_payments` VALUES (99, 455, 10240, 'backoffice/payments/455/mSFcy_455.jpeg', 'Hola tube q poner mi registro 2 asi porque no pasaba en el banco mi lote es el M17 lote 14 gracias por la ayuda', 'Approved', '2019-06-05 15:10:27', 20, 'admin_user', '2019-06-05 10:00:55', '2019-06-05 15:14:31');
INSERT INTO `dbpcn_uploaded_payments` VALUES (100, 556, 10242, 'backoffice/payments/556/55gIT_556.jpg', 'Mi referencia #2 ,mi lote es manzana 1 lote 4,estoy mandando está segunda referencia porque el cajero no me tomo la primera , porfavor confirmeme', 'Approved', '2019-06-05 17:12:10', 20, 'admin_user', '2019-06-05 11:46:21', '2019-06-05 17:21:56');
INSERT INTO `dbpcn_uploaded_payments` VALUES (101, 617, 10243, 'backoffice/payments/617/736sJ_617.jpg', 'Comprobante de pago cuota inicial lote 28 manzana 22', 'Approved', '2019-06-07 19:41:14', 20, 'admin_user', '2019-06-07 13:59:10', '2019-06-07 19:53:31');
INSERT INTO `dbpcn_uploaded_payments` VALUES (102, 619, 10248, 'backoffice/payments/619/NVjcu_619.pdf', 'Lote 23 Manzana 2', 'Approved', '2019-06-10 14:57:07', 20, 'admin_user', '2019-06-07 16:20:44', '2019-06-10 16:20:18');
INSERT INTO `dbpcn_uploaded_payments` VALUES (103, 616, 10246, 'backoffice/payments/616/NA9KZ_616.pdf', NULL, 'Approved', '2019-06-10 14:57:39', 20, 'admin_user', '2019-06-07 19:10:58', '2019-06-10 16:15:24');
INSERT INTO `dbpcn_uploaded_payments` VALUES (104, 618, 10247, 'backoffice/payments/618/H7vD4_618.jpeg', 'proyecto: DIVI DIVI - manzana:A-lote:11', 'Approved', '2019-06-10 15:33:33', 20, 'admin_user', '2019-06-07 19:32:13', '2019-06-10 16:18:43');
INSERT INTO `dbpcn_uploaded_payments` VALUES (105, 563, 10244, 'backoffice/payments/563/bxrOG_563.jpeg', 'eriyharold', 'Approved', '2019-06-10 14:56:42', 20, 'admin_user', '2019-06-08 16:45:53', '2019-06-10 16:13:04');
INSERT INTO `dbpcn_uploaded_payments` VALUES (106, 622, 10249, 'backoffice/payments/622/WGK8M_622.jpg', NULL, 'Rejected', '2019-06-10 14:37:17', 20, 'admin_user', '2019-06-08 21:33:36', '2019-06-10 16:46:52');
INSERT INTO `dbpcn_uploaded_payments` VALUES (107, 606, 10245, 'backoffice/payments/606/Xq9Qn_606.pdf', 'comprobante pago cuota inicial manzana 43 lote 10 inmobiliaria y constructora zosa s.a.s', 'Approved', '2019-06-10 15:33:18', 20, 'admin_user', '2019-06-09 14:41:42', '2019-06-10 16:14:41');
INSERT INTO `dbpcn_uploaded_payments` VALUES (108, 622, 10249, 'backoffice/payments/622/qqdfO_622.jpg', NULL, 'Approved', '2019-06-10 16:42:52', 20, 'admin_user', '2019-06-10 11:09:50', '2019-06-10 16:46:52');
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_users
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_users`;
CREATE TABLE `dbpcn_users` (
  `id` bigint(30) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(5) NOT NULL,
  `api_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recovery_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  FULLTEXT KEY `recovery` (`recovery_token`)
) ENGINE=InnoDB AUTO_INCREMENT=10250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_users
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_users` VALUES (1, 'pcnetwork', '$2y$10$.Omd4SoB.f5bO7p/EU382eLVeB0bo3ueqVbQfcqbv1TnB8AHFlIS2', 'de2Y6qhqqvqblW6DixfqP3WKjQQpTCnaNekjgpR8J64uWNBbzO67U5Xquw26', '2019-06-07 13:52:46', '2019-06-07 08:52:46', 1, '8wHudQ5autSruw4EMjXQkej3JpZviKHZ8WuvJuFzMZiGL', 'bc5aadea15279656b69623c91163cf88fb3090dddadf43655f9971ce26832db267f3b6836648e0eacd3620f47e971269f05208231bb9b03806011b7ab6fb8c3b');
INSERT INTO `dbpcn_users` VALUES (10148, 'gin', '$2y$10$yNrdhvOknad5.cpBR66YTOkuVOQej9ZltA1IAKQ.KH/e0sOJewBcO', '4L1ty8qRo1JsgJHf9a9Mu05NCJXCBgUs4LTXvxvIxIKdrvfVySZL3r0ikxsc', '2019-06-10 16:24:54', '2019-06-10 11:24:54', 1, 'vhVaEt4EoQIYSjiQEkEuE3I1ciHkYJmCzXAfTYQtXNRik', NULL);
INSERT INTO `dbpcn_users` VALUES (10149, 'pasal', '$2y$10$W4Kmb1T.6HWWSGukzg85tOw22LkMGM6fJqKl6NZb/oEIURz/Q9Kle', 'nLF7yyw6OVIy7dWxdPijlmrcc6fxshxkZ8ydYC83LPf1FSvSoA0K6hbbE0hG', '2019-06-10 13:44:11', '2019-06-10 08:43:07', 1, 'tq1G9jCHgtnGmCmiW4tHzhBZEkPeqhKl5bM1j3utebCBd', NULL);
INSERT INTO `dbpcn_users` VALUES (10151, 'luhercar', '$2y$10$Kg7vzuvZh6M.YdhdASqyyetDeowlQr02dWmZsppGgQ9FusMAxoJMe', 'gSMsQdZ2LDeSceXbKs1BHSdxu5JSl11pzeNxx7ThYR5EyATjuh6tZdwiG3Rg', '2019-06-04 20:30:37', '2019-06-04 15:27:53', 1, 'nVpV40HtGYxAnIj47Asa2xDXqyKiCdCXdaEfBpHjETToj', NULL);
INSERT INTO `dbpcn_users` VALUES (10161, 'cabapella', '$2y$10$T0bVlObj8lg26Xb.J8nnK.wnMdypOw5eANM3s4yNbTfQ0IRFRXPM2', 'tbG97oqOzrlJSMUtoOJOVqp8mWzXZXhxWUDzWabwKfbYdi1RX1Wt12Emu2kP', '2019-06-05 20:45:45', '2019-06-05 15:17:19', 1, '7AogCxSRScddZt84d0s9s7dk0hp3ldehypD8lDgG0r4GI', NULL);
INSERT INTO `dbpcn_users` VALUES (10162, 'bitboss', '$2y$10$GZ4s0BSrQ40l09BBw6dke.YtEw5BERzliIH5XjRTNsBDMZUo2PjU6', 'pZDQKzlnqiXhkJTyGkxvZ4IWk2Cga1qjdfF9WJG1UfNbpBrBoZyd9yMbp4zt', '2019-06-06 23:10:13', '2019-06-06 18:10:13', 1, '8QUK0o1XF3vqK1gfTK4Foc3ux4LqUHTNxBVZJTraHbSPx', NULL);
INSERT INTO `dbpcn_users` VALUES (10163, 'jjpalacio26', '$2y$10$8Tp6KNYOc9x9xWaWRNcKHOVWQ4WjhlVL5Y8FkHQEzHQgeCwzepB8m', 'oMKtu2iwPH', '2019-06-04 16:13:51', '2019-06-04 11:13:51', 1, 'hBCFiMNUAwW813kDhG5hw09xr6qhXrorj8QPiu2r2zBvV', '');
INSERT INTO `dbpcn_users` VALUES (10164, 'globalvision', '$2y$10$FDd3bauEZ524FVfO1hU02eH5thLfsHle.uz3sL.3zyxy5aAnRTFX6', 'ivkWrP4i1Zm8gFp0xACQIK6Or2H10QyIG36wO0cZhBR6vptDeZhDgfPQj9cy', '2019-06-10 15:14:28', '2019-06-10 10:14:28', 1, 'h0mQBJMqS7zMOwalqIui95IFc3lxLIFyZZXCIFDUFhxfy', NULL);
INSERT INTO `dbpcn_users` VALUES (10165, 'yesidf', '$2y$10$FIuIhgvuR0AhWsApKRp0X.D6chGJZCnzps7YcXkQgIMVXR6kzxHGi', 'gGpsMfVZSrV2y0P3EQpobrY9iWeaBUXtsp41Kvg4d6Y2BoRIgmo6PJoGOfA2', '2019-06-05 18:47:05', '2019-06-05 13:38:56', 1, 'LWSkIq6SlNuxu06GLEauixpjnjnVZNodkx5xDAcZCdQzg', '');
INSERT INTO `dbpcn_users` VALUES (10166, 'jagaby', '$2y$10$w5UpZhh2Y7j.1vNwKsQhduJ2bB/xnGOw/oZWfAB9ZcQ9QquJVwMBO', '8GX07PVmtglCPAdaQQas30kwm7bqkEbldGJa6qqBuQXoCpRkP2y1akML4HFK', '2019-06-01 13:13:55', '2019-06-01 08:13:55', 1, 'Nqvf3ggC84x2Vi5UvYmpoOHUeoz09Sx3wYnHjIY6QBuCB', '');
INSERT INTO `dbpcn_users` VALUES (10167, 'wolf_ecu', '$2y$10$j7gKfwLIgCqsDgqhGRpNvuGWNZYonHpYZZI6EmEEeYCms.RP9Cx1O', 'LCdZ0ZyqLrUY3vynvkfghWeuo15CYZS3TVdR8EFlbpnoP13Kkk0aZJeUPocx', '2019-06-07 22:20:59', '2019-06-07 17:09:29', 1, 'PVG6SrfsDAoXEwkQQYcg63QJvDN5uTZxE893XvLL6r0oF', '');
INSERT INTO `dbpcn_users` VALUES (10168, 'paulhstevens', '$2y$10$NbpKVmm2jmd1G7kjP31nZuhqZ4U4sVGuxp4oVMEPtv9nZ7Aa2OvKO', 'pRTCiVUNWFdpx00Zkfu2Oatr0gFSwfp514pbC2b8Zh9W2h1XGT7ca5wi22Lg', '2019-06-07 22:22:31', '2019-06-07 17:22:31', 1, 'tGXFCGydQbP2R9JlbAJ8joKnqrP27UCPwTNET2kLMDRbT', '');
INSERT INTO `dbpcn_users` VALUES (10169, 'adelito62', '$2y$10$oL2Fj04laRoYa0.CHlYg5.1TM2BB0qcZv1zSsR2RejG43gx2fokea', 'e0WMYCCvAsHvUPpQyTXftAk0kVglaP68kzt6bd6SH1ZH2lsoktj8rg8bdxlj', '2019-06-05 16:20:42', '2019-06-05 11:19:36', 1, 'VWIkY4sL2oesGWZYSM8J37JXNENJxtBSQdltjFD9g5S1a', NULL);
INSERT INTO `dbpcn_users` VALUES (10170, 'farcoin93', '$2y$10$txXFlvjeoGOwAusVuBofQuE0LC5L078ippm1LXUWL48AyzFwdb31K', 'lft1bwPgs4VeSO8PhmNnHFG4wHfUSU0QFqDfT3Y6enrEIMBnO5zP2H7pytAr', '2019-06-10 15:42:07', '2019-06-10 10:39:10', 1, '7PHVpoGy3TibhUlEUkeoBW6VEUByISVSD2kNwR9JAxAyB', NULL);
INSERT INTO `dbpcn_users` VALUES (10171, 'eliasbm', '$2y$10$vt1IoGBn/XTz6kGKBScQmu69IcwauirJprSeNSFIAHW50GIzj9e1y', '8WYuj6av0Qfx72vCFXHyR0duZleGirPZSAAPoBUoXrpENjTajUtLNCOaWIDf', '2019-06-10 14:55:55', '2019-06-10 09:55:55', 1, 'JztQARQzWIsXSSxmTqsqyXyUvzWDHHKur4hP4HEsJqTms', NULL);
INSERT INTO `dbpcn_users` VALUES (10172, 'carolinayjimmy', '$2y$10$uhQ.IA1kws2QqHuZLkYNo.3sn5j4.obu6FunLhPRU.g5zVi2KjYSq', 'ddZBUhtDGlgCfEb0YQacBBVVVElinNlQ23Qr1CHjB825bRQ9k2KTWWMWfhVo', '2019-06-08 23:20:15', '2019-06-08 18:20:15', 1, 'SxC8LE5FjHKGQXNYlRodbf1HMl9zNCTF3qeRyogGd7iD6', NULL);
INSERT INTO `dbpcn_users` VALUES (10173, 'trillonario', '$2y$10$LcAEGUJmwwekw5I2ScoHqOvGK47K/TORMBizLcSKegHTib5sl11p2', 'NGwO7dKTik15q0HYCxuqbzL7Y7HvrGo5BLji22i2kb2T3ApPyfCQOVvEwT2G', '2019-06-05 22:25:54', '2019-06-05 17:25:54', 1, 'aJ4MsiT02U67mW27DumGfOkpnjVNSzeoNMBkjelJ8h0D2', NULL);
INSERT INTO `dbpcn_users` VALUES (10174, 'masterdreamers', '$2y$10$mSgHugeXIHXk3YRq31BAQuZCppChqOH7OrOfJLHzoCKjbdKAWhtFS', '3cQfbnrAtr6QADkssE3aHOuOKqrEjkvsBUZ1LsBVnpZEYsxWUCUHSeAhBcY5', '2019-06-06 20:37:33', '2019-06-06 15:34:41', 1, 'qJOtyE4FmDv7EcfUMBGt8Bjg6DEoRalmjUCHb0mpd8bgj', NULL);
INSERT INTO `dbpcn_users` VALUES (10175, 'yosoy', '$2y$10$er8wAUHxxB8OxpMwGZr0beL0M5W.dshg7GyOGrhv5G/52UCQlDXMa', 'n7xP06tyACM0BOHHnzSMWbAYMZmnj1zDHVkX1jKn0Ir8Diy0lwkMBW0pJuuk', '2019-06-08 15:30:18', '2019-06-08 10:30:18', 1, 'KBtRL338YsOCbccyA5dRvignLGAFjmAF4wnd6IoYfGDN2', '');
INSERT INTO `dbpcn_users` VALUES (10176, 'emjv2019', '$2y$10$g5HdoYecPNmLUZ/2JVl8YObO99WQUve7EZGEMdVHNqx6id1gcXUkC', 't2eECCjyLWxJrUj0FErCZy9JSytQBNW3K6CpQkcUhT8Af8V9mSbpd7gypxTr', '2019-06-07 23:39:14', '2019-06-07 18:39:14', 1, 'ss24Qvpiq5mVPamKtCBXetOH0vfBr3IL5u7ZwlBvOdIae', NULL);
INSERT INTO `dbpcn_users` VALUES (10177, 'diamond17', '$2y$10$ethVChworY8i4BCSV7wdJOhQUjqlw2rvQgeeyZfnnxLpkomZ5f5tO', '5y4sFCGcD646DFbU5rgsKMlO4qrNiIkvPrga3i2Hldbb3nJ0fqqO6Pil6VHa', '2019-06-10 15:34:37', '2019-06-10 10:34:37', 1, 'aQCHn9i8ILAtGU32ph1YvemSUzCur1jLl1HCEhvPuXLQF', NULL);
INSERT INTO `dbpcn_users` VALUES (10178, 'luchomaster', '$2y$10$O/KDmYQkAKv5SxwF/6VhGu.AGLSbpQ1dyQHMC3NTs9UmEZ.kChWCC', 'DwdXcWiEY03A9v9YcdBLEuZIgd6LzH7cPgu3c4yAUe0b3hcfAzSZ2YczulZF', '2019-06-08 18:22:49', '2019-06-08 13:22:49', 1, 'EIADyDD4x8YufUmmatVQ5JRW2OCaW5gOca1mUTaoIRj0p', NULL);
INSERT INTO `dbpcn_users` VALUES (10179, 'darioquijano', '$2y$10$2waypDHWSDN2.XzJ1mSmreB6Ihkm4ZQB1fbaqhe5FqhTCDYWQk4RW', 'KPotkqxyfFQ7BzhBIkVYWOnRSkNRV7Uf24vkVcBCXDjZMYdcuOFWeII99ugs', '2019-06-10 04:54:13', '2019-06-09 23:53:21', 1, 'gaKORDT72ptuXOlshyEMLYrhaznrykOCIf5gWzjtKU8gb', NULL);
INSERT INTO `dbpcn_users` VALUES (10180, 'luzirene', '$2y$10$LHg/1l0kjX8cRmkTUuXqfOShqd6TRSPdxSuCvZwyJYlGIEb9.T35C', 'hPzm6OTn1bLwoRexhzYS84QmfwNe8NEUPCFj9ZTz4vK6Ik81FzuDCV7uf0Ib', '2019-06-06 21:43:25', '2019-06-06 16:43:25', 1, 'QWH3YtNmAm98Cqfc3F2817KtFMQDzHTRuuc2jcm4qj3A6', NULL);
INSERT INTO `dbpcn_users` VALUES (10181, 'familiasl', '$2y$10$4yUkWEkaBeiQKyIaZCBYSOBxnVnpKEfmTnRu.P4cIyRNtJWPZ5g2C', 'DnWhbwOovBT8IELjAWUPbOL3qlPD6XncvyMu5VT416HUNqDRRt9iMS4Gf3tC', '2019-06-09 22:18:24', '2019-06-09 17:18:24', 1, 'yJySiMjgHPVxQLkydrekLWASYFHCw7usgBmk9FeKvNXN6', NULL);
INSERT INTO `dbpcn_users` VALUES (10182, 'carly', '$2y$10$2azriNsH2IG8kjHQMEhHKu3uXmDgxQea3O8Rb054JMKV3ZnNANlfu', 'lsEgsb43nmTF08JLUFciBQXikrQUlIXNSy67il5tEi4gxes72YhM8a6vFM87', '2019-05-28 14:57:31', '2019-05-28 09:56:59', 1, 'e1B2d5WrqVB4XKqhrYWduhgM1P4utUkXE1sGRbOENeL0F', NULL);
INSERT INTO `dbpcn_users` VALUES (10183, 'juan1515', '$2y$10$ofQimCFWnrpDhu74JiQkUuIZKDqj7uUrz//x4xKV1.6LUU3.oksYu', 'KlWS5SXVRE96YZzCvyvZ2KT3ZwbSyWuYEKOVmR9NkZQPsSNDilXoFE90I5E2', '2019-06-10 16:07:35', '2019-06-10 11:07:35', 1, 'yVFX5vquJ9dXN29HWaNdlVHLMB4GcB6AFAvADMUEoKHkm', NULL);
INSERT INTO `dbpcn_users` VALUES (10184, 'nelson_mejia1', '$2y$10$IBv4gjYXDTCrbTPP5TqZweRsqQE6cd79puHWJJ2qzUxWlFHmJWsh2', 'FNSOcsDTRG7UaJgAlA8c3YOUTLVBIQ0kD1bmk0a7ChDfCanNuRkoKGmilRAc', '2019-05-20 18:57:15', '2019-05-20 11:45:20', 1, 'caiSyubdJVBf5vvhEAis7f0XKpeMy16yECtm38BqlkZXV', '');
INSERT INTO `dbpcn_users` VALUES (10185, 'hernuesga', '$2y$10$rKf.MthsqH4U2Yz3w9QrS.KZqawGz1DkAUxN7dUWjesgigAwYcXQu', 'Y2omT1IX4BloOSpKrw17FbTWUoB05rW5n7CTGR1Uv0SJc377ro6PjG5Ro1xN', '2019-06-08 21:36:37', '2019-06-08 16:36:37', 1, 'IFQtgYqxbs8EJgARPDsoEB00NMPVCofTAkW9tfC4igAzA', '');
INSERT INTO `dbpcn_users` VALUES (10186, 'tico1977', '$2y$10$TCieItnvVr4RFossIQ7OM.v7oolOoEjlTpOS9tQkDPvKYzyLmiNqm', 'WhqPeUOtVgH2kPVUsDTumklVmxrSMQappntHzIAJQ9ntkk4OyoEQb0vcgvED', '2019-05-24 19:10:53', '2019-05-24 12:51:12', 1, 'Q8ZcawzPNPCUlpXecTAnhXMO9zYdf1ppdbMd9BoKxl8eG', '');
INSERT INTO `dbpcn_users` VALUES (10187, 'goldteam', '$2y$10$DBCxXkJqJABJh3Tn6XJDxuvZ0PGpMN5Ev8T1.89jEfEmKFbe93LA.', 'y1TlJjdQxoHzBQfruRSkg7Srs2Ce9IWYyPxOIx08jQXy613y7Zzo6uzKkOnL', '2019-06-08 16:52:10', '2019-06-08 11:52:10', 1, 'zn8u8xd0xxvcjX0CePmg9XUvJ6gMFTI8auuT2KHSubrd1', '');
INSERT INTO `dbpcn_users` VALUES (10188, 'yulimarolivera0408', '$2y$10$6bR6H8.mkGXzNd3mCNYCXeIGLIr.MhUnl14QVk5zI1ZIs3YpaV4nW', 'DeLh1HDVn1Pqxz0PWy2rceD1S7Oaq8TbMKO6EmBQX573ekObFeUao8qbGUlz', '2019-05-17 17:16:49', '2019-05-17 12:16:49', 1, 'OokEExU6vzxCPZ2CrWh0DYJZiCJw6wHP9RJEO0J4NrK0Y', '');
INSERT INTO `dbpcn_users` VALUES (10189, 'reymidas07', '$2y$10$MeLwu8pfft/CFXRhBN.VxuEj1DhjvTbWioVb6vnlOS.N3m4qTRl2G', 'PMx6E9TJ5OA2GxHXDZEpZ72j2gj2JnzVAXQCbgoE1MRj5gWV2ZMxIOgHFRrK', '2019-06-09 16:37:45', '2019-06-09 11:37:28', 1, 'V6jZUL4mloOm7AWV7micsQRGjt8xLfbWzNK9Z9ZuOVG5K', '');
INSERT INTO `dbpcn_users` VALUES (10190, 'reinamidas', '$2y$10$PDRQXJS4eeYs0TulFjimc.mJ9Mt0vFho/EY0cj4c5zr3UStCtdoIy', 'EowNxJgkxL2J4DfVwgpgiPErvSuv46rf4rcSBUqyr8HgjGRrXDNrUJ6fKZ5K', '2019-05-23 18:19:43', '2019-05-23 13:15:31', 1, 'D0Dd8jZh07XsfZXOAiAhLTmXF4ag8rUEM8GHCYAEJdRUn', '');
INSERT INTO `dbpcn_users` VALUES (10191, 'fdam.master', '$2y$10$se3Uu0ZdCTvADN8r4Dz9NOUhDQV2Hbd.GC6hzUMd6/shl1VTqDE5W', 'DoSdhassz0gbTgRASv0XcEiUXe7ZsSoqurzQrYBu8GBdxsf6Ll2NRAnsEN57', '2019-06-08 23:03:43', '2019-06-08 18:03:08', 1, 'NtyNlJG4YVU0ZPMedYnE7EQf3wENFFKVdEORDQVAIxVjs', NULL);
INSERT INTO `dbpcn_users` VALUES (10192, 'lnlb2019', '$2y$10$dtgW52EQIHbssxQH3s75uOfWOWkUoIq.SNygkmmRftG1xnKYnOl1G', 'hg5gUI44EW', '2019-05-28 14:43:37', '2019-05-28 09:43:37', 1, 'kkcHvarzDXtwPHsRe2e38kowvFPODuBrp7SJXsIlAKdLh', NULL);
INSERT INTO `dbpcn_users` VALUES (10193, 'iferrer2019', '$2y$10$kpnAkPQ9GnjFGzAn0l0PkuTt4iNrWAIwNZoXzdZwl/T2/hDE0AAYq', 'yNgippLLMpgVGwsHW8lR53M5qnBEKLnLD2UJ8rhmsvMBDgsxJnzksaiWxclB', '2019-05-18 22:58:01', '2019-05-18 17:56:53', 1, 's0sh8dxPLCrT5ha5opiEYbl0qwPcZD4AAfjGMaZEhXh5J', NULL);
INSERT INTO `dbpcn_users` VALUES (10194, 'dserrano', '$2y$10$PKeFFUftchHyyH3WQIQFOOcIQow2LPD1FvwPR9i8ewXYIdg7Omeae', 'WmIwFsqAI5KzR3bKVFCO1W2nvG17nkOqNzdS3QxWVEWNXd5V4K28Q8QxwZPH', '2019-06-01 14:37:25', '2019-06-01 09:37:25', 1, 'DuFEuDQaUke78zqb3p9r8kB05fCQvkw8GjYLlOJpcE82N', '');
INSERT INTO `dbpcn_users` VALUES (10195, 'macdfd01', '$2y$10$0DC.MP5LQCbO8NSAoXU71.Jr43VnnYsh2.Ru43YzUn.IGzXbg2eSu', 'ZaizU5emC95e2pWIobt0EA141dTnUvRcMZ14JrYoLngUUCW1u4RKwWhnK4P1', '2019-05-21 22:49:53', '2019-05-21 17:47:33', 1, 'FvG5dig42ZpWDNlrnWjJQxMgBBTwj3iUvJvd4YsXTEaB9', NULL);
INSERT INTO `dbpcn_users` VALUES (10196, 'atlanrot', '$2y$10$GMrzePwqHQOREI2v0SfuNOkeuo5pAtky5qCF.maM3Fz6IRLZu9uaC', 'xjpRfpabwt', '2019-06-10 02:36:44', '2019-06-09 21:36:44', 1, 'gUx9hNHpLCKkZkDnoobNt37YvdpqdBel29WxqUXjOMF7m', NULL);
INSERT INTO `dbpcn_users` VALUES (10197, 'alexluisv', '$2y$10$bAByzGRumY4hPUfh/ke/ZeVbPdjMrQwKFHCcKq5OlMqShgJR9H0wi', 'ofrVXUUHLTgAzqrOKNvZoGpla55yF0l2PZZjBsIPQBweRR63ytkAFmJTP584', '2019-06-10 00:54:55', '2019-06-09 19:54:55', 1, 'p2rjXKcMsbq9AIuLfghRSZBostDRYbuuFuTRtRX55M5vf', '5f2b21d295a7ceb7dae1bf9bdad2e8a4a968a8a95084794897af6535f36987eb306e9bf33d82e6c7edf08b89be7e3220e8c63c5788ee4bddcb4afe8766938050');
INSERT INTO `dbpcn_users` VALUES (10198, 'kano', '$2y$10$3gSi11.H4Y.3jy/jOz7E9u9g/XvLk/XnhjgeuM54DjRHEYwhGg0eu', '0yC3GMuirFerx0cafeRD9oRtt0oe3lLRkG9usOUJzgNmR0JKy2EoDyfLlbEC', '2019-06-06 02:25:26', '2019-06-05 21:23:45', 1, 'H9tWCgtrH98Dv9hTD5HkhLJIaoJXy3g9v9mtnb4wJ6ZCJ', '');
INSERT INTO `dbpcn_users` VALUES (10199, 'dyjingenieria', '$2y$10$eC/fc0eHTtz0FNsI6iNvCumcsxdcdWXUivEU.7Fif2j680Cg3vVOG', 'XnKAdCX5ylvrvH85z5nYgu6gWzrXFjzar5FpNPoAyjFyflZz0QObuVbH4I43', '2019-06-07 14:21:47', '2019-06-07 09:21:47', 1, 'JUw9x3erk90IYvVRohUTKz7r7KELZF8IkI6JhdcpT0OBw', NULL);
INSERT INTO `dbpcn_users` VALUES (10200, 'luisfercast', '$2y$10$qxxNyAbz9eQKf5Xt/Q3l1OBczl5df3X1dyKPKy94DzRqRpqFP.x7W', 'XK4W71vybPIRJRezLJxpTD76sjdRt8lSMW9Ao2ZXNTgX8zMjAehH9HY8f8gR', '2019-05-19 01:29:11', '2019-05-18 20:29:11', 1, '5p0RAjqUuTG6B1fa1thtSVTkzJw6CAi6LvmV7ENh9XwbH', NULL);
INSERT INTO `dbpcn_users` VALUES (10201, 'jufesera', '$2y$10$aYCjyuzKQ7pDcCC3mDesSeuKfbdwokKMXjWRjvLcXCVppQcNb4PWS', 'CR4v88nsHB9U0THw8yvl3glAbjeFrpLuaoFsBaaJTkTPf2qKhM1jqbtZ2VdL', '2019-06-10 13:30:10', '2019-06-10 08:27:58', 1, '7vfqJTTKRrDXuWncCeeKM0lm8KUXLyl6V2lF2Zn0CNv15', NULL);
INSERT INTO `dbpcn_users` VALUES (10202, 'andreyamaya1927', '$2y$10$BqstJiAd81vPetB5V/SzKOOhoGwaegIzBk/jrFMerAHm75U1kllGy', 'B8aUMB9Oef', '2019-06-05 14:45:10', '2019-06-05 09:45:10', 1, 'YjEDeX7RNv5S5JfZ25PsqM4yuJq8nmFjTTYarJdb0EYTV', NULL);
INSERT INTO `dbpcn_users` VALUES (10203, 'housedream', '$2y$10$xhqegSckUx3ibhjsPmcyGexB53270z2HOajv1.pyn9j/PRYRMIJKK', 'ybFITNhlXhdQWpmt07YRnOPU7puhPooAMEfLEa6B2DCIN6NoRRVfJzmLO49c', '2019-05-30 21:33:30', '2019-05-30 16:29:59', 1, 'KDGyRU7VHkWXJgJpMijTF3FpCkXdwXYsqUm4aI1fTEkhD', '');
INSERT INTO `dbpcn_users` VALUES (10204, 'adriana', '$2y$10$4y69w6w1.lx5rrpgFRVB5OB6Z.B9rLexujGA5ibq1i3QMxpJ9uDQK', 'efj6xNfGqP4RljS4t0kCNXoCI3dOqDfO8937qh73P8oUz47Pgaob2tRV8OWH', '2019-05-31 23:59:20', '2019-05-31 18:59:20', 1, 'oQowSePWBaymsrJ3MtzEiJ810OvPjDixRfyHOfXRCXYIJ', '');
INSERT INTO `dbpcn_users` VALUES (10205, 'excellentpower', '$2y$10$KBwUGRveTkeDFyqEuEvhXe4lm5oCucTZQ3CcvoELBChyGf2Ui4WJK', 'B6T67RHpcHeVBYM7tNl67g9XhSD2SE5z3BKU91xf7tVyvPFqZSuriMxjmMdh', '2019-05-17 12:12:49', '2019-05-17 06:59:34', 1, 'raNLiOj9rMwDSfgwNly5BryZOnECxLMWHKmOm343aaFX2', '');
INSERT INTO `dbpcn_users` VALUES (10206, 'heyeve', '$2y$10$.UytCU61w1wVBjZNUFlfC.0C.DFgrvqr0lHcni5kWiCJbu.bQA9f.', 'OcUhOQJDpIDU1soXSSY1aUdV8SiXRhUEccNL2Z004UL4dY59eblNtbhpVPUN', '2019-05-17 12:13:54', '2019-05-17 07:13:28', 1, '6dxhzJahz7756CIfShgKcyyJ1g4712Y1XQWZuTF9szVcK', '');
INSERT INTO `dbpcn_users` VALUES (10207, 'inari', '$2y$10$VQ7NXiwFPM3hKVah5sw6P.b2uHo5F1HPvD7OZGqWhmNASqf5g4E6u', 'TJNPbQzo86zSISTsjgnpjFi83lHdV6L22rCdleEdWlcKkyoh8Ni9IlqIl8RM', '2019-05-30 22:59:43', '2019-05-30 17:51:05', 1, 'jnX0YP3qhlOpZQ7Mu1VzWCNSXIPrIjvvmtD2MgzU1diw1', '');
INSERT INTO `dbpcn_users` VALUES (10208, 'visionary', '$2y$10$Bg8mOscnP7FY.8z0htyYuu3otJiZJ6QKms6rvZVHotKyR3F5aeHsW', 'fGJGZTcDVNoYHfdVUVV8esuTGsrFwTjrLhoQRpjjbYxrt45IKKjQahixFMtC', '2019-06-10 14:25:45', '2019-06-10 09:25:45', 1, 'YaVcX3hcUFoVetg69gwpZxEmqMsEItOBkL84YTb6jDYt9', NULL);
INSERT INTO `dbpcn_users` VALUES (10209, 'camilo1140', '$2y$10$06TVMt1fWENZR9WX4dqiveEMdTQpkojsepfxU8ujH3fDfHddv.4hi', 'lk2l5y6BYUGajg99fp2ToIXxfpfEbRWE8cJS5xPEVtxGL2Pp2ZzFNqY02mHR', '2019-05-31 02:25:55', '2019-05-30 21:25:55', 1, 'emNanb3F8qRCn8VsaLTNYAOKlb3dnloz6K9J6lMthJ9Wh', NULL);
INSERT INTO `dbpcn_users` VALUES (10210, 'cupercuevas83', '$2y$10$C/V4mr6xy5lOPhZPACA3Pu0kR1cAd9odQryYbUyEiIenu2Jq5W.ii', 'ZNUTcKpkRlqBDG2DlJVEVtbIDSXcjkbhABS2IuLQwtlFFjob3VuCQaIRbIwS', '2019-05-22 22:38:36', '2019-05-22 17:38:36', 1, 'S3Emrqjl24LIVG61y8fmgLWDMXa6e036TkpymoynMzpTL', NULL);
INSERT INTO `dbpcn_users` VALUES (10211, 'wtpropiedad1', '$2y$10$FEzEHnzj3iPl2gHKnUz7I.fFo5CpBtrdCL/5B8aBb9HnEApU5qA52', '7ANRsDblo7', '2019-05-16 20:48:58', '2019-05-16 15:48:58', 1, NULL, '7a5c4c712204c8f71bfd871a26afbb88171147064db9e01d4e4b7fe3bd90bd8c8b2df13408f0adf69bf59d9161a78eec4c8c587c809b6314615314339ba64862');
INSERT INTO `dbpcn_users` VALUES (10212, 'nancy.roa', '$2y$10$/uewLnQtiwdSeh3hSrDYl.luyhcJ4koPzSiN6OBwF4qP1pgubcmzW', 'efUYd93yltexqnYu1RA0h7n27f0Adz8F5gqOVLuatTo1OZYxDN0dl7usVB4z', '2019-06-05 03:26:02', '2019-06-04 22:26:02', 1, 'GWWoCq7XICGhmW94CRlHzD4KziPBZwaqUsFSTstdrhD8W', '');
INSERT INTO `dbpcn_users` VALUES (10213, 'billions', '$2y$10$l57STLAAFmSv2HrTKqPEeOxH94B5UFGKM4PJm.r0xyUZK6xLt7QkK', 'Cg3pUzc7dCJFKtihGFvQCxgpFGwECt5DgqxRnQ4jmVFYF5TNX7eNgNycgGUB', '2019-05-29 22:01:36', '2019-05-29 16:54:51', 1, 'HbjcCWK0ex1SlJW7Ph4KONSFp1GxMFXiqY9UsSEHdufWc', '');
INSERT INTO `dbpcn_users` VALUES (10214, 'jesuscardona', '$2y$10$Nm.OjS68M3m7fXs2iJqT4uILYfhVoQ7LIGxXsuuMw6J9qfQ2Y9aKq', 'M75FxWc2UzyT34GppucpkWyjVs8UNhwPdOP1RfapjuoyFfFSOPdicTOvei1u', '2019-06-03 17:56:43', '2019-06-03 12:52:52', 1, 'yDIJmq9wNtZPqipYwCOO7FVFe3rcRzIyuk6HuBCkyNAoy', NULL);
INSERT INTO `dbpcn_users` VALUES (10215, 'sergioparra', '$2y$10$hB/9nAugWKKoPmot8tmzceA7rvdelGhpR90dHm0JZdCvhOsmBltyi', 'IhxJYR98mt2GFiZPVinUKGYgs771xpCJZvmxJRG5yqK4Jd9b8sAh6ErXKalS', '2019-06-08 18:09:01', '2019-06-08 13:09:01', 1, 'LEa51vXTjg2yS3vqWtPoJFTdf0PySBp86OBtoTbZU3Xdt', '');
INSERT INTO `dbpcn_users` VALUES (10216, 'byronochoa', '$2y$10$TJhBcykNi.g68Qeywn/PLOL7pc7juT9Nqa1j.k8ubJgCoWZfpD1w2', 'GJmRNoGDbci8LWuyNysad4tDv6DGX6l6NF7fq8d43vKJOZWfja7pDFxPlSmS', '2019-06-08 19:50:31', '2019-06-08 14:50:31', 1, 'gQ1UTmIf9SyY7y2hmudP7wxBKFPkUGHyo9pU5ZU6TJCYM', NULL);
INSERT INTO `dbpcn_users` VALUES (10217, 'juanjose', '$2y$10$OAJVS4XnW7oBqImLOk6sB.Txyk.NRAKgd.kCe6VhZ9HHh07Hp3wh6', 't7hGxkuQjw0Bjep45A6JlmbKgnObBuVmpBucJJTq1IW2hMPQHG4xvYpdw1GA', '2019-05-29 16:06:40', '2019-05-29 11:06:40', 1, 'CY1CEZdOe7sEbTBMbcP4Kq6QyDsmpgNVkOhOH1per9wyK', '');
INSERT INTO `dbpcn_users` VALUES (10218, 'lote1mz38', '$2y$10$GxDEYkVSlgOpI3.3LIcm0usrqbG0EFxGPPsKRc4FMCl8/F1j1xG3i', 'xgz6bx36a1rsVdrOfmxJzvLrFTZ4Z7SC22XMLgl2oZSVS0odHjUfi3ujOWgM', '2019-05-26 18:37:29', '2019-05-26 13:32:21', 1, 'VSXklzhU0rvn2PSmKlbOoZPYSzlTcMPKP8Z09Fues3Iqt', NULL);
INSERT INTO `dbpcn_users` VALUES (10219, 'dreamerazul', '$2y$10$15OhgtczsPbHQNq9bgwd9.YbAPnCgpSYqgAfpCYWWRSIdfRO3iX32', '7vd8orReXj', '2019-06-06 21:17:39', '2019-06-06 16:17:39', 1, 'cV97sKewvkP0LVwL8oIpHQt5GsQ8d3qa2qd0TbJMS48Lo', NULL);
INSERT INTO `dbpcn_users` VALUES (10220, 'rmartinez2459', '$2y$10$ZK603pIhKTqf5a/JZVwYfO6K9JypTRgkmoPrOiWaNf4gs2TELMO1O', 'nLRuOCLOxbTfrFIwVrQhIpNBTLTwVU9GiThztG1V2fcxnVo4aMiOhP5OVHiv', '2019-06-06 22:06:50', '2019-06-06 15:36:18', 1, 'LG3I7Wu7Ib7WGvbMkUE9Fte2c65pQCZyHTGaPX7gzOKxr', '');
INSERT INTO `dbpcn_users` VALUES (10221, 'refricol', '$2y$10$ZdkkVGy1Ar.2JPgoG8.tLeRnbLl0xWtiIgB.oMeKh9OzRBk2ERQLK', 'VfEWoDv3dW91F94SEaFZBPlavImItvVooGTobEeQlSnI51JU0vB2pRgZQ6U1', '2019-05-29 19:03:22', '2019-05-29 13:57:48', 1, 'FZ6VMmoKpYNXSVcna95UtwpZFLUUMvdRJjObIzyvj2u6W', NULL);
INSERT INTO `dbpcn_users` VALUES (10222, 'cayita', '$2y$10$DzbkgWnNyJBNz2KaA9O4T.VUk5a2wgi4yEaNNDh.xQ08SO29Ky8M.', 'H2KF4rzeXEpKY53zq2gxgKA5iiZrr6QBKE64wLQLYeSGNRw1HzPxlRKnv5UQ', '2019-06-06 23:45:53', '2019-06-06 18:19:01', 1, 'cusnDQzylYb0gVkz182TyjfCrOhHYp0GRG5lYUv97TLWF', NULL);
INSERT INTO `dbpcn_users` VALUES (10223, 'rimexy', '$2y$10$ONqhUn9RwyxZaW96byfyCeDosLUsbfjiKssxct1dEMcJswx8QE3xa', '86r6wRbUcwJTHkOCenITD9LrmTSAGGzxifsVwLIR7uMW9DGGOb54PnowqqJY', '2019-06-08 15:51:48', '2019-06-08 10:51:48', 1, 'vkH96HOx8ljLtFKcCHPjj2WoLwp9fY1AcZF9hcmxq33Uk', '');
INSERT INTO `dbpcn_users` VALUES (10224, 'm21-01', '$2y$10$xyEySNc0oRqyn/zTMjFJiuMjbknLiNloUCyV.Ktb5GSFBy1eqHaWi', 'pqPrpgm82AkiUe8PVk1Baa5SWL1HzOmgRixTX0rGF0aHthYI14NJtB3U1Wn3', '2019-05-30 20:43:48', '2019-05-30 15:43:48', 1, 'ZlCZIwINMp3pFpoHeCSwHoLVDPx7qQzM1LrEmRE2os2S6', NULL);
INSERT INTO `dbpcn_users` VALUES (10225, 'yolanda2019', '$2y$10$00FMy/lS.R0nIh4F.81PhunJU0w02v1arsv4AaJiMdD0zbZOSYHW.', 'u3WyWpUb4wjfjNyL9ZS07D920k3YFDyWWDhFt1f3f8wyNEldhIHuhsDZKhzS', '2019-06-06 00:53:15', '2019-06-05 19:52:41', 1, 'm1M9dbOMC2WKNtR1RWHNugECsEW16U5sqNpMhUGWZOXNr', '60f2ae2271390e183c6e8a9845895fd44da66b37cfcb649a8f710f5fb724b05fcb819a83c708be0511f4b94c4ef5ec21340914574aa2c109fc2ccd21098431f3');
INSERT INTO `dbpcn_users` VALUES (10226, 'joca2689', '$2y$10$KoB8ze3LQCosP7Y.RCjU4O6Nj1WzY0xKGpAKlrmt080.CxzsGbYxK', 'm9bIV6njhX46TFH7544pUeQZaSZE7I9DKBQOv2hgwKQssvacCaKl6VFTYLCo', '2019-06-10 14:03:36', '2019-06-10 08:58:14', 1, 'Q4HXpBlZhMH1ZkUhvXRg36g3HjCsP4PAPCEfd1VmGYBVs', NULL);
INSERT INTO `dbpcn_users` VALUES (10227, 'gabi1976', '$2y$10$eSaTTy547sFmY7atIoLCtOCv1CdTIne7iYlCyBUVmRSuichEE0DQG', '2fxbSkSuPuWhX6t7LXExnfgUReGqervNVBisisDoNJqyWo2KrSSiHfP4fvwc', '2019-05-31 12:43:29', '2019-05-31 07:43:29', 1, 'mebkIqdcsECit0x2i0UdlEco9jUp0v44inSBg03Rj6ul2', '');
INSERT INTO `dbpcn_users` VALUES (10228, 'peter9301', '$2y$10$rTJUFSRZCMXvuz.yp0l.MetkIYXjox4wObdNT8.qHx91jfvP7VbMC', 'HtrZIOEMAaskWFfMtvijPJZ59weB9WwQIaP1uHztkR7jpNvbcxyYcf19oFfM', '2019-05-31 22:50:26', '2019-05-31 17:50:26', 1, 't3Bh5CSjLkUqjBJyxUqE972JKnfefR1e9ZGLEQDSvvoRx', NULL);
INSERT INTO `dbpcn_users` VALUES (10229, 'sharom2204', '$2y$10$jTBFNE/CeepDBPRLLZQ4dOlPJI.rkBuj0sI5oQh7zE32CNcXQCMTe', 'xxHUxI0UuA2UOyzzTkI1wZPodUTKg0Sm3ZtsXS2hK9S9YfwhDNM8ojXXUm27', '2019-06-08 23:30:05', '2019-06-08 18:30:05', 1, 'wFKEW4o69dHYUJpdXO9ABHsJJxeUvxpKZNI9lwSyhIqKy', '');
INSERT INTO `dbpcn_users` VALUES (10230, 'fernandolondonoruiz1969', '$2y$10$QOATnbzgwHLrx4OycWZKm.Zva46N5.GRwIyM5FU5M8XzAmEEjtRRm', 'T252RRAIhHQlgbfmBqB9Jsq1Aul5DkF0V7nG8KAHMwXf9rkeEk8Ku2nEVviM', '2019-06-08 21:50:02', '2019-06-08 16:50:02', 1, 'Xd1ZB7AyA945Z2t1lkyDn4LQ9zW0RHeyAYlgy04z5U916', NULL);
INSERT INTO `dbpcn_users` VALUES (10231, 'santiago2026', '$2y$10$APjCj2y4EOWDPfJNjzZkLeNGW3ANscdpTa3uDKn62wsPja8uIdM6a', 'xKbixhZrmnq7z0iDRQmx2Yw1JaHVeAJVkfWhOpAhEV4JgIOcLP8JQGIzNuES', '2019-05-30 20:56:59', '2019-05-30 15:46:42', 1, 'b3xdfTOi2Vd1KG5zwpyIHWtgEJtESw8hUTapiLLurZEti', NULL);
INSERT INTO `dbpcn_users` VALUES (10232, 'fannyguz', '$2y$10$sWTQhs7kKu8Rjf/aFpOmJe0s3dkNbgkO9no7PUi1LN9zxstM.jY/.', 'JngzqbM1oJ1qcNCMEfRckmQGCbjNj6uWEhxDA7yLrJM6qwvsMNvZGxGN4TNe', '2019-05-31 00:16:34', '2019-05-30 19:16:34', 1, '7YsUKiV0lXCJ4mSoxNPNNIy5jJwh5potPUHv5cnXeBk9f', NULL);
INSERT INTO `dbpcn_users` VALUES (10233, 'jamessofia10', '$2y$10$AHf08E09x38Q/auesfxwJ.NeR.DS9CgwsmoAmDyrndop7fDkGcwRi', 'BqNrVNLxEj', '2019-05-30 19:06:24', '2019-05-30 19:06:24', 1, NULL, NULL);
INSERT INTO `dbpcn_users` VALUES (10234, 'casasfredy', '$2y$10$H6FPrkSpf42lanWfj1DzqeQXMHiDRUI3aaAW3gF3v6Otz5axhVkYK', 'Htx5nVzkm56F4c2upvz6JAEOmEjhGIqKK1dXGhi7vM980lpzhWlyiv70pwen', '2019-06-05 22:06:18', '2019-06-05 17:01:50', 1, 'bQTLpsR4eoRAcsPjQh2FNASmHi3DJnIPdK69GdwwOzHaM', NULL);
INSERT INTO `dbpcn_users` VALUES (10235, 'germanchacon', '$2y$10$tjeuS8PpMaqrIZn1RzrOOOZfkYDwI9S0chhlbn.8dk/cQ2hHP1hZG', 'FGF8Hn81mfIwLM7ZmT7q29NcFpbYfGgvYFxkJ3zM45D1zVZKfPTFLvMxYl8E', '2019-06-06 16:09:48', '2019-06-06 11:09:23', 1, 'CZnklCyuirkq4gubdv23vtQ4j4hy99llGompBaZVg1dgv', NULL);
INSERT INTO `dbpcn_users` VALUES (10236, 'brayohan1985', '$2y$10$ehwCRG5MwhjMLkDdV3Gfwuy5ZM7YEvJ4ssqvf6BoKVjH9ir0PTWhG', 'oXF47f4VvSQgsuE1ZQgkjiL2Me4mupiJcKzipLdxNfdjCRl473nd9eBtDQs1', '2019-06-09 01:12:17', '2019-06-08 20:12:17', 1, 'dQh92VHbkP3iFJOSBqHRugBoesWs9h0m8KYj4tMRPNdfW', '');
INSERT INTO `dbpcn_users` VALUES (10237, 'mastermind', '$2y$10$c9ZgdtNm3gsw3VI4rE0l.eUjnBIfYnh1mFBLB.5X3Z1HwX6VyQCfW', 'iiA96mvTBX', '2019-06-04 14:47:41', '2019-06-04 09:47:41', 1, 'pPvODZkgksnx27XA4r11ZtupBx57Iu1PRhVWQQgf8hBlx', NULL);
INSERT INTO `dbpcn_users` VALUES (10238, 'marbit2017', '$2y$10$Ui078NZX/lke/ozBjQh0nu5suZM3QENqKBvV0kYRxGZkKY0mLCz26', 'Tje4YQWvgx', '2019-06-04 14:10:16', '2019-06-04 14:10:16', 1, NULL, NULL);
INSERT INTO `dbpcn_users` VALUES (10239, 'dpanche2019', '$2y$10$TQ4w4LwLqCPdr5edt5e.VeGe6HnMZJOYA21vVFGoBrEQb9TeNUaCa', '1EsImd4hAzIzmf0G3s5abSvE3nvPeHkrbMHjPznioSIpFwz7YN6nJsrJH5L3', '2019-06-10 15:07:12', '2019-06-10 10:05:50', 1, '98egL60APL6msdnYNhsHptwSmAXqXCjAK3bf1olCbqXSb', '');
INSERT INTO `dbpcn_users` VALUES (10240, 'georgemaster', '$2y$10$/F60xqu4eTF/8Sb55tJ7nO8TYume6Pkac8IlB5ibMaCaPM1mCmydK', '8bWPcgP4dIny2oG3fLlcZl5MxhS7H1K0JelhjanQHetCDyv2QeAQzDpAeTu0', '2019-06-08 19:49:41', '2019-06-08 14:49:41', 1, 'IJXlkwPWcGhiGTCH5w0GcpciCVSxbtk56VyQp7oucdmnN', NULL);
INSERT INTO `dbpcn_users` VALUES (10241, 'margaritamora', '$2y$10$BTYaj/02cCDOR4.yuDBNw.Zu2G7N6o4oT9CUZGnz3bLZOx.rCGdF.', '2HAa89Eo3f', '2019-06-08 19:03:41', '2019-06-08 14:03:41', 1, '5P6m9eCmSfS6rjfInqFExILAhDrTXLwDxxeGpUf7L70iV', '');
INSERT INTO `dbpcn_users` VALUES (10242, 'stellar1', '$2y$10$PwKkBUJQslCWoCn1Hv/8culz53Jvsxn4yBKdM6hSQqicn2aRWHkrC', 'nFjgbJ9FhhgWtndlSHWS7BPo4O0Diex6b3xVlymDnvQh7wjhKDpCg6i1cauM', '2019-06-09 18:03:38', '2019-06-09 13:01:56', 1, 'pCerXDZvq2Ig3MWv28F3OXVPWnoox1WBayCKN9wOInVwP', '');
INSERT INTO `dbpcn_users` VALUES (10243, 'joelariza', '$2y$10$mtMCGAHE2p8uieRT9W3qquaeb5Z2wHBKy5Pq2uxck2F/QQDH.40UO', 'qSl8AqvK54Ee73ciiGXq8OG7tT3xQcwJEWkoKQxGDM6PlP9wCiLQITUA2JHQ', '2019-06-10 16:51:21', '2019-06-10 11:42:38', 1, '6dj0C1FFGYOTuTeiuCKu91hEnfszXcLjwnqMVg4xygyz4', NULL);
INSERT INTO `dbpcn_users` VALUES (10244, 'eriyharold', '$2y$10$DmR62.spl0PLOAygzGVVPu2r9vEDa4JM8qSRu4akNpQM5mQTypGqK', 'efyHmTC5h6', '2019-06-10 16:35:25', '2019-06-10 11:35:25', 1, 'URnMoWRPFC6yOayMZi2ZaxMi30XtJ94yoowXs9UOxKC5l', '');
INSERT INTO `dbpcn_users` VALUES (10245, 'inmobiliariayconstructorazosas', '$2y$10$AN6lTkfi9dT/eowMX9ACGOUEgqbACtk0DyJKe7yqCdxfqgMc9r0CO', 'IX8KjhBBQS', '2019-06-10 16:14:41', '2019-06-10 16:14:41', 1, NULL, NULL);
INSERT INTO `dbpcn_users` VALUES (10246, 'dkb.musical26', '$2y$10$ozFF5Prf4OcqrsuxMJNQg./EmM2vl.Ach5cogo7keX37Pct6vvn0m', 'o55oxrBU08', '2019-06-10 16:15:24', '2019-06-10 16:15:24', 1, NULL, NULL);
INSERT INTO `dbpcn_users` VALUES (10247, 'jhonjaironino', '$2y$10$9689PL2kpuY33p/2fG9omOxTvuEcFjl.irr.mw2w5rffy1N3JHnU2', 'lPyMrxaDQl', '2019-06-10 16:18:43', '2019-06-10 16:18:43', 1, NULL, NULL);
INSERT INTO `dbpcn_users` VALUES (10248, 'edudav', '$2y$10$Sntw/tLedc3lYknyNb6AzOOfZNCvzU2C8AeS.zb4lKKgs/PLJo9Au', '9hnwpGRHzP', '2019-06-10 16:20:18', '2019-06-10 16:20:18', 1, NULL, NULL);
INSERT INTO `dbpcn_users` VALUES (10249, 'peralta7', '$2y$10$bIxD5zWJdsEkkipJI2GxueNX0m9dcPxqHAU5sr25tWG0cXq5JCuUq', 'u5wtv5HO4d', '2019-06-10 16:46:52', '2019-06-10 16:46:52', 1, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for dbpcn_withdrawal
-- ----------------------------
DROP TABLE IF EXISTS `dbpcn_withdrawal`;
CREATE TABLE `dbpcn_withdrawal` (
  `id` bigint(30) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(30) unsigned NOT NULL,
  `method_of_payment_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `id_of_transaction` text DEFAULT NULL,
  `commission` decimal(30,2) NOT NULL,
  `amount` decimal(30,2) NOT NULL,
  `total_amount` decimal(30,2) NOT NULL,
  `ip` text NOT NULL,
  `hash` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('Pending','Processing','Approved','Rejected') DEFAULT 'Pending',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `date_withdrawal` (`user_id`,`transaction_date`) USING BTREE,
  KEY `user_id` (`user_id`),
  KEY `status_with_date` (`transaction_date`,`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dbpcn_withdrawal
-- ----------------------------
BEGIN;
INSERT INTO `dbpcn_withdrawal` VALUES (2, 10149, 1, '2019-05-31', '287', 0.00, 920040.00, 920040.00, '190.145.44.98', 'd89d8e9e361ea6ab6bae44bbf0d935a1d823dd5491a6de7571a11eaf4afa4303', '2019-05-31 08:23:51', '2019-06-04 13:10:06', 'Processing');
INSERT INTO `dbpcn_withdrawal` VALUES (3, 10164, 1, '2019-05-31', '292', 0.00, 5980260.00, 5980260.00, '190.28.92.135', '827d13c024aecb4d8182846fd5f0c403d823dd5491a6de7571a11eaf4afa4303', '2019-05-31 18:44:42', '2019-06-07 15:50:17', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (4, 10199, 1, '2019-06-01', '293', 0.00, 6440280.00, 6440280.00, '167.0.24.86', '049ff39ed379d2991c6df37d9b1d9330d823dd5491a6de7571a11eaf4afa4303', '2019-06-01 08:39:49', '2019-06-07 16:37:36', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (5, 10171, 1, '2019-06-01', '295', 0.00, 5060220.00, 5060220.00, '190.253.165.142', '881b67fe058f4e2ec4e4041bc2407f72d823dd5491a6de7571a11eaf4afa4303', '2019-06-01 09:57:29', '2019-06-07 16:40:56', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (6, 10176, 1, '2019-06-01', '296', 0.00, 2760120.00, 2760120.00, '190.165.38.177', '1d6c2868caabf43befe3490dbd610516d823dd5491a6de7571a11eaf4afa4303', '2019-06-01 13:07:30', '2019-06-07 16:42:00', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (7, 10169, 1, '2019-06-01', '298', 0.00, 4140180.00, 4140180.00, '181.51.102.58', 'bb0dce758b52e253524c2c71736e04dcd823dd5491a6de7571a11eaf4afa4303', '2019-06-01 14:57:18', '2019-06-07 16:42:32', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (8, 10172, 1, '2019-06-01', '299', 0.00, 7590330.00, 7590330.00, '181.133.102.33', 'd19d7cd51d2a3fc08965794b9b7566cfd823dd5491a6de7571a11eaf4afa4303', '2019-06-01 15:59:47', '2019-06-07 16:43:15', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (9, 10201, 1, '2019-06-01', '300', 0.00, 920040.00, 920040.00, '181.58.199.234', 'c5433e915c5f181ec0076dae35c7cef5d823dd5491a6de7571a11eaf4afa4303', '2019-06-01 18:21:57', '2019-06-07 16:43:48', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (10, 10181, 1, '2019-06-03', '301', 0.00, 2300100.00, 2300100.00, '179.18.11.150', '769788ade06411e063edbd51239787f9d823dd5491a6de7571a11eaf4afa4303', '2019-06-03 00:06:48', '2019-06-07 16:44:04', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (11, 10220, 1, '2019-06-04', '305', 0.00, 920040.00, 920040.00, '190.156.186.94', 'c6eb1d0995e569c56645cb16f63a9f90d823dd5491a6de7571a11eaf4afa4303', '2019-06-04 12:00:45', '2019-06-07 16:44:20', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (12, 10180, 1, '2019-06-04', '306', 0.00, 4140180.00, 4140180.00, '190.27.154.189', '714c04dedba906c4a255e1206c974b20d823dd5491a6de7571a11eaf4afa4303', '2019-06-04 12:44:46', '2019-06-07 16:44:36', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (13, 10151, 1, '2019-06-04', '307', 0.00, 2760120.00, 2760120.00, '190.145.44.98', '16b44a35ccef4d59bcf4a47e6b796dacd823dd5491a6de7571a11eaf4afa4303', '2019-06-04 15:29:38', '2019-06-07 16:45:02', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (14, 10178, 1, '2019-06-04', '308', 0.00, 920040.00, 920040.00, '181.58.245.213', '5f094374bccbaf1be1cf9679d528363bd823dd5491a6de7571a11eaf4afa4303', '2019-06-04 17:30:47', '2019-06-07 16:45:18', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (15, 10185, 1, '2019-06-04', '309', 0.00, 2760120.00, 2760120.00, '186.155.14.30', '1ed8749f23aec3ab68c65460459bbeb1d823dd5491a6de7571a11eaf4afa4303', '2019-06-04 21:18:01', '2019-06-07 16:45:38', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (16, 10177, 1, '2019-06-05', '313', 0.00, 4140180.00, 4140180.00, '179.32.248.4', '2139022da281f55f7c0a4f1916aff0b5d823dd5491a6de7571a11eaf4afa4303', '2019-06-05 11:03:45', '2019-06-07 16:50:26', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (17, 10225, 1, '2019-06-05', '314', 0.00, 1840080.00, 1840080.00, '181.53.18.121', 'c5320bfd4030f44047b022d4714337cdd823dd5491a6de7571a11eaf4afa4303', '2019-06-05 11:30:19', '2019-06-07 16:51:15', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (18, 10198, 1, '2019-06-05', '316', 0.00, 920040.00, 920040.00, '186.86.33.98', '89fbc70085636b3a39e662efe80a7dc9d823dd5491a6de7571a11eaf4afa4303', '2019-06-05 13:08:14', '2019-06-07 16:51:44', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (19, 10148, 1, '2019-06-05', '318', 0.00, 13628092.50, 13628092.50, '190.0.30.122', '10189f074ecdb02e0770ebe83288af58d823dd5491a6de7571a11eaf4afa4303', '2019-06-05 15:13:16', '2019-06-10 13:46:50', 'Rejected');
INSERT INTO `dbpcn_withdrawal` VALUES (20, 10161, 1, '2019-06-05', '319', 0.00, 920040.00, 920040.00, '190.0.30.122', 'df86a6e432abafd11f1bfd355494b0e4d823dd5491a6de7571a11eaf4afa4303', '2019-06-05 15:45:30', '2019-06-07 16:52:28', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (21, 10191, 1, '2019-06-05', '320', 0.00, 920040.00, 920040.00, '186.84.88.195', 'a6716c74c67fd05d663c17f8af533236d823dd5491a6de7571a11eaf4afa4303', '2019-06-05 16:08:47', '2019-06-07 16:53:16', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (22, 10208, 1, '2019-06-06', '321', 0.00, 3680160.00, 3680160.00, '181.61.208.66', '07f07bb971302916fdbedc2cb568167dd823dd5491a6de7571a11eaf4afa4303', '2019-06-06 06:35:37', '2019-06-07 17:00:38', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (23, 10189, 1, '2019-06-06', '322', 0.00, 1840080.00, 1840080.00, '190.255.81.148', '84f5661b35a729f55047f9e793d8798bd823dd5491a6de7571a11eaf4afa4303', '2019-06-06 11:07:39', '2019-06-07 17:01:11', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (24, 10226, 1, '2019-06-06', '323', 0.00, 1840080.00, 1840080.00, '173.244.217.52', 'b92d0ddc9614210b50a521ac8fb7efead823dd5491a6de7571a11eaf4afa4303', '2019-06-06 11:29:47', '2019-06-07 17:01:29', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (25, 10183, 1, '2019-06-06', '324', 0.00, 920040.00, 920040.00, '181.54.46.30', 'a9ac4c2c3c0b49e4a49633022360077fd823dd5491a6de7571a11eaf4afa4303', '2019-06-06 16:23:19', '2019-06-07 15:03:57', 'Processing');
INSERT INTO `dbpcn_withdrawal` VALUES (26, 10162, 1, '2019-06-06', '325', 0.00, 4600200.00, 4600200.00, '191.95.17.1', 'a4ec060c82545f0534d4a63ff9e95b7ed823dd5491a6de7571a11eaf4afa4303', '2019-06-06 18:14:25', '2019-06-07 21:35:01', 'Approved');
INSERT INTO `dbpcn_withdrawal` VALUES (27, 10222, 1, '2019-06-06', '326', 0.00, 920040.00, 920040.00, '181.61.208.66', '090081b6f6a3b3f2161fff7f24ff2fb8d823dd5491a6de7571a11eaf4afa4303', '2019-06-06 18:38:28', '2019-06-07 15:02:53', 'Processing');
INSERT INTO `dbpcn_withdrawal` VALUES (28, 10230, 1, '2019-06-07', '327', 0.00, 920040.00, 920040.00, '181.131.96.60', '60a16db11f669087d3f34f3cf12134d3d823dd5491a6de7571a11eaf4afa4303', '2019-06-07 08:22:52', '2019-06-07 15:03:34', 'Processing');
INSERT INTO `dbpcn_withdrawal` VALUES (29, 10175, 1, '2019-06-07', '329', 0.00, 2760120.00, 2760120.00, '191.95.16.148', '14effd4c68e5c0ec599dae67c8f8cdf2d823dd5491a6de7571a11eaf4afa4303', '2019-06-07 15:49:14', '2019-06-07 15:49:14', 'Pending');
INSERT INTO `dbpcn_withdrawal` VALUES (30, 10167, 1, '2019-06-07', '330', 0.00, 2760120.00, 2760120.00, '191.95.16.156', '05ded3669453f14143a799f854b82fafd823dd5491a6de7571a11eaf4afa4303', '2019-06-07 17:03:11', '2019-06-07 17:03:12', 'Pending');
INSERT INTO `dbpcn_withdrawal` VALUES (31, 10168, 1, '2019-06-07', '331', 0.00, 4600200.00, 4600200.00, '190.145.238.121', '21f5ea3af0eaef56efac59216475a3d3d823dd5491a6de7571a11eaf4afa4303', '2019-06-07 17:34:49', '2019-06-07 17:34:49', 'Pending');
INSERT INTO `dbpcn_withdrawal` VALUES (32, 10215, 1, '2019-06-08', '332', 0.00, 920040.00, 920040.00, '190.25.117.169', 'a5346c9266ff7fe69d0a9c7d4be67230d823dd5491a6de7571a11eaf4afa4303', '2019-06-08 13:10:22', '2019-06-08 13:10:22', 'Pending');
COMMIT;

-- ----------------------------
-- Table structure for general_concepts
-- ----------------------------
DROP TABLE IF EXISTS `general_concepts`;
CREATE TABLE `general_concepts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `name_table` text DEFAULT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of general_concepts
-- ----------------------------
BEGIN;
INSERT INTO `general_concepts` VALUES (1, 'Register of member (pago cuota inicial)', NULL, 1);
INSERT INTO `general_concepts` VALUES (2, 'Venta Directa', NULL, 1);
INSERT INTO `general_concepts` VALUES (3, 'Venta de Equipo', NULL, 1);
INSERT INTO `general_concepts` VALUES (4, 'Solicitud de cobro rechazada', NULL, 1);
INSERT INTO `general_concepts` VALUES (7, 'Venta Residual', NULL, 1);
INSERT INTO `general_concepts` VALUES (8, 'Cobro a cuenta Bancaria', NULL, 1);
INSERT INTO `general_concepts` VALUES (9, 'Solicitud de retiro ', 'dbpcn_withdrawal', 1);
INSERT INTO `general_concepts` VALUES (10, 'Solicitud de retiro comision', 'dbpcn_withdrawal', 1);
INSERT INTO `general_concepts` VALUES (11, 'Pago de cuota mensual', 'dbpcn_invoices', 1);
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for months
-- ----------------------------
DROP TABLE IF EXISTS `months`;
CREATE TABLE `months` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month_en` varchar(255) DEFAULT NULL,
  `abbreviation_en` varchar(255) DEFAULT NULL,
  `month_es` varchar(255) DEFAULT NULL,
  `abbreviation_es` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of months
-- ----------------------------
BEGIN;
INSERT INTO `months` VALUES (1, 'January', 'Fan', 'Enero', 'Ene');
INSERT INTO `months` VALUES (2, 'February', 'Feb', 'Febrero', 'Feb');
INSERT INTO `months` VALUES (3, 'March', 'Mar', 'Marzo', 'Mar');
INSERT INTO `months` VALUES (4, 'April', 'Apr', 'Abril', 'Abr');
INSERT INTO `months` VALUES (5, 'May', 'May', 'Mayo', 'May');
INSERT INTO `months` VALUES (6, 'June', 'Jun', 'Junio', 'Jun');
INSERT INTO `months` VALUES (7, 'July', 'Jul', 'Julio', 'Jul');
INSERT INTO `months` VALUES (8, 'August', 'Aug', 'Agosto', 'Ago');
INSERT INTO `months` VALUES (9, 'September', 'Sep', 'Septiembre', 'Sep');
INSERT INTO `months` VALUES (10, 'October', 'Oct', 'Octubre', 'Oct');
INSERT INTO `months` VALUES (11, 'November', 'Nov', 'Noviembre', 'Nov');
INSERT INTO `months` VALUES (12, 'December', 'Dec', 'Diciembre', 'Dic');
COMMIT;

-- ----------------------------
-- Table structure for packages
-- ----------------------------
DROP TABLE IF EXISTS `packages`;
CREATE TABLE `packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text DEFAULT NULL,
  `allotment_price` double DEFAULT NULL,
  `project_id` int(50) DEFAULT NULL,
  `porcentaje_directo` double DEFAULT NULL,
  `status` enum('inactivo','activo') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `initial _fee` double(255,0) DEFAULT NULL,
  `monthly_fee` double(255,0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of packages
-- ----------------------------
BEGIN;
INSERT INTO `packages` VALUES (1, 'Paquete educativo', 50, NULL, 0.1, 'activo', '2018-12-04 11:25:46', '2018-12-04 11:25:55', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
INSERT INTO `password_resets` VALUES (45, 'bdps.torres@gmail.com', '$2y$10$aZYR2i1KhZ.nvqyXPf8cO.RaVx5zT4StfED5H92IDI0K0MW7FCMSe', '2019-01-13 05:06:04');
INSERT INTO `password_resets` VALUES (46, 'leonardomarceles20@gmail.com', '$2y$10$L0tmSkGryuq3BrI1EDzFVOK9Y9wAxWxylCpk6fUout/8.HbZNYBF.', '2019-01-13 19:00:41');
INSERT INTO `password_resets` VALUES (48, 'tatianav926@gmail.com', '$2y$10$.R5LWFCS6K4A1Tv2nyvI/OgI.RRBJDQxKCbtCXkInCsd0eWhSqedq', '2019-01-16 23:26:48');
INSERT INTO `password_resets` VALUES (49, 'generaciondelmillondedolares@gmail.com', '$2y$10$36m8RFt3JleDQl6SOMkUrOUUzkdxfeACGvWi0tNo72G1gfWbvnp2a', '2019-01-22 15:33:56');
INSERT INTO `password_resets` VALUES (52, 'boriszetta@gmail.com', '$2y$10$3RG1T4GUBIOAYgTbp2vct.hKd3hTwIoAJYRv5qcR1fVWoiVblvAvi', '2019-01-26 00:16:07');
COMMIT;

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `id` bigint(100) NOT NULL,
  `role_id` bigint(100) unsigned NOT NULL,
  `user_id` bigint(100) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of role_user
-- ----------------------------
BEGIN;
INSERT INTO `role_user` VALUES (1, 1, 1, '2019-05-01 15:26:53', '2019-05-01 15:26:58');
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(100) NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `description` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `area` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES (0, 'superadmin', 'Superadmin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles` VALUES (1, 'admin', 'Administrador sistemas', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles` VALUES (2, 'registro', 'Gestión de Registro (Verificación y aprobación de documentación)', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles` VALUES (3, 'cliente', 'Gestión de Clientes (Verificación y aprobación de pcv)', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles` VALUES (4, 'vendedor', 'Gestión de Vendedores (Lista de todos los usuarios)', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles` VALUES (5, 'recibo', 'Recibo de pagos', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles` VALUES (6, 'pago', 'Cuentas Por pagar (comisiones que no he pagado)', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles` VALUES (7, 'cobro', 'Cuentas por Cobrar', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles` VALUES (8, 'analista', 'Analista de Negocio', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles` VALUES (9, 'Activador', 'Usuario administrativo encargado de activar a los propietarios que les hayan aprobado el pago de la couta de separación', 3, '2019-05-09 12:12:19', '2019-05-09 12:12:22');
COMMIT;

-- ----------------------------
-- Table structure for type_execution_admin
-- ----------------------------
DROP TABLE IF EXISTS `type_execution_admin`;
CREATE TABLE `type_execution_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of type_execution_admin
-- ----------------------------
BEGIN;
INSERT INTO `type_execution_admin` VALUES (1, 'Aprobación de recibo de pago', '2019-05-09 15:17:11', '2019-05-09 15:17:14');
INSERT INTO `type_execution_admin` VALUES (2, 'Rechazo de recibo de consignación (Cuota de separación)', '2019-05-09 15:28:26', '2019-05-09 15:28:28');
INSERT INTO `type_execution_admin` VALUES (3, 'Activación del usuario', '2019-05-13 14:22:06', '2019-05-13 14:22:09');
INSERT INTO `type_execution_admin` VALUES (4, 'Rechazo Documentación', '2019-05-13 14:23:03', '2019-05-13 14:23:07');
INSERT INTO `type_execution_admin` VALUES (5, 'Aprobo Documentación', '2019-05-13 14:23:29', '2019-05-13 14:23:34');
INSERT INTO `type_execution_admin` VALUES (6, 'Rechazo la promesa de compra-venta', '2019-05-13 14:24:05', '2019-05-13 14:24:08');
INSERT INTO `type_execution_admin` VALUES (7, 'Aprobo la promesa de compra-venta', '2019-05-13 14:24:22', '2019-05-13 14:24:24');
INSERT INTO `type_execution_admin` VALUES (8, 'Devolvio la documentación a pendiente', '2019-05-13 14:26:14', '2019-05-13 14:26:16');
INSERT INTO `type_execution_admin` VALUES (9, 'Devolvio la promesa de compra-venta al estado pendiente', '2019-05-15 10:03:25', '2019-05-15 10:03:28');
INSERT INTO `type_execution_admin` VALUES (10, 'Actualizo datos de pre-usuario', '2019-05-16 12:32:33', '2019-05-16 12:32:35');
INSERT INTO `type_execution_admin` VALUES (11, 'Aprobo el RUT', '2019-05-17 11:11:29', '2019-05-17 11:11:31');
INSERT INTO `type_execution_admin` VALUES (12, 'Rechazo el RUT', '2019-05-17 11:16:10', '2019-05-17 11:16:12');
INSERT INTO `type_execution_admin` VALUES (13, 'Devolvio el RUT a pendiente', '2019-05-17 11:17:52', '2019-05-17 11:17:54');
INSERT INTO `type_execution_admin` VALUES (14, 'actualizo los datos del usuario', '2019-05-22 14:59:23', '2019-05-22 14:59:25');
INSERT INTO `type_execution_admin` VALUES (15, 'Rechazo la cuenta bancaria', '2019-05-22 16:43:38', '2019-05-22 16:43:42');
INSERT INTO `type_execution_admin` VALUES (16, 'Devolvio la cuenta bancaria a estado pendiente', '2019-05-22 16:44:13', '2019-05-22 16:44:15');
INSERT INTO `type_execution_admin` VALUES (17, 'Aprobo la cuenta bancaria', '2019-05-22 16:44:58', '2019-05-22 16:45:07');
INSERT INTO `type_execution_admin` VALUES (18, 'Proceso la cuenta de cobro del usuario', '2019-05-29 16:40:20', '2019-05-29 16:40:22');
INSERT INTO `type_execution_admin` VALUES (19, 'Aprobo la cuenta de cobro del usuario', '2019-05-30 16:23:50', '2019-05-30 16:23:52');
INSERT INTO `type_execution_admin` VALUES (20, 'Rechazo la consignacion del pago de cuota', '2019-06-06 17:36:07', '2019-06-06 17:36:10');
INSERT INTO `type_execution_admin` VALUES (21, 'Aprobo la consignacion del pago de cuota', '2019-06-06 17:37:12', '2019-06-06 17:37:15');
INSERT INTO `type_execution_admin` VALUES (22, 'rechazo la cuenta de cobro del usuario', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for type_of_execution
-- ----------------------------
DROP TABLE IF EXISTS `type_of_execution`;
CREATE TABLE `type_of_execution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `code_ident` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of type_of_execution
-- ----------------------------
BEGIN;
INSERT INTO `type_of_execution` VALUES (1, 'Pago de cuota  mensual', 'XFC2N8M4AH', '2019-04-11 15:48:07', '2019-04-11 15:48:09');
INSERT INTO `type_of_execution` VALUES (2, 'Activar usuario (pago cuota inicial)', 'VUQTM49QR5', '2019-04-11 15:48:44', '2019-04-11 15:48:46');
COMMIT;

-- ----------------------------
-- Table structure for userAdmin_access
-- ----------------------------
DROP TABLE IF EXISTS `userAdmin_access`;
CREATE TABLE `userAdmin_access` (
  `id` int(4) NOT NULL,
  `level_access` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of userAdmin_access
-- ----------------------------
BEGIN;
INSERT INTO `userAdmin_access` VALUES (0, 'Mighty Admin');
INSERT INTO `userAdmin_access` VALUES (1, 'Super Admin');
INSERT INTO `userAdmin_access` VALUES (2, 'Admin (Informativo)');
INSERT INTO `userAdmin_access` VALUES (3, 'Financiera');
INSERT INTO `userAdmin_access` VALUES (4, 'Usuario Documentación');
INSERT INTO `userAdmin_access` VALUES (5, 'Usuario Pagos y Comisiones');
COMMIT;

-- ----------------------------
-- Table structure for user_Admin_areas
-- ----------------------------
DROP TABLE IF EXISTS `user_Admin_areas`;
CREATE TABLE `user_Admin_areas` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `area` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_Admin_areas
-- ----------------------------
BEGIN;
INSERT INTO `user_Admin_areas` VALUES (1, 'Administrativa', 'Active', '2019-05-06 14:15:21', '2019-05-06 14:15:25');
INSERT INTO `user_Admin_areas` VALUES (2, 'Juridica', 'Active', '2019-05-06 14:16:11', '2019-05-06 14:16:14');
INSERT INTO `user_Admin_areas` VALUES (3, 'Finanzas', 'Active', '2019-05-06 14:16:34', '2019-05-06 14:16:38');
COMMIT;

-- ----------------------------
-- Table structure for users_admin
-- ----------------------------
DROP TABLE IF EXISTS `users_admin`;
CREATE TABLE `users_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel_acceso` int(4) NOT NULL,
  `api_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  KEY `apitoken` (`api_token`) USING BTREE,
  KEY `remember` (`remember_token`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of users_admin
-- ----------------------------
BEGIN;
INSERT INTO `users_admin` VALUES (1, 'superadmin', 'ssadsa', 'admin@gmail.com', '$2y$10$.ZwmjcpWJcWG9H2NetMgxerGdl3TLLSeIjz9GcU12MA91rs4d0kSe', 1, 'HAP16iXZE4AQv6AZOjGVxEUjCJ9rN03nzAccZokZZUARO', 'J3WWMEoGdWwEkrIFe6YWeWoB6G6o3GNIHyGGe96qyMOWK7k7b96ZRVPGkGkJ', '2019-06-10 14:58:35', '2019-06-10 14:58:35', 1);
INSERT INTO `users_admin` VALUES (5, 'superware', 'USER', 'admin@gmail.com', '$2y$12$vc/zJ9mgb9ofeASwwF5Zlems0tM8QEnijaHNzH8ykplodQhO8w1xa', 0, 'nARGok8tpuGbEEmgj73gqQ50688Zuvry2u1K5r0lNnqmN', 'A9ONqZII5iQDJrp8OyE8F13m37rTxGR9yjcAMAJIKIwEeT9a7Z4u5UMnahvc', '2019-06-05 15:30:17', '2019-06-05 15:30:17', 1);
INSERT INTO `users_admin` VALUES (10, 'grodriguez', 'Gloria Rodriguez', 'grodriguez', '$2y$10$tDTysdlzsAyS8enxtAugtOjvKG/O.LO69h9wvOHrQT//WX3HlUGia', 1, 'cB2Man8a0Hp9ppWgZMsxJ6ZPr4r308vuKh5FB0UeqoOC0', 'P7KTHiyGiYRqbj1CFqb7nwx4B38d3nCmuSXR2HaFTtqkUxooZxTzlw4v6cQT', '2019-05-14 17:12:07', '2019-05-14 16:43:39', 1);
INSERT INTO `users_admin` VALUES (12, 'dperez1', 'Dayarlis Perez REG', 'dperez1', '$2y$10$LpI3ku5aSFhb8VJlBrfmM.dWfcAat2h9CiQLRtyVRekq9zSBc4tXm', 2, 'ixnivAm0S3qrIkPEaSEJ7PDb4YdtQaCnQT7WzEhBlyGmn', 'myRqCqKKZybFKPT1mtpX1gs8JFq4oSs9Kgbwy9GyWkxwXg3rIyQX1irjASKm', '2019-06-10 15:56:06', '2019-06-10 15:56:06', 1);
INSERT INTO `users_admin` VALUES (17, 'gmontoya', 'Gina Montoya', 'gmontoya', '$2y$10$V6bIXWAOCgEbNyD4eHGnMeHlqB2hY9xDEdlYdPfnC5vZY69RM3X9S', 7, 'VoPTnaWYI4fEWuJtzlsYSepUjZnZuYBPEDhAhbAMAtxzv', 'bDrTwxqnh4LOTKKUqQGxfwPS4BA9jSEm77Qv5dbQFFkf8LpT4RY9WH3SmWD6', '2019-05-14 15:45:57', '2019-05-14 15:29:36', 1);
INSERT INTO `users_admin` VALUES (18, 'mjaramillo', 'Marbel Jaramillo', 'mjaramillo', '$2y$10$nld/ax2ztK.1zd9n3I.pt.Iru0l6izHxc5GRVm7HkucDW9f9OvT1W', 6, 'ZZszSncoQovwtJzEbLbKriZRWW7JpsBAiJPBz8KKv15tH', 'Ua8Oai3JE6iE4OnbIN4gIhUJ352f5nztq3Vx8IBohBmDHgXy74X8OO2LdG4r', '2019-06-10 15:52:37', '2019-06-10 15:13:58', 1);
INSERT INTO `users_admin` VALUES (19, 'pbpalacio', 'Paulina Palacio', 'pbpalacio@palacio.com.co', '$2y$10$7Em4/ynRJ46uu7ddLz6QF.PEiw/GdaNMCpmm8C6iX2DZJ1esJQcs2', 9, '5bDr8tlpqeuLhH827ZGZgejLt9psAGWQWCewWqABfMepj', 'zOF7cOTEWYJ8dgKX2mpV5RX2jbyH7OJt23QBAWookvKPSnEqCarjYKzcwAKr', '2019-06-10 16:11:25', '2019-06-10 16:11:25', 1);
INSERT INTO `users_admin` VALUES (20, 'gmontoya2', 'gmontoya2', 'gmontoya2', '$2y$10$2Dbm8F5whq43OlQzPqk2k.Qn6sLDu7ZiySsR656QbZGOY8kW5uey6', 5, 'q9JTaT3cu3Cig7EdsLuog1u0s9GqXEBXJzWlY90QJ9zK7', '6aSpO7KktBtQvHnLW67FNDVEmjDLHhL93aG8WRznkynM8W8oknJ5CR4qzRt2', '2019-06-10 16:10:57', '2019-06-10 16:10:57', 1);
INSERT INTO `users_admin` VALUES (21, 'dperez2', 'Dayarlis Perez PVC', 'dperez2', '$2y$10$3uiWq1Ce1Qi/uGU4koINwO.xtqkiPjHULFm7NWTWiIVZYur11tRDG', 3, 'dcdwF3ZRV7oeQ3ZCaMGMe9RzvKuFKRHiSuiBdvGcU1rLg', 'kJpnDVxsdJ2S4Vd1Hg6XxZ5f9wvSaOGjRUMcvB87Bd3Gfyl9rS1Mgtv026hl', '2019-06-06 20:35:17', '2019-06-06 20:35:17', 1);
INSERT INTO `users_admin` VALUES (22, 'dperez3', 'Dayarlis Perez VI', 'dperez3', '$2y$10$28nmtXNgA0g48ydAiC4qrOh7XrZckiw0ocBSMnuttqgIpR3Id3Ile', 4, 'efqoznBpKOJdiAsjkqvEV0yppsrpCHh2kntF5vjDNkGaB', 'eN0yXlPJk6FrA8o458wBnkICI9YgyDNJ5v9VNe1AWVO7f3grp6CfRadSPDRP', '2019-06-06 20:34:05', '2019-06-06 19:29:50', 1);
INSERT INTO `users_admin` VALUES (23, 'jpalacio2', 'Jose I Palacio ANALISTA', 'jpalacio2', '$2y$10$5gYZ19dx0AzF/x0mpsL8j.jaKU0UZRcGONKNb.S0gTtRHnqMk14k2', 8, 'WQqSBKY5SmowGg7cMZK3iIP1jikyL6lo2cSBGD1yy9Xf9', 'Fm8zL3IlYRXRAl7KKrOkIwQcFTRASdwAYwcrxGbz5oZUlShPwdj6AO5YEFkV', '2019-05-14 13:25:28', '2019-05-14 13:25:19', 1);
INSERT INTO `users_admin` VALUES (25, 'spteAct', 'Soporte de Activación', 'spteAct', '$2y$10$cW.J3qFRUvj1aYIjoWW.7e3rn9O3LJg6C0XKvSmOXpH.fUuvJF/c.', 9, 'cBJXFwlxVcNLnIXc84Pq5qeNr4d7wwLKvJKhXepBTVAQ1', '8yxyUDwLm6NPQ8WWxNUnE6S3WDEvakGPuaMhmPherI6lNUcgKQmRdtI6qvRM', '2019-06-05 17:06:05', '2019-06-05 13:48:12', 1);
INSERT INTO `users_admin` VALUES (26, 'lleal1', 'Laura Leal', 'lleal1', '$2y$10$8a5XNACovDpbE8w0Uu.uxu46x8J0k2sSg4I1oyIyYehnSRSVo.4ka', 1, 'PDHTeL5YblkozG2flXRFoxvCtMixM9xswFfT7aTySsAQO', 'KjZL5xPwBQp4OiIfd4BovfYJktbYFvWf04IT8Gjv70U0dQIolAR3MArSX4j7', '2019-06-10 16:50:46', '2019-06-10 16:50:46', 1);
INSERT INTO `users_admin` VALUES (27, 'sptePCV', 'Soporte de PCV', 'sptePCV', '$2y$10$z.gsjZAVOg2g4o/3WdOr4.ib5w.Aiu8zY3Kj6uq.bRlDnxMjdb3.m', 3, '093aL1Zeexk2LICPD4GlxZO5m9c59KHIsCWkoRc9SxvNa', 'axJKRuo7KJsZH3iVbV6QfoLzcrvVPq9wJJXYa904YKhtdYS4HghtEBQ4MSzf', '2019-05-22 21:46:46', '2019-05-22 21:46:18', 1);
INSERT INTO `users_admin` VALUES (28, 'pototo', '', '', '$2y$12$mbbV9TXOxcS2QyRSsAy3UOyTePRhV7gEzzVB0X4mRbIQ6YkGVhNWm', 0, 'ksYXW4kzAazLvEPKtHAdu21SFAHCj0tUpH37YOCgrok1Y', NULL, '2019-06-07 22:46:02', '2019-06-07 22:46:02', 1);
INSERT INTO `users_admin` VALUES (29, 'ypalacio', 'Yomaira Palacio', 'ypalacio@palacio.com.co', '$2y$10$F2l9ovKajPvcpQfLXmP82OS3kKqbuaHF4r3I/6ctYURvuA3RUCIBG', 6, 'Ed7pkSamJfPGfR1BCHBDI0mstpYfeQ8EKqvQYalbgNnry', '4pjHRSDnv6ipmYdjdEVql2JbKObN5We4NXCt5H2WMFi1Qx2ynxZ8haXtpblA', '2019-06-10 16:55:19', '2019-06-10 16:55:19', 1);
INSERT INTO `users_admin` VALUES (30, 'jpalacio', 'Jose I Palacio', 'jpalacio@palacio.com.co', '$2y$10$yh4n6uZ98PWYDTwkSIRs8.FzYLn7YBdXpq36Qt56xvO5gapw8U6MK', 1, 'ZTC3Bh6cVw4JddojXkgKUb3voZLkhYvZVIu6bw1njz1bk', NULL, '2019-06-07 14:53:25', '2019-06-07 14:53:25', 1);
INSERT INTO `users_admin` VALUES (31, 'pbpalacio2', 'Paulina Pago de Comisiones', 'nipa84@hotmail.com', '$2y$10$GltlkH4hln8ppOD6E/k5SuI1Dz4ltHepeTNL08NPqqJjNUC8qnq0S', 6, 'rdG1garxnAMZPavb0rXV35av5vnKlvEUha9ZAtukGp943', 'UPf0s5rjj6RkwdWb5pGiEfsOFmXkvH7W9Ppjpk7qnObX9ntqNITbDctT5u5D', '2019-06-07 21:35:17', '2019-06-07 19:58:38', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
