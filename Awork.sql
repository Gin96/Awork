/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50527
Source Host           : 127.0.0.1:3306
Source Database       : aa

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2017-07-20 11:32:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(20) DEFAULT NULL,
  `apass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `meiwen`
-- ----------------------------
DROP TABLE IF EXISTS `meiwen`;
CREATE TABLE `meiwen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ming` varchar(100) DEFAULT NULL,
  `diyi` varchar(1000) DEFAULT NULL,
  `dier` varchar(1000) DEFAULT NULL,
  `disan` varchar(1000) DEFAULT NULL,
  `disi` varchar(1000) DEFAULT NULL,
  `diwu` varchar(1000) DEFAULT NULL,
  `diliu` varchar(1000) DEFAULT NULL,
  `diqi` varchar(1000) DEFAULT NULL,
  `diba` varchar(1000) DEFAULT NULL,
  `dijiu` varchar(1000) DEFAULT NULL,
  `dishi` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meiwen
-- ----------------------------
INSERT INTO `meiwen` VALUES ('1', '我还是很喜欢你', '我还是很喜欢你，像风游走八千里，不问归期。', '我还是喜欢你，像雨洒落在热带与极地，不远万里。', '我还是喜欢你，像等了很多年古人的老城门，茕茕孑立。', '我还是很喜欢你，向老故事里的泛黄桥段，半聋半哑，失了声息。', '我还是很喜欢你，像月孤悬于夜空，如星簇拥檀宫，万古如一。似四方六合八荒，你只是你。', '我还是很喜欢你，像太阳升了落去，无论朝夕。', '我还是很喜欢你，像日落前的余辉，不忍离去。', '我还是很喜欢你，像飞蛾一次次扑灯，痴情碰壁。', '我还是喜欢你，如蝴蝶固执过沧海，何必谁说？', '我还是很喜欢你，似此刻我千言万语，千言万语。我千言万语，欲诉无期。');
INSERT INTO `meiwen` VALUES ('2', '那一世', '那一刻，我升起云马，不为祈福，只为等候的你的到来', '那一天，我闭目在经殿香雾中，蓦然听见，你颂经中的真言', '那一日，垒起玛尼堆，不为修德，只为投下心湖的石子', '那一夜，我听了一宿梵唱，不为参悟，只为寻你的一丝气息', '那一月，我摇动所有的经筒，不为超度，只为触摸你的指尖', '那一年，我磕长头匍匐在山路，不为觐见，只贴着你的温暖', '那一世，我转山转水转佛塔，不为修来生，只为途中与你相见', '那一瞬，我飞升成仙，不为长生，只为佑你平安喜乐', '只是，就在那一夜，我忘却了所有，抛却了信仰，舍弃了轮回', '只为，那曾在佛前哭泣的玫瑰，早已失去旧日光泽');
INSERT INTO `meiwen` VALUES ('3', '上邪', '你嫁衣如火灼伤了天涯', '从此残阳烙我心上如朱砂', '都说你眼中开盛世桃花', '却如何一夕桃花雨下', '问谁能借我回眸一眼', '去溯流遥迢的流年', '循着你为我倾咏的上邪', '再去见你一面', '在那远去的旧年', '我笑你轻许了姻缘');

-- ----------------------------
-- Table structure for `ping`
-- ----------------------------
DROP TABLE IF EXISTS `ping`;
CREATE TABLE `ping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `pingdate` date DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `yonghu` (`uid`),
  KEY `meiwen` (`mid`),
  CONSTRAINT `meiwen` FOREIGN KEY (`mid`) REFERENCES `meiwen` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `yonghu` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ping
