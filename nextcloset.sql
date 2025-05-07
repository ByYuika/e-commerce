-- MySQL dump 10.13  Distrib 8.0.24, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: nextcloset
-- ------------------------------------------------------
-- Server version	9.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(125) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text,
  `state_id` int DEFAULT NULL,
  `signup_date` datetime DEFAULT NULL,
  `last_order_date` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Emi','Tanaka','hiroshi.tanaka@example.com','123-456-7892','1500 Maple St, Canberra, ACT',7,'2025-03-01 18:30:00','2025-03-20 14:00:00'),(2,'Sophia','Lee','sophia.lee@example.com','890-123-4567','505 Pine St, Canberra, ACT',7,'2025-02-15 16:40:00','2025-03-09 16:25:00'),(3,'Janice','Doe','janice.doe@example.com','123-456-7890','123 Main St, Sydney, NSW',1,'2025-01-01 09:00:00','2025-03-10 10:00:00'),(4,'Michelle','Wilson','michelle.wilson@example.com','901-234-5678','606 Oak St, Sydney, NSW',1,'2025-03-01 09:20:00','2025-03-12 10:30:00'),(5,'Amelia','Jackson','amelia.jackson@example.com','567-890-1235','1111 Oak St, Sydney, NSW',1,'2025-02-19 13:10:00','2025-03-14 09:45:00'),(6,'Alice','Johnson','alice.johnson@example.com','345-678-9012','789 Pine St, Brisbane, QLD',3,'2025-03-01 14:00:00','2025-03-12 14:45:00'),(7,'Grace','Hernandez','grace.hernandez@example.com','345-678-9013','909 Birch St, Brisbane, QLD',3,'2025-03-02 16:30:00','2025-03-12 13:15:00'),(8,'Isabella','Clark','isabella.clark@example.com','789-012-3457','1313 Cedar St, Brisbane, QLD',3,'2025-03-04 10:30:00','2025-03-16 14:00:00'),(9,'Emma','Brown','Emma.brown@example.com','456-789-0123','101 Maple St, Perth, WA',4,'2025-01-15 12:30:00','2025-03-13 13:15:00'),(10,'Debbie','Miller','debbie.miller@example.com','234-567-8902','808 Cedar St, Perth, WA',4,'2025-02-07 17:00:00','2025-03-11 15:50:00'),(11,'Chloe','Rodriguez','chloe.rodriguez@example.com','901-234-5679','1515 Oak St, Perth, WA',4,'2025-02-10 17:10:00','2025-03-18 18:00:00'),(12,'Charlie','Davis','charlie.davis@example.com','567-890-1234','202 Birch St, Adelaide, SA',5,'2025-03-05 10:45:00','2025-03-14 09:00:00'),(13,'Maria','Garcia','maria.garcia@example.com','890-123-4568','1414 Birch St, Adelaide, SA',5,'2025-02-03 09:50:00','2025-03-17 12:20:00'),(14,'Emily','Taylor','emily.taylor@example.com','678-901-2345','303 Birch St, Hobart, TAS',5,'2025-01-02 13:00:00','2025-03-08 10:20:00'),(15,'Dakota','Martinez','dakota.martinez@example.com','789-012-3456','404 Cedar St, Darwin, NT',8,'2025-01-10 15:30:00','2025-03-07 14:10:00'),(16,'Olivia','Nguyen','olivia.nguyen@example.com','123-456-7891','707 Maple St, Melbourne, VIC',2,'2025-03-04 14:10:00','2025-03-13 11:40:00'),(17,'Alexander','Martinez','alexander.martinez@example.com','123-456-7892','1616 Maple St, Melbourne, VIC',2,'2025-03-01 18:30:00','2025-03-19 14:00:00'),(18,'Noah','White','noah.white@example.com','678-901-2346','1212 Maple St, Melbourne, VIC',2,'2025-03-08 16:40:00','2025-03-15 12:55:00'),(19,'Mio','Tanabe','mio.tanabe@example.com','145-456-7192','1201 Bourke St, Melbourne, VIC',2,'2025-03-03 18:30:00','2025-03-21 14:00:00'),(20,'Lia','Moore','lia.moore@example.com','456-789-0124','1010 Pine St, Melbourne, VIC',2,'2025-01-08 12:20:00','2025-03-13 11:30:00'),(21,'Jane','Smith','jane.smith@example.com','234-567-8901','456 Oak St, Melbourne, VIC',2,'2025-02-01 11:00:00','2025-03-11 11:30:00');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `order_item_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,1,2,50.00),(2,1,1,1,100.00),(3,2,3,1,120.00),(4,2,4,1,60.00),(5,3,17,2,80.00),(6,3,6,1,90.00),(7,4,7,3,40.00),(8,4,8,1,75.00),(9,5,9,2,50.00),(10,6,10,1,70.00),(11,6,11,1,150.00),(12,7,12,4,30.00),(13,8,13,1,200.00),(14,9,14,2,80.00),(15,10,15,1,95.00),(16,11,1,2,50.00),(17,12,2,1,100.00),(18,13,3,1,120.00),(19,14,4,2,60.00),(20,15,5,1,80.00),(21,16,6,2,40.00),(22,17,7,1,50.00),(23,18,8,1,100.00),(24,19,3,1,30.00),(25,20,4,2,30.00),(26,21,14,3,30.00);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2025-03-10 10:30:00',200.00),(2,2,'2025-03-11 11:35:00',240.00),(3,3,'2025-03-12 14:50:00',350.00),(4,4,'2025-03-13 13:20:00',115.00),(5,5,'2025-03-14 09:10:00',100.00),(6,6,'2025-03-08 10:25:00',240.00),(7,7,'2025-03-07 14:15:00',120.00),(8,8,'2025-03-09 16:30:00',275.00),(9,9,'2025-03-12 10:35:00',160.00),(10,10,'2025-03-13 11:45:00',95.00),(11,11,'2025-03-11 15:55:00',100.00),(12,12,'2025-03-12 13:20:00',200.00),(13,13,'2025-03-14 14:00:00',240.00),(14,14,'2025-03-13 18:05:00',200.00),(15,15,'2025-03-16 14:10:00',140.00),(16,16,'2025-03-18 18:10:00',125.00),(17,17,'2025-03-19 14:30:00',240.00),(18,18,'2025-03-20 14:05:00',200.00),(19,19,'2025-03-21 15:00:00',120.00),(20,20,'2025-03-16 16:30:00',120.00),(21,21,'2025-03-17 14:20:00',120.00);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(125) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,'Clothing'),(2,'Denim'),(3,'Outerwear'),(4,'Sweaters'),(5,'Footwear'),(6,'Knitwear'),(7,'Tops'),(8,'Activewear'),(9,'Bottoms'),(10,'Bags'),(11,'Dresses'),(12,'Underwear'),(13,'Coats'),(14,'Formal Wear'),(15,'Casual Wear');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock_quantity` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Graphic T-Shirt',1,50.50,100),(2,'Straight Jeans',2,60.00,50),(3,'Leather Jacket',3,80.00,30),(4,'Wool Sweater',4,40.00,75),(5,'Nike Sneakers',5,55.00,200),(6,'V-Neck Cardigan',6,30.00,150),(7,'Silk Blouse',7,35.00,120),(8,'Activewear Leggings',8,25.00,80),(9,'Long Skirt',9,30.00,60),(10,'Canvas Tote Bag',10,15.00,300),(11,'Jumpsuit',11,45.00,40),(12,'Denim Shorts',2,25.00,150),(13,'Lingerie Set',12,30.00,50),(14,'Long Coat',14,90.00,30),(15,'Stripe Pants',15,50.00,100),(16,'Navy Blazer',3,100.00,25),(17,'Formal Dress',2,75.00,50),(18,'Long Boots',5,60.00,70),(19,'Beige Chinos',15,55.00,100);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `state_id` int NOT NULL AUTO_INCREMENT,
  `state_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'New South Wales'),(2,'Victoria'),(3,'Queensland'),(4,'Western Australia'),(5,'South Australia'),(6,'Tasmania'),(7,'Australian Capital Territory'),(8,'Northern Territory');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-07 13:30:09
