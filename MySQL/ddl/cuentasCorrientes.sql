CREATE TABLE `cuentasCorrientes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `idTipoMovimiento` int NOT NULL,
  `fechaMovimiento` date NOT NULL,
  `importe` decimal(10,2) NOT NULL,
  `comentario` varchar(45) DEFAULT NULL,
  `saldoActual` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tipoMovimiento` (`idTipoMovimiento`),
  CONSTRAINT `cuentasCorrientes_tiposMovimiento_FK` FOREIGN KEY (`id`) REFERENCES `tiposMovimiento` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;