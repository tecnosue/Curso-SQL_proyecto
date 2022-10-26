CREATE SCHEMA 'universidad' ;
USE 'universidad' ;




CREATE TABLE `professors` (
  `professor_id` int NOT NULL AUTO_INCREMENT,
  `professor_name` varchar(30) NOT NULL,
  PRIMARY KEY (`professor_id`),
  UNIQUE KEY `professors_id_UNIQUE` (`professor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


CREATE TABLE `asignaturas` (
  `asignatura_id` int NOT NULL AUTO_INCREMENT,
  `asignatura_name` varchar(30) NOT NULL,
  `asignatura_professor_id` int NOT NULL,
  PRIMARY KEY (`asignatura_id`),
  UNIQUE KEY `asignatura_id_UNIQUE` (`asignatura_id`),
  KEY `asignatura_id_idx` (`asignatura_name`),
  KEY `fk_asignatura_professors1_idx` (`asignatura_professor_id`),
  CONSTRAINT `fk_asignatura_professors1` FOREIGN KEY (`asignatura_professor_id`) REFERENCES `professors` (`professor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


CREATE TABLE `calificaciones` (
  `calificaciones_id` int NOT NULL AUTO_INCREMENT,
  `calificaciones_value` int DEFAULT NULL,
  `student_id` int NOT NULL,
  `calificaciones_asignatura_id` int NOT NULL,
  PRIMARY KEY (`calificaciones_id`),
  UNIQUE KEY `calificaciones_id_UNIQUE` (`calificaciones_id`),
  KEY `fk_calificaciones_asignatura1_idx` (`calificaciones_asignatura_id`),
  CONSTRAINT `fk_calificaciones_asignatura1` FOREIGN KEY (`calificaciones_asignatura_id`) REFERENCES `asignaturas` (`asignatura_id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci



CREATE TABLE `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(45) DEFAULT NULL,
  `student_email` varchar(45) NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_email_UNIQUE` (`student_email`),
  UNIQUE KEY `student_id_UNIQUE` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci



