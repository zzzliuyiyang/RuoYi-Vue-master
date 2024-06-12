/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 80033
Source Host           : localhost:3306
Source Database       : ruoyi

Target Server Type    : MYSQL
Target Server Version : 80033
File Encoding         : 65001

Date: 2024-06-13 01:53:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `activity_id` int NOT NULL AUTO_INCREMENT COMMENT '活动ID',
  `activity_name` varchar(50) NOT NULL COMMENT '活动名称',
  `user_id` bigint NOT NULL COMMENT '创建人ID',
  `activity_progress` int DEFAULT NULL COMMENT '活动进度',
  `budget` decimal(24,6) DEFAULT NULL COMMENT '活动预算',
  `expend` decimal(24,6) DEFAULT NULL COMMENT '已花费金额',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `prepare_time` datetime DEFAULT NULL COMMENT '筹备开始时间',
  `process_time` datetime DEFAULT NULL COMMENT '开始进行时间',
  `finish_time` datetime DEFAULT NULL COMMENT '结束时间',
  `updated_by` varchar(30) DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  `resource_id` bigint NOT NULL COMMENT '资源ID',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='活动表';

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('7', '五四辩论赛', '1', '1', '500.000000', '423.000000', '2024-05-28 00:00:00', '2024-05-30 00:00:00', '2024-05-01 00:00:00', '2024-05-16 00:00:00', null, null, '1', '﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！');
INSERT INTO `activity` VALUES ('10', '篮球赛', '1', '0', null, null, '2024-06-09 00:00:00', null, null, null, null, null, '2', null);
INSERT INTO `activity` VALUES ('11', '足球赛', '102', '0', '100.000000', '50.000000', '2024-06-10 00:00:00', '2024-06-28 00:00:00', '2024-06-30 00:00:00', '2024-07-09 00:00:00', null, null, '1', null);
INSERT INTO `activity` VALUES ('12', '羽毛球赛', '101', '0', '900.000000', '30.000000', '2024-06-12 00:00:00', '2024-06-19 00:00:00', '2024-06-15 00:00:00', '2024-06-19 00:00:00', null, null, '1', '	BWF	原名IBF/国际羽毛球联合会）原来是按照星级来区别羽毛球赛事，最高是七星级赛事，四年一度的奥运会、两年一度的团体赛如汤尤杯、苏迪曼杯以及均为七星级赛事。公开赛最高级别是六星级，每年的国际羽毛球比赛数量众多，但六星级的比赛屈指可数。 从2007年开始，BWF取消了这种分级，将各类赛事分为4个等级7个类别。级别最高的是一级赛事，即世界羽毛球锦标赛、奥运会羽毛球赛、汤尤杯和苏迪曼杯；其次是二级赛事，包括12站超级系列赛和超级系列赛总决赛，超级赛的最低奖金是20万美金。');

-- ----------------------------
-- Table structure for activity_user
-- ----------------------------
DROP TABLE IF EXISTS `activity_user`;
CREATE TABLE `activity_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activity_id` bigint NOT NULL COMMENT '活动ID',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `user_position` varchar(20) DEFAULT NULL COMMENT '用户职位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和活动关联表';

-- ----------------------------
-- Records of activity_user
-- ----------------------------
INSERT INTO `activity_user` VALUES ('9', '3', '156', null);
INSERT INTO `activity_user` VALUES ('13', '7', '103', '105');
INSERT INTO `activity_user` VALUES ('14', '7', '102', '103');
INSERT INTO `activity_user` VALUES ('16', '12', '102', '0');

-- ----------------------------
-- Table structure for append_reply
-- ----------------------------
DROP TABLE IF EXISTS `append_reply`;
CREATE TABLE `append_reply` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `comment_id` bigint NOT NULL COMMENT '父评论id',
  `from_id` bigint NOT NULL COMMENT '评论者id',
  `from_name` varchar(255) NOT NULL COMMENT '评论者昵称',
  `from_avatar` varchar(255) NOT NULL COMMENT '评论者头像路径',
  `to_id` bigint NOT NULL COMMENT '被评论者id',
  `to_name` varchar(255) NOT NULL COMMENT '被评论者昵称',
  `to_avatar` varchar(255) NOT NULL COMMENT '被评论者头像',
  `date` datetime NOT NULL COMMENT '评论时间',
  `content` varchar(255) NOT NULL COMMENT '评论内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='回复评论表';

-- ----------------------------
-- Records of append_reply
-- ----------------------------
INSERT INTO `append_reply` VALUES ('1', '1', '1', '2', 'fsd', '1', 'sedwa', 'dsaf', '2024-06-11 00:00:00', 'asdgadfgasdf');
INSERT INTO `append_reply` VALUES ('2', '1', '1', '2', 'fhj', '1', 'dsc', 'das', '2024-06-25 00:00:00', 'vczxvzxcv');
INSERT INTO `append_reply` VALUES ('3', '1', '1', '若依', '/static/img/profile.473f5971.jpg', '1', 'rsaq', 'sadr', '2024-06-12 00:00:00', '123');
INSERT INTO `append_reply` VALUES ('4', '1', '1', '若依', '/static/img/profile.473f5971.jpg', '1', 'rsaq', 'sadr', '2024-06-12 00:00:00', '123');
INSERT INTO `append_reply` VALUES ('5', '1', '1', '若依', '/static/img/profile.473f5971.jpg', '1', 'rsaq', 'sadr', '2024-06-12 00:00:00', '撒皇帝');
INSERT INTO `append_reply` VALUES ('6', '1', '1', '若依', '/static/img/profile.473f5971.jpg', '1', 'rsaq', 'sadr', '2024-06-12 00:00:00', '梵蒂冈');
INSERT INTO `append_reply` VALUES ('7', '2', '1', '若依', '/static/img/profile.473f5971.jpg', '1', '若依', '/static/img/profile.473f5971.jpg', '2024-06-12 00:00:00', '15615');
INSERT INTO `append_reply` VALUES ('8', '3', '1', '若依', '/static/img/profile.473f5971.jpg', '1', '若依', '/static/img/profile.473f5971.jpg', '2024-06-12 00:00:00', '二位发文发问');
INSERT INTO `append_reply` VALUES ('9', '5', '1', '若依', '/static/img/profile.473f5971.jpg', '1', '若依', '/static/img/profile.473f5971.jpg', '2024-06-12 00:00:00', 'fadf');
INSERT INTO `append_reply` VALUES ('10', '5', '102', 'lyy', '/static/img/profile.473f5971.jpg', '1', '若依', '/static/img/profile.473f5971.jpg', '2024-06-12 00:00:00', 'dasdas');

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '申请ID',
  `activity_id` bigint NOT NULL COMMENT '活动ID',
  `user_id` bigint NOT NULL COMMENT '申请人ID',
  `apply_state` int NOT NULL COMMENT '申请状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='申请表';

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES ('8', '7', '103', '0');
INSERT INTO `apply` VALUES ('9', '7', '102', '0');
INSERT INTO `apply` VALUES ('10', '12', '102', '0');

-- ----------------------------
-- Table structure for discuss
-- ----------------------------
DROP TABLE IF EXISTS `discuss`;
CREATE TABLE `discuss` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `activity_id` bigint NOT NULL COMMENT '活动ID',
  `created_time` datetime NOT NULL COMMENT '评论时间',
  `message` varchar(900) NOT NULL COMMENT '评论内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='评论';

-- ----------------------------
-- Records of discuss
-- ----------------------------

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `file_id` int NOT NULL AUTO_INCREMENT COMMENT '文件ID',
  `file_name` varchar(255) NOT NULL COMMENT '文件名称',
  `file_path` varchar(255) NOT NULL COMMENT '文件路径',
  `upload_by` varchar(50) DEFAULT NULL COMMENT '文件上传者ID;上传者姓名',
  `activity_id` bigint DEFAULT NULL COMMENT '活动ID;所属活动名称',
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='文件存储';

