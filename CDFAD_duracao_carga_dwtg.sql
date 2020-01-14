--==============================================================
Extracao Mainframe CPU A
A33393CV
A33393TX

Extracao Baixa ( inicio paralelo ao mainframe)
SP_DWSTN_EXTRAI_DIM_ABA_2016.sh - DW_STN_EXTRACAO_2016_CRT
stn_trata_arquivos.sh - DW_STN_EXTRACAO_2016

Carga baixa
stn_atualiza_controle_etc_20.sh - DW_STN_CARGA_POWERCENTER_2016
Dummy_P2_B2 - DW_STN_CARGA_POWERCENTER_P2_B2_2016

Publicacao
GREMLIN_JOB_PROD - DW_STN_PUBLICACAO_TEMPORARIA_2016_CRT
PRO-REPLICA-RELATORIO - DWPUB-DWTG-PRO

Layout: JobName - GroupName

--==============================================================
Exemplo de HJ:

Extracao Mainframe
A33393CV 06/10/2016 01:15:04
A33393TX 06/10/2016 01:53:17

Extracao Baixa ( inicio paralelo ao mainframe)
SP_DWSTN_EXTRAI_DIM_ABA_2017.sh 06/10/2016 01:15:32 ----- LOCALIZAR ESSE AQUI
stn_trata_arquivos.sh 06/10/2016 02:18:52

Carga baixa
stn_atualiza_controle_etc_20.sh 06/10/2016 02:18:53
Dummy_P2_B2 06/10/2016 04:29:02

Publicacao
GREMLIN_JOB_PROD 06/10/2016 04:29:04
PRO-REPLICA-RELATORIO 06/10/2016 05:17:38

--==============================================================


