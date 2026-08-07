CREATE TABLE `movimientosCuentas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `idTipoMovimiento` int NOT NULL,
  `fechaMovimiento` date NOT NULL DEFAULT (curdate()),
  `importe` decimal(10,2) NOT NULL,
  `comentario` varchar(45) DEFAULT NULL,
  `saldoActual` decimal(10,2) NOT NULL,
  `idCuentaCorriente` varchar(24) NOT NULL,
  `idCliente` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tipoMovimiento` (`idTipoMovimiento`),
  KEY `movimientosCuentas_cuentasClientes_FK` (`idCuentaCorriente`,`idCliente`),
  CONSTRAINT `cuentasCorrientes_tiposMovimiento_FK` FOREIGN KEY (`id`) REFERENCES `tiposMovimiento` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `movimientosCuentas_cuentasClientes_FK` FOREIGN KEY (`idCuentaCorriente`, `idCliente`) REFERENCES `cuentasClientes` (`idCuentaCorriente`, `idCliente`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE PROCEDURE bankCOBOL.evitaUpdateDelete(IN accion varchar(10))
BEGIN
	DECLARE v_mensaje VARCHAR(255);
    SET v_mensaje = CONCAT('No es posible ', accion, ' datos en esta tabla');
	SIGNAL SQLSTATE '46000'
		SET MESSAGE_TEXT = v_mensaje;
END;

CREATE DEFINER=`root`@`localhost` TRIGGER `evitaDelete` BEFORE DELETE ON `movimientosCuentas` FOR EACH ROW BEGIN
	call evitaUpdateDelete('borrar');
END;

CREATE DEFINER=`root`@`localhost` TRIGGER `evitaUpdate` BEFORE UPDATE ON `movimientosCuentas` FOR EACH ROW BEGIN
	call evitaUpdateDelete('actualizar');
END;