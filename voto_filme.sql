-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: voto_filme
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Filmes','2022-06-04 17:48:32','2022-06-04 18:00:29'),(2,'Series','2022-06-04 17:48:37','2022-06-04 17:48:37');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2022_06_04_132106_create_users',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production`
--

DROP TABLE IF EXISTS `production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `description` text,
  `genre` varchar(100) DEFAULT NULL,
  `photo_link` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `production_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production`
--

LOCK TABLES `production` WRITE;
/*!40000 ALTER TABLE `production` DISABLE KEYS */;
INSERT INTO `production` VALUES (13,1,'CAPITÃ MARVEL','120','Em Capitã Marvel, Carol Danvers (Brie Larson) é uma ex-agente da Força Aérea norte-americana, que, sem se lembrar de sua vida na Terra, é recrutada pelos Kree para fazer parte de seu exército de elite. Inimiga declarada dos Skrull, ela acaba voltando ao seu planeta de origem para impedir uma invasão dos metaformos, e assim vai acabar descobrindo a verdade sobre si, com a ajuda do agente Nick Fury (Samuel L. Jackson) e da gata Goose.','Ação','https://br.web.img3.acsta.net/c_310_420/pictures/19/02/04/18/35/1468867.jpg','2022-06-06 22:57:16','2022-06-07 11:50:53'),(14,1,'HOMEM-ARANHA: DE VOLTA AO LAR','133','Em Homem-Aranha: De Volta ao Lar, depois de atuar ao lado dos Vingadores, chegou a hora de Peter Parker (Tom Holland) voltar para casa e para a sua vida, já não mais tão normal. Lutando diariamente contra pequenos crimes nas redondezas, ele pensa ter encontrado a missão de sua vida quando o terrível vilão Abutre (Michael Keaton) surge amedrontando a cidade. O problema é que a tarefa não será tão fácil como ele imaginava.','Aventura','https://br.web.img2.acsta.net/c_310_420/pictures/17/05/29/23/31/530814.jpg','2022-06-06 22:59:54','2022-06-06 22:59:54'),(15,1,'OS VINGADORES - THE AVENGERS','140','Loki (Tom Hiddleston) retorna à Terra enviado pelos chitauri, uma raça alienígena que pretende dominar os humanos. Com a promessa de que será o soberano do planeta, ele rouba o cubo cósmico dentro de instalações da S.H.I.E.L.D. e, com isso, adquire grandes poderes. Loki os usa para controlar o dr. Erik Selvig (Stellan Skarsgard) e Clint Barton/Gavião Arqueiro (Jeremy Renner), que passam a trabalhar para ele. No intuito de contê-los, Nick Fury (Samuel L. Jackson) convoca um grupo de pessoas com grandes habilidades, mas que jamais haviam trabalhado juntas: Tony Stark/Homem de Ferro (Robert Downey Jr.), Steve Rogers/Capitão América (Chris Evans), Thor (Chris Hemsworth), Bruce Banner/Hulk (Mark Ruffalo) e Natasha Romanoff/Viúva Negra (Scarlett Johansson). Só que, apesar do grande perigo que a Terra corre, não é tão simples assim conter o ego e os interesses de cada um deles para que possam agir em grupo.','Aventura','https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/89/43/82/20052140.jpg','2022-06-06 23:23:23','2022-06-06 23:23:23'),(16,2,'MARVEL\'S AGENTS OF S.H.I.E.L.D.','1','Após os acontecimentos em Nova York, retratados em Os Vingadores, a S.H.I.E.L.D. (Superintendência Humana de Intervenção, Espionagem, Logística e Dissuasão) deve mobilizar seus integrantes para solucionar vários casos relacionados com super-heróis. A equipe é liderada pelo agente Phil Coulson.','Drama','https://br.web.img2.acsta.net/c_310_420/pictures/17/11/30/13/06/4308529.jpg','2022-06-07 11:54:10','2022-06-07 11:54:10'),(17,2,'THE INCREDIBLE HULK (1996)','2','Depois que um experimento sai errado, o Dr. David Banner (Bill Bixby) acaba se transformando no Hulk toda vez que perde o controle de suas emoções e está sob muito estresse. Enquanto tenta se acostuma com essa sua nova condição de vida, no entanto, ele ainda precisa se proteger de diversos inimigos que tentam destruí-lo.','Ficção científica','https://br.web.img2.acsta.net/c_310_420/medias/nmedia/18/68/90/83/18860665.jpg','2022-06-07 11:58:53','2022-06-07 11:58:53'),(18,2,'GUARDIÕES DA GALÁXIA - A SÉRIE Temporada','2','Senhor das Estrelas e sua trupe de desajustados enfrentam os maiores perigos, nas profundezas das galáxias, para proteger o universo das forças do mal.','Ficção Científica','https://br.web.img3.acsta.net/c_310_420/pictures/14/10/17/10/30/565195.jpg','2022-06-07 12:01:15','2022-06-07 12:01:15');
/*!40000 ALTER TABLE `production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (31,'teste@gmail.com','lucas','$2y$10$BDFOKcDtHdlriLRgPnqinuHmlfRdyjTbBIQQ3WURSFgnomWo4F2Jy','2022-06-04 14:40:55','2022-06-04 14:40:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vote` (
  `id` int NOT NULL AUTO_INCREMENT,
  `production` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote`
--

LOCK TABLES `vote` WRITE;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
INSERT INTO `vote` VALUES (1,1,'2022-06-04 22:05:39','2022-06-04 22:05:39'),(2,2,'2022-06-05 19:41:02','2022-06-05 19:41:02'),(3,2,'2022-06-05 19:44:24','2022-06-05 19:44:24'),(4,2,'2022-06-05 19:44:29','2022-06-05 19:44:29'),(5,2,'2022-06-06 19:16:45','2022-06-06 19:16:45'),(6,2,'2022-06-06 19:16:48','2022-06-06 19:16:48'),(7,2,'2022-06-06 19:45:22','2022-06-06 19:45:22'),(8,2,'2022-06-06 19:49:06','2022-06-06 19:49:06'),(9,2,'2022-06-06 19:49:19','2022-06-06 19:49:19'),(10,2,'2022-06-06 19:49:56','2022-06-06 19:49:56'),(11,3,'2022-06-06 19:55:28','2022-06-06 19:55:28'),(12,4,'2022-06-06 19:55:33','2022-06-06 19:55:33'),(13,4,'2022-06-06 19:56:57','2022-06-06 19:56:57'),(14,13,'2022-06-06 23:25:51','2022-06-06 23:25:51'),(15,15,'2022-06-06 23:25:54','2022-06-06 23:25:54'),(16,14,'2022-06-06 23:25:56','2022-06-06 23:25:56'),(17,14,'2022-06-06 23:26:16','2022-06-06 23:26:16'),(18,14,'2022-06-06 23:26:17','2022-06-06 23:26:17'),(19,15,'2022-06-06 23:26:19','2022-06-06 23:26:19'),(20,14,'2022-06-06 23:30:06','2022-06-06 23:30:06');
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-07  9:42:47
