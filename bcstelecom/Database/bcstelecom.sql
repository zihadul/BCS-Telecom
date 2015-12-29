/*
SQLyog Ultimate v9.63 
MySQL - 5.5.45 : Database - bcstelecom
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bcstelecom` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bcstelecom`;

/*Table structure for table `advertisement` */

DROP TABLE IF EXISTS `advertisement`;

CREATE TABLE `advertisement` (
  `adid` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(100) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `link` text,
  `owner` varchar(256) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`adid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `advertisement` */

insert  into `advertisement`(`adid`,`filename`,`description`,`link`,`owner`,`active`) values (4,'6Ad_002.png','','','',1),(5,'7Ad_001.png','','','',1);

/*Table structure for table `aspnet_applications` */

DROP TABLE IF EXISTS `aspnet_applications`;

CREATE TABLE `aspnet_applications` (
  `ApplicationName` varchar(256) NOT NULL,
  `LoweredApplicationName` varchar(256) CHARACTER SET utf8 NOT NULL DEFAULT '""',
  `Applicationid` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`Applicationid`)
) ENGINE=MyISAM AUTO_INCREMENT=223 DEFAULT CHARSET=latin1;

/*Data for the table `aspnet_applications` */

insert  into `aspnet_applications`(`ApplicationName`,`LoweredApplicationName`,`Applicationid`,`Description`) values ('product','product',1,'product');

/*Table structure for table `aspnet_membership` */

DROP TABLE IF EXISTS `aspnet_membership`;

CREATE TABLE `aspnet_membership` (
  `ApplicationId` char(50) NOT NULL,
  `UserId` char(50) NOT NULL,
  `Password` varchar(128) NOT NULL,
  `PasswordFormat` int(11) NOT NULL,
  `PasswordSalt` varchar(128) NOT NULL,
  `MobilePIN` varchar(16) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `LoweredEmail` varchar(256) DEFAULT NULL,
  `PasswordQuestion` varchar(256) DEFAULT NULL,
  `PasswordAnswer` varchar(128) DEFAULT NULL,
  `IsApproved` tinyint(4) NOT NULL,
  `IsLockedOut` tinyint(4) DEFAULT '0',
  `CreateDate` datetime NOT NULL,
  `LastLoginDate` datetime NOT NULL,
  `LastPasswordChangedDate` datetime NOT NULL,
  `LastLockoutDate` datetime DEFAULT NULL,
  `FailedPasswordAttemptCount` int(11) DEFAULT '50',
  `FailedPasswordAttemptWindowStart` datetime DEFAULT NULL,
  `FailedPasswordAnswerAttemptCount` int(11) DEFAULT '50',
  `FailedPasswordAnswerAttemptWindowStart` datetime DEFAULT NULL,
  `Comment` longtext,
  PRIMARY KEY (`UserId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `aspnet_membership` */

insert  into `aspnet_membership`(`ApplicationId`,`UserId`,`Password`,`PasswordFormat`,`PasswordSalt`,`MobilePIN`,`Email`,`LoweredEmail`,`PasswordQuestion`,`PasswordAnswer`,`IsApproved`,`IsLockedOut`,`CreateDate`,`LastLoginDate`,`LastPasswordChangedDate`,`LastLockoutDate`,`FailedPasswordAttemptCount`,`FailedPasswordAttemptWindowStart`,`FailedPasswordAnswerAttemptCount`,`FailedPasswordAnswerAttemptWindowStart`,`Comment`) values ('1','2f69b51d-5fb5-493f-b36a-47299005df2a','Nqc+QwssDBjSmfkUtbL0TWTPCxQ=',1,'7Rwy1qjgj7Vd/nTp7uERkg==',NULL,'support@gmail.com',NULL,'','',1,0,'2015-09-08 12:20:27','2015-09-14 00:40:05','2015-09-08 12:20:27',NULL,50,NULL,50,NULL,NULL),('1','78c7a7cd-903f-43f3-afb9-01acf06d9edb','d2wN8ysBwlBosunH7tmuS2ehmfI=',1,'21kCypSzme/HUiZm46olNw==',NULL,'admin@gmail.com',NULL,'','',1,0,'2015-09-08 12:20:57','2015-09-16 14:13:16','2015-09-08 14:27:11',NULL,50,NULL,50,NULL,NULL),('1','91b5d694-985c-4601-b51d-1ea372201fa6','NWJacLWg4tpc6U/19W6PCd7bYxg=',1,'Y3BSSdmTWIVLtEny5MOO8g==',NULL,'member@gmail.com',NULL,'','',1,0,'2015-09-08 12:21:29','2015-09-12 13:49:11','2015-09-08 14:27:41',NULL,50,NULL,50,NULL,NULL),('1','d5669f9a-1482-4508-aa5b-ca8b323d648f','Nkim1JnOXgBoFi8WkxwRu+gRczw=',1,'Bw1wi5UpjlQ+HWS7trP99A==',NULL,'official@gmail.com',NULL,'','',1,0,'2015-09-08 12:22:04','2015-09-14 00:41:50','2015-09-08 14:28:13',NULL,50,NULL,50,NULL,NULL),('1','3d3dab7a-6372-4b14-96fc-d75a64bd247c','aFkgAHJ/Q9nSTRAswovMGdlb6SQ=',1,'Gk/gglUl6qicAV10IbJjbA==',NULL,'admin@demo.com',NULL,'','',1,0,'2015-09-08 12:07:11','2015-09-10 17:42:46','2015-09-08 12:07:11',NULL,50,NULL,50,NULL,NULL),('1','ecf1f7f9-117c-44d5-9d52-19777fc5f5c5','eVuQGiLORSNDqOHUlZJqlTk+1x4=',1,'43qEG6DF1vzjULyChTSfxQ==',NULL,'admin@demo.com',NULL,'','',1,0,'2015-09-08 12:59:09','2015-09-10 17:20:35','2015-09-08 12:59:09',NULL,50,NULL,50,NULL,''),('1','5d8c81d8-5842-466e-9678-8012f39a1ebe','t8QAER/Feza2D/LGdisMIxoLsGQ=',1,'Lp2F/LPeazFoFBZsMZCJsQ==',NULL,'official2@demo.com',NULL,'','',1,0,'2015-09-08 01:04:45','2015-09-10 17:23:22','2015-09-08 01:04:45',NULL,50,NULL,50,NULL,NULL),('1','09396e91-da41-4fe1-9ea5-d8b824be0f4b','WreMa/COa6ZDlpczeku+IIikJGE=',1,'T0QKZfPnrHac1yA9yDY8QA==',NULL,'taufique@demo.com',NULL,'na','na',1,0,'2015-09-08 03:09:11','2015-09-08 03:09:11','2015-09-08 03:09:11',NULL,50,NULL,50,NULL,''),('1','f8f5667b-c969-4eb3-a868-56cbe1b54904','N5mkz6CZezDLFfws3s6IrGgjuq8=',1,'qGjaxEABBkdk9P9mfs2IgQ==',NULL,'support2@demo.com',NULL,'','',1,0,'2015-09-08 01:13:25','2015-09-10 19:00:46','2015-09-08 01:13:25',NULL,50,NULL,50,NULL,''),('1','276e5c3b-5f53-4df9-9c92-cf74598548bd','SpwKtV1sVeNF7KBgTV2IE5odcfI=',1,'tM7h/z++rN/96SDXenuORA==',NULL,'Shahnewaj@demo.com',NULL,'na','na',1,0,'2015-09-08 03:13:16','2015-09-08 03:13:16','2015-09-08 03:13:16',NULL,50,NULL,50,NULL,''),('1','bbf9d4a5-1a61-427e-86a6-96945d2e6921','AG1BBbo0vo7ecqdqaGuuouH6Ngg=',1,'hIvQekrMfYulUM82wH07Tg==',NULL,'asadul@demo.com',NULL,'na','na',1,0,'2015-09-08 03:14:43','2015-09-08 16:43:38','2015-09-08 03:14:43',NULL,50,NULL,50,NULL,''),('1','0ad57560-fd43-4f82-904d-11b833e94bf3','5Jr2XSW8C1NhlBBvurh4Uwblg5Y=',1,'jsPy5L1O05JXufrU02ioBg==',NULL,'mizanur@demo.com',NULL,'na','na',1,0,'2015-09-08 03:15:31','2015-09-08 03:15:31','2015-09-08 03:15:31',NULL,50,NULL,50,NULL,''),('1','5b09dfc3-a1cb-4cea-93c3-2fee64bb01ec','WFc/iedEtRJrxZqLnxB39T8gpYI=',1,'DSmmH0Lfx8F3uI/Aqrjifg==',NULL,'swapon@demo.com',NULL,'na','na',1,0,'2015-09-08 03:16:15','2015-09-08 03:16:15','2015-09-08 03:16:15',NULL,50,NULL,50,NULL,''),('1','209a570f-7148-441b-bc38-aacc14756a16','Y6XRa+KoGGN8Zzm5PfSW4i1KrJM=',1,'mAHhRAPKh8Rc5shfh8rOXA==',NULL,'kabir@demo.com',NULL,'na','na',1,0,'2015-09-08 03:16:45','2015-09-08 03:16:45','2015-09-08 03:16:45',NULL,50,NULL,50,NULL,''),('1','0346b97c-48c2-4de3-8af4-09f9b34a9f20','AB7SmShY+dxOHGBY4g3NflD7P74=',1,'dLLb/jzkjyiPIgQojDM0tQ==',NULL,'aziz@demo.com',NULL,'na','na',1,0,'2015-09-08 03:18:30','2015-09-08 03:18:30','2015-09-08 03:18:30',NULL,50,NULL,50,NULL,''),('1','b52f4d31-fa9d-4ba2-91c7-95f0061599ea','L9IEOwxZ5tcG9mCGHZfqemQQNPE=',1,'ZMynRddU9BJIy6Cmm93uNg==',NULL,'aminul@demo.com',NULL,'na','na',1,0,'2015-09-08 03:19:04','2015-09-08 03:19:04','2015-09-08 03:19:04',NULL,50,NULL,50,NULL,''),('1','147d01c8-b14f-4ab4-8da9-a2030590e0aa','BRo0mYlBVAjj1UuGTJhGhBlZ/VU=',1,'MxbwdyusQlI8wicMahPySQ==',NULL,'kabirhasan@demo.com',NULL,'na','na',1,0,'2015-09-08 03:20:30','2015-09-08 03:20:30','2015-09-08 03:20:30',NULL,50,NULL,50,NULL,NULL),('1','07fac0cd-55b6-48d2-a334-7ffc25eda3d4','30ESDzRLZt/pmZGFQvT+KukDpWc=',1,'p4ex862JeD+/YtVXBfcczg==',NULL,'ashok@demo.com',NULL,'na','na',1,0,'2015-09-08 03:21:04','2015-09-08 03:21:04','2015-09-08 03:21:04',NULL,50,NULL,50,NULL,''),('1','bccc936f-176b-4043-b26c-13006d468665','ouQuMDDUaHFNCJf3FFnKXqok7Xw=',1,'VVcB+EBpHELyTQS6RyZbXA==',NULL,'mahmudul@demo.com',NULL,'na','na',1,0,'2015-09-08 03:21:49','2015-09-08 03:21:49','2015-09-08 03:21:49',NULL,50,NULL,50,NULL,''),('1','3d785aed-dd74-46ef-9b65-615952c8a429','93KdLWW1eBaRO4invydPMqwzFA4=',1,'MAbaJiFY51MRbMF4r29vBw==',NULL,'moyasi@demo.com',NULL,'na','na',1,0,'2015-09-08 03:22:13','2015-09-08 03:22:13','2015-09-08 03:22:13',NULL,50,NULL,50,NULL,''),('1','d22c6079-7189-4230-966a-e75637072d88','V0NBIIsavVSBI/sQ+BvPJ2wG+ZA=',1,'U2RB4Vy0Hm5GfjeuL1m3LA==',NULL,'moin@demo.com',NULL,'na','na',1,0,'2015-09-08 03:22:56','2015-09-08 03:22:56','2015-09-08 03:22:56',NULL,50,NULL,50,NULL,''),('1','298b9156-316c-4b23-aa4f-68f2e18c7290','rsbFiV2N7TErSi3y+JrE/nxp8tY=',1,'uf3M18N6XWnqUNd4UJMOqg==',NULL,'alam@demo.com',NULL,'na','na',1,0,'2015-09-08 03:38:33','2015-09-08 03:38:33','2015-09-08 03:38:33',NULL,50,NULL,50,NULL,''),('1','bf5b7332-d601-4d13-94ef-14ffd28d37cc','QaqsrsqYKbURFs7T7uXOUyQOW0Y=',1,'EIn8VSO9Tb2sJCVInleQfw==',NULL,'tamal@demo.com',NULL,'na','na',1,0,'2015-09-08 03:39:02','2015-09-08 03:39:02','2015-09-08 03:39:02',NULL,50,NULL,50,NULL,''),('1','8d4a5466-4e0b-4626-9cdd-14afc23ecf06','pwhTF8Ad0Hfj+7Rb2q5GbHzIvEw=',1,'JAO9d/jaiuaBYsAPFpx3eQ==',NULL,'mansur@yahoo.com',NULL,'12345','12345',1,0,'2015-09-08 03:40:14','2015-09-08 03:40:14','2015-09-08 03:40:14',NULL,50,NULL,50,NULL,''),('1','21ed6ce5-0c59-4014-93bc-de8149c6c504','SDrgMOB1ifg6RK0WpaxvgCjM5GQ=',1,'wLzutdxx/HpK9FHmplwuFA==',NULL,'moazzem@demo.com',NULL,'na','na',1,0,'2015-09-09 05:44:29','2015-09-09 05:44:29','2015-09-09 05:44:29',NULL,50,NULL,50,NULL,''),('1','153538e5-fe33-4d85-a4d7-f02d62068e35','yh5llpgBgrVt8pYS5vsjsvjf1bo=',1,'gK8YnnHIa03E+qe8r7tzcw==',NULL,'iqbal@demo.com',NULL,'na','na',1,0,'2015-09-09 05:45:18','2015-09-09 05:45:18','2015-09-09 05:45:18',NULL,50,NULL,50,NULL,NULL),('1','2578af7e-e7df-43c2-be10-a4109f5e021d','0lDIM2JBwqvp4g/9B58fXVUUouM=',1,'UbKwl8ZRXQz+02elVxD/iQ==',NULL,'bakar@demo.com',NULL,'na','na',1,0,'2015-09-09 05:48:02','2015-09-09 05:48:02','2015-09-09 05:48:02',NULL,50,NULL,50,NULL,NULL),('1','9d9b8217-43e3-4501-8960-b99a0e3f1d7c','31stwtqVJbdLKCY7Pg324yx/KOE=',1,'z+Zb2/k1S4yJS5/cGySQpg==',NULL,'harun@demo.com',NULL,'na','na',1,0,'2015-09-09 05:48:33','2015-09-09 05:48:33','2015-09-09 05:48:33',NULL,50,NULL,50,NULL,''),('1','db9c4adb-6ba3-45c0-9d2b-e5b8bb976e5e','1oSUxRm9pyqGoWfvKGIFg+wj0cg=',1,'2TBE7fkmMuHHBbPXbJH0Cw==',NULL,'zabed@demo.com',NULL,'na','na',1,0,'2015-09-09 05:49:18','2015-09-09 05:49:18','2015-09-09 05:49:18',NULL,50,NULL,50,NULL,''),('1','79d7186b-58df-4430-bad2-ae93ebdb2d34','ZdrYUEliB2FS2D+o1YyCv0/klMg=',1,'mM/32hqj4esgs6KSGAW2pw==',NULL,'mosaddek@demo.com',NULL,'na','na',1,0,'2015-09-09 05:49:42','2015-09-09 05:49:42','2015-09-09 05:49:42',NULL,50,NULL,50,NULL,NULL),('1','e010f64f-b038-4a64-8290-df39ec9db702','7Miwekobj+cC7Midr5BuOEvAtGc=',1,'daaWwqzdV578Kyq0CIa3Jg==',NULL,'rashid@demo.com',NULL,'na','na',1,0,'2015-09-09 05:50:13','2015-09-09 05:50:13','2015-09-09 05:50:13',NULL,50,NULL,50,NULL,NULL),('1','2b9edb7d-72a8-4004-92c8-9510113a5863','J0Cf3meok8oF9CHNGu5zJ4cg3dI=',1,'MSHoQHdc5cRMtgKubOMxPA==',NULL,'dipak@demo.com',NULL,'na','na',1,0,'2015-09-09 05:50:33','2015-09-09 05:50:33','2015-09-09 05:50:33',NULL,50,NULL,50,NULL,''),('1','7e64ae24-45a6-4b57-93d9-0e70930cd6a9','SR5UAqDnAJEvP4nfRrJ2LWMvi94=',1,'OGCgepraKUADaVKC19H7XQ==',NULL,'gias@demo.com',NULL,'na','na',1,0,'2015-09-09 05:50:57','2015-09-09 05:50:57','2015-09-09 05:50:57',NULL,50,NULL,50,NULL,''),('1','86c70d51-4c9d-4231-83f4-4b6445cc3423','v13rj+qMh3yQEMJ9fQwVDglk8Fg=',1,'7iQ4alobYZhWtdhwa/hHwg==',NULL,'sayed@demo.com',NULL,'na','na',1,0,'2015-09-09 05:51:25','2015-09-09 05:51:25','2015-09-09 05:51:25',NULL,50,NULL,50,NULL,''),('1','9dfdae09-3101-4549-875d-d4c4755dbcf9','8q6FsJUts947ZkllpsO+/oDfBJc=',1,'P8Vd1hxtwURTmc4cMSii6Q==',NULL,'husnul@demo.com',NULL,'na','na',1,0,'2015-09-09 05:51:54','2015-09-09 05:51:54','2015-09-09 05:51:54',NULL,50,NULL,50,NULL,''),('1','42179707-31e1-4f04-9f01-e6b0c11b5625','eKOhPLgoDNgTQyr/FtlmDQN/EgI=',1,'bvzp8Yl/FnhH/MaPuZtmjQ==',NULL,'mahfuz@demo.com',NULL,'na','na',1,0,'2015-09-09 05:52:29','2015-09-09 05:52:29','2015-09-09 05:52:29',NULL,50,NULL,50,NULL,''),('1','e356ec19-cc2a-453e-87ab-32123a20d2f3','6c+Kl9kOgIGrn3tKVjIyquCQCYo=',1,'W+Qxb3PaGJ7mIn/pU6HXwQ==',NULL,'ataur@demo.com',NULL,'na','na',1,0,'2015-09-09 05:52:50','2015-09-09 05:52:50','2015-09-09 05:52:50',NULL,50,NULL,50,NULL,''),('1','1f99e8f2-5b61-4a29-b12d-51abfe53cc1a','CuOyszJjufYaMJwNmBUzc4dJey4=',1,'C8UNhH2dqftXOE3EJjV2Cw==',NULL,'prodip@yahoo.com',NULL,'na','na',1,0,'2015-09-09 05:54:16','2015-09-09 05:54:16','2015-09-09 05:54:16',NULL,50,NULL,50,NULL,''),('1','7bfdbdab-005e-43a2-9000-363893ed8b62','23W/S8bnV2R6eti5cL4ay0NBl2U=',1,'XbrqGyjATnvseb+KXUmwow==',NULL,'faruk@demo.com',NULL,'na','na',1,0,'2015-09-09 05:54:36','2015-09-09 05:54:36','2015-09-09 05:54:36',NULL,50,NULL,50,NULL,''),('1','28fb9f76-f73c-4a31-80ac-5d90d2222261','m+JUCbvWzn1M64JUhGdV2BLoroE=',1,'IaZNEHJAvHbryS8b8GZkfg==',NULL,'golam@demo.com',NULL,'na','na',1,0,'2015-09-09 05:55:00','2015-09-09 05:55:00','2015-09-09 05:55:00',NULL,50,NULL,50,NULL,''),('1','9ef3c785-f96c-438d-9f8d-be60e5ab8711','TQ0nAGwzYEAah8ZUzxQAdvpJXhc=',1,'QNOZHNjo22rGDN6wp+0T8Q==',NULL,'shahjahan@demo.com',NULL,'na','na',1,0,'2015-09-09 05:55:31','2015-09-09 05:55:31','2015-09-09 05:55:31',NULL,50,NULL,50,NULL,''),('1','cbedab0c-2b41-4b35-8fc5-369a24e157f2','T8vXJqoUkAsfSiHWDqs2FZUoY64=',1,'pyfvmCup2Y9McmUsRLQXgQ==',NULL,'mdmizanur@demo.com',NULL,'na','na',1,0,'2015-09-09 05:55:58','2015-09-09 05:55:58','2015-09-09 05:55:58',NULL,50,NULL,50,NULL,''),('1','05d89efa-b2fc-4a64-8582-6a2a08e4f89d','H3fKXVI6iRIvI9ZHyE+0lMZOnjw=',1,'QbAIunF85snroQTM6ACcPw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-09 05:56:50','2015-09-09 05:56:50','2015-09-09 05:56:50',NULL,50,NULL,50,NULL,''),('1','2822a540-75c7-404b-9797-21dbf8e6ddb3','w1gISi6AN2SMnAEpkfa9UQClVEU=',1,'HAmdvv0mOvkiZ2/YBMZplA==',NULL,'habibur@demo.com',NULL,'na','na',1,0,'2015-09-09 05:57:27','2015-09-09 05:57:27','2015-09-09 05:57:27',NULL,50,NULL,50,NULL,''),('1','ad2a0859-1a01-413a-80d2-7c7df4311b43','k0BJfPxVqkzHv4Orsd9GvPEf+n8=',1,'aoO5nj9IL/fz/S3+tD9eYg==',NULL,'jafar@demo.com',NULL,'na','na',1,0,'2015-09-09 05:57:48','2015-09-09 05:57:48','2015-09-09 05:57:48',NULL,50,NULL,50,NULL,''),('1','62106611-1cfc-40f3-ab2c-f16a7daa8a0f','ixpB3gA0nlfVYFYa3AazTcRbtGs=',1,'18tOXkuO0Da5P0eE/iKdGw==',NULL,'shasuzzaman@demo.com',NULL,'na','na',1,0,'2015-09-09 05:58:13','2015-09-09 05:58:13','2015-09-09 05:58:13',NULL,50,NULL,50,NULL,''),('1','95d4bbc1-288f-4a0f-88e0-bec597d4fb59','y0H54oYHjUl2/s6LEYHyQA0QZio=',1,'qG4fA2KBwLb36byhTE2P9Q==',NULL,'shahalam@demo.com',NULL,'na','na',1,0,'2015-09-09 06:26:28','2015-09-09 06:26:28','2015-09-09 06:26:28',NULL,50,NULL,50,NULL,NULL),('1','09322d4a-4747-4c35-83f1-d371d3ac0225','LuJcBe6U/oNinO+Y9n0zCQaYXbo=',1,'JZWVaX/MI7GNX/L9Ayj9YA==',NULL,'shamsul@demo.com',NULL,'na','na',1,0,'2015-09-09 06:26:50','2015-09-09 06:26:50','2015-09-09 06:26:50',NULL,50,NULL,50,NULL,NULL),('1','fc3299b9-5f9d-44f6-814b-b97a8c296e0c','qgRwoutsddZzSt8J68tTq11Sa04=',1,'hQigiRfSJyhiT6Rl8i7ZxA==',NULL,'ataul@demo.com',NULL,'na','na',1,0,'2015-09-09 06:27:23','2015-09-09 06:27:23','2015-09-09 06:27:23',NULL,50,NULL,50,NULL,NULL),('1','7a0280f5-f870-4084-bf56-86afacc5dfc9','0ZEHvz7ugRLm+tMKH3wgKDDxwcQ=',1,'OSeBkYbZ7AivcjuqVfZIag==',NULL,'monjur@demo.com',NULL,'na','na',1,0,'2015-09-09 06:27:44','2015-09-09 06:27:44','2015-09-09 06:27:44',NULL,50,NULL,50,NULL,NULL),('1','efab2c64-f40b-4e0b-88cd-eec72b1d6c2b','rwtNGkpe6g/F45dumSqR4HVOl/Y=',1,'0E1peOCHsAemfIJxOKbmGA==',NULL,'kasir@demo.com',NULL,'na','na',1,0,'2015-09-09 06:28:29','2015-09-09 06:28:29','2015-09-09 06:28:29',NULL,50,NULL,50,NULL,NULL),('1','09163695-bb59-4b38-b535-075a04018611','j1yDfV/qpddaaFf64/c8HmzFopo=',1,'lcWUh9OdSCcSvFvvvQI8iQ==',NULL,'shahnewaj@yahoo.com',NULL,'na','na',1,0,'2015-09-09 06:28:52','2015-09-09 06:28:52','2015-09-09 06:28:52',NULL,50,NULL,50,NULL,''),('1','ab40f0b5-7437-4b13-8bef-88eef51e6901','oxACtOo5Klj+5UWVd4h8xWq8QcM=',1,'OuSBrirRcnR2NQyk4Pjuzw==',NULL,'ashraful@demo.com',NULL,'na','na',1,0,'2015-09-09 06:29:11','2015-09-09 06:29:11','2015-09-09 06:29:11',NULL,50,NULL,50,NULL,NULL),('1','3abb84e6-d841-4f88-98f6-1734386ae4f2','PAlO9zfu3CAqnbXfDJTtpthx3m4=',1,'1ufwqDGWsfhl7KoPAZrJjw==',NULL,'prabal@demo.com',NULL,'na','na',1,0,'2015-09-09 06:29:31','2015-09-09 06:29:31','2015-09-09 06:29:31',NULL,50,NULL,50,NULL,NULL),('1','edaa548a-553c-4e2b-a4c8-4fb400a79e3c','b4n115XOk8NRhbwMTq+v9nh/CnU=',1,'zKCnhcos/GAFcnZWuvYmVw==',NULL,'malek@demo.com',NULL,'na','na',1,0,'2015-09-09 06:30:36','2015-09-09 06:30:36','2015-09-09 06:30:36',NULL,50,NULL,50,NULL,NULL),('1','a4702cff-ec4f-4d25-be7c-4aff414649b2','VIsPdggWlNoHh13NagzbiNqRHYI=',1,'3j11QlHXWdgg7f9W9jLMHQ==',NULL,'ferdau@demo.com',NULL,'na','na',1,0,'2015-09-09 06:31:04','2015-09-09 06:31:04','2015-09-09 06:31:04',NULL,50,NULL,50,NULL,NULL),('1','6224edae-2f18-4837-87c3-a29f2db222ae','7lxfNNfQUXSlqFV+UMFAMbv7SCI=',1,'+cPFO1hXMrxtUCd79iKqqg==',NULL,'sharifuzzaman@demo.com',NULL,'na','na',1,0,'2015-09-09 06:31:27','2015-09-09 06:31:27','2015-09-09 06:31:27',NULL,50,NULL,50,NULL,NULL),('1','0fe20524-9823-4bf2-980e-5efa3c02ce51','HBmArcNeSTZaJe1pj2TVcENGE04=',1,'kvn3NQqPK9fu89WVRZcZFg==',NULL,'tofael@demo.com',NULL,'na','na',1,0,'2015-09-09 06:32:07','2015-09-09 06:32:07','2015-09-09 06:32:07',NULL,50,NULL,50,NULL,NULL),('1','6fd93e7e-8707-42ad-ada7-44fe0c81a307','ktog8BXmOdpZedn2woQXQUJso2w=',1,'8nSiBiTcocsbmVj+ebLvQQ==',NULL,'manjurul@ddemo.com',NULL,'na','na',1,0,'2015-09-09 06:32:45','2015-09-09 06:32:45','2015-09-09 06:32:45',NULL,50,NULL,50,NULL,NULL),('1','2df14d78-a6a3-416e-a7f6-bcf9ba94e613','AtwgGrIPL33hQtTafs+tq3elLCI=',1,'dMDFKod/webujXZk5bo78A==',NULL,'moshiur@demo.com',NULL,'na','na',1,0,'2015-09-09 06:35:50','2015-09-09 06:35:50','2015-09-09 06:35:50',NULL,50,NULL,50,NULL,NULL),('1','b44a7642-bf83-4a09-ac6c-7a7ee12bb571','XcKrufORvapeM1zI5XFQpu1bNx0=',1,'28hHiou0gOnB3G7Kc6p+ng==',NULL,'rafiqul@demo.com',NULL,'na','na',1,0,'2015-09-09 06:36:44','2015-09-09 06:36:44','2015-09-09 06:36:44',NULL,50,NULL,50,NULL,NULL),('1','e9205553-466c-44a9-99fb-48c12ba8e523','7izw70QpLTBQkHP/MkSDp+Yr04A=',1,'kdVLon7NT/3NpkByGEI8tg==',NULL,'asaduzzaman@demo.com',NULL,'na','na',1,0,'2015-09-09 06:37:28','2015-09-09 06:37:28','2015-09-09 06:37:28',NULL,50,NULL,50,NULL,NULL),('1','88de013f-fe01-4c86-875f-890dcc4196b2','I4GRXzW2p1+wwulr8IhKFG1ddU4=',1,'yY7nHUFI5VvocrmnLZbm8g==',NULL,'rafiqul2@demo.com',NULL,'na','na',1,0,'2015-09-09 06:38:12','2015-09-09 06:38:12','2015-09-09 06:38:12',NULL,50,NULL,50,NULL,NULL),('1','c85daccd-d6ce-44eb-86f3-91e78c0f00a1','NOcRmsdW6nOI4Mnq4bdhHaEO2kc=',1,'V5ztR72RYCsWKrBMcA7V0Q==',NULL,'sarwarr@demo.com',NULL,'na','na',1,0,'2015-09-09 06:38:56','2015-09-09 06:38:56','2015-09-09 06:38:56',NULL,50,NULL,50,NULL,NULL),('1','b3c3f579-2d7e-405c-928a-3c1e8348f867','5M9HqHuSFgmGP2/ub65jdCO96Vc=',1,'x+tHqG6XE8ZRKugdCVa7IA==',NULL,'fazal@demo.com',NULL,'na','na',1,0,'2015-09-09 06:39:23','2015-09-09 06:39:23','2015-09-09 06:39:23',NULL,50,NULL,50,NULL,NULL),('1','15465ec3-8f3b-4213-b777-8f16d35766b9','1g+x/m53YsL+/u8CCBVJ+TUZfiI=',1,'HLJrMtkQ1xHZ9BKcDI+9rg==',NULL,'razzak@demo.com',NULL,'na','na',1,0,'2015-09-09 06:39:49','2015-09-09 06:39:49','2015-09-09 06:39:49',NULL,50,NULL,50,NULL,NULL),('1','a59f00bb-86af-4ad4-a40d-bbdae43bb1d5','Rk+qopxxpxIr/zCDuquErcHpktg=',1,'otGMp4UXooNXyutX8WclWA==',NULL,'ataur2@demo.com',NULL,'na','na',1,0,'2015-09-09 06:40:09','2015-09-09 06:40:09','2015-09-09 06:40:09',NULL,50,NULL,50,NULL,NULL),('1','0cbb7e3e-c4ab-4f8d-8cdf-bf5ee18b1a70','SrY65wbcyttD6zFwl5BYkaveG+8=',1,'6ub8A1grYxw5HsiigctEcw==',NULL,'jainal@demo.com',NULL,'na','na',1,0,'2015-09-09 06:40:33','2015-09-09 06:40:33','2015-09-09 06:40:33',NULL,50,NULL,50,NULL,NULL),('1','e2013537-1958-4d43-9477-0be7e4234e7e','+CnM2enM7gHT7C9p0NuoDXjSkSM=',1,'7/EMG5g0QzuuI1wXVWi3EA==',NULL,'habibur2@demo.com',NULL,'na','na',1,0,'2015-09-09 06:41:18','2015-09-09 06:41:18','2015-09-09 06:41:18',NULL,50,NULL,50,NULL,NULL),('1','b96b14dc-7827-41c1-907d-9c9c6fcbadb9','ABTLyhHC6QRAkyFe8h2Iltl1LwU=',1,'85hAMJkuepIYVbdTFG5A+g==',NULL,'asir@demo.com',NULL,'na','na',1,0,'2015-09-09 06:41:54','2015-09-09 06:41:54','2015-09-09 06:41:54',NULL,50,NULL,50,NULL,NULL),('1','d160473c-8187-4342-a73d-559784376f63','mD1YYor+O4r1AIut43yNiGMbKyc=',1,'G8sjkJgm7YnbckYtrNM6wQ==',NULL,'zeyadul@demo.com',NULL,'na','na',1,0,'2015-09-09 06:42:24','2015-09-09 06:42:24','2015-09-09 06:42:24',NULL,50,NULL,50,NULL,NULL),('1','db8840c6-b731-42b9-90aa-6a722ca24956','ChVrwVxttoyhFeOvcYfZk28FhX0=',1,'2l6nXTEGm0eS8QJWiBmnhg==',NULL,'taurit@yahoo.com',NULL,'na','na',1,0,'2015-09-09 06:42:51','2015-09-09 06:42:51','2015-09-09 06:42:51',NULL,50,NULL,50,NULL,NULL),('1','c9ad8424-8436-49d7-9da0-91b34393c105','WrfNPsVbeTrjdu5dtjscLooTX3c=',1,'Gq2dRMTUUEe+dJeRIdJXJw==',NULL,'mokaddem@demo.com',NULL,'na','na',1,0,'2015-09-09 06:43:52','2015-09-09 06:43:52','2015-09-09 06:43:52',NULL,50,NULL,50,NULL,NULL),('1','f305b6e3-99a6-4c8a-b700-86ea0c6db151','dnNRm9+s2Fom5G/rxwqr5S4CVzM=',1,'UhX8uY9sDWN0STK5ik0FYw==',NULL,'niaz@demo.com',NULL,'na','na',1,0,'2015-09-09 06:44:27','2015-09-09 06:44:27','2015-09-09 06:44:27',NULL,50,NULL,50,NULL,NULL),('1','18663125-bbc3-4ee1-a924-58f6ca7f8159','BI7kPeVikVkQqNNq9ZnZmjd4pQA=',1,'i4/BUZfHsCNlLfEiW9eQ4g==',NULL,'maksudur@demo.com',NULL,'na','na',1,0,'2015-09-09 06:44:58','2015-09-09 06:44:58','2015-09-09 06:44:58',NULL,50,NULL,50,NULL,NULL),('1','bca55a10-5788-42da-a507-1fae4bac676f','vjXMLpqKKSS/gL/RY1pEhscAl74=',1,'pFIQXqQhZs2R3LLPrMZXWg==',NULL,'fakhrul2@demo.com',NULL,'na','na',1,0,'2015-09-09 06:45:38','2015-09-09 06:45:38','2015-09-09 06:45:38',NULL,50,NULL,50,NULL,NULL),('1','ed2a3579-a8a5-4471-8f24-ce95f02e0ba1','wU0WcskpJTELY1Gwe29P7qLK01I=',1,'Z3HUd4/MDMkf+umxwtvong==',NULL,'jagadis@demo.com',NULL,'na','na',1,0,'2015-09-09 06:46:05','2015-09-09 06:46:05','2015-09-09 06:46:05',NULL,50,NULL,50,NULL,NULL),('1','f3138020-5f33-41ab-93c4-ca34f2df5478','4Y5Uc//WtpONaGHKLtsF6RBbTdw=',1,'yMZ18zYNoN6PZvYmq6J/fA==',NULL,'shahjahan2@demo.com',NULL,'na','na',1,0,'2015-09-09 06:47:17','2015-09-09 06:47:17','2015-09-09 06:47:17',NULL,50,NULL,50,NULL,NULL),('1','5c3176b9-acaf-4a09-988c-8bd5ea9ca09a','t/78cegyKloaki5SzHsGhUMrZEw=',1,'KqzyDF7ao6mIwg7+WtR+qA==',NULL,'sheikh@yahoo.com',NULL,'na','na',1,0,'2015-09-09 06:48:21','2015-09-09 06:48:21','2015-09-09 06:48:21',NULL,50,NULL,50,NULL,NULL),('1','f758ab9f-27bd-4da2-842a-9942e0f39d59','GMiCqCUNyff9AR0T4Z21wILOo6k=',1,'03/lDKAJaWVhL09FvAa+nw==',NULL,'mahbubur@demo.com',NULL,'na','na',1,0,'2015-09-09 06:48:47','2015-09-09 06:48:47','2015-09-09 06:48:47',NULL,50,NULL,50,NULL,NULL),('1','3f3ba2de-60fe-4e54-92ff-6f2bf177a1c0','9G7oW/hmgn0FJkonzx176WIv6T0=',1,'e90nSfruKphcR30V8sBPcw==',NULL,'khandker@demo.com',NULL,'na','na',1,0,'2015-09-09 06:49:11','2015-09-09 06:49:11','2015-09-09 06:49:11',NULL,50,NULL,50,NULL,NULL),('1','dfc07b44-6c4e-4aab-870c-390630668363','Lig2UjKGgA0SMauNzVQ4XUskxD8=',1,'EnHweTOIXSrX2ua2wdMsEQ==',NULL,'sahab@demo.com',NULL,'na','na',1,0,'2015-09-09 06:49:31','2015-09-09 06:49:31','2015-09-09 06:49:31',NULL,50,NULL,50,NULL,NULL),('1','f1e5fe94-62ab-47a3-beda-e01e587a1fc2','pxOsHixj1FQIeaiakh6AW5ees2Y=',1,'Y0aPpAoldtHuAmZ2NK7hLw==',NULL,'ajit@demo.com',NULL,'na','na',1,0,'2015-09-09 06:49:53','2015-09-09 06:49:53','2015-09-09 06:49:53',NULL,50,NULL,50,NULL,NULL),('1','e2417c4c-e7f4-4101-ba85-4ebf25e39ef5','4zd+XD5pZwa4R6FGiIRPww1+GPA=',1,'1YMxijSMcNp/7PUAGQxFbg==',NULL,'rauf@demo.com',NULL,'na','na',1,0,'2015-09-09 06:50:35','2015-09-09 06:50:35','2015-09-09 06:50:35',NULL,50,NULL,50,NULL,NULL),('1','523fb599-af10-450b-9318-a71c11bd0482','aMiOGA5dPjEgdoBBXsbMG9LEwFE=',1,'GbQ5mqOHvDGwj6Pg7guHZQ==',NULL,'nazim@demo.com',NULL,'na','na',1,0,'2015-09-09 06:51:08','2015-09-09 06:51:08','2015-09-09 06:51:08',NULL,50,NULL,50,NULL,NULL),('1','52e8d235-8617-4407-a9b5-2200eef6dd48','+01FvDFWiMDj3yOP4K7m2dzDAzU=',1,'XlYg+bYT4DrplZrr8F/GNQ==',NULL,'azam@demo.com',NULL,'na','na',1,0,'2015-09-09 06:51:29','2015-09-09 06:51:29','2015-09-09 06:51:29',NULL,50,NULL,50,NULL,NULL),('1','5828ca83-6b53-4f32-808a-fa35c348ea56','1iH5J3nTURbjOQ6oGZYBWbl6HFw=',1,'Zec+Xm5sVGm/cW8Ls1PIMw==',NULL,'alam2@demo.com',NULL,'na','na',1,0,'2015-09-09 06:52:23','2015-09-09 06:52:23','2015-09-09 06:52:23',NULL,50,NULL,50,NULL,NULL),('1','fe695c15-955a-4622-8d95-d27e155be2e3','g2MW5X1Df714UUBqjQARtfhltps=',1,'His1Noowtss3WNWEcdCwow==',NULL,'golzar@demo.com',NULL,'na','na',1,0,'2015-09-09 06:52:56','2015-09-09 06:52:56','2015-09-09 06:52:56',NULL,50,NULL,50,NULL,NULL),('1','5b9178b3-0a13-4289-bb93-de462ebea400','WS3Vi4mKxMuzzmiJYo8Q8FkFpCc=',1,'sg86mC5cUviRx95oYxcvKw==',NULL,'taskinur@demo.com',NULL,'na','na',1,0,'2015-09-09 06:53:24','2015-09-09 06:53:24','2015-09-09 06:53:24',NULL,50,NULL,50,NULL,NULL),('1','a15ff049-8df3-42aa-8d93-598ad3d1610d','pN5sL+/TlEpN/qPdo0LZ/rMY24M=',1,'0yXKlR59kwjfPq0vTjsnrA==',NULL,'sanjib@demo.com',NULL,'na','na',1,0,'2015-09-09 06:53:51','2015-09-09 06:53:51','2015-09-09 06:53:51',NULL,50,NULL,50,NULL,NULL),('1','4e15ec51-2aa0-43e9-bffd-e14bc6538571','sD5SJ40dieemZpZLhZXstR6xK3o=',1,'mopSqcWYf898u8GI6j4QsQ==',NULL,'kamalesh@demo.com',NULL,'na','na',1,0,'2015-09-09 06:55:35','2015-09-09 06:55:35','2015-09-09 06:55:35',NULL,50,NULL,50,NULL,NULL),('1','d1c8ddad-b4d8-4a31-a8d8-c1d0f1f0e0eb','PU3Vd/UmTGqut3xdlCaYkWSpR3A=',1,'WD8GW/PxpYWYctWR81qUhQ==',NULL,'aanwar@demo.com',NULL,'na','na',1,0,'2015-09-09 06:55:51','2015-09-09 06:55:51','2015-09-09 06:55:51',NULL,50,NULL,50,NULL,NULL),('1','7e15aa58-b920-4db1-aace-a97a894d7419','7SoSmlj3gxK5h6UGvBx6614SH5c=',1,'nDNjsLZtOd4bCJXxpjsA4A==',NULL,'ezaul@demo.com',NULL,'na','na',1,0,'2015-09-09 06:56:25','2015-09-09 06:56:25','2015-09-09 06:56:25',NULL,50,NULL,50,NULL,NULL),('1','36d16924-e6f3-428c-a45f-9dfcd472705b','lom5WJaNdLPoDZZYnf65LUifWRU=',1,'ga0LggB8rag74UifVyiJTw==',NULL,'habibur@demo.com',NULL,'na','na',1,0,'2015-09-09 06:56:48','2015-09-09 06:56:48','2015-09-09 06:56:48',NULL,50,NULL,50,NULL,NULL),('1','13e93b60-f429-43d5-a666-dbe19b0e23ba','zp8KSVPHpduGvCDoCWANTSpGMQA=',1,'KbHYGINnmsU1hs9wFjW8ag==',NULL,'alam2@demo.com',NULL,'na','na',1,0,'2015-09-09 06:57:09','2015-09-09 06:57:09','2015-09-09 06:57:09',NULL,50,NULL,50,NULL,NULL),('1','4ab973ee-b8a0-486c-aa62-0ecd9040d319','jMsFNxiCJLC6F67uSnp5DiTZunM=',1,'pcaM7Ye0oMwW9W2duVl6kg==',NULL,'aanwar@demo.com',NULL,'na','na',1,0,'2015-09-09 06:57:21','2015-09-09 06:57:21','2015-09-09 06:57:21',NULL,50,NULL,50,NULL,NULL),('1','71dd870e-d434-41bf-ab22-a688919e0913','xLK/vmL6g2+iw0Om06mxeqkBRAM=',1,'KKYb/qzBS4KnY3ekgEJV7A==',NULL,'golzar@demo.com',NULL,'na','na',1,0,'2015-09-09 06:57:35','2015-09-09 06:57:35','2015-09-09 06:57:35',NULL,50,NULL,50,NULL,NULL),('1','87582f41-e24a-4115-89a8-9e7f9ae9a91e','p/ihInKlMzLo3z4cEWYtVGpqsVc=',1,'OD9k2WzVmr45EhHCtnvldw==',NULL,'aabir52@yahoo.com',NULL,'na','na',1,0,'2015-09-09 06:57:48','2015-09-09 06:57:48','2015-09-09 06:57:48',NULL,50,NULL,50,NULL,NULL),('1','66ccdd4a-3a62-4116-a52b-3fd8c60a84be','BBlZZi/5w5yw0228PV7uxH+Y4Xk=',1,'hV0pHLVDF9mQzW9ww5RWgQ==',NULL,'aabir52@yahoo.com',NULL,'na','na',1,0,'2015-09-09 06:58:07','2015-09-09 06:58:07','2015-09-09 06:58:07',NULL,50,NULL,50,NULL,NULL),('1','30935910-8970-48e6-a4d5-2ae0204885ab','Mx5XSbUG7SRIVU5XZN8VPQMmMnI=',1,'T5Yzx2QNGjRIlbhRss0Jyw==',NULL,'habibur@demo.com',NULL,'na','na',1,0,'2015-09-09 06:58:26','2015-09-09 06:58:26','2015-09-09 06:58:26',NULL,50,NULL,50,NULL,NULL),('1','5927637a-8745-4beb-9bd9-cdccaa28d2ec','V/tQK+nG/Gd3Se52RMY1G01l+o0=',1,'fVLhbD30euKJ7X+hTv9HJw==',NULL,'alam2@demo.com',NULL,'na','na',1,0,'2015-09-09 06:58:41','2015-09-09 06:58:41','2015-09-09 06:58:41',NULL,50,NULL,50,NULL,NULL),('1','10be09fb-25f0-4685-b921-1396d745d574','2uBrQMD+RgQzFiI2qCY3VaW1cN8=',1,'0sY3vrYMJMU/Byy03ezQdw==',NULL,'ataul@demo.com',NULL,'na','na',1,0,'2015-09-09 06:58:58','2015-09-09 06:58:58','2015-09-09 06:58:58',NULL,50,NULL,50,NULL,NULL),('1','af7d79f8-c5c1-4ad0-a7d4-719b842611f8','WNKGqCxvcmejnCPrVQhrz0GgdcQ=',1,'cyD0XxHWyrOJv0LSPvLsrQ==',NULL,'golzar@demo.com',NULL,'na','na',1,0,'2015-09-09 06:59:13','2015-09-09 06:59:13','2015-09-09 06:59:13',NULL,50,NULL,50,NULL,NULL),('1','6f67513d-82fc-4544-a511-fd498fe86570','7UNwsVeG33b5SdpIz4rlrmwhz/0=',1,'qTbvR2oTwZgCxtCmu2hicg==',NULL,'rafiqul@demo.com',NULL,'na','na',1,0,'2015-09-09 06:59:30','2015-09-09 06:59:30','2015-09-09 06:59:30',NULL,50,NULL,50,NULL,NULL),('1','19a5df04-7ced-43b5-a74d-b71283fd6c7e','0zxX6s/2YlRYtEatTWP74CKHJHc=',1,'nOP2O6WGG0YuO6DnLtkY1g==',NULL,'ataul@demo.com',NULL,'na','na',1,0,'2015-09-09 06:59:45','2015-09-09 06:59:45','2015-09-09 06:59:45',NULL,50,NULL,50,NULL,NULL),('1','57a4dd9e-e5a0-41da-a0ca-f72811007ab7','Jp2PRv/5+RUga8tybYkORUBWQ1s=',1,'Lwhy4BIuo5ZOEHFTpXRzQw==',NULL,'golzar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:00:20','2015-09-09 07:00:20','2015-09-09 07:00:20',NULL,50,NULL,50,NULL,NULL),('1','6e86150f-4b0d-4a2b-8a21-acc910b7ae84','capJYpt+ht0tZTccC3KImmGBFLs=',1,'Pe4LZSofalLy4gRRdecNkg==',NULL,'aanwar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:00:39','2015-09-09 07:00:39','2015-09-09 07:00:39',NULL,50,NULL,50,NULL,NULL),('1','95b24e23-f211-40e9-a1d3-cdd952525b6e','BxhtsIoVBwIe+wijsQeYn7QM7uU=',1,'meXB5dVOXbwhsvLiXY5I9A==',NULL,'jagadis@demo.com',NULL,'na','na',1,0,'2015-09-09 07:00:54','2015-09-09 07:00:54','2015-09-09 07:00:54',NULL,50,NULL,50,NULL,NULL),('1','43c4a6d3-597e-4520-93c5-e8a1f0fb1e48','3z6LzmCRmZyGuKIsyenfrKXVrFc=',1,'i4RtgfrpD0VD1Rj8PGnsjQ==',NULL,'aabir52@yahoo.com',NULL,'na','na',1,0,'2015-09-09 07:01:07','2015-09-09 07:01:07','2015-09-09 07:01:07',NULL,50,NULL,50,NULL,NULL),('1','3dc31b1a-2f77-4532-8d50-dedc66e87e4f','Z4bpiotyQ9PHv1s4VdZRLNu64KM=',1,'Lcxs4kLEJpfS7Nmk4l9Qfw==',NULL,'habibur@demo.com',NULL,'na','na',1,0,'2015-09-09 07:01:22','2015-09-09 07:01:22','2015-09-09 07:01:22',NULL,50,NULL,50,NULL,NULL),('1','ec1416d3-8bab-439d-9b66-5de03398f6d2','3AcUcdRCLDDY3sNCwMI0lcBW7t0=',1,'Ly1geEiv4ZeNx/EKsJipLQ==',NULL,'bbodiar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:01:36','2015-09-09 07:01:36','2015-09-09 07:01:36',NULL,50,NULL,50,NULL,NULL),('1','8bd11327-3919-45ad-bb27-ea1ca3099a1c','TMipTXFhNqXRvmsYheJ0xR+pfYA=',1,'BDUXkpxTVA1JfHElEvqSKQ==',NULL,'alam2@demo.com',NULL,'na','na',1,0,'2015-09-09 07:01:56','2015-09-09 07:01:56','2015-09-09 07:01:56',NULL,50,NULL,50,NULL,NULL),('1','39c69383-8640-46eb-8c47-637cd125decc','33LN3vre46yPuBdWEDYO2SWYHVg=',1,'Cu8BjeWKgLXJ9qHXM8Vb2w==',NULL,'alam2@demo.com',NULL,'na','na',1,0,'2015-09-09 07:02:11','2015-09-09 07:02:11','2015-09-09 07:02:11',NULL,50,NULL,50,NULL,NULL),('1','06b01cd6-6beb-4371-9bda-2e4512141b9c','SVfQ13/DwRPqo5WbgDHAErK9X5w=',1,'Ueh70ccN2dST046xQhJDpA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-09 07:02:25','2015-09-09 07:02:25','2015-09-09 07:02:25',NULL,50,NULL,50,NULL,''),('1','ad857c9e-3110-4df0-af2e-922d6673a821','YOPhzRLNAtCUY8xR+WAOHf+ezdY=',1,'lPDS7odRqntyWfi0vX9Jhg==',NULL,'sheikh@yahoo.com',NULL,'na','na',1,0,'2015-09-09 07:02:47','2015-09-09 07:02:47','2015-09-09 07:02:47',NULL,50,NULL,50,NULL,NULL),('1','ca66f84f-5d60-44d6-bfba-b1501cd17020','9ABaZZBaYUTHkPc04Mau5kaNEvU=',1,'EEaidAfzz9Bulf53nlG4yQ==',NULL,'alam2@demo.com',NULL,'na','na',1,0,'2015-09-09 07:04:35','2015-09-09 07:04:35','2015-09-09 07:04:35',NULL,50,NULL,50,NULL,NULL),('1','55d4c606-0922-4bda-b50b-d2013bffe05f','RY8/voMR1K9x5Me2R1u4qqGhi/c=',1,'B/jVZ5ChcinwESeboLI1/Q==',NULL,'mdmizanur@demo.com',NULL,'na','na',1,0,'2015-09-09 07:05:28','2015-09-09 07:05:28','2015-09-09 07:05:28',NULL,50,NULL,50,NULL,NULL),('1','82e6e543-655a-479e-a0fd-73182767460b','rT+5Mwk/yXfHInsNZ5PrMnayTVw=',1,'JrfJiAJPrrJY6FLKW4b5AA==',NULL,'bbodiar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:05:44','2015-09-09 07:05:44','2015-09-09 07:05:44',NULL,50,NULL,50,NULL,NULL),('1','7474c817-8364-427f-abef-a69e136f4ea7','LNRtuGyfa/WXGpLOzYB4CT8FkfQ=',1,'jCDzujR/ifrk+sSSOoDa+w==',NULL,'taufique@demo.com',NULL,'na','na',1,0,'2015-09-09 07:05:58','2015-09-09 07:05:58','2015-09-09 07:05:58',NULL,50,NULL,50,NULL,NULL),('1','e68f410b-56fe-4e38-91b0-e0976df46220','k5ns77zwSJDWZ/wl9goMWmk4s1s=',1,'rLW3RC0BZbN/uyNH+mQK2g==',NULL,'aanwar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:08:16','2015-09-09 07:08:16','2015-09-09 07:08:16',NULL,50,NULL,50,NULL,NULL),('1','6cec36f0-934c-41fb-89b5-a086895f08d2','g1vz9vScI8jrA86Xa1mz2MSfIUk=',1,'uRLB1+Dq1BXAABvGols3eA==',NULL,'golzar@demo.com',NULL,'12345','na',1,0,'2015-09-09 07:08:32','2015-09-09 07:08:32','2015-09-09 07:08:32',NULL,50,NULL,50,NULL,NULL),('1','5eb5a9e3-d228-45f1-b43b-a04e7e362d7c','pwszzeHHz2PEiAu8J+cM8tPI6SA=',1,'u/9nvXFdIg6Bwb9bgAeACg==',NULL,'aanwar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:08:44','2015-09-09 07:08:44','2015-09-09 07:08:44',NULL,50,NULL,50,NULL,NULL),('1','99a1802c-807c-4644-9cf8-0ca6354bc45d','wA+YpDmJA9lAuxxLa6c3wlUlK5o=',1,'6iygRCK5nThyoqNlHVP7JA==',NULL,'aabir52@yahoo.com',NULL,'na','na',1,0,'2015-09-09 07:08:56','2015-09-09 07:08:56','2015-09-09 07:08:56',NULL,50,NULL,50,NULL,NULL),('1','8c8b5fe8-d6ae-4aaa-a49e-f1c8be4f925b','44vu8sQnmWTVmALj4jQ1f9n0ebk=',1,'M77N0VpdlAhBS8AwGPY96Q==',NULL,'bbodiar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:09:10','2015-09-09 07:09:10','2015-09-09 07:09:10',NULL,50,NULL,50,NULL,NULL),('1','4ba49fa5-fa8a-4d2d-bb6d-eef4474309fa','08R6J/qS/eLrLzD1dImg2QRjfts=',1,'9M6oYy5EGMxl+Xsa44k/3Q==',NULL,'aabir52@yahoo.com',NULL,'na','na',1,0,'2015-09-09 07:09:24','2015-09-09 07:09:24','2015-09-09 07:09:24',NULL,50,NULL,50,NULL,NULL),('1','d252d15a-ca2a-4e0a-87f6-ff9cbbccc97d','Kde6QJYnIdhMCIM2Os2ixf7uVio=',1,'Cv4d7suOS1P68iSWfBL8PA==',NULL,'manjurul@ddemo.com',NULL,'na','na',1,0,'2015-09-09 07:09:41','2015-09-09 07:09:41','2015-09-09 07:09:41',NULL,50,NULL,50,NULL,NULL),('1','8b6a085f-5da0-4d2d-a8e7-c0c55e66ad70','t2Y0nBD4MJhUWHbP5u3Af67X1J0=',1,'He6FbVsX1n1tkkwfW++3Uw==',NULL,'malek@demo.com',NULL,'na','na',1,0,'2015-09-09 07:09:53','2015-09-09 07:09:53','2015-09-09 07:09:53',NULL,50,NULL,50,NULL,NULL),('1','1cab26b7-33ac-47eb-bfd8-8312c24550df','Sj6JrlXjwqr7ZjASeCjN/qZsgDo=',1,'6D3gf1v+DTtw8yY3N9WoPw==',NULL,'nazim@demo.com',NULL,'na','na',1,0,'2015-09-09 07:10:09','2015-09-09 07:10:09','2015-09-09 07:10:09',NULL,50,NULL,50,NULL,NULL),('1','66334b5e-84d1-497f-93d2-2ffed5bfd787','XF2M2p17GlBlERLDq+BDhGZpWxA=',1,'4gVBE4EvFbcv0i/M/Ww8rg==',NULL,'alam2@demo.com',NULL,'na','na',1,0,'2015-09-09 07:10:31','2015-09-09 07:10:31','2015-09-09 07:10:31',NULL,50,NULL,50,NULL,NULL),('1','db3dfc28-0a5b-4041-83b2-5e126c4b8f56','SQnzUAuZKuDl+fAuH7nq2jh+CZE=',1,'Q5p8JMKdGQZ/95W1OmmjxA==',NULL,'aanwar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:10:55','2015-09-09 07:10:55','2015-09-09 07:10:55',NULL,50,NULL,50,NULL,NULL),('1','9fc38b7d-4891-40c6-8ba4-f6cd0d5c4e4e','F+sesFHa5gLdOgpMGyAvhj0w3DQ=',1,'mHCCHXskxip/lUYl+mG2Gw==',NULL,'bbodiar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:11:20','2015-09-09 07:11:20','2015-09-09 07:11:20',NULL,50,NULL,50,NULL,NULL),('1','fe701ac2-4b9c-408b-a652-e6844b58ef48','Q/zOfGsiwuyeMjxjTc6uOavxIiY=',1,'4gaojp3JpMX77gG1qra3zA==',NULL,'asd@sdaf.asdf',NULL,'na','na',1,0,'2015-09-09 07:11:44','2015-09-09 07:11:44','2015-09-09 07:11:44',NULL,50,NULL,50,NULL,NULL),('1','259c5aa1-9df3-446c-9677-4ca6881fe258','1jas1gfligFQqx4KSekN7xD5Et0=',1,'wWVAIqvt4yWzTkNBhRjQ/Q==',NULL,'manjurul@ddemo.com',NULL,'na','na',1,0,'2015-09-09 07:12:12','2015-09-09 07:12:12','2015-09-09 07:12:12',NULL,50,NULL,50,NULL,NULL),('1','b9e53e35-05bc-4149-9ed8-fb60f6e9c376','boLxWSsl19iTMOxLDlNp29GGC2w=',1,'fyQSdR3TwoyC+enbkmOkFQ==',NULL,'zabed@demo.com',NULL,'na','na',1,0,'2015-09-09 07:12:26','2015-09-09 07:12:26','2015-09-09 07:12:26',NULL,50,NULL,50,NULL,NULL),('1','974c8ee1-e419-47c7-8d69-933de8e0f24a','69UUcgGaw/ffU0wpzoU7+Artg9k=',1,'qQ4PvnXmGn5nF5LQPLTIZw==',NULL,'jagadis@demo.com',NULL,'na','na',1,0,'2015-09-09 07:12:42','2015-09-09 07:12:42','2015-09-09 07:12:42',NULL,50,NULL,50,NULL,NULL),('1','ea60c7c3-d114-44e2-991f-a806f4f535dd','2h7b1HfFa+ZG+ATqTAXT2MLl5Hw=',1,'TTJY0pVQ0J+d79n4SqtxEQ==',NULL,'malek@demo.com',NULL,'na','na',1,0,'2015-09-09 07:12:55','2015-09-09 07:12:55','2015-09-09 07:12:55',NULL,50,NULL,50,NULL,NULL),('1','d9ed204f-a575-4829-bbb7-dfa42030c7b4','FPIOIYrU9Mx7d3moyPntr2itCME=',1,'1i0s5l0+yszoTX7ebNKa/Q==',NULL,'alam2@demo.com',NULL,'na','na',1,0,'2015-09-09 07:13:24','2015-09-09 07:13:24','2015-09-09 07:13:24',NULL,50,NULL,50,NULL,NULL),('1','fecf8e6d-1f86-422d-975e-bd5a96d28ed3','8BqW+I6DMB/O1THw2Snnvoayslw=',1,'/m18N6m8wzS69MXAFEFMLg==',NULL,'taufique@demo.com',NULL,'na','na',1,0,'2015-09-09 07:14:08','2015-09-09 07:14:08','2015-09-09 07:14:08',NULL,50,NULL,50,NULL,NULL),('1','45a1095b-20f6-4b75-a6d2-f0a934682ce6','l71HFp0YC/okvRLSP0wbKv10aEQ=',1,'4kWvvKRZVxXX7KhDVB3tig==',NULL,'rafiqul@demo.com',NULL,'na','na',1,0,'2015-09-09 07:15:18','2015-09-09 07:15:18','2015-09-09 07:15:18',NULL,50,NULL,50,NULL,NULL),('1','dfa7616f-0394-4ad6-9cc4-cde85e201df1','IcCUOK35+DRhsqrWqXjFeM3qi/w=',1,'y2LrVfrG5xiQlEPMeDx2OQ==',NULL,'kabirhasan@demo.com',NULL,'na','na',1,0,'2015-09-09 07:15:35','2015-09-09 07:15:35','2015-09-09 07:15:35',NULL,50,NULL,50,NULL,NULL),('1','d4830e55-945d-4157-bd11-f6cb5dc6444d','BXk7QFfPsDYo+ryrRvfajGW53K8=',1,'xu1Sf0z0UqwhtLFWxntOpQ==',NULL,'taufique@demo.com',NULL,'na','na',1,0,'2015-09-09 07:15:57','2015-09-09 07:15:57','2015-09-09 07:15:57',NULL,50,NULL,50,NULL,NULL),('1','be6cd5d7-72dc-4bc1-a7cc-cbd0b7b51e97','/VbkFJTYXqXl1gv8/ZUxU1a3yHY=',1,'kbfnCA3FnyGhMyfUpl8uTg==',NULL,'kabirhasan@demo.com',NULL,'na','na',1,0,'2015-09-09 07:16:12','2015-09-09 07:16:12','2015-09-09 07:16:12',NULL,50,NULL,50,NULL,NULL),('1','d00a915d-c0cb-4e38-96ca-8209254ee637','vpFHxTDYJCEjxCI59ByW68ojsm4=',1,'CX6rSY2IZDj1WKfvk6mvxA==',NULL,'jagadis@demo.com',NULL,'na','na',1,0,'2015-09-09 07:16:25','2015-09-09 07:16:25','2015-09-09 07:16:25',NULL,50,NULL,50,NULL,NULL),('1','d0665e9f-41d8-4eb5-8d18-f1b6a0d47bb0','ueXTW77oqoEPny0LSzhoHt4hubg=',1,'GqEznpZwLUpn9kXxyR92QQ==',NULL,'zabed@demo.com',NULL,'na','na',1,0,'2015-09-09 07:16:37','2015-09-09 07:16:37','2015-09-09 07:16:37',NULL,50,NULL,50,NULL,NULL),('1','9e047a0a-3f12-4eba-8ea9-c0bbdccb1bb7','saLHtpohrSxeCfEObUSGAbKCpho=',1,'gchE3h3/vzrA/ac28oy78g==',NULL,'rafiqul@demo.com',NULL,'na','na',1,0,'2015-09-09 07:16:53','2015-09-09 07:16:53','2015-09-09 07:16:53',NULL,50,NULL,50,NULL,NULL),('1','827c5031-010d-44ad-9318-c44ef60ee046','SyJqkplPJODebnSt0OCzHWpF5mo=',1,'AU7V7gAMCjVA2cgrJd80xQ==',NULL,'kamalesh@demo.com',NULL,'na','na',1,0,'2015-09-09 07:17:25','2015-09-09 07:17:25','2015-09-09 07:17:25',NULL,50,NULL,50,NULL,NULL),('1','262e213a-a927-4f55-8ba0-02e21b62c8cc','kC946Ntd3sLPSdVKIo6lcsCjyg8=',1,'F96NMivGcYKDeGMlF0JVMw==',NULL,'nazim@demo.com',NULL,'na','na',1,0,'2015-09-09 07:17:47','2015-09-09 07:17:47','2015-09-09 07:17:47',NULL,50,NULL,50,NULL,NULL),('1','44cea5ba-b0cc-4c50-9d2c-c922eb863ef9','2f70xgeVQ3QCw154SHbLfWzi+Ko=',1,'yNkukIkTACMYERnbDZ3uaQ==',NULL,'zabed@demo.com',NULL,'na','na',1,0,'2015-09-09 07:18:00','2015-09-09 07:18:00','2015-09-09 07:18:00',NULL,50,NULL,50,NULL,NULL),('1','ed524437-9005-4d71-a50b-3d6b487917b2','R+sbU6Urck/ZsyWKrnN5kyWWJtU=',1,'+GG7y5bu4QTPgz1CXtwxeQ==',NULL,'sheikh@yahoo.com',NULL,'na','na',1,0,'2015-09-09 07:18:19','2015-09-09 07:18:19','2015-09-09 07:18:19',NULL,50,NULL,50,NULL,NULL),('1','7c48f42e-b53c-43d4-8aa1-126935f456bc','6H3TrPyDM2iCRWAytLWtdZjmoxc=',1,'WgQ4k0FQdg/ZAitDO9IQwg==',NULL,'malek@demo.com',NULL,'na','na',1,0,'2015-09-09 07:18:31','2015-09-09 07:18:31','2015-09-09 07:18:31',NULL,50,NULL,50,NULL,NULL),('1','a742c11a-1707-41d9-a49f-5c97338a3e85','twn0ZJT0/oQPNsTfPxV+MAHVoIU=',1,'qnL63Ws02n+C07Qm9AGpzA==',NULL,'manjurul@ddemo.com',NULL,'na','na',1,0,'2015-09-09 07:18:54','2015-09-09 07:18:54','2015-09-09 07:18:54',NULL,50,NULL,50,NULL,NULL),('1','4aa91125-3b4c-4fe7-8e57-d057f56777e7','r+YyqJBTvbd1g3iFXsK90QdASws=',1,'rfoQeqJDQUly8K3emLfFIA==',NULL,'sheikh@yahoo.com',NULL,'na','na',1,0,'2015-09-09 07:19:06','2015-09-09 07:19:06','2015-09-09 07:19:06',NULL,50,NULL,50,NULL,NULL),('1','cced1d2a-ffcf-435b-a70e-3d3b6618d66b','LvL0zuMSxBJJ/I/fKITGlhS05qc=',1,'nKJCaPeWZa8VWJioUOm3MA==',NULL,'ataul@demo.com',NULL,'na','na',1,0,'2015-09-09 07:19:21','2015-09-09 07:19:21','2015-09-09 07:19:21',NULL,50,NULL,50,NULL,NULL),('1','77688e4d-0c3b-4b66-b055-e26756d8c7cd','iEmPj6qwu0pAt8WsHUrx1O+GweE=',1,'aEdMycMIEDzFwBwub+t3CQ==',NULL,'golzar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:20:10','2015-09-09 07:20:10','2015-09-09 07:20:10',NULL,50,NULL,50,NULL,NULL),('1','44166c9d-a6cd-4ab1-9f8d-21842440b515','1Jaenag+4jiB+nQvY/U/4NJt2uc=',1,'gSjmLMQXO+A/AXPf5uX4bg==',NULL,'ezaul@demo.com',NULL,'na','na',1,0,'2015-09-09 07:20:31','2015-09-09 07:20:31','2015-09-09 07:20:31',NULL,50,NULL,50,NULL,NULL),('1','ed8251d6-8047-4f89-bfd2-876dd51c521b','lquiKgr77DInP0yCMtkO+7W5yQk=',1,'Iqyyuhw1HvOCipZwdfDcMA==',NULL,'rafiqul@demo.com',NULL,'na','na',1,0,'2015-09-09 07:20:52','2015-09-09 07:20:52','2015-09-09 07:20:52',NULL,50,NULL,50,NULL,NULL),('1','294d21fd-4057-4547-9824-739ab7175848','h6DpXQJPXqe8Dp3QFNpqoH3fdSA=',1,'Bb1hPN7tX1ZwO8UciLFWNQ==',NULL,'nazim@demo.com',NULL,'na','na',1,0,'2015-09-09 07:21:13','2015-09-09 07:21:13','2015-09-09 07:21:13',NULL,50,NULL,50,NULL,NULL),('1','8c010478-f381-411c-85d8-d3dc1914e128','JmD4Rj5SU1cuJEZfaGEyAdTFg9M=',1,'Fk8oTCbBUw/Z6C7LqxYvwA==',NULL,'aabir52@yahoo.com',NULL,'na','na',1,0,'2015-09-09 07:21:25','2015-09-09 07:21:25','2015-09-09 07:21:25',NULL,50,NULL,50,NULL,NULL),('1','eac64248-1773-4d92-8e76-8dec1971ad09','yQq7qM2Z0HQqI1MQjtAhvFjE+gM=',1,'HvvkEHdikSKpNz5TdHpBAw==',NULL,'zabed@demo.com',NULL,'na','na',1,0,'2015-09-09 07:21:40','2015-09-09 07:21:40','2015-09-09 07:21:40',NULL,50,NULL,50,NULL,NULL),('1','395799a4-32f3-4d4b-94e8-a4b55057bd0e','fYTHAwKHNg3j4fg9AVwCNCc81Po=',1,'fAWl5MXQW6fo+sCW6p2dvQ==',NULL,'zabed@demo.com',NULL,'na','na',1,0,'2015-09-09 07:21:54','2015-09-09 07:21:54','2015-09-09 07:21:54',NULL,50,NULL,50,NULL,NULL),('1','4dd61a40-7e3f-4bbd-a298-6b17c619ed4e','O3VHWYEAnixZbDjssl7Z2DB3RwA=',1,'eDQrFvUBXSuxR6vnbD5LzQ==',NULL,'moazzem@demo.com',NULL,'na','na',1,0,'2015-09-09 07:22:13','2015-09-09 07:22:13','2015-09-09 07:22:13',NULL,50,NULL,50,NULL,NULL),('1','28e31c3d-567e-4332-a852-94c39d028c4f','t/vb4JrbKR83yxtJ/b7XDkQQewY=',1,'Zqq1Ks1eR3/1icsrPr7CZg==',NULL,'nazim@demo.com',NULL,'na','na',1,0,'2015-09-09 07:22:28','2015-09-09 07:22:28','2015-09-09 07:22:28',NULL,50,NULL,50,NULL,NULL),('1','272e5d96-3064-4a8c-b651-8cafe72215dc','pgN9fyI2P0pwG1Qnh5peOqrFnUc=',1,'ws6BN+FoOkjikYHVeg8GgA==',NULL,'ataul@demo.com',NULL,'na','na',1,0,'2015-09-09 07:22:39','2015-09-09 07:22:39','2015-09-09 07:22:39',NULL,50,NULL,50,NULL,NULL),('1','ebceb4be-53a5-4a24-8bf6-f6fafc7cf70b','qPdLNLXgIskJR8mlV8abVnqu1CI=',1,'aG4/DWuVut45wY3v72Bh9Q==',NULL,'alam2@demo.com',NULL,'na','na',1,0,'2015-09-09 07:22:57','2015-09-09 07:22:57','2015-09-09 07:22:57',NULL,50,NULL,50,NULL,NULL),('1','14bc47c6-1886-4695-ada1-0fca827536ce','saInM/cxASYH0sqtrvYhWfEPdGU=',1,'XKuuZrxg9+HlAq2+C/D8+w==',NULL,'mizanur@demo.com',NULL,'na','na',1,0,'2015-09-09 07:23:12','2015-09-09 07:23:12','2015-09-09 07:23:12',NULL,50,NULL,50,NULL,NULL),('1','cbaa2483-a6b1-4998-8cf8-e62496bf1361','PNHDgvlR1Lk2kJ849X1WGz5Npwg=',1,'NmYgQbk8JiaZyas3EG42lw==',NULL,'aabir52@yahoo.com',NULL,'na','na',1,0,'2015-09-09 07:23:28','2015-09-09 07:23:28','2015-09-09 07:23:28',NULL,50,NULL,50,NULL,NULL),('1','fb38d7bc-dab9-4248-8089-ab04da85ba7f','OJndX2BgVaua8sAYaNvlxPV6dxA=',1,'CLPQIKAx+MYN9D8pQ6cSQA==',NULL,'mdmizanur@demo.com',NULL,'na','na',1,0,'2015-09-09 07:23:41','2015-09-09 07:23:41','2015-09-09 07:23:41',NULL,50,NULL,50,NULL,NULL),('1','119fdf20-05a7-4b98-87c3-18e504b30ed2','KcMMM9UNIoSaSwKa9fkzXh7K4qs=',1,'Wh5ogpTmq3MdQPds5s5Edg==',NULL,'aanwar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:23:57','2015-09-09 07:23:57','2015-09-09 07:23:57',NULL,50,NULL,50,NULL,NULL),('1','a7bb5ac8-1097-4d36-a94b-35347a31c97a','euvYeud8qG9tOCVJXqdBcESWNew=',1,'eE57jT+goqHRMNGjNVVlNg==',NULL,'kabirhasan@demo.com',NULL,'na','na',1,0,'2015-09-09 07:24:32','2015-09-09 07:24:32','2015-09-09 07:24:32',NULL,50,NULL,50,NULL,NULL),('1','9c9d3b14-2f52-4e67-b1c0-8fbd8a7c9afd','UaxW2xBanRTkuF5oXzAZqXCPBc4=',1,'Zq7KB9igiO9jNUxf4mHb5Q==',NULL,'aanwar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:24:59','2015-09-09 07:24:59','2015-09-09 07:24:59',NULL,50,NULL,50,NULL,NULL),('1','7e71f7cb-5aa9-43ca-b5a6-22347d620410','MgoH+03NTbBD7mcp2NxZh8hAQEg=',1,'g1t/l8mAiQ3aqyiPiVG2tA==',NULL,'aabir52@yahoo.com',NULL,'na','na',1,0,'2015-09-09 07:25:11','2015-09-09 07:25:11','2015-09-09 07:25:11',NULL,50,NULL,50,NULL,NULL),('1','261d70e2-96ce-4274-97c2-8be879070765','Kammu/Ncx+g2yxWofpnB0Up2wGA=',1,'bcQyghVZp2bxXLO3F/tHgQ==',NULL,'khandker@demo.com',NULL,'na','na',1,0,'2015-09-09 07:25:34','2015-09-09 07:25:34','2015-09-09 07:25:34',NULL,50,NULL,50,NULL,NULL),('1','699914ce-35d7-40c4-b888-147d4f2257f5','HAY8RUPmVtnSZqiDRgfYZrdxf3I=',1,'ifWJmQRswO+hvp6zyhjCYQ==',NULL,'kabirhasan@demo.com',NULL,'na','na',1,0,'2015-09-09 07:25:48','2015-09-09 07:25:48','2015-09-09 07:25:48',NULL,50,NULL,50,NULL,NULL),('1','c9104ebf-5e99-4e9c-9f41-c0d8d1804db1','jPLDruszMklwmkZW7KaYrWS7550=',1,'OWZcdhPmabbMlDv4ndFCVw==',NULL,'aabir52@yahoo.com',NULL,'na','na',1,0,'2015-09-09 07:26:08','2015-09-09 07:26:08','2015-09-09 07:26:08',NULL,50,NULL,50,NULL,NULL),('1','058c7f82-d854-435a-b29e-904e27244329','FbU+8BtJb2tVp4MRzGmolerE7W8=',1,'JSj+pGUwZd0mH7eoL9D7pQ==',NULL,'golzar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:26:23','2015-09-09 07:26:23','2015-09-09 07:26:23',NULL,50,NULL,50,NULL,''),('1','c69a6831-a29b-4af2-b099-4b75f3c2fd87','kNUVy4vAvkje28u9cdknAwmtoMM=',1,'Jj5Wdt+PMt1tWeoNiNWRwQ==',NULL,'aanwar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:26:36','2015-09-09 07:26:36','2015-09-09 07:26:36',NULL,50,NULL,50,NULL,NULL),('1','81bd8f05-a2c1-4914-92bd-615ad4748e63','vtmaNqDiTtJCjdDzjnSpjtD3rgQ=',1,'1gZQOCdN3SD6A/WBlkYFuA==',NULL,'azam@demo.com',NULL,'na','na',1,0,'2015-09-09 07:26:57','2015-09-09 07:26:57','2015-09-09 07:26:57',NULL,50,NULL,50,NULL,NULL),('1','4836f469-85df-45fb-b5f8-4da2b569508a','eaE0j/hJKGNJjnOTccHz/C13tq0=',1,'8TzDoeVp8+ZUj0aMh3VHZQ==',NULL,'alam2@demo.com',NULL,'na','na',1,0,'2015-09-09 07:27:10','2015-09-09 07:27:10','2015-09-09 07:27:10',NULL,50,NULL,50,NULL,NULL),('1','c630d626-ff44-46e9-a4f1-a595f86c6a4f','C1D3EDlXv+sOQmL0/DNfNaPJoZE=',1,'HjBxRwnaZLfKKLN/g6b83A==',NULL,'ashok@demo.com',NULL,'na','na',1,0,'2015-09-09 07:27:37','2015-09-09 07:27:37','2015-09-09 07:27:37',NULL,50,NULL,50,NULL,NULL),('1','6af09df4-3158-480e-9add-9a3079b9b84d','FzMnm8kY+twhirCAMs71Vn0vJrk=',1,'0fwhTUyMmdSeETnOt+X+yQ==',NULL,'alam2@demo.com',NULL,'na','na',1,0,'2015-09-09 07:27:53','2015-09-09 07:27:53','2015-09-09 07:27:53',NULL,50,NULL,50,NULL,NULL),('1','a2d11920-bff2-4754-ad94-81d826a0a853','y65caOaskIoxgrVw61+d9fzusaw=',1,'fE8UDS2+OLoMhCaDZ6obGg==',NULL,'golzar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:28:06','2015-09-09 07:28:06','2015-09-09 07:28:06',NULL,50,NULL,50,NULL,NULL),('1','18123f7b-9b5a-42d1-bd76-6a162f03433b','DJCaagjqHDaOIGt5ekzngg8E0Yc=',1,'u2okdHTOe/qZZ/PBqC/zpQ==',NULL,'sheikh@yahoo.com',NULL,'na','na',1,0,'2015-09-09 07:28:35','2015-09-09 07:28:35','2015-09-09 07:28:35',NULL,50,NULL,50,NULL,NULL),('1','e1c2b07f-ef8d-4b82-a02c-40b22f21f325','Mk8GFmBT9xlkudmtwUpPQn+8whY=',1,'UnnZShYXRsMpRQram6iUoA==',NULL,'jhdcf@demo.com',NULL,'na','na',1,0,'2015-09-09 07:29:30','2015-09-09 07:29:30','2015-09-09 07:29:30',NULL,50,NULL,50,NULL,NULL),('1','8fee1e39-784d-4b34-a78c-c835573be606','Xs9lB9ce78hy9SGleE34f71/4ho=',1,'5SSFMV9LLtkYQFP8fI7evA==',NULL,'manjurul@ddemo.com',NULL,'na','na',1,0,'2015-09-09 07:29:56','2015-09-09 07:29:56','2015-09-09 07:29:56',NULL,50,NULL,50,NULL,NULL),('1','c49f4bc6-9366-4ee6-9fca-ebbee7409f6b','YVphuDpoo5dcEA6OtDsA0Mkuozs=',1,'biYubqK3FyaD1aqBF9Nrag==',NULL,'malek@demo.com',NULL,'na','na',1,0,'2015-09-09 07:30:10','2015-09-09 07:30:10','2015-09-09 07:30:10',NULL,50,NULL,50,NULL,NULL),('1','883cb580-a01a-4d34-9eaf-93145d21fea6','6Huyb1YBPl+RuI4qXZRlZiyETIE=',1,'pEoYpyhdUKDeGsXsdQ5ixQ==',NULL,'taufique@demo.com',NULL,'na','na',1,0,'2015-09-09 07:30:23','2015-09-09 07:30:23','2015-09-09 07:30:23',NULL,50,NULL,50,NULL,NULL),('1','d6fa6ffd-1981-45b3-9edf-ef403ca24011','jv9XDoHEb3tQLuRd/SSe6XGqmXg=',1,'ryyZ9K+mPrtQ6qrrwCgtGA==',NULL,'mdmizanur@demo.com',NULL,'na','na',1,0,'2015-09-09 07:30:37','2015-09-09 07:30:37','2015-09-09 07:30:37',NULL,50,NULL,50,NULL,NULL),('1','78e368f0-f83a-497f-a63d-a62090bb4aba','Wk3pdQqEExi1EdyYp9coATLxmUI=',1,'mG8Zp6MRK1GlYr0oTx8JEw==',NULL,'aabir52@yahoo.com',NULL,'na','na',1,0,'2015-09-09 07:30:48','2015-09-09 07:30:48','2015-09-09 07:30:48',NULL,50,NULL,50,NULL,NULL),('1','6d81a05f-cae3-4cc5-87fb-b9e248ae5551','8V7zbugFun8Bhcw/onoGkCeF1dA=',1,'iN3MPdfFATWrZ7YnMI2lqQ==',NULL,'golzar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:30:59','2015-09-09 07:30:59','2015-09-09 07:30:59',NULL,50,NULL,50,NULL,NULL),('1','9fa1b187-6385-4aab-9eb0-20a48f0e15b4','lMxri8YwfAC+bwJ6rO46Y7uVdQs=',1,'2PvPAwBfpa7AUv9VEEhCWw==',NULL,'aanwar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:31:10','2015-09-09 07:31:10','2015-09-09 07:31:10',NULL,50,NULL,50,NULL,NULL),('1','a6819c1d-20a6-4c22-b740-f232b349a0c3','w4atk5wwu7myaATxJ7BfZcrauhQ=',1,'ahuEUxJkkBQQ6Jf+30QuxQ==',NULL,'zabed@demo.com',NULL,'na','na',1,0,'2015-09-09 07:31:23','2015-09-09 07:31:23','2015-09-09 07:31:23',NULL,50,NULL,50,NULL,NULL),('1','3b12220f-4de7-4665-8cdd-9076a5f82a21','LkeRBlXCpdqGg8bYtoWcKyoExq0=',1,'PjKch7jcKN/wk8Y2hO/YMw==',NULL,'mdmizanur@demo.com',NULL,'na','na',1,0,'2015-09-09 07:31:44','2015-09-09 07:31:44','2015-09-09 07:31:44',NULL,50,NULL,50,NULL,NULL),('1','9d48df5b-baef-4c3e-a3fd-2572810a0e1d','67Kk2HMghUYo8pOLDaFf9Ij0LSI=',1,'juoPL+uzM+MplWEY9bbeYg==',NULL,'nazim@demo.com',NULL,'na','na',1,0,'2015-09-09 07:32:00','2015-09-09 07:32:00','2015-09-09 07:32:00',NULL,50,NULL,50,NULL,NULL),('1','95ba175f-1aa3-40b7-aaa1-0374ab7cb621','D5dMnVvNFEsQalriaWs4bePmfBg=',1,'aVND/gUhYwytbr6ZLE/6uA==',NULL,'aanwar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:32:13','2015-09-09 07:32:13','2015-09-09 07:32:13',NULL,50,NULL,50,NULL,NULL),('1','e1fc5792-9618-4ab4-aa70-2ccf5d8f35d9','/5xNkmHbgSDTsNhsVoDt1Q8/pRs=',1,'q8hqXZdHSPT722KrMYVNQQ==',NULL,'aabir52@yahoo.com',NULL,'na','na',1,0,'2015-09-09 07:32:26','2015-09-09 07:32:26','2015-09-09 07:32:26',NULL,50,NULL,50,NULL,NULL),('1','fffdcb49-314d-4ca6-b32a-b3606d27fedc','m2uO4PT0wx0aCwmsK3jW0+UNBys=',1,'ET75j9HsjAeGD5r4s4YQiA==',NULL,'aanwar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:32:42','2015-09-09 07:32:42','2015-09-09 07:32:42',NULL,50,NULL,50,NULL,NULL),('1','477f01cd-0873-4beb-a82f-c1e2c42dd0c6','vTiUakx7FI5moUe0xqDc8uflUdk=',1,'NpxRROyl0p1g4MF8ILXD6g==',NULL,'aabir52@yahoo.com',NULL,'na','na',1,0,'2015-09-09 07:32:53','2015-09-09 07:32:53','2015-09-09 07:32:53',NULL,50,NULL,50,NULL,NULL),('1','c9c64440-bac0-41d3-822c-32ba4fb266ec','P4w4BVxi2xzjPf7G3yBoUMXaeqM=',1,'J3clfVvN19ceNyVL7LfL3Q==',NULL,'rafiqul@demo.com',NULL,'na','na',1,0,'2015-09-09 07:33:06','2015-09-09 07:33:06','2015-09-09 07:33:06',NULL,50,NULL,50,NULL,NULL),('1','d0c48ee8-5a1c-45f5-82fd-c3310eba0f94','bWKMKYmSLvPyXzhHgH+tqu48x6w=',1,'EloNwviW2/v2CLyTAbAzQA==',NULL,'golzar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:33:18','2015-09-09 07:33:18','2015-09-09 07:33:18',NULL,50,NULL,50,NULL,NULL),('1','ba1dadbd-952a-4f6c-aa46-1d7f2be24c0a','0FquK7PIMg9xeseKkRCJqiPZ40M=',1,'1bNNJ3Gk3jMkHjmXZXSnXw==',NULL,'aanwar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:33:37','2015-09-09 07:33:37','2015-09-09 07:33:37',NULL,50,NULL,50,NULL,NULL),('1','a94974e8-6186-4e30-a57c-ce6e87a8bdf9','Y/HBYjXi4kq8VPzivH/SnTGr/V0=',1,'AVOpCult3CYz6ueFmzxzZg==',NULL,'fakhssssrul@demo.com',NULL,'na','na',1,0,'2015-09-09 07:34:54','2015-09-09 07:34:54','2015-09-09 07:34:54',NULL,50,NULL,50,NULL,NULL),('1','51280311-d0dd-4f34-8a44-4bac17f0ac66','47vz+CMB2NDDIMgTBHBX4ic7LHQ=',1,'pKfehzBfnF8yHUYuBpKcHg==',NULL,'bbodiar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:35:36','2015-09-09 07:35:36','2015-09-09 07:35:36',NULL,50,NULL,50,NULL,NULL),('1','2ee5dcc0-3f49-49e7-aacf-3e0d147d7c2d','BzWeyVYRNrnL5N1UZ/TTDf/I5tY=',1,'fv/yzdzRPhS4pm/H/y7jZg==',NULL,'sheikh@yahoo.com',NULL,'na','na',1,0,'2015-09-09 07:35:58','2015-09-09 07:35:58','2015-09-09 07:35:58',NULL,50,NULL,50,NULL,NULL),('1','2db8245f-de96-49b1-8309-3379d77268ba','nE+EW470U2Suh2C4KAua9q0QjwQ=',1,'bDCCKsoEbSG5xq5+vTPX7Q==',NULL,'sheikh@yahoo.com',NULL,'na','na',1,0,'2015-09-09 07:36:14','2015-09-09 07:36:14','2015-09-09 07:36:14',NULL,50,NULL,50,NULL,NULL),('1','449725da-2fd4-4df0-ab42-531d505607ad','2OpSYWH3+jii9tdlBN58aMyebz4=',1,'tk7495F6gWagfdzyyF2L1g==',NULL,'mdmizanur@demo.com',NULL,'na','na',1,0,'2015-09-09 07:37:00','2015-09-09 07:37:00','2015-09-09 07:37:00',NULL,50,NULL,50,NULL,NULL),('1','dd58c8ee-df19-40bf-b1d6-c4f5296f4487','03pYa/E3chI44FY5bxfNt84xVTg=',1,'F8P3tfWp+QUtEYlTkWfINA==',NULL,'bbodiar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:37:19','2015-09-09 07:37:19','2015-09-09 07:37:19',NULL,50,NULL,50,NULL,NULL),('1','006b7a84-6f49-497e-bbf6-e28082624e6f','apNM7Xvj8mmqAoWhEfvDFhvNRo8=',1,'jRWGZzvKxSNEMFkqcyLSew==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-09 07:37:31','2015-09-14 00:43:53','2015-09-12 00:48:01',NULL,50,NULL,50,NULL,''),('1','29413f0d-b43e-4a75-9141-34c21238638a','clGFNrUvYtCbKtwoAvLmP7G1558=',1,'UAfHFkLW6L2beVrH4sQAWg==',NULL,'alam2@demo.com',NULL,'na','na',1,0,'2015-09-09 07:37:42','2015-09-09 07:37:42','2015-09-09 07:37:42',NULL,50,NULL,50,NULL,NULL),('1','a273798f-d078-4424-8080-f8c72c8ca2da','RUpPNMNnw4vcIEFBHujk306WloI=',1,'ixruogMsNxK2Xl+m31SFyQ==',NULL,'malek@demo.com',NULL,'na','na',1,0,'2015-09-09 07:37:54','2015-09-09 07:37:54','2015-09-09 07:37:54',NULL,50,NULL,50,NULL,NULL),('1','32f221f4-e75c-42b9-8d34-9695afd5aed3','QLn7yxsdI/Z6Cmv0J6HA2nHvdz8=',1,'Gxj4QZMxUNSGMvBObUBbfg==',NULL,'golzar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:38:07','2015-09-09 07:38:07','2015-09-09 07:38:07',NULL,50,NULL,50,NULL,NULL),('1','626ecd5f-e053-4ab9-8d84-be11fe749b7a','8eWiboiRwb1ZcRswze5cXj0njYU=',1,'f49KJTcHLdREwfLUlg0zgw==',NULL,'mdmizanur@demo.com',NULL,'na','na',1,0,'2015-09-09 07:38:22','2015-09-09 07:38:22','2015-09-09 07:38:22',NULL,50,NULL,50,NULL,NULL),('1','93ed2573-8f3c-4911-b813-98880bfda66e','7vgV/sO15aI0xCM5QX9v7Akj6ms=',1,'dfOedMwm8Q5cgktxPHcwog==',NULL,'fakhrul@demo.com',NULL,'na','na',1,0,'2015-09-09 07:38:43','2015-09-09 07:38:43','2015-09-09 07:38:43',NULL,50,NULL,50,NULL,NULL),('1','3575fb34-8812-48cd-8d93-615b06504522','BhZefMKT+Jcr5pvYX8FxMU1I3YY=',1,'w89xs8EGfA1QtvI6AJVCAw==',NULL,'bbodiar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:41:50','2015-09-09 07:41:50','2015-09-09 07:41:50',NULL,50,NULL,50,NULL,NULL),('1','77ea1d1a-7fa2-4b6c-9459-1ed7a7af20dc','XvXUe4UoGnPJJw8K79JKb30uNqg=',1,'5kCIjCxIz96LrS+ald18Cg==',NULL,'bbodiar@demo.com',NULL,'na','na',1,0,'2015-09-09 07:42:14','2015-09-09 07:42:14','2015-09-09 07:42:14',NULL,50,NULL,50,NULL,NULL),('1','8bed9ad8-87a0-41c9-a913-6a5131d11dcd','k7XcDJAPoFtrA/2b8vrJGyGGDHk=',1,'8XhqArY3XXfDN++Kjl2Dtw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 10:52:54','2015-09-10 10:52:54','2015-09-10 10:52:54',NULL,50,NULL,50,NULL,''),('1','240bdc10-dcec-4677-9f37-554b0b67e136','j+GP94+uilz6vekXbD1lh+YISZM=',1,'peWBkaYMalbxLWOFG5AKpw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 10:54:06','2015-09-10 10:54:06','2015-09-10 10:54:06',NULL,50,NULL,50,NULL,''),('1','fa93a944-ca50-419e-984f-95cc1f1be28f','oWroZ5zRG2mIKhVQ5OhMMmOm5fI=',1,'2HfUIDf1bZ8DJI+48UbTRw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 10:56:56','2015-09-10 10:56:56','2015-09-10 10:56:56',NULL,50,NULL,50,NULL,''),('1','787431af-efc6-4fc8-8d4e-b217d4dde3ad','P22UnX3BwU0KyyQxecVZNQAut64=',1,'ie4Sg+p+kC5mzphaYoQIwQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:00:43','2015-09-10 11:00:43','2015-09-10 11:00:43',NULL,50,NULL,50,NULL,NULL),('1','f0e0818f-ee5f-4d90-b9a2-d3c41000459f','FZze0rjvfcdUsKkMK9+fHvEHd94=',1,'tWlEXMPP2xHYEK0AaeK31g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:01:04','2015-09-10 11:01:04','2015-09-10 11:01:04',NULL,50,NULL,50,NULL,NULL),('1','96064f59-e11c-471a-af76-0723826972e4','KIbAvGlg3F77v45LK1UufqDv7E8=',1,'hXXSiq5Ke2iYKM87wvLBYA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:01:25','2015-09-10 11:01:25','2015-09-10 11:01:25',NULL,50,NULL,50,NULL,NULL),('1','de210929-edf3-4205-b2e6-4982ce74065d','ztftbYpMQaWgI5J/aoAATbMVT4g=',1,'C5d5O5ZITlrx7g/K9XEFBQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:01:38','2015-09-10 11:01:38','2015-09-10 11:01:38',NULL,50,NULL,50,NULL,NULL),('1','dd96e29f-f3bd-48cd-b124-99938159792b','3F0lqvhemeA6scsOMwjPnS6N0po=',1,'1+yCW5caLlT7E4ivTKd+Fw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:01:52','2015-09-10 11:01:52','2015-09-10 11:01:52',NULL,50,NULL,50,NULL,NULL),('1','306ce94b-590f-4da5-94a6-c8e0adfeea8e','Lx37Ddy6NI3f0XDtYGleGz0/d18=',1,'gkBrGx0zHzLEg5BbDW522Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:02:17','2015-09-10 11:02:17','2015-09-10 11:02:17',NULL,50,NULL,50,NULL,NULL),('1','cf5a719f-750d-4f56-874d-1c3129292a35','bIvjkPF2fV7KoDjLtvlsINy5HH8=',1,'G+pNlCmnxFU3ChdBZJOMCA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:02:28','2015-09-10 11:02:28','2015-09-10 11:02:28',NULL,50,NULL,50,NULL,NULL),('1','97577337-a5cf-42ff-8eb4-9f8b7bfdb878','v09oOB8pa+uVSBJjuI+kZv0ZhRM=',1,'vcrH7vqSRCiph7l1lcSbqQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:02:44','2015-09-10 11:02:44','2015-09-10 11:02:44',NULL,50,NULL,50,NULL,NULL),('1','7222c909-9621-4946-a98b-6cb41b22b615','b39HzAKyW6h19u5Po/9mSRHTdNk=',1,'iipX4irRhG/YmDafcO7CmA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:02:56','2015-09-10 11:02:56','2015-09-10 11:02:56',NULL,50,NULL,50,NULL,NULL),('1','cef84395-0839-439f-987c-b54535554189','rZ94hHzZoyVKctuZHVwtUw1tSPk=',1,'VoWRRq5sQBqMpstfQ5ZB/w==',NULL,'engrsarowar@gmail.com',NULL,'na','na',1,0,'2015-09-10 11:03:09','2015-09-10 11:03:09','2015-09-10 11:03:09',NULL,50,NULL,50,NULL,''),('1','344de753-c685-49d8-92a6-8134f0083758','TlXYzvP/r6GhxOtFCaxVlzeaNBs=',1,'0mRRmcme/9iufdPC/f8LaA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:03:22','2015-09-10 11:03:22','2015-09-10 11:03:22',NULL,50,NULL,50,NULL,NULL),('1','99232b01-3d28-4f60-8da6-474e78e58672','MHYdxc46+u66w+XmeQq6PjSiF+c=',1,'SZAQlxsDA4X+mLyQTjL2lg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:03:40','2015-09-10 11:03:40','2015-09-10 11:03:40',NULL,50,NULL,50,NULL,NULL),('1','dc07d91b-d0d6-4c39-90a2-8eada0f1c250','Qh7AHBepL6uGD+HaY5pttxL+EA0=',1,'G12Ueu52sYz4GQsjDZGtVw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:03:51','2015-09-10 11:03:51','2015-09-10 11:03:51',NULL,50,NULL,50,NULL,NULL),('1','151087ba-16e6-40a1-8d89-489ddb53bf9c','btBySODEJRI3IC5WFFjG4Bt8Ucg=',1,'B5y4QUyG20wTj6mG2rQJLQ==',NULL,'bitcrana@hotmail.com',NULL,'na','na',1,0,'2015-09-10 11:08:41','2015-09-10 11:08:41','2015-09-10 11:08:41',NULL,50,NULL,50,NULL,''),('1','413766f8-bebc-4068-aa55-e370b72d337c','c+jIbZhH1bOcyzcRuSkbzvggrqs=',1,'dE0u68ZpM/Jt41T5ZFqJGw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:09:13','2015-09-10 11:09:13','2015-09-10 11:09:13',NULL,50,NULL,50,NULL,NULL),('1','ab512ad1-47f7-4f7b-9a9b-c08b5dd919bc','CC7xh5BD8+YwPeXRRgLvYicKqTI=',1,'/r+FW8NIiavKeCrlmfbP7g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:09:25','2015-09-10 11:09:25','2015-09-10 11:09:25',NULL,50,NULL,50,NULL,NULL),('1','0587f58c-1e01-4ad7-83c5-93bad171404a','0D0Wp7v2Q0ELmtRcgZVltU2RLwM=',1,'7PKTnEwjftHuQQZFzkJ2iQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:09:42','2015-09-10 11:09:42','2015-09-10 11:09:42',NULL,50,NULL,50,NULL,''),('1','aa3dccb6-58ad-4b69-b1ca-bbbdff58702c','fjQLFUxsuV7ujGIdFLSEaxdPOuc=',1,'agi4M5u0jLkAjW5PAsvsCA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:09:54','2015-09-10 11:09:54','2015-09-10 11:09:54',NULL,50,NULL,50,NULL,NULL),('1','6f3f562b-4299-41dd-abaa-e6f93e508d75','uk6Trl4wj8L1gVNvlwdf8dHio9U=',1,'liJcVH2qNG7xHg4AVKAs2Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:10:08','2015-09-10 11:10:08','2015-09-10 11:10:08',NULL,50,NULL,50,NULL,NULL),('1','e5ca3872-b724-44ad-9c95-ece427cf229d','g2WDG6YxQByiC1t/J+PFZrU/V2Q=',1,'vNliCFBGio/CQ/ONlIiXlQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:10:21','2015-09-10 11:10:21','2015-09-10 11:10:21',NULL,50,NULL,50,NULL,NULL),('1','6f7920fe-4512-447e-a236-a92fbe607e21','5yfnWVcE23o2ZJSdUAqmmJp/WNA=',1,'TiESUe1M6HSPq4rrZcFPkw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:10:32','2015-09-10 11:10:32','2015-09-10 11:10:32',NULL,50,NULL,50,NULL,NULL),('1','51ec3e66-f98b-4357-a643-1658469478ca','2L7atq3SDKY3MzhGWG+wzLvbbVg=',1,'bvdg//DrZzP5AXYfjNkiMQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:10:43','2015-09-10 11:10:43','2015-09-10 11:10:43',NULL,50,NULL,50,NULL,NULL),('1','c3d483d5-40ec-4c73-99cd-ecab600d2b4a','I3+djOgsgM00sSbaZ9JDjWNv1mw=',1,'MbvUte8lLRutqIC472ojeA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:10:52','2015-09-10 11:10:52','2015-09-10 11:10:52',NULL,50,NULL,50,NULL,NULL),('1','b3189bb8-a905-4d21-a2dc-ba0396f9bdbf','XfmIB/HMmqJ1z/LNGdwNVNOMrCc=',1,'OK96y0rR96FdC1/xMwaadQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:11:06','2015-09-10 11:11:06','2015-09-10 11:11:06',NULL,50,NULL,50,NULL,NULL),('1','b87a980f-6103-47cf-a1c5-1a3b680fb071','QP0w53sKdKjcrH3rJOJt0e+Gk9o=',1,'07Arzt21PMXnqZLIBp1bVw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:11:36','2015-09-10 11:11:36','2015-09-10 11:11:36',NULL,50,NULL,50,NULL,NULL),('1','066569c9-2b22-41ba-a80d-7cf03a735ee5','E3CX4uzJ++KGvJRksoGWKVXK6Fc=',1,'aD0fDVXmPmS19ip9wwRB0w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:11:46','2015-09-10 11:11:46','2015-09-10 11:11:46',NULL,50,NULL,50,NULL,''),('1','75d95c20-543a-4083-91b2-4558dcf0264b','jkolKD8jGoVRiPV4JoH52aoMaaE=',1,'Pmx385rGfpo8E6Slv3ufdQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:11:55','2015-09-10 11:11:55','2015-09-10 11:11:55',NULL,50,NULL,50,NULL,NULL),('1','79632daf-ea9e-458b-9f38-a304310eada5','MSWv2FJIwtkkAasaagkl8fv1lpw=',1,'kkS+tzZY2/E92800B0ZtlQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:12:05','2015-09-10 11:12:05','2015-09-10 11:12:05',NULL,50,NULL,50,NULL,NULL),('1','90334ecf-08b6-49e7-94d7-2b3c440fce36','Gk6RgeVt6Tz1DCYEIH7qZrdElnE=',1,'+SOcgQIU5OyBEFb6vzGZ4Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:12:15','2015-09-10 11:12:15','2015-09-10 11:12:15',NULL,50,NULL,50,NULL,NULL),('1','be519d99-ff8a-4f3b-8cad-25139614e215','199J+OVPYb7LjCIfLLks25VX9lY=',1,'P8jgLPHhIpP7vXOMBJ8gNw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:12:28','2015-09-10 11:12:28','2015-09-10 11:12:28',NULL,50,NULL,50,NULL,NULL),('1','2573a8fd-c2da-45e0-8cf3-44cec6d4b2a8','7Dxta2GiravYtdL715MYrvfv8N4=',1,'16YZfRIQEDIOkkd2nPTbhA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:12:40','2015-09-10 11:12:40','2015-09-10 11:12:40',NULL,50,NULL,50,NULL,NULL),('1','f12afa6b-30fe-4e49-a930-579cdca10da7','Pfz94jQAIR+v5KqYAraC4gcLB7M=',1,'S7U2hi4ZAvI1wlulxd6x8w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:12:55','2015-09-10 11:12:55','2015-09-10 11:12:55',NULL,50,NULL,50,NULL,NULL),('1','186c9063-04d7-43a6-b779-114c69cd1a22','nBhKFo6uaNFm0NuZfc8wgaCyDjs=',1,'/wD22B4CXEAyQRJ6HO3CpA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:13:11','2015-09-10 11:13:11','2015-09-10 11:13:11',NULL,50,NULL,50,NULL,NULL),('1','72146e2d-ab33-43ec-bc11-c7f438cddcb9','c1273IR3pSfJ7r/kEWsnhxRITj8=',1,'Gpm0KgKi0bdWu/5FVonsag==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:13:26','2015-09-10 11:13:26','2015-09-10 11:13:26',NULL,50,NULL,50,NULL,NULL),('1','84962dd0-c0bf-414d-bcc0-2919e483c8f0','fXRh0KRDmVaPkx82YL3kPQMa8aM=',1,'nBc5BVQ+UjIVB9hr8OkbKA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:13:43','2015-09-10 11:13:43','2015-09-10 11:13:43',NULL,50,NULL,50,NULL,NULL),('1','924b4852-d31e-46fa-ac90-6a517e2de482','Q7Iz+BhjErej4rMjBd357/KOEK0=',1,'F2jwaIiZ40YL+uZqTLxC9w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:13:52','2015-09-10 11:13:52','2015-09-10 11:13:52',NULL,50,NULL,50,NULL,NULL),('1','ce0ba7b8-cd74-4925-aee0-7b9b1882ab9a','Np1LUI6hBGPfrNAd3HIMfNzrzKs=',1,'uyGnS7CD1XkvmiB7NbiYWQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:14:03','2015-09-10 11:14:03','2015-09-10 11:14:03',NULL,50,NULL,50,NULL,NULL),('1','ade8e7cf-6b1b-4101-a968-ab7c80c41be0','SxoLQ+e9kowiZNFynthjVABuQDM=',1,'3XRsDhe+DiyBj2rm+Q73xQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:14:17','2015-09-10 11:14:17','2015-09-10 11:14:17',NULL,50,NULL,50,NULL,NULL),('1','6295bd60-62d9-4565-a245-1e5f21fd4790','ASA9HkrFl3d604VLmRSjFZvgXHg=',1,'+Bw8tkd1K9Eub3dOQLjY/A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:14:29','2015-09-10 11:14:29','2015-09-10 11:14:29',NULL,50,NULL,50,NULL,NULL),('1','3c0841a6-ebd9-4933-927e-40280c100b9b','JWR340zQD8DB9M7GwBPLDs9IESw=',1,'rgJRDvOzSCUqo+GJYBzvpA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:14:42','2015-09-10 11:14:42','2015-09-10 11:14:42',NULL,50,NULL,50,NULL,NULL),('1','ecacced3-cb23-4a35-9225-6074acdadc79','SaZhQ69DWIdBFdu9xzwC2S6kJws=',1,'KTGAlSdHsPtko6EPD6uESA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:14:56','2015-09-10 11:14:56','2015-09-10 11:14:56',NULL,50,NULL,50,NULL,NULL),('1','61f096c7-b492-4054-91bf-f386c6895288','u/cH0lPCta0M6LbyC+Z1SweWipE=',1,'2qQej5IC3pXFe6grA0e+AA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:15:06','2015-09-10 11:15:06','2015-09-10 11:15:06',NULL,50,NULL,50,NULL,NULL),('1','e05782ed-2f75-48e2-8bc8-53d88d416733','CfSXFujk8d/pc4+WjRiHTquXVkg=',1,'gjbHSGKn4XG7Mg0hsnNQTg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:15:16','2015-09-10 11:15:16','2015-09-10 11:15:16',NULL,50,NULL,50,NULL,NULL),('1','4a34e0f4-7cc3-4ce2-b4ef-4cb754459c6b','kMQTkmG5aMcevdIijFlQxlqw/3I=',1,'/2jMF5RM5YVetdpapum8rw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:15:42','2015-09-10 11:15:42','2015-09-10 11:15:42',NULL,50,NULL,50,NULL,NULL),('1','86d1d7f0-d601-411b-9648-fd2e4de575ab','sRBIcSMgsih+TIkEXEyyc7OjCJM=',1,'01JtKAi48wIlGAepl6VEFQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:16:04','2015-09-10 11:16:04','2015-09-10 11:16:04',NULL,50,NULL,50,NULL,NULL),('1','8e8439f9-088e-4284-9872-7b2b4d293bc8','s0fbNtvtc3AJuesfl7Th0IYS14Q=',1,'A+OdZD+vz2ACKE9mRyMKMA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:16:21','2015-09-10 11:16:21','2015-09-10 11:16:21',NULL,50,NULL,50,NULL,NULL),('1','f4cb73af-c321-4eb4-9c71-63902f837c06','2jnumex2uT8iRned5cznko7xd6o=',1,'A8eeoxBxMuyv8wphasZepw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:16:32','2015-09-10 11:16:32','2015-09-10 11:16:32',NULL,50,NULL,50,NULL,NULL),('1','749d7268-e3d9-42cf-ae9f-5629c540bd28','sV1O4Rpf1bJCa4D1S2AIbXB4de8=',1,'iQjqNR16h8woOG2oD5HTEA==',NULL,'droysroy@yahoo.com',NULL,'na','na',1,0,'2015-09-10 11:16:44','2015-09-10 11:16:44','2015-09-10 11:16:44',NULL,50,NULL,50,NULL,''),('1','821b11a1-c1d2-4d40-b727-4eb1f64d9206','pxsDw6SRet8CiFnXLmZx10lRCUY=',1,'7gU9M7108s1BMgi+ekvR/w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:16:54','2015-09-10 11:16:54','2015-09-10 11:16:54',NULL,50,NULL,50,NULL,NULL),('1','a2e995c3-631e-421e-b956-4f2e836cf7d8','4Uo18XeqFMFO2WImbxxCuC8Ztlc=',1,'mKv58hhI75gY/eRGQ4Qi4Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:17:04','2015-09-10 11:17:04','2015-09-10 11:17:04',NULL,50,NULL,50,NULL,NULL),('1','c68f5308-e062-45ef-a97d-340157c774b1','rJgZDifdh/mj2krTPDZp8MUrW50=',1,'KzHbHjqcZSNPScizKZD8nw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:17:25','2015-09-10 11:17:25','2015-09-10 11:17:25',NULL,50,NULL,50,NULL,NULL),('1','ee4fd003-8938-4dea-873f-5c08bc9f667a','2Ud8FL8I7yfeftuJgyC5Z6uSnMs=',1,'NsKGJTBatEvthDrxnnKknw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:17:38','2015-09-10 11:17:38','2015-09-10 11:17:38',NULL,50,NULL,50,NULL,NULL),('1','a0e12bce-6952-4a77-86d9-b8d0e3e35e0d','7rl0NxD2Me94DdtclwBvTFip5Ms=',1,'gO2t4wye90nGuc3HxTZZow==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:17:47','2015-09-10 11:17:47','2015-09-10 11:17:47',NULL,50,NULL,50,NULL,NULL),('1','e3ad2379-b247-4c52-adaa-42165fcc99b0','TmyeYfx0LMmH0DKdfr632x8nML8=',1,'mTfUZi8ck3izeLih6HDY5w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:18:21','2015-09-10 11:18:21','2015-09-10 11:18:21',NULL,50,NULL,50,NULL,NULL),('1','6ff9184e-38cf-4117-990b-f98d39d23625','9Moz4oN+wy84ajuGYf3ZfWrZr1g=',1,'aQlURBWnipprW0JLw868tg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:18:36','2015-09-10 11:18:36','2015-09-10 11:18:36',NULL,50,NULL,50,NULL,NULL),('1','d94c1313-484f-41e4-b5ba-6edf6c7b4718','B/IVgXgHgG4Q7zOGJXjIBexafls=',1,'jda0Ngxu+2dxMoGa7zKX2w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:18:47','2015-09-10 11:18:47','2015-09-10 11:18:47',NULL,50,NULL,50,NULL,NULL),('1','a9558b40-84c2-4e60-8786-908a184891b2','UXXz3E2OdKUsKZppRzdxpYaysQU=',1,'dm1Co8eHO24EQ+ujGnAscw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:19:10','2015-09-10 11:19:10','2015-09-10 11:19:10',NULL,50,NULL,50,NULL,NULL),('1','fe5df07e-9e2d-46f4-ab79-cfb04f3d7e79','zbT17fkk5AHL8Lnn0zivUmtjzno=',1,'J0Yj0ZsOpON0NDFc45st7g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:19:23','2015-09-10 11:19:23','2015-09-10 11:19:23',NULL,50,NULL,50,NULL,NULL),('1','d5285bb9-2b35-44bc-9a02-66cebbb6fddd','AwVeuueuzd+n+Cd6hU6VAUSfTGs=',1,'m8cr4OGVgsXDDef2q50uXg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:19:34','2015-09-10 11:19:34','2015-09-10 11:19:34',NULL,50,NULL,50,NULL,NULL),('1','332ff09d-b243-4626-ab9d-60615787ad87','6cBXIKlOX++hVGu87bi1p2WC5P0=',1,'HvbTKBDe+4OBjSrML15NAQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:19:45','2015-09-10 11:19:45','2015-09-10 11:19:45',NULL,50,NULL,50,NULL,NULL),('1','ce752315-3cab-4543-a5f0-7e2c3146fd9b','0oMuTGZMic3qNKQaxbWsvVNRqnU=',1,'ZsMOAJsajum3YEsfW+fyDQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:19:56','2015-09-10 11:19:56','2015-09-10 11:19:56',NULL,50,NULL,50,NULL,NULL),('1','90d6fa77-ed76-425d-aaa0-81f739970d12','LmIUp5zZ+x0WHjpnZi0Tu5AcytM=',1,'lFYmMHAAzwuYK4oG9XhKcA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:20:07','2015-09-10 11:20:07','2015-09-10 11:20:07',NULL,50,NULL,50,NULL,NULL),('1','9bdd240a-c63f-435a-ada7-3b7975919bee','K6uDUqU6GvtHoYSpUQiQv8d5ayQ=',1,'eakdoWk016XnnIO5yUY8Cg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:20:19','2015-09-10 11:20:19','2015-09-10 11:20:19',NULL,50,NULL,50,NULL,NULL),('1','7696c584-e84d-48e9-bc3b-026b9ab63a66','KJMsKlBKdq3QTGB81DPDzbvE2hM=',1,'egQPRPfyATvk5jfbgBlpNQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:20:32','2015-09-10 11:20:32','2015-09-10 11:20:32',NULL,50,NULL,50,NULL,NULL),('1','c9dd145e-fd17-4727-ae80-5fbc2741f1ce','j5wJqgHJ+3GSMn6r75QjjB+yCpk=',1,'gRztxO3lGPafJuquC86Pqg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:20:44','2015-09-10 11:20:44','2015-09-10 11:20:44',NULL,50,NULL,50,NULL,NULL),('1','1b70a20f-ad1e-4348-853a-b71d92145088','2tl6E3zLdc3wDlpVzhGHkRBeGP8=',1,'aovHG9iA9OM5EN6nNVOSPw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:21:00','2015-09-10 11:21:00','2015-09-10 11:21:00',NULL,50,NULL,50,NULL,NULL),('1','128fa8bb-f75b-432d-bb0a-306fee0c8884','fp8/ymPnDXr/sbIgu/64sZMKpy4=',1,'nQWcNh3hIDZM2QAaZ4Sv3g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:21:10','2015-09-10 11:21:10','2015-09-10 11:21:10',NULL,50,NULL,50,NULL,NULL),('1','092eff1d-6c0e-45db-90bd-075a4d2c0fee','EMtgpDAWG+5oOP8xvto/z5DN7Ic=',1,'iujvuYuWGdPK/XKNsT4j+g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:21:45','2015-09-10 11:21:45','2015-09-10 11:21:45',NULL,50,NULL,50,NULL,''),('1','ec7013c7-1ba7-422c-a1b4-ef3814f92dbc','T2xVgdsFSJILZmMq4CQIc2yRFNc=',1,'yDlbZxZlp6ooFPuw2095mQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:22:00','2015-09-10 11:22:00','2015-09-10 11:22:00',NULL,50,NULL,50,NULL,NULL),('1','349f62a3-21fe-4151-ae41-23a2e780e2cc','jzPf24JzyNNmObmn5Qjj4YZRICQ=',1,'o38cGe8lhc0ggMixnZFf8Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:22:11','2015-09-10 11:22:11','2015-09-10 11:22:11',NULL,50,NULL,50,NULL,NULL),('1','12fd872c-0c05-447a-81be-8feaf72fc47b','ZfeXURH9UF255uJotETMNeX9mlc=',1,'2CpmYE79lsgZb3gX4PVeeQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:22:23','2015-09-10 11:22:23','2015-09-10 11:22:23',NULL,50,NULL,50,NULL,''),('1','c3a7e482-f907-4c6f-b948-5744233f084a','l28/M28DiHhGYyiypc9niM9e4u8=',1,'PVXkxUTmiHdhhL3DwsiiYw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:22:36','2015-09-10 11:22:36','2015-09-10 11:22:36',NULL,50,NULL,50,NULL,NULL),('1','a91ac313-9e85-4f41-8cff-7a5274c09f5b','/JT3Pb7H3fQXEMd5U2R24WnTVjE=',1,'Omokd5M94rGMQHk/GOQ3TQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:23:07','2015-09-10 11:23:07','2015-09-10 11:23:07',NULL,50,NULL,50,NULL,NULL),('1','167ce0a8-5351-404c-9cc1-bfba87367bb5','76Ev/gy79vOymj3dArcjCKRnHPk=',1,'v6ETRTvi8Cjq8hLuXXnfaw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:23:28','2015-09-10 11:23:28','2015-09-10 11:23:28',NULL,50,NULL,50,NULL,NULL),('1','77c19a52-c86d-41f6-bed3-742fe856c0eb','TvMM5qkKjJlcI0C3ydUm557IZsg=',1,'c2eC1qj56WjCi0nvpoM8sg==',NULL,'shirin_akter@hotmail.com',NULL,'na','na',1,0,'2015-09-10 11:23:38','2015-09-10 11:23:38','2015-09-10 11:23:38',NULL,50,NULL,50,NULL,''),('1','3ea66932-db05-4c8d-bfec-4e794b226d8c','uiLD/mChaX/iStwGmt17ORFyjh0=',1,'mjVLJhUBRNf9ActKGS8sPw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:23:49','2015-09-10 11:23:49','2015-09-10 11:23:49',NULL,50,NULL,50,NULL,NULL),('1','484171a3-c338-4f81-aa39-f138fd6bbb6a','OTlpC32SssLekJpE/Kku0IuMbv4=',1,'+mg3/tyVlSMZLchkT5OEkg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:24:01','2015-09-10 11:24:01','2015-09-10 11:24:01',NULL,50,NULL,50,NULL,NULL),('1','72446052-af1d-4663-9e2a-728c261078dc','Xf36c7qX0GVR7u8zqiuVYEVO9qw=',1,'mGtQuxIzPDLJudMEZCqaXQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:24:11','2015-09-10 11:24:11','2015-09-10 11:24:11',NULL,50,NULL,50,NULL,NULL),('1','3d89918e-0d09-43d0-8ff2-4d57293d30b8','EwU7RnsDvoKnU/Kb6wFM492SSkc=',1,'t23+qKJ3KA1F3T8goF//RA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:24:33','2015-09-10 11:24:33','2015-09-10 11:24:33',NULL,50,NULL,50,NULL,NULL),('1','78af0e6e-a33b-4413-86c1-58585a71c43e','b/U+zYv0EFf77NejpMSdWo5IXXY=',1,'bbGs/37DgUChfnT+uA4T3Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:25:14','2015-09-10 11:25:14','2015-09-10 11:25:14',NULL,50,NULL,50,NULL,NULL),('1','3323f7d4-dbe1-4729-855e-5b21239c4622','Op1wyroDNaE5NnKmC0DJ1NPA9p0=',1,'wc9ejXBIsg+IaHSKiLiCTA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:25:52','2015-09-10 11:25:52','2015-09-10 11:25:52',NULL,50,NULL,50,NULL,NULL),('1','9b31a6b7-4d4e-4e8b-8688-8ac23c9744ec','+Al1IX8ZMBp7U1uELlxlQVGYIB4=',1,'/BNfRH4+6O5AZ8RBEky3AA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:26:07','2015-09-10 11:26:07','2015-09-10 11:26:07',NULL,50,NULL,50,NULL,NULL),('1','458b0f9f-d059-43ee-9d1c-4e06e6c3f3da','fHCRZLvVcSBlDEphhIBsaxDF2PU=',1,'0/lXKcaYc4EUkxyu/Lcvvg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:26:17','2015-09-10 11:26:17','2015-09-10 11:26:17',NULL,50,NULL,50,NULL,NULL),('1','4d318262-465d-47cd-a419-7d75734d90a1','kfBqC8ADMXBC9fvHwTqsHKFONIY=',1,'7TzwM/WxNxpKjSbUwmm+Gw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:26:36','2015-09-10 11:26:36','2015-09-10 11:26:36',NULL,50,NULL,50,NULL,NULL),('1','5c5c981d-8873-4ff3-bda0-e185f375a09e','qoDxx/c7YulNGK/T6f822jpITTA=',1,'LdwON98rjlOl87LsdcdWGg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:26:46','2015-09-10 11:26:46','2015-09-10 11:26:46',NULL,50,NULL,50,NULL,NULL),('1','f7e5f7f0-fca0-4fbb-90d8-289d0b91fa5b','TooO7aB2gUZ2+OdKBxbNCjO/Xek=',1,'Fl8htZ/IklXSJz6qVLu0DA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:26:59','2015-09-10 11:26:59','2015-09-10 11:26:59',NULL,50,NULL,50,NULL,NULL),('1','86ca3e2f-f55a-43e6-8183-6160f7d199f0','Vbg4yKU9FG+NkUsCfURdHo8gMHs=',1,'X3SCYHtFjKgqp9nFxI6kww==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:27:10','2015-09-10 11:27:10','2015-09-10 11:27:10',NULL,50,NULL,50,NULL,NULL),('1','977c1093-5ecf-49ca-926f-2c72d6c4e91c','tonADn8pOCJq/LBuP4P8c3v8+FE=',1,'eko4eabQaUdYmG3nLkYFaQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:27:24','2015-09-10 11:27:24','2015-09-10 11:27:24',NULL,50,NULL,50,NULL,NULL),('1','5d243b17-987b-48fb-810b-4d5aca8a0430','glvB9dnby/FDk8QN8i5g+e29C2o=',1,'+927+UJLxrPbF/hZu+LNbg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:27:38','2015-09-10 11:27:38','2015-09-10 11:27:38',NULL,50,NULL,50,NULL,NULL),('1','0fdc7571-b2ac-466f-8c4d-c20f3c68b996','PpEe+q/j8+PtZVETLUAXtONTLFQ=',1,'jrFk80TP59784qcCsHx/Qw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:27:50','2015-09-10 11:27:50','2015-09-10 11:27:50',NULL,50,NULL,50,NULL,NULL),('1','b6ef631e-bcf0-4a78-9523-9c746701bbae','HM5wtVWRkcXhu+/gRASZJErg6tI=',1,'jDBOLpK4oaV28vinejjXOg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:28:02','2015-09-10 11:28:02','2015-09-10 11:28:02',NULL,50,NULL,50,NULL,NULL),('1','b6e62278-c662-4706-b12d-efd48bf1711e','JYwEttIY7KbL7r1td5IIyGCMPHY=',1,'iDuBI1ZuP7cUXIqQjmNKHQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:28:14','2015-09-10 11:28:14','2015-09-10 11:28:14',NULL,50,NULL,50,NULL,NULL),('1','43161fbe-c89d-4010-9507-cb10280cbbde','KYB8pn6m3p4+TpL++IioPoG4cow=',1,'JpKGs5JJLRSp5ywz1D965Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:28:24','2015-09-10 11:28:24','2015-09-10 11:28:24',NULL,50,NULL,50,NULL,NULL),('1','7a2635bc-4864-43ba-87a4-e9b17fb6a073','7ifrFRhKF4E6dI6/95o6ahQHLCI=',1,'AnSDLYnKIkLfK/W+Xz6VEw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:28:45','2015-09-10 11:28:45','2015-09-10 11:28:45',NULL,50,NULL,50,NULL,NULL),('1','da36ffd6-f06f-4d16-9e38-de792e51ef61','na2whfG6ezywetH2N31YEfKrVvs=',1,'bys8PooOPC81JwSX0g/E5Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:28:56','2015-09-10 11:28:56','2015-09-10 11:28:56',NULL,50,NULL,50,NULL,NULL),('1','0176b8ea-c80b-4b94-b2fe-a6cbc48b528c','z+o3fpnEiAc+ZNPhHSD/FSd03gM=',1,'Qds9Oew0idrXuFvkw9GqRQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:29:09','2015-09-10 11:29:09','2015-09-10 11:29:09',NULL,50,NULL,50,NULL,''),('1','b0aa029f-af36-449f-94fa-fc8eccebe967','o7fVptDhVNRh1UCaWYgWXpaOKkE=',1,'/oaBs7Mo4Eh4xO6g3fnzaA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:29:19','2015-09-10 11:29:19','2015-09-10 11:29:19',NULL,50,NULL,50,NULL,NULL),('1','7271b673-903a-4a6b-bb0f-bef98c5be5e4','zsxjE+J7ShQxS5EemoByYWTUxa4=',1,'8Y+gBsbp1HB1LtRHwxNuDQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:29:29','2015-09-10 11:29:29','2015-09-10 11:29:29',NULL,50,NULL,50,NULL,NULL),('1','09f79ca5-cb77-4c9d-a8dd-f6ce5a5cf6b4','Ip3ZWHD4jDlCBRwV5hBUFeJjJKY=',1,'CY30/IKm3NabFmtaOQeYIA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:29:40','2015-09-10 11:29:40','2015-09-10 11:29:40',NULL,50,NULL,50,NULL,NULL),('1','29071c31-626e-4131-86ad-058cecdc8a30','ER5ADnHAGH1eLWc1EqPepAE7eQk=',1,'BE4tmk5EWFwpuFAXP+lbJQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:29:49','2015-09-10 11:29:49','2015-09-10 11:29:49',NULL,50,NULL,50,NULL,NULL),('1','d37c3780-93ad-4cf2-b216-b2e994e22251','IsFuyM0zlo9MASmHweNnWybZqa8=',1,'ZapeLLKdlgyiWxCf77bKlw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:29:58','2015-09-10 11:29:58','2015-09-10 11:29:58',NULL,50,NULL,50,NULL,NULL),('1','feb6cdb8-1018-48a1-9f46-a2e3bf66d7db','m26YJupybJsO5KbNAteaKvXWtnM=',1,'ASSVpOxLMFfKHtd/hFJiUw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:30:11','2015-09-10 11:30:11','2015-09-10 11:30:11',NULL,50,NULL,50,NULL,NULL),('1','c7600460-e940-4554-be03-da1035f01d6f','BKvj7FkCckwBnyXOUvK1pKqu7vg=',1,'+y3EWeKlXyYjgxPb8GezJw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:30:23','2015-09-10 11:30:23','2015-09-10 11:30:23',NULL,50,NULL,50,NULL,NULL),('1','c13aa85b-5de1-46d5-8985-d56a43b842d6','joWfYwrvlP1de13zmdrAyYwzjzE=',1,'67Z1Irm2zhmQs7+JGYhuww==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:30:42','2015-09-10 11:30:42','2015-09-10 11:30:42',NULL,50,NULL,50,NULL,NULL),('1','2679093f-3a02-4793-b263-1d00b623ee62','zchZlIUUofR7Vo5rF4j+LpjgMXw=',1,'zIufR4FqvbvjSV7BfZx4Uw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:31:00','2015-09-10 11:31:00','2015-09-10 11:31:00',NULL,50,NULL,50,NULL,NULL),('1','601604bd-7339-4a51-a542-1c3aae64ed5b','9tf/DI1Q2/2Nr9ks/gsf+fvlJQY=',1,'zuIdpsZMdQuiDxBPfSDzvg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:31:16','2015-09-10 11:31:16','2015-09-10 11:31:16',NULL,50,NULL,50,NULL,NULL),('1','24e7b23c-13a5-4163-b5e2-e487ecbc7fb7','JPgu+aKJKlb8lp8HlU8/LRBukf8=',1,'flgVhtxg26ffSkwSFrg/Ag==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:31:30','2015-09-10 11:31:30','2015-09-10 11:31:30',NULL,50,NULL,50,NULL,NULL),('1','cf41e359-4317-4334-a1f3-b4bc8fca4a13','zqCmKU0KkRVloWs3ratmatR+Fp0=',1,'X2S2jp8yYn12h2ZGRr5kdQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:31:42','2015-09-10 11:31:42','2015-09-10 11:31:42',NULL,50,NULL,50,NULL,NULL),('1','ef1c7d6a-592f-44d0-922e-e7ae41e05652','ZiV5Y8jCAaKOCnJkVg8GQ8kVVas=',1,'LnTsCEc4nUXj6yj4gmD21g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:32:02','2015-09-10 11:32:02','2015-09-10 11:32:02',NULL,50,NULL,50,NULL,NULL),('1','b023cc29-442c-4c01-8633-beb58b86560a','ItnDV4OvhtAdkxSYbzOF7qtAsak=',1,'YcJPniXcN69kx96/STibZQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:32:15','2015-09-10 11:32:15','2015-09-10 11:32:15',NULL,50,NULL,50,NULL,NULL),('1','66b22f1e-d337-4f2f-98ea-2808574dd020','TySqsUonCfs3SHRyXBvB/fVyLss=',1,'Zf5TTf1MNeKFNnlbCpJm6w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:32:26','2015-09-10 11:32:26','2015-09-10 11:32:26',NULL,50,NULL,50,NULL,NULL),('1','3922fcf0-5642-4c2d-8f41-66fa2acd2ef5','gf43zDBKjhS47u67TcJ77c+gwDU=',1,'tSkXqVRLPd91160afynZsA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:32:35','2015-09-10 11:32:35','2015-09-10 11:32:35',NULL,50,NULL,50,NULL,NULL),('1','53d1d4b2-0bb1-4944-b58a-bf1ddb9e67aa','8LctUL9GZb0Hsl8Ri/6R9wi45CY=',1,'aLALDefYVAMsK94dsur2YA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:33:06','2015-09-10 11:33:06','2015-09-10 11:33:06',NULL,50,NULL,50,NULL,''),('1','b22f6390-dcb0-45a8-bb81-aaf684f22662','2Npsesj4ttoom7EkJhMHySQOb2c=',1,'AWTPGOIO4e9sqYn4FJrpeg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:33:17','2015-09-10 11:33:17','2015-09-10 11:33:17',NULL,50,NULL,50,NULL,''),('1','7f75b16a-81bd-4731-a358-b76c080f627e','dxSGOuXtW0g+keQSmSlpQAb1UXk=',1,'yUwN5TQ+dElfeVt0yLXI9w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:34:11','2015-09-10 11:34:11','2015-09-10 11:34:11',NULL,50,NULL,50,NULL,''),('1','4a20280e-05c5-4b57-af2b-f855800d179c','+xQxaUGsPC9Rr9GhkG4YSv/2/zY=',1,'SZf5mgIxmexQ8AhPbTMR8A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:34:23','2015-09-10 11:34:23','2015-09-10 11:34:23',NULL,50,NULL,50,NULL,''),('1','92fab6b5-301c-4c41-9e66-f760645435af','WS6SKcb6qt2Cwe+8E8dVrSb1Jxc=',1,'pPTKIj4oQl5x7X9iqd83MQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:34:39','2015-09-10 11:34:39','2015-09-10 11:34:39',NULL,50,NULL,50,NULL,NULL),('1','54c772a1-3981-4c8b-9b97-3e4efcf18604','ibzW8IvT6gvXwtAM4oSIC514464=',1,'BYAaZnapyhCJhzD8IbQdBg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:38:35','2015-09-10 11:38:35','2015-09-10 11:38:35',NULL,50,NULL,50,NULL,NULL),('1','2102fa7e-6e20-4743-ad59-4c3293c1cfbd','dtOgfduWMRPJXnF0zyDUFZm7Qcc=',1,'L5SkaOBtaFXr5LN1qciCzQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:38:47','2015-09-10 11:38:47','2015-09-10 11:38:47',NULL,50,NULL,50,NULL,NULL),('1','32c359d0-0708-47b3-a4b6-fb74da937851','wz66b1XdhzJ+icVw4FyAGlElpUw=',1,'B6NK5HQsKE1L07lhzRMc6w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:38:59','2015-09-10 11:38:59','2015-09-10 11:38:59',NULL,50,NULL,50,NULL,NULL),('1','aab1820d-8bd7-4c1c-ae9b-6f22da901c06','dOFKB9DsrvbwG9nQERm0GI8Scfc=',1,'bsjCGxU3jug987+bvthC3w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:39:09','2015-09-10 11:39:09','2015-09-10 11:39:09',NULL,50,NULL,50,NULL,NULL),('1','7454660f-8351-4d3d-8026-f8acfd34d2a4','tv+xfit5OOcV4A43gHjYQrWh33k=',1,'Q0lVLzahVSJ5OwFxnIYtOQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:39:23','2015-09-10 11:39:23','2015-09-10 11:39:23',NULL,50,NULL,50,NULL,NULL),('1','a0718c51-fa5f-45c7-bc36-8aa0fcce28f2','40NvfIY2voVbIpnafEGedNWT//0=',1,'UXxRLfw1VLcyjXjcHiwZuQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:39:34','2015-09-10 11:39:34','2015-09-10 11:39:34',NULL,50,NULL,50,NULL,NULL),('1','26ce88c9-2542-42af-ad5b-bbdc8fdf4a86','QYpY+y6mFoEfx+YKCDMi78NPyYo=',1,'ON09MeIwGpx2CL87MSrwrA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:39:43','2015-09-10 11:39:43','2015-09-10 11:39:43',NULL,50,NULL,50,NULL,NULL),('1','11e21f81-2876-4473-9bc3-b81b170e2db0','kxHWgeuHY79+ZSxWhVJ/J5CJAFg=',1,'4+W37WKRyCEht8GlsMq6aw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:40:00','2015-09-10 11:40:00','2015-09-10 11:40:00',NULL,50,NULL,50,NULL,NULL),('1','4a77f3f2-f3a2-4a85-9850-6713645226ab','Cwtd2NcK/IDhXYI8jLp/5fZSapY=',1,'FHY44Ru0gzhR0J0IApVL0Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:40:14','2015-09-10 11:40:14','2015-09-10 11:40:14',NULL,50,NULL,50,NULL,NULL),('1','ec62577c-0faf-4c33-bc97-e156fa1daa8b','1Q+VGlqoM3/vVtq2UXzVXlkuiaQ=',1,'QmlW5dqk4uLmv1Q9/AdBsQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:40:27','2015-09-10 11:40:27','2015-09-10 11:40:27',NULL,50,NULL,50,NULL,NULL),('1','3f69de95-d7c7-4a19-8a46-3e203bcc4cf8','Ue6FKf6bpZKnpk/pR2ogZTgNWIw=',1,'tz5dXM/Ymggs4ECQ8r0jTw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:40:41','2015-09-10 11:40:41','2015-09-10 11:40:41',NULL,50,NULL,50,NULL,NULL),('1','db42c572-50e7-4cbb-8e97-0e8da0f03c8c','VbhWcW9VSToCkr52bSQ92RsFq9E=',1,'kEWgutBooTkxXj9sy4DDIA==',NULL,'nazrulkhan98@yahoo.com',NULL,'na','na',1,0,'2015-09-10 11:40:55','2015-09-10 11:40:55','2015-09-10 11:40:55',NULL,50,NULL,50,NULL,''),('1','b02d10b3-4b1a-473b-8e67-5ef2237a5402','9UhmP9vuIf9stRM0OSFokhpwAT0=',1,'84sDvmxLPB891ghBCRic+A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:41:05','2015-09-10 11:41:05','2015-09-10 11:41:05',NULL,50,NULL,50,NULL,NULL),('1','6b245ede-29e1-4a42-9b21-e24c005711d0','eaMqi+rC/odrmf7uz8cJux6Ey8c=',1,'QBCW7sWrSi8BhZTcGZip8w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:41:19','2015-09-10 11:41:19','2015-09-10 11:41:19',NULL,50,NULL,50,NULL,NULL),('1','a6791693-2b86-4497-9c19-e801f59bc5f6','xWXntJA8f4yLg2TNvRHoxtrp1rA=',1,'vcYPlRSS6ysZjZhuuJnoLw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:41:28','2015-09-10 11:41:28','2015-09-10 11:41:28',NULL,50,NULL,50,NULL,NULL),('1','4c70a14d-b9fc-438b-878e-e683b8825c5d','wi1TK9LfDNp6fjBzzgw5bPAJBuQ=',1,'6oHJbF1IzZbc/Aue8DjynQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:41:39','2015-09-10 11:41:39','2015-09-10 11:41:39',NULL,50,NULL,50,NULL,NULL),('1','d01468b9-e3f3-46c0-809b-fac3a8005abe','sBM1nxaQICfT/RddQK871esnJgk=',1,'XhkeqPIW3LjW//CMUk21MQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:41:51','2015-09-10 11:41:51','2015-09-10 11:41:51',NULL,50,NULL,50,NULL,NULL),('1','ed7ce430-16a9-4ae4-8534-8fcf3ea87d51','op9V/IiwRAMYeq5M9Oee3uUc+SY=',1,'t8xhAfaolBEDX5U9Q27MVA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:42:00','2015-09-10 11:42:00','2015-09-10 11:42:00',NULL,50,NULL,50,NULL,NULL),('1','4e82d8be-282c-47de-ae54-f6df02a3755e','/qNt1i3zR9s9xZbnnaPWMX6xUz0=',1,'iXQlcvNRtTzXK7eCWJ1NKA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:42:10','2015-09-10 11:42:10','2015-09-10 11:42:10',NULL,50,NULL,50,NULL,NULL),('1','c3afe3cb-4750-4bc2-aa34-9f2f1bf450c2','WoHpJp7gVbwQ0EynMeLDe95I4II=',1,'cKw5tUhXkTlLCee8J9t7FA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:42:21','2015-09-10 11:42:21','2015-09-10 11:42:21',NULL,50,NULL,50,NULL,NULL),('1','0777ef7d-468d-4748-bb33-6ac4d45e5afb','n8TTi2m0ORafA50kMqyO6uZ4I7k=',1,'NDnorhnG40Q4qzTXtVWVpQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:42:30','2015-09-10 11:42:30','2015-09-10 11:42:30',NULL,50,NULL,50,NULL,''),('1','4bdfdb8a-4afe-4b73-973b-c46a2875a956','IS7BwKBTG9iixNKV4lsP6QuNKX0=',1,'3DEa3wjvze36MdgUy7tewg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:42:42','2015-09-10 11:42:42','2015-09-10 11:42:42',NULL,50,NULL,50,NULL,NULL),('1','e897d8b8-b66d-4476-aa1b-ea744287eacc','bjX+T5BN9tna8E4J9Pr8R2QGTT8=',1,'NMZAenV3ews4IXn9CEa3mQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:43:00','2015-09-10 11:43:00','2015-09-10 11:43:00',NULL,50,NULL,50,NULL,NULL),('1','eed98e85-9459-4672-999f-86c3eb4b767d','rdh93n1AJ24IsaVHLxNMgqJrxdk=',1,'1Xs2GkqP+tmuXBjhF/uf5Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:43:12','2015-09-10 11:43:12','2015-09-10 11:43:12',NULL,50,NULL,50,NULL,NULL),('1','004dbeb5-057c-4231-8a3f-cd20d034215a','daKHQ7U98nbr3NeA+//2a/BWBsY=',1,'hTvcmwM1K7D++sIliCT42A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:43:23','2015-09-10 11:43:23','2015-09-10 11:43:23',NULL,50,NULL,50,NULL,''),('1','52799e6a-7a3d-4ec5-b314-23f690c16f9a','7G15D4Z8u8bKIE3DU7vMD8GDCSw=',1,'PrROZ1YDwErcCqix+DIc7g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:46:02','2015-09-10 11:46:02','2015-09-10 11:46:02',NULL,50,NULL,50,NULL,NULL),('1','0a75e622-b1c4-4c45-ac60-daa95416400a','VV6U+c+LCF5Jjjak/AIU7jXSRms=',1,'RMiyh9P8OhvAIuAkJoHeqg==',NULL,'zohurul1961@gmail.com',NULL,'na','na',1,0,'2015-09-10 11:46:21','2015-09-10 11:46:21','2015-09-10 11:46:21',NULL,50,NULL,50,NULL,''),('1','2434733a-e07d-4ae8-8d07-a1149020b241','y+XIUAXuO8QC91Id7BgBAZmHF3I=',1,'KVjF03UtwwyBB+Il/nDKiA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:46:39','2015-09-10 11:46:39','2015-09-10 11:46:39',NULL,50,NULL,50,NULL,NULL),('1','a2c7c82b-8192-4799-a16f-b2d558f3923a','hX7CuqJqixcoSmEO488V59pJxv8=',1,'zVIx1RnRHki38f9P9F8HOw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:51:11','2015-09-10 11:51:11','2015-09-10 11:51:11',NULL,50,NULL,50,NULL,NULL),('1','136b4888-a689-4b5e-a7d6-083a03182dff','IHODdhUDrzIuaOJ2nzaoC+3gNDE=',1,'RrkuhJ+FhAb9utirFCAvnA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 11:51:25','2015-09-10 11:51:25','2015-09-10 11:51:25',NULL,50,NULL,50,NULL,NULL),('1','1e6f656f-1bf3-441a-a702-400b81269860','XlBn5WtfyC23EAoefEa9T35RNZY=',1,'CvbCGS4CWGDdt8n2dJRoKQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 03:33:29','2015-09-10 03:33:29','2015-09-10 03:33:29',NULL,50,NULL,50,NULL,NULL),('1','56f08443-b1da-438f-877d-1bbf9f262f95','0dnStqU4dzvNkIczCdDRBe2+alo=',1,'Q5+UC9sf1ryfjCmUuphttg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-10 05:07:21','2015-09-10 05:07:21','2015-09-10 05:07:21',NULL,50,NULL,50,NULL,NULL),('1','67fc30b5-5e55-41ad-8660-9bb40506c0ed','LD55tfzByAS9DChWBbruJXAetpM=',1,'+wbp33KI0ovZJM95WcP9pA==',NULL,'admin@demo.com',NULL,'','',1,0,'2015-09-16 02:19:38','2015-10-12 00:18:15','2015-10-08 22:47:48',NULL,50,NULL,50,NULL,NULL),('1','a7fca99f-caa5-4caf-b17f-d8cb52d5f0b6','yrBFCcWtmxBYoaK0wlGjr1bIGsk=',1,'JvXnZFpjkxRwvDU51gcfLA==',NULL,'member@demo.com',NULL,'','',1,0,'2015-09-16 02:19:58','2015-10-06 13:18:12','2015-09-16 02:19:58',NULL,50,NULL,50,NULL,NULL),('1','4a8b2833-bc3d-44ea-857a-01c9dbc55870','CWaD+Ok9CgLoveHNhkIzNL8yVCE=',1,'CtsJx0uzhUf04PnGv09Ygg==',NULL,'official@demo.com',NULL,'','',1,0,'2015-09-16 02:20:13','2015-10-07 17:39:54','2015-09-16 02:20:13',NULL,50,NULL,50,NULL,NULL),('1','43150722-f57d-4d70-b1f1-c414a6340474','2HlkGjrOOdPBJncF6xhOwek4clQ=',1,'seAuusrLY8MvGbJ2VMetOw==',NULL,'support@demo.com',NULL,'','',1,0,'2015-09-16 02:20:32','2015-10-13 18:28:32','2015-09-16 02:20:32',NULL,50,NULL,50,NULL,NULL),('1','fa75c942-6c9e-41d2-8a26-a3b0a2693a4c','lS1B2AN2mkqKDR59kxYBLHECwJg=',1,'Mks9hNH3fel6C12jibZzYg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:22:21','2015-10-13 17:13:55','2015-09-16 02:22:21',NULL,50,NULL,50,NULL,''),('1','5209699b-a4cb-4ffb-89b3-1cd16ec06ad9','Aw9Tjyn7KPo8VJ6u9MsH0+UhiNM=',1,'Ta6L0iPEHXfc6kVH+c7tDg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:22:45','2015-09-16 02:22:45','2015-09-16 02:22:45',NULL,50,NULL,50,NULL,''),('1','903433b5-a16d-41ee-89f0-0459aa45897a','SqxFvuRNHwKqm57kZWcDjZbfRts=',1,'JZoSFENWHlUyCGC98txgug==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:23:04','2015-09-16 02:23:04','2015-09-16 02:23:04',NULL,50,NULL,50,NULL,''),('1','f0e2fc17-70ed-40e1-aa20-aba52e99060d','LCU5mSFNXUQxpNZUKqaNINN3k44=',1,'vFIsMkV9o0WfcGxwI7KWUQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:23:26','2015-10-03 15:37:16','2015-09-16 02:23:26',NULL,50,NULL,50,NULL,''),('1','6581e247-f238-4816-b69e-54cbf176c039','nBdPhUxhPgp8v2bCnBBD2vEZUnc=',1,'Egfi8vk+IuQpB0h3ihDvDw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:23:38','2015-09-16 02:23:38','2015-09-16 02:23:38',NULL,50,NULL,50,NULL,''),('1','1a531dde-aba3-472b-9206-67085428bb62','ju4mnGet8x4xQll/vAW6gpHtulk=',1,'AlS0VxmDgWcn3WEQUvtT1A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:23:55','2015-09-16 02:23:55','2015-09-16 02:23:55',NULL,50,NULL,50,NULL,''),('1','b4420806-7ab0-4a86-8fda-3a546ce33687','yFd92u9uvqcD5LxXD5LL0QhQBhE=',1,'9fgyqGZLd56TFWqhAYonKQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:24:09','2015-09-16 14:27:40','2015-09-16 02:24:09',NULL,50,NULL,50,NULL,''),('1','655887d8-6498-4838-bfca-0221897267bf','YrlyMxY5FKsZAPVGmk8uvLWSNEA=',1,'qg7bxMfvXYOqRNQdXnahvw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:24:21','2015-09-16 02:24:21','2015-09-16 02:24:21',NULL,50,NULL,50,NULL,''),('1','085c057d-01e9-4261-a7ec-e588b93355ab','B5lb/7soTGqDGf/39WfMOfDB+cI=',1,'8Vx5Rk8wvG515BYuChzSyw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:24:34','2015-09-16 14:27:20','2015-09-16 02:24:34',NULL,50,NULL,50,NULL,''),('1','fa4b7156-47fb-4521-b459-2c0a0041fdf2','/7EpGecWrkhPzKxk6o/sg6kXHjU=',1,'OlW9H9ui+IaTpLVYDSRN0w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:24:47','2015-09-16 02:24:47','2015-09-16 02:24:47',NULL,50,NULL,50,NULL,''),('1','77282bca-ae92-4bfe-b747-91761d493302','Hh1yNCbjlabpn7Z/jERu9IPBH+k=',1,'xEuv6lUt5ag04zg9nrztYA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:29:08','2015-09-16 02:29:08','2015-09-16 02:29:08',NULL,50,NULL,50,NULL,''),('1','bb3dd12d-4ace-4e65-aa83-ea147cc6d223','Y8Bd4GpCvzycn9ElZw74pJkU7FM=',1,'Pi8uyRW1oHmWpC2UQHcepQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:29:23','2015-09-16 02:29:23','2015-09-16 02:29:23',NULL,50,NULL,50,NULL,''),('1','b301cdd1-e6d4-4fdb-a527-566706190b4f','LqdDr32d9KfLhqjdXchPeTkhXAk=',1,'kJkBnsovbtzODs4aRemBsw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:29:38','2015-09-16 02:29:38','2015-09-16 02:29:38',NULL,50,NULL,50,NULL,''),('1','d5e96692-c0fd-4ede-bedb-5d660a2b4d36','Jfa/pca0UPKpxkfbSN1/611PcWE=',1,'l4TWIMWHHxlpbtvtG7mNqA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:29:52','2015-09-16 02:29:52','2015-09-16 02:29:52',NULL,50,NULL,50,NULL,''),('1','648e0b87-43dc-4543-b8b3-a5437a18b3da','UGQSCfnasZ5pXr8l7RQVig6JQk8=',1,'GDxGixql2+VjpTqy5WZwXw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:30:06','2015-09-16 02:30:06','2015-09-16 02:30:06',NULL,50,NULL,50,NULL,''),('1','25295142-deb2-4469-9ace-abe698283ade','961x88+A6nOOFiVI1C93+y9Wd8Y=',1,'fRQgkQIUuvxF3XAx5nvrAA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:30:21','2015-09-16 02:30:21','2015-09-16 02:30:21',NULL,50,NULL,50,NULL,''),('1','581d3ab9-c7fb-49d9-bbaa-3170a8ea4ca6','0EjlKvqBfVu/Updo4FhJyf1Pvzs=',1,'l2593W6fhMpqM+Wox9qbhA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:30:31','2015-09-16 02:30:31','2015-09-16 02:30:31',NULL,50,NULL,50,NULL,''),('1','b932a5f5-5bca-4cc7-bded-e3ce9dc6ddc6','zPHBvbXsxgK6I8BTc2EvK3+9M8A=',1,'gq5c7cRe6QMIDSqHsFp4Tg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:30:42','2015-09-16 02:30:42','2015-09-16 02:30:42',NULL,50,NULL,50,NULL,''),('1','1ec8a47c-0d5d-47a9-8697-bdbd11b931ab','KD3xzQcOXb3nL6cQauL9JANEgiU=',1,'rCCtZOsLYuFjXWz6I5OqJQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:30:55','2015-09-16 02:30:55','2015-09-16 02:30:55',NULL,50,NULL,50,NULL,''),('1','c3bf3dd0-7386-43d0-8fa2-99b409d78e5c','8/MoNWY8RNYtPHVoGW/Jm3R7PNU=',1,'tdBZvtpy8CW/hmkUsD4A4A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:31:04','2015-09-16 02:31:04','2015-09-16 02:31:04',NULL,50,NULL,50,NULL,''),('1','73775a2b-13c9-4ce2-9ba5-ebd4a0e7924c','EK3YVffku8LVDedBdLNxbaqTVN8=',1,'VrsdKmBSVV+OUOYn+2PNoQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:31:16','2015-09-16 02:31:16','2015-09-16 02:31:16',NULL,50,NULL,50,NULL,''),('1','f0f1fda3-a2bb-43a8-b42a-6e92f6f83de1','E0Z4iBHXwckHLi1kLQXEFTV2xZk=',1,'lMP7WKRn9nBC4eW6rPb8fQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:31:26','2015-09-16 02:31:26','2015-09-16 02:31:26',NULL,50,NULL,50,NULL,''),('1','911adc26-b00d-4124-a049-84a172441a3f','I//CSgUfy/cTyZUPj3E6qNUkuVU=',1,'kgDXYN9a6H3Xe7/5t7XVnA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:31:37','2015-09-16 02:31:37','2015-09-16 02:31:37',NULL,50,NULL,50,NULL,''),('1','1bf7a730-aaad-4de1-8cfd-f2eb55371447','5iS+s5HCVX7OKq9DreFEyN00f8o=',1,'B0CCGaqm3w2kIGpkUqf2ig==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:31:51','2015-09-16 02:31:51','2015-09-16 02:31:51',NULL,50,NULL,50,NULL,''),('1','c83f6cde-02e5-40ac-80bb-8a118af0e796','E6RyENugeiI8JHyD/3TSBrcBU1I=',1,'Pt+dcqB1UjdRhGHYkYJTqw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:32:01','2015-09-16 02:32:01','2015-09-16 02:32:01',NULL,50,NULL,50,NULL,''),('1','542f92f0-88df-4b0b-bda9-a5e08087f1df','mkpDGTFpM6tgUxYsVL8J1wePrGE=',1,'ImGpJuv5AJe1br6uDNZehw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:32:13','2015-09-16 02:32:13','2015-09-16 02:32:13',NULL,50,NULL,50,NULL,''),('1','7c0fcf99-c1ef-4912-b879-8fa32bd0e990','36m1Tlla87bylpRU3GoBBKrozVo=',1,'UjjzfbZOpX+zbDAsb/BxFg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:32:52','2015-09-16 02:32:52','2015-09-16 02:32:52',NULL,50,NULL,50,NULL,''),('1','60118886-2402-44ab-9897-d3027a11c545','l7Q27RhixhJpRPgigsKVahezm/4=',1,'VDgrSUSvS3X1dKdvrt0yNg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:33:11','2015-09-16 02:33:11','2015-09-16 02:33:11',NULL,50,NULL,50,NULL,''),('1','71c9aee3-b484-44b0-8412-505fa15a78fe','oKWWo1XbGVD7EirsPS3YP01eK/4=',1,'Mh+Gnok8DCfiCkpe3ML0tg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:33:23','2015-09-16 02:33:23','2015-09-16 02:33:23',NULL,50,NULL,50,NULL,''),('1','30f937c8-50a8-4748-966b-9cbe47d34766','3DevmBOH20uyAYRs6z5UTij43Xw=',1,'siM0w+3kITm9K7eBNgy2hg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:33:35','2015-09-16 02:33:35','2015-09-16 02:33:35',NULL,50,NULL,50,NULL,''),('1','4fd3677e-f05c-4c86-b58e-f5f72d41661e','KQfAszXhShcrv+FpKZ+2c+JlF2w=',1,'PfcPkNUQaPxqKPJ433okiA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:33:52','2015-09-16 02:33:52','2015-09-16 02:33:52',NULL,50,NULL,50,NULL,''),('1','d3904bbc-02fb-4dbe-aaef-7c8a942d15cf','PoqBvwmFDU4weguUrkhJHdDCvKs=',1,'+x0qvfwCeSfE1UbAUkXdnA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:34:04','2015-09-16 02:34:04','2015-09-16 02:34:04',NULL,50,NULL,50,NULL,''),('1','345a0593-9ddd-4c04-ace4-bc585b6d20fc','Y3AcvM7SZTu6A54r6XUg9qO6UzI=',1,'3M9Fcj9qhTRUqT0y8tCYnQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:34:24','2015-09-16 02:34:24','2015-09-16 02:34:24',NULL,50,NULL,50,NULL,''),('1','dfb7aacc-3f28-4cdf-9752-21922a599cb6','IWopCDukNCEHR7UHXsmr6aRcrog=',1,'OLWhN7potL9nn+ITIT/Gzg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:34:35','2015-09-16 02:34:35','2015-09-16 02:34:35',NULL,50,NULL,50,NULL,''),('1','e8b5e1e7-0e48-45ca-b5b7-b340ad10ed3e','8CQOHgSCRM+k/Wn9u0+11MoAuHI=',1,'WycpH1VvZcftBm5U6/yZWg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:34:45','2015-09-16 02:34:45','2015-09-16 02:34:45',NULL,50,NULL,50,NULL,''),('1','263c4019-f8c3-4399-a21f-fce071cdea41','3e0LjxjIy9zvMQIzF6kKtbKyslo=',1,'YXKOjL0EvBQnCVrPF94Tvw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:34:57','2015-10-03 15:36:29','2015-09-16 02:34:57',NULL,50,NULL,50,NULL,''),('1','89ac6c05-b013-431f-a8ac-c9296299af73','axEgSVbliAQ/KA3UvEeOek3T3bM=',1,'if+xX+G6bYwplNyqpFh0PA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:35:07','2015-09-16 02:35:07','2015-09-16 02:35:07',NULL,50,NULL,50,NULL,''),('1','75d5be48-fe0c-44e3-b701-432038c24e0a','+WRUX6mVs7AcQjdlfJRJd9tySqo=',1,'Kwiwm8FO05DjcX1Iic2mSw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:35:17','2015-09-16 02:35:17','2015-09-16 02:35:17',NULL,50,NULL,50,NULL,''),('1','04fd9ecb-6555-473b-9899-e4c3d24eb3b8','sOwmqVqLxnbxWOKmkl+PEABMYNM=',1,'aftTO5oyv6cxV2HLNdg9aA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:35:30','2015-09-16 02:35:30','2015-09-16 02:35:30',NULL,50,NULL,50,NULL,''),('1','2f746c00-875a-4868-bb16-b4c73261f72d','EpRcCtULufWBuIuRnKFvbDK1mNo=',1,'pPOKYf2RZz/yYD1P7irK9A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:35:43','2015-09-16 02:35:43','2015-09-16 02:35:43',NULL,50,NULL,50,NULL,''),('1','5e991057-ec95-40b3-9928-8a8b2cee1c07','+smTHJciRAUA8ulcz5BkuPRx32w=',1,'8FczsKXVQhBGnfpq5QJ/OA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:35:56','2015-09-16 02:35:56','2015-09-16 02:35:56',NULL,50,NULL,50,NULL,''),('1','1c09e775-62fb-46fe-ab9a-e12948c06b11','HiVzfoqHrj3JVmhcUtQA9VNbxjQ=',1,'pwLwMOC69oGM0LWTFBjhUQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:36:06','2015-09-16 02:36:06','2015-09-16 02:36:06',NULL,50,NULL,50,NULL,''),('1','8f02a3b3-c0d7-42c4-9f6b-09e98485b255','BlW9Tax+G/DnIzkwJQYrGamxyxA=',1,'Tamp7GGnZl+ItX28vxDiTA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:36:16','2015-09-16 02:36:16','2015-09-16 02:36:16',NULL,50,NULL,50,NULL,''),('1','865898de-434c-490a-a5e6-598d747b3bb9','0O5goDil+PkDwy90lvO/h/fc7Vw=',1,'Btp7TAhjdK6q0OlePROfjw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:36:26','2015-09-16 02:36:26','2015-09-16 02:36:26',NULL,50,NULL,50,NULL,''),('1','b069807b-7a50-4ac8-948c-4230564d163c','WhtMrxE9uvuOHfSi9G8IcSHieck=',1,'kahz5HL/y2kDNr9T1durzQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:36:40','2015-09-16 02:36:40','2015-09-16 02:36:40',NULL,50,NULL,50,NULL,''),('1','8eb6a854-6238-40ab-8ed7-5bd2f3cce5b4','rL4EZg1Pd+6KNUqgM4g5r0tlRXU=',1,'HF2MgZLN2SpOdSYiD28gXg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:36:51','2015-09-16 02:36:51','2015-09-16 02:36:51',NULL,50,NULL,50,NULL,''),('1','2defbb2a-5ea8-48c8-bf07-ca7f42195adc','kpej7Ac6HfjUyzyLNLC+ogWBxdQ=',1,'Sp7x1Uvvu3WHynXbJnWI3g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:37:12','2015-09-16 02:37:12','2015-09-16 02:37:12',NULL,50,NULL,50,NULL,''),('1','4544d0af-9270-462b-8a74-18b4bdaf8a36','qB1XYHkcaF+o27uZuAzzFbtBxYU=',1,'zVv7BQ1NqkfvuCGKF/eK/g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:37:21','2015-09-16 02:37:21','2015-09-16 02:37:21',NULL,50,NULL,50,NULL,''),('1','1368b18f-7c66-4ace-9673-74c93c3944f5','0BFQES0ub+BqzuwYxm/wb/lNQ/k=',1,'CJ87wx8WSR7DE+jzAcc7jQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:37:33','2015-09-16 02:37:33','2015-09-16 02:37:33',NULL,50,NULL,50,NULL,''),('1','53b28ca5-826b-45fc-bf4e-3cf006f0bdbe','HM7ZpNB5h3MDUFGprgo9wALMhE4=',1,'lXXFnvb7UMWWbzHU/FnMzA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:37:43','2015-09-16 02:37:43','2015-09-16 02:37:43',NULL,50,NULL,50,NULL,''),('1','f910fc9b-e271-48ec-8133-319feda18411','ZkKDZM2xzOR9Tksp+RktfhFxlKE=',1,'H1/iPyuqvwPsutsFOiP+AQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:37:55','2015-09-16 02:37:55','2015-09-16 02:37:55',NULL,50,NULL,50,NULL,''),('1','221bfd0c-c60b-472b-aa56-7bb13650359f','6Mcjt1Epeh9GV9dq54rL21ePcKk=',1,'bhDxZ/4UO/2SS9CdlSmz9g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:38:06','2015-09-16 02:38:06','2015-09-16 02:38:06',NULL,50,NULL,50,NULL,''),('1','563e92f0-770e-4e8b-8dd3-f26c8c715772','hhfYxiOUDMKnXPN7VaL4ywS6yRQ=',1,'kP8al6aAEzUK2FatBjYODg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:38:18','2015-09-16 02:38:18','2015-09-16 02:38:18',NULL,50,NULL,50,NULL,''),('1','1ee9f0fd-d0c6-4a01-b759-9eb0fb591522','2G+fHDjNPCaVTI/8eZRX34jHb6c=',1,'E2wA5Fjtc7zWixAnJerkNg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:38:35','2015-09-16 02:38:35','2015-09-16 02:38:35',NULL,50,NULL,50,NULL,''),('1','5d91288d-7161-48d8-af38-fdaa747f3f22','KbVGrnQcZKqb5MsQSVWrkfpk1Yc=',1,'2qddu+eVHv52Ty+BPMfYEA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:38:45','2015-09-16 02:38:45','2015-09-16 02:38:45',NULL,50,NULL,50,NULL,''),('1','b13b49d1-7122-43e3-ac67-8bba7f19bb81','FB4gMLoQrcHPt4NEg2AQu0WVodk=',1,'a6zAzyg51UwPm9ytFRBA+A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:38:56','2015-09-16 02:38:56','2015-09-16 02:38:56',NULL,50,NULL,50,NULL,''),('1','4f144770-afdc-4ade-9d42-19b68c8e5ca9','Cp4S19OrHQB6QmG9+Z3X2Zmhr2Q=',1,'9aMNstysZj3SJVhgP6xOyg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:39:07','2015-09-16 02:39:07','2015-09-16 02:39:07',NULL,50,NULL,50,NULL,''),('1','51733c02-5749-4fc6-802f-0ad25198d4d4','4cB+quaFNg/Zzza6OHv91pBcB+A=',1,'BYPFq9KzvKUw7FHZ+zTgsQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:39:18','2015-09-16 02:39:18','2015-09-16 02:39:18',NULL,50,NULL,50,NULL,''),('1','d17e415b-6a79-47af-b364-5f7232c003bc','+V9eqmGvNF54mzVHH9HfmeB5ZP8=',1,'jICR8l47zXI7nOW0xFsYNg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:39:26','2015-09-16 02:39:26','2015-09-16 02:39:26',NULL,50,NULL,50,NULL,''),('1','6f3a0f26-840a-4909-832b-3520befa97f2','WGuSsEL6wWtc8WpFrFNOOn6g7U8=',1,'Ou388ZroFccUZ/3eLDhiJw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:39:43','2015-09-16 02:39:43','2015-09-16 02:39:43',NULL,50,NULL,50,NULL,''),('1','e79bdd68-14ba-48d6-87e0-ac0277e1e2ab','36eqsLUqrZb+/Yx3EdT9/wwdseQ=',1,'gCbvWLJyCwWWf9arqhyx3Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:39:53','2015-09-16 02:39:53','2015-09-16 02:39:53',NULL,50,NULL,50,NULL,''),('1','36521f86-a703-42a5-b3db-5ecb38a66200','RUepFdbZBtjKKNvoUbEGZiMwnMY=',1,'O9SAT6H2/mFH20k8IeFYlw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:40:04','2015-09-16 02:40:04','2015-09-16 02:40:04',NULL,50,NULL,50,NULL,''),('1','5d8f8bbb-fb7a-435a-a948-1be36fe121f2','yeGExcU7hC/hCrLat+j5lLp45Dk=',1,'UE8ufpFWYCkrspe7japoEA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:40:15','2015-09-16 02:40:15','2015-09-16 02:40:15',NULL,50,NULL,50,NULL,''),('1','f92f5c51-8b8c-4528-9f6d-97b145635657','hMmoxXUatEDu7Yxd5Wr7VMaiIas=',1,'MEZDW4Lwihf1yQw6WAGWAw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:40:36','2015-09-16 02:40:36','2015-09-16 02:40:36',NULL,50,NULL,50,NULL,''),('1','8d22ad70-721e-4993-8389-100e2ded05fb','dZZ9fJY9A5OGMvkHo7HrEaGipAc=',1,'5j63uAsKq+eG2r4gTccHZg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:40:47','2015-09-16 02:40:47','2015-09-16 02:40:47',NULL,50,NULL,50,NULL,''),('1','eeb56437-a995-4540-b2fd-89628c181ca4','oZraXvAWh7uSGuyUcJdPhFwcymc=',1,'jzvCc0khr/fi3iQkUlotlA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:40:57','2015-09-16 02:40:57','2015-09-16 02:40:57',NULL,50,NULL,50,NULL,''),('1','6e4319ae-0569-4a26-9ba7-438cbcbbd47c','xBnHjzz3JZMm9Dd60EUr6x9ev0g=',1,'pcDx45A0qoRraPnIufcYXQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:41:06','2015-09-16 02:41:06','2015-09-16 02:41:06',NULL,50,NULL,50,NULL,''),('1','96d49831-f280-4e18-81a7-3200103481b0','rZNd53OlkAYALZ+PFqzS/YO4Y9s=',1,'MmnUAZqcLuLKWqPLWlI3Yw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:41:17','2015-09-16 02:41:17','2015-09-16 02:41:17',NULL,50,NULL,50,NULL,''),('1','a62df10d-c5d4-4f40-af99-30c24b199284','XSwPwRNJEnFBlXoTi84OP+OAXws=',1,'/fiAI5r7JEVRmG1YAp73Vw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:41:28','2015-09-16 02:41:28','2015-09-16 02:41:28',NULL,50,NULL,50,NULL,''),('1','c8949f81-69f7-4e97-a539-7156399f6c77','dtmPGQHkHxBoU2OLdRT6FWnCsnE=',1,'AeBsDYxi3kVmxMObv9BQZQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:41:41','2015-09-16 02:41:41','2015-09-16 02:41:41',NULL,50,NULL,50,NULL,''),('1','b8df2f1e-0a97-415b-8bb8-11505a17f20a','nfWCwBCUYwk83BMyY1n0XS82aqE=',1,'lgkFigCvvyL99uUKt0jWwg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:41:50','2015-09-16 02:41:50','2015-09-16 02:41:50',NULL,50,NULL,50,NULL,''),('1','960ed075-f87d-4a70-9c02-ea5f674e3096','Kkxwi4Iu2rSwHJDVJ+mi50K91po=',1,'kjlLZuwSmx0AphbJAA/RNA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:41:59','2015-09-16 02:41:59','2015-09-16 02:41:59',NULL,50,NULL,50,NULL,''),('1','e028960b-38f3-48c4-a289-000b33056baa','kkYuzX/di7OeYUTPY3VlmkNPHuw=',1,'5LnSbjWsUTPKawoTZlPRqQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:42:13','2015-09-16 02:42:13','2015-09-16 02:42:13',NULL,50,NULL,50,NULL,''),('1','64beb830-73f1-4f25-952f-722b0b7b7839','oPj5kimo0cVffFrw5LMbbgcPiZ8=',1,'bKsg+vFNvIE4XGOfYYe6XQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:42:44','2015-09-16 02:42:44','2015-09-16 02:42:44',NULL,50,NULL,50,NULL,''),('1','a6fc241a-6d0b-4b43-9e4d-52122f5944d8','DdKMgeT+FMAd/ieDjHsoBXmwpZc=',1,'hC0qxeiNf8rjJ9JkRFQhiA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:42:56','2015-09-16 02:42:56','2015-09-16 02:42:56',NULL,50,NULL,50,NULL,''),('1','76d01789-7096-4082-b62b-44352bee7a40','CbdvI9fK0EdZXgdr3zaUfg630FY=',1,'vddVpjlUMCsMRUbhZ9ZU6Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:43:06','2015-09-16 02:43:06','2015-09-16 02:43:06',NULL,50,NULL,50,NULL,''),('1','17911201-2054-4682-aac0-e47c884e386b','vWa86pgzM+6/PONVWFhpJWXIVWQ=',1,'Ioz2/RdfE37s+P822d/5Og==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:43:20','2015-09-16 02:43:20','2015-09-16 02:43:20',NULL,50,NULL,50,NULL,''),('1','961dab19-518f-414f-8858-99237c25ced3','FNT/8m+zxlv4Hn8BBu449/x5XjE=',1,'4GWB4XddR3kgF3dUUNAw6A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:43:28','2015-09-16 02:43:28','2015-09-16 02:43:28',NULL,50,NULL,50,NULL,''),('1','4af57306-24d3-4d89-ad78-3c2849926095','ZJVDAqQu3BUWCR4k9n6PsU03jyM=',1,'GMF6SrmZHPTR+634cbEjvQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:43:38','2015-09-16 02:43:38','2015-09-16 02:43:38',NULL,50,NULL,50,NULL,''),('1','2ac8cbb4-9ca4-4a60-a49b-18b4ecf6769b','kFJ3qqQDwPsEgt8rYBgKrKXMgvk=',1,'Vc+KM/o9BbmhPEuY3N+9AQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:43:48','2015-09-16 02:43:48','2015-09-16 02:43:48',NULL,50,NULL,50,NULL,''),('1','debb7933-7b20-484a-a7ca-8bd4bd4552bf','iNc8Z+KUX3FduZBo+lUMuhCpDq0=',1,'pwC+Yms4PyYckO5kUnXkFQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:44:06','2015-09-16 02:44:06','2015-09-16 02:44:06',NULL,50,NULL,50,NULL,''),('1','f5cbd5b6-88e0-4a4f-8458-5fd2c66ad4fd','l8dHSWm1jTwVR7DLyinU2P6Ytas=',1,'boVrEdaLTLjg99TLVIVL3g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:44:24','2015-09-16 02:44:24','2015-09-16 02:44:24',NULL,50,NULL,50,NULL,''),('1','af6929c6-ba71-4953-87cf-559715d7b62e','Cva6oh4ax21d7q0IkeyQ/SYOZSE=',1,'70hT4EQkBtd5ycjnxVBbMw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:44:54','2015-09-16 02:44:54','2015-09-16 02:44:54',NULL,50,NULL,50,NULL,''),('1','59db41b2-bd31-47f7-a19e-cbe009fed888','j1fEL5PBOfs6Ts4W5yZJlKLJuS4=',1,'GdN5EK0QUU5RCBmxQd2cTQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:45:07','2015-09-16 02:45:07','2015-09-16 02:45:07',NULL,50,NULL,50,NULL,''),('1','4b89bf29-f7e7-4d8f-ab23-66a1997f286a','wkKiP19w27Eerr8OEgs8MnJjAO8=',1,'2FdrWjMfUkLJVYtg4Lmzow==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:45:18','2015-09-16 02:45:18','2015-09-16 02:45:18',NULL,50,NULL,50,NULL,''),('1','b89f494f-41e9-4eb8-835b-5ac6055302dd','L+BD0UIKUzSv3RGnjdwriQv8/dU=',1,'oizp2IMsHm3ooiev7xd54Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:45:27','2015-09-16 02:45:27','2015-09-16 02:45:27',NULL,50,NULL,50,NULL,''),('1','337fb613-737f-465f-a4b6-6dab30d3eccc','0XWgjKXRaPblC8sb7eR9n0AMZeg=',1,'Bw/fP7yz+/QYdjJrL2z5zg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:45:41','2015-09-16 02:45:41','2015-09-16 02:45:41',NULL,50,NULL,50,NULL,''),('1','817caa1b-5cfc-4f7d-93b3-2c0085fa88be','Fwh1v3nRP57+YGatuKEMml2VUhI=',1,'+OYta4KCEVWFTMxz1WtO/A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:45:57','2015-09-16 02:45:57','2015-09-16 02:45:57',NULL,50,NULL,50,NULL,''),('1','ec0694c5-a35c-473a-82d1-7cb0696fbf00','DBZIwDFva9Z5qFRU0bgZj8HpFMk=',1,'JYwOCHIK1yBEBRYpt3pLkg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:46:53','2015-09-16 02:46:53','2015-09-16 02:46:53',NULL,50,NULL,50,NULL,''),('1','53a3568c-42f7-4272-a87b-189ceb3729b2','CGoCsHviw4VJVKDEWRz9DxRZKuA=',1,'0C0Pk0TlrfZiuFrlc2bXAg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:47:03','2015-09-16 02:47:03','2015-09-16 02:47:03',NULL,50,NULL,50,NULL,''),('1','322a1f28-9525-49d1-bc85-c7eba7ab89d7','uHDYOZSzaa9FvKeL8+sD67BE6sM=',1,'cBMIbX3n8XWdjGx5xKTvAQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:47:17','2015-09-16 02:47:17','2015-09-16 02:47:17',NULL,50,NULL,50,NULL,''),('1','a443f13f-6228-4129-bda1-2ea6bdea3ab4','EV0M2HIDsD6raZhrblY8ygzuMPs=',1,'EjCa0UV9ipVV5hOx+4j4BA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:47:30','2015-09-16 02:47:30','2015-09-16 02:47:30',NULL,50,NULL,50,NULL,''),('1','ad7b5513-123c-45d1-a7a0-cd676ea3f0a1','vopVIIuXa55GKq5j6VCBIS31zPI=',1,'2Q6/ZKVDWpOOH1xJtDSXFA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:47:46','2015-09-16 02:47:46','2015-09-16 02:47:46',NULL,50,NULL,50,NULL,''),('1','3d0ade91-4268-4c47-8e5f-395542a9a164','jelasPldCxw+3EibfSwALOoAuTw=',1,'eoCEVW2AhhKCaw5F3y/p8g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:48:00','2015-09-16 02:48:00','2015-09-16 02:48:00',NULL,50,NULL,50,NULL,''),('1','4f478548-f912-4a56-a968-ddd2cd94c927','yX1+7yaOzUQuYVZL3u3t7ApDFlk=',1,'s2pAcjbWj4+PzwCRnYLFIQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:48:14','2015-09-16 02:48:14','2015-09-16 02:48:14',NULL,50,NULL,50,NULL,''),('1','6e860d1e-bc3a-4982-b1ef-acb22399dd2f','cO4c28rbGPclmjxX5+Vn/gAAjaU=',1,'/0dEYMhB9jSzP5NLOrrE+w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:48:26','2015-09-16 02:48:26','2015-09-16 02:48:26',NULL,50,NULL,50,NULL,''),('1','50f69868-ad22-47a0-97b4-f8ba9a0bb4a5','RoDCTWxAejQsR+QMeD9jlaDF3LE=',1,'T7XO1IClxPF2ajJU+IMhqQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:50:58','2015-09-16 02:50:58','2015-09-16 02:50:58',NULL,50,NULL,50,NULL,''),('1','8d5c5819-bd93-428c-b705-eaaca8e8ed6a','nKE5/QyAS8hZn+YAC/TT6n5IJWU=',1,'El14cEhYnnOH3QmfJBevUw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:51:08','2015-09-16 02:51:08','2015-09-16 02:51:08',NULL,50,NULL,50,NULL,''),('1','da6e2958-0166-456f-8a03-8981f09d9e59','C5EJ5J8/VrdCpc4knhViEf8EJ3A=',1,'A/VVRy9XLkUdgdr4GjuRfA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:51:18','2015-10-05 14:11:51','2015-09-16 02:51:18',NULL,50,NULL,50,NULL,''),('1','730c410d-0992-40ab-bf15-2835e35a3b57','EjkTxInUQ2ucsJnMD1KphTXT8mY=',1,'9YYS+XY57F/vLHXKRgEYjw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:51:31','2015-09-16 02:51:31','2015-09-16 02:51:31',NULL,50,NULL,50,NULL,''),('1','d9e44ce7-7f46-4883-9396-ffaee4887e8f','dZK6ekT7k/QIHB4x/yv1DDeofw0=',1,'fQZzvKFnwafjZyW6vnlzxA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:51:45','2015-09-16 02:51:45','2015-09-16 02:51:45',NULL,50,NULL,50,NULL,''),('1','1b1703cb-2111-4d13-b807-d6d3bf7dde07','wGar3f3Mpf5FZ7jGZCRJoDe5428=',1,'19QWL7MfAJNJ9nnPDg7ZwQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:51:55','2015-09-16 02:51:55','2015-09-16 02:51:55',NULL,50,NULL,50,NULL,''),('1','820d016b-1760-410f-a9a0-9f5bb63e3a0c','VgCDPtcqp4vtYaPPY4/M8Z8cUfE=',1,'SDKbB+elllZ9nB1YXQZZSw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:52:05','2015-09-16 02:52:05','2015-09-16 02:52:05',NULL,50,NULL,50,NULL,''),('1','1bc09354-c339-4fd7-b0b9-c668752a0980','5a2PBcf3F7YlEhwFWR8ckdhfBCQ=',1,'UutlM9XJ22Nkqvks6mED0g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:52:14','2015-09-16 02:52:14','2015-09-16 02:52:14',NULL,50,NULL,50,NULL,''),('1','f93f0278-3474-4a70-b93f-dc6df47dd5ea','DiJONSaeFkJHNbanyo0/ILEeax0=',1,'P7XlSbwlWtXCEp//nJaEbw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:52:24','2015-09-16 02:52:24','2015-09-16 02:52:24',NULL,50,NULL,50,NULL,''),('1','ad0d8550-f679-424a-b94b-449dde78fa05','DXS3bjANlTEvFra8+NuGiN4SSkk=',1,'n9I3NY67KgEtrSCyWHvtmQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:52:34','2015-09-16 02:52:34','2015-09-16 02:52:34',NULL,50,NULL,50,NULL,''),('1','9fffea88-1181-4e96-9be7-ef3596397663','2B7hNwtnNyFh881zT65TgVSWGrY=',1,'vspz+DvEVF4N9WenI622IA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:52:44','2015-09-16 02:52:44','2015-09-16 02:52:44',NULL,50,NULL,50,NULL,''),('1','9581b358-284a-451a-ba4a-31c8af262047','RaRY9m0YpECkHFjQxZ0KK3JBioY=',1,'kp3dvF9hGXiz4mE5fIHjYg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:52:56','2015-09-16 02:52:56','2015-09-16 02:52:56',NULL,50,NULL,50,NULL,''),('1','77b12e13-a606-4952-9041-a276f9b60b79','vGm0QiaDXxd6rb/FGAfQ4EnhbLY=',1,'6fU1fDAjWIFC5lo8gLlN3g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:53:07','2015-09-16 02:53:07','2015-09-16 02:53:07',NULL,50,NULL,50,NULL,''),('1','5ca46c0a-63e4-4e79-91d9-331c8b2e7fd3','wM0E6mK/RpL6tHSEFXPbR41IJjo=',1,'cJBHeDCO7ZRw5lnU043o7g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:53:17','2015-09-16 02:53:17','2015-09-16 02:53:17',NULL,50,NULL,50,NULL,''),('1','7cfca810-142d-4af9-9907-cea7c1f33e16','wGEGdYM6ah20+kIRq8hfCA1MPRM=',1,'ccY7eZ/ShmGFibRs+ALPrQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:53:29','2015-09-16 02:53:29','2015-09-16 02:53:29',NULL,50,NULL,50,NULL,''),('1','8ae36d99-5682-47a5-bc01-0689b7555d42','S2WEz2lavp6gjjxWlbr5FnVWwDs=',1,'+8Zl8LxFtJ+6qdbMRIMpjA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:53:40','2015-09-16 02:53:40','2015-09-16 02:53:40',NULL,50,NULL,50,NULL,''),('1','63484d00-6e3b-4139-9337-d6b2d20bb6f3','HR1scMvaOpnvltiuBzWpkwxYUOE=',1,'5OKVvA5bnicITsmyBCmQXQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:53:51','2015-09-16 02:53:51','2015-09-16 02:53:51',NULL,50,NULL,50,NULL,''),('1','6c7a5030-7095-4b24-852c-8251a7bc5f53','LS2X2ScWFY9++ZK5rpMDftuANrA=',1,'2WMe5B+1xfL3RJ/qKcbJHg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:54:00','2015-09-16 02:54:00','2015-09-16 02:54:00',NULL,50,NULL,50,NULL,''),('1','499259ae-98ff-4d46-9c55-5ff889e11e1c','YYm36VDwV92MLzUyUHsfqFdfrHU=',1,'+42OuLvIPi0vzZ3QFo/YHg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:54:13','2015-09-16 02:54:13','2015-09-16 02:54:13',NULL,50,NULL,50,NULL,''),('1','fb759d17-76b7-4614-9173-d9d1a323d591','aJafO6npWJc2idZyWIDzD8cmvCA=',1,'qHrXcbtdWoQS94TF4ulmKg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:54:23','2015-09-16 02:54:23','2015-09-16 02:54:23',NULL,50,NULL,50,NULL,''),('1','d46b4e47-e1e9-4fa3-aa9c-5b6f0d73d09b','Rf71yPwPc+nJTzDwVtuONVoX1Wk=',1,'1PoNst8Ka0qskAUH8uvEhw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:54:36','2015-09-16 02:54:36','2015-09-16 02:54:36',NULL,50,NULL,50,NULL,''),('1','b0f78319-c16c-43a8-b9cf-62340a1336ad','TaSD2TZKlzavtCN3ur/kCfnmzG4=',1,'1sCWfreB5KxXNJPAGSszgA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:54:45','2015-09-16 02:54:45','2015-09-16 02:54:45',NULL,50,NULL,50,NULL,''),('1','57c27772-6d43-441d-bde5-5f4f2b78fa3a','cck55IGow2DXu7ZODdC98LMy52M=',1,'PRODNIm65byUA2n5FnfPGw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:54:54','2015-09-16 02:54:54','2015-09-16 02:54:54',NULL,50,NULL,50,NULL,''),('1','d2e80231-33c1-4e2f-9b10-930f258a029f','Vp9aXqcf0IZEACQdcBU0g7QT03Q=',1,'7+P1/HU1Gq53cxxQnIrg/w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:55:05','2015-09-16 02:55:05','2015-09-16 02:55:05',NULL,50,NULL,50,NULL,''),('1','0470d62d-a250-47eb-bc66-3a6a306b5e4b','BY5+D5uemQkY0WMJp31GoKUIKkw=',1,'H8PTw74C84rMxb+jM9pEaA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:55:16','2015-09-16 02:55:16','2015-09-16 02:55:16',NULL,50,NULL,50,NULL,''),('1','1a28affb-8cdc-4e06-8f36-9c4c648adfcc','jMOOJO2xfCYpcyHonq42MbIq78M=',1,'hmhSMxggyaDLTq3SqC3MeQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:55:26','2015-09-16 02:55:26','2015-09-16 02:55:26',NULL,50,NULL,50,NULL,''),('1','f5a36fb8-6b05-4f2b-a30c-e61744da2b44','7qzZkY2H+66H+LiE193QwRtJ1RI=',1,'RWhva8N+tDtE8WUdwI8JTA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:55:35','2015-09-16 02:55:35','2015-09-16 02:55:35',NULL,50,NULL,50,NULL,''),('1','37dc56e4-993a-4e9c-9199-159e753cd0fd','/Ww1cna85jcNK/vCQcuhESw80zM=',1,'Op0NC6Rn+J7JzwZsq6CXAA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:55:44','2015-10-13 17:08:23','2015-09-16 02:55:44',NULL,50,NULL,50,NULL,''),('1','3a46c881-6145-4085-b2e7-82e46f8923d9','IcCLkEGnlxf51qjSt+zGhsCYak4=',1,'3iMpH3poM7zAO7d6UeUHNg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:55:55','2015-09-16 02:55:55','2015-09-16 02:55:55',NULL,50,NULL,50,NULL,''),('1','c845f693-d924-4297-bb70-97c872b8fe93','RwMeqksIqt6M2P+Uet6G4o87wBo=',1,'lB39tCVdEJwSUElVWfyJ/A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:56:05','2015-09-16 02:56:05','2015-09-16 02:56:05',NULL,50,NULL,50,NULL,''),('1','95eb8ff6-2a5a-4802-ba10-4f67546f653b','ePQpsH2aZwN1Beoz1eRJxYfaWnE=',1,'aBWJkTaby6FMCpoZA7qnLA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:56:16','2015-09-16 02:56:16','2015-09-16 02:56:16',NULL,50,NULL,50,NULL,''),('1','a98470a2-9420-4c75-b985-cfc04478ebfc','9KeOEHDc6bezDXscmUYYLOSKDDo=',1,'p7UQIEHiBjWrXLWo7dK6RQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:56:25','2015-09-16 02:56:25','2015-09-16 02:56:25',NULL,50,NULL,50,NULL,''),('1','d64ea459-eaa1-443e-b1c9-68b23a5832f1','iN7bmZCWITp1kNyFpnswziwJzx8=',1,'SO0nTf5noEC7oyP/BelKHQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:56:35','2015-09-16 02:56:35','2015-09-16 02:56:35',NULL,50,NULL,50,NULL,''),('1','1ccb507f-dffb-4cb7-a9a6-caccc4fcae16','lY4hgdN6bWqr5iyUIhE+08OI4N8=',1,'p/WHPkz4cHqgWNDKLpWKjA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:56:45','2015-09-16 02:56:45','2015-09-16 02:56:45',NULL,50,NULL,50,NULL,''),('1','ff9ffc6a-1f2f-4aa7-a1ea-2a03f4765cce','9zXwOeFwzcny+d7TEgPTW8fAtHE=',1,'88hmlTyupSPVYrIViItq9w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:56:54','2015-09-16 02:56:54','2015-09-16 02:56:54',NULL,50,NULL,50,NULL,''),('1','0e050b00-65ae-4263-ace2-a47c650147b6','slD1FpsSvEDsVmNQT4AZUgMOLxY=',1,'XAPhMT/5gue1bwtNvaKQ8A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:57:03','2015-09-16 02:57:03','2015-09-16 02:57:03',NULL,50,NULL,50,NULL,''),('1','8f76e947-2d6c-4119-b0e7-621caa695bb5','qMnAJNVD4mbZwBkmfA5qxpP63sA=',1,'1KKPmeU+CAk6ivpMuesPFA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:57:16','2015-09-16 02:57:16','2015-09-16 02:57:16',NULL,50,NULL,50,NULL,''),('1','5eec1301-1f74-41a2-b6f6-871f1ff9a20a','Q52rrKWzQL5ekegtio8NiUjX1mM=',1,'FJOHxRcg0dVFRhgLHTB/pQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:57:28','2015-10-07 17:03:54','2015-09-16 02:57:28',NULL,50,NULL,50,NULL,''),('1','cc700fc9-8bf2-4291-b3ed-608425cad8c9','Dz94mnblw+FgxDeVc3auTWLtASo=',1,'aznCoF19eqA6WZ3AGPM6KQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:57:39','2015-09-16 02:57:39','2015-09-16 02:57:39',NULL,50,NULL,50,NULL,''),('1','d5c5e3f6-688d-489c-9d9c-773fd3d866a5','APVGDvqxUtlZFTn0j9UQMbvPwLo=',1,'vKUJVJzJyfbFErBbj3bPXw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:57:54','2015-09-16 02:57:54','2015-09-16 02:57:54',NULL,50,NULL,50,NULL,''),('1','44bb09aa-714c-43e6-84e5-65d045512bca','pUKkBST7krU1N5/1HF/7lXm9HP0=',1,'Lz/Hvxr3MXcxU0HB+6xszQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:58:03','2015-09-16 02:58:03','2015-09-16 02:58:03',NULL,50,NULL,50,NULL,''),('1','0023455d-c883-4815-95c5-b3125b8162e4','h2W8j8XDyTSQZj0dlMI6v6k+j0o=',1,'L0sQlaBRCwWyQwCBQ0YT/w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:58:19','2015-09-16 02:58:19','2015-09-16 02:58:19',NULL,50,NULL,50,NULL,''),('1','e28c2ae4-2841-4dc2-8c6a-49d04a497d70','HtWx0nZOZbquYVCzDvT4PCNFP8Q=',1,'QGrtfBlkDZP1Ol0P4mcHPA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:58:45','2015-09-16 02:58:45','2015-09-16 02:58:45',NULL,50,NULL,50,NULL,''),('1','1398bf06-288a-4cc6-8832-57440c13f0ad','MEkDeM1SpCKQqGXygswk/aI0sa4=',1,'Zk5VaGeWX8eW69dQin3fEQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:59:11','2015-09-16 02:59:11','2015-09-16 02:59:11',NULL,50,NULL,50,NULL,''),('1','cfa750ce-0ebe-40a4-ac3c-420ca463a4cf','K04q5PjUKrJ80fWY9eY8Z+Sp16g=',1,'LwGaI3/PS9tlQBC2QHYD0g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 02:59:30','2015-09-16 02:59:30','2015-09-16 02:59:30',NULL,50,NULL,50,NULL,''),('1','1894ba1c-4638-42ed-b7e5-772950346545','Rx/Tg6FOyoPVj2Zg+BG4DG83mFM=',1,'GjwddRXQBcTfIJ7PJtRTzg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:03:39','2015-09-16 03:03:39','2015-09-16 03:03:39',NULL,50,NULL,50,NULL,''),('1','60e9bab1-df65-4448-8dd2-00cc6b23e312','PaAL06522xBvJrVmC26gxtg4fb0=',1,'2vEI2iKXTuYYVZRpqiJt0w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:03:51','2015-09-16 03:03:51','2015-09-16 03:03:51',NULL,50,NULL,50,NULL,''),('1','c7dea1f2-bb37-4b52-83cb-ef39608ac972','tQIA9ge+vddPQpmpWxgoYdUz3TQ=',1,'iN1urfLd+a+nJ23N0CfHgA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:04:04','2015-09-16 03:04:04','2015-09-16 03:04:04',NULL,50,NULL,50,NULL,''),('1','fb3776b1-d501-44be-be60-d749fc07bc56','n5WDDQW9DJj79hJ2pxhthfgYi6s=',1,'95nyX+NLopXxSbfrEeBnfA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:04:15','2015-09-16 03:04:15','2015-09-16 03:04:15',NULL,50,NULL,50,NULL,''),('1','2b609c62-18cf-4a0d-b502-68269027ce1e','WvJiuH2FjMsUTbUdWy1IvOD3jNg=',1,'NqlMSrUsbJTrBSxG+ATAXg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:04:26','2015-09-16 03:04:26','2015-09-16 03:04:26',NULL,50,NULL,50,NULL,''),('1','92389aef-3356-4726-bd6d-ae97e1f4fe97','/u4xu2U5I2dtQ6GsafddkCsnqhI=',1,'EvrLqBu+SmiOs6nwqWdZZw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:04:36','2015-09-16 03:04:36','2015-09-16 03:04:36',NULL,50,NULL,50,NULL,''),('1','98a107d4-64f2-4729-989c-485eed6a5f0a','zqDU83ZT0lq1F5Hib/qiVe7j45M=',1,'3fAxJWMgxAb/FKQ04B5R5w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:04:45','2015-09-16 03:04:45','2015-09-16 03:04:45',NULL,50,NULL,50,NULL,''),('1','d4815cec-b15d-43ed-bd0c-6c755e01cd90','SDCAK953IbgSZJDDmZqZ37U4b78=',1,'lxnfdknlmpa8nSQt5CxcJw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:04:55','2015-09-16 03:04:55','2015-09-16 03:04:55',NULL,50,NULL,50,NULL,''),('1','0a6e474c-7318-410d-8589-cf241ca1558c','zoUvWHY6mzF8eHvDd+qxjUTCKI8=',1,'P+mvuYRR9YTUB4y3PGRKWA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:24:48','2015-10-11 02:05:32','2015-09-16 03:24:48',NULL,50,NULL,50,NULL,''),('1','4c8ec24d-81de-4bc1-9c54-43d162aee85e','HR3BE6vfe+mmzEN5pjPRjfzrVho=',1,'rrfdkS5yeqRUUL1Nim2Wcw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:25:03','2015-09-16 03:25:03','2015-09-16 03:25:03',NULL,50,NULL,50,NULL,''),('1','6fe61307-35c5-48bc-9292-1e2963b4ac53','sASrGmmy8wt9dRJjIx/7ehDTPYE=',1,'Xe3kIlzs/3DLbJoju3FAeA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:25:12','2015-09-16 03:25:12','2015-09-16 03:25:12',NULL,50,NULL,50,NULL,''),('1','b479a585-c88d-4ba8-87dc-3b2b1468cb7a','xcj+hnz1rAZ6Z+JELUE7lNQ3b2w=',1,'hRYBTC8VjmZtJc/xnhSeuQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:25:25','2015-09-16 03:25:25','2015-09-16 03:25:25',NULL,50,NULL,50,NULL,''),('1','f4aef806-7e3a-4f5a-b30e-91054f11eaf6','LlQdbDWDMiTs49po2w8R8b2J1AE=',1,'ouSC4wgJ3PxTq9LfYbpKIw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:26:05','2015-09-16 03:26:05','2015-09-16 03:26:05',NULL,50,NULL,50,NULL,''),('1','ea281801-224e-47da-a192-0e8cfb51a28e','XhcRllj9XGm1PXKXRZGiMwd13gs=',1,'yOpObG9J5/eHSW4bU5A/vA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:26:14','2015-09-16 03:26:14','2015-09-16 03:26:14',NULL,50,NULL,50,NULL,''),('1','6819a4af-1b50-4dd6-8fd2-c911fd1e89ce','BN+N6500QncW2H1XAH57cBtZwQU=',1,'c/5w306BpXj4bHjHahl68w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:26:24','2015-09-16 03:26:24','2015-09-16 03:26:24',NULL,50,NULL,50,NULL,''),('1','17e244cd-e029-4322-83c1-14f0b446db71','5DdAogjlY0zOCe/KJ2VYzq3ul98=',1,'8A7oZYe4aseIb+kjZPKyKg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:26:33','2015-09-16 03:26:33','2015-09-16 03:26:33',NULL,50,NULL,50,NULL,''),('1','d5785299-8203-42aa-8454-badcc84c3f44','4eXx6Y989cPrEC/Z6SUOn8cbHmk=',1,'XRQUYq+szjY3WEHe7jaQYA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:26:43','2015-09-16 03:26:43','2015-09-16 03:26:43',NULL,50,NULL,50,NULL,''),('1','9654a14f-336b-4d21-a3c8-244f3ecb0d56','0Ef2KHoxizFntlsi8pgr9A1bGCI=',1,'GfmqhoooVwfzfdRN0+zJdQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:26:55','2015-09-16 03:26:55','2015-09-16 03:26:55',NULL,50,NULL,50,NULL,''),('1','da867286-2833-4903-8298-be899ad7e9c6','ZcLAjr494HzZabfJ6ucfRv0Px8g=',1,'oVSRmcnSzxFBYWIv+PDYTA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:27:10','2015-09-16 03:27:10','2015-09-16 03:27:10',NULL,50,NULL,50,NULL,''),('1','37a8efc2-d91e-4ab5-9d1f-2be71ff5bf0c','A1aU7tctZn80wL3Yy/ayzVY12uc=',1,'BL3jyast60Q1pJmScQucaQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:27:22','2015-09-16 03:27:22','2015-09-16 03:27:22',NULL,50,NULL,50,NULL,''),('1','9a801fda-6e4a-49f9-b7eb-3e1fc98ce84f','7Xlh/fJEriooaT2KGzyOOwyIR+E=',1,'KeVeKGCigZjnlBLIgACOzA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:27:33','2015-10-10 13:02:26','2015-10-10 13:08:06',NULL,50,NULL,50,NULL,''),('1','dec52f28-132b-4f34-8595-b3a9a9e13028','3lU+fy2rHzKv3loA4bj1x7eZP7Y=',1,'i+td3Vx5w/e7CgJZb+o+sA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:27:46','2015-09-16 03:27:46','2015-09-16 03:27:46',NULL,50,NULL,50,NULL,''),('1','5dd1879a-7101-4249-acf9-94c2e236cfa9','ECOgnItVrwF+E/Q+oUV1TNR0Hn0=',1,'/ylmc8WoeJ7MNIuuQrfhPg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:27:55','2015-09-16 03:27:55','2015-09-16 03:27:55',NULL,50,NULL,50,NULL,''),('1','029faa53-dd1d-41f6-b0cf-0e3acb0b19f4','1mDnRZHLko9cgtsjSPUFPRios5o=',1,'DpjC+EcO6AD7fUzKdsfgbw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:28:05','2015-09-16 03:28:05','2015-09-16 03:28:05',NULL,50,NULL,50,NULL,''),('1','7cf22ae3-735f-4830-943d-f3d91e681742','VoZKpKOk9+u2pAto9cUYjBdUUyg=',1,'sHbObXxwcZ4PgTmKN90Mkw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:28:23','2015-10-11 04:46:23','2015-10-11 04:47:47',NULL,50,NULL,50,NULL,''),('1','20c8d1a8-6aec-46af-ac9d-905743f16d2e','XmWyEBRopxjvzux1Mxv3OQnZZvs=',1,'cVqALDsckxlADgD307+O3g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:28:35','2015-09-16 03:28:35','2015-09-16 03:28:35',NULL,50,NULL,50,NULL,''),('1','8a0078de-5588-4218-9f08-ff640adba987','iDn1INMFKTvjO0y3wkfkWp9H0yY=',1,'aJBOmPqI7IeU7IcFm99p6w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:28:45','2015-09-16 03:28:45','2015-09-16 03:28:45',NULL,50,NULL,50,NULL,''),('1','c3d7ff56-4dc9-493f-aa62-7a59a4907c51','S9oaIV06xo6ZK7g91CgPZ/y+TX8=',1,'3tX+EiM8bSsFhAouBdrfpQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:28:58','2015-09-16 03:28:58','2015-09-16 03:28:58',NULL,50,NULL,50,NULL,''),('1','29777988-1355-475b-b6f5-050bf846c037','HwVWnXuv6v53+ELaM0KgFwetJLI=',1,'A7XmjCltDlm66MYIcIuS6A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:29:06','2015-09-16 03:29:06','2015-09-16 03:29:06',NULL,50,NULL,50,NULL,''),('1','46dad280-2e17-4a3e-bb37-93db7801652d','/74EVKbXnIgO8rIw6/h5DOt0Il8=',1,'8lVxEYxN842fzt9ag7sc/A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:29:19','2015-09-16 03:29:19','2015-09-16 03:29:19',NULL,50,NULL,50,NULL,''),('1','c2b24591-18c6-4d0d-bd46-fadff8eab4cd','JQei9LCm/KE5w9oSem1YSL+fPko=',1,'Vo7kOI0vw6/K3MKFiNdowg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:29:30','2015-09-16 03:29:30','2015-09-16 03:29:30',NULL,50,NULL,50,NULL,''),('1','b55a46f4-baf4-4f57-9b5d-229866f8e5f5','6PuAwREoM1B9rXkzjkXi68YxUsQ=',1,'xGbNdp3OuEN1BgB9ea6OGw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:29:46','2015-09-16 03:29:46','2015-09-16 03:29:46',NULL,50,NULL,50,NULL,''),('1','48432d70-d2e4-46b8-ad85-e768f3da6748','gNbiX2OaNLmMzhYtnWK7FPo2DG0=',1,'q9HZ6ShOmENAUZoJu2X5Cw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:30:00','2015-09-16 03:30:00','2015-09-16 03:30:00',NULL,50,NULL,50,NULL,''),('1','757f6930-d998-4a14-885f-4ad6f7b0dccb','+dW8sWi5X8xZ032l1cJ480h5UZg=',1,'UQre80lh2R14MNH+oujFSg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:30:09','2015-09-16 03:30:09','2015-09-16 03:30:09',NULL,50,NULL,50,NULL,''),('1','37395891-4b23-474e-8d2b-0116474dfcd4','Qzdf2/ge29zckAAN1udU1cR7xTU=',1,'5MmA81Wi2+77OQbGBvqkhQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:30:18','2015-09-16 03:30:18','2015-09-16 03:30:18',NULL,50,NULL,50,NULL,''),('1','92c8ae67-47ce-444b-ad38-8a9903dfdc78','CG+mK4J/mPbrZWyNBtuT8kLLDWE=',1,'C8YWnDs4rzN8iQz6tH8Sog==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:30:29','2015-09-16 03:30:29','2015-09-16 03:30:29',NULL,50,NULL,50,NULL,''),('1','ac621560-0bf9-4e2f-91eb-ff94a1edccc5','hl3WEKakzPHxaXuc3ojlbA+uyDA=',1,'xWLlIwSh4lXOljNnUcKQ4g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:30:41','2015-09-16 03:30:41','2015-09-16 03:30:41',NULL,50,NULL,50,NULL,''),('1','58c28e17-d7b6-4a78-8fff-f035d24631bb','OzhBBgRmgJXgWTr4xbX4978p5jk=',1,'/ElAA8M0F9VuF8UxMrU0GQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:30:51','2015-09-16 03:30:51','2015-09-16 03:30:51',NULL,50,NULL,50,NULL,''),('1','0e2bd7da-7aeb-4ba4-a737-7e7d922646ba','w869uc6TMMYJ0j1n5q2XDNnvsNo=',1,'Py1PlG7mei/wlpWABTHWaQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:31:02','2015-09-16 03:31:02','2015-09-16 03:31:02',NULL,50,NULL,50,NULL,''),('1','bf890b1a-2cfd-4d25-956c-395364b26a39','rFzjezwzc6FaKhUAAmZ2MGBJzvc=',1,'zXleI+xGV32zPf5PVYk7hw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:31:21','2015-09-16 03:31:21','2015-09-16 03:31:21',NULL,50,NULL,50,NULL,''),('1','5eb2a10c-3f65-4e6c-8ddc-0166840280a6','VdXc20D7S7soBJ6kNuakES57jeg=',1,'dn3W5+dRu/S3IM2nbPomPA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:31:30','2015-09-16 03:31:30','2015-09-16 03:31:30',NULL,50,NULL,50,NULL,''),('1','91ac019a-6d19-42d0-9e99-de4f50b00583','thgeTUUDLmDxze2UVuDR+T6fOxI=',1,'uPa6do8Dav4LupxsDg1O4w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:31:43','2015-09-16 03:31:43','2015-09-16 03:31:43',NULL,50,NULL,50,NULL,''),('1','610f3c92-b5fe-4373-8651-eeef349e781e','S4NeAExyDt2ICehx3putrdsA0AM=',1,'/fxWepDMi8KqGwpA1wzw7g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:31:55','2015-09-16 03:31:55','2015-09-16 03:31:55',NULL,50,NULL,50,NULL,''),('1','cc024cf1-015e-49e9-a0b3-166968f543f0','mWDjvpc1O/lVw/JTh5lf9D7lAw0=',1,'nf6zvemnxZ0aslar/GoaOg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:32:05','2015-09-16 03:32:05','2015-09-16 03:32:05',NULL,50,NULL,50,NULL,''),('1','bb0ecd35-c977-4073-a182-24aa5ba0aa6c','hRLzY6Z8c+2TfNeY7ExBoRLO3IY=',1,'bWFNhzmYtfdma5TnBVeG4g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:32:15','2015-09-16 03:32:15','2015-09-16 03:32:15',NULL,50,NULL,50,NULL,''),('1','989dc730-596e-43dd-b3c5-f2308c770c5d','PB4+zIWjgwlZPr5arQ1Ji0w3RdA=',1,'beZ+aoUmc3NHK7baQKvg3A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:32:28','2015-09-16 03:32:28','2015-09-16 03:32:28',NULL,50,NULL,50,NULL,''),('1','ed150699-d199-430e-8af5-8367cf51f5b4','18ABQDENQBPzg7cPQqfoMDND5Bg=',1,'aN3UkEA+T/CiINHvc8KvPA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:32:43','2015-09-16 03:32:43','2015-09-16 03:32:43',NULL,50,NULL,50,NULL,''),('1','b85ca9e8-f078-408b-a895-9cf583c157d9','jMJpQK/os2/mDZfe6weGbM0zKdA=',1,'PJeFV6sjILfJyF5yl+6MkQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:32:52','2015-09-16 03:32:52','2015-09-16 03:32:52',NULL,50,NULL,50,NULL,''),('1','8159b777-982e-45bc-ae56-66608d35a665','Hd8U9Zg98jOKVc/ABqxqfpVyOdg=',1,'b+13B8ezI9mB2KVqjltAag==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:33:08','2015-09-16 03:33:08','2015-09-16 03:33:08',NULL,50,NULL,50,NULL,''),('1','76a8bc0d-128a-45ea-a90a-fc9a86876ad4','1akfNXPNreapqJyCDN2KUpBkbss=',1,'N16n1QMUVR1YI9Gy5+dmsA==',NULL,'sayeed807@gmail.com',NULL,'na','na',1,0,'2015-09-16 03:33:21','2015-09-16 03:33:21','2015-09-16 03:33:21',NULL,50,NULL,50,NULL,''),('1','b635b062-049d-4ad3-9e9e-7e439f5e2284','MX75cFdhrb2m//WmMUNhEKuUKHk=',1,'t64FtyJvIqbkjp8PvjfomA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:33:31','2015-09-16 03:33:31','2015-09-16 03:33:31',NULL,50,NULL,50,NULL,''),('1','1f3cebfe-b227-43e8-b3d5-059cb785e4dd','DZPDaCx/mkHPaUusgHMvl0josA0=',1,'A7kuQ0KKCM4zeK7Hd/QziA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:33:41','2015-09-16 03:33:41','2015-09-16 03:33:41',NULL,50,NULL,50,NULL,''),('1','a938435f-81c3-456f-92bc-c7d901523497','1WFTwugJZVFDYZY0sOAD8fK2dEk=',1,'GHd2x4Le48jnX6u/p7CRMA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:33:51','2015-09-16 03:33:51','2015-09-16 03:33:51',NULL,50,NULL,50,NULL,''),('1','f1d0a78e-6aa3-4510-879a-16265e013c89','oNCRbHsXsIrPjfAIKpcTZXyjo4M=',1,'A16LokrPdb9buMB2b8JvKA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:34:00','2015-09-16 03:34:00','2015-09-16 03:34:00',NULL,50,NULL,50,NULL,''),('1','8d8d0f45-429c-4de5-afff-d87a96e7a5f8','19QQjr9Q4+ZewE5U1a1FMBq7fOQ=',1,'JzlTWzkgfuSD6L5uR04K3w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:34:32','2015-09-16 03:34:32','2015-09-16 03:34:32',NULL,50,NULL,50,NULL,''),('1','1cd92b53-09b4-4081-a707-41b622d7c44b','eRHqoFo22HIy9dsrAYowrePaCyA=',1,'ScNYE9OZ5bcl2Q/kG9mEiw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:34:44','2015-09-16 03:34:44','2015-09-16 03:34:44',NULL,50,NULL,50,NULL,''),('1','cbb1a328-3708-43da-8c20-49e252811513','QWKpZD1z/hXVtwSJ22OCnJmXi5s=',1,'pTdjcaOrE1ILyxE6Z1dlLA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:36:12','2015-09-16 03:36:12','2015-09-16 03:36:12',NULL,50,NULL,50,NULL,''),('1','c7f1f678-90ca-4c14-ba63-eae02684c6fa','CkGixVQIGrIO0985sUA5g7RdFXM=',1,'WOTGGxpzUdBc8TuDg/PPMg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:36:33','2015-09-16 03:36:33','2015-09-16 03:36:33',NULL,50,NULL,50,NULL,''),('1','f05c10e3-1f34-4b9d-810e-273c0ec68139','dG/4W02wLA/QSTR4hnt2YT1BKM0=',1,'i3q5QDsGO+xSBoXZAfpfuA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:36:46','2015-09-16 03:36:46','2015-09-16 03:36:46',NULL,50,NULL,50,NULL,''),('1','d506c91b-997e-45ff-8dd5-2da89af749d1','N0O4/xxnn+r2VIb4ui78uapbXlo=',1,'ig3GWJ76Q98R1cqeAG0xvw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:36:58','2015-09-16 03:36:58','2015-09-16 03:36:58',NULL,50,NULL,50,NULL,''),('1','f265d8aa-973c-4ade-9637-9a8d1cd8212f','LSGZY0TIv0lDFTzoPaTSO4Lfnoc=',1,'MZ4H1NhQCbplks1Qe6tY2A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:37:08','2015-09-16 03:37:08','2015-09-16 03:37:08',NULL,50,NULL,50,NULL,''),('1','f1a380b4-b315-493a-8c47-ee6cd2d65870','/oJBNkduREWtK38MYqOoXQ35ybg=',1,'IHgc4UspdYfjzW8GUw41Gw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:37:19','2015-09-16 03:37:19','2015-09-16 03:37:19',NULL,50,NULL,50,NULL,''),('1','42074fdd-77a8-4721-8b7a-793af462608e','A2CjNpoZyzwI9YQ2TMWmvU/faGU=',1,'llWLlUzzfdTg6t4+o8hUWQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:37:31','2015-09-16 03:37:31','2015-09-16 03:37:31',NULL,50,NULL,50,NULL,''),('1','fd8fbe66-78eb-4dfc-9a59-988b92efbeca','ZO57djUkpc5vvUBDSFfLNCLNpko=',1,'ku1A3HXfHQ3e0tb9swHN7g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:37:40','2015-09-16 03:37:40','2015-09-16 03:37:40',NULL,50,NULL,50,NULL,''),('1','e7d965bf-6afc-4010-8b72-be7e4e438dfb','wq36CUr5TQPj4IC11EN72x4u+TA=',1,'PZk7d6LYtYsnKB18wSkR9Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:37:50','2015-09-16 03:37:50','2015-09-16 03:37:50',NULL,50,NULL,50,NULL,''),('1','ab0d26e6-b01c-42fb-ab9e-404442cfe9e5','SODCBDj8r7TnK4x49eF6h/BUQxs=',1,'XMkDZi5yj+i9FOE0FahEAg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:38:03','2015-09-16 03:38:03','2015-09-16 03:38:03',NULL,50,NULL,50,NULL,''),('1','6bd7a6f6-4e68-4037-a026-c68297149f21','3kr6NMDZ+cy2sDbY7XX/PnWLaY4=',1,'kBuF37dToYJyM+q17a5M9Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:38:15','2015-09-16 03:38:15','2015-09-16 03:38:15',NULL,50,NULL,50,NULL,''),('1','4ce2fcee-71fe-4a5b-90d4-bd07d3954019','KcOCqXW+bQT8hdE802WQTWUrtjI=',1,'c76VeKYTgZYenf0QmCAMWw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:38:24','2015-09-16 03:38:24','2015-09-16 03:38:24',NULL,50,NULL,50,NULL,''),('1','70983281-19d5-4f1c-ae53-102e0d0d2f56','PxSCOBF7OAUtUmKOD0QfcQH6tVA=',1,'tvfgmjRv7L1fpzX15Eb9Rg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:38:33','2015-09-16 03:38:33','2015-09-16 03:38:33',NULL,50,NULL,50,NULL,''),('1','e657c087-1c4c-4e0b-a938-e5c30e445fc5','8R4kFF9WDum8oL3LIYzbpy33oiQ=',1,'a3mY0aOcsvppOYvDRn2w5g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:39:16','2015-09-16 03:39:16','2015-09-16 03:39:16',NULL,50,NULL,50,NULL,''),('1','e3676988-b849-41cb-a836-9578542ebb9d','rT10OSRs5ic70wlKzeXokqMBXmk=',1,'nHVW+6FkUAjtN8iNr6xGJA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:39:30','2015-09-16 03:39:30','2015-09-16 03:39:30',NULL,50,NULL,50,NULL,''),('1','4296caee-0087-4b76-8982-e7395c03a1ec','2M428uaDpS7XS6AyP1OY+lM+lpQ=',1,'EENSmbZpCzyn+p+KjINDaA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:39:40','2015-09-16 03:39:40','2015-09-16 03:39:40',NULL,50,NULL,50,NULL,''),('1','ee49732a-1b61-4e4b-ad7c-e18e8ec50f97','IiB3iLY3Kiv/FtDkesYaBm0mGLc=',1,'+12xKLupV0jJaGqSiwBK2g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:39:50','2015-09-16 03:39:50','2015-09-16 03:39:50',NULL,50,NULL,50,NULL,''),('1','5549a71b-a553-4c4c-8b98-44ec47badb88','Xznixz/2sXI9RQPFT3fgo/uNmfs=',1,'B36n7whfYBvh5DocWhKiSw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:39:59','2015-09-16 03:39:59','2015-09-16 03:39:59',NULL,50,NULL,50,NULL,''),('1','f6c5a269-53bc-49fa-a307-d8e3acf08ea0','ff3O1S/oPxYOrmFRQIlXoqdynJk=',1,'1gJXCzu2kb+7wvlEIarPCQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:40:12','2015-09-16 03:40:12','2015-09-16 03:40:12',NULL,50,NULL,50,NULL,''),('1','30e2f396-5734-4147-9bdc-982a486babcb','6GlxF+HQpeuZoCN5m7AWRFfosf0=',1,'yM0XC5zMMDSqY4kmycwjaA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:40:22','2015-09-16 03:40:22','2015-09-16 03:40:22',NULL,50,NULL,50,NULL,''),('1','d3d7d2e5-2dc4-44ca-a268-c7feb59541a7','x+sQlQ958crZEOlvchJ8hcEiVRs=',1,'bDUILd3CHr4CjvO7BH/xfQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:40:33','2015-09-16 03:40:33','2015-09-16 03:40:33',NULL,50,NULL,50,NULL,''),('1','8fe31760-3617-435b-ae14-f7a0ec5155bb','poYizKzmZHfQvsfPU5elPH3Y/Q0=',1,'t3DMA+KIvnld4o+ISOp9/g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:40:42','2015-09-16 03:40:42','2015-09-16 03:40:42',NULL,50,NULL,50,NULL,''),('1','142413fe-6684-4d60-b894-7f4bbacd541e','SPfaIPjbdTrDsVZz24SYrbWn3rA=',1,'mZ4Iv+MGbWL6xBqkCqVMgQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:40:56','2015-09-16 03:40:56','2015-09-16 03:40:56',NULL,50,NULL,50,NULL,''),('1','ef27a52c-7153-4c1c-8e83-3006967ad5a1','0OhmHpxfyZyUnlbTeJ/T32l1owc=',1,'0wbbEqxeVo6hr5Y9R3YwxQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:41:05','2015-09-16 03:41:05','2015-09-16 03:41:05',NULL,50,NULL,50,NULL,''),('1','6355a70d-67ac-406b-8596-d334dbc8ba62','QZse56tTUkDTn+JbheMmQuS91sM=',1,'4BVh765yDlYYybQJfZhS7A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:41:14','2015-09-16 03:41:14','2015-09-16 03:41:14',NULL,50,NULL,50,NULL,''),('1','5c317549-8dea-45d6-baf8-e3a6314b7c05','Mi53V/UC7DQDMKlkD+4+d6yhjFk=',1,'R4O5CAwd6KeZabxY1G2BBg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:41:24','2015-09-16 03:41:24','2015-09-16 03:41:24',NULL,50,NULL,50,NULL,''),('1','8b426dd4-ca46-428d-acca-a8aa0ec2b4e4','7iQu+OgdZvWNeBnjmTRn07soTAg=',1,'4R3bU5TrReLz9J4JJcyR2w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:41:34','2015-09-16 03:41:34','2015-09-16 03:41:34',NULL,50,NULL,50,NULL,''),('1','afdea65a-6a99-46bd-a27b-727f68b4bb4c','EL8cLab2Q4sSkc+CzROvyata1dU=',1,'iHlMhWWHQeBWsnPbeMf4hA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:41:53','2015-09-16 03:41:53','2015-09-16 03:41:53',NULL,50,NULL,50,NULL,''),('1','f923745a-1edd-4eb2-af28-5a5d900a6783','KOna88AmVj5mb7p5HIOeMKOAHIs=',1,'3VsGCdSgqY6kL24iGD+GRQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:42:03','2015-09-16 03:42:03','2015-09-16 03:42:03',NULL,50,NULL,50,NULL,''),('1','49282232-93da-430f-bea3-262e8e526ca3','QKxe945xmSjLQOtPKA92I49qEIk=',1,'W2SidfPc+yHXpfoCMCX6tw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:42:15','2015-09-16 03:42:15','2015-09-16 03:42:15',NULL,50,NULL,50,NULL,''),('1','2d2b2ab9-e0b3-445a-a406-04de07b077b9','cCurRF0xz0/MBcaDaLsI9TA/nU8=',1,'Fk0VXPy/WtiTpIix6tZYKA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:42:24','2015-09-16 03:42:24','2015-09-16 03:42:24',NULL,50,NULL,50,NULL,''),('1','f294d369-1b18-48f5-9657-f15db593ba23','BWvuswzRK+G5a0svtMNQXCY/wJM=',1,'QHqPZ26oMqDwDFOeNYaDsw==',NULL,'engrsarowar@gmail.com',NULL,'na','na',1,0,'2015-09-16 03:42:34','2015-09-16 03:42:34','2015-09-16 03:42:34',NULL,50,NULL,50,NULL,''),('1','b9831e8a-c120-4912-8410-f692ac536918','EyyvdM5e3I6ZUMp6u2sRkWwGE0w=',1,'FI9G0qFym6HFZp+kiK5aOg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:44:15','2015-09-16 03:44:15','2015-09-16 03:44:15',NULL,50,NULL,50,NULL,''),('1','2b73677a-c93b-4609-b130-693ac5c5208f','InqrCZe8ML8QyYkA8MfMMxHzAPE=',1,'5dXhT4WH2R9jHs4RFLg14Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:44:47','2015-09-16 03:44:47','2015-09-16 03:44:47',NULL,50,NULL,50,NULL,''),('1','608cce04-99ea-4f8b-9afa-9b337dc92a35','kMde+BOzmLdmD8vANkAh6ItM5FY=',1,'H+eMze67CHQokCW1F2HFAA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:45:02','2015-09-16 03:45:02','2015-09-16 03:45:02',NULL,50,NULL,50,NULL,''),('1','cc0675e1-a187-43a2-baa7-ca73883d4c2b','6FPCfJVfdsZCDFyLqFbVZgjQMDE=',1,'zA0afrb6SHlM9pj8IMjRVA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:45:12','2015-09-16 03:45:12','2015-09-16 03:45:12',NULL,50,NULL,50,NULL,''),('1','3d38177a-34d1-41df-b371-a1b4d03d1678','PXwmbKbaowLuySQyKINPmv8xBvY=',1,'bRKZ0us+NyojTU4iG8JYfA==',NULL,'bitcrana@hotmail.com',NULL,'na','na',1,0,'2015-09-16 03:45:22','2015-09-16 03:45:22','2015-09-16 03:45:22',NULL,50,NULL,50,NULL,''),('1','a12d6022-ad65-467c-b801-0e2566636531','yeSN3zRAWw1jEFDIiATXJGtlWAo=',1,'Zc6a+5Oi7c4q9NlOY1Ka4A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:45:30','2015-09-16 03:45:30','2015-09-16 03:45:30',NULL,50,NULL,50,NULL,''),('1','b4c7cd31-91fe-4fb9-a2d7-45f36361ab01','fjxP9IJKLmqJlGmVW/NMmrX4ays=',1,'3NSnPSP7grqRRo5TGVO6pg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:45:43','2015-09-16 03:45:43','2015-09-16 03:45:43',NULL,50,NULL,50,NULL,''),('1','6380882d-6503-45ab-b0d9-d7acee70d8b4','e/phli3zB3Qomoth39eOQ9Zb28U=',1,'SnYVdQq/mnAsNzumVZSGow==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:45:53','2015-09-16 03:45:53','2015-09-16 03:45:53',NULL,50,NULL,50,NULL,''),('1','eaf5dea5-26c3-4cee-8c28-fa767b682ed3','IeWmo40lHKQ1rgGjsxVXjR1FEnA=',1,'90lypCd5MtjtB06pSC7bqA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:46:04','2015-09-16 03:46:04','2015-09-16 03:46:04',NULL,50,NULL,50,NULL,''),('1','9cb59a86-bfda-4b33-bae0-f0b7ed68135a','VWS8waSLhMQmZQPBDEV5KUhjlvs=',1,'KJNruwGcXxC0MvBO2Tuukw==',NULL,'mamunmdkhaled@gmail.com',NULL,'na','na',1,0,'2015-09-16 03:46:14','2015-09-16 03:46:14','2015-09-16 03:46:14',NULL,50,NULL,50,NULL,''),('1','deddd043-a520-4012-8057-f331a0c08fbf','wvGmo3qX6668mZTRUtXCq7zlHwA=',1,'us+bt4rcFMx5RVdvKzhPxA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:46:23','2015-09-16 03:46:23','2015-09-16 03:46:23',NULL,50,NULL,50,NULL,''),('1','7e94336f-e588-4a89-bce6-2db6a9150b55','14uVrGKKDCT7rx4C9eHE+EFoM+0=',1,'+HPlypjnrq7dCk3zhb4bRw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:46:32','2015-09-16 03:46:32','2015-09-16 03:46:32',NULL,50,NULL,50,NULL,''),('1','7d15e240-bdee-44df-8900-9ce1453c52eb','MYG0iqtSyczHPYBpcHFjZacrep4=',1,'svuQ9CtgafdrKw9+mrvctQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:46:42','2015-09-16 03:46:42','2015-09-16 03:46:42',NULL,50,NULL,50,NULL,''),('1','de2728bd-eeb3-4975-8d87-5ce6f0defc2b','Yl34CyubcQbES4PwXggcWvKOBI4=',1,'phk7akHRJZG4nL84rZuusA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:46:52','2015-09-16 03:46:52','2015-09-16 03:46:52',NULL,50,NULL,50,NULL,''),('1','172b39c5-f8ba-4c67-b2b5-faafaaedfb1b','Qe+b1bHVlFzsL3AvnLSM/FUIHWo=',1,'93UHHAuiHxtI5Y8eL0HnIw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:47:01','2015-10-09 00:19:36','2015-10-09 00:17:54',NULL,50,NULL,50,NULL,''),('1','005fcf13-1bec-4d2d-9e30-1e2cea7f3577','/SkJTZhiIEpHec9IlRFk/rRgGhM=',1,'5dKK8eruFsYZXsV38DJsyA==',NULL,'rownak_tahmina@yahoo.com',NULL,'na','na',1,0,'2015-09-16 03:48:01','2015-09-16 03:48:01','2015-09-16 03:48:01',NULL,50,NULL,50,NULL,''),('1','611230ac-d238-4617-b49b-32c725bfe6cd','2ioujPhoVWW++R/xJl1zZysuLMU=',1,'20UqgpcVDbly137vFANZFA==',NULL,'mizan128@gmail.com',NULL,'na','na',1,0,'2015-09-16 03:48:12','2015-10-12 00:21:59','2015-09-16 03:48:12',NULL,50,NULL,50,NULL,''),('1','1f255432-d297-4201-84cb-75b071130982','+ij6j51CtLf0XZab3ZyCTUNZIuk=',1,'9okQ3THm5zru2fIqtCEhow==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:48:22','2015-09-16 03:48:22','2015-09-16 03:48:22',NULL,50,NULL,50,NULL,''),('1','1b5e6bfc-1b00-4fd9-ae01-71d556707d80','jusXCofviuCI2kSLak1Bgrh9TpI=',1,'csNTTM69iZFbU9XXjp0MgQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:48:31','2015-10-03 15:32:32','2015-09-16 03:48:31',NULL,50,NULL,50,NULL,''),('1','36033228-19a3-466e-a548-ac4e9865abc5','YRyHqFCEC4it34fD97PnKDD6duk=',1,'VZCK9K3uPmI/AoRRp4pBCw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:48:40','2015-09-16 03:48:40','2015-09-16 03:48:40',NULL,50,NULL,50,NULL,''),('1','cbc581e7-554d-44fb-ad15-f8deba820c97','yxFEEd1Xp+Nq/Q0JcoHVnZl3TTA=',1,'qwRl0/t2Qig2H7T4P6xfSw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:48:50','2015-09-16 03:48:50','2015-09-16 03:48:50',NULL,50,NULL,50,NULL,''),('1','df844e30-631e-4035-be79-09edbd5cbe69','WpDObHNzA7J3mR2VPsmvlol9f9A=',1,'3PEm8HMByDDie8WSeYF1hw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:49:03','2015-09-16 03:49:03','2015-09-16 03:49:03',NULL,50,NULL,50,NULL,''),('1','f61675a4-86cf-4012-965f-df5bc9e2dbf9','oVm01ih8/zOI0n8jgi6RZeMMC60=',1,'3fO3OyjQtboOYgRswSR45A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:49:13','2015-10-11 01:22:15','2015-09-16 03:49:13',NULL,50,NULL,50,NULL,''),('1','12e31c67-7026-408d-955e-5e41d81367d7','fpkaKmgB458gdrESxQghxiYxiXQ=',1,'X3AOAUaGXJ7jBC2aznQYJQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:49:22','2015-09-16 03:49:22','2015-09-16 03:49:22',NULL,50,NULL,50,NULL,''),('1','c33c55f3-dbc1-4413-b018-2e10c534c782','ml7TLVxOLB7nd4/nfqYp2rfZPmc=',1,'EbJpTD1E1YLdxSRpSBmaEg==',NULL,'mithu.shahadat@gmail.com',NULL,'na','na',1,0,'2015-09-16 03:49:31','2015-09-16 03:49:31','2015-09-16 03:49:31',NULL,50,NULL,50,NULL,''),('1','af01c831-67d6-4a41-99de-25b7e36dcd07','28MdrcKAEc7mJbItxxA8lZeUWVM=',1,'5Y0LIiznuwDYB+uIV+Eqfg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:49:42','2015-10-10 23:36:17','2015-09-16 03:49:42',NULL,50,NULL,50,NULL,''),('1','4d30d446-1915-436b-b1c3-86208208a3c9','bic0sTVCYr+GCWE7KiQntgHzi2Q=',1,'0U6jeSNR9FG3pvfSMhwNaQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:49:52','2015-09-16 03:49:52','2015-09-16 03:49:52',NULL,50,NULL,50,NULL,''),('1','40ae98bc-be00-4c23-9ff0-21c1c9e1701c','mzP3/BIWyEzW9FIma9uNHA4yB3w=',1,'/uPMtarmVXVbAba982oKwQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:50:00','2015-09-16 03:50:00','2015-09-16 03:50:00',NULL,50,NULL,50,NULL,''),('1','c5660378-d9bf-4d6c-903e-9b905af1072c','26+qXkA3+6+54Tdf2tHLE3FRsvw=',1,'CFEf/MpAarL42VJo+yVBnA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:50:11','2015-09-16 03:50:11','2015-09-16 03:50:11',NULL,50,NULL,50,NULL,''),('1','f80c1996-8f11-4e6f-bbab-f4ccbe6bc4a9','Dl2EMnwui87vjCESjskmc8UwhCw=',1,'56774Q7qbSBLodOjtvWBSg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:50:21','2015-09-16 03:50:21','2015-09-16 03:50:21',NULL,50,NULL,50,NULL,''),('1','c6146c91-7c97-49cd-b179-25348c4de1c1','vrwBxCFQZYZHlvIA2GzSUk6Pg3g=',1,'DMv0ONDug3GYRmnGqAwDbA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:50:30','2015-10-11 11:03:00','2015-10-11 10:38:14',NULL,50,NULL,50,NULL,''),('1','906ae628-6c54-48fd-b211-a25e6e775575','oxwJVhpi5H8VTT3qyOdpaHLiN/A=',1,'+VVAn48lAKNh0/SyKhPHiA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:50:40','2015-09-16 03:50:40','2015-09-16 03:50:40',NULL,50,NULL,50,NULL,''),('1','76d6a564-f0b7-4220-ad63-b2f5b73cd2ef','SJipZ4bwkH6p4kHklAyiDZHYBB8=',1,'ksIpNE6KzEBFl4QaF13bFA==',NULL,'shahiniqbal@engineer.com',NULL,'na','na',1,0,'2015-09-16 03:50:48','2015-09-16 03:50:48','2015-09-16 03:50:48',NULL,50,NULL,50,NULL,''),('1','38d2214c-d8ee-4ec2-832e-8e29ee2f5644','Uh/be4QEY+9xk6Ebp+CNj/DepeY=',1,'oLwpTW2s5iecq6MGV+WaHA==',NULL,'muzeeb_22@yahoo.com',NULL,'na','na',1,0,'2015-09-16 03:50:56','2015-09-16 03:50:56','2015-09-16 03:50:56',NULL,50,NULL,50,NULL,''),('1','dc0ad99a-5d4c-46b1-8c9f-f70f9e12b760','QenwV/6gwnNGc89ftxb+/cYkL0U=',1,'mRmCyUpdR1Vz1k3mVm9wKA==',NULL,'biswambhargayen@yahoo.com',NULL,'na','na',1,0,'2015-09-16 03:51:07','2015-09-16 03:51:07','2015-09-16 03:51:07',NULL,50,NULL,50,NULL,''),('1','72325693-150a-480b-a106-ce70c92e3c0f','TBBu2GyzDgJlkwnNlroMdJFJyTQ=',1,'/PMte3MCBjmtSfB5JZ+CEQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:51:22','2015-09-16 03:51:22','2015-09-16 03:51:22',NULL,50,NULL,50,NULL,''),('1','d304f92a-bbe9-411d-9b47-218c95c0497b','kux+qTh4k9H7nckagvdss1N+07s=',1,'NCkj/d3KQdqrIoGkW+R/ug==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:51:30','2015-09-16 03:51:30','2015-09-16 03:51:30',NULL,50,NULL,50,NULL,''),('1','7b31dd3f-c813-43c1-9c7c-cf80c5a0d845','2XYA4BdC7p8VuxmRB8nVnzDwbRk=',1,'3yF2j+KhJpiEdzsmU1uLfA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:51:44','2015-09-16 03:51:44','2015-09-16 03:51:44',NULL,50,NULL,50,NULL,''),('1','b159e86e-b499-4945-b838-986185e7f304','0wIxNPhAROt9LN6dDpd4JCg0OHM=',1,'/vzpyoUd+1lOumgN1qxUJA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:51:53','2015-09-16 03:51:53','2015-09-16 03:51:53',NULL,50,NULL,50,NULL,''),('1','793f8040-2eff-41fe-93ac-fd6da59e3baf','k1B4po2XauupHvhgBDKHuCHYKrI=',1,'r41WY00fa9kyhbzYUTxh7w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:52:05','2015-09-16 03:52:05','2015-09-16 03:52:05',NULL,50,NULL,50,NULL,''),('1','b3f2e9b0-f5c2-4499-9bff-2c37127f23fb','5+ewre2IJJzawH5nSr7d58k4b50=',1,'g3flsZDoSXJJvPH4/eAN2Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:52:27','2015-09-16 03:52:27','2015-09-16 03:52:27',NULL,50,NULL,50,NULL,''),('1','b4b1fbb1-7db2-4153-857d-0fabdb935703','CmCn8O7hZH1MZKuY3QAzOVwTWcc=',1,'FdnGo0uhGGfXDQOIKxH4Kg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:52:38','2015-09-16 03:52:38','2015-09-16 03:52:38',NULL,50,NULL,50,NULL,''),('1','b2f6a653-0e56-45a9-bd52-63ca12e5870c','tzHgQkJI4N2bK+04xOSpyj3jHVU=',1,'aXxUJE4Hbw6d8fFLSGriTA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:52:48','2015-09-16 03:52:48','2015-09-16 03:52:48',NULL,50,NULL,50,NULL,''),('1','a8c81578-95fe-4759-ab4f-ab24cdd31fec','HbDsqivKyT62mHAX34sGFlD4lsU=',1,'ULstAZu0fP7DS6K8OfFXQA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:53:03','2015-09-16 03:53:03','2015-09-16 03:53:03',NULL,50,NULL,50,NULL,''),('1','e2b35cd5-bca7-4cff-9fe9-9760d73c718b','OQnp+N5UBcZdUaQY7Ni7cHP5Cw4=',1,'j4GKiKibHQPEOzI9rl+HMQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:53:12','2015-09-16 03:53:12','2015-09-16 03:53:12',NULL,50,NULL,50,NULL,''),('1','12b8ed60-e85b-4f20-bddd-de248fc37465','XMNwTU+GMMaawxyFyFHtC7Y3W9E=',1,'wrQh72EeJEyXXKc96FsbOw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:53:21','2015-09-16 03:53:21','2015-09-16 03:53:21',NULL,50,NULL,50,NULL,''),('1','2d27e2b2-08b7-45fd-be6f-189f54c73aad','gdmUTS3JPAswmkLamKwo2X2sqs0=',1,'uGHp+JEuLoZtj6JpiU7LHw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:53:29','2015-10-09 11:07:57','2015-10-09 11:07:00',NULL,50,NULL,50,NULL,''),('1','869f81a4-2be0-440e-9eb3-a63ca73f01d4','1L6O9FZyzN/JL9dGx5k4PfmO+qw=',1,'FIEQvU3QaUUl9yMKEhjwyQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:53:47','2015-09-16 03:53:47','2015-09-16 03:53:47',NULL,50,NULL,50,NULL,''),('1','c30fa2c9-d43b-45de-8fae-eaa5424f2ed4','EnXKAOq4COO4ZTVKt8p8aW6ljQg=',1,'zqFaFkM+8pL5n+tKJW74wQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:53:59','2015-10-11 01:47:14','2015-09-16 03:53:59',NULL,50,NULL,50,NULL,''),('1','48f75519-8d95-4f49-9e47-e4bd93be73d6','L2sROulerHidM6n4odoJ0MD3cM0=',1,'jJ1bWTWKsTQHQvg9NyIUNQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:54:09','2015-09-16 03:54:09','2015-09-16 03:54:09',NULL,50,NULL,50,NULL,''),('1','36fe7dc5-3591-46b8-b6f5-d4af03d6ca36','LIcoQPZoOqDuTN2HWNRwgtM8bX8=',1,'VUU78tlr/jK/XFj+3hvxhA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:54:18','2015-09-16 03:54:18','2015-09-16 03:54:18',NULL,50,NULL,50,NULL,''),('1','c4e087df-af1a-480b-8142-fa6ecdd2d96e','yDvBNIPKenqgzF4syZnRANl7vSM=',1,'4OLWOfWmQvwHvo+6b0maYQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:54:28','2015-10-11 12:01:50','2015-10-10 22:04:56',NULL,50,NULL,50,NULL,''),('1','6421e4fa-69b7-4f95-a57a-1197fa0fa3bd','bUAUKWjANb9D1lPxnTlPfNFRB5E=',1,'ErbFsVGbmE++Q12Hbjslvw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:54:37','2015-09-16 03:54:37','2015-09-16 03:54:37',NULL,50,NULL,50,NULL,''),('1','64e1f5cb-abf9-4f8b-971b-fbed75f54b86','iWLvRr4t2ew1Pz+NkQEqQRJPaH0=',1,'TxXKTgSlJqHaA2OgeZBfvg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:54:50','2015-09-16 03:54:50','2015-09-16 03:54:50',NULL,50,NULL,50,NULL,''),('1','2fec04d1-093b-4749-85f0-b855835de89f','nQOhN+9J2Fva5IgU2iJ2/Mtw+xA=',1,'KvKSHAzvacTGlqYfuIQSEg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:54:59','2015-09-16 03:54:59','2015-09-16 03:54:59',NULL,50,NULL,50,NULL,''),('1','f5d1c583-fba6-48dc-9b23-dbcf8ffe60e0','7vPL5/GyHDK8y0ny38aes+MAZHY=',1,'vpAyVOlpljhuChXSlIlbrg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:55:10','2015-09-16 03:55:10','2015-09-16 03:55:10',NULL,50,NULL,50,NULL,''),('1','dd90c818-d2cf-432d-9d20-9a7749008294','amAEFk/mzNghZbBZ/a13lRLg+mQ=',1,'6+wW0maehZzazKZ5KqCsOg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:55:31','2015-09-16 03:55:31','2015-09-16 03:55:31',NULL,50,NULL,50,NULL,''),('1','5d58e7cc-1cd6-4ab9-8b30-04e000ca520d','iZgZdBHvJmJ1q9JlO+p4j8rVuzk=',1,'/SZh33KBxKqN9/C4IcuRQg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:55:40','2015-09-16 03:55:40','2015-09-16 03:55:40',NULL,50,NULL,50,NULL,''),('1','0c187cf3-faea-4c2d-b6c9-329c31ff8815','+8VGvNX1C9HqIdm5T3k+V55P7GI=',1,'mVLWRw2bBE8tnJSq4N9Paw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:55:51','2015-09-16 03:55:51','2015-09-16 03:55:51',NULL,50,NULL,50,NULL,''),('1','8cf4e967-4c66-437d-861e-592ac21198ea','+VoNsReaY28iYtdeY5ZMRdKZO4c=',1,'r5rvWmoi7OMLib/8naeozg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:55:59','2015-09-16 03:55:59','2015-09-16 03:55:59',NULL,50,NULL,50,NULL,''),('1','a38c1207-1597-4995-a47d-fdb8f3814a1f','7oF85CM7xmIkr1AjM0EttiJtc4o=',1,'s7G3DQC0pChpV5OY3epRfQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:56:09','2015-09-16 03:56:09','2015-09-16 03:56:09',NULL,50,NULL,50,NULL,''),('1','e4fc05c3-6d36-46c2-a8ee-3d6e5070e59d','Q/m7JHqvc6HEwkRStiv/5rUk45I=',1,'WOhm58ljIcATiBIfAl1e5w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:56:17','2015-09-16 03:56:17','2015-09-16 03:56:17',NULL,50,NULL,50,NULL,''),('1','9e3c6f32-b65e-40df-ae55-9f337ea3c65d','wWN7TZDpsH+K5878cZnSm6yOtoo=',1,'mpZvBQu+YKJ7YyUfqiYNSQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:56:25','2015-09-16 03:56:25','2015-09-16 03:56:25',NULL,50,NULL,50,NULL,''),('1','9a0ddc82-2926-4db4-b0ee-506b0476cfcb','ZEWKtMHOYWk83t4+px8LboI7U3M=',1,'T0G0AqpZiOspINffhw7y2Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:56:35','2015-09-16 03:56:35','2015-09-16 03:56:35',NULL,50,NULL,50,NULL,''),('1','dc9c4658-36b0-476c-9007-c4454eaaf59d','RkTzNgkaHE568anyBs0ovR/8DQk=',1,'B9Pek/LAEXW6cAk+xSn04w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:56:43','2015-09-16 03:56:43','2015-09-16 03:56:43',NULL,50,NULL,50,NULL,''),('1','6a93b1b4-7575-4ff9-84bc-956c1b54cf9c','gov0SxYudXuMUASssmWCvZA5tns=',1,'+AQmPhORoTfZVrss2JaKag==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:56:53','2015-09-16 03:56:53','2015-09-16 03:56:53',NULL,50,NULL,50,NULL,''),('1','96f98be8-a0e4-4c54-838a-38606170776b','lxZJYuU9GBxEg3ryvTCrloGDdRM=',1,'cKsLTYnFtAnpDMYgqvVGcw==',NULL,'masud9489@yahoo.com',NULL,'na','na',1,0,'2015-09-16 03:57:02','2015-09-16 03:57:02','2015-09-16 03:57:02',NULL,50,NULL,50,NULL,''),('1','11a9726d-3490-430a-9b49-4531d9c64aaf','Zz9xrcrIyTaNr4yHSW2v/LLKIP4=',1,'TAL8maDZpPjCZyLpjsQwBw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:57:13','2015-09-16 03:57:13','2015-09-16 03:57:13',NULL,50,NULL,50,NULL,''),('1','c9b253c6-29f6-49d5-b06b-1abd2e360856','59ChN+D0+OVCiihHryrH9EgPDkI=',1,'gL8havtgRbW1uUeQSG6z0w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:57:22','2015-09-16 03:57:22','2015-09-16 03:57:22',NULL,50,NULL,50,NULL,''),('1','4f85d1ee-916a-4f21-b719-cf56e664eade','i7e4JYJWJgfs3JT+MXwrwGJsjqE=',1,'nirn3OKonR2Cz9zv3xYcYg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:57:31','2015-09-16 03:57:31','2015-09-16 03:57:31',NULL,50,NULL,50,NULL,''),('1','df8eba0d-eeb7-47b5-ad85-ca9bee00c5e9','JtwAhXKGeHW+d65zj01rVo+HyRs=',1,'/fdq+GNbJ5cXxvXKDkvMdQ==',NULL,'shirin_akter@hotmail.com',NULL,'na','na',1,0,'2015-09-16 03:57:42','2015-09-16 03:57:42','2015-09-16 03:57:42',NULL,50,NULL,50,NULL,''),('1','251297f3-3693-4e8c-824e-dbe14aa337bb','7fIp5PNqjaGbH6zOk0ImR0chmjY=',1,'XfR7Rqfj/Jo72QMnUumpaA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:57:51','2015-09-16 03:57:51','2015-09-16 03:57:51',NULL,50,NULL,50,NULL,''),('1','030f56b5-d09a-481a-ba19-4bafeb3aaee0','yaGyBePeurSL4UsZezsrYh62dnI=',1,'MfT+7trY7H+5DewA5e9Pjg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:57:59','2015-09-16 03:57:59','2015-09-16 03:57:59',NULL,50,NULL,50,NULL,''),('1','2c73a22e-8bc5-49ca-b9e4-83c07da3d037','edh9FSj8/Jx23KGecRJ24xmHt9o=',1,'pzxzeXef3LCFITd1MQHhbg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:58:07','2015-09-16 03:58:07','2015-09-16 03:58:07',NULL,50,NULL,50,NULL,''),('1','fd44edcc-dc6a-44f2-959a-b2751207fcd9','RMwYsYUYCZY/qbYIRTUYaGdLdBE=',1,'2KFB09Gj4tRhTdy+zwBBCQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:58:15','2015-09-16 03:58:15','2015-09-16 03:58:15',NULL,50,NULL,50,NULL,''),('1','97756c77-91df-43d8-b0b3-662b8f6a5ed1','VicqhfYFHBiw3f1d4gWi2izIleo=',1,'EANV0fWpwXrWxe7iiycEFQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:58:23','2015-09-16 03:58:23','2015-09-16 03:58:23',NULL,50,NULL,50,NULL,''),('1','1a85cdd6-c62f-4e23-99fe-67b5d13024fe','+x4Np+K1mZfbGt1MB6wymsNVixU=',1,'ut6+B98Bkbrukt30x5ZhWg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:58:33','2015-09-16 03:58:33','2015-09-16 03:58:33',NULL,50,NULL,50,NULL,''),('1','afb8435e-c887-4e64-b1d6-79e9a8affcf2','5wrTD691Worjz2B5jABuC1F6P7o=',1,'GdxJ7UerBLxEIfBy11kU6g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:58:44','2015-09-16 03:58:44','2015-09-16 03:58:44',NULL,50,NULL,50,NULL,''),('1','8d0646fe-f248-4799-b0fe-01985b16ce90','jKPBr63VNot6xhyF65lpyAachHY=',1,'FuB4Ko3I8gvstFBLYmY7cw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:58:53','2015-09-16 03:58:53','2015-09-16 03:58:53',NULL,50,NULL,50,NULL,''),('1','1cc1eb9c-ab68-45c9-acf1-f858656d3c01','ZBcBS4dZfY2JEe/buggR/yG/HiY=',1,'gUULiUifpFriuQQTGHOLSw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 03:59:00','2015-09-16 03:59:00','2015-09-16 03:59:00',NULL,50,NULL,50,NULL,''),('1','22d88284-3e50-4f8b-bb99-e9dc4b0c3292','AJKhhkwQOaE7ZlwIDjFEH2PawUA=',1,'soaMUx00oOHguYQruzWshw==',NULL,'kaisarbttb@gmail.com',NULL,'na','na',1,0,'2015-09-16 03:59:10','2015-09-16 03:59:10','2015-09-16 03:59:10',NULL,50,NULL,50,NULL,''),('1','5450f11e-bc24-4e3e-8e5d-72bd5f14a344','5WSGYHsRsLv31jvoCpNWBEi57SQ=',1,'YuvI2crfBSnTK8IL4izaRg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:01:15','2015-09-16 04:01:15','2015-09-16 04:01:15',NULL,50,NULL,50,NULL,''),('1','943313d1-c2c4-4792-95a8-fb5190a7d8e9','rIwqsMrC0s7pIEFV/Cqqqd9GtQg=',1,'qOebqyMwaE7oekhW40Ga7Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:01:25','2015-09-16 04:01:25','2015-09-16 04:01:25',NULL,50,NULL,50,NULL,''),('1','836f6dea-e8fd-4a0b-a294-a65806f4dca2','T1PKE+AArLmMDP5KMsA9jStx3dQ=',1,'GNQIaJGWq4EBXGUh8ntNmQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:01:34','2015-09-16 04:01:34','2015-09-16 04:01:34',NULL,50,NULL,50,NULL,''),('1','d657c82f-54a3-4c35-b0a7-3ff4a18cef1a','keoqCEMxbNgC5XBRQMC7gnjRz+Q=',1,'av+GVuz/Mlne3PXEM8HDzA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:01:44','2015-09-16 04:01:44','2015-09-16 04:01:44',NULL,50,NULL,50,NULL,''),('1','5b15bc4e-9cee-4299-ae03-ae2f94f5c768','5hxxEr8zGDzJ8FNGfFASBAyyF5Q=',1,'FG2BQJt5mvanyV8CbGsO9Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:01:52','2015-09-16 04:01:52','2015-09-16 04:01:52',NULL,50,NULL,50,NULL,''),('1','52a8e644-56ca-4762-a875-5993f09798b8','Ue1JdrSQdECbFLxSQtxoXmafU5w=',1,'fKPQh2cLhdgdkybgHw7YGQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:02:00','2015-09-16 04:02:00','2015-09-16 04:02:00',NULL,50,NULL,50,NULL,''),('1','79b233c7-098f-4a65-b657-6433f19b0ac1','mfkbMmx95242trXrYPk8zRtMUoo=',1,'qJyWFujChWpBjF7/EGLKHA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:02:08','2015-09-16 04:02:08','2015-09-16 04:02:08',NULL,50,NULL,50,NULL,''),('1','cd9d68dc-da0f-4310-8ab9-c789df4fc2b9','Xagp2+r7BxjMew3UnwWX2pwJS3E=',1,'fNIROHBmHfYNQ4NHH14dmw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:02:17','2015-09-16 04:02:17','2015-09-16 04:02:17',NULL,50,NULL,50,NULL,''),('1','6df8f35a-ccb8-431c-8025-94a3a274d6d4','vpgp30WoQ6qTVz3S+WOE4rFDZlc=',1,'/RPBtQG1NqId1I1aLMHZ4A==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:02:25','2015-09-16 04:02:25','2015-09-16 04:02:25',NULL,50,NULL,50,NULL,''),('1','61b2412b-dc4c-4717-a5e3-5b40da505d40','aXLwXtcc8xTKcsSheUh/2Cb3DBE=',1,'UBDXrRG5kowFyEonUMCzKA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:02:33','2015-09-16 04:02:33','2015-09-16 04:02:33',NULL,50,NULL,50,NULL,''),('1','bb555204-09a6-4107-b981-be884351f546','Ha2YYdd3wqeVZlHfyMgJ1lptx+E=',1,'I1YG2zs8RVipxxonrX8YGA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:02:42','2015-09-16 04:02:42','2015-09-16 04:02:42',NULL,50,NULL,50,NULL,''),('1','427b1322-d8f9-4a9c-b33b-a30e53c4a6ce','p8g6+pH2GjBCjMf5QpZtl2kXa5E=',1,'Oio+YJH24CGcI2ep+tiqew==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:02:50','2015-09-16 04:02:50','2015-09-16 04:02:50',NULL,50,NULL,50,NULL,''),('1','30a3b72a-8628-4d30-b2f8-ecd1ac30a36b','vCZhL235gMu7yDwlRtZbmH7JGCs=',1,'ig3elw9LixxkDp8nva6h3w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:03:01','2015-09-16 04:03:01','2015-09-16 04:03:01',NULL,50,NULL,50,NULL,''),('1','27b12961-bcb7-4f72-9e90-ab49ed07b7ad','mp8bO9ylyrmt0MX8olAvNfICLgE=',1,'8/d+xYnErVrPH6gAHZGiUA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:03:09','2015-09-16 04:03:09','2015-09-16 04:03:09',NULL,50,NULL,50,NULL,''),('1','6b562790-dd9a-4005-9f90-1b879a7d562d','iLtgn8Y6KYOKRe1T7CF1bHT/0vo=',1,'Eo1uWcWoW32nvuT7H8V6Ug==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:03:21','2015-09-16 04:03:21','2015-09-16 04:03:21',NULL,50,NULL,50,NULL,''),('1','e7c5fc22-c1f4-450c-98f4-fba59adec557','3dl2KnEC4ua7aTPzRdh0C3mu7xQ=',1,'Rd0SEFAh07y949EMgrMmMg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:03:31','2015-09-16 04:03:31','2015-09-16 04:03:31',NULL,50,NULL,50,NULL,''),('1','e88a1983-0341-49f0-8d2f-429fb16fa019','cb5yQyanfd2uuQ7+YJ+RSbiWgmo=',1,'zXTRMG4roaiDxegDk7xGuQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:03:42','2015-09-16 04:03:42','2015-09-16 04:03:42',NULL,50,NULL,50,NULL,''),('1','fa6afd0e-6e9e-4470-a03a-1142a96058f6','ZCbkmHrjn541Zm4GUpIuji+5ECo=',1,'+8Sxa8Zf3noEihMmfOTreg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:04:06','2015-09-16 04:04:06','2015-09-16 04:04:06',NULL,50,NULL,50,NULL,''),('1','3279731a-008d-4bf6-b125-3dd4df53ccc6','XZu/kmuPrplt0KqzkZGP47Dl2mY=',1,'cB7KE4PseNpGAq8YHd+g1g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:04:15','2015-09-16 04:04:15','2015-09-16 04:04:15',NULL,50,NULL,50,NULL,''),('1','f7d140b8-038b-4dab-9c50-c1cca6f97306','q9dRjmUJFQw4fBbSZVE1+0eEaWM=',1,'hpQIJg839wY2fv+NqGgFuA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:04:23','2015-09-16 04:04:23','2015-09-16 04:04:23',NULL,50,NULL,50,NULL,''),('1','5f403257-1baf-4a6f-953a-e2cfdd1d85e0','UcApycsUezY8pzxXG1fqyANZ3BY=',1,'/tjd26wuoD2lcSgOZmzb7w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:04:32','2015-09-16 04:04:32','2015-09-16 04:04:32',NULL,50,NULL,50,NULL,''),('1','96c6042b-e742-4097-8607-5663d9007b16','sjPXXbZ7p5MfUuLqzCHusYAbEPU=',1,'UZXZyPjf7U2rsWXwfxyyfA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:04:41','2015-09-16 04:04:41','2015-09-16 04:04:41',NULL,50,NULL,50,NULL,''),('1','8c4506ee-d422-4df2-8737-fa46e27fc682','PG4E8NWKS+heFUy2dJgHWSynjtA=',1,'iXkQUGR/Xo5veyk+CUhjiA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:04:50','2015-09-16 04:04:50','2015-09-16 04:04:50',NULL,50,NULL,50,NULL,''),('1','24c2fd74-e3d4-41ce-a9ce-12628f5b4f9f','wpvVbW6Y9WRwoHHM7mnqntv1al8=',1,'5Dv5q5VXacHsTGahCZOh/w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:05:00','2015-10-09 13:47:55','2015-10-09 13:48:59',NULL,50,NULL,50,NULL,''),('1','158c6dfc-ee23-41a1-82d5-df1977011309','0S+L0jUtzQZQnCqVZLfv9cA5R60=',1,'WVI3ZYrOwgCakJd9xNY3gQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:05:13','2015-09-16 04:05:13','2015-09-16 04:05:13',NULL,50,NULL,50,NULL,''),('1','203d8e84-2357-4074-9276-ac9d923c6b81','Zo2379bQkQeH+dtR2SJpBm3c9aY=',1,'xX0YKiQNzT76ivkkvJOObQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:05:22','2015-09-16 04:05:22','2015-09-16 04:05:22',NULL,50,NULL,50,NULL,''),('1','96cc9ff6-c886-4f82-8d77-b52ea7cebbee','NO1WqZ0ydonklLaHK2HPQRduCwk=',1,'3eS0NO2yZwgEspa2J1ulGQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:05:32','2015-09-16 04:05:32','2015-09-16 04:05:32',NULL,50,NULL,50,NULL,''),('1','79db90ba-eb5b-433c-a56b-7b2cbf9ac3b6','8EgwbCsgXaFrd8UGM4MCf7vRd/Y=',1,'YMtrNZ3hatxRuetLnwjnWw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:05:40','2015-09-16 04:05:40','2015-09-16 04:05:40',NULL,50,NULL,50,NULL,''),('1','f8036243-51b2-4a4c-935f-328dcfca8151','87p64a/f+0CfEv6fbge5rksJ5sw=',1,'043Qe5ZwUyd3w+dIHDdmLw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:05:49','2015-09-16 04:05:49','2015-09-16 04:05:49',NULL,50,NULL,50,NULL,''),('1','0be42be6-0b5c-4bf2-aeb9-a7e158324a4e','ODuOFI0uvn/8dlXyGuEedas4fCs=',1,'Htln9XrG72fSj8oJvRUq0g==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:05:57','2015-09-16 04:05:57','2015-09-16 04:05:57',NULL,50,NULL,50,NULL,''),('1','f5629b99-df0b-4dfd-940e-be3dcf832eca','2M2b17l7IQekVrcR1PfjNmNojQM=',1,'yDcQNCNq5dmpoEgaKalOfA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:06:05','2015-09-16 04:06:05','2015-09-16 04:06:05',NULL,50,NULL,50,NULL,''),('1','070ad0a8-4112-4807-a0e6-7d3dc4738c49','FN8NKBvoOaFdgccebtpPbkdfHNs=',1,'OYrfchjKN6JHgklv5BylEQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:06:13','2015-09-16 04:06:13','2015-09-16 04:06:13',NULL,50,NULL,50,NULL,''),('1','c38a5b68-8df9-4139-a3f6-0faf5dff10c4','8epwr972LyxSAKLjg640IRpxHcs=',1,'nehyP6LzcyW4PPoysuo7kQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:06:21','2015-09-16 04:06:21','2015-09-16 04:06:21',NULL,50,NULL,50,NULL,''),('1','5b2e1fcd-a21c-42d7-8db6-29722d83ecf1','0MQ2gTM1ShYCnno+VXUSU4tp7hQ=',1,'2U3G3urb4VfVo7xPCUdAQA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:06:30','2015-09-16 04:06:30','2015-09-16 04:06:30',NULL,50,NULL,50,NULL,''),('1','2f4ba54e-2d8c-4a65-a5d7-e74241e3f5cf','3j+hVpLYxeRUXcuNOTXZTOUQMKg=',1,'RX0HqZpKtDEYs5RZHZNTuw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:06:43','2015-09-16 04:06:43','2015-09-16 04:06:43',NULL,50,NULL,50,NULL,''),('1','18843860-61d4-4844-a7b0-5fee8b4ddec8','QF4f7spMLDSVPTKdk149nf/5lA4=',1,'2lDw1mR/ZzhuwTVFmrwslg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:06:52','2015-09-16 04:06:52','2015-09-16 04:06:52',NULL,50,NULL,50,NULL,''),('1','63f89240-b8c3-4051-a867-953e6191a7ce','4gVz4PeqvLPoQi4hLpEqIl1pSes=',1,'Hfg3NB+Lw4CBJX/JDFi2Cg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:07:02','2015-09-16 04:07:02','2015-09-16 04:07:02',NULL,50,NULL,50,NULL,''),('1','ecea98cb-e133-408d-9296-d5aa3f916508','QCadGG6X2v+h6BnPyyQiWNwf0es=',1,'aBbAFuiHcocJjgID7IlYqA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:07:10','2015-09-16 04:07:10','2015-09-16 04:07:10',NULL,50,NULL,50,NULL,''),('1','c47260fd-02e3-4b8c-a7d8-a96921a2cbde','G/+0KZTfemufL7nXjoOwxq/EgTU=',1,'ZIye9/hNVO/6D9yGLTyEeA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:07:19','2015-09-16 04:07:19','2015-09-16 04:07:19',NULL,50,NULL,50,NULL,''),('1','2cd24ad6-1db8-4de2-b626-4e30922a2669','g8oDtbLVUU4J2TnzPDBzL6IwG7k=',1,'woJHpo0v53PPyxYDvKjaxQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:07:27','2015-09-16 04:07:27','2015-09-16 04:07:27',NULL,50,NULL,50,NULL,''),('1','52c341ec-0362-45ad-abaf-7c01278ccfef','Zi1y4hFM7G48KgN1ei7ulhP1LzY=',1,'fDo1dr/G1PoBl0ApiX8l0Q==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:07:36','2015-09-16 04:07:36','2015-09-16 04:07:36',NULL,50,NULL,50,NULL,''),('1','f1adc78b-ae39-41ae-abbb-8003445f06ff','T0m0SSZkjRXGNiajR0NtgCgic8U=',1,'u7KV72bSKwh5/VTEEm+gEA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:07:48','2015-09-16 04:07:48','2015-09-16 04:07:48',NULL,50,NULL,50,NULL,''),('1','e78760f1-7435-4b9f-9956-0b593813cda6','mRqovwzJIKAJ9oCC/nS8rsv83/o=',1,'AmrUaiFkqkojgLCmOVfDsw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:08:10','2015-09-16 04:08:10','2015-09-16 04:08:10',NULL,50,NULL,50,NULL,''),('1','76b9f64c-4116-4bd4-9005-a7f469cbb289','v5qW/R3jvM+0+kdODMf4sQZXXuA=',1,'41k7QEWFiKLwMMXVPfec1w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:08:24','2015-09-16 04:08:24','2015-09-16 04:08:24',NULL,50,NULL,50,NULL,''),('1','0530ef32-d0d5-4a16-9314-324d04a997ec','zxbCEhCI/NqrRbAbDQSCqgdA/FE=',1,'05SWAAcYS4iKETphEvBMjg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:08:33','2015-09-16 04:08:33','2015-09-16 04:08:33',NULL,50,NULL,50,NULL,''),('1','443c778e-ee3b-4f3d-8a01-be75b1f1acf0','lhApJWNvvCPfKCcHCsnnK+HUID4=',1,'TgcFB46x7/ASBsZt9UE8zQ==',NULL,'nazrulkhan98@yahoo.com',NULL,'na','na',1,0,'2015-09-16 04:08:44','2015-10-11 15:47:49','2015-09-16 04:08:44',NULL,50,NULL,50,NULL,''),('1','25982c1b-e6e8-4547-b392-da5b323bc31c','at0afn96EzSeayZp7L2tGWonaQ0=',1,'1pIgPhBTOzLxvUsEROiYlQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:08:54','2015-09-16 04:08:54','2015-09-16 04:08:54',NULL,50,NULL,50,NULL,''),('1','67fe3ecf-3c5e-45a5-8bc2-89abdd071442','vfi8iZIC0BiyEkYoKcJBGpeOboY=',1,'2zFfjwkzpgT6gWFD3Wv0tw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:09:04','2015-09-16 04:09:04','2015-09-16 04:09:04',NULL,50,NULL,50,NULL,''),('1','da823522-642d-4c6c-b12e-fd7864310c2d','mR5+RJmgsIbfi3MUQuHPJo6h9VY=',1,'t+bXSpB/0e+Zn+YJfvKxHg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:09:11','2015-09-16 04:09:11','2015-09-16 04:09:11',NULL,50,NULL,50,NULL,''),('1','25d28d00-1848-4ffd-a0e3-5d61ca6ce4a6','nQGRHhT9KLB15DjBsGi7g5MwS0Q=',1,'jhLiabm/rBVeXmSJJ7kQjw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:09:23','2015-09-16 04:09:23','2015-09-16 04:09:23',NULL,50,NULL,50,NULL,''),('1','b3dd82fa-1358-4d0f-9f3a-8be02a95aeae','KNKP9I7tCqeTtjehxq5P3NaXBzQ=',1,'dSbnkLevvV+AfRT1kfm1jA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:09:34','2015-09-16 04:09:34','2015-09-16 04:09:34',NULL,50,NULL,50,NULL,''),('1','061bbac2-ffb8-497b-abf4-d04521bb88ae','sk/ozUM8Gdrm6qh70sjfP/ln4lM=',1,'tY2lhsPMyhXO1MMmoriEtw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:09:42','2015-09-16 04:09:42','2015-09-16 04:09:42',NULL,50,NULL,50,NULL,''),('1','1f0c1a48-9c20-450e-8480-ad9d195cc50a','3Nrq6Arx0z3u9vsitgi1YgaLT/w=',1,'tKipDr2Qsd5tuOoGzZoPuw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:09:52','2015-09-16 04:09:52','2015-09-16 04:09:52',NULL,50,NULL,50,NULL,''),('1','dfde6e4e-97df-4f96-bdf2-12bd0f2d9c31','KlDMQtZ4TSmIW6LqvZl7cX6SjGU=',1,'/ByXoTJf2MBTOLHSjZ6t9w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:10:01','2015-09-16 04:10:01','2015-09-16 04:10:01',NULL,50,NULL,50,NULL,''),('1','a1a3acf6-c4df-470e-8d04-6fb54bc546d4','OV0+TP8OVmtzM71ozyrk4u1T3RA=',1,'Xk3/PAVX+nPdTwC0BNDVwQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:10:09','2015-09-16 04:10:09','2015-09-16 04:10:09',NULL,50,NULL,50,NULL,''),('1','d027c944-ab9b-416f-9d53-cb732ff347fb','bgNJYs4jL6+JDGdeGWCEZhVbQoE=',1,'4u5oTpAgbjuHDpSglQ71kw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:10:21','2015-09-16 04:10:21','2015-09-16 04:10:21',NULL,50,NULL,50,NULL,''),('1','463bd284-7723-4086-bb9c-bbeee18ba1a0','VWkOF+MEl+AVs4RfDWuznrxuX30=',1,'me7ctZhWnou82rghaJrvLA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:10:32','2015-09-16 04:10:32','2015-09-16 04:10:32',NULL,50,NULL,50,NULL,''),('1','00452820-385e-4cca-9b43-5b180ff6152c','jr7BJ4ACCvHUc9TTaQlZ/udMQRg=',1,'cgU+Y/WyMVTNOmwPOx5NHw==',NULL,'test@demo.com',NULL,'na','na',1,0,'2015-09-16 04:10:40','2015-10-05 12:58:11','2015-09-18 19:32:34',NULL,50,NULL,50,NULL,''),('1','799c4263-edf8-46be-9a19-83f3e08be8fc','jBBKPLIhSdi0rpKB84Av9UbOF8k=',1,'nD08hyHC/ND7N0h/cm4YRw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:11:00','2015-09-16 04:11:00','2015-09-16 04:11:00',NULL,50,NULL,50,NULL,''),('1','3b25cc34-0fb4-49ef-98a3-a299f1a1f75e','CxCqz2ZAijwRgv8upZUnyWnPxMo=',1,'KgvSXR3N2mV1Wa/FZk4b6w==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:11:11','2015-09-16 04:11:11','2015-09-16 04:11:11',NULL,50,NULL,50,NULL,''),('1','c6f7b3f0-bf59-456b-bd2d-53c7c6152090','EAnNwDPf80oYl6l0vvIriGD/LsE=',1,'uZA3q8vA7uzj30kQjEcMmw==',NULL,'zohurul1961@gmail.com',NULL,'na','na',1,0,'2015-09-16 04:11:26','2015-09-16 04:11:26','2015-09-16 04:11:26',NULL,50,NULL,50,NULL,''),('1','87a4152f-8f34-4098-b876-4cf8ef6efc75','Qd5fUSmF7HazOxbfdOxQYTuvqbU=',1,'oLELsXjhDfrLegWFPm3/Cg==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:11:34','2015-09-16 04:11:34','2015-09-16 04:11:34',NULL,50,NULL,50,NULL,''),('1','7dc3f0ba-1c4d-4fe2-8b14-501c6fc77b05','MlHM5lUd0UyewyY/hdhuLKuaKPo=',1,'szMi8bXovOUbO/MbK92sUQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:11:43','2015-09-16 04:11:43','2015-09-16 04:11:43',NULL,50,NULL,50,NULL,''),('1','9c7d0b4d-f848-4edb-8897-e480970d47c8','cpW2BTzWbwrArcnlNhgSJVlleKk=',1,'kjmYylCwf06YQIYYgBFEqA==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:11:51','2015-09-16 04:11:51','2015-09-16 04:11:51',NULL,50,NULL,50,NULL,''),('1','83c0c472-d6dc-4870-9cbb-4a74d0819d34','UO4BDkIyNTDKB2W/aptDLPgVIhA=',1,'IFGcPHxFgpArqMnj37SAVw==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-16 04:11:59','2015-09-16 04:11:59','2015-09-16 04:11:59',NULL,50,NULL,50,NULL,''),('1','0f920dec-cb10-4277-af3a-5083ff1a3c42','2lKGpoYEsNT9Q0x1EOOCOot9uKc=',1,'Tf1fGzkZ91BJqEgE1/5zjQ==',NULL,'demo@demo.com',NULL,'na','na',1,0,'2015-09-17 05:20:00','2015-09-17 05:20:00','2015-09-17 05:20:00',NULL,50,NULL,50,NULL,''),('1','1b2deb23-1802-4b34-b0f1-250c1b16e29e','Ye8j13CB6WQ/qmqHOccxA4GZiO4=',1,'D3V7BgeilcoU3XI/mDO5ag==',NULL,'demo@demo.com',NULL,'?','k',1,0,'2015-10-10 01:18:03','2015-10-10 01:18:03','2015-10-10 01:18:03',NULL,50,NULL,50,NULL,''),('1','cf9b0164-6c75-4d95-9c8c-764a06435282','c+e5laLNynA1069CJakmtoH442M=',1,'oHnIXqKzagZ4cLHDnxLHyg==',NULL,'demo@demo.com',NULL,'?','o',1,0,'2015-10-10 01:19:30','2015-10-10 01:19:30','2015-10-10 01:19:30',NULL,50,NULL,50,NULL,NULL);

/*Table structure for table `aspnet_roles` */

DROP TABLE IF EXISTS `aspnet_roles`;

CREATE TABLE `aspnet_roles` (
  `ApplicationId` char(50) NOT NULL,
  `RoleId` int(11) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(256) CHARACTER SET utf8 NOT NULL,
  `LoweredRoleName` varchar(256) CHARACTER SET utf8 NOT NULL,
  `Description` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`RoleId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `aspnet_roles` */

insert  into `aspnet_roles`(`ApplicationId`,`RoleId`,`RoleName`,`LoweredRoleName`,`Description`) values ('1',2,'Admin','admin',NULL),('1',3,'Member','member',NULL),('1',4,'Official','official',NULL),('1',1,'Support','support',NULL);

/*Table structure for table `aspnet_schemaversions` */

DROP TABLE IF EXISTS `aspnet_schemaversions`;

CREATE TABLE `aspnet_schemaversions` (
  `Feature` varchar(128) NOT NULL,
  `CompatibleSchemaVersion` varchar(128) NOT NULL,
  `IsCurrentVersion` tinyint(4) NOT NULL,
  PRIMARY KEY (`Feature`,`CompatibleSchemaVersion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `aspnet_schemaversions` */

insert  into `aspnet_schemaversions`(`Feature`,`CompatibleSchemaVersion`,`IsCurrentVersion`) values ('common','1',0),('membership','1',0),('role manager','1',0);

/*Table structure for table `aspnet_users` */

DROP TABLE IF EXISTS `aspnet_users`;

CREATE TABLE `aspnet_users` (
  `ApplicationId` char(50) NOT NULL,
  `UserId` char(50) NOT NULL,
  `UserName` varchar(256) CHARACTER SET utf8 NOT NULL,
  `LoweredUserName` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `MobileAlias` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `IsAnonymous` tinyint(1) NOT NULL DEFAULT '0',
  `LastActivityDate` datetime DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `aspnet_users` */

insert  into `aspnet_users`(`ApplicationId`,`UserId`,`UserName`,`LoweredUserName`,`MobileAlias`,`IsAnonymous`,`LastActivityDate`) values ('1','67fe3ecf-3c5e-45a5-8bc2-89abdd071442','nurul1805','1',NULL,0,'2015-09-16 04:09:04'),('1','25982c1b-e6e8-4547-b392-da5b323bc31c','borre9396','1',NULL,0,'2015-09-16 04:08:54'),('1','443c778e-ee3b-4f3d-8a01-be75b1f1acf0','nazrul1818','1',NULL,0,'2015-10-11 15:47:49'),('1','3d3dab7a-6372-4b14-96fc-d75a64bd247c','admin2','1',NULL,0,'2015-09-10 17:42:46'),('1','0530ef32-d0d5-4a16-9314-324d04a997ec','reja1810','1',NULL,0,'2015-09-16 04:08:33'),('1','76b9f64c-4116-4bd4-9005-a7f469cbb289','sanwar6868','1',NULL,0,'2015-09-16 04:08:24'),('1','e78760f1-7435-4b9f-9956-0b593813cda6','smandal4143','1',NULL,0,'2015-09-16 04:08:10'),('1','f1adc78b-ae39-41ae-abbb-8003445f06ff','ahmed0572','1',NULL,0,'2015-09-16 04:07:48'),('1','52c341ec-0362-45ad-abaf-7c01278ccfef','ershad1806','1',NULL,0,'2015-09-16 04:07:36'),('1','2cd24ad6-1db8-4de2-b626-4e30922a2669','gafur2826','1',NULL,0,'2015-09-16 04:07:27'),('1','c47260fd-02e3-4b8c-a7d8-a96921a2cbde','areja0299','1',NULL,0,'2015-09-16 04:07:19'),('1','ecea98cb-e133-408d-9296-d5aa3f916508','hafez1803','1',NULL,0,'2015-09-16 04:07:10'),('1','63f89240-b8c3-4051-a867-953e6191a7ce','khair3737','1',NULL,0,'2015-09-16 04:07:02'),('1','18843860-61d4-4844-a7b0-5fee8b4ddec8','faruk1808','1',NULL,0,'2015-09-16 04:06:52'),('1','2f4ba54e-2d8c-4a65-a5d7-e74241e3f5cf','suian5749','1',NULL,0,'2015-09-16 04:06:43'),('1','5b2e1fcd-a21c-42d7-8db6-29722d83ecf1','badrul8523','1',NULL,0,'2015-09-16 04:06:30'),('1','c38a5b68-8df9-4139-a3f6-0faf5dff10c4','kashem6500','1',NULL,0,'2015-09-16 04:06:21'),('1','070ad0a8-4112-4807-a0e6-7d3dc4738c49','mujib4426','1',NULL,0,'2015-09-16 04:06:13'),('1','f5629b99-df0b-4dfd-940e-be3dcf832eca','omar7866','1',NULL,0,'2015-09-16 04:06:05'),('1','0be42be6-0b5c-4bf2-aeb9-a7e158324a4e','nurul5315','1',NULL,0,'2015-09-16 04:05:57'),('1','f8036243-51b2-4a4c-935f-328dcfca8151','kalam0000','1',NULL,0,'2015-09-16 04:05:49'),('1','79db90ba-eb5b-433c-a56b-7b2cbf9ac3b6','imadul9096','1',NULL,0,'2015-09-16 04:05:40'),('1','96cc9ff6-c886-4f82-8d77-b52ea7cebbee','rashid8928','1',NULL,0,'2015-09-16 04:05:32'),('1','203d8e84-2357-4074-9276-ac9d923c6b81','noor4290','1',NULL,0,'2015-09-16 04:05:22'),('1','158c6dfc-ee23-41a1-82d5-df1977011309','dalil8751','1',NULL,0,'2015-09-16 04:05:13'),('1','24c2fd74-e3d4-41ce-a9ce-12628f5b4f9f','kabir4197','1',NULL,0,'2015-10-09 13:47:55'),('1','8c4506ee-d422-4df2-8737-fa46e27fc682','ruhul2235','1',NULL,0,'2015-09-16 04:04:50'),('1','96c6042b-e742-4097-8607-5663d9007b16','illias0657','1',NULL,0,'2015-09-16 04:04:41'),('1','5f403257-1baf-4a6f-953a-e2cfdd1d85e0','salam3333','1',NULL,0,'2015-09-16 04:04:32'),('1','f7d140b8-038b-4dab-9c50-c1cca6f97306','sohrab8020','1',NULL,0,'2015-09-16 04:04:23'),('1','3279731a-008d-4bf6-b125-3dd4df53ccc6','sroy6037','1',NULL,0,'2015-09-16 04:04:15'),('1','fa6afd0e-6e9e-4470-a03a-1142a96058f6','bzaman7731','1',NULL,0,'2015-09-16 04:04:06'),('1','e88a1983-0341-49f0-8d2f-429fb16fa019','bakar3993','1',NULL,0,'2015-09-16 04:03:42'),('1','e7c5fc22-c1f4-450c-98f4-fba59adec557','arden5319','1',NULL,0,'2015-09-16 04:03:31'),('1','6b562790-dd9a-4005-9f90-1b879a7d562d','sunil1226','1',NULL,0,'2015-09-16 04:03:21'),('1','27b12961-bcb7-4f72-9e90-ab49ed07b7ad','khair1811','1',NULL,0,'2015-09-16 04:03:09'),('1','30a3b72a-8628-4d30-b2f8-ecd1ac30a36b','zakir1470','1',NULL,0,'2015-09-16 04:03:01'),('1','427b1322-d8f9-4a9c-b33b-a30e53c4a6ce','mukter1469','1',NULL,0,'2015-09-16 04:02:50'),('1','bb555204-09a6-4107-b981-be884351f546','hkabir1468','1',NULL,0,'2015-09-16 04:02:42'),('1','61b2412b-dc4c-4717-a5e3-5b40da505d40','taher1467','1',NULL,0,'2015-09-16 04:02:33'),('1','6df8f35a-ccb8-431c-8025-94a3a274d6d4','taslima1466','1',NULL,0,'2015-09-16 04:02:25'),('1','cd9d68dc-da0f-4310-8ab9-c789df4fc2b9','benjur1465','1',NULL,0,'2015-09-16 04:02:17'),('1','79b233c7-098f-4a65-b657-6433f19b0ac1','murshed1464','1',NULL,0,'2015-09-16 04:02:08'),('1','52a8e644-56ca-4762-a875-5993f09798b8','muktafi1463','1',NULL,0,'2015-09-16 04:02:00'),('1','5b15bc4e-9cee-4299-ae03-ae2f94f5c768','samsed5224','1',NULL,0,'2015-09-16 04:01:52'),('1','d657c82f-54a3-4c35-b0a7-3ff4a18cef1a','mainul1461','1',NULL,0,'2015-09-16 04:01:44'),('1','836f6dea-e8fd-4a0b-a294-a65806f4dca2','shahid1460','1',NULL,0,'2015-09-16 04:01:34'),('1','943313d1-c2c4-4792-95a8-fb5190a7d8e9','saifur1459','1',NULL,0,'2015-09-16 04:01:25'),('1','5450f11e-bc24-4e3e-8e5d-72bd5f14a344','ohidul1457','1',NULL,0,'2015-09-16 04:01:15'),('1','22d88284-3e50-4f8b-bb99-e9dc4b0c3292','kaisar1456','1',NULL,0,'2015-09-16 03:59:10'),('1','1cc1eb9c-ab68-45c9-acf1-f858656d3c01','parvez1455','1',NULL,0,'2015-09-16 03:59:00'),('1','8d0646fe-f248-4799-b0fe-01985b16ce90','mamun1454','1',NULL,0,'2015-09-16 03:58:53'),('1','afb8435e-c887-4e64-b1d6-79e9a8affcf2','nawrin1453','1',NULL,0,'2015-09-16 03:58:44'),('1','1a85cdd6-c62f-4e23-99fe-67b5d13024fe','azad1452','1',NULL,0,'2015-09-16 03:58:33'),('1','97756c77-91df-43d8-b0b3-662b8f6a5ed1','munsur1451','1',NULL,0,'2015-09-16 03:58:23'),('1','fd44edcc-dc6a-44f2-959a-b2751207fcd9','amin1450','1',NULL,0,'2015-09-16 03:58:15'),('1','2c73a22e-8bc5-49ca-b9e4-83c07da3d037','ahsan1447','1',NULL,0,'2015-09-16 03:58:07'),('1','030f56b5-d09a-481a-ba19-4bafeb3aaee0','kzaman1446','1',NULL,0,'2015-09-16 03:57:59'),('1','251297f3-3693-4e8c-824e-dbe14aa337bb','tarik1445','1',NULL,0,'2015-09-16 03:57:51'),('1','df8eba0d-eeb7-47b5-ad85-ca9bee00c5e9','shirin1444','1',NULL,0,'2015-09-16 03:57:42'),('1','4f85d1ee-916a-4f21-b719-cf56e664eade','manira1443','1',NULL,0,'2015-09-16 03:57:31'),('1','c9b253c6-29f6-49d5-b06b-1abd2e360856','mostafa1442','1',NULL,0,'2015-09-16 03:57:22'),('1','11a9726d-3490-430a-9b49-4531d9c64aaf','bazlur1441','1',NULL,0,'2015-09-16 03:57:13'),('1','96f98be8-a0e4-4c54-838a-38606170776b','masud1440','1',NULL,0,'2015-09-16 03:57:02'),('1','6a93b1b4-7575-4ff9-84bc-956c1b54cf9c','shakwat1439','1',NULL,0,'2015-09-16 03:56:53'),('1','dc9c4658-36b0-476c-9007-c4454eaaf59d','masud1438','1',NULL,0,'2015-09-16 03:56:43'),('1','9a0ddc82-2926-4db4-b0ee-506b0476cfcb','mamun1437','1',NULL,0,'2015-09-16 03:56:35'),('1','9e3c6f32-b65e-40df-ae55-9f337ea3c65d','mizan1436','1',NULL,0,'2015-09-16 03:56:25'),('1','e4fc05c3-6d36-46c2-a8ee-3d6e5070e59d','munem1435','1',NULL,0,'2015-09-16 03:56:17'),('1','a38c1207-1597-4995-a47d-fdb8f3814a1f','atiq1434','1',NULL,0,'2015-09-16 03:56:09'),('1','8cf4e967-4c66-437d-861e-592ac21198ea','saifu1433','1',NULL,0,'2015-09-16 03:55:59'),('1','0c187cf3-faea-4c2d-b6c9-329c31ff8815','ansary1432','1',NULL,0,'2015-09-16 03:55:51'),('1','5d58e7cc-1cd6-4ab9-8b30-04e000ca520d','bikram1431','1',NULL,0,'2015-09-16 03:55:40'),('1','dd90c818-d2cf-432d-9d20-9a7749008294','ruhul1430','1',NULL,0,'2015-09-16 03:55:31'),('1','f5d1c583-fba6-48dc-9b23-dbcf8ffe60e0','yusuf0888','1',NULL,0,'2015-09-16 03:55:10'),('1','2fec04d1-093b-4749-85f0-b855835de89f','gias1807','1',NULL,0,'2015-09-16 03:54:59'),('1','64e1f5cb-abf9-4f8b-971b-fbed75f54b86','saifur1428','1',NULL,0,'2015-09-16 03:54:50'),('1','6421e4fa-69b7-4f95-a57a-1197fa0fa3bd','kamrul1427','1',NULL,0,'2015-09-16 03:54:37'),('1','c4e087df-af1a-480b-8142-fa6ecdd2d96e','tripura1426','1',NULL,0,'2015-10-11 12:01:50'),('1','36fe7dc5-3591-46b8-b6f5-d4af03d6ca36','sukesh1425','1',NULL,0,'2015-09-16 03:54:18'),('1','48f75519-8d95-4f49-9e47-e4bd93be73d6','salu1424','1',NULL,0,'2015-09-16 03:54:09'),('1','c30fa2c9-d43b-45de-8fae-eaa5424f2ed4','atiq1423','1',NULL,0,'2015-10-11 01:47:14'),('1','869f81a4-2be0-440e-9eb3-a63ca73f01d4','sharif1422','1',NULL,0,'2015-09-16 03:53:47'),('1','2d27e2b2-08b7-45fd-be6f-189f54c73aad','asalam1421','1',NULL,0,'2015-10-09 11:07:57'),('1','12b8ed60-e85b-4f20-bddd-de248fc37465','wazed1420','1',NULL,0,'2015-09-16 03:53:21'),('1','e2b35cd5-bca7-4cff-9fe9-9760d73c718b','saydu1419','1',NULL,0,'2015-09-16 03:53:12'),('1','a8c81578-95fe-4759-ab4f-ab24cdd31fec','muim1418','1',NULL,0,'2015-09-16 03:53:03'),('1','b2f6a653-0e56-45a9-bd52-63ca12e5870c','zakir1417','1',NULL,0,'2015-09-16 03:52:48'),('1','b4b1fbb1-7db2-4153-857d-0fabdb935703','sazzad1416','1',NULL,0,'2015-09-16 03:52:38'),('1','b3f2e9b0-f5c2-4499-9bff-2c37127f23fb','droy1415','1',NULL,0,'2015-09-16 03:52:27'),('1','793f8040-2eff-41fe-93ac-fd6da59e3baf','shadid1414','1',NULL,0,'2015-09-16 03:52:05'),('1','b159e86e-b499-4945-b838-986185e7f304','badiul1413','1',NULL,0,'2015-09-16 03:51:53'),('1','7b31dd3f-c813-43c1-9c7c-cf80c5a0d845','kaisar1412','1',NULL,0,'2015-09-16 03:51:44'),('1','d304f92a-bbe9-411d-9b47-218c95c0497b','1411','1',NULL,0,'2015-09-16 03:51:30'),('1','72325693-150a-480b-a106-ce70c92e3c0f','mamun1410','1',NULL,0,'2015-09-16 03:51:22'),('1','dc0ad99a-5d4c-46b1-8c9f-f70f9e12b760','bgayen1409','1',NULL,0,'2015-09-16 03:51:07'),('1','38d2214c-d8ee-4ec2-832e-8e29ee2f5644','hammad1408','1',NULL,0,'2015-09-16 03:50:56'),('1','76d6a564-f0b7-4220-ad63-b2f5b73cd2ef','ankhi1407','1',NULL,0,'2015-09-16 03:50:48'),('1','906ae628-6c54-48fd-b211-a25e6e775575','balam1406','1',NULL,0,'2015-09-16 03:50:40'),('1','c6146c91-7c97-49cd-b179-25348c4de1c1','patwary1405','1',NULL,0,'2015-10-11 11:03:00'),('1','f80c1996-8f11-4e6f-bbab-f4ccbe6bc4a9','shafiq1404','1',NULL,0,'2015-09-16 03:50:21'),('1','c5660378-d9bf-4d6c-903e-9b905af1072c','1403','1',NULL,0,'2015-09-16 03:50:11'),('1','40ae98bc-be00-4c23-9ff0-21c1c9e1701c','tauhid1402','1',NULL,0,'2015-09-16 03:50:00'),('1','4d30d446-1915-436b-b1c3-86208208a3c9','utpal1401','1',NULL,0,'2015-09-16 03:49:52'),('1','af01c831-67d6-4a41-99de-25b7e36dcd07','akhlaq1400','1',NULL,0,'2015-10-10 23:36:18'),('1','c33c55f3-dbc1-4413-b018-2e10c534c782','shahadat1399','1',NULL,0,'2015-09-16 03:49:31'),('1','12e31c67-7026-408d-955e-5e41d81367d7','farid1398','1',NULL,0,'2015-09-16 03:49:22'),('1','f61675a4-86cf-4012-965f-df5bc9e2dbf9','abuhena1397','1',NULL,0,'2015-10-11 01:22:15'),('1','df844e30-631e-4035-be79-09edbd5cbe69','1396','1',NULL,0,'2015-09-16 03:49:03'),('1','cbc581e7-554d-44fb-ad15-f8deba820c97','1395','1',NULL,0,'2015-09-16 03:48:50'),('1','36033228-19a3-466e-a548-ac4e9865abc5','sharif1394','1',NULL,0,'2015-09-16 03:48:40'),('1','1b5e6bfc-1b00-4fd9-ae01-71d556707d80','khaled1393','1',NULL,0,'2015-10-03 15:32:32'),('1','1f255432-d297-4201-84cb-75b071130982','biswajit1392','1',NULL,0,'2015-09-16 03:48:22'),('1','611230ac-d238-4617-b49b-32c725bfe6cd','mizan1391','1',NULL,0,'2015-10-12 00:21:59'),('1','005fcf13-1bec-4d2d-9e30-1e2cea7f3577','rawnak1390','1',NULL,0,'2015-09-16 03:48:01'),('1','172b39c5-f8ba-4c67-b2b5-faafaaedfb1b','ahmed1384','1',NULL,0,'2015-10-09 00:19:37'),('1','de2728bd-eeb3-4975-8d87-5ce6f0defc2b','1383','1',NULL,0,'2015-09-16 03:46:52'),('1','7d15e240-bdee-44df-8900-9ce1453c52eb','sahela1382','1',NULL,0,'2015-09-16 03:46:42'),('1','7e94336f-e588-4a89-bce6-2db6a9150b55','dipiyara1381','1',NULL,0,'2015-09-16 03:46:32'),('1','deddd043-a520-4012-8057-f331a0c08fbf','rabbi1380','1',NULL,0,'2015-09-16 03:46:23'),('1','9cb59a86-bfda-4b33-bae0-f0b7ed68135a','mamun1379','1',NULL,0,'2015-09-16 03:46:14'),('1','eaf5dea5-26c3-4cee-8c28-fa767b682ed3','1378','1',NULL,0,'2015-09-16 03:46:04'),('1','6380882d-6503-45ab-b0d9-d7acee70d8b4','mahfuz1377','1',NULL,0,'2015-09-16 03:45:53'),('1','b4c7cd31-91fe-4fb9-a2d7-45f36361ab01','akter1376','1',NULL,0,'2015-09-16 03:45:43'),('1','a12d6022-ad65-467c-b801-0e2566636531','malek1375','1',NULL,0,'2015-09-16 03:45:30'),('1','3d38177a-34d1-41df-b371-a1b4d03d1678','rana1374','1',NULL,0,'2015-09-16 03:45:22'),('1','cc0675e1-a187-43a2-baa7-ca73883d4c2b','shahin1373','1',NULL,0,'2015-09-16 03:45:12'),('1','608cce04-99ea-4f8b-9afa-9b337dc92a35','kamrul1372','1',NULL,0,'2015-09-16 03:45:02'),('1','2b73677a-c93b-4609-b130-693ac5c5208f','madan1371','1',NULL,0,'2015-09-16 03:44:47'),('1','b9831e8a-c120-4912-8410-f692ac536918','pravash1370','1',NULL,0,'2015-09-16 03:44:15'),('1','f294d369-1b18-48f5-9657-f15db593ba23','sarwar1369','1',NULL,0,'2015-09-16 03:42:34'),('1','2d2b2ab9-e0b3-445a-a406-04de07b077b9','shadon1368','1',NULL,0,'2015-09-16 03:42:24'),('1','49282232-93da-430f-bea3-262e8e526ca3','mrinal1367','1',NULL,0,'2015-09-16 03:42:15'),('1','f923745a-1edd-4eb2-af28-5a5d900a6783','asad1366','1',NULL,0,'2015-09-16 03:42:03'),('1','afdea65a-6a99-46bd-a27b-727f68b4bb4c','farhana1365','1',NULL,0,'2015-09-16 03:41:53'),('1','8b426dd4-ca46-428d-acca-a8aa0ec2b4e4','taufiq1364','1',NULL,0,'2015-09-16 03:41:34'),('1','5c317549-8dea-45d6-baf8-e3a6314b7c05','molla1363','1',NULL,0,'2015-09-16 03:41:24'),('1','6355a70d-67ac-406b-8596-d334dbc8ba62','aziz1362','1',NULL,0,'2015-09-16 03:41:14'),('1','ef27a52c-7153-4c1c-8e83-3006967ad5a1','targhib1361','1',NULL,0,'2015-09-16 03:41:05'),('1','142413fe-6684-4d60-b894-7f4bbacd541e','imtiaz1360','1',NULL,0,'2015-09-16 03:40:56'),('1','8fe31760-3617-435b-ae14-f7a0ec5155bb','malek1350','1',NULL,0,'2015-09-16 03:40:42'),('1','d3d7d2e5-2dc4-44ca-a268-c7feb59541a7','arif1349','1',NULL,0,'2015-09-16 03:40:33'),('1','30e2f396-5734-4147-9bdc-982a486babcb','rumana1348','1',NULL,0,'2015-09-16 03:40:22'),('1','f6c5a269-53bc-49fa-a307-d8e3acf08ea0','sabrina1347','1',NULL,0,'2015-09-16 03:40:12'),('1','5549a71b-a553-4c4c-8b98-44ec47badb88','ruhul1346','1',NULL,0,'2015-09-16 03:39:59'),('1','ee49732a-1b61-4e4b-ad7c-e18e8ec50f97','kamrul1345','1',NULL,0,'2015-09-16 03:39:50'),('1','4296caee-0087-4b76-8982-e7395c03a1ec','nisar1344','1',NULL,0,'2015-09-16 03:39:40'),('1','e3676988-b849-41cb-a836-9578542ebb9d','jakir1343','1',NULL,0,'2015-09-16 03:39:30'),('1','e657c087-1c4c-4e0b-a938-e5c30e445fc5','sajjad1342','1',NULL,0,'2015-09-16 03:39:16'),('1','70983281-19d5-4f1c-ae53-102e0d0d2f56','khorshed1341','1',NULL,0,'2015-09-16 03:38:33'),('1','4ce2fcee-71fe-4a5b-90d4-bd07d3954019','kzaman1340','1',NULL,0,'2015-09-16 03:38:24'),('1','6bd7a6f6-4e68-4037-a026-c68297149f21','bikash1339','1',NULL,0,'2015-09-16 03:38:15'),('1','ab0d26e6-b01c-42fb-ab9e-404442cfe9e5','parvez1338','1',NULL,0,'2015-09-16 03:38:03'),('1','e7d965bf-6afc-4010-8b72-be7e4e438dfb','zillur1337','1',NULL,0,'2015-09-16 03:37:50'),('1','fd8fbe66-78eb-4dfc-9a59-988b92efbeca','mannan1336','1',NULL,0,'2015-09-16 03:37:40'),('1','42074fdd-77a8-4721-8b7a-793af462608e','hasib1335','1',NULL,0,'2015-09-16 03:37:31'),('1','f1a380b4-b315-493a-8c47-ee6cd2d65870','shahin1334','1',NULL,0,'2015-09-16 03:37:19'),('1','f265d8aa-973c-4ade-9637-9a8d1cd8212f','jayonta1333','1',NULL,0,'2015-09-16 03:37:08'),('1','d506c91b-997e-45ff-8dd5-2da89af749d1','reza1332','1',NULL,0,'2015-09-16 03:36:58'),('1','f05c10e3-1f34-4b9d-810e-273c0ec68139','snewaz1331','1',NULL,0,'2015-09-16 03:36:46'),('1','c7f1f678-90ca-4c14-ba63-eae02684c6fa','asif1330','1',NULL,0,'2015-09-16 03:36:33'),('1','cbb1a328-3708-43da-8c20-49e252811513','samit1320','1',NULL,0,'2015-09-16 03:36:12'),('1','1cd92b53-09b4-4081-a707-41b622d7c44b','shafiq1319','1',NULL,0,'2015-09-16 03:34:44'),('1','8d8d0f45-429c-4de5-afff-d87a96e7a5f8','shahid1318','1',NULL,0,'2015-09-16 03:34:32'),('1','f1d0a78e-6aa3-4510-879a-16265e013c89','kaisar1317','1',NULL,0,'2015-09-16 03:34:00'),('1','a938435f-81c3-456f-92bc-c7d901523497','msalam1316','1',NULL,0,'2015-09-16 03:33:51'),('1','1f3cebfe-b227-43e8-b3d5-059cb785e4dd','kamal1315','1',NULL,0,'2015-09-16 03:33:41'),('1','b635b062-049d-4ad3-9e9e-7e439f5e2284','mahbuba1314','1',NULL,0,'2015-09-16 03:33:31'),('1','76a8bc0d-128a-45ea-a90a-fc9a86876ad4','mahmud1313','1',NULL,0,'2015-09-16 03:33:21'),('1','8159b777-982e-45bc-ae56-66608d35a665','masud1312','1',NULL,0,'2015-09-16 03:33:08'),('1','b85ca9e8-f078-408b-a895-9cf583c157d9','anwar1311','1',NULL,0,'2015-09-16 03:32:52'),('1','ed150699-d199-430e-8af5-8367cf51f5b4','babar1310','1',NULL,0,'2015-09-16 03:32:43'),('1','989dc730-596e-43dd-b3c5-f2308c770c5d','bahar1309','1',NULL,0,'2015-09-16 03:32:28'),('1','bb0ecd35-c977-4073-a182-24aa5ba0aa6c','matiul1308','1',NULL,0,'2015-09-16 03:32:15'),('1','cc024cf1-015e-49e9-a0b3-166968f543f0','basir1307','1',NULL,0,'2015-09-16 03:32:05'),('1','610f3c92-b5fe-4373-8651-eeef349e781e','saidur1306','1',NULL,0,'2015-09-16 03:31:55'),('1','91ac019a-6d19-42d0-9e99-de4f50b00583','saidul1305','1',NULL,0,'2015-09-16 03:31:43'),('1','5eb2a10c-3f65-4e6c-8ddc-0166840280a6','wali1304','1',NULL,0,'2015-09-16 03:31:30'),('1','bf890b1a-2cfd-4d25-956c-395364b26a39','nizam1303','1',NULL,0,'2015-09-16 03:31:21'),('1','0e2bd7da-7aeb-4ba4-a737-7e7d922646ba','shamim1302','1',NULL,0,'2015-09-16 03:31:02'),('1','58c28e17-d7b6-4a78-8fff-f035d24631bb','mahmud1301','1',NULL,0,'2015-09-16 03:30:51'),('1','ac621560-0bf9-4e2f-91eb-ff94a1edccc5','zulfikar1300','1',NULL,0,'2015-09-16 03:30:41'),('1','92c8ae67-47ce-444b-ad38-8a9903dfdc78','diptimoy1294','1',NULL,0,'2015-09-16 03:30:29'),('1','37395891-4b23-474e-8d2b-0116474dfcd4','nmc1293','1',NULL,0,'2015-09-16 03:30:18'),('1','757f6930-d998-4a14-885f-4ad6f7b0dccb','pradip1292','1',NULL,0,'2015-09-16 03:30:09'),('1','48432d70-d2e4-46b8-ad85-e768f3da6748','siraj1291','1',NULL,0,'2015-09-16 03:30:00'),('1','b55a46f4-baf4-4f57-9b5d-229866f8e5f5','moshafaf1290','1',NULL,0,'2015-09-16 03:29:46'),('1','c2b24591-18c6-4d0d-bd46-fadff8eab4cd','1289','1',NULL,0,'2015-09-16 03:29:30'),('1','46dad280-2e17-4a3e-bb37-93db7801652d','mizan1288','1',NULL,0,'2015-09-16 03:29:19'),('1','29777988-1355-475b-b6f5-050bf846c037','mani1287','1',NULL,0,'2015-09-16 03:29:06'),('1','c3d7ff56-4dc9-493f-aa62-7a59a4907c51','habib1286','1',NULL,0,'2015-09-16 03:28:58'),('1','8a0078de-5588-4218-9f08-ff640adba987','ratan1285','1',NULL,0,'2015-09-16 03:28:45'),('1','20c8d1a8-6aec-46af-ac9d-905743f16d2e','mostafa1284','1',NULL,0,'2015-09-16 03:28:35'),('1','7cf22ae3-735f-4830-943d-f3d91e681742','sunil1283','1',NULL,0,'2015-10-11 04:46:24'),('1','029faa53-dd1d-41f6-b0cf-0e3acb0b19f4','wzaman1282','1',NULL,0,'2015-09-16 03:28:05'),('1','5dd1879a-7101-4249-acf9-94c2e236cfa9','ashraf1281','1',NULL,0,'2015-09-16 03:27:55'),('1','dec52f28-132b-4f34-8595-b3a9a9e13028','elias1280','1',NULL,0,'2015-09-16 03:27:46'),('1','9a801fda-6e4a-49f9-b7eb-3e1fc98ce84f','mafiz1279','1',NULL,0,'2015-10-10 13:02:27'),('1','37a8efc2-d91e-4ab5-9d1f-2be71ff5bf0c','jahangir1278','1',NULL,0,'2015-09-16 03:27:22'),('1','da867286-2833-4903-8298-be899ad7e9c6','azam1277','1',NULL,0,'2015-09-16 03:27:10'),('1','9654a14f-336b-4d21-a3c8-244f3ecb0d56','kalam1276','1',NULL,0,'2015-09-16 03:26:55'),('1','d5785299-8203-42aa-8454-badcc84c3f44','jagadis1275','1',NULL,0,'2015-09-16 03:26:43'),('1','17e244cd-e029-4322-83c1-14f0b446db71','sharif1274','1',NULL,0,'2015-09-16 03:26:33'),('1','6819a4af-1b50-4dd6-8fd2-c911fd1e89ce','bikash1273','1',NULL,0,'2015-09-16 03:26:24'),('1','ea281801-224e-47da-a192-0e8cfb51a28e','riaz1272','1',NULL,0,'2015-09-16 03:26:14'),('1','f4aef806-7e3a-4f5a-b30e-91054f11eaf6','farul1271','1',NULL,0,'2015-09-16 03:26:05'),('1','b479a585-c88d-4ba8-87dc-3b2b1468cb7a','sabbir1270','1',NULL,0,'2015-09-16 03:25:25'),('1','6fe61307-35c5-48bc-9292-1e2963b4ac53','zulfikar1269','1',NULL,0,'2015-09-16 03:25:12'),('1','0a6e474c-7318-410d-8589-cf241ca1558c','wahab1267','1',NULL,0,'2015-10-11 02:05:32'),('1','4c8ec24d-81de-4bc1-9c54-43d162aee85e','azam1268','1',NULL,0,'2015-09-16 03:25:03'),('1','d4815cec-b15d-43ed-bd0c-6c755e01cd90','ashraf1266','1',NULL,0,'2015-09-16 03:04:55'),('1','98a107d4-64f2-4729-989c-485eed6a5f0a','bidyut1264','1',NULL,0,'2015-09-16 03:04:45'),('1','92389aef-3356-4726-bd6d-ae97e1f4fe97','zahurul1263','1',NULL,0,'2015-09-16 03:04:36'),('1','2b609c62-18cf-4a0d-b502-68269027ce1e','taimur1262','1',NULL,0,'2015-09-16 03:04:26'),('1','fb3776b1-d501-44be-be60-d749fc07bc56','nesar1261','1',NULL,0,'2015-09-16 03:04:15'),('1','c7dea1f2-bb37-4b52-83cb-ef39608ac972','aslam1260','1',NULL,0,'2015-09-16 03:04:04'),('1','60e9bab1-df65-4448-8dd2-00cc6b23e312','hannan1259','1',NULL,0,'2015-09-16 03:03:51'),('1','1894ba1c-4638-42ed-b7e5-772950346545','hafiz1258','1',NULL,0,'2015-09-16 03:03:39'),('1','cfa750ce-0ebe-40a4-ac3c-420ca463a4cf','manjir1257','1',NULL,0,'2015-09-16 02:59:30'),('1','1398bf06-288a-4cc6-8832-57440c13f0ad','binoy1256','1',NULL,0,'2015-09-16 02:59:11'),('1','e28c2ae4-2841-4dc2-8c6a-49d04a497d70','ahsan1254','1',NULL,0,'2015-09-16 02:58:45'),('1','0023455d-c883-4815-95c5-b3125b8162e4','amin1253','1',NULL,0,'2015-09-16 02:58:19'),('1','44bb09aa-714c-43e6-84e5-65d045512bca','mannan1252','1',NULL,0,'2015-09-16 02:58:03'),('1','d5c5e3f6-688d-489c-9d9c-773fd3d866a5','hkabir1250','1',NULL,0,'2015-09-16 02:57:54'),('1','cc700fc9-8bf2-4291-b3ed-608425cad8c9','shibly1249','1',NULL,0,'2015-09-16 02:57:39'),('1','5eec1301-1f74-41a2-b6f6-871f1ff9a20a','nasim1248','1',NULL,0,'2015-10-07 17:03:54'),('1','8f76e947-2d6c-4119-b0e7-621caa695bb5','kalam1247','1',NULL,0,'2015-09-16 02:57:16'),('1','0e050b00-65ae-4263-ace2-a47c650147b6','sayed1246','1',NULL,0,'2015-09-16 02:57:03'),('1','ff9ffc6a-1f2f-4aa7-a1ea-2a03f4765cce','nkhan1243','1',NULL,0,'2015-09-16 02:56:54'),('1','1ccb507f-dffb-4cb7-a9a6-caccc4fcae16','halim1242','1',NULL,0,'2015-09-16 02:56:45'),('1','d64ea459-eaa1-443e-b1c9-68b23a5832f1','mamun1241','1',NULL,0,'2015-09-16 02:56:35'),('1','a98470a2-9420-4c75-b985-cfc04478ebfc','bari1240','1',NULL,0,'2015-09-16 02:56:25'),('1','95eb8ff6-2a5a-4802-ba10-4f67546f653b','msarkar1236','1',NULL,0,'2015-09-16 02:56:16'),('1','c845f693-d924-4297-bb70-97c872b8fe93','farhad1235','1',NULL,0,'2015-09-16 02:56:05'),('1','3a46c881-6145-4085-b2e7-82e46f8923d9','shahid1234','1',NULL,0,'2015-09-16 02:55:55'),('1','37dc56e4-993a-4e9c-9199-159e753cd0fd','aashraf1233','1',NULL,0,'2015-10-13 17:08:23'),('1','f5a36fb8-6b05-4f2b-a30c-e61744da2b44','pradip1232','1',NULL,0,'2015-09-16 02:55:35'),('1','1a28affb-8cdc-4e06-8f36-9c4c648adfcc','rahim1231','1',NULL,0,'2015-09-16 02:55:26'),('1','0470d62d-a250-47eb-bc66-3a6a306b5e4b','nasir1230','1',NULL,0,'2015-09-16 02:55:16'),('1','d2e80231-33c1-4e2f-9b10-930f258a029f','agafur1229','1',NULL,0,'2015-09-16 02:55:05'),('1','57c27772-6d43-441d-bde5-5f4f2b78fa3a','gopi1228','1',NULL,0,'2015-09-16 02:54:54'),('1','b0f78319-c16c-43a8-b9cf-62340a1336ad','awal1227','1',NULL,0,'2015-09-16 02:54:45'),('1','d46b4e47-e1e9-4fa3-aa9c-5b6f0d73d09b','mostafa1226','1',NULL,0,'2015-09-16 02:54:36'),('1','fb759d17-76b7-4614-9173-d9d1a323d591','utpal1225','1',NULL,0,'2015-09-16 02:54:23'),('1','499259ae-98ff-4d46-9c55-5ff889e11e1c','fazlul1224','1',NULL,0,'2015-09-16 02:54:13'),('1','6c7a5030-7095-4b24-852c-8251a7bc5f53','jainal1223','1',NULL,0,'2015-09-16 02:54:00'),('1','63484d00-6e3b-4139-9337-d6b2d20bb6f3','sukumar1222','1',NULL,0,'2015-09-16 02:53:51'),('1','8ae36d99-5682-47a5-bc01-0689b7555d42','sjahan1220','1',NULL,0,'2015-09-16 02:53:40'),('1','7cfca810-142d-4af9-9907-cea7c1f33e16','masud1219','1',NULL,0,'2015-09-16 02:53:29'),('1','5ca46c0a-63e4-4e79-91d9-331c8b2e7fd3','azaman1218','1',NULL,0,'2015-09-16 02:53:17'),('1','77b12e13-a606-4952-9041-a276f9b60b79','latif1217','1',NULL,0,'2015-09-16 02:53:07'),('1','9581b358-284a-451a-ba4a-31c8af262047','khayer1216','1',NULL,0,'2015-09-16 02:52:56'),('1','9fffea88-1181-4e96-9be7-ef3596397663','masum1215','1',NULL,0,'2015-09-16 02:52:44'),('1','ad0d8550-f679-424a-b94b-449dde78fa05','asalam1214','1',NULL,0,'2015-09-16 02:52:34'),('1','f93f0278-3474-4a70-b93f-dc6df47dd5ea','mani1213','1',NULL,0,'2015-09-16 02:52:24'),('1','1bc09354-c339-4fd7-b0b9-c668752a0980','tajul1212','1',NULL,0,'2015-09-16 02:52:14'),('1','820d016b-1760-410f-a9a0-9f5bb63e3a0c','ayub1211','1',NULL,0,'2015-09-16 02:52:05'),('1','1b1703cb-2111-4d13-b807-d6d3bf7dde07','msarkar1210','1',NULL,0,'2015-09-16 02:51:55'),('1','d9e44ce7-7f46-4883-9396-ffaee4887e8f','ruhul1209','1',NULL,0,'2015-09-16 02:51:45'),('1','730c410d-0992-40ab-bf15-2835e35a3b57','subal1208','1',NULL,0,'2015-09-16 02:51:31'),('1','da6e2958-0166-456f-8a03-8981f09d9e59','taleb7177','1',NULL,0,'2015-10-05 14:11:51'),('1','8d5c5819-bd93-428c-b705-eaaca8e8ed6a','nazim1206','1',NULL,0,'2015-09-16 02:51:08'),('1','50f69868-ad22-47a0-97b4-f8ba9a0bb4a5','rezaul1205','1',NULL,0,'2015-09-16 02:50:58'),('1','6e860d1e-bc3a-4982-b1ef-acb22399dd2f','pravash1204','1',NULL,0,'2015-09-16 02:48:26'),('1','4f478548-f912-4a56-a968-ddd2cd94c927','belayet1203','1',NULL,0,'2015-09-16 02:48:14'),('1','3d0ade91-4268-4c47-8e5f-395542a9a164','amin1202','1',NULL,0,'2015-09-16 02:48:00'),('1','ad7b5513-123c-45d1-a7a0-cd676ea3f0a1','nizam1201','1',NULL,0,'2015-09-16 02:47:46'),('1','a443f13f-6228-4129-bda1-2ea6bdea3ab4','ansar','1',NULL,0,'2015-09-16 02:47:30'),('1','322a1f28-9525-49d1-bc85-c7eba7ab89d7','rezaul1198','1',NULL,0,'2015-09-16 02:47:17'),('1','53a3568c-42f7-4272-a87b-189ceb3729b2','kuddus1197','1',NULL,0,'2015-09-16 02:47:03'),('1','ec0694c5-a35c-473a-82d1-7cb0696fbf00','kamales1196','1',NULL,0,'2015-09-16 02:46:53'),('1','817caa1b-5cfc-4f7d-93b3-2c0085fa88be','anwar1195','1',NULL,0,'2015-09-16 02:45:57'),('1','337fb613-737f-465f-a4b6-6dab30d3eccc','sanjib1194','1',NULL,0,'2015-09-16 02:45:41'),('1','b89f494f-41e9-4eb8-835b-5ac6055302dd','taskin1193','1',NULL,0,'2015-09-16 02:45:27'),('1','4b89bf29-f7e7-4d8f-ab23-66a1997f286a','saiful1192','1',NULL,0,'2015-09-16 02:45:18'),('1','59db41b2-bd31-47f7-a19e-cbe009fed888','mahbub1191','1',NULL,0,'2015-09-16 02:45:07'),('1','af6929c6-ba71-4953-87cf-559715d7b62e','azam1190','1',NULL,0,'2015-09-16 02:44:54'),('1','f5cbd5b6-88e0-4a4f-8458-5fd2c66ad4fd','nazim1185','1',NULL,0,'2015-09-16 02:44:24'),('1','debb7933-7b20-484a-a7ca-8bd4bd4552bf','rauf1184','1',NULL,0,'2015-09-16 02:44:06'),('1','2ac8cbb4-9ca4-4a60-a49b-18b4ecf6769b','ajit1183','1',NULL,0,'2015-09-16 02:43:48'),('1','4af57306-24d3-4d89-ad78-3c2849926095','sahab1182','1',NULL,0,'2015-09-16 02:43:38'),('1','961dab19-518f-414f-8858-99237c25ced3','zubair1181','1',NULL,0,'2015-09-16 02:43:28'),('1','17911201-2054-4682-aac0-e47c884e386b','mahbub1180','1',NULL,0,'2015-09-16 02:43:20'),('1','76d01789-7096-4082-b62b-44352bee7a40','riaz','1',NULL,0,'2015-09-16 02:43:06'),('1','a6fc241a-6d0b-4b43-9e4d-52122f5944d8','sjahan1178','1',NULL,0,'2015-09-16 02:42:56'),('1','64beb830-73f1-4f25-952f-722b0b7b7839','jagadis1177','1',NULL,0,'2015-09-16 02:42:44'),('1','e028960b-38f3-48c4-a289-000b33056baa','fakhrul1176','1',NULL,0,'2015-09-16 02:42:13'),('1','960ed075-f87d-4a70-9c02-ea5f674e3096','akanda1175','1',NULL,0,'2015-09-16 02:41:59'),('1','b8df2f1e-0a97-415b-8bb8-11505a17f20a','yousuf1174','1',NULL,0,'2015-09-16 02:41:50'),('1','c8949f81-69f7-4e97-a539-7156399f6c77','mokaddem1173','1',NULL,0,'2015-09-16 02:41:41'),('1','a62df10d-c5d4-4f40-af99-30c24b199284','taurit1172','1',NULL,0,'2015-09-16 02:41:28'),('1','96d49831-f280-4e18-81a7-3200103481b0','zanam1171','1',NULL,0,'2015-09-16 02:41:17'),('1','6e4319ae-0569-4a26-9ba7-438cbcbbd47c','asir1170','1',NULL,0,'2015-09-16 02:41:06'),('1','eeb56437-a995-4540-b2fd-89628c181ca4','habib1169','1',NULL,0,'2015-09-16 02:40:57'),('1','8d22ad70-721e-4993-8389-100e2ded05fb','jainal1168','1',NULL,0,'2015-09-16 02:40:47'),('1','f92f5c51-8b8c-4528-9f6d-97b145635657','ataur1167','1',NULL,0,'2015-09-16 02:40:36'),('1','5d8f8bbb-fb7a-435a-a948-1be36fe121f2','razzak1166','1',NULL,0,'2015-09-16 02:40:15'),('1','36521f86-a703-42a5-b3db-5ecb38a66200','fazal1165','1',NULL,0,'2015-09-16 02:40:04'),('1','e79bdd68-14ba-48d6-87e0-ac0277e1e2ab','kainat1164','1',NULL,0,'2015-09-16 02:39:53'),('1','6f3a0f26-840a-4909-832b-3520befa97f2','matin1163','1',NULL,0,'2015-09-16 02:39:43'),('1','d17e415b-6a79-47af-b364-5f7232c003bc','asad1162','1',NULL,0,'2015-09-16 02:39:26'),('1','51733c02-5749-4fc6-802f-0ad25198d4d4','rafiq1161','1',NULL,0,'2015-09-16 02:39:18'),('1','4f144770-afdc-4ade-9d42-19b68c8e5ca9','moshiur1160','1',NULL,0,'2015-09-16 02:39:07'),('1','b13b49d1-7122-43e3-ac67-8bba7f19bb81','golzar1152','1',NULL,0,'2015-09-16 02:38:56'),('1','5d91288d-7161-48d8-af38-fdaa747f3f22','bodiar1151','1',NULL,0,'2015-09-16 02:38:45'),('1','1ee9f0fd-d0c6-4a01-b759-9eb0fb591522','mkader1150','1',NULL,0,'2015-09-16 02:38:35'),('1','563e92f0-770e-4e8b-8dd3-f26c8c715772','tofael1141','1',NULL,0,'2015-09-16 02:38:18'),('1','221bfd0c-c60b-472b-aa56-7bb13650359f','sharif1139','1',NULL,0,'2015-09-16 02:38:06'),('1','f910fc9b-e271-48ec-8133-319feda18411','ferdus1137','1',NULL,0,'2015-09-16 02:37:55'),('1','53b28ca5-826b-45fc-bf4e-3cf006f0bdbe','malek1135','1',NULL,0,'2015-09-16 02:37:43'),('1','1368b18f-7c66-4ace-9673-74c93c3944f5','mushfiq1134','1',NULL,0,'2015-09-16 02:37:33'),('1','4544d0af-9270-462b-8a74-18b4bdaf8a36','prabal1133','1',NULL,0,'2015-09-16 02:37:21'),('1','2defbb2a-5ea8-48c8-bf07-ca7f42195adc','ashraf1131','1',NULL,0,'2015-09-16 02:37:12'),('1','8eb6a854-6238-40ab-8ed7-5bd2f3cce5b4','snewaj1130','1',NULL,0,'2015-09-16 02:36:51'),('1','b069807b-7a50-4ac8-948c-4230564d163c','kasir1129','1',NULL,0,'2015-09-16 02:36:40'),('1','865898de-434c-490a-a5e6-598d747b3bb9','monjur1128','1',NULL,0,'2015-09-16 02:36:26'),('1','8f02a3b3-c0d7-42c4-9f6b-09e98485b255','ataul1127','1',NULL,0,'2015-09-16 02:36:16'),('1','1c09e775-62fb-46fe-ab9a-e12948c06b11','salam1126','1',NULL,0,'2015-09-16 02:36:06'),('1','5e991057-ec95-40b3-9928-8a8b2cee1c07','salam5200','1',NULL,0,'2015-09-16 02:35:56'),('1','2f746c00-875a-4868-bb16-b4c73261f72d','szaman1124','1',NULL,0,'2015-09-16 02:35:43'),('1','04fd9ecb-6555-473b-9899-e4c3d24eb3b8','jafar1123','1',NULL,0,'2015-09-16 02:35:30'),('1','75d5be48-fe0c-44e3-b701-432038c24e0a','habib5007','1',NULL,0,'2015-09-16 02:35:17'),('1','89ac6c05-b013-431f-a8ac-c9296299af73','monsur1120','1',NULL,0,'2015-09-16 02:35:07'),('1','263c4019-f8c3-4399-a21f-fce071cdea41','mizan1118','1',NULL,0,'2015-10-03 15:36:29'),('1','e8b5e1e7-0e48-45ca-b5b7-b340ad10ed3e','sjahan1117','1',NULL,0,'2015-09-16 02:34:45'),('1','dfb7aacc-3f28-4cdf-9752-21922a599cb6','kuddus1114','1',NULL,0,'2015-09-16 02:34:35'),('1','345a0593-9ddd-4c04-ace4-bc585b6d20fc','faruk1111','1',NULL,0,'2015-09-16 02:34:24'),('1','d3904bbc-02fb-4dbe-aaef-7c8a942d15cf','prodip1110','1',NULL,0,'2015-09-16 02:34:04'),('1','4fd3677e-f05c-4c86-b58e-f5f72d41661e','ataur1108','1',NULL,0,'2015-09-16 02:33:52'),('1','30f937c8-50a8-4748-966b-9cbe47d34766','mahfuz1107','1',NULL,0,'2015-09-16 02:33:35'),('1','71c9aee3-b484-44b0-8412-505fa15a78fe','husnul1106','1',NULL,0,'2015-09-16 02:33:23'),('1','60118886-2402-44ab-9897-d3027a11c545','shafiq1105','1',NULL,0,'2015-09-16 02:33:11'),('1','7c0fcf99-c1ef-4912-b879-8fa32bd0e990','gias1101','1',NULL,0,'2015-09-16 02:32:52'),('1','542f92f0-88df-4b0b-bda9-a5e08087f1df','dipak1098','1',NULL,0,'2015-09-16 02:32:13'),('1','c83f6cde-02e5-40ac-80bb-8a118af0e796','harun1103','1',NULL,0,'2015-09-16 02:32:01'),('1','1bf7a730-aaad-4de1-8cfd-f2eb55371447','mosaddek1099','1',NULL,0,'2015-09-16 02:31:51'),('1','911adc26-b00d-4124-a049-84a172441a3f','rabbani1097','1',NULL,0,'2015-09-16 02:31:37'),('1','f0f1fda3-a2bb-43a8-b42a-6e92f6f83de1','harun1093','1',NULL,0,'2015-09-16 02:31:26'),('1','73775a2b-13c9-4ce2-9ba5-ebd4a0e7924c','mamshad1092','1',NULL,0,'2015-09-16 02:31:16'),('1','c3bf3dd0-7386-43d0-8fa2-99b409d78e5c','atiq1091','1',NULL,0,'2015-09-16 02:31:04'),('1','1ec8a47c-0d5d-47a9-8697-bdbd11b931ab','moazzem1089','1',NULL,0,'2015-09-16 02:30:55'),('1','b932a5f5-5bca-4cc7-bded-e3ce9dc6ddc6','mansur1088','1',NULL,0,'2015-09-16 02:30:42'),('1','581d3ab9-c7fb-49d9-bbaa-3170a8ea4ca6','tamal1086','1',NULL,0,'2015-09-16 02:30:31'),('1','25295142-deb2-4469-9ace-abe698283ade','shahid1083','1',NULL,0,'2015-09-16 02:30:21'),('1','648e0b87-43dc-4543-b8b3-a5437a18b3da','gfachw1082','1',NULL,0,'2015-09-16 02:30:06'),('1','d5e96692-c0fd-4ede-bedb-5d660a2b4d36','moin1081','1',NULL,0,'2015-09-16 02:29:52'),('1','b301cdd1-e6d4-4fdb-a527-566706190b4f','moyasir1080','1',NULL,0,'2015-09-16 02:29:38'),('1','bb3dd12d-4ace-4e65-aa83-ea147cc6d223','maudud1074','1',NULL,0,'2015-09-16 02:29:23'),('1','77282bca-ae92-4bfe-b747-91761d493302','ashok1073','1',NULL,0,'2015-09-16 02:29:08'),('1','fa4b7156-47fb-4521-b459-2c0a0041fdf2','kabir1072','1',NULL,0,'2015-09-16 02:24:47'),('1','085c057d-01e9-4261-a7ec-e588b93355ab','rafiq1071','1',NULL,0,'2015-09-16 14:27:20'),('1','655887d8-6498-4838-bfca-0221897267bf','aminul1070','1',NULL,0,'2015-09-16 02:24:21'),('1','b4420806-7ab0-4a86-8fda-3a546ce33687','aziz1068','1',NULL,0,'2015-09-16 14:27:40'),('1','1a531dde-aba3-472b-9206-67085428bb62','kabir1067','1',NULL,0,'2015-09-16 02:23:55'),('1','6581e247-f238-4816-b69e-54cbf176c039','swapon1065','1',NULL,0,'2015-09-16 02:23:38'),('1','f0e2fc17-70ed-40e1-aa20-aba52e99060d','mizan1064','1',NULL,0,'2015-10-03 15:37:16'),('1','903433b5-a16d-41ee-89f0-0459aa45897a','asad1061','1',NULL,0,'2015-09-16 02:23:04'),('1','5209699b-a4cb-4ffb-89b3-1cd16ec06ad9','snewaj1058','1',NULL,0,'2015-09-16 02:22:45'),('1','fa75c942-6c9e-41d2-8a26-a3b0a2693a4c','taufiq1055','1',NULL,0,'2015-10-13 17:13:55'),('1','43150722-f57d-4d70-b1f1-c414a6340474','support','1',NULL,0,'2015-10-13 18:28:32'),('1','4a8b2833-bc3d-44ea-857a-01c9dbc55870','official','1',NULL,0,'2015-10-07 17:39:54'),('1','a7fca99f-caa5-4caf-b17f-d8cb52d5f0b6','member','1',NULL,0,'2015-10-06 13:18:12'),('1','67fc30b5-5e55-41ad-8660-9bb40506c0ed','admin','1',NULL,0,'2015-10-12 00:18:15'),('1','da823522-642d-4c6c-b12e-fd7864310c2d','skumar0191','1',NULL,0,'2015-09-16 04:09:11'),('1','25d28d00-1848-4ffd-a0e3-5d61ca6ce4a6','asalam1059','1',NULL,0,'2015-09-16 04:09:23'),('1','b3dd82fa-1358-4d0f-9f3a-8be02a95aeae','mofiz0890','1',NULL,0,'2015-09-16 04:09:34'),('1','061bbac2-ffb8-497b-abf4-d04521bb88ae','prodip9855','1',NULL,0,'2015-09-16 04:09:42'),('1','1f0c1a48-9c20-450e-8480-ad9d195cc50a','gnafar9135','1',NULL,0,'2015-09-16 04:09:52'),('1','dfde6e4e-97df-4f96-bdf2-12bd0f2d9c31','baset8000','1',NULL,0,'2015-09-16 04:10:01'),('1','a1a3acf6-c4df-470e-8d04-6fb54bc546d4','mafiz1814','1',NULL,0,'2015-09-16 04:10:09'),('1','d027c944-ab9b-416f-9d53-cb732ff347fb','abdul2302','1',NULL,0,'2015-09-16 04:10:21'),('1','463bd284-7723-4086-bb9c-bbeee18ba1a0','isho3080','1',NULL,0,'2015-09-16 04:10:32'),('1','00452820-385e-4cca-9b43-5b180ff6152c','zakir0126','1',NULL,0,'2015-10-05 12:58:11'),('1','799c4263-edf8-46be-9a19-83f3e08be8fc','nurul4338','1',NULL,0,'2015-09-16 04:11:00'),('1','3b25cc34-0fb4-49ef-98a3-a299f1a1f75e','montos3355','1',NULL,0,'2015-09-16 04:11:11'),('1','c6f7b3f0-bf59-456b-bd2d-53c7c6152090','zhaq8324','1',NULL,0,'2015-09-16 04:11:26'),('1','87a4152f-8f34-4098-b876-4cf8ef6efc75','sislam7961','1',NULL,0,'2015-09-16 04:11:34'),('1','7dc3f0ba-1c4d-4fe2-8b14-501c6fc77b05','sislam4410','1',NULL,0,'2015-09-16 04:11:43'),('1','9c7d0b4d-f848-4edb-8897-e480970d47c8','azad7722','1',NULL,0,'2015-09-16 04:11:51'),('1','83c0c472-d6dc-4870-9cbb-4a74d0819d34','azad8552','1',NULL,0,'2015-09-16 04:11:59'),('1','0f920dec-cb10-4277-af3a-5083ff1a3c42','ziaul1200','1',NULL,0,'2015-09-17 05:20:00'),('1','1b2deb23-1802-4b34-b0f1-250c1b16e29e','kalim2002','1',NULL,0,'2015-10-10 01:18:03'),('1','cf9b0164-6c75-4d95-9c8c-764a06435282','obaid2001','1',NULL,0,'2015-10-10 01:19:30');

/*Table structure for table `aspnet_usersinroles` */

DROP TABLE IF EXISTS `aspnet_usersinroles`;

CREATE TABLE `aspnet_usersinroles` (
  `UserId` char(50) NOT NULL,
  `RoleId` char(50) NOT NULL,
  PRIMARY KEY (`UserId`,`RoleId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `aspnet_usersinroles` */

insert  into `aspnet_usersinroles`(`UserId`,`RoleId`) values ('0023455d-c883-4815-95c5-b3125b8162e4','3'),('00452820-385e-4cca-9b43-5b180ff6152c','3'),('004dbeb5-057c-4231-8a3f-cd20d034215a','3'),('005fcf13-1bec-4d2d-9e30-1e2cea7f3577','3'),('006b7a84-6f49-497e-bbf6-e28082624e6f','3'),('0176b8ea-c80b-4b94-b2fe-a6cbc48b528c','3'),('029faa53-dd1d-41f6-b0cf-0e3acb0b19f4','3'),('030f56b5-d09a-481a-ba19-4bafeb3aaee0','3'),('0346b97c-48c2-4de3-8af4-09f9b34a9f20','3'),('0470d62d-a250-47eb-bc66-3a6a306b5e4b','3'),('04fd9ecb-6555-473b-9899-e4c3d24eb3b8','3'),('0530ef32-d0d5-4a16-9314-324d04a997ec','3'),('0587f58c-1e01-4ad7-83c5-93bad171404a','3'),('058c7f82-d854-435a-b29e-904e27244329','3'),('05d89efa-b2fc-4a64-8582-6a2a08e4f89d','3'),('061bbac2-ffb8-497b-abf4-d04521bb88ae','3'),('066569c9-2b22-41ba-a80d-7cf03a735ee5','3'),('06b01cd6-6beb-4371-9bda-2e4512141b9c','3'),('070ad0a8-4112-4807-a0e6-7d3dc4738c49','3'),('0777ef7d-468d-4748-bb33-6ac4d45e5afb','3'),('07fac0cd-55b6-48d2-a334-7ffc25eda3d4','3'),('085c057d-01e9-4261-a7ec-e588b93355ab','3'),('09163695-bb59-4b38-b535-075a04018611','3'),('092eff1d-6c0e-45db-90bd-075a4d2c0fee','3'),('09322d4a-4747-4c35-83f1-d371d3ac0225','3'),('09396e91-da41-4fe1-9ea5-d8b824be0f4b','3'),('09f79ca5-cb77-4c9d-a8dd-f6ce5a5cf6b4','3'),('0a6e474c-7318-410d-8589-cf241ca1558c','3'),('0a75e622-b1c4-4c45-ac60-daa95416400a','3'),('0ad57560-fd43-4f82-904d-11b833e94bf3','3'),('0be42be6-0b5c-4bf2-aeb9-a7e158324a4e','3'),('0c187cf3-faea-4c2d-b6c9-329c31ff8815','3'),('0cbb7e3e-c4ab-4f8d-8cdf-bf5ee18b1a70','3'),('0e050b00-65ae-4263-ace2-a47c650147b6','3'),('0e2bd7da-7aeb-4ba4-a737-7e7d922646ba','3'),('0f920dec-cb10-4277-af3a-5083ff1a3c42','3'),('0fdc7571-b2ac-466f-8c4d-c20f3c68b996','3'),('0fe20524-9823-4bf2-980e-5efa3c02ce51','3'),('10be09fb-25f0-4685-b921-1396d745d574','3'),('119fdf20-05a7-4b98-87c3-18e504b30ed2','3'),('11a9726d-3490-430a-9b49-4531d9c64aaf','3'),('11e21f81-2876-4473-9bc3-b81b170e2db0','3'),('128fa8bb-f75b-432d-bb0a-306fee0c8884','3'),('12b8ed60-e85b-4f20-bddd-de248fc37465','3'),('12e31c67-7026-408d-955e-5e41d81367d7','3'),('12fd872c-0c05-447a-81be-8feaf72fc47b','3'),('1368b18f-7c66-4ace-9673-74c93c3944f5','3'),('136b4888-a689-4b5e-a7d6-083a03182dff','3'),('1398bf06-288a-4cc6-8832-57440c13f0ad','3'),('13e93b60-f429-43d5-a666-dbe19b0e23ba','3'),('142413fe-6684-4d60-b894-7f4bbacd541e','3'),('147d01c8-b14f-4ab4-8da9-a2030590e0aa','3'),('14bc47c6-1886-4695-ada1-0fca827536ce','3'),('151087ba-16e6-40a1-8d89-489ddb53bf9c','3'),('153538e5-fe33-4d85-a4d7-f02d62068e35','3'),('15465ec3-8f3b-4213-b777-8f16d35766b9','3'),('158c6dfc-ee23-41a1-82d5-df1977011309','3'),('167ce0a8-5351-404c-9cc1-bfba87367bb5','3'),('172b39c5-f8ba-4c67-b2b5-faafaaedfb1b','3'),('17911201-2054-4682-aac0-e47c884e386b','3'),('17e244cd-e029-4322-83c1-14f0b446db71','3'),('18123f7b-9b5a-42d1-bd76-6a162f03433b','3'),('18663125-bbc3-4ee1-a924-58f6ca7f8159','3'),('186c9063-04d7-43a6-b779-114c69cd1a22','3'),('18843860-61d4-4844-a7b0-5fee8b4ddec8','3'),('1894ba1c-4638-42ed-b7e5-772950346545','3'),('19a5df04-7ced-43b5-a74d-b71283fd6c7e','3'),('1a28affb-8cdc-4e06-8f36-9c4c648adfcc','3'),('1a531dde-aba3-472b-9206-67085428bb62','3'),('1a85cdd6-c62f-4e23-99fe-67b5d13024fe','3'),('1b1703cb-2111-4d13-b807-d6d3bf7dde07','3'),('1b2deb23-1802-4b34-b0f1-250c1b16e29e','3'),('1b5e6bfc-1b00-4fd9-ae01-71d556707d80','3'),('1b70a20f-ad1e-4348-853a-b71d92145088','3'),('1bc09354-c339-4fd7-b0b9-c668752a0980','3'),('1bf7a730-aaad-4de1-8cfd-f2eb55371447','3'),('1c09e775-62fb-46fe-ab9a-e12948c06b11','3'),('1cab26b7-33ac-47eb-bfd8-8312c24550df','3'),('1cc1eb9c-ab68-45c9-acf1-f858656d3c01','3'),('1ccb507f-dffb-4cb7-a9a6-caccc4fcae16','3'),('1cd92b53-09b4-4081-a707-41b622d7c44b','3'),('1e6f656f-1bf3-441a-a702-400b81269860','3'),('1ec8a47c-0d5d-47a9-8697-bdbd11b931ab','3'),('1ee9f0fd-d0c6-4a01-b759-9eb0fb591522','3'),('1f0c1a48-9c20-450e-8480-ad9d195cc50a','3'),('1f255432-d297-4201-84cb-75b071130982','3'),('1f3cebfe-b227-43e8-b3d5-059cb785e4dd','3'),('1f99e8f2-5b61-4a29-b12d-51abfe53cc1a','3'),('203d8e84-2357-4074-9276-ac9d923c6b81','3'),('209a570f-7148-441b-bc38-aacc14756a16','3'),('20c8d1a8-6aec-46af-ac9d-905743f16d2e','3'),('2102fa7e-6e20-4743-ad59-4c3293c1cfbd','3'),('21ed6ce5-0c59-4014-93bc-de8149c6c504','3'),('221bfd0c-c60b-472b-aa56-7bb13650359f','3'),('22d88284-3e50-4f8b-bb99-e9dc4b0c3292','3'),('240bdc10-dcec-4677-9f37-554b0b67e136','3'),('2434733a-e07d-4ae8-8d07-a1149020b241','3'),('24c2fd74-e3d4-41ce-a9ce-12628f5b4f9f','3'),('24e7b23c-13a5-4163-b5e2-e487ecbc7fb7','3'),('251297f3-3693-4e8c-824e-dbe14aa337bb','3'),('25295142-deb2-4469-9ace-abe698283ade','3'),('2573a8fd-c2da-45e0-8cf3-44cec6d4b2a8','3'),('2578af7e-e7df-43c2-be10-a4109f5e021d','3'),('25982c1b-e6e8-4547-b392-da5b323bc31c','3'),('259c5aa1-9df3-446c-9677-4ca6881fe258','3'),('25d28d00-1848-4ffd-a0e3-5d61ca6ce4a6','3'),('261d70e2-96ce-4274-97c2-8be879070765','3'),('262e213a-a927-4f55-8ba0-02e21b62c8cc','3'),('263c4019-f8c3-4399-a21f-fce071cdea41','3'),('2679093f-3a02-4793-b263-1d00b623ee62','3'),('26ce88c9-2542-42af-ad5b-bbdc8fdf4a86','3'),('272e5d96-3064-4a8c-b651-8cafe72215dc','3'),('276e5c3b-5f53-4df9-9c92-cf74598548bd','3'),('27b12961-bcb7-4f72-9e90-ab49ed07b7ad','3'),('2822a540-75c7-404b-9797-21dbf8e6ddb3','3'),('28e31c3d-567e-4332-a852-94c39d028c4f','3'),('28fb9f76-f73c-4a31-80ac-5d90d2222261','3'),('29071c31-626e-4131-86ad-058cecdc8a30','3'),('29413f0d-b43e-4a75-9141-34c21238638a','3'),('294d21fd-4057-4547-9824-739ab7175848','3'),('29777988-1355-475b-b6f5-050bf846c037','3'),('298b9156-316c-4b23-aa4f-68f2e18c7290','3'),('2ac8cbb4-9ca4-4a60-a49b-18b4ecf6769b','3'),('2b609c62-18cf-4a0d-b502-68269027ce1e','3'),('2b73677a-c93b-4609-b130-693ac5c5208f','3'),('2b9edb7d-72a8-4004-92c8-9510113a5863','3'),('2c73a22e-8bc5-49ca-b9e4-83c07da3d037','3'),('2cd24ad6-1db8-4de2-b626-4e30922a2669','3'),('2d27e2b2-08b7-45fd-be6f-189f54c73aad','3'),('2d2b2ab9-e0b3-445a-a406-04de07b077b9','3'),('2db8245f-de96-49b1-8309-3379d77268ba','3'),('2defbb2a-5ea8-48c8-bf07-ca7f42195adc','3'),('2df14d78-a6a3-416e-a7f6-bcf9ba94e613','3'),('2ee5dcc0-3f49-49e7-aacf-3e0d147d7c2d','3'),('2f4ba54e-2d8c-4a65-a5d7-e74241e3f5cf','3'),('2f69b51d-5fb5-493f-b36a-47299005df2a','1'),('2f746c00-875a-4868-bb16-b4c73261f72d','3'),('2fec04d1-093b-4749-85f0-b855835de89f','3'),('306ce94b-590f-4da5-94a6-c8e0adfeea8e','3'),('30935910-8970-48e6-a4d5-2ae0204885ab','3'),('30a3b72a-8628-4d30-b2f8-ecd1ac30a36b','3'),('30e2f396-5734-4147-9bdc-982a486babcb','3'),('30f937c8-50a8-4748-966b-9cbe47d34766','3'),('322a1f28-9525-49d1-bc85-c7eba7ab89d7','3'),('3279731a-008d-4bf6-b125-3dd4df53ccc6','3'),('32c359d0-0708-47b3-a4b6-fb74da937851','3'),('32f221f4-e75c-42b9-8d34-9695afd5aed3','3'),('3323f7d4-dbe1-4729-855e-5b21239c4622','3'),('332ff09d-b243-4626-ab9d-60615787ad87','3'),('337fb613-737f-465f-a4b6-6dab30d3eccc','3'),('344de753-c685-49d8-92a6-8134f0083758','3'),('345a0593-9ddd-4c04-ace4-bc585b6d20fc','3'),('349f62a3-21fe-4151-ae41-23a2e780e2cc','3'),('3575fb34-8812-48cd-8d93-615b06504522','3'),('36033228-19a3-466e-a548-ac4e9865abc5','3'),('36521f86-a703-42a5-b3db-5ecb38a66200','3'),('36d16924-e6f3-428c-a45f-9dfcd472705b','3'),('36fe7dc5-3591-46b8-b6f5-d4af03d6ca36','3'),('37395891-4b23-474e-8d2b-0116474dfcd4','3'),('37a8efc2-d91e-4ab5-9d1f-2be71ff5bf0c','3'),('37dc56e4-993a-4e9c-9199-159e753cd0fd','3'),('38d2214c-d8ee-4ec2-832e-8e29ee2f5644','3'),('3922fcf0-5642-4c2d-8f41-66fa2acd2ef5','3'),('395799a4-32f3-4d4b-94e8-a4b55057bd0e','3'),('39c69383-8640-46eb-8c47-637cd125decc','3'),('3a46c881-6145-4085-b2e7-82e46f8923d9','3'),('3abb84e6-d841-4f88-98f6-1734386ae4f2','3'),('3b12220f-4de7-4665-8cdd-9076a5f82a21','3'),('3b25cc34-0fb4-49ef-98a3-a299f1a1f75e','3'),('3c0841a6-ebd9-4933-927e-40280c100b9b','3'),('3d0ade91-4268-4c47-8e5f-395542a9a164','3'),('3d38177a-34d1-41df-b371-a1b4d03d1678','3'),('3d3dab7a-6372-4b14-96fc-d75a64bd247c','2'),('3d785aed-dd74-46ef-9b65-615952c8a429','3'),('3d89918e-0d09-43d0-8ff2-4d57293d30b8','3'),('3dc31b1a-2f77-4532-8d50-dedc66e87e4f','3'),('3ea66932-db05-4c8d-bfec-4e794b226d8c','3'),('3f3ba2de-60fe-4e54-92ff-6f2bf177a1c0','3'),('3f69de95-d7c7-4a19-8a46-3e203bcc4cf8','3'),('40ae98bc-be00-4c23-9ff0-21c1c9e1701c','3'),('413766f8-bebc-4068-aa55-e370b72d337c','3'),('42074fdd-77a8-4721-8b7a-793af462608e','3'),('42179707-31e1-4f04-9f01-e6b0c11b5625','3'),('427b1322-d8f9-4a9c-b33b-a30e53c4a6ce','3'),('4296caee-0087-4b76-8982-e7395c03a1ec','3'),('43150722-f57d-4d70-b1f1-c414a6340474','1'),('43161fbe-c89d-4010-9507-cb10280cbbde','3'),('43c4a6d3-597e-4520-93c5-e8a1f0fb1e48','3'),('44166c9d-a6cd-4ab1-9f8d-21842440b515','3'),('443c778e-ee3b-4f3d-8a01-be75b1f1acf0','3'),('449725da-2fd4-4df0-ab42-531d505607ad','3'),('44bb09aa-714c-43e6-84e5-65d045512bca','3'),('44cea5ba-b0cc-4c50-9d2c-c922eb863ef9','3'),('4544d0af-9270-462b-8a74-18b4bdaf8a36','3'),('458b0f9f-d059-43ee-9d1c-4e06e6c3f3da','3'),('45a1095b-20f6-4b75-a6d2-f0a934682ce6','3'),('463bd284-7723-4086-bb9c-bbeee18ba1a0','3'),('46dad280-2e17-4a3e-bb37-93db7801652d','3'),('477f01cd-0873-4beb-a82f-c1e2c42dd0c6','3'),('4836f469-85df-45fb-b5f8-4da2b569508a','3'),('484171a3-c338-4f81-aa39-f138fd6bbb6a','3'),('48432d70-d2e4-46b8-ad85-e768f3da6748','3'),('48f75519-8d95-4f49-9e47-e4bd93be73d6','3'),('49282232-93da-430f-bea3-262e8e526ca3','3'),('499259ae-98ff-4d46-9c55-5ff889e11e1c','3'),('4a20280e-05c5-4b57-af2b-f855800d179c','3'),('4a34e0f4-7cc3-4ce2-b4ef-4cb754459c6b','3'),('4a77f3f2-f3a2-4a85-9850-6713645226ab','3'),('4a8b2833-bc3d-44ea-857a-01c9dbc55870','4'),('4aa91125-3b4c-4fe7-8e57-d057f56777e7','3'),('4ab973ee-b8a0-486c-aa62-0ecd9040d319','3'),('4af57306-24d3-4d89-ad78-3c2849926095','3'),('4b89bf29-f7e7-4d8f-ab23-66a1997f286a','3'),('4ba49fa5-fa8a-4d2d-bb6d-eef4474309fa','3'),('4bdfdb8a-4afe-4b73-973b-c46a2875a956','3'),('4c70a14d-b9fc-438b-878e-e683b8825c5d','3'),('4c8ec24d-81de-4bc1-9c54-43d162aee85e','3'),('4ce2fcee-71fe-4a5b-90d4-bd07d3954019','3'),('4d30d446-1915-436b-b1c3-86208208a3c9','3'),('4d318262-465d-47cd-a419-7d75734d90a1','3'),('4dd61a40-7e3f-4bbd-a298-6b17c619ed4e','3'),('4e15ec51-2aa0-43e9-bffd-e14bc6538571','3'),('4e82d8be-282c-47de-ae54-f6df02a3755e','3'),('4f144770-afdc-4ade-9d42-19b68c8e5ca9','3'),('4f478548-f912-4a56-a968-ddd2cd94c927','3'),('4f85d1ee-916a-4f21-b719-cf56e664eade','3'),('4fd3677e-f05c-4c86-b58e-f5f72d41661e','3'),('50f69868-ad22-47a0-97b4-f8ba9a0bb4a5','3'),('51280311-d0dd-4f34-8a44-4bac17f0ac66','3'),('51733c02-5749-4fc6-802f-0ad25198d4d4','3'),('51ec3e66-f98b-4357-a643-1658469478ca','3'),('5209699b-a4cb-4ffb-89b3-1cd16ec06ad9','3'),('523fb599-af10-450b-9318-a71c11bd0482','3'),('52799e6a-7a3d-4ec5-b314-23f690c16f9a','3'),('52a8e644-56ca-4762-a875-5993f09798b8','3'),('52c341ec-0362-45ad-abaf-7c01278ccfef','3'),('52e8d235-8617-4407-a9b5-2200eef6dd48','3'),('53a3568c-42f7-4272-a87b-189ceb3729b2','3'),('53b28ca5-826b-45fc-bf4e-3cf006f0bdbe','3'),('53d1d4b2-0bb1-4944-b58a-bf1ddb9e67aa','3'),('542f92f0-88df-4b0b-bda9-a5e08087f1df','3'),('5450f11e-bc24-4e3e-8e5d-72bd5f14a344','3'),('54c772a1-3981-4c8b-9b97-3e4efcf18604','3'),('5549a71b-a553-4c4c-8b98-44ec47badb88','3'),('55d4c606-0922-4bda-b50b-d2013bffe05f','3'),('563e92f0-770e-4e8b-8dd3-f26c8c715772','3'),('56f08443-b1da-438f-877d-1bbf9f262f95','2'),('57a4dd9e-e5a0-41da-a0ca-f72811007ab7','3'),('57c27772-6d43-441d-bde5-5f4f2b78fa3a','3'),('581d3ab9-c7fb-49d9-bbaa-3170a8ea4ca6','3'),('5828ca83-6b53-4f32-808a-fa35c348ea56','3'),('58c28e17-d7b6-4a78-8fff-f035d24631bb','3'),('5927637a-8745-4beb-9bd9-cdccaa28d2ec','3'),('59db41b2-bd31-47f7-a19e-cbe009fed888','3'),('5b09dfc3-a1cb-4cea-93c3-2fee64bb01ec','3'),('5b15bc4e-9cee-4299-ae03-ae2f94f5c768','3'),('5b2e1fcd-a21c-42d7-8db6-29722d83ecf1','3'),('5b9178b3-0a13-4289-bb93-de462ebea400','3'),('5c317549-8dea-45d6-baf8-e3a6314b7c05','3'),('5c3176b9-acaf-4a09-988c-8bd5ea9ca09a','3'),('5c5c981d-8873-4ff3-bda0-e185f375a09e','3'),('5ca46c0a-63e4-4e79-91d9-331c8b2e7fd3','3'),('5d243b17-987b-48fb-810b-4d5aca8a0430','3'),('5d58e7cc-1cd6-4ab9-8b30-04e000ca520d','3'),('5d8c81d8-5842-466e-9678-8012f39a1ebe','4'),('5d8f8bbb-fb7a-435a-a948-1be36fe121f2','3'),('5d91288d-7161-48d8-af38-fdaa747f3f22','3'),('5dd1879a-7101-4249-acf9-94c2e236cfa9','3'),('5e991057-ec95-40b3-9928-8a8b2cee1c07','3'),('5eb2a10c-3f65-4e6c-8ddc-0166840280a6','3'),('5eb5a9e3-d228-45f1-b43b-a04e7e362d7c','3'),('5eec1301-1f74-41a2-b6f6-871f1ff9a20a','3'),('5f403257-1baf-4a6f-953a-e2cfdd1d85e0','3'),('60118886-2402-44ab-9897-d3027a11c545','3'),('601604bd-7339-4a51-a542-1c3aae64ed5b','3'),('608cce04-99ea-4f8b-9afa-9b337dc92a35','3'),('60e9bab1-df65-4448-8dd2-00cc6b23e312','3'),('610f3c92-b5fe-4373-8651-eeef349e781e','3'),('611230ac-d238-4617-b49b-32c725bfe6cd','3'),('61b2412b-dc4c-4717-a5e3-5b40da505d40','3'),('61f096c7-b492-4054-91bf-f386c6895288','3'),('62106611-1cfc-40f3-ab2c-f16a7daa8a0f','3'),('6224edae-2f18-4837-87c3-a29f2db222ae','3'),('626ecd5f-e053-4ab9-8d84-be11fe749b7a','3'),('6295bd60-62d9-4565-a245-1e5f21fd4790','3'),('63484d00-6e3b-4139-9337-d6b2d20bb6f3','3'),('6355a70d-67ac-406b-8596-d334dbc8ba62','3'),('6380882d-6503-45ab-b0d9-d7acee70d8b4','3'),('63f89240-b8c3-4051-a867-953e6191a7ce','3'),('6421e4fa-69b7-4f95-a57a-1197fa0fa3bd','3'),('648e0b87-43dc-4543-b8b3-a5437a18b3da','3'),('64beb830-73f1-4f25-952f-722b0b7b7839','3'),('64e1f5cb-abf9-4f8b-971b-fbed75f54b86','3'),('655887d8-6498-4838-bfca-0221897267bf','3'),('6581e247-f238-4816-b69e-54cbf176c039','3'),('66334b5e-84d1-497f-93d2-2ffed5bfd787','3'),('66b22f1e-d337-4f2f-98ea-2808574dd020','3'),('66ccdd4a-3a62-4116-a52b-3fd8c60a84be','3'),('67fc30b5-5e55-41ad-8660-9bb40506c0ed','2'),('67fe3ecf-3c5e-45a5-8bc2-89abdd071442','3'),('6819a4af-1b50-4dd6-8fd2-c911fd1e89ce','3'),('699914ce-35d7-40c4-b888-147d4f2257f5','3'),('6a93b1b4-7575-4ff9-84bc-956c1b54cf9c','3'),('6af09df4-3158-480e-9add-9a3079b9b84d','3'),('6b245ede-29e1-4a42-9b21-e24c005711d0','3'),('6b562790-dd9a-4005-9f90-1b879a7d562d','3'),('6bd7a6f6-4e68-4037-a026-c68297149f21','3'),('6c7a5030-7095-4b24-852c-8251a7bc5f53','3'),('6cec36f0-934c-41fb-89b5-a086895f08d2','3'),('6d81a05f-cae3-4cc5-87fb-b9e248ae5551','3'),('6df8f35a-ccb8-431c-8025-94a3a274d6d4','3'),('6e4319ae-0569-4a26-9ba7-438cbcbbd47c','3'),('6e860d1e-bc3a-4982-b1ef-acb22399dd2f','3'),('6e86150f-4b0d-4a2b-8a21-acc910b7ae84','3'),('6f3a0f26-840a-4909-832b-3520befa97f2','3'),('6f3f562b-4299-41dd-abaa-e6f93e508d75','3'),('6f67513d-82fc-4544-a511-fd498fe86570','3'),('6f7920fe-4512-447e-a236-a92fbe607e21','3'),('6fd93e7e-8707-42ad-ada7-44fe0c81a307','3'),('6fe61307-35c5-48bc-9292-1e2963b4ac53','3'),('6ff9184e-38cf-4117-990b-f98d39d23625','3'),('70983281-19d5-4f1c-ae53-102e0d0d2f56','3'),('71c9aee3-b484-44b0-8412-505fa15a78fe','3'),('71dd870e-d434-41bf-ab22-a688919e0913','3'),('72146e2d-ab33-43ec-bc11-c7f438cddcb9','3'),('7222c909-9621-4946-a98b-6cb41b22b615','3'),('72325693-150a-480b-a106-ce70c92e3c0f','3'),('72446052-af1d-4663-9e2a-728c261078dc','3'),('7271b673-903a-4a6b-bb0f-bef98c5be5e4','3'),('730c410d-0992-40ab-bf15-2835e35a3b57','3'),('73775a2b-13c9-4ce2-9ba5-ebd4a0e7924c','3'),('7454660f-8351-4d3d-8026-f8acfd34d2a4','3'),('7474c817-8364-427f-abef-a69e136f4ea7','3'),('749d7268-e3d9-42cf-ae9f-5629c540bd28','3'),('757f6930-d998-4a14-885f-4ad6f7b0dccb','3'),('75d5be48-fe0c-44e3-b701-432038c24e0a','3'),('75d95c20-543a-4083-91b2-4558dcf0264b','3'),('7696c584-e84d-48e9-bc3b-026b9ab63a66','3'),('76a8bc0d-128a-45ea-a90a-fc9a86876ad4','3'),('76b9f64c-4116-4bd4-9005-a7f469cbb289','3'),('76d01789-7096-4082-b62b-44352bee7a40','3'),('76d6a564-f0b7-4220-ad63-b2f5b73cd2ef','3'),('77282bca-ae92-4bfe-b747-91761d493302','3'),('77688e4d-0c3b-4b66-b055-e26756d8c7cd','3'),('77b12e13-a606-4952-9041-a276f9b60b79','3'),('77c19a52-c86d-41f6-bed3-742fe856c0eb','3'),('77ea1d1a-7fa2-4b6c-9459-1ed7a7af20dc','3'),('787431af-efc6-4fc8-8d4e-b217d4dde3ad','3'),('78af0e6e-a33b-4413-86c1-58585a71c43e','3'),('78c7a7cd-903f-43f3-afb9-01acf06d9edb','2'),('78e368f0-f83a-497f-a63d-a62090bb4aba','3'),('793f8040-2eff-41fe-93ac-fd6da59e3baf','3'),('79632daf-ea9e-458b-9f38-a304310eada5','3'),('799c4263-edf8-46be-9a19-83f3e08be8fc','3'),('79b233c7-098f-4a65-b657-6433f19b0ac1','3'),('79d7186b-58df-4430-bad2-ae93ebdb2d34','3'),('79db90ba-eb5b-433c-a56b-7b2cbf9ac3b6','3'),('7a0280f5-f870-4084-bf56-86afacc5dfc9','3'),('7a2635bc-4864-43ba-87a4-e9b17fb6a073','3'),('7b31dd3f-c813-43c1-9c7c-cf80c5a0d845','3'),('7bfdbdab-005e-43a2-9000-363893ed8b62','3'),('7c0fcf99-c1ef-4912-b879-8fa32bd0e990','3'),('7c48f42e-b53c-43d4-8aa1-126935f456bc','3'),('7cf22ae3-735f-4830-943d-f3d91e681742','3'),('7cfca810-142d-4af9-9907-cea7c1f33e16','3'),('7d15e240-bdee-44df-8900-9ce1453c52eb','3'),('7dc3f0ba-1c4d-4fe2-8b14-501c6fc77b05','3'),('7e15aa58-b920-4db1-aace-a97a894d7419','3'),('7e64ae24-45a6-4b57-93d9-0e70930cd6a9','3'),('7e71f7cb-5aa9-43ca-b5a6-22347d620410','3'),('7e94336f-e588-4a89-bce6-2db6a9150b55','3'),('7f75b16a-81bd-4731-a358-b76c080f627e','3'),('8159b777-982e-45bc-ae56-66608d35a665','3'),('817caa1b-5cfc-4f7d-93b3-2c0085fa88be','3'),('81bd8f05-a2c1-4914-92bd-615ad4748e63','3'),('820d016b-1760-410f-a9a0-9f5bb63e3a0c','3'),('821b11a1-c1d2-4d40-b727-4eb1f64d9206','3'),('827c5031-010d-44ad-9318-c44ef60ee046','3'),('82e6e543-655a-479e-a0fd-73182767460b','3'),('836f6dea-e8fd-4a0b-a294-a65806f4dca2','3'),('83c0c472-d6dc-4870-9cbb-4a74d0819d34','3'),('84962dd0-c0bf-414d-bcc0-2919e483c8f0','3'),('865898de-434c-490a-a5e6-598d747b3bb9','3'),('869f81a4-2be0-440e-9eb3-a63ca73f01d4','3'),('86c70d51-4c9d-4231-83f4-4b6445cc3423','3'),('86ca3e2f-f55a-43e6-8183-6160f7d199f0','3'),('86d1d7f0-d601-411b-9648-fd2e4de575ab','3'),('87582f41-e24a-4115-89a8-9e7f9ae9a91e','3'),('87a4152f-8f34-4098-b876-4cf8ef6efc75','3'),('883cb580-a01a-4d34-9eaf-93145d21fea6','3'),('88de013f-fe01-4c86-875f-890dcc4196b2','3'),('89ac6c05-b013-431f-a8ac-c9296299af73','3'),('8a0078de-5588-4218-9f08-ff640adba987','3'),('8ae36d99-5682-47a5-bc01-0689b7555d42','3'),('8b426dd4-ca46-428d-acca-a8aa0ec2b4e4','3'),('8b6a085f-5da0-4d2d-a8e7-c0c55e66ad70','3'),('8bd11327-3919-45ad-bb27-ea1ca3099a1c','3'),('8bed9ad8-87a0-41c9-a913-6a5131d11dcd','3'),('8c010478-f381-411c-85d8-d3dc1914e128','3'),('8c4506ee-d422-4df2-8737-fa46e27fc682','3'),('8c8b5fe8-d6ae-4aaa-a49e-f1c8be4f925b','3'),('8cf4e967-4c66-437d-861e-592ac21198ea','3'),('8d0646fe-f248-4799-b0fe-01985b16ce90','3'),('8d22ad70-721e-4993-8389-100e2ded05fb','3'),('8d4a5466-4e0b-4626-9cdd-14afc23ecf06','3'),('8d5c5819-bd93-428c-b705-eaaca8e8ed6a','3'),('8d8d0f45-429c-4de5-afff-d87a96e7a5f8','3'),('8e8439f9-088e-4284-9872-7b2b4d293bc8','3'),('8eb6a854-6238-40ab-8ed7-5bd2f3cce5b4','3'),('8f02a3b3-c0d7-42c4-9f6b-09e98485b255','3'),('8f76e947-2d6c-4119-b0e7-621caa695bb5','3'),('8fe31760-3617-435b-ae14-f7a0ec5155bb','3'),('8fee1e39-784d-4b34-a78c-c835573be606','3'),('90334ecf-08b6-49e7-94d7-2b3c440fce36','3'),('903433b5-a16d-41ee-89f0-0459aa45897a','3'),('906ae628-6c54-48fd-b211-a25e6e775575','3'),('90d6fa77-ed76-425d-aaa0-81f739970d12','3'),('911adc26-b00d-4124-a049-84a172441a3f','3'),('91ac019a-6d19-42d0-9e99-de4f50b00583','3'),('91b5d694-985c-4601-b51d-1ea372201fa6','3'),('92389aef-3356-4726-bd6d-ae97e1f4fe97','3'),('924b4852-d31e-46fa-ac90-6a517e2de482','3'),('92c8ae67-47ce-444b-ad38-8a9903dfdc78','3'),('92fab6b5-301c-4c41-9e66-f760645435af','3'),('93ed2573-8f3c-4911-b813-98880bfda66e','3'),('943313d1-c2c4-4792-95a8-fb5190a7d8e9','3'),('9581b358-284a-451a-ba4a-31c8af262047','3'),('95b24e23-f211-40e9-a1d3-cdd952525b6e','3'),('95ba175f-1aa3-40b7-aaa1-0374ab7cb621','3'),('95d4bbc1-288f-4a0f-88e0-bec597d4fb59','3'),('95eb8ff6-2a5a-4802-ba10-4f67546f653b','3'),('96064f59-e11c-471a-af76-0723826972e4','3'),('960ed075-f87d-4a70-9c02-ea5f674e3096','3'),('961dab19-518f-414f-8858-99237c25ced3','3'),('9654a14f-336b-4d21-a3c8-244f3ecb0d56','3'),('96c6042b-e742-4097-8607-5663d9007b16','3'),('96cc9ff6-c886-4f82-8d77-b52ea7cebbee','3'),('96d49831-f280-4e18-81a7-3200103481b0','3'),('96f98be8-a0e4-4c54-838a-38606170776b','3'),('974c8ee1-e419-47c7-8d69-933de8e0f24a','3'),('97577337-a5cf-42ff-8eb4-9f8b7bfdb878','3'),('97756c77-91df-43d8-b0b3-662b8f6a5ed1','3'),('977c1093-5ecf-49ca-926f-2c72d6c4e91c','3'),('989dc730-596e-43dd-b3c5-f2308c770c5d','3'),('98a107d4-64f2-4729-989c-485eed6a5f0a','3'),('99232b01-3d28-4f60-8da6-474e78e58672','3'),('99a1802c-807c-4644-9cf8-0ca6354bc45d','3'),('9a0ddc82-2926-4db4-b0ee-506b0476cfcb','3'),('9a801fda-6e4a-49f9-b7eb-3e1fc98ce84f','3'),('9b31a6b7-4d4e-4e8b-8688-8ac23c9744ec','3'),('9bdd240a-c63f-435a-ada7-3b7975919bee','3'),('9c7d0b4d-f848-4edb-8897-e480970d47c8','3'),('9c9d3b14-2f52-4e67-b1c0-8fbd8a7c9afd','3'),('9cb59a86-bfda-4b33-bae0-f0b7ed68135a','3'),('9d48df5b-baef-4c3e-a3fd-2572810a0e1d','3'),('9d9b8217-43e3-4501-8960-b99a0e3f1d7c','3'),('9dfdae09-3101-4549-875d-d4c4755dbcf9','3'),('9e047a0a-3f12-4eba-8ea9-c0bbdccb1bb7','3'),('9e3c6f32-b65e-40df-ae55-9f337ea3c65d','3'),('9ef3c785-f96c-438d-9f8d-be60e5ab8711','3'),('9fa1b187-6385-4aab-9eb0-20a48f0e15b4','3'),('9fc38b7d-4891-40c6-8ba4-f6cd0d5c4e4e','3'),('9fffea88-1181-4e96-9be7-ef3596397663','3'),('a0718c51-fa5f-45c7-bc36-8aa0fcce28f2','3'),('a0e12bce-6952-4a77-86d9-b8d0e3e35e0d','3'),('a12d6022-ad65-467c-b801-0e2566636531','3'),('a15ff049-8df3-42aa-8d93-598ad3d1610d','3'),('a1a3acf6-c4df-470e-8d04-6fb54bc546d4','3'),('a273798f-d078-4424-8080-f8c72c8ca2da','3'),('a2c7c82b-8192-4799-a16f-b2d558f3923a','3'),('a2d11920-bff2-4754-ad94-81d826a0a853','3'),('a2e995c3-631e-421e-b956-4f2e836cf7d8','3'),('a38c1207-1597-4995-a47d-fdb8f3814a1f','3'),('a443f13f-6228-4129-bda1-2ea6bdea3ab4','3'),('a4702cff-ec4f-4d25-be7c-4aff414649b2','3'),('a59f00bb-86af-4ad4-a40d-bbdae43bb1d5','3'),('a62df10d-c5d4-4f40-af99-30c24b199284','3'),('a6791693-2b86-4497-9c19-e801f59bc5f6','3'),('a6819c1d-20a6-4c22-b740-f232b349a0c3','3'),('a6fc241a-6d0b-4b43-9e4d-52122f5944d8','3'),('a742c11a-1707-41d9-a49f-5c97338a3e85','3'),('a7bb5ac8-1097-4d36-a94b-35347a31c97a','3'),('a7fca99f-caa5-4caf-b17f-d8cb52d5f0b6','3'),('a8c81578-95fe-4759-ab4f-ab24cdd31fec','3'),('a91ac313-9e85-4f41-8cff-7a5274c09f5b','3'),('a938435f-81c3-456f-92bc-c7d901523497','3'),('a94974e8-6186-4e30-a57c-ce6e87a8bdf9','3'),('a9558b40-84c2-4e60-8786-908a184891b2','3'),('a98470a2-9420-4c75-b985-cfc04478ebfc','3'),('aa3dccb6-58ad-4b69-b1ca-bbbdff58702c','3'),('aab1820d-8bd7-4c1c-ae9b-6f22da901c06','3'),('ab0d26e6-b01c-42fb-ab9e-404442cfe9e5','3'),('ab40f0b5-7437-4b13-8bef-88eef51e6901','3'),('ab512ad1-47f7-4f7b-9a9b-c08b5dd919bc','3'),('ac621560-0bf9-4e2f-91eb-ff94a1edccc5','3'),('ad0d8550-f679-424a-b94b-449dde78fa05','3'),('ad2a0859-1a01-413a-80d2-7c7df4311b43','3'),('ad7b5513-123c-45d1-a7a0-cd676ea3f0a1','3'),('ad857c9e-3110-4df0-af2e-922d6673a821','3'),('ade8e7cf-6b1b-4101-a968-ab7c80c41be0','3'),('af01c831-67d6-4a41-99de-25b7e36dcd07','3'),('af6929c6-ba71-4953-87cf-559715d7b62e','3'),('af7d79f8-c5c1-4ad0-a7d4-719b842611f8','3'),('afb8435e-c887-4e64-b1d6-79e9a8affcf2','3'),('afdea65a-6a99-46bd-a27b-727f68b4bb4c','3'),('b023cc29-442c-4c01-8633-beb58b86560a','3'),('b02d10b3-4b1a-473b-8e67-5ef2237a5402','3'),('b069807b-7a50-4ac8-948c-4230564d163c','3'),('b0aa029f-af36-449f-94fa-fc8eccebe967','3'),('b0f78319-c16c-43a8-b9cf-62340a1336ad','3'),('b13b49d1-7122-43e3-ac67-8bba7f19bb81','3'),('b159e86e-b499-4945-b838-986185e7f304','3'),('b22f6390-dcb0-45a8-bb81-aaf684f22662','3'),('b2f6a653-0e56-45a9-bd52-63ca12e5870c','3'),('b301cdd1-e6d4-4fdb-a527-566706190b4f','3'),('b3189bb8-a905-4d21-a2dc-ba0396f9bdbf','3'),('b3c3f579-2d7e-405c-928a-3c1e8348f867','3'),('b3dd82fa-1358-4d0f-9f3a-8be02a95aeae','3'),('b3f2e9b0-f5c2-4499-9bff-2c37127f23fb','3'),('b4420806-7ab0-4a86-8fda-3a546ce33687','3'),('b44a7642-bf83-4a09-ac6c-7a7ee12bb571','3'),('b479a585-c88d-4ba8-87dc-3b2b1468cb7a','3'),('b4b1fbb1-7db2-4153-857d-0fabdb935703','3'),('b4c7cd31-91fe-4fb9-a2d7-45f36361ab01','3'),('b52f4d31-fa9d-4ba2-91c7-95f0061599ea','3'),('b55a46f4-baf4-4f57-9b5d-229866f8e5f5','3'),('b635b062-049d-4ad3-9e9e-7e439f5e2284','3'),('b6e62278-c662-4706-b12d-efd48bf1711e','3'),('b6ef631e-bcf0-4a78-9523-9c746701bbae','3'),('b85ca9e8-f078-408b-a895-9cf583c157d9','3'),('b87a980f-6103-47cf-a1c5-1a3b680fb071','3'),('b89f494f-41e9-4eb8-835b-5ac6055302dd','3'),('b8df2f1e-0a97-415b-8bb8-11505a17f20a','3'),('b932a5f5-5bca-4cc7-bded-e3ce9dc6ddc6','3'),('b96b14dc-7827-41c1-907d-9c9c6fcbadb9','3'),('b9831e8a-c120-4912-8410-f692ac536918','3'),('b9e53e35-05bc-4149-9ed8-fb60f6e9c376','3'),('ba1dadbd-952a-4f6c-aa46-1d7f2be24c0a','3'),('bb0ecd35-c977-4073-a182-24aa5ba0aa6c','3'),('bb3dd12d-4ace-4e65-aa83-ea147cc6d223','3'),('bb555204-09a6-4107-b981-be884351f546','3'),('bbf9d4a5-1a61-427e-86a6-96945d2e6921','3'),('bca55a10-5788-42da-a507-1fae4bac676f','3'),('bccc936f-176b-4043-b26c-13006d468665','3'),('be519d99-ff8a-4f3b-8cad-25139614e215','3'),('be6cd5d7-72dc-4bc1-a7cc-cbd0b7b51e97','3'),('bf5b7332-d601-4d13-94ef-14ffd28d37cc','3'),('bf890b1a-2cfd-4d25-956c-395364b26a39','3'),('c13aa85b-5de1-46d5-8985-d56a43b842d6','3'),('c2b24591-18c6-4d0d-bd46-fadff8eab4cd','3'),('c30fa2c9-d43b-45de-8fae-eaa5424f2ed4','3'),('c33c55f3-dbc1-4413-b018-2e10c534c782','3'),('c38a5b68-8df9-4139-a3f6-0faf5dff10c4','3'),('c3a7e482-f907-4c6f-b948-5744233f084a','3'),('c3afe3cb-4750-4bc2-aa34-9f2f1bf450c2','3'),('c3bf3dd0-7386-43d0-8fa2-99b409d78e5c','3'),('c3d483d5-40ec-4c73-99cd-ecab600d2b4a','3'),('c3d7ff56-4dc9-493f-aa62-7a59a4907c51','3'),('c47260fd-02e3-4b8c-a7d8-a96921a2cbde','3'),('c49f4bc6-9366-4ee6-9fca-ebbee7409f6b','3'),('c4e087df-af1a-480b-8142-fa6ecdd2d96e','3'),('c5660378-d9bf-4d6c-903e-9b905af1072c','3'),('c6146c91-7c97-49cd-b179-25348c4de1c1','3'),('c630d626-ff44-46e9-a4f1-a595f86c6a4f','3'),('c68f5308-e062-45ef-a97d-340157c774b1','3'),('c69a6831-a29b-4af2-b099-4b75f3c2fd87','3'),('c6f7b3f0-bf59-456b-bd2d-53c7c6152090','3'),('c7600460-e940-4554-be03-da1035f01d6f','3'),('c7dea1f2-bb37-4b52-83cb-ef39608ac972','3'),('c7f1f678-90ca-4c14-ba63-eae02684c6fa','3'),('c83f6cde-02e5-40ac-80bb-8a118af0e796','3'),('c845f693-d924-4297-bb70-97c872b8fe93','3'),('c85daccd-d6ce-44eb-86f3-91e78c0f00a1','3'),('c8949f81-69f7-4e97-a539-7156399f6c77','3'),('c9104ebf-5e99-4e9c-9f41-c0d8d1804db1','3'),('c9ad8424-8436-49d7-9da0-91b34393c105','3'),('c9b253c6-29f6-49d5-b06b-1abd2e360856','3'),('c9c64440-bac0-41d3-822c-32ba4fb266ec','3'),('c9dd145e-fd17-4727-ae80-5fbc2741f1ce','3'),('ca66f84f-5d60-44d6-bfba-b1501cd17020','3'),('cbaa2483-a6b1-4998-8cf8-e62496bf1361','3'),('cbb1a328-3708-43da-8c20-49e252811513','3'),('cbc581e7-554d-44fb-ad15-f8deba820c97','3'),('cbedab0c-2b41-4b35-8fc5-369a24e157f2','3'),('cc024cf1-015e-49e9-a0b3-166968f543f0','3'),('cc0675e1-a187-43a2-baa7-ca73883d4c2b','3'),('cc700fc9-8bf2-4291-b3ed-608425cad8c9','3'),('cced1d2a-ffcf-435b-a70e-3d3b6618d66b','3'),('cd9d68dc-da0f-4310-8ab9-c789df4fc2b9','3'),('ce0ba7b8-cd74-4925-aee0-7b9b1882ab9a','3'),('ce752315-3cab-4543-a5f0-7e2c3146fd9b','3'),('cef84395-0839-439f-987c-b54535554189','3'),('cf41e359-4317-4334-a1f3-b4bc8fca4a13','3'),('cf5a719f-750d-4f56-874d-1c3129292a35','3'),('cf9b0164-6c75-4d95-9c8c-764a06435282','3'),('cfa750ce-0ebe-40a4-ac3c-420ca463a4cf','3'),('d00a915d-c0cb-4e38-96ca-8209254ee637','3'),('d01468b9-e3f3-46c0-809b-fac3a8005abe','3'),('d027c944-ab9b-416f-9d53-cb732ff347fb','3'),('d0665e9f-41d8-4eb5-8d18-f1b6a0d47bb0','3'),('d0c48ee8-5a1c-45f5-82fd-c3310eba0f94','3'),('d160473c-8187-4342-a73d-559784376f63','3'),('d17e415b-6a79-47af-b364-5f7232c003bc','3'),('d1c8ddad-b4d8-4a31-a8d8-c1d0f1f0e0eb','3'),('d22c6079-7189-4230-966a-e75637072d88','3'),('d252d15a-ca2a-4e0a-87f6-ff9cbbccc97d','3'),('d2e80231-33c1-4e2f-9b10-930f258a029f','3'),('d304f92a-bbe9-411d-9b47-218c95c0497b','3'),('d37c3780-93ad-4cf2-b216-b2e994e22251','3'),('d3904bbc-02fb-4dbe-aaef-7c8a942d15cf','3'),('d3d7d2e5-2dc4-44ca-a268-c7feb59541a7','3'),('d46b4e47-e1e9-4fa3-aa9c-5b6f0d73d09b','3'),('d4815cec-b15d-43ed-bd0c-6c755e01cd90','3'),('d4830e55-945d-4157-bd11-f6cb5dc6444d','3'),('d506c91b-997e-45ff-8dd5-2da89af749d1','3'),('d5285bb9-2b35-44bc-9a02-66cebbb6fddd','3'),('d5669f9a-1482-4508-aa5b-ca8b323d648f','4'),('d5785299-8203-42aa-8454-badcc84c3f44','3'),('d5c5e3f6-688d-489c-9d9c-773fd3d866a5','3'),('d5e96692-c0fd-4ede-bedb-5d660a2b4d36','3'),('d64ea459-eaa1-443e-b1c9-68b23a5832f1','3'),('d657c82f-54a3-4c35-b0a7-3ff4a18cef1a','3'),('d6fa6ffd-1981-45b3-9edf-ef403ca24011','3'),('d94c1313-484f-41e4-b5ba-6edf6c7b4718','3'),('d9e44ce7-7f46-4883-9396-ffaee4887e8f','3'),('d9ed204f-a575-4829-bbb7-dfa42030c7b4','3'),('da36ffd6-f06f-4d16-9e38-de792e51ef61','3'),('da6e2958-0166-456f-8a03-8981f09d9e59','3'),('da823522-642d-4c6c-b12e-fd7864310c2d','3'),('da867286-2833-4903-8298-be899ad7e9c6','3'),('db3dfc28-0a5b-4041-83b2-5e126c4b8f56','3'),('db42c572-50e7-4cbb-8e97-0e8da0f03c8c','3'),('db8840c6-b731-42b9-90aa-6a722ca24956','3'),('db9c4adb-6ba3-45c0-9d2b-e5b8bb976e5e','3'),('dc07d91b-d0d6-4c39-90a2-8eada0f1c250','3'),('dc0ad99a-5d4c-46b1-8c9f-f70f9e12b760','3'),('dc9c4658-36b0-476c-9007-c4454eaaf59d','3'),('dd58c8ee-df19-40bf-b1d6-c4f5296f4487','3'),('dd90c818-d2cf-432d-9d20-9a7749008294','3'),('dd96e29f-f3bd-48cd-b124-99938159792b','3'),('de210929-edf3-4205-b2e6-4982ce74065d','3'),('de2728bd-eeb3-4975-8d87-5ce6f0defc2b','3'),('debb7933-7b20-484a-a7ca-8bd4bd4552bf','3'),('dec52f28-132b-4f34-8595-b3a9a9e13028','3'),('deddd043-a520-4012-8057-f331a0c08fbf','3'),('df844e30-631e-4035-be79-09edbd5cbe69','3'),('df8eba0d-eeb7-47b5-ad85-ca9bee00c5e9','3'),('dfa7616f-0394-4ad6-9cc4-cde85e201df1','3'),('dfb7aacc-3f28-4cdf-9752-21922a599cb6','3'),('dfc07b44-6c4e-4aab-870c-390630668363','3'),('dfde6e4e-97df-4f96-bdf2-12bd0f2d9c31','3'),('e010f64f-b038-4a64-8290-df39ec9db702','3'),('e028960b-38f3-48c4-a289-000b33056baa','3'),('e05782ed-2f75-48e2-8bc8-53d88d416733','3'),('e1c2b07f-ef8d-4b82-a02c-40b22f21f325','3'),('e1fc5792-9618-4ab4-aa70-2ccf5d8f35d9','3'),('e2013537-1958-4d43-9477-0be7e4234e7e','3'),('e2417c4c-e7f4-4101-ba85-4ebf25e39ef5','3'),('e28c2ae4-2841-4dc2-8c6a-49d04a497d70','3'),('e2b35cd5-bca7-4cff-9fe9-9760d73c718b','3'),('e356ec19-cc2a-453e-87ab-32123a20d2f3','3'),('e3676988-b849-41cb-a836-9578542ebb9d','3'),('e3ad2379-b247-4c52-adaa-42165fcc99b0','3'),('e4fc05c3-6d36-46c2-a8ee-3d6e5070e59d','3'),('e5ca3872-b724-44ad-9c95-ece427cf229d','3'),('e657c087-1c4c-4e0b-a938-e5c30e445fc5','3'),('e68f410b-56fe-4e38-91b0-e0976df46220','3'),('e78760f1-7435-4b9f-9956-0b593813cda6','3'),('e79bdd68-14ba-48d6-87e0-ac0277e1e2ab','3'),('e7c5fc22-c1f4-450c-98f4-fba59adec557','3'),('e7d965bf-6afc-4010-8b72-be7e4e438dfb','3'),('e88a1983-0341-49f0-8d2f-429fb16fa019','3'),('e897d8b8-b66d-4476-aa1b-ea744287eacc','3'),('e8b5e1e7-0e48-45ca-b5b7-b340ad10ed3e','3'),('e9205553-466c-44a9-99fb-48c12ba8e523','3'),('ea281801-224e-47da-a192-0e8cfb51a28e','3'),('ea60c7c3-d114-44e2-991f-a806f4f535dd','3'),('eac64248-1773-4d92-8e76-8dec1971ad09','3'),('eaf5dea5-26c3-4cee-8c28-fa767b682ed3','3'),('ebceb4be-53a5-4a24-8bf6-f6fafc7cf70b','3'),('ec0694c5-a35c-473a-82d1-7cb0696fbf00','3'),('ec1416d3-8bab-439d-9b66-5de03398f6d2','3'),('ec62577c-0faf-4c33-bc97-e156fa1daa8b','3'),('ec7013c7-1ba7-422c-a1b4-ef3814f92dbc','3'),('ecacced3-cb23-4a35-9225-6074acdadc79','3'),('ecea98cb-e133-408d-9296-d5aa3f916508','3'),('ecf1f7f9-117c-44d5-9d52-19777fc5f5c5','3'),('ed150699-d199-430e-8af5-8367cf51f5b4','3'),('ed2a3579-a8a5-4471-8f24-ce95f02e0ba1','3'),('ed524437-9005-4d71-a50b-3d6b487917b2','3'),('ed7ce430-16a9-4ae4-8534-8fcf3ea87d51','3'),('ed8251d6-8047-4f89-bfd2-876dd51c521b','3'),('edaa548a-553c-4e2b-a4c8-4fb400a79e3c','3'),('ee49732a-1b61-4e4b-ad7c-e18e8ec50f97','3'),('ee4fd003-8938-4dea-873f-5c08bc9f667a','3'),('eeb56437-a995-4540-b2fd-89628c181ca4','3'),('eed98e85-9459-4672-999f-86c3eb4b767d','3'),('ef1c7d6a-592f-44d0-922e-e7ae41e05652','3'),('ef27a52c-7153-4c1c-8e83-3006967ad5a1','3'),('efab2c64-f40b-4e0b-88cd-eec72b1d6c2b','3'),('f05c10e3-1f34-4b9d-810e-273c0ec68139','3'),('f0e0818f-ee5f-4d90-b9a2-d3c41000459f','3'),('f0e2fc17-70ed-40e1-aa20-aba52e99060d','3'),('f0f1fda3-a2bb-43a8-b42a-6e92f6f83de1','3'),('f12afa6b-30fe-4e49-a930-579cdca10da7','3'),('f1a380b4-b315-493a-8c47-ee6cd2d65870','3'),('f1adc78b-ae39-41ae-abbb-8003445f06ff','3'),('f1d0a78e-6aa3-4510-879a-16265e013c89','3'),('f1e5fe94-62ab-47a3-beda-e01e587a1fc2','3'),('f265d8aa-973c-4ade-9637-9a8d1cd8212f','3'),('f294d369-1b18-48f5-9657-f15db593ba23','3'),('f305b6e3-99a6-4c8a-b700-86ea0c6db151','3'),('f3138020-5f33-41ab-93c4-ca34f2df5478','3'),('f4aef806-7e3a-4f5a-b30e-91054f11eaf6','3'),('f4cb73af-c321-4eb4-9c71-63902f837c06','3'),('f5629b99-df0b-4dfd-940e-be3dcf832eca','3'),('f5a36fb8-6b05-4f2b-a30c-e61744da2b44','3'),('f5cbd5b6-88e0-4a4f-8458-5fd2c66ad4fd','3'),('f5d1c583-fba6-48dc-9b23-dbcf8ffe60e0','3'),('f61675a4-86cf-4012-965f-df5bc9e2dbf9','3'),('f6c5a269-53bc-49fa-a307-d8e3acf08ea0','3'),('f758ab9f-27bd-4da2-842a-9942e0f39d59','3'),('f7d140b8-038b-4dab-9c50-c1cca6f97306','3'),('f7e5f7f0-fca0-4fbb-90d8-289d0b91fa5b','3'),('f8036243-51b2-4a4c-935f-328dcfca8151','3'),('f80c1996-8f11-4e6f-bbab-f4ccbe6bc4a9','3'),('f8f5667b-c969-4eb3-a868-56cbe1b54904','1'),('f910fc9b-e271-48ec-8133-319feda18411','3'),('f923745a-1edd-4eb2-af28-5a5d900a6783','3'),('f92f5c51-8b8c-4528-9f6d-97b145635657','3'),('f93f0278-3474-4a70-b93f-dc6df47dd5ea','3'),('fa4b7156-47fb-4521-b459-2c0a0041fdf2','3'),('fa6afd0e-6e9e-4470-a03a-1142a96058f6','3'),('fa75c942-6c9e-41d2-8a26-a3b0a2693a4c','3'),('fa93a944-ca50-419e-984f-95cc1f1be28f','3'),('fb3776b1-d501-44be-be60-d749fc07bc56','3'),('fb38d7bc-dab9-4248-8089-ab04da85ba7f','3'),('fb759d17-76b7-4614-9173-d9d1a323d591','3'),('fc3299b9-5f9d-44f6-814b-b97a8c296e0c','3'),('fd44edcc-dc6a-44f2-959a-b2751207fcd9','3'),('fd8fbe66-78eb-4dfc-9a59-988b92efbeca','3'),('fe5df07e-9e2d-46f4-ab79-cfb04f3d7e79','3'),('fe695c15-955a-4622-8d95-d27e155be2e3','3'),('fe701ac2-4b9c-408b-a652-e6844b58ef48','3'),('feb6cdb8-1018-48a1-9f46-a2e3bf66d7db','3'),('fecf8e6d-1f86-422d-975e-bd5a96d28ed3','3'),('ff9ffc6a-1f2f-4aa7-a1ea-2a03f4765cce','3'),('fffdcb49-314d-4ca6-b32a-b3606d27fedc','3');

/*Table structure for table `banner` */

DROP TABLE IF EXISTS `banner`;

CREATE TABLE `banner` (
  `banner_id` tinyint(11) NOT NULL AUTO_INCREMENT,
  `banner_name` varchar(50) NOT NULL,
  `visibility` tinyint(10) DEFAULT NULL,
  `banner_details` longtext,
  `banner_summery` text,
  `display_image_path` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

/*Data for the table `banner` */

insert  into `banner`(`banner_id`,`banner_name`,`visibility`,`banner_details`,`banner_summery`,`display_image_path`) values (40,'Start of Office',1,'','','-1641121405_02.jpg'),(41,'Mourning Day',1,'','','616464456_01.jpg'),(43,'Doa Mahfil',1,'','','1086810766_07.jpg'),(44,'Doa Mahfil on Mourning day',1,'','','2021910926_05.jpg'),(45,'Meet IEB Candidates',1,'','','1739570403_08.jpg'),(46,'26 Cadre Assoc. Prog',1,'','','-1140320724_04.jpg');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `CID` int(11) NOT NULL AUTO_INCREMENT,
  `CName` varchar(200) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`CID`,`CName`,`Description`) values (2,'Sports',NULL),(3,'Training',NULL),(4,'Activities',NULL);

/*Table structure for table `designation` */

DROP TABLE IF EXISTS `designation`;

CREATE TABLE `designation` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Designation` varchar(256) DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

/*Data for the table `designation` */

insert  into `designation`(`Id`,`Designation`,`Priority`) values (87,'President',1),(88,'Vice-President',2),(89,'General Secretary',3),(90,'Additional General Secretary',4),(91,'Joint Secretary',5),(92,'Treasurer',6),(93,'Organizing Secretary',8),(94,'Cultural Secretary',7),(95,'Seminar & Publication Secretary',9),(96,'Sports Secretary',10),(97,'Publicity Secretary',11),(98,'Office Secretary',12),(99,'Executive Member',13),(100,'Executive Member (Ex-officio)',14);

/*Table structure for table `documents` */

DROP TABLE IF EXISTS `documents`;

CREATE TABLE `documents` (
  `documentid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) DEFAULT NULL,
  `AttachmentName` varchar(256) DEFAULT NULL,
  `OnlyForMembers` tinyint(1) DEFAULT '0',
  `CategoryId` int(11) DEFAULT NULL,
  `ExpireDate` date DEFAULT NULL,
  PRIMARY KEY (`documentid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `documents` */

insert  into `documents`(`documentid`,`title`,`AttachmentName`,`OnlyForMembers`,`CategoryId`,`ExpireDate`) values (24,'test','1757823708-pdffile.pdf',0,1,'2015-09-30');

/*Table structure for table `elmah_error` */

DROP TABLE IF EXISTS `elmah_error`;

CREATE TABLE `elmah_error` (
  `ErrorId` char(36) NOT NULL,
  `Application` varchar(60) NOT NULL,
  `Host` varchar(50) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Source` varchar(60) NOT NULL,
  `Message` varchar(500) NOT NULL,
  `User` varchar(50) NOT NULL,
  `StatusCode` int(10) NOT NULL,
  `TimeUtc` datetime NOT NULL,
  `Sequence` int(10) NOT NULL AUTO_INCREMENT,
  `AllXml` text NOT NULL,
  PRIMARY KEY (`Sequence`),
  UNIQUE KEY `IX_ErrorId` (`ErrorId`(8)),
  KEY `IX_ELMAH_Error_App_Time_Seql` (`Application`(10),`TimeUtc`,`Sequence`),
  KEY `IX_ErrorId_App` (`ErrorId`(8),`Application`(10))
) ENGINE=MyISAM AUTO_INCREMENT=21790 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `elmah_error` */

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `Event_id` int(11) NOT NULL AUTO_INCREMENT,
  `Event_title` varchar(256) DEFAULT NULL,
  `Summary` text,
  `description` text,
  `Event_date` datetime DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `published_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `event` */

insert  into `event`(`Event_id`,`Event_title`,`Summary`,`description`,`Event_date`,`ExpiryDate`,`published_by`) values (16,'4Kas4Ka/4Ka44Ka/4KaP4Ka4ICjgpp/gp4fgprLgpr/gppXgpq4pIOCmuOCmruCmv+CmpOCmv+CmsCDgpqjgpqwt4Kao4Ka/4Kaw4KeN4Kas4Ka+4Kaa4Ka/4KakIOCmleCmruCmv+Cmn+Cmv+CmsCDgpoXgpq3gpr/gprfgp4fgppUg4KaF4Kao4KeB4Ka34KeN4Kag4Ka+4KaoIA==','PHNwYW4gc3R5bGU9ImNvbG9yOiAjMzMzMzMzOyBmb250LWZhbWlseTogc29sYWltYW5saXBpOyBmb250LXNpemU6IDlwdDsgbGluZS1oZWlnaHQ6IDEwcHQ7IGJhY2tncm91bmQtY29sb3I6ICNlYmU4ZTE7Ij7gpqzgpr/gprjgpr/gpo/gprggKOCmn+Cnh+CmsuCmv+CmleCmrikg4Ka44Kau4Ka/4Kak4Ka/4KawIOCmqOCmrC3gpqjgpr/gprDgp43gpqzgpr7gpprgpr/gpqQg4KaV4Kau4Ka/4Kaf4Ka/4KawIOCmheCmreCmv+Cmt+Cnh+CmlSDgpoXgpqjgp4Hgprfgp43gpqDgpr7gpqg8L3NwYW4+','PHUgc3R5bGU9ImxpbmUtaGVpZ2h0OiAxMHB0OyI+PHNwYW4gbGFuZz0iQk4iIHN0eWxlPSJmb250LXNpemU6IDlwdDsgZm9udC1mYW1pbHk6IHNvbGFpbWFubGlwaTsgY29sb3I6ICMzMzMzMzM7Ij7gpqzgpr/gprjgpr/gpo/gprggKOCmn+Cnh+CmsuCmv+CmleCmrikg4Ka44Kau4Ka/4Kak4Ka/4KawIOCmqOCmrC3gpqjgpr/gprDgp43gpqzgpr7gpprgpr/gpqQg4KaV4Kau4Ka/4Kaf4Ka/4KawIOCmheCmreCmv+Cmt+Cnh+CmleCmheCmqOCngeCmt+CnjeCmoOCmvuCmqCAmbmJzcDs8L3NwYW4+PC91PjxzcGFuIHN0eWxlPSJjb2xvcjogIzMzMzMzMzsgZm9udC1mYW1pbHk6IHNvbGFpbWFubGlwaTsgZm9udC1zaXplOiA5cHQ7IGxpbmUtaGVpZ2h0OiAxMHB0OyBiYWNrZ3JvdW5kLWNvbG9yOiAjZWJlOGUxOyI+4KaG4KaX4Ka+4Kau4KeAIOCnpuCnriDgpoXgppXgp43gpp/gp4vgpqzgprAg4Keo4Kem4Ken4KeraOCmuOCmqOCnjeCmp+CnjeCmr+CmvuCnrTrgp6bgp6Yg4KaY4Kaf4Ka/4KaV4Ka+4KefIOCmrOCmv+CmuOCmv+Cmj+CmuCAo4Kaf4KeH4Kay4Ka/4KaV4KauKSDgprjgpq7gpr/gpqTgpr/gprAg4Kao4KasLeCmqOCmv+CmsOCnjeCmrOCmvuCmmuCmv+CmpCDgppXgpq7gpr/gpp/gpr/gprAg4KaF4Kat4Ka/4Ka34KeH4KaVIOCmheCmqOCngeCmt+CnjeCmoOCmvuCmqOCnhyDgprjgpq7gpr/gpqTgpr/gprDgprjgppXgprIg4Ka44Kam4Ka44KeN4Kav4KaV4KeHIOCmheCmguCmtuCml+CnjeCmsOCmueCmo+Cnh+CmsCDgppzgpqjgp43gpq8g4Kas4Ka/4Ka24KeH4Ka34Kat4Ka+4Kas4KeHIOCmheCmqOCngeCmsOCni+CmpyDgppXgprDgpr4g4Kav4Ka+4Kaa4KeN4Kab4KeH4KWkIOCmreCnh+CmqOCnjeCmr+CngS0g4Kas4KeB4Kef4KeH4Kaf4KaF4Kah4Ka/4Kaf4KeL4Kaw4Ka/4Kef4Ka+4KauPC9zcGFuPg==','2015-10-08 00:00:00','2015-10-31 00:00:00',NULL),(17,'TWVldGluZyBvZiBFeGVjdXRpdmUgQ29tbWl0dGVl','PHNwYW4gc3R5bGU9ImNvbG9yOiAjMzMzMzMzOyBmb250LWZhbWlseTogYXJpYWwsc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMnB4OyBsaW5lLWhlaWdodDogMTMuMzMzM3B4OyBiYWNrZ3JvdW5kLWNvbG9yOiAjZWJlOGUxOyI+T24gNnRoIE9jdG9iZXIgYXQgMTc6MzAgYXQgQlRDTCBDb25mZXJlbmNlIFJvb208L3NwYW4+','PHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9ImxpbmUtaGVpZ2h0OiAxMHB0OyBiYWNrZ3JvdW5kOiAjZWJlOGUxIG5vbmUgcmVwZWF0IHNjcm9sbCAwJSAwJTsiPjxzcGFuIHN0eWxlPSJjb2xvcjogIzMzMzMzMzsgZm9udC1mYW1pbHk6IGFyaWFsLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogOXB0OyBsaW5lLWhlaWdodDogMTBwdDsiPkFuRXhlY3V0aXZlIENvbW1pdHRlZSBtZWV0aW5nIHdpbGwgYmUgaGVsZCBvbiA2PC9zcGFuPjxzdXAgc3R5bGU9ImNvbG9yOiAjMzMzMzMzOyBmb250LWZhbWlseTogYXJpYWwsc2Fucy1zZXJpZjsgbGluZS1oZWlnaHQ6IDEwcHQ7Ij50aDwvc3VwPjxzcGFuIHN0eWxlPSJjb2xvcjogIzMzMzMzMzsgZm9udC1mYW1pbHk6IGFyaWFsLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogOXB0OyBsaW5lLWhlaWdodDogMTBwdDsiPiBPY3RvYmVyLCAyMDE1IGF0IDE3OjMwIGF0IEJUQ0wgQ29uZmVyZW5jZSBSb29tIHJlZ2FyZGluZyBCQ1MgKFRlbGVjb20pIFNhbWl0eUluYXVndXJhdGlvbiBDZXJlbW9ueS4gQWxsIG1lbWJlcnMgb2YgRXhlY3V0aXZlIENvbW1pdHRlZSBhcmUgcmVxdWVzdGVkIHRvcHJlc2VudCBpbiB0aW1lLjwvc3Bhbj48L3A+','2015-10-06 00:00:00','2015-10-31 00:00:00',NULL),(18,'TWVldGluZyBvZiBFeGVjdXRpdmUgQ29tbWl0dGVlIA==','PHNwYW4gc3R5bGU9J2ZvbnQtc2l6ZTogOXB0OyBmb250LWZhbWlseTogImFyaWFsIiwic2Fucy1zZXJpZiI7IGNvbG9yOiAjMzMzMzMzOyc+QW4gRXhlY3V0aXZlIENvbW1pdHRlZSBtZWV0aW5nIHdpbGwgYmUgaGVsZCBvbiA0PHN1cD50aDwvc3VwPiBPY3RvYmVyLCAyMDE1IChTdW5kYXkpIGF0IDE3OjMwIGF0IEJUQ0wgQ29uZmVyZW5jZSBSb29tLi4uPC9zcGFuPg==','PHNwYW4gc3R5bGU9J2ZvbnQtc2l6ZTogOXB0OyBmb250LWZhbWlseTogImFyaWFsIiwic2Fucy1zZXJpZiI7IGNvbG9yOiAjMzMzMzMzOyc+QW4gRXhlY3V0aXZlIENvbW1pdHRlZSBtZWV0aW5nIHdpbGwgYmUgaGVsZCBvbiA0PHN1cD50aDwvc3VwPiBPY3RvYmVyLCAyMDE1IChTdW5kYXkpIGF0IDE3OjMwIGF0IEJUQ0wgQ29uZmVyZW5jZSBSb29tIHJlZ2FyZGluZyBCQ1MgKFRlbGVjb20pIFNhbWl0eSBJbmF1Z3VyYXRpb24gQ2VyZW1vbnkuIEFsbCBtZW1iZXJzIG9mIEV4ZWN1dGl2ZSBDb21taXR0ZWUgYXJlIHJlcXVlc3RlZCB0byBwcmVzZW50IGluIHRpbWUuPC9zcGFuPg==','2015-10-04 00:00:00','2015-10-31 00:00:00',NULL);

/*Table structure for table `executivecommitee` */

DROP TABLE IF EXISTS `executivecommitee`;

CREATE TABLE `executivecommitee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NOT NULL,
  `YearId` int(11) DEFAULT NULL,
  `designationId` int(11) DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=latin1;

/*Data for the table `executivecommitee` */

insert  into `executivecommitee`(`id`,`memberid`,`YearId`,`designationId`,`Priority`) values (139,205,2,87,NULL),(140,156,2,88,NULL),(141,209,2,88,NULL),(142,185,2,88,NULL),(146,361,2,89,NULL),(147,361,2,89,NULL),(286,568,2,87,1),(287,516,2,88,2),(288,572,2,88,3),(289,548,2,88,4),(290,733,2,89,NULL),(291,603,2,91,NULL),(292,663,2,91,NULL),(293,557,2,92,NULL),(294,700,2,93,NULL),(295,717,2,94,NULL),(296,556,2,95,NULL),(297,731,2,96,NULL),(301,751,2,97,NULL),(302,740,2,98,NULL),(303,628,2,99,NULL),(304,620,2,99,NULL),(305,774,2,99,NULL),(306,526,2,99,NULL),(307,826,2,99,NULL),(308,651,2,99,NULL),(309,732,2,99,NULL),(310,473,2,99,NULL),(311,743,2,99,NULL),(312,710,2,99,NULL),(313,635,2,99,NULL),(314,470,3,87,1),(318,544,3,89,NULL),(319,624,3,90,NULL),(320,590,3,91,NULL),(321,567,3,91,NULL),(322,612,3,92,NULL),(323,718,3,93,NULL),(324,717,3,94,NULL),(325,556,3,95,NULL),(326,790,3,96,NULL),(327,700,3,97,NULL),(328,724,3,98,NULL),(329,774,3,99,NULL),(330,516,3,99,NULL),(331,586,3,99,NULL),(332,481,3,99,NULL),(333,526,3,99,NULL),(334,671,3,99,NULL),(335,627,3,99,NULL),(336,514,3,99,NULL),(337,663,3,99,NULL),(338,513,3,99,NULL),(339,635,3,99,NULL),(340,496,6,88,NULL),(341,548,6,88,NULL),(342,529,6,88,NULL),(343,568,6,89,NULL),(344,624,6,91,NULL),(345,590,6,91,NULL),(346,544,6,92,NULL),(347,733,6,93,NULL),(348,669,6,94,NULL),(349,660,6,95,NULL),(350,797,6,96,NULL),(351,570,6,97,NULL),(352,700,6,98,NULL),(353,657,6,99,NULL),(354,500,6,99,NULL),(355,516,6,99,NULL),(356,481,6,99,NULL),(357,756,6,99,NULL),(358,556,6,99,NULL),(359,618,6,99,NULL),(360,783,6,99,NULL),(361,516,5,88,NULL),(362,500,5,89,NULL),(363,568,5,91,NULL),(364,529,5,92,NULL),(365,548,5,93,NULL),(366,477,5,97,NULL),(367,620,5,95,NULL),(368,660,5,97,NULL),(369,533,5,99,NULL),(370,544,5,99,NULL),(371,556,5,99,NULL),(374,547,7,91,NULL),(375,544,7,94,NULL),(376,825,7,92,NULL),(377,531,7,93,NULL),(378,660,7,95,NULL),(379,618,7,96,NULL),(380,670,7,97,NULL),(381,584,7,99,NULL),(382,481,7,99,NULL),(383,810,7,99,NULL),(384,812,7,99,NULL),(385,566,7,99,NULL),(386,491,7,99,NULL),(387,590,7,99,NULL),(388,568,8,87,1),(389,516,8,88,31),(390,548,8,88,3),(391,572,8,88,4),(392,733,8,89,5),(393,603,8,91,6),(394,663,8,91,7),(395,620,8,99,15),(396,660,8,92,8),(397,700,8,93,9),(398,717,8,94,10),(399,556,8,95,11),(400,731,8,96,12),(401,751,8,97,13),(402,740,8,98,14),(403,710,8,99,16),(404,526,8,99,17),(406,651,8,99,19),(407,635,8,99,20),(408,732,8,99,21),(409,774,8,99,22),(410,628,8,99,23),(412,826,8,99,25),(415,470,8,100,2),(416,544,8,100,2),(417,716,8,99,4),(418,743,8,99,10),(419,474,3,88,1),(420,548,3,88,2),(421,500,3,88,3),(422,568,3,100,2),(424,847,3,100,1),(425,693,8,100,100);

/*Table structure for table `header` */

DROP TABLE IF EXISTS `header`;

CREATE TABLE `header` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Image` varchar(256) DEFAULT NULL,
  `Active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `header` */

insert  into `header`(`Id`,`Image`,`Active`) values (12,'-794593683_telecom1.jpg',''),(13,'-1566120084_test Baner_header.png','\0');

/*Table structure for table `hitcounter` */

DROP TABLE IF EXISTS `hitcounter`;

CREATE TABLE `hitcounter` (
  `totalhit` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hitcounter` */

insert  into `hitcounter`(`totalhit`) values (787);

/*Table structure for table `localization` */

DROP TABLE IF EXISTS `localization`;

CREATE TABLE `localization` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `virtualpath` varchar(50) DEFAULT NULL,
  `classname` varchar(50) DEFAULT NULL,
  `culturename` varchar(50) DEFAULT NULL,
  `resourcename` varchar(250) DEFAULT NULL,
  `resourcevalue` text,
  `pagename` varchar(50) DEFAULT NULL,
  `resourcedescription` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `localization` */

insert  into `localization`(`id`,`virtualpath`,`classname`,`culturename`,`resourcename`,`resourcevalue`,`pagename`,`resourcedescription`) values (1,'Default.aspx',NULL,'en-US','LitContent.Text','<p>Bangladesh Civil Service (Telecommunication) Samity [BCS(Telecom) Samity] is an welfare association for the members of BCS(Telecom) Cadre. The Motto of the organization is to increase the cooperation amongst the members and ensure the welfare of the community. Since the inception the organization in 1972, the members of the organization are working as the architect of the Telecommunication and ICT infrastructure of the country. Along with the protection of the professional interest, Samity engages its members in various social and cultural activities.</p>\r\n<p>At the Same time, the Samity is continuously working to assist the Government for building a modern ICT-based society to realize the agenda ‘Digital Bangladesh’ to fulfill ‘Vision 2021’.</p>','Home Page','Page Content'),(6,'ContactUs.aspx',NULL,'en-US','LitContent.Text','<div class=\"contacts-info\">\n<address>\n<i class=\"add-icon\"></i><span>Telejogajog Bhabhan,\n37/E Eskaton<br />Dhaka, Bangladesh\n</span>\n</address>\n<div class=\"phone-footer\">\n<i class=\"phone-icon\"></i><span> 880 2 9320221                           \n</span>\n</div>                       \n<div class=\"email-footer\">\n<i class=\"email-icon\"></i><a href=\"mailto:info@bcstelecom.org.bd\">info@bcstelecom.org.bd</a>\n</div>\n</div>','Contact Us','Page Content');

/*Table structure for table `member_publications` */

DROP TABLE IF EXISTS `member_publications`;

CREATE TABLE `member_publications` (
  `publicationid` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `journalname` varchar(256) DEFAULT NULL,
  `otherparticulars` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`publicationid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `member_publications` */

insert  into `member_publications`(`publicationid`,`memberid`,`title`,`journalname`,`otherparticulars`) values (4,15,'Test','Csdfsdf','sdfsfdsfsdf'),(5,15,'Test','C567','sdfsf'),(6,15,'Test','Csdfsdf','sdfsf'),(7,23,'s','sdf','sdf');

/*Table structure for table `members` */

DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `memberid` int(11) NOT NULL AUTO_INCREMENT,
  `membername` varchar(256) DEFAULT NULL,
  `photograph` varchar(100) DEFAULT NULL,
  `fathername` varchar(256) DEFAULT NULL,
  `mothername` varchar(256) DEFAULT NULL,
  `dateofbirth` varchar(256) DEFAULT NULL,
  `bloodgroup` varchar(10) DEFAULT NULL,
  `nid` varchar(256) DEFAULT NULL,
  `serviceidno` varchar(256) DEFAULT NULL,
  `spouse` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `email2` varchar(256) DEFAULT NULL,
  `contactnooffice` varchar(256) DEFAULT NULL,
  `contactnoresidence` varchar(256) DEFAULT NULL,
  `mobile1` varchar(256) DEFAULT NULL,
  `mobile2` varchar(256) DEFAULT NULL,
  `presentaddress` varchar(1000) DEFAULT NULL,
  `permanentaddress` varchar(1000) DEFAULT NULL,
  `homedistrict` varchar(100) DEFAULT NULL,
  `interest` varchar(1000) DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `username` varchar(256) NOT NULL,
  `banglaname` varchar(256) DEFAULT NULL,
  `designation` varchar(256) DEFAULT NULL,
  `joindate` date DEFAULT NULL,
  `bcsyear` varchar(256) DEFAULT NULL,
  `designationId` int(11) DEFAULT NULL,
  PRIMARY KEY (`memberid`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=849 DEFAULT CHARSET=latin1;

/*Data for the table `members` */

insert  into `members`(`memberid`,`membername`,`photograph`,`fathername`,`mothername`,`dateofbirth`,`bloodgroup`,`nid`,`serviceidno`,`spouse`,`email`,`email2`,`contactnooffice`,`contactnoresidence`,`mobile1`,`mobile2`,`presentaddress`,`permanentaddress`,`homedistrict`,`interest`,`lastupdated`,`username`,`banglaname`,`designation`,`joindate`,`bcsyear`,`designationId`) values (470,'Md Taufique','','','','06-Jun-1957','A+','123456789','2012','','demo@demo.com','','1550151055','','1550151055','','','','Select Home District','','2015-10-03 00:00:00','taufiq1055','4Kau4KeL4Ka54Ka+4Kau4KeN4Kau4KamIOCmpOCnjOCmq+Cmv+CmlQ==','DG, TSC, Gazipur','2015-09-17','',NULL),(471,'Md Shahnewaj','','','','12-Dec-1956','A+','123456789','2015','','demo@demo.com','','1550151058','','1550151055','','','','Select Home District','','2015-10-03 00:00:00','snewaj1058','4Kau4KeL4KaDIOCmtuCmvuCmueCmqOCnh+Cmk+Cnn+CmvuCmnA==','Member (M&O)','2015-09-17','',NULL),(472,'Asadul Islam','','','','30-Jun-1969','A+','123456789','2020','','demo@demo.com','','1550151061','','1550151058','','','','Select Home District','','2015-10-03 00:00:00','asad1061','4KaG4Ka44Ka+4Kam4KeB4KayIOCmh+CmuOCmsuCmvuCmrg==','MD, TSS','2015-09-17','',NULL),(473,'Mizanur Rahman','','','','01-May-1957','A+','123456789','2023','','demo@demo.com','','1550151064','','1550151061','','','','Dhaka','','2015-10-03 00:00:00','mizan1064','4Kau4Ka/4Kac4Ka+4Kao4KeB4KawIOCmsOCmueCmruCmvuCmqA==','GM, OTR','2015-09-17','',NULL),(474,'Swapon Kumar Saha','','','','27-Dec-1956','A+','123456789','2024','','demo@demo.com','','1550151065','','1550151064','','','','Pabna','','2015-10-03 00:00:00','swapon1065','4Ka44KeN4Kas4Kaq4KaoIOCmleCngeCmruCmvuCmsCDgprjgpr7gprngpr4=','GM, North','2015-09-17','',NULL),(475,'Kabir Hussain Bhuiyan','','','','03-Mar-1959','A+','123456789','2025','','demo@demo.com','','1550151067','','1550151065','','','','Comilla','','2015-10-03 00:00:00','kabir1067','4KaV4Kas4Ka/4KawIOCmueCni+CmuOCnh+CmqCDgpq3gp4Hgpp7gpr4=','GM, KTR','2015-09-17','',NULL),(476,'Abdul Aziz','','','','30-Jun-1957','A+','123456789','2026','','demo@demo.com','','1550151068','','1550151067','','','','Khulna','','2015-10-03 00:00:00','aziz1068','4Kau4KeL4KaDIOCmhuCmrOCmpuCngeCmsiDgpobgppzgpr/gppw=','GM, Rangpur','2015-09-17','',NULL),(477,'Md Aminul Hasan','','','','01-Feb-1957','A+','123456789','2028\r\n','','demo@demo.com','','1550151070','','1550151068','','','','Satkhira','','2015-09-17 00:00:00','aminul1070','4Kau4KeL4KaDIOCmhuCmruCmv+CmqOCngeCmsiDgprngpr7gprjgpr7gpqg=','GM, Transmission','2015-09-17','',NULL),(478,'Md Rafiqul Islam','','','','01-Jan-1958','A+','123456789','2029\r\n','','demo@demo.com','','1550151071','','1550151070','','','','Jessore','','2015-09-17 00:00:00','rafiq1071','4Kau4KeL4KaDIOCmsOCmq+Cmv+CmleCngeCmsiDgpofgprjgprLgpr7gpq4=','GM (P&D), BTCL H/Q','2015-09-17','',NULL),(479,'Kabir Hasan','','','','25-Apr-1958','A+','123456789','2030\r\n','','demo@demo.com','','1550151072','','1550151071','','','','Narsingdi','','2015-09-17 00:00:00','kabir1072','4KaV4Kas4Ka/4KawIOCmueCmvuCmuOCmvuCmqA==','Director, TTCs','2015-09-17','',NULL),(480,'Ashok Kumar Mondol','','','','30-Jun-1959','','123456789','2031\r\n','','demo@demo.com','','','','1550151072','','','','Jessore','','2015-09-17 00:00:00','ashok1073','4KaF4Ka24KeL4KaVIOCmleCngeCmruCmvuCmsCDgpq7gpqjgp43gpqHgprI=','PD, JICA Project','2015-09-17','',NULL),(481,'Md Maududul Huq','','','','01-Jan-1959','','123456789','2032\r\n','','demo@demo.com','','','','1550151074','','','','Bogra','','2015-09-17 00:00:00','maudud1074','4Kau4KeL4KaDIOCmruCmk+CmpuCngeCmpuCngeCmsiDgprngppUg','Lien','2015-09-17','',NULL),(482,'Abu Ayuhal Md Moyasir','','','','02-Sep-1959','','123456789','2033\r\n','','demo@demo.com','','','','1550151080','','','','Naogaon','','2015-09-17 00:00:00','moyasir1080','4KaG4Kas4KeBIOCmhuCmieCnn+CngeCmueCmvuCmsiDgpq7gp4vgpoMg4Kau4KeL4Kef4Ka+4Ka44Ka/4Kaw','GM, SS','2015-09-17','',NULL),(483,'Md Moin Uddin','','','','23-Aug-1961','','123456789','2034\r\n','','demo@demo.com','','','','1550151081','','','','Comilla','','2015-09-17 00:00:00','moin1081','4Kau4KeL4KaDIOCmruCmiOCmqCDgpongpqbgp43gpqbgp4Dgpqg=','GM, 1000 Union Project','2015-09-17','',NULL),(484,'Golam Fakhruddin Ahmed Chowdhury','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151082','','','','Select Home District','','2015-09-17 00:00:00','gfachw1082','4KaX4KeL4Kay4Ka+4KauIOCmq+CmluCmsOCngeCmpuCnjeCmpuCmv+CmqCDgpobgprngpq7gp4fgpqYg4Kaa4KeM4Kan4KeB4Kaw4KeA','MD, BTCL (Addl Secretary)','2015-09-17','',NULL),(485,'Md Shahidul Alam (Shamim)','','','','10-Oct-1958','','123456789','2035\r\n','','demo@demo.com','','','','1550151083','','','','Faridpur','','2015-09-17 00:00:00','shahid1083','4Kau4KeL4KaDIOCmtuCmvuCmueCngOCmpuCngeCmsiDgpobgprLgpq4=','GM,Upazilla Telecom','2015-09-17','',NULL),(486,'Tamal Kanti Nandi','','','','11-Nov-1959','','123456789','2037\r\n','','demo@demo.com','','','','1550151086','','','','Chittagong','','2015-09-17 00:00:00','tamal1086','4Kak4Kau4Ka+4KayIOCmleCmvuCmqOCnjeCmpOCmvyAg4Kao4Kao4KeN4Kam4KeA','GM, CTR','2015-09-17','',NULL),(487,'Abul Mansur Md Mahbubul Islam','','','','27-Mar-1957','','123456789','2038\r\n','','demo@demo.com','','','','1550151088','','','','Cox\'s Bazar','','2015-09-17 00:00:00','mansur1088','4KaPLuCmj+Cmri7gpo/gpq4uIOCmruCmvuCmueCmrOCngeCmrOCngeCmsiDgpofgprjgprLgpr7gpq4=','Director Attached to BTCL H/Q','2015-09-17','',NULL),(488,'Moazzem Hossain Bhuyan','','','','01-Jan-1960','','123456789','2039\r\n','','demo@demo.com','','','','1550151089','','','','Tangail','','2015-09-17 00:00:00','moazzem1089','4Kau4KeL4Kef4Ka+4Kac4KeN4Kac4KeH4KauIOCmueCni+CmuOCnh+CmqCDgpq3gp4Hgpp7gpr4=','Director, Rangpur Region','2015-09-17','',NULL),(489,'Mohammed Iqbal Atiqurr Rahman','','','','23-Mar-1960','','123456789','2040\r\n','','demo@demo.com','','','','1550151091','','','','Satkhira','','2015-09-17 00:00:00','atiq1091','4Kau4KeL4KaDIOCmh+CmleCmrOCmvuCmsiDgpobgpqTgpr/gppXgp4HgprAg4Kaw4Ka54Kau4Ka+4Kao','Director (Project Control)','2015-09-17','',NULL),(490,'Abu Bakar Md Mamshad Mashrequi','','','','09-Jan-1961','','123456789','2041\r\n','','demo@demo.com','','','','1550151092','','','','Naogaon','','2015-09-17 00:00:00','mamshad1092','4KaG4Kas4KeBIOCmrOCmleCnjeCmleCmsCDgpq7gp4vgpoMg4Kau4Kau4Ka24Ka+4KamIOCmruCmvuCmtuCmsOCnh+CmleCngA==','Attached to BTCL H/Q','2015-09-17','',NULL),(491,'Md Harun Or Rashid','','','','08-Jun-1960','','123456789','2042\r\n','','demo@demo.com','','','','1550151093','','','','Chandpur','','2015-09-17 00:00:00','harun1093','4Kau4KeL4KaDIOCmueCmvuCmsOCngeCmqC3gpoXgprAt4Kaw4Ka24KeA4Kam','GM, Central, Nilkhet','2015-09-17','',NULL),(492,'Sarker Md Zabed Rabbani','','','','06-Jan-1960','A+','123456789','2043\r\n','','demo@demo.com','','','','1550151097','','','','Rajshahi','','2015-09-17 00:00:00','rabbani1097','4Ka44Kaw4KaV4Ka+4KawIOCmruCni+CmgyDgppzgpr7gpqzgp4fgpqYg4Kaw4Kas4Kas4Ka+4Kao4KeA','Director, CTR','2015-09-17','',NULL),(493,'Md. Mosaddek Ali','','','','17-Sep-2015','A+','123456789','','','demo@demo.com','','','','1550151099','','','','Select Home District','','2015-09-17 00:00:00','mosaddek1099','4Kau4KeL4KaDIOCmruCni+CmuOCmvuCmpuCnjeCmpuCnh+CmlSDgpobgprLgpr8=','Joint Secretary','2015-09-17','',NULL),(494,'Harun or Rashid Khan','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151103','','','','Dhaka','','2015-09-17 00:00:00','harun1103','4Ka54Ka+4Kaw4KeB4KaoIOCmheCmsCDgprDgprbgp4DgpqYg4KaW4Ka+4KaoIA==','Joint Secretary','2015-09-17','',NULL),(495,'Dipak Kumar Biswas','','','','08-Apr-1961','','123456789','2044\r\n','','demo@demo.com','','','','1550151098','','','','Bagerhat','','2015-09-17 00:00:00','dipak1098','4Kam4KeA4Kaq4KaVIOCmleCngeCmruCmvuCmsCDgpqzgpr/gprbgp43gpqzgpr7gprg=','GM, RTR','2015-09-17','',NULL),(496,'Gias Uddin Ahmed','','','','17-Aug-1958','','123456789','2046\r\n','','demo@demo.com','','','','1550151101','','','','Comilla','','2015-09-17 00:00:00','gias1101','4KaX4Ka/4Kef4Ka+4Ka4IOCmieCmpuCnjeCmpuCmv+CmqCDgpobgprngpq7gp4fgpqY=','MD, Teletalk','2015-09-17','',NULL),(497,'Abu Sayed Md Shafiqul iqbal','','','','22-Apr-1960','','','2048\r\n','','demo@demo.com','','','','1550151105','','','','Rajshahi','','2015-09-17 00:00:00','shafiq1105','4KaG4Kas4KeBIOCmuOCmvuCmiOCmpiDgpq7gp4vgpoMg4Ka44Kar4Ka/4KaV4KeB4KayIOCmh+CmleCmrOCmvuCmsg==','GM, DTR, East','2015-09-17','',NULL),(498,'Husnul Mahmud Khan','','','','17-Sep-2015','A+','123456789','','','demo@demo.com','','','','1550151106','','','','Select Home District','','2015-09-17 00:00:00','husnul1106','4Ka54KeB4Ka44Kao4KeB4KayIOCmruCmvuCmueCmruCngeCmpiDgppbgpr7gpqgg','Joint Secretary','2015-09-17','',NULL),(499,'Md Mahfuzar Rahman','','','','01-Jan-1960','','123456789','2049\r\n','','demo@demo.com','','','','1550151107','','','','Kushtia','','2015-09-17 00:00:00','mahfuz1107','4Kau4KeL4KaDIOCmruCmvuCmueCmq+CngeCmnOCmvuCmsCDgprDgprngpq7gpr7gpqg=','Director, 1000 Union','2015-09-17','',NULL),(500,'Khan Ataur Rahman','','','','21-Oct-1960','','123456789','2050\r\n','','demo@demo.com','','','','1550151108','','','','Manikganj','','2015-09-17 00:00:00','ataur1108','4KaW4Ka+4KaoIOCmhuCmpOCmvuCmieCmsCDgprDgprngpq7gpr7gpqg=','GM, DTR(South)','2015-09-17','',NULL),(501,'Prodip Ranjan Roy','','','','22-Jan-1962','','123456789','2051\r\n','','demo@demo.com','','','','1550151110','','','','Kishoreganj','','2015-09-17 00:00:00','prodip1110','4Kaq4KeN4Kaw4Kam4KeA4KaqIOCmsOCmnuCnjeCmnOCmqCDgprDgpr7gp58=','Director, DTR (East)','2015-09-17','',NULL),(502,'Faruk Ahmed','','','','02-Jan-1960','','123456789','2052\r\n','','demo@demo.com','','','','1550151111','','','','Brahmanbaria','','2015-09-17 00:00:00','faruk1111','4Kar4Ka+4Kaw4KeB4KaVIOCmhuCmueCmruCnh+CmpiA=','Director, Teletalk in Lien','2015-09-17','',NULL),(503,'Kazi Md Golam Kuddus','','','','03-Apr-1960','','123456789','2053\r\n','','demo@demo.com','','','','1550151114','','','','Rangpur','','2015-09-17 00:00:00','kuddus1114','4KaV4Ka+4Kac4KeAIOCmruCni+CmgyDgppfgp4vgprLgpr7gpq4g4KaV4KeB4Kam4KeN4Kam4KeB4Ka4IA==','Director, Teletalk in Lien','2015-09-17','',NULL),(504,'Md Shahjahan Ali','','','','06-Dec-1959','A+','123456789','2054\r\n','','demo@demo.com','','','','1550151117','','','','Jamalpur','','2015-09-17 00:00:00','sjahan1117','4Kau4KeL4KaDIOCmtuCmvuCmueCmnOCmvuCmueCmvuCmqCDgpobgprLgp4A=','Director, TSC','2015-09-17','',NULL),(505,'Md Mizanur Rahman','','','','25-Aug-1960','','123456789','2055\r\n','','demo@demo.com','','','','1550151118','','','','Pabna','','2015-09-17 00:00:00','mizan1118','4Kau4KeL4KaDIOCmruCmv+CmnOCmvuCmqOCngeCmsCDgprDgprngpq7gpr7gpqg=','Director (Dev. Coordination)','2015-09-17','',NULL),(506,'Abul Monsur Md. Sarf Uddin','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151120','','','','Select Home District','','2015-09-17 00:00:00','monsur1120','4KaG4Kas4KeB4KayIOCmruCmqOCmuOCngeCmsCDgpq7gp4vgpoMg4Ka24Ka+4Kaw4KarIOCmieCmpuCnjeCmpuCmv+CmqCA=','Joint Secretary','2015-09-17','',NULL),(507,'Md. Habibur Rahman','','','','20-Feb-1960','','123456789','2056\r\n','','demo@demo.com','','','','1550155007','','','','Kurigram','','2015-09-17 00:00:00','habib5007','4Kau4KeL4KaDIOCmueCmvuCmrOCmv+CmrOCngeCmsCDgprDgprngpq7gpr7gpqg=','Director, RajTR','2015-09-17','',NULL),(508,'AKM Jafar Sadek','','','','12-Jan-1958','','123456789','2057\r\n','','demo@demo.com','','','','1550151123','','','','Faridpur','','2015-09-17 00:00:00','jafar1123','4KaPLuCmleCnhy7gpo/gpq4uIOCmnOCmvuCmq+CmsCDgprjgpr7gpqbgp4fgppU=','AGM(P&D), BTCL H/Q','2015-09-17','',NULL),(509,'A H M Shamsuzzaman','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151124','','','','Select Home District','','2015-09-17 00:00:00','szaman1124','4KaP4KaP4KaH4Kaa4KaP4KauIOCmtuCmvuCmruCmuOCngeCmnOCnjeCmnOCmvuCmruCmvuCmqA==','Deputy Secretary','2015-09-17','',NULL),(510,'Md. Shah Alam','','','','15-Oct-1959','','123456789','2058\r\n','','demo@demo.com','','','','1550155200','','','','Chittagong','','2015-09-17 00:00:00','salam5200','4Kau4KeL4KaDIOCmtuCmvuCmuSDgpobgprLgpq4g','Divisional Engineer, Teletalk in Lien','2015-09-17','',NULL),(511,'Md Shamsul Alam','','','','15-Mar-1961','','123456789','2059\r\n','','demo@demo.com','','','','1550151126','','','','Kurigram','','2015-09-17 00:00:00','salam1126','4Kau4KeL4KaDIOCmuOCmvuCmruCmuOCngeCmsiDgpobgprLgpq4=','GM, STR','2015-09-17','',NULL),(512,'SM Ataul Karim','','','','16-Feb-1961','','123456789','2060\r\n','','demo@demo.com','','','','1550151127','','','','Sirajgonj','','2015-09-17 00:00:00','ataul1127','4KaP4Ka4LiDgpo/gpq4uIOCmhuCmpOCmvuCmieCmsiDgppXgprDgpr/gpq4=','PD, Optical Fibre Cable Project','2015-09-17','',NULL),(513,'Monjur Ahmed','','','','01-Jan-1956','','123456789','2061\r\n','','demo@demo.com','','','','1550151128','','','','Chandpur','','2015-09-17 00:00:00','monjur1128','4Kau4KeL4KaDIOCmruCmqOCmnOCngeCmsCDgpobgprngpq7gp4fgpqY=','GM, DTR (West)','2015-09-17','',NULL),(514,'Mir Kasir Uddin Iqbal','','','','07-Mar-1961','','123456789','2062\r\n','','demo@demo.com','','','','1550151129','','','','Chittagong','','2015-09-17 00:00:00','kasir1129','4Kau4KeA4KawIOCmleCmm+Cmv+CmsCDgpongpqbgp43gpqbgpr/gpqgg4KaH4KaV4Kas4Ka+4Kay','Director, Upazilla Telecom','2015-09-17','',NULL),(515,'Mir Shahnewaj','','','','01-Jan-1968','','123456789','2063\r\n','','demo@demo.com','','','','1550151130','','','','Sherpur','','2015-09-17 00:00:00','snewaj1130','4Kau4KeA4KawIOCmtuCmvuCmuSDgpqjgp4fgppPgp5/gpr7gppw=','Director, TDR','2015-09-17','',NULL),(516,'Md Ashraful Islam','','','','20-Jan-2015','A+','123456789','2064\r\n','','demo@demo.com','','','','1550151131','','','','Kushtia','','2015-09-17 00:00:00','ashraf1131','4Kau4KeL4KaDIOCmhuCmtuCmsOCmvuCmq+CngeCmsiDgpofgprjgprLgpr7gpq4=','Director, Staff-1','2015-09-16','',NULL),(517,'Prabal Kumar Shil','','','','30-Mar-1960','','123456789','2065\r\n','','demo@demo.com','','','','1550151133','','','','Chittagong','','2015-09-17 00:00:00','prabal1133','4Kaq4KeN4Kaw4Kas4Ka+4KayIOCmleCngeCmruCmvuCmsCDgprbgp4DgprI=','Director, CTR','2015-09-17','',NULL),(518,'Md Mushfiqur Rahman','','','','11-Dec-1956','','123456789','2066\r\n','','demo@demo.com','','','','1550151134','','','','Barisal','','2015-09-17 00:00:00','mushfiq1134','4Kau4KeL4KaDIOCmruCngeCmtuCmq+Cmv+CmleCngeCmsCDgprDgprngpq7gpr7gpqg=','Director, TNDP','2015-09-17','',NULL),(519,'Md Abdul Malek','','','','02-Jun-1956','','123456789','2067','','demo@demo.com','','','','1550151135','','','','Khulna','','2015-09-17 00:00:00','malek1135','4Kau4KeL4KaDIOCmhuCmrOCmpuCngeCmsiDgpq7gpr7gprLgp4fgppU=','Director, R&T','2015-09-17','',NULL),(520,'Md Ferdaus Alam','','','','01-Jan-1958','','123456789','2068\r\n','','demo@demo.com','','','','1550151137','','','','Nilphamari','','2015-09-17 00:00:00','ferdus1137','4Kau4KeL4KaDIOCmq+Cnh+CmsOCmpuCnjOCmuCDgpobgprLgpq4=','DE, TSC','2015-09-17','',NULL),(521,'Md Sharifuzzaman','','','','29-Sep-1959','','123456789','2069\r\n','','demo@demo.com','','','','1550151139','','','','Chapai Nawabganj','','2015-09-17 00:00:00','sharif1139','4Kau4KeL4KaDIOCmtuCmsOCmv+Cmq+CngeCmnOCnjeCmnOCmvuCmruCmvuCmqA==','Director, International','2015-09-17','',NULL),(522,'Md Tofael Ahmed','','','','03-Mar-1960','A+','123456789','2070\r\n','','demo@demo.com','','','','1550151141','','','','Noakhali','','2015-09-17 00:00:00','tofael1141','4Kau4KeL4Ka54Ka+4Kau4KeN4Kau4KamIOCmpOCni+Cmq+CmvuCnn+Cnh+CmsiDgpobgprngpq7gp4fgpqY=','AGM, OTR','2015-09-17','',NULL),(523,'ASM Manjurul Kader','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151150','','','','Noakhali','','2015-09-17 00:00:00','mkader1150','4KaP4KaP4Ka44KaP4KauIOCmruCmqOCmnOCngeCmsCDgppXgpr7gpqbgp4fgprAg','Deputy Secretary','2015-09-17','',NULL),(524,'Bodiar Rahman','','','','17-Sep-2015','0-','123456789','','','demo@demo.com','','','','1550151151','','','','Select Home District','','2015-09-17 00:00:00','bodiar1151','4Kas4Kam4Ka/4Kef4Ka+4KawIOCmsOCmueCmruCmvuCmqCA=','Deputy Secretary','2015-09-17','',NULL),(525,'Md Golzar Hossain','','','','21-Oct-1960','','123456789','2071\r\n','','demo@demo.com','','','','1550151152','','','','Sirajgonj','','2015-09-17 00:00:00','golzar1152','4Kau4KeL4KaDIOCml+Cni+CmsuCmnOCmvuCmsCDgprngp4vgprjgp4fgpqg=','Director, DTR (South)','2015-09-17','',NULL),(526,'Md Moshiur Rahman','','','','26-Jun-1963','','123456789','2072\r\n','','demo@demo.com','','','','1550151160','','','','Barisal','','2015-09-17 00:00:00','moshiur1160','4Kau4KeL4KaDIOCmruCmtuCmv+CmieCmsCDgprDgprngpq7gpr7gpqg=','Director, Planning','2015-09-17','',NULL),(527,'Md Rafiqul Islam','','','','04-Jan-1965','','123456789','2073\r\n','','demo@demo.com','','','','1550151161','','','','Sirajgonj','','2015-09-17 00:00:00','rafiq1161','4Kau4KeL4KaDIOCmsOCmq+Cmv+CmleCngeCmsiDgpofgprjgprLgpr7gpq4=','Director, DTR (East)','2015-09-17','',NULL),(528,'Asaduzzaman Chowdhury','','','','30-Jul-1965','','123456789','2074\r\n','','demo@demo.com','','','','1550151162','','','','Brahmanbaria','','2015-09-17 00:00:00','asad1162','4KaG4Ka44Ka+4Kam4KeB4Kac4KeN4Kac4Ka+4Kau4Ka+4KaoIOCmmuCnjOCmp+CngeCmsOCngA==','Director, Company Secretary','2015-09-17','',NULL),(529,'Rafiqul Matin','','','','22-Jan-1964','','123456789','2075\r\n','','demo@demo.com','','','','1550151163','','','','Rajbari','','2015-09-17 00:00:00','matin1163','4Kaw4Kar4Ka/4KaV4KeB4KayIOCmruCmpOCmv+CmqCA=','Director, DTR(Central)','2015-09-17','',NULL),(530,'Golam Sarwar-E-Kainat','','','','06-Jan-2015','','123456789','2076\r\n','','demo@demo.com','','','','1550151164','','','','Nilphamari','','2015-09-17 00:00:00','kainat1164','4KaX4KeL4Kay4Ka+4KauIOCmuOCmvuCmsOCmk+Cnn+CmvuCmsC3gpoct4KaV4Ka+4Kef4Kao4Ka+4Kak','Deputy Secretary','2015-09-17','',NULL),(531,'Md Abul Fazal','','','','31-Dec-1964','A+','123456789','2077\r\n','','demo@demo.com','','','','1550151165','','','','Kishoreganj','','2015-09-17 00:00:00','fazal1165','4Kau4KeL4KaDIOCmhuCmrOCngeCmsiDgpqvgppzgprI=','Director, TSC','2015-09-17','',NULL),(532,'Md Abdur Razzak','','','','08-Jan-1965','','123456789','2078\r\n','','demo@demo.com','','','','1550151166','','','','Sirajgonj','','2015-09-17 00:00:00','razzak1166','4KaG4Kas4Kam4KeB4KawIOCmsOCmvuCmnOCnjeCmnOCmvuCmlSA=','Director','2015-09-17','',NULL),(533,'Md Ataur Rahman','','','','20-Feb-2015','','123456789','2079\r\n','','demo@demo.com','','','','1550151167','','','','Natore','','2015-09-17 00:00:00','ataur1167','4Kau4KeL4KaDIOCmhuCmpOCmvuCmieCmsCDgprDgprngpq7gpr7gpqgg','Deputy Secretary','2015-09-17','',NULL),(534,'Md Jainal Abedin','','','','01-Dec-1965','','','2080\r\n','','demo@demo.com','','','','1550151168','','','','Rajshahi','','2015-09-17 00:00:00','jainal1168','4Kac4Kef4Kao4Ka+4KayIOCmhuCmrOCnh+CmpuCngOCmqA==','Attached to BTCL H/Q','2015-09-17','',NULL),(535,'AKM Habibur Rahman','','','','28-Nov-1965','A+','123456789','2081\r\n','','demo@demo.com','','','','1550151171','','','','Dinajpur','','2015-09-17 00:00:00','habib1169','4KaPLCDgppXgp4csIOCmj+CmriDgprngpr7gpqzgpr/gpqzgp4HgprAg4Kaw4Ka54Kau4Ka+4Kao','Director','2015-09-17','',NULL),(536,'Md Asir Uddin Sarder','','','','02-Feb-1966','','123456789','2082\r\n','','demo@demo.com','','','','1550151170','','','','Naogaon','','2015-09-17 00:00:00','asir1170','4Kau4KeL4KaDIOCmhuCmuOCmv+CmsCDgpongpqbgp43gpqbgpr/gpqgg4Ka44Kaw4Kam4Ka+4KawIA==','Deputy Secretary','2015-09-17','',NULL),(537,'Muhammed Zeyadul Anam','','','','28-Nov-1965','A+','123456789','2083\r\n','','demo@demo.com','','','','1550151171','','','','Dinajpur','','2015-09-17 00:00:00','zanam1171','4Kau4KeB4Ka54Ka+4Kau4KeN4Kau4KamIOCmnOCnh+Cnn+CmvuCmpuCngeCmsiDgpobgpqjgpr7gpq4=','Director','2015-09-17','',NULL),(538,'Mohammed Taurit','','','','27-Oct-1964','0-','123456789','2084\r\n','','demo@demo.com','','','','1550151172','','','','Habiganj','','2015-09-17 00:00:00','taurit1172','4Kau4KeL4KaDIOCmpOCmvuCmk+CmsOCmv+CmpA==','Divisional Engineer, Attached','2015-09-17','',NULL),(539,'Md Abdul Mokaddem','','','','16-Dec-1963','','123456789','2085\r\n','','demo@demo.com','','','','1550151173','','','','Sirajgonj','','2015-09-17 00:00:00','mokaddem1173','4Kau4KeL4KaDIOCmhuCmrOCnjeCmpuCngeCmsiDgpq7gp4vgppXgpr7gpqbgp43gpqbgp4fgpq4=','Director, SAT Project','2015-09-17','',NULL),(540,'Md Yousuf Niaz','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151174','','','','Bogra','','2015-09-17 00:00:00','yousuf1174','4Kau4KeL4KaDIOCmh+CmieCmuOCngeCmqyDgpqjgpr/gp5/gpr7gppw=','Left & Consultant, UGC','2015-09-17','',NULL),(541,'Md Maksudur Rahman Akanda','','','','30-Dec-1960','','123456789','2087\r\n','','demo@demo.com','','','','1550151175','','','','Netrokona','','2015-09-17 00:00:00','akanda1175','4Kau4KeL4KaDIOCmruCmvuCmleCmm+CngeCmpuCngeCmsCDgprDgprngpq7gpr7gpqgg4KaG4KaV4Kao4KeN4Kam4KWk','Director, Procurement','2015-09-17','',NULL),(542,'Fakhrul Haider Chowdhury','','','','03-Jan-1962','','123456789','2088\r\n','','demo@demo.com','','','','1550151176','','','','Lakshmipur','','2015-09-17 00:00:00','fakhrul1176','4Kar4KaW4Kaw4Kau4KeN4Kao4KayIOCmueCmvuCnn+CmpuCmvuCmsCDgpprgp4zgpqfgp4HgprDgp4A=','Director, DTR (South)','2015-09-17','',NULL),(543,'Jagadis Chandra Mondol','','','','10-Oct-1965','','123456789','2089\r\n','','demo@demo.com','','','','1550151177','','','','Jhalakathi','','2015-09-17 00:00:00','jagadis1177','4Kac4KaX4Kam4KeA4Ka4IOCmmuCmqOCnjeCmpuCnjeCmsCDgpq7gpqjgp43gpqHgprI=','Director, Barisal','2015-09-17','',NULL),(544,'Md Shahjahan','','','','12-Oct-1962','','123456789','2090\r\n','','demo@demo.com','','','','1550151178','','','','Mymensingh','','2015-09-17 00:00:00','sjahan1178','4Kau4KeL4KaDIOCmtuCmvuCmueCmnOCmvuCmueCmvuCmqA==','Director, DTR(North)','2015-09-17','',NULL),(545,'Sheikh Riaz Ahmed','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151179','','','','Mymensingh','','2015-09-17 00:00:00','riaz','4Ka24KeH4KaWIOCmsOCmv+Cnn+CmvuCmnCDgpobgprngpq7gp4fgpqY=','Deputy Secretary','2015-09-17','',NULL),(546,'Md Mahbubur Rahman','','','','14-Nov-1964','','123456789','2091\r\n','','demo@demo.com','','','','1550151180','','','','Feni','','2015-09-17 00:00:00','mahbub1180','4Kau4KeL4KaDIOCmruCmvuCmueCmrOCngeCmrOCngeCmsCDgprDgprngpq7gpr7gpqg=','Director, Inspection','2015-09-17','',NULL),(547,'Khandker Jubair Hasan','','','','26-Mar-1962','','123456789','2092\r\n','','demo@demo.com','','','','1550151181','','','','Rajshahi','','2015-09-17 00:00:00','zubair1181','4KaW4KeL4Kao4KeN4Kam4KaV4Ka+4KawIOCmr+CngeCmrOCmvuCnn+Cnh+CmsCDgprngpr7gprjgpr7gpqg=','Director, DTR (West)','2015-09-17','',NULL),(548,'Md Sahab Uddin','','','','06-Jan-1965','','123456789','2093\r\n','','demo@demo.com','','','','1550151182','','','','Madaripur','','2015-09-17 00:00:00','sahab1182','4Kau4KeL4KaDIOCmuOCmvuCmueCmvuCmrCDgpongpqbgp43gpqbgpr/gpqg=','Director, M&O-1','2015-09-17','',NULL),(549,'Ajit Kumar Muhury','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151183','','','','Chittagong','','2015-09-17 00:00:00','ajit1183','4KaF4Kac4Ka/4KakIOCmleCngeCmruCmvuCmsCDgpq7gp4Hgprngp4HgprDgpr8=','Director, Left','2015-09-17','',NULL),(550,'Md Abdur Rauf','','','','30-Jun-1962','','123456789','2095\r\n','','demo@demo.com','','','','1550151184','','','','Brahmanbaria','','2015-09-17 00:00:00','rauf1184','4Kau4KeL4KaDIOCmhuCmrOCmpuCngeCmsCDgprDgpongpqs=','Director, BTCL H/Q','2015-09-17','',NULL),(551,'Md Nazim Uddin','','','','07-Jan-1958','','123456789','2096\r\n','','demo@demo.com','','','','1550151185','','','','Dhaka','','2015-09-17 00:00:00','nazim1185','4Kau4KeL4KaDIOCmqOCmvuCmnOCmv+CmriDgpongpqbgp43gpqbgpr/gpqg=','Director, 89 Upazilla','2015-09-17','',NULL),(552,'Md Azam Ali','','','','23-Oct-1963','','123456789','2097\r\n','','demo@demo.com','','','','1550151190','','','','Kurigram','','2015-09-17 00:00:00','azam1190','4Kau4KeL4KaDIOCmhuCmnOCmriDgpobgprLgp4A=','Director, Planning','2015-09-17','',NULL),(553,'Mahbub-E-Alam','','','','20-Jan-1964','','123456789','2098\r\n','','demo@demo.com','','','','1550151191','','','','Dhaka','','2015-09-17 00:00:00','mahbub1191','4Kau4Ka+4Ka54Kas4KeB4KasLeCmhy3gpobgprLgpq4=','DY Project Director','2015-09-17','',NULL),(554,'Md Saiful Islam','','','','27-Jul-1962','','123456789','2099\r\n','','demo@demo.com','','','','1550151192','','','','Select Home District','','2015-09-17 00:00:00','saiful1192','4Kau4KeL4KaDIOCmuOCmvuCmh+Cmq+CngeCmsiDgpofgprjgprLgpr7gpq4=','Director-2, TNDP','2015-09-17','',NULL),(555,'Md Taskinur Rahman','','','','24-Mar-1965','','','2100\r\n','','demo@demo.com','','','','1550151193','','','','Select Home District','','2015-09-17 00:00:00','taskin1193','4Kau4KeL4KaDIOCmpOCmvuCmuOCmleCmv+CmqOCngeCmsCDgprDgprngpq7gpr7gpqg=','Director','2015-09-17','',NULL),(556,'Sanjib Kumar Ghatak','','','','09-Sep-1965','','123456789','2101\r\n','','demo@demo.com','','','','1550151194','','','','Select Home District','','2015-09-17 00:00:00','sanjib1194','4Ka44Kac4KeA4KasIOCmleCngeCmruCmvuCmsCDgppjgpp/gppU=','Director','2015-09-17','',NULL),(557,'Md Anwar Hossain','','','','03-Feb-1962','','123456789','2102\r\n','','demo@demo.com','','','','1550151195','','','','Select Home District','','2015-09-17 00:00:00','anwar1195','4Kau4KeL4KaDIOCmhuCmqOCni+Cnn+CmvuCmsCDgprngp4vgprjgp4fgpqg=','Divisional Engineer, Lien','2015-09-17','',NULL),(558,'Kamalesh Biswas','','','','23-Nov-1963','','123456789','2103\r\n','','demo@demo.com','','','','1550151196','','','','Select Home District','','2015-09-17 00:00:00','kamales1196','4KaV4Kau4Kay4KeH4Ka2IOCmrOCmv+CmtuCnjeCmrOCmvuCmuCA=','Director','2015-09-17','',NULL),(559,'Subhash Chandra Roy','','','','30-Nov-1963','','123456789','2104\r\n','','demo@demo.com','','','','1550151198','','','','Select Home District','','2015-09-17 00:00:00','kuddus1197','4Ka44KeB4Kat4Ka+4Ka3IOCmmuCmqOCnjeCmpuCnjeCmsCDgprDgpr7gp58=','Director','2015-09-17','',NULL),(560,'Md Rezaul Kabir','','','','30-Nov-1963','','123456789','2105\r\n','','demo@demo.com','','','','1550151198','','','','Select Home District','','2015-09-17 00:00:00','rezaul1198','4Kau4KeL4KaDIOCmsOCnh+CmnOCmvuCmieCmsiDgppXgpqzgpr/gprA=','Director','2015-09-17','',NULL),(561,'Ansar Ali','','','','05-Nov-1965','','123456789','2106\r\n','','demo@demo.com','','','','1550151199','','','','Select Home District','','2015-09-17 00:00:00','ansar','4Kau4KeL4KaDIOCmhuCmqOCmm+CmvuCmsCDgpobgprLgp4A=','DE, Lien','2015-09-17','',NULL),(562,'Kazi Nizam Uddin','','','','02-Feb-1964','','123456789','2108\r\n','','demo@demo.com','','','','1550151201','','','','Select Home District','','2015-09-17 00:00:00','nizam1201','4KaV4Ka+4Kac4KeAIOCmqOCmv+CmnOCmvuCmriDgpongpqbgp43gpqbgpr/gpqg=','Director','2015-09-17','',NULL),(563,'Md Aminur Rahman','','','','01-Jan-1966','','123456789','2109\r\n','','demo@demo.com','','','','1550151202','','','','Select Home District','','2015-09-17 00:00:00','amin1202','4Kau4KeL4KaDIOCmhuCmruCmv+CmqOCngeCmsCDgprDgprngpq7gpr7gpqg=','Director','2015-09-17','',NULL),(564,'Belayet Hossain','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151203','','','','Select Home District','','2015-09-17 00:00:00','belayet1203','4Kas4KeH4Kay4Ka+4Kef4KeH4KakIOCmueCni+CmuOCnh+CmqA==','Left','2015-09-17','',NULL),(565,'Pravash Chandra Roy','','','','21-Sep-1962','','123456789','2110\r\n','','demo@demo.com','','','','1550151204','','','','Select Home District','','2015-09-17 00:00:00','pravash1204','4Kaq4KeN4Kaw4Kat4Ka+4Ka4IOCmmuCmqOCnjeCmpuCnjeCmsCDgprDgpr7gp58=','pravash1204','2015-09-17','',NULL),(566,'Abu Sharif Md Rezaul karim','','','','02-Feb-1965','','123456789','2111\r\n','','demo@demo.com','','','','1550151205','','','','Select Home District','','2015-09-17 00:00:00','rezaul1205','4KaG4Kas4KeBIOCmtuCmsOCngOCmqyDgpq7gp4vgprngpr7gpq7gp43gpq7gpqYg4Kaw4KeH4Kac4Ka+4KaJ4KayIOCmleCmsOCmv+Cmrg==','Director','2015-09-17','',NULL),(567,'Md Nazim Uddin Pramanik','','','','17-Jul-1955','','123456789','2112\r\n','','demo@demo.com','','','','1550151206','','','','Select Home District','','2015-09-17 00:00:00','nazim1206','4Kau4KeL4KaDIOCmqOCmvuCmnOCmv+CmriDgpongpqbgp43gpqbgpr/gpqgg4Kaq4KeN4Kaw4Ka+4Kau4Ka+4Kao4Ka/4KaVIA==','Director, PLR','2015-09-17','',NULL),(568,'Md Abu Taleb','','','','07-Jan-1964','','123456789','2113\r\n','','demo@demo.com','','','','1711567177','','','','Select Home District','','2015-09-17 00:00:00','taleb7177','4Kau4KeL4KaDIOCmhuCmrOCngSDgpqTgpr7gprLgp4fgpqw=','Director (Building Planning)','2015-09-17','',NULL),(569,'Subal Chandra Kundu','','','','16-May-1965','','123456789','2114\r\n','','demo@demo.com','','','','1550151208','','','','Select Home District','','2015-09-17 00:00:00','subal1208','4Ka44KeB4Kas4KayIOCmmuCmqOCnjeCmpuCnjeCmsCDgppXgp4Hgpqjgp43gpqHgp4E=','Director, Attached','2015-09-17','',NULL),(570,'Md Ruhul Kuddus','','','','09-Jun-1963','','123456789','2115\r\n','','demo@demo.com','','','','1550151209','','','','Select Home District','','2015-09-17 00:00:00','ruhul1209','4Kau4KeL4KaDIOCmsOCmruCnjeCmqOCmueCngeCmsiDgppXgp4Hgpqbgp43gpqbgp4Hgprg=','DE, Exchange Installation','2015-09-17','',NULL),(571,'Md Manjur Morshed Sarker','','','','11-Oct-1965','','123456789','2116\r\n','','demo@demo.com','','','','1550151210','','','','Select Home District','','2015-09-17 00:00:00','msarkar1210','4Kau4KeL4KaDIOCmruCmqOCmnOCngeCmsCDgpq7gp4vgprDgp43gprbgp4fgpqYg4Ka44Kaw4KaV4Ka+4Kaw','Director, Attached','2015-09-17','',NULL),(572,'Md Ayub Ali','','','','01-Aug-1962','','123456789','2117\r\n','','demo@demo.com','','','','1550151211','','','','Select Home District','','2015-09-17 00:00:00','ayub1211','4Kau4KeL4KaDIOCmhuCmh+Cnn+CngeCmrCDgpobgprLgp4A=','Director, Attached','2015-09-17','',NULL),(573,'Md Tajul Islam','','','','30-Dec-1963','','123456789','2118\r\n','','demo@demo.com','','','','1550151212','','','','Select Home District','','2015-09-17 00:00:00','tajul1212','4Kau4KeL4KaDIOCmpOCmvuCmnOCngeCmsiDgpofgprjgprLgpr7gpq4=','Director, Attached','2015-09-10','',NULL),(574,'Manishanker Mondol','','','','01-Dec-1962','','123456789','2119\r\n','','demo@demo.com','','','','1550151213','','','','Select Home District','','2015-09-17 00:00:00','mani1213','4Kau4Kao4Ka/4Ka24KaZ4KeN4KaV4KawIOCmruCmqOCnjeCmoeCmsg==','Director, Attached','2015-09-17','',NULL),(575,'Md Abdus Salam','','','','31-Dec-1955','','123456789','2120\r\n','','demo@demo.com','','','','1550151214','','','','Select Home District','','2015-09-17 00:00:00','asalam1214','4Kau4KeL4KaDIOCmhuCmrOCmpuCngeCmuCDgprjgpr7gprLgpr7gpq4=','PLR','2015-09-17','',NULL),(576,'Md Masum Hossain','','','','25-Mar-1963','','123456789','2121\r\n','','demo@demo.com','','','','1550151215','','','','Select Home District','','2015-09-17 00:00:00','masum1215','4Kau4KeL4KaDIOCmruCmvuCmuOCngeCmriDgprngp4vgprjgp4fgpqg=','Director, Attached','2015-09-17','',NULL),(577,'Md Abul Khayer','','','','11-Oct-1963','','123456789','2122\r\n','','demo@demo.com','','','','1550151216','','','','Select Home District','','2015-09-17 00:00:00','khayer1216','4Ka24KeH4KaWIOCmhuCmrOCngeCmsiDgppbgpr7gp5/gp4fgprA=','Director, Attached','2015-09-17','',NULL),(578,'Sheikh Abdul Latif','','','','01-May-1964','','123456789','2123\r\n','','demo@demo.com','','','','1550151217','','','','Select Home District','','2015-09-17 00:00:00','latif1217','4Ka24KeH4KaWIOCmhuCmrOCmpuCngeCmsiDgprLgpqTgpr/gpqs=','Divisional Engineer','2015-09-17','',NULL),(579,'Md Alimuzzaman','','','','30-Aug-1964','','123456789','2124\r\n','','demo@demo.com','','','','1550151218','','','','Select Home District','','2015-09-17 00:00:00','azaman1218','4Kau4KeL4KaDIOCmhuCmsuCmv+CmruCngeCmnOCnjeCmnOCmvuCmruCmvuCmqA==','Divisional Engineer','2015-09-17','',NULL),(580,'Sayed Masud Ali','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151219','','','','Select Home District','','2015-09-17 00:00:00','masud1219','4Ka44KeI4Kef4KamIOCmruCmvuCmuOCngeCmpiDgpobgprLgpr8gIA==','Divisional Engineer','2015-09-17','',NULL),(581,'Md Shahjahan Ali Molla','','','','22-Apr-1963','','123456789','2125\r\n','','demo@demo.com','','','','1550151220','','','','Select Home District','','2015-09-17 00:00:00','sjahan1220','4Kau4KeL4KaDIOCmtuCmvuCmueCmnOCmvuCmueCmvuCmqCDgpobgprLgp4Ag4Kau4KeL4Kay4KeN4Kay4Ka+','Divisional Engineer','2015-09-17','',NULL),(582,'Sukumar Biswas','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151222','','','','Select Home District','','2015-09-17 00:00:00','sukumar1222','4Ka44KeB4KaV4KeB4Kau4Ka+4KawIOCmrOCmv+CmtuCnjeCmrOCmvuCmuA==','Late','2015-09-17','',NULL),(583,'Md Jainal Abedin','','','','13-Apr-1963','','123456789','2127\r\n','','demo@demo.com','','','','1550151223','','','','Select Home District','','2015-09-17 00:00:00','jainal1223','4Kau4KeL4KaDIOCmnOCnn+CmqOCmvuCmsiDgpobgpqzgp4fgpqbgp4Dgpqg=','Divisional Engineer','2015-09-17','',NULL),(584,'Kazi Fazlul Haque','','','','26-Sep-1964','','123456789','2128\r\n','','demo@demo.com','','','','1550151224','','','','Select Home District','','2015-09-17 00:00:00','fazlul1224','4KaV4Ka+4Kac4KeAIOCmq+CmnOCmsuCngeCmsiDgprngppU=','DE, STR','2015-09-17','',NULL),(585,'Utpal Dewan','','','','01-Jun-1964','','123456789','2129\r\n','','demo@demo.com','','','','1550151225','','','','Select Home District','','2015-09-17 00:00:00','utpal1225','4KaJ4KeO4Kaq4KayIOCmpuCnh+Cmk+Cnn+CmvuCmqA==','Divisional Engineer','2015-09-17','',NULL),(586,'Md Golam Mostafa','','','','01-Oct-1964','','123456789','2130\r\n','','demo@demo.com','','','','1550151226','','','','Select Home District','','2015-09-17 00:00:00','mostafa1226','4Kau4KeL4KaDIOCml+Cni+CmsuCmvuCmriDgpq7gp4vgprjgpqTgp43gpq7gpqvgpr4=','Divisional Engineer','2015-09-17','',NULL),(587,'Md Abdul Awal Khan','','','','13-Aug-1963','','123456789','2131\r\n','','demo@demo.com','','','','1550151227','','','','Select Home District','','2015-09-17 00:00:00','awal1227','4Kau4KeL4KaDIOCmhuCmrOCnjeCmpuCngeCmsiDgpobgppPgp5/gpr7gprIg4KaW4Ka+4KaB4Kao','Divisional Engineer','2015-09-17','',NULL),(588,'Gopinath Acharjya','','','','30-Oct-1964','','123456789','2132\r\n','','demo@demo.com','','','','1550151228','','','','Select Home District','','2015-09-17 00:00:00','gopi1228','4KaX4KeL4Kaq4KeA4Kao4Ka+4KalIOCmhuCmmuCmvuCmsOCnjeCmr+CnjeCmrw==','Divisional Engineer','2015-09-17','',NULL),(589,'Khandker Abdul Gafur','','','','01-Oct-1965','','123456789','2133\r\n','','demo@demo.com','','','','1550151229','','','','Select Home District','','2015-09-17 00:00:00','agafur1229','4KaW4Kao4KeN4Kam4KaV4Ka+4KawIOCmhuCmrOCnjeCmpuCngeCmsiDgppfgpqvgp4HgprA=','Divisional Engineer','2015-09-17','',NULL),(590,'Md Nasir Uddin Tarafder','','','','17-Sep-2015','','','','','demo@demo.com','','','','1550151230','','','','Select Home District','','2015-09-17 00:00:00','nasir1230','4Kau4KeL4KaDIOCmqOCmvuCmuOCmv+CmsCDgpongpqbgp43gpqbgpr/gpqgg4Kak4Kaw4Kar4Kam4Ka+4Kaw','Deputy Secretary','2015-09-17','',NULL),(591,'Md Abdur Rahim','','','','28-Oct-1965','','123456789','2135\r\n','','demo@demo.com','','','','1550151231','','','','Select Home District','','2015-09-17 00:00:00','rahim1231','4Kau4KeL4KaDIOCmhuCmrOCnjeCmpuCngeCmsCDgprDgprngpr/gpq4=','Divisional Engineer','2015-09-17','',NULL),(592,'Pradip Kumar Saha','','','','30-Sep-1965','','123456789','2136\r\n','','demo@demo.com','','','','1550151232','','','','Select Home District','','2015-09-17 00:00:00','pradip1232','4Kaq4KeN4Kaw4Kam4KeA4KaqIOCmleCngeCmruCmvuCmsCDgprjgpr7gprngpr4=','Divisional Engineer','2015-09-17','',NULL),(593,'Md Ashraf Dad Khan','','','','07-Jan-1965','','123456789','2137\r\n','','demo@demo.com','','','','1550151233','','','','Select Home District','','2015-09-17 00:00:00','aashraf1233','4Kau4KeL4KaDIOCmhuCmtuCmsOCmvuCmqyDgpqbgpr7gpqYg4KaW4Ka+4Kao','Divisional Engineer','2015-09-17','',NULL),(594,'Md Shahidul Karim','','','','04-Apr-1963','','123456789','2138\r\n','','demo@demo.com','','','','1550151234','','','','Select Home District','','2015-09-17 00:00:00','shahid1234','4Kau4KeL4KaDIOCmtuCmueCmv+CmpuCngeCmsiDgppXgprDgpr/gpq4=','Divisional Engineer','2015-09-17','',NULL),(595,'SM Farhad Hossain','','','','05-Jan-1965','','123456789','2139\r\n','','demo@demo.com','','','','1550151235','','','','Select Home District','','2015-09-17 00:00:00','farhad1235','4KaP4Ka4LuCmj+Cmri7gpqvgprDgprngpr7gpqYg4Ka54KeL4Ka44KeH4Kao','Divisional Engineer','1965-01-05','',NULL),(596,'Md Ali Sarker','','','','01-Jan-1964','','123456789','2140\r\n','','demo@demo.com','','','','1550151236','','','','Select Home District','','2015-09-17 00:00:00','msarkar1236','4Kau4KeL4Ka54Ka+4Kau4KeN4Kau4KamIOCmhuCmsuCngCDgprjgprDgppXgpr7gprA=','Divisional Engineer','2015-09-17','',NULL),(597,'Md Shawkat Bari','','','','06-Apr-1964','','123456789','2141\r\n','','demo@demo.com','','','','1550151240','','','','Select Home District','','2015-09-17 00:00:00','bari1240','4Kau4KeL4KaDIOCmtuCmk+CmleCmpCDgpqzgpr7gprDgp4A=','DE, TSC','2015-09-17','',NULL),(598,'Md Mamunur Rashid','','','','25-Feb-1967','','123456789','2142\r\n','','demo@demo.com','','','','1550151241','','','','Select Home District','','2015-09-17 00:00:00','mamun1241','4Kau4KeL4KaDIOCmruCmvuCmruCngeCmqOCngeCmsCDgprDgprbgp4DgpqY=','DE, Lien','2015-09-17','',NULL),(599,'Md Abdul Halim','','','','31-Dec-1965','','123456789','2143\r\n','','demo@demo.com','','','','1550151242','','','','Select Home District','','2015-09-17 00:00:00','halim1242','4Kau4KeL4KaDIOCmhuCmrOCmpuCngeCmsiDgprngpr7gprLgpr/gpq4=','DE Procurement (Foreign)','2015-09-17','',NULL),(600,'Md Nuruzzaman Khan','','','','01-Apr-1967','','123456789','2144\r\n','','demo@demo.com','','','','1550151243','','','','Select Home District','','2015-09-17 00:00:00','nkhan1243','4Kau4KeL4KaDIOCmqOCngeCmsOCmruCnjeCmqOCmnOCnjeCmnOCmvuCmruCmvuCmqCDgppbgpr7gpqg=','Divisional Engineer','2015-09-17','',NULL),(601,'Md Abu Sayed Zowarder','','','','17-Mar-1966','','123456789','2145\r\n','','demo@demo.com','','','','1550151246','','','','Select Home District','','2015-09-17 00:00:00','sayed1246','4Kau4KeL4KaDIOCmhuCmrOCngSDgprjgpr7gpofgpqYg4Kac4KeL4Kef4Ka+4Kaw4Kam4Ka+4Kaw','Lien & DGM, Teletalk','2015-09-17','',NULL),(602,'Md Abul Kalam','','','','01-Apr-1965','','123456789','2146\r\n','','demo@demo.com','','','','1550151247','','','','Select Home District','','2015-09-17 00:00:00','kalam1247','4Kau4KeL4KaDIOCmhuCmrOCngeCmsiDgppXgpr7gprLgpr7gpq4=','Lien & DGM, Teletalk','2015-09-17','',NULL),(603,'Md Nasimul Huq Mazumder','','','','03-Mar-1963','','123456789','2147','','demo@demo.com','','','','1550151248','','','','Select Home District','','2015-10-07 00:00:00','nasim1248','4Kau4KeL4KaDIOCmqOCmvuCmuOCmv+CmruCngeCmsiDgprngppUg4Kau4Kac4KeB4Kau4Kam4Ka+4KawIA==','Divisional Engineer','2015-09-17','',NULL),(604,'AKM Abdul Aziz Shibly','','','','08-Feb-1966','','123456789','2148\r\n','','demo@demo.com','','','','1550151249','','','','Select Home District','','2015-09-17 00:00:00','shibly1249','4KaPLiDgppXgp4cuIOCmj+Cmri4g4KaG4Kas4Kam4KeB4KayIOCmhuCmnOCmv+CmnCDgprbgpr/gpqzgprLgp4A=','Divisional Engineer','2015-09-17','',NULL),(605,'Md Humayun Kabir Bhuyan','','','','01-Dec-1966','','123456789','2149\r\n','','demo@demo.com','','','','1550151250','','','','Select Home District','','2015-09-17 00:00:00','hkabir1250','4Kau4KeL4KaDIOCmueCngeCmruCmvuCnn+CngeCmqCDgppXgpqzgpr/gprAg4Kat4KeB4Kae4Ka+','Divisional Engineer','2015-09-17','',NULL),(606,'Md Abdul mannan','','','','04-Apr-1967','','123456789','2150\r\n','','demo@demo.com','','','','1550151252','','','','Select Home District','','2015-09-17 00:00:00','mannan1252','4Kau4KeL4KaDIOCmhuCmrOCmpuCngeCmsiDgpq7gpr7gpqjgp43gpqjgpr7gpqg=','Divisional Engineer','2015-09-17','',NULL),(607,'Amin Ahmed Dewan','','','','01-Dec-1964','','123456789','2151\r\n','','demo@demo.com','','','','1550151253','','','','Select Home District','','2015-09-17 00:00:00','amin1253','4KaG4Kau4Ka/4KaoIOCmhuCmueCmruCnh+CmpiDgpqbgp4fgppPgp5/gpr7gpqg=','Divisional Engineer','2015-09-17','',NULL),(608,'Md Ahsan Habib Tapader','','','','01-Mar-1964','','123456789','2152\r\n','','demo@demo.com','','','','1550151254','','','','Select Home District','','2015-09-17 00:00:00','ahsan1254','4Kau4KeL4KaDIOCmhuCmueCmuOCmvuCmqCDgprngpr7gpqzgp4Dgpqwg4Kak4Kaq4Ka+4Kam4Ka+4Kaw','DE Savar','2015-09-17','',NULL),(609,'Binoy Krishna Gain','','','','01-Jan-1965','','','2153\r\n','','demo@demo.com','','','','1550151256','','','','Select Home District','','2015-09-17 00:00:00','binoy1256','4Kas4Ka/4Kao4KefIOCmleCng+Cmt+CnjeCmoyDgppfgpr7gp5/gp4fgpqg=','Divisional Engineer','2015-09-17','',NULL),(610,'Manjir Ahmed','','','','01-Mar-1967','','123456789','2154\r\n','','demo@demo.com','','','','1550151257','','','','Select Home District','','2015-09-17 00:00:00','manjir1257','4Kau4KeL4KaDIOCmruCmqOCmnOCmv+CmsCDgpobgprngpq7gp4fgpqY=','Divisional Engineer','2015-09-17','',NULL),(611,'Md Hafizur Rahman','','','','01-Jun-1967','','123456789','2155\r\n','','demo@demo.com','','','','1550151258','','','','Select Home District','','2015-09-17 00:00:00','hafiz1258','4Kau4KeL4KaDIOCmueCmvuCmq+Cmv+CmnOCngeCmsCDgprDgprngpq7gpr7gpqg=','Divisional Engineer','2015-09-17','',NULL),(612,'Md Abdul Hannan','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151259','','','','Select Home District','','2015-09-17 00:00:00','hannan1259','4Kau4KeL4KaDIOCmhuCmrOCmpuCngeCmsiDgprngpr7gpqjgp43gpqjgpr7gpqgg','Deputy Secretary','2015-09-17','',NULL),(613,'Md Aslam Hossain','','','','27-Feb-1968','','123456789','2157','','demo@demo.com','','','','1550151260','','','','Select Home District','','2015-09-17 00:00:00','aslam1260','4Kau4KeL4KaDIOCmhuCmuOCmsuCmvuCmriDgprngp4vgprjgp4fgpqg=','Divisional Engineer','2015-09-17','',NULL),(614,'Md Nesar Uddin','','','','12-Dec-1966','','123456789','2158','','demo@demo.com','','','','1550151261','','','','Select Home District','','2015-09-17 00:00:00','nesar1261','4Kau4KeL4KaDIOCmqOCnh+Cmm+CmvuCmsCDgpongpqbgp43gpqbgp4Dgpqg=','Divisional Engineer','2015-09-17','',NULL),(615,'Md Jahangir Taimur','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151262','','','','Select Home District','','2015-09-17 00:00:00','taimur1262','4Kau4KeL4KaD4Kac4Ka+4Ka54Ka+4KaZ4KeN4KaX4Ka/4KawIOCmpOCniOCmruCngeCmsA==','Left','2015-09-17','',NULL),(616,'Md Zahurul Alam Chowdhury','','','','08-Dec-1966','','123456789','2160\r\n','','demo@demo.com','','','','1550151263','','','','Select Home District','','2015-09-17 00:00:00','zahurul1263','4Kau4KeL4KaDIOCmnOCmueCngeCmsOCmruCnjeCmqOCmsiDgpobgprLgpq4g4Kaa4KeM4Kan4KeB4Kaw4KeA','DE, Lien','2015-09-17','',NULL),(617,'Bidyut Chandra Aich','','','','11-Jul-1967','','123456789','2161\r\n','','demo@demo.com','','','','1550151264','','','','Select Home District','','2015-09-17 00:00:00','bidyut1264','4Kas4Ka/4Kam4KeN4Kav4KeB4KeOIOCmmuCmqOCnjeCmpuCnjeCmsCDgpobgpofgppo=','Divisional Engineer','2015-09-17','',NULL),(618,'Sayed Ashrafuzzaman','','','','05-May-1967','','1234567891550151266','2162\r\n','','demo@demo.com','','','','1550151266','','','','Select Home District','','2015-09-17 00:00:00','ashraf1266','4Ka44KeI4Kef4KamIOCmhuCmtuCmsOCmvuCmq+CngeCmnOCnjeCmnOCmvuCmruCmvuCmqA==','Divisional Engineer','2015-09-17','',NULL),(620,'Md Abdul Wahab','','','','10-Jan-1965','','123456789','2163','','demo@demo.com','','','','1550151267','','','','','','2015-10-11 00:00:00','wahab1267','4Kau4KeL4KaDIOCmhuCmrOCmpuCngeCmsiDgppPgprngpr7gpqw=','Divisional Engineer','1994-04-25','',NULL),(621,'Azam Md Abdul Masud','','','','15-Jul-1961','','123456789','2164\r\n','','demo@demo.com','','','','1550151268','','','','Select Home District','','2015-09-17 00:00:00','azam1268','4KaG4Kac4KauIOCmruCni+CmgyDgpobgpqzgp43gpqbgp4HgprIg4Kau4Ka+4Ka44KeB4Kam','Divisional Engineer','2015-09-17','',NULL),(622,'Shah Zulfiquar Hyder','','','','23-Jul-1966','','123456789','2165\r\n','','demo@demo.com','','','','1550151270','','','','Select Home District','','2015-09-17 00:00:00','zulfikar1269','4Ka24Ka+4Ka54KeNIOCmnOCngeCmsuCmq+Cmv+CmleCmvuCmsCDgprngpr7gp5/gpqbgpr7gprA=','DE Procurement (Local), SBN','2015-09-17','',NULL),(623,'Sabbir Ahmed','','','','23-Jul-1966','','123456789','2166\r\n','','demo@demo.com','','','','1550151270','','','','Select Home District','','2015-09-17 00:00:00','sabbir1270','4Ka44Ka+4Kas4Kas4KeA4KawIOCmhuCmueCmruCmpg==','DE Procurement (Local), SBN','2015-09-17','',NULL),(624,'Abdullah Al Mahmud Faruk','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151271','','','','Select Home District','','2015-09-17 00:00:00','farul1271','4KaG4Kas4Kam4KeB4Kay4KeN4Kay4Ka+4Ka5IOCmhuCmsiDgpq7gpr7gprngpq7gp4HgpqYg4Kar4Ka+4Kaw4KeB4KaVIA==','Deputy Secretary','2015-09-17','',NULL),(625,'Md Riazul Islam','','','','15-Jul-1967','','123456789','2168\r\n','','demo@demo.com','','','','1550151272','','','','Select Home District','','2015-09-17 00:00:00','riaz1272','4Kau4KeL4KaDIOCmsOCmv+Cnn+CmvuCmnOCngeCmsiDgpofgprjgprLgpr7gpq4=','Divisional Engineer','2015-09-16','',NULL),(626,'Bikash Ranjan Baidya','','','','08-Mar-1966','','123456789','2169\r\n','','demo@demo.com','','','','1550151274','','','','Select Home District','','2015-09-17 00:00:00','bikash1273','4Kas4Ka/4KaV4Ka+4Ka2IOCmsOCmnuCnjeCmnOCmqCDgpqzgp4jgpqbgp43gpq8=','Divisional Engineer','2015-09-17','',NULL),(627,'Md Shariful Islam','','','','08-Mar-1966','','123456789','2170\r\n','','demo@demo.com','','','','1550151274','','','','Select Home District','','2015-09-17 00:00:00','sharif1274','4Kau4KeL4KaDIOCmtuCmsOCmv+Cmq+CngeCmsiDgpofgprjgprLgpr7gpq4=','Divisional Engineer','2015-09-17','',NULL),(628,'Jagadish Chandra Sarker','','','','01-Jan-1967','','123456789','2171\r\n','','demo@demo.com','','','','1550151275','','','','Select Home District','','2015-09-17 00:00:00','jagadis1275','4Kac4KaX4Kam4KeA4Ka2IOCmmuCmqOCnjeCmpuCnjeCmsCDgprjgprDgppXgpr7gprA=','Divisional Engineer','2015-09-17','',NULL),(629,'Md Abul Kalam Azad','','','','14-Mar-1967','','123456789','2172\r\n','','demo@demo.com','','','','1550151276','','','','Select Home District','','2015-09-17 00:00:00','kalam1276','4Kau4KeL4KaDIOCmhuCmrOCngeCmsiDgppXgpr7gprLgpr7gpq4g4KaG4Kac4Ka+4Kam','Divisional Engineer','2015-09-18','',NULL),(630,'Md Golam Azam Khan','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151277','','','','Select Home District','','2015-09-17 00:00:00','azam1277','4Kau4KeL4KaDIOCml+Cni+CmsuCmvuCmriDgpobgppzgpq4g4KaW4Ka+4KaoIA==','Left','2015-09-17','',NULL),(631,'Md Jahangir Hasan Bhuyan','','','','01-Oct-1965','','','2173\r\n','','demo@demo.com','','','','1550151278','','','','Select Home District','','2015-09-17 00:00:00','jahangir1278','4Kau4KeL4KaDIOCmnOCmvuCmueCmvuCmmeCnjeCml+CngOCmsCDgprngpr7gprjgpr7gpqgg4Kat4KeB4Kae4Ka+','Divisional Engineer','2015-09-17','',NULL),(632,'Md Mafiz Uddin','','','','01-Jan-1966','','123456789','2174\r\n','','demo@demo.com','','','','1550151279','','','','Select Home District','','2015-09-17 00:00:00','mafiz1279','4Kau4KeL4KaDIOCmruCmq+Cmv+CmnCDgpongpqbgp43gpqbgpr/gpqg=','Divisional Engineer','2015-09-17','',NULL),(633,'Md Elias Uddin','','','','12-Dec-1965','','123456789','2175\r\n','','demo@demo.com','','','','1550151280','','','','Select Home District','','2015-09-17 00:00:00','elias1280','4Kau4KeL4KaDIOCmh+CmsuCmv+Cnn+CmvuCmuCDgpongpqbgp43gpqbgpr/gpqg=','Divisional Engineer','2015-09-17','',NULL),(634,'Md Ashraf Hossain','','','','23-Oct-1967','','123456789','2176\r\n','','demo@demo.com','','','','1550151282','','','','Select Home District','','2015-09-17 00:00:00','ashraf1281','4Kau4KeL4KaDIOCmhuCmtuCmsOCmvuCmqyDgprngp4vgprjgp4fgpqg=','Divisional Engineer','2015-09-17','',NULL),(635,'Sheikh Wahiduzzaman','','','','01-Dec-1963','','1234567891550151266','2177\r\n','','demo@demo.com','','','','1550151282','','','','Select Home District','','2015-09-17 00:00:00','wzaman1282','4Ka24KeH4KaWIOCmk+Cnn+CmvuCmueCmv+CmpuCngeCmnOCnjeCmnOCmvuCmruCmvuCmqA==','Divisional Engineer','2015-09-17','',NULL),(636,'Sunil Kumar Adhikary','','','','06-Oct-1967','','123456789','2178\r\n','','demo@demo.com','','','','1550151283','','','','Select Home District','','2015-09-17 00:00:00','sunil1283','4Ka44KeB4Kao4KeA4KayIOCmleCngeCmruCmvuCmsCDgpoXgpqfgpr/gppXgpr7gprDgp4A=','DE, Recruitment','2015-09-17','',NULL),(637,'Md Golam Mostafa','','','','07-Jan-1966','','123456789','2179\r\n','','demo@demo.com','','','','1550151284','','','','Select Home District','','2015-09-17 00:00:00','mostafa1284','4Kau4KeL4KaDIOCml+Cni+CmsuCmvuCmriDgpq7gp4vgprjgpqTgp43gpq7gpqvgpr4=','Divisional Engineer','2015-09-17','',NULL),(638,'Ratan Kumar Halder','','','','17-Jun-1967','','123456789','2180\r\n','','demo@demo.com','','','','1550151285','','','','Select Home District','','2015-09-17 00:00:00','ratan1285','4Kaw4Kak4KaoIOCmleCngeCmruCmvuCmsCDgprngpr7gprLgpqbgpr7gprA=','Divisional Engineer','2015-09-17','',NULL),(639,'Md Habibur Rahman Pramanik','','','','03-Sep-1964','','123456789','2181\r\n','','demo@demo.com','','','','1550151286','','','','Select Home District','','2015-09-17 00:00:00','habib1286','4Kau4KeL4KaDIOCmueCmvuCmrOCmv+CmrOCngeCmsCDgprDgprngpq7gpr7gpqgg4Kaq4KeN4Kaw4Ka+4Kau4Ka+4Kao4Ka/4KaV','Divisional Engineer','2015-09-16','',NULL),(640,'Md Maniruzzaman','','','','31-May-1966','','123456789','2182\r\n','','demo@demo.com','','','','1550151287','','','','Select Home District','','2015-09-17 00:00:00','mani1287','4Kau4KeL4KaDIOCmruCmqOCmv+CmsOCngeCmnOCnjeCmnOCmvuCmruCmvuCmqCA=','Divisional Engineer','2015-09-10','',NULL),(641,'Mizanur Rahman Chowdhury','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151288','','','','Select Home District','','2015-09-17 00:00:00','mizan1288','4Kau4Ka/4Kac4Ka+4Kao4KawIOCmsOCmsOCmueCmruCmvuCmqCDgpprgp4zgpqfgp4HgprDgp4Ag','Left','2015-09-16','',NULL),(642,'Mahfuz Md Hilaly','','','','17-Sep-2015','','','','','demo@demo.com','','','','1550151289','','','','Select Home District','','2015-10-13 00:00:00','1289','4Kau4Ka+4Ka54Kar4KeB4KacIOCmsOCmueCmruCmvuCmqCDgprngpr/gprLgpr7gprLgp4Ag','Left','2015-09-17','',NULL),(643,'Md Mosharaf Hossain','','','','27-Dec-1964','','123456789','2183\r\n','','demo@demo.com','','','','1550151290','','','','Select Home District','','2015-09-17 00:00:00','moshafaf1290','4Kau4KeL4KaDIOCmruCni+CmtuCmvuCmsOCmqyDgprngp4vgprjgp4fgpqgJTWQgTW9zaGFyYWYgSG9zc2Fpbg==','Divisional Engineer','2015-09-17','',NULL),(644,'Md Sirajul Islam','','','','01-Jun-1964','','','2184\r\n','','demo@demo.com','','','','1550151291','','','','Select Home District','','2015-09-17 00:00:00','siraj1291','4Kau4KeL4KaDIOCmuOCmv+CmsOCmvuCmnOCngeCmsiDgpofgprjgprLgpr7gpq4=','Divisional Engineer','2015-09-17','',NULL),(645,'Pradip Das','','','','20-Mar-1964','','123456789','2185\r\n','','demo@demo.com','','','','1550151292','','','','Select Home District','','2015-09-17 00:00:00','pradip1292','4Kaq4KeN4Kaw4Kam4KeA4KaqIOCmpuCmvuCmtg==','Divisional Engineer','2015-09-17','',NULL),(646,'Nurul Mabud Chowdhury','','','','30-Oct-1967','','123456789','2186\r\n','','demo@demo.com','','','','1550151293','','','','Select Home District','','2015-09-17 00:00:00','nmc1293','4Kao4KeB4Kaw4Kau4KeN4Kao4KayIOCmruCmvuCmrOCngeCmpiDgpprgp4zgpqfgp4HgprDgp4A=','DE VHF Mogbazar','2015-09-17','',NULL),(647,'Diptimoy Chakma','','','','02-May-1962','','123456789','2187\r\n','','demo@demo.com','','','','1550151294','','','','Select Home District','','2015-09-17 00:00:00','diptimoy1294','4Kam4KeA4Kaq4KeN4Kak4Ka/4Kau4KefIOCmmuCmvuCmleCmruCmvg==','Divisional Engineer','2015-09-17','',NULL),(648,'M. Zulfiquar Ali','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151300','','','','Select Home District','','2015-09-17 00:00:00','zulfikar1300','4KaP4KauIOCmnOCngeCmsuCmq+Cmv+CmleCmvuCmsCDgpobgprLgpr8g','Divisional Engineer','2015-09-17','',NULL),(649,'Md Mahmudul Huq','','','','01-Feb-1970','','123456789','2189\r\n','','demo@demo.com','','','','1550151301','','','','Select Home District','','2015-09-17 00:00:00','mahmud1301','4Kau4KeL4KaDIOCmruCmvuCmueCmruCngeCmpuCngeCmsiDgprngppU=','Divisional Engineer','2015-09-17','',NULL),(650,'SM Shamim Hasan','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151302','','','','Select Home District','','2015-09-17 00:00:00','shamim1302','4KaP4Ka44KaP4KauIOCmtuCmvuCmruCmv+CmriDgprngpr7gprjgpr7gpqgg','Lien','2015-09-17','',NULL),(651,'Md Nizam Uddin Ahmed','','','','01-Jun-1968','','123456789','2191\r\n','','demo@demo.com','','','','1550151303','','','','Select Home District','','2015-09-17 00:00:00','nizam1303','4Kau4KeL4KaDIOCmqOCmv+CmnOCmvuCmriDgpongpqbgp43gpqbgpr/gpqgg','Divisional Engineer','2015-09-16','',NULL),(652,'Md Waliullah','','','','31-Dec-1969','','123456789','2192\r\n','','demo@demo.com','','','','1550151304','','','','Select Home District','','2015-09-17 00:00:00','wali1304','4Kau4KeL4KaDIOCmk+Cnn+CmvuCmsuCngCDgpongprLgp43gpq/gpr7gprk=','Lien','2015-09-17','',NULL),(653,'SM Saidul Islam','','','','02-Sep-1969','','123456789','2193\r\n','','demo@demo.com','','','','1550151305','','','','Select Home District','','2015-09-17 00:00:00','saidul1305','4Kau4KeL4KaDIOCmuOCmvuCmh+CmpuCngeCmsiDgpofgprjgprLgpr7gpq4=','Lien','2015-09-17','',NULL),(654,'Saidur Rahman','','','','25-Mar-1967','','1234567891550151266','2194\r\n','','demo@demo.com','','','','1550151306','','','','Select Home District','','2015-09-17 00:00:00','saidur1306','4Ka44Ka+4KaH4Kam4KeB4KawIOCmsOCmueCmruCmvuCmqA==','Divisional Engineer','2015-09-17','',NULL),(655,'Md Basirul Huq','','','','25-Mar-1967','','','2195\r\n','','demo@demo.com','','','','1550151307','','','','Select Home District','','2015-09-17 00:00:00','basir1307','4Kau4KeL4KaDIOCmrOCmvuCmm+Cmv+CmsOCngeCmsiDgprngppU=','Divisional Engineer','2015-09-17','',NULL),(656,'Matiul Islam','','','','01-Mar-1972','','123456789','2196\r\n','','demo@demo.com','','','','1550151308','','','','Select Home District','','2015-09-17 00:00:00','matiul1308','4Kau4KeL4KaDIOCmruCmpOCmv+CmieCmsiDgpofgprjgprLgpr7gpq4=','Divisional Engineer','2015-09-17','',NULL),(657,'AKM Golam Baharul','','','','02-Jul-1970','','123456789','2197\r\n','','demo@demo.com','','','','1550151309','','','','Select Home District','','2015-09-17 00:00:00','bahar1309','4KaPLiDgppXgp4cuIOCmj+Cmri4g4KaX4KeL4Kay4Ka+4KauIOCmrOCmvuCmueCmvuCmsOCmruCnjeCmqOCmsg==','Divisional Engineer','2015-09-17','',NULL),(658,'Jahiruddin Md Babor','','','','01-Jul-1965','','123456789','2198\r\n','','demo@demo.com','','','','1550151310','','','','Select Home District','','2015-09-17 00:00:00','babar1310','4Kac4Ka54Ka/4KawIOCmieCmpuCnjeCmpuCmv+CmqCDgpq7gp4vgpoMg4Kas4Ka+4Kas4Kaw','Divisional Engineer','2015-09-16','',NULL),(659,'Md Anwar Hossain','','','','28-Jun-1970','','123456789','2199\r\n','','demo@demo.com','','','','1550151311','','','','Select Home District','','2015-09-17 00:00:00','anwar1311','4Kau4KeL4KaDIOCmhuCmqOCni+Cnn+CmvuCmsCDgprngp4vgprjgp4fgpqg=','Divisional Engineer','2015-09-17','',NULL),(660,'Md Anwar Hossain Masud','','','','17-Nov-1968','','123456789','2200\r\n','','demo@demo.com','','','','1550151312','','','','Select Home District','','2015-09-17 00:00:00','masud1312','4Kau4KeL4KaDIOCmhuCmqOCni+Cnn+CmvuCmsCDgprngp4vgprjgp4fgpqgg4Kau4Ka+4Ka44KeB4Kam','Divisional Engineer, PhD','2015-09-17','',NULL),(661,'Sayed Mahmud','','','','07-Oct-1969','','123456789','2201','','sayeed807@gmail.com','','','','1550151313','','','','Select Home District','','2015-09-17 00:00:00','mahmud1313','4Ka44KeI4Kef4KamIOCmruCmvuCmueCmruCngeCmpg==','Divisional Engineer','2015-09-17','',NULL),(662,'Mahbuba Rahman','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151314','','','','Select Home District','','2015-09-17 00:00:00','mahbuba1314','4Kau4Ka+4Ka54Kas4KeB4Kas4Ka+IOCmsOCmueCmruCmvuCmqCA=','Divisional Engineer','2015-09-17','',NULL),(663,'Mirja Kamal Ahmed','','','','01-Jul-1969','','123456789','2202\r\n','','demo@demo.com','','','','1550151315','','','','Select Home District','','2015-09-17 00:00:00','kamal1315','4Kau4Ka/4Kaw4KeN4Kac4Ka+IOCmleCmvuCmruCmvuCmsiDgpobgprngpq7gp43gpq7gpqY=','Divisional Engineer','2015-09-17','',NULL),(664,'Manjur-ul Salam','','','','05-Jun-1968','','123456789','2203\r\n','','demo@demo.com','','','','1550151316','','','','Select Home District','','2015-09-17 00:00:00','msalam1316','4Kau4KeL4KaDIOCmruCmqOCmnOCngeCmsC3gpongprIt4Ka44Ka+4Kay4Ka+4Kau','Divisional Engineer','2015-09-17','',NULL),(665,'Md Kaisar Rashid Khan','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151317','','','','Select Home District','','2015-09-17 00:00:00','kaisar1317','4Kau4KeL4KaDIOCmleCmvuCnn+CmuOCmvuCmsCDgprDgprbgp4DgpqYg4KaW4Ka+4KaoIA==','Divisional Engineer','2015-09-17','',NULL),(666,'Md Shahidul Islam','','','','28-Oct-1967','','123456789','2204\r\n','','demo@demo.com','','','','Divisional Engineer	1550151318','','','','Select Home District','','2015-09-17 00:00:00','shahid1318','4Kau4KeL4KaDIOCmtuCmueCmv+CmpuCngeCmsiDgpofgprjgprLgpr7gpq4=','Divisional Engineer','2015-09-17','',NULL),(667,'Md Shafiqur Rahman','','','','12-Feb-1972','','123456789','2205\r\n','','demo@demo.com','','','','1550151319','','','','Select Home District','','2015-09-17 00:00:00','shafiq1319','TWQgU2hhZmlxdXIgUmFobWFu','Divisional Engineer','2015-09-17','',NULL),(668,'Samit Chakma','','','','22-Nov-1971','','123456789','2206\r\n','','demo@demo.com','','','','1550151320','','','','Select Home District','','2015-09-17 00:00:00','samit1320','4Ka44Kau4Ka/4KakIOCmmuCmvuCmleCmruCmviA=','DE Chittagong','2015-09-17','',NULL),(669,'Asif Riyad Lodi','','','','16-Sep-2015','','','2207\r\n','','demo@demo.com','','','','1550151330','','','','Select Home District','','2015-09-17 00:00:00','asif1330','4KaG4Ka44Ka/4KarIOCmsOCmv+Cnn+CmvuCmpiDgprLgp4vgpqbgp4Ag','Leave','2015-09-17','',NULL),(670,'AKM Shahnewaj','','','','15-Apr-1971','','','2208\r\n','','demo@demo.com','','','','1550151331','','','','Select Home District','','2015-09-17 00:00:00','snewaz1331','4KaP4KaV4KeH4KaP4KauIOCmtuCmvuCmueCmqOCnh+Cmk+Cnn+CmvuCmnCDgpprgp4zgpqfgp4HgprDgp4A=','Divisional Engineer','2015-09-17','',NULL),(671,'Md Rezaur Rahman Akanda','','','','06-Apr-1968','','123456789','2209\r\n','','demo@demo.com','','','','1550151332','','','','Select Home District','','2015-09-17 00:00:00','reza1332','4Kaw4KeH4Kac4Ka+4KaJ4KawIOCmsOCmueCmruCmvuCmqCDgpobgppXgpqjgp43gpqY=','Divisional Engineer','2015-09-10','',NULL),(672,'Jayonto Kumar Mukhopaddhaya','','','','31-Dec-1970','','123456789','2210\r\n','','demo@demo.com','','','','1550151334','','','','Select Home District','','2015-09-17 00:00:00','jayonta1333','4Kac4Kef4Kau4Kak4KeN4KauIOCmleCngeCmruCmvuCmsCDgpq7gp4Hgppbgp4vgpqrgpr7gpqfgp43gpq/gpr7gp58=','Divisional Engineer','2015-09-17','',NULL),(673,'Md Shahinur Rahman','','','','31-Dec-1970','','123456789','2211\r\n','','demo@demo.com','','','','1550151334','','','','Select Home District','','2015-09-17 00:00:00','shahin1334','4Kau4KeL4KaDIOCmtuCmvuCmueCmv+CmqOCngeCmsCDgprDgprngpq7gpr7gpqg=','Divisional Engineer','2015-09-17','',NULL),(674,'Md Hasibur Rashid','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151335','','','','Select Home District','','2015-09-17 00:00:00','hasib1335','4Kau4KeL4KaDIOCmueCmvuCmuOCmv+CmrOCngeCmsCDgprDgprbgp4DgpqYg','Left','2015-09-17','',NULL),(675,'Md Abdul Hannan','','','','31-Dec-1968','','123456789','2212\r\n','','demo@demo.com','','','','1550151336','','','','Select Home District','','2015-09-17 00:00:00','mannan1336','4Kau4KeL4KaDIOCmhuCmrOCnjeCmpuCngeCmsiDgprngpr7gpqjgp43gpqjgpr7gpqg=','Divisional Engineer','1968-12-31','',NULL),(676,'Md Zillur Rahman Chowdhury','','','','27-Jan-1972','','123456789','2213\r\n','','demo@demo.com','','','','1550151337','','','','Select Home District','','2015-09-17 00:00:00','zillur1337','4Kau4KeL4KaDIOCmnOCmv+CmsuCmuOCnjeCmqOCngeCmsCDgprDgprngpq7gpr7gpqgg4Kaa4KeM4Kan4KeB4Kaw4KeA','Divisional Engineer','2015-09-17','',NULL),(677,'Md Parvez Sarwar','','','','12-Dec-1972','','123456789','2214\r\n','','demo@demo.com','','','','1550151338','','','','Select Home District','','2015-09-17 00:00:00','parvez1338','4Kau4KeL4KaDIOCmquCmvuCmsOCmreCnh+CmnCDgprjgpr7gprDgppPgp5/gpr7gprA=','Divisional Engineer','1972-12-12','',NULL),(678,'Bikash Chandra Sarker','','','','16-Sep-2015','','123456789','','','demo@demo.com','','','','1550151339','','','','Select Home District','','2015-09-17 00:00:00','bikash1339','4Kas4Ka/4KaV4Ka+4Ka2IOCmmuCmqOCnjeCmpuCnjeCmsCDgprjgprDgppXgpr7gprAg','Divisional Engineer','2015-09-17','',NULL),(679,'Abu Toha Muhammed Kamruzzaman','','','','17-Sep-2015','','','','','demo@demo.com','','','','1550151340','','','','Select Home District','','2015-09-17 00:00:00','kzaman1340','4KaG4Kas4KeBIOCmpOCni+CmueCmviDgpq7gp4Hgprngpr7gpq7gp43gpq7gpqYg4KaV4Ka+4Kau4Kaw4KeB4Kac4KeN4Kac4Ka+4Kau4Ka+4KaoIA==','Divisional Engineer','2015-09-17','',NULL),(680,'Mohammed Khorshed Hasan','','','','27-Jun-1971','','123456789','2215\r\n','','demo@demo.com','','','','1550151341','','','','Select Home District','','2015-09-18 00:00:00','khorshed1341','4Kau4KeL4Ka54Ka+4Kau4KeN4Kau4KamIOCmluCni+CmsOCmtuCnh+CmpiDgprngpr7gprjgpr7gpqg=','Divisional Engineer','2015-09-17','',NULL),(681,'Md Sajjad-bin Mustainur Rahman','','','','01-Aug-1970','','123456789','2216\r\n','','demo@demo.com','','','','1550151342','','','','Select Home District','','2015-09-18 00:00:00','sajjad1342','4Kau4KeL4KaDIOCmuOCmvuCmnOCnjeCmnOCmvuCmpi3gpqzgpr/gpqgg4Kau4KeB4Ka44Kak4Ka+4KaH4Kao4KeB4KawIOCmsOCmueCmruCmvuCmqA==','Divisional Engineer','2015-09-17','',NULL),(682,'Jakir Mahmud','','','','23-Jun-1971','','123456789','2217','','demo@demo.com','','','','1550151343','','','','Select Home District','','2015-09-18 00:00:00','jakir1343','4Kac4Ka+4KaV4Ka/4KawIOCmruCmvuCmueCmruCngeCmpg==','Divisional Engineer','2015-09-17','',NULL),(683,'Md Nisar Yousuf','','','','09-Mar-1970','','123456789','2218\r\n','','demo@demo.com','','','','1550151344','','','','Select Home District','','2015-09-18 00:00:00','nisar1344','4Kau4KeL4KaDIOCmqOCmv+CmuOCmvuCmsCDgpofgpongprjgp4Hgpqs=','Divisional Engineer','2015-09-17','',NULL),(684,'Md Kamrul Islam','','','','01-Nov-1971','','123456789','2219\r\n','','demo@demo.com','','','','1550151345','','','','Select Home District','','2015-09-18 00:00:00','kamrul1345','4Kau4KeL4KaDIOCmleCmvuCmruCmsOCnguCmsiDgpofgprjgprLgpr7gpq4g','Divisional Engineer','2015-09-17','',NULL),(685,'Md Ruhul Kuddus','','','','28-Nov-1968','','123456789','2220\r\n','','demo@demo.com','','','','1550151346','','','','Select Home District','','2015-09-18 00:00:00','ruhul1346','4Kau4KeL4KaDIOCmsOCmruCnjeCmqOCmueCngeCmsiDgppXgp4Hgpqbgp43gpqbgp4Hgprg=','Divisional Engineer','2015-09-17','',NULL),(686,'Mosammat Sabrina Sharmin','','','','25-Aug-1971','','123456789','2221\r\n','','demo@demo.com','','','','1550151347','','','','Select Home District','','2015-09-18 00:00:00','sabrina1347','4Kau4KeL4Ka44Ka+4Kau4KeN4Kau4KeOIOCmm+CmvuCmrOCmsOCmv+CmqOCmviDgprbgpr7gprDgpq7gp4Dgpqg=','Divisional Engineer','2015-09-17','',NULL),(687,'Rumana Islam','','','','17-Sep-2015','','','','','demo@demo.com','','','','1550151348','','','','Select Home District','','2015-09-18 00:00:00','rumana1348','4Kaw4KeB4Kau4Ka+4Kao4Ka+IOCmh+CmuOCmsuCmvuCmrg==','Divisional Engineer','2015-09-17','',NULL),(688,'Md Ariful Islam','','','','30-Jun-1969','','123456789','2222\r\n','','demo@demo.com','','','','1550151349','','','','Select Home District','','2015-09-18 00:00:00','arif1349','4Kau4KeL4KaDIOCmhuCmsOCmv+Cmq+CngeCmsiDgpofgprjgprLgpr7gpq4=','Divisional Engineer','2015-09-17','',NULL),(689,'Md Abdul Malek','','','','01-Jun-1968','','123456789','2223\r\n','','demo@demo.com','','','','1550151350','','','','Select Home District','','2015-09-18 00:00:00','malek1350','4Kau4KeL4KaDIOCmhuCmrOCmpuCngeCmsiDgpq7gpr7gprLgp4fgppU=','Divisional Engineer','2015-09-17','',NULL),(690,'Imtiaz Ahmed','','','','11-Feb-1972','','123456789','2224\r\n','','demo@demo.com','','','','1550151360','','','','Select Home District','','2015-09-18 00:00:00','imtiaz1360','4KaH4Kau4Kak4Ka/4Kef4Ka+4KacIOCmhuCmueCmruCnh+Cmpg==','Divisional Engineer','2015-09-17','',NULL),(691,'Targhibul Islam','','','','13-Aug-1973','','123456789','2225\r\n','','demo@demo.com','','','','1550151361','','','','Select Home District','','2015-09-18 00:00:00','targhib1361','4Kak4Ka+4Kaw4KaY4KeA4Kas4KeB4KayIOCmh+CmuOCmsuCmvuCmrg==','Deputed to Teletalk','2015-09-17','',NULL),(692,'Sayed Abdul Aziz','','','','10-Oct-1973','','123456789','2226\r\n','','demo@demo.com','','','','1550151362','','','','Select Home District','','2015-09-18 00:00:00','aziz1362','4Ka44KeI4Kef4KamIOCmhuCmrOCnjeCmpuCngeCmsiDgpobgppzgpr/gppw=','Divisional Engineer','2015-09-17','',NULL),(693,'Maniruzzaman Molla','','','','02-Nov-1974','','123456789','2227\r\n','','demo@demo.com','','','','1550151363','','','','Select Home District','','2015-09-18 00:00:00','molla1363','4Kau4Kao4Ka/4Kaw4KeB4Kac4KeN4Kac4Ka+4Kau4Ka+4KaoIOCmruCni+CmsuCnjeCmsuCmvg==','Divisional Engineer','2015-09-17','',NULL),(694,'Taufiqul Islam','','','','21-Apr-1971','','123456789','2228\r\n','','demo@demo.com','','','','1550151364','','','','Select Home District','','2015-09-18 00:00:00','taufiq1364','4Kau4KeL4KaDIOCmpOCnjOCmq+Cmv+CmleCngeCmsiDgpofgprjgprLgpr7gpq4=','Divisional Engineer','2015-09-17','',NULL),(695,'Farhana Islam','','','','18-Aug-1973','','123456789','2229\r\n','','demo@demo.com','','','','1550151365','','','','Select Home District','','2015-09-18 00:00:00','farhana1365','4Kar4Ka+4Kaw4Ka54Ka+4Kao4Ka+IOCmh+CmuOCmsuCmvuCmrg==','Divisional Engineer','2015-09-17','',NULL),(696,'AKM Asaduzzaman','','','','29-Nov-1969','','123456789','2230\r\n','','demo@demo.com','','','','1550151366','','','','Select Home District','','2015-09-18 00:00:00','asad1366','4KaPLuCmleCnhy7gpo/gpq4uIOCmhuCmuOCmvuCmpuCngeCmnOCnjeCmnOCmvuCmruCmvuCmqA==','Divisional Engineer','2015-09-17','',NULL),(697,'Mrinal Kanti Roy','','','','15-Jul-1972','','123456789','2231\r\n','','demo@demo.com','','','','1550151367','','','','Select Home District','','2015-09-18 00:00:00','mrinal1367','4Kau4KeD4Kaj4Ka+4KayIOCmleCmvuCmqOCnjeCmpOCmvyDgprDgpr7gp58=','Divisional Engineer','2015-09-17','',NULL),(698,'Sadhon Kumar Das','','','','15-Aug-1973','','123456789','2232\r\n','','demo@demo.com','','','','1550151368','','','','Select Home District','','2015-09-18 00:00:00','shadon1368','4Ka44Ka+4Kan4KaoIOCmleCngeCmruCmvuCmsCDgpqbgpr7gprg=','Divisional Engineer','2015-09-17','',NULL),(699,'Md Golam Sarwar','','','','31-Dec-1973','','123456789','2233\r\n','','engrsarowar@gmail.com','','','','1550151369','','','','Select Home District','','2015-09-18 00:00:00','sarwar1369','4Kau4KeL4KaDIOCml+Cni+CmsuCmvuCmriDgprjgpr7gprDgppPgp5/gpr7gprA=','Divisional Engineer','2015-09-17','',NULL),(700,'Pravas Chandra Bhatyacharjya','','','','02-May-1971','','','2234\r\n','','demo@demo.com','','','','1550151370','','','','Select Home District','','2015-09-18 00:00:00','pravash1370','4Kaq4KeN4Kaw4Kat4Ka+4Ka4IOCmmuCmqOCnjeCmpuCnjeCmsCDgpq3gpp/gp43gprDgpr7gpprgpr7gprDgp43gpq/gp43gpq8=','Divisional Engineer','2015-09-17','',NULL),(701,'Madon Kumar Datta','','','','01-Jun-1970','','123456789','2235\r\n','','demo@demo.com','','','','1550151371','','','','Select Home District','','2015-09-18 00:00:00','madan1371','4Kau4Kam4KaoIOCmleCngeCmruCmvuCmsCDgpqbgpqTgp43gpqQ=','Divisional Engineer','2015-09-17','',NULL),(702,'Ali Shah Md Kamrul Hasan','','','','07-Nov-1973','','','2236\r\n','','demo@demo.com','','','','1550151372','','','','Select Home District','','2015-09-18 00:00:00','kamrul1372','4KaG4Kay4KeAIOCmtuCmvuCmuSDgpq7gp4vgpoMg4KaV4Ka+4Kau4Kaw4Kau4KeN4Kao4KayIOCmueCmvuCmuOCmvuCmqA==','Divisional Engineer','2015-09-17','',NULL),(703,'Md Shahinur Rahman','','','','10-Oct-1971','','123456789','2237\r\n','','demo@demo.com','','','','1550151373','','','','Select Home District','','2015-09-18 00:00:00','shahin1373','4Kau4KeL4KaDIOCmtuCmvuCmueCngOCmqOCngeCmsCDgprDgprngpq7gpr7gpqg=','Divisional Engineer','2015-09-17','',NULL),(704,'Md Masud Rana','','','','04-Aug-1974','','123456789','2238\r\n','','bitcrana@hotmail.com','','','','1550151374','','','','Select Home District','','2015-09-18 00:00:00','rana1374','4Kau4KeL4KaDIOCmruCmvuCmuOCngeCmpiDgprDgpr7gpqjgpr4=','Divisional Engineer','2015-09-17','',NULL),(705,'Md Abdul Malek','','','','28-Jun-1969','','123456789','2239\r\n','','demo@demo.com','','','','1550151375','','','','Select Home District','','2015-09-18 00:00:00','malek1375','4Kau4KeL4KaDIOCmhuCmrOCnjeCmpuCngeCmsiDgpq7gpr7gprLgp4fgppU=','Divisional Engineer','2015-09-17','',NULL),(706,'AM Akhtarul Islam','','','','11-Oct-1972','','123456789','2240\r\n','','demo@demo.com','','','','1550151376','','','','Select Home District','','2015-09-18 00:00:00','akter1376','4KaPLuCmj+Cmri4g4KaG4KaW4Kak4Ka+4Kaw4KeB4KayICDgpofgprjgprLgpr7gpq4=','Divisional Engineer','2015-09-17','',NULL),(707,'Sheikh Mahfuzur Rahman','','','','16-Jun-1974','','123456789','2241\r\n','','demo@demo.com','','','','1550151377','','','','Select Home District','','2015-09-18 00:00:00','mahfuz1377','4Ka24KeH4KaWIOCmruCmvuCmueCmq+CngeCmnOCmvuCmsCDgprDgprngpq7gpr7gpqg=','Divisional Engineer','2015-09-17','',NULL),(708,'Md Parvez Zubayer','','','','17-Sep-2015','','','','','demo@demo.com','','','','1550151378','','','','Select Home District','','2015-09-18 00:00:00','1378','4Kau4KeL4KaDIOCmquCmvuCmsOCmreCnh+CmnCDgppzgp4Hgpqzgpr7gp5/gp4fgprA=','Left','2015-09-17','',NULL),(709,'Md Khaled Mamun','','','','01-Oct-1971','','123456789','2242\r\n','','mamunmdkhaled@gmail.com','','','','1550151379','','','','Select Home District','','2015-09-18 00:00:00','mamun1379','4Kau4KeL4KaDIOCmluCmvuCmsuCnh+CmpiDgpq7gpr7gpq7gp4Hgpqg=','Divisional Engineer','2015-09-17','',NULL),(710,'Saleh Md Fazle Rabbi','','','','30-Dec-1971','','123456789','2243\r\n','','demo@demo.com','','','','1550151380','','','','Select Home District','','2015-09-18 00:00:00','rabbi1380','4Ka44Ka+4Kay4KeH4Ka5IOCmruCni+CmgyDgpqvgppzgprLgp4cg4Kaw4Ka+4Kas4Ka/4Kas','Divisional Engineer','2015-09-17','',NULL),(711,'Dilpiyara Khanam','','','','01-Jan-1971','','123456789','2244','','demo@demo.com','','','','1550151381','','','','Select Home District','','2015-09-18 00:00:00','dipiyara1381','4Kam4Ka/4Kay4Kaq4Ka/4Kef4Ka+4Kaw4Ka+IOCmluCmvuCmqOCmrg==','Divisional Engineer','2015-09-17','',NULL),(712,'Sahela Akter Azad','','','','06-Apr-1969','','123456789','2245\r\n','','demo@demo.com','','','','Divisional Engineer','','','','Select Home District','','2015-09-18 00:00:00','sahela1382','4Ka44Ka+4Ka54KeH4Kay4Ka+IOCmhuCmleCnjeCmpOCmvuCmsCDgpobgppzgpr7gpqY=','Divisional Engineer','2015-09-17','',NULL),(713,'Bithika Rani Pal','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151383','','','','Select Home District','','2015-09-18 00:00:00','1383','4Kas4KeA4Kal4Ka/4KaV4Ka+IOCmsOCmvuCmqOCngCDgpqrgpr7gprI=','Deserted','2015-09-17','',NULL),(714,'Ahmed Ullah','','','','01-Oct-1970','','123456789','2247\r\n','','demo@demo.com','','','','1550151384','','','','Select Home District','','2015-09-18 00:00:00','ahmed1384','4KaG4Ka54Kau4KeN4Kau4KamIOCmieCmsuCnjeCmsuCmvuCmuQ==','Divisional Engineer','2015-09-17','',NULL),(715,'Begum Rawnak Tahmina','','','','24-Jul-1974','','123456789','2248\r\n','','rownak_tahmina@yahoo.com','','','','1550151390','','','','Select Home District','','2015-09-18 00:00:00','rawnak1390','4Kaw4KaT4Kao4KaVIOCmpOCmvuCmueCmruCmv+CmqOCmvg==','Divisional Engineer','2015-09-17','',NULL),(716,'Md Mizanur Rahman','','','','01-Dec-1974','','123456789','2249','','mizan128@bcstelecom.org.bd','','','','1550151391','','','','','','2015-10-11 00:00:00','mizan1391','4Kau4KeL4KaDIOCmruCmv+CmnOCmvuCmqOCngeCmsCDgprDgprngpq7gpr7gpqg=','Divisional Engineer','2003-12-10','',NULL),(717,'Biswajit Roy','','','','02-Dec-1975','','123456789','2250\r\n','','demo@demo.com','','','','1550151392','','','','Select Home District','','2015-09-18 00:00:00','biswajit1392','4Kas4Ka/4Ka24KeN4Kas4Kac4Ka/4KeOIOCmsOCmvuCnnw==','Divisional Engineer','2015-09-17','',NULL),(718,'Khaled Hossain','','','','30-Dec-1976','','123456789','2251\r\n','','demo@demo.com','','','','1550151393','','','','Select Home District','','2015-09-18 00:00:00','khaled1393','4KaW4Ka+4Kay4KeH4KamIOCmueCni+CmuOCnh+CmqA==','Divisional Engineer','2015-09-17','',NULL),(719,'Md Sharifur Rahman','','','','18-Jan-1978','','123456789','2252\r\n','','demo@demo.com','','','','1550151394','','','','Select Home District','','2015-09-18 00:00:00','sharif1394','4Kau4KeL4KaDIOCmtuCmsOCmv+Cmq+CngeCmsCDgprDgprngpq7gpr7gpqg=','Divisional Engineer','2015-09-17','',NULL),(720,'Md Akbar Hossain','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151395','','','','Select Home District','','2015-09-18 00:00:00','1395','4Kau4KeL4KaDIOCmhuCmleCmrOCmsCDgprngp4vgprjgp4fgpqg=','Divisional Engineer','2015-09-17','',NULL),(721,'Samar Das','','','','17-Sep-2015','','123456789','2253\r\n','','demo@demo.com','','','','1550151396','','','','Select Home District','','2015-09-18 00:00:00','1396','4Ka44Kau4KawIOCmpuCmvuCmuA==','-','2015-09-17','',NULL),(722,'Abu Hena Mostafa Salam','','','','17-Sep-2015','','123456789','2254\r\n','','demo@demo.com','','','','1550151397','','','','Select Home District','','2015-09-18 00:00:00','abuhena1397','4KaG4Kas4KeBIOCmueCnh+CmqOCmviDgpq7gp4vgprjgpqTgp43gpq7gpqvgpr4g4Ka44Ka+4Kay4Ka+4Kau','SDE','2015-09-17','',NULL),(723,'Farid Uddin Biplab','','','','01-Dec-1971','','123456789','2255\r\n','','demo@demo.com','','','','1550151398','','','','Select Home District','','2015-09-18 00:00:00','farid1398','4Kar4Kaw4Ka/4KamIOCmieCmpuCnjeCmpuCmv+CmqCDgpqzgpr/gpqrgp43gprLgpqw=','-','2015-09-17','',NULL),(724,'Md Shahadat Hossain','','','','08-Dec-1974','','123456789','2256\r\n','','mithu.shahadat@gmail.com','','','','1550151399','','','','Select Home District','','2015-09-18 00:00:00','shahadat1399','4Kau4KeL4KaDIOCmtuCmvuCmueCmvuCmpuCmvuCnjiDgprngp4vgprjgp4fgpqg=','Divisional Engineer','2015-09-17','',NULL),(725,'Akhlakul Awal Bhuyan','','','','04-Sep-1976','','123456789','2257\r\n','','demo@demo.com','','','','1550151400','','','','Select Home District','','2015-09-18 00:00:00','akhlaq1400','4KaG4KaW4Kay4Ka+4KaV4KeB4KayIOCmhuCmieCnn+CmvuCmsiDgpq3gp4Lgpofgp5/gpr4=','Divisional Engineer','2015-09-17','',NULL),(726,'Utpal Kumar Saha','','','','11-Oct-1970','','','2258\r\n','','demo@demo.com','','','','1550151401','','','','Select Home District','','2015-09-18 00:00:00','utpal1401','4KaJ4KeO4Kaq4KayIOCmleCngeCmruCmvuCmsCDgprjgpr7gprngpr4=','Divisional Engineer','2015-09-17','',NULL),(727,'Abul Fazal Md Tauhidul Karim','','','','14-Apr-1974','','123456789','2259\r\n','','demo@demo.com','','','','1550151402','','','','Select Home District','','2015-09-18 00:00:00','tauhid1402','4KaG4Kas4KeB4KayIOCmq+CmnOCmsiDgpq7gp4vgpoMg4Kak4KeM4Ka54Ka/4Kam4KeB4KayIOCmleCmsOCmv+Cmrg==','Divisional Engineer','2015-09-17','',NULL),(728,'Masudul Islam Chowdhury','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','1550151403','','','','Select Home District','','2015-09-18 00:00:00','1403','4Kau4Ka+4Ka44KeB4KamIOCmh+CmuOCmsuCmvuCmriDgpprgp4zgpqfgp4HgprDgp4A=','Divisional Engineer','2015-09-17','',NULL),(729,'Md Shafik Hossain Siddik','','','','01-Dec-1971','','123456789','2260\r\n','','demo@demo.com','','','','1550151404','','','','Select Home District','','2015-09-18 00:00:00','shafiq1404','4Kau4KeL4KaDIOCmtuCmq+Cmv+CmlSDgprngp4vgprjgp4fgpqgg4Ka44Ka/4Kam4KeN4Kam4Ka/4KaV','Divisional Engineer','2015-09-17','',NULL),(730,'AM Abdullah Patwary','','','','06-Nov-1972','','123456789','2261\r\n','','demo@demo.com','','','','1550151405','','','','Select Home District','','2015-09-18 00:00:00','patwary1405','4KaPLuCmj+Cmri7gpobgpqzgp43gpqbgp4HgprLgprjgp43gpqjgpr7gprkg4Kaq4Ka+4Kaf4KaT4Kef4Ka+4Kaw4KeA','Divisional Engineer','2015-09-17','',NULL),(731,'HM Badruddoza Alam','','','','01-Jun-1974','','123456789','2262','','demo@demo.com','','','','1550151406','','','','Select Home District','','2015-09-18 00:00:00','balam1406','4KaP4KaH4KaaLuCmj+Cmri4g4Kas4Kam4Kaw4Kau4KeN4Kao4Kam4KeN4Kam4KeL4Kac4Ka+IOCmhuCmsuCmrg==','Divisional Engineer','2015-09-17','',NULL),(732,'Md Shahin Iqbal Khan','','','','02-Aug-1977','','123456789','2263\r\n','','shahiniqbal@engineer.com','','','','1550151407','','','','Select Home District','','2015-09-18 00:00:00','ankhi1407','4Kau4KeL4KaDIOCmtuCmvuCmueCngOCmqCDgpofgppXgpqzgpr7gprIg4KaG4KaB4KaW4Ka/','Divisional Engineer','2015-09-17','',NULL),(733,'Hammad Mujib','','','','24-Nov-1972','','123456789','2264','','muzeeb_22@yahoo.com','','','','1550151408','','','','Select Home District','','2015-09-18 00:00:00','hammad1408','4Ka54Ka+4Kau4KeN4Kau4Ka+4KamIOCmruCngeCmnOCmv+CmrA==','Divisional Engineer','2015-09-17','',NULL),(734,'Biswambhar Gayen','','','','12-Feb-1976','','123456789','2265\r\n','','biswambhargayen@yahoo.com','','','','1550151409','','','','Select Home District','','2015-09-18 00:00:00','bgayen1409','4Kas4Ka/4Ka24KeN4Kas4Kau4KeN4Kas4KawIOCml+CmvuCnn+Cnh+CmqA==','Divisional Engineer','2015-09-17','',NULL),(735,'Mamunur Rashid','','','','15-Oct-1976','','123456789','2266\r\n','','demo@demo.com','','','','1550151410','','','','Select Home District','','2015-09-18 00:00:00','mamun1410','4Kau4Ka+4Kau4KeB4Kao4KeB4KawIOCmsOCmtuCngOCmpg==','Divisional Engineer','2015-09-17','',NULL),(736,'Ronel Chakma','','','','25-Nov-1977','','123456789','2267\r\n','','demo@demo.com','','','','1550151411','','','','Select Home District','','2015-09-18 00:00:00','1411','4Kaw4KeL4Kao4KeH4KayIOCmmuCmvuCmleCmruCmvg==','Diserted','2015-09-17','',NULL),(737,'Habibullah Kaiser','','','','01-Jan-1974','','123456789','2268\r\n','','demo@demo.com','','','','1550151412','','','','Select Home District','','2015-09-18 00:00:00','kaisar1412','4Ka54Ka+4Kas4Ka/4Kas4KeB4Kay4KeN4Kay4Ka+IOCmleCmvuCnn+CmuOCmvuCmsA==','Divisional Engineer','2015-09-17','',NULL),(738,'Md Badiul Alam','','','','04-Mar-1971','','1234567891550151266','2269\r\n','','demo@demo.com','','','','1550151413','','','','Select Home District','','2015-09-18 00:00:00','badiul1413','4Kau4KeL4KaDIOCmrOCmpuCmv+CmieCmsiDgpobgprLgpq4J','Divisional Engineer','2015-09-17','',NULL),(739,'Shahidul Islam','','','','31-Dec-1974','','','2270\r\n','','demo@demo.com','','','','1550151414','','','','Select Home District','','2015-09-18 00:00:00','shadid1414','4Ka24Ka54Ka/4Kam4KeB4KayIOCmh+CmuOCmsuCmvuCmrg==','Divisional Engineer','2015-09-17','',NULL),(740,'Debashish Roy','','','','01-Jun-1974','','123456789','2271\r\n','','demo@demo.com','','','','1550151414','','','','Select Home District','','2015-09-18 00:00:00','droy1415','4Kam4KeH4Kas4Ka+4Ka24KeA4Ka3IOCmsOCmvuCnnw==','Divisional Engineer','2015-09-17','',NULL),(741,'Md Sazzad Hossain','','','','09-May-1972','','123456789','2272\r\n','','demo@demo.com','','','','1550151416','','','','Select Home District','','2015-09-18 00:00:00','sazzad1416','4Kau4KeL4KaDIOCmuOCmvuCmnOCnjeCmnOCmvuCmpiDgprngp4vgprjgp4fgpqg=','Divisional Engineer','2015-09-17','',NULL),(742,'Md Zakir Hossain Bhuyan','','','','02-Feb-1976','','123456789','2273','','demo@demo.com','','','','1550151417','','','','Select Home District','','2015-09-18 00:00:00','zakir1417','4Kau4KeL4Ka54Ka+4Kau4KeN4Kau4KamIOCmnOCmvuCmleCmv+CmsCDgprngp4vgprjgp4fgpqgg4Kat4KeB4Kae4Ka+4KaBIA==','Divisional Engineer','2015-09-17','',NULL),(743,'Munim Hasan','','','','01-Oct-1975','','123456789','2274\r\n','','demo@demo.com','','','','1550151418','','','','Select Home District','','2015-09-18 00:00:00','muim1418','4Kau4KeB4Kao4Ka/4KauIOCmueCmvuCmuOCmvuCmqCA=','Divisional Engineer','2015-09-17','',NULL),(744,'Md Saydur Rahman','','','','01-Jan-1974','','123456789','2275\r\n','','demo@demo.com','','','','1550151419','','','','Select Home District','','2015-09-18 00:00:00','saydu1419','4Kau4KeL4KaDIOCmuOCmvuCmh+CmpuCngeCmsCDgprDgprngpq7gpr7gpqg=','Divisional Engineer','2015-09-17','',NULL),(745,'S Wazed Ali','','','','08-May-1971','','123456789','2276\r\n','','demo@demo.com','','','','1550151420','','','','Select Home District','','2015-09-18 00:00:00','wazed1420','4KaP4Ka4LiDgppPgp5/gpr7gppzgp4fgpqYg4KaG4Kay4KeA','Divisional Engineer','2015-09-17','',NULL),(746,'Md Abdus Salam','','Late Abdul Gaffar','Mrs. Shajeda Begum','26-Dec-1974','AB+','19747613952571085','2277','','slm7491@gmail.com','','','+880-2-8833177','+880-15-50151421','','Suite#26, ADE Hostel, T&T Colony,Karail, Road#05, Banani, Dhaka-1213.','Char Ruppur, Paksey, Ishwardi, Pabna.','Pabna','','2015-10-09 00:00:00','asalam1421','4Kau4KeL4KaDIOCmhuCmrOCnjeCmpuCngeCmuCDgprjgpr7gprLgpr7gpq4=','Sub Divisional Engineer','2003-12-10','22/2003',NULL),(747,'Md Shariful Islam','','','','30-Jan-1971','','123456789','2278\r\n','','demo@demo.com','','','','1550151422','','','','Select Home District','','2015-09-18 00:00:00','sharif1422','4Kau4KeL4KaDIOCmtuCmsOCmv+Cmq+CngeCmsiDgpofgprjgprLgpr7gpq4g','Divisional Engineer','2015-09-17','',NULL),(748,'KM Atiqur Rahman','','','','19-May-1971','','123456789','2279\r\n','','demo@demo.com','','','','1550151423','','','','Select Home District','','2015-09-18 00:00:00','atiq1423','4KaV4KeHLiDgpo/gpq4g4KaG4Kak4Ka/4KaV4KeB4KawIOCmsOCmueCmruCmvuCmqA==','Divisional Engineer','2015-09-17','',NULL),(749,'Md Salah Uddin Mahmud','','','','17-Sep-2015','','123456789','','','demo@demo.com','','','','ADE, Leave','','','','Select Home District','','2015-09-18 00:00:00','salu1424','4Ka44Ka+4Kay4Ka+4Ka54KaJ4Kam4KeN4Kam4Ka/4KaoIOCmruCmvuCmueCmruCngeCmpg==','ADE, Leave','2015-09-17','',NULL),(750,'Sukesh Kumar Biswas','','','','01-Feb-1971','','123456789','2281\r\n','','demo@demo.com','','','','1550151425','','','','Select Home District','','2015-09-18 00:00:00','sukesh1425','4Ka44KeB4KaV4KeH4Ka2IOCmleCngeCmruCmvuCmsCDgpqzgpr/gprbgp43gpqzgpr7gprg=','Divisional Engineer','2015-09-17','',NULL),(751,'Triratna Bikash Tripura','3faaec20-417b-46ec-851c-427d817f7986.jpg','Barendra Lal Tripura','Sabita Tripura','28-Feb-1973','AB+','2690243838152','2282','','tbtripura@yahoo.com','sdeext@hotmail.com','02-8171133','02-8142844','01550151426','','House-36, Rd-02, Janata H/L, M\'dpur, Dhaka.','Village-Hazapara, Post Office-Gomti, Police Station-Matiranga, District-Khagrachari.','Khagrachari','','2015-10-09 00:00:00','tripura1426','4Kak4KeN4Kaw4Ka/4Kaw4Kak4KeN4KaoIOCmrOCmv+CmleCmvuCmtiDgpqTgp43gprDgpr/gpqrgp4HgprDgpr4=','Sub Divisional Engineer','2003-12-10','22nd BCS-2003',NULL),(752,'Md Kamrul Hasan','','','','14-Feb-1972','','123456789','2283\r\n','','demo@demo.com','','','','1550151428','','','','Select Home District','','2015-09-18 00:00:00','kamrul1427','4Kau4KeL4KaDIOCmleCmvuCmruCmsOCngeCmsiAg4Ka54Ka+4Ka44Ka+4KaoIA==','Sub Divisional Engineer','2015-09-17','',NULL),(753,'Md Saifur Rahman','','','','14-Feb-1972','','123456789','2284\r\n','','demo@demo.com','','','','1550151428','','','','Select Home District','','2015-09-18 00:00:00','saifur1428','4Kau4KeL4KaDIOCmuOCmvuCmh+Cmq+CngeCmsCDgprDgprngpq7gpr7gpqgg','Sub Divisional Engineer','2015-09-17','',NULL),(754,'Gias Uddin Khandaker','','','','01-Feb-1957','','123456789','2295\r\n','','demo@demo.com','','','','1550151807','','','','Select Home District','','2015-09-18 00:00:00','gias1807','4KaX4Ka/4Kef4Ka+4Ka4IOCmieCmpuCnjeCmpuCmv+CmqCDgppbgpqjgp43gpqbgppXgpr7gprA=','Assistant Engineer','2015-09-17','',NULL),(755,'Yusuf Jamal Sikder','','','','31-Oct-1956','','','2308\r\n','','demo@demo.com','','','','1819490888','','','','Select Home District','','2015-09-18 00:00:00','yusuf0888','4KaH4KaJ4Ka44KeB4KarIOCmnOCmvuCmruCmvuCmsiDgprjgpr/gppXgpqbgpr7gprA=','Assistant Engineer','2015-09-17','',NULL),(756,'Md Ruhul Amin','','','','11-Dec-1973','','123456789','2313\r\n','','demo@demo.com','','','','1550151430','','','','Select Home District','','2015-09-18 00:00:00','ruhul1430','4Kau4KeL4KaDIOCmsOCngeCmueCngeCmsiDgpobgpq7gpr/gpqg=','Sub Divisional Engineer\r\n','2015-09-17','',NULL),(757,'Vikram Kumar Biswas','','','','01-Jan-1978','','123456789','2314\r\n','','demo@demo.com','','','','1550151431','','','','Select Home District','','2015-09-18 00:00:00','bikram1431','4Kas4Ka/4KaV4KeN4Kaw4KauIOCmleCngeCmruCmvuCmsCDgpqzgpr/gprbgp43gpqzgpr7gprg=','ADE, Leave','2015-09-17','',NULL),(758,'Abu Ayub Ansary','','','','07-May-1977','','123456789','2315\r\n','','demo@demo.com','','','','1550151432','','','','Select Home District','','2015-09-18 00:00:00','ansary1432','4KaG4Kas4KeBIOCmhuCmh+Cmr+CmvOCngeCmrCDgpobgpqjgprjgpr7gprDgp4A=','Sub Divisional Engineer','2015-09-17','',NULL),(759,'Saiful Islam','','','','12-Oct-1970','','123456789','2316\r\n','','demo@demo.com','','','','1550151433','1550151433','','','Select Home District','','2015-09-18 00:00:00','saifu1433','4Ka44Ka+4KaH4Kar4KeB4KayIOCmh+CmuOCmsuCmvuCmrg==','Sub Divisional Engineer','2015-09-17','',NULL),(760,'Mohammed Atiqur Rahman','','','','01-Jan-1980','','','2317\r\n','','demo@demo.com','','','','1550151434','','','','Select Home District','','2015-09-18 00:00:00','atiq1434','4Kau4KeL4KaDIOCmhuCmpOCmv+CmleCngeCmsCDgprDgprngpq7gpr7gpqg=','Sub Divisional Engineer','2015-09-17','',NULL),(761,'MA Munem','','','','21-Dec-1978','','123456789','2318\r\n','','demo@demo.com','','','','1550151435','','','','Select Home District','','2015-09-18 00:00:00','munem1435','4KaPLCDgpq7gp4Hgpqjgp4fgpq4=','ADE, Leave','2015-09-17','',NULL),(762,'Md Mizanur Rahman','','','','17-Sep-2015','','','','','demo@demo.com','','','','1550151436','','','','Select Home District','','2015-09-18 00:00:00','mizan1436','TWQgTWl6YW51ciBSYWhtYW4=','Left','2015-09-17','',NULL),(763,'Mamun Manjurul Aziz','','','','15-Aug-1980','','123456789','2319\r\n','','demo@demo.com','','','','1550151437','','','','Select Home District','','2015-09-18 00:00:00','mamun1437','4Kau4Ka+4Kau4KeB4KaoIOCmruCmnuCnjeCmnOCngeCmsOCngeCmsiDgpobgppzgpr/gppw=','ADE, Leave','2015-09-17','',NULL),(764,'Md Masud Parvez','','','','01-Jan-1978','','123456789','2320\r\n','','demo@demo.com','','','','1550151438','','','','Select Home District','','2015-09-18 00:00:00','masud1438','4Kau4KeL4KaDIOCmruCmvuCmuOCngeCmpiDgpqrgpr7gprDgpq3gp4fgppw=','Deserted','2015-09-17','',NULL),(765,'Muhammad Shakhawat Hossain','','','','15-Feb-1978','','123456789','2321\r\n','','demo@demo.com','','','','1550151439','','','','Select Home District','','2015-09-18 00:00:00','shakwat1439','4Kau4KeB4Ka54Ka+4Kau4KeN4Kau4KamIOCmuOCmvuCmluCmvuCmk+Cmr+CmvOCmvuCmpCDgprngp4vgprjgp4fgpqg=','ADE, Leave','2015-09-17','',NULL),(766,'Nuruddin Al Masud','','','','23-Nov-1975','','123456789','2322\r\n','','masud9489@yahoo.com','','','','1550151440','','','','Select Home District','','2015-09-18 00:00:00','masud1440','4Kao4KeB4KawIOCmieCmpuCnjeCmpuCmv+CmqCDgpobgprIg4Kau4Ka+4Ka44KeB4Kam','Sub Divisional Engineer','2015-09-17','',NULL),(767,'AKM Bazlur Rashid','','','','08-Feb-1975','','123456789','2323\r\n','','demo@demo.com','','','','1550151441','','','','Select Home District','','2015-09-18 00:00:00','bazlur1441','4KaPLCDgppXgp4csIOCmj+Cmriwg4Kas4Kac4Kay4KeB4KawIOCmsOCmtuCmv+Cmpg==','Sub Divisional Engineer','2015-09-17','',NULL),(768,'Mostafa Al Mahmud','','','','03-Mar-1978','','','2324\r\n','','demo@demo.com','','','','1550151442','','','','Select Home District','','2015-09-18 00:00:00','mostafa1442','4Kau4KeL4Ka44KeN4Kak4Kar4Ka+LeCmhuCmsiDgpq7gpr7gprngpq7gp4HgpqY=','Sub Divisional Engineer','1978-03-03','',NULL),(769,'Mosammat Manira Begum','','','','05-Apr-1976','','123456789','2325\r\n','','demo@demo.com','','','','1550151443','','','','Select Home District','','2015-09-18 00:00:00','manira1443','4Kau4KeL4Ka44Ka+4KaDIOCmruCmqOCngOCmsOCmviDgpqzgp4fgppfgpq4=','Sub Divisional Engineer','2015-09-17','',NULL),(770,'Shirin Akter','','','','22-Jul-1974','','','2326','','shirin_akter@hotmail.com','','','','1550151444','','','','Select Home District','','2015-09-18 00:00:00','shirin1444','4Ka24Ka/4Kaw4Ka/4KaoIOCmhuCmleCnjeCmpOCmvuCmsA==','Sub Divisional Engineer','2015-09-17','',NULL),(771,'Md Tarikul Islam Khan','','','','10-Nov-1978','','','2327\r\n','','demo@demo.com','','','','1550151445','','','','Select Home District','','2015-09-18 00:00:00','tarik1445','4Kau4KeL4KaDIOCmpOCmvuCmsOCmv+CmleCngeCmsiDgpofgprjgprLgpr7gpq4g4KaW4Ka+4Kao','Sub Divisional Engineer','2015-09-17','',NULL),(772,'Md Kamruzzaman','','','','30-Nov-1976','','123456789','2328\r\n','','demo@demo.com','','','','1550151446','','','','Select Home District','','2015-09-18 00:00:00','kzaman1446','4Kau4KeL4KaDIOCmleCmvuCmruCmsOCngeCmnOCnjeCmnOCmvuCmruCmvuCmqA==','Sub Divisional Engineer','2015-09-17','',NULL),(773,'Abu Zafar Md Ahsanul Huq','','','','12-Nov-1977','','123456789','2329\r\n','','demo@demo.com','','','','1550151447','','','','Select Home District','','2015-09-18 00:00:00','ahsan1447','4KaG4Kas4KeBIOCmnOCmvuCmq+CmsCDgpq7gp4sg4KaG4Ka54Ka44Ka+4Kao4KeB4KayIOCmueCmlQ==','ADE','2015-09-17','',NULL),(774,'Md Aminur Rahman','','','','18-Aug-1976','','123456789','2338\r\n','','demo@demo.com','','','','1550151451','','','','Select Home District','','2015-09-18 00:00:00','amin1450','4Kau4KeL4KaDIOCmhuCmruCmv+CmqOCngeCmsCDgprDgprngpq7gpr7gpqg=','ADE','2015-09-17','',NULL),(775,'Md. Munsur Rahman','','','','25-May-1976','','','2339\r\n','','demo@demo.com','','','','1550151451','','','','Select Home District','','2015-09-18 00:00:00','munsur1451','4Kau4KeLIC4g4Kau4KeB4Kao4Ka44KeB4KawIOCmsOCmueCmruCmvuCmqA==','ADE','2015-09-17','',NULL),(776,'Md. Azad Miah','','','','12-Jan-1974','','123456789','2340\r\n','','demo@demo.com','','','','1550151452','','','','Select Home District','','2015-09-18 00:00:00','azad1452','4Kau4KeL4KaDIOCmhuCmnOCmvuCmpiDgpq7gpr/gp5/gpr4=','ADE','2015-09-17','',NULL),(777,'Nawrin Tania','','','','12-Jun-1978','','123456789','2341\r\n','','demo@demo.com','','','','1550151453','','','','Select Home District','','2015-09-18 00:00:00','nawrin1453','4Kao4KaT4Kaw4Ka/4KaoIOCmpOCmvuCmqOCmv+Cnn+CmviA=','ADE','2015-09-17','',NULL),(778,'Md. Mamun Ur Rashid','','','','07-Jan-1974','','123456789','2342\r\n','','demo@demo.com','','','','1550151454','','','','Select Home District','','2015-09-18 00:00:00','mamun1454','4Kau4KeL4KaDIOCmruCmvuCmruCngeCmqOCngeCmsCDgprDgprbgp4DgpqY=','ADE','2015-09-17','',NULL),(779,'Md. Parvez Hasan','','','','09-May-1981','','','2343\r\n','','demo@demo.com','','','','1550151455','','','','Select Home District','','2015-09-18 00:00:00','parvez1455','4Kau4KeB4Ka54Ka+4Kau4KeN4Kau4KamIOCmquCmvuCmsOCmreCnh+CmnCDgprngpr7gprjgpr7gpqg=','ADE','2015-09-17','',NULL),(780,'Khan Md. Kaiser','','','','19-Jul-1975','','123456789','2344\r\n','','kaisarbttb@gmail.com','','','','1550151456','','','','Select Home District','','2015-09-18 00:00:00','kaisar1456','4KaW4Ka+4KaoIOCmruCni+CmueCmvuCmruCnjeCmruCmpiDgppXgpr7gp5/gppvgpr7gprA=','ADE','2015-09-17','',NULL),(781,'Md. Ohidul Islam','','','','31-Dec-1977','','123456789','2345\r\n','','demo@demo.com','','','','1550151457','','','','Select Home District','','2015-09-18 00:00:00','ohidul1457','4Kau4KeL4Ka54Ka+4Kau4KeN4Kau4KamIOCmheCmueCmv+CmpuCngeCmsiDgpofgprjgprLgpr7gpq4=','ADE','2015-09-17','',NULL),(782,'Md. Saifur Rahman Bhuiyan','','','','10-Nov-1970','','123456789','2346\r\n','','demo@demo.com','','','','1550151459','','','','Select Home District','','2015-09-18 00:00:00','saifur1459','4Kau4KeL4Ka54Ka+4Kau4KeN4Kau4KamIOCmm+CmvuCmh+Cmq+CngeCmsCDgprDgprngpq7gpr7gpqgg4Kat4KeC4Kae4Ka+','ADE','2015-09-17','',NULL),(783,'Sheikh Md. Shahidul Islam','','','','17-Sep-1976','','','2347\r\n','','demo@demo.com','','','','1550151460','','','','Select Home District','','2015-09-18 00:00:00','shahid1460','4Ka24KeH4KaWIOCmruCniy4g4Ka24Ka54KeA4Kam4KeB4KayIOCmh+CmuOCmsuCmvuCmrg==','ADE','2015-09-17','',NULL),(784,'Md. Mainul Hasan','','','','01-Jan-1981','','123456789','2348\r\n','','demo@demo.com','','','','1550151461','','','','Select Home District','','2015-09-18 00:00:00','mainul1461','4Kau4KeL4KaDIOCmruCmvuCmh+CmqOCngeCmsiDgprngpr7gprjgpr7gpqg=','ADE','2015-09-17','',NULL),(785,'Samsed Mahmud','','','','30-Jun-1980','','123456789','2349\r\n','','demo@demo.com','','','','1813195224','','','','Select Home District','','2015-09-18 00:00:00','samsed5224','4Ka44Ka+4Kau4Ka44KeH4KamIOCmruCmvuCmueCmruCngeCmpg==','ADE','2015-09-17','',NULL),(786,'Muktafi Mahmud Shah','','','','08-Dec-1979','','123456789','2350\r\n','','demo@demo.com','','','','1550151463','','','','Select Home District','','2015-09-18 00:00:00','muktafi1463','4Kau4KeL4KaDIOCmruCni+CmleCnjeCmpOCmvuCmq+CmvyDgpq7gpr7gprngpq7gp4HgpqYg4Ka24Ka+4Ka5','ADE','2015-09-17','',NULL),(787,'Golam Murshed','','','','01-Jun-1976','','123456789','2351\r\n','','demo@demo.com','','','','1550151464','','','','Select Home District','','2015-09-18 00:00:00','murshed1464','4KaX4KeL4Kay4Ka+4KauIOCmruCni+CmsOCmtuCnh+Cmpg==','ADE','2015-09-17','',NULL),(788,'Md. Benjur Rahman','','','','12-Aug-1975','','123456789','2352\r\n','','demo@demo.com','','','','1550151465','','','','Select Home District','','2015-09-18 00:00:00','benjur1465','4Kau4KeL4KaDIOCmrOCnh+CmnuCnjeCmnOCngeCmsCDgprDgprngpq7gpr7gpqg=','ADE','2015-09-17','',NULL),(789,'Taslima Akter','','','','03-May-1980','','123456789','2353\r\n','','demo@demo.com','','','','1550151466','','','','Select Home District','','2015-09-18 00:00:00','taslima1466','4Kau4KeL4Kab4Ka+4KaDIOCmpOCmuOCmsuCmv+CmruCmviDgpobgppbgpqTgpr7gprA=','ADE','2015-09-17','',NULL),(790,'Md. Taherul Islam','','','','30-Apr-1979','','1234567891550151467','2354\r\n','','demo@demo.com','','','','1550151467','','','','Select Home District','','2015-09-18 00:00:00','taher1467','4Kau4KeL4KaDIOCmpOCmvuCmueCnh+CmsOCngeCmsiDgpofgprjgprLgpr7gpq4=','ADE','1979-04-30','',NULL),(791,'Md. Humayun Kabir','','','','01-Jan-1978','','123456789','2355\r\n','','demo@demo.com','','','','1550151468','','','','Select Home District','','2015-09-18 00:00:00','hkabir1468','4Kau4KeL4KaDIOCmueCngeCmruCmvuCnn+CngeCmqCDgppXgpqzgp4DgprA=','ADE','2015-09-17','',NULL),(792,'Md. Mukter Ahmed','','','','15-Apr-1980','','123456789','2356\r\n','','demo@demo.com','','','','1550151469','','','','Select Home District','','2015-09-18 00:00:00','mukter1469','4Kau4KeB4Ka54Ka+4Kau4KeN4Kau4KamIOCmruCni+CmleCnjeCmpOCmvuCmsCDgpobgprngpq7gp4fgpqY=','ADE','2015-09-17','',NULL),(793,'Zakir Hossain Khan','','','','11-Nov-1976','','123456789','2357\r\n','','demo@demo.com','','','','1550151470','','','','Select Home District','','2015-09-18 00:00:00','zakir1470','4Kau4KeL4KaDIOCmnOCmvuCmleCmv+CmsCDgprngp4vgprjgp4fgpqgg4KaW4Ka+4KaB4Kao','ADE','1976-11-11','',NULL),(794,'Abul Khaier','','','','29-May-1957','','1234567891550151811','2366\r\n','','demo@demo.com','','','','1550151811','','','','Select Home District','','2015-09-18 00:00:00','khair1811','4KaG4Kas4KeB4KayIOCmluCmvuCmr+CmvOCnh+CmsA==','Assistant Engineer','2015-09-16','',NULL),(795,'Sunil Chandra Roy','','','','25-Jun-1957','','123456789','2367\r\n','','demo@demo.com','','','','1554321226','','','','Select Home District','','2015-09-18 00:00:00','sunil1226','4Ka44KeB4Kao4KeA4KayIOCmmuCmqOCnjeCmpuCnjeCmsCDgprDgpr7gpq/gprw=','Assistant Engineer','2015-09-17','',NULL),(796,'Ardendu Shekhar Debnath','','','','05-Aug-1957','','123456789','2368\r\n','','demo@demo.com','','','','1555155319','','','','Select Home District','','2015-09-18 00:00:00','arden5319','4KaF4Kaw4KeH4Kao4KeN4Kam4KeBIOCmtuCnh+CmluCmsCDgpqbgp4fgpqzgpqjgpr7gpqU=','Assistant Engineer','2015-09-17','',NULL),(797,'Abu Bakkar Siddiq','','','','04-Apr-1956','','123456789','2370\r\n','','demo@demo.com','','','','1552453993','','','','Select Home District','','2015-09-18 00:00:00','bakar3993','4KaG4Kas4KeBIOCmrOCmleCmsCDgprjgpr/gpqbgp43gpqbgpr/gppXgpr8=','Assistant Engineer','2015-09-17','',NULL),(798,'Md Badruzzaman','','','','03-Jan-1957','','123456789','2374\r\n','','demo@demo.com','','','','1556777731','','','','Select Home District','','2015-09-18 00:00:00','bzaman7731','4Kau4KeL4KaDIOCmrOCmpuCmsOCngeCmnOCnjeCmnOCmvuCmruCmvuCmqA==','Assistant Engineer','2015-09-17','',NULL),(799,'Swapan Kumar Roy','','','','21-Jan-1957','','123456789','2376\r\n','','demo@demo.com','','','','1819246037','','','','Select Home District','','2015-09-18 00:00:00','sroy6037','4Ka44KeN4Kas4Kaq4KaoIOCmleCngeCmruCmvuCmsCDgprDgpr7gpq/gprw=','Assistant Engineer','2015-09-17','',NULL),(800,'Md Sohrab Uddin','','','','01-Jan-1959','','123456789','2377\r\n','','demo@demo.com','','','','1718738020','','','','Select Home District','','2015-09-18 00:00:00','sohrab8020','4Kau4KeL4KaDIOCmuOCni+CmueCmsOCmvuCmrCDgpongpqbgp43gpqbgpr/gpqg=','Assistant Engineer','2015-09-17','',NULL),(801,'Md Shah Alam Akand','','','','25-Nov-1956','','123456789','2378\r\n','','demo@demo.com','','','','1552303333','','','','Select Home District','','2015-09-18 00:00:00','salam3333','4Kau4KeL4KaDIOCmtuCmvuCmuSDgpobgprLgpq4g4KaG4KaV4Kao4KeN4Kam','Assistant Engineer','2015-09-17','',NULL),(802,'Md Illias Ali','','','','01-Apr-1957','','123456789','2380\r\n','','demo@demo.com','','','','1556320657','','','','Select Home District','','2015-09-18 00:00:00','illias0657','4Kau4KeL4KaDIOCmh+CmsuCmv+Cmr+CmvOCmvuCmuCDgpobgprLgp4A=','Assistant Engineer','2015-09-17','',NULL),(803,'Md Ruhul Amin Molla','','','','01-Oct-1957','','123456789','2381\r\n','','demo@demo.com','','','','1915554197','','','','Select Home District','','2015-09-18 00:00:00','ruhul2235','4Kau4KeL4KaDIOCmsOCngeCmueCngeCmsiDgpobgpq7gpr/gpqgg4Kau4KeL4Kay4KeN4Kay4Ka+','Assistant Engineer','2015-09-17','',NULL),(804,'Md Kabiruzzaman','39f6e780-7626-496a-90c2-917e681d98a1.jpg','Late Md.Abdul Hakim Daria','Late Fuljan Begum','10-Jan-1957','','1234567891915554197','2382','Mrs.Taslima Akter','kabir_btcl@yahoo.com','kabir_btcl@yahoo.com','02-9810002','02-55085077','01915554197','01718712110','House: 21 (A1), Road: 21, Sector 11, Uttara Model Town, Uttara, Dhaka, 1230','Vill: Penakhali,\r\nP.O: Sachia,\r\nP.S: Najirpur,\r\nD.S: Pirojpur','Pirojpur','','2015-10-10 00:00:00','kabir4197','4Kau4KeL4KaDIOCmleCmrOCmv+CmsOCngeCmnOCnjeCmnOCmvuCmruCmvuCmqA==','Assistant Engineer','2008-12-28','2008',NULL),(805,'Md Dalil Uddin','','','','07-Jan-1958','','123456789','2383\r\n','','demo@demo.com','','','','1552308751','','','','Select Home District','','2015-09-18 00:00:00','dalil8751','4Kau4KeL4KaDIOCmpuCmsuCmv+CmsiDgpongpqbgp43gpqbgpr/gpqg=','Assistant Engineer','2015-09-17','',NULL),(806,'Md. Noor Islam','','','','03-Dec-1958','','123456789','2387\r\n','','demo@demo.com','','','','1557704290','','','','Select Home District','','2015-09-18 00:00:00','noor4290','4Kau4KeL4KaDIOCmqOCnguCmsCDgpofgprjgprLgpr7gpq4=','Assistant Engineer','2015-09-18','',NULL),(807,'Abdur Rashid','','','','01-Jan-1957','','123456789','2388\r\n','','demo@demo.com','','','','1715018928','','','','Select Home District','','2015-09-18 00:00:00','rashid8928','4KaG4Kas4Kam4KeB4KawIOCmsOCmtuCngOCmpg==','Assistant Engineer','2015-09-17','',NULL),(808,'Md Imadul Karim','','','','09-Jan-1958','','123456789','2390\r\n','','demo@demo.com','','','','1552369096','','','','Select Home District','','2015-09-18 00:00:00','imadul9096','4Kau4KeL4KaDIOCmh+CmruCmvuCmpuCngeCmsiDgppXgprDgpr/gpq4=','Assistant Engineer','2015-09-17','',NULL),(809,'Sarder Abul Kalam','','','','29-May-1958','','123456789','2391','','demo@demo.com','','','','1817130000','','','','Select Home District','','2015-09-18 00:00:00','kalam0000','4Ka44Kaw4Kam4Ka+4KawIOCmhuCmrOCngeCmsiDgppXgpr7gprLgpr7gpq4=','Assistant Engineer','2015-09-17','',NULL),(810,'Md Nurul Islam','','','','31-Dec-1957','','123456789','2392\r\n','','demo@demo.com','','','','1555155315','','','','Select Home District','','2015-09-18 00:00:00','nurul5315','4Kau4KeL4KaDIOCmqOCngeCmsOCngeCmsiDgpofgprjgprLgpr7gpq4=','Assistant Engineer','2015-09-17','',NULL),(811,'Md Omar Ali','','','','18-Aug-1958','','123456789','2395\r\n','','demo@demo.com','','','','1715167866','','','','Select Home District','','2015-09-18 00:00:00','omar7866','4Kau4KeL4KaDIOCmk+CmruCmsCDgpobgprLgp4A=','Assistant Engineer','2015-09-17','',NULL),(812,'Sheikh Mujibur Rahman','','','','26-Jul-1956','','123456789','2396\r\n','','demo@demo.com','','','','1937194426','','','','Select Home District','','2015-09-18 00:00:00','mujib4426','4Ka24KeH4KaWIOCmruCngeCmnOCmv+CmrOCngeCmsCDgprDgprngpq7gpr7gpqg=','Assistant Engineer','2015-09-17','',NULL),(813,'Abul Kashem Khan','','','','02-Jan-1958','','123456789','2397\r\n','','demo@demo.com','','','','1727426500','','','','Select Home District','','2015-09-18 00:00:00','kashem6500','4KaG4Kas4KeB4KayIOCmleCmvuCmtuCnh+CmriDgppbgpr7gpqg=','Assistant Engineer','2015-09-17','',NULL),(814,'Md Badrul Huda','','','','11-Jan-1956','','123456789','2398\r\n','','demo@demo.com','','','','1819208523','','','','Select Home District','','2015-09-18 00:00:00','badrul8523','4Kau4KeL4KaDIOCmrOCmpuCmsOCngeCmsiDgprngp4Hgpqbgpr4=','Assistant Engineer','2015-09-17','',NULL),(815,'Md Abu Sufian','','','','31-Dec-1959','','1234567891554335749','2401\r\n','','demo@demo.com','','','','1554335749','','','','Select Home District','','2015-09-18 00:00:00','suian5749','4Kau4KeL4KaDIOCmhuCmrOCngSDgprjgp4Hgpqvgpr/gpq/gprzgpr7gpqg=','Assistant Engineer','2015-09-17','',NULL),(816,'Md Faruk Molla','','','','16-Dec-1957','','123456789','2402\r\n','','demo@demo.com','','','','1550151808','','','','Select Home District','','2015-09-18 00:00:00','faruk1808','4Kau4KeL4KaDIOCmq+CmvuCmsOCngeCmlSDgpq7gp4vgprLgp43gprLgpr4=','Assistant Engineer','2015-09-17','',NULL),(817,'Md Abul Khaier','','','','01-Oct-1958','','123456789','2403\r\n','','demo@demo.com','','','','1716783737','','','','Select Home District','','2015-09-18 00:00:00','khair3737','4Kau4KeL4KaDIOCmhuCmrOCngeCmsiDgppbgpr7gp5/gp4fgprA=','Assistant Engineer','2015-09-17','',NULL),(818,'K B Hafez Ahmed','','','','01-Jan-1960','','123456789','2404\r\n','','demo@demo.com','','','','1550151803','','','','Select Home District','','2015-09-18 00:00:00','hafez1803','4KaV4KeHIOCmrOCmvyDgprngpr7gpqvgp4fgppwg4KaG4Ka54Kau4KeH4Kam','Assistant Engineer','2015-09-17','',NULL),(819,'Md Rejaul Karim','','','','10-Jan-1959','','123456789','2405\r\n','','demo@demo.com','','','','1552580299','','','','Select Home District','','2015-09-18 00:00:00','areja0299','4Kau4KeL4KaDIOCmsOCnh+CmnOCmvuCmieCmsiDgppXgprDgpr/gpq4g','Assistant Engineer','2015-09-17','',NULL),(820,'Md Abdul Gafur','','','','30-Mar-1958','','123456789','2406\r\n','','demo@demo.com','','','','1720552826','','','','Select Home District','','2015-09-18 00:00:00','gafur2826','4Kau4KeL4KaDIOCmhuCmrOCmpuCngeCmsiDgppfgpqvgp4HgprA=','Assistant Engineer','2015-09-17','',NULL),(821,'AKM Ershad Mia','','','','01-Jan-1957','','123456789','2407\r\n','','demo@demo.com','','','','1550151806','','','','Select Home District','','2015-09-18 00:00:00','ershad1806','4KaPIOCmleCnhyDgpo/gpq4g4KaP4Kaw4Ka24Ka+4KamIOCmruCmv+Cmr+CmvOCmvg==','Assistant Engineer','2015-09-17','',NULL),(822,'Thakur Allauddin Ahmed','','','','07-Feb-1959','','123456789','2408\r\n','','demo@demo.com','','','','1711800572','','','','Select Home District','','2015-09-18 00:00:00','ahmed0572','4Kag4Ka+4KaV4KeB4KawIOCmhuCmsuCmvuCmieCmpuCnjeCmpuCmv+CmqCDgpobgprngpq7gp4fgpqY=','Assistant Engineer','2015-09-17','',NULL),(823,'Swapan Kumar Mandal','','','','02-Jun-1960','','123456789','2409','','demo@demo.com','','','','1925434143','','','','Select Home District','','2015-09-18 00:00:00','smandal4143','4Ka44KeN4Kas4Kaq4KaoIOCmleCngeCmruCmvuCmsCDgpq7gpqjgp43gpqHgprI=','Assistant Engineer','2015-09-17','',NULL),(824,'Sanowar Hossain','','','','15-Dec-1958','','123456789','2410\r\n','','demo@demo.com','','','','1711886868','','','','Select Home District','','2015-09-18 00:00:00','sanwar6868','4Ka44Ka+4Kao4KeL4Kav4Ka84Ka+4KawIOCmueCni+CmuOCnh+CmqA==','Assistant Engineer','2015-09-17','',NULL),(825,'Sheikh Rejaul Islam','','','','04-Feb-1960','','123456789','2411\r\n','','demo@demo.com','','','','1550151810','','','','Select Home District','','2015-09-18 00:00:00','reja1810','4Ka24KeH4KaWIOCmsOCnh+CmnOCmvuCmieCmsiDgpofgprjgprLgpr7gpq4=','Assistant Engineer','2015-09-17','',NULL),(826,'Md Nazrul Islam Khan','','','','06-Jan-1961','','123456789','2412\r\n','','nazrulkhan98@yahoo.com','','','','1550151818','','','','Select Home District','','2015-09-18 00:00:00','nazrul1818','4Kau4KeL4KaDIOCmqOCmnOCmsOCngeCmsiDgpofgprjgprLgpr7gpq4g4KaW4Ka+4Kao','Joint Secretary','2015-09-17','',NULL),(827,'Khandoker Borre Azam','','','','01-Jan-1959','','123456789','2413\r\n','','demo@demo.com','','','','1711869396','','','','Select Home District','','2015-09-18 00:00:00','borre9396','4KaW4Kao4KeN4Kam4KaV4Ka+4KawIOCmrOCmsOCmsOCnhyDgpobgppzgpq4=','Assistant Engineer','2015-09-17','',NULL),(828,'Md Nurul Islam Mia','','','','27-Aug-1962','','123456789','2414\r\n','','demo@demo.com','','','','1550151805','','','','Select Home District','','2015-09-18 00:00:00','nurul1805','4Kau4KeL4KaDIOCmqOCngeCmsOCngeCmsiDgpofgprjgprLgpr7gpq4g4Kau4Ka/4Kav4Ka84Ka+','Assistant Engineer','2015-09-17','',NULL),(829,'Shyamal Kumar Bishwas','','','','01-Jan-1959','','123456789','2415\r\n','','demo@demo.com','','','','1712850191','','','','Select Home District','','2015-09-18 00:00:00','skumar0191','4Ka24KeN4Kav4Ka+4Kau4KayIOCmleCngeCmruCmvuCmsCDgpqzgpr/gprbgp43gpqzgpr7gprg=','Assistant Engineer','2015-09-17','',NULL),(830,'Md. Abdus Salam','','','','28-Nov-1957','','123456789','2416\r\n','','demo@demo.com','','','','1552371059','','','','Select Home District','','2015-09-18 00:00:00','asalam1059','4Kau4KeLIC4g4KaG4Kas4KeN4Kam4KeB4Ka4IOCmuOCmvuCmsuCmvuCmrg==','Assistant Engineer','2015-09-17','',NULL),(831,'Md. Mofijul Islam','','','','01-Jan-1959','','123456789','2417\r\n','','demo@demo.com','','','','1199210890','','','','Select Home District','','2015-09-18 00:00:00','mofiz0890','4Kau4KeL4KaDIOCmruCmq+Cmv+CmnOCngeCmsiDgpofgprjgprLgpr7gpq4=','Assistant Engineer','2015-09-17','',NULL),(832,'Prodip Kumar Sharker','','','','01-May-1959','','123456789','2418\r\n','','demo@demo.com','','','','1552469855','','','','Select Home District','','2015-09-18 00:00:00','prodip9855','4Kaq4KeN4Kaw4Kam4KeA4KaqIOCmleCngeCmruCmvuCmsCDgprjgprDgppXgpr7gprAg','Assistant Engineer','2015-09-17','',NULL),(833,'Ghoznfar Ali Mozumder','','','','06-Jun-1958','','123456789','2419\r\n','','demo@demo.com','','','','1552339135','','','','Select Home District','','2015-09-18 00:00:00','gnafar9135','4KaX4Kac4Kao4Kar4KawIOCmhuCmsuCngCDgpq7gppzgp4Hgpq7gpqbgpr7gprA=','Assistant Engineer','1958-06-06','2015',NULL),(834,'Abdul Baset','','','','08-Mar-1962','','123456789','2420\r\n','','demo@demo.com','','','','1552308000','','','','Select Home District','','2015-09-18 00:00:00','baset8000','4KaG4Kas4KeN4Kam4KeB4KayIOCmrOCmvuCmuOCnh+CmpA==','Assistant Engineer','2015-09-17','',NULL),(835,'Md. Mafiz Uddin Sheikh','','','','24-Jan-1962','','123456789','2421\r\n','','demo@demo.com','','','','1552361814','','','','Select Home District','','2015-09-18 00:00:00','mafiz1814','4Kau4KeLIC4g4Kau4Kar4Ka/4KacIOCmieCmpuCnjeCmpuCmv+CmqCDgprbgp4fgppY=','Assistant Engineer','2015-09-17','',NULL),(836,'Md. Abdullah Hossain','','','','10-Sep-1961','','123456789','2422\r\n','','demo@demo.com','','','','1552372302','','','','Select Home District','','2015-09-18 00:00:00','abdul2302','4Kau4KeLIC4g4KaG4Kas4Kam4KeB4Kay4KeN4Kay4Ka+4Ka5IOCmueCni+CmuOCnh+CmqA==','Assistant Engineer','2015-09-17','',NULL),(837,'Ishotosh Chakrabarti','','','','12-Jan-1958','','123456789','2423\r\n','','demo@demo.com','','','','1727693080','','','','Select Home District','','2015-09-18 00:00:00','isho3080','4KaH4Ka24Kak4KeL4Ka3IOCmmuCmleCnjeCmsOCmrOCmsOCnjeCmpOCngA==','Assistant Engineer','2015-09-17','',NULL),(838,'Zakaria Faridi','','','','07-Jan-1961','','123456789','2424\r\n','','demo@demo.com','','','','1819310126','','','','Select Home District','','2015-09-18 00:00:00','zakir0126','4Kac4Ka+4KaV4Ka+4Kaw4Ka/4Kef4Ka+IOCmq+CmsOCmv+CmpuCngA==','Assistant Engineer','2015-09-17','',NULL),(839,'Nurul Amin','','','','30-Jun-1961','','123456789','2425\r\n','','demo@demo.com','','','','1817734338','','','','Select Home District','','2015-09-18 00:00:00','nurul4338','4Kao4KeB4Kaw4KeB4KayIOCmhuCmruCmv+CmqA==','Assistant Engineer','2015-09-17','',NULL),(840,'Montush Kumar Banik','','','','24-Jul-1960','','123456789','2426\r\n','','demo@demo.com','','','','1199073355','','','','Select Home District','','2015-09-18 00:00:00','montos3355','4Kau4Kao4Kak4KeL4Ka3IOCmleCngeCmruCmvuCmsCDgpqzgpqjgpr/gppU=','Assistant Engineer','2015-09-17','',NULL),(841,'Md. Zohurul Haque','','','','01-Jun-1961','','123456789','2427\r\n','','zohurul1961@gmail.com','','','','1552358324','','','','Select Home District','','2015-09-18 00:00:00','zhaq8324','4Kau4KeL4KaDIOCmnOCmueCngeCmsOCngeCmsiDgprngppU=','Assistant Engineer','2015-09-17','',NULL),(842,'Md. Shahidul Islam','','','','17-Sep-2015','','123456789','2428\r\n','','demo@demo.com','','','','1712647961','','','','Select Home District','','2015-09-18 00:00:00','sislam7961','4Kau4KeLLiDgprbgprngp4Dgpqbgp4HgprIg4KaH4Ka44Kay4Ka+4Kau','Assistant Engineer','2015-09-17','',NULL),(843,'Md. Shahidul Islam','','','','31-Dec-1957','','123456789','2429\r\n','','demo@demo.com','','','','1553104410','','','','Select Home District','','2015-09-18 00:00:00','sislam4410','4Kau4KeLLiDgprbgprngp4Dgpqbgp4HgprIg4KaH4Ka44Kay4Ka+4Kau','Assistant Engineer','2015-09-17','',NULL),(844,'Md. Abul Kalam Azad ','','','','01-Aug-1961','','123456789','2430\r\n','','demo@demo.com','','','','1552307722','','','','Select Home District','','2015-09-18 00:00:00','azad7722','IOCmruCniy4g4KaG4Kas4KeB4KayIOCmleCmvuCmsuCmvuCmriDgpobgppzgpr7gpqY=','Assistant Engineer','2015-09-17','',NULL),(845,'A.F.M. Alauddin Al Azad','','','','11-May-1962','','123456789','2431\r\n','','demo@demo.com','','','','1552368552','','','','Select Home District','','2015-09-18 00:00:00','azad8552','4KaPIOCmj+CmqyDgpo/gpq4g4KaG4Kay4Ka+4KaJ4Kam4KeN4Kam4Ka/4KaoIOCmhuCmsiDgpobgppzgpr7gpqY=','Assistant Engineer','2015-09-17','',NULL),(846,'Md Ziaul Karim','','','','05-Jan-1966','','123456789','2107','','demo@demo.com','','','','1550151200','','','','Select Home District','','2015-09-17 00:00:00','ziaul1200','4Kau4KeL4KaDIOCmnOCmv+Cnn+CmvuCmieCmsiDgppXgprDgpr/gpq4=','Director','2015-09-17','',NULL),(847,'S.O.M. Kalimullah ','','','','01-Jan-1950','','','2002','','demo@demo.com','','','','123456789','','','','Select Home District','','2015-10-10 00:00:00','kalim2002','4KaP4Ka4IOCmkyDgpo/gpq4g4KaV4Kay4Ka/4Kau4KeB4Kay4KeN4Kay4Ka+4Ka5','MD','1971-01-01','',NULL),(848,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'demo@demo.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'obaid2001',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `members_child` */

DROP TABLE IF EXISTS `members_child`;

CREATE TABLE `members_child` (
  `childid` int(11) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `childname` varchar(256) DEFAULT NULL,
  `dateofbirth` varchar(256) DEFAULT NULL,
  `gendar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `members_child` */

insert  into `members_child`(`childid`,`memberid`,`childname`,`dateofbirth`,`gendar`) values (NULL,112,'test','02-Sep-2000','Male'),(NULL,112,'test 2','02-Sep-2003','Female'),(NULL,804,'Md. Saiful Islam','11-Jul-1984','Male'),(NULL,804,'Md. Shariful Islam','','Male');

/*Table structure for table `members_postingplaces` */

DROP TABLE IF EXISTS `members_postingplaces`;

CREATE TABLE `members_postingplaces` (
  `postingid` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) DEFAULT NULL,
  `designation` varchar(256) DEFAULT NULL,
  `nameoftheoffice` varchar(256) DEFAULT NULL,
  `dateofjoining` varchar(256) DEFAULT NULL,
  `present` tinyint(1) DEFAULT NULL,
  `immediatepast` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`postingid`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

/*Data for the table `members_postingplaces` */

insert  into `members_postingplaces`(`postingid`,`memberid`,`designation`,`nameoftheoffice`,`dateofjoining`,`present`,`immediatepast`) values (47,112,'GM, Rangpur','rangpur','31-Aug-2008',1,0),(54,804,'Sub-Divisional Engineer','Tongi Telephone Bhaban','',1,0);

/*Table structure for table `members_qualification` */

DROP TABLE IF EXISTS `members_qualification`;

CREATE TABLE `members_qualification` (
  `qualificationid` int(11) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `degreename` varchar(256) DEFAULT NULL,
  `institute` varchar(256) DEFAULT NULL,
  `passingyear` varchar(256) DEFAULT NULL,
  `subject` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `members_qualification` */

insert  into `members_qualification`(`qualificationid`,`memberid`,`degreename`,`institute`,`passingyear`,`subject`) values (NULL,112,'Graduation','spj','2006','Subject'),(NULL,112,'Post Graduation','spj','2008','Subject'),(NULL,804,'Diploma in Engineering','Khulna Polytechnic','1979','Electrical Engineering');

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `messageid` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(1000) DEFAULT NULL,
  `messagedate` datetime DEFAULT NULL,
  `displaytill` datetime DEFAULT NULL,
  `sentby` varchar(256) DEFAULT NULL,
  `senttoall` int(11) DEFAULT '0',
  PRIMARY KEY (`messageid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `message` */

insert  into `message`(`messageid`,`message`,`messagedate`,`displaytill`,`sentby`,`senttoall`) values (11,'4Kas4Ka+4KaC4Kay4Ka+4Kam4KeH4Ka2IOCmuOCnh+CmqOCmvuCmrOCmvuCmueCmv+CmqOCngCDgpqzgpr7gpoLgprLgpr7gpqbgp4fgprYg4Ka44Ka+4Kau4Kaw4Ka/4KaVIOCmrOCmvuCmueCmv+CmqOCngOCmsCDgpo/gppXgpp/gpr8g4Ka24Ka+4KaW4Ka+4KWkIOCmj+CmhyDgpqzgpr7gprngpr/gpqjgp4Ag4Kas4Ka+4KaC4Kay4Ka+4Kam4KeH4Ka24KeH4KawIOCmuOCnjeCmrOCmvuCmp+CngOCmqOCmpOCmviDgpq/gp4Hgpqbgp43gpqfgp4fgprAg4Kaq4Kaw4KeHIOCnp+Cnr+CnreCnpyDgppbgp43gprDgpr/gprjgp43gpp/gpr7gpqzgp43gpqbgp4fgprAg4Keo4Kes4Ka24KeHIOCmoeCmv+CmuOCnh+CmruCnjeCmrOCmsCDgpqrgpr7gppXgpr/gprjgp43gpqTgpr7gpqjgp4Ag4Ka44KeH4Kao4Ka+4Kas4Ka+4Ka54Ka/4Kao4KeA4KawIOCmrOCmvuCmmeCmvuCmsuCmvyDgprjgp4fgpqjgpr4g4KaTIOCmruCngeCmleCnjeCmpOCmv+CmrOCmvuCmueCmv+CmqOCngOCmsCDgprjgpqbgprjgp43gpq/gpqbgp4fgprAg4Kao4Ka/4Kav4Ka84KeHIOCml+CmoOCmv+CmpCDgprngpq/gprzgpaQg4Kas4Kaw4KeN4Kak4Kau4Ka+4Kao4KeHIOCmj+CmhyDgpqzgpr7gprngpr/gpqjgp4DgprAg4Ka44Ka+4Kau4Kaw4KeN4Kal4KeN4KavIOCmquCnjeCmsOCmvuCmr+CmvCDgp6ngp6bgp6Ys4Kem4Kem4KemIOCmuOCmpuCmuOCnjeCmr+ClpA==','2015-10-12 19:05:36','2015-10-14 00:00:00','support',1);

/*Table structure for table `message_hidden` */

DROP TABLE IF EXISTS `message_hidden`;

CREATE TABLE `message_hidden` (
  `messageid` int(11) NOT NULL,
  `memberid` int(11) NOT NULL,
  `ishide` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `message_hidden` */

/*Table structure for table `message_recepient` */

DROP TABLE IF EXISTS `message_recepient`;

CREATE TABLE `message_recepient` (
  `messageid` int(11) NOT NULL,
  `memberid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `message_recepient` */

insert  into `message_recepient`(`messageid`,`memberid`) values (10,716),(10,717);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(256) DEFAULT NULL,
  `Summary` text,
  `description` text,
  `create_date` datetime DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `published_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `news` */

insert  into `news`(`news_id`,`news_title`,`Summary`,`description`,`create_date`,`ExpiryDate`,`published_by`) values (10,'Q2FsbCBmb3IgQmFubmVyIA==','PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogOXB0OyBmb250LWZhbWlseTogYXJpYWwsc2Fucy1zZXJpZjsgY29sb3I6ICMzMzMzMzM7Ij5JdCBpcyBoZXJlYnkgcmVxdWVzdGVkIHRvIHN1Ym1pdCBkZXNpZ25lZCBCYW5uZXIgKEhlYWRlcikgZm9yIHRoZSB3ZWJwYWdlIG9mIEJDUyAoVGVsZWNvbSkgU2FtaXR5IDx1Pm9uIG9yIGJlZm9yZSBPY3RvYmVyIDE1LCAyMDE1IHRvIFB1YmxpY2l0eSBTZWNyZXRhcnkgTXIuIFRyaXJhdG5hIEJpa2FzaCBUcmlwdXJhPC91PiBoYXZpbmcgMTkyMCB4IDI1MCBQaXhlbHMuIFRoZSBiYW5uZXIgbXVzdCBjb250YWluKE5vdCBMaW1pdGVkIHRvKSBMb2dvIG9mIHRoZSBCQ1MgKFRlbGVjb20pIFNhbWl0eSwgYW5kIGEgdGV4dCDigJwgQkNTIChUZWxlY29tKSBTYW1pdHnigJ08L3NwYW4+','PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogOXB0OyBmb250LWZhbWlseTogYXJpYWwsc2Fucy1zZXJpZjsgY29sb3I6ICMzMzMzMzM7Ij5JdCBpcyBoZXJlYnkgcmVxdWVzdGVkIHRvIHN1Ym1pdCBkZXNpZ25lZCBCYW5uZXIgKEhlYWRlcikgZm9yIHRoZSB3ZWJwYWdlIG9mIEJDUyAoVGVsZWNvbSkgU2FtaXR5IDx1Pm9uIG9yIGJlZm9yZSBPY3RvYmVyIDE1LCAyMDE1IHRvIFB1YmxpY2l0eSBTZWNyZXRhcnkgTXIuIFRyaXJhdG5hIEJpa2FzaCBUcmlwdXJhPC91PiBoYXZpbmcgMTkyMCB4IDI1MCBQaXhlbHMuIFRoZSBiYW5uZXIgbXVzdCBjb250YWluKE5vdCBMaW1pdGVkIHRvKSBMb2dvIG9mIHRoZSBCQ1MgKFRlbGVjb20pIFNhbWl0eSwgYW5kIGEgdGV4dCDigJwgQkNTIChUZWxlY29tKSBTYW1pdHnigJ08L3NwYW4+','2015-10-09 08:50:56','2015-10-15 00:00:00',NULL),(11,'Q2FsbCBmb3IgV2VsY29tZSBNZXNzYWdlIA==','PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogOXB0OyBsaW5lLWhlaWdodDogMTE1JTsgZm9udC1mYW1pbHk6IGFyaWFsLHNhbnMtc2VyaWY7IGNvbG9yOiAjMzMzMzMzOyI+SXQgaXMgaGVyZWJ5IHJlcXVlc3RlZCB0byBzdWJtaXQgd2VsY29tZSBtZXNzYWdlIGZvciB0aGUgd2VicGFnZSBvZiBCQ1MgKFRlbGVjb20pIFNhbWl0eSA8dT5vbiBvciBiZWZvcmUgT2N0b2JlciAxNSwgMjAxNSB0byBQdWJsaWNpdHkgU2VjcmV0YXJ5IE1yLiBUcmlyYXRuYSBCaWthc2ggVHJpcHVyYSZuYnNwOzwvdT5jb250YWluaW5nIFNhbWl0eeKAmXMgbW90dG8gYW5kIGFjdGl2YXRlcy4gVGhlIGJlc3Qgb25lIHdpbGwgYmUgcGxhY2VkIGluIHN0ZWFkIG9mIGN1cnJlbnQmbmJzcDsmbmJzcDsg4oCcV2VsY29tZeKAnSBtZXNzYWdlLjwvc3Bhbj5DYWxsIGZvciBXZWxjb21lIE1lc3NhZ2U=','PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogOXB0OyBsaW5lLWhlaWdodDogMTE1JTsgZm9udC1mYW1pbHk6IGFyaWFsLHNhbnMtc2VyaWY7IGNvbG9yOiAjMzMzMzMzOyI+SXQgaXMgaGVyZWJ5IHJlcXVlc3RlZCB0byBzdWJtaXQgd2VsY29tZSBtZXNzYWdlIGZvciB0aGUgd2VicGFnZSBvZiBCQ1MgKFRlbGVjb20pIFNhbWl0eSA8dT5vbiBvciBiZWZvcmUgT2N0b2JlciAxNSwgMjAxNSB0byBQdWJsaWNpdHkgU2VjcmV0YXJ5IE1yLiBUcmlyYXRuYSBCaWthc2ggVHJpcHVyYSZuYnNwOzwvdT5jb250YWluaW5nIFNhbWl0eeKAmXMgbW90dG8gYW5kIGFjdGl2YXRlcy4gVGhlIGJlc3Qgb25lIHdpbGwgYmUgcGxhY2VkIGluIHN0ZWFkIG9mIGN1cnJlbnQmbmJzcDsmbmJzcDsg4oCcV2VsY29tZeKAnSBtZXNzYWdlLjwvc3Bhbj4=','2015-10-09 08:52:40','2015-10-15 00:00:00',NULL);

/*Table structure for table `photogallery` */

DROP TABLE IF EXISTS `photogallery`;

CREATE TABLE `photogallery` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryId` int(11) DEFAULT NULL,
  `Title` varchar(256) DEFAULT NULL,
  `ImagePath` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CategoryId` (`CategoryId`),
  CONSTRAINT `photogallery_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `photogallery` */

insert  into `photogallery`(`Id`,`CategoryId`,`Title`,`ImagePath`) values (16,2,'Lorem Ipsum is simply dummy text','461261148-Penguins.jpg'),(17,3,'Lorem Ipsum is simply dummy text','1372856461-Tulips.jpg');

/*Table structure for table `poll` */

DROP TABLE IF EXISTS `poll`;

CREATE TABLE `poll` (
  `pollid` int(11) NOT NULL AUTO_INCREMENT,
  `topics` varchar(1000) NOT NULL,
  `polldate` datetime NOT NULL,
  `expiredate` datetime NOT NULL,
  `enableforvoting` tinyint(1) DEFAULT NULL,
  `onlyforec` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pollid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `poll` */

insert  into `poll`(`pollid`,`topics`,`polldate`,`expiredate`,`enableforvoting`,`onlyforec`) values (16,'How do you feel about the website ? ','2015-10-11 00:00:00','2015-10-22 00:00:00',1,0),(17,'The Inauguration Ceremony & Eid Re-Union on 08 Oct, 2015 was---','2015-10-11 00:00:00','2015-10-20 00:00:00',1,0),(18,'Are you happy with the activities of Executive Committee?','2015-10-12 00:00:00','2015-10-12 00:00:00',1,1),(19,'test poll','2015-10-13 17:14:45','2015-10-30 13:30:00',1,0);

/*Table structure for table `polloptions` */

DROP TABLE IF EXISTS `polloptions`;

CREATE TABLE `polloptions` (
  `optionid` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) DEFAULT NULL,
  `optiontext` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`optionid`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

/*Data for the table `polloptions` */

insert  into `polloptions`(`optionid`,`pollid`,`optiontext`) values (1,1,'Yes'),(2,1,'No'),(3,1,'No Comment'),(4,2,'Yes'),(5,2,'No'),(6,2,'No Comment'),(7,3,'Agree '),(8,4,'mizan'),(9,4,'Disagree'),(10,4,'Not sure'),(11,3,'Disagree'),(12,10,'Option 1'),(13,10,'Option 2'),(14,12,'Working properly'),(15,12,'Not working'),(16,13,'option 1'),(17,13,'option 2'),(18,14,'option 1'),(19,14,'option 2'),(25,21,'23dd'),(26,22,'option 1'),(27,22,'option 2'),(28,23,'option 1'),(29,23,'option 2'),(30,23,'1234567890123456789012345678901234567890-1234567890012345657890'),(31,24,'option1'),(32,24,'1234567890123456789012345678901234567890-1234567890012345657890'),(33,25,'option 1'),(34,25,'option 2'),(35,26,'option1'),(36,26,'option 2'),(38,1,'Very good'),(40,3,'good'),(41,4,'yes'),(42,5,'test 1'),(43,5,'test 2'),(44,5,'test 3'),(45,5,'test 4'),(46,6,'test 1'),(47,6,'test 2'),(48,6,'test 3'),(49,6,'test 4'),(50,7,'001'),(51,7,'002'),(52,7,'003'),(53,7,'004'),(54,8,'Nurul Amin'),(55,9,'guess 1'),(56,9,'guess 2'),(57,9,':P'),(58,10,'test 1'),(59,11,'option 1'),(60,11,'option change'),(61,16,'Excellent'),(62,16,'Good'),(63,16,'Fair'),(64,16,'Poor'),(65,17,'Excellent'),(67,17,'Good'),(68,17,'Poor'),(69,17,'No Comment'),(70,18,'Yes'),(71,18,'No'),(73,18,'No Comment'),(74,19,'option 1'),(75,19,'option 2');

/*Table structure for table `pollresults` */

DROP TABLE IF EXISTS `pollresults`;

CREATE TABLE `pollresults` (
  `pollid` int(11) DEFAULT NULL,
  `optionid` int(11) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pollresults` */

insert  into `pollresults`(`pollid`,`optionid`,`memberid`) values (3,7,9),(10,13,16),(12,15,9),(13,16,9),(26,36,9),(1,38,16),(4,8,32),(5,43,111),(6,46,112),(5,44,112),(6,47,310),(11,59,838),(5,42,838),(6,49,838),(11,60,568),(13,17,470),(9,57,470),(16,62,716),(16,61,725),(17,69,716),(11,60,716),(10,58,716),(16,61,620),(17,67,620),(18,73,716);

/*Table structure for table `resource` */

DROP TABLE IF EXISTS `resource`;

CREATE TABLE `resource` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(256) DEFAULT NULL,
  `Details` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `resource` */

insert  into `resource`(`Id`,`Title`,`Details`) values (1,'Souvenirs','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),(2,'Writings by members','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, '),(3,'Scholarships and Academic Resources','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, '),(4,'Other Resources','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, ');

/*Table structure for table `subcategory` */

DROP TABLE IF EXISTS `subcategory`;

CREATE TABLE `subcategory` (
  `SCID` int(11) NOT NULL AUTO_INCREMENT,
  `SCName` varchar(200) DEFAULT NULL,
  `CID` int(11) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`SCID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `subcategory` */

insert  into `subcategory`(`SCID`,`SCName`,`CID`,`Description`) values (4,'4th Toyota Cup',2,NULL),(13,'AGC Hoasaf Monsoon Cup',2,NULL),(14,'First Sub category',1,NULL),(15,'testing',1,NULL),(16,'winning',2,NULL),(17,'War',3,NULL),(18,'Pared ',4,NULL),(20,'Game',4,NULL),(21,'Teamwork',4,NULL),(22,'Cultural ceremony',6,NULL);

/*Table structure for table `year` */

DROP TABLE IF EXISTS `year`;

CREATE TABLE `year` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Year` varchar(256) NOT NULL,
  `IsCurrentExe` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `year` */

insert  into `year`(`Id`,`Year`,`IsCurrentExe`) values (3,'2012-2013 [Extended up to 2014]','\0'),(5,'2004-2005 [Extended up to 2008]','\0'),(6,'2009-2010 [Extended up to 2011]','\0'),(7,'2002-2003','\0'),(8,'2015-2016','');

/* Procedure structure for procedure `aspnet_Applications_CreateApplication` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Applications_CreateApplication` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Applications_CreateApplication`(ApplicationName  NATIONAL VARCHAR(256),
    INOUT ApplicationId          CHAR(36))
BEGIN
   declare v_TranS BOOLEAN;
   DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
   BEGIN
      SET @SWV_Error = 1;
   END;
   select   ApplicationId INTO ApplicationId   FROM aspnet_Applications WHERE LOWER(ApplicationName) = LoweredApplicationName;
   IF(ApplicationId   IS NULL) then
      SET v_TranS = 0;
      START TRANSACTION;
      SET v_TranS = 1;
      select   ApplicationId INTO ApplicationId   FROM aspnet_Applications  WHERE LOWER(ApplicationName) = LoweredApplicationName;
      IF(ApplicationId   IS NULL) then
         SET ApplicationId   = UUID();
         INSERT  aspnet_Applications(ApplicationId,ApplicationName,LoweredApplicationName)
         VALUES(ApplicationId  ,ApplicationName,LOWER(ApplicationName));
      END IF;
      IF(v_TranS = 1) then
         IF(@SWV_Error = 0) then
            SET v_TranS = 0;
            COMMIT;
         ELSE
            SET v_TranS = 0;
            ROLLBACK;
         END IF;
      END IF;
   END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_Membership_FindUsersByEmail` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Membership_FindUsersByEmail` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Membership_FindUsersByEmail`(ApplicationName       NATIONAL VARCHAR(256),
    EmailToMatch          NATIONAL VARCHAR(256),
    PageIndex             INT,
    PageSize              INT,INOUT SWP_Ret INT)
SWL_return:
BEGIN
   declare v_Appli2 CHAR(36);
   declare v_PageL INT;
   declare v_PageU INT;
   declare v_Total INT;
   SET v_Appli2 = NULL;
   select   ApplicationId INTO v_Appli2 FROM aspnet_Applications WHERE LOWER(ApplicationName) = LoweredApplicationName;
   IF(v_Appli2 IS NULL) then
      SET SWP_Ret = 0;
      LEAVE SWL_return;
   END IF;
   SET v_PageL = v_PageS*v_PageI;
   SET v_PageU = v_PageS -1+v_PageL;
   DROP TEMPORARY TABLE IF EXISTS tt_PageIndexForUsers;
   
CREATE TEMPORARY TABLE tt_PageIndexForUsers
   (
      IndexId INT NOT NULL  AUTO_INCREMENT PRIMARY KEY,
      UserId CHAR(36)
   )  AUTO_INCREMENT = 0;
   IF(v_Email IS NULL) then
      INSERT INTO tt_PageIndexForUsers(UserId)
      SELECT u.UserId
      FROM   aspnet_Users u, aspnet_Membership m
      WHERE  u.ApplicationId = v_Appli2 AND m.UserId = u.UserId AND m.Email IS NULL
      ORDER BY m.LoweredEmail;
   ELSE
      INSERT INTO tt_PageIndexForUsers(UserId)
      SELECT u.UserId
      FROM   aspnet_Users u, aspnet_Membership m
      WHERE  u.ApplicationId = v_Appli2 AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(EmailToMatch)
      ORDER BY m.LoweredApplicationName;
   END IF;
   SELECT  u.UserName,m.Email,m.PasswordQuestion,m.Comment,m.IsApproved,m.CreateDate,m.LastLoginDate,u.LastActivityDate,
   m.LastPasswordChangedDate,u.UserId,m.IsLockedOut,m.LastLockoutDate
   FROM   aspnet_Membership m, aspnet_Users u, tt_PageIndexForUsers p
   WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
   p.IndexId >= v_PageL AND p.IndexId <= v_PageU
   ORDER BY m.LoweredEmail;
   select   COUNT(*) INTO v_Total FROM    tt_PageIndexForUsers;
   SET SWP_Ret = v_Total;
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_Membership_FindUsersByName` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Membership_FindUsersByName` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Membership_FindUsersByName`(ApplicationName       NATIONAL VARCHAR(256),
    UserNameToMatch       NATIONAL VARCHAR(256),
    PageIndex             INT,
    PageSize              INT,INOUT SWP_Ret INT)
SWL_return:
BEGIN
   declare v_Appli2 CHAR(36);
   declare v_PageL INT;
   declare v_PageU INT;
   declare v_Total INT;
   SET v_Appli2 = NULL;
   select   ApplicationId INTO v_Appli2 FROM aspnet_Applications WHERE LOWER(ApplicationName) = LoweredApplicationName;
   IF(v_Appli2 IS NULL) then
      SET SWP_Ret = 0;
      LEAVE SWL_return;
   END IF;
   SET v_PageL = PageSize*PageIndex;
   SET v_PageU = PageSize -1+v_PageL;
   DROP TEMPORARY TABLE IF EXISTS tt_PageIndexForUsers;
   
CREATE TEMPORARY TABLE tt_PageIndexForUsers
   (
      IndexId INT NOT NULL  AUTO_INCREMENT PRIMARY KEY,
      UserId CHAR(36)
   )  AUTO_INCREMENT = 0;
   INSERT INTO tt_PageIndexForUsers(UserId)
   SELECT u.UserId
   FROM   aspnet_Users u, aspnet_Membership m
   WHERE  u.ApplicationId = v_Appli2 AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(UserNameToMatch)
   ORDER BY u.UserName;
   SELECT  u.UserName,m.Email,m.PasswordQuestion,m.Comment,m.IsApproved,m.CreateDate,m.LastLoginDate,u.LastActivityDate,
   m.LastPasswordChangedDate,u.UserId,m.IsLockedOut,m.LastLockoutDate
   FROM   aspnet_Membership m, aspnet_Users u, tt_PageIndexForUsers p
   WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
   p.IndexId >= v_PageL AND p.IndexId <= v_PageU
   ORDER BY u.UserName;
   select   COUNT(*) INTO v_Total FROM    tt_PageIndexForUsers;
   SET SWP_Ret = v_Total;
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_Membership_GetAllUsers` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Membership_GetAllUsers` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Membership_GetAllUsers`(ApplicationName       NATIONAL VARCHAR(256),
    PageIndex             INT,
    PageSize              INT,INOUT SWP_Ret INT)
SWL_return:
BEGIN
   declare v_Appli2 CHAR(36);
   declare v_PageL INT;
   declare v_PageU INT;
   declare v_Total INT;
   SET v_Appli2 = NULL;
   select   ApplicationId INTO v_Appli2 FROM aspnet_Applications WHERE LOWER(ApplicationName) = LoweredApplicationName;
   IF(v_Appli2 IS NULL) then
      SET SWP_Ret = 0;
      LEAVE SWL_return;
   END IF;
   SET v_PageL = PageSize*PageIndex;
   SET v_PageU = PageSize -1+v_PageL;
   DROP TEMPORARY TABLE IF EXISTS tt_PageIndexForUsers;
   
CREATE TEMPORARY TABLE tt_PageIndexForUsers
   (
      IndexId INT NOT NULL  AUTO_INCREMENT PRIMARY KEY,
      UserId CHAR(36)
   )  AUTO_INCREMENT = 0;
   INSERT INTO tt_PageIndexForUsers(UserId)
   SELECT u.UserId
   FROM   aspnet_Membership m, aspnet_Users u
   WHERE  u.ApplicationId = v_Appli2 AND u.UserId = m.UserId
   ORDER BY u.UserName;
   SET v_Total = ROW_COUNT();
   SELECT u.UserName,m.Email,m.PasswordQuestion,m.Comment,m.IsApproved,m.CreateDate,m.LastLoginDate,u.LastActivityDate,
   m.LastPasswordChangedDate,u.UserId,m.IsLockedOut,m.LastLockoutDate
   FROM   aspnet_Membership m, aspnet_Users u, tt_PageIndexForUsers p
   WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
   p.IndexId >= v_PageL AND p.IndexId <= v_PageU
   ORDER BY u.UserName;
   SET SWP_Ret = v_Total;
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_Membership_GetPassword` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Membership_GetPassword` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Membership_GetPassword`(ApplicationName                NATIONAL VARCHAR(256),
    UserName                       NATIONAL VARCHAR(256),
    MaxInvalidPasswordAttempts     INT,
    PasswordAttemptWindow          INT,
    CurrentTimeUtc                 DATETIME,
    PasswordAnswer                 NATIONAL VARCHAR(128) ,INOUT SWP_Ret INT)
SWL_return:
BEGIN
   declare v_UserI CHAR(36);
   declare v_Passw3 INT;
   declare v_Passw4 NATIONAL VARCHAR(128);
   declare v_passA NATIONAL VARCHAR(128);
   declare v_IsLoc BOOLEAN;
   declare v_LastL DATETIME;
   declare v_Faile INT;
   declare v_Faile2 DATETIME;
   declare v_Faile3 INT;
   declare v_Faile4 DATETIME;
   declare v_Error INT;
   declare v_TranS BOOLEAN;
   DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
   BEGIN
      SET @SWV_Error = 1;
   END;
   SET @SWV_Error = 0;
   SET v_Error = 0;
   SET v_TranS = 0;
   START TRANSACTION;
   SET v_TranS = 1;
   select   u.UserId,m.PasswordFormat,m.Password,m.passAns,m.IsLockedOut,m.LastLockoutDate,m.FailedPasswordAttemptCount,
   m.FailedPasswordAttemptWindowStart,m.FailedPasswordAnswerAttemptCount,m.FailedPasswordAnswerAttemptWindowStart INTO v_UserI,v_Passw4,v_passA,v_Passw3,v_IsLoc,v_LastL,v_Faile,v_Faile2,v_Faile3,
   v_Faile4 FROM    aspnet_Applications a, aspnet_Users u, aspnet_Membership m  WHERE   LOWER(ApplicationName) = a.LoweredApplicationName AND
   u.ApplicationId = a.ApplicationId    AND
   u.UserId = m.UserId AND
   LOWER(UserName) = u.LoweredUserName;
   IF(ROW_COUNT() = 0) then
      SET v_Error = 1;
        
      IF(v_TranS = 1) then
         SET v_TranS = 0;
         ROLLBACK;
      END IF;
      SET SWP_Ret = v_Error;
      LEAVE SWL_return;
   END IF;
   IF(v_IsLoc = 1) then
      SET v_Error = 99;
        
      IF(v_TranS = 1) then
         SET v_TranS = 0;
         ROLLBACK;
      END IF;
      SET SWP_Ret = v_Error;
      LEAVE SWL_return;
   END IF;
   IF(NOT(PasswordAnswer IS NULL)) then
      IF((v_passA IS NULL) OR(LOWER(v_passA) <> LOWER(PasswordAnswer))) then
         IF(CurrentTimeUtc > TIMESTAMPADD(minute,PasswordAttemptWindow,v_Faile4)) then
            SET v_Faile4 = CurrentTimeUtc;
            SET v_Faile3 = 1;
         ELSE
            SET v_Faile3 = v_Faile3+1;
            SET v_Faile4 = CurrentTimeUtc;
         END IF;
         BEGIN
            IF(v_Faile3 >= MaxInvalidPasswordAttempts) then
               SET v_IsLoc = 1;
               SET v_LastL = CurrentTimeUtc;
            END IF;
         END;
         SET v_Error = 3;
      ELSE
         IF(v_Faile3 > 0) then
            SET v_Faile3 = 0;
            SET v_Faile4 = STR_TO_DATE('17540101','%Y%m%d');
         END IF;
      END IF;
      SET @SWV_Error = 0;
      UPDATE aspnet_Membership
      SET IsLocke = v_IsLoc,LastLoc = v_LastL,FailedP = v_Faile,FailedP2 = v_Faile2,
      FailedP3 = v_Faile3,FailedP4 = v_Faile4
      WHERE v_UserI = UserId;
      IF(@SWV_Error <> 0) then
         SET v_Error = -1;
            
         IF(v_TranS = 1) then
            SET v_TranS = 0;
            ROLLBACK;
         END IF;
         SET SWP_Ret = v_Error;
         LEAVE SWL_return;
      END IF;
   END IF;
   IF(v_TranS = 1) then
      SET v_TranS = 0;
      COMMIT;
   END IF;
   IF(v_Error = 0) then
      SELECT v_Passw4,v_Passw3;
   END IF;
   SET SWP_Ret = v_Error;
   LEAVE SWL_return;
   IF(v_TranS = 1) then
      SET v_TranS = 0;
      ROLLBACK;
   END IF;
   SET SWP_Ret = v_Error;
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_Membership_GetPasswordWithFormat` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Membership_GetPasswordWithFormat` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Membership_GetPasswordWithFormat`(ApplicationName                 NATIONAL VARCHAR(256),
    UserName                       NATIONAL VARCHAR(256),
    UpdateLastLoginActivityDate    BOOLEAN,
    CurrentTimeUtc                 DATETIME,INOUT SWP_Ret INT)
SWL_return:
BEGIN
   declare v_IsLoc BOOLEAN;
   declare v_UserI CHAR(36);
   declare v_Passw NATIONAL VARCHAR(128);
   declare v_Passw2 NATIONAL VARCHAR(128);
   declare v_Passw3 INT;
   declare v_Faile INT;
   declare v_Faile2 INT;
   declare v_IsApp BOOLEAN;
   declare v_LastA DATETIME;
   declare v_LastL DATETIME;
   SET v_UserI = NULL;
   select   u.UserId,m.IsLockedOut,Password,PasswordFormat,PasswordSalt,FailedPasswordAttemptCount,FailedPasswordAnswerAttemptCount,IsApproved,
   LastActivityDate,LastLoginDate INTO v_UserI,v_IsLoc,v_Passw,v_Passw3,v_Passw2,v_Faile,v_Faile2,v_IsApp,v_LastA,
   v_LastL FROM    aspnet_Applications a, aspnet_Users u, aspnet_Membership m WHERE   LOWER(ApplicationName ) = a.LoweredApplicationName AND
   u.ApplicationId = a.ApplicationId    AND
   u.UserId = m.UserId AND
   LOWER(UserName) = u.LoweredUserName;
   IF(v_UserI IS NULL) then
      SET SWP_Ret = 1;
      LEAVE SWL_return;
   END IF;
   IF(v_IsLoc = 1) then
      SET SWP_Ret = 99;
      LEAVE SWL_return;
   END IF;
   SELECT   v_Passw,v_Passw3,v_Passw2,v_Faile,v_Faile2,v_IsApp,v_LastL,v_LastA;
   IF(UpdateLastLoginActivityDate = 1 AND v_IsApp = 1) then
      UPDATE  aspnet_Membership
      SET     LastLoginDate = CurrentTimeUtc
      WHERE   UserId = v_UserI;
      UPDATE  aspnet_Users
      SET     LastActivityDate = CurrentTimeUtc
      WHERE   v_UserI = UserId;
   END IF;
   SET SWP_Ret = 0;
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_Membership_GetUserByEmail` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Membership_GetUserByEmail` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Membership_GetUserByEmail`(ApplicationName  NATIONAL VARCHAR(256),
    Email            NATIONAL VARCHAR(256),INOUT SWP_Ret INT)
SWL_return:
BEGIN
   IF(Email IS NULL) then
      SELECT  u.UserName
      FROM    aspnet_Applications a, aspnet_Users u, aspnet_Membership m
      WHERE   LOWER(ApplicationName) = a.LoweredApplicationName AND
      u.ApplicationId = a.ApplicationId    AND
      u.UserId = m.UserId AND
      m.LoweredEmail IS NULL;
   ELSE
      SELECT  u.UserName
      FROM    aspnet_Applications a, aspnet_Users u, aspnet_Membership m
      WHERE   LOWER(ApplicationName) = a.LoweredApplicationName AND
      u.ApplicationId = a.ApplicationId    AND
      u.UserId = m.UserId AND
      LOWER(Email) = m.LoweredEmail;
   END IF;
   IF(ROW_COUNT() = 0) then
      SET SWP_Ret =(1);
      LEAVE SWL_return;
   END IF;
   SET SWP_Ret =(0);
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_Membership_GetUserByName` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Membership_GetUserByName` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Membership_GetUserByName`(ApplicationName      NATIONAL VARCHAR(256),
    UserName             NATIONAL VARCHAR(256),
    CurrentTimeUtc       DATETIME,
    UpdateLastActivity   BOOLEAN ,INOUT SWP_Ret INT)
SWL_return:
BEGIN
   declare v_UserI CHAR(36);
   IF(UpdateLastActivity = 1) then
      SELECT  m.Email,m.PasswordQuestion,m.Comment,m.IsApproved,m.CreateDate,m.LastLoginDate,CurrentTimeUtc,m.LastPasswordChangedDate,
      u.UserId,m.IsLockedOut,m.LastLockoutDate
      FROM    aspnet_Applications a, aspnet_Users u, aspnet_Membership m
      WHERE    LOWER(ApplicationName) = a.LoweredApplicationName AND
      u.ApplicationId = a.ApplicationId    AND
      LOWER(UserName) = u.LoweredUserName AND u.UserId = m.UserId LIMIT 1;
        
      IF(ROW_COUNT() = 0) then
         SET SWP_Ret = -1;
         LEAVE SWL_return;
      END IF;
      UPDATE   aspnet_Users
      SET      LastActivityDate = CurrentTimeUtc
      WHERE    v_UserI = UserId;
   ELSE
      SELECT  m.Email,m.PasswordQuestion,m.Comment,m.IsApproved,m.CreateDate,m.LastLoginDate,u.LastActivityDate,m.LastPasswordChangedDate,
      u.UserId,m.IsLockedOut,m.LastLockoutDate
      FROM    aspnet_Applications a, aspnet_Users u, aspnet_Membership m
      WHERE    LOWER(ApplicationName) = a.LoweredApplicationName AND
      u.ApplicationId = a.ApplicationId    AND
      LOWER(UserName) = u.LoweredUserName AND u.UserId = m.UserId LIMIT 1;
        
      IF(ROW_COUNT() = 0) then
         SET SWP_Ret = -1;
         LEAVE SWL_return;
      END IF;
   END IF;
   SET SWP_Ret = 0;
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_Membership_GetUserByUserId` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Membership_GetUserByUserId` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Membership_GetUserByUserId`(UserId int,
    CurrentTimeUtc       DATETIME,
    UpdateLastActivity   BOOLEAN ,INOUT SWP_Ret INT)
SWL_return:
BEGIN
   IF(UpdateLastActivity = 1) then
      UPDATE aspnet_Users
      SET      aspnet_Users.LastActivityDate = CurrentTimeUtc
      WHERE    UserId = u.UserId;
        
      IF(ROW_COUNT() = 0) then
         SET SWP_Ret = -1;
         LEAVE SWL_return;
      END IF;
   END IF;
   SELECT  m.Email,m.PasswordQuestion,m.Comment,m.IsApproved,m.CreateDate,m.LastLoginDate,u.LastActivityDate,m.LastPasswordChangedDate, 
   u.UserName,m.IsLockedOut,m.LastLockoutDate
   FROM    aspnet_Users u, aspnet_Membership m
   WHERE   UserId = u.UserId AND u.UserId = m.UserId;
    
   IF(ROW_COUNT() = 0) then
      SET SWP_Ret = -1;
      LEAVE SWL_return;
   END IF;
   SET SWP_Ret = 0;
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_Membership_ResetPassword` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Membership_ResetPassword` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Membership_ResetPassword`(ApplicationName             NATIONAL VARCHAR(256),
    UserName                    NATIONAL VARCHAR(256),
    NewPassword                 NATIONAL VARCHAR(128),
    MaxInvalidPasswordAttempts  INT,
    PasswordAttemptWindow       INT,
    PasswordSalt                NATIONAL VARCHAR(128),
    CurrentTimeUtc              DATETIME,
    PasswordFormat              INT ,
    PasswordAnswer              NATIONAL VARCHAR(128) ,INOUT SWP_Ret INT)
SWL_return:
BEGIN
   declare v_IsLoc BOOLEAN;
   declare v_LastL DATETIME;
   declare v_Faile INT;
   declare v_Faile2 DATETIME;
   declare v_Faile3 INT;
   declare v_Faile4 DATETIME;
   declare v_UserI CHAR(36);
   declare v_Error INT;
   declare v_TranS BOOLEAN;
   DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
   BEGIN
      SET @SWV_Error = 1;
   END;
   SET @SWV_Error = 0;
   SET     v_UserI = NULL;
   SET v_Error = 0;
   SET v_TranS = 0;
   START TRANSACTION;
   SET v_TranS = 1;
   select   u.UserId INTO v_UserI FROM    aspnet_Users u, aspnet_Applications a, aspnet_Membership m WHERE   LoweredUserName = LOWER(UserName) AND
   u.ApplicationId = a.ApplicationId  AND
   LOWER(ApplicationName) = a.LoweredApplicationName AND
   u.UserId = m.UserId;
   IF(v_UserI IS NULL) then
      SET v_Error = 1;
        
      IF(v_TranS = 1) then
         SET v_TranS = 0;
         ROLLBACK;
      END IF;
      SET SWP_Ret = v_Error;
      LEAVE SWL_return;
   END IF;
   select   IsLockedOut,LastLockoutDate,FailedPasswordAttemptCount,FailedPasswordAttemptWindowStart,FailedPasswordAnswerAttemptCount,FailedPasswordAnswerAttemptWindowStart INTO v_IsLoc,v_LastL,v_Faile,v_Faile2,v_Faile3,v_Faile4 FROM aspnet_Membership  WHERE v_UserI = UserId;
   IF(v_IsLoc = 1) then
      SET v_Error = 99;
        
      IF(v_TranS = 1) then
         SET v_TranS = 0;
         ROLLBACK;
      END IF;
      SET SWP_Ret = v_Error;
      LEAVE SWL_return;
   END IF;
   UPDATE aspnet_Membership
   SET    Password = NewPassword,LastPasswordChangedDate = CurrentTimeUtc,PasswordFormat = PasswordFormat,PasswordSalt = PasswordSalt
   WHERE  v_UserI = UserId AND((PasswordAnswer IS NULL) OR(LOWER(PasswordAnswer) = LOWER(PasswordAnswer)));
   IF(ROW_COUNT() = 0) then
      IF(CurrentTimeUtc > TIMESTAMPADD(minute,PasswordAttemptWindow,v_Faile4)) then
         SET v_Faile4 = CurrentTimeUtc;
         SET v_Faile3 = 1;
      ELSE
         SET v_Faile4 = CurrentTimeUtc;
         SET v_Faile3 = v_Faile3+1;
      END IF;
      BEGIN
         IF(v_Faile3 >= MaxInvalidPasswordAttempts) then
            SET v_IsLoc = 1;
            SET v_LastL = CurrentTimeUtc;
         END IF;
      END;
      SET v_Error = 3;
   ELSE
      IF(v_Faile3 > 0) then
         SET v_Faile3 = 0;
         SET v_Faile4 = STR_TO_DATE('17540101','%Y%m%d');
      END IF;
   END IF;
   IF(NOT(PasswordAnswer IS NULL)) then
      SET @SWV_Error = 0;
      UPDATE aspnet_Membership
      SET IsLockedOut = v_IsLoc,LastLockoutDate = v_LastL,FailedPasswordAttemptCount = v_Faile,FailedPasswordAttemptWindowStart = v_Faile2,
      FailedPasswordAnswerAttemptCount = v_Faile3,FailedPasswordAnswerAttemptWindowStart = v_Faile4
      WHERE v_UserI = UserId;
      IF(@SWV_Error <> 0) then
         SET v_Error = -1;
            
         IF(v_TranS = 1) then
            SET v_TranS = 0;
            ROLLBACK;
         END IF;
         SET SWP_Ret = v_Error;
         LEAVE SWL_return;
      END IF;
   END IF;
   IF(v_TranS = 1) then
      SET v_TranS = 0;
      COMMIT;
   END IF;
   SET SWP_Ret = v_Error;
   LEAVE SWL_return;
   IF(v_TranS = 1) then
      SET v_TranS = 0;
      ROLLBACK;
   END IF;
   SET SWP_Ret = v_Error;
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_Membership_UpdateUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Membership_UpdateUser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Membership_UpdateUser`(ApplicationName       NATIONAL VARCHAR(256),
    UserName             NATIONAL VARCHAR(256),
    Email                   NATIONAL VARCHAR(256),
    Comment                LONGTEXT,
    IsApproved            BOOLEAN,
    LastLoginDate        DATETIME,
    LastActivityDate     DATETIME,
    UniqueEmail          INT,
    CurrentTimeUtc        DATETIME,INOUT SWP_Ret INT)
SWL_return:
BEGIN
   declare v_UserI CHAR(36);
   declare v_Appli2 CHAR(36);
   declare v_TranS BOOLEAN;
   declare tmpEmail NATIONAL VARCHAR(256);
   declare tmpComment LONGTEXT;
   declare tmpIsApproved BOOLEAN;
   declare tmpLastActivityDate  DATETIME;
  declare tmpLastLoginDate  DATETIME;
   DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
   BEGIN
      SET @SWV_Error = 1;
      SET tmpEmail=Email;
      SET tmpComment=Comment;
      SET tmpIsApproved=IsApproved;
      SET tmpLastLoginDate=LastLoginDate;
     
   END;
   SET v_UserI = NULL;
   select   u.UserId,a.ApplicationId INTO v_UserI,v_Appli2 FROM    aspnet_Users u, aspnet_Applications a, aspnet_Membership m WHERE   LoweredUserName = LOWER(UserName) AND
   u.ApplicationId = a.ApplicationId  AND
   LOWER(ApplicationName ) = a.LoweredApplicationName AND
   u.UserId = m.UserId;
   IF(v_UserI IS NULL) then
      SET SWP_Ret =(1);
      LEAVE SWL_return;
   END IF;
   IF(UniqueEmail = 1) then
      IF(EXISTS(SELECT * FROM  aspnet_Membership 
      WHERE ApplicationId = v_Appli2  AND v_UserI <> UserId AND LoweredEmail = LOWER(Email   ))) then
         SET SWP_Ret =(7);
         LEAVE SWL_return;
      END IF;
   END IF;
   SET v_TranS = 0;
   START TRANSACTION;
   SET v_TranS = 1;
   SET @SWV_Error = 0;
   UPDATE aspnet_Users 
   SET
   tmpLastActivityDate = LastActivityDate
   WHERE
   v_UserI = UserId;
   IF(@SWV_Error <> 0) then
      IF(v_TranS = 1) then
         SET v_TranS = 0;
         ROLLBACK;
      END IF;
      SET SWP_Ret = -1;
      LEAVE SWL_return;
   END IF;
   SET @SWV_Error = 0;
   UPDATE aspnet_Membership 
   SET
   aspnet_Membership.Email= tmpEmail   ,LoweredEmail     = LOWER(Email   ),aspnet_Membership.Comment = tmpComment  ,
  aspnet_Membership.IsApproved = tmpIsApproved ,aspnet_Membership.LastLoginDate = tmpLastLoginDate
   WHERE
   v_UserI = UserId;
   IF(@SWV_Error <> 0) then
      IF(v_TranS = 1) then
         SET v_TranS = 0;
         ROLLBACK;
      END IF;
      SET SWP_Ret = -1;
      LEAVE SWL_return;
   END IF;
   IF(v_TranS = 1) then
      SET v_TranS = 0;
      COMMIT;
   END IF;
   SET SWP_Ret = 0;
   LEAVE SWL_return;
   IF(v_TranS = 1) then
      SET v_TranS = 0;
      ROLLBACK;
   END IF;
   SET SWP_Ret = -1;
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_Membership_UpdateUserInfo` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Membership_UpdateUserInfo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Membership_UpdateUserInfo`(ApplicationName                NATIONAL VARCHAR(256),
    UserName                       NATIONAL VARCHAR(256),
    IsPasswordCorrect              BOOLEAN,
    UpdateLastLoginActivityDate    BOOLEAN,
    MaxInvalidPasswordAttempts     INT,
    PasswordAttemptWindow          INT,
    CurrentTimeUtc                 DATETIME,
    LastLoginDate                  DATETIME,
    LastActivityDate               DATETIME,INOUT SWP_Ret INT)
SWL_return:
BEGIN
   declare v_UserI CHAR(36);
   declare v_IsApp BOOLEAN;
   declare v_IsLoc BOOLEAN;
   declare v_LastL2 DATETIME;
   declare v_Faile INT;
   declare v_Faile2 DATETIME;
   declare v_Faile3 INT;
   declare v_Faile4 DATETIME;
   declare v_Error INT;
   declare v_TranS BOOLEAN;
    declare tmpLastActivityDate DATETIME;
    declare tmpLastLoginDate DATETIME;
   DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
   BEGIN
      SET @SWV_Error = 1;
   END;
   SET @SWV_Error = 0;
   SET v_Error = 0;
   SET v_TranS = 0;
   START TRANSACTION;
   SET v_TranS = 1;
   select   u.UserId,m.IsApproved,m.IsLockedOut,m.LastLockoutDate,m.FailedPasswordAttemptCount,m.FailedPasswordAttemptWindowStart,m.FailedPasswordAnswerAttemptCount,
   m.FailedPasswordAnswerAttemptWindowStart INTO v_UserI,v_IsApp,v_IsLoc,v_LastL2,v_Faile,v_Faile2,v_Faile3,v_Faile4 FROM    aspnet_Applications a, aspnet_Users u, aspnet_Membership m  WHERE   LOWER(ApplicationName) = a.LoweredApplicationName AND
   u.ApplicationId = a.ApplicationId    AND
   u.UserId = m.UserId AND
   LOWER(UserName) = u.LoweredUserName;
   IF(ROW_COUNT() = 0) then
      SET v_Error = 1;
        
      IF(v_TranS = 1) then
         SET v_TranS = 0;
         ROLLBACK;
      END IF;
      SET SWP_Ret = v_Error;
      LEAVE SWL_return;
   END IF;
   IF(v_IsLoc = 1) then
      IF(v_TranS = 1) then
         SET v_TranS = 0;
         ROLLBACK;
      END IF;
      SET SWP_Ret = v_Error;
      LEAVE SWL_return;
   END IF;
   IF(IsPasswordCorrect = 0) then
      IF(CurrentTimeUtc > TIMESTAMPADD(minute,PasswordAttemptWindow,v_Faile2)) then
         SET v_Faile2 = CurrentTimeUtc;
         SET v_Faile = 1;
      ELSE
         SET v_Faile2 = CurrentTimeUtc;
         SET v_Faile = v_Faile+1;
      END IF;
      BEGIN
         IF(v_Faile >= MaxInvalidPasswordAttempts) then
            SET v_IsLoc = 1;
            SET v_LastL2 = CurrentTimeUtc;
         END IF;
      END;
   ELSE
      IF(v_Faile > 0 OR v_Faile3 > 0) then
         SET v_Faile = 0;
         SET v_Faile2 = STR_TO_DATE('17540101','%Y%m%d');
         SET v_Faile3 = 0;
         SET v_Faile4 = STR_TO_DATE('17540101','%Y%m%d');
         SET v_LastL2 = STR_TO_DATE('17540101','%Y%m%d');
      END IF;
   END IF;
   IF(UpdateLastLoginActivityDate = 1) then
      SET @SWV_Error = 0;
      UPDATE  aspnet_Users
      SET     LastActivityDate = tmpLastActivityDate
      WHERE   v_UserI = UserId;
      IF(@SWV_Error <> 0) then
         SET v_Error = -1;
            
         IF(v_TranS = 1) then
            SET v_TranS = 0;
            ROLLBACK;
         END IF;
         SET SWP_Ret = v_Error;
         LEAVE SWL_return;
      END IF;
      SET @SWV_Error = 0;
      UPDATE  aspnet_Membership
      SET     LastLoginDate = tmpLastLoginDate
      WHERE   UserId = v_UserI;
      IF(@SWV_Error <> 0) then
         SET v_Error = -1;
            
         IF(v_TranS = 1) then
            SET v_TranS = 0;
            ROLLBACK;
         END IF;
         SET SWP_Ret = v_Error;
         LEAVE SWL_return;
      END IF;
   END IF;
   SET @SWV_Error = 0;
   UPDATE aspnet_Membership
   SET IsLockedOut = v_IsLoc,LastLockoutDate = v_LastL2,FailedPasswordAttemptCount = v_Faile,FailedPasswordAttemptWindowStart = v_Faile2,
   FailedPasswordAnswerAttemptCount = v_Faile3,FailedPasswordAnswerAttemptWindowStart = v_Faile4
   WHERE v_UserI = UserId;
   IF(@SWV_Error <> 0) then
      SET v_Error = -1;
        
      IF(v_TranS = 1) then
         SET v_TranS = 0;
         ROLLBACK;
      END IF;
      SET SWP_Ret = v_Error;
      LEAVE SWL_return;
   END IF;
   IF(v_TranS = 1) then
      SET v_TranS = 0;
      COMMIT;
   END IF;
   SET SWP_Ret = v_Error;
   LEAVE SWL_return;
   IF(v_TranS = 1) then
      SET v_TranS = 0;
      ROLLBACK;
   END IF;
   SET SWP_Ret = v_Error;
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_Paths_CreatePath` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Paths_CreatePath` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Paths_CreatePath`(ApplicationId int,
    Path            NATIONAL VARCHAR(256),
    INOUT PathId         CHAR(36))
BEGIN
   START TRANSACTION;
   IF(NOT EXISTS(SELECT * FROM aspnet_Paths WHERE LoweredPath = LOWER(Path ) AND ApplicationId = ApplicationId)) then
      INSERT aspnet_Paths(ApplicationId, Path, LoweredPath) VALUES(ApplicationId,Path ,LOWER(Path ));
   END IF;
   COMMIT;
   select   PathId INTO PathId FROM aspnet_Paths WHERE LOWER(Path ) = LoweredPath AND ApplicationId = ApplicationId;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_RegisterSchemaVersion` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_RegisterSchemaVersion` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_RegisterSchemaVersion`(Feature                   NATIONAL VARCHAR(128),
    CompatibleSchemaVersion   NATIONAL VARCHAR(128),
    IsCurrentVersion          BOOLEAN,
    RemoveIncompatibleSchema  BOOLEAN)
BEGIN
   IF(RemoveIncompatibleSchema = 1) then
      DELETE FROM aspnet_SchemaVersions WHERE Feature = LOWER(Feature);
   ELSE
      IF(IsCurrentVersion = 1) then
         UPDATE aspnet_SchemaVersions
         SET IsCurrentVersion = 0
         WHERE Feature = LOWER(Feature);
      END IF;
   END IF;
   INSERT  aspnet_SchemaVersions(Feature,CompatibleSchemaVersion,IsCurrentVersion)
   VALUES(LOWER(Feature),CompatibleSchemaVersion,IsCurrentVersion);
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_Roles_CreateRole` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Roles_CreateRole` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Roles_CreateRole`(ApplicationName  NATIONAL VARCHAR(256),
    RoleName         NATIONAL VARCHAR(256),INOUT SWP_Ret INT)
SWL_return:
BEGIN
   declare v_Appli2 CHAR(36);
   declare v_Error INT;
   declare v_TranS BOOLEAN;
   DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
   BEGIN
      SET @SWV_Error = 1;
   END;
   SET v_Appli2 = NULL;
   SET v_Error = 0;
   SET v_TranS = 0;
   START TRANSACTION;
   SET v_TranS = 1;
   SET @SWV_Error = 0;
   CALL aspnet_Applications_CreateApplication(ApplicationName,v_Appli2);
   IF(@SWV_Error <> 0) then
      SET v_Error = -1;
        
      IF(v_TranS = 1) then
         SET v_TranS = 0;
         ROLLBACK;
      END IF;
      SET SWP_Ret = v_Error;
      LEAVE SWL_return;
   END IF;
   IF(EXISTS(SELECT RoleId FROM aspnet_Roles WHERE LoweredRoleName = LOWER(RoleName) AND ApplicationId= v_Appli2)) then
      SET v_Error = 1;
        
      IF(v_TranS = 1) then
         SET v_TranS = 0;
         ROLLBACK;
      END IF;
      SET SWP_Ret = v_Error;
      LEAVE SWL_return;
   END IF;
   SET @SWV_Error = 0;
   INSERT INTO aspnet_Roles(ApplicationId,RoleName,LoweredRoleName)
   VALUES(v_Appli2,RoleName,LOWER(RoleName));
   IF(@SWV_Error <> 0) then
      SET v_Error = -1;
        
      IF(v_TranS = 1) then
         SET v_TranS = 0;
         ROLLBACK;
      END IF;
      SET SWP_Ret = v_Error;
      LEAVE SWL_return;
   END IF;
   IF(v_TranS = 1) then
      SET v_TranS = 0;
      COMMIT;
   END IF;
   SET SWP_Ret =(0);
   LEAVE SWL_return;
   IF(v_TranS = 1) then
      SET v_TranS = 0;
      ROLLBACK;
   END IF;
   SET SWP_Ret = v_Error;
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_Roles_DeleteRole` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Roles_DeleteRole` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Roles_DeleteRole`(ApplicationName            NATIONAL VARCHAR(256),
    RoleName                    NATIONAL VARCHAR(256),
    DeleteOnlyIfRoleIsEmpty    BOOLEAN,INOUT SWP_Ret INT)
SWL_return:
BEGIN
   declare v_Appli2 CHAR(36);
   declare v_Error INT;
   declare v_TranS BOOLEAN;
   declare v_RoleI CHAR(36);
   DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
   BEGIN
      SET @SWV_Error = 1;
   END;
   SET v_Appli2 = NULL;
   select   ApplicationId INTO v_Appli2 FROM aspnet_Applications WHERE LOWER(ApplicationName) = LoweredApplicationName;
   IF(v_Appli2 IS NULL) then
      SET SWP_Ret =(1);
      LEAVE SWL_return;
   END IF;
   SET v_Error = 0;
   SET v_TranS = 0;
   START TRANSACTION;
   SET v_TranS = 1;
   SET v_RoleI = NULL;
   select   RoleId INTO v_RoleI FROM aspnet_Roles WHERE LoweredRoleName = LOWER(RoleName ) AND ApplicationId = v_Appli2;
   IF(v_RoleI IS NULL) then
      SET v_Error = 1;
        
      IF(v_TranS = 1) then
         SET v_TranS = 0;
         ROLLBACK;
      END IF;
      SET SWP_Ret = v_Error;
      LEAVE SWL_return;
   END IF;
   IF(DeleteOnlyIfRoleIsEmpty <> 0) then
      IF(EXISTS(SELECT RoleId FROM aspnet_UsersInRoles  WHERE v_RoleI = RoleId)) then
         SET v_Error = 2;
            
         IF(v_TranS = 1) then
            SET v_TranS = 0;
            ROLLBACK;
         END IF;
         SET SWP_Ret = v_Error;
         LEAVE SWL_return;
      END IF;
   END IF;
   SET @SWV_Error = 0;
   DELETE FROM aspnet_UsersInRoles  WHERE v_RoleI = RoleId;
   IF(@SWV_Error <> 0) then
      SET v_Error = -1;
        
      IF(v_TranS = 1) then
         SET v_TranS = 0;
         ROLLBACK;
      END IF;
      SET SWP_Ret = v_Error;
      LEAVE SWL_return;
   END IF;
   SET @SWV_Error = 0;
   DELETE FROM aspnet_Roles WHERE v_RoleI = RoleId  AND ApplicationId = v_Appli2;
   IF(@SWV_Error <> 0) then
      SET v_Error = -1;
        
      IF(v_TranS = 1) then
         SET v_TranS = 0;
         ROLLBACK;
      END IF;
      SET SWP_Ret = v_Error;
      LEAVE SWL_return;
   END IF;
   IF(v_TranS = 1) then
      SET v_TranS = 0;
      COMMIT;
   END IF;
   SET SWP_Ret =(0);
   LEAVE SWL_return;
   IF(v_TranS = 1) then
      SET v_TranS = 0;
      ROLLBACK;
   END IF;
   SET SWP_Ret = v_Error;
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_Roles_GetAllRoles` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Roles_GetAllRoles` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Roles_GetAllRoles`(ApplicationName            NATIONAL VARCHAR(256))
SWL_return:
BEGIN
   declare v_Appli2 CHAR(36);
   SET v_Appli2 = NULL;
   select   ApplicationId INTO v_Appli2 FROM aspnet_Applications WHERE LOWER(ApplicationName ) = LoweredApplicationName;
   IF(v_Appli2 IS NULL) then
      LEAVE SWL_return;
   END IF;
   SELECT RoleName
   FROM   aspnet_Roles WHERE ApplicationId = v_Appli2
   ORDER BY RoleName;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_Setup_RemoveAllRoleMembers` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Setup_RemoveAllRoleMembers` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Setup_RemoveAllRoleMembers`(name    NATIONAL VARCHAR(128))
BEGIN
   declare v_user_ SMALLINT;
   declare v_cmd NATIONAL VARCHAR(500);
   declare NO_DATA INT DEFAULT 0;
   DECLARE c1 cursor  FOR
   SELECT User_id FROM tt_aspnet_RoleMembers;
   DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
   BEGIN
      SET NO_DATA = -2;
   END;
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET NO_DATA = -1;
   DROP TEMPORARY TABLE IF EXISTS tt_aspnet_RoleMembers;
   
CREATE TEMPORARY TABLE tt_aspnet_RoleMembers
   (
      Group_n NATIONAL VARCHAR(128),
      Group_i SMALLINT,
      Users_i NATIONAL VARCHAR(128),
      User_id SMALLINT
   );
   SET @sp_helpuser_Call = 1;
   CALL sp_helpuser(name );
   SET @sp_helpuser_Call = null;
   OPEN c1;
   SET NO_DATA = 0;
   FETCH c1 INTO v_user_;
   WHILE(NO_DATA = 0) DO
      SET v_cmd = CONCAT('CALL sp_droprolemember(''',name ,''',''',SUSER_SNAME(v_user_),''');');
      SET @SWV_Stmt = v_cmd;
      PREPARE SWT_Stmt FROM @SWV_Stmt;
      EXECUTE SWT_Stmt;
      DEALLOCATE PREPARE SWT_Stmt;
      SET NO_DATA = 0;
      FETCH c1 INTO v_user_;
   END WHILE;
   CLOSE c1;
    
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_Setup_RestorePermissions` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Setup_RestorePermissions` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Setup_RestorePermissions`(name   NATIONAL VARCHAR(128))
BEGIN
   declare v_objec NATIONAL VARCHAR(128);
   declare v_prote CHAR(10);
   declare v_actio VARCHAR(20);
   declare v_grant NATIONAL VARCHAR(128);
   declare v_cmd NATIONAL VARCHAR(500);
   declare NO_DATA INT DEFAULT 0;
   DECLARE c1 cursor  FOR
   SELECT Object,ProtectType,`Action`,Grantee FROM tt_aspnet_Permissions where Object = name;
   DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
   BEGIN
      SET NO_DATA = -2;
   END;
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET NO_DATA = -1;
   OPEN c1;
   SET NO_DATA = 0;
   FETCH c1 INTO v_objec,v_prote,v_actio,v_grant;
   WHILE(NO_DATA = 0) DO
      SET v_cmd = CONCAT(v_prote,' ',v_actio,' on ',v_objec,' TO [',v_grant,']');
      SET @SWV_Stmt = v_cmd;
      PREPARE SWT_Stmt FROM @SWV_Stmt;
      EXECUTE SWT_Stmt;
      DEALLOCATE PREPARE SWT_Stmt;
      SET NO_DATA = 0;
      FETCH c1 INTO v_objec,v_prote,v_actio,v_grant;
   END WHILE;
   CLOSE c1;
    
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_UnRegisterSchemaVersion` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_UnRegisterSchemaVersion` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_UnRegisterSchemaVersion`(Feature                    NATIONAL VARCHAR(128),
    CompatibleSchemaVersion  NATIONAL VARCHAR(128))
BEGIN
   DELETE FROM aspnet_SchemaVersions
   WHERE   Feature = LOWER(v_Featu) AND v_Compa = CompatibleSchemaVersion;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_UsersInRoles_AddUsersToRoles` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_UsersInRoles_AddUsersToRoles` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_UsersInRoles_AddUsersToRoles`(ApplicationName  NATIONAL VARCHAR(256),
	UserNames		  NATIONAL VARCHAR(4000),
	RoleNames		  NATIONAL VARCHAR(4000),
	CurrentTimeUtc   DATETIME,INOUT SWP_Ret INT)
SWL_return:
BEGIN
   declare v_AppId CHAR(36);
   declare v_TranS BOOLEAN;
   declare v_Num INT;
   declare v_Pos INT;
   declare v_NextP INT;
   declare v_Name NATIONAL VARCHAR(256);
   SET v_AppId = NULL;
   select   ApplicationId INTO v_AppId FROM aspnet_Applications WHERE LOWER(ApplicationName) = LoweredApplicationName;
   IF(v_AppId IS NULL) then
      SET SWP_Ret =(2);
      LEAVE SWL_return;
   END IF;
   SET v_TranS = 0;
   START TRANSACTION;
   SET v_TranS = 1;
   DROP TEMPORARY TABLE IF EXISTS tt_tbNames;
   
CREATE TEMPORARY TABLE tt_tbNames
   (
      Name NATIONAL VARCHAR(256) NOT NULL PRIMARY KEY
   );
   DROP TEMPORARY TABLE IF EXISTS tt_tbRoles;
   
CREATE TEMPORARY TABLE tt_tbRoles
   (
      RoleId CHAR(36) NOT NULL PRIMARY KEY
   );
   DROP TEMPORARY TABLE IF EXISTS tt_tbUsers;
   
CREATE TEMPORARY TABLE tt_tbUsers
   (
      UserId CHAR(36) NOT NULL PRIMARY KEY
   );
   SET v_Num = 0;
   SET v_Pos = 1;
   WHILE(v_Pos <= LENGTH(RoleNames)) DO
      SET v_NextP = LOCATE(N',',RoleNames,v_Pos);
      IF(v_NextP = 0 OR v_NextP IS NULL) then
         SET v_NextP = LENGTH(RoleNames)+1;
      END IF;
      SET v_Name = RTRIM(LTRIM(SUBSTRING(RoleNames,v_Pos,v_NextP -v_Pos)));
      SET v_Pos = v_NextP+1;
      INSERT INTO tt_tbNames VALUES(v_Name);
      SET v_Num = v_Num+1;
   END WHILE;
   INSERT INTO tt_tbRoles
   SELECT RoleId
   FROM   aspnet_Roles ar, tt_tbNames t
   WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = v_AppId;
   IF(ROW_COUNT() <> v_Num) then
      SELECT  Name
      FROM   tt_tbNames
      WHERE  LOWER(Name) NOT IN(SELECT ar.LoweredRoleName FROM aspnet_Roles ar,  tt_tbRoles r WHERE r.RoleId = ar.RoleId) LIMIT 1;
      IF(v_TranS = 1) then
         ROLLBACK;
      END IF;
      SET SWP_Ret =(2);
      LEAVE SWL_return;
   END IF;
   DELETE FROM tt_tbNames WHERE 1 = 1;
   SET v_Num = 0;
   SET v_Pos = 1;
   WHILE(v_Pos <= LENGTH(UserNames)) DO
      SET v_NextP = LOCATE(N',',UserNames,v_Pos);
      IF(v_NextP = 0 OR v_NextP IS NULL) then
         SET v_NextP = LENGTH(UserNames)+1;
      END IF;
      SET v_Name = RTRIM(LTRIM(SUBSTRING(UserNames,v_Pos,v_NextP -v_Pos)));
      SET v_Pos = v_NextP+1;
      INSERT INTO tt_tbNames VALUES(v_Name);
      SET v_Num = v_Num+1;
   END WHILE;
   INSERT INTO tt_tbUsers
   SELECT UserId
   FROM   aspnet_Users ar, tt_tbNames t
   WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = v_AppId;
   IF(ROW_COUNT() <> v_Num) then
      DELETE FROM tt_tbNames
      WHERE LOWER(Name) IN(SELECT LoweredUserName FROM aspnet_Users au,  tt_tbUsers u WHERE au.UserId = u.UserId);
      INSERT aspnet_Users(ApplicationId,UserId,UserName,LoweredUserName,IsAnonymous,LastActivityDate)
      SELECT v_AppId,UUID(),Name,LOWER(Name),0,CurrentTimeUtc
      FROM   tt_tbNames;
      INSERT INTO tt_tbUsers
      SELECT  UserId
      FROM	aspnet_Users au, tt_tbNames t
      WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = v_AppId;
   END IF;
   IF(EXISTS(SELECT * FROM aspnet_UsersInRoles ur, tt_tbUsers tu, tt_tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId)) then
      SELECT  UserName,RoleName
      FROM		 aspnet_UsersInRoles ur, tt_tbUsers tu, tt_tbRoles tr, aspnet_Users u, aspnet_Roles r
      WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId LIMIT 1;
      IF(v_TranS = 1) then
         ROLLBACK;
      END IF;
      SET SWP_Ret =(3);
      LEAVE SWL_return;
   END IF;
   INSERT INTO aspnet_UsersInRoles(UserId,RoleId)
   SELECT UserId,RoleId
   FROM tt_tbUsers, tt_tbRoles;
   IF(v_TranS = 1) then
      COMMIT;
   END IF;
   SET SWP_Ret =(0);
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_UsersInRoles_FindUsersInRole` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_UsersInRoles_FindUsersInRole` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_UsersInRoles_FindUsersInRole`(ApplicationName  NATIONAL VARCHAR(256),
    RoleName          NATIONAL VARCHAR(256),
    UserNameToMatch  NATIONAL VARCHAR(256),INOUT SWP_Ret INT)
SWL_return:
BEGIN
   declare v_Appli2 CHAR(36);
   declare v_RoleI CHAR(36);
   SET v_Appli2 = NULL;
   select   ApplicationId INTO v_Appli2 FROM aspnet_Applications WHERE LOWER(ApplicationName) = LoweredApplicationName;
   IF(v_Appli2 IS NULL) then
      SET SWP_Ret =(1);
      LEAVE SWL_return;
   END IF;
   SET v_RoleI = NULL;
   select   RoleId INTO v_RoleI FROM    aspnet_Roles WHERE   LOWER(RoleName ) = LoweredRoleName AND ApplicationId = v_Appli2;
   IF(v_RoleI IS NULL) then
      SET SWP_Ret =(1);
      LEAVE SWL_return;
   END IF;
   SELECT u.UserName
   FROM   aspnet_Users u, aspnet_UsersInRoles ur
   WHERE  u.UserId = ur.UserId AND v_RoleI = ur.RoleId AND u.ApplicationId = v_Appli2 AND LoweredUserName LIKE LOWER(UserNameToMatch)
   ORDER BY u.UserName;
   SET SWP_Ret =(0);
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_UsersInRoles_GetRolesForUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_UsersInRoles_GetRolesForUser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_UsersInRoles_GetRolesForUser`(ApplicationName  NATIONAL VARCHAR(256),
    UserName         NATIONAL VARCHAR(256),INOUT SWP_Ret INT)
SWL_return:
BEGIN
   declare v_Appli2 CHAR(36);
   declare v_UserI CHAR(36);
   SET v_Appli2 = NULL;
   select   ApplicationId INTO v_Appli2 FROM aspnet_Applications WHERE LOWER(ApplicationName) = LoweredApplicationName;
   IF(v_Appli2 IS NULL) then
      SET SWP_Ret =(1);
      LEAVE SWL_return;
   END IF;
   SET v_UserI = NULL;
   select   UserId INTO v_UserI FROM    aspnet_Users WHERE   LoweredUserName = LOWER(UserName) AND ApplicationId = v_Appli2;
   IF(v_UserI IS NULL) then
      SET SWP_Ret =(1);
      LEAVE SWL_return;
   END IF;
   SELECT r.RoleName
   FROM   aspnet_Roles r, aspnet_UsersInRoles ur
   WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = v_Appli2 AND ur.UserId = v_UserI
   ORDER BY r.RoleName;
   SET SWP_Ret =(0);
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_UsersInRoles_GetUsersInRoles` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_UsersInRoles_GetUsersInRoles` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_UsersInRoles_GetUsersInRoles`(ApplicationName  NATIONAL VARCHAR(256),
    RoleName         NATIONAL VARCHAR(256),INOUT SWP_Ret INT)
SWL_return:
BEGIN
   declare v_Appli2 CHAR(36);
   declare v_RoleI CHAR(36);
   SET v_Appli2 = NULL;
   select   ApplicationId INTO v_Appli2 FROM aspnet_Applications WHERE LOWER(ApplicationName) = LoweredApplicationName;
   IF(v_Appli2 IS NULL) then
      SET SWP_Ret =(1);
      LEAVE SWL_return;
   END IF;
   SET v_RoleI = NULL;
   select   RoleId INTO v_RoleI FROM    aspnet_Roles WHERE   LOWER(RoleName) = LoweredRoleName AND ApplicationId = v_Appli2;
   IF(v_RoleI IS NULL) then
      SET SWP_Ret =(1);
      LEAVE SWL_return;
   END IF;
   SELECT u.UserName
   FROM   aspnet_Users u, aspnet_UsersInRoles ur
   WHERE  u.UserId = ur.UserId AND v_RoleI = ur.RoleId AND u.ApplicationId = v_Appli2
   ORDER BY u.UserName;
   SET SWP_Ret =(0);
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_UsersInRoles_RemoveUsersFromRoles` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_UsersInRoles_RemoveUsersFromRoles` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_UsersInRoles_RemoveUsersFromRoles`(ApplicationName  NATIONAL VARCHAR(256),
	UserNames		  NATIONAL VARCHAR(4000),
	RoleNames		  NATIONAL VARCHAR(4000),INOUT SWP_Ret INT)
SWL_return:
BEGIN
   declare v_AppId CHAR(36);
   declare v_TranS BOOLEAN;
   declare v_Num INT;
   declare v_Pos INT;
   declare v_NextP INT;
   declare v_Name NATIONAL VARCHAR(256);
   declare v_Count INT;
   declare v_Count2 INT;
   declare v_Count3 INT;
   SET v_AppId = NULL;
   select   ApplicationId INTO v_AppId FROM aspnet_Applications WHERE LOWER(ApplicationName) = LoweredApplicationName;
   IF(v_AppId IS NULL) then
      SET SWP_Ret =(2);
      LEAVE SWL_return;
   END IF;
   SET v_TranS = 0;
   START TRANSACTION;
   SET v_TranS = 1;
   DROP TEMPORARY TABLE IF EXISTS tt_tbNames;
   
CREATE TEMPORARY TABLE tt_tbNames
   (
      Name NATIONAL VARCHAR(256) NOT NULL PRIMARY KEY
   );
   DROP TEMPORARY TABLE IF EXISTS tt_tbRoles;
   
CREATE TEMPORARY TABLE tt_tbRoles
   (
      RoleId CHAR(36) NOT NULL PRIMARY KEY
   );
   DROP TEMPORARY TABLE IF EXISTS tt_tbUsers;
   
CREATE TEMPORARY TABLE tt_tbUsers
   (
      UserId CHAR(36) NOT NULL PRIMARY KEY
   );
   SET v_Num = 0;
   SET v_Pos = 1;
   WHILE(v_Pos <= LENGTH(RoleNames)) DO
      SET v_NextP = LOCATE(N',',RoleNames,v_Pos);
      IF(v_NextP = 0 OR v_NextP IS NULL) then
         SET v_NextP = LENGTH(RoleNames)+1;
      END IF;
      SET v_Name = RTRIM(LTRIM(SUBSTRING(RoleNames,v_Pos,v_NextP -v_Pos)));
      SET v_Pos = v_NextP+1;
      INSERT INTO tt_tbNames VALUES(v_Name);
      SET v_Num = v_Num+1;
   END WHILE;
   INSERT INTO tt_tbRoles
   SELECT RoleId
   FROM   aspnet_Roles ar, tt_tbNames t
   WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = v_AppId;
   SET v_Count3 = ROW_COUNT();
   IF(v_Count3 <> v_Num) then
      SELECT  N'',Name
      FROM   tt_tbNames
      WHERE  LOWER(Name) NOT IN(SELECT ar.LoweredRoleName FROM aspnet_Roles ar,  tt_tbRoles r WHERE r.RoleId = ar.RoleId) LIMIT 1;
      IF(v_TranS = 1) then
         ROLLBACK;
      END IF;
      SET SWP_Ret =(2);
      LEAVE SWL_return;
   END IF;
   DELETE FROM tt_tbNames WHERE 1 = 1;
   SET v_Num = 0;
   SET v_Pos = 1;
   WHILE(v_Pos <= LENGTH(UserNames)) DO
      SET v_NextP = LOCATE(N',',UserNames,v_Pos);
      IF(v_NextP = 0 OR v_NextP IS NULL) then
         SET v_NextP = LENGTH(UserNames)+1;
      END IF;
      SET v_Name = RTRIM(LTRIM(SUBSTRING(UserNames,v_Pos,v_NextP -v_Pos)));
      SET v_Pos = v_NextP+1;
      INSERT INTO tt_tbNames VALUES(v_Name);
      SET v_Num = v_Num+1;
   END WHILE;
   INSERT INTO tt_tbUsers
   SELECT UserId
   FROM   aspnet_Users ar, tt_tbNames t
   WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = v_AppId;
   SET v_Count2 = ROW_COUNT();
   IF(v_Count2 <> v_Num) then
      SELECT  Name,N''
      FROM   tt_tbNames
      WHERE  LOWER(Name) NOT IN(SELECT au.LoweredUserName FROM aspnet_Users au,  tt_tbUsers u WHERE u.UserId = au.UserId) LIMIT 1;
      IF(v_TranS = 1) then
         ROLLBACK;
      END IF;
      SET SWP_Ret =(1);
      LEAVE SWL_return;
   END IF;
   select   COUNT(*) INTO v_Count FROM	aspnet_UsersInRoles ur, tt_tbUsers u, tt_tbRoles r WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId;
   IF(v_Count <> v_Count2*v_Count3) then
      SELECT  UserName,RoleName
      FROM		 tt_tbUsers tu, tt_tbRoles tr, aspnet_Users u, aspnet_Roles r
      WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
      tu.UserId NOT IN(SELECT ur.UserId FROM aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
      tr.RoleId NOT IN(SELECT ur.RoleId FROM aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId) LIMIT 1;
      IF(v_TranS = 1) then
         ROLLBACK;
      END IF;
      SET SWP_Ret =(3);
      LEAVE SWL_return;
   END IF;
   DELETE FROM aspnet_UsersInRoles
   WHERE UserId IN(SELECT UserId FROM tt_tbUsers)
   AND RoleId IN(SELECT RoleId FROM tt_tbRoles);
   IF(v_TranS = 1) then
      COMMIT;
   END IF;
   SET SWP_Ret =(0);
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_Users_CreateUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Users_CreateUser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Users_CreateUser`(ApplicationId    int,
    UserName          NATIONAL VARCHAR(256),
    IsUserAnonymous  BOOLEAN,
    LastActivityDate DATETIME,
    INOUT UserId            CHAR(36) ,INOUT SWP_Ret INT)
SWL_return:
BEGIN
   IF(UserId  IS NULL) then
      SET UserId  = UUID();
   ELSE
      IF(EXISTS(SELECT UserId FROM aspnet_Users
      WHERE UserId  = UserId)) then
         SET SWP_Ret = -1;
         LEAVE SWL_return;
      END IF;
   END IF;
   INSERT aspnet_Users(ApplicationId,UserId,UserName,LoweredUserName,IsAnonymous,LastActivityDate)
   VALUES(ApplicationId,UserId ,UserName ,LOWER(UserName ),IsUserAnonymous,LastActivityDate);
   SET SWP_Ret = 0;
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_Users_DeleteUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_Users_DeleteUser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_Users_DeleteUser`(ApplicationName  NATIONAL VARCHAR(256),
    UserName         NATIONAL VARCHAR(256),
    TablesToDeleteFrom INT,
    INOUT NumTablesDeletedFrom INT ,INOUT SWP_Ret INT)
SWL_return:
BEGIN
   declare v_UserI CHAR(36);
   declare v_TranS BOOLEAN;
   declare v_Error INT;
   declare v_RowCo INT;
   DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
   BEGIN
      SET @SWV_Error = 1;
   END;
   SET v_UserI = NULL;
   SET NumTablesDeletedFrom = 0;
   SET v_TranS = 0;
   START TRANSACTION;
   SET v_TranS = 1;
   SET v_Error = 0;
   SET v_RowCo  = 0;
   select   u.UserId INTO v_UserI FROM    aspnet_Users u, aspnet_Applications a WHERE   u.LoweredUserName       = LOWER(UserName)
   AND u.ApplicationId         = a.ApplicationId
   AND LOWER(ApplicationName) = a.LoweredApplicationName;
   IF(v_UserI IS NULL) then
      SET NumTablesDeletedFrom = 0;
      IF(v_TranS = 1) then
         SET v_TranS = 0;
         ROLLBACK;
      END IF;
      SET SWP_Ret = v_Error;
      LEAVE SWL_return;
   END IF;
   IF((TablesToDeleteFrom & 1) <> 0 AND(EXISTS(SELECT name FROM sysobjects WHERE(name = N'vw_aspnet_MembershipUsers') AND(type = 'V')))) then
      SET @SWV_Error = 0;
      DELETE FROM aspnet_Membership WHERE v_UserI = UserId;
      SET v_Error = @SWV_Error;
      SET v_RowCo = ROW_COUNT();
      IF(v_Error <> 0) then
         SET NumTablesDeletedFrom = 0;
         IF(v_TranS = 1) then
            SET v_TranS = 0;
            ROLLBACK;
         END IF;
         SET SWP_Ret = v_Error;
         LEAVE SWL_return;
      END IF;
      IF(v_RowCo <> 0) then
         SET NumTablesDeletedFrom = NumTablesDeletedFrom+1;
      END IF;
   END IF;
   IF((TablesToDeleteFrom & 2) <> 0  AND(EXISTS(SELECT name FROM sysobjects WHERE(name = N'vw_aspnet_UsersInRoles') AND(type = 'V')))) then
      SET @SWV_Error = 0;
      DELETE FROM aspnet_UsersInRoles WHERE v_UserI = UserId;
      SET v_Error = @SWV_Error;
      SET v_RowCo = ROW_COUNT();
      IF(v_Error <> 0) then
         SET NumTablesDeletedFrom = 0;
         IF(v_TranS = 1) then
            SET v_TranS = 0;
            ROLLBACK;
         END IF;
         SET SWP_Ret = v_Error;
         LEAVE SWL_return;
      END IF;
      IF(v_RowCo <> 0) then
         SET NumTablesDeletedFrom = NumTablesDeletedFrom+1;
      END IF;
   END IF;
   IF((TablesToDeleteFrom & 4) <> 0  AND(EXISTS(SELECT name FROM sysobjects WHERE(name = N'vw_aspnet_Profiles') AND(type = 'V')))) then
      SET @SWV_Error = 0;
      DELETE FROM aspnet_Profile WHERE v_UserI = UserId;
      SET v_Error = @SWV_Error;
      SET v_RowCo = ROW_COUNT();
      IF(v_Error <> 0) then
         SET NumTablesDeletedFrom = 0;
         IF(v_TranS = 1) then
            SET v_TranS = 0;
            ROLLBACK;
         END IF;
         SET SWP_Ret = v_Error;
         LEAVE SWL_return;
      END IF;
      IF(v_RowCo <> 0) then
         SET NumTablesDeletedFrom = NumTablesDeletedFrom+1;
      END IF;
   END IF;
   IF((TablesToDeleteFrom & 8) <> 0  AND(EXISTS(SELECT name FROM sysobjects WHERE(name = N'vw_aspnet_WebPartState_User') AND(type = 'V')))) then
      SET @SWV_Error = 0;
      DELETE FROM aspnet_PersonalizationPerUser WHERE v_UserI = UserId;
      SET v_Error = @SWV_Error;
      SET v_RowCo = ROW_COUNT();
      IF(v_Error <> 0) then
         SET NumTablesDeletedFrom = 0;
         IF(v_TranS = 1) then
            SET v_TranS = 0;
            ROLLBACK;
         END IF;
         SET SWP_Ret = v_Error;
         LEAVE SWL_return;
      END IF;
      IF(v_RowCo <> 0) then
         SET NumTablesDeletedFrom = NumTablesDeletedFrom+1;
      END IF;
   END IF;
   IF((TablesToDeleteFrom & 1) <> 0 AND(TablesToDeleteFrom & 2) <> 0 AND(TablesToDeleteFrom & 4) <> 0 AND(TablesToDeleteFrom & 8) <> 0 AND(EXISTS(SELECT UserId FROM aspnet_Users WHERE v_UserI = UserId))) then
      SET @SWV_Error = 0;
      DELETE FROM aspnet_Users WHERE v_UserI = UserId;
      SET v_Error = @SWV_Error;
      SET v_RowCo = ROW_COUNT();
      IF(v_Error <> 0) then
         SET NumTablesDeletedFrom = 0;
         IF(v_TranS = 1) then
            SET v_TranS = 0;
            ROLLBACK;
         END IF;
         SET SWP_Ret = v_Error;
         LEAVE SWL_return;
      END IF;
      IF(v_RowCo <> 0) then
         SET NumTablesDeletedFrom = NumTablesDeletedFrom+1;
      END IF;
   END IF;
   IF(v_TranS = 1) then
      SET v_TranS = 0;
      COMMIT;
   END IF;
   SET SWP_Ret = 0;
   LEAVE SWL_return;
   SET NumTablesDeletedFrom = 0;
   IF(v_TranS = 1) then
      SET v_TranS = 0;
      ROLLBACK;
   END IF;
   SET SWP_Ret = v_Error;
   LEAVE SWL_return;
END */$$
DELIMITER ;

/* Procedure structure for procedure `aspnet_WebEvent_LogEvent` */

/*!50003 DROP PROCEDURE IF EXISTS  `aspnet_WebEvent_LogEvent` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `aspnet_WebEvent_LogEvent`(EventId          CHAR(32),
        EventTimeUtc    DATETIME,
        EventTime       DATETIME,
        EventType       NATIONAL VARCHAR(256),
        EventSequence   DECIMAL(19,0),
        EventOccurrence DECIMAL(19,0),
        EventCode       INT,
        EventDetailCode INT,
        Message         NATIONAL VARCHAR(1024),
        ApplicationPath NATIONAL VARCHAR(256),
        ApplicationVirtualPath NATIONAL VARCHAR(256),
        MachineName    NATIONAL VARCHAR(256),
        RequestUrl      NATIONAL VARCHAR(1024),
        ExceptionType   NATIONAL VARCHAR(256),
        Details         LONGTEXT)
BEGIN
   INSERT into aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
   VALUES(EventId ,EventTimeUtc,v_Event3,v_Event4,v_Event5,v_Event6,v_Event7,v_Event8,
   v_Messa,v_Appli,v_Appli2,v_Machi,v_Reque,v_Excep,v_Detai);
END */$$
DELIMITER ;

/* Procedure structure for procedure `elmah_GetErrorsXml` */

/*!50003 DROP PROCEDURE IF EXISTS  `elmah_GetErrorsXml` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `elmah_GetErrorsXml`(
  IN App VARCHAR(60),
  IN PageIndex INT(10),
  IN PageSize INT(10),
  OUT TotalCount INT(10)
)
    READS SQL DATA
BEGIN
    
    SELECT  count(*) INTO TotalCount
    FROM    `elmah_error`
    WHERE   `Application` = App;
    SET @index = PageIndex * PageSize;
    SET @count = PageSize;
    SET @app = App;
    PREPARE STMT FROM '
    SELECT
        `ErrorId`,
        `Application`,
        `Host`,
        `Type`,
        `Source`,
        `Message`,
        `User`,
        `StatusCode`,
        CONCAT(`TimeUtc`, '' Z'') AS `TimeUtc`
    FROM
        `elmah_error` error
    WHERE
        `Application` = ?
    ORDER BY
        `TimeUtc` DESC,
        `Sequence` DESC
    LIMIT
        ?, ?';
    EXECUTE STMT USING @app, @index, @count;
END */$$
DELIMITER ;

/* Procedure structure for procedure `elmah_GetErrorXml` */

/*!50003 DROP PROCEDURE IF EXISTS  `elmah_GetErrorXml` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `elmah_GetErrorXml`(
  IN Id CHAR(36),
  IN App VARCHAR(60)
)
    READS SQL DATA
BEGIN
    SELECT  `AllXml`
    FROM    `elmah_error`
    WHERE   `ErrorId` = Id AND `Application` = App;
END */$$
DELIMITER ;

/* Procedure structure for procedure `elmah_LogError` */

/*!50003 DROP PROCEDURE IF EXISTS  `elmah_LogError` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `elmah_LogError`(
    IN ErrorId CHAR(36), 
    IN Application varchar(60), 
    IN Host VARCHAR(30), 
    IN Type VARCHAR(100), 
    IN Source VARCHAR(60), 
    IN Message VARCHAR(500), 
    IN User VARCHAR(50), 
    IN AllXml TEXT, 
    IN StatusCode INT(10), 
    IN TimeUtc DATETIME
)
    MODIFIES SQL DATA
BEGIN
    INSERT INTO `elmah_error` (
        `ErrorId`, 
        `Application`, 
        `Host`, 
        `Type`, 
        `Source`, 
        `Message`, 
        `User`, 
        `AllXml`, 
        `StatusCode`, 
        `TimeUtc`
    ) VALUES (
        ErrorId, 
        Application, 
        Host, 
        Type, 
        Source, 
        Message, 
        User, 
        AllXml, 
        StatusCode, 
        TimeUtc
    );
END */$$
DELIMITER ;

/* Procedure structure for procedure `ELMAH_LogError_Clear` */

/*!50003 DROP PROCEDURE IF EXISTS  `ELMAH_LogError_Clear` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ELMAH_LogError_Clear`(pTimeUtc DATETIME)
BEGIN
		 delete from ELMAH_Error where TimeUtc < pTimeUtc;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_advertisement_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_advertisement_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_advertisement_delete`(_adid int)
BEGIN
	delete from advertisement where `adid` = _adid;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_advertisement_getactive` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_advertisement_getactive` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_advertisement_getactive`()
BEGIN
	
	SELECT  *  FROM `advertisement` WHERE active=1  ORDER BY adid desc LIMIT 3  ;
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_advertisement_getall` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_advertisement_getall` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_advertisement_getall`()
BEGIN
	
	SELECT  *  FROM `advertisement` order by adid desc ;
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_advertisement_getbyid` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_advertisement_getbyid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_advertisement_getbyid`(_adid int)
BEGIN
	select * from `advertisement` where `adid` = _adid;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_advertisement_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_advertisement_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_advertisement_insert`(
	_filenameX VARCHAR(100),
	_description VARCHAR(256),
	_link varchar(256),
	_owner varchar(256),
	_active tinyint(1)
	
	
	
    )
BEGIN
	INSERT INTO `advertisement`
            (`filename`,
             `description`,
             `link`,
             `owner`,
             `active`)
	VALUES (_filenameX,
		_description,
		_link,
		_owner,
		_active);
        
        
        SET @LastID = LAST_INSERT_ID();
        
        IF (_filenameX != '') THEN
		UPDATE `advertisement`
		SET  `filename` = CONCAT(@LastID, _filenameX)
		WHERE `adid`= @LastID;
	END IF;
	
        
	SELECT LAST_INSERT_ID();
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_advertisement_update` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_advertisement_update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_advertisement_update`(
	_adid int,
	_filenameX VARCHAR(100),
	_description VARCHAR(256),
	_link VARCHAR(256),
	_owner VARCHAR(256),
	_active TINYINT(1)
	)
BEGIN
	
	UPDATE `advertisement`
		SET `filename` = _filenameX,
		`description` = _description,
		`link` = _link,
		`owner` = _owner,
		`active` = _active
	WHERE `adid` = _adid;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_banner_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_banner_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_banner_delete`(
	_banner_id INT(11)
	)
BEGIN
	DELETE FROM banner  WHERE banner_id = _banner_id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_banner_featured_get_N` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_banner_featured_get_N` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_banner_featured_get_N`(_number INT)
BEGIN
    SET @sql = CONCAT('select * from banner where  visibility = 1 limit 0', _number);
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_banner_getbyid` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_banner_getbyid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_banner_getbyid`(_banner_id INT(11))
BEGIN
	SELECT * FROM banner WHERE banner_id = _banner_id ;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_Banner_get_featured_all` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_Banner_get_featured_all` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Banner_get_featured_all`()
BEGIN
	SELECT * FROM banner ;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_banner_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_banner_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_banner_insert`(
	_banner_name VARCHAR(50),
	_display_image_path  VARCHAR(50),
	_banner_summery  LONGTEXT,
	_banner_detail TEXT,
	_visibility BOOL             
	)
BEGIN
	INSERT INTO banner 
	(banner_name, display_image_path, banner_summery, banner_details,visibility)
	VALUES
	( _banner_name, _display_image_path, _banner_summery, _banner_detail,_visibility);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_banner_update` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_banner_update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_banner_update`(
	_banner_id INT(11),
	_banner_name VARCHAR(50),
	_display_image_path  VARCHAR(50),
	_banner_summery  LONGTEXT,
	_banner_details TEXT ,
	_visibility BOOL    
	)
BEGIN
	UPDATE banner  SET
		banner_name = _banner_name, 
		display_image_path = _display_image_path,
		banner_summery = _banner_summery, 
		banner_details = _banner_details,
		visibility = _visibility
	WHERE `banner_id` = _banner_id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_Category_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_Category_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Category_delete`(_id INT)
BEGIN
		DELETE FROM Category WHERE CID= _id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_Category_getall` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_Category_getall` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Category_getall`()
BEGIN
		SELECT * FROM Category order by CName asc;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_Category_getbyid` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_Category_getbyid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Category_getbyid`(_id INT)
BEGIN
		SELECT * FROM Category WHERE CID = _id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_Category_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_Category_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Category_insert`(
	_Name varchar(200))
BEGIN
	INSERT INTO Category
	(`CName`)
	VALUES
	(_Name);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_Category_update` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_Category_update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Category_update`(
		_id INT,
		_Name varchar(200)
	)
BEGIN
	UPDATE Category SET
		`CName`=_Name
	WHERE
		CID= _id;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Designation_Delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Designation_Delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Designation_Delete`(
	_ID int
	)
BEGIN
	delete from `designation` where Id=_ID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_Designation_getall` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_Designation_getall` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Designation_getall`()
BEGIN
  SELECT * FROM `designation` ORDER BY IF(Priority = '' OR Priority IS NULL,1,0), Priority ASC;
  
  END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Designation_GetById` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Designation_GetById` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Designation_GetById`(
	_ID int
	)
BEGIN
	select * from `designation` where Id=_ID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Designation_GetByYear` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Designation_GetByYear` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Designation_GetByYear`(_Year varchar(256))
BEGIN
	SELECT  DISTINCT `designation`.`Id`, `designation`.`Designation` FROM executivecommitee 
	INNER JOIN `members` ON `executivecommitee`.`memberid`=`members`.`memberid` 
	INNER JOIN  `designation` ON `executivecommitee`.`designationId`=`designation`.`Id`  
	WHERE `executivecommitee`.`year`=_Year
	ORDER BY IF(designation.Priority = '' OR designation.Priority IS NULL,1,0), designation.Priority ASC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Designation_GetByYearID` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Designation_GetByYearID` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Designation_GetByYearID`(_YearId INT)
BEGIN
	SELECT  DISTINCT `designation`.`Id`, `designation`.`Designation`, designation.Priority
	FROM executivecommitee 	
	INNER JOIN  `designation` ON `executivecommitee`.`designationId`=`designation`.`Id`  
	WHERE executivecommitee.YearId =_YearId 
	ORDER BY IF(designation.Priority = '' OR designation.Priority IS NULL,1,0), designation.Priority ASC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Designation_Insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Designation_Insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Designation_Insert`(
	_title VARCHAR(256),
	_Priority int
	
	)
BEGIN
	INSERT INTO `Designation` 
	(`designation`, `Priority`)
	VALUES
	( _title,_Priority);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Designation_Update` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Designation_Update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Designation_Update`(
	_Id int,
	_title VARCHAR(256),
	_Priority int
	)
BEGIN
	Update  `designation` 
	set
	`designation`=_title,
	`Priority` = _Priority
	where Id=_Id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_documents_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_documents_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_documents_delete`(_documentid int)
BEGIN
		
	delete from `documents` WHERE `documentid` = _documentid;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_documents_getall` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_documents_getall` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_documents_getall`()
BEGIN
	SELECT * FROM `documents` ORDER BY title;
  
  END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_documents_getbycategoryId` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_documents_getbycategoryId` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_documents_getbycategoryId`(_CategoryId int)
BEGIN
		
	select `documents`.*,`resource`.`Title` as Category from `documents` inner join `resource` on `documents`.`CategoryId`=`resource`.`Id` WHERE `documents`.`CategoryId` = _CategoryId;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_documents_getbyid` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_documents_getbyid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_documents_getbyid`(_documentid int)
BEGIN
		
	select * from `documents` WHERE `documentid` = _documentid;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_documents_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_documents_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_documents_insert`(
_title VARCHAR(256),
_AttachmentName VARCHAR(256),
_OnlyForMembers TINYINT(1),
_CategoryId int,
_ExpireDate date
)
BEGIN
		
	INSERT INTO `documents`
            (`title`,
             `AttachmentName`,
	     `OnlyForMembers`,
	     `CategoryId`,
	     ExpireDate)
	VALUES (_title,
		_AttachmentName,
		_OnlyForMembers,
		_CategoryId,
		_ExpireDate);	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_documents_update` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_documents_update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_documents_update`(
_documentid INT,
_title VARCHAR(256),
_AttachmentName VARCHAR(256),
_OnlyForMembers TINYINT(1),
_CategoryId int,
_ExpireDate date
 )
BEGIN
		
	UPDATE `documents`
		SET `title` = _title,
		`AttachmentName` = _AttachmentName,
		`OnlyForMembers` = _OnlyForMembers,
		`CategoryId` = _CategoryId,
		ExpireDate=_ExpireDate
	WHERE `documentid` = _documentid;
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_Event_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_Event_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Event_delete`(_Event_id INT)
BEGIN
		DELETE FROM Event WHERE Event_id = _Event_id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_Event_get` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_Event_get` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Event_get`()
BEGIN
	SELECT * FROM Event where `ExpiryDate` >= curdate() ORDER BY Event_date DESC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_Event_getall` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_Event_getall` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Event_getall`()
BEGIN
	select * from Event order by Event_date desc;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_Event_getbyid` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_Event_getbyid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Event_getbyid`(_Event_id int)
BEGIN
		select * from Event where Event_id = _Event_id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_Event_getlatest` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_Event_getlatest` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Event_getlatest`()
BEGIN
		select * from Event where `ExpiryDate` >= curdate() order by Event_date desc limit 2;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_Event_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_Event_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Event_insert`(
	_Event_title VARCHAR(250),
	_Summary TEXT,
	_description TEXT,
	_Event_date DATETIME, 
	_ExpiryDate datetime
	)
BEGIN
	INSERT INTO Event
	(Event_title, `Summary`, description, `Event_date`, `ExpiryDate`)
	VALUES
	(_Event_title, _Summary, _description, _Event_date, _ExpiryDate);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_Event_update` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_Event_update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Event_update`(
		_Event_id int,
		_Event_title varchar(256),
		_Summary TEXT,	
		_description TEXT, 	
		_Event_date DATETIME, 	
		_ExpiryDate DATETIME	
		
	)
BEGIN
	update Event set
		Event_title = _Event_title,
		`Summary` = _Summary,
		description = _description, 
		Event_date =_Event_date,
		`ExpiryDate` = _ExpiryDate
	where
		Event_id = _Event_id;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_executivecommitee_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_executivecommitee_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_executivecommitee_delete`(_id int)
BEGIN
	delete from executivecommitee
	where executivecommitee.id = _id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_executivecommitee_deletebyyear` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_executivecommitee_deletebyyear` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_executivecommitee_deletebyyear`(_year varchar(256))
BEGIN
	delete from executivecommitee
	where executivecommitee.`year` = _year;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_executivecommitee_getall` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_executivecommitee_getall` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_executivecommitee_getall`()
BEGIN
	SELECT executivecommitee.`id`,executivecommitee.year,members.*  FROM executivecommitee
	INNER JOIN members ON (executivecommitee.memberid = members.memberid) order by executivecommitee.year desc;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_executivecommitee_getbydesignationid` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_executivecommitee_getbydesignationid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_executivecommitee_getbydesignationid`(_designationId int,_year varchar(256))
BEGIN
	SELECT executivecommitee.`id`, executivecommitee.Priority, executivecommitee.year,members.*  FROM executivecommitee
	INNER JOIN members ON executivecommitee.memberid = members.memberid 
	inner join `designation` on `executivecommitee`.`designationId`=`designation`.`Id`
	where `executivecommitee`.`designationId` = _designationId and executivecommitee.`year`=_year
	ORDER BY  IF(Priority = '' OR Priority IS NULL,1,0), Priority ASC, id ASC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_executivecommitee_getbydesignationidAndyearId` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_executivecommitee_getbydesignationidAndyearId` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_executivecommitee_getbydesignationidAndyearId`(_designationId INT,_yearId INT)
BEGIN
	SELECT `executivecommitee`.*, members.`membername`  FROM executivecommitee
	INNER JOIN members ON executivecommitee.memberid = members.memberid 
	INNER JOIN `designation` ON `executivecommitee`.`designationId`=`designation`.`Id`
	WHERE `executivecommitee`.`designationId` = _designationId AND executivecommitee.`YearId`=_yearId
	ORDER BY  IF(executivecommitee.Priority = '' OR executivecommitee.Priority IS NULL,1,0), executivecommitee.Priority ASC, Id asc;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_executivecommitee_getbyid` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_executivecommitee_getbyid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_executivecommitee_getbyid`(_id int)
BEGIN
	SELECT executivecommitee.*, members.membername, members.photograph  FROM executivecommitee
	INNER JOIN members ON (executivecommitee.memberid = members.memberid)
	where executivecommitee.id = _id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_executivecommitee_getbymemberid` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_executivecommitee_getbymemberid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_executivecommitee_getbymemberid`( _MemberId int)
BEGIN
	SELECT executivecommitee.*, year.`IsCurrentExe`, members.`memberid`, members.`membername` FROM `executivecommitee`
	INNER JOIN `year` ON executivecommitee.`YearId` = year.`Id`
	INNER JOIN `members` ON executivecommitee.memberid = members.memberid 
	WHERE  `IsCurrentExe`=  1 AND executivecommitee.`memberid` = _MemberId;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_executivecommitee_getbyusername` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_executivecommitee_getbyusername` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_executivecommitee_getbyusername`( username VARCHAR(256))
BEGIN
	SELECT members.*, executivecommitee.`id`, `executivecommitee`.`memberid` AS executiveid FROM members
INNER JOIN `executivecommitee` ON members.memberid = executivecommitee.memberid 
WHERE username = username;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_executivecommitee_getbyyear` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_executivecommitee_getbyyear` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_executivecommitee_getbyyear`(_yearId int)
BEGIN
	SELECT executivecommitee.`id`, executivecommitee.Priority, designation.`Designation`, executivecommitee.`YearId`,members.`membername`,  
	(SELECT year.year FROM YEAR WHERE year.id = executivecommitee.`YearId`)	AS YEAR
	FROM executivecommitee
	INNER JOIN members ON executivecommitee.memberid = members.memberid 
	INNER JOIN `designation` ON `executivecommitee`.`designationId`=`designation`.`Id`
	WHERE executivecommitee.`YearId` = _yearId
	ORDER BY  IF(executivecommitee.Priority = '' OR executivecommitee.Priority IS NULL,1,0), executivecommitee.Priority ASC, id ASC;
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_executivecommitee_getyear` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_executivecommitee_getyear` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_executivecommitee_getyear`()
BEGIN
	SELECT distinct year  FROM executivecommitee order by year desc;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_executivecommitee_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_executivecommitee_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_executivecommitee_insert`(
	_memberid int,
	_designation int,
	_yearId  int,
	_priority int
	)
BEGIN
	insert into executivecommitee (memberid, `designationId`,YearId,Priority)
	values(_memberid,_designation, _yearId,_priority);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_executivecommitee_update` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_executivecommitee_update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_executivecommitee_update`(
	_id int,
	_memberid INT,
	_designation INT,
	_yearId  Int,
	_priority INT
	
)
BEGIN
	
	update executivecommitee set 
		memberid = _memberid, 
		`designationId`= _designation,
		YearId= _yearId,
		Priority = _priority
	where id = _id;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Header_Delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Header_Delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Header_Delete`(
	_ID int
	)
BEGIN
	delete from header where Id=_ID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Header_GetActive` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Header_GetActive` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Header_GetActive`(
	
	)
BEGIN
	SELECT * FROM header WHERE Active=1 ORDER BY Id DESC LIMIT 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Header_GetAll` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Header_GetAll` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Header_GetAll`()
BEGIN
	select * from header ;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Header_GetById` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Header_GetById` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Header_GetById`(
	_ID int
	)
BEGIN
	select * from header where Id=_ID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Header_Insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Header_Insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Header_Insert`(
	_ImagePath VARCHAR(256),
	_Active bit 
	)
BEGIN
	INSERT INTO header 
	(Image,Active)
	VALUES
	( _ImagePath,_Active);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Header_Update` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Header_Update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Header_Update`(
	_ID int,
	_ImagePath VARCHAR(256),
	_Active bit 
	)
BEGIN
	Update  Header 
	set
	Image=_ImagePath,
	Active=_Active
	where Id=_ID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_hitcounter_gettotalhits` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_hitcounter_gettotalhits` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_hitcounter_gettotalhits`()
BEGIN
	SELECT totalhit from hitcounter limit 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_hitcounter_increasehit` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_hitcounter_increasehit` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_hitcounter_increasehit`()
BEGIN
	update hitcounter set totalhit = totalhit + 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_localization_update` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_localization_update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_localization_update`(
	_resourcevalue TEXT,
	_pagename VARCHAR(50),
	_resourcedescription VARCHAR(50)
		)
BEGIN
	UPDATE localization SET 
		resourcevalue =_resourcevalue
	WHERE pagename=_pagename
	AND resourcedescription=_resourcedescription;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_members_child_deletebyusername` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_members_child_deletebyusername` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_members_child_deletebyusername`( _username varchar(256))
BEGIN
		
	delete from members_child where memberid = (SELECT memberid from members where username= _username);
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_members_child_getbyusername` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_members_child_getbyusername` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_members_child_getbyusername`( _username varchar(256))
BEGIN
		
	select * from members_child where memberid = (SELECT memberid from members where username= _username);
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_members_child_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_members_child_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_members_child_insert`( 
	_memberid int,
	_childname varchar(256),
	_dateofbirth VARCHAR(256),
	_gendar varchar(20))
BEGIN
		
	
	insert into members_child (memberid, childname, dateofbirth, gendar)
	values(_memberid, _childname, _dateofbirth, _gendar);
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_members_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_members_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_members_delete`(_memberid int)
BEGIN
	delete from members_post_comment where memberid =_memberid;
	delete from members_post where memberid =_memberid;
	delete from executivecommitee where memberid =_memberid;
	delete from members_postingplaces where memberid =_memberid;
	delete from members_child where memberid = _memberid;
	delete from members_qualification where memberid = _memberid;
	delete from pollresults where memberid = _memberid;
	delete from members where memberid= _memberid;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_members_deletebyusername` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_members_deletebyusername` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_members_deletebyusername`( _username varchar(256))
BEGIN
	delete from members_post_comment where memberid = (SELECT memberid from members where username= _username);
	delete from members_post where memberid = (SELECT memberid from members where username= _username);
	delete from executivecommitee where memberid = (SELECT memberid from members where username= _username);
	delete from members_postingplaces where memberid = (SELECT memberid from members where username= _username);
	delete from members_child where memberid = (SELECT memberid from members where username= _username);
	delete from members_qualification where memberid = (SELECT memberid from members where username= _username);
	delete from pollresults where memberid = (SELECT memberid from members where username= _username);
	delete from members where username= _username;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_members_getall` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_members_getall` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_members_getall`(
	_startIndex int,
	_pageSize int
	)
BEGIN
	SET @row_number:=0;
	SET @Page_number:=_pageSize;
	select members.*,@row_number:=@row_number+1  ASrow,
	(SELECT COUNT(*) FROM `members`) AS Total,
	(select members_postingplaces.designation from members_postingplaces where
		members_postingplaces.memberid = members.memberid order by dateofjoining desc, present desc limit 1)
		as designation,
	(select members_postingplaces.nameoftheoffice from members_postingplaces where
		members_postingplaces.memberid = members.memberid order by dateofjoining desc, present desc limit 1)
		as nameoftheoffice
	from members where members.membername != '' HAVING ASrow>_startIndex  ORDER BY if(serviceidno = '' or serviceidno is null,1,0), serviceidno asc, memberid asc
	limit 20;
	
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_members_getallmember` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_members_getallmember` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_members_getallmember`()
BEGIN
	 SELECT `members`.*,CONCAT(`membername`,', ',`serviceidno`) memberinfo,(SELECT members_postingplaces.designation FROM members_postingplaces WHERE
		members_postingplaces.memberid = members.memberid ORDER BY dateofjoining DESC, present DESC LIMIT 1)
		AS designation,
	(SELECT members_postingplaces.nameoftheoffice FROM members_postingplaces WHERE
		members_postingplaces.memberid = members.memberid ORDER BY dateofjoining DESC, present DESC LIMIT 1)
		AS nameoftheoffice
	FROM members WHERE members.membername != ''  
	ORDER BY IF(serviceidno = '' OR serviceidno IS NULL,1,0), serviceidno ASC, memberid ASC;
	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_members_getbyid` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_members_getbyid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_members_getbyid`( _memberid int)
BEGIN
	
	select members.*,
	(select members_postingplaces.designation from members_postingplaces where
		members_postingplaces.memberid = members.memberid order by dateofjoining desc, present desc limit 1)
		as designation,
	(select members_postingplaces.nameoftheoffice from members_postingplaces where
		members_postingplaces.memberid = members.memberid order by dateofjoining desc, present desc limit 1)
		as nameoftheoffice
		from members where memberid= _memberid;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_members_getbyusername` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_members_getbyusername` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_members_getbyusername`( pusername varchar(256))
BEGIN
	SELECT members.*,
	(SELECT members_postingplaces.designation FROM members_postingplaces WHERE
		members_postingplaces.memberid = members.memberid ORDER BY dateofjoining DESC, present DESC LIMIT 1)
		AS designation,
	(SELECT members_postingplaces.nameoftheoffice FROM members_postingplaces WHERE
		members_postingplaces.memberid = members.memberid ORDER BY dateofjoining DESC, present DESC LIMIT 1)
		AS nameoftheoffice
		FROM members WHERE username = pusername;
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_members_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_members_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_members_insert`(_email varchar(256), _username varchar(256))
BEGIN
		
	insert into members (email, username) values(_email, _username);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_members_postingplaces_deletebyusername` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_members_postingplaces_deletebyusername` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_members_postingplaces_deletebyusername`( _username varchar(256))
BEGIN
		
	delete from members_postingplaces where memberid = (SELECT memberid from members where username= _username);
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_members_postingplaces_getbyusername` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_members_postingplaces_getbyusername` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_members_postingplaces_getbyusername`( _username varchar(256))
BEGIN
		
	
	select * from members_postingplaces where memberid = (SELECT memberid from members where username= _username);
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_members_postingplaces_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_members_postingplaces_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_members_postingplaces_insert`( 
	_memberid int,
	_designation varchar(256),
	_nameoftheoffice varchar(256),
	_dateofjoining VARCHAR(256),
	_present tinyint(1),
	_immediatepast tinyint(1))
BEGIN
		
	
	insert into members_postingplaces 
		(memberid, designation, nameoftheoffice, dateofjoining, present, immediatepast)
	values
		(_memberid, _designation, _nameoftheoffice, 
		_dateofjoining,  _present,  _immediatepast);
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_members_qualification_deletebyusername` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_members_qualification_deletebyusername` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_members_qualification_deletebyusername`( _username varchar(256))
BEGIN
		
	
	delete from members_qualification where memberid = (SELECT memberid from members where username= _username);
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_members_qualification_getbyusername` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_members_qualification_getbyusername` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_members_qualification_getbyusername`( _username varchar(256))
BEGIN
		
	
	select * from members_qualification where memberid = (SELECT memberid from members where username= _username);
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_members_qualification_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_members_qualification_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_members_qualification_insert`( 
	_memberid int,
	_degreename varchar(256),
	_institute varchar(256),
	_passingyear VARCHAR(256),
	_subject varchar(256))
BEGIN
		
	
	insert into members_qualification 
	(`memberid`, `degreename`, `institute`, `passingyear`, `subject`)
	values (_memberid, _degreename, _institute, _passingyear, _subject);
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_members_update` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_members_update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_members_update`(
		_membername varchar(256) ,
		_photograph varchar(100) ,
		_fathername varchar(256) ,
		_mothername varchar(256) ,
		_dateofbirth VARCHAR(256),
		_bloodgroup varchar(10),
		_nid varchar(256) ,
		_serviceidno VARCHAR(256),
		_spouse varchar(256) ,
		_email varchar(256) ,
		_email2 VARCHAR(256) ,
		_contactnooffice varchar(256) ,
		_contactnoresidence VARCHAR(256) ,
		_mobile1 VARCHAR(256) ,
		_mobile2 VARCHAR(256) ,
		_presentaddress varchar(1000) ,
		_permanentaddress varchar(1000) ,
		_homedistrict varchar(100) ,
		_interest varchar(1000) ,
		_username varchar(256),
		_banglaname varchar(256),
		_designation varchar(256),
		_joindate date,
		_bcsyear varchar(256)
	)
BEGIN
		
	
	
	UPDATE members SET 
		`membername` = _membername,
		`photograph` = _photograph,
		`fathername` = _fathername,
		`mothername` = _mothername,
		`dateofbirth` = _dateofbirth,
		`bloodgroup` = _bloodgroup,
		`nid` = _nid,
		`serviceidno` = _serviceidno,
		`spouse` = _spouse,
		`email` = _email,
		`email2` = _email2,
		`contactnooffice` = _contactnooffice,
		`contactnoresidence` = _contactnoresidence,
		`mobile1` = _mobile1,
		`mobile2` = _mobile2,
		`presentaddress` = _presentaddress,
		`permanentaddress` = _permanentaddress,
		`homedistrict` = _homedistrict,
		`interest` = _interest,
		`lastupdated` = CURDATE(),
		banglaname=_banglaname,
		designation=_designation,
		joindate=_joindate,
		bcsyear=_bcsyear
	WHERE `username` = _username;
	
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_member_publications_deletebyusername` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_member_publications_deletebyusername` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_member_publications_deletebyusername`( _username varchar(256))
BEGIN
		
	delete from member_publications where memberid = (SELECT memberid from members where username= _username);
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_member_publications_getbyusername` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_member_publications_getbyusername` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_member_publications_getbyusername`( _username varchar(256))
BEGIN
		
	select * from member_publications where memberid = (SELECT memberid from members where username= _username);
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_member_publications_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_member_publications_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_member_publications_insert`( 
	_memberid int,
	_title varchar(256),
	_journalname VARCHAR(256),
	_otherparticulars VARCHAR(1000))
BEGIN
		
	
	insert into member_publications (memberid, title, journalname, otherparticulars)
	values(_memberid, _title, _journalname, _otherparticulars);
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_messageForAll_getbymemberid` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_messageForAll_getbymemberid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_messageForAll_getbymemberid`(_memberid INT)
BEGIN
	SELECT * FROM `message`WHERE `senttoall`=1  AND displaytill >= CURDATE()UNION 
	SELECT `message`.* FROM `message` INNER JOIN `message_recepient` ON `message`.`messageid`=`message_recepient`.`messageid`
	WHERE `message_recepient`.`memberid`=_memberid
	ORDER BY messagedate DESC;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_message_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_message_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_message_delete`(_messageid int)
BEGIN
	
	DELETE FROM message_recepient WHERE messageid = _messageid;
	DELETE FROM message_hidden WHERE messageid = _messageid;
	delete from message where messageid = _messageid;
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_message_getall` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_message_getall` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_message_getall`()
BEGIN
	
	select * from message order by messagedate desc;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_message_getbyid` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_message_getbyid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_message_getbyid`(_messageid int)
BEGIN
	
	select * from message where messageid = _messageid;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_message_getbymemberid` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_message_getbymemberid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_message_getbymemberid`(_memberid int)
BEGIN
	SELECT * FROM `message` WHERE displaytill >= CURDATE()UNION 
	SELECT `message`.* FROM `message` INNER JOIN `message_recepient` ON `message`.`messageid`=`message_recepient`.`messageid`
	WHERE `message_recepient`.`memberid`=_memberid
	 ORDER BY messagedate DESC;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_message_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_message_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_message_insert`(
	_message varchar(1000),
	_displaytill datetime,
	_sentby varchar(256),
	_senttoall int
	)
BEGIN
	
	
	INSERT INTO `message`
            (`message`,
             `messagedate`,
             `displaytill`,
             `sentby`,
             `senttoall`)
	VALUES (_message,
		Now(),
		_displaytill,
		_sentby,
		_senttoall);
        
	select last_insert_id();
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_message_recepient_getbymessageid` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_message_recepient_getbymessageid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_message_recepient_getbymessageid`(_messageid int)
BEGIN
	select memberid from message_recepient where messageid = _messageid;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_message_recepient_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_message_recepient_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_message_recepient_insert`(_messageid int, _memberid int)
BEGIN
    
	 insert into message_recepient (messageid , memberid)
	 values(_messageid, _memberid);
	 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_message_update` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_message_update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_message_update`(
	_messageid int,
	_message varchar(1000),
	_displaytill datetime,
	_sentby varchar(256),
	_senttoall int
	)
BEGIN
	
	delete from message_recepient where messageid = _messageid;
	DELETE FROM message_hidden WHERE messageid = _messageid;
	
	update `message` set
            `message` = _message,
            messagedate = Now(),
             `displaytill` = _displaytill,
             `sentby` = _sentby,
             `senttoall` = _senttoall
	where messageid = _messageid;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_news_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_news_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_news_delete`(_news_id INT)
BEGIN
		DELETE FROM news WHERE news_id = _news_id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_news_get` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_news_get` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_news_get`()
BEGIN
	select * from news where `ExpiryDate` >= CURDATE() order by `Create_date` desc;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_news_getall` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_news_getall` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_news_getall`()
BEGIN
	select * from news order by `Create_date` desc;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_news_getbyid` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_news_getbyid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_news_getbyid`(_news_id int)
BEGIN
		select * from news where news_id = _news_id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_news_getlatest` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_news_getlatest` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_news_getlatest`()
BEGIN
		select * from news WHERE `ExpiryDate` >= CURDATE()  order by `Create_date` desc limit 4;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_news_getLatest3` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_news_getLatest3` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_news_getLatest3`()
BEGIN
		SELECT * FROM news WHERE `ExpiryDate` >= CURDATE() ORDER BY `Create_date` DESC LIMIT 2;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_news_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_news_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_news_insert`(
	_news_title VARCHAR(250),
	_Summary TEXT,
	_description TEXT, 
	_ExpiryDate DATETime	
	)
BEGIN
	INSERT INTO news
	(news_title, `Summary`, description, create_date, `ExpiryDate`)
	VALUES
	(_news_title,_Summary,  _description, NOW(), _ExpiryDate);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_news_update` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_news_update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_news_update`(
		_news_id int,
		_news_title varchar(256), 
		_Summary TEXT,
		_description text, 
		_ExpiryDate datetime
		
	)
BEGIN
	update news set
		news_title = _news_title,
		Summary = _Summary,
		description = _description,
	       `Create_date`= now(),
	       `ExpiryDate` = _ExpiryDate
		
	where
		news_id = _news_id;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_PhotoGallery_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_PhotoGallery_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_PhotoGallery_delete`(_Id INT)
BEGIN
		DELETE FROM `PhotoGallery` WHERE Id = _Id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_PhotoGallery_getall` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_PhotoGallery_getall` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_PhotoGallery_getall`()
BEGIN
	SELECT * FROM `PhotoGallery`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_PhotoGallery_getbyCategoryId` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_PhotoGallery_getbyCategoryId` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_PhotoGallery_getbyCategoryId`(_CategoryId INT)
BEGIN
		SELECT PhotoGallery.*,
		`category`.`CName`
		FROM `PhotoGallery`
		INNER JOIN `category` ON `PhotoGallery`.`CategoryId`= `category`.`CID`
		WHERE `PhotoGallery`.`CategoryId`=_CategoryId;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_PhotoGallery_getbyid` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_PhotoGallery_getbyid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_PhotoGallery_getbyid`(_id INT)
BEGIN
		SELECT PhotoGallery.*,		
		category.`CID`,
		category.`CName`
		FROM PhotoGallery INNER JOIN category
		ON category.`CID`=PhotoGallery.`CategoryId`
		WHERE Id = _id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_PhotoGallery_getLatest` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_PhotoGallery_getLatest` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_PhotoGallery_getLatest`()
BEGIN
	SELECT * FROM `PhotoGallery`
	     ORDER BY Id DESC LIMIT 4;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_PhotoGallery_getrecent50` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_PhotoGallery_getrecent50` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_PhotoGallery_getrecent50`()
BEGIN
		SELECT * FROM `PhotoGallery` ORDER BY `Id` DESC LIMIT 25;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_PhotoGallery_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_PhotoGallery_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_PhotoGallery_insert`(
  _CategoryId INT,  
  _Title VARCHAR (256),
  _ImagePath VARCHAR(256)
)
BEGIN
 
  INSERT INTO `PhotoGallery` (
    `CategoryId`,    
    `Title`,
    `ImagePath`
   
  ) 
  VALUES
    (
      _CategoryId,       
      _Title,
      _ImagePath
    ) ;
    
    
      END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_PhotoGallery_update` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_PhotoGallery_update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_PhotoGallery_update`(
	  _Id INT,
          _CategoryId INT,	
	  _Title VARCHAR (256),
	  _ImagePath VARCHAR(256)	
	
	)
BEGIN
      UPDATE PhotoGallery SET
	  
	  `CategoryId`=_CategoryId,	 
	  `Title`= _Title,
	  `ImagePath` = _ImagePath	  
	  WHERE Id=_Id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_polloptions_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_polloptions_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_polloptions_delete`(_optionid int)
BEGIN
	
	delete from polloptions where `optionid` = _optionid;
	
			
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_polloptions_getbyid` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_polloptions_getbyid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_polloptions_getbyid`(_pollid int)
BEGIN
  select *,
	(select count(memberid) from pollresults where pollresults.pollid = _pollid) as TotalVote,
	(select count(memberid) from pollresults where pollresults.optionid =polloptions.optionid) as OptionVote
	from `polloptions` where pollid=_pollid ;
  
  END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_polloptions_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_polloptions_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_polloptions_insert`(
	_pollid int,
	_optiontext varchar(256))
BEGIN
	
	insert into polloptions 
	(`pollid`, `optiontext`)
	values
	(_pollid, _optiontext);
	
			
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_polloptions_update` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_polloptions_update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_polloptions_update`(
	_optionid int,
	_optiontext varchar(256))
BEGIN
	
	update polloptions  set `optiontext` = _optiontext 
	where `optionid` = _optionid;
	
			
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_pollresults_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_pollresults_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_pollresults_insert`(
	_pollid int,
	_optionid int,
	_memberid int)
BEGIN
	
	insert into pollresults 
	(`pollid`, `optionid`, `memberid`)
	values
	(_pollid, _optionid, _memberid);
	
			
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_poll_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_poll_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_poll_delete`(_pollid int)
BEGIN
		
	delete from `poll` WHERE `pollid` = _pollid;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_poll_getall` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_poll_getall` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_poll_getall`()
BEGIN
  select * from `poll` order by polldate desc;
  
  END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_poll_getbyid` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_poll_getbyid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_poll_getbyid`(_pollid int)
BEGIN
  select * from `poll` where pollid=_pollid ;
  
  END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_poll_getcurrent` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_poll_getcurrent` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_poll_getcurrent`(_memberid int)
BEGIN
  select *,
	(select count(memberid) from pollresults where pollresults.pollid = poll.pollid) as TotalVoted,
	(select count(optionid) from pollresults where pollresults.pollid = poll.pollid and pollresults.memberid=_memberid) as HasVoted
 from `poll` where expiredate >= now() and enableforvoting =1
	order by polldate desc;
  
  END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_poll_getoldresult` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_poll_getoldresult` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_poll_getoldresult`()
BEGIN
  select *,
	(select count(memberid) from pollresults where pollresults.pollid = poll.pollid) as TotalVoted
 from `poll` where expiredate < CURDATE()
	and (select count(memberid) from pollresults where pollresults.pollid = poll.pollid) > 0
	order by polldate ;
  
  END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_poll_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_poll_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_poll_insert`(
	_topics VARCHAR(1000),
	_expiredate datetime,
	_enableforvoting tinyint(1),
	_onlyforec TINYINT(1)
	)
BEGIN
		
	insert into poll 
	(`topics`, `polldate`, `expiredate`, `enableforvoting`, `onlyforec`)
	values
	(_topics, now(), _expiredate, _enableforvoting, _onlyforec);
	select LAST_INSERT_ID();
			
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_poll_update` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_poll_update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_poll_update`(
	_pollid int,
	_topics VARCHAR(1000),
	_expiredate datetime,
	_enableforvoting tinyint(1),
	_onlyforec TINYINT(1))
BEGIN
		
	update poll set
		topics = _topics,
		`polldate` = now(),
		expiredate = _expiredate,
		enableforvoting = _enableforvoting,
		onlyforec = _onlyforec
	where pollid = _pollid;
			
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Resource_Delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Resource_Delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Resource_Delete`(
	_ID int
	)
BEGIN
	delete from resource where Id=_ID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Resource_GetAll` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Resource_GetAll` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Resource_GetAll`()
BEGIN
	select * from resource ;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Resource_GetById` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Resource_GetById` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Resource_GetById`(
	_ID int
	)
BEGIN
	select * from resource where Id=_ID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Resource_Insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Resource_Insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Resource_Insert`(
	_title VARCHAR(256),
	_details text 
	)
BEGIN
	INSERT INTO resource 
	(Title,Details)
	VALUES
	( _title,_details);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Resource_Update` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Resource_Update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Resource_Update`(
	_Id int,
	_title VARCHAR(256),
	_details TEXT 
	)
BEGIN
	Update  resource 
	set
	Title=_title,
	Details=_details
	where Id=_Id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_Users_GetAll` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_Users_GetAll` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Users_GetAll`()
BEGIN
	
		
	SELECT aspnet_Users.UserName, 
		aspnet_Membership.Email, 
		aspnet_Membership.CreateDate,
		aspnet_Membership.LastLoginDate,
		aspnet_Membership.IsApproved,
		aspnet_Roles.RoleName
		
	FROM aspnet_Users 
	INNER JOIN aspnet_Membership ON aspnet_Users.UserId = aspnet_Membership.UserId 
	INNER JOIN aspnet_UsersInRoles ON aspnet_Users.UserId = aspnet_UsersInRoles.UserId 
	INNER JOIN aspnet_Roles ON aspnet_UsersInRoles.RoleId = aspnet_Roles.RoleId
	ORDER BY  UserName ASC,RoleName ASC;
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Year_Delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Year_Delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Year_Delete`(
	_Id INT
	)
BEGIN
	DELETE FROM year WHERE Id=_Id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Year_GetAll` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Year_GetAll` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Year_GetAll`()
BEGIN
	select * from year order by year desc;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Year_GetById` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Year_GetById` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Year_GetById`(
	_Id INT
	)
BEGIN
	SELECT * FROM year WHERE Id=_Id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Year_Insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Year_Insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Year_Insert`(
	_Year VARCHAR(256),
	_IsCurrent BIT 
	)
BEGIN
	INSERT INTO Year 
	(year.`Year`,year.`IsCurrentExe`)
	VALUES
	( _Year,_IsCurrent);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USP_Year_Update` */

/*!50003 DROP PROCEDURE IF EXISTS  `USP_Year_Update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_Year_Update`(
	_Id INT,
	_Year VARCHAR(256),
	_IsCurrent BIT 
	)
BEGIN
	UPDATE  year 
	SET
	year.`Year`=_Year,
	year.`IsCurrentExe`=_IsCurrent
	WHERE Id=_Id;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
