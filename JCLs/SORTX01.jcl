//SORTX01 JOB PARM1,'TEST JOB',NOTIFY=&SYSUID,                       
//            MSGCLASS=A,CLASS=A,MSGLEVEL=(1,1),REGION=0M,TIME=(0,7) 
//*    BORRADO ARCHIVO                                               
//DELETE   EXEC PGM=IDCAMS                                           
//SYSPRINT DD SYSOUT=*                                               
//SYSIN    DD *                                                      
          DEL CURSO1.LIB.FILES(CLIENTE3)                             
          DEL CURSO1.LIB.FILES(CLIENTE)
  SET MAXCC = 0                                                      
//* VERIFICAR EXISTENCIA DE ARCHIVOS                                 
//STEP1    EXEC PGM=IDCAMS                                           
//SYSPRINT DD SYSOUT=*                                               
//SYSIN    DD *                                                      
  LISTCAT ENT('CURSO1.LIB.FILES(CLIENTE1)') ALL                      
  LISTCAT ENT('CURSO1.LIB.FILES(CLIENTE2)') ALL                      
/*                                                                   
//CONDCHK  IF (STEP1.RC EQ 0) THEN                                   
//MSG      EXEC PGM=IEBGENER                                         
//SYSUT1   DD *                                                      
MENSAJE: EL ARCHIVO 'CURSO1.LIB.FILES(CLIENTE1)' EXISTE.    
MENSAJE: EL ARCHIVO 'CURSO1.LIB.FILES(CLIENTE2)' EXISTE.    
/*                                                          
//SYSUT2   DD SYSOUT=*                                      
//SYSPRINT DD SYSOUT=*                                      
//SYSIN    DD DUMMY                                         
//         ENDIF                                            
/*                                                          
//* CONCATENAR ARCHIVOS CLIENTE1 Y CLIENTE2 EN CLIENTE3     
//STEP2    EXEC PGM=IEBGENER                                
//SYSUT1   DD DISP=SHR,DSN=CURSO1.LIB.FILES(CLIENTE1)       
//         DD DISP=SHR,DSN=CURSO1.LIB.FILES(CLIENTE2)       
//SYSUT2   DD DISP=OLD,DSN=CURSO1.LIB.FILES(CLIENTE3)       
//SYSPRINT DD SYSOUT=*                                      
//SYSIN    DD DUMMY                                         
/*                                                          
//* ORDENAR FICHERO                                         
//STEP3    EXEC PGM=SORT                                    
//SORTIN   DD DISP=SHR,DSN=CURSO1.LIB.FILES(CLIENTE3) 
//* SORTOUT  DD DISP=(NEW,CATLG,DELETE),              
//SORTOUT  DD DISP=OLD,                               
//         DSN=CURSO1.LIB.FILES(CLIENTE),             
//         DCB=(RECFM=FB,LRECL=80,BLKSIZE=800),       
//         SPACE=(TRK,(1,1,1)),UNIT=SYSDA             
//SYSOUT   DD SYSOUT=*                                
//SYSIN    DD *                                       
  SORT FIELDS=(8,13,CH,A)                             
  END                                                 
/*                                                    