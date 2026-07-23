       IDENTIFICATION DIVISION.                                         
       PROGRAM-ID. COBPARM                                              
      * ACEPTA PARAMETRO DESDE SYSIN DEL JCL ORIGEN, DISPLAYA CONTENIDO 
       ENVIRONMENT DIVISION.                                            
       CONFIGURATION SECTION.                                           
       SPECIAL-NAMES.                                                   
            DECIMAL-POINT IS COMMA.                                     
       DATA DIVISION.                                                   
       WORKING-STORAGE SECTION.                                         
       01  WS-MES              PIC X(80) VALUE SPACES.                  
       PROCEDURE DIVISION.                                              
       INICIO.                                                          
           ACCEPT  WS-MES FROM SYSIN.                                   
           DISPLAY WS-MES.                                              
           STOP RUN.                                                    