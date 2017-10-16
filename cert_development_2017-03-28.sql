# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.17)
# Database: cert_development
# Generation Time: 2017-03-28 13:14:47 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table active_admin_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `active_admin_comments`;

CREATE TABLE `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) DEFAULT NULL,
  `body` text,
  `resource_id` varchar(255) NOT NULL,
  `resource_type` varchar(255) NOT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table admin_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_users`;

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;

INSERT INTO `admin_users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`)
VALUES
	(1,'admin@example.com','$2a$11$DIsBVAMR.XTbr3Bp7o22DeZhrqZO5bgKywUu.IlwG3Vy1CHAifjmO',NULL,NULL,NULL,7,'2017-03-28 12:49:40','2017-03-15 14:26:17','127.0.0.1','::1','2017-03-06 16:44:47','2017-03-28 12:49:40');

/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ar_internal_metadata
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ar_internal_metadata`;

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`)
VALUES
	('environment','development','2017-03-06 16:32:21','2017-03-06 16:32:21');

/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table board_photos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `board_photos`;

CREATE TABLE `board_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `board_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `board_photos` WRITE;
/*!40000 ALTER TABLE `board_photos` DISABLE KEYS */;

INSERT INTO `board_photos` (`id`, `board_id`, `path`, `published`, `created_at`, `updated_at`)
VALUES
	(2,1,'Screen_Shot_2017-01-25_at_1.55.09_AM.png',NULL,'2017-03-10 07:34:18','2017-03-10 07:44:03'),
	(3,2,'Screen_Shot_2017-01-25_at_1.55.09_AM.png',NULL,'2017-03-10 07:44:03','2017-03-10 08:24:14'),
	(4,3,'Screen_Shot_2017-01-25_at_1.55.09_AM.png',NULL,'2017-03-10 08:24:14','2017-03-10 08:24:14'),
	(5,4,'Screen_Shot_2017-01-25_at_1.55.09_AM.png',NULL,'2017-03-10 08:24:14','2017-03-10 08:24:14'),
	(6,5,'Screen_Shot_2017-01-25_at_1.55.09_AM.png',NULL,'2017-03-10 08:24:14','2017-03-10 08:24:14'),
	(7,6,'Screen_Shot_2017-01-25_at_1.55.09_AM.png',NULL,'2017-03-10 08:24:14','2017-03-10 08:24:14'),
	(8,7,'Screen_Shot_2017-01-25_at_1.55.09_AM.png',NULL,'2017-03-10 08:24:14','2017-03-10 08:24:14'),
	(9,8,'Screen_Shot_2017-01-25_at_1.55.09_AM.png',NULL,'2017-03-10 08:24:14','2017-03-10 08:24:14'),
	(10,9,'Screen_Shot_2017-01-25_at_1.55.09_AM.png',NULL,'2017-03-10 08:24:14','2017-03-10 08:24:14'),
	(11,NULL,'Screen_Shot_2017-01-25_at_1.55.09_AM.png',NULL,'2017-03-10 08:24:14','2017-03-15 14:26:38'),
	(12,10,'15252059.png',NULL,'2017-03-15 14:26:38','2017-03-15 14:26:38');

/*!40000 ALTER TABLE `board_photos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table boards
# ------------------------------------------------------------

DROP TABLE IF EXISTS `boards`;

CREATE TABLE `boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `published` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `boards` WRITE;
/*!40000 ALTER TABLE `boards` DISABLE KEYS */;

INSERT INTO `boards` (`id`, `name`, `title`, `description`, `published`, `created_at`, `updated_at`)
VALUES
	(1,'Nazrol Hafiz','Ceo Training.my','',1,'2017-03-10 02:38:56','2017-03-10 02:38:56'),
	(2,'Nazrol Hafiz','Ceo Training.my','',1,'2017-03-10 02:39:39','2017-03-10 02:39:39'),
	(3,'Nazrol Hafiz','Ceo Training.my','',1,'2017-03-10 02:40:11','2017-03-10 02:40:11'),
	(4,'Nazrol Hafiz','Ceo Training.my','',1,'2017-03-10 02:40:41','2017-03-10 02:40:41'),
	(5,'Nazrol Hafiz','Ceo Training.my','',1,'2017-03-10 02:40:59','2017-03-10 02:40:59'),
	(6,'Nazrol Hafiz','Ceo Training.my','',1,'2017-03-10 02:41:17','2017-03-10 02:41:17'),
	(7,'Nazrol Hafiz','Ceo Training.my','',1,'2017-03-10 02:41:32','2017-03-10 02:41:32'),
	(8,'Nazrol Hafiz','Ceo Training.my','',1,'2017-03-10 02:41:48','2017-03-10 02:41:48'),
	(9,'Nazrol Hafiz','Ceo Training.my','',1,'2017-03-10 02:42:16','2017-03-10 02:42:16'),
	(10,'Nazrol Hafiz','Ceo Training.my','',1,'2017-03-10 02:42:28','2017-03-10 06:44:00');

