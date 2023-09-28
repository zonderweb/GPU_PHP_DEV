-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gpudev
-- ------------------------------------------------------
-- Server version	8.0.30

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
  `url` varchar(255) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'nvidia','Nvidia','Відеоадаптери з GPU NVIDIA'),(2,'amd','AMD','Відеоадаптери з GPU AMD'),(3,'intel','Intel','Відеоадаптери з GPU INTEL');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gpuarticle`
--

DROP TABLE IF EXISTS `gpuarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gpuarticle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cid` int NOT NULL,
  `vendor` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `g-proc` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `cores` int NOT NULL,
  `tmus` int NOT NULL,
  `rops` int NOT NULL,
  `m-size` int NOT NULL,
  `m-type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `bus-w` int NOT NULL,
  `img` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `part-num` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gpuarticle`
--

LOCK TABLES `gpuarticle` WRITE;
/*!40000 ALTER TABLE `gpuarticle` DISABLE KEYS */;
INSERT INTO `gpuarticle` VALUES (1,1,'zotac','zotac-rtx-3070-amp-holo','ZOTAC RTX 3070 AMP Holo','<p>Get Amplified with the ZOTAC GAMING GeForce RTX™ 30 Series based on the NVIDIA Ampere architecture. Built with enhanced RT Cores and Tensor Cores, new streaming multiprocessors, and high-speed GDDR6 memory, the ZOTAC GAMING GeForce RTX 3070 AMP Holo LHR gives rise to amplified gaming with high fidelity in style.</p>','GA104',5888,184,96,8,'GDDR6',256,'zotac3070-holo.jpg','ZT-A30700F-10P');
/*!40000 ALTER TABLE `gpuarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gpucategory`
--

DROP TABLE IF EXISTS `gpucategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gpucategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `found` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `g-proc` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `cores` int NOT NULL,
  `tmus` int NOT NULL,
  `rops` int NOT NULL,
  `msize` int NOT NULL,
  `mtype` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `busw` int NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `img` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gpucategory`
--

LOCK TABLES `gpucategory` WRITE;
/*!40000 ALTER TABLE `gpucategory` DISABLE KEYS */;
INSERT INTO `gpucategory` VALUES (1,'nvidia','geforce-rtx-3070','NVIDIA GeForce RTX 3070','GA104',5888,184,96,8,'GDDR6',256,'<p>The GeForce RTX 3070 is a high-end graphics card by NVIDIA, launched on September 1st, 2020. Built on the 8 nm process, and based on the GA104 graphics processor, in its GA104-300-A1 variant, the card supports DirectX 12 Ultimate. This ensures that all modern games will run on GeForce RTX 3070. Additionally, the DirectX 12 Ultimate capability guarantees support for hardware-raytracing, variable-rate shading and more, in upcoming video games. The GA104 graphics processor is a large chip with a die area of 392 mm² and 17,400 million transistors. Unlike the fully unlocked GeForce RTX 3070 Ti, which uses the same GPU but has all 6144 shaders enabled, NVIDIA has disabled some shading units on the GeForce RTX 3070 to reach the product\'s target shader count. It features 5888 shading units, 184 texture mapping units, and 96 ROPs. Also included are 184 tensor cores which help improve the speed of machine learning applications. The card also has 46 raytracing acceleration cores. NVIDIA has paired 8 GB GDDR6 memory with the GeForce RTX 3070, which are connected using a 256-bit memory interface. The GPU is operating at a frequency of 1500 MHz, which can be boosted up to 1725 MHz, memory is running at 1750 MHz (14 Gbps effective).</p>','3070-front.jpg'),(2,'amd','radeon-rx-6600','AMD Radeon RX 6600','Navi 23',1792,112,64,8,'GDDR6',128,'<p>The Radeon RX 6600 is a performance-segment graphics card by AMD, launched on October 13th, 2021. Built on the 7 nm process, and based on the Navi 23 graphics processor, in its Navi 23 XL variant, the card supports DirectX 12 Ultimate. This ensures that all modern games will run on Radeon RX 6600. Additionally, the DirectX 12 Ultimate capability guarantees support for hardware-raytracing, variable-rate shading and more, in upcoming video games. The Navi 23 graphics processor is an average sized chip with a die area of 237 mm² and 11,060 million transistors. Unlike the fully unlocked Radeon RX 6600 XT, which uses the same GPU but has all 2048 shaders enabled, AMD has disabled some shading units on the Radeon RX 6600 to reach the product\'s target shader count. It features 1792 shading units, 112 texture mapping units, and 64 ROPs. The card also has 28 raytracing acceleration cores. AMD has paired 8 GB GDDR6 memory with the Radeon RX 6600, which are connected using a 128-bit memory interface. The GPU is operating at a frequency of 1626 MHz, which can be boosted up to 2491 MHz, memory is running at 1750 MHz (14 Gbps effective).</p>\n<p>Being a dual-slot card, the AMD Radeon RX 6600 draws power from 1x 8-pin power connector, with power draw rated at 132 W maximum. Display outputs include: 1x HDMI 2.1, 3x DisplayPort 1.4a. Radeon RX 6600 is connected to the rest of the system using a PCI-Express 4.0 x8 interface. The card\'s dimensions are 190 mm x 110 mm x 40 mm, and it features a dual-slot cooling solution. Its price at launch was 329 US Dollars.</p>','rx6600-front.jpg');
/*!40000 ALTER TABLE `gpucategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cid` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `descr_min` varchar(1024) NOT NULL,
  `description` text,
  `image` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (1,1,'NVIDIA GeForce RTX 3060 Ti','rtx-3060ti','The GeForce RTX 3060 Ti is a high-end graphics card by NVIDIA, launched on December 1st, 2020. Built on the 8 nm process, and based on the GA104 graphics processor, in its GA104-200-A1 variant, the card supports DirectX 12 Ultimate.','<p>Це гарантує, що всі сучасні ігри працюватимуть на GeForce RTX 3060 Ti. Крім того, функція DirectX 12 Ultimate гарантує підтримку апаратної трасування променів, затінення зі змінною швидкістю тощо в майбутніх відеоіграх. Графічний процесор GA104 — це великий чіп із площею кристала 392 мм² і 17400 мільйонами транзисторів. На відміну від повністю розблокованої GeForce RTX 3070 Ti, яка використовує той самий графічний процесор, але має ввімкнені всі 6144 шейдери, NVIDIA вимкнула деякі блоки затінення на GeForce RTX 3060 Ti, щоб досягти цільової кількості шейдерів продукту. Він містить 4864 блоки затінення, 152 блоки відображення текстур і 80 ROP. Також включено 152 тензорних ядра, які допомагають підвищити швидкість програм машинного навчання. Карта також має 38 ядер прискорення трасування променів. NVIDIA об\'єднала 8 ГБ пам\'яті GDDR6 з GeForce RTX 3060 Ti, які підключені за допомогою 256-бітного інтерфейсу пам\'яті. Графічний процесор працює на частоті 1410 МГц, яка може бути розширена до 1665 МГц, пам\'ять працює на частоті 1750 МГц (14 Гбіт/с ефективно).</p>\n<p>Оскільки NVIDIA GeForce RTX 3060 Ti має подвійний слот, вона отримує живлення від 1 12-контактного роз’єму живлення з максимальною потужністю 200 Вт. Виходи дисплея включають: 1x HDMI 2.1, 3x DisplayPort 1.4a. GeForce RTX 3060 Ti підключається до решти системи за допомогою інтерфейсу PCI-Express 4.0 x16. Карта має 242 мм у довжину, 112 мм у ширину та оснащена системою охолодження з двома слотами. Його ціна на момент запуску становила 399 доларів США.</p>','3060ti-front.jpg'),(2,2,'AMD Radeon RX 7600','rx7600','The Radeon RX 7600 is a performance-segment graphics card by AMD, launched on May 24th, 2023.','<p>Створена за 6-нм техпроцесом і базується на графічному процесорі Navi 33 у варіанті Navi 33 XL карта підтримує\r\n  DirectX 12 Ultimate. Це гарантує, що всі сучасні ігри працюватимуть на Radeon RX 7600. Крім того, функція DirectX 12\r\n  Ultimate гарантує підтримку апаратної трасування променів, затінення зі змінною швидкістю тощо в майбутніх відеоіграх.\r\n  Графічний процесор Navi 33 — це мікросхема середнього розміру з площею кристала 204 мм² і 13300 мільйонами\r\n  транзисторів. Він містить 2048 блоків затінення, 128 блоків відображення текстур і 64 ROP. Карта також має 32 ядра\r\n  прискорення трасування променів. AMD об\'єднала 8 ГБ пам\'яті GDDR6 з Radeon RX 7600, які підключені за допомогою\r\n  128-бітного інтерфейсу пам\'яті. Графічний процесор працює на частоті 1720 МГц, яка може бути розширена до 2655 МГц,\r\n  пам\'ять працює на частоті 2250 МГц (18 Гбіт/с ефективно).</p>\r\n<p>Оскільки AMD Radeon RX 7600 має подвійний слот, вона споживає живлення від 1x 8-контактного роз’єму живлення з\r\n  максимальною потужністю 165 Вт. Виходи дисплея включають: 1x HDMI 2.1a, 3x DisplayPort 2.1. Radeon RX 7600\r\n  підключається до решти системи за допомогою інтерфейсу PCI-Express 4.0 x8. Карта має 204 мм у довжину, 115 мм у ширину\r\n  та оснащена системою охолодження з двома слотами. Його ціна на момент запуску становила 269 доларів США.</p>','rx7600-front.jpg'),(3,3,'Intel Arc A310','arc-a310','The Arc A310 is a graphics card by Intel, launched on October 12th, 2022.','<p>Створена за 6-нм техпроцесом і базується на графічному процесорі DG2-128 у варіанті ACM-G11, карта підтримує DirectX\r\n  12 Ultimate. Це гарантує, що всі сучасні ігри працюватимуть на Arc A310. Крім того, функція DirectX 12 Ultimate\r\n  гарантує підтримку апаратної трасування променів, затінення зі змінною швидкістю тощо в майбутніх відеоіграх.\r\n  Графічний процесор DG2-128 — це мікросхема середнього розміру з площею кристала 157 мм² і 7200 мільйонами\r\n  транзисторів. На відміну від повністю розблокованого Arc A380, який використовує той самий графічний процесор, але має\r\n  ввімкнені всі 1024 шейдери, Intel вимкнула деякі блоки затінення на Arc A310, щоб досягти цільової кількості шейдерів\r\n  продукту. Він містить 768 блоків затінення, 32 блоки відображення текстури та 16 ROP. Також включено 96 тензорних\r\n  ядер, які допомагають підвищити швидкість програм машинного навчання. Карта також має 6 ядер прискорення трасування\r\n  променів. Intel об\'єднала 4 ГБ пам\'яті GDDR6 з Arc A310, які підключені за допомогою 64-розрядного інтерфейсу пам\'яті.\r\n  GPU працює на частоті 1750 МГц, яка може бути розширена до 1750 МГц, пам\'ять працює на частоті 1937 МГц (15,5 Гбіт/с\r\n  ефективно). Будучи картою з одним слотом, Intel Arc A310 не потребує додаткового роз’єму живлення, її споживана\r\n  потужність становить максимум 30 Вт. Виходи дисплея включають: 4x mini-DisplayPort 2.0. Arc A310 підключається до\r\n  решти системи за допомогою інтерфейсу PCI-Express 4.0 x8.</p>','arca310-front.jpg'),(4,1,'NVIDIA GeForce RTX 4060','rtx-4060','The GeForce RTX 4060 is a performance-segment graphics card by NVIDIA, launched on May 18th, 2023.','<p>Створена за 5-нм техпроцесом і базується на графічному процесорі AD107 у варіанті AD107-400-A1, карта підтримує\r\n  DirectX 12 Ultimate. Це гарантує, що всі сучасні ігри працюватимуть на GeForce RTX 4060. Крім того, функція DirectX 12\r\n  Ultimate гарантує підтримку апаратної трасування променів, затінення зі змінною швидкістю тощо в майбутніх відеоіграх.\r\n  Графічний процесор AD107 — це чіп середнього розміру з площею кристала 159 мм² і 18 900 мільйонами транзисторів. Він\r\n  містить 3072 блоки затінення, 96 блоків відображення текстур і 48 ROP. Також включено 96 тензорних ядер, які\r\n  допомагають підвищити швидкість програм машинного навчання. Карта також має 24 ядра прискорення трасування променів.\r\n  NVIDIA об\'єднала 8 ГБ пам\'яті GDDR6 з GeForce RTX 4060, які підключаються за допомогою 128-бітного інтерфейсу пам\'яті.\r\n  Графічний процесор працює на частоті 1830 МГц, яка може бути розширена до 2460 МГц, пам\'ять працює на частоті 2125 МГц\r\n  (17 Гбіт/с ефективно).</p>\r\n<p>Being a dual-slot card, the NVIDIA GeForce RTX 4060 draws power from 1x 12-pin power connector, with power draw rated at 115 W maximum. Display outputs include: 1x HDMI 2.1, 3x DisplayPort 1.4a. GeForce RTX 4060 is connected to the rest of the system using a PCI-Express 4.0 x8 interface. The card\'s dimensions are 240 mm x 111 mm x 40 mm, and it features a dual-slot cooling solution. Its price at launch was 299 US Dollars.</p>','4060-front.jpg'),(5,2,'AMD Radeon RX 6700 XT','rx7600xt','The <b>Radeon RX 6700 XT</b> is a high-end graphics card by AMD, launched on March 3rd, 2021.','<p>Створена за 7-нм техпроцесом і базується на графічному процесорі Navi 22 у варіанті Navi 22 XT карта підтримує\r\n  DirectX 12 Ultimate. Це гарантує, що всі сучасні ігри працюватимуть на Radeon RX 6700 XT. Крім того, функція DirectX\r\n  12 Ultimate гарантує підтримку апаратної трасування променів, затінення зі змінною швидкістю тощо в майбутніх\r\n  відеоіграх. Графічний процесор Navi 22 — це велика мікросхема з площею кристала 335 мм² і 17 200 мільйонів\r\n  транзисторів. Він містить 2560 блоків затінення, 160 блоків відображення текстур і 64 ROP. Карта також має 40 ядер\r\n  прискорення трасування променів. AMD об\'єднала 12 ГБ пам\'яті GDDR6 з Radeon RX 6700 XT, які підключені за допомогою\r\n  192-бітного інтерфейсу пам\'яті. Графічний процесор працює на частоті 2321 МГц, яка може бути розширена до 2581 МГц,\r\n  пам\'ять працює на частоті 2000 МГц (16 Гбіт/с ефективно).</p>\r\n<p>\r\n  Оскільки AMD Radeon RX 6700 XT має подвійний слот, вона споживає живлення від 1x 6-pin 1x 8-pin роз\'єму живлення з\r\n  максимальною потужністю 230 Вт. Виходи дисплея включають: 1x HDMI 2.1, 3x DisplayPort 1.4a. Radeon RX 6700 XT\r\n  підключається до решти системи за допомогою інтерфейсу PCI-Express 4.0 x16. Розміри карти становлять 267 мм x 110 мм x\r\n  40 мм, і вона оснащена системою охолодження з двома слотами. Його ціна на момент запуску становила 479 доларів США.\r\n</p>','7600xt-front.jpg'),(20,3,'Intel Arc Pro A60','arc-proa60','The Arc Pro A60 is a professional graphics card by Intel, launched on June 6th, 2023.','<p>Створена за 6-нм техпроцесом і базується на графічному процесорі DG2-256 у варіанті ACM-G12, карта підтримує DirectX\n  12 Ultimate. Він містить 2048 блоків затінення, 128 блоків відображення текстур і 64 ROP. Також включено 256 тензорних\n  ядер, які допомагають підвищити швидкість програм машинного навчання. Карта також має 16 ядер прискорення трасування\n  променів. Intel об\'єднала 12 ГБ пам\'яті GDDR6 з Arc Pro A60, які підключені за допомогою 192-бітного інтерфейсу\n  пам\'яті. Графічний процесор працює на частоті 900 МГц, яка може бути розширена до 2050 МГц, пам\'ять працює на частоті\n  2000 МГц (16 Гбіт/с ефективно).</p>\n<p>Будучи картою з одним слотом, її споживана потужність становить максимум 130 Вт. Цей пристрій не має підключення до\n  дисплея, оскільки він не призначений для підключення до нього моніторів. Arc Pro A60 підключається до решти системи за\n  допомогою інтерфейсу PCI-Express 4.0 x16.</p>','proa60-front.jpg');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `ip` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','6f37db8b89aaaccbf74767e563faee5f','0d3dd863b4a8ba50b3f7c3304e5a0bd5',2130706433),(3,'admin3','1f32aa4c9a1d2ea010adcf2348166a04','50e8659d3e0f6db4897fc86faf06d6eb',2130706433);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-28 23:14:26
