CREATE DATABASE IF NOT EXISTS `tutorial5`;
USE `tutorial5`;
DROP TABLE IF EXISTS `shopping_list`;

--
-- Table structure for table `shopping_list`
--

CREATE TABLE `shopping_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `quantity` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
INSERT INTO `shopping_list` VALUES (1,'oranages',0.80,6.00),(2,'milk',2.80,2.00),(3,'cheese',2.40,1.00);


CREATE DATABASE  IF NOT EXISTS `customer_orders` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `customer_orders`;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_address` varchar(100) NOT NULL,
  `customer_city` varchar(45) NOT NULL,
  `customer_state` varchar(45) NOT NULL,
  `customer_postal_code` varchar(10) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Myra Parker','666-7336 Dictum Rd.','Wilmington','Delaware','39349'),(2,'Sheila Munoz','8343 Sed, Avenue','Springdale','Arkansas','71576'),(3,'Noel Wise','Ap #759-5839 Eu Av.','Richmond','Virginia','31290'),(4,'Desiree Joseph','158-6122 Sed Street','Fayetteville','Arkansas','71010'),(5,'Kane Best','P.O. Box 880, 1306 Est St.','Salt Lake City','Utah','36752'),(6,'Cathleen Ashley','725-8538 Faucibus Avenue','Tacoma','Washington','53993'),(7,'Chaney Slater','P.O. Box 623, 3568 Et, Rd.','Cedar Rapids','Iowa','65480'),(8,'Lysandra Flynn','9125 Sit Av.','Miami','Florida','15824'),(9,'Kaitlin Green','935-8140 Mauris Rd.','Laramie','Wyoming','62886'),(10,'Bertha Moss','725-3034 Sagittis Street','Fort Collins','Colorado','77572'),(11,'Xantha Villarreal','665-4044 Molestie. St.','Sterling Heights','Michigan','78540'),(12,'Tamara Weiss','P.O. Box 515, 6679 Lectus. St.','Philadelphia','Pennsylvania','89537'),(13,'Fletcher Buck','P.O. Box 378, 3334 Blandit Ave','Annapolis','Maryland','50012'),(14,'Kiara Holder','Ap #241-7931 Curabitur Av.','Green Bay','Wisconsin','87703'),(15,'Kyra Lane','137-2342 Hendrerit Rd.','Wilmington','Delaware','15956'),(16,'Idona Cannon','287-5688 Diam. Av.','Duluth','Minnesota','48135'),(17,'Wallace Cotton','Ap #445-2733 Mauris Av.','Provo','Utah','48895'),(18,'Hamilton Kane','169-632 Luctus. Ave','Wilmington','Delaware','76951'),(19,'Xanthus Leon','296 Ultricies Rd.','Eugene','Oregon','77211'),(20,'Plato Wilson','700-7422 Morbi Av.','Rockford','Illinois','35494'),(21,'Sylvester Kent','P.O. Box 465, 6666 Lobortis St.','Montpelier','Vermont','30325'),(22,'Lucas Burt','Ap #179-853 Ipsum. Ave','Cedar Rapids','Iowa','67813'),(23,'Ramona Hart','P.O. Box 135, 4538 Egestas Road','Topeka','Kansas','80009'),(24,'Harper Burton','6351 Nec Ave','Pike Creek','Delaware','11798'),(25,'Gareth Case','Ap #547-816 Elit Street','Baton Rouge','Louisiana','83349'),(26,'Duncan Glover','892-8565 Erat. Street','Little Rock','Arkansas','72198'),(27,'Athena Quinn','Ap #380-6946 In Rd.','Provo','Utah','58767'),(28,'Ignatius Hoffman','P.O. Box 485, 8392 Gravida St.','Jackson','Mississippi','33017'),(29,'Judah Stanton','P.O. Box 256, 5147 Pretium Rd.','Joliet','Illinois','87080'),(30,'Shaeleigh Vazquez','Ap #772-1739 Praesent St.','Augusta','Georgia','34982'),(31,'Cole Brady','P.O. Box 315, 1006 Commodo Street','Fairbanks','Alaska','99755'),(32,'Ursa Wiley','Ap #265-3411 Lobortis Avenue','Milwaukee','Wisconsin','75300'),(33,'Xantha Booker','421-6064 Justo Rd.','Boise','Idaho','20203'),(34,'Cally Henderson','8227 Rhoncus. Rd.','Juneau','Alaska','99678'),(35,'Forrest Nunez','P.O. Box 258, 588 Tortor. Road','Springfield','Illinois','27496'),(36,'Emma Ware','7843 Dui. St.','Honolulu','Hawaii','25554'),(37,'Cody Wyatt','Ap #260-4578 Turpis Street','Racine','Wisconsin','78490'),(38,'Adele Mccall','320-4278 Laoreet, Rd.','Nashville','Tennessee','82600'),(39,'Patricia Mooney','2543 Nunc Road','Montpelier','Vermont','12538'),(40,'Murphy Perkins','5064 Suspendisse Road','Fresno','California','92408'),(41,'Joy Fleming','Ap #369-4004 Eros Rd.','Kaneohe','Hawaii','68637'),(42,'Jonah Jensen','310-6175 Vulputate Av.','Waterbury','Connecticut','99869'),(43,'Germaine Myers','Ap #308-7558 Neque Street','Cambridge','Massachusetts','58519'),(44,'Mikayla Hamilton','2416 Sed, Street','Glendale','Arizona','86245'),(45,'Illana Petty','P.O. Box 880, 2928 Quis, Av.','Waterbury','Connecticut','51519'),(46,'Faith Fields','5844 Amet Rd.','Birmingham','Alabama','35702'),(47,'Yoshi Dudley','Ap #806-2718 Dignissim Rd.','Memphis','Tennessee','74982'),(48,'Kadeem Nixon','592-4223 Odio Road','Gaithersburg','Maryland','76922'),(49,'McKenzie Sweeney','290-7145 Dui. Av.','Independence','Missouri','21810'),(50,'Britanney Huffman','231-560 Mi Rd.','Lincoln','Nebraska','92675'),(51,'Sade Roman','6687 Sem, St.','Virginia Beach','Virginia','50038'),(52,'Emma Reeves','213-1682 At, Ave','Stamford','Connecticut','79508'),(53,'Buckminster Rich','701-787 Nibh. Av.','Richmond','Virginia','65536'),(54,'Hermione Clements','Ap #254-1996 Ridiculus Road','Nashville','Tennessee','46784'),(55,'Ebony Dunn','850 Malesuada Rd.','Boise','Idaho','22799'),(56,'Sebastian Gonzales','2311 Varius St.','Bellevue','Nebraska','88021'),(57,'Carissa Callahan','3165 Egestas. St.','Racine','Wisconsin','35447'),(58,'Quyn Henson','815-4758 Eu Rd.','Lowell','Massachusetts','47919'),(59,'Pearl Valentine','P.O. Box 865, 3894 Aliquam St.','Denver','Colorado','99545'),(60,'Nigel Perez','7739 Eget, Rd.','Chattanooga','Tennessee','54777'),(61,'Vivien Gill','Ap #847-9936 Phasellus Rd.','Anchorage','Alaska','99505'),(62,'Clarke Russell','P.O. Box 635, 7638 Sed Rd.','Chicago','Illinois','63724'),(63,'Fulton Nieves','Ap #401-3669 Ut Ave','Sandy','Utah','61892'),(64,'Ava Forbes','Ap #866-6146 Primis St.','Rochester','Minnesota','70287'),(65,'Hollee Pierce','1847 Feugiat Avenue','Kansas City','Missouri','25340'),(66,'Hedley Tran','Ap #447-3301 Donec St.','Gillette','Wyoming','49675'),(67,'Stella Sexton','433-5846 Phasellus Rd.','Colchester','Vermont','42755'),(68,'David Gallagher','531-4352 Vestibulum. Av.','Duluth','Minnesota','63219'),(69,'Leandra Sherman','9487 Ut Rd.','Rockville','Maryland','65347'),(70,'Lunea Vance','356 Cursus St.','Burlington','Vermont','56614'),(71,'Remedios Ortiz','530-2250 Lobortis, Road','Rutland','Vermont','99486'),(72,'Graham Hernandez','Ap #204-6169 Tincidunt St.','Vancouver','Washington','20183'),(73,'Kiara Arnold','Ap #629-3317 Vulputate Avenue','Augusta','Maine','32342'),(74,'Whitney Davis','P.O. Box 978, 9262 Augue Rd.','Broken Arrow','Oklahoma','49481'),(75,'Medge Sanford','992-9467 Nisi St.','Honolulu','Hawaii','79028'),(76,'Tucker Webster','Ap #783-4751 Condimentum St.','Dallas','Texas','37923'),(77,'Dalton Hull','916-5123 Auctor Street','Harrisburg','Pennsylvania','67736'),(78,'Wyatt Fox','Ap #749-305 Sed, Rd.','Mobile','Alabama','35279'),(79,'Knox Thompson','P.O. Box 781, 1336 Adipiscing Ave','Sacramento','California','94653'),(80,'Harrison Dennis','4096 Mauris Road','Idaho Falls','Idaho','43020'),(81,'Carter Alford','Ap #599-9896 Vitae, Av.','Tulsa','Oklahoma','18799'),(82,'Carissa Randall','7275 Vulputate Avenue','Gulfport','Mississippi','39659'),(83,'Dean Weber','966-8614 Pede. Rd.','Naperville','Illinois','42080'),(84,'Yardley Harper','P.O. Box 998, 7053 Donec St.','Anchorage','Alaska','99911'),(85,'Ciara Campbell','Ap #664-9863 Nisi St.','Salt Lake City','Utah','12811'),(86,'Camilla Pate','703-8242 Magnis Rd.','Richmond','Virginia','18787'),(87,'Sean Yates','P.O. Box 186, 2889 Pellentesque. Road','Bellevue','Nebraska','61073'),(88,'Garth Jarvis','386-4968 Tristique Av.','Chicago','Illinois','40998'),(89,'Duncan Trevino','5391 Odio Rd.','Henderson','Nevada','70003'),(90,'Tarik Bass','Ap #580-4456 Ante, Ave','Biloxi','Mississippi','37630'),(91,'Hanna Andrews','P.O. Box 652, 8176 Ultrices Avenue','Boise','Idaho','26114'),(92,'Mara Cunningham','Ap #581-8604 Eget Ave','Miami','Florida','29412'),(93,'John Higgins','Ap #259-9879 Dolor. Ave','Milwaukee','Wisconsin','61315'),(94,'Joseph Wright','333-7622 Et, Rd.','Grand Island','Nebraska','43792'),(95,'Cyrus Collier','P.O. Box 752, 5740 Nisi. Rd.','Green Bay','Wisconsin','59201'),(96,'Evan Franks','P.O. Box 498, 7339 Pede Av.','Tallahassee','Florida','29687'),(97,'Maite Rodriquez','Ap #693-9514 Velit Rd.','Kapolei','Hawaii','89293'),(98,'Boris Mayo','P.O. Box 592, 496 Elit Avenue','Fort Wayne','Indiana','80329'),(99,'Veda Austin','Ap #391-5824 Massa. Street','Chandler','Arizona','86592'),(100,'Rose Sears','8936 Eu, Street','Juneau','Alaska','99562');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_fk_idx` (`customer_id`),
  CONSTRAINT `customer_fk` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'2016-11-19 00:00:00',50),(2,'2016-03-10 00:00:00',64),(3,'2017-01-09 00:00:00',57),(4,'2015-12-23 00:00:00',23),(5,'2016-07-13 00:00:00',21),(6,'2017-07-07 00:00:00',87),(7,'2016-05-05 00:00:00',20),(8,'2017-04-14 00:00:00',25),(9,'2016-09-02 00:00:00',30),(10,'2016-05-12 00:00:00',37),(11,'2017-05-16 00:00:00',26),(12,'2016-02-26 00:00:00',54),(13,'2016-08-13 00:00:00',22),(14,'2016-04-17 00:00:00',93),(15,'2015-11-19 00:00:00',88),(16,'2017-07-11 00:00:00',91),(17,'2016-06-30 00:00:00',98),(18,'2017-07-06 00:00:00',51),(19,'2017-04-09 00:00:00',89),(20,'2017-05-29 00:00:00',50),(21,'2015-12-19 00:00:00',98),(22,'2016-11-11 00:00:00',94),(23,'2015-11-10 00:00:00',34),(24,'2016-07-24 00:00:00',17),(25,'2016-01-11 00:00:00',26),(26,'2015-11-19 00:00:00',18),(27,'2016-10-11 00:00:00',89),(28,'2016-10-18 00:00:00',28),(29,'2017-02-23 00:00:00',48),(30,'2016-12-25 00:00:00',47),(31,'2016-12-17 00:00:00',91),(32,'2017-05-14 00:00:00',62),(33,'2017-04-21 00:00:00',81),(34,'2016-10-27 00:00:00',21),(35,'2016-06-21 00:00:00',5),(36,'2017-05-16 00:00:00',79),(37,'2016-02-05 00:00:00',55),(38,'2017-10-19 00:00:00',66),(39,'2015-11-11 00:00:00',21),(40,'2016-06-04 00:00:00',85),(41,'2017-09-17 00:00:00',81),(42,'2017-01-22 00:00:00',70),(43,'2016-11-16 00:00:00',27),(44,'2017-08-29 00:00:00',39),(45,'2016-06-29 00:00:00',49),(46,'2017-01-21 00:00:00',44),(47,'2016-05-06 00:00:00',60),(48,'2016-08-17 00:00:00',11),(49,'2016-05-02 00:00:00',90),(50,'2017-04-17 00:00:00',44),(51,'2017-01-07 00:00:00',43),(52,'2016-02-05 00:00:00',70),(53,'2016-09-08 00:00:00',79),(54,'2017-01-07 00:00:00',30),(55,'2016-12-03 00:00:00',49),(56,'2015-12-23 00:00:00',61),(57,'2016-10-12 00:00:00',79),(58,'2015-12-14 00:00:00',66),(59,'2016-11-28 00:00:00',49),(60,'2017-07-24 00:00:00',91),(61,'2016-03-15 00:00:00',29),(62,'2017-02-24 00:00:00',20),(63,'2017-09-06 00:00:00',29),(64,'2017-03-08 00:00:00',65),(65,'2016-02-01 00:00:00',51),(66,'2016-06-29 00:00:00',10),(67,'2016-12-21 00:00:00',17),(68,'2016-03-21 00:00:00',24),(69,'2016-12-03 00:00:00',25),(70,'2016-06-23 00:00:00',4),(71,'2016-12-18 00:00:00',12),(72,'2016-04-29 00:00:00',52),(73,'2017-02-23 00:00:00',86),(74,'2017-04-06 00:00:00',45),(75,'2017-06-01 00:00:00',62),(76,'2017-04-30 00:00:00',65),(77,'2017-06-27 00:00:00',35),(78,'2017-10-12 00:00:00',74),(79,'2016-03-03 00:00:00',31),(80,'2016-10-13 00:00:00',20),(81,'2016-03-16 00:00:00',51),(82,'2017-09-30 00:00:00',57),(83,'2017-08-04 00:00:00',38),(84,'2016-06-13 00:00:00',10),(85,'2016-03-16 00:00:00',52),(86,'2016-12-29 00:00:00',3),(87,'2016-03-12 00:00:00',100),(88,'2016-01-18 00:00:00',45),(89,'2015-12-22 00:00:00',19),(90,'2017-02-26 00:00:00',91),(91,'2017-05-15 00:00:00',68),(92,'2016-03-18 00:00:00',82),(93,'2017-10-13 00:00:00',43),(94,'2016-04-19 00:00:00',12),(95,'2016-03-28 00:00:00',33),(96,'2016-10-21 00:00:00',17),(97,'2017-03-16 00:00:00',9),(98,'2017-09-24 00:00:00',72),(99,'2016-10-18 00:00:00',97),(100,'2016-05-03 00:00:00',7);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_line`
--

DROP TABLE IF EXISTS `order_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_line` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `ordered_quantity` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `product_fk_idx` (`product_id`),
  CONSTRAINT `order_fk` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `product_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_line`
--

LOCK TABLES `order_line` WRITE;
/*!40000 ALTER TABLE `order_line` DISABLE KEYS */;
INSERT INTO `order_line` VALUES (1,7,10),(2,3,5),(3,4,2),(4,9,9),(4,10,3),(5,3,9),(6,9,7),(8,8,8),(9,9,7),(11,6,4),(15,6,6),(16,7,5),(16,10,1),(17,2,2),(17,3,3),(17,10,9),(18,2,7),(18,7,1),(19,2,4),(21,3,5),(22,5,10),(22,10,1),(23,4,6),(24,2,10),(25,3,4),(25,8,7),(26,2,6),(27,3,3),(27,4,6),(28,7,5),(29,9,8),(30,1,2),(30,2,5),(30,5,3),(32,3,7),(32,8,4),(32,10,8),(35,1,2),(35,6,10),(35,9,9),(37,3,7),(38,2,8),(38,8,7),(40,4,10),(45,2,9),(48,2,1),(48,6,6),(48,9,2),(49,9,5),(50,5,7),(51,10,6),(52,6,7),(55,6,2),(56,2,3),(56,9,8),(57,1,5),(58,6,9),(58,8,8),(59,5,5),(59,6,3),(59,8,5),(61,4,9),(61,5,7),(61,9,5),(62,8,9),(63,4,3),(64,2,3),(64,6,4),(64,9,2),(65,4,9),(66,7,8),(67,6,6),(68,5,3),(70,4,7),(71,2,9),(71,3,8),(71,10,5),(72,7,2),(73,2,8),(74,2,2),(74,8,8),(75,2,2),(75,3,2),(77,9,10),(78,9,1),(79,6,1),(80,1,5),(80,9,5),(81,2,9),(81,8,7),(85,4,3),(86,7,1),(90,2,1),(90,3,10),(92,3,1),(95,10,8),(97,9,9),(98,1,5),(100,9,8),(100,10,3);
/*!40000 ALTER TABLE `order_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_description` varchar(45) NOT NULL,
  `product_finish` varchar(45) NOT NULL,
  `product_standard_price` decimal(4,2) NOT NULL,
  `product_line_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'End Table','Walnut',94.82,1),(2,'Coffee Table','Natural Ash',71.50,2),(3,'Entertainment Center','Natural Ash',92.48,3),(4,'Computer Desk','Walnut',21.21,4),(5,'Writers Desk','Natural Ash',91.60,5),(6,'8-Drawer Desk','Walnut',30.71,6),(7,'Dining Table','Natural Ash',32.24,7),(8,'Computer Desk','Cherry',87.53,8),(9,'Coffee Table','Cherry',46.28,9),(10,'Writers Desk','Natural Ash',44.79,10);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
