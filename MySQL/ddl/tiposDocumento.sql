CREATE TABLE `tiposDocumento` (
  `id` varchar(1) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `tieneLetra` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;