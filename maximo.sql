CREATE DATABASE  IF NOT EXISTS `trailerflix` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trailerflix`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: trailerflix
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `idactor` int NOT NULL AUTO_INCREMENT,
  `actor` varchar(100) NOT NULL,
  `genero` varchar(20) NOT NULL DEFAULT 'actor',
  PRIMARY KEY (`idactor`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Adam Nagaitis','actor'),(2,'Adeel Akhtar','actriz'),(3,'Aidan Gallagher','actor'),(4,'Alana Cavanaugh','actriz'),(5,'Alice Braga','actriz'),(6,'Alicia Vikander','actriz'),(7,'Amy Manson','actriz'),(8,'Amybeth McNulty','actriz'),(9,'Angus Macfadyen','actor'),(10,'Anya Taylor-Joy','actriz'),(11,'Awkwafina','actor'),(12,'Benjamin Sokolow','actor'),(13,'Bill Hader','actor'),(14,'Bill Skarsgård','actor'),(15,'Brett Cullen','actor'),(16,'Bruce Harwood','actor'),(17,'Bryce Dallas Howard','actor'),(18,'Burn Gorman','actor'),(19,'Cailee Spaeny','actor'),(20,'Caitriona Balfe','actriz'),(21,'Camila Mendes','actriz'),(22,'Candice Patton','actriz'),(23,'Carl Weather','actor'),(24,'Carlos Valdes','actor'),(25,'Casey Cott','actor'),(26,'Chadwick Boseman','actor'),(27,'Charlie Tahan','actor'),(28,'Chloe Pirrie','actriz'),(29,'Chris Bartlett','actor'),(30,'Chris Evans','actor'),(31,'Chris Hemsworth','actor'),(32,'Chris Messina','actor'),(33,'Chris Pratt','actor'),(34,'Christian Bale','actor'),(35,'Claire Fox','actriz'),(36,'Claire Foy','actriz'),(37,'Claire Selby','actriz'),(38,'Colin Farrell','actor'),(39,'Common','actor'),(40,'Corey Johnson','actor'),(41,'Corey Stoll','actor'),(42,'Corrine Koslo','actriz'),(43,'Courteney Cox','actor'),(44,'Dalila Bela','actriz'),(45,'Danai Gurira','actor'),(46,'Daniel Kaluuya','actor'),(47,'Danielle Panabaker','actriz'),(48,'Dash Mihok','actor'),(49,'David Castañeda','actor'),(50,'David Duchovny','actor'),(51,'David Harbour','actor'),(52,'David Schwimmer','actor'),(53,'Domhnall Gleeson','actor'),(54,'Dominic Mafham','actor'),(55,'Dwayne Johnson','actor'),(56,'Ed Harris','actor'),(57,'Elliot Page','actor'),(58,'Emilia Clarke','actriz'),(59,'Emily Bayiokos','actriz'),(60,'Emily Watson','actriz'),(61,'Emma Thompson','actriz'),(62,'Emmy Raver-Lampman','actriz'),(63,'Enver Gjokaj','actor'),(64,'Evan Rachel Wood','actor'),(65,'Ewan McGregor','actor'),(66,'Florence Pugh','actor'),(67,'Frances Conroy','actor'),(68,'Gana Bayarsaikhan','actriz'),(69,'Geena Davis','actriz'),(70,'Génesis Rodríguez','actriz'),(71,'Geraldine James','actriz'),(72,'Giancarlo Esposito','actor'),(73,'Gillian Anderson','actor'),(74,'Grant Gustin','actor'),(75,'Gwyneth Paltrow','actor'),(76,'Harry Melling','actor'),(77,'Helena Bonham Carter','actriz'),(78,'Henry Cavill','actor'),(79,'Ioan Gruffudd','actor'),(80,'Irrfan Khan','actor'),(81,'Isaiah Mustafa','actor'),(82,'Jack Black','actor'),(83,'James McAvoy','actor'),(84,'James Weber Brown','actor'),(85,'Janina Elkin','actriz'),(86,'Jared Harris','actor'),(87,'Jason Clarke','actor'),(88,'Jay Ryan','actor'),(89,'Jeff Daniels','actor'),(90,'Jeffrey Wright','actor'),(91,'Jennifer Aniston','actriz'),(92,'Jennifer Ehle','actriz'),(93,'Jeremy Renner','actor'),(94,'Jesse L. Martin','actor'),(95,'Jessica Chastain','actriz'),(96,'Jessie Buckley','actriz'),(97,'Jim Parsons','actor'),(98,'Jing Tian','actor'),(99,'Joaquin Phoenix','actor'),(100,'John Boyega','actor'),(101,'John Malkovich','actor'),(102,'Johnny Galecki','actor'),(103,'Jon Bernthal','actor'),(104,'Jorja Fox','actor'),(105,'Josh Lucas','actor'),(106,'Jude Law','actriz'),(107,'Judy Greer','actriz'),(108,'Jurnee Smollett','actriz'),(109,'Kaley Cuoco','actor'),(110,'Karen Gillan','actriz'),(111,'Kate Mara','actriz'),(112,'Kate Walsh','actriz'),(113,'Kate Winslet','actriz'),(114,'Kerry Bishé','actor'),(115,'Kevin Hart','actor'),(116,'Kit Harington','actor'),(117,'Kristen Wiig','actor'),(118,'Kunal Nayyar','actor'),(119,'Kyle Chandler','actor'),(120,'Laurence Fishburne','actriz'),(121,'Lee Pace','actor'),(122,'Lena Headey','actriz'),(123,'Lia Williams','actriz'),(124,'Lili Reinhart','actriz'),(125,'Lisa Kudrow','actriz'),(126,'Lorina Kamburova','actriz'),(127,'Louis Partridge','actor'),(128,'Lucas Jade Zumann','actor'),(129,'Luke Allen-Gale','actor'),(130,'Luke Hemsworth','actor'),(131,'Lupita Nyongo','actriz'),(132,'Mackenzie Davis','actor'),(133,'Mädchen Amick','actor'),(134,'Madelaine Petsch','actriz'),(135,'Margot Robbie','actriz'),(136,'Marion Cotillard','actriz'),(137,'Marisol Nichols','actriz'),(138,'Mark Ruffalo','actor'),(139,'Martin Freeman','actor'),(142,'Mary Elizabeth Winstead','actriz'),(143,'Matt Damon ','actor'),(144,'Matt LeBlanc','actor'),(145,'Matt Smith','actor'),(146,'Matthew Perry','actor'),(147,'Mayim Bialik','actor'),(148,'Melissa Rauch','actriz'),(149,'Michael B. Jordan','actor'),(150,'Michael Peña','actor'),(151,'Millie Bobby Brown','actriz'),(152,'Miranda Cosgrove','actriz'),(153,'Misty Rosas','actriz'),(154,'Mitch Pileggi','actor'),(155,'Moses Ingram','actor'),(156,'Nick Jonas','actor'),(157,'Nick Robinson','actor'),(158,'Nikolaj Coster-Waldau','actor'),(159,'Nina Bergman','actriz'),(160,'Noah Jupe','actor'),(161,'O.T. Fagbenle','actor'),(162,'Olivia Colman','actriz'),(163,'Omar Epps','actor'),(164,'Omar Sy','actor'),(165,'Oscar Isaac','actor'),(166,'Patrick Fugit','actor'),(167,'Paul Ritter','actor'),(168,'Pedro Pascal','actor'),(169,'Peter Dinklage','actor'),(170,'Peter Ferdinando','actor'),(171,'R. H. Thomson','actor'),(172,'Rachel Weisz','actriz'),(173,'Ray Winstone','actor'),(174,'Rhona Mitra','actriz'),(175,'Rinko Kikuchi','actor'),(176,'Rio Hackford','actor'),(177,'Robert De Niro','actor'),(178,'Robert Downey Jr.','actor'),(179,'Robert Patrick','actor'),(180,'Robert Sheehan','actor'),(181,'Rosie Perez','actriz'),(182,'Ryan Gosling','actor'),(183,'Salli Richardson-Whitfield','actriz'),(184,'Sam Claflin','actor'),(185,'Scarlett Johansson','actriz'),(186,'Scoot McNairy','actor'),(187,'Scott Eastwood','actor'),(188,'Sean Bean','actor'),(189,'Shea Whigham','actriz'),(190,'Simon Helberg','actor'),(191,'Sonoya Mizuno','actriz'),(192,'Sophie Turner','actriz'),(193,'Stacy Martin','actor'),(194,'Stellan Skarsgard','actriz'),(195,'Tessa Thompson','actriz'),(196,'Thandie Newton','actor'),(197,'Theo James','actor'),(198,'Thomas Brodie-Sangster','actor'),(199,'Tobias Menzies','actor'),(200,'Toby Huss','actor'),(201,'Toby Jones','actor'),(202,'Tom Braidwood','actor'),(203,'Tom Cavanagh','actor'),(204,'Tom Hopper','actor'),(205,'Vanesa Kirby','actriz'),(206,'Vincent DOnofrio','actor'),(207,'Vincent Piazza','actor'),(208,'Will Smith','actor'),(209,'William Hurt','actor'),(210,'Willow Smith','actor'),(211,'Zazie Beetz','actriz');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `actrizfilmsviews`
--

DROP TABLE IF EXISTS `actrizfilmsviews`;
/*!50001 DROP VIEW IF EXISTS `actrizfilmsviews`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `actrizfilmsviews` AS SELECT 
 1 AS `idfilms`,
 1 AS `titulo`,
 1 AS `idactor`,
 1 AS `actor`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idcategorias` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`idcategorias`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'pelicula'),(2,'serie');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filmoteca`
--

DROP TABLE IF EXISTS `filmoteca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmoteca` (
  `id` int NOT NULL AUTO_INCREMENT,
  `poster` varchar(100) NOT NULL,
  `titulo` varchar(120) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `genero` varchar(45) NOT NULL,
  `resumen` varchar(1200) NOT NULL,
  `temporada` int DEFAULT NULL,
  `reparto` varchar(500) NOT NULL,
  `trailers` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmoteca`