/*!40000 ALTER TABLE `boards` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `title`, `published`, `created_at`, `updated_at`)
VALUES
	(1,'Security Admin',1,'2017-03-08 12:59:44','2017-03-08 12:59:44'),
	(2,'Forensic',1,'2017-03-08 13:00:01','2017-03-08 13:00:01'),
	(4,'Management',1,'2017-03-08 13:00:26','2017-03-08 13:00:26'),
	(5,'Audit',1,'2017-03-08 13:00:42','2017-03-08 13:00:42'),
	(6,'Software Security',1,'2017-03-08 13:00:58','2017-03-08 13:00:58');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table certificates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `certificates`;

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `description` text,
  `qualification_id` int(11) DEFAULT NULL,
  `closing_date` date DEFAULT NULL,
  `sitting_date` date DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `detail` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `certificates` WRITE;
/*!40000 ALTER TABLE `certificates` DISABLE KEYS */;

INSERT INTO `certificates` (`id`, `title`, `provider_id`, `description`, `qualification_id`, `closing_date`, `sitting_date`, `category_id`, `created_at`, `updated_at`, `image`, `published`, `price`, `detail`)
VALUES
	(1,'GSEC',NULL,'GSEC: GIAC Security Essentials',1,'2016-08-11','2017-04-12',1,'2017-03-08 13:26:49','2017-03-08 13:27:43','',1,200,'Gain the skills to build and deploy SQL Server business intelligence (BI) solutions with this course. You\'ll get the training you need to pass the exams for the MCSE: Business Intelligence certification. The certification exam is not included in this course.'),
	(2,'GSEC',NULL,'GSEC: GIAC Security Essentials',1,'2016-08-11','2017-04-12',1,'2017-03-08 13:26:49','2017-03-08 13:27:43','',1,200,'Gain the skills to build and deploy SQL Server business intelligence (BI) solutions with this course. You\'ll get the training you need to pass the exams for the MCSE: Business Intelligence certification. The certification exam is not included in this course.\n'),
	(3,'GCIH',NULL,'GCIH: GIAC Certified Incident Handler',2,'2016-08-11','2017-04-12',1,'2017-03-08 13:26:49','2017-03-08 13:27:43','',1,200,'Gain the skills to build and deploy SQL Server business intelligence (BI) solutions with this course. You\'ll get the training you need to pass the exams for the MCSE: Business Intelligence certification. The certification exam is not included in this course.'),
	(4,'GCIA',NULL,'GCIA: GIAC Certified Intrusion Analyst',3,'2016-08-11','2017-04-12',2,'2017-03-08 13:26:49','2017-03-08 13:27:43','',1,200,'Gain the skills to build and deploy SQL Server business intelligence (BI) solutions with this course. You\'ll get the training you need to pass the exams for the MCSE: Business Intelligence certification. The certification exam is not included in this course.'),
	(5,'GPEN',NULL,'GPEN: GIAC Penetration Tester',1,'2016-08-11','2017-04-12',2,'2017-03-08 13:26:49','2017-03-08 13:27:43','',1,200,'Gain the skills to build and deploy SQL Server business intelligence (BI) solutions with this course. You\'ll get the training you need to pass the exams for the MCSE: Business Intelligence certification. The certification exam is not included in this course.'),
	(6,'GWAPT',NULL,'GWAPT: GIAC Web Application Penetration Tester',2,'2016-08-11','2017-04-12',1,'2017-03-08 13:26:49','2017-03-08 13:27:43','',1,200,'Gain the skills to build and deploy SQL Server business intelligence (BI) solutions with this course. You\'ll get the training you need to pass the exams for the MCSE: Business Intelligence certification. The certification exam is not included in this course.'),
	(7,'GISF',NULL,'GISF: GIAC Information Security Fundamentals',3,'2016-08-11','2017-04-12',1,'2017-03-08 13:26:49','2017-03-08 13:27:43','',1,200,'Gain the skills to build and deploy SQL Server business intelligence (BI) solutions with this course. You\'ll get the training you need to pass the exams for the MCSE: Business Intelligence certification. The certification exam is not included in this course.'),
	(8,'GCED',NULL,'GCED: GIAC Certified Enterprise Defender',1,'2016-08-11','2017-04-12',4,'2017-03-08 13:26:49','2017-03-08 13:27:43','',1,200,'Gain the skills to build and deploy SQL Server business intelligence (BI) solutions with this course. You\'ll get the training you need to pass the exams for the MCSE: Business Intelligence certification. The certification exam is not included in this course.'),
	(9,'GCWN',NULL,'GCWN: GIAC Certified Windows Security Administrator',2,'2016-08-11','2017-04-12',4,'2017-03-08 13:26:49','2017-03-08 13:27:43','',1,200,'Gain the skills to build and deploy SQL Server business intelligence (BI) solutions with this course. You\'ll get the training you need to pass the exams for the MCSE: Business Intelligence certification. The certification exam is not included in this course.'),
	(10,'GPPA',NULL,'GPPA: GIAC Certified Perimeter Protection Analyst',3,'2016-08-11','2017-04-12',4,'2017-03-08 13:26:49','2017-03-08 13:27:43','',1,200,'Gain the skills to build and deploy SQL Server business intelligence (BI) solutions with this course. You\'ll get the training you need to pass the exams for the MCSE: Business Intelligence certification. The certification exam is not included in this course.');

