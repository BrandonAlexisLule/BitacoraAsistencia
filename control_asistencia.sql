CREATE DATABASE  IF NOT EXISTS `control_asistencia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `control_asistencia`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: control_asistencia
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('951eb6cf-5be7-48a9-b0d8-7ae80333fb47','ae7bc2c91efc7cb17deaea89a5b0ad7c773213672be51792e7ba7600154c2948','2023-12-04 05:24:24.643','20231129061358_',NULL,NULL,'2023-12-04 05:24:24.598',1),('98e27842-e2e5-4d82-b798-ef87eb00e523','15c66687914a1c580972e5916cc99969ae4167ed5887a1d42feaf394ef2cd476','2023-12-04 05:24:24.729','20231204043855_fecha_registro_web',NULL,NULL,'2023-12-04 05:24:24.678',1),('9a2afabf-fe0a-4b9c-ac9f-bd159c5ce4c9','19281a9736290275484c0c3f99c1bf048493da011fa80d29965ff295a59c94ff','2023-12-04 05:24:25.146','20231204052425_cambio_fecha_registro',NULL,NULL,'2023-12-04 05:24:25.115',1),('a86440be-0d61-4d15-a3a6-7f063fefa17e','f0d8df733c9ad8982799919a744d8b6c2a916ec9f2a5a0638af9bf27a511319c','2023-12-04 05:36:39.702','20231204053639_cambio_fecha_registro',NULL,NULL,'2023-12-04 05:36:39.681',1),('ea84a5e6-9bfe-4d23-af6a-fed4814f19d3','fa9d2e2dc3851d9ce884d890834464e013db5b2799f76d252847788c2eb7f5c6','2023-12-04 05:24:24.674','20231130085220_registro',NULL,NULL,'2023-12-04 05:24:24.647',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrera` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'Ingeniería en Innovación Agrícola Sustentable'),(2,'Ingeniería Electromecánica'),(3,'Ingeniería Electrónica'),(4,'Ingeniería en Gestión Empresarial'),(5,'Ingeniería Industrial'),(6,'Ingeniería Mecatrónica'),(7,'Ingeniería en Sistemas Computacionales'),(8,'Licenciatura en Administración'),(9,'Especialización en Industria Aeroespacial'),(10,'Maestría en Ingeniería Aeroespacial'),(11,'Maestría en Ciencias en Ingeniería Mecatrónica'),(12,'Doctorado en Ciencias en Ingeniería Mecatrónica');
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorio`
--

DROP TABLE IF EXISTS `laboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laboratorio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorio`
--

LOCK TABLES `laboratorio` WRITE;
/*!40000 ALTER TABLE `laboratorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `laboratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro`
--

DROP TABLE IF EXISTS `registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrera` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreLaboratorio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaRegistroWeb` datetime(3) NOT NULL,
  `fechaRegistroApp` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro`
--

LOCK TABLES `registro` WRITE;
/*!40000 ALTER TABLE `registro` DISABLE KEYS */;
INSERT INTO `registro` VALUES (1,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC1','2023-12-04 05:25:28.920','2023-12-04 05:25:28.987'),(2,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC1','2023-12-04 05:41:59.189','2023-12-04 05:41:59.201'),(3,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC1','2023-12-04 05:42:00.671','2023-12-04 05:42:00.680'),(4,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC1','2023-12-04 05:42:02.473','2023-12-04 05:42:02.482'),(5,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC1','2023-12-04 05:42:03.751','2023-12-04 05:42:03.760'),(6,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC1','2023-12-04 05:42:05.186','2023-12-04 05:42:05.195'),(7,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC1','2023-12-04 05:42:07.295','2023-12-04 05:42:07.304'),(8,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC1','2023-12-04 05:42:08.553','2023-12-04 05:42:08.562'),(9,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC1','2023-12-04 05:42:09.896','2023-12-04 05:42:09.904'),(10,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC1','2023-12-04 05:42:11.458','2023-12-04 05:42:11.467'),(11,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC1','2023-12-04 05:42:12.759','2023-12-04 05:42:12.768'),(12,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC2','2023-12-04 05:42:16.745','2023-12-04 05:42:16.754'),(13,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC2','2023-12-04 05:42:19.100','2023-12-04 05:42:19.108'),(14,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC2','2023-12-04 05:42:20.297','2023-12-04 05:42:20.305'),(15,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC2','2023-12-04 05:42:21.615','2023-12-04 05:42:21.624'),(16,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC2','2023-12-04 05:42:23.299','2023-12-04 05:42:23.307'),(17,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC2','2023-12-04 05:42:24.536','2023-12-04 05:42:24.545'),(18,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC2','2023-12-04 05:42:25.853','2023-12-04 05:42:25.861'),(19,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC3','2023-12-04 05:42:30.614','2023-12-04 05:42:30.623'),(20,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC3','2023-12-04 05:42:32.004','2023-12-04 05:42:32.013'),(21,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC3','2023-12-04 05:42:33.815','2023-12-04 05:42:33.823'),(22,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC3','2023-12-04 05:42:35.291','2023-12-04 05:42:35.300'),(23,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC4','2023-12-04 05:42:40.765','2023-12-04 05:42:40.774'),(24,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC4','2023-12-04 05:42:42.247','2023-12-04 05:42:42.256'),(25,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC4','2023-12-04 05:42:44.101','2023-12-04 05:42:44.110'),(26,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC4','2023-12-04 05:42:45.936','2023-12-04 05:42:45.944'),(27,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC5','2023-12-04 05:42:49.931','2023-12-04 05:42:49.939'),(28,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC5','2023-12-04 05:42:51.566','2023-12-04 05:42:51.574'),(29,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC5','2023-12-04 05:42:52.773','2023-12-04 05:42:52.782'),(30,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC5','2023-12-04 05:42:54.032','2023-12-04 05:42:54.040'),(31,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC6','2023-12-04 05:42:57.010','2023-12-04 05:42:57.019'),(32,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC6','2023-12-04 05:42:58.266','2023-12-04 05:42:58.274'),(33,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC6','2023-12-04 05:42:59.453','2023-12-04 05:42:59.457'),(34,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LC6','2023-12-04 05:43:00.581','2023-12-04 05:43:00.585'),(35,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LR','2023-12-04 05:43:03.998','2023-12-04 05:43:04.002'),(36,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LR','2023-12-04 05:43:05.207','2023-12-04 05:43:05.211'),(37,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LR','2023-12-04 05:43:06.781','2023-12-04 05:43:06.786'),(38,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LR','2023-12-04 05:43:07.960','2023-12-04 05:43:07.964'),(39,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LR','2023-12-04 05:43:09.294','2023-12-04 05:43:09.299'),(40,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LR','2023-12-04 05:43:10.723','2023-12-04 05:43:10.727'),(41,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo web','Ingeniería en Sistemas Computacionales','LR','2023-12-04 05:47:54.712','2023-12-04 05:47:54.713'),(42,'20760323','Jose Alfredo Jimenez ','1SA','Fisica','Ingeniería Mecatrónica','LC1','2023-12-05 22:56:07.751','2023-12-05 22:56:07.757'),(43,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo Web','Ingeniería en Sistemas Computacionales','exp://192.168.1.71:8081','2023-12-06 00:25:39.202','2023-12-06 00:25:39.213'),(44,'20760222','Alejandro Valenzuela Ramirez','8SA','Desarrollo Web','Ingeniería en Sistemas Computacionales','exp://192.168.1.71:8081','2023-12-06 00:25:40.529','2023-12-06 00:25:40.535');
/*!40000 ALTER TABLE `registro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-06  0:40:58
