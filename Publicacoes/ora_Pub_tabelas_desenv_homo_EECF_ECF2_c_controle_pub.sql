
1) FAVOR PUBLICAR AS TABELAS ABAIXO DO BANCO DE DESENVOLVIMENTO (USUÁRIO ECF2) DW NO BANCO DE HOMOLOGAÇÃO DW (USUÁRIO EECF) E ENVIAR LOG DE APLICAÇÃO

WF_EECF_ATIN
WF_EECF_ATVE
WF_EECF_AVIS
WF_EECF_BAPA
WF_EECF_COEL
WF_EECF_COEX
WF_EECF_COIM
WF_EECF_CONS
WF_EECF_DOCE
WF_EECF_ECOE
WF_EECF_EECF
WF_EECF_ESCP
WF_EECF_EXPO
WF_EECF_FCIN
WF_EECF_IDST
WF_EECF_IMPO
WF_EECF_IRCS
WF_EECF_PAGE
WF_EECF_PAGS
WF_EECF_PCON
WF_EECF_PEXT
WF_EECF_PMEP
WF_EECF_RDST
WF_EECF_RECE
WF_EECF_REGL
WF_EECF_REND
WF_EECF_RESU
WF_EECF_ROPG
WF_EECF_RORC
WF_EECF_SIGN
WF_EECF_SUCE
WF_EECF_VCOE
WF_EECF_VEST
WF_EECF_MEAF
WF_EECF_BCIF
WD_EECF_EECF

WD_EECF_MEAF_METODO_AV_ETQ


9. Observações adicionais


Enviar logs de aplicacao de objetos.

=================================================================================
QUANDO PRECISAR PUBLICAR DO DESENVOLVIMENTO (ECF2) para a homologacao ou outro que tenha o EECF
USAR ESSES COMANDOS EM MASSA AQUI POR ANDRÉ

--SE VOCÊ QUISER FAZER UMA PUBLICAÇAO COMPLETA NAO ESQUECA DE FAZER O SEGUINTE ANTES DE COMEÇAR

--Use o @extrai_indices para coletar todas as ddls dos indices
--Apague todos os indices com DROP indices
--depois execute os select/inserts abaixo
--depois execute novamente as ddls dos indices para completar toda publicação.

--por fim confira os counts 


--POREM SE VOCE QUISER USAR ESTE PROCESSO PARA PUBLICAO NORMAL MANUALMENTE USANDO INSERT QUALQUER É SÓ ALTERAR
--ESTE AQUI E O RESTO É BEM PARECIDO, E O MELHOR E QUE VAI OS DADOS DA PUBLICACAO PARA O CONTROLE DE PUBLICACAO


--NÃO ESQUECER DE COLOCAR A DATA DA SUA PUBLICAÇÃO NO FINAl DO ARQUIVO PARAM.TXT POIS VAI PEGAR ESTA DATA
-

set lines 900 --antes

comando pronto -- tem que ter aspas nos nomes das tabelas



--------------------------------------------------------------------------------------------------------------
--NÃO PARTICIONADAS - FULL

SELECT '/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH ' || owner || ' ' || table_name || ' TODA TODA ' || TABLE_NAME || ' > /opt/approtinas/pre_21761_dwcorp/' || owner || '/' || table_name || '/insert' || TABLE_NAME || '.nohup &' 
FROM dba_tables 
where owner = 'EECF' 
and TABLE_NAME IN ('TABELA_FULL_COLOCAR_AQUI'
);

--RESULTADO:
SELECT '/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH ' || owner || ' ' || table_name || ' TODA TODA ' || TABLE_NAME || ' > /opt/approtinas/pre_21761_dwcorp/' || owner || '/' || table_name || '/insert' ||TABLE_NAME || '.nohup &' FROM dba_tables where owner = 'EECF' and TABLE_NAME IN ('WF_EECF_ATIN', 
'WF_EECF_AVIS',
'WF_EECF_BAPA',
'WF_EECF_COEL',
'WF_EECF_COEX',
'WF_EECF_COIM',
'WF_EECF_CONS',
'WF_EECF_DOCE',
'WF_EECF_ECOE',
'WF_EECF_EECF',
'WF_EECF_ESCP',
'WF_EECF_EXPO',
'WF_EECF_FCIN',
'WF_EECF_IDST',
'WF_EECF_IMPO',
'WF_EECF_IRCS',
'WF_EECF_PAGE',
'WF_EECF_PAGS',
'WF_EECF_PCON',
'WF_EECF_PEXT',
'WF_EECF_PMEP',
'WF_EECF_RDST',
'WF_EECF_RECE',
'WF_EECF_REGL',
'WF_EECF_REND',
'WF_EECF_RESU',
'WF_EECF_ROPG',
'WF_EECF_RORC',
'WF_EECF_SIGN',
'WF_EECF_SUCE',
'WF_EECF_VCOE',
'WF_EECF_VEST',
'WF_EECF_MEAF',
'WF_EECF_BCIF',
'WD_EECF_EECF');