/*!40000 ALTER TABLE `certificates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table certify_lists
# ------------------------------------------------------------

DROP TABLE IF EXISTS `certify_lists`;

CREATE TABLE `certify_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `certificate_id` int(11) DEFAULT NULL,
  `obtained` date DEFAULT NULL,
  `expires_by` date DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `certify_lists` WRITE;
/*!40000 ALTER TABLE `certify_lists` DISABLE KEYS */;

INSERT INTO `certify_lists` (`id`, `user_id`, `certificate_id`, `obtained`, `expires_by`, `published`, `created_at`, `updated_at`)
VALUES
	(1,1,2,'2017-07-20','2020-07-20',1,'2017-03-08 17:15:37','2017-03-08 17:15:37'),
	(2,1,3,'2017-07-21','2020-07-20',1,'2017-03-08 17:15:37','2017-03-08 17:15:37');

/*!40000 ALTER TABLE `certify_lists` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table examiner_photos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `examiner_photos`;

CREATE TABLE `examiner_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examiner_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table examiners
# ------------------------------------------------------------

DROP TABLE IF EXISTS `examiners`;

CREATE TABLE `examiners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `published` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `examiners` WRITE;
/*!40000 ALTER TABLE `examiners` DISABLE KEYS */;

INSERT INTO `examiners` (`id`, `name`, `title`, `description`, `published`, `created_at`, `updated_at`)
VALUES
	(1,'ChaA','Hacker','',1,'2017-03-10 02:46:46','2017-03-10 02:46:46'),
	(2,'ChaA','Hacker','',1,'2017-03-10 02:47:01','2017-03-10 02:47:01'),
	(3,'ChaA','Hacker',NULL,1,'2017-03-10 02:53:06','2017-03-10 02:53:06'),
	(4,'ChaA','Hacker',NULL,1,'2017-03-10 02:53:06','2017-03-10 02:53:06'),
	(5,'ChaA','Hacker',NULL,1,'2017-03-10 02:53:06','2017-03-10 02:53:06'),
	(6,'ChaA','Hacker',NULL,1,'2017-03-10 02:53:06','2017-03-10 02:53:06'),
	(7,'ChaA','Hacker',NULL,1,'2017-03-10 02:53:06','2017-03-10 02:53:06'),
	(8,'ChaA','Hacker',NULL,1,'2017-03-10 02:53:06','2017-03-10 02:53:06'),
	(9,'ChaA','Hacker',NULL,1,'2017-03-10 02:53:06','2017-03-10 02:53:06'),
	(10,'ChaA','Hacker',NULL,1,'2017-03-10 02:53:06','2017-03-10 02:53:06'),
	(11,'ChaA','Hacker',NULL,1,'2017-03-10 02:53:06','2017-03-10 02:53:06'),
	(12,'ChaA','Hacker',NULL,1,'2017-03-10 02:53:06','2017-03-10 02:53:06'),
	(13,'ChaA','Hacker',NULL,1,'2017-03-10 02:53:06','2017-03-10 02:53:06'),
	(14,'ChaA','Hacker',NULL,1,'2017-03-10 02:53:06','2017-03-10 02:53:06'),
	(15,'ChaA','Hacker',NULL,1,'2017-03-10 02:53:06','2017-03-10 02:53:06'),
	(16,'ChaA','Hacker',NULL,1,'2017-03-10 02:53:06','2017-03-10 02:53:06'),
	(17,'ChaA','Hacker',NULL,1,'2017-03-10 02:53:06','2017-03-10 02:53:06');

