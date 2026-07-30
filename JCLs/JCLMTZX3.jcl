//JCLMTZ3 JOB PARM1,'TEST JOB',NOTIFY=&SYSUID,                         
//            MSGCLASS=Q,CLASS=A,MSGLEVEL=(1,1),REGION=0M,TIME=(0,7)   
//****************************************************************     
//* STEP1 COMPILAR, LINKEDITAR NO EJECUTA EL PGM COBPARM               
//****************************************************************     
//STEP1    EXEC IGYWCL,PARM.COBOL='LIB,APOST,XREF,MAP,OFFSET'          
//COBOL.SYSIN  DD DSN=CURSO1.LIB.SOURCE(MATRIZX3),DISP=SHR             
//STEPLIB      DD DSN=CURSO1.LIB.LOADLIB,DISP=SHR                      
//LKED.SYSLMOD DD DSN=CURSO1.LIB.LOADLIB(MATRIZX3),DISP=SHR            
//****************************************************************     
//* STEP2 EJECUCION DEL PROGRAMA                                       
//****************************************************************     
//STEP2    EXEC PGM=MATRIZX3                                           
//STEPLIB      DD DSN=CURSO1.LIB.LOADLIB,DISP=SHR                      
//SYSOUT       DD SYSOUT=*                                             