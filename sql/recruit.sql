/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : recruit

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2021-05-03 14:28:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for application
-- ----------------------------
DROP TABLE IF EXISTS `application`;
CREATE TABLE `application` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '申请状态',
  `apply_time` datetime(3) DEFAULT NULL COMMENT '申请时间',
  `resume_id` int(11) NOT NULL COMMENT '简历id',
  `position_id` int(11) NOT NULL COMMENT '职位id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `hr_id` int(11) NOT NULL COMMENT 'HR id',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '更新时间',
  `delete_time` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of application
-- ----------------------------
INSERT INTO `application` VALUES ('6', '0', null, '3', '6', '9', '6', '2021-05-02 15:38:06.604', '2021-05-02 15:38:06.604', null);
INSERT INTO `application` VALUES ('7', '0', null, '3', '7', '9', '6', '2021-05-02 15:38:07.716', '2021-05-02 15:38:07.716', null);
INSERT INTO `application` VALUES ('8', '0', null, '3', '8', '9', '7', '2021-05-02 15:38:08.806', '2021-05-02 15:38:08.806', null);
INSERT INTO `application` VALUES ('9', '0', null, '3', '9', '9', '7', '2021-05-02 15:38:10.126', '2021-05-02 15:38:10.126', null);
INSERT INTO `application` VALUES ('10', '0', null, '3', '10', '9', '7', '2021-05-02 15:38:10.898', '2021-05-02 15:38:10.898', null);
INSERT INTO `application` VALUES ('12', '0', null, '2', '1', '5', '6', '2021-05-02 23:48:31.295', '2021-05-02 23:48:31.295', null);
INSERT INTO `application` VALUES ('13', '0', null, '2', '3', '5', '7', '2021-05-02 23:48:45.324', '2021-05-02 23:48:45.324', null);
INSERT INTO `application` VALUES ('18', '2', null, '1', '10', '4', '6', '2021-05-03 00:50:38.037', '2021-05-03 00:50:38.037', null);
INSERT INTO `application` VALUES ('20', '1', null, '1', '1', '4', '6', '2021-05-03 01:25:41.929', '2021-05-03 01:25:41.929', null);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `description` longtext COMMENT '分类描述',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '更新时间',
  `delete_time` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `categoryName_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'Java开发', '这个分类是Java开发', '2021-05-02 00:29:10.235', '2021-05-02 00:29:10.235', null);
INSERT INTO `category` VALUES ('2', 'C++开发', '这个分类是C++开发', '2021-05-02 00:29:17.152', '2021-05-02 00:29:17.152', null);
INSERT INTO `category` VALUES ('3', '前端开发', '这个分类是前端开发', '2021-05-02 00:29:37.067', '2021-05-02 00:29:37.067', null);
INSERT INTO `category` VALUES ('4', '后端开发', '这个分类是后台开发', '2021-05-02 00:29:48.987', '2021-05-02 00:29:48.987', null);
INSERT INTO `category` VALUES ('5', '数据挖掘', '这个分类是数据挖掘', '2021-05-02 00:30:03.599', '2021-05-02 00:30:03.599', null);
INSERT INTO `category` VALUES ('6', '大数据开发', '这个分类是大数据开发', '2021-05-02 00:30:19.041', '2021-05-02 00:30:19.041', null);
INSERT INTO `category` VALUES ('7', '测试开发', '这个分类是测试开发', '2021-05-02 00:30:28.050', '2021-05-02 00:30:28.050', null);
INSERT INTO `category` VALUES ('8', '软件测试', '这个分类是软件测试', '2021-05-02 00:30:38.467', '2021-05-02 00:30:38.467', null);
INSERT INTO `category` VALUES ('9', 'PHP开发', '这个分类是php开发', '2021-05-02 00:31:44.027', '2021-05-02 00:31:44.027', null);
INSERT INTO `category` VALUES ('10', 'GO开发', '这个分类是GO开发', '2021-05-02 00:32:06.827', '2021-05-02 00:32:06.827', null);
INSERT INTO `category` VALUES ('11', 'web前端', '这个分类是Web前端', '2021-05-02 00:33:26.299', '2021-05-02 00:33:26.299', null);
INSERT INTO `category` VALUES ('12', '算法开发', '这个分类是算法开发', '2021-05-02 00:33:37.904', '2021-05-02 00:33:37.904', null);
INSERT INTO `category` VALUES ('13', 'python开发', '这个分类是python开发', '2021-05-02 00:35:49.622', '2021-05-02 00:35:49.622', null);

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(100) NOT NULL COMMENT '公司名称',
  `foreign_name` varchar(100) DEFAULT NULL COMMENT '公司外文名',
  `city` varchar(50) NOT NULL COMMENT '总部地点',
  `logo` varchar(255) DEFAULT NULL COMMENT '公司',
  `mission` varchar(255) DEFAULT NULL COMMENT '公司使命',
  `description` longtext COMMENT '公司简介',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '公司状态',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '更新时间',
  `delete_time` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '阿里巴巴', 'Alibaba', '中国杭州1', 'https://bjck.xilikeli.cn/61007a1aced342c9baef58d423610e39.png', '让天下没有难做的生意', '阿里巴巴集团经营多项业务，另外也从关联公司的业务和服务中取得经营商业生态系统上的支援。业务和关联公司的业务包括：淘宝网、天猫、聚划算、全球速卖通、阿里巴巴国际交易市场、1688、阿里妈妈、阿里云、蚂蚁金服、菜鸟网络等', '1', '2021-05-01 18:30:16.062', '2021-05-01 18:30:16.062', null);
INSERT INTO `company` VALUES ('2', '腾讯', 'Tencent', '广东深圳', 'https://bjck.xilikeli.cn/9696498b521f47d1aafe016004234aef.jpg', '通过互联网服务提升人类生活品质', '深圳市腾讯计算机系统有限公司成立于1998年11月，由马化腾、张志东、许晨晔、陈一丹、曾李青五位创始人共同创立.是中国最大的互联网综合服务提供商之一，也是中国服务用户最多的互联网企业之一', '1', '2021-05-01 18:31:32.539', '2021-05-01 18:31:32.539', null);
INSERT INTO `company` VALUES ('3', '百度', 'BaiDu', '广东深圳', 'https://bjck.xilikeli.cn/a8747f7b82c440499e3d5a6bbf8cc848.jpg', '用科技让复杂的世界更简单', '百度是拥有强大互联网基础的领先AI公司。百度愿景是：成为最懂用户，并能帮助人们成长的全球顶级高科技公司', '1', '2021-05-01 18:43:48.372', '2021-05-01 18:43:48.372', null);
INSERT INTO `company` VALUES ('4', '字节跳动', 'ByteDance', '中国北京', 'https://bjck.xilikeli.cn/f74a1f157cfd4baba30d398edb985bfd.jpg', '建设全球创作与交流平台', '北京字节跳动科技有限公司，成立于2012年3月，是最早将人工智能应用于移动互联网场景的科技企业之一，是中国北京的一家信息科技公司，', '1', '2021-05-01 18:45:27.184', '2021-05-01 18:45:27.184', null);
INSERT INTO `company` VALUES ('5', '京东', 'JD', '中国北京', 'https://bjck.xilikeli.cn/ac202af0171f4c028298b807b2196962.jpg', '网购上京东，省钱又放心', '京东（股票代码：JD），中国自营式电商企业，创始人刘强东担任京东集团董事局主席兼首席执行官 [1]  。旗下设有京东商城、京东金融、拍拍网、京东智能、O2O及海外事业部等', '1', '2021-05-01 18:46:22.717', '2021-05-01 18:46:22.717', null);
INSERT INTO `company` VALUES ('6', '网易', 'NetEase', '广东广州', 'https://bjck.xilikeli.cn/d4332bf5036d42cfbcc41354afac15c6.jpg', '以匠心、致创新', '网易公司（NASDAQ: NTES），1997年由创始人兼CEO丁磊先生在广州创办， [1]  2000年在美国NASDAQ股票交易所挂牌上市，是中国领先的互联网技术公司', '1', '2021-05-01 18:47:08.115', '2021-05-01 18:47:08.115', null);
INSERT INTO `company` VALUES ('7', '深信服', 'Sangfor', '广东深圳', 'https://bjck.xilikeli.cn/be618111bca54c2799311fc3cbfb5acc.jpg', '让IT更简单、更安全、更有价值', '深信服是一家专注于企业级安全、云计算及IT基础设施的产品和服务供应商，拥有深信服智安全、信服云和深信服新IT三大业务品牌，致力于让用户的IT更简单、更安全、更有价值', '1', '2021-05-01 18:51:11.858', '2021-05-01 18:51:11.858', null);
INSERT INTO `company` VALUES ('8', '快手', 'KuaiShou', '中国北京', 'https://bjck.xilikeli.cn/aacbfb466130455e96ec3003b8d73c34.jpg', '痴迷于为客户创造价值', '快手科技有限公司于2015年3月20日在海淀分局登记成立。法定代表人银鑫。公司经营范围包括从事互联网文化活动；出版物零售；技术开发等', '1', '2021-05-01 18:52:22.259', '2021-05-01 18:52:22.259', null);
INSERT INTO `company` VALUES ('9', '作业帮', 'HomeworkHelp', '中国北京', 'https://bjck.xilikeli.cn/3b0536056bea4515a5c76ea6adbfef54.jpg', '让优质教育触手可及', '作业帮致力于为全国中小学生提供全学科的学习辅导服务，作业帮累计激活用户设备突破8亿 [1]  ，月活用户约1.7亿 [2]  ，是中小学在线教育领军品牌', '1', '2021-05-01 18:54:10.459', '2021-05-01 18:54:10.459', null);
INSERT INTO `company` VALUES ('10', '拼多多', 'Pdd', '中国上海', 'https://bjck.xilikeli.cn/c2bed6eea8e34774a1adfa284443775a.jpg', '致力于为最广大用户提供服务', '拼多多 [1]  是国内移动互联网的主流电子商务应用产品。专注于C2M拼团购物的第三方社交电商平台，成立于2015年9月，用户通过发起和朋友、家人、邻居等的拼团，可以以更低的价格，拼团购买优质商品', '1', '2021-05-01 18:56:03.429', '2021-05-01 18:56:03.429', null);
INSERT INTO `company` VALUES ('11', '猿辅导', 'ApeCounseling', '中国北京', 'https://bjck.xilikeli.cn/9736f5824e8d4f29a5083e8767760deb.jpg', '为用户打造精细化优品', '猿辅导在线教育公司的估值达到155亿美元，在全球教育科技独角兽公司中排名首位。这也是中国教育科技公司首次跻身全球教育科技独角兽第一名', '1', '2021-05-01 18:57:24.683', '2021-05-01 18:57:24.683', null);
INSERT INTO `company` VALUES ('12', '斗鱼', 'DouYu', '湖北武汉', 'https://bjck.xilikeli.cn/cd97e9246eb24f6d9d18eeac49ba628b.png', '每个人的直播平台', '斗鱼TV是一家弹幕式直播分享网站，为用户提供视频直播和赛事直播服务。 [1-2]  斗鱼TV的前身为ACFUN生放送直播，于2014年1月1日起正式更名为斗鱼TV', '1', '2021-05-01 19:02:20.713', '2021-05-01 19:02:20.713', null);
INSERT INTO `company` VALUES ('13', '虎扑', 'HuPu', '广东广州', 'https://bjck.xilikeli.cn/e373c1f9607f4d6d9f56072068ea143f.jpg', '打造认真、温暖、有趣，服务中国年轻人的直文化社区', '虎扑成立于2004年，是以篮球论坛起家，专业体育营销为根基的社区平台，创始人为程杭。截至2020年5月，虎扑用户数已超过1亿，活跃用户数达8000万，其中90%以上为男性用户', '1', '2021-05-01 19:03:15.465', '2021-05-01 19:03:15.465', null);
INSERT INTO `company` VALUES ('14', '爱奇艺', 'IQIYI', '中国北京', 'https://bjck.xilikeli.cn/09b9faf67a2c4424b9af39bd4a97bbcf.jpg', '让梦想绽放,让快乐简单', '爱奇艺 [1]  是由龚宇于2010年4月22日创立的在线视频网站 [2]  ，2011年11月26日启动“爱奇艺”品牌并推出全新标志', '1', '2021-05-01 19:04:06.589', '2021-05-01 19:04:06.589', null);
INSERT INTO `company` VALUES ('15', '奇安信', 'QianXin', '中国北京', 'https://bjck.xilikeli.cn/2f7c993816914bd2ae471fe98099816c.jpg', '提供最安全的保障', '奇安信集团，是中国最大的网络安全公司之一，专门为政府、企业，教育、金融等机构和组织提供企业级网络安全技术、产品和服务', '1', '2021-05-01 19:05:28.171', '2021-05-01 19:05:28.171', null);
INSERT INTO `company` VALUES ('16', '360', 'Qihoo', '中国北京', 'https://bjck.xilikeli.cn/ee285ddeda3c40f692d65cee5ac9d7a1.jpg', '让世界更安全更美好', '奇虎360 [1]  是（北京奇虎科技有限公司）的简称，由周鸿祎于2005年9月创立，主营360杀毒为代表的免费网络安全平台和拥有360安全大脑等业务的公司', '1', '2021-05-01 19:06:13.395', '2021-05-01 19:06:13.395', null);
INSERT INTO `company` VALUES ('17', '顺丰', 'ShunFeng', '广东深圳', 'https://bjck.xilikeli.cn/206b502ca1274501b76d73b53aa0977d.jpg', '为用户提供最快的服务', '顺丰是国内的快递物流综合服务商，总部位于深圳，经过多年发展，已初步建立为客户提供一体化综合物流解决方案的能力', '1', '2021-05-01 19:07:11.436', '2021-05-01 19:07:11.436', null);
INSERT INTO `company` VALUES ('18', '好未来', 'TAL', '中国北京', 'https://bjck.xilikeli.cn/fbd1420b42234858ae6dfa12824e4f41.png', '用科技推动教育进步', '好未来是一个以智慧教育和开放平台为主体，以素质教育和课外辅导为载体，在全球范围内服务公办教育，助力民办教育，探索未来教育新模式的科技教育公司', '0', '2021-05-01 19:07:51.721', '2021-05-01 19:07:51.721', null);
INSERT INTO `company` VALUES ('19', '钛动科技', 'TecDo', '广东广州', 'https://bjck.xilikeli.cn/c8d1a57303e54bffb03a55b6b6562948.jpg', '为商业化赋能', '钛动科技（TEC-DO）是基于大数据和商业智能的国际化企业服务公司。旗下拥有专注移动效果广告的Mobisummer业务品牌与全球大媒体代理UniAgency', '0', '2021-05-01 19:08:39.832', '2021-05-01 19:08:39.832', null);
INSERT INTO `company` VALUES ('20', '道一云', 'DO', '广东广州', 'https://bjck.xilikeli.cn/258c6beeb2e94a96beb3fd3f894e7d83.jpg', '成为受人尊重、世界一流的全球化企业', '广州市道一信息技术有限公司（Do1 Information Technology Ltd.），创立于2004年，秉承“诚信专业，共创价值”的理念，专注于移动信息化领域的软件系统开发和业务应用创新', '2', '2021-05-01 19:09:56.695', '2021-05-01 19:09:56.695', null);
INSERT INTO `company` VALUES ('21', '凡科', 'Faisco', '广东广州', 'https://bjck.xilikeli.cn/4c557cc89b65467c9cd5d5037b2b53f1.jpg', '助力于中小企业', '广州凡科互联网科技股份有限公司（简称凡科）是一家助力中小企业数字化经营升级的企业', '2', '2021-05-01 19:10:40.543', '2021-05-01 19:10:40.543', null);

-- ----------------------------
-- Table structure for favor
-- ----------------------------
DROP TABLE IF EXISTS `favor`;
CREATE TABLE `favor` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `position_id` int(11) NOT NULL COMMENT '职位id',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '更新时间',
  `delete_time` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of favor
-- ----------------------------
INSERT INTO `favor` VALUES ('10', '4', '1', '2021-05-03 01:25:22.523', '2021-05-03 01:25:22.523', null);

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `company_id` int(11) NOT NULL COMMENT '公司id',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of follow
-- ----------------------------

-- ----------------------------
-- Table structure for hr_company
-- ----------------------------
DROP TABLE IF EXISTS `hr_company`;
CREATE TABLE `hr_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hr_id` int(11) NOT NULL COMMENT 'HR id',
  `company_id` int(11) NOT NULL COMMENT '公司id',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of hr_company
-- ----------------------------
INSERT INTO `hr_company` VALUES ('8', '6', '1', '2021-04-05 23:44:40.489', '2021-04-05 23:44:40.489', null);
INSERT INTO `hr_company` VALUES ('9', '7', '2', '2021-04-16 12:41:13.414', '2021-04-16 12:41:13.414', null);

-- ----------------------------
-- Table structure for lin_file
-- ----------------------------
DROP TABLE IF EXISTS `lin_file`;
CREATE TABLE `lin_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(500) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'LOCAL' COMMENT 'LOCAL 本地，REMOTE 远程',
  `name` varchar(100) NOT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `md5` varchar(40) DEFAULT NULL COMMENT 'md5值，防止上传重复文件',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `md5_del` (`md5`,`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lin_file
-- ----------------------------
INSERT INTO `lin_file` VALUES ('31', 'https://bjck.xilikeli.cn/d193c7c0032e49ab8ccd2693f671712a.jpg', 'REMOTE', 'd193c7c0032e49ab8ccd2693f671712a.jpg', '.jpg', '412113', 'fa6da5303bb3ec756930374bb7441cb3', '2021-04-28 18:48:47.200', '2021-04-28 18:48:47.200', null);
INSERT INTO `lin_file` VALUES ('32', 'https://bjck.xilikeli.cn/4196ba1430da48048af4bb0e20de8973.jpg', 'REMOTE', '4196ba1430da48048af4bb0e20de8973.jpg', '.jpg', '4292', '08c41f4726b9ea16ef6ab58b118d5333', '2021-04-30 00:04:45.776', '2021-04-30 00:04:45.776', null);
INSERT INTO `lin_file` VALUES ('33', 'https://bjck.xilikeli.cn/61007a1aced342c9baef58d423610e39.png', 'REMOTE', '61007a1aced342c9baef58d423610e39.png', '.png', '83745', '7557e132018ff3632c7e5d64d68e49c5', '2021-05-01 01:01:10.903', '2021-05-01 01:01:10.903', null);
INSERT INTO `lin_file` VALUES ('34', 'https://bjck.xilikeli.cn/9696498b521f47d1aafe016004234aef.jpg', 'REMOTE', '9696498b521f47d1aafe016004234aef.jpg', '.jpg', '11158', '36eb1cced734253310a2520ba909ac4e', '2021-05-01 01:01:47.425', '2021-05-01 01:01:47.425', null);
INSERT INTO `lin_file` VALUES ('35', 'https://bjck.xilikeli.cn/985e4c8904c1465eb2c36b5e555944e5.jpg', 'REMOTE', '985e4c8904c1465eb2c36b5e555944e5.jpg', '.jpg', '17416', '1331a5bc146adc150d25f492fb8580ac', '2021-05-01 01:02:10.822', '2021-05-01 01:02:10.822', null);
INSERT INTO `lin_file` VALUES ('36', 'https://bjck.xilikeli.cn/37adacbf87824b8985c2bda34b92814a.jpg', 'REMOTE', '37adacbf87824b8985c2bda34b92814a.jpg', '.jpg', '11305', '10aad4dfde69f16f8a05ae0dc8c563be', '2021-05-01 01:02:41.457', '2021-05-01 01:02:41.457', null);
INSERT INTO `lin_file` VALUES ('37', 'https://bjck.xilikeli.cn/d4332bf5036d42cfbcc41354afac15c6.jpg', 'REMOTE', 'd4332bf5036d42cfbcc41354afac15c6.jpg', '.jpg', '13034', '31d318b04d8b32d23dde50e286e04ce7', '2021-05-01 01:06:21.898', '2021-05-01 01:06:21.898', null);
INSERT INTO `lin_file` VALUES ('38', 'https://bjck.xilikeli.cn/09b9faf67a2c4424b9af39bd4a97bbcf.jpg', 'REMOTE', '09b9faf67a2c4424b9af39bd4a97bbcf.jpg', '.jpg', '12219', '5e1d51bd9343403a01ed5884e09dae51', '2021-05-01 01:06:39.166', '2021-05-01 01:06:39.166', null);
INSERT INTO `lin_file` VALUES ('39', 'https://bjck.xilikeli.cn/3b0536056bea4515a5c76ea6adbfef54.jpg', 'REMOTE', '3b0536056bea4515a5c76ea6adbfef54.jpg', '.jpg', '20268', '2dceda14fb8703ca6b032d71cad79734', '2021-05-01 01:06:57.916', '2021-05-01 01:06:57.916', null);
INSERT INTO `lin_file` VALUES ('40', 'https://bjck.xilikeli.cn/be618111bca54c2799311fc3cbfb5acc.jpg', 'REMOTE', 'be618111bca54c2799311fc3cbfb5acc.jpg', '.jpg', '4142', 'c4a22c1d6435e53bc6005df4cedde276', '2021-05-01 01:07:13.412', '2021-05-01 01:07:13.412', null);
INSERT INTO `lin_file` VALUES ('41', 'https://bjck.xilikeli.cn/206b502ca1274501b76d73b53aa0977d.jpg', 'REMOTE', '206b502ca1274501b76d73b53aa0977d.jpg', '.jpg', '18130', '02470e4604fb2dd1cd8ba61cc85a5b81', '2021-05-01 01:07:29.469', '2021-05-01 01:07:29.469', null);
INSERT INTO `lin_file` VALUES ('42', 'https://bjck.xilikeli.cn/2f7c993816914bd2ae471fe98099816c.jpg', 'REMOTE', '2f7c993816914bd2ae471fe98099816c.jpg', '.jpg', '13268', '5bc9dd9a4200b111884027043cdf95f7', '2021-05-01 01:07:46.922', '2021-05-01 01:07:46.922', null);
INSERT INTO `lin_file` VALUES ('43', 'https://bjck.xilikeli.cn/fbd1420b42234858ae6dfa12824e4f41.png', 'REMOTE', 'fbd1420b42234858ae6dfa12824e4f41.png', '.png', '12691', 'e1d6bfa400986151fdfee0d11bd06f90', '2021-05-01 01:08:04.641', '2021-05-01 01:08:04.641', null);
INSERT INTO `lin_file` VALUES ('44', 'https://bjck.xilikeli.cn/c2bed6eea8e34774a1adfa284443775a.jpg', 'REMOTE', 'c2bed6eea8e34774a1adfa284443775a.jpg', '.jpg', '18293', '72ee2eb638b67760da3941dffcafdde8', '2021-05-01 01:14:07.640', '2021-05-01 01:14:07.640', null);
INSERT INTO `lin_file` VALUES ('45', 'https://bjck.xilikeli.cn/aacbfb466130455e96ec3003b8d73c34.jpg', 'REMOTE', 'aacbfb466130455e96ec3003b8d73c34.jpg', '.jpg', '5534', '69eeb68f91a706013f60fd42ac89550a', '2021-05-01 01:16:21.626', '2021-05-01 01:16:21.626', null);
INSERT INTO `lin_file` VALUES ('46', 'https://bjck.xilikeli.cn/ee285ddeda3c40f692d65cee5ac9d7a1.jpg', 'REMOTE', 'ee285ddeda3c40f692d65cee5ac9d7a1.jpg', '.jpg', '10064', '80ecdc9a3e2ea4a8ec4e716d4784982c', '2021-05-01 01:19:39.946', '2021-05-01 01:19:39.946', null);
INSERT INTO `lin_file` VALUES ('47', 'https://bjck.xilikeli.cn/cd97e9246eb24f6d9d18eeac49ba628b.png', 'REMOTE', 'cd97e9246eb24f6d9d18eeac49ba628b.png', '.png', '10991', '78fbb3a8af0407480ea9765723b6a97f', '2021-05-01 01:20:08.338', '2021-05-01 01:20:08.338', null);
INSERT INTO `lin_file` VALUES ('48', 'https://bjck.xilikeli.cn/e373c1f9607f4d6d9f56072068ea143f.jpg', 'REMOTE', 'e373c1f9607f4d6d9f56072068ea143f.jpg', '.jpg', '14062', '6b2ad19e80b4bef7e56ed1c2afc21c03', '2021-05-01 01:20:29.383', '2021-05-01 01:20:29.383', null);
INSERT INTO `lin_file` VALUES ('49', 'https://bjck.xilikeli.cn/f74a1f157cfd4baba30d398edb985bfd.jpg', 'REMOTE', 'f74a1f157cfd4baba30d398edb985bfd.jpg', '.jpg', '25002', '2bc98f57d4c1fc9e59d5dd24ddc2252e', '2021-05-01 01:20:44.460', '2021-05-01 01:20:44.460', null);
INSERT INTO `lin_file` VALUES ('50', 'https://bjck.xilikeli.cn/4c557cc89b65467c9cd5d5037b2b53f1.jpg', 'REMOTE', '4c557cc89b65467c9cd5d5037b2b53f1.jpg', '.jpg', '33745', '22f74d12491af3e9c9dff02285a1c3af', '2021-05-01 01:20:59.282', '2021-05-01 01:20:59.282', null);
INSERT INTO `lin_file` VALUES ('51', 'https://bjck.xilikeli.cn/258c6beeb2e94a96beb3fd3f894e7d83.jpg', 'REMOTE', '258c6beeb2e94a96beb3fd3f894e7d83.jpg', '.jpg', '12287', '28db5dd7f87c63a32e1072e63da0e640', '2021-05-01 01:23:14.929', '2021-05-01 01:23:14.929', null);
INSERT INTO `lin_file` VALUES ('52', 'https://bjck.xilikeli.cn/c8d1a57303e54bffb03a55b6b6562948.jpg', 'REMOTE', 'c8d1a57303e54bffb03a55b6b6562948.jpg', '.jpg', '34211', '8459e6af665e5639825725e33ebd2c51', '2021-05-01 01:23:31.556', '2021-05-01 01:23:31.556', null);
INSERT INTO `lin_file` VALUES ('53', 'https://bjck.xilikeli.cn/f072f1a5153c4307bf7679a7ea34711b.jpg', 'REMOTE', 'f072f1a5153c4307bf7679a7ea34711b.jpg', '.jpg', '6122', 'f76d4c186014edb3a125ea0c8091483c', '2021-05-01 01:26:10.579', '2021-05-01 01:26:10.579', null);
INSERT INTO `lin_file` VALUES ('54', 'https://bjck.xilikeli.cn/f90380ad9b914f99bd7dae730394355f.jpg', 'REMOTE', 'f90380ad9b914f99bd7dae730394355f.jpg', '.jpg', '6078', '900d80e54087abdf7619a12553c936bf', '2021-05-01 01:26:39.587', '2021-05-01 01:26:39.587', null);
INSERT INTO `lin_file` VALUES ('55', 'https://bjck.xilikeli.cn/d32b315f471d4d708e8ebb906b5e89f6.jpg', 'REMOTE', 'd32b315f471d4d708e8ebb906b5e89f6.jpg', '.jpg', '6826', '4d559681e064168ea5d3db0b0b5f5ea3', '2021-05-01 01:27:03.289', '2021-05-01 01:27:03.289', null);
INSERT INTO `lin_file` VALUES ('56', 'https://bjck.xilikeli.cn/ac8989aa465c43d4ba461caadbf093e3.jpg', 'REMOTE', 'ac8989aa465c43d4ba461caadbf093e3.jpg', '.jpg', '6966', '7a9ff732a519084f2877bc7668c10a87', '2021-05-01 01:27:26.751', '2021-05-01 01:27:26.751', null);
INSERT INTO `lin_file` VALUES ('57', 'https://bjck.xilikeli.cn/9df55880b6ba4dc5b63f938d35b55369.jpg', 'REMOTE', '9df55880b6ba4dc5b63f938d35b55369.jpg', '.jpg', '5425', '5e440aeb6ed2947f422462bddc206f4c', '2021-05-01 01:28:22.598', '2021-05-01 01:28:22.598', null);
INSERT INTO `lin_file` VALUES ('58', 'https://bjck.xilikeli.cn/ac202af0171f4c028298b807b2196962.jpg', 'REMOTE', 'ac202af0171f4c028298b807b2196962.jpg', '.jpg', '24342', 'b3bc06f45a36cf01de807ba30f40ac0a', '2021-05-01 01:32:42.421', '2021-05-01 01:32:42.421', null);
INSERT INTO `lin_file` VALUES ('59', 'https://bjck.xilikeli.cn/a8747f7b82c440499e3d5a6bbf8cc848.jpg', 'REMOTE', 'a8747f7b82c440499e3d5a6bbf8cc848.jpg', '.jpg', '56236', '3ab9fb96c89ace6e8163db54741c3961', '2021-05-01 01:33:54.920', '2021-05-01 01:33:54.920', null);
INSERT INTO `lin_file` VALUES ('60', 'https://bjck.xilikeli.cn/9736f5824e8d4f29a5083e8767760deb.jpg', 'REMOTE', '9736f5824e8d4f29a5083e8767760deb.jpg', '.jpg', '9589', '76c02bc203d36bfafdb131f111dda90c', '2021-05-01 19:15:02.098', '2021-05-01 19:15:02.098', null);
INSERT INTO `lin_file` VALUES ('61', 'https://bjck.xilikeli.cn/c3f0cfdd32b04bceb099eaccd821767c.jpg', 'REMOTE', 'c3f0cfdd32b04bceb099eaccd821767c.jpg', '.jpg', '6242', '278e9765cff7eb87857a7b0b21176961', '2021-05-02 15:30:35.757', '2021-05-02 15:30:35.757', null);

-- ----------------------------
-- Table structure for lin_group
-- ----------------------------
DROP TABLE IF EXISTS `lin_group`;
CREATE TABLE `lin_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL COMMENT '分组名称，例如：搬砖者',
  `info` varchar(255) DEFAULT NULL COMMENT '分组信息：例如：搬砖的人',
  `level` tinyint(2) NOT NULL DEFAULT '3' COMMENT '分组级别 1：root 2：guest 3：user  root（root、guest分组只能存在一个)',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_del` (`name`,`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lin_group
-- ----------------------------
INSERT INTO `lin_group` VALUES ('1', 'root', '超级用户组', '1', '2021-03-14 14:49:20.899', '2021-03-14 14:49:20.899', null);
INSERT INTO `lin_group` VALUES ('2', 'guest', '求职者', '4', '2021-03-14 14:49:20.952', '2021-03-31 16:51:03.178', null);
INSERT INTO `lin_group` VALUES ('3', 'hr', '招聘方', '3', '2021-03-31 15:30:04.822', '2021-03-31 15:30:04.822', null);
INSERT INTO `lin_group` VALUES ('4', 'admin', '管理员', '2', '2021-03-31 16:50:43.681', '2021-03-31 16:50:59.752', null);

-- ----------------------------
-- Table structure for lin_group_permission
-- ----------------------------
DROP TABLE IF EXISTS `lin_group_permission`;
CREATE TABLE `lin_group_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL COMMENT '分组id',
  `permission_id` int(10) unsigned NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`),
  KEY `group_id_permission_id` (`group_id`,`permission_id`) USING BTREE COMMENT '联合索引'
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lin_group_permission
-- ----------------------------
INSERT INTO `lin_group_permission` VALUES ('26', '2', '5');
INSERT INTO `lin_group_permission` VALUES ('27', '2', '6');
INSERT INTO `lin_group_permission` VALUES ('28', '2', '7');
INSERT INTO `lin_group_permission` VALUES ('17', '2', '19');
INSERT INTO `lin_group_permission` VALUES ('18', '2', '20');
INSERT INTO `lin_group_permission` VALUES ('19', '2', '22');
INSERT INTO `lin_group_permission` VALUES ('20', '2', '23');
INSERT INTO `lin_group_permission` VALUES ('21', '2', '26');
INSERT INTO `lin_group_permission` VALUES ('22', '2', '28');
INSERT INTO `lin_group_permission` VALUES ('23', '2', '29');
INSERT INTO `lin_group_permission` VALUES ('24', '2', '31');
INSERT INTO `lin_group_permission` VALUES ('25', '2', '33');
INSERT INTO `lin_group_permission` VALUES ('5', '3', '9');
INSERT INTO `lin_group_permission` VALUES ('2', '3', '11');
INSERT INTO `lin_group_permission` VALUES ('3', '3', '13');
INSERT INTO `lin_group_permission` VALUES ('4', '3', '14');
INSERT INTO `lin_group_permission` VALUES ('6', '3', '15');
INSERT INTO `lin_group_permission` VALUES ('7', '3', '16');
INSERT INTO `lin_group_permission` VALUES ('29', '3', '17');
INSERT INTO `lin_group_permission` VALUES ('8', '3', '25');
INSERT INTO `lin_group_permission` VALUES ('9', '3', '27');
INSERT INTO `lin_group_permission` VALUES ('10', '3', '30');
INSERT INTO `lin_group_permission` VALUES ('31', '3', '34');
INSERT INTO `lin_group_permission` VALUES ('30', '3', '35');
INSERT INTO `lin_group_permission` VALUES ('11', '4', '10');
INSERT INTO `lin_group_permission` VALUES ('12', '4', '17');
INSERT INTO `lin_group_permission` VALUES ('13', '4', '18');
INSERT INTO `lin_group_permission` VALUES ('14', '4', '21');
INSERT INTO `lin_group_permission` VALUES ('15', '4', '24');
INSERT INTO `lin_group_permission` VALUES ('16', '4', '32');
INSERT INTO `lin_group_permission` VALUES ('32', '4', '34');
INSERT INTO `lin_group_permission` VALUES ('33', '4', '35');