--

LOCK TABLES `filmoteca` WRITE;
/*!40000 ALTER TABLE `filmoteca` DISABLE KEYS */;
INSERT INTO `filmoteca` VALUES (1,'\"/image/1.jpg\"','The Crown','Serie','Drama, Hechos veridicos','Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.',4,'Claire Fox, Olivia Colman, Matt Smith, Tobias Menzies, Vanesa Kirby, Helena Bonham Carter',NULL),(2,'\"/image/2.jpg\"','Riverdale','Serie','Drama, Misterio, Ficcion','El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.',5,'Lili Reinhart, Casey Cott, Camila Mendes, Marisol Nichols, Madelaine Petsch, Mädchen Amick',NULL),(3,'\"/image/3.jpg\"','The Mandalorian','Serie','Ciencia Ficcion, Fantasia','Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.',2,'Pedro Pascal, Carl Weathers, Misty Rosas, Chris Bartlett, Rio Hackford, Giancarlo Esposito','https://www.youtube.com/embed/aOC8E8z_ifw'),(4,'\"/image/4.jpg\"','The Umbrella Academy','Serie','Ciencia Ficcion, Fantasia','La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.',1,'Tom Hopper, David Castañeda, Emmy Raver-Lampman, Robert Sheehan, Aidan Gallagher, Elliot Page',NULL),(5,'\"/image/5.jpg\"','Gambito de Dama','Serie','Drama, Ficcion, Sucesos','En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.',1,'Anya Taylor-Joy, Thomas Brodie-Sangster, Harry Melling, Moses Ingram, Chloe Pirrie, Janina Elkin',NULL),(6,'\"/image/6.jpg\"','Enola Holmes','Pelicula','Ficcion, Drama, Misterio','La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.',NULL,'Millie Bobby Brown, Henry Cavill, Sam Claflin, Helena Bonham Carter, Louis Partridge, Adeel Akhtar',NULL),(7,'\"/image/7.jpg\"','Guason','Pelicula','Crimen, Suspenso, Drama','Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.',NULL,'Joaquin Phoenix, Robert De Niro, Zazie Beetz, Frances Conroy, Brett Cullen, Shea Whigham','https://www.youtube.com/embed/zAGVQLHvwOY'),(8,'\"/image/8.jpg\"','Avengers: End Game','Pelicula','Aventura, Ciencia Ficcion, Accion','Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.',NULL,'Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner',NULL),(9,'\"/image/9.jpg\"','Juego de tronos','Serie','Aventura, Fantasia, Drama','En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.',8,'Emilia Clarke, Lena Headey, Sophie Turner, Kit Harington, Peter Dinklage, Nikolaj Coster-Waldau',NULL),(10,'\"/image/10.jpg\"','The Flash','Serie','Ciencia Ficcion, Fantasia','Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades. Mientras Barry siempre ha tenido el alma de un héroe, sus nuevos poderes le han dado la capacidad de actuar como tal.',6,'Grant Gustin, Carlos Valdes, Danielle Panabaker, Candice Patton, Jesse L. Martin, Tom Cavanagh',NULL),(11,'\"/image/11.jpg\"','The Big Bang Theory','Serie','Comedia, Fantasia, Ficcion','Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.',12,'Jim Parsons, Johnny Galecki, Kaley Cuoco, Simon Helberg, Kunal Nayyar, Melissa Rauch, Mayim Bialik','https://www.youtube.com/embed/WBb3fojgW0Q'),(12,'\"/image/12.jpg\"','Friends','Serie','Comedia, Familia, Drama','\'Friends\' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafetería, el Central Perk. A pesar de los numerosos cambios que se producen en sus vidas, su amistad es inquebrantable en la dura batalla por salir adelante en sus periplos profesionales y personales.',10,'Jennifer Aniston, Courteney Cox, Lisa Kudrow, David Schwimmer, Matthew Perry, Matt LeBlanc',NULL),(13,'\"/image/13.jpg\"','Anne with an \'E\'','Serie','Drama, Familia, Western','Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir con una solterona y su hermano. Cuando cumple 13 años, Anne va a conseguir transformar su vida y el pequeño pueblo donde vive gracias a su fuerte personalidad, intelecto e imaginación. Basada en la inolvidable novela.',2,'Amybeth McNulty, Geraldine James, R. H. Thomson, Corrine Koslo, Dalila Bela, Lucas Jade Zumann',NULL),(14,'\"/image/14.jpg\"','Expedientes Secretos \'X\'','Serie','Drama, Ciencia Ficcion','Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. Cuando Mulder tenía doce años, su hermana pequeña fue secuestrada por unos desconocidos, aunque él cree que, en realidad, fue abducida por extraterrestres. Tras acabar sus estudios en la universidad de Oxford, ingresó en la Academia de Quantico, donde se ganó el apodo de \'siniestro\'',11,'Gillian Anderson, David Duchovny, Mitch Pileggi, Robert Patrick, Tom Braidwood, Bruce Harwood','https://www.youtube.com/embed/KKziOmsJxzE'),(15,'\"/image/15.jpg\"','Chernobyl','Serie','Drama, Hechos veridicos','Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.',1,'Jared Harris, Stellan Skarsgård, Emily Watson, Paul Ritter, Jessie Buckley, Adam Nagaitis','https://www.youtube.com/embed/s9APLXM9Ei8'),(16,'\"/image/16.jpg\"','Westworld','Serie','Western, Ciencia Ficción','\'Westworld\' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o depravado, puede ser saciado. Está ambientada en un parque temático futurista dirigido por el Dr. Robert Ford (Anthony Hopkins). Las instalaciones cuentan con androides caracterizados del western americano, y gracias a ellos los visitantes pueden introducirse en cualquier tipo de fantasía por muy oscura que sea.',3,'Evan Rachel Wood, Thandie Newton, Jeffrey Wright, Tessa Thompson, Ed Harris, Luke Hemsworth','https://www.youtube.com/embed/qLFBcdd6Qw0'),(17,'\"/image/17.jpg\"','Halt and Catch Fire','Serie','Ficcion, Drama, Tecnologia','Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera, se alían a una programadora de software para confrontar con las corporaciones informáticas dominantes de la época. El Personal de la firma y sus socios de negocio, comenzarán una carrera que cambiará la cultura en el Estado de Texas, cuna de las empresas de tecnología, casi de la misma forma que lo es hoy Silicon Valey. \n Esta historia ficticia emula el trabajo realizado, en su momento, por la firma Compaq, cuando clonó el BIOS de las Computadoras Personales IBM, dando vida así al económico mercado de los clones. Mostrando también, a lo largo de sus 4 temporadas, el nacimiento de la arquitectura abierta de hardware, los videojuegos online, las salas de chat y de trueque de productos físicos, los BBS, y las primeras nubes computacionales, hasta la llegada de Internet (sin dejar afuera la guerra de los web browsers).',4,'Lee Pace, Scoot McNairy, Mackenzie Davis, Kerry Bishé, Toby Huss, Alana Cavanaugh','https://www.youtube.com/embed/pWrioRji60A'),(18,'\"/image/18.jpg\"','Ava','Pelicula','Accion, Drama, Suspenso','Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por una vida.',NULL,'Jessica Chastain, John Malkovich, Colin Farrell, Common, Geena Davis, Ioan Gruffudd',NULL),(19,'\"/image/19.jpg\"','Aves de presa y la fantabulosa emancipación de una Harley Quinn','Pelicula','Accion, Ficcion, Comedia','Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.',NULL,'Margot Robbie, Ewan McGregor, Mary Elizabeth Winstead, Jurnee Smollett, Rosie Perez, Chris Messina',NULL),(20,'\"/image/20.jpg\"','Archivo','Pelicula','Acción, Ciencia Ficción, Suspenso','2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su esposa muerta.',NULL,'Stacy Martin, Rhona Mitra, Theo James, Peter Ferdinando, Lia Williams, Toby Jones','https://www.youtube.com/embed/VHSoCnDioAo'),(21,'\"/image/21.jpg\"','Jumanji - The next level','Pelicula','Comedia, Ficcion, Aventura','Las aventuras continúan en el fantástico mundo del video juego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿dónde está el resto de la gente?',NULL,'Dwayne Johnson, Kevin Hart, Jack Black, Karen Gillan, Awkwafina, Nick Jonas','https://www.youtube.com/embed/rBxcF-r9Ibs'),(22,'\"/image/22.jpg\"','3022','Pelicula','Ciencia Ficcion, Suspenso','La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La película se muestra como una serie de flashbacks y flash-forward.',NULL,'Miranda Cosgrove, Kate Walsh, Omar Epps, Angus Macfadyen, Jorja Fox, Enver Gjokaj','https://www.youtube.com/embed/AGQ7OkmIx4Q'),(23,'\"/image/23.jpg\"','IT - Capitulo 2','Pelicula','Terror, Suspenso, Fantasia','En este segundo capitulo Han pasado 27 años desde que el \'Club de los Perdedores\', formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonaron el pueblo de Derry, en el estado de Maine, que tantos problemas les había ocasionado. Sin embargo, ahora, siendo adultos, parece que no pueden escapar de su pasado. Todos deberán enfrentarse de nuevo al temible payaso para descubrir si de verdad están preparados para superar sus traumas de la infancia.',NULL,'Bill Skarsgård, Jessica Chastain, Bill Hader, James McAvoy, Isaiah Mustafa, Jay Ryan','https://www.youtube.com/embed/hZeFeYSmBcg'),(24,'\"/image/24.jpg\"','Pantera Negra','Pelicula','Acción, Aventura, Fantasía','T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos felinos y otras habilidades como súper fuerza e inteligencia, agilidad, estrategia o maestro del combate sin armas. Es bajo el liderazgo de T’Challa como Wakanda consigue convertirse en una de las naciones más ricas y tecnológicamente avanzadas del planeta.',NULL,'Chadwick Boseman, Michael B. Jordan, Lupita Nyong\'o, Danai Gurira, Martin Freeman, Daniel Kaluuya','https://www.youtube.com/embed/BE6inv8Xh4A'),(25,'\"/image/25.jpg\"','Contra lo imposible (Ford versus Ferrari)','Pelicula','Drama, Historia, Aventura','Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Juntos construyen un nuevo coche de carreras para Ford Motor Company y así enfrentar a Enzo Ferrari en las 24 Horas de Le Mans en Francia en 1966.',NULL,'Christian Bale, Matt Damon, Caitriona Balfe, Josh Lucas, Noah Jupe, Jon Bernthal','https://www.youtube.com/embed/SOVb0-2g1Q0'),(26,'\"/image/26.jpg\"','Centigrados','Pelicula','Drama, Suspenso, Intriga','Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.',NULL,'Génesis Rodríguez, Vincent Piazza, Benjamin Sokolow, Emily Bayiokos',NULL),(27,'\"/image/27.jpg\"','DOOM: Aniquilacion','Pelicula','Acción, Ciencia Ficción, Terror','Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.',NULL,'Amy Manson, Luke Allen-Gale, Nina Bergman, Dominic Mafham, James Weber Brown, Lorina Kamburova','https://www.youtube.com/embed/nat3u3gAVLE'),(28,'\"/image/28.jpg\"','Contagio','Pelicula','Drama, Suspenso, Ficcion','De repente, sin saber cuál es su origen, aunque todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la población. El contagio se produce por mero contacto entre los seres humanos. Un thriller realista y sin efectos especiales sobre los efectos de una epidemia.',NULL,'Marion Cotillard, Matt Damon, Laurence Fishburne, Jude Law, Kate Winslet, Jennifer Ehle, Gwyneth Paltrow','https://www.youtube.com/embed/4sYSyuuLk5g'),(29,'\"/image/29.jpg\"','Viuda Negra','Pelicula','Drama, Accion, Aventura','Primera pelicula individual de la Viuda Negra en el universo cinematografico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones, y su actualidad, después de Avengers.',NULL,'Scarlett Johansson, Florence Pugh, David Harbour, O.T. Fagbenle, Rachel Weisz, William Hurt, Ray Winstone','https://www.youtube.com/embed/BIn8iANwEog'),(30,'\"/image/30.jpg\"','The Martian','Pelicula','Drama, Ciencia Ficcion, Aventura','Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recursos en el planeta. Con muy pocos medios deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la Tierra que todavía está vivo esperando que acudan en su rescate.',NULL,'Matt Damon, Jessica Chastain, Kristen Wiig, Jeff Daniels, Michael Peña, Sean Bean, Kate Mara','https://www.youtube.com/embed/XvB58bCVfng'),(31,'\"/image/31.jpg\"','Ex-Machina','Pelicula','Drama, Ciencia Ficcion, Suspenso','Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que inteligencia artificial lo es todo.',NULL,'Alicia Vikander, Domhnall Gleeson, Oscar Isaac, Sonoya Mizuno, Corey Johnson, Claire Selby, Gana Bayarsaikhan','https://www.youtube.com/embed/XRYL5spvEcI'),(32,'\"/image/32.jpg\"','Jurassic World','Pelicula','Suspenso, Aventura, Ficcion','Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic Wold, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque.',NULL,'Bryce Dallas Howard, Chris Pratt, Irrfan Khan, Vincent D\'Onofrio, Omar Sy, Nick Robinson, Judy Greer',NULL),(33,'\"/image/33.jpg\"','Soy leyenda','Pelicula','Drama, Terror, Ficcion','Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.',NULL,'Will Smith, Alice Braga, Charlie Tahan, Dash Mihok, Salli Richardson-Whitfield, Willow Smith, Emma Thompson','https://www.youtube.com/embed/dtKMEAXyPkg'),(34,'\"/image/34.jpg\"','El primer hombre en la luna','Pelicula','Drama, Hechos veridicos','Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. Hansen, que explora el sacrificio y el precio que representó, tanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.',NULL,'Ryan Gosling, Claire Foy, Jason Clarke, Kyle Chandler, Corey Stoll, Patrick Fugit',''),(35,'\"/image/35.jpg\"','Titanes del pacifico - La insurreccion','Pelicula','Accion, Fantasia, Ciencia Ficcion','Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. Ante esta nueva amenaza, los Jaegers, robots gigantes de guerra pilotados por dos personas para sobrellevar la inmensa carga neuronal que conlleva manipularlos, ya no están a la altura de lo que se les viene encima. Será entonces cuando los supervivientes de la primera invasión, además de nuevos personajes como el hijo de Pentecost, tendrán que idear la manera de sorprender al enorme enemigo, apostando por nuevas estrategias defensivas y de ataque. Con la Tierra en ruinas e intentando reconstruirse, esta nueva batalla puede ser decisiva para el futuro.',NULL,'John Boyega, Scott Eastwood, Cailee Spaeny, Jing Tian, Rinko Kikuchi, Burn Gorman',NULL),(36,'que paaasaaa que ','no entraaaaaaaaaaaaaaaaaa','pelicula','aventura','dsclkjhsdkfhuiowreuhcvieucvi',20,'jvkcslvcjrihnvnv','132fdewsafdes'),(39,'este debe ser el oposter 39 ','39 ahora','serie','aventura','dkjfhdsfaggs',4,'cladkjlasfjcoruncouj','lckdvsdfgwrtthgwncw'),(40,'49 ','49 debe ser','pelicula','aventura','dsclkjhsdkfhuiowreuhcvidghfdghbeucvi',2,'jvkcslvcjribgfbfbhnvnv','dkfvchjsouveousrbdgfbfgbvueojsv');
/*!40000 ALTER TABLE `filmoteca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films` (
  `idfilms` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `poster` varchar(150) NOT NULL,
  PRIMARY KEY (`idfilms`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'The Crown','/image/1.jpg'),(2,'Riverdale','/image/2.jpg'),(3,'The Mandalorian','/image/3.jpg'),(4,'The Umbrella Academy','/image/4.jpg'),(5,'Gambito de Dama','/image/5.jpg'),(6,'Enola Holmes','/image/6.jpg'),(7,'Guason','/image/7.jpg'),(8,'Avengers: End Game','/image/8.jpg'),(9,'Juego de tronos','/image/9.jpg'),(10,'The Flash','/image/10.jpg'),(11,'The Big Bang Theory','/image/11.jpg'),(12,'Friends','/image/12.jpg'),(13,'Anne with an \'E\'','/image/13.jpg'),(14,'Expedientes Secretos \'X\'','/image/14.jpg'),(15,'Chernobyl','/image/15.jpg'),(16,'Westworld','/image/16.jpg'),(17,'Halt and Catch Fire','/image/17.jpg'),(18,'Ava','/image/18.jpg'),(19,'Aves de presa y la fantabulosa emancipación de una Harley Quinn','/image/19.jpg'),(20,'Archivo','/image/20.jpg'),(21,'Jumanji - The next level','/image/21.jpg'),(22,'3022','/image/22.jpg'),(23,'IT - Capítulo 2','/image/23.jpg'),(24,'Pantera Negra','/image/24.jpg'),(25,'Contra lo imposible (Ford versus Ferrari)','/image/25.jpg'),(26,'Centigrados','/image/26.jpg'),(27,'DOOM: Aniquilacion','/image/27.jpg'),(28,'Contagio','/image/28.jpg'),(29,'Viuda Negra','/image/29.jpg'),(30,'The Martian','/image/30.jpg'),(31,'Ex-Machina','/image/31.jpg'),(32,'Jurassic World','/image/32.jpg'),(33,'Soy leyenda','/image/33.jpg'),(34,'El primer hombre en la luna','/image/34.jpg'),(35,'Titanes del pacifico - La insurreccion','/image/35.jpg');
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generalfilms`
--

DROP TABLE IF EXISTS `generalfilms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generalfilms` (
  `idfilms` int NOT NULL AUTO_INCREMENT,
  `idcategoria` int NOT NULL,
  `idgenero` int NOT NULL,
  `idresumen` int NOT NULL,
  `idtemporada` int DEFAULT NULL,
  `idreparto` int NOT NULL,
  `idtrailers` int NOT NULL,
  PRIMARY KEY (`idfilms`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generalfilms`
--

LOCK TABLES `generalfilms` WRITE;
/*!40000 ALTER TABLE `generalfilms` DISABLE KEYS */;
INSERT INTO `generalfilms` VALUES (1,2,1,1,2,1,1),(2,2,2,2,1,2,2),(3,2,3,3,1,3,3),(4,2,4,4,5,4,4),(5,2,5,5,4,5,5),(6,1,6,6,NULL,6,6),(7,1,7,7,NULL,7,7),(8,1,8,8,NULL,8,8),(9,2,9,9,8,9,9),(10,2,10,10,6,10,10),(11,2,11,11,12,11,11),(12,2,12,12,10,12,12),(13,2,13,13,2,13,13),(14,2,14,14,11,14,14),(15,2,15,15,1,15,15),(16,2,16,16,3,16,16),(17,2,17,17,4,17,17),(18,1,18,18,NULL,18,18),(19,1,19,19,NULL,19,19),(20,1,20,20,NULL,20,20),(21,1,21,21,NULL,21,21),(22,1,22,22,NULL,22,22),(23,1,23,23,NULL,23,23),(24,1,24,24,NULL,24,24),(25,1,25,25,NULL,25,25),(26,1,26,26,NULL,26,26),(27,1,27,27,NULL,27,27),(28,1,28,28,NULL,28,28),(29,1,29,29,NULL,29,29),(30,1,30,30,NULL,30,30),(31,1,31,31,NULL,31,31),(32,1,32,32,NULL,32,32),(33,1,33,33,NULL,33,33),(34,1,34,34,NULL,34,34),(35,1,35,35,NULL,35,35);
/*!40000 ALTER TABLE `generalfilms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generofilms`
--

DROP TABLE IF EXISTS `generofilms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generofilms` (
  `idgenerofilms` int NOT NULL AUTO_INCREMENT,
  `idgeneros` int NOT NULL,
  `idgenero` int DEFAULT NULL,
  PRIMARY KEY (`idgenerofilms`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generofilms`
--

LOCK TABLES `generofilms` WRITE;
/*!40000 ALTER TABLE `generofilms` DISABLE KEYS */;
INSERT INTO `generofilms` VALUES (1,3,3),(2,8,3),(3,3,4),(4,8,4),(5,6,5),(6,9,5),(7,14,5),(8,6,2),(9,9,2),(10,13,2),(11,6,1),(12,10,1),(13,9,6),(14,6,6),(15,13,6),(16,5,7),(17,6,7),(18,15,7),(19,2,8),(20,3,8),(21,1,8),(22,2,9),(23,6,9),(24,7,9),(25,3,10),(26,8,10),(27,4,11),(28,8,11),(29,9,11),(30,4,12),(31,7,12),(32,6,12),(33,6,13),(34,7,13),(35,18,13),(36,6,14),(37,3,14),(38,6,15),(39,10,15),(40,18,16),(41,3,16),(42,9,17),(43,6,17),(44,16,17),(45,1,18),(46,6,18),(47,15,18),(48,1,19),(49,9,19),(50,4,19),(51,1,20),(52,3,20),(53,15,20),(54,4,21),(55,9,21),(56,2,21),(57,3,22),(58,15,22),(59,17,23),(60,15,23),(61,8,23),(62,1,24),(63,2,24),(64,8,24),(65,6,25),(66,11,25),(67,2,25),(68,6,26),(69,15,26),(70,12,26),(71,1,27),(72,3,27),(73,17,27),(74,6,28),(75,15,28),(76,9,28),(77,6,29),(78,1,29),(79,2,29),(80,6,30),(81,3,30),(82,2,30),(83,6,31),(84,3,31),(85,15,31),(86,15,32),(87,2,32),(88,9,32),(89,6,33),(90,17,33),(91,9,33),(92,6,34),(93,10,34),(94,1,35),(95,8,35),(96,3,35);
/*!40000 ALTER TABLE `generofilms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `idgenero` int NOT NULL AUTO_INCREMENT,
  `genero` varchar(45) NOT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'accion'),(2,'aventura'),(3,'ciencia_ficcion'),(4,'comedia'),(5,'crimen'),(6,'drama'),(7,'familia'),(8,'fantasia'),(9,'ficcion'),(10,'hechos_veridicos'),(11,'historia'),(12,'intriga'),(13,'misterio'),(14,'sucesos'),(15,'suspenso'),(16,'tecnologia'),(17,'terror'),(18,'western');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reparto`
--

DROP TABLE IF EXISTS `reparto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reparto` (
  `idrepartoactoral` int NOT NULL AUTO_INCREMENT,
  `idreparto` varchar(45) NOT NULL,
  `idactor` varchar(45) NOT NULL,
  PRIMARY KEY (`idrepartoactoral`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reparto`
--

LOCK TABLES `reparto` WRITE;
/*!40000 ALTER TABLE `reparto` DISABLE KEYS */;
INSERT INTO `reparto` VALUES (1,'3','168'),(2,'3','23'),(3,'3','153'),(4,'3','29'),(5,'3','176'),(6,'3','72'),(7,'4','204'),(8,'4','49'),(9,'4','62'),(10,'4','180'),(11,'4','3'),(12,'4','57'),(13,'5','10'),(14,'5','198'),(15,'5','76'),(16,'5','155'),(17,'5','28'),(18,'5','85'),(19,'2','124'),(20,'2','25'),(21,'2','21'),(22,'2','137'),(23,'2','134'),(24,'2','133'),(25,'1','35'),(26,'1','162'),(27,'1','145'),(28,'1','199'),(29,'1','205'),(30,'1','77'),(31,'6','151'),(32,'6','78'),(33,'6','77'),(34,'6','127'),(35,'6','2'),(36,'7','99'),(37,'7','177'),(38,'7','211'),(39,'7','67'),(40,'7','15'),(41,'7','189'),(42,'8','178'),(43,'8','30'),(44,'8','138'),(45,'8','31'),(46,'8','185'),(47,'8','93'),(48,'9','58'),(49,'9','122'),(50,'9','192'),(51,'9','116'),(52,'9','169'),(53,'9','158'),(54,'10','74'),(55,'10','24'),(56,'10','47'),(57,'10','22'),(58,'10','94'),(59,'10','203'),(60,'11','97'),(61,'11','102'),(62,'11','109'),(63,'11','190'),(64,'11','118'),(65,'11','148'),(66,'11','147'),(67,'12','91'),(68,'12','43'),(69,'12','125'),(70,'12','52'),(71,'12','146'),(72,'12','144'),(73,'13','8'),(74,'13','71'),(75,'13','171'),(76,'13','42'),(77,'13','44'),(78,'13','128'),(79,'14','73'),(80,'14','50'),(81,'14','154'),(82,'14','179'),(83,'14','202'),(84,'14','16'),(85,'15','86'),(86,'15','194'),(87,'15','60'),(88,'15','167'),(89,'15','96'),(90,'15','1'),(91,'16','64'),(92,'16','196'),(93,'16','90'),(94,'16','195'),(95,'16','56'),(96,'16','130'),(97,'17','121'),(98,'17','186'),(99,'17','132'),(100,'17','114'),(101,'17','200'),(102,'17','4'),(103,'18','95'),(104,'18','101'),(105,'18','38'),(106,'18','39'),(107,'18','69'),(108,'18','79'),(109,'19','135'),(110,'19','65'),(111,'19','142'),(112,'19','108'),(113,'19','181'),(114,'19','32'),(115,'20','193'),(116,'20','174'),(117,'20','197'),(118,'20','170'),(119,'20','123'),(120,'20','201'),(121,'21','55'),(122,'21','115'),(123,'21','82'),(124,'21','110'),(125,'21','11'),(126,'21','156'),(127,'22','152'),(128,'22','112'),(129,'22','163'),(130,'22','9'),(131,'22','104'),(132,'22','63'),(133,'23','14'),(134,'23','95'),(135,'23','13'),(136,'23','83'),(137,'23','81'),(138,'23','88'),(139,'24','26'),(140,'24','149'),(141,'24','131'),(142,'24','45'),(143,'24','139'),(144,'24','46'),(145,'25','34'),(146,'25','143'),(147,'25','20'),(148,'25','105'),(149,'25','160'),(150,'25','103'),(151,'26','70'),(152,'26','207'),(153,'26','12'),(154,'26','59'),(155,'27','7'),(156,'27','129'),(157,'27','159'),(158,'27','54'),(159,'27','84'),(160,'27','126'),(161,'28','136'),(162,'28','143'),(163,'28','120'),(164,'28','106'),(165,'28','113'),(166,'28','92'),(167,'28','75'),(168,'29','185'),(169,'29','66'),(170,'29','51'),(171,'29','161'),(172,'29','172'),(173,'29','209'),(174,'29','173'),(175,'30','143'),(176,'30','95'),(177,'30','117'),(178,'30','89'),(179,'30','150'),(180,'30','188'),(181,'30','111'),(182,'31','6'),(183,'31','53'),(184,'31','163'),(185,'31','191'),(186,'31','40'),(187,'31','37'),(188,'31','68'),(189,'32','17'),(190,'32','33'),(191,'32','80'),(192,'32','206'),(193,'32','164'),(194,'32','157'),(195,'32','107'),(196,'33','208'),(197,'33','5'),(198,'33','27'),(199,'33','48'),(200,'33','183'),(201,'33','210'),(202,'33','61'),(203,'34','182'),(204,'34','36'),(205,'34','87'),(206,'34','119'),(207,'34','41'),(208,'34','166'),(209,'35','100'),(210,'35','187'),(211,'35','19'),(212,'35','98'),(213,'35','175'),(214,'35','18');
/*!40000 ALTER TABLE `reparto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resumenes`
--

DROP TABLE IF EXISTS `resumenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resumenes` (
  `Idresumen` int NOT NULL AUTO_INCREMENT,
  `resumen` varchar(1200) NOT NULL,
  PRIMARY KEY (`Idresumen`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resumenes`
--

LOCK TABLES `resumenes` WRITE;
/*!40000 ALTER TABLE `resumenes` DISABLE KEYS */;
INSERT INTO `resumenes` VALUES (1,'Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.'),(2,'El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.'),(3,'Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.'),(4,'La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.'),(5,'En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.'),(6,'La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.'),(7,'Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.'),(8,'Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.'),(9,'En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.'),(10,'Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades. Mientras Barry siempre ha tenido el alma de un héroe, sus nuevos poderes le han dado la capacidad de actuar como tal.'),(11,'Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.'),(12,'\'Friends\' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafetería, el Central Perk. A pesar de los numerosos cambios que se producen en sus vidas, su amistad es inquebrantable en la dura batalla por salir adelante en sus periplos profesionales y personales.'),(13,'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir con una solterona y su hermano. Cuando cumple 13 años, Anne va a conseguir transformar su vida y el pequeño pueblo donde vive gracias a su fuerte personalidad, intelecto e imaginación. Basada en la inolvidable novela.'),(14,'Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. Cuando Mulder tenía doce años, su hermana pequeña fue secuestrada por unos desconocidos, aunque él cree que, en realidad, fue abducida por extraterrestres. Tras acabar sus estudios en la universidad de Oxford, ingresó en la Academia de Quantico, donde se ganó el apodo de \'siniestro'),(15,'Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.'),(16,'\'Westworld\' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o depravado, puede ser saciado. Está ambientada en un parque temático futurista dirigido por el Dr. Robert Ford (Anthony Hopkins). Las instalaciones cuentan con androides caracterizados del western americano, y gracias a ellos los visitantes pueden introducirse en cualquier tipo de fantasía por muy oscura que sea.'),(17,'Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera, se alían a una programadora de software para confrontar con las corporaciones informáticas dominantes de la época. El Personal de la firma y sus socios de negocio, comenzarán una carrera que cambiará la cultura en el Estado de Texas, cuna de las empresas de tecnología, casi de la misma forma que lo es hoy Silicon Valey. \\n Esta historia ficticia emula el trabajo realizado, en su momento, por la firma Compaq, cuando clonó el BIOS de las Computadoras Personales IBM, dando vida así al económico mercado de los clones. Mostrando también, a lo largo de sus 4 temporadas, el nacimiento de la arquitectura abierta de hardware, los videojuegos online, las salas de chat y de trueque de productos físicos, los BBS, y las primeras nubes computacionales, hasta la llegada de Internet (sin dejar afuera la guerra de los web browsers)'),(18,'Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por una vida.'),(19,'Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.'),(20,'2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su esposa muerta.'),(21,'Las aventuras continúan en el fantástico mundo del video juego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿dónde está el resto de la gente?'),(22,'La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La película se muestra como una serie de flashbacks y flash-forward.'),(23,'En este segundo capitulo Han pasado 27 años desde que el \'Club de los Perdedores\', formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonaron el pueblo de Derry, en el estado de Maine, que tantos problemas les había ocasionado. Sin embargo, ahora, siendo adultos, parece que no pueden escapar de su pasado. Todos deberán enfrentarse de nuevo al temible payaso para descubrir si de verdad están preparados para superar sus traumas de la infancia.'),(24,'T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos felinos y otras habilidades como súper fuerza e inteligencia, agilidad, estrategia o maestro del combate sin armas. Es bajo el liderazgo de T’Challa como Wakanda consigue convertirse en una de las naciones más ricas y tecnológicamente avanzadas del planeta.'),(25,'Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Juntos construyen un nuevo coche de carreras para Ford Motor Company y así enfrentar a Enzo Ferrari en las 24 Horas de Le Mans en Francia en 1966.'),(26,'Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.'),(27,'Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.'),(28,'De repente, sin saber cuál es su origen, aunque todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la población. El contagio se produce por mero contacto entre los seres humanos. Un thriller realista y sin efectos especiales sobre los efectos de una epidemia.'),(29,'Primera pelicula individual de la Viuda Negra en el universo cinematografico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones, y su actualidad, después de Avengers.'),(30,'Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recursos en el planeta. Con muy pocos medios deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la Tierra que todavía está vivo esperando que acudan en su rescate.'),(31,'Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que inteligencia artificial lo es todo.'),(32,'Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic Wold, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque.'),(33,'Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.'),(34,'Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. Hansen, que explora el sacrificio y el precio que representó, tanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.'),(35,'Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. Ante esta nueva amenaza, los Jaegers, robots gigantes de guerra pilotados por dos personas para sobrellevar la inmensa carga neuronal que conlleva manipularlos, ya no están a la altura de lo que se les viene encima. Será entonces cuando los supervivientes de la primera invasión, además de nuevos personajes como el hijo de Pentecost, tendrán que idear la manera de sorprender al enorme enemigo, apostando por nuevas estrategias defensivas y de ataque. Con la Tierra en ruinas e intentando reconstruirse, esta nueva batalla puede ser decisiva para el futuro.');
/*!40000 ALTER TABLE `resumenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporada`
--

DROP TABLE IF EXISTS `temporada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporada` (
  `idtemporada` int NOT NULL,
  `temporada` varchar(45) NOT NULL,
  PRIMARY KEY (`idtemporada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporada`
--

LOCK TABLES `temporada` WRITE;
/*!40000 ALTER TABLE `temporada` DISABLE KEYS */;
INSERT INTO `temporada` VALUES (1,'1'),(2,'2'),(3,'3'),(4,'4'),(5,'5'),(6,'6'),(7,'7'),(8,'8'),(9,'9'),(10,'10'),(11,'11'),(12,'12');
/*!40000 ALTER TABLE `temporada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trailers`
--

DROP TABLE IF EXISTS `trailers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trailers` (
  `idtrailers` int NOT NULL,
  `trailers` varchar(100) NOT NULL,
  PRIMARY KEY (`idtrailers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trailers`
--

LOCK TABLES `trailers` WRITE;
/*!40000 ALTER TABLE `trailers` DISABLE KEYS */;
INSERT INTO `trailers` VALUES (1,'https://www.youtube.com/embed/aOC8E8z_ifw'),(2,'https://www.youtube.com/embed/zAGVQLHvwOY'),(3,'https://www.youtube.com/embed/WBb3fojgW0Q'),(4,'https://www.youtube.com/embed/KKziOmsJxzE'),(5,'https://www.youtube.com/embed/s9APLXM9Ei8'),(6,'https://www.youtube.com/embed/qLFBcdd6Qw0'),(7,'https://www.youtube.com/embed/pWrioRji60A'),(8,'https://www.youtube.com/embed/VHSoCnDioAo'),(9,'https://www.youtube.com/embed/rBxcF-r9Ibs'),(10,'https://www.youtube.com/embed/AGQ7OkmIx4Q'),(11,'https://www.youtube.com/embed/hZeFeYSmBcg'),(12,'https://www.youtube.com/embed/BE6inv8Xh4A'),(13,'https://www.youtube.com/embed/SOVb0-2g1Q0'),(14,'https://www.youtube.com/embed/nat3u3gAVLE'),(15,'https://www.youtube.com/embed/4sYSyuuLk5g'),(16,'https://www.youtube.com/embed/BIn8iANwEog'),(17,'https://www.youtube.com/embed/XvB58bCVfng'),(18,'https://www.youtube.com/embed/XRYL5spvEcI'),(19,'https://www.youtube.com/embed/dtKMEAXyPkg');
/*!40000 ALTER TABLE `trailers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `trailersgeneroviews`
--

DROP TABLE IF EXISTS `trailersgeneroviews`;
/*!50001 DROP VIEW IF EXISTS `trailersgeneroviews`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `trailersgeneroviews` AS SELECT 
 1 AS `idfilms`,
 1 AS `titulo`,
 1 AS `poster`,
 1 AS `genero`,
 1 AS `trailers`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'trailerflix'
--

--
-- Dumping routines for database 'trailerflix'
--

--
-- Final view structure for view `actrizfilmsviews`
--

/*!50001 DROP VIEW IF EXISTS `actrizfilmsviews`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `actrizfilmsviews` AS select `g`.`idfilms` AS `idfilms`,`f`.`titulo` AS `titulo`,`r`.`idactor` AS `idactor`,`a`.`actor` AS `actor` from (((`generalfilms` `g` join `reparto` `r` on((`g`.`idreparto` = `r`.`idreparto`))) join `films` `f` on((`g`.`idfilms` = `f`.`idfilms`))) join `actor` `a` on((`r`.`idactor` = `a`.`idactor`))) where (`a`.`genero` = 'actriz') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `trailersgeneroviews`
--

/*!50001 DROP VIEW IF EXISTS `trailersgeneroviews`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `trailersgeneroviews` AS select `g`.`idfilms` AS `idfilms`,`f`.`titulo` AS `titulo`,`f`.`poster` AS `poster`,`e`.`genero` AS `genero`,`t`.`trailers` AS `trailers` from (((`generalfilms` `g` join `films` `f` on((`g`.`idfilms` = `f`.`idfilms`))) join `generos` `e` on((`g`.`idgenero` = `e`.`idgenero`))) join `trailers` `t` on((`t`.`idtrailers` = `g`.`idtrailers`))) order by `f`.`titulo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-08 11:02:53
