/*
MySQL Data Transfer
Source Host: localhost
Source Database: phoenix
Target Host: localhost
Target Database: phoenix
Date: 2014/1/5 11:31:40
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for phoenix_execution
-- ----------------------------
CREATE TABLE `phoenix_execution` (
  `Id` int(11) NOT NULL auto_increment,
  `ScenarioName` varchar(30) NOT NULL default '',
  `CreateTime` varchar(256) default '',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
