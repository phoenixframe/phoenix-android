/*
MySQL Data Transfer
Source Host: localhost
Source Database: phoenix
Target Host: localhost
Target Database: phoenix
Date: 2014/1/5 11:31:34
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for phoenix_exectask
-- ----------------------------
CREATE TABLE `phoenix_exectask` (
  `ID` int(11) NOT NULL auto_increment COMMENT 'Execplan表中的ID',
  `ExecPlanId` int(30) default NULL,
  `ScenarioName` varchar(40) default NULL COMMENT '场景名称',
  `Status` varchar(20) default NULL COMMENT '执行标识',
  `Type` varchar(10) default NULL COMMENT '策略类型',
  `CycleSign` varchar(30) default NULL COMMENT '类型标识',
  `CycleTimeParameter` varchar(30) default NULL COMMENT '类型1的时间值',
  `Report` varchar(256) default NULL COMMENT '报告路径',
  `StartTime` varchar(50) default NULL COMMENT '任务开始执行时间',
  `EndTime` varchar(50) default NULL COMMENT '场景结束时间',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
