/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.18-log : Database - movies_portal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`movies_portal` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `movies_portal`;

/*Table structure for table `genre` */

DROP TABLE IF EXISTS `genre`;

CREATE TABLE `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `genre` */

insert  into `genre`(`id`,`name`) values (1,'Drama'),(3,'Melodrama'),(11,'Sport'),(12,'Thriller'),(13,'Horror'),(14,'Western'),(15,'Fantasy'),(16,'Documentary'),(17,'Comedy'),(18,'Action'),(19,'Adventure'),(20,'Biography');

/*Table structure for table `movie` */

DROP TABLE IF EXISTS `movie`;

CREATE TABLE `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `picUrl` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `movie` */

insert  into `movie`(`id`,`title`,`description`,`created_date`,`picUrl`,`year`,`director`) values (10,'Venom','A failed reporter is bonded to an alien entity, one of many entities who have invaded Earth. But the entity takes a liking to Earth and decides to protect it.','2019-02-26 12:07:49','1551125269897_MV5BNzAwNzUzNjY4MV5BMl5BanBnXkFtZTgwMTQ5MzM0NjM@._V1_.jpg',2018,'Ruben Fleischer'),(11,'Avengers: Infinity War','The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.','2019-02-26 12:10:42','1551125442721_MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_SY1000_CR0,0,674,1000_AL_.jpg',2018,'Anthony Russo, Joe Russo'),(12,'Titanic','A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.','2019-02-26 12:14:00','1551125640715_MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SY1000_CR0,0,671,1000_AL_.jpg',1997,'James Cameron'),(13,'Avatar','A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.','2019-02-26 12:16:42','1551125802059_MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_.jpg',2009,'James Cameron'),(14,'The Martian','An astronaut becomes stranded on Mars after his team assume him dead, and must rely on his ingenuity to find a way to signal to Earth that he is alive.','2019-02-26 12:19:07','1551125947164_MV5BMTc2MTQ3MDA1Nl5BMl5BanBnXkFtZTgwODA3OTI4NjE@._V1_SY1000_CR0,0,675,1000_AL_.jpg',2015,'Ridley Scott'),(15,'The Revenant','A frontiersman on a fur trading expedition in the 1820s fights for survival after being mauled by a bear and left for dead by members of his own hunting team.','2019-02-26 12:21:15','1551126075355_MV5BMDE5OWMzM2QtOTU2ZS00NzAyLWI2MDEtOTRlYjIxZGM0OWRjXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_SX672_CR0,0,672,999_AL_.jpg',2015,'Alejandro G. IÃ±Ã¡rritu'),(16,'Grown Ups','After their high school basketball coach passes away, five good friends and former teammates reunite for a Fourth of July holiday weekend.','2019-02-26 12:25:09','1551126309679_MV5BMjA0ODYwNzU5Nl5BMl5BanBnXkFtZTcwNTI1MTgxMw@@._V1_SY1000_CR0,0,674,1000_AL_.jpg',2010,'Dennis Dugan'),(17,'Split','Three girls are kidnapped by a man with a diagnosed 23 distinct personalities. They must try to escape before the apparent emergence of a frightful new 24th.','2019-02-26 12:29:19','1551126559244_MV5BZTJiNGM2NjItNDRiYy00ZjY0LTgwNTItZDBmZGRlODQ4YThkL2ltYWdlXkEyXkFqcGdeQXVyMjY5ODI4NDk@._V1_SY1000_CR0,0,675,1000_AL_.jpg',2016,'M. Night Shyamalan'),(18,'Rocky','A small-time boxer gets a supremely rare chance to fight a heavy-weight champion in a bout in which he strives to go the distance for his self-respect.','2019-02-26 12:33:02','1551126782899_MV5BMTY5MDMzODUyOF5BMl5BanBnXkFtZTcwMTQ3NTMyNA@@._V1_SY1000_CR0,0,666,1000_AL_.jpg',1976,'Sylvester Stallone');

/*Table structure for table `movie_genre` */

DROP TABLE IF EXISTS `movie_genre`;

CREATE TABLE `movie_genre` (
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`,`genre_id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  CONSTRAINT `movie_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `movie_genre` */

insert  into `movie_genre`(`movie_id`,`genre_id`) values (12,1),(14,1),(18,1),(12,3),(18,11),(10,12),(17,12),(17,13),(11,15),(13,15),(16,16),(16,17),(10,18),(11,18),(13,18),(15,18),(11,19),(13,19),(14,19),(15,19),(15,20);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`surname`,`email`,`password`) values (1,'admin','admin','admin','admin');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