/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_VEST TODA TODA WF_EECF_VEST > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_VEST/insertWF_EECF_VEST.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_VCOE TODA TODA WF_EECF_VCOE > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_VCOE/insertWF_EECF_VCOE.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_SUCE TODA TODA WF_EECF_SUCE > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_SUCE/insertWF_EECF_SUCE.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_SIGN TODA TODA WF_EECF_SIGN > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_SIGN/insertWF_EECF_SIGN.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_RORC TODA TODA WF_EECF_RORC > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_RORC/insertWF_EECF_RORC.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_ROPG TODA TODA WF_EECF_ROPG > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_ROPG/insertWF_EECF_ROPG.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_RESU TODA TODA WF_EECF_RESU > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_RESU/insertWF_EECF_RESU.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_REND TODA TODA WF_EECF_REND > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_REND/insertWF_EECF_REND.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_REGL TODA TODA WF_EECF_REGL > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_REGL/insertWF_EECF_REGL.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_RECE TODA TODA WF_EECF_RECE > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_RECE/insertWF_EECF_RECE.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_RDST TODA TODA WF_EECF_RDST > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_RDST/insertWF_EECF_RDST.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_PMEP TODA TODA WF_EECF_PMEP > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_PMEP/insertWF_EECF_PMEP.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_PEXT TODA TODA WF_EECF_PEXT > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_PEXT/insertWF_EECF_PEXT.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_PCON TODA TODA WF_EECF_PCON > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_PCON/insertWF_EECF_PCON.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_PAGS TODA TODA WF_EECF_PAGS > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_PAGS/insertWF_EECF_PAGS.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_PAGE TODA TODA WF_EECF_PAGE > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_PAGE/insertWF_EECF_PAGE.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_MEAF TODA TODA WF_EECF_MEAF > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_MEAF/insertWF_EECF_MEAF.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_IRCS TODA TODA WF_EECF_IRCS > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_IRCS/insertWF_EECF_IRCS.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_IMPO TODA TODA WF_EECF_IMPO > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_IMPO/insertWF_EECF_IMPO.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_IDST TODA TODA WF_EECF_IDST > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_IDST/insertWF_EECF_IDST.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_FCIN TODA TODA WF_EECF_FCIN > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_FCIN/insertWF_EECF_FCIN.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_EXPO TODA TODA WF_EECF_EXPO > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_EXPO/insertWF_EECF_EXPO.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_ESCP TODA TODA WF_EECF_ESCP > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_ESCP/insertWF_EECF_ESCP.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_EECF TODA TODA WF_EECF_EECF > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_EECF/insertWF_EECF_EECF.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_ECOE TODA TODA WF_EECF_ECOE > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_ECOE/insertWF_EECF_ECOE.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_DOCE TODA TODA WF_EECF_DOCE > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_DOCE/insertWF_EECF_DOCE.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_CONS TODA TODA WF_EECF_CONS > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_CONS/insertWF_EECF_CONS.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_COIM TODA TODA WF_EECF_COIM > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_COIM/insertWF_EECF_COIM.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_COEX TODA TODA WF_EECF_COEX > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_COEX/insertWF_EECF_COEX.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_COEL TODA TODA WF_EECF_COEL > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_COEL/insertWF_EECF_COEL.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_BCIF TODA TODA WF_EECF_BCIF > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_BCIF/insertWF_EECF_BCIF.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_BAPA TODA TODA WF_EECF_BAPA > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_BAPA/insertWF_EECF_BAPA.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_AVIS TODA TODA WF_EECF_AVIS > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_AVIS/insertWF_EECF_AVIS.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_ATIN TODA TODA WF_EECF_ATIN > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_ATIN/insertWF_EECF_ATIN.nohup &
/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WD_EECF_EECF TODA TODA WD_EECF_EECF > /opt/approtinas/pre_21761_dwcorp/EECF/WD_EECF_EECF/insertWD_EECF_EECF.nohup &


-------------------------------------------------------------------------------------------------------
--PARA VERIFICAR SE ESTÁ OK A PUBLICAÇÃO NA HORA A CADA EXECUÇÃO TABELA POR TABELA

