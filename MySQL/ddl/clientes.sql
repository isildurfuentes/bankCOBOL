CREATE TABLE `cliente` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tipoDocumento` varchar(1) NOT NULL,
  `letraDocumento` varchar(1) NOT NULL,
  `fechaAlta` date NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `codigoPostal` int NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `tieneTarjeta` int NOT NULL,
  `tienePlazoFijo` int NOT NULL,
  `tieneCredito` int NOT NULL,
  `tieneHipoteca` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;