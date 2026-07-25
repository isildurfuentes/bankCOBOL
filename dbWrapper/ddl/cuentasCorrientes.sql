CREATE TABLE `cuentasCorrientes` (
  `idCliente` int NOT NULL,
  `idTipoMovimiento` int NOT NULL,
  `fechaMovimiento` date NOT NULL,
  `idMovimiento` int NOT NULL AUTO_INCREMENT,
  `importe` decimal(10,0) NOT NULL,
  `comentario` varchar(45) DEFAULT NULL,
  `saldoActual` date NOT NULL,
  PRIMARY KEY (`idMovimiento`),
  KEY `idcliente_idx` (`idCliente`),
  KEY `tipoMovimiento_idx` (`idTipoMovimiento`),
  CONSTRAINT `idcliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tipoMovimiento` FOREIGN KEY (`idTipoMovimiento`) REFERENCES `tiposMovimiento` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