/*!40000 ALTER TABLE `examiners` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mainpages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mainpages`;

CREATE TABLE `mainpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mainpages` WRITE;
/*!40000 ALTER TABLE `mainpages` DISABLE KEYS */;

INSERT INTO `mainpages` (`id`, `title`, `body`, `created_at`, `updated_at`)
VALUES
	(1,'Welcome to bla2','As the authorised representative of Educational Assessment Australia (EAA), UNSW Global, EATS is committed to bringing quality, formative and summative testing to Malaysian schools.This website aims to provide the public with information about EATS and the assessments available through EATS in Malaysia.','2017-03-28 13:09:14','2017-03-28 13:09:14');

/*!40000 ALTER TABLE `mainpages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table qualifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `qualifications`;

CREATE TABLE `qualifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `qualifications` WRITE;
/*!40000 ALTER TABLE `qualifications` DISABLE KEYS */;

INSERT INTO `qualifications` (`id`, `title`, `published`, `created_at`, `updated_at`)
VALUES
	(1,'Normal',1,'2017-03-08 13:09:09','2017-03-08 13:09:09'),
	(2,'Advance',1,'2017-03-08 13:09:21','2017-03-08 13:09:21'),
	(3,'Expert',1,'2017-03-08 13:09:34','2017-03-08 13:09:34');

/*!40000 ALTER TABLE `qualifications` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20170306161522'),
	('20170306164400'),
	('20170306164404'),
	('20170307164554'),
	('20170307165048'),
	('20170307165318'),
	('20170307181752'),
	('20170307181959'),
	('20170307182425'),
	('20170307193058'),
	('20170308170216'),
	('20170310022422'),
	('20170310022537'),
	('20170310040909'),
	('20170310040942'),
	('20170315165134'),
	('20170328125222');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `first_certified` date DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `first_certified`, `published`, `name`)
VALUES
	(1,'firdaushishamuddin@gmail.com','$2a$11$Uok6YtjnJqKykHmykXJk.eqvcnnTkcNJdGlZ0pZ2hSUYjCZ.ULtcS',NULL,NULL,NULL,6,'2017-03-16 13:02:53','2017-03-10 03:51:28','::1','::1','2017-03-08 16:53:24','2017-03-16 13:02:53','2017-03-09',NULL,'Nexxa'),
	(2,'firdaushishamuddin@gmail.com.my','$2a$11$Uok6YtjnJqKykHmykXJk.eqvcnnTkcNJdGlZ0pZ2hSUYjCZ.ULtcS',NULL,NULL,NULL,3,'2017-03-09 04:50:23','2017-03-08 17:40:03','::1','::1','2017-03-08 16:53:24','2017-03-09 04:50:23','2017-03-09',NULL,'neoNexxa'),
	(3,'nexxa@nexxa.com','$2a$11$k.gyI8Hpv0np6i7M589WCennWVIg84YzDAVd8BohJhMWJwy.8vOnC',NULL,NULL,NULL,1,'2017-03-28 06:37:50','2017-03-28 06:37:50','127.0.0.1','127.0.0.1','2017-03-28 06:37:50','2017-03-28 06:37:50',NULL,NULL,NULL),
	(4,'fir@fir.com','$2a$11$b5d8WSDdmYZd07PIyjtg3ONC4yVxDzqtkMVt8q6XLHNwpHensuOMC',NULL,NULL,NULL,1,'2017-03-28 06:42:14','2017-03-28 06:42:14','127.0.0.1','127.0.0.1','2017-03-28 06:42:14','2017-03-28 06:42:14',NULL,NULL,NULL),
	(5,'again@again.com','$2a$11$EHd0elXzyIyq2k9GtMVw/uTI/h48qa3caqVH/OhjxaOhPzJs33buG',NULL,NULL,NULL,1,'2017-03-28 06:46:37','2017-03-28 06:46:37','127.0.0.1','127.0.0.1','2017-03-28 06:46:37','2017-03-28 06:46:37',NULL,NULL,'again'),
	(6,'one@more.com','$2a$11$/ldVpoXIYnboEWttjHbrvuXY846V960bjgot9BS6X35lNlKpv9IM2',NULL,NULL,NULL,2,'2017-03-28 06:53:05','2017-03-28 06:51:29','127.0.0.1','127.0.0.1','2017-03-28 06:51:29','2017-03-28 06:53:05',NULL,NULL,'testonemore');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
