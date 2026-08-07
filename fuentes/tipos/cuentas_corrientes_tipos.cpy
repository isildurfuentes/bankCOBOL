      * COPY ARCHIVO CUENTAS CORRIENTES.
       01 REG-CUENTA-CORRIENTE.
        03 ID-CTA-COR        PIC 9(8).
        03 TIPO-MOV          PIC 99.
        03 FECH-MOV
            05 ANIO-MOV      PIC 9(4).
            05 MES-MOV       PIC 9(2).
            05 DIA-MOV       PIC 9(2).
        03 NRO-MOV           PIC 9(4).
        03 IMPORTE-MOV       PIC S9(10)V99.
        03 COMENT-MOV        PIC X(45).
        03 SALDO-ACTUAL      PIC S9(10)V99.
