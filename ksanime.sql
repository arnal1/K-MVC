/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.1.34-MariaDB : Database - ksanime
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ksanime` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ksanime`;

/*Table structure for table `anime` */

DROP TABLE IF EXISTS `anime`;

CREATE TABLE `anime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `deskripsi` text,
  `total_episode` varchar(5) DEFAULT NULL,
  `rating` varchar(5) DEFAULT NULL,
  `cover` varchar(50) DEFAULT NULL,
  `jadwal_rilis` varchar(10) DEFAULT NULL,
  `genre` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `anime` */

insert  into `anime`(`id`,`judul`,`status`,`deskripsi`,`total_episode`,`rating`,`cover`,`jadwal_rilis`,`genre`) values 
(1,'Boku No Hero Academia','Ongoing','Midoriya Izuku hanya seorang siswa biasa yang hidup di dunia dimana banyak orang memiliki kekuatan super yang disebut dengan “Quirk” (Kosei). Meskipun tidak memiliki kekuatan super, namun ia bermimpi suatu hari nanti bisa menjadi hero (pahlawan). Suatu ketika, saat ia berusaha menyelamatkan temannya dari seorang Villain, seorang pahlawan terkuat bernama All Might memberikan kekuatan padanya. Setelah kejadian itu, Izuku melanjutkan sekolah di SMA Yuuei, sebuah sekolah khusus yang mendidik para calon hero masa depan.','12','8.00','1.jpg','Senin','Comedy'),
(2,'Shokugeki No Shouma','Ongoing','Ever since he was a child, fifteen-year-old Souma Yukihira has helped his father by working as the sous chef in the restaurant his father runs and owns. Throughout the years, Souma developed a passion for entertaining his customers with his creative, skilled, and daring culinary creations. His dream is to someday own his family\'s restaurant as its head chef.\r\n\r\nYet when his father suddenly decides to close the restaurant to test his cooking abilities in restaurants around the world, he sends Souma to Tootsuki Culinary Academy, an elite cooking school where only 10 percent of the students graduate. The institution is famous for its \"Shokugeki\" or \"food wars,\" where students face off in intense, high-stakes cooking showdowns.\r\n\r\nAs Souma and his new schoolmates struggle to survive the extreme lifestyle of Tootsuki, more and greater challenges await him, putting his years of learning under his father to the test.','12','8.30','2.jpg','Rabu','Comedy'),
(3,'Overlord','Finished','The final hour of the popular virtual reality game Yggdrasil has come. However, Momonga, a powerful wizard and master of the dark guild Ainz Ooal Gown, decides to spend his last few moments in the game as the servers begin to shut down. To his surprise, despite the clock having struck midnight, Momonga is still fully conscious as his character and, moreover, the non-player characters appear to have developed personalities of their own!\r\n\r\nConfronted with this abnormal situation, Momonga commands his loyal servants to help him investigate and take control of this new world, with the hopes of figuring out what has caused this development and if there may be others in the same predicament.','12','9.00','3.jpg','Kamis','Comedy'),
(4,'Grand Blue','Finished','Among the seaside town of Izu\'s ocean waves and rays of shining sun, Iori Kitahara is just beginning his freshman year at Izu University. As he moves into his uncle\'s scuba diving shop, Grand Blue, he eagerly anticipates his dream college life, filled with beautiful girls and good friends.\r\n\r\nBut things don\'t exactly go according to plan. Upon entering the shop, he encounters a group of rowdy, naked upperclassmen, who immediately coerce him into participating in their alcoholic activities. Though unwilling at first, Iori quickly gives in and becomes the heart and soul of the party. Unfortunately, this earns him the scorn of his cousin, Chisa Kotegawa, who walks in at precisely the wrong time. Undeterred, Iori still vows to realize his ideal college life, but will things go according to plan this time, or will his situation take yet another dive? \r\n\r\n[Written by MAL Rewrite]','12','8.20','4.jpg','Jumat','Comedy'),
(5,'Mirai Nikki','Finished','Lonely high school student, Yukiteru Amano, spends his days writing a diary on his cellphone, while conversing with his two seemingly imaginary friends Deus Ex Machina, who is the god of time and space, and Murmur, the god\'s servant. Revealing himself to be an actual entity, Deus grants Yukiteru a \"Random Diary,\" which shows highly descriptive entries based on the future and forces him into a bloody battle royale with 11 other holders of similarly powerful future diaries.\r\n\r\nWith the last person standing designated as the new god of time and space, Yukiteru must find and kill the other 11 in order to survive. He reluctantly teams up with his obsessive stalker Yuno Gasai (who also possesses such a diary), and she takes it upon herself to ensure his safety. But there\'s more to the girl than meets the eye, as she might have other plans for her unrequited love...','24','7.50','5.jpg','Sabtu','Comedy'),
(6,'Pokemon','Ongoing','Pokemon are peculiar creatures with a vast array of different abilities and appearances; many people, known as Pokemon trainers, capture and train them, often with the intent of battling others. Young Satoshi has not only dreamed of becoming a Pokemon trainer but also a \"Pokemon Master,\" and on the arrival of his 10th birthday, he finally has a chance to make that dream a reality. Unfortunately for him, all three Pokemon available to beginning trainers have already been claimed and only Pikachu, a rebellious Electric type Pokemon, remains. However, this chance encounter would mark the start of a lifelong friendship and an epic adventure!\r\n\r\nSetting off on a journey to become the very best, Satoshi and Pikachu travel across beautiful, sprawling regions with their friends Kasumi, a Water type trainer, and Takeshi, a Rock type trainer. But danger lurks around every corner. The infamous Team Rocket is always nearby, seeking to steal powerful Pokemon through nefarious schemes. It\'ll be up to Satoshi and his friends to thwart their efforts as he also strives to earn the eight Pokemon Gym Badges he\'ll need to challenge the Pokemon League, and eventually claim the title of Pokemon Master. ','50','7.25','6.jpg','Minggu','Comedy'),
(7,'BAKI',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `anime_perepisode` */

DROP TABLE IF EXISTS `anime_perepisode`;

CREATE TABLE `anime_perepisode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail` varchar(50) DEFAULT NULL,
  `episode` varchar(10) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `jadwal_rilis` varchar(11) DEFAULT NULL,
  `deskripsi` text,
  `link_download` varchar(250) DEFAULT NULL,
  `anime_id` int(11) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `waktu_rilis` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `anime_perepisode` */

insert  into `anime_perepisode`(`id`,`thumbnail`,`episode`,`judul`,`jadwal_rilis`,`deskripsi`,`link_download`,`anime_id`,`username`,`waktu_rilis`) values 
(3,'1.png','1','Boku No Hero Academia','Senin','Midoriya Izuku hanya seorang siswa biasa yang hidup di dunia dimana banyak orang memiliki kekuatan super yang disebut dengan “Quirk” (Kosei). Meskipun tidak memiliki kekuatan super, namun ia bermimpi suatu hari nanti bisa menjadi hero (pahlawan). Suatu ketika, saat ia berusaha menyelamatkan temannya dari seorang Villain, seorang pahlawan terkuat bernama All Might memberikan kekuatan padanya. Setelah kejadian itu, Izuku melanjutkan sekolah di SMA Yuuei, sebuah sekolah khusus yang mendidik para calon hero masa depan.',NULL,1,'Arnal','2018-12-11 03:23:26'),
(4,'2.png','1','Shokugeki No Shouma','Selasa','Ever since he was a child, fifteen-year-old Souma Yukihira has helped his father by working as the sous chef in the restaurant his father runs and owns. Throughout the years, Souma developed a passion for entertaining his customers with his creative, skilled, and daring culinary creations. His dream is to someday own his family\'s restaurant as its head chef.\r\n\r\nYet when his father suddenly decides to close the restaurant to test his cooking abilities in restaurants around the world, he sends Souma to Tootsuki Culinary Academy, an elite cooking school where only 10 percent of the students graduate. The institution is famous for its \"Shokugeki\" or \"food wars,\" where students face off in intense, high-stakes cooking showdowns.\r\n\r\nAs Souma and his new schoolmates struggle to survive the extreme lifestyle of Tootsuki, more and greater challenges await him, putting his years of learning under his father to the test.',NULL,2,'Arnal','2018-12-09 03:23:39'),
(5,'3.png','1','Overlord','Rabu','The final hour of the popular virtual reality game Yggdrasil has come. However, Momonga, a powerful wizard and master of the dark guild Ainz Ooal Gown, decides to spend his last few moments in the game as the servers begin to shut down. To his surprise, despite the clock having struck midnight, Momonga is still fully conscious as his character and, moreover, the non-player characters appear to have developed personalities of their own!\r\n\r\nConfronted with this abnormal situation, Momonga commands his loyal servants to help him investigate and take control of this new world, with the hopes of figuring out what has caused this development and if there may be others in the same predicament.',NULL,3,'Arnal','2018-09-01 23:23:52'),
(6,'4.png','1','Grand Blue','Kamis','Among the seaside town of Izu\'s ocean waves and rays of shining sun, Iori Kitahara is just beginning his freshman year at Izu University. As he moves into his uncle\'s scuba diving shop, Grand Blue, he eagerly anticipates his dream college life, filled with beautiful girls and good friends.\r\n\r\nBut things don\'t exactly go according to plan. Upon entering the shop, he encounters a group of rowdy, naked upperclassmen, who immediately coerce him into participating in their alcoholic activities. Though unwilling at first, Iori quickly gives in and becomes the heart and soul of the party. Unfortunately, this earns him the scorn of his cousin, Chisa Kotegawa, who walks in at precisely the wrong time. Undeterred, Iori still vows to realize his ideal college life, but will things go according to plan this time, or will his situation take yet another dive? \r\n\r\n[Written by MAL Rewrite]',NULL,4,'Arnal','2018-12-12 03:29:20'),
(7,'5.png','1','Mirai Nikki','Jumat','Lonely high school student, Yukiteru Amano, spends his days writing a diary on his cellphone, while conversing with his two seemingly imaginary friends Deus Ex Machina, who is the god of time and space, and Murmur, the god\'s servant. Revealing himself to be an actual entity, Deus grants Yukiteru a \"Random Diary,\" which shows highly descriptive entries based on the future and forces him into a bloody battle royale with 11 other holders of similarly powerful future diaries.\r\n\r\nWith the last person standing designated as the new god of time and space, Yukiteru must find and kill the other 11 in order to survive. He reluctantly teams up with his obsessive stalker Yuno Gasai (who also possesses such a diary), and she takes it upon herself to ensure his safety. But there\'s more to the girl than meets the eye, as she might have other plans for her unrequited love...',NULL,5,'Arnal','2018-12-26 03:29:23'),
(8,'6.png','1','Pokemon','Sabtu','Pokemon are peculiar creatures with a vast array of different abilities and appearances; many people, known as Pokemon trainers, capture and train them, often with the intent of battling others. Young Satoshi has not only dreamed of becoming a Pokemon trainer but also a \"Pokemon Master,\" and on the arrival of his 10th birthday, he finally has a chance to make that dream a reality. Unfortunately for him, all three Pokemon available to beginning trainers have already been claimed and only Pikachu, a rebellious Electric type Pokemon, remains. However, this chance encounter would mark the start of a lifelong friendship and an epic adventure!\r\n\r\nSetting off on a journey to become the very best, Satoshi and Pikachu travel across beautiful, sprawling regions with their friends Kasumi, a Water type trainer, and Takeshi, a Rock type trainer. But danger lurks around every corner. The infamous Team Rocket is always nearby, seeking to steal powerful Pokemon through nefarious schemes. It\'ll be up to Satoshi and his friends to thwart their efforts as he also strives to earn the eight Pokemon Gym Badges he\'ll need to challenge the Pokemon League, and eventually claim the title of Pokemon Master. ',NULL,6,'Arnal','2018-11-28 03:29:25');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
