/*
MySQL Data Transfer
Source Host: localhost
Source Database: phoenix
Target Host: localhost
Target Database: phoenix
Date: 2014/1/5 11:31:58
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for phoenix_steplog
-- ----------------------------
CREATE TABLE `phoenix_steplog` (
  `Id` int(11) NOT NULL auto_increment,
  `CaseId` varchar(50) default '',
  `DataBatch` varchar(50) default NULL,
  `CaseName` varchar(30) default '',
  `StepCommit` varchar(256) default '',
  `StepContent` varchar(256) default '',
  `StepStatus` varchar(50) default '',
  `ImgPath` varchar(256) default '',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
