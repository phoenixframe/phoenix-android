/*
MySQL Data Transfer
Source Host: localhost
Source Database: phoenix
Target Host: localhost
Target Database: phoenix
Date: 2014/1/5 11:32:22
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for phoenix_testscenario
-- ----------------------------
CREATE TABLE `phoenix_testscenario` (
  `id` int(11) NOT NULL auto_increment,
  `ScenarioName` varchar(30) default '',
  `PlanName` varchar(30) default '',
  `Remark` varchar(256) default '',
  `CreateTime` varchar(256) default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
