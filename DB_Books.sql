-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: 3laba
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `Code_author` int NOT NULL AUTO_INCREMENT,
  `NameSurname_author` varchar(45) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  PRIMARY KEY (`Code_author`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,' Александр Беляев','1884-03-16'),(2,' Александр Блок','1884-03-16'),(3,' Александр Грибоедов','1880-11-28'),(4,' Александр Грин','1795-01-15'),(5,' Александр Дюма','1880-08-23'),(6,' Александр Куприн','1880-08-23'),(7,' Александр Островский','1802-07-24'),(8,' Александр Пушкин','1870-09-07'),(9,' Алексей Толстой','1870-09-07'),(10,' Андрей Вознесенский','1823-04-12'),(11,' Анна Ахматова','1799-06-06'),(12,' Антон Чехов','1799-06-06'),(13,' Антуан де Сент-Экзюпери','1799-06-06'),(14,' Арсений Тарковский','1799-06-06'),(15,' Артур Конан Дойл','1799-06-06'),(16,' Афанасий Фет','1883-01-10'),(17,' Борис Васильев','1883-01-10'),(18,' Борис Пастернак','1933-05-12'),(19,' Валентин Катаев','1889-06-23'),(20,' Вениамин Каверин','1860-01-29'),(21,' Владимир Высоцкий','1860-01-29'),(22,' Владимир Гиляровский','1860-01-29'),(23,' Владимир Маяковский','1900-06-29'),(24,' Владимир Обручев','1907-06-25'),(25,' Габриэль Гарсиа Маркес','1859-05-22'),(26,' Даниель Дефо','1859-05-22'),(27,' Джек Лондон','1820-05-12'),(28,' Джордж Оруэлл','1924-05-21'),(29,' Иван Бунин','1924-05-21'),(30,' Иван Гончаров','1924-05-21'),(31,' Иван Крылов','1890-02-10'),(32,' Иван Тургенев','1890-02-10'),(33,' Иоганн Вольфганг фон Гёте','1897-01-28'),(34,' Кен Кизи','1902-04-19'),(35,' Лев Толстой','1938-01-25'),(36,' Марина Цветаева','1855-12-08'),(37,' Михаил Булгаков','1893-07-19'),(38,' Николай Гоголь','1863-09-28'),(39,' Николай Некрасов','1927-03-06'),(40,' Николай Чернышевский','1660-09-13'),(41,' Осип Мандельштам','1876-01-12'),(42,' Роберт Льюис Стивенсон','1876-01-12'),(43,' Рэй Брэдбери','1903-06-25'),(44,' Сергей Есенин','1870-10-22'),(45,' Станислав Лем','1870-10-22'),(46,' Уильям Шекспир','1870-10-22'),(47,' Федор Достоевский','1812-06-18'),(48,' Федор Тютчев','1812-06-18'),(49,' Эрих Мария Ремарк','1769-02-13'),(50,' Эрнест Хемингуэй','1818-11-09'),(51,' Ярослав Гашек','1818-11-09'),(52,'Виктор Гюго','1818-11-09'),(53,'Михаил Булгаков','1818-11-09'),(54,'Михаил Лермонтов','1818-11-09'),(55,'Михаил Шолохов','1818-11-09');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `Code_book` int NOT NULL AUTO_INCREMENT,
  `Title_book` varchar(45) DEFAULT NULL,
  `Code_author` int DEFAULT NULL,
  `Pages` int DEFAULT NULL,
  `Code_publish` int DEFAULT NULL,
  PRIMARY KEY (`Code_book`),
  KEY `code_author_idx` (`Code_author`),
  KEY `code_publish_idx` (`Code_publish`),
  CONSTRAINT `code_author` FOREIGN KEY (`Code_author`) REFERENCES `authors` (`Code_author`),
  CONSTRAINT `code_publish` FOREIGN KEY (`Code_publish`) REFERENCES `publishing_house` (`Code_publish`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Человек-амфибия',1,329,903362),(2,'Голова профессора Доуэля',2,330,903363),(3,'Стихотворения и поэмы',3,409,903191),(4,'Горе от ума',4,348,903947),(5,'Бегущая по волнам',5,421,903362),(6,'Алые паруса',6,422,903363),(7,'Граф Монте-Кристо',7,327,903191),(8,'Олеся',8,413,903947),(9,'Гранатовый браслет',9,414,903362),(10,'Бесприданница',10,351,903363),(11,'Стихотворения. Сказки. Поэмы',11,529,903191),(12,'Евгений Онегин',12,593,903947),(13,'Капитанская дочка',13,343,903362),(14,'Дубровский',14,344,903363),(15,'Повести Белкина',15,345,903191),(16,'Хождение по мукам',16,832,903947),(17,'Петр Первый',17,406,903362),(18,'Повести и рассказы',18,412,903363),(19,'Драма на охоте',19,429,903191),(20,'Пьесы',20,326,903947),(21,'Маленький принц',21,355,903362),(22,'Приключения Шерлока Холмса',22,356,903363),(23,'Возвращение Шерлока Холмса',23,375,903191),(24,'Стихотворения. Поэмы',24,390,903947),(25,'А зори здесь тихие',25,357,903362),(26,'В списках не значился',26,358,903363),(27,'Завтра была война',27,340,903191),(28,'Доктор Живаго',28,391,903947),(29,'Белеет парус одинокий',29,392,903362),(30,'Два капитана',30,393,903363),(31,'Стихотворения и песни',31,332,903191),(32,'Москва и москвичи',32,424,903947),(33,'Земля Санникова',33,386,903362),(34,'Сто лет одиночества',34,420,903363),(35,'Робинзон Крузо',35,380,903191),(36,'Белый Клык',36,335,903947),(37,'Мартин Иден',37,372,903362),(38,'1984 Скотный двор',38,415,903363),(39,'Стихотворения ',39,383,903191),(40,'Темные аллеи',40,399,903947),(41,'Жизнь Арсеньева',41,408,903362),(42,'Обыкновенная история',42,411,903363),(43,'Обломов',43,339,903191),(44,'Басни',44,334,903947),(45,'Ася',45,373,903362),(46,'Первая любовь',46,374,903363),(47,'Записки охотника',47,321,903191),(48,'Муму',48,347,903947),(49,'Отцы и дети',49,417,903362),(50,'Рудин',50,377,903363),(51,'Дворянское гнездо',51,422,903191),(52,'Фауст',52,314,903947),(53,'Над кукушкиным гнездом',53,315,903362),(54,'Война и мир',54,331,903363),(55,'Анна Каренина',55,418,903191),(56,'Воскресение',1,419,903947),(57,'Хаджи-Мурат',2,385,903362),(58,'Кавказский пленник',3,426,903363),(59,'Казаки',4,336,903191),(60,'Крейцерова соната',5,932,903947),(61,'Отец Сергий',6,333,903362),(62,'Детство. Отрочество. Юность',7,376,903363),(63,'Севастопольские рассказы',8,377,903191),(64,'Фальшивый купон',9,378,903947),(65,'Стихотворения и поэмы ',10,381,903362),(66,'Мастер и Маргарита ',11,382,903363),(67,'Собачье сердце',12,387,903191),(68,'Записки юного врача',13,388,903947),(69,'Белая гвардия',14,407,903362),(70,'Мертвые души ',15,323,903363),(71,'Вечера на хуторе близ Диканьки',16,300,903191),(72,' Миргород',17,317,903947),(73,'Петербургские повести',18,318,903947),(74,'Кому на Руси жить хорошо',19,346,903362),(75,'Что делать?',20,664,903363),(76,'Стихотворения',21,336,903191),(77,'Остров сокровищ',22,337,903947),(78,'451° по Фаренгейту',23,341,903362),(79,'Вино из одуванчиков',24,342,903363),(80,'Солярис',25,367,903191),(81,'Ромео и Джульетта',26,368,903947),(82,'Гамлет',27,410,903362),(83,'Король Лир',28,354,903363);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveries` (
  `Code_delivery` int NOT NULL AUTO_INCREMENT,
  `Name_delivery` varchar(45) DEFAULT NULL,
  `Name_company` varchar(45) DEFAULT NULL,
  `Adress` varchar(100) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `INN` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code_delivery`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
INSERT INTO `deliveries` VALUES (1,'Николай','ИП «Примак Ю.П.»','Симферополь, ул. Кечкеметская, д.27','89781459491','010200020125'),(2,'Владимир','ИП «Борисова Л.А.»','Москва Комсомольская пл. 1а, стр 15, ск  15','89167235223','771500136123'),(3,'Дмитрий','ИП НОВОСЕЛОВ','Москва, 1-й Павелецкий проезд,2 а','84999135620','771584254997'),(4,'Антон','ООО НЦ \"ЭНАС\"\"\"','Москва, Дербеневская набережная, дом 11','84959136620','000111002001'),(5,'Гендий','ОАО \"Тверская Областная Типография\"\" \"','Г ТВЕРЬ,ПЕРЕУЛОК СТУДЕНЧЕСКИЙ Д 28','84822343138','006950061549'),(6,'Вячеслав','КНИЖНЫЙ СКЛАД','Белгород,  Б.Хмельницкого пр. д.135 корп.1 эт.','84722358878','145789621021');
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishing_house`
--

DROP TABLE IF EXISTS `publishing_house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishing_house` (
  `Code_publish` int NOT NULL AUTO_INCREMENT,
  `Name_publish` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code_publish`)
) ENGINE=InnoDB AUTO_INCREMENT=903948 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishing_house`
--

LOCK TABLES `publishing_house` WRITE;
/*!40000 ALTER TABLE `publishing_house` DISABLE KEYS */;
INSERT INTO `publishing_house` VALUES (903191,'Звезды','Казань'),(903362,'Юрюзань','Москва'),(903363,'Проффсоюз','Уфа'),(903947,'Наука','Тверь');
/*!40000 ALTER TABLE `publishing_house` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `Code_book` int DEFAULT NULL,
  `Date_order` date DEFAULT NULL,
  `Code_delivery` int DEFAULT NULL,
  `Type_purchase` int DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  `Code_purchase` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Code_purchase`),
  KEY `book_idx` (`Code_book`),
  KEY `code_delivery_idx` (`Code_delivery`),
  CONSTRAINT `book` FOREIGN KEY (`Code_book`) REFERENCES `books` (`Code_book`),
  CONSTRAINT `code_delivery` FOREIGN KEY (`Code_delivery`) REFERENCES `deliveries` (`Code_delivery`)
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` VALUES (1,'2017-01-11',1,0,112.00,20,1),(2,'2017-01-17',2,1,114.00,22,2),(3,'2017-01-11',3,0,116.00,24,3),(4,'2017-01-29',4,1,118.00,100,4),(5,'2017-01-17',5,1,120.00,28,5),(6,'2017-02-10',6,1,122.00,30,6),(7,'2017-01-17',1,1,124.00,32,7),(8,'2017-02-10',2,0,126.00,34,8),(9,'2017-02-10',3,0,128.00,36,9),(10,'2017-02-10',4,0,130.00,38,10),(11,'2017-03-12',5,0,132.00,40,11),(12,'2017-03-18',6,1,134.00,42,12),(13,'2017-03-24',1,0,136.00,44,13),(14,'2017-03-30',2,0,138.00,46,14),(15,'2017-04-05',3,0,140.00,48,15),(16,'2017-04-11',4,0,142.00,50,16),(17,'2017-04-17',5,0,144.00,52,17),(18,'2017-04-23',6,1,146.00,54,18),(19,'2017-04-29',1,1,148.00,56,19),(20,'2017-05-05',2,1,150.00,58,20),(21,'2017-05-11',3,1,152.00,60,21),(22,'2017-05-17',4,1,154.00,62,22),(23,'2017-05-23',5,0,156.00,64,23),(24,'2017-05-29',6,1,158.00,66,24),(25,'2017-06-04',1,0,160.00,68,25),(26,'2017-06-10',2,0,162.00,70,26),(27,'2017-06-16',3,1,164.00,72,27),(28,'2017-06-22',4,0,166.00,74,28),(29,'2017-06-28',5,0,168.00,76,29),(30,'2017-07-04',6,0,170.00,78,30),(31,'2017-07-10',1,1,172.00,80,31),(32,'2017-07-16',2,1,174.00,82,32),(33,'2017-07-22',3,1,176.00,84,33),(34,'2017-07-28',4,1,178.00,86,34),(35,'2017-08-03',5,1,180.00,88,35),(36,'2017-08-09',6,1,182.00,90,36),(37,'2017-08-15',1,0,184.00,92,37),(38,'2017-08-21',2,1,186.00,94,38),(39,'2017-08-27',3,1,188.00,96,39),(40,'2017-09-02',4,0,190.00,98,40),(41,'2017-09-08',5,1,192.00,100,41),(42,'2017-09-14',6,0,194.00,102,42),(43,'2017-09-20',1,1,196.00,104,43),(44,'2017-09-26',2,0,198.00,106,44),(45,'2017-10-02',3,1,200.00,108,45),(46,'2017-10-08',4,0,202.00,110,46),(47,'2017-10-14',5,1,204.00,112,47),(48,'2017-10-20',6,0,206.00,114,48),(49,'2017-10-26',1,0,208.00,116,49),(50,'2017-11-01',2,1,210.00,118,50),(51,'2017-11-07',3,0,212.00,120,51),(52,'2017-11-13',4,0,214.00,122,52),(53,'2017-11-19',5,0,216.00,124,53),(54,'2017-11-25',6,0,218.00,126,54),(55,'2017-12-01',1,0,220.00,128,55),(56,'2017-12-07',2,0,222.00,130,56),(57,'2017-12-13',3,0,224.00,132,57),(58,'2017-12-19',4,0,226.00,134,58),(59,'2017-12-25',5,0,228.00,136,59),(60,'2017-12-31',6,0,230.00,138,60),(61,'2018-01-06',1,1,232.00,140,61),(62,'2018-01-12',2,1,234.00,142,62),(63,'2018-01-18',3,1,236.00,144,63),(64,'2018-01-24',4,0,238.00,146,64),(65,'2018-01-30',5,0,240.00,148,65),(66,'2018-02-05',6,0,242.00,150,66),(67,'2018-02-11',1,0,244.00,152,67),(68,'2018-02-17',2,0,246.00,154,68),(69,'2018-02-23',3,0,248.00,156,69),(70,'2018-03-01',4,0,250.00,158,70),(71,'2018-03-07',5,0,252.00,160,71),(72,'2018-03-13',6,0,254.00,162,72),(73,'2018-03-19',1,0,256.00,164,73),(74,'2018-03-25',2,0,258.00,166,74),(75,'2018-03-31',3,0,260.00,168,75),(76,'2018-04-06',4,1,262.00,170,76),(77,'2018-04-12',5,1,264.00,172,77),(78,'2018-04-18',6,1,266.00,174,78),(79,'2018-04-24',1,1,268.00,176,79),(80,'2018-04-30',2,0,270.00,178,80),(81,'2018-05-06',3,0,272.00,180,81),(82,'2018-05-12',4,0,274.00,182,82),(83,'2018-05-18',5,0,276.00,184,83),(10,'2018-05-24',6,0,278.00,186,84),(11,'2018-05-30',1,0,280.00,188,85),(12,'2018-06-05',2,0,282.00,190,86),(13,'2018-06-11',3,0,284.00,192,87),(14,'2018-06-17',4,0,286.00,194,88),(15,'2018-06-23',5,0,288.00,196,89),(16,'2018-06-29',6,0,290.00,198,90),(17,'2018-07-05',1,0,292.00,200,91),(18,'2018-07-11',2,0,294.00,202,92),(19,'2018-07-17',3,0,296.00,204,93),(20,'2018-07-23',4,0,298.00,206,94),(21,'2018-07-29',5,0,300.00,208,95),(22,'2018-08-04',6,0,302.00,210,96),(23,'2018-08-10',1,0,304.00,212,97),(24,'2018-08-16',2,1,306.00,214,98),(25,'2018-08-22',3,0,308.00,216,99),(26,'2018-08-28',4,0,310.00,218,100),(27,'2018-09-03',5,0,312.00,220,101),(28,'2018-09-09',6,0,314.00,222,102),(29,'2018-09-15',1,0,316.00,224,103),(30,'2018-09-21',2,0,318.00,226,104),(31,'2018-09-27',3,0,320.00,228,105),(32,'2018-10-03',4,0,322.00,230,106),(33,'2018-10-09',5,0,324.00,232,107),(10,'2018-10-15',6,1,326.00,234,108),(11,'2018-10-21',1,0,328.00,236,109),(12,'2018-10-27',2,0,330.00,238,110),(13,'2018-11-02',3,0,332.00,240,111),(14,'2018-11-08',4,0,334.00,242,112),(15,'2018-11-14',5,0,336.00,244,113),(16,'2018-11-20',6,1,338.00,246,114),(17,'2018-11-26',1,0,340.00,248,115),(18,'2018-12-02',2,0,342.00,250,116),(19,'2018-12-08',3,0,344.00,252,117),(20,'2018-12-14',4,1,346.00,254,118),(21,'2018-12-20',5,0,348.00,256,119),(22,'2018-12-26',6,0,350.00,258,120),(23,'2019-01-01',1,0,352.00,260,121),(24,'2019-01-07',2,0,354.00,262,122),(25,'2019-01-13',3,0,356.00,264,123),(26,'2019-01-19',4,0,358.00,266,124),(27,'2019-01-25',5,0,360.00,268,125),(28,'2019-01-31',6,0,362.00,270,126),(29,'2019-02-06',1,0,364.00,272,127);
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-14 23:10:30
