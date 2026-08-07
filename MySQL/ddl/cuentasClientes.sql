CREATE TABLE `cuentasClientes` (
  `idCuentaCorriente` varchar(24) NOT NULL,
  `idCliente` int unsigned NOT NULL,
  `fechaAlta` date NOT NULL,
  `fechaBaja` date DEFAULT NULL,
  PRIMARY KEY (`idCuentaCorriente`,`idCliente`),
  KEY `cuentasClientes_cliente_FK` (`idCliente`),
  CONSTRAINT `cuentasClientes_cliente_FK` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;