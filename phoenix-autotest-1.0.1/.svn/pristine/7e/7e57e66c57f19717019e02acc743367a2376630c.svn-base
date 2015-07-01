/*
MySQL Data Transfer
Source Host: localhost
Source Database: phoenix
Target Host: localhost
Target Database: phoenix
Date: 2014/1/5 11:31:26
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for phoenix_execplan
-- ----------------------------
CREATE TABLE `phoenix_execplan` (
  `ID` int(11) NOT NULL auto_increment,
  `ScenarioName` varchar(30) NOT NULL default '' COMMENT '场景名称',
  `Type` varchar(10) NOT NULL default '' COMMENT '执行类型。1：用户自定义执行场景 2：常规执行场景',
  `CycleIndex` varchar(10) default NULL COMMENT '标注场景不间断循环执行的次数,',
  `DayCycleIndex` varchar(10) default NULL COMMENT '标注场景在一天内运行几次，程序会自动分配时间',
  `CycleParameter` varchar(256) default NULL,
  `CreateTime` varchar(30) default '' COMMENT '创建时间',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
