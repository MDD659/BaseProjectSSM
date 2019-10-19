/*
 Navicat Premium Data Transfer

 Source Server         : jiaxuan
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : db_base_project

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 23/04/2019 21:13:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roleId`(`roleId`) USING BTREE,
  INDEX `menuId`(`menuId`) USING BTREE,
  CONSTRAINT `authority_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `authority_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 196 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES (148, 2, 35);
INSERT INTO `authority` VALUES (149, 2, 36);
INSERT INTO `authority` VALUES (150, 2, 25);
INSERT INTO `authority` VALUES (151, 2, 1);
INSERT INTO `authority` VALUES (152, 2, 14);
INSERT INTO `authority` VALUES (153, 2, 15);
INSERT INTO `authority` VALUES (175, 1, 1);
INSERT INTO `authority` VALUES (176, 1, 5);
INSERT INTO `authority` VALUES (177, 1, 17);
INSERT INTO `authority` VALUES (178, 1, 18);
INSERT INTO `authority` VALUES (179, 1, 19);
INSERT INTO `authority` VALUES (180, 1, 20);
INSERT INTO `authority` VALUES (181, 1, 13);
INSERT INTO `authority` VALUES (182, 1, 21);
INSERT INTO `authority` VALUES (183, 1, 22);
INSERT INTO `authority` VALUES (184, 1, 23);
INSERT INTO `authority` VALUES (185, 1, 35);
INSERT INTO `authority` VALUES (186, 1, 36);
INSERT INTO `authority` VALUES (187, 1, 14);
INSERT INTO `authority` VALUES (188, 1, 15);
INSERT INTO `authority` VALUES (189, 1, 24);
INSERT INTO `authority` VALUES (190, 1, 25);
INSERT INTO `authority` VALUES (191, 1, 26);
INSERT INTO `authority` VALUES (192, 1, 31);
INSERT INTO `authority` VALUES (193, 1, 32);
INSERT INTO `authority` VALUES (194, 1, 33);
INSERT INTO `authority` VALUES (195, 1, 34);

-- ----------------------------
-- Table structure for c3p0testtable
-- ----------------------------
DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE `c3p0testtable`  (
  `a` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (13, '用户名为admin的用户登录时输入验证码错误!', '2018-12-16 18:17:30');
INSERT INTO `log` VALUES (14, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 18:22:56');
INSERT INTO `log` VALUES (15, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 18:37:15');
INSERT INTO `log` VALUES (16, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 18:40:21');
INSERT INTO `log` VALUES (17, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 19:11:49');
INSERT INTO `log` VALUES (18, '用户名为{admin}，的用户成功修改密码!', '2018-12-16 19:13:32');
INSERT INTO `log` VALUES (19, '用户名为{admin}，的用户成功修改密码!', '2018-12-16 19:14:01');
INSERT INTO `log` VALUES (20, '用户名为{猿来入此}，角色为{普通用户}的用户登录成功!', '2018-12-16 19:17:46');
INSERT INTO `log` VALUES (21, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-17 13:36:46');
INSERT INTO `log` VALUES (22, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-17 13:39:48');
INSERT INTO `log` VALUES (23, '用户名为jiaxuan的用户登录时输入验证码错误!', '2019-04-17 13:41:09');
INSERT INTO `log` VALUES (24, '用户名为{jiaxuan}，角色为{普通用户}的用户登录成功!', '2019-04-17 13:41:20');
INSERT INTO `log` VALUES (25, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-17 13:42:00');
INSERT INTO `log` VALUES (26, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-17 16:54:51');
INSERT INTO `log` VALUES (27, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-19 21:26:59');
INSERT INTO `log` VALUES (28, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-19 22:17:20');
INSERT INTO `log` VALUES (29, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-20 13:52:30');
INSERT INTO `log` VALUES (30, '用户名为admin的用户登录时输入验证码错误!', '2019-04-21 16:11:06');
INSERT INTO `log` VALUES (31, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-21 16:11:14');
INSERT INTO `log` VALUES (32, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-04-21 16:16:50');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT -1,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 0, '系统设置', '', 'icon-advancedsettings');
INSERT INTO `menu` VALUES (5, 1, '菜单管理', '../admin/menu/list', 'icon-chart-organisation');
INSERT INTO `menu` VALUES (13, 1, '角色管理', '../admin/role/list', 'icon-group-key');
INSERT INTO `menu` VALUES (14, 0, '用户管理', '', 'icon-group-gear');
INSERT INTO `menu` VALUES (15, 14, '用户列表', '../admin/user/list', 'icon-group');
INSERT INTO `menu` VALUES (17, 5, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (18, 5, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (19, 5, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (20, 5, '添加按钮', 'openAddMenu()', 'icon-add');
INSERT INTO `menu` VALUES (21, 13, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (22, 13, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (23, 13, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (24, 15, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (25, 15, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (26, 15, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (31, 0, '系统日志', '', 'icon-table-cell');
INSERT INTO `menu` VALUES (32, 31, '日志列表', '../admin/log/list', 'icon-page-white-text');
INSERT INTO `menu` VALUES (33, 32, '添加日志', 'openAdd()', 'icon-add1');
INSERT INTO `menu` VALUES (34, 32, '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES (35, 1, '修改密码', 'edit_password', 'icon-lock-edit');
INSERT INTO `menu` VALUES (36, 35, '修改密码', 'openAdd()', 'icon-lock-edit');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', '超级管理员拥有一切权限！');
INSERT INTO `role` VALUES (2, '普通用户', '普通用户，请自由授权！');
INSERT INTO `role` VALUES (4, 'ss', '');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roleId` int(11) NOT NULL,
  `photo` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(1) NOT NULL DEFAULT 0,
  `age` int(3) NOT NULL DEFAULT 0,
  `address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roleId`(`roleId`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin', 1, '/resources/upload/1555479500502.jpg', 1, 1, '上海市浦东新区浦东南路1835号');
INSERT INTO `user` VALUES (18, 'jiaxuan', 'jiaxuan', 1, '/resources/upload/1555479625960.jpg', 1, 22, 'asdasd');

SET FOREIGN_KEY_CHECKS = 1;
