      PROGRAM MATCHG
C-Title  : MATCHG Program
C-Program: Change MAT number in an ENDF file
C-Author : A.Trkov, IAEA, Vienna, Austria
C-Version: 2006
C-M  
C-M  Manual for Program MATCHG
C-M  =========================
C-M
C-M  Change MAT number in an ENDF file
C-M  
C-M  Instructions
C-M  
C-M
C-
      CHARACTER*66 C66
      CHARACTER*40 BLNK,FLNM,FLN1,FLN2
C* Filenames and logical file units
      DATA LIN,LOU,LKB,LTT / 1, 2, 5, 6 /
      DATA BLNK/'                                        '/
     1    ,FLN1/'endf_in.dat'/
     2    ,FLN2/'endf_ou.dat'/
C*
C* Define input parameters - Write banner to terminal
      WRITE(LTT,691) ' MATCHG - Change MAT number in ENDF file'
      WRITE(LTT,691) ' ======================================='
      WRITE(LTT,691)
C* Define the source file
   12 WRITE(LTT,691) ' Default source filename              : ',FLN1
      WRITE(LTT,691) '$          Enter new name to redefine : '
      READ (LKB,691) FLNM
      IF(FLNM.NE.BLNK) FLN1=FLNM
      OPEN(UNIT=LIN,FILE=FLN1,STATUS='OLD',ERR=12)
C* Define the output file
   14 WRITE(LTT,691) ' Default output filename              : ',FLN2
      WRITE(LTT,691) '$          Enter new name to redefine : '
      READ (LKB,691) FLNM
      IF(FLNM.NE.BLNK) FLN2=FLNM
      OPEN (UNIT=LOU,FILE=FLN2,STATUS='UNKNOWN')
C*
C* Copy header record
      READ (LIN,693) C66,MAT0,MF,MT,NS
      WRITE(LOU,693) C66,MAT0,MF,MT,NS
C* Find MAT number on the source ENDF file
      READ (LIN,693) C66,MAT0,MF,MT,NS
   18 WRITE(LTT,694) '       MAT number on source ENDF file : ',MAT0
      WRITE(LTT,691) '$                Enter new MAT number : '
      READ (LKB,692) MAT1
      IF(MAT.GT.9999) GO TO 18
      WRITE(LOU,693) C66,MAT1,MF,MT,NS
C*
C* Process the rest of the file data 
   20 CONTINUE
        READ (LIN,693,END=80) C66,MAT,MF,MT,NS
        IF(MAT.EQ.MAT0) MAT=MAT1
        WRITE(LOU,693) C66,MAT,MF,MT,NS
      GO TO 20
C* End of file processing
   80 STOP 'MATCHG Completed'
C*
  691 FORMAT(2A40)
  692 FORMAT(BN,I10)
  693 FORMAT(A66,I4,I2,I3,I5)
  694 FORMAT(A40,I4)
      END
