-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema evoting_ms
--

CREATE DATABASE IF NOT EXISTS evoting_ms;
USE evoting_ms;

--
-- Definition of table `add_candidate`
--

DROP TABLE IF EXISTS `add_candidate`;
CREATE TABLE `add_candidate` (
  `candidate_id` int(11) NOT NULL auto_increment,
  `mark_id` int(11) NOT NULL,
  `candidate_name` varchar(45) NOT NULL,
  `candidate_image` varchar(45) NOT NULL,
  PRIMARY KEY  (`candidate_id`),
  KEY `FK_4al3e5b5qiamr0kmaes0sd4ct` (`mark_id`),
  CONSTRAINT `FK_4al3e5b5qiamr0kmaes0sd4ct` FOREIGN KEY (`mark_id`) REFERENCES `mark` (`mark_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_candidate`
--

/*!40000 ALTER TABLE `add_candidate` DISABLE KEYS */;
/*!40000 ALTER TABLE `add_candidate` ENABLE KEYS */;


--
-- Definition of table `add_candidate1`
--

DROP TABLE IF EXISTS `add_candidate1`;
CREATE TABLE `add_candidate1` (
  `candidate_id` int(11) NOT NULL auto_increment,
  `mark_name` varchar(45) NOT NULL,
  `candidate_name` varchar(45) NOT NULL,
  `candidate_image` varchar(45) NOT NULL,
  PRIMARY KEY  (`candidate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_candidate1`
--

/*!40000 ALTER TABLE `add_candidate1` DISABLE KEYS */;
INSERT INTO `add_candidate1` (`candidate_id`,`mark_name`,`candidate_name`,`candidate_image`) VALUES 
 (1,'Book','Ridwan','Chrysanthemum.jpg'),
 (4,'Pen','Ridwan2','Jellyfish.jpg'),
 (5,'Mango','Ridwan3','Hydrangeas.jpg');
/*!40000 ALTER TABLE `add_candidate1` ENABLE KEYS */;


--
-- Definition of table `add_voter`
--

DROP TABLE IF EXISTS `add_voter`;
CREATE TABLE `add_voter` (
  `voter_id` int(11) NOT NULL,
  `voter_name` varchar(45) NOT NULL,
  PRIMARY KEY  (`voter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_voter`
--

/*!40000 ALTER TABLE `add_voter` DISABLE KEYS */;
INSERT INTO `add_voter` (`voter_id`,`voter_name`) VALUES 
 (4,'df'),
 (5,'israt '),
 (7,'ton'),
 (12,'Robin'),
 (45,'Rahim'),
 (78,'tran');
/*!40000 ALTER TABLE `add_voter` ENABLE KEYS */;


--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL auto_increment,
  `admin_name` varchar(45) NOT NULL,
  `admin_password` varchar(45) NOT NULL,
  PRIMARY KEY  (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`admin_id`,`admin_name`,`admin_password`) VALUES 
 (1,'admin','1234');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `mark`
--

DROP TABLE IF EXISTS `mark`;
CREATE TABLE `mark` (
  `mark_id` int(11) NOT NULL auto_increment,
  `mark_name` varchar(45) NOT NULL,
  PRIMARY KEY  (`mark_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark`
--

/*!40000 ALTER TABLE `mark` DISABLE KEYS */;
INSERT INTO `mark` (`mark_id`,`mark_name`) VALUES 
 (1,'Book'),
 (2,'Pen'),
 (3,'Mango'),
 (4,'');
/*!40000 ALTER TABLE `mark` ENABLE KEYS */;


--
-- Definition of table `voting`
--

DROP TABLE IF EXISTS `voting`;
CREATE TABLE `voting` (
  `voter_id` int(11) NOT NULL,
  `mark_id` int(11) NOT NULL,
  PRIMARY KEY  (`voter_id`),
  KEY `FK_qpf5q47og4gahpfcpxve7u1fv` (`mark_id`),
  CONSTRAINT `FK_qpf5q47og4gahpfcpxve7u1fv` FOREIGN KEY (`mark_id`) REFERENCES `mark` (`mark_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voting`
--

/*!40000 ALTER TABLE `voting` DISABLE KEYS */;
INSERT INTO `voting` (`voter_id`,`mark_id`) VALUES 
 (45,1),
 (78,1),
 (7,3),
 (12,3),
 (4,4),
 (5,4);
/*!40000 ALTER TABLE `voting` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
