-- 个人网站数据库
-- 数据表：
-- 用户表 t_user
-- 数据表 t_video t_music t_photo t_book t_essay
DROP DATABASE IF EXISTS `island`;
CREATE SCHEMA `island` DEFAULT CHARACTER SET utf8 ;

-- t_user
DROP TABLE IF EXISTS `island`.`t_user`;
CREATE TABLE `island`.`t_user` (
  `uid` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(32) DEFAULT NULL ,
  `password` VARCHAR(64) DEFAULT NULL ,
  `role` INT(4) DEFAULT 1 COMMENT '0-管理员 1-普通用户 2-游客',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username_unique` (`username`) USING BTREE
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

LOCK TABLES `island`.`t_user` WRITE ;
INSERT INTO `island`.`t_user`(username, password, role)
VALUES
  ('admin', '123456789', 0),
  ('Arvin', '123456', 1);
UNLOCK TABLES;

-- t_video
DROP TABLE IF EXISTS `island`.`t_video`;
CREATE TABLE `island`.`t_video` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;


-- t_music
DROP TABLE IF EXISTS `island`.`t_music`;
CREATE TABLE `island`.`t_music` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- t_photo
DROP TABLE IF EXISTS `island`.`t_photo`;
CREATE TABLE `island`.`t_photo` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- t_book
DROP TABLE IF EXISTS `island`.`t_book`;
CREATE TABLE `island`.`t_book` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- t_essay
DROP TABLE IF EXISTS `island`.`t_essay`;
CREATE TABLE `island`.`t_essay` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;