-- ----------------------------
-- Table structure for lin_log
-- ----------------------------
DROP TABLE IF EXISTS `lin_log`;
CREATE TABLE `lin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(450) DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `status_code` int(11) DEFAULT NULL,
  `method` varchar(20) DEFAULT NULL,
  `path` varchar(50) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lin_log
-- ----------------------------

-- ----------------------------
-- Table structure for lin_permission
-- ----------------------------
DROP TABLE IF EXISTS `lin_permission`;
CREATE TABLE `lin_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL COMMENT '权限名称，例如：访问首页',
  `module` varchar(50) NOT NULL COMMENT '权限所属模块，例如：人员管理',
  `mount` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0：关闭 1：开启',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lin_permission
-- ----------------------------
INSERT INTO `lin_permission` VALUES ('5', '查询简历', '简历', '1', '2021-04-16 00:35:53.728', '2021-04-16 00:35:53.728', null);
INSERT INTO `lin_permission` VALUES ('6', '创建简历', '简历', '1', '2021-04-16 00:35:53.818', '2021-04-16 00:35:53.818', null);
INSERT INTO `lin_permission` VALUES ('7', '更新简历', '简历', '1', '2021-04-16 00:35:53.915', '2021-04-16 00:35:53.915', null);
INSERT INTO `lin_permission` VALUES ('8', '查看简历详情', '简历', '0', '2021-04-16 00:35:54.021', '2021-04-16 00:35:54.021', null);
INSERT INTO `lin_permission` VALUES ('9', '下架职位', '职位', '1', '2021-04-16 01:34:30.606', '2021-04-16 01:34:30.606', null);
INSERT INTO `lin_permission` VALUES ('10', '职位审核', '职位', '0', '2021-04-16 01:34:30.746', '2021-04-16 01:34:30.746', null);
INSERT INTO `lin_permission` VALUES ('11', '更新职位', '职位', '1', '2021-04-16 01:34:30.790', '2021-04-16 01:34:30.790', null);
INSERT INTO `lin_permission` VALUES ('12', '查看职位详细信息', '职位', '0', '2021-04-16 01:34:30.843', '2021-04-16 01:34:30.843', null);
INSERT INTO `lin_permission` VALUES ('13', '查看已发布的职位', '职位', '1', '2021-04-16 01:34:30.888', '2021-04-16 01:34:30.888', null);
INSERT INTO `lin_permission` VALUES ('14', '发布职位', '职位', '1', '2021-04-16 01:34:30.977', '2021-04-16 01:34:30.977', null);
INSERT INTO `lin_permission` VALUES ('15', '更新企业信息', '公司', '1', '2021-04-16 01:40:34.583', '2021-04-16 01:40:34.583', null);
INSERT INTO `lin_permission` VALUES ('16', '企业认证', '公司', '1', '2021-04-16 01:40:34.740', '2021-04-16 01:40:34.740', null);
INSERT INTO `lin_permission` VALUES ('17', '企业审核', '公司', '0', '2021-04-16 01:40:34.825', '2021-04-16 01:40:34.825', null);
INSERT INTO `lin_permission` VALUES ('18', '更新分类', '职位分类', '1', '2021-04-16 01:48:59.868', '2021-04-16 01:48:59.868', null);
INSERT INTO `lin_permission` VALUES ('19', '撤销申请', '申请', '1', '2021-04-16 01:49:00.033', '2021-04-16 01:49:00.033', null);
INSERT INTO `lin_permission` VALUES ('20', '查看我的收藏', '收藏职位', '1', '2021-04-16 01:49:00.072', '2021-04-16 01:49:00.072', null);
INSERT INTO `lin_permission` VALUES ('21', '删除分类', '职位分类', '1', '2021-04-16 01:49:00.126', '2021-04-16 01:49:00.126', null);
INSERT INTO `lin_permission` VALUES ('22', '添加收藏', '收藏职位', '1', '2021-04-16 01:49:00.175', '2021-04-16 01:49:00.175', null);
INSERT INTO `lin_permission` VALUES ('23', '取消关注', '关注公司', '1', '2021-04-16 01:49:00.240', '2021-04-16 01:49:00.240', null);
INSERT INTO `lin_permission` VALUES ('24', '查看分类列表', '职位分类', '1', '2021-04-16 01:49:00.314', '2021-04-16 01:49:00.314', null);
INSERT INTO `lin_permission` VALUES ('25', '申请审核', '申请', '1', '2021-04-16 01:49:00.371', '2021-04-16 01:49:00.371', null);
INSERT INTO `lin_permission` VALUES ('26', '新增关注', '关注公司', '1', '2021-04-16 01:49:00.424', '2021-04-16 01:49:00.424', null);
INSERT INTO `lin_permission` VALUES ('27', '简历排序', '申请', '1', '2021-04-16 01:49:00.489', '2021-04-16 01:49:00.489', null);
INSERT INTO `lin_permission` VALUES ('28', '查看我的关注', '关注公司', '1', '2021-04-16 01:49:00.529', '2021-04-16 01:49:00.529', null);
INSERT INTO `lin_permission` VALUES ('29', '我的投递箱', '申请', '1', '2021-04-16 01:49:00.592', '2021-04-16 01:49:00.592', null);
INSERT INTO `lin_permission` VALUES ('30', '简历管理', '申请', '1', '2021-04-16 01:49:00.656', '2021-04-16 01:49:00.656', null);
INSERT INTO `lin_permission` VALUES ('31', '取消收藏', '收藏职位', '1', '2021-04-16 01:49:00.703', '2021-04-16 01:49:00.703', null);
INSERT INTO `lin_permission` VALUES ('32', '新增分类', '职位分类', '1', '2021-04-16 01:49:00.740', '2021-04-16 01:49:00.740', null);
INSERT INTO `lin_permission` VALUES ('33', '投递简历', '申请', '1', '2021-04-16 01:49:00.849', '2021-04-16 01:49:00.849', null);
INSERT INTO `lin_permission` VALUES ('34', '更新职位状态', '职位', '1', '2021-04-16 02:50:43.919', '2021-04-16 02:50:43.919', null);
INSERT INTO `lin_permission` VALUES ('35', '更新企业状态', '公司', '1', '2021-04-16 02:50:44.012', '2021-04-16 02:50:44.012', null);

