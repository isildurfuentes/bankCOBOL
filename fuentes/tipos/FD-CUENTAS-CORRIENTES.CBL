      * COPY ARCHIVO CUENTAS CORRIENTES.
       FD  CUENTA-CORRIENTE.
       01 REG-CUENTA-CORRIENTE.
        03 ID-CLIENTE        PIC 9(8).
        03 COD-ULT-MOV       PIC 99.
        03 FECH-ULT-MOV
            05 ANIO-ULT-MOV  PIC 9(4).
            05 MES-ULT-MOV   PIC 9(2).
            05 DIA-ULT-MOV   PIC 9(2).
        03 NRO-ULT-MOV       PIC 9(4).
        03 IMPORTE-MOV       PIC S9(9)V99.
        03 COMENT-MOV        PIC X(45).
        03 SALDO-ACTUAL      PIC S9(9)V99.
