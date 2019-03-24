/*
 Navicat Premium Data Transfer

 Source Server         : mySever
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : eat

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 25/03/2019 03:02:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accessories
-- ----------------------------
DROP TABLE IF EXISTS `accessories`;
CREATE TABLE `accessories`  (
  `accessoriesId` int(11) NOT NULL,
  `accessoriesName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `accessoriesNum` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detailsId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`accessoriesId`) USING BTREE,
  INDEX `fk_accessories_rdetails`(`detailsId`) USING BTREE,
  CONSTRAINT `fk_accessories_rdetails` FOREIGN KEY (`detailsId`) REFERENCES `recipedetails` (`detailsid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accessories
-- ----------------------------
INSERT INTO `accessories` VALUES (1, '生抽', '适量', 71);
INSERT INTO `accessories` VALUES (2, '麻油', '适量', 71);
INSERT INTO `accessories` VALUES (3, '蒜', '适量', 71);
INSERT INTO `accessories` VALUES (4, '姜', '适量', 71);
INSERT INTO `accessories` VALUES (5, '油 ', '9克', 40);
INSERT INTO `accessories` VALUES (6, '料酒', '8克', 40);
INSERT INTO `accessories` VALUES (7, '红烧汁', '3克', 40);
INSERT INTO `accessories` VALUES (8, '醪糟 ', '20克', 40);
INSERT INTO `accessories` VALUES (9, '葱', '5克', 40);
INSERT INTO `accessories` VALUES (10, '姜', '2克', 40);
INSERT INTO `accessories` VALUES (11, '蒜', '5克', 40);
INSERT INTO `accessories` VALUES (12, '花椒', '1克', 40);
INSERT INTO `accessories` VALUES (13, '大料', '1克', 40);
INSERT INTO `accessories` VALUES (14, '盐', '2克', 40);
INSERT INTO `accessories` VALUES (15, '醋', '2克', 40);
INSERT INTO `accessories` VALUES (16, '油', '适量', 34);
INSERT INTO `accessories` VALUES (17, '盐', '3克', 34);
INSERT INTO `accessories` VALUES (18, '生抽', '10毫升', 34);
INSERT INTO `accessories` VALUES (19, '白糖', '20克', 22);
INSERT INTO `accessories` VALUES (20, '桂皮', '适量', 69);
INSERT INTO `accessories` VALUES (21, '八角', '适量', 69);
INSERT INTO `accessories` VALUES (22, '葱', '适量', 69);
INSERT INTO `accessories` VALUES (23, '姜', '适量', 69);
INSERT INTO `accessories` VALUES (24, '蒜', '适量', 69);
INSERT INTO `accessories` VALUES (25, '蒸鱼豉油', '30毫升', 26);
INSERT INTO `accessories` VALUES (26, '蚝油', '10毫升', 26);
INSERT INTO `accessories` VALUES (27, '白糖', '1克', 26);
INSERT INTO `accessories` VALUES (28, '精盐', '2克', 26);
INSERT INTO `accessories` VALUES (29, '原味鲜', '1克', 26);
INSERT INTO `accessories` VALUES (30, '食用油', '20毫升', 26);
INSERT INTO `accessories` VALUES (31, '蒸鱼豉油', '1汤匙', 57);
INSERT INTO `accessories` VALUES (32, '花生油', '1汤匙', 57);
INSERT INTO `accessories` VALUES (33, '油', '适量', 33);
INSERT INTO `accessories` VALUES (34, '盐', '3克', 33);
INSERT INTO `accessories` VALUES (35, '酱油', '10毫升', 33);
INSERT INTO `accessories` VALUES (36, '辣椒粉', '2克', 33);
INSERT INTO `accessories` VALUES (37, '五香粉', '2克', 33);
INSERT INTO `accessories` VALUES (38, '盐', '10克', 9);
INSERT INTO `accessories` VALUES (39, '八角', '5个', 9);
INSERT INTO `accessories` VALUES (40, '桂皮', '两块', 9);
INSERT INTO `accessories` VALUES (41, '干辣椒', '3个', 9);
INSERT INTO `accessories` VALUES (42, '油', '适量', 50);
INSERT INTO `accessories` VALUES (43, '食盐', '4克', 50);
INSERT INTO `accessories` VALUES (44, '酱油', '10毫升', 50);
INSERT INTO `accessories` VALUES (45, '蚝油', '10毫升', 50);
INSERT INTO `accessories` VALUES (46, '淀粉', '少量', 50);
INSERT INTO `accessories` VALUES (47, '料酒', '10毫升', 50);
INSERT INTO `accessories` VALUES (48, '八角', '3个', 50);
INSERT INTO `accessories` VALUES (49, '辣椒粉', '3克', 50);
INSERT INTO `accessories` VALUES (50, '鸡粉', '2克', 50);
INSERT INTO `accessories` VALUES (51, '水', '适量', 50);
INSERT INTO `accessories` VALUES (52, '白糖', '10克', 55);
INSERT INTO `accessories` VALUES (53, '水', '240克', 55);
INSERT INTO `accessories` VALUES (54, '黑豆', '2粒', 55);
INSERT INTO `accessories` VALUES (55, '葵花瓜籽', '2粒', 55);
INSERT INTO `accessories` VALUES (56, '鲜蛋黄', '1个', 55);
INSERT INTO `accessories` VALUES (57, '姜', '1片', 77);
INSERT INTO `accessories` VALUES (58, '葱', '1根', 77);
INSERT INTO `accessories` VALUES (59, '蒜', '2瓣', 77);
INSERT INTO `accessories` VALUES (60, '花椒粉', '1/4勺', 77);
INSERT INTO `accessories` VALUES (61, '酱油', '2勺', 77);
INSERT INTO `accessories` VALUES (62, '盐', '1/5勺', 77);
INSERT INTO `accessories` VALUES (63, '油', '适量', 44);
INSERT INTO `accessories` VALUES (64, '食盐', '3克', 44);
INSERT INTO `accessories` VALUES (65, '料酒', '10毫升', 44);
INSERT INTO `accessories` VALUES (66, '鸡精', '2克', 44);
INSERT INTO `accessories` VALUES (67, '八角', '3个', 44);
INSERT INTO `accessories` VALUES (68, '盐', '3克', 82);
INSERT INTO `accessories` VALUES (69, '胡椒粉', '1克', 82);
INSERT INTO `accessories` VALUES (70, '盐', '1勺', 18);
INSERT INTO `accessories` VALUES (71, '生抽', '3勺', 18);
INSERT INTO `accessories` VALUES (72, '老抽', '1勺', 18);
INSERT INTO `accessories` VALUES (73, '蚝油', '2勺', 18);
INSERT INTO `accessories` VALUES (74, '火锅底料', '1大勺', 18);
INSERT INTO `accessories` VALUES (75, '大葱', '1段', 18);
INSERT INTO `accessories` VALUES (76, '老姜', '1块', 18);
INSERT INTO `accessories` VALUES (77, '大料', '2个', 18);
INSERT INTO `accessories` VALUES (78, '干辣椒', '2个', 18);
INSERT INTO `accessories` VALUES (79, '鸡粉', '少许', 18);
INSERT INTO `accessories` VALUES (80, '香菜', '1根', 18);
INSERT INTO `accessories` VALUES (81, '红尖椒', '1个', 18);
INSERT INTO `accessories` VALUES (82, '玫瑰馅料', '200克', 64);
INSERT INTO `accessories` VALUES (83, '蛋黄', '8个', 64);
INSERT INTO `accessories` VALUES (84, '蛋黄水', '适量', 64);
INSERT INTO `accessories` VALUES (85, '学厨烤盘', '1件', 64);
INSERT INTO `accessories` VALUES (86, '黑芝麻', '适量', 64);
INSERT INTO `accessories` VALUES (87, '咖喱', '3克', 84);
INSERT INTO `accessories` VALUES (88, '盐', '2克', 84);
INSERT INTO `accessories` VALUES (89, '酱油', '10克', 84);
INSERT INTO `accessories` VALUES (90, '糖', '2克', 84);
INSERT INTO `accessories` VALUES (91, '蚝油', '8克', 84);
INSERT INTO `accessories` VALUES (92, '油   ', '10毫升', 60);
INSERT INTO `accessories` VALUES (93, '盐', '2克', 60);
INSERT INTO `accessories` VALUES (94, '鸡粉 ', '2克', 60);
INSERT INTO `accessories` VALUES (95, '葱姜', '5克', 60);
INSERT INTO `accessories` VALUES (96, '泡青椒', '2个', 51);
INSERT INTO `accessories` VALUES (97, '大蒜', '20克', 51);
INSERT INTO `accessories` VALUES (98, '豆瓣酱', '10克', 51);
INSERT INTO `accessories` VALUES (99, '生抽酱油', '15毫升', 51);
INSERT INTO `accessories` VALUES (100, '精盐', '2克', 51);
INSERT INTO `accessories` VALUES (101, '啤酒', '500毫升', 51);
INSERT INTO `accessories` VALUES (102, '葱花', '适量', 51);
INSERT INTO `accessories` VALUES (103, '食用油', '40毫升', 51);
INSERT INTO `accessories` VALUES (104, '芝麻酱', '1小盘', 17);
INSERT INTO `accessories` VALUES (105, '油', '适量', 49);
INSERT INTO `accessories` VALUES (106, '盐', '适量', 49);
INSERT INTO `accessories` VALUES (107, '蚝油', '适量', 49);
INSERT INTO `accessories` VALUES (108, '生粉', '适量', 49);
INSERT INTO `accessories` VALUES (109, '食用油', '适量', 36);
INSERT INTO `accessories` VALUES (110, '食盐', '3克', 36);
INSERT INTO `accessories` VALUES (111, '生抽', '10毫升', 36);
INSERT INTO `accessories` VALUES (112, '白糖', '3克', 36);
INSERT INTO `accessories` VALUES (113, '紫苏叶', '5克', 28);
INSERT INTO `accessories` VALUES (114, '精盐', '3克', 28);
INSERT INTO `accessories` VALUES (115, '现磨胡椒粉', '1克', 28);
INSERT INTO `accessories` VALUES (116, '食用油', '20毫升', 28);
INSERT INTO `accessories` VALUES (117, '小米椒', '2个', 52);
INSERT INTO `accessories` VALUES (118, '大蒜', '15克', 52);
INSERT INTO `accessories` VALUES (119, '生抽酱油', '15毫升', 52);
INSERT INTO `accessories` VALUES (120, '原味鲜', '1克', 52);
INSERT INTO `accessories` VALUES (121, '食用油', '20毫升', 52);
INSERT INTO `accessories` VALUES (122, '油', '一勺', 24);
INSERT INTO `accessories` VALUES (123, '盐', '一撮', 24);
INSERT INTO `accessories` VALUES (124, '大蒜', '几瓣', 24);
INSERT INTO `accessories` VALUES (125, '葱', '适量', 20);
INSERT INTO `accessories` VALUES (126, '老抽', '1勺', 20);
INSERT INTO `accessories` VALUES (127, '盐', '适量', 20);
INSERT INTO `accessories` VALUES (128, '酱油', '2勺', 20);
INSERT INTO `accessories` VALUES (129, '糖', '适量', 20);
INSERT INTO `accessories` VALUES (130, '蒜', '2瓣', 20);
INSERT INTO `accessories` VALUES (131, '姜', '1片', 20);
INSERT INTO `accessories` VALUES (132, '料酒', '适量', 20);
INSERT INTO `accessories` VALUES (133, '干辣椒', '适量', 20);
INSERT INTO `accessories` VALUES (134, '油', '适量', 48);
INSERT INTO `accessories` VALUES (135, '蚝油', '10毫升', 48);
INSERT INTO `accessories` VALUES (136, '酱油', '10毫升', 48);
INSERT INTO `accessories` VALUES (137, '八角', '2个', 48);
INSERT INTO `accessories` VALUES (138, '鸡粉', '2克', 48);
INSERT INTO `accessories` VALUES (139, '酵母粉', '3克', 59);
INSERT INTO `accessories` VALUES (140, '白糖', '3克', 59);
INSERT INTO `accessories` VALUES (141, '黄豆酱', '2勺', 59);
INSERT INTO `accessories` VALUES (142, '盐', '1/2匙', 59);
INSERT INTO `accessories` VALUES (143, '酱油', '1勺', 59);
INSERT INTO `accessories` VALUES (144, '黑胡椒粉', '1匙', 59);
INSERT INTO `accessories` VALUES (145, '大葱', '1根', 59);
INSERT INTO `accessories` VALUES (146, '香油', '1勺', 59);
INSERT INTO `accessories` VALUES (147, '豆瓣酱', '2克', 54);
INSERT INTO `accessories` VALUES (148, '盐', '1克', 54);
INSERT INTO `accessories` VALUES (149, '油', '1克', 54);
INSERT INTO `accessories` VALUES (150, '葱', '1克', 54);
INSERT INTO `accessories` VALUES (151, '葱', '1克', 29);
INSERT INTO `accessories` VALUES (152, '盐', '2克', 29);
INSERT INTO `accessories` VALUES (153, '油', '2克', 29);
INSERT INTO `accessories` VALUES (154, '猪油', '半碗', 13);
INSERT INTO `accessories` VALUES (155, '油', '适量', 46);
INSERT INTO `accessories` VALUES (156, '食盐', '3克', 46);
INSERT INTO `accessories` VALUES (157, '酱油', '10毫升', 46);
INSERT INTO `accessories` VALUES (158, '捞汁', '10毫升', 46);
INSERT INTO `accessories` VALUES (159, '高度白酒', '适量', 74);
INSERT INTO `accessories` VALUES (160, '盐', '2克', 80);
INSERT INTO `accessories` VALUES (161, '糖', '1克', 80);
INSERT INTO `accessories` VALUES (162, '酒', '5克', 80);
INSERT INTO `accessories` VALUES (163, '黑椒粉', '1克', 80);
INSERT INTO `accessories` VALUES (164, '蚝油', '10克', 80);
INSERT INTO `accessories` VALUES (165, '胡椒粉', '1克', 80);
INSERT INTO `accessories` VALUES (166, '盐', '3克', 30);
INSERT INTO `accessories` VALUES (167, '鸡粉', '2克', 30);
INSERT INTO `accessories` VALUES (168, '水', '适量', 30);
INSERT INTO `accessories` VALUES (169, '生姜', '适量', 19);
INSERT INTO `accessories` VALUES (170, '葱', '适量', 19);
INSERT INTO `accessories` VALUES (171, '大蒜', '适量', 19);
INSERT INTO `accessories` VALUES (172, '盐', '少许', 19);
INSERT INTO `accessories` VALUES (173, '生粉', '少许', 19);
INSERT INTO `accessories` VALUES (174, '料酒', '少许', 19);
INSERT INTO `accessories` VALUES (175, '鸡粉', '少许', 19);
INSERT INTO `accessories` VALUES (176, '油', '少许', 19);
INSERT INTO `accessories` VALUES (177, '食用油', '适量', 90);
INSERT INTO `accessories` VALUES (178, '油', '8克', 86);
INSERT INTO `accessories` VALUES (179, '蚝油', '3克', 86);
INSERT INTO `accessories` VALUES (180, '醋', '1克', 86);
INSERT INTO `accessories` VALUES (181, '味精', '1克', 86);
INSERT INTO `accessories` VALUES (182, '生抽', '2克', 86);
INSERT INTO `accessories` VALUES (183, '蒜 ', '5克', 86);
INSERT INTO `accessories` VALUES (184, '干辣椒', '1克', 86);
INSERT INTO `accessories` VALUES (185, '盐', '1克', 86);
INSERT INTO `accessories` VALUES (186, '油  ', '10毫升', 23);
INSERT INTO `accessories` VALUES (187, '盐', '2克', 23);
INSERT INTO `accessories` VALUES (188, '葱姜', '6克', 23);
INSERT INTO `accessories` VALUES (189, '蒜末', '5克', 67);
INSERT INTO `accessories` VALUES (190, '盐', '3克', 67);
INSERT INTO `accessories` VALUES (191, '生抽', '3克', 67);
INSERT INTO `accessories` VALUES (192, '蚝油', '3克', 67);
INSERT INTO `accessories` VALUES (193, '白糖', '1克', 67);
INSERT INTO `accessories` VALUES (194, '清水', '适量', 67);
INSERT INTO `accessories` VALUES (195, '盐', '2茶匙', 89);
INSERT INTO `accessories` VALUES (196, '生抽', '2勺', 89);
INSERT INTO `accessories` VALUES (197, '耗油', '一勺', 89);
INSERT INTO `accessories` VALUES (198, '豆瓣酱', '一勺', 89);
INSERT INTO `accessories` VALUES (199, '鸡精', '少许', 89);
INSERT INTO `accessories` VALUES (200, '料酒', '少许', 89);
INSERT INTO `accessories` VALUES (201, '葱', '2根', 2);
INSERT INTO `accessories` VALUES (202, '生姜', '1块', 2);
INSERT INTO `accessories` VALUES (203, '老抽', '1勺', 2);
INSERT INTO `accessories` VALUES (204, '花椒', '少许', 2);
INSERT INTO `accessories` VALUES (205, '八角', '2块', 2);
INSERT INTO `accessories` VALUES (206, '桂皮', '1块', 2);
INSERT INTO `accessories` VALUES (207, '香叶', '2片', 2);
INSERT INTO `accessories` VALUES (208, '生抽', '3勺', 2);
INSERT INTO `accessories` VALUES (209, '大酱', '1勺', 2);
INSERT INTO `accessories` VALUES (210, '蛋清', '1汤匙', 58);
INSERT INTO `accessories` VALUES (211, ' 盐', '4克', 58);
INSERT INTO `accessories` VALUES (212, '小葱', '5克', 58);
INSERT INTO `accessories` VALUES (213, '黄酒', '1汤匙', 58);
INSERT INTO `accessories` VALUES (214, ' 黑芝麻', '少许', 58);
INSERT INTO `accessories` VALUES (215, ' 油', '40毫升', 58);
INSERT INTO `accessories` VALUES (216, '红烧酱油', '1汤匙', 58);
INSERT INTO `accessories` VALUES (217, '蚝油', '1汤匙', 58);
INSERT INTO `accessories` VALUES (218, '鸡精', '1汤匙', 58);
INSERT INTO `accessories` VALUES (219, '芝麻油', '少许', 58);
INSERT INTO `accessories` VALUES (220, '大蒜', '10克', 4);
INSERT INTO `accessories` VALUES (221, '生抽', '20毫升', 4);
INSERT INTO `accessories` VALUES (222, '料酒', '10毫升', 4);
INSERT INTO `accessories` VALUES (223, '玉米淀粉', '3克', 4);
INSERT INTO `accessories` VALUES (224, '蚝油', '20毫升', 4);
INSERT INTO `accessories` VALUES (225, '精盐', '3克', 4);
INSERT INTO `accessories` VALUES (226, '原味鲜', '1克', 4);
INSERT INTO `accessories` VALUES (227, '食用油', '30毫升', 4);
INSERT INTO `accessories` VALUES (228, '白糖', '30克', 65);
INSERT INTO `accessories` VALUES (229, '酵母粉', '2克', 65);
INSERT INTO `accessories` VALUES (230, '葡萄干', '少许', 65);
INSERT INTO `accessories` VALUES (231, '枸杞子', '少许', 65);
INSERT INTO `accessories` VALUES (232, '花生油', '1勺', 10);
INSERT INTO `accessories` VALUES (233, '盐', '2克', 10);
INSERT INTO `accessories` VALUES (234, '生抽', '1勺', 10);
INSERT INTO `accessories` VALUES (235, '生姜', '3克', 87);
INSERT INTO `accessories` VALUES (236, '蚝油', '20毫升', 87);
INSERT INTO `accessories` VALUES (237, '精盐', '2克', 87);
INSERT INTO `accessories` VALUES (238, '原味鲜', '1克', 87);
INSERT INTO `accessories` VALUES (239, '食用油', '20毫升', 87);
INSERT INTO `accessories` VALUES (240, '葡萄醋', '50克', 85);
INSERT INTO `accessories` VALUES (241, '冰糖', '30克', 85);
INSERT INTO `accessories` VALUES (242, '盐', '3克', 85);
INSERT INTO `accessories` VALUES (243, '胡椒粉', '1克', 85);
INSERT INTO `accessories` VALUES (244, '老抽', '15克', 85);
INSERT INTO `accessories` VALUES (245, '酱油', '10克', 85);
INSERT INTO `accessories` VALUES (246, '盐', '1勺', 75);
INSERT INTO `accessories` VALUES (247, '生抽', '3勺', 75);
INSERT INTO `accessories` VALUES (248, '醋', '2勺', 75);
INSERT INTO `accessories` VALUES (249, '蚝油', '1勺', 75);
INSERT INTO `accessories` VALUES (250, '麻辣油', '适量', 75);
INSERT INTO `accessories` VALUES (251, '香油', '少许', 75);
INSERT INTO `accessories` VALUES (252, '鸡粉', '1小勺', 75);
INSERT INTO `accessories` VALUES (253, '蜂蜜', '适量', 16);
INSERT INTO `accessories` VALUES (254, '炼乳', '适量', 16);
INSERT INTO `accessories` VALUES (255, '食用油', '适量', 37);
INSERT INTO `accessories` VALUES (256, '辣椒粉', '2克', 37);
INSERT INTO `accessories` VALUES (257, '鸡粉', '2克', 37);
INSERT INTO `accessories` VALUES (258, '盐', '3克', 66);
INSERT INTO `accessories` VALUES (259, '白糖', '2克', 66);
INSERT INTO `accessories` VALUES (260, '生抽', '10克', 66);
INSERT INTO `accessories` VALUES (261, '料酒', '3克', 66);
INSERT INTO `accessories` VALUES (262, '蚝油', '5克', 66);
INSERT INTO `accessories` VALUES (263, '黑胡椒汁', '2克', 66);
INSERT INTO `accessories` VALUES (264, '蓝莓果酱', '适量', 79);
INSERT INTO `accessories` VALUES (265, '辣白菜', '适量', 68);
INSERT INTO `accessories` VALUES (266, '蘑菇', '适量', 68);
INSERT INTO `accessories` VALUES (267, '料酒', '适量', 68);
INSERT INTO `accessories` VALUES (268, '韩式辣酱', '适量', 68);
INSERT INTO `accessories` VALUES (269, '大葱', '适量', 68);
INSERT INTO `accessories` VALUES (270, '食用油', '适量', 68);
INSERT INTO `accessories` VALUES (271, '盐', '适量', 68);
INSERT INTO `accessories` VALUES (272, '油', '适量', 38);
INSERT INTO `accessories` VALUES (273, '食盐', '2克', 38);
INSERT INTO `accessories` VALUES (274, '生抽', '10毫升', 38);
INSERT INTO `accessories` VALUES (275, '白糖', '2克', 38);
INSERT INTO `accessories` VALUES (276, '捞汁', '10毫升', 38);
INSERT INTO `accessories` VALUES (277, '芝麻油', '10毫升', 38);
INSERT INTO `accessories` VALUES (278, '麻椒', '10粒', 62);
INSERT INTO `accessories` VALUES (279, '辣椒', '2个', 62);
INSERT INTO `accessories` VALUES (280, '大料', '1个', 62);
INSERT INTO `accessories` VALUES (281, '香叶', '1片', 62);
INSERT INTO `accessories` VALUES (282, '老抽', '少许', 62);
INSERT INTO `accessories` VALUES (283, '白糖', '10克', 62);
INSERT INTO `accessories` VALUES (284, '盐', '适量', 62);
INSERT INTO `accessories` VALUES (285, '蒜', '2瓣', 62);
INSERT INTO `accessories` VALUES (286, '盐', '3克', 39);
INSERT INTO `accessories` VALUES (287, '生抽', '10毫升', 39);
INSERT INTO `accessories` VALUES (288, '芝麻油', '10毫升', 39);
INSERT INTO `accessories` VALUES (289, '热炒仙露', '10毫升', 39);
INSERT INTO `accessories` VALUES (290, '水', '适量', 39);
INSERT INTO `accessories` VALUES (291, '蒸鱼豉油', '20毫升', 25);
INSERT INTO `accessories` VALUES (292, '香醋', '15毫升', 25);
INSERT INTO `accessories` VALUES (293, '白糖', '1克', 25);
INSERT INTO `accessories` VALUES (294, '精盐', '1克', 25);
INSERT INTO `accessories` VALUES (295, '食用油', '20毫升', 25);
INSERT INTO `accessories` VALUES (296, '熟白芝麻', '5克', 25);
INSERT INTO `accessories` VALUES (297, '食盐', '适量', 61);
INSERT INTO `accessories` VALUES (298, '醋', '适量', 61);
INSERT INTO `accessories` VALUES (299, '葱', '适量', 61);
INSERT INTO `accessories` VALUES (300, '姜', '适量', 61);
INSERT INTO `accessories` VALUES (301, '八角', '适量', 61);
INSERT INTO `accessories` VALUES (302, '干辣椒', '适量', 61);
INSERT INTO `accessories` VALUES (303, '辣椒粉', '适量', 61);
INSERT INTO `accessories` VALUES (304, '五香粉', '适量', 61);
INSERT INTO `accessories` VALUES (305, '十三香', '适量', 61);
INSERT INTO `accessories` VALUES (306, '鸡粉', '适量', 61);
INSERT INTO `accessories` VALUES (307, '糖', '适量', 70);
INSERT INTO `accessories` VALUES (308, '盐', '适量', 70);
INSERT INTO `accessories` VALUES (309, '姜', '适量', 70);
INSERT INTO `accessories` VALUES (310, '食用油', '适量', 70);
INSERT INTO `accessories` VALUES (311, '番茄沙司', '适量', 70);
INSERT INTO `accessories` VALUES (312, '冰糖', '2粒', 72);
INSERT INTO `accessories` VALUES (313, '枸杞', '20粒', 72);
INSERT INTO `accessories` VALUES (314, '冰糖', '30克', 81);
INSERT INTO `accessories` VALUES (315, '大葱', '1段', 73);
INSERT INTO `accessories` VALUES (316, '老姜', '3片', 73);
INSERT INTO `accessories` VALUES (317, '盐', '1勺', 73);
INSERT INTO `accessories` VALUES (318, '生抽', '2勺', 73);
INSERT INTO `accessories` VALUES (319, '鸡粉', '1小勺', 73);
INSERT INTO `accessories` VALUES (320, '花生油', '50克', 11);
INSERT INTO `accessories` VALUES (321, '盐', '2克', 11);
INSERT INTO `accessories` VALUES (322, '生抽', '15克', 11);
INSERT INTO `accessories` VALUES (323, '精盐', '2克', 27);
INSERT INTO `accessories` VALUES (324, '白醋', '5毫升', 27);
INSERT INTO `accessories` VALUES (325, '花椒', '10粒', 27);
INSERT INTO `accessories` VALUES (326, '原味鲜', '1克', 27);
INSERT INTO `accessories` VALUES (327, '食用油', '20毫升', 27);
INSERT INTO `accessories` VALUES (328, '花生油', '50克', 8);
INSERT INTO `accessories` VALUES (329, '盐', '3克', 8);
INSERT INTO `accessories` VALUES (330, '生抽', '20克', 8);
INSERT INTO `accessories` VALUES (331, '蚝油', '10克', 8);
INSERT INTO `accessories` VALUES (332, '辣椒酱', '两勺', 8);
INSERT INTO `accessories` VALUES (333, '大蒜籽', '3粒', 8);
INSERT INTO `accessories` VALUES (334, '盐', '1/4勺', 78);
INSERT INTO `accessories` VALUES (335, '香葱', '3根', 78);
INSERT INTO `accessories` VALUES (336, '姜', '2片', 78);
INSERT INTO `accessories` VALUES (337, '蒜', '2瓣', 78);
INSERT INTO `accessories` VALUES (338, '花椒粉', '1/4勺', 78);
INSERT INTO `accessories` VALUES (339, '蒸鱼豆豉', '2勺', 78);
INSERT INTO `accessories` VALUES (340, '番茄酱', '1勺', 78);
INSERT INTO `accessories` VALUES (341, '热炒鲜露调味料', '1勺', 78);
INSERT INTO `accessories` VALUES (342, '食盐', '少许', 3);
INSERT INTO `accessories` VALUES (343, '植物油', '1大勺', 3);
INSERT INTO `accessories` VALUES (344, '小葱', '1根', 3);
INSERT INTO `accessories` VALUES (345, '生姜', '1块', 3);
INSERT INTO `accessories` VALUES (346, '生抽', '1勺', 3);
INSERT INTO `accessories` VALUES (347, '花椒', '少许', 3);
INSERT INTO `accessories` VALUES (348, '八角', '1块', 3);
INSERT INTO `accessories` VALUES (349, '食用油', '适量', 41);
INSERT INTO `accessories` VALUES (350, '食盐', '3克', 41);
INSERT INTO `accessories` VALUES (351, '腌肉料', '1包', 1);
INSERT INTO `accessories` VALUES (352, '锡纸', '适量', 1);
INSERT INTO `accessories` VALUES (353, '食用油', '3汤匙', 42);
INSERT INTO `accessories` VALUES (354, '食盐', '3克', 42);
INSERT INTO `accessories` VALUES (355, '酱油', '10毫升', 42);
INSERT INTO `accessories` VALUES (356, '糖', '3克', 42);
INSERT INTO `accessories` VALUES (357, '捞汁', '10毫升', 42);
INSERT INTO `accessories` VALUES (358, '蚝油酱', '适量', 42);
INSERT INTO `accessories` VALUES (359, '水', '适量', 42);
INSERT INTO `accessories` VALUES (360, '油', '适量', 35);
INSERT INTO `accessories` VALUES (361, '生抽', '10毫升', 35);
INSERT INTO `accessories` VALUES (362, '食盐', '3克', 35);
INSERT INTO `accessories` VALUES (363, '热炒仙露', '10毫升', 35);
INSERT INTO `accessories` VALUES (364, '面粉', '400克', 14);
INSERT INTO `accessories` VALUES (365, '清水', '200克', 14);
INSERT INTO `accessories` VALUES (366, '白糖', '10克', 14);
INSERT INTO `accessories` VALUES (367, '酵母粉', '4克', 14);
INSERT INTO `accessories` VALUES (368, '盐', '适量', 63);
INSERT INTO `accessories` VALUES (369, '淀粉', '3.5小匙', 63);
INSERT INTO `accessories` VALUES (370, '胡椒粉', '半小匙', 63);
INSERT INTO `accessories` VALUES (371, '素味精', '少许', 63);
INSERT INTO `accessories` VALUES (372, '蚝油', '10克', 83);
INSERT INTO `accessories` VALUES (373, '糖', '1克', 83);
INSERT INTO `accessories` VALUES (374, '盐', '2克', 83);
INSERT INTO `accessories` VALUES (375, '酒 ', '5克', 83);
INSERT INTO `accessories` VALUES (376, '酱油 ', '10克', 83);
INSERT INTO `accessories` VALUES (377, '鸡粉', '0.5克', 83);
INSERT INTO `accessories` VALUES (378, '胡椒粉', '1克', 83);
INSERT INTO `accessories` VALUES (379, '番茄', '1个', 76);
INSERT INTO `accessories` VALUES (380, '盐', '1/3勺', 76);
INSERT INTO `accessories` VALUES (381, '番茄酱', '1勺', 76);
INSERT INTO `accessories` VALUES (382, '葱', '1根', 76);
INSERT INTO `accessories` VALUES (383, '姜', '2片', 76);
INSERT INTO `accessories` VALUES (384, '蒜', '2瓣', 76);
INSERT INTO `accessories` VALUES (385, '花椒粉', '1/3勺', 76);
INSERT INTO `accessories` VALUES (386, '冰糖', '适量', 76);
INSERT INTO `accessories` VALUES (387, '蜂蜜', '适量', 21);
INSERT INTO `accessories` VALUES (388, '苹果醋', '适量', 21);
INSERT INTO `accessories` VALUES (389, '干辣椒', '5个', 21);
INSERT INTO `accessories` VALUES (390, '油', '适量', 31);
INSERT INTO `accessories` VALUES (391, '食盐', '3克', 31);
INSERT INTO `accessories` VALUES (392, '白糖', '2克', 31);
INSERT INTO `accessories` VALUES (393, '食醋', '10毫升', 31);
INSERT INTO `accessories` VALUES (394, '热炒仙露', '10毫升', 31);
INSERT INTO `accessories` VALUES (395, '蚝油', '5克', 31);
INSERT INTO `accessories` VALUES (396, '水', '适量', 31);
INSERT INTO `accessories` VALUES (397, '丝瓜', '1根', 15);
INSERT INTO `accessories` VALUES (398, '盐', '5克', 15);
INSERT INTO `accessories` VALUES (399, '食用油', '适量', 43);
INSERT INTO `accessories` VALUES (400, '食盐', '3克', 43);
INSERT INTO `accessories` VALUES (401, '酱油', '10毫升', 43);
INSERT INTO `accessories` VALUES (402, '辣椒粉', '2克', 43);
INSERT INTO `accessories` VALUES (403, '食用油', '适量', 32);
INSERT INTO `accessories` VALUES (404, '食盐', '3克', 32);
INSERT INTO `accessories` VALUES (405, '酱油', '10毫升', 32);
INSERT INTO `accessories` VALUES (406, '捞汁', '10毫升', 32);
INSERT INTO `accessories` VALUES (407, '葱', '2克', 53);
INSERT INTO `accessories` VALUES (408, '盐', '2克', 53);
INSERT INTO `accessories` VALUES (409, '油', '3克', 53);
INSERT INTO `accessories` VALUES (410, '花生油', '40克', 7);
INSERT INTO `accessories` VALUES (411, '盐', '3克', 7);
INSERT INTO `accessories` VALUES (412, '生抽', '1勺', 7);
INSERT INTO `accessories` VALUES (413, '红烧酱油', '1勺', 7);
INSERT INTO `accessories` VALUES (414, '蚝油', '两勺', 7);
INSERT INTO `accessories` VALUES (415, '白糖', '5克', 7);
INSERT INTO `accessories` VALUES (416, '料酒', '两勺', 7);
INSERT INTO `accessories` VALUES (417, '十三香', '少许', 7);
INSERT INTO `accessories` VALUES (418, '精盐', '2克', 88);
INSERT INTO `accessories` VALUES (419, '食用油', '30毫升', 88);
INSERT INTO `accessories` VALUES (420, '蚝油', '30毫升', 5);
INSERT INTO `accessories` VALUES (421, '五香粉', '1克', 5);
INSERT INTO `accessories` VALUES (422, '精盐', '3克', 5);
INSERT INTO `accessories` VALUES (423, '原味鲜', '1克', 5);
INSERT INTO `accessories` VALUES (424, '食用油', '30毫升', 5);
INSERT INTO `accessories` VALUES (425, '酱油', '1汤匙', 56);
INSERT INTO `accessories` VALUES (426, '料酒', '1汤匙', 56);
INSERT INTO `accessories` VALUES (427, '淀粉', '1茶匙', 56);
INSERT INTO `accessories` VALUES (428, '盐', '少许', 56);
INSERT INTO `accessories` VALUES (429, '蜂蜜', '两勺', 6);
INSERT INTO `accessories` VALUES (430, '白糖', '两勺', 6);
INSERT INTO `accessories` VALUES (431, '盐', '少许', 6);
INSERT INTO `accessories` VALUES (432, '花生油', '1勺', 12);
INSERT INTO `accessories` VALUES (433, '料酒', '半勺', 12);
INSERT INTO `accessories` VALUES (434, '盐', '2克', 12);
INSERT INTO `accessories` VALUES (435, '十三香', '少许', 12);
INSERT INTO `accessories` VALUES (436, '蒸鱼豉油', '1勺', 12);
INSERT INTO `accessories` VALUES (437, '食用油', '适量', 47);
INSERT INTO `accessories` VALUES (438, '食盐', '3克', 47);
INSERT INTO `accessories` VALUES (439, '黄酒', '10毫升', 47);
INSERT INTO `accessories` VALUES (440, '酱油', '10毫升', 47);
INSERT INTO `accessories` VALUES (441, '白糖', '3克', 47);
INSERT INTO `accessories` VALUES (442, '八角', '2个', 47);
INSERT INTO `accessories` VALUES (443, '桂皮', '少许', 47);
INSERT INTO `accessories` VALUES (444, '水', '适量', 47);
INSERT INTO `accessories` VALUES (445, '芝士片', '3片', 149);
INSERT INTO `accessories` VALUES (446, '芝士碎', '适量', 149);
INSERT INTO `accessories` VALUES (447, '匹萨酱', '2勺', 149);
INSERT INTO `accessories` VALUES (448, '青椒', '半个', 149);
INSERT INTO `accessories` VALUES (449, '洋葱', '半个', 149);
INSERT INTO `accessories` VALUES (450, '黑橄榄', '一个（可不放）', 149);
INSERT INTO `accessories` VALUES (451, '海虾干', '30克', 177);
INSERT INTO `accessories` VALUES (452, '鱼露', '50毫升', 177);
INSERT INTO `accessories` VALUES (453, '白糖', '100克', 177);
INSERT INTO `accessories` VALUES (454, '盐', '150克', 177);
INSERT INTO `accessories` VALUES (455, '韩式辣椒酱', '60克', 177);
INSERT INTO `accessories` VALUES (456, '糯米粉', '50克', 177);
INSERT INTO `accessories` VALUES (457, '水', '500克', 177);
INSERT INTO `accessories` VALUES (458, '洋葱', '半颗', 175);
INSERT INTO `accessories` VALUES (459, '西红柿', '1个', 175);
INSERT INTO `accessories` VALUES (460, '蕃茄沙司', '适量', 175);
INSERT INTO `accessories` VALUES (461, '白砂糖', '15克', 175);
INSERT INTO `accessories` VALUES (462, '盐', '适量', 175);
INSERT INTO `accessories` VALUES (463, '黑胡椒粉', '适量', 175);
INSERT INTO `accessories` VALUES (464, '大蒜', '3瓣', 175);
INSERT INTO `accessories` VALUES (465, '植物油', '适量', 175);
INSERT INTO `accessories` VALUES (466, '黑胡椒酱料', '1包', 131);
INSERT INTO `accessories` VALUES (467, '盐', '适量', 131);
INSERT INTO `accessories` VALUES (468, '黄油', '8克', 131);
INSERT INTO `accessories` VALUES (469, '油', '8克', 180);
INSERT INTO `accessories` VALUES (470, '盐', '2克', 180);
INSERT INTO `accessories` VALUES (471, '蒜', '4克', 180);
INSERT INTO `accessories` VALUES (472, '罗勒', '1克', 180);
INSERT INTO `accessories` VALUES (473, '番茄酱', '适量', 106);
INSERT INTO `accessories` VALUES (474, '盐', '适量', 106);
INSERT INTO `accessories` VALUES (475, '酱油', '适量', 106);
INSERT INTO `accessories` VALUES (476, '白糖', '适量', 106);
INSERT INTO `accessories` VALUES (477, '橄榄油', '适量', 106);
INSERT INTO `accessories` VALUES (478, '酱油', '适量', 92);
INSERT INTO `accessories` VALUES (479, '泰式甜辣酱', '适量', 92);
INSERT INTO `accessories` VALUES (480, '盐', '少许', 92);
INSERT INTO `accessories` VALUES (481, '椰子水', '1L', 92);
INSERT INTO `accessories` VALUES (482, '胡萝卜', '1个', 151);
INSERT INTO `accessories` VALUES (483, '洋葱', '1个', 151);
INSERT INTO `accessories` VALUES (484, '口蘑', '30克', 151);
INSERT INTO `accessories` VALUES (485, '火腿', '20片', 151);
INSERT INTO `accessories` VALUES (486, '大虾', '6个', 151);
INSERT INTO `accessories` VALUES (487, '青椒', '1个', 151);
INSERT INTO `accessories` VALUES (488, '青豆', '30克', 151);
INSERT INTO `accessories` VALUES (489, '马苏里拉', '200克', 151);
INSERT INTO `accessories` VALUES (490, '甜辣酱', '一大勺', 155);
INSERT INTO `accessories` VALUES (491, '白胡椒粉', '适量', 155);
INSERT INTO `accessories` VALUES (492, '大蒜粒', '适量', 155);
INSERT INTO `accessories` VALUES (493, '胡萝卜', '一根', 155);
INSERT INTO `accessories` VALUES (494, '白芝麻', '少许', 155);
INSERT INTO `accessories` VALUES (495, '韩式辣白菜', '1包', 155);
INSERT INTO `accessories` VALUES (496, '洋葱', '1个', 155);
INSERT INTO `accessories` VALUES (497, '火腿肠', '一根', 155);
INSERT INTO `accessories` VALUES (498, '菜籽油', '适量', 155);
INSERT INTO `accessories` VALUES (499, '白砂糖', '适量', 155);
INSERT INTO `accessories` VALUES (500, '芝士', '30克', 122);
INSERT INTO `accessories` VALUES (501, '盐', '6克', 122);
INSERT INTO `accessories` VALUES (502, '番茄酱', '10克', 122);
INSERT INTO `accessories` VALUES (503, '食盐', '2克', 150);
INSERT INTO `accessories` VALUES (504, '鲜辣粉', '1茶匙', 150);
INSERT INTO `accessories` VALUES (505, '味精', '1/2茶匙', 150);
INSERT INTO `accessories` VALUES (506, '姜', '一小块', 150);
INSERT INTO `accessories` VALUES (507, '辣椒酱', '适量', 150);
INSERT INTO `accessories` VALUES (508, '黄瓜', '1根', 124);
INSERT INTO `accessories` VALUES (509, '红萝卜	', '1根', 124);
INSERT INTO `accessories` VALUES (510, '肉松	', '100克', 124);
INSERT INTO `accessories` VALUES (511, '紫甘蓝	', '2片', 124);
INSERT INTO `accessories` VALUES (512, '寿司醋	', '适量', 124);
INSERT INTO `accessories` VALUES (513, '寿司专用紫菜	', '10片', 124);
INSERT INTO `accessories` VALUES (514, '胡萝卜', '半根', 163);
INSERT INTO `accessories` VALUES (515, '洋葱', '半个', 163);
INSERT INTO `accessories` VALUES (516, '橄榄油', '2大勺', 163);
INSERT INTO `accessories` VALUES (517, '黑胡椒', '1小撮', 163);
INSERT INTO `accessories` VALUES (518, '盐', '1勺', 163);
INSERT INTO `accessories` VALUES (519, '糖', '1小勺', 163);
INSERT INTO `accessories` VALUES (520, '口蘑', '6颗', 104);
INSERT INTO `accessories` VALUES (521, '胡萝卜', '1根', 104);
INSERT INTO `accessories` VALUES (522, '洋葱', '1颗', 104);
INSERT INTO `accessories` VALUES (523, '大蒜', '2瓣', 104);
INSERT INTO `accessories` VALUES (524, '西芹', '5根', 104);
INSERT INTO `accessories` VALUES (525, '帕玛森干酪', '60克', 104);
INSERT INTO `accessories` VALUES (526, '罗勒叶', '一把', 104);
INSERT INTO `accessories` VALUES (527, '现磨海盐', '适量', 104);
INSERT INTO `accessories` VALUES (528, '现磨黑胡椒', '适量', 104);
INSERT INTO `accessories` VALUES (529, '金不换', '3片', 165);
INSERT INTO `accessories` VALUES (530, '大蒜', '2瓣', 165);
INSERT INTO `accessories` VALUES (531, '味噌酱', '一勺', 101);
INSERT INTO `accessories` VALUES (532, '鸡精', '一克', 101);
INSERT INTO `accessories` VALUES (533, '自制香肠', '2根', 160);
INSERT INTO `accessories` VALUES (534, '清水', '适量', 160);
INSERT INTO `accessories` VALUES (535, '牛至', '1茶匙', 173);
INSERT INTO `accessories` VALUES (536, '蜂蜜', '半茶匙', 173);
INSERT INTO `accessories` VALUES (537, '北非辣椒酱', '半汤匙', 173);
INSERT INTO `accessories` VALUES (538, '鸡汤', '125毫升', 173);
INSERT INTO `accessories` VALUES (539, '奶油', '40毫升', 173);
INSERT INTO `accessories` VALUES (540, '切达奶酪（cheddar）', '43克', 173);
INSERT INTO `accessories` VALUES (541, '欧芹', '适量', 173);
INSERT INTO `accessories` VALUES (542, '肉豆蔻粉', '适量', 173);
INSERT INTO `accessories` VALUES (543, '柠檬汁', '适量', 173);
INSERT INTO `accessories` VALUES (544, '海盐', '适量', 173);
INSERT INTO `accessories` VALUES (545, '黑胡椒碎', '适量', 173);
INSERT INTO `accessories` VALUES (546, '大蒜', '两瓣', 142);
INSERT INTO `accessories` VALUES (547, '番茄酱', '一汤勺', 142);
INSERT INTO `accessories` VALUES (548, '盐', '一点', 142);
INSERT INTO `accessories` VALUES (549, '橄榄油', '适量', 142);
INSERT INTO `accessories` VALUES (550, '蒜蓉', '50克', 169);
INSERT INTO `accessories` VALUES (551, '番茄酱', '50克', 169);
INSERT INTO `accessories` VALUES (552, '白糖', '1勺', 97);
INSERT INTO `accessories` VALUES (553, '罗勒', '1勺', 97);
INSERT INTO `accessories` VALUES (554, '食盐', '1勺', 97);
INSERT INTO `accessories` VALUES (555, '蕃茄酱', '60克', 97);
INSERT INTO `accessories` VALUES (556, '白醋', '1勺', 97);
INSERT INTO `accessories` VALUES (557, '黑胡椒粉', '2克', 97);
INSERT INTO `accessories` VALUES (558, '芝麻酱', '1大匙', 136);
INSERT INTO `accessories` VALUES (559, '韩式辣酱', '1大匙', 136);
INSERT INTO `accessories` VALUES (560, '泡菜汁', '1大匙', 136);
INSERT INTO `accessories` VALUES (561, '白糖', '1大匙', 136);
INSERT INTO `accessories` VALUES (562, '白醋', '1大匙', 136);
INSERT INTO `accessories` VALUES (563, '蜂蜜', '1茶匙', 136);
INSERT INTO `accessories` VALUES (564, '白芝麻', '1茶匙', 136);
INSERT INTO `accessories` VALUES (565, '花生酱', '30克', 103);
INSERT INTO `accessories` VALUES (566, '大蒜', '1颗', 103);
INSERT INTO `accessories` VALUES (567, '第戎芥末', '30克', 103);
INSERT INTO `accessories` VALUES (568, '橄榄油', '20毫升', 103);
INSERT INTO `accessories` VALUES (569, '现磨海盐', '适量', 103);
INSERT INTO `accessories` VALUES (570, '现磨黑胡椒', '适量', 103);
INSERT INTO `accessories` VALUES (571, '辣酱', '适量', 113);
INSERT INTO `accessories` VALUES (572, '鸡精', '适量', 113);
INSERT INTO `accessories` VALUES (573, '香油', '适量', 113);
INSERT INTO `accessories` VALUES (574, '味增汤酱', '一勺', 176);
INSERT INTO `accessories` VALUES (575, '韩式辣椒酱', '依个人喜好加辣', 176);
INSERT INTO `accessories` VALUES (576, '干海带', '少许', 176);
INSERT INTO `accessories` VALUES (577, '葱', '两根', 176);
INSERT INTO `accessories` VALUES (578, '橄榄油', '2茶匙', 123);
INSERT INTO `accessories` VALUES (579, '海盐', '少许', 123);
INSERT INTO `accessories` VALUES (580, '黑胡椒', '少许', 123);
INSERT INTO `accessories` VALUES (581, '香草', '少许', 123);
INSERT INTO `accessories` VALUES (582, '黑胡椒酱', '适量', 111);
INSERT INTO `accessories` VALUES (583, '食盐', '适量', 111);
INSERT INTO `accessories` VALUES (584, '黄油', '一块', 111);
INSERT INTO `accessories` VALUES (585, '盐', '适量', 159);
INSERT INTO `accessories` VALUES (586, '糖', '少许', 159);
INSERT INTO `accessories` VALUES (587, '意面酱', '适量', 141);
INSERT INTO `accessories` VALUES (588, '大葱', '1段', 139);
INSERT INTO `accessories` VALUES (589, '杭椒', '1个', 139);
INSERT INTO `accessories` VALUES (590, '韩式辣椒酱', '适量', 139);
INSERT INTO `accessories` VALUES (591, '盐', '1勺', 170);
INSERT INTO `accessories` VALUES (592, '花生酱', '2勺', 170);
INSERT INTO `accessories` VALUES (593, '番茄沙司', '2勺', 170);
INSERT INTO `accessories` VALUES (594, '清水', '适量', 170);
INSERT INTO `accessories` VALUES (595, '洋葱', '少许', 94);
INSERT INTO `accessories` VALUES (596, '大葱', '2段', 94);
INSERT INTO `accessories` VALUES (597, '豆芽', '少许', 94);
INSERT INTO `accessories` VALUES (598, '彩椒', '少许', 94);
INSERT INTO `accessories` VALUES (599, '辣椒酱', '1/2汤匙', 94);
INSERT INTO `accessories` VALUES (600, '韩国大酱', '1汤匙', 94);
INSERT INTO `accessories` VALUES (601, '洋葱', '适量', 133);
INSERT INTO `accessories` VALUES (602, '黄瓜', '1根', 133);
INSERT INTO `accessories` VALUES (603, '鸡蛋', '2个', 133);
INSERT INTO `accessories` VALUES (604, '火腿肠', '1根', 133);
INSERT INTO `accessories` VALUES (605, '蒸鱼豉油', '适量', 133);
INSERT INTO `accessories` VALUES (606, '生抽', '适量', 133);
INSERT INTO `accessories` VALUES (607, '橄榄油', '一汤匙', 117);
INSERT INTO `accessories` VALUES (608, '盐', '2克', 117);
INSERT INTO `accessories` VALUES (609, '姜片', '1克', 117);
INSERT INTO `accessories` VALUES (610, '蒜', '1克', 117);
INSERT INTO `accessories` VALUES (611, '欧芹', '1克', 117);
INSERT INTO `accessories` VALUES (612, '迷迭香', '1克', 117);
INSERT INTO `accessories` VALUES (613, '肉桂粉', '1克', 117);
INSERT INTO `accessories` VALUES (614, '姜', '20克', 154);
INSERT INTO `accessories` VALUES (615, '蒜片', '20克', 154);
INSERT INTO `accessories` VALUES (616, '盐', '5克', 154);
INSERT INTO `accessories` VALUES (617, '辣酱', '50克', 154);
INSERT INTO `accessories` VALUES (618, '青椒', '2个', 128);
INSERT INTO `accessories` VALUES (619, '丸子', '5个', 128);
INSERT INTO `accessories` VALUES (620, '卤肉片', '30克', 128);
INSERT INTO `accessories` VALUES (621, '葱头', '1个', 128);
INSERT INTO `accessories` VALUES (622, '盐', '3克', 128);
INSERT INTO `accessories` VALUES (623, '五香粉', '5克', 128);
INSERT INTO `accessories` VALUES (624, '酱', '5克', 128);
INSERT INTO `accessories` VALUES (625, '水', '适量', 128);
INSERT INTO `accessories` VALUES (626, '油', '10克', 128);
INSERT INTO `accessories` VALUES (627, '蒜', '5克', 128);
INSERT INTO `accessories` VALUES (628, '柿子', '1个', 128);
INSERT INTO `accessories` VALUES (629, '葱花', '1/2汤匙', 107);
INSERT INTO `accessories` VALUES (630, '植物油', '2汤匙', 107);
INSERT INTO `accessories` VALUES (631, '韩式辣酱', '1汤匙', 107);
INSERT INTO `accessories` VALUES (632, '白糖', '1茶匙', 107);
INSERT INTO `accessories` VALUES (633, '盐', '1小勺', 158);
INSERT INTO `accessories` VALUES (634, '蛋黄酱', '适量', 158);
INSERT INTO `accessories` VALUES (635, '海苔粉', '适量', 158);
INSERT INTO `accessories` VALUES (636, '木鱼花', '适量', 158);
INSERT INTO `accessories` VALUES (637, '清水', '50毫升', 158);
INSERT INTO `accessories` VALUES (638, '黄油', '30克', 137);
INSERT INTO `accessories` VALUES (639, '食用盐', '适量', 137);
INSERT INTO `accessories` VALUES (640, '辣椒', '适量', 137);
INSERT INTO `accessories` VALUES (641, '大蒜', '1瓣（切碎）', 137);
INSERT INTO `accessories` VALUES (642, '面粉', '20克', 137);
INSERT INTO `accessories` VALUES (643, '紫苏叶', '1片', 115);
INSERT INTO `accessories` VALUES (644, '海苔丝', '少量', 115);
INSERT INTO `accessories` VALUES (645, '白芝麻', '少量', 115);
INSERT INTO `accessories` VALUES (646, '芥末酱', '少量', 115);
INSERT INTO `accessories` VALUES (647, '青柠檬', '一个', 172);
INSERT INTO `accessories` VALUES (648, '橄榄油', '20克', 172);
INSERT INTO `accessories` VALUES (649, '芥末', '少量', 172);
INSERT INTO `accessories` VALUES (650, '日料酱油', '一碟', 172);
INSERT INTO `accessories` VALUES (651, '油', '14克', 138);
INSERT INTO `accessories` VALUES (652, '酵母粉', '2克', 138);
INSERT INTO `accessories` VALUES (653, '水', '100克', 138);
INSERT INTO `accessories` VALUES (654, '盐', '1克', 138);
INSERT INTO `accessories` VALUES (655, '腊肉(培根)', '150克', 138);
INSERT INTO `accessories` VALUES (656, '黄椒', '半个', 138);
INSERT INTO `accessories` VALUES (657, '青椒', '1个', 138);
INSERT INTO `accessories` VALUES (658, '圣女果', '8个', 138);
INSERT INTO `accessories` VALUES (659, '披萨酱', '适量', 138);
INSERT INTO `accessories` VALUES (660, '芝士', '125克', 138);
INSERT INTO `accessories` VALUES (661, '白砂糖', '10克', 138);
INSERT INTO `accessories` VALUES (662, '鸡蛋', '3个', 116);
INSERT INTO `accessories` VALUES (663, '玉米淀粉', '适量', 116);
INSERT INTO `accessories` VALUES (664, '面包糠', '适量', 116);
INSERT INTO `accessories` VALUES (665, '精盐', '少许', 116);
INSERT INTO `accessories` VALUES (666, '肉酱', '适量', 116);
INSERT INTO `accessories` VALUES (667, '各种蔬菜', '适量', 98);
INSERT INTO `accessories` VALUES (668, '盐', '适量', 98);
INSERT INTO `accessories` VALUES (669, '白砂糖', '适量', 98);
INSERT INTO `accessories` VALUES (670, '青芥末', '适量', 167);
INSERT INTO `accessories` VALUES (671, '甜椒粉', '适量', 167);
INSERT INTO `accessories` VALUES (672, '水', '200毫升', 174);
INSERT INTO `accessories` VALUES (673, '大虾', '四只', 174);
INSERT INTO `accessories` VALUES (674, '鸡蛋', '一个', 174);
INSERT INTO `accessories` VALUES (675, '包菜', '少许', 174);
INSERT INTO `accessories` VALUES (676, '樱花虾皮', '少许', 174);
INSERT INTO `accessories` VALUES (677, '山药', '少许', 174);
INSERT INTO `accessories` VALUES (678, '火腿肠', '一根', 174);
INSERT INTO `accessories` VALUES (679, '食盐', '半茶匙', 127);
INSERT INTO `accessories` VALUES (680, '韩国辣酱', '20克', 127);
INSERT INTO `accessories` VALUES (681, '芝麻', '适量', 127);
INSERT INTO `accessories` VALUES (682, '橄榄油', '10克', 153);
INSERT INTO `accessories` VALUES (683, '盐', '2克', 153);
INSERT INTO `accessories` VALUES (684, '黑胡椒粉', '适量', 153);
INSERT INTO `accessories` VALUES (685, '九层塔', '3片', 153);
INSERT INTO `accessories` VALUES (686, '洋葱', '半个', 93);
INSERT INTO `accessories` VALUES (687, '西红柿', '半个', 93);
INSERT INTO `accessories` VALUES (688, '球生菜', '两片', 93);
INSERT INTO `accessories` VALUES (689, '沙拉酱', '自取', 93);
INSERT INTO `accessories` VALUES (690, '芝士片', '2片', 93);
INSERT INTO `accessories` VALUES (691, '食盐', '适量', 93);
INSERT INTO `accessories` VALUES (692, '黑胡椒', '少许', 93);
INSERT INTO `accessories` VALUES (693, '食用油', '适量', 93);
INSERT INTO `accessories` VALUES (694, '鱼露', '3汤匙', 121);
INSERT INTO `accessories` VALUES (695, '糖', '2汤匙', 121);
INSERT INTO `accessories` VALUES (696, '小红尖椒', '2个', 121);
INSERT INTO `accessories` VALUES (697, '泰式辣酱', '3汤匙', 121);
INSERT INTO `accessories` VALUES (698, '嫩姜', '20克', 121);
INSERT INTO `accessories` VALUES (699, '香菜', '适量', 121);
INSERT INTO `accessories` VALUES (700, '寿司醋', '3大匙', 146);
INSERT INTO `accessories` VALUES (701, '寿司酱油', '2大匙', 146);
INSERT INTO `accessories` VALUES (702, '芥末', '少许', 146);
INSERT INTO `accessories` VALUES (703, '油', '30克', 161);
INSERT INTO `accessories` VALUES (704, '盐', '10克', 161);
INSERT INTO `accessories` VALUES (705, '黑胡椒', '5克', 161);
INSERT INTO `accessories` VALUES (706, '酵母', '3克', 132);
INSERT INTO `accessories` VALUES (707, '盐', '2克', 132);
INSERT INTO `accessories` VALUES (708, '青菜', '适量', 132);
INSERT INTO `accessories` VALUES (709, '芝麻', '少许', 132);
INSERT INTO `accessories` VALUES (710, '全蛋液', '少许', 132);
INSERT INTO `accessories` VALUES (711, '培根火腿肠', '6片', 132);
INSERT INTO `accessories` VALUES (712, '盐', '适量', 134);
INSERT INTO `accessories` VALUES (713, '细砂糖', '少许', 134);
INSERT INTO `accessories` VALUES (714, '全脂牛奶', '25毫升', 147);
INSERT INTO `accessories` VALUES (715, '番茄酱', '40克', 147);
INSERT INTO `accessories` VALUES (716, '开水', '1茶匙', 147);
INSERT INTO `accessories` VALUES (717, '洋葱粉', '1茶匙', 147);
INSERT INTO `accessories` VALUES (718, '辣椒粉', '1茶匙', 147);
INSERT INTO `accessories` VALUES (719, '辣椒汁', '1茶匙', 147);
INSERT INTO `accessories` VALUES (720, '食用盐', '适量', 147);
INSERT INTO `accessories` VALUES (721, '辣椒酱', '适量', 152);
INSERT INTO `accessories` VALUES (722, '胡萝卜', '一小个', 152);
INSERT INTO `accessories` VALUES (723, '芹菜', '少量', 152);
INSERT INTO `accessories` VALUES (724, '辣白菜', '100克', 152);
INSERT INTO `accessories` VALUES (725, '蒜', '两半', 152);
INSERT INTO `accessories` VALUES (726, '姜', '两片', 152);
INSERT INTO `accessories` VALUES (727, '葱花', '适量', 152);
INSERT INTO `accessories` VALUES (728, '日本米醋', '适量', 119);
INSERT INTO `accessories` VALUES (729, '糖', '适量', 119);
INSERT INTO `accessories` VALUES (730, '盐', '适量', 119);
INSERT INTO `accessories` VALUES (731, '昆布', '30克', 119);
INSERT INTO `accessories` VALUES (732, '山葵', '适量', 120);
INSERT INTO `accessories` VALUES (733, '醋', '适量', 120);
INSERT INTO `accessories` VALUES (734, '砂糖', '适量', 120);
INSERT INTO `accessories` VALUES (735, '盐', '适量', 120);
INSERT INTO `accessories` VALUES (736, '蘑菇', '50克', 179);
INSERT INTO `accessories` VALUES (737, '红酒', '15毫升', 179);
INSERT INTO `accessories` VALUES (738, '番茄酱', '一勺', 179);
INSERT INTO `accessories` VALUES (739, '芦笋', '50克', 179);
INSERT INTO `accessories` VALUES (740, '虾仁', '5-6个', 179);
INSERT INTO `accessories` VALUES (741, '烟熏肠', '30克', 179);
INSERT INTO `accessories` VALUES (742, '甜椒', '一个', 179);
INSERT INTO `accessories` VALUES (743, '洋葱', '一个', 179);
INSERT INTO `accessories` VALUES (744, '大蒜', '两瓣', 179);
INSERT INTO `accessories` VALUES (745, '橄榄油', '适量', 179);
INSERT INTO `accessories` VALUES (746, '浓汤宝', '一块', 179);
INSERT INTO `accessories` VALUES (747, '大蒜', '2瓣', 125);
INSERT INTO `accessories` VALUES (748, '橄榄油', '30毫升', 125);
INSERT INTO `accessories` VALUES (749, '海盐', '少许', 125);
INSERT INTO `accessories` VALUES (750, '黑胡椒', '少许', 125);
INSERT INTO `accessories` VALUES (751, '西红柿', '1个', 144);
INSERT INTO `accessories` VALUES (752, '黄瓜', '适量', 144);
INSERT INTO `accessories` VALUES (753, '糖', '适量', 144);
INSERT INTO `accessories` VALUES (754, '盐', '少许', 144);
INSERT INTO `accessories` VALUES (755, '黑胡椒', '少许', 144);
INSERT INTO `accessories` VALUES (756, '肉松', '适量', 129);
INSERT INTO `accessories` VALUES (757, '柴鱼丝', '适量', 129);
INSERT INTO `accessories` VALUES (758, '蒜蓉', '15克', 102);
INSERT INTO `accessories` VALUES (759, '洋葱', '60克', 102);
INSERT INTO `accessories` VALUES (760, '青椒丝', '35克', 102);
INSERT INTO `accessories` VALUES (761, '火腿片', '50克', 102);
INSERT INTO `accessories` VALUES (762, '咸味黄油', '15克', 102);
INSERT INTO `accessories` VALUES (763, '芝士片', '2片', 102);
INSERT INTO `accessories` VALUES (764, '盐', '适量', 102);
INSERT INTO `accessories` VALUES (765, '胡椒粉', '适量', 102);
INSERT INTO `accessories` VALUES (766, '白糖', '1勺', 100);
INSERT INTO `accessories` VALUES (767, '芝士片', '半片', 100);
INSERT INTO `accessories` VALUES (768, '蘑菇酱', '10克', 100);
INSERT INTO `accessories` VALUES (769, '罗勒', '1勺', 100);
INSERT INTO `accessories` VALUES (770, '食盐', '1勺', 100);
INSERT INTO `accessories` VALUES (771, '黄油', '30克', 100);
INSERT INTO `accessories` VALUES (772, '大蒜', '2瓣', 100);
INSERT INTO `accessories` VALUES (773, '意大利酱', '80克', 100);
INSERT INTO `accessories` VALUES (774, '黑胡椒酱', '40克', 100);
INSERT INTO `accessories` VALUES (775, '黑胡椒粉', '适量', 100);
INSERT INTO `accessories` VALUES (776, '番茄酱', '40克', 100);
INSERT INTO `accessories` VALUES (782, '蕃茄酱', '适量', 178);
INSERT INTO `accessories` VALUES (783, '奶酪', '适量', 178);
INSERT INTO `accessories` VALUES (784, '青椒', '适量', 178);
INSERT INTO `accessories` VALUES (785, '马苏里拉芝士', '200克', 145);
INSERT INTO `accessories` VALUES (786, '蜂蜜水', '少量', 145);
INSERT INTO `accessories` VALUES (787, '培根', '4片', 145);
INSERT INTO `accessories` VALUES (788, '虾仁', '8个', 145);
INSERT INTO `accessories` VALUES (789, '青椒', '少量', 145);
INSERT INTO `accessories` VALUES (790, '杏鲍菇', '少量', 145);
INSERT INTO `accessories` VALUES (791, '圆葱', '少量', 145);
INSERT INTO `accessories` VALUES (792, '玉米粒', '少量', 145);
INSERT INTO `accessories` VALUES (793, '披萨酱', '3大勺', 145);
INSERT INTO `accessories` VALUES (794, '披萨草', '微量', 145);
INSERT INTO `accessories` VALUES (795, '洋葱', '适量', 130);
INSERT INTO `accessories` VALUES (796, '萨米肠', '适量', 130);
INSERT INTO `accessories` VALUES (797, '虾仁', '适量', 130);
INSERT INTO `accessories` VALUES (798, '玉米粒', '适量', 130);
INSERT INTO `accessories` VALUES (799, '雪豆', '适量', 130);
INSERT INTO `accessories` VALUES (800, '红萝卜丁', '适量', 130);
INSERT INTO `accessories` VALUES (801, '番茄酱', '适量', 130);
INSERT INTO `accessories` VALUES (802, '罗勒叶', '少许', 130);
INSERT INTO `accessories` VALUES (803, '植物油', '少许', 162);
INSERT INTO `accessories` VALUES (804, '冰块', '10个', 135);
INSERT INTO `accessories` VALUES (805, '纯水', '500毫升', 135);
INSERT INTO `accessories` VALUES (806, '番茄', '3个', 118);
INSERT INTO `accessories` VALUES (807, '蛋黄液', '少许', 118);
INSERT INTO `accessories` VALUES (808, '沙拉酱', '少许', 118);
INSERT INTO `accessories` VALUES (809, '熟白芝麻', '少许', 118);
INSERT INTO `accessories` VALUES (810, '盐', '适量', 164);
INSERT INTO `accessories` VALUES (811, '油', '适量', 164);
INSERT INTO `accessories` VALUES (812, '御好烧酱', '适量', 164);
INSERT INTO `accessories` VALUES (813, '美乃滋', '适量', 164);
INSERT INTO `accessories` VALUES (814, '火腿', '半根', 171);
INSERT INTO `accessories` VALUES (815, '沙拉酱', '个人口味', 171);
INSERT INTO `accessories` VALUES (816, '番茄沙司', '1汤匙', 171);
INSERT INTO `accessories` VALUES (817, '猪肉松', '适量', 171);
INSERT INTO `accessories` VALUES (818, '胡萝卜', '¼根', 171);
INSERT INTO `accessories` VALUES (819, '花生酱', '1汤匙', 171);
INSERT INTO `accessories` VALUES (820, '番茄沙司', '10克', 105);
INSERT INTO `accessories` VALUES (821, '盐', '2勺', 105);
INSERT INTO `accessories` VALUES (822, '香油', '1勺', 105);
INSERT INTO `accessories` VALUES (823, '苹果', '1个', 148);
INSERT INTO `accessories` VALUES (824, '葡萄干', '2粒', 148);
INSERT INTO `accessories` VALUES (825, '油', '适量', 140);
INSERT INTO `accessories` VALUES (826, '甜辣酱', '适量', 140);
INSERT INTO `accessories` VALUES (827, '培根', '四片', 96);
INSERT INTO `accessories` VALUES (828, '沙拉', '适量', 96);
INSERT INTO `accessories` VALUES (829, '盐', '少许', 96);
INSERT INTO `accessories` VALUES (830, '白胡椒', '少许', 96);
INSERT INTO `accessories` VALUES (831, '白砂糖', '30克', 95);
INSERT INTO `accessories` VALUES (832, '什锦果酱', '10克', 95);
INSERT INTO `accessories` VALUES (833, '意式番茄酱', '适量', 157);
INSERT INTO `accessories` VALUES (834, '培根', '2片', 157);
INSERT INTO `accessories` VALUES (835, '火腿粒', '适量', 157);
INSERT INTO `accessories` VALUES (836, '洋葱', '半个', 157);
INSERT INTO `accessories` VALUES (837, '青椒', '半个', 157);
INSERT INTO `accessories` VALUES (838, '食用色拉油', '适量', 157);
INSERT INTO `accessories` VALUES (839, '盐', '1.5茶匙', 143);
INSERT INTO `accessories` VALUES (840, '糖', '0.5茶匙', 143);
INSERT INTO `accessories` VALUES (841, '油', '适量', 143);
INSERT INTO `accessories` VALUES (842, '罗勒', '少许', 143);
INSERT INTO `accessories` VALUES (843, '意大利面肉酱', '适量', 112);
INSERT INTO `accessories` VALUES (844, '培根', '3片', 112);
INSERT INTO `accessories` VALUES (845, '水', '适量', 112);
INSERT INTO `accessories` VALUES (846, '油 ', '适量', 109);
INSERT INTO `accessories` VALUES (847, '黄油', '15克', 109);
INSERT INTO `accessories` VALUES (848, '寿喜烧汁', '适量', 109);
INSERT INTO `accessories` VALUES (849, '葱段', '10克', 109);
INSERT INTO `accessories` VALUES (850, '韩国糖醋辣酱', '100克', 108);
INSERT INTO `accessories` VALUES (851, '蒜', '2瓣', 99);
INSERT INTO `accessories` VALUES (852, '洋葱', '1/8个', 99);
INSERT INTO `accessories` VALUES (853, '葱', '1根', 99);
INSERT INTO `accessories` VALUES (854, '生抽', '2汤匙', 99);
INSERT INTO `accessories` VALUES (855, '鱼露', '1汤匙', 99);
INSERT INTO `accessories` VALUES (856, '糖或者糖浆', '1汤匙', 99);
INSERT INTO `accessories` VALUES (857, '白醋或者苹果醋', '1汤匙', 99);
INSERT INTO `accessories` VALUES (858, '韩国辣椒酱', '1汤匙', 99);
INSERT INTO `accessories` VALUES (859, '芝麻油', '1汤匙', 99);
INSERT INTO `accessories` VALUES (860, '食盐', '1勺', 156);
INSERT INTO `accessories` VALUES (861, '蒜', '4瓣', 156);
INSERT INTO `accessories` VALUES (862, '芝士末', '30克', 156);
INSERT INTO `accessories` VALUES (863, '橄榄油    ', '适量', 166);
INSERT INTO `accessories` VALUES (864, '黑胡椒碎   ', '少许', 166);
INSERT INTO `accessories` VALUES (865, '盐    ', '少许', 166);
INSERT INTO `accessories` VALUES (866, '柠檬汁    ', '少许', 166);
INSERT INTO `accessories` VALUES (867, '黄油', '1块', 110);
INSERT INTO `accessories` VALUES (868, '黑椒汁', '1小包', 110);
INSERT INTO `accessories` VALUES (869, '香草粉', '适量', 110);
INSERT INTO `accessories` VALUES (870, '盐', '2克', 110);
INSERT INTO `accessories` VALUES (871, '胡萝卜', '少量', 114);
INSERT INTO `accessories` VALUES (872, '寿司醋', '1勺', 114);
INSERT INTO `accessories` VALUES (873, '肉松', '3勺', 114);
INSERT INTO `accessories` VALUES (874, '沙拉酱', '2勺', 114);
INSERT INTO `accessories` VALUES (875, '番茄酱', '1勺', 114);
INSERT INTO `accessories` VALUES (876, '水', '±90克', 268);
INSERT INTO `accessories` VALUES (877, '酵母', '3克', 268);
INSERT INTO `accessories` VALUES (878, '裹入黄油', '140克', 268);
INSERT INTO `accessories` VALUES (879, '淡奶油', '100克', 201);
INSERT INTO `accessories` VALUES (880, '白糖', '20克', 201);
INSERT INTO `accessories` VALUES (881, '巧克力', '80克', 201);
INSERT INTO `accessories` VALUES (882, '坚果碎', '少许', 201);
INSERT INTO `accessories` VALUES (883, '油', '适量', 207);
INSERT INTO `accessories` VALUES (884, '蜜红豆', '150克', 198);
INSERT INTO `accessories` VALUES (885, '自制原味奶酪', '150克', 198);
INSERT INTO `accessories` VALUES (886, '淡奶油', '80克', 198);
INSERT INTO `accessories` VALUES (887, '白糖', '10克', 198);
INSERT INTO `accessories` VALUES (888, '粗砂糖', '3勺', 223);
INSERT INTO `accessories` VALUES (889, '高筋面粉', '150克', 200);
INSERT INTO `accessories` VALUES (890, '酵母', '1克', 200);
INSERT INTO `accessories` VALUES (891, '坚果馅料', '：', 200);
INSERT INTO `accessories` VALUES (892, '南瓜仁', '适量', 200);
INSERT INTO `accessories` VALUES (893, '核桃', '适量', 200);
INSERT INTO `accessories` VALUES (894, '瓜子仁', '适量', 200);
INSERT INTO `accessories` VALUES (895, '蔓越莓干', '适量', 200);
INSERT INTO `accessories` VALUES (896, '葡萄干', '适量', 200);
INSERT INTO `accessories` VALUES (897, '熟板栗', '适量', 200);
INSERT INTO `accessories` VALUES (898, '学厨无边烤盘', '1件', 200);
INSERT INTO `accessories` VALUES (899, '吉利丁粉', '5克', 221);
INSERT INTO `accessories` VALUES (900, '炼乳', '少许', 221);
INSERT INTO `accessories` VALUES (901, '熟蛋黄', '2个	', 264);
INSERT INTO `accessories` VALUES (902, '糖粉', '60克', 264);
INSERT INTO `accessories` VALUES (903, '盐	', '1克 ', 264);
INSERT INTO `accessories` VALUES (904, '电动打蛋器', '1台', 222);
INSERT INTO `accessories` VALUES (905, '手动打蛋器', '1个', 222);
INSERT INTO `accessories` VALUES (906, '烤箱', '1台', 222);
INSERT INTO `accessories` VALUES (907, '黑芝麻', '25克', 239);
INSERT INTO `accessories` VALUES (908, '亚麻籽', '25克', 239);
INSERT INTO `accessories` VALUES (909, '紫薯粉', '9克', 241);
INSERT INTO `accessories` VALUES (910, '盐', '3克', 241);
INSERT INTO `accessories` VALUES (911, '白醋', '几滴', 241);
INSERT INTO `accessories` VALUES (912, '盐', '1克', 232);
INSERT INTO `accessories` VALUES (913, '蛋黄', '3个', 227);
INSERT INTO `accessories` VALUES (914, '牛奶', '15克', 227);
INSERT INTO `accessories` VALUES (915, '色拉油', '15克', 227);
INSERT INTO `accessories` VALUES (916, '低筋面粉', '90克', 227);
INSERT INTO `accessories` VALUES (917, '鸡蛋', '一个', 249);
INSERT INTO `accessories` VALUES (918, '酵母粉', '5克', 249);
INSERT INTO `accessories` VALUES (919, '植物油', '30克', 249);
INSERT INTO `accessories` VALUES (920, '白糖', '60克', 249);
INSERT INTO `accessories` VALUES (921, '温水', '250毫升', 249);
INSERT INTO `accessories` VALUES (922, '蕃茄酱', '适量', 243);
INSERT INTO `accessories` VALUES (923, '椒盐粉', '少许', 243);
INSERT INTO `accessories` VALUES (924, '胡椒碎', '少许', 243);
INSERT INTO `accessories` VALUES (925, '玉米粒', '30克', 248);
INSERT INTO `accessories` VALUES (926, '胡萝卜', '15克', 248);
INSERT INTO `accessories` VALUES (927, '虾仁', '25克', 248);
INSERT INTO `accessories` VALUES (928, '豌豆', '15克', 248);
INSERT INTO `accessories` VALUES (929, '蛋黄', '1个', 248);
INSERT INTO `accessories` VALUES (930, '柠檬', '半个', 248);
INSERT INTO `accessories` VALUES (931, '淡奶油', '300克', 258);
INSERT INTO `accessories` VALUES (932, '糖', '20克', 258);
INSERT INTO `accessories` VALUES (933, '各种水果', '许多', 258);
INSERT INTO `accessories` VALUES (934, '淡奶油', '150克', 229);
INSERT INTO `accessories` VALUES (935, '牛奶', '100克', 229);
INSERT INTO `accessories` VALUES (936, '白糖', '30克', 229);
INSERT INTO `accessories` VALUES (937, '吉利丁片', '15克', 229);
INSERT INTO `accessories` VALUES (938, '细砂糖', '50克', 250);
INSERT INTO `accessories` VALUES (939, '朗姆酒', '10克', 250);
INSERT INTO `accessories` VALUES (940, '蛋液刷表皮', '适量', 216);
INSERT INTO `accessories` VALUES (941, '白芝麻撒表皮', '适量', 216);
INSERT INTO `accessories` VALUES (942, '咖喱', '2块', 235);
INSERT INTO `accessories` VALUES (943, '开水', '适量', 235);
INSERT INTO `accessories` VALUES (944, '油', '20毫升', 235);
INSERT INTO `accessories` VALUES (945, '装饰水果', '适量', 262);
INSERT INTO `accessories` VALUES (946, '白糖', '30克', 218);
INSERT INTO `accessories` VALUES (947, '高筋面粉', '150克', 245);
INSERT INTO `accessories` VALUES (948, '盐', '1/4小匙', 245);
INSERT INTO `accessories` VALUES (949, '鸡蛋', '30克', 245);
INSERT INTO `accessories` VALUES (950, '清水', '65克', 245);
INSERT INTO `accessories` VALUES (951, '细砂糖', '10克', 245);
INSERT INTO `accessories` VALUES (952, '蜂蜜', '20克', 245);
INSERT INTO `accessories` VALUES (953, '酵母', '1/2小匙', 245);
INSERT INTO `accessories` VALUES (954, '黄油', '60克', 225);
INSERT INTO `accessories` VALUES (955, '盐', '1克', 256);
INSERT INTO `accessories` VALUES (956, '糖', '40克', 256);
INSERT INTO `accessories` VALUES (957, '酵母', '3克', 256);
INSERT INTO `accessories` VALUES (958, '黄油', '20克', 256);
INSERT INTO `accessories` VALUES (959, '豆沙馅', '适量', 256);
INSERT INTO `accessories` VALUES (960, '马斯卡彭芝士', '150克', 230);
INSERT INTO `accessories` VALUES (961, '淡奶油', '150克', 230);
INSERT INTO `accessories` VALUES (962, '糖粉', '35克', 230);
INSERT INTO `accessories` VALUES (963, '黄油', '20克', 230);
INSERT INTO `accessories` VALUES (964, '马斯卡彭芝士（软化）【芝士奶盖】', '70克', 230);
INSERT INTO `accessories` VALUES (965, '淡奶油【芝士奶盖】	', '60克', 230);
INSERT INTO `accessories` VALUES (966, '牛奶', '70克', 230);
INSERT INTO `accessories` VALUES (967, '朗姆酒', '2克', 230);
INSERT INTO `accessories` VALUES (968, '细砂糖', '5克', 230);
INSERT INTO `accessories` VALUES (969, '盐', '0.5克（小捏）', 230);
INSERT INTO `accessories` VALUES (970, '混色食材', '：', 212);
INSERT INTO `accessories` VALUES (971, '可可粉', '2克', 212);
INSERT INTO `accessories` VALUES (972, '红曲粉', '6克', 212);
INSERT INTO `accessories` VALUES (973, '热水', '适量', 212);
INSERT INTO `accessories` VALUES (974, '抹茶粉', '3克', 212);
INSERT INTO `accessories` VALUES (975, '鸡小胸', '2块', 240);
INSERT INTO `accessories` VALUES (976, '青椒', '少许', 240);
INSERT INTO `accessories` VALUES (977, '口蘑', '4个', 240);
INSERT INTO `accessories` VALUES (978, '黑橄榄', '少许', 240);
INSERT INTO `accessories` VALUES (979, '姜', '少许', 240);
INSERT INTO `accessories` VALUES (980, '马苏里拉芝士', '130克', 240);
INSERT INTO `accessories` VALUES (981, '蒜', '少许', 240);
INSERT INTO `accessories` VALUES (982, '自制披萨酱', '3大勺', 240);
INSERT INTO `accessories` VALUES (983, '洋葱', '半个', 240);
INSERT INTO `accessories` VALUES (984, '盐     ', '少许', 240);
INSERT INTO `accessories` VALUES (985, '黑胡椒', '少许', 240);
INSERT INTO `accessories` VALUES (986, '橄榄油', '少许', 240);
INSERT INTO `accessories` VALUES (987, '蛋清', '38克', 247);
INSERT INTO `accessories` VALUES (988, '黄色色粉', '适量', 247);
INSERT INTO `accessories` VALUES (989, '粉色色粉', '适量', 247);
INSERT INTO `accessories` VALUES (990, '细砂糖', '30克', 247);
INSERT INTO `accessories` VALUES (991, '百香果', '几个', 247);
INSERT INTO `accessories` VALUES (992, '黄油', '48克', 247);
INSERT INTO `accessories` VALUES (993, '蛋黄液', '30克', 247);
INSERT INTO `accessories` VALUES (994, 'fluff棉花糖', '40克', 247);
INSERT INTO `accessories` VALUES (995, '柠檬汁', '几滴', 247);
INSERT INTO `accessories` VALUES (996, '棒棒糖纸签', '适量', 247);
INSERT INTO `accessories` VALUES (997, '色拉油', '60克', 252);
INSERT INTO `accessories` VALUES (998, '玉米粉', '10克', 252);
INSERT INTO `accessories` VALUES (999, '白芝麻', '适量', 252);
INSERT INTO `accessories` VALUES (1000, '无盐黄油', '40克', 251);

-- ----------------------------
-- Table structure for activitydetails
-- ----------------------------
DROP TABLE IF EXISTS `activitydetails`;
CREATE TABLE `activitydetails`  (
  `activityId` int(11) NOT NULL AUTO_INCREMENT,
  `activityState` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动状态',
  `activityName` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动名称',
  `activitySTime` date NULL DEFAULT NULL COMMENT '开始时间',
  `activityETime` date NULL DEFAULT NULL COMMENT '结束时间',
  `activityImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activityContent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '活动内容',
  `myadmin_myadminId` int(11) NOT NULL,
  `activityImgTop` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activityImgRight` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`activityId`) USING BTREE,
  INDEX `fk_activityDetails_myadmin1_idx`(`myadmin_myadminId`) USING BTREE,
  INDEX `activityId`(`activityId`) USING BTREE,
  CONSTRAINT `fk_activityDetails_myadmin1` FOREIGN KEY (`myadmin_myadminId`) REFERENCES `myadmin` (`myadminid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '活动详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activitydetails
-- ----------------------------
INSERT INTO `activitydetails` VALUES (2, '已截止', '蔬服生活创意蔬食募集活动', '2018-08-10', '2018-09-20', 'https://tokyo-kitchen.icook.network/uploads/campaign/cover/281/54846af6419a9000.jpg', '活动已结束', 1, 'https://assets-icook.icook.network/assets/campaign/VeganCooking/VeganCooking-banner-8e159a69c98f0fe5a39a94b2be19fa48637f7803699d388149c08bb425655e43.jpg', 'https://assets-icook.icook.network/assets/campaign/VeganCooking/VeganCooking-sidebar-2c809ffb1d64d8aaa5a16e43528bc00597c1c6c1bf4e6c670040b9e0a780b48a.jpg');
INSERT INTO `activitydetails` VALUES (3, '进行中', '一酱百味百搭烤肉酱', '2018-09-25', '2018-11-20', 'https://tokyo-kitchen.icook.network/uploads/campaign/cover/274/a9bd30c9a4eb525a.jpg', '活动期间\r\n上传食谱：2018/9/25~2018/11/20\r\n得奖公布：2018/11/30；活动办法及主题说明\r\n参加方式：制作符合任一主题的创意料理并纪录过程，上传图文食谱，再回到活动页面投稿、选择分类、完成报名程序。\r\n全素食主义：不含植物五辛（葱、蒜、韭、薤菜及兴蕖）的纯植物性食材组合。\r\n蛋奶素主义：不含植物五辛，但含蛋与奶的植物性食材组合。\r\n五辛素主义：含葱、蒜、韭、薤菜及兴蕖植物五辛，但不含蛋与奶的植物性食材组合。；投稿食谱要求\r\n投稿食谱需求：步骤照片至少上传3张，食谱总字数至少150字。\r\n上传之内容禁止节录、抄袭其他网站或他人图文、影像及影音资料。；活动奖项说明\r\n头奖~伍奖：将由评选标准排序名次选出。；同意活动规则\r\n勾选要参赛的食谱并按下「确定食谱」\r\n填写报名资料，填写完毕后按下「填写完成，报名参赛」\r\n完成报名；评选标准\r\n主题切合性20%：符合投稿的主题内容\r\n创意吸睛性20%：料理富有创意、令人惊艳、健康却不单调的美味料理\r\n步骤完整性20%：作法完整，能清楚明白料理过程；详列食材份量，少有「适量」或「少许」等会令人有疑问的描述份量\r\n视觉丰富性20%：步骤照片拍摄用心，摆盘精美\r\n人气吸引性20%：料理吸引众人关注，以观看数、收藏数、跟着做次数为依据（以活动开始日起新增之数据来计算）；头奖1名：Philips飞利浦双向智旋IH电子锅(HD4566) (市值16,900元)\r\n\r\n贰奖1名：WMF五层炒锅28cm(市值13,470元)\r\n\r\n叁奖1名：Le creuset铸铁单柄调理锅21cm(市值13,000元)；注意事项\r\n每人不限投稿次数，上传越多优秀食谱越有机会得奖！\r\n参加作品须符合投稿食谱要求，未符合者失去得奖资格。\r\n活动结束进入评审阶段后，即不可删除参赛食谱。\r\n本活动以公平公开为原则，为避免恶意之电脑程式或其他意图混淆影响比赛结果、违反活动公平性之行为发生，经主办单位发现或是第三人检举，主办单位将立即取消得奖资格，并请求返还已领取之奖品或奖金。\r\n参加者不得抄袭、拷贝、复制他人作品，所投稿之稿件需为原创且未经公开的著作，若经主办单位发现或第三人检举参赛者有疑似侵害他人著作权之行为，或违反法令或善良风俗之事，如有违反之虞主办单位得立即移除相关内容，并取消抽奖及得奖资格，主办单位得取消得奖资格并请求返还已领取之奖品或奖金，如因此衍生法律争议，由参赛者自行负责，与主办单位无涉。\r\n参加者所提供个人资料，主办单位视为参加者书面同意搜集及利用其个人资料以作为领奖、寄发中奖通知、向主管机关申报税务资料及主办单位寄发相关资讯使用。\r\n本活动仅限台澎金马地区居民参加，本活动奖品无法寄送海外，敬请见谅。\r\n本活动主办单位就所有参加者，保有资格审查之权利；若经审查后，资格不符者，主办单位得取消得奖资格。\r\n依中华民国税法规定，奖品价值超过新台币1,000 元者，需缴交身分证影本，开立扣缴凭单。奖品价值超过新台币20,000 元者，将由主办单位代扣10% 中奖所得税(外籍人士须扣缴20% )，中奖者应先缴纳税款后，始可领奖。\r\n奖品皆为全新正品，唯寄送过程可能会因物流处理造成外盒些微损毁，请多见谅。\r\n如本活动因不可抗力之特殊原因无法执行时，主办单位得决定取消、终止、修改或暂停活动。\r\n所有参加者于包括但不限于因参加本活动所提供文字、文章、图像、相关图片、个人肖像及姓名权等，于参加本活动之同时（包括但不限于电子或纸本之形式），主办单位将视为其同意主办单位或其所授权之第三人得使用其作品于网路、电子、报章杂志等媒体。\r\n经主办单位评选后得奖之作品，得奖人同意著作财产权属主办单位所有，并且不会对主办单位及其所授权之三人主张著作人格权。\r\n主办单位及协力厂商之员工和一等亲眷属无获奖资格。\r\n经主办单位评选后得奖之作品，得奖人同意主办单位得不限时间、地点、次数，依法重制、公开发表、 展览、编辑、发行、宣传、编印、公开传输及再授权第三人等权利。\r\n如有其他未尽事宜，则以主办单位最终公告之说明为准。', 1, 'https://assets-icook.icook.network/assets/campaign/leekumkee/leekumkee-banner-eb00fb49824d0ae6c3c10bad044184fce09c2941ae0fef1b325196fd2f6ccb57.jpg', 'https://assets-icook.icook.network/assets/campaign/leekumkee/leekumkee-sidebar-4cd6569584fab5eea3910952053766d0bd50f12f3a3afbda506e5887bb70b1fa.jpg\r\n');
INSERT INTO `activitydetails` VALUES (4, '已截止', '三低煮义食谱募集', '2018-06-03', '2018-06-19', 'https://tokyo-kitchen.icook.network/uploads/campaign/cover/260/d2c164a04ef96787.jpg', '活动已结束', 1, 'https://assets-icook.icook.network/assets/campaign/3dcooking/3dcooking-banner-8a66f751532d20091783f3fd1c7942a304ec09759cee8ac10b74c4a41aea8d26.jpg', 'https://assets-icook.icook.network/assets/campaign/3dcooking/3dcooking-sidebar-52040bbda07b480af4060d510e84a4d9c2a8f81d2ab510101e01b9bab6de0487.jpg');
INSERT INTO `activitydetails` VALUES (5, '已截止', '甜点轻松做食谱大募集', '2018-02-25', '2018-03-14', 'https://tokyo-kitchen.icook.network/uploads/campaign/cover/239/b8c28518a3a49a09.jpg', '活动已结束', 1, 'https://assets-icook.icook.network/assets/campaign/fivecooking201803/fivecooking201803-banner-1f8e13313db8c1101ab7433f8f254fe96816fd8324707110045b018de60f616a.jpg', 'https://assets-icook.icook.network/assets/campaign/fivecooking201803/fivecooking201803-sidebar-0dd06a649bc33e27e8ccc3f9d00ff798a91ab83181ca2a74a82a4106b2d06d13.jpg');

-- ----------------------------
-- Table structure for activityresult
-- ----------------------------
DROP TABLE IF EXISTS `activityresult`;
CREATE TABLE `activityresult`  (
  `partInActId` int(11) NOT NULL AUTO_INCREMENT COMMENT '参赛表ID',
  `userId` int(11) NULL DEFAULT NULL COMMENT '用户名（参赛人）',
  `dietId` int(11) NULL DEFAULT NULL COMMENT '参赛作品',
  `activityDetailsId` int(11) NOT NULL,
  PRIMARY KEY (`partInActId`) USING BTREE,
  INDEX `fk_partInAct_activityDetails1_idx`(`activityDetailsId`) USING BTREE,
  CONSTRAINT `fk_partInAct_activityDetails1` FOREIGN KEY (`activityDetailsId`) REFERENCES `activitydetails` (`activityid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参赛表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activityresult
-- ----------------------------
INSERT INTO `activityresult` VALUES (1, 27, 27, 2);
INSERT INTO `activityresult` VALUES (2, 23, 23, 2);
INSERT INTO `activityresult` VALUES (3, 28, 28, 2);
INSERT INTO `activityresult` VALUES (4, 29, 29, 2);
INSERT INTO `activityresult` VALUES (5, 24, 24, 2);
INSERT INTO `activityresult` VALUES (6, 24, 24, 2);
INSERT INTO `activityresult` VALUES (7, 15, 15, 2);
INSERT INTO `activityresult` VALUES (8, 18, 78, 4);
INSERT INTO `activityresult` VALUES (9, 21, 81, 4);
INSERT INTO `activityresult` VALUES (10, 3, 63, 4);
INSERT INTO `activityresult` VALUES (11, 11, 70, 4);
INSERT INTO `activityresult` VALUES (12, 18, 78, 4);
INSERT INTO `activityresult` VALUES (13, 19, 79, 4);
INSERT INTO `activityresult` VALUES (14, 23, 113, 5);
INSERT INTO `activityresult` VALUES (15, 16, 106, 5);
INSERT INTO `activityresult` VALUES (16, 12, 102, 5);
INSERT INTO `activityresult` VALUES (17, 28, 118, 5);
INSERT INTO `activityresult` VALUES (18, 21, 111, 5);
INSERT INTO `activityresult` VALUES (19, 24, 114, 5);

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `articleId` int(11) NOT NULL AUTO_INCREMENT,
  `articleTitle` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `articleTime` date NULL DEFAULT NULL,
  `articleContent` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `articleCoverImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `articlePic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `articlePraiseNum` int(11) NULL DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `articleBrief` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `classifyId` int(11) NOT NULL,
  PRIMARY KEY (`articleId`) USING BTREE,
  INDEX `fk_artic_author1_idx`(`userId`) USING BTREE,
  INDEX `fk_artic_classify1_idx`(`classifyId`) USING BTREE,
  CONSTRAINT `fk-article_classify` FOREIGN KEY (`classifyId`) REFERENCES `articleclassify` (`articleclassifyid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_artic_author1` FOREIGN KEY (`userId`) REFERENCES `articleauthor` (`authorid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (16, '65℃以上热饮成高危致癌物', '2018-07-01', '原标题：65℃以上热饮成高危致癌物 警惕5类食物//近日，世界卫生组织(WHO)下属的国际癌症研究机构发布了最新报告：警告饮用65℃以上的热饮，可能增加罹患食道癌的风险。其实，在众多的致癌因素中，食物往往是大家比较关注的，也是大家容易忽略的。//世界卫生组织：非常热的饮料被列入2A致癌物//这项最新的评估报告发表在15日出版的《柳叶刀肿瘤学》杂志上。报告指出，在中国、土耳其及南美洲国家的研究发现，这些地区的人们通常习惯饮用65℃或70℃以上的水、咖啡或茶，罹患食管癌的风险也随之提升。//报告称，23名由IARC组织的国际工作小组成员发现饮用非常热的饮料很有可能导致人们罹患食道癌。而这里的“非常热”是指超过65℃的任何饮料。//在此次世卫组织的评估中，非常热的饮料被列入了2A级(很可能致癌)，与之被列入同一类的有高温油炸食品和高温油烟等。而去年备受争议的红肉也属于这一归类中。//科普：致癌物分4个等级//致癌物是指能诱发人患癌的“坏物质”，它的范畴包括任何能增加人类患癌风险的化学、物理物质及生活、工作方式等。//1965年，国际癌症研究机构(IARC)开始了确定致癌物的工作，并于每年发布更新致癌因素的信息，最终，将致癌物分为了4个等级，其中不少与食物相关。//1级//烟草、酒精饮料、黄曲霉素、槟榔、中式咸鱼等明确有致癌作用的致癌物。黄曲霉素主要存在于霉变的坚果、大米和玉米等，吃这些食物时一定要注意清洗和储存得当。//2级//丙烯酰胺、铅、4-甲基咪唑等可能性较高的致癌物质。生活中如果经常采用高温油炸、高温油烟烹制食物，接触到丙烯酰胺的机会就比较大，应尽量避免。//3级//苏丹红色素、胆固醇、咖啡因、三聚氰胺、糖精等尚不能分类的致癌物。这类物质动物和人群研究的致癌证据都不充分。//4级//致癌物中还有第4级，指相关研究中没有充足证据证明其具有致癌性的物质，食物中属于此类的物质较少。//5种常见的致癌食物//1、咸鱼//咸鱼产生二甲基亚硝酸盐，在体内可以转化为致癌物质二甲基亚硝酸胺。一个人如果从出生到10岁经常食用咸鱼，将来患鼻咽癌的可能性比不食用咸鱼的人大30-40倍。鱼露、虾酱、咸蛋、咸菜、腊肠、火腿、熏猪肉同样含有较多的亚硝酸胺类致癌物质，应尽量少吃。//2、烧烤食物//烤牛肉、烤鸭、烤羊肉、烤鹅、烧猪肉等。因含有强致癌物3，4-苯并芘，不宜多食。//3、熏制食品//如熏肉、熏肝、熏鱼、熏蛋、熏豆腐干等亦含苯并芘致癌物，常食易患食道癌和胃癌。//4、油炸食品//煎炸过焦后，产生致癌物质多环芳烃。咖啡豆烧焦后，苯并芘含量增加20倍。油煎饼、臭豆腐、煎炸芋角、油条等，多数是使用重复多次的油，高温下会产生一种致癌分解物。//5、霉变食物//米、麦、豆、玉米、花生等食品易受潮霉变，被霉菌污染后会产生各种致癌毒素。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161031/7a77f2c2eb0a71a478a48a92dc8c9d97.jpg', 'http://images.meishij.net/p/20161024/61a6352d44ed9c05b633279dc4f6363a_150x150.jpg', 1, 1, NULL, 1);
INSERT INTO `article` VALUES (17, '腐竹能燃烧，还能吃吗?', '2018-06-01', '最近微信上传的一个“腐竹燃烧”视频引起了不少关注，视频里有人点燃了一根腐竹，燃烧后有沥青一样的东西滴下，被认为是含胶的有毒腐竹。人们不禁要问，腐竹能燃烧，是真的吗?能燃烧的腐竹能吃吗?腐竹属于大豆制品，是豆浆煮沸后经一段时间保温，表面形成一层薄膜，挑出后下垂成枝条状，再经干燥而成。这个过程听着是不是很耳熟?没错，跟奶皮子的制作方法如出一辙。奶皮子在内蒙等地非常流行，以鲜奶熬煮，等其表面凝结一层膜后，用筷子挑起挂在通风处晾干。//干腐竹色泽黄白，油光透亮，用清水浸泡3-5小时发开以后，既可炒，也可拌，还是吃火锅的好食材，跟肉类和蔬菜都可搭配，营养又美味，深受人们喜爱。//腐竹燃烧是奇闻?//燃烧是一种化学反应，是可燃物与空气中的氧气之间发生的快速放热和发光的氧化反应。能燃烧的物质就称为可燃物，大多是含有碳和氢的化合物。一般我们容易想到的可燃物是煤、石油、天然气、木头、酒精、布料等，而很少有人会将食物和燃烧联系在一起。但事实上，很多食品的主要成分也是含有碳和氢的化合物，完全符合可燃物的定义。蛋白质、脂肪和碳水化合物都是食物中可以燃烧的成分。油脂可燃很多人都知道，蛋白质的燃烧在生活中也很常见，比如头发、羊毛等物质燃烧时，主要就是蛋白质的燃烧。//干腐竹含水量很少，只有8%左右，主要成分是蛋白质，约占45%，其次是脂类和碳水化合物，各占22%左右。这样看来，腐竹中含的基本都是可燃成分，又很干燥，能燃烧是自然的，无需大惊小怪!//其实，前段时间还出现过面条燃烧、饼干燃烧的类似新闻，也引起了人们一定程度对面条、饼干的担心。之所以“燃烧事件”频出，一是因为大家对食品安全问题尤其关注，二是人们很难把食物跟燃烧联系在一起。现在大家应该明白了，很多食物都是可以燃烧的，是食物的固有属性，而并不是添加了什么有毒物质。明确了这一点，以后再看到网上出现什么别的食物燃烧的视频，就大可淡然处之了。//豆制品中的“营养冠军”//腐竹浓缩了豆浆中的蛋白质和脂类，营养价值较高，被誉为豆制品中的“营养冠军”。腐竹中近一半成分是大豆蛋白，并且不含胆固醇，是素食者以及患有慢性病的中老年人获取优质蛋白质的良好途径。与谷类搭配食用，还可以补充谷类所缺乏的赖氨酸，提高蛋白质利用率。//腐竹中含有22%左右的脂类，主要是不饱和脂肪酸，特别是亚油酸含量很高。亚油酸是人体必需脂肪酸，能与血液中的胆固醇结合，促进胆固醇的转运和代谢，预防动脉粥样硬化。腐竹还富含具有血管清道夫功能的大豆卵磷脂，同样能降低胆固醇、软化血管、预防心脑血管疾病，还具有健脑作用。(马冠生)//来源：新华网//', 'http://images.meishij.net/p/20161116/e1a14a1e26c092e39a659adacd48158c.jpg', 'http://images.meishij.net/p/20161021/530ec62735b3ab85fdd87fc5483527f7_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (18, '不吃主食，真会更健康吗？', '2018-08-01', '最近有一本叫做《谷物大脑》的书风靡世界图书市场，引起了很多读者的注意。它之所以如此火爆，主要是因为其中提出了颠覆性的理念——吃小麦有害健康，吃主食无益，高碳水化合物的饮食不仅让人肥胖，还会让大脑提前衰老，以鱼肉+蔬菜的低碳水化合物饮食才是正确的，而且完全不需要恐惧饱和脂肪。这样的说法，和人们以往三十年当中听到的健康饮食建议，实在是差距太大了。//如果说它是谣言，这明明是一位多年研究大脑和神经系统疾病的著名医学专家写的;如果说是医生不懂营养，书中明明列举了大量的研究证据，不由得读者不相信。//有位朋友迷茫地问：难道说，我吃了一辈子的面食，是让我衰老的原因?我不吃它们，脑子就会好用些?//另一位朋友问：不吃主食，到底吃什么啊?天天大鱼大肉当饭，不吃一点主食，别说健康不健康，首先我就吃不下去，也吃不起啊!//说实话，这本书里的内容，并未让我感觉非常惊讶。因为相关的研究证据我也看了很多，而且非常赞成其中的某些说法——不要吃那么多的面食，甜食更不要吃，长期的高血糖反应是有害的。//目前有足够多的研究能让人确信，餐后血糖过高是一个加速大脑衰老的因素。我们所吃的日常主食，无论是白米饭、白馒头、白面包，还是奶黄包、包子、花卷、枣糕、玉米糕、发面饼、白米粥、米糕等，哪个都是高血糖反应的食物。研究发现，餐后血糖控制能力较差的人，在认知能力测试方面得分较低;胖人和体重正常的人相比，大脑工作能力也会提前下降。除了促进大脑衰老之外，高血糖反应的饮食也会增加罹患肥胖、糖尿病、心脑血管疾病以及部分癌症的风险。//小麦中的面筋蛋白(gluten，常被翻译为“麸质”)，是一个食物慢性过敏的常见诱因。欧洲有不少人对面筋蛋白慢性过敏，不仅可能导致肥胖，还可能导致大脑空白、思维混乱之类大脑神经系统的功能障碍。不仅白馒头白面包中含有它，全麦面包中也有它们，那些低血糖反应的通心粉、意大利面中含量也很高。所以，如果测出有小麦面筋蛋白慢性过敏，就应当远离所有的含面粉食物，连炸大虾外面裹的那层面粉最好也避免。//如果像作者所提倡的那样，不吃各种主食，以鱼肉和蔬菜为食，那么人的确会出现快速的体重下降，这一点令很多人感觉神奇，其实也不过是一个生物化学常识——因为这样做会让脂肪无法充分分解，产生含有能量的“酮体”，使血液酸化，身体必须尽快把它排出去。但排出酮体，意味着身体会浪费大量的能量，所以脂肪分解的速度远远超过正常“管住嘴、迈开腿”时脂肪分解的速度。同时，因为基本上不吃含淀粉和糖的食物，所以餐后的血糖上升幅度微乎其微。在短时间之内，这样的吃法会变瘦，血糖会降低，血脂也不会升高。//不过，先别着急欢呼。不吃主食的饮食方式，从上世纪六七十年代以来，更换包装之后已经数度流行，但每次都从火爆转为式微，这次我相信也不会例外。因为，世界上没有那么完美的饮食健康解决方案。这里不说复杂的科学研究，只说人们都很容易理解的常识。如果一辈子不吃粮食、薯类和杂豆，以鱼肉蛋和蔬菜为主食，能够解决以下这些问题吗?//1 以鱼肉为主食，饮食安全堪忧//很多西方人笃信“石器时代饮食”，说远古人类以肉为主食，吃肉才是人类基因所适合的生活。但是，以鱼肉类为主食，和吃谷物豆类蔬果相比，更易招来环境污染。根据生物放大定律，每升高一个营养级，难分解环境污染物(比如各种重金属、二噁英、多氯联苯、六六六等)的浓度就会上升至少10倍。现在不是远古那种没有化学污染的环境条件了。每天吃一两肉污染风险较小，但每天吃一斤肉的污染风险就大10倍。//有人说，我可以选择有机食物和野生深海鱼类。但是，你能保证自己一辈子吃的鱼肉蛋类全是有机的吗?即便深海鱼类，其中也会含有汞污染，大量当饭吃并不是明智之举。//2 吃肉为主食，会增加肠癌等多种癌症的风险，也会增加心脑血管疾病的危险。//正如人们所记得的那样，世界卫生组织(WHO)在去年已经把红肉和肉类加工品(香肠火腿培根咸肉等)列为一类致癌物，因为过多的红肉会增加肠癌的风险。还有很多研究表明，过多的红肉(每天平均100克以上)和红肉加工品(每天25克以上)可能会增加高血压、冠心病、乳腺癌、前列腺癌等疾病的危险。中国居民膳食指南中推荐的每天40-75克的红肉是不会带来这种危险的。//虽然提倡低碳水化合物饮食的人都会强调多吃蔬菜，但实际上如果没有谷类、豆类和薯类，仅仅靠蔬菜来供应多种膳食纤维，很难达到每日25-35克的推荐范围。为了躲开一种病，升高自己其他一些疾病的危险，值得吗?//3 以鱼肉类和蔬菜为主食，对胃肠功能要求较高，部分人容易出现营养不良。//在中国这样从小以淀粉类食物为主食的人群当中，并非每个人都能承受大量吃鱼肉这样的消化负担。和淀粉类主食相比，鱼肉类食物饱腹感较高，消化速度较慢。在不吃主食之后，很多人无法消化过多的鱼肉类，实际摄入的能量大幅度减少，出现饥饿节食和蛋白质营养不良的状态。因为采纳不吃主食减肥法而发生月经不调、掉头发、皮肤松弛的女性屡见不鲜，尽管她们都声称自己每天吃很多鱼肉蛋和蔬菜。不吃主食之后，因为低血糖和B族维生素不足而造成心情恶劣、情绪沮丧、脾气暴躁的减肥女性也相当多见。//4 长期不吃含淀粉食物的饮食方法，难以长期持续，停下立刻反弹。//在西方减肥研究当中，低脂肪方法的依从性较好，而低碳水化合物减肥方法则常常存在退出率较高的情况，也就是说，受试者不太愿意长期坚持。对于我国这样一个从小习惯于以碳水化合物食物为主食的国家，这种情况更为明显。人们宁愿接受少油的烹调方法，也不愿意接受一辈子不吃主食的生活。两三个月固然能够暂时忍受，但如果成年累月不吃淀粉类食物，人们会感觉不幸福。没有幸福感的事情，多数人是很难长期持续的。//所以，吃肉为主食，虽然短期因为酮症而快速减重，但除非你一辈子坚持这种吃法，否则只要开始恢复淀粉类主食，体重马上就会反弹——此前的成果化为乌有，而体重忽高忽低的波动非常有害健康，折腾自己有什么意义呢?//证明低碳水化合物减肥法好处的研究都是3-6个月的短期研究。国外有一年以上甚至两年以上的长期研究证明，从长期来说，不吃主食的减肥法并不优于吃主食而减脂肪的减肥法。如果不吃主食的减肥法真的那么成功，而且能够长期维持，怎么能解释欧美经历多次低碳水化合物减肥法的热潮之后，至今仍然肥胖率居高不下的事实呢?//5 低碳水化合物的饮食，肝肾的工作负担加重，并非人人适合。//低碳水化合物饮食中，主要能源从碳水化合物切换为蛋白质和脂肪，蛋白质代谢加强，产生的尿素增加，给肝脏和肾脏带来负担;脂肪不能彻底分解，而是产生酮酸，需要及时排除，更会增加肾脏的负担。一些代谢能力较弱的人采用这种膳食后会感觉身体疲劳，脸色和皮肤变差，记忆力下降。肝肾功能不全的人更不能采用这种吃法。//6 吃肉为主食，以中国的资源环境条件，是不可承受的。//最要紧的是，相比于以谷物为主食，以鱼肉为主食会大大增加资源消耗。在我国这样一个人口密集而农业资源不足，20%食物需要依赖进口的国家里，一部分人以鱼肉为主食，那么另一部分人只能饿死，所以这种饮食方式永远只能是少数人，在我国不具备广泛推广的可能性。//7 没有研究确认，低碳水化合物饮食比吃主食的低血糖反应饮食更能延长寿命。//很多西方的书上推崇石器时代饮食，但是别忘记一个事实，那就是古人的平均寿命都非常短，他们的吃法并不能预测老年后的情况。现代人的预期寿命已经长达70多岁甚至80岁以上，学习古人的吃法未必会有长寿效果。虽然有一些动物实验证明降低糖的供应可以延长寿命，也有研究证明降低餐后血糖反应有多种好处，但并没有证据显示，低碳水化合物饮食比正常吃主食，但选择低血糖反应食材的饮食更能促进长寿。//那么，饮食、健康和生态的综合解决方案是什么呢?很多研究已经提示了答案。//仍然吃主食，仍然摄入正常量的碳水化合物(每天从主食中摄入淀粉+果蔬中天然糖的总量约200-300克，减肥时最低不低于120克)，但更多地选择慢消化、高膳食纤维、低血糖反应的主食，比如燕麦、荞麦、黑米、红小豆、芸豆、干豌豆等各种杂粮，再配合大量的蔬菜和少量的鱼肉蛋奶，就是一个好答案。这种饮食结构，既能避免吃大米白面过度升高血糖的麻烦，可以避免过多摄入面筋蛋白的问题，又能减轻肝脏和肾脏的负担，大量研究证明，这种吃法也有利于降低肥胖、糖尿病、老年认知退化、心脑血管疾病和多种癌症的危险。而这正是中国居民膳食指南中所推荐的饮食方式。它符合国情，容易操作，不会引入更多的环境污染，而且能够长期持续而无损健康。（范志红）//来源：新华网//', 'http://images.meishij.net/p/20161018/f3d0ac75c61076303cd58b948332aeb0.jpg', 'http://images.meishij.net/p/20161019/042af4eea9ae9cf83daa8e5363fb3f98_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (19, '这5类食物不甜但糖分高', '2018-09-01', '原标题：糖友请注意!这5类食物不甜但糖分高//糖尿病人不宜吃糖分高的食物，这几乎是每个成年人都知道的常识。但是很多人不知道，有些吃起来不甜的食物，却是“含糖大户”，如鱼香肉丝、面包等。下面，我们就来看看有哪些糖分高的食物被我们忽略了，以及糖尿病人应该要注意的饮食禁忌。//5类食物不甜但糖分高//1、超市中的速冲糊粉是含糖大户//因为单纯的谷、豆等磨成的粉口感不佳，甚至有一种五谷杂豆特有的“土腥味”，因此，豆奶粉、藕粉、核桃粉等速冲糊糊类食品中往往会加入很多糖来调整口感。有的产品中的糖甚至排在配料表的第一位，购买时一定要多注意。//2、山楂片、话梅等酸味零食//山楂、话梅等本身有机酸含量丰富，口感较酸，加工中加入大量糖，口感才能酸甜适宜。有的山楂片中的糖含量高达70%～80%;而话梅的中的糖含量也不示弱，一般排在配料表第二位，仅次于梅子。//3、红烧肉、鱼香肉丝都是高糖//专家介绍，很多人做菜喜欢用糖调味，尤其是餐馆里的厨师更是喜欢大量用糖提味，一份红烧排骨、红烧鱼、鱼香肉丝大概加糖25~30克，红烧肉要加40~50克，最高的是糖醋排骨和糖醋里脊，每份要加入75克左右的糖。此外，一些市民喜爱吃的加工肉制品，如肉干、肉脯里也含有不少糖。//4、猕猴桃、柚子居然比西瓜含糖高//专家表示，别看西瓜吃起来甜，其实含糖量仅为4.2%;而猕猴桃吃起来较酸，含糖量却是10%。含糖量在9%~13%之间的水果还有苹果、杏、无花果、橙子、荔枝等。而柿子、桂圆、香蕉、杨梅、石榴等水果，含糖量超过了14%。//5、酸奶、面包里也有隐形糖//如果你自己在家做面包或酸奶就会发现，一般的白面包100克中需加入10-20克左右白糖，这还不算其本身的淀粉含量。酸奶的制作配方是100克牛奶配10克左右白糖。//糖尿病人的饮食禁忌//1、不宜吃各种糖、蜜饯、水果罐头、汽水、果汁、果酱、冰淇淋、甜饼干、甜面包及糖制糕点等，因为这些食品含糖很高，食用易出现高血糖;//2、不宜吃含高胆固醇的食物及动物脂肪，如动物的脑、肝、心、肺、腰、蛋黄、肥肉、黄油、猪牛羊油等，这些食物易使血脂升高，易发生动脉粥样硬化;//3、不宜饮酒，酒精能使血糖发生波动，空腹大量饮酒时，可发生严重的低血糖，而且醉酒往往能掩盖低血糖的表现，不易发现，非常危险。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161229/09a259b2e182f14f0c3d23818a2ca7d3.jpg', 'http://images.meishij.net/p/20161018/5383b5b8f53e4afbcf3f989b732f1790_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (20, '你被“食品安全新闻”坑过吗？', '2018-10-01', '11月20日，由国家食品药品监督管理总局新闻宣传中心、中国食品工业协会主办的2016食品安全科普创新竞赛启动仪式在北京大学新闻传播学院举行。国家食品安全风险交流中心的钟凯博士在启动仪式上给准备参与竞赛的大学生分析了那些年食品安全新闻背后的故事。看完这些故事，你就会发现，这个世界上最远的路，就是食品安全新闻背后的套路。比如螃蟹里的二噁英哪里来的?鸭血里检出猪的DNA能说明什么?是“毒豆芽”新闻反转的快，还是转基因大豆更扑朔迷离?//螃蟹里的二噁英是“人为添加”//螃蟹里怎么会有二噁英，是不是有人故意添加的?其实也算是，主要是人为添加到环境中去的，比如你早上刚扔掉的那袋子没做分类的垃圾。//如果垃圾燃烧时的温度不够，也会产生二噁英。而之所以常常无法达到高温就是因为我们垃圾中的水分太多。说白了，还是我们分类垃圾形同虚设惹的祸。厨余垃圾混在其他类别的垃圾中，导致了垃圾燃烧的不充分。//另外，越南战争的时候，美军使用一种叫“橙剂”的落叶剂去杀死树木，以对付丛林里的越南游击队。而这个“橙剂”里面就有二噁英的杂质。“橙剂”不止污染了植物土壤和水源，也导致了当地的越南小孩身体的畸形。//此外，还有一些其他的形式会导致二噁英混入我们的环境中去，但从来都没有人专门去生产二噁英。所以，不要再问二噁英怎么会跑到螃蟹里，螃蟹是不愿意的，环境也是不愿意的，还不是我们人类同胞惹的祸?不过好在这次事件中，螃蟹中二噁英的含量，正常食用螃蟹的情况下不会造成健康问题。//鸭血里有猪的DNA要怪案板//前几年曾有条新闻，通过给几家比较知名的火锅店里的鸭血测DNA，结果发现有猪的DNA，就表示鸭血中含有猪血。//其实，平时常下厨房的人都知道，流水的菜肴、铁打的案板。一道一道菜地做下来，案板上会留下很多不同食材的碎屑。而DNA检测是非常灵敏的，那些先后在菜板上粉墨登场的食材的DNA自然就“交叉感染”了。//这个新闻最后的结局也是一样，的确是猪肉类菜肴的DNA沾到了鸭血上，所以才会导致检出了猪的DNA。因此在没有还原“案发现场”之前，我们又被所谓的因果联系给忽悠了。其实，可以测测里面有没有人的DNA，说不定标题党们会搞出更大的新闻。//“毒豆芽”的冤假错案//其实，那些年“毒豆芽”以及各种导致性早熟的食物谣言，都是因为大家没正眼看待“植物生长调节剂”。有人觉得植物生长调节剂不就是植物激素嘛。行，你可以这么说，但是你说吃了植物激素人类就会性早熟，那就是扯淡了。花粉是植物的精子，你吃了花粉会怀孕吗，生出来的难道是葫芦娃?//当年，“毒豆芽”事件让上千人被抓，而所谓“嫌疑犯”们最后都被释放。事实上，合理使用植物生长调节剂不会对人类健康造成严重危害，而是让我们的食物生长得更好，也让我们的食物成熟期能够被控制，以方便采摘。//美国转基因大豆真是喂猪的//有人常常拿“美国的转基因大豆都是喂猪的，只有中国人当食物”说事儿。其实，这句话也不全错。根据美国农业部的数据显示：美国的转基因大豆中80%是豆粕，20%是油脂。豆粕中97%用来做动物饲料，3%做食物。而油脂中68%都是用于食物的。所以你可以说美国的转基因大豆的豆粕都是用来喂猪的，就像你也得承认美国转基因大豆的油大部分是用来喂人的一样。//其实，你可能不知道的是中国进口的美国转基因大豆大部分也是用来喂猪的。为什么要进口美国的大豆喂猪，因为你们爱吃猪肉呗!如果你去查一下中国人每年吃掉的猪肉量，你就会发现需要多少饲料了。文/本报记者  张艳艳//来源：北京青年报//', 'http://images.meishij.net/p/20161206/8346aceb273dd8e628a259d1605824a0.jpg', 'http://images.meishij.net/p/20161014/d8a8f1deb2466b92a7dc90a26598d94c_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (21, '食物掉地上5秒内捡起还能吃?', '2018-11-01', '如果家里有猫、狗等宠物的话，掉落在地上的食物最好还是别再捡起来吃了。//很多人可能从小就面临过这样的选择：拿着一样美味正准备大快朵颐时，却不小心失手让它掉在了地上，这时还可以捡起来吃么?从前，想捡起来继续吃的人用“不干不净，吃了没病”来安慰自己，但近年来，人们又听说了“5秒原则”——5秒内捡起食物，细菌就来不及“爬”上去。然而，这种说法真的对么?掉到地上的食物究竟还能不能吃?//细菌转移几乎立即发生//掉在地上的东西吃不吃，很多时候人们采用的是经验法则，取决于这样食品贵不贵、是否充饥必须或者地面的干净程度。而“5秒原则”似乎在告诉人们，只要“手速”够快，就能够捡回未被污染的食物。不过，“五秒法则”究竟是谁提出来的?//食品安全博士钟凯介绍，“5秒原则”其实是美国芝加哥一名高中生的猜想，她还因此获得了2004年的“搞笑诺贝尔奖”。而这样一个“不靠谱”的起源，似乎也注定了“5秒原则”没有科学性。//早在2006  年，美国克莱姆森大学的研究人员就用沙门氏菌做了研究，他们当时用香肠片测试了木头、地毯和瓷砖三种地面。结果发现，食物掉在地上的时间和沾染细菌的数量并没有明显关系，5秒、30秒和60秒的结果是差不多的，这也意味着“5秒原则”并不可靠。//探索频道的“谣言终结者”节目也做过类似实验，发现食物掉地上不到2秒钟就能沾染细菌。//美国罗格斯大学的一项研究中，研究人员用128种排列组合模拟“食物掉地上”的情形，每种情形重复测试20次，其中包括食物掉地上1秒、5秒、30秒和300秒的效果，结果发现细菌能在1秒内成功占领掉落的食物。//由此可见，细菌的转移几乎是立即发生的，就算你有闪电般的手速也没用。//湿度和水分更易转移细菌//如果时间长短和细菌转移没有必然联系，那么影响细菌转移的到底是什么因素呢?钟凯博士表示，细菌转移最重要的因素是湿度和水分，当掉在地上的食物是湿的，或者地面本身是湿的，这样的食物受污染风险大大增加。大肠杆菌、沙门氏菌和李斯特菌都非常喜欢潮湿的环境，它们会从水里吸收所需的营养，然后进行生长和繁殖。//比如，西瓜掉在地上不到1秒钟就可以沾染大量细菌，这是因为它表面的水分很多，而表面干燥的橡皮糖沾染细菌最少。而油性表面的影响要比水分小得多，同样的研究中，面包片和涂黄油的面包片沾染细菌的数量并没有明显差异。//其他影响细菌转移的因素则众说纷纭。罗格斯大学的研究人员认为，地面平整度也会影响细菌转移，平整光滑的瓷砖、不锈钢表面更容易让细菌沾染食品，这很可能是因为平整表面可以提供更大的实际接触面积，而地毯粗糙的纤维表面相对而言更不容易让细菌沾染食品。//而克莱姆森大学的研究人员则认为食物沾染细菌的数量主要取决于地面的清洁程度。地毯更有利于细菌存活，它的带菌量可以是普通地面的成百上千倍，因此，食物从地毯沾染的细菌可能比地板更多。//“捡着吃”最需提防致病菌//虽然掉到地上的食物会很快沾染上细菌，但这并不意味着吃掉以后就会立刻生病。这是因为，日常环境中存在的大多数细菌并不致病。地面通常比较干燥，而多数致病菌并不喜欢这样的环境，这也是为什么许多人吃了掉在地上的食物，却“不干不净吃了没病”的原因。//而人们对于“干净”的判断也很主观。根据专家们的说法，厨房和浴室的地板并不比家里其他地方更脏，水槽的受污染情况最严重。一般民宅内的细菌绝大部分是无害的，如果经常擦地、且更换拖布头保持拖布干燥，那家中地面的细菌密度很可能比你手上、手机或纸币上的细菌密度小。//虽然研究者们进行了大量实验，但仍没有就“吃下掉在地板上的食物会不会致病”给出明确答案。细菌的转移速度是次要的，更关键的是地上到底有哪些菌。//钟凯表示，总而言之，食物掉地上沾染细菌是不可避免的，最佳的选择当然是不吃，但如果你不介意吃一些无害的细菌，通常也不会有事。需要提醒的是，如果家里养了宠物或有老鼠光临，最好还是谨慎一些，因为它们更容易携带致病菌乃至寄生虫。//来源： 新闻晨报//', 'http://images.meishij.net/p/20161215/546b12c32c048f340573659c311024c6.jpg', 'http://images.meishij.net/p/20161013/9bd817c2e7f4a8df880dd636701328bd_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (22, '女性补充荷尔蒙吃5种食物', '2018-12-01', '原标题：芝麻坚果和蘑菇 女性补充荷尔蒙吃5种食物//女性补充荷尔蒙应该吃什么呢?女性缺乏荷尔蒙就会出现很多异常症状，直接影响到我们的身体健康，所以需要引起重视。接下来，就来一起看看补充荷尔蒙的食物都有哪些，千万别错过了。//女性缺乏荷尔蒙的症状//失眠头痛表现：失眠、多梦、疲倦、头痛。晚上催眠的方法皆用尽，还是睡不着。白天注意力不集中，困倦嗜睡，严重影响了日常生活。//月经不调表现：“老朋友”总是不按时出现。提前还好说，最多就是弄个措手不及，但推后就不安了，疑神疑鬼地掰着手指头算日子，或是怀疑安全套是否出问题了。好不容易把它盼星星盼月亮似的盼来了，却发现在它该离开的时候，拖拖拉拉地不肯走。//皮肤衰老表现：皮肤松弛，白皙的肌肤也日渐粗糙，毛孔也膨胀粗大起来，就连色斑也跳出来捣乱，镜子呈现出来的是标准的“黄脸婆”。//烦躁胸闷表现：心慌气急、易激动甚至狂躁，会因一件小事与同事或家人争吵，总是摆出一副“不高兴”的样子，有时很难控制自己的情绪;夜间睡觉时会因为胸闷而被憋醒，严重时会出现血压也会像你的爆脾气一样，说翻脸就翻脸。//那么，女性补充荷尔蒙吃什么好呢?//女性补充荷尔蒙的5种食物//蘑菇、海草类。补充女性荷尔蒙时，卡路里高的食品一般不受欢迎。而蘑菇、海草等卡路里低，并含有丰富的食物纤维、维生素、矿物营养素等。因此，我们应该大量食用它们。//芝麻、坚果类。芝麻、坚果含有大量的维生素B和维生素E。维生素B和维生素E对顺畅的分泌女性荷尔蒙、理想的平衡荷尔蒙的是不可或缺的。但因为含有脂类的缘故，注意不要食用过量。//蛋白质。肉、鱼、乳制品、鸡蛋等含有动物蛋白质。这些动物蛋白质含有可以合成女性荷尔蒙的胆固醇。动物蛋白质缺乏可能会造成女性的停经。植物性和动物性蛋白质如果同时适量摄取，会对女性荷尔蒙的提升产生不可替代的作用。//蔬菜。蔬菜含有丰富的食物纤维和维生素，这对女性荷尔蒙的补充很有好处。特别是菠菜中含有的丰富的维生素B1，在生成神经传递素方面有重要的作用。维生素若不足，大脑就无法向卵巢发出分泌荷尔蒙的指令。因此，大量食用蔬菜是很重要的，特别是有色蔬菜。//甜莓。与此同时专家还提醒，要想补充丰富的荷尔蒙，在平时生活中还应该多吃些甜莓类食物。与酒的作用相类似，这些水果所含的花青素可以保护你的身体抗癌，与此同时还可以起到补充激素以及修复细胞的作用。莓子类食物提供强大的抗氧化保护，不仅可以保护心脏健康，同时还具有抗击皮肤年龄老化的作用。//女性补充荷尔蒙怎么吃//肾脏偏爱黑色及带有自然咸味的食物，如黑芝麻、黑木耳、黑豆、香菇、黑米、虾、贝类等;肝脏偏爱绿色的食物，如菠菜、白菜、芹菜、生菜、韭菜、西兰花等。//脾偏爱黄色且有自然甜味的食物，如黄豆、南瓜、橘子、柠檬、玉米、香蕉等。黄色食物可以健脾，增强胃肠功能，恢复精力，补充元气，进而缓解女性荷尔蒙分泌减少的症状。黄色食物对消化系统也很有疗效，同时，也对记忆力衰退有帮助。//女性补充荷尔蒙，以上食物可以试试看哦。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161114/97dcbd3e508beaea6c42d01a3cfc94c1.jpg', 'http://site.meishij.net/r/150/78/3394650/a3394650_147635008229286.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (23, '醋疗非万能，日常用醋6大误区', '2019-01-01', '原标题：醋疗不是万能 日常用醋需防6大误区//“醋疗”之说“风声鹊起”，以醋为主的食疗方子不少，有的号称能包治百病，有的说一吃就灵，各种与醋有关的保健产品也充斥市场。小小的醋，真有如此神奇的作用吗?//醋疗不是万能//醋作为传统的发酵食品，含有氨基酸、有机酸、维生素和矿物元素等营养物质，适量食用对人体有益。醋是一种不错的调味品，平时也会推荐病人少吃点盐用醋来调味，这样能保护B族维生素和维生素C不被破坏，还能促进人体对铁的吸收和利用。合理“醋疗”有助消化和增进食欲。但下面这些醋疗功效被夸大了。//1、60天远离高血压纯瞎扯//网上有很多关于醋疗降低血压神奇功效的说法：“巧吃醋，60天远离高血压”就流传甚广。对此，专家表示，饮食中加醋可帮高血压人群膳食中减盐，确实有益血管健康。有研究数据发现，每天坚持饮用一勺醋能刺激人体的血管细胞分泌一氧化氮，在一定程度上扩展血管。但引起血压高的原因有很多，想以简单的“醋疗”将血压控制在理想范围内比较困难，觉得有效果，更多可能是安慰剂作用。网上炒作的喝醋就能“软化血管”，提倡单靠停掉降压药，仅靠几十天喝醋“治疗”，很可能反而导致血压波动。//2、喝醋降血糖不科学//朋友圈中类似的文章还有：“糖尿病、妇科病、老年痴呆症等39种疾患统统搞定”“健康就要自己酿”。以糖尿病为例，有些人一看见醋疗这样厉害，直接降糖药也不吃了，每天就想靠喝醋降血糖或者减肥。虽然醋有一定的辅助降低餐后血糖作用，但有研究发现这种作用仅限于和高血糖指数食物(白馒头、白面包、白米饭等)一起食用，如果食物是低血糖指数食物(比如燕麦、粗粮等)，效果不明显。//3、醋不能给肠道杀菌//虽然醋一定程度上可以给食物杀菌，比如糖蒜放在醋中能长期保存，但是日常生活中我们的摄入量不足以达到给人体肠道杀菌消毒的效果，也不能预防细菌性的食物中毒。“醋能美容”“醋是碱性的，能改变酸性体质”，这些说法都只是道听途说，目前没有确切的科学依据。就体质而言，现代医学中根本没有“酸性体质”、“碱性体质”的说法，正常人体内的酸碱度(pH值)在人体三大调节系统的调节下，都会稳定在7.35~7.45之间，并不会因为吃某一种食物而改变。//4、醋泡食谱营养不变//比如“醋泡蛋壳可以补钙”，首先这种吃法非常不安全，鸡蛋壳上可能含有重金属或污染了沙门氏菌;其次补钙效果远不如喝牛奶。针对醋泡黑豆、花生、黄豆等吃法，高键说，如果偏爱这种口味没有问题，但不能轻言它们对慢性病有神奇疗效，更不能用其来代替正规治疗和正常膳食。//5、醋不是人人能喝//醋疗人人皆宜?事实并非如此，胃酸过多或者是有胃病的人要格外注意，直接喝醋会更刺激胃。糖尿病患者不要喝含糖量较高的保健醋、果醋;正在服药的人也要谨慎醋疗，以免影响药效。//6、醋饮料不可保健//每天喝瓶果醋，相当于喝醋保健?果醋只是沾的醋字的“光”，其实质只是饮料。酿造醋的价格不高，很多商家就在少量普通食醋基础上加入别的食材，如大枣、桂圆、山楂等，或者添加水果汁、食用甜味剂等成分做成醋饮料，如苹果醋、梨醋来炒“概念醋”，抬高价格。其实，这类醋饮料已经没有了传统酿造醋成分和营养。如果宣称是保健醋，就应取得保健品批号。//大家在买醋的时候要注意看清标签，建议选酿造醋(即以粮食、麸皮、豆类等为主要原料，经发酵工艺酿造而成)，这样才能把醋的营养吃全，尽量不要选配制醋和勾兑醋(酿造食醋与稀释后的食用醋酸混合配制而成的调味醋)。一般来说，执行标准是GB18187的是酿造醋;SB/T10337则是配制醋;而如果标为“Q/”开头的，可能是以醋为主要原料，添加了其他成分的产品。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161122/979c426d77ab961fda93a5516dea5baa.jpg', 'http://images.meishij.net/p/20161011/463834490e5bf4bc27c38d979179d272_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (24, '冻鱼保鲜保营养吗?', '2019-02-06', '最近关于活鱼的事儿备受关注，而当活鱼玩失踪的时候，内心感到最忐忑的恐怕应该是——冷冻鱼。//毕竟，国人在“吃”这件事情上从来都是条条大路通罗马。当活鱼买不到的时候，吃货的筷子也伸向了还没失踪的冷冻鱼们。谁叫鱼从古至今都是餐桌上的大菜呢，逢年过节、婚丧嫁娶少了谁都可以，但宴席中总少不了鱼。没办法，无论是想满足口腹之欲，还是想要获得丰富的营养，鱼在肉类家族里常常是“高畜一筹”。//但是有人会有这样的疑惑，冷冻鱼和活鱼比起来，营养价值是不是都给“冻”没了?//冷冻是一种重要的保藏方式//跟鸡鸭猪牛羊这类禽畜相比，鱼的肌肉组织含水量更多，可溶性蛋白质含量也更高，又富含不饱和脂肪酸，天然免疫物质少，鳃和内脏附着的细菌多。而鱼死后呈弱碱性，更加适宜细菌生长，也就更容易腐败变质。所以，机智的吃货祖先们为了把远方的鱼运到自己家的餐桌上，让更多的人品尝到不同品种的鱼肉的鲜美，就发明了冰鲜鱼和冷冻鱼。//冰鲜鱼是采取加冰降温的方式，让鱼在死后的僵硬期延长，相当于让鱼体细胞的生理状态“定格”在死亡的瞬间。所以冰鲜鱼的口感和味道跟活鱼比较相似。//但是冰鲜鱼也只能保存几天而已，而我们想吃到从遥远海域捕捞到的鱼种，就得依靠更长期、更稳定的保藏方式。在冷冻状态下，酶的活性和微生物的生长都被抑制，鱼的保质时间也大大延长，通常可达数月。所以冷冻鱼的出现正是为了能够让我们品尝到遥远海域的鱼种。//冷冻不影响核心的营养价值//但对于大家来说，最关心的还是冷冻之后的鱼肉跟活鱼相比发生了什么变化。//首先，从口感上说，冷冻鱼的肉质的确没有活鱼鲜嫩。这主要是因为在冷冻过程中，鱼内的水分冻结成冰晶，导致鱼肉蛋白质发生冷冻变性和一系列理化性质的改变，包括蛋白质空间结构和疏水性的变化，凝胶性和保水性的降低，盐溶性蛋白含量降低，ATP酶活性减低等，从而造成鱼肉的品质和口感下降。//其次，从营养上看，同品种的鱼冷冻后确实会流失掉一部分营养。因为在鱼冷冻时，鱼肉的肌原纤维中的水分将结成冰晶，但在解冻的时候却没有办法再与蛋白质分子聚合，也就不能被全部吸收回鱼肉中。这种汁液的流失就伴随着鱼肉中一小部分可溶性蛋白质、盐类、维生素等水溶性营养物质的流失。但是，这点损失并不影响鱼类的核心营养价值。因为这一点损失如果也要较真儿的话,那就不得不提醒你，其实活鱼在暂养过程中，受局部水环境氧气、温度、pH值、排泄物积累和捕捞造成的鱼体损伤等因素影响，也会出现品质的下降，一样有一定的营养损失。//所以，冷冻鱼与活鱼相比，口感上输得坦荡荡，但营养价值没啥明显差别。更关键的是，你除非去海边度假，否则常见的活鱼大部分都是养殖的淡水鱼。而营养价值更高的深海鱼，基本上都是冷冻的。所以，鱼类的营养价值高低也要看鱼的品种，不能单纯地从是不是活鱼来判断。为了活鱼而放弃了深海冷冻鱼得不偿失，不如“一视同仁”地对待活鱼和冷冻鱼。//鱼肉突出的营养优势//其实，无论是活鱼还是冷冻鱼，都是膳食结构里少不了的一种美味又营养的食材。因为鱼肉突出的营养优势一直为人称道。//大多数鱼肉的脂肪占比都在5%以下，蛋白质含量则高达15%-20%。而中国人消费最多的猪肉，脂肪平均占比高达37%，蛋白质含量仅为13.2%左右。而且，禽畜肉中的脂肪主要是饱和脂肪，过多摄入容易增加罹患心脑血管疾病的风险。鱼肉则富含不饱和脂肪酸，有助于降血脂、降胆固醇，保护心脑血管健康。//对孕妇和婴幼儿来说，鱼更是好东西。特别是某些深海鱼，其中的多不饱和脂肪酸，比如大名鼎鼎的DHA，对大脑发育大有益处。除此之外，鱼类还富含人体所需的维生素A、D、E等多种营养素。//来源：北京青年报//', 'http://images.meishij.net/p/20170123/6d637a92a2423a1085d8e79d6847c184.jpg', 'http://images.meishij.net/p/20161010/5d80b2f87cf17946e8f25feea686a357_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (27, '干煸牛肉的3种做法', '2019-03-05', '原标题：牛肉食用有禁忌 教你干煸牛肉的3种做法//牛肉营养价值丰富，是进补和日常餐桌上都不能少的肉类食物。牛肉在做法上也有很多，干煸牛肉就是其中一种。并且，干煸牛肉的做法也有很多种，下面就来为大家具体介绍一下干煸牛肉的3种做法吧。//干煸牛肉的3种做法//简单版：将牛肉切成筷子粗细的丝，姜、香芹切丝。热锅凉油，下锅后小火反复煸炒。牛肉丝变白出水后，将牛肉丝倒出，沥干水。热锅凉油，加入牛肉丝煸炒。下入姜丝、2克盐，加入豆瓣酱，豆瓣酱煸炒出红油后，加入酱油。加入芹菜丝，出锅前放入花椒面和芝麻。//豪华版：将牛肉洗净沥干，横切成丝状，香芹剪去根与叶子以后洗干净，切成约3厘米长的段，干辣椒洗净后用剪刀将其竖向剪开，去籽后再剪成条，生姜切成丝，大蒜去皮切成片，郫县豆瓣剁碎，香菜洗净切成段。热锅放油，放入花椒，炸出香味后下牛肉丝炒散后再继续煸炒，要一直将水分炒干。加入2小勺料酒，炒均匀，再下入干辣椒、生姜、大蒜、郫县豆瓣，继续将牛肉煸酥。下入芹菜，再加入适量的盐、鸡粉、少许白糖，炒至芹菜断生后再放入香菜与生抽，炒均匀后就可以出锅了。//至尊版：碗中清水和少量盐化开，放入洗净的牛肉，泡半大约小时，让牛肉出血水。炖锅中放十几颗花椒、八角4个、葱段、姜片、黄酒两勺、牛肉块，清水没过牛肉约5公分，大火烧开以后，转小火炖1.5-2小时，牛肉若用筷子扎得透，扎孔里不出血水，即为八成熟，关掉火，捞出来控水，等待凉透。凉透的牛肉顺着肉的纹理切成条，香芹切段、姜切丝、蒜切碎末备用。锅里放花椒、干辣椒、半碗冷油、开小火，慢慢炸出香味来，看花椒快变黑，关掉火，捞出花椒和干辣椒。重热锅中油，放进八角，姜丝、芝麻、牛肉条，花椒粉、中火煸炒5分钟左右，至牛肉发干，倒入豆豉辣酱、老抽、糖、接着炒5分钟、放香芹炒至变软、按自己口味放适量盐、出锅前放蒜末再炒一分钟即可。//除此之外，还要为大家介绍的就是牛肉的选购方法和禁忌。//如何选购牛肉//闻，新鲜肉具有正常的气味，较次的肉有一股氨味或酸味。//摸，一是要摸弹性，新鲜肉有弹性，指压后凹陷立即恢复，次品肉弹性差，指压后的凹陷恢复很慢甚至不能恢复，变质肉无弹性;二要摸黏度，新鲜肉表面微干或微湿润，不粘手，次新鲜肉外表干燥或粘手，新切面湿润粘手，变质肉严重粘手，外表极干燥，但有些注水严重的肉也完全不粘手，但可见到外表呈水湿样，不结实。//看，看肉皮有无红点，无红点是好肉，有红点者是坏肉;看肌肉，新鲜肉有光泽，红色均匀，较次的肉，肉色稍暗;看脂肪，新鲜肉的脂肪洁白或淡黄色，次品肉的脂肪缺乏光泽，变质肉脂肪呈绿色。//牛肉的食用禁忌//老人小孩不宜多吃。牛肉高胆固醇、高脂肪、老年人、儿童、消化力弱的人不宜多吃。//牛肉不可以烤。牛肉不宜熏、烤、腌炙，以免产生苯并芘和亚硝胺等致癌物质。//牛肉猪肉不能共食。猪肉和牛肉不共食的说法由来已久，从中医角度来考虑，一是从中医食物药性来看，猪肉酸冷、微寒，有滋腻阴寒之性，而牛肉则气味甘温，能补脾胃、壮腰脚，有安中益气之功。二者一温一寒，一补中脾胃，一冷腻虚人。性味有所抵触，故不宜同食。//肾炎患者不可多吃。牛肉属于高蛋白食品，对肾炎患者不可多食，以免加重肾脏负担，与氨茶碱类药物同用，也会使其疗效下降。//不可过量食用。中医认为牛肉有补中益气、滋养脾胃、强健筋骨、化痰息风、止渴止涎的功效，适宜于中气不足、气短体虚、筋骨酸软、久病贫血、面黄体瘦、头晕目眩的病人食用。适宜用量每餐约80克，过量食用可能会提高结肠癌和前列腺癌的患病几率。//不可以和白酒一起食用。牛肉和白酒一起食用会牙齿发炎;白酒为大温大热之品，饮白酒吃牛肉对温热体质的人犹如生火添热，容易引起面赤身热，疮疖恶化。//干煸牛肉的做法是不是很简单呢?快来试试看吧。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161101/e874d172d67599b33eac4fb0be82e4b0.jpg', 'http://images.meishij.net/p/20160928/ad1e12153d6667752efdc85ce4d95476_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (28, '辟谣：榴莲牛奶同吃不会猝死', '2019-06-03', '微信朋友圈曾流传这样一则消息：中国游客吃榴莲后喝牛奶，致咖啡因中毒、血压飙升，引发心脏病猝死。帖子中说：“泰国有明确规定，食用大量榴莲后，8小时之内不能饮奶类产品。”事实果真如此吗?//“咖啡因主要存在于咖啡、茶以及其他草本植物中。所以，这则消息从营养学的角度来分析，似乎是说不通的。如果猝死事件是真实的，那么它的发生只能说纯属偶然。”河北医科大学第三医院营养科副主任雷敏分析，这名游客很有可能本身就患有心血管方面的疾病，加上劳累，再进食过多的榴莲，喝大量牛奶，导致热量和液量过高，心脏负担增加，诱发心脏病急性发作而猝死。//“至于吃榴莲后8小时内不能喝牛奶也是不成立的。”雷敏表示，就拿我们常吃的甜点举例，榴莲冰淇淋、榴莲泡芙、榴莲千层蛋糕等一系列榴莲甜品，都是混合鲜奶油或炼乳与榴莲制作而成。鲜奶油和炼乳又是用鲜牛奶加工而成，但目前尚未有因食用这些甜点导致生命危险的案例报告。//此外，雷敏提醒，“吃榴莲后喝酒虽然不会致人死亡，但若食用数量不当确实对人体健康不利，所以还是错峰食用较好。”//来源：广州日报//', 'http://images.meishij.net/p/20161128/72d4cf45f75f20a0dccb01940a6cc9b8.jpg', 'http://images.meishij.net/p/20160927/615545e831396410d720600d89436764_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (29, '6种酱油怎么吃更营养？', '2018-10-03', '原标题：酱油常见6种类型 如何食用最营养?//酱油，这种调味料是厨房最常见的，每个人都不会陌生。现如今，酱油的种类也越来越多了，分别都会有哪些独特之处呢?在这里，就来为大家具体介绍一下酱油的6种类型都是哪些，快来一起了解了解吧。//6种类型的酱油//生抽：生抽的“抽”字意为提取，以大豆或黑豆、面粉为主要原料，经天然露晒、发酵而成。生抽呈红褐色，味道咸鲜，豉香浓郁，因颜色淡，所以多用来调味，是家常炒菜或凉拌菜的最佳搭档。//老抽：老抽是生抽的“升华版”，在生抽的基础上加入焦糖，经特殊工艺制成的浓色酱油，呈棕褐色，颜色较深，可给肉类食物增色，是各种浓香菜肴上色入味的理想帮手。老抽味道咸中带微甜，风味浓厚，尤其是做红烧菜肴或者是焖煮、卤味时，适当加入老抽，克上色提鲜。需要注意的是，做菜时，要让菜肴显得“好看”，需早点放入老抽，但又不能太早，否则会降低老抽的营养价值，要把握住“度”。//普通酱油：普通酱油与生抽的酿造工艺类似，是北方大部分地区的常备酱油种类。因北方人口味较重，所以普通酱油比生抽颜色重，味道更咸，酱香味也更浓郁，但与老抽相比又稍逊一筹，因此普通酱油是介于老抽和生抽之间的一种综合性酱油。适用于烧、炖、炒各种北方菜肴。//蒸鱼豉油：蒸鱼豉油是通常用来蒸鱼用的一种豉油，以生抽为原料，再加入老抽、冰糖、花雕酒等多种调味鲜料熬煮而成，因此味道要比普通生抽味道鲜美回甜，搭配海鲜、河鲜类清淡菜肴及广东的肠粉，可起到很好的提鲜效果。//酱油膏：酱油膏选用普通酿造酱油，加入盐、黄砂糖、胡椒粉等调味料，经提炼后加工制成。因其中含有一定量的淀粉质配料，所以浓稠如膏，颜色多为棕黑色，与蚝油类似。适用于红烧、拌炒类菜肴，还可直接搭配食物作为蘸汁食用。//日本酱油：日本酱油多以大豆及小麦发酵酿造而成，其中不含焦糖等添加剂成分，但却含有少量酒精成分，因此口味独特，与普通酱油味道差别很大，是菜品的最佳搭档，比如韩国的紫菜包饭、石锅拌饭等。//那么，酱油的营养价值和吃法都是怎样的呢?//酱油的营养价值//增进食欲：烹调食品时加入一定量的酱油，可增加食物的香味，并可使其色泽更加好看，从而增进食欲。//防癌：酱油的主要原料是大豆，大豆及其制品因富含硒等矿物质而有防癌的效果。//降低胆固醇：酱油含有多种维生素和矿物质，可降低人体胆固醇，降低心血管疾病的发病率，并能减少自由基对人体的损害。//止痒消肿：酱油可用于水、火烫伤和蜂、蚊等虫的蜇伤，并能止痒消肿。//酱油的食用方法//最好在菜肴将出锅前加入酱油，略炒煮后即出锅，因为酱油中含有丰富的氨基酸，这样可以避免锅内的高温破坏氨基酸，使营养价值受到破坏，而且酱油中的糖分也不会焦化变酸。//为有效防止酱油发霉长白膜，可以采用往酱油中滴几滴食油、放几瓣去皮大蒜或滴几滴白酒等方法。//烹调酱油不要用作佐餐凉拌用。//酱油的种类有很多，可根据实际需要来选择。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161109/03e66fe621008d53e693abda41da27c9.jpg', 'http://images.meishij.net/p/20160923/bcc1a5fb3a8b7593b6c1806647c000ad_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (30, '自助餐要这样吃才划算', '2019-01-01', '不少人打着“扶墙进，扶墙出”的口号来迎接自助餐，即便回本占了小便宜，却很可能在健康上吃大亏。所以，去吃自助，心里先要有一杆秤。//别一上来就大开吃戒//开始吃自助餐时，不要一上来就大吃，而应该先取一小碗清淡的汤或粥，或者吃些清淡的蔬菜水果开胃，再慢慢吃点主食，最后再吃鱼禽肉等荤食。这样进食油脂和鱼禽肉类过量的机会更小，同时保证蔬菜和水果的摄入量，提供丰富的维生素和膳食纤维，避免了肥胖的麻烦。//给盘子划条“三八线”//看着各种丰富的食材，这个想吃，那个也想尝尝，恐怕很难控制住自己的手，如何定量取用、合理搭配才是健康进食的关键。//将常规的取餐的盘子首先一分为二，假装划一条“三八线”。其中一半的餐盘一大半用非淀粉类的蔬菜填满;一小半放些水果;另一半餐盘再一分为二，一半放谷物，另一半放些鱼虾肉蛋等蛋白质丰富的食物。另外可以配一小碗清汤或者一杯牛奶。如果有坚果也可以来一小把，这一餐的食物就足够了。//主食选少选杂一点//自助餐一般荤食较多，且油大味重，大量的蛋白质摄入很容易增加消化道负担，即使是自助餐也要重视主食。可以选择一些粗杂粮或者芋头、红薯等薯类作为主食，增加一些膳食纤维和B族维生素的摄入，由于自助餐可选择的种类比较多，可以每种都取点，但是都不多拿。//生猛海鲜别超1/4餐盘//自助餐中的荤食除了常见的鸡鸭鱼肉，可能还有昂贵的生猛海鲜。选择的时候一定不要贪多求全，控制在1/4餐盘。另外尽量选择清淡的烹调方法制作的肉类，取用的时候优先选择低脂的鱼禽类，也可以用少量豆制品替代部分荤食。//蔬菜沙拉用油醋汁调//可以多选择一些深色的蔬菜，不同颜色相互搭配，营养丰富又增进食欲。不过自助餐中不少蔬菜是来自于蔬菜沙拉，建议大家减少沙拉酱(脂肪含量比较高)的用量或者直接用油醋汁进行调味。各种甜点、甜饮料尽量少吃，用水果来作为餐后甜点。水果尽量选择新鲜水果，不要用果汁替代水果。//温馨提示：//自助餐因为食物品种较多，容易能量超标，最好在中午吃，吃完后适当活动一下，当天的晚餐可以比平时吃得更少一些，晚餐后再保持一定的运动量，这样一来，可以尽可能保持当天的吃动平衡。不要连续吃自助餐，两次自助餐之间最少要相隔三天，以免能量蓄积导致体重增加。//来源：39健康网//', 'http://images.meishij.net/p/20161205/2fcf7c115611431bc521d382642a1fbc.jpg', 'http://images.meishij.net/p/20160922/ab0449d85d049a4ba161da6f73969592_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (32, '吃鸡蛋可降低中风风险', '2017-04-01', '吃鸡蛋可降低中风风险//原标题：美研究称每天吃鸡蛋可降低中风风险//新华社华盛顿11月1日电(记者林小春)《美国营养学院学报》1日发表的一项新研究说，每天吃一个鸡蛋，可以将罹患中风的风险降低约12%。//在美国鸡蛋生产商协会和美国鸡蛋委员会的资助下，美国流行病学数据研究所研究人员分析了1982年至2015年有关吃鸡蛋与冠心病及中风之间关系的多项研究，研究对象涉及近60万人。//结果显示，每天吃一个鸡蛋与冠心病风险之间不存在联系，反而能把中风风险降低约12%。中风是由于脑部供血受阻而导致的脑功能损失，冠心病是一种由于冠状动脉狭窄或阻塞引起的心肌缺血缺氧或心肌坏死性心脏病。//研究人员表示，鸡蛋含有许多营养成分，如蛋白质、抗氧化剂等，但还需要更多研究了解吃鸡蛋与中风风险之间的关联。//多年来，许多医生建议人们不要吃太多鸡蛋，一个原因是其中的胆固醇很高。但今年1月，美国政府在每5年更新一次的政府饮食指南中删除了胆固醇摄入量限制，这意味着不用担心吃鸡蛋。然而新版指南在美国国内引发争议，有非盈利组织称禽蛋行业对该指南发挥较大影响力，制定指南的咨询委员会中至少3人接受过禽蛋行业的资金支持，另一人直接由该行业提名。//来源：新华社//', 'http://images.meishij.net/p/20161103/97af0a1ffde2d64d21e32b6625a871b6.jpg', 'http://images.meishij.net/p/20160919/05de98b48a112728b0953f7edd7f23d9_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (33, '菜板种类多 教你日常消毒小窍门', '2017-10-01', '菜板是厨房用具中绝对不能少的一种，而菜板的种类有很多，分别都有哪些不同之处的呢?在这里，要提醒大家的是清洗菜板是件很重要的事情，如果清洗的不够干净就会直接影响到我们的饮食卫生。//菜板的4个种类//木质菜板。木质菜板包括柳木板、松木板、榆木板等，其材质较厚，韧度强，适合剁肉或切割坚硬的食物。但木质菜板一般质量较重，不易清洗，且吸水性强，不宜风干，在潮湿环境中易发霉，滋生细菌。//竹制菜板。竹制菜板轻便小巧，但由于厚度不够，多由拼接而成，不可避免会有胶的黏合部分，有些不合格的胶质可能释放甲醛，且竹制菜板使用时往往不能承受重击。如果购买，尽量选用正规品牌，环保信誉好的产品。//塑料菜板。塑料菜板质地轻，易携带，但多以聚丙烯、聚乙烯等材质制成，高温下易散发塑料气味，不合格的塑料菜板还会有化学物析出，因此一般只适用于切新鲜蔬菜和水果。如果你用这种菜板来做其他的事情，那么，其所能够达到的效果可能就并不会让你特别满意。//树脂菜板。树脂菜板硬度高，表层耐磨性强，较少出现划痕，容易清洗。比较适合加工肉等熟食产品或果蔬等。//菜板的食用技巧//生熟分开。由于生菜上有较多的细菌和寄生虫卵，因此，菜板不可避免地要受到污染，如果再用这样的菜板切熟食，就会使熟食污染。最好备两块菜板。稻壳本身具有较强的抑菌和杀菌功能，在制作过程中还添加了微量超强杀菌功能的的纳米银单质很好地预防了细菌残留，加上硬度高易清洗，保证了在切换食物时，不会有污垢残留在砧板上。//保持清洁。传统菜板用过后，用硬板刷和清水刷洗，将污物连同木屑一起洗掉。如果留有鱼、肉等腥味，可用溶有食盐的洗米水或洗涤灵洗擦，然后再用温水洗净。不要用开水烫，因为肉里的蛋白质残留在菜板上，遇热就凝固起来，不易洗净。洗过后竖起晾干。//接下来，为大家介绍一下菜板的清洗方法吧。//菜板的6种清洗方法//紫外线消毒：把菜板放在阳光下暴晒30分钟以上，这样不仅可以杀死细菌，而且可使菜板干燥，减少病菌繁殖。//洗烫消毒：先用硬刷和清水将菜板表面和缝隙洗刷干净，再用100℃的开水冲洗一遍。//撒盐消毒：每次使用菜板后，都要用刀将板面的残渣刮净，每隔6～7天在板面上撒一层盐，这样既可杀菌，又可防止菜板干裂。//葱姜消毒：菜板用久了，会产生怪味。用生葱或生姜将案板擦遍，然后一边用热水冲，一边用刷子刷洗，怪味就会消失了。//醋消毒：切过鱼、肉的菜板，只要洒上点醋，放在阳光下晒干，然后用清水冲刷，就不会有腥味。//化学消毒：一公斤水加入新洁尔灭50毫升浸泡菜板15分钟左右，然后用清水冲洗干净。//以上几种菜板清洗的方法，选择你喜欢的试试看吧。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161213/71365d111be7ec7a33dd92a0b9738309.jpg', 'http://images.meishij.net/p/20160913/1e8c610e9701ab66901e0cc5da1da60f_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (34, '办公室常备3类健康零食', '2016-09-01', '原标题：枸杞护眼黑巧克力提神 办公室常备3类健康零食//眼睛干涩、肚子饿、感觉身体被掏空没点精神，相信很多上班一族经常会有这些感觉。每到这种时候，除了必要的休息之外，吃零食是很多人的选择。不过，零食虽然要吃，但要吃的健康哦。//办公室常备3类健康零食//护眼零食：枸杞、蓝莓//枸杞自古有“红宝”之称，它富含的天然色素β胡萝卜素作为维生素A的前体，可预防维生素A不足，能护眼明目。长时间注视电脑、电视、游戏机等，都会使得维生素A消耗量增大，要格外注意补充。蓝莓富含花青素，具有保护微血管改善眼睛供血的作用。//解饿零食：全麦面包、坚果//全麦面包属于复合性碳水化合物，不会让血糖快速波动，且高纤维会带来饱腹感，让人不容易饿。原味花生、杏仁、核桃等各种坚果含有丰富的植物性蛋白质、健康的不饱和油脂及纤维，可提供饱腹感，延缓胃排空的速度。但坚果的油脂太多，每天只宜吃一汤匙的量，否则容易增肥。//提神零食：绿茶、黑巧克力//绿茶含有茶氨酸，这是一种有放松大脑功效的抗氧化剂，能让人迅速从紧张焦虑中解脱出来。绿茶中富含的咖啡碱能促使人体中枢神经兴奋，起到提神益智的效果，但不建议喝绿茶饮料。研究显示，黑巧克力能增加大脑供血，每天仅需吃9.3克黑巧力就能预防年龄增加导致的记忆衰退。此外，黑巧克力还能刺激大脑释放感觉良好的化学物——神经介质，让人注意力更集中。//除了以上的3类零食之外，很多办公族会经常觉得焦虑、压力大，这种时候，可以吃一些具有缓解焦虑和压力的食物。//5种食物缓解焦虑和压力//1、 香蕉。香蕉中含有一种称为生物碱的物质，可以振奋人的精神和提高信心。而且香蕉是色胺酸和维生素b6的来源，这些都可帮助大脑制造血清素。//2、  樱桃。樱桃被西方医生称为自然的阿斯匹林。因为樱桃中有一种叫做花青素的物质，能够制造快乐。密芝根大学的科学家认为，人们在心情不好的时候吃20颗樱桃比吃任何药物都有效。//3、  葡萄柚。葡萄柚里含高量的维生素c，不仅可以维持红细胞的浓度，增强身体的抵抗力，而且维生素c也可以抗压。最重要的是，在制造多巴胺、肾上腺素时，维生素c是重要成分之一。//4、  芹菜。压力影响睡眠，你会发现还没入睡多久就醒了，这是一种常见的高压症状。芹菜中的色氨酸有助于身体产生大脑血清素，对维持积极的情绪以及健康的睡眠是必不可少的。芹菜梗加上无糖花生酱可以帮助保证整晚的睡眠质量以及维持血糖水平在一常量。//5、  牛奶。钙是天然的神经系统稳定剂。人在受到某种压力时，通过小便排出体外的钙就会增加。因此，备战考生要注意选择含钙高的牛奶、酸奶、虾皮、蛋黄等食物，有安定情绪的效果。//来源：家庭医生在线//', 'http://images.meishij.net/p/20170105/fff26e589d9fb49e42bacc101f6aac61.jpg', 'http://images.meishij.net/p/20160912/f8e5eae8884ed7d84b727b7bd9f3f813_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (35, '橘子吃多变“小黄人”?', '2016-10-01', '原标题：橘子吃多变“小黄人”?关于食物“重口味”知识//作为“大吃货帝国”的一员，我们总能看到很多因为“吃”引发的新奇事儿。近日，一位爱吃橘子的女士就因为橘子吃太多而全身发黄。此外，有些人吃了红心火龙果后发现自己排泄物的颜色也变得红红的，还有些人吃了金针菇后发现它在自己体内转了一圈后原封不动地出现在了粪便里。那么，这些“怪事儿”后面的原因是什么?//橘子吃多了会变“小黄人”?//橘子吃多了变成“小黄人”，这是得了橘黄症。据范志红介绍，橘子里含有胡萝卜素，吃太多后人体摄取的胡萝卜素无法排出，都囤积在皮下脂肪中，因此皮肤会发黄。“理论上来说，吃太多含胡萝卜素的食品，如南瓜、胡萝卜、芒果和红心红薯等，人人都会有变黄的现象，因此在食用时应注意控制分量。橘黄症除了影响美观外，对人体健康并不会有什么危害，如果皮肤变黄，不吃肤色会慢慢恢复正常。”范志红说。//事实上，胡萝卜素对人体是有好处的，摄入正常分量的胡萝卜素后脸上会有红黄的表现，这种情况其实是正常的，范志红补充说。//吃了红心火龙果会“尿血”?//范志红表示，吃了红心火龙果后排泄物变红，其实是甜菜红素在“作祟”。不过，有人是尿液发红，而有的人是粪便发红，关于两者之间的差别，范志红解释说，一般情况下，通过粪便排出的是人体没有吸收的物质，通过尿液排出的是人体吸收了的物质，人体对甜菜红素的吸收率本就不高，没吸收的部分会通过粪便排出，吸收后没有代谢为其他物质的部分则会从尿液里排出。此外，范志红说，紫红色的花、红甜菜和红菜头等里也含甜菜红素，除甜菜红素外，会导致人的排泄物变色的物质还有叶绿素。//金针菇“See you tomorrow”的外号是怎么来的?//想必大家都知道金针菇的美名“See you  tomorrow”了，这个外号来源于它吃进去后还会被原封不动地被排出来的特性。范志红介绍，这是因为金针菇难以被人体消化。它的膳食纤维含量特别高，且纤维的筋的韧性比较强，不好嚼烂，进入人体后体积大，一般来说，体积大的纤维对肠道的促进效果较好，对人体有防便秘、促进肠胃蠕动、调节免疫等功效。//看了这些“重口味”的小知识，你知道该怎么科学地做一个“大吃货”了吗?//来源：人民网//', 'http://images.meishij.net/p/20161227/afd28dd57da935480e8e84abf0a6fe40.jpg', 'http://images.meishij.net/p/20160908/65b048d4a5bed7316af43f004da04a87_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (36, '3个步骤做出美味鱼香肉丝', '2018-11-01', '原标题：简单3个步骤 教你美味鱼香肉丝的家常做法//如何做一道超级好吃的鱼香肉丝?很多人去餐厅的时候，都会点一道鱼香肉丝做下饭菜。鱼香肉丝是常见的川菜，看起来似乎很复杂，但是做起来，可是又有成就感，又能享受到美味哦。//鱼香肉丝的来源//相传很久以前在四川有一户生意人家，他们家里的人很喜欢吃鱼，对调味也很讲究，所以他们在烧鱼的时候都要放一些葱、姜、蒜、酒、醋、酱油等去腥增味的调料。//有一次晚上这个家中的女主人在炒另一只菜的时候，她为了不使配料浪费，她把上次烧鱼时用剩的配料都放在这款菜中炒和，当时她还以为这款菜可能味不是很好吃，可能家中的男人回来后不好交待，她正在发呆之际，她的老公做生意回家了。这个老公不知是肚饥之故还是感觉这碗菜的特别，而他还没等开饭就用手抓起就往嘴中咽，还没等一分钟，他迫不及待地问老婆此菜是用何做的，她刚在结结巴巴时，她意外地发现其老公连连称赞其菜之味，她老公见她没回答，又问了一句“怎么好吃是用什么做得”，就这样老婆才一五一十地给他讲了一遍。而这款菜是用烧鱼的配料来炒和其它菜肴，才会其味无穷，所以取名为鱼香炒，而得此名。//后来这款菜经过了四川人若干年的改进，现已早早列入四川菜谱，如鱼香猪肝、鱼香肉丝、鱼香茄子和鱼香三丝等。如今因此菜风味独特，使各地的人们所欢迎而风靡全国。//鱼香肉丝的做法//准备食材//食材 里脊肉、木耳、冬笋//配料 泡椒、葱姜蒜、淀粉、盐、酱油、香醋、白糖、料酒//第一步 备菜//里脊肉横向切成片，再切成火柴棍大小的肉丝，调入半小勺盐和一小勺淀粉，搅拌均匀腌制片刻;冬笋和黑木耳切丝，过滚水烫熟备用;泡椒剁碎，姜蒜剁碎，葱切碎。//第二步 调鱼香汁//一汤匙酱油，一汤匙香醋，一汤匙料酒，一汤匙半白糖，两汤匙水淀粉，调成鱼香汁。//小贴士：酱油：香醋：酒：白糖：水淀粉=1：1：1：1.5：2//第三步 翻炒//大火将锅烧热，倒油，待油温烧到六成热下肉丝滑炒。//滑炒到肉丝变白，加入泡椒和姜蒜，翻炒约两分钟，炒出红油。//小贴士：葱姜蒜的比例为3：2：2，姜蒜要剁碎，同泡椒一起下锅炒到香酥，炒出辛香味，同时让人吃到嘴里后又不觉辛辣。//将笋丝、木耳丝放入翻炒几下，倒入鱼香汁和葱末，翻炒均匀即可出锅!//小贴士：葱要最后和鱼香汁一起入锅，这样更能激发出鱼香汁那微妙的“鱼味”。//如何炒出好吃的鱼香肉丝//要炒出滋味浓郁的鱼香肉丝来，泡红辣椒很关键。//玉兰片是用鲜嫩的冬笋或春笋，经加工而成的干制品，由于形状和色泽很像玉兰花的花瓣，故称“玉兰片”。在市场有售，选购时选择呈玉白色或奶白色者，笋节紧密，笋肉厚，无硫磺味的。//木耳中的胶质可把残留在人体消化系统内的灰尘、杂质吸附集中起来排出体外，从而起到清胃涤肠的作用。对胆结石、肾结石等内源性异物也有比较显著的化解功能。黑木耳能减少血液凝块，预防血栓等病的发生，有防治动脉粥样硬化和冠心病的作用。它含有抗肿瘤活性物质，能增强机体免疫力，经常食用可防癌抗癌。//干木耳烹调前宜用温水泡发，泡发后仍然紧缩在一起的部分不宜吃。鲜木耳含有毒素不可食用。黑木耳有活轿抗凝的作用，有出血性疾病的人不宜食用。孕妇不宜多吃。//怎么样，试试看为家人做一道好吃的鱼香肉丝吧。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161117/32152f03c42347b06467721ce9df5a02.jpg', 'http://images.meishij.net/p/20160907/969901f7cbc1159aa4652e2d63b73774_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (37, '不含糖的碳酸饮料照样致肥胖', '2018-04-01', '美国研究人员发现，长期饮用添加甜味剂的所谓“低糖”碳酸饮料不健康，导致肥胖症和糖尿病的可能性不亚于含糖饮料。//美国有线电视新闻网报道，分析过去5年相关研究后，美国珀杜大学研究人员发现，长期摄入人工合成的甜味剂可能造成人体血糖调节机能紊乱，更容易导致肥胖症和糖尿病。饮用含甜味剂的饮料时，人们虽然感觉到甜味，身体却没有得到含糖食物所带来的热量。长此以往，真正摄入含糖食物时，人体将不知如何应对，不会释放调节血糖和血压的荷尔蒙。这意味着，人们可能会持续感觉饥饿、渴望摄入更多甜食。另一方面，因为经常引发大脑“奖励中心”释放一种满足感，长期摄入甜味剂可能损坏这一机制。为得到同样的满足感，不得不摄入越来越多高热量、高甜度的食物。研究还发现，即使体重正常，长期饮用低糖饮料的人患糖尿病、心脏病和中风的风险仍然明显增高。这样的发现令研究人员颇为吃惊。“老实说，与普通碳酸饮料相比，我以为低糖饮料怎么也要健康一点点，结果却恰恰相反，”研究人员苏珊·斯威瑟斯说。美国饮料协会质疑这些结论的可信程度，发表声明说：“低热量甜味剂是当今食品产业经过最多研究和评估的成分，数十年科学研究和全球监管机构证实，它们是控制体重以及减肥的安全和有效工具。”【新华社微特稿】(袁原)//来源：新华社//', 'http://images.meishij.net/p/20161026/9e420c799ac84ea43a954f8a9553ae61.jpg', 'http://images.meishij.net/p/20160905/547729adf8ebe7f1b522f46f43f07bcf_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (38, '适合你的养生茶', '2018-04-20', '饮茶是中国自古就有的生活习惯与交际礼节，而养生茶与普通茶叶不同之处在于，更侧重于茶的养生保健功效。并且大部分养生茶，是以茶之形，发挥药之效。含茶或以中药，或者以药食同源的原料制成以养生保健为目的的茶，都统称为养生茶。养生茶将绿茶、淡竹叶、荷花精心配制在一起，其香高、味醇、色郁，饮后清香淡雅、清热解渴、怡心提神，是理想的天然养生保健饮品。//一、补血好气色：桂圆红枣茶//材料：红枣100克、桂圆50克。//制法：将所有的材料放入1000克的水中煮沸，熄火焖10分钟。//办公室制作秘籍：将所有的材料放入保温杯中，冲入1000克沸水焖20分钟。//功效：有养心安神、滋阴补血的功效。适合体弱多病、心悸失眠、面色无华的女性进补之用。//二、养颜补气润肌：红枣酒酿茶//喝红茶预防流感//冬天喝茶以红茶为上品。红茶甘温，可养人体阳气;红茶中含有丰富的蛋白质和糖，生热暖腹，能增强人体的抗寒能力，还可助消化、去油腻。在我国一些地方，也有将红茶加糖、奶、芝麻饮用的习惯，这样既能生热暖腹，又可增添营养、强身健体。//三、上火找绿茶帮忙//冬天气候干燥，加上人们喜欢吃油腻、辛辣的食物，上火就成了困扰许多人的健康问题，并带来便秘、口干舌燥甚至口舌生疮等后果，而这个时候就可以求助绿茶。绿茶是未发酵茶，性寒，可清热，因此最能去火、生津止渴、消食化痰，对轻度胃溃疡还有加速愈合的作用，并且能降血脂、预防血管硬化。因此容易上火的、平常爱抽烟喝酒的，还有体形较胖的人(一般是实热体质)，都比较适合饮用绿茶;而肠胃虚寒的人则不宜服用绿茶。//四、口干舌燥求助乌龙//乌龙茶属半发酵茶，介于绿、红茶之间，色泽青褐，因此又得名“青茶”。在味道上，乌龙茶既有绿茶的清香和天然花香，又有红茶醇厚的滋味，不寒不热，温热适中，因此有润肤、润喉、生津、清除体内积热的作用，可以让机体适应自然环境的变化。而冬天里室内大多空气干燥，人们容易口干舌燥、嘴唇干裂，这时泡上一杯乌龙茶，可以缓解干燥的苦恼。此外，乌龙茶对蛋白质及脂肪有较好的分解作用，能防止肝脏脂肪堆积，对于怕冬季里贴膘的人来说，青茶也有一定的减肥功效。//五、抑郁不妨品花茶//花茶包括茉莉花茶、玉兰花茶、桂花茶、玫瑰花茶等，是以绿茶为茶坯加入不同香花熏制而成的。一般来说，花茶可以养肝利胆、强健四肢、疏通经脉。以茉莉花茶为例，可以清热解暑、健脾安神，对治疗痢疾和防止胃痛有良好效果。而金银花茶则可以清热解毒、提神解渴，并对咽喉肿痛等有较为理想的疗效，对预防流感效果亦佳。因此在冬季不妨适当选择，尤其是女性在更年期及经期前后容易心情抑郁，性情烦燥，不妨用喝花茶的方法来消解郁闷。//抑制忧郁桂花茶//中医认为，桂花有很好的药用价值。古人说桂为百药之长，所以用桂花酿制的酒能达到“饮之寿千岁”的功效。桂花性温、味辛，入肺、大肠经，煎汤、泡茶或浸酒内服，有温中散寒、暖胃止痛、化痰散淤的作用，对食欲不振、痰饮咳喘、痔疮、痢疾、经闭腹痛有一定疗效。很多胃病患者到了冬季就会出现冷痛的感觉，这个时候喝点桂花茶，就能够很好的缓解症状。//做法：秋季在桂花含苞未采收花朵，将花朵洗干净后阴干，然后密封保存。可加入茶叶中泡茶饮用，饮用时，大约使用七到十个花朵，再加入适量的红茶、红糖后，以热开水冲泡即可。//补气提神：参枣茶。材料：红枣5颗;西洋参1钱。制法：将红枣放入350克沸水中小火煮3分钟。参片放入杯中，注入红枣水，盖盖焖10分钟。办公室制作秘籍：将所有的材料放入保温杯中，冲入350克沸水焖20分钟。功效：能补助气分，并能补益血分。清热生津。用于气虚阴亏，内热。//改善痛经不适：益母草红糖茶。材料：益母草1钱;香附子1钱;红糖适量。制法：将益母草和香附子放入500克沸水中，小火煮5分钟，适量加红糖。办公室制作秘籍：将所有的材料放入保温杯中，冲入500克沸水焖30分钟。功效：具有活血、法瘀、调经、消水的功效。益母草可促进局部血流微循环障碍的很快恢复。//薄荷甘草茶//功效：解热祛燥、清凉解毒，有预防感冒的奇效。成分：鲜薄荷叶10余片，甘草5克，绿茶5克，太子参10克，做法：用500毫克开水，冲泡10分钟后，滤去渣滓，加入适量白糖，调匀饮服，早晚各一次。//来源：正佳养生网//', 'http://images.meishij.net/p/20161019/2e90a02cb7ea8fee8152ae53526d4754.jpg', 'http://images.meishij.net/p/20160902/0788c62e32e72425f6ae23c89b27b9dd_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (39, '年末应酬多，喝酒前后饮食有讲究', '2018-04-26', '到了年末，不仅工作更加繁忙，各种应酬也多了起来，喝酒就是在所难免的，吃什么可以减少酒精对人体健康的危害呢?在这里，就来为大家介绍一下喝酒前后吃什么有好处，千万不要错过了。//喝酒前吃什么好//牛奶。喝酒前喝杯牛奶，不仅能养胃，还能形成保护膜，减少酒精对胃的伤害。//生黄豆。据说喝酒前吃点泡过的生黄豆能防醉。因为这些里面的蛋白质变性，可消耗酒精，减少酒精的损害。//淡盐水。喝酒前喝一些淡盐水，利尿，可以让酒尽快排出去。//面类食物。喝酒前应该让胃里有点东西可以消耗，这样才能避免酒精对胃的直接伤害。喝酒前吃面包、馒头，不会那么免容易醉。//蜂蜜。蜂蜜中含有一种特殊的成分，可以促进酒精的分解吸收，减轻头痛症状，尤其是红酒引起的头痛。//葡萄。葡萄中含有丰富的酒石酸，能与酒中的乙醇相互作用形成酯类物质，达到解酒目的。如果在饮酒前吃，还能预防醉酒。//喝酒时不能吃什么菜//肘子、猪蹄、肉皮冻等含胶原蛋白多的食物。胶原蛋白含量高的食物会在胃肠中形成保护膜，大大减缓酒精的吸收速度，还能保护肝脏。同时，这类食物也含有一定油脂，酒精难溶于油脂，因此人体对酒精的吸收速度会减缓许多。//海带、木耳、大白菜等膳食纤维高的菜。膳食纤维可减缓或减少酒精的吸收，起到保护肝脏的作用。凉拌海带丝、洋葱拌木耳等都是既护肝又美味的选择。//粗粮薯类。这类食物中含有丰富的碳水化合物，碳水化合物和酒精结合，会减缓肠胃对酒精的吸收。其次，这类食物中B族维生素的含量也相当丰富，能弥补大量饮酒对维生素B1的损失。因此，炒土豆丝、杂粮外婆菜等都是不错的选择。//富含蛋白质的菜肴，如肉蛋及大豆制品等。这些食物含大量蛋氨酸和胆碱，对肝脏有保护作用。因此，吃这些食品等于服了保肝药。喝的酒越多、度数越高，越要吃蛋白质丰富的菜。如家常豆腐、水煮花生米等。//最后，再来了解了解酒后吃什么好吧。//喝酒后吃什么最有益//香蕉治酒后心悸、胸闷。酒后吃1—3根香蕉，能增加血糖浓度，降低酒精在血液中的比例，达到解酒目的。同时，它还能减轻心悸症状、消除胸口郁闷。//西红柿汁治酒后头晕。西红柿汁也富含特殊果糖，能帮助促进酒精分解，一次饮用300毫升以上，能使酒后头晕感逐渐消失。实验证明，喝西红柿汁比生吃西红柿的解酒效果更好。饮用前若加入少量食盐，还有助于稳定情绪。//橄榄治酒后厌食。橄榄自古以来就是醒酒、清胃热、促食欲的良药，既可直接食用，也可加冰糖炖服。//西瓜汁治酒后全身发热。西瓜具可以清热去火，能加速酒精从尿液中排出。//柚子消除口中酒气。实验发现，柚肉蘸白糖吃，对消除酒后口腔中的酒气有很大帮助。//芹菜汁治酒后胃肠不适、颜面发红。这是因为芹菜中含有丰富的B族维生素，能分解酒精。//酸奶治酒后烦躁。酸奶能保护胃黏膜、延缓酒精吸收，其中钙含量丰富，对缓解酒后烦躁尤其有效。//蜂蜜水治酒后头痛。蜂蜜中含有一种特殊的果糖，可以促进酒精的分解吸收，减轻头痛症状，尤其是红酒引起的头痛。另外，蜂蜜还有催眠作用，能使人很快入睡，第二天起床后也不会头痛。//新鲜葡萄治酒后反胃、恶心。葡萄中含有丰富的酒石酸，能与酒中乙醇相互作用形成酯类物质，达到解酒目的。如果在饮酒前吃，还能有效预防醉酒。//虽然以上食物可以减少酒精对我们的伤害，但是还是不宜过量饮酒哦。//来源：家庭医生在线//', 'http://images.meishij.net/p/20170122/e13b35b2ac9fd583d3c4ea377b7b1f5e.jpg', 'http://images.meishij.net/p/20160831/55300ccc07340ef4d485ef2441b5ba70_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (40, '辟谣：蘑菇茄子同食会中毒？', '2018-04-20', '原标题：蘑菇和茄子一起吃会中毒?专家：不相克还会相互促进//“最近雨水多，蘑菇上市!但菌类不能和茄子一起吃，各位知道了吗?蘑菇可以和小白菜一起炒，但不能和茄子一起吃，会中毒;在水焯蘑菇的时候放大蒜，如果大蒜变色了，就有毒，不可食用。且蘑菇和小米、大黄米最好不要同吃，会产生一种毒素，医院治不好，后果很严重。望大家相互转告!”//这样一条信息传播后，让市民王先生感到惊诧!这种说法是否靠谱?//昨日，沈阳市健康教育中心营养专家李楠表示，蘑菇和茄子、小米、大黄米等同吃会导致中毒的说法完全缺乏科学依据。//如果误食毒蘑菇后，是会出现中毒的症状，但平时菜市场上卖的蘑菇、香菇等都很安全，而且所谓大蒜验毒的说法也不靠谱，大蒜里的活性物质有一定的杀菌作用，但无法验毒和解毒!//李楠说，上述说法是典型的饮食误区，蘑菇的主要营养成分是蛋白质、维生素和氨基酸，蘑菇的蛋白质含量高于其他蔬菜，氨基酸、维生素含量非常丰富，蘑菇中的多糖类是抑制肿瘤生长的物质。//李楠说，茄子作为蔬菜主要含有维生素和矿物质，茄子中铁含量较高，茄子与蘑菇同食还能促进人体对蘑菇中蛋白质的吸收，两者是相互促进的作用，完全不会产生毒素。//多一点提醒//吃蘑菇确实应谨慎，但用大蒜检验不靠谱//李楠介绍，大蒜变色是正常的氧化反应，大蒜发生氧化先产生蒜绿素，接着变成蒜黄素，两种物质都是可以食用的。吃蘑菇确实应该谨慎，但用大蒜检验蘑菇是否有毒太不靠谱。大黄米、小黄米都属于主食，属于碳水化合物中的一种，与蘑菇同食会达到蛋白互补的作用，利于蘑菇营养成分的吸收。//来源：华商晨报//', 'http://images.meishij.net/p/20161111/d9db1fb2402a6bc17d77a25de920e50a.jpg', 'http://images.meishij.net/p/20161221/ae782140bd8c12fe3a84f724393574ac_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (41, '哪些啤酒谣言还在飞?', '2018-06-01', '原标题：哪些啤酒谣言还在飞?权威专家为你解读啤酒真相//新华网北京1月17日电(胡可璐)“使用啤酒花浸膏的就是‘化学啤酒’，‘啤酒肚’是喝啤酒喝出来的，啤酒嘌呤含量高导致痛风”，曾经，你是否也对这样的流言深信不疑?在网络搜索“啤酒肚”、“痛风”、“啤酒花浸膏”等关键词，上述相关信息多达上百万个。多年来，这些关于啤酒的谣言与误解经久不衰，甚至愈演愈烈，让消费者无所适从，也使行业蒙受不白之冤。那么我们该如何正确认识啤酒与人体健康的关系呢?//1月17日，在食药监总局、国家网信办、质检总局、农业部等相关部门指导下，由新华网•中国食品辟谣联盟、中国酒业协会主办的“2017中国啤酒辟谣论坛”在北京举行，权威专家对相关啤酒谣言及认知误区逐一击破，并进行科学解读，还原真相。//网上流传的“化学啤酒”是怎么回事?//网络中充斥着大量帖文声称，“啤酒花浸膏是化学制剂，使用啤酒花浸膏的就是化学啤酒。”还有谣言称，“啤酒花浸膏是一种抑制啤酒微生物繁殖的化学物质，饮用将会有头晕、心悸等反应，对人体产生危害。”专家指出，有关“酒花浸膏不安全，会降低啤酒质量甚至不利健康”的说法是无稽之谈。//国家酿酒大师、中国食品发酵工业研究院副院长张五九表示，这是一种误解。“不明真相的人士将使用了二氧化碳酒花浸膏制造的啤酒误传为化学啤酒。”//张五九说，啤酒花是制造啤酒的必需原料之一，其主要是为啤酒提供苦味和酒花香味。产生苦味的物质来源酒花中的苦味酸。将酒花中的苦味酸提取出来，再用于啤酒制造，不但可以大大提高酒花的使用效率，也可以使苦味物质更纯。//“二氧化碳是一种在常温常压下为无色无毒的气体，是人体呼出气体的主要成分。二氧化碳在高压下可以变成界于气体和液体之间一种超临界流体，这种超临界流体具有液体的高溶解性，也同时具有气体的高扩散性。”张五九表示，因此使用超临界二氧化碳可以高效无污染的将酒花中的苦味物质提出来的，再用于啤酒制造，是一种先进的、合法的、无害的物理萃取技术，和化学制剂无关。//啤酒嘌呤高导致痛风?//在公众的普遍认知中，“喝啤酒导致痛风”是流传最广、最为普遍的一种说法。这种说法有科学依据吗?事实真相究竟如何?专家指出，啤酒嘌呤含量高导致痛风发病率高，这是不正确的说法。//痛风是一种现代社会常见的疾病，是尿酸结晶沉积于关节(关节腔滑液内尿酸钠结晶形成为特征)，软组织、骨骼、软骨和肾脏等处引起组织的异物炎症反应，临床表现为高尿酸症。//中国中医科学院基础理论研究所教授于智敏说，“高尿酸血症和痛风可分为原发性和继发性两类。约有  80%原发性高尿酸血症和痛风属于多基因遗传病，由嘌呤代谢有关的限速酶的基因变异，导致人体自身嘌呤代谢紊乱引起。而继发性高尿酸血症则是饮食、治疗导致的尿酸增多，或是肾脏疾病或某些药物所致尿酸排泄减少。”//于智敏表示，痛风与啤酒的关系要分成两部分来看，一是喝啤酒能不能导致痛风，二是痛风病人能不能喝啤酒，不能一概而论。痛风患者是嘌呤代谢失常，临床上要求禁用或慎用啤酒。而喝啤酒会不会导致痛风?导致痛风病的原因是非常多的，和啤酒并没有直接关联。对于那些嘌呤代谢失常的人，处在痛风病发作前期，过量饮酒导致人体酒精代谢失常，会诱发痛风。所以不恰当地、过量饮酒是主因。//中国疾病预防控制中心营养与健康所营养传播室主任刘爱玲说，研究表明，人体20%的嘌呤来自食物，高嘌呤食物(如海鲜、豆类、菌类等)的过量摄入会使血液中嘌呤含量增加，从而导致血尿酸增高。对于痛风病人，需要适当限制饮食中摄入的嘌呤含量。专家表示，每1kg食物嘌呤含量低于250mg的为低嘌呤食物，可照常食用，嘌呤含量250～1500mg的食物限制食用，高于1500mg的为高嘌呤食物，应避免食用。而研究发现国内常见啤酒中总嘌呤含量在38至151mg/L之间，平均总嘌呤含量为74.9mg/L。从医学角度出发，啤酒属于无限制食品。//“啤酒肚”是喝啤酒喝出来的?//日常生活中，人们常以“啤酒肚”来说明一个人的肥胖程度，那么啤酒肚是喝啤酒喝出来的吗?对此，张五九驳斥了这种说法。//张五九表示，“啤酒肚”是一个被广泛误解的词，其原本是形容肥胖的肚子就像刚喝过几瓶啤酒之后鼓起来的样子。然而现在经常被误解成“肥胖的肚子是由于喝啤酒引起”。究其本质而言，肥胖的肚子的主要成分是脂肪，是长期能量摄入过量而又没有及时消耗掉导致的结果，即使从来不喝啤酒的女性，如果长期能量摄入过量的话，同样会有啤酒肚。//张五九称，就啤酒本身而言，其能量并不高，其一是因为啤酒的水分含量超过90%，二是啤酒是谷物原料发酵而成，谷物在发酵过程中是放热的，因此从能量守恒的角度来说，啤酒中的内容物的能量低于制成他的谷物原料。//于智敏教授表示，任何过量饮食都会引起健康问题，导致量变到质变，要科学合理饮酒，树立正确的饮酒理念。//“导致肥胖有多种原因，一是饮食结构不合理，动物性食物吃的比较多，谷类食物、蔬菜水果相对较少，二是能量消耗少，体育锻炼少。”刘爱玲认为，我们喝啤酒大多是在在外就餐这种环境，可能酒喝的多一点，但更重要的吃得肉多，菜少，油腻，这些隐藏在啤酒后面的因素才是造成肥胖的主要原因。我们提倡适量饮酒，文明饮酒。”//“五位一体”击碎食品谣言//我国啤酒行业经过多年高速发展，行业集中度进一步提高，已进入寡头贴身肉搏阶段。但近年来受经济增速放缓、消费环境整体低迷等因素影响,啤酒产量增速不断下滑，2014年,中国啤酒产量首现负增长。//中国酒业协会常务副秘书长兼啤酒分会秘书长何勇表示，啤酒行业连续两年产销量出现下滑，其中有产品结构的市场适应性问题，也有季节性气候问题，同时与啤酒在消费者心目中形成的负面形象不无关系。啤酒行业的健康发展面临谣言和负面传言的困扰，不实谣言固然需要解读，而夸大传言也需要澄清。//“倡导理性饮酒是啤酒行业一直宣传贯彻的重要理念，推行理性饮酒也是企业社会责任的重要体现。”何勇表示。//对于谣言治理，在论坛上，国家食药监总局新闻宣传司司长颜江瑛认为，食品谣言不仅危害公众视听，还影响着产业发展、国家形象，治理食品谣言一定要下重拳，要激发多元社会力量共同参与，让政府部门、专业机构人士、相关企业、新闻媒体、公众形成合力，“五位一体”击碎食品谣言。//颜江瑛表示，网络已成为各类谣言的聚集地，国家食药监总局希望通过“中国食品辟谣联盟”这一平台，传播正确的食品安全知识，引导公众科学消费。//来源：新华网//', 'http://images.meishij.net/p/20170122/8a372f4ed27fc1e6ce6f38224249a5ce.jpg', 'http://images.meishij.net/p/20161219/2963f6c85b0bfff744f59b31073d944d_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (42, '秋天嘴唇干燥怎么办', '2019-02-12', '秋天干燥嘴唇干燥很容易脱皮，那秋天嘴唇干燥怎么办好呢?治疗秋天嘴唇干燥的方法有很多，下面让我们一起来详细了解一下秋天嘴唇干燥怎么办。//一、秋天嘴唇干燥怎么办//1、嘴唇干燥起皮的,在家的可以利用酸奶,或者酸奶跟柠檬汁调均匀使用效果会更好。把酸奶与柠檬汁搅拌均匀放入冰箱冰15分钟后,用棉棒均匀涂抹在嘴唇上,用一块大过嘴唇的保鲜膜盖住,15分钟之后拿下,用温水清洗嘴唇,再涂上润唇膏。干燥起皮的嘴唇就会恢复鲜嫩光泽了。//2、嘴唇干燥起皮稍严重者,记得不要用手去撕皮或者用牙齿直接咬破的,不小心会造成嘴唇出血造成新伤口,使嘴唇更受伤也更难好。如果看着起皮多而烦心的一定要撕掉的话,可以先用热毛巾将死皮软化后,再用棉棒清理,最后搽上润唇膏,效果会好很多。//3、嘴唇干燥起皮是因为气候空气干燥主要原因导致,居家的可以在晴天的时候用洒水、蒸发水分或使用加湿器等方法,提高室内的空气湿度,以保证皮肤能处于一个较为湿润的环境,避免因过度干燥产生的一系列皮肤问题。//4、皮肤嘴唇干燥者切勿情绪过激,秋季也是个烦躁的季节,但要懂得调节情绪。情绪过激,容易生气这些都会产生心火,灼烧津液,使自己口舌干燥。//5、皮肤干燥或者嘴唇干燥的人,更要及时补充水分。多喝水,补充流失水分。//6、在觉得唇部干燥时选择一些保湿度较高,如含有芦荟、维E成分的润唇产品涂抹。可有效地减轻嘴唇干燥,也是嘴唇干燥最简单的解决方法了。//7、平时喝水是很重要的,但仅是喝水还是不够的,在双休日,自己还是要给自己熬点汤和粥,这也是防燥的要点。  而且要少吃过油、过甜、过辣、过咸的东西;饮食以清淡为主;少喝甜味饮料。//8、秋季水果宜吃葡萄、梨等凉性的水果,适当补充水分。忌温性的荔枝、苹果等。//二、秋天嘴唇干燥吃什么水果好//1、甘蔗//归肺、胃经,味甘而性凉的青皮甘蔗,是清肺热的最佳水果之一。它具有丰富的糖分和水分外,还含有大量对人体新陈代谢非常有益的维生素物质。中医认为,甘蔗入肺、胃二经,具有清热、生津、下气、润燥、补肺益胃的特殊效果。甘蔗可治疗因热病引起的伤津,心烦口渴,反胃呕吐,肺燥引发的咳嗽气喘。另外,甘蔗还可以通便解结,饮其汁还可缓解酒精中毒。//2、苹果//苹果水分营养都丰富,是一种被大家称为天然美容水果。苹果中所含的大量水分和各种保湿因子对皮肤有保湿作用,维他命C能抑制皮肤中黑色素的沉着,常吃苹果可淡化面部雀斑及黄褐斑。//3、柑橘//柑橘类的好处非常的多,而且它的清新味道,就够除燥,有提神醒脑的作用了。橘子含有丰富的柠檬酸、维生素以及钙、磷、镁、钠等人体必需的元素。它具有生津止咳的作用,用于胃肠燥热之症;有润肺化痰的作用,适于肺热咳嗽之症。//4、猕猴桃//猕猴桃含有丰富的维他命C与维他命E,不但可以美白肌肤,还能提高肌肤的抗氧化能力,还有效增白皮肤,消除雀斑和暗疮的同时增强皮肤的抗衰老能力。//5、柿子//果味甘涩、性寒,入肺、脾、胃、大肠经,有很好的清热去燥、润肺化痰之效。//三、秋天嘴唇干燥吃什么好//1、蔬菜//白菜、生菜、萝卜、胡萝卜、藕、荸荠、香菇、蘑菇、木耳等。//2、水果//红枣、甘蔗、菠萝、柚子等。//3、粮谷类//尽量选择粗粮,如麦胚、米胚、荞麦、玉米等。//4、动物性食物//动物肝、肾、蛋黄、猪肉、鸡、鸭、鱼、虾及海产品等。//5、富含胶质的食物//猪蹄、蹄筋、海参、鸡皮、鱼皮、银耳等。//6、坚果类食物//葵花籽、核桃、莲子、花生、榛子、松子、腰果、杏仁、板栗等。//除饮食调节外,嘴唇上涂点食用油,效果强于润唇膏。//来源：养生之道网//', 'http://images.meishij.net/p/20161014/5ae8e96daa81f7e07eaf87b2642fd8df.jpg', 'http://images.meishij.net/p/20161215/f8f02278da13774b923ac151180857f4_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (44, '睡觉打鼾吃什么好？', '2019-02-13', '原标题：睡觉打鼾危害大 喝豆浆能治疗吗?//睡觉打鼾不仅危害自身的健康，还会打扰到其他人睡觉，这可怎么办呢?别担心，在我们的餐桌上有很多食物都可以帮你缓解这种症状，今天就来为你总结一下可以缓解打鼾症状的食物吧。//睡觉打鼾吃什么好//豆浆。对打鼾的人来说，豆浆是比牛奶更好的选择。因为牛奶等乳制品会在呼吸道内形成黏液，成为几种呼吸疾病的根源之一。过量饮用牛奶还会生痰，造成呼吸道充血堵塞。还有些人对乳糖有过敏反应，导致鼻腔肿胀，从而引发打鼾。//茶。茶有助于减少堵塞和痰液，从而减轻打鼾。用来泡茶的开水释放出蒸汽，能减轻吸气时的鼻塞。饮茶时，来自茶叶的水汽能舒缓发炎的鼻腔，稀释黏液，改善鼻腔引流。喝薄荷茶对防止打鼾的效果最好，因为薄荷是一种天然的减充血剂，能缓解鼻黏膜肿胀。//蜂蜜。睡觉前把蜂蜜搅拌在茶水中喝，有助放松喉咙，减轻充血肿胀，从而防止打鼾。蜂蜜同时具有抗菌和抗炎特性，能帮助减轻喉咙部位的堵塞充血。一项研究成果表明：蜂蜜有助于抵抗感染，舒缓发炎的黏膜，促进喉咙和上呼吸道的通畅。//姜黄。姜黄的抗炎特性对抵御炎症有益，特别是在防治打鼾方面。姜黄的活性成分(姜黄素)是一种具有强效消炎作用的抗氧化剂，它的副作用很小，能够安全、自然的缓解堵塞。姜黄在菜市场调料柜台和一般中药店都有卖，可以直接煮水喝，也能用来做菜熬粥。//鱼肉。把吃红肉的习惯转为吃鱼肉，能让人晚上睡个安稳的好觉，而且不打鼾。红肉中的饱和脂肪会刺激鼻腔，因为饱和脂肪会生成大量的花生四烯酸，这会进一步生成前列腺素，而前列腺素会导致喉咙和鼻窦组织肿胀。相比之下，食用来自于鱼肉和豆类的蛋白质不会增加前列腺素的含量，而且鱼肉中的脂肪酸有助于减轻炎症。//洋葱。虽然食用洋葱后的口气不好，但它却是克服打鼾的救星;因为洋葱具有抗炎特性，有助于清理鼻道，从而让更多的空气通过。//除此之外，还有食疗方也可以帮你缓解打鼾的症状。//睡觉打鼾的食疗方//当归和龙胆草：将当归跟龙胆草放在一起浸泡一个小时以上，快火烧开，慢火20分钟。然后倒出药水再用同样的方法熬第二遍。将两遍的药水混在一起分两次服用。睡前服用，连服三晚。//花椒：花椒要5-10粒，睡前用开水浸泡，等到开水完全凉透以后服下(不包括花椒)，连服5天。//枣仁：将枣仁炒熟，每晚睡觉前先洗脚，然后口嚼80-100粒，连续九天。//葱白：选取三个葱白，每9厘米算一个单位，每晚睡觉前嚼咽，连续七天。//花椒泡水：花椒5～10粒，每晚睡前用开水泡一杯水，待水凉透后服下(花椒不服下)，连服5天。//睡觉打鼾，不如就试试以上方法吧。//来源：家庭医生在线//', 'http://images.meishij.net/p/20170112/1ad9fa73e229b80ba8956f3b83052431.jpg', 'http://images.meishij.net/p/20161212/70e8fbf7e4e9f18b9bc6d181b84722d9_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (45, '2016年水果谣言大盘点', '2019-02-17', '原标题：无籽水果最受伤 背上避孕药“黑锅”//“草莓打膨大剂可致癌”、“无籽葡萄用避孕药培育”、“猕猴桃涂抹防腐剂138天不烂”……每逢时令水果上市必遭谣言侵袭，且年年旧饭重炒、花样翻新。新京报记者梳理2016年水果六大谣言发现，其传播机制与消费者对农药、添加剂的错误认知有关，而互联网已成谣言的重要传播渠道之一。//水果谣言多因消费者对水果农药、添加剂等认知不足而妖魔化导致。//近年来，每逢时令水果上市都会迎来谣言侵袭。根据腾讯官方账号“谣言过滤器”公布的数据，在2016年1-11月朋友圈谣言中，有21%与食品安全相关。其中，无核水果使用避孕药培育、吃草莓可导致癌症等水果内容，成为朋友圈转发最多的食品谣言之一。//新京报记者梳理发现，谣言高发期与水果成熟上市周期相一致，如历年8月葡萄成熟上市前后，便会密集出现“无籽水果用避孕药培育”等谣言;在10月柿子与螃蟹陆续开采捕捞时，便会爆发“柿子螃蟹相克”等说法……//事实上，这些谣言多是因为消费者对水果所使用的农药、添加剂等比较陌生，在简单对号入座后便将其妖魔化。//TOP 1//多种无籽水果用避孕药培育?//谣言：无籽水果中含有大量激素，因使用避孕药处理达到无籽效果。此外，“顶花带刺”的黄瓜也用避孕药处理来保持新鲜，经常食用对人体有害。//百度搜索：204万条相关内容//传播高峰：每年8月前后，葡萄等水果上市高峰期//真相//在所有水果谣言中，避孕药是跨界幅度最大的添加剂，葡萄、西瓜、黄瓜等常见果蔬悉数中招。但实际上，无籽水果中大部分为天然无籽品种，而另一部分则是通过人工杂交培育、使用合法植物生长调节剂等进行无核化处理。//新京报记者查询发现，无籽水果主要包含西瓜、葡萄、柑橘等品类。其中，无籽西瓜主要通过人工杂交培育，使种子无法正常受精发育，最终形成无籽果实。无籽柑橘则是将自然形成的无核柑橘所在枝条进行嫁接进行繁育产出。//而在无籽葡萄中，8612、夏黑等品种是因为本身变异导致种子停止发育，在果实膨大后便形成了无籽。国内栽培最为广泛的“巨峰”葡萄则是在生长初期利用一定浓度的植物生长调节剂抑制种子发育促进果肉膨大，实现较高的无核率。//“顶花带刺”黄瓜则是在黄瓜开花前用生长调节剂浸泡花骨朵，影响其正常开花，起到成果后仍然带花的效果，同时增加结果率和产量，这种方式在山东等主要蔬菜产区较为普及。//目前，国内登记批准使用的植物生长调节剂共有38种，主要在瓜果、蔬菜、棉花、小麦等多种作物上使用，如防落素用于番茄保花保果，赤霉素则用于水稻、葡萄制种栽培，缩节胺用于抑制棉花徒长等。//国际食品法典委员会高级专家乔雄梧介绍说，使用植物生长调节剂的农产品是安全的，从未出现残留超标的现象，这是因为大多数植物生长调节剂在使用后3-10天内可以完全降解。另外，国内在植物生长调节剂登记评价时，已经设定了100倍以上的安全系数，即便农民在种植时超规、超量使用也在安全系数控制范围内，远达不到有害剂量。//TOP 2//柿子不能与N种食物同吃?//谣言：柿子与螃蟹同食可引发中毒，严重者可致命。//百度搜索：200万条相关内容//传播高峰：每年10月前后，柿子、大闸蟹上市期间//真相//最早的“柿蟹相克”之说起源于东晋，至今已有1600多年历史。如今，柿子成为食用禁忌最多的水果，如“柿子不能与螃蟹同食”、“柿子不能与白酒同食”、“柿子不能与红薯同食”等。//事实上，柿子与其他食物相克没有足够的科学依据支撑。北京中医药大学教授林殷曾对“螃蟹柿子相克”进行过研究，从现代医学角度分析，属于典型的急性胃肠炎和食物中毒反应，且以下消化道反应即腹痛腹泻为主症，符合细菌性食物中毒和痢疾感染的特点，并非食物相克引发。//林殷还表示，柿子中富含大量果胶、鞣酸(单宁)，在空腹大量进食后会在胃酸作用和胃肌机械辗转下产生凝块滞留胃中，形成植物性胃石，临床可见上腹部疼痛、恶心呕吐或少量咖啡色血性物，常并发胃溃疡、幽门梗阻，少见腹痛腹泻。而胃内强酸环境是胃石发生的基础，高蛋白饮食只是其促发条件之一。//事实上，要在生活中避免买到鞣酸含量较多的柿子，可以在挑选时留意。根据陕西林科所的检测结果，6月中旬采摘的柿子单宁含量为4.09%，到10月中旬其含量已经降到了0.26%，也就是说食用成熟柿子不用担心这些问题。//TOP 3//杨梅盐水泡出小白虫会致病?//谣言：杨梅、樱桃等水果在浸泡盐水后会爬出大量白色小虫子，可致病，千万不要吃。//百度搜索：171万条相关内容//传播高峰：5月中下旬到6月，樱桃、杨梅等水果成熟前后//真相//樱桃和杨梅是最常受病虫害侵袭的农产品。果蝇在果实表面产卵后，幼虫会在果肉内孵化，而上市后用盐水等浸泡便可爬出，这在不少消费者看来成为“水果泡出蛆虫”的证据，引发不少担忧。//重庆市农科院果树研究所专家王进介绍，樱桃从开花到成熟的两个多月时间里，果香味常常引来果蝇产卵“抢食”，在表皮留下小孔，若不仔细查看很难发现。果蝇一般在樱桃快成熟时将卵产到果肉内，经过几天孵化就变成了肉眼能看到的小白虫，随后长大就羽化成果蝇。//浙江大学农学院应用昆虫学研究所施祖华教授告诉新京报记者，果蝇虫害在南方杨梅产区比较普遍。杨梅进入成熟期后果实变软，会吸引果蝇在表面产卵，采摘后搁置一天左右便会生虫。北方的樱桃、苹果如个别不新鲜、散发出发酵味，也会吸引果蝇，但对人体并无危害。//据专家介绍，目前对于果蝇虫害并没有太好的解决办法，主要依靠物理套袋和喷洒农药进行控制，若果蝇已将卵产在果实内，则很难处理。尽管盐水泡出白色幼虫给消费者的感官冲击较大，但实际上果蝇不会携带病菌，其幼虫更是从出生到成长都处在无污染环境中，富含高蛋白、高营养。//TOP 4//草莓打膨大剂可致癌?//谣言：个头大、形状奇怪的草莓都用了膨大剂，会在人体内积累并致癌。//百度搜索：137万条相关内容//传播高峰：4月前后，草莓成熟上市之季//真相//草莓是一种营养价值较高的水果，但历年上市前后关于“激素草莓”、“膨大剂草莓”致癌的说法便在网上盛行，其中对个头较大、外观均匀的空心草莓质疑最多。//科信食品与营养信息交流中心业务部主任、中国食品辟谣联盟专家团成员阮光锋介绍，草莓的个头与很多因素相关，如通过杂交选育、疏花疏果都能得到果实更大的草莓。而某些异常大的草莓确实存在使用膨大剂的可能，但并没有“致癌”那么恐怖。//事实上，膨大剂作为一种植物生长调节剂，学名为氯吡脲(CPPU)，20世纪80年代首先由日本发现，之后引入中国，在国际上广泛使用。其能促使植物细胞加倍分泌细胞分裂素，增加单位时间内植物细胞分裂的次数，同时还能促使生长素的分泌，使细胞长得更大。//记者查询发现，氯吡脲属于农业部登记批准使用的农药品种，可应用于黄瓜、葡萄、猕猴桃、甜瓜、西瓜等作物，最大残留限量值在0.05mg/kg-0.1mg/kg之间。而专门登记在草莓品类的植物生长调节剂为芸苔素内酯，是一种新型的植物内源激素，具有促进作物生长、增加作物产量等作用。//2001年，新疆石河子大学曾专门对草莓膨大剂进行实地研究，结果显示其能够明显增加草莓坐果率和果实重量，但对草莓果实的味道也会带来影响。不同浓度的膨大剂会提高或降低草莓的总酸含量，这就意味着草莓果实口感要么偏酸，要么淡而无味。因此，要在植株健壮和肥水充足的条件下均匀施用才能获得最佳效果，否则容易产生畸形果降低商品价值。//TOP 5//荔枝泡药水引发手足口病?//谣言：荔枝几乎都是用药水浸泡的，具有弱腐蚀性，吃完后会引起孩子发烧，还可能引发手足口病。//百度搜索：135万条相关内容//传播高峰：6月初，荔枝大量上市之际//真相//作为保质期最短的季节性水果之一，荔枝一直有着“一日色变、二日香变、三日味变”的说法，因此不少商家在采摘后会对其进行一系列保鲜处理。这种方式由于信息不对称等因素，在消费者中被演变成“荔枝泡药水可致病”的谣言广泛传播。//事实上，手足口病的主要传播途径是通过呼吸道飞沫或口腔分泌物，吃荔枝并不会引发或传播这种疾病。至于“荔枝泡药水”，目前上游荔枝产地及流通环节中，较常采用的是柠檬酸加食盐兑水浸泡的方式，可将荔枝保质期延长至7-15天，以保证其从产地到运输过程中的品质。//国家荔枝龙眼产业技术体系首席科学家陈厚彬介绍说，荔枝在一年气温最高、湿度最大的季节成熟，其植物呼吸强度非常大，尤其是在被外壳封闭的状态下，果肉中的糖分会很快分解，导致贮藏时间变短、变味。此外，荔枝外壳也容易附着一些田间微生物、真菌和多酚氧化酶等，在炎热天气会氧化果皮中的一些无色物质，导致其变色。因此，柠檬+食盐混合冰水浸泡的方式能降低荔枝外壳表面的真菌，并让果皮处于微酸环境中，延缓其变色。//此外，荔枝采摘后也有采用漂白粉和二氧化硫气体熏蒸的方式来保色保鲜，在国际上应用也比较普遍，如泰国、澳大利亚等进口荔枝也大多利用硫进行处理。目前国内对于食物中二氧化硫的残留量标准为≤30mg/KG。//实际上，柠檬酸+冰盐水的保鲜手段较为“绿色”。根据国标《食品添加剂使用标准》(GB2760-2014)规定，柠檬酸属于“可在各类食品加工过程中使用，残留量不需要限定的加工助剂”。//需要注意的是，二氧化硫在用于经表面处理的鲜水果时，其最大使用量为50mg/kg，但部分商贩在进行熏蒸保鲜处理时难以把控使用量。过量处理后的荔枝果皮颜色会被漂白，果肉也会由原来的晶莹透明变成近似白色，有些还会闻到明显的硫味，消费者对这类荔枝需谨慎购买。//TOP 6//猕猴桃涂抹防腐剂138天不烂?//谣言：苏州消费者购买猕猴桃后存放138天未变质，实为被商家涂抹防腐剂，可保证3个月不坏。//百度搜索：43万条相关内容//传播高峰：9月下旬，猕猴桃上市之际//真相//近期有苏州消费者反映，其购买的猕猴桃在家中存放138天后仍未变质，这则消息在网上被二次加工后，变成了“猕猴桃添加防腐剂三月不烂”的谣言，再次引发消费者对猕猴桃的担忧。//事实上，猕猴桃在常温下虽然有“七天软，十天烂，半个月就坏一半”的说法，但如果采摘下来的猕猴桃很硬，没有机械伤及乙烯刺激，加上温度不是很高，就可能出现长时间不成熟且不腐败的“长寿”猕猴桃。//中国农业大学食品科学与营养工程学院教授冯双庆表示，猕猴桃在0℃冷藏的条件下可以放置6到8个月不变质，不用添加防腐剂。对于长时间室温下不腐烂的猕猴桃，冯双庆推测有可能是在采摘后进行了特殊保鲜处理，如利用1-甲基环丙烯果蔬贮藏保鲜技术，可以抑制猕猴桃释放乙烯，使其长时间保存。这种保鲜方式安全可靠，对人体没有害处。//对于传言中的保鲜“神药”，2002年，西北农林科技大学食品科学与工程学院的专家针对市面上在售的猕猴桃保鲜剂进行了贮藏实验，结果显示其在储藏160天后，硬度由最初的80kg/cm2，下降了59kg/cm2-64kg/cm2，在延缓果实软化方面能够起到良好效果。另一方面，使用保鲜剂并不能对猕猴桃的VC、可溶性固体物、酸含量保持更良好的效果，因此专家建议从经济成本考虑可以不使用保鲜剂。采写/新京报记者  李栋//来源： 新京报//', 'http://images.meishij.net/p/20161221/a46410ea78dfa0c7e61b840b34fc5d16.jpg', 'http://images.meishij.net/p/20161208/1921dd2877270c8982424a9e51bc98d8_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (46, '腌制食品有毒说法不科学', '2019-02-20', '原标题：何计国：“腌制食品有毒”说法不科学//腌制过程就是以食盐为主，并添加(亚)硝酸钠(或钾)、蔗糖和香料等的腌制材料处理食品。通过腌制使食盐或食糖渗入食品组织中，降低它们的水分活度，提高它们的渗透压，借以有选择地控制微生物的活动和发酵，抑制腐败菌的生长，从而防止食品腐败变质。//所谓腌制食品会致癌这一说法，从科学角度来说是根本站不住脚跟的。“所有的腌制食品都含有有毒物质，但不能说所有腌制食品都有毒。有没有毒是看食物所含有毒成分是不是达到了一个量，达到产生毒性作用的那个量之后才能说它有毒。”中国农业大学食品学院营养与食品安全系主任何计国说，“我们吃了几百年的腌制食品，突然说它有毒是不合适的，况且腌制食品里的有些物质本身是杀毒的。”//何计国进一步解释说，“亚硝酸盐是一种强氧化剂，一般不会危害人体健康，也不致癌。大多数的亚硝酸盐在人体内以‘过客’的形式随尿排出，只在特定条件(适宜的PH，微生物作用)下，亚硝酸盐与胺类物质反应，才转化为致癌物——亚硝胺。”而我们平时所使用的化妆品、食用的香烟、啤酒等里面就含有一定的亚硝胺，平时应多加注意。//腌制约一个月亚硝酸盐基本消失。腌制食品的周期一般有两种，一种是暴腌制，就是腌制完之后可以立即食用;另一种是较长时间的腌制，这种情况下，腌制品在被腌制的4天～8天内亚硝酸盐含量最高，第9天后开始下降，一个月左右就基本消失了，这个时候可以开始吃了。//不过，何计国提醒，过量摄入亚硝酸盐就会使人中毒。“就像一氧化碳中毒一样，它会致使体内的二价铁变为三价铁，使血红蛋白失去带氧功能，一般人体摄入200毫克就会产生中毒现象，达到一定量(0.3克~0.5克)会引起中毒，甚至引起死亡(超过3克)。”(庞倩影  高秀婷)//来源：农民日报//', 'http://images.meishij.net/p/20161021/7bc5c70f2e15378ab7519fc77d6ce0b2.jpg', 'http://images.meishij.net/p/20161206/ae37c3542dcfbeae9f4c7fc711db7550_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (47, '辟谣：螃蟹注水，不为增重', '2017-10-18', '每年秋季，“商家给螃蟹打针注水”的视频就会在网上疯传，让吃货们很担心。网帖说，这是不法商贩为了提高螃蟹的活力，增加重量。有消费者表示，买螃蟹时看到过蟹壳上有针眼大小的小孔，怀疑就是商贩用针筒注水后留下的。//近期，杭州市市场监督管理局委托第三方检测机构做了一场模拟实验，给螃蟹注射自来水和生理盐水。//浙江公正检验中心工作人员事先准备了4只鲜活的大闸蟹，第一组实验对象是两只母蟹，注入的是自来水。工作人员用针筒抽取10毫升自来水，分别注入，其中母蟹一从背部注入，母蟹二从腹部注入。笔者看到，10毫升自来水并不能完全注入，至少有一半溢出。刚才还在奋力挣扎的螃蟹，注水后，几秒钟工夫就没了活力，明显“蔫”了。8分钟后，两只螃蟹一动不动，约15分钟后，彻底死亡。第二组实验用的是生理盐水。重复上述步骤，两只公蟹同样增重不明显，且在注水后丧失了动力，其中公蟹二一直在吐水沫。大约过了二十分钟，两只螃蟹相继死亡。//“注水螃蟹、针眼螃蟹，其实是流传多年的谣言。通过实验可以表明，注水并不能给螃蟹增加多少重量，而且注水后螃蟹的内分泌会失去平衡，过不了多久就会死亡。”杭州市市场监督管理局宣传与应急管理处处长蒋荣祥说。//市面上买到过带针眼的螃蟹，又是怎么回事呢?蒋荣祥介绍，这是因为螃蟹在捕捞、运输过程中相互挤压，蟹壳、蟹脚扎到其他螃蟹的身体，产生扎孔，看起来就像针眼一样。//而对于网上流传的商家用注射器往螃蟹体内注射液体的视频，蒋荣祥表示，这其实是一种烹饪手法，将作料提前注入螃蟹体内然后马上烹饪，并不是为了增重。//来源：钱江晚报//', 'http://images.meishij.net/p/20161010/2d993eba32dc38794ca97f157900d94f.jpg', 'http://images.meishij.net/p/20161205/b5d84c52df4220a0b6a16036df463e8f_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (48, '保温杯泡茶易致癌?', '2016-07-01', '原标题：保温杯泡茶易致癌?适合泡茶用3种杯子//随着天气越来越冷，有喝茶习惯的人们会用保温杯泡茶。保温杯虽然可以保温，但是泡茶却是有危害的，甚至会致癌。这并非危言耸听，下面就来看看究竟用什么杯子泡茶是最好的吧。//保温杯泡茶易致癌//如今的保温杯大部分都是利用密闭方式进行保温的，不管是什么品牌的保温杯，都不要用来长时间沏茶水，“茶叶本身的构造很特殊，一旦在密闭的情况下就很容易发酵，发酵之后的茶叶会产生对人体有害的物质。”//此外，如果用保温杯泡茶，只要不是长时间泡着，相对于其他杯子还是有些好处的，由于茶叶中富含丰富的蛋白质、脂肪、糖、维生素以及矿物质等多种营养成分，对大部分人来说是一种天然的保健饮料，只要不在保温杯里长时间泡，就可以喝得健健康康。而如果长时间泡，茶叶中的维生素C等营养物质就会被完全破坏，也会因为长时间在高温中浸泡降低了茶的保健功能。不仅是茶叶不能长时间泡在保温杯里，像汤、牛奶或者中药等等都不能呆在保温杯里太久。如果实在想用保温杯喝茶，那用茶壶冲泡好，等到茶水变温，再倒入保温杯里保温。//那么，要用那种杯子泡茶呢?//哪种杯子泡茶最好//陶土杯：最负盛名的紫砂壶是陶器的一种，成陶火温在1000~1200°C，质地密，既不渗漏，又有肉眼看不见的气孔，能吸附茶汁，蕴蓄茶味，且传热缓慢不致烫手，即使冷热骤变，也不致破裂;用紫砂壶泡茶，香味醇和保温性好无熟汤味，能保茶真髓，一般认为用来泡台湾的乌龙茶，铁观音等半发酵茶最能展现茶味特色。//瓷器杯：无吸水性，音清而韵长，瓷器以白为贵，约1300度C左右烧成，能反映出茶汤色泽，传热、保温性适中，对茶不会发生化学反应，泡茶能获得较好的色香味，且造型美观精巧，适合用来冲泡轻发酵、重香气，如文山包种茶。//玻璃杯：质地透明、传热快、不透气，以玻璃杯泡茶，茶叶在整个冲泡过程中的上下穿动、叶片逐渐舒展的情形以及吐露的茶汤颜色，均可一览无遗。玻璃茶具的缺点是容易破碎、较烫手，但价廉物美。用玻璃茶具冲泡龙井、碧螺春等绿茶，杯中轻雾飘渺，茶芽朵朵、亭亭玉立，或旗枪交错、上下浮沈，赏心悦目别有风趣。//由此看来，泡茶的杯子也是有讲究的哦。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161121/76c9541befaca97bb6b3914f7c60338c.jpg', 'http://images.meishij.net/p/20161129/69088c7e30cd2fa3b2fbce2e15f5c54b_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (49, '凉拌或油炸四季豆易中毒', '2018-12-01', '原标题：凉拌或油炸四季豆易中毒 教你4个烹饪小技巧//四季豆是我们餐桌上的常客，但因为食用四季豆中毒的新闻却时有发生。根据广东历年食源性疾病监测报告显示，1月份因四季豆引起的食物中毒，通常占该月份中毒总起数的50%以上。如何烹饪四季豆才安全呢?//警惕四季豆2种易中毒的吃法//四季豆又名菜豆、豆角、扁豆等，是全国普遍食用的蔬菜。四季豆中毒也是食物天然毒素中毒里较常见的情况。根据中毒实际调查，烹调不当是主要的诱因，多数为炒煮不够熟透所致。未煮熟的四季豆中含有皂素，皂素对消化道黏膜有强刺激性;另外，其中还可能含有植物血球凝集素和胰蛋白酶抑制物，均能引起食物中毒。//摄入未煮熟的四季豆，引起中毒的潜伏期为数10分钟，一般不超过5小时，主要为胃肠炎症状，如恶心、呕吐、腹痛和腹泻。呕吐少则数次，多则可达数十次。另有头晕、头痛、胸闷、出冷汗以及心慌，胃部有烧灼感，病程一般为数小时或1—2天。//专家提醒，四季豆不要用凉拌、油炸等方式来烹调。餐厅的干煸四季豆是最危险的，因为许多厨师为了节省时间，会采用高温短时油炸的方式来烹调。专家提醒大家，在餐厅吃到颜色鲜亮、翠绿，口感脆硬，甚至带有生味儿的四季豆都应该当心。//烹饪四季豆的4个小技巧//一般烹饪四季豆时，应先用水焯一下，再下锅炒，以四季豆颜色不再“翠绿”，转深色或微发黄为宜。挑选和烹饪四季豆时，需注意以下四点：//1、购买四季豆应挑选新鲜的，贮存时间越长，四季豆的皂甙等毒性含量越多;//2、下锅前要把四季豆两头摘掉，因为这些部位含毒素较多;//3、烹调时应减少凉拌、油炸等方式，尤其是干煸四季豆，高温短时油炸反而不易熟透;//4、若见四季豆颜色翠绿、口感脆硬，甚至带有生味儿就不应食用。//接下来，再和大家分享一道健康、安全的家常干煸四季豆的做法。//干煸四季豆的家常做法//【食材】四季豆、大蒜、盐、生抽、食用油//【做法】//1、 四季豆摘洗干净，放入开水里煮3分钟左右，捞出过冷水//2、 大蒜去皮拍碎//3、 热锅下油，加入蒜末小火煸炒出香味，然后加入四季豆//4、 用小火煸炒至四季豆两面金黄//5、 加入适量盐、酱油拌匀即可//来源：家庭医生在线//', 'http://images.meishij.net/p/20170111/d81b5cd1a96051dc6d8346ee7979d0bf.jpg', 'http://images.meishij.net/p/20161128/5d41ff055c0547d18f8723f5b65279fd_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (50, '四个喝豆浆误区不能犯', '2018-12-01', '原标题：豆浆泡咖啡有助减肥 四个喝豆浆误区不能犯//如果你是个爱美的女生，想要瘦瘦小肚子，如果有一种方法既不痛苦，又能瘦下来，那就称得上完美了!豆浆你肯定喝过，咖啡你也并不陌生;而这两者放在一起，你知道有什么功效吗?其实，在家想要轻松收腹，不妨试试自制一款豆浆咖啡，促进消化帮助收腹。让你告别“小腹婆”，做个辣女郎。//豆浆泡咖啡有助减肥//豆浆滋阴润燥，利水下气，养颜补虚。常饮豆浆可降低血压、血脂，优化血液循环。而咖啡的主要成分是咖啡因和可可碱，含有蛋白质、脂肪、粗纤维、蔗糖以及多种维生素和多种矿物质，有提神醒脑、利尿强心、促进消化的功效。两者合一的豆浆咖啡热量比较低，制作方法也简单，口感与味道还很独特，并且容易产生饱腹感，顶替高热量食物。//做法：首先用豆浆机打磨新鲜的黄豆，把新鲜豆浆煮开2~3分钟后打泡，然后用热豆浆作为冲咖啡的底，直接倒入咖啡粉，搅拌均匀即可。但是，要记得不要放糖哦，否则不能保证瘦身的效果了。平时喝咖啡时，也可以使用无糖或低糖豆浆，取代牛奶作为咖啡伴侣。//豆浆属于高纤维食物，能增强肠胃蠕动功能，使我们的小腹不再凸出。此外豆浆中还含有丰富的不饱和脂肪酸，能分解体内的胆固醇，促进脂质代谢。因此豆浆是促进肠胃排毒、降低血液中胆固醇含量的健康饮品。用豆浆搭配咖啡，不仅能帮助咖啡促进脂肪燃烧，更能减少咖啡因对肠胃和神经的刺激，起到平缓疏通的作用。对于总是有小肚子烦恼的美眉们来说，非常有效。//喝豆浆需注意四个误区//我们都知道，豆浆是含有蛋白质等丰富营养物质的饮品，能够改善骨骼代谢和预防骨质疏松，是中老年的最佳饮品，但是如果不正确的喝豆浆不但不会增加营养反而会适得其反。下面我们一起来看一下喝豆浆的四大误区：//1、空腹喝豆浆//许多人喜欢早餐先喝一杯豆浆，然后才开始吃早餐。其实这样是很不科学的。如果空腹饮豆浆，豆浆里的蛋白质大都会在人体内转化为热量而被消耗掉，营养就会大打折扣，因此，饮豆浆时最好吃些面包、馒头等淀粉类食品。另外，喝完豆浆后还应吃些水果，因为豆浆中含铁量高，配以水果可以促进人体对铁的吸收。//2、所有人都能喝豆浆//有些人认为豆浆营养丰富，男女老幼，人人都适宜。其实也不是，豆浆性平偏寒，因此常饮后有反胃、嗳气、腹泻、腹胀的人，以及夜间尿频、遗精的人，均不宜饮用豆浆。另外，豆浆中的嘌呤含量高，痛风病人也不宜饮用。//3、豆浆只需要加热//现在豆浆机那么方便，许多人喜欢自己动手做豆浆，但是豆浆不是只要加热就行的。喝了未煮熟的豆浆会中毒，因为生豆浆中含有皂素、胰蛋白酶抑制物等有害物质，未煮熟就饮用不仅会难以消化，而且还会出现恶心、呕吐和腹泻等中毒症状。//4、豆浆可以用保温瓶储存//相信大家都遇到过豆浆一次喝不完的情况，有些人会用保温瓶储存起来，其实这样也是不健康的。专家建议不要用保温瓶储存豆浆。因为豆浆装在保温瓶内，会使瓶里的细菌在温度适宜的条件下，将豆浆作为养料而大量繁殖，经过3~4小时就会让豆浆酸败变质。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161024/073a3f1c006a34faca3664efaeb648a4.jpg', 'http://images.meishij.net/p/20161122/fd5cbd59e8dcd65f7bba44e69019734d_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (51, '深秋十月饮食5原则', '2018-11-01', '原标题：深秋十月谨守饮食5原则 吃哪些食物最营养?//10月已经到了深秋，天气越来越冷，在这个时候要怎么吃呢?补充身体所需要的各种机能就要做好饮食的安排才行。在这里，为大家支支招，介绍一下要怎么吃可以保持身体健康吧。//深秋的饮食建议//甘淡滋润：秋季节气干燥，应当多进食些性滋润味甘淡的食品，如蜂蜜、芝麻、杏仁等。水果选梨、柿、柑橘、香蕉。蔬菜则可多食胡萝卜、冬瓜、银耳。还有食用菌类、海带、紫菜等。经科学加工，做出色、香、味俱全的美味佳。也肴可制成佐餐或饮料食用，如蜜煎银耳、各种新鲜果蔬汁液等。或加工制作成羹粉汤粥，如香菇豆腐汤、扁豆粥、藕粉羹等，既有营养，又能润燥。//平衡营养：营养学家指出，只有食物的多样化才能提供给人体全面的营养。秋季更应注意饮食中食物的多样性，营养的平衡，才能补充夏季因气候炎热、食欲下降而导致的营养不足，特别应多吃耐嚼、富于纤维的食物。//秋季的饮食养生原则应在平衡饮食五味的基础上，根据个体的具体情况，适当增加甘、淡、酸、滋润的食物的进食，但不可太过。进食时，应细嚼慢咽，既利于食物的充分消化和营养物质的完全吸收。//少辛增酸：所谓少辛，是指要少吃一些辛味的食物，这是因为肺属金，通气于秋，肺气盛于秋。少吃辛味，是要防肺气太盛。中医认为，金克木，即肺气太盛可损伤肝的功能，故在秋天要“增酸”，以增加肝脏的功能，抵御过剩肺气之侵入。根据中医营养学这一原则，在秋季这节气期间一定要少吃一些辛味的葱、姜、韭、蒜、椒等辛味之品，而要多吃一些酸味的水果和蔬菜。  此外还要谨记“秋瓜坏肚”。在夏季，西瓜是消暑佳品，但是立秋之后，不论是西瓜还是香瓜、菜瓜都不能多吃，否则会损伤脾胃的阳气。//应忌苦燥：苦性燥，苦燥之品易伤津耗气。《素问—五脏生成篇》中言：“多食苦，则皮槁而毛拔。”秋季燥邪当令，肺为娇脏，与秋季燥气相通，容易感受秋燥之邪。许多慢性呼吸系统疾病往往从秋季开始复发或逐渐加重。所以，秋令饮食养生应忌苦燥。//早上喝粥：秋季每天早晨吃粥，特别是喝些药粥对身体很有好处，其原因是作为药膳重要成分的粳米或糯米，均有极好的健脾胃、补中气的功能。在秋季，甘蔗粥、百合莲子粥、胡萝卜粥等都是不错的选择。//接下来，再来具体看看哪些食物时候在深秋吃吧。//深秋吃什么好//小白菜：补钙。小白菜又叫青菜、鸡毛菜，是蔬菜中含矿物质较丰富的一种，尤其钙元素，高达90毫克/100克，比大白菜高出近一倍。小白菜中还含有大量有助于钙吸收的矿物质元素和维生素K。另外，小白菜富含维生素B1、B6、泛酸等，具有缓解精神紧张的功能，多吃有助于保持平静的心态。需要指出的是，小白菜不可以生吃，用它制作菜肴时，炒、熬时间不宜过长，以免营养流失。//莲藕：维生素B1。从中医角度来讲，生藕性寒，有清热除烦的效果，煮熟后由凉变温，能养胃滋阴、健脾益气养血，尤其适合老幼妇孺、高热病人、高血压、食欲不振、缺铁性贫血者食用。但需要注意的是，鲜藕性偏凉，生吃较难消化，脾虚胃寒、易腹泻的人，最好煮熟了吃。//无论做汤、清炒还是凉拌，莲藕都是秋季养生食谱上大受欢迎的食材。其含有丰富的维生素B1，有助于缓解疲劳、促进新陈代谢和消化，还有美肤的作用。此外，莲藕还含有维生素C、钙、铁等无机盐，具有抗氧化作用的多酚类物质。//蘑菇：补钾。被冠以“山珍”美誉的蘑菇矿物质含量非常丰富，尤其富含钾。我们通常所说的“补钾明星”香蕉，钾含量为256毫克/100克，而常见菇类中钾的含量分别是：口蘑(白蘑)1655毫克/100克、蘑菇(鲜蘑)312毫克/100克、双孢蘑菇307毫克/100克，远超出了香蕉。钾可预防中风，并协助肌肉正常收缩，还有降低血压的作用。//此外，蘑菇中还含有丰富的膳食纤维，更难能可贵的是，蘑菇的口感嫩滑细腻，不像别的高纤维食物那么令人难以下咽。蘑菇吃法多样，比如炒、做汤和做馅等。//西兰花：胡萝卜素。作为公认的明星蔬菜，其营养成分不仅含量高，而且十分全面，尤其胡萝卜素含量更是遥遥领先，每100克中高达7210微克。胡萝卜素进入体内不但可以转化为维生素A，护眼明目，还具有抗氧化作用，对预防心血管疾病、肿瘤，以及延缓衰老和防癌都有重要意义。//此外，西兰花中钙、磷、铁、钾、锌、锰等含量都很丰富，比同属于十字花科的白菜花高出很多。而且，其维生素C含量高出番茄近3倍。研究表明，将西兰花隔水蒸5分钟后拌着吃，抗癌效果最好。//菠菜：叶酸。除了我们熟知的镁、铁、锌等矿物质外，菠菜中还含有丰富的叶酸，叶酸最重要的功能是制造红血球和白血球，增强免疫力。并且，它也是预防宝宝出生缺陷的一种重要营养素。菠菜还是叶黄素的最佳来源之一，而叶黄素对于预防眼睛衰老导致的“视网膜黄斑变性”十分有效。//由于叶酸是一种水溶性维生素，对热、光线均不稳定，因此菠菜最好现买现吃，贮存的时间尽量别超过2天。而且，要用蒸、旺火快炒、少量水煮等方式来烹制，避免烹煮过久、过烂，损失营养。//在深秋里，不如就从以上食物中选择适合自己的吧。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161008/caf12d87ae1df064587ccba4ab4c82d2.jpg', 'http://images.meishij.net/p/20161121/ddfa0fb88f5550ac45c93918c59911e5_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (52, '冬枣上市，如何鉴别“糖精枣”', '2018-12-01', '原标题：冬枣上市，传言跟着来 网传制作“糖精枣”的方法靠谱吗?//这个十一长假，水果摊上新上市的冬枣受到市民欢迎。然而，大家一边吃着香甜的冬枣，却又不断听到“糖精枣”的传言。//扬子晚报消费评审团栏目的记者特意从市场上买来冬枣，用网传制作“糖精枣”添加剂的糖精钠和甜蜜素进行实验，看看这“美容”过的冬枣究竟看相口感如何，消费者应该如何鉴别。//市民抱怨//我买到的冬枣 怎么会越吃越苦//“我买到的冬枣怎么都是全红的?”从淘宝店家拿到冬枣，消费者徐先生有些纳闷，因为他所收到的冬枣大部分都是全红的。他有点怀疑自己是不是收到了“催熟”的糖精枣。//徐先生说，收到枣子之后他和淘宝店家的客服取得了联系，对方信誓旦旦地说，枣子肯定是现摘的，但是当徐先生吃了几颗冬枣之后却更添怀疑，因为枣子看起来果皮缺少光泽，吃起来也是干巴巴的。//“我后来将自己的观感和冬枣的照片发到了留言栏，大家都赞同我的观点。”徐先生说，有的网友提出看见他的图片感觉这冬枣的红颜色有些不正常。//无独有偶，南京市民邹女士也告诉扬子晚报记者，她前两天也买了两斤冬枣，可是吃了五六个以后，就感觉枣不仅没有了刚入口时甜甜的口感，反而越吃越苦。当时她还只是觉得可能就是这枣口感不好，后来看朋友圈才知道有种“糖精枣”，回想起那种皮甜肉不甜的口感，她怀疑自己是不是也“中招了”。//实地探访//糖精钠价格高 甜蜜素反而卖得好//长虹路市场是南京调味品批发的集散地，在这里买糖精枣的主要原料“糖精钠”却并不容易。扬子晚报记者接着跑了好几家店铺，店里面却没有糖精钠在卖。一位老板询问记者用糖精钠做什么。记者表示想用来泡水果。老板笑着说，现在很少有人用“糖精钠”了，因为这种材料不仅价格高，而且泡的时候味道容易发苦，因此普遍都用甜蜜素来替代了。//在另外一家调味品摊位，上述老板的话得到了证实。在这里扬子晚报记者买到了500克的“糖精钠”售价是40元，而与之效果类似的1000克甜蜜素的售价却只有17元。这位老板表示，包装上面有具体的使用方法和用量可以照此操作。他再三嘱咐记者，用甜蜜素的效果应该比较好，性价比也高。//记者实验//网传的糖精枣究竟是咋样?扬子晚报记者买来了糖精钠和甜蜜素，于是记者便开始按照网上所传的“糖精枣”的制作秘方，对冬枣进行相关处理，探究区分“糖精枣”与正常枣的方法。//1 热水+糖精钠+冬枣=“糖精枣”?//实验材料：糖精钠、冬枣、沸水//实验过程：以冬枣为原料，进行热水烫、糖精钠溶液泡两道工序处理后，观察其品质变化情况。//实验结果：放入沸水中两分钟，冬枣的颜色开始趋红，呈现一种黄褐色;在浸泡了10个小时之后，呈现黄褐色的冬枣颜色并没有明显变化，不过表面因为经过沸水浸泡而有褶皱，而正常枣比较硬，表面光滑。//口感：热水浸泡后的“糖精枣”表皮变软，枣子的皮是甜的，摸起来有些黏，枣肉口味虽然是甜的，但却能吃出苦味。//结论：这种方式做“糖精枣”并不靠谱，表皮经沸水加温后，果肉不清脆，而且颜色也并不会明显变红。//2 热水+甜蜜素+冬枣=“甜蜜素枣”?//实验材料：甜蜜素、冬枣、沸水//实验过程：以冬枣为原料，进行热水烫、甜蜜素溶液泡两道工序处理后，观察其品质变化情况。//实验结果：在放入沸水中后的两分钟，冬枣的颜色也开始趋红，呈现一种黄褐色;在浸泡了10个小时之后，呈现黄褐色的冬枣和此前实验中的“糖精枣”颜色一样，并没有明显的变化，不过表面因为经过沸水浸泡而有褶皱，而正常枣比较硬，表面光滑。//口感：热水浸泡后的“甜蜜素枣”表皮变软，枣子的皮是甜的，摸起来有些黏，枣肉的甜吃起来有些腻。//结论：这种方式做“糖精枣”并不靠谱，表皮经沸水加温后，果肉不清脆，而且颜色也并不会明显变红。//3 冷水+糖精钠+浸泡=“红色糖精枣”//实验材料：冬枣、糖精钠、冷水//实验过程：以冬枣为原料，放入糖精钠，随后注入自来水(常温)，搅拌溶解后，将冬枣放入水中静置，观察枣皮表面颜色变化。//实验结果：和经过加温的冬枣相比，常温水状态下的冬枣刚开始的颜色并没有发生很快变化，然而5个小时之后，原先青色的枣子表皮出现了红色环状斑纹，红色有明显的分界线，而10小时过后，变成了红色冬枣。//口感：枣的表皮较甜，枣肉依旧清脆，但是枣子的清香不浓，糖精钠的甜味已经渗透到枣肉当中。//结论：这种方式真能做出“糖精枣”，不过枣子的口味会受影响，自然的清香会被人工甜味所掩盖。//■教你一招//泡过的冬枣，切开会有腐化痕迹//这3个实验证明，冬枣经过一定的处理确实可以变成有甜味的冬枣。由于糖精钠对人体健康有害无益，因此消费者在选购鲜枣的时候一定要注意。//糖精钠浸泡过的枣表面略软，而正常的枣则较为坚硬，切开后观察断层会发现，糖精枣的断层与果肉有浸泡腐化的痕迹，而正常枣则没有，这种现象在放置10个小时以上的糖精枣上更为明显。//此外，“自然发育”的冬枣并没有浸泡后明显的分界线，它的分界线边缘是不整齐的，仔细观察则是呈“斑”状分布。如何鉴别，建议首先要看颜色，“糖精枣”遍体暗红，色泽并不光亮，而天然枣色泽鲜亮，红得不均匀。其次用手摸，“糖精枣”表面发黏，用手捏会发软。最后可以用舌头舔，“糖精枣”的表皮很甜，甚至发苦。//■大众评审//流动摊贩的冬枣 最好不要买//水果店负责人王老板：其实枣农如果要制作大量的“糖精枣”，需要特殊的场地、设备和人力，这个成本会很高，而且我们在收货的时候也会进行检验。如果经销商在收枣后再拆箱、加工“糖精枣”，会增加无谓的成本，这也不大可能。我认为，从流通环节来看，最容易出现“糖精枣”的是早夜市小商贩，因为他们加工的量少且成本低，能让枣看上去更红更讨人喜欢，还能增加分量提高收入。//糖精钠泡枣属于滥用添加剂//大学食品系老师刘丽：网上很多文章提到糖精枣的时候，都会捎带着写出糖精钠的危害，这本身没错，但是不专业，因为光说成分不提剂量就有些吓人了。//首先，需要明确的是糖精钠和甜蜜素都是合法的食品添加剂，只是需要指出的是，这两种添加剂都不允许添加在水果当中，因为这样做如果要达到增甜的效果，很难对剂量的多少进行控制。//其次，糖精钠和甜蜜素的摄入量是有严格规定的，摄入多了对人体是有危险的。根据常识，加工后的“糖精枣”的糖精钠基本上都附着在枣的表面，其实经过清洗后所剩无几，还是建议消费者应该对买来的冬枣进行认真清洗。(扬子晚报全媒体记者 陈郁)//来源：扬子晚报//', 'http://images.meishij.net/p/20161008/242f608fc782327845378509ef46cd9a.jpg', 'http://images.meishij.net/p/20161117/9d7c72090cc8704a86db4f428cc6a157_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (53, '网传牛奶致癌是真是假？', '2018-11-01', '原标题：是牛奶还是谣言将人类送入癌症的坟墓//最近，微信朋友圈被一篇题为《牛奶将人类送入癌症的坟墓》的文章给刷屏了。让人心好累呀，前段时间谣言刚折腾完酸奶，又来折腾牛奶了。//牛奶里的IGF-1致癌吗//牛奶致癌的说法一直广为流传，其中一个说法就是，牛奶中的IGF-1可以刺激癌细胞活跃生长与繁殖，引发癌症。//其实，IGF-1的全称是“类胰岛素一号增长因子”，它是生物自身分泌的一种激素样蛋白质，对人体血糖控制、生长发育等方面有重要作用。//人体本身也含有IGF-1，一名成年人每日体内的生成量为一千万纳克。而市场上的牛奶中IGF-1含量约2.45纳克/毫升，远低于人体内的量。//我们自身生成那么多都没啥事儿，牛奶里面的IGF-1远低于我们自身生成的近千万倍，能有啥事儿?//关键是，目前科学界评估认为，没有证据说明IGF—1是致癌因素。//牛奶里的酪蛋白致癌吗//也有说法表示，是牛奶中的酪蛋白会致癌。//这个说法最早来源于美国康奈尔大学教授柯林·坎贝尔的一项“大鼠实验”，大鼠被给予致癌物黄曲霉素的同时，分别喂食大豆蛋白或酪蛋白(作为唯一的蛋白质来源)，结果显示吃酪蛋白的大鼠发生的肝癌数量较吃大豆蛋白的大鼠多。这个实验结果在流传过程中，不知为何黄曲霉素这一重大致癌物前提却被忽略了。//假如没有黄曲霉素这类致癌物，无论是酪蛋白还是大豆蛋白都不会引起大鼠发生癌症。所以，不能用这个动物实验来类推奶类的致癌效果。//人们膳食中的蛋白质是多种来源的，不可能只吃某一种蛋白。因此，这一实验既引申不出酪蛋白可以致癌的结论，实验结果也不适用于人。//事实上，牛奶中富含优质的钙质，而且很容易消化吸收，对于消费者来说，每天食用一杯牛奶对于满足人体钙的需求还是有好处的。文/陈君石//(中国工程院院士，国家食品安全风险评估中心研究员)//牛奶致癌?小心陶弘景、李时珍翻脸//早在《牛奶将人类送入人类的坟墓》这篇谣言文还没有被疯狂转发之前，台湾假博士林光常就曾说过：“牛奶是给牛喝的，中国人从来不喝牛奶。”那是在2007年，本版当时就邀请了中医养生泰斗翁维健教授进行批驳。//一千多年前的中医记录//1500多年前，在南北朝的梁代，有一医家叫陶弘景，他在《本草经集著》中阐述了奶的性能和概念。//陶弘景观察了牛奶对人的影响，不管是保健、养生、治疗还是康复，他都做了详细的记载，比如说牛奶味甘、性平和，适合任何人。体质热的、偏凉的，男女老少都可以喝。//一千多年以来，我们的医家不断完善着对牛奶的理解、分析。我们的祖先从临床医疗中发现，牛奶可以辅助治疗疾病，//可以润肺，适用于肺系统有毛病的人，包括肺结核、肺痨、咳嗽等等;牛奶还可以养胃，胃燥、胃寒、胃热都可以喝牛奶。此外，牛奶还有排毒、解毒的作用，可以补泄同用。古代还用它来急救，如吃了有毒性的植物或天然品，先用牛奶灌，洗胃，解毒。//所以说，现在医院提供的餐食中，不论是流质、半流质、正常餐，几乎全部的病人都在饮用牛奶。//一个关于李世民的故事//有一个故事是说，唐太宗李世民有一天得了腹泻，闹肚子，请了好多太医，却久治不愈。魏征就介绍了一个不太出名的人，叫张宝藏，他有一个绝方，就是用鲜牛奶加上类似生姜的中药，叫荜菝。李世民吃了以后，腹泻就好了。//魏征说了，皇帝啊，他那么大功劳，不得授点官衔吗?太宗说给个五品官吧，魏征不满意，他就压着没告诉张宝藏。//结果过了一个月，皇帝病又犯了，就把张宝藏请来，还是牛奶煮荜菝，又好了。魏征说，又给你治好了，上回的五品是不是少了点?唐太宗就说，给三品吧。  这个故事就在《本草纲目》里。//一首关于牛奶的歌//到了明代，大医学家李时珍还给牛奶编了一首歌，叫《服乳歌》，他认为牛奶好比仙人用的酒一样。//“仙家酒，仙家酒，两个壶卢盛一斗。五行酿出真醍醐，不离人间处处有。丹田若是干涸时，咽下重楼润枯朽。清晨能饮一升余，返老还童天地久。”//所以如今有些谣传，说喝了牛奶会变成酸性体质，然后就骨质疏松，完全没有根据。至于说“牛奶致癌”的论据就更荒谬了。//就在上个月，翁教授驾鹤西去，读着这篇科普文章，也让我们更加怀念这位祖国医学的学者，中医养生康复专业的创始人，一个可亲可敬的和蔼老人。文/魏世平//盐里暗含灭种计划?//最近发现，食品安全的谣言也是有点规律的，比如能引起十万+转发的谣言文，大部分都是针对一个“食者”众多的食物，比如酸奶、面包，比如饮用水，再比如食盐。//不吃盐?那日子恐怕是没办法过了。//因此，如果有人说你每天吃的盐里暗含着惊天阴谋，你一定后脊梁骨都凉透了吧?//一篇题为《盐里面都有添加剂，这是要灭种的节奏吗?》的文章称，超市里盐的配料表里有“亚铁氰化钾”，“如果去掉‘亚铁’二字，我会立即被吓死。氰化钾极其危险……在10秒钟内能使人丧失意志，几分钟内可以毒死一人……”还说，“欧美人自己不吃亚铁氰化钾，却推荐其他国家吃!这是欧美施行的灭种计划……”//为了大家能安心吃饭，我们今天就说说这个谣言背后的真相。//亚铁氰化钾VS氰化钾//随便扯过来一袋盐，看看包装袋，就会看到“亚铁氰化钾”的身影，亚铁氰化钾和氰化钾，名字是很像，但是他们俩根本不认识啊。//亚铁氰化钾又叫黄血盐钾，化学式是K4[Fe(CN)6]，而氰化钾的化学式是KCN。亚铁氰化钾里面的氰根和铁元素是牢牢结合在一起的，所以它的急性毒性和氰化钾相比差了几百倍。//所以，亚铁氰化钾和氰化钾，名字就差两个字，但是，结构相差很大，毒性相差更大。亚铁氰化钾是合法的食品添加剂，用作抗结剂，属于食品圈里“持证上岗”的一员。//亚铁氰化钾安全吗?//虽然跟氰化钾的毒性差得多，但亚铁氰化钾还是有毒性的吧?那会不会在一定的情况下分解成氰化钾，或者积少成多最终导致中毒呢?//理论上，亚铁氰化钾在高温下可以分解产生氰化钾，但这个温度至少要400℃。//平时炒菜、高温烹调根本达不到这样的温度，到200℃就会开始有大量油烟，到330℃不粘锅的涂层就开始融化了。//加在盐里面的亚铁氰化钾的稳定性很高。亚铁氰化钾中的氰根和铁的结合力非常强，即使是在亚铁氰化钾的溶液里也很难检测到氰根。所以，那些以为炒个菜就能分解出来氰化钾的想法，实在是想多了。//但有人说了，不怕一万就怕万一!你怎么知道这世界上就没有烹饪方法能够达到400℃的呢?//好，就算亚铁氰化钾全都被“神奇”分解了，那也需要吃十几斤分解出亚铁氰化钾的食盐才会致命。因为氰化钾毒死一个成年人大约需要0.1克以上，而1公斤食盐里面的亚铁氰化钾最多才0.01克。//可有的人还是不放心。毕竟每天都吃一点，万一有慢性毒性呢?会不会致癌呢?//根据世界卫生组织和国际粮农组织的数据，亚铁氰化钾的终生安全剂量是每公斤体重0.025毫克。也就是说对于60公斤重的人，每天摄入1.5毫克完全没问题。而我国国家标准的规定，食盐中亚铁氰化钾的最大添加量为每公斤10毫克。//所以，如果想要吃出毛病，一个60公斤重的人每天至少要吃3两盐。而正常每天食盐的摄入量，仅为6克。//外国人不吃亚铁氰化钾?//这个谣言最刺激大家神经的，还是那句：“欧美人都不用亚铁氰化钾，是针对其他国家的灭种计划。”//但是，真相呢?//在国外，亚铁氰化钾作也是作抗结剂(anticaking  agent)使用的。比如，欧盟可以用亚铁氰化钾/钠/钙;美国用的是亚铁氰化钠，限量也基本和中国一样;日本可以用亚铁氰化钾/钠/钙，但限量值是中国的2倍。//所以，亚铁氰化钾的安全性是有保障的，适当吃盐根本不用担心。//而且，食盐抗结的方法不止这一种，比如柠檬酸铁铵、碳酸镁、二氧化硅、硅铝酸钠等抗结剂同样有效。目前市面上的食盐有一些也已经在改用这些抗结剂，也有一些食盐直接去掉了抗结剂，大家完全可以根据需要选择自己喜欢的品种。//文/阮光锋//来源：北京青年报//', 'http://images.meishij.net/p/20161013/4525b91c2308f6680516cbbacb7b317b.jpg', 'http://images.meishij.net/p/20161116/e67095f2f5596b616b3bc8152b6d1534_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (54, '肉松面包没肉松？', '2018-11-01', '原标题：“肉松面包没肉松”别只当段子看//市面上销售的绝大多数肉松类产品配料为“猪肉味豆粉松”，这种豆粉松“原料跟猪肉无关，是豌豆粉加猪肉香精混合而成”。加入了少许肉粉的豆粉松“假扮”肉松做内馅儿，几乎已是烘焙行业内公开的秘密。厂商为了降低成本，使用的并非真正肉松。专家表示，目前国内肉松类制品尚无统一标准，如果以豆粉或肉粉松为配料，但产品名称却打着“肉松”的名义，将涉嫌欺诈消费者，可向相关部门举报。(11月7日《北京青年报》)//肉松面包里面居然没有真肉松，这个爆料令网友大吃一惊，这么常见的食品原料，居然也有“水分”了。可也有部分网友调侃，这算啥事呢，鱼香肉丝里也没有鱼、老婆饼也不送老婆，如此看来，肉松面包里没真肉松，似乎也不算稀奇了。好在这只是个段子，绝大部分人还是很愤怒，这分明是在忽悠消费者，商家玩弄文字游戏，利用信息不对称优势牟取暴利，理应予以处罚才对。//而对于消费者和监管部门来讲，也别把“肉松面包没肉松”当做段子看，需要看到背后潜藏的问题，及早拿出解决问题的方案，以堵住这个漏洞，规范肉松食品的市场，维护消费者的合法权益不被侵犯。//从媒体揭露的情况看，肉松是由鸡肉、猪肉或牛肉等肉类除去水分后制成的粉末，但“肉粉松”则是由豌豆粉混合了部分肉粉等制成，两者的制作成本和营养价值差距较大。虽然“肉粉松”也是可食用商品，只要严格按照规范生产配比，也就不存在质量问题，可是拿“肉粉松”鱼目混珠替代肉松，却不在包装显著位置上标明，则存在误导消费者之嫌。甚至于部分商家用低廉的“肉粉松”加工食品，却卖出高价的肉松食品价格，则就涉嫌以次充好、非法牟利了。//现在肉禽原料价格较高，要是用纯肉制成肉松，“基本上2.5斤肉才能生产出1斤肉松”，其价格自然要达到数十元一斤，对于商家而言，成本就上来了，也就产生用廉价的肉粉松替代的动力。相比之下，肉粉松才几元、十几元的价格，也能达到“吃出肉味”、“吃出纯肉松的丝状感”的地步，从而忽悠不明真相的消费者，误以为买到物美价廉的肉松食品。可见，如果不注明肉粉松食品的话，就属于欺诈行为，需要改变这种不规范的标注。//据专家所言，目前肉松原料有行业标准，但肉松类制品没有统一的国家标准，这就给部分商家留下可乘之机，出现打着“肉松面包”的招牌卖着“肉粉松”产品的乱象。可见，肉松类制品国家标准的缺位，乃是最关键的问题，不仅监管部门难以出手遏制，亦纵容奸商浑水摸鱼赚取暴利。因此，急需将肉松类制品的国家标准“短板”补上，明确肉松与肉粉松在食品加工领域的使用规范，以及食品名称、包装、配方等方面的标注标准，从而用标准约束市场乱象，也使得监督部门能够依规查处。(江德斌)//来源：北京青年报//', 'http://images.meishij.net/p/20161108/7ce28ee613531fcd2ba1876728a4c015.jpg', 'http://images.meishij.net/p/20161114/1a395461048aa2f1b76ad65e41daba1a_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (55, '为何有的鱼刺多有的少？', '2018-11-01', '原标题：为什么有的鱼刺多有的鱼刺少呢?//鱼刺的学名，叫肌间骨，它是分布于鱼类椎骨两侧肌隔中的小骨，主要生长在低等真骨鱼的体内。古生物学家们发现，随着鱼类的逐渐演化，肌间骨经历了一个从少到多，又从多到少，最后消失的过程。可以说，鱼刺的多少，部分程度体现了鱼类的进化史。//鱼，作为一种“小孩吃了聪明，男人吃了强壮，女人吃了漂亮，老人吃了长寿”的肉类，广受营养学家和喵星人的欢迎。爱吃鱼的人一定知道，吃鲫鱼、草鱼的时候需要特别小心，因为它们的刺又小又密，一不小心就会发生鱼鲠在喉的惨剧。而吃鲶鱼、乌鱼的时候，就可以稍微放松一点，因为它们的刺比较大，也比较明显，可以很容易地剔出来。那么问题来了，为什么会有一些鱼刺多，一些鱼刺少的情况呢?//首先我们要搞清楚所谓的“鱼刺”是什么。这些鱼刺在生物学上有个学名，叫肌间骨，它是分布于鱼类椎骨两侧肌隔中的小骨，主要生长在低等真骨鱼的体内。我们熟知的鲤鱼、草鱼、鲢鱼，都属于低等真骨鱼中的鲤形目。古生物学家们发现，随着鱼类的逐渐演化，肌间骨经历了一个从少到多，又从多到少，最后消失的过程。例如，出现得较早的鳗形目，是肌间骨最多的，而略微晚一些出现的鲤形目，肌间骨依然存在，但是数量比起鳗形目已经有所下降，到了更晚一些的鲇形目(例如鲶鱼)，体内的肌间骨已经接近于无。可以说，鱼刺的多少，部分程度体现了鱼类的进化史呢。//那么，肌间骨主要有什么作用呢?这在科学界还没有一个定论。但流传较广的说法是，认为肌间骨的主要作用是支撑肌肉，控制鱼的运动。在鱼需要进行纵向运动的时候，肌肉收缩，凭借肌间骨产生作用力，做出一些较为细微的方向转变。但是像鲶鱼这种肉食性鱼类，捕食主要依靠瞬间爆发力，需要强劲的骨骼支撑和发达的肌肉。这种生存的需要，使得肉食性鱼类不再依赖肌间骨，骨骼在进化的过程中变得越来越粗大，小刺也越来越少了。总之呢，动物进化的过程通常都是由低级到高级，由结构简单到完善。鱼类骨骼的进化在数量方面就表现为逐渐减少而更合理集中。//另外，需要注意的是，在我们生活会经常发生“鱼刺卡喉”的情况，也有因处理不当，因鱼刺卡喉而丧命的事，那么鱼刺卡喉最正确的处理方法是什么呢?可能会有人“说喝醋、拿馒头噎”，但这真的好使吗?我们先听听专家怎么说。专家说鱼刺卡喉后，最好的方法是“停止咽，努力吐”，也就是赶紧催吐，如果吐不出来，那么最好的办法就是赶紧去医院寻求医生的帮助。//来源：39健康网//', 'http://images.meishij.net/p/20161104/2de967fef91f5fa1298f8ab3d42d43cc.jpg', 'http://images.meishij.net/p/20161111/0ff2b10febaed9eaca2bdf12968c2ff7_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (56, '放调味料的最佳时间你可知道?', '2018-11-01', '经常出入厨房的人会知道，想要做出好吃的菜，会用到各种调味品，它不仅能增味，有些还能起到一定的养生功效。但是，调味料的放入时间也是有讲究的哦!//味精：菜起锅后放//味精主要的作用就是给植物性食物增加鲜味，给肉食增加香味。但是，当食物温度到达120℃以上时，味精会变成焦化谷氨酸钠，不仅没有鲜味，还有毒性。所以，味精在70℃—90℃  时使用效果最好，一般在菜起锅后马上放。但还有一点需要注意的是，有一些菜在烹饪时并不需要加味精，如鸡蛋、蘑菇、海鲜等。//白糖：炒菜过程中放//糖能增加菜的甜味，还能抑制酸味、缓和辣味，可谓是功效诸多。此外，待油锅热后放糖炒至紫红色时放入主料一起翻炒，还能给菜上色。但是，白糖也不可以放得过早，最好在炒菜过程中放。//醋：“两头”加//醋不仅能祛膻、除腥、解腻、增香，软化蔬菜纤维，还能避免高温对原料中维生素的破坏。做菜放醋的最佳时间在“两头”，有些菜肴，如炒豆芽，原料入锅后马上加醋，既可保护原料中的维生素，同时又能软化蔬菜中的纤维;但是有些菜肴，如糖醋排骨、葱爆羊肉，原料入锅后加一次醋，其作用是祛膻、除腥，在菜肴临出锅前再加一次，以解腻、增香、调味。//酱油：出锅前放//酱油既可以给食物上色，还能增加食物的香味，从而增进食欲。但是营养师建议，烹饪时最后放酱油，这样酱油中的氨基酸和营养成分能够有效保留。//料酒：锅内温度最高时放//料酒主要有去腥膻味的作用，从而增加菜的香气。它与味精不同，一般是在锅内温度最高时加入，因为腥味物质能被乙醇溶解并一起挥发掉。但它也经常用于烹饪前的腌渍，能让乙醇浸入到鱼、肉纤维组织中去，以除去异味。//来源： 39健康网//', 'http://images.meishij.net/p/20161219/2f7fce6b450358696d89f85327270389.jpg', 'http://images.meishij.net/p/20161109/ab5f6fd21a967620e1aaa8c7e3ed67ab_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (57, '吃什么可以美白牙齿', '2018-12-01', '吃什么可以美白牙齿，美白牙齿不仅给人增添美感，而且能预防和减少消化系统疾病，让你的美由内而外地散发出来。下面就来说一说吃什么可以美白牙齿。//吃粗纤维食物可以美白牙齿//粗纤维食物含粗纤维丰富，我们在进食粗纤维食物咀嚼时，粗纤维食物对牙齿造成一定的摩擦，达到清除粘在牙齿上的残留食物以及细菌，能够减少蛀牙美白牙齿。//推荐食物：韭菜、芹菜。//吃富含钙质食物可以美白牙齿//牙齿缺钙的话，牙齿肯定不白，不好看，因为钙质是牙齿重要的物质组成，因此日常生活中多吃含钙质高的食物，能够达到健康美白的效果。//推荐食物：奶制品、豆制品。//吃富含维生素的食物可以美白牙齿//牙龈健康必须的微量元素包含维生素C，缺少的话会导致牙齿松动、牙龈充血等。因此多吃含维生素C的食物对牙龈健康具有重要作用。//推荐食物：西红柿、菠菜等。//吃含氟食物可以美白牙齿//我们刷牙时，会发现许多牙膏含氟，因为氟是美白牙齿和坚固牙齿必须的物质之一，同时氟具有很好的防蛀牙的效果。//吃具有杀菌作用的食物可以美白牙齿//牙齿不白有很大一部分原因是由于口腔中细菌过多导致牙齿不白，比如变形链球菌是蛀牙的罪魁祸首，因此多吃杀菌作用的食物能有效的清除口腔中的细菌，达到美白牙齿的效果。//推荐食物：葱、姜、蒜、洋葱、芥末。//多喝水可以美白牙齿//日常生活中我们会认为喝水与美白牙齿不相关，但是牙科医生告诉我们，喝水能让我们的牙龈保持湿润，刺激分泌唾液，同时带走食物残渣，减少细菌的存活机率，达到美白牙齿的效果。//下面来介绍一些日常护理牙齿美白方法//1.小苏打洁齿。用牙刷沾一些小苏打，按正常刷牙的方法，每周一至二次，每次三分钟，即可令牙齿保持明亮光洁。//2.柠檬汁雪白牙齿。每晚在刷牙后，用纱布沾些柠檬汁，摩擦牙齿，牙齿就会变得雪白光亮。柠檬的洗净力强，又有雪白作用，且含有维他命C，能强固齿根。//3.橘皮末做牙膏可洁牙净。橘皮研成细末，天天刷牙时掺入牙膏少许，不光可使牙齿雪白，满口清香，由于橘皮还有很强的防腐灭菌的作用，长期坚持能有效固齿。//4.醋可除牙垢烟渍的小窍门。常常吸烟的人，牙齿会被熏上一层黑黄色的烟垢，用牙膏很难刷掉，但用醋刷便能使牙齿去垢雪白。含半口食醋，在口腔里含漱2-3分钟，然后吐出，再用力刷牙，最后用清水洗净，反复几次可除烟垢。//5.墨鱼骨粉可有效洁齿。将墨鱼骨研成细末用来刷牙，这样能够让黄牙变白。//通过上文的介绍，你是不是已经知道了吃什么能美白牙齿了呢?希望本文能对你有所帮助!也希望你早日拥有一口洁白靓丽的牙齿。//来源：养生之道网//', 'http://images.meishij.net/p/20161129/dc60d274ddf76961b6dc6fe0a646e90f.jpg', 'http://images.meishij.net/p/20161108/25d3f686f265df30c6001d0fcca65dbe_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (58, '为什么网红们都爱丘比沙拉汁', '2018-11-01', '////丘比沙拉汁是什么？//回答：蘸拌煎炒样样行的调味料！可能有些人还不熟悉丘比沙拉汁，那些走在健康与美容前沿的网红们已经对它爱不释手。////////', 'http://images.meishij.net/p/20170713/b6d1dc02aee71423a3773461fa412043.jpg', 'http://images.meishij.net/p/20161104/f086ef360d9be9475566dd8e83fdc857_150x150.jpg', 0, 1, NULL, 1);
INSERT INTO `article` VALUES (59, '吃什么可以美白牙齿', '2018-06-01', '吃什么可以美白牙齿，美白牙齿不仅给人增添美感，而且能预防和减少消化系统疾病，让你的美由内而外地散发出来。下面就来说一说吃什么可以美白牙齿。//吃粗纤维食物可以美白牙齿//粗纤维食物含粗纤维丰富，我们在进食粗纤维食物咀嚼时，粗纤维食物对牙齿造成一定的摩擦，达到清除粘在牙齿上的残留食物以及细菌，能够减少蛀牙美白牙齿。//推荐食物：韭菜、芹菜。//吃富含钙质食物可以美白牙齿//牙齿缺钙的话，牙齿肯定不白，不好看，因为钙质是牙齿重要的物质组成，因此日常生活中多吃含钙质高的食物，能够达到健康美白的效果。//推荐食物：奶制品、豆制品。//吃富含维生素的食物可以美白牙齿//牙龈健康必须的微量元素包含维生素C，缺少的话会导致牙齿松动、牙龈充血等。因此多吃含维生素C的食物对牙龈健康具有重要作用。//推荐食物：西红柿、菠菜等。//吃含氟食物可以美白牙齿//我们刷牙时，会发现许多牙膏含氟，因为氟是美白牙齿和坚固牙齿必须的物质之一，同时氟具有很好的防蛀牙的效果。//吃具有杀菌作用的食物可以美白牙齿//牙齿不白有很大一部分原因是由于口腔中细菌过多导致牙齿不白，比如变形链球菌是蛀牙的罪魁祸首，因此多吃杀菌作用的食物能有效的清除口腔中的细菌，达到美白牙齿的效果。//推荐食物：葱、姜、蒜、洋葱、芥末。//多喝水可以美白牙齿//日常生活中我们会认为喝水与美白牙齿不相关，但是牙科医生告诉我们，喝水能让我们的牙龈保持湿润，刺激分泌唾液，同时带走食物残渣，减少细菌的存活机率，达到美白牙齿的效果。//下面来介绍一些日常护理牙齿美白方法//1.小苏打洁齿。用牙刷沾一些小苏打，按正常刷牙的方法，每周一至二次，每次三分钟，即可令牙齿保持明亮光洁。//2.柠檬汁雪白牙齿。每晚在刷牙后，用纱布沾些柠檬汁，摩擦牙齿，牙齿就会变得雪白光亮。柠檬的洗净力强，又有雪白作用，且含有维他命C，能强固齿根。//3.橘皮末做牙膏可洁牙净。橘皮研成细末，天天刷牙时掺入牙膏少许，不光可使牙齿雪白，满口清香，由于橘皮还有很强的防腐灭菌的作用，长期坚持能有效固齿。//4.醋可除牙垢烟渍的小窍门。常常吸烟的人，牙齿会被熏上一层黑黄色的烟垢，用牙膏很难刷掉，但用醋刷便能使牙齿去垢雪白。含半口食醋，在口腔里含漱2-3分钟，然后吐出，再用力刷牙，最后用清水洗净，反复几次可除烟垢。//5.墨鱼骨粉可有效洁齿。将墨鱼骨研成细末用来刷牙，这样能够让黄牙变白。//通过上文的介绍，你是不是已经知道了吃什么能美白牙齿了呢?希望本文能对你有所帮助!也希望你早日拥有一口洁白靓丽的牙齿。//来源：养生之道网//', 'http://images.meishij.net/p/20161129/dc60d274ddf76961b6dc6fe0a646e90f.jpg', 'http://images.meishij.net/p/20170112/b31419a5e1e39defd4f88d991086bd70_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (60, '凉拌或油炸四季豆易中毒', '2018-12-01', '原标题：凉拌或油炸四季豆易中毒 教你4个烹饪小技巧//四季豆是我们餐桌上的常客，但因为食用四季豆中毒的新闻却时有发生。根据广东历年食源性疾病监测报告显示，1月份因四季豆引起的食物中毒，通常占该月份中毒总起数的50%以上。如何烹饪四季豆才安全呢?//警惕四季豆2种易中毒的吃法//四季豆又名菜豆、豆角、扁豆等，是全国普遍食用的蔬菜。四季豆中毒也是食物天然毒素中毒里较常见的情况。根据中毒实际调查，烹调不当是主要的诱因，多数为炒煮不够熟透所致。未煮熟的四季豆中含有皂素，皂素对消化道黏膜有强刺激性;另外，其中还可能含有植物血球凝集素和胰蛋白酶抑制物，均能引起食物中毒。//摄入未煮熟的四季豆，引起中毒的潜伏期为数10分钟，一般不超过5小时，主要为胃肠炎症状，如恶心、呕吐、腹痛和腹泻。呕吐少则数次，多则可达数十次。另有头晕、头痛、胸闷、出冷汗以及心慌，胃部有烧灼感，病程一般为数小时或1—2天。//专家提醒，四季豆不要用凉拌、油炸等方式来烹调。餐厅的干煸四季豆是最危险的，因为许多厨师为了节省时间，会采用高温短时油炸的方式来烹调。专家提醒大家，在餐厅吃到颜色鲜亮、翠绿，口感脆硬，甚至带有生味儿的四季豆都应该当心。//烹饪四季豆的4个小技巧//一般烹饪四季豆时，应先用水焯一下，再下锅炒，以四季豆颜色不再“翠绿”，转深色或微发黄为宜。挑选和烹饪四季豆时，需注意以下四点：//1、购买四季豆应挑选新鲜的，贮存时间越长，四季豆的皂甙等毒性含量越多;//2、下锅前要把四季豆两头摘掉，因为这些部位含毒素较多;//3、烹调时应减少凉拌、油炸等方式，尤其是干煸四季豆，高温短时油炸反而不易熟透;//4、若见四季豆颜色翠绿、口感脆硬，甚至带有生味儿就不应食用。//接下来，再和大家分享一道健康、安全的家常干煸四季豆的做法。//干煸四季豆的家常做法//【食材】四季豆、大蒜、盐、生抽、食用油//【做法】//1、 四季豆摘洗干净，放入开水里煮3分钟左右，捞出过冷水//2、 大蒜去皮拍碎//3、 热锅下油，加入蒜末小火煸炒出香味，然后加入四季豆//4、 用小火煸炒至四季豆两面金黄//5、 加入适量盐、酱油拌匀即可//来源：家庭医生在线//', 'http://images.meishij.net/p/20170111/d81b5cd1a96051dc6d8346ee7979d0bf.jpg', 'http://images.meishij.net/p/20170111/2345a423207f6ec91011ef9b71ada0c3_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (61, '腌制食品有毒说法不科学', '2018-03-01', '原标题：何计国：“腌制食品有毒”说法不科学//腌制过程就是以食盐为主，并添加(亚)硝酸钠(或钾)、蔗糖和香料等的腌制材料处理食品。通过腌制使食盐或食糖渗入食品组织中，降低它们的水分活度，提高它们的渗透压，借以有选择地控制微生物的活动和发酵，抑制腐败菌的生长，从而防止食品腐败变质。//所谓腌制食品会致癌这一说法，从科学角度来说是根本站不住脚跟的。“所有的腌制食品都含有有毒物质，但不能说所有腌制食品都有毒。有没有毒是看食物所含有毒成分是不是达到了一个量，达到产生毒性作用的那个量之后才能说它有毒。”中国农业大学食品学院营养与食品安全系主任何计国说，“我们吃了几百年的腌制食品，突然说它有毒是不合适的，况且腌制食品里的有些物质本身是杀毒的。”//何计国进一步解释说，“亚硝酸盐是一种强氧化剂，一般不会危害人体健康，也不致癌。大多数的亚硝酸盐在人体内以‘过客’的形式随尿排出，只在特定条件(适宜的PH，微生物作用)下，亚硝酸盐与胺类物质反应，才转化为致癌物——亚硝胺。”而我们平时所使用的化妆品、食用的香烟、啤酒等里面就含有一定的亚硝胺，平时应多加注意。//腌制约一个月亚硝酸盐基本消失。腌制食品的周期一般有两种，一种是暴腌制，就是腌制完之后可以立即食用;另一种是较长时间的腌制，这种情况下，腌制品在被腌制的4天～8天内亚硝酸盐含量最高，第9天后开始下降，一个月左右就基本消失了，这个时候可以开始吃了。//不过，何计国提醒，过量摄入亚硝酸盐就会使人中毒。“就像一氧化碳中毒一样，它会致使体内的二价铁变为三价铁，使血红蛋白失去带氧功能，一般人体摄入200毫克就会产生中毒现象，达到一定量(0.3克~0.5克)会引起中毒，甚至引起死亡(超过3克)。”(庞倩影  高秀婷)//来源：农民日报//', 'http://images.meishij.net/p/20161021/7bc5c70f2e15378ab7519fc77d6ce0b2.jpg', 'http://images.meishij.net/p/20170105/f7dd14057250efde2da169b49f563b93_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (62, '深秋十月饮食5原则', '2018-04-01', '原标题：深秋十月谨守饮食5原则 吃哪些食物最营养?//10月已经到了深秋，天气越来越冷，在这个时候要怎么吃呢?补充身体所需要的各种机能就要做好饮食的安排才行。在这里，为大家支支招，介绍一下要怎么吃可以保持身体健康吧。//深秋的饮食建议//甘淡滋润：秋季节气干燥，应当多进食些性滋润味甘淡的食品，如蜂蜜、芝麻、杏仁等。水果选梨、柿、柑橘、香蕉。蔬菜则可多食胡萝卜、冬瓜、银耳。还有食用菌类、海带、紫菜等。经科学加工，做出色、香、味俱全的美味佳。也肴可制成佐餐或饮料食用，如蜜煎银耳、各种新鲜果蔬汁液等。或加工制作成羹粉汤粥，如香菇豆腐汤、扁豆粥、藕粉羹等，既有营养，又能润燥。//平衡营养：营养学家指出，只有食物的多样化才能提供给人体全面的营养。秋季更应注意饮食中食物的多样性，营养的平衡，才能补充夏季因气候炎热、食欲下降而导致的营养不足，特别应多吃耐嚼、富于纤维的食物。//秋季的饮食养生原则应在平衡饮食五味的基础上，根据个体的具体情况，适当增加甘、淡、酸、滋润的食物的进食，但不可太过。进食时，应细嚼慢咽，既利于食物的充分消化和营养物质的完全吸收。//少辛增酸：所谓少辛，是指要少吃一些辛味的食物，这是因为肺属金，通气于秋，肺气盛于秋。少吃辛味，是要防肺气太盛。中医认为，金克木，即肺气太盛可损伤肝的功能，故在秋天要“增酸”，以增加肝脏的功能，抵御过剩肺气之侵入。根据中医营养学这一原则，在秋季这节气期间一定要少吃一些辛味的葱、姜、韭、蒜、椒等辛味之品，而要多吃一些酸味的水果和蔬菜。  此外还要谨记“秋瓜坏肚”。在夏季，西瓜是消暑佳品，但是立秋之后，不论是西瓜还是香瓜、菜瓜都不能多吃，否则会损伤脾胃的阳气。//应忌苦燥：苦性燥，苦燥之品易伤津耗气。《素问—五脏生成篇》中言：“多食苦，则皮槁而毛拔。”秋季燥邪当令，肺为娇脏，与秋季燥气相通，容易感受秋燥之邪。许多慢性呼吸系统疾病往往从秋季开始复发或逐渐加重。所以，秋令饮食养生应忌苦燥。//早上喝粥：秋季每天早晨吃粥，特别是喝些药粥对身体很有好处，其原因是作为药膳重要成分的粳米或糯米，均有极好的健脾胃、补中气的功能。在秋季，甘蔗粥、百合莲子粥、胡萝卜粥等都是不错的选择。//接下来，再来具体看看哪些食物时候在深秋吃吧。//深秋吃什么好//小白菜：补钙。小白菜又叫青菜、鸡毛菜，是蔬菜中含矿物质较丰富的一种，尤其钙元素，高达90毫克/100克，比大白菜高出近一倍。小白菜中还含有大量有助于钙吸收的矿物质元素和维生素K。另外，小白菜富含维生素B1、B6、泛酸等，具有缓解精神紧张的功能，多吃有助于保持平静的心态。需要指出的是，小白菜不可以生吃，用它制作菜肴时，炒、熬时间不宜过长，以免营养流失。//莲藕：维生素B1。从中医角度来讲，生藕性寒，有清热除烦的效果，煮熟后由凉变温，能养胃滋阴、健脾益气养血，尤其适合老幼妇孺、高热病人、高血压、食欲不振、缺铁性贫血者食用。但需要注意的是，鲜藕性偏凉，生吃较难消化，脾虚胃寒、易腹泻的人，最好煮熟了吃。//无论做汤、清炒还是凉拌，莲藕都是秋季养生食谱上大受欢迎的食材。其含有丰富的维生素B1，有助于缓解疲劳、促进新陈代谢和消化，还有美肤的作用。此外，莲藕还含有维生素C、钙、铁等无机盐，具有抗氧化作用的多酚类物质。//蘑菇：补钾。被冠以“山珍”美誉的蘑菇矿物质含量非常丰富，尤其富含钾。我们通常所说的“补钾明星”香蕉，钾含量为256毫克/100克，而常见菇类中钾的含量分别是：口蘑(白蘑)1655毫克/100克、蘑菇(鲜蘑)312毫克/100克、双孢蘑菇307毫克/100克，远超出了香蕉。钾可预防中风，并协助肌肉正常收缩，还有降低血压的作用。//此外，蘑菇中还含有丰富的膳食纤维，更难能可贵的是，蘑菇的口感嫩滑细腻，不像别的高纤维食物那么令人难以下咽。蘑菇吃法多样，比如炒、做汤和做馅等。//西兰花：胡萝卜素。作为公认的明星蔬菜，其营养成分不仅含量高，而且十分全面，尤其胡萝卜素含量更是遥遥领先，每100克中高达7210微克。胡萝卜素进入体内不但可以转化为维生素A，护眼明目，还具有抗氧化作用，对预防心血管疾病、肿瘤，以及延缓衰老和防癌都有重要意义。//此外，西兰花中钙、磷、铁、钾、锌、锰等含量都很丰富，比同属于十字花科的白菜花高出很多。而且，其维生素C含量高出番茄近3倍。研究表明，将西兰花隔水蒸5分钟后拌着吃，抗癌效果最好。//菠菜：叶酸。除了我们熟知的镁、铁、锌等矿物质外，菠菜中还含有丰富的叶酸，叶酸最重要的功能是制造红血球和白血球，增强免疫力。并且，它也是预防宝宝出生缺陷的一种重要营养素。菠菜还是叶黄素的最佳来源之一，而叶黄素对于预防眼睛衰老导致的“视网膜黄斑变性”十分有效。//由于叶酸是一种水溶性维生素，对热、光线均不稳定，因此菠菜最好现买现吃，贮存的时间尽量别超过2天。而且，要用蒸、旺火快炒、少量水煮等方式来烹制，避免烹煮过久、过烂，损失营养。//在深秋里，不如就从以上食物中选择适合自己的吧。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161008/caf12d87ae1df064587ccba4ab4c82d2.jpg', 'http://images.meishij.net/p/20161230/d1447a05af4e8ee1f55250af50ee69f5_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (63, '年末应酬多，喝酒前后饮食有讲究', '2017-11-01', '到了年末，不仅工作更加繁忙，各种应酬也多了起来，喝酒就是在所难免的，吃什么可以减少酒精对人体健康的危害呢?在这里，就来为大家介绍一下喝酒前后吃什么有好处，千万不要错过了。//喝酒前吃什么好//牛奶。喝酒前喝杯牛奶，不仅能养胃，还能形成保护膜，减少酒精对胃的伤害。//生黄豆。据说喝酒前吃点泡过的生黄豆能防醉。因为这些里面的蛋白质变性，可消耗酒精，减少酒精的损害。//淡盐水。喝酒前喝一些淡盐水，利尿，可以让酒尽快排出去。//面类食物。喝酒前应该让胃里有点东西可以消耗，这样才能避免酒精对胃的直接伤害。喝酒前吃面包、馒头，不会那么免容易醉。//蜂蜜。蜂蜜中含有一种特殊的成分，可以促进酒精的分解吸收，减轻头痛症状，尤其是红酒引起的头痛。//葡萄。葡萄中含有丰富的酒石酸，能与酒中的乙醇相互作用形成酯类物质，达到解酒目的。如果在饮酒前吃，还能预防醉酒。//喝酒时不能吃什么菜//肘子、猪蹄、肉皮冻等含胶原蛋白多的食物。胶原蛋白含量高的食物会在胃肠中形成保护膜，大大减缓酒精的吸收速度，还能保护肝脏。同时，这类食物也含有一定油脂，酒精难溶于油脂，因此人体对酒精的吸收速度会减缓许多。//海带、木耳、大白菜等膳食纤维高的菜。膳食纤维可减缓或减少酒精的吸收，起到保护肝脏的作用。凉拌海带丝、洋葱拌木耳等都是既护肝又美味的选择。//粗粮薯类。这类食物中含有丰富的碳水化合物，碳水化合物和酒精结合，会减缓肠胃对酒精的吸收。其次，这类食物中B族维生素的含量也相当丰富，能弥补大量饮酒对维生素B1的损失。因此，炒土豆丝、杂粮外婆菜等都是不错的选择。//富含蛋白质的菜肴，如肉蛋及大豆制品等。这些食物含大量蛋氨酸和胆碱，对肝脏有保护作用。因此，吃这些食品等于服了保肝药。喝的酒越多、度数越高，越要吃蛋白质丰富的菜。如家常豆腐、水煮花生米等。//最后，再来了解了解酒后吃什么好吧。//喝酒后吃什么最有益//香蕉治酒后心悸、胸闷。酒后吃1—3根香蕉，能增加血糖浓度，降低酒精在血液中的比例，达到解酒目的。同时，它还能减轻心悸症状、消除胸口郁闷。//西红柿汁治酒后头晕。西红柿汁也富含特殊果糖，能帮助促进酒精分解，一次饮用300毫升以上，能使酒后头晕感逐渐消失。实验证明，喝西红柿汁比生吃西红柿的解酒效果更好。饮用前若加入少量食盐，还有助于稳定情绪。//橄榄治酒后厌食。橄榄自古以来就是醒酒、清胃热、促食欲的良药，既可直接食用，也可加冰糖炖服。//西瓜汁治酒后全身发热。西瓜具可以清热去火，能加速酒精从尿液中排出。//柚子消除口中酒气。实验发现，柚肉蘸白糖吃，对消除酒后口腔中的酒气有很大帮助。//芹菜汁治酒后胃肠不适、颜面发红。这是因为芹菜中含有丰富的B族维生素，能分解酒精。//酸奶治酒后烦躁。酸奶能保护胃黏膜、延缓酒精吸收，其中钙含量丰富，对缓解酒后烦躁尤其有效。//蜂蜜水治酒后头痛。蜂蜜中含有一种特殊的果糖，可以促进酒精的分解吸收，减轻头痛症状，尤其是红酒引起的头痛。另外，蜂蜜还有催眠作用，能使人很快入睡，第二天起床后也不会头痛。//新鲜葡萄治酒后反胃、恶心。葡萄中含有丰富的酒石酸，能与酒中乙醇相互作用形成酯类物质，达到解酒目的。如果在饮酒前吃，还能有效预防醉酒。//虽然以上食物可以减少酒精对我们的伤害，但是还是不宜过量饮酒哦。//来源：家庭医生在线//', 'http://images.meishij.net/p/20170122/e13b35b2ac9fd583d3c4ea377b7b1f5e.jpg', 'http://images.meishij.net/p/20161229/93aa18b7817f21322bf1632c6a7ad44c_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (64, '2016年水果谣言大盘点', '2018-05-01', '原标题：无籽水果最受伤 背上避孕药“黑锅”//“草莓打膨大剂可致癌”、“无籽葡萄用避孕药培育”、“猕猴桃涂抹防腐剂138天不烂”……每逢时令水果上市必遭谣言侵袭，且年年旧饭重炒、花样翻新。新京报记者梳理2016年水果六大谣言发现，其传播机制与消费者对农药、添加剂的错误认知有关，而互联网已成谣言的重要传播渠道之一。//水果谣言多因消费者对水果农药、添加剂等认知不足而妖魔化导致。//近年来，每逢时令水果上市都会迎来谣言侵袭。根据腾讯官方账号“谣言过滤器”公布的数据，在2016年1-11月朋友圈谣言中，有21%与食品安全相关。其中，无核水果使用避孕药培育、吃草莓可导致癌症等水果内容，成为朋友圈转发最多的食品谣言之一。//新京报记者梳理发现，谣言高发期与水果成熟上市周期相一致，如历年8月葡萄成熟上市前后，便会密集出现“无籽水果用避孕药培育”等谣言;在10月柿子与螃蟹陆续开采捕捞时，便会爆发“柿子螃蟹相克”等说法……//事实上，这些谣言多是因为消费者对水果所使用的农药、添加剂等比较陌生，在简单对号入座后便将其妖魔化。//TOP 1//多种无籽水果用避孕药培育?//谣言：无籽水果中含有大量激素，因使用避孕药处理达到无籽效果。此外，“顶花带刺”的黄瓜也用避孕药处理来保持新鲜，经常食用对人体有害。//百度搜索：204万条相关内容//传播高峰：每年8月前后，葡萄等水果上市高峰期//真相//在所有水果谣言中，避孕药是跨界幅度最大的添加剂，葡萄、西瓜、黄瓜等常见果蔬悉数中招。但实际上，无籽水果中大部分为天然无籽品种，而另一部分则是通过人工杂交培育、使用合法植物生长调节剂等进行无核化处理。//新京报记者查询发现，无籽水果主要包含西瓜、葡萄、柑橘等品类。其中，无籽西瓜主要通过人工杂交培育，使种子无法正常受精发育，最终形成无籽果实。无籽柑橘则是将自然形成的无核柑橘所在枝条进行嫁接进行繁育产出。//而在无籽葡萄中，8612、夏黑等品种是因为本身变异导致种子停止发育，在果实膨大后便形成了无籽。国内栽培最为广泛的“巨峰”葡萄则是在生长初期利用一定浓度的植物生长调节剂抑制种子发育促进果肉膨大，实现较高的无核率。//“顶花带刺”黄瓜则是在黄瓜开花前用生长调节剂浸泡花骨朵，影响其正常开花，起到成果后仍然带花的效果，同时增加结果率和产量，这种方式在山东等主要蔬菜产区较为普及。//目前，国内登记批准使用的植物生长调节剂共有38种，主要在瓜果、蔬菜、棉花、小麦等多种作物上使用，如防落素用于番茄保花保果，赤霉素则用于水稻、葡萄制种栽培，缩节胺用于抑制棉花徒长等。//国际食品法典委员会高级专家乔雄梧介绍说，使用植物生长调节剂的农产品是安全的，从未出现残留超标的现象，这是因为大多数植物生长调节剂在使用后3-10天内可以完全降解。另外，国内在植物生长调节剂登记评价时，已经设定了100倍以上的安全系数，即便农民在种植时超规、超量使用也在安全系数控制范围内，远达不到有害剂量。//TOP 2//柿子不能与N种食物同吃?//谣言：柿子与螃蟹同食可引发中毒，严重者可致命。//百度搜索：200万条相关内容//传播高峰：每年10月前后，柿子、大闸蟹上市期间//真相//最早的“柿蟹相克”之说起源于东晋，至今已有1600多年历史。如今，柿子成为食用禁忌最多的水果，如“柿子不能与螃蟹同食”、“柿子不能与白酒同食”、“柿子不能与红薯同食”等。//事实上，柿子与其他食物相克没有足够的科学依据支撑。北京中医药大学教授林殷曾对“螃蟹柿子相克”进行过研究，从现代医学角度分析，属于典型的急性胃肠炎和食物中毒反应，且以下消化道反应即腹痛腹泻为主症，符合细菌性食物中毒和痢疾感染的特点，并非食物相克引发。//林殷还表示，柿子中富含大量果胶、鞣酸(单宁)，在空腹大量进食后会在胃酸作用和胃肌机械辗转下产生凝块滞留胃中，形成植物性胃石，临床可见上腹部疼痛、恶心呕吐或少量咖啡色血性物，常并发胃溃疡、幽门梗阻，少见腹痛腹泻。而胃内强酸环境是胃石发生的基础，高蛋白饮食只是其促发条件之一。//事实上，要在生活中避免买到鞣酸含量较多的柿子，可以在挑选时留意。根据陕西林科所的检测结果，6月中旬采摘的柿子单宁含量为4.09%，到10月中旬其含量已经降到了0.26%，也就是说食用成熟柿子不用担心这些问题。//TOP 3//杨梅盐水泡出小白虫会致病?//谣言：杨梅、樱桃等水果在浸泡盐水后会爬出大量白色小虫子，可致病，千万不要吃。//百度搜索：171万条相关内容//传播高峰：5月中下旬到6月，樱桃、杨梅等水果成熟前后//真相//樱桃和杨梅是最常受病虫害侵袭的农产品。果蝇在果实表面产卵后，幼虫会在果肉内孵化，而上市后用盐水等浸泡便可爬出，这在不少消费者看来成为“水果泡出蛆虫”的证据，引发不少担忧。//重庆市农科院果树研究所专家王进介绍，樱桃从开花到成熟的两个多月时间里，果香味常常引来果蝇产卵“抢食”，在表皮留下小孔，若不仔细查看很难发现。果蝇一般在樱桃快成熟时将卵产到果肉内，经过几天孵化就变成了肉眼能看到的小白虫，随后长大就羽化成果蝇。//浙江大学农学院应用昆虫学研究所施祖华教授告诉新京报记者，果蝇虫害在南方杨梅产区比较普遍。杨梅进入成熟期后果实变软，会吸引果蝇在表面产卵，采摘后搁置一天左右便会生虫。北方的樱桃、苹果如个别不新鲜、散发出发酵味，也会吸引果蝇，但对人体并无危害。//据专家介绍，目前对于果蝇虫害并没有太好的解决办法，主要依靠物理套袋和喷洒农药进行控制，若果蝇已将卵产在果实内，则很难处理。尽管盐水泡出白色幼虫给消费者的感官冲击较大，但实际上果蝇不会携带病菌，其幼虫更是从出生到成长都处在无污染环境中，富含高蛋白、高营养。//TOP 4//草莓打膨大剂可致癌?//谣言：个头大、形状奇怪的草莓都用了膨大剂，会在人体内积累并致癌。//百度搜索：137万条相关内容//传播高峰：4月前后，草莓成熟上市之季//真相//草莓是一种营养价值较高的水果，但历年上市前后关于“激素草莓”、“膨大剂草莓”致癌的说法便在网上盛行，其中对个头较大、外观均匀的空心草莓质疑最多。//科信食品与营养信息交流中心业务部主任、中国食品辟谣联盟专家团成员阮光锋介绍，草莓的个头与很多因素相关，如通过杂交选育、疏花疏果都能得到果实更大的草莓。而某些异常大的草莓确实存在使用膨大剂的可能，但并没有“致癌”那么恐怖。//事实上，膨大剂作为一种植物生长调节剂，学名为氯吡脲(CPPU)，20世纪80年代首先由日本发现，之后引入中国，在国际上广泛使用。其能促使植物细胞加倍分泌细胞分裂素，增加单位时间内植物细胞分裂的次数，同时还能促使生长素的分泌，使细胞长得更大。//记者查询发现，氯吡脲属于农业部登记批准使用的农药品种，可应用于黄瓜、葡萄、猕猴桃、甜瓜、西瓜等作物，最大残留限量值在0.05mg/kg-0.1mg/kg之间。而专门登记在草莓品类的植物生长调节剂为芸苔素内酯，是一种新型的植物内源激素，具有促进作物生长、增加作物产量等作用。//2001年，新疆石河子大学曾专门对草莓膨大剂进行实地研究，结果显示其能够明显增加草莓坐果率和果实重量，但对草莓果实的味道也会带来影响。不同浓度的膨大剂会提高或降低草莓的总酸含量，这就意味着草莓果实口感要么偏酸，要么淡而无味。因此，要在植株健壮和肥水充足的条件下均匀施用才能获得最佳效果，否则容易产生畸形果降低商品价值。//TOP 5//荔枝泡药水引发手足口病?//谣言：荔枝几乎都是用药水浸泡的，具有弱腐蚀性，吃完后会引起孩子发烧，还可能引发手足口病。//百度搜索：135万条相关内容//传播高峰：6月初，荔枝大量上市之际//真相//作为保质期最短的季节性水果之一，荔枝一直有着“一日色变、二日香变、三日味变”的说法，因此不少商家在采摘后会对其进行一系列保鲜处理。这种方式由于信息不对称等因素，在消费者中被演变成“荔枝泡药水可致病”的谣言广泛传播。//事实上，手足口病的主要传播途径是通过呼吸道飞沫或口腔分泌物，吃荔枝并不会引发或传播这种疾病。至于“荔枝泡药水”，目前上游荔枝产地及流通环节中，较常采用的是柠檬酸加食盐兑水浸泡的方式，可将荔枝保质期延长至7-15天，以保证其从产地到运输过程中的品质。//国家荔枝龙眼产业技术体系首席科学家陈厚彬介绍说，荔枝在一年气温最高、湿度最大的季节成熟，其植物呼吸强度非常大，尤其是在被外壳封闭的状态下，果肉中的糖分会很快分解，导致贮藏时间变短、变味。此外，荔枝外壳也容易附着一些田间微生物、真菌和多酚氧化酶等，在炎热天气会氧化果皮中的一些无色物质，导致其变色。因此，柠檬+食盐混合冰水浸泡的方式能降低荔枝外壳表面的真菌，并让果皮处于微酸环境中，延缓其变色。//此外，荔枝采摘后也有采用漂白粉和二氧化硫气体熏蒸的方式来保色保鲜，在国际上应用也比较普遍，如泰国、澳大利亚等进口荔枝也大多利用硫进行处理。目前国内对于食物中二氧化硫的残留量标准为≤30mg/KG。//实际上，柠檬酸+冰盐水的保鲜手段较为“绿色”。根据国标《食品添加剂使用标准》(GB2760-2014)规定，柠檬酸属于“可在各类食品加工过程中使用，残留量不需要限定的加工助剂”。//需要注意的是，二氧化硫在用于经表面处理的鲜水果时，其最大使用量为50mg/kg，但部分商贩在进行熏蒸保鲜处理时难以把控使用量。过量处理后的荔枝果皮颜色会被漂白，果肉也会由原来的晶莹透明变成近似白色，有些还会闻到明显的硫味，消费者对这类荔枝需谨慎购买。//TOP 6//猕猴桃涂抹防腐剂138天不烂?//谣言：苏州消费者购买猕猴桃后存放138天未变质，实为被商家涂抹防腐剂，可保证3个月不坏。//百度搜索：43万条相关内容//传播高峰：9月下旬，猕猴桃上市之际//真相//近期有苏州消费者反映，其购买的猕猴桃在家中存放138天后仍未变质，这则消息在网上被二次加工后，变成了“猕猴桃添加防腐剂三月不烂”的谣言，再次引发消费者对猕猴桃的担忧。//事实上，猕猴桃在常温下虽然有“七天软，十天烂，半个月就坏一半”的说法，但如果采摘下来的猕猴桃很硬，没有机械伤及乙烯刺激，加上温度不是很高，就可能出现长时间不成熟且不腐败的“长寿”猕猴桃。//中国农业大学食品科学与营养工程学院教授冯双庆表示，猕猴桃在0℃冷藏的条件下可以放置6到8个月不变质，不用添加防腐剂。对于长时间室温下不腐烂的猕猴桃，冯双庆推测有可能是在采摘后进行了特殊保鲜处理，如利用1-甲基环丙烯果蔬贮藏保鲜技术，可以抑制猕猴桃释放乙烯，使其长时间保存。这种保鲜方式安全可靠，对人体没有害处。//对于传言中的保鲜“神药”，2002年，西北农林科技大学食品科学与工程学院的专家针对市面上在售的猕猴桃保鲜剂进行了贮藏实验，结果显示其在储藏160天后，硬度由最初的80kg/cm2，下降了59kg/cm2-64kg/cm2，在延缓果实软化方面能够起到良好效果。另一方面，使用保鲜剂并不能对猕猴桃的VC、可溶性固体物、酸含量保持更良好的效果，因此专家建议从经济成本考虑可以不使用保鲜剂。采写/新京报记者  李栋//来源： 新京报//', 'http://images.meishij.net/p/20161221/a46410ea78dfa0c7e61b840b34fc5d16.jpg', 'http://images.meishij.net/p/20161227/ce20da1cbff2dba6dc6e786bae0a3b0f_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (65, '醋疗非万能，日常用醋6大误区', '2018-10-01', '原标题：醋疗不是万能 日常用醋需防6大误区//“醋疗”之说“风声鹊起”，以醋为主的食疗方子不少，有的号称能包治百病，有的说一吃就灵，各种与醋有关的保健产品也充斥市场。小小的醋，真有如此神奇的作用吗?//醋疗不是万能//醋作为传统的发酵食品，含有氨基酸、有机酸、维生素和矿物元素等营养物质，适量食用对人体有益。醋是一种不错的调味品，平时也会推荐病人少吃点盐用醋来调味，这样能保护B族维生素和维生素C不被破坏，还能促进人体对铁的吸收和利用。合理“醋疗”有助消化和增进食欲。但下面这些醋疗功效被夸大了。//1、60天远离高血压纯瞎扯//网上有很多关于醋疗降低血压神奇功效的说法：“巧吃醋，60天远离高血压”就流传甚广。对此，专家表示，饮食中加醋可帮高血压人群膳食中减盐，确实有益血管健康。有研究数据发现，每天坚持饮用一勺醋能刺激人体的血管细胞分泌一氧化氮，在一定程度上扩展血管。但引起血压高的原因有很多，想以简单的“醋疗”将血压控制在理想范围内比较困难，觉得有效果，更多可能是安慰剂作用。网上炒作的喝醋就能“软化血管”，提倡单靠停掉降压药，仅靠几十天喝醋“治疗”，很可能反而导致血压波动。//2、喝醋降血糖不科学//朋友圈中类似的文章还有：“糖尿病、妇科病、老年痴呆症等39种疾患统统搞定”“健康就要自己酿”。以糖尿病为例，有些人一看见醋疗这样厉害，直接降糖药也不吃了，每天就想靠喝醋降血糖或者减肥。虽然醋有一定的辅助降低餐后血糖作用，但有研究发现这种作用仅限于和高血糖指数食物(白馒头、白面包、白米饭等)一起食用，如果食物是低血糖指数食物(比如燕麦、粗粮等)，效果不明显。//3、醋不能给肠道杀菌//虽然醋一定程度上可以给食物杀菌，比如糖蒜放在醋中能长期保存，但是日常生活中我们的摄入量不足以达到给人体肠道杀菌消毒的效果，也不能预防细菌性的食物中毒。“醋能美容”“醋是碱性的，能改变酸性体质”，这些说法都只是道听途说，目前没有确切的科学依据。就体质而言，现代医学中根本没有“酸性体质”、“碱性体质”的说法，正常人体内的酸碱度(pH值)在人体三大调节系统的调节下，都会稳定在7.35~7.45之间，并不会因为吃某一种食物而改变。//4、醋泡食谱营养不变//比如“醋泡蛋壳可以补钙”，首先这种吃法非常不安全，鸡蛋壳上可能含有重金属或污染了沙门氏菌;其次补钙效果远不如喝牛奶。针对醋泡黑豆、花生、黄豆等吃法，高键说，如果偏爱这种口味没有问题，但不能轻言它们对慢性病有神奇疗效，更不能用其来代替正规治疗和正常膳食。//5、醋不是人人能喝//醋疗人人皆宜?事实并非如此，胃酸过多或者是有胃病的人要格外注意，直接喝醋会更刺激胃。糖尿病患者不要喝含糖量较高的保健醋、果醋;正在服药的人也要谨慎醋疗，以免影响药效。//6、醋饮料不可保健//每天喝瓶果醋，相当于喝醋保健?果醋只是沾的醋字的“光”，其实质只是饮料。酿造醋的价格不高，很多商家就在少量普通食醋基础上加入别的食材，如大枣、桂圆、山楂等，或者添加水果汁、食用甜味剂等成分做成醋饮料，如苹果醋、梨醋来炒“概念醋”，抬高价格。其实，这类醋饮料已经没有了传统酿造醋成分和营养。如果宣称是保健醋，就应取得保健品批号。//大家在买醋的时候要注意看清标签，建议选酿造醋(即以粮食、麸皮、豆类等为主要原料，经发酵工艺酿造而成)，这样才能把醋的营养吃全，尽量不要选配制醋和勾兑醋(酿造食醋与稀释后的食用醋酸混合配制而成的调味醋)。一般来说，执行标准是GB18187的是酿造醋;SB/T10337则是配制醋;而如果标为“Q/”开头的，可能是以醋为主要原料，添加了其他成分的产品。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161122/979c426d77ab961fda93a5516dea5baa.jpg', 'http://images.meishij.net/p/20161222/cc1d8fdf02ae8eea20ff37358d4d6f36_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (66, '办公室常备3类健康零食', '2018-06-01', '原标题：枸杞护眼黑巧克力提神 办公室常备3类健康零食//眼睛干涩、肚子饿、感觉身体被掏空没点精神，相信很多上班一族经常会有这些感觉。每到这种时候，除了必要的休息之外，吃零食是很多人的选择。不过，零食虽然要吃，但要吃的健康哦。//办公室常备3类健康零食//护眼零食：枸杞、蓝莓//枸杞自古有“红宝”之称，它富含的天然色素β胡萝卜素作为维生素A的前体，可预防维生素A不足，能护眼明目。长时间注视电脑、电视、游戏机等，都会使得维生素A消耗量增大，要格外注意补充。蓝莓富含花青素，具有保护微血管改善眼睛供血的作用。//解饿零食：全麦面包、坚果//全麦面包属于复合性碳水化合物，不会让血糖快速波动，且高纤维会带来饱腹感，让人不容易饿。原味花生、杏仁、核桃等各种坚果含有丰富的植物性蛋白质、健康的不饱和油脂及纤维，可提供饱腹感，延缓胃排空的速度。但坚果的油脂太多，每天只宜吃一汤匙的量，否则容易增肥。//提神零食：绿茶、黑巧克力//绿茶含有茶氨酸，这是一种有放松大脑功效的抗氧化剂，能让人迅速从紧张焦虑中解脱出来。绿茶中富含的咖啡碱能促使人体中枢神经兴奋，起到提神益智的效果，但不建议喝绿茶饮料。研究显示，黑巧克力能增加大脑供血，每天仅需吃9.3克黑巧力就能预防年龄增加导致的记忆衰退。此外，黑巧克力还能刺激大脑释放感觉良好的化学物——神经介质，让人注意力更集中。//除了以上的3类零食之外，很多办公族会经常觉得焦虑、压力大，这种时候，可以吃一些具有缓解焦虑和压力的食物。//5种食物缓解焦虑和压力//1、 香蕉。香蕉中含有一种称为生物碱的物质，可以振奋人的精神和提高信心。而且香蕉是色胺酸和维生素b6的来源，这些都可帮助大脑制造血清素。//2、  樱桃。樱桃被西方医生称为自然的阿斯匹林。因为樱桃中有一种叫做花青素的物质，能够制造快乐。密芝根大学的科学家认为，人们在心情不好的时候吃20颗樱桃比吃任何药物都有效。//3、  葡萄柚。葡萄柚里含高量的维生素c，不仅可以维持红细胞的浓度，增强身体的抵抗力，而且维生素c也可以抗压。最重要的是，在制造多巴胺、肾上腺素时，维生素c是重要成分之一。//4、  芹菜。压力影响睡眠，你会发现还没入睡多久就醒了，这是一种常见的高压症状。芹菜中的色氨酸有助于身体产生大脑血清素，对维持积极的情绪以及健康的睡眠是必不可少的。芹菜梗加上无糖花生酱可以帮助保证整晚的睡眠质量以及维持血糖水平在一常量。//5、  牛奶。钙是天然的神经系统稳定剂。人在受到某种压力时，通过小便排出体外的钙就会增加。因此，备战考生要注意选择含钙高的牛奶、酸奶、虾皮、蛋黄等食物，有安定情绪的效果。//来源：家庭医生在线//', 'http://images.meishij.net/p/20170105/fff26e589d9fb49e42bacc101f6aac61.jpg', 'http://images.meishij.net/p/20161221/ae782140bd8c12fe3a84f724393574ac_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (67, '你被“食品安全新闻”坑过吗？', '2018-04-01', '11月20日，由国家食品药品监督管理总局新闻宣传中心、中国食品工业协会主办的2016食品安全科普创新竞赛启动仪式在北京大学新闻传播学院举行。国家食品安全风险交流中心的钟凯博士在启动仪式上给准备参与竞赛的大学生分析了那些年食品安全新闻背后的故事。看完这些故事，你就会发现，这个世界上最远的路，就是食品安全新闻背后的套路。比如螃蟹里的二噁英哪里来的?鸭血里检出猪的DNA能说明什么?是“毒豆芽”新闻反转的快，还是转基因大豆更扑朔迷离?//螃蟹里的二噁英是“人为添加”//螃蟹里怎么会有二噁英，是不是有人故意添加的?其实也算是，主要是人为添加到环境中去的，比如你早上刚扔掉的那袋子没做分类的垃圾。//如果垃圾燃烧时的温度不够，也会产生二噁英。而之所以常常无法达到高温就是因为我们垃圾中的水分太多。说白了，还是我们分类垃圾形同虚设惹的祸。厨余垃圾混在其他类别的垃圾中，导致了垃圾燃烧的不充分。//另外，越南战争的时候，美军使用一种叫“橙剂”的落叶剂去杀死树木，以对付丛林里的越南游击队。而这个“橙剂”里面就有二噁英的杂质。“橙剂”不止污染了植物土壤和水源，也导致了当地的越南小孩身体的畸形。//此外，还有一些其他的形式会导致二噁英混入我们的环境中去，但从来都没有人专门去生产二噁英。所以，不要再问二噁英怎么会跑到螃蟹里，螃蟹是不愿意的，环境也是不愿意的，还不是我们人类同胞惹的祸?不过好在这次事件中，螃蟹中二噁英的含量，正常食用螃蟹的情况下不会造成健康问题。//鸭血里有猪的DNA要怪案板//前几年曾有条新闻，通过给几家比较知名的火锅店里的鸭血测DNA，结果发现有猪的DNA，就表示鸭血中含有猪血。//其实，平时常下厨房的人都知道，流水的菜肴、铁打的案板。一道一道菜地做下来，案板上会留下很多不同食材的碎屑。而DNA检测是非常灵敏的，那些先后在菜板上粉墨登场的食材的DNA自然就“交叉感染”了。//这个新闻最后的结局也是一样，的确是猪肉类菜肴的DNA沾到了鸭血上，所以才会导致检出了猪的DNA。因此在没有还原“案发现场”之前，我们又被所谓的因果联系给忽悠了。其实，可以测测里面有没有人的DNA，说不定标题党们会搞出更大的新闻。//“毒豆芽”的冤假错案//其实，那些年“毒豆芽”以及各种导致性早熟的食物谣言，都是因为大家没正眼看待“植物生长调节剂”。有人觉得植物生长调节剂不就是植物激素嘛。行，你可以这么说，但是你说吃了植物激素人类就会性早熟，那就是扯淡了。花粉是植物的精子，你吃了花粉会怀孕吗，生出来的难道是葫芦娃?//当年，“毒豆芽”事件让上千人被抓，而所谓“嫌疑犯”们最后都被释放。事实上，合理使用植物生长调节剂不会对人类健康造成严重危害，而是让我们的食物生长得更好，也让我们的食物成熟期能够被控制，以方便采摘。//美国转基因大豆真是喂猪的//有人常常拿“美国的转基因大豆都是喂猪的，只有中国人当食物”说事儿。其实，这句话也不全错。根据美国农业部的数据显示：美国的转基因大豆中80%是豆粕，20%是油脂。豆粕中97%用来做动物饲料，3%做食物。而油脂中68%都是用于食物的。所以你可以说美国的转基因大豆的豆粕都是用来喂猪的，就像你也得承认美国转基因大豆的油大部分是用来喂人的一样。//其实，你可能不知道的是中国进口的美国转基因大豆大部分也是用来喂猪的。为什么要进口美国的大豆喂猪，因为你们爱吃猪肉呗!如果你去查一下中国人每年吃掉的猪肉量，你就会发现需要多少饲料了。文/本报记者  张艳艳//来源：北京青年报//', 'http://images.meishij.net/p/20161206/8346aceb273dd8e628a259d1605824a0.jpg', 'http://images.meishij.net/p/20161219/2963f6c85b0bfff744f59b31073d944d_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (68, '橘子吃多变“小黄人”?', '2018-05-01', '原标题：橘子吃多变“小黄人”?关于食物“重口味”知识//作为“大吃货帝国”的一员，我们总能看到很多因为“吃”引发的新奇事儿。近日，一位爱吃橘子的女士就因为橘子吃太多而全身发黄。此外，有些人吃了红心火龙果后发现自己排泄物的颜色也变得红红的，还有些人吃了金针菇后发现它在自己体内转了一圈后原封不动地出现在了粪便里。那么，这些“怪事儿”后面的原因是什么?//橘子吃多了会变“小黄人”?//橘子吃多了变成“小黄人”，这是得了橘黄症。据范志红介绍，橘子里含有胡萝卜素，吃太多后人体摄取的胡萝卜素无法排出，都囤积在皮下脂肪中，因此皮肤会发黄。“理论上来说，吃太多含胡萝卜素的食品，如南瓜、胡萝卜、芒果和红心红薯等，人人都会有变黄的现象，因此在食用时应注意控制分量。橘黄症除了影响美观外，对人体健康并不会有什么危害，如果皮肤变黄，不吃肤色会慢慢恢复正常。”范志红说。//事实上，胡萝卜素对人体是有好处的，摄入正常分量的胡萝卜素后脸上会有红黄的表现，这种情况其实是正常的，范志红补充说。//吃了红心火龙果会“尿血”?//范志红表示，吃了红心火龙果后排泄物变红，其实是甜菜红素在“作祟”。不过，有人是尿液发红，而有的人是粪便发红，关于两者之间的差别，范志红解释说，一般情况下，通过粪便排出的是人体没有吸收的物质，通过尿液排出的是人体吸收了的物质，人体对甜菜红素的吸收率本就不高，没吸收的部分会通过粪便排出，吸收后没有代谢为其他物质的部分则会从尿液里排出。此外，范志红说，紫红色的花、红甜菜和红菜头等里也含甜菜红素，除甜菜红素外，会导致人的排泄物变色的物质还有叶绿素。//金针菇“See you tomorrow”的外号是怎么来的?//想必大家都知道金针菇的美名“See you  tomorrow”了，这个外号来源于它吃进去后还会被原封不动地被排出来的特性。范志红介绍，这是因为金针菇难以被人体消化。它的膳食纤维含量特别高，且纤维的筋的韧性比较强，不好嚼烂，进入人体后体积大，一般来说，体积大的纤维对肠道的促进效果较好，对人体有防便秘、促进肠胃蠕动、调节免疫等功效。//看了这些“重口味”的小知识，你知道该怎么科学地做一个“大吃货”了吗?//来源：人民网//', 'http://images.meishij.net/p/20161227/afd28dd57da935480e8e84abf0a6fe40.jpg', 'http://images.meishij.net/p/20161215/f8f02278da13774b923ac151180857f4_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (69, '辟谣：螃蟹注水，不为增重', '2018-11-01', '每年秋季，“商家给螃蟹打针注水”的视频就会在网上疯传，让吃货们很担心。网帖说，这是不法商贩为了提高螃蟹的活力，增加重量。有消费者表示，买螃蟹时看到过蟹壳上有针眼大小的小孔，怀疑就是商贩用针筒注水后留下的。//近期，杭州市市场监督管理局委托第三方检测机构做了一场模拟实验，给螃蟹注射自来水和生理盐水。//浙江公正检验中心工作人员事先准备了4只鲜活的大闸蟹，第一组实验对象是两只母蟹，注入的是自来水。工作人员用针筒抽取10毫升自来水，分别注入，其中母蟹一从背部注入，母蟹二从腹部注入。笔者看到，10毫升自来水并不能完全注入，至少有一半溢出。刚才还在奋力挣扎的螃蟹，注水后，几秒钟工夫就没了活力，明显“蔫”了。8分钟后，两只螃蟹一动不动，约15分钟后，彻底死亡。第二组实验用的是生理盐水。重复上述步骤，两只公蟹同样增重不明显，且在注水后丧失了动力，其中公蟹二一直在吐水沫。大约过了二十分钟，两只螃蟹相继死亡。//“注水螃蟹、针眼螃蟹，其实是流传多年的谣言。通过实验可以表明，注水并不能给螃蟹增加多少重量，而且注水后螃蟹的内分泌会失去平衡，过不了多久就会死亡。”杭州市市场监督管理局宣传与应急管理处处长蒋荣祥说。//市面上买到过带针眼的螃蟹，又是怎么回事呢?蒋荣祥介绍，这是因为螃蟹在捕捞、运输过程中相互挤压，蟹壳、蟹脚扎到其他螃蟹的身体，产生扎孔，看起来就像针眼一样。//而对于网上流传的商家用注射器往螃蟹体内注射液体的视频，蒋荣祥表示，这其实是一种烹饪手法，将作料提前注入螃蟹体内然后马上烹饪，并不是为了增重。//来源：钱江晚报//', 'http://images.meishij.net/p/20161010/2d993eba32dc38794ca97f157900d94f.jpg', 'http://images.meishij.net/p/20161213/d0c489cdd9a4c7fa881bb46d5b5f716e_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (70, '睡觉打鼾吃什么好？', '2017-07-01', '原标题：睡觉打鼾危害大 喝豆浆能治疗吗?//睡觉打鼾不仅危害自身的健康，还会打扰到其他人睡觉，这可怎么办呢?别担心，在我们的餐桌上有很多食物都可以帮你缓解这种症状，今天就来为你总结一下可以缓解打鼾症状的食物吧。//睡觉打鼾吃什么好//豆浆。对打鼾的人来说，豆浆是比牛奶更好的选择。因为牛奶等乳制品会在呼吸道内形成黏液，成为几种呼吸疾病的根源之一。过量饮用牛奶还会生痰，造成呼吸道充血堵塞。还有些人对乳糖有过敏反应，导致鼻腔肿胀，从而引发打鼾。//茶。茶有助于减少堵塞和痰液，从而减轻打鼾。用来泡茶的开水释放出蒸汽，能减轻吸气时的鼻塞。饮茶时，来自茶叶的水汽能舒缓发炎的鼻腔，稀释黏液，改善鼻腔引流。喝薄荷茶对防止打鼾的效果最好，因为薄荷是一种天然的减充血剂，能缓解鼻黏膜肿胀。//蜂蜜。睡觉前把蜂蜜搅拌在茶水中喝，有助放松喉咙，减轻充血肿胀，从而防止打鼾。蜂蜜同时具有抗菌和抗炎特性，能帮助减轻喉咙部位的堵塞充血。一项研究成果表明：蜂蜜有助于抵抗感染，舒缓发炎的黏膜，促进喉咙和上呼吸道的通畅。//姜黄。姜黄的抗炎特性对抵御炎症有益，特别是在防治打鼾方面。姜黄的活性成分(姜黄素)是一种具有强效消炎作用的抗氧化剂，它的副作用很小，能够安全、自然的缓解堵塞。姜黄在菜市场调料柜台和一般中药店都有卖，可以直接煮水喝，也能用来做菜熬粥。//鱼肉。把吃红肉的习惯转为吃鱼肉，能让人晚上睡个安稳的好觉，而且不打鼾。红肉中的饱和脂肪会刺激鼻腔，因为饱和脂肪会生成大量的花生四烯酸，这会进一步生成前列腺素，而前列腺素会导致喉咙和鼻窦组织肿胀。相比之下，食用来自于鱼肉和豆类的蛋白质不会增加前列腺素的含量，而且鱼肉中的脂肪酸有助于减轻炎症。//洋葱。虽然食用洋葱后的口气不好，但它却是克服打鼾的救星;因为洋葱具有抗炎特性，有助于清理鼻道，从而让更多的空气通过。//除此之外，还有食疗方也可以帮你缓解打鼾的症状。//睡觉打鼾的食疗方//当归和龙胆草：将当归跟龙胆草放在一起浸泡一个小时以上，快火烧开，慢火20分钟。然后倒出药水再用同样的方法熬第二遍。将两遍的药水混在一起分两次服用。睡前服用，连服三晚。//花椒：花椒要5-10粒，睡前用开水浸泡，等到开水完全凉透以后服下(不包括花椒)，连服5天。//枣仁：将枣仁炒熟，每晚睡觉前先洗脚，然后口嚼80-100粒，连续九天。//葱白：选取三个葱白，每9厘米算一个单位，每晚睡觉前嚼咽，连续七天。//花椒泡水：花椒5～10粒，每晚睡前用开水泡一杯水，待水凉透后服下(花椒不服下)，连服5天。//睡觉打鼾，不如就试试以上方法吧。//来源：家庭医生在线//', 'http://images.meishij.net/p/20170112/1ad9fa73e229b80ba8956f3b83052431.jpg', 'http://images.meishij.net/p/20161212/70e8fbf7e4e9f18b9bc6d181b84722d9_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (71, '吃鸡蛋可降低中风风险', '2017-10-01', '吃鸡蛋可降低中风风险//原标题：美研究称每天吃鸡蛋可降低中风风险//新华社华盛顿11月1日电(记者林小春)《美国营养学院学报》1日发表的一项新研究说，每天吃一个鸡蛋，可以将罹患中风的风险降低约12%。//在美国鸡蛋生产商协会和美国鸡蛋委员会的资助下，美国流行病学数据研究所研究人员分析了1982年至2015年有关吃鸡蛋与冠心病及中风之间关系的多项研究，研究对象涉及近60万人。//结果显示，每天吃一个鸡蛋与冠心病风险之间不存在联系，反而能把中风风险降低约12%。中风是由于脑部供血受阻而导致的脑功能损失，冠心病是一种由于冠状动脉狭窄或阻塞引起的心肌缺血缺氧或心肌坏死性心脏病。//研究人员表示，鸡蛋含有许多营养成分，如蛋白质、抗氧化剂等，但还需要更多研究了解吃鸡蛋与中风风险之间的关联。//多年来，许多医生建议人们不要吃太多鸡蛋，一个原因是其中的胆固醇很高。但今年1月，美国政府在每5年更新一次的政府饮食指南中删除了胆固醇摄入量限制，这意味着不用担心吃鸡蛋。然而新版指南在美国国内引发争议，有非盈利组织称禽蛋行业对该指南发挥较大影响力，制定指南的咨询委员会中至少3人接受过禽蛋行业的资金支持，另一人直接由该行业提名。//来源：新华社//', 'http://images.meishij.net/p/20161103/97af0a1ffde2d64d21e32b6625a871b6.jpg', 'http://images.meishij.net/p/20161208/1921dd2877270c8982424a9e51bc98d8_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (72, '橙子皮泡水喝好处多', '2017-05-01', '原标题：橙子皮泡水可消食和胃 教你切橙子皮小窍门//橙子皮泡水会有哪些功效呢?很多水果都可以通过泡水的饮用，这样会具有很多意想不到的功效，橙子皮就是其中之一。今天，想要为大家介绍的就是橙子皮泡水的好处，一起了解了解吧。//橙子皮泡水的功效//消食和胃。相信大家对于消食健胃的这个功效是最为了解的。如果身体中出现了消化不良或者是胃胀等肠胃不舒服的情况，都可以将橙子皮泡水喝，能够很好的缓解症状。除了自己制作橙子皮茶之外，也可以服用一些市面上制作好的橙子皮，这样健胃消食的效果也很不错。//化痰降逆。橙子皮是一味中药，取出之后晒干保存起来。如身体出现了痰多、咳嗽的毛病，取出适量的橙子皮泡水喝或者是直接服用都可以，能够很好的起到治疗效果。//治疗胸膈气滞。中医方面认为，橙子皮泡水喝之后具有理气化痰的作用。所以说，在身体出现了胸闷气滞的毛病之后，可以直接服用橙子皮茶，能够快速的令身体恢复健康。//杀鱼蟹毒。很多人在吃了海鲜之后身体会出现中毒的情况，例如皮疹、肚子疼以及拉肚子等等，特别是吃了一些螃蟹或者是海鱼之后，这个时候可以泡上一杯橙子皮茶，能够很好的解决问题。//清新提神。研究发现，橙子皮中除了含有大量的胶质以及维生素C之外，香精油的含量也非常的可观。为什么橙子皮中会散发出一股淡淡的香味，这是因为橙子皮中含有香精油所导致的。这种香精油具有提神醒脑以及清新空气的作用，适合放在密闭空间。另外，很多人坐汽车之后会出现晕车的情况，这个时候闻上一会橙子皮，晕车的情况也能够得到治疗。//那么，要如何切橙子皮呢?//切橙子皮的方法//可把橙子放在桌面上，用手掌压住慢慢地来回揉搓，只要用力均匀地揉搓一会儿再剥，橙子就会像橘子一样容易剥皮，吃起来既干净又方便。//将橙子一只手掌按住放在桌面上，均匀揉搓，如果橙子表面用手按压微微有点软了，基本上就可以了，然后在靠近肚脐(就是地下那个象肚脐一样突出的地方)的地方用小刀轻轻划一个小口，切忌不要太用力划的太深了，用手轻轻的顺着切口剥开来就可以了。//不锈钢小勺子剥橙子皮，取一个长柄汤匙(最好是不锈钢的小勺子)，将橙子的顶部用刀切或者用小铁勺切下一小块，将汤匙沿着切开的地方，慢慢插入橙皮与橙肉的中间部分，再用力将汤匙顺着皮与肉之间的部分缓缓滑动，就可以轻松将橙子完整地剥出来，而且速度非常之快。//只要将叉子沿橙子横着的一周插进去，然后划上一周，划完以后橙子皮就变成上下两半球了，这时你再一手握上半球，另一手握下半球，两手同时向相反方向拧几下，最后你会发现上半球的橙子皮会很轻松地剥下来，而下半球的橙子皮也会很轻松地剥下来。//最后，再来看看橙子皮的食用禁忌吧。//橙子皮的食用禁忌//一个小时以内不要喝牛奶。为什么服用了橙子皮茶之后不要喝牛奶呢?这是因为橙子皮中含有果酸，而牛奶中则是大量的蛋白质，这两种物质结合之后就会凝固，不仅影响了消化，同时还会影响身体对于营养物质的吸收。//服用要适量不能够贪多。橙子皮虽然服用之后对身体好处多多，不仅能促进消化保健肠胃，同时还有美容养颜的效果，但是并不是喝越多越好。建议大家平时在喝橙子皮茶的时候一定要适量，选择科学的服用方法，不要贪多，避免导致身体健康受损。//喝完橙子皮茶之后要刷牙。建议大家在将橙子皮泡水服用之后要清口腔，最好要及时漱口，避免对牙齿造成危害。//选择合适的橙子皮。现在的很多橙子都是撒上农药，市场上购买来的橙子很多也是进行了打蜡或者是喷洒了保鲜剂，这些物质很难能够使用清水就洗干净的。所以说，平时购买来的橙子最好不要制作出橙子皮泡水喝，因为不干净。//橙子皮泡水好处多，不过禁忌也不能忘哦。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161011/7cca169c9aff32f682e482fc8a987d0c.jpg', 'http://images.meishij.net/p/20161206/ae37c3542dcfbeae9f4c7fc711db7550_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (73, '肉松面包没肉松？', '2018-05-01', '原标题：“肉松面包没肉松”别只当段子看//市面上销售的绝大多数肉松类产品配料为“猪肉味豆粉松”，这种豆粉松“原料跟猪肉无关，是豌豆粉加猪肉香精混合而成”。加入了少许肉粉的豆粉松“假扮”肉松做内馅儿，几乎已是烘焙行业内公开的秘密。厂商为了降低成本，使用的并非真正肉松。专家表示，目前国内肉松类制品尚无统一标准，如果以豆粉或肉粉松为配料，但产品名称却打着“肉松”的名义，将涉嫌欺诈消费者，可向相关部门举报。(11月7日《北京青年报》)//肉松面包里面居然没有真肉松，这个爆料令网友大吃一惊，这么常见的食品原料，居然也有“水分”了。可也有部分网友调侃，这算啥事呢，鱼香肉丝里也没有鱼、老婆饼也不送老婆，如此看来，肉松面包里没真肉松，似乎也不算稀奇了。好在这只是个段子，绝大部分人还是很愤怒，这分明是在忽悠消费者，商家玩弄文字游戏，利用信息不对称优势牟取暴利，理应予以处罚才对。//而对于消费者和监管部门来讲，也别把“肉松面包没肉松”当做段子看，需要看到背后潜藏的问题，及早拿出解决问题的方案，以堵住这个漏洞，规范肉松食品的市场，维护消费者的合法权益不被侵犯。//从媒体揭露的情况看，肉松是由鸡肉、猪肉或牛肉等肉类除去水分后制成的粉末，但“肉粉松”则是由豌豆粉混合了部分肉粉等制成，两者的制作成本和营养价值差距较大。虽然“肉粉松”也是可食用商品，只要严格按照规范生产配比，也就不存在质量问题，可是拿“肉粉松”鱼目混珠替代肉松，却不在包装显著位置上标明，则存在误导消费者之嫌。甚至于部分商家用低廉的“肉粉松”加工食品，却卖出高价的肉松食品价格，则就涉嫌以次充好、非法牟利了。//现在肉禽原料价格较高，要是用纯肉制成肉松，“基本上2.5斤肉才能生产出1斤肉松”，其价格自然要达到数十元一斤，对于商家而言，成本就上来了，也就产生用廉价的肉粉松替代的动力。相比之下，肉粉松才几元、十几元的价格，也能达到“吃出肉味”、“吃出纯肉松的丝状感”的地步，从而忽悠不明真相的消费者，误以为买到物美价廉的肉松食品。可见，如果不注明肉粉松食品的话，就属于欺诈行为，需要改变这种不规范的标注。//据专家所言，目前肉松原料有行业标准，但肉松类制品没有统一的国家标准，这就给部分商家留下可乘之机，出现打着“肉松面包”的招牌卖着“肉粉松”产品的乱象。可见，肉松类制品国家标准的缺位，乃是最关键的问题，不仅监管部门难以出手遏制，亦纵容奸商浑水摸鱼赚取暴利。因此，急需将肉松类制品的国家标准“短板”补上，明确肉松与肉粉松在食品加工领域的使用规范，以及食品名称、包装、配方等方面的标注标准，从而用标准约束市场乱象，也使得监督部门能够依规查处。(江德斌)//来源：北京青年报//', 'http://images.meishij.net/p/20161108/7ce28ee613531fcd2ba1876728a4c015.jpg', 'http://images.meishij.net/p/20161206/17d854c44361daafe31651f67cd32b0a_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (75, '冬枣上市，如何鉴别“糖精枣”', '2017-05-01', '原标题：冬枣上市，传言跟着来 网传制作“糖精枣”的方法靠谱吗?//这个十一长假，水果摊上新上市的冬枣受到市民欢迎。然而，大家一边吃着香甜的冬枣，却又不断听到“糖精枣”的传言。//扬子晚报消费评审团栏目的记者特意从市场上买来冬枣，用网传制作“糖精枣”添加剂的糖精钠和甜蜜素进行实验，看看这“美容”过的冬枣究竟看相口感如何，消费者应该如何鉴别。//市民抱怨//我买到的冬枣 怎么会越吃越苦//“我买到的冬枣怎么都是全红的?”从淘宝店家拿到冬枣，消费者徐先生有些纳闷，因为他所收到的冬枣大部分都是全红的。他有点怀疑自己是不是收到了“催熟”的糖精枣。//徐先生说，收到枣子之后他和淘宝店家的客服取得了联系，对方信誓旦旦地说，枣子肯定是现摘的，但是当徐先生吃了几颗冬枣之后却更添怀疑，因为枣子看起来果皮缺少光泽，吃起来也是干巴巴的。//“我后来将自己的观感和冬枣的照片发到了留言栏，大家都赞同我的观点。”徐先生说，有的网友提出看见他的图片感觉这冬枣的红颜色有些不正常。//无独有偶，南京市民邹女士也告诉扬子晚报记者，她前两天也买了两斤冬枣，可是吃了五六个以后，就感觉枣不仅没有了刚入口时甜甜的口感，反而越吃越苦。当时她还只是觉得可能就是这枣口感不好，后来看朋友圈才知道有种“糖精枣”，回想起那种皮甜肉不甜的口感，她怀疑自己是不是也“中招了”。//实地探访//糖精钠价格高 甜蜜素反而卖得好//长虹路市场是南京调味品批发的集散地，在这里买糖精枣的主要原料“糖精钠”却并不容易。扬子晚报记者接着跑了好几家店铺，店里面却没有糖精钠在卖。一位老板询问记者用糖精钠做什么。记者表示想用来泡水果。老板笑着说，现在很少有人用“糖精钠”了，因为这种材料不仅价格高，而且泡的时候味道容易发苦，因此普遍都用甜蜜素来替代了。//在另外一家调味品摊位，上述老板的话得到了证实。在这里扬子晚报记者买到了500克的“糖精钠”售价是40元，而与之效果类似的1000克甜蜜素的售价却只有17元。这位老板表示，包装上面有具体的使用方法和用量可以照此操作。他再三嘱咐记者，用甜蜜素的效果应该比较好，性价比也高。//记者实验//网传的糖精枣究竟是咋样?扬子晚报记者买来了糖精钠和甜蜜素，于是记者便开始按照网上所传的“糖精枣”的制作秘方，对冬枣进行相关处理，探究区分“糖精枣”与正常枣的方法。//1 热水+糖精钠+冬枣=“糖精枣”?//实验材料：糖精钠、冬枣、沸水//实验过程：以冬枣为原料，进行热水烫、糖精钠溶液泡两道工序处理后，观察其品质变化情况。//实验结果：放入沸水中两分钟，冬枣的颜色开始趋红，呈现一种黄褐色;在浸泡了10个小时之后，呈现黄褐色的冬枣颜色并没有明显变化，不过表面因为经过沸水浸泡而有褶皱，而正常枣比较硬，表面光滑。//口感：热水浸泡后的“糖精枣”表皮变软，枣子的皮是甜的，摸起来有些黏，枣肉口味虽然是甜的，但却能吃出苦味。//结论：这种方式做“糖精枣”并不靠谱，表皮经沸水加温后，果肉不清脆，而且颜色也并不会明显变红。//2 热水+甜蜜素+冬枣=“甜蜜素枣”?//实验材料：甜蜜素、冬枣、沸水//实验过程：以冬枣为原料，进行热水烫、甜蜜素溶液泡两道工序处理后，观察其品质变化情况。//实验结果：在放入沸水中后的两分钟，冬枣的颜色也开始趋红，呈现一种黄褐色;在浸泡了10个小时之后，呈现黄褐色的冬枣和此前实验中的“糖精枣”颜色一样，并没有明显的变化，不过表面因为经过沸水浸泡而有褶皱，而正常枣比较硬，表面光滑。//口感：热水浸泡后的“甜蜜素枣”表皮变软，枣子的皮是甜的，摸起来有些黏，枣肉的甜吃起来有些腻。//结论：这种方式做“糖精枣”并不靠谱，表皮经沸水加温后，果肉不清脆，而且颜色也并不会明显变红。//3 冷水+糖精钠+浸泡=“红色糖精枣”//实验材料：冬枣、糖精钠、冷水//实验过程：以冬枣为原料，放入糖精钠，随后注入自来水(常温)，搅拌溶解后，将冬枣放入水中静置，观察枣皮表面颜色变化。//实验结果：和经过加温的冬枣相比，常温水状态下的冬枣刚开始的颜色并没有发生很快变化，然而5个小时之后，原先青色的枣子表皮出现了红色环状斑纹，红色有明显的分界线，而10小时过后，变成了红色冬枣。//口感：枣的表皮较甜，枣肉依旧清脆，但是枣子的清香不浓，糖精钠的甜味已经渗透到枣肉当中。//结论：这种方式真能做出“糖精枣”，不过枣子的口味会受影响，自然的清香会被人工甜味所掩盖。//■教你一招//泡过的冬枣，切开会有腐化痕迹//这3个实验证明，冬枣经过一定的处理确实可以变成有甜味的冬枣。由于糖精钠对人体健康有害无益，因此消费者在选购鲜枣的时候一定要注意。//糖精钠浸泡过的枣表面略软，而正常的枣则较为坚硬，切开后观察断层会发现，糖精枣的断层与果肉有浸泡腐化的痕迹，而正常枣则没有，这种现象在放置10个小时以上的糖精枣上更为明显。//此外，“自然发育”的冬枣并没有浸泡后明显的分界线，它的分界线边缘是不整齐的，仔细观察则是呈“斑”状分布。如何鉴别，建议首先要看颜色，“糖精枣”遍体暗红，色泽并不光亮，而天然枣色泽鲜亮，红得不均匀。其次用手摸，“糖精枣”表面发黏，用手捏会发软。最后可以用舌头舔，“糖精枣”的表皮很甜，甚至发苦。//■大众评审//流动摊贩的冬枣 最好不要买//水果店负责人王老板：其实枣农如果要制作大量的“糖精枣”，需要特殊的场地、设备和人力，这个成本会很高，而且我们在收货的时候也会进行检验。如果经销商在收枣后再拆箱、加工“糖精枣”，会增加无谓的成本，这也不大可能。我认为，从流通环节来看，最容易出现“糖精枣”的是早夜市小商贩，因为他们加工的量少且成本低，能让枣看上去更红更讨人喜欢，还能增加分量提高收入。//糖精钠泡枣属于滥用添加剂//大学食品系老师刘丽：网上很多文章提到糖精枣的时候，都会捎带着写出糖精钠的危害，这本身没错，但是不专业，因为光说成分不提剂量就有些吓人了。//首先，需要明确的是糖精钠和甜蜜素都是合法的食品添加剂，只是需要指出的是，这两种添加剂都不允许添加在水果当中，因为这样做如果要达到增甜的效果，很难对剂量的多少进行控制。//其次，糖精钠和甜蜜素的摄入量是有严格规定的，摄入多了对人体是有危险的。根据常识，加工后的“糖精枣”的糖精钠基本上都附着在枣的表面，其实经过清洗后所剩无几，还是建议消费者应该对买来的冬枣进行认真清洗。(扬子晚报全媒体记者 陈郁)//来源：扬子晚报//', 'http://images.meishij.net/p/20161008/242f608fc782327845378509ef46cd9a.jpg', 'http://images.meishij.net/p/20161129/69088c7e30cd2fa3b2fbce2e15f5c54b_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (76, '3个步骤做出美味鱼香肉丝', '2017-07-01', '原标题：简单3个步骤 教你美味鱼香肉丝的家常做法//如何做一道超级好吃的鱼香肉丝?很多人去餐厅的时候，都会点一道鱼香肉丝做下饭菜。鱼香肉丝是常见的川菜，看起来似乎很复杂，但是做起来，可是又有成就感，又能享受到美味哦。//鱼香肉丝的来源//相传很久以前在四川有一户生意人家，他们家里的人很喜欢吃鱼，对调味也很讲究，所以他们在烧鱼的时候都要放一些葱、姜、蒜、酒、醋、酱油等去腥增味的调料。//有一次晚上这个家中的女主人在炒另一只菜的时候，她为了不使配料浪费，她把上次烧鱼时用剩的配料都放在这款菜中炒和，当时她还以为这款菜可能味不是很好吃，可能家中的男人回来后不好交待，她正在发呆之际，她的老公做生意回家了。这个老公不知是肚饥之故还是感觉这碗菜的特别，而他还没等开饭就用手抓起就往嘴中咽，还没等一分钟，他迫不及待地问老婆此菜是用何做的，她刚在结结巴巴时，她意外地发现其老公连连称赞其菜之味，她老公见她没回答，又问了一句“怎么好吃是用什么做得”，就这样老婆才一五一十地给他讲了一遍。而这款菜是用烧鱼的配料来炒和其它菜肴，才会其味无穷，所以取名为鱼香炒，而得此名。//后来这款菜经过了四川人若干年的改进，现已早早列入四川菜谱，如鱼香猪肝、鱼香肉丝、鱼香茄子和鱼香三丝等。如今因此菜风味独特，使各地的人们所欢迎而风靡全国。//鱼香肉丝的做法//准备食材//食材 里脊肉、木耳、冬笋//配料 泡椒、葱姜蒜、淀粉、盐、酱油、香醋、白糖、料酒//第一步 备菜//里脊肉横向切成片，再切成火柴棍大小的肉丝，调入半小勺盐和一小勺淀粉，搅拌均匀腌制片刻;冬笋和黑木耳切丝，过滚水烫熟备用;泡椒剁碎，姜蒜剁碎，葱切碎。//第二步 调鱼香汁//一汤匙酱油，一汤匙香醋，一汤匙料酒，一汤匙半白糖，两汤匙水淀粉，调成鱼香汁。//小贴士：酱油：香醋：酒：白糖：水淀粉=1：1：1：1.5：2//第三步 翻炒//大火将锅烧热，倒油，待油温烧到六成热下肉丝滑炒。//滑炒到肉丝变白，加入泡椒和姜蒜，翻炒约两分钟，炒出红油。//小贴士：葱姜蒜的比例为3：2：2，姜蒜要剁碎，同泡椒一起下锅炒到香酥，炒出辛香味，同时让人吃到嘴里后又不觉辛辣。//将笋丝、木耳丝放入翻炒几下，倒入鱼香汁和葱末，翻炒均匀即可出锅!//小贴士：葱要最后和鱼香汁一起入锅，这样更能激发出鱼香汁那微妙的“鱼味”。//如何炒出好吃的鱼香肉丝//要炒出滋味浓郁的鱼香肉丝来，泡红辣椒很关键。//玉兰片是用鲜嫩的冬笋或春笋，经加工而成的干制品，由于形状和色泽很像玉兰花的花瓣，故称“玉兰片”。在市场有售，选购时选择呈玉白色或奶白色者，笋节紧密，笋肉厚，无硫磺味的。//木耳中的胶质可把残留在人体消化系统内的灰尘、杂质吸附集中起来排出体外，从而起到清胃涤肠的作用。对胆结石、肾结石等内源性异物也有比较显著的化解功能。黑木耳能减少血液凝块，预防血栓等病的发生，有防治动脉粥样硬化和冠心病的作用。它含有抗肿瘤活性物质，能增强机体免疫力，经常食用可防癌抗癌。//干木耳烹调前宜用温水泡发，泡发后仍然紧缩在一起的部分不宜吃。鲜木耳含有毒素不可食用。黑木耳有活轿抗凝的作用，有出血性疾病的人不宜食用。孕妇不宜多吃。//怎么样，试试看为家人做一道好吃的鱼香肉丝吧。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161117/32152f03c42347b06467721ce9df5a02.jpg', 'http://images.meishij.net/p/20161128/5d41ff055c0547d18f8723f5b65279fd_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (77, '食物掉地上5秒内捡起还能吃?', '2017-10-01', '如果家里有猫、狗等宠物的话，掉落在地上的食物最好还是别再捡起来吃了。//很多人可能从小就面临过这样的选择：拿着一样美味正准备大快朵颐时，却不小心失手让它掉在了地上，这时还可以捡起来吃么?从前，想捡起来继续吃的人用“不干不净，吃了没病”来安慰自己，但近年来，人们又听说了“5秒原则”——5秒内捡起食物，细菌就来不及“爬”上去。然而，这种说法真的对么?掉到地上的食物究竟还能不能吃?//细菌转移几乎立即发生//掉在地上的东西吃不吃，很多时候人们采用的是经验法则，取决于这样食品贵不贵、是否充饥必须或者地面的干净程度。而“5秒原则”似乎在告诉人们，只要“手速”够快，就能够捡回未被污染的食物。不过，“五秒法则”究竟是谁提出来的?//食品安全博士钟凯介绍，“5秒原则”其实是美国芝加哥一名高中生的猜想，她还因此获得了2004年的“搞笑诺贝尔奖”。而这样一个“不靠谱”的起源，似乎也注定了“5秒原则”没有科学性。//早在2006  年，美国克莱姆森大学的研究人员就用沙门氏菌做了研究，他们当时用香肠片测试了木头、地毯和瓷砖三种地面。结果发现，食物掉在地上的时间和沾染细菌的数量并没有明显关系，5秒、30秒和60秒的结果是差不多的，这也意味着“5秒原则”并不可靠。//探索频道的“谣言终结者”节目也做过类似实验，发现食物掉地上不到2秒钟就能沾染细菌。//美国罗格斯大学的一项研究中，研究人员用128种排列组合模拟“食物掉地上”的情形，每种情形重复测试20次，其中包括食物掉地上1秒、5秒、30秒和300秒的效果，结果发现细菌能在1秒内成功占领掉落的食物。//由此可见，细菌的转移几乎是立即发生的，就算你有闪电般的手速也没用。//湿度和水分更易转移细菌//如果时间长短和细菌转移没有必然联系，那么影响细菌转移的到底是什么因素呢?钟凯博士表示，细菌转移最重要的因素是湿度和水分，当掉在地上的食物是湿的，或者地面本身是湿的，这样的食物受污染风险大大增加。大肠杆菌、沙门氏菌和李斯特菌都非常喜欢潮湿的环境，它们会从水里吸收所需的营养，然后进行生长和繁殖。//比如，西瓜掉在地上不到1秒钟就可以沾染大量细菌，这是因为它表面的水分很多，而表面干燥的橡皮糖沾染细菌最少。而油性表面的影响要比水分小得多，同样的研究中，面包片和涂黄油的面包片沾染细菌的数量并没有明显差异。//其他影响细菌转移的因素则众说纷纭。罗格斯大学的研究人员认为，地面平整度也会影响细菌转移，平整光滑的瓷砖、不锈钢表面更容易让细菌沾染食品，这很可能是因为平整表面可以提供更大的实际接触面积，而地毯粗糙的纤维表面相对而言更不容易让细菌沾染食品。//而克莱姆森大学的研究人员则认为食物沾染细菌的数量主要取决于地面的清洁程度。地毯更有利于细菌存活，它的带菌量可以是普通地面的成百上千倍，因此，食物从地毯沾染的细菌可能比地板更多。//“捡着吃”最需提防致病菌//虽然掉到地上的食物会很快沾染上细菌，但这并不意味着吃掉以后就会立刻生病。这是因为，日常环境中存在的大多数细菌并不致病。地面通常比较干燥，而多数致病菌并不喜欢这样的环境，这也是为什么许多人吃了掉在地上的食物，却“不干不净吃了没病”的原因。//而人们对于“干净”的判断也很主观。根据专家们的说法，厨房和浴室的地板并不比家里其他地方更脏，水槽的受污染情况最严重。一般民宅内的细菌绝大部分是无害的，如果经常擦地、且更换拖布头保持拖布干燥，那家中地面的细菌密度很可能比你手上、手机或纸币上的细菌密度小。//虽然研究者们进行了大量实验，但仍没有就“吃下掉在地板上的食物会不会致病”给出明确答案。细菌的转移速度是次要的，更关键的是地上到底有哪些菌。//钟凯表示，总而言之，食物掉地上沾染细菌是不可避免的，最佳的选择当然是不吃，但如果你不介意吃一些无害的细菌，通常也不会有事。需要提醒的是，如果家里养了宠物或有老鼠光临，最好还是谨慎一些，因为它们更容易携带致病菌乃至寄生虫。//来源： 新闻晨报//', 'http://images.meishij.net/p/20161215/546b12c32c048f340573659c311024c6.jpg', 'http://images.meishij.net/p/20161122/fd5cbd59e8dcd65f7bba44e69019734d_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (78, '素食主义必备5种营养元素', '2017-07-01', '原标题：素食主义有益健康?5种营养元素必须补充//现如今，素食主义成为了流行趋势，很多人都提倡素食主义，认为这样对身体健康最有益。其实，素食主义也要注意补充一些营养元素，这样才能对身体健康起到良好的帮助。//素食主义必须补充的营养元素//铁：对女性来讲，铁的补充是十分重要的。根据美国宾夕法尼亚州立大学开展的一项研究表明，补铁能有效帮助女性集中精神与提升记忆力。由于植物只含非血红素铁质，不易被吸收，素食者以豆类和谷物蛋白质为主，而谷类和豆类食物却会阻碍人体吸收铁，因此素食者应注意从深绿色蔬菜摄取。此外植物性食物中的铁必须有维生素c协助才能转变成造血所需的铁，因此，你需要多吃一些同时富含铁质和维生素c的食物，如葡萄干、红枣等。红糖也含丰富铁质，素食者用红糖代替白糖是很好的方法。多吃含有维生素c的蔬果也能帮助身体吸收铁质。另外还要尽量避免与妨碍身体吸收铁质的食物一起吃，例如豆类、咖啡、茶等。//维生素b2：乳类品、全麦食品、深绿色蔬菜、豆类、干果类和芝麻等都是好的补救食物。适量地进食能够帮助你预防缺乏维生素b2而导致的贫血。//锌：黄豆制品、核果类、未精制的五谷杂粮、麦类、南瓜子和芥菜含有丰富的锌。如果家中有儿童食素的话，特别需要注意锌的摄取量，否则会影响发育。//钙：有一类纯素食者不吃食乳类产品，这容易让身体减少钙质的吸收。大家知道缺乏钙质，尤其是女性，中老年时容易患骨质疏松症。因此，要多食新鲜蔬菜、大豆和芝麻等含有丰富钙质的食物。//蛋白质：蛋白质是素食者最容易缺乏的营养成分，尤其是严格的素食者，还可能缺乏身体必需的氨基酸。因此，你可以将不同食物互相配搭，满足身体所需的蛋白质。谷类和豆类是最佳的组合，可以尝试红豆饭、八宝粥等。此外，有研究表明，红薯富含蛋白质，易于身体吸收，是素食者可以经常进食的好东西。//维生素d：骨骼疏松、佝偻病、骨骼结构脆弱及身体内磷和钙大量流失等都是缺乏足够的维生素d所致。由于植物性食物几乎不含这一元素，因此素食者可以通过鸡蛋、乳酪、牛奶等食物进行补充。此外，相对于食肉者，素食者一方面要多晒太阳，让人体自行合成维生素d，另一方面可以适时适量补充含有维生素d的营养保健品。//除此之外，有5种颜色的食物是素食主义不能少的。//素食主义多吃5种颜色的食物//红色：包括番茄、桑葚、大枣、山楂、红苹果、草莓等。红色食品富含番茄红素、胡萝卜素、铁和部分氨基酸，此类食品含有大量抗氧化剂，能够降低患上癌症等慢性疾病的危险。//黄色：主要指黄豆，包括豆类和豆制品，还有黄色的水果和蔬菜以及蛋类，如黄豆芽、金针菜、柿子、柑橘、南瓜、香蕉等。黄色果蔬的优势在于富含两种维生素A和D、纤维素、果胶，能消除体内细菌毒素和其他有害物质，很好地保护胃肠黏膜，对于防止食管癌、胃癌、肠癌等疾患发生有一定的作用。//白色：包括大米、白薯、山药、白萝卜、白木耳、白醋、火龙果、百合、茭白等。此类食品含有丰富的淀粉、糖分、蛋白质等，很多就是主食，它们能够为身体提供很多必要的营养物质，有助于提高机体的免疫力，防止肿瘤的发生。//绿色：主要指绿叶蔬菜和瓜果，主要包括芹菜、青瓜、菠菜、青椒、空心菜、绿豆、绿茶等。//黑色：指有保健功效的黑色食物，如香菇、黑木耳、紫米、黑豆、黑芝麻、紫菜等。//素食主义要有正确的饮食习惯哦。//来源：家庭医生在线//', 'http://images.meishij.net/p/20160928/6052a94bf426f02d5a500c3937255066.jpg', 'http://images.meishij.net/p/20161121/ddfa0fb88f5550ac45c93918c59911e5_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (79, '冻鱼保鲜保营养吗?', '2017-06-01', '最近关于活鱼的事儿备受关注，而当活鱼玩失踪的时候，内心感到最忐忑的恐怕应该是——冷冻鱼。//毕竟，国人在“吃”这件事情上从来都是条条大路通罗马。当活鱼买不到的时候，吃货的筷子也伸向了还没失踪的冷冻鱼们。谁叫鱼从古至今都是餐桌上的大菜呢，逢年过节、婚丧嫁娶少了谁都可以，但宴席中总少不了鱼。没办法，无论是想满足口腹之欲，还是想要获得丰富的营养，鱼在肉类家族里常常是“高畜一筹”。//但是有人会有这样的疑惑，冷冻鱼和活鱼比起来，营养价值是不是都给“冻”没了?//冷冻是一种重要的保藏方式//跟鸡鸭猪牛羊这类禽畜相比，鱼的肌肉组织含水量更多，可溶性蛋白质含量也更高，又富含不饱和脂肪酸，天然免疫物质少，鳃和内脏附着的细菌多。而鱼死后呈弱碱性，更加适宜细菌生长，也就更容易腐败变质。所以，机智的吃货祖先们为了把远方的鱼运到自己家的餐桌上，让更多的人品尝到不同品种的鱼肉的鲜美，就发明了冰鲜鱼和冷冻鱼。//冰鲜鱼是采取加冰降温的方式，让鱼在死后的僵硬期延长，相当于让鱼体细胞的生理状态“定格”在死亡的瞬间。所以冰鲜鱼的口感和味道跟活鱼比较相似。//但是冰鲜鱼也只能保存几天而已，而我们想吃到从遥远海域捕捞到的鱼种，就得依靠更长期、更稳定的保藏方式。在冷冻状态下，酶的活性和微生物的生长都被抑制，鱼的保质时间也大大延长，通常可达数月。所以冷冻鱼的出现正是为了能够让我们品尝到遥远海域的鱼种。//冷冻不影响核心的营养价值//但对于大家来说，最关心的还是冷冻之后的鱼肉跟活鱼相比发生了什么变化。//首先，从口感上说，冷冻鱼的肉质的确没有活鱼鲜嫩。这主要是因为在冷冻过程中，鱼内的水分冻结成冰晶，导致鱼肉蛋白质发生冷冻变性和一系列理化性质的改变，包括蛋白质空间结构和疏水性的变化，凝胶性和保水性的降低，盐溶性蛋白含量降低，ATP酶活性减低等，从而造成鱼肉的品质和口感下降。//其次，从营养上看，同品种的鱼冷冻后确实会流失掉一部分营养。因为在鱼冷冻时，鱼肉的肌原纤维中的水分将结成冰晶，但在解冻的时候却没有办法再与蛋白质分子聚合，也就不能被全部吸收回鱼肉中。这种汁液的流失就伴随着鱼肉中一小部分可溶性蛋白质、盐类、维生素等水溶性营养物质的流失。但是，这点损失并不影响鱼类的核心营养价值。因为这一点损失如果也要较真儿的话,那就不得不提醒你，其实活鱼在暂养过程中，受局部水环境氧气、温度、pH值、排泄物积累和捕捞造成的鱼体损伤等因素影响，也会出现品质的下降，一样有一定的营养损失。//所以，冷冻鱼与活鱼相比，口感上输得坦荡荡，但营养价值没啥明显差别。更关键的是，你除非去海边度假，否则常见的活鱼大部分都是养殖的淡水鱼。而营养价值更高的深海鱼，基本上都是冷冻的。所以，鱼类的营养价值高低也要看鱼的品种，不能单纯地从是不是活鱼来判断。为了活鱼而放弃了深海冷冻鱼得不偿失，不如“一视同仁”地对待活鱼和冷冻鱼。//鱼肉突出的营养优势//其实，无论是活鱼还是冷冻鱼，都是膳食结构里少不了的一种美味又营养的食材。因为鱼肉突出的营养优势一直为人称道。//大多数鱼肉的脂肪占比都在5%以下，蛋白质含量则高达15%-20%。而中国人消费最多的猪肉，脂肪平均占比高达37%，蛋白质含量仅为13.2%左右。而且，禽畜肉中的脂肪主要是饱和脂肪，过多摄入容易增加罹患心脑血管疾病的风险。鱼肉则富含不饱和脂肪酸，有助于降血脂、降胆固醇，保护心脑血管健康。//对孕妇和婴幼儿来说，鱼更是好东西。特别是某些深海鱼，其中的多不饱和脂肪酸，比如大名鼎鼎的DHA，对大脑发育大有益处。除此之外，鱼类还富含人体所需的维生素A、D、E等多种营养素。//来源：北京青年报//', 'http://images.meishij.net/p/20170123/6d637a92a2423a1085d8e79d6847c184.jpg', 'http://images.meishij.net/p/20161121/7a3b2ee3e8de2de3dbd4ab6dcc117dfb_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (80, '菜板种类多 教你日常消毒小窍门', '2018-05-01', '菜板是厨房用具中绝对不能少的一种，而菜板的种类有很多，分别都有哪些不同之处的呢?在这里，要提醒大家的是清洗菜板是件很重要的事情，如果清洗的不够干净就会直接影响到我们的饮食卫生。//菜板的4个种类//木质菜板。木质菜板包括柳木板、松木板、榆木板等，其材质较厚，韧度强，适合剁肉或切割坚硬的食物。但木质菜板一般质量较重，不易清洗，且吸水性强，不宜风干，在潮湿环境中易发霉，滋生细菌。//竹制菜板。竹制菜板轻便小巧，但由于厚度不够，多由拼接而成，不可避免会有胶的黏合部分，有些不合格的胶质可能释放甲醛，且竹制菜板使用时往往不能承受重击。如果购买，尽量选用正规品牌，环保信誉好的产品。//塑料菜板。塑料菜板质地轻，易携带，但多以聚丙烯、聚乙烯等材质制成，高温下易散发塑料气味，不合格的塑料菜板还会有化学物析出，因此一般只适用于切新鲜蔬菜和水果。如果你用这种菜板来做其他的事情，那么，其所能够达到的效果可能就并不会让你特别满意。//树脂菜板。树脂菜板硬度高，表层耐磨性强，较少出现划痕，容易清洗。比较适合加工肉等熟食产品或果蔬等。//菜板的食用技巧//生熟分开。由于生菜上有较多的细菌和寄生虫卵，因此，菜板不可避免地要受到污染，如果再用这样的菜板切熟食，就会使熟食污染。最好备两块菜板。稻壳本身具有较强的抑菌和杀菌功能，在制作过程中还添加了微量超强杀菌功能的的纳米银单质很好地预防了细菌残留，加上硬度高易清洗，保证了在切换食物时，不会有污垢残留在砧板上。//保持清洁。传统菜板用过后，用硬板刷和清水刷洗，将污物连同木屑一起洗掉。如果留有鱼、肉等腥味，可用溶有食盐的洗米水或洗涤灵洗擦，然后再用温水洗净。不要用开水烫，因为肉里的蛋白质残留在菜板上，遇热就凝固起来，不易洗净。洗过后竖起晾干。//接下来，为大家介绍一下菜板的清洗方法吧。//菜板的6种清洗方法//紫外线消毒：把菜板放在阳光下暴晒30分钟以上，这样不仅可以杀死细菌，而且可使菜板干燥，减少病菌繁殖。//洗烫消毒：先用硬刷和清水将菜板表面和缝隙洗刷干净，再用100℃的开水冲洗一遍。//撒盐消毒：每次使用菜板后，都要用刀将板面的残渣刮净，每隔6～7天在板面上撒一层盐，这样既可杀菌，又可防止菜板干裂。//葱姜消毒：菜板用久了，会产生怪味。用生葱或生姜将案板擦遍，然后一边用热水冲，一边用刷子刷洗，怪味就会消失了。//醋消毒：切过鱼、肉的菜板，只要洒上点醋，放在阳光下晒干，然后用清水冲刷，就不会有腥味。//化学消毒：一公斤水加入新洁尔灭50毫升浸泡菜板15分钟左右，然后用清水冲洗干净。//以上几种菜板清洗的方法，选择你喜欢的试试看吧。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161213/71365d111be7ec7a33dd92a0b9738309.jpg', 'http://images.meishij.net/p/20161117/9d7c72090cc8704a86db4f428cc6a157_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (81, '网传牛奶致癌是真是假？', '2016-05-01', '原标题：是牛奶还是谣言将人类送入癌症的坟墓//最近，微信朋友圈被一篇题为《牛奶将人类送入癌症的坟墓》的文章给刷屏了。让人心好累呀，前段时间谣言刚折腾完酸奶，又来折腾牛奶了。//牛奶里的IGF-1致癌吗//牛奶致癌的说法一直广为流传，其中一个说法就是，牛奶中的IGF-1可以刺激癌细胞活跃生长与繁殖，引发癌症。//其实，IGF-1的全称是“类胰岛素一号增长因子”，它是生物自身分泌的一种激素样蛋白质，对人体血糖控制、生长发育等方面有重要作用。//人体本身也含有IGF-1，一名成年人每日体内的生成量为一千万纳克。而市场上的牛奶中IGF-1含量约2.45纳克/毫升，远低于人体内的量。//我们自身生成那么多都没啥事儿，牛奶里面的IGF-1远低于我们自身生成的近千万倍，能有啥事儿?//关键是，目前科学界评估认为，没有证据说明IGF—1是致癌因素。//牛奶里的酪蛋白致癌吗//也有说法表示，是牛奶中的酪蛋白会致癌。//这个说法最早来源于美国康奈尔大学教授柯林·坎贝尔的一项“大鼠实验”，大鼠被给予致癌物黄曲霉素的同时，分别喂食大豆蛋白或酪蛋白(作为唯一的蛋白质来源)，结果显示吃酪蛋白的大鼠发生的肝癌数量较吃大豆蛋白的大鼠多。这个实验结果在流传过程中，不知为何黄曲霉素这一重大致癌物前提却被忽略了。//假如没有黄曲霉素这类致癌物，无论是酪蛋白还是大豆蛋白都不会引起大鼠发生癌症。所以，不能用这个动物实验来类推奶类的致癌效果。//人们膳食中的蛋白质是多种来源的，不可能只吃某一种蛋白。因此，这一实验既引申不出酪蛋白可以致癌的结论，实验结果也不适用于人。//事实上，牛奶中富含优质的钙质，而且很容易消化吸收，对于消费者来说，每天食用一杯牛奶对于满足人体钙的需求还是有好处的。文/陈君石//(中国工程院院士，国家食品安全风险评估中心研究员)//牛奶致癌?小心陶弘景、李时珍翻脸//早在《牛奶将人类送入人类的坟墓》这篇谣言文还没有被疯狂转发之前，台湾假博士林光常就曾说过：“牛奶是给牛喝的，中国人从来不喝牛奶。”那是在2007年，本版当时就邀请了中医养生泰斗翁维健教授进行批驳。//一千多年前的中医记录//1500多年前，在南北朝的梁代，有一医家叫陶弘景，他在《本草经集著》中阐述了奶的性能和概念。//陶弘景观察了牛奶对人的影响，不管是保健、养生、治疗还是康复，他都做了详细的记载，比如说牛奶味甘、性平和，适合任何人。体质热的、偏凉的，男女老少都可以喝。//一千多年以来，我们的医家不断完善着对牛奶的理解、分析。我们的祖先从临床医疗中发现，牛奶可以辅助治疗疾病，//可以润肺，适用于肺系统有毛病的人，包括肺结核、肺痨、咳嗽等等;牛奶还可以养胃，胃燥、胃寒、胃热都可以喝牛奶。此外，牛奶还有排毒、解毒的作用，可以补泄同用。古代还用它来急救，如吃了有毒性的植物或天然品，先用牛奶灌，洗胃，解毒。//所以说，现在医院提供的餐食中，不论是流质、半流质、正常餐，几乎全部的病人都在饮用牛奶。//一个关于李世民的故事//有一个故事是说，唐太宗李世民有一天得了腹泻，闹肚子，请了好多太医，却久治不愈。魏征就介绍了一个不太出名的人，叫张宝藏，他有一个绝方，就是用鲜牛奶加上类似生姜的中药，叫荜菝。李世民吃了以后，腹泻就好了。//魏征说了，皇帝啊，他那么大功劳，不得授点官衔吗?太宗说给个五品官吧，魏征不满意，他就压着没告诉张宝藏。//结果过了一个月，皇帝病又犯了，就把张宝藏请来，还是牛奶煮荜菝，又好了。魏征说，又给你治好了，上回的五品是不是少了点?唐太宗就说，给三品吧。  这个故事就在《本草纲目》里。//一首关于牛奶的歌//到了明代，大医学家李时珍还给牛奶编了一首歌，叫《服乳歌》，他认为牛奶好比仙人用的酒一样。//“仙家酒，仙家酒，两个壶卢盛一斗。五行酿出真醍醐，不离人间处处有。丹田若是干涸时，咽下重楼润枯朽。清晨能饮一升余，返老还童天地久。”//所以如今有些谣传，说喝了牛奶会变成酸性体质，然后就骨质疏松，完全没有根据。至于说“牛奶致癌”的论据就更荒谬了。//就在上个月，翁教授驾鹤西去，读着这篇科普文章，也让我们更加怀念这位祖国医学的学者，中医养生康复专业的创始人，一个可亲可敬的和蔼老人。文/魏世平//盐里暗含灭种计划?//最近发现，食品安全的谣言也是有点规律的，比如能引起十万+转发的谣言文，大部分都是针对一个“食者”众多的食物，比如酸奶、面包，比如饮用水，再比如食盐。//不吃盐?那日子恐怕是没办法过了。//因此，如果有人说你每天吃的盐里暗含着惊天阴谋，你一定后脊梁骨都凉透了吧?//一篇题为《盐里面都有添加剂，这是要灭种的节奏吗?》的文章称，超市里盐的配料表里有“亚铁氰化钾”，“如果去掉‘亚铁’二字，我会立即被吓死。氰化钾极其危险……在10秒钟内能使人丧失意志，几分钟内可以毒死一人……”还说，“欧美人自己不吃亚铁氰化钾，却推荐其他国家吃!这是欧美施行的灭种计划……”//为了大家能安心吃饭，我们今天就说说这个谣言背后的真相。//亚铁氰化钾VS氰化钾//随便扯过来一袋盐，看看包装袋，就会看到“亚铁氰化钾”的身影，亚铁氰化钾和氰化钾，名字是很像，但是他们俩根本不认识啊。//亚铁氰化钾又叫黄血盐钾，化学式是K4[Fe(CN)6]，而氰化钾的化学式是KCN。亚铁氰化钾里面的氰根和铁元素是牢牢结合在一起的，所以它的急性毒性和氰化钾相比差了几百倍。//所以，亚铁氰化钾和氰化钾，名字就差两个字，但是，结构相差很大，毒性相差更大。亚铁氰化钾是合法的食品添加剂，用作抗结剂，属于食品圈里“持证上岗”的一员。//亚铁氰化钾安全吗?//虽然跟氰化钾的毒性差得多，但亚铁氰化钾还是有毒性的吧?那会不会在一定的情况下分解成氰化钾，或者积少成多最终导致中毒呢?//理论上，亚铁氰化钾在高温下可以分解产生氰化钾，但这个温度至少要400℃。//平时炒菜、高温烹调根本达不到这样的温度，到200℃就会开始有大量油烟，到330℃不粘锅的涂层就开始融化了。//加在盐里面的亚铁氰化钾的稳定性很高。亚铁氰化钾中的氰根和铁的结合力非常强，即使是在亚铁氰化钾的溶液里也很难检测到氰根。所以，那些以为炒个菜就能分解出来氰化钾的想法，实在是想多了。//但有人说了，不怕一万就怕万一!你怎么知道这世界上就没有烹饪方法能够达到400℃的呢?//好，就算亚铁氰化钾全都被“神奇”分解了，那也需要吃十几斤分解出亚铁氰化钾的食盐才会致命。因为氰化钾毒死一个成年人大约需要0.1克以上，而1公斤食盐里面的亚铁氰化钾最多才0.01克。//可有的人还是不放心。毕竟每天都吃一点，万一有慢性毒性呢?会不会致癌呢?//根据世界卫生组织和国际粮农组织的数据，亚铁氰化钾的终生安全剂量是每公斤体重0.025毫克。也就是说对于60公斤重的人，每天摄入1.5毫克完全没问题。而我国国家标准的规定，食盐中亚铁氰化钾的最大添加量为每公斤10毫克。//所以，如果想要吃出毛病，一个60公斤重的人每天至少要吃3两盐。而正常每天食盐的摄入量，仅为6克。//外国人不吃亚铁氰化钾?//这个谣言最刺激大家神经的，还是那句：“欧美人都不用亚铁氰化钾，是针对其他国家的灭种计划。”//但是，真相呢?//在国外，亚铁氰化钾作也是作抗结剂(anticaking  agent)使用的。比如，欧盟可以用亚铁氰化钾/钠/钙;美国用的是亚铁氰化钠，限量也基本和中国一样;日本可以用亚铁氰化钾/钠/钙，但限量值是中国的2倍。//所以，亚铁氰化钾的安全性是有保障的，适当吃盐根本不用担心。//而且，食盐抗结的方法不止这一种，比如柠檬酸铁铵、碳酸镁、二氧化硅、硅铝酸钠等抗结剂同样有效。目前市面上的食盐有一些也已经在改用这些抗结剂，也有一些食盐直接去掉了抗结剂，大家完全可以根据需要选择自己喜欢的品种。//文/阮光锋//来源：北京青年报//', 'http://images.meishij.net/p/20161013/4525b91c2308f6680516cbbacb7b317b.jpg', 'http://images.meishij.net/p/20161116/e67095f2f5596b616b3bc8152b6d1534_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (82, '保温杯泡茶易致癌?', '2017-05-01', '原标题：保温杯泡茶易致癌?适合泡茶用3种杯子//随着天气越来越冷，有喝茶习惯的人们会用保温杯泡茶。保温杯虽然可以保温，但是泡茶却是有危害的，甚至会致癌。这并非危言耸听，下面就来看看究竟用什么杯子泡茶是最好的吧。//保温杯泡茶易致癌//如今的保温杯大部分都是利用密闭方式进行保温的，不管是什么品牌的保温杯，都不要用来长时间沏茶水，“茶叶本身的构造很特殊，一旦在密闭的情况下就很容易发酵，发酵之后的茶叶会产生对人体有害的物质。”//此外，如果用保温杯泡茶，只要不是长时间泡着，相对于其他杯子还是有些好处的，由于茶叶中富含丰富的蛋白质、脂肪、糖、维生素以及矿物质等多种营养成分，对大部分人来说是一种天然的保健饮料，只要不在保温杯里长时间泡，就可以喝得健健康康。而如果长时间泡，茶叶中的维生素C等营养物质就会被完全破坏，也会因为长时间在高温中浸泡降低了茶的保健功能。不仅是茶叶不能长时间泡在保温杯里，像汤、牛奶或者中药等等都不能呆在保温杯里太久。如果实在想用保温杯喝茶，那用茶壶冲泡好，等到茶水变温，再倒入保温杯里保温。//那么，要用那种杯子泡茶呢?//哪种杯子泡茶最好//陶土杯：最负盛名的紫砂壶是陶器的一种，成陶火温在1000~1200°C，质地密，既不渗漏，又有肉眼看不见的气孔，能吸附茶汁，蕴蓄茶味，且传热缓慢不致烫手，即使冷热骤变，也不致破裂;用紫砂壶泡茶，香味醇和保温性好无熟汤味，能保茶真髓，一般认为用来泡台湾的乌龙茶，铁观音等半发酵茶最能展现茶味特色。//瓷器杯：无吸水性，音清而韵长，瓷器以白为贵，约1300度C左右烧成，能反映出茶汤色泽，传热、保温性适中，对茶不会发生化学反应，泡茶能获得较好的色香味，且造型美观精巧，适合用来冲泡轻发酵、重香气，如文山包种茶。//玻璃杯：质地透明、传热快、不透气，以玻璃杯泡茶，茶叶在整个冲泡过程中的上下穿动、叶片逐渐舒展的情形以及吐露的茶汤颜色，均可一览无遗。玻璃茶具的缺点是容易破碎、较烫手，但价廉物美。用玻璃茶具冲泡龙井、碧螺春等绿茶，杯中轻雾飘渺，茶芽朵朵、亭亭玉立，或旗枪交错、上下浮沈，赏心悦目别有风趣。//由此看来，泡茶的杯子也是有讲究的哦。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161121/76c9541befaca97bb6b3914f7c60338c.jpg', 'http://images.meishij.net/p/20161114/1a395461048aa2f1b76ad65e41daba1a_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (83, '6种酱油怎么吃更营养？', '2016-10-01', '原标题：酱油常见6种类型 如何食用最营养?//酱油，这种调味料是厨房最常见的，每个人都不会陌生。现如今，酱油的种类也越来越多了，分别都会有哪些独特之处呢?在这里，就来为大家具体介绍一下酱油的6种类型都是哪些，快来一起了解了解吧。//6种类型的酱油//生抽：生抽的“抽”字意为提取，以大豆或黑豆、面粉为主要原料，经天然露晒、发酵而成。生抽呈红褐色，味道咸鲜，豉香浓郁，因颜色淡，所以多用来调味，是家常炒菜或凉拌菜的最佳搭档。//老抽：老抽是生抽的“升华版”，在生抽的基础上加入焦糖，经特殊工艺制成的浓色酱油，呈棕褐色，颜色较深，可给肉类食物增色，是各种浓香菜肴上色入味的理想帮手。老抽味道咸中带微甜，风味浓厚，尤其是做红烧菜肴或者是焖煮、卤味时，适当加入老抽，克上色提鲜。需要注意的是，做菜时，要让菜肴显得“好看”，需早点放入老抽，但又不能太早，否则会降低老抽的营养价值，要把握住“度”。//普通酱油：普通酱油与生抽的酿造工艺类似，是北方大部分地区的常备酱油种类。因北方人口味较重，所以普通酱油比生抽颜色重，味道更咸，酱香味也更浓郁，但与老抽相比又稍逊一筹，因此普通酱油是介于老抽和生抽之间的一种综合性酱油。适用于烧、炖、炒各种北方菜肴。//蒸鱼豉油：蒸鱼豉油是通常用来蒸鱼用的一种豉油，以生抽为原料，再加入老抽、冰糖、花雕酒等多种调味鲜料熬煮而成，因此味道要比普通生抽味道鲜美回甜，搭配海鲜、河鲜类清淡菜肴及广东的肠粉，可起到很好的提鲜效果。//酱油膏：酱油膏选用普通酿造酱油，加入盐、黄砂糖、胡椒粉等调味料，经提炼后加工制成。因其中含有一定量的淀粉质配料，所以浓稠如膏，颜色多为棕黑色，与蚝油类似。适用于红烧、拌炒类菜肴，还可直接搭配食物作为蘸汁食用。//日本酱油：日本酱油多以大豆及小麦发酵酿造而成，其中不含焦糖等添加剂成分，但却含有少量酒精成分，因此口味独特，与普通酱油味道差别很大，是菜品的最佳搭档，比如韩国的紫菜包饭、石锅拌饭等。//那么，酱油的营养价值和吃法都是怎样的呢?//酱油的营养价值//增进食欲：烹调食品时加入一定量的酱油，可增加食物的香味，并可使其色泽更加好看，从而增进食欲。//防癌：酱油的主要原料是大豆，大豆及其制品因富含硒等矿物质而有防癌的效果。//降低胆固醇：酱油含有多种维生素和矿物质，可降低人体胆固醇，降低心血管疾病的发病率，并能减少自由基对人体的损害。//止痒消肿：酱油可用于水、火烫伤和蜂、蚊等虫的蜇伤，并能止痒消肿。//酱油的食用方法//最好在菜肴将出锅前加入酱油，略炒煮后即出锅，因为酱油中含有丰富的氨基酸，这样可以避免锅内的高温破坏氨基酸，使营养价值受到破坏，而且酱油中的糖分也不会焦化变酸。//为有效防止酱油发霉长白膜，可以采用往酱油中滴几滴食油、放几瓣去皮大蒜或滴几滴白酒等方法。//烹调酱油不要用作佐餐凉拌用。//酱油的种类有很多，可根据实际需要来选择。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161109/03e66fe621008d53e693abda41da27c9.jpg', 'http://images.meishij.net/p/20180802/8d6ba437d0f53969ad64d684d3ccda7b.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (84, '不含糖的碳酸饮料照样致肥胖', '2016-10-01', '美国研究人员发现，长期饮用添加甜味剂的所谓“低糖”碳酸饮料不健康，导致肥胖症和糖尿病的可能性不亚于含糖饮料。//美国有线电视新闻网报道，分析过去5年相关研究后，美国珀杜大学研究人员发现，长期摄入人工合成的甜味剂可能造成人体血糖调节机能紊乱，更容易导致肥胖症和糖尿病。饮用含甜味剂的饮料时，人们虽然感觉到甜味，身体却没有得到含糖食物所带来的热量。长此以往，真正摄入含糖食物时，人体将不知如何应对，不会释放调节血糖和血压的荷尔蒙。这意味着，人们可能会持续感觉饥饿、渴望摄入更多甜食。另一方面，因为经常引发大脑“奖励中心”释放一种满足感，长期摄入甜味剂可能损坏这一机制。为得到同样的满足感，不得不摄入越来越多高热量、高甜度的食物。研究还发现，即使体重正常，长期饮用低糖饮料的人患糖尿病、心脏病和中风的风险仍然明显增高。这样的发现令研究人员颇为吃惊。“老实说，与普通碳酸饮料相比，我以为低糖饮料怎么也要健康一点点，结果却恰恰相反，”研究人员苏珊·斯威瑟斯说。美国饮料协会质疑这些结论的可信程度，发表声明说：“低热量甜味剂是当今食品产业经过最多研究和评估的成分，数十年科学研究和全球监管机构证实，它们是控制体重以及减肥的安全和有效工具。”【新华社微特稿】(袁原)//来源：新华社//', 'http://images.meishij.net/p/20161026/9e420c799ac84ea43a954f8a9553ae61.jpg', 'http://images.meishij.net/p/20180530/dff7b6f9bd3f0701f050c50efceea77d.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (85, '适合你的养生茶', '2016-10-01', '饮茶是中国自古就有的生活习惯与交际礼节，而养生茶与普通茶叶不同之处在于，更侧重于茶的养生保健功效。并且大部分养生茶，是以茶之形，发挥药之效。含茶或以中药，或者以药食同源的原料制成以养生保健为目的的茶，都统称为养生茶。养生茶将绿茶、淡竹叶、荷花精心配制在一起，其香高、味醇、色郁，饮后清香淡雅、清热解渴、怡心提神，是理想的天然养生保健饮品。//一、补血好气色：桂圆红枣茶//材料：红枣100克、桂圆50克。//制法：将所有的材料放入1000克的水中煮沸，熄火焖10分钟。//办公室制作秘籍：将所有的材料放入保温杯中，冲入1000克沸水焖20分钟。//功效：有养心安神、滋阴补血的功效。适合体弱多病、心悸失眠、面色无华的女性进补之用。//二、养颜补气润肌：红枣酒酿茶//喝红茶预防流感//冬天喝茶以红茶为上品。红茶甘温，可养人体阳气;红茶中含有丰富的蛋白质和糖，生热暖腹，能增强人体的抗寒能力，还可助消化、去油腻。在我国一些地方，也有将红茶加糖、奶、芝麻饮用的习惯，这样既能生热暖腹，又可增添营养、强身健体。//三、上火找绿茶帮忙//冬天气候干燥，加上人们喜欢吃油腻、辛辣的食物，上火就成了困扰许多人的健康问题，并带来便秘、口干舌燥甚至口舌生疮等后果，而这个时候就可以求助绿茶。绿茶是未发酵茶，性寒，可清热，因此最能去火、生津止渴、消食化痰，对轻度胃溃疡还有加速愈合的作用，并且能降血脂、预防血管硬化。因此容易上火的、平常爱抽烟喝酒的，还有体形较胖的人(一般是实热体质)，都比较适合饮用绿茶;而肠胃虚寒的人则不宜服用绿茶。//四、口干舌燥求助乌龙//乌龙茶属半发酵茶，介于绿、红茶之间，色泽青褐，因此又得名“青茶”。在味道上，乌龙茶既有绿茶的清香和天然花香，又有红茶醇厚的滋味，不寒不热，温热适中，因此有润肤、润喉、生津、清除体内积热的作用，可以让机体适应自然环境的变化。而冬天里室内大多空气干燥，人们容易口干舌燥、嘴唇干裂，这时泡上一杯乌龙茶，可以缓解干燥的苦恼。此外，乌龙茶对蛋白质及脂肪有较好的分解作用，能防止肝脏脂肪堆积，对于怕冬季里贴膘的人来说，青茶也有一定的减肥功效。//五、抑郁不妨品花茶//花茶包括茉莉花茶、玉兰花茶、桂花茶、玫瑰花茶等，是以绿茶为茶坯加入不同香花熏制而成的。一般来说，花茶可以养肝利胆、强健四肢、疏通经脉。以茉莉花茶为例，可以清热解暑、健脾安神，对治疗痢疾和防止胃痛有良好效果。而金银花茶则可以清热解毒、提神解渴，并对咽喉肿痛等有较为理想的疗效，对预防流感效果亦佳。因此在冬季不妨适当选择，尤其是女性在更年期及经期前后容易心情抑郁，性情烦燥，不妨用喝花茶的方法来消解郁闷。//抑制忧郁桂花茶//中医认为，桂花有很好的药用价值。古人说桂为百药之长，所以用桂花酿制的酒能达到“饮之寿千岁”的功效。桂花性温、味辛，入肺、大肠经，煎汤、泡茶或浸酒内服，有温中散寒、暖胃止痛、化痰散淤的作用，对食欲不振、痰饮咳喘、痔疮、痢疾、经闭腹痛有一定疗效。很多胃病患者到了冬季就会出现冷痛的感觉，这个时候喝点桂花茶，就能够很好的缓解症状。//做法：秋季在桂花含苞未采收花朵，将花朵洗干净后阴干，然后密封保存。可加入茶叶中泡茶饮用，饮用时，大约使用七到十个花朵，再加入适量的红茶、红糖后，以热开水冲泡即可。//补气提神：参枣茶。材料：红枣5颗;西洋参1钱。制法：将红枣放入350克沸水中小火煮3分钟。参片放入杯中，注入红枣水，盖盖焖10分钟。办公室制作秘籍：将所有的材料放入保温杯中，冲入350克沸水焖20分钟。功效：能补助气分，并能补益血分。清热生津。用于气虚阴亏，内热。//改善痛经不适：益母草红糖茶。材料：益母草1钱;香附子1钱;红糖适量。制法：将益母草和香附子放入500克沸水中，小火煮5分钟，适量加红糖。办公室制作秘籍：将所有的材料放入保温杯中，冲入500克沸水焖30分钟。功效：具有活血、法瘀、调经、消水的功效。益母草可促进局部血流微循环障碍的很快恢复。//薄荷甘草茶//功效：解热祛燥、清凉解毒，有预防感冒的奇效。成分：鲜薄荷叶10余片，甘草5克，绿茶5克，太子参10克，做法：用500毫克开水，冲泡10分钟后，滤去渣滓，加入适量白糖，调匀饮服，早晚各一次。//来源：正佳养生网//', 'http://images.meishij.net/p/20161019/2e90a02cb7ea8fee8152ae53526d4754.jpg', 'http://images.meishij.net/p/20180314/a81409c9d416c2ece1c33b6d568c3285_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (86, '腐竹能燃烧，还能吃吗?', '2016-05-01', '最近微信上传的一个“腐竹燃烧”视频引起了不少关注，视频里有人点燃了一根腐竹，燃烧后有沥青一样的东西滴下，被认为是含胶的有毒腐竹。人们不禁要问，腐竹能燃烧，是真的吗?能燃烧的腐竹能吃吗?腐竹属于大豆制品，是豆浆煮沸后经一段时间保温，表面形成一层薄膜，挑出后下垂成枝条状，再经干燥而成。这个过程听着是不是很耳熟?没错，跟奶皮子的制作方法如出一辙。奶皮子在内蒙等地非常流行，以鲜奶熬煮，等其表面凝结一层膜后，用筷子挑起挂在通风处晾干。//干腐竹色泽黄白，油光透亮，用清水浸泡3-5小时发开以后，既可炒，也可拌，还是吃火锅的好食材，跟肉类和蔬菜都可搭配，营养又美味，深受人们喜爱。//腐竹燃烧是奇闻?//燃烧是一种化学反应，是可燃物与空气中的氧气之间发生的快速放热和发光的氧化反应。能燃烧的物质就称为可燃物，大多是含有碳和氢的化合物。一般我们容易想到的可燃物是煤、石油、天然气、木头、酒精、布料等，而很少有人会将食物和燃烧联系在一起。但事实上，很多食品的主要成分也是含有碳和氢的化合物，完全符合可燃物的定义。蛋白质、脂肪和碳水化合物都是食物中可以燃烧的成分。油脂可燃很多人都知道，蛋白质的燃烧在生活中也很常见，比如头发、羊毛等物质燃烧时，主要就是蛋白质的燃烧。//干腐竹含水量很少，只有8%左右，主要成分是蛋白质，约占45%，其次是脂类和碳水化合物，各占22%左右。这样看来，腐竹中含的基本都是可燃成分，又很干燥，能燃烧是自然的，无需大惊小怪!//其实，前段时间还出现过面条燃烧、饼干燃烧的类似新闻，也引起了人们一定程度对面条、饼干的担心。之所以“燃烧事件”频出，一是因为大家对食品安全问题尤其关注，二是人们很难把食物跟燃烧联系在一起。现在大家应该明白了，很多食物都是可以燃烧的，是食物的固有属性，而并不是添加了什么有毒物质。明确了这一点，以后再看到网上出现什么别的食物燃烧的视频，就大可淡然处之了。//豆制品中的“营养冠军”//腐竹浓缩了豆浆中的蛋白质和脂类，营养价值较高，被誉为豆制品中的“营养冠军”。腐竹中近一半成分是大豆蛋白，并且不含胆固醇，是素食者以及患有慢性病的中老年人获取优质蛋白质的良好途径。与谷类搭配食用，还可以补充谷类所缺乏的赖氨酸，提高蛋白质利用率。//腐竹中含有22%左右的脂类，主要是不饱和脂肪酸，特别是亚油酸含量很高。亚油酸是人体必需脂肪酸，能与血液中的胆固醇结合，促进胆固醇的转运和代谢，预防动脉粥样硬化。腐竹还富含具有血管清道夫功能的大豆卵磷脂，同样能降低胆固醇、软化血管、预防心脑血管疾病，还具有健脑作用。(马冠生)//来源：新华网//', 'http://images.meishij.net/p/20161116/e1a14a1e26c092e39a659adacd48158c.jpg', 'http://images.meishij.net/p/20180314/132c3c004d15ef4da3ae7b21aa08a432.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (87, '自助餐要这样吃才划算', '2016-08-01', '不少人打着“扶墙进，扶墙出”的口号来迎接自助餐，即便回本占了小便宜，却很可能在健康上吃大亏。所以，去吃自助，心里先要有一杆秤。//别一上来就大开吃戒//开始吃自助餐时，不要一上来就大吃，而应该先取一小碗清淡的汤或粥，或者吃些清淡的蔬菜水果开胃，再慢慢吃点主食，最后再吃鱼禽肉等荤食。这样进食油脂和鱼禽肉类过量的机会更小，同时保证蔬菜和水果的摄入量，提供丰富的维生素和膳食纤维，避免了肥胖的麻烦。//给盘子划条“三八线”//看着各种丰富的食材，这个想吃，那个也想尝尝，恐怕很难控制住自己的手，如何定量取用、合理搭配才是健康进食的关键。//将常规的取餐的盘子首先一分为二，假装划一条“三八线”。其中一半的餐盘一大半用非淀粉类的蔬菜填满;一小半放些水果;另一半餐盘再一分为二，一半放谷物，另一半放些鱼虾肉蛋等蛋白质丰富的食物。另外可以配一小碗清汤或者一杯牛奶。如果有坚果也可以来一小把，这一餐的食物就足够了。//主食选少选杂一点//自助餐一般荤食较多，且油大味重，大量的蛋白质摄入很容易增加消化道负担，即使是自助餐也要重视主食。可以选择一些粗杂粮或者芋头、红薯等薯类作为主食，增加一些膳食纤维和B族维生素的摄入，由于自助餐可选择的种类比较多，可以每种都取点，但是都不多拿。//生猛海鲜别超1/4餐盘//自助餐中的荤食除了常见的鸡鸭鱼肉，可能还有昂贵的生猛海鲜。选择的时候一定不要贪多求全，控制在1/4餐盘。另外尽量选择清淡的烹调方法制作的肉类，取用的时候优先选择低脂的鱼禽类，也可以用少量豆制品替代部分荤食。//蔬菜沙拉用油醋汁调//可以多选择一些深色的蔬菜，不同颜色相互搭配，营养丰富又增进食欲。不过自助餐中不少蔬菜是来自于蔬菜沙拉，建议大家减少沙拉酱(脂肪含量比较高)的用量或者直接用油醋汁进行调味。各种甜点、甜饮料尽量少吃，用水果来作为餐后甜点。水果尽量选择新鲜水果，不要用果汁替代水果。//温馨提示：//自助餐因为食物品种较多，容易能量超标，最好在中午吃，吃完后适当活动一下，当天的晚餐可以比平时吃得更少一些，晚餐后再保持一定的运动量，这样一来，可以尽可能保持当天的吃动平衡。不要连续吃自助餐，两次自助餐之间最少要相隔三天，以免能量蓄积导致体重增加。//来源：39健康网//', 'http://images.meishij.net/p/20161205/2fcf7c115611431bc521d382642a1fbc.jpg', 'http://images.meishij.net/p/20180314/132c3c004d15ef4da3ae7b21aa08a432.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (88, '65℃以上热饮成高危致癌物', '2016-04-01', '原标题：65℃以上热饮成高危致癌物 警惕5类食物//近日，世界卫生组织(WHO)下属的国际癌症研究机构发布了最新报告：警告饮用65℃以上的热饮，可能增加罹患食道癌的风险。其实，在众多的致癌因素中，食物往往是大家比较关注的，也是大家容易忽略的。//世界卫生组织：非常热的饮料被列入2A致癌物//这项最新的评估报告发表在15日出版的《柳叶刀肿瘤学》杂志上。报告指出，在中国、土耳其及南美洲国家的研究发现，这些地区的人们通常习惯饮用65℃或70℃以上的水、咖啡或茶，罹患食管癌的风险也随之提升。//报告称，23名由IARC组织的国际工作小组成员发现饮用非常热的饮料很有可能导致人们罹患食道癌。而这里的“非常热”是指超过65℃的任何饮料。//在此次世卫组织的评估中，非常热的饮料被列入了2A级(很可能致癌)，与之被列入同一类的有高温油炸食品和高温油烟等。而去年备受争议的红肉也属于这一归类中。//科普：致癌物分4个等级//致癌物是指能诱发人患癌的“坏物质”，它的范畴包括任何能增加人类患癌风险的化学、物理物质及生活、工作方式等。//1965年，国际癌症研究机构(IARC)开始了确定致癌物的工作，并于每年发布更新致癌因素的信息，最终，将致癌物分为了4个等级，其中不少与食物相关。//1级//烟草、酒精饮料、黄曲霉素、槟榔、中式咸鱼等明确有致癌作用的致癌物。黄曲霉素主要存在于霉变的坚果、大米和玉米等，吃这些食物时一定要注意清洗和储存得当。//2级//丙烯酰胺、铅、4-甲基咪唑等可能性较高的致癌物质。生活中如果经常采用高温油炸、高温油烟烹制食物，接触到丙烯酰胺的机会就比较大，应尽量避免。//3级//苏丹红色素、胆固醇、咖啡因、三聚氰胺、糖精等尚不能分类的致癌物。这类物质动物和人群研究的致癌证据都不充分。//4级//致癌物中还有第4级，指相关研究中没有充足证据证明其具有致癌性的物质，食物中属于此类的物质较少。//5种常见的致癌食物//1、咸鱼//咸鱼产生二甲基亚硝酸盐，在体内可以转化为致癌物质二甲基亚硝酸胺。一个人如果从出生到10岁经常食用咸鱼，将来患鼻咽癌的可能性比不食用咸鱼的人大30-40倍。鱼露、虾酱、咸蛋、咸菜、腊肠、火腿、熏猪肉同样含有较多的亚硝酸胺类致癌物质，应尽量少吃。//2、烧烤食物//烤牛肉、烤鸭、烤羊肉、烤鹅、烧猪肉等。因含有强致癌物3，4-苯并芘，不宜多食。//3、熏制食品//如熏肉、熏肝、熏鱼、熏蛋、熏豆腐干等亦含苯并芘致癌物，常食易患食道癌和胃癌。//4、油炸食品//煎炸过焦后，产生致癌物质多环芳烃。咖啡豆烧焦后，苯并芘含量增加20倍。油煎饼、臭豆腐、煎炸芋角、油条等，多数是使用重复多次的油，高温下会产生一种致癌分解物。//5、霉变食物//米、麦、豆、玉米、花生等食品易受潮霉变，被霉菌污染后会产生各种致癌毒素。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161031/7a77f2c2eb0a71a478a48a92dc8c9d97.jpg', 'http://site.meishij.net/r/97/227/6681847/a6681847_151063780528911.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (89, '秋天嘴唇干燥怎么办', '2019-03-14', '秋天干燥嘴唇干燥很容易脱皮，那秋天嘴唇干燥怎么办好呢?治疗秋天嘴唇干燥的方法有很多，下面让我们一起来详细了解一下秋天嘴唇干燥怎么办。//一、秋天嘴唇干燥怎么办//1、嘴唇干燥起皮的,在家的可以利用酸奶,或者酸奶跟柠檬汁调均匀使用效果会更好。把酸奶与柠檬汁搅拌均匀放入冰箱冰15分钟后,用棉棒均匀涂抹在嘴唇上,用一块大过嘴唇的保鲜膜盖住,15分钟之后拿下,用温水清洗嘴唇,再涂上润唇膏。干燥起皮的嘴唇就会恢复鲜嫩光泽了。//2、嘴唇干燥起皮稍严重者,记得不要用手去撕皮或者用牙齿直接咬破的,不小心会造成嘴唇出血造成新伤口,使嘴唇更受伤也更难好。如果看着起皮多而烦心的一定要撕掉的话,可以先用热毛巾将死皮软化后,再用棉棒清理,最后搽上润唇膏,效果会好很多。//3、嘴唇干燥起皮是因为气候空气干燥主要原因导致,居家的可以在晴天的时候用洒水、蒸发水分或使用加湿器等方法,提高室内的空气湿度,以保证皮肤能处于一个较为湿润的环境,避免因过度干燥产生的一系列皮肤问题。//4、皮肤嘴唇干燥者切勿情绪过激,秋季也是个烦躁的季节,但要懂得调节情绪。情绪过激,容易生气这些都会产生心火,灼烧津液,使自己口舌干燥。//5、皮肤干燥或者嘴唇干燥的人,更要及时补充水分。多喝水,补充流失水分。//6、在觉得唇部干燥时选择一些保湿度较高,如含有芦荟、维E成分的润唇产品涂抹。可有效地减轻嘴唇干燥,也是嘴唇干燥最简单的解决方法了。//7、平时喝水是很重要的,但仅是喝水还是不够的,在双休日,自己还是要给自己熬点汤和粥,这也是防燥的要点。  而且要少吃过油、过甜、过辣、过咸的东西;饮食以清淡为主;少喝甜味饮料。//8、秋季水果宜吃葡萄、梨等凉性的水果,适当补充水分。忌温性的荔枝、苹果等。//二、秋天嘴唇干燥吃什么水果好//1、甘蔗//归肺、胃经,味甘而性凉的青皮甘蔗,是清肺热的最佳水果之一。它具有丰富的糖分和水分外,还含有大量对人体新陈代谢非常有益的维生素物质。中医认为,甘蔗入肺、胃二经,具有清热、生津、下气、润燥、补肺益胃的特殊效果。甘蔗可治疗因热病引起的伤津,心烦口渴,反胃呕吐,肺燥引发的咳嗽气喘。另外,甘蔗还可以通便解结,饮其汁还可缓解酒精中毒。//2、苹果//苹果水分营养都丰富,是一种被大家称为天然美容水果。苹果中所含的大量水分和各种保湿因子对皮肤有保湿作用,维他命C能抑制皮肤中黑色素的沉着,常吃苹果可淡化面部雀斑及黄褐斑。//3、柑橘//柑橘类的好处非常的多,而且它的清新味道,就够除燥,有提神醒脑的作用了。橘子含有丰富的柠檬酸、维生素以及钙、磷、镁、钠等人体必需的元素。它具有生津止咳的作用,用于胃肠燥热之症;有润肺化痰的作用,适于肺热咳嗽之症。//4、猕猴桃//猕猴桃含有丰富的维他命C与维他命E,不但可以美白肌肤,还能提高肌肤的抗氧化能力,还有效增白皮肤,消除雀斑和暗疮的同时增强皮肤的抗衰老能力。//5、柿子//果味甘涩、性寒,入肺、脾、胃、大肠经,有很好的清热去燥、润肺化痰之效。//三、秋天嘴唇干燥吃什么好//1、蔬菜//白菜、生菜、萝卜、胡萝卜、藕、荸荠、香菇、蘑菇、木耳等。//2、水果//红枣、甘蔗、菠萝、柚子等。//3、粮谷类//尽量选择粗粮,如麦胚、米胚、荞麦、玉米等。//4、动物性食物//动物肝、肾、蛋黄、猪肉、鸡、鸭、鱼、虾及海产品等。//5、富含胶质的食物//猪蹄、蹄筋、海参、鸡皮、鱼皮、银耳等。//6、坚果类食物//葵花籽、核桃、莲子、花生、榛子、松子、腰果、杏仁、板栗等。//除饮食调节外,嘴唇上涂点食用油,效果强于润唇膏。//来源：养生之道网//', 'http://images.meishij.net/p/20161014/5ae8e96daa81f7e07eaf87b2642fd8df.jpg', 'http://images.meishij.net/p/20170713/213df5fb8faa20d77cdc6f96798e17fc_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (90, '放调味料的最佳时间你可知道?', '2019-03-14', '经常出入厨房的人会知道，想要做出好吃的菜，会用到各种调味品，它不仅能增味，有些还能起到一定的养生功效。但是，调味料的放入时间也是有讲究的哦!//味精：菜起锅后放//味精主要的作用就是给植物性食物增加鲜味，给肉食增加香味。但是，当食物温度到达120℃以上时，味精会变成焦化谷氨酸钠，不仅没有鲜味，还有毒性。所以，味精在70℃—90℃  时使用效果最好，一般在菜起锅后马上放。但还有一点需要注意的是，有一些菜在烹饪时并不需要加味精，如鸡蛋、蘑菇、海鲜等。//白糖：炒菜过程中放//糖能增加菜的甜味，还能抑制酸味、缓和辣味，可谓是功效诸多。此外，待油锅热后放糖炒至紫红色时放入主料一起翻炒，还能给菜上色。但是，白糖也不可以放得过早，最好在炒菜过程中放。//醋：“两头”加//醋不仅能祛膻、除腥、解腻、增香，软化蔬菜纤维，还能避免高温对原料中维生素的破坏。做菜放醋的最佳时间在“两头”，有些菜肴，如炒豆芽，原料入锅后马上加醋，既可保护原料中的维生素，同时又能软化蔬菜中的纤维;但是有些菜肴，如糖醋排骨、葱爆羊肉，原料入锅后加一次醋，其作用是祛膻、除腥，在菜肴临出锅前再加一次，以解腻、增香、调味。//酱油：出锅前放//酱油既可以给食物上色，还能增加食物的香味，从而增进食欲。但是营养师建议，烹饪时最后放酱油，这样酱油中的氨基酸和营养成分能够有效保留。//料酒：锅内温度最高时放//料酒主要有去腥膻味的作用，从而增加菜的香气。它与味精不同，一般是在锅内温度最高时加入，因为腥味物质能被乙醇溶解并一起挥发掉。但它也经常用于烹饪前的腌渍，能让乙醇浸入到鱼、肉纤维组织中去，以除去异味。//来源： 39健康网//', 'http://images.meishij.net/p/20161219/2f7fce6b450358696d89f85327270389.jpg', 'http://images.meishij.net/p/20170605/54aad9503158cf80a783eb13657079ff_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (91, '辟谣：蘑菇茄子同食会中毒？', '2019-03-14', '原标题：蘑菇和茄子一起吃会中毒?专家：不相克还会相互促进//“最近雨水多，蘑菇上市!但菌类不能和茄子一起吃，各位知道了吗?蘑菇可以和小白菜一起炒，但不能和茄子一起吃，会中毒;在水焯蘑菇的时候放大蒜，如果大蒜变色了，就有毒，不可食用。且蘑菇和小米、大黄米最好不要同吃，会产生一种毒素，医院治不好，后果很严重。望大家相互转告!”//这样一条信息传播后，让市民王先生感到惊诧!这种说法是否靠谱?//昨日，沈阳市健康教育中心营养专家李楠表示，蘑菇和茄子、小米、大黄米等同吃会导致中毒的说法完全缺乏科学依据。//如果误食毒蘑菇后，是会出现中毒的症状，但平时菜市场上卖的蘑菇、香菇等都很安全，而且所谓大蒜验毒的说法也不靠谱，大蒜里的活性物质有一定的杀菌作用，但无法验毒和解毒!//李楠说，上述说法是典型的饮食误区，蘑菇的主要营养成分是蛋白质、维生素和氨基酸，蘑菇的蛋白质含量高于其他蔬菜，氨基酸、维生素含量非常丰富，蘑菇中的多糖类是抑制肿瘤生长的物质。//李楠说，茄子作为蔬菜主要含有维生素和矿物质，茄子中铁含量较高，茄子与蘑菇同食还能促进人体对蘑菇中蛋白质的吸收，两者是相互促进的作用，完全不会产生毒素。//多一点提醒//吃蘑菇确实应谨慎，但用大蒜检验不靠谱//李楠介绍，大蒜变色是正常的氧化反应，大蒜发生氧化先产生蒜绿素，接着变成蒜黄素，两种物质都是可以食用的。吃蘑菇确实应该谨慎，但用大蒜检验蘑菇是否有毒太不靠谱。大黄米、小黄米都属于主食，属于碳水化合物中的一种，与蘑菇同食会达到蛋白互补的作用，利于蘑菇营养成分的吸收。//来源：华商晨报//', 'http://images.meishij.net/p/20161111/d9db1fb2402a6bc17d77a25de920e50a.jpg', 'http://images.meishij.net/p/20170123/b43be469069cab07d99b486cc326a6bf_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (92, '女性补充荷尔蒙吃5种食物', '2019-03-14', '原标题：芝麻坚果和蘑菇 女性补充荷尔蒙吃5种食物//女性补充荷尔蒙应该吃什么呢?女性缺乏荷尔蒙就会出现很多异常症状，直接影响到我们的身体健康，所以需要引起重视。接下来，就来一起看看补充荷尔蒙的食物都有哪些，千万别错过了。//女性缺乏荷尔蒙的症状//失眠头痛表现：失眠、多梦、疲倦、头痛。晚上催眠的方法皆用尽，还是睡不着。白天注意力不集中，困倦嗜睡，严重影响了日常生活。//月经不调表现：“老朋友”总是不按时出现。提前还好说，最多就是弄个措手不及，但推后就不安了，疑神疑鬼地掰着手指头算日子，或是怀疑安全套是否出问题了。好不容易把它盼星星盼月亮似的盼来了，却发现在它该离开的时候，拖拖拉拉地不肯走。//皮肤衰老表现：皮肤松弛，白皙的肌肤也日渐粗糙，毛孔也膨胀粗大起来，就连色斑也跳出来捣乱，镜子呈现出来的是标准的“黄脸婆”。//烦躁胸闷表现：心慌气急、易激动甚至狂躁，会因一件小事与同事或家人争吵，总是摆出一副“不高兴”的样子，有时很难控制自己的情绪;夜间睡觉时会因为胸闷而被憋醒，严重时会出现血压也会像你的爆脾气一样，说翻脸就翻脸。//那么，女性补充荷尔蒙吃什么好呢?//女性补充荷尔蒙的5种食物//蘑菇、海草类。补充女性荷尔蒙时，卡路里高的食品一般不受欢迎。而蘑菇、海草等卡路里低，并含有丰富的食物纤维、维生素、矿物营养素等。因此，我们应该大量食用它们。//芝麻、坚果类。芝麻、坚果含有大量的维生素B和维生素E。维生素B和维生素E对顺畅的分泌女性荷尔蒙、理想的平衡荷尔蒙的是不可或缺的。但因为含有脂类的缘故，注意不要食用过量。//蛋白质。肉、鱼、乳制品、鸡蛋等含有动物蛋白质。这些动物蛋白质含有可以合成女性荷尔蒙的胆固醇。动物蛋白质缺乏可能会造成女性的停经。植物性和动物性蛋白质如果同时适量摄取，会对女性荷尔蒙的提升产生不可替代的作用。//蔬菜。蔬菜含有丰富的食物纤维和维生素，这对女性荷尔蒙的补充很有好处。特别是菠菜中含有的丰富的维生素B1，在生成神经传递素方面有重要的作用。维生素若不足，大脑就无法向卵巢发出分泌荷尔蒙的指令。因此，大量食用蔬菜是很重要的，特别是有色蔬菜。//甜莓。与此同时专家还提醒，要想补充丰富的荷尔蒙，在平时生活中还应该多吃些甜莓类食物。与酒的作用相类似，这些水果所含的花青素可以保护你的身体抗癌，与此同时还可以起到补充激素以及修复细胞的作用。莓子类食物提供强大的抗氧化保护，不仅可以保护心脏健康，同时还具有抗击皮肤年龄老化的作用。//女性补充荷尔蒙怎么吃//肾脏偏爱黑色及带有自然咸味的食物，如黑芝麻、黑木耳、黑豆、香菇、黑米、虾、贝类等;肝脏偏爱绿色的食物，如菠菜、白菜、芹菜、生菜、韭菜、西兰花等。//脾偏爱黄色且有自然甜味的食物，如黄豆、南瓜、橘子、柠檬、玉米、香蕉等。黄色食物可以健脾，增强胃肠功能，恢复精力，补充元气，进而缓解女性荷尔蒙分泌减少的症状。黄色食物对消化系统也很有疗效，同时，也对记忆力衰退有帮助。//女性补充荷尔蒙，以上食物可以试试看哦。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161114/97dcbd3e508beaea6c42d01a3cfc94c1.jpg', 'http://images.meishij.net/p/20170122/39ebc5c8da45601eb70dce1cc3bf1ec3_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (93, '辟谣：榴莲牛奶同吃不会猝死', '2019-03-14', '微信朋友圈曾流传这样一则消息：中国游客吃榴莲后喝牛奶，致咖啡因中毒、血压飙升，引发心脏病猝死。帖子中说：“泰国有明确规定，食用大量榴莲后，8小时之内不能饮奶类产品。”事实果真如此吗?//“咖啡因主要存在于咖啡、茶以及其他草本植物中。所以，这则消息从营养学的角度来分析，似乎是说不通的。如果猝死事件是真实的，那么它的发生只能说纯属偶然。”河北医科大学第三医院营养科副主任雷敏分析，这名游客很有可能本身就患有心血管方面的疾病，加上劳累，再进食过多的榴莲，喝大量牛奶，导致热量和液量过高，心脏负担增加，诱发心脏病急性发作而猝死。//“至于吃榴莲后8小时内不能喝牛奶也是不成立的。”雷敏表示，就拿我们常吃的甜点举例，榴莲冰淇淋、榴莲泡芙、榴莲千层蛋糕等一系列榴莲甜品，都是混合鲜奶油或炼乳与榴莲制作而成。鲜奶油和炼乳又是用鲜牛奶加工而成，但目前尚未有因食用这些甜点导致生命危险的案例报告。//此外，雷敏提醒，“吃榴莲后喝酒虽然不会致人死亡，但若食用数量不当确实对人体健康不利，所以还是错峰食用较好。”//来源：广州日报//', 'http://images.meishij.net/p/20161128/72d4cf45f75f20a0dccb01940a6cc9b8.jpg', 'http://images.meishij.net/p/20170122/8e00d6a823a08798d3592bdb3597c49d_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (94, '这5类食物不甜但糖分高', '2019-03-14', '原标题：糖友请注意!这5类食物不甜但糖分高//糖尿病人不宜吃糖分高的食物，这几乎是每个成年人都知道的常识。但是很多人不知道，有些吃起来不甜的食物，却是“含糖大户”，如鱼香肉丝、面包等。下面，我们就来看看有哪些糖分高的食物被我们忽略了，以及糖尿病人应该要注意的饮食禁忌。//5类食物不甜但糖分高//1、超市中的速冲糊粉是含糖大户//因为单纯的谷、豆等磨成的粉口感不佳，甚至有一种五谷杂豆特有的“土腥味”，因此，豆奶粉、藕粉、核桃粉等速冲糊糊类食品中往往会加入很多糖来调整口感。有的产品中的糖甚至排在配料表的第一位，购买时一定要多注意。//2、山楂片、话梅等酸味零食//山楂、话梅等本身有机酸含量丰富，口感较酸，加工中加入大量糖，口感才能酸甜适宜。有的山楂片中的糖含量高达70%～80%;而话梅的中的糖含量也不示弱，一般排在配料表第二位，仅次于梅子。//3、红烧肉、鱼香肉丝都是高糖//专家介绍，很多人做菜喜欢用糖调味，尤其是餐馆里的厨师更是喜欢大量用糖提味，一份红烧排骨、红烧鱼、鱼香肉丝大概加糖25~30克，红烧肉要加40~50克，最高的是糖醋排骨和糖醋里脊，每份要加入75克左右的糖。此外，一些市民喜爱吃的加工肉制品，如肉干、肉脯里也含有不少糖。//4、猕猴桃、柚子居然比西瓜含糖高//专家表示，别看西瓜吃起来甜，其实含糖量仅为4.2%;而猕猴桃吃起来较酸，含糖量却是10%。含糖量在9%~13%之间的水果还有苹果、杏、无花果、橙子、荔枝等。而柿子、桂圆、香蕉、杨梅、石榴等水果，含糖量超过了14%。//5、酸奶、面包里也有隐形糖//如果你自己在家做面包或酸奶就会发现，一般的白面包100克中需加入10-20克左右白糖，这还不算其本身的淀粉含量。酸奶的制作配方是100克牛奶配10克左右白糖。//糖尿病人的饮食禁忌//1、不宜吃各种糖、蜜饯、水果罐头、汽水、果汁、果酱、冰淇淋、甜饼干、甜面包及糖制糕点等，因为这些食品含糖很高，食用易出现高血糖;//2、不宜吃含高胆固醇的食物及动物脂肪，如动物的脑、肝、心、肺、腰、蛋黄、肥肉、黄油、猪牛羊油等，这些食物易使血脂升高，易发生动脉粥样硬化;//3、不宜饮酒，酒精能使血糖发生波动，空腹大量饮酒时，可发生严重的低血糖，而且醉酒往往能掩盖低血糖的表现，不易发现，非常危险。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161229/09a259b2e182f14f0c3d23818a2ca7d3.jpg', 'http://images.meishij.net/p/20170122/c6073156c81757ec3a7757371242be19_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (95, '烟民清肺吃什么？', '2019-03-14', '原标题：烟民清肺吃什么?三款汤品不能少//很多男性朋友们都会有吸烟的习惯，吃些什么可以清肺呢?在我们的餐桌上可以尝试接下来为大家推荐的几种食物来帮助吸烟的男性朋友清肺，快来一起看看都有哪些，千万别错过了。//烟民清肺吃什么好//经常喝茶：吸烟时，烟雾中所含的一些化合物会导致动脉内膜增厚，胃酸分泌量减少以及血糖的增高等。如果想避免这些化合物在体内滞留，最好的解决方法是多喝茶。这是因为茶叶中的茶多酚、咖啡碱、维生素C等多种成分，可以对这些有毒的物质起到分解的作用。同时茶叶又有利尿的作用，可以帮助促进有毒物质的排出。//吃含硒元素丰富的食物：经常吸烟的人，体内血液中的硒元素含量会有所下降，而硒元素是防癌的一种微量元素。如果人体内缺乏硒元素，癌症的发病率就会大大的增高。所以建议经常吸烟的男士日常应该多吃含硒元素丰富的食物，例如芝麻、麦芽、大蒜、蛋类、酵母、动物肝脏、肾脏等。//多吃降低胆固醇的食物：吸烟会导致血管中的胆固醇和脂肪沉积量加大，从而导致大脑的供血量减少，容易导致脑萎缩，加速大脑的老化。所以为了避免胆固醇和脂肪在体内的堆积，最好少吃含有脂肪酸的肥肉，多吃能够降低或者抑制胆固醇合成的食物，例如牛肉、鱼类、豆制品以及高纤维的食物。//增加碱性食物的摄取：这是因为，水果、蔬菜、大豆等碱性食物，可以有效的降低身体对尼古丁的吸收率。同时这些碱性的食物还可以刺激胃酸的分泌，增加肠胃的蠕动，能够避免消化不良等症状的发生。//接下来，再来看看清肺的汤品都有哪些吧。//烟民清肺的三款汤品//川贝雪梨猪肺汤：取猪肺120克，洗净切块，放入开水中煮5分钟，再用冷水洗净，沥干水。将川贝母9克洗净打碎，雪梨连皮洗净，去蒂和梨心，梨肉连皮切小块。将以上原料全部放入沸水锅内，文火煮2个小时，调味后适量饮用。//杏仁雪梨山药糊：北杏仁10克，雪梨1个，山药粉、白糖适量。先将北杏仁用开水浸，洗净，雪梨去皮，洗净，取肉切粒，然后把杏仁、雪梨粒放搅拌机内，搅拌成泥状。用清水适量，把杏梨泥、山药粉、白糖调成糊状，倒入沸水锅内(沸水约100毫升)，不断搅拌，煮熟即可。适量食用。//冬菇雪耳猪胰汤：猪胰1条，猪瘦肉60克，冬菇15克，雪耳9克。先将冬菇洗净，雪耳浸开洗净，摘小朵，猪胰、猪瘦肉洗净，切片。把冬菇、雪耳放入锅内，加清水适量，武火煮沸后，文火煮20分钟，放猪胰、猪瘦肉，再煮沸，调味即可。适量饮用。//吸烟对健康的危害很大，建议男性朋友们戒烟哦。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161028/0e56587e4c6ff3d8354b2bd8d6f980c3.jpg', 'http://images.meishij.net/p/20161019/042af4eea9ae9cf83daa8e5363fb3f98_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (96, '干煸牛肉的3种做法', '2019-03-14', '原标题：牛肉食用有禁忌 教你干煸牛肉的3种做法//牛肉营养价值丰富，是进补和日常餐桌上都不能少的肉类食物。牛肉在做法上也有很多，干煸牛肉就是其中一种。并且，干煸牛肉的做法也有很多种，下面就来为大家具体介绍一下干煸牛肉的3种做法吧。//干煸牛肉的3种做法//简单版：将牛肉切成筷子粗细的丝，姜、香芹切丝。热锅凉油，下锅后小火反复煸炒。牛肉丝变白出水后，将牛肉丝倒出，沥干水。热锅凉油，加入牛肉丝煸炒。下入姜丝、2克盐，加入豆瓣酱，豆瓣酱煸炒出红油后，加入酱油。加入芹菜丝，出锅前放入花椒面和芝麻。//豪华版：将牛肉洗净沥干，横切成丝状，香芹剪去根与叶子以后洗干净，切成约3厘米长的段，干辣椒洗净后用剪刀将其竖向剪开，去籽后再剪成条，生姜切成丝，大蒜去皮切成片，郫县豆瓣剁碎，香菜洗净切成段。热锅放油，放入花椒，炸出香味后下牛肉丝炒散后再继续煸炒，要一直将水分炒干。加入2小勺料酒，炒均匀，再下入干辣椒、生姜、大蒜、郫县豆瓣，继续将牛肉煸酥。下入芹菜，再加入适量的盐、鸡粉、少许白糖，炒至芹菜断生后再放入香菜与生抽，炒均匀后就可以出锅了。//至尊版：碗中清水和少量盐化开，放入洗净的牛肉，泡半大约小时，让牛肉出血水。炖锅中放十几颗花椒、八角4个、葱段、姜片、黄酒两勺、牛肉块，清水没过牛肉约5公分，大火烧开以后，转小火炖1.5-2小时，牛肉若用筷子扎得透，扎孔里不出血水，即为八成熟，关掉火，捞出来控水，等待凉透。凉透的牛肉顺着肉的纹理切成条，香芹切段、姜切丝、蒜切碎末备用。锅里放花椒、干辣椒、半碗冷油、开小火，慢慢炸出香味来，看花椒快变黑，关掉火，捞出花椒和干辣椒。重热锅中油，放进八角，姜丝、芝麻、牛肉条，花椒粉、中火煸炒5分钟左右，至牛肉发干，倒入豆豉辣酱、老抽、糖、接着炒5分钟、放香芹炒至变软、按自己口味放适量盐、出锅前放蒜末再炒一分钟即可。//除此之外，还要为大家介绍的就是牛肉的选购方法和禁忌。//如何选购牛肉//闻，新鲜肉具有正常的气味，较次的肉有一股氨味或酸味。//摸，一是要摸弹性，新鲜肉有弹性，指压后凹陷立即恢复，次品肉弹性差，指压后的凹陷恢复很慢甚至不能恢复，变质肉无弹性;二要摸黏度，新鲜肉表面微干或微湿润，不粘手，次新鲜肉外表干燥或粘手，新切面湿润粘手，变质肉严重粘手，外表极干燥，但有些注水严重的肉也完全不粘手，但可见到外表呈水湿样，不结实。//看，看肉皮有无红点，无红点是好肉，有红点者是坏肉;看肌肉，新鲜肉有光泽，红色均匀，较次的肉，肉色稍暗;看脂肪，新鲜肉的脂肪洁白或淡黄色，次品肉的脂肪缺乏光泽，变质肉脂肪呈绿色。//牛肉的食用禁忌//老人小孩不宜多吃。牛肉高胆固醇、高脂肪、老年人、儿童、消化力弱的人不宜多吃。//牛肉不可以烤。牛肉不宜熏、烤、腌炙，以免产生苯并芘和亚硝胺等致癌物质。//牛肉猪肉不能共食。猪肉和牛肉不共食的说法由来已久，从中医角度来考虑，一是从中医食物药性来看，猪肉酸冷、微寒，有滋腻阴寒之性，而牛肉则气味甘温，能补脾胃、壮腰脚，有安中益气之功。二者一温一寒，一补中脾胃，一冷腻虚人。性味有所抵触，故不宜同食。//肾炎患者不可多吃。牛肉属于高蛋白食品，对肾炎患者不可多食，以免加重肾脏负担，与氨茶碱类药物同用，也会使其疗效下降。//不可过量食用。中医认为牛肉有补中益气、滋养脾胃、强健筋骨、化痰息风、止渴止涎的功效，适宜于中气不足、气短体虚、筋骨酸软、久病贫血、面黄体瘦、头晕目眩的病人食用。适宜用量每餐约80克，过量食用可能会提高结肠癌和前列腺癌的患病几率。//不可以和白酒一起食用。牛肉和白酒一起食用会牙齿发炎;白酒为大温大热之品，饮白酒吃牛肉对温热体质的人犹如生火添热，容易引起面赤身热，疮疖恶化。//干煸牛肉的做法是不是很简单呢?快来试试看吧。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161101/e874d172d67599b33eac4fb0be82e4b0.jpg', 'http://images.meishij.net/p/20161018/5383b5b8f53e4afbcf3f989b732f1790_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (98, '清洗烤箱的6个小窍门', '2019-03-14', '原标题：烤箱清洗很困难?教你清洗烤箱的6个小窍门//现如今，人们的生活水平越来越高，烤箱也逐渐成为了大多数家庭厨房最常见的电器之一。可是，烤箱要怎样清洗才彻底不会有异味呢?如果你也有这样的烦恼，就来往下继续看看清洗烤箱的小窍门吧。//家用烤箱的种类//台式小烤箱：台式烤箱好处在于非常灵活，可以根据需要选择不同配置的烤箱，由于品质，配置的不同，价位从几百元到几千元不等，国外的品牌通常比较贵，而国内的产品性价比就比较高，很多国外的品牌也都是在国内进行的OEM代工。建议选择带有“不沾油内胆”的机型，长期使用更洁净。//嵌入式烤箱：另一种就是嵌入式烤箱了，是小烤箱的升级和终极版。因为其功率较大、烘烤速度快、密封性好(一般采用橡胶垫条密封)、隔热性好(三层钢化玻璃隔热)、温控准确，受到越来越多人的喜爱。同时由于2007-2013年对健康的追求，外面蛋糕店里的食品由于添加剂过多，越来越多的中产家庭已经注意到这个问题，开始食用自己烘烤的食品。2013年家用嵌入式烤箱的价格相对还较高，一般进口的在七八千上万，国产的大品牌也在七八千左右(方太的)，因为走平民路线，以较高的品质(其产品一直出口欧洲)销售情况一直很好。//那么，使用烤箱应该注意的是什么呢?//使用烤箱的7大注意事项//第一次使用电烤箱的时候要注意清洁。先用干净湿布将烤箱内外擦拭一遍，除去一些尘埃。然后可以空着炉使用高温烤一阵子，有时候可能会冒出白烟，这属于正常现象。烤完后要注意通风散热。//清洁后过可以正常使用电烤箱了。在烘烤任何食物前，需先预热至指定温度，才能符合食谱上的烘烤时间。烤箱预热约需10分钟，若烤箱预热空烤太久，也有可能影响烤箱的使用寿命。//小心正在加热中的烤箱，以免被烫伤。除了内部的高温，外壳以及玻璃门也很烫，所以在开启或关闭烤箱门时要小心，以免被玻璃门烫伤。将烤盘放入烤箱或从烤箱取出时，一定要使用柄，严禁用手直接接触烤盘或烤制的食物。切勿使手触碰加热器或炉腔其他部分，以免烫伤。//烤箱在使用时，应先将温度调好。烤箱在使用时，应先将温度调好上火、下火，上下火调整好，然后顺时针拧动时间旋钮(千万不要逆时针拧)，此时电源指示灯发亮，证明烤箱在工作状态。在使用过程中，假如我们设定30分钟烤食物，但是通过观察，20分钟食物就烤好，那么我们这个时候不要逆时针拧时间旋钮，请把三个旋钮中间的火位档，调整到关闭就可以了，这样可以延长机器的使用寿命。这与微波炉的用法是不同的，微波炉可以逆转。//每次使用完待其冷却后应进行清洁。应该注意的是，在清洁箱门、炉腔外壳时应用干布擦抹，切忌用水清洗。如遇较难清除的污垢时可用洗洁精轻轻擦掉。电烤箱的其它附件如烤盘、烤网等可以用水洗涤。//烤箱一定要摆放在通风的地方。不要太靠墙，便于散热。而且烤箱最好不要放在靠近水源的地方，因为工作的时候烤箱整体温度都很高，如果碰到水的话会造成温差。//烤箱工作时，不要长时间守在烤箱前。不要长时间守在烤箱前面。 如果烤箱的玻璃门发现有裂痕之类的请立刻停止使用。//清洗烤箱的小窍门//所需工具：洗涤灵、装有少量清水的喷壶儿1个、热水1碗、干净抹布1块儿、厨房纸巾//方法：//把洗涤灵倒入装有少量清水的喷壶儿里，浓度要高一点儿，洗涤灵和水的比例在1：10左右，这样去污能力会强一点儿。//将勾兑好的洗涤灵溶液喷在烤箱内有油污的地方，油污重的位置多喷点儿。//将厨房纸巾铺在烤箱四壁后，重新在纸巾上再喷一遍洗涤灵水。//把准备好的一大碗开水放入烤箱，关上烤箱门儿，不通电，焖10分钟。//10分钟后取下纸巾，但先别急着扔掉，用蘸有洗涤灵水的纸巾轻轻一擦，油污就擦掉了。//最后用干净的抹布将烤箱擦拭干净就OK了。//以上教大家清洗烤箱的方法，快来试试看吧。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161222/7ff72c07e6737fb78573195caaa89a3b.jpg', 'http://images.meishij.net/p/20161013/9bd817c2e7f4a8df880dd636701328bd_150x150.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (99, '不吃主食，真会更健康吗？', '2019-03-12', '最近有一本叫做《谷物大脑》的书风靡世界图书市场，引起了很多读者的注意。它之所以如此火爆，主要是因为其中提出了颠覆性的理念——吃小麦有害健康，吃主食无益，高碳水化合物的饮食不仅让人肥胖，还会让大脑提前衰老，以鱼肉+蔬菜的低碳水化合物饮食才是正确的，而且完全不需要恐惧饱和脂肪。这样的说法，和人们以往三十年当中听到的健康饮食建议，实在是差距太大了。//如果说它是谣言，这明明是一位多年研究大脑和神经系统疾病的著名医学专家写的;如果说是医生不懂营养，书中明明列举了大量的研究证据，不由得读者不相信。//有位朋友迷茫地问：难道说，我吃了一辈子的面食，是让我衰老的原因?我不吃它们，脑子就会好用些?//另一位朋友问：不吃主食，到底吃什么啊?天天大鱼大肉当饭，不吃一点主食，别说健康不健康，首先我就吃不下去，也吃不起啊!//说实话，这本书里的内容，并未让我感觉非常惊讶。因为相关的研究证据我也看了很多，而且非常赞成其中的某些说法——不要吃那么多的面食，甜食更不要吃，长期的高血糖反应是有害的。//目前有足够多的研究能让人确信，餐后血糖过高是一个加速大脑衰老的因素。我们所吃的日常主食，无论是白米饭、白馒头、白面包，还是奶黄包、包子、花卷、枣糕、玉米糕、发面饼、白米粥、米糕等，哪个都是高血糖反应的食物。研究发现，餐后血糖控制能力较差的人，在认知能力测试方面得分较低;胖人和体重正常的人相比，大脑工作能力也会提前下降。除了促进大脑衰老之外，高血糖反应的饮食也会增加罹患肥胖、糖尿病、心脑血管疾病以及部分癌症的风险。//小麦中的面筋蛋白(gluten，常被翻译为“麸质”)，是一个食物慢性过敏的常见诱因。欧洲有不少人对面筋蛋白慢性过敏，不仅可能导致肥胖，还可能导致大脑空白、思维混乱之类大脑神经系统的功能障碍。不仅白馒头白面包中含有它，全麦面包中也有它们，那些低血糖反应的通心粉、意大利面中含量也很高。所以，如果测出有小麦面筋蛋白慢性过敏，就应当远离所有的含面粉食物，连炸大虾外面裹的那层面粉最好也避免。//如果像作者所提倡的那样，不吃各种主食，以鱼肉和蔬菜为食，那么人的确会出现快速的体重下降，这一点令很多人感觉神奇，其实也不过是一个生物化学常识——因为这样做会让脂肪无法充分分解，产生含有能量的“酮体”，使血液酸化，身体必须尽快把它排出去。但排出酮体，意味着身体会浪费大量的能量，所以脂肪分解的速度远远超过正常“管住嘴、迈开腿”时脂肪分解的速度。同时，因为基本上不吃含淀粉和糖的食物，所以餐后的血糖上升幅度微乎其微。在短时间之内，这样的吃法会变瘦，血糖会降低，血脂也不会升高。//不过，先别着急欢呼。不吃主食的饮食方式，从上世纪六七十年代以来，更换包装之后已经数度流行，但每次都从火爆转为式微，这次我相信也不会例外。因为，世界上没有那么完美的饮食健康解决方案。这里不说复杂的科学研究，只说人们都很容易理解的常识。如果一辈子不吃粮食、薯类和杂豆，以鱼肉蛋和蔬菜为主食，能够解决以下这些问题吗?//1 以鱼肉为主食，饮食安全堪忧//很多西方人笃信“石器时代饮食”，说远古人类以肉为主食，吃肉才是人类基因所适合的生活。但是，以鱼肉类为主食，和吃谷物豆类蔬果相比，更易招来环境污染。根据生物放大定律，每升高一个营养级，难分解环境污染物(比如各种重金属、二噁英、多氯联苯、六六六等)的浓度就会上升至少10倍。现在不是远古那种没有化学污染的环境条件了。每天吃一两肉污染风险较小，但每天吃一斤肉的污染风险就大10倍。//有人说，我可以选择有机食物和野生深海鱼类。但是，你能保证自己一辈子吃的鱼肉蛋类全是有机的吗?即便深海鱼类，其中也会含有汞污染，大量当饭吃并不是明智之举。//2 吃肉为主食，会增加肠癌等多种癌症的风险，也会增加心脑血管疾病的危险。//正如人们所记得的那样，世界卫生组织(WHO)在去年已经把红肉和肉类加工品(香肠火腿培根咸肉等)列为一类致癌物，因为过多的红肉会增加肠癌的风险。还有很多研究表明，过多的红肉(每天平均100克以上)和红肉加工品(每天25克以上)可能会增加高血压、冠心病、乳腺癌、前列腺癌等疾病的危险。中国居民膳食指南中推荐的每天40-75克的红肉是不会带来这种危险的。//虽然提倡低碳水化合物饮食的人都会强调多吃蔬菜，但实际上如果没有谷类、豆类和薯类，仅仅靠蔬菜来供应多种膳食纤维，很难达到每日25-35克的推荐范围。为了躲开一种病，升高自己其他一些疾病的危险，值得吗?//3 以鱼肉类和蔬菜为主食，对胃肠功能要求较高，部分人容易出现营养不良。//在中国这样从小以淀粉类食物为主食的人群当中，并非每个人都能承受大量吃鱼肉这样的消化负担。和淀粉类主食相比，鱼肉类食物饱腹感较高，消化速度较慢。在不吃主食之后，很多人无法消化过多的鱼肉类，实际摄入的能量大幅度减少，出现饥饿节食和蛋白质营养不良的状态。因为采纳不吃主食减肥法而发生月经不调、掉头发、皮肤松弛的女性屡见不鲜，尽管她们都声称自己每天吃很多鱼肉蛋和蔬菜。不吃主食之后，因为低血糖和B族维生素不足而造成心情恶劣、情绪沮丧、脾气暴躁的减肥女性也相当多见。//4 长期不吃含淀粉食物的饮食方法，难以长期持续，停下立刻反弹。//在西方减肥研究当中，低脂肪方法的依从性较好，而低碳水化合物减肥方法则常常存在退出率较高的情况，也就是说，受试者不太愿意长期坚持。对于我国这样一个从小习惯于以碳水化合物食物为主食的国家，这种情况更为明显。人们宁愿接受少油的烹调方法，也不愿意接受一辈子不吃主食的生活。两三个月固然能够暂时忍受，但如果成年累月不吃淀粉类食物，人们会感觉不幸福。没有幸福感的事情，多数人是很难长期持续的。//所以，吃肉为主食，虽然短期因为酮症而快速减重，但除非你一辈子坚持这种吃法，否则只要开始恢复淀粉类主食，体重马上就会反弹——此前的成果化为乌有，而体重忽高忽低的波动非常有害健康，折腾自己有什么意义呢?//证明低碳水化合物减肥法好处的研究都是3-6个月的短期研究。国外有一年以上甚至两年以上的长期研究证明，从长期来说，不吃主食的减肥法并不优于吃主食而减脂肪的减肥法。如果不吃主食的减肥法真的那么成功，而且能够长期维持，怎么能解释欧美经历多次低碳水化合物减肥法的热潮之后，至今仍然肥胖率居高不下的事实呢?//5 低碳水化合物的饮食，肝肾的工作负担加重，并非人人适合。//低碳水化合物饮食中，主要能源从碳水化合物切换为蛋白质和脂肪，蛋白质代谢加强，产生的尿素增加，给肝脏和肾脏带来负担;脂肪不能彻底分解，而是产生酮酸，需要及时排除，更会增加肾脏的负担。一些代谢能力较弱的人采用这种膳食后会感觉身体疲劳，脸色和皮肤变差，记忆力下降。肝肾功能不全的人更不能采用这种吃法。//6 吃肉为主食，以中国的资源环境条件，是不可承受的。//最要紧的是，相比于以谷物为主食，以鱼肉为主食会大大增加资源消耗。在我国这样一个人口密集而农业资源不足，20%食物需要依赖进口的国家里，一部分人以鱼肉为主食，那么另一部分人只能饿死，所以这种饮食方式永远只能是少数人，在我国不具备广泛推广的可能性。//7 没有研究确认，低碳水化合物饮食比吃主食的低血糖反应饮食更能延长寿命。//很多西方的书上推崇石器时代饮食，但是别忘记一个事实，那就是古人的平均寿命都非常短，他们的吃法并不能预测老年后的情况。现代人的预期寿命已经长达70多岁甚至80岁以上，学习古人的吃法未必会有长寿效果。虽然有一些动物实验证明降低糖的供应可以延长寿命，也有研究证明降低餐后血糖反应有多种好处，但并没有证据显示，低碳水化合物饮食比正常吃主食，但选择低血糖反应食材的饮食更能促进长寿。//那么，饮食、健康和生态的综合解决方案是什么呢?很多研究已经提示了答案。//仍然吃主食，仍然摄入正常量的碳水化合物(每天从主食中摄入淀粉+果蔬中天然糖的总量约200-300克，减肥时最低不低于120克)，但更多地选择慢消化、高膳食纤维、低血糖反应的主食，比如燕麦、荞麦、黑米、红小豆、芸豆、干豌豆等各种杂粮，再配合大量的蔬菜和少量的鱼肉蛋奶，就是一个好答案。这种饮食结构，既能避免吃大米白面过度升高血糖的麻烦，可以避免过多摄入面筋蛋白的问题，又能减轻肝脏和肾脏的负担，大量研究证明，这种吃法也有利于降低肥胖、糖尿病、老年认知退化、心脑血管疾病和多种癌症的危险。而这正是中国居民膳食指南中所推荐的饮食方式。它符合国情，容易操作，不会引入更多的环境污染，而且能够长期持续而无损健康。（范志红）//来源：新华网//', 'http://images.meishij.net/p/20161018/f3d0ac75c61076303cd58b948332aeb0.jpg', 'http://site.meishij.net/r/150/78/3394650/a3394650_147635008229286.jpg', 0, 1, NULL, 2);
INSERT INTO `article` VALUES (100, '四个喝豆浆误区不能犯', '2019-03-11', '原标题：豆浆泡咖啡有助减肥 四个喝豆浆误区不能犯//如果你是个爱美的女生，想要瘦瘦小肚子，如果有一种方法既不痛苦，又能瘦下来，那就称得上完美了!豆浆你肯定喝过，咖啡你也并不陌生;而这两者放在一起，你知道有什么功效吗?其实，在家想要轻松收腹，不妨试试自制一款豆浆咖啡，促进消化帮助收腹。让你告别“小腹婆”，做个辣女郎。//豆浆泡咖啡有助减肥//豆浆滋阴润燥，利水下气，养颜补虚。常饮豆浆可降低血压、血脂，优化血液循环。而咖啡的主要成分是咖啡因和可可碱，含有蛋白质、脂肪、粗纤维、蔗糖以及多种维生素和多种矿物质，有提神醒脑、利尿强心、促进消化的功效。两者合一的豆浆咖啡热量比较低，制作方法也简单，口感与味道还很独特，并且容易产生饱腹感，顶替高热量食物。//做法：首先用豆浆机打磨新鲜的黄豆，把新鲜豆浆煮开2~3分钟后打泡，然后用热豆浆作为冲咖啡的底，直接倒入咖啡粉，搅拌均匀即可。但是，要记得不要放糖哦，否则不能保证瘦身的效果了。平时喝咖啡时，也可以使用无糖或低糖豆浆，取代牛奶作为咖啡伴侣。//豆浆属于高纤维食物，能增强肠胃蠕动功能，使我们的小腹不再凸出。此外豆浆中还含有丰富的不饱和脂肪酸，能分解体内的胆固醇，促进脂质代谢。因此豆浆是促进肠胃排毒、降低血液中胆固醇含量的健康饮品。用豆浆搭配咖啡，不仅能帮助咖啡促进脂肪燃烧，更能减少咖啡因对肠胃和神经的刺激，起到平缓疏通的作用。对于总是有小肚子烦恼的美眉们来说，非常有效。//喝豆浆需注意四个误区//我们都知道，豆浆是含有蛋白质等丰富营养物质的饮品，能够改善骨骼代谢和预防骨质疏松，是中老年的最佳饮品，但是如果不正确的喝豆浆不但不会增加营养反而会适得其反。下面我们一起来看一下喝豆浆的四大误区：//1、空腹喝豆浆//许多人喜欢早餐先喝一杯豆浆，然后才开始吃早餐。其实这样是很不科学的。如果空腹饮豆浆，豆浆里的蛋白质大都会在人体内转化为热量而被消耗掉，营养就会大打折扣，因此，饮豆浆时最好吃些面包、馒头等淀粉类食品。另外，喝完豆浆后还应吃些水果，因为豆浆中含铁量高，配以水果可以促进人体对铁的吸收。//2、所有人都能喝豆浆//有些人认为豆浆营养丰富，男女老幼，人人都适宜。其实也不是，豆浆性平偏寒，因此常饮后有反胃、嗳气、腹泻、腹胀的人，以及夜间尿频、遗精的人，均不宜饮用豆浆。另外，豆浆中的嘌呤含量高，痛风病人也不宜饮用。//3、豆浆只需要加热//现在豆浆机那么方便，许多人喜欢自己动手做豆浆，但是豆浆不是只要加热就行的。喝了未煮熟的豆浆会中毒，因为生豆浆中含有皂素、胰蛋白酶抑制物等有害物质，未煮熟就饮用不仅会难以消化，而且还会出现恶心、呕吐和腹泻等中毒症状。//4、豆浆可以用保温瓶储存//相信大家都遇到过豆浆一次喝不完的情况，有些人会用保温瓶储存起来，其实这样也是不健康的。专家建议不要用保温瓶储存豆浆。因为豆浆装在保温瓶内，会使瓶里的细菌在温度适宜的条件下，将豆浆作为养料而大量繁殖，经过3~4小时就会让豆浆酸败变质。//来源：家庭医生在线//', 'http://images.meishij.net/p/20161024/073a3f1c006a34faca3664efaeb648a4.jpg', 'http://images.meishij.net/p/20161011/36c0138b235498418dd0495ccbcbd382_150x150.jpg', 0, 1, NULL, 2);

-- ----------------------------
-- Table structure for articleauthor
-- ----------------------------
DROP TABLE IF EXISTS `articleauthor`;
CREATE TABLE `articleauthor`  (
  `authorId` int(11) NOT NULL,
  `authorName` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `authorBrief` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `authorImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`authorId`) USING BTREE,
  INDEX `authorId`(`authorId`) USING BTREE,
  INDEX `authorId_2`(`authorId`) USING BTREE,
  INDEX `authorId_3`(`authorId`) USING BTREE,
  INDEX `authorId_4`(`authorId`) USING BTREE,
  INDEX `authorId_5`(`authorId`) USING BTREE,
  INDEX `authorId_6`(`authorId`) USING BTREE,
  INDEX `authorId_7`(`authorId`) USING BTREE,
  INDEX `authorId_8`(`authorId`) USING BTREE,
  INDEX `authorId_9`(`authorId`) USING BTREE,
  INDEX `authorId_10`(`authorId`) USING BTREE,
  INDEX `authorId_11`(`authorId`) USING BTREE,
  INDEX `authorId_12`(`authorId`) USING BTREE,
  INDEX `authorId_13`(`authorId`) USING BTREE,
  INDEX `authorId_14`(`authorId`) USING BTREE,
  INDEX `authorId_15`(`authorId`) USING BTREE,
  INDEX `authorId_16`(`authorId`) USING BTREE,
  INDEX `authorId_17`(`authorId`) USING BTREE,
  INDEX `authorId_18`(`authorId`) USING BTREE,
  INDEX `authorId_19`(`authorId`) USING BTREE,
  INDEX `authorId_20`(`authorId`) USING BTREE,
  INDEX `authorId_21`(`authorId`) USING BTREE,
  INDEX `authorId_22`(`authorId`) USING BTREE,
  INDEX `authorId_23`(`authorId`) USING BTREE,
  INDEX `authorId_24`(`authorId`) USING BTREE,
  INDEX `authorId_25`(`authorId`) USING BTREE,
  INDEX `authorId_26`(`authorId`) USING BTREE,
  INDEX `authorId_27`(`authorId`) USING BTREE,
  INDEX `authorId_28`(`authorId`) USING BTREE,
  INDEX `authorId_29`(`authorId`) USING BTREE,
  INDEX `authorId_30`(`authorId`) USING BTREE,
  INDEX `authorId_31`(`authorId`) USING BTREE,
  INDEX `authorId_32`(`authorId`) USING BTREE,
  INDEX `authorId_33`(`authorId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章作者' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articleauthor
-- ----------------------------
INSERT INTO `articleauthor` VALUES (1, '诸葛白少侠', '我是一名大侠', 'https://s1.st.meishij.net/user/103/141/t8472853_147442267136995.jpg');

-- ----------------------------
-- Table structure for articleclassify
-- ----------------------------
DROP TABLE IF EXISTS `articleclassify`;
CREATE TABLE `articleclassify`  (
  `articleClassifyId` int(11) NOT NULL,
  `articleClassifName` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`articleClassifyId`) USING BTREE,
  INDEX `classifyId`(`articleClassifyId`) USING BTREE,
  INDEX `classifyId_2`(`articleClassifyId`) USING BTREE,
  INDEX `classifyId_3`(`articleClassifyId`) USING BTREE,
  INDEX `classifyId_4`(`articleClassifyId`) USING BTREE,
  INDEX `classifyId_5`(`articleClassifyId`) USING BTREE,
  INDEX `classifyId_6`(`articleClassifyId`) USING BTREE,
  INDEX `classifyId_7`(`articleClassifyId`) USING BTREE,
  INDEX `classifyId_8`(`articleClassifyId`) USING BTREE,
  INDEX `classifyId_9`(`articleClassifyId`) USING BTREE,
  INDEX `classifyId_10`(`articleClassifyId`) USING BTREE,
  INDEX `classifyId_11`(`articleClassifyId`) USING BTREE,
  INDEX `classifyId_12`(`articleClassifyId`) USING BTREE,
  INDEX `classifyId_13`(`articleClassifyId`) USING BTREE,
  INDEX `classifyId_14`(`articleClassifyId`) USING BTREE,
  INDEX `classifyId_15`(`articleClassifyId`) USING BTREE,
  INDEX `classifyId_16`(`articleClassifyId`) USING BTREE,
  INDEX `articleClassifyId`(`articleClassifyId`) USING BTREE,
  INDEX `articleClassifyId_2`(`articleClassifyId`) USING BTREE,
  INDEX `articleClassifyId_3`(`articleClassifyId`) USING BTREE,
  INDEX `articleClassifyId_4`(`articleClassifyId`) USING BTREE,
  INDEX `articleClassifyId_5`(`articleClassifyId`) USING BTREE,
  INDEX `articleClassifyId_6`(`articleClassifyId`) USING BTREE,
  INDEX `articleClassifyId_7`(`articleClassifyId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articleclassify
-- ----------------------------
INSERT INTO `articleclassify` VALUES (1, '饮食小常识');
INSERT INTO `articleclassify` VALUES (2, '养身妙方');
INSERT INTO `articleclassify` VALUES (3, '饮食禁忌');
INSERT INTO `articleclassify` VALUES (4, '美容瘦身');

-- ----------------------------
-- Table structure for attention
-- ----------------------------
DROP TABLE IF EXISTS `attention`;
CREATE TABLE `attention`  (
  `attentionId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增数字',
  `userId` int(11) NOT NULL,
  `fansId` int(11) NOT NULL,
  PRIMARY KEY (`attentionId`) USING BTREE,
  INDEX `fk_fans_userinfo_idx`(`userId`) USING BTREE,
  INDEX `fk_fansId_userinfo_idx`(`fansId`) USING BTREE,
  CONSTRAINT `fk_fansId_userinfo` FOREIGN KEY (`fansId`) REFERENCES `userinfo` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_userId_userinfo` FOREIGN KEY (`userId`) REFERENCES `userinfo` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '粉丝表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attention
-- ----------------------------
INSERT INTO `attention` VALUES (40, 2, 5);
INSERT INTO `attention` VALUES (41, 2, 6);
INSERT INTO `attention` VALUES (42, 3, 5);
INSERT INTO `attention` VALUES (43, 6, 5);
INSERT INTO `attention` VALUES (44, 2, 6);
INSERT INTO `attention` VALUES (45, 7, 6);
INSERT INTO `attention` VALUES (46, 9, 6);
INSERT INTO `attention` VALUES (47, 3, 5);
INSERT INTO `attention` VALUES (48, 7, 5);
INSERT INTO `attention` VALUES (49, 1, 5);
INSERT INTO `attention` VALUES (50, 14, 5);
INSERT INTO `attention` VALUES (51, 13, 5);
INSERT INTO `attention` VALUES (52, 24, 6);
INSERT INTO `attention` VALUES (53, 23, 9);
INSERT INTO `attention` VALUES (54, 23, 7);
INSERT INTO `attention` VALUES (55, 13, 2);
INSERT INTO `attention` VALUES (56, 13, 6);
INSERT INTO `attention` VALUES (57, 12, 8);
INSERT INTO `attention` VALUES (61, 12, 3);
INSERT INTO `attention` VALUES (62, 27, 3);
INSERT INTO `attention` VALUES (63, 25, 3);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `commentId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `commentContent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `myadminId` int(11) NULL DEFAULT NULL,
  `detailsId` int(11) NULL DEFAULT NULL,
  `commentTime` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`commentId`) USING BTREE,
  INDEX `fk_details_comment_idx`(`detailsId`) USING BTREE,
  INDEX `fk_userInfo_commment_idx`(`userId`) USING BTREE,
  INDEX `fk_myadmin_comment_idx`(`myadminId`) USING BTREE,
  CONSTRAINT `fk_details_comment` FOREIGN KEY (`detailsId`) REFERENCES `recipedetails` (`detailsid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_userInfo_commment` FOREIGN KEY (`userId`) REFERENCES `userinfo` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 1, '11111', 11, 1, '1');

-- ----------------------------
-- Table structure for dietlist
-- ----------------------------
DROP TABLE IF EXISTS `dietlist`;
CREATE TABLE `dietlist`  (
  `dietId` int(11) NOT NULL AUTO_INCREMENT COMMENT '制作食谱编号',
  `dietTitle` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '\'\'作品标题\'\'',
  `dietPhoto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '作品图片',
  `dietTime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '制作时间<用户填入>',
  `dietWeigh` int(20) NULL DEFAULT NULL COMMENT '制作份量<用户选择>',
  `dietIntroduce` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '\'\'制作简介\'\'',
  `releaseTime` date NULL DEFAULT NULL COMMENT '发布时间<我们设定>',
  `userId` int(11) NOT NULL COMMENT '用户编号',
  `productState` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '未审核',
  PRIMARY KEY (`dietId`) USING BTREE,
  INDEX `fk_dietList_userInfo_idx`(`userId`) USING BTREE,
  INDEX `dietId`(`dietId`) USING BTREE,
  INDEX `dietId_2`(`dietId`) USING BTREE,
  INDEX `dietId_3`(`dietId`) USING BTREE,
  INDEX `dietId_4`(`dietId`) USING BTREE,
  INDEX `dietId_5`(`dietId`) USING BTREE,
  INDEX `dietId_6`(`dietId`) USING BTREE,
  INDEX `dietId_7`(`dietId`) USING BTREE,
  INDEX `dietId_8`(`dietId`) USING BTREE,
  INDEX `dietId_9`(`dietId`) USING BTREE,
  CONSTRAINT `dietlist_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `userinfo` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '未完成的作品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dietlist
-- ----------------------------
INSERT INTO `dietlist` VALUES (1, '蒜香土豆茄子', 'https://cp1.douguo.com/upload/caiku/c/3/4/600x400_c3be8b7e8ccd4f89189d54c964f5fb54.jpg', NULL, NULL, '简单快手的一锅出，你需要这样一盘下饭菜。软糯美味的土豆，似乎是大众情人。餐桌上最常见的食材，细数起来百种做法都不在话下，无论是煎炸炖煮，它都可以很美味。今天这道蒜香土豆茄子，都是平时下饭菜的首选，蒜瓣煸炒出的香味，浸染的汤汁里，土豆茄子又像海绵一样吸饱了汤汁，就光想象口水都要流出来了~', NULL, 1, '已审核');
INSERT INTO `dietlist` VALUES (2, '红豆沙小小酥', 'https://cp1.douguo.com/upload/caiku/d/8/2/600x400_d8d7adc6541eacfdf1df238136ab5242.jpeg', NULL, NULL, '非常容易操作而且很美味的小零食，无论是自己食用还是包装后送人都是非常不错的。', NULL, 2, '已审核');
INSERT INTO `dietlist` VALUES (3, '奶酥爱心兔子面包---两种吃法（烫种）#安佳黑科技易涂抹黄#', 'https://cp1.douguo.com/upload/caiku/f/6/0/600x400_f647dbf8e81e38d4312c709d22b6ea90.jpg', NULL, NULL, '安佳黑科技易涂抹黄油，1.有盐黄油，所以主面团没有加盐和面2.一包多吃，而且在和面需要黄油，做奶酥需要黄油，包括当餐包吃抹黄油都需要软化的黄油，安佳这次新出的易涂抹黄油【再也不需要时间软化，直接用！！直接吃！！超级容易涂抹！！！】第一种吃法：直接吃爱心，奶酥奶香味十足，香香甜甜。第二种吃法，小兔子当餐包，烤箱稍微加热后抹上黄油，超级美味', NULL, 3, '已审核');
INSERT INTO `dietlist` VALUES (4, '芒果酥【蛋挞皮版】', 'https://cp1.douguo.com/upload/caiku/a/9/7/600x400_a9c3ad33ff0967d0f35db329259eb347.jpg', NULL, NULL, '家里的蛋挞有点多，淡奶油又没有了，怎么办？跟着我做芒果酥吧。比蛋挞还好吃哟！', NULL, 4, '已审核');
INSERT INTO `dietlist` VALUES (5, '红茶珍珠爆浆蛋糕：', 'https://cp1.douguo.com/upload/caiku/6/e/f/600x400_6eba282e0318a9b6564434ce93622f3f.jpeg', NULL, NULL, '这款珍珠爆浆蛋糕目前非常火爆，试了一下口感很不错，减肥的我还吃了3/1，尽量的控制呢哈哈珍珠是自制的，做奶茶的时候也可以放在里面，以前有写过一款奶茶食谱，如果需要可以在我的食谱里搜索。制作珍珠的时候水一定要烧开，并且立即加入木薯粉烫熟，这个操作起来会有一点难度。戚风红茶戚风，用的6寸普通模具。', NULL, 5, '已审核');
INSERT INTO `dietlist` VALUES (6, '番茄鸡蛋汤面', 'https://cp1.douguo.com/upload/caiku/9/5/5/600x400_95d3ff0b6d8bd0324f4407950c53b9d5.jpeg', NULL, NULL, '面劲道好吃，番茄鸡蛋汤有点甜味，也很好喝。', NULL, 6, '已审核');
INSERT INTO `dietlist` VALUES (7, '麻酱凉面', 'https://cp1.douguo.com/upload/caiku/4/e/e/600x400_4ebf845cfb372656fcb2f16d4b281d4e.jpg', NULL, NULL, '这道在夏日清凉开胃的凉面自己在家就能做啊，即便是厨房小白，也能做成！自己煮点儿面条或者蒸熟面条，用少许的油拌开防粘，再调配点儿芝麻酱的碗汁儿，码上自己喜欢的蔬菜，一放一拌，照样能做出来一份夏日街头必点单品！味道咸鲜爽口，蔬菜的清新，混合着芝麻酱浓郁香气的凉面，喜欢香菜的话再撒点儿香菜碎，一点儿白芝麻装饰，没有一点点犹豫，搅起来就开始吃啦~', NULL, 7, '已审核');
INSERT INTO `dietlist` VALUES (8, '香菇烧土豆', 'https://cp1.douguo.com/upload/caiku/2/1/c/600x400_21a0d0c14a07daade17a73ee73bb5b8c.jpg', NULL, NULL, '土豆是很多人喜欢的食材，经过炖煮之后，吸味软烂，非常下饭。香菇具有高蛋白、低脂肪、多糖、多种氨基酸和多种维生素，是非常鲜美营养的食材。两者合一，营养丰富，口味鲜美', NULL, 8, '已审核');
INSERT INTO `dietlist` VALUES (9, '中餐厅同款麻油沙姜鸡', 'https://cp1.douguo.com/upload/caiku/e/b/8/600x400_eb1f06aed233a7a7c4bca039e32fe598.jpg', NULL, NULL, '#罐头视频#连法国人也pick的中餐厅同款麻油沙姜鸡，鸡皮清爽幼滑，肉质细嫩可口，食而不腻，连骨头都香飘四溢，馋涎欲滴的你不要太羡慕，赶紧学起来！', NULL, 9, '已审核');
INSERT INTO `dietlist` VALUES (10, '夏日必备----小龙虾馒头', 'https://cp1.douguo.com/upload/caiku/6/5/b/600x400_65b5b09d7ece8cb004d5ea128befcfdb.jpg', NULL, NULL, '1.空调房做！！！现在外面温度34，只能开空调2.冰牛奶不可少，这样面团温度低，可以非常好控制发酵速度3.没有模具，纯属手捏，天气太热，真的做不到所有步骤多拍照，已尽力，有什么问题留言，我会回复', NULL, 10, '已审核');
INSERT INTO `dietlist` VALUES (11, '素炒包菜胡萝卜', 'https://cp1.douguo.com/upload/caiku/7/7/f/600x400_7745ebee76045cb86788afa4c81591ff.jpg', NULL, NULL, '包菜营养易熟，并且生的也可吃。包菜不仅含有丰富的维生素，还具有一定的抗癌作用。胡萝卜也含有丰富的维生素，还含有大量的维生素A，对我们的眼睛可是大有好处。但是Va属于脂溶性维生素，所以与包菜配合，使得营养更加合理，并使色泽鲜艳，食欲大开。', NULL, 11, '已审核');
INSERT INTO `dietlist` VALUES (12, '七夕〜永不凋谢的黄玫瑰-【馒头】', 'https://cp1.douguo.com/upload/caiku/6/c/5/600x400_6ce5f1fe09fd673ca3e62ec30c606225.png', NULL, NULL, '情人节到了，爱他（她）就送一屉永不凋谢，香甜于心的黄玫瑰馒头吧。一定比一束天价又毫无新意的玫瑰花更让人心动哦。馒头是我国北方小麦生产地区人们的主要食物，在南方也很受欢迎，面粉经发酵制成馒头更容易消化吸收，馒头属于发酵面点，有极高的营养价值，主要通过酵母的作用，酵母和日常所喝的酸奶里的益生菌是一样的，都是活的，营养丰富的单细胞微生物，营养学上把它称作取之不尽的营养源，可以让面点变得松软好吃，而且还可以极大的丰富它的营养价值。面粉自身没有多少蛋白蛋，在添加酵母这种高蛋白食材之后它的营养成份会比没有发酵过的面点高出3-4倍，蛋白质含量增加近2倍，现代人应多吃发酵食品，馒头有利于消化吸收。', NULL, 12, '已审核');
INSERT INTO `dietlist` VALUES (13, '少油版【地三鲜】', 'https://cp1.douguo.com/upload/caiku/7/8/9/600x400_780faf64d9f4ed4167bff118534f1399.png', NULL, NULL, '', NULL, 13, '已审核');
INSERT INTO `dietlist` VALUES (14, '5分钟懒人葡式蛋挞【全蛋版】', 'https://cp1.douguo.com/upload/caiku/9/d/8/600x400_9de36bff0df05ffe4cabf530c2e0fa58.jpg', NULL, NULL, '', NULL, 14, '已审核');
INSERT INTO `dietlist` VALUES (15, '无油健康【烤薯条】', 'https://cp1.douguo.com/upload/caiku/c/d/f/600x400_cdfe20d56ffd3d8d85fc27bac1ed06df.png', NULL, NULL, '一筐外焦里嫩的薯条，味道很棒，爽口不油腻。Ricky10分月时最佳磨牙食品，而且很适合小宝宝的小手爪握，学习自主进食，宝宝特别爱吃，少盐少油，还能满足宝宝长牙时的不适感。', NULL, 15, '已审核');
INSERT INTO `dietlist` VALUES (16, '白灼秋葵', 'https://cp1.douguo.com/upload/caiku/e/d/d/600x400_ed64f4b73bd69db1ce8686eb0c2a8c8d.jpeg', NULL, NULL, '对做菜有兴趣的朋友可以关注公纵号CookGoodFood教你做有颜值的菜很多人不知道秋葵其实是美女们的好朋友诶先不说它可以抗癌可以增强抵抗力秋葵的水含量很高脂肪很少特别适合想要减肥的女孩子而且富含维生素C还可以让皮肤白嫩秋葵的味道和口感都比较有自己的个性所以白灼是最适合它的啦', NULL, 16, '已审核');
INSERT INTO `dietlist` VALUES (17, '自制小零食—香酥蛋卷', 'https://cp1.douguo.com/upload/caiku/a/3/2/600x400_a30dfa0320bcc018b2561906d5480b42.jpeg', NULL, NULL, '从小就特别爱吃蛋卷，酥脆的口感，一根一根好吃的停不下来，现在自己也能在家做出酥、香、脆的蛋卷了，用放心的食材，为家人做美味的蛋卷。', NULL, 17, '已审核');
INSERT INTO `dietlist` VALUES (18, '番茄土豆浓汤', 'https://cp1.douguo.com/upload/caiku/e/2/1/600x400_e29e91a4e787e58cc550baa34320c2d1.jpg', NULL, NULL, '朴素却又营养的蔬菜，土豆和番茄含有丰富的维生素A(胡萝卜素)、维生素C和B族维生素，常食具有保护的视力的功效。这道浓汤中没有加奶油，代餐很棒，酸酸甜甜的也非常棒。最近我家餐桌常见浓汤，因为快手又好喝呀，配个面包超赞~', NULL, 18, '已审核');
INSERT INTO `dietlist` VALUES (19, '红枣牛奶糕与提子蔓越莓牛奶糕', 'https://cp1.douguo.com/upload/caiku/6/9/9/600x400_6954e677e048fa9c58e3fd1be0a1d5a9.jpeg', NULL, NULL, '今天主要是介绍其中两种我比较喜欢的口味。提子蔓越莓牛奶糕酸酸甜甜，百吃不厌，特别开胃。红枣牛奶糕味道香甜，可以再放一些核桃、南瓜子、弯腰果等去提香，味道和营养更加棒。大家可以在我这个食谱的基础上，按照自己的喜好去调整材料。也许你也可以像我一样，在空闲的周末，与孩子一同搅拌，体验一下DIY小点心的乐趣吧！', NULL, 19, '已审核');
INSERT INTO `dietlist` VALUES (20, '百香果柠檬茶-----女生美白排毒必备', 'https://cp1.douguo.com/upload/caiku/9/9/b/600x400_999c19638aeda7cd8171c35c3becee9b.jpg', NULL, NULL, '百香果是我一直都很喜欢的一款水果拿来煮水果茶太赞这次这个方子是在小红书里看到的范冰冰同款百香果柠檬排毒饮品大家也可以试试,除了口感女生都会喜欢外还对身体皮肤好呀是不是,女人为了爱美那可是....', NULL, 20, '已审核');
INSERT INTO `dietlist` VALUES (21, '香葱苏打饼干', 'https://cp1.douguo.com/upload/caiku/9/b/7/600x400_9b1b61acb3b322478332bdaa8fcb06f7.jpg', NULL, NULL, '一款烘焙小白也能轻松做的饼干，无糖低油，属淡咸味饼干。适合不嗜甜的宝宝来吃，热量也不高，轻松吃没负担。', NULL, 21, '已审核');
INSERT INTO `dietlist` VALUES (22, '香葱肉松蛋糕卷。', 'https://cp1.douguo.com/upload/caiku/3/0/3/600x400_30566a308b6390cfcb409089c71224a3.jpeg', NULL, NULL, '绵软的蛋糕，加上法式沙拉酱的酸，可口的肉松，口感丰富，一口咬下去，满满的满足。', NULL, 22, '已审核');
INSERT INTO `dietlist` VALUES (23, '面面盐粉瓜瓜蛋', 'https://cp1.douguo.com/upload/caiku/8/a/7/600x400_8a1c1c723f80ee6e7516410a54c17ac7.jpg', NULL, NULL, '【3-40】这是一个忙到疯球没脑子写诗甚至开始瞎起菜名的故事……各位八月好呀-----2018.8.1', NULL, 23, '已审核');
INSERT INTO `dietlist` VALUES (24, '豉椒蒸鲈鱼', 'https://cp1.douguo.com/upload/caiku/9/6/c/600x400_966dde8cf1a4b80157131937cceb3bcc.png', NULL, NULL, '一道色香味俱全的豉椒蒸鲈鱼。肉质白嫩、清香少刺，吃到嘴里每一口都是享受。', NULL, 24, '已审核');
INSERT INTO `dietlist` VALUES (25, '砂锅炖红烧肉', 'https://cp1.douguo.com/upload/caiku/c/f/3/600x400_cfa2c6a02b2a7ef39fd9ed81502df203.jpg', NULL, NULL, '一提到红烧肉，估计很多人都会觉得它油腻不好吃。我家先生也是这么认为的，但是自从我学会了秘制红烧肉的做法后，先生说我做的这道菜飘香四溢、软糯可口，肥而不腻。先生一个人可以吃掉一盘，还直呼不过瘾，这大大地出乎了我的意料。他不知道我做这道菜可是下了不少功夫，无论是食材的选择，还是烹饪的过程都是费了不少心思的。我的做法跟很多人做的不一样，因为我加了一种食材，能激发它的香味，让它的风味更好。还有这碗秘制红烧肉我用的是黑乐砂锅小火慢炖的，味道比炒锅炖的好吃多了。下面我就给大家分享这道秘制红烧肉的制作技巧和具体步骤。', NULL, 25, '已审核');
INSERT INTO `dietlist` VALUES (26, '懒人版可乐鸡翅不加水油盐不用煎', 'https://cp1.douguo.com/upload/caiku/a/f/e/600x400_afbca1195ca3478be61d7bcc4bc0098e.jpeg', NULL, NULL, '我今天介绍的可乐鸡翅可不一般，不一般的简单，不一般的美味，不一般的手残党也能做好。用料种类不多，糖与酱油的分量已经调到最佳比例，咸甜适中。不加水，不加油，不需要煎，直接一锅煮。要不是当时电饭煲还在煮饭，用电饭锅煮更是方便。连火候都不需要看，直接材料往锅里一倒，按个煮饭键即可。', NULL, 26, '已审核');
INSERT INTO `dietlist` VALUES (27, '洋葱炒肉丝', 'https://cp1.douguo.com/upload/caiku/6/3/c/600x400_63ba6e0f1cd8e84ac62a8a6a13c1a68c.jpg', NULL, NULL, '洋葱是一种很普通的廉价家常菜。其肉质柔嫩，汁多辣味淡，品质佳，可生吃也可熟。洋葱与肉炒食，既营养，又美味。在国外它却被誉为“菜中皇后”，营养价值较高。', NULL, 27, '已审核');
INSERT INTO `dietlist` VALUES (28, '玉米面甜甜圈', 'https://cp1.douguo.com/upload/caiku/4/9/7/600x400_49d8a922615da5cf8b8cdfa8778dfa17.jpg', NULL, NULL, '玉米面（即玉米粉）作为北方常见的主食，因为膳食纤维含量高，口感上特别‘费牙口’，所以自然而然会被归为粗粮的范畴。虽然玉米面没有精细面粉那么好吃，但是从健康角度而言，适当吃一些粗粮面食，无论是营养摄入还是肠道健康上，都比光吃精细面粉做的食物要更有优势。今天要分享的这道食谱，用玉米面来做一道中西结合的美味主食，不仅粗细结合有益肠道，而且还能一改玉米面只能做贴饼、窝窝头等这类传统面食的印象，相信无论大小朋友都会特别喜欢！', NULL, 28, '已审核');
INSERT INTO `dietlist` VALUES (29, '经典卷心莴苣沙拉', 'https://cp1.douguo.com/upload/caiku/1/0/a/600x400_10123f2df6489ff628e941a2e41c40aa.jpeg', NULL, NULL, '最近比较迷这道沙拉。很有可能主要原因是里面有培根碎屑。美国有句俗话：Everythingtastesbetterwithbacon任何菜加上培根就好吃了。健身计划实行了一星期，草吃的有点烦，何况是沙拉这种生草！切一大块卷心莴苣，放上切碎的番茄，撒上培根碎屑，我还顺便煎了几个大虾。说到底还是沙拉，没有违规我的健康计划。这个菜谱是2人份。', NULL, 29, '已审核');
INSERT INTO `dietlist` VALUES (30, '肉末酱茄条', 'https://cp1.douguo.com/upload/caiku/6/f/d/600x400_6f064c1d21df304e1faf405e8255dd6d.jpg', NULL, NULL, '不用过油的茄子，简单快手又下饭，没有不爱的理由。', NULL, 30, '已审核');

-- ----------------------------
-- Table structure for foodlist
-- ----------------------------
DROP TABLE IF EXISTS `foodlist`;
CREATE TABLE `foodlist`  (
  `foodId` int(11) NOT NULL AUTO_INCREMENT COMMENT '食材编号',
  `foodNum` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '食材数量',
  `foodName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '\'\'食材名称\'\'',
  `dietId` int(11) NOT NULL COMMENT '作品编号<外>',
  PRIMARY KEY (`foodId`) USING BTREE,
  INDEX `fk_foodList_dietList_idx`(`dietId`) USING BTREE,
  CONSTRAINT `foodlist_ibfk_1` FOREIGN KEY (`dietId`) REFERENCES `dietlist` (`dietid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '食材表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of foodlist
-- ----------------------------
INSERT INTO `foodlist` VALUES (1, '30个', '百香果', 20);
INSERT INTO `foodlist` VALUES (2, '两个', '柠檬', 20);
INSERT INTO `foodlist` VALUES (3, '6只', '蛋挞皮', 4);
INSERT INTO `foodlist` VALUES (4, '一个', '芒果', 4);
INSERT INTO `foodlist` VALUES (5, '3根', '长茄子', 13);
INSERT INTO `foodlist` VALUES (6, ' 1个', '土豆', 13);
INSERT INTO `foodlist` VALUES (7, '1个', '柿子椒', 13);
INSERT INTO `foodlist` VALUES (8, '少许', '植物油', 13);
INSERT INTO `foodlist` VALUES (9, '1颗', '花椒', 13);
INSERT INTO `foodlist` VALUES (10, ' 2个', '八角', 13);
INSERT INTO `foodlist` VALUES (11, ' 1勺', '干辣椒', 13);
INSERT INTO `foodlist` VALUES (12, '350g', '鸡腿肉', 9);
INSERT INTO `foodlist` VALUES (13, '35g', '沙姜', 9);
INSERT INTO `foodlist` VALUES (14, '10ml', '料酒', 9);
INSERT INTO `foodlist` VALUES (15, '5ml', '老抽', 9);
INSERT INTO `foodlist` VALUES (16, '20ml', '生抽', 9);
INSERT INTO `foodlist` VALUES (17, '5个', '鸡蛋', 22);
INSERT INTO `foodlist` VALUES (18, '65g', '低筋面粉', 22);
INSERT INTO `foodlist` VALUES (19, '40g', '玉米油', 22);
INSERT INTO `foodlist` VALUES (20, '55g', '牛奶', 22);
INSERT INTO `foodlist` VALUES (21, '50g', '白糖(全部用来打发蛋白)', 22);
INSERT INTO `foodlist` VALUES (22, '600g', '鲈  鱼', 24);
INSERT INTO `foodlist` VALUES (23, '半根', '大  葱', 24);
INSERT INTO `foodlist` VALUES (24, '适量', '姜', 24);
INSERT INTO `foodlist` VALUES (25, '半头', '蒜', 24);
INSERT INTO `foodlist` VALUES (26, '适量', '植物油', 24);
INSERT INTO `foodlist` VALUES (27, '少许', '花  椒', 24);
INSERT INTO `foodlist` VALUES (28, '少许', '料  酒', 24);
INSERT INTO `foodlist` VALUES (29, '1个', '番茄', 18);
INSERT INTO `foodlist` VALUES (30, '1个', '土豆', 18);
INSERT INTO `foodlist` VALUES (31, '1/4个', '洋葱', 18);
INSERT INTO `foodlist` VALUES (32, '适量', '牛奶', 18);
INSERT INTO `foodlist` VALUES (33, '2瓣', '蒜', 18);
INSERT INTO `foodlist` VALUES (34, '一个', '番茄', 6);
INSERT INTO `foodlist` VALUES (35, '2个', '鸡蛋', 6);
INSERT INTO `foodlist` VALUES (36, '半勺', '盐', 6);
INSERT INTO `foodlist` VALUES (37, '半勺', '鸡汁调味料', 6);
INSERT INTO `foodlist` VALUES (38, '1个', '土豆', 8);
INSERT INTO `foodlist` VALUES (39, '6个', '鲜香菇', 8);
INSERT INTO `foodlist` VALUES (40, '5克', '葱', 8);
INSERT INTO `foodlist` VALUES (41, '1个', '土豆', 1);
INSERT INTO `foodlist` VALUES (42, '1根', '茄子', 1);
INSERT INTO `foodlist` VALUES (43, '1头', '大蒜', 1);
INSERT INTO `foodlist` VALUES (44, '250g', '中筋面粉', 10);
INSERT INTO `foodlist` VALUES (45, '138g', '冰牛奶', 10);
INSERT INTO `foodlist` VALUES (46, '3g', '酵母', 10);
INSERT INTO `foodlist` VALUES (47, '半个', '包菜', 11);
INSERT INTO `foodlist` VALUES (48, '半个', '胡萝卜', 11);
INSERT INTO `foodlist` VALUES (49, '50g', '温牛奶', 21);
INSERT INTO `foodlist` VALUES (50, '4g', '酵母', 21);
INSERT INTO `foodlist` VALUES (51, '30g', '植物油', 21);
INSERT INTO `foodlist` VALUES (52, '2g', '盐', 21);
INSERT INTO `foodlist` VALUES (53, '105克', '中筋面粉', 12);
INSERT INTO `foodlist` VALUES (54, '69克', '南瓜泥', 12);
INSERT INTO `foodlist` VALUES (55, '2个', '鸡蛋', 17);
INSERT INTO `foodlist` VALUES (56, '55g', '低筋面粉', 17);
INSERT INTO `foodlist` VALUES (57, '40g', '白砂糖', 17);
INSERT INTO `foodlist` VALUES (58, '20克', '提子干', 19);
INSERT INTO `foodlist` VALUES (59, '20克', '蔓越莓干', 19);
INSERT INTO `foodlist` VALUES (60, '120毫升', '牛奶', 19);
INSERT INTO `foodlist` VALUES (61, '1个', '鸡蛋', 19);
INSERT INTO `foodlist` VALUES (62, '75克', '低筋面粉', 19);
INSERT INTO `foodlist` VALUES (63, '300g', '熟面条', 7);
INSERT INTO `foodlist` VALUES (64, '半根', '黄瓜', 7);
INSERT INTO `foodlist` VALUES (65, '7到12个', '鸡中翅', 26);
INSERT INTO `foodlist` VALUES (66, '300毫升', '可乐', 26);
INSERT INTO `foodlist` VALUES (67, '1汤匙', '生抽', 26);
INSERT INTO `foodlist` VALUES (68, '半根', '西葫芦', 23);
INSERT INTO `foodlist` VALUES (69, '一根', '黄瓜', 23);
INSERT INTO `foodlist` VALUES (70, '一个', '鸡蛋', 23);
INSERT INTO `foodlist` VALUES (71, '适量', '面粉', 23);
INSERT INTO `foodlist` VALUES (72, '86克', '木薯粉', 5);
INSERT INTO `foodlist` VALUES (73, '50克', '水', 5);
INSERT INTO `foodlist` VALUES (74, '40克', '玫瑰黑糖或纯黑糖', 5);
INSERT INTO `foodlist` VALUES (75, '40克', '玫瑰黑糖', 5);
INSERT INTO `foodlist` VALUES (76, '800克', '水', 5);
INSERT INTO `foodlist` VALUES (77, '3个', '鸡蛋', 5);
INSERT INTO `foodlist` VALUES (78, '50g', '高筋面粉', 3);
INSERT INTO `foodlist` VALUES (79, '57g', '100度开水', 3);
INSERT INTO `foodlist` VALUES (80, '185g', '高筋面粉', 3);
INSERT INTO `foodlist` VALUES (81, '21g', '鸡蛋液', 3);
INSERT INTO `foodlist` VALUES (82, '117g', '冰牛奶', 3);
INSERT INTO `foodlist` VALUES (83, '6g（或2.2g）', '鲜酵母（或干酵母）', 3);
INSERT INTO `foodlist` VALUES (84, '20g', '细砂糖', 3);
INSERT INTO `foodlist` VALUES (85, '1个', '全蛋', 14);
INSERT INTO `foodlist` VALUES (86, '5个', '蛋挞皮', 14);
INSERT INTO `foodlist` VALUES (87, '9g', '糖', 14);
INSERT INTO `foodlist` VALUES (88, '1个', '紫皮洋葱', 27);
INSERT INTO `foodlist` VALUES (89, '100克', '里脊肉', 27);
INSERT INTO `foodlist` VALUES (90, '1个', '小米椒', 27);
INSERT INTO `foodlist` VALUES (91, '1个', '绿尖椒', 27);
INSERT INTO `foodlist` VALUES (92, '2根', '长茄子', 30);
INSERT INTO `foodlist` VALUES (93, '100克', '肉末', 30);
INSERT INTO `foodlist` VALUES (94, '3瓣', '蒜', 30);
INSERT INTO `foodlist` VALUES (95, '2根', '香葱', 30);
INSERT INTO `foodlist` VALUES (96, '2片', '姜', 30);
INSERT INTO `foodlist` VALUES (97, '1汤匙', '黄豆酱', 30);
INSERT INTO `foodlist` VALUES (98, ' 4个（665g）', '土  豆', 15);
INSERT INTO `foodlist` VALUES (99, '120克', '低筋面粉', 2);
INSERT INTO `foodlist` VALUES (100, '70克', '黄油', 2);
INSERT INTO `foodlist` VALUES (101, '40克', '全蛋液', 2);
INSERT INTO `foodlist` VALUES (102, '20克', '糖', 2);
INSERT INTO `foodlist` VALUES (103, '1克', '盐', 2);
INSERT INTO `foodlist` VALUES (104, '200g', '秋葵', 16);
INSERT INTO `foodlist` VALUES (105, '20g', '生抽', 16);
INSERT INTO `foodlist` VALUES (106, '10-15g', '油', 16);
INSERT INTO `foodlist` VALUES (107, '1/2个', '卷心菜', 29);
INSERT INTO `foodlist` VALUES (108, '10个', '虾', 29);
INSERT INTO `foodlist` VALUES (109, '2根', '培根', 29);
INSERT INTO `foodlist` VALUES (110, '5颗', '小番茄', 29);
INSERT INTO `foodlist` VALUES (111, '少许', '蓝芝士', 29);
INSERT INTO `foodlist` VALUES (112, '500克', '五花肉', 25);
INSERT INTO `foodlist` VALUES (113, '4个', '鸡蛋', 25);
INSERT INTO `foodlist` VALUES (114, '3个', '八角', 25);
INSERT INTO `foodlist` VALUES (115, '2片', '香叶', 25);
INSERT INTO `foodlist` VALUES (116, '2小块', '桂皮', 25);
INSERT INTO `foodlist` VALUES (117, '1个', '草果', 25);
INSERT INTO `foodlist` VALUES (118, '6个', '干红椒', 25);
INSERT INTO `foodlist` VALUES (119, '4根', '香葱', 25);
INSERT INTO `foodlist` VALUES (120, '1块', '生姜', 25);
INSERT INTO `foodlist` VALUES (121, '135g', ' 温牛奶', 28);
INSERT INTO `foodlist` VALUES (122, '100g', '玉米面（玉米粉）', 28);
INSERT INTO `foodlist` VALUES (123, '3g', '细砂糖', 28);

-- ----------------------------
-- Table structure for levellist
-- ----------------------------
DROP TABLE IF EXISTS `levellist`;
CREATE TABLE `levellist`  (
  `levelId` int(11) NOT NULL AUTO_INCREMENT COMMENT '等级编号',
  `experLow` int(11) NOT NULL COMMENT '经验值<低>',
  `experHei` int(11) NOT NULL,
  `levelHead` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '\'\'等级头衔\'\'',
  PRIMARY KEY (`levelId`) USING BTREE,
  INDEX `levelId`(`levelId`) USING BTREE,
  INDEX `levelId_2`(`levelId`) USING BTREE,
  INDEX `levelId_3`(`levelId`) USING BTREE,
  INDEX `levelId_4`(`levelId`) USING BTREE,
  INDEX `levelId_5`(`levelId`) USING BTREE,
  INDEX `levelId_6`(`levelId`) USING BTREE,
  INDEX `levelId_7`(`levelId`) USING BTREE,
  INDEX `levelId_8`(`levelId`) USING BTREE,
  INDEX `levelId_9`(`levelId`) USING BTREE,
  INDEX `levelId_10`(`levelId`) USING BTREE,
  INDEX `levelId_11`(`levelId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '等级升级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of levellist
-- ----------------------------
INSERT INTO `levellist` VALUES (1, 0, 500, '青铜达人');
INSERT INTO `levellist` VALUES (2, 501, 1200, '白银达人');
INSERT INTO `levellist` VALUES (3, 1201, 2500, '黄金达人');
INSERT INTO `levellist` VALUES (4, 2501, 5000, '铂金达人');
INSERT INTO `levellist` VALUES (5, 5001, 8000, '钻石达人');
INSERT INTO `levellist` VALUES (6, 8001, 15000, '王者达人');

-- ----------------------------
-- Table structure for myadmin
-- ----------------------------
DROP TABLE IF EXISTS `myadmin`;
CREATE TABLE `myadmin`  (
  `myadminId` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员登录表ID',
  `workNum` int(11) NULL DEFAULT NULL COMMENT '管理员工号',
  `adminPwd` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`myadminId`) USING BTREE,
  INDEX `myadminId`(`myadminId`) USING BTREE,
  INDEX `myadminId_2`(`myadminId`) USING BTREE,
  INDEX `myadminId_3`(`myadminId`) USING BTREE,
  INDEX `myadminId_4`(`myadminId`) USING BTREE,
  INDEX `myadminId_5`(`myadminId`) USING BTREE,
  INDEX `myadminId_6`(`myadminId`) USING BTREE,
  INDEX `myadminId_7`(`myadminId`) USING BTREE,
  INDEX `myadminId_8`(`myadminId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员登录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of myadmin
-- ----------------------------
INSERT INTO `myadmin` VALUES (1, 151012, '888');

-- ----------------------------
-- Table structure for recipeclassify
-- ----------------------------
DROP TABLE IF EXISTS `recipeclassify`;
CREATE TABLE `recipeclassify`  (
  `recipeClassifyId` int(11) NOT NULL AUTO_INCREMENT,
  `recipeClassifyName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`recipeClassifyId`) USING BTREE,
  INDEX `recipeClassifyId`(`recipeClassifyId`) USING BTREE,
  INDEX `recipeClassifyId_2`(`recipeClassifyId`) USING BTREE,
  INDEX `recipeClassifyId_3`(`recipeClassifyId`) USING BTREE,
  INDEX `recipeClassifyId_4`(`recipeClassifyId`) USING BTREE,
  INDEX `recipeClassifyId_5`(`recipeClassifyId`) USING BTREE,
  INDEX `recipeClassifyId_6`(`recipeClassifyId`) USING BTREE,
  INDEX `recipeClassifyId_7`(`recipeClassifyId`) USING BTREE,
  INDEX `recipeClassifyId_8`(`recipeClassifyId`) USING BTREE,
  INDEX `recipeClassifyId_9`(`recipeClassifyId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recipeclassify
-- ----------------------------
INSERT INTO `recipeclassify` VALUES (1, '家常菜');
INSERT INTO `recipeclassify` VALUES (2, '煲汤');
INSERT INTO `recipeclassify` VALUES (7, '主食');
INSERT INTO `recipeclassify` VALUES (8, '精选');

-- ----------------------------
-- Table structure for recipedetails
-- ----------------------------
DROP TABLE IF EXISTS `recipedetails`;
CREATE TABLE `recipedetails`  (
  `detailsId` int(11) NOT NULL AUTO_INCREMENT,
  `recipeName` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `recipeBrief` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `recipeCoverImg` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userId1` int(11) NOT NULL,
  `recipePraiseNum` int(11) NULL DEFAULT 0 COMMENT '菜谱点赞量',
  `videoContent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `recipeClassifyId` int(11) NOT NULL,
  `recipeMakeTime` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '食谱的制作时间',
  `recipeWeight` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '食谱是几人份的',
  PRIMARY KEY (`detailsId`) USING BTREE,
  INDEX `detailsId`(`detailsId`) USING BTREE,
  INDEX `fk_rclassify_rdetails`(`recipeClassifyId`) USING BTREE,
  INDEX `detailsId_2`(`detailsId`) USING BTREE,
  INDEX `detailsId_3`(`detailsId`) USING BTREE,
  INDEX `detailsId_4`(`detailsId`) USING BTREE,
  INDEX `detailsId_5`(`detailsId`) USING BTREE,
  INDEX `detailsId_6`(`detailsId`) USING BTREE,
  INDEX `detailsId_7`(`detailsId`) USING BTREE,
  INDEX `detailsId_8`(`detailsId`) USING BTREE,
  INDEX `detailsId_9`(`detailsId`) USING BTREE,
  INDEX `fk_userId_authid`(`userId1`) USING BTREE,
  INDEX `detailsId_10`(`detailsId`) USING BTREE,
  INDEX `detailsId_11`(`detailsId`) USING BTREE,
  INDEX `detailsId_12`(`detailsId`) USING BTREE,
  INDEX `detailsId_13`(`detailsId`) USING BTREE,
  INDEX `detailsId_14`(`detailsId`) USING BTREE,
  INDEX `detailsId_15`(`detailsId`) USING BTREE,
  INDEX `detailsId_16`(`detailsId`) USING BTREE,
  INDEX `detailsId_17`(`detailsId`) USING BTREE,
  INDEX `detailsId_18`(`detailsId`) USING BTREE,
  INDEX `detailsId_19`(`detailsId`) USING BTREE,
  INDEX `detailsId_20`(`detailsId`) USING BTREE,
  INDEX `detailsId_21`(`detailsId`) USING BTREE,
  INDEX `detailsId_22`(`detailsId`) USING BTREE,
  INDEX `detailsId_23`(`detailsId`) USING BTREE,
  INDEX `detailsId_24`(`detailsId`) USING BTREE,
  INDEX `detailsId_25`(`detailsId`) USING BTREE,
  INDEX `detailsId_26`(`detailsId`) USING BTREE,
  INDEX `detailsId_27`(`detailsId`) USING BTREE,
  INDEX `detailsId_28`(`detailsId`) USING BTREE,
  INDEX `detailsId_29`(`detailsId`) USING BTREE,
  INDEX `detailsId_30`(`detailsId`) USING BTREE,
  INDEX `detailsId_31`(`detailsId`) USING BTREE,
  INDEX `detailsId_32`(`detailsId`) USING BTREE,
  INDEX `detailsId_33`(`detailsId`) USING BTREE,
  INDEX `detailsId_34`(`detailsId`) USING BTREE,
  CONSTRAINT `fk_rclassify_rdetails` FOREIGN KEY (`recipeClassifyId`) REFERENCES `recipeclassify` (`recipeclassifyid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_userId_authid` FOREIGN KEY (`userId1`) REFERENCES `userinfo` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜谱详情' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recipedetails
-- ----------------------------
INSERT INTO `recipedetails` VALUES (4, '暖胃早餐，皮蛋瘦肉粥', '', 'https://cp1.douguo.com/upload/caiku/8/f/5/600x400_8fe9ad5204682bb28aa501ecf5fccfb5.jpg', 4, 115, NULL, 7, '<10分钟', '4人份');
INSERT INTO `recipedetails` VALUES (5, '快手早餐之鸡蛋卷饼', '这就是快手早餐噢', 'https://cp1.douguo.com/upload/caiku/4/9/f/600x400_491325a5a0a9a12de2d5ec247eec9ebf.jpeg', 5, 115, NULL, 7, '<60分钟', '4人份');
INSERT INTO `recipedetails` VALUES (6, '酸辣汤面#急速早餐#', '工作日的早餐，吃一碗热乎乎的酸辣汤面，营养丰富，简单方便。', 'https://cp1.douguo.com/upload/caiku/6/f/c/600x400_6ffa072c4c8dd0a1e1cebddb631f906c.jpg', 6, 115, NULL, 7, '<5分钟', '4人份');
INSERT INTO `recipedetails` VALUES (7, '千层葱肉饼', '千层肉饼，当然了没那么多层哈，主要形容这个肉饼层次比较多而已啦！很香很香滴肉饼你也可以试试。', 'https://cp1.douguo.com/upload/caiku/4/b/f/600x400_4baa9dbe7166d619bcfd235f89b7c18f.jpeg', 7, 115, NULL, 7, '<30分钟', '4人份');
INSERT INTO `recipedetails` VALUES (8, '早餐营养鸡蛋饼', '', 'https://cp1.douguo.com/upload/caiku/a/7/3/600x400_a7ebb1d853057e8fab6ea5b35ef4e5f3.jpg', 8, 115, NULL, 7, '<5分钟', '4人份');
INSERT INTO `recipedetails` VALUES (9, '土豆饼', '10分钟就可以制作焦香酥脆的土豆饼，即便是零厨艺也可以轻松完成哦。', 'https://cp1.douguo.com/upload/caiku/9/6/c/600x400_9650ca5e6dc310b4649981ac9bed46ec.jpg', 9, 115, NULL, 7, '<30分钟', '4人份');
INSERT INTO `recipedetails` VALUES (10, '鱼香茄子', '这道菜味道鲜美、柔软润香、鲜咸适口、营养也非常丰富。下饭更是一大特点，拌着米饭吃，唇齿留香。', 'https://cp1.douguo.com/upload/caiku/1/c/f/600x400_1ca013a692332b08c12916d3afc81aef.jpg', 10, 115, NULL, 7, '<15分钟', '4人份');
INSERT INTO `recipedetails` VALUES (11, '三鲜肉饼', '街上很多卖饼的，但以死面的为主。很香很脆但是一般都比较硬。两岁多的孩子咀嚼能力还是有限的，太硬的饼不容易嚼烂，所以我做了发面的肉饼，添加了胡萝卜和黑木耳，有菜有肉有主食，营养的呢。', 'https://cp1.douguo.com/upload/caiku/a/9/5/600x400_a9243cb747e062fe0256935adc1fdaa5.jpg', 11, 115, NULL, 7, '<5分钟', '4人份');
INSERT INTO `recipedetails` VALUES (12, '五彩焖饭', '多多小朋友从7月1号开始正式放暑假，习惯了她一日三餐在幼儿园吃了，猛的放了假在家呆着，我反而有些不适应了，尤其是家里还多了个小妹妹。没放假的时候，平常爸爸上班就把多多带走去幼儿园去了，我傍晚再抱着妹妹去接多多，所以平时中午就我一个人吃饭，随便糊弄一下都可以了，或者早餐多做点，中午饭就出来了。而且妹妹也总要抱着，我也没时间做午饭，就算吃剩饭也没个点，可是多多在家了就不一样了，得一天三餐按点吃，还得有水果有点心，我这工作量一下增加了不止一倍啊！而且妹妹还是不按点睡觉，有时候睡有时候一直不睡，我也经常单手抱着妹妹单手做饭，甚至昨天都单手揉面整形做馒头了，不断解锁新技能啊！好，言归正传，今天分享的这个焖饭，做法很简单，而且饭菜一锅出，好做又好吃，多多小朋友也很喜欢。像平常就我和多多两个人，一大人一小孩子能吃多少菜，炒菜吧，种类还不够多，还得顾及到多多小朋友身体发育需要，让她尽可能吃的食物种类多样化，我还得节约时间，因为随时随地有可能妹妹就要召唤我了。没办法，一个人带俩娃的日子就是这样紧张忙碌绝对的充实！', 'https://cp1.douguo.com/upload/caiku/2/3/7/600x400_234252b455d69118c6aa993d0f3c6707.jpg', 12, 115, NULL, 7, '<15分钟', '4人份');
INSERT INTO `recipedetails` VALUES (13, '肉酱意大利面', '', 'https://cp1.douguo.com/upload/caiku/0/8/9/600x400_08a96d55fbcd28a466276767af7ab329.jpg', 13, 115, NULL, 7, '<30分钟', '未知');
INSERT INTO `recipedetails` VALUES (14, '田园土豆饼', '这阵子吃土豆吃上瘾了，反正土豆也可以减肥，多吃点也不怕。这次做的土豆饼口感丰富，绵软中带点芦笋、胡萝卜的爽脆，很是不错。', 'https://cp1.douguo.com/upload/caiku/9/9/e/600x400_99d0489f647f19fb47be7bdf6a84827e.jpg', 14, 115, NULL, 7, '<30分钟', '4人份');
INSERT INTO `recipedetails` VALUES (15, '山药养生粥', '最近因为宝宝心脏上的问题，一直都是在医院度过的，自己心心念的厨房致欲珐琅锅一直在家里默默的等着，直到今天才上传菜谱，实在不好意思！回到家迫不及待的就是用它来给宝贝做顿可口的食物。先来个山药养生粥，最适合病后体弱者的粥，营养丰富还不会给肠胃造成负担，还具有延年益寿、美容养颜哦！老少咸宜！', 'https://cp1.douguo.com/upload/caiku/9/e/7/600x400_9ec980844c89d94c8ce4138a02987c47.jpeg', 15, 115, NULL, 7, '<30分钟', '未知');
INSERT INTO `recipedetails` VALUES (16, '瘦身减肥养生美容红豆汤', '减肥安排:早上起床后喝一杯蜜醋水，蜂蜜一勺，白醋半勺，然后加250毫升的温开水空腹喝下。早上就吃这个食谱的红豆汤，趁热喝下。中午饿了就吃苹果和酸奶，晚上还是红豆汤，晚上7点之前必须喝完。是汤和里面的食物一起吃掉。坚持了一周，我已经瘦了6斤，皮肤也变得很好。', 'https://cp1.douguo.com/upload/caiku/5/2/e/600x400_5262a1e2e6a5432890ebe7d90e77b42e.jpg', 16, 115, NULL, 7, '<5分钟', '4人份');
INSERT INTO `recipedetails` VALUES (17, '微博疯传的拌面', '之前在微博上看到好多人在转这个一夫食堂的半半拌面，自己就试着做了一下，个人觉得味道不错，就分享给大家～之前的菜谱里没有写辣椒油，因为我比较喜欢吃辣，吃什么都喜欢放一点辣椒油，所以就忘写在里面了，辣椒油的做法非常简单，干辣椒末，芝麻，辣椒粉放在碗里，锅内烧热油，直接淋在碗里就好了。', 'https://cp1.douguo.com/upload/caiku/e/f/5/600x400_ef77de485e5e4d04bd35da3d7db64005.jpg', 17, 115, NULL, 7, '<5分钟', '3人份');
INSERT INTO `recipedetails` VALUES (18, '快手炒面', '夏季里，买来的时蔬，不少是不太易于保存的，而像胡萝卜、卷心菜等，储存的时间长，在短时间内还可以做出美味的快手炒面，这里就和大家分享。', 'https://cp1.douguo.com/upload/caiku/a/9/e/600x400_a99b55b4c6379bedb8c351529f1eee9e.jpg', 18, 115, NULL, 7, '<15分钟', '3人份');
INSERT INTO `recipedetails` VALUES (19, '番茄鸡蛋卷饼', '白煮蛋，鸡蛋羹，煎荷包蛋宝宝慢慢的都不爱吃了，宝宝的早餐越来越单薄。做为妈咪，好想每天都有既让宝宝饱肚又能确保营养却操作简便的早餐食谱。今天看到满冰箱红彤彤的大番茄，灵机一动，番茄鸡蛋饼？以前看到朋友做过。所以操刀说干就干，结果品相稍逊外，算是大获全胜，宝宝非常喜欢，吃了大半个!', 'https://cp1.douguo.com/upload/caiku/8/a/6/600x400_8a79e61ee329fe1445a0747439cf6076.jpg', 19, 115, NULL, 7, '<30分钟', '2人份');
INSERT INTO `recipedetails` VALUES (20, '灌汤包', '做美食为家人，凡是家人爱吃的我都做的不赖，我的拍照技术不咋的，所以我不怕做就怕拍照，照片我拍不出美美的效果，但你们按我的配方做保你吃精光。', 'https://cp1.douguo.com/upload/caiku/b/4/5/600x400_b4aaadfde28cc5282e3212328779ccc5.jpg', 20, 115, NULL, 7, '<15分钟', '2人份');
INSERT INTO `recipedetails` VALUES (21, '紫菜包饭', '韩剧里常常出现的那些精致可爱的紫菜包饭，原来做起来这么简单。第一次实践出来的成果，味道和卖相俱佳。不会做饭的吃货们，完全可以学学这个，当做杀手锏，需要的时候露一手，一定惊艳！', 'https://cp1.douguo.com/upload/caiku/6/6/6/600x400_662a97b83d14e55ecb2ac3be3bd56396.jpg', 21, 115, NULL, 7, '<5分钟', '3人份');
INSERT INTO `recipedetails` VALUES (22, '西红柿鸡汤面', '酸溜溜的西红柿鸡汤面，真是百吃不厌！特别是最后再打上鸡蛋花，不但颜色漂亮惹人食欲，在营养上也补充了蛋白质。什么饭菜都有个吃厌吃腻的时候，但唯独这西红柿鸡蛋鸡汤面，什么时候都是最爱！想想原因，主要是因为这道汤面快手、开胃。特别是在这大热天的，都懒得开火，这10分钟的汤面足可以让人少在厨房待着，也能吃得滋润、舒坦！香雪面条，筋道、滑爽！吸足了西红柿的汤汁，越发有滋味！', 'https://cp1.douguo.com/upload/caiku/a/1/4/600x400_a1b3d5b1d028b356b907cbd8ab6996a4.jpg', 22, 115, NULL, 7, '<2小时', '未知');
INSERT INTO `recipedetails` VALUES (23, '冷藏都不开裂的柔软春饼', '立春是吃春饼的日子，现在有说法二月二也是吃春饼的日子，也许各地风俗不同，在北方二月二是吃焖子的。其实，想吃啥时候都能吃。记得小时候家里常吃春饼，炒上几个小菜，饼里抹上面酱，夹上小菜、葱丝、黄瓜条，跟烤鸭的吃法差不多。妈妈总是烙好了饼，放到一个热锅里，用蒸汽噓着，随吃随取。现在我终于会自己做春饼了，没想到做出的饼冰箱冷藏一夜都不会开裂，照样可以卷成卷。春饼有蒸的和烙的两种做法，我还是偏爱烙的饼，喜欢看上面微黄浅咖，美美的，感觉这才像饼。', 'https://cp1.douguo.com/upload/caiku/b/2/0/600x400_b2085a8dcfccc9c83555886671c22f00.jpeg', 23, 115, NULL, 7, '<10分钟', '3人份');
INSERT INTO `recipedetails` VALUES (24, '酸辣面', '看着材料很多，其实超简单，不爱做饭又没胃口的时候这个可以有', 'https://cp1.douguo.com/upload/caiku/c/1/1/600x400_c19d9f7f22e55a5b4a813c36ffc9d561.jpeg', 24, 115, NULL, 7, '<15分钟', '未知');
INSERT INTO `recipedetails` VALUES (25, '香煎茄饼', '裹了鸡蛋和淀粉的茄子，煎的外酥里嫩，配上自己调的蒜汁，那叫一个好吃。', 'https://cp1.douguo.com/upload/caiku/5/b/7/600x400_5b3a159fc94c6b58f2909e00a3082e67.jpg', 25, 115, NULL, 7, '<5分钟', '4人份');
INSERT INTO `recipedetails` VALUES (26, '史上最全寿司', '作为吃货的我，喜欢研究各种美食。曾经有那么一段时间特别地迷恋寿司，每次下班都要绕大圈去寿司店，打包一盒寿司回家作为晚餐。后来，就想自己琢磨着怎么来做。经过多方面的学习就产生了深厚的兴趣。寿司可以用自己喜欢的材料做成很多种自己喜欢的形状，大家根据自己喜好选择既可喔。', 'https://cp1.douguo.com/upload/caiku/4/2/0/600x400_4241833e7dd7e4b041964353faadc300.jpg', 26, 115, NULL, 7, '<5分钟', '4人份');
INSERT INTO `recipedetails` VALUES (27, '蛋包饭', '最近钟爱制作小朋友会喜欢的食物。蛋包饭，我那挑食的小外甥一见着这个就两眼放光，满桌子菜都不管，就爱吃这个。包的饭食里面有番茄、洋葱和培根，和米饭炒在一起，鲜香酸甜，非常开胃。金黄的蛋皮上淋上红红的番茄酱，再配上翠绿的西兰花，大朋友都喜欢，何况小朋友。', 'https://cp1.douguo.com/upload/caiku/4/0/7/600x400_40f30fccd971cc6e307c08a1d0c84677.jpg', 27, 115, NULL, 7, '<5分钟', '4人份');
INSERT INTO `recipedetails` VALUES (28, '蔬菜烘蛋', '', 'https://cp1.douguo.com/upload/caiku/0/a/b/600x400_0a5b179112c7c0a991abe8f07988173b.jpg', 28, 115, NULL, 7, '<5分钟', '2人份');
INSERT INTO `recipedetails` VALUES (29, '酸辣粉', '酸辣粉是重庆市、四川省、贵州省等地的汉族传统特色小吃，属于渝菜、川菜、贵州小吃。其特点是麻、辣、鲜、香、酸且油而不腻。酸辣粉主粉由红薯，红苕，豌豆按比例调和，然后由农家用传统手工漏制而成。酸辣粉源于西南民间，取食材至当地手工制作的红薯粉，味以突出酸辣为主而得名。', 'https://cp1.douguo.com/upload/caiku/f/a/c/600x400_fa1c20302e03a019df487cbd60343efc.jpg', 29, 115, NULL, 7, '<10分钟', '2人份');
INSERT INTO `recipedetails` VALUES (30, '葱油饼', '葱油饼，没有人不爱她...', 'https://cp1.douguo.com/upload/caiku/9/b/9/600x400_9bae48522f351015399b396094b7d119.jpeg', 30, 20, NULL, 7, '<10分钟', '3人份');
INSERT INTO `recipedetails` VALUES (34, '万圣节串串卡通包子', '', 'https://cp1.douguo.com/upload/caiku/1/d/2/600x400_1d29e871513923f64846340b92022c82.jpg', 4, 220, NULL, 8, '<10分钟', '2人份');
INSERT INTO `recipedetails` VALUES (35, '猫头鹰小姐--卡通馒头', '', 'https://cp1.douguo.com/upload/caiku/6/8/e/600x400_68930cca08454abf704a80854596779e.jpg', 5, 220, NULL, 8, '<10分钟', '2人份');
INSERT INTO `recipedetails` VALUES (36, '独家粉粉蛋香油炸藕', '【3-108】这是一个天高昼暖夜来凉端看秋意日渐浓的故事……寒露啦，各位注意保暖呀-----2018.10.8', 'https://cp1.douguo.com/upload/caiku/2/1/8/600x400_21d10a26b4b3b0a244e11a0fcec51a98.jpg', 6, 220, NULL, 8, '<10分钟', '2人份');
INSERT INTO `recipedetails` VALUES (37, '独家椒蒜茄肉酱烧饼', '【3-107】这是一个剩饼剩肉料挺多又是存稿没有错的故事……这个真的是，年代久远了-----2018.10.7', 'https://cp1.douguo.com/upload/caiku/3/c/2/600x400_3cfe3984b57430ddce83e2a97b3d6132.jpg', 7, 220, NULL, 8, '<15分钟', '2人份');
INSERT INTO `recipedetails` VALUES (38, '原味小奶片', '宝贝不爱喝配方奶怎么办呢？吃小奶片呗！宝贝爱吃糖怎么办呢？吃小奶片呗！小奶片随片携带很方便哦，我家的哄娃神器。【自制炼乳】请参考我的菜谱。记得看完小贴士再动手做哦。', 'https://cp1.douguo.com/upload/caiku/b/f/5/600x400_bf47db5d2da12c216687aaacb31f0845.jpg', 8, 220, NULL, 8, '<10分钟', '2人份');
INSERT INTO `recipedetails` VALUES (39, '日食记|家庭版鸡公煲', '家庭版鸡公煲做法十分简单，浓油赤酱，深色酱汁包裹鸡块，和冒着热气的米饭完美融合，然后还能涮火锅吃。跟同事们一起在户外吃了一顿，特别满足。今天中秋节，记得好好吃一顿：）', 'https://cp1.douguo.com/upload/caiku/0/a/9/600x400_0aabb64ec0e2578ef21bbb8f39bf9a09.jpg', 9, 220, NULL, 8, '<15分钟', '2人份');
INSERT INTO `recipedetails` VALUES (40, '柠檬秋梨膏', '秋天是个干燥的季节，最近又流行性感冒，我家两个娃娃都没能逃得过，小宝咳嗽的厉害，给他们熬了一些冰糖秋梨柠檬膏对水喝，对止咳润肺很有帮助，第二天就有效果，酸酸甜甜的宝宝还特别喜欢喝，大家不妨试一试。', 'https://cp1.douguo.com/upload/caiku/3/3/1/600x400_337d4e3dc729b7a9e8387069b0263661.jpeg', 10, 220, NULL, 8, '<60分钟', '1人份');
INSERT INTO `recipedetails` VALUES (41, '香辣腐竹', '这样做的腐竹不但可以配米饭吃还可以当零嘴，如果是当菜配米饭吃的时候，可以稍微的多放一点而盐，如果是想当零嘴吃可以加多一些糖，少加一些盐，炒的表面干爽些更好。', 'https://cp1.douguo.com/upload/caiku/1/4/d/600x400_14b4a739ded0a9fee70cd5ca1dd1113d.jpg', 11, 220, NULL, 8, '<10分钟', '2人份');
INSERT INTO `recipedetails` VALUES (42, '黑白双煞双色哈斯面包', '我用的是黑巧克力粉，如果你没有可以用竹炭粉代替，也可以换别的颜色，比如抹茶、南瓜、紫薯，或者什么都不加直接白色也可以呀！随机应变好吗？', 'https://cp1.douguo.com/upload/caiku/f/1/3/600x400_f116f92896e6d4917e660561a8399793.jpg', 12, 241, NULL, 8, '<10分钟', '2人份');
INSERT INTO `recipedetails` VALUES (43, '【中秋银河系卡通包子】', '这是中秋佳节的一个系列，步骤都有详解。不难，只要耐心。', 'https://cp1.douguo.com/upload/caiku/a/5/5/600x400_a569abb41364f5a386c39ed070e79a65.jpg', 13, 220, NULL, 8, '<5分钟', '2人份');
INSERT INTO `recipedetails` VALUES (44, '西葫芦饼', '当作早餐是一个不错的选择，有菜有鸡蛋还能吃得饱。食材常见，操作也不复杂。人人都能掌握的一款煎饼。口感软嫩鲜香，配粥配牛奶都不错哦', 'https://cp1.douguo.com/upload/caiku/6/3/0/600x400_632a7c613e824e1f965fcd48bb83e5d0.jpg', 14, 220, NULL, 8, '<10分钟', '1人份');
INSERT INTO `recipedetails` VALUES (45, '龙猫卡通雪糕包子Totoro', '一直喜欢龙猫憨憨的样子，很有安全感，甚至还去养过龙猫，蜜汁的喜爱，做成了雪糕的造型，让小朋友在普通的馒头中找出趣味性，小朋友才会爱上吃饭的过程。', 'https://cp1.douguo.com/upload/caiku/b/2/8/600x400_b28cbbb76a741f860b206e9165d3ab18.jpg', 15, 220, NULL, 8, '<15分钟', '2人份');
INSERT INTO `recipedetails` VALUES (46, '迷迭香黑胡椒肉松戚风', '咸味的戚风更得我心，吃多了甜的蛋糕，换一个咸口的真的觉得与众不同，而且我蜜汁喜欢迷迭香等香草料的味道，不过如果你没有或不喜欢可以忽略不放。因为一人食，所以只做了3个蛋的版本，我用的中空模具，因为临时找不到6寸活底戚风模具。', 'https://cp1.douguo.com/upload/caiku/a/f/c/600x400_af5229ec1157bd2be9f331ca6ac9810c.jpg', 16, 238, NULL, 8, '<30分钟', '2人份');
INSERT INTO `recipedetails` VALUES (47, '肉末茄子', '', 'https://cp1.douguo.com/upload/caiku/d/1/b/600x400_d14301757ea45a7fe660eb1b07f7b09b.jpeg', 17, 220, NULL, 8, '<15分钟', '3人份');
INSERT INTO `recipedetails` VALUES (48, '日食记|蒜蓉烤香菇', '有一个万能蒜蓉的做法，据说只要加上就能让东西好吃两倍。我试了一下，非常简单。油锅爆香蒜末和小米椒圈，加生抽和少许盐糖炒一炒就好了。有多好吃呢？比如拿它来酿香菇，在香菇盏里装得满满的，烤几分钟，就成了我吃过的最香的香菇。热爱吃蒜的小伙伴为之癫狂，连我公司里不爱吃蒜的小管也被吸引了，她把蒜蓉整个刮掉（看着心疼），表示香菇本身也非常好吃，一个接一个停不下来。蒜香充斥鼻腔，酱味渗透在香菇肉里，入味又鲜美，香菇柔软的口感比肉还要“毒”，除了拿来酿香菇，它也可以跟其他的食材任意组合，都很美味。只是吃过这个后，一整天都说话带味儿，不能好好跟客户开会了……那就趁周末不见人的日子，多吃几个吧：）', 'https://cp1.douguo.com/upload/caiku/3/2/b/600x400_32cf4e1b25dedcde2c6c33cd16e6ff0b.jpg', 18, 220, NULL, 8, '<30分钟', '1人份');
INSERT INTO `recipedetails` VALUES (49, '串串馒头', '首先【黑芝麻&糖渍橙皮丁馅料】这个味道是非常特别的，黑芝麻馅料单吃我觉得干干的，加入橙皮丁真的会很特别。其次把卡通包子串起来会增加更多趣味，对于小朋友来说更新鲜，【没有模具也没事】看第14步步骤，其实单独做了串起来也可以的。【水光肌！水光肌！】秘诀就是揉面要揉好，没有其他秘方了！！！！！！！', 'https://cp1.douguo.com/upload/caiku/5/7/9/600x400_570d044295472e9d9fb959aae7028669.jpg', 19, 220, NULL, 8, '<30分钟', '3人份');
INSERT INTO `recipedetails` VALUES (50, '胡萝卜鸡蛋饼', '用简单食材，做美味佳肴。', 'https://cp1.douguo.com/upload/caiku/7/b/1/600x400_7b2d67f13bed858168fd1e45e55bae41.png', 20, 220, NULL, 8, '<15分钟', '4人份');
INSERT INTO `recipedetails` VALUES (51, '抖音网红小狗蛋糕', '最近火的不要不要的小狗蛋糕，根根毛发，纤毫毕现，立体灵动真实，大多人会好奇怎么做出来的，甚至于当即便买来发圈拍照拍视频打卡，市售五十左右只有一个手掌心那么大，现在来跟着我一起自己做做看吧。', 'https://cp1.douguo.com/upload/caiku/b/9/e/600x400_b979edc16dd0c5fa65cd31496f28089e.jpeg', 21, 220, NULL, 8, '<10分钟', '4人份');
INSERT INTO `recipedetails` VALUES (52, '超详细的戗面馒头', '1.馒头光滑的秘诀就是揉面揉透的状态就是切面无气孔。2.室温30度情况下放置20min，冷水上锅，开大火转开后转中火，一共15min，焖1-2min开盖', 'https://cp1.douguo.com/upload/caiku/7/9/8/600x400_79f5eef9e0e8e38b5a20ccb582990e28.jpg', 22, 220, NULL, 8, '<15分钟', '2人份');
INSERT INTO `recipedetails` VALUES (53, '香菇烩毛豆', '想要烹饪出一道好菜，好油就是根基。好菜需好油，好油出美味，这是几十年不变的硬道理。用金龙鱼外婆乡小榨菜籽油烹饪出的菜品，儿时记忆里浓香的味道，全家都爱的味道，传承传香传美味。我一直觉得菌菇类的食材都自带鲜味。特别是香菇，用它烹饪出的菜都鲜美好吃。虽然是一道素菜，但是吃起来特别美味，浸染着香菇味的毛豆仁香糯可口。', 'https://cp1.douguo.com/upload/caiku/d/f/a/600x400_df90bd79d4ef7f81de4968132f7aac2a.jpg', 23, 220, NULL, 8, '<5分钟', '2人份');
INSERT INTO `recipedetails` VALUES (54, '【迪斯尼挤挤卡通面包】', '让我们的烘焙满足所有孩子的童心，让我们的烘焙满足所有爱的人的胃口。工具：8寸戚风模具', 'https://cp1.douguo.com/upload/caiku/c/b/1/600x400_cbb2d37c389ef491f4618157feeb1fb1.jpeg', 24, 220, NULL, 8, '<2小时', '未知');
INSERT INTO `recipedetails` VALUES (55, '卡通包子（豆沙馅）', '1.目前上海夏天，室内温度33度左右，我今天空调房25度做，其次也是用冰牛奶和面，这样可以很好控制面团温度。2.我是厨师机和面，我的厨师机一共5档，我用3档和面15min即可，不过这个是根据你家的机器或你手揉力度决定。3.我用的竹蒸笼。24cm的，然后蒸馒头的方法是“冷水上锅，大火煮开后转中火一共15min（这个时间是50g面团左右的馒头我会根据面团大小稍微调节时间）”记得关火后焖2min再开盖！！！', 'https://cp1.douguo.com/upload/caiku/0/8/f/600x400_08dfb9762f8f4ef131d27c0e87c7e24f.jpg', 25, 220, NULL, 8, '<10分钟', '2人份');
INSERT INTO `recipedetails` VALUES (56, '奶香小酥饼', '让小酥饼更香酥可口，有个小秘诀。这是一款简易，快捷，又极具口感的小饼干。因为简单，所以，它的失败率几乎为零，极其适合居家制作。从准备材料到放入烤箱不到20分钟。然后，等着别人夸你“哇，你做的饼干比买的好吃多了！”吧！至于让小酥饼更香酥可口的小秘诀，看完tips就知道了哈。', 'https://cp1.douguo.com/upload/caiku/9/5/1/600x400_95cb73fe621ef871ac739ddf5b87a151.jpg', 26, 220, NULL, 8, '<15分钟', '2人份');
INSERT INTO `recipedetails` VALUES (57, '黄金小猪馒头片', '剩馒头有新吃法，萌萌的小猪馒头片，俘获萌娃的心～', 'https://cp1.douguo.com/upload/caiku/c/9/7/600x400_c956b86fc8a1199d1f180ab27dce9107.jpeg', 27, 220, NULL, 8, '<30分钟', '5人份');
INSERT INTO `recipedetails` VALUES (58, '葱香虾仁炒鸡蛋', '不加一片姜也丝毫没有腥气，味道鲜美，细嫩香滑。还有那个汤汁，绝对不能放过，勺两汤匙拌饭吃，实在美味……', 'https://cp1.douguo.com/upload/caiku/b/7/f/600x400_b704513e3cf8724ef95db24e735fc8ff.jpeg', 28, 220, NULL, 8, '<90分钟', '');
INSERT INTO `recipedetails` VALUES (59, '椰汁红豆糕', '健脾益肾、补血养心的红豆与浓浓的椰浆搭配，加入炼乳成份的黑白淡奶制成的椰汁红豆糕，入口一股浓郁的椰香味，香糯弹牙，吃后齿夹留香，非常适合作为早餐搭配粥类、奶类食用，或者作为下午茶点养生食用亦可。', 'https://cp1.douguo.com/upload/caiku/8/3/5/600x400_839382bc61546f87178f38c6432942b5.jpeg', 29, 110, NULL, 8, '<15分钟', '3人份');
INSERT INTO `recipedetails` VALUES (60, '桃山皮流心月饼', '桃山皮起源于日本桃山，采用白芸豆沙配食材秘制调配而成，口感以细腻而闻名于世。将桃山饼皮运用到月饼上，改变了一直以小麦粉做月饼饼皮的传统。50g一个月饼为例：皮25g+馅20g+流心馅5g', 'https://cp1.douguo.com/upload/caiku/e/e/b/600x400_eed657f1b32f8b37e76133cfb3a042cb.jpeg', 30, 110, NULL, 8, '<30分钟', '1人份');
INSERT INTO `recipedetails` VALUES (64, '酿豆腐', '相传很久以前，一个五华人和一个兴宁人是结拜的好兄弟，后来因为在点菜的时候出现了矛盾，一个要吃猪肉，一个要吃豆腐，后来，聪明的饭店老板想出了一个两全其美的办法，制作出了酿豆腐。动画表现了客家人的智慧和深厚的客家饮食文化。简直就是一招制胜！', 'https://cp1.douguo.com/upload/caiku/1/c/1/600x400_1c48735314f6d2ecb76bd95995bccd81.jpeg', 4, 110, NULL, 1, '<30分钟', '4人份');
INSERT INTO `recipedetails` VALUES (65, '香菇酿肉', '这道菜特意做给老爸吃的，要让他知道，这菜得用新鲜香菇做...而且要蒸好浇芡汁，不要再偷懒直接红烧了，一个个黑不留湫的...', 'https://cp1.douguo.com/upload/caiku/e/e/e/600x400_eee6ab3d36a8c70ceefce57c7ca03e5e.jpg', 5, 120, NULL, 1, '<30分钟', '3人份');
INSERT INTO `recipedetails` VALUES (66, '肉酿茄子', '', 'https://cp1.douguo.com/upload/caiku/0/0/b/600x400_007ee2670cfee515ebbdaef2f728a57b.jpg', 6, 124, NULL, 1, '<5分钟', '3人份');
INSERT INTO `recipedetails` VALUES (67, '豆沙麻圆、麻团、麻球', '从小就喜欢糯米制品，从家乡的糖油粑粑到广州的麻球都是我的最爱，在美国麻球只有在粤菜馆喝早茶的时候可以吃到，刚好学校要做potluck就想着做中式点心给老外吃吃，一查才发现这个麻球、麻圆、麻团傻傻分不清，不管了，反正就是糯米粉沾满芝麻炸出来的东西.果然做好带到学校外国同学们都觉得好奇这个沾满芝麻的球是什么？吃完以后大肆夸奖了一番。这大大提高我学习中式点心的决心，我要把中式点心推广宣传。按百度里写的麻团又叫煎堆，华北地区称麻团，东北地区称麻圆，海南又称珍袋，广西又称油堆，是一种古老的汉族特色油炸面食。制作起来也并不复杂。以糯米粉团炸起，加上芝麻而制成，有些包在麻茸、豆沙等馅料，有些没有。也是广东及港澳地区常见的贺年食品，有“煎堆辘辘，金银满屋”之意。试做下来发现油温的控制和时间尤为重要，而且也看你自己喜欢的口感来决定，比如你喜欢里面是炸成空心，外皮焦脆的，那就要延长低温时间。如果你喜欢里面还有少量软糯的糯米那就缩短低温时间。我做的方子里面的时间是炸完以后还有少量糯米的那种因为我包了豆沙馅所以我觉得有糯米裹着更好吃，如果是没有包馅的，我建议炸成空心的。', 'https://cp1.douguo.com/upload/caiku/d/8/a/600x400_d8bcb2cdf52ad490cea14ad2f0039bca.jpeg', 7, 110, NULL, 1, '<30分钟', '2人份');
INSERT INTO `recipedetails` VALUES (68, '♡番茄有机花菜♡', '番茄的酸配上有花菜的清甜，鲜香味美！', 'https://cp1.douguo.com/upload/caiku/6/3/9/600x400_6386e8fdf49b94bf4929dadc072b7539.jpg', 8, 110, NULL, 1, '<60分钟', '2人份');
INSERT INTO `recipedetails` VALUES (69, '韭苔里脊-卷饼', '去市场随便买了把韭薹，竟然发现很好吃，和卷饼很配哦，绝对超越蒜薹！', 'https://cp1.douguo.com/upload/caiku/8/7/0/600x400_874454f36a12d169a00101c449841390.jpg', 9, 110, NULL, 1, '<60分钟', '2人份');
INSERT INTO `recipedetails` VALUES (70, '腊肠焖饭', '米饭和菜一锅出，一直受孩子们的喜爱，上周末女儿的小伙伴来我家旁边的公园玩，邀请他们来我家吃午饭，给小朋友们做了这一锅腊肠焖饭，小朋友们吃的开开心心的。当然，不仅小朋友喜欢，大人也很喜欢呢。', 'https://cp1.douguo.com/upload/caiku/6/7/a/600x400_6777eae121a818566f7d8cbb7e7719da.jpg', 10, 110, NULL, 1, '<30分钟', '1人份');
INSERT INTO `recipedetails` VALUES (71, '健脾山药粥', '山药有补肺健脾的效果，像肠胃不是很好的就可以多熬粥来喝。', 'https://cp1.douguo.com/upload/caiku/7/3/a/600x400_7330ed8efc8577394886173803db4afa.jpg', 11, 110, NULL, 1, '<15分钟', '');
INSERT INTO `recipedetails` VALUES (72, '乡巴佬鹌鹑蛋', '鹌鹑蛋营养价值及其高，氨基酸比例和人体相似，和鸡蛋的营养差异不大，但是有一点和鸡蛋特别相反，鸡蛋含的过敏源高，而鹌鹑蛋不仅过敏源低，而且还可以抑制过敏源，据车会莲教授讲，过敏性哮喘的患者，多吃鹌鹑蛋能有效改善症状。从这一点来说，对于那些易过敏人群就有福了，多吃鹌鹑蛋，不仅可以得到很高的营养，同时还对过敏的问题能得到一定的改善。今天做一个乡巴佬鹌鹑蛋，这个做法的鹌鹑蛋我家宝宝实在太喜欢了，虽然比白水煮的营养略差，不过吃这个真的是味觉上的享受，我也一样经不住诱惑，吃了不少。当然，任何美食也不能吃太多哈，儿童一天控制在七八个就可以了。今天的做法加了几个小米辣泡椒，增加了独特的味道，有陈皮的话再加点陈皮也很不错，做法很简单。', 'https://cp1.douguo.com/upload/caiku/d/3/b/600x400_d3a8456c3dbab62858497ff69d12f78b.jpg', 12, 110, NULL, 1, '<5分钟', '3人份');
INSERT INTO `recipedetails` VALUES (73, '豆皮鸡肉卷', '简单美味！浇汁吃更美味！', 'https://cp1.douguo.com/upload/caiku/c/9/5/600x400_c9570822ddc82efde0485ccedd834a75.jpeg', 13, 110, NULL, 1, '<10分钟', '3人份');
INSERT INTO `recipedetails` VALUES (74, '糖醋藕丁-迷迭香', 'ღ莲藕，不仅味道鲜美，还有很高的食疗功效。莲藕味甘，属睡莲科植物，藕微甜而脆，可生食也可做菜，而且药用价值相当高，它的根根叶叶，花须果实，无不为宝，都可滋补入药。用藕制成粉，能消食止泻，开胃清热。ღ这一道糖醋藕丁，入口爽脆。万无一失的糖醋，用在藕的身上，就是属于夏天的美味。', 'https://cp1.douguo.com/upload/caiku/e/0/9/600x400_e04e8a94d96c77b7e5ac233c95c679d9.jpg', 14, 110, NULL, 1, '<5分钟', '3人份');
INSERT INTO `recipedetails` VALUES (75, '肉末酿秋葵', '做肉末酿秋葵其实工序非常简单，重要的是秋葵酿非常好吃，清甜脆口的秋葵刚端上餐桌，不一会就给家里的吃货清盘啦！呵呵……', 'https://cp1.douguo.com/upload/caiku/9/b/8/600x400_9b300079f1c9df59c85d3ca640808358.jpg', 15, 110, NULL, 1, '<10分钟', '3人份');
INSERT INTO `recipedetails` VALUES (76, '【客家酿苦瓜】', '酿苦瓜如何而来？相传很久以前，一个五华人和一个兴宁人是结拜的好兄弟，后来因为在点菜的时候出现了矛盾，一个要吃猪肉，一个要吃苦瓜；后来聪明的饭店老板想出了一个两全其美的办法，制作出了酿苦瓜。这深刻地表现了客家人的智慧和深厚的客家饮食文化。吃起来不腻不柴，味道清淡鲜美，口感绵绵软糯！', 'https://cp1.douguo.com/upload/caiku/e/3/1/600x400_e3b9f6b558ece3b6f57a048ae91b08f1.jpg', 16, 110, NULL, 1, '<5分钟', '2人份');
INSERT INTO `recipedetails` VALUES (77, '客家咸鸡【芸芸小厨】', '今天给家人做一道客家咸鸡，鸡肉蒸得软烂，只有盐这样简单的调味，也能做出鲜香滋味。选择做这一道菜的另一个原因是因为客家咸鸡也叫外婆鸡，是说很久以前，在客家人聚居的地方，有一位外婆疼爱外孙，杀鸡过年时特地把鸡腿留下来，埋在盐堆里保存，待到节后女儿带外孙回娘家时，阿婆就将鸡腿取出来款待外孙。没想到经盐腌制的鸡腿咸香鲜美，吃过的无不叫好，一道客家风味美食就此诞生了。无论传说是否是真的，这道菜里包含的亲情也给菜增添了风味。简简单单的烹调方式，其实也如家人之间的陪伴，看似平淡，却最深情。', 'https://cp1.douguo.com/upload/caiku/f/d/a/600x400_fdfa5bc120736e5bef87f0d71cb0cc7a.jpg', 17, 110, NULL, 1, '<5分钟', '2人份');
INSERT INTO `recipedetails` VALUES (78, '之三——「鸡蛋小饼干】', '话说到这已经无法表达了，电饼档连饼干都可以制作了。没烤箱的亲，也能在家制作零添加的宝宝零食，鸡蛋饼干。', 'https://cp1.douguo.com/upload/caiku/b/c/2/600x400_bcd252f375c8206cf53a7e2c61b2dae2.jpg', 18, 110, NULL, 1, '<5分钟', '3人份');
INSERT INTO `recipedetails` VALUES (79, '清蒸银鳕鱼', '买了新鲜的挪威银鳕鱼，实在舍不得煎烤破坏了它的鲜嫩，所以用了最简单的方法最简单的调料来凸显它本身的味道。', 'https://cp1.douguo.com/upload/caiku/3/9/1/600x400_392c6e5c2b9a6bb19c78c108c30a19e1.jpg', 19, 110, NULL, 1, '<15分钟', '3人份');
INSERT INTO `recipedetails` VALUES (80, '豆腐酿', '嫩豆腐配上肉馅，经煎制后外焦里嫩，清香爽口。', 'https://cp1.douguo.com/upload/caiku/3/6/7/600x400_36710098656f3407c16a17aa9a3052b7.jpg', 20, 110, NULL, 1, '<30分钟', '2人份');
INSERT INTO `recipedetails` VALUES (81, '客家酿豆腐', '酿菜是客家菜系的代表菜式，其中比较有代表性的就是煎酿三宝，也就是酿苦瓜、酿辣椒和酿茄子。周末家人都在时我也常做酿菜给家人吃。我们酿菜的馅一般有两个口味，一种是今天的这种做法，用肉糜、红葱头、姜末和调味料混合，多用来酿油豆腐或水豆腐。另一种是在第一种的基础上加点咸鱼末，多用来酿茄子。今天和大家分享的这道酿豆腐，做法比较简单，成品口感鲜美，鲜嫩滑润，香而不腻。', 'https://cp1.douguo.com/upload/caiku/3/8/8/600x400_38ac88b4a7f13c2ec599a529f47a5a88.jpg', 21, 110, NULL, 1, '<30分钟', '1人份');
INSERT INTO `recipedetails` VALUES (82, '独家客家白斩鸭', '1、可大补虚劳、滋五脏之阴、清虚劳之热、补血行水、养胃生津、止咳自惊、消螺蛳积、清热健脾、虚弱浮肿。2、身体虚弱、病后体虚、营养不良性水肿。鸭肉营养鸭肉的营养价值很高，蛋白质含量比畜肉高得多。', 'https://cp1.douguo.com/upload/caiku/9/f/6/600x400_9fae3366bf66ff0897582dffd0e37c16.jpeg', 22, 110, NULL, 1, '<15分钟', '3人份');
INSERT INTO `recipedetails` VALUES (83, '【客家红焖肉】', '今天分享一款俺家乡的美食～客家名菜【红焖肉】，甚是下酒下饭的好菜！客家人遍及全国，此菜也许在烹饪细节上有所不同，但成品的主味与风格均以咸香酥软为一大特色！客家人逢年过节，请客做酒，都要加工一道红焖（烧）猪肉，都要添加食红或红曲，这道鲜红的菜称“桌心”，意含好事好头，大吉大利。', 'https://cp1.douguo.com/upload/caiku/e/7/0/600x400_e7fde0bbe9bced5eedc0f58200bd3a40.jpg', 23, 110, NULL, 1, '<15分钟', '3人份');
INSERT INTO `recipedetails` VALUES (84, '香辣泥鳅炖豆腐', '这道菜可是我的私房法宝，不知征服了多少爱吃辣的朋友们的味蕾，秘方就在于那份私房辣椒酱，妈妈亲手种的辣椒，亲手磨制辣椒酱，是我炖鱼，炖泥鳅的法宝', 'https://cp1.douguo.com/upload/caiku/c/1/4/600x400_c1c0ac7b85367143df580738f2b8f9b4.jpg', 24, 110, NULL, 1, '<60分钟', '2人份');
INSERT INTO `recipedetails` VALUES (85, '客家酿辣椒', '广东客家人，酿豆腐、酿茄子、酿辣椒，都是是客家菜特色菜，今天就来一个酿辣椒吧，超喜欢吃。', 'https://cp1.douguo.com/upload/caiku/5/0/a/600x400_50b06a9fed6328fd1ec19bc855b29f7a.jpg', 25, 110, NULL, 1, '<15分钟', '2人份');
INSERT INTO `recipedetails` VALUES (86, '客家盐焗鸡', '客家盐焗鸡,一直是我向往的,山寨了好几次,虽然味道有那么几分相似,但总感觉缺少了什么.朋友带回一只正宗的客家盐焗鸡,据说是朋友妈妈亲手养大的家鸡,只需简简单单的调料,便成就客家人的美味,终于吃出来了,缺少的就是妈妈的味道.每个人心里头最念念不忘的是妈妈菜,不论外面的菜肴是多么的丰盛,食材是多么的昂贵,妈妈菜的味道是外面永远复制不了的.', 'https://cp1.douguo.com/upload/caiku/e/0/3/600x400_e0f2864a0110c382eea74245d4bfd853.jpeg', 26, 110, NULL, 1, '<5分钟', '4人份');
INSERT INTO `recipedetails` VALUES (87, '茄饼～电饼铛版', '喜欢不油腻的茄饼，用电饼铛做，很不错', 'https://cp1.douguo.com/upload/caiku/e/8/f/600x400_e8e121ce2c98f57ce55cb99c116291cf.jpg', 27, 110, NULL, 1, '<15分钟', '2人份');
INSERT INTO `recipedetails` VALUES (88, '南瓜饼', '', 'https://cp1.douguo.com/upload/caiku/0/1/4/600x400_01cf956003d40723c05204f237c160b4.jpg', 28, 110, NULL, 1, '<15分钟', '4人份');
INSERT INTO `recipedetails` VALUES (89, '“电饼铛版”炒河粉', '能够侧开的电饼铛，除了能烙、煎，还能炒！今天就做一个电饼铛版的炒河粉。', 'https://cp1.douguo.com/upload/caiku/d/1/f/600x400_d148221d95c5c227dfeeb2bf0e27a8bf.jpg', 29, 110, NULL, 1, '<15分钟', '未知');
INSERT INTO `recipedetails` VALUES (90, '酱浇鲍鱼', '食尚是地道客家人，烹调菜肴时不管红烧、煎焖、或清蒸的菜式都喜欢搭配酱料，豆瓣酱更是驻家必备常用酱，最常吃的是豆瓣酱蒸鱼腩，每次做这道菜，宝爸绝对是吃撑了才肯放下碗筷​，小宝更是连汁也不放过，舀起捞入米饭中，吃的愉悦满足。。。禾然有机豆瓣酱，食尚首次试用它，成品没出来时心里没底，不确定与平时用的豆瓣酱有什么区别，就用它做了一次革新改变，酱浇鲍鱼，说实话真的太好吃了，鲜甜十足的鲍鱼吸收了香味浓郁的豆瓣酱香，口感爽脆、Q弹，味道鲜甜、回甘。细嚼之下酱香在口腔里打转，鲜香无比~禾然有机豆瓣酱咸淡适中，比想象中更惹味、香醇，此刻食尚已经被它征服了~', 'https://cp1.douguo.com/upload/caiku/3/4/6/600x400_34d82b1110b803b6ff0644c61fbdf366.jpg', 30, 110, NULL, 1, '<15分钟', '2人份');
INSERT INTO `recipedetails` VALUES (92, '清炖猪肚汤', '嘟嘟从小就喜欢吃猪肚，独独不喜欢吃肺，每次吃完，猪肚全没了，留下的都是没人气的肺，这次去超市看到有单独的猪肚卖，可把嘟嘟开心坏了，立马入了几盒，隔天就尝试炖了次单独的猪肚汤，在烹饪的过程中，老妈就开始唧唧歪歪在那不停的说，猪肚一定要和猪肺一起炖，汤才鲜美，可当真正炖好开吃的时候，某人的手脚可一点都不输人，那筷子直动直动的，吃完后，老妈便倒戈了，以后我也再也不买猪肺了，又难处理又不好吃，还是清炖的猪肚香哪…', 'https://cp1.douguo.com/upload/caiku/a/a/a/600x400_aaa4fb47826cd5ffa22220f4f76e3d0a.jpg', 2, 122, NULL, 2, '<10分钟', '2人份');
INSERT INTO `recipedetails` VALUES (93, '冬瓜薏米排骨汤', '夏季潮湿闷热，人易上火，这道汤可以袪湿袪火~~', 'https://cp1.douguo.com/upload/caiku/1/9/a/600x400_1978f6d35ee6a4d379bc2c77ef9231da.jpg', 3, 114, NULL, 2, '<30分钟', '4人份');
INSERT INTO `recipedetails` VALUES (94, '山药鸡汤', '元旦父母说要来家来玩，要知道，平时都是我们去蹭吃蹭喝，总是父母做好的饭菜等着我们回去吃，难得有机会给父母做顿饭，当然要拿出本事来，好好“表现”一下。这宴客的重头戏先开始于汤品上。。。在湖北，有爱喝汤和煨汤的习俗，无论是在家里或酒店，有“无汤不成席”的说法。一碗热乎乎、香喷喷的汤，显现出主人对客人的热情与心意。湖北人爱喝汤，也会煨汤，以前家家都有一个大的瓦罐，叫做“煨汤吊子”，口小腹大，颜色暗黑油腻，形状拙稚，多年的罐子，可以传家。煨汤一般以排骨或鸡、鸭、鱼等肉菜为主料，配以蔬菜来丰富汤的味道。先炒后煨，讲究火候，旺火断生，文火焖透入味，在小小的煤炉上要煨上几个小时，让精华尽入于汤中。但与以喝汤为主，汤料多数舍弃的广东老火靓汤不同的是，湖北煨汤的料也很美味，重视喝汤吃肉的双重享受。不过现在家庭很少用煤炉、“吊子”来煨汤了，取而代替的是现代化的厨房小电器，虽然少了些传统味道，但是那煨汤的手艺没有变化，精选的食材、独特技艺、足够的时间，煨制出醇香浓郁、鲜味香美、汤稠料烂、入口即化的汤品。想着父母年纪大了，应该多补充营养又不能太过油腻，因此我在主料的食材上选用了老母鸡，鸡汤以美味滋补被人知晓，而山药质地细腻，味道香甜，含有多种营养成分，健脾益胃、助消化，算得上是一种药食两用的食材，两种搭配，营养加倍哦。赶紧来看看我花了几个小时为父母专门准备的“山药鸡汤”吧。', 'https://cp1.douguo.com/upload/caiku/c/9/0/600x400_c98ad58109527c3bdd97ef70615fffa0.jpg', 4, 114, NULL, 2, '<2小时', '3人份');
INSERT INTO `recipedetails` VALUES (95, '鲫鱼豆腐汤', '非常有营养的家常菜--鲫鱼豆腐汤', 'https://cp1.douguo.com/upload/caiku/f/0/8/600x400_f01909351742fe311d65334d5fe976f8.jpg', 5, 118, NULL, 2, '<10分钟', '2人份');
INSERT INTO `recipedetails` VALUES (96, '冬瓜排骨汤', '众所周知广东人喜欢喝汤，炎热的夏天，来一个清解解暑的排骨冬瓜汤。冬瓜清热解暑、解渴、利水、消肿、不含脂肪、热量低，健康优质食品。薏米祛湿消水肿，枸杞清热明目，玉米健康杂粮。', 'https://cp1.douguo.com/upload/caiku/2/c/c/600x400_2c564f8c286213e8802e0672d40b1a3c.jpg', 6, 115, NULL, 2, '<30分钟', '3人份');
INSERT INTO `recipedetails` VALUES (97, '黄豆猪蹄汤', '滋补润燥、补血又美容的红枣猪蹄黄豆汤，富含胶原蛋白，经常吃可增加皮肤弹性，美容养颜抗衰老哦，炖好的汤是味道浓香，营养价值丰富哦,加花生、红枣和淮山，可以减少猪蹄的油腻感，使得黄豆炖猪蹄的营养更均衡。爱美的女性朋友可以多喝哈。猪蹄黄豆煲的汤还是常用的催乳方，它适用于乳汁化生不足的缺乳，服用猪蹄汤要分次，汤多肉少，否则汤中的高蛋白与高脂肪可能会引起胃口不佳，反而补不进。', 'https://cp1.douguo.com/upload/caiku/f/6/3/600x400_f647f3f0967578e6a7c0ecde3e7ba7a3.jpg', 7, 114, NULL, 2, '<15分钟', '1人份');
INSERT INTO `recipedetails` VALUES (98, '滋补素汤', '这道汤是朋友介绍，补血补气，煲的时候满屋飘香，神奇的是素食材的组合经产生与鸡汤相同的香气，浅尝一口，哇，鲜美无比，还真有红枣煲鸡的味道，再次感受到素菜的魔力。家里的他尝过后一直惦记着，而且赞不绝口呢。(*^__^*)嘻嘻……', 'https://cp1.douguo.com/upload/caiku/c/8/0/600x400_c8c49624e07fe9053e090ea3b4f6d770.jpg', 8, 114, NULL, 2, '<5分钟', '4人份');
INSERT INTO `recipedetails` VALUES (99, '奶白色的鲫鱼豆腐汤', '很简单但是绝对好喝的汤。教你把汤煮成奶白色的诀窍。', 'https://cp1.douguo.com/upload/caiku/6/c/1/600x400_6ccbda7e9c93380c31d794b686b33ff1.jpg', 9, 114, NULL, 2, '<30分钟', '2人份');
INSERT INTO `recipedetails` VALUES (100, '鲫鱼萝卜汤', '腹胀无食欲的秋季可以多喝此汤,白萝卜中的芥子油可以去鱼腥，令汤汁尤其的鲜美。白萝卜可以治疗或辅助治疗多种疾病，本草纲目称之为“蔬中最有利者”。', 'https://cp1.douguo.com/upload/caiku/1/a/c/600x400_1a158cb8751f91eb64990f567c0ed63c.jpg', 10, 114, NULL, 2, '<30分钟', '4人份');
INSERT INTO `recipedetails` VALUES (101, '冰糖银耳莲子羹', '', 'https://cp1.douguo.com/upload/caiku/1/9/9/600x400_19da6fd8c48164061ee2d48ee6759e39.jpeg', 11, 114, NULL, 2, '<60分钟', '4人份');
INSERT INTO `recipedetails` VALUES (102, '-小白菜肉丸汤', '小白菜含蛋白质、脂肪、粗纤维、碳水化合物、酸性果胶、钙、磷、铁等矿物质及多种维生素，是蔬菜中含矿物质和维生素最丰富的菜。与大白菜相比，小白菜的含钙量是其2倍，维生素C含量约为3倍，胡萝卜素含量高达74倍。小白菜所含的矿物质钙、磷能够促进骨骼发育，加速人体新陈代谢，增强机体造血功能。它还富含维生素B1、维生素B6、泛酸等，能缓解精神紧张，考试前多吃小白菜有助于保持心态平静。', 'https://cp1.douguo.com/upload/caiku/2/1/0/600x400_21ac74abaa460c96e3f9b4e2bc2b9de0.jpg', 12, 114, NULL, 2, '<5分钟', '2人份');
INSERT INTO `recipedetails` VALUES (103, '清炖大骨头汤', '家有萌宝一枚最近迷上喝汤，妈妈变花样为宝宝做美味营养的汤，希望嘟嘟宝贝健康成长。', 'https://cp1.douguo.com/upload/caiku/0/d/8/600x400_0d1c669409e76724e0b98582d7423eb8.jpeg', 13, 114, NULL, 2, '<10分钟', '1人份');
INSERT INTO `recipedetails` VALUES (104, '白萝卜枸杞排骨汤', '', 'https://cp1.douguo.com/upload/caiku/5/b/3/600x400_5bdc1bdd6cdc2cc72d2477ce581d9d73.jpg', 14, 114, NULL, 2, '<30分钟', '1人份');
INSERT INTO `recipedetails` VALUES (105, '清炖羊肉汤', '北风呼啸而来的此时，正是吃上一碗清炖羊肉的最好时节。自古以来羊肉就是国人最为推崇的滋补食品之一，羊肉性温热可温胃御寒，尤其适合在秋冬食用。而且由于羊是纯食草动物，肉质非常的细嫩易消化，脂肪与胆固醇的含量也要比猪肉和牛肉少得多，是冬季具有进补和防寒双重效果的最佳美味。虽说羊肉因其色鲜味美、营养价值极高而受到诸多人的喜爱，但它本身的膻味却也令不少人望而却步。其实羊肉的膻味主要来自羊肉中的挥发性脂肪酸，若是在烹调时采取了以下的小窍门，那么便可非常轻松的去掉膻味而保留鲜味，让即使是零厨艺的新手，也能完美的炖出一锅汤鲜味美的清炖羊肉。炖制时可记得要加足水量哦，这样吃完了羊肉的浓醇鲜汤还可以再泡上一碗白饭，那鲜甜的滋味保管会让全家人都爱不释口', 'https://cp1.douguo.com/upload/caiku/8/3/9/600x400_832a703c6c8ea04f5a103a2d1297ede9.png', 15, 114, NULL, 2, '<30分钟', '3人份');
INSERT INTO `recipedetails` VALUES (106, '豆腐虾仁一锅鲜', '这道汤特别鲜美，虾仁、蘑菇都能提鲜，豆腐爽嫩滑口，比较清淡好喝，', 'https://cp1.douguo.com/upload/caiku/5/1/d/600x400_51a9696c6d6426ef98c17972bc62e9fd.jpg', 16, 114, NULL, 2, '<5分钟', '1人份');
INSERT INTO `recipedetails` VALUES (107, '冬瓜排骨汤', '', 'https://cp1.douguo.com/upload/caiku/3/6/b/600x400_365ae184cca618b46ceeb672664202bb.jpg', 17, 114, NULL, 2, '<10分钟', '5人份');
INSERT INTO `recipedetails` VALUES (108, '家常小馄饨', '12个月以上的宝宝，从前面的切牙到后面的磨牙都开始慢慢长成，能够很容易的吞咽食物，但是我们还需要帮助宝宝提高咀嚼能力。在这个阶段，给宝宝添加的辅食种类和稠度要开始增加，可以给宝宝尝试添加一些小馄饨、饺子、馒头和薄饼之类的辅食。适合年龄龄：12个月以上', 'https://cp1.douguo.com/upload/caiku/1/8/8/600x400_18e4de7ddbe79dea9b560675359e7418.jpg', 18, 114, NULL, 2, '<15分钟', '2人份');
INSERT INTO `recipedetails` VALUES (109, '奶白鲫鱼汤', '鲫鱼含有丰富的蛋白质，易消化吸收，老人小孩可以经常食用。', 'https://cp1.douguo.com/upload/caiku/9/3/a/600x400_93848cdf7feff5d92607ab8e19e2975a.jpg', 19, 114, NULL, 2, '<15分钟', '1人份');
INSERT INTO `recipedetails` VALUES (110, '猪肝番茄汤', '番茄红素是一种很强的抗氧化剂，具有极强的清除自由基的能力，能防癌哟，番茄红素跟胡萝卜素一样是脂溶性的，要通过油的煸炒才能释放出来让人体吸收；为了能更多的吸收番茄红素，下面我就用去皮的番茄做道汤---番茄猪肝汤。猪肝是含有丰富的营养物质，具有明目、补血、去除毒素，增强人体免疫力等功效，是理想的补血佳品之一。但因为肝是体内最大的毒物中转站和解毒器官，所以买回的鲜肝不要急于烹调，应把肝放在自来水龙头下冲洗10分钟，然后放在水中浸泡30分钟。这道汤制作简单，好吃的关键在于熬出红红的番茄汤汁，所以我们可以先将番茄去皮后切成小碎粒，煮的时候用勺按压成蓉，需要注意的是，熬汤时可以加入适当量的番茄酱，不仅使得汤的味道更鲜美，而且颜色也更漂亮。酸甜可口的番茄猪肝汤，味道鲜美，还能补血明目，养颜防癌，真得很好喝哟，赶紧来一碗吧。', 'https://cp1.douguo.com/upload/caiku/c/1/b/600x400_c1e6e5b13fe70e6eb4d1eae347d2654b.jpg', 20, 114, NULL, 2, '<5分钟', '1人份');
INSERT INTO `recipedetails` VALUES (111, '【紫菜虾皮汤】', '紫菜虾皮汤是我家餐桌上最常见的一道汤羹，虽然家里只有两口人，可每年要消耗三至四斤的虾皮和紫菜，可见我家有多么爱喝这道汤。紫菜虾皮汤虽然不起眼，但非常好喝，而且功效非常显著。现在全民都高叫着补钙，喝牛奶，吃钙片，其实虾皮素有“钙库”之称，钙质含量丰富，而且蛋白质含量也非常高。紫菜的热量很低，对于降血脂、胆固醇有一定的作用。有兴趣的朋友不妨试试这道经典的汤羹，长期坚持，效果甚佳哦。', 'https://cp1.douguo.com/upload/caiku/c/0/0/600x400_c06e3dc699811edcd5e8c63238292350.jpg', 21, 114, NULL, 2, '<15分钟', '1人份');
INSERT INTO `recipedetails` VALUES (112, '高汤的简单经济制作', '高汤是厨房的秘密武器，菜品高低，厨艺高下，就在于此！节假日的时候，尤其要备足高汤！这个短小的视频教你如何简单又低成本地制作和储存高汤。', 'https://cp1.douguo.com/upload/caiku/e/c/7/600x400_ec5eaab6c42f1343fe5e4477cedf0fe7.jpg', 22, 114, NULL, 2, '<5分钟', '1人份');
INSERT INTO `recipedetails` VALUES (113, '茶树菇鸡汤-美的食色', '夏季人体水分营养流失的快，每天除了多喝水以外，当然还要多喝些营养丰富的汤，但在这样的季节很多汤都过于厚重油腻，让人提不起食欲，所以今天小美就为大家分享一道适合夏天的汤-茶树菇鸡汤。茶树菇富含丰富氨基酸和多种营养成分，含有丰富的植物纤维素，能吸收汤中多余的油份，使汤水喝起来更清爽不油腻。', 'https://cp1.douguo.com/upload/caiku/8/2/d/600x400_822091be4049caa79270b4be7aa0abfd.jpg', 23, 114, NULL, 2, '<15分钟', '1人份');
INSERT INTO `recipedetails` VALUES (114, '胡萝卜玉米排骨汤', '我家宝宝最爱吃排骨了，每天的饭都会有汤才能吃的完，今天来炖个大骨汤', 'https://cp1.douguo.com/upload/caiku/b/9/2/600x400_b9cf415f5c59429f77fdc0bd29c5d4e2.jpg', 24, 114, NULL, 2, '<5分钟', '2人份');
INSERT INTO `recipedetails` VALUES (115, '胡萝卜玉米筒骨汤', '吃多了油腻的大鱼大肉，来碗清甜的胡萝卜玉米筒骨汤，热量低，真舒畅。还是那句话，简单的也能是美味的。', 'https://cp1.douguo.com/upload/caiku/8/b/f/600x400_8b9deb42572b22058570b2f5964ed04f.jpg', 25, 114, NULL, 2, '<30分钟', '2人份');
INSERT INTO `recipedetails` VALUES (116, '山药排骨汤', '山药有补脾养胃，生津益肺的功效，而胡萝卜丰富的β-胡萝卜素、维生素A、胡萝卜中的木质素能够提高机体的免疫力。搭配鲜美的干贝、排骨煲汤，不仅营养丰富，而且味道也是没话可说，最适合初冬补充能量。', 'https://cp1.douguo.com/upload/caiku/f/7/1/600x400_f7a2e27c64aadfdc3890230ffff01191.jpg', 26, 114, NULL, 2, '<60分钟', '2人份');
INSERT INTO `recipedetails` VALUES (117, '白菜肉片汤年糕', '汤年糕，汤汤水水除了能填饱肚子以外，还能暖暖身子，里面可以加入不同的蔬菜和猪肉来均衡营养和提鲜，就像这碗汤年糕，加入了白菜和猪肉片，使得味道更加鲜美。', 'https://cp1.douguo.com/upload/caiku/3/b/9/600x400_3bde5568dd9cc48851af61fec1ec3699.jpg', 27, 114, NULL, 2, '<30分钟', '3人份');
INSERT INTO `recipedetails` VALUES (118, '鱼头豆腐汤', '绝对的香浓鲜美，并且还有清热润燥、健脾补气、温中暖胃、美容润肤的功效。', 'https://cp1.douguo.com/upload/caiku/5/4/8/600x400_54e5e992bee5eb0575aa9a524259f508.jpg', 28, 114, NULL, 2, '<30分钟', '2人份');
INSERT INTO `recipedetails` VALUES (119, '番茄金针菇豆腐汤', '', 'https://cp1.douguo.com/upload/caiku/4/3/f/600x400_43ddeb2793ab6502645289d9bd0535bf.jpg', 29, 114, NULL, 2, '<30分钟', '2人份');
INSERT INTO `recipedetails` VALUES (120, '山药枸杞乌鸡汤', '', 'https://cp1.douguo.com/upload/caiku/7/b/f/600x400_7bb8f013f6589908e794b31f64e113ef.jpg', 30, 114, NULL, 2, '<60分钟', '2人份');

-- ----------------------------
-- Table structure for recipefood
-- ----------------------------
DROP TABLE IF EXISTS `recipefood`;
CREATE TABLE `recipefood`  (
  `foodId` int(11) NOT NULL AUTO_INCREMENT,
  `foodName` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `foodNum` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detailsId` int(11) NOT NULL,
  PRIMARY KEY (`foodId`) USING BTREE,
  INDEX `fk_food_details1_idx`(`detailsId`) USING BTREE,
  CONSTRAINT `fk_food_details1` FOREIGN KEY (`detailsId`) REFERENCES `recipedetails` (`detailsid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 479 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜谱食材' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recipefood
-- ----------------------------
INSERT INTO `recipefood` VALUES (1, '面粉', '适量', 5);
INSERT INTO `recipefood` VALUES (2, '清水', '一碗', 5);
INSERT INTO `recipefood` VALUES (3, '鸡蛋', '2个', 5);
INSERT INTO `recipefood` VALUES (4, '香葱', '适量', 5);
INSERT INTO `recipefood` VALUES (5, '热米饭', '2小碗（2人份）', 21);
INSERT INTO `recipefood` VALUES (6, '紫菜', '2-3张', 21);
INSERT INTO `recipefood` VALUES (7, '胡萝卜', '1根', 21);
INSERT INTO `recipefood` VALUES (8, '黄瓜', '半根', 21);
INSERT INTO `recipefood` VALUES (9, '鸡蛋', '2个', 21);
INSERT INTO `recipefood` VALUES (10, '火腿三明治', '100g', 21);
INSERT INTO `recipefood` VALUES (11, '红豆', '50g', 16);
INSERT INTO `recipefood` VALUES (12, '绿豆', '50g', 16);
INSERT INTO `recipefood` VALUES (13, '猪肉', '150g', 12);
INSERT INTO `recipefood` VALUES (14, '杏鲍菇', '50g', 12);
INSERT INTO `recipefood` VALUES (15, '胡萝卜', '50g', 12);
INSERT INTO `recipefood` VALUES (16, '豌豆', '40g', 12);
INSERT INTO `recipefood` VALUES (17, '甜玉米', '40g', 12);
INSERT INTO `recipefood` VALUES (18, '大米', '350g', 12);
INSERT INTO `recipefood` VALUES (19, '铁棍山药', '半根', 15);
INSERT INTO `recipefood` VALUES (20, '胡萝卜', '半个', 15);
INSERT INTO `recipefood` VALUES (21, '西兰花', '4朵', 15);
INSERT INTO `recipefood` VALUES (22, '大米', '160g', 15);
INSERT INTO `recipefood` VALUES (23, '面粉', '200g', 11);
INSERT INTO `recipefood` VALUES (24, '水', '110g', 11);
INSERT INTO `recipefood` VALUES (25, '酵母粉', '3g', 11);
INSERT INTO `recipefood` VALUES (26, '猪肉', '150g', 11);
INSERT INTO `recipefood` VALUES (27, '胡萝卜', '一小截', 11);
INSERT INTO `recipefood` VALUES (28, '意大利面', '200g', 13);
INSERT INTO `recipefood` VALUES (29, '肉末', '60g', 13);
INSERT INTO `recipefood` VALUES (30, '西红柿', '1个', 13);
INSERT INTO `recipefood` VALUES (31, '洋葱', '半个', 13);
INSERT INTO `recipefood` VALUES (32, '盐', '适量', 13);
INSERT INTO `recipefood` VALUES (33, '鸡蛋', '3个', 28);
INSERT INTO `recipefood` VALUES (34, '青椒', '半个', 28);
INSERT INTO `recipefood` VALUES (35, '洋葱', '1/4个', 28);
INSERT INTO `recipefood` VALUES (36, '午餐肉', '1小块', 28);
INSERT INTO `recipefood` VALUES (37, '挂面', '50克', 6);
INSERT INTO `recipefood` VALUES (38, '胡椒粉', '半茶匙', 6);
INSERT INTO `recipefood` VALUES (39, '食用油', '1汤匙', 6);
INSERT INTO `recipefood` VALUES (40, '盐', '适量', 6);
INSERT INTO `recipefood` VALUES (41, '醋', '1汤匙', 6);
INSERT INTO `recipefood` VALUES (42, '芝麻油', '少许', 6);
INSERT INTO `recipefood` VALUES (43, '土豆泥', '200克', 14);
INSERT INTO `recipefood` VALUES (44, '芦笋', '适量', 14);
INSERT INTO `recipefood` VALUES (45, '玉米粒', '适量', 14);
INSERT INTO `recipefood` VALUES (46, '胡萝卜', '适量', 14);
INSERT INTO `recipefood` VALUES (47, '油', '适量', 14);
INSERT INTO `recipefood` VALUES (48, '鸡蛋', '1个', 27);
INSERT INTO `recipefood` VALUES (49, '隔夜米饭', '1碗', 27);
INSERT INTO `recipefood` VALUES (50, '番茄', '1个', 27);
INSERT INTO `recipefood` VALUES (51, '洋葱', '半个', 27);
INSERT INTO `recipefood` VALUES (52, '大米', '1杯', 4);
INSERT INTO `recipefood` VALUES (53, '皮蛋', '1个', 4);
INSERT INTO `recipefood` VALUES (54, '里脊肉', '100g', 4);
INSERT INTO `recipefood` VALUES (55, '生姜丝', '少许', 4);
INSERT INTO `recipefood` VALUES (56, '番茄', '1个', 19);
INSERT INTO `recipefood` VALUES (57, '鸡蛋', '3个', 19);
INSERT INTO `recipefood` VALUES (58, '面粉', '1/4cup', 19);
INSERT INTO `recipefood` VALUES (59, '香雪挂面', '一把', 22);
INSERT INTO `recipefood` VALUES (60, '大西红柿', '一个', 22);
INSERT INTO `recipefood` VALUES (61, '鸡蛋', '一个', 22);
INSERT INTO `recipefood` VALUES (62, '面粉', '200g', 30);
INSERT INTO `recipefood` VALUES (63, '热水', '150g', 30);
INSERT INTO `recipefood` VALUES (64, '葱', '适量', 30);
INSERT INTO `recipefood` VALUES (65, '中筋面粉', '500g', 7);
INSERT INTO `recipefood` VALUES (66, '温水', '280ml', 7);
INSERT INTO `recipefood` VALUES (67, '猪绞肉', '400g', 7);
INSERT INTO `recipefood` VALUES (68, '姜末', '30g', 7);
INSERT INTO `recipefood` VALUES (69, '大葱末', '30g', 7);
INSERT INTO `recipefood` VALUES (70, '香葱碎', '50g', 7);
INSERT INTO `recipefood` VALUES (71, '鸡蛋', '1颗', 7);
INSERT INTO `recipefood` VALUES (72, '青瓜', '150g', 26);
INSERT INTO `recipefood` VALUES (73, '红萝卜', '100g', 26);
INSERT INTO `recipefood` VALUES (74, '火腿', '100g', 26);
INSERT INTO `recipefood` VALUES (75, '紫苏叶', '几片', 26);
INSERT INTO `recipefood` VALUES (76, '糯米', '150g', 26);
INSERT INTO `recipefood` VALUES (77, '珍珠米', '150g', 26);
INSERT INTO `recipefood` VALUES (78, '海草', '100g', 26);
INSERT INTO `recipefood` VALUES (79, '玉米', '100g', 26);
INSERT INTO `recipefood` VALUES (80, '黑芝麻', '30g', 26);
INSERT INTO `recipefood` VALUES (81, '中筋面粉', '200g', 23);
INSERT INTO `recipefood` VALUES (82, '开水', '160g', 23);
INSERT INTO `recipefood` VALUES (83, '普通面粉', '140g', 2);
INSERT INTO `recipefood` VALUES (84, '水', '190g', 2);
INSERT INTO `recipefood` VALUES (85, '鸡蛋', '3个', 2);
INSERT INTO `recipefood` VALUES (86, '长茄子', '3个', 10);
INSERT INTO `recipefood` VALUES (87, '猪肉馅', '适量', 10);
INSERT INTO `recipefood` VALUES (88, '蒜', '适量', 10);
INSERT INTO `recipefood` VALUES (89, '小红辣椒', '适量', 10);
INSERT INTO `recipefood` VALUES (90, '豆瓣酱', '1大勺', 10);
INSERT INTO `recipefood` VALUES (91, '盐', '1小勺', 10);
INSERT INTO `recipefood` VALUES (92, '五花肉', '400g', 20);
INSERT INTO `recipefood` VALUES (93, '葱姜', '适量', 20);
INSERT INTO `recipefood` VALUES (94, '老抽', '10g', 20);
INSERT INTO `recipefood` VALUES (95, '生抽', '15g～20g', 20);
INSERT INTO `recipefood` VALUES (96, '蚝油', '10g', 20);
INSERT INTO `recipefood` VALUES (97, '盐', '适量', 20);
INSERT INTO `recipefood` VALUES (98, '卷心菜', '半个', 18);
INSERT INTO `recipefood` VALUES (99, '胡萝卜', '半根', 18);
INSERT INTO `recipefood` VALUES (100, '猪肉馅', '100克', 18);
INSERT INTO `recipefood` VALUES (101, '葱丝姜末', '适量', 18);
INSERT INTO `recipefood` VALUES (102, '面条', '300克', 18);
INSERT INTO `recipefood` VALUES (103, '红薯粉', '100克', 29);
INSERT INTO `recipefood` VALUES (104, '辣椒油', '15ml', 29);
INSERT INTO `recipefood` VALUES (105, '陈醋', '15ml', 29);
INSERT INTO `recipefood` VALUES (106, '生抽', '15ml', 29);
INSERT INTO `recipefood` VALUES (107, '香油', '5ml', 29);
INSERT INTO `recipefood` VALUES (108, '白砂糖', '3克', 29);
INSERT INTO `recipefood` VALUES (109, '食盐', '2克', 29);
INSERT INTO `recipefood` VALUES (110, '鸡蛋', '5个', 8);
INSERT INTO `recipefood` VALUES (111, '面粉', '220克', 3);
INSERT INTO `recipefood` VALUES (112, '热水', '120克', 3);
INSERT INTO `recipefood` VALUES (113, '冷水', '40克', 3);
INSERT INTO `recipefood` VALUES (114, '长茄子', '1根', 25);
INSERT INTO `recipefood` VALUES (115, '淀粉', '适量', 25);
INSERT INTO `recipefood` VALUES (116, '鸡蛋', '2个', 25);
INSERT INTO `recipefood` VALUES (117, '水', '适量', 25);
INSERT INTO `recipefood` VALUES (118, '面粉', '3勺', 8);
INSERT INTO `recipefood` VALUES (119, '香肠', '1根', 8);
INSERT INTO `recipefood` VALUES (120, '米饭', '适量', 1);
INSERT INTO `recipefood` VALUES (121, '鸡蛋', '2个', 1);
INSERT INTO `recipefood` VALUES (122, '火腿', '1根', 1);
INSERT INTO `recipefood` VALUES (123, '中筋面粉', '100g', 34);
INSERT INTO `recipefood` VALUES (124, '牛奶', '55', 34);
INSERT INTO `recipefood` VALUES (125, '酵母', '1', 34);
INSERT INTO `recipefood` VALUES (126, '玉米油', '3', 34);
INSERT INTO `recipefood` VALUES (127, '萝卜糕粉', '250克', 31);
INSERT INTO `recipefood` VALUES (128, '白萝卜丝', '500克', 31);
INSERT INTO `recipefood` VALUES (129, '广味腊肠', '75克', 31);
INSERT INTO `recipefood` VALUES (130, '香菇', '6朵', 31);
INSERT INTO `recipefood` VALUES (131, '盐', '6克', 31);
INSERT INTO `recipefood` VALUES (132, '低筋面粉', '75g', 52);
INSERT INTO `recipefood` VALUES (133, '中筋面粉', '75g', 52);
INSERT INTO `recipefood` VALUES (134, '冰牛奶（换成冰水等重）', '75g', 52);
INSERT INTO `recipefood` VALUES (135, '鲜酵母（或干酵母）', '5g（或干酵母1.5g）', 52);
INSERT INTO `recipefood` VALUES (136, '细砂糖', '15g', 52);
INSERT INTO `recipefood` VALUES (137, '白芸豆', '250g', 60);
INSERT INTO `recipefood` VALUES (138, '中筋面粉', '60g', 60);
INSERT INTO `recipefood` VALUES (139, '糖', '25g', 60);
INSERT INTO `recipefood` VALUES (140, '黄油', '10g+15g', 60);
INSERT INTO `recipefood` VALUES (141, '高筋面粉', '250g', 54);
INSERT INTO `recipefood` VALUES (142, '有盐黄油', '38g', 54);
INSERT INTO `recipefood` VALUES (143, '细砂糖', '30g', 54);
INSERT INTO `recipefood` VALUES (144, '冰牛奶', '165g', 54);
INSERT INTO `recipefood` VALUES (145, '中筋面粉', '150g', 55);
INSERT INTO `recipefood` VALUES (146, '冰牛奶', '82g', 55);
INSERT INTO `recipefood` VALUES (147, '干酵母', '1.5', 55);
INSERT INTO `recipefood` VALUES (148, '香菇', '12个', 48);
INSERT INTO `recipefood` VALUES (149, '大蒜', '5根', 48);
INSERT INTO `recipefood` VALUES (150, '小米椒', '1勺', 48);
INSERT INTO `recipefood` VALUES (151, '生抽', '少许', 48);
INSERT INTO `recipefood` VALUES (152, '中筋面粉', '150g', 49);
INSERT INTO `recipefood` VALUES (153, '冰牛奶', '83', 49);
INSERT INTO `recipefood` VALUES (154, '干酵母', '1.5', 49);
INSERT INTO `recipefood` VALUES (155, '玉米油', '5', 49);
INSERT INTO `recipefood` VALUES (156, '中筋面粉', '150g', 35);
INSERT INTO `recipefood` VALUES (157, '牛奶', '83', 35);
INSERT INTO `recipefood` VALUES (158, '酵母', '1.5', 35);
INSERT INTO `recipefood` VALUES (159, '中筋面粉', '200g', 45);
INSERT INTO `recipefood` VALUES (160, '细砂糖', '10g', 45);
INSERT INTO `recipefood` VALUES (161, '冰牛奶', '110g', 45);
INSERT INTO `recipefood` VALUES (162, '玉米油', '2g', 45);
INSERT INTO `recipefood` VALUES (163, '藕', '一节', 36);
INSERT INTO `recipefood` VALUES (164, '鸡蛋', '一个', 36);
INSERT INTO `recipefood` VALUES (165, '面粉', '两份', 36);
INSERT INTO `recipefood` VALUES (166, '淀粉', '一份', 36);
INSERT INTO `recipefood` VALUES (167, '馒头', '一个', 57);
INSERT INTO `recipefood` VALUES (168, '火腿肠', '一根', 57);
INSERT INTO `recipefood` VALUES (169, '鸡蛋', '2个', 57);
INSERT INTO `recipefood` VALUES (170, '面粉', '100克', 50);
INSERT INTO `recipefood` VALUES (171, '胡萝卜', '一根', 50);
INSERT INTO `recipefood` VALUES (172, '清水', '适量', 50);
INSERT INTO `recipefood` VALUES (173, '香菇', '六朵', 32);
INSERT INTO `recipefood` VALUES (174, '粉条', '一小把', 32);
INSERT INTO `recipefood` VALUES (175, '木耳', '一小堆', 32);
INSERT INTO `recipefood` VALUES (176, '胡萝卜', '半根', 32);
INSERT INTO `recipefood` VALUES (177, '小葱', '一根半', 32);
INSERT INTO `recipefood` VALUES (178, '虾皮', '一小把', 32);
INSERT INTO `recipefood` VALUES (179, '蚝油', '一坨', 32);
INSERT INTO `recipefood` VALUES (180, '西葫芦', '1个', 44);
INSERT INTO `recipefood` VALUES (181, '鸡蛋', '1个', 44);
INSERT INTO `recipefood` VALUES (182, '面粉', '100克', 44);
INSERT INTO `recipefood` VALUES (183, '茄子', '2个', 47);
INSERT INTO `recipefood` VALUES (184, '五花肉馅', '适量', 47);
INSERT INTO `recipefood` VALUES (185, '郫县豆瓣酱', '1勺', 47);
INSERT INTO `recipefood` VALUES (186, '蚝油', '1勺', 47);
INSERT INTO `recipefood` VALUES (187, '味极鲜', '1勺', 47);
INSERT INTO `recipefood` VALUES (188, '老抽', '半勺', 47);
INSERT INTO `recipefood` VALUES (189, '鸡蛋（65g一个）', '3个', 46);
INSERT INTO `recipefood` VALUES (190, '低筋面粉', '70g', 46);
INSERT INTO `recipefood` VALUES (191, '牛奶', '48g', 46);
INSERT INTO `recipefood` VALUES (192, '玉米油', '30g', 46);
INSERT INTO `recipefood` VALUES (193, '肉松', '35g', 46);
INSERT INTO `recipefood` VALUES (194, '盐', '3g', 46);
INSERT INTO `recipefood` VALUES (195, '手枪腿', '6个', 39);
INSERT INTO `recipefood` VALUES (196, '鸡翅', '10个', 39);
INSERT INTO `recipefood` VALUES (197, '红洋葱', '1个', 39);
INSERT INTO `recipefood` VALUES (198, '绿尖椒', '5个', 39);
INSERT INTO `recipefood` VALUES (199, '鲜香菇', '20朵', 39);
INSERT INTO `recipefood` VALUES (200, '芹菜', '1颗', 39);
INSERT INTO `recipefood` VALUES (201, '干辣椒', '16个', 39);
INSERT INTO `recipefood` VALUES (202, '大葱', '1根', 39);
INSERT INTO `recipefood` VALUES (203, '姜', '1块', 39);
INSERT INTO `recipefood` VALUES (204, '大蒜', '5瓣', 39);
INSERT INTO `recipefood` VALUES (205, '五花肉', '100克', 33);
INSERT INTO `recipefood` VALUES (206, '辣椒', '5个', 33);
INSERT INTO `recipefood` VALUES (207, '毛豆', '150克', 33);
INSERT INTO `recipefood` VALUES (208, '低筋面粉', '95克', 56);
INSERT INTO `recipefood` VALUES (209, '黄油', '40克', 56);
INSERT INTO `recipefood` VALUES (210, '鸡蛋（全蛋液）', '25克', 56);
INSERT INTO `recipefood` VALUES (211, '奶粉', '8克', 56);
INSERT INTO `recipefood` VALUES (212, '红豆', '80g', 59);
INSERT INTO `recipefood` VALUES (213, '黑白淡奶', '100g', 59);
INSERT INTO `recipefood` VALUES (214, '椰浆', '200ml', 59);
INSERT INTO `recipefood` VALUES (215, '虾仁', '适量', 58);
INSERT INTO `recipefood` VALUES (216, '鸡蛋', '3个', 58);
INSERT INTO `recipefood` VALUES (217, '香葱', '2根', 58);
INSERT INTO `recipefood` VALUES (218, '玉米油', '适量', 58);
INSERT INTO `recipefood` VALUES (219, '高筋面粉', '300g', 42);
INSERT INTO `recipefood` VALUES (220, '冰牛奶', '160g', 42);
INSERT INTO `recipefood` VALUES (221, '淡奶油', '65g', 42);
INSERT INTO `recipefood` VALUES (222, '细砂糖', '20g', 42);
INSERT INTO `recipefood` VALUES (223, '黄油', '20g', 42);
INSERT INTO `recipefood` VALUES (224, '盐', '3g', 42);
INSERT INTO `recipefood` VALUES (225, '酸奶', '10克', 38);
INSERT INTO `recipefood` VALUES (226, '自制炼乳', '20克', 38);
INSERT INTO `recipefood` VALUES (227, '柠檬', '3个（大概350克）', 40);
INSERT INTO `recipefood` VALUES (228, '冰糖', '600克', 40);
INSERT INTO `recipefood` VALUES (229, '西红柿', '一个', 37);
INSERT INTO `recipefood` VALUES (230, '青椒', '半个', 37);
INSERT INTO `recipefood` VALUES (231, '洋葱', '两层', 37);
INSERT INTO `recipefood` VALUES (232, '蒜', '两瓣', 37);
INSERT INTO `recipefood` VALUES (233, '熟鸡肉', '一堆', 37);
INSERT INTO `recipefood` VALUES (234, '甜玉米', '一把', 37);
INSERT INTO `recipefood` VALUES (235, '泡发腐竹', '300克', 41);
INSERT INTO `recipefood` VALUES (236, '青、红尖椒', '各一根', 41);
INSERT INTO `recipefood` VALUES (237, '蒜苗', '1棵', 41);
INSERT INTO `recipefood` VALUES (238, '郫县豆瓣酱', '1勺', 41);
INSERT INTO `recipefood` VALUES (239, '盐', '1克', 41);
INSERT INTO `recipefood` VALUES (240, '金龙鱼外婆乡小榨菜籽油', '适量', 53);
INSERT INTO `recipefood` VALUES (241, '鲜香菇', '6朵', 53);
INSERT INTO `recipefood` VALUES (242, '毛豆仁', '150克', 53);
INSERT INTO `recipefood` VALUES (243, '红尖椒', '1个', 53);
INSERT INTO `recipefood` VALUES (244, '牛奶', '30g', 51);
INSERT INTO `recipefood` VALUES (245, '法芙娜黑巧', '25g', 51);
INSERT INTO `recipefood` VALUES (246, '糖粉', '15g', 51);
INSERT INTO `recipefood` VALUES (247, '中筋面粉', '120g', 43);
INSERT INTO `recipefood` VALUES (248, '冰牛奶', '68', 43);
INSERT INTO `recipefood` VALUES (249, '酵母', '1.2', 43);
INSERT INTO `recipefood` VALUES (250, '玉米油', '3', 43);
INSERT INTO `recipefood` VALUES (251, '鲜香菇', '6只', 62);
INSERT INTO `recipefood` VALUES (252, '肉末', '100克', 62);
INSERT INTO `recipefood` VALUES (253, '玉米粒', '15克', 62);
INSERT INTO `recipefood` VALUES (254, '豌豆', '15克', 62);
INSERT INTO `recipefood` VALUES (255, '红椒', '10克', 62);
INSERT INTO `recipefood` VALUES (256, '枸杞', '6粒', 62);
INSERT INTO `recipefood` VALUES (257, '姜', '2片', 62);
INSERT INTO `recipefood` VALUES (258, '鸡爪', '500克', 61);
INSERT INTO `recipefood` VALUES (259, '陈皮', '2片', 61);
INSERT INTO `recipefood` VALUES (260, '沙姜', '1个', 61);
INSERT INTO `recipefood` VALUES (261, '八角', '3片', 61);
INSERT INTO `recipefood` VALUES (262, '姜', '20克', 61);
INSERT INTO `recipefood` VALUES (263, '豆豉', '5克', 61);
INSERT INTO `recipefood` VALUES (264, '客家豆腐', '10块', 64);
INSERT INTO `recipefood` VALUES (265, '猪肉', '150g', 64);
INSERT INTO `recipefood` VALUES (266, '胡萝卜', '20g', 64);
INSERT INTO `recipefood` VALUES (267, '盐', '2g', 64);
INSERT INTO `recipefood` VALUES (268, '香菇', '10朵', 65);
INSERT INTO `recipefood` VALUES (269, '猪肉末', '100g', 65);
INSERT INTO `recipefood` VALUES (270, '黄酒（猪肉末）', '2g', 65);
INSERT INTO `recipefood` VALUES (271, '鲜味汁（猪肉末）', '2g', 65);
INSERT INTO `recipefood` VALUES (272, '盐（猪肉末）', '2g', 65);
INSERT INTO `recipefood` VALUES (273, '葱花（猪肉末）', '5g', 65);
INSERT INTO `recipefood` VALUES (274, '茄子', '四根', 87);
INSERT INTO `recipefood` VALUES (275, '鸡蛋', '1个', 87);
INSERT INTO `recipefood` VALUES (276, '面粉', '200g', 87);
INSERT INTO `recipefood` VALUES (277, '鲍鱼', '3个', 90);
INSERT INTO `recipefood` VALUES (278, '芹菜', '2根', 90);
INSERT INTO `recipefood` VALUES (279, '小米椒', '1个', 90);
INSERT INTO `recipefood` VALUES (280, '豆腐', '一块', 84);
INSERT INTO `recipefood` VALUES (281, '姜片', '5片', 84);
INSERT INTO `recipefood` VALUES (282, '八角', '一个', 84);
INSERT INTO `recipefood` VALUES (283, '啤酒', '一罐', 84);
INSERT INTO `recipefood` VALUES (284, '光鸡', '1只（1.5斤左右）', 86);
INSERT INTO `recipefood` VALUES (285, '生姜', '几片', 86);
INSERT INTO `recipefood` VALUES (286, '鸡脯肉', '1块', 73);
INSERT INTO `recipefood` VALUES (287, '豆皮', '1张', 73);
INSERT INTO `recipefood` VALUES (288, '酱油', '适量一点', 73);
INSERT INTO `recipefood` VALUES (289, '盐', '适量', 73);
INSERT INTO `recipefood` VALUES (290, '鸡精', '适量', 73);
INSERT INTO `recipefood` VALUES (291, '黄油', '40g', 78);
INSERT INTO `recipefood` VALUES (292, '低筋面粉', '40g', 78);
INSERT INTO `recipefood` VALUES (293, '蛋黄', '1个', 78);
INSERT INTO `recipefood` VALUES (294, '南瓜', '400g', 88);
INSERT INTO `recipefood` VALUES (295, '蜂蜜', '4勺', 88);
INSERT INTO `recipefood` VALUES (296, '糖', '4勺', 88);
INSERT INTO `recipefood` VALUES (297, '水豆腐', '600克', 81);
INSERT INTO `recipefood` VALUES (298, '猪肉', '180克', 81);
INSERT INTO `recipefood` VALUES (299, '油', '1大勺', 81);
INSERT INTO `recipefood` VALUES (300, '盐', '3克', 81);
INSERT INTO `recipefood` VALUES (301, '红葱头', '1个', 81);
INSERT INTO `recipefood` VALUES (302, '生姜', '1小块', 81);
INSERT INTO `recipefood` VALUES (303, '胡椒粉', '1/4茶匙', 81);
INSERT INTO `recipefood` VALUES (304, '糯米粉', '200g', 67);
INSERT INTO `recipefood` VALUES (305, '面粉', '20g', 67);
INSERT INTO `recipefood` VALUES (306, '泡打粉', '2g', 67);
INSERT INTO `recipefood` VALUES (307, '水', '150g', 67);
INSERT INTO `recipefood` VALUES (308, '大米', '600g', 70);
INSERT INTO `recipefood` VALUES (309, '广式腊肠', '125g', 70);
INSERT INTO `recipefood` VALUES (310, '豆角', '120g', 70);
INSERT INTO `recipefood` VALUES (311, '胡萝卜', '100g', 70);
INSERT INTO `recipefood` VALUES (312, '玉米粒', '100g', 70);
INSERT INTO `recipefood` VALUES (313, '鹌鹑蛋', '350克', 72);
INSERT INTO `recipefood` VALUES (314, '老抽', '5个', 72);
INSERT INTO `recipefood` VALUES (315, '干辣椒', '一块', 72);
INSERT INTO `recipefood` VALUES (316, '生姜', '三个', 72);
INSERT INTO `recipefood` VALUES (317, '莲藕', '1个', 74);
INSERT INTO `recipefood` VALUES (318, '生抽', '1勺', 74);
INSERT INTO `recipefood` VALUES (319, '半肥瘦猪肉', '150克', 75);
INSERT INTO `recipefood` VALUES (320, '秋葵', '200克', 75);
INSERT INTO `recipefood` VALUES (321, '盐', '适量', 75);
INSERT INTO `recipefood` VALUES (322, '花生油', '适量', 75);
INSERT INTO `recipefood` VALUES (323, '鸭子', '4至5斤的母鸭最好', 82);
INSERT INTO `recipefood` VALUES (324, '茶油', '适量', 82);
INSERT INTO `recipefood` VALUES (325, '生姜', '120g', 82);
INSERT INTO `recipefood` VALUES (326, '草鸡', '1只', 77);
INSERT INTO `recipefood` VALUES (327, '小葱', '2棵', 77);
INSERT INTO `recipefood` VALUES (328, '姜', '小半只', 77);
INSERT INTO `recipefood` VALUES (329, '五花肉', '400g', 83);
INSERT INTO `recipefood` VALUES (330, '八角', '2个', 83);
INSERT INTO `recipefood` VALUES (331, '蒜头', '4瓣', 83);
INSERT INTO `recipefood` VALUES (332, '姜', '1块', 83);
INSERT INTO `recipefood` VALUES (333, '红曲粉', '1g', 83);
INSERT INTO `recipefood` VALUES (334, '盐', '1勺', 83);
INSERT INTO `recipefood` VALUES (335, '大辣椒', '8个', 85);
INSERT INTO `recipefood` VALUES (336, '五花肉', '300克', 85);
INSERT INTO `recipefood` VALUES (337, '葱', '适量', 85);
INSERT INTO `recipefood` VALUES (338, '生粉', '适量', 85);
INSERT INTO `recipefood` VALUES (339, '挪威银鳕鱼', '四块', 79);
INSERT INTO `recipefood` VALUES (340, '姜', '一块', 79);
INSERT INTO `recipefood` VALUES (341, '葱', '一根', 79);
INSERT INTO `recipefood` VALUES (342, '苦瓜', '1根', 63);
INSERT INTO `recipefood` VALUES (343, '肉馅', '200克', 63);
INSERT INTO `recipefood` VALUES (344, '葱', '2克', 63);
INSERT INTO `recipefood` VALUES (345, '姜', '2片', 63);
INSERT INTO `recipefood` VALUES (346, '盐', '3克', 63);
INSERT INTO `recipefood` VALUES (347, '茄子', '1根', 66);
INSERT INTO `recipefood` VALUES (348, '肉末', '50克', 66);
INSERT INTO `recipefood` VALUES (349, '生姜', '1片', 66);
INSERT INTO `recipefood` VALUES (350, '大蒜', '1瓣', 66);
INSERT INTO `recipefood` VALUES (351, '小葱', '1根', 66);
INSERT INTO `recipefood` VALUES (352, '酱油', '1汤匙', 66);
INSERT INTO `recipefood` VALUES (353, '嫩豆腐', '1块', 80);
INSERT INTO `recipefood` VALUES (354, '梅花肉', '100g', 80);
INSERT INTO `recipefood` VALUES (355, '口蘑', '1个', 80);
INSERT INTO `recipefood` VALUES (356, '生抽', '1勺', 80);
INSERT INTO `recipefood` VALUES (357, '耗油', '1勺', 80);
INSERT INTO `recipefood` VALUES (358, '白胡椒', '少许', 80);
INSERT INTO `recipefood` VALUES (359, '苦瓜', '1个', 76);
INSERT INTO `recipefood` VALUES (360, '猪肉馅', '200g', 76);
INSERT INTO `recipefood` VALUES (361, '圆糯米', '50g', 76);
INSERT INTO `recipefood` VALUES (362, '花生油', '10g', 76);
INSERT INTO `recipefood` VALUES (363, '盐', '适量', 76);
INSERT INTO `recipefood` VALUES (364, '白糖', '适量', 76);
INSERT INTO `recipefood` VALUES (365, '葱蓉', '少许', 76);
INSERT INTO `recipefood` VALUES (366, '有机花菜', '1棵', 68);
INSERT INTO `recipefood` VALUES (367, '番茄', '2个', 68);
INSERT INTO `recipefood` VALUES (368, '河粉', '适量', 89);
INSERT INTO `recipefood` VALUES (369, '肉丝', '适量', 89);
INSERT INTO `recipefood` VALUES (370, '青椒', '适量', 89);
INSERT INTO `recipefood` VALUES (371, '洋葱', '适量', 89);
INSERT INTO `recipefood` VALUES (372, '虫草菇', '适量', 89);
INSERT INTO `recipefood` VALUES (373, '胡萝卜', '适量', 89);
INSERT INTO `recipefood` VALUES (374, '大骨头', '2根', 103);
INSERT INTO `recipefood` VALUES (375, '葱', '2颗', 103);
INSERT INTO `recipefood` VALUES (376, '姜', '1块', 103);
INSERT INTO `recipefood` VALUES (377, '排骨', '500克', 96);
INSERT INTO `recipefood` VALUES (378, '冬瓜', '800克', 96);
INSERT INTO `recipefood` VALUES (379, '玉米', '300克', 96);
INSERT INTO `recipefood` VALUES (380, '猪蹄', '半只', 97);
INSERT INTO `recipefood` VALUES (381, '红枣', '4颗', 97);
INSERT INTO `recipefood` VALUES (382, '淮山', '18克', 97);
INSERT INTO `recipefood` VALUES (383, '黄豆', '1把', 97);
INSERT INTO `recipefood` VALUES (384, '蜜枣', '2颗', 97);
INSERT INTO `recipefood` VALUES (385, '鲫鱼（野生）', '两条', 109);
INSERT INTO `recipefood` VALUES (386, '葱', '2根', 109);
INSERT INTO `recipefood` VALUES (387, '姜', '一块', 109);
INSERT INTO `recipefood` VALUES (388, '银耳', '30g(泡发前)', 101);
INSERT INTO `recipefood` VALUES (389, '莲子', '适量', 101);
INSERT INTO `recipefood` VALUES (390, '红枣', '8～10颗', 101);
INSERT INTO `recipefood` VALUES (391, '冬瓜', '700g', 107);
INSERT INTO `recipefood` VALUES (392, '排骨', '500g', 107);
INSERT INTO `recipefood` VALUES (393, '海带', '100g', 107);
INSERT INTO `recipefood` VALUES (394, '葱段', '10g', 107);
INSERT INTO `recipefood` VALUES (395, '鲫鱼', '2条', 99);
INSERT INTO `recipefood` VALUES (396, '内酯豆腐', '1块', 99);
INSERT INTO `recipefood` VALUES (397, '小葱', '适量', 99);
INSERT INTO `recipefood` VALUES (398, '姜', '一块', 99);
INSERT INTO `recipefood` VALUES (399, '小白菜', '150克', 102);
INSERT INTO `recipefood` VALUES (400, '瘦肉末', '150克', 102);
INSERT INTO `recipefood` VALUES (401, '胡萝卜', '20克', 102);
INSERT INTO `recipefood` VALUES (402, '番茄', '1个', 119);
INSERT INTO `recipefood` VALUES (403, '豆腐', '1块', 119);
INSERT INTO `recipefood` VALUES (404, '金针菇', '1戳', 119);
INSERT INTO `recipefood` VALUES (405, '鱼头', '500克', 118);
INSERT INTO `recipefood` VALUES (406, '香菜', '30克', 118);
INSERT INTO `recipefood` VALUES (407, '嫩豆腐', '150克', 118);
INSERT INTO `recipefood` VALUES (408, '排骨', '500克', 116);
INSERT INTO `recipefood` VALUES (409, '山药', '300克', 116);
INSERT INTO `recipefood` VALUES (410, '胡萝卜', '100克', 116);
INSERT INTO `recipefood` VALUES (411, '猪肚', '600g', 92);
INSERT INTO `recipefood` VALUES (412, '料酒', '适量', 92);
INSERT INTO `recipefood` VALUES (413, '葱段', '适量', 92);
INSERT INTO `recipefood` VALUES (414, '姜片', '适量', 92);
INSERT INTO `recipefood` VALUES (415, '鲫鱼', '两条', 100);
INSERT INTO `recipefood` VALUES (416, '生姜', '三片', 100);
INSERT INTO `recipefood` VALUES (417, '白萝卜', '半个', 100);
INSERT INTO `recipefood` VALUES (418, '藕', '1节', 98);
INSERT INTO `recipefood` VALUES (419, '胡萝卜', '1根', 98);
INSERT INTO `recipefood` VALUES (420, '馄饨皮', '300g', 108);
INSERT INTO `recipefood` VALUES (421, '猪肉', '300g', 108);
INSERT INTO `recipefood` VALUES (422, '乌骨鸡', '1只', 120);
INSERT INTO `recipefood` VALUES (423, '山药', '150克', 120);
INSERT INTO `recipefood` VALUES (424, '枸杞', '10克', 120);
INSERT INTO `recipefood` VALUES (425, '葱', '适量', 120);
INSERT INTO `recipefood` VALUES (426, '整鸡', '一只', 113);
INSERT INTO `recipefood` VALUES (427, '干茶树菇', '一把', 113);
INSERT INTO `recipefood` VALUES (428, '上海青', '一颗', 113);
INSERT INTO `recipefood` VALUES (429, '红枣', '6壳', 113);
INSERT INTO `recipefood` VALUES (430, '枸杞子', '一把', 113);
INSERT INTO `recipefood` VALUES (431, '白萝卜', '500克', 104);
INSERT INTO `recipefood` VALUES (432, '排骨', '500g', 104);
INSERT INTO `recipefood` VALUES (433, '枸杞', '15克', 104);
INSERT INTO `recipefood` VALUES (434, '盐', '5克', 104);
INSERT INTO `recipefood` VALUES (435, '胡萝卜', '1条', 115);
INSERT INTO `recipefood` VALUES (436, '猪筒骨', '700g', 115);
INSERT INTO `recipefood` VALUES (437, '玉米', '2条', 115);
INSERT INTO `recipefood` VALUES (438, '鲫鱼', '1条', 95);
INSERT INTO `recipefood` VALUES (439, '嫩豆腐', '1盒', 95);
INSERT INTO `recipefood` VALUES (440, '香菇', '3个', 95);
INSERT INTO `recipefood` VALUES (441, '盐', '1大勺', 95);
INSERT INTO `recipefood` VALUES (442, '花生油', '1小把', 95);
INSERT INTO `recipefood` VALUES (443, '猪排骨', '适量', 91);
INSERT INTO `recipefood` VALUES (444, '冬瓜', '适量', 91);
INSERT INTO `recipefood` VALUES (445, '香菜', '适量', 91);
INSERT INTO `recipefood` VALUES (446, '盐', '适量', 91);
INSERT INTO `recipefood` VALUES (447, '玉米', '2根', 114);
INSERT INTO `recipefood` VALUES (448, '胡萝卜', '2根', 114);
INSERT INTO `recipefood` VALUES (449, '排骨', '600g', 114);
INSERT INTO `recipefood` VALUES (450, '内酯豆腐', '1盒', 106);
INSERT INTO `recipefood` VALUES (451, '虾仁', '100克', 106);
INSERT INTO `recipefood` VALUES (452, '口蘑', '3个', 106);
INSERT INTO `recipefood` VALUES (453, '西红柿', '1个', 106);
INSERT INTO `recipefood` VALUES (454, '鸡背骨', '4块', 112);
INSERT INTO `recipefood` VALUES (455, '洋葱', '2根', 112);
INSERT INTO `recipefood` VALUES (456, '胡萝卜', '2根', 112);
INSERT INTO `recipefood` VALUES (457, '芹菜', '3瓣', 112);
INSERT INTO `recipefood` VALUES (458, '头水紫菜', '15克', 111);
INSERT INTO `recipefood` VALUES (459, '特级虾皮', '20克', 111);
INSERT INTO `recipefood` VALUES (460, '葱', '1根', 111);
INSERT INTO `recipefood` VALUES (461, '姜', '2克', 111);
INSERT INTO `recipefood` VALUES (462, '清水', '6碗', 111);
INSERT INTO `recipefood` VALUES (463, '年糕', '150克', 117);
INSERT INTO `recipefood` VALUES (464, '猪肉', '80克', 117);
INSERT INTO `recipefood` VALUES (465, '白菜', '200克', 117);
INSERT INTO `recipefood` VALUES (466, '油', '10克', 117);
INSERT INTO `recipefood` VALUES (467, '料酒', '3克', 117);
INSERT INTO `recipefood` VALUES (468, '排骨', '400克', 93);
INSERT INTO `recipefood` VALUES (469, '冬瓜', '300克', 93);
INSERT INTO `recipefood` VALUES (470, '薏米', '20克', 93);
INSERT INTO `recipefood` VALUES (471, '鸡', '1只', 94);
INSERT INTO `recipefood` VALUES (472, '山药', '2根', 94);
INSERT INTO `recipefood` VALUES (473, ' 姜片', '适量', 94);
INSERT INTO `recipefood` VALUES (474, '枸杞', '适量', 94);
INSERT INTO `recipefood` VALUES (475, ' 猪肝', '1小块', 110);
INSERT INTO `recipefood` VALUES (476, ' 番茄', '2个', 110);
INSERT INTO `recipefood` VALUES (477, ' 白玉菇', '1小包', 110);
INSERT INTO `recipefood` VALUES (478, '淀粉', '1勺', 110);

-- ----------------------------
-- Table structure for recipestep
-- ----------------------------
DROP TABLE IF EXISTS `recipestep`;
CREATE TABLE `recipestep`  (
  `recipeStepId` int(11) NOT NULL AUTO_INCREMENT,
  `stepId` int(11) NULL DEFAULT NULL,
  `recipeStepBrief` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `recipeStepImg` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detailsId` int(11) NOT NULL,
  PRIMARY KEY (`recipeStepId`) USING BTREE,
  INDEX `fk_practice_details1_idx`(`detailsId`) USING BTREE,
  CONSTRAINT `fk_practice_details1` FOREIGN KEY (`detailsId`) REFERENCES `recipedetails` (`detailsid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1252 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜谱步骤' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recipestep
-- ----------------------------
INSERT INTO `recipestep` VALUES (13, 1, ' 土豆煮熟压成泥。', 'https://cp1.douguo.com/upload/caiku/1/e/4/200_1e9e670c2ec9e90836e24b08ce0c2dc4.jpg', 14);
INSERT INTO `recipestep` VALUES (14, 2, ' 准备其余食材，胡萝卜、芦笋切丁', 'https://cp1.douguo.com/upload/caiku/f/b/e/200_fb7fa9d529a52775718920b29313f9ee.jpg', 14);
INSERT INTO `recipestep` VALUES (15, 3, ' 胡萝卜、芦笋在开水中焯一下盛出滤干水分', 'https://cp1.douguo.com/upload/caiku/6/2/d/200_6209509adcbfe786c3cca0f9743703dd.jpg', 14);
INSERT INTO `recipestep` VALUES (16, 4, ' 把3种食材放入土豆泥中，放盐、牛奶、生抽、面粉', 'https://cp1.douguo.com/upload/caiku/4/c/1/200_4cba6ef7150c3dba46565a09edd07d21.jpg', 14);
INSERT INTO `recipestep` VALUES (17, 5, ' 揉成团', 'https://cp1.douguo.com/upload/caiku/1/4/b/200_14f07e5a4ae8c07bbde0d5cdabf0603b.jpg', 14);
INSERT INTO `recipestep` VALUES (18, 6, ' 分成几份搓圆压扁', 'https://cp1.douguo.com/upload/caiku/e/4/5/200_e41baaed6998af664e2a14df92ad0565.jpg', 14);
INSERT INTO `recipestep` VALUES (19, 7, ' 平底锅放点油，放入土豆���，小火煎', 'https://cp1.douguo.com/upload/caiku/f/b/7/200_fb69393a014608cf1f0c9b6c16a276d7.jpg', 14);
INSERT INTO `recipestep` VALUES (20, 8, ' 翻面煎到两面金黄', '', 14);
INSERT INTO `recipestep` VALUES (21, 1, ' 香雪挂面准备好', 'https://cp1.douguo.com/upload/caiku/a/e/c/200_ae5473c662de2a74c66517dee69f8cbc.jpg', 22);
INSERT INTO `recipestep` VALUES (22, 2, ' 西红柿和鸡蛋准备好', 'https://cp1.douguo.com/upload/caiku/a/9/6/200_a9ebc6c0d01d141959562e5e672d91f6.jpg', 22);
INSERT INTO `recipestep` VALUES (23, 3, ' 西红柿切小块', 'https://cp1.douguo.com/upload/caiku/d/f/b/200_df7771c76b16563955d74bd8b4ac79bb.jpg', 22);
INSERT INTO `recipestep` VALUES (24, 4, ' 热锅凉油，将切好的蒜片入锅中煸炒出香味', 'https://cp1.douguo.com/upload/caiku/e/2/8/200_e2c0995594a25fe3a1bb957f323df3a8.jpg', 22);
INSERT INTO `recipestep` VALUES (25, 5, ' 将西红柿块入锅中翻炒', 'https://cp1.douguo.com/upload/caiku/6/b/9/200_6b38597130b0b74310911d5f5d5bf9d9.jpg', 22);
INSERT INTO `recipestep` VALUES (26, 6, ' 倒入适量的鸡汤煮开，这时的西红柿皮已经和西红柿脱离了，所以可以用筷子从锅中夹出', 'https://cp1.douguo.com/upload/caiku/d/9/c/200_d9514712807df8ae5ebc63bb2b0c456c.jpg', 22);
INSERT INTO `recipestep` VALUES (27, 7, ' 混合鸡汤煮开后，下入面条，用筷子划散防止粘连，继续大火煮', 'https://cp1.douguo.com/upload/caiku/f/7/a/200_f7e370ecf4c8fa0699f339094a45ce6a.jpg', 22);
INSERT INTO `recipestep` VALUES (28, 8, ' 面条煮到8分熟时，可以撒少许盐', 'https://cp1.douguo.com/upload/caiku/3/d/f/200_3de97032d6336324e294d9f638c0bcbf.jpg', 22);
INSERT INTO `recipestep` VALUES (29, 9, ' 8. 将打散鸡蛋液淋在锅中汤滚开的地方，待蛋花凝固，关火，撒香葱', 'https://cp1.douguo.com/upload/caiku/3/2/b/200_32cbf0a3ec728c32e2d050ae92dd89fb.jpg', 22);
INSERT INTO `recipestep` VALUES (30, 10, ' 香极了', 'https://cp1.douguo.com/upload/caiku/4/e/5/200_4ef5d7be313664d802a2ccc48e1e6e85.jpg', 22);
INSERT INTO `recipestep` VALUES (31, 11, ' 看着就好诱人', 'https://cp1.douguo.com/upload/caiku/8/6/b/200_86507281fbeb63119ee7ca349089996b.jpg', 22);
INSERT INTO `recipestep` VALUES (32, 12, '  一人食的面条，居然可以这么滋润', 'https://cp1.douguo.com/upload/caiku/b/6/1/200_b68297ec97879baba8e0bf8861a1e761.jpg', 22);
INSERT INTO `recipestep` VALUES (33, 1, ' 青椒、洋葱和午餐肉切丁。', 'https://cp1.douguo.com/upload/caiku/6/a/c/200_6a15b71ae2d82642336521aa50c4679c.jpg', 28);
INSERT INTO `recipestep` VALUES (34, 2, ' 锅中倒入少量植物油，加入洋葱、青椒和午餐肉炒软。', 'https://cp1.douguo.com/upload/caiku/8/7/4/200_87883531fb4e2472efb444b8f17e70a4.jpg', 28);
INSERT INTO `recipestep` VALUES (35, 3, ' 鸡蛋加盐和番茄酱打匀。加入炒好的菜拌匀。', 'https://cp1.douguo.com/upload/caiku/4/c/1/200_4c1c22d0dc77aa77b02648d9487c6e91.jpg', 28);
INSERT INTO `recipestep` VALUES (36, 4, ' 找一个平底锅，倒入适量油，烧热，倒入蛋液，转中火，边缘和底部凝固后转小火，盖盖焖到表面的蛋液凝固。', 'https://cp1.douguo.com/upload/caiku/c/9/d/200_c97fd6832a5d166f22b73b843cbcce4d.jpg', 28);
INSERT INTO `recipestep` VALUES (37, 5, ' 成品～', 'https://cp1.douguo.com/upload/caiku/e/7/a/200_e76b37f879a4faf62b7425c213ef600a.jpg', 28);
INSERT INTO `recipestep` VALUES (38, 1, ' 取适量面粉和清水搅拌均匀', 'https://cp1.douguo.com/upload/caiku/6/b/d/200_6b920f25f8217d4a011d8ee1e094397d.jpeg', 5);
INSERT INTO `recipestep` VALUES (39, 2, ' 平底锅加热，刷一层油，倒入面糊，摊平', 'https://cp1.douguo.com/upload/caiku/6/9/0/200_6949e3755b52ce8b019ca013720f88e0.jpeg', 5);
INSERT INTO `recipestep` VALUES (40, 3, ' 在面糊完全凝固后打一个鸡蛋打散刮匀', 'https://cp1.douguo.com/upload/caiku/b/5/5/200_b5641b9c1d5d55003ec32c53c57c3d55.jpeg', 5);
INSERT INTO `recipestep` VALUES (41, 4, ' 最后撒些芝麻和香葱段', 'https://cp1.douguo.com/upload/caiku/0/e/e/200_0e44a317c40c53ffd6adbc4f9769a4de.jpeg', 5);
INSERT INTO `recipestep` VALUES (42, 5, ' 等到芝麻和香葱都粘到鸡蛋液上，把饼翻一面，刷上你喜欢的酱料', 'https://cp1.douguo.com/upload/caiku/6/a/5/200_6aa6ab1243acf0d9e63aa8d3100cf745.jpeg', 5);
INSERT INTO `recipestep` VALUES (43, 6, ' 最后用筷子把饼子卷起来，出锅啦！香酥鸡蛋饼', 'https://cp1.douguo.com/upload/caiku/d/a/a/200_dac11bef32c76142ab8446721e5d352a.jpeg', 5);
INSERT INTO `recipestep` VALUES (44, 1, ' 面粉倒入较大容器，倒入热水，用筷子搅成絮状。', 'https://cp1.douguo.com/upload/caiku/d/8/5/200_d8d44caf3b806d6e5eb129ed723d2475.jpg', 3);
INSERT INTO `recipestep` VALUES (45, 2, ' 倒入冷水和成面团，盖保鲜膜醒30分钟。', 'https://cp1.douguo.com/upload/caiku/3/7/c/200_37c595ba10091bdf51f70a0c8b08c52c.jpg', 3);
INSERT INTO `recipestep` VALUES (46, 3, ' 醒好的面团分成6个小面团，取一个小面团擀成长圆形面饼。', 'https://cp1.douguo.com/upload/caiku/f/d/6/200_fdc0cb98ee66f5fb8c3e7bdb2c403856.jpg', 3);
INSERT INTO `recipestep` VALUES (47, 4, ' 将橄榄油和面粉、椒盐拌匀加入切好的小香葱碎拌成葱花油酥。（油酥材料：橄榄油30克、面粉30克、椒盐2克、香葱12克）', 'https://cp1.douguo.com/upload/caiku/3/2/b/200_3208656ff74b8ad795973c0ac5b5858b.jpg', 3);
INSERT INTO `recipestep` VALUES (48, 5, ' 把油酥平铺在面饼上，一边弄成裙摆状，从另一边卷起。', 'https://cp1.douguo.com/upload/caiku/4/2/a/200_4203954dc1ed5af78d68ffc33ad66d0a.jpg', 3);
INSERT INTO `recipestep` VALUES (49, 6, ' 卷好后捏紧收口，再卷成圆形。', 'https://cp1.douguo.com/upload/caiku/8/c/8/200_8c15cbee1f76c26b00708a016df674c8.jpg', 3);
INSERT INTO `recipestep` VALUES (50, 7, ' 摁扁擀成薄饼。', 'https://cp1.douguo.com/upload/caiku/f/f/e/200_ff9de9dda63cc58a62dc8b65fb42817e.jpg', 3);
INSERT INTO `recipestep` VALUES (51, 8, ' 锅里热油，烙至两金黄即可。', 'https://cp1.douguo.com/upload/caiku/f/1/c/200_f1f9213ac4ecb9bececddc30fd41ae6c.jpg', 3);
INSERT INTO `recipestep` VALUES (52, 1, ' 水烧开画圈的方式倒入面粉中，边倒水边用筷子搅拌均匀成絮状。', 'https://cp1.douguo.com/upload/caiku/2/4/d/200_24ba688f45c55dfdd8751566c1b064ed.jpeg', 30);
INSERT INTO `recipestep` VALUES (53, 2, ' 待面不烫手时，揉成光滑的面团，醒10分钟', 'https://cp1.douguo.com/upload/caiku/e/9/4/200_e943fc4398cc92628e658ba4e356c5f4.jpeg', 30);
INSERT INTO `recipestep` VALUES (54, 3, ' 准备好葱花，猪油，盐', 'https://cp1.douguo.com/upload/caiku/e/b/1/200_eb45e1b83fc5276dd4a2c2a062803ef1.jpeg', 30);
INSERT INTO `recipestep` VALUES (55, 4, ' 这个面团非常软，擀面时可以撒些面粉', 'https://cp1.douguo.com/upload/caiku/8/f/a/200_8ff50f752ba39a9b664b397c6e80444a.jpeg', 30);
INSERT INTO `recipestep` VALUES (56, 5, ' 擀成薄片均匀的抹上猪油，葱花，盐', 'https://cp1.douguo.com/upload/caiku/8/b/d/200_8bbe63017069d4a9f78fdba50e48429d.jpeg', 30);
INSERT INTO `recipestep` VALUES (57, 6, ' 从一边开始卷起', 'https://cp1.douguo.com/upload/caiku/d/6/f/200_d63f2967efd6a3e0f813bd19d0afcf6f.jpeg', 30);
INSERT INTO `recipestep` VALUES (58, 7, ' 分成3份', 'https://cp1.douguo.com/upload/caiku/f/2/b/200_f2e00b532290a41fe04e01b2e9ebba4b.jpeg', 30);
INSERT INTO `recipestep` VALUES (59, 8, ' 每一分，两头捏紧', 'https://cp1.douguo.com/upload/caiku/1/e/f/200_1e420802d7d9e2c09f474ff0f5ff6b9f.jpeg', 30);
INSERT INTO `recipestep` VALUES (60, 9, ' 从一头卷起用手扁', 'https://cp1.douguo.com/upload/caiku/1/1/3/200_11dc64f055e529332a84b358f7c96a03.jpeg', 30);
INSERT INTO `recipestep` VALUES (61, 10, ' 擀成薄饼', 'https://cp1.douguo.com/upload/caiku/0/7/3/200_07e1f5ddac8e33556a49b5a248859c63.jpeg', 30);
INSERT INTO `recipestep` VALUES (62, 11, ' 锅烧热倒油，6，7成热时放入油饼', 'https://cp1.douguo.com/upload/caiku/4/9/d/200_4972d68a0694b166fe73581f5d286e2d.jpeg', 30);
INSERT INTO `recipestep` VALUES (63, 12, ' 全程中小火，烙到焦黄时翻面', 'https://cp1.douguo.com/upload/caiku/2/4/6/200_24fc6243f3cd5fe397fb387cebddce86.jpeg', 30);
INSERT INTO `recipestep` VALUES (64, 13, ' 依次烙好，卷着吃，切块吃都可', 'https://cp1.douguo.com/upload/caiku/d/b/9/200_db7a81bf51a603f7a282ca4f28d74779.jpeg', 30);
INSERT INTO `recipestep` VALUES (65, 1, ' 面粉加入温水先用筷子搅拌。', 'https://cp1.douguo.com/upload/caiku/7/4/c/200_741aa79a0207b5e009604ce5db0758ac.jpeg', 7);
INSERT INTO `recipestep` VALUES (66, 2, ' 下手揉成光滑的面团盖湿布醒面20分钟。面团不宜过硬，根据自己面粉的吸水情况自行调节一下。', 'https://cp1.douguo.com/upload/caiku/d/a/3/200_dac3095d921466f9bb3847c4841b9a43.jpeg', 7);
INSERT INTO `recipestep` VALUES (67, 3, ' 猪绞肉加上葱姜末，料酒，1颗鸡蛋，白胡椒粉，五香粉，生抽，酱油，盐，香油朝一个方向搅上劲儿，多搅一会儿让肉馅出胶。', 'https://cp1.douguo.com/upload/caiku/7/5/7/200_7550629088b36e715ab5e0a942447837.jpeg', 7);
INSERT INTO `recipestep` VALUES (68, 4, ' 肉馅很粘稠出胶以后加上香葱碎（可以不加，我比较喜欢放些香葱很提味儿）', 'https://cp1.douguo.com/upload/caiku/d/d/a/200_dd512aa3f1c844a127e5bbc4705bf09a.jpeg', 7);
INSERT INTO `recipestep` VALUES (69, 5, ' 醒好的面分成4等份，大小也可以随意，不过太小了不好操作。', 'https://cp1.douguo.com/upload/caiku/1/1/7/200_11faefc0f39423665f654189cfcc60b7.jpeg', 7);
INSERT INTO `recipestep` VALUES (70, 6, ' 取一个面团擀成正方形面片，厚度2毫米，方形左右对称切口，切口是边长的三分之一处。每条切口长度也是边长的三分之一。', 'https://cp1.douguo.com/upload/caiku/3/7/d/200_379e5a3cea84e3ed20ab82b49ebb117d.jpeg', 7);
INSERT INTO `recipestep` VALUES (71, 7, ' 用勺子涂抹上肉馅儿，右下角三分之一处不抹，还有四边不要抹的太满容易溢出馅儿。', 'https://cp1.douguo.com/upload/caiku/f/7/6/200_f75962c7c05068745c6bc7c802a26966.jpeg', 7);
INSERT INTO `recipestep` VALUES (72, 8, ' 没抹馅儿的面片向中间折盖住馅料。', 'https://cp1.douguo.com/upload/caiku/d/0/b/200_d0aa1bcc61ab11108b93e3030e47cc5b.jpeg', 7);
INSERT INTO `recipestep` VALUES (73, 9, ' 右边折向中间重叠住，成四方形。', 'https://cp1.douguo.com/upload/caiku/a/3/5/200_a30d8912aa5b14321f52248e90cd3d85.jpeg', 7);
INSERT INTO `recipestep` VALUES (74, 10, ' 方形折上去', 'https://cp1.douguo.com/upload/caiku/8/0/3/200_80bc8561a660a488fa8a061f88711ff3.jpeg', 7);
INSERT INTO `recipestep` VALUES (75, 11, ' 向第一步一样折法，右边折向中间。', 'https://cp1.douguo.com/upload/caiku/2/9/d/200_294cfd86da929c3c93114e9041dbd1ed.jpeg', 7);
INSERT INTO `recipestep` VALUES (76, 12, ' 左边折向中间成方形', 'https://cp1.douguo.com/upload/caiku/0/f/0/200_0f4574c5647be7303f629b4405f64850.jpeg', 7);
INSERT INTO `recipestep` VALUES (77, 13, ' 折上去，把最后一部分按上面的折法折叠好。', 'https://cp1.douguo.com/upload/caiku/3/2/b/200_3258191e65c6892d5f1a7ff268b6421b.jpeg', 7);
INSERT INTO `recipestep` VALUES (78, 14, ' 收口捏一捏，用擀面杖轻轻的擀成1厘米多一点厚度，使劲会把肉馅挤出来，不用擀太薄会把层次擀坏，厚一点才好吃。', 'https://cp1.douguo.com/upload/caiku/0/f/a/200_0f031c89c9e9a5bba1637c1856c3dc2a.jpeg', 7);
INSERT INTO `recipestep` VALUES (79, 15, ' 平底锅或电饼铛抹一层油、把肉饼放进去。', 'https://cp1.douguo.com/upload/caiku/b/f/e/200_bfbbcb39369fb9725beaadb4209432fe.jpeg', 7);
INSERT INTO `recipestep` VALUES (80, 16, ' 一面金黄翻面烙另一面，烙至两面金黄即可。', 'https://cp1.douguo.com/upload/caiku/2/1/4/200_21138470caca8e6cfcdd8d1739672aa4.jpeg', 7);
INSERT INTO `recipestep` VALUES (81, 17, ' 一张饼横竖两刀平均切成4块儿，层次是不是很好？', 'https://cp1.douguo.com/upload/caiku/d/a/3/200_daf07393b677fe9fe0c8cd1c9a5b0483.jpeg', 7);
INSERT INTO `recipestep` VALUES (82, 18, ' 真的很香', 'https://cp1.douguo.com/upload/caiku/6/5/4/200_658289f4eb7f53ff76afe24a82557da4.jpeg', 7);
INSERT INTO `recipestep` VALUES (83, 1, ' 土豆擦丝备用', 'https://cp1.douguo.com/upload/caiku/c/b/6/200_cb66d2b628e2432319720b5ab9a52506.jpg', 9);
INSERT INTO `recipestep` VALUES (84, 2, ' 大葱切末备用', 'https://cp1.douguo.com/upload/caiku/7/0/3/200_7001b73b84548567e748b54c062c42a3.jpg', 9);
INSERT INTO `recipestep` VALUES (85, 3, ' 火腿切丝备用', 'https://cp1.douguo.com/upload/caiku/3/f/d/200_3fe14f8f087eac4e1988505f8c09747d.jpg', 9);
INSERT INTO `recipestep` VALUES (86, 4, ' 将所有土豆丝，大葱末，火腿丝，鸡蛋，{面粉，淀粉}2:1，盐，胡椒粉，鸡粉放入盆中', 'https://cp1.douguo.com/upload/caiku/8/d/e/200_8d19289c6555136ab19f50ddeea76ebe.jpg', 9);
INSERT INTO `recipestep` VALUES (87, 5, ' 加水拌制成面糊', 'https://cp1.douguo.com/upload/caiku/6/5/f/200_6546f13401224a7891a4ac07df6fafff.jpg', 9);
INSERT INTO `recipestep` VALUES (88, 6, ' 电饼铛加热放入少许橄榄油煎制', 'https://cp1.douguo.com/upload/caiku/e/7/d/200_e7cdd17163a085b31adddd6378133e6d.jpg', 9);
INSERT INTO `recipestep` VALUES (89, 7, ' 两面上色即可', 'https://cp1.douguo.com/upload/caiku/8/8/4/200_88fdc96f03c730485ed08c607a14af14.jpg', 9);
INSERT INTO `recipestep` VALUES (90, 8, ' 出锅装盘', 'https://cp1.douguo.com/upload/caiku/d/e/1/200_de72b158c695ae5cd9aae72d7a1a4041.jpg', 9);
INSERT INTO `recipestep` VALUES (91, 1, ' 里脊肉切丝加少许盐，料酒腌制10分钟，煮粥建议选用里脊肉', 'https://cp1.douguo.com/upload/caiku/4/c/e/200_4c6927d26d8a8862d3cf05f3abe119de.jpg', 4);
INSERT INTO `recipestep` VALUES (92, 2, ' 皮蛋切块，买皮蛋选品质好一点的哦', 'https://cp1.douguo.com/upload/caiku/c/a/8/200_ca0c1772532546d80c6e8964ed2bb9b8.jpg', 4);
INSERT INTO `recipestep` VALUES (93, 3, ' 小葱洗净先切等长的段再切成葱花', 'https://cp1.douguo.com/upload/caiku/9/3/4/200_932bf58fdd20a39e0b191f298704dbe4.jpg', 4);
INSERT INTO `recipestep` VALUES (94, 4, ' 大米淘洗后加油盐拌匀静置一会儿，赶时间的大概在5分钟左右，不赶时间的10分钟左右', 'https://cp1.douguo.com/upload/caiku/1/5/4/200_15f3a6a192d40c888eb888983d445ce4.jpg', 4);
INSERT INTO `recipestep` VALUES (95, 5, ' 砂锅加4大杯水烧开，放入淘洗好的米煮粥，期间稍微用勺子搅一搅，以防糊了，煮35分钟', 'https://cp1.douguo.com/upload/caiku/3/d/7/200_3d9ea702ba8feb2e59951a4ea5be5d37.jpg', 4);
INSERT INTO `recipestep` VALUES (96, 6, ' 加入皮蛋、姜丝、肉丝和葱花3分之2的量煮10～15分钟完成～喝时再放3分之1的葱花，会有清香（采用一下果友的意见，皮蛋煮之前最好处理去腥，里脊肉入锅前焯水一下，不过就不用腌制了）（皮蛋处理方法：皮蛋不去壳放加了几滴白醋和盐的沸水中煮一下，捞出冷却后再去壳即可）（在粥上面我还加了鸡胸肉丝点缀）', 'https://cp1.douguo.com/upload/caiku/9/6/d/200_967b54be702176a5f451344bc1ed996d.jpg', 4);
INSERT INTO `recipestep` VALUES (97, 1, ' 寿司醋制作：盐10克、白砂糖50克、白醋100克。将这些搅拌至融合，或放微波炉加热，或隔水蒸至融化。遵循盐糖醋1：5：10的比例。', 'https://cp1.douguo.com/upload/caiku/6/7/b/200_67204263a804a20a5d66e26620ddddfb.jpg', 26);
INSERT INTO `recipestep` VALUES (98, 2, ' 糯米和珍珠大米各一半。先洗净用水泡20分钟后放电饭锅煮熟。', 'https://cp1.douguo.com/upload/caiku/c/1/0/200_c1fc51e821af0a8948848e3a5e761460.jpg', 26);
INSERT INTO `recipestep` VALUES (99, 3, ' 青瓜表皮用小量盐腌一会，去中间的心。红萝卜削皮。', 'https://cp1.douguo.com/upload/caiku/1/e/c/200_1e8ff3a7932cb9c31ae8bbd9220c4ecc.jpg', 26);
INSERT INTO `recipestep` VALUES (100, 4, ' 将青瓜和红萝卜各切成丝。', 'https://cp1.douguo.com/upload/caiku/0/8/4/200_08ac638dc0fce1b84f7bec3cd3494d44.jpg', 26);
INSERT INTO `recipestep` VALUES (101, 5, ' 紫苏叶洗净、火腿肠切成丝。', 'https://cp1.douguo.com/upload/caiku/0/2/3/200_02af100fb42a156da0602ee1db29edc3.jpg', 26);
INSERT INTO `recipestep` VALUES (102, 6, ' 准备适量白芝麻、黑芝麻、海草。', 'https://cp1.douguo.com/upload/caiku/b/8/8/200_b8aa92a52cacf99c0db46ebffadb0c58.jpg', 26);
INSERT INTO `recipestep` VALUES (103, 7, ' 待米饭煮好，放入3小勺寿司醋和米饭一起拌均匀放凉。（自己试味，寿司醋不可太多小量既可）', 'https://cp1.douguo.com/upload/caiku/a/2/3/200_a2c42e9c15b0a81e716bf7a0131690f3.jpg', 26);
INSERT INTO `recipestep` VALUES (104, 8, ' 先做第一种，冰淇淋寿司。将紫菜剪出一小片，变成长方形。', 'https://cp1.douguo.com/upload/caiku/8/1/c/200_81fb35cda4ae119096a7a01ca513c29c.jpg', 26);
INSERT INTO `recipestep` VALUES (105, 9, ' 手上戴一次性手套，铺米饭，按平。别铺太多！再按顺序放紫苏叶、中间放青瓜、火腿、红萝卜、海菜、撒上黑芝麻、白芝麻，', 'https://cp1.douguo.com/upload/caiku/1/5/3/200_15b0e8178032b806737d70b50453cef3.jpg', 26);
INSERT INTO `recipestep` VALUES (106, 10, ' 小心翼翼的卷成冰淇淋形状（锥形）既可！', 'https://cp1.douguo.com/upload/caiku/e/1/a/200_e1f9302bf0102fb1a1dfa5c37bc360ca.jpg', 26);
INSERT INTO `recipestep` VALUES (107, 11, ' 第二种，紫菜正卷寿司。在寿司席上铺一张紫菜，光面朝下粗糙面朝上。', 'https://cp1.douguo.com/upload/caiku/a/a/6/200_aaa19dbd67016208e4fddac63e4a13a6.jpg', 26);
INSERT INTO `recipestep` VALUES (108, 12, ' 将米饭均匀的铺平，从下往上放红萝卜、青瓜、火腿肠、海草、撒上白芝麻、黑芝麻。', 'https://cp1.douguo.com/upload/caiku/4/0/b/200_40aff9c3cc7f470d15e9d0ff847e04db.jpg', 26);
INSERT INTO `recipestep` VALUES (109, 13, ' 寿司席从下往上卷，每卷一圈就要用手均匀力度固定。一边卷一边把席子拉起来。最后成型。', 'https://cp1.douguo.com/upload/caiku/5/b/0/200_5bc3ae0152101f207ceaf72fe9093c00.jpg', 26);
INSERT INTO `recipestep` VALUES (110, 14, ' 第三种是反卷寿司。准备一块保鲜膜，套住寿司席。铺一张紫菜，规整的铺上米饭。一定要将米饭铺平、铺好。可以用手掌轻轻按压。', 'https://cp1.douguo.com/upload/caiku/9/b/c/200_9b2d8503b31e313ccdd7f9319c8869ac.jpg', 26);
INSERT INTO `recipestep` VALUES (111, 15, ' 将铺好米饭的寿司反过来，米饭朝下、紫菜朝上！（铺保鲜膜就是为了不会粘在席子上）', 'https://cp1.douguo.com/upload/caiku/4/e/b/200_4e645b4a16cc172b3a9f42c7e9296b0b.jpg', 26);
INSERT INTO `recipestep` VALUES (112, 16, ' 在紫菜上从下往上摆放好红萝卜、青瓜、火腿、海草。撒上黑芝麻和白芝麻。', 'https://cp1.douguo.com/upload/caiku/3/9/f/200_392b29379d11175be6d94808793d2cff.jpg', 26);
INSERT INTO `recipestep` VALUES (113, 17, ' 靠身边这一头，从下往上卷。一边卷一边将席子和保鲜膜拉出。同时用10个手指轻按固定。', 'https://cp1.douguo.com/upload/caiku/f/9/6/200_f947c0a7bcdab4e22f35e7d71703c936.jpg', 26);
INSERT INTO `recipestep` VALUES (114, 18, ' 放保鲜膜上，在反转寿司上撒一些黑芝麻既可。', 'https://cp1.douguo.com/upload/caiku/0/0/b/200_000c3e631137e24d5650df37752660eb.jpg', 26);
INSERT INTO `recipestep` VALUES (115, 19, ' 切寿司时，准备一把锋利水果刀。沾一点水再切就会切的很好看！', 'https://cp1.douguo.com/upload/caiku/5/3/a/200_53120302accf599a6458b9f1d938b8ba.jpg', 26);
INSERT INTO `recipestep` VALUES (116, 20, ' 把正卷寿司也切好，摆盘', 'https://cp1.douguo.com/upload/caiku/9/d/c/200_9df0184da76506bdd4150c6282c5535c.jpg', 26);
INSERT INTO `recipestep` VALUES (117, 21, ' 切好的正卷和反卷寿司', 'https://cp1.douguo.com/upload/caiku/9/f/f/200_9ffaf71971612beb5a9549121492481f.jpg', 26);
INSERT INTO `recipestep` VALUES (118, 22, ' 这样就做好了：冰淇淋寿司、正卷寿司、反卷寿司。', 'https://cp1.douguo.com/upload/caiku/b/7/6/200_b79a82d5a982182f13b8069d3df5cd26.jpg', 26);
INSERT INTO `recipestep` VALUES (119, 23, ' 做第四种。玉米一根，蒸熟，待凉时用手将玉米粒扣下来。', 'https://cp1.douguo.com/upload/caiku/a/3/e/200_a38ee423e30f795c1eb87c651bfc28de.jpg', 26);
INSERT INTO `recipestep` VALUES (120, 24, ' 加适量沙拉酱，和玉米粒搅拌均匀。', 'https://cp1.douguo.com/upload/caiku/d/6/0/200_d6c71378ef75f5d8de5ec4f626924180.jpg', 26);
INSERT INTO `recipestep` VALUES (121, 25, ' 前面剪下来的紫菜再剪出细条。手沾适量水，捏出一个椭圆形的饭团。准备一片三文鱼，或各式水果。（我用的是红萝卜片，哈哈，伪三文鱼）', 'https://cp1.douguo.com/upload/caiku/f/1/9/200_f126b78d58700ce00ebbd2bbaa7116e9.jpg', 26);
INSERT INTO `recipestep` VALUES (122, 26, ' 红萝卜片放在饭团上面，用紫菜条轻轻附粘起来既可。', 'https://cp1.douguo.com/upload/caiku/d/1/4/200_d1a8ad0492700cc1e075504369dce2e4.jpg', 26);
INSERT INTO `recipestep` VALUES (123, 27, ' 第五种。再捏一小个饭团，放在剪好的小紫菜片上面，卷起来。', 'https://cp1.douguo.com/upload/caiku/4/e/7/200_4ea53e494412512741e52b922e0aa267.jpg', 26);
INSERT INTO `recipestep` VALUES (124, 28, ' 卷好后，在上面放上提前拌好的玉米既可。（好爱这款寿司，这是我去寿司店必点的）', 'https://cp1.douguo.com/upload/caiku/f/5/6/200_f544ca9efcb6ef1d6a4492fa99b56686.jpg', 26);
INSERT INTO `recipestep` VALUES (125, 29, ' 给它俩来个小合影。哈哈。', 'https://cp1.douguo.com/upload/caiku/8/6/c/200_868dfe365046e54ad525b0723609a1cc.jpg', 26);
INSERT INTO `recipestep` VALUES (126, 30, ' 总共做了五种，其实很简单喔。大家赶紧也来上传作品吧！', 'https://cp1.douguo.com/upload/caiku/6/4/4/200_64a2c901cb1243d699e00f456491ee04.jpg', 26);
INSERT INTO `recipestep` VALUES (127, 1, ' 面粉放在碗中，打入鸡蛋，', 'https://cp1.douguo.com/upload/caiku/d/5/7/200_d5b9f9bdbae4740783d9390acb5957c7.jpg', 2);
INSERT INTO `recipestep` VALUES (128, 2, ' 加入水，调成鸡蛋面糊，再加入盐，搅拌均匀', 'https://cp1.douguo.com/upload/caiku/a/d/1/200_ad7552ff9dffd10f7809141cfb685e01.jpg', 2);
INSERT INTO `recipestep` VALUES (129, 3, ' 小葱洗干净切碎，剩下的2个鸡蛋打散备用（也可以直接把鸡蛋打散在饼上）', 'https://cp1.douguo.com/upload/caiku/2/9/2/200_29d02ce862cfe2d3b8e8f3fa4cacc9f2.jpg', 2);
INSERT INTO `recipestep` VALUES (130, 4, ' 平底锅倒入少许油，烧热后转小火', 'https://cp1.douguo.com/upload/caiku/e/5/5/200_e5020faa61c95a2c3e3e7b890ccdf6e5.jpg', 2);
INSERT INTO `recipestep` VALUES (131, 5, ' 倒入鸡蛋面糊，等面糊表面凝固', 'https://cp1.douguo.com/upload/caiku/d/b/9/200_dbd0c3a36d0af3f0aa0fda90253a4f49.jpg', 2);
INSERT INTO `recipestep` VALUES (132, 6, ' 倒入适量打散的鸡蛋液（可直接把鸡蛋打在上面，用勺子摊均匀）', 'https://cp1.douguo.com/upload/caiku/7/e/f/200_7ede8f88ec905435e182ff06df5b155f.jpg', 2);
INSERT INTO `recipestep` VALUES (133, 7, ' 表面撒香葱碎，鸡蛋液凝固后翻面', 'https://cp1.douguo.com/upload/caiku/8/6/d/200_86006cfc08315d026b6a7329871ba16d.jpg', 2);
INSERT INTO `recipestep` VALUES (134, 8, ' 停一会卷起，关火，切断（也可刷上自己喜欢的酱，加入喜欢的蔬菜，肉类）', 'https://cp1.douguo.com/upload/caiku/a/5/0/200_a538b8d01501b3b0d432fc5063537110.jpg', 2);
INSERT INTO `recipestep` VALUES (135, 9, ' 美味', 'https://cp1.douguo.com/upload/caiku/2/e/1/200_2e0a39aaa41fba504a759b5f4da6a711.jpg', 2);
INSERT INTO `recipestep` VALUES (136, 1, ' 胡萝卜洗净切细段，沸水焯煮1分钟；黄瓜去皮，切成细长条，长度和紫菜的宽度一致；三明治切截面为1cm²左右的细长条；鸡蛋放入半茶匙盐打散，摊厚蛋皮，放凉切1cm宽的长丝；辣白菜切窄段备用；', 'https://cp1.douguo.com/upload/caiku/c/6/2/200_c67528ccb70ba3bc99488a40307314a2.jpg', 21);
INSERT INTO `recipestep` VALUES (137, 2, ' 将煮好的米饭盛出，放凉至不烫手的温度，放入食盐、寿司醋和香油拌匀；', 'https://cp1.douguo.com/upload/caiku/f/f/a/200_ff8d33000ca58534b6d4dfc45f01350a.jpg', 21);
INSERT INTO `recipestep` VALUES (138, 3, ' 寿司帘洗净擦干，放在干净的砧板上，将紫菜放在竹帘上；', 'https://cp1.douguo.com/upload/caiku/7/a/9/200_7a25cdd2abcf1b4ff120ab42c837b1c9.jpg', 21);
INSERT INTO `recipestep` VALUES (139, 4, ' 带上一次性手套，抓取米饭，均匀的平铺在紫菜上，铺满；不要铺的太厚，约0.5cm的厚度就可以；', 'https://cp1.douguo.com/upload/caiku/0/1/4/200_01010cf7bc61e82da66a5bbd78bcd234.jpg', 21);
INSERT INTO `recipestep` VALUES (140, 5, ' 把食材沿着紫菜下端依次往上放；', 'https://cp1.douguo.com/upload/caiku/0/b/6/200_0bb7e268cc33c27f74949bf3bc5de866.jpg', 21);
INSERT INTO `recipestep` VALUES (141, 6, ' 开始从下往上卷紫菜，卷的时候注意不要把帘子卷到饭里，要一边卷，一边往上拉竹帘。卷好后用力握几下，固定形状，防止切的时候变形散掉； （卷的过程，没有手拍照，大家操作一下就知道了）', 'https://cp1.douguo.com/upload/caiku/4/4/f/200_440090b3c8d784de6ba1cfe8b2f4802f.jpg', 21);
INSERT INTO `recipestep` VALUES (142, 7, ' 切刀切之前磨一下，再在两边抹上食用油，然后垂直切下，寿司厚度约1.5cm左右即可。', 'https://cp1.douguo.com/upload/caiku/7/c/6/200_7cf3b12c77d1d4147c979d7fdb5fc126.jpg', 21);
INSERT INTO `recipestep` VALUES (143, 1, ' 准备食材。', 'https://cp1.douguo.com/upload/caiku/b/1/2/200_b126ac28d177c3b08723fac5eb047d82.jpg', 10);
INSERT INTO `recipestep` VALUES (144, 2, ' 将茄子切成约七八厘米的长条、蒜切末、小红辣椒切段、豆瓣酱剁碎备用。', 'https://cp1.douguo.com/upload/caiku/f/3/c/200_f3a9219d65886192c8e5e8d44a7c736c.jpg', 10);
INSERT INTO `recipestep` VALUES (145, 3, ' 往茄条里撒少许盐，然后拌匀。让其腌制10分钟左右。', 'https://cp1.douguo.com/upload/caiku/c/3/6/200_c392542da7190f1d92a11a834fd375f6.jpg', 10);
INSERT INTO `recipestep` VALUES (146, 4, ' 茄子腌好后，将盆里多余的水去掉。然后撒适量的干玉米淀粉拌匀备用。', 'https://cp1.douguo.com/upload/caiku/4/a/e/200_4abdf9a0036bd045f478f734f295db2e.jpg', 10);
INSERT INTO `recipestep` VALUES (147, 5, ' 取一只干净的小碗，然后依次放入玉米淀粉、糖、鸡精、生抽、醋，再倒入半碗清水，调成碗汁备用。', 'https://cp1.douguo.com/upload/caiku/0/f/2/200_0f8b7fc7404b792c779be4e18a151732.jpg', 10);
INSERT INTO `recipestep` VALUES (148, 6, ' 锅中加入适量的油，油热后将茄条依次放入锅中煎炸至表面微黄后盛出备用。', 'https://cp1.douguo.com/upload/caiku/8/a/d/200_8ae8494bb919654ae75e8aa695b676ed.jpg', 10);
INSERT INTO `recipestep` VALUES (149, 7, ' 另换一只锅，锅中加入少许底油，然后将肉馅倒入锅中煸炒。', 'https://cp1.douguo.com/upload/caiku/9/9/2/200_99490beb2dac7d33c6dec78e8b1ef1b2.jpg', 10);
INSERT INTO `recipestep` VALUES (150, 8, ' 煸炒至肉馅变白成熟，加入豆瓣酱、小红辣椒煸炒匀均。', 'https://cp1.douguo.com/upload/caiku/c/b/7/200_cb5e01646a339c8bcd05fe2983ec56a7.jpg', 10);
INSERT INTO `recipestep` VALUES (151, 9, ' 加入蒜末煸炒出香味。', 'https://cp1.douguo.com/upload/caiku/8/3/b/200_837ac8069874069b41ebfea17280dc0b.jpg', 10);
INSERT INTO `recipestep` VALUES (152, 10, ' 将茄条放入锅中煸炒。', 'https://cp1.douguo.com/upload/caiku/b/c/a/200_bc9b26f7409acc174ced73275dde048a.jpg', 10);
INSERT INTO `recipestep` VALUES (153, 11, ' 将碗汁倒入锅中，大火烧开后翻炒匀均。然后关火淋少许香油即可装盘。', 'https://cp1.douguo.com/upload/caiku/f/7/c/200_f7413ebd0251cd9e844ccb02553e553c.jpg', 10);
INSERT INTO `recipestep` VALUES (154, 1, ' 面粉和酵母稍微混合，加入水揉匀。发酵至两点五倍大小。', 'https://cp1.douguo.com/upload/caiku/9/f/7/200_9f629c9e9aa269fe6c3811e9fc9ad177.jpg', 11);
INSERT INTO `recipestep` VALUES (155, 2, ' 黑木耳提前泡发，剁碎成丁。', 'https://cp1.douguo.com/upload/caiku/b/c/d/200_bc802a88537375ab6d939a8ba2045a4d.jpg', 11);
INSERT INTO `recipestep` VALUES (156, 3, ' 胡萝卜切丁。', 'https://cp1.douguo.com/upload/caiku/2/6/4/200_26f8134ca499411a06b0cef67acfa334.jpg', 11);
INSERT INTO `recipestep` VALUES (157, 4, ' 放一点油，提前略炒炒。胡萝卜里面很多营养是脂溶性的，所以油炒炒比较容易释放出来，而且软烂一点孩子也比较好消化。', 'https://cp1.douguo.com/upload/caiku/9/c/2/200_9cbf810b5cb5ccb68581b52bbd9d9072.jpg', 11);
INSERT INTO `recipestep` VALUES (158, 5, ' 肉剁泥，可选择肥三���七的，纯瘦肉口感比较柴。', 'https://cp1.douguo.com/upload/caiku/3/7/8/200_377315786be480faab987c7f4ddca138.jpg', 11);
INSERT INTO `recipestep` VALUES (159, 6, ' 加入胡萝卜和木耳丁。', 'https://cp1.douguo.com/upload/caiku/0/0/1/200_0068156cc71973dfbe161161372f8b71.jpg', 11);
INSERT INTO `recipestep` VALUES (160, 7, ' 接着调味。放入淀粉，蚝油，生抽和胡椒粉，再滴入小半勺香油。', 'https://cp1.douguo.com/upload/caiku/9/c/d/200_9c1cc23c7adc6ba8c968570ada0fd80d.jpg', 11);
INSERT INTO `recipestep` VALUES (161, 8, ' 一小把葱花搅拌均匀即可。', 'https://cp1.douguo.com/upload/caiku/e/e/8/200_eebd9a8c5a12e8be900cc59b7690b3b8.jpg', 11);
INSERT INTO `recipestep` VALUES (162, 9, ' 这时候面团基本发酵好了，撕开能看到蜂窝组织。夏天发面很快了，三四十分钟足够了。', 'https://cp1.douguo.com/upload/caiku/9/8/7/200_983336222a4932e853597dc935341337.jpg', 11);
INSERT INTO `recipestep` VALUES (163, 10, ' 倒在面板上重新排气揉匀。', 'https://cp1.douguo.com/upload/caiku/c/7/2/200_c799716aeac51c3464808d9d1c7ac4b2.jpg', 11);
INSERT INTO `recipestep` VALUES (164, 11, ' 切成小挤子，团圆。', 'https://cp1.douguo.com/upload/caiku/7/f/2/200_7f3a7c77390fb6516a444165d5cd3ab2.jpg', 11);
INSERT INTO `recipestep` VALUES (165, 12, ' 擀扁一些。', 'https://cp1.douguo.com/upload/caiku/3/2/2/200_321027dcca6a898322bbdcfa4f3dcde2.jpg', 11);
INSERT INTO `recipestep` VALUES (166, 13, ' 放入一份肉馅。', 'https://cp1.douguo.com/upload/caiku/4/b/7/200_4bfe8df95283acddc3bc38690abec467.jpg', 11);
INSERT INTO `recipestep` VALUES (167, 14, ' 以包包子的手法，捏褶子。', 'https://cp1.douguo.com/upload/caiku/4/a/1/200_4afb0a61b9f2effcd90cfe3d0251c6e1.jpg', 11);
INSERT INTO `recipestep` VALUES (168, 15, ' 收口捏紧。', 'https://cp1.douguo.com/upload/caiku/c/d/1/200_cd083a1972cf0c46df8dedf5dfa82d61.jpg', 11);
INSERT INTO `recipestep` VALUES (169, 16, ' 收口朝下。', 'https://cp1.douguo.com/upload/caiku/8/a/d/200_8a965b7da66a268772f4a709c4ed591d.jpg', 11);
INSERT INTO `recipestep` VALUES (170, 17, ' 略微按扁些。', 'https://cp1.douguo.com/upload/caiku/7/4/4/200_749e2dc2fb53d0b6d31c958a01311e24.jpg', 11);
INSERT INTO `recipestep` VALUES (171, 18, ' 锅里放适量油，煎至两面金黄。', 'https://cp1.douguo.com/upload/caiku/3/2/b/200_320b2d3fc7771c12022b8caef65639db.jpg', 11);
INSERT INTO `recipestep` VALUES (172, 19, ' 再加小半碗水，继续水煎。一来有肉馅，这样能保证肉馅全熟了，二来饼饼会比较柔软，宝宝更容易嚼烂。', 'https://cp1.douguo.com/upload/caiku/d/b/7/200_dbcc9b0c1bbd7d77872c21f12954a4e7.jpg', 11);
INSERT INTO `recipestep` VALUES (173, 20, ' 听到吱吱拉拉的声音，水收干就是好了。', 'https://cp1.douguo.com/upload/caiku/1/0/d/200_1079114dece9a4fe844227740258cd5d.jpg', 11);
INSERT INTO `recipestep` VALUES (174, 1, ' 食材洗净，番茄、洋葱、培根切成小丁', 'https://cp1.douguo.com/upload/caiku/4/d/3/200_4d861b7382c5a0f8a9b59fce5bfcf4e3.jpeg', 27);
INSERT INTO `recipestep` VALUES (175, 2, ' 炒锅放油，依次下洋葱、西红柿、培根炒烂软', 'https://cp1.douguo.com/upload/caiku/6/c/4/200_6c6f5f7072d4dd2547551b391405b144.jpeg', 27);
INSERT INTO `recipestep` VALUES (176, 3, ' 下隔夜米饭，放盐和味精，炒散，乘出备用', 'https://cp1.douguo.com/upload/caiku/f/3/9/200_f3676a5d2d94d042e753ff37af1925c9.jpeg', 27);
INSERT INTO `recipestep` VALUES (177, 4, ' 另起一锅烧开水，放一勺盐，倒入西兰花，大火煮2分钟，捞出沥干备用', 'https://cp1.douguo.com/upload/caiku/6/9/6/200_69c08d209c070dad2e90a1f5df90cf76.jpeg', 27);
INSERT INTO `recipestep` VALUES (178, 5, ' 鸡蛋加少量盐打散', 'https://cp1.douguo.com/upload/caiku/7/c/a/200_7c8b6262772ab316f45c2e5d7a3c86ba.jpg', 27);
INSERT INTO `recipestep` VALUES (179, 6, ' 另起一个平底不粘锅，小火，刷薄油', 'https://cp1.douguo.com/upload/caiku/6/d/e/200_6de8a6c692d46c0587f883e35b325fce.jpeg', 27);
INSERT INTO `recipestep` VALUES (180, 7, ' 轻轻倒入打散的鸡蛋液，尽量均匀平铺锅底，待蛋皮成型', 'https://cp1.douguo.com/upload/caiku/4/c/c/200_4ccc471d660e7928b515b1425bb4f2ac.jpeg', 27);
INSERT INTO `recipestep` VALUES (181, 8, ' 将炒好的米饭放在蛋皮一侧', 'https://cp1.douguo.com/upload/caiku/4/4/e/200_44954a5efd755f681ec07a55c301f7be.jpeg', 27);
INSERT INTO `recipestep` VALUES (182, 9, ' 翻起另一侧蛋皮，盖好', 'https://cp1.douguo.com/upload/caiku/2/e/3/200_2e832ee81b08883954a3c3a0a4118e33.jpeg', 27);
INSERT INTO `recipestep` VALUES (183, 10, ' 对半切开，装盘，放上西兰花，淋上番茄酱即可。', 'https://cp1.douguo.com/upload/caiku/b/f/4/200_bfb33eaa8755327e5d50f36d8ccec034.jpg', 27);
INSERT INTO `recipestep` VALUES (184, 1, ' 将5个鸡蛋，3勺面粉，适量盐，鸡精，放在一个大碗里搅匀，后将葱花放进去搅匀（不将葱花、鸡蛋、面粉一起搅拌是因为葱花和面粉容易粘在一起成坨，不宜搅拌）', 'https://cp1.douguo.com/upload/caiku/2/5/d/200_25630eec5f15155c435c328538edc5dd.jpg', 8);
INSERT INTO `recipestep` VALUES (185, 2, ' 将平底锅里加入少量油，摇晃一下平底锅，让锅底每一处都沾上油，烧开，倒入3分之一的鸡蛋面粉混合液，再摇晃平底锅，让鸡蛋液均匀的平铺在锅底，然后翻面，5秒，再翻过来（目的是不卷边）取出，依次第二张（5个鸡蛋3勺面是3张饼的量）', 'https://cp1.douguo.com/upload/caiku/d/b/4/200_db949772d3cfd13459eb66fe710ca544.jpg', 8);
INSERT INTO `recipestep` VALUES (186, 3, ' 然后将火腿切条，卷在蛋饼上，卷好刀从中间切开，美味的早餐完成了。基本全过程用不上15分钟！', '', 8);
INSERT INTO `recipestep` VALUES (187, 4, ' 特别说一下，我做的时候用的高筋面粉。', '', 8);
INSERT INTO `recipestep` VALUES (188, 1, ' 各种食材清洗干净，并且将猪肉、杏鲍菇、胡萝卜切成小丁，豌豆和甜玉米都是我以前剥好放在冰箱里冷冻保存的，直接取出一点就可以了；葱切碎，其实我觉得洋葱更好些，不过当时没有了，就用大葱代替了；', 'https://cp1.douguo.com/upload/caiku/f/8/6/200_f8ddbce3ac6717391d8e9a2174a97276.jpg', 12);
INSERT INTO `recipestep` VALUES (189, 2, ' 炒锅上火烧热，放油，炸香葱花；', 'https://cp1.douguo.com/upload/caiku/b/9/d/200_b99114c108a48aec3c9fe8d4e44077ad.jpg', 12);
INSERT INTO `recipestep` VALUES (190, 3, ' 将猪肉丁放进去翻炒变色；', 'https://cp1.douguo.com/upload/caiku/4/0/4/200_40fd1b00f8b8fa0b71108bbbc741c254.jpg', 12);
INSERT INTO `recipestep` VALUES (191, 4, ' 放少许生抽调一下颜色，继续翻炒，因为我用的肉有肥肉而且还带皮，所以我炒的时间比较久一些，想要把其中的油脂煸出来，如果是纯瘦肉就不需要炒太久了；', 'https://cp1.douguo.com/upload/caiku/7/f/3/200_7f98f176312c4c271a66e7d15904c763.jpg', 12);
INSERT INTO `recipestep` VALUES (192, 5, ' 猪肉出油后放入胡萝卜丁和杏鲍菇丁翻炒；', 'https://cp1.douguo.com/upload/caiku/8/d/1/200_8d4d81ea362ed17f168b01a798526e91.jpg', 12);
INSERT INTO `recipestep` VALUES (193, 6, ' 最后加入豌豆和甜玉米粒，颜色开始丰富起来了；', 'https://cp1.douguo.com/upload/caiku/2/c/f/200_2c9797d8127fe55ea99f0bc3f3699e6f.jpg', 12);
INSERT INTO `recipestep` VALUES (194, 7, ' 炒至豌豆变色后加热水，盖入食材，大火烧开，放下盐调味再煮3分钟左右；', 'https://cp1.douguo.com/upload/caiku/0/b/7/200_0b82fad7490a3a7ecf5e2c2b7e0f8377.jpg', 12);
INSERT INTO `recipestep` VALUES (195, 8, ' 这个时候洗大米，大米倒进洗米筐里淘洗一下，好大米不需要太洗多遍，冲选一下就可以了；', 'https://cp1.douguo.com/upload/caiku/3/e/2/200_3e04594a41a709add792c6f6c57952e2.jpg', 12);
INSERT INTO `recipestep` VALUES (196, 9, ' 洗好的大米放进电饭煲里；', 'https://cp1.douguo.com/upload/caiku/c/2/0/200_c2870bfd4858033e4dd6f3c1b3524640.jpg', 12);
INSERT INTO `recipestep` VALUES (197, 10, ' 把菜和适量的菜汤倒进电饭煲里；注意汤水量的控制，少了饭夹生，多了饭粘呼呼的，不好吃；', 'https://cp1.douguo.com/upload/caiku/b/3/6/200_b372ab6f8d7d900c6fc607b360d17616.jpg', 12);
INSERT INTO `recipestep` VALUES (198, 11, ' 开启电饭煲，普通的标准饭模式即可；', 'https://cp1.douguo.com/upload/caiku/0/7/9/200_0793d7df52276c0d2fe6030060089a19.jpg', 12);
INSERT INTO `recipestep` VALUES (199, 12, ' 电饭煲工作完成后，就可以吃香喷喷的焖饭了；', 'https://cp1.douguo.com/upload/caiku/5/1/b/200_5108f95c7976e9456d0dc4f6bd9eae6b.jpg', 12);
INSERT INTO `recipestep` VALUES (200, 13, ' 用饭勺把饭和菜拌一下就可以盛到碗里开吃了。', 'https://cp1.douguo.com/upload/caiku/3/6/0/200_36ff38cc56a03f14cdebd9b4716f2c00.jpg', 12);
INSERT INTO `recipestep` VALUES (201, 14, ' 怎么样，够简单吧，而且食材还比较丰富，有肉、有菜、有菌还有主食。以上份量做出来的饭够两到三个人吃的。', 'https://cp1.douguo.com/upload/caiku/d/2/5/200_d252f0c7e22e884ad77a4ef324c295e5.jpg', 12);
INSERT INTO `recipestep` VALUES (202, 1, ' 去皮胡萝卜和火腿肠一起切细。', 'https://cp1.douguo.com/upload/caiku/5/a/c/200_5a0b1435efccb0477d60074df6c062bc.png', 1);
INSERT INTO `recipestep` VALUES (203, 2, ' 玉米粒，青豌豆分别焯水备用。', 'https://cp1.douguo.com/upload/caiku/6/d/b/200_6d5c7485bcb22eb7f1f992237d06a63b.png', 1);
INSERT INTO `recipestep` VALUES (204, 3, ' 两个鸡蛋加少许盐打散成蛋液', 'https://cp1.douguo.com/upload/caiku/c/a/0/200_caa76ee1b0af00d436112ad226ec49e0.png', 1);
INSERT INTO `recipestep` VALUES (205, 4, ' 准备一碗米饭。', 'https://cp1.douguo.com/upload/caiku/1/b/b/200_1be88144b4595609be03c368fbf0be1b.png', 1);
INSERT INTO `recipestep` VALUES (206, 5, ' 锅中放少许底油，下入胡椒丁炒至断生后加入火腿丁。', 'https://cp1.douguo.com/upload/caiku/7/6/d/200_768b9f874e634346d38045c75e4605ed.png', 1);
INSERT INTO `recipestep` VALUES (207, 6, ' 加玉米粒和豌豆粒翻炒。', 'https://cp1.douguo.com/upload/caiku/e/4/b/200_e4aae0a54a074d61720decc82f30ed2b.png', 1);
INSERT INTO `recipestep` VALUES (208, 7, ' 倒入米饭。', 'https://cp1.douguo.com/upload/caiku/7/a/5/200_7af99b6caacee961d38dfeac98d85945.png', 1);
INSERT INTO `recipestep` VALUES (209, 8, ' 待米饭彻底炒散，颗粒分明时加入盐，胡椒粉调味，再调入一大勺番茄酱炒匀。', 'https://cp1.douguo.com/upload/caiku/d/0/0/200_d0c1c02e76bc0b41663092a22b27fbf0.png', 1);
INSERT INTO `recipestep` VALUES (210, 9, ' 取少许淀粉加清水淀匀倒入蛋液中，拌匀。', 'https://cp1.douguo.com/upload/caiku/7/c/9/200_7c1b1c10f3b112406f18e569988aca49.png', 1);
INSERT INTO `recipestep` VALUES (211, 10, ' 另取干净平底锅，加一小勺油，倒入蛋液摊成蛋皮。', 'https://cp1.douguo.com/upload/caiku/4/b/3/200_4b626d098a62cdac00aea76f42f05e83.png', 1);
INSERT INTO `recipestep` VALUES (212, 11, ' 待蛋液即将凝固时，在蛋皮一侧放入炒好的米饭。', 'https://cp1.douguo.com/upload/caiku/7/d/0/200_7d4be2bffa2fbb3f8b0939e78d2af2e0.png', 1);
INSERT INTO `recipestep` VALUES (213, 12, ' 将蛋皮对折，整好形，将边缘压紧，略煎定型出锅即可。', 'https://cp1.douguo.com/upload/caiku/7/f/0/200_7f40f41e9fdd626708761f3031f14670.png', 1);
INSERT INTO `recipestep` VALUES (214, 1, ' 原料。', 'https://cp1.douguo.com/upload/caiku/5/3/8/200_531c5a179d4e7afeec98bd70622f1178.jpg', 6);
INSERT INTO `recipestep` VALUES (215, 2, ' 炒锅倒油，油热后放入葱。', 'https://cp1.douguo.com/upload/caiku/b/0/f/200_b03a50790693fc96f941ccdeaa59a7cf.jpg', 6);
INSERT INTO `recipestep` VALUES (216, 3, ' 放入香肠。', 'https://cp1.douguo.com/upload/caiku/f/2/1/200_f21e058548d39be78ba8245c73b6ab71.jpg', 6);
INSERT INTO `recipestep` VALUES (217, 4, ' 炸出葱香味后加适量水。', 'https://cp1.douguo.com/upload/caiku/3/e/0/200_3ee2f8e50fec9abaf51d0b41d41315b0.jpg', 6);
INSERT INTO `recipestep` VALUES (218, 5, ' 水沸后下入面，用筷子稍加搅拌。', 'https://cp1.douguo.com/upload/caiku/3/7/5/200_374c46866e918ee244924a2a96d92ed5.jpg', 6);
INSERT INTO `recipestep` VALUES (219, 6, ' 放入木耳，大火煮开，随开随点入少许冷水，煮至面条无白芯。', 'https://cp1.douguo.com/upload/caiku/0/2/d/200_020a0f577463597335bf1ec7f5f5826d.jpg', 6);
INSERT INTO `recipestep` VALUES (220, 7, ' 碗里放入醋、生抽、盐、胡椒粉、红椒、葱末、芝麻油，拌匀。', 'https://cp1.douguo.com/upload/caiku/0/2/4/200_0273348178ef4634fba4cf6e9fec26d4.jpg', 6);
INSERT INTO `recipestep` VALUES (221, 8, ' 将碗汁倒入锅中，搅拌均匀即可关火。', 'https://cp1.douguo.com/upload/caiku/3/f/8/200_3f02de87e3029b17f8a001773f2ae648.jpg', 6);
INSERT INTO `recipestep` VALUES (222, 9, ' 盛入碗中。', 'https://cp1.douguo.com/upload/caiku/0/5/3/200_052402b7a070ff40dde02ce4a9f7d7d3.jpg', 6);
INSERT INTO `recipestep` VALUES (223, 10, ' 好香！', 'https://cp1.douguo.com/upload/caiku/3/0/e/200_3089afb6b86443892b52521abfaa260e.jpg', 6);
INSERT INTO `recipestep` VALUES (224, 1, ' 热水把芝麻酱调开，加入盐 酱油 香醋 糖 调匀', 'https://cp1.douguo.com/upload/caiku/5/a/5/200_5ab557453855dc1cb8ef556adc715565.jpg', 17);
INSERT INTO `recipestep` VALUES (225, 2, ' 鸡肉切末', 'https://cp1.douguo.com/upload/caiku/c/1/1/200_c16018989079c31baab7024f8fc39921.jpg', 17);
INSERT INTO `recipestep` VALUES (226, 3, ' 切黄瓜丝 西红柿丁 葱花 花生米压碎，我用的是酒鬼花生米，', 'https://cp1.douguo.com/upload/caiku/d/e/9/200_de717487bfd424bd39fdc10aed7042b9.jpg', 17);
INSERT INTO `recipestep` VALUES (227, 4, ' 煮面 家里有什么面就用了，也可以用手擀的面，', 'https://cp1.douguo.com/upload/caiku/f/5/f/200_f5dd7b3ce96cde316f3d4c5cef5cee1f.jpg', 17);
INSERT INTO `recipestep` VALUES (228, 5, ' 煮完用冷水过', 'https://cp1.douguo.com/upload/caiku/2/3/9/200_2380d293e6043298b197e07b298d4f19.jpg', 17);
INSERT INTO `recipestep` VALUES (229, 6, ' 热锅下冷油，下鸡肉炒，把水汽炒没，放入郫县豆瓣酱，炒出红油下黄豆酱，改大火翻炒，淋上料酒，放入少许酱油，五香粉，根据个人口味加盐', 'https://cp1.douguo.com/upload/caiku/e/0/4/200_e0181d22fad4203302a90785277e2af4.jpg', 17);
INSERT INTO `recipestep` VALUES (230, 7, ' 面的一边淋上调好的麻将，一边撒上炒好的鸡肉，中间依次放上西红柿丁，黄瓜丝，葱花 在撒上花生米和辣椒油，', 'https://cp1.douguo.com/upload/caiku/1/8/4/200_18b4666b84a64d7568cb1aa065420d04.jpg', 17);
INSERT INTO `recipestep` VALUES (231, 8, ' 真的很香～', 'https://cp1.douguo.com/upload/caiku/4/4/9/200_44604b60cd1591bba9c90549490ccd79.jpg', 17);
INSERT INTO `recipestep` VALUES (232, 1, ' 肉剁碎，要剁的比包饺子还要碎一些，磕入一个生鸡蛋，放入盐、芝麻油、生抽、老抽、蚝油、十三香、鸡精粉、顺时针搅拌上劲直至肉把鸡蛋和调料的水份吸收完。然后葱姜剁碎和肉拌匀。', 'https://cp1.douguo.com/upload/caiku/9/e/d/200_9ea46c64b7968ef78fe7b5b30ece507d.jpg', 20);
INSERT INTO `recipestep` VALUES (233, 2, ' 肉冻剁碎和刚拌好的肉馅拌匀。（肉冻做法查看我的菜谱水晶肉冻，只是后期放入的辣椒不用放，也可以把处理好的肉皮放入电压力锅中选牛蹄筋键，程序结束后再倒出放电磁炉上小火炖30～40分钟，这样做出的肉冻更弹滑）', 'https://cp1.douguo.com/upload/caiku/d/8/b/200_d8e731d2d48901053550214e361afdbb.jpg', 20);
INSERT INTO `recipestep` VALUES (234, 3, ' 拌好的馅', 'https://cp1.douguo.com/upload/caiku/3/e/4/200_3e68d88e4d4cba623ca076beb1bb5994.jpg', 20);
INSERT INTO `recipestep` VALUES (235, 4, ' 我买的灌汤包皮，如果买不到可以用饺子皮，把饺子皮再擀薄一些擀成9～10cm大小的圆皮，或者自己和面擀也可以，面的软硬和包饺子的一样只是皮要擀的比饺子皮薄一些。在皮的中间放入一大勺馅。', 'https://cp1.douguo.com/upload/caiku/6/9/9/200_69f5a7850e086f03af60c96c5a81d3c9.jpg', 20);
INSERT INTO `recipestep` VALUES (236, 5, ' 像我们包包子一样，放在左手上，左手拇指推着向右转，右手拇指和食指捏起一折压着一折的收口，最后捏起收好的口顺时针转半圈再把口收小一点。', 'https://cp1.douguo.com/upload/caiku/f/1/1/200_f1e5ca6481a5db5bbe3b235bc00ce621.jpg', 20);
INSERT INTO `recipestep` VALUES (237, 6, ' 全部包好了，看我包了好多，一共80个左右。', 'https://cp1.douguo.com/upload/caiku/b/1/a/200_b13e62cb49640008feed6fd74fc4592a.jpg', 20);
INSERT INTO `recipestep` VALUES (238, 7, ' 锅中加入适量水，把篦子上刷层油或者铺油布都可以，中间留够空隙防粘，大火水烧开后再蒸8分钟就可以了。', 'https://cp1.douguo.com/upload/caiku/f/6/9/200_f65106f21e44ad335876768534d165e9.jpg', 20);
INSERT INTO `recipestep` VALUES (239, 8, ' 出锅了，直接吃吧，别着急小心汤汁烫嘴，也可以用辣椒油和醋调成汁蘸着吃更好吃哦！', 'https://cp1.douguo.com/upload/caiku/6/5/2/200_65b1f4de1efaba9e9adcb5c61a68fba2.jpg', 20);
INSERT INTO `recipestep` VALUES (240, 9, ' 看，薄薄的皮里面满满的汤汁，蘸上料汁怕你顾不上烫嘴一口一个大口吃呢！', 'https://cp1.douguo.com/upload/caiku/c/6/8/200_c65887860dd9d4b479780ab5d418fdf8.jpg', 20);
INSERT INTO `recipestep` VALUES (241, 1, ' 开水倒入面粉，边倒边用筷子搅拌成絮状。开水要慢慢加入，不要一次性加入啊', 'https://cp1.douguo.com/upload/caiku/e/b/8/200_ebe6a48920503eeaadeb532bb8daca38.jpg', 23);
INSERT INTO `recipestep` VALUES (242, 2, ' 面稍凉不烫手时，揉成光滑的面团，加盖饧面30分钟', 'https://cp1.douguo.com/upload/caiku/9/d/9/200_9d6e83f1f1078bac73eb381c87c15019.jpg', 23);
INSERT INTO `recipestep` VALUES (243, 3, ' 平均分成约25-30克左右的剂子，剂子个数要成对', 'https://cp1.douguo.com/upload/caiku/d/f/c/200_df31c44a2cb4ecee84b70f431ecf241c.jpg', 23);
INSERT INTO `recipestep` VALUES (244, 4, ' 取一个剂子，表面滴一滴玉米油', 'https://cp1.douguo.com/upload/caiku/3/1/4/200_312e72bd4949723f9be822b416b351b4.jpg', 23);
INSERT INTO `recipestep` VALUES (245, 5, ' 把另一个剂子盖在上面，转动一下，按扁', 'https://cp1.douguo.com/upload/caiku/0/3/2/200_036b6cf1cb6028b87cfc2f4c849f7c52.jpg', 23);
INSERT INTO `recipestep` VALUES (246, 6, ' 擀成圆圆的薄饼', 'https://cp1.douguo.com/upload/caiku/d/c/2/200_dc1bb013008aac0ca53d43cc04fe8982.jpg', 23);
INSERT INTO `recipestep` VALUES (247, 7, ' 平底锅小火，放入饼，起泡后翻面', 'https://cp1.douguo.com/upload/caiku/e/7/9/200_e751eb7b071afbbc854a895b414220f9.jpg', 23);
INSERT INTO `recipestep` VALUES (248, 8, ' 看到翻过的面表面有淡淡的黄咖，另一面也起泡后，就熟了。依次做好所有的，放在有盖的容器里保存', 'https://cp1.douguo.com/upload/caiku/6/8/b/200_683455e4eba0fbe7f3c47b51ce2faddb.jpg', 23);
INSERT INTO `recipestep` VALUES (249, 9, ' 吃的时候从中间撕开，取一张小饼，抹上面酱，夹些韭菜鸡蛋、炒绿豆菜、炒粉丝、炒面筋丝、葱丝、黄瓜条等，卷起，美味！', 'https://cp1.douguo.com/upload/caiku/4/c/2/200_4c3b96b1f230651a6b7322bff837c962.jpeg', 23);
INSERT INTO `recipestep` VALUES (250, 10, ' 成品', 'https://cp1.douguo.com/upload/caiku/9/e/9/200_9e1d32723588efc5e73f353ffd816049.jpeg', 23);
INSERT INTO `recipestep` VALUES (251, 11, ' 成品，冰箱冷藏一夜再卷都不会开裂', 'https://cp1.douguo.com/upload/caiku/7/2/f/200_72a8ba38aef0277899c9bb6af5a288ef.jpeg', 23);
INSERT INTO `recipestep` VALUES (252, 1, ' 准备好所需要材料', 'https://cp1.douguo.com/upload/caiku/b/1/0/200_b16ff47a174f4c6b0b8def61fd9a0870.jpg', 13);
INSERT INTO `recipestep` VALUES (253, 2, ' 西红柿，洋葱蒜片切碎', 'https://cp1.douguo.com/upload/caiku/b/a/c/200_baf32a4be92c33a838de112e6edfe3bc.jpg', 13);
INSERT INTO `recipestep` VALUES (254, 3, ' 平底锅倒入适量橄榄油加入肉末洋葱炒香', 'https://cp1.douguo.com/upload/caiku/9/a/3/200_9af14b2accbb42f46c449666dbe13af3.jpg', 13);
INSERT INTO `recipestep` VALUES (255, 4, ' 加入西红柿两勺番茄酱翻炒', 'https://cp1.douguo.com/upload/caiku/f/d/1/200_fde25feb2fac165ee20b86612042b2e1.jpg', 13);
INSERT INTO `recipestep` VALUES (256, 5, ' 加入适量的水少许盐调成汤汁', 'https://cp1.douguo.com/upload/caiku/e/9/3/200_e999495ed805e2a873ee79b80baeac83.jpg', 13);
INSERT INTO `recipestep` VALUES (257, 6, ' 最后加入煮好的意面翻炒撒点黑胡椒即可', 'https://cp1.douguo.com/upload/caiku/c/1/5/200_c18badb59d7daed4b6a2a3ccd8419c45.jpg', 13);
INSERT INTO `recipestep` VALUES (258, 1, ' 准备辣椒油一小碗，香葱、香菜、蒜切末，泰椒切小段', 'https://cp1.douguo.com/upload/caiku/7/e/c/200_7e514449ed0d0c918bc5234febafa7dc.jpeg', 24);
INSERT INTO `recipestep` VALUES (259, 2, ' 锅中放少许油，放入花生粒小火慢炒，变色炒熟出锅晾凉', 'https://cp1.douguo.com/upload/caiku/c/a/0/200_ca1fbfd634e4ff299e27fcc3e89a87e0.jpeg', 24);
INSERT INTO `recipestep` VALUES (260, 3, ' 将炒熟晾凉的花生米用擀面杖敲碎', 'https://cp1.douguo.com/upload/caiku/9/d/2/200_9d5221d9cecea54bb2d9f623c835b702.jpeg', 24);
INSERT INTO `recipestep` VALUES (261, 4, ' 调碗汁，将生抽、老抽、麻油、陈醋、蚝油、白糖、盐、鸡精、十三香、辣椒油、香菜、香葱、泰椒、蒜末一同放入碗中拌匀调成碗汁。（一碗底的量就够用）', 'https://cp1.douguo.com/upload/caiku/3/6/c/200_3639a38caf8b729ba661a2cb78d1a43c.jpeg', 24);
INSERT INTO `recipestep` VALUES (262, 5, ' 煮面条，锅中水开下入面条', 'https://cp1.douguo.com/upload/caiku/3/8/e/200_3857f3ab41e6fe3bebe934a736cd393e.jpeg', 24);
INSERT INTO `recipestep` VALUES (263, 6, ' 用煮开的面条水倒入碗汁中调成汤汁，约两大勺，刚过面碗的一半就行', 'https://cp1.douguo.com/upload/caiku/a/0/5/200_a0c1dcfaa039ba0042e92fe3f62593f5.jpeg', 24);
INSERT INTO `recipestep` VALUES (264, 7, ' 面条即将出锅的前几分钟下入青菜，菜熟立即出锅', 'https://cp1.douguo.com/upload/caiku/c/0/4/200_c090be38a558fd7d3e9498ed19bedda4.jpeg', 24);
INSERT INTO `recipestep` VALUES (265, 8, ' 将煮好的面和青菜盛到调好的汤汁碗里，在撒上一些香葱、香菜、花生、泰椒，最后再浇上一层辣椒油，漂亮有食欲！', 'https://cp1.douguo.com/upload/caiku/1/8/0/200_18d2fe9d02d9cd77e5c1fe93116bbda0.jpeg', 24);
INSERT INTO `recipestep` VALUES (266, 9, ' 没有胃口的时候来碗酸辣面，开胃！有胃口的时候来碗酸辣面，酸爽过瘾！', 'https://cp1.douguo.com/upload/caiku/8/a/c/200_8a7d82be0c1632424e66f5ca52ed8d3c.jpeg', 24);
INSERT INTO `recipestep` VALUES (267, 10, ' 分分钟要消灭的节奏', 'https://cp1.douguo.com/upload/caiku/b/7/b/200_b710e6f19a52a85d2a2b36e124a9ca8b.jpeg', 24);
INSERT INTO `recipestep` VALUES (268, 1, ' 准备食材', 'https://cp1.douguo.com/upload/caiku/8/7/8/200_8729a8cbb56b3f57894c8492d5846468.jpeg', 15);
INSERT INTO `recipestep` VALUES (269, 2, ' 大米淘洗干净，加入适量的水或高汤，中火煮', 'https://cp1.douguo.com/upload/caiku/a/7/8/200_a76384d655cc72b9723a7b733565f1f8.jpeg', 15);
INSERT INTO `recipestep` VALUES (270, 3, ' 盖上盖，把它放在厨房，活生生把别的厨具比下一大截，高颜值，哈哈……', 'https://cp1.douguo.com/upload/caiku/6/1/9/200_6129f85abc438f73161f9d85b9183d39.jpeg', 15);
INSERT INTO `recipestep` VALUES (271, 4, ' 山药胡萝卜去皮，山药切斜片，胡萝卜切小丁', 'https://cp1.douguo.com/upload/caiku/1/a/c/200_1aa0cc90c7ef414c288c44b7fb08ff9c.jpeg', 15);
INSERT INTO `recipestep` VALUES (272, 5, ' 大米烧开后，把切好的山药和胡萝卜丁倒入，烧开转小火慢煮15－20分钟左右', 'https://cp1.douguo.com/upload/caiku/9/5/1/200_95eb359300c8c6537c45e93cf9c49a11.jpeg', 15);
INSERT INTO `recipestep` VALUES (273, 6, ' 西兰花用流动水冲洗干净，掰小朵备用', 'https://cp1.douguo.com/upload/caiku/2/8/e/200_285cd2d225f96f6190f0144fd0e28abe.jpeg', 15);
INSERT INTO `recipestep` VALUES (274, 7, ' 粥熬至浓稠，大米成米花时把西兰花加入，煮至3－4分钟关火', 'https://cp1.douguo.com/upload/caiku/0/4/6/200_04cee4572001041e7cbfc72b20586be6.jpeg', 15);
INSERT INTO `recipestep` VALUES (275, 8, ' 最后加入少许的盐和胡椒粉，滴几滴芝麻油搅拌均匀即可', 'https://cp1.douguo.com/upload/caiku/5/8/a/200_589fc1644f878ccef182b9defb62db4a.jpeg', 15);
INSERT INTO `recipestep` VALUES (276, 9, ' 成品图', 'https://cp1.douguo.com/upload/caiku/c/1/a/200_c14ded04371d2781bb905ff41368a0da.jpeg', 15);
INSERT INTO `recipestep` VALUES (277, 10, ' 成品图', 'https://cp1.douguo.com/upload/caiku/6/0/9/200_60c3c3439bb9d3961d6e367b907b8b49.jpeg', 15);
INSERT INTO `recipestep` VALUES (278, 11, ' 成品图', 'https://cp1.douguo.com/upload/caiku/d/8/e/200_d8ea84a6517baa1c655eec849179580e.jpeg', 15);
INSERT INTO `recipestep` VALUES (279, 1, ' 茄子去皮', 'https://cp1.douguo.com/upload/caiku/e/f/7/200_ef6992a1ed839892b0914e8a75bf1147.jpg', 25);
INSERT INTO `recipestep` VALUES (280, 2, ' 切成0。3厘米左右厚度的片。', 'https://cp1.douguo.com/upload/caiku/6/8/d/200_683e833846eef1e64f1c7f44592c671d.jpg', 25);
INSERT INTO `recipestep` VALUES (281, 3, ' 切好的茄子泡在水里泡五分钟。', 'https://cp1.douguo.com/upload/caiku/f/5/b/200_f594824b48ddec7f4c570078ce2f682b.jpg', 25);
INSERT INTO `recipestep` VALUES (282, 4, ' 鸡蛋加淀粉，加一点水和食盐调成糊。', 'https://cp1.douguo.com/upload/caiku/a/b/9/200_ab7238b94565cfe72fb4be829e81e309.jpg', 25);
INSERT INTO `recipestep` VALUES (283, 5, ' 切片放在蛋糊里，粘上蛋糊。', 'https://cp1.douguo.com/upload/caiku/1/4/9/200_1404cb213f9e1bb0f5d98eb7c62c0949.jpg', 25);
INSERT INTO `recipestep` VALUES (284, 6, ' 炒锅里放比平时炒菜多一倍的油，把裹满蛋糊的茄子在锅里，中小火。', 'https://cp1.douguo.com/upload/caiku/f/b/e/200_fb5128146e3c5a8556feb556efda7fce.jpg', 25);
INSERT INTO `recipestep` VALUES (285, 7, ' 煎至两面金黄即可。', 'https://cp1.douguo.com/upload/caiku/c/d/9/200_cdfafe19a4b18f024bae05d434763f89.jpg', 25);
INSERT INTO `recipestep` VALUES (286, 8, ' 大蒜剥皮捣成蒜泥，加2勺水、2勺生抽、2勺米醋，几滴香油。', 'https://cp1.douguo.com/upload/caiku/e/0/f/200_e0325afe142efa8bd7ede0e57578375f.jpg', 25);
INSERT INTO `recipestep` VALUES (287, 9, ' 蘸着蒜汁，好吃的不要不要的。', 'https://cp1.douguo.com/upload/caiku/e/b/4/200_eb194ab6d51a801cfb69144999e7ad34.jpg', 25);
INSERT INTO `recipestep` VALUES (288, 1, ' 干黄豆先用热油炸熟，备用；', 'https://cp1.douguo.com/upload/caiku/0/d/1/200_0d0e9bcf730d236add4c733df1eaaa31.jpg', 29);
INSERT INTO `recipestep` VALUES (289, 2, ' 红薯粉清洗一下，备用；', 'https://cp1.douguo.com/upload/caiku/b/3/f/200_b3394d9d7d4773d47b9b68e91ec263df.jpg', 29);
INSERT INTO `recipestep` VALUES (290, 3, ' 准备好各种调料：辣椒油15ml，陈醋15ml，生抽15ml,香油5ml，白砂糖3克，食盐2克，花椒粉2克，酥黄豆20克，香菜碎5克，老坛酸菜10克；', 'https://cp1.douguo.com/upload/caiku/e/b/0/200_ebee541742a78da9a24c196bc2cb2a50.jpg', 29);
INSERT INTO `recipestep` VALUES (291, 4, ' 取一只大碗，调入辣椒油、香油、花椒粉、陈醋、生抽、盐、糖待用；', 'https://cp1.douguo.com/upload/caiku/0/4/6/200_046d8f7bacfd06f1b84bb2dc205931c6.jpg', 29);
INSERT INTO `recipestep` VALUES (292, 5, ' 锅中烧开水，下入红薯粉丝煮5分钟左右关火；', 'https://cp1.douguo.com/upload/caiku/3/0/5/200_30de8938296cfc2e6cb8385319f1d565.jpg', 29);
INSERT INTO `recipestep` VALUES (293, 6, ' 将煮好的粉丝放入调好调料的碗中，加入1碗热高汤；', 'https://cp1.douguo.com/upload/caiku/9/f/d/200_9fa09acbcc362864211d33951296020d.jpg', 29);
INSERT INTO `recipestep` VALUES (294, 7, ' 撒上老坛酸菜碎、香菜碎和酥黄豆拌匀即可食用！', 'https://cp1.douguo.com/upload/caiku/1/3/b/200_130835772af2c0f978a70eaa2d78265b.jpg', 29);
INSERT INTO `recipestep` VALUES (295, 8, ' 成品图', 'https://cp1.douguo.com/upload/caiku/5/8/3/200_5897b9b75c2575c73af6e9df38dfcb63.jpg', 29);
INSERT INTO `recipestep` VALUES (296, 9, ' 成品图竖图', 'https://cp1.douguo.com/upload/caiku/9/c/0/200_9c74730d959c5a04f67369c011d85dc0.jpg', 29);
INSERT INTO `recipestep` VALUES (297, 1, ' 把所有食物放在奶锅里面，加1000毫升水，煮到豆烂掉就好了。', '', 16);
INSERT INTO `recipestep` VALUES (298, 1, ' 卷心菜半个，洗净切丝备用。', 'https://cp1.douguo.com/upload/caiku/3/f/5/200_3f6a074194c484f424493bd8b351f825.jpg', 18);
INSERT INTO `recipestep` VALUES (299, 2, ' 胡萝卜去皮切细丝。', 'https://cp1.douguo.com/upload/caiku/f/a/b/200_fad17513653284b899a50b318b1d3ffb.jpg', 18);
INSERT INTO `recipestep` VALUES (300, 3, ' 切适量葱丝姜末，准备二两猪肉馅。', 'https://cp1.douguo.com/upload/caiku/f/c/c/200_fcc24294d3e2b01a0d0f2e0cfd07c76c.jpg', 18);
INSERT INTO `recipestep` VALUES (301, 4, ' 适量面条入开水煮，第一次开锅就关火捞出。', 'https://cp1.douguo.com/upload/caiku/f/f/f/200_ffbfdf951dd36958f39ae9e26ed6f70f.jpg', 18);
INSERT INTO `recipestep` VALUES (302, 5, ' 过凉水后平铺案板上，均匀包裹适量橄榄油', 'https://cp1.douguo.com/upload/caiku/2/2/1/200_22507ec71c023e095f7acb272bf5acd1.jpg', 18);
INSERT INTO `recipestep` VALUES (303, 6, ' 爆香葱丝姜末', 'https://cp1.douguo.com/upload/caiku/d/5/9/200_d5c591d9b335987f5d9633299f182b99.jpg', 18);
INSERT INTO `recipestep` VALUES (304, 7, ' 放入胡萝卜丝，快活翻炒。', 'https://cp1.douguo.com/upload/caiku/6/0/2/200_60790805c3cd9002577b23dea2f12522.jpg', 18);
INSERT INTO `recipestep` VALUES (305, 8, ' 接着放入卷心菜丝，加入一勺酱油，半勺蚝油，少许盐，炒匀。', 'https://cp1.douguo.com/upload/caiku/7/8/9/200_78fe4ac77eeed600a0084db600fd2919.jpg', 18);
INSERT INTO `recipestep` VALUES (306, 9, ' 下面条，拌匀即可。', 'https://cp1.douguo.com/upload/caiku/0/5/1/200_055f8a4bae341ea0e11dc5c73d2000e1.jpg', 18);
INSERT INTO `recipestep` VALUES (307, 10, ' 一碗吃的过瘾又做法简单的快手炒面就做好了。', 'https://cp1.douguo.com/upload/caiku/4/1/6/200_415905f09d1e0e46c7ebacb6b2be4f76.jpg', 18);
INSERT INTO `recipestep` VALUES (308, 1, ' 准备一个大番茄，烧开水放入番茄烫一滚，取出凉水下冲一下，皮很容易去掉。', 'https://cp1.douguo.com/upload/caiku/a/3/a/200_a3948ac2a73e549f1bab4285e57f886a.jpg', 19);
INSERT INTO `recipestep` VALUES (309, 2, ' 把番茄切碎，放入大碗中。打入三个鸡蛋，放入葱花，放盐，搅拌均匀。让蛋清和蛋黄充分混合为止。', 'https://cp1.douguo.com/upload/caiku/d/9/8/200_d9b3833071a9ad384536145d2e11ba18.jpg', 19);
INSERT INTO `recipestep` VALUES (310, 3, ' 加入1/4cup大约35g面粉，搅拌均匀，至面粉充分融入蛋液。(最好把面粉筛入蛋液，我为了省事直接撒入了)', 'https://cp1.douguo.com/upload/caiku/b/6/7/200_b6e3464de74f93f1b83b43c5fb1b4657.jpg', 19);
INSERT INTO `recipestep` VALUES (311, 4, ' 热油锅，放少量油，油热至8成，倒入混合好的蛋液，切记要转小火，否则底部蛋饼焦糊了。不要动蛋饼，直至蛋饼凝结成一整个。其中可以轻轻转动锅子，让蛋饼摊得更均匀。', 'https://cp1.douguo.com/upload/caiku/a/a/a/200_aaea12c629cd6f506b1f2ed701a7f91a.jpg', 19);
INSERT INTO `recipestep` VALUES (312, 5, ' 待蛋饼成型，用铲刀翻过来，再煎一会儿熟透。可用铲刀按压一下蛋饼，有弹性，不凹陷，表示已经熟透，盛出。(因为放了少量面粉，小火慢煎，饼很容易熟。成型基本就熟了)', 'https://cp1.douguo.com/upload/caiku/f/b/c/200_fbdd40381de1d34ea5dcb10a9065bdac.jpg', 19);
INSERT INTO `recipestep` VALUES (313, 6, ' 把蛋饼卷起，切成小段，加上一碗熬好的小米粥，宝贝“饼饼，饼饼”主动上了餐椅，吃得香喷喷。', 'https://cp1.douguo.com/upload/caiku/f/8/f/200_f824cc9959a0d44f82a498a533a761cf.jpg', 19);
INSERT INTO `recipestep` VALUES (314, 7, ' 补充:所加面粉大约为一汤勺平平的，上图', 'https://cp1.douguo.com/upload/caiku/3/1/2/200_319e658af8f78529358e340b7f1cb002.jpg', 19);
INSERT INTO `recipestep` VALUES (315, 1, ' 红豆洗净浸泡5小时', 'https://cp1.douguo.com/upload/caiku/1/a/0/200_1a154aab5d5390cae411022428c5fac0.jpeg', 59);
INSERT INTO `recipestep` VALUES (316, 2, ' 起锅注入适量水烧开，放入红豆大火烧开，传小火煮30分钟', 'https://cp1.douguo.com/upload/caiku/2/6/d/200_26e2d7296e609f4e711f3f0655b8768d.jpeg', 59);
INSERT INTO `recipestep` VALUES (317, 3, ' 捞起，沥干水分', 'https://cp1.douguo.com/upload/caiku/1/5/5/200_15807ab7bf39e3fe0fb89bd27c7d8245.jpeg', 59);
INSERT INTO `recipestep` VALUES (318, 4, ' 将黑白淡奶、椰浆和玉米淀粉充分拌匀', 'https://cp1.douguo.com/upload/caiku/3/f/e/200_3f9e633608ee8707709c9308d399c85e.jpeg', 59);
INSERT INTO `recipestep` VALUES (319, 5, ' 用手动打蛋器拌打至无颗粒状态的粉浆', 'https://cp1.douguo.com/upload/caiku/0/a/7/200_0a2497c79723580ecaa1b22b41121377.jpeg', 59);
INSERT INTO `recipestep` VALUES (320, 6, ' 起锅注入250ml清水烧开，加入白砂糖煮至溶化', 'https://cp1.douguo.com/upload/caiku/b/1/0/200_b1e9be819ba8be942600bc304da7eb80.jpeg', 59);
INSERT INTO `recipestep` VALUES (321, 7, ' 关火，将粉浆慢慢加入', 'https://cp1.douguo.com/upload/caiku/7/c/5/200_7c62cd2ca8f465b2019533a96e06b4e5.jpeg', 59);
INSERT INTO `recipestep` VALUES (322, 8, ' 用手动打蛋器将面糊不停搅拌至无颗粒状', 'https://cp1.douguo.com/upload/caiku/d/6/c/200_d689d75e4614c0c31fdd1ea8d4aca63c.jpeg', 59);
INSERT INTO `recipestep` VALUES (323, 9, ' 开小火将面糊煮1-2分钟至熟，途中要不停搅拌，以防粘底', 'https://cp1.douguo.com/upload/caiku/d/d/f/200_dd9bf9d8fffbcb0d806738faee30748f.jpeg', 59);
INSERT INTO `recipestep` VALUES (324, 10, ' 加入红豆拌匀，小火煮2分钟，途中要不停搅拌，以防粘底，关火', 'https://cp1.douguo.com/upload/caiku/7/c/1/200_7c5f5899beac9bdbffa93a3db39452c1.jpeg', 59);
INSERT INTO `recipestep` VALUES (325, 11, ' 模具铺上保鲜膜防粘', 'https://cp1.douguo.com/upload/caiku/e/a/e/200_ead630922c3dd35158466da7cb38d4ee.jpeg', 59);
INSERT INTO `recipestep` VALUES (326, 12, ' 将面糊倒入模具中铺平，放冰箱冷藏3小时，即可切件食用', 'https://cp1.douguo.com/upload/caiku/0/a/2/200_0a8c050586a6c4c84a619b740ced54d2.jpeg', 59);
INSERT INTO `recipestep` VALUES (327, 13, ' 我的早餐～椰汁红豆糕', 'https://cp1.douguo.com/upload/caiku/c/e/e/200_ce54e35220751532c752a27c1b1ffc8e.jpeg', 59);
INSERT INTO `recipestep` VALUES (328, 1, ' 准备食材', 'https://cp1.douguo.com/upload/caiku/d/7/8/200_d7116495ff27cc7608769f2de5ed5c28.jpg', 44);
INSERT INTO `recipestep` VALUES (329, 2, ' 西葫芦擦成细丝', 'https://cp1.douguo.com/upload/caiku/0/4/9/200_04fbff4c6a903827ee67f207e0b5b399.jpg', 44);
INSERT INTO `recipestep` VALUES (330, 3, ' 加入盐、五香粉、鸡蛋拌匀', 'https://cp1.douguo.com/upload/caiku/7/a/a/200_7aa461d8f2f898e713d8cbfe01bb98ea.jpg', 44);
INSERT INTO `recipestep` VALUES (331, 4, ' 在加入面粉', 'https://cp1.douguo.com/upload/caiku/2/9/2/200_29f23ddc82b18f509c5149f25f0cfbb2.jpg', 44);
INSERT INTO `recipestep` VALUES (332, 5, ' 拌成浓稠的面糊', 'https://cp1.douguo.com/upload/caiku/5/9/2/200_59aa2d1e3e1818b8df22e91d7d1ee432.jpg', 44);
INSERT INTO `recipestep` VALUES (333, 6, ' 平底锅抹少许油加热，用勺子挖等量面糊放入压平', 'https://cp1.douguo.com/upload/caiku/e/7/7/200_e7352ae99fe5f276f2815b292450f187.jpg', 44);
INSERT INTO `recipestep` VALUES (334, 7, ' 用中小火将西葫芦饼煎至双面金黄即可', 'https://cp1.douguo.com/upload/caiku/8/a/f/200_8a08051afd947d60c13365a689213d0f.jpg', 44);
INSERT INTO `recipestep` VALUES (335, 8, ' 成品', 'https://cp1.douguo.com/upload/caiku/7/4/2/200_748a1542f363165945c7d9b8971cf052.jpg', 44);
INSERT INTO `recipestep` VALUES (336, 9, ' 成品', 'https://cp1.douguo.com/upload/caiku/8/a/3/200_8addc50d2efd01fede3f3bf057fb6d23.jpg', 44);
INSERT INTO `recipestep` VALUES (337, 1, ' 把柠檬清洗干净，加入一小小勺盐浸泡38分钟，在用细盐搓洗一遍。', 'https://cp1.douguo.com/upload/caiku/3/e/7/200_3e8d8555d911e9fbefe3a19f29304c67.jpeg', 40);
INSERT INTO `recipestep` VALUES (338, 2, ' 切成2厘米厚的片，去籽。', 'https://cp1.douguo.com/upload/caiku/e/f/f/200_ef789ff5ad059f15dde6a4385bd7b37f.jpeg', 40);
INSERT INTO `recipestep` VALUES (339, 3, ' 梨清洗干净，用原汁机榨汁，可以选择雪梨，或鸭梨。', 'https://cp1.douguo.com/upload/caiku/6/8/5/200_68ad1dc03110b0b296e4b97253ac84b5.jpeg', 40);
INSERT INTO `recipestep` VALUES (340, 4, ' 柠檬、梨汁、冰糖全部放在一起。', 'https://cp1.douguo.com/upload/caiku/e/1/0/200_e11636a4abeb81f7604bf7e67df2d980.jpeg', 40);
INSERT INTO `recipestep` VALUES (341, 5, ' 放入电饭煲中，煲汤模式煮制1-2小时，看电饭煲的内设时间。（家里没有电炖锅所以用电饭煲代替了）', 'https://cp1.douguo.com/upload/caiku/f/6/1/200_f67daba9ffabac5f6cd4a5ef1f262301.jpeg', 40);
INSERT INTO `recipestep` VALUES (342, 6, ' 在放入不粘锅中小火慢炖，煮出胶质状即可。', 'https://cp1.douguo.com/upload/caiku/f/4/1/200_f4026031c515b043f088b2c69f2b5971.jpeg', 40);
INSERT INTO `recipestep` VALUES (343, 7, ' 冷却后用罐子密封冷藏。', 'https://cp1.douguo.com/upload/caiku/3/a/1/200_3afc12768458110d98aa486a4b7e9f91.jpeg', 40);
INSERT INTO `recipestep` VALUES (344, 8, ' 取一勺兑温水搅匀，每天给宝宝喝点。', 'https://cp1.douguo.com/upload/caiku/5/2/d/200_520df8ef4d70178d32ff3e22c7a07e3d.jpeg', 40);
INSERT INTO `recipestep` VALUES (345, 9, ' 止咳润肺很有帮助。', 'https://cp1.douguo.com/upload/caiku/a/0/b/200_a075e45442ec371989451e1db9ad523b.jpeg', 40);
INSERT INTO `recipestep` VALUES (346, 10, ' 家里如果有电炖锅直接隔水炖8-10小时会更好。', 'https://cp1.douguo.com/upload/caiku/9/a/7/200_9aa59c00ce2c4b9c30f4318bb6872627.jpeg', 40);
INSERT INTO `recipestep` VALUES (347, 11, ' 成品。', 'https://cp1.douguo.com/upload/caiku/3/8/a/200_385d480838c13d87e3bb54c422801c5a.jpeg', 40);
INSERT INTO `recipestep` VALUES (348, 1, ' 依配方表量取材料，自制炼乳20克。', 'https://cp1.douguo.com/upload/caiku/4/9/1/200_498537fd215b3ba5e65ff0e4a5a660f1.jpg', 38);
INSERT INTO `recipestep` VALUES (349, 2, ' 加入酸奶，充分混合均匀。', 'https://cp1.douguo.com/upload/caiku/6/e/4/200_6e697bd07412bcad5acd39449630d124.jpg', 38);
INSERT INTO `recipestep` VALUES (350, 3, ' 最后倒入奶粉，揉成表面光滑的奶团即可。', 'https://cp1.douguo.com/upload/caiku/6/f/f/200_6fe4632e87a95a672c2e665f8114da3f.jpg', 38);
INSERT INTO `recipestep` VALUES (351, 4, ' 在硅胶垫上撒一些奶粉，用擀面杖擀成2-3mm厚度的薄片，用翻糖摸具压出各种漂亮的花型。', 'https://cp1.douguo.com/upload/caiku/1/d/7/200_1d5b0487efad8ce1b260cfd36d961667.jpg', 38);
INSERT INTO `recipestep` VALUES (352, 5, ' 烤箱预热70度，3D风，烘烤90分钟，直至奶片完全烘干。', 'https://cp1.douguo.com/upload/caiku/e/5/5/200_e5379727297c9463410ae145567065f5.jpg', 38);
INSERT INTO `recipestep` VALUES (353, 6, ' 小奶片。', 'https://cp1.douguo.com/upload/caiku/c/8/b/200_c88891b1337336c6720b5fa93750d1cb.jpg', 38);
INSERT INTO `recipestep` VALUES (354, 7, ' 成品图。', 'https://cp1.douguo.com/upload/caiku/5/6/c/200_566748671014656cd5d4cd476b640d1c.jpg', 38);
INSERT INTO `recipestep` VALUES (355, 1, ' 冰牛奶+中筋面粉+细砂糖+玉米油+酵母和成一个光滑分面团，不仅仅要表面', 'https://cp1.douguo.com/upload/caiku/a/b/3/200_ab12f40c7191b9cb1815e29d3ab99ff3.jpg', 45);
INSERT INTO `recipestep` VALUES (356, 2, ' 切开后也是无气孔的，这样才是一个完美的面团。', 'https://cp1.douguo.com/upload/caiku/7/7/f/200_779b4b5b658524ac2f447f32fd60832f.jpg', 45);
INSERT INTO `recipestep` VALUES (357, 3, ' 30g做白面团，5g+一点点红曲粉=粉红面团，10g+抹茶粉=绿色面团，5g+多一点竹炭粉=黑色面团，剩下的加少量竹炭粉变成灰色面团', 'https://cp1.douguo.com/upload/caiku/7/9/c/200_790a5a6791088838617efeb304da3d6c.jpg', 45);
INSERT INTO `recipestep` VALUES (358, 4, ' 灰色的面团分出20g包好保鲜膜待用，其他的平均分成6个，约40g每个，滚圆', 'https://cp1.douguo.com/upload/caiku/1/d/d/200_1d5911ebb28c05300bf53e5d22d9be0d.jpg', 45);
INSERT INTO `recipestep` VALUES (359, 5, ' 擀开成椭圆形，长度约10cm，宽度约7cm', 'https://cp1.douguo.com/upload/caiku/b/f/4/200_bff3dfa51f29756832c943a3dd598d84.jpg', 45);
INSERT INTO `recipestep` VALUES (360, 6, ' 在中间放上豆沙和雪糕棍子', 'https://cp1.douguo.com/upload/caiku/9/a/b/200_9af7849c2d30dff5759123d8ecbd9d1b.jpg', 45);
INSERT INTO `recipestep` VALUES (361, 7, ' 收口方式如图，一定要捏紧。', 'https://cp1.douguo.com/upload/caiku/3/b/6/200_3b5ff45b394f5e58ffb143987cfceda6.jpg', 45);
INSERT INTO `recipestep` VALUES (362, 8, ' 用刚刚备用的20g面团做出椭圆形耳朵', 'https://cp1.douguo.com/upload/caiku/6/5/f/200_65e121f1213c9c5ef91ade35d94300df.jpg', 45);
INSERT INTO `recipestep` VALUES (363, 9, ' 白色面团3g左右擀开成椭圆形，约3cm左右，是龙猫的肚皮', 'https://cp1.douguo.com/upload/caiku/5/7/1/200_579057c5be3549d57e2f2245981e2281.jpg', 45);
INSERT INTO `recipestep` VALUES (364, 10, ' 粘合在龙猫身体上', 'https://cp1.douguo.com/upload/caiku/7/d/e/200_7d67053d68c945ce4b36585bffe7113e.jpg', 45);
INSERT INTO `recipestep` VALUES (365, 11, ' 用白色面团和黑色的做胡子、眼睛、鼻子', 'https://cp1.douguo.com/upload/caiku/7/a/e/200_7abd02fbea7dbd4f603e0601a544237e.jpg', 45);
INSERT INTO `recipestep` VALUES (366, 12, ' 肚子上的花纹比较细小，就要用牙签作为辅助，也可以做不同表情的龙猫，我还做了腮红，就是粉红色面团', 'https://cp1.douguo.com/upload/caiku/7/8/7/200_78d976428ac3e938a778420d2ecba457.jpg', 45);
INSERT INTO `recipestep` VALUES (367, 13, ' 用模具压出叶子的形状，如果没有模具就用绿色面团搓成橄榄状，擀扁后中间压出压痕就可以。', 'https://cp1.douguo.com/upload/caiku/b/1/6/200_b1007145aa2a6f469c229e45395ced96.jpg', 45);
INSERT INTO `recipestep` VALUES (368, 14, ' 龙猫就完成造型啦，就开始室温发酵了，发酵时间25min左右，我家室温今天是29度，湿度60，这个要根据自己实际情况调整', 'https://cp1.douguo.com/upload/caiku/7/0/1/200_70cf9e1cee38edd29e1d3216f99744f1.jpg', 45);
INSERT INTO `recipestep` VALUES (369, 15, ' 15.冷水上锅，大火煮开后转中火，一共15min，关火焖2min即可。', 'https://cp1.douguo.com/upload/caiku/2/c/c/200_2ccb89b3a34dcaf798bc31430b6f884c.jpg', 45);
INSERT INTO `recipestep` VALUES (370, 1, ' 提前准备好所有食材，吉利丁凉水泡软备用', 'https://cp1.douguo.com/upload/caiku/4/5/8/200_454fec9fc5a746d30d0a3cefc8080fc8.jpeg', 51);
INSERT INTO `recipestep` VALUES (371, 2, ' 第一步，法芙娜黑巧克力隔水融化。', 'https://cp1.douguo.com/upload/caiku/6/7/2/200_67c6e8738d5c6ef1ddfe15a9b0f62d82.jpeg', 51);
INSERT INTO `recipestep` VALUES (372, 3, ' 用牙签，挑出少许，在狗狗模具上，“点”出眼睛，鼻子，爪爪，或其他你想要的地方如身上的斑点，尾巴等……', 'https://cp1.douguo.com/upload/caiku/d/d/c/200_dd77c7594332768c930048f65f6ae65c.jpeg', 51);
INSERT INTO `recipestep` VALUES (373, 4, ' 泡软的吉利丁片放入加热到温热的牛奶，倒入第一步隔水融化好的巧克力', 'https://cp1.douguo.com/upload/caiku/c/4/a/200_c468328a89895f9b6597463e4241717a.jpeg', 51);
INSERT INTO `recipestep` VALUES (374, 5, ' 搅拌均匀，顺滑无颗粒。', 'https://cp1.douguo.com/upload/caiku/b/3/b/200_b3c261ed674f7a41dbb6b984daf0206b.jpeg', 51);
INSERT INTO `recipestep` VALUES (375, 6, ' 淡奶油打发，到出现少许纹路，变浓稠但是依然有流动性的六分发，这个时候，将淡奶油和放凉不烫手的巧克力牛奶液一起，搅拌均匀。', 'https://cp1.douguo.com/upload/caiku/8/7/7/200_87d33dfded77bcc92a9e0ee47245e207.jpeg', 51);
INSERT INTO `recipestep` VALUES (376, 7, ' 倒入模具中倒满，用刮刀刮平表面，送入冰箱冷冻！过夜！或急冻八小时左右。', 'https://cp1.douguo.com/upload/caiku/f/5/5/200_f5843339fc0fd1f8fdbaf1eecfe8a155.jpeg', 51);
INSERT INTO `recipestep` VALUES (377, 8, ' 取出，脱模。', 'https://cp1.douguo.com/upload/caiku/c/4/9/200_c4d859f43e499800738b268e70589459.jpeg', 51);
INSERT INTO `recipestep` VALUES (378, 9, ' 摆盘，就可以直接吃了，也可以在慕斯液中加入戚风胚等做夹层，给慕斯带来口感上更丰富的层次，没有也可以不放。', 'https://cp1.douguo.com/upload/caiku/8/4/6/200_845d86abb76e4d470acf95d4c0308a36.jpeg', 51);
INSERT INTO `recipestep` VALUES (379, 10, ' 给你一只小狗狗真的舍得吃吗。', 'https://cp1.douguo.com/upload/caiku/d/7/1/200_d77308ff2da4f9d66a6d6cf6a3dfe761.jpeg', 51);
INSERT INTO `recipestep` VALUES (380, 1, ' 黄油软化以后加入糖粉，用电动打蛋器打发。分2次加入蛋液，继续打发。打发到黄油呈现蓬松的状态。', 'https://cp1.douguo.com/upload/caiku/1/b/f/200_1b348325ef429762775ddec11db2edaf.jpg', 56);
INSERT INTO `recipestep` VALUES (381, 2, ' 低筋面粉过筛后，和奶粉、椰浆粉混合在一起，倒入黄油里。', 'https://cp1.douguo.com/upload/caiku/f/e/7/200_fee769691f9c875ec6f0864b7e20e5a7.jpg', 56);
INSERT INTO `recipestep` VALUES (382, 3, ' 用刮刀拌匀，成为面糊（这是一份稍微有点干干的面糊，但可以顺利的揉成小圆球。请根据实际情况酌情调整配料的用量，如果面糊太干，可以多加一些鸡蛋；相反，面糊太稀可以多加一点点面粉）。', 'https://cp1.douguo.com/upload/caiku/7/0/0/200_70a72fd9efac05b8d26b42406f7a56c0.jpg', 56);
INSERT INTO `recipestep` VALUES (383, 4, ' 取一小块面糊，用手揉成小圆球。', 'https://cp1.douguo.com/upload/caiku/3/9/1/200_39a5eab376c845582221e9ee31fa57b1.jpg', 56);
INSERT INTO `recipestep` VALUES (384, 5, ' 将小圆球压扁，成为小圆饼的形状，摆入烤盘里。', 'https://cp1.douguo.com/upload/caiku/b/a/6/200_badafb20d94286448df64a860a465116.jpg', 56);
INSERT INTO `recipestep` VALUES (385, 6, ' 在小圆饼表面刷一层鸡蛋液，放入预热好上下火170℃的烤箱，烤18分钟左右，小圆饼表面呈现金黄色即可出炉。', 'https://cp1.douguo.com/upload/caiku/d/e/e/200_de3416413b6f457cd01250d600b0610e.jpg', 56);
INSERT INTO `recipestep` VALUES (386, 7, ' 成品图。', 'https://cp1.douguo.com/upload/caiku/7/3/2/200_7363e09256e959d67489573b583662b2.jpg', 56);
INSERT INTO `recipestep` VALUES (387, 1, ' 藕去皮收拾干净，努力切成薄片片，扔加了醋或者盐的水里泡着先', 'https://cp1.douguo.com/upload/caiku/e/6/1/200_e6d44ce6517e18193660235751490151.jpg', 36);
INSERT INTO `recipestep` VALUES (388, 2, ' 根据个人口味往两份面粉一份淀粉里加香料粉和一丢丢小苏打', 'https://cp1.douguo.com/upload/caiku/c/f/0/200_cf098f2f1221406bc346063da30bd650.jpg', 36);
INSERT INTO `recipestep` VALUES (389, 3, ' 搅和匀了磕上个鸡蛋，随便划拉两下', 'https://cp1.douguo.com/upload/caiku/b/2/a/200_b2f080c4a2c3e78d245ceb3cba3edf5a.jpg', 36);
INSERT INTO `recipestep` VALUES (390, 4, ' 看情况往里加水，搅和成没有明显面疙瘩用筷子挑起来能以流畅直线状态落回碗里的糊糊', 'https://cp1.douguo.com/upload/caiku/6/b/b/200_6bc59ff72fb6f5fdbe91e0d47cf813bb.jpg', 36);
INSERT INTO `recipestep` VALUES (391, 5, ' 藕从水里捞出来，想办法去一下表面水分，看情况补盐', 'https://cp1.douguo.com/upload/caiku/d/2/9/200_d265b1062af0b75fa280e1ec7c3c7099.jpg', 36);
INSERT INTO `recipestep` VALUES (392, 6, ' 锅里倒油烧到五六成热(大概是油面稍微能看到些青烟的程度)，收拾好的藕片裹上层糊糊，温���的放到油里', 'https://cp1.douguo.com/upload/caiku/4/a/d/200_4a9aed42bd5b457a14ab6d928cd7008d.jpg', 36);
INSERT INTO `recipestep` VALUES (393, 7, ' 中小火炸到两面黄就可以捞出来继续炸下一锅啦，记得时不时给藕们翻个面', 'https://cp1.douguo.com/upload/caiku/0/9/d/200_095f21fd815e87f19218c6294062727d.jpg', 36);
INSERT INTO `recipestep` VALUES (394, 8, ' 炸好了直接吃，或者看心情撒粉蘸酱，一次吃不完记得装袋扔冰箱', 'https://cp1.douguo.com/upload/caiku/4/7/e/200_479c580b66a5b87485d4c4583a10442e.jpg', 36);
INSERT INTO `recipestep` VALUES (395, 9, ' 来，张嘴~', 'https://cp1.douguo.com/upload/caiku/2/0/9/200_20d28cdfaaff45612297a5e469e30b49.jpg', 36);
INSERT INTO `recipestep` VALUES (396, 10, ' 非常努力也没能把藕切薄担心它不熟或者没盐味儿的胖又，可以把第一步的泡水换成扔盐水里煮个几分钟', 'https://cp1.douguo.com/upload/caiku/2/4/b/200_24fad7a7781e718353c41bf41791815b.jpg', 36);
INSERT INTO `recipestep` VALUES (397, 11, ' 其实是个不健康小零嘴，多吃两片就腻了那种，等我明天研究个别的吃法抢救一下吧', 'https://cp1.douguo.com/upload/caiku/f/c/c/200_fc3aeb29cacdc4c885ed2378551cf98c.jpg', 36);
INSERT INTO `recipestep` VALUES (398, 12, ' 走了哟，明天见~', 'https://cp1.douguo.com/upload/caiku/a/1/9/200_a1e18e7c0918d31d8f6e9b4a7571a2f9.jpg', 36);
INSERT INTO `recipestep` VALUES (399, 1, ' 老五样就是和面成一个超级光滑的面团', 'https://cp1.douguo.com/upload/caiku/a/4/0/200_a457bf17ff745866b7f1b0992d6fe1b0.jpg', 43);
INSERT INTO `recipestep` VALUES (400, 2, ' 调色：南瓜粉+60g白面团=黄色面团，110g白面团，5g左右的白面团，分别是粉色，红色，黑色，蓝色，紫色，绿色。', 'https://cp1.douguo.com/upload/caiku/5/5/3/200_5566c3fe3a5785fcf22d2e21a2d9ca53.jpg', 43);
INSERT INTO `recipestep` VALUES (401, 3, ' 【月亮做法】30g黄色面团+馅料15g，包好，然后用黑色和粉色做表情', 'https://cp1.douguo.com/upload/caiku/1/e/0/200_1e92eb6f51e019fe87467b24a0986910.jpg', 43);
INSERT INTO `recipestep` VALUES (402, 4, ' 【兔子做法】10g面团滚圆后擀成牛舌状，长度5cm左右，宽度1.5cm', 'https://cp1.douguo.com/upload/caiku/6/e/0/200_6eae2f9e37031726310578815b663050.jpg', 43);
INSERT INTO `recipestep` VALUES (403, 5, ' 捏出如图四肢，我用剪刀剪了一下，然后捏的', 'https://cp1.douguo.com/upload/caiku/a/1/5/200_a1d176de959ad538136b02d37e3813b5.jpg', 43);
INSERT INTO `recipestep` VALUES (404, 6, ' 抹点水粘合在月亮上，做好尾巴。', 'https://cp1.douguo.com/upload/caiku/6/a/9/200_6a70941be1e42e4b78070411ac3847b9.jpg', 43);
INSERT INTO `recipestep` VALUES (405, 7, ' 兔子脑袋10g左右面团滚圆，然后粉色做眼睛，红色鼻子和舌头，面颊用一点白色面团滚圆后粘合', 'https://cp1.douguo.com/upload/caiku/4/5/3/200_457f254c2409f44a08c801c67dfcf853.jpg', 43);
INSERT INTO `recipestep` VALUES (406, 8, ' 白色面团+粉色面团擀成长条，一分为二，兔子耳朵', 'https://cp1.douguo.com/upload/caiku/a/0/c/200_a0117252c8a95f7b1910990f17774a1c.jpg', 43);
INSERT INTO `recipestep` VALUES (407, 9, ' 底部收拢捏紧后黏在兔子头上即可。', 'https://cp1.douguo.com/upload/caiku/8/3/9/200_8354ee6d2f3592523ff6da9f87973f49.jpg', 43);
INSERT INTO `recipestep` VALUES (408, 10, ' 【兔子2做法】20g黄色面团滚圆后擀成薄厚一致的圆形，就是月亮，直接6cm左右', 'https://cp1.douguo.com/upload/caiku/f/8/4/200_f8d3e5ea99cb8ca110d44e58b6d6d184.jpg', 43);
INSERT INTO `recipestep` VALUES (409, 11, ' 用翻糖工具压出如图形状，然后用刀切除多余部分，就是趴趴兔的身体', 'https://cp1.douguo.com/upload/caiku/3/d/b/200_3d4e2e143b7981a3d6a8327e0512f06b.jpg', 43);
INSERT INTO `recipestep` VALUES (410, 12, ' 抹点水粘合在月亮上，造型如图，并且做好尾巴', 'https://cp1.douguo.com/upload/caiku/1/1/7/200_1167f24fdbfbfc0037cdd4c363045777.jpg', 43);
INSERT INTO `recipestep` VALUES (411, 13, ' 用蓝色面团搓成13cm左右长条，轻轻压扁，做成玉兔的绸带。', 'https://cp1.douguo.com/upload/caiku/0/7/d/200_070bf88ca214e5c03d4fd43fa9fcbb1d.jpg', 43);
INSERT INTO `recipestep` VALUES (412, 14, ' 用10g面团做兔子脑袋，耳朵也是之前兔子1做法，只不过换成大红色，然后依次做好眼睛腮红鼻子和嘴巴', 'https://cp1.douguo.com/upload/caiku/d/2/7/200_d2f63dbc26127a96eed899d9479c5e17.jpg', 43);
INSERT INTO `recipestep` VALUES (413, 15, ' 【月饼包子做法】30g白色面团滚圆后包入15g馅料，收口要完美哦', 'https://cp1.douguo.com/upload/caiku/f/1/3/200_f19770eae504ce2d214fcea6160bec43.jpg', 43);
INSERT INTO `recipestep` VALUES (414, 16, ' 利用月饼模具压一压面团，不要太用力', 'https://cp1.douguo.com/upload/caiku/1/5/a/200_152ab768bcc52bda0cc06344d2b0c96a.jpg', 43);
INSERT INTO `recipestep` VALUES (415, 17, ' 压出来的月饼周围花边不明显，用刮板再加工一下，用力压进去', 'https://cp1.douguo.com/upload/caiku/5/6/6/200_56e94cb674b9ef2313522b9670c5c5e6.jpg', 43);
INSERT INTO `recipestep` VALUES (416, 18, ' 用刮板加工后就是这样压痕很明显的，这样蒸出来才有月饼的花边', 'https://cp1.douguo.com/upload/caiku/f/a/d/200_fa402076d2eebcd94575007f2c9522fd.jpg', 43);
INSERT INTO `recipestep` VALUES (417, 19, ' 绿色面团搓成细条做藤蔓，叶子', 'https://cp1.douguo.com/upload/caiku/0/0/f/200_0082c13149aadad57a30b7addcf3e40f.jpg', 43);
INSERT INTO `recipestep` VALUES (418, 20, ' 红色，紫色，蓝色，黄色，粉色用模具压出小花粘合即可，没什么技术含量', 'https://cp1.douguo.com/upload/caiku/4/1/0/200_4104395354846752f8e64514ac6d65f0.jpg', 43);
INSERT INTO `recipestep` VALUES (419, 21, ' 室温28度，发酵30min，这个因人而异，冷水上锅，大火煮开后转中火，15min，关火，焖2min开盖即可', 'https://cp1.douguo.com/upload/caiku/4/a/6/200_4a8bb8db648ea2b93dbfba2ab470ff56.jpg', 43);
INSERT INTO `recipestep` VALUES (420, 1, ' 胡萝卜擦碎', 'https://cp1.douguo.com/upload/caiku/9/d/a/200_9d161b4435d66f6610f3f3ee8803738a.png', 50);
INSERT INTO `recipestep` VALUES (421, 2, ' 面粉加适量清水，搅拌成面糊。', 'https://cp1.douguo.com/upload/caiku/c/c/9/200_cc8c829959264c8b16ca9e3d5251ba59.png', 50);
INSERT INTO `recipestep` VALUES (422, 3, ' 倒入擦好的胡萝卜碎，搅拌均匀。', 'https://cp1.douguo.com/upload/caiku/7/1/5/200_71ffde8d246e60c68f0b726f1b491cf5.png', 50);
INSERT INTO `recipestep` VALUES (423, 4, ' 鸡蛋打散，搅拌均匀。', 'https://cp1.douguo.com/upload/caiku/1/4/9/200_143eab4d11181aacf062f00b8c03b309.png', 50);
INSERT INTO `recipestep` VALUES (424, 5, ' 放入葱花，搅拌均匀。', 'https://cp1.douguo.com/upload/caiku/e/a/8/200_ea22ab42a124041bf04cec377c1d6b88.png', 50);
INSERT INTO `recipestep` VALUES (425, 6, ' 加入适量食盐。', 'https://cp1.douguo.com/upload/caiku/9/8/d/200_9825d7806736088dda69e1c95ba6f9bd.png', 50);
INSERT INTO `recipestep` VALUES (426, 7, ' 锅底刷一层食用油。', 'https://cp1.douguo.com/upload/caiku/c/b/6/200_cb4d0f845444b5e1ecec12fec66a9296.png', 50);
INSERT INTO `recipestep` VALUES (427, 8, ' 倒入一勺面糊。铺平。', 'https://cp1.douguo.com/upload/caiku/8/8/5/200_88b1217d24864e3d2fb169f16f9a8525.png', 50);
INSERT INTO `recipestep` VALUES (428, 9, ' 小火煎至底部上色，翻面，继续煎至表面上色即可。', 'https://cp1.douguo.com/upload/caiku/2/a/5/200_2ab1fef01d9231814abcb8021a30b505.png', 50);
INSERT INTO `recipestep` VALUES (429, 10, ' 完成。', 'https://cp1.douguo.com/upload/caiku/2/8/0/200_28a8d758ba1ea6d11f45d4f040b5d590.png', 50);
INSERT INTO `recipestep` VALUES (430, 1, ' 根据个人喜好选肉，比如菜谱【酒葱胡椒醋油鸡】里那种水煮鸡肉，切成自己喜欢的样子，洋葱西红柿收拾干净比着鸡肉切一切', 'https://cp1.douguo.com/upload/caiku/8/5/b/200_857b23986b74c42c51dd6d0313115c3b.jpg', 37);
INSERT INTO `recipestep` VALUES (431, 2, ' 抓把甜玉米，切点葱椒蒜', 'https://cp1.douguo.com/upload/caiku/f/d/5/200_fd2dbe6ef947adfe67b8d02404300ff5.jpg', 37);
INSERT INTO `recipestep` VALUES (432, 3, ' 锅烧热倒油扔西红柿，中小火煎软了扔洋葱和一半的蒜', 'https://cp1.douguo.com/upload/caiku/f/8/6/200_f8f7c4f770cc03312ce16e49bc3eb526.jpg', 37);
INSERT INTO `recipestep` VALUES (433, 4, ' 扒拉香了扔鸡肉，根据个人喜好加一咕嘟生抽和一哆嗦糖', 'https://cp1.douguo.com/upload/caiku/7/8/3/200_787c4ddc6580a23a8d9adb406fc02443.jpg', 37);
INSERT INTO `recipestep` VALUES (434, 5, ' 搅和匀了扔提前切好的剩饼，操作方���基本跟菜谱【碱香荤油卷发饼】里一样但是撒了粉没刷油那种', 'https://cp1.douguo.com/upload/caiku/3/7/a/200_37342723c4a261db4296f1939522661a.jpg', 37);
INSERT INTO `recipestep` VALUES (435, 6, ' 咔咔扒拉匀，加差不多跟饼饼齐平的水，根据个人口味决定要不要补盐或者生抽', 'https://cp1.douguo.com/upload/caiku/7/a/8/200_7ae43d4bb05f2f029f826c5c3c173468.jpg', 37);
INSERT INTO `recipestep` VALUES (436, 7, ' 咕嘟个两三分钟扔玉米和椒椒', 'https://cp1.douguo.com/upload/caiku/1/5/7/200_15f3b67c1a12f611bd462f2c787ef647.jpg', 37);
INSERT INTO `recipestep` VALUES (437, 8, ' 搅和匀了揪粒尝尝，确认饼饼热透并且有味儿了扔葱和剩下的蒜', 'https://cp1.douguo.com/upload/caiku/9/f/2/200_9fa5844810d8c3a70e17325b26deb2f2.jpg', 37);
INSERT INTO `recipestep` VALUES (438, 9, ' 随便搅和两下关火，根据个人喜好淋几滴香油', 'https://cp1.douguo.com/upload/caiku/2/0/f/200_209145ec372ac31fc6fdb4fde5cd250f.jpg', 37);
INSERT INTO `recipestep` VALUES (439, 10, ' 根据自己饭量往外盛，带不带汤请随意', 'https://cp1.douguo.com/upload/caiku/6/6/3/200_666d03a7378bee1d035cf587a7640673.jpg', 37);
INSERT INTO `recipestep` VALUES (440, 11, ' 来，张嘴~', 'https://cp1.douguo.com/upload/caiku/1/d/4/200_1d27113ee8bab1939a36e1c2bd8f1934.jpg', 37);
INSERT INTO `recipestep` VALUES (441, 12, ' 看起来乱七八糟的其实真的很好吃，饼饼有劲又有味儿，鸡肉软嫩菜粒水脆，每口都有新感觉(？？我又在说啥)', 'https://cp1.douguo.com/upload/caiku/3/7/b/200_37a6def83ab461ee3d5d328f6ea144fb.jpg', 37);
INSERT INTO `recipestep` VALUES (442, 13, ' 不用特意比着第五步给的菜谱烙饼，家里剩啥用啥，锅饼或者各类死面烙饼都可以', 'https://cp1.douguo.com/upload/caiku/2/d/6/200_2d4c3095cb687c6a38175b4e717fc236.jpg', 37);
INSERT INTO `recipestep` VALUES (443, 14, ' 走了哟，明天见~', 'https://cp1.douguo.com/upload/caiku/f/b/f/200_fb2e5689ab7ceaf67c04f848bd8e1bef.jpg', 37);
INSERT INTO `recipestep` VALUES (444, 1, ' 鸡蛋65g大鸡蛋，然后蛋白和蛋黄分离，蛋白放入无油无水干净的盆里，使用的模具用7寸中空或6寸活底', 'https://cp1.douguo.com/upload/caiku/a/a/4/200_aa0e88fca84056c12f7c34a65c776964.jpg', 46);
INSERT INTO `recipestep` VALUES (445, 2, ' 在一个干净的盆里放入牛奶，玉米油和盐', 'https://cp1.douguo.com/upload/caiku/a/c/8/200_acbe5e0a3232c6c11a0600c2b73a4318.jpg', 46);
INSERT INTO `recipestep` VALUES (446, 3, ' 用蛋抽搅拌均匀', 'https://cp1.douguo.com/upload/caiku/6/f/8/200_6f3041f34e5612295ec792868e5752c8.jpg', 46);
INSERT INTO `recipestep` VALUES (447, 4, ' 筛入低粉，然后用蛋抽Z字型搅拌至无干粉，记得是Z字型，这样避免起劲', 'https://cp1.douguo.com/upload/caiku/4/8/e/200_481ec80b77febcf36621b1edc53d162e.jpg', 46);
INSERT INTO `recipestep` VALUES (448, 5, ' 放入3个蛋黄，依然用Z字型搅拌均匀', 'https://cp1.douguo.com/upload/caiku/5/9/b/200_59e69f9b2a63c0f2d09dca41a077094b.jpg', 46);
INSERT INTO `recipestep` VALUES (449, 6, ' 把面糊过筛，这是细腻口感的关键', 'https://cp1.douguo.com/upload/caiku/8/5/c/200_851c55124425406a8b76cda575ed176c.jpg', 46);
INSERT INTO `recipestep` VALUES (450, 7, ' 最后放入肉松、黑胡椒碎、和迷迭香碎，如果没有或者不喜欢黑胡椒碎和迷迭香碎就忽略。用刮刀翻拌均匀即可', 'https://cp1.douguo.com/upload/caiku/a/2/3/200_a2d4c92540464f414f371cd53505daa3.jpg', 46);
INSERT INTO `recipestep` VALUES (451, 8, ' 分三次加入细砂糖，打发蛋白，打发蛋白期间预热烤箱，蛋白打发时加入几滴白醋或柠檬汁，打发至中性发泡状态，就是提起打蛋头，呈现小弯头状态。不要过度打发', 'https://cp1.douguo.com/upload/caiku/d/1/b/200_d1a734b4cea953138038561869789d0b.jpg', 46);
INSERT INTO `recipestep` VALUES (452, 9, ' 取三分之一蛋白加入蛋黄糊，用刮刀翻拌均匀。是翻拌和一字型手法', 'https://cp1.douguo.com/upload/caiku/3/4/d/200_34f24df8594fe810748c277237d6760d.jpg', 46);
INSERT INTO `recipestep` VALUES (453, 10, ' 再加入1/3蛋白，用刮刀翻拌均匀。是翻拌和一字型手法', 'https://cp1.douguo.com/upload/caiku/8/c/d/200_8c077371225d1856aaee585ec8949eed.jpg', 46);
INSERT INTO `recipestep` VALUES (454, 11, ' 最后把剩下的1/3蛋白也是如此手法，翻拌均匀后倒入模具，即可。', 'https://cp1.douguo.com/upload/caiku/6/2/8/200_62ed700f045f786d6bffe6c1b1f66398.jpg', 46);
INSERT INTO `recipestep` VALUES (455, 12, ' 轻轻的震出气泡和表面均匀', 'https://cp1.douguo.com/upload/caiku/f/4/b/200_f41df43475ef720bf64033a7dfde0e1b.jpg', 46);
INSERT INTO `recipestep` VALUES (456, 13, ' 放进预热好的烤箱，中下层，上下火170度50min即可，出炉后，倒扣至完全冷却后脱模', 'https://cp1.douguo.com/upload/caiku/3/b/4/200_3b05446bdc149dc176f4fdc8bda87d64.jpg', 46);
INSERT INTO `recipestep` VALUES (457, 1, ' 香葱切小段。', 'https://cp1.douguo.com/upload/caiku/2/4/9/200_2423fb1bf851194b66e5808a67b13249.jpeg', 58);
INSERT INTO `recipestep` VALUES (458, 2, ' 适量水烧开，放入虾仁焯水（焯虾的水不要全倒掉，留一些备用）。', 'https://cp1.douguo.com/upload/caiku/9/7/b/200_979dbaa518ce8d7e20c5a749bdd5d5eb.jpeg', 58);
INSERT INTO `recipestep` VALUES (459, 3, ' 适量油加热，油稍微放多一点。', 'https://cp1.douguo.com/upload/caiku/d/0/8/200_d046df9fb2e7c15c9707adb4a5118648.jpeg', 58);
INSERT INTO `recipestep` VALUES (460, 4, ' 趁鸡蛋还没凝固，将虾仁倒入鸡蛋液中。', 'https://cp1.douguo.com/upload/caiku/9/f/0/200_9faf3586c4e5c0a5d53429174b62ab20.jpeg', 58);
INSERT INTO `recipestep` VALUES (461, 5, ' 倒入焯虾的水1汤勺。', 'https://cp1.douguo.com/upload/caiku/c/3/5/200_c32f7af0fc56541f83f9756f214cfad5.jpeg', 58);
INSERT INTO `recipestep` VALUES (462, 6, ' 少许鸡精提鲜。', 'https://cp1.douguo.com/upload/caiku/4/b/8/200_4b12ba990a46f55cc89a9afc7b20a9c8.jpeg', 58);
INSERT INTO `recipestep` VALUES (463, 7, ' 适量盐调味。', 'https://cp1.douguo.com/upload/caiku/6/3/c/200_63ef87be054777fe91f22d0b8e0d706c.jpeg', 58);
INSERT INTO `recipestep` VALUES (464, 8, ' 翻炒均匀。', 'https://cp1.douguo.com/upload/caiku/8/a/f/200_8abe7c0bd6eb76a54f6eec3d721c702f.jpeg', 58);
INSERT INTO `recipestep` VALUES (465, 9, ' 放入香葱翻炒一下即可。', 'https://cp1.douguo.com/upload/caiku/6/1/a/200_61c2350f2da7226d81ead68138aa39ba.jpeg', 58);
INSERT INTO `recipestep` VALUES (466, 10, ' 清淡又鲜美，营养丰富。', 'https://cp1.douguo.com/upload/caiku/4/f/f/200_4fda19ba8b30b2e14b4ce7151ec1caef.jpeg', 58);
INSERT INTO `recipestep` VALUES (467, 11, ' 成品图。', 'https://cp1.douguo.com/upload/caiku/c/0/5/200_c00773a60157984aa41b5d48711539a5.jpeg', 58);
INSERT INTO `recipestep` VALUES (468, 1, ' 1个红洋葱、5个绿尖椒切块，20朵鲜香菇切片，1棵芹菜、16个干红辣椒、1根大葱切段，1块姜切丝，5瓣大蒜去皮备用。', 'https://cp1.douguo.com/upload/caiku/6/5/8/200_65592484b534b2f381a29cb98e8cd998.jpg', 39);
INSERT INTO `recipestep` VALUES (469, 2, ' 6个手枪腿和10个鸡翅切小块放入碗中，加3勺料酒、2大勺生抽、1小勺白胡椒粉充分��匀，腌制10分钟左右。', 'https://cp1.douguo.com/upload/caiku/a/2/f/200_a255bb41c00af7cb1382f48261c0bccf.jpg', 39);
INSERT INTO `recipestep` VALUES (470, 3, ' 平盘内倒入适量油，把鸡肉煎至金黄，盛出备用。', 'https://cp1.douguo.com/upload/caiku/3/7/a/200_37fd2b0028778b297cb4006f2dd75e7a.jpg', 39);
INSERT INTO `recipestep` VALUES (471, 4, ' 深盘倒油烧至6成热，倒入1把花椒、葱姜蒜和干红辣椒炒香后，加入两大勺郫县豆瓣酱煸出红油。', 'https://cp1.douguo.com/upload/caiku/d/d/8/200_dde23d0da6009e9f2aad3dd9d242ec58.jpg', 39);
INSERT INTO `recipestep` VALUES (472, 5, ' 放入鸡肉翻炒，倒入2大勺生抽、1小勺老抽、1小勺白糖和1大勺甜面酱继续翻炒，然后分次倒入1瓶啤酒（可根据实际情况进行调整），大火煮10分钟。', 'https://cp1.douguo.com/upload/caiku/c/f/9/200_cfb6c5b181cc8d3820f22ed7f2c96249.jpg', 39);
INSERT INTO `recipestep` VALUES (473, 6, ' 放入切好的芹菜段、洋葱块和香菇片，大火煮5分钟收汁，最后倒适量青尖椒，加盖焖煮1分钟。', 'https://cp1.douguo.com/upload/caiku/0/c/b/200_0c8fe0cf2a400b42e925fcca01a3c0cb.gif', 39);
INSERT INTO `recipestep` VALUES (474, 7, ' 点缀香菜，家庭版鸡公煲完成！', 'https://cp1.douguo.com/upload/caiku/8/f/3/200_8f5ee05c205c8583ebe4b7dadfdfbad3.jpg', 39);
INSERT INTO `recipestep` VALUES (475, 1, ' 1.揉一个无敌光滑的面团，这个没什么好说啦！', 'https://cp1.douguo.com/upload/caiku/f/1/3/200_f15ba81e4c9359d2a9bff49d60bee2c3.jpg', 35);
INSERT INTO `recipestep` VALUES (476, 2, ' 10g白色，10g黄色，3g黑色，50g可可粉浅棕色，剩下的深棕色是（一点点竹炭粉+可可粉）', 'https://cp1.douguo.com/upload/caiku/7/c/2/200_7c315d0c2e216ebd1d35c568792fe1e2.jpg', 35);
INSERT INTO `recipestep` VALUES (477, 3, ' 20g一个深棕色面团，一共三个滚圆', 'https://cp1.douguo.com/upload/caiku/d/3/0/200_d362e782f66c9407d2282c9156851130.jpg', 35);
INSERT INTO `recipestep` VALUES (478, 4, ' 擀开成长5cm左右宽3cm的椭圆形', 'https://cp1.douguo.com/upload/caiku/f/3/a/200_f3776bd421caf59c659e5fa77f6af72a.jpg', 35);
INSERT INTO `recipestep` VALUES (479, 5, ' 用大拇指和食指捏出猫头鹰耳朵，像猫耳朵，刮板压出压痕', 'https://cp1.douguo.com/upload/caiku/a/5/6/200_a55ce1a9acd0ba1df1f9094b3c74f756.jpg', 35);
INSERT INTO `recipestep` VALUES (480, 6, ' 10g面团 3个，然后擀开成5cm左右圆形做身体', 'https://cp1.douguo.com/upload/caiku/2/c/f/200_2c7a97be6a93ba62bc1f090cc1a5718f.jpg', 35);
INSERT INTO `recipestep` VALUES (481, 7, ' 身体和头叠加粘合', 'https://cp1.douguo.com/upload/caiku/0/7/9/200_0726100adf9e9366c1f43ade243da9d9.jpg', 35);
INSERT INTO `recipestep` VALUES (482, 8, ' 4g左右一个，凭感觉了啊，搓成小丸子，用深棕色和浅棕色面团', 'https://cp1.douguo.com/upload/caiku/a/f/0/200_af37733ddfba37496b8c344c9c65aaa0.jpg', 35);
INSERT INTO `recipestep` VALUES (483, 9, ' 轻轻压扁后用刮板压中线，有点像咖啡豆', 'https://cp1.douguo.com/upload/caiku/d/4/e/200_d4b4fee7b5fdfb147cdc900ed079fb7e.jpg', 35);
INSERT INTO `recipestep` VALUES (484, 10, ' 用黄色面团做脚，如图', 'https://cp1.douguo.com/upload/caiku/e/c/0/200_ecb052d27234bab5e0fc66f4bc66d1c0.jpg', 35);
INSERT INTO `recipestep` VALUES (485, 11, ' 开始从左往右深浅深浅排列羽毛', 'https://cp1.douguo.com/upload/caiku/a/6/1/200_a636fcc5bdb5494cde02c3b5480ca411.jpg', 35);
INSERT INTO `recipestep` VALUES (486, 12, ' 然后一层层叠加，如图', 'https://cp1.douguo.com/upload/caiku/c/1/5/200_c13a0c634aa7437c2f8f614869bf4dd5.jpg', 35);
INSERT INTO `recipestep` VALUES (487, 13, ' 取15g面团搓成6cm左右水滴状', 'https://cp1.douguo.com/upload/caiku/5/4/b/200_5455b3a796938c523ee9d8493cb8cd1b.jpg', 35);
INSERT INTO `recipestep` VALUES (488, 14, ' 刮板压出长-短-长的压痕，做猫头鹰翅膀', 'https://cp1.douguo.com/upload/caiku/3/f/a/200_3f8059b0c54db3f3a391751250b0d30a.jpg', 35);
INSERT INTO `recipestep` VALUES (489, 15, ' 最后做猫头鹰嘴巴，眼睛用白色面团甘边厚用刮板压痕，黑色白色做眼珠', 'https://cp1.douguo.com/upload/caiku/6/8/2/200_68617cdba959a2757381c8d81ee0ec02.jpg', 35);
INSERT INTO `recipestep` VALUES (490, 16, ' 室温20度，发酵40min，1.5倍大小。', 'https://cp1.douguo.com/upload/caiku/8/5/c/200_85853c673fd0b7fab79da330e71fd5cc.jpg', 35);
INSERT INTO `recipestep` VALUES (491, 1, ' 中筋面粉+干酵母+冰牛奶+玉米油+细砂糖揉成一个无敌光滑面团，取15g白面团+南瓜粉=黄色面团、10g白面团+竹炭粉=黑色面团、10g白面团+多一点红曲粉=红色面团、5g白面团+一点点红曲粉=粉红面团、剩下就是白色待用', 'https://cp1.douguo.com/upload/caiku/a/b/e/200_ab2b5a8c98a6a7fa86b377671341dcde.jpg', 55);
INSERT INTO `recipestep` VALUES (492, 2, ' 白面团留20g待用，其他平均分成5份，滚圆', 'https://cp1.douguo.com/upload/caiku/4/7/0/200_47cf20133f757fcc8902571b8ef28cb0.jpg', 55);
INSERT INTO `recipestep` VALUES (493, 3, ' 面团状态如图，像拨壳的鸡蛋，超级光滑白嫩，不能有斑点，或者坑坑洼洼', 'https://cp1.douguo.com/upload/caiku/0/b/2/200_0b6d85469263183c49d6d7066d6eed02.jpg', 55);
INSERT INTO `recipestep` VALUES (494, 4, ' 包入馅料', 'https://cp1.douguo.com/upload/caiku/e/8/7/200_e82144e9da70321feff21509b38cc537.jpg', 55);
INSERT INTO `recipestep` VALUES (495, 5, ' 收口后接口朝下，整形成椭圆形', 'https://cp1.douguo.com/upload/caiku/0/f/c/200_0fa9d20e628eeb941d1579d6310b50cc.jpg', 55);
INSERT INTO `recipestep` VALUES (496, 6, ' 刚刚留下来的20g面团平均分5份，搓圆后，然后整形成橄榄状', 'https://cp1.douguo.com/upload/caiku/d/a/0/200_da6c67144e4167c36788347c49755780.jpg', 55);
INSERT INTO `recipestep` VALUES (497, 7, ' 剪刀一分为二，黏在刚刚包入馅料的椭圆面团上', 'https://cp1.douguo.com/upload/caiku/7/d/9/200_7ddedd47dbcb895ae05233588651c969.jpg', 55);
INSERT INTO `recipestep` VALUES (498, 8, ' 耳朵粘合时稍微抹点水 粘合比较牢固', 'https://cp1.douguo.com/upload/caiku/a/a/0/200_aa79bf0361583b35bdddec930b9e3c50.jpg', 55);
INSERT INTO `recipestep` VALUES (499, 9, ' 黄色面团搓成椭圆形，做Kitty鼻子', 'https://cp1.douguo.com/upload/caiku/7/c/6/200_7cd9d726d39d7120356995495185e2c6.jpg', 55);
INSERT INTO `recipestep` VALUES (500, 10, ' 黑色面团也是椭圆形，做眼睛。', 'https://cp1.douguo.com/upload/caiku/3/2/5/200_32872f3df818c1a8c80ab692c4940435.jpg', 55);
INSERT INTO `recipestep` VALUES (501, 11, ' 黑色面团搓成细条条，一边三根胡子', 'https://cp1.douguo.com/upload/caiku/6/0/b/200_6027a651a4376e773e74302cb7c7df8b.jpg', 55);
INSERT INTO `recipestep` VALUES (502, 12, ' 【老爷胡子做法】黑色面团搓成水滴状，轻轻压扁。即可', 'https://cp1.douguo.com/upload/caiku/f/d/1/200_fdd110c65286f836b83619ad80884011.jpg', 55);
INSERT INTO `recipestep` VALUES (503, 13, ' 【蝴蝶结做法】分别是3个小球球，颜色自己喜欢哦！大概2g左右一个球球', 'https://cp1.douguo.com/upload/caiku/5/0/9/200_5081a978f356b844cf31e06c8be14709.jpg', 55);
INSERT INTO `recipestep` VALUES (504, 14, ' 左右用刮板压一下，如图，然后黏在一起', 'https://cp1.douguo.com/upload/caiku/7/7/2/200_7798118cc79400966a7a6cdb84f38f62.jpg', 55);
INSERT INTO `recipestep` VALUES (505, 15, ' 在摆放蝴蝶结的地方刷点水，蝴蝶结黏上去，其他小花之类的装饰都是自己喜欢啦', 'https://cp1.douguo.com/upload/caiku/0/8/4/200_0832ca169761a1782f152639ff37bcd4.jpg', 55);
INSERT INTO `recipestep` VALUES (506, 16, ' 室温放置15min，冷水上锅，大火煮开后转中火，15min后关火，焖2min开盖子', 'https://cp1.douguo.com/upload/caiku/8/b/3/200_8bbff8873359f62bd10187c1b8d45183.jpg', 55);
INSERT INTO `recipestep` VALUES (507, 1, ' 1头大蒜去皮切末，5根小米椒洗净去蒂切圈。热锅热油中小火爆香蒜末、小米椒圈，倒入1勺生抽、少许盐和糖翻炒匀。', 'https://cp1.douguo.com/upload/caiku/f/f/7/200_ffc1db323d5a372f425ef692bdd87277.jpg', 48);
INSERT INTO `recipestep` VALUES (508, 2, ' 12个香菇洗净去蒂，备用。', 'https://cp1.douguo.com/upload/caiku/6/1/0/200_6176ba5cda558fbad95edecfe8c27b60.jpg', 48);
INSERT INTO `recipestep` VALUES (509, 3, ' 香菇底朝上加入香蒜汁。', 'https://cp1.douguo.com/upload/caiku/e/5/6/200_e53ebdf1ebdf2f039e364ef6b6350286.gif', 48);
INSERT INTO `recipestep` VALUES (510, 4, ' 撒少许孜然粉。', 'https://cp1.douguo.com/upload/caiku/c/7/5/200_c74943d3aa8dcfb16d9dc60f42f04475.jpg', 48);
INSERT INTO `recipestep` VALUES (511, 5, ' 烤箱事先预热200度，并在烤盘里垫上油纸，放入加了酱料的香菇，200度烤8分钟左右。', 'https://cp1.douguo.com/upload/caiku/0/c/9/200_0cd44bc3d1cfa1977523a7f581a629c9.jpg', 48);
INSERT INTO `recipestep` VALUES (512, 6, ' 取出，撒上适量葱花。蒜蓉烤香菇完成！', 'https://cp1.douguo.com/upload/caiku/3/0/6/200_30ee393e7ba054dcb8e31d799c2aa276.gif', 48);
INSERT INTO `recipestep` VALUES (513, 1, ' 准备好食材', 'https://cp1.douguo.com/upload/caiku/f/1/b/200_f132e714e5b908393d24deda00d4961b.jpeg', 47);
INSERT INTO `recipestep` VALUES (514, 2, ' 茄条中放入适量淀粉，让茄子均匀的裹上一层薄粉.', 'https://cp1.douguo.com/upload/caiku/c/6/8/200_c65cf867fb4ed69280f704fd8f6d45b8.jpeg', 47);
INSERT INTO `recipestep` VALUES (515, 3, ' 炸锅中放入适量的菜籽油，烧热至有微微白烟飘起.', 'https://cp1.douguo.com/upload/caiku/6/5/0/200_653f9b58d3869da7491024d68f8f4ff0.jpeg', 47);
INSERT INTO `recipestep` VALUES (516, 4, ' 放入茄条', 'https://cp1.douguo.com/upload/caiku/f/b/6/200_fb9be1698ffb6a2cc294e3b777ef0746.jpeg', 47);
INSERT INTO `recipestep` VALUES (517, 5, ' 炸至表面金黄色捞出备用.', 'https://cp1.douguo.com/upload/caiku/a/e/9/200_ae27947d3d25215fcc47ed2e843dbd19.jpeg', 47);
INSERT INTO `recipestep` VALUES (518, 6, ' 碗中放入两小勺淀粉', 'https://cp1.douguo.com/upload/caiku/6/2/6/200_629366c71a6604f81265a14ae7db2ee6.jpeg', 47);
INSERT INTO `recipestep` VALUES (519, 7, ' 放入适量的水，搅匀备用.', 'https://cp1.douguo.com/upload/caiku/2/5/3/200_25c5e75b25744b6ff1008c4bb5dc3103.jpeg', 47);
INSERT INTO `recipestep` VALUES (520, 8, ' 另一个碗中放入一勺味极鲜', 'https://cp1.douguo.com/upload/caiku/c/7/5/200_c75d4129a7a43f816350a874da9cd825.jpeg', 47);
INSERT INTO `recipestep` VALUES (521, 9, ' 一勺蚝油', 'https://cp1.douguo.com/upload/caiku/c/0/a/200_c0ff4bb7dc31997a1bc87c25280d86ea.jpeg', 47);
INSERT INTO `recipestep` VALUES (522, 10, ' 生抽半勺.', 'https://cp1.douguo.com/upload/caiku/3/1/0/200_3129a359340556fff01ba022e1650480.jpeg', 47);
INSERT INTO `recipestep` VALUES (523, 11, ' 水三勺搅匀备用', 'https://cp1.douguo.com/upload/caiku/2/2/e/200_2203b98f88a2b4add8f1b4d3fcdc643e.jpeg', 47);
INSERT INTO `recipestep` VALUES (524, 12, ' 锅中放入少许油烧热', 'https://cp1.douguo.com/upload/caiku/6/8/8/200_68c8080d5f56ad4eea957983596e6cc8.jpeg', 47);
INSERT INTO `recipestep` VALUES (525, 13, ' 放入肉末', 'https://cp1.douguo.com/upload/caiku/a/3/8/200_a3f9d87236baf6fed698f97c5a1e2038.jpeg', 47);
INSERT INTO `recipestep` VALUES (526, 14, ' 炒至肉末熟了', 'https://cp1.douguo.com/upload/caiku/2/b/f/200_2b89be422edd0d57a544a227fbad01af.jpeg', 47);
INSERT INTO `recipestep` VALUES (527, 15, ' 放入一勺郫县豆瓣酱炒出红油', 'https://cp1.douguo.com/upload/caiku/6/e/d/200_6e25f634d9e0d40796cf843f1742f1cd.jpeg', 47);
INSERT INTO `recipestep` VALUES (528, 16, ' 放入姜末', 'https://cp1.douguo.com/upload/caiku/1/9/6/200_19cfc003f82f534622ff4ad6d89506c6.jpeg', 47);
INSERT INTO `recipestep` VALUES (529, 17, ' 放入调好的酱料汁.炒匀.', 'https://cp1.douguo.com/upload/caiku/5/7/6/200_5700923c0e3c7eb598e29d46cc27d106.jpeg', 47);
INSERT INTO `recipestep` VALUES (530, 18, ' 放入茄条.', 'https://cp1.douguo.com/upload/caiku/9/7/d/200_97fa3e46d792c057c1936d5daba9fabd.jpeg', 47);
INSERT INTO `recipestep` VALUES (531, 19, ' 翻炒均匀', 'https://cp1.douguo.com/upload/caiku/8/1/f/200_81544c5fdf4e9318a433b222e5ed0bbf.jpeg', 47);
INSERT INTO `recipestep` VALUES (532, 20, ' 淋入水淀粉勾芡', 'https://cp1.douguo.com/upload/caiku/4/6/e/200_46ae1c9ce3f41cf613391d051339f90e.jpeg', 47);
INSERT INTO `recipestep` VALUES (533, 21, ' 撒少许葱末 香菜', 'https://cp1.douguo.com/upload/caiku/6/7/b/200_6742fee9e6f58db964a1e2169677ec0b.jpeg', 47);
INSERT INTO `recipestep` VALUES (534, 22, ' 翻炒两下即可.', 'https://cp1.douguo.com/upload/caiku/3/2/b/200_323f20c51fb8ab8a42c5e824e1d9c43b.jpeg', 47);
INSERT INTO `recipestep` VALUES (535, 23, ' 出锅装盘.', 'https://cp1.douguo.com/upload/caiku/e/c/e/200_ec5bc8a80ca6ffb7805ce3b381a3470e.jpeg', 47);
INSERT INTO `recipestep` VALUES (536, 24, ' 完成.', 'https://cp1.douguo.com/upload/caiku/c/5/0/200_c5c55ba3affc1583b1d450fa8a202a00.jpeg', 47);
INSERT INTO `recipestep` VALUES (537, 25, ' 完成', 'https://cp1.douguo.com/upload/caiku/1/8/a/200_18c56f12fb3294715fba071b7cea06ba.jpeg', 47);
INSERT INTO `recipestep` VALUES (538, 1, ' 戗面馒头切成1cm左右厚的馒头片。', 'https://cp1.douguo.com/upload/caiku/a/a/d/200_aaf2953886b6b3eeb10a328679c20b0d.jpeg', 57);
INSERT INTO `recipestep` VALUES (539, 2, ' 2个鸡蛋打散，加少许盐拌匀。', 'https://cp1.douguo.com/upload/caiku/2/2/1/200_229f96f019bf28a8569959a8f821f991.jpeg', 57);
INSERT INTO `recipestep` VALUES (540, 3, ' 把馒头片两面裹上鸡蛋液。', 'https://cp1.douguo.com/upload/caiku/1/b/a/200_1bafb5c2451c1662e0862e2a32e9e87a.jpeg', 57);
INSERT INTO `recipestep` VALUES (541, 4, ' 电饼铛预热好之后，刷一层油，然后把鸡蛋馒头片放入煎制。', 'https://cp1.douguo.com/upload/caiku/f/9/0/200_f9f337adf96106e4f33dd9211cdcdde0.jpeg', 57);
INSERT INTO `recipestep` VALUES (542, 5, ' 两面煎至金黄，用平底锅亦可。', 'https://cp1.douguo.com/upload/caiku/f/2/0/200_f2c01a4cac90925d337f19c2f5c56ce0.jpeg', 57);
INSERT INTO `recipestep` VALUES (543, 6, ' 火腿肠一部分正切一部分斜切。', 'https://cp1.douguo.com/upload/caiku/b/7/3/200_b703c486e31f8685e37e98ed5b8b1f63.jpeg', 57);
INSERT INTO `recipestep` VALUES (544, 7, ' 正圆的火腿片，切成如图的小扇形，做小猪的耳朵。', 'https://cp1.douguo.com/upload/caiku/7/c/4/200_7c6fa6ab7b53d4daa287c10da37edbe4.jpeg', 57);
INSERT INTO `recipestep` VALUES (545, 8, ' 斜切的火腿片，用吸管戳出两个鼻孔。', 'https://cp1.douguo.com/upload/caiku/1/0/e/200_10e8d1ad751bbaec768cb012c235259e.jpeg', 57);
INSERT INTO `recipestep` VALUES (546, 9, ' 把小猪的耳朵和鼻子放到馒头片相应的位置上。', 'https://cp1.douguo.com/upload/caiku/b/8/0/200_b85d0c615189807269ff32598809a650.jpeg', 57);
INSERT INTO `recipestep` VALUES (547, 10, ' 用海苔剪出小猪的表情，放在相应的位置，完成。', 'https://cp1.douguo.com/upload/caiku/e/d/8/200_ed3425e9746a2e0f8512abdd23794d08.jpeg', 57);
INSERT INTO `recipestep` VALUES (548, 11, ' 盘子里可以摆上坚果装饰一下～', 'https://cp1.douguo.com/upload/caiku/8/7/9/200_87d1dc68442f424d26fed4747a9235d9.jpeg', 57);
INSERT INTO `recipestep` VALUES (549, 12, ' 黄金小萌猪', 'https://cp1.douguo.com/upload/caiku/7/a/2/200_7a65286468ad3041f0d8f95bd16efd02.jpeg', 57);
INSERT INTO `recipestep` VALUES (550, 13, ' 美美哒早餐吃起来～', 'https://cp1.douguo.com/upload/caiku/4/c/2/200_4cd153f2b56b2a195035b9bf1b917a62.jpeg', 57);
INSERT INTO `recipestep` VALUES (551, 1, ' 准备好材料。', 'https://cp1.douguo.com/upload/caiku/2/e/b/200_2effb60cf6ab98d14aa6ab4383314cfb.jpg', 33);
INSERT INTO `recipestep` VALUES (552, 2, ' 五花肉剁成肉沫，加一点盐、生抽拌匀，调入底味腌一下。', 'https://cp1.douguo.com/upload/caiku/7/6/c/200_76c56939475f646236da100590fb962c.jpg', 33);
INSERT INTO `recipestep` VALUES (553, 3, ' 辣椒切圈，生姜切片，蒜头拍开。', 'https://cp1.douguo.com/upload/caiku/5/a/3/200_5a4797f6c0e60311c997cfe98a4c7df3.jpg', 33);
INSERT INTO `recipestep` VALUES (554, 4, ' 毛豆洗净滤干表面水分。', 'https://cp1.douguo.com/upload/caiku/0/0/b/200_00a4df3d2d263b86159a4cfaa7b9849b.jpg', 33);
INSERT INTO `recipestep` VALUES (555, 5, ' 烧热油锅爆香姜蒜。', 'https://cp1.douguo.com/upload/caiku/b/c/6/200_bcfd84e0b3ce88f07effbc5aefd97266.jpg', 33);
INSERT INTO `recipestep` VALUES (556, 6, ' 倒入辣椒煸炒一下。', 'https://cp1.douguo.com/upload/caiku/8/3/f/200_83d819f1802e3012fd957f20dddf268f.jpg', 33);
INSERT INTO `recipestep` VALUES (557, 7, ' 倒入毛豆煸炒一下，加适量盐调味，翻炒均匀。', 'https://cp1.douguo.com/upload/caiku/3/5/3/200_35d5f172954e801a6cf0a7144ba463c3.jpg', 33);
INSERT INTO `recipestep` VALUES (558, 8, ' 锅内空出部分位置，倒入五花肉，暂不翻动。', 'https://cp1.douguo.com/upload/caiku/6/2/0/200_625910d1f4e7f43ab97a5938862997c0.jpg', 33);
INSERT INTO `recipestep` VALUES (559, 9, ' 等五花肉煎至一面出现焦黄，划散，以半煎半炒的方式，与其它食材混合。', 'https://cp1.douguo.com/upload/caiku/c/2/9/200_c290eb4ea7e60839cc96900d21cbc029.jpg', 33);
INSERT INTO `recipestep` VALUES (560, 10, ' 等五花肉煎炒出较多油分后，淋入适量生抽。', 'https://cp1.douguo.com/upload/caiku/1/9/d/200_19d25faf01ea2e8f45fd875f0382822d.jpg', 33);
INSERT INTO `recipestep` VALUES (561, 11, ' 翻炒均匀，完成。', 'https://cp1.douguo.com/upload/caiku/a/4/9/200_a46979cadc9f8b769d2e8f5574885729.jpg', 33);
INSERT INTO `recipestep` VALUES (562, 12, ' 成品图一。', 'https://cp1.douguo.com/upload/caiku/6/c/a/200_6c778f3c4c5773cc7f1a77878066294a.jpg', 33);
INSERT INTO `recipestep` VALUES (563, 13, ' 成品图二。', 'https://cp1.douguo.com/upload/caiku/a/0/f/200_a05d84d839aff4e68a0c1cea4d1379df.jpg', 33);
INSERT INTO `recipestep` VALUES (564, 14, ' 细节图。', 'https://cp1.douguo.com/upload/caiku/2/a/2/200_2af468b83d94a257f62b531404ae5ed2.jpg', 33);
INSERT INTO `recipestep` VALUES (565, 1, ' 【水光肌！水光肌！】秘诀就是揉面要揉好，没有其他秘方了！！！！！！！', 'https://cp1.douguo.com/upload/caiku/2/b/8/200_2bbdb6ba02062d9dfafa52f207b75e28.jpg', 49);
INSERT INTO `recipestep` VALUES (566, 2, ' 【准备馅料】橙皮丁切碎+黑芝麻馅料混合均匀', 'https://cp1.douguo.com/upload/caiku/d/b/2/200_db74edf71734645e68e6f88de818c742.jpg', 49);
INSERT INTO `recipestep` VALUES (567, 3, ' 搓成10g一个的小球', 'https://cp1.douguo.com/upload/caiku/e/b/2/200_eb313e6125a76517d2f3e6c4fe668582.jpg', 49);
INSERT INTO `recipestep` VALUES (568, 4, ' 揉面就不多说了，我揉好的面团是25.1摄氏度，没有温度概念的同学可以买一个，面团温度发酵再28-30度之间适宜，但是你揉好的面团要低于28度，这样你做造型它才不会很快发酵', 'https://cp1.douguo.com/upload/caiku/e/0/0/200_e0af85cb628b7e9215ebc8c865c4a510.jpg', 49);
INSERT INTO `recipestep` VALUES (569, 5, ' 肉好的面团不仅温度要好，而且很光滑，切开要无气孔，这是【水光肌的秘密】', 'https://cp1.douguo.com/upload/caiku/5/0/7/200_50ad5703cf92f433323d5a3da5bbb2e7.jpg', 49);
INSERT INTO `recipestep` VALUES (570, 6, ' 果蔬粉调色', 'https://cp1.douguo.com/upload/caiku/a/7/d/200_a70d7bdc72d4edc23200f0e2eaeb201d.jpg', 49);
INSERT INTO `recipestep` VALUES (571, 7, ' 【比例】面团20g，馅料10g', 'https://cp1.douguo.com/upload/caiku/4/d/a/200_4d21caf264d97a7333db182638f5dfca.jpg', 49);
INSERT INTO `recipestep` VALUES (572, 8, ' 用擀面杖擀开约7cm直径圆形，包入馅料，收口要捏紧', 'https://cp1.douguo.com/upload/caiku/3/2/6/200_32781ad881f99cefced3ea8da7083ed6.jpg', 49);
INSERT INTO `recipestep` VALUES (573, 9, ' 放入刷了油的模具或者用油纸做围边，没有模具也没事，看第14步', 'https://cp1.douguo.com/upload/caiku/6/9/a/200_69fbe52a97aa9a76b8eafa29da28515a.jpg', 49);
INSERT INTO `recipestep` VALUES (574, 10, ' 装饰耳朵 鼻子，粘不住的话稍微抹点水，一定要粘合好，否则发酵后会掉落', 'https://cp1.douguo.com/upload/caiku/c/c/0/200_cc610ee9b5162aab3f250301998e7d10.jpg', 49);
INSERT INTO `recipestep` VALUES (575, 11, ' 用黑色、粉色、红色面团做眼睛 嘴巴、腮红，表情这些都是个人喜好，没有特别要求啦！', 'https://cp1.douguo.com/upload/caiku/a/e/1/200_aed3fdd3a0f6efc7801a91378fe9b101.jpg', 49);
INSERT INTO `recipestep` VALUES (576, 12, ' 装饰其实是最耗费时间的，也容易造成面团表面干，所以做好保湿措施', 'https://cp1.douguo.com/upload/caiku/3/6/9/200_36f2d67cc931a56386a476a46d8df459.jpg', 49);
INSERT INTO `recipestep` VALUES (577, 13, ' 装饰好的样子', 'https://cp1.douguo.com/upload/caiku/b/0/f/200_b075fe30e8d428d47ea2706d8e6330df.jpg', 49);
INSERT INTO `recipestep` VALUES (578, 14, ' 【这一步就是说没有模具怎么办】没有模具就一个个做好，然后等蒸好后用木签串起来就可以啦，不要纠结模具的问题，有就用，没有就随机应变', 'https://cp1.douguo.com/upload/caiku/1/5/0/200_151ba4fde81b47973dee2ff52c5c45f0.jpg', 49);
INSERT INTO `recipestep` VALUES (579, 15, ' 今天我看温度计，室内31度，我室温发酵了35min，就是变成原来1.5倍大左右，冷水上锅，大火煮开后转中火一共14min，关火，焖1min开盖子', 'https://cp1.douguo.com/upload/caiku/1/e/0/200_1e1c72561ed727f951826bfa85271bb0.jpg', 49);
INSERT INTO `recipestep` VALUES (580, 1, ' 泡发香菇，准备好食材', 'https://cp1.douguo.com/upload/caiku/f/6/9/200_f6d9288b22624aa8ac43eae37d8b2ee9.jpg', 31);
INSERT INTO `recipestep` VALUES (581, 2, ' 腊肠放蒸锅里蒸十二分钟，取出放凉', 'https://cp1.douguo.com/upload/caiku/4/e/7/200_4ee8edf28a392646d3bb8c545434a0f7.jpg', 31);
INSERT INTO `recipestep` VALUES (582, 3, ' 白萝卜切成丝', 'https://cp1.douguo.com/upload/caiku/8/4/3/200_84727c82518fccbc786b1e03255f0c93.jpg', 31);
INSERT INTO `recipestep` VALUES (583, 4, ' 放凉的腊肠切成丁', 'https://cp1.douguo.com/upload/caiku/c/b/7/200_cb510e37421075da2bd0e2ddb1970d97.jpg', 31);
INSERT INTO `recipestep` VALUES (584, 5, ' 泡发的香菇也切成丁', 'https://cp1.douguo.com/upload/caiku/f/2/f/200_f2b3cd2b911ebc645946a4f50bd209ff.jpg', 31);
INSERT INTO `recipestep` VALUES (585, 6, ' 萝卜糕粉加325克水调匀', 'https://cp1.douguo.com/upload/caiku/6/1/2/200_617879a07a45ffe2ed27837915d6d992.jpg', 31);
INSERT INTO `recipestep` VALUES (586, 7, ' 所有食材都准备好，称出100克水备用', 'https://cp1.douguo.com/upload/caiku/8/4/f/200_84a3c3f925122e65fd78b9af879f8aaf.jpg', 31);
INSERT INTO `recipestep` VALUES (587, 8, ' 把腊肠、盐、糖、胡椒粉放入调好的萝卜糕粉浆里拌匀', 'https://cp1.douguo.com/upload/caiku/9/e/f/200_9e6a73a843726715afb2b02b61b4568f.jpg', 31);
INSERT INTO `recipestep` VALUES (588, 9, ' 锅内放油，下入香菇丁翻炒', 'https://cp1.douguo.com/upload/caiku/e/7/f/200_e783116150d616692add552c5a4e0c2f.jpg', 31);
INSERT INTO `recipestep` VALUES (589, 10, ' 再加入白萝卜丝翻炒', 'https://cp1.douguo.com/upload/caiku/d/f/6/200_dfebe2b5b5b95779bcc39c6e62f12ff6.jpg', 31);
INSERT INTO `recipestep` VALUES (590, 11, ' 加入100克水煮至萝卜丝熟', 'https://cp1.douguo.com/upload/caiku/8/1/3/200_81e9cff2d4b53015917ea84e63507343.jpg', 31);
INSERT INTO `recipestep` VALUES (591, 12, ' 煮萝卜丝时把两玻璃饭盒内刷上一点油防粘', 'https://cp1.douguo.com/upload/caiku/8/2/0/200_82a457d33a0fb10219d37d14940dca00.jpg', 31);
INSERT INTO `recipestep` VALUES (592, 13, ' 煮好的萝卜丝立刻倒入面粉浆内，快速拌匀', 'https://cp1.douguo.com/upload/caiku/4/e/b/200_4ee988a6eb5b1db16f05a1746790fdcb.jpg', 31);
INSERT INTO `recipestep` VALUES (593, 14, ' 这时萝卜丝的热量让面浆变成半熟的了，也变的浓稠了，冲浆完成', 'https://cp1.douguo.com/upload/caiku/7/0/0/200_709460b8e4a404aadbff946453670110.jpg', 31);
INSERT INTO `recipestep` VALUES (594, 15, ' 倒入两模具里，用勺子软压一下，让表面平整点', 'https://cp1.douguo.com/upload/caiku/5/f/2/200_5fc0410e7bce804264dd4636ef4e6a82.jpg', 31);
INSERT INTO `recipestep` VALUES (595, 16, ' 放入蒸锅大火蒸一个小时', 'https://cp1.douguo.com/upload/caiku/f/9/c/200_f9e57fe60402bcfd541a3772a876f6ac.jpg', 31);
INSERT INTO `recipestep` VALUES (596, 17, ' 蒸好后取出来彻底放凉', 'https://cp1.douguo.com/upload/caiku/6/8/0/200_680d5ae6e7d9aca6ba7c2a224a4320f0.jpg', 31);
INSERT INTO `recipestep` VALUES (597, 18, ' 放凉后把四边轻画一下', 'https://cp1.douguo.com/upload/caiku/9/a/0/200_9a3bab82724a0c6809d0492c89d0e510.jpg', 31);
INSERT INTO `recipestep` VALUES (598, 19, ' 倒扣出来', 'https://cp1.douguo.com/upload/caiku/0/0/3/200_00b3df0a7698817ddd3d82ade3c09af3.jpg', 31);
INSERT INTO `recipestep` VALUES (599, 20, ' 切成一厘米左右的片', 'https://cp1.douguo.com/upload/caiku/b/8/9/200_b8865fddd2d98e1942aa1decb3524389.jpg', 31);
INSERT INTO `recipestep` VALUES (600, 21, ' 锅内放很少量的油，煎至两面微黄', 'https://cp1.douguo.com/upload/caiku/0/4/c/200_0458b79a09b521441b7862b64096deec.jpg', 31);
INSERT INTO `recipestep` VALUES (601, 22, ' 出锅装盘', 'https://cp1.douguo.com/upload/caiku/0/7/0/200_07f02d80bbd52be9755f7eda95111350.jpg', 31);
INSERT INTO `recipestep` VALUES (602, 23, ' 成品图一', 'https://cp1.douguo.com/upload/caiku/1/8/f/200_18ae4a3a6f0b014459c77b5c6770232f.jpg', 31);
INSERT INTO `recipestep` VALUES (603, 24, ' 成品图二', 'https://cp1.douguo.com/upload/caiku/1/0/a/200_10701af20e993493f40407a1b2ba796a.jpg', 31);
INSERT INTO `recipestep` VALUES (604, 25, ' 成品图三', 'https://cp1.douguo.com/upload/caiku/d/4/a/200_d4f927433e6d9c01acdd7344e3b5251a.jpg', 31);
INSERT INTO `recipestep` VALUES (605, 26, ' 成品图四', 'https://cp1.douguo.com/upload/caiku/3/0/d/200_30b9c07d9b06d9dabafd44991d24f5cd.jpg', 31);
INSERT INTO `recipestep` VALUES (606, 1, ' 机器或手揉都可以，现在盆里放入液体，然后放入玉米油，细砂糖，奶粉', 'https://cp1.douguo.com/upload/caiku/1/6/7/200_16fd1bd83105e4008515567c6a809dd7.jpg', 52);
INSERT INTO `recipestep` VALUES (607, 2, ' 然后加入低筋面粉和中筋面粉，不需要过筛，材料里面我说过没有低筋面粉就全部中筋面粉，今天我用的鲜酵母，没有就用干酵母，150g面粉用1.5g干酵母', 'https://cp1.douguo.com/upload/caiku/b/9/e/200_b9852a49941209a7cbdd84888deb61ae.jpg', 52);
INSERT INTO `recipestep` VALUES (608, 3, ' 搅拌成雪花状', 'https://cp1.douguo.com/upload/caiku/d/8/9/200_d851ce67a5607ec474632905462801b9.jpg', 52);
INSERT INTO `recipestep` VALUES (609, 4, ' 揉成一个彻底无敌光滑的面团，不仅外面要光滑，看下图', 'https://cp1.douguo.com/upload/caiku/d/0/c/200_d05bf3e12d7c58c7acf2c0200769346c.jpg', 52);
INSERT INTO `recipestep` VALUES (610, 5, ' 切开的截面也要没有气孔', 'https://cp1.douguo.com/upload/caiku/6/0/4/200_600584f3520a5b6f437fddae5c16b294.jpg', 52);
INSERT INTO `recipestep` VALUES (611, 6, ' 然后放在盆里盖好保鲜膜进行一发，今天我看温度计显示室内温度30度', 'https://cp1.douguo.com/upload/caiku/0/a/6/200_0a9c250aab67eec4e26b76468faf3166.jpg', 52);
INSERT INTO `recipestep` VALUES (612, 7, ' 发酵成2倍大的状态', 'https://cp1.douguo.com/upload/caiku/f/5/c/200_f5b037c56b25abc1354acf41b04dd9dc.jpg', 52);
INSERT INTO `recipestep` VALUES (613, 8, ' 发酵好的状态除了目测还有一个方法，手指沾少许面粉，戳个洞洞，不回缩就是发酵好了', 'https://cp1.douguo.com/upload/caiku/4/8/e/200_48ff11019e5257de1d763c98ebf7052e.jpg', 52);
INSERT INTO `recipestep` VALUES (614, 9, ' 撕开的状态如图，撕开像蜂窝状', 'https://cp1.douguo.com/upload/caiku/b/4/c/200_b4b03c4c0f8fc9eda53bb92f930c047c.jpg', 52);
INSERT INTO `recipestep` VALUES (615, 10, ' 加入戗面的干粉（中筋面粉）30g，然后和面团一起揉进去，要揉彻底', 'https://cp1.douguo.com/upload/caiku/8/b/5/200_8b7d8f45aa9dd0e6a81c9e34a3843835.jpg', 52);
INSERT INTO `recipestep` VALUES (616, 11, ' 戗面的干粉完全揉透，揉进去后是图上的状态，非常光滑的', 'https://cp1.douguo.com/upload/caiku/6/e/9/200_6e48ed0544d143524ab6759f994446f9.jpg', 52);
INSERT INTO `recipestep` VALUES (617, 12, ' 面团一分为二，约150g，其中一个加入黑芝麻粉', 'https://cp1.douguo.com/upload/caiku/1/8/4/200_185d8b8a0956c799fbe2f2a80ca18624.jpg', 52);
INSERT INTO `recipestep` VALUES (618, 13, ' 加入黑芝麻粉揉彻底的面团状态', 'https://cp1.douguo.com/upload/caiku/7/7/d/200_7727bdb1ecd6774eb7a85b62cd8b327d.jpg', 52);
INSERT INTO `recipestep` VALUES (619, 14, ' 白色面团一分为四，然后开始如图开始做馒头，面团往中间揉压', 'https://cp1.douguo.com/upload/caiku/1/f/7/200_1fcc14f990b898d1343213b935209427.jpg', 52);
INSERT INTO `recipestep` VALUES (620, 15, ' 如图，四周慢慢转动，都是往中心点揉压', 'https://cp1.douguo.com/upload/caiku/6/1/5/200_614362244a9f1df2aa247e78bfd2e145.jpg', 52);
INSERT INTO `recipestep` VALUES (621, 16, ' 继续揉压', 'https://cp1.douguo.com/upload/caiku/6/4/3/200_6496db009dae74dcbb33fc85c6b79903.jpg', 52);
INSERT INTO `recipestep` VALUES (622, 17, ' 然后慢慢转动手腕滚圆，馒头的光滑样子就完成了', 'https://cp1.douguo.com/upload/caiku/7/4/e/200_74c5ab2e918e2089418e58094d6b230e.jpg', 52);
INSERT INTO `recipestep` VALUES (623, 18, ' 放在馒头油纸上', 'https://cp1.douguo.com/upload/caiku/f/a/5/200_faccdc38e9f69702367c739663c10db5.jpg', 52);
INSERT INTO `recipestep` VALUES (624, 19, ' 底部的样子', 'https://cp1.douguo.com/upload/caiku/2/f/3/200_2fa3ecd8495a0a653338386b493948a3.jpg', 52);
INSERT INTO `recipestep` VALUES (625, 20, ' 黑芝麻的黑面团也是一分为四，整形成圆形', 'https://cp1.douguo.com/upload/caiku/e/b/b/200_eb0f4a32ed096203ae22b887c0e15ffb.jpg', 52);
INSERT INTO `recipestep` VALUES (626, 21, ' 室温30度情况下放置20min，冷水上锅，开大火转开后转中火，一共15min，焖1-2min开盖', 'https://cp1.douguo.com/upload/caiku/4/9/a/200_498ae33fd8e56791693f8e9c116850ea.jpg', 52);
INSERT INTO `recipestep` VALUES (627, 1, ' 原味桃山皮的皮制作方法：', 'https://cp1.douguo.com/upload/caiku/d/a/d/200_da974cdda34e1a69abf162e1118f923d.jpeg', 60);
INSERT INTO `recipestep` VALUES (628, 2, ' 课堂上确实没有制作桃山皮，这个我写课件时也没有说要做皮，详细教给大家如何包流心和烤制，因为需要注意的很多，操作都是很严格的。但是有的学员需要自己制作皮，那么我就写一下，希望有帮助到你。', 'https://cp1.douguo.com/upload/caiku/b/5/6/200_b597aec7c2e6ed1531f96904fd3c18b6.jpeg', 60);
INSERT INTO `recipestep` VALUES (629, 3, ' 这里是20g一个馅，紫薯 抹茶 巧克力 奶黄 红酒味儿的馅儿。', 'https://cp1.douguo.com/upload/caiku/1/7/8/200_174e7081fdec8e4491eccbfdaa28f798.jpeg', 60);
INSERT INTO `recipestep` VALUES (630, 4, ' 取5g流心放入馅中，包好，揉圆。流心需要提前买好，入冰箱冷冻备用。具体包法看一下我的直播课程。', 'https://cp1.douguo.com/upload/caiku/6/f/7/200_6f3d9818ddb60ae3af22679293a7f047.jpeg', 60);
INSERT INTO `recipestep` VALUES (631, 5, ' 取一个桃山皮，包入包好流心的馅。', 'https://cp1.douguo.com/upload/caiku/5/d/b/200_5d148f06bb51bf7347e1b7211d07d14b.jpeg', 60);
INSERT INTO `recipestep` VALUES (632, 6, ' 用虎口收好，封口揉圆。', 'https://cp1.douguo.com/upload/caiku/a/1/9/200_a14b06f8f08d2a5b5d0d2e74fbe7a079.jpeg', 60);
INSERT INTO `recipestep` VALUES (633, 7, ' 放入模具', 'https://cp1.douguo.com/upload/caiku/f/f/c/200_ff943bfbea664741dcf2f8d5e08bf93c.jpeg', 60);
INSERT INTO `recipestep` VALUES (634, 8, ' 压三下', 'https://cp1.douguo.com/upload/caiku/3/1/9/200_319bd77d1cb6a46083e73f3afeadaa69.jpeg', 60);
INSERT INTO `recipestep` VALUES (635, 9, ' 放入烤盘，如果很干要喷水，防止开裂。', 'https://cp1.douguo.com/upload/caiku/c/d/4/200_cdbe22f4df44702725c6e98e27b870c4.jpeg', 60);
INSERT INTO `recipestep` VALUES (636, 10, ' 170度预热后，放入烤箱中下层或者中层，烤10-15分钟。', 'https://cp1.douguo.com/upload/caiku/e/3/3/200_e30e8adfcb5d94bdcef2219a270e44f3.jpeg', 60);
INSERT INTO `recipestep` VALUES (637, 11, ' 烤前', 'https://cp1.douguo.com/upload/caiku/e/1/3/200_e1bd74a3925ca50e1449baba466c66b3.jpeg', 60);
INSERT INTO `recipestep` VALUES (638, 12, ' 烤前', 'https://cp1.douguo.com/upload/caiku/f/e/c/200_fe7bca5cc257f926cf6b6122956b93ec.jpeg', 60);
INSERT INTO `recipestep` VALUES (639, 13, ' 烤前', 'https://cp1.douguo.com/upload/caiku/2/4/d/200_2422155594b76740858347e7a134965d.jpeg', 60);
INSERT INTO `recipestep` VALUES (640, 14, ' 烤好后是软一些的，晾凉才可以定型。', 'https://cp1.douguo.com/upload/caiku/3/a/2/200_3ab0d80eb7be8dbb33a85e01c1c96b72.jpeg', 60);
INSERT INTO `recipestep` VALUES (641, 15, ' 成品需要凉后密封保存，回油后更好吃。', 'https://cp1.douguo.com/upload/caiku/b/6/5/200_b66973b8cccefaeaf7963e63b6b4fcc5.jpeg', 60);
INSERT INTO `recipestep` VALUES (642, 16, ' 有需要咨询问题的宝宝来我的学员群，首页有。', 'https://cp1.douguo.com/upload/caiku/0/7/c/200_074caedb7a6443bf4923dda5b8b5a7ac.jpeg', 60);
INSERT INTO `recipestep` VALUES (643, 17, ' 成品', 'https://cp1.douguo.com/upload/caiku/e/0/0/200_e030e0ec436806926ba5fabb79582480.jpeg', 60);
INSERT INTO `recipestep` VALUES (644, 18, ' 成品', 'https://cp1.douguo.com/upload/caiku/5/1/f/200_519dce0bbbfb4df047ef2f16e62459ef.jpeg', 60);
INSERT INTO `recipestep` VALUES (645, 19, ' 成品', 'https://cp1.douguo.com/upload/caiku/9/3/9/200_9359bee1776718beb2c1ea9189fc9889.jpeg', 60);
INSERT INTO `recipestep` VALUES (646, 20, ' 成品', 'https://cp1.douguo.com/upload/caiku/b/e/7/200_be2a3d2f2020f51383a4f0364dfa3437.jpeg', 60);
INSERT INTO `recipestep` VALUES (647, 21, ' 成品', 'https://cp1.douguo.com/upload/caiku/2/6/a/200_26a18a89e1b9d1a20787ce8185e5e2da.jpeg', 60);
INSERT INTO `recipestep` VALUES (648, 22, ' 礼盒', 'https://cp1.douguo.com/upload/caiku/6/9/8/200_699d18fa12ddb034217c50f2ff7de748.jpeg', 60);
INSERT INTO `recipestep` VALUES (649, 1, ' 揉面 ', 'https://cp1.douguo.com/upload/caiku/d/0/3/200_d0db67ad09dc9492016a75d335b22673.jpg', 34);
INSERT INTO `recipestep` VALUES (650, 2, ' 切开的截面无气孔', 'https://cp1.douguo.com/upload/caiku/2/1/8/200_21ac270ffbe851efe7273f5f55ac6338.jpg', 34);
INSERT INTO `recipestep` VALUES (651, 3, ' 调色：40g 白色、60g黑色、20g蓝色、58g黄色、2g绿色', 'https://cp1.douguo.com/upload/caiku/9/5/5/200_95fb326170a7014dfd51aea2e1dcc165.jpg', 34);
INSERT INTO `recipestep` VALUES (652, 4, ' 馅料10g/个*9个', 'https://cp1.douguo.com/upload/caiku/1/8/2/200_18a2dfd9fa321e2689fbe5390827ea82.jpg', 34);
INSERT INTO `recipestep` VALUES (653, 5, ' 黄色平均3份，滚圆', 'https://cp1.douguo.com/upload/caiku/7/5/4/200_7567b4d9bea08c290e0f96ade2c24f44.jpg', 34);
INSERT INTO `recipestep` VALUES (654, 6, ' 包入馅料', 'https://cp1.douguo.com/upload/caiku/7/1/c/200_710774c329ff6f611138d5bd36b6b2ac.jpg', 34);
INSERT INTO `recipestep` VALUES (655, 7, ' 收口朝下，然后用刮板压出南瓜痕迹', 'https://cp1.douguo.com/upload/caiku/e/f/e/200_efc8256f6fa22fb9fe81588e35f9bd0e.jpg', 34);
INSERT INTO `recipestep` VALUES (656, 8, ' 黑色面团薄片用小刀切出表情，粘合', 'https://cp1.douguo.com/upload/caiku/a/c/8/200_ac11632bd6afd08fa5218ba8d4d579c8.jpg', 34);
INSERT INTO `recipestep` VALUES (657, 9, ' 白色面团20g包入馅料，滚圆后用黑色做出小魔鬼的表情', 'https://cp1.douguo.com/upload/caiku/c/3/8/200_c3549e20dfc115d0025d9177d387d2a8.jpg', 34);
INSERT INTO `recipestep` VALUES (658, 10, ' 方法相同做黑色，只是颜色不同而已', 'https://cp1.douguo.com/upload/caiku/e/2/e/200_e2466b533619c209c780da68bba049ce.jpg', 34);
INSERT INTO `recipestep` VALUES (659, 11, ' 蓝色18g包入馅料滚圆', 'https://cp1.douguo.com/upload/caiku/b/5/7/200_b57bcff44a5b556f323351183b35c007.jpg', 34);
INSERT INTO `recipestep` VALUES (660, 12, ' 搓成水滴状，然后尾巴看个人喜欢随意朝右边或左边弯曲', 'https://cp1.douguo.com/upload/caiku/a/9/0/200_a913b332cd0927f6a96dcc67fc75c030.jpg', 34);
INSERT INTO `recipestep` VALUES (661, 13, ' 黑色做表情，超简单，椭圆形，剩下蓝色做小幽灵的胳膊', 'https://cp1.douguo.com/upload/caiku/b/6/7/200_b6aed3711552d878c09a5b69b681deb7.jpg', 34);
INSERT INTO `recipestep` VALUES (662, 14, ' 三个不同形状的面团依次排好，粘合', 'https://cp1.douguo.com/upload/caiku/2/8/b/200_2897d920bb172f47219bcf1033c0bc9b.jpg', 34);
INSERT INTO `recipestep` VALUES (663, 15, ' 室温发酵40min，冷水上锅，大火转中火一共15min关火，焖2min开盖子。', 'https://cp1.douguo.com/upload/caiku/d/9/3/200_d9761d7ce970913f1ba2fca7195759c3.jpg', 34);
INSERT INTO `recipestep` VALUES (664, 1, ' 准备好所需要的食材，我的泡发好是300克的，如果大家是干腐竹的话需要提前算计一下所需要的量', 'https://cp1.douguo.com/upload/caiku/a/1/6/200_a1257c52e21d21cf51bf791ce30dd226.jpg', 41);
INSERT INTO `recipestep` VALUES (665, 2, ' 先把腐竹斜刀切成段', 'https://cp1.douguo.com/upload/caiku/8/d/7/200_8d85d5d6c5cef4373093ac579ec3d987.jpg', 41);
INSERT INTO `recipestep` VALUES (666, 3, ' 蒜苗摘洗干净，切成段；青、红椒切段；大蒜去皮切片', 'https://cp1.douguo.com/upload/caiku/f/1/3/200_f1db9983e3d097617570fd63e2356533.jpg', 41);
INSERT INTO `recipestep` VALUES (667, 4, ' 炒菜机里先倒入油，然后放入郫县豆瓣酱，这样炒菜机开始加热的时候会先起到爆香的作用', 'https://cp1.douguo.com/upload/caiku/e/5/1/200_e544a9fa8d61bc753c1ea345bb16d451.jpg', 41);
INSERT INTO `recipestep` VALUES (668, 5, ' 再依次把蒜苗，蒜片，青红椒，腐竹倒进来', 'https://cp1.douguo.com/upload/caiku/9/0/e/200_90b9caf228efd869c0f6005234f5b7de.jpg', 41);
INSERT INTO `recipestep` VALUES (669, 6, ' 所有的食���放好之后盖上炒菜机的盖子，接通电源，启动豆制品炒制程序', 'https://cp1.douguo.com/upload/caiku/d/8/d/200_d89e9bceb7332bb1a8a8342cbb6e176d.jpg', 41);
INSERT INTO `recipestep` VALUES (670, 7, ' 盐，糖，生抽，蚝油，2勺清水倒进一个碗内，拌成碗汁，倒进锅内', 'https://cp1.douguo.com/upload/caiku/2/d/3/200_2d53535c2a5645d91bffa52ca55f0223.jpg', 41);
INSERT INTO `recipestep` VALUES (671, 8, ' 自动程序结束后打开盖子，把炒好的 腐竹盛出即可', 'https://cp1.douguo.com/upload/caiku/2/f/d/200_2f63397700a9f3e987f972b997887bcd.jpg', 41);
INSERT INTO `recipestep` VALUES (672, 1, ' 冰牛奶先放入厨师机桶，然后放入高筋面粉和奶粉，顶部放细砂糖，酵母，（酵母不要和有盐黄油放一起）有盐黄油放在另一边，然后操作厨师机揉面，我用中档揉面', 'https://cp1.douguo.com/upload/caiku/6/e/d/200_6e9de6fc78fa142298a6d696f4f4b54d.jpg', 54);
INSERT INTO `recipestep` VALUES (673, 2, ' 在揉面期间准备好馅料', 'https://cp1.douguo.com/upload/caiku/a/7/a/200_a7896a1fc03e792846b7c1c21222a1aa.jpg', 54);
INSERT INTO `recipestep` VALUES (674, 3, ' 揉好的面团，不一定要出手套膜 但是一定要光滑，扯开后有一定韧性！', 'https://cp1.douguo.com/upload/caiku/e/1/8/200_e13d799e68905bee051336035fd98b08.jpg', 54);
INSERT INTO `recipestep` VALUES (675, 4, ' 取8g面团+蝶豆花粉变成蓝色面团，取15g面团+红曲粉变成大红色面团，取23g面团+一点点红曲粉变成粉红色，取15g面团+南瓜粉变成黄色面团，155g白面团包上保鲜膜待用，剩下��面团+南瓜粉调成黄色面团', 'https://cp1.douguo.com/upload/caiku/3/b/5/200_3bef8800394b7d3eb6efbc7dd24e2cf5.jpg', 54);
INSERT INTO `recipestep` VALUES (676, 5, ' 忘记拍黄色面团了，取出大的黄色面团平均分成12份滚圆，白色面团平均分成7份，滚圆，（我只用了6个，多出来的一个烤了别的东西），红色面团取22g滚圆！', 'https://cp1.douguo.com/upload/caiku/e/6/2/200_e6c792cb7c4d0d99c2f21316d8eeac42.jpg', 54);
INSERT INTO `recipestep` VALUES (677, 6, ' 每个滚圆的面团包入馅料，收口一定要紧，', 'https://cp1.douguo.com/upload/caiku/8/9/a/200_89b8d1b7d8b95801a98e6733b105334a.jpg', 54);
INSERT INTO `recipestep` VALUES (678, 7, ' 包入馅料后依然要整形，要很圆。', 'https://cp1.douguo.com/upload/caiku/1/6/3/200_16790a027b0c38f83edf46c8ba5a3af3.jpg', 54);
INSERT INTO `recipestep` VALUES (679, 8, ' 一共12个黄色面团，6个白色，一个粉色包好馅料后放入8寸戚风模具，模具四周可以刷少量黄油，也可以像图中我那样剪裁油纸。', 'https://cp1.douguo.com/upload/caiku/f/d/6/200_fd977f379340e79a45463792e4300f96.jpg', 54);
INSERT INTO `recipestep` VALUES (680, 9, ' 【维尼熊】每个耳朵2g黄色面团，搓圆后抹点水粘好', 'https://cp1.douguo.com/upload/caiku/7/8/8/200_782ea29f480ab01ee3610e9a7bb86398.jpg', 54);
INSERT INTO `recipestep` VALUES (681, 10, ' 【Daisy】蝴蝶结是大红色面团，分别是2g、1g、2g面团滚圆后抹点水粘合好，嘴巴使用黄色面团搓圆后黏上就行', 'https://cp1.douguo.com/upload/caiku/9/1/b/200_91e0806485fdb936ac7da0c863f91d8b.jpg', 54);
INSERT INTO `recipestep` VALUES (682, 11, ' 【Donald】帽子就用4g左右蓝色面团搓圆后黏在头顶即可。嘴巴使用黄色面团搓圆后黏上就行', 'https://cp1.douguo.com/upload/caiku/4/0/c/200_40a8ddfc6181815532e4a8b1c7f01c5c.jpg', 54);
INSERT INTO `recipestep` VALUES (683, 12, ' 【小粉猪】猪鼻子用3g面团搓成椭圆黏住，耳朵是大红色面团，每个耳朵5g面团搓成水滴状粘合', 'https://cp1.douguo.com/upload/caiku/4/4/3/200_44b9f76d00fa4c636cb3e9c70e179cb3.jpg', 54);
INSERT INTO `recipestep` VALUES (684, 13, ' 装饰的时间其实很快，室温发酵20min（我的室温30度）预热烤箱后150度上下火25min，烤好后脱模放凉即可。然后放凉以后用色素笔或者巧克力画上眼睛、鼻子、腮红即可。So easy！！！！！！！！！', 'https://cp1.douguo.com/upload/caiku/b/2/3/200_b2a25da085eb56d7db5a094d6ef00d03.jpg', 54);
INSERT INTO `recipestep` VALUES (685, 1, ' 准备食材', 'https://cp1.douguo.com/upload/caiku/c/e/3/200_ce9bcb394d98b5b505dc5da0b90dc223.jpg', 53);
INSERT INTO `recipestep` VALUES (686, 2, ' 香菇去蒂切成薄片，红椒切成细丝，大蒜切片', 'https://cp1.douguo.com/upload/caiku/3/5/7/200_3550b248ab4a3caf1f31d5a98d4068b7.jpg', 53);
INSERT INTO `recipestep` VALUES (687, 3, ' 起锅加入金龙鱼外婆乡小榨菜籽油', 'https://cp1.douguo.com/upload/caiku/8/6/6/200_86e78250ccc110e283cd45f968ca6a26.jpg', 53);
INSERT INTO `recipestep` VALUES (688, 4, ' 加入蒜片炒出香味', 'https://cp1.douguo.com/upload/caiku/c/d/8/200_cd9013f210e5c826c3c48a7e486f9b98.jpg', 53);
INSERT INTO `recipestep` VALUES (689, 5, ' 加入香菇翻炒至见软出水', 'https://cp1.douguo.com/upload/caiku/3/f/6/200_3fba4258ac509ac8b8ffa9c3d129da06.jpg', 53);
INSERT INTO `recipestep` VALUES (690, 6, ' 加入毛豆仁，翻炒片刻', 'https://cp1.douguo.com/upload/caiku/d/d/b/200_dd022ef70593ed6783157bfb07c4782b.jpg', 53);
INSERT INTO `recipestep` VALUES (691, 7, ' 加入红椒，蚝油将所有食材炒熟', 'https://cp1.douguo.com/upload/caiku/1/7/1/200_1717430ad5f5a4c6cb72e6d76a2aa851.jpg', 53);
INSERT INTO `recipestep` VALUES (692, 8, ' 最后加少许盐调味，炒匀出锅即可', 'https://cp1.douguo.com/upload/caiku/e/b/1/200_ebc908e8196c7ecd259640378f60e461.jpg', 53);
INSERT INTO `recipestep` VALUES (693, 9, ' 成品', 'https://cp1.douguo.com/upload/caiku/8/b/8/200_8b694091fc7c0cb845bffd08910be9a8.jpg', 53);
INSERT INTO `recipestep` VALUES (694, 10, ' 成品', 'https://cp1.douguo.com/upload/caiku/8/7/3/200_872402b018e2328775f8fab42ac2e923.jpg', 53);
INSERT INTO `recipestep` VALUES (695, 1, ' 厨师机的桶里依次放入牛奶，奶油和盐铺底，然后放入高筋面粉，最上面放入鲜酵母，黄油和细砂糖，然后搅拌成有手套膜的面团', 'https://cp1.douguo.com/upload/caiku/5/0/8/200_506b3a89deb6de0a12bdb2463bd2a138.jpg', 42);
INSERT INTO `recipestep` VALUES (696, 2, ' 和好的面团平均分成2份，其中一份加入黑可可粉5g调成棕黑色面团', 'https://cp1.douguo.com/upload/caiku/d/3/3/200_d3fa1069dba2bd55f6c81f95b0728ec3.jpg', 42);
INSERT INTO `recipestep` VALUES (697, 3, ' 白色和棕黑色面团再平均分成3份，滚圆后盖上保鲜膜松弛15min，松弛���一步不能省略，否则直接影响下一步的操作，不松弛就擀开后会回缩', 'https://cp1.douguo.com/upload/caiku/e/7/9/200_e7a6a9a035544b7e943ffb8ab02dd379.jpg', 42);
INSERT INTO `recipestep` VALUES (698, 4, ' 取一个黑色和白色面团分别擀开成长方形，长约20-22cm，宽约12cm', 'https://cp1.douguo.com/upload/caiku/f/a/d/200_faa66970d2d1197a13a2744e12c5f66d.jpg', 42);
INSERT INTO `recipestep` VALUES (699, 5, ' 在黑色的面皮上零散的撒上适量的糖渍橙皮丁和巧克力豆，没有这些材料的可以换蜜豆', 'https://cp1.douguo.com/upload/caiku/9/5/0/200_95ff5afe85cd5dcc87e7a8452ea577e0.jpg', 42);
INSERT INTO `recipestep` VALUES (700, 6, ' 把白色面皮放在黑色上，用手轻按去掉两个面皮间的空气', 'https://cp1.douguo.com/upload/caiku/0/9/8/200_09436d21276a1850d24c2b8c7dec6e48.jpg', 42);
INSERT INTO `recipestep` VALUES (701, 7, ' 如图折叠，1/3处向下折叠', 'https://cp1.douguo.com/upload/caiku/3/b/a/200_3be30dcfa9d35d9cac6f09f5f840e92a.jpg', 42);
INSERT INTO `recipestep` VALUES (702, 8, ' 再把上部的叠上去，重叠部分约1cm', 'https://cp1.douguo.com/upload/caiku/9/0/e/200_9040d28c58903baf1a29a87e728805ce.jpg', 42);
INSERT INTO `recipestep` VALUES (703, 9, ' 旋转90度，然后再次擀开，长度22cm左右', 'https://cp1.douguo.com/upload/caiku/1/6/4/200_162512c62921f9fd1a1fc5f546b294d4.jpg', 42);
INSERT INTO `recipestep` VALUES (704, 10, ' 自上而下卷起', 'https://cp1.douguo.com/upload/caiku/5/5/4/200_55b8764696c02a62f5be34e39fcda174.jpg', 42);
INSERT INTO `recipestep` VALUES (705, 11, ' 接口捏紧朝下，然后用粉筛筛上面粉', 'https://cp1.douguo.com/upload/caiku/4/4/8/200_4489b3ea6807b22880337188e74b61e8.jpg', 42);
INSERT INTO `recipestep` VALUES (706, 12, ' 用锋利的刀割5刀，间距约1cm', 'https://cp1.douguo.com/upload/caiku/4/d/8/200_4d0827d40429a545649689aef12b29b8.jpg', 42);
INSERT INTO `recipestep` VALUES (707, 13, ' 13.室温28度发酵40min1.5倍大小即可入越热的烤箱', 'https://cp1.douguo.com/upload/caiku/d/3/1/200_d3cf7e53ff5e3c73e509503f72fa1ef1.jpg', 42);
INSERT INTO `recipestep` VALUES (708, 14, ' 185度烤20min，时间到后稍微放一会再拿出来放凉', 'https://cp1.douguo.com/upload/caiku/1/8/d/200_1857c8c771f441965ecf03ef5145e4cd.jpg', 42);
INSERT INTO `recipestep` VALUES (709, 1, ' 提前泡软泡透的木耳香菇红薯粉认真切成小粒粒，顺手切根小葱', 'https://cp1.douguo.com/upload/caiku/c/8/c/200_c8c712e47e695a279454cc68483d0b1c.jpg', 32);
INSERT INTO `recipestep` VALUES (710, 2, ' 锅烧热倒油扔一小把虾皮，中小火煎香煎变色了扔香菇', 'https://cp1.douguo.com/upload/caiku/3/f/d/200_3ffb1f4661948aa13f5d1e39bb73adad.jpg', 32);
INSERT INTO `recipestep` VALUES (711, 3, ' 认真扒拉到香菇挺香了扔粉条，根据个人口味加生抽蚝油', 'https://cp1.douguo.com/upload/caiku/a/1/6/200_a12dc9c3e9b47a20152358c9470551d6.jpg', 32);
INSERT INTO `recipestep` VALUES (712, 4, ' 努力搅和匀，倒之前特意留下的香菇水，大火煮开顺手扔木耳', 'https://cp1.douguo.com/upload/caiku/5/1/9/200_5180f101bb835eecfb6145aeceae6fd9.jpg', 32);
INSERT INTO `recipestep` VALUES (713, 5, ' 根据个人口味补糖补盐，没啥问题了转中小火，咕嘟到菇熟没啥汁了关火', 'https://cp1.douguo.com/upload/caiku/d/a/a/200_da51c617ab60445dd81edd07bdd98a5a.jpg', 32);
INSERT INTO `recipestep` VALUES (714, 6, ' 根据个人喜好往里擦些胡萝卜丝，扔之前切好的葱', 'https://cp1.douguo.com/upload/caiku/d/1/a/200_d1145b60c460659bf4037e9e0a96209a.jpg', 32);
INSERT INTO `recipestep` VALUES (715, 7, ' 根据个人喜好淋香油撒五香粉，努力搅和匀并酌情补盐', 'https://cp1.douguo.com/upload/caiku/f/1/0/200_f192029e738dc4db3c4a5519bad94ce0.jpg', 32);
INSERT INTO `recipestep` VALUES (716, 8, ' 根据馅量倒面粉，先稍微浇些开水进去，搅和出一小坨烫面团，大概占总面量的三分之一', 'https://cp1.douguo.com/upload/caiku/e/1/8/200_e1bfd71520bffeff16dfdb027cb21928.jpg', 32);
INSERT INTO `recipestep` VALUES (717, 9, ' 再往里加凉水，搅和成一盆略带干粉的大疙瘩，上手揉成一坨比饺子面略软些的面团', 'https://cp1.douguo.com/upload/caiku/4/0/0/200_405f4d1f32c6a58ed063edd4bee65ad0.jpg', 32);
INSERT INTO `recipestep` VALUES (718, 10, ' 下剂擀皮包成自己喜欢的样子，扔开水锅里蒸熟，大概十分钟？', 'https://cp1.douguo.com/upload/caiku/c/e/9/200_ce8df6274d14c38e2f786c823267b6b9.jpg', 32);
INSERT INTO `recipestep` VALUES (719, 11, ' 不放心可以开盖摸一下皮儿，不会粘手就是熟了，放心的关火挪出来', 'https://cp1.douguo.com/upload/caiku/d/2/c/200_d2ae5346a53d726cf0067a411b5cdd9c.jpg', 32);
INSERT INTO `recipestep` VALUES (720, 12, ' 理论上来讲，稍微一等就能透过薄皮看到里头的彩色馅啦', 'https://cp1.douguo.com/upload/caiku/0/8/7/200_087a3ccc0d589558d28f2d30f40c3e37.jpg', 32);
INSERT INTO `recipestep` VALUES (721, 13, ' 来，张嘴~', 'https://cp1.douguo.com/upload/caiku/1/0/2/200_104fa5c81033a6756570e954adde48b2.jpg', 32);
INSERT INTO `recipestep` VALUES (722, 14, ' 菇香胡萝卜甜，粉条软糯木耳脆，皮薄馅大吃起来特带劲儿', 'https://cp1.douguo.com/upload/caiku/1/2/8/200_123f46a1932cd017e3b779a6c56f9d68.jpg', 32);
INSERT INTO `recipestep` VALUES (723, 15, ' 看心情配汁配酱配咸菜……哈哈哈哈哈哈哈对不起这个真的有点好笑哈哈哈哈姐我觉得我长大了', 'https://cp1.douguo.com/upload/caiku/e/2/2/200_e217ccd5a0fe11834a5d2c4581b610e2.jpg', 32);
INSERT INTO `recipestep` VALUES (724, 16, ' 走了哟，明天见~', 'https://cp1.douguo.com/upload/caiku/1/d/7/200_1dc7c0170e18b30817d380aa1b0b8397.jpg', 32);
INSERT INTO `recipestep` VALUES (725, 1, ' 菜切末肉剁碎倒入调味料拌匀', 'https://cp1.douguo.com/upload/caiku/0/f/e/200_0f75c974cf57f7e86da271dd6d3acc9e.jpeg', 73);
INSERT INTO `recipestep` VALUES (726, 2, ' 豆皮分两半，用勺子均匀的涂抹在豆皮上，从一头卷起，要卷紧实一些！放锅蒸开锅十分钟（可用牙签固定住）', 'https://cp1.douguo.com/upload/caiku/a/8/0/200_a8fb20a680c174d6638eef09bc3ebcf0.jpeg', 73);
INSERT INTO `recipestep` VALUES (727, 3, ' 切好了，味道还可以！最好浇汁，那样更美味！', 'https://cp1.douguo.com/upload/caiku/c/a/4/200_caee59ab08c1d2f284296e49298037a4.jpeg', 73);
INSERT INTO `recipestep` VALUES (728, 4, ' 后续浇汁再传！（一勺美极鲜半碗水烧开倒入少许水淀粉烧好后浇上即可）', 'https://cp1.douguo.com/upload/caiku/c/1/c/200_c1dd69700a9087a6d2cd68221a8c17bc.jpeg', 73);
INSERT INTO `recipestep` VALUES (729, 5, ' 浇汁', 'https://cp1.douguo.com/upload/caiku/3/3/0/200_3307231609f85fc4eab2fe7b0197c1a0.jpeg', 73);
INSERT INTO `recipestep` VALUES (730, 1, ' 莲藕、生抽、陈醋、糖等备料', 'https://cp1.douguo.com/upload/caiku/c/3/1/200_c3934b201cf037fc397e3c9bd00b9b01.jpg', 74);
INSERT INTO `recipestep` VALUES (731, 2, '  莲藕切丁，洗去淀粉，沥干水分', 'https://cp1.douguo.com/upload/caiku/4/e/6/200_4e7893853a160f8a19d649c7e8bd8b56.jpg', 74);
INSERT INTO `recipestep` VALUES (732, 3, ' 热锅冷油，倒入藕丁翻炒', 'https://cp1.douguo.com/upload/caiku/d/2/c/200_d27eab1225451d4b92f63723c32bfd5c.jpg', 74);
INSERT INTO `recipestep` VALUES (733, 4, ' 加水没过藕丁，小火盖盖焖约10分钟', 'https://cp1.douguo.com/upload/caiku/6/4/2/200_64f273282fe8b0f0458283fe0304fe12.jpg', 74);
INSERT INTO `recipestep` VALUES (734, 5, ' 倒入2勺生抽、1勺糖炒均匀，接着倒入一勺陈醋翻炒均匀', 'https://cp1.douguo.com/upload/caiku/8/2/b/200_82963e80ddabd01c5ccb23fcf38eeb0b.jpg', 74);
INSERT INTO `recipestep` VALUES (735, 6, ' 上碟铺上香菜，美味又美观的糖醋藕丁开吃喽！', 'https://cp1.douguo.com/upload/caiku/c/4/b/200_c4f8242cdd12ff8d06d3b41cd54dbffb.jpg', 74);
INSERT INTO `recipestep` VALUES (736, 1, ' 把杀好的鸭子处理干净备用', 'https://cp1.douguo.com/upload/caiku/0/a/e/200_0a4c7f105566e9027eba4e89752a739e.jpeg', 82);
INSERT INTO `recipestep` VALUES (737, 2, ' 取砂锅加上适量清水，放上几片生姜（依个人口味）后放入鸭子，水一定要没过鸭身。', 'https://cp1.douguo.com/upload/caiku/f/2/9/200_f24556a8ef30d506aeafdb8c831f0379.jpeg', 82);
INSERT INTO `recipestep` VALUES (738, 3, ' 大火烧开，撇去浮油，转小火煲1小时（半只只要30分钟），中间要翻一次面（不然会半生熟喔）！待筷子可以轻松穿透鸭子为佳。', 'https://cp1.douguo.com/upload/caiku/a/f/4/200_afce9d2734dfa85edd9bbf3630866444.jpeg', 82);
INSERT INTO `recipestep` VALUES (739, 4, ' 鸭子煮熟后，将砂锅端离灶具，盖上盖子静置3分钟再捞出鸭子（肉质比较嫩滑），滤去汤汁！', 'https://cp1.douguo.com/upload/caiku/7/3/5/200_732d9db972164bb82dc5a9a2e9546965.jpeg', 82);
INSERT INTO `recipestep` VALUES (740, 5, ' 在鸭肉上抹上适量山茶油！', 'https://cp1.douguo.com/upload/caiku/7/6/8/200_768714a667d833d2f2b6ed3bd7230508.jpeg', 82);
INSERT INTO `recipestep` VALUES (741, 6, ' 鸭子放凉斩好装盘。', 'https://cp1.douguo.com/upload/caiku/9/2/c/200_92ae6a089365db0e05e38d3aadd517dc.jpeg', 82);
INSERT INTO `recipestep` VALUES (742, 7, ' 把葱姜蒜切末，放锅下油待油锅烧至八成时倒入葱姜蒜末和盐翻炒出香味，倒入鸭汤再加适量茶油（比较爽口），待汤烧开然后用勺子舀起淋入切好的鸭肉上，重复几次（中间必须把汤汁倒回锅里加热）！', 'https://cp1.douguo.com/upload/caiku/5/f/1/200_5f12d270d537185986155829b279dc11.jpeg', 82);
INSERT INTO `recipestep` VALUES (743, 8, ' 最后就可以享用美味啦！（还可以蘸着茶油吃哦）！', 'https://cp1.douguo.com/upload/caiku/7/e/6/200_7e41fdace07ce856f544bb9a44a19d36.jpeg', 82);
INSERT INTO `recipestep` VALUES (744, 1, ' 豆腐挖个洞', 'https://cp1.douguo.com/upload/caiku/6/a/0/200_6a7dfc2532748ffbd7cad5728d9b61a0.jpeg', 64);
INSERT INTO `recipestep` VALUES (745, 2, ' 挖出来的豆腐肉放入肉末里，加入盐、酱油、胡椒粉、油、生粉拌匀', 'https://cp1.douguo.com/upload/caiku/1/5/1/200_15cb11938466a6341232f59c6cb8aa21.jpeg', 64);
INSERT INTO `recipestep` VALUES (746, 3, ' 将肉酿入豆腐，肉不要突出豆腐太多，否则煎时只煎到肉', 'https://cp1.douguo.com/upload/caiku/8/5/5/200_859f24b4d59512e23a8117827c193e55.jpeg', 64);
INSERT INTO `recipestep` VALUES (747, 4, ' 豆腐有肉那面先煎，油稍多些，豆腐才能煎出金黄色，否则颜色偏黑', 'https://cp1.douguo.com/upload/caiku/b/e/c/200_bec028e4fc47a8cc632b3ff76c48d76c.jpeg', 64);
INSERT INTO `recipestep` VALUES (748, 5, ' 煎至豆腐边缘出现金黄色，用铲子帮忙翻面', 'https://cp1.douguo.com/upload/caiku/5/5/c/200_55088d0d89f3336adfac1cd292d11afc.jpeg', 64);
INSERT INTO `recipestep` VALUES (749, 6, ' 另一面也煎成金黄色', 'https://cp1.douguo.com/upload/caiku/7/0/6/200_70bcc90b31eb19e01a336e76dbf351d6.jpeg', 64);
INSERT INTO `recipestep` VALUES (750, 7, ' 豆腐盛起，胡萝卜丝和葱白下锅炒香', 'https://cp1.douguo.com/upload/caiku/6/1/6/200_61fb55157daa979013c88fd124a27526.jpeg', 64);
INSERT INTO `recipestep` VALUES (751, 8, ' 豆腐放在胡萝卜丝上，加入水，盖盖至豆腐和肉熟', 'https://cp1.douguo.com/upload/caiku/0/a/c/200_0af161e27a073d09355dd21e7046d95c.jpeg', 64);
INSERT INTO `recipestep` VALUES (752, 9, ' 将豆腐盛起，汤汁里，加点鸡粉、盐，勾芡，将汁淋入豆腐', 'https://cp1.douguo.com/upload/caiku/e/5/1/200_e5ba5ba668db9e9cf90af189c6657731.jpeg', 64);
INSERT INTO `recipestep` VALUES (753, 10, ' 成品', 'https://cp1.douguo.com/upload/caiku/e/3/4/200_e31fa7e729c56b24da9a6749579347c4.jpeg', 64);
INSERT INTO `recipestep` VALUES (754, 11, ' 成品', 'https://cp1.douguo.com/upload/caiku/5/6/0/200_5694b5f51b169f16b642d81ffc1d0d10.jpeg', 64);
INSERT INTO `recipestep` VALUES (755, 12, ' 成品', 'https://cp1.douguo.com/upload/caiku/2/0/3/200_207e9fa01b9207eeecc6ae9204def9a3.jpeg', 64);
INSERT INTO `recipestep` VALUES (756, 1, ' 红豆是提前就泡好的，和大米先煮。我用的是大米，也可以用其他的米。', 'https://cp1.douguo.com/upload/caiku/e/1/3/200_e1ef5dd5c1066092a9ff197a393234d3.jpg', 71);
INSERT INTO `recipestep` VALUES (757, 2, ' 山药切成小丁，大米快煮好时就加山药。', 'https://cp1.douguo.com/upload/caiku/1/0/9/200_108270144936afdaf846ae9bb4f68349.jpg', 71);
INSERT INTO `recipestep` VALUES (758, 3, ' 红枣切成小块，用的是小红枣就不用切，我用的是大红枣，山药煮熟了就加红枣和枸杞，煮五分钟就成了。', 'https://cp1.douguo.com/upload/caiku/4/9/9/200_493c249b0ce4ea06b64fdbf932e088e9.jpg', 71);
INSERT INTO `recipestep` VALUES (759, 4, ' 这就是要熬好的粥了，', 'https://cp1.douguo.com/upload/caiku/0/8/5/200_08f66a2ef3f5734b1eebb18159685715.jpg', 71);
INSERT INTO `recipestep` VALUES (760, 5, ' 这就成了，平时可以多熬粥，每天都吃米饭，也觉得腻，粥就不一样，可以加任何你想吃食材。', 'https://cp1.douguo.com/upload/caiku/3/1/1/200_31035080b3c197425f33943faf7b88f1.jpg', 71);
INSERT INTO `recipestep` VALUES (761, 1, ' 嫩豆腐放盐水中泡15分钟，去豆腥防碎还有淡淡咸味。', 'https://cp1.douguo.com/upload/caiku/d/3/8/200_d3215c5ca6e801ce588897fe1de24138.jpg', 80);
INSERT INTO `recipestep` VALUES (762, 2, ' 葱蒜切碎，口蘑或香菇切碎。', 'https://cp1.douguo.com/upload/caiku/5/d/9/200_5d41a328dcb6e4ebd199d56e7d0804d9.jpg', 80);
INSERT INTO `recipestep` VALUES (763, 3, ' 豆腐切厚块，中间挖洞，我是用筷子不是很均匀，可用小勺或挖球器。 小心易碎。', 'https://cp1.douguo.com/upload/caiku/d/5/7/200_d5ad17dc705373a02be186c2619f4b27.jpg', 80);
INSERT INTO `recipestep` VALUES (764, 4, ' 肉馅中加生抽、料酒、胡椒、盐和水顺时针搅拌上劲，放入香菇碎和豆腐碎拌匀。', 'https://cp1.douguo.com/upload/caiku/f/f/0/200_ffb6232c7f9b66d376dee0fbba437a10.jpg', 80);
INSERT INTO `recipestep` VALUES (765, 5, ' 将调好的肉馅填到豆腐中，与豆腐持平。', 'https://cp1.douguo.com/upload/caiku/a/a/2/200_aadeb444dc29f47419dad735f59a3582.jpg', 80);
INSERT INTO `recipestep` VALUES (766, 6, ' 锅中稍多油，中小火肉面向下煎。', 'https://cp1.douguo.com/upload/caiku/f/5/f/200_f56053c8d519ee82d0f797c7f94f5f4f.jpg', 80);
INSERT INTO `recipestep` VALUES (767, 7, ' 煎至四面金黄。', 'https://cp1.douguo.com/upload/caiku/0/0/1/200_0092b76ab340864a7bf362e8b4958af1.jpg', 80);
INSERT INTO `recipestep` VALUES (768, 8, ' 煎好后盛出备用。', 'https://cp1.douguo.com/upload/caiku/0/e/5/200_0ed0f6f80058d96f648dae9271b80505.jpg', 80);
INSERT INTO `recipestep` VALUES (769, 9, ' 倒出锅中多余的油，留少许加葱蒜爆香，倒生抽、耗油、盐，然后加1碗水烧开。倒入豆腐炖10分钟，加淀粉水收汁即可。', 'https://cp1.douguo.com/upload/caiku/f/4/4/200_f4d87285df1ec7b8885317bbb106ed04.jpg', 80);
INSERT INTO `recipestep` VALUES (770, 10, ' 洒上香葱和胡萝卜碎。口感真的很棒。', 'https://cp1.douguo.com/upload/caiku/5/7/9/200_572d3785f84dba46aae4660ef1f9d589.jpg', 80);
INSERT INTO `recipestep` VALUES (771, 1, ' 鳕鱼用厨房纸擦干水分，加入葱姜料酒和少许盐腌制10到15分钟。', 'https://cp1.douguo.com/upload/caiku/6/d/2/200_6d042dc81b85fc65bfed3afdd409bb52.jpg', 79);
INSERT INTO `recipestep` VALUES (772, 2, ' 锅里水烧开后入锅蒸5至8分钟。', 'https://cp1.douguo.com/upload/caiku/4/2/8/200_4274cad16b72810cbbcf6d7ba93000c8.jpg', 79);
INSERT INTO `recipestep` VALUES (773, 3, ' 倒掉盘中的水，挑去葱姜。', 'https://cp1.douguo.com/upload/caiku/5/9/5/200_596bf57b6d142beb6590daee87f153a5.jpg', 79);
INSERT INTO `recipestep` VALUES (774, 4, ' 切新的葱姜丝摆上去，锅里加入水，蒸鱼豉油和少许盐烧热调成汁，趁热浇上去即可享用~', 'https://cp1.douguo.com/upload/caiku/e/2/e/200_e230a5eb5c5b7374be94f0643eb4e33e.jpg', 79);
INSERT INTO `recipestep` VALUES (775, 1, ' 处理好的鸡洗净，用食盐抹遍全身，用保鲜膜包起来冷藏腌1天1夜。', 'https://cp1.douguo.com/upload/stepimage/6/4/2/200_1767421.jpg', 86);
INSERT INTO `recipestep` VALUES (776, 2, ' 腌好的鸡肚中间放生姜片。', 'https://cp1.douguo.com/upload/stepimage/9/d/5/200_1767422.jpg', 86);
INSERT INTO `recipestep` VALUES (777, 3, ' 用油纸包起来，尽量多包几层,再用绵绳绑起来固定.(绑绵绳这步偷懒了)', 'https://cp1.douguo.com/upload/stepimage/3/f/5/200_1767423.jpg', 86);
INSERT INTO `recipestep` VALUES (778, 4, ' 取一厚底锅，锅底先洒一层粗海盐。', 'https://cp1.douguo.com/upload/stepimage/b/9/5/200_1767424.jpg', 86);
INSERT INTO `recipestep` VALUES (779, 5, ' 放入包好的鸡，洒上剩下的粗海盐，盖盖。', 'https://cp1.douguo.com/upload/stepimage/c/9/1/200_1767425.jpg', 86);
INSERT INTO `recipestep` VALUES (780, 6, ' 先开大火5分钟，再小火30分钟，继续焖至冷却。', 'https://cp1.douguo.com/upload/stepimage/6/3/7/200_1767426.jpg', 86);
INSERT INTO `recipestep` VALUES (781, 1, ' 准备好原材料。', 'https://cp1.douguo.com/upload/caiku/7/2/7/200_72f3fac99dce685da6ebb199d6c603f7.jpg', 72);
INSERT INTO `recipestep` VALUES (782, 2, ' 鹌鹑蛋入锅煮熟。', 'https://cp1.douguo.com/upload/caiku/7/5/9/200_75f983ca33151417ad81dd1d8c039dc9.jpg', 72);
INSERT INTO `recipestep` VALUES (783, 3, ' 锅里加入适量水，加入老抽', 'https://cp1.douguo.com/upload/caiku/7/0/3/200_70957558dca57acb0c58eca9713cc233.jpg', 72);
INSERT INTO `recipestep` VALUES (784, 4, ' 加入其它所有调料烧开。', 'https://cp1.douguo.com/upload/caiku/6/0/1/200_60bb601ef33941ffb0b3bd6a622038b1.jpg', 72);
INSERT INTO `recipestep` VALUES (785, 5, ' 煮熟的鹌鹑蛋去壳。', 'https://cp1.douguo.com/upload/caiku/6/2/d/200_62740bd43d63b622277dfb30e461737d.jpg', 72);
INSERT INTO `recipestep` VALUES (786, 6, ' 放入鹌鹑蛋再煮几分钟，为了营养不建议煮久了。', 'https://cp1.douguo.com/upload/caiku/1/8/7/200_185b0f3642f0d1ec29f3a73a015b91f7.jpg', 72);
INSERT INTO `recipestep` VALUES (787, 7, ' 煮好在锅里焖两三个小时充分入味。', 'https://cp1.douguo.com/upload/caiku/7/9/d/200_7955a2fe23cb5b57451330a8f243cb7d.jpg', 72);
INSERT INTO `recipestep` VALUES (788, 8, ' 成品图。', 'https://cp1.douguo.com/upload/caiku/8/4/b/200_8429c5b761f24121efd7c63f61c76ebb.jpg', 72);
INSERT INTO `recipestep` VALUES (789, 9, ' 成品图。', 'https://cp1.douguo.com/upload/caiku/e/1/7/200_e1c667be87bf0fb568e5f04726f72f87.jpg', 72);
INSERT INTO `recipestep` VALUES (790, 10, ' 成品图。', 'https://cp1.douguo.com/upload/caiku/7/f/7/200_7faae488388977e66b5081ba536d5d17.jpg', 72);
INSERT INTO `recipestep` VALUES (791, 1, ' 准备各种食材；', 'https://cp1.douguo.com/upload/caiku/a/8/d/200_a82c6d0e6d5f91eedc75b2ffc5eca02d.jpg', 70);
INSERT INTO `recipestep` VALUES (792, 2, ' 广式腊肠切片，其它切丁；', 'https://cp1.douguo.com/upload/caiku/8/5/e/200_85fd29513e7c656def7b75138d52f75e.jpg', 70);
INSERT INTO `recipestep` VALUES (793, 3, ' 炒锅烧热放油，下洋葱炒香；', 'https://cp1.douguo.com/upload/caiku/e/c/4/200_ecafce5b2c9180eb4ba5e5b9ab23e514.jpg', 70);
INSERT INTO `recipestep` VALUES (794, 4, ' 下腊肠进去炒出油；', 'https://cp1.douguo.com/upload/caiku/0/3/8/200_03a07df345240f16bc043e4cacbfc7e8.jpg', 70);
INSERT INTO `recipestep` VALUES (795, 5, ' 再将胡萝卜丁、豆角放地去炒软；', 'https://cp1.douguo.com/upload/caiku/9/9/8/200_9940b0bdc85b5e6b0f73dce92e5546e8.jpg', 70);
INSERT INTO `recipestep` VALUES (796, 6, ' 放甜玉米粒及少许生抽翻炒；', 'https://cp1.douguo.com/upload/caiku/e/c/f/200_ece7853f61bc09dd839bd9b34e0301bf.jpg', 70);
INSERT INTO `recipestep` VALUES (797, 7, ' 加适量清水煮开；', 'https://cp1.douguo.com/upload/caiku/f/2/5/200_f26b9a4462a6d0b5a03f2968d60974f5.jpg', 70);
INSERT INTO `recipestep` VALUES (798, 8, ' 水开后加少许盐、焖煮2分钟；', 'https://cp1.douguo.com/upload/caiku/d/7/9/200_d7d6292dfdcee290c6bb31a31a71f689.jpg', 70);
INSERT INTO `recipestep` VALUES (799, 9, ' 电饭煲里放好洗净的大米；', 'https://cp1.douguo.com/upload/caiku/f/6/8/200_f6815f6f9346bb01d6503a878152d508.jpg', 70);
INSERT INTO `recipestep` VALUES (800, 10, ' 将炒锅里的菜和汤倒进电饭煲里，汤量比平时煮米饭的水量要适当少一点，煮的过程中，菜也会出水的；', 'https://cp1.douguo.com/upload/caiku/0/9/4/200_09772a9b1a8c856d6cc2cbefeda80e44.jpg', 70);
INSERT INTO `recipestep` VALUES (801, 11, ' 电饭煲选择标准饭即可；', 'https://cp1.douguo.com/upload/caiku/1/f/8/200_1f3648063918f3ee2f0bc673e4d9cd08.jpg', 70);
INSERT INTO `recipestep` VALUES (802, 12, ' 时间到，饭香扑鼻！！', 'https://cp1.douguo.com/upload/caiku/9/a/d/200_9a666e43865e2a8372137c86122158fd.jpg', 70);
INSERT INTO `recipestep` VALUES (803, 13, ' 搅拌一下，即可盛出食用；', 'https://cp1.douguo.com/upload/caiku/4/c/3/200_4cc2b9444001c9f78ef5cc4fd1398d93.jpg', 70);
INSERT INTO `recipestep` VALUES (804, 14, ' 美味的腊肠焖饭，你想不想来一碗呢。那天吃到的小朋友们都叫着好吃呢……', 'https://cp1.douguo.com/upload/caiku/8/0/a/200_80d8344677e17f96cc9dd207c906b15a.jpg', 70);
INSERT INTO `recipestep` VALUES (805, 1, ' 先用40g热水把白糖融化，再放余下的凉水', 'https://cp1.douguo.com/upload/caiku/9/3/8/200_939c61bf8faf9c5d3de735608b3ced18.jpeg', 67);
INSERT INTO `recipestep` VALUES (806, 2, ' 把糯米粉、面粉和泡打粉混合均匀', 'https://cp1.douguo.com/upload/caiku/e/0/5/200_e09ca0281dd82315d1b0f70e5fdeba55.jpeg', 67);
INSERT INTO `recipestep` VALUES (807, 3, ' 放入糖水揉好，余10g水看着加，直到糯米团粘合在一起，正好把碗里的糯米粉粘干净的程度正好。盖上保鲜膜静置15分钟', 'https://cp1.douguo.com/upload/caiku/5/7/d/200_57d77e46a3264791d80d944884ea47cd.jpeg', 67);
INSERT INTO `recipestep` VALUES (808, 4, ' 把豆沙馅儿分成5g一个', 'https://cp1.douguo.com/upload/caiku/6/9/4/200_698df0d954f7c6dba8b4fbcffe8301f4.jpeg', 67);
INSERT INTO `recipestep` VALUES (809, 5, ' 把糯米粉搓成长条分成20g一个，大约18个', 'https://cp1.douguo.com/upload/caiku/a/6/8/200_a6240a234bd6d7eea82b7e29e1dba628.jpeg', 67);
INSERT INTO `recipestep` VALUES (810, 6, ' 把面团捏成小碗样，放入豆沙馅儿', 'https://cp1.douguo.com/upload/caiku/e/e/5/200_ee3c440fae6cda2ba918b8d28c0b91a5.jpeg', 67);
INSERT INTO `recipestep` VALUES (811, 7, ' 包好，有点裂没有关系', 'https://cp1.douguo.com/upload/caiku/f/4/0/200_f400b0f0a57268ae9e437fe0ddd78910.jpeg', 67);
INSERT INTO `recipestep` VALUES (812, 8, ' 手掌上粘点水开始揉圆，有裂的时候捏一下就好了，如果水粘多了就多揉几下，糯米团吸水的。', 'https://cp1.douguo.com/upload/caiku/3/0/3/200_30805e6360529a95591cdfa5c10cdf33.jpeg', 67);
INSERT INTO `recipestep` VALUES (813, 9, ' 在盘子里平铺芝麻，在手上粘点水揉一下糯米团然后在芝麻上滚满，之后再揉几下确保芝麻粘住了', 'https://cp1.douguo.com/upload/caiku/1/e/6/200_1eef53b07a81e94733cedea2bfc05a56.jpeg', 67);
INSERT INTO `recipestep` VALUES (814, 10, ' 油锅加热至60度，放入芝麻团可以看到没有任何气泡出现，低温炸至表面定型，过程中摇晃麻球让它滚动做到不粘底受热均匀', 'https://cp1.douguo.com/upload/caiku/3/f/6/200_3fc6217f96018a2a5bb6fcceb6f33c56.jpeg', 67);
INSERT INTO `recipestep` VALUES (815, 11, ' 当糯米团呈半浮起状态，开始加温至135度，这时会有小气泡出现', 'https://cp1.douguo.com/upload/caiku/b/4/6/200_b4da00dff2bad003e02f5fe8cb5872a6.jpeg', 67);
INSERT INTO `recipestep` VALUES (816, 12, ' 当温度达到135度麻团全部浮起，用勺子滚动麻元让它不停翻滚', 'https://cp1.douguo.com/upload/caiku/5/f/8/200_5fdc65196cc85feb3bf959b7f3466c08.jpeg', 67);
INSERT INTO `recipestep` VALUES (817, 13, ' 继续加温至150度，开始大气泡去，麻球开始表面发硬，让麻球一直翻滚，直到表面金黄，如若有地方没有炸到，我教你一个补救的办法，把炸篮提起来只让底部接触油，没有炸到的地方朝下再炸一会就均匀了。', 'https://cp1.douguo.com/upload/caiku/0/1/5/200_01ab819608323c5a1366c00d9d6d9e85.jpeg', 67);
INSERT INTO `recipestep` VALUES (818, 14, ' 炸到金黄色就可以捞出沥干油，全程大约15分钟左右。低温状态不用保持太久不然表皮太硬，中间的糯米已经炸', 'https://cp1.douguo.com/upload/caiku/5/0/b/200_503259a04d303aba7b79c8647841b4eb.jpeg', 67);
INSERT INTO `recipestep` VALUES (819, 15, ' 一盘外酥内软的麻元就好了', 'https://cp1.douguo.com/upload/caiku/5/7/c/200_57c8b56ee7d60b45c57724b615d1725c.jpeg', 67);
INSERT INTO `recipestep` VALUES (820, 16, ' 咬开里面还有甜甜的豆沙馅儿，全家人一会一个做了一大盘一天不到就吃完了', 'https://cp1.douguo.com/upload/caiku/f/f/d/200_ff4d0a9036b928e4eb015e103c3cc8dd.jpeg', 67);
INSERT INTO `recipestep` VALUES (821, 1, ' 河粉，直接去超市或者菜市购买。', 'https://cp1.douguo.com/upload/caiku/6/f/f/200_6fff9ddbd59d646eee6eb8c5eb245d4f.jpg', 89);
INSERT INTO `recipestep` VALUES (822, 2, ' 一点点肉丝，用少许生粉拌匀。也可以不要肉丝，炒素河粉。', 'https://cp1.douguo.com/upload/caiku/4/8/2/200_4803f8ba45cee5c8882e4ae550cece12.jpg', 89);
INSERT INTO `recipestep` VALUES (823, 3, ' 姜蒜切末，野山椒也切碎。怕辣的朋友可以不加野山椒。', 'https://cp1.douguo.com/upload/caiku/5/a/d/200_5a676ed953765d8d0ce6b7dd46c0de8d.jpg', 89);
INSERT INTO `recipestep` VALUES (824, 4, ' 搭配炒河粉的蔬菜，可以很随意。自己喜欢什么就配什么嘛。青椒、洋葱、胡萝卜都切丝。虫草菇是以前剩下的，没有也无妨。', 'https://cp1.douguo.com/upload/caiku/b/8/f/200_b8e086af71ae439f4c403d6dafcd1a9f.jpg', 89);
INSERT INTO `recipestep` VALUES (825, 5, ' 预热电饼铛……', 'https://cp1.douguo.com/upload/caiku/9/e/4/200_9ee516a4b2464257bccd30f093550f44.jpg', 89);
INSERT INTO `recipestep` VALUES (826, 6, ' 预热好电饼铛后，倒少许的食用油在铁板上，火力用大火，烹饪模式无所谓。把肉丝先煸炒散。', 'https://cp1.douguo.com/upload/caiku/e/f/7/200_ef549e0a1da08873c186978338e4e0f7.jpg', 89);
INSERT INTO `recipestep` VALUES (827, 7, ' 肉丝炒散以后，滑到一边。接着倒入姜蒜末和野山椒，炒一下。', 'https://cp1.douguo.com/upload/caiku/c/8/8/200_c813f7a84c522c547195b6044e47de08.jpg', 89);
INSERT INTO `recipestep` VALUES (828, 8, ' 倒入蔬菜炒', 'https://cp1.douguo.com/upload/caiku/e/a/6/200_ea901bfa717f68e79f7830ae1dbab3c6.jpg', 89);
INSERT INTO `recipestep` VALUES (829, 9, ' 最后倒入河粉，翻炒均匀。最后调入适量的生抽、盐、少许糖，炒匀即可。', 'https://cp1.douguo.com/upload/caiku/1/7/3/200_17eb97aaa07f4e5f495fa95ef9f16e43.jpg', 89);
INSERT INTO `recipestep` VALUES (830, 1, ' 草鸡处理好，清理干净。', 'https://cp1.douguo.com/upload/caiku/e/7/2/200_e7b32ada9737f064ab39c1d1181dd302.jpg', 77);
INSERT INTO `recipestep` VALUES (831, 2, ' 将盐和味精混合。', 'https://cp1.douguo.com/upload/caiku/6/d/8/200_6d8c47ed9a7539c582679d9042634388.jpg', 77);
INSERT INTO `recipestep` VALUES (832, 3, ' 热锅，锅中放入花椒粒炒香。', 'https://cp1.douguo.com/upload/caiku/c/2/6/200_c2544a9eb82de6360bfe4df54dee9826.jpg', 77);
INSERT INTO `recipestep` VALUES (833, 4, ' 将炒好的花椒和盐混合。', 'https://cp1.douguo.com/upload/caiku/3/2/5/200_32e8cb5cbc5b1c478d7cc2b928852f35.jpg', 77);
INSERT INTO `recipestep` VALUES (834, 5, ' 用调好的花椒和盐，将鸡里外都涂抹均匀。倒入花雕酒，涂匀。小葱切段，姜切片。均匀放在鸡上。放入冰箱腌制12小时以上。', 'https://cp1.douguo.com/upload/caiku/f/a/1/200_fa316cb7962438c41d671ada5f9021c1.jpg', 77);
INSERT INTO `recipestep` VALUES (835, 6, ' 入蒸锅，蒸半小时左右。', 'https://cp1.douguo.com/upload/caiku/d/7/a/200_d75d0f876331a984c9c80b63a49776ca.jpg', 77);
INSERT INTO `recipestep` VALUES (836, 7, ' 切开，装盘就可以了。', 'https://cp1.douguo.com/upload/caiku/a/2/8/200_a26b62ec63e53308e156a15973d3d328.jpg', 77);
INSERT INTO `recipestep` VALUES (837, 1, ' 准备好所用食材。', 'https://cp1.douguo.com/upload/caiku/5/c/1/200_5cc865bef62db2e29e1a6f319b6cf0a1.jpg', 81);
INSERT INTO `recipestep` VALUES (838, 2, ' 把猪肉剁碎。红葱头切小块，姜切末加入猪肉糜中。', 'https://cp1.douguo.com/upload/caiku/2/b/4/200_2bea184686599290808c1038a917e014.jpg', 81);
INSERT INTO `recipestep` VALUES (839, 3, ' 肉糜中加入适量生抽，盐，胡椒粉和淀粉搅匀备用。', 'https://cp1.douguo.com/upload/caiku/e/5/b/200_e5ece3beaae9dd70ed39d796d779623b.jpg', 81);
INSERT INTO `recipestep` VALUES (840, 4, ' 把水豆腐切成长约6CM的块，用勺子挖一个洞（挖出来的豆腐可以加入肉糜内搅碎，不浪费）。', 'https://cp1.douguo.com/upload/caiku/1/c/a/200_1c4065b9acbf402107a6c7e4ea07a36a.jpg', 81);
INSERT INTO `recipestep` VALUES (841, 5, ' 把肉糜酿入豆腐中，平底锅烧热放入适量油，把酿好的豆腐露肉一面朝下煎黄后翻面稍煎一下。', 'https://cp1.douguo.com/upload/caiku/d/d/6/200_dd7bd20cf3f7a86b8df36422202c1be6.jpg', 81);
INSERT INTO `recipestep` VALUES (842, 6, ' 用适量生抽，老抽，白糖，蚝油，盐和高汤搅匀调成调味汁。', 'https://cp1.douguo.com/upload/caiku/8/b/a/200_8bfa85aa342f6d96fbe6ee172ff81c7a.jpg', 81);
INSERT INTO `recipestep` VALUES (843, 7, ' 把调味汁加入锅中焖煮，中途把豆腐翻动入味。', 'https://cp1.douguo.com/upload/caiku/d/e/0/200_de3749f1ec1e90152a9e22f74e29bb60.jpg', 81);
INSERT INTO `recipestep` VALUES (844, 8, ' 最后用水淀粉勾芡收汁即可。', 'https://cp1.douguo.com/upload/caiku/7/3/4/200_73a0f494dc85619bd053611ec782fc14.jpg', 81);
INSERT INTO `recipestep` VALUES (845, 9, ' 成品图。', 'https://cp1.douguo.com/upload/caiku/3/6/8/200_366dc0af2811516ef16a13200699d988.jpg', 81);
INSERT INTO `recipestep` VALUES (846, 10, ' 成品图。', 'https://cp1.douguo.com/upload/caiku/4/3/5/200_43f33f0e4668a244aa1a40263fb10875.jpg', 81);
INSERT INTO `recipestep` VALUES (847, 11, ' 成品图。', 'https://cp1.douguo.com/upload/caiku/a/c/1/200_accdcb58889132e983259d1e902af5b1.jpg', 81);
INSERT INTO `recipestep` VALUES (848, 1, ' 五花肉洗净，拔去残余的猪毛，切成四方小块。', 'https://cp1.douguo.com/upload/caiku/e/2/d/200_e2b1475fe331bede8e5e4a3f65959abd.jpg', 83);
INSERT INTO `recipestep` VALUES (849, 2, ' 可先焯水，我这次没有焯水。小火热锅倒入五花肉中小火煸炒出油。', 'https://cp1.douguo.com/upload/caiku/c/5/9/200_c5eb9fbcaf286a6bef6cf1d6fff86039.jpg', 83);
INSERT INTO `recipestep` VALUES (850, 3, ' 煸炒出油后加入蒜头，姜片，八角继续煸炒。', 'https://cp1.douguo.com/upload/caiku/a/c/c/200_ac885d61ce73fd81be29ac06d5e7232c.jpg', 83);
INSERT INTO `recipestep` VALUES (851, 4, ' 加入盐，糖，酿酒煸炒，再加入红曲粉，生抽，老抽继续煸炒上色。', 'https://cp1.douguo.com/upload/caiku/4/5/a/200_45a5bd00843b8fa3ceb4befbb6d2097a.jpg', 83);
INSERT INTO `recipestep` VALUES (852, 5, ' 加入600-700g热开水煮开转入电饭锅内。不转锅直接加盖焖煮1小时也ok！', 'https://cp1.douguo.com/upload/caiku/0/0/9/200_006871ddf823bc528b10fb34d367e279.jpg', 83);
INSERT INTO `recipestep` VALUES (853, 6, ' 转入九阳IH磁铁斧电饭锅的好处是不用看火时间又相对的快些喔！', 'https://cp1.douguo.com/upload/caiku/2/8/d/200_28b3e4a4753b404f130fa52888214bad.jpg', 83);
INSERT INTO `recipestep` VALUES (854, 7, ' 选择蒸煮功能，时间调至40分钟左右即可。喜欢更绵软囗感的可调至50分钟。', 'https://cp1.douguo.com/upload/caiku/f/5/5/200_f5dd79737fb8e731eec7c03ba9b60185.jpg', 83);
INSERT INTO `recipestep` VALUES (855, 8, ' 时间到就看看收汁出锅开吃啦！要吃到好菜还真是不容易呀，要花1个小时以上。', 'https://cp1.douguo.com/upload/caiku/a/7/c/200_a70e5aac2712a7a06df8226f0ea946ec.jpg', 83);
INSERT INTO `recipestep` VALUES (856, 9, ' 成品:甘香！肥而不腻！', 'https://cp1.douguo.com/upload/caiku/2/4/4/200_24c4a4b55303292d8d914e602f199524.jpg', 83);
INSERT INTO `recipestep` VALUES (857, 10, ' 成品:姜味浓郁，咸香（微咸）可口！', 'https://cp1.douguo.com/upload/caiku/f/8/4/200_f80543e9758ee3b1b11780ccbf8cefa4.jpg', 83);
INSERT INTO `recipestep` VALUES (858, 11, ' 成品:超级下饭喔！', 'https://cp1.douguo.com/upload/caiku/7/7/3/200_773e40836ff159735cb61e0039b0fb83.jpg', 83);
INSERT INTO `recipestep` VALUES (859, 1, ' 辣椒酱半碗 拿个大碗用冷水一碗调制辣椒酱水，放一颗八角，啤酒一罐准备好，', 'https://cp1.douguo.com/upload/caiku/0/6/3/200_068d6e43b48b078d4204649c2753f423.jpg', 84);
INSERT INTO `recipestep` VALUES (860, 2, ' 蒜瓣剥好，干辣椒切小段，老姜切片，备用，老豆腐洗干净备用。', 'https://cp1.douguo.com/upload/caiku/9/b/c/200_9b6564c1b4e9d5ad63be8af28e9ab93c.jpg', 84);
INSERT INTO `recipestep` VALUES (861, 3, ' 泥鳅杀好，洗干净 沥干水分备用', 'https://cp1.douguo.com/upload/caiku/5/c/7/200_5c67163a2b69b59fb9a82089dde17197.jpg', 84);
INSERT INTO `recipestep` VALUES (862, 4, ' 热锅倒油 将沥干水分的泥鳅倒入锅中煎，颠锅翻动泥鳅，煎成两面金黄色', 'https://cp1.douguo.com/upload/caiku/1/3/a/200_1327e806865afb4a4a6cf92d700b296a.jpg', 84);
INSERT INTO `recipestep` VALUES (863, 5, ' 备用的蒜头，姜片，干辣椒一起下锅翻炒爆香。', 'https://cp1.douguo.com/upload/caiku/5/9/d/200_593abf60121e27982eac072f66f08a9d.jpg', 84);
INSERT INTO `recipestep` VALUES (864, 6, ' 依次加入少许白醋，糖，翻炒。在加入老抽，鲜抽 上色', 'https://cp1.douguo.com/upload/caiku/e/4/4/200_e48ecf44c1eaaa7cd2d36c7799e7dac4.jpg', 84);
INSERT INTO `recipestep` VALUES (865, 7, ' 调好的辣椒酱水倒入泥鳅中！', 'https://cp1.douguo.com/upload/caiku/f/c/e/200_fccd6f39c4de1acb6dcae5339f8ac09e.jpg', 84);
INSERT INTO `recipestep` VALUES (866, 8, ' 在接着倒入啤酒，盖上壶盖大火烧开，', 'https://cp1.douguo.com/upload/caiku/9/9/3/200_9956b1a10496a1995f46ddb5f36cc103.jpg', 84);
INSERT INTO `recipestep` VALUES (867, 9, ' 泥鳅开锅后，把豆腐切进去，在盖上盖子烧二十分钟！', 'https://cp1.douguo.com/upload/caiku/7/7/6/200_77a83711f09454ccaefae85e4431cb26.jpg', 84);
INSERT INTO `recipestep` VALUES (868, 10, ' 烧好的泥鳅豆腐，倒入砂锅中', 'https://cp1.douguo.com/upload/caiku/3/b/c/200_3bd986b2462634ead8c4731bd7d9259c.jpg', 84);
INSERT INTO `recipestep` VALUES (869, 11, ' 泥鳅豆腐装入砂锅后，在炖十分钟就好了，', 'https://cp1.douguo.com/upload/caiku/1/3/5/200_13d378b08af0409d37266c96dae9b185.jpg', 84);
INSERT INTO `recipestep` VALUES (870, 12, ' 火爆的香辣泥鳅炖豆腐绝对爽到你的味蕾', 'https://cp1.douguo.com/upload/caiku/4/d/b/200_4d78f5ae20097c5204cf079e160cfd2b.jpg', 84);
INSERT INTO `recipestep` VALUES (871, 1, ' 用清水把茄子洗净，用刀切下茄子蒂。', 'https://cp1.douguo.com/upload/caiku/8/8/4/200_881489284ebb7830a0e65457a5abef94.jpg', 66);
INSERT INTO `recipestep` VALUES (872, 2, ' 用刀顺着茄子的长度，把茄子分切成厚薄均匀的茄子墩。', 'https://cp1.douguo.com/upload/caiku/f/5/a/200_f51f55a5387647beadb715b37818e5ba.jpg', 66);
INSERT INTO `recipestep` VALUES (873, 3, ' 取一个茄子墩，用刀刃在刀切面部分横竖各划三刀，使刀切表面出现9个小格形成网状结构。', 'https://cp1.douguo.com/upload/caiku/6/5/d/200_65d3ac5a3508a3152701ca546786eb4d.jpg', 66);
INSERT INTO `recipestep` VALUES (874, 4, ' 锅里倒入少量食用油，烧至三四成热，放入茄子墩，小火煎制。煎到两面茄子果肉变绿，表面出现焦黄色，把茄子控油捞出。', 'https://cp1.douguo.com/upload/caiku/6/3/1/200_635f4c2972fe19ebcd884598fb91afa1.jpg', 66);
INSERT INTO `recipestep` VALUES (875, 5, ' 锅里的底油烧热，放入肉末，用铲子炒制，炒到肉末变色。', 'https://cp1.douguo.com/upload/caiku/6/a/a/200_6a568fd9524cc628a71e2b6792614fca.jpg', 66);
INSERT INTO `recipestep` VALUES (876, 6, ' 葱姜蒜分切切末，放入锅中煸出香味。', 'https://cp1.douguo.com/upload/caiku/a/3/f/200_a3cf3482120360fe81a58d1b4d860d6f.jpg', 66);
INSERT INTO `recipestep` VALUES (877, 7, ' 锅里倒入1汤匙酱油，放入1/2茶匙食盐，1/4茶匙白糖，放入1汤匙辣椒油。锅里加入1勺清水，一边加热，一边用铲子搅拌大约1～2分钟，至香味飘出。', 'https://cp1.douguo.com/upload/caiku/7/1/4/200_717dc22f95d13f549b82e3d7794a64f4.jpg', 66);
INSERT INTO `recipestep` VALUES (878, 8, ' 炒好的肉末呈十字形摆放在盘子底部。煎好的茄子摆放在肉末上面，把炒肉末时锅里留下的汤汁倒在盘子里。', 'https://cp1.douguo.com/upload/caiku/a/1/0/200_a1a3f9467417b07571e5a11d5033c650.jpg', 66);
INSERT INTO `recipestep` VALUES (879, 9, ' 锅里放入足量冷水，支好蒸架，盘子上拉一层保鲜膜，放在蒸架上。盖好锅盖，大火蒸制10分钟左右至茄子熟。', 'https://cp1.douguo.com/upload/caiku/4/4/2/200_441233da95675b727037560b2099ba12.jpg', 66);
INSERT INTO `recipestep` VALUES (880, 10, ' 蒸好的茄子取出，把盘子里的汤汁滗出，倒在一个小碗里。蒸熟的茄子放在另一个盘子里，把肉末放在茄子表面。', 'https://cp1.douguo.com/upload/caiku/0/a/6/200_0ac0d36c622d9f8012963683a0502a36.jpg', 66);
INSERT INTO `recipestep` VALUES (881, 11, ' 滗在小碗里的汤汁放在锅里，中火加热至汤汁烧开。生粉（干淀粉）1/2茶匙和冷水适量调成水淀粉，淋入锅里，用铲子朝一个方向搅拌，使汤汁浓稠成透明状，关火，这就是炒好的芡汁。', 'https://cp1.douguo.com/upload/caiku/c/6/3/200_c60c3ff3fb3fb82ac690bdb549dfbe93.jpg', 66);
INSERT INTO `recipestep` VALUES (882, 12, ' 用小勺舀着炒好的芡汁淋在每个茄子上。', 'https://cp1.douguo.com/upload/caiku/0/b/d/200_0bf5f4c4077d67675e96658186938f5d.jpg', 66);
INSERT INTO `recipestep` VALUES (883, 13, ' 撒入小葱做点缀，即可。', 'https://cp1.douguo.com/upload/caiku/f/e/f/200_fe59d1f99dd709209eac39bf80a10c2f.jpg', 66);
INSERT INTO `recipestep` VALUES (884, 1, ' 鸡爪解冻，洗干净；', 'https://cp1.douguo.com/upload/caiku/a/c/b/200_acef850c661b05f045d21e76702d7a2b.jpg', 61);
INSERT INTO `recipestep` VALUES (885, 2, ' 鸡爪去指甲；', 'https://cp1.douguo.com/upload/caiku/b/8/9/200_b8769ed6f8e72dbbea116fc1bf493539.jpg', 61);
INSERT INTO `recipestep` VALUES (886, 3, ' 清水烧开，放鸡爪，这是去鸡爪的血腥味；', 'https://cp1.douguo.com/upload/caiku/8/3/d/200_839fa8f2e4e7e88f218399500e8881ed.jpg', 61);
INSERT INTO `recipestep` VALUES (887, 4, ' 捞出鸡爪，冲冷水；', 'https://cp1.douguo.com/upload/caiku/8/d/c/200_8d47a181a893acfadd02a6b1248ed39c.jpg', 61);
INSERT INTO `recipestep` VALUES (888, 5, ' 清水加入姜、八角、沙姜、陈皮等材料��沸；（这些配料要留些等会用）', 'https://cp1.douguo.com/upload/caiku/6/d/f/200_6dcbb1773a8fdaad6e40c7c5af8b479f.jpg', 61);
INSERT INTO `recipestep` VALUES (889, 6, ' 放鸡爪，煲二十分分钟；', 'https://cp1.douguo.com/upload/caiku/b/8/5/200_b8abd862d364fc79449d6b0aa3751a65.jpg', 61);
INSERT INTO `recipestep` VALUES (890, 7, ' 再一次捞出鸡爪，洌干水；', 'https://cp1.douguo.com/upload/caiku/0/2/4/200_02847a3222f77a3433a1a6a5c7dab0d4.jpg', 61);
INSERT INTO `recipestep` VALUES (891, 8, ' 热锅，倒油，中火煎炸鸡爪；', 'https://cp1.douguo.com/upload/caiku/b/5/b/200_b544af6e5876b2a2e6fb545cafbfa89b.jpg', 61);
INSERT INTO `recipestep` VALUES (892, 9, ' 捞出鸡爪的油，爆炒配料，豆豉、蒜蓉、辣椒、八角、香叶、陈皮再放入酱油、料酒；', 'https://cp1.douguo.com/upload/caiku/9/1/3/200_91b23ae17b125546e564d30e8775f343.jpg', 61);
INSERT INTO `recipestep` VALUES (893, 10, ' 加入煎炸好的凤爪，小火焖；', 'https://cp1.douguo.com/upload/caiku/3/6/a/200_3661d6721dcef5bad9c859dc15c0c97a.jpg', 61);
INSERT INTO `recipestep` VALUES (894, 11, ' 加入适量的盐，搅拌收汁；', 'https://cp1.douguo.com/upload/caiku/5/b/a/200_5be3805bcb1a557d099bd0506250825a.jpg', 61);
INSERT INTO `recipestep` VALUES (895, 12, ' 零食好了，周末郊游去。', 'https://cp1.douguo.com/upload/caiku/5/3/1/200_53f0ad5ef82e9e27752b22797071dfb1.jpg', 61);
INSERT INTO `recipestep` VALUES (896, 1, ' 面粉150g，热水60g，凉水20g，这个比例刚刚好，适合没有经验的新手，这个大约可以八张20厘米左右的饼，面粉加入热水，一边加入一边搅拌，然后加入20g凉水，和成面团，', 'https://cp1.douguo.com/upload/caiku/6/9/2/200_6942d641efc6fc68ab5a90d617a7cdd2.jpg', 69);
INSERT INTO `recipestep` VALUES (897, 2, ' 和好的面团盖盆子或者保鲜膜醒发30分钟', 'https://cp1.douguo.com/upload/caiku/e/0/8/200_e022e5519a525e89b1c36309d57f9978.jpg', 69);
INSERT INTO `recipestep` VALUES (898, 3, ' 醒面的时候，切好配菜', 'https://cp1.douguo.com/upload/caiku/c/2/1/200_c241a86899c44e4b26080043755f59c1.jpg', 69);
INSERT INTO `recipestep` VALUES (899, 4, ' 里脊切丝，加少许盐，五香粉，水淀粉，抓匀，腌制，', 'https://cp1.douguo.com/upload/caiku/e/0/8/200_e0a3fdb7378e5325ce22b755733d0e68.jpg', 69);
INSERT INTO `recipestep` VALUES (900, 5, ' 揉成条状再成均匀大小的面团', 'https://cp1.douguo.com/upload/caiku/7/1/a/200_717ef5b9e5a15bdb79d02233a0e41aaa.jpg', 69);
INSERT INTO `recipestep` VALUES (901, 6, ' 按扁，抹上一层油', 'https://cp1.douguo.com/upload/caiku/a/d/8/200_ad4428cf9f652f4039ec309509a92558.jpg', 69);
INSERT INTO `recipestep` VALUES (902, 7, ' 两块面团放在一起，', 'https://cp1.douguo.com/upload/caiku/2/0/2/200_20cc3d14cba26ec032741dc51b046852.jpg', 69);
INSERT INTO `recipestep` VALUES (903, 8, ' 擀成薄饼，如果不圆可以手动整理圆一点，', 'https://cp1.douguo.com/upload/caiku/1/4/f/200_14e723f78fb329c1a73f904b752217ff.jpg', 69);
INSERT INTO `recipestep` VALUES (904, 9, ' 锅里刷少量油，薄薄刷一点就好，小火，放入面饼，看到有一点鼓起了翻面不，', 'https://cp1.douguo.com/upload/caiku/f/0/a/200_f06242b093a23ced2858321803916eda.jpg', 69);
INSERT INTO `recipestep` VALUES (905, 10, ' 翻过来煎那一面，一定要少油，后面其实可以不放油，前面刷些润一下锅就好，', 'https://cp1.douguo.com/upload/caiku/0/c/9/200_0ccd3d80849824e32e0b80808e92eb59.jpg', 69);
INSERT INTO `recipestep` VALUES (906, 11, ' 烙饼之后加入少量油，下入里脊，姜丝翻炒，加入少许生抽，', 'https://cp1.douguo.com/upload/caiku/1/0/3/200_10e54855554fb3e854d0b9f319028cc3.jpg', 69);
INSERT INTO `recipestep` VALUES (907, 12, ' 肉丝变色放入胡萝卜丝，韭薹，和青椒丝，', 'https://cp1.douguo.com/upload/caiku/c/e/8/200_ce8843db726909bdb73133a14f3fcdb8.jpg', 69);
INSERT INTO `recipestep` VALUES (908, 13, ' 适当加少许盐，喜欢的可以加一点糖，体鲜，不加也可以，少许生抽，炒韭薹软一些断生出锅，', 'https://cp1.douguo.com/upload/caiku/3/5/1/200_35a34f1830bcb0abdb40b2a652845b11.jpg', 69);
INSERT INTO `recipestep` VALUES (909, 14, ' 完成了', 'https://cp1.douguo.com/upload/caiku/9/6/0/200_961a1f7c2ce738f93a5603a75761d300.jpg', 69);
INSERT INTO `recipestep` VALUES (910, 15, ' 开始卷饼吧', 'https://cp1.douguo.com/upload/caiku/c/6/6/200_c6c3463d719ec031b55845ba25810536.jpg', 69);
INSERT INTO `recipestep` VALUES (911, 16, ' 超级好吃，韭薹和卷饼真心好配，一张一张根本停不下来，', 'https://cp1.douguo.com/upload/caiku/2/3/f/200_235a110f4f49306d5173744002d512df.jpg', 69);
INSERT INTO `recipestep` VALUES (912, 17, ' 卡路里也不算太高，做为一顿午餐不超标！', 'https://cp1.douguo.com/upload/caiku/5/a/f/200_5a84e87ecf201fe1cd38f6a5e49d755f.jpg', 69);
INSERT INTO `recipestep` VALUES (913, 1, ' 备好食材，用刷子洗涮鲍鱼群边；', 'https://cp1.douguo.com/upload/caiku/f/d/1/200_fd7ce92a023952a0a666c8fdd94536b1.jpg', 90);
INSERT INTO `recipestep` VALUES (914, 2, ' 用小刀紧贴贝壳内部，取出鲍鱼肉，去除肠肚、洗净，在鲍鱼表面上横竖切几道浅口；', 'https://cp1.douguo.com/upload/caiku/5/d/7/200_5d1cc4086e10c537b8c9ba8bc2ab1e27.jpg', 90);
INSERT INTO `recipestep` VALUES (915, 3, ' 豆腐泡洗净对半切开，芹菜洗净，去叶去根、拍扁切段；', 'https://cp1.douguo.com/upload/caiku/3/9/a/200_39b7578ca6aad5de53eede697a73cb6a.jpg', 90);
INSERT INTO `recipestep` VALUES (916, 4, ' 芹菜梗段铺在碟子底部，留一小部分芹菜梗最后浇汁用，接着铺上豆腐泡；', 'https://cp1.douguo.com/upload/caiku/1/e/c/200_1ecf2c008ff5f071daae91a9e4d8a23c.jpg', 90);
INSERT INTO `recipestep` VALUES (917, 5, ' 摆好鲍鱼；', 'https://cp1.douguo.com/upload/caiku/f/6/c/200_f657f51f0804800d40e677d4442334fc.jpg', 90);
INSERT INTO `recipestep` VALUES (918, 6, ' 上面再铺一层芹菜梗；', 'https://cp1.douguo.com/upload/caiku/4/c/9/200_4c538a63c89b32efbee00dda6b24e2e9.jpg', 90);
INSERT INTO `recipestep` VALUES (919, 7, ' 舀起一小勺豆瓣酱，均匀码在鲍鱼上面；', 'https://cp1.douguo.com/upload/caiku/a/2/2/200_a2630e57514308f9db73a2cca59fe282.jpg', 90);
INSERT INTO `recipestep` VALUES (920, 8, ' 放入蒸锅，遮上盖、隔水大火蒸12分钟；', 'https://cp1.douguo.com/upload/caiku/1/9/b/200_19f7e957d10ba239acdd479a90d8cc7b.jpg', 90);
INSERT INTO `recipestep` VALUES (921, 9, ' 蒸食物的空档将辣椒切粒，留下部分的芹菜切粒，最后煸炒酱料时加入增香提味；', 'https://cp1.douguo.com/upload/caiku/7/e/2/200_7ee5886939e0bd5c2ba09fa7471aa872.jpg', 90);
INSERT INTO `recipestep` VALUES (922, 10, ' 烧热锅，倒入少许橄榄油，下芹菜粒爆香；', 'https://cp1.douguo.com/upload/caiku/0/c/1/200_0cc267997875659fcb0929062af3f791.jpg', 90);
INSERT INTO `recipestep` VALUES (923, 11, ' 再调入小半勺豆瓣酱，蒸鲍鱼渗出的汤汁也倒入锅中；', 'https://cp1.douguo.com/upload/caiku/0/6/0/200_06e8f6549fd98c11d7f6895098f2dff0.jpg', 90);
INSERT INTO `recipestep` VALUES (924, 12, ' 中火炒匀，关火；', 'https://cp1.douguo.com/upload/caiku/0/9/5/200_09641e1e95c244aaefaf442441d10d15.jpg', 90);
INSERT INTO `recipestep` VALUES (925, 13, ' 将酱汁浇在鲍鱼上面即可。', 'https://cp1.douguo.com/upload/caiku/f/0/2/200_f00c08927b05b27067c8d8ec1e84a622.jpg', 90);
INSERT INTO `recipestep` VALUES (926, 14, ' 成品图', 'https://cp1.douguo.com/upload/caiku/1/2/7/200_1262df3684d08f0c62425ff0574457d7.jpg', 90);
INSERT INTO `recipestep` VALUES (927, 1, ' 木有打蛋器，四根筷子，搅拌常温稍融的黄油，搅拌均匀。', 'https://cp1.douguo.com/upload/caiku/f/b/5/200_fbda23f2d79dd12bad0d8bf26a533f35.jpg', 78);
INSERT INTO `recipestep` VALUES (928, 2, ' 糖粉也没有，只有细白糖。也加入用力搅拌，搅拌融化。', 'https://cp1.douguo.com/upload/caiku/7/6/9/200_76317a28b1385a0b04a47daad55825c9.jpg', 78);
INSERT INTO `recipestep` VALUES (929, 3, ' 一颗蛋黄分两次加入搅拌好的黄油里，一次搅拌搅拌蛋油充分融合，再假如一半蛋黄再次搅拌充分融合。', 'https://cp1.douguo.com/upload/caiku/1/0/7/200_10ae61a94194d4e84ee8204d23881e47.jpg', 78);
INSERT INTO `recipestep` VALUES (930, 4, ' 分次筛入混合的面粉和玉米淀粉。不停的搅拌均匀。', 'https://cp1.douguo.com/upload/caiku/a/c/6/200_ac8ed35163ca6bf4da836eb4dd902406.jpg', 78);
INSERT INTO `recipestep` VALUES (931, 5, ' 最后揉成团。', 'https://cp1.douguo.com/upload/caiku/a/1/f/200_a1b90b3a0e0cbd46d65e04d7a104316f.jpg', 78);
INSERT INTO `recipestep` VALUES (932, 6, ' 幹薄，模具印出图案。', 'https://cp1.douguo.com/upload/caiku/7/7/7/200_7771adc36fc014d2795138f9bab3cf37.jpg', 78);
INSERT INTO `recipestep` VALUES (933, 7, ' 电饼档预热完毕，码入饼干胚子。我按了爆米花花生。接着打开上盖的开关。盖上盖子。烤到一半打开盖子，翻面。烤制完毕，关电。', 'https://cp1.douguo.com/upload/caiku/2/9/0/200_294201bda6e47448ede74ee77921c5f0.jpg', 78);
INSERT INTO `recipestep` VALUES (934, 8, ' 开盖继续翻面，因为还有余温我怕糊了…', 'https://cp1.douguo.com/upload/caiku/3/a/b/200_3a483cdea729a475b004b8334e7ae70b.jpg', 78);
INSERT INTO `recipestep` VALUES (935, 9, ' 还挺香的。拍照时吃了好几个', 'https://cp1.douguo.com/upload/caiku/4/c/c/200_4c30469c9821318d5b9208538c0f6ecc.jpg', 78);
INSERT INTO `recipestep` VALUES (936, 1, ' 五花肉，洗干净，', 'https://cp1.douguo.com/upload/caiku/d/7/4/200_d7206ef80abea246f4068a1a22b0d954.jpg', 85);
INSERT INTO `recipestep` VALUES (937, 2, ' 剁碎，', 'https://cp1.douguo.com/upload/caiku/9/9/a/200_996d0e8c6a5ff88178938fafb7d3c1ea.jpg', 85);
INSERT INTO `recipestep` VALUES (938, 3, ' 葱', 'https://cp1.douguo.com/upload/caiku/1/a/f/200_1a9a3a010e5de421d4e5b62ebbb09f8f.jpg', 85);
INSERT INTO `recipestep` VALUES (939, 4, ' 大辣椒，', 'https://cp1.douguo.com/upload/caiku/1/b/2/200_1b139426ef01828708b1a8a768ca0ba2.jpg', 85);
INSERT INTO `recipestep` VALUES (940, 5, ' 辣椒洗干净', 'https://cp1.douguo.com/upload/caiku/c/f/d/200_cfb38132241eddb6ea5ab04568a1f63d.jpg', 85);
INSERT INTO `recipestep` VALUES (941, 6, ' 辣椒去籽，（记得带手套哦）', 'https://cp1.douguo.com/upload/caiku/5/9/e/200_59b981b1486cabc1bcd0a04639fed70e.jpg', 85);
INSERT INTO `recipestep` VALUES (942, 7, ' 去籽之后，辣椒皮放盐腌制30分钟；', 'https://cp1.douguo.com/upload/caiku/3/d/b/200_3d51e29081d0f257074c3e161511636b.jpg', 85);
INSERT INTO `recipestep` VALUES (943, 8, ' 肉加入盐、油、酱油、料酒、生粉等配料，腌制30分钟', 'https://cp1.douguo.com/upload/caiku/9/3/3/200_937b01af48523744afb272cee97d0853.jpg', 85);
INSERT INTO `recipestep` VALUES (944, 9, ' 娘辣椒了，', 'https://cp1.douguo.com/upload/caiku/0/3/0/200_0339acc0f785bbaa1896f6096fe418c0.jpg', 85);
INSERT INTO `recipestep` VALUES (945, 10, ' 热锅倒油，放入刚刚酿好的辣椒，下锅煎，', 'https://cp1.douguo.com/upload/caiku/8/c/e/200_8c5f9118d083a9021e8549fca357da0e.jpg', 85);
INSERT INTO `recipestep` VALUES (946, 11, ' 翻转，微黄，即可', 'https://cp1.douguo.com/upload/caiku/d/1/f/200_d199b4611a0b98332aba7c0968077b3f.jpg', 85);
INSERT INTO `recipestep` VALUES (947, 12, ' 哇，好香哦，出锅了。', 'https://cp1.douguo.com/upload/caiku/c/4/4/200_c4cfb353e647ae5fc4f0e629bbf42514.jpg', 85);
INSERT INTO `recipestep` VALUES (948, 1, ' 剁好半肥瘦肉未下少盐，少糖，少生抽，用水淀粉(玉米淀粉比较嫩)，花生油少许拌均匀。', 'https://cp1.douguo.com/upload/caiku/9/b/3/200_9beca340dbd3435081564dccbf5eb633.jpg', 75);
INSERT INTO `recipestep` VALUES (949, 2, ' 秋葵尽量买绿色的比较好看。', 'https://cp1.douguo.com/upload/caiku/9/9/0/200_999997f4b1e7796e7e9ea3992d1ea490.jpg', 75);
INSERT INTO `recipestep` VALUES (950, 3, ' 秋葵洗干净不用焯水，把秋葵刀切一分为二，葵子不要弃掉，最营养部分就葵子和葵液。', 'https://cp1.douguo.com/upload/caiku/0/0/9/200_0097280a48261f8d7b7848ff83e3e799.jpg', 75);
INSERT INTO `recipestep` VALUES (951, 4, ' 开始将肉酿进切开的秋葵面上，别酿太多，多了夏天吃肉肉腻口(我个人感觉哈)秋葵酿好依次排好在盘里。锅烧沸水将秋葵放下锅中火蒸5一7分钟至熟即可。', 'https://cp1.douguo.com/upload/caiku/c/a/d/200_cad3e3109b1e025bddb8f77a6211e3cd.jpg', 75);
INSERT INTO `recipestep` VALUES (952, 5, ' 拍些蒜末下些剁椒和生抽加少量白糖麻油拌均匀待用。', 'https://cp1.douguo.com/upload/caiku/8/1/f/200_81451146577fd77857bef6dccf51805f.jpg', 75);
INSERT INTO `recipestep` VALUES (953, 6, ' 呵呵肉末秋葵蒸熟啦，蒸汁很少唉！忘了说明，秋葵酿下锅蒸时淋少许花生油在秋葵四周围目的保持秋葵绿色。', 'https://cp1.douguo.com/upload/caiku/c/0/5/200_c02344096d6e23c76baff7028049c555.jpg', 75);
INSERT INTO `recipestep` VALUES (954, 7, ' 秋葵酿出锅端上来后，将刚才拌好的酱剁辣浇上葵酿面上。', 'https://cp1.douguo.com/upload/caiku/5/5/7/200_55b8f207468e05e4e19247d5f7a4ddc7.jpg', 75);
INSERT INTO `recipestep` VALUES (955, 8, ' 秋葵酿进了肉未更显清甜。如果你怕辣就将浇汁改豆豉蒜末也很好味道，但要下锅爆香豉蒜才可以做浇汁。', 'https://cp1.douguo.com/upload/caiku/5/3/6/200_5379eef67612bdb888a75c5bc7870e66.jpg', 75);
INSERT INTO `recipestep` VALUES (956, 1, ' 小巧可爱的蒸宝宝，小屋子里也不觉得占地方~', 'https://cp1.douguo.com/upload/caiku/e/a/c/200_ea999b432f60889fcc1417949710a2cc.jpg', 62);
INSERT INTO `recipestep` VALUES (957, 2, ' 使用起来也非常简单，从底下拿出水盒', 'https://cp1.douguo.com/upload/caiku/a/8/d/200_a8387fb57c44f836a94f69b778879b3d.jpg', 62);
INSERT INTO `recipestep` VALUES (958, 3, ' 打开圆子装满纯净水，灰色部分是接蒸的过程中蒸汽滴下的水，用完倒掉', 'https://cp1.douguo.com/upload/caiku/7/1/9/200_71cd7b7a6f68ced87fb6e23c309a3229.jpg', 62);
INSERT INTO `recipestep` VALUES (959, 4, ' 配有网架和一对手套 ', 'https://cp1.douguo.com/upload/caiku/5/2/f/200_52df6302aa308547caed4d9e6b89d79f.jpg', 62);
INSERT INTO `recipestep` VALUES (960, 5, ' 备好材料', 'https://cp1.douguo.com/upload/caiku/b/8/f/200_b87171f88a7c491d6a160f082122db3f.jpg', 62);
INSERT INTO `recipestep` VALUES (961, 6, ' 玉米、豌豆、红椒、姜片、葱白切碎末加入到肉末中', 'https://cp1.douguo.com/upload/caiku/9/a/f/200_9a29e9bbd0599718474ccb55a4bafb6f.jpg', 62);
INSERT INTO `recipestep` VALUES (962, 7, ' 先加盐、胡椒粉、生抽拌匀，再加入适量淀粉搅拌上劲，再淋入芝麻油拌匀', 'https://cp1.douguo.com/upload/caiku/2/c/9/200_2c75557864c41bb60403619eec81df09.jpg', 62);
INSERT INTO `recipestep` VALUES (963, 8, ' 锅中加水烧开，加点盐和食用油，放入洗净去蒂的香菇煮1分钟后捞出', 'https://cp1.douguo.com/upload/caiku/2/6/d/200_2650e1f1e90d5a15c16215bd983c103d.jpg', 62);
INSERT INTO `recipestep` VALUES (964, 9, ' 取香菇，在菌盖的褶皱处抹上少许淀粉', 'https://cp1.douguo.com/upload/caiku/9/3/8/200_93a26a0a719dae87b6f18a3bbd0d7b78.jpg', 62);
INSERT INTO `recipestep` VALUES (965, 10, ' 肉末捏成肉丸子放入香菇中，捏紧，摆在盘中，放上洗净的枸杞', 'https://cp1.douguo.com/upload/caiku/3/a/8/200_3a0347a9e0c5dfcb7d250a5a0ee10ba8.jpg', 62);
INSERT INTO `recipestep` VALUES (966, 11, ' 放入蒸汽炉中', 'https://cp1.douguo.com/upload/caiku/6/1/5/200_61181e52ae7a5161a5fae65556759b35.jpg', 62);
INSERT INTO `recipestep` VALUES (967, 12, ' 设定时间蒸15分钟，30秒蒸汽就可以开始工作非常快，蒸的过程中很静没有噪音，', 'https://cp1.douguo.com/upload/caiku/f/3/f/200_f35a3346b48c178a841e0230747b0a8f.jpg', 62);
INSERT INTO `recipestep` VALUES (968, 13, ' 蒸好结束后用蒸汽炉配的手套拿出来', 'https://cp1.douguo.com/upload/caiku/b/a/c/200_ba544c30a1d5184a57615afe7821157c.jpg', 62);
INSERT INTO `recipestep` VALUES (969, 14, ' 把蒸出来的汁水倒在小锅中，加点油烧开，淋在香菇肉丸上，撒上葱花就可以了', 'https://cp1.douguo.com/upload/caiku/9/e/9/200_9ed00f9f5e3dca455070047671477249.jpg', 62);
INSERT INTO `recipestep` VALUES (970, 1, ' 花菜番茄清洗，切条', 'https://cp1.douguo.com/upload/caiku/7/f/b/200_7ffd83a37c6ec2eedd8731e3af22066b.jpg', 68);
INSERT INTO `recipestep` VALUES (971, 2, ' 热锅热油，倒入切好的番茄稍后再加入食盐，把番茄炒的烂烂', 'https://cp1.douguo.com/upload/caiku/0/8/b/200_08703c400530471d9f0a63990c4bb70b.jpg', 68);
INSERT INTO `recipestep` VALUES (972, 3, ' 炒番茄时，同时把花菜在沸水里煮一下', 'https://cp1.douguo.com/upload/caiku/2/a/6/200_2a2d4dc7d09592691cb783e625e86826.jpg', 68);
INSERT INTO `recipestep` VALUES (973, 4, ' 花菜煮半熟后过滤掉水掉入番茄锅', 'https://cp1.douguo.com/upload/caiku/9/b/e/200_9b336026ff132c5364b266d44d0e383e.jpg', 68);
INSERT INTO `recipestep` VALUES (974, 5, ' 等番茄全部煮烂，包裹在花菜上就可以装盘啦', 'https://cp1.douguo.com/upload/caiku/8/a/6/200_8a281c9db08ee60a70308c3169b822c6.jpg', 68);
INSERT INTO `recipestep` VALUES (975, 1, ' 准备食材', 'https://cp1.douguo.com/upload/caiku/1/d/a/200_1d6f554a105328cd5c05ff24cdfbd73a.jpg', 63);
INSERT INTO `recipestep` VALUES (976, 2, ' 苦瓜切段', 'https://cp1.douguo.com/upload/caiku/a/f/d/200_af9771e2428e0679323e0482be7b052d.jpg', 63);
INSERT INTO `recipestep` VALUES (977, 3, ' 葱姜切末', 'https://cp1.douguo.com/upload/caiku/c/1/a/200_c146ad562664bc1d434bfe84ba09143a.jpg', 63);
INSERT INTO `recipestep` VALUES (978, 4, ' 掏出苦瓜瓤', 'https://cp1.douguo.com/upload/caiku/7/1/4/200_715bc11482da3f5d22d97c569ddc5494.jpg', 63);
INSERT INTO `recipestep` VALUES (979, 5, ' 往苦瓜中间抹上一层薄薄的生粉', 'https://cp1.douguo.com/upload/caiku/4/f/9/200_4ff033e0f6e814bd5914bc09892f4df9.jpg', 63);
INSERT INTO `recipestep` VALUES (980, 6, ' 把肉馅酿进去。', 'https://cp1.douguo.com/upload/caiku/9/3/b/200_93206343a86646b93cf1462f23b5733b.jpg', 63);
INSERT INTO `recipestep` VALUES (981, 7, ' 锅烧热，放油，把苦瓜放入煎香定型，两面都煎一下。 ', 'https://cp1.douguo.com/upload/caiku/4/9/e/200_497f39bdb39a0c7b9923f5cb9d23e11e.jpg', 63);
INSERT INTO `recipestep` VALUES (982, 8, ' 取出后，装盘，进方太蒸箱', 'https://cp1.douguo.com/upload/caiku/f/8/1/200_f8887a3a438bb6c18573353f1b4101b1.jpg', 63);
INSERT INTO `recipestep` VALUES (983, 9, ' 蒸肉模式 100°，蒸制15-20分钟。', 'https://cp1.douguo.com/upload/caiku/7/6/3/200_76180713d30fe3c9c162ecb537055af3.jpg', 63);
INSERT INTO `recipestep` VALUES (984, 10, ' 锅里放油，把葱姜爆香，淋入生抽，加入高汤，糖，清水各适量。煮开后，倒入生粉水，打个极薄的芡 ', 'https://cp1.douguo.com/upload/caiku/1/4/1/200_14f50ac93c4783f63842b07a75308111.jpg', 63);
INSERT INTO `recipestep` VALUES (985, 11, ' 取出摆盘，淋汁即可。', 'https://cp1.douguo.com/upload/caiku/b/a/4/200_baae731e980afd541d55ec008466ab74.jpg', 63);
INSERT INTO `recipestep` VALUES (986, 12, ' 大功告成', 'https://cp1.douguo.com/upload/caiku/0/0/d/200_002f427b9501e2845eb6b143baf45a2d.jpg', 63);
INSERT INTO `recipestep` VALUES (987, 1, ' 小南瓜一个～切开，去籽。', 'https://cp1.douguo.com/upload/caiku/3/a/e/200_3a1eb5699c8da2d49235354572dde28e.jpg', 88);
INSERT INTO `recipestep` VALUES (988, 2, ' 放四勺蜂蜜～如果不喜欢蜂蜜，可以不放，用别的改善味道也不错，可以根据自己的喜好发挥想象力～', 'https://cp1.douguo.com/upload/caiku/7/d/0/200_7d32aaa0c96fc0d8ff7abad25ecf5750.jpg', 88);
INSERT INTO `recipestep` VALUES (989, 3, ' 将南瓜放进小盘，放进锅里蒸～为了快，我用的是高压锅，从开始有气喷出来开始算，大约十五分钟，就可以出锅了～如果南瓜大，可以多蒸一会儿～', 'https://cp1.douguo.com/upload/caiku/8/7/1/200_87bc4666c1bf143d65e73fe499a579f1.jpg', 88);
INSERT INTO `recipestep` VALUES (990, 4, ' 蒸好的南瓜软软的～是这样～', 'https://cp1.douguo.com/upload/caiku/8/f/0/200_8fb8e3bfe5afb0cbf5571e70850e1fe0.jpg', 88);
INSERT INTO `recipestep` VALUES (991, 5, ' 把南瓜拿出来放凉～太烫了不仅不好操作，而且会把等下加进去的酵母菌烫死～找个大点的盆，因为等下就用这个盆发面啦～把南瓜捣成泥状～我加了4勺糖，不喜欢甜的可以少点，根据经验加适量糖可以发酵更快～加俩鸡蛋～不喜欢鸡蛋的可以不加～喜欢牛奶的可以加牛奶或奶粉～蒸好的南瓜本来就比较稀，牛奶别加太多，不然和出来一大盆面就不好了～', 'https://cp1.douguo.com/upload/caiku/2/1/d/200_21d2b787176afa9347c9a5d26637f05d.jpg', 88);
INSERT INTO `recipestep` VALUES (992, 6, ' 加面粉～我用的就是普通面粉～重量没称，只是个大概，根据南瓜的多少适量加入～旁边的那个小碗里是用温水化开的酵母粉～酵母菌的最适温度是20～30摄氏度，比手的温度低一点～千万不能太热的水～不然酵母菌牺牲了面就发不起来了～', 'https://cp1.douguo.com/upload/caiku/9/3/5/200_93a4e56069a927f54e0f56ca16066ca5.jpg', 88);
INSERT INTO `recipestep` VALUES (993, 7, ' 面团和到光滑不黏手～还可以看到南瓜颗粒吧～用锅盖或者什么的盖住，不是完全密封～放在比较温暖的地方～我家有暖气室温28度～大概有两个小时就可以去查看了～面团大概有之前的两倍大，就可以啦～南方的小伙伴家里温度比较低，发酵时间就会比较久～如果想加快发酵速度，可以把盆放在20～30度温水里～嗯～总会有好办法的～', 'https://cp1.douguo.com/upload/caiku/2/3/2/200_237a7c1b1ef0be79b33cd01eb5af9e12.jpg', 88);
INSERT INTO `recipestep` VALUES (994, 8, ' 把发好的面从盆里请到案板上，撒一些面，防止黏，给发酵好的面团排气～我这个面团还不够光滑～嘿嘿', 'https://cp1.douguo.com/upload/caiku/9/0/2/200_9085969c62e0bb5b84cd9859f2dbf932.jpg', 88);
INSERT INTO `recipestep` VALUES (995, 9, ' 把面团捏成长条～切成一小段一小段的～最好大小均匀点～', 'https://cp1.douguo.com/upload/caiku/e/3/2/200_e33f0bd7f0069de140dd726f906e84c2.jpg', 88);
INSERT INTO `recipestep` VALUES (996, 10, ' 把切好的小段揉成小面团～轻轻用手拍成小饼～', 'https://cp1.douguo.com/upload/caiku/9/a/9/200_9a01b11b8bb43ce44ecef40677d43349.jpg', 88);
INSERT INTO `recipestep` VALUES (997, 11, ' 我用来烙饼的是高压锅～大家可以试用电饼铛什么的，只要能控制温度稳定的锅都可以～炒锅不可以用，因为比较锅体比较薄，温度上升快，饼很容易就成小黑脸～加一点点油，能不粘锅的油量就可以～', 'https://cp1.douguo.com/upload/caiku/5/8/a/200_5863640d1d53702d8d5ec7fbdd1071aa.jpg', 88);
INSERT INTO `recipestep` VALUES (998, 12, ' 饼在放下锅之前要在案板上再发三五分钟，等锅里的温度合适了，调成最小火，放入饼～在锅里的饼滋滋响着的时候可以继续前面的步骤做小饼～我一般一次做两个放进锅里，然后再做两个～第一面大概成型了就可以反面，要小心烙得太过火变成小黑脸～', 'https://cp1.douguo.com/upload/caiku/2/b/1/200_2bbf6d28091b970d484b7f47a8a993a1.jpg', 88);
INSERT INTO `recipestep` VALUES (999, 13, ' 反面以后继续～大概是入锅时的两倍厚左右就可以出锅了～', 'https://cp1.douguo.com/upload/caiku/c/5/5/200_c51abbdde7774e16f0f67b533df72845.jpg', 88);
INSERT INTO `recipestep` VALUES (1000, 14, ' 出锅以后是这样的～', 'https://cp1.douguo.com/upload/caiku/e/2/9/200_e2c81b3feb8a1acc62e68274804f8e29.jpg', 88);
INSERT INTO `recipestep` VALUES (1001, 15, ' 所有都烙好是这样的～', 'https://cp1.douguo.com/upload/caiku/6/c/a/200_6cdd7e644624df8ddd7f225cccd3618a.jpg', 88);
INSERT INTO `recipestep` VALUES (1002, 16, ' 掰开以后是这样嗒～如果你也喜欢南瓜～也有耐心～来试试吧～', 'https://cp1.douguo.com/upload/caiku/6/1/8/200_61d6f99bd5bd871cf61f69da5f3ef7a8.jpg', 88);
INSERT INTO `recipestep` VALUES (1003, 1, ' 新鲜香菇，洗干净后用剪刀把根剪掉。放入锅里焯熟后捞出沥干水分备用。', 'https://cp1.douguo.com/upload/caiku/a/d/8/200_ad9a88432c5453931fdf008ac57a4eb8.jpg', 65);
INSERT INTO `recipestep` VALUES (1004, 2, ' 剪下来的香菇根，剁碎，加入猪肉末里，加盐，黄酒，鲜味汁，葱花，拌匀。', 'https://cp1.douguo.com/upload/caiku/e/e/1/200_ee94738f8d87df30957ed46ba7e648d1.jpg', 65);
INSERT INTO `recipestep` VALUES (1005, 3, ' 用勺子，舀适量调好味的猪肉末，酿在香菇里，堆起圆圆的形状平放在盘子里。蒸锅水开后，大火蒸10-15分钟，蒸熟。', 'https://cp1.douguo.com/upload/caiku/e/7/d/200_e7be112716fa2163cd337a9bde435d5d.jpg', 65);
INSERT INTO `recipestep` VALUES (1006, 4, ' 把盘子取出，盘子里的汤汁倒在小锅里。锅里加上鲜味汁，耗油，汤汁不多的话可以适量再加一些水（配方外）。', 'https://cp1.douguo.com/upload/caiku/8/8/c/200_8802a04b2539c4e14e3261bb82022b3c.jpg', 65);
INSERT INTO `recipestep` VALUES (1007, 5, ' 淀粉加水调成淀粉水。小锅里的液体煮沸后倒入淀粉水勾薄芡。', 'https://cp1.douguo.com/upload/caiku/1/3/9/200_13d853c1175da182d476b55042d0e4b9.jpg', 65);
INSERT INTO `recipestep` VALUES (1008, 6, ' 最后把芡汁均匀的淋在香菇酿肉上，撒上葱花即可。', 'https://cp1.douguo.com/upload/caiku/4/4/a/200_445891a311d487a15cf783996cffefba.jpg', 65);
INSERT INTO `recipestep` VALUES (1009, 1, ' 鸡蛋打撒，加入水，盐，搅拌均匀', 'https://cp1.douguo.com/upload/caiku/9/4/8/200_94b9db0516e6e91dc115bc2265f62048.jpg', 87);
INSERT INTO `recipestep` VALUES (1010, 2, ' 加入面粉，搅拌均匀', 'https://cp1.douguo.com/upload/caiku/a/6/c/200_a65c9e1443f9076f65bf88645b78f76c.jpg', 87);
INSERT INTO `recipestep` VALUES (1011, 3, ' 搅拌成糊，把切好的茄子，挂糊', 'https://cp1.douguo.com/upload/caiku/f/8/e/200_f8cf452794ca18e07e7627876da596de.jpg', 87);
INSERT INTO `recipestep` VALUES (1012, 4, ' 切成1cm左右的薄片', 'https://cp1.douguo.com/upload/caiku/a/5/d/200_a5da48b48b0770a4dd405e143fc00c4d.jpg', 87);
INSERT INTO `recipestep` VALUES (1013, 5, ' 挂糊后放入电饼铛里', 'https://cp1.douguo.com/upload/caiku/7/3/d/200_73d3c930d72ca914fee8004e8a06b2bd.jpg', 87);
INSERT INTO `recipestep` VALUES (1014, 6, ' 先一面煎两三分钟，翻面再煎两分钟就', 'https://cp1.douguo.com/upload/caiku/7/2/5/200_72d5c8d902a6ce459fb98127a9d30ea5.jpg', 87);
INSERT INTO `recipestep` VALUES (1015, 1, ' 材料汇集，苦瓜洗净切成节块后挖去瓜釀，猪肉用料理机绞拌成肉糜，粉丝，糯米提前浸泡30分钟。', 'https://cp1.douguo.com/upload/caiku/f/b/d/200_fb080d4071aedc9f612768cfbb3841ed.jpg', 76);
INSERT INTO `recipestep` VALUES (1016, 2, ' 除了蒜片，姜片，热开水，将其它辅材与调味品加入肉馅内，顺一个方向搅拌均匀腌制15分钟。', 'https://cp1.douguo.com/upload/caiku/0/d/7/200_0d850f876bc5f66c66d9542e1740a557.jpg', 76);
INSERT INTO `recipestep` VALUES (1017, 3, ' 将肉馅酿入苦瓜节内，包满两面抹平。', 'https://cp1.douguo.com/upload/caiku/9/b/c/200_9b3c6dd63d163bed1f2fd2294830965c.jpg', 76);
INSERT INTO `recipestep` VALUES (1018, 4, ' 将酿苦瓜放入九阳IH电饭锅肉胆内。', 'https://cp1.douguo.com/upload/caiku/4/2/9/200_4278d026ef1758c15a1d704396bc2479.jpg', 76);
INSERT INTO `recipestep` VALUES (1019, 5, ' 选择蒸煮功能10分钟两面煎香，一面煎5分钟翻另一面煎香。', 'https://cp1.douguo.com/upload/caiku/e/c/e/200_ecfac73b17204ff7def18b7b6f77068e.jpg', 76);
INSERT INTO `recipestep` VALUES (1020, 6, ' 煎香时间到后加入盐，白糖，蒜片，姜片，热开水没过酿苦瓜。', 'https://cp1.douguo.com/upload/caiku/4/f/1/200_4ff2b17f365f00cccbb4573c6cb73e11.jpg', 76);
INSERT INTO `recipestep` VALUES (1021, 7, ' 选择蒸煮功能40分钟即可。', 'https://cp1.douguo.com/upload/caiku/5/f/e/200_5f147ab6eeb2639b413195da3d7ffcee.jpg', 76);
INSERT INTO `recipestep` VALUES (1022, 8, ' 成品:', 'https://cp1.douguo.com/upload/caiku/a/1/e/200_a149a7448f08e08cd9f34947221f2a3e.jpg', 76);
INSERT INTO `recipestep` VALUES (1023, 9, ' 成品', 'https://cp1.douguo.com/upload/caiku/3/4/7/200_34dbc0842a72ffd72e53b1f067396b87.jpg', 76);
INSERT INTO `recipestep` VALUES (1024, 10, ' 成品近照', 'https://cp1.douguo.com/upload/caiku/f/6/7/200_f62d9b965c198f48357497351e1d0e57.jpg', 76);
INSERT INTO `recipestep` VALUES (1025, 11, ' 成品:吃起来不腻、不柴，也不会感到苦口，味道清淡鲜美，口感绵绵软糯！', 'https://cp1.douguo.com/upload/caiku/d/4/1/200_d495d331ebaf968c7bcb62d2551a1ef1.jpg', 76);
INSERT INTO `recipestep` VALUES (1026, 1, ' 把羊肉浸泡在凉水中两小时，中间隔一小时换次水 ', 'https://cp1.douguo.com/upload/caiku/9/9/1/200_9980e33a474d827e15cc6e4379ba4761.png', 105);
INSERT INTO `recipestep` VALUES (1027, 2, ' 用清水将羊肉清洗干净后切成小块', 'https://cp1.douguo.com/upload/caiku/f/8/a/200_f8553d9667fbe06204f7d4a52fb1746a.png', 105);
INSERT INTO `recipestep` VALUES (1028, 3, ' 在锅中倒入足量的清水，把切好的羊肉块放入锅中', 'https://cp1.douguo.com/upload/caiku/e/2/1/200_e2e651080b7f4afb4ebc3b10f31b97f1.png', 105);
INSERT INTO `recipestep` VALUES (1029, 4, ' 中火做开锅后撇去浮沫，倒入料酒 ', 'https://cp1.douguo.com/upload/caiku/0/c/5/200_0cf1e68d3c03ffb158c66df5f38363a5.png', 105);
INSERT INTO `recipestep` VALUES (1030, 5, ' 接着放入花椒、葱姜、干桔皮和山楂', 'https://cp1.douguo.com/upload/caiku/2/5/6/200_25bd8fb7b0905b46a45759ded26f77f6.png', 105);
INSERT INTO `recipestep` VALUES (1031, 6, ' 盖上锅盖，转小火慢炖1-1.5小时后', 'https://cp1.douguo.com/upload/caiku/a/7/0/200_a7c54b198b6d7322e975b000ee0edbe0.png', 105);
INSERT INTO `recipestep` VALUES (1032, 7, ' 把桔皮和山楂捞出，接着撒入适量的食盐', 'https://cp1.douguo.com/upload/caiku/9/e/2/200_9efc83c288b6e4424ffa4d79a6b36032.png', 105);
INSERT INTO `recipestep` VALUES (1033, 8, ' 转中火继续炖15-20分钟后关火就可以吃了', 'https://cp1.douguo.com/upload/caiku/f/a/a/200_fa0636a2c20cc965a544fa935f52eaba.png', 105);
INSERT INTO `recipestep` VALUES (1034, 1, ' 食材洗净备好，整鸡切块。', 'https://cp1.douguo.com/upload/caiku/e/4/f/200_e4535060a856234a8f1117825ea58d6f.jpeg', 113);
INSERT INTO `recipestep` VALUES (1035, 2, ' 调味料备齐', 'https://cp1.douguo.com/upload/caiku/1/f/a/200_1f06c0242e5af03a285ae28437ec489a.jpg', 113);
INSERT INTO `recipestep` VALUES (1036, 3, ' 茶树菇切根', 'https://cp1.douguo.com/upload/caiku/b/6/a/200_b607e1276ed4cc70b030c26846d04fca.jpg', 113);
INSERT INTO `recipestep` VALUES (1037, 4, ' 处理好的茶树菇用温水泡十分钟', 'https://cp1.douguo.com/upload/caiku/6/a/2/200_6ad9130446b62d4b8567db307a891e82.jpg', 113);
INSERT INTO `recipestep` VALUES (1038, 5, ' 打开美的电磁炉，清水煮沸后放入鸡肉、葱段', 'https://cp1.douguo.com/upload/caiku/8/3/e/200_837130be308b1626aeb83f0a657297ae.jpg', 113);
INSERT INTO `recipestep` VALUES (1039, 6, ' 再次煮沸后，撇去浮沫，捞出鸡块备用', 'https://cp1.douguo.com/upload/caiku/d/e/d/200_de69902a4a6dc7b5f6ec8f521f21470d.jpg', 113);
INSERT INTO `recipestep` VALUES (1040, 7, ' 将鸡块放入美的电压力锅', 'https://cp1.douguo.com/upload/caiku/a/8/6/200_a8e7ef94f5dd7e7ec26e6d969d576146.jpg', 113);
INSERT INTO `recipestep` VALUES (1041, 8, ' 将茶树菇铺在鸡块上方', 'https://cp1.douguo.com/upload/caiku/9/9/2/200_99d68c8afd304b6a84c2896b2cca2ce2.jpeg', 113);
INSERT INTO `recipestep` VALUES (1042, 9, ' 倒入没过鸡肉的清水，放入葱段、姜片、红枣、枸杞子、黄芪', 'https://cp1.douguo.com/upload/caiku/3/3/8/200_331fdc8e236bbc9d9a11e5c6b76e5b18.jpeg', 113);
INSERT INTO `recipestep` VALUES (1043, 10, ' 打开手机端阿里智能APP，选择煲汤模式，口感选择适中', 'https://cp1.douguo.com/upload/caiku/b/a/2/200_ba3dddb6aa4f9271e48b9040ea5e38f2.jpg', 113);
INSERT INTO `recipestep` VALUES (1044, 11, ' 等待汤煲好', 'https://cp1.douguo.com/upload/caiku/f/1/e/200_f15564855b7781ca0bfd2ae059c03bee.jpg', 113);
INSERT INTO `recipestep` VALUES (1045, 12, ' 烹饪结束后，手动放气', 'https://cp1.douguo.com/upload/caiku/5/f/5/200_5f4cbeed383d48fbc94a3926845a1ef5.jpg', 113);
INSERT INTO `recipestep` VALUES (1046, 13, ' 打开电压力锅锅盖', 'https://cp1.douguo.com/upload/caiku/6/b/0/200_6bfa8ce612f5646a67bdf31435d4dcb0.jpeg', 113);
INSERT INTO `recipestep` VALUES (1047, 14, ' 选择开盖煮模式，加入盐，青菜', 'https://cp1.douguo.com/upload/caiku/3/3/4/200_3305f0380bdfb63eefc22f0665a8da94.jpg', 113);
INSERT INTO `recipestep` VALUES (1048, 15, ' 煮十分钟', 'https://cp1.douguo.com/upload/caiku/b/4/d/200_b486f8b6714cfc8a71288db992c7fc9d.jpg', 113);
INSERT INTO `recipestep` VALUES (1049, 16, ' 出锅，可以喝啦', 'https://cp1.douguo.com/upload/caiku/9/2/c/200_925c9149141bad384f90166bde41c91c.jpg', 113);
INSERT INTO `recipestep` VALUES (1050, 1, ' 准备好材料，把银耳泡发，提前一两个小时用凉水或温水泡发', 'https://cp1.douguo.com/upload/caiku/c/9/a/200_c9974d36cd54476253dee7bc853eda4a.jpeg', 101);
INSERT INTO `recipestep` VALUES (1051, 2, ' 这是我家荷塘，莲子都是从自家荷塘摘得，纯天然的', 'https://cp1.douguo.com/upload/caiku/2/8/c/200_28552926a414a31fceb8ca41b105ed9c.jpeg', 101);
INSERT INTO `recipestep` VALUES (1052, 3, ' 枸杞洗净，莲子洗净，剔去莲芯，如果各位亲用的是超市买的干莲子，建议提前一天晚上泡上水，如果是晚上煮汤，那就清晨泡上水，这样比较好煮，省时省燃气', 'https://cp1.douguo.com/upload/caiku/2/e/f/200_2ed86f45159d3d986762049c2af93ecf.jpeg', 101);
INSERT INTO `recipestep` VALUES (1053, 4, ' 银耳泡开后，撕成小朵', 'https://cp1.douguo.com/upload/caiku/b/5/e/200_b5a3cbb68161735c4fbf14866e15b76e.jpeg', 101);
INSERT INTO `recipestep` VALUES (1054, 5, ' 红枣切成小条，比较方便煮，汤羹也比较容易入味，也可以不切，这个随个人喜好。', 'https://cp1.douguo.com/upload/caiku/0/7/d/200_0720bc2eb3c0193078b6809a9220d5ad.jpeg', 101);
INSERT INTO `recipestep` VALUES (1055, 6, ' 锅中加水放入银耳，煮开后转小火炖煮30分钟', 'https://cp1.douguo.com/upload/caiku/8/6/1/200_86360fb04223e0a111ff971d17638041.jpeg', 101);
INSERT INTO `recipestep` VALUES (1056, 7, ' 然后放入红枣，枸杞，莲子，冰糖，再炖煮40分钟就可以了', 'https://cp1.douguo.com/upload/caiku/1/9/5/200_19a6081a02837ad143c89146ed87f475.jpeg', 101);
INSERT INTO `recipestep` VALUES (1057, 8, ' 啦啦啦，出锅，开吃！', 'https://cp1.douguo.com/upload/caiku/2/b/d/200_2b24bc0cb452ecb46cd65e607d0cf2ed.jpeg', 101);
INSERT INTO `recipestep` VALUES (1058, 1, ' 年糕切片，大白菜洗净切片，猪肉片里加入料酒，生粉和鲜酱油拌匀腌制半小时', 'https://cp1.douguo.com/upload/caiku/f/7/9/200_f7f4247c704b5092aaec35f85dbf8ca9.jpg', 117);
INSERT INTO `recipestep` VALUES (1059, 2, ' 小葱洗净把葱叶和葱白分别切开', 'https://cp1.douguo.com/upload/caiku/4/4/3/200_44cd884664abf27f4ffe0fb5221d6d13.jpg', 117);
INSERT INTO `recipestep` VALUES (1060, 3, ' 热锅倒油', 'https://cp1.douguo.com/upload/caiku/f/f/e/200_ff1128e3dfab21573f2ea4f8c66a7d1e.jpg', 117);
INSERT INTO `recipestep` VALUES (1061, 4, ' 先下入猪肉片炒至全部变色后捞起', 'https://cp1.douguo.com/upload/caiku/3/d/e/200_3d16654516bc9dae4f13f2f1828a629e.jpg', 117);
INSERT INTO `recipestep` VALUES (1062, 5, ' ', 'https://cp1.douguo.com/upload/caiku/0/5/3/200_054bb6216a83eac18a94bd079217afd3.jpg', 117);
INSERT INTO `recipestep` VALUES (1063, 6, ' 倒入白菜不断的煸炒至出水加入盐煸炒均匀', 'https://cp1.douguo.com/upload/caiku/0/b/1/200_0be48f301af5eeb77d76a0b1c1fb2a21.jpg', 117);
INSERT INTO `recipestep` VALUES (1064, 7, ' 加入清水烧开后加入年糕和猪肉片', 'https://cp1.douguo.com/upload/caiku/4/6/a/200_461fd8198164aae0f6fe6224dd88c74a.jpg', 117);
INSERT INTO `recipestep` VALUES (1065, 8, ' 盖上烧开后再少2分钟加入鸡精调味', 'https://cp1.douguo.com/upload/caiku/a/1/7/200_a1cd026e2d4488a5d90ffa825ede3a77.jpg', 117);
INSERT INTO `recipestep` VALUES (1066, 9, ' 再加入油辣椒提味后熄火出锅（不吃辣的可以不加）', 'https://cp1.douguo.com/upload/caiku/5/3/8/200_538befebc402df406b18c74b23a537c8.jpg', 117);
INSERT INTO `recipestep` VALUES (1067, 10, ' 盛入碗中撒上葱花后上桌', '', 117);
INSERT INTO `recipestep` VALUES (1068, 1, ' 排骨在水里', 'https://cp1.douguo.com/upload/caiku/9/2/5/200_92f44f21e289bf713d2636b80d9e59a5.jpg', 114);
INSERT INTO `recipestep` VALUES (1069, 2, ' 加入料酒', 'https://cp1.douguo.com/upload/caiku/1/e/5/200_1e3981c384e612aa2bdbd32cb9d1e3b5.jpg', 114);
INSERT INTO `recipestep` VALUES (1070, 3, ' 煮三分钟', 'https://cp1.douguo.com/upload/caiku/6/e/8/200_6e539e140d9bf5db60d4182768002268.jpg', 114);
INSERT INTO `recipestep` VALUES (1071, 4, ' 然后清洗干净换锅加入干净水加入葱姜', 'https://cp1.douguo.com/upload/caiku/7/0/f/200_70e01ea9a2c1f3715c476d6503b8eb3f.jpg', 114);
INSERT INTO `recipestep` VALUES (1072, 5, ' 玉米切开胡萝卜切刀', 'https://cp1.douguo.com/upload/caiku/5/0/e/200_500a0260abce9702d7eef57c36af59ae.jpg', 114);
INSERT INTO `recipestep` VALUES (1073, 6, ' 大火煮转到炖锅里炖3个小时', 'https://cp1.douguo.com/upload/caiku/3/6/9/200_36e5030b2b84e75dd54e1dbedd67fe19.jpg', 114);
INSERT INTO `recipestep` VALUES (1074, 7, ' 然后加入玉米胡萝卜', 'https://cp1.douguo.com/upload/caiku/8/0/4/200_809fcae0c9d481d9c44775954fc31d64.jpg', 114);
INSERT INTO `recipestep` VALUES (1075, 8, ' 加入盐', 'https://cp1.douguo.com/upload/caiku/0/4/4/200_04f7977d737e34e6fcf70b93b50ddb34.jpg', 114);
INSERT INTO `recipestep` VALUES (1076, 9, ' 再次炖2小时', 'https://cp1.douguo.com/upload/caiku/8/9/a/200_89e7072432b95baf6de2bd40263f99fa.jpg', 114);
INSERT INTO `recipestep` VALUES (1077, 10, ' 炖至玉米熟', 'https://cp1.douguo.com/upload/caiku/f/a/e/200_fa1cad9353d1f7d81c198dc333cc8d9e.jpg', 114);
INSERT INTO `recipestep` VALUES (1078, 11, ' 然后装盘', 'https://cp1.douguo.com/upload/caiku/7/d/9/200_7d83b89c0832f2ed06866ae4b6966839.jpg', 114);
INSERT INTO `recipestep` VALUES (1079, 1, ' 材料备好。', 'https://cp1.douguo.com/upload/caiku/1/1/a/200_11a89a818bec874ace04b0d24e2e5a4a.jpg', 111);
INSERT INTO `recipestep` VALUES (1080, 2, ' 紫菜撕成片，葱切成花，姜切成末，虾皮备好。', 'https://cp1.douguo.com/upload/caiku/4/d/6/200_4d2231d01b2b6515f3e42cb7078025e6.jpg', 111);
INSERT INTO `recipestep` VALUES (1081, 3, ' 汤锅烧热，淋油爆香姜末和葱白。', 'https://cp1.douguo.com/upload/caiku/8/0/9/200_80fed87f5f36b206ea0954c1df3ef909.jpg', 111);
INSERT INTO `recipestep` VALUES (1082, 4, ' 然后倒入虾皮。', 'https://cp1.douguo.com/upload/caiku/d/6/c/200_d68f2af5dcaa25444eda1d343509d40c.jpg', 111);
INSERT INTO `recipestep` VALUES (1083, 5, ' 快速翻炒，让虾皮爆出香味。', 'https://cp1.douguo.com/upload/caiku/4/0/7/200_40ec02b6bd133b7dce945dc6c65b9237.jpg', 111);
INSERT INTO `recipestep` VALUES (1084, 6, ' 倒入6碗水，烧开后调小火煮5分钟左右，让虾皮出味，汤色变浓。', 'https://cp1.douguo.com/upload/caiku/1/5/c/200_150283b597a0c509fd29c8011d75ff1c.jpg', 111);
INSERT INTO `recipestep` VALUES (1085, 7, ' 放入紫菜片，调中火。', 'https://cp1.douguo.com/upload/caiku/a/2/3/200_a2bdef309a0a705363d7a7a19501a5f3.jpg', 111);
INSERT INTO `recipestep` VALUES (1086, 8, ' 紫菜煮软后用筷子搅散稍煮一会。', 'https://cp1.douguo.com/upload/caiku/d/4/e/200_d4d0bec1bf197382f06213111b5bda5e.jpg', 111);
INSERT INTO `recipestep` VALUES (1087, 9, ' 撒入葱花，用筷子搅散。', 'https://cp1.douguo.com/upload/caiku/d/8/3/200_d8507c903e2d7a30395d76e5cf6c7f13.jpg', 111);
INSERT INTO `recipestep` VALUES (1088, 10, ' 撒入盐，淋入几滴香醋和芝麻油即可（虾皮有咸味，盐量要少）。', 'https://cp1.douguo.com/upload/caiku/4/1/a/200_4166097735e75ab1f7aea2e5b5f387aa.jpg', 111);
INSERT INTO `recipestep` VALUES (1089, 1, ' 材料；', 'https://cp1.douguo.com/upload/caiku/8/c/2/200_8c634e401ef04a95e8d04541180b1f12.jpg', 102);
INSERT INTO `recipestep` VALUES (1090, 2, ' 肉末中加一片姜末、盐拌均匀搅拌上劲；', 'https://cp1.douguo.com/upload/caiku/0/9/9/200_09e03110b14d57c296d9cc68a518acc9.jpg', 102);
INSERT INTO `recipestep` VALUES (1091, 3, ' 小白菜洗净切段；', 'https://cp1.douguo.com/upload/caiku/b/a/1/200_baa3184157d5e3deaabfa554372f6021.jpg', 102);
INSERT INTO `recipestep` VALUES (1092, 4, ' 胡萝卜去皮切丝；香菜切段;姜切丝；', 'https://cp1.douguo.com/upload/caiku/e/8/9/200_e8c1aae14770cd4f27674a53478f2109.jpg', 102);
INSERT INTO `recipestep` VALUES (1093, 5, ' 将肉末做成肉丸；', 'https://cp1.douguo.com/upload/caiku/4/0/e/200_402c0f98f3813dc8d2f77fcdc830a37e.jpg', 102);
INSERT INTO `recipestep` VALUES (1094, 6, ' 将肉丸放入沸水中焯水10秒；', 'https://cp1.douguo.com/upload/caiku/a/5/f/200_a50d5b57e16acb94826bc34aaca3213f.jpg', 102);
INSERT INTO `recipestep` VALUES (1095, 7, ' 捞出；', 'https://cp1.douguo.com/upload/caiku/0/3/b/200_03edd2b636a598217070f82756dd464b.jpg', 102);
INSERT INTO `recipestep` VALUES (1096, 8, ' 汤锅中另加清水3碗烧开，放入肉丸和姜丝烧开，转小火煮10分钟；', 'https://cp1.douguo.com/upload/caiku/3/6/9/200_36255c9249c82cd2e1a845bf996ae779.jpg', 102);
INSERT INTO `recipestep` VALUES (1097, 9, ' 加入小白菜和胡萝卜丝煮2分钟；', 'https://cp1.douguo.com/upload/caiku/4/0/f/200_40f790eb0eeb83a6ffd4f6f62ee524cf.jpg', 102);
INSERT INTO `recipestep` VALUES (1098, 10, ' 加入香菜，再加盐，加半汤匙金龙鱼调和油拌匀就可以了。', 'https://cp1.douguo.com/upload/caiku/8/4/6/200_84086038d766b378578e32b514f7b8b6.jpg', 102);
INSERT INTO `recipestep` VALUES (1099, 1, ' 藕、胡萝卜去皮，洗净切片(可以稍微厚一点)；', 'https://cp1.douguo.com/upload/stepimage/a/e/f/200_1529391.jpg', 98);
INSERT INTO `recipestep` VALUES (1100, 2, ' 红枣去核，香菇泡发，花生米略微泡一下，所有材料洗净；', 'https://cp1.douguo.com/upload/stepimage/8/f/f/200_1529392.jpg', 98);
INSERT INTO `recipestep` VALUES (1101, 3, ' 锅内加水，所有材料一起下锅，大火煮开后转小火煲1小时左右，加入盐调味即可。', 'https://cp1.douguo.com/upload/stepimage/7/4/7/200_1529393.jpg', 98);
INSERT INTO `recipestep` VALUES (1102, 1, ' 乌鸡宰杀后去除内脏、头脚，清洗干净，剁成大块，放入沸水中汆烫3分钟，捞起清洗干净；', 'https://cp1.douguo.com/upload/stepimage/3/c/4/200_1529991.jpg', 120);
INSERT INTO `recipestep` VALUES (1103, 2, ' 将山药洗净表皮。', 'https://cp1.douguo.com/upload/stepimage/0/f/3/200_1529992.jpg', 120);
INSERT INTO `recipestep` VALUES (1104, 3, ' 去皮切成斜刀块备用（如暂时不用可浸入盐水中，以防止氧化发黑）；', 'https://cp1.douguo.com/upload/stepimage/e/2/1/200_1529993.jpg', 120);
INSERT INTO `recipestep` VALUES (1105, 4, ' 将乌鸡、葱结、姜片放入炖锅内，加入足量清水，大火煮开后加料酒，转小火炖45分钟；', 'https://cp1.douguo.com/upload/stepimage/2/9/f/200_1529994.jpg', 120);
INSERT INTO `recipestep` VALUES (1106, 5, ' 加入山药块。', 'https://cp1.douguo.com/upload/stepimage/d/e/a/200_1529995.jpg', 120);
INSERT INTO `recipestep` VALUES (1107, 6, ' 枸杞，再煮15分钟。', 'https://cp1.douguo.com/upload/stepimage/b/5/1/200_1529996.jpg', 120);
INSERT INTO `recipestep` VALUES (1108, 7, ' 关火前加盐调味即可。', 'https://cp1.douguo.com/upload/stepimage/7/7/a/200_1529997.jpg', 120);
INSERT INTO `recipestep` VALUES (1109, 1, ' 大棒骨剁成两段（可以让卖肉的剁好）用清水洗净', 'https://cp1.douguo.com/upload/caiku/9/f/3/200_9f2c5ad59e99c8bdcb634981203d74b3.jpeg', 103);
INSERT INTO `recipestep` VALUES (1110, 2, ' 料酒，姜片，葱段备用', 'https://cp1.douguo.com/upload/caiku/9/b/6/200_9bc5af6cdddb109e2af2e61b00ce9f46.jpeg', 103);
INSERT INTO `recipestep` VALUES (1111, 3, ' 大棒骨冷水入锅焯去血末，用冷水反复冲洗干净杂质', 'https://cp1.douguo.com/upload/caiku/6/7/a/200_67648d3246ec21a04556f11230f2b2fa.jpeg', 103);
INSERT INTO `recipestep` VALUES (1112, 4, ' 锅中加入冷水和大骨头加入葱段，姜片大火烧开', 'https://cp1.douguo.com/upload/caiku/8/4/6/200_84f7fe8688125c5404447363b81886e6.jpeg', 103);
INSERT INTO `recipestep` VALUES (1113, 5, ' 喝的时候加盐，熬好的骨头汤可以加入自己喜欢的青菜同食更佳营养，煮面条做菜品均可，剩下的留做高汤放入密封的容器中冷冻，用的时候取出。', 'https://cp1.douguo.com/upload/caiku/6/6/4/200_662ed8c2d631759c076cb4c4aae6b514.jpeg', 103);
INSERT INTO `recipestep` VALUES (1114, 1, ' 把鱼加点细盐抹全身，沥干水。', 'https://cp1.douguo.com/upload/caiku/c/f/6/200_cffb5509815e1ce3e4885378c6fe0656.jpg', 99);
INSERT INTO `recipestep` VALUES (1115, 2, ' 豆腐切块。', 'https://cp1.douguo.com/upload/caiku/3/b/0/200_3b394aef286e014ac8150cee537b02b0.jpg', 99);
INSERT INTO `recipestep` VALUES (1116, 3, ' 这里介绍个煎鱼不破皮的窍门，把锅烧热，倒入少量油，转动锅，让油滑一下锅，再倒出，这个动作的目的:让锅体润滑。再加入要煎鱼的油，把鱼放入煎，一定要把开肚的部位朝下，这样才不会爆油。', 'https://cp1.douguo.com/upload/caiku/d/2/c/200_d2064a4beee92f827d2879d1369bcf0c.jpg', 99);
INSERT INTO `recipestep` VALUES (1117, 4, ' 把鱼两面煎黄后，烹入料酒，加入姜片，倒入凉水，再加入豆腐。', 'https://cp1.douguo.com/upload/caiku/5/7/d/200_57fca11dff1ee047ec7fc36efd40d8dd.jpg', 99);
INSERT INTO `recipestep` VALUES (1118, 5, ' 马上盖上锅盖，改中大火，开始煮鱼。（一定要中大火，如果火小了，汤则是清的，不白）', 'https://cp1.douguo.com/upload/caiku/a/8/d/200_a8072b7e2b674bf1ece2314fe7c6fb8d.jpg', 99);
INSERT INTO `recipestep` VALUES (1119, 6, ' 煮上十五分钟，鱼汤就能变奶白色了，这时加盐调味，加入两根小葱去腥。', 'https://cp1.douguo.com/upload/caiku/6/e/9/200_6eedb2c16e469ca8bcb64d6c99d0efe9.jpg', 99);
INSERT INTO `recipestep` VALUES (1120, 7, ' 最后加入葱花，撒上白胡椒粉，就可以喝鲜美的奶白鲫鱼汤啦！', 'https://cp1.douguo.com/upload/caiku/2/5/6/200_25b39085b0b2d64f688b2ec1716e3536.jpg', 99);
INSERT INTO `recipestep` VALUES (1121, 1, ' 鲫鱼刮掉鳞片，去掉腮和内脏，清洗干净控干水待用。', 'https://cp1.douguo.com/upload/caiku/e/b/3/200_eb5ace1f31e7501c63d96b9d624c2943.jpg', 109);
INSERT INTO `recipestep` VALUES (1122, 2, ' 枸杞用温水泡开。', 'https://cp1.douguo.com/upload/caiku/9/7/6/200_97e7c664c9222e43286bacf6cf1e3696.jpg', 109);
INSERT INTO `recipestep` VALUES (1123, 3, ' 热锅少许油，烧到八分热，把鱼擦干人锅煎到两面金黄，放葱姜，烹入一勺料酒。', 'https://cp1.douguo.com/upload/caiku/8/3/e/200_83b9e7ab6ee551736774f637130654be.jpg', 109);
INSERT INTO `recipestep` VALUES (1124, 4, ' 倒入足够量的热水烧开，撇去浮沫大火烧15分钟，改小火再炖5分钟。', 'https://cp1.douguo.com/upload/caiku/2/1/4/200_218d23b4b00be336fe87d4fd60d5f8e4.jpg', 109);
INSERT INTO `recipestep` VALUES (1125, 5, ' 汤炖到奶白色时放入枸杞加盐调味。', 'https://cp1.douguo.com/upload/caiku/a/3/2/200_a35dfb6c9c1193b6634e42721f252ac2.jpg', 109);
INSERT INTO `recipestep` VALUES (1126, 6, ' 最后洒些香菜，洒些胡椒粉就可以上桌了。', 'https://cp1.douguo.com/upload/caiku/f/2/1/200_f2578c788ac566c24410b7cedb9a9011.jpg', 109);
INSERT INTO `recipestep` VALUES (1127, 1, ' 排骨洗净，斩成小段；', 'https://cp1.douguo.com/upload/caiku/1/2/f/200_1268c73b396802c56dbdc01b2e607c7f.jpg', 96);
INSERT INTO `recipestep` VALUES (1128, 2, ' 清水煮沸，放入排骨，去漂物、捞出沥干水；', 'https://cp1.douguo.com/upload/caiku/2/0/1/200_205332420b48539e1316c93af6232e31.jpg', 96);
INSERT INTO `recipestep` VALUES (1129, 3, ' 冬瓜去皮去籽切块，玉米切段，薏米洗净浸泡，枸杞洗净，所以食材准备好；', 'https://cp1.douguo.com/upload/caiku/d/5/a/200_d5ba8a6f29c7911b07f3cc6305bbc8fa.jpg', 96);
INSERT INTO `recipestep` VALUES (1130, 4, ' 把排骨、玉米、薏米、枸杞、生姜放入锅中；', 'https://cp1.douguo.com/upload/caiku/0/9/7/200_09418cfa7b1871fd00335e473fb15927.jpg', 96);
INSERT INTO `recipestep` VALUES (1131, 5, ' 加适量清水煲30分钟；PS：水要盖过食材；', 'https://cp1.douguo.com/upload/caiku/a/e/e/200_aeda42b44254f899d0686fadcc0a91be.jpg', 96);
INSERT INTO `recipestep` VALUES (1132, 6, ' 加入冬瓜，再煲8分钟；', 'https://cp1.douguo.com/upload/caiku/a/a/1/200_aaa7b32ac1910e97636821e77647c931.jpg', 96);
INSERT INTO `recipestep` VALUES (1133, 7, ' 放盐拌均，即可。', 'https://cp1.douguo.com/upload/caiku/e/e/7/200_ee205528cf28867c40e8faa17dd0f8d7.jpg', 96);
INSERT INTO `recipestep` VALUES (1134, 1, ' 材料备好洗净，排骨切成5cm段。', 'https://cp1.douguo.com/upload/caiku/b/6/8/200_b6a7d6aca2d9051e8dcd2d68cf036cf8.jpg', 107);
INSERT INTO `recipestep` VALUES (1135, 2, ' 打开美的电磁炉，选择烧水模式，清水煮沸，放入生姜、料酒、排骨。', 'https://cp1.douguo.com/upload/caiku/e/0/9/200_e094ffa9205d056814f282375ba762f9.jpg', 107);
INSERT INTO `recipestep` VALUES (1136, 3, ' 焯水三分钟后捞出排骨。', 'https://cp1.douguo.com/upload/caiku/1/6/0/200_16e07d220903ab48691fbac1a4f1ab20.jpg', 107);
INSERT INTO `recipestep` VALUES (1137, 4, ' 美的电压力锅放入1升水，依次放入排骨、冬瓜、海带、薏米、姜片、葱段，盖好盖子。', 'https://cp1.douguo.com/upload/caiku/b/a/d/200_bae427371a4eb75ad21feb528c05197d.jpg', 107);
INSERT INTO `recipestep` VALUES (1138, 5, ' 打开阿里智能APP美的电压力锅，选择煲汤模式。', 'https://cp1.douguo.com/upload/caiku/c/e/3/200_ce3b87afda5b44159267b712f8838913.jpg', 107);
INSERT INTO `recipestep` VALUES (1139, 6, ' 等待30分钟。', 'https://cp1.douguo.com/upload/caiku/8/2/3/200_82d41b87073a9922112c46ddbbe7c3b3.jpg', 107);
INSERT INTO `recipestep` VALUES (1140, 7, ' 手动放气。', 'https://cp1.douguo.com/upload/caiku/4/6/2/200_46f3ec709c873075b34e6245cf12b4c2.jpg', 107);
INSERT INTO `recipestep` VALUES (1141, 8, ' 盛出即可。', 'https://cp1.douguo.com/upload/caiku/d/0/1/200_d05d438c176553f8d4e8ed5a3ebc72d1.jpg', 107);
INSERT INTO `recipestep` VALUES (1142, 1, ' 排骨洗净，胡萝卜去皮、玉米洗净，切块。', 'https://cp1.douguo.com/upload/caiku/8/a/0/200_8a25374dd30a68ddaf55a62dd1d7ae40.jpg', 115);
INSERT INTO `recipestep` VALUES (1143, 2, ' 锅里加入洗净斩件的排骨加凉水烧开，煮出浮沫血水捞起来。', 'https://cp1.douguo.com/upload/caiku/d/a/6/200_da645d94780f122e993e2fd72f950716.jpg', 115);
INSERT INTO `recipestep` VALUES (1144, 3, ' 把全部材料和姜放入锅内，放适量的水，电高压力锅25分钟。', 'https://cp1.douguo.com/upload/caiku/8/f/4/200_8fae04824bcc1a7087155f76ca789204.jpg', 115);
INSERT INTO `recipestep` VALUES (1145, 4, ' 关火前放少许盐。一锅清甜的胡萝卜玉米筒骨汤就炖好了哦。习惯性的来个特写，色诱一下亲们的味觉。', 'https://cp1.douguo.com/upload/caiku/5/f/9/200_5f941c151facdd5760dd9dc1914e09e9.jpg', 115);
INSERT INTO `recipestep` VALUES (1146, 1, ' 葱姜，洗净改刀', 'https://cp1.douguo.com/upload/caiku/e/c/b/200_ec66d8e55d72451edb75e0e034331b3b.jpg', 92);
INSERT INTO `recipestep` VALUES (1147, 2, ' 猪肚解冻后，在清水中先漂洗一次', 'https://cp1.douguo.com/upload/caiku/1/1/d/200_1156b3644b69a257ff431ef285b880ed.jpg', 92);
INSERT INTO `recipestep` VALUES (1148, 3, ' 盆中无水，放入猪肚，洒入3勺盐，充分搓洗揉捏，漂净', 'https://cp1.douguo.com/upload/caiku/9/2/e/200_921292cbd2c2dc1909031f1920cb089e.jpg', 92);
INSERT INTO `recipestep` VALUES (1149, 4, ' 倒入适量面粉，内外都揉捏到位了，挤出污物，用水漂净', 'https://cp1.douguo.com/upload/caiku/1/1/1/200_113f639c32645798f5ed4b123f8d4df1.jpg', 92);
INSERT INTO `recipestep` VALUES (1150, 5, ' 以上步骤，如此重复3次，直至将污物全部洗净，最后用清水彻底漂洗干净', 'https://cp1.douguo.com/upload/caiku/8/c/4/200_8c133a0bc60526c500a33383ddf79df4.jpg', 92);
INSERT INTO `recipestep` VALUES (1151, 6, ' 将洗净的猪肚切成小段', 'https://cp1.douguo.com/upload/caiku/1/f/c/200_1f926a309ad794b0375970bdb0ccdf7c.jpg', 92);
INSERT INTO `recipestep` VALUES (1152, 7, ' 锅中水烧开，放入猪肚，飞水，完了将猪肚漂洗干净一旁待用', 'https://cp1.douguo.com/upload/caiku/3/1/a/200_316df085d21846d4cefdac3ed58b60fa.jpg', 92);
INSERT INTO `recipestep` VALUES (1153, 8, ' 砂锅中放入清水，倒入葱姜段，煮开', 'https://cp1.douguo.com/upload/caiku/8/3/0/200_83dfc8a0412d3712a8ea47a9c3af83e0.jpg', 92);
INSERT INTO `recipestep` VALUES (1154, 9, ' 葱姜水煮开后，倒入处理好的猪肚', 'https://cp1.douguo.com/upload/caiku/a/a/5/200_aac40e706605e6157d7b4f2af8461145.jpg', 92);
INSERT INTO `recipestep` VALUES (1155, 10, ' 第一次煮开后，倒入料酒，再次煮开后，转小火炖90分钟至猪肚能够轻易嚼动', 'https://cp1.douguo.com/upload/caiku/4/8/a/200_489b5f7b9e5d9221e14b93b5eb5a626a.jpg', 92);
INSERT INTO `recipestep` VALUES (1156, 11, ' 加入少许盐花和五小粒白砂糖', 'https://cp1.douguo.com/upload/caiku/6/2/b/200_62e7e70a2e25ea3ceb094c56125c5c4b.jpg', 92);
INSERT INTO `recipestep` VALUES (1157, 12, ' 最后撒入少许白胡椒粉，调味即可', 'https://cp1.douguo.com/upload/caiku/e/d/a/200_ed19e90c25c337f35a6ad36732c5626a.jpg', 92);
INSERT INTO `recipestep` VALUES (1158, 1, ' 【准备材料】将胡萝卜 洋葱  芹菜简单切块；', 'https://cp1.douguo.com/upload/caiku/8/5/6/200_854512b3e390aa379d362cd50d29c816.jpg', 112);
INSERT INTO `recipestep` VALUES (1159, 2, ' 【熬制鸡汤】将鸡背骨冷水下锅，焯水捞出；换一锅干净的水，水加热时添加所有香料和配菜；', 'https://cp1.douguo.com/upload/caiku/9/0/6/200_903341830fbecdf64032090a994f1456.jpg', 112);
INSERT INTO `recipestep` VALUES (1160, 3, ' 【熬制鸡汤】待水热了，把鸡放回来。煮开后调至小火，熬煮1.5-3小时，直至骨肉很容易分离；', 'https://cp1.douguo.com/upload/caiku/9/1/9/200_915b3db2d2cd6b8167c51a0f1c8b8619.jpg', 112);
INSERT INTO `recipestep` VALUES (1161, 4, ' 【过滤鸡汤】用漏勺过滤鸡汤，将鸡骨头和其它配菜香料丢弃', 'https://cp1.douguo.com/upload/caiku/5/4/d/200_5446a2110ac13ebd6cce080e0ce7187d.jpg', 112);
INSERT INTO `recipestep` VALUES (1162, 5, ' 【保存鸡汤】待鸡汤降至室温后放入冰箱冷藏；第二天将鸡汤表层的油刮去。可以分装成小份，冷藏3-5天，冷冻可保存3个月。', 'https://cp1.douguo.com/upload/caiku/c/4/7/200_c4b0d8502b117d24bfd27bec2a9af4b7.jpg', 112);
INSERT INTO `recipestep` VALUES (1163, 1, ' 准备好材料，猪蹄洗干净剁成块。', 'https://cp1.douguo.com/upload/caiku/3/2/9/200_32de2410d16055de0c3f39071e545429.jpg', 97);
INSERT INTO `recipestep` VALUES (1164, 2, ' 黄豆和花生提前泡40分钟，其他材料洗干净备用。', 'https://cp1.douguo.com/upload/caiku/7/0/a/200_70cdccb13493cb50dc5b054b6c9334fa.jpg', 97);
INSERT INTO `recipestep` VALUES (1165, 3, ' 锅内加水烧开，放入猪蹄块和4片姜，用大火煮去猪蹄的血水，捞出备用。', 'https://cp1.douguo.com/upload/caiku/3/0/4/200_307fb7e1ccf9b66e11978f9f6a877e64.jpg', 97);
INSERT INTO `recipestep` VALUES (1166, 4, ' 除了枸杞外，所有材料和猪蹄连同4片姜一起放进锅中，加适量的水。', 'https://cp1.douguo.com/upload/caiku/2/a/5/200_2a632f239c00ae40d8a05591329900d5.jpg', 97);
INSERT INTO `recipestep` VALUES (1167, 5, ' 用大火把汤烧开，转小火慢炖2小时左右，出锅前5分钟调入枸杞。', 'https://cp1.douguo.com/upload/caiku/0/3/d/200_03cc00e1b7ae82963cb9cbbde9eacfdd.jpg', 97);
INSERT INTO `recipestep` VALUES (1168, 6, ' 关火前调入食盐即可。', 'https://cp1.douguo.com/upload/caiku/c/2/2/200_c2420ad58df52680fd9f2767dfa2b782.jpg', 97);
INSERT INTO `recipestep` VALUES (1169, 1, ' 鲫鱼去腮、麟、内脏、及肚子里面的里膜；', 'https://cp1.douguo.com/upload/caiku/c/5/4/200_c596a91c2bd63717aaecd7a0f25029d4.jpg', 100);
INSERT INTO `recipestep` VALUES (1170, 2, ' 锅烧热，先用生姜片涂锅为沾。再放入食用油煎鱼，待两面煎到微黄即可', 'https://cp1.douguo.com/upload/caiku/a/1/1/200_a1917f04ccd5181bb6f0f826c7c70f41.jpg', 100);
INSERT INTO `recipestep` VALUES (1171, 3, ' 白萝卜洗净去皮，切成丝备用；', 'https://cp1.douguo.com/upload/caiku/f/8/4/200_f801963f5f8033837d0b236d9a611064.jpg', 100);
INSERT INTO `recipestep` VALUES (1172, 4, ' 煎好鲫鱼后，加入适量冷水，加葱、姜煮到沸腾。这时再加入萝卜丝；', 'https://cp1.douguo.com/upload/caiku/f/f/b/200_ffbfabbe132862cf9ace1191512cf0db.jpg', 100);
INSERT INTO `recipestep` VALUES (1173, 5, ' 盖上锅盖，大火煮开，再用中火煮30分钟左右； ', 'https://cp1.douguo.com/upload/caiku/7/9/2/200_7946d6a65b938244d88dcb9e0fa5afe2.jpg', 100);
INSERT INTO `recipestep` VALUES (1174, 6, ' 出锅前加入盐、香菜调味。', 'https://cp1.douguo.com/upload/caiku/6/8/6/200_68b99e71e304bfce88fb08e03be45c56.jpg', 100);
INSERT INTO `recipestep` VALUES (1175, 1, ' 猪骨洗净，锅中放水烧开下猪排汆出血水，撇去浮沫捞出排骨备用。', 'https://cp1.douguo.com/upload/caiku/7/e/d/200_7eeb8f5216b18f7251ad7f539d92809d.png', 91);
INSERT INTO `recipestep` VALUES (1176, 2, ' 冬瓜去皮去瓤，洗净，切块。', 'https://cp1.douguo.com/upload/caiku/a/8/4/200_a895c38f969939597ed2744dd67064b4.png', 91);
INSERT INTO `recipestep` VALUES (1177, 3, ' 另起锅加入大料、葱段、姜片和花椒煮开，然后将煮好的排骨重新放到锅中大火烧开后转小火慢炖半个小时。', 'https://cp1.douguo.com/upload/caiku/6/4/8/200_64c1edab03dd2d2a8668dcf42f06bb18.png', 91);
INSERT INTO `recipestep` VALUES (1178, 4, ' 然后加入冬瓜块，加适量的盐在煮15分钟，加入鸡精和香菜段，滴入几滴香油即可', 'https://cp1.douguo.com/upload/caiku/9/5/2/200_9514698dc9013fe5972c0d0bad629f92.png', 91);
INSERT INTO `recipestep` VALUES (1179, 1, ' 排骨洗干净，放到清水锅中焯水，捞出，滤干水；PS：这是去排骨血腥，煲出的汤鲜甜没有浑浊。', 'https://cp1.douguo.com/upload/caiku/4/8/7/200_48ecf3bf2a936e2f5a697779baac88f7.jpg', 116);
INSERT INTO `recipestep` VALUES (1180, 2, ' 排骨、生姜、瑶柱放入锅中，加适量的水，煲45分钟；', 'https://cp1.douguo.com/upload/caiku/6/7/7/200_679ddf046f44b0e389cc5ca587fdf957.jpg', 116);
INSERT INTO `recipestep` VALUES (1181, 3, ' 胡萝卜去皮切块，加入排骨汤锅中，继续煲15分钟；', 'https://cp1.douguo.com/upload/caiku/5/b/7/200_5bf17da884050ee9981f6474a6fb49e7.jpg', 116);
INSERT INTO `recipestep` VALUES (1182, 4, ' 山药去皮，切片，加入，再煲5分钟；', 'https://cp1.douguo.com/upload/caiku/9/a/9/200_9a2c4a723517b1b26bb8acd281436eb9.jpg', 116);
INSERT INTO `recipestep` VALUES (1183, 5, ' 出锅前加入盐，拌均即可', 'https://cp1.douguo.com/upload/caiku/d/e/a/200_de1f7fc920f945818b98ae0d352d98fa.jpg', 116);
INSERT INTO `recipestep` VALUES (1184, 1, ' 准备原料，清洗金针菇跟豆腐，豆腐切块', 'https://cp1.douguo.com/upload/caiku/9/d/a/200_9d9043c5b87b8dcee12810cf4802678a.jpg', 119);
INSERT INTO `recipestep` VALUES (1185, 2, ' 锅内加入少许油，放入番茄煎至熟软', 'https://cp1.douguo.com/upload/caiku/f/d/2/200_fd67e6521715a73edba74d8f91451d32.jpg', 119);
INSERT INTO `recipestep` VALUES (1186, 3, ' 加一碗水', 'https://cp1.douguo.com/upload/caiku/9/a/0/200_9ad16ede6a0c0b0b4241c8508a62a170.jpg', 119);
INSERT INTO `recipestep` VALUES (1187, 4, ' 待番茄汤颜色变红，加入豆腐', 'https://cp1.douguo.com/upload/caiku/8/4/4/200_840dc82da000761371c69f168bcf2dc4.jpg', 119);
INSERT INTO `recipestep` VALUES (1188, 5, ' 再加金针菇', 'https://cp1.douguo.com/upload/caiku/0/8/3/200_080bea993d447f1a8a842c66114ca213.jpg', 119);
INSERT INTO `recipestep` VALUES (1189, 6, ' 盖上盖子让它们翻滚', 'https://cp1.douguo.com/upload/caiku/b/5/c/200_b59aa8daca73421270fb014bf76c642c.jpg', 119);
INSERT INTO `recipestep` VALUES (1190, 7, ' 一碗减肥瘦身的番茄金针菇豆腐汤��做好啦', 'https://cp1.douguo.com/upload/caiku/3/5/a/200_356bff0d183fe968d6af854edc2a52aa.jpg', 119);
INSERT INTO `recipestep` VALUES (1191, 1, ' 把所有材料准备好。', 'https://cp1.douguo.com/upload/caiku/6/0/2/200_60f00d14c9ab0c3feb00c037c19f08a2.png', 118);
INSERT INTO `recipestep` VALUES (1192, 2, ' 鱼头剖成两半，去掉鱼鳃，用清水清洗干净。', 'https://cp1.douguo.com/upload/caiku/f/9/d/200_f9ebaa221cbe5910c2c5c6c2c760842d.png', 118);
INSERT INTO `recipestep` VALUES (1193, 3, ' 并用厨房纸吸干水分。', 'https://cp1.douguo.com/upload/caiku/c/c/6/200_ccfb56d5e9dc72467071261a62d40346.png', 118);
INSERT INTO `recipestep` VALUES (1194, 4, ' 嫩豆腐用淡盐水泡10分钟。', 'https://cp1.douguo.com/upload/caiku/6/1/c/200_61ae50b02430aef276983a04e75eee6c.png', 118);
INSERT INTO `recipestep` VALUES (1195, 5, ' 取出，用清水轻轻冲洗一下，切成小块。', 'https://cp1.douguo.com/upload/caiku/5/b/a/200_5b6559a107ebfcecbd67f95778a913aa.png', 118);
INSERT INTO `recipestep` VALUES (1196, 6, ' 芫茜（香菜）洗干净，切成段。', 'https://cp1.douguo.com/upload/caiku/a/b/2/200_ab632861a17a49fb59a118869ff8c2b2.png', 118);
INSERT INTO `recipestep` VALUES (1197, 7, ' 姜去皮，并用刀背拍下后，放入热油锅中，爆香。', 'https://cp1.douguo.com/upload/caiku/8/b/d/200_8bd7c8387c8ad8a44d98d0019268ea2d.png', 118);
INSERT INTO `recipestep` VALUES (1198, 8, ' 放进鱼头，中小火煎至两面金黄。', 'https://cp1.douguo.com/upload/caiku/5/e/f/200_5e5e5e721925cd1a67a8b7926151581f.png', 118);
INSERT INTO `recipestep` VALUES (1199, 9, ' 加入适量热水，一定要加热水哦，这样煮出来的汤才会香浓鲜甜。', 'https://cp1.douguo.com/upload/caiku/5/f/e/200_5fbe72390e7c58150db1451efe9569ae.png', 118);
INSERT INTO `recipestep` VALUES (1200, 10, ' 大火煮开后，放入嫩豆腐。', 'https://cp1.douguo.com/upload/caiku/f/f/9/200_ff7199e640b34ed2968f86350b604a99.png', 118);
INSERT INTO `recipestep` VALUES (1201, 11, ' 继续大火煮至汤奶白奶白的，熄火前加入香菜并按个人口味调入适量盐即可', 'https://cp1.douguo.com/upload/caiku/a/9/c/200_a9aafdcf0e644075eef5a1c4fc57d5ec.png', 118);
INSERT INTO `recipestep` VALUES (1202, 1, ' 准备食材', 'https://cp1.douguo.com/upload/caiku/f/b/a/200_fb8494d686377829f91b239cebd01a8a.jpg', 106);
INSERT INTO `recipestep` VALUES (1203, 2, ' 虾仁用料酒、盐腌一下', 'https://cp1.douguo.com/upload/caiku/4/9/1/200_49f22908f218b8d0ab69fb55862e0a11.jpg', 106);
INSERT INTO `recipestep` VALUES (1204, 3, ' 西红柿切块、口蘑切片', 'https://cp1.douguo.com/upload/caiku/9/5/5/200_95017f7007deec2643144aa275006585.jpg', 106);
INSERT INTO `recipestep` VALUES (1205, 4, ' 豆腐用小刀划成小块', 'https://cp1.douguo.com/upload/caiku/f/f/f/200_ffe7a378d06438ffba84128ca966272f.jpg', 106);
INSERT INTO `recipestep` VALUES (1206, 5, ' 起油锅把西���柿煸出汁，放开水大火煮开', 'https://cp1.douguo.com/upload/caiku/1/9/f/200_1994f51a8f2509a0a7b945d60d8ae99f.jpg', 106);
INSERT INTO `recipestep` VALUES (1207, 6, ' 放入豆腐', 'https://cp1.douguo.com/upload/caiku/c/9/6/200_c9f68cdc7a7b3a5c6be1a2ea48508ec6.jpg', 106);
INSERT INTO `recipestep` VALUES (1208, 7, ' 放蘑菇、虾仁', 'https://cp1.douguo.com/upload/caiku/1/1/7/200_114552f1273b4710944db6d5eb7c8b17.jpg', 106);
INSERT INTO `recipestep` VALUES (1209, 8, ' 放盐', 'https://cp1.douguo.com/upload/caiku/3/f/7/200_3ff9f0d4538818b45771b90f07ad0257.jpg', 106);
INSERT INTO `recipestep` VALUES (1210, 9, ' 最后撒上葱花，滴几滴香油出锅', 'https://cp1.douguo.com/upload/caiku/1/c/0/200_1c549026ced37cb750dcfd3de9a7a280.jpg', 106);
INSERT INTO `recipestep` VALUES (1211, 1, ' 首先准备好食材，馄饨皮300克 猪肉300克 葱姜少许。', 'https://cp1.douguo.com/upload/caiku/6/a/b/200_6aa4395e0caaaae0b374e702823a2d7b.jpg', 108);
INSERT INTO `recipestep` VALUES (1212, 2, ' 我们先肉皮切去不用。', 'https://cp1.douguo.com/upload/caiku/d/1/e/200_d156fa091c779aa01d19413412a44ebe.jpg', 108);
INSERT INTO `recipestep` VALUES (1213, 3, ' 猪肉剁成泥。', 'https://cp1.douguo.com/upload/caiku/5/0/7/200_50778c4d5a7569c975e23c832b181167.jpg', 108);
INSERT INTO `recipestep` VALUES (1214, 4, ' 葱和生��切碎，加入肉泥中，再加入2小勺清水和5克酱油，搅拌均匀。（给1岁以下宝宝食用，不要加酱油，生姜和葱少许即可）', 'https://cp1.douguo.com/upload/caiku/2/c/9/200_2c4b2045359d53c7c5adea6e609cd4a9.jpg', 108);
INSERT INTO `recipestep` VALUES (1215, 5, ' 少许肉馅放入馄饨皮中。', 'https://cp1.douguo.com/upload/caiku/3/e/1/200_3e03dadf2391f1c1b654f1e22ad71d91.jpg', 108);
INSERT INTO `recipestep` VALUES (1216, 6, ' 馄饨皮对折包住肉，轻轻压紧下，边角沾点水。', 'https://cp1.douguo.com/upload/caiku/5/4/2/200_54fe6903521f6f0d68d18b8906a023c2.jpg', 108);
INSERT INTO `recipestep` VALUES (1217, 7, ' 把沾水的边角，互相粘住就可以了。', 'https://cp1.douguo.com/upload/caiku/b/f/0/200_bf804da5fe5893cbcd8e42e9ae6e5cf0.gif', 108);
INSERT INTO `recipestep` VALUES (1218, 1, ' 准备好原材料， 猪肝切成片， 番茄去皮后切成小块； ', 'https://cp1.douguo.com/upload/caiku/e/a/3/200_ea8028eabeea0fbaf67a216158e37ae3.jpg', 110);
INSERT INTO `recipestep` VALUES (1219, 2, ' 猪肝加入适量的盐、淀粉、料酒， 拌均匀；', 'https://cp1.douguo.com/upload/caiku/1/b/5/200_1b20871dc6e20b516827f24c238cddf5.jpg', 110);
INSERT INTO `recipestep` VALUES (1220, 3, '  烧热锅，放入适量的油， 下入番茄粒去煸炒；', 'https://cp1.douguo.com/upload/caiku/f/e/1/200_fefae30a238ed164a2044e4b3c341641.jpg', 110);
INSERT INTO `recipestep` VALUES (1221, 4, ' 番茄炒成泥后加入适量的糖继续翻炒；', 'https://cp1.douguo.com/upload/caiku/7/9/2/200_7922f63c5b2b7b675b908f8b1f422872.jpg', 110);
INSERT INTO `recipestep` VALUES (1222, 5, ' 加入适量的水；', 'https://cp1.douguo.com/upload/caiku/8/5/1/200_85bcc1acffabcf8600e01ef67f794ad1.jpg', 110);
INSERT INTO `recipestep` VALUES (1223, 6, '  加入白玉菇放入锅中炖煮两、三分钟；  ', 'https://cp1.douguo.com/upload/caiku/9/5/c/200_952fbd1defee6d674c6816da3a40612c.jpg', 110);
INSERT INTO `recipestep` VALUES (1224, 7, '  加入适量的盐和胡椒粉调味；', 'https://cp1.douguo.com/upload/caiku/2/b/e/200_2bc0a1cae8ef74ffde9fdf0530ea30ce.jpg', 110);
INSERT INTO `recipestep` VALUES (1225, 8, '  最后加入腌制好的猪肝放入里面煮变色即可关火；', 'https://cp1.douguo.com/upload/caiku/e/5/a/200_e55e3af3605199078d3b0a7bed14f5fa.jpg', 110);
INSERT INTO `recipestep` VALUES (1226, 9, ' 盛入小碗中表面上撒些小葱末。', 'https://cp1.douguo.com/upload/caiku/0/7/2/200_0769a40c7952043740b6b65632bd85b2.jpg', 110);
INSERT INTO `recipestep` VALUES (1227, 1, ' 薏米、芡实用清水浸泡1-2小时；', 'https://cp1.douguo.com/upload/caiku/6/7/b/200_671f999d579c340c27b992bd174fd6db.jpg', 93);
INSERT INTO `recipestep` VALUES (1228, 2, ' 排骨焯水捞出沥干；', 'https://cp1.douguo.com/upload/caiku/e/8/c/200_e86b21dec56ca42d3049589080e7601c.jpg', 93);
INSERT INTO `recipestep` VALUES (1229, 3, ' 冬瓜洗净切块；', 'https://cp1.douguo.com/upload/caiku/1/b/5/200_1bb557e473019779bbbdf9a7d511e6e5.jpg', 93);
INSERT INTO `recipestep` VALUES (1230, 4, ' 锅中加水4碗，放入排骨、薏米、芡实和姜片；', 'https://cp1.douguo.com/upload/caiku/2/9/d/200_29f2e2347300136463b3fe3d936f077d.jpg', 93);
INSERT INTO `recipestep` VALUES (1231, 5, ' 大火烧开后倒入冬瓜；', 'https://cp1.douguo.com/upload/caiku/6/7/8/200_678b27ab2e2f2e7fde06b8f02b00ab38.jpg', 93);
INSERT INTO `recipestep` VALUES (1232, 6, ' 再开后转小火煲1个小时，然后加盐调味~', 'https://cp1.douguo.com/upload/caiku/a/5/b/200_a5700400e932d7fd97e0de2249924bdb.jpg', 93);
INSERT INTO `recipestep` VALUES (1233, 1, ' 准备材料。', 'https://cp1.douguo.com/upload/stepimage/b/7/a/200_1529351.jpg', 104);
INSERT INTO `recipestep` VALUES (1234, 2, ' 排骨加入姜片，一起加入到冷水煮到沸；然后捞出排骨备用；这个过程可以有效去除排骨的血腥味；', 'https://cp1.douguo.com/upload/stepimage/d/c/3/200_1529352.jpg', 104);
INSERT INTO `recipestep` VALUES (1235, 3, ' 排骨一次加足清水，加入切好的白萝卜块，旺火煮到滚；转文火继续煲40分钟；', 'https://cp1.douguo.com/upload/stepimage/2/6/8/200_1529353.jpg', 104);
INSERT INTO `recipestep` VALUES (1236, 4, ' 排骨软烂时，加入枸杞旺火煮5分钟；最后加盐、胡椒调味就可以喝了。', 'https://cp1.douguo.com/upload/stepimage/5/0/7/200_1529354.jpg', 104);
INSERT INTO `recipestep` VALUES (1237, 1, ' 将鸡切成块， 铁棍山药切成滚刀块，准备好姜片； ', 'https://cp1.douguo.com/upload/caiku/7/6/3/200_76750e34f85ff344f4af416395e30983.jpg', 94);
INSERT INTO `recipestep` VALUES (1238, 2, '  锅中放少许油， 将鸡块和姜片放入； ', 'https://cp1.douguo.com/upload/caiku/9/1/2/200_9188ab9e3b053944ba157d2baf552792.jpg', 94);
INSERT INTO `recipestep` VALUES (1239, 3, '  翻炒鸡块， 直至鸡块变色， 鸡肉收紧鸡皮微微焦黄； ', 'https://cp1.douguo.com/upload/caiku/0/7/4/200_07358bfc47ff500510bfa4770e263634.jpg', 94);
INSERT INTO `recipestep` VALUES (1240, 4, '  将炒好的鸡块放入慢炖锅中； ', 'https://cp1.douguo.com/upload/caiku/9/b/e/200_9b0a7e882a0b3f7b0a8d88951b6f050e.jpg', 94);
INSERT INTO `recipestep` VALUES (1241, 5, '  再加入适量的开水； ', 'https://cp1.douguo.com/upload/caiku/3/3/5/200_337f5b0484b16996cc8fb3f14762a2e5.jpg', 94);
INSERT INTO `recipestep` VALUES (1242, 6, '  放入铁棍山药块； ', 'https://cp1.douguo.com/upload/caiku/3/8/e/200_380c70438a7561f053a7598d68bbf65e.jpg', 94);
INSERT INTO `recipestep` VALUES (1243, 7, '  加盖， 小火慢炖2个小时；', 'https://cp1.douguo.com/upload/caiku/d/5/6/200_d55087e5f1ed78c59de96d669afe12a6.jpg', 94);
INSERT INTO `recipestep` VALUES (1244, 8, '  再放入鸡肝、鸡胗等鸡杂， 加盖后继续慢炖二十分钟；', 'https://cp1.douguo.com/upload/caiku/6/c/3/200_6c4292689d14eb47d9a35563c5934833.jpg', 94);
INSERT INTO `recipestep` VALUES (1245, 9, '  最后加入盐、胡椒粉等调味， 放入适量的枸杞；', 'https://cp1.douguo.com/upload/caiku/0/0/4/200_00f3964972374f6ea1e95416e274f794.jpg', 94);
INSERT INTO `recipestep` VALUES (1246, 10, ' 盛入碗中， 喝汤了。', 'https://cp1.douguo.com/upload/caiku/a/c/c/200_ac6768b575f803e443b86280c0e6067c.jpg', 94);
INSERT INTO `recipestep` VALUES (1247, 1, ' 材料备齐：嫩豆腐放盐水里泡会儿，鲫鱼洗净后用盐涂抹鱼身，肚子里撒点盐腌制一下，香菇洗净撕块。', 'https://cp1.douguo.com/upload/caiku/7/e/c/200_7e30582508850457935e86aa3785e22c.png', 95);
INSERT INTO `recipestep` VALUES (1248, 2, ' 锅烧热放花生油，鱼下锅煎至两面发黄，放入生姜片、蒜头、大葱片爆香。', 'https://cp1.douguo.com/upload/caiku/7/7/f/200_770c107b8b057995b0c5c5e3c9fa5eaf.png', 95);
INSERT INTO `recipestep` VALUES (1249, 3, ' 倒入开水煮5分钟左右，直至汤成奶白色，放入豆腐、香菇块一起大概煮3、4分钟。', 'https://cp1.douguo.com/upload/caiku/c/2/d/200_c284a7400494ca7a4d87e76433c889ad.png', 95);
INSERT INTO `recipestep` VALUES (1250, 4, ' 撒人枸杞和葱花煮1分钟左右，最后用盐调味关火焖一会儿。', 'https://cp1.douguo.com/upload/caiku/8/0/4/200_803459ef92ea54bc0fe971f77f96d744.png', 95);
INSERT INTO `recipestep` VALUES (1251, 5, ' 成品。', 'https://cp1.douguo.com/upload/caiku/e/6/1/200_e644f6237f027439a4c816e8677104e1.png', 95);

-- ----------------------------
-- Table structure for stepslist
-- ----------------------------
DROP TABLE IF EXISTS `stepslist`;
CREATE TABLE `stepslist`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '步骤ID',
  `stepId` int(11) NULL DEFAULT NULL,
  `stepPhoto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '步骤图片',
  `stepDetail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '\'\'步骤详细描述\'\'',
  `dietId` int(11) NULL DEFAULT NULL COMMENT '未完成作品ID',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `fk_stepsList_dietList_idx`(`dietId`) USING BTREE,
  CONSTRAINT `stepslist_ibfk_1` FOREIGN KEY (`dietId`) REFERENCES `dietlist` (`dietid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 413 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '制作步骤表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stepslist
-- ----------------------------
INSERT INTO `stepslist` VALUES (15, 1, 'https://cp1.douguo.com/upload/caiku/d/d/5/200_dde01ef960f9afb5708f8afa720e12f5.jpg', ' 材料合集', 17);
INSERT INTO `stepslist` VALUES (16, 2, 'https://cp1.douguo.com/upload/caiku/b/5/1/200_b55bc91babceb2df7f677a931db30961.jpg', ' 白糖与鸡蛋混合', 17);
INSERT INTO `stepslist` VALUES (17, 3, 'https://cp1.douguo.com/upload/caiku/f/b/2/200_fbacb8237b4ca24eb8f5370a2c4cd422.jpg', ' 用蛋抽搅打至砂糖融化。', 17);
INSERT INTO `stepslist` VALUES (18, 4, 'https://cp1.douguo.com/upload/caiku/b/5/7/200_b56e82e2b74662a052c62109b0ff2f97.jpg', ' 黄油隔热水融化成液体', 17);
INSERT INTO `stepslist` VALUES (19, 5, 'https://cp1.douguo.com/upload/caiku/1/6/4/200_16f83983432ea1ff9ffe3ed1148b1c44.jpg', ' 黄油加入到蛋液中', 17);
INSERT INTO `stepslist` VALUES (20, 6, 'https://cp1.douguo.com/upload/caiku/b/9/5/200_b9d2955ed6afeb9624cfe684bde85e95.jpg', ' 搅打均匀', 17);
INSERT INTO `stepslist` VALUES (21, 7, 'https://cp1.douguo.com/upload/caiku/5/f/d/200_5f47bd7c63b1e33c027211c1bd1df62d.jpg', ' 筛入低筋粉', 17);
INSERT INTO `stepslist` VALUES (22, 8, 'https://cp1.douguo.com/upload/caiku/0/0/b/200_001d108d399f57cc4164affb604a5fdb.jpg', ' Z 字型搅拌至面糊细腻无颗粒。', 17);
INSERT INTO `stepslist` VALUES (23, 9, 'https://cp1.douguo.com/upload/caiku/3/e/b/200_3ee30daced369667c46dfe8f406cf93b.jpg', ' 此时面糊是可流动状态。', 17);
INSERT INTO `stepslist` VALUES (24, 10, 'https://cp1.douguo.com/upload/caiku/2/a/9/200_2a01ee225fc29bb7368de0e342daf089.jpg', ' 加入黑芝麻拌匀。', 17);
INSERT INTO `stepslist` VALUES (25, 11, 'https://cp1.douguo.com/upload/caiku/a/f/a/200_af3801ab40ef4432453bd866c492bf3a.jpg', ' 我用的是燃气灶的蛋饼锅，小火提前预热锅，。预热好的锅内用勺子舀上一勺面糊。', 17);
INSERT INTO `stepslist` VALUES (26, 12, 'https://cp1.douguo.com/upload/caiku/c/b/a/200_cb773e124cbfa36478e91174ecebab5a.jpg', ' 快速合上蛋饼锅的盖煎10秒左右，蛋饼锅上下翻转再煎15秒左右。打开观察下蛋饼微微变黄就可以了。', 17);
INSERT INTO `stepslist` VALUES (27, 13, 'https://cp1.douguo.com/upload/caiku/a/2/0/200_a28301f3d916b9225a28c10ba3fadbf0.jpg', ' 借助筷子快速卷起，压住接口处定型4秒左右一个蛋卷就做好了。', 17);
INSERT INTO `stepslist` VALUES (28, 14, 'https://cp1.douguo.com/upload/caiku/c/4/a/200_c4b74d84a3b6951adfe98198ef685cca.jpg', ' 同样的方法做完所有的面糊。', 17);
INSERT INTO `stepslist` VALUES (29, 15, 'https://cp1.douguo.com/upload/caiku/f/3/1/200_f3141da38cbd0a70efd717de23073691.jpeg', ' 酥、香、脆的蛋卷。', 17);
INSERT INTO `stepslist` VALUES (30, 16, 'https://cp1.douguo.com/upload/caiku/4/0/7/200_408e6d29a6fb472fab9dbcf129816967.jpg', ' 美味、健康的小零食。早餐来几根也不错哦。', 17);
INSERT INTO `stepslist` VALUES (31, 17, 'https://cp1.douguo.com/upload/caiku/3/8/4/200_386cc315a16ac2b07e29b9dd719c60b4.jpg', ' 成品。', 17);
INSERT INTO `stepslist` VALUES (32, 1, 'https://cp1.douguo.com/upload/caiku/c/4/4/200_c470e23fc5ea81e6d4abcf881c0a70e4.jpg', ' 准备食材。', 18);
INSERT INTO `stepslist` VALUES (33, 2, 'https://cp1.douguo.com/upload/caiku/c/a/7/200_ca8a6f1bf4da4a24a8b557a8b7b25a37.jpg', ' 番茄切丁、土豆去皮切丁', 18);
INSERT INTO `stepslist` VALUES (34, 3, 'https://cp1.douguo.com/upload/caiku/5/9/5/200_593929066ef8212e6dc578813bf0a1a5.jpg', ' 洋葱切碎，大蒜切片', 18);
INSERT INTO `stepslist` VALUES (35, 4, 'https://cp1.douguo.com/upload/caiku/c/3/3/200_c35377f1e3a43c3cbc7fdcc7f8641643.jpg', ' 起锅热橄榄油，加入洋葱和蒜片翻炒至透明', 18);
INSERT INTO `stepslist` VALUES (36, 5, 'https://cp1.douguo.com/upload/caiku/2/d/8/200_2d56617de48db2d2bdeb05ce34dce9c8.jpg', ' 加入土豆和番茄翻炒片刻', 18);
INSERT INTO `stepslist` VALUES (37, 6, 'https://cp1.douguo.com/upload/caiku/f/4/5/200_f4353e333159b0eaeb223b8fa2dca535.jpg', ' 加入适量清水，没过食材即可，将所有食材煮至软糯', 18);
INSERT INTO `stepslist` VALUES (38, 7, 'https://cp1.douguo.com/upload/caiku/9/d/8/200_9d9f847c89c60fe91b48153e469b7a38.jpg', ' 煮好后，加入番茄酱，盐，黑胡椒', 18);
INSERT INTO `stepslist` VALUES (39, 8, 'https://cp1.douguo.com/upload/caiku/c/3/6/200_c3ee6f5473adcd177761ea88ef4aff46.jpg', ' 拌匀后将汤汁煮再次关火。', 18);
INSERT INTO `stepslist` VALUES (40, 9, 'https://cp1.douguo.com/upload/caiku/5/1/0/200_51955bce0fdc1f1320d8df8efbbd43e0.jpg', ' 加入适量牛奶打成糊，然后重新置于火上再次煮开后离火即可', 18);
INSERT INTO `stepslist` VALUES (41, 10, 'https://cp1.douguo.com/upload/caiku/9/3/1/200_932e823749cc65b91f117c8676f64501.jpg', ' 装碗，撒香草。不喜欢的也可以不加', 18);
INSERT INTO `stepslist` VALUES (42, 11, 'https://cp1.douguo.com/upload/caiku/5/0/c/200_5086cd8da34e681fd041a913b31662cc.jpg', ' 成品', 18);
INSERT INTO `stepslist` VALUES (43, 12, 'https://cp1.douguo.com/upload/caiku/d/9/3/200_d98469dacd55afe5d8ec586024e81643.jpg', ' 成品', 18);
INSERT INTO `stepslist` VALUES (44, 1, 'https://cp1.douguo.com/upload/caiku/2/b/e/200_2bc02744e24d7cc9302287bc23f3319e.jpeg', ' 1、把酥皮中除了全蛋液以外的所有材料倒入盆中。', 2);
INSERT INTO `stepslist` VALUES (45, 2, 'https://cp1.douguo.com/upload/caiku/6/f/6/200_6fe185a7c9844c5d21d3d19f9ec07b26.jpeg', ' 2、用手搓成小细粒。', 2);
INSERT INTO `stepslist` VALUES (46, 3, 'https://cp1.douguo.com/upload/caiku/4/2/6/200_4242bbf2d41431bcc0515377c02100f6.jpeg', ' 3、倒入全蛋液。', 2);
INSERT INTO `stepslist` VALUES (47, 4, 'https://cp1.douguo.com/upload/caiku/f/f/7/200_ffac5e0e698a211868766d5f32a9c5b7.jpeg', ' 4、搅拌均匀。', 2);
INSERT INTO `stepslist` VALUES (48, 5, 'https://cp1.douguo.com/upload/caiku/5/a/8/200_5af41f74f77d65f96696908355158578.jpeg', ' 5、揉成光滑的面团。', 2);
INSERT INTO `stepslist` VALUES (49, 6, 'https://cp1.douguo.com/upload/caiku/0/9/0/200_09887bb7a50d3c5122e5e6efb5f8e1a0.jpeg', ' 6、包上保鲜膜放入冰箱冷冻30分钟。', 2);
INSERT INTO `stepslist` VALUES (50, 7, 'https://cp1.douguo.com/upload/caiku/0/1/f/200_014fa245645d4fdc8eaeb0f110ee332f.jpeg', ' 7、取出分成两份，擀成长条形。', 2);
INSERT INTO `stepslist` VALUES (51, 8, 'https://cp1.douguo.com/upload/caiku/f/3/4/200_f3b24172428ebeb3c350adb3c5a77cf4.jpeg', ' 8、红豆沙取一半搓成跟酥皮差不多长度的长条后包入。', 2);
INSERT INTO `stepslist` VALUES (52, 9, 'https://cp1.douguo.com/upload/caiku/5/c/a/200_5c5fe25b65147acc6e932c624d3853da.jpeg', ' 9、捏紧收口处。', 2);
INSERT INTO `stepslist` VALUES (53, 10, 'https://cp1.douguo.com/upload/caiku/4/9/3/200_49b7cad4bca1aa2ca1c727f4619e8453.jpeg', ' 10、搓长。', 2);
INSERT INTO `stepslist` VALUES (54, 11, 'https://cp1.douguo.com/upload/caiku/e/8/4/200_e8cf004f51442cd2f0d541235a7eca54.jpeg', ' 11、切成大小均匀的小块。', 2);
INSERT INTO `stepslist` VALUES (55, 12, 'https://cp1.douguo.com/upload/caiku/b/e/c/200_bed76e914830f17a3160e12a30e60d7c.jpeg', ' 12、放入学厨不粘烤盘中，依次刷上一层薄薄的蛋黄液，再撒上黑芝麻。', 2);
INSERT INTO `stepslist` VALUES (56, 13, 'https://cp1.douguo.com/upload/caiku/3/4/7/200_340341c2bef0163a89e6add0308b69c7.jpeg', ' 13、烤箱预热至150度上下火，放入烤盘烘烤20分钟后取出即可。', 2);
INSERT INTO `stepslist` VALUES (57, 14, 'https://cp1.douguo.com/upload/caiku/e/1/c/200_e14bdf834a2bf3f29c22eacd83a5a67c.jpeg', ' 成品图', 2);
INSERT INTO `stepslist` VALUES (58, 15, 'https://cp1.douguo.com/upload/caiku/f/3/f/200_f3bdad1db2d662d5449e9bf809e466df.jpeg', ' 成品图', 2);
INSERT INTO `stepslist` VALUES (59, 16, 'https://cp1.douguo.com/upload/caiku/8/b/f/200_8b039164d196444dfbd81e9e42d35e8f.jpeg', ' 成品图', 2);
INSERT INTO `stepslist` VALUES (60, 17, 'https://cp1.douguo.com/upload/caiku/4/4/0/200_44d5ec895b581df60e556845f2c6bbe0.jpeg', ' 成品图', 2);
INSERT INTO `stepslist` VALUES (61, 1, 'https://cp1.douguo.com/upload/caiku/5/4/7/200_54c4b6a6240602a3e771320c416b8037.jpg', ' 依配方量取材料。烤箱预热200度。', 14);
INSERT INTO `stepslist` VALUES (62, 2, 'https://cp1.douguo.com/upload/caiku/5/8/f/200_5860db1cd0c05b890fe430005dfe25ff.jpg', ' 牛奶、淡奶油、白砂糖、炼乳混合，用手动打蛋器稍微搅打一下。', 14);
INSERT INTO `stepslist` VALUES (63, 3, 'https://cp1.douguo.com/upload/caiku/1/c/0/200_1c0b167469d257591663639c92395720.jpg', ' 小火加热搅拌至白砂糖完全融化，关火。稍微晾凉。', 14);
INSERT INTO `stepslist` VALUES (64, 4, 'https://cp1.douguo.com/upload/caiku/7/2/1/200_72d3213ea2a6bdd1b4ebbee1e2a52911.jpg', ' 全蛋（或者两个蛋黄）用手动打蛋器打散，牛奶液体倒入蛋液中，轻轻混合均匀。过筛蛋挞液1-2次，过滤出蛋筋和气泡。', 14);
INSERT INTO `stepslist` VALUES (65, 5, 'https://cp1.douguo.com/upload/caiku/b/3/2/200_b3097047383ba61b559cf67520b5bbe2.jpg', ' 蛋挞皮放在烤盘上，倒入蛋挞液，8-9分满。放入烤箱，第二层（烤箱共五层），上下火，200度，20分钟，表面形成焦糖色黑色，蛋挞皮变成金黄色即可。', 14);
INSERT INTO `stepslist` VALUES (66, 6, 'https://cp1.douguo.com/upload/caiku/9/c/9/200_9cfd68a58c580bfd64981f46acd1f609.jpg', ' 完成图。', 14);
INSERT INTO `stepslist` VALUES (67, 7, 'https://cp1.douguo.com/upload/caiku/d/b/a/200_db6274066a677e140c654d041e0d98ba.jpg', ' 完成图。', 14);
INSERT INTO `stepslist` VALUES (68, 1, 'https://cp1.douguo.com/upload/caiku/6/7/4/200_67c5dddedcebe933d60f9cba9269eb44.jpg', ' 准备食材', 8);
INSERT INTO `stepslist` VALUES (69, 2, 'https://cp1.douguo.com/upload/caiku/3/4/4/200_3492a0aa2e7547e894c18898a8d3e6f4.jpg', ' 香菇去帝洗净切成小块，土豆去皮切成一样大小的块，葱切葱花', 8);
INSERT INTO `stepslist` VALUES (70, 3, 'https://cp1.douguo.com/upload/caiku/4/1/1/200_41953419e95912e51576f7f13b344721.jpg', ' 起锅热油，加入葱花炒出香味', 8);
INSERT INTO `stepslist` VALUES (71, 4, 'https://cp1.douguo.com/upload/caiku/1/e/2/200_1edd794d41ce44b95540f15a2e41e3c2.jpg', ' 加入土豆，转中火翻炒一会', 8);
INSERT INTO `stepslist` VALUES (72, 5, 'https://cp1.douguo.com/upload/caiku/1/e/1/200_1e151e190e5c3e6a90de964abf188b51.jpg', ' 加入香菇翻炒几下', 8);
INSERT INTO `stepslist` VALUES (73, 6, 'https://cp1.douguo.com/upload/caiku/b/5/0/200_b53505644a2fe8bd29f7bf0edadd1510.jpg', ' 加生抽，清水，煮开后转小火将食材炖至软硬适中', 8);
INSERT INTO `stepslist` VALUES (74, 7, 'https://cp1.douguo.com/upload/caiku/9/8/2/200_983b24297ee9ff2cb9e86df4a933d0a2.jpg', ' 最后加少许盐调味，翻炒均匀，出锅装盘撒葱花即可', 8);
INSERT INTO `stepslist` VALUES (75, 8, 'https://cp1.douguo.com/upload/caiku/4/f/d/200_4f3ba5cdee02a4e297040b965b5c347d.jpg', ' 成品', 8);
INSERT INTO `stepslist` VALUES (76, 9, 'https://cp1.douguo.com/upload/caiku/c/c/8/200_ccb7fcf88378aea5cf75039d1ca8d508.jpg', ' 成品', 8);
INSERT INTO `stepslist` VALUES (77, 1, 'https://cp1.douguo.com/upload/caiku/c/0/1/200_c0b43c4ca44147b28330a95753143571.jpg', ' 准备食材', 1);
INSERT INTO `stepslist` VALUES (78, 2, 'https://cp1.douguo.com/upload/caiku/f/b/2/200_fb548a704432d2e95e6c0d863d73bb02.jpg', ' 土豆去皮，切成滚刀块。茄子洗净，切成滚刀块。', 1);
INSERT INTO `stepslist` VALUES (79, 3, 'https://cp1.douguo.com/upload/caiku/3/1/1/200_3199b0910bfd2ebd4b6d4b2de6738431.jpg', ' 大蒜去皮，轻拍一下', 1);
INSERT INTO `stepslist` VALUES (80, 4, 'https://cp1.douguo.com/upload/caiku/2/0/c/200_209de6c295faa834046de39afff57cdc.jpg', ' 起锅热油，加入蒜瓣炒出香味', 1);
INSERT INTO `stepslist` VALUES (81, 5, 'https://cp1.douguo.com/upload/caiku/0/3/7/200_032bc87fa79d6977dd514a33c72a7f47.jpg', ' 加入土豆茄子煸炒一会', 1);
INSERT INTO `stepslist` VALUES (82, 6, 'https://cp1.douguo.com/upload/caiku/e/6/b/200_e6bc28312f45ce87574a4997b5f2e9ab.jpg', ' 倒入少许清水，加入生抽，煮开后转小火将食材炖熟', 1);
INSERT INTO `stepslist` VALUES (83, 7, 'https://cp1.douguo.com/upload/caiku/1/2/9/200_12725b3bceab7d42859ab1baab336cc9.jpg', ' 炖好开盖加入蚝油，少许盐调味翻炒均匀，出锅装盘撒上葱花即可', 1);
INSERT INTO `stepslist` VALUES (84, 8, 'https://cp1.douguo.com/upload/caiku/a/d/3/200_ade41afdafcde7355e6ed2106e9a7d73.jpg', ' 撰写制作步骤', 1);
INSERT INTO `stepslist` VALUES (85, 9, 'https://cp1.douguo.com/upload/caiku/4/5/7/200_453e74a9a8894d67e2c515185ceb1cb7.jpg', ' 撰写制作步骤', 1);
INSERT INTO `stepslist` VALUES (86, 10, 'https://cp1.douguo.com/upload/caiku/c/1/d/200_c1512ed13a4474a79eee8ca3683acbbd.jpg', ' 撰写制作步骤', 1);
INSERT INTO `stepslist` VALUES (87, 1, 'https://cp1.douguo.com/upload/caiku/1/1/b/200_1115cf5eb5accf409eab07feec9a418b.jpeg', ' 番茄洗净。', 6);
INSERT INTO `stepslist` VALUES (88, 2, 'https://cp1.douguo.com/upload/caiku/5/e/b/200_5ecb3f6c30209c99764658ebcc5c511b.jpeg', ' 番茄切丁。', 6);
INSERT INTO `stepslist` VALUES (89, 3, 'https://cp1.douguo.com/upload/caiku/9/4/2/200_9472be5724739f00f383e4d845053942.jpeg', ' 鸡蛋打散。', 6);
INSERT INTO `stepslist` VALUES (90, 4, 'https://cp1.douguo.com/upload/caiku/7/8/3/200_78c47258192ea322110bf74be701dcf3.jpeg', ' 鸡蛋液用小锅小火煎。', 6);
INSERT INTO `stepslist` VALUES (91, 5, 'https://cp1.douguo.com/upload/caiku/f/5/2/200_f53ac02ed5c5f9bb7bb49cbe11c11402.jpeg', ' 鸡蛋煎熟备用。', 6);
INSERT INTO `stepslist` VALUES (92, 6, 'https://cp1.douguo.com/upload/caiku/9/1/0/200_91b1922dac6a6a43be2c3d29e4775b40.jpeg', ' 中小火，小锅加入花生油，油热把番茄丁倒入炒软。', 6);
INSERT INTO `stepslist` VALUES (93, 7, 'https://cp1.douguo.com/upload/caiku/7/d/4/200_7dff6e77a83047250b80e96dcd050324.jpeg', ' 加入盐，炒均匀��', 6);
INSERT INTO `stepslist` VALUES (94, 8, 'https://cp1.douguo.com/upload/caiku/9/e/3/200_9ec9f3eea96ea3534d8f82664681a4e3.jpeg', ' 加入清水，大火煮开。', 6);
INSERT INTO `stepslist` VALUES (95, 9, 'https://cp1.douguo.com/upload/caiku/b/f/f/200_bf9df5ddf8632cb70af4b317ee37e69f.jpeg', ' 加点鸡汁调味料。', 6);
INSERT INTO `stepslist` VALUES (96, 10, 'https://cp1.douguo.com/upload/caiku/e/5/8/200_e5c10d5c9442d9671d935a6bb423c978.jpeg', ' 煎鸡蛋倒入汤锅里。', 6);
INSERT INTO `stepslist` VALUES (97, 11, 'https://cp1.douguo.com/upload/caiku/7/e/4/200_7e1d52fa09464238931b4317bab560b4.jpeg', ' 汤煮开后，加入挂面。', 6);
INSERT INTO `stepslist` VALUES (98, 12, 'https://cp1.douguo.com/upload/caiku/f/e/e/200_fe35bbfb227fc807866dc36ef9b1d7ee.jpeg', ' 大火，煮三四分钟，面条软无白心就可以了。', 6);
INSERT INTO `stepslist` VALUES (99, 13, 'https://cp1.douguo.com/upload/caiku/7/1/f/200_716e6c2b1ae6d2700325abe6f4c0b35f.jpeg', ' 捞出最后洒入葱花。', 6);
INSERT INTO `stepslist` VALUES (100, 1, 'https://cp1.douguo.com/upload/caiku/4/c/0/200_4c68b5d2eff7ad9bd90662d658bfdaf0.jpg', ' 准备好蛋挞皮和芒果', 4);
INSERT INTO `stepslist` VALUES (101, 2, 'https://cp1.douguo.com/upload/caiku/c/a/1/200_ca4b47035b6d33e5bfae0ad99ef7e121.jpg', ' 芒果切开，划几刀，', 4);
INSERT INTO `stepslist` VALUES (102, 3, 'https://cp1.douguo.com/upload/caiku/8/1/0/200_81d4111887a8ca5f0adfdd1144c53e40.jpg', ' 取出果肉。', 4);
INSERT INTO `stepslist` VALUES (103, 4, 'https://cp1.douguo.com/upload/caiku/c/4/e/200_c447957d097dfc4ac8b1d632768d042e.jpg', ' 蛋挞皮中放入适量的芒果丁', 4);
INSERT INTO `stepslist` VALUES (104, 5, 'https://cp1.douguo.com/upload/caiku/b/3/b/200_b315dd54c21c71ead7c3bb21383bd0fb.jpg', ' 对半捏合', 4);
INSERT INTO `stepslist` VALUES (105, 6, 'https://cp1.douguo.com/upload/caiku/5/8/0/200_584b71942a097b4f17d126a77a066b60.jpg', ' 去锡纸，刷上蛋液，撒上黑芝麻', 4);
INSERT INTO `stepslist` VALUES (106, 7, 'https://cp1.douguo.com/upload/caiku/4/f/e/200_4f36e7da1d7f9c074b2e01deb431cd9e.jpg', ' 我的海氏立式烤箱，上下火180℃，20分钟。', 4);
INSERT INTO `stepslist` VALUES (107, 8, 'https://cp1.douguo.com/upload/caiku/a/9/c/200_a965420f10f1c4c166466c939cb8626c.jpg', ' 好了。', 4);
INSERT INTO `stepslist` VALUES (108, 9, 'https://cp1.douguo.com/upload/caiku/c/8/e/200_c88363fd6991d5d35f9547f856c766de.jpg', ' 酥酥的', 4);
INSERT INTO `stepslist` VALUES (109, 10, 'https://cp1.douguo.com/upload/caiku/0/8/4/200_086e8ddde52f6225dfd178375a15e704.jpg', ' 超大果肉。', 4);
INSERT INTO `stepslist` VALUES (110, 1, 'https://cp1.douguo.com/upload/caiku/8/e/8/200_8e3259a98e89a34fc6e1174477090a88.jpg', ' 老南瓜切块放入锅内蒸熟。', 12);
INSERT INTO `stepslist` VALUES (111, 2, 'https://cp1.douguo.com/upload/caiku/7/a/5/200_7a6228892e1a6d5e43dd4408cb676485.jpg', ' 用搅拌棒把南瓜打成泥（不要加水），或用勺子压成泥状。', 12);
INSERT INTO `stepslist` VALUES (112, 3, 'https://cp1.douguo.com/upload/caiku/d/b/7/200_dbde6d04fad3d4d63d7c44046944fc37.jpg', ' 将酵母用少量温水完全融化，再加入白糖用筷子充分搅拌均匀。（100克面粉1克酵母，白糖不要超过面粉量的5%，因为白糖超过6%会抑制酵母发酵。）', 12);
INSERT INTO `stepslist` VALUES (113, 4, 'https://cp1.douguo.com/upload/caiku/d/6/5/200_d6e9cc91c8965300b5203c2183bda445.jpg', ' 将酵母水倒入蒸熟冷却的南瓜泥中，再将南瓜泥分次倒入面粉，用筷子搅拌成雪花片状。', 12);
INSERT INTO `stepslist` VALUES (114, 5, 'https://cp1.douguo.com/upload/caiku/4/3/d/200_43d362796303fbbf5c2c088d69dd477d.jpg', ' 用手将面团揉到三光（面光、手光、盆光）。', 12);
INSERT INTO `stepslist` VALUES (115, 6, 'https://cp1.douguo.com/upload/caiku/7/a/0/200_7a968769fb6bd52e5e6734ed74287500.jpg', ' 将面团盖上保鲜膜，发酵40分钟左右。', 12);
INSERT INTO `stepslist` VALUES (116, 7, 'https://cp1.douguo.com/upload/caiku/0/d/8/200_0d2ff11b8c59c8a0bc18160fb5408ea8.jpg', ' 面团发酵到1.5倍大，取出。', 12);
INSERT INTO `stepslist` VALUES (117, 8, 'https://cp1.douguo.com/upload/caiku/a/6/4/200_a65944bde1500b87d56dc023d315b914.jpg', ' 在硅胶垫上撒干粉，将面团揉搓，排空气体，搓成长条状。', 12);
INSERT INTO `stepslist` VALUES (118, 9, 'https://cp1.douguo.com/upload/caiku/f/d/1/200_fdafa27346c105b6593ed499558ef8a1.jpg', ' 用刮刀切成10个小剂子。切法：切一刀，旋转90度，再切第二刀，这样容易整理成圆柱形，而不是切出一个扁的方形，也可以用手揪。', 12);
INSERT INTO `stepslist` VALUES (119, 10, 'https://cp1.douguo.com/upload/caiku/a/d/3/200_adaab7da398b0bee875609f14f4ffea3.jpg', ' 每个小剂子分别滚圆压扁，盖上保鲜袋，松弛15-20分钟。', 12);
INSERT INTO `stepslist` VALUES (120, 11, 'https://cp1.douguo.com/upload/caiku/5/9/0/200_593cd1529f59ca8944821bb8b7bd3870.jpg', ' 每个小剂子擀成比饼子皮略厚的圆片。', 12);
INSERT INTO `stepslist` VALUES (121, 12, 'https://cp1.douguo.com/upload/caiku/f/d/7/200_fde7ab19e39850bbaafb62b675d00e87.jpg', ' 把五张圆片从上往下顺次叠加。', 12);
INSERT INTO `stepslist` VALUES (122, 13, 'https://cp1.douguo.com/upload/caiku/7/6/7/200_761a7769609b9eaad892006ecdfef677.jpg', ' 筷子在圆片中央垂直压出一条中心线。', 12);
INSERT INTO `stepslist` VALUES (123, 14, 'https://cp1.douguo.com/upload/caiku/a/b/8/200_ab8fb9357dab20e20bc5a7e7f670e4f8.jpg', ' 从下往上卷起（从叠在最上层的圆片开始卷），然后用刀从中间切断，收口朝下。', 12);
INSERT INTO `stepslist` VALUES (124, 15, 'https://cp1.douguo.com/upload/caiku/2/b/4/200_2b541035b2b479b35a752b617dc5e9d4.jpg', ' 卷好的面片自然形成玫瑰花瓣的样子，一个面卷2朵玫瑰。', 12);
INSERT INTO `stepslist` VALUES (125, 16, 'https://cp1.douguo.com/upload/caiku/f/3/9/200_f3d6f41da3fe6ee9d8b23c217dce2d79.jpg', ' 做好的玫瑰花馒头生胚放入蒸锅，底下垫上硅油纸防粘，保持一定的间距，盖上盖子，再次饧发20分钟，凉水上锅，水开后中火蒸15分钟，关火焖10分钟即可。', 12);
INSERT INTO `stepslist` VALUES (126, 17, 'https://cp1.douguo.com/upload/caiku/e/8/d/200_e8061062b9747c08b4932487da228a2d.png', ' 装入精心准备的便当盒，送给那个你爱的他（她）吧。', 12);
INSERT INTO `stepslist` VALUES (127, 18, 'https://cp1.douguo.com/upload/caiku/e/5/3/200_e5f26a832efe3c7399ce9a28df880503.png', ' 七夕快乐。', 12);
INSERT INTO `stepslist` VALUES (128, 1, 'https://cp1.douguo.com/upload/caiku/4/0/f/200_401f36b531642dbcbd4bded06012007f.jpg', ' 准备好所有需要的材料，百香果网上买的，很方便', 20);
INSERT INTO `stepslist` VALUES (129, 2, 'https://cp1.douguo.com/upload/caiku/7/1/d/200_71d6dc23365e9ff542e052b9063250ed.jpg', ' 用土冰糖最好了,懒得去买就用普通冰糖代替了', 20);
INSERT INTO `stepslist` VALUES (130, 3, 'https://cp1.douguo.com/upload/caiku/2/2/2/200_2268ca96537fde15721ea36ec9329322.jpg', ' 土蜂蜜', 20);
INSERT INTO `stepslist` VALUES (131, 4, 'https://cp1.douguo.com/upload/caiku/b/5/6/200_b5b51973c0ffa7274939f7b86e63dd16.jpg', ' 柠檬用盐水浸泡大概十几分钟,然后用厨房纸擦干', 20);
INSERT INTO `stepslist` VALUES (132, 5, 'https://cp1.douguo.com/upload/caiku/a/2/8/200_a22e86b67a3b8b8983f25b54ef4507e8.jpg', ' 我总共切了两个柠檬,记得要去籽,不然会发苦', 20);
INSERT INTO `stepslist` VALUES (133, 6, 'https://cp1.douguo.com/upload/caiku/0/7/8/200_0751c8ce8ae3d2361ed9f63275d70f98.jpg', ' 拿来装的瓶子记得一定是无油无水的', 20);
INSERT INTO `stepslist` VALUES (134, 7, 'https://cp1.douguo.com/upload/caiku/d/d/4/200_dddb877dc5c6be160327d0e6de8976f4.jpg', ' 蜂蜜铺好之后再放刚才切好的柠檬片,多放几片', 20);
INSERT INTO `stepslist` VALUES (135, 8, 'https://cp1.douguo.com/upload/caiku/b/4/2/200_b4b1833f655f758e7887f1770fbab4b2.jpg', ' 接着就是百香果,虽然买的时候给配了专门开口的', 20);
INSERT INTO `stepslist` VALUES (136, 9, 'https://cp1.douguo.com/upload/caiku/d/4/c/200_d4d415b2bc04951bf7734343cfb720ec.jpg', ' 冰糖', 20);
INSERT INTO `stepslist` VALUES (137, 10, 'https://cp1.douguo.com/upload/caiku/1/3/3/200_13bba225c0ca4aec32725aeb781c3e13.jpg', ' 按刚才的顺序依次弄完为止,我买了一堆百香果,就弄了一瓶', 20);
INSERT INTO `stepslist` VALUES (138, 11, 'https://cp1.douguo.com/upload/caiku/1/5/9/200_156ffb6fd4eca851d005e58fe5e21499.jpg', ' 平时早上起来用温水冲一杯,长期坚持喝肯定会有效果的', 20);
INSERT INTO `stepslist` VALUES (139, 12, 'https://cp1.douguo.com/upload/caiku/4/1/c/200_41800573d0468e77b8fca5c1c0105c2c.jpg', ' 女人最好的姿态是：每天化个淡妆，', 20);
INSERT INTO `stepslist` VALUES (140, 1, 'https://cp1.douguo.com/upload/caiku/d/1/0/200_d1eb970c1b948dd2d1b13855423b8620.jpg', ' 准备食材', 27);
INSERT INTO `stepslist` VALUES (141, 2, 'https://cp1.douguo.com/upload/caiku/8/b/7/200_8b73ecc36efeff8256d39eac5a449087.jpg', ' 里脊肉丝加入生抽，料酒，淀粉转运静置备用', 27);
INSERT INTO `stepslist` VALUES (142, 3, 'https://cp1.douguo.com/upload/caiku/9/f/f/200_9fdc3616a57038ddb6702997b1cb276f.jpg', ' 洋葱切成丝', 27);
INSERT INTO `stepslist` VALUES (143, 4, 'https://cp1.douguo.com/upload/caiku/5/c/b/200_5cf8f6e58707104b5a877f5cc726b34b.jpg', ' 小米椒，绿椒切成丝', 27);
INSERT INTO `stepslist` VALUES (144, 5, 'https://cp1.douguo.com/upload/caiku/5/0/7/200_50cce2a1aaa65afe0a07a206612279c7.jpg', ' 起锅热油，先加入里脊肉丝翻炒至变色', 27);
INSERT INTO `stepslist` VALUES (145, 6, 'https://cp1.douguo.com/upload/caiku/1/f/b/200_1f8a42e28c57a9223029ff6b96ba2f1b.jpg', ' 加入洋葱翻炒片刻', 27);
INSERT INTO `stepslist` VALUES (146, 7, 'https://cp1.douguo.com/upload/caiku/8/7/b/200_87ad895ea168cc0cb7d2c3e27495efcb.jpg', ' 加入生抽翻炒均匀', 27);
INSERT INTO `stepslist` VALUES (147, 8, 'https://cp1.douguo.com/upload/caiku/8/d/5/200_8ddf51d572688dc2faf63af1e113af95.jpg', ' 加入小米椒，绿椒翻炒几下', 27);
INSERT INTO `stepslist` VALUES (148, 9, 'https://cp1.douguo.com/upload/caiku/5/b/d/200_5b7ade7319c43722012277bb436f4ded.jpg', ' 最后根据个人口味加适量盐调味炒匀即可', 27);
INSERT INTO `stepslist` VALUES (149, 10, 'https://cp1.douguo.com/upload/caiku/7/7/b/200_77147715e690ac8d1a9037946119fa6b.jpg', ' 成品', 27);
INSERT INTO `stepslist` VALUES (150, 11, 'https://cp1.douguo.com/upload/caiku/e/f/9/200_ef39c3516264158ad95a07789a079bb9.jpg', ' 成品', 27);
INSERT INTO `stepslist` VALUES (151, 1, 'https://cp1.douguo.com/upload/caiku/1/2/b/200_124e018d83f09ed6b081290696f7a64b.jpg', ' 先做烫种，烫种做出来的面包比较软，水烧开', 3);
INSERT INTO `stepslist` VALUES (152, 2, 'https://cp1.douguo.com/upload/caiku/8/1/3/200_81f7d6e3d7c9e435eeb485ba30cffe73.jpg', ' 加入50g面粉', 3);
INSERT INTO `stepslist` VALUES (153, 3, 'https://cp1.douguo.com/upload/caiku/9/3/b/200_93f0042aa47cd2341e0f148dab50ce6b.jpg', ' 然后用刮刀搅拌成团，盖上保鲜膜冷却后冷藏3h左右', 3);
INSERT INTO `stepslist` VALUES (154, 4, 'https://cp1.douguo.com/upload/caiku/e/9/6/200_e97b69b15e4bae316cff8c48a6207736.jpg', ' 厨师机桶里加入主面团的材料（除了安佳黄油以外），将烫种面团撕碎也放入', 3);
INSERT INTO `stepslist` VALUES (155, 5, 'https://cp1.douguo.com/upload/caiku/c/f/f/200_cf9965ccda39073b4feab7162d1491af.jpg', ' 面团揉5min后加入黄油，不需要室温软化，这个黄油直接就可以用了', 3);
INSERT INTO `stepslist` VALUES (156, 6, 'https://cp1.douguo.com/upload/caiku/f/c/f/200_fcd5bb654fc92f5707146ed695b7223f.jpg', ' 制作奶酥的方法：先将黄油+细砂糖放入盆里，用刮刀搅拌均匀，不需要打发', 3);
INSERT INTO `stepslist` VALUES (157, 7, 'https://cp1.douguo.com/upload/caiku/9/f/3/200_9fdf8fadbe0e022900c44dc36fbddd13.jpg', ' 加入鸡蛋液和安佳奶粉，搅拌均匀', 3);
INSERT INTO `stepslist` VALUES (158, 8, 'https://cp1.douguo.com/upload/caiku/e/e/2/200_eedcf374ca39b63ad1a05d2a87034cb2.jpg', ' 最后加入切碎的糖渍橙皮', 3);
INSERT INTO `stepslist` VALUES (159, 9, 'https://cp1.douguo.com/upload/caiku/2/0/5/200_2051eeea893c5955a42642d87848b885.jpg', ' 装入裱花袋，扎紧', 3);
INSERT INTO `stepslist` VALUES (160, 10, 'https://cp1.douguo.com/upload/caiku/a/7/a/200_a77ce48193e1411392b76fb7fcc3e2aa.jpg', ' 面团和好后，取28g在旁边，待用，主面团滚圆', 3);
INSERT INTO `stepslist` VALUES (161, 11, 'https://cp1.douguo.com/upload/caiku/9/1/f/200_911439230181ee1fee5cd14e6b25be8f.jpg', ' 大面团分成45g左右面团5个（做身体），37g面团5个（做兔子脑袋），滚圆待用', 3);
INSERT INTO `stepslist` VALUES (162, 12, 'https://cp1.douguo.com/upload/caiku/7/e/a/200_7e41bf881e401382ad52e0182c95d3da.jpg', ' 取出做身体的面团，中间抹一点黄油', 3);
INSERT INTO `stepslist` VALUES (163, 13, 'https://cp1.douguo.com/upload/caiku/7/4/1/200_7466893a49d6d9253afd2bab411f2741.jpg', ' 收口', 3);
INSERT INTO `stepslist` VALUES (164, 14, 'https://cp1.douguo.com/upload/caiku/9/3/e/200_93fc5c8c059cdd7619cf21da3f26271e.jpg', ' 擀开成10cm左右牛舌状，宽度4cm左右', 3);
INSERT INTO `stepslist` VALUES (165, 15, 'https://cp1.douguo.com/upload/caiku/8/0/6/200_8038540c880b10c9a09a2cdd9184bf06.jpg', ' 对折', 3);
INSERT INTO `stepslist` VALUES (166, 16, 'https://cp1.douguo.com/upload/caiku/c/e/7/200_cef0b6475296bab43f0d7975a85b1fb7.jpg', ' 中间用剪刀剪开', 3);
INSERT INTO `stepslist` VALUES (167, 17, 'https://cp1.douguo.com/upload/caiku/8/e/4/200_8ec746dac04bc601b112841a906cccb4.jpg', ' 翻转，整形成爱心', 3);
INSERT INTO `stepslist` VALUES (168, 18, 'https://cp1.douguo.com/upload/caiku/2/0/e/200_206c8ce2dbc2e590494a45de7b65ff0e.jpg', ' 取做脑袋的面团', 3);
INSERT INTO `stepslist` VALUES (169, 19, 'https://cp1.douguo.com/upload/caiku/1/9/6/200_1964ddb08ecaabf8c83a3fa43d5d0ce6.jpg', ' 转过来，将肚脐的收口朝上', 3);
INSERT INTO `stepslist` VALUES (170, 20, 'https://cp1.douguo.com/upload/caiku/7/8/9/200_78502a93ddd82e7c285b0bdaa7213ec9.jpg', ' 剪刀在侧面剪开', 3);
INSERT INTO `stepslist` VALUES (171, 21, 'https://cp1.douguo.com/upload/caiku/d/2/f/200_d239885635ebb314fa177f3f76b9455f.jpg', ' 再一分为二', 3);
INSERT INTO `stepslist` VALUES (172, 22, 'https://cp1.douguo.com/upload/caiku/b/0/2/200_b0a4cf17ba487de00ac634709f97b0a2.jpg', ' 将兔子头和爱心粘合，还有之前剩余的28g面团做小兔子的手，搓圆，珍珠奶茶的珍珠大小即可', 3);
INSERT INTO `stepslist` VALUES (173, 23, 'https://cp1.douguo.com/upload/caiku/a/1/0/200_a1f845999df06ad37113d63016ec2400.jpg', ' 用锡纸剪成如图的形状，黏在兔子的脸和耳朵上', 3);
INSERT INTO `stepslist` VALUES (174, 24, 'https://cp1.douguo.com/upload/caiku/2/0/b/200_2042612411445ac88d2b7c76dff0b05b.jpg', ' 刷蛋液', 3);
INSERT INTO `stepslist` VALUES (175, 25, 'https://cp1.douguo.com/upload/caiku/7/c/b/200_7cf565e8dd7433539682e7ba74d2f74b.jpg', ' 挤上刚刚做好的奶酥，用不完的，我还剩了不少奶酥', 3);
INSERT INTO `stepslist` VALUES (176, 26, 'https://cp1.douguo.com/upload/caiku/d/f/0/200_dff31396dc3be750051d7f7e65a899d0.jpg', ' 室温发酵20min，然后预热烤箱，上下火170度10min左右，然后放入烤盘，上下火150度烤25min，我的烤箱是考到12min左右上色后盖锡纸，烤好后出炉，放凉后取走刚刚黏在脸上和耳朵上的锡纸，画上表情即可', 3);
INSERT INTO `stepslist` VALUES (177, 27, 'https://cp1.douguo.com/upload/caiku/4/d/5/200_4d0d272efa956f3368b3976cbf9c93c5.jpg', ' 为什么说两种吃法？因为爱心是奶酥包，兔子头就是餐包，切开后抹上黄油不要太好吃哦！', 3);
INSERT INTO `stepslist` VALUES (178, 1, 'https://cp1.douguo.com/upload/caiku/0/9/7/200_0948ad44e287b09067dae2e32d1a5a07.jpg', ' 鸡腿肉250g洗净切块', 9);
INSERT INTO `stepslist` VALUES (179, 2, 'https://cp1.douguo.com/upload/caiku/d/0/7/200_d065f71ce9d4e286abef1e8c5d0ee0b7.jpg', ' 炒锅倒麻油烧热，沙姜35g切片，倒入锅中炒香', 9);
INSERT INTO `stepslist` VALUES (180, 3, 'https://cp1.douguo.com/upload/caiku/f/e/5/200_fef2f095ca86fa55f95c0a9d239eb285.jpg', ' 放入鸡肉炒至八成熟，倒入料酒10ml、老抽5ml、生抽20ml、冰糖5g，翻炒均匀', 9);
INSERT INTO `stepslist` VALUES (181, 4, 'https://cp1.douguo.com/upload/caiku/b/a/b/200_ba522c01983adcf9d7c7a356144b801b.jpg', ' 倒入适量开水没过鸡肉，加盖焖煮15分钟', 9);
INSERT INTO `stepslist` VALUES (182, 5, 'https://cp1.douguo.com/upload/caiku/4/c/1/200_4c9d8417a8bf65dbbfef1dc6571ef481.jpg', ' 锅内倒入盐3g、葱花适量，翻炒均匀', 9);
INSERT INTO `stepslist` VALUES (183, 6, 'https://cp1.douguo.com/upload/caiku/c/d/0/200_cd28775ed382cc3adbaa3ab74ea4db30.jpg', ' 盛出装盘，即可享用', 9);
INSERT INTO `stepslist` VALUES (184, 1, 'https://cp1.douguo.com/upload/caiku/e/e/5/200_ee6af81364463a1e33a0064d8ca17255.jpeg', ' 香葱肉松蛋糕卷。', 22);
INSERT INTO `stepslist` VALUES (185, 2, 'https://cp1.douguo.com/upload/caiku/c/a/b/200_ca98c9587f20988274c7545a4c938edb.jpeg', ' 食材准备。', 22);
INSERT INTO `stepslist` VALUES (186, 3, 'https://cp1.douguo.com/upload/caiku/1/0/1/200_10e67713c94d86eb8ebd5fcc8100aa51.jpeg', ' 玉米油，盐，牛奶倒入容器里，彻底搅拌均匀。', 22);
INSERT INTO `stepslist` VALUES (187, 4, 'https://cp1.douguo.com/upload/caiku/1/6/9/200_162677d5f29abb69c11ee8b7d339ff39.jpeg', ' 低筋面粉过筛至牛奶玉米油混合液体里，手动打蛋器呈Z形轻轻来回搅动，拌至无颗粒，切勿过度搅拌。', 22);
INSERT INTO `stepslist` VALUES (188, 5, 'https://cp1.douguo.com/upload/caiku/f/c/d/200_fc9a16844f8291cffe34a85f7c1bb4dd.jpeg', ' 蛋清蛋黄分离至无水无油的容器里，蛋黄倒入拌好的面糊里，手动打蛋器将面糊与蛋黄拌至细腻的面糊。', 22);
INSERT INTO `stepslist` VALUES (189, 6, 'https://cp1.douguo.com/upload/caiku/9/2/b/200_92d9da201f88e8013bcdf0d1b1924cdb.jpeg', ' 蛋白分3次加入白糖，打发至蛋白糊有阻力，打蛋头提起有微微的小弯钩即可。', 22);
INSERT INTO `stepslist` VALUES (190, 7, 'https://cp1.douguo.com/upload/caiku/3/b/d/200_3bf3162d1d017713561b9a1d14eba11d.jpeg', ' 取三分之一蛋白至蛋黄糊里翻拌均匀，再把蛋黄糊倒入剩下的蛋白糊里，翻拌均匀。', 22);
INSERT INTO `stepslist` VALUES (191, 8, 'https://cp1.douguo.com/upload/caiku/4/a/2/200_4a129af17e6427aea87f9b706c92b282.jpeg', ' 拌好的蛋黄糊倒进烤盘里，轻震两下震走气泡。放上香葱，再放肉松，最后放白芝麻。', 22);
INSERT INTO `stepslist` VALUES (192, 9, 'https://cp1.douguo.com/upload/caiku/7/b/8/200_7b069c01c591a6d23ef337ccdbe64da8.jpeg', ' 放入预热好的烤箱里，烤箱中层，150°30分钟。每家烤箱温度不同，请自行掌握。', 22);
INSERT INTO `stepslist` VALUES (193, 10, 'https://cp1.douguo.com/upload/caiku/a/3/e/200_a38253235d59d5468f7163514410375e.jpeg', ' 蛋糕烤好以后，取出，放置温热脱模，倒扣至油纸上。肉松这一面朝下。', 22);
INSERT INTO `stepslist` VALUES (194, 11, 'https://cp1.douguo.com/upload/caiku/e/f/0/200_ef735a12930155688672abfefa17ad20.jpeg', ' 放上冠利法式沙拉酱。', 22);
INSERT INTO `stepslist` VALUES (195, 12, 'https://cp1.douguo.com/upload/caiku/b/8/6/200_b87b879c72b725047816502e7e910256.jpeg', ' 再放肉松，量随意，喜欢就多放。', 22);
INSERT INTO `stepslist` VALUES (196, 13, 'https://cp1.douguo.com/upload/caiku/b/d/b/200_bdda7328f5522aa3cd1061d46954805b.jpeg', ' 借助擀面杖卷起，放入冰箱冷藏定型。', 22);
INSERT INTO `stepslist` VALUES (197, 14, 'https://cp1.douguo.com/upload/caiku/8/0/9/200_8088012b9dcf5c68c5594405728571c9.jpeg', ' 好吃。', 22);
INSERT INTO `stepslist` VALUES (198, 1, 'https://cp1.douguo.com/upload/caiku/7/3/b/200_734ea82d5c0aa5253609561e3690e4fb.jpg', ' 猪肉剁成肉末，加入生抽，胡椒粉，淀粉抓匀静置10分钟', 30);
INSERT INTO `stepslist` VALUES (199, 2, 'https://cp1.douguo.com/upload/caiku/3/4/7/200_34ad5b0a42fe8746bafeca6a8e823157.jpg', ' 茄子切成长条，加入一小撮盐抓匀静置10分钟，使用前沥干杀出的水分。', 30);
INSERT INTO `stepslist` VALUES (200, 3, 'https://cp1.douguo.com/upload/caiku/a/9/7/200_a98fd8307b360f200e9a281c4bcc21a7.jpg', ' 葱姜蒜改刀切好。', 30);
INSERT INTO `stepslist` VALUES (201, 4, 'https://cp1.douguo.com/upload/caiku/3/3/1/200_331df0b3b298e1e55bc46cfd9410c841.jpg', ' 起锅热油，加入肉末翻炒至断生变色', 30);
INSERT INTO `stepslist` VALUES (202, 5, 'https://cp1.douguo.com/upload/caiku/4/0/d/200_4013e8d642f63a1c108d7bbbcc1e934d.jpg', ' 加入葱姜蒜炒出香味', 30);
INSERT INTO `stepslist` VALUES (203, 6, 'https://cp1.douguo.com/upload/caiku/8/5/c/200_85116b9c31c4e9bf5ce2c2af3a83a35c.jpg', ' 加入茄子，转中小火慢慢翻炒至茄子见软。', 30);
INSERT INTO `stepslist` VALUES (204, 7, 'https://cp1.douguo.com/upload/caiku/f/c/8/200_fc6df3c50e32fc1530d5608e1df5ef68.jpg', ' 加入黄豆酱，一点清水加盖将茄子焖软。', 30);
INSERT INTO `stepslist` VALUES (205, 8, 'https://cp1.douguo.com/upload/caiku/e/0/2/200_e0dedb969892c02ed564eeaf4b6201a2.jpg', ' 最后加少许白糖，撒上小米椒圈炒匀即可', 30);
INSERT INTO `stepslist` VALUES (206, 9, 'https://cp1.douguo.com/upload/caiku/f/1/a/200_f1cacfe71035c39a0e865dfe96e84a3a.jpg', ' 成品', 30);
INSERT INTO `stepslist` VALUES (207, 10, 'https://cp1.douguo.com/upload/caiku/9/2/b/200_92dc15470b48fccc31f52299285682bb.jpg', ' 成品', 30);
INSERT INTO `stepslist` VALUES (208, 1, 'https://cp1.douguo.com/upload/caiku/3/4/0/200_3420b576b9fa2c172aad411d4693f7a0.jpg', ' 西葫芦黄瓜擦成丝，根据个人口味撒盐扒拉匀，搁旁边稍微冷静下', 23);
INSERT INTO `stepslist` VALUES (209, 2, 'https://cp1.douguo.com/upload/caiku/b/d/5/200_bd1ca778cbcaf63686948690d50053b5.jpg', ' 瞅着瓜们明显变软出水了，磕个鸡蛋进去，根据个人口味加五香粉胡椒粉', 23);
INSERT INTO `stepslist` VALUES (210, 3, 'https://cp1.douguo.com/upload/caiku/4/0/6/200_4095a74d7ad8260cffe62e005c1f89c6.jpg', ' 努力搅和匀，少量多次的往里加面粉', 23);
INSERT INTO `stepslist` VALUES (211, 4, 'https://cp1.douguo.com/upload/caiku/4/3/2/200_431f21ae1557ea1b4c17e7dd8c422442.jpg', ' 认真搅和成一碗不算太稀的糊糊', 23);
INSERT INTO `stepslist` VALUES (212, 5, 'https://cp1.douguo.com/upload/caiku/3/9/9/200_39a7baa4cbb2c1d1f26af0e8a7c25fb9.jpg', ' 锅烧热刷油倒糊糊，大小薄厚请随意', 23);
INSERT INTO `stepslist` VALUES (213, 6, 'https://cp1.douguo.com/upload/caiku/c/8/1/200_c87ee785ea873b7b85ef6afece36e2b1.jpg', ' 中小火煎个一两分钟，瞅着外圈明显变色了', 23);
INSERT INTO `stepslist` VALUES (214, 7, 'https://cp1.douguo.com/upload/caiku/9/4/d/200_94bceb013a7a098ad14abc7050a3f10d.jpg', ' 想办法给它翻个面，继续烙翻烙翻到两面黄', 23);
INSERT INTO `stepslist` VALUES (215, 8, 'https://cp1.douguo.com/upload/caiku/8/1/2/200_8172961b13291c1aab7a95d278585a92.jpg', ' 确认熟了关火挪出来，根据个人喜好切点小葱香菜辣椒蒜片啥的', 23);
INSERT INTO `stepslist` VALUES (216, 9, 'https://cp1.douguo.com/upload/caiku/2/7/1/200_27db642da47f501ab041e13c8d1d4641.jpg', ' 随便加点糖盐醋生抽蚝油香油香料粉之类的调点蘸汁', 23);
INSERT INTO `stepslist` VALUES (217, 10, 'https://cp1.douguo.com/upload/caiku/b/2/7/200_b2a625d9b7846bbef501a54d719d3be7.jpg', ' 转着圈的欣赏一下，发自内心那种，允许偷尝', 23);
INSERT INTO `stepslist` VALUES (218, 11, 'https://cp1.douguo.com/upload/caiku/3/9/6/200_3947923c5fbb4476a7192e0b2e115a66.jpg', ' 看心(天)情(气)配杯喝的就可以老实吃饭啦', 23);
INSERT INTO `stepslist` VALUES (219, 12, 'https://cp1.douguo.com/upload/caiku/4/9/f/200_49365163c09904a94ca1a8cbc56674ff.jpg', ' 来，张嘴~', 23);
INSERT INTO `stepslist` VALUES (220, 13, 'https://cp1.douguo.com/upload/caiku/d/3/2/200_d3de5389cd94398c94dbe34846f99412.jpg', ' 软乎乎的蛋香小清新，每一口都有水嫩瓜瓜那种', 23);
INSERT INTO `stepslist` VALUES (221, 14, 'https://cp1.douguo.com/upload/caiku/e/2/b/200_e2f2127e5a03cb8c8fb2bd468e2a237b.jpg', ' 走了哟，明天见~', 23);
INSERT INTO `stepslist` VALUES (222, 1, 'https://cp1.douguo.com/upload/caiku/8/3/6/200_835b5b2887a6e61340e08f49a32dcad6.jpg', ' 把玉米面和普通面粉混合。', 28);
INSERT INTO `stepslist` VALUES (223, 2, 'https://cp1.douguo.com/upload/caiku/1/d/4/200_1db15849e97d7d84ed84941d580c19e4.jpg', ' 加入干酵母和细砂糖，倒入温牛奶。', 28);
INSERT INTO `stepslist` VALUES (224, 3, 'https://cp1.douguo.com/upload/caiku/5/d/4/200_5d24792a3820d61dd703363a6305c104.jpg', ' 用筷子搅拌，加入油', 28);
INSERT INTO `stepslist` VALUES (225, 4, 'https://cp1.douguo.com/upload/caiku/a/f/7/200_aff2790230fb36f68cb3d2f27233b107.jpg', ' 再揉成光滑的面团，盖上保鲜膜，静置发酵至2倍大。', 28);
INSERT INTO `stepslist` VALUES (226, 5, 'https://cp1.douguo.com/upload/caiku/4/c/f/200_4ceed2a996d12059640ddfaca62962bf.jpg', ' 把核桃仁放入保鲜袋里，用擀面杖来回压碎。', 28);
INSERT INTO `stepslist` VALUES (227, 6, 'https://cp1.douguo.com/upload/caiku/3/c/b/200_3c975e24bd1a4424ade4f0f5e50e057b.jpg', ' 蔓越莓切碎。', 28);
INSERT INTO `stepslist` VALUES (228, 7, 'https://cp1.douguo.com/upload/caiku/a/3/e/200_a3fff87d88c57bab8421bcb9c7365dce.jpg', ' 案板上撒一层面粉，把发酵好的面团揉搓排气。', 28);
INSERT INTO `stepslist` VALUES (229, 8, 'https://cp1.douguo.com/upload/caiku/4/3/1/200_437d1a045ad6247081b30a20d5262371.jpg', ' 切成8等份。', 28);
INSERT INTO `stepslist` VALUES (230, 9, 'https://cp1.douguo.com/upload/caiku/6/f/b/200_6fd078e451abcd58bd3e2860554a1bfb.jpg', ' 分别揉圆后压成圆饼。', 28);
INSERT INTO `stepslist` VALUES (231, 10, 'https://cp1.douguo.com/upload/caiku/4/b/c/200_4b004f28f3552645ce40e53ff3afb8cc.jpg', ' 用手指或者棍子在中间戳一个洞。', 28);
INSERT INTO `stepslist` VALUES (232, 11, 'https://cp1.douguo.com/upload/caiku/1/7/b/200_17f5c989dc0e40a29e0ea89134eeff6b.jpg', ' 在蒸屉上铺上蒸屉布，摆入甜甜圈。盖上盖子醒发半小时，让面筋得到松弛。', 28);
INSERT INTO `stepslist` VALUES (233, 12, 'https://cp1.douguo.com/upload/caiku/c/6/f/200_c62414ccae0bf859d8d8661e6c2a217f.jpg', ' 刷上一层蛋黄液装饰表面。', 28);
INSERT INTO `stepslist` VALUES (234, 13, 'https://cp1.douguo.com/upload/caiku/6/8/0/200_6866176efecd487695d4cbf4d2490c90.jpg', ' 把核桃碎和蔓越莓碎撒上。', 28);
INSERT INTO `stepslist` VALUES (235, 14, 'https://cp1.douguo.com/upload/caiku/b/b/3/200_bb10e1c70518db96addf38be7dab7b03.jpg', ' 冷水上锅，水开后大火继续蒸10分钟。', 28);
INSERT INTO `stepslist` VALUES (236, 15, 'https://cp1.douguo.com/upload/caiku/e/b/e/200_ebb7d701b65295a7ab06116f77bf226e.gif', ' 关火后焖3分钟，揭盖，喷香的玉米面甜甜圈就做好咯~', 28);
INSERT INTO `stepslist` VALUES (237, 16, 'https://cp1.douguo.com/upload/caiku/2/6/f/200_26686a2b39d76cece7e41cf67d2ed58f.jpg', ' 一次吃不完的，可以密封后冰箱冷冻，两周内吃完。吃之前重新蒸热即可。', 28);
INSERT INTO `stepslist` VALUES (238, 1, 'https://cp1.douguo.com/upload/caiku/8/c/6/200_8c22b2147f39b95682c27d3368189916.jpg', ' 准备好熟面条。', 7);
INSERT INTO `stepslist` VALUES (239, 2, 'https://cp1.douguo.com/upload/caiku/1/7/3/200_176592b0024e53bd6648b9d2f69790b3.jpg', ' 洗干净黄瓜、胡萝卜，准备1颗鸡蛋。', 7);
INSERT INTO `stepslist` VALUES (240, 3, 'https://cp1.douguo.com/upload/caiku/9/c/6/200_9c8f02a630f86f9d00e5aef8fa0dad46.jpg', ' 鸡蛋打入碗中备用，胡萝卜和黄瓜去皮，擦丝备用。', 7);
INSERT INTO `stepslist` VALUES (241, 4, 'https://cp1.douguo.com/upload/caiku/4/b/8/200_4b735411bb4b8774657dd18f2e109af8.jpg', ' 鸡蛋中放入2g的盐，打散。', 7);
INSERT INTO `stepslist` VALUES (242, 5, 'https://cp1.douguo.com/upload/caiku/0/e/f/200_0ee462bb84d7fdece3be5923d6762aef.jpg', ' 锅中倒入植物油，小火加热', 7);
INSERT INTO `stepslist` VALUES (243, 6, 'https://cp1.douguo.com/upload/caiku/0/4/7/200_048108d9fa76badcb34e440fc6215987.jpg', ' 摊入蛋液。', 7);
INSERT INTO `stepslist` VALUES (244, 7, 'https://cp1.douguo.com/upload/caiku/0/d/f/200_0d4adcb755ee5edc31f9e5b714d1164f.jpg', ' 煎至一面金黄后，翻面，用小火稍微煎一下就可以了。', 7);
INSERT INTO `stepslist` VALUES (245, 8, 'https://cp1.douguo.com/upload/caiku/e/9/1/200_e9c5f33e633bc5199decc5c62c140af1.jpg', ' 煎好的蛋皮稍微放凉，切丝备用。', 7);
INSERT INTO `stepslist` VALUES (246, 9, 'https://cp1.douguo.com/upload/caiku/0/f/b/200_0fc3f51046e6bb3a346ce07c51ed1aeb.jpg', ' 接下来准备麻酱酱料，芝麻酱放入碗中，加入少许的凉白开稀释一下，搅拌均匀。', 7);
INSERT INTO `stepslist` VALUES (247, 10, 'https://cp1.douguo.com/upload/caiku/1/6/1/200_1676a5577608177f622c35b2e70db401.jpg', ' 加入1g的食盐、生抽、醋、鸡粉、白糖和少许香油', 7);
INSERT INTO `stepslist` VALUES (248, 11, 'https://cp1.douguo.com/upload/caiku/5/8/9/200_584eab062b33ada3b9246e9977298eb9.jpg', ' 搅拌均匀成碗汁儿就可以了。', 7);
INSERT INTO `stepslist` VALUES (249, 12, 'https://cp1.douguo.com/upload/caiku/c/6/2/200_c67f63584237825db5b73971f2a948e2.jpg', ' 把黄瓜丝、胡萝卜丝和鸡蛋丝放入碗中，倒入调好的麻酱汁儿，搅拌均匀就可以了。', 7);
INSERT INTO `stepslist` VALUES (250, 13, 'https://cp1.douguo.com/upload/caiku/c/c/d/200_cc535983d59ab493f3d5a0d9d5c3127d.jpg', ' 再撒点儿香菜和白芝麻。', 7);
INSERT INTO `stepslist` VALUES (251, 14, 'https://cp1.douguo.com/upload/caiku/4/e/3/200_4e53635684ff901580fd3933ebca8253.jpg', ' 搅一搅，闻着都好香~', 7);
INSERT INTO `stepslist` VALUES (252, 15, 'https://cp1.douguo.com/upload/caiku/e/0/b/200_e0c562bd771a19ca8a7ad23fab09165b.jpg', ' O(∩_∩)O哈哈~开吃啦~', 7);
INSERT INTO `stepslist` VALUES (253, 1, 'https://cp1.douguo.com/upload/caiku/3/5/d/200_35145cb003caf9a38675e627a0720ebd.jpg', ' 鲜鲈鱼一条，洗净。在鱼身两面均切斜刀，便于入味。', 24);
INSERT INTO `stepslist` VALUES (254, 2, 'https://cp1.douguo.com/upload/caiku/8/7/6/200_870103e04a0a62b32912b253bc59e6b6.jpg', ' 在鱼身抹一点盐，搓一搓，放一点料酒腌制10分钟。', 24);
INSERT INTO `stepslist` VALUES (255, 3, 'https://cp1.douguo.com/upload/caiku/3/a/3/200_3aa40b82d6616eb88b3bcc5ace39aad3.jpg', ' 大葱切丝，姜切丝，蒜切碎备用。', 24);
INSERT INTO `stepslist` VALUES (256, 4, 'https://cp1.douguo.com/upload/caiku/4/0/c/200_405a5503b9f2932221e1f67a6922bdcc.jpg', ' 腌制好以后把备好的葱丝，姜丝，蒜塞一部分到鱼肚。', 24);
INSERT INTO `stepslist` VALUES (257, 5, 'https://cp1.douguo.com/upload/caiku/3/5/f/200_35b875a8ea7bd473472ee1d600082a3f.jpg', ' 在鱼身均匀铺上葱丝，姜丝，蒜，花椒，泡椒，老干妈豆豉辣酱，放入蒸锅，中火蒸20分钟。', 24);
INSERT INTO `stepslist` VALUES (258, 6, 'https://cp1.douguo.com/upload/caiku/6/a/3/200_6a74e6e2b370cd39ea56d5ac637ce973.jpg', ' 蒸好的鱼出锅，在鱼表面铺上生葱丝，淋上蒸鱼豉油。', 24);
INSERT INTO `stepslist` VALUES (259, 7, 'https://cp1.douguo.com/upload/caiku/3/3/1/200_33eceb928944e58f5bb5855732e195a1.jpg', ' 撒上辣椒粉。', 24);
INSERT INTO `stepslist` VALUES (260, 8, 'https://cp1.douguo.com/upload/caiku/d/5/8/200_d56bcc1da5286ea990cae56dc0a8afc8.jpg', ' 锅中倒入适量植物油。', 24);
INSERT INTO `stepslist` VALUES (261, 9, 'https://cp1.douguo.com/upload/caiku/6/f/6/200_6f41aa9911baf6c379838d2bb8155356.jpg', ' 烧热后的油均匀浇在鱼身上。', 24);
INSERT INTO `stepslist` VALUES (262, 10, 'https://cp1.douguo.com/upload/caiku/8/a/e/200_8a3a6e1133f0633c410f4341d633b4ce.png', ' 完成图', 24);
INSERT INTO `stepslist` VALUES (263, 11, 'https://cp1.douguo.com/upload/caiku/a/5/b/200_a53b94885574fbbfe3fcb0653d7761fb.png', ' 完成图', 24);
INSERT INTO `stepslist` VALUES (264, 12, 'https://cp1.douguo.com/upload/caiku/1/5/d/200_15ea6ded522e10b063ee438019a034ad.png', ' 完成图', 24);
INSERT INTO `stepslist` VALUES (265, 1, 'https://cp1.douguo.com/upload/caiku/2/7/8/200_27cc900acdc42be64aad71b1cee70b38.jpg', ' 土豆洗净去皮，切条；长茄子切滚刀块，盐水浸泡几分钟；柿子椒切块。锅里放适量植物油煎到八成熟。', 13);
INSERT INTO `stepslist` VALUES (266, 2, 'https://cp1.douguo.com/upload/caiku/6/6/0/200_6699417bd4cf6d778fa1b6744d5ae7e0.jpg', ' 平底锅加一点点油，烧热，加入花椒、八角、干辣椒、黄豆酱、郫县豆瓣。', 13);
INSERT INTO `stepslist` VALUES (267, 3, 'https://cp1.douguo.com/upload/caiku/c/7/1/200_c73fc8b02517603177cad7b033b3fb41.jpg', ' 少许洋葱、姜片、大葱、蒜、白砂糖爆香。', 13);
INSERT INTO `stepslist` VALUES (268, 4, 'https://cp1.douguo.com/upload/caiku/8/0/4/200_809c1ce5fde7bcf38061a50be8d08204.jpg', ' 三鲜倒入锅中，加生抽、老抽调味。翻炒均匀，加少量水（推荐高汤），小火加盖焖一会儿，到完全收汁即可出锅。', 13);
INSERT INTO `stepslist` VALUES (269, 5, 'https://cp1.douguo.com/upload/caiku/5/1/c/200_518c931060c457f24f287e0e0523eefc.png', ' 上菜啦。', 13);
INSERT INTO `stepslist` VALUES (270, 6, 'https://cp1.douguo.com/upload/caiku/0/9/9/200_0966915aeff7aed688a115250cfa1c19.png', ' 上菜啦。', 13);
INSERT INTO `stepslist` VALUES (271, 1, 'https://cp1.douguo.com/upload/caiku/b/7/c/200_b7d61063643f8d581627f6e0fa7957ac.jpeg', ' 先介绍提子蔓越莓牛奶糕的制作。', 19);
INSERT INTO `stepslist` VALUES (272, 2, 'https://cp1.douguo.com/upload/caiku/5/1/0/200_51cd4a2ea2f2f954c44d47c0874f0950.jpeg', ' 2、蔓越莓干切碎。', 19);
INSERT INTO `stepslist` VALUES (273, 3, 'https://cp1.douguo.com/upload/caiku/c/a/b/200_ca386d3ae909d2837639023fe41c08db.jpeg', ' 3、将低筋面粉75克、牛奶120毫升、鸡蛋1个混合一起，搅拌均匀。', 19);
INSERT INTO `stepslist` VALUES (274, 4, 'https://cp1.douguo.com/upload/caiku/a/9/5/200_a9ecf3fbe6c53b98f5cb731ec5f80b65.jpeg', ' 4、然后将面糊过滤一遍，以免有结块和颗粒。', 19);
INSERT INTO `stepslist` VALUES (275, 5, 'https://cp1.douguo.com/upload/caiku/6/0/f/200_6046f459dd80ca141f1c7082dad00cff.jpeg', ' 5、将提子干、蔓越莓干倒入面糊中。', 19);
INSERT INTO `stepslist` VALUES (276, 6, 'https://cp1.douguo.com/upload/caiku/d/2/a/200_d2c116a3debd2cdb91aa5f96f78135ba.jpeg', ' 6、混合均匀。', 19);
INSERT INTO `stepslist` VALUES (277, 7, 'https://cp1.douguo.com/upload/caiku/6/3/e/200_6398587fa098e64dad659de16edd4c5e.jpeg', ' 7、记得给容器内壁抹上一层薄油，以方便脱模。', 19);
INSERT INTO `stepslist` VALUES (278, 8, 'https://cp1.douguo.com/upload/caiku/9/f/c/200_9fdc704b8a7eb3ac93333a677ecf4d3c.jpeg', ' 8、桐桐在面糊表面撒上提子干。', 19);
INSERT INTO `stepslist` VALUES (279, 9, 'https://cp1.douguo.com/upload/caiku/9/4/5/200_94c8a16362a95c78d69b98687d2b52e5.jpeg', ' 9、保鲜膜密封容器，并用牙签扎几个小洞。', 19);
INSERT INTO `stepslist` VALUES (280, 10, 'https://cp1.douguo.com/upload/caiku/e/8/3/200_e8bdb0068f4bebc0f081ba5daec91743.jpeg', ' 10、锅里装适量水烧开。', 19);
INSERT INTO `stepslist` VALUES (281, 11, 'https://cp1.douguo.com/upload/caiku/3/3/2/200_33b03818c52323e61c4c7d054106f2c2.jpeg', ' 11、蒸熟后，去掉保鲜膜。', 19);
INSERT INTO `stepslist` VALUES (282, 12, 'https://cp1.douguo.com/upload/caiku/b/8/6/200_b8ec9fe4df9223d01d90d54561710786.jpeg', ' 12、待温后脱模倒出。', 19);
INSERT INTO `stepslist` VALUES (283, 13, 'https://cp1.douguo.com/upload/caiku/f/c/c/200_fc0b01a43dd7f238d21ca14a989c949c.jpeg', ' 13、切件，切的形状和大小随自己喜欢。', 19);
INSERT INTO `stepslist` VALUES (284, 14, 'https://cp1.douguo.com/upload/caiku/8/6/b/200_86c11ce804e0b9135e09ec40076183fb.jpeg', ' 酸甜好滋味，百吃不腻。', 19);
INSERT INTO `stepslist` VALUES (285, 15, 'https://cp1.douguo.com/upload/caiku/c/9/a/200_c9625e57d9d712c32c84efeb42ebf29a.jpeg', ' 下面介绍红枣牛奶糕。', 19);
INSERT INTO `stepslist` VALUES (286, 16, 'https://cp1.douguo.com/upload/caiku/9/9/1/200_99b1817ac882a87e8e4ea10f88a605d1.jpeg', ' 1、红枣（连核重）45克。', 19);
INSERT INTO `stepslist` VALUES (287, 17, 'https://cp1.douguo.com/upload/caiku/3/5/4/200_35f26d29d302e9a5956183ab62f24b24.jpeg', ' 2、红枣去核后切小粒。', 19);
INSERT INTO `stepslist` VALUES (288, 18, 'https://cp1.douguo.com/upload/caiku/0/4/c/200_043b914bb5ff057aa9fd05a365358c5c.jpeg', ' 3、低筋面粉75克、纯牛奶120毫升、鸡蛋1个，混合均匀。', 19);
INSERT INTO `stepslist` VALUES (289, 19, 'https://cp1.douguo.com/upload/caiku/1/9/c/200_198b613497bcf1f13f8146440de101cc.jpeg', ' 4、过滤一次，以防止有颗粒或结块。', 19);
INSERT INTO `stepslist` VALUES (290, 20, 'https://cp1.douguo.com/upload/caiku/b/f/0/200_bfdd027372b5b40f502160676d435f20.jpeg', ' 5、将红枣和1小把瓜子仁倒入面糊中。', 19);
INSERT INTO `stepslist` VALUES (291, 21, 'https://cp1.douguo.com/upload/caiku/5/3/5/200_53a7641d3b0509d59ba8e6b34cec7175.jpeg', ' 6、混合均匀。', 19);
INSERT INTO `stepslist` VALUES (292, 22, 'https://cp1.douguo.com/upload/caiku/6/7/9/200_672843938f039919a0ecb7bcd555a1e9.jpeg', ' 7、这次用的是很常见的不锈钢盘子蒸糕点。', 19);
INSERT INTO `stepslist` VALUES (293, 23, 'https://cp1.douguo.com/upload/caiku/6/c/9/200_6c22f99688f2d0070d928ade9cb9dca9.jpeg', ' 8、将面糊倒入盘子中，封上保鲜膜，然后用牙签扎几个小洞。', 19);
INSERT INTO `stepslist` VALUES (294, 24, 'https://cp1.douguo.com/upload/caiku/6/3/0/200_632f7764811269f0b00b0a2dab160660.jpeg', ' 9、蒸好的红枣牛奶糕。', 19);
INSERT INTO `stepslist` VALUES (295, 25, 'https://cp1.douguo.com/upload/caiku/3/8/4/200_387574190fa2ac47ea5e42b9d8297e74.jpeg', ' 10、用刮刀铲松糕点边缘，以方便脱模。', 19);
INSERT INTO `stepslist` VALUES (296, 26, 'https://cp1.douguo.com/upload/caiku/f/2/f/200_f26ff8127da49b61c514ff2912af9b7f.jpeg', ' 11、切个米字。', 19);
INSERT INTO `stepslist` VALUES (297, 27, 'https://cp1.douguo.com/upload/caiku/b/b/a/200_bb30282266e99eade4ac203bc45fd94a.jpeg', ' 12、底部光滑，脱模很成功。', 19);
INSERT INTO `stepslist` VALUES (298, 28, 'https://cp1.douguo.com/upload/caiku/7/e/b/200_7e28562df84a8ad055ec116b3e614cbb.jpeg', ' 13、枣香浓郁的小糕点......', 19);
INSERT INTO `stepslist` VALUES (299, 29, 'https://cp1.douguo.com/upload/caiku/4/8/f/200_480ead0e5be8aad99215e79c97ccfb2f.jpeg', ' 成品图。', 19);
INSERT INTO `stepslist` VALUES (300, 1, 'https://cp1.douguo.com/upload/caiku/2/4/d/200_24f98a4ee4bc5712c1760cd0273c42fd.jpg', ' 准备材料，土豆4个。', 15);
INSERT INTO `stepslist` VALUES (301, 2, 'https://cp1.douguo.com/upload/caiku/6/4/3/200_64594f1adbdc1ad05944cdd1dc059b93.jpg', ' 土豆清洗干净去皮、切成1.2cm左右的条状，尽量让土豆条是相同的厚度，防止薄的部分烤焦。土豆条上的小尖角，需要去掉，因为非常容易烤焦。', 15);
INSERT INTO `stepslist` VALUES (302, 3, 'https://cp1.douguo.com/upload/caiku/3/c/a/200_3c292ba88480cf12878e08465b60b5fa.jpg', ' 切好的土豆条放入冷水中浸泡5分钟，去除淀粉。', 15);
INSERT INTO `stepslist` VALUES (303, 4, 'https://cp1.douguo.com/upload/caiku/a/1/4/200_a1c377bec1add9fceffee40e147e25c4.jpg', ' 浸泡好的土豆条冲洗干净，烧一锅水，水开以后放入土豆条，煮2分钟即可。盛出煮好的土豆条，用厨房用纸把表面的水擦干一点儿，同时预热烤箱。', 15);
INSERT INTO `stepslist` VALUES (304, 5, 'https://cp1.douguo.com/upload/caiku/9/f/6/200_9f37d984fbb639781f7d563234bf0526.jpg', ' 擦干水份的土豆条放入烤盘，均匀摆放整齐，在土豆条表面刷上薄薄的一层植物油。', 15);
INSERT INTO `stepslist` VALUES (305, 6, 'https://cp1.douguo.com/upload/caiku/3/c/2/200_3ca6e53306037ee5e695d4e7794d88d2.jpg', ' 放入预热好的烤箱，上下火210度，中层，20分钟，两面金黄即可。烤好的薯条表面撒少许盐（1岁以下省略）。', 15);
INSERT INTO `stepslist` VALUES (306, 7, 'https://cp1.douguo.com/upload/caiku/e/4/b/200_e487c4a4bb8a93bbf3ee1b2224f4c03b.jpg', ' 完成图。', 15);
INSERT INTO `stepslist` VALUES (307, 8, 'https://cp1.douguo.com/upload/caiku/8/1/8/200_819526bb62141f1d1f5f392134d4a8b8.png', ' 完成图。', 15);
INSERT INTO `stepslist` VALUES (308, 1, 'https://cp1.douguo.com/upload/caiku/5/3/e/200_53741ae4c2731117f0d8726c3a267f0e.jpg', ' 中筋面粉+冰牛奶+酵母+玉米油+酵母和成光滑的面团，然后取10g白面团。10g+竹炭粉做成黑色面团。40g+一丢丢红曲粉做成粉红色面团。剩下的多加点红曲粉变成红色面团。', 10);
INSERT INTO `stepslist` VALUES (309, 2, 'https://cp1.douguo.com/upload/caiku/8/3/3/200_830020e8ed6495ffbb789557440c2d03.jpg', ' 做虾头：每个大概15-18g 滚圆 我今天做了8只虾', 10);
INSERT INTO `stepslist` VALUES (310, 3, 'https://cp1.douguo.com/upload/caiku/b/d/5/200_bd6ce5abc868b74f6543077b063f8ef5.jpg', ' 一头搓成尖尖，一头用刮板弄平，如图所示', 10);
INSERT INTO `stepslist` VALUES (311, 4, 'https://cp1.douguo.com/upload/caiku/c/b/6/200_cb9ba6cce6ac199814c7dd1805e12ae6.jpg', ' 做虾身体：一共5个球球，大概8g-5g之间，如图就是从大到小', 10);
INSERT INTO `stepslist` VALUES (312, 5, 'https://cp1.douguo.com/upload/caiku/b/0/a/200_b06e2fa115a83ca8afe16d741356323a.jpg', ' 虾身体的五个球球粘合，从大到小​，然后放在油纸上', 10);
INSERT INTO `stepslist` VALUES (313, 6, 'https://cp1.douguo.com/upload/caiku/6/8/1/200_681b5542d1038e55164660aea405c761.jpg', ' 取大概8g面团，擀开成3cm圆形', 10);
INSERT INTO `stepslist` VALUES (314, 7, 'https://cp1.douguo.com/upload/caiku/1/c/5/200_1c496cd0ebdcacb926c16cd509ee9405.jpg', ' 中间用剪刀一分为二（这样做2个虾的尾巴）', 10);
INSERT INTO `stepslist` VALUES (315, 8, 'https://cp1.douguo.com/upload/caiku/6/3/f/200_6310416728eb4ba77934ff24f84a076f.jpg', ' 用剪刀剪成3或者4瓣', 10);
INSERT INTO `stepslist` VALUES (316, 9, 'https://cp1.douguo.com/upload/caiku/f/c/d/200_fc8fcb10e3ad0ff70e604aea09df225d.jpg', ' 用刮板压出花纹，然后收尾如图搓成尖尖', 10);
INSERT INTO `stepslist` VALUES (317, 10, 'https://cp1.douguo.com/upload/caiku/3/c/5/200_3c59e74e405fdcfe3bc6d9017bd26795.jpg', ' 取3g左右粉红色面团（这些小细节我都是凭感觉，没有称重），搓成虾身体的长度，然后擀扁，宽度也和虾身体差不多', 10);
INSERT INTO `stepslist` VALUES (318, 11, 'https://cp1.douguo.com/upload/caiku/c/8/5/200_c85cc1e28c52d45132f892c1b467e5f5.jpg', ' 将粉色肚皮的面团粘合在虾身体的5个球球的长条上', 10);
INSERT INTO `stepslist` VALUES (319, 12, 'https://cp1.douguo.com/upload/caiku/a/0/5/200_a090ad5bd6197208170408afe3007cc5.jpg', ' 用红色面团搓水滴状长条 长度约1.5cm-2cm左右 如图，我每个虾做了8条腿，具体几条腿我不知道啊！', 10);
INSERT INTO `stepslist` VALUES (320, 13, 'https://cp1.douguo.com/upload/caiku/6/b/3/200_6bfe8bece636e7e6ef10cb9aa6e782d3.jpg', ' 将刚刚搓的小水滴形状的虾腿和尾巴粘合在虾身体上，下头上做大钳子，两个小球球，然后大钳子大概5g的面团搓成水滴状，中间用剪刀剪开粘合', 10);
INSERT INTO `stepslist` VALUES (321, 14, 'https://cp1.douguo.com/upload/caiku/5/f/9/200_5f584bbe966ce0afa6db614379bffcb9.jpg', ' 眼睛用白色面团和黑色眼珠', 10);
INSERT INTO `stepslist` VALUES (322, 15, 'https://cp1.douguo.com/upload/caiku/0/d/5/200_0d4494a6d8b23c45de765e10f5a405d5.jpg', ' 趴着的龙虾', 10);
INSERT INTO `stepslist` VALUES (323, 16, 'https://cp1.douguo.com/upload/caiku/2/d/d/200_2d1f71f81a80d016fe6cbd9d870598ad.jpg', ' 卷曲的龙虾样式如图', 10);
INSERT INTO `stepslist` VALUES (324, 17, 'https://cp1.douguo.com/upload/caiku/b/c/5/200_bc33b8ad0edcffe0b42184c4a5369ff5.jpg', ' 室温（今天33度）放置10min，冷水上锅，大火，然后煮开后转中火，一共15min，关火焖2min开盖，放凉', 10);
INSERT INTO `stepslist` VALUES (325, 1, 'https://cp1.douguo.com/upload/caiku/f/b/7/200_fbf475766311c1b14a205df8da458c87.jpg', ' 准备食材', 11);
INSERT INTO `stepslist` VALUES (326, 2, 'https://cp1.douguo.com/upload/caiku/a/9/f/200_a920596b2342df4ff26713871152aa5f.jpg', ' 包菜切成细丝，胡萝卜切成细丝，大蒜去皮切片', 11);
INSERT INTO `stepslist` VALUES (327, 3, 'https://cp1.douguo.com/upload/caiku/9/8/d/200_985277604d7c9e18ebeef2fa663e68ad.jpg', ' 起锅热油，加入蒜片炒出香味', 11);
INSERT INTO `stepslist` VALUES (328, 4, 'https://cp1.douguo.com/upload/caiku/4/3/c/200_435c7043bf11e34841eb2e57c63c425c.jpg', ' 加入胡萝卜和包菜，慢慢翻炒至断生', 11);
INSERT INTO `stepslist` VALUES (329, 5, 'https://cp1.douguo.com/upload/caiku/5/a/6/200_5ac3ef63987846f48824b35c47693916.jpg', ' 最后加少许盐调味，炒匀即可', 11);
INSERT INTO `stepslist` VALUES (330, 6, 'https://cp1.douguo.com/upload/caiku/3/e/e/200_3e623287219d093622c3bdb10be8771e.jpg', ' 成品', 11);
INSERT INTO `stepslist` VALUES (331, 7, 'https://cp1.douguo.com/upload/caiku/0/0/4/200_00adfef4fbcf525954928054209823c4.jpg', ' 成品', 11);
INSERT INTO `stepslist` VALUES (332, 1, 'https://cp1.douguo.com/upload/caiku/1/9/b/200_196c056f3350eed11ecd784920ca02cb.jpg', ' 首先将五花肉清洗干净，姜洗净去皮后切片，香葱洗净去根，取两根香葱打一个结，准备两个葱结，锅里倒入适量清水，将五花肉放入冷水锅里，再加入姜片、1个葱结和1大勺料酒，大火煮15分钟。', 25);
INSERT INTO `stepslist` VALUES (333, 2, 'https://cp1.douguo.com/upload/caiku/f/5/4/200_f509acefeaa3a5d860b2d8121dd34e64.jpg', ' 15分钟后捞出烫熟的五花肉，放凉后用刀切成小块。', 25);
INSERT INTO `stepslist` VALUES (334, 3, 'https://cp1.douguo.com/upload/caiku/9/9/9/200_990a38ecb0837217bc36181cd114b7a9.jpg', ' 拿出准备好的香料用水冲洗一下，用厨房纸巾擦干水备用。香料有很多灰尘，一定要洗一下再用。', 25);
INSERT INTO `stepslist` VALUES (335, 4, 'https://cp1.douguo.com/upload/caiku/c/5/9/200_c5c7cb8059728496bd1f5771f2aeb8d9.jpg', ' 准备好4个鸡蛋，清洗干净备用。', 25);
INSERT INTO `stepslist` VALUES (336, 5, 'https://cp1.douguo.com/upload/caiku/9/7/1/200_97c03561f9b4da84e9946bfefd30a021.jpg', ' 锅里倒入少许油，放入肉块小火煎至金黄盛入碗里备用。', 25);
INSERT INTO `stepslist` VALUES (337, 6, 'https://cp1.douguo.com/upload/caiku/d/0/e/200_d01e86aa9953274855c390aaf6e5cdae.jpg', ' 锅里留少许油，放入姜片、葱结、八角、桂皮、香叶、草果和煎香的五花肉小火翻炒片刻，香料炒出香味即可。', 25);
INSERT INTO `stepslist` VALUES (338, 7, 'https://cp1.douguo.com/upload/caiku/3/3/3/200_336876af987e0508df8d46e3cdf0a9e3.jpg', ' 接着加入老抽、生抽、蚝油翻炒几下，炒至上色后加入干红椒。', 25);
INSERT INTO `stepslist` VALUES (339, 8, 'https://cp1.douguo.com/upload/caiku/d/1/4/200_d17338bf4b9e345bc10db4335220f7a4.jpg', ' 将炒好的五花肉倒入砂锅里，加入200ml花雕酒、和适量清水大火烧开。', 25);
INSERT INTO `stepslist` VALUES (340, 9, 'https://cp1.douguo.com/upload/caiku/4/f/b/200_4f7e00f0b3c79d8e9166985991be7a5b.jpg', ' 水开后加入适量盐和少许白糖，再加入洗净的鸡蛋，盖上盖子，小火焖煮60分钟。', 25);
INSERT INTO `stepslist` VALUES (341, 10, 'https://cp1.douguo.com/upload/caiku/7/a/a/200_7aa1d3e9153cec10e45fcb07a9b915da.jpg', ' 烧至50分钟的时候，捞出葱结和鸡蛋，葱结扔掉。', 25);
INSERT INTO `stepslist` VALUES (342, 11, 'https://cp1.douguo.com/upload/caiku/9/5/a/200_95313784e390982063db46ad1c3e737a.jpg', ' 然后开小火将汤汁收紧。', 25);
INSERT INTO `stepslist` VALUES (343, 12, 'https://cp1.douguo.com/upload/caiku/0/b/f/200_0b3de7b0c024c88478ea6c8a9c284f5f.jpg', ' 香糯可口、肥而不腻、飘香四溢的秘制红烧肉就做好了。', 25);
INSERT INTO `stepslist` VALUES (344, 1, 'https://cp1.douguo.com/upload/caiku/7/a/f/200_7a454a34982654a90e4ab8b54c41e90f.jpeg', ' 首先把虾用盐，红椒粉，胡椒，牛至，橄榄油抓匀，腌15分钟', 29);
INSERT INTO `stepslist` VALUES (345, 2, 'https://cp1.douguo.com/upload/caiku/2/e/3/200_2e5a759b41e7b3bec2d10ef2c3b4eb73.jpeg', ' 把培根和腌好的虾一起放在烤盘里。这样混放可以让虾也沾一点培根的香味。', 29);
INSERT INTO `stepslist` VALUES (346, 3, 'https://cp1.douguo.com/upload/caiku/c/7/a/200_c79132ed30d2da6563411993de27158a.jpeg', ' 放入烤箱220C (425F)，烤12分钟后取出。', 29);
INSERT INTO `stepslist` VALUES (347, 4, 'https://cp1.douguo.com/upload/caiku/9/0/f/200_9016a9d729e09e43b246e1745e18200f.jpeg', ' 培根取出后碾压成碎屑备用', 29);
INSERT INTO `stepslist` VALUES (348, 5, 'https://cp1.douguo.com/upload/caiku/b/f/1/200_bfb69a361b3f93b0f76f5b189fde6b61.jpeg', ' 切两块如图大小的卷心莴苣(一人一份)，小番茄切小粒', 29);
INSERT INTO `stepslist` VALUES (349, 6, 'https://cp1.douguo.com/upload/caiku/b/b/7/200_bba10fac869486ff662aced2ea68f8a7.jpeg', ' 把小番茄放在卷心菜上面', 29);
INSERT INTO `stepslist` VALUES (350, 7, 'https://cp1.douguo.com/upload/caiku/1/c/9/200_1ce968b4e585456c2fcd9edf6cef44a9.jpeg', ' 大虾挨着卷心菜贴边放', 29);
INSERT INTO `stepslist` VALUES (351, 8, 'https://cp1.douguo.com/upload/caiku/6/0/7/200_60b0eda6a9fa3a1912ce84231ff20637.jpeg', ' 撒上培根碎屑', 29);
INSERT INTO `stepslist` VALUES (352, 9, 'https://cp1.douguo.com/upload/caiku/8/d/2/200_8dcac6fa06f84ed6abbbc2cafc641c52.jpeg', ' 撒上蓝芝士碎粒', 29);
INSERT INTO `stepslist` VALUES (353, 10, 'https://cp1.douguo.com/upload/caiku/2/e/4/200_2edcf185235f8faa8a377414904e0a84.jpeg', ' 最后加上蓝芝士沙拉酱，或者用任何自己喜欢的沙拉酱。', 29);
INSERT INTO `stepslist` VALUES (354, 1, 'https://cp1.douguo.com/upload/caiku/5/0/a/200_5085281a34c79cbee335dd18099c68ca.jpg', ' 香葱切碎备用', 21);
INSERT INTO `stepslist` VALUES (355, 2, 'https://cp1.douguo.com/upload/caiku/0/7/2/200_07d75d368670e4a3ecae4ccb89da1c82.jpg', ' 将酵母倒入容器中，加入温牛奶搅拌至酵母融化，', 21);
INSERT INTO `stepslist` VALUES (356, 3, 'https://cp1.douguo.com/upload/caiku/f/8/3/200_f8587a402e2b0635c645acb8ca5bc6e3.jpg', ' 倒入玉米油搅拌均匀', 21);
INSERT INTO `stepslist` VALUES (357, 4, 'https://cp1.douguo.com/upload/caiku/9/1/b/200_913e25d693d8869f12ba2fe90ecd7b9b.jpg', ' 筛入低筋面粉，盐，小小苏打', 21);
INSERT INTO `stepslist` VALUES (358, 5, 'https://cp1.douguo.com/upload/caiku/5/a/b/200_5a63028c1fc7d8b74cd854fb27c4ce5b.jpg', ' 先将面团揉压均匀至无干粉即可', 21);
INSERT INTO `stepslist` VALUES (359, 6, 'https://cp1.douguo.com/upload/caiku/f/3/d/200_f3f9d576af26d224079f49594d1ab71d.jpg', ' 加入香葱碎', 21);
INSERT INTO `stepslist` VALUES (360, 7, 'https://cp1.douguo.com/upload/caiku/4/d/5/200_4d5aab109d860a25a4000d531f780aa5.jpg', ' 轻揉成团，盖上保鲜膜静置30分钟', 21);
INSERT INTO `stepslist` VALUES (361, 8, 'https://cp1.douguo.com/upload/caiku/a/d/0/200_ad2824308a7338361dfabefee01ce6f0.jpg', ' 醒发好的面团取出，擀开成薄的面片，边缘不整齐的用刀切掉。', 21);
INSERT INTO `stepslist` VALUES (362, 9, 'https://cp1.douguo.com/upload/caiku/7/3/c/200_73b5262e5793d7cc88997ad07bba8c9c.jpg', ' 然后切成大小差不多的长方形小片。', 21);
INSERT INTO `stepslist` VALUES (363, 10, 'https://cp1.douguo.com/upload/caiku/6/b/e/200_6bed857bf4424d74ca85804d4d4335fe.jpg', ' 全部切好转移到烤盘上，用叉子均匀的扎出小孔', 21);
INSERT INTO `stepslist` VALUES (364, 11, 'https://cp1.douguo.com/upload/caiku/2/1/1/200_21b3e00e9f1d2418a26c8575079462e1.jpg', ' 放入预热好的烤箱，上下火170度，烘烤15分钟左右，烤制表面微黄即可。', 21);
INSERT INTO `stepslist` VALUES (365, 12, 'https://cp1.douguo.com/upload/caiku/5/8/8/200_583615eb232d6a80bd5efe3e10838ea8.jpg', ' 烤好取出放凉密封保存即可。', 21);
INSERT INTO `stepslist` VALUES (366, 13, 'https://cp1.douguo.com/upload/caiku/b/e/c/200_bef234c7ecf0e329d1f9df811307d7bc.jpg', ' 成品', 21);
INSERT INTO `stepslist` VALUES (367, 14, 'https://cp1.douguo.com/upload/caiku/7/b/d/200_7b2cea0c795298d9aea3b5791ed4f15d.jpg', ' 成品', 21);
INSERT INTO `stepslist` VALUES (368, 1, 'https://cp1.douguo.com/upload/caiku/0/6/1/200_06c1a5397955744a5358e84fdeb463b1.jpeg', ' 先制作黑糖珍珠，把水和黑糖放入奶锅中加热烧开。', 5);
INSERT INTO `stepslist` VALUES (369, 2, 'https://cp1.douguo.com/upload/caiku/8/e/b/200_8ee54e89118f71f38f1101db6ce46fcb.jpeg', ' 配方中86克木薯粉平均分成两份，每份43克，黑糖水烧开后迅速把其中一份加入搅拌均匀关火，在加入剩下的��份木薯粉搅拌均匀。如果水烧开没有迅速加入会影响最终的效果。', 5);
INSERT INTO `stepslist` VALUES (370, 3, 'https://cp1.douguo.com/upload/caiku/9/9/e/200_99919836eef8872bd752c0b0138c83de.jpeg', ' 揉成光滑的面团。', 5);
INSERT INTO `stepslist` VALUES (371, 4, 'https://cp1.douguo.com/upload/caiku/1/c/f/200_1c41d24217356dd3ecc2adf49e49548f.jpeg', ' 搓成长条', 5);
INSERT INTO `stepslist` VALUES (372, 5, 'https://cp1.douguo.com/upload/caiku/e/c/c/200_ec41ab09a66fa1c9a3b12ecc2db19b7c.jpeg', ' 切成小段。', 5);
INSERT INTO `stepslist` VALUES (373, 6, 'https://cp1.douguo.com/upload/caiku/9/7/2/200_9775df286adc2735bcde1188bd282052.jpeg', ' 一个个搓成圆球。', 5);
INSERT INTO `stepslist` VALUES (374, 7, 'https://cp1.douguo.com/upload/caiku/a/e/f/200_ae780f83c4f29d5e6e0e2e147988ffef.jpeg', ' 锅里加入适量的水烧开，加入珍珠煮熟，木薯粉煮不熟吃了会引起拉肚子。', 5);
INSERT INTO `stepslist` VALUES (375, 8, 'https://cp1.douguo.com/upload/caiku/1/1/a/200_11501769a348e68b4b42e83efef764fa.jpeg', ' 捞出用冷水浸泡备用。', 5);
INSERT INTO `stepslist` VALUES (376, 9, 'https://cp1.douguo.com/upload/caiku/c/3/f/200_c34381ce9afff53c3d6d8c6eff5f4aef.jpeg', ' 锅里在加入配方煮珍珠的800克水和黑糖，加入煮好的珍珠在一起煮到汤汁浓稠的状态，煮珍珠锅底会留一部分的黑糖水，这个不要扔掉，待会打奶油要用到。', 5);
INSERT INTO `stepslist` VALUES (377, 10, 'https://cp1.douguo.com/upload/caiku/c/f/6/200_cfd083f8eec56bd8def82dcef2dab516.jpeg', ' 制作红茶戚风：把开水加入红茶中浸泡10分钟，冷却后加入玉米油搅拌均匀。', 5);
INSERT INTO `stepslist` VALUES (378, 11, 'https://cp1.douguo.com/upload/caiku/9/6/3/200_963d3a82a3cc3aaa4dbdfbbae0810be3.jpeg', ' 加入过筛的低筋面粉搅拌均匀。', 5);
INSERT INTO `stepslist` VALUES (379, 12, 'https://cp1.douguo.com/upload/caiku/e/8/1/200_e8f25f81d7090494d7713e215780efa1.jpeg', ' 加入蛋黄搅拌均匀。', 5);
INSERT INTO `stepslist` VALUES (380, 13, 'https://cp1.douguo.com/upload/caiku/0/7/0/200_0703b59f2436f625360e9cf19339eeb0.jpeg', ' 搅拌好的蛋黄糊备用。', 5);
INSERT INTO `stepslist` VALUES (381, 14, 'https://cp1.douguo.com/upload/caiku/e/d/8/200_edde89645264d7a8ea7e1b8781d3d068.jpeg', ' 蛋白加入柠檬汁，分三次加入细砂糖打发干性发泡。', 5);
INSERT INTO `stepslist` VALUES (382, 15, 'https://cp1.douguo.com/upload/caiku/5/7/5/200_577c09a825e8a7a9b272e091148f1e65.jpeg', ' 分三次和蛋黄糊混合翻拌均匀。', 5);
INSERT INTO `stepslist` VALUES (383, 16, 'https://cp1.douguo.com/upload/caiku/f/c/3/200_fcaf34122d1096d6074ead685f267373.jpeg', ' 面糊装入6寸模具中。', 5);
INSERT INTO `stepslist` VALUES (384, 17, 'https://cp1.douguo.com/upload/caiku/5/9/8/200_593f3efe9a3fc7ffd61ba5551e57a588.jpeg', ' 烤箱提前预热170度中层上下火，烤40的分钟。（柏翠38升烤箱建议温度）', 5);
INSERT INTO `stepslist` VALUES (385, 18, 'https://cp1.douguo.com/upload/caiku/4/6/f/200_46fa51c3f11437932ad555e075d4c2af.jpeg', ' 烤好的戚风出炉倒扣冷却备用。', 5);
INSERT INTO `stepslist` VALUES (386, 19, 'https://cp1.douguo.com/upload/caiku/7/d/7/200_7db497d0110e17d5d652eb62caaca097.jpeg', ' 把戚风蛋糕中间挖一个小洞。', 5);
INSERT INTO `stepslist` VALUES (387, 20, 'https://cp1.douguo.com/upload/caiku/a/a/b/200_aaa4c21d26dad569cc93d60efd8344cb.jpeg', ' 淡奶油打到6分发，加入煮黑糖珍珠的水继续打发可以流动的状态。', 5);
INSERT INTO `stepslist` VALUES (388, 21, 'https://cp1.douguo.com/upload/caiku/2/d/9/200_2d432ed10b63fab8cc50a09050326339.jpeg', ' 奶油挤在中间的洞制作爆浆效果。', 5);
INSERT INTO `stepslist` VALUES (389, 22, 'https://cp1.douguo.com/upload/caiku/3/8/8/200_38c1fff6aa917adfbf43d21095e63ea8.jpeg', ' 剩下的奶油抹在蛋糕表面，撒上黑糖珍珠，开吃！', 5);
INSERT INTO `stepslist` VALUES (390, 23, 'https://cp1.douguo.com/upload/caiku/6/5/0/200_65f5cb0e506d2444e5596137821dbd30.jpeg', ' 成品切开图！', 5);
INSERT INTO `stepslist` VALUES (391, 24, 'https://cp1.douguo.com/upload/caiku/e/0/5/200_e06fda3c303fa75fe4f9c03be1cb81f5.jpeg', ' 成品图', 5);
INSERT INTO `stepslist` VALUES (392, 1, 'https://cp1.douguo.com/upload/caiku/b/4/d/200_b416f4c72f440ae4ffde0e7dc806a09d.jpeg', ' 鸡中翅洗干净沥干水，然后划刀花。', 26);
INSERT INTO `stepslist` VALUES (393, 2, 'https://cp1.douguo.com/upload/caiku/e/2/4/200_e2b8c9cc6db81491c78cd019592c8dc4.jpeg', ' 老抽2汤匙、料酒2汤匙腌制半小时。', 26);
INSERT INTO `stepslist` VALUES (394, 3, 'https://cp1.douguo.com/upload/caiku/1/6/4/200_167cd5e05c3b50e99343542006d2f424.jpeg', ' 鸡翅腌制中。', 26);
INSERT INTO `stepslist` VALUES (395, 4, 'https://cp1.douguo.com/upload/caiku/2/d/4/200_2d77aaae1f6c9ef4f72cf752193343b4.jpeg', ' 适量水烧开，将鸡翅放下去，煮沸出泡沫后（如图），立即捞出沥干。', 26);
INSERT INTO `stepslist` VALUES (396, 5, 'https://cp1.douguo.com/upload/caiku/7/b/4/200_7b7f630e8a72d5c0e4cdd1f677eb55c4.jpeg', ' 焯过水的鸡翅。', 26);
INSERT INTO `stepslist` VALUES (397, 6, 'https://cp1.douguo.com/upload/caiku/6/d/f/200_6d234c5e10fbf1d7209a53734738a7cf.jpeg', ' 用一个干净的锅，无水无油。', 26);
INSERT INTO `stepslist` VALUES (398, 7, 'https://cp1.douguo.com/upload/caiku/6/2/7/200_626ca8ea3d13a71c734f373da0045f87.jpeg', ' 生抽2汤匙。', 26);
INSERT INTO `stepslist` VALUES (399, 8, 'https://cp1.douguo.com/upload/caiku/7/6/a/200_7626a66c09238bdeb49600606a32d5aa.jpeg', ' 料酒1汤匙。', 26);
INSERT INTO `stepslist` VALUES (400, 9, 'https://cp1.douguo.com/upload/caiku/c/b/5/200_cba6ab1173880a549952183c24f4f2e5.jpeg', ' 中小火焖煮鸡翅。', 26);
INSERT INTO `stepslist` VALUES (401, 10, 'https://cp1.douguo.com/upload/caiku/7/f/3/200_7f7bb27209a2b48d8858c80cc7606483.jpeg', ' 中途要翻一下，以便入味。', 26);
INSERT INTO `stepslist` VALUES (402, 11, 'https://cp1.douguo.com/upload/caiku/7/b/4/200_7b475e35df6849e4cc0c8d10bcf73c44.jpeg', ' 一直煮到汤汁浓稠，汤汁裹满鸡翅即可出锅。', 26);
INSERT INTO `stepslist` VALUES (403, 12, 'https://cp1.douguo.com/upload/caiku/4/a/1/200_4ab9f71afdedf6b28623fe44a9539e01.jpeg', ' 出锅后撒点白芝麻，颜值加分。', 26);
INSERT INTO `stepslist` VALUES (404, 13, 'https://cp1.douguo.com/upload/caiku/4/9/3/200_4915370452d2e254c21c90366fb67b33.jpeg', ' 美味！', 26);
INSERT INTO `stepslist` VALUES (405, 14, 'https://cp1.douguo.com/upload/caiku/b/e/7/200_bec0db40ae2416cdebdb87692ddf4c17.jpeg', ' 一口下去，饱满多汁，鸡翅又嫩又香。', 26);
INSERT INTO `stepslist` VALUES (406, 15, 'https://cp1.douguo.com/upload/caiku/e/4/2/200_e412a2c8845f5956672a43dbf59e8032.jpeg', ' 别说是小孩的最爱了，连大人也会迷上它的鲜嫩多汁，吃完还得嚼两下骨头。', 26);
INSERT INTO `stepslist` VALUES (407, 1, 'https://cp1.douguo.com/upload/caiku/f/f/b/200_ff638d14f85b0e5a3e1307054bdb0a9b.jpeg', ' 食材展示', 16);
INSERT INTO `stepslist` VALUES (408, 2, 'https://cp1.douguo.com/upload/caiku/5/a/5/200_5a8e73ba9371c70f11123d3330018c75.jpeg', ' 秋葵先用盐水泡一会儿，再用牙刷把它表面的细毛刷掉。洗净后切去蒂，在沿中间破开，不要切断', 16);
INSERT INTO `stepslist` VALUES (409, 3, 'https://cp1.douguo.com/upload/caiku/e/a/1/200_ea7a3ff89c2ea20658af1c89b3791fd1.jpeg', ' 锅中放水烧开，放入秋葵焯水至秋葵颜色变得更加鲜艳翠绿', 16);
INSERT INTO `stepslist` VALUES (410, 4, 'https://cp1.douguo.com/upload/caiku/6/a/a/200_6a8ca385c7a9fc0151d0ef4e0d67218a.jpeg', ' 捞出摆盘', 16);
INSERT INTO `stepslist` VALUES (411, 5, 'https://cp1.douguo.com/upload/caiku/9/2/d/200_9219eaa2d2686b0058d6d3ae0f10283d.jpeg', ' 锅中放少许油，开小火，放入蒜末，煸炒香', 16);
INSERT INTO `stepslist` VALUES (412, 6, 'https://cp1.douguo.com/upload/caiku/3/f/0/200_3f864b8ada9e86d4b6be787095fac1a0.jpeg', ' 再��入剁碎的辣椒，一汤匙耗油少许酱油，一汤匙陈醋，半汤匙糖，炒匀。如果觉得太干可以放一点点水', 16);
INSERT INTO `stepslist` VALUES (413, 7, 'https://cp1.douguo.com/upload/caiku/f/2/7/200_f2a083323d97601de3456695d015fc67.jpeg', ' 最后淋在摆好的秋葵上即可', 16);

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `userId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `userName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '\'\'账号名\'\'',
  `sex` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '男' COMMENT '\'\'性别\'\'',
  `phoneNo` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '\'\'手机号\'\'',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '\'\'密码\'\'',
  `levelId` int(11) NULL DEFAULT 1 COMMENT '等级头衔ID',
  `expValue` int(11) NULL DEFAULT 0 COMMENT '经验值',
  `headPhoto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'user-head.png' COMMENT '头像',
  `userTime` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`userId`) USING BTREE,
  INDEX `fk_userInfo_levelList_idx`(`levelId`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  INDEX `userId_2`(`userId`) USING BTREE,
  INDEX `userId_3`(`userId`) USING BTREE,
  INDEX `userId_4`(`userId`) USING BTREE,
  INDEX `userId_5`(`userId`) USING BTREE,
  INDEX `userId_6`(`userId`) USING BTREE,
  INDEX `userId_7`(`userId`) USING BTREE,
  INDEX `userId_8`(`userId`) USING BTREE,
  INDEX `userId_9`(`userId`) USING BTREE,
  INDEX `userId_10`(`userId`) USING BTREE,
  INDEX `userId_11`(`userId`) USING BTREE,
  INDEX `userId_12`(`userId`) USING BTREE,
  INDEX `userId_13`(`userId`) USING BTREE,
  CONSTRAINT `userinfo_ibfk_1` FOREIGN KEY (`levelId`) REFERENCES `levellist` (`levelid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 668 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, 'yu', '女', '13774639339', '1', 1, 0, '1553270439778_1553270439778.jpg', NULL);
INSERT INTO `userinfo` VALUES (2, 'sure汪', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/7/1/4/70_u66631823200625192505.jpg', NULL);
INSERT INTO `userinfo` VALUES (3, 'aa', '女', NULL, '1', 1, 0, 'https://i1.douguo.com/upload/photo/c/3/d/70_u10575865864514182125.jpeg', NULL);
INSERT INTO `userinfo` VALUES (4, '拾光机', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/e/d/8/70_u5428520263574205261134.jpg', NULL);
INSERT INTO `userinfo` VALUES (5, '花儿的美食厨房', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/c/9/9/70_u03173331631954222136.jpg', NULL);
INSERT INTO `userinfo` VALUES (6, '杜鹃花美食', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/4/c/6/70_u0308256740962910142220.jpg', NULL);
INSERT INTO `userinfo` VALUES (7, '麦可安', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/2/9/6/70_u83701666827580171252.jpeg', NULL);
INSERT INTO `userinfo` VALUES (8, '姜叔的日食记', '男', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/f/6/e/70_u4006446931631908211605.jpg', NULL);
INSERT INTO `userinfo` VALUES (9, 'yn高小疯', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/0/f/6/70_u04984907910066125329.jpg', NULL);
INSERT INTO `userinfo` VALUES (10, '厨恋恋', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/0/b/9/70_u84414631443424113354.jpeg', NULL);
INSERT INTO `userinfo` VALUES (11, 'jmy的私房菜 ', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/8/3/e/70_u14498486563013140036.jpg', NULL);
INSERT INTO `userinfo` VALUES (12, '快乐香厨', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/4/5/b/70_u09306474734626153852.jpg', NULL);
INSERT INTO `userinfo` VALUES (13, '尖尖实验室', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/1/1/4/70_u01012076308597095726.jpeg', NULL);
INSERT INTO `userinfo` VALUES (14, '纯色酒心糖', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/8/a/b/70_u4797562146304310292021.jpg', NULL);
INSERT INTO `userinfo` VALUES (15, '潘潘猫', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/b/c/6/70_panpanye193958.jpg', NULL);
INSERT INTO `userinfo` VALUES (16, '椛吃', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/6/1/b/70_u82330125549502201601.jpeg', NULL);
INSERT INTO `userinfo` VALUES (17, '懒氏小厨房', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/a/6/b/70_u60558574699004025407.jpg', NULL);
INSERT INTO `userinfo` VALUES (18, '小雏菊在厨房', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/e/6/1/70_u7863623398730107261403.jpg', NULL);
INSERT INTO `userinfo` VALUES (19, '小绵杨不吃草', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/7/1/d/70_u89847471323035055141.jpg', NULL);
INSERT INTO `userinfo` VALUES (20, 'Mi_manchi', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/1/d/0/70_u23402261771213153050.jpg', NULL);
INSERT INTO `userinfo` VALUES (21, '食尚煮易爱下厨 ', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/a/0/6/70_u7976969929703210071002.jpg', NULL);
INSERT INTO `userinfo` VALUES (22, '苏苏爱美食WH', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/e/a/a/70_u28624574347800115418.jpeg', NULL);
INSERT INTO `userinfo` VALUES (23, '一杯奶绿', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/9/1/0/70_u72502152847837183232.jpg', NULL);
INSERT INTO `userinfo` VALUES (24, '然_小然', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/1/6/b/70_u33208956762392215127.jpg', NULL);
INSERT INTO `userinfo` VALUES (25, '君之', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/d/c/f/70_u0836379302081643.jpg', NULL);
INSERT INTO `userinfo` VALUES (26, '小菁同学', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/6/9/2/70_u50512821407200122825.jpeg', NULL);
INSERT INTO `userinfo` VALUES (27, '小龙IRIS', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/7/d/6/70_u14475234661129233455.jpg', NULL);
INSERT INTO `userinfo` VALUES (28, '只爱飞飞自己', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/7/1/5/70_u20550357309480223632.jpg', NULL);
INSERT INTO `userinfo` VALUES (29, '揪揪耳朵', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/3/4/d/70_u83631736559763230259.jpeg', NULL);
INSERT INTO `userinfo` VALUES (30, '食尚小米', '女', NULL, NULL, 1, 0, 'https://i1.douguo.com/upload/photo/d/2/b/70_u75994969.jpg', NULL);
INSERT INTO `userinfo` VALUES (658, '余哎呀', '女', '123', '1', 1, 0, '1553219039377_1553219039377.jpeg', '2019-01-09 15:45:32');
INSERT INTO `userinfo` VALUES (660, '11', '女', '123', '123456', 1, 0, 'hhhh', '2018-03-11 00:00:00');
INSERT INTO `userinfo` VALUES (661, '11', '女', '123', '123456', 1, 0, 'hhhh', '2019-03-12 01:10:09');
INSERT INTO `userinfo` VALUES (662, '11', '女', '123', '123456', 1, 0, 'hhhh', '2019-03-12 18:00:12');
INSERT INTO `userinfo` VALUES (663, '1', '1', '1', '1', 1, 0, 'hhh', '2019-03-12 18:06:36');
INSERT INTO `userinfo` VALUES (664, '哎呀嘛', '女', '123', '222222', 1, 0, '1111_333', '2019-03-12 18:07:35');
INSERT INTO `userinfo` VALUES (665, '112', '男', '13774639339', '1', 1, 0, 'hhh', '2019-03-18 01:06:50');
INSERT INTO `userinfo` VALUES (666, '667', '男', '13774639339', '111', 1, 0, 'hhh', '2019-03-18 01:19:30');
INSERT INTO `userinfo` VALUES (667, 'r', '女', '13774639339', '1', 1, 0, 'hhh', '2019-03-18 16:15:02');

-- ----------------------------
-- Procedure structure for articleAddPriNum
-- ----------------------------
DROP PROCEDURE IF EXISTS `articleAddPriNum`;
delimiter ;;
CREATE PROCEDURE `articleAddPriNum`(IN `a_Id` int)
BEGIN
	update article set articlePraiseNum = articlePraiseNum +1 where articleId = a_Id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for articleCancelPraiseNum
-- ----------------------------
DROP PROCEDURE IF EXISTS `articleCancelPraiseNum`;
delimiter ;;
CREATE PROCEDURE `articleCancelPraiseNum`(IN `a_Id` int)
BEGIN
		update article set articlePraiseNum = articlePraiseNum -1 where articleId = a_Id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for delPraiseNum
-- ----------------------------
DROP PROCEDURE IF EXISTS `delPraiseNum`;
delimiter ;;
CREATE PROCEDURE `delPraiseNum`(IN `d_Id` int)
BEGIN
	update recipedetails set recipePraiseNum = recipePraiseNum -1 where detailsId = d_Id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for delRecipe
-- ----------------------------
DROP PROCEDURE IF EXISTS `delRecipe`;
delimiter ;;
CREATE PROCEDURE `delRecipe`(IN `recipesId` int)
BEGIN   
	SET FOREIGN_KEY_CHECKS = 0;
	DELETE from recipedetails where detailsId =recipesId;
	SET FOREIGN_KEY_CHECKS = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getComm
-- ----------------------------
DROP PROCEDURE IF EXISTS `getComm`;
delimiter ;;
CREATE PROCEDURE `getComm`(IN `menu_Id` int)
BEGIN
	select count(1) from comment where detailsId = menu_Id ;
	select userComment from comment where detailsId = menu_Id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getModifyRecipe
-- ----------------------------
DROP PROCEDURE IF EXISTS `getModifyRecipe`;
delimiter ;;
CREATE PROCEDURE `getModifyRecipe`(IN `recipesId` int)
begin
	select * from dietlist where dietId = recipesId;
	select * from foodlist where dietId = recipesId;
	select * from stepslist where dietId = recipesId;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getOneRecipe
-- ----------------------------
DROP PROCEDURE IF EXISTS `getOneRecipe`;
delimiter ;;
CREATE PROCEDURE `getOneRecipe`(IN `p_detailsId` int)
BEGIN
	select userinfo.userId,detailsId, recipeName,recipeBrief,recipePraiseNum,recipeCoverImg,recipeMakeTime,recipeWeight,userinfo.accountName,headPhoto from recipedetails,userinfo where detailsId = p_detailsId and recipedetails.authorid = userinfo.userId;
	select * from recipefood where detailsId = p_detailsId;
-- 	select * from accessories where detailsId = p_detailsId;
	select * from recipestep where detailsId = p_detailsId;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getUserRecipe
-- ----------------------------
DROP PROCEDURE IF EXISTS `getUserRecipe`;
delimiter ;;
CREATE PROCEDURE `getUserRecipe`(IN `p_dietId` int)
BEGIN
	select userinfo.userId,userinfo.headPhoto,dietId,dietTitle,dietIntroduce,dietPhoto,accountName from dietlist,userinfo where dietList.userId = userinfo.userId and productState = "已审核" and dietId = p_dietId;
	select * from foodlist where dietId = p_dietId;
	select * from stepslist where dietId = p_dietId;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for searchThing
-- ----------------------------
DROP PROCEDURE IF EXISTS `searchThing`;
delimiter ;;
CREATE PROCEDURE `searchThing`()
BEGIN
select headPhoto,userId,accountName from userinfo GROUP BY accountName;
select recipeCoverImg,detailsId,recipeName from recipedetails;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for updatePraiseNum
-- ----------------------------
DROP PROCEDURE IF EXISTS `updatePraiseNum`;
delimiter ;;
CREATE PROCEDURE `updatePraiseNum`(IN `d_Id` int)
BEGIN
update recipedetails set recipePraiseNum = recipePraiseNum +1 where detailsId = d_Id;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