-- ----------------------------
-- Records of files
-- ----------------------------
INSERT INTO `files` VALUES ('2', '头像五四辩论赛', '/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png', '1', '7');
INSERT INTO `files` VALUES ('3', '12', '/profile/upload/2024/06/05/协议调研_20240605170127A002.doc', null, null);
INSERT INTO `files` VALUES ('4', '头像fsdaf', '/profile/upload/2024/06/07/网络安全4_20240607020946A005.png', '1', '8');
INSERT INTO `files` VALUES ('5', '头像篮球赛', '/profile/upload/2024/06/09/iogo_20240609174817A001.jpg', '1', null);
INSERT INTO `files` VALUES ('6', '头像足球赛', '/profile/upload/2024/06/10/15578889144447_20240610173611A001.png', '1', null);
INSERT INTO `files` VALUES ('7', '头像足球赛', '/profile/upload/2024/06/10/15578889144447_20240610173611A001.png', '1', null);
INSERT INTO `files` VALUES ('8', '头像羽毛球赛', '/profile/upload/2024/06/13/震网_20240613010828A001.jpg', '101', null);
INSERT INTO `files` VALUES ('10', '头像羽毛球赛', '/profile/upload/2024/06/13/震网_20240613010828A001.jpg', '101', '12');
INSERT INTO `files` VALUES ('11', '头像123', '/profile/upload/2024/06/13/15578889144447_20240613014136A002.png', '101', '13');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('1', 'resource', '活动资源;活动资源', null, null, 'Resource', 'crud', '', 'com.ruoyi.system', 'system', 'resource', '活动资源;活动资源', 'ruoyi', '0', '/', null, 'admin', '2024-05-26 01:27:44', '', null, null);
INSERT INTO `gen_table` VALUES ('2', 'activity', '活动表', 'activity_user', 'activity_id', 'Activity', 'sub', 'element-ui', 'com.ruoyi.system', 'system', 'activity', '活动管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2008\"}', 'admin', '2024-05-27 13:38:48', '', '2024-05-27 15:27:29', null);
INSERT INTO `gen_table` VALUES ('3', 'activity_user', '用户和活动关联表', null, null, 'ActivityUser', 'crud', '', 'com.ruoyi.system', 'system', 'user', '用户和活动关联', 'ruoyi', '0', '/', null, 'admin', '2024-05-27 14:21:09', '', null, null);
INSERT INTO `gen_table` VALUES ('4', 'resource_state', '资源状态及预约时间', null, null, 'ResourceState', 'crud', 'element-ui', 'com.ruoyi.system', 'system', 'ResourceState', '资源状态及预约时间', 'ruoyi', '0', '/', '{}', 'admin', '2024-05-31 22:07:53', '', '2024-05-31 22:11:36', null);
INSERT INTO `gen_table` VALUES ('5', 'apply', '申请表', null, null, 'Apply', 'crud', 'element-ui', 'com.ruoyi.system', 'system', 'apply', '申请管理', 'ruoyi', '0', '/', '{\"parentMenuId\":2008}', 'admin', '2024-06-01 17:25:05', '', '2024-06-01 17:31:08', null);
INSERT INTO `gen_table` VALUES ('6', 'files', '文件存储', null, null, 'Files', 'crud', 'element-ui', 'com.ruoyi.system', 'system', 'files', '文件存储', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2027\"}', 'admin', '2024-06-04 22:45:36', '', '2024-06-05 16:29:24', null);
INSERT INTO `gen_table` VALUES ('7', 'discuss', '评论', null, null, 'Discuss', 'crud', 'element-ui', 'com.ruoyi.system', 'system', 'discuss', '评论', 'ruoyi', '0', '/', '{\"parentMenuId\":2008}', 'admin', '2024-06-09 20:20:04', '', '2024-06-09 20:20:27', null);
INSERT INTO `gen_table` VALUES ('8', 'reimbursement', '报销', null, null, 'Reimbursement', 'crud', 'element-ui', 'com.ruoyi.system', 'system', 'reimbursement', '报销', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2008\"}', 'admin', '2024-06-09 20:32:18', '', '2024-06-09 20:59:36', null);
INSERT INTO `gen_table` VALUES ('9', 'append_reply', '回复评论表', null, null, 'AppendReply', 'crud', '', 'com.ruoyi.system', 'system', 'reply', '回复评论', 'ruoyi', '0', '/', null, 'admin', '2024-06-10 02:17:10', '', null, null);
INSERT INTO `gen_table` VALUES ('10', 'main_reply', '主评论表', 'append_reply', 'comment_id', 'MainReply', 'sub', 'element-ui', 'com.ruoyi.system', 'system', 'reply', '评论', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2008\"}', 'admin', '2024-06-10 02:17:10', '', '2024-06-10 14:24:44', null);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('1', '1', 'resource_id', '资源ID', 'int', 'Long', 'resourceId', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-05-26 01:27:44', '', null);
INSERT INTO `gen_table_column` VALUES ('2', '1', 'resource_name', '资源名', 'varchar(30)', 'String', 'resourceName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2024-05-26 01:27:44', '', null);
INSERT INTO `gen_table_column` VALUES ('3', '1', 'created_by', '创建人', 'varchar(32)', 'String', 'createdBy', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-05-26 01:27:44', '', null);
INSERT INTO `gen_table_column` VALUES ('4', '1', 'created_time', '创建时间', 'datetime', 'Date', 'createdTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', '4', 'admin', '2024-05-26 01:27:44', '', null);
INSERT INTO `gen_table_column` VALUES ('5', '1', 'updated_by', '更新人', 'varchar(32)', 'String', 'updatedBy', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2024-05-26 01:27:44', '', null);
INSERT INTO `gen_table_column` VALUES ('6', '1', 'updated_time', '更新时间', 'datetime', 'Date', 'updatedTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', '6', 'admin', '2024-05-26 01:27:44', '', null);
INSERT INTO `gen_table_column` VALUES ('7', '2', 'activity_id', '活动ID', 'int', 'Long', 'activityId', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-05-27 13:38:48', '', '2024-05-27 15:27:29');
INSERT INTO `gen_table_column` VALUES ('8', '2', 'activity_name', '活动名称', 'varchar(50)', 'String', 'activityName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2024-05-27 13:38:48', '', '2024-05-27 15:27:29');
INSERT INTO `gen_table_column` VALUES ('9', '2', 'user_id', '创建人ID', 'bigint', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-05-27 13:38:48', '', '2024-05-27 15:27:29');
INSERT INTO `gen_table_column` VALUES ('10', '2', 'activity_progress', '活动进度', 'int', 'Long', 'activityProgress', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', 'activity_progress', '4', 'admin', '2024-05-27 13:38:48', '', '2024-05-27 15:27:29');
INSERT INTO `gen_table_column` VALUES ('11', '2', 'budget', '活动预算', 'decimal(24,6)', 'BigDecimal', 'budget', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2024-05-27 13:38:48', '', '2024-05-27 15:27:29');
INSERT INTO `gen_table_column` VALUES ('12', '2', 'expend', '已花费金额', 'decimal(24,6)', 'BigDecimal', 'expend', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2024-05-27 13:38:48', '', '2024-05-27 15:27:29');
INSERT INTO `gen_table_column` VALUES ('13', '2', 'created_time', '创建时间', 'datetime', 'Date', 'createdTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', '7', 'admin', '2024-05-27 13:38:48', '', '2024-05-27 15:27:29');
INSERT INTO `gen_table_column` VALUES ('14', '2', 'prepare_time', '筹备开始时间', 'datetime', 'Date', 'prepareTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', '8', 'admin', '2024-05-27 13:38:48', '', '2024-05-27 15:27:29');
INSERT INTO `gen_table_column` VALUES ('15', '2', 'process_time', '开始进行时间', 'datetime', 'Date', 'processTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', '9', 'admin', '2024-05-27 13:38:48', '', '2024-05-27 15:27:29');
INSERT INTO `gen_table_column` VALUES ('16', '2', 'finish_time', '结束时间', 'datetime', 'Date', 'finishTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', '10', 'admin', '2024-05-27 13:38:48', '', '2024-05-27 15:27:29');
INSERT INTO `gen_table_column` VALUES ('17', '2', 'updated_by', '更新人', 'varchar(30)', 'String', 'updatedBy', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', '11', 'admin', '2024-05-27 13:38:48', '', '2024-05-27 15:27:29');
INSERT INTO `gen_table_column` VALUES ('18', '2', 'updated_time', '更新时间', 'datetime', 'Date', 'updatedTime', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'datetime', '', '12', 'admin', '2024-05-27 13:38:48', '', '2024-05-27 15:27:29');
INSERT INTO `gen_table_column` VALUES ('19', '2', 'resource_id', '资源ID', 'bigint', 'Long', 'resourceId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '13', 'admin', '2024-05-27 13:38:48', '', '2024-05-27 15:27:29');
INSERT INTO `gen_table_column` VALUES ('21', '3', 'id', null, 'varchar(255)', 'String', 'id', '1', '0', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-05-27 14:21:09', '', null);
INSERT INTO `gen_table_column` VALUES ('22', '3', 'activity_id', '活动ID', 'bigint', 'Long', 'activityId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-05-27 14:21:09', '', null);
INSERT INTO `gen_table_column` VALUES ('23', '3', 'user_id', '用户ID', 'bigint', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-05-27 14:21:09', '', null);
INSERT INTO `gen_table_column` VALUES ('24', '3', 'user_position', '用户职位', 'varchar(20)', 'String', 'userPosition', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2024-05-27 14:21:09', '', null);
INSERT INTO `gen_table_column` VALUES ('25', '2', 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '0', '1', '1', '1', null, 'EQ', 'editor', '', '14', '', '2024-05-27 15:25:22', '', '2024-05-27 15:27:29');
INSERT INTO `gen_table_column` VALUES ('26', '4', 'id', 'ID', 'int', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-05-31 22:07:53', '', '2024-05-31 22:11:36');
INSERT INTO `gen_table_column` VALUES ('27', '4', 'activity_id', '活动ID', 'bigint', 'Long', 'activityId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-05-31 22:07:53', '', '2024-05-31 22:11:36');
INSERT INTO `gen_table_column` VALUES ('28', '4', 'resource_id', '资源ID', 'bigint', 'Long', 'resourceId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-05-31 22:07:53', '', '2024-05-31 22:11:36');
INSERT INTO `gen_table_column` VALUES ('29', '4', 'start_date', '开始时间', 'datetime', 'Date', 'startDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', '4', 'admin', '2024-05-31 22:07:53', '', '2024-05-31 22:11:36');
INSERT INTO `gen_table_column` VALUES ('30', '4', 'end_date', '结束时间', 'datetime', 'Date', 'endDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', '5', 'admin', '2024-05-31 22:07:53', '', '2024-05-31 22:11:36');
INSERT INTO `gen_table_column` VALUES ('31', '5', 'id', '申请ID', 'int', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-01 17:25:05', '', '2024-06-01 17:31:08');
INSERT INTO `gen_table_column` VALUES ('32', '5', 'activity_id', '活动ID', 'bigint', 'Long', 'activityId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-01 17:25:05', '', '2024-06-01 17:31:08');
INSERT INTO `gen_table_column` VALUES ('33', '5', 'user_id', '申请人ID', 'bigint', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-06-01 17:25:05', '', '2024-06-01 17:31:08');
INSERT INTO `gen_table_column` VALUES ('34', '5', 'apply_state', '申请状态', 'int', 'Long', 'applyState', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'apply_state', '4', 'admin', '2024-06-01 17:25:05', '', '2024-06-01 17:31:08');
INSERT INTO `gen_table_column` VALUES ('35', '6', 'file_id', '文件ID', 'int', 'Long', 'fileId', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-04 22:45:36', '', '2024-06-05 16:29:24');
INSERT INTO `gen_table_column` VALUES ('36', '6', 'file_name', '文件名称', 'varchar(255)', 'String', 'fileName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2024-06-04 22:45:36', '', '2024-06-05 16:29:24');
INSERT INTO `gen_table_column` VALUES ('37', '6', 'file_path', '文件路径', 'varchar(255)', 'String', 'filePath', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'fileUpload', '', '3', 'admin', '2024-06-04 22:45:36', '', '2024-06-05 16:29:24');
INSERT INTO `gen_table_column` VALUES ('38', '6', 'upload_by', '文件上传者ID;上传者姓名', 'varchar(50)', 'String', 'uploadBy', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2024-06-04 22:45:36', '', '2024-06-05 16:29:24');
INSERT INTO `gen_table_column` VALUES ('39', '6', 'activity_id', '活动ID;所属活动名称', 'bigint', 'Long', 'activityId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2024-06-04 22:45:36', '', '2024-06-05 16:29:24');
INSERT INTO `gen_table_column` VALUES ('40', '7', 'id', null, 'int', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-09 20:20:04', '', '2024-06-09 20:20:27');
INSERT INTO `gen_table_column` VALUES ('41', '7', 'user_id', '用户ID', 'bigint', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-09 20:20:04', '', '2024-06-09 20:20:27');
INSERT INTO `gen_table_column` VALUES ('42', '7', 'activity_id', '活动ID', 'bigint', 'Long', 'activityId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-06-09 20:20:04', '', '2024-06-09 20:20:27');
INSERT INTO `gen_table_column` VALUES ('43', '7', 'created_time', '评论时间', 'datetime', 'Date', 'createdTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', '4', 'admin', '2024-06-09 20:20:04', '', '2024-06-09 20:20:27');
INSERT INTO `gen_table_column` VALUES ('44', '7', 'message', '评论内容', 'varchar(900)', 'String', 'message', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', '5', 'admin', '2024-06-09 20:20:04', '', '2024-06-09 20:20:27');
INSERT INTO `gen_table_column` VALUES ('45', '8', 'project_id', 'ID', 'int', 'Long', 'projectId', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-09 20:32:18', '', '2024-06-09 20:59:36');
INSERT INTO `gen_table_column` VALUES ('46', '8', 'user_id', '用户ID', 'bigint', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-09 20:32:18', '', '2024-06-09 20:59:36');
INSERT INTO `gen_table_column` VALUES ('47', '8', 'acyivity_id', '活动ID', 'bigint', 'Long', 'acyivityId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-06-09 20:32:18', '', '2024-06-09 20:59:36');
INSERT INTO `gen_table_column` VALUES ('48', '8', 'money', '报销金额', 'decimal(24,2)', 'BigDecimal', 'money', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2024-06-09 20:32:18', '', '2024-06-09 20:59:36');
INSERT INTO `gen_table_column` VALUES ('49', '8', 'state', '状态', 'int', 'Long', 'state', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'apply_state', '5', 'admin', '2024-06-09 20:32:18', '', '2024-06-09 20:59:36');
INSERT INTO `gen_table_column` VALUES ('50', '9', 'id', '主键id', 'bigint', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-10 02:17:10', '', null);
INSERT INTO `gen_table_column` VALUES ('51', '9', 'comment_id', '父评论id', 'bigint', 'Long', 'commentId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-10 02:17:10', '', null);
INSERT INTO `gen_table_column` VALUES ('52', '9', 'from_id', '评论者id', 'bigint', 'Long', 'fromId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-06-10 02:17:10', '', null);
INSERT INTO `gen_table_column` VALUES ('53', '9', 'from_name', '评论者昵称', 'varchar(255)', 'String', 'fromName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2024-06-10 02:17:10', '', null);
INSERT INTO `gen_table_column` VALUES ('54', '9', 'from_avatar', '评论者头像路径', 'varchar(255)', 'String', 'fromAvatar', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2024-06-10 02:17:10', '', null);
INSERT INTO `gen_table_column` VALUES ('55', '9', 'to_id', '被评论者id', 'bigint', 'Long', 'toId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2024-06-10 02:17:10', '', null);
INSERT INTO `gen_table_column` VALUES ('56', '9', 'to_name', '被评论者昵称', 'varchar(255)', 'String', 'toName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '7', 'admin', '2024-06-10 02:17:10', '', null);
INSERT INTO `gen_table_column` VALUES ('57', '9', 'to_avatar', '被评论者头像', 'varchar(255)', 'String', 'toAvatar', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2024-06-10 02:17:10', '', null);
INSERT INTO `gen_table_column` VALUES ('58', '9', 'date', '评论时间', 'datetime', 'Date', 'date', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', '9', 'admin', '2024-06-10 02:17:10', '', null);
INSERT INTO `gen_table_column` VALUES ('59', '9', 'content', '评论内容', 'varchar(255)', 'String', 'content', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'editor', '', '10', 'admin', '2024-06-10 02:17:10', '', null);
INSERT INTO `gen_table_column` VALUES ('60', '10', 'id', '主键id', 'bigint', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-10 02:17:10', '', '2024-06-10 14:24:44');
INSERT INTO `gen_table_column` VALUES ('61', '10', 'date', '评论时间', 'datetime', 'Date', 'date', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', '2', 'admin', '2024-06-10 02:17:10', '', '2024-06-10 14:24:44');
INSERT INTO `gen_table_column` VALUES ('62', '10', 'activity_id', '活动id', 'bigint', 'Long', 'activityId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-06-10 02:17:10', '', '2024-06-10 14:24:44');
INSERT INTO `gen_table_column` VALUES ('63', '10', 'from_id', '评论者id', 'bigint', 'Long', 'fromId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2024-06-10 02:17:10', '', '2024-06-10 14:24:44');
INSERT INTO `gen_table_column` VALUES ('64', '10', 'from_name', '评论者昵称', 'varchar(255)', 'String', 'fromName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'admin', '2024-06-10 02:17:10', '', '2024-06-10 14:24:44');
INSERT INTO `gen_table_column` VALUES ('65', '10', 'from_avatar', '评论者头像路径', 'varchar(255)', 'String', 'fromAvatar', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2024-06-10 02:17:10', '', '2024-06-10 14:24:44');
INSERT INTO `gen_table_column` VALUES ('66', '10', 'like_num', '点赞人数', 'int', 'Long', 'likeNum', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2024-06-10 02:17:10', '', '2024-06-10 14:24:44');
INSERT INTO `gen_table_column` VALUES ('67', '10', 'content', '评论内容', 'varchar(255)', 'String', 'content', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', '8', 'admin', '2024-06-10 02:17:10', '', '2024-06-10 14:24:44');

-- ----------------------------
-- Table structure for main_reply
-- ----------------------------
DROP TABLE IF EXISTS `main_reply`;
CREATE TABLE `main_reply` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `date` datetime NOT NULL COMMENT '评论时间',
  `activity_id` bigint NOT NULL COMMENT '活动id',
  `from_id` bigint NOT NULL COMMENT '评论者id',
  `from_name` varchar(255) NOT NULL COMMENT '评论者昵称',
  `from_avatar` varchar(255) NOT NULL COMMENT '评论者头像路径',
  `like_num` int NOT NULL DEFAULT '0' COMMENT '点赞人数',
  `content` varchar(255) NOT NULL COMMENT '评论内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='主评论表';

-- ----------------------------
-- Records of main_reply
-- ----------------------------
INSERT INTO `main_reply` VALUES ('1', '2024-06-10 00:00:00', '7', '1', 'rsaq', 'sadr', '165', 'fasdfasdfas');
INSERT INTO `main_reply` VALUES ('2', '2024-06-11 00:00:00', '7', '1', '若依', '/static/img/profile.473f5971.jpg', '0', '156');
INSERT INTO `main_reply` VALUES ('3', '2024-06-12 00:00:00', '7', '1', '若依', '/static/img/profile.473f5971.jpg', '0', '大苏打');
INSERT INTO `main_reply` VALUES ('4', '2024-06-12 00:00:00', '7', '1', '若依', '/static/img/profile.473f5971.jpg', '0', '的撒旦');
INSERT INTO `main_reply` VALUES ('5', '2024-06-12 00:00:00', '10', '1', '若依', '/static/img/profile.473f5971.jpg', '0', 'shaduoh');
INSERT INTO `main_reply` VALUES ('6', '2024-06-12 00:00:00', '10', '102', 'lyy', '/static/img/profile.473f5971.jpg', '0', 'qwerqwer');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Blob类型的触发器表';

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='日历信息表';

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Cron类型的触发器表';

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='已触发的触发器表';

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务详细信息表';

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='存储的悲观锁信息表';

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='暂停的触发器表';

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='调度器状态表';

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='简单触发器的信息表';

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='同步机制的行锁表';

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='触发器详细信息表';

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for reimbursement
-- ----------------------------
DROP TABLE IF EXISTS `reimbursement`;
CREATE TABLE `reimbursement` (
  `project_id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `activity_id` bigint NOT NULL COMMENT '活动ID',
  `money` decimal(24,2) NOT NULL COMMENT '报销金额',
  `state` int NOT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '报销备注',
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='报销';

-- ----------------------------
-- Records of reimbursement
-- ----------------------------
INSERT INTO `reimbursement` VALUES ('1', '1', '7', '123.00', '0', null);
INSERT INTO `reimbursement` VALUES ('2', '1', '7', '50.00', '0', null);
INSERT INTO `reimbursement` VALUES ('3', '1', '7', '500.00', '1', null);
INSERT INTO `reimbursement` VALUES ('4', '1', '11', '10.00', '0', null);
INSERT INTO `reimbursement` VALUES ('5', '1', '11', '10.00', '0', '旺旺碎冰冰');
INSERT INTO `reimbursement` VALUES ('6', '1', '11', '15.00', '2', '买袜子\n');
INSERT INTO `reimbursement` VALUES ('7', '102', '11', '10.00', '2', null);
INSERT INTO `reimbursement` VALUES ('8', '102', '12', '30.00', '0', 'dsa');

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `resource_id` int NOT NULL AUTO_INCREMENT COMMENT '资源ID',
  `resource_name` varchar(30) NOT NULL COMMENT '资源名',
  `created_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='活动资源;活动资源';

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', '礼堂', 'admin', '2024-05-28 21:35:25', null, null);
INSERT INTO `resource` VALUES ('2', '操场', 'admin', '2024-06-07 00:00:00', null, null);
INSERT INTO `resource` VALUES ('3', '羽毛球场', 'student', '2024-06-13 01:10:25', null, null);

-- ----------------------------
-- Table structure for resource_state
-- ----------------------------
DROP TABLE IF EXISTS `resource_state`;
CREATE TABLE `resource_state` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `activity_id` bigint NOT NULL COMMENT '活动ID',
  `resource_id` bigint NOT NULL COMMENT '资源ID',
  `start_date` datetime NOT NULL COMMENT '开始时间',
  `end_date` datetime NOT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='资源状态及预约时间';

-- ----------------------------
-- Records of resource_state
-- ----------------------------
INSERT INTO `resource_state` VALUES ('1', '7', '1', '2024-05-01 00:00:00', '2024-05-16 00:00:00');

-- ----------------------------
-- Table structure for sys_auth_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_user`;
CREATE TABLE `sys_auth_user` (
  `auth_id` bigint NOT NULL AUTO_INCREMENT COMMENT '授权ID',
  `uuid` varchar(500) NOT NULL COMMENT '第三方平台用户唯一ID',
  `user_id` bigint NOT NULL COMMENT '系统用户ID',
  `user_name` varchar(30) NOT NULL COMMENT '登录账号',
  `nick_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `avatar` varchar(500) DEFAULT '' COMMENT '头像地址',
  `email` varchar(255) DEFAULT '' COMMENT '用户邮箱',
  `source` varchar(255) DEFAULT '' COMMENT '用户来源',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='第三方授权表';

-- ----------------------------
-- Records of sys_auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-04-22 21:16:41', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-04-22 21:16:41', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-04-22 21:16:41', '', null, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES ('4', '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-04-22 21:16:41', '', null, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2024-04-22 21:16:41', 'admin', '2024-04-24 17:20:53', '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('6', '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-04-22 21:16:41', '', null, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '活动项目', '0', 'admin', '15888888888', 'admin@qq.com', '0', '0', 'admin', '2024-04-22 21:16:40', 'admin', '2024-05-06 14:23:32');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '五四辩论赛', '1', '五四', '15888888888', '54@qq.com', '0', '0', 'admin', '2024-04-22 21:16:40', 'admin', '2024-05-06 14:26:00');
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '篮球赛', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-22 21:16:40', 'admin', '2024-06-09 17:58:45');
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '辩手', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-22 21:16:40', 'admin', '2024-06-09 17:17:00');
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '评委', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-22 21:16:40', 'admin', '2024-06-13 01:51:19');
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '主持', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-22 21:16:40', 'admin', '2024-06-13 01:51:31');
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '赛后', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-22 21:16:40', 'admin', '2024-06-13 01:51:45');
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '维护', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-22 21:16:40', 'admin', '2024-06-13 01:51:52');
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '队员', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-22 21:16:40', 'admin', '2024-06-13 01:52:04');
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '啦啦队', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-22 21:16:40', 'admin', '2024-06-13 01:52:09');
INSERT INTO `sys_dept` VALUES ('200', '100', '0,100', '我', '1', null, null, null, '0', '2', 'admin', '2024-05-06 14:22:44', '', null);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-04-22 21:16:41', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-04-22 21:16:41', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-04-22 21:16:41', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-04-22 21:16:41', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-04-22 21:16:41', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-04-22 21:16:41', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-04-22 21:16:41', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-04-22 21:16:41', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-04-22 21:16:41', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('100', '0', '活动准备', '0', 'activity_progress', null, 'default', 'N', '0', 'admin', '2024-05-27 14:28:52', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('101', '1', '活动进行中', '1', 'activity_progress', null, 'default', 'N', '0', 'admin', '2024-05-27 14:29:05', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('102', '2', '活动结束', '2', 'activity_progress', null, 'default', 'N', '0', 'admin', '2024-05-27 14:29:18', 'admin', '2024-05-27 14:29:26', null);
INSERT INTO `sys_dict_data` VALUES ('103', '3', '审批', '3', 'activity_progress', null, 'default', 'N', '0', 'admin', '2024-05-27 14:29:43', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('104', '0', '申请通过', '0', 'apply_state', null, 'success', 'N', '0', 'admin', '2024-06-01 17:28:28', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('105', '1', '申请失败', '1', 'apply_state', null, 'danger', 'N', '0', 'admin', '2024-06-01 17:28:52', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('106', '2', '申请中', '2', 'apply_state', null, 'warning', 'N', '0', 'admin', '2024-06-01 17:29:12', 'admin', '2024-06-01 17:29:20', null);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2024-04-22 21:16:41', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2024-04-22 21:16:41', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2024-04-22 21:16:41', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2024-04-22 21:16:41', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2024-04-22 21:16:41', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2024-04-22 21:16:41', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2024-04-22 21:16:41', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2024-04-22 21:16:41', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2024-04-22 21:16:41', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2024-04-22 21:16:41', '', null, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('100', '活动进度', 'activity_progress', '0', 'admin', '2024-05-27 14:27:20', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('101', '申请状态', 'apply_state', '0', 'admin', '2024-06-01 17:26:52', '', null, null);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-04-22 21:16:41', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-04-22 21:16:41', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-04-22 21:16:41', '', null, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-24 17:20:23');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-04-24 17:23:42');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-24 17:27:09');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-24 22:00:36');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-29 16:14:26');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-06 13:58:07');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-06 15:21:59');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-06 16:27:28');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-05-06 16:27:57');
INSERT INTO `sys_logininfor` VALUES ('109', 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-06 16:28:16');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-13 14:15:36');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-13 15:01:55');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-16 21:30:53');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-05-16 21:42:38');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-16 21:52:40');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-26 01:27:13');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-27 13:37:06');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-27 15:19:06');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-05-27 15:52:56');
INSERT INTO `sys_logininfor` VALUES ('119', 'zuzhizhe', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-27 15:53:08');
INSERT INTO `sys_logininfor` VALUES ('120', 'zuzhizhe', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-05-27 15:58:33');
INSERT INTO `sys_logininfor` VALUES ('121', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-27 15:58:37');
INSERT INTO `sys_logininfor` VALUES ('122', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-28 20:47:03');
INSERT INTO `sys_logininfor` VALUES ('123', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-28 21:03:31');
INSERT INTO `sys_logininfor` VALUES ('124', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-28 22:37:10');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-29 02:05:32');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-29 10:24:26');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-29 15:43:27');
INSERT INTO `sys_logininfor` VALUES ('128', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-29 22:33:33');
INSERT INTO `sys_logininfor` VALUES ('129', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-05-31 21:56:22');
INSERT INTO `sys_logininfor` VALUES ('130', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-31 21:56:27');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-01 00:25:39');
INSERT INTO `sys_logininfor` VALUES ('132', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-01 14:21:28');
INSERT INTO `sys_logininfor` VALUES ('133', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-01 16:06:19');
INSERT INTO `sys_logininfor` VALUES ('134', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-01 17:23:54');
INSERT INTO `sys_logininfor` VALUES ('135', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-02 13:44:37');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-02 14:22:09');
INSERT INTO `sys_logininfor` VALUES ('137', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-02 17:57:14');
INSERT INTO `sys_logininfor` VALUES ('138', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-06-02 18:13:46');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-02 18:13:50');
INSERT INTO `sys_logininfor` VALUES ('140', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-02 20:17:54');
INSERT INTO `sys_logininfor` VALUES ('141', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-02 20:17:57');
INSERT INTO `sys_logininfor` VALUES ('142', 'admin', '10.39.57.33', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-02 21:05:14');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-02 22:43:15');
INSERT INTO `sys_logininfor` VALUES ('144', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-02 23:37:42');
INSERT INTO `sys_logininfor` VALUES ('145', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-03 13:39:00');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-03 14:55:17');
INSERT INTO `sys_logininfor` VALUES ('147', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-04 00:27:55');
INSERT INTO `sys_logininfor` VALUES ('148', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-04 01:03:12');
INSERT INTO `sys_logininfor` VALUES ('149', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-06-04 20:33:05');
INSERT INTO `sys_logininfor` VALUES ('150', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-04 20:33:09');
INSERT INTO `sys_logininfor` VALUES ('151', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-04 20:44:19');
INSERT INTO `sys_logininfor` VALUES ('152', 'student', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-04 20:44:31');
INSERT INTO `sys_logininfor` VALUES ('153', 'student', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-04 20:45:32');
INSERT INTO `sys_logininfor` VALUES ('154', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-04 20:45:43');
INSERT INTO `sys_logininfor` VALUES ('155', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-04 20:46:40');
INSERT INTO `sys_logininfor` VALUES ('156', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-04 20:46:43');
INSERT INTO `sys_logininfor` VALUES ('157', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-04 20:47:51');
INSERT INTO `sys_logininfor` VALUES ('158', 'student1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-04 20:48:03');
INSERT INTO `sys_logininfor` VALUES ('159', 'student', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-04 20:48:07');
INSERT INTO `sys_logininfor` VALUES ('160', 'student', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-04 21:14:14');
INSERT INTO `sys_logininfor` VALUES ('161', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-04 21:14:26');
INSERT INTO `sys_logininfor` VALUES ('162', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-04 21:19:11');
INSERT INTO `sys_logininfor` VALUES ('163', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-04 21:19:39');
INSERT INTO `sys_logininfor` VALUES ('164', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-04 21:20:05');
INSERT INTO `sys_logininfor` VALUES ('165', 'student', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-04 21:20:18');
INSERT INTO `sys_logininfor` VALUES ('166', 'student', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-04 21:24:50');
INSERT INTO `sys_logininfor` VALUES ('167', 'student', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-04 21:24:54');
INSERT INTO `sys_logininfor` VALUES ('168', 'student', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-04 21:27:29');
INSERT INTO `sys_logininfor` VALUES ('169', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-04 21:27:40');
INSERT INTO `sys_logininfor` VALUES ('170', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-04 22:31:05');
INSERT INTO `sys_logininfor` VALUES ('171', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-04 23:35:23');
INSERT INTO `sys_logininfor` VALUES ('172', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-05 00:10:54');
INSERT INTO `sys_logininfor` VALUES ('173', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-05 15:25:13');
INSERT INTO `sys_logininfor` VALUES ('174', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-05 16:28:11');
INSERT INTO `sys_logininfor` VALUES ('175', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-05 21:06:45');
INSERT INTO `sys_logininfor` VALUES ('176', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-05 23:02:14');
INSERT INTO `sys_logininfor` VALUES ('177', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-06 15:27:35');
INSERT INTO `sys_logininfor` VALUES ('178', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-07 00:08:23');
INSERT INTO `sys_logininfor` VALUES ('179', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-07 01:11:35');
INSERT INTO `sys_logininfor` VALUES ('180', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-07 01:52:58');
INSERT INTO `sys_logininfor` VALUES ('181', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-07 14:02:18');
INSERT INTO `sys_logininfor` VALUES ('182', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-07 15:42:39');
INSERT INTO `sys_logininfor` VALUES ('183', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 01:11:29');
INSERT INTO `sys_logininfor` VALUES ('184', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '注册成功', '2024-06-08 01:11:46');
INSERT INTO `sys_logininfor` VALUES ('185', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 01:11:57');
INSERT INTO `sys_logininfor` VALUES ('186', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-08 01:12:29');
INSERT INTO `sys_logininfor` VALUES ('187', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 01:12:38');
INSERT INTO `sys_logininfor` VALUES ('188', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-09 13:56:00');
INSERT INTO `sys_logininfor` VALUES ('189', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-09 13:56:05');
INSERT INTO `sys_logininfor` VALUES ('190', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-06-09 15:27:17');
INSERT INTO `sys_logininfor` VALUES ('191', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-09 15:44:57');
INSERT INTO `sys_logininfor` VALUES ('192', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-09 15:45:00');
INSERT INTO `sys_logininfor` VALUES ('193', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-06-09 16:26:27');
INSERT INTO `sys_logininfor` VALUES ('194', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-09 17:19:01');
INSERT INTO `sys_logininfor` VALUES ('195', 'sch', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-09 17:19:12');
INSERT INTO `sys_logininfor` VALUES ('196', 'sch', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-09 17:23:13');
INSERT INTO `sys_logininfor` VALUES ('197', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-09 17:23:17');
INSERT INTO `sys_logininfor` VALUES ('198', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-09 17:23:38');
INSERT INTO `sys_logininfor` VALUES ('199', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-09 17:23:55');
INSERT INTO `sys_logininfor` VALUES ('200', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-09 17:24:02');
INSERT INTO `sys_logininfor` VALUES ('201', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-09 17:24:04');
INSERT INTO `sys_logininfor` VALUES ('202', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-09 17:24:08');
INSERT INTO `sys_logininfor` VALUES ('203', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-09 17:24:19');
INSERT INTO `sys_logininfor` VALUES ('204', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-09 17:24:23');
INSERT INTO `sys_logininfor` VALUES ('205', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-09 17:25:40');
INSERT INTO `sys_logininfor` VALUES ('206', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-09 17:25:50');
INSERT INTO `sys_logininfor` VALUES ('207', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-09 17:26:23');
INSERT INTO `sys_logininfor` VALUES ('208', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-09 17:26:29');
INSERT INTO `sys_logininfor` VALUES ('209', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-09 17:26:35');
INSERT INTO `sys_logininfor` VALUES ('210', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-09 17:30:46');
INSERT INTO `sys_logininfor` VALUES ('211', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-09 17:33:08');
INSERT INTO `sys_logininfor` VALUES ('212', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-09 18:04:00');
INSERT INTO `sys_logininfor` VALUES ('213', 'zuzhizhe', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-09 18:04:23');
INSERT INTO `sys_logininfor` VALUES ('214', 'zuzhizhe', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-09 18:04:38');
INSERT INTO `sys_logininfor` VALUES ('215', 'zuzhizhe', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-09 18:05:08');
INSERT INTO `sys_logininfor` VALUES ('216', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-09 18:05:13');
INSERT INTO `sys_logininfor` VALUES ('217', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-09 20:49:39');
INSERT INTO `sys_logininfor` VALUES ('218', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-09 20:52:46');
INSERT INTO `sys_logininfor` VALUES ('219', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-06-09 22:40:41');
INSERT INTO `sys_logininfor` VALUES ('220', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-09 22:40:45');
INSERT INTO `sys_logininfor` VALUES ('221', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-10 02:06:44');
INSERT INTO `sys_logininfor` VALUES ('222', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-10 14:19:57');
INSERT INTO `sys_logininfor` VALUES ('223', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-10 16:33:38');
INSERT INTO `sys_logininfor` VALUES ('224', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-11 21:26:34');
INSERT INTO `sys_logininfor` VALUES ('225', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-11 21:29:04');
INSERT INTO `sys_logininfor` VALUES ('226', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-11 21:29:12');
INSERT INTO `sys_logininfor` VALUES ('227', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-11 21:29:24');
INSERT INTO `sys_logininfor` VALUES ('228', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-11 21:29:32');
INSERT INTO `sys_logininfor` VALUES ('229', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-11 21:30:43');
INSERT INTO `sys_logininfor` VALUES ('230', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-11 21:30:50');
INSERT INTO `sys_logininfor` VALUES ('231', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-11 22:06:20');
INSERT INTO `sys_logininfor` VALUES ('232', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-12 02:04:12');
INSERT INTO `sys_logininfor` VALUES ('233', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-12 12:53:48');
INSERT INTO `sys_logininfor` VALUES ('234', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-12 14:32:30');
INSERT INTO `sys_logininfor` VALUES ('235', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-06-12 15:35:47');
INSERT INTO `sys_logininfor` VALUES ('236', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-12 15:35:51');
INSERT INTO `sys_logininfor` VALUES ('237', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-12 15:41:28');
INSERT INTO `sys_logininfor` VALUES ('238', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-12 15:52:31');
INSERT INTO `sys_logininfor` VALUES ('239', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-12 16:40:17');
INSERT INTO `sys_logininfor` VALUES ('240', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-12 16:40:20');
INSERT INTO `sys_logininfor` VALUES ('241', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-12 16:41:20');
INSERT INTO `sys_logininfor` VALUES ('242', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-12 16:42:44');
INSERT INTO `sys_logininfor` VALUES ('243', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-12 16:42:49');
INSERT INTO `sys_logininfor` VALUES ('244', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-12 17:42:13');
INSERT INTO `sys_logininfor` VALUES ('245', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-12 17:42:42');
INSERT INTO `sys_logininfor` VALUES ('246', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-12 17:44:39');
INSERT INTO `sys_logininfor` VALUES ('247', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-12 17:44:53');
INSERT INTO `sys_logininfor` VALUES ('248', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-12 17:45:43');
INSERT INTO `sys_logininfor` VALUES ('249', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-12 17:45:53');
INSERT INTO `sys_logininfor` VALUES ('250', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-12 17:46:00');
INSERT INTO `sys_logininfor` VALUES ('251', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-12 17:46:33');
INSERT INTO `sys_logininfor` VALUES ('252', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-12 17:46:38');
INSERT INTO `sys_logininfor` VALUES ('253', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-12 17:46:55');
INSERT INTO `sys_logininfor` VALUES ('254', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-12 17:47:07');
INSERT INTO `sys_logininfor` VALUES ('255', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-12 17:47:23');
INSERT INTO `sys_logininfor` VALUES ('256', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-06-12 18:37:58');
INSERT INTO `sys_logininfor` VALUES ('257', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-12 18:38:01');
INSERT INTO `sys_logininfor` VALUES ('258', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-12 20:54:08');
INSERT INTO `sys_logininfor` VALUES ('259', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-12 20:55:29');
INSERT INTO `sys_logininfor` VALUES ('260', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-12 20:56:05');
INSERT INTO `sys_logininfor` VALUES ('261', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-12 20:56:35');
INSERT INTO `sys_logininfor` VALUES ('262', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-12 21:02:28');
INSERT INTO `sys_logininfor` VALUES ('263', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-12 21:02:44');
INSERT INTO `sys_logininfor` VALUES ('264', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-12 21:02:49');
INSERT INTO `sys_logininfor` VALUES ('265', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-12 21:02:55');
INSERT INTO `sys_logininfor` VALUES ('266', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-12 21:05:04');
INSERT INTO `sys_logininfor` VALUES ('267', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-12 21:06:16');
INSERT INTO `sys_logininfor` VALUES ('268', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-13 00:55:03');
INSERT INTO `sys_logininfor` VALUES ('269', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-13 00:55:06');
INSERT INTO `sys_logininfor` VALUES ('270', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-13 01:06:56');
INSERT INTO `sys_logininfor` VALUES ('271', 'student', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-13 01:07:09');
INSERT INTO `sys_logininfor` VALUES ('272', 'student', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-13 01:11:15');
INSERT INTO `sys_logininfor` VALUES ('273', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-13 01:11:19');
INSERT INTO `sys_logininfor` VALUES ('274', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-13 01:12:18');
INSERT INTO `sys_logininfor` VALUES ('275', 'student', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-13 01:12:30');
INSERT INTO `sys_logininfor` VALUES ('276', 'student', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-13 01:13:20');
INSERT INTO `sys_logininfor` VALUES ('277', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-13 01:13:24');
INSERT INTO `sys_logininfor` VALUES ('278', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-13 01:14:11');
INSERT INTO `sys_logininfor` VALUES ('279', 'student', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-13 01:14:21');
INSERT INTO `sys_logininfor` VALUES ('280', 'student', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-13 01:43:59');
INSERT INTO `sys_logininfor` VALUES ('281', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-13 01:44:09');
INSERT INTO `sys_logininfor` VALUES ('282', 'lyy', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-13 01:45:14');
INSERT INTO `sys_logininfor` VALUES ('283', 'student', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-13 01:45:26');
INSERT INTO `sys_logininfor` VALUES ('284', 'student', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-13 01:50:47');
INSERT INTO `sys_logininfor` VALUES ('285', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-13 01:50:51');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2071 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', 'system', null, '', '1', '0', 'M', '0', '0', '', 'system', 'admin', '2024-04-22 21:16:40', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', 'monitor', null, '', '1', '0', 'M', '0', '0', '', 'monitor', 'admin', '2024-04-22 21:16:40', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', 'tool', null, '', '1', '0', 'M', '0', '0', '', 'tool', 'admin', '2024-04-22 21:16:40', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', '若依官网', '0', '4', 'http://ruoyi.vip', null, '', '0', '0', 'M', '0', '0', '', 'guide', 'admin', '2024-04-22 21:16:40', 'admin', '2024-05-16 22:23:23', '若依官网地址');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', 'user', 'system/user/index', '', '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-04-22 21:16:40', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', 'role', 'system/role/index', '', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-04-22 21:16:40', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', 'menu', 'system/menu/index', '', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-04-22 21:16:40', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '活动管理', '1', '4', 'dept', 'system/dept/index', '', '1', '0', 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-04-22 21:16:40', 'admin', '2024-05-13 15:07:32', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', 'post', 'system/post/index', '', '1', '0', 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-04-22 21:16:40', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', 'dict', 'system/dict/index', '', '1', '0', 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-04-22 21:16:40', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', 'config', 'system/config/index', '', '1', '0', 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-04-22 21:16:40', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', 'notice', 'system/notice/index', '', '1', '0', 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-04-22 21:16:40', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', '', '', '1', '0', 'M', '0', '0', '', 'log', 'admin', '2024-04-22 21:16:40', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', 'online', 'monitor/online/index', '', '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-04-22 21:16:40', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', 'job', 'monitor/job/index', '', '1', '0', 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-04-22 21:16:40', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', 'druid', 'monitor/druid/index', '', '1', '0', 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-04-22 21:16:40', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', 'server', 'monitor/server/index', '', '1', '0', 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-04-22 21:16:40', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', 'cache', 'monitor/cache/index', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-04-22 21:16:40', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '缓存列表', '2', '6', 'cacheList', 'monitor/cache/list', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-04-22 21:16:40', '', null, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES ('115', '表单构建', '3', '1', 'build', 'tool/build/index', '', '1', '0', 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-04-22 21:16:40', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('116', '代码生成', '3', '2', 'gen', 'tool/gen/index', '', '1', '0', 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-04-22 21:16:40', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('117', '系统接口', '3', '3', 'swagger', 'tool/swagger/index', '', '1', '0', 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-04-22 21:16:40', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', 'operlog', 'monitor/operlog/index', '', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-04-22 21:16:40', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index', '', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-04-22 21:16:40', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '日志导出', '500', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '登录查询', '501', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录删除', '501', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '日志导出', '501', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '账户解锁', '501', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-04-22 21:16:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-04-22 21:16:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '任务导出', '110', '6', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-04-22 21:16:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '生成查询', '116', '1', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-04-22 21:16:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '生成修改', '116', '2', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-04-22 21:16:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成删除', '116', '3', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-04-22 21:16:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '导入代码', '116', '4', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-04-22 21:16:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '116', '5', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-04-22 21:16:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '116', '6', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-04-22 21:16:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('2000', '发送邮件', '0', '3', '/email/customer/sendHtmlEmail', null, null, '1', '0', 'C', '0', '0', '', 'email', 'admin', '2024-05-16 22:20:00', 'admin', '2024-05-16 22:23:01', '');
INSERT INTO `sys_menu` VALUES ('2002', '活动资源', '3', '1', 'resource', 'system/resource/index', null, '1', '0', 'M', '0', '0', 'system:resource:list', '#', 'admin', '2024-05-26 01:46:55', 'admin', '2024-05-27 14:00:18', '活动资源;活动资源菜单');
INSERT INTO `sys_menu` VALUES ('2003', '活动资源;活动资源查询', '2002', '1', '#', '', null, '1', '0', 'F', '0', '0', 'system:resource:query', '#', 'admin', '2024-05-26 01:46:55', '', null, '');
INSERT INTO `sys_menu` VALUES ('2004', '活动资源;活动资源新增', '2002', '2', '#', '', null, '1', '0', 'F', '0', '0', 'system:resource:add', '#', 'admin', '2024-05-26 01:46:55', '', null, '');
INSERT INTO `sys_menu` VALUES ('2005', '活动资源;活动资源修改', '2002', '3', '#', '', null, '1', '0', 'F', '0', '0', 'system:resource:edit', '#', 'admin', '2024-05-26 01:46:55', '', null, '');
INSERT INTO `sys_menu` VALUES ('2006', '活动资源;活动资源删除', '2002', '4', '#', '', null, '1', '0', 'F', '0', '0', 'system:resource:remove', '#', 'admin', '2024-05-26 01:46:55', '', null, '');
INSERT INTO `sys_menu` VALUES ('2007', '活动资源;活动资源导出', '2002', '5', '#', '', null, '1', '0', 'F', '0', '0', 'system:resource:export', '#', 'admin', '2024-05-26 01:46:55', '', null, '');
INSERT INTO `sys_menu` VALUES ('2008', '活动管理', '0', '0', 'activity', null, null, '1', '0', 'M', '0', '0', null, '#', 'admin', '2024-05-27 13:42:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('2009', '活动管理', '2008', '1', 'activity', 'system/activity/index', null, '1', '0', 'C', '0', '0', 'system:activity:list', '#', 'admin', '2024-05-27 15:31:53', '', null, '活动管理菜单');
INSERT INTO `sys_menu` VALUES ('2010', '活动管理查询', '2009', '1', '#', '', null, '1', '0', 'F', '0', '0', 'system:activity:query', '#', 'admin', '2024-05-27 15:31:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2011', '活动管理新增', '2009', '2', '#', '', null, '1', '0', 'F', '0', '0', 'system:activity:add', '#', 'admin', '2024-05-27 15:31:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2012', '活动管理修改', '2009', '3', '#', '', null, '1', '0', 'F', '0', '0', 'system:activity:edit', '#', 'admin', '2024-05-27 15:31:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2013', '活动管理删除', '2009', '4', '#', '', null, '1', '0', 'F', '0', '0', 'system:activity:remove', '#', 'admin', '2024-05-27 15:31:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2014', '活动管理导出', '2009', '5', '#', '', null, '1', '0', 'F', '0', '0', 'system:activity:export', '#', 'admin', '2024-05-27 15:31:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2015', '资源状态及预约时间', '3', '1', 'ResourceState', 'system/ResourceState/index', null, '1', '0', 'C', '0', '0', 'system:ResourceState:list', '#', 'admin', '2024-05-31 22:13:23', '', null, '资源状态及预约时间菜单');
INSERT INTO `sys_menu` VALUES ('2016', '资源状态及预约时间查询', '2015', '1', '#', '', null, '1', '0', 'F', '0', '0', 'system:ResourceState:query', '#', 'admin', '2024-05-31 22:13:24', '', null, '');
INSERT INTO `sys_menu` VALUES ('2017', '资源状态及预约时间新增', '2015', '2', '#', '', null, '1', '0', 'F', '0', '0', 'system:ResourceState:add', '#', 'admin', '2024-05-31 22:13:24', '', null, '');
INSERT INTO `sys_menu` VALUES ('2018', '资源状态及预约时间修改', '2015', '3', '#', '', null, '1', '0', 'F', '0', '0', 'system:ResourceState:edit', '#', 'admin', '2024-05-31 22:13:24', '', null, '');
INSERT INTO `sys_menu` VALUES ('2019', '资源状态及预约时间删除', '2015', '4', '#', '', null, '1', '0', 'F', '0', '0', 'system:ResourceState:remove', '#', 'admin', '2024-05-31 22:13:24', '', null, '');
INSERT INTO `sys_menu` VALUES ('2020', '资源状态及预约时间导出', '2015', '5', '#', '', null, '1', '0', 'F', '0', '0', 'system:ResourceState:export', '#', 'admin', '2024-05-31 22:13:24', '', null, '');
INSERT INTO `sys_menu` VALUES ('2021', '申请管理', '2008', '1', 'apply', 'system/apply/index', null, '1', '0', 'C', '0', '0', 'system:apply:list', '#', 'admin', '2024-06-01 17:32:49', '', null, '申请管理菜单');
INSERT INTO `sys_menu` VALUES ('2022', '申请管理查询', '2021', '1', '#', '', null, '1', '0', 'F', '0', '0', 'system:apply:query', '#', 'admin', '2024-06-01 17:32:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2023', '申请管理新增', '2021', '2', '#', '', null, '1', '0', 'F', '0', '0', 'system:apply:add', '#', 'admin', '2024-06-01 17:32:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2024', '申请管理修改', '2021', '3', '#', '', null, '1', '0', 'F', '0', '0', 'system:apply:edit', '#', 'admin', '2024-06-01 17:32:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2025', '申请管理删除', '2021', '4', '#', '', null, '1', '0', 'F', '0', '0', 'system:apply:remove', '#', 'admin', '2024-06-01 17:32:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2026', '申请管理导出', '2021', '5', '#', '', null, '1', '0', 'F', '0', '0', 'system:apply:export', '#', 'admin', '2024-06-01 17:32:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2027', '资源管理', '0', '5', 'resource', null, null, '1', '0', 'M', '0', '0', null, '#', 'admin', '2024-06-04 22:48:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('2034', '文件存储', '2027', '1', 'files', 'system/files/index', null, '1', '0', 'C', '0', '0', 'system:files:list', '#', 'admin', '2024-06-05 16:34:14', '', null, '文件存储菜单');
INSERT INTO `sys_menu` VALUES ('2035', '文件存储查询', '2034', '1', '#', '', null, '1', '0', 'F', '0', '0', 'system:files:query', '#', 'admin', '2024-06-05 16:34:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2036', '文件存储新增', '2034', '2', '#', '', null, '1', '0', 'F', '0', '0', 'system:files:add', '#', 'admin', '2024-06-05 16:34:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2037', '文件存储修改', '2034', '3', '#', '', null, '1', '0', 'F', '0', '0', 'system:files:edit', '#', 'admin', '2024-06-05 16:34:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2038', '文件存储删除', '2034', '4', '#', '', null, '1', '0', 'F', '0', '0', 'system:files:remove', '#', 'admin', '2024-06-05 16:34:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2039', '文件存储导出', '2034', '5', '#', '', null, '1', '0', 'F', '0', '0', 'system:files:export', '#', 'admin', '2024-06-05 16:34:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2040', '活动详情', '2008', '3', 'activityDetail', 'system/activityDetail/activityDetail', null, '1', '0', 'C', '0', '0', '', '#', 'admin', '2024-06-05 23:07:53', 'admin', '2024-06-05 23:18:06', '');
INSERT INTO `sys_menu` VALUES ('2041', '评论', '2008', '1', 'discuss', 'system/discuss/index', null, '1', '0', 'C', '1', '1', 'system:discuss:list', '#', 'admin', '2024-06-09 20:26:07', 'admin', '2024-06-13 01:01:13', '评论菜单');
INSERT INTO `sys_menu` VALUES ('2042', '评论查询', '2041', '1', '#', '', null, '1', '0', 'F', '0', '0', 'system:discuss:query', '#', 'admin', '2024-06-09 20:26:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2043', '评论新增', '2041', '2', '#', '', null, '1', '0', 'F', '0', '0', 'system:discuss:add', '#', 'admin', '2024-06-09 20:26:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2044', '评论修改', '2041', '3', '#', '', null, '1', '0', 'F', '0', '0', 'system:discuss:edit', '#', 'admin', '2024-06-09 20:26:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2045', '评论删除', '2041', '4', '#', '', null, '1', '0', 'F', '0', '0', 'system:discuss:remove', '#', 'admin', '2024-06-09 20:26:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2046', '评论导出', '2041', '5', '#', '', null, '1', '0', 'F', '0', '0', 'system:discuss:export', '#', 'admin', '2024-06-09 20:26:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2053', '报销', '2008', '1', 'reimbursement', 'system/reimbursement/index', null, '1', '0', 'C', '0', '0', 'system:reimbursement:list', '#', 'admin', '2024-06-09 21:00:33', '', null, '报销菜单');
INSERT INTO `sys_menu` VALUES ('2054', '报销查询', '2053', '1', '#', '', null, '1', '0', 'F', '0', '0', 'system:reimbursement:query', '#', 'admin', '2024-06-09 21:00:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2055', '报销新增', '2053', '2', '#', '', null, '1', '0', 'F', '0', '0', 'system:reimbursement:add', '#', 'admin', '2024-06-09 21:00:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2056', '报销修改', '2053', '3', '#', '', null, '1', '0', 'F', '0', '0', 'system:reimbursement:edit', '#', 'admin', '2024-06-09 21:00:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2057', '报销删除', '2053', '4', '#', '', null, '1', '0', 'F', '0', '0', 'system:reimbursement:remove', '#', 'admin', '2024-06-09 21:00:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2058', '报销导出', '2053', '5', '#', '', null, '1', '0', 'F', '0', '0', 'system:reimbursement:export', '#', 'admin', '2024-06-09 21:00:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2065', '评论', '2008', '1', 'reply', 'system/reply/index', null, '1', '0', 'C', '0', '0', 'system:reply:list', '#', 'admin', '2024-06-10 14:33:02', '', null, '评论菜单');
INSERT INTO `sys_menu` VALUES ('2066', '评论查询', '2065', '1', '#', '', null, '1', '0', 'F', '0', '0', 'system:reply:query', '#', 'admin', '2024-06-10 14:33:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2067', '评论新增', '2065', '2', '#', '', null, '1', '0', 'F', '0', '0', 'system:reply:add', '#', 'admin', '2024-06-10 14:33:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2068', '评论修改', '2065', '3', '#', '', null, '1', '0', 'F', '0', '0', 'system:reply:edit', '#', 'admin', '2024-06-10 14:33:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2069', '评论删除', '2065', '4', '#', '', null, '1', '0', 'F', '0', '0', 'system:reply:remove', '#', 'admin', '2024-06-10 14:33:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2070', '评论导出', '2065', '5', '#', '', null, '1', '0', 'F', '0', '0', 'system:reply:export', '#', 'admin', '2024-06-10 14:33:02', '', null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0x3C703EE696B0E78988E69CACE58685E5AEB96173646173643C2F703E, '0', 'admin', '2024-04-22 21:16:41', 'ry', '2024-05-06 16:29:06', '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-04-22 21:16:41', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('10', '首页设计完成', '2', null, '0', 'admin', '2024-06-07 23:15:59', '', null, null);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=650 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/config', '127.0.0.1', '内网IP', '{\"configId\":5,\"configKey\":\"sys.account.registerUser\",\"configName\":\"账号自助-是否开启用户注册功能\",\"configType\":\"Y\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2024-04-22 21:16:41\",\"params\":{},\"remark\":\"是否开启注册用户功能（true开启，false关闭）\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-04-24 17:20:53', '19');
INSERT INTO `sys_oper_log` VALUES ('101', '部门管理', '1', 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', '1', 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"children\":[],\"deptName\":\"深圳总公司\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"}', '{\"msg\":\"新增部门\'深圳总公司\'失败，部门名称已存在\",\"code\":500}', '0', null, '2024-05-06 14:22:02', '16');
INSERT INTO `sys_oper_log` VALUES ('102', '部门管理', '1', 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', '1', 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"我\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-06 14:22:44', '16');
INSERT INTO `sys_oper_log` VALUES ('103', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/dept/200', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-06 14:22:50', '17');
INSERT INTO `sys_oper_log` VALUES ('104', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"活动项目\",\"email\":\"admin@qq.com\",\"leader\":\"admin\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-06 14:23:32', '9');
INSERT INTO `sys_oper_log` VALUES ('105', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"五四辩论赛\",\"email\":\"54@qq.com\",\"leader\":\"五四\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"parentName\":\"活动项目\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-06 14:26:00', '32');
INSERT INTO `sys_oper_log` VALUES ('106', '通知公告', '2', 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', '1', 'ry', '测试部门', '/system/notice', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-04-22 21:16:41\",\"noticeContent\":\"<p>新版本内容asdasd</p>\",\"noticeId\":1,\"noticeTitle\":\"温馨提醒：2018-07-01 若依新版本发布啦\",\"noticeType\":\"2\",\"params\":{},\"remark\":\"管理员\",\"status\":\"0\",\"updateBy\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-06 16:28:54', '1');
INSERT INTO `sys_oper_log` VALUES ('107', '通知公告', '2', 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', '1', 'ry', '测试部门', '/system/notice', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-04-22 21:16:41\",\"noticeContent\":\"<p>新版本内容asdasd</p>\",\"noticeId\":1,\"noticeTitle\":\"温馨提醒：2018-07-01 若依新版本发布啦\",\"noticeType\":\"2\",\"params\":{},\"remark\":\"管理员\",\"status\":\"0\",\"updateBy\":\"ry\",\"updateTime\":\"2024-05-06 16:28:54\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-06 16:29:06', '16');
INSERT INTO `sys_oper_log` VALUES ('108', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/dept/index\",\"createTime\":\"2024-04-22 21:16:40\",\"icon\":\"tree\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":103,\"menuName\":\"活动管理\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":1,\"path\":\"dept\",\"perms\":\"system:dept:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-13 15:07:32', '16');
INSERT INTO `sys_oper_log` VALUES ('109', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045],\"params\":{},\"roleId\":100,\"roleKey\":\"organizer\",\"roleName\":\"组织者\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-13 15:26:52', '48');
INSERT INTO `sys_oper_log` VALUES ('110', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', '研发部门', '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-13 15:26:52\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"organizer\",\"roleName\":\"组织者\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-13 15:28:48', '16');
INSERT INTO `sys_oper_log` VALUES ('111', '用户管理', '4', 'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()', 'PUT', '1', 'admin', '研发部门', '/system/user/authRole', '127.0.0.1', '内网IP', '{\"roleIds\":\"2\",\"userId\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-13 15:32:45', '0');
INSERT INTO `sys_oper_log` VALUES ('112', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"发送邮件\",\"menuType\":\"F\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-16 22:20:01', '35');
INSERT INTO `sys_oper_log` VALUES ('113', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-04-22 21:16:40\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-16 22:21:25', '18');
INSERT INTO `sys_oper_log` VALUES ('114', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-05-16 22:20:00\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"发送邮件\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-16 22:21:39', '6');
INSERT INTO `sys_oper_log` VALUES ('115', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-05-16 22:20:00\",\"icon\":\"email\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"发送邮件\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"/email/customer/sendHtmlEmail\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-16 22:23:01', '10');
INSERT INTO `sys_oper_log` VALUES ('116', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-04-22 21:16:40\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-16 22:23:23', '2');
INSERT INTO `sys_oper_log` VALUES ('117', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"resource\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-26 01:27:44', '82');
INSERT INTO `sys_oper_log` VALUES ('118', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"resource\"}', null, '0', null, '2024-05-26 01:27:58', '247');
INSERT INTO `sys_oper_log` VALUES ('119', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"date-range\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"活动资源\",\"menuType\":\"M\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"resource\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-26 01:42:29', '25');
INSERT INTO `sys_oper_log` VALUES ('120', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/resource/index\",\"createTime\":\"2024-05-26 01:46:55\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"活动资源\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"resource\",\"perms\":\"system:resource:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'活动资源\'失败，菜单名称已存在\",\"code\":500}', '0', null, '2024-05-26 01:49:42', '10');
INSERT INTO `sys_oper_log` VALUES ('121', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/resource/index\",\"createTime\":\"2024-05-26 01:46:55\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"活动资源\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"resource\",\"perms\":\"system:resource:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'活动资源\'失败，菜单名称已存在\",\"code\":500}', '0', null, '2024-05-26 01:49:48', '4');
INSERT INTO `sys_oper_log` VALUES ('122', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/resource/index\",\"createTime\":\"2024-05-26 01:46:55\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"活动资源\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"resource\",\"perms\":\"system:resource:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-26 01:50:28', '14');
INSERT INTO `sys_oper_log` VALUES ('123', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/resource/index\",\"createTime\":\"2024-05-26 01:46:55\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"活动资源\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"resource\",\"perms\":\"system:resource:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-26 01:50:45', '9');
INSERT INTO `sys_oper_log` VALUES ('124', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/resource/index\",\"createTime\":\"2024-05-26 01:46:55\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"活动资源\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"resource\",\"perms\":\"system:resource:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'活动资源\'失败，菜单名称已存在\",\"code\":500}', '0', null, '2024-05-26 01:51:09', '5');
INSERT INTO `sys_oper_log` VALUES ('125', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/resource/index\",\"createTime\":\"2024-05-26 01:46:55\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"活动资源1\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"resource\",\"perms\":\"system:resource:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-26 01:51:19', '8');
INSERT INTO `sys_oper_log` VALUES ('126', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/resource/index\",\"createTime\":\"2024-05-26 01:46:55\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"活动资源1\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"resource\",\"perms\":\"system:resource:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-26 01:52:02', '7');
INSERT INTO `sys_oper_log` VALUES ('127', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2001,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,2002,2003,2004,2005,2006,2007,116,1055,1056,1057,1058,1059,1060,117,2000,4],\"params\":{},\"roleId\":101,\"roleKey\":\"boss\",\"roleName\":\"管理员\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-26 01:53:34', '39');
INSERT INTO `sys_oper_log` VALUES ('128', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[3,2002,2003],\"params\":{},\"roleId\":102,\"roleKey\":\"student\",\"roleName\":\"普通学生\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-26 01:54:27', '15');
INSERT INTO `sys_oper_log` VALUES ('129', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2001', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2024-05-26 01:54:46', '8');
INSERT INTO `sys_oper_log` VALUES ('130', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-26 01:53:34\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,2002,2003,2004,2005,2006,2007,116,1055,1056,1057,1058,1059,1060,117,2000,4],\"params\":{},\"roleId\":101,\"roleKey\":\"boss\",\"roleName\":\"管理员\",\"roleSort\":0,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-26 01:55:09', '25');
INSERT INTO `sys_oper_log` VALUES ('131', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2001', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-26 01:55:16', '10');
INSERT INTO `sys_oper_log` VALUES ('132', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/resource/index\",\"createTime\":\"2024-05-26 01:46:55\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"活动资源\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"resource\",\"perms\":\"system:resource:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-26 01:55:35', '8');
INSERT INTO `sys_oper_log` VALUES ('133', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-26 01:54:27\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[3,2002,2003],\"params\":{},\"roleId\":102,\"roleKey\":\"student\",\"roleName\":\"普通学生\",\"roleSort\":0,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-26 01:56:18', '21');
INSERT INTO `sys_oper_log` VALUES ('134', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-26 01:54:27\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,103,3,2002,1016,2003],\"params\":{},\"roleId\":102,\"roleKey\":\"student\",\"roleName\":\"普通学生\",\"roleSort\":0,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-26 01:57:17', '17');
INSERT INTO `sys_oper_log` VALUES ('135', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', '研发部门', '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-26 01:54:27\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":102,\"roleKey\":\"student\",\"roleName\":\"普通学生\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-26 01:58:02', '8');
INSERT INTO `sys_oper_log` VALUES ('136', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"activity\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 13:38:48', '109');
INSERT INTO `sys_oper_log` VALUES ('137', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"resource,activity\"}', null, '0', null, '2024-05-27 13:39:55', '281');
INSERT INTO `sys_oper_log` VALUES ('138', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"活动管理\",\"menuType\":\"M\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"activity\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 13:42:45', '16');
INSERT INTO `sys_oper_log` VALUES ('139', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"resource\"}', null, '0', null, '2024-05-27 13:44:28', '29');
INSERT INTO `sys_oper_log` VALUES ('140', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2024-05-27 13:54:37', '17');
INSERT INTO `sys_oper_log` VALUES ('141', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/resource/index\",\"createTime\":\"2024-05-26 01:46:55\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"活动资源\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"resource\",\"perms\":\"system:resource:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 13:55:50', '16');
INSERT INTO `sys_oper_log` VALUES ('142', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/resource/index\",\"createTime\":\"2024-05-26 01:46:55\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"活动资源\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"resource\",\"perms\":\"system:resource:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 13:56:58', '15');
INSERT INTO `sys_oper_log` VALUES ('143', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/resource/index\",\"createTime\":\"2024-05-26 01:46:55\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"活动资源\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"resource\",\"perms\":\"system:resource:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 13:57:46', '17');
INSERT INTO `sys_oper_log` VALUES ('144', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/resource/index\",\"createTime\":\"2024-05-26 01:46:55\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"活动资源\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"resource\",\"perms\":\"system:resource:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 14:00:18', '0');
INSERT INTO `sys_oper_log` VALUES ('145', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"activity_user\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 14:21:09', '12');
INSERT INTO `sys_oper_log` VALUES ('146', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"活动进度\",\"dictType\":\"activity_progress\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 14:27:20', '15');
INSERT INTO `sys_oper_log` VALUES ('147', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"活动准备\",\"dictSort\":0,\"dictType\":\"activity_progress\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 14:28:52', '1');
INSERT INTO `sys_oper_log` VALUES ('148', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"活动进行中\",\"dictSort\":1,\"dictType\":\"activity_progress\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 14:29:05', '8');
INSERT INTO `sys_oper_log` VALUES ('149', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"活动结束\",\"dictSort\":0,\"dictType\":\"activity_progress\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 14:29:18', '16');
INSERT INTO `sys_oper_log` VALUES ('150', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-05-27 14:29:18\",\"default\":false,\"dictCode\":102,\"dictLabel\":\"活动结束\",\"dictSort\":2,\"dictType\":\"activity_progress\",\"dictValue\":\"2\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 14:29:26', '0');
INSERT INTO `sys_oper_log` VALUES ('151', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"审批\",\"dictSort\":3,\"dictType\":\"activity_progress\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 14:29:43', '2');
INSERT INTO `sys_oper_log` VALUES ('152', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"activity\",\"className\":\"Activity\",\"columns\":[{\"capJavaField\":\"ActivityId\",\"columnComment\":\"活动ID\",\"columnId\":7,\"columnName\":\"activity_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-05-27 13:38:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"activityId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ActivityName\",\"columnComment\":\"活动名称\",\"columnId\":8,\"columnName\":\"activity_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-27 13:38:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"activityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"创建人ID\",\"columnId\":9,\"columnName\":\"user_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-27 13:38:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ActivityProgress\",\"columnComment\":\"活动进度\",\"columnId\":10,\"columnName\":\"activity_progress\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-05-27 13:38:48\",\"dictType\":\"activity_progress\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"is', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 14:32:18', '48');
INSERT INTO `sys_oper_log` VALUES ('153', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"activity\"}', null, '0', null, '2024-05-27 14:32:24', '47');
INSERT INTO `sys_oper_log` VALUES ('154', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/activity', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 15:25:23', '79');
INSERT INTO `sys_oper_log` VALUES ('155', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"activity\",\"className\":\"Activity\",\"columns\":[{\"capJavaField\":\"ActivityId\",\"columnComment\":\"活动ID\",\"columnId\":7,\"columnName\":\"activity_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-05-27 13:38:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"activityId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-05-27 15:25:22\",\"usableColumn\":false},{\"capJavaField\":\"ActivityName\",\"columnComment\":\"活动名称\",\"columnId\":8,\"columnName\":\"activity_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-27 13:38:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"activityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-05-27 15:25:22\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"创建人ID\",\"columnId\":9,\"columnName\":\"user_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-27 13:38:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-05-27 15:25:22\",\"usableColumn\":false},{\"capJavaField\":\"ActivityProgress\",\"columnComment\":\"活动进度\",\"columnId\":10,\"columnName\":\"activity_progress\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-05-27 13:38:48\",\"dictType\":\"activity_progress\",\"edit\":true,\"htmlType', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 15:26:30', '55');
INSERT INTO `sys_oper_log` VALUES ('156', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"activity\"}', null, '0', null, '2024-05-27 15:26:38', '49');
INSERT INTO `sys_oper_log` VALUES ('157', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"activity\",\"className\":\"Activity\",\"columns\":[{\"capJavaField\":\"ActivityId\",\"columnComment\":\"活动ID\",\"columnId\":7,\"columnName\":\"activity_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-05-27 13:38:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"activityId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-05-27 15:26:30\",\"usableColumn\":false},{\"capJavaField\":\"ActivityName\",\"columnComment\":\"活动名称\",\"columnId\":8,\"columnName\":\"activity_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-05-27 13:38:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"activityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-05-27 15:26:30\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"创建人ID\",\"columnId\":9,\"columnName\":\"user_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-27 13:38:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-05-27 15:26:30\",\"usableColumn\":false},{\"capJavaField\":\"ActivityProgress\",\"columnComment\":\"活动进度\",\"columnId\":10,\"columnName\":\"activity_progress\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-05-27 13:38:48\",\"dictType\":\"activity_progress\",\"edit\":true,\"htmlType', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 15:27:29', '46');
INSERT INTO `sys_oper_log` VALUES ('158', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"activity\"}', null, '0', null, '2024-05-27 15:27:33', '33');
INSERT INTO `sys_oper_log` VALUES ('159', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":1,\"activityName\":\"辩论赛\",\"activityProgress\":0,\"activityUserList\":[{\"activityId\":1,\"params\":{},\"userId\":13,\"userPosition\":\"老师\"}],\"budget\":10000,\"createdTime\":\"2024-05-07\",\"expend\":500,\"finishTime\":\"2024-05-24\",\"params\":{},\"prepareTime\":\"2024-05-24\",\"processTime\":\"2024-05-16\",\"remark\":\"阿八八八八八\",\"resourceId\":5,\"userId\":202143362}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'id\' cannot be null\r\n### The error may exist in file [E:\\RuanGong\\zzzruoyi\\RuoYi-Vue-master\\ruoyi-system\\target\\classes\\mapper\\system\\ActivityMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into activity_user( id, activity_id, user_id, user_position) values                  ( ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'id\' cannot be null\n; Column \'id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'id\' cannot be null', '2024-05-27 15:41:20', '91');
INSERT INTO `sys_oper_log` VALUES ('160', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":2,\"activityName\":\"辩论赛\",\"activityProgress\":0,\"activityUserList\":[{\"activityId\":2,\"params\":{},\"userId\":13,\"userPosition\":\"老师\"}],\"budget\":10000,\"createdTime\":\"2024-05-07\",\"expend\":500,\"finishTime\":\"2024-05-24\",\"params\":{},\"prepareTime\":\"2024-05-24\",\"processTime\":\"2024-05-16\",\"remark\":\"阿八八八八八\",\"resourceId\":5,\"userId\":35}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'id\' cannot be null\r\n### The error may exist in file [E:\\RuanGong\\zzzruoyi\\RuoYi-Vue-master\\ruoyi-system\\target\\classes\\mapper\\system\\ActivityMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into activity_user( id, activity_id, user_id, user_position) values                  ( ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'id\' cannot be null\n; Column \'id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'id\' cannot be null', '2024-05-27 15:41:26', '15');
INSERT INTO `sys_oper_log` VALUES ('161', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":3,\"activityName\":\"辩论赛\",\"activityProgress\":0,\"activityUserList\":[{\"activityId\":3,\"params\":{},\"userId\":13,\"userPosition\":\"老师\"}],\"budget\":10000,\"createdTime\":\"2024-05-07\",\"expend\":500,\"finishTime\":\"2024-05-24\",\"params\":{},\"prepareTime\":\"2024-05-24\",\"processTime\":\"2024-05-16\",\"remark\":\"阿八八八八八\",\"resourceId\":5,\"userId\":35}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'id\' cannot be null\r\n### The error may exist in file [E:\\RuanGong\\zzzruoyi\\RuoYi-Vue-master\\ruoyi-system\\target\\classes\\mapper\\system\\ActivityMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into activity_user( id, activity_id, user_id, user_position) values                  ( ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'id\' cannot be null\n; Column \'id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'id\' cannot be null', '2024-05-27 15:42:07', '16');
INSERT INTO `sys_oper_log` VALUES ('162', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":4,\"activityName\":\"辩论赛\",\"activityProgress\":0,\"activityUserList\":[{\"activityId\":4,\"params\":{},\"userId\":13,\"userPosition\":\"老师\"}],\"budget\":10000,\"createdTime\":\"2024-05-07\",\"expend\":500,\"finishTime\":\"2024-05-24\",\"params\":{},\"prepareTime\":\"2024-05-24\",\"processTime\":\"2024-05-16\",\"remark\":\"阿八八八八八\",\"resourceId\":5,\"userId\":35}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'id\' cannot be null\r\n### The error may exist in file [E:\\RuanGong\\zzzruoyi\\RuoYi-Vue-master\\ruoyi-system\\target\\classes\\mapper\\system\\ActivityMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into activity_user( id, activity_id, user_id, user_position) values                  ( ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'id\' cannot be null\n; Column \'id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'id\' cannot be null', '2024-05-27 15:42:11', '8');
INSERT INTO `sys_oper_log` VALUES ('163', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":5,\"activityName\":\"dfs\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":5,\"params\":{},\"userId\":123,\"userPosition\":\"fasd\"}],\"params\":{},\"resourceId\":185,\"userId\":48}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 15:50:15', '16');
INSERT INTO `sys_oper_log` VALUES ('164', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', '研发部门', '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-13 15:26:52\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"organizer\",\"roleName\":\"组织者\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 15:51:56', '18');
INSERT INTO `sys_oper_log` VALUES ('165', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":101,\"nickName\":\"组织者\",\"params\":{},\"postIds\":[],\"roleIds\":[100],\"status\":\"0\",\"userId\":100,\"userName\":\"zuzhizhe\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-27 15:52:50', '97');
INSERT INTO `sys_oper_log` VALUES ('166', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":5,\"activityName\":\"dfs\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":5,\"id\":\"1\",\"params\":{},\"userId\":123,\"userPosition\":\"fasd\"}],\"params\":{},\"resourceId\":185,\"userId\":48}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-28 21:09:11', '48');
INSERT INTO `sys_oper_log` VALUES ('167', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":5,\"activityName\":\"df\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":5,\"id\":\"1\",\"params\":{},\"userId\":123,\"userPosition\":\"fasd\"}],\"params\":{},\"resourceId\":185,\"userId\":48}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-28 21:09:27', '21');
INSERT INTO `sys_oper_log` VALUES ('168', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":5,\"activityName\":\"df1\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":5,\"id\":\"1\",\"params\":{},\"userId\":123,\"userPosition\":\"fasd\"}],\"params\":{},\"resourceId\":185,\"userId\":48}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-28 21:14:08', '8');
INSERT INTO `sys_oper_log` VALUES ('169', '活动管理', '3', 'com.ruoyi.web.controller.ActivityController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/activity/5', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-28 21:31:24', '13');
INSERT INTO `sys_oper_log` VALUES ('170', '活动资源;活动资源', '1', 'com.ruoyi.web.controller.system.ResourceController.add()', 'POST', '1', 'admin', '研发部门', '/system/resource', '127.0.0.1', '内网IP', '{\"createdBy\":\"admin\",\"createdTime\":\"2024-05-28\",\"params\":{},\"resourceId\":1,\"resourceName\":\"礼堂\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-28 21:35:25', '16');
INSERT INTO `sys_oper_log` VALUES ('171', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":6,\"activityName\":\"辩论\",\"activityUserList\":[{\"activityId\":6,\"params\":{},\"userId\":15,\"userPosition\":\"老师\"}],\"createdTime\":\"2024-05-28\",\"params\":{},\"resourceId\":15,\"userId\":153}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-28 22:41:15', '14');
INSERT INTO `sys_oper_log` VALUES ('172', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"params\":{},\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-29 02:18:42', '15');
INSERT INTO `sys_oper_log` VALUES ('173', '创建表', '0', 'com.ruoyi.generator.controller.GenController.createTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/createTable', '127.0.0.1', '内网IP', '{\"sql\":\"DROP TABLE IF EXISTS resource_state;\\nCREATE TABLE resource_state(\\n    `id` INT AUTO_INCREMENT COMMENT \'ID\' ,\\n    `activity_id` BIGINT(255) NOT NULL  COMMENT \'活动ID\' ,\\n    `resource_id` BIGINT(255) NOT NULL  COMMENT \'资源ID\' ,\\n    `start_date` DATETIME NOT NULL  COMMENT \'开始时间\' ,\\n    `end_date` DATETIME NOT NULL  COMMENT \'结束时间\' ,\\n    PRIMARY KEY (id)\\n)  COMMENT = \'资源状态及预约时间\';\\n\"}', '{\"msg\":\"创建表结构异常\",\"code\":500}', '0', null, '2024-05-31 22:02:06', '7');
INSERT INTO `sys_oper_log` VALUES ('174', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"resource_state\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-31 22:07:54', '68');
INSERT INTO `sys_oper_log` VALUES ('175', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"state\",\"className\":\"ResourceState\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":26,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-05-31 22:07:53\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ActivityId\",\"columnComment\":\"活动ID\",\"columnId\":27,\"columnName\":\"activity_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-31 22:07:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"activityId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ResourceId\",\"columnComment\":\"资源ID\",\"columnId\":28,\"columnName\":\"resource_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-31 22:07:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"resourceId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StartDate\",\"columnComment\":\"开始时间\",\"columnId\":29,\"columnName\":\"start_date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-05-31 22:07:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-31 22:10:38', '38');
INSERT INTO `sys_oper_log` VALUES ('176', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"ResourceState\",\"className\":\"ResourceState\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":26,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-05-31 22:07:53\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-05-31 22:10:38\",\"usableColumn\":false},{\"capJavaField\":\"ActivityId\",\"columnComment\":\"活动ID\",\"columnId\":27,\"columnName\":\"activity_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-31 22:07:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"activityId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-05-31 22:10:38\",\"usableColumn\":false},{\"capJavaField\":\"ResourceId\",\"columnComment\":\"资源ID\",\"columnId\":28,\"columnName\":\"resource_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-05-31 22:07:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"resourceId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-05-31 22:10:38\",\"usableColumn\":false},{\"capJavaField\":\"StartDate\",\"columnComment\":\"开始时间\",\"columnId\":29,\"columnName\":\"start_date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-05-31 22:07:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-31 22:11:36', '24');
INSERT INTO `sys_oper_log` VALUES ('177', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"resource_state\"}', null, '0', null, '2024-05-31 22:11:40', '276');
INSERT INTO `sys_oper_log` VALUES ('178', '资源状态及预约时间', '1', 'com.ruoyi.web.controller.ResourceStateController.add()', 'POST', '1', 'admin', '研发部门', '/system/ResourceState', '127.0.0.1', '内网IP', '{\"activityId\":1,\"endDate\":\"2024-05-02\",\"id\":1,\"params\":{},\"resourceId\":1,\"startDate\":\"2024-05-01\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-31 22:43:25', '37');
INSERT INTO `sys_oper_log` VALUES ('179', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-31 22:45:01', '42');
INSERT INTO `sys_oper_log` VALUES ('180', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-31 22:45:36', '10');
INSERT INTO `sys_oper_log` VALUES ('181', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-31 22:46:52', '49436');
INSERT INTO `sys_oper_log` VALUES ('182', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-31 22:54:27', '449511');
INSERT INTO `sys_oper_log` VALUES ('183', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-31 22:56:24', '4148');
INSERT INTO `sys_oper_log` VALUES ('184', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-31 22:56:33', '12');
INSERT INTO `sys_oper_log` VALUES ('185', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"活动时间段与已有活动发生冲突\",\"code\":500}', '0', null, '2024-05-31 22:57:32', '15');
INSERT INTO `sys_oper_log` VALUES ('186', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":2,\"userId\":1}', '{\"msg\":\"活动时间段与已有活动发生冲突\",\"code\":500}', '0', null, '2024-05-31 22:58:43', '3');
INSERT INTO `sys_oper_log` VALUES ('187', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":3,\"userId\":1}', '{\"msg\":\"活动时间段与已有活动发生冲突\",\"code\":500}', '0', null, '2024-05-31 22:58:53', '3');
INSERT INTO `sys_oper_log` VALUES ('188', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityName\":\"sad\",\"activityUserList\":[],\"createdTime\":\"2024-05-31\",\"finishTime\":\"2024-05-03\",\"params\":{},\"processTime\":\"2024-05-02\",\"resourceId\":2,\"userId\":1}', '{\"msg\":\"活动时间段与已有活动发生冲突\",\"code\":500}', '0', null, '2024-05-31 22:59:29', '3');
INSERT INTO `sys_oper_log` VALUES ('189', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityName\":\"sad\",\"activityUserList\":[],\"createdTime\":\"2024-05-31\",\"finishTime\":\"2024-05-03\",\"params\":{},\"processTime\":\"2024-05-02\",\"resourceId\":2,\"userId\":1}', '{\"msg\":\"活动时间段与已有活动发生冲突\",\"code\":500}', '0', null, '2024-05-31 23:03:15', '176557');
INSERT INTO `sys_oper_log` VALUES ('190', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-31 23:04:05', '43');
INSERT INTO `sys_oper_log` VALUES ('191', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-02\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"活动时间段与已有活动发生冲突\",\"code\":500}', '0', null, '2024-05-31 23:04:15', '3');
INSERT INTO `sys_oper_log` VALUES ('192', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-31 23:04:32', '12');
INSERT INTO `sys_oper_log` VALUES ('193', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":2,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-31 23:04:40', '12');
INSERT INTO `sys_oper_log` VALUES ('194', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":2,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-31 23:14:08', '47');
INSERT INTO `sys_oper_log` VALUES ('195', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":3,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-31 23:20:00', '48');
INSERT INTO `sys_oper_log` VALUES ('196', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":3,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-31 23:26:57', '377576');
INSERT INTO `sys_oper_log` VALUES ('197', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":3,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-31 23:26:57', '21770');
INSERT INTO `sys_oper_log` VALUES ('198', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":3,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-31 23:27:43', '41516');
INSERT INTO `sys_oper_log` VALUES ('199', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":3,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-05-31 23:28:21', '10471');
INSERT INTO `sys_oper_log` VALUES ('200', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":3,\"userId\":1}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-05-31 23:28:54', '5524');
INSERT INTO `sys_oper_log` VALUES ('201', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":3,\"userId\":1}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-01 00:25:50', '12');
INSERT INTO `sys_oper_log` VALUES ('202', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-01\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-01 00:25:56', '37');
INSERT INTO `sys_oper_log` VALUES ('203', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":8,\"activityName\":\"fsdaf\",\"activityUserList\":[],\"createdTime\":\"2024-05-01\",\"finishTime\":\"2024-06-01\",\"params\":{},\"prepareTime\":\"2024-06-01\",\"processTime\":\"2024-05-01\",\"resourceId\":2,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-01 00:26:42', '25');
INSERT INTO `sys_oper_log` VALUES ('204', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":8,\"activityName\":\"fsdaf\",\"activityUserList\":[],\"createdTime\":\"2024-05-01\",\"finishTime\":\"2024-06-01\",\"params\":{},\"prepareTime\":\"2024-06-01\",\"processTime\":\"2024-05-01\",\"resourceId\":2,\"userId\":1}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-01 00:27:35', '3');
INSERT INTO `sys_oper_log` VALUES ('205', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityName\":\"35473\",\"activityUserList\":[],\"createdTime\":\"2024-05-31\",\"params\":{},\"resourceId\":3,\"userId\":1}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-01 00:30:25', '15');
INSERT INTO `sys_oper_log` VALUES ('206', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityName\":\"35473\",\"activityUserList\":[],\"createdTime\":\"2024-05-31\",\"finishTime\":\"2024-06-19\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":3,\"userId\":1}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-01 00:30:41', '4');
INSERT INTO `sys_oper_log` VALUES ('207', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityName\":\"35473\",\"activityUserList\":[],\"createdTime\":\"2024-05-31\",\"finishTime\":\"2024-06-19\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"活动时间段与已有活动发生冲突\",\"code\":500}', '0', null, '2024-06-01 00:30:45', '7');
INSERT INTO `sys_oper_log` VALUES ('208', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-16\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"活动时间段与已有活动发生冲突\",\"code\":500}', '0', null, '2024-06-01 00:30:59', '8');
INSERT INTO `sys_oper_log` VALUES ('209', '资源状态及预约时间', '2', 'com.ruoyi.web.controller.ResourceStateController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/ResourceState', '127.0.0.1', '内网IP', '{\"activityId\":7,\"endDate\":\"2024-05-02\",\"id\":1,\"params\":{},\"resourceId\":1,\"startDate\":\"2024-05-01\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-01 00:31:40', '14');
INSERT INTO `sys_oper_log` VALUES ('210', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-23\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-01 00:31:55', '33');
INSERT INTO `sys_oper_log` VALUES ('211', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":8,\"activityName\":\"fsdaf\",\"activityUserList\":[],\"createdTime\":\"2024-05-01\",\"finishTime\":\"2024-06-01\",\"params\":{},\"prepareTime\":\"2024-06-01\",\"processTime\":\"2024-05-01\",\"resourceId\":2,\"userId\":1}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-01 00:41:54', '14');
INSERT INTO `sys_oper_log` VALUES ('212', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":8,\"activityName\":\"fsdaf\",\"activityUserList\":[],\"createdTime\":\"2024-05-01\",\"finishTime\":\"2024-06-01\",\"params\":{},\"prepareTime\":\"2024-06-01\",\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"活动时间段与已有活动发生冲突\",\"code\":500}', '0', null, '2024-06-01 00:42:02', '6');
INSERT INTO `sys_oper_log` VALUES ('213', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-23\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-01 00:42:07', '44');
INSERT INTO `sys_oper_log` VALUES ('214', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-23\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', null, '1', 'Index: 0, Size: 0', '2024-06-01 00:45:14', '25');
INSERT INTO `sys_oper_log` VALUES ('215', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-23\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', null, '1', 'Index: 0, Size: 0', '2024-06-01 00:45:21', '13');
INSERT INTO `sys_oper_log` VALUES ('216', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-23\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', null, '1', 'Index: 0, Size: 0', '2024-06-01 00:45:27', '12');
INSERT INTO `sys_oper_log` VALUES ('217', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-23\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', null, '1', 'Index: 0, Size: 0', '2024-06-01 00:46:32', '33408');
INSERT INTO `sys_oper_log` VALUES ('218', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-23\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-01 00:47:28', '51');
INSERT INTO `sys_oper_log` VALUES ('219', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityName\":\"dfssd\",\"activityUserList\":[],\"createdTime\":\"2024-06-01\",\"finishTime\":\"2024-05-15\",\"params\":{},\"processTime\":\"2024-05-02\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"活动时间段与已有活动发生冲突\",\"code\":500}', '0', null, '2024-06-01 16:07:51', '32');
INSERT INTO `sys_oper_log` VALUES ('220', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityName\":\"dfssd\",\"activityUserList\":[],\"createdTime\":\"2024-06-01\",\"finishTime\":\"2024-05-15\",\"params\":{},\"processTime\":\"2024-05-02\",\"resourceId\":6,\"userId\":1}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-01 16:07:58', '0');
INSERT INTO `sys_oper_log` VALUES ('221', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-16\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-01 16:08:16', '43');
INSERT INTO `sys_oper_log` VALUES ('222', '创建表', '0', 'com.ruoyi.generator.controller.GenController.createTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/createTable', '127.0.0.1', '内网IP', '{\"sql\":\"DROP TABLE IF EXISTS apply;\\nCREATE TABLE apply(\\n    `id` INT AUTO_INCREMENT COMMENT \'申请ID\' ,\\n    `activity_id` BIGINT(255) NOT NULL  COMMENT \'活动ID\' ,\\n    `user_id` BIGINT(255) NOT NULL  COMMENT \'申请人ID\' ,\\n    `apply_state` INT NOT NULL  COMMENT \'申请状态\' ,\\n    PRIMARY KEY (id)\\n)  COMMENT = \'申请表\';\"}', '{\"msg\":\"创建表结构异常\",\"code\":500}', '0', null, '2024-06-01 17:24:11', '16');
INSERT INTO `sys_oper_log` VALUES ('223', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"apply\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-01 17:25:05', '63');
INSERT INTO `sys_oper_log` VALUES ('224', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"申请状态\",\"dictType\":\"apply_state\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-01 17:26:52', '16');
INSERT INTO `sys_oper_log` VALUES ('225', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"申请通过\",\"dictSort\":0,\"dictType\":\"apply_state\",\"dictValue\":\"0\",\"listClass\":\"success\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-01 17:28:28', '10');
INSERT INTO `sys_oper_log` VALUES ('226', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"申请失败\",\"dictSort\":1,\"dictType\":\"apply_state\",\"dictValue\":\"1\",\"listClass\":\"danger\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-01 17:28:52', '10');
INSERT INTO `sys_oper_log` VALUES ('227', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"申请中\",\"dictSort\":2,\"dictType\":\"apply_state\",\"dictValue\":\"3\",\"listClass\":\"warning\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-01 17:29:12', '10');
INSERT INTO `sys_oper_log` VALUES ('228', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-06-01 17:29:12\",\"default\":false,\"dictCode\":106,\"dictLabel\":\"申请中\",\"dictSort\":2,\"dictType\":\"apply_state\",\"dictValue\":\"2\",\"isDefault\":\"N\",\"listClass\":\"warning\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-01 17:29:20', '8');
INSERT INTO `sys_oper_log` VALUES ('229', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"apply\",\"className\":\"Apply\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"申请ID\",\"columnId\":31,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-06-01 17:25:05\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ActivityId\",\"columnComment\":\"活动ID\",\"columnId\":32,\"columnName\":\"activity_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-06-01 17:25:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"activityId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"申请人ID\",\"columnId\":33,\"columnName\":\"user_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-06-01 17:25:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ApplyState\",\"columnComment\":\"申请状态\",\"columnId\":34,\"columnName\":\"apply_state\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-06-01 17:25:05\",\"dictType\":\"apply_state\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"applyStat', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-01 17:31:08', '26');
INSERT INTO `sys_oper_log` VALUES ('230', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"apply\"}', null, '0', null, '2024-06-01 17:31:12', '317');
INSERT INTO `sys_oper_log` VALUES ('231', '活动管理', '3', 'com.ruoyi.web.controller.ActivityController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/activity/6', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-02 14:45:00', '51');
INSERT INTO `sys_oper_log` VALUES ('232', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-16\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-02 18:57:24', '63');
INSERT INTO `sys_oper_log` VALUES ('233', '申请管理', '1', 'com.ruoyi.web.controller.ApplyController.add()', 'POST', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":2,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-02 19:07:05', '13');
INSERT INTO `sys_oper_log` VALUES ('234', '申请管理', '1', 'com.ruoyi.web.controller.ApplyController.add()', 'POST', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":2,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-02 22:57:06', '5');
INSERT INTO `sys_oper_log` VALUES ('235', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":1,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-02 22:57:21', '6');
INSERT INTO `sys_oper_log` VALUES ('236', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-02 22:57:27', '6');
INSERT INTO `sys_oper_log` VALUES ('237', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":1,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 14:55:29', '14');
INSERT INTO `sys_oper_log` VALUES ('238', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":1,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 14:55:34', '0');
INSERT INTO `sys_oper_log` VALUES ('239', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":1,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 14:55:49', '0');
INSERT INTO `sys_oper_log` VALUES ('240', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":1,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 14:56:42', '4');
INSERT INTO `sys_oper_log` VALUES ('241', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 14:56:53', '0');
INSERT INTO `sys_oper_log` VALUES ('242', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 14:57:02', '4');
INSERT INTO `sys_oper_log` VALUES ('243', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":1,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:00:02', '0');
INSERT INTO `sys_oper_log` VALUES ('244', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:00:11', '3');
INSERT INTO `sys_oper_log` VALUES ('245', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":1,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:00:18', '17');
INSERT INTO `sys_oper_log` VALUES ('246', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:00:30', '0');
INSERT INTO `sys_oper_log` VALUES ('247', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":1,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:00:37', '17');
INSERT INTO `sys_oper_log` VALUES ('248', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":1,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:03:28', '0');
INSERT INTO `sys_oper_log` VALUES ('249', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:03:33', '0');
INSERT INTO `sys_oper_log` VALUES ('250', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":1,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:03:42', '0');
INSERT INTO `sys_oper_log` VALUES ('251', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:07:43', '2');
INSERT INTO `sys_oper_log` VALUES ('252', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":1,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:07:55', '5');
INSERT INTO `sys_oper_log` VALUES ('253', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:19:09', '0');
INSERT INTO `sys_oper_log` VALUES ('254', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:19:29', '0');
INSERT INTO `sys_oper_log` VALUES ('255', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:21:15', '0');
INSERT INTO `sys_oper_log` VALUES ('256', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:21:27', '0');
INSERT INTO `sys_oper_log` VALUES ('257', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:21:32', '3');
INSERT INTO `sys_oper_log` VALUES ('258', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:21:47', '0');
INSERT INTO `sys_oper_log` VALUES ('259', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:23:55', '14');
INSERT INTO `sys_oper_log` VALUES ('260', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":1,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:24:03', '0');
INSERT INTO `sys_oper_log` VALUES ('261', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":1,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:24:05', '4');
INSERT INTO `sys_oper_log` VALUES ('262', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:24:10', '0');
INSERT INTO `sys_oper_log` VALUES ('263', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:24:10', '0');
INSERT INTO `sys_oper_log` VALUES ('264', '申请管理', '1', 'com.ruoyi.web.controller.ApplyController.add()', 'POST', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":3,\"applyState\":2,\"id\":3,\"params\":{},\"userId\":156}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:25:20', '0');
INSERT INTO `sys_oper_log` VALUES ('265', '申请管理', '1', 'com.ruoyi.web.controller.ApplyController.add()', 'POST', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":1,\"applyState\":2,\"id\":4,\"params\":{},\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:25:39', '0');
INSERT INTO `sys_oper_log` VALUES ('266', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:30:21', '16');
INSERT INTO `sys_oper_log` VALUES ('267', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:30:21', '0');
INSERT INTO `sys_oper_log` VALUES ('268', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":3,\"applyState\":0,\"id\":3,\"params\":{},\"userId\":156}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:30:21', '0');
INSERT INTO `sys_oper_log` VALUES ('269', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":1,\"applyState\":0,\"id\":4,\"params\":{},\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:30:21', '0');
INSERT INTO `sys_oper_log` VALUES ('270', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[{\"activityId\":7,\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"params\":{},\"userId\":2,\"userPosition\":\"学生\"}],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-16\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:42:41', '67');
INSERT INTO `sys_oper_log` VALUES ('271', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"}],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-16\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-03 15:56:38', '16');
INSERT INTO `sys_oper_log` VALUES ('272', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 01:03:24', '16');
INSERT INTO `sys_oper_log` VALUES ('273', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 01:03:24', '0');
INSERT INTO `sys_oper_log` VALUES ('274', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 01:04:59', '32');
INSERT INTO `sys_oper_log` VALUES ('275', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":3,\"applyState\":0,\"id\":3,\"params\":{},\"userId\":156}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 01:05:00', '0');
INSERT INTO `sys_oper_log` VALUES ('276', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"params\":{},\"userId\":1,\"userPosition\":\"\"}],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-16\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 01:12:20', '111');
INSERT INTO `sys_oper_log` VALUES ('277', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 01:16:16', '47');
INSERT INTO `sys_oper_log` VALUES ('278', '添加用户关联', '2', 'com.ruoyi.web.controller.ApplyController.adduser()', 'PUT', '1', 'admin', '研发部门', '/system/apply/adduser', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{},\"userId\":1}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'values ( 1,\n            7 )\' at line 4\r\n### The error may exist in file [E:\\RuanGong\\zzzruoyi\\RuoYi-Vue-master\\ruoyi-system\\target\\classes\\mapper\\system\\ApplyMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.ApplyMapper.addUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into activity_user          ( user_id,             activity_id,           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'values ( 1,\n            7 )\' at line 4\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'values ( 1,\n            7 )\' at line 4', '2024-06-04 01:16:16', '126');
INSERT INTO `sys_oper_log` VALUES ('279', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 01:20:44', '47');
INSERT INTO `sys_oper_log` VALUES ('280', '添加用户关联', '2', 'com.ruoyi.web.controller.ApplyController.adduser()', 'PUT', '1', 'admin', '研发部门', '/system/apply/adduser', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{},\"userId\":1}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \') \n         values ( 1,\n            7 )\' at line 3\r\n### The error may exist in file [E:\\RuanGong\\zzzruoyi\\RuoYi-Vue-master\\ruoyi-system\\target\\classes\\mapper\\system\\ApplyMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.ApplyMapper.addUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into activity_user          ( user_id,             activity_id, )           values ( ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \') \n         values ( 1,\n            7 )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \') \n         values ( 1,\n            7 )\' at line 3', '2024-06-04 01:20:44', '95');
INSERT INTO `sys_oper_log` VALUES ('281', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 01:23:37', '48');
INSERT INTO `sys_oper_log` VALUES ('282', '添加用户关联', '2', 'com.ruoyi.web.controller.ApplyController.adduser()', 'PUT', '1', 'admin', '研发部门', '/system/apply/adduser', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 01:23:37', '0');
INSERT INTO `sys_oper_log` VALUES ('283', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":3,\"applyState\":0,\"id\":3,\"params\":{},\"userId\":156}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 01:24:04', '16');
INSERT INTO `sys_oper_log` VALUES ('284', '添加用户关联', '2', 'com.ruoyi.web.controller.ApplyController.adduser()', 'PUT', '1', 'admin', '研发部门', '/system/apply/adduser', '127.0.0.1', '内网IP', '{\"activityId\":3,\"params\":{},\"userId\":156}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 01:24:04', '0');
INSERT INTO `sys_oper_log` VALUES ('285', '申请管理', '1', 'com.ruoyi.web.controller.ApplyController.add()', 'POST', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":2,\"id\":5,\"params\":{},\"userId\":23}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 01:25:13', '0');
INSERT INTO `sys_oper_log` VALUES ('286', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":5,\"params\":{},\"userId\":23}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 01:25:20', '15');
INSERT INTO `sys_oper_log` VALUES ('287', '添加用户关联', '2', 'com.ruoyi.web.controller.ApplyController.adduser()', 'PUT', '1', 'admin', '研发部门', '/system/apply/adduser', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{},\"userId\":23}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 01:25:20', '16');
INSERT INTO `sys_oper_log` VALUES ('288', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"}],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-16\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 01:25:47', '95');
INSERT INTO `sys_oper_log` VALUES ('289', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":1,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 01:27:16', '15');
INSERT INTO `sys_oper_log` VALUES ('290', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":2,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 01:27:17', '17');
INSERT INTO `sys_oper_log` VALUES ('291', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"student\",\"params\":{},\"postIds\":[],\"roleIds\":[102],\"status\":\"0\",\"userId\":101,\"userName\":\"student\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 20:36:17', '109');
INSERT INTO `sys_oper_log` VALUES ('292', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-06-04 20:36:17\",\"delFlag\":\"0\",\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"student1\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[102],\"roles\":[{\"admin\":false,\"dataScope\":\"3\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":102,\"roleKey\":\"student\",\"roleName\":\"普通学生\",\"roleSort\":0,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":101,\"userName\":\"student\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 20:36:28', '23');
INSERT INTO `sys_oper_log` VALUES ('293', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-13 15:26:52\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2008,2009,2010,2011,2012,2013,2014,2021,2022,2023,2024,2025,2026,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045],\"params\":{},\"roleId\":100,\"roleKey\":\"organizer\",\"roleName\":\"组织者\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 20:37:41', '27');
INSERT INTO `sys_oper_log` VALUES ('294', '角色管理', '3', 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/role/102', '127.0.0.1', '内网IP', '{}', null, '1', '普通学生已分配,不能删除', '2024-06-04 20:37:52', '9');
INSERT INTO `sys_oper_log` VALUES ('295', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-26 01:54:27\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2008,2009,2021,1,103,3,2002,2010,2014,2022,1016,2003],\"params\":{},\"roleId\":102,\"roleKey\":\"student\",\"roleName\":\"普通学生\",\"roleSort\":0,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 20:44:02', '19');
INSERT INTO `sys_oper_log` VALUES ('296', '活动管理', '5', 'com.ruoyi.web.controller.ActivityController.export()', 'POST', '1', 'student', null, '/system/activity/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', null, '0', null, '2024-06-04 20:48:22', '678');
INSERT INTO `sys_oper_log` VALUES ('297', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-26 01:54:27\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2008,2009,2021,1,103,3,2002,2010,2014,2022,2026,1016,2003],\"params\":{},\"roleId\":102,\"roleKey\":\"student\",\"roleName\":\"普通学生\",\"roleSort\":0,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 21:18:44', '50');
INSERT INTO `sys_oper_log` VALUES ('298', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-06-04 20:36:17\",\"delFlag\":\"0\",\"email\":\"\",\"loginDate\":\"2024-06-04 20:48:07\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"student1\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[102],\"roles\":[{\"admin\":false,\"dataScope\":\"3\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":102,\"roleKey\":\"student\",\"roleName\":\"普通学生\",\"roleSort\":0,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":101,\"userName\":\"student\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 21:19:02', '14');
INSERT INTO `sys_oper_log` VALUES ('299', '申请管理', '1', 'com.ruoyi.web.controller.ApplyController.add()', 'POST', '1', 'student', null, '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":2,\"id\":6,\"params\":{},\"userId\":101}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 21:24:32', '20');
INSERT INTO `sys_oper_log` VALUES ('300', '用户管理', '4', 'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()', 'PUT', '1', 'admin', '研发部门', '/system/user/authRole', '127.0.0.1', '内网IP', '{\"roleIds\":\"100\",\"userId\":\"100\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 22:31:25', '30');
INSERT INTO `sys_oper_log` VALUES ('301', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"files\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 22:45:36', '54');
INSERT INTO `sys_oper_log` VALUES ('302', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"资源管理\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"resource\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 22:48:12', '18');
INSERT INTO `sys_oper_log` VALUES ('303', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"files\",\"className\":\"Files\",\"columns\":[{\"capJavaField\":\"FileId\",\"columnComment\":\"文件ID\",\"columnId\":35,\"columnName\":\"file_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-06-04 22:45:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"fileId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FileName\",\"columnComment\":\"文件名称\",\"columnId\":36,\"columnName\":\"file_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-04 22:45:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"fileName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FilePath\",\"columnComment\":\"文件路径\",\"columnId\":37,\"columnName\":\"file_path\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-04 22:45:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"filePath\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UploadBy\",\"columnComment\":\"文件上传者ID;上传者姓名\",\"columnId\":38,\"columnName\":\"upload_by\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-04 22:45:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequi', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 22:48:40', '32');
INSERT INTO `sys_oper_log` VALUES ('304', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"files\"}', null, '0', null, '2024-06-04 22:48:43', '305');
INSERT INTO `sys_oper_log` VALUES ('305', '申请管理', '1', 'com.ruoyi.web.controller.ApplyController.add()', 'POST', '1', 'admin', '研发部门', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":2,\"id\":7,\"params\":{},\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 23:35:36', '30');
INSERT INTO `sys_oper_log` VALUES ('306', '文件存储', '1', 'com.ruoyi.web.controller.FilesController.add()', 'POST', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":1,\"fileId\":1,\"fileName\":\"1\",\"filePath\":\"1\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 00:11:03', '0');
INSERT INTO `sys_oper_log` VALUES ('307', '文件存储', '3', 'com.ruoyi.web.controller.FilesController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/files/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 00:11:14', '16');
INSERT INTO `sys_oper_log` VALUES ('308', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"files\",\"className\":\"Files\",\"columns\":[{\"capJavaField\":\"FileId\",\"columnComment\":\"文件ID\",\"columnId\":35,\"columnName\":\"file_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-06-04 22:45:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"fileId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-06-04 22:48:40\",\"usableColumn\":false},{\"capJavaField\":\"FileName\",\"columnComment\":\"文件名称\",\"columnId\":36,\"columnName\":\"file_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-04 22:45:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"fileName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-06-04 22:48:40\",\"usableColumn\":false},{\"capJavaField\":\"FilePath\",\"columnComment\":\"文件路径\",\"columnId\":37,\"columnName\":\"file_path\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-04 22:45:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"fileUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"filePath\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-06-04 22:48:40\",\"usableColumn\":false},{\"capJavaField\":\"UploadBy\",\"columnComment\":\"文件上传者ID;上传者姓名\",\"columnId\":38,\"columnName\":\"upload_by\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-04 22:45:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":fa', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 16:29:25', '81');
INSERT INTO `sys_oper_log` VALUES ('309', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"files\"}', null, '0', null, '2024-06-05 16:29:28', '298');
INSERT INTO `sys_oper_log` VALUES ('310', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2028', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2024-06-05 16:55:59', '9');
INSERT INTO `sys_oper_log` VALUES ('311', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2028', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2024-06-05 16:56:10', '5');
INSERT INTO `sys_oper_log` VALUES ('312', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/files/index\",\"createTime\":\"2024-06-04 22:49:47\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2028,\"menuName\":\"文件存储\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2027,\"path\":\"files\",\"perms\":\"system:files:list\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 16:56:22', '16');
INSERT INTO `sys_oper_log` VALUES ('313', '文件存储', '1', 'com.ruoyi.web.controller.FilesController.add()', 'POST', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"1\",\"filePath\":\"/profile/upload/2024/06/05/协议调研_20240605165933A001.doc\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 16:59:43', '16');
INSERT INTO `sys_oper_log` VALUES ('314', '文件存储', '1', 'com.ruoyi.web.controller.FilesController.add()', 'POST', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"fileId\":3,\"fileName\":\"12\",\"filePath\":\"/profile/upload/2024/06/05/协议调研_20240605170127A002.doc\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 17:01:32', '15');
INSERT INTO `sys_oper_log` VALUES ('315', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"1\",\"filePath\":\"/profile/upload/2024/06/05/协议调研_20240605165933A001.doc,/profile/upload/2024/06/05/test_20240605210912A003.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:09:15', '0');
INSERT INTO `sys_oper_log` VALUES ('316', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/activityDetail\",\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"活动详情\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2008,\"path\":\"activity\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 23:07:53', '16');
INSERT INTO `sys_oper_log` VALUES ('317', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/activityDetail\",\"createTime\":\"2024-06-05 23:07:53\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2040,\"menuName\":\"活动详情\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2008,\"path\":\"activity\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 23:11:29', '7');
INSERT INTO `sys_oper_log` VALUES ('318', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/activityDetail\",\"createTime\":\"2024-06-05 23:07:53\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2040,\"menuName\":\"活动详情\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2008,\"path\":\"activityDetail\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 23:15:44', '5');
INSERT INTO `sys_oper_log` VALUES ('319', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/activityDetail/activityDetail\",\"createTime\":\"2024-06-05 23:07:53\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2040,\"menuName\":\"活动详情\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2008,\"path\":\"activityDetail\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 23:18:06', '16');
INSERT INTO `sys_oper_log` VALUES ('320', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileName\":\"头像sadas\",\"filePath\":\"/profile/upload/2024/06/07/test_20240607015319A001.png,/profile/upload/2024/06/07/震网_20240607015327A002.jpg\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2024-06-07 01:53:30', '31');
INSERT INTO `sys_oper_log` VALUES ('321', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"}],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-16\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 01:53:30', '142');
INSERT INTO `sys_oper_log` VALUES ('322', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"/profile/upload/2024/06/05/协议调研_20240605165933A001.doc,/profile/upload/2024/06/05/test_20240605210912A003.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 01:54:41', '32');
INSERT INTO `sys_oper_log` VALUES ('323', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"}],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-16\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 01:54:41', '126');
INSERT INTO `sys_oper_log` VALUES ('324', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"/profile/upload/2024/06/07/test_20240607015548A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 01:55:50', '0');
INSERT INTO `sys_oper_log` VALUES ('325', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 01:56:27', '0');
INSERT INTO `sys_oper_log` VALUES ('326', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"}],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-16\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 01:56:27', '63');
INSERT INTO `sys_oper_log` VALUES ('327', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"/profile/upload/2024/06/07/test_20240607015548A001.png,/profile/upload/2024/06/07/震网_20240607015715A002.jpg\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 01:57:18', '16');
INSERT INTO `sys_oper_log` VALUES ('328', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"}],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-16\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 01:57:18', '47');
INSERT INTO `sys_oper_log` VALUES ('329', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"/profile/upload/2024/06/07/震网_20240607015715A002.jpg\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 01:57:57', '16');
INSERT INTO `sys_oper_log` VALUES ('330', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"/profile/upload/2024/06/07/test_20240607020701A003.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 02:07:03', '15');
INSERT INTO `sys_oper_log` VALUES ('331', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"}],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-16\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 02:07:03', '48');
INSERT INTO `sys_oper_log` VALUES ('332', '文件存储', '1', 'com.ruoyi.web.controller.FilesController.add()', 'POST', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":8,\"fileId\":4,\"fileName\":\"发达打发打发\",\"filePath\":\"/profile/upload/2024/06/07/网络安全4_20240607020946A005.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 02:09:55', '16');
INSERT INTO `sys_oper_log` VALUES ('333', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":8,\"activityName\":\"fsdaf\",\"activityUserList\":[],\"createdTime\":\"2024-05-01\",\"finishTime\":\"2024-06-01\",\"params\":{},\"prepareTime\":\"2024-06-01\",\"processTime\":\"2024-05-01\",\"resourceId\":2,\"userId\":1}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-07 14:07:04', '4');
INSERT INTO `sys_oper_log` VALUES ('334', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":8,\"fileId\":4,\"fileName\":\"头像fsdaf\",\"filePath\":\"/profile/upload/2024/06/07/网络安全4_20240607020946A005.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:07:04', '4');
INSERT INTO `sys_oper_log` VALUES ('335', '活动资源;活动资源', '1', 'com.ruoyi.web.controller.system.ResourceController.add()', 'POST', '1', 'admin', '研发部门', '/system/resource', '127.0.0.1', '内网IP', '{\"createdBy\":\"admin\",\"createdTime\":\"2024-06-07\",\"params\":{},\"resourceId\":2,\"resourceName\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:07:42', '14');
INSERT INTO `sys_oper_log` VALUES ('336', '通知公告', '1', 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', '1', 'admin', '研发部门', '/system/notice', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"noticeTitle\":\"首页设计完成\",\"noticeType\":\"2\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 23:15:59', '20');
INSERT INTO `sys_oper_log` VALUES ('337', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 01:02:50', '17');
INSERT INTO `sys_oper_log` VALUES ('338', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"}],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-16\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 01:02:50', '65');
INSERT INTO `sys_oper_log` VALUES ('339', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 01:03:12', '4');
INSERT INTO `sys_oper_log` VALUES ('340', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"}],\"createdTime\":\"2024-05-28\",\"finishTime\":\"2024-05-16\",\"params\":{},\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 01:03:12', '20');
INSERT INTO `sys_oper_log` VALUES ('341', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 01:05:43', '3');
INSERT INTO `sys_oper_log` VALUES ('342', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":200,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 01:05:44', '22');
INSERT INTO `sys_oper_log` VALUES ('343', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 02:30:39', '6');
INSERT INTO `sys_oper_log` VALUES ('344', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":200,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛旨在培养参赛者的思辨能力和表达能力，同时也提供了一个展示个人才华和团队协作的舞台。在这里，每位参赛者都有机会发表自己的观点，通过摆事实、讲道理的方式，努力说服评委和观众。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。通过参与辩论赛，参赛者可以锻炼自己的逻辑思维能力、语言表达能力和团队协作能力，为未来的学术和职业发展奠定坚实基础。同时，观众也能在观看比赛的过程中，感受到辩论所带来的智慧与激情的碰撞，拓宽自己的视野和思维。总之，辩论赛是一场智慧的较量，也是一次思想的盛宴。它不仅能够提升个人的综合素质，还能增进人们对社会问题的认识和思考。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', null, '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'remark\' at row 1\r\n### The error may exist in file [D:\\Ruangong\\RuoYi-Vue-master\\ruoyi-system\\target\\classes\\mapper\\system\\ActivityMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.ActivityMapper.updateActivity-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update activity          SET activity_name = ?,             user_id = ?,             activity_progress = ?,             budget = ?,             expend = ?,             created_time = ?,             prepare_time = ?,             process_time = ?,             finish_time = ?,                                       resource_id = ?,             remark = ?          where activity_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'remark\' at row 1\n; Data truncation: Data too long for column \'remark\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'remark\' at row 1', '2024-06-08 02:30:39', '106');
INSERT INTO `sys_oper_log` VALUES ('345', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 02:30:50', '3');
INSERT INTO `sys_oper_log` VALUES ('346', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":200,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"辩论赛\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 02:30:50', '17');
INSERT INTO `sys_oper_log` VALUES ('347', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 02:31:17', '3');
INSERT INTO `sys_oper_log` VALUES ('348', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":200,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。通过参与辩论赛，参赛者可以锻炼自己的逻辑思维能力、语言表达能力和团队协作能力，为未来的学术和职业发展奠定坚实基础。同时，观众也能在观看比赛的过程中，感受到辩论所带来的智慧与激情的碰撞，拓宽自己的视野和思维。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', null, '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'remark\' at row 1\r\n### The error may exist in file [D:\\Ruangong\\RuoYi-Vue-master\\ruoyi-system\\target\\classes\\mapper\\system\\ActivityMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.ActivityMapper.updateActivity-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update activity          SET activity_name = ?,             user_id = ?,             activity_progress = ?,             budget = ?,             expend = ?,             created_time = ?,             prepare_time = ?,             process_time = ?,             finish_time = ?,                                       resource_id = ?,             remark = ?          where activity_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'remark\' at row 1\n; Data truncation: Data too long for column \'remark\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'remark\' at row 1', '2024-06-08 02:31:17', '21');
INSERT INTO `sys_oper_log` VALUES ('349', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 02:31:38', '3');
INSERT INTO `sys_oper_log` VALUES ('350', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":200,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 02:31:39', '17');
INSERT INTO `sys_oper_log` VALUES ('351', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 03:20:40', '8');
INSERT INTO `sys_oper_log` VALUES ('352', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":200,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"\\t\\t辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。\\t\\t在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。\\t\\t我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 03:20:40', '32');
INSERT INTO `sys_oper_log` VALUES ('353', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 03:24:23', '3');
INSERT INTO `sys_oper_log` VALUES ('354', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":200,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 03:24:23', '29');
INSERT INTO `sys_oper_log` VALUES ('355', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 03:53:29', '7');
INSERT INTO `sys_oper_log` VALUES ('356', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":200,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"<strong>﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！</strong>\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 03:53:29', '20');
INSERT INTO `sys_oper_log` VALUES ('357', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 03:53:50', '2');
INSERT INTO `sys_oper_log` VALUES ('358', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":200,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"<strong>﻿</strong>辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 03:53:50', '21');
INSERT INTO `sys_oper_log` VALUES ('359', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 03:54:08', '2');
INSERT INTO `sys_oper_log` VALUES ('360', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":200,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 03:54:08', '19');
INSERT INTO `sys_oper_log` VALUES ('361', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 03:56:28', '2');
INSERT INTO `sys_oper_log` VALUES ('362', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":200,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 03:56:28', '20');
INSERT INTO `sys_oper_log` VALUES ('363', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"sch\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":103,\"userName\":\"sch\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:04:39', '115');
INSERT INTO `sys_oper_log` VALUES ('364', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-26 01:54:27\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2008,2009,2021,1,103,3,2002,2010,2014,2022,2026,2040,1016,2003],\"params\":{},\"roleId\":102,\"roleKey\":\"student\",\"roleName\":\"普通学生\",\"roleSort\":0,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:10:02', '177');
INSERT INTO `sys_oper_log` VALUES ('365', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-26 01:54:27\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2008,2009,2021,1,103,107,3,2002,2010,2014,2022,2026,2040,1016,1035,2003],\"params\":{},\"roleId\":102,\"roleKey\":\"student\",\"roleName\":\"普通学生\",\"roleSort\":0,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:12:45', '20');
INSERT INTO `sys_oper_log` VALUES ('366', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-26 01:54:27\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2008,2009,2021,1,103,107,2,3,2002,2027,2034,2010,2014,2022,2026,2040,1016,1035,110,1049,1050,1051,1052,1053,1054,2003,2035,2039],\"params\":{},\"roleId\":102,\"roleKey\":\"student\",\"roleName\":\"普通学生\",\"roleSort\":0,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:14:53', '21');
INSERT INTO `sys_oper_log` VALUES ('367', '角色管理', '3', 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/role/2', '127.0.0.1', '内网IP', '{}', null, '1', '普通角色已分配,不能删除', '2024-06-09 17:15:17', '10');
INSERT INTO `sys_oper_log` VALUES ('368', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"辩手\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"parentName\":\"五四辩论赛\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:17:00', '24');
INSERT INTO `sys_oper_log` VALUES ('369', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-06-09 17:04:39\",\"delFlag\":\"0\",\"deptId\":103,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"sch\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[102],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":103,\"userName\":\"sch\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:18:01', '19');
INSERT INTO `sys_oper_log` VALUES ('370', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"\",\"createTime\":\"2024-06-08 01:11:46\",\"delFlag\":\"0\",\"deptId\":103,\"email\":\"\",\"loginDate\":\"2024-06-08 01:11:57\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"lyy\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[102],\"roles\":[],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":102,\"userName\":\"lyy\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:18:54', '17');
INSERT INTO `sys_oper_log` VALUES ('371', '申请管理', '1', 'com.ruoyi.web.controller.ApplyController.add()', 'POST', '1', 'sch', '辩手', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":2,\"id\":8,\"params\":{},\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:22:55', '11');
INSERT INTO `sys_oper_log` VALUES ('372', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '辩手', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":8,\"params\":{},\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:23:30', '7');
INSERT INTO `sys_oper_log` VALUES ('373', '添加用户关联', '2', 'com.ruoyi.web.controller.ApplyController.adduser()', 'PUT', '1', 'admin', '辩手', '/system/apply/adduser', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{},\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:23:30', '6');
INSERT INTO `sys_oper_log` VALUES ('374', '申请管理', '1', 'com.ruoyi.web.controller.ApplyController.add()', 'POST', '1', 'lyy', '辩手', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":2,\"id\":9,\"params\":{},\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:26:00', '7');
INSERT INTO `sys_oper_log` VALUES ('375', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'admin', '辩手', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"applyState\":0,\"id\":9,\"params\":{},\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:26:46', '8');
INSERT INTO `sys_oper_log` VALUES ('376', '添加用户关联', '2', 'com.ruoyi.web.controller.ApplyController.adduser()', 'PUT', '1', 'admin', '辩手', '/system/apply/adduser', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{},\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:26:46', '6');
INSERT INTO `sys_oper_log` VALUES ('377', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '辩手', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像sadas\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:28:15', '5');
INSERT INTO `sys_oper_log` VALUES ('378', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"sadas\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"},{\"activityId\":7,\"id\":\"11\",\"params\":{},\"userId\":103},{\"activityId\":7,\"id\":\"12\",\"params\":{},\"userId\":102}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":200,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:28:15', '34');
INSERT INTO `sys_oper_log` VALUES ('379', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '辩手', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:35:36', '8');
INSERT INTO `sys_oper_log` VALUES ('380', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"3\",\"params\":{},\"userId\":1,\"userPosition\":\"老师\"},{\"activityId\":7,\"id\":\"4\",\"params\":{},\"userId\":3,\"userPosition\":\"学生\"},{\"activityId\":7,\"id\":\"5\",\"params\":{},\"userId\":1,\"userPosition\":\"\"},{\"activityId\":7,\"id\":\"8\",\"params\":{},\"userId\":1},{\"activityId\":7,\"id\":\"10\",\"params\":{},\"userId\":23,\"userPosition\":\"123\"},{\"activityId\":7,\"id\":\"11\",\"params\":{},\"userId\":103},{\"activityId\":7,\"id\":\"12\",\"params\":{},\"userId\":102}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":200,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:35:36', '22');
INSERT INTO `sys_oper_log` VALUES ('381', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '辩手', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:36:22', '1');
INSERT INTO `sys_oper_log` VALUES ('382', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"11\",\"params\":{},\"userId\":103,\"userPosition\":\"辩手\"},{\"activityId\":7,\"id\":\"12\",\"params\":{},\"userId\":102,\"userPosition\":\"辩手\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":200,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:36:22', '18');
INSERT INTO `sys_oper_log` VALUES ('383', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":8,\"activityName\":\"篮球赛\",\"activityUserList\":[],\"createdTime\":\"2024-05-01\",\"finishTime\":\"2024-06-01\",\"params\":{},\"prepareTime\":\"2024-06-01\",\"processTime\":\"2024-05-01\",\"resourceId\":2,\"userId\":1}', null, '1', 'Index: 0, Size: 0', '2024-06-09 17:37:38', '13');
INSERT INTO `sys_oper_log` VALUES ('384', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '辩手', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":8,\"fileId\":4,\"fileName\":\"头像篮球赛\",\"filePath\":\"/profile/upload/2024/06/07/网络安全4_20240607020946A005.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:37:38', '8');
INSERT INTO `sys_oper_log` VALUES ('385', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":8,\"activityName\":\"篮球赛\",\"activityUserList\":[],\"createdTime\":\"2024-05-01\",\"finishTime\":\"2024-06-01\",\"params\":{},\"prepareTime\":\"2024-06-01\",\"processTime\":\"2024-05-01\",\"resourceId\":2,\"userId\":1}', null, '1', 'Index: 0, Size: 0', '2024-06-09 17:42:50', '8');
INSERT INTO `sys_oper_log` VALUES ('386', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '辩手', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":8,\"fileId\":4,\"fileName\":\"头像篮球赛\",\"filePath\":\"/profile/upload/2024/06/07/网络安全4_20240607020946A005.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:42:50', '3');
INSERT INTO `sys_oper_log` VALUES ('387', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":8,\"activityName\":\"篮球赛\",\"activityUserList\":[{\"params\":{},\"userId\":102,\"userPosition\":\"队员\"}],\"createdTime\":\"2024-05-01\",\"finishTime\":\"2024-06-01\",\"params\":{},\"prepareTime\":\"2024-06-01\",\"processTime\":\"2024-05-01\",\"resourceId\":2,\"userId\":1}', null, '1', 'Index: 0, Size: 0', '2024-06-09 17:43:31', '7');
INSERT INTO `sys_oper_log` VALUES ('388', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '辩手', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":8,\"fileId\":4,\"fileName\":\"头像篮球赛\",\"filePath\":\"/profile/upload/2024/06/07/网络安全4_20240607020946A005.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:43:31', '3');
INSERT INTO `sys_oper_log` VALUES ('389', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '辩手', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":8,\"fileId\":4,\"fileName\":\"头像篮球赛\",\"filePath\":\"\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:43:37', '4');
INSERT INTO `sys_oper_log` VALUES ('390', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":8,\"activityName\":\"篮球赛\",\"activityUserList\":[{\"params\":{},\"userId\":102,\"userPosition\":\"队员\"}],\"createdTime\":\"2024-05-01\",\"finishTime\":\"2024-06-01\",\"params\":{},\"prepareTime\":\"2024-06-01\",\"processTime\":\"2024-05-01\",\"resourceId\":2,\"userId\":1}', null, '1', 'Index: 0, Size: 0', '2024-06-09 17:43:37', '7');
INSERT INTO `sys_oper_log` VALUES ('391', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":8,\"activityName\":\"a\",\"activityUserList\":[{\"params\":{},\"userId\":102,\"userPosition\":\"队员\"}],\"createdTime\":\"2024-05-01\",\"finishTime\":\"2024-06-01\",\"params\":{},\"prepareTime\":\"2024-06-01\",\"processTime\":\"2024-05-01\",\"resourceId\":2,\"userId\":1}', null, '1', 'Index: 0, Size: 0', '2024-06-09 17:43:49', '7');
INSERT INTO `sys_oper_log` VALUES ('392', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '辩手', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":8,\"fileId\":4,\"fileName\":\"头像a\",\"filePath\":\"\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:43:49', '5');
INSERT INTO `sys_oper_log` VALUES ('393', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":8,\"activityName\":\"fsdaf\",\"activityUserList\":[],\"createdTime\":\"2024-05-01\",\"finishTime\":\"2024-06-01\",\"params\":{},\"prepareTime\":\"2024-06-01\",\"processTime\":\"2024-05-01\",\"resourceId\":2,\"userId\":1}', null, '1', 'Index: 0, Size: 0', '2024-06-09 17:44:39', '6');
INSERT INTO `sys_oper_log` VALUES ('394', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '辩手', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":8,\"fileId\":4,\"fileName\":\"头像fsdaf\",\"filePath\":\"/profile/upload/2024/06/07/网络安全4_20240607020946A005.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:44:39', '4');
INSERT INTO `sys_oper_log` VALUES ('395', '活动管理', '3', 'com.ruoyi.web.controller.ActivityController.remove()', 'DELETE', '1', 'admin', '辩手', '/system/activity/8', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:45:24', '9');
INSERT INTO `sys_oper_log` VALUES ('396', '活动资源;活动资源', '2', 'com.ruoyi.web.controller.system.ResourceController.edit()', 'PUT', '1', 'admin', '辩手', '/system/resource', '127.0.0.1', '内网IP', '{\"createdBy\":\"admin\",\"createdTime\":\"2024-06-07\",\"params\":{},\"resourceId\":2,\"resourceName\":\"操场\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:46:09', '10');
INSERT INTO `sys_oper_log` VALUES ('397', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":9,\"activityName\":\"篮球赛\",\"activityProgress\":0,\"activityUserList\":[],\"createdTime\":\"2024-06-09\",\"params\":{},\"resourceId\":2,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:46:41', '12');
INSERT INTO `sys_oper_log` VALUES ('398', '文件存储', '1', 'com.ruoyi.web.controller.FilesController.add()', 'POST', '1', 'admin', '辩手', '/system/files', '127.0.0.1', '内网IP', '{\"fileName\":\"头像篮球赛\",\"params\":{},\"uploadBy\":\"1\"}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'file_path\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Ruangong\\RuoYi-Vue-master\\ruoyi-system\\target\\classes\\mapper\\system\\FilesMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.FilesMapper.insertFiles-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into files          ( file_name,                          upload_by )           values ( ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'file_path\' doesn\'t have a default value\n; Field \'file_path\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'file_path\' doesn\'t have a default value', '2024-06-09 17:46:41', '80');
INSERT INTO `sys_oper_log` VALUES ('399', '活动管理', '3', 'com.ruoyi.web.controller.ActivityController.remove()', 'DELETE', '1', 'admin', '辩手', '/system/activity/9', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:47:35', '13');
INSERT INTO `sys_oper_log` VALUES ('400', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":10,\"activityName\":\"篮球赛\",\"activityProgress\":0,\"activityUserList\":[],\"createdTime\":\"2024-06-09\",\"params\":{},\"resourceId\":2,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:48:25', '11');
INSERT INTO `sys_oper_log` VALUES ('401', '文件存储', '1', 'com.ruoyi.web.controller.FilesController.add()', 'POST', '1', 'admin', '辩手', '/system/files', '127.0.0.1', '内网IP', '{\"fileId\":5,\"fileName\":\"头像篮球赛\",\"filePath\":\"/profile/upload/2024/06/09/iogo_20240609174817A001.jpg\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:48:25', '6');
INSERT INTO `sys_oper_log` VALUES ('402', '申请管理', '3', 'com.ruoyi.web.controller.ApplyController.remove()', 'DELETE', '1', 'admin', '辩手', '/system/apply/1,2,3,4,5,6,7', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:51:50', '6');
INSERT INTO `sys_oper_log` VALUES ('403', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', '辩手', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-05-27 15:52:50\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"五四辩论赛\",\"leader\":\"五四\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":101,\"email\":\"\",\"loginDate\":\"2024-05-27 15:53:08\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"组织者\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[100],\"roles\":[{\"admin\":false,\"dataScope\":\"4\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":100,\"roleKey\":\"organizer\",\"roleName\":\"组织者\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"zuzhizhe\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:55:58', '13');
INSERT INTO `sys_oper_log` VALUES ('404', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', '辩手', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-05-27 15:52:50\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"五四辩论赛\",\"leader\":\"五四\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":101,\"email\":\"\",\"loginDate\":\"2024-05-27 15:53:08\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"石从灏\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[100],\"roles\":[{\"admin\":false,\"dataScope\":\"4\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":100,\"roleKey\":\"organizer\",\"roleName\":\"组织者\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"zuzhizhe\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:56:50', '15');
INSERT INTO `sys_oper_log` VALUES ('405', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '辩手', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:57:09', '3');
INSERT INTO `sys_oper_log` VALUES ('406', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"11\",\"params\":{},\"userId\":103,\"userPosition\":\"辩手\"},{\"activityId\":7,\"id\":\"12\",\"params\":{},\"userId\":102,\"userPosition\":\"辩手\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":200,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:57:09', '18');
INSERT INTO `sys_oper_log` VALUES ('407', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', '辩手', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-06-04 20:36:17\",\"delFlag\":\"0\",\"email\":\"\",\"loginDate\":\"2024-06-04 21:24:55\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"石二灏\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[100],\"roles\":[{\"admin\":false,\"dataScope\":\"3\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":102,\"roleKey\":\"student\",\"roleName\":\"普通学生\",\"roleSort\":0,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":101,\"userName\":\"student\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:58:02', '13');
INSERT INTO `sys_oper_log` VALUES ('408', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', '辩手', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":102,\"deptName\":\"篮球赛\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"parentName\":\"活动项目\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 17:58:45', '20');
INSERT INTO `sys_oper_log` VALUES ('409', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'zuzhizhe', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"11\",\"params\":{},\"userId\":103,\"userPosition\":\"辩手\"},{\"activityId\":7,\"id\":\"12\",\"params\":{},\"userId\":102,\"userPosition\":\"辩手\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":200,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 18:04:59', '55');
INSERT INTO `sys_oper_log` VALUES ('410', '角色管理', '3', 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'DELETE', '1', 'admin', '辩手', '/system/role/2', '127.0.0.1', '内网IP', '{}', null, '1', '普通角色已分配,不能删除', '2024-06-09 18:08:07', '10');
INSERT INTO `sys_oper_log` VALUES ('411', '角色管理', '4', 'com.ruoyi.web.controller.system.SysRoleController.cancelAuthUser()', 'PUT', '1', 'admin', '辩手', '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\"roleId\":2,\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 18:08:18', '6');
INSERT INTO `sys_oper_log` VALUES ('412', '角色管理', '3', 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'DELETE', '1', 'admin', '辩手', '/system/role/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 18:08:24', '34');
INSERT INTO `sys_oper_log` VALUES ('413', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '辩手', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"discuss\"}', null, '1', '', '2024-06-09 20:19:21', '4');
INSERT INTO `sys_oper_log` VALUES ('414', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', '辩手', '/tool/gen/7', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 20:20:00', '9');
INSERT INTO `sys_oper_log` VALUES ('415', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '辩手', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"discuss\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 20:20:04', '29');
INSERT INTO `sys_oper_log` VALUES ('416', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '辩手', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"discuss\",\"className\":\"Discuss\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":40,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-06-09 20:20:04\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"用户ID\",\"columnId\":41,\"columnName\":\"user_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-06-09 20:20:04\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ActivityId\",\"columnComment\":\"活动ID\",\"columnId\":42,\"columnName\":\"activity_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-06-09 20:20:04\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"activityId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CreatedTime\",\"columnComment\":\"评论时间\",\"columnId\":43,\"columnName\":\"created_time\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-06-09 20:20:04\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"createdTime\",\"javaType\":\"Date\",', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 20:20:27', '20');
INSERT INTO `sys_oper_log` VALUES ('417', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '辩手', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"discuss\"}', null, '0', null, '2024-06-09 20:20:30', '74');
INSERT INTO `sys_oper_log` VALUES ('418', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '辩手', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"reimbursement\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 20:32:18', '79');
INSERT INTO `sys_oper_log` VALUES ('419', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '辩手', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"reimbursement\",\"className\":\"Reimbursement\",\"columns\":[{\"capJavaField\":\"ProjectId\",\"columnComment\":\"ID\",\"columnId\":45,\"columnName\":\"project_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-06-09 20:32:18\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"projectId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"用户ID\",\"columnId\":46,\"columnName\":\"user_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-06-09 20:32:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"AcyivityId\",\"columnComment\":\"活动ID\",\"columnId\":47,\"columnName\":\"acyivity_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-06-09 20:32:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"acyivityId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Money\",\"columnComment\":\"报销金额\",\"columnId\":48,\"columnName\":\"money\",\"columnType\":\"decimal(24,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-09 20:32:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 20:33:54', '36');
INSERT INTO `sys_oper_log` VALUES ('420', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '辩手', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"reimbursement\"}', null, '0', null, '2024-06-09 20:34:00', '219');
INSERT INTO `sys_oper_log` VALUES ('421', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '辩手', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"reimbursement\"}', null, '0', null, '2024-06-09 20:43:57', '83');
INSERT INTO `sys_oper_log` VALUES ('422', '报销', '1', 'com.ruoyi.web.controller.ReimbursementController.add()', 'POST', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"acyivityId\":1,\"money\":123,\"params\":{},\"projectId\":1,\"state\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 20:56:05', '16');
INSERT INTO `sys_oper_log` VALUES ('423', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '辩手', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"reimbursement\",\"className\":\"Reimbursement\",\"columns\":[{\"capJavaField\":\"ProjectId\",\"columnComment\":\"ID\",\"columnId\":45,\"columnName\":\"project_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-06-09 20:32:18\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"projectId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-06-09 20:33:54\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"用户ID\",\"columnId\":46,\"columnName\":\"user_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-06-09 20:32:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-06-09 20:33:54\",\"usableColumn\":false},{\"capJavaField\":\"AcyivityId\",\"columnComment\":\"活动ID\",\"columnId\":47,\"columnName\":\"acyivity_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-06-09 20:32:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"acyivityId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-06-09 20:33:54\",\"usableColumn\":false},{\"capJavaField\":\"Money\",\"columnComment\":\"报销金额\",\"columnId\":48,\"columnName\":\"money\",\"columnType\":\"decimal(24,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-09 20:32:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":t', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 20:59:37', '48');
INSERT INTO `sys_oper_log` VALUES ('424', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '辩手', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"reimbursement\"}', null, '0', null, '2024-06-09 20:59:40', '197');
INSERT INTO `sys_oper_log` VALUES ('425', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '辩手', '/system/menu/2047', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2024-06-09 21:02:21', '3');
INSERT INTO `sys_oper_log` VALUES ('426', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '辩手', '/system/menu/2052', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 21:02:29', '12');
INSERT INTO `sys_oper_log` VALUES ('427', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '辩手', '/system/menu/2051', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 21:02:32', '8');
INSERT INTO `sys_oper_log` VALUES ('428', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '辩手', '/system/menu/2050', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 21:02:36', '11');
INSERT INTO `sys_oper_log` VALUES ('429', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '辩手', '/system/menu/2049', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 21:02:39', '13');
INSERT INTO `sys_oper_log` VALUES ('430', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '辩手', '/system/menu/2048', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 21:02:42', '10');
INSERT INTO `sys_oper_log` VALUES ('431', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '辩手', '/system/menu/2047', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 21:02:45', '9');
INSERT INTO `sys_oper_log` VALUES ('432', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"acyivityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":1,\"userId\":1,\"userName\":\"若依\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 21:23:46', '22');
INSERT INTO `sys_oper_log` VALUES ('433', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', null, '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'acyivityId\' in \'class com.ruoyi.system.domain.Reimbursement\'', '2024-06-09 22:40:58', '9');
INSERT INTO `sys_oper_log` VALUES ('434', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', null, '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'acticityId\' in \'class com.ruoyi.system.domain.Reimbursement\'', '2024-06-09 22:43:39', '14');
INSERT INTO `sys_oper_log` VALUES ('435', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 22:45:07', '14');
INSERT INTO `sys_oper_log` VALUES ('436', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-09 22:45:07', '11');
INSERT INTO `sys_oper_log` VALUES ('437', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 22:48:36', '4');
INSERT INTO `sys_oper_log` VALUES ('438', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-09 22:48:36', '0');
INSERT INTO `sys_oper_log` VALUES ('439', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 22:49:35', '5');
INSERT INTO `sys_oper_log` VALUES ('440', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-09 22:49:35', '0');
INSERT INTO `sys_oper_log` VALUES ('441', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 22:50:30', '3');
INSERT INTO `sys_oper_log` VALUES ('442', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-09 22:50:30', '0');
INSERT INTO `sys_oper_log` VALUES ('443', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 22:56:55', '4');
INSERT INTO `sys_oper_log` VALUES ('444', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-09 22:56:55', '0');
INSERT INTO `sys_oper_log` VALUES ('445', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 22:59:30', '4');
INSERT INTO `sys_oper_log` VALUES ('446', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-09 22:59:31', '5');
INSERT INTO `sys_oper_log` VALUES ('447', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 23:03:45', '3');
INSERT INTO `sys_oper_log` VALUES ('448', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-09 23:03:46', '2');
INSERT INTO `sys_oper_log` VALUES ('449', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 23:04:01', '3');
INSERT INTO `sys_oper_log` VALUES ('450', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-09 23:04:02', '2');
INSERT INTO `sys_oper_log` VALUES ('451', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 23:08:09', '5');
INSERT INTO `sys_oper_log` VALUES ('452', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-09 23:12:25', '7');
INSERT INTO `sys_oper_log` VALUES ('453', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 23:12:31', '7');
INSERT INTO `sys_oper_log` VALUES ('454', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-09 23:12:32', '6');
INSERT INTO `sys_oper_log` VALUES ('455', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 23:12:49', '3');
INSERT INTO `sys_oper_log` VALUES ('456', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-09 23:14:49', '1');
INSERT INTO `sys_oper_log` VALUES ('457', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 23:14:55', '2');
INSERT INTO `sys_oper_log` VALUES ('458', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-09 23:14:55', '0');
INSERT INTO `sys_oper_log` VALUES ('459', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 23:15:16', '2');
INSERT INTO `sys_oper_log` VALUES ('460', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-09 23:16:07', '5');
INSERT INTO `sys_oper_log` VALUES ('461', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 23:18:12', '4');
INSERT INTO `sys_oper_log` VALUES ('462', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-09 23:18:13', '7');
INSERT INTO `sys_oper_log` VALUES ('463', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 23:18:46', '0');
INSERT INTO `sys_oper_log` VALUES ('464', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-09 23:19:03', '3');
INSERT INTO `sys_oper_log` VALUES ('465', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-09 23:19:15', '8');
INSERT INTO `sys_oper_log` VALUES ('466', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '辩手', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"main_reply,append_reply\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 02:17:10', '132');
INSERT INTO `sys_oper_log` VALUES ('467', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '辩手', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"reply\",\"className\":\"MainReply\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键id\",\"columnId\":60,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-06-10 02:17:10\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Date\",\"columnComment\":\"评论时间\",\"columnId\":61,\"columnName\":\"date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-06-10 02:17:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"date\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ActivityId\",\"columnComment\":\"活动id\",\"columnId\":62,\"columnName\":\"activity_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-06-10 02:17:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"activityId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FromId\",\"columnComment\":\"评论者id\",\"columnId\":63,\"columnName\":\"from_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-06-10 02:17:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"fromId\",\"javaType\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 14:22:34', '71');
INSERT INTO `sys_oper_log` VALUES ('468', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '辩手', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"reply\",\"className\":\"MainReply\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键id\",\"columnId\":60,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-06-10 02:17:10\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2024-06-10 14:22:34\",\"usableColumn\":false},{\"capJavaField\":\"Date\",\"columnComment\":\"评论时间\",\"columnId\":61,\"columnName\":\"date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-06-10 02:17:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"date\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2024-06-10 14:22:34\",\"usableColumn\":false},{\"capJavaField\":\"ActivityId\",\"columnComment\":\"活动id\",\"columnId\":62,\"columnName\":\"activity_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-06-10 02:17:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"activityId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2024-06-10 14:22:34\",\"usableColumn\":false},{\"capJavaField\":\"FromId\",\"columnComment\":\"评论者id\",\"columnId\":63,\"columnName\":\"from_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-06-10 02:17:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 14:23:34', '54');
INSERT INTO `sys_oper_log` VALUES ('469', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '辩手', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"reply\",\"className\":\"MainReply\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键id\",\"columnId\":60,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-06-10 02:17:10\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2024-06-10 14:23:34\",\"usableColumn\":false},{\"capJavaField\":\"Date\",\"columnComment\":\"评论时间\",\"columnId\":61,\"columnName\":\"date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-06-10 02:17:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"date\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2024-06-10 14:23:34\",\"usableColumn\":false},{\"capJavaField\":\"ActivityId\",\"columnComment\":\"活动id\",\"columnId\":62,\"columnName\":\"activity_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-06-10 02:17:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"activityId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2024-06-10 14:23:34\",\"usableColumn\":false},{\"capJavaField\":\"FromId\",\"columnComment\":\"评论者id\",\"columnId\":63,\"columnName\":\"from_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-06-10 02:17:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 14:24:44', '32');
INSERT INTO `sys_oper_log` VALUES ('470', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '辩手', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"main_reply\"}', null, '0', null, '2024-06-10 14:24:49', '327');
INSERT INTO `sys_oper_log` VALUES ('471', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '辩手', '/system/menu/2059', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2024-06-10 14:33:31', '11');
INSERT INTO `sys_oper_log` VALUES ('472', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '辩手', '/system/menu/2060', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 14:33:39', '24');
INSERT INTO `sys_oper_log` VALUES ('473', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '辩手', '/system/menu/2064', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 14:33:43', '12');
INSERT INTO `sys_oper_log` VALUES ('474', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '辩手', '/system/menu/2063', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 14:33:45', '10');
INSERT INTO `sys_oper_log` VALUES ('475', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '辩手', '/system/menu/2061', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 14:33:48', '11');
INSERT INTO `sys_oper_log` VALUES ('476', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '辩手', '/system/menu/2062', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 14:33:50', '10');
INSERT INTO `sys_oper_log` VALUES ('477', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '辩手', '/system/menu/2059', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 14:33:54', '9');
INSERT INTO `sys_oper_log` VALUES ('478', '评论', '1', 'com.ruoyi.web.controller.MainReplyController.add()', 'POST', '1', 'admin', '辩手', '/system/reply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"appendReplyList\":[{\"commentId\":1,\"content\":\"asdgadfgasdf\",\"date\":\"2024-06-11\",\"fromAvatar\":\"fsd\",\"fromId\":1,\"fromName\":\"2\",\"params\":{},\"toAvatar\":\"dsaf\",\"toId\":1,\"toName\":\"sedwa\"}],\"content\":\"fasdfasdfas\",\"date\":\"2024-06-10\",\"fromAvatar\":\"sadr\",\"fromId\":1,\"fromName\":\"rsaq\",\"id\":1,\"likeNum\":165,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 14:42:21', '35');
INSERT INTO `sys_oper_log` VALUES ('479', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 14:57:58', '10');
INSERT INTO `sys_oper_log` VALUES ('480', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-10 14:57:58', '8');
INSERT INTO `sys_oper_log` VALUES ('481', '评论', '2', 'com.ruoyi.web.controller.MainReplyController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"appendReplyList\":[{\"commentId\":1,\"content\":\"asdgadfgasdf\",\"date\":\"2024-06-11\",\"fromAvatar\":\"fsd\",\"fromId\":1,\"fromName\":\"2\",\"id\":1,\"params\":{},\"toAvatar\":\"dsaf\",\"toId\":1,\"toName\":\"sedwa\"},{\"commentId\":1,\"content\":\"vczxvzxcv\",\"date\":\"2024-06-25\",\"fromAvatar\":\"fhj\",\"fromId\":1,\"fromName\":\"2\",\"params\":{},\"toAvatar\":\"das\",\"toId\":1,\"toName\":\"dsc\"}],\"content\":\"fasdfasdfas\",\"date\":\"2024-06-10\",\"fromAvatar\":\"sadr\",\"fromId\":1,\"fromName\":\"rsaq\",\"id\":1,\"likeNum\":165,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 15:03:45', '13');
INSERT INTO `sys_oper_log` VALUES ('482', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 15:49:43', '7');
INSERT INTO `sys_oper_log` VALUES ('483', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-10 15:49:43', '0');
INSERT INTO `sys_oper_log` VALUES ('484', '报销', '1', 'com.ruoyi.web.controller.ReimbursementController.add()', 'POST', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":50,\"params\":{},\"projectId\":2,\"state\":2,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 16:36:38', '6');
INSERT INTO `sys_oper_log` VALUES ('485', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":50,\"params\":{},\"projectId\":2,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 16:36:50', '5');
INSERT INTO `sys_oper_log` VALUES ('486', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-10 16:36:50', '5');
INSERT INTO `sys_oper_log` VALUES ('487', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 16:39:45', '3');
INSERT INTO `sys_oper_log` VALUES ('488', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-10 16:47:57', '0');
INSERT INTO `sys_oper_log` VALUES ('489', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 16:48:01', '0');
INSERT INTO `sys_oper_log` VALUES ('490', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-10 16:48:01', '0');
INSERT INTO `sys_oper_log` VALUES ('491', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":50,\"params\":{},\"projectId\":2,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 16:48:18', '1');
INSERT INTO `sys_oper_log` VALUES ('492', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"expend\":250,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-10 16:48:18', '0');
INSERT INTO `sys_oper_log` VALUES ('493', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 16:48:33', '3');
INSERT INTO `sys_oper_log` VALUES ('494', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"expend\":323,\"params\":{}}', '{\"msg\":\"资源不存在\",\"code\":500}', '0', null, '2024-06-10 16:49:54', '32');
INSERT INTO `sys_oper_log` VALUES ('495', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":123,\"params\":{},\"projectId\":1,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 16:56:57', '14');
INSERT INTO `sys_oper_log` VALUES ('496', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.editpure()', 'PUT', '1', 'admin', '辩手', '/system/activity/pure', '127.0.0.1', '内网IP', '{\"activityId\":7,\"expend\":323,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 16:56:58', '28');
INSERT INTO `sys_oper_log` VALUES ('497', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":50,\"params\":{},\"projectId\":2,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 16:57:08', '3');
INSERT INTO `sys_oper_log` VALUES ('498', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.editpure()', 'PUT', '1', 'admin', '辩手', '/system/activity/pure', '127.0.0.1', '内网IP', '{\"activityId\":7,\"expend\":373,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 16:57:08', '7');
INSERT INTO `sys_oper_log` VALUES ('499', '报销', '1', 'com.ruoyi.web.controller.ReimbursementController.add()', 'POST', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":500,\"params\":{},\"projectId\":3,\"state\":2,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 16:57:29', '7');
INSERT INTO `sys_oper_log` VALUES ('500', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":500,\"params\":{},\"projectId\":3,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 16:57:37', '5');
INSERT INTO `sys_oper_log` VALUES ('501', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"money\":500,\"params\":{},\"projectId\":3,\"state\":2,\"userId\":1,\"userName\":\"若依\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 16:58:56', '8');
INSERT INTO `sys_oper_log` VALUES ('502', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":500,\"params\":{},\"projectId\":3,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 16:59:12', '1');
INSERT INTO `sys_oper_log` VALUES ('503', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"money\":500,\"params\":{},\"projectId\":3,\"state\":2,\"userId\":1,\"userName\":\"若依\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 16:59:36', '0');
INSERT INTO `sys_oper_log` VALUES ('504', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":500,\"params\":{},\"projectId\":3,\"state\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 17:00:50', '0');
INSERT INTO `sys_oper_log` VALUES ('505', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":50,\"params\":{},\"projectId\":2,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 17:01:31', '8');
INSERT INTO `sys_oper_log` VALUES ('506', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.editpure()', 'PUT', '1', 'admin', '辩手', '/system/activity/pure', '127.0.0.1', '内网IP', '{\"activityId\":7,\"expend\":423,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 17:01:31', '15');
INSERT INTO `sys_oper_log` VALUES ('507', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityName\":\"足球赛\",\"activityProgress\":0,\"activityUserList\":[],\"budget\":100,\"createdTime\":\"2024-06-10\",\"expend\":0,\"params\":{},\"resourceId\":1,\"userId\":102}', null, '1', '', '2024-06-10 17:36:01', '34');
INSERT INTO `sys_oper_log` VALUES ('508', '文件存储', '1', 'com.ruoyi.web.controller.FilesController.add()', 'POST', '1', 'admin', '辩手', '/system/files', '127.0.0.1', '内网IP', '{\"fileName\":\"头像足球赛\",\"params\":{},\"uploadBy\":\"1\"}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'file_path\' doesn\'t have a default value\r\n### The error may exist in file [E:\\RuanGong\\zzzruoyi\\RuoYi-Vue-master\\ruoyi-system\\target\\classes\\mapper\\system\\FilesMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.FilesMapper.insertFiles-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into files          ( file_name,                          upload_by )           values ( ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'file_path\' doesn\'t have a default value\n; Field \'file_path\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'file_path\' doesn\'t have a default value', '2024-06-10 17:36:01', '89');
INSERT INTO `sys_oper_log` VALUES ('509', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityName\":\"足球赛\",\"activityProgress\":0,\"activityUserList\":[],\"budget\":100,\"createdTime\":\"2024-06-10\",\"expend\":0,\"params\":{},\"resourceId\":1,\"userId\":102}', null, '1', '', '2024-06-10 17:36:13', '0');
INSERT INTO `sys_oper_log` VALUES ('510', '文件存储', '1', 'com.ruoyi.web.controller.FilesController.add()', 'POST', '1', 'admin', '辩手', '/system/files', '127.0.0.1', '内网IP', '{\"fileId\":6,\"fileName\":\"头像足球赛\",\"filePath\":\"/profile/upload/2024/06/10/15578889144447_20240610173611A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 17:36:13', '22');
INSERT INTO `sys_oper_log` VALUES ('511', '文件存储', '1', 'com.ruoyi.web.controller.FilesController.add()', 'POST', '1', 'admin', '辩手', '/system/files', '127.0.0.1', '内网IP', '{\"fileId\":7,\"fileName\":\"头像足球赛\",\"filePath\":\"/profile/upload/2024/06/10/15578889144447_20240610173611A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 17:36:39', '7');
INSERT INTO `sys_oper_log` VALUES ('512', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":11,\"activityName\":\"足球赛\",\"activityProgress\":0,\"activityUserList\":[],\"budget\":100,\"createdTime\":\"2024-06-10\",\"expend\":0,\"finishTime\":\"2024-07-09\",\"params\":{},\"prepareTime\":\"2024-06-28\",\"processTime\":\"2024-06-30\",\"resourceId\":1,\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 17:36:39', '14');
INSERT INTO `sys_oper_log` VALUES ('513', '报销', '1', 'com.ruoyi.web.controller.ReimbursementController.add()', 'POST', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":11,\"money\":10,\"params\":{},\"projectId\":4,\"state\":2,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 17:36:59', '1');
INSERT INTO `sys_oper_log` VALUES ('514', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":11,\"money\":10,\"params\":{},\"projectId\":4,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 17:37:21', '0');
INSERT INTO `sys_oper_log` VALUES ('515', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.editpure()', 'PUT', '1', 'admin', '辩手', '/system/activity/pure', '127.0.0.1', '内网IP', '{\"activityId\":11,\"expend\":10,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 17:37:21', '7');
INSERT INTO `sys_oper_log` VALUES ('516', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":11,\"money\":10,\"params\":{},\"projectId\":4,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 17:37:48', '0');
INSERT INTO `sys_oper_log` VALUES ('517', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.editpure()', 'PUT', '1', 'admin', '辩手', '/system/activity/pure', '127.0.0.1', '内网IP', '{\"activityId\":11,\"expend\":20,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 17:37:48', '6');
INSERT INTO `sys_oper_log` VALUES ('518', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":11,\"activityName\":\"足球赛\",\"money\":10,\"params\":{},\"projectId\":4,\"state\":2,\"userId\":1,\"userName\":\"若依\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 17:38:44', '0');
INSERT INTO `sys_oper_log` VALUES ('519', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.editpure()', 'PUT', '1', 'admin', '辩手', '/system/activity/pure', '127.0.0.1', '内网IP', '{\"activityId\":11,\"expend\":30,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 17:38:48', '9');
INSERT INTO `sys_oper_log` VALUES ('520', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":11,\"money\":10,\"params\":{},\"projectId\":4,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 17:38:48', '0');
INSERT INTO `sys_oper_log` VALUES ('521', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":11,\"money\":10,\"params\":{},\"projectId\":4,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 17:39:35', '1');
INSERT INTO `sys_oper_log` VALUES ('522', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.editpure()', 'PUT', '1', 'admin', '辩手', '/system/activity/pure', '127.0.0.1', '内网IP', '{\"activityId\":11,\"expend\":40,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 17:39:35', '13');
INSERT INTO `sys_oper_log` VALUES ('523', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":7,\"money\":500,\"params\":{},\"projectId\":3,\"state\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 17:46:17', '7');
INSERT INTO `sys_oper_log` VALUES ('524', '报销', '1', 'com.ruoyi.web.controller.ReimbursementController.add()', 'POST', '1', 'admin', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":11,\"money\":10,\"params\":{},\"projectId\":5,\"remark\":\"旺旺碎冰冰\",\"state\":2,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-11 21:27:22', '25');
INSERT INTO `sys_oper_log` VALUES ('525', '用户管理', '4', 'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()', 'PUT', '1', 'admin', '辩手', '/system/user/authRole', '127.0.0.1', '内网IP', '{\"roleIds\":\"102,101\",\"userId\":\"102\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-11 21:30:06', '22');
INSERT INTO `sys_oper_log` VALUES ('526', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '辩手', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-26 01:53:34\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[3,2008,2009,2010,2011,2012,2013,2014,2021,2022,2023,2024,2025,2026,2041,2042,2043,2044,2045,2046,2053,2054,2055,2056,2057,2058,2065,2066,2067,2068,2069,2070,2040,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,115,2002,2003,2004,2005,2006,2007,116,1055,1056,1057,1058,1059,1060,117,2000,4],\"params\":{},\"roleId\":101,\"roleKey\":\"boss\",\"roleName\":\"管理员\",\"roleSort\":0,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-11 21:30:36', '36');
INSERT INTO `sys_oper_log` VALUES ('527', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'lyy', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":11,\"money\":10,\"params\":{},\"projectId\":5,\"state\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-11 21:31:01', '5');
INSERT INTO `sys_oper_log` VALUES ('528', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.editpure()', 'PUT', '1', 'lyy', '辩手', '/system/activity/pure', '127.0.0.1', '内网IP', '{\"activityId\":11,\"expend\":50,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-11 21:31:01', '14');
INSERT INTO `sys_oper_log` VALUES ('529', '评论', '1', 'com.ruoyi.web.controller.MainReplyController.add()', 'POST', '1', 'admin', '辩手', '/system/reply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"content\":\"156\",\"date\":\"2024-06-11\",\"fromAvatar\":\"/static/img/profile.473f5971.jpg\",\"fromId\":1,\"fromName\":\"若依\",\"id\":2,\"likeNum\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 02:59:51', '28');
INSERT INTO `sys_oper_log` VALUES ('530', '子评论', '1', 'com.ruoyi.web.controller.MainReplyController.addSon()', 'POST', '1', 'admin', '辩手', '/system/reply/son', '127.0.0.1', '内网IP', '{\"content\":\"153\",\"date\":\"2024-06-12\",\"fromAvatar\":\"/static/img/profile.473f5971.jpg\",\"fromId\":1,\"fromName\":\"若依\",\"params\":{},\"toAvatar\":\"sadr\",\"toId\":1,\"toName\":\"rsaq\"}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'comment_id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\RuanGong\\zzzruoyi\\RuoYi-Vue-master\\ruoyi-system\\target\\classes\\mapper\\system\\MainReplyMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MainReplyMapper.insertAppendReply-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into append_reply          ( from_id,             from_name,             from_avatar,             to_id,             to_name,             to_avatar,             date,             content )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'comment_id\' doesn\'t have a default value\n; Field \'comment_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'comment_id\' doesn\'t have a default value', '2024-06-12 14:33:05', '80');
INSERT INTO `sys_oper_log` VALUES ('531', '子评论', '1', 'com.ruoyi.web.controller.MainReplyController.addSon()', 'POST', '1', 'admin', '辩手', '/system/reply/son', '127.0.0.1', '内网IP', '{\"content\":\"153\",\"date\":\"2024-06-12\",\"fromAvatar\":\"/static/img/profile.473f5971.jpg\",\"fromId\":1,\"fromName\":\"若依\",\"params\":{},\"toAvatar\":\"sadr\",\"toId\":1,\"toName\":\"rsaq\"}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'comment_id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\RuanGong\\zzzruoyi\\RuoYi-Vue-master\\ruoyi-system\\target\\classes\\mapper\\system\\MainReplyMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MainReplyMapper.insertAppendReply-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into append_reply          ( from_id,             from_name,             from_avatar,             to_id,             to_name,             to_avatar,             date,             content )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'comment_id\' doesn\'t have a default value\n; Field \'comment_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'comment_id\' doesn\'t have a default value', '2024-06-12 14:34:46', '17');
INSERT INTO `sys_oper_log` VALUES ('532', '子评论', '1', 'com.ruoyi.web.controller.MainReplyController.addSon()', 'POST', '1', 'admin', '辩手', '/system/reply/son', '127.0.0.1', '内网IP', '{\"content\":\"153\",\"date\":\"2024-06-12\",\"fromAvatar\":\"/static/img/profile.473f5971.jpg\",\"fromId\":1,\"fromName\":\"若依\",\"params\":{},\"toAvatar\":\"sadr\",\"toId\":1,\"toName\":\"rsaq\"}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'comment_id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\RuanGong\\zzzruoyi\\RuoYi-Vue-master\\ruoyi-system\\target\\classes\\mapper\\system\\MainReplyMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MainReplyMapper.insertAppendReply-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into append_reply          ( from_id,             from_name,             from_avatar,             to_id,             to_name,             to_avatar,             date,             content )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'comment_id\' doesn\'t have a default value\n; Field \'comment_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'comment_id\' doesn\'t have a default value', '2024-06-12 14:37:45', '9');
INSERT INTO `sys_oper_log` VALUES ('533', '子评论', '1', 'com.ruoyi.web.controller.MainReplyController.addSon()', 'POST', '1', 'admin', '辩手', '/system/reply/son', '127.0.0.1', '内网IP', '{\"content\":\"153\",\"date\":\"2024-06-12\",\"fromAvatar\":\"/static/img/profile.473f5971.jpg\",\"fromId\":1,\"fromName\":\"若依\",\"params\":{},\"toAvatar\":\"sadr\",\"toId\":1,\"toName\":\"rsaq\"}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'comment_id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\RuanGong\\zzzruoyi\\RuoYi-Vue-master\\ruoyi-system\\target\\classes\\mapper\\system\\MainReplyMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.MainReplyMapper.insertAppendReply-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into append_reply          ( from_id,             from_name,             from_avatar,             to_id,             to_name,             to_avatar,             date,             content )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'comment_id\' doesn\'t have a default value\n; Field \'comment_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'comment_id\' doesn\'t have a default value', '2024-06-12 14:37:48', '11');
INSERT INTO `sys_oper_log` VALUES ('534', '子评论', '1', 'com.ruoyi.web.controller.MainReplyController.addSon()', 'POST', '1', 'admin', '辩手', '/system/reply/son', '127.0.0.1', '内网IP', '{\"commentId\":1,\"content\":\"123\",\"date\":\"2024-06-12\",\"fromAvatar\":\"/static/img/profile.473f5971.jpg\",\"fromId\":1,\"fromName\":\"若依\",\"id\":3,\"params\":{},\"toAvatar\":\"sadr\",\"toId\":1,\"toName\":\"rsaq\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 14:37:56', '10');
INSERT INTO `sys_oper_log` VALUES ('535', '子评论', '1', 'com.ruoyi.web.controller.MainReplyController.addSon()', 'POST', '1', 'admin', '辩手', '/system/reply/son', '127.0.0.1', '内网IP', '{\"commentId\":1,\"content\":\"123\",\"date\":\"2024-06-12\",\"fromAvatar\":\"/static/img/profile.473f5971.jpg\",\"fromId\":1,\"fromName\":\"若依\",\"id\":4,\"params\":{},\"toAvatar\":\"sadr\",\"toId\":1,\"toName\":\"rsaq\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 14:38:00', '9');
INSERT INTO `sys_oper_log` VALUES ('536', '子评论', '1', 'com.ruoyi.web.controller.MainReplyController.addSon()', 'POST', '1', 'admin', '辩手', '/system/reply/son', '127.0.0.1', '内网IP', '{\"commentId\":1,\"content\":\"撒皇帝\",\"date\":\"2024-06-12\",\"fromAvatar\":\"/static/img/profile.473f5971.jpg\",\"fromId\":1,\"fromName\":\"若依\",\"id\":5,\"params\":{},\"toAvatar\":\"sadr\",\"toId\":1,\"toName\":\"rsaq\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 14:42:41', '6');
INSERT INTO `sys_oper_log` VALUES ('537', '子评论', '1', 'com.ruoyi.web.controller.MainReplyController.addSon()', 'POST', '1', 'admin', '辩手', '/system/reply/son', '127.0.0.1', '内网IP', '{\"commentId\":1,\"content\":\"梵蒂冈\",\"date\":\"2024-06-12\",\"fromAvatar\":\"/static/img/profile.473f5971.jpg\",\"fromId\":1,\"fromName\":\"若依\",\"id\":6,\"params\":{},\"toAvatar\":\"sadr\",\"toId\":1,\"toName\":\"rsaq\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 14:44:47', '10');
INSERT INTO `sys_oper_log` VALUES ('538', '子评论', '1', 'com.ruoyi.web.controller.MainReplyController.addSon()', 'POST', '1', 'admin', '辩手', '/system/reply/son', '127.0.0.1', '内网IP', '{\"commentId\":2,\"content\":\"15615\",\"date\":\"2024-06-12\",\"fromAvatar\":\"/static/img/profile.473f5971.jpg\",\"fromId\":1,\"fromName\":\"若依\",\"id\":7,\"params\":{},\"toAvatar\":\"/static/img/profile.473f5971.jpg\",\"toId\":1,\"toName\":\"若依\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 14:45:44', '11');
INSERT INTO `sys_oper_log` VALUES ('539', '评论', '1', 'com.ruoyi.web.controller.MainReplyController.add()', 'POST', '1', 'admin', '辩手', '/system/reply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"content\":\"大苏打\",\"date\":\"2024-06-12\",\"fromAvatar\":\"/static/img/profile.473f5971.jpg\",\"fromId\":1,\"fromName\":\"若依\",\"id\":3,\"likeNum\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 14:45:51', '7');
INSERT INTO `sys_oper_log` VALUES ('540', '评论', '1', 'com.ruoyi.web.controller.MainReplyController.add()', 'POST', '1', 'admin', '辩手', '/system/reply', '127.0.0.1', '内网IP', '{\"activityId\":7,\"content\":\"的撒旦\",\"date\":\"2024-06-12\",\"fromAvatar\":\"/static/img/profile.473f5971.jpg\",\"fromId\":1,\"fromName\":\"若依\",\"id\":4,\"likeNum\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 14:46:15', '7');
INSERT INTO `sys_oper_log` VALUES ('541', '子评论', '1', 'com.ruoyi.web.controller.MainReplyController.addSon()', 'POST', '1', 'admin', '辩手', '/system/reply/son', '127.0.0.1', '内网IP', '{\"commentId\":3,\"content\":\"二位发文发问\",\"date\":\"2024-06-12\",\"fromAvatar\":\"/static/img/profile.473f5971.jpg\",\"fromId\":1,\"fromName\":\"若依\",\"id\":8,\"params\":{},\"toAvatar\":\"/static/img/profile.473f5971.jpg\",\"toId\":1,\"toName\":\"若依\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 14:46:46', '6');
INSERT INTO `sys_oper_log` VALUES ('542', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '辩手', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 19:00:38', '13');
INSERT INTO `sys_oper_log` VALUES ('543', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"params\":{},\"userId\":103,\"userPosition\":\"\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 19:00:38', '62');
INSERT INTO `sys_oper_log` VALUES ('544', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '辩手', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 20:16:39', '14');
INSERT INTO `sys_oper_log` VALUES ('545', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '辩手', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"市场部门\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 20:16:39', '54');
INSERT INTO `sys_oper_log` VALUES ('546', '评论', '1', 'com.ruoyi.web.controller.MainReplyController.add()', 'POST', '1', 'admin', '五四辩论赛', '/system/reply', '127.0.0.1', '内网IP', '{\"activityId\":10,\"content\":\"shaduoh\",\"date\":\"2024-06-12\",\"fromAvatar\":\"/static/img/profile.473f5971.jpg\",\"fromId\":1,\"fromName\":\"若依\",\"id\":5,\"likeNum\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 21:01:48', '12');
INSERT INTO `sys_oper_log` VALUES ('547', '子评论', '1', 'com.ruoyi.web.controller.MainReplyController.addSon()', 'POST', '1', 'admin', '五四辩论赛', '/system/reply/son', '127.0.0.1', '内网IP', '{\"commentId\":5,\"content\":\"fadf\",\"date\":\"2024-06-12\",\"fromAvatar\":\"/static/img/profile.473f5971.jpg\",\"fromId\":1,\"fromName\":\"若依\",\"id\":9,\"params\":{},\"toAvatar\":\"/static/img/profile.473f5971.jpg\",\"toId\":1,\"toName\":\"若依\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 21:02:01', '12');
INSERT INTO `sys_oper_log` VALUES ('548', '子评论', '1', 'com.ruoyi.web.controller.MainReplyController.addSon()', 'POST', '1', 'lyy', '辩手', '/system/reply/son', '127.0.0.1', '内网IP', '{\"commentId\":5,\"content\":\"dasdas\",\"date\":\"2024-06-12\",\"fromAvatar\":\"/static/img/profile.473f5971.jpg\",\"fromId\":102,\"fromName\":\"lyy\",\"id\":10,\"params\":{},\"toAvatar\":\"/static/img/profile.473f5971.jpg\",\"toId\":1,\"toName\":\"若依\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 21:03:12', '7');
INSERT INTO `sys_oper_log` VALUES ('549', '评论', '1', 'com.ruoyi.web.controller.MainReplyController.add()', 'POST', '1', 'lyy', '辩手', '/system/reply', '127.0.0.1', '内网IP', '{\"activityId\":10,\"content\":\"qwerqwer\",\"date\":\"2024-06-12\",\"fromAvatar\":\"/static/img/profile.473f5971.jpg\",\"fromId\":102,\"fromName\":\"lyy\",\"id\":6,\"likeNum\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 21:03:21', '22');
INSERT INTO `sys_oper_log` VALUES ('550', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 21:59:42', '20');
INSERT INTO `sys_oper_log` VALUES ('551', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"市场部门\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 21:59:42', '47');
INSERT INTO `sys_oper_log` VALUES ('552', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:05:48', '2');
INSERT INTO `sys_oper_log` VALUES ('553', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"市场部门\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:05:48', '24');
INSERT INTO `sys_oper_log` VALUES ('554', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:08:02', '2');
INSERT INTO `sys_oper_log` VALUES ('555', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"市场部门\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:08:03', '23');
INSERT INTO `sys_oper_log` VALUES ('556', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:09:11', '2');
INSERT INTO `sys_oper_log` VALUES ('557', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"市场部门\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:09:11', '22');
INSERT INTO `sys_oper_log` VALUES ('558', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:09:39', '2');
INSERT INTO `sys_oper_log` VALUES ('559', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"104\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:09:39', '23');
INSERT INTO `sys_oper_log` VALUES ('560', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:12:56', '3');
INSERT INTO `sys_oper_log` VALUES ('561', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"104\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:12:57', '10');
INSERT INTO `sys_oper_log` VALUES ('562', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:13:57', '3');
INSERT INTO `sys_oper_log` VALUES ('563', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"104\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:13:58', '19');
INSERT INTO `sys_oper_log` VALUES ('564', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:19:10', '4');
INSERT INTO `sys_oper_log` VALUES ('565', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"104\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:19:11', '16');
INSERT INTO `sys_oper_log` VALUES ('566', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:23:11', '1');
INSERT INTO `sys_oper_log` VALUES ('567', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"104\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:23:11', '15');
INSERT INTO `sys_oper_log` VALUES ('568', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:26:21', '3');
INSERT INTO `sys_oper_log` VALUES ('569', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"104\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:26:21', '13');
INSERT INTO `sys_oper_log` VALUES ('570', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:30:45', '0');
INSERT INTO `sys_oper_log` VALUES ('571', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"104\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:30:45', '21');
INSERT INTO `sys_oper_log` VALUES ('572', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:31:23', '15');
INSERT INTO `sys_oper_log` VALUES ('573', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"104\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:31:23', '11');
INSERT INTO `sys_oper_log` VALUES ('574', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:39:36', '15');
INSERT INTO `sys_oper_log` VALUES ('575', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"104\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:39:36', '55');
INSERT INTO `sys_oper_log` VALUES ('576', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.update()', 'PUT', '1', 'admin', '五四辩论赛', '/system/user/update', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptId\":103,\"params\":{},\"userId\":13}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2024-06-12 22:39:36', '13');
INSERT INTO `sys_oper_log` VALUES ('577', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:39:58', '4');
INSERT INTO `sys_oper_log` VALUES ('578', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"104\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:39:58', '32');
INSERT INTO `sys_oper_log` VALUES ('579', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.update()', 'PUT', '1', 'admin', '五四辩论赛', '/system/user/update', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptId\":103,\"params\":{},\"userId\":13}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2024-06-12 22:39:58', '9');
INSERT INTO `sys_oper_log` VALUES ('580', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:42:12', '5');
INSERT INTO `sys_oper_log` VALUES ('581', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"104\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:42:13', '24');
INSERT INTO `sys_oper_log` VALUES ('582', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.update()', 'PUT', '1', 'admin', '五四辩论赛', '/system/user/update', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptId\":107,\"params\":{},\"userId\":13}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2024-06-12 22:42:13', '10');
INSERT INTO `sys_oper_log` VALUES ('583', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:43:39', '0');
INSERT INTO `sys_oper_log` VALUES ('584', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"104\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:43:39', '12');
INSERT INTO `sys_oper_log` VALUES ('585', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.update()', 'PUT', '1', 'admin', '五四辩论赛', '/system/user/update', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptId\":107,\"params\":{},\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:43:40', '8');
INSERT INTO `sys_oper_log` VALUES ('586', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:44:28', '4');
INSERT INTO `sys_oper_log` VALUES ('587', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"104\"},{\"activityId\":7,\"params\":{},\"userId\":102,\"userPosition\":\"\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:44:28', '28');
INSERT INTO `sys_oper_log` VALUES ('588', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.update()', 'PUT', '1', 'admin', '五四辩论赛', '/system/user/update', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptId\":105,\"params\":{},\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:44:28', '25');
INSERT INTO `sys_oper_log` VALUES ('589', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.update()', 'PUT', '1', 'admin', '五四辩论赛', '/system/user/update', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptId\":107,\"params\":{},\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:44:28', '24');
INSERT INTO `sys_oper_log` VALUES ('590', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:50:33', '3');
INSERT INTO `sys_oper_log` VALUES ('591', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"104\"},{\"activityId\":7,\"id\":\"14\",\"params\":{},\"userId\":102,\"userPosition\":\"\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:50:33', '25');
INSERT INTO `sys_oper_log` VALUES ('592', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.update()', 'PUT', '1', 'admin', '五四辩论赛', '/system/user/update', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptId\":107,\"params\":{},\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:50:34', '12');
INSERT INTO `sys_oper_log` VALUES ('593', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.update()', 'PUT', '1', 'admin', '五四辩论赛', '/system/user/update', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptId\":103,\"params\":{},\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:50:34', '12');
INSERT INTO `sys_oper_log` VALUES ('594', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:52:20', '0');
INSERT INTO `sys_oper_log` VALUES ('595', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"104\"},{\"activityId\":7,\"id\":\"14\",\"params\":{},\"userId\":102,\"userPosition\":\"\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:52:20', '29');
INSERT INTO `sys_oper_log` VALUES ('596', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.update()', 'PUT', '1', 'admin', '五四辩论赛', '/system/user/update', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:52:21', '3');
INSERT INTO `sys_oper_log` VALUES ('597', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.update()', 'PUT', '1', 'admin', '五四辩论赛', '/system/user/update', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 22:52:21', '11');
INSERT INTO `sys_oper_log` VALUES ('598', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 23:04:32', '4');
INSERT INTO `sys_oper_log` VALUES ('599', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"104\"},{\"activityId\":7,\"id\":\"14\",\"params\":{},\"userId\":102,\"userPosition\":\"\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 23:04:32', '10');
INSERT INTO `sys_oper_log` VALUES ('600', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.update()', 'PUT', '1', 'admin', '五四辩论赛', '/system/user/update', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 23:04:33', '14');
INSERT INTO `sys_oper_log` VALUES ('601', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.update()', 'PUT', '1', 'admin', '五四辩论赛', '/system/user/update', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 23:04:33', '15');
INSERT INTO `sys_oper_log` VALUES ('602', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 23:06:44', '3');
INSERT INTO `sys_oper_log` VALUES ('603', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"104\"},{\"activityId\":7,\"id\":\"14\",\"params\":{},\"userId\":102,\"userPosition\":\"\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 23:06:44', '23');
INSERT INTO `sys_oper_log` VALUES ('604', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.update()', 'PUT', '1', 'admin', '五四辩论赛', '/system/user/update', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptId\":103,\"params\":{},\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 23:06:45', '12');
INSERT INTO `sys_oper_log` VALUES ('605', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.update()', 'PUT', '1', 'admin', '五四辩论赛', '/system/user/update', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptId\":106,\"params\":{},\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 23:06:45', '12');
INSERT INTO `sys_oper_log` VALUES ('606', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 23:19:22', '3');
INSERT INTO `sys_oper_log` VALUES ('607', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"104\"},{\"activityId\":7,\"id\":\"14\",\"params\":{},\"userId\":102,\"userPosition\":\"103\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 23:19:22', '9');
INSERT INTO `sys_oper_log` VALUES ('608', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.update()', 'PUT', '1', 'admin', '五四辩论赛', '/system/user/update', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptId\":104,\"params\":{},\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 23:19:23', '0');
INSERT INTO `sys_oper_log` VALUES ('609', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.update()', 'PUT', '1', 'admin', '五四辩论赛', '/system/user/update', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptId\":103,\"params\":{},\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 23:19:23', '13');
INSERT INTO `sys_oper_log` VALUES ('610', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":7,\"fileId\":2,\"fileName\":\"头像五四辩论赛\",\"filePath\":\"/profile/upload/2024/06/08/屏幕截图 2024-05-21 101731_20240608010246A001.png\",\"params\":{},\"uploadBy\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 23:27:37', '0');
INSERT INTO `sys_oper_log` VALUES ('611', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":7,\"activityName\":\"五四辩论赛\",\"activityProgress\":1,\"activityUserList\":[{\"activityId\":7,\"id\":\"13\",\"params\":{},\"userId\":103,\"userPosition\":\"105\"},{\"activityId\":7,\"id\":\"14\",\"params\":{},\"userId\":102,\"userPosition\":\"103\"}],\"budget\":500,\"createdTime\":\"2024-05-28\",\"expend\":423,\"finishTime\":\"2024-05-16\",\"params\":{},\"prepareTime\":\"2024-05-30\",\"processTime\":\"2024-05-01\",\"remark\":\"﻿辩论赛是一项极富挑战性和教育意义的活动，它融合了批判性思维、逻辑推理、公众演讲和团队合作等多种技能。在这场知识与思想的盛宴中，参赛者将围绕特定主题或命题，展开激烈的辩论和探讨。辩论赛通常分为正反两方，每方由若干名队员组成。比赛过程中，双方队员需要充分利用自己的知识储备和辩论技巧，就辩题展开深入剖析和激烈交锋。这不仅考验参赛者的知识储备和应变能力，更是一场对智力和口才的全方位挑战。我们诚挚邀请各位热爱辩论、追求真理的朋友踊跃参加，共同探索知识的海洋，感受辩论的魅力！\",\"resourceId\":1,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 23:27:38', '12');
INSERT INTO `sys_oper_log` VALUES ('612', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.update()', 'PUT', '1', 'admin', '五四辩论赛', '/system/user/update', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptId\":105,\"params\":{},\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 23:27:38', '22');
INSERT INTO `sys_oper_log` VALUES ('613', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.update()', 'PUT', '1', 'admin', '五四辩论赛', '/system/user/update', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptId\":103,\"params\":{},\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-12 23:27:38', '22');
INSERT INTO `sys_oper_log` VALUES ('614', '报销', '1', 'com.ruoyi.web.controller.ReimbursementController.add()', 'POST', '1', 'admin', '五四辩论赛', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":11,\"money\":15,\"params\":{},\"projectId\":6,\"remark\":\"买袜子\\n\",\"state\":2,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 00:03:44', '19');
INSERT INTO `sys_oper_log` VALUES ('615', '角色管理', '4', 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', '1', 'admin', '五四辩论赛', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":\"102\",\"userIds\":\"102,103\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 00:56:32', '5');
INSERT INTO `sys_oper_log` VALUES ('616', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-26 01:54:27\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2008,2009,2021,2053,1,103,107,2,3,2002,2027,2034,2010,2014,2022,2026,2041,2042,2043,2044,2045,2046,2054,2055,2058,2065,2066,2067,2068,2069,2070,2040,1016,1035,110,1049,1050,1051,1052,1053,1054,2003,2035,2039],\"params\":{},\"roleId\":102,\"roleKey\":\"student\",\"roleName\":\"普通学生\",\"roleSort\":0,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:00:32', '22');
INSERT INTO `sys_oper_log` VALUES ('617', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '五四辩论赛', '/system/menu/2041', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2024-06-13 01:00:46', '2');
INSERT INTO `sys_oper_log` VALUES ('618', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/discuss/index\",\"createTime\":\"2024-06-09 20:26:07\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2041,\"menuName\":\"评论\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2008,\"path\":\"discuss\",\"perms\":\"system:discuss:list\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:01:13', '14');
INSERT INTO `sys_oper_log` VALUES ('619', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-26 01:54:27\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2008,2009,2021,2053,1,2,3,2027,2034,2010,2014,2022,2026,2041,2042,2043,2044,2045,2046,2054,2055,2058,2065,2066,2067,2068,2069,2070,2040,103,1016,1017,1018,1019,107,1035,1036,1037,1038,110,1049,1050,1051,1052,1053,1054,2002,2003,2004,2005,2006,2007,2035,2039],\"params\":{},\"roleId\":102,\"roleKey\":\"student\",\"roleName\":\"普通学生\",\"roleSort\":0,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:02:27', '19');
INSERT INTO `sys_oper_log` VALUES ('620', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-26 01:54:27\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2008,2009,2021,2053,1,3,2002,2027,2034,2010,2014,2022,2026,2041,2042,2043,2044,2045,2046,2054,2055,2058,2065,2066,2067,2068,2069,2070,2040,103,1016,1017,1018,1019,107,1035,1036,1037,1038,2003,2007,2035,2039],\"params\":{},\"roleId\":102,\"roleKey\":\"student\",\"roleName\":\"普通学生\",\"roleSort\":0,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:03:53', '16');
INSERT INTO `sys_oper_log` VALUES ('621', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-13 15:26:52\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,3,2008,2009,2010,2011,2012,2013,2014,2021,2022,2023,2024,2025,2026,2041,2042,2043,2044,2045,2046,2053,2054,2055,2056,2057,2058,2065,2066,2067,2068,2069,2070,2040,100,1000,1001,1002,1003,1004,1005,1006,103,1016,1017,1018,1019,107,1035,1036,1037,1038,2002,2003,2004,2005,2006,2007,2015,2016,2017,2018,2019,2020,2027,2034,2035,2036,2037,2038,2039],\"params\":{},\"roleId\":100,\"roleKey\":\"organizer\",\"roleName\":\"组织者\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:04:48', '18');
INSERT INTO `sys_oper_log` VALUES ('622', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-26 01:53:34\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2008,2009,2010,2011,2012,2013,2014,2021,2022,2023,2024,2025,2026,2041,2042,2043,2044,2045,2046,2053,2054,2055,2056,2057,2058,2065,2066,2067,2068,2069,2070,2040,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,2002,2003,2004,2005,2006,2007,2015,2016,2017,2018,2019,2020,116,1055,1056,1057,1058,1059,1060,117,2000,4,2027,2034,2035,2036,2037,2038,2039],\"params\":{},\"roleId\":101,\"roleKey\":\"boss\",\"roleName\":\"管理员\",\"roleSort\":0,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:05:00', '20');
INSERT INTO `sys_oper_log` VALUES ('623', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', '五四辩论赛', '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-26 01:54:27\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":102,\"roleKey\":\"student\",\"roleName\":\"普通学生\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:05:19', '8');
INSERT INTO `sys_oper_log` VALUES ('624', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', '五四辩论赛', '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-13 15:26:52\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"organizer\",\"roleName\":\"组织者\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:05:25', '6');
INSERT INTO `sys_oper_log` VALUES ('625', '文件存储', '1', 'com.ruoyi.web.controller.FilesController.add()', 'POST', '1', 'student', null, '/system/files', '127.0.0.1', '内网IP', '{\"fileId\":8,\"fileName\":\"头像羽毛球赛\",\"filePath\":\"/profile/upload/2024/06/13/震网_20240613010828A001.jpg\",\"params\":{},\"uploadBy\":\"101\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:09:19', '5');
INSERT INTO `sys_oper_log` VALUES ('626', '文件存储', '1', 'com.ruoyi.web.controller.FilesController.add()', 'POST', '1', 'student', null, '/system/files', '127.0.0.1', '内网IP', '{\"fileId\":9,\"fileName\":\"头像羽毛球赛\",\"filePath\":\"/profile/upload/2024/06/13/震网_20240613010828A001.jpg\",\"params\":{},\"uploadBy\":\"101\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:09:25', '4');
INSERT INTO `sys_oper_log` VALUES ('627', '文件存储', '1', 'com.ruoyi.web.controller.FilesController.add()', 'POST', '1', 'student', null, '/system/files', '127.0.0.1', '内网IP', '{\"fileId\":10,\"fileName\":\"头像羽毛球赛\",\"filePath\":\"/profile/upload/2024/06/13/震网_20240613010828A001.jpg\",\"params\":{},\"uploadBy\":\"101\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:09:51', '4');
INSERT INTO `sys_oper_log` VALUES ('628', '活动管理', '1', 'com.ruoyi.web.controller.ActivityController.add()', 'POST', '1', 'student', null, '/system/activity', '127.0.0.1', '内网IP', '{\"activityId\":12,\"activityName\":\"羽毛球赛\",\"activityProgress\":0,\"activityUserList\":[],\"budget\":900,\"createdTime\":\"2024-06-12\",\"expend\":0,\"finishTime\":\"2024-06-19\",\"params\":{},\"prepareTime\":\"2024-06-19\",\"processTime\":\"2024-06-15\",\"remark\":\"\\tBWF\\t原名IBF/国际羽毛球联合会）原来是按照星级来区别羽毛球赛事，最高是七星级赛事，四年一度的奥运会、两年一度的团体赛如汤尤杯、苏迪曼杯以及均为七星级赛事。公开赛最高级别是六星级，每年的国际羽毛球比赛数量众多，但六星级的比赛屈指可数。 从2007年开始，BWF取消了这种分级，将各类赛事分为4个等级7个类别。级别最高的是一级赛事，即世界羽毛球锦标赛、奥运会羽毛球赛、汤尤杯和苏迪曼杯；其次是二级赛事，包括12站超级系列赛和超级系列赛总决赛，超级赛的最低奖金是20万美金。\",\"resourceId\":1,\"userId\":101}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:09:52', '10');
INSERT INTO `sys_oper_log` VALUES ('629', '活动资源;活动资源', '1', 'com.ruoyi.web.controller.system.ResourceController.add()', 'POST', '1', 'student', null, '/system/resource', '127.0.0.1', '内网IP', '{\"createdBy\":\"student\",\"createdTime\":\"2024-06-13\",\"params\":{},\"resourceId\":3,\"resourceName\":\"羽毛球场\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:10:25', '9');
INSERT INTO `sys_oper_log` VALUES ('630', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', '五四辩论赛', '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-05-13 15:26:52\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"organizer\",\"roleName\":\"组织者\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:14:06', '9');
INSERT INTO `sys_oper_log` VALUES ('631', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'student', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-06-04 20:36:17\",\"delFlag\":\"0\",\"deptId\":101,\"email\":\"\",\"loginDate\":\"2024-06-13 01:14:22\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"石二灏\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[100],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":100,\"roleKey\":\"organizer\",\"roleName\":\"组织者\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"student\",\"userId\":101,\"userName\":\"student\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:19:25', '14');
INSERT INTO `sys_oper_log` VALUES ('632', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'student', null, '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":12,\"fileId\":10,\"fileName\":\"头像羽毛球赛\",\"filePath\":\"/profile/upload/2024/06/13/震网_20240613010828A001.jpg\",\"params\":{},\"uploadBy\":\"101\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:39:59', '4');
INSERT INTO `sys_oper_log` VALUES ('633', '文件存储', '1', 'com.ruoyi.web.controller.FilesController.add()', 'POST', '1', 'student', null, '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":13,\"fileId\":11,\"fileName\":\"头像123\",\"filePath\":\"/profile/upload/2024/06/13/15578889144447_20240613014136A002.png\",\"params\":{},\"uploadBy\":\"101\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:41:37', '16');
INSERT INTO `sys_oper_log` VALUES ('634', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'student', null, '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":11,\"fileId\":9,\"fileName\":\"头像羽毛球赛\",\"filePath\":\"/profile/upload/2024/06/13/震网_20240613010828A001.jpg\",\"params\":{},\"uploadBy\":\"101\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:41:56', '5');
INSERT INTO `sys_oper_log` VALUES ('635', '文件存储', '2', 'com.ruoyi.web.controller.FilesController.edit()', 'PUT', '1', 'student', null, '/system/files', '127.0.0.1', '内网IP', '{\"activityId\":12,\"fileId\":9,\"fileName\":\"头像羽毛球赛\",\"filePath\":\"/profile/upload/2024/06/13/震网_20240613010828A001.jpg\",\"params\":{},\"uploadBy\":\"101\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:42:02', '4');
INSERT INTO `sys_oper_log` VALUES ('636', '文件存储', '3', 'com.ruoyi.web.controller.FilesController.remove()', 'DELETE', '1', 'student', null, '/system/files/9', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:43:24', '4');
INSERT INTO `sys_oper_log` VALUES ('637', '申请管理', '1', 'com.ruoyi.web.controller.ApplyController.add()', 'POST', '1', 'lyy', '辩手', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":12,\"applyState\":2,\"id\":10,\"params\":{},\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:44:29', '9');
INSERT INTO `sys_oper_log` VALUES ('638', '报销', '1', 'com.ruoyi.web.controller.ReimbursementController.add()', 'POST', '1', 'lyy', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":11,\"money\":10,\"params\":{},\"projectId\":7,\"state\":2,\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:44:40', '6');
INSERT INTO `sys_oper_log` VALUES ('639', '报销', '1', 'com.ruoyi.web.controller.ReimbursementController.add()', 'POST', '1', 'lyy', '辩手', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":12,\"money\":30,\"params\":{},\"projectId\":8,\"remark\":\"dsa\",\"state\":2,\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:45:11', '4');
INSERT INTO `sys_oper_log` VALUES ('640', '报销', '2', 'com.ruoyi.web.controller.ReimbursementController.edit()', 'PUT', '1', 'student', '五四辩论赛', '/system/reimbursement', '127.0.0.1', '内网IP', '{\"activityId\":12,\"money\":30,\"params\":{},\"projectId\":8,\"state\":0,\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:45:55', '11');
INSERT INTO `sys_oper_log` VALUES ('641', '活动管理', '2', 'com.ruoyi.web.controller.ActivityController.editpure()', 'PUT', '1', 'student', '五四辩论赛', '/system/activity/pure', '127.0.0.1', '内网IP', '{\"activityId\":12,\"expend\":30,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:45:55', '7');
INSERT INTO `sys_oper_log` VALUES ('642', '申请管理', '2', 'com.ruoyi.web.controller.ApplyController.edit()', 'PUT', '1', 'student', '五四辩论赛', '/system/apply', '127.0.0.1', '内网IP', '{\"activityId\":12,\"applyState\":0,\"id\":10,\"params\":{},\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:46:09', '4');
INSERT INTO `sys_oper_log` VALUES ('643', '添加用户关联', '2', 'com.ruoyi.web.controller.ApplyController.adduser()', 'PUT', '1', 'student', '五四辩论赛', '/system/apply/adduser', '127.0.0.1', '内网IP', '{\"activityId\":12,\"params\":{},\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:46:09', '4');
INSERT INTO `sys_oper_log` VALUES ('644', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":104,\"deptName\":\"评委\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"parentName\":\"五四辩论赛\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:51:19', '17');
INSERT INTO `sys_oper_log` VALUES ('645', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"主持\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"parentName\":\"五四辩论赛\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:51:31', '12');
INSERT INTO `sys_oper_log` VALUES ('646', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":106,\"deptName\":\"赛后\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":4,\"params\":{},\"parentId\":101,\"parentName\":\"五四辩论赛\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:51:45', '14');
INSERT INTO `sys_oper_log` VALUES ('647', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":107,\"deptName\":\"维护\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":5,\"params\":{},\"parentId\":101,\"parentName\":\"五四辩论赛\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:51:52', '13');
INSERT INTO `sys_oper_log` VALUES ('648', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,102\",\"children\":[],\"deptId\":108,\"deptName\":\"队员\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":102,\"parentName\":\"篮球赛\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:52:04', '13');
INSERT INTO `sys_oper_log` VALUES ('649', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', '五四辩论赛', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,102\",\"children\":[],\"deptId\":109,\"deptName\":\"啦啦队\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":102,\"parentName\":\"篮球赛\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-13 01:52:09', '16');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2024-04-22 21:16:40', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2024-04-22 21:16:40', '', null, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '1', '1', '0', '0', 'admin', '2024-04-22 21:16:40', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '1', '1', '0', '2', 'admin', '2024-04-22 21:16:40', '', null, '普通角色');
INSERT INTO `sys_role` VALUES ('100', '组织者', 'organizer', '3', '1', '1', '1', '0', '0', 'admin', '2024-05-13 15:26:52', 'admin', '2024-06-13 01:14:06', null);
INSERT INTO `sys_role` VALUES ('101', '管理员', 'boss', '0', '1', '1', '1', '0', '0', 'admin', '2024-05-26 01:53:34', 'admin', '2024-06-13 01:05:00', null);
INSERT INTO `sys_role` VALUES ('102', '普通学生', 'student', '0', '4', '1', '1', '0', '0', 'admin', '2024-05-26 01:54:27', 'admin', '2024-06-13 01:05:19', null);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('100', '1');
INSERT INTO `sys_role_menu` VALUES ('100', '3');
INSERT INTO `sys_role_menu` VALUES ('100', '100');
INSERT INTO `sys_role_menu` VALUES ('100', '103');
INSERT INTO `sys_role_menu` VALUES ('100', '107');
INSERT INTO `sys_role_menu` VALUES ('100', '1000');
INSERT INTO `sys_role_menu` VALUES ('100', '1001');
INSERT INTO `sys_role_menu` VALUES ('100', '1002');
INSERT INTO `sys_role_menu` VALUES ('100', '1003');
INSERT INTO `sys_role_menu` VALUES ('100', '1004');
INSERT INTO `sys_role_menu` VALUES ('100', '1005');
INSERT INTO `sys_role_menu` VALUES ('100', '1006');
INSERT INTO `sys_role_menu` VALUES ('100', '1016');
INSERT INTO `sys_role_menu` VALUES ('100', '1017');
INSERT INTO `sys_role_menu` VALUES ('100', '1018');
INSERT INTO `sys_role_menu` VALUES ('100', '1019');
INSERT INTO `sys_role_menu` VALUES ('100', '1035');
INSERT INTO `sys_role_menu` VALUES ('100', '1036');
INSERT INTO `sys_role_menu` VALUES ('100', '1037');
INSERT INTO `sys_role_menu` VALUES ('100', '1038');
INSERT INTO `sys_role_menu` VALUES ('100', '2002');
INSERT INTO `sys_role_menu` VALUES ('100', '2003');
INSERT INTO `sys_role_menu` VALUES ('100', '2004');
INSERT INTO `sys_role_menu` VALUES ('100', '2005');
INSERT INTO `sys_role_menu` VALUES ('100', '2006');
INSERT INTO `sys_role_menu` VALUES ('100', '2007');
INSERT INTO `sys_role_menu` VALUES ('100', '2008');
INSERT INTO `sys_role_menu` VALUES ('100', '2009');
INSERT INTO `sys_role_menu` VALUES ('100', '2010');
INSERT INTO `sys_role_menu` VALUES ('100', '2011');
INSERT INTO `sys_role_menu` VALUES ('100', '2012');
INSERT INTO `sys_role_menu` VALUES ('100', '2013');
INSERT INTO `sys_role_menu` VALUES ('100', '2014');
INSERT INTO `sys_role_menu` VALUES ('100', '2015');
INSERT INTO `sys_role_menu` VALUES ('100', '2016');
INSERT INTO `sys_role_menu` VALUES ('100', '2017');
INSERT INTO `sys_role_menu` VALUES ('100', '2018');
INSERT INTO `sys_role_menu` VALUES ('100', '2019');
INSERT INTO `sys_role_menu` VALUES ('100', '2020');
INSERT INTO `sys_role_menu` VALUES ('100', '2021');
INSERT INTO `sys_role_menu` VALUES ('100', '2022');
INSERT INTO `sys_role_menu` VALUES ('100', '2023');
INSERT INTO `sys_role_menu` VALUES ('100', '2024');
INSERT INTO `sys_role_menu` VALUES ('100', '2025');
INSERT INTO `sys_role_menu` VALUES ('100', '2026');
INSERT INTO `sys_role_menu` VALUES ('100', '2027');
INSERT INTO `sys_role_menu` VALUES ('100', '2034');
INSERT INTO `sys_role_menu` VALUES ('100', '2035');
INSERT INTO `sys_role_menu` VALUES ('100', '2036');
INSERT INTO `sys_role_menu` VALUES ('100', '2037');
INSERT INTO `sys_role_menu` VALUES ('100', '2038');
INSERT INTO `sys_role_menu` VALUES ('100', '2039');
INSERT INTO `sys_role_menu` VALUES ('100', '2040');
INSERT INTO `sys_role_menu` VALUES ('100', '2041');
INSERT INTO `sys_role_menu` VALUES ('100', '2042');
INSERT INTO `sys_role_menu` VALUES ('100', '2043');
INSERT INTO `sys_role_menu` VALUES ('100', '2044');
INSERT INTO `sys_role_menu` VALUES ('100', '2045');
INSERT INTO `sys_role_menu` VALUES ('100', '2046');
INSERT INTO `sys_role_menu` VALUES ('100', '2053');
INSERT INTO `sys_role_menu` VALUES ('100', '2054');
INSERT INTO `sys_role_menu` VALUES ('100', '2055');
INSERT INTO `sys_role_menu` VALUES ('100', '2056');
INSERT INTO `sys_role_menu` VALUES ('100', '2057');
INSERT INTO `sys_role_menu` VALUES ('100', '2058');
INSERT INTO `sys_role_menu` VALUES ('100', '2065');
INSERT INTO `sys_role_menu` VALUES ('100', '2066');
INSERT INTO `sys_role_menu` VALUES ('100', '2067');
INSERT INTO `sys_role_menu` VALUES ('100', '2068');
INSERT INTO `sys_role_menu` VALUES ('100', '2069');
INSERT INTO `sys_role_menu` VALUES ('100', '2070');
INSERT INTO `sys_role_menu` VALUES ('101', '1');
INSERT INTO `sys_role_menu` VALUES ('101', '2');
INSERT INTO `sys_role_menu` VALUES ('101', '3');
INSERT INTO `sys_role_menu` VALUES ('101', '4');
INSERT INTO `sys_role_menu` VALUES ('101', '100');
INSERT INTO `sys_role_menu` VALUES ('101', '101');
INSERT INTO `sys_role_menu` VALUES ('101', '102');
INSERT INTO `sys_role_menu` VALUES ('101', '103');
INSERT INTO `sys_role_menu` VALUES ('101', '104');
INSERT INTO `sys_role_menu` VALUES ('101', '105');
INSERT INTO `sys_role_menu` VALUES ('101', '106');
INSERT INTO `sys_role_menu` VALUES ('101', '107');
INSERT INTO `sys_role_menu` VALUES ('101', '108');
INSERT INTO `sys_role_menu` VALUES ('101', '109');
INSERT INTO `sys_role_menu` VALUES ('101', '110');
INSERT INTO `sys_role_menu` VALUES ('101', '111');
INSERT INTO `sys_role_menu` VALUES ('101', '112');
INSERT INTO `sys_role_menu` VALUES ('101', '113');
INSERT INTO `sys_role_menu` VALUES ('101', '114');
INSERT INTO `sys_role_menu` VALUES ('101', '115');
INSERT INTO `sys_role_menu` VALUES ('101', '116');
INSERT INTO `sys_role_menu` VALUES ('101', '117');
INSERT INTO `sys_role_menu` VALUES ('101', '500');
INSERT INTO `sys_role_menu` VALUES ('101', '501');
INSERT INTO `sys_role_menu` VALUES ('101', '1000');
INSERT INTO `sys_role_menu` VALUES ('101', '1001');
INSERT INTO `sys_role_menu` VALUES ('101', '1002');
INSERT INTO `sys_role_menu` VALUES ('101', '1003');
INSERT INTO `sys_role_menu` VALUES ('101', '1004');
INSERT INTO `sys_role_menu` VALUES ('101', '1005');
INSERT INTO `sys_role_menu` VALUES ('101', '1006');
INSERT INTO `sys_role_menu` VALUES ('101', '1007');
INSERT INTO `sys_role_menu` VALUES ('101', '1008');
INSERT INTO `sys_role_menu` VALUES ('101', '1009');
INSERT INTO `sys_role_menu` VALUES ('101', '1010');
INSERT INTO `sys_role_menu` VALUES ('101', '1011');
INSERT INTO `sys_role_menu` VALUES ('101', '1012');
INSERT INTO `sys_role_menu` VALUES ('101', '1013');
INSERT INTO `sys_role_menu` VALUES ('101', '1014');
INSERT INTO `sys_role_menu` VALUES ('101', '1015');
INSERT INTO `sys_role_menu` VALUES ('101', '1016');
INSERT INTO `sys_role_menu` VALUES ('101', '1017');
INSERT INTO `sys_role_menu` VALUES ('101', '1018');
INSERT INTO `sys_role_menu` VALUES ('101', '1019');
INSERT INTO `sys_role_menu` VALUES ('101', '1020');
INSERT INTO `sys_role_menu` VALUES ('101', '1021');
INSERT INTO `sys_role_menu` VALUES ('101', '1022');
INSERT INTO `sys_role_menu` VALUES ('101', '1023');
INSERT INTO `sys_role_menu` VALUES ('101', '1024');
INSERT INTO `sys_role_menu` VALUES ('101', '1025');
INSERT INTO `sys_role_menu` VALUES ('101', '1026');
INSERT INTO `sys_role_menu` VALUES ('101', '1027');
INSERT INTO `sys_role_menu` VALUES ('101', '1028');
INSERT INTO `sys_role_menu` VALUES ('101', '1029');
INSERT INTO `sys_role_menu` VALUES ('101', '1030');
INSERT INTO `sys_role_menu` VALUES ('101', '1031');
INSERT INTO `sys_role_menu` VALUES ('101', '1032');
INSERT INTO `sys_role_menu` VALUES ('101', '1033');
INSERT INTO `sys_role_menu` VALUES ('101', '1034');
INSERT INTO `sys_role_menu` VALUES ('101', '1035');
INSERT INTO `sys_role_menu` VALUES ('101', '1036');
INSERT INTO `sys_role_menu` VALUES ('101', '1037');
INSERT INTO `sys_role_menu` VALUES ('101', '1038');
INSERT INTO `sys_role_menu` VALUES ('101', '1039');
INSERT INTO `sys_role_menu` VALUES ('101', '1040');
INSERT INTO `sys_role_menu` VALUES ('101', '1041');
INSERT INTO `sys_role_menu` VALUES ('101', '1042');
INSERT INTO `sys_role_menu` VALUES ('101', '1043');
INSERT INTO `sys_role_menu` VALUES ('101', '1044');
INSERT INTO `sys_role_menu` VALUES ('101', '1045');
INSERT INTO `sys_role_menu` VALUES ('101', '1046');
INSERT INTO `sys_role_menu` VALUES ('101', '1047');
INSERT INTO `sys_role_menu` VALUES ('101', '1048');
INSERT INTO `sys_role_menu` VALUES ('101', '1049');
INSERT INTO `sys_role_menu` VALUES ('101', '1050');
INSERT INTO `sys_role_menu` VALUES ('101', '1051');
INSERT INTO `sys_role_menu` VALUES ('101', '1052');
INSERT INTO `sys_role_menu` VALUES ('101', '1053');
INSERT INTO `sys_role_menu` VALUES ('101', '1054');
INSERT INTO `sys_role_menu` VALUES ('101', '1055');
INSERT INTO `sys_role_menu` VALUES ('101', '1056');
INSERT INTO `sys_role_menu` VALUES ('101', '1057');
INSERT INTO `sys_role_menu` VALUES ('101', '1058');
INSERT INTO `sys_role_menu` VALUES ('101', '1059');
INSERT INTO `sys_role_menu` VALUES ('101', '1060');
INSERT INTO `sys_role_menu` VALUES ('101', '2000');
INSERT INTO `sys_role_menu` VALUES ('101', '2002');
INSERT INTO `sys_role_menu` VALUES ('101', '2003');
INSERT INTO `sys_role_menu` VALUES ('101', '2004');
INSERT INTO `sys_role_menu` VALUES ('101', '2005');
INSERT INTO `sys_role_menu` VALUES ('101', '2006');
INSERT INTO `sys_role_menu` VALUES ('101', '2007');
INSERT INTO `sys_role_menu` VALUES ('101', '2008');
INSERT INTO `sys_role_menu` VALUES ('101', '2009');
INSERT INTO `sys_role_menu` VALUES ('101', '2010');
INSERT INTO `sys_role_menu` VALUES ('101', '2011');
INSERT INTO `sys_role_menu` VALUES ('101', '2012');
INSERT INTO `sys_role_menu` VALUES ('101', '2013');
INSERT INTO `sys_role_menu` VALUES ('101', '2014');
INSERT INTO `sys_role_menu` VALUES ('101', '2015');
INSERT INTO `sys_role_menu` VALUES ('101', '2016');
INSERT INTO `sys_role_menu` VALUES ('101', '2017');
INSERT INTO `sys_role_menu` VALUES ('101', '2018');
INSERT INTO `sys_role_menu` VALUES ('101', '2019');
INSERT INTO `sys_role_menu` VALUES ('101', '2020');
INSERT INTO `sys_role_menu` VALUES ('101', '2021');
INSERT INTO `sys_role_menu` VALUES ('101', '2022');
INSERT INTO `sys_role_menu` VALUES ('101', '2023');
INSERT INTO `sys_role_menu` VALUES ('101', '2024');
INSERT INTO `sys_role_menu` VALUES ('101', '2025');
INSERT INTO `sys_role_menu` VALUES ('101', '2026');
INSERT INTO `sys_role_menu` VALUES ('101', '2027');
INSERT INTO `sys_role_menu` VALUES ('101', '2034');
INSERT INTO `sys_role_menu` VALUES ('101', '2035');
INSERT INTO `sys_role_menu` VALUES ('101', '2036');
INSERT INTO `sys_role_menu` VALUES ('101', '2037');
INSERT INTO `sys_role_menu` VALUES ('101', '2038');
INSERT INTO `sys_role_menu` VALUES ('101', '2039');
INSERT INTO `sys_role_menu` VALUES ('101', '2040');
INSERT INTO `sys_role_menu` VALUES ('101', '2041');
INSERT INTO `sys_role_menu` VALUES ('101', '2042');
INSERT INTO `sys_role_menu` VALUES ('101', '2043');
INSERT INTO `sys_role_menu` VALUES ('101', '2044');
INSERT INTO `sys_role_menu` VALUES ('101', '2045');
INSERT INTO `sys_role_menu` VALUES ('101', '2046');
INSERT INTO `sys_role_menu` VALUES ('101', '2053');
INSERT INTO `sys_role_menu` VALUES ('101', '2054');
INSERT INTO `sys_role_menu` VALUES ('101', '2055');
INSERT INTO `sys_role_menu` VALUES ('101', '2056');
INSERT INTO `sys_role_menu` VALUES ('101', '2057');
INSERT INTO `sys_role_menu` VALUES ('101', '2058');
INSERT INTO `sys_role_menu` VALUES ('101', '2065');
INSERT INTO `sys_role_menu` VALUES ('101', '2066');
INSERT INTO `sys_role_menu` VALUES ('101', '2067');
INSERT INTO `sys_role_menu` VALUES ('101', '2068');
INSERT INTO `sys_role_menu` VALUES ('101', '2069');
INSERT INTO `sys_role_menu` VALUES ('101', '2070');
INSERT INTO `sys_role_menu` VALUES ('102', '1');
INSERT INTO `sys_role_menu` VALUES ('102', '3');
INSERT INTO `sys_role_menu` VALUES ('102', '103');
INSERT INTO `sys_role_menu` VALUES ('102', '107');
INSERT INTO `sys_role_menu` VALUES ('102', '1016');
INSERT INTO `sys_role_menu` VALUES ('102', '1017');
INSERT INTO `sys_role_menu` VALUES ('102', '1018');
INSERT INTO `sys_role_menu` VALUES ('102', '1019');
INSERT INTO `sys_role_menu` VALUES ('102', '1035');
INSERT INTO `sys_role_menu` VALUES ('102', '1036');
INSERT INTO `sys_role_menu` VALUES ('102', '1037');
INSERT INTO `sys_role_menu` VALUES ('102', '1038');
INSERT INTO `sys_role_menu` VALUES ('102', '2002');
INSERT INTO `sys_role_menu` VALUES ('102', '2003');
INSERT INTO `sys_role_menu` VALUES ('102', '2007');
INSERT INTO `sys_role_menu` VALUES ('102', '2008');
INSERT INTO `sys_role_menu` VALUES ('102', '2009');
INSERT INTO `sys_role_menu` VALUES ('102', '2010');
INSERT INTO `sys_role_menu` VALUES ('102', '2014');
INSERT INTO `sys_role_menu` VALUES ('102', '2021');
INSERT INTO `sys_role_menu` VALUES ('102', '2022');
INSERT INTO `sys_role_menu` VALUES ('102', '2026');
INSERT INTO `sys_role_menu` VALUES ('102', '2027');
INSERT INTO `sys_role_menu` VALUES ('102', '2034');
INSERT INTO `sys_role_menu` VALUES ('102', '2035');
INSERT INTO `sys_role_menu` VALUES ('102', '2039');
INSERT INTO `sys_role_menu` VALUES ('102', '2040');
INSERT INTO `sys_role_menu` VALUES ('102', '2041');
INSERT INTO `sys_role_menu` VALUES ('102', '2042');
INSERT INTO `sys_role_menu` VALUES ('102', '2043');
INSERT INTO `sys_role_menu` VALUES ('102', '2044');
INSERT INTO `sys_role_menu` VALUES ('102', '2045');
INSERT INTO `sys_role_menu` VALUES ('102', '2046');
INSERT INTO `sys_role_menu` VALUES ('102', '2053');
INSERT INTO `sys_role_menu` VALUES ('102', '2054');
INSERT INTO `sys_role_menu` VALUES ('102', '2055');
INSERT INTO `sys_role_menu` VALUES ('102', '2058');
INSERT INTO `sys_role_menu` VALUES ('102', '2065');
INSERT INTO `sys_role_menu` VALUES ('102', '2066');
INSERT INTO `sys_role_menu` VALUES ('102', '2067');
INSERT INTO `sys_role_menu` VALUES ('102', '2068');
INSERT INTO `sys_role_menu` VALUES ('102', '2069');
INSERT INTO `sys_role_menu` VALUES ('102', '2070');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '101', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-06-13 01:50:51', 'admin', '2024-04-22 21:16:40', '', '2024-06-13 01:50:51', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-05-06 16:28:17', 'admin', '2024-04-22 21:16:40', '', '2024-05-06 16:28:16', '测试员');
INSERT INTO `sys_user` VALUES ('100', '101', 'zuzhizhe', '石从灏', '00', '', '', '0', '', '$2a$10$cz/UG929AWBhvSrm6q8vG.EQkGSQO.HoLCos1uf2Wa1FP75NKxYBG', '0', '0', '127.0.0.1', '2024-06-09 18:04:38', 'admin', '2024-05-27 15:52:50', 'admin', '2024-06-09 18:04:38', null);
INSERT INTO `sys_user` VALUES ('101', '101', 'student', '石二灏', '00', '', '', '0', '', '$2a$10$bzsEJGn2G4h/qpITBBCggON2.KNtoRd6OHg/mQYR5OPZTYsk0fgYa', '0', '0', '127.0.0.1', '2024-06-13 01:45:26', 'admin', '2024-06-04 20:36:17', 'student', '2024-06-13 01:45:26', null);
INSERT INTO `sys_user` VALUES ('102', '103', 'lyy', 'lyy', '00', '', '', '1', '', '$2a$10$9l.2FtrEgUbHUP11TLEqse7ThENWjtMwSvNqM.NxOPnPvBG.oYHnG', '0', '0', '127.0.0.1', '2024-06-13 01:44:09', '', '2024-06-08 01:11:46', 'admin', '2024-06-13 01:44:09', null);
INSERT INTO `sys_user` VALUES ('103', '105', 'sch', 'sch', '00', '', '', '0', '', '$2a$10$T4TKmgu.m1yP3CeaunuPXeIfbNb4lxPbv8T44cJYgYCOsdMxY/JWu', '0', '0', '127.0.0.1', '2024-06-09 17:19:12', 'admin', '2024-06-09 17:04:39', 'admin', '2024-06-12 23:27:38', null);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('100', '100');
INSERT INTO `sys_user_role` VALUES ('101', '100');
INSERT INTO `sys_user_role` VALUES ('102', '102');
INSERT INTO `sys_user_role` VALUES ('103', '102');
