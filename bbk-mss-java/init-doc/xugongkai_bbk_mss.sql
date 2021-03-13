/*
 Navicat Premium Data Transfer

 Source Server         : 腾讯云_远程数据库
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : cdb-41wrstjc.bj.tencentcdb.com:10187
 Source Schema         : xugongkai_bbk_mss

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 12/07/2020 12:52:38S
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_approval
-- ----------------------------
DROP TABLE IF EXISTS `t_approval`;
CREATE TABLE `t_approval`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审批主体内容',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `last_update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最近一次更新时间',
  `level` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批优先级[低，中，高，紧急]',
  `status` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批当前状态[待审核，待配送，配送中，已完结]',
  `approval_user_id` bigint(20) NULL DEFAULT NULL COMMENT '关联审批人ID',
  `material_apply` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '物资申请信息：物资ID#数量@物资ID#数量',
  `create_user_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `event_id` bigint(20) NULL DEFAULT NULL COMMENT '关联应急事件ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_approval
-- ----------------------------
INSERT INTO `t_approval` VALUES (1252973014350139394, 'DASDA', 'DASDAS', '2020-04-22 22:50:20', '2020-04-23 22:31:47', '紧急', '已完结', 1251846379664392194, '蚕豆#3@鲤鱼#3@鲥鱼#2@', 131421, NULL);
INSERT INTO `t_approval` VALUES (1252973354273284098, 'DASDA', 'DASDAS', '2020-04-22 22:51:41', '2020-04-24 19:28:43', '紧急', '待配送', 1251846379664392194, '蚕豆#3@鲤鱼#3@鲥鱼#2@蚕豆#3@鲤鱼#3@鲥鱼#2@', 131421, 1252610748310687746);
INSERT INTO `t_approval` VALUES (1252983554640257025, 'DASD', 'DASDASDSA', '2020-04-22 23:32:13', '2020-04-22 23:32:13', '中', '待审核', 1251846379664392194, '鲥鱼#7@白果#2@', 131421, 1252610732028399618);
INSERT INTO `t_approval` VALUES (1252983595400503297, 'DASDDQW', 'DASDASDSADASDQW', '2020-04-22 23:32:22', '2020-04-23 21:52:45', '中', '配送中', 1251846379664392194, '鲥鱼#7@白果#2@马肉#7@七喜#3@', 131421, 1252610732028399618);
INSERT INTO `t_approval` VALUES (1252983637372903425, 'DASDDQWDQWDQW', 'DASDASDSADASDQWDQWDQW', '2020-04-22 23:32:32', '2020-04-23 20:35:21', '中', '已拒绝', 1251846379664392194, '鲥鱼#7@白果#2@马肉#7@七喜#3@西红柿#8@红牛#3@', 131421, 1252610732028399618);
INSERT INTO `t_approval` VALUES (1253930010287026178, '请求物资', '请求物资内容....', '2020-04-25 14:13:05', '2020-04-25 14:20:48', '中', '配送中', 1251846379664392194, '小麦粉#3@橡皮鱼#3@鲥鱼#1@猪肉#1@', 1251846246033866800, 1253929712285921282);
INSERT INTO `t_approval` VALUES (1253944106118115329, 'ABC审批', 'ABC审批内容', '2020-04-25 15:09:05', '2020-04-25 15:09:05', '中', '待审核', 1251846379664392194, '乌鱼#4@鲳鱼#3@薏仁米#3@', 1251846246033866800, 1253943476779577346);
INSERT INTO `t_approval` VALUES (1253946261684187137, '2020申请', '2020申请....', '2020-04-25 15:17:39', '2020-04-25 15:25:24', '中', '配送中', 1251846379664392194, '雪碧#5@鲤鱼#3@鲤鱼#3@', 1251846246033866800, 1253945759865073666);
INSERT INTO `t_approval` VALUES (1253949611817398274, 'xgk_审批', 'xgk_审批', '2020-04-25 15:30:58', '2020-04-25 15:30:58', '中', '待审核', 1251846379664392194, '人参#4@红枣#3@白果#1@', 1251846246033866800, 1253949222086864897);
INSERT INTO `t_approval` VALUES (1253951154914422785, 'AAA_shenpi', 'AAA_shenpi', '2020-04-25 15:37:06', '2020-04-25 15:44:27', '中', '配送中', 1251846379664392194, '鸭蛋#4@马肉#3@黑豆#1@', 1251846246033866800, 1253950815091912706);
INSERT INTO `t_approval` VALUES (1253954497871179777, 'SSS_SHENPI', 'SSS_SHENPI', '2020-04-25 15:50:23', '2020-04-25 16:01:51', '中', '已完结', 1251846379664392194, '乌鱼#3@桃仁#3@猪肉#1@', 1251846246033866800, 1253954216739565569);
INSERT INTO `t_approval` VALUES (1261455455218065409, 'QW', 'QW', '2020-05-16 08:36:31', '2020-05-16 08:37:34', '中', '配送中', 1251846379664392194, 'ASD#1@ASD#1@', 1251846246033866800, 1261455321528819713);
INSERT INTO `t_approval` VALUES (1261461993345277953, 'ASASA', 'SASAS', '2020-05-16 09:02:30', '2020-05-16 09:03:48', '高', '配送中', 1251846379664392194, '红薯#3@马齿苋#3@', 1251846246033866800, 1261461857944756225);
INSERT INTO `t_approval` VALUES (1261511501714317314, 'TYTYT', 'TYTYTY', '2020-05-16 12:19:14', '2020-05-16 12:20:39', '中', '配送中', 1251846379664392194, '薏米#3@黄豆#1@', 1251846246033866800, 1261511289469952001);
INSERT INTO `t_approval` VALUES (1263340566951780353, 'KMKM', 'KMKMMK', '2020-05-21 13:27:17', '2020-05-21 13:28:47', '中', '配送中', 1251846379664392194, 'ZXC#3@蕹菜#1@', 1251846246033866800, 1263340419136118786);

-- ----------------------------
-- Table structure for t_event
-- ----------------------------
DROP TABLE IF EXISTS `t_event`;
CREATE TABLE `t_event`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '事件名称',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地点',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `create_user_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '等级',
  `picture` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '受灾图片：图片地址A#图片地址B#图片地址C',
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详细说明',
  `loc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '坐标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_event
-- ----------------------------
INSERT INTO `t_event` VALUES (1252595956711735297, 'asdasd', '河南', '2020-04-21 21:52:02', 131421, '一般', NULL, 'dasdasd', NULL);
INSERT INTO `t_event` VALUES (1252596233200254978, 'DASD', '河南D', '2020-04-21 21:53:08', 131421, '一般', NULL, 'ASDASD', NULL);
INSERT INTO `t_event` VALUES (1252598678689177601, 'BSDB', '河南', '2020-04-21 22:02:51', 131421, '一般', NULL, 'BSGBS', NULL);
INSERT INTO `t_event` VALUES (1252610681516396545, 'DAS', '河南', '2020-04-21 22:50:33', 131421, '一般', NULL, 'DASDAS', NULL);
INSERT INTO `t_event` VALUES (1252610692379643905, 'DASASFASDFG', '河南', '2020-04-21 22:50:36', 131421, '一般', NULL, 'DASDASDASD', NULL);
INSERT INTO `t_event` VALUES (1252610705151299586, 'DASASFASDFGGSDFG', '河南GSDF', '2020-04-21 22:50:39', 131421, '一般', NULL, 'DASDASDASDGFSDFAG', NULL);
INSERT INTO `t_event` VALUES (1252610718262693890, '2131', '河南GSDF', '2020-04-21 22:50:42', 131421, '一般', NULL, 'DASDASDASDGFSDFAG', NULL);
INSERT INTO `t_event` VALUES (1252610725644668929, '423', '河南GSDF', '2020-04-21 22:50:43', 131421, '一般', NULL, 'DASDASDASDGFSDFAG', NULL);
INSERT INTO `t_event` VALUES (1252610732028399618, '4235', '河南GSDF', '2020-04-21 22:50:45', 131421, '一般', NULL, 'DASDASDASDGFSDFAG', NULL);
INSERT INTO `t_event` VALUES (1252610740211486721, '645', '河南GSDF', '2020-04-21 22:50:47', 131421, '一般', NULL, 'DASDASDASDGFSDFAG', NULL);
INSERT INTO `t_event` VALUES (1252610748310687746, '423425', '河南GSDF', '2020-04-21 22:50:49', 131421, '一般', NULL, 'DASDASDASDGFSDFAG', NULL);
INSERT INTO `t_event` VALUES (1253880317898240002, 'DEMO', '河南', '2020-04-25 10:55:39', NULL, '一般', NULL, 'DEMO', NULL);
INSERT INTO `t_event` VALUES (1253880726104629250, 'Demos', '河南', '2020-04-25 10:57:15', 1251846246033866800, '一般', NULL, 'demos', '113.75938#34.771713');
INSERT INTO `t_event` VALUES (1253884184517992449, 'XGK', '广东', '2020-04-25 11:11:00', 1251846246033866800, '一般', NULL, '江南西', '113.280331#23.103449');
INSERT INTO `t_event` VALUES (1253911789320314881, NULL, NULL, '2020-04-25 13:00:41', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_event` VALUES (1253911904290381825, NULL, NULL, '2020-04-25 13:01:09', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_event` VALUES (1253912036381597697, '～(￣▽￣～)(～￣▽￣)～', '河南', '2020-04-25 13:01:40', 1251846246033866800, '一般', NULL, 'AA', '113.75938&34.771713');
INSERT INTO `t_event` VALUES (1253912134444425217, '啊啊啊', '河南', '2020-04-25 13:02:03', 1251846246033866800, '一般', NULL, '1111', '113.75938&34.771713');
INSERT INTO `t_event` VALUES (1253912592810549249, '哈哈哈', '河南', '2020-04-25 13:03:53', 1251846246033866800, '一般', NULL, '1111', '113.75938&34.771713');
INSERT INTO `t_event` VALUES (1253912626394341378, 'GGGG', '河南', '2020-04-25 13:04:01', 1251846246033866800, '一般', NULL, '', '');
INSERT INTO `t_event` VALUES (1253913352034099201, 'SD', '河南', '2020-04-25 13:06:54', 1251846246033866800, '一般', NULL, 'DAS', '');
INSERT INTO `t_event` VALUES (1253916789626937345, NULL, NULL, '2020-04-25 13:20:33', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_event` VALUES (1253916917154750465, 'vcvcV', '河南', '2020-04-25 13:21:04', 1251846246033866800, '一般', NULL, '', '');
INSERT INTO `t_event` VALUES (1253918413753720834, 'OPOP', '河南', '2020-04-25 13:27:01', 1251846246033866800, '一般', NULL, 'DSA', '');
INSERT INTO `t_event` VALUES (1253926516486320129, 'uiui', '河南', '2020-04-25 13:59:12', 1251846246033866800, '一般', 'http://mss.oss.bestbigkk.com/1e32822bd40735fab2e3c35693510fb30e2408fc.jpg', 'UIUI', '114.752834&33.548214');
INSERT INTO `t_event` VALUES (1253928323778359297, 'AEAEAE', '河南', '2020-04-25 14:06:23', 1251846246033866800, '一般', 'http://mss.oss.bestbigkk.com/37284fafa40f4bfb9e851cbb0e4f78f0f63618b6.jpg', 'DSADASD', '114.863218&35.617448');
INSERT INTO `t_event` VALUES (1253928508852023298, 'CXCXCXC', '河南', '2020-04-25 14:07:07', 1251846246033866800, '一般', 'http://mss.oss.bestbigkk.com/1e32822bd40735fab2e3c35693510fb30e2408fc.jpg', 'XCXCXCXCX', '112.526761&34.452279');
INSERT INTO `t_event` VALUES (1253929712285921282, '王五Test', '河南', '2020-04-25 14:11:54', 1251846246033866800, '一般', 'http://mss.oss.bestbigkk.com/37284fafa40f4bfb9e851cbb0e4f78f0f63618b6.jpg', 'Demo', '113.75938&34.771713');
INSERT INTO `t_event` VALUES (1253942681761837058, 'Test_Demo', '河南', '2020-04-25 15:03:26', 1251846246033866800, '一般', 'http://mss.oss.bestbigkk.com/1e32822bd40735fab2e3c35693510fb30e2408fc.jpg', '说明...', '113.75938&34.771713');
INSERT INTO `t_event` VALUES (1253943476779577346, 'ABC123', '河南', '2020-04-25 15:06:35', 1251846246033866800, '一般', 'http://mss.oss.bestbigkk.com/37284fafa40f4bfb9e851cbb0e4f78f0f63618b6.jpg', '123456', '113.740983&34.680573');
INSERT INTO `t_event` VALUES (1253945759865073666, '2020Test', '河南', '2020-04-25 15:15:40', 1251846246033866800, '一般', 'http://mss.oss.bestbigkk.com/1e32822bd40735fab2e3c35693510fb30e2408fc.jpg', '2020说明....', '113.667394&34.877915');
INSERT INTO `t_event` VALUES (1253949222086864897, 'xgk_test', '河南', '2020-04-25 15:29:25', 1251846246033866800, '一般', 'http://mss.oss.bestbigkk.com/37284fafa40f4bfb9e851cbb0e4f78f0f63618b6.jpg', 'test...', '113.75938&34.771713');
INSERT INTO `t_event` VALUES (1253950815091912706, 'AAA_TEST', '河南', '2020-04-25 15:35:45', 1251846246033866800, '一般', 'http://mss.oss.bestbigkk.com/1e32822bd40735fab2e3c35693510fb30e2408fc.jpg', 'AAA_TEST', '113.75938&34.771713');
INSERT INTO `t_event` VALUES (1253954216739565569, 'SSS_TEST', '河南', '2020-04-25 15:49:16', 1251846246033866800, '一般', 'http://mss.oss.bestbigkk.com/1e32822bd40735fab2e3c35693510fb30e2408fc.jpg', 'SSS_TEST', '113.75938&34.771713');
INSERT INTO `t_event` VALUES (1261455321528819713, 'QAQA', '河南', '2020-05-16 08:36:00', 1251846246033866800, '轻微', 'http://mss.oss.bestbigkk.com/demo.jpg', 'QAQA', '114.311299&34.688172');
INSERT INTO `t_event` VALUES (1261461857944756225, 'sasa', '河南', '2020-05-16 09:01:58', 1251846246033866800, '紧急', 'http://mss.oss.bestbigkk.com/demo.jpg', 'sasasa', '114.946006&34.34934');
INSERT INTO `t_event` VALUES (1261511289469952001, 'TYTYT', '河南', '2020-05-16 12:18:23', 1251846246033866800, '一般', 'http://mss.oss.bestbigkk.com/demo.jpg', 'TYTY', '113.750181&34.824831');
INSERT INTO `t_event` VALUES (1263340419136118786, 'kmkm', '河南', '2020-05-21 13:26:42', 1251846246033866800, '轻微', 'http://mss.oss.bestbigkk.com/1e32822bd40735fab2e3c35693510fb30e2408fc.jpg', 'kmkmk', '113.75938&34.771713');

-- ----------------------------
-- Table structure for t_material
-- ----------------------------
DROP TABLE IF EXISTS `t_material`;
CREATE TABLE `t_material`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `material_batch_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物资批次',
  `material_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物资名称',
  `material_category_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `material_num` int(32) NULL DEFAULT 0 COMMENT '库存数量',
  `material_from` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '购进来源',
  `material_contact_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '被购方联系人',
  `material_contact_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '被购方联系方式',
  `material_contract_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '购入合同编号',
  `material_enable` tinyint(1) NULL DEFAULT 1 COMMENT '调配策略',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建日期',
  `create_user_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `common_index`(`id`, `material_batch_no`, `material_name`, `material_category_code`, `material_enable`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_material
-- ----------------------------
INSERT INTO `t_material` VALUES ('1231413847378628610', '980827', '营养快线', 'drink', 100, '广东-广州', '张先生', '13033845124', '45-234142-1233-312-12', 1, '2020-02-23 11:01:54', NULL);
INSERT INTO `t_material` VALUES ('1231418296323018754', '10002', '魔爪', 'drink', 100, '广东-广州', '李先生', '13033845124', '00002', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296323018755', '10003', '海之言', 'drink', 200, '广东-广州', '李先生', '13033845124', '00003', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296331407361', '10004', '苏打水', 'drink', 100, '河南-郑州', '张小姐', '13033845124', '00004', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296331407362', '10005', '果粒橙', 'drink', 100, '浙江-温州', '李女士', '13033845124', '00005', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296331407363', '10006', '雪碧', 'drink', 100, '湖北-武汉', '马太太', '13033845124', '00006', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296331407364', '10007', '可口可乐', 'drink', 100, '河南-郑州', '唐女士', '13033845124', '00007', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296331407365', '10008', '脉动', 'drink', 100, '北京市', '曾先生', '13033845124', '00008', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296331407366', '10009', '雀巢咖啡', 'drink', 100, '河南-商丘', '胡小姐', '13033845124', '00009', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296348184578', '10010', '美汁源', 'drink', 100, '河南-洛阳', '黄女士', '13033845124', '00010', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296348184579', '10011', '美年达', 'drink', 100, '广东-东莞', '袁先生', '13033845124', '00011', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296348184580', '10012', '真果粒', 'drink', 100, '广东-深圳', '刘先生', '13033845124', '00012', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296348184581', '10013', '冰红茶', 'drink', 100, '广东-汕头', '张先生', '13033845124', '00013', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296348184582', '10014', '冰绿茶', 'drink', 100, '广东-茂名', '潘阿姨', '13033845124', '00014', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296348184583', '10015', '茉莉清茶', 'drink', 100, '湖北-黄冈', '许小姐', '13033845124', '00015', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296348184584', '10016', '七喜', 'drink', 100, '湖南-长沙', '林先生', '13033845124', '00016', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296348184585', '10017', '冰露矿泉水', 'drink', 100, '吉林-长春', '马女士', '13033845124', '00017', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296348184586', '10018', '崂山带汽矿泉水', 'drink', 100, '内蒙古-呼和浩特', '张小姐', '13033845124', '00018', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296348184587', '10019', '和其正', 'drink', 100, '新疆-乌鲁木齐', '郝先生', '13033845124', '00019', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296348184588', '10020', '红牛', 'drink', 100, '云南-昆明', '唐先生', '13033845124', '00020', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296348184589', '10021', '健力宝', 'drink', 100, '云南-大理', '张先生', '13033845124', '00021', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296348184590', '10022', '露露', 'drink', 100, '山东-济南', '唐先生', '13033845124', '00022', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296348184591', '10023', '恒大冰泉', 'drink', 100, '海南-海口', '史先生', '13033845124', '00023', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296348184592', '10024', '娃哈哈', 'drink', 100, '湖南-长沙', '崔先生', '13033845124', '00024', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296348184593', '10025', '果缤纷', 'drink', 100, '上海市', '罗先生', '13033845124', '00025', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296348184594', '10026', 'helloC柚', 'drink', 100, '浙江-温州', '李先生', '13033845124', '00026', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296348184595', '10027', '柠檬me', 'drink', 100, '浙江-杭州', '赵小姐', '13033845124', '00027', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296411099137', '10028', '青梅绿茶', 'drink', 100, '台湾-台北', '曹小姐', '13033845124', '00028', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296411099138', '10029', '优格乳', 'drink', 100, '海南-三亚', '朱小姐', '13033845124', '00029', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231418296411099139', '10030', '冰灵水果', 'drink', 100, '河南-新乡', '徐小姐', '13033845124', '00030', 1, '2020-02-23 11:19:35', NULL);
INSERT INTO `t_material` VALUES ('1231422366773415938', '10031', '小麦粉', 'food', 100, '广东-广州', '李先生', '13033845124', '00031', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366773415939', '10032', '玉米粉', 'food', 200, '广东-广州', '李先生', '13033845124', '00032', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366773415940', '10033', '红豆', 'food', 100, '河南-郑州', '张小姐', '13033845124', '00033', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804545', '10034', '黄豆', 'food', 100, '浙江-温州', '李女士', '13033845124', '00034', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804546', '10035', '薏米', 'food', 100, '湖北-武汉', '马太太', '13033845124', '00035', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804547', '10036', '小米', 'food', 100, '河南-郑州', '唐女士', '13033845124', '00036', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804548', '10037', '黑豆', 'food', 100, '北京市', '曾先生', '13033845124', '00037', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804549', '10038', '豇豆', 'food', 100, '河南-商丘', '胡小姐', '13033845124', '00038', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804550', '10039', '龙须菜', 'food', 100, '河南-洛阳', '黄女士', '13033845124', '00039', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804551', '10040', '蕺菜', 'food', 100, '广东-东莞', '袁先生', '13033845124', '00040', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804552', '10041', '蕹菜', 'food', 100, '广东-深圳', '刘先生', '13033845124', '00041', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804553', '10042', '马齿苋', 'food', 100, '广东-汕头', '张先生', '13033845124', '00042', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804554', '10043', '西红柿', 'food', 100, '广东-茂名', '潘阿姨', '13033845124', '00043', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804555', '10044', '红枣', 'food', 100, '湖北-黄冈', '许小姐', '13033845124', '00044', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804556', '10045', '红枣', 'food', 100, '湖南-长沙', '林先生', '13033845124', '00045', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804557', '10046', '山药', 'food', 100, '吉林-长春', '马女士', '13033845124', '00046', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804558', '10047', '桃仁', 'food', 100, '内蒙古-呼和浩特', '张小姐', '13033845124', '00047', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804559', '10048', '杏仁', 'food', 100, '新疆-乌鲁木齐', '郝先生', '13033845124', '00048', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804560', '10049', '薏仁米', 'food', 100, '云南-昆明', '唐先生', '13033845124', '00049', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804561', '10050', '燕麦', 'food', 100, '云南-大理', '张先生', '13033845124', '00050', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804562', '10051', '荞麦', 'food', 100, '山东-济南', '唐先生', '13033845124', '00051', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804563', '10052', '马铃薯', 'food', 100, '海南-海口', '史先生', '13033845124', '00052', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804564', '10053', '红薯', 'food', 100, '湖南-长沙', '崔先生', '13033845124', '00053', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804565', '10054', '油菜籽', 'food', 100, '上海市', '罗先生', '13033845124', '00054', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804566', '10055', '胡麻', 'food', 100, '浙江-温州', '李先生', '13033845124', '00055', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804567', '10056', '芝麻', 'food', 100, '浙江-杭州', '赵小姐', '13033845124', '00056', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804568', '10057', '花生', 'food', 100, '台湾-台北', '曹小姐', '13033845124', '00057', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804569', '10058', '豌豆', 'food', 100, '海南-三亚', '朱小姐', '13033845124', '00058', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804570', '10059', '蚕豆', 'food', 100, '河南-新乡', '徐小姐', '13033845124', '00059', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804571', '10060', '橡皮鱼', 'food', 100, '浙江-温州', '李女士', '13033845124', '00060', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804572', '10061', '橡皮鱼', 'food', 100, '湖北-武汉', '马太太', '13033845124', '00061', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804573', '10062', '鲳鱼', 'food', 100, '河南-郑州', '唐女士', '13033845124', '00062', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366781804574', '10063', '鲤鱼', 'food', 100, '北京市', '曾先生', '13033845124', '00063', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164674', '10064', '鲥鱼', 'food', 100, '河南-商丘', '胡小姐', '13033845124', '00064', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164675', '10065', '银鱼', 'food', 100, '河南-洛阳', '黄女士', '13033845124', '00065', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164676', '10066', '牛肉', 'food', 100, '广东-东莞', '袁先生', '13033845124', '00066', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164677', '10067', '羊肉', 'food', 100, '广东-深圳', '刘先生', '13033845124', '00067', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164678', '10068', '狗肉', 'food', 100, '广东-汕头', '张先生', '13033845124', '00068', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164679', '10069', '虾', 'food', 100, '广东-茂名', '潘阿姨', '13033845124', '00069', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164680', '10070', '海参', 'food', 100, '湖北-黄冈', '许小姐', '13033845124', '00070', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164681', '10071', '淡菜', 'food', 100, '湖南-长沙', '林先生', '13033845124', '00071', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164682', '10072', '海马', 'food', 100, '吉林-长春', '马女士', '13033845124', '00072', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164683', '10073', '枸杞子', 'food', 100, '内蒙古-呼和浩特', '张小姐', '13033845124', '00073', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164684', '10074', '白果', 'food', 100, '新疆-乌鲁木齐', '郝先生', '13033845124', '00074', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164685', '10075', '韭菜', 'food', 100, '云南-昆明', '唐先生', '13033845124', '00075', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164686', '10076', '人参', 'food', 100, '云南-大理', '张先生', '13033845124', '00076', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164687', '10077', '萝卜', 'food', 100, '山东-济南', '唐先生', '13033845124', '00077', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164688', '10078', '甲鱼', 'food', 100, '海南-海口', '史先生', '13033845124', '00078', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164689', '10079', '猪肉', 'food', 100, '湖南-长沙', '崔先生', '13033845124', '00079', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164690', '10080', '鸡肉', 'food', 100, '上海市', '罗先生', '13033845124', '00080', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164691', '10081', '马肉', 'food', 100, '浙江-温州', '李先生', '13033845124', '00081', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164692', '10082', '海螃蟹', 'food', 100, '浙江-杭州', '赵小姐', '13033845124', '00082', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164693', '10083', '鸭蛋', 'food', 100, '台湾-台北', '曹小姐', '13033845124', '00083', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164694', '10084', '鸡蛋', 'food', 100, '海南-三亚', '朱小姐', '13033845124', '00084', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1231422366811164695', '10085', '乌鱼', 'food', 100, '河南-新乡', '徐小姐', '13033845124', '00085', 1, '2020-02-23 11:35:46', NULL);
INSERT INTO `t_material` VALUES ('1252950143569494018', 'WWW', 'WWW', 'C4', 2, 'WWW', 'WWW', 'WWW', 'WWW', 1, '2020-04-22 21:19:27', NULL);
INSERT INTO `t_material` VALUES ('1253931258897772545', '123', 'demo_213', 'CATEGORY_DEMO', 2, 'sd', 'das', 'das', 'dsa', 1, '2020-04-25 14:18:03', NULL);
INSERT INTO `t_material` VALUES ('1253947066390769666', '123', '123', '2020_DEMO', 2, '123', '123', '123', '123', 1, '2020-04-25 15:20:51', NULL);
INSERT INTO `t_material` VALUES ('1253951728267390978', '123', '123', 'XGK_CATEGORY', 3, '123', '123', '123', '123', 1, '2020-04-25 15:39:23', NULL);
INSERT INTO `t_material` VALUES ('1253955022444392449', '123', '123', 'SSS_CATEGORY', 4, '1222', '122', '121', '212', 1, '2020-04-25 15:52:28', NULL);
INSERT INTO `t_material` VALUES ('1261450719580413954', 'ZXC', 'ZXC', 'ZXC', 0, 'ZXC', 'ZXC', 'ZXC', 'ZXC', 1, '2020-05-16 08:17:42', NULL);
INSERT INTO `t_material` VALUES ('1261455033338191873', 'ASD', 'ASD', 'ASD', 0, 'ASD', 'ASD', 'ASD', 'ASD', 1, '2020-05-16 08:34:51', NULL);
INSERT INTO `t_material` VALUES ('1261461593489694721', 'www', 'www', 'WWW', 0, 'www', 'ww', 'ww', 'www', 1, '2020-05-16 09:00:55', NULL);
INSERT INTO `t_material` VALUES ('1261510986158858241', 'TY', 'TY', 'TYTYT', 0, 'TY', 'TY', 'TY', 'TY', 1, '2020-05-16 12:17:11', NULL);
INSERT INTO `t_material` VALUES ('1263340078608965634', 'kmkk', 'kmkkm', 'MKMKM', 0, '12', '12', '12', '12', 1, '2020-05-21 13:25:21', NULL);

-- ----------------------------
-- Table structure for t_material_category
-- ----------------------------
DROP TABLE IF EXISTS `t_material_category`;
CREATE TABLE `t_material_category`  (
  `id` bigint(36) NOT NULL COMMENT '主键',
  `category_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '物资分类编码',
  `category_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '物资分类名称',
  `enable` tinyint(1) NOT NULL DEFAULT 1 COMMENT '调配策略',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建日期',
  `create_user_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `common_index`(`id`, `category_code`, `category_name`, `enable`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_material_category
-- ----------------------------
INSERT INTO `t_material_category` VALUES (1231412682909814786, 'SHWZ', '生活物资', 1, '2020-02-23 10:57:17', NULL);
INSERT INTO `t_material_category` VALUES (1232586613253779458, 'GC', '钢材', 1, '2020-02-26 16:42:04', NULL);
INSERT INTO `t_material_category` VALUES (1232586942863159297, 'C1', '待定分类A', 1, '2020-02-26 16:43:22', NULL);
INSERT INTO `t_material_category` VALUES (1232587016448028674, 'C2', '待定分类2', 1, '2020-02-26 16:43:40', NULL);
INSERT INTO `t_material_category` VALUES (1232587073570254849, 'C3', '待定分类3', 1, '2020-02-26 16:43:53', NULL);
INSERT INTO `t_material_category` VALUES (1232587273872364033, 'medicine', '医疗物资', 1, '2020-02-19 10:09:14', NULL);
INSERT INTO `t_material_category` VALUES (1232587276372364033, 'electronic-equipment', '电子设备', 1, '2020-02-19 10:44:14', NULL);
INSERT INTO `t_material_category` VALUES (1232587276872364032, 'drink', '饮品', 1, '2020-02-19 10:08:11', NULL);
INSERT INTO `t_material_category` VALUES (1232587276872364033, 'C4', '嗯呢', 1, '2020-02-26 16:44:42', NULL);
INSERT INTO `t_material_category` VALUES (1232587276872964033, 'food', '粮食', 1, '2020-02-19 10:41:24', NULL);
INSERT INTO `t_material_category` VALUES (1252934694475759617, 'AAA', '', 1, '2020-04-22 20:18:04', 131421);
INSERT INTO `t_material_category` VALUES (1252934917981831170, 'AAA', '', 1, '2020-04-22 20:18:57', 131421);
INSERT INTO `t_material_category` VALUES (1252935091642793986, 'FSD', 'FSDF', 0, '2020-04-22 20:19:38', 131421);
INSERT INTO `t_material_category` VALUES (1252948939460411393, '', '', 0, '2020-04-22 21:14:40', 131421);
INSERT INTO `t_material_category` VALUES (1253931140354158594, 'CATEGORY_DEMO', '演示', 0, '2020-04-25 14:17:35', 1251844944243540000);
INSERT INTO `t_material_category` VALUES (1253946893723856898, '2020_DEMO', 'DEMO', 0, '2020-04-25 15:20:10', 1251844944243540000);
INSERT INTO `t_material_category` VALUES (1253950130828963842, 'xgk_demo', 'demo_xgk', 0, '2020-04-25 15:33:02', 1251844944243540000);
INSERT INTO `t_material_category` VALUES (1253951582964117506, 'XGK_CATEGORY', 'RRR', 0, '2020-04-25 15:38:48', 1251844944243540000);
INSERT INTO `t_material_category` VALUES (1253954930782072834, 'SSS_CATEGORY', 'SSS_CATEGORY', 0, '2020-04-25 15:52:06', 1251844944243540000);
INSERT INTO `t_material_category` VALUES (1261450643390881794, 'ZXC', 'ZXC', 0, '2020-05-16 08:17:25', 1251844944243540000);
INSERT INTO `t_material_category` VALUES (1261454964731961346, 'ASD', 'ASD', 0, '2020-05-16 08:34:35', 1251844944243540000);
INSERT INTO `t_material_category` VALUES (1261461555455746050, 'WWW', 'WWW', 1, '2020-05-16 09:00:46', 1251844944243540000);
INSERT INTO `t_material_category` VALUES (1261510925110763522, 'TYTYT', 'TYTYTY', 0, '2020-05-16 12:16:56', 1251844944243540000);
INSERT INTO `t_material_category` VALUES (1263335726309728257, 'ZX', 'ZX', 0, '2020-05-21 13:08:03', 1251844944243540000);
INSERT INTO `t_material_category` VALUES (1263339992319549441, 'MKMKM', 'KMKM', 0, '2020-05-21 13:25:00', 1251844944243540000);

-- ----------------------------
-- Table structure for t_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `t_operation_log`;
CREATE TABLE `t_operation_log`  (
  `id` bigint(16) NOT NULL COMMENT '主键',
  `ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求者IP',
  `model_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块名称',
  `log_description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志行为简述',
  `action_args` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法参数',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `log_location` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志产生地方【ClassName:methodName】',
  `error_msg` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常简述',
  `stack_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '堆栈信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_operation_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_transport
-- ----------------------------
DROP TABLE IF EXISTS `t_transport`;
CREATE TABLE `t_transport`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `approval_id` bigint(20) NOT NULL COMMENT '关联审批ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `expect_time` datetime(0) NULL DEFAULT NULL COMMENT '预期完成时间',
  `create_user_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `transport_record` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '运输状态详情，存储格式：时间#地点@时间#地点',
  `material_record` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '运送物资列表，存储格式：物资ID#数量@物资ID#数量',
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运送状态：配送中，已接收',
  `receiver_user_id` bigint(20) NULL DEFAULT NULL COMMENT '接收人信息',
  `transport_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运输方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_transport
-- ----------------------------
INSERT INTO `t_transport` VALUES (1253327548757045250, 1252973014350139394, '2020-04-02 00:00:00', '2020-04-09 00:00:00', 131421, '2020-04-24 20:44#如果需要在一个 Dialog 内部嵌套另一个 Dialog，需要使用 append-to-body 属性。@2020-04-24 20:44#before-close 仅当用户通过点击关闭图标或遮罩关闭 Dialog 时起效。如果你在 footer 具名 slot 里添加了用于关闭 Dialog 的按钮，那么可以在按钮的点击回调函数里加入 before-close 的相关逻辑。@2020-04-24 20:43#　注意，模块化引入方式时，要引入的 js export的值只可为一个，若多余一个如 export {var1,var2,...} 则不可使用这种方式 （经验证无效）。@2020-04-24 20:43#需要设置visible属性，它接收Boolean，当为true时显示 Dialog。Dialog 分为两个部分：body和footer，footer需要具名为footer的slot。title属性用于定义标题，它是可选的，默认值为空。最后，本例还展示了before-close的用法。@@@@', '蚕豆#3@鲤鱼#3@鲥鱼#2@', '已接收', 131421, '飞机');
INSERT INTO `t_transport` VALUES (1253953004241776641, 1253951154914422785, '2020-04-26 00:00:00', '2020-04-29 00:00:00', 1251846246033866800, '2020-04-25 15:46#到达郑州#113.754781&34.805864@@2020-04-25 15:46#AAA#113.648996&33.301375@@2020-04-25 15:47#undefined#@', '鸭蛋#4@马肉#3@黑豆#1@', '配送中', 1251846246033866800, '汽车');
INSERT INTO `t_transport` VALUES (1253956308363472897, 1253954497871179777, '2020-04-01 00:00:00', '2020-04-02 00:00:00', 1251846246033866800, '2020-04-25 15:58#发货#113.75938&34.771713@', '乌鱼#3@桃仁#3@猪肉#1@', '已接收', 1251846246033866800, '汽车');
INSERT INTO `t_transport` VALUES (1261462316851945473, 1261461993345277953, '2020-05-26 00:00:00', '2020-05-31 00:00:00', 1251846246033866800, '2020-05-16 09:04#DASDASD#113.75938&34.771713@', '红薯#3@马齿苋#3@', '配送中', 1251846246033866800, '飞机');
INSERT INTO `t_transport` VALUES (1261511855734546434, 1261511501714317314, '2020-05-19 00:00:00', '2020-05-25 00:00:00', 1251846246033866800, '2020-05-16 12:20#ASDASD#114.039939&34.454184@', '薏米#3@黄豆#1@', '配送中', 1251846246033866800, '汽车');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(16) NOT NULL COMMENT 'id',
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账户',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '盐值',
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '昵称',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '性别',
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '地址',
  `identity_code` int(1) NOT NULL COMMENT '身份编码',
  `identity_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份名称',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `enable` smallint(1) NOT NULL COMMENT '账户是否启用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `common_index`(`id`, `account`, `nick_name`, `identity_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1251844944243539970, 'xugongkai', '131421', '12345', '小明', '女', 'http://mss.oss.bestbigkk.com/应急物资管理.png', '河南-郑州', 2, '应急物资管理人员', '2020-04-19 20:07:47', 1);
INSERT INTO `t_user` VALUES (1251846246033866754, 'xumengkai', '131421', 'abcd', '王五', '男', 'http://mss.oss.bestbigkk.com/应急事件响应.png', '河南-驻马店', 1, '应急事件响应人员', '2020-04-19 20:12:57', 1);
INSERT INTO `t_user` VALUES (1251846246033866755, 'haohaoyu', '131421', 'dasd', '李四', '男', 'http://mss.oss.bestbigkk.com/物资运输.png', '河南-郑州', 3, '运输人员', '2020-04-24 22:30:04', 1);
INSERT INTO `t_user` VALUES (1251846379664392194, 'tangshuangshuang', '131421', 'abcd', '张三', '男', 'http://mss.oss.bestbigkk.com/审批.png', '河南-驻马店', 4, '审批人员', '2020-04-19 20:13:29', 1);

SET FOREIGN_KEY_CHECKS = 1;
