/*
MySQL Data Transfer
Source Host: localhost
Source Database: phoenix
Target Host: localhost
Target Database: phoenix
Date: 2014/1/5 11:32:16
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for phoenix_testplan
-- ----------------------------
CREATE TABLE `phoenix_testplan` (
  `Id` int(11) unsigned zerofill NOT NULL auto_increment COMMENT '试测计划表_测试计划ID',
  `PlanName` varchar(30) default '' COMMENT '试测计划名称配置',
  `CaseName` varchar(30) default '',
  `Remark` varchar(256) default '',
  `CreateTime` varchar(50) default '',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