-- ----------------------------
INSERT INTO `ping` VALUES ('7', '12345678', '我还是喜欢你，像泼妇骂街，不讲道理', '2016-12-12', '2', '1');
INSERT INTO `ping` VALUES ('8', '你丑你先说', '网友的智慧果然好伟大', '2016-12-12', '9', '1');
INSERT INTO `ping` VALUES ('9', 'zhangsan', '我再也不会喜欢你，像秋叶枯藤衰败在故里，后会无期', '2016-12-12', '1', '1');
INSERT INTO `ping` VALUES ('10', '曾经是个王者', '我还是喜欢你，像海波澜壮阔。沉默不语', '2016-12-13', '11', '1');
INSERT INTO `ping` VALUES ('11', '北京东路的日子', '我还是喜欢你，像旧雪肆虐，痛彻心扉', '2016-12-13', '13', '1');
INSERT INTO `ping` VALUES ('12', '愿得一人心', '我还是喜欢你，像飓风跌进深谷，一望无际', '2016-12-13', '18', '1');
INSERT INTO `ping` VALUES ('13', 'lisilisi', '我还是喜欢你，像夏虫语冰，心碎自欺', '2016-12-13', '4', '1');
INSERT INTO `ping` VALUES ('14', '三妻四妾。', '你喜欢一个人无法自拔，还不是在夜里寂寞到无话可说？', '2016-12-13', '25', '1');
INSERT INTO `ping` VALUES ('16', '稳稳的幸福', '我想要稳稳的幸福，能抵挡末日的残酷', '2016-12-13', '16', '1');
INSERT INTO `ping` VALUES ('17', '阳光下的泡沫', '我还是喜欢你，像咿呀学语的孩童，词不达意。', '2016-12-13', '27', '1');
INSERT INTO `ping` VALUES ('18', '离离原上草', '我还是喜欢你，像离原野草，生生不息。', '2016-12-13', '28', '1');
INSERT INTO `ping` VALUES ('19', '爱你情非得已', '我还是很喜欢你，像潮起潮落，情非得已。', '2016-12-13', '29', '1');
INSERT INTO `ping` VALUES ('20', '爱你情非得已', '仓央嘉措啊', '2016-12-13', '29', '2');
INSERT INTO `ping` VALUES ('21', '离离原上草', '这首诗不是仓央嘉措写的', '2016-12-13', '28', '2');
INSERT INTO `ping` VALUES ('22', '12345678', '对对对，听说这首诗，最初登在杂志上了，这是现代诗人的作品，可是杂志写的作者是仓央嘉措', '2016-12-13', '2', '2');
INSERT INTO `ping` VALUES ('23', '阳光下的泡沫', '杂志属于侵权，应该给原作者道歉了吧', '2016-12-13', '27', '2');
INSERT INTO `ping` VALUES ('24', '我的同桌超级傻', '道歉不道歉不重要，那位作者的损失很重要。', '2016-12-13', '5', '2');
INSERT INTO `ping` VALUES ('25', '曾经是个王者', '反正句子美就对了，谁写的不重要', '2016-12-13', '11', '2');
INSERT INTO `ping` VALUES ('26', '我只是浮夸', '那不一样，这是作者的人气', '2016-12-13', '17', '2');
INSERT INTO `ping` VALUES ('27', '你丑你先说', '大家重点都是谁写的？！2233333333', '2016-12-13', '9', '2');
INSERT INTO `ping` VALUES ('28', '分分钟就要暴走', '仓央嘉措另一首写的也挺好', '2016-12-13', '6', '2');
INSERT INTO `ping` VALUES ('29', '奇妙能力歌', '不应该是：我翻遍十万大山，不为修来生，只为途中与你相见？', '2016-12-13', '15', '2');
INSERT INTO `ping` VALUES ('30', '北京东路的日子', '这个有好几个版本，这个是我最喜欢的版本', '2016-12-13', '13', '2');
INSERT INTO `ping` VALUES ('31', '北京东路的日子', '那一天~~~~~~~', '2016-12-13', '13', '2');
INSERT INTO `ping` VALUES ('32', '我的老家儿', '能换个不，这个都八百年了', '2016-12-13', '30', '2');
INSERT INTO `ping` VALUES ('33', '小鱼吻深海', '那一天……我摔了一跤', '2016-12-13', '31', '2');
INSERT INTO `ping` VALUES ('34', '崔博士是谁', '我还是喜欢你，像四季轮回，永不停歇', '2016-12-14', '32', '1');
INSERT INTO `ping` VALUES ('39', '74185200', '这不是一首歌吗？', '2016-12-14', '33', '3');
INSERT INTO `ping` VALUES ('40', 'zhangsan', '不好看', '2016-12-14', '1', '3');
INSERT INTO `ping` VALUES ('47', '10010', '我还是喜欢你，像老鼠爱大米，就不撒手', '2016-12-15', '38', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `yan` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zhangsan', 'zhangsan', '女', 'zhangsan@qq.com', '15833556699', '张三省张三市张三村张三家', '我是世界第一帅\r\n	   							\r\n	   							\r\n	   							\r\n	   							');
INSERT INTO `user` VALUES ('2', '12345678', '12345678', '男', '12345678@qq.com', '15832468878', '12345678家', '我是12345678');
INSERT INTO `user` VALUES ('3', '87654321', '87654321', '男', '87654321@qq.com', '15889498474', '87654321家', '我是87654321');
INSERT INTO `user` VALUES ('4', 'lisilisi', 'lisilisi', '女', 'lisilisi@qq.com', '15864982655', 'lisilisi家', '我一定要好好学习，否则别人会说，看，那个人除了帅一无是处！');
INSERT INTO `user` VALUES ('5', '我的同桌超级傻', '12345678', '男', 'wodetz@qq.com', '15896468741', '地球市地球村', '我的同桌超级傻，我的智商超级高！');
INSERT INTO `user` VALUES ('6', '分分钟就要暴走', '12345678', '男', 'fenfen@qq.com', '15864879874', '地球村', '与其等别人来爱你，不如自己学着努力多爱自己一点。');
INSERT INTO `user` VALUES ('7', '全世界我最帅。', '1234567', '男', 'shuai@qq.com', '15833568987', '邯郸市', '把你爱的人留住，不管值不值得受多大委屈都不要放手');
INSERT INTO `user` VALUES ('8', '只为遇见你', '7894561', '男', 'meinan@qq.com', '15866547896', '邢台', '感谢你让我伤心，让我难堪，让我无地自容，让我学会放弃。');
INSERT INTO `user` VALUES ('9', '你丑你先说', '12345678', '男', 'nichou@qq.com', '15994646464', '帅哥市帅哥村', '你先听我说，你丑你先说！');
INSERT INTO `user` VALUES ('10', '一人我饮酒醉', '12345678', '男', 'yirem@qq.com', '15644665464', '中国', '无人与我把酒欢，无人告我夜已深');
INSERT INTO `user` VALUES ('11', '曾经是个王者', '12345678', '女', 'cengjing@qq.com', '15879461364', '王的宫殿', '曾经是个王者，如今说声算了！');
INSERT INTO `user` VALUES ('12', '两眼是独相随', '12345678', '男', 'cengjing@qq.com', '15874974861', '魔都', '一人我饮酒醉，最把佳人成双对');
INSERT INTO `user` VALUES ('13', '北京东路的日子', '12345678', '男', 'sfuhreb@qq.com', '17894646489', '北京', '开始的开始，我们都是孩子。');
INSERT INTO `user` VALUES ('14', '一直很安静', '12345678', '女', 'yizhi@qq.com', '15830409054', '中国河北', '给你的爱一直很安静，来交换你偶尔的关心。');
INSERT INTO `user` VALUES ('15', '奇妙能力歌', '12345678', '女', 'qimiao@qq.com', '15889789744', '奇妙世界', '奇妙');
INSERT INTO `user` VALUES ('16', '稳稳的幸福', '12345678', '女', 'wenwen@qq.com', '17895646543', '中国', '我想到稳稳的幸福，能抵挡末日的残酷。');
INSERT INTO `user` VALUES ('17', '我只是浮夸', '12345678', '男', 'fukua@qq.com', '18964895689', '中国', '你就当我是浮夸吧，夸张只因我很怕。似木头似石头的话，得到注意吗？');
INSERT INTO `user` VALUES ('18', '愿得一人心', '12345678', '男', 'yuande@qq.com', '15894679641', '帝都', '愿得一人心，白首不分离。');
INSERT INTO `user` VALUES ('19', '不分手的恋爱', '12345678', '男', 'bufen@qq.com', '15864796334', '中国', '我想要一场不分手的恋爱');
INSERT INTO `user` VALUES ('20', '你还要我怎样', '147258369', '男', 'nihai@qq.com', '15687973646', '香港', '我还能怎样，能怎样？');
INSERT INTO `user` VALUES ('21', '低调的演员', '147258369', '男', 'yanyuan@qq.com', '15648973212', '言语昂之家', '简单点，说话的方式简单点。');
INSERT INTO `user` VALUES ('22', '丑八怪不说话', '147258369', '女', 'chou@qq.com', '15864973265', '保密', '如果世界漆黑，其实我很美');
INSERT INTO `user` VALUES ('23', '阴天快乐吗', '147258369', '女', 'yintian@qq.com', '15648973211', '世界', '听阴天说什么，在黑暗中的我！');
INSERT INTO `user` VALUES ('24', '悲伤逆流成河', '147258369', '女', 'beishang@qq.com', '15649879884', '保密', '一个人孤单未尝不可。');
INSERT INTO `user` VALUES ('25', '三妻四妾。', '147258369', '男', 'sanqi@qq.com', '15698746231', '中国', '你生活在花花世界');
INSERT INTO `user` VALUES ('26', '天空好像下雨', '14725800', '男', 'tian@qq.com', '18632456752', '深圳', '给你唱一首歌，没有什么风格');
INSERT INTO `user` VALUES ('27', '阳光下的泡沫', '14725800', '女', 'yang@qq.com', '15894325687', '广州', '美丽的泡沫，虽然一刹花火');
INSERT INTO `user` VALUES ('28', '离离原上草', '14725800', '女', 'lili@qq.com', '15849873447', '呼伦贝尔大草原', '野火烧不尽，春风吹又生');
INSERT INTO `user` VALUES ('29', '爱你情非得已', '14725800', '女', 'aini@qq.com', '15874616499', '中国', '一般一般，世界第三');
INSERT INTO `user` VALUES ('30', '我的老家儿', '14725800', '男', 'wode@qq.com', '15836963245', '就住在那个屯儿', '我是这个屯儿里土生土长的人');
INSERT INTO `user` VALUES ('31', '小鱼吻深海', '14725800', '男', 'xiaoyu@qq.com', '18315987648', '海边', '我离不开你，就像离不开水');
INSERT INTO `user` VALUES ('32', '崔博士是谁', '14725800', '男', 'cuibo@qq.com', '15863264987', '河南', '我这么帅，不用自恋');
INSERT INTO `user` VALUES ('33', '74185200', '74185200', '女', '74185200@qq.com', '15896967478', '中国', '只有努力过的人，才知道天赋有多么重要');
INSERT INTO `user` VALUES ('34', '74185200', '74185200', '男', '74185200@qq.com', '15896964632', '中国', '不努力一把，你根本不知道啥是绝望\r\n	   							');
INSERT INTO `user` VALUES ('35', '李大大和王小小', '123456789', '男', '123456789@qq.com', '15897946156', '河北', '我最帅！\r\n	   							');
INSERT INTO `user` VALUES ('36', '12345', '12345678', '女', '12345@qq.com', '15864976497', '中国', '12345，上山打老虎\r\n	   							');
INSERT INTO `user` VALUES ('37', '李123456', '12345678', '女', '14725800@qq.com', '15897948613', '中国', '懒得写\r\n	   							');
INSERT INTO `user` VALUES ('38', '10010', '11111111', '男', '10010@qq.com', '15798746748', '中国联通', '我是最帅的10010\r\n	   							');

-- ----------------------------
-- Table structure for `yijian`
-- ----------------------------
DROP TABLE IF EXISTS `yijian`;
CREATE TABLE `yijian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zhenname` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `message` varchar(2000) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `yidate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userxinxi` (`uid`),
  CONSTRAINT `userxinxi` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yijian
-- ----------------------------
INSERT INTO `yijian` VALUES ('1', '书小呆', 'shuxiaodai@qq.com', '书中自有颜如玉，我呆但我帅！', '1', '2016-12-09');
INSERT INTO `yijian` VALUES ('2', '书小萌', 'shuxmeng@163.com', '书中自有黄金屋，万两黄金不如我！', '1', '2016-12-10');
INSERT INTO `yijian` VALUES ('3', '你的名字', 'nideming@qq.com', '我的名字是真的响亮！', '2', '2016-12-10');
INSERT INTO `yijian` VALUES ('4', '我很厉害', 'wohen@qq.com', '我就是很厉害', '2', '2016-12-10');
INSERT INTO `yijian` VALUES ('5', '李四', 'lisilisi@qq.com', '请问咋能到君子界面', '4', '2016-12-10');
INSERT INTO `yijian` VALUES ('6', '楚留香', 'wodetz@qq.com', '如何能够直接对方的资料呢?', '5', '2016-12-10');
INSERT INTO `yijian` VALUES ('7', '小确幸', 'wenwen@qq.com', '怎么删除个人评论？', '16', '2016-12-10');
INSERT INTO `yijian` VALUES ('8', '肖浮夸', 'fukua@qq.com', '请问如何看到其他人的个人信息？', '17', '2016-12-10');
INSERT INTO `yijian` VALUES ('9', '刘心愿', 'yuande@qq.com', '有同城交友专区吗', '18', '2016-12-10');
INSERT INTO `yijian` VALUES ('10', '薛之谦', 'nihai@qq.com', '我慢慢的回到自己的生活圈，也开始可以接触新的人选。\r\n爱你到最后，不痛不痒，留言再计较，谁爱过一场', '20', '2016-12-10');
INSERT INTO `yijian` VALUES ('11', '小演员', 'yanyuan@qq.com', '天涯海角板块是如何发出的？用户可以发吗？', '21', '2016-12-10');
INSERT INTO `yijian` VALUES ('12', '保密', 'chou@qq.com', '海枯石烂秀恩爱模块，我怎么发表啊？', '22', '2016-12-10');
INSERT INTO `yijian` VALUES ('13', '阴天', 'yintian@qq.com', '一见钟情里怎么查看', '23', '2016-12-10');
INSERT INTO `yijian` VALUES ('18', '74185200', '74185200@qq.com', '我想发表东西', '33', '2016-12-14');
INSERT INTO `yijian` VALUES ('19', '李大大', '2483943813@qq.com', '好无聊', '35', '2016-12-14');
INSERT INTO `yijian` VALUES ('21', '李佳', '10010@qq.com', '你傻', '38', '2016-12-15');
