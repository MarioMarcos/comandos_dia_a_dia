---------------------------------------------
MODELO PARA IMPORT COM EXCLUSÃO OU INCLUSAO 
FAZ NOVAMENTE SOMENTE COM O QUE VOCES QUER
----------------------------------------------

impdp dwpub/${passwordmd}@mddes130 DUMPFILE=expdp_migrapcenterdes_19022019.dmp INCLUDE=VIEW DIRECTORY=DWPUB_DATAPUMP SQLFILE=expdp_view_20FEV2019.sql

impdp dwpub/${passwordmd}@mddes130 DUMPFILE=expdp_migrapcenterdes_19022019.dmp include=VIEW:"= ‘DQDREP.MRX_BG_TERM'" DIRECTORY=DWPUB_DATAPUMP SQLFILE=expdp_view_MRX_BG_TERM_20FEV2019.sql


EXCLUDE=TABLE:”IN (‘EMP’, ‘DEPT’)”
or:
EXCLUDE=INDEX:”= ‘MY_INDX'”
or:
INCLUDE=PROCEDURE:”LIKE ‘MY_PROC_%'”
or:
INCLUDE=TABLE:”> ‘E'”

TABLE:”= ‘EMP'”
-----------------------------------------------
