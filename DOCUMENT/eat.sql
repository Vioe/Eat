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

 Date: 23/02/2019 23:41:54
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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '活动详情表' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '粉丝表' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论表' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '未完成的作品表' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 154 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '食材表' ROW_FORMAT = Dynamic;

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
  INDEX `recipeClassifyId_8`(`recipeClassifyId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for recipedetails
-- ----------------------------
DROP TABLE IF EXISTS `recipedetails`;
CREATE TABLE `recipedetails`  (
  `detailsId` int(11) NOT NULL AUTO_INCREMENT,
  `recipeName` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `recipeBrief` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `recipeCoverImg` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userId` int(11) NOT NULL,
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
  INDEX `fk_userId_authid`(`userId`) USING BTREE,
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
  CONSTRAINT `fk_userId_authid` FOREIGN KEY (`userId`) REFERENCES `userinfo` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 282 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜谱详情' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 488 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜谱食材' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1258 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜谱步骤' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 452 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '制作步骤表' ROW_FORMAT = Dynamic;

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
  CONSTRAINT `userinfo_ibfk_1` FOREIGN KEY (`levelId`) REFERENCES `levellist` (`levelid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 660 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

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
-- Procedure structure for delUserRecipe
-- ----------------------------
DROP PROCEDURE IF EXISTS `delUserRecipe`;
delimiter ;;
CREATE PROCEDURE `delUserRecipe`(IN `recipesId` int)
BEGIN
	 delete from foodlist where dietId = recipesId;
	 delete from stepslist where dietId = recipesId;
	 delete from dietlist where dietId = recipesId;
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
