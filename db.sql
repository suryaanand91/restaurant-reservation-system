CREATE DATABASE  IF NOT EXISTS `restaurant` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `restaurant`;
-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (x86_64)
--
-- Host: localhost    Database: restaurant
-- ------------------------------------------------------
-- Server version	9.0.1

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `available` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

 
INSERT INTO restaurant.menu (name, description, price, available) VALUES
('Margherita Pizza', 'Classic pizza with fresh mozzarella, basil, and tomato sauce.', 9.99, TRUE),
('Pepperoni Pizza', 'Spicy pepperoni slices on top of cheese and tomato sauce.', 10.99, TRUE),
('Vegetarian Pizza', 'Loaded with seasonal vegetables and mozzarella.', 11.99, TRUE),
('BBQ Chicken Pizza', 'Grilled chicken with BBQ sauce, red onions, and cilantro.', 12.99, TRUE),
('Caesar Salad', 'Crispy romaine lettuce with Caesar dressing and croutons.', 7.99, TRUE),
('Garlic Bread', 'Toasted bread with garlic and herbs, served with marinara sauce.', 4.99, TRUE),
('Cheeseburger', 'Juicy beef patty with cheese, lettuce, tomato, and pickles.', 10.49, TRUE),
('Chocolate Cake', 'Rich and moist chocolate cake with a creamy frosting.', 5.99, TRUE),
('Ice Cream Sundae', 'Vanilla ice cream topped with chocolate sauce, whipped cream, and a cherry.', 3.99, TRUE),
('Spaghetti Bolognese', 'Classic spaghetti with a rich meat sauce and Parmesan cheese.', 12.49, TRUE);

Select * from restaurant.menu;



