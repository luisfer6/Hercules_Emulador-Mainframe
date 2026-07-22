//CURSO1JC JOB JC1HOLA,'CURSO1',NOTIFY=&SYSUID,                         
// MSGCLASS=Q,CLASS=A,MSGLEVEL=(1,1),REGION=0M,TIME=(0,7)               
//****************************************************************      
//* COMPILAR, LINKEDITAR Y EJECUTAR EL PGM PROG1  (HERCULES)      -     
//****************************************************************      
//STEP0 EXEC IGYWCLG,PARM.COBOL='LIB,APOST,XREF,MAP,OFFSET'             
//COBOL.SYSIN DD DSN=CURSO1.LIB.SOURCE(PROG1),DISP=SHR                  
//STEPLIB DD DSN=CURSO1.LIB.LOADLIB,DISP=SHR                            
//LKED.SYSLMOD DD DSN=CURSO1.LIB.LOADLIB(PROG1),DISP=SHR                