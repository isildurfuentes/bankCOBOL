CREATE TABLE `tarjetas` (
  `numero` bigint unsigned NOT NULL,
  `idCliente` int unsigned NOT NULL,
  `idCuentaCorriente` varchar(24) NOT NULL,
  `CC` int unsigned NOT NULL,
  `fechaCaducidad` date NOT NULL,
  `limiteMensual` float DEFAULT '1000',
  `fechaLiquidada` date NOT NULL,
  `creditoAcumuladoMes` float NOT NULL DEFAULT '0',
  `fechaProximaLiquidacion` date NOT NULL,
  PRIMARY KEY (`numero`),
  UNIQUE KEY `tarjetas_unique` (`numero`,`idCliente`,`idCuentaCorriente`),
  KEY `tarjetas_cuentasClientes_FK` (`idCuentaCorriente`,`idCliente`),
  CONSTRAINT `tarjetas_cuentasClientes_FK` FOREIGN KEY (`idCuentaCorriente`, `idCliente`) REFERENCES `cuentasClientes` (`idCuentaCorriente`, `idCliente`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;