/*
MySQL Data Transfer
Source Host: localhost
Source Database: phoenix
Target Host: localhost
Target Database: phoenix
Date: 2014/1/5 11:32:10
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for phoenix_testcases
-- ----------------------------
CREATE TABLE `phoenix_testcases` (
  `Id` int(11) NOT NULL auto_increment,
  `CaseName` varchar(30) NOT NULL default '',
  `Operate` varchar(100) default '' COMMENT '具体对页面元素的操作',
  `Data` varchar(256) default '' COMMENT '操作单元数据',
  `CheckPoint` varchar(50) default '' COMMENT '该步骤能激活的检查点类型',
  `CheckExpect` varchar(256) default '' COMMENT '检查点期望值',
  `OperateRemark` varchar(256) default '' COMMENT '操作单元备注',
  `Locator_Id` varchar(256) default '' COMMENT '据根ID定位元素',
  `Locator_Name` varchar(256) default '' COMMENT '据根Name定位',
  `Locator_Xpath` varchar(256) default '' COMMENT '据根Xpath定位',
  `Locator_Class` varchar(256) default '' COMMENT '据根Class定位',
  `Locator_tagName` varchar(256) default '' COMMENT '根据tagName定位',
  `Locator_Css` varchar(256) default '' COMMENT '根据Css定位',
  `Locator_LinkText` varchar(256) default '' COMMENT '根据LinkText定位',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
