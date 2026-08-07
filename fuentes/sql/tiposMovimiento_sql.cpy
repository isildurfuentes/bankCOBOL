       CONSULTA-TIPO-MOVIMIENTO.    
           EXEC SQL
              SELECT descripcion, 
                     signo,
                     importeMinimo
              INTO :DESC-TIPO-MOV, 
                   :SIGNO-TIPO-MOV,
                   :IMPORTE-MINIMO
              FROM tiposMovimiento
              WHERE id = :ID-TIPO-MOV
           END-EXEC. 
