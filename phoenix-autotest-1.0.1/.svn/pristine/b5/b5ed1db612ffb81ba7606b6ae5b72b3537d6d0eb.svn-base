/*
MySQL Data Transfer
Source Host: localhost
Source Database: phoenix
Target Host: localhost
Target Database: phoenix
Date: 2014/1/5 11:29:55
*/

DROP DATABASE IF EXISTS phoenix;
CREATE DATABASE phoenix DEFAULT CHARACTER SET utf8;

-- ----------------------------
-- Table structure for phoenix_caseslog
-- ----------------------------
use phoenix;
CREATE TABLE `phoenix_caseslog` (
  `Id` int(11) NOT NULL auto_increment,
  `ScenarioName` varchar(30) default '',
  `PlanName` varchar(30) default '',
  `CaseName` varchar(30) default '',
  `Actor` varchar(256) default '',
  `IP` varchar(50) default '',
  `EngineType` varchar(50) default '',
  `StartTime` varchar(50) default '',
  `EndTime` varchar(50) default '',
  `Duration` varchar(50) default NULL,
  `CaseStatus` varchar(50) default '',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for phoenix_checkpointlog
-- ----------------------------
use phoenix;
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
-- Table structure for phoenix_config
-- ----------------------------
use phoenix;
CREATE TABLE `phoenix_config` (
  `id` int(11) NOT NULL auto_increment,
  `Attribute` varchar(50) default '',
  `Value` varchar(256) default '',
  `Remark` varchar(256) default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for phoenix_execplan
-- ----------------------------
use phoenix;
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
-- Table structure for phoenix_exectask
-- ----------------------------
use phoenix;
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
-- Table structure for phoenix_execution
-- ----------------------------
use phoenix;
CREATE TABLE `phoenix_execution` (
  `Id` int(11) NOT NULL auto_increment,
  `ScenarioName` varchar(30) NOT NULL default '',
  `CreateTime` varchar(256) default '',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for phoenix_servermonitor
-- ----------------------------
use phoenix;
CREATE TABLE `phoenix_servermonitor` (
  `ID` int(11) NOT NULL auto_increment,
  `ServerIP` varchar(20) default NULL COMMENT '用例执行端机器的IP',
  `ScenarioName` varchar(30) default NULL,
  `ExecPlanId` varchar(11) default NULL,
  `Author` varchar(30) default NULL COMMENT '任务发起者',
  `Status` varchar(30) default NULL COMMENT '执行状态',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for phoenix_statistics
-- ----------------------------
use phoenix;
CREATE TABLE `phoenix_statistics` (
  `id` int(11) NOT NULL auto_increment,
  `CASENAME` varchar(50) default '',
  `DATEINFO` varchar(50) default '',
  `STEPPERCENT` varchar(50) default '',
  `CHECKPOINTPERCENT` varchar(50) default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for phoenix_steplog
-- ----------------------------
use phoenix;
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
-- Table structure for phoenix_temporarytable
-- ----------------------------
use phoenix;
CREATE TABLE `phoenix_temporarytable` (
  `id` int(11) unsigned zerofill NOT NULL auto_increment,
  `VariableName` varchar(256) default '',
  `VariableValue` varchar(256) default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for phoenix_testcases
-- ----------------------------
use phoenix;
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
-- Table structure for phoenix_testplan
-- ----------------------------
use phoenix;
CREATE TABLE `phoenix_testplan` (
  `Id` int(11) unsigned zerofill NOT NULL auto_increment COMMENT '试测计划表_测试计划ID',
  `PlanName` varchar(30) default '' COMMENT '试测计划名称配置',
  `CaseName` varchar(30) default '',
  `Remark` varchar(256) default '',
  `CreateTime` varchar(50) default '',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for phoenix_testscenario
-- ----------------------------
use phoenix;
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
INSERT INTO `phoenix_config` VALUES ('1', '小提示', '小提示：点击”新增操作单元“时，会先将步骤插入的数据库，然后才会显示到界面上', '');
INSERT INTO `phoenix_config` VALUES ('2', '小提示', '小提示：点击”浏览计划“时，会将现有可执行的计划全部列出来', '');
INSERT INTO `phoenix_config` VALUES ('3', '小提示', '小提示：将用例暂存到数据表中后，可对队列进行编辑', '');
INSERT INTO `phoenix_config` VALUES ('4', '小提示', '小提示：在”编辑测试计划“页的数据表中删除用例后，会同数据库中的记录一同删除', '');
INSERT INTO `phoenix_config` VALUES ('5', '小提示', '小提示：将用例暂存到数据表中后，可对队列进行编辑', '');
INSERT INTO `phoenix_config` VALUES ('6', '小提示', '小提示：在”编辑测试场景“页的数据表中删除计划后，会同数据库中的记录一同删除', '');
INSERT INTO `phoenix_config` VALUES ('7', '小提示', '小提示：启动场景时，会直接执行数据表中编辑好的所有记录', '');
INSERT INTO `phoenix_config` VALUES ('8', '小提示', '小提示：可点击”永久保存“存储场景队列到数据库，通过点击”载入上次场景“快速还原', '');
INSERT INTO `phoenix_config` VALUES ('9', '小提示', '小提示：开启维护模式后，才能对表中数据进行维护，删除或拖拽', '');
INSERT INTO `phoenix_config` VALUES ('10', '小提示', '小提示：点击维护完成时，保存到数据库 的按钮才可用', '');
INSERT INTO `phoenix_config` VALUES ('11', '小提示', '小提示：”保存到数据库“按钮被点击后，会将自身置为不可用状态。再次点击”维护完成“时，才能恢复', '');
INSERT INTO `phoenix_config` VALUES ('12', '小提示', '小提示：单一用例执行完毕后才会将步骤LOG一次性写入数据库', '');
INSERT INTO `phoenix_config` VALUES ('13', '小提示', '小提示：执行过程中可通过选择”工具“-->”打开监控“，开启监控界面', '');
INSERT INTO `phoenix_config` VALUES ('14', '小提示', '小提示：执行过程中可通过选择”工具“-->”分机监控“，开启分机监控界面', '');
INSERT INTO `phoenix_config` VALUES ('15', '小提示', '小提示：可在CHECKPOINTLOG表中查询用例所有的检查点及结果情况', '');
INSERT INTO `phoenix_config` VALUES ('16', '小提示', '小提示：选择步骤类型时，系统会根据不同的步骤类型，显现能输入的属性值', '');
INSERT INTO `phoenix_config` VALUES ('17', '小提示', '小提示：CheckPointStatusAct步骤需要提供检查点\'通过时的用例:失败的用例\'', '');
INSERT INTO `phoenix_config` VALUES ('18', '小提示', '小提示：检查点期望值中可输入实际的期望值，也可以输入SQL直接从库中取值', '');
INSERT INTO `phoenix_config` VALUES ('21', '小提示', '小提示：删除用例时，会将指定的用例的数据全部删除且不可恢复', '');
INSERT INTO `phoenix_config` VALUES ('22', 'superUserName', 'admin', '');
INSERT INTO `phoenix_config` VALUES ('23', 'superPassword', 'admin', '');
