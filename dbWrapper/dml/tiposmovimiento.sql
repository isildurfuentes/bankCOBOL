CREATE TABLE `tiposMovimiento` (
  `id` int NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `signo` varchar(1) NOT NULL,
  `importeMinimo` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci