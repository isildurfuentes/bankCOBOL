       CONSULTA-DOC.    
           EXEC SQL
              SELECT descripcion, tieneLetra
              INTO :DESC-TIPO-DOC, :TIENE-LETRA
              FROM tiposDocumento
              WHERE id = :ID-TIPO-DOC
           END-EXEC. 