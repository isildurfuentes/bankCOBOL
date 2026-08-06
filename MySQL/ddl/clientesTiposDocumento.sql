CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `bankCOBOL`.`clientesTiposDocumento` AS
select
    `c`.`id` AS `id`,
    `c`.`tipoDocumento` AS `tipoDocumento`,
    `c`.`letraDni` AS `letraDni`,
    `c`.`fechaAlta` AS `fechaAlta`,
    `c`.`nombre` AS `nombre`,
    `c`.`apellidos` AS `apellidos`,
    `c`.`direccion` AS `direccion`,
    `c`.`codigoPostal` AS `codigoPostal`,
    `c`.`telefono` AS `telefono`,
    `c`.`email` AS `email`,
    `c`.`tieneTarjeta` AS `tieneTarjeta`,
    `c`.`tienePlazoFijo` AS `tienePlazoFijo`,
    `c`.`tieneCredito` AS `tieneCredito`,
    `c`.`tieneHipoteca` AS `tieneHipoteca`,
    `c`.`numeroDocumento` AS `numeroDocumento`,
    `td`.`descripcion` AS `descripcion`,
    `td`.`tieneLetra` AS `tieneLetra`
from
    (`bankCOBOL`.`clientes` `c`
join `bankCOBOL`.`tiposDocumento` `td` on
    ((`c`.`tipoDocumento` = `td`.`id`)));