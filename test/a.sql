SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for demo
-- ----------------------------
DROP TABLE IF EXISTS `demo`;
CREATE TABLE `demo`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `key_word` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关键词',
  `punch_time` datetime(0) NULL DEFAULT NULL COMMENT '打卡时间',
  `salary_money` decimal(10, 3) NULL DEFAULT NULL COMMENT '工资',
  `bonus_money` double(10, 2) NULL DEFAULT NULL COMMENT '奖金',
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别 {男:1,女:2}',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个人简介',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of demo
-- ----------------------------
INSERT INTO `demo` VALUES ('eaa6c1116b41dc10a94eae34cf990133', 'zhang daihao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zhangdaiscott@163.com', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `demo` VALUES ('ffa9da1ad40632dfcabac51d766865bd', '秦999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', '2019-01-19 23:36:34', 'admin', '2019-02-14 17:30:43', NULL);

-- ----------------------------
-- Table structure for jeecg_monthly_growth_analysis
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_monthly_growth_analysis`;
CREATE TABLE `jeecg_monthly_growth_analysis`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `month` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '月份',
  `main_income` decimal(18, 2) NULL DEFAULT 0.00 COMMENT '佣金/主营收入',
  `other_income` decimal(18, 2) NULL DEFAULT 0.00 COMMENT '其他收入',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jeecg_order_customer
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_customer`;
CREATE TABLE `jeecg_order_customer`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户名',
  `sex` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `idcard` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号码',
  `idcard_pic` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证扫描件',
  `telphone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话1',
  `order_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '外键',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jeecg_order_customer
-- ----------------------------
INSERT INTO `jeecg_order_customer` VALUES ('e46fe9111a9100844af582a18a2aa402', '1', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('ee7af0acb9beb9bf8d8b3819a8a7fdc3', '2', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('f5d2605e844192d9e548f9bd240ac908', '小张', NULL, '370285198602058211', NULL, '18611788676', '6a719071a29927a14f19482f8693d69a', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('f6db6547382126613a3e46e7cd58a5f2', '导入scott', NULL, NULL, NULL, NULL, 'a2cce75872cc8fcc47f78de9ffd378c2', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