-- ----------------------------
-- Table structure for lin_user
-- ----------------------------
DROP TABLE IF EXISTS `lin_user`;
CREATE TABLE `lin_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(24) NOT NULL COMMENT '用户名，唯一',
  `nickname` varchar(24) DEFAULT NULL COMMENT '用户昵称',
  `avatar` varchar(500) DEFAULT NULL COMMENT '头像url',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_del` (`username`,`delete_time`),
  UNIQUE KEY `email_del` (`email`,`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lin_user
-- ----------------------------
INSERT INTO `lin_user` VALUES ('1', 'root', 'root', 'https://bjck.xilikeli.cn/4196ba1430da48048af4bb0e20de8973.jpg', '2416871211@qq.com', '2021-03-14 14:49:20.790', '2021-04-14 18:25:02.540', null);
INSERT INTO `lin_user` VALUES ('4', 'user', 'user', 'https://bjck.xilikeli.cn/d32b315f471d4d708e8ebb906b5e89f6.jpg', 'user@qq.com', '2021-04-16 02:02:05.265', '2021-04-16 02:03:53.170', null);
INSERT INTO `lin_user` VALUES ('5', 'user1', 'user1', 'https://bjck.xilikeli.cn/ac8989aa465c43d4ba461caadbf093e3.jpg', 'user1@qq.com', '2021-04-16 02:02:33.259', '2021-04-16 02:03:55.398', null);
INSERT INTO `lin_user` VALUES ('6', 'hr', 'hr', 'https://bjck.xilikeli.cn/f072f1a5153c4307bf7679a7ea34711b.jpg', 'hr@qq.com', '2021-04-16 02:02:47.755', '2021-04-16 02:03:57.793', null);
INSERT INTO `lin_user` VALUES ('7', 'hr1', 'hr1', 'https://bjck.xilikeli.cn/f90380ad9b914f99bd7dae730394355f.jpg', 'hr1@qq.com', '2021-04-16 02:03:09.764', '2021-04-16 02:04:00.065', null);
INSERT INTO `lin_user` VALUES ('8', 'admin', 'admin', 'https://bjck.xilikeli.cn/9df55880b6ba4dc5b63f938d35b55369.jpg', 'admin@qq.com', '2021-04-16 02:03:26.948', '2021-04-16 02:04:03.016', null);
INSERT INTO `lin_user` VALUES ('9', 'user2', 'user2', 'https://bjck.xilikeli.cn/c3f0cfdd32b04bceb099eaccd821767c.jpg', 'user2@qq.com', '2021-05-02 15:28:53.422', '2021-05-02 15:30:00.365', null);

-- ----------------------------
-- Table structure for lin_user_group
-- ----------------------------
DROP TABLE IF EXISTS `lin_user_group`;
CREATE TABLE `lin_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `group_id` int(10) unsigned NOT NULL COMMENT '分组id',
  PRIMARY KEY (`id`),
  KEY `user_id_group_id` (`user_id`,`group_id`) USING BTREE COMMENT '联合索引'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lin_user_group
-- ----------------------------
INSERT INTO `lin_user_group` VALUES ('1', '1', '1');
INSERT INTO `lin_user_group` VALUES ('2', '2', '2');
INSERT INTO `lin_user_group` VALUES ('3', '3', '3');
INSERT INTO `lin_user_group` VALUES ('4', '4', '2');
INSERT INTO `lin_user_group` VALUES ('5', '5', '2');
INSERT INTO `lin_user_group` VALUES ('6', '6', '3');
INSERT INTO `lin_user_group` VALUES ('7', '7', '3');
INSERT INTO `lin_user_group` VALUES ('8', '8', '4');
INSERT INTO `lin_user_group` VALUES ('9', '9', '2');
INSERT INTO `lin_user_group` VALUES ('11', '9', '2');
INSERT INTO `lin_user_group` VALUES ('10', '10', '2');
INSERT INTO `lin_user_group` VALUES ('12', '10', '2');
INSERT INTO `lin_user_group` VALUES ('13', '11', '2');
INSERT INTO `lin_user_group` VALUES ('14', '12', '2');

-- ----------------------------
-- Table structure for lin_user_identity
-- ----------------------------
DROP TABLE IF EXISTS `lin_user_identity`;
CREATE TABLE `lin_user_identity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `identity_type` varchar(100) NOT NULL,
  `identifier` varchar(100) DEFAULT NULL,
  `credential` varchar(100) DEFAULT NULL,
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lin_user_identity
-- ----------------------------
INSERT INTO `lin_user_identity` VALUES ('1', '1', 'USERNAME_PASSWORD', 'root', 'pbkdf2sha256:64000:18:24:n:yUnDokcNRbwILZllmUOItIyo9MnI00QW:6ZcPf+sfzyoygOU8h/GSoirF', '2021-03-14 14:49:20.842', '2021-03-14 14:49:20.842', null);
INSERT INTO `lin_user_identity` VALUES ('4', '4', 'USERNAME_PASSWORD', 'user', 'pbkdf2sha256:64000:18:24:n:LM9r8Qohq6Cr9ZE8ylO1vGi8dHXvtx1M:l+dKkEY/iYe2Uj9T1o/drG7n', '2021-04-16 02:02:05.498', '2021-04-16 02:02:05.498', null);
INSERT INTO `lin_user_identity` VALUES ('5', '5', 'USERNAME_PASSWORD', 'user1', 'pbkdf2sha256:64000:18:24:n:itdSrGVHL8V5NNcbe4SuJokpev5zWe3r:tLVd6/oJFjokN9gfRQVS6hs4', '2021-04-16 02:02:33.392', '2021-04-16 02:02:33.392', null);
INSERT INTO `lin_user_identity` VALUES ('6', '6', 'USERNAME_PASSWORD', 'hr', 'pbkdf2sha256:64000:18:24:n:Nmgyvn43dsxnwkvoLS4KToSPOy1VatEv:5nVP0vb3pzuo5eMi2cLKujyC', '2021-04-16 02:02:47.876', '2021-04-16 02:02:47.876', null);
INSERT INTO `lin_user_identity` VALUES ('7', '7', 'USERNAME_PASSWORD', 'hr1', 'pbkdf2sha256:64000:18:24:n:DDjeVDVJnlJ8eiQsTukrAwRerugVj3UE:RloPJhjQ9OOCGRBiD80cHOGW', '2021-04-16 02:03:09.896', '2021-04-16 02:03:09.896', null);
INSERT INTO `lin_user_identity` VALUES ('8', '8', 'USERNAME_PASSWORD', 'admin', 'pbkdf2sha256:64000:18:24:n:Wx1cy1IJb7HpPY21BWpkaIwqIOphaBZF:gjRhsWs3a0VD/nAOgXDJbSia', '2021-04-16 02:03:27.065', '2021-04-16 02:03:27.065', null);
INSERT INTO `lin_user_identity` VALUES ('11', '9', 'USERNAME_PASSWORD', 'user2', 'pbkdf2sha256:64000:18:24:n:lpJSHOqQVBrcsWRri8THNW1DH769ITfe:RjG6xiH7OEbzAAhZOJWDsoXw', '2021-05-02 15:28:53.553', '2021-05-02 15:28:53.553', null);

-- ----------------------------
-- Table structure for notify
-- ----------------------------
DROP TABLE IF EXISTS `notify`;
CREATE TABLE `notify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext COMMENT '消息内容',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `is_read` varchar(25) DEFAULT 'false' COMMENT '消息是否已读，默认false代表未读',
  `time` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) COMMENT '通知到达的时间',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of notify