dwpub - EXADATA>/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH EECF WF_EECF_VEST TODA TODA WF_EECF_VEST > /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_VEST/insertWF_EECF_VEST.nohup &
[1] 38423

spcdsrvv3012 - /opt/approtinas/pre_21761_dwcorp - 1007 - (-bash)
dwpub - EXADATA>

spcdsrvv3012 - /opt/approtinas/pre_21761_dwcorp - 1007 - (-bash)
dwpub - EXADATA>

spcdsrvv3012 - /opt/approtinas/pre_21761_dwcorp - 1007 - (-bash)
dwpub - EXADATA>tail -f /opt/approtinas/pre_21761_dwcorp/EECF/WF_EECF_VEST/insertWF_EECF_VEST.nohup
Tabela ...........................: WF_EECF_VEST
Quantidade de registros Producao .:	       0
Quantidade de registros Carga ....:	       0
-------------------------------------------------
* * * Publicacao  OK:

PL/SQL procedure successfully completed.

Elapsed: 00:00:00.00
Ter Mai  7 08:22:07 -03 2019

===========================================================================


--CONTAR QUANTIDADES DE INSERÇÕES NO MOMENTO 
dwpub - EXADATA>ps -ef | grep INSERT | wc -l



---------------------------------------------------------------------------------------------------------------
--COMANDO PARA SELECT PARA TABELAS PARTICIONADAS TODAS E POR PARTIÇÃO

10.

--PARTICIONADAS

SELECT '/opt/approtinas/pre_21761_dwcorp/MAINCONTROLM/INSERT_DES_EECF.SH '  || table_owner || ' ' || table_name || ' partition ' || PARTITION_NAME || ' V_' || PARTITION_NAME || ' > /opt/approtinas/pre_21761_dwcorp/' || table_owner || '/' || table_name || '/insertV_' || PARTITION_NAME || '.nohup &'
FROM dba_tab_partitions where table_owner = 'EECF' 
-- AND PARTITION_NAME = 'PT_WF_EPRO_AFRA_201903'
and TABLE_NAME IN ('WF_EECF_ATIN', 
'WF_EECF_AVIS',
'WF_EECF_BAPA',
'WF_EECF_COEL',
'WF_EECF_COEX',
'WF_EECF_COIM',
'WF_EECF_CONS',
'WF_EECF_DOCE',
'WF_EECF_ECOE',
'WF_EECF_EECF',
'WF_EECF_ESCP',
'WF_EECF_EXPO',
'WF_EECF_FCIN',
'WF_EECF_IDST',
'WF_EECF_IMPO',
'WF_EECF_IRCS',
'WF_EECF_PAGE',
'WF_EECF_PAGS',
'WF_EECF_PCON',
'WF_EECF_PEXT',
'WF_EECF_PMEP',
'WF_EECF_RDST',
'WF_EECF_RECE',
'WF_EECF_REGL',
'WF_EECF_REND',
'WF_EECF_RESU',
'WF_EECF_ROPG',
'WF_EECF_RORC',
'WF_EECF_SIGN',
'WF_EECF_SUCE',
'WF_EECF_VCOE',
'WF_EECF_VEST',
'WF_EECF_MEAF',
'WF_EECF_BCIF',
'WD_EECF_EECF');



--VERIFICANDO O PROCESSO NO FINAL
verificando se deu certo


DWPUB@whpre130 > @publicacao
Owner  :>EECF
DataExec  :>20190503

TABLE_NAME		       JOB_NAME 		      QTD_REG_PROD QTD_REG_CARGA QTD_REG_INSERT        DIF
------------------------------ ------------------------------ ------------ ------------- -------------- ----------
WD_EECF_EECF		       V_PT_DECF_2014			       162	       0	      0 	 0
WD_EECF_EECF		       V_PT_DECF_2015			       147	       0	      0 	 0
WD_EECF_EECF		       V_PT_DECF_2016			      5129	       0	      0 	 0
WD_EECF_EECF		       V_PT_DECF_2017				 7	       0	      0 	 0
WD_EECF_EECF		       V_PT_DECF_2018				 0	       0	      0 	 0
WD_EECF_EECF		       V_PT_DECF_2019				 0	       0	      0 	 0
WD_EECF_EECF		       V_PT_DECF_2020				 0	       0	      0 	 0
WD_EECF_MEAF_METODO_AV_ETQ     WD_EECF_MEAF_METODO_AV_ETQ		11	      11	     11 	 0
WF_EECF_ATIN		       V_PT_ATIN_2014				 0	       0	      0 	 0
WF_EECF_ATIN		       V_PT_ATIN_2015				 0	       0	      0 	 0
WF_EECF_ATIN		       V_PT_ATIN_2016				 0	       0	      0 	 0
WF_EECF_ATIN		       V_PT_ATIN_2017				 0	       0	      0 	 0
WF_EECF_ATIN		       V_PT_ATIN_2018				 0	       0	      0 	 0
WF_EECF_ATIN		       V_PT_ATIN_2019				 0	       0	      0 	 0
WF_EECF_ATIN		       V_PT_ATIN_2020				 0	       0	      0 	 0
WF_EECF_AVIS		       V_PT_AVIS_2014				 0	   51049	  51049 	 0
WF_EECF_AVIS		       V_PT_AVIS_2015				 0	       1	      1 	 0
WF_EECF_AVIS		       V_PT_AVIS_2016				 0	       0	      0 	 0
WF_EECF_AVIS		       V_PT_AVIS_2017				 0	       0	      0 	 0
WF_EECF_AVIS		       V_PT_AVIS_2018				 0	       0	      0 	 0
WF_EECF_AVIS		       V_PT_AVIS_2019				 0	       0	      0 	 0
WF_EECF_AVIS		       V_PT_AVIS_2020				 0	       0	      0 	 0
WF_EECF_BAPA		       V_PT_BAPA_2014				 0	       0	      0 	 0
WF_EECF_BAPA		       V_PT_BAPA_2015				 0	       0	      0 	 0
WF_EECF_BAPA		       V_PT_BAPA_2016				 0	       0	      0 	 0
WF_EECF_BAPA		       V_PT_BAPA_2017				 0	       0	      0 	 0
WF_EECF_BAPA		       V_PT_BAPA_2018				 0	       0	      0 	 0
WF_EECF_BAPA		       V_PT_BAPA_2019				 0	       0	      0 	 0
WF_EECF_BAPA		       V_PT_BAPA_2020				 0	       0	      0 	 0
WF_EECF_BCIF		       V_PT_EECF_FCIF_2014			 0	       0	      0 	 0
WF_EECF_BCIF		       V_PT_EECF_FCIF_2015			 0	       0	      0 	 0
WF_EECF_BCIF		       V_PT_EECF_FCIF_2016			 0	       0	      0 	 0
WF_EECF_BCIF		       V_PT_EECF_FCIF_2017			 0	       0	      0 	 0
WF_EECF_BCIF		       V_PT_EECF_FCIF_2018			 0	       0	      0 	 0
WF_EECF_BCIF		       V_PT_EECF_FCIF_2019			 0	       0	      0 	 0
WF_EECF_BCIF		       V_PT_EECF_FCIF_2020			 0	       0	      0 	 0
WF_EECF_COEL		       V_PT_COEL_2014				 0	       5	      5 	 0
WF_EECF_COEL		       V_PT_COEL_2015				 0	       0	      0 	 0
WF_EECF_COEL		       V_PT_COEL_2016				 0	       0	      0 	 0
WF_EECF_COEL		       V_PT_COEL_2017				 0	       0	      0 	 0
WF_EECF_COEL		       V_PT_COEL_2018				 0	       0	      0 	 0
WF_EECF_COEL		       V_PT_COEL_2019				 0	       0	      0 	 0
WF_EECF_COEL		       V_PT_COEL_2020				 0	       0	      0 	 0
WF_EECF_COEX		       V_PT_COEX_2014				 0	     400	    400 	 0
WF_EECF_COEX		       V_PT_COEX_2015				 0	       2	      2 	 0
WF_EECF_COEX		       V_PT_COEX_2016				 0	       0	      0 	 0
WF_EECF_COEX		       V_PT_COEX_2017				 0	       0	      0 	 0
WF_EECF_COEX		       V_PT_COEX_2018				 0	       0	      0 	 0
WF_EECF_COEX		       V_PT_COEX_2019				 0	       0	      0 	 0
WF_EECF_COEX		       V_PT_COEX_2020				 0	       0	      0 	 0
WF_EECF_COIM		       V_PT_COIM_2014				 0	      61	     61 	 0
WF_EECF_COIM		       V_PT_COIM_2015				 0	       0	      0 	 0
WF_EECF_COIM		       V_PT_COIM_2016				 0	       0	      0 	 0
WF_EECF_COIM		       V_PT_COIM_2017				 0	       0	      0 	 0
WF_EECF_COIM		       V_PT_COIM_2018				 0	       0	      0 	 0
WF_EECF_COIM		       V_PT_COIM_2019				 0	       0	      0 	 0
WF_EECF_COIM		       V_PT_COIM_2020				 0	       0	      0 	 0
WF_EECF_CONS		       V_PT_CONS_2014				 0	       6	      6 	 0
WF_EECF_CONS		       V_PT_CONS_2015				 0	       0	      0 	 0
WF_EECF_CONS		       V_PT_CONS_2016				 0	       0	      0 	 0
WF_EECF_CONS		       V_PT_CONS_2017				 0	       0	      0 	 0
WF_EECF_CONS		       V_PT_CONS_2018				 0	       0	      0 	 0
WF_EECF_CONS		       V_PT_CONS_2019				 0	       0	      0 	 0
WF_EECF_CONS		       V_PT_CONS_2020				 0	       0	      0 	 0
WF_EECF_DOCE		       V_PT_DOCE_2014				 0	       0	      0 	 0
WF_EECF_DOCE		       V_PT_DOCE_2015				 0	       0	      0 	 0
WF_EECF_DOCE		       V_PT_DOCE_2016				 0	       0	      0 	 0
WF_EECF_DOCE		       V_PT_DOCE_2017				 0	       0	      0 	 0
WF_EECF_DOCE		       V_PT_DOCE_2018				 0	       0	      0 	 0
WF_EECF_DOCE		       V_PT_DOCE_2019				 0	       0	      0 	 0
WF_EECF_DOCE		       V_PT_DOCE_2020				 0	       0	      0 	 0
WF_EECF_ECOE		       V_PT_ECOE_2014				 0	       0	      0 	 0
WF_EECF_ECOE		       V_PT_ECOE_2015				 0	       0	      0 	 0
WF_EECF_ECOE		       V_PT_ECOE_2016				 0	       0	      0 	 0
WF_EECF_ECOE		       V_PT_ECOE_2017				 0	       0	      0 	 0
WF_EECF_ECOE		       V_PT_ECOE_2018				 0	       0	      0 	 0
WF_EECF_ECOE		       V_PT_ECOE_2019				 0	       0	      0 	 0
WF_EECF_ECOE		       V_PT_ECOE_2020				 0	       0	      0 	 0
WF_EECF_EECF		       V_PT_EECF_2014				 0	     162	    162 	 0
WF_EECF_EECF		       V_PT_EECF_2015				 0	       1	      1 	 0
WF_EECF_EECF		       V_PT_EECF_2016				 0	       0	      0 	 0
WF_EECF_EECF		       V_PT_EECF_2017				 0	       0	      0 	 0
WF_EECF_EECF		       V_PT_EECF_2018				 0	       0	      0 	 0
WF_EECF_EECF		       V_PT_EECF_2019				 0	       0	      0 	 0
WF_EECF_EECF		       V_PT_EECF_2020				 0	       0	      0 	 0
WF_EECF_ESCP		       V_PT_ESCP_2014				 0	       0	      0 	 0
WF_EECF_ESCP		       V_PT_ESCP_2015				 0	       0	      0 	 0
WF_EECF_ESCP		       V_PT_ESCP_2016				 0	       0	      0 	 0
WF_EECF_ESCP		       V_PT_ESCP_2017				 0	       0	      0 	 0
WF_EECF_ESCP		       V_PT_ESCP_2018				 0	       0	      0 	 0
WF_EECF_ESCP		       V_PT_ESCP_2019				 0	       0	      0 	 0
WF_EECF_ESCP		       V_PT_ESCP_2020				 0	       0	      0 	 0
WF_EECF_EXPO		       V_PT_EXPO_2014				 0	       0	      0 	 0
WF_EECF_EXPO		       V_PT_EXPO_2015				 0	       0	      0 	 0
WF_EECF_EXPO		       V_PT_EXPO_2016				 0	       0	      0 	 0
WF_EECF_EXPO		       V_PT_EXPO_2017				 0	       0	      0 	 0
WF_EECF_EXPO		       V_PT_EXPO_2018				 0	       0	      0 	 0
WF_EECF_EXPO		       V_PT_EXPO_2019				 0	       0	      0 	 0
WF_EECF_EXPO		       V_PT_EXPO_2020				 0	       0	      0 	 0
WF_EECF_FCIN		       V_PT_FCIN_2014				 0	       0	      0 	 0
WF_EECF_FCIN		       V_PT_FCIN_2015				 0	       0	      0 	 0
WF_EECF_FCIN		       V_PT_FCIN_2016				 0	       0	      0 	 0
WF_EECF_FCIN		       V_PT_FCIN_2017				 0	       0	      0 	 0
WF_EECF_FCIN		       V_PT_FCIN_2018				 0	       0	      0 	 0
WF_EECF_FCIN		       V_PT_FCIN_2019				 0	       0	      0 	 0
WF_EECF_FCIN		       V_PT_FCIN_2020				 0	       0	      0 	 0
WF_EECF_IDST		       V_PT_IDST_2014				 0	       0	      0 	 0
WF_EECF_IDST		       V_PT_IDST_2015				 0	       0	      0 	 0
WF_EECF_IDST		       V_PT_IDST_2016				 0	       0	      0 	 0
WF_EECF_IDST		       V_PT_IDST_2017				 0	       0	      0 	 0
WF_EECF_IDST		       V_PT_IDST_2018				 0	       0	      0 	 0
WF_EECF_IDST		       V_PT_IDST_2019				 0	       0	      0 	 0
WF_EECF_IDST		       V_PT_IDST_2020				 0	       0	      0 	 0
WF_EECF_IMPO		       V_PT_IMPO_2014				 0	       0	      0 	 0
WF_EECF_IMPO		       V_PT_IMPO_2015				 0	       0	      0 	 0
WF_EECF_IMPO		       V_PT_IMPO_2016				 0	       0	      0 	 0
WF_EECF_IMPO		       V_PT_IMPO_2017				 0	       0	      0 	 0
WF_EECF_IMPO		       V_PT_IMPO_2018				 0	       0	      0 	 0
WF_EECF_IMPO		       V_PT_IMPO_2019				 0	       0	      0 	 0
WF_EECF_IMPO		       V_PT_IMPO_2020				 0	       0	      0 	 0
WF_EECF_IRCS		       V_PT_IRCS_2014				 0	       0	      0 	 0
WF_EECF_IRCS		       V_PT_IRCS_2015				 0	       0	      0 	 0
WF_EECF_IRCS		       V_PT_IRCS_2016				 0	       0	      0 	 0
WF_EECF_IRCS		       V_PT_IRCS_2017				 0	       0	      0 	 0
WF_EECF_IRCS		       V_PT_IRCS_2018				 0	       0	      0 	 0
WF_EECF_IRCS		       V_PT_IRCS_2019				 0	       0	      0 	 0
WF_EECF_IRCS		       V_PT_IRCS_2020				 0	       0	      0 	 0
WF_EECF_MEAF		       V_PT_EECF_FEAF_2014			 0	       0	      0 	 0
WF_EECF_MEAF		       V_PT_EECF_FEAF_2015			 0	       0	      0 	 0
WF_EECF_MEAF		       V_PT_EECF_FEAF_2016			 0	       0	      0 	 0
WF_EECF_MEAF		       V_PT_EECF_FEAF_2017			 0	       0	      0 	 0
WF_EECF_MEAF		       V_PT_EECF_FEAF_2018			 0	       0	      0 	 0
WF_EECF_MEAF		       V_PT_EECF_FEAF_2019			 0	       0	      0 	 0
WF_EECF_MEAF		       V_PT_EECF_FEAF_2020			 0	       0	      0 	 0
WF_EECF_PAGE		       V_PT_PAGE_2014				 0	       0	      0 	 0
WF_EECF_PAGE		       V_PT_PAGE_2015				 0	       0	      0 	 0
WF_EECF_PAGE		       V_PT_PAGE_2016				 0	       0	      0 	 0
WF_EECF_PAGE		       V_PT_PAGE_2017				 0	       0	      0 	 0
WF_EECF_PAGE		       V_PT_PAGE_2018				 0	       0	      0 	 0
WF_EECF_PAGE		       V_PT_PAGE_2019				 0	       0	      0 	 0
WF_EECF_PAGE		       V_PT_PAGE_2020				 0	       0	      0 	 0
WF_EECF_PAGS		       V_PT_PAGS_2014				 0	       0	      0 	 0
WF_EECF_PAGS		       V_PT_PAGS_2015				 0	       0	      0 	 0
WF_EECF_PAGS		       V_PT_PAGS_2016				 0	       0	      0 	 0
WF_EECF_PAGS		       V_PT_PAGS_2017				 0	       0	      0 	 0
WF_EECF_PAGS		       V_PT_PAGS_2018				 0	       0	      0 	 0
WF_EECF_PAGS		       V_PT_PAGS_2019				 0	       0	      0 	 0
WF_EECF_PAGS		       V_PT_PAGS_2020				 0	       0	      0 	 0
WF_EECF_PCON		       V_PT_PCON_2014				 0	       0	      0 	 0
WF_EECF_PCON		       V_PT_PCON_2015				 0	       0	      0 	 0
WF_EECF_PCON		       V_PT_PCON_2016				 0	       0	      0 	 0
WF_EECF_PCON		       V_PT_PCON_2017				 0	       0	      0 	 0
WF_EECF_PCON		       V_PT_PCON_2018				 0	       0	      0 	 0
WF_EECF_PCON		       V_PT_PCON_2019				 0	       0	      0 	 0
WF_EECF_PCON		       V_PT_PCON_2020				 0	       0	      0 	 0
WF_EECF_PEXT		       V_PT_PEXT_2014				 0	       0	      0 	 0
WF_EECF_PEXT		       V_PT_PEXT_2015				 0	       0	      0 	 0
WF_EECF_PEXT		       V_PT_PEXT_2016				 0	       0	      0 	 0
WF_EECF_PEXT		       V_PT_PEXT_2017				 0	       0	      0 	 0
WF_EECF_PEXT		       V_PT_PEXT_2018				 0	       0	      0 	 0
WF_EECF_PEXT		       V_PT_PEXT_2019				 0	       0	      0 	 0
WF_EECF_PEXT		       V_PT_PEXT_2020				 0	       0	      0 	 0
WF_EECF_PMEP		       V_PT_PMEP_2014				 0	       0	      0 	 0
WF_EECF_PMEP		       V_PT_PMEP_2015				 0	       0	      0 	 0
WF_EECF_PMEP		       V_PT_PMEP_2016				 0	       0	      0 	 0
WF_EECF_PMEP		       V_PT_PMEP_2017				 0	       0	      0 	 0
WF_EECF_PMEP		       V_PT_PMEP_2018				 0	       0	      0 	 0
WF_EECF_PMEP		       V_PT_PMEP_2019				 0	       0	      0 	 0
WF_EECF_PMEP		       V_PT_PMEP_2020				 0	       0	      0 	 0
WF_EECF_RDST		       V_PT_RDST_2014				 0	    8746	   8746 	 0
WF_EECF_RDST		       V_PT_RDST_2015				 0	       0	      0 	 0
WF_EECF_RDST		       V_PT_RDST_2016				 0	       0	      0 	 0
WF_EECF_RDST		       V_PT_RDST_2017				 0	       0	      0 	 0
WF_EECF_RDST		       V_PT_RDST_2018				 0	       0	      0 	 0
WF_EECF_RDST		       V_PT_RDST_2019				 0	       0	      0 	 0
WF_EECF_RDST		       V_PT_RDST_2020				 0	       0	      0 	 0
WF_EECF_RECE		       V_PT_RECE_2014				 0	       0	      0 	 0
WF_EECF_RECE		       V_PT_RECE_2015				 0	       0	      0 	 0
WF_EECF_RECE		       V_PT_RECE_2016				 0	       0	      0 	 0
WF_EECF_RECE		       V_PT_RECE_2017				 0	       0	      0 	 0
WF_EECF_RECE		       V_PT_RECE_2018				 0	       0	      0 	 0
WF_EECF_RECE		       V_PT_RECE_2019				 0	       0	      0 	 0
WF_EECF_RECE		       V_PT_RECE_2020				 0	       0	      0 	 0
WF_EECF_REGL		       V_PT_REGL_2014				 0	       0	      0 	 0
WF_EECF_REGL		       V_PT_REGL_2015				 0	       0	      0 	 0
WF_EECF_REGL		       V_PT_REGL_2016				 0	       0	      0 	 0
WF_EECF_REGL		       V_PT_REGL_2017				 0	       0	      0 	 0
WF_EECF_REGL		       V_PT_REGL_2018				 0	       0	      0 	 0
WF_EECF_REGL		       V_PT_REGL_2019				 0	       0	      0 	 0
WF_EECF_REGL		       V_PT_REGL_2020				 0	       0	      0 	 0
WF_EECF_REND		       V_PT_REND_2014				 0	       0	      0 	 0
WF_EECF_REND		       V_PT_REND_2015				 0	       0	      0 	 0
WF_EECF_REND		       V_PT_REND_2016				 0	       0	      0 	 0
WF_EECF_REND		       V_PT_REND_2017				 0	       0	      0 	 0
WF_EECF_REND		       V_PT_REND_2018				 0	       0	      0 	 0
WF_EECF_REND		       V_PT_REND_2019				 0	       0	      0 	 0
WF_EECF_REND		       V_PT_REND_2020				 0	       0	      0 	 0
WF_EECF_RESU		       V_PT_RESU_2014				 0	       0	      0 	 0
WF_EECF_RESU		       V_PT_RESU_2015				 0	       0	      0 	 0
WF_EECF_RESU		       V_PT_RESU_2016				 0	       0	      0 	 0
WF_EECF_RESU		       V_PT_RESU_2017				 0	       0	      0 	 0
WF_EECF_RESU		       V_PT_RESU_2018				 0	       0	      0 	 0
WF_EECF_RESU		       V_PT_RESU_2019				 0	       0	      0 	 0
WF_EECF_RESU		       V_PT_RESU_2020				 0	       0	      0 	 0
WF_EECF_ROPG		       V_PT_ROPG_2014				 0	       0	      0 	 0
WF_EECF_ROPG		       V_PT_ROPG_2015				 0	       0	      0 	 0
WF_EECF_ROPG		       V_PT_ROPG_2016				 0	       0	      0 	 0
WF_EECF_ROPG		       V_PT_ROPG_2017				 0	       0	      0 	 0
WF_EECF_ROPG		       V_PT_ROPG_2018				 0	       0	      0 	 0
WF_EECF_ROPG		       V_PT_ROPG_2019				 0	       0	      0 	 0
WF_EECF_ROPG		       V_PT_ROPG_2020				 0	       0	      0 	 0
WF_EECF_RORC		       V_PT_RORC_2014				 0	       0	      0 	 0
WF_EECF_RORC		       V_PT_RORC_2015				 0	       0	      0 	 0
WF_EECF_RORC		       V_PT_RORC_2016				 0	       0	      0 	 0
WF_EECF_RORC		       V_PT_RORC_2017				 0	       0	      0 	 0
WF_EECF_RORC		       V_PT_RORC_2018				 0	       0	      0 	 0
WF_EECF_RORC		       V_PT_RORC_2019				 0	       0	      0 	 0
WF_EECF_RORC		       V_PT_RORC_2020				 0	       0	      0 	 0
WF_EECF_SIGN		       V_PT_SIGN_2014				 0	       0	      0 	 0
WF_EECF_SIGN		       V_PT_SIGN_2015				 0	       0	      0 	 0
WF_EECF_SIGN		       V_PT_SIGN_2016				 0	       0	      0 	 0
WF_EECF_SIGN		       V_PT_SIGN_2017				 0	       0	      0 	 0
WF_EECF_SIGN		       V_PT_SIGN_2018				 0	       0	      0 	 0
WF_EECF_SIGN		       V_PT_SIGN_2019				 0	       0	      0 	 0
WF_EECF_SIGN		       V_PT_SIGN_2020				 0	       0	      0 	 0
WF_EECF_SUCE		       V_PT_SUCE_2014				 0	       0	      0 	 0
WF_EECF_SUCE		       V_PT_SUCE_2015				 0	       0	      0 	 0
WF_EECF_SUCE		       V_PT_SUCE_2016				 0	       0	      0 	 0
WF_EECF_SUCE		       V_PT_SUCE_2017				 0	       0	      0 	 0
WF_EECF_SUCE		       V_PT_SUCE_2018				 0	       0	      0 	 0
WF_EECF_SUCE		       V_PT_SUCE_2019				 0	       0	      0 	 0
WF_EECF_SUCE		       V_PT_SUCE_2020				 0	       0	      0 	 0
WF_EECF_VCOE		       V_PT_VCOE_2014				 0	       0	      0 	 0
WF_EECF_VCOE		       V_PT_VCOE_2015				 0	       0	      0 	 0
WF_EECF_VCOE		       V_PT_VCOE_2016				 0	       0	      0 	 0
WF_EECF_VCOE		       V_PT_VCOE_2017				 0	       0	      0 	 0
WF_EECF_VCOE		       V_PT_VCOE_2018				 0	       0	      0 	 0
WF_EECF_VCOE		       V_PT_VCOE_2019				 0	       0	      0 	 0
WF_EECF_VCOE		       V_PT_VCOE_2020				 0	       0	      0 	 0
WF_EECF_VEST		       V_PT_VEST_2014				 0	       0	      0 	 0
WF_EECF_VEST		       V_PT_VEST_2015				 0	       0	      0 	 0
WF_EECF_VEST		       V_PT_VEST_2016				 0	       0	      0 	 0
WF_EECF_VEST		       V_PT_VEST_2017				 0	       0	      0 	 0
WF_EECF_VEST		       V_PT_VEST_2018				 0	       0	      0 	 0
WF_EECF_VEST		       V_PT_VEST_2019				 0	       0	      0 	 0
WF_EECF_VEST		       V_PT_VEST_2020				 0	       0	      0 	 0

246 rows selected.


comparar com full amanhã depois de publicar full novamente

