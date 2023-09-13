-- MariaDB dump 10.19-11.1.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	11.1.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES
(1,'John','Doe','New York','123 Main St','john.doe@example.com','123-456-7890','10001','USA'),
(2,'Jane','Smith','Los Angeles','456 Elm St','jane.smith@example.com','987-654-3210','90001','USA'),
(3,'Alice','Johnson','Chicago','789 Oak St','alice.johnson@example.com','555-555-5555','60601','USA'),
(4,'Bob','Williams','Houston','567 Pine St','bob.williams@example.com','111-222-3333','77001','USA'),
(5,'Eva','Martin','Miami','234 Beach Rd','eva.martin@example.com','777-888-9999','33101','USA'),
(6,'Kwesi','Amissah-Arthur','Cape Coast','Pedu Rd','kwesi.arthur@example.com','233-244-567890','00233','Ghana'),
(7,'Isabel','Dos Santos','Luanda','Miramar','isabel.dos.santos@example.com','244-926-123456','1000','Angola'),
(8,'Idriss','Déby','NDjamena','Presidential Palace','idriss.deby@example.com','235-662-111222','01 BP 109','Chad'),
(9,'Marc','Ravalomanana','Antananarivo','Iavoloha','marc.ravalomanana@example.com','261-20-1234567','101','Madagascar'),
(10,'Ntsay','Christian','Antananarivo','Ambohitsorohitra','christian.ntsay@example.com','261-20-9876543','101','Madagascar'),
(11,'Jean','Rajaonarimampianina','Antananarivo','Iavoloha','jean.rajaonarimampianina@example.com','261-20-5555555','101','Madagascar'),
(12,'Andry','Rajoelina','Antananarivo','Ambohitsorohitra','andry.rajoelina@example.com','261-20-7777777','101','Madagascar'),
(13,'Hery','Rajaonarimampianina','Antananarivo','Iavoloha','hery.rajaonarimampianina@example.com','261-20-8888888','101','Madagascar'),
(14,'Didier','Ratsiraka','Toamasina','Toamasina I','didier.ratsiraka@example.com','261-53-1234567','501','Madagascar'),
(15,'Kwame','Nkrumah','Accra','1 Independence Ave','kwame.nkrumah@example.com','233-244-123456','GA1','Ghana'),
(16,'Nelson','Mandela','Johannesburg','46664 Vilakazi St','nelson.mandela@example.com','27-123-456789','2000','South Africa'),
(17,'Haile','Selassie','Addis Ababa','Imperial Palace','haile.selassie@example.com','251-911-987654','1000','Ethiopia'),
(18,'Wangari','Maathai','Nairobi','Karura Forest','wangari.maathai@example.com','254-722-555555','00100','Kenya'),
(19,'Léopold','Sédar Senghor','Dakar','Avenue Léopold Sédar Senghor','leopold.senghor@example.com','221-777-111222','BP 98','Senegal');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordered_at` datetime DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
;
INSERT INTO `orders` VALUES
(21,'2023-08-01 10:00:00','2023-08-02 15:00:00',1450,1),
(22,'2023-08-02 11:30:00','2023-08-03 14:45:00',200,2),
(23,'2023-08-03 09:15:00','2023-08-04 12:30:00',50,3),
(24,'2023-08-04 13:00:00','2023-08-05 16:15:00',30320,4),
(25,'2023-08-05 14:30:00','2023-08-06 18:30:00',100,5),
(26,'2023-08-06 10:45:00','2023-08-07 13:45:00',725,6),
(27,'2023-08-07 12:00:00','2023-08-08 15:15:00',2240,7),
(28,'2023-08-08 08:15:00','2023-08-09 11:30:00',180,8),
(29,'2023-08-09 14:00:00','2023-08-10 17:30:00',9054,9),
(30,'2023-08-10 09:30:00','2023-08-11 12:45:00',120,10),
(31,'2023-08-11 11:45:00','2023-08-12 14:30:00',2350,11),
(32,'2023-08-12 13:30:00','2023-08-13 16:15:00',7450,12),
(33,'2023-08-13 15:00:00','2023-08-14 18:30:00',180,13),
(34,'2023-08-14 10:15:00','2023-08-15 13:45:00',160,14),
(35,'2023-08-15 12:30:00','2023-08-16 15:15:00',9540,15),
(36,'2023-08-16 08:45:00','2023-08-17 11:30:00',200,16),
(37,'2023-08-17 14:15:00','2023-08-18 17:30:00',1310,17),
(38,'2023-08-18 09:00:00','2023-08-19 12:45:00',130,18),
(39,'2023-08-19 10:45:00','2023-08-20 13:30:00',750,19),
(40,'2023-08-20 13:30:00','2023-08-21 16:15:00',2050,10),
(41,'2023-08-21 10:00:00','2023-08-22 15:00:00',130,11),
(42,'2023-08-22 11:30:00','2023-08-23 14:45:00',180,12),
(43,'2023-08-23 09:15:00','2023-08-24 12:30:00',90,13),
(44,'2023-08-24 13:00:00','2023-08-25 16:15:00',300,14),
(45,'2023-08-25 14:30:00','2023-08-26 18:30:00',120,5),
(46,'2023-08-26 10:45:00','2023-08-27 13:45:00',100,8),
(47,'2023-08-27 12:00:00','2023-08-28 15:15:00',220,6),
(48,'2023-08-28 08:15:00','2023-08-29 11:30:00',140,6),
(49,'2023-08-29 14:00:00','2023-08-30 17:30:00',160,2),
(50,'2023-08-30 09:30:00','2023-08-31 12:45:00',110,10);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-13 22:29:43
