       CONSULTA-CLIENTE-POR-DOCUMENTO.    
           EXEC SQL
              SELECT id,
                     tipoDocumento,
                     letraDni,
                     fechaAlta,
                     nombre,
                     apellidos,
                     direccion,
                     codigoPostal,
                     telefono,
                     email,
                     tieneTarjeta,
                     tienePlazoFijo,
                     tieneCredito,
                     tieneHipoteca,
                     numeroDocumento,
                     descripcion,
                     tieneLetra
              INTO :ID-CLIENTE,                                
                   :TIPO-DOC,     
                   :LETRA-DNI,     
                   :FECHA-ALTA-CLIENTE,
                   :NOMBRE-CLIENTE,    
                   :APELLIDOS-CLIENTE, 
                   :DIRECCION-CLIENTE,
                   :CPOSTAL-CLIENTE,   
                   :TELEF-CLIENTE,     
                   :EMAIL-CLIENTE,     
                   :TARJETA,           
                   :PLAZOF,            
                   :CREDITO,           
                   :HIPOTECA,  
                   :NUMERO-DOC,  
                   :DESC-TIPO-DOC,
                   :TIENE-LETRA       
              FROM clientesTiposDocumento
              WHERE numeroDocumento = :NUMERO-DOC
           END-EXEC. 
       
       INSERTA-NUEVO-CLIENTE.
           EXEC SQL
             INSERT INTO clientes
               (tipoDocumento,
                letraDni,
                nombre,
                apellidos,
                direccion,
                codigoPostal,
                telefono,
                email,
                tieneTarjeta,
                tienePlazoFijo,
                tieneCredito,
                tieneHipoteca,
                numeroDocumento)
             VALUES
               (:TIPO-DOC,     
                :LETRA-DNI,     
                :NOMBRE-CLIENTE,    
                :APELLIDOS-CLIENTE, 
                :DIRECCION-CLIENTE,
                :CPOSTAL-CLIENTE,   
                :TELEF-CLIENTE,     
                :EMAIL-CLIENTE,     
                :TARJETA,           
                :PLAZOF,            
                :CREDITO,           
                :HIPOTECA,  
                :NUMERO-DOC)
           END-EXEC.