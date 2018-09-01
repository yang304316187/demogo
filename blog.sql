-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2018-09-01 07:14:22
-- 服务器版本： 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- 表的结构 `blog_article`
--

DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE IF NOT EXISTS `blog_article` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) UNSIGNED DEFAULT '0' COMMENT '标签ID',
  `title` varchar(100) DEFAULT '' COMMENT '文章标题',
  `desc` varchar(255) DEFAULT '' COMMENT '简述',
  `content` text,
  `created_on` int(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT '' COMMENT '创建人',
  `modified_on` int(10) UNSIGNED DEFAULT '0' COMMENT '修改时间',
  `modified_by` varchar(255) DEFAULT '' COMMENT '修改人',
  `state` tinyint(3) UNSIGNED DEFAULT '1' COMMENT '状态 0为禁用1为启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='文章管理';

--
-- 转存表中的数据 `blog_article`
--

INSERT INTO `blog_article` (`id`, `tag_id`, `title`, `desc`, `content`, `created_on`, `created_by`, `modified_on`, `modified_by`, `state`) VALUES
(1, 2, 'test1', 'test-desc', 'test-content', 1535697483, 'test-created', 0, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `blog_auth`
--

DROP TABLE IF EXISTS `blog_auth`;
CREATE TABLE IF NOT EXISTS `blog_auth` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT '' COMMENT '账号',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `blog_auth`
--

INSERT INTO `blog_auth` (`id`, `username`, `password`) VALUES
(1, 'admin', '1');

-- --------------------------------------------------------

--
-- 表的结构 `blog_tag`
--

DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE IF NOT EXISTS `blog_tag` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '标签名称',
  `created_on` int(10) UNSIGNED DEFAULT '0' COMMENT '创建时间',
  `created_by` varchar(100) DEFAULT '' COMMENT '创建人',
  `modified_on` int(10) UNSIGNED DEFAULT '0' COMMENT '修改时间',
  `modified_by` varchar(100) DEFAULT '' COMMENT '修改人',
  `state` tinyint(3) UNSIGNED DEFAULT '1' COMMENT '状态 0为禁用、1为启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='文章标签管理';

--
-- 转存表中的数据 `blog_tag`
--

INSERT INTO `blog_tag` (`id`, `name`, `created_on`, `created_by`, `modified_on`, `modified_by`, `state`) VALUES
(2, 'go', 1535682179, 'test', 0, '', 1),
(3, 'java', 1535688015, 'admin', 1535688062, 'admin1', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
