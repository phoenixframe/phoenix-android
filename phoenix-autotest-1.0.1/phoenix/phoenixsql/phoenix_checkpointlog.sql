/*
MySQL Data Transfer
Source Host: localhost
Source Database: phoenix
Target Host: localhost
Target Database: phoenix
Date: 2014/1/5 11:31:08
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for phoenix_checkpointlog
-- ----------------------------
CREATE TABLE `phoenix_checkpointlog` (
  `Id` int(11) NOT NULL auto_increment,
  `CaseId` varchar(256) default '',
  `DataBatch` varchar(50) default NULL,
  `CaseName` varchar(30) default '',
  `CheckPointName` varchar(30) default '',
  `CheckPointStatus` varchar(50) default '',
  `CheckPointContent` varchar(256) default '',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
