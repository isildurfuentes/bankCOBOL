# bankCOBOL
Ejercicio básico de mantenimiento de cuenta bancaria

# Propósito.
Practicar codificación COBOL, atacando una base de datos MySQL.

# Base de datos

En el directorio dbWrapper/ddl están las sentencias de creación de los objetos de base de datos MySQL. Los ficheros pueden ser .sql para sentencias DDL, o .csv para sentencias DML.

Los siguientes pasos deben ejecutarse, en el orden indicado, para el correcto funcionamiento de la aplicación. Consulte el manual de usuario de MySQL y MySQL Workbench para más información sobre cómo ejecutarlos.

1. Crear base de datos (banCOBOL.sql)
2. Crear tabla tiposMovimiento (tiposMovimiento.sql)
3. Crear tabla clientes (clientes.sql)
4. Crear tabla cuentasCorrientes (cuentasCorrientes.sql)
5. Insertar los datos de tiposMovimiento (tiposMovimiento_data.csv)

# Compilación

Este ejercicio se basa en la utilización del precompilador gixsql.

Pasos efectuados:

- Instalado Ubuntu 20.04.6
- Instalado .deb de gixsql para Ubuntu 20.04

**Comandos utilizados:**

gixpp -e -S -p -z a -I/usr/share/gixsql/copy -I./fuentes/sql -I./fuentes/tipos -E ".cpy" -i bankCOBOL.cbl -o bankCOBOL.cbsql

cobc -x -I/usr/share/gixsql/copy -I./fuentes/sql bankCOBOL.cbsql -L /usr/lib -lgixsql






