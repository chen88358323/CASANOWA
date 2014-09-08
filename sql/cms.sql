/*
MySQL Data Transfer
Source Host: 192.168.0.22
Source Database: cms
Target Host: 192.168.0.22
Target Database: cms
Date: 2014-8-23 16:45:35
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
CREATE TABLE `admin` (
  `adminId` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `email` varchar(45) DEFAULT NULL COMMENT '邮件地址',
  `name` varchar(50) DEFAULT NULL COMMENT '管理员名称',
  `password` varchar(32) DEFAULT NULL COMMENT 'MD5(密码+email) ',
  `status` varchar(20) DEFAULT NULL COMMENT '状态:init(初始化), normal(正常),freeze(冻结)',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`adminId`),
  UNIQUE KEY `idx_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Table structure for article
-- ----------------------------
CREATE TABLE `article` (
  `articleId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文件ID',
  `firstFolderId` bigint(20) NOT NULL DEFAULT '1' COMMENT '一级目录Id',
  `secondFolderId` bigint(20) NOT NULL DEFAULT '0' COMMENT '二级目录Id',
  `thirdFolderId` bigint(20) NOT NULL DEFAULT '0' COMMENT '三级目录Id',
  `fourthFolderId` bigint(20) NOT NULL DEFAULT '0' COMMENT '四级目录Id',
  `adminId` bigint(20) DEFAULT '0' COMMENT '管理员ID',
  `name` varchar(200) DEFAULT '' COMMENT '文件名称',
  `title` varchar(200) DEFAULT '' COMMENT '标题',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '价格，报价',
  `realPrice` decimal(10,2) DEFAULT '0.00' COMMENT '实际价格',
  `copyCount` int(11) DEFAULT '0' COMMENT '文件被copy的次数，相当于是商品的库存',
  `content` text COMMENT '文件内容',
  `description` text COMMENT '文件的描述',
  `viewCount` int(11) DEFAULT '0' COMMENT '浏览数',
  `commentCount` int(11) DEFAULT '0' COMMENT '评论数',
  `owner` varchar(20) DEFAULT 'app' COMMENT ' 创建方式  （system）系统创建 ，（app）应用创建\n		\n',
  `type` varchar(20) DEFAULT 'article' COMMENT '文件类型：0 文章 1 照片 2 下载 3 商品',
  `status` varchar(20) DEFAULT 'init' COMMENT '状态：0 隐藏 1 显示',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `expireTime` datetime DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`articleId`,`thirdFolderId`,`fourthFolderId`,`secondFolderId`),
  KEY `idx_folder` (`status`,`firstFolderId`,`secondFolderId`,`thirdFolderId`,`fourthFolderId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='文件';

-- ----------------------------
-- Table structure for attachment
-- ----------------------------
CREATE TABLE `attachment` (
  `attachmentId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '附件Id',
  `kindId` bigint(20) DEFAULT '0' COMMENT '种类Id',
  `name` varchar(200) DEFAULT NULL COMMENT '名字',
  `path` varchar(200) DEFAULT NULL COMMENT '附件路径',
  `description` varchar(500) DEFAULT NULL COMMENT '附件描述',
  `size` int(11) DEFAULT NULL COMMENT '附件大小',
  `type` varchar(45) DEFAULT NULL COMMENT '附件类型   相册（photo）  文件（ file）',
  `link` varchar(500) DEFAULT NULL COMMENT '链接',
  `kind` varchar(20) DEFAULT NULL COMMENT '种类 （folder）目录, （article）文章',
  `status` varchar(45) DEFAULT NULL COMMENT '状态  隐藏是嵌入文章的（hidden）,没有嵌入文章的（display）',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`attachmentId`),
  KEY `idx_kind` (`kind`,`kindId`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=ucs2;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
CREATE TABLE `comment` (
  `commentId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `userId` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `fatherId` bigint(20) DEFAULT NULL COMMENT '父评论ID',
  `kindId` bigint(20) DEFAULT NULL COMMENT '种类Id',
  `kind` varchar(45) DEFAULT NULL COMMENT '评论类型   隐藏 （article） 显示（folder）\n		',
  `name` varchar(45) DEFAULT NULL COMMENT '评论者',
  `email` varchar(45) DEFAULT NULL COMMENT '评论者邮件地址',
  `url` varchar(200) DEFAULT NULL COMMENT '评论者网址',
  `phone` varchar(45) DEFAULT NULL COMMENT '评论者电话',
  `content` text COMMENT '内容',
  `ip` varchar(45) DEFAULT NULL COMMENT 'Ip',
  `status` varchar(20) DEFAULT NULL COMMENT '状态       隐藏 hidden 显示 display 垃圾trash',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`commentId`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='评论';

-- ----------------------------
-- Table structure for config
-- ----------------------------
CREATE TABLE `config` (
  `key` varchar(45) NOT NULL COMMENT 'Key',
  `value` varchar(45) DEFAULT NULL COMMENT '值',
  `description` text COMMENT '描述',
  `createTime` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站配置';

-- ----------------------------
-- Table structure for folder
-- ----------------------------
CREATE TABLE `folder` (
  `folderId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '目录ID',
  `fatherId` bigint(20) NOT NULL DEFAULT '0' COMMENT '父亲Id，用于构建目录树',
  `ename` varchar(45) NOT NULL COMMENT '英文名',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '中文名',
  `path` varchar(200) NOT NULL DEFAULT '' COMMENT '路径',
  `content` text COMMENT '内容',
  `level` tinyint(4) DEFAULT '1' COMMENT '层级',
  `sort` tinyint(4) DEFAULT '0' COMMENT '排序',
  `count` int(11) DEFAULT '0' COMMENT '文件数',
  `rank` varchar(20) DEFAULT 'everyone' COMMENT '等级  任何人 everyone 登录用户 login,vip用户 vip 管理员admin',
  `type` varchar(45) DEFAULT 'folder' COMMENT '种类  页面page  列表list  目录folder  所有all',
  `status` varchar(20) DEFAULT 'hidden' COMMENT '状态：0 隐藏 1 现实',
  `owner` varchar(45) DEFAULT 'app' COMMENT '创建方式   系统创建  system ,  应用创建 app',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `idx_ename` (`ename`),
  KEY `idx_status` (`fatherId`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='目录';

-- ----------------------------
-- Table structure for user
-- ----------------------------
CREATE TABLE `user` (
  `userId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `openId` bigint(20) DEFAULT NULL COMMENT '公共用户ID，只有是师说，QQ，微博等其它网站登录时才有。',
  `type` varchar(20) DEFAULT NULL COMMENT '帐号类型：0 本站 1 师说 2 QQ 3 微博',
  `name` varchar(45) DEFAULT NULL COMMENT '用户名',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'cmstest@shishuo.com', 'cmstest111', '4a3981e0b096eb5a273f07f2b82b7eab', 'init', '2014-02-17 10:59:07');
INSERT INTO `admin` VALUES ('2', 'chenyu@qq.com', 'chenyu123', 'chenyu123', 'init', '2014-02-28 13:30:32');
INSERT INTO `admin` VALUES ('3', '111111@qq.com', 'chenyu', '96e79218965eb72c92a549dd5a330112', 'init', '2014-02-28 13:33:42');
INSERT INTO `admin` VALUES ('4', 'chengong@qq.com', 'chenyu', '191868dcbc99c8c123740010f6f67d0e', 'init', '2014-02-28 14:27:42');
INSERT INTO `article` VALUES ('1', '3', '5', '0', '0', '0', '美丽', '', '0.00', '0.00', '0', '<p>美丽<br/></p>', '', '0', '0', 'app', 'article', 'display', '2014-02-28 11:28:27', '2014-02-28 11:29:14', '2014-02-28 11:28:27');
INSERT INTO `article` VALUES ('2', '1', '0', '0', '0', '0', '', '', '0.00', '0.00', '0', '', '', '0', '0', 'app', 'article', 'init', '2014-02-28 13:30:03', '2014-02-28 13:30:03', '2014-02-28 13:30:03');
INSERT INTO `article` VALUES ('3', '3', '7', '0', '0', '0', '', '', '0.00', '0.00', '0', '', '', '0', '0', 'app', 'article', 'init', '2014-02-28 13:42:17', '2014-02-28 13:42:17', '2014-02-28 13:42:17');
INSERT INTO `article` VALUES ('4', '3', '7', '0', '0', '0', 'Java', '', '0.00', '0.00', '0', 'Java 是一门很容易学的计算机语言。<br/><p><br/></p>', '', '0', '0', 'app', 'article', 'display', '2014-02-28 13:57:04', '2014-02-28 13:57:21', '2014-02-28 13:57:04');
INSERT INTO `article` VALUES ('5', '1', '0', '0', '0', '0', '', '', '0.00', '0.00', '0', '', '', '0', '0', 'app', 'article', 'init', '2014-02-28 14:17:37', '2014-02-28 14:17:37', '2014-02-28 14:17:37');
INSERT INTO `article` VALUES ('6', '12', '13', '0', '0', '0', '这是一篇新闻', '', '0.00', '0.00', '0', '<p>这是一篇新闻<br/></p>', '', '0', '0', 'app', 'article', 'display', '2014-02-28 17:03:15', '2014-02-28 17:03:30', '2014-02-28 17:03:15');
INSERT INTO `article` VALUES ('7', '1', '0', '0', '0', '0', '', '', '0.00', '0.00', '0', '', '', '0', '0', 'app', 'article', 'init', '2014-07-30 23:03:04', '2014-07-30 23:03:04', '2014-07-30 23:03:04');
INSERT INTO `article` VALUES ('8', '1', '0', '0', '0', '0', '', '', '0.00', '0.00', '0', '', '', '0', '0', 'app', 'article', 'init', '2014-07-31 23:36:20', '2014-07-31 23:36:20', '2014-07-31 23:36:20');
INSERT INTO `article` VALUES ('9', '2', '0', '0', '0', '0', 'cctest', '', '0.00', '0.00', '0', '<p>cctest</p>', '<p>ffff</p>', '0', '0', 'app', 'article', 'display', '2014-07-31 23:37:00', '2014-07-31 23:37:27', '2014-07-31 23:37:00');
INSERT INTO `attachment` VALUES ('4', '2', 'QQ图片20140213105017.jpg', '/upload/2014/02/13/1392260770067.jpg', '', '61295', 'photo', 'javascript:void(0);', 'article', 'display', '2014-02-13 11:06:10');
INSERT INTO `attachment` VALUES ('5', '2', 'QQ图片20140213110522.jpg', '/upload/2014/02/13/1392260781991.jpg', '', '46566', 'photo', 'javascript:void(0);', 'article', 'display', '2014-02-13 11:06:22');
INSERT INTO `attachment` VALUES ('6', '2', 'QQ图片20140213104934.jpg', '/upload/2014/02/13/1392260792329.jpg', '', '66696', 'photo', 'javascript:void(0);', 'article', 'display', '2014-02-13 11:06:32');
INSERT INTO `attachment` VALUES ('7', '1', '145548_94d8.jpg', 'upload/2014/02/28/1393559430495.jpg', '', '13647', 'photo', 'javascript:void(0);', 'article', 'display', '2014-02-28 11:50:30');
INSERT INTO `attachment` VALUES ('8', '9', '2014_02_13_44b6a313275f4e08b52d9fcb9db531de.jpg', 'upload/2014/02/28/1393568904989.jpg', '', '4565', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-02-28 14:28:25');
INSERT INTO `attachment` VALUES ('10', '9', '杨海波 - 师说.png', 'upload/2014/02/28/1393568983646.png', '', '196227', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-02-28 14:29:44');
INSERT INTO `attachment` VALUES ('11', '9', '2014_02_13_44b6a313275f4e08b52d9fcb9db531de.jpg', 'upload/2014/02/28/1393569295965.jpg', '', '4565', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-02-28 14:34:56');
INSERT INTO `attachment` VALUES ('12', '9', 'course.jpg', 'upload/2014/02/28/1393569296024.jpg', '', '54449', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-02-28 14:34:56');
INSERT INTO `attachment` VALUES ('13', '9', '2014_02_13_44b6a313275f4e08b52d9fcb9db531de.jpg', 'upload/2014/02/28/1393569688470.jpg', '', '4565', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-02-28 14:41:28');
INSERT INTO `attachment` VALUES ('14', '9', 'course.jpg', 'upload/2014/02/28/1393569688509.jpg', '', '54449', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-02-28 14:41:29');
INSERT INTO `attachment` VALUES ('15', '9', '145548_94d8.jpg', 'upload/2014/02/28/1393569688586.jpg', '', '13647', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-02-28 14:41:29');
INSERT INTO `attachment` VALUES ('16', '9', '杨海波 - 师说.png', 'upload/2014/02/28/1393569688617.png', '', '196227', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-02-28 14:41:29');
INSERT INTO `attachment` VALUES ('17', '9', '1111-1.png', 'upload/2014/02/28/1393569688700.png', '', '423433', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-02-28 14:41:29');
INSERT INTO `attachment` VALUES ('18', '9', 'swdjz1.jpg', 'upload/2014/02/28/1393569688737.jpg', '', '947707', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-02-28 14:41:29');
INSERT INTO `attachment` VALUES ('19', '11', '2.jpg', 'upload/head/2.jpg', '', '184305', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-02-28 17:34:26');
INSERT INTO `attachment` VALUES ('20', '11', '3.jpg', 'upload/head/3.jpg', '', '117973', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-02-28 17:34:26');
INSERT INTO `attachment` VALUES ('21', '11', '1.jpg', 'upload/head/1.jpg', '', '133064', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-02-28 17:34:26');
INSERT INTO `attachment` VALUES ('22', '11', '4.jpg', 'upload/head/4.jpg', '', '117973', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-02-28 17:34:26');
INSERT INTO `attachment` VALUES ('23', '9', 'IMG_20140711_203652.jpg', '/upload/2014/07/31/1406821184734.jpg', '', '1046519', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-07-31 23:39:44');
INSERT INTO `attachment` VALUES ('24', '9', 'IMG_20140711_203652.jpg', '/upload/2014/07/31/1406821189031.jpg', '', '1046519', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-07-31 23:39:49');
INSERT INTO `attachment` VALUES ('25', '9', 'IMG_20140711_203652.jpg', '/upload/2014/07/31/1406821176078.jpg', '', '1046519', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-07-31 23:39:36');
INSERT INTO `attachment` VALUES ('30', '15', 'head2_studio1.png', '/upload/2014/08/21/1408632731421.png', '', '49252', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-08-21 22:52:11');
INSERT INTO `attachment` VALUES ('31', '15', 'head2_studio2.png', '/upload/2014/08/21/1408632731562.png', '', '49227', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-08-21 22:52:11');
INSERT INTO `attachment` VALUES ('32', '15', 'head2_studio3.png', '/upload/2014/08/21/1408632731593.png', '', '49744', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-08-21 22:52:11');
INSERT INTO `attachment` VALUES ('33', '15', 'head2_studio4.png', '/upload/2014/08/21/1408632731656.png', '', '57569', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-08-21 22:52:11');
INSERT INTO `attachment` VALUES ('34', '16', 'q10.png', '/upload/2014/08/21/1408633570062.png', '', '5003', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-08-21 23:06:10');
INSERT INTO `attachment` VALUES ('35', '16', 'q1.png', '/upload/2014/08/21/1408633570125.png', '', '5256', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-08-21 23:06:10');
INSERT INTO `attachment` VALUES ('36', '16', 'q2.png', '/upload/2014/08/21/1408633570156.png', '', '6131', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-08-21 23:06:10');
INSERT INTO `attachment` VALUES ('37', '16', 'q3.png', '/upload/2014/08/21/1408633570203.png', '', '5715', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-08-21 23:06:10');
INSERT INTO `attachment` VALUES ('38', '16', 'q4.png', '/upload/2014/08/21/1408633570250.png', '', '6518', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-08-21 23:06:10');
INSERT INTO `attachment` VALUES ('39', '16', 'q5.png', '/upload/2014/08/21/1408633570328.png', '', '6450', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-08-21 23:06:10');
INSERT INTO `attachment` VALUES ('40', '16', 'q6.png', '/upload/2014/08/21/1408633570359.png', '', '6094', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-08-21 23:06:10');
INSERT INTO `attachment` VALUES ('41', '16', 'q7.png', '/upload/2014/08/21/1408633570437.png', '', '5595', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-08-21 23:06:10');
INSERT INTO `attachment` VALUES ('42', '16', 'q8.png', '/upload/2014/08/21/1408633570500.png', '', '5609', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-08-21 23:06:10');
INSERT INTO `attachment` VALUES ('43', '16', 'q9.png', '/upload/2014/08/21/1408633570578.png', '', '4893', 'photo', 'javascript:void(0);', 'folder', 'display', '2014-08-21 23:06:10');
INSERT INTO `comment` VALUES ('1', '0', '0', '11', 'folder', 'sdv', 'sdfv', null, '', 'dfbtgebergvergfv', 'localhost:8080', 'hidden', '2014-02-21 14:26:31');
INSERT INTO `comment` VALUES ('2', '0', '0', '11', 'folder', 'efsfds', 'dfegregregr@qq.com', null, '', 'fovnonoenvolwlkcfnweoifbow', 'localhost:8080', 'hidden', '2014-02-21 14:27:43');
INSERT INTO `comment` VALUES ('3', '0', '0', '11', 'folder', 'sdfwe', 'ewfdsf', null, '', 'sdfvgfrbvc', 'localhost:8080', 'hidden', '2014-02-21 15:01:15');
INSERT INTO `comment` VALUES ('4', '0', '0', '11', 'folder', 'sdfsw', 'sdfwef', null, '', 'fdsbedfbr', 'localhost:8080', 'hidden', '2014-02-21 15:02:06');
INSERT INTO `comment` VALUES ('5', '0', '0', '11', 'folder', 'sdv', 'asf', null, '', 'fdgbergbvervger', 'localhost:8080', 'hidden', '2014-02-21 15:11:58');
INSERT INTO `comment` VALUES ('6', '0', '0', '11', 'folder', 'wegrg', 'dsvfdeve@s.com', null, '', 'sdvfr', 'localhost:8080', 'hidden', '2014-02-21 15:13:09');
INSERT INTO `comment` VALUES ('7', '0', '0', '4', 'folder', '杨海波', 'cms@shishuo.com', '', '', '哇哈哈哈哈', '127.0.0.1:8080', 'hidden', '2014-03-01 20:46:17');
INSERT INTO `comment` VALUES ('8', '0', '0', '4', 'folder', '啊哈哈', 'shishuo.com@mail.clm', '', '', 'ddasdfasdfadf', '127.0.0.1:8080', 'hidden', '2014-03-01 20:47:01');
INSERT INTO `config` VALUES ('sys_sitedesc', '师者,传道授业解惑者也', '网站描述', '2012-08-08 00:00:00');
INSERT INTO `config` VALUES ('sys_sitename', '师说', '网站名称', '2012-08-08 00:00:00');
INSERT INTO `config` VALUES ('sys_theme', 'cms', '网站模板名称', '2012-08-08 00:00:00');
INSERT INTO `folder` VALUES ('1', '0', 'default', '默认', '1', '', '1', '0', '0', 'everyone', 'folder', 'hidden', 'app', '2014-02-28 15:33:53', null);
INSERT INTO `folder` VALUES ('2', '0', 'service', '服务', '2', '', '1', '1', '0', 'everyone', 'folder', 'display', 'app', '2014-02-12 14:42:17', null);
INSERT INTO `folder` VALUES ('3', '0', 'blog', '博客', '3', '', '1', '2', '0', 'everyone', 'folder', 'display', 'app', '2014-02-12 14:43:52', null);
INSERT INTO `folder` VALUES ('4', '0', 'contact', '联系我们', '3', '', '1', '4', '0', 'everyone', 'folder', 'display', 'app', '2014-02-27 17:34:33', null);
INSERT INTO `folder` VALUES ('5', '3', 'life', '生活', '3#5', '', '2', '1', '0', 'everyone', 'article', 'display', 'app', '2014-02-28 11:21:16', null);
INSERT INTO `folder` VALUES ('6', '3', 'work', '工作', '3#6', '', '2', '1', '0', 'everyone', 'article', 'display', 'app', '2014-02-28 11:21:31', null);
INSERT INTO `folder` VALUES ('7', '3', 'java', 'Java', '3#7', '', '2', '1', '0', 'everyone', 'article', 'display', 'app', '2014-02-28 11:21:58', null);
INSERT INTO `folder` VALUES ('8', '3', 'movie', '电影', '3#8', '', '2', '1', '0', 'everyone', 'article', 'display', 'app', '2014-02-28 11:22:29', null);
INSERT INTO `folder` VALUES ('9', '3', 'photo', '相册', '3#9', '', '2', '1', '0', 'everyone', 'photo', 'display', 'app', '2014-02-28 13:56:45', null);
INSERT INTO `folder` VALUES ('11', '1', 'top', '首页头图', '1#11', '', '2', '1', '0', 'everyone', 'photo', 'hidden', 'app', '2014-02-28 15:38:03', null);
INSERT INTO `folder` VALUES ('12', '0', 'news', '新闻', '12', '', '1', '3', '0', 'everyone', 'folder', 'display', 'app', '2014-02-28 15:56:06', null);
INSERT INTO `folder` VALUES ('13', '12', 'corp', '公司新闻', '12#13', '', '2', '1', '0', 'everyone', 'article', 'display', 'app', '2014-02-28 15:57:45', null);
INSERT INTO `folder` VALUES ('14', '12', 'industry', '行业新闻', '12#14', '', '2', '1', '0', 'everyone', 'article', 'display', 'app', '2014-02-28 15:58:12', null);
INSERT INTO `folder` VALUES ('15', '1', 'head2pic', 'head2图片', '1#15', '', '2', '2', '0', 'everyone', 'photo', 'display', 'app', '2014-08-10 18:07:11', null);
INSERT INTO `folder` VALUES ('16', '1', 'hotattention', '热门关注', '1#16', '', '2', '3', '0', 'everyone', 'photo', 'display', 'app', '2014-08-21 23:04:32', null);
