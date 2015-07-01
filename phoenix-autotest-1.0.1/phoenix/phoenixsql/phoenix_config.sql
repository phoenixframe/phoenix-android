/*
MySQL Data Transfer
Source Host: localhost
Source Database: phoenix
Target Host: localhost
Target Database: phoenix
Date: 2014/1/5 11:31:19
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for phoenix_config
-- ----------------------------
CREATE TABLE `phoenix_config` (
  `id` int(11) NOT NULL auto_increment,
  `Attribute` varchar(50) default '',
  `Value` varchar(256) default '',
  `Remark` varchar(256) default '',
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
