      * COPY ARCHIVO CLIENTES.
       01 REG-CUENTA.
        03 ID-CLIENTE            PIC 9(20).
        03 DOC-CLIENTE.
            05 TIPO-DOC          PIC X.
            05 NUMERO-DOC        PIC X(20).
            05 LETRA-DNI         PIC X.
        03 FECHA-ALTA-CLIENTE    PIC X(8).
        03 NOMBRE-CLIENTE        PIC X(25).
        03 APELLIDOS-CLIENTE     PIC X(25).
        03 DIRECCION-CLIENTE     PIC X(45).
        03 CPOSTAL-CLIENTE       PIC 9(5).
        03 TELEF-CLIENTE         PIC X(12).
        03 EMAIL-CLIENTE         PIC X(40).
        03 TARJETA               PIC 9.
        03 PLAZOF                PIC 9.
        03 CREDITO               PIC 9.
        03 HIPOTECA              PIC 9.