-- ----------------------------
INSERT INTO `notify` VALUES ('15', '阿里巴巴下架了职位——Java工程师，快去看看吧！', 'user1', 'true', '2021-04-17 21:58:02.907', '2021-04-17 21:58:02.907', '2021-04-17 21:58:02.907', null);
INSERT INTO `notify` VALUES ('16', '阿里巴巴下架了职位——Java工程师，快去看看吧！', 'user', 'true', '2021-04-17 21:58:02.949', '2021-04-17 21:58:02.949', '2021-04-17 21:58:02.949', null);
INSERT INTO `notify` VALUES ('17', '阿里巴巴下架了职位——C++开发工程师，快去看看吧！', 'user1', 'true', '2021-04-17 21:58:08.626', '2021-04-17 21:58:08.626', '2021-04-17 21:58:08.626', null);
INSERT INTO `notify` VALUES ('18', '阿里巴巴下架了职位——C++开发工程师，快去看看吧！', 'user', 'true', '2021-04-17 21:58:08.654', '2021-04-17 21:58:08.654', '2021-04-17 21:58:08.654', null);
INSERT INTO `notify` VALUES ('19', '阿里巴巴发布了新职位——运维开发工程师，快去看看吧！', 'user1', 'true', '2021-04-17 22:01:12.957', '2021-04-17 22:01:12.957', '2021-04-17 22:01:12.957', null);
INSERT INTO `notify` VALUES ('20', '阿里巴巴发布了新职位——运维开发工程师，快去看看吧！', 'user', 'true', '2021-04-17 22:01:12.986', '2021-04-17 22:01:12.986', '2021-04-17 22:01:12.986', null);
INSERT INTO `notify` VALUES ('21', '阿里巴巴下架了职位——运维开发工程师，快去看看吧！', 'user', 'true', '2021-04-17 22:31:15.387', '2021-04-17 22:31:15.387', '2021-04-17 22:31:15.387', null);
INSERT INTO `notify` VALUES ('22', '阿里巴巴下架了职位——Java工程师，快去看看吧！', 'user', 'true', '2021-04-23 12:26:02.733', '2021-04-23 12:26:02.733', '2021-04-23 12:26:02.733', null);
INSERT INTO `notify` VALUES ('23', '阿里巴巴下架了职位——C++开发工程师，快去看看吧！', 'user', 'true', '2021-04-23 18:05:49.288', '2021-04-23 18:05:49.288', '2021-04-23 18:05:49.288', null);
INSERT INTO `notify` VALUES ('24', '阿里巴巴下架了职位——数据挖掘工程师，快去看看吧！', 'user', 'true', '2021-04-30 00:06:07.577', '2021-04-30 00:06:07.577', '2021-04-30 00:06:07.577', null);
INSERT INTO `notify` VALUES ('25', '阿里巴巴下架了职位——PHP工程师，快去看看吧！', 'user', 'true', '2021-05-03 00:54:08.049', '2021-05-03 00:54:08.049', '2021-05-03 00:54:08.049', null);
INSERT INTO `notify` VALUES ('26', '阿里巴巴发布了新职位——1，快去看看吧！', 'user', 'true', '2021-05-03 01:03:14.681', '2021-05-03 01:03:14.681', '2021-05-03 01:03:14.681', null);
INSERT INTO `notify` VALUES ('27', '阿里巴巴下架了职位——C++工程师，快去看看吧！', 'user', 'true', '2021-05-03 01:27:33.511', '2021-05-03 01:27:33.511', '2021-05-03 01:27:33.511', null);

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `title` varchar(50) DEFAULT NULL COMMENT '职位名称',
  `requirement` longtext COMMENT '职位要求',
  `quantity` int(11) DEFAULT NULL COMMENT '招聘人数',
  `city` varchar(50) DEFAULT NULL COMMENT '工作地点',
  `salary_up` int(11) DEFAULT NULL COMMENT '最高薪资',
  `salary_down` int(11) DEFAULT NULL COMMENT '最低薪资',
  `release_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) COMMENT '发布时间',
  `state` int(11) DEFAULT '0' COMMENT '职位状态',
  `hits` int(11) DEFAULT '0' COMMENT '职位浏览量',
  `category_id` int(11) NOT NULL COMMENT '职位分类id',
  `hr_id` int(11) NOT NULL COMMENT 'HR id',
  `company_id` int(11) NOT NULL COMMENT '公司id',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '更新时间',
  `delete_time` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('1', 'Java工程师', '熟练使用RPC框架，具备相关的分布式开发经验', '3', '北京市', '12000', '7000', '2021-04-01 00:17:19.000', '1', '268', '1', '6', '1', '2021-05-01 18:12:13.409', '2021-05-01 18:12:13.409', null);
INSERT INTO `position` VALUES ('2', 'Java工程师', '接收应届实习生，实习期满应聘上岗接收应届实习生，实习期满应聘上岗收应届实习生，实习期满应聘上岗', '5', '上海市', '16000', '11000', '2021-04-01 16:17:31.000', '1', '20', '1', '6', '1', '2021-05-01 18:12:13.409', '2021-05-01 18:12:13.409', null);
INSERT INTO `position` VALUES ('3', 'Java工程师', '有扎实的java基础，熟悉分布式、缓存、异步消息等原理和应用', '15', '天津市', '13000', '10000', '2021-04-03 00:17:35.000', '1', '171', '1', '7', '2', '2021-05-01 18:12:13.409', '2021-05-01 18:12:13.409', null);
INSERT INTO `position` VALUES ('4', 'Java工程师', 'JAVA WEB方向2年+经验', '2', '南京市', '16000', '12000', '2021-04-04 00:17:40.000', '1', '181', '1', '7', '2', '2021-05-01 18:12:13.409', '2021-05-01 18:12:13.409', null);
INSERT INTO `position` VALUES ('5', 'C++工程师', '可接收计算机相关专业应届生，表现优秀者加薪转正', '30', '南京市', '8000', '5000', '2021-04-05 00:17:44.000', '1', '10', '2', '7', '2', '2021-05-01 18:12:13.409', '2021-05-01 18:12:13.409', null);
INSERT INTO `position` VALUES ('6', 'C++工程师', '3-5年工作经验，计算机相关专业毕业', '1', '上海市', '16000', '8000', '2021-04-05 08:17:52.000', '1', '127', '2', '6', '1', '2021-05-01 18:12:13.409', '2021-05-01 18:12:13.409', '2021-05-03 01:27:33.000');
INSERT INTO `position` VALUES ('7', 'PHP工程师', '一年以上PHP开发经验 （项目经验丰富的，也可以升级为高级开发工程师）', '10', '上海市', '11000', '8000', '2021-04-05 16:17:58.000', '1', '236', '9', '6', '1', '2021-05-01 18:12:13.409', '2021-05-01 18:12:13.409', '2021-05-03 00:54:07.000');
INSERT INTO `position` VALUES ('8', 'PHP工程师', '熟悉LNMP/WNMP开发环境 , 熟练使用Yaf, Yii, ThinkPHP等一种或多种框架', '5', '上海市', '12000', '7000', '2021-04-08 00:18:06.000', '1', '299', '9', '7', '2', '2021-05-01 18:12:13.409', '2021-05-01 18:12:13.409', null);
INSERT INTO `position` VALUES ('9', '.NET工程师', '熟悉WinForm/WPF窗体开发并有实际项目经验', '2', '北京市', '13000', '11000', '2021-03-15 00:18:11.000', '1', '89', '11', '7', '2', '2021-05-01 18:12:13.409', '2021-05-01 18:12:13.409', null);
INSERT INTO `position` VALUES ('10', 'Python数据分析', '熟练使用Linux，可以快速上手编写shell、powershell、cmd等操作系统脚本', '2', '北京市', '23000', '18000', '2021-03-16 00:18:21.000', '1', '100', '13', '7', '1', '2021-05-01 18:12:13.409', '2021-05-01 18:12:13.409', null);
INSERT INTO `position` VALUES ('11', 'Python开发', '4年以上互联网产品后台研发经验，2年以上后台构架经验', '2', '北京市', '22000', '18000', '2021-03-18 00:18:27.000', '1', '109', '13', '6', '1', '2021-05-01 18:12:13.409', '2021-05-01 18:12:13.409', null);
INSERT INTO `position` VALUES ('12', 'Python开发', '精通Python，2年或以上Python项目经验', '3', '天津市', '16000', '14000', '2021-03-19 00:18:34.000', '1', '178', '13', '6', '1', '2021-05-01 18:12:13.409', '2021-05-01 18:12:13.409', null);
INSERT INTO `position` VALUES ('13', '数据挖掘工程师', '熟悉 Linux平台上的编程环境，精通Java开发，精通 Python/Shell等脚本语言', '12', '天津市', '22000', '15000', '2021-03-20 00:18:40.000', '1', '202', '5', '6', '1', '2021-05-01 18:12:13.409', '2021-05-01 18:12:13.409', null);
INSERT INTO `position` VALUES ('14', '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', '2', '北京市', '32000', '28000', '2021-03-21 00:18:47.000', '0', '212', '5', '6', '1', '2021-05-01 18:12:13.409', '2021-05-01 18:12:13.409', null);
INSERT INTO `position` VALUES ('15', '数据挖掘工程师', '精通Python，熟悉PHP/GO/Java/C++/C等语言中的一种或几种', '2', '杭州市', '26000', '14000', '2021-03-22 00:18:54.000', '0', '319', '5', '7', '2', '2021-05-01 18:12:13.409', '2021-05-01 18:12:13.409', null);
INSERT INTO `position` VALUES ('16', 'Java工程师', '熟悉Spring、Freemark、Struts、Hibernate 等开源框架', '13', '杭州市', '18000', '15000', '2021-02-01 00:19:00.000', '0', '308', '1', '7', '2', '2021-05-01 18:12:13.409', '2021-05-01 18:12:13.409', null);
INSERT INTO `position` VALUES ('17', 'Java后端开发', '熟练使用Mybatis，SpringMVC，SpringCloud等框架', '5', '杭州市', '21000', '18000', '2021-02-03 00:19:06.000', '2', '23', '1', '6', '1', '2021-05-01 18:12:13.409', '2021-05-01 18:12:13.409', null);
INSERT INTO `position` VALUES ('18', 'C++后端开发', '熟练linux系统操作，熟练gcc,gdb,vim, eclipse等开发工具', '5', '北京市', '12000', '9000', '2021-02-17 00:19:12.000', '2', '33', '2', '6', '1', '2021-05-01 18:12:13.409', '2021-05-01 18:12:13.409', null);

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ability` longtext COMMENT '专业技能',
  `work_experience` longtext COMMENT '工作经历',
  `project_experience` longtext COMMENT '项目经历',
  `education_experience` longtext COMMENT '教育经历',
  `personal_summary` longtext COMMENT '个人总结',
  `grade` int(11) DEFAULT NULL COMMENT '简历评分',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '更新时间',
  `delete_time` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resume
-- ----------------------------
INSERT INTO `resume` VALUES ('1', '熟悉Java编程，掌握常用数据结构与算法，对计算机网络和操作系统有所了解', '广州钛动科技有限公司、深信服科技股份有限公司', '购物商城系统、个人博客系统', '毕业于仲恺农业工程学院计算机科学与技术专业', '善于沟通，喜欢通过博客来总结学过的知识点', '100', '4', '2021-05-01 18:28:11.929', '2021-05-01 18:28:11.929', null);
INSERT INTO `resume` VALUES ('2', '熟悉C++编程，了解数据结构和算法', '', null, '毕业于北京大学计算机科学与技术专业', '热爱生活、热爱运动、热爱编程', '60', '5', '2021-05-02 15:21:50.560', '2021-05-02 15:21:50.560', null);
