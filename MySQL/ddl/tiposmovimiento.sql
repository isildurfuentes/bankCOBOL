CREATE TABLE `tiposMovimiento` (
  `id` int unsigned NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `signo` varchar(1) NOT NULL,
  `importeMinimo` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE PROCEDURE bankCOBOL.controlValoresAPN(IN valor VARCHAR(1))
BEGIN
	IF valor <> 'A' AND valor <> 'P' AND valor <> 'N' THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Los valores permitidos para el signo son A, P o N';
	END IF;
END;

CREATE DEFINER=`root`@`localhost` TRIGGER `controlSignoUpdate` BEFORE UPDATE ON `tiposMovimiento` FOR EACH ROW BEGIN
	CALL controlValoresAPN(NEW.signo);
END;

CREATE DEFINER=`root`@`localhost` TRIGGER `controlSignoInsert` BEFORE INSERT ON `tiposMovimiento` FOR EACH ROW BEGIN
	CALL controlValoresAPN(NEW.signo);
END;