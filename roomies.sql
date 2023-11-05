-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: roomies
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
-- Table structure for table `busqueda`
--

DROP TABLE IF EXISTS `busqueda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `busqueda` (
  `ID_busqueda` int NOT NULL AUTO_INCREMENT,
  `criterios` varchar(500) DEFAULT NULL,
  `id_busqueda_usuario` int NOT NULL,
  PRIMARY KEY (`ID_busqueda`),
  KEY `id_busqueda_usuario_idx` (`id_busqueda_usuario`),
  CONSTRAINT `id_busqueda_usuario` FOREIGN KEY (`id_busqueda_usuario`) REFERENCES `usuarios` (`ID_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `busqueda`
--

LOCK TABLES `busqueda` WRITE;
/*!40000 ALTER TABLE `busqueda` DISABLE KEYS */;
INSERT INTO `busqueda` VALUES (1,'Buscando compañero de piso en zona céntrica',1),(2,'Apartamento amueblado en el centro de la ciudad',2),(3,'Amistad y actividades al aire libre',3),(4,'Casa de 3 habitaciones en zona residencial',4),(5,'Busco compañero de viaje para explorar Europa',5),(6,'Habitación individual cerca de la universidad',6),(7,'Compartir gastos de alquiler en casa amplia',7),(8,'Piso en alquiler con terraza y vistas al mar',8),(9,'Conocer gente nueva para jugar al tenis',9),(10,'Casa adosada con jardín y garaje',10),(11,'Amistades para practicar senderismo los fines de semana',11),(12,'Estudio céntrico para una persona',12),(13,'Busco colegas para montar un grupo de música',13),(14,'Apartamento para estudiantes cerca del transporte público',14),(15,'Buscando compañero de estudio para preparar exámenes',15),(16,'Piso de lujo en el corazón de la ciudad',16),(17,'Amigos para jugar al fútbol los sábados',17),(18,'Casa rural con piscina y vistas a la montaña',18),(19,'Exploradores de la naturaleza para salidas de senderismo',19),(20,'Habitación compartida en piso compartido',20),(21,'Buscando compañero de piso en zona tranquila',21),(22,'Apartamento con cocina moderna y electrodomésticos',22),(23,'Amistad para ir al cine y disfrutar de la gastronomía',23),(24,'Casa con patio trasero y barbacoa',24),(25,'Viajeros que quieran explorar Asia juntos',25),(26,'Personas que disfruten de la música para formar una banda',26),(27,'Piso céntrico cerca de restaurantes y bares',27),(28,'Amigos para compartir paseos en bicicleta',28),(29,'Casa independiente con amplio jardín',29),(30,'Compañero de piso en busca de habitación',30),(31,'Estudio amueblado con servicios incluidos',31),(32,'Amistades para practicar yoga y meditación',32),(33,'Piso con vistas panorámicas de la ciudad',33),(34,'Viajeros que buscan compañero de aventuras',34),(35,'Habitación individual en zona segura',35),(36,'Buscar personas para proyecto de voluntariado local',36),(37,'Apartamento con terraza y vistas a la playa',37),(38,'Exploradores que buscan compañeros para senderismo',38),(39,'Casa rural para escapada de fin de semana',39),(40,'Amigos para salir a correr por las mañanas',40),(41,'Estudiantes que buscan grupo de estudio para matemáticas',41),(42,'Buscando compañero de piso en zona tranquila',42),(43,'Amistades para explorar la escena culinaria de la ciudad',43),(44,'Viajeros que desean explorar América del Sur juntos',44),(45,'Personas para compartir gastos de viaje en autocaravana',45),(46,'Amigos para disfrutar de las artes y la cultura',46),(47,'Buscando compañeros de trabajo para proyecto de diseño',47),(48,'Entusiastas del surf en busca de compañeros de tabla',48),(49,'Busco personas para proyecto emprendedor',49),(50,'Compañero de piso en busca de habitación',50);
/*!40000 ALTER TABLE `busqueda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `id_comentario` int NOT NULL,
  `contenido` varchar(255) NOT NULL,
  `calificacion` int NOT NULL,
  `id_usuario` int NOT NULL,
  `id_propiedades_comentario` int DEFAULT NULL,
  PRIMARY KEY (`id_comentario`),
  KEY `id_usuario_idx` (`id_usuario`),
  KEY `fk_id_propiedades` (`id_propiedades_comentario`),
  CONSTRAINT `fk_id_propiedades` FOREIGN KEY (`id_propiedades_comentario`) REFERENCES `propiedades` (`ID_propiedades`),
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`ID_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (1,'Excelente lugar, muy cómodo y bien ubicado.',5,1,1),(2,'El propietario fue muy amable y atento.',4,2,2),(3,'Me encantó la vista desde el apartamento.',5,3,3),(4,'Buena relación calidad-precio.',4,4,4),(5,'El vecindario es tranquilo y seguro.',5,5,5),(6,'El apartamento estaba limpio y ordenado.',4,6,6),(7,'La ubicación es perfecta para estudiantes.',5,7,7),(8,'Excelente comunicación con el arrendador.',4,8,8),(9,'La casa es espaciosa y bien iluminada.',5,9,9),(10,'Muy recomendable para familias.',4,10,10),(11,'La habitación es acogedora y bien amueblada.',5,11,11),(12,'Buena conexión de transporte público.',4,12,12),(13,'El propietario es muy servicial y amigable.',5,13,13),(14,'La cocina está bien equipada para cocinar.',4,14,14),(15,'Hemos tenido una gran experiencia en esta propiedad.',5,15,15),(16,'La zona es ideal para amantes del deporte.',4,16,16),(17,'El barrio es perfecto para amantes de la comida.',5,17,17),(18,'La casa tiene un hermoso jardín.',4,18,18),(19,'El propietario responde rápidamente a las consultas.',5,19,19),(20,'La propiedad está cerca de parques y áreas verdes.',4,20,20),(21,'El apartamento es acogedor y bien mantenido.',5,21,21),(22,'Buena variedad de tiendas y restaurantes en la zona.',4,22,22),(23,'El dueño de la propiedad es muy confiable.',5,23,23),(24,'Excelente lugar para relajarse y descansar.',4,24,24),(25,'Nos encantó la proximidad a la playa.',5,25,25),(26,'Muy recomendable para quienes buscan tranquilidad.',4,26,26),(27,'La propiedad tiene una terraza increíble.',5,27,27),(28,'La ubicación es ideal para explorar la ciudad.',4,28,28),(29,'El anfitrión nos dio recomendaciones locales útiles.',5,29,29),(30,'La casa es perfecta para celebraciones familiares.',4,30,30),(31,'El apartamento es luminoso y bien ventilado.',5,31,31),(32,'Buena selección de restaurantes en las inmediaciones.',4,32,32),(33,'El dueño es flexible y acomodó nuestras necesidades.',5,33,33),(34,'La propiedad tiene una piscina increíble.',4,34,34),(35,'La ubicación es conveniente para viajes de negocios.',5,35,35),(36,'Excelente lugar para disfrutar del arte local.',4,36,36),(37,'El vecindario es amigable y acogedor.',5,37,37),(38,'La casa tiene un hermoso jardín con árboles frutales.',4,38,38),(39,'El propietario es muy hospitalario.',5,39,39),(40,'La propiedad está cerca de senderos para caminatas.',4,40,40),(41,'El apartamento tiene una vista panorámica impresionante.',5,41,41),(42,'Buena relación calidad-precio en la zona.',4,42,42),(43,'El propietario proporcionó información útil sobre la ciudad.',5,43,43),(44,'La cocina está equipada con electrodomésticos modernos.',4,44,44),(45,'Nos sentimos como en casa durante nuestra estadía.',5,45,45),(46,'El vecindario es seguro y bien iluminado por la noche.',4,46,46),(47,'El anfitrión fue muy atento a nuestras necesidades.',5,47,47),(48,'La casa es ideal para celebrar eventos especiales.',4,48,48),(49,'La ubicación es perfecta para amantes de la naturaleza.',5,49,49),(50,'El apartamento tiene una decoración encantadora.',4,50,50);
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propiedades`
--

DROP TABLE IF EXISTS `propiedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propiedades` (
  `ID_propiedades` int NOT NULL AUTO_INCREMENT,
  `ubicacion` varchar(45) DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `tipo_de_propiedad` char(45) DEFAULT NULL,
  `caracteristicas` varchar(100) DEFAULT NULL,
  `id_usuario_propiedades` int NOT NULL,
  `id_comentario_propiedades` int NOT NULL,
  `id_busqueda_propiedades` int NOT NULL,
  PRIMARY KEY (`ID_propiedades`),
  KEY `id_usuario_propiedades_idx` (`id_usuario_propiedades`),
  KEY `id_comentario_propiedades_idx` (`id_comentario_propiedades`),
  KEY `fk_id_busqueda_propiedades` (`id_busqueda_propiedades`),
  CONSTRAINT `fk_id_busqueda_propiedades` FOREIGN KEY (`id_busqueda_propiedades`) REFERENCES `busqueda` (`ID_busqueda`),
  CONSTRAINT `id_comentario_propiedades` FOREIGN KEY (`id_comentario_propiedades`) REFERENCES `comentario` (`id_comentario`),
  CONSTRAINT `id_usuario_propiedades` FOREIGN KEY (`id_usuario_propiedades`) REFERENCES `usuarios` (`ID_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propiedades`
--

LOCK TABLES `propiedades` WRITE;
/*!40000 ALTER TABLE `propiedades` DISABLE KEYS */;
INSERT INTO `propiedades` VALUES (1,'Centro de la ciudad',1200,'Apartamento','2 habitaciones, amueblado',1,1,1),(2,'Zona residencial',1500,'Casa','3 habitaciones, jardín',2,2,2),(3,'Playa',1800,'Piso','Vistas al mar, terraza',3,3,3),(4,'Universidad',800,'Habitación','Individual, cerca de la universidad',4,4,4),(5,'Centro histórico',2200,'Apartamento','Amueblado, balcón',5,5,5),(6,'Zona residencial',1300,'Casa','4 habitaciones, jardín amplio',6,6,6),(7,'Playa',1600,'Piso','Vistas al mar, balcón',7,7,7),(8,'Cerca del trabajo',950,'Apartamento','1 habitación, amueblado',8,8,8),(9,'Zona residencial',2000,'Casa','5 habitaciones, piscina',9,9,9),(10,'Centro de la ciudad',1100,'Apartamento','2 habitaciones, céntrico',10,10,10),(11,'Montaña',1750,'Chalet','Vistas panorámicas, 3 habitaciones',11,11,11),(12,'Playa',2200,'Piso','Vistas al mar, piscina comunitaria',12,12,12),(13,'Cerca de la universidad',750,'Habitación','Compartida, estudiantes',13,13,13),(14,'Zona residencial',1350,'Casa','4 habitaciones, jardín trasero',14,14,14),(15,'Centro de la ciudad',1250,'Apartamento','Amueblado, céntrico',15,15,15),(16,'Montaña',1850,'Chalet','Vistas a la montaña, 4 habitaciones',16,16,16),(17,'Playa',2400,'Piso','Vistas al mar, acceso a la playa',17,17,17),(18,'Cerca del trabajo',980,'Apartamento','1 habitación, cerca de la oficina',18,18,18),(19,'Zona residencial',2100,'Casa','5 habitaciones, gran jardín',19,19,19),(20,'Centro de la ciudad',1150,'Apartamento','3 habitaciones, zona turística',20,20,20),(21,'Montaña',1700,'Chalet','Vistas a la montaña, piscina privada',21,21,21),(22,'Playa',2300,'Piso','Vistas al mar, balcón amplio',22,22,22),(23,'Cerca de la universidad',780,'Habitación','Estudiantes, tranquila',23,23,23),(24,'Zona residencial',1400,'Casa','4 habitaciones, garaje doble',24,24,24),(25,'Centro de la ciudad',1300,'Apartamento','Amueblado, cerca de todo',25,25,25),(26,'Montaña',1950,'Chalet','Vistas panorámicas, piscina climatizada',26,26,26),(27,'Playa',2500,'Piso','Vistas al mar, acceso directo a la playa',27,27,27),(28,'Cerca del trabajo',1000,'Apartamento','1 habitación, zona comercial',28,28,28),(29,'Zona residencial',2200,'Casa','6 habitaciones, amplio jardín',29,29,29),(30,'Centro de la ciudad',1200,'Apartamento','3 habitaciones, zona de ocio',30,30,30),(31,'Montaña',1800,'Chalet','Vistas a la montaña, jardín zen',31,31,31),(32,'Playa',2600,'Piso','Vistas al mar, terraza grande',32,32,32),(33,'Cerca de la universidad',820,'Habitación','Estudiantes, ambiente amigable',33,33,33),(34,'Zona residencial',1450,'Casa','5 habitaciones, piscina climatizada',34,34,34),(35,'Centro de la ciudad',1350,'Apartamento','Amueblado, zona cultural',35,35,35),(36,'Montaña',1900,'Chalet','Vistas a la montaña, jardín mediterráneo',36,36,36),(37,'Playa',2700,'Piso','Vistas al mar, acceso a la playa privado',37,37,37),(38,'Cerca del trabajo',1050,'Apartamento','1 habitación, cerca de transporte público',38,38,38),(39,'Zona residencial',2300,'Casa','4 habitaciones, piscina y jacuzzi',39,39,39),(40,'Centro de la ciudad',1400,'Apartamento','3 habitaciones, zona histórica',40,40,40),(41,'Montaña',2000,'Chalet','Vistas a la montaña, jardín tropical',41,41,41),(42,'Playa',2800,'Piso','Vistas al mar, playa privada',42,42,42),(43,'Cerca de la universidad',850,'Habitación','Estudiantes, zona de estudio',43,43,43),(44,'Zona residencial',1500,'Casa','6 habitaciones, sala de juegos',44,44,44),(45,'Centro de la ciudad',1450,'Apartamento','2 habitaciones, zona comercial',45,45,45),(46,'Zona residencial',1550,'Casa','4 habitaciones, amplio jardín',46,46,46),(47,'Centro de la ciudad',1420,'Apartamento','2 habitaciones, céntrico',47,47,47),(48,'Montaña',1990,'Chalet','Vistas a la montaña, piscina climatizada',48,48,48),(49,'Playa',2780,'Piso','Vistas al mar, acceso a la playa privado',49,49,49),(50,'Cerca de la universidad',860,'Habitación','Estudiantes, zona de estudio',50,50,50);
/*!40000 ALTER TABLE `propiedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reglas`
--

DROP TABLE IF EXISTS `reglas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reglas` (
  `ID_reglas` int NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) DEFAULT NULL,
  `id_propiedades_reglas` int NOT NULL,
  `id_busqueda_reglas` int NOT NULL,
  `id_usuario_reglas` int NOT NULL,
  PRIMARY KEY (`ID_reglas`),
  KEY `id_propiedades_reglas_idx` (`id_propiedades_reglas`),
  KEY `fk_id_busqueda_reglas` (`id_busqueda_reglas`),
  KEY `fk_usuario_reglas` (`id_usuario_reglas`),
  CONSTRAINT `fk_id_busqueda_reglas` FOREIGN KEY (`id_busqueda_reglas`) REFERENCES `busqueda` (`ID_busqueda`),
  CONSTRAINT `fk_usuario_reglas` FOREIGN KEY (`id_usuario_reglas`) REFERENCES `usuarios` (`ID_usuario`),
  CONSTRAINT `id_propiedades_reglas` FOREIGN KEY (`id_propiedades_reglas`) REFERENCES `propiedades` (`ID_propiedades`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reglas`
--

LOCK TABLES `reglas` WRITE;
/*!40000 ALTER TABLE `reglas` DISABLE KEYS */;
INSERT INTO `reglas` VALUES (1,'No se permite fumar en el interior de la casa.',1,1,1),(2,'Se requiere mantener limpio el área común.',2,2,2),(3,'Horarios de silencio entre las 10 PM y las 7 AM.',3,3,3),(4,'No se admiten mascotas en la propiedad.',4,4,4),(5,'El acceso a la piscina está restringido a ciertas horas.',5,5,5),(6,'Se requiere separar la basura y reciclar.',6,6,6),(7,'No se permiten fiestas ni eventos en la casa.',7,7,7),(8,'Es obligatorio respetar la privacidad de los demás.',8,8,8),(9,'Se requiere el pago puntual de los gastos comunes.',9,9,9),(10,'No se permiten modificaciones estructurales en la vivienda.',10,10,10),(11,'No se admiten invitados sin previo aviso.',11,11,11),(12,'Los daños causados deben ser reparados por el inquilino.',12,12,12),(13,'Se requiere el mantenimiento regular del jardín.',13,13,13),(14,'No se permite el uso de la chimenea sin supervisión.',14,14,14),(15,'Se prohíbe el almacenamiento de materiales peligrosos.',15,15,15),(16,'No se permiten actividades comerciales en la propiedad.',16,16,16),(17,'El uso del gimnasio está sujeto a ciertas reglas.',17,17,17),(18,'Es importante ahorrar agua y energía en todo momento.',18,18,18),(19,'No se permiten mascotas de gran tamaño.',19,19,19),(20,'Los inquilinos deben respetar las normas de reciclaje.',20,20,20),(21,'No se permite el estacionamiento en áreas restringidas.',21,21,21),(22,'El acceso a la terraza solo está permitido de día.',22,22,22),(23,'No se admiten fiestas ruidosas en la propiedad.',23,23,23),(24,'Se requiere notificar las ausencias prolongadas.',24,24,24),(25,'No se permite fumar en el balcón.',25,25,25),(26,'Los inquilinos deben cuidar las áreas comunes.',26,26,26),(27,'Se requiere autorización para cambios en la decoración.',27,27,27),(28,'No se permiten animales exóticos como mascotas.',28,28,28),(29,'Es obligatorio cumplir con las normas de seguridad.',29,29,29),(30,'No se permite almacenar objetos en áreas comunes.',30,30,30),(31,'Los inquilinos deben mantener ordenadas las cocinas.',31,31,31),(32,'No se permiten ruidos molestos en horarios de descanso.',32,32,32),(33,'El acceso al estacionamiento está sujeto a restricciones.',33,33,33),(34,'Se requiere notificar la llegada de invitados con anticipación.',34,34,34),(35,'No se permite el uso de velas sin supervisión.',35,35,35),(36,'Los inquilinos deben respetar las normas de la piscina.',36,36,36),(37,'Se requiere mantener las áreas de juego limpias.',37,37,37),(38,'No se permite utilizar el garaje para fines no autorizados.',38,38,38),(39,'Los inquilinos deben cumplir con las normas de recogida de basura.',39,39,39),(40,'No se permite instalar sistemas de seguridad sin autorización.',40,40,40),(41,'El uso de la lavandería está sujeto a ciertas reglas.',41,41,41),(42,'Es obligatorio respetar las normas de acceso a internet.',42,42,42),(43,'No se permiten cambios en la infraestructura eléctrica.',43,43,43),(44,'Los inquilinos deben notificar las reparaciones necesarias.',44,44,44),(45,'Se prohíbe el almacenamiento de objetos personales en áreas comunes.',45,45,45),(46,'No se permite el acceso a áreas restringidas.',46,46,46),(47,'El uso de la barbacoa está sujeto a ciertas restricciones.',47,47,47),(48,'Es obligatorio informar sobre problemas de plomería.',48,48,48),(49,'No se permiten modificaciones en sistemas de calefacción.',49,49,49);
/*!40000 ALTER TABLE `reglas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `ID_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `edad` int NOT NULL,
  `ocupacion` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `estilo_de_vida` varchar(300) NOT NULL,
  `tipo` int NOT NULL,
  PRIMARY KEY (`ID_usuario`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Ana Pérez','ana.perez@example.com',28,'Arquitecta','clave123','Activo',1),(2,'Luis Gómez','luis.gomez@example.com',32,'Ingeniero','contraseña456','Activo',2),(3,'María Rodríguez','maria.rodriguez@example.com',25,'Estudiante','p4ssw0rd','Activo',1),(4,'Pedro Sánchez','pedro.sanchez@example.com',24,'Programador','securepwd','Sedentario',3),(5,'Laura Martínez','laura.martinez@example.com',31,'Médica','12345678','Activo',2),(6,'Carlos López','carlos.lopez@example.com',29,'Abogado','mypassword','Activo',1),(7,'Isabel Torres','isabel.torres@example.com',27,'Diseñadora','password123','Activo',1),(8,'Manuel Jiménez','manuel.jimenez@example.com',35,'Chef','letmein','Activo',2),(9,'Sofía Ramírez','sofia.ramirez@example.com',26,'Ingeniera','passw0rd','Activo',2),(10,'Javier Medina','javier.medina@example.com',30,'Contador','access123','Sedentario',3),(11,'Marta Guerrero','marta.guerrero@example.com',29,'Estudiante','12345','Activo',1),(12,'Andrés Vargas','andres.vargas@example.com',33,'Músico','qwerty','Activo',2),(13,'Elena Mendoza','elena.mendoza@example.com',28,'Dentista','password','Activo',2),(14,'Raúl Silva','raul.silva@example.com',26,'Periodista','abcdefg','Activo',1),(15,'Natalia Díaz','natalia.diaz@example.com',29,'Ingeniera','123456','Activo',1),(16,'Fernando Romero','fernando.romero@example.com',34,'Médico','password1','Sedentario',3),(17,'Carmen Guzmán','carmen.guzman@example.com',27,'Profesora','iloveyou','Activo',1),(18,'Alberto Ortega','alberto.ortega@example.com',31,'Abogado','letmein1','Activo',2),(19,'Beatriz Soto','beatriz.soto@example.com',25,'Diseñadora','mypassword1','Activo',1),(20,'Antonio Martínez','antonio.martinez@example.com',26,'Ingeniero','password1234','Activo',1),(21,'Sara Pérez','sara.perez@example.com',33,'Psicóloga','secure123','Sedentario',3),(22,'Diego Ríos','diego.rios@example.com',28,'Contador','welcome','Activo',1),(23,'Valeria Fernández','valeria.fernandez@example.com',32,'Arquitecta','pass123','Activo',1),(24,'José López','jose.lopez@example.com',30,'Músico','p@ssw0rd','Activo',2),(25,'Nora Torres','nora.torres@example.com',27,'Estudiante','admin123','Activo',1),(26,'Hugo Medina','hugo.medina@example.com',29,'Cocinero','password2023','Activo',2),(27,'Mónica Díaz','monica.diaz@example.com',24,'Ingeniera','1qaz2wsx','Activo',2),(28,'Pablo Sánchez','pablo.sanchez@example.com',35,'Médico','letmein2023','Sedentario',3),(29,'Silvia González','silvia.gonzalez@example.com',26,'Diseñadora','iloveyou2023','Activo',1),(30,'Julio García','julio.garcia@example.com',28,'Profesor','abc123','Activo',1),(31,'Alicia Muñoz','alicia.munoz@example.com',30,'Ingeniera','mysecret','Activo',2),(32,'Roberto Vargas','roberto.vargas@example.com',29,'Arquitecto','2023password','Activo',1),(33,'Lourdes Rodríguez','lourdes.rodriguez@example.com',31,'Psicóloga','qwerty2023','Sedentario',3),(34,'Ernesto González','ernesto.gonzalez@example.com',25,'Ingeniero','pa$$w0rd','Activo',1),(35,'Diana Guzmán','diana.guzman@example.com',32,'Médica','welcome2023','Activo',2),(36,'Joaquín Díaz','joaquin.diaz@example.com',27,'Músico','12345secret','Activo',1),(37,'Raquel López','raquel.lopez@example.com',29,'Profesora','iloveyou23','Activo',1),(38,'Federico Mendoza','federico.mendoza@example.com',33,'Dentista','2023letmein','Sedentario',3),(39,'Olga Pérez','olga.perez@example.com',28,'Contadora','secret123','Activo',1),(40,'Arturo Soto','arturo.soto@example.com',26,'Abogado','mysecret23','Activo',2),(41,'Beatriz Martínez','beatriz.martinez@example.com',29,'Profesora','2023password','Activo',1),(42,'Sergio Ortega','sergio.ortega@example.com',30,'Ingeniero','iloveyou2023','Activo',1),(43,'Cristina Gómez','cristina.gomez@example.com',31,'Psicóloga','abc12323','Sedentario',3),(44,'Luisa Torres','luisa.torres@example.com',27,'Contadora','mypassword23','Activo',1),(45,'Rodrigo Sánchez','rodrigo.sanchez@example.com',29,'Músico','pa$$w0rd2023','Activo',2),(46,'Marcela Díaz','marcela.diaz@example.com',33,'Estudiante','12345secret23','Activo',1),(47,'Carlos Vargas','carlos.vargas@example.com',28,'Ingeniero','iloveyou23','Activo',1),(48,'Ana Goyuu','AnaGoyuu@example.com',32,'Abogada','welcome23','Sedentario',3),(49,'Patricia Ramos','patricia.ramos@example.com',29,'Ingeniera','nuevapassword','Activo',1),(50,'Alejandro Pérez','alejandro.perez@example.com',34,'Médico','securepass','Sedentario',3);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-04 23:21:59
