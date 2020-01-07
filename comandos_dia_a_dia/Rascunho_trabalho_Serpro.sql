--LINUX LIVRO JULIO NEVES - por Gilmar CTIS

--
--**********************************************************
--          _                             _ _ _ 
--    /\  | |                           | | | |
--    /  \ | |_ ___ _ __   ___ __ _  ___ | | | |
--   / /\ \| __/ _ \  _ \ / __/ _` |/ _ \| | | |
--  / ____ \ ||  __/ | | | (_| (_| | (_) |_|_|_|
-- /_/    \_\__\___|_| |_|\___\__,_|\___/(_|_|_)
--                                           
--**********************************************************

-- RASCUNHOS DIVERSOS


pdw031 > CREATE INDEX "CNPF"."IX_MTSA_CPFA" ON "CNPF"."WF_CNPF_MTSA" ("NR_CNPF_CPFA") 
  PCTFREE 1 COMPRESS NOLOGGING
  TABLESPACE "TB_06977_CNPF_IND_01" ;
 
  ALTER INDEX "CNPF"."IX_MTSA_CPFA" MONITORING USAGE;  2    3  
Index created.



Create User "TESTE" Identified By "TESTE"
          temporary Tablespace "TEMP";


Flavio Alves Reis (CPF: 70635439115) (IP: 10.11.100.89)

 Nícolas Rodrigues de Oliveira (CPF: 02246149592)  (IP: 10.11.100.50)

Helius Tavares de Oliveira (CPF: 68862199104)  (IP: 10.11.80.39)


Dbd_06818_Dwcorporativo=# CREATE USER "37532910130" WITH PASSWORD '5joHOlZ2Drlno';
CREATE ROLE

Dbd_06818_Dwcorporativo=# grant usr_dwcorp to "37532910130";
GRANT ROLE
                    
 CREATE USER "37532910130" WITH PASSWORD '5joHOlZ2Drlno';

 
 ALTER USER "95474471149" WITH PASSWORD '4P/5fAfLRgGb2';
 ALTER USER "31006437800" WITH PASSWORD 'yEUu9SoY2YbcU';
 ALTER USER "98328395134" WITH PASSWORD 'HitP3DuMbYr.s';
   
09911559718
03320665766
 


grant usr_dwcorp to "37532910130";
grant sgp_desenv to "74397176353";
grant sgp_desenv to "09893064708";
grant sgp_desenv to "91437989691";
grant sgp_desenv to "54454883904";


 
 ===========================
 Dbh_06818_DwCorporativo=# ALTER TABLE gie_relacional.tb01_eventos_cd ADD COLUMN tb01_cod_severidade NUMERIC DEFAULT 0;
ALTER TABLE
Dbh_06818_DwCorporativo=# 

Dbp_06818_DwCorporativo=# ALTER TABLE gie_relacional.tb01_eventos_cd ADD COLUMN tb01_cod_severidade NUMERIC DEFAULT 0;
ALTER TABLE
Dbp_06818_DwCorporativo=#

Dbc_06818_Dwcorporativo=# ALTER TABLE gie_relacional.tb01_eventos_cd ADD COLUMN tb01_cod_severidade NUMERIC DEFAULT 0;
ALTER TABLE
Dbc_06818_Dwcorporativo=# 



===================
--CRIANDO METADADOS NO BANCO BIMD002 para TESTE RNF - MODELO PARA CRIAÇÃO DE TABLESPACE, USUÁRIO E PRIVILÉGIOS DE USUÁRIOS
-----------------------------------------------------------CRIANDO TABLESPACE COM 1 DATAFILES ----------------------------------------------------------------
CREATE TABLESPACE TB_84010_QWARE_DAT_01 DATAFILE '+DG_BSA013/d_93031_isbux/dwmd35/tb_84010_qwarelog_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 512M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------

create user "QWARELOG" IDENTIFIED by "QWARELOG" default tablespace "TB_84010_QWARE_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, connect, create view, unlimited tablespace to QWARELOG;

ok
criado - mostrar para André depois

========================================================================================================


mkfifo sigecom_relacional-Dbc_20150708.pipe
gzip -c < sigecom_relacional-Dbc_20150708.pipe > /opt/EXPORT_POSTGRES/sigecom_relacional-Dbc_20150708.sql.gz &
/opt/programas/postgresql/9.3/bin/pg_dump --schema=sigecom_relacional Dbc_06818_Dwcorporativo  > /opt/EXPORT_POSTGRES/sigecom_relacional-Dbc_20150708.pipe &


gzip -dc sigecom_relacional-Dbc_20150708.sql.gz | psql -h 161.148.239.33 -p 5432 -U postgres Dbd_06818_Dwcorporativo > mario.log
===========================

ALTER SCHEMA siareweb_relacional OWNER TO usr_dwcorp;
grant all on all functions in schema siareweb_relacional to usr_dwcorp;
grant all on all tables in schema siareweb_relacional to usr_dwcorp;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA siareweb_relacional TO usr_dwcorp;


REVOKE ALL ON SCHEMA siareweb_relacional FROM PUBLIC;
REVOKE ALL ON SCHEMA siareweb_relacional FROM usr_dwcorporativo_c;
REVOKE ALL ON ALL TABLES IN SCHEMA siareweb_relacional FROM PUBLIC;
REVOKE ALL ON ALL TABLES IN SCHEMA siareweb_relacional FROM usr_dwcorporativo_c;

GRANT ALL ON SCHEMA siareweb_relacional TO usr_dwcorp;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA siareweb_relacional TO usr_dwcorp;

=========================
alter table PMTEXT modify TDAT varchar(4000) null;
update PMOPTS set VALE='4000' where NAME='MaxTextSize';
commit;


=========================
2015/000746646


 
SELECT 'COMMENT MyDB.MyNewTable AS ' || T.Comment || ';'
FROM DBC.Tables T
WHERE DatabaseName = 'dbp_33393_dwtg';

SELECT TABLENAME, COLUMNNAME FROM DBC.TABLES WHERE DATABASENAME = 'dbp_33393_dwtg';


Suppose you placed the following comment describing the invoice column in the payables table:
     COMMENT ON GROUP payables.invoices
       IS 'Vendor name, followed by invoice date';
The following request retrieves this comment:

COMMENT ON GROUP payables.invoices;

SEL COMMENTSTRING FROM DBC.columns WHERE DATABASENAME = 'dbp_33393_dwtg';


================================


ALTER TABLE SGPF.WF_PF3_DOI_ADQUIREN_ALIENAN_DP SPLIT PARTITION
PT_DAAD_RA_ANO_2015 at (2015) INTO ( PARTITION PT_DAAD_RA_ANO_2014, PARTITION PT_DAAD_RA_ANO_2015); 
                                                                     

select table_name, partition_name from dba_tab_partitions where TABLE_owner='SIGPGFN' AND TABLE_NAME LIKE 'WF_SIG15%'@dbl_whcar136;



select table_name from dba_tabLES where owner='SIGPGFN' AND TABLE_NAME LIKE 'WF_SIG15%';

SGPF;WF_PF3_DOI_ADQUIREN_ALIENAN_DP

 



SGPJ;WD_PLACA_9101
SGPJ;WD_PLACA_9301
SGPJ;WF_V3_DASN_ESPECIAL
=======
Favor executar o script anexo ( producao_create_table_view_afastamento.txt) , do schema PESSOAL no banco de PRODUÇÃO ( BIPRO001 - DFCDSRVP0076 - 161.148.236.19 ) para criar as tabelas PESSOAL.WD_AFASTAMENTO, PESSOAL.WF_AFASTAMENTO_TAB e a view PESSOAL.WF_AFASTAMENTO.
Favor também incluir as tabelas PESSOAL.WD_AFASTAMENTO e PESSOAL.WF_AFASTAMENTO_TAB no processo de publicação do DW SIAPE.

Sugestão de grupo : GMCDDFPUBDW

======
SIGPGFN;SIGRFB_EVENTO
SIGPGFN;SIGRFB_EVENTO_PERIODICIDADE
SIGPGFN;SIGRFB_CONTA_ORCAMENTARIA
SIGPGFN;SIGRFB_TABELA_ORCAMENTARIA
SIGPGFN;SIGRFB1_ARRECADACAO_LIQUIDA





=============================================
21/08/2015


==================================================
21/08/2015
OUTRA PUBLICAÇÃO TEMA TOTAL PROC ==================
CUIDADO COM TABLEAS GRANDES-= OBSERVAR ISSO.
1- USA O SCRIPT @TAMANHO_TABELAS.SQL
2- DEPOIS PEGA  OS NOMES DAS TABELAS DA PRODUÇÃO
3-JOGA NO JEDIT 
4-TIRA OS ESPAÇOS FINAIS COM MENU -- EDIT  --- DEPOIS INDENT --- REMOVE TRAINLING WHITESPACE
5-DEPOIS COLOCA NO INICIO DE TODOS O NOME PROC MAIS ;

6-ENTRA NA MAQUINA DE DESTINO
7-NA PASTA CONTROLM GENERICO DEPOIS NA IN - GERA O ENTRADA COM TODAS AS TABLEAS E PRONTO.. JÁ ESTARÁ PRONTA A PUBLICAÇÃO
8-O RESTO É AUTOMÁTICO PORQUE ESSA MAQUINA É NA PRODUÇAO SÃO PAULO;

=============================================================================


MCPJ;WD_MCPJ_ANAL_PLACA_INDS;
MCPJ;WD_MCPJ_ANAL_PLACA_IND_RESULTS;



============================================================================================================================================
iara, 
lista_cdsdw


Prezados, solicito abertura de regras de firewall conforme dados abaixo.


Ip origem: 200.198.213.212
IP destino: 161.148.238.15
Porta: 1517
Tempo: Indeterminado
Objetivo: Comunicação de Acesso à Banco de Dados Oracle do SIAC - DNIT, pela CGU

===============================================================================================================================================
oracle_33393_dwtg	WA_CARGA_DIMENSAO_LRF	MULTISET WITH UNIQUE INDEX OR SET TABLE	0	1
oracle_33393_dwtg	WT_WDF_DOCUMENTO_REGRA	MULTISET WITH UNIQUE INDEX OR SET TABLE	0	1


SIGAPGFN-==================================================================

CSS,
Esta demanda é uma Requisição de Serviços.
Favor encaminhar para GMCDDFCTM.
Rotina: Cria_job
Horário de Submissão: 20:00
Não há qualquer dependência de outros jobs para execução.
Código de serviço - 37260
Serviço: SIGPGFN
Servidor: dfcdsrvp0076 -161.148.236.20 - BIPRO001
Ambiente: Produção

Favor executar o CRIA_JOB (/home/dwpublic/dwpub/CONTROLMSIGPGFN), hoje (14/09/2015), 20:00 horas para publicação do DW SIGPGFN no ambiente de Produção.
Qualquer dúvida e/ou erro durante o processamento, favor nos contactar no plantão da CDSDW (9265-9448).
Obrigado.

============================================================================
ALTER TABLE siscop_relacional_inc.log_tabelas_dif ADD COLUMN qtde_destino integer;
ALTER TABLE siscop_relacional_inc.log_tabelas_dif ADD COLUMN qtde_origem integer;
ALTER TABLE siscop_relacional_inc.log_tabelas_dif ADD COLUMN diferente character varying(2);

===========================
VAMOS NÓS DE NOVO 

ALTER TABLE "DEST"."WF_EMPREGADO"
ADD ("QT_RUBRICA" NUMBER(10,0),
	"VLR_RUBRICA" NUMBER(19,2),
	"CO_SIEST" NUMBER(10));

ALTER TABLE "DEST"."WF_EMPREGADO_RUBRICA"
ADD ("QT_EMPREGADO_RUBRICA" NUMBER(10,0),
	"CO_SIEST" NUMBER(10));

ALTER TABLE "DEST"."WF_PDG_PPE"
ADD ("ID_RUBRICA_PPE_PRIMEIRO_NIVEL" NUMBER(10,0),
	"CO_SIEST" NUMBER(10));


ALTER TABLE "DEST"."WF_EMPREGADO_AFASTAMENTO" ADD "CO_SIEST" NUMBER(10);
ALTER TABLE "DEST"."WF_EMPREGADO_DESCONTO" ADD "CO_SIEST" NUMBER(10);
ALTER TABLE "DEST"."WD_EMPREGADO_DESCONTO" ADD "CO_SIEST" NUMBER(10);
ALTER TABLE "DEST"."WD_EMPREGADO_DESCONTO" ADD "ID_MES" NUMBER(10);
ALTER TABLE "DEST"."WF_FORMACAO_EMPREGADO" ADD "CO_SIEST" NUMBER(10);
ALTER TABLE "DEST"."WF_EMPRESA" ADD "CO_SIEST" NUMBER(10);
ALTER TABLE "DEST"."WF_EMPREGADO_BENEFICIO" ADD "CO_SIEST" NUMBER(10);


CREATE TABLE "DEST"."WF_EMPRESA_RUBRICA"
   (	"ID_MES" NUMBER(10,0),
	"ID_RUBRICA_PPE" NUMBER(10,0),
	"CO_CNPJ" VARCHAR2(14 BYTE),
	"ID_EMPRESA" NUMBER(10,0),
	"TC_DATA_CARGA" TIMESTAMP (6),
	"VLR_RUBRICA" NUMBER(19,2),
	"QT_EMPREGADO" NUMBER(10,0),
	"QT_EMPREGADO_RUBRICA" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 5 PCTUSED 40 INITRANS 10 MAXTRANS 255
 NOCOMPRESS NOLOGGING
  TABLESPACE "TB_92208_DEST_DAT_01" ;


  CREATE OR REPLACE FORCE VIEW "DEST"."WV_F_EMPREGADO_RUBRICA" ("ID_MES", "ID_EMPREGADO", "CO_ID_EMPREGADO", "ID_RUBRICA_PPE", "CO_CNPJ", "NU_CPF", "VLR_RUBRICA", "QT_EMPREGADO", "QT_EMPREGADO_RUBRICA", "ID_EMPRESA", "TC_DATA_CARGA") AS
  SELECT
A.ID_MES,
A.ID_EMPREGADO,
A.CO_ID_EMPREGADO,
C.ID_RUBRICA_PPE,
B.CO_CNPJ,
A.NU_CPF,
NVL(D.VLR_RUBRICA,0) VLR_RUBRICA,
1 QT_EMPREGADO,
NVL(D.QT_EMPREGADO_RUBRICA, 0) QT_EMPREGADO_RUBRICA,
A.ID_EMPRESA,
A.TC_DATA_CARGA
FROM DEST.WD_EMPREGADO A
CROSS JOIN DEST.WD_RUBRICA_PPE C
JOIN DEST.WD_EMPRESA B ON (A.ID_EMPRESA = B.ID_EMPRESA)
LEFT JOIN DEST.WF_EMPREGADO_RUBRICA D ON (A.ID_EMPREGADO =  D.ID_EMPREGADO AND C.ID_RUBRICA_PPE = D.ID_RUBRICA_PPE)
WHERE A.ID_EMPREGADO > 0 AND C.ID_RUBRICA_PPE >0 AND C.ID_IND_RUBRICA_CONSOLIDADA = 2;

===========================================================================================================================


 	2015RDM/000036039  


-- VERIFICAR COM RONALDO A SOLUÇÃO DO PROBLEMA ABAIXO PARA APRENDIZADO NO SOBREAVISO.

Fv verificar

DWPUB-DES ---> 1WD_PJ_IBGE_TCAE ---> DROPIDX_1WD_PJ_IBGE_TCAE
Elapsed: 00:00:00.00
BEGIN dbms_stats.unlock_table_stats('DIME','WD_PJ_IBGE_TCAE'); END;

*
ERROR at line 1:
ORA-20000: TABLE "DIME"."WD_PJ_IBGE_TCAE" does not exist or insufficient privileges
ORA-06512: at "SYS.DBMS_STATS", line 27584
ORA-06512: at "SYS.DBMS_STATS", line 27610
ORA-06512: at "SYS.DBMS_STATS", line 27731
ORA-06512: at line 1


Elapsed: 00:00:02.46
BEGIN DBMS_STATS.EXPORT_TABLE_STATS(OWNNAME => 'DIME' , TABNAME => 'WD_PJ_IBGE_TCAE', STATTAB => 'CONTROLE_STATS_TABLE', STATOWN =>\
 'DWPUB'); END;

*
ERROR at line 1:
ORA-20000: TABLE "DIME"."WD_PJ_IBGE_TCAE" does not exist or insufficient privileges
ORA-06512: at "SYS.DBMS_STATS", line 4505
ORA-06512: at "SYS.DBMS_STATS", line 12397
ORA-06512: at line 1

-- 
ats,
ROBERTO SHIMADA
supcd/cdpro/cdcps
(11) 2173-1191

31/08
executado por mim. 
CREATE INDEX PGTO.PGTO_N_PROTOCOLO_SISCOMEX_I 
ON PGTO.WF_PGTO (DD_NUM_PROTOCOLO_SISCOMEX)
STORAGE (minextents 1 maxextents unlimited )
PCTFREE 5 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING 
TABLESPACE TB_21739_PGTO_IND_01 PARALLEL 4


--select OWNER, OBJECT_NAME, OBJECT_TYPE from DBA_OBJECTS WHERE OBJECT_NAME = 'TB_21763_DVDR_IND_01'; 
--SELECT TABLE_NAME FROM DBA_TABLES WHERE TABLESPACE_NAME = 'TB_21763_DVDR_DAT_01';

select OWNER, OBJECT_NAME, OBJECT_TYPE from DBA_OBJECTS WHERE OWNER = 'SGPE' AND OBJECT_NAME = 'WF_FFIN_FICHA';

select OWNER, OBJECT_NAME, OBJECT_TYPE from DBA_OBJECTS WHERE OBJECT_NAME = 'MRX_BG_TERM';

create or replace view V_WF_VSER_MRE_2015_08 as select * from SGPE.WF_FFIN_FICHA subpartition (WF_VSER_MRE_2015_08)

select subpartition_name from dba_tab_subpartitions where table_owner = 'SGPE' and table_name = 'WF_VSER_SERVIDOR' order by 1;



==============================================================================================================================

Select databasename,
SUM (maxperm)/1024/1024 as "Espaco Alocado (MB)",
SUM(currentperm)/1024/1024 "Espaco Ocupado (MB)" 
FROM dbc.diskspace
where databasename in ('DBC','dbc_33393_dwtg','dbd_33393_dwtg','dbh_07624_snsp','dbh_33393_dwtg','dbp_33393_dwtg','dbp_33396_pagef','dbp_40600_custos','dbt_33393_dwtg','oracle_33393_dwtg','replica_33393_oracle',
'dbq_33393_dwtg','dwpub_dwtg','dwpub_teste')
GROUP BY 1
order by 1;


dbp_07624_snps

===============================================

LOCKING ROW FOR ACCESS
SELECT
  thedate (FORMAT 'YYYY-MM-DD') AS The_Date
,CAST((TheTime (FORMAT '99:99:99')) AS CHAR(8)) AS TheTime
,EXTRACT(HOUR FROM TheTime) AS Hr
,EXTRACT(MINUTE FROM TheTime) AS Mn
,AVG((CPUUServ + CPUUExec)  / (CPUUServ+CPUUExec+CPUIOWait+CPUIdle ) * 100) (NAMED "AvgBusy%", FORMAT '9999.99')
,AVG(CPUIOWait / (CPUUServ+CPUUExec+CPUIOWait+CPUIdle )*100) (NAMED "AvgIOWait%", FORMAT '9999.99')
,AVG(CPUIdle / (CPUUServ+CPUUExec+CPUIOWait+CPUIdle )*100) (NAMED "AvgIdle%", FORMAT '9999.99')
FROM dbc.resusagespma
WHERE thedate between 1140728  and date
And  vproc1 NE 0
GROUP BY 1,2,3,4
ORDER BY 1,2;
===




ORA-01536: space quota exceeded for tablespace 'TB_21761_ADMI_DAT_01'

DIME

===

spcdsrvp0065

PDW03

===

GRANT SELECT ON TABLE SGP_RELACIONAL.VW_DIOPE_02 to usr_dircl_c;

===

Boa tarde. 

Favor executar job no Control-M conforme informações abaixo. 

Rotina:  PUBLICA_RENAVAM_HOM
Horário de Submissão: O mais breve
Código de serviço - 39356
Servidor: dfcdsrvp0071 - 161.148.240.20 - BIHOM001 
Ambiente: Homologação 

Prezados, Favor executar o Cria_job (/home/dwpublic/dwpub/CONTROLMRENAVAM), da tabela T3935602, hoje (07/08/2015) o mais breve para publicação do DW na Homologação. 

Qualquer dúvida e/ou erro durante o processamento, favor entrar em contato com a CDSDW durante o expediente. Não é necessário acionamento noturno por ser ambiente de homologação.

Obrigado.


==================================================================
COLOCAR NO ERROS SOBREAVISO.
ORA-01659: unable to allocate MINEXTENTS beyond 16 in tablespace TB_SIAC_DAT_01

erro de tablespace tamanho pequeno

area_diskgroup - para mostrar o tamanho do diskgroup existente.

e datafile.sql.

============

Cq6zpPRqAiUk


ALTER USER "22961283604 " WITH PASSWORD 'Cq6zpPRqAiUk';

==================================================
alter table adnd.wd_sit_imp_exp modify nm_sit_imp_exp varchar2(80);
=========================

=====

grant sgp_view_desenv to "81852380144";
grant sgp_view_desenv to "85529893104";


grant sgp_view_desenv to "81852380144";
grant sgp_view_desenv to "85529893104";

Dbd_06818_Dwcorporativo=# grant sgp_view_desenv to "85529893104";
GRANT ROLE

SELECT INDEX_NAME FROM DBA_INDEXES WHERE TABLE_NAME='WD_PR_PROC_ADM';



=================================================
into snsp.wf_relatorios_publicos select * from snsp.wf_relatorios_publicos@dbl_publica_vir_world;
commit;

GRANT sgp_desenv to "71648976115", "04841422404", "00709235666", "99736438104", "00384622909", "04972829419", "09959295800", "00448406160", "13520572800", "57852421091", "87407701172", "85617547100", "69671664334", "35873370125";


select count (*) from SGPE.WD_VDEP_DEPENDENTES    where ID_SGPE_ASSUNTO = 3 AND dt_vdep_vigencia_ini = 20150901; 
select count (*) from SGPE.WD_VSER_SERVIDOR       where ID_SGPE_ASSUNTO = 3 AND dt_vser_vigencia_ini = 20150901; 
select count (*) from SGPE.WF_FFIN_FICHA          where ID_SGPE_ASSUNTO = 3 AND ID_FFIN_MES_REFERENCIA = 09 and ID_FFIN_ANO_REFERENCIA = 2015; 
select count (*) from SGPE.WF_VSER_SERVIDOR       where ID_SGPE_ASSUNTO = 3 AND ID_VSER_MES_REFERENCIA = 09 and ID_VSER_ANO_REFERENCIA = 2015; 
select count (*) from SGPE.WF_AFTM_AFASTAMENTOS   where ID_SGPE_ASSUNTO = 3 AND ID_AFTM_MES_REFERENCIA = 09 and ID_AFTM_ANO_REFERENCIA = 2015; 
select count (*) from SGPE.WF_VDEP_DEPENDENTES    where ID_SGPE_ASSUNTO = 3 AND ID_VDEP_MES_REFERENCIA = 09 and ID_VDEP_ANO_REFERENCIA = 2015;



=======================================================

       
    select ano, mes from pessoal.wf_pessoal401 where ano = 2014 and mes = 201408
    
    NA CARGA NÃO TEM NEM O MES 08 E O MES 09
    NA PRODUÇÃO NÃO TEM DO MES 08 PARA TRÁS. SOMENTE A PARTIR DO MES 09, OU SEJA O SELECT ESTÁ CORRETO. OS DADOS É QUE REALMENTE NÃO EXSITEM NA PRODUÇÃO E NEM 
    NA CARGA PARA O MES ESPEIFICADO.
    
-- =======================================================

ls


nohup ./cria_tabela_66.sh > cria_tabela_66.log &
nohup ./cria_tabela_62.sh > cria_tabela_62.log &
nohup ./cria_tabela_45.sh > cria_tabela_45.log &
nohup ./cria_tabela_45.sh > cria_tabela_45.log &
nohup ./cria_tabela_45.sh > cria_tabela_45.log &
nohup ./cria_tabela_45.sh > cria_tabela_45.log &
nohup ./cria_tabela_45.sh > cria_tabela_45.log &
nohup ./cria_tabela_45.sh > cria_tabela_45.log &
nohup ./cria_tabela_45.sh > cria_tabela_45.log &

-- ===================

SQL> 

  COUNT(*)
----------
  55608982
====================

==========================================================================
~/scripts/monta_script_extracao_tab_pdw03-com_zip-sem_cab-asp_dup.sh ADMIRPJ IBGE_20151109_INICIAL;
~/scripts/monta_script_extracao_tab_pdw03-com_zip-sem_cab-asp_dup.sh ADMIRPJ IBGE_20151109_43;
~/scripts/monta_script_extracao_tab_pdw03-com_zip-sem_cab-asp_dup.sh ADMIRPJ IBGE_20151109_44;
~/scripts/monta_script_extracao_tab_pdw03-com_zip-sem_cab-asp_dup.sh ADMIRPJ IBGE_20151109_45;
~/scripts/monta_script_extracao_tab_pdw03-com_zip-sem_cab-asp_dup.sh ADMIRPJ IBGE_20151109_52;
~/scripts/monta_script_extracao_tab_pdw03-com_zip-sem_cab-asp_dup.sh ADMIRPJ IBGE_20151109_53;
~/scripts/monta_script_extracao_tab_pdw03-com_zip-sem_cab-asp_dup.sh ADMIRPJ IBGE_20151109_54;
~/scripts/monta_script_extracao_tab_pdw03-com_zip-sem_cab-asp_dup.sh ADMIRPJ IBGE_20151109_57;
~/scripts/monta_script_extracao_tab_pdw03-com_zip-sem_cab-asp_dup.sh ADMIRPJ IBGE_20151109_61;
~/scripts/monta_script_extracao_tab_pdw03-com_zip-sem_cab-asp_dup.sh ADMIRPJ IBGE_20151109_62;
~/scripts/monta_script_extracao_tab_pdw03-com_zip-sem_cab-asp_dup.sh ADMIRPJ IBGE_20151109_66;

nohup ./ADMIRPJ_IBGE_20151109_INICIAL.sh > /dev/null 2>&1 &


=================


=======================================================================================================================


CREATE TABLESPACE TB_37260_SIGPGFN_STG_01 DATAFILE '+DG_BSA011/d_37260_sigpgfn/dwdes035/tb_37260_sigpgfn_stg_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 1024M MAXSIZE 5120M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------

create user "SIGPGFN_STG" IDENTIFIED by "SIGPGFN_STG" default tablespace "TB_37260_SIGPGFN_STG_01";

ok----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------

grant resource, connect, unlimited tablespace to SIGPGFN_STG;


ALTER DATABASE DATAFILE '+DG_BSA011/d_37260_sigpgfn/dwdes035/tb_37260_sigpgfn_dat_01_001.dbf' AUTOEXTEND ON MAXSIZE 19456M;

================================================================================================================================================

flip -bu *
  581   | 09/11/15 - 16:48:33 | file *
  582   | 09/11/15 - 16:51:06 | flip --help
  583   | 09/11/15 - 16:51:21 | flip -h
  584   | 09/11/15 - 16:52:06 | ls
  585   | 09/11/15 - 16:52:16 | flip -bm COCIF_0012_2015_01_Ficha_Inicial.sql
  586   | 09/11/15 - 16:52:22 | file COCIF_0012_2015_01_Ficha_Inicial.sql
  587   | 09/11/15 - 16:53:00 | vi COCIF_0012_2015_01_Ficha_Inicial.sql
  588   | 09/11/15 - 16:57:02 | file COCIF_0012_2015_01_Ficha_Inicial.sql
===========================================






--========================================================================================================================================================
não funcionou por que os são 6 colunas e precisam de valores default. e depois  desse erro acontecer outro erro de inserção por causa de aspas tente executar no sql developer que funcionou a inserção.
insert into sgpj.wd_dirf_tipo_rendimento (nr_dirf_tipo_rendimento, b_cd_dirf_tipo_rendimento, nm_dirf_tipo_rendimento) values(16, 240, 'Rendimentos de empregados ou contratados - COPA');
insert into sgpj.wd_dirf_tipo_rendimento (nr_dirf_tipo_rendimento,b_cd_dirf_tipo_rendimento,nm_dirf_tipo_rendimento) values(17,250,'Prêmios de árbitros, jogadores de futebol e outros membros das delegações - COPA');
commit;

--==============
==
TB_21764_COBR_STG_01
COBR_STG.CCSS_PK
=========================================================
creuza
alter table sigpgfn.sigsaj_tipoinscricao
MODIFY (DS_TIPO_INSCRICAO VARCHAR2(25 BYTE));

update sigpgfn.sigsaj_tipoinscricao
set DS_TIPO_INSCRICAO = 'Tributário/Não Tributário'
where ID_TIPO_INSCRICAO = 1;
commit;
========================================
GRANT ALL ON TABLE dv.h_area_h_area_bk_seq TO usr_dwcorp;
GRANT ALL ON TABLE dv.h_superintendencia_h_superintendencia_bk_seq TO usr_dwcorp;
GRANT ALL ON TABLE dv.l_lotetrabalho_solicitacaoservico_l_lt_solicitacaoservico_i_seq TO usr_dwcorp;
GRANT ALL ON TABLE dv.l_sistema_area_l_sistema_area_id_seq TO usr_dwcorp;
GRANT ALL ON TABLE dv.l_sistema_servico_l_sistema_servico_id_seq TO usr_dwcorp;
GRANT ALL ON TABLE dv.l_sistema_superintendencia_l_sistema_superintendencia_id_seq TO usr_dwcorp;
GRANT ALL ON TABLE dv.l_solicitacaoservico_solicit_l_solicitacaoservico_solicit_seq TO usr_dwcorp;

===============================================
psql -U postgres -d Dbh_06818_DwCorporativo -f INFOEP-SQL-H-000111.sql > LOGMARCOS20151109hom.LOG 2>&1 &
psql -U postgres -d Dbc_06818_Dwcorporativo -f INFOEP-SQL-C-000111.sql > LOGMARCOS20151109carga.LOG 2>&1 &
psql -U postgres -d Dbp_06818_DwCorporativo -f INFOEP-SQL-P-000111.sql > LOGMARCOS20151109prod.LOG 2>&1 &
=======================================================

ALTER TABLE SIGPGFN.SIG_DEVEDOR_DETALHADO ADD NR_CPF_CNPJ_DEVEDOR_DETALHADO2 NUMBER(14,0);

ALTER TABLE SIGPGFN.SIG_SERVIDOR ADD NR_CPF_SERVIDOR2 NUMBER(11,0);


--=======================================================================================
2015RDM/000034548 - MARCOS ANDRÉ ALTERAÇÃO DE TABLESPACE. DW TRANSITO.

--===========================================

CSS, favor abrir uma RS para o grupo (GSCDDFOLAPDW).

1) Nome do servico: WS-ALM
2) Ambiente: TREINAMENTO
3) Codigo do servico: 99456
4) UG: SUPST
5) Numero do acionamento ou RDM que originou a solicitacao: 2015RDM/000027494
6) DEMANDA: Favor incluir no arquivo pg_hba.conf o seguinte servidor/usuario:

- IP DO SERVIDOR DE APLICACAO: 161.148.42.30
- BASE: Dbp_06818_DwCorporativo
- HOST: 161.148.236.33
- PORTA: 5432
- USER: usr_dwcorp_wsalm_p
- OBS: Verficar a possibilidade de criar outro usuario com as mesmas permissoes.

--====================================================
Dbd_06818_Dwcorporativo

Dbd_06818_Dwcorporativo=# CREATE USER usr_dwcorporativo_d WITH PASSWORD 'jw8s0F4';
CREATE ROLE
Dbd_06818_Dwcorporativo=# grant usr_dwcorp to usr_dwcorporativo_d;
GRANT ROLE
Dbd_06818_Dwcorporativo=# grant sgp_desenv to usr_dwcorporativo_d;
GRANT ROLE

---============================
ALTER TABLE sigpgfn.sig_servidor ADD NR_CPF_SERVIDOR_FORMAT  VARCHAR2(14 BYTE);

select count(*) from SGPF.WF_SGPF_PBPD subpartition (PT_PBPD_AC_2012);

==========PRODUCAO========================================================================

ALTER TABLE dides.sigecom_registro_execucao
  OWNER TO usr_dwcorporativo_p;
GRANT ALL ON TABLE dides.sigecom_registro_execucao TO usr_dwcorporativo_p;

ALTER TABLE dides.sigecom_conteudo_arquivo
  OWNER TO usr_dwcorporativo_p;
GRANT ALL ON TABLE dides.sigecom_conteudo_arquivo TO usr_dwcorporativo_p;

ALTER TABLE dides.sigecom_log_execucao
  OWNER TO usr_dwcorporativo_p;
GRANT ALL ON TABLE dides.sigecom_log_execucao TO usr_dwcorporativo_p;

==========HOMOLOGACAO==========================================================================


CREATE SEQUENCE dides.sigecom_registro_execucao_id_registro_execucao_seq;

CREATE TABLE dides.sigecom_registro_execucao (
                id_registro_execucao INTEGER NOT NULL DEFAULT nextval('dides.sigecom_registro_execucao_id_registro_execucao_seq'),
                nr_ano SMALLINT NOT NULL,
                nr_mes SMALLINT NOT NULL,
                id_ug INTEGER NOT NULL,
                caminho_arquivo VARCHAR,
                dt_agendamento TIMESTAMP,
                dt_inicio_execucao TIMESTAMP,
                dt_fim_execucao TIMESTAMP,
                CONSTRAINT pk_sigecom_registro_execucao PRIMARY KEY (id_registro_execucao)
);
COMMENT ON TABLE dides.sigecom_registro_execucao IS 'Tabela dos registros de execução das extrações para o SIGECOM. 
O ETL busca nessa tabela se há algum registro para ser executado.';
COMMENT ON COLUMN dides.sigecom_registro_execucao.nr_ano IS 'Número do ano de referência (ex: 2015)';
COMMENT ON COLUMN dides.sigecom_registro_execucao.nr_mes IS 'Número do mês (1-12) de referência.';
COMMENT ON COLUMN dides.sigecom_registro_execucao.id_ug IS 'ID da UG de referência para a extração.';
COMMENT ON COLUMN dides.sigecom_registro_execucao.caminho_arquivo IS 'Local de armazenamento do arquivo gerado pela extração.';
COMMENT ON COLUMN dides.sigecom_registro_execucao.dt_agendamento IS 'Data para a qual foi previamente agendada uma execução do processo de carga do arquivo de apropriações para o SIGECOM.';
COMMENT ON COLUMN dides.sigecom_registro_execucao.dt_fim_execucao IS 'Data e hora em que a execução foi realizada. (NULL siginifica que a execução ainda não foi executada para esse registro).';


ALTER SEQUENCE dides.sigecom_registro_execucao_id_registro_execucao_seq OWNED BY dides.sigecom_registro_execucao.id_registro_execucao;

CREATE TABLE dides.sigecom_log_execucao (
                id_registro_execucao INTEGER NOT NULL,
                id_tarefa INTEGER,
                id_projeto INTEGER NOT NULL,
                codigo_servico VARCHAR,
                classificacao VARCHAR,
                user_id VARCHAR,
                codigo_local INTEGER,
                tipo_insumo SMALLINT,
                codigo_insumo INTEGER,
                dt_apropriacao TIMESTAMP,
                quantidade_apropriada NUMERIC(10,2),
                descricao_erro VARCHAR(200),
                dt_atualizacao TIMESTAMP DEFAULT NOW() NOT NULL
);


CREATE TABLE dides.sigecom_conteudo_arquivo (
                id_registro_execucao INTEGER NOT NULL,
                codigo_servico INTEGER,
                tipo_insumo SMALLINT,
                codigo_insumo INTEGER,
                codigo_local INTEGER,
                matricula INTEGER,
                tipo_volume SMALLINT,
                codigo_atributo_volume SMALLINT,
                quantidade_apropriada NUMERIC(10,2)
);


ALTER TABLE dides.sigecom_conteudo_arquivo ADD CONSTRAINT registro_execucao_sigecom_conteudo_arquivo_sigecom_fk
FOREIGN KEY (id_registro_execucao)
REFERENCES dides.sigecom_registro_execucao (id_registro_execucao)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE dides.sigecom_log_execucao ADD CONSTRAINT sigecom_registro_execucao_sigecom_log_execucao_fk
FOREIGN KEY (id_registro_execucao)
REFERENCES dides.sigecom_registro_execucao (id_registro_execucao)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE dides.sigecom_registro_execucao
  OWNER TO usr_dwcorporativo_h;
GRANT ALL ON TABLE dides.sigecom_registro_execucao TO usr_dwcorporativo_h;

ALTER TABLE dides.sigecom_conteudo_arquivo
  OWNER TO usr_dwcorporativo_h;
GRANT ALL ON TABLE dides.sigecom_conteudo_arquivo TO usr_dwcorporativo_h;

ALTER TABLE dides.sigecom_log_execucao
  OWNER TO usr_dwcorporativo_h;
GRANT ALL ON TABLE dides.sigecom_log_execucao TO usr_dwcorporativo_h;

==========CARGA==========================================================================

CREATE SEQUENCE dides.sigecom_registro_execucao_id_registro_execucao_seq;

CREATE TABLE dides.sigecom_registro_execucao (
                id_registro_execucao INTEGER NOT NULL DEFAULT nextval('dides.sigecom_registro_execucao_id_registro_execucao_seq'),
                nr_ano SMALLINT NOT NULL,
                nr_mes SMALLINT NOT NULL,
                id_ug INTEGER NOT NULL,
                caminho_arquivo VARCHAR,
                dt_agendamento TIMESTAMP,
                dt_inicio_execucao TIMESTAMP,
                dt_fim_execucao TIMESTAMP,
                CONSTRAINT pk_sigecom_registro_execucao PRIMARY KEY (id_registro_execucao)
);
COMMENT ON TABLE dides.sigecom_registro_execucao IS 'Tabela dos registros de execução das extrações para o SIGECOM. 
O ETL busca nessa tabela se há algum registro para ser executado.';
COMMENT ON COLUMN dides.sigecom_registro_execucao.nr_ano IS 'Número do ano de referência (ex: 2015)';
COMMENT ON COLUMN dides.sigecom_registro_execucao.nr_mes IS 'Número do mês (1-12) de referência.';
COMMENT ON COLUMN dides.sigecom_registro_execucao.id_ug IS 'ID da UG de referência para a extração.';
COMMENT ON COLUMN dides.sigecom_registro_execucao.caminho_arquivo IS 'Local de armazenamento do arquivo gerado pela extração.';
COMMENT ON COLUMN dides.sigecom_registro_execucao.dt_agendamento IS 'Data para a qual foi previamente agendada uma execução do processo de carga do arquivo de apropriações para o SIGECOM.';
COMMENT ON COLUMN dides.sigecom_registro_execucao.dt_fim_execucao IS 'Data e hora em que a execução foi realizada. (NULL siginifica que a execução ainda não foi executada para esse registro).';


ALTER SEQUENCE dides.sigecom_registro_execucao_id_registro_execucao_seq OWNED BY dides.sigecom_registro_execucao.id_registro_execucao;

CREATE TABLE dides.sigecom_log_execucao (
                id_registro_execucao INTEGER NOT NULL,
                id_tarefa INTEGER,
                id_projeto INTEGER NOT NULL,
                codigo_servico VARCHAR,
                classificacao VARCHAR,
                user_id VARCHAR,
                codigo_local INTEGER,
                tipo_insumo SMALLINT,
                codigo_insumo INTEGER,
                dt_apropriacao TIMESTAMP,
                quantidade_apropriada NUMERIC(10,2),
                descricao_erro VARCHAR(200),
                dt_atualizacao TIMESTAMP DEFAULT NOW() NOT NULL
);


CREATE TABLE dides.sigecom_conteudo_arquivo (
                id_registro_execucao INTEGER NOT NULL,
                codigo_servico INTEGER,
                tipo_insumo SMALLINT,
                codigo_insumo INTEGER,
                codigo_local INTEGER,
                matricula INTEGER,
                tipo_volume SMALLINT,
                codigo_atributo_volume SMALLINT,
                quantidade_apropriada NUMERIC(10,2)
);

ALTER TABLE dides.sigecom_conteudo_arquivo ADD CONSTRAINT registro_execucao_sigecom_conteudo_arquivo_sigecom_fk
FOREIGN KEY (id_registro_execucao)
REFERENCES dides.sigecom_registro_execucao (id_registro_execucao)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE dides.sigecom_log_execucao ADD CONSTRAINT sigecom_registro_execucao_sigecom_log_execucao_fk
FOREIGN KEY (id_registro_execucao)
REFERENCES dides.sigecom_registro_execucao (id_registro_execucao)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE dides.sigecom_registro_execucao
  OWNER TO usr_dwcorporativo_c;
GRANT ALL ON TABLE dides.sigecom_registro_execucao TO usr_dwcorporativo_c;

ALTER TABLE dides.sigecom_conteudo_arquivo
  OWNER TO usr_dwcorporativo_c;
GRANT ALL ON TABLE dides.sigecom_conteudo_arquivo TO usr_dwcorporativo_c;

ALTER TABLE dides.sigecom_log_execucao
  OWNER TO usr_dwcorporativo_c;
GRANT ALL ON TABLE dides.sigecom_log_execucao TO usr_dwcorporativo_c;


===================================================================
GRANT SELECT ON TABLE dm.f_analise_apropriacao_supde TO usr_dwcorp_pbi_p;
GRANT ALL ON TABLE dm.f_analise_apropriacao_supde TO usr_dwcorp_wsalm_p;
================ fatoce 
ALTER TABLE FATOCE.EXPORTACAO1_TAB ADD PARTITION "EXP1_2016"  VALUES LESS THAN (2017);
ALTER TABLE FATOCE.IMPORT_PROD1_TAB ADD PARTITION "IMPORT_PROD1_2016"  VALUES LESS THAN (2017);
ALTER TABLE FATOCE.IMPORTACAO1_TAB ADD PARTITION "IMP1_2016"  VALUES LESS THAN (2017);
--=====execução postgres=================================
insert into dides.tiat_tipo_atividade (tiat_idt_chave, tiat_dsc_nome, tiat_bln_ativo, co_ug) values (select max(tiat_idt_chave)+1 from dides.tiat_tipo_atividade,'Design','Y',6524);

ALTER TABLE SPED.WD_SPED_PLPF_ANUAL ADD PARTITION PT_PLPFANUAL_2016 VALUES (2016)  TABLESPACE TB_21746_SPED_DAT_01 NOLOGGING;
ALTER TABLE SPED.WD_SPED_PLPF_ANUAL ADD PARTITION PT_PLPFANUAL_2017 VALUES (2017)  TABLESPACE TB_21746_SPED_DAT_01 NOLOGGING;
==================


- TABELA 

ARRC;WF_ARRC_COMP_LIQ_DIAS_VERT

SUBPARTIÇÃO SPT_ADIV_RA_DEC_2015_12_3


- TABELA 

WF_ARRC_COMP_LIQ_TOT_VERT

SUBPARTICÃO SPT_ATOV_RA_DEC_2015_12_3 


================
select 'Drop index ARRC.' || index_name || ' ; '
from dba_indexes
where owner = 'ARRC' 
and table_name = 'WF_ARRC_COMP_LIQ_DIAS_VERT ' order by 1;


select index_name 
from dba_indexes
where owner = 'DIME' 
order by 1;




select constraint_name, status from user_constraints where table_name = 'ARRC.WF_ARRC_COMP_LIQ_DIAS_VERT';

--================================================================
===================================
ALTER TABLESPACE TB_21746_SPED_IND_01
    ADD DATAFILE '+DG_FLASH/pdw03/datafile/tb_21746_sped_ind_01_46.dbf' SIZE 10240M
      AUTOEXTEND ON
      NEXT 78336
      MAXSIZE 32767M;

ALTER TABLESPACE TB_21746_SPED_IND_01
    ADD DATAFILE '+DG_FLASH/pdw03/datafile/tb_21746_sped_ind_01_47.dbf' SIZE 10240M
      AUTOEXTEND ON
      NEXT 78336
      MAXSIZE 32767M;

===========================================
VER ESSA SOLUÇÃO AQUI PARA RESOLVER.
DEISEP3_DD_CTR_CNPJ_EMP_BM
SPED.WF_SPED_DEIS_EP3


Da mesma forma como aconteceu no exemplo com os utilitários (exp/imp), podemos perceber acima que o Oracle também irá primeiro criar o índice para depois criar a constraint primary key. Após a importação da tabela T1, irei simular abaixo o erro ORA-00955:

C:\>sqlplus scott/tiger

SQL*Plus: Release 11.2.0.1.0 Production on Dom Nov 6 10:23:45 2011

Copyright (c) 1982, 2010, Oracle.  All rights reserved.

Conectado a:
Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options

SQL> alter table t1 drop primary key;

Tabela alterada.

SQL> alter table t1 add (id2 number);

Tabela alterada.

SQL> alter table t1 add constraint pk_t1 primary key (id,id2);
alter table t1 add constraint pk_t1 primary key (id,id2)
* ERRO na linha 1: ORA-00955: nome já está sendo usado por um objeto existente


Perceberam o motivo do erro? O Oracle tentou criar um índice com o nome PK_T1. A questão é que o índice que foi utilizado pela chave primária anterior foi mantido no banco de dados:

SQL> select table_name,index_name from user_indexes;

TABLE_NAME                     INDEX_NAME
------------------------------ ------------------------------
T1                             PK_T1


A explicação é que, após dropar a chave primária, criar uma nova coluna na tabela e criar novamente a chave primária, o índice PK_T1 existente não foi reaproveitado (por motivos óbvios). Neste caso, o Oracle tentou criar um índice com o mesmo nome da constraint, o que gerou o erro ORA-00955. Para resolver o problema teremos que dropar o índice PK_T1 explicitamente antes de criar a nova primary key.

SQL> drop index pk_t1;

Índice eliminado.

SQL> alter table t1 add constraint pk_t1 primary key (id,id2);

Tabela alterada.


Leia mais: http://eduardolegatti.blogspot.com/2011/11/desvendando-o-erro-ora-00955-durante.html#ixzz3yFO50KLw
Under Creative Commons License: Attribution Non-Commercial

--==============================================================================================================
select count(*) from dbh_33393_dwtg_stg.WF_ACOM_ORCAMENTARIO_LOGA;
select count(*) from dbh_33393_dwtg.WF_ACOM_ORCAMENTARIO_LOGA;

--RUN TOGHETER THE TWO BELOW;

delete from dbh_33393_dwtg.WF_ACOM_ORCAMENTARIO_LOGA;
INSERt into dbh_33393_dwtg.WF_ACOM_ORCAMENTARIO_LOGA select * from DBH_33393_DWTG_STG.WF_ACOM_ORCAMENTARIO_LOGA;

select default_tablespace from  dba_users where username = 'ms941desstnmd'; -->>>> para ver o tablespace do usuário default.

## =====================================================================================================================================
CREATE TABLESPACE TB_07651_MS102HMJMD_DAT_01 DATAFILE '+DG_BSA093/h_07651_mstr/bimd001/tb_07651_ms102hmjmd_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
CREATE TABLESPACE TB_07651_MS102HMJLH_DAT_01 DATAFILE '+DG_BSA093/h_07651_mstr/bimd001/tb_07651_ms102hmjlh_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------
create user MS102HMJMD IDENTIFIED by "456homcond321$bsamd" default tablespace "TB_07651_MS102HMJMD_DAT_01";
create user MS102HMJLH IDENTIFIED by "456homcond321$bsals" default tablespace "TB_07651_MS102HMJLH_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS102HMJMD;
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS102HMJLH;

--=======================================================================================================================================
drop tablespace TB_07651_MS102HOMSNSPMD_DAT_01 INCLUDING CONTENTS and DATAFILES;

--=DESENVOLVIMENTO=====================================================================================================================
## =====================================================================================================================================
CREATE TABLESPACE TB_07651_MS102DMJMD_DAT_01 DATAFILE '+DG_BSA105/d_07651_mstr/bimd004/tb_07651_ms102dmjmd_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
CREATE TABLESPACE TB_07651_MS102DMJLH_DAT_01 DATAFILE '+DG_BSA105/d_07651_mstr/bimd004/tb_07651_ms102dmjlh_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------
create user MS102DMJMD IDENTIFIED by "456descond321$bsamd" default tablespace "TB_07651_MS102DMJMD_DAT_01";
create user MS102DMJLH IDENTIFIED by "456descond321$bsals" default tablespace "TB_07651_MS102DMJLH_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS102DMJMD;
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS102DMJLH;

--=======================================================================================================================================
drop tablespace TB_07651_MS102HOMSNSPMD_DAT_01 INCLUDING CONTENTS and DATAFILES;

========================================================
17/02/2016

SIGPGFN.sig10_medidas_procurador_h

select table_name, partition_name from dba_tab_partitions where table_owner = 'SIGPGFN' and table_name = 'SIG3_CORESP_H';

drop table SIGPGFN.SIG2_CERTIDAO_SRF purge;

--===========================================================================================
select count(*) from oracle_33393_dwtg.WD_ACAO_PT;
select count(*) from dbp_33393_dwtg.WD_ACAO_PT;

select count(*) from oracle_33393_dwtg.WD_FUNCAO_PT;
select count(*) from dbp_33393_dwtg.WD_FUNCAO_PT;

select count(*) from oracle_33393_dwtg.WD_LOCALIZADOR_GASTO_PT;
select count(*) from dbp_33393_dwtg.WD_LOCALIZADOR_GASTO_PT;

select count(*) from oracle_33393_dwtg.WD_PO;
select count(*) from dbp_33393_dwtg.WD_PO;

select count(*) from oracle_33393_dwtg.WD_PRODUTO;
select count(*) from dbp_33393_dwtg.WD_PRODUTO;

select count(*) from oracle_33393_dwtg.WD_PROGRAMA_PT;
select count(*) from dbp_33393_dwtg.WD_PROGRAMA_PT;

select count(*) from oracle_33393_dwtg.WD_PT;
select count(*) from dbp_33393_dwtg.WD_PT;

select count(*) from oracle_33393_dwtg.WD_SUBFUNCAO_PT;
select count(*) from dbp_33393_dwtg.WD_SUBFUNCAO_PT;

select count(*) from oracle_33393_dwtg.WD_UNIDADE_MEDIDA;
select count(*) from dbp_33393_dwtg.WD_UNIDADE_MEDIDA;
-- essa tabela abaixo does not exist in the database oracle_33393_dwtg
select count(*) from oracle_33393_dwtg.WF_ACOM_ORCAMENTARIO_LOGA;
select count(*) from dbp_33393_dwtg.WF_ACOM_ORCAMENTARIO_LOGA;

select count(*) from DBD_33393_DWTG.WA_CONTROLE_ETC
select count(*) from DBH_33393_DWTG_2016.WA_CONTROLE_ETC

DESENVOLVIMENTO
DBD_33393_DWTG.WA_CONTROLE_ETC

PARA 
HOMOLOGACAO
DBH_33393_DWTG_2016.WA_CONTROLE_ETC


--RUN TOGHETER THE TWO BELOW;

=======================================================

======================================================================================================================================
ALTER TABLE SIGPGFN.SIG3_CORESP_H MODIFY 
(ID_PRESCRICAO_SV08 NOT NULL,
ID_DEV_DETALHADO_SIDA NOT NULL);



Dbh_06818_DwCorporativo=# alter table siareweb_relacional.item_registro_producao add column id_consignacao_detalhe integer;
ALTER TABLE
Dbh_06818_DwCorporativo=# 

==
DESENVOLVIMENTO
DBD_33393_DWTG.WA_CONTROLE_ETC

PARA 
HOMOLOGACAO
DBH_33393_DWTG_2016.WA_CONTROLE_ETC

--=================================================================================================================

## =====================================================================================================================================
CREATE TABLESPACE TB_07651_MS102HMJMD_DAT_01 DATAFILE '+DG_BSA093/h_07651_mstr/bimd001/tb_07651_ms102hmjmd_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------
create user SNSP1 IDENTIFIED by "snsp1" default tablespace "TB_07624_SNSP_DAT_01";

----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource,  connect, create view, unlimited tablespace to SNSP1;

## =====================================================================================================================================
CREATE TABLESPACE TB_07653_PC961PDOM_DAT_01 DATAFILE '+DG_BSA097/p_07653_pwrcenter/bimd002/tb_07653_pc961pdom_dat_01_01.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
CREATE TABLESPACE TB_07653_PC961PSNSPREP_DAT_01 DATAFILE '+DG_BSA097/p_07653_pwrcenter/bimd002/tb_07653_pc961psnsprep_dat_01_01.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------
create user PC961PDOM IDENTIFIED by "456pctrprod321bsa" default tablespace "TB_07653_PC961PDOM_DAT_01";
create user PC961PSNSPREP IDENTIFIED by "456pctrpr321bsa" default tablespace "TB_07653_PC961PSNSPREP_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961PDOM;
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961PSNSPREP;

## =====================================================================================================================================
CREATE TABLESPACE TB_07653_PC961DDOM_DAT_01 DATAFILE '+DG_BSA105/p_07653_pwc/bimd004/tb_07653_pc961ddom_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
CREATE TABLESPACE TB_07653_PC961DSNSPREP_DAT_01 DATAFILE '+DG_BSA105/p_07653_pwc/bimd004/tb_07653_pc961dsnsprep_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------
create user PC961DDOM IDENTIFIED by "456pctrdes321bsa" default tablespace "TB_07653_PC961DDOM_DAT_01";
create user PC961DSNSPREP IDENTIFIED by "456pctrdes321bsa" default tablespace "TB_07653_PC961DSNSPREP_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961DDOM;
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961DSNSPREP;



--==================================================
melhorando isso aqui 
select 'wd_categoria' as tabela, count(*) from snsp1.wd_categoria;

select 'select count(*) from SNSP1.'||table_name||';' from ALL_TABLES WHERE OWNER ='SNSP1' and table_name like 'W%'; -->>>>>>>> comando em massa para contar registros de uma tabela.
================================================================================================
select distinct ' create synonym ADMEPRO.' || t.table_name || ' for ' ||  t.owner || '.' || t.table_name ||';' 
from dba_tables t 
where not exists (select null from dba_synonyms s 
		where t.owner = s.table_owner 
		and t.table_name = s.table_name 
		and s.owner = 'ADMEPRO') 
		AND T.OWNER = 'EPRO'
/


select distinct ' create synonym ADMPROC.' || t.table_name || ' for ' ||  t.owner || '.' || t.table_name ||';' 
from dba_tables t 
where not exists (select null from dba_synonyms s 
		where t.owner = s.table_owner 
		and t.table_name = s.table_name 
		and s.owner = 'ADMPROC') 
		AND T.OWNER = 'PROC'
/

select distinct ' create synonym ADMDLEL.' || t.table_name || ' for ' ||  t.owner || '.' || t.table_name ||';' 
from dba_tables t 
where not exists (select null from dba_synonyms s 
		where t.owner = s.table_owner 
		and t.table_name = s.table_name 
		and s.owner = 'ADMDLEL') 
		AND T.OWNER = 'DLEL'
/





456pctrprod321bsa

--=====================================================================
pdw031 > alter table cnpj.WD_CNPJ_ESTA add NR_CNPJ_ESTA_IND_RET_AT NUMBER(1,0) DEFAULT -8 NOT NULL ENABLE; 

Table altered.

pdw031 > alter table cnpj_stg.Wt_CNPJ_ESTA_delta add NR_CNPJ_ESTA_IND_RET_AT NUMBER(1,0) DEFAULT -8 NOT NULL ENABLE; 
alter table cnpj_stg.Wt_CNPJ_ESTA_delta add NR_CNPJ_ESTA_IND_RET_AT NUMBER(1,0) DEFAULT -8 NOT NULL ENABLE
*
ERROR at line 1:
ORA-00942: table or view does not exist
=======================================================================

CREATE USER MAPPING FOR "00045775150" SERVER dbl_06818_oltp_des OPTIONS (user 'usr_dblink_d', password '1iAj5mLzBFDcU15p');
GRANT USAGE ON FOREIGN SERVER dbl_06818_oltp_des TO "00045775150";


--===========================================
    
INSERT INTO log_bi_corporativo.processos_carga (nome) VALUES ( 'FCT' );
INSERT INTO log_bi_corporativo.processos_producao (nome) VALUES ( 'FCT' );
	

--===========================================

--==================================================================================
WAREHOUSE

BIPRO001	-DFCDSRVP0076	161.148.236.20
BIHOM001	-DFCDSRVP0071	161.148.240.20
BITRE001	-DFCDSRVP0078	161.148.240.22
DWCRG36	-DSRVP0009		10.200.145.223
DWDES035	-DFCDSRVP0021	10.200.144.17

METADADOS

BIMD002	DFCDSRVP0074		161.148.236.19
BIMD001	DFCDSRVP0070		161.148.240.19
BIMD003	DFCDSRVP0079		161.148.240.23
BIMD004	DFCDSRVP0081		161.148.239.23
BIMD005	DFCDSRVP0098		161.148.239.100
DWMD35 
--====================================================
ALTER USER D01667074733 identified by 0747331

ALTER USER MS102PMJMD 
    IDENTIFIED BY 456prodcond321$bsamd
--=====================================================
CREATE SYNONYM ADMANCO.WD_PGTO_CON_SIT_REG FOR PGTO.WD_PGTO_CON_SIT_REG;
CREATE SYNONYM ADMPGTO.WD_PGTO_CON_SIT_REG FOR PGTO.WD_PGTO_CON_SIT_REG;
CREATE SYNONYM ADMARRC.WD_PGTO_CON_SIT_REG FOR PGTO.WD_PGTO_CON_SIT_REG;
CREATE SYNONYM ADMANCO.WD_PGTO_FORMA_PAGAMENTO FOR PGTO.WD_PGTO_FORMA_PAGAMENTO;
CREATE SYNONYM ADMPGTO.WD_PGTO_FORMA_PAGAMENTO FOR PGTO.WD_PGTO_FORMA_PAGAMENTO;
CREATE SYNONYM ADMARRC.WD_PGTO_FORMA_PAGAMENTO FOR PGTO.WD_PGTO_FORMA_PAGAMENTO;
CREATE SYNONYM ADMANCO.WF_PGTO_DJLE FOR PGTO.WF_PGTO_DJLE;
CREATE SYNONYM ADMPGTO.WF_PGTO_DJLE FOR PGTO.WF_PGTO_DJLE;
CREATE SYNONYM ADMARRC.WF_PGTO_DJLE FOR PGTO.WF_PGTO_DJLE;
CREATE SYNONYM ADMANCO.WF_PGTO_LEVA FOR PGTO.WF_PGTO_LEVA;
CREATE SYNONYM ADMPGTO.WF_PGTO_LEVA FOR PGTO.WF_PGTO_LEVA;
CREATE SYNONYM ADMPROC.WD_INSD_SIM_NAO FOR DIME.WD_INSD_SIM_NAO; 

--===============================================================================
ver amanhã

- criação de um usuário (ex: usr_bicorporativo) para ser utilizado pelo BI Corporativo

- conceder permissão de leitura em todos os objetos do banco para o usuário criado;

- inclusão deste usuário associado ao IP 161.148.236.31 (servidor de ETL) no pg_hba.conf

- encaminhar usuário e senha para equipe GMCDDF-OLAPDW para eles configurarem no servidor de ETL do BI Corporativo.
===
ALTER TABLE EECF.WF_EECF_SIGN DROP CONSTRAINT SIGN_DSQF_FK

--=========================================================================================
dwh01 > alter user SNSP_CIDADAO grant connect through dwpub;

User altered.

dwh01 > conn dwpub[D01667074733]@dwh01 
Enter password: 
Connected.
dwh01 > 
dwh01 > 
dwh01 > 
dwh01 > 
dwh01 > select table_name from dba_tables where owner = 'EECF';

dwh01 > 
dwh01 > 
dwh01 > conn dwpub[D01667074733]@dwh01 
Enter password: 
Connected.
dwh01 > 
dwh01 > 
dwh01 > select count(*) from EECF.WF_EECF_PEXT_EP1;

  COUNT(*)
----------
	 0

dwh01 > 

==========================================================================
delete from sigpgfn.sig_conta_tcu where ds_conta_tcu =  'EXCLUSAO DO PARCELAMENTO LEI 11.941/2009 (POSITIVA E ELETRONICA)' and id_conta_tcu = 923;
commit;

delete from sigpgfn.sig_conta_tcu
where ds_conta_tcu =  EXCLUSAO DO PARCELAMENTO LEI 11.941/2009 (POSITIVA E ELETRONICA) 
and id_conta_tcu = 923;
commit;


## =====================================================================================================================================
CREATE TABLESPACE TB_07624_PC961DSNSPREP_DAT_01 DATAFILE '+DG_BSA105/p_07624_pwc/bimd004/tb_07653_pc961dtreirep_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 2048M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------
create user ADMSFMDPRO IDENTIFIED by "456sptfp321bsa" default tablespace "TB_07650_SFMDPRO_DAT_01";


create user PC961DDOM IDENTIFIED by "456pctrdes321bsa" default tablespace "TB_07653_PC961DDOM_DAT_01";


----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
select 
'grant select on SNSP.'
||table_name||
' to SNSG;' 
from dba_tables where owner='SNSP';

grant resource, connect, unlimited tablespace to ADMSVRF;

GRANT.SQL
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE USER "00872319130" WITH PASSWORD 'JtUQHjwDh8oRQ';
CREATE USER "00368100375" WITH PASSWORD 'N54WL9HLfKxTI';
CREATE USER "04817003669" WITH PASSWORD '5NPa1MFBTW6cE';
CREATE USER "03323620941" WITH PASSWORD 'eYodfLbYi2cW6';
CREATE USER "01218493178" WITH PASSWORD 'QD7z7TP95/ywA';
  
grant usr_dwcorp to "00872319130";
grant usr_dwcorp to "00368100375";
grant usr_dwcorp to "04817003669";
grant usr_dwcorp to "03323620941";
grant usr_dwcorp to "01218493178";

10.34.204.67
10.34.204.66
10.11.150.76
10.11.150.65
10.11.150.45
10.14.1.212
10.14.1.246
10.14.1.88

--==============================

--===========================================================================
NOVO METADADOS PARA VOLTAR MIGRAÇÃO 941
--DESENVOLVIMENTO
CREATE TABLESPACE TB_07651_MS941DMJMD_DAT_01 DATAFILE '+DG_BSA105/d_07651_mstr/bimd004/tb_07651_ms941dmjmd_dat_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
CREATE TABLESPACE TB_07651_MS941DMJLH_DAT_01 DATAFILE '+DG_BSA105/d_07651_mstr/bimd004/tb_07651_ms941dmjlh_dat_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------
create user MS941DMJMD IDENTIFIED by "456descond321$bsamd" default tablespace "TB_07651_MS941DMJMD_DAT_01";
create user MS941DMJLH IDENTIFIED by "456descond321$bsalh" default tablespace "TB_07651_MS941DMJLH_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, connect, unlimited tablespace to MS941DMJMD;
grant resource, connect, unlimited tablespace to MS941DMJLH;

--PRODUÇÃO
CREATE TABLESPACE TB_07651_MS941PMJMD_DAT_01 DATAFILE '+DG_BSA097/p_07651_mstr/bimd002/tb_07651_ms941pmjmd_dat_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
CREATE TABLESPACE TB_07651_MS941PMJLH_DAT_01 DATAFILE '+DG_BSA097/p_07651_mstr/bimd002/tb_07651_ms941pmjlh_dat_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------
create user MS941PMJMD IDENTIFIED by "456prodcond321$bsamd" default tablespace "TB_07651_MS941PMJMD_DAT_01";
create user MS941PMJLH IDENTIFIED by "456prodcond321$bsalh" default tablespace "TB_07651_MS941PMJLH_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, connect, unlimited tablespace to MS941PMJMD;
grant resource, connect, unlimited tablespace to MS941PMJLH;


--HOMOLOGAÇÃO
CREATE TABLESPACE TB_07651_MS941HMJMD_DAT_01 DATAFILE '+DG_BSA093/h_07651_mstr/bimd001/tb_07651_ms941hmjmd_dat_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
CREATE TABLESPACE TB_07651_MS941HMJLH_DAT_01 DATAFILE  '+DG_BSA093/h_07651_mstr/bimd001/tb_07651_ms941hmjlh_dat_01_001.dbf'  SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------
create user MS941HMJMD IDENTIFIED by "456homcond321$bsamd" default tablespace "TB_07651_MS941HMJMD_DAT_01";
create user MS941HMJLH IDENTIFIED by "456homcond321$bsalh" default tablespace "TB_07651_MS941HMJLH_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, connect, unlimited tablespace to MS941HMJMD;
grant resource, connect, unlimited tablespace to MS941HMJLH;


--===========================================================================
--NOVO ENTERPRISE MANAGER PARA PRODUÇÃO - 941
CREATE TABLESPACE TB_07651_MS941PMJEM_DAT_01 DATAFILE '+DG_BSA096/p_07651_mstr/bipro001/tb_07651_ms941pmjem_dat_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

ALTER TABLESPACE "TB_07651_MS941PMJEM_DAT_01"
    ADD DATAFILE '+DG_BSA096/p_07651_mstr/bipro001/tb_07651_ms941pmjem_dat_01_002.dbf' SIZE 1024M
      AUTOEXTEND ON
      NEXT 19584
      MAXSIZE 32767M;
          

CREATE TABLESPACE TB_07651_MS941PMJEM_USR_01 DATAFILE  '+DG_BSA096/p_07651_mstr/bipro001/tb_07651_ms941pmjem_usr_01_001.dbf'  SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 4096M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------
create user MS941PMJEM IDENTIFIED by "456prodcond321$bsaem" default tablespace "TB_07651_MS941PMJEM_DAT_01";
create user ADMMS941PMJEM IDENTIFIED by "456prodcond321$bsaem" default tablespace "TB_07651_MS941PMJEM_USR_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant dba to MS941PMJEM; --=== para MICROSTRATEGY ENTERPRISE MANAGER


--para usuários adm - criar sinônimos depois que o usuário principal for criado e os objetos gerados pelo pessoal de ferramenta.
grant resource, connect,  unlimited tablespace to ADMMS941PMJEM;


--===================
--teradata 10/03/2016
delete from dbp_33393_dwtg.WD_ITEM_DECODIFICADO_CCON;
INSERt into dbp_33393_dwtg.WD_ITEM_DECODIFICADO_CCON select * from dbp_33393_dwtg_stg.WD_ITEM_DECODIFICADO_CCON;

--===================
2 Atividades

Executar os seguintes comandos no banco de dados do Teradata do Projeto Tesouro Gerencial.

ALTER TABLE DBH_33393_DWTG.WD_UG ADD CO_UG_SIORG INTEGER NOT NULL DEFAULT -9;
ALTER TABLE DBH_33393_DWTG.WD_ORGAO ADD CO_ORGAO_SIORG INTEGER NOT NULL DEFAULT -9;

ALTER TABLE DBH_33393_DWTG_2016.WD_UG ADD CO_UG_SIORG INTEGER NOT NULL DEFAULT -9;
ALTER TABLE DBH_33393_DWTG_2016.WD_ORGAO ADD CO_ORGAO_SIORG INTEGER NOT NULL DEFAULT -9;

ALTER TABLE DBP_33393_DWTG.WD_UG ADD CO_UG_SIORG INTEGER NOT NULL DEFAULT -9;
ALTER TABLE DBP_33393_DWTG.WD_ORGAO ADD CO_ORGAO_SIORG INTEGER NOT NULL DEFAULT -9;

ALTER TABLE DBP_33393_DWTG_2016.WD_UG ADD CO_UG_SIORG INTEGER NOT NULL DEFAULT -9;
ALTER TABLE DBP_33393_DWTG_2016.WD_ORGAO ADD CO_ORGAO_SIORG INTEGER NOT NULL DEFAULT -9;

--====================
2 Atividades

Por favor, publicar a tabela WD_CONTA_CONTABIL_EXERCICIO do banco de stage de homologa??o de 2015 (DBH_33393_DWTG_STG) para o banco de homologa??o de 2015 (DBH_33393_DWTG).

Banco Origem: DBH_33393_DWTG_STG
Banco Destino: DBH_33393_DWTG

Obrigado.


DELETE FROM DBH_33393_DWTG.WA_MES_ACUM ALL;
INSERT INTO DBH_33393_DWTG.WA_MES_ACUM SELECT * FROM DBH_33393_DWTG_STG.WA_MES_ACUM; 

DELETE FROM DBH_33393_DWTG.WD_CONTA_CONTABIL_EXERCICIO ALL;
INSERT INTO DBH_33393_DWTG.WD_CONTA_CONTABIL_EXERCICIO SELECT * FROM DBH_33393_DWTG_STG.WD_CONTA_CONTABIL_EXERCICIO; 


--=====================================
replace view mstrhomdwtg."WA_MES_ACUM"  ("ID_ANO","ID_MES",
    "ID_ANO_ACUM_ANO_SALDO","ID_MES_ACUM_ANO_SALDO",
    "ID_ANO_ACUM_ANO_MOVIMENTO","ID_MES_ACUM_ANO_MOVIMENTO",
    "AN_EXERCICIO_C","DT_CARGA_C","NO_ORIGEM_C","IN_OPERACAO_C") 
    AS  lock row for access 
    SELECT DISTINCT A.ID_ANO, M.ID_MES, 
A.ID_ANO AS ID_ANO_ACUM_ANO_SALDO, 
M.ID_MES_ACUM_ANO_SALDO, 
DECODE(M.ID_MES_ACUM_ANO_SALDO,0,TO_NUMBER(NULL),A.ID_ANO) AS ID_ANO_ACUM_ANO_MOVIMENTO, 
M.ID_MES_ACUM_ANO_MOVIMENTO, 
M.AN_EXERCICIO_C, 
M.DT_CARGA_C, 
M.NO_ORIGEM_C, 
M.IN_OPERACAO_C 
FROM dbh_33393_dwtg.WD_ANO A, dbh_33393_dwtg.WA_MES_ACUM_SEM_ANO M 
WHERE A.ID_ANO >= 2014;




REPLACE VIEW MSTRHOMDWTG. WA_MES_ACUM ( ID_ANO , ID_MES ,
ID_ANO_ACUM_ANO_SALDO , ID_MES_ACUM_ANO_SALDO ,
ID_ANO_ACUM_ANO_MOVIMENTO , ID_MES_ACUM_ANO_MOVIMENTO ,
AN_EXERCICIO_C , DT_CARGA_C , NO_ORIGEM_C , IN_OPERACAO_C )
AS LOCK ROW FOR ACCESS
SELECT DISTINCT A.ID_ANO, M.ID_MES,
A.ID_ANO AS ID_ANO_ACUM_ANO_SALDO,
M.ID_MES_ACUM_ANO_SALDO,
DECODE(M.ID_MES_ACUM_ANO_SALDO,0,TO_NUMBER(NULL),A.ID_ANO) AS ID_ANO_ACUM_ANO_MOVIMENTO,
M.ID_MES_ACUM_ANO_MOVIMENTO,
M.AN_EXERCICIO_C,
M.DT_CARGA_C,
M.NO_ORIGEM_C,
M.IN_OPERACAO_C
FROM DBH_33393_DWTG.WD_ANO A, DBH_33393_DWTG.WA_MES_ACUM_SEM_ANO M
WHERE A.ID_ANO >= 2008;

--=====================================================================
Encaminhar para: GMCDDF/PUBDW (Equipe de DW)
Sistema: DW Corporativo
Cod Servi?o: 06818
Ambiente: Banco de dados de desenvolvimento do BI Corporativo
IP: 161.148.239.33 (OLAP)
Porta: 5432
Banco: Dbd_06818_Dwcorporativo

Solicito criacao de mapeamento (USER MAPPING) e permissao de uso (GRANT USAGE) para o servidor de DBLINK configurado entre o ambiente mencionado e o ambiente 10.31.0.169 para os seguintes usuários:

99736438104
usr_desenv_alm

Dúvidas entrar em contato com Isabella Sampaio (#619504).
--==========================================================================
novo pg_hba
10.200.175.10
10.200.175.26
10.200.175.14
10.200.175.16
10.200.175.18
10.200.175.20
10.200.175.22
10.200.175.24
10.200.175.12
10.200.175.28
10.200.175.30
10.200.175.32
10.200.175.34
10.200.175.36
10.200.175.38
10.200.175.40
10.200.175.42
10.200.175.44
10.200.175.46
10.200.175.48
10.200.175.50
10.200.175.52
10.200.175.54
10.200.175.6
10.200.175.7

--======================================================================================
alter  USER "62623605220" WITH PASSWORD 'MydZXalup./jc';
alter USER "76111806220" WITH PASSWORD 'LK2BtwCPvmDdg';
  
grant usr_dwcorp to "62623605220";
grant usr_dwcorp to "76111806220";

85128899772
58476873115
--=========================================================================================
executado na produção 
ALTER SCHEMA dides OWNER TO usr_dwcorporativo_c;
ALTER SCHEMA dm OWNER TO usr_dwcorporativo_c;
ALTER SCHEMA dv OWNER TO usr_dwcorporativo_c;

GRANT ALL ON SCHEMA dides TO usr_dwcorporativo_p;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA dides TO usr_dwcorporativo_c,usr_dwcorporativo_p;

GRANT ALL ON SCHEMA dm TO usr_dwcorporativo_p;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA dm TO usr_dwcorporativo_c,usr_dwcorporativo_p;

GRANT ALL ON SCHEMA dv TO usr_dwcorporativo_p;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA dv TO usr_dwcorporativo_c,usr_dwcorporativo_p;



--===
UPDATE MDM_CORPORATIVO.MDM_DEMANDA_SITUACAO_APOIO SET DEMANDA_SITUACAO_ID = 1, DEMANDA_SITUACAO_NOME = 'Aberta' where DEMANDA_SITUACAO_NOME_ORIGEM = 'EM ANDAMENTO NO SERPRO' AND DEMANDA_SITUACAO_SISTEMA_ORIGEM = 'SIGOP';

UPDATE MDM_CORPORATIVO.MDM_DEMANDA_SITUACAO_APOIO SET DEMANDA_SITUACAO_ID = 3, DEMANDA_SITUACAO_NOME = 'Em atendimento' where DEMANDA_SITUACAO_NOME_ORIGEM = 'EM ANDAMENTO NA STN' AND DEMANDA_SITUACAO_SISTEMA_ORIGEM = 'SIGOP';

--=====CRIAÇÃO DE USUÁRIO/SCHEMA=======ORACLE PARA NOVO PROJETO.
2. Dados da máquina
2.1 Nome da Máquina: Banco de Publicação (PDW03)
2.2 IP: 10.15.240.30
2.3 Banco: PDW03
2.4 Porta: 1521
2.5 Ambiente de Produção
2.6 Esquema:EECF

1. Área alocada para dados (M?nimo de 1GB)? 700 GB
2. Área alocada para índices (M?nimo de 1GB)? 300 GB
3. Área de Usuário (8% do conjunto: dados + índices)? 80 GB
4. Área de UNDO (5% do conjunto: dados + índices + Usuário)? 54 GB
5. Área de TEMP (10% do conjunto: dados + índices + Usuário)? 108 GB
6. Sugestão de nome para o esquema (4 caracteres)? EECF
7. Área de transferência (Mínimo de 1GB)? 5GB

Favor criar as tablespaces de dados e índices conforme abaixo:
TB_08299_EECF_DAT_01
TB_08299_EECF_IND_01
--================================================================
DE NEGÓCIOS - DAT
CREATE TABLESPACE TB_08299_EECF_DAT_01 DATAFILE  '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_01.dbf'  SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_02.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_03.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_04.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_05.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_06.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_07.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_08.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_09.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_10.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_11.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_12.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_13.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_14.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_15.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_16.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_17.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_18.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_19.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_20.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_21.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_DAT_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_dat_01_22.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 28693M;

--================================================================
DE USR 
CREATE TABLESPACE TB_08299_EECF_USR_01 DATAFILE  '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_usr_01_01.dbf'  SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
ALTER TABLESPACE TB_08299_EECF_USR_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_usr_01_02.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_USR_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_usr_01_03.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 16386M;


--================================================================
DE IND 

CREATE TABLESPACE TB_08299_EECF_IND_01 DATAFILE  '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_ind_01_01.dbf'  SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

ALTER TABLESPACE TB_08299_EECF_IND_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_ind_01_02.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_IND_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_ind_01_03.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_IND_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_ind_01_04.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_IND_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_ind_01_05.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_IND_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_ind_01_06.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_IND_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_ind_01_07.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_IND_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_ind_01_08.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_IND_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_ind_01_09.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_IND_01 ADD DATAFILE '+DG_SPO002/p_08299_eecf/pdw03/tb_08299_eecf_ind_01_10.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 12297M;

------------------------------------------------------------CRIANDO USUÁRIO NO PDW03 PARA O TABLESPACE CRIADO----------------------------------------
create user EECF IDENTIFIED by "123456eecf" default tablespace "TB_08299_EECF_DAT_01";
-obs: bloquear o usuario no ambiente de produção.
alter user EECF account lock;
---------------------------------------------------------------------------------------------------------------------------------------------------
create user ADMEECF IDENTIFIED by "456prodcorp321$spowh" default tablespace "TB_08299_EECF_USR_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
--para usuários adm - criar sinônimos depois que o usuário principal for criado e os objetos gerados pelo pessoal de ferramenta.
grant resource, connect,  unlimited tablespace to EECF;

grant resource, connect,  select any table, unlimited tablespace to ADMSVRF;



--=================
dwd01 > @espaco
Nome aproximado da tablespace :> %EECF%

					  Total 	Total	    Ocupado	    Livre  (%)	   Largest   Fragmen
TABLESPACE                      Extensivel (Mb)  Alocado (Mb)          (Mb)         (Mb)   Livre      (Mb)      ta��o
------------------------------ ---------------- ------------- ------------- ------------- ------ --------- ---------
TB_08299_EECF_DAT_01		       40,960.0      10,240.0	      792.6	  9,447.4   92.3   3,130.0   3,221.0
TB_08299_EECF_IND_01		       12,288.0       5,120.0	       58.1	  5,061.9   98.9   4,988.0     483.0
TB_08299_EECF_STG_01		       51,200.0      10,240.0		2.0	 10,238.0  100.0   5,119.0	 2.0
			       ---------------- ------------- ------------- -------------
sum				      104,448.0      25,600.0	      852.7	 24,747.3

Elapsed: 00:00:07.97
dwd01 > 


--
------------------------------------------------------------------------------------------
CONNECT
ROLE

RESOURCE
ROLE

SELECT ANY TABLE
SYS_PRIV

UNLIMITED TABLESPACE
SYS_PRIV


--========================================
criação de usuários powercenter
1-PC961DPILOREP - OK CRIADO --- limar porque não vai precisar mais.
## =====================================================================================================================================
CREATE TABLESPACE TB_07653_PC961DPILOREP_DAT_01 DATAFILE '+DG_BSA105/d_07653_pwc/bimd004/tb_07653_pc961dpilorep_dat_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD004 PARA O TABLESPACE CRIADO----------------------------------------
create user PC961DPILOREP IDENTIFIED by "456pctrdes321bsa" default tablespace "TB_07653_PC961DPILOREP_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961DPILOREP;

--========================================
2-PC961DTRSTREP
## =====================================================================================================================================
CREATE TABLESPACE TB_39900_PC961DTRSTREP_DAT_01 DATAFILE '+DG_BSA105/d_39900_pwc/bimd004/tb_39900_pc961dtrstrep_dat_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD004 PARA O TABLESPACE CRIADO----------------------------------------
create user PC961DTRSTREP IDENTIFIED by "456pctrdes321bsa" default tablespace "TB_39900_PC961DTRSTREP_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961DTRSTREP;

--========================================
3-PC961DFINCREP
## =====================================================================================================================================
CREATE TABLESPACE TB_86010_PC961DFINCREP_DAT_01 DATAFILE '+DG_BSA105/d_86010_pwc/bimd004/tb_86010_pc961dfincrep_dat_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD004 PARA O TABLESPACE CRIADO----------------------------------------
create user PC961DFINCREP IDENTIFIED by "456pctrdes321bsa" default tablespace "TB_86010_PC961DFINCREP_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961DFINCREP;

--========================================
4-PC961DPGFNREP
## =====================================================================================================================================
CREATE TABLESPACE TB_37260_PC961DPGFNREP_DAT_01 DATAFILE '+DG_BSA105/d_37260_pwc/bimd004/tb_37260_pc961dpgfnrep_dat_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD004 PARA O TABLESPACE CRIADO----------------------------------------
create user PC961DPGFNREP IDENTIFIED by "456pctrdes321bsa" default tablespace "TB_37260_PC961DPGFNREP_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961DPGFNREP;

--========================================
5-PC961DSGPEREP
## =====================================================================================================================================
CREATE TABLESPACE TB_07613_PC961DSGPEREP_DAT_01 DATAFILE '+DG_BSA105/d_07613_pwc/bimd004/tb_07613_pc961dsgperep_dat_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD004 PARA O TABLESPACE CRIADO----------------------------------------
create user PC961DSGPEREP IDENTIFIED by "456pctrdes321bsa" default tablespace "TB_07613_PC961DSGPEREP_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961DSGPEREP;

--========================================
6-PC961DANLSREP
## =====================================================================================================================================
CREATE TABLESPACE TB_07996_PC961DANLSREP_DAT_01 DATAFILE '+DG_BSA105/d_07996_pwc/bimd004/tb_07996_pc961danlsrep_dat_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD004 PARA O TABLESPACE CRIADO----------------------------------------
create user PC961DANLSREP IDENTIFIED by "456pctrdes321bsa" default tablespace "TB_07996_PC961DANLSREP_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961DANLSREP;


--=----DESCONTINUADA POR IARA
drop user PC961DPILOREP cascade;
drop tablespace TB_07653_PC961DPILOREP_DAT_01 INCLUDING CONTENTS and DATAFILES;

--======
Por favor, publicar a tabela WD_ITEM_DECODIFICADO_CCON do banco de stage de homologacao de 2015 (DBH_33393_DWTG_STG) para o banco de homologacao de 2015 (DBH_33393_DWTG).

- Banco Origem: DBH_33393_DWTG_STG
- Banco Destino: DBH_33393_DWTG

Obrigado.

delete from dbh_33393_dwtg.WD_ITEM_DECODIFICADO_CCON;
INSERt into dbh_33393_dwtg.WD_ITEM_DECODIFICADO_CCON select * from dbh_33393_dwtg_stg.WD_ITEM_DECODIFICADO_CCON;



--==
insert into sigpgfn.sig_receita_princ values (-900, 9, -8, 9999, 'Indica inscrição do tipo FGTS/CS110', -9, -9);
commit; 

13,44

--======================

--criação tablespace 07/04/2016


+DG_FLASH/pdw03/datafile/tb_21763_dvdr_dat_01_02.dbf					32768	   44000


CREATE TABLESPACE TB_21763_DVDR_DAT_02 DATAFILE '+DG_SPO002/p_21763_dvdr/pdw03/tb_21763_dvdr_dat_02_01.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;


--=====================================================================================
BACKUP A PEDIDO DO JOSÉ LOPES - PARA O METADADOS DO NARROW CAST DE SÃO PAULO
PMD01 - MSTR941PUBNC  backup para José Lopes no mesmo banco.

pmd01 > select default_tablespace from dba_users where username = 'MSTR941PUBNC';

DEFAULT_TABLESPACE
------------------------------------------------------------------------------------------
TB_21700_MSTR941PUBNC_DAT_01

Elapsed: 00:00:00.07
pmd01 > 

TB_21700_MSTR941PUBNC_DAT_01		   50.0 	 50.0	       23.2	     26.8   53.6      26.0	 3.0

PMD01 =
  (DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = 10.50.240.69)(PORT = 1521))
    )
    (CONNECT_DATA =
      (SID = pmd01a)
      (SERVER = DEDICATED)
    )
  )

create user MSTR941PUBNC_BACKUP_20160412 IDENTIFIED by "mstr941pubnc" default tablespace "TB_21700_MSTR941PUBNC_DAT_01";

nohup impdp dwpub/dwpubmd@pmd01 directory=DWPUB_DATAPUMP network_link=DBL_PMD01.WORLD schemas=MSTR941PUBNC remap_schema=MSTR941PUBNC:MSTR941PUBNCBACKUP20160412 nologfile=y > importmetadados20160412.log &


--TESTAR DBL-LINK PARA para fazer impdp
SQL> select name from v$database@DBL_PMD01.WORLD;


select count(*) from dba_objects where owner = 'MSTR941PUBNC';
--=================================================================================

SQL> select count(*) from dba_objects where owner = 'MSTR941PUBNC';

  COUNT(*)
----------
       167

SQL>  select count(*) from dba_objects where owner = 'MSTR941PUBNCBACKUP20160412';

  COUNT(*)
----------
       167

--===========================================================================
delete from dbp_33393_dwtg_2016.WD_NATUREZA_RECEITA2;
INSERt into dbp_33393_dwtg_2016.WD_NATUREZA_RECEITA2 select * from dbc_33393_dwtg_2016.WD_NATUREZA_RECEITA2;

--===========================================================================
teradata custos 
INSERt into dbp_40600_custos.WF_SERVIDOR_SIAPE_CUSTO_PROD select * from dbp_40600_custos.WF_SERVIDOR_SIAPE_CUSTO;

======
MIGRAÇÃO TERADATA PARA ORACLE
create user dwpub_teste IDENTIFIED by "dwpub_teste" default tablespace "TB_40600_CUSTOS_DAT_02";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to dwpub_teste;

--==oracle luciano 15/04/2016



--==========================================================================================
postgres 
Dbc_06818_Dwcorporativo=# alter table hisaq_relacional.cen_centro_custo alter column cen_dsc_centro type character varying(200);
ALTER TABLE
Dbc_06818_Dwcorporativo=#

===

pdw031
pdw031 > INSERT INTO SGPJ.WD_DIRF_TIPO_RENDIMENTO VALUES (18,260,'Pagamentos a empregados ou contratados, árbitros, juízes, prestadores de serviços de cronômetro e placar e prêmios a competidores - OLIMPÍADAS','S', to_date(to_char(sysdate, 'dd/mm/yyyy'), 'dd/mm/yyyy'),to_date(to_char(sysdate, 'dd/mm/yyyy'), 'dd/mm/yyyy'));

INSERT INTO SGPJ.WD_DIRF_TIPO_RENDIMENTO VALUES (19,270,'Seguros e Resseguros','S', to_date(to_char(sysdate, 'dd/mm/yyyy'), 'dd/mm/yyyy'),to_date(to_char(sysdate, 'dd/mm/yyyy'), 'dd/mm/yyyy'));

COMMIT;
1 row created.

pdw031 > pdw031 > 
1 row created.

pdw031 > pdw031 > 
---
dwh01

dwh01 > dwh01 > 
1 row created.

dwh01 > dwh01 > 
Commit complete.

--==============================================================
ana julia - sigpgfn
create or replace directory DIR_PGFN_CNE as /d_37260_dwpgfn_tra/CNE;
grant read, write, execute on directory DIR_PGFN_CNE to sigpgfn ;
--==============================================================

--******************************************aumentando tablespace usuário******************************************888 
ALTER TABLESPACE TB_07651_MSTR941PUBHIST_DAT_01 ADD DATAFILE '+DG_BSA097/p_84012_bimstr/bimd002/tb_84012_mstr941prohist_dat_01_004.dbf' SIZE 10240M AUTOEXTEND ON NEXT 131072 MAXSIZE 32767M;

+DG_BSA097/p_84012_bimstr/bimd002/tb_84012_mstr941prohist_dat_01_003.dbf	       131072	   32767

--*******************************************************************************
TESTE SQL LOADER
 CREATE TABLE "DWPUB_TESTE"."COMRENDIMENTO"
   (	"MES" NUMBER(*,0),
	"VINCULO_SERV" NUMBER(21,0),
	"RUBRICA_VINC" NUMBER(*,0),
	"SUBFAIXA_REMUN_SERV" NUMBER(*,0),
	"LOCAL_RESIDENCIA_PGTO" NUMBER(*,0),
	"PROPORC_APOSENTADORIA" NUMBER(*,0),
	"SITUACAO_FUNC_VINC_SERV" NUMBER(*,0),
	"ESTADO_VINC_SERV" NUMBER(*,0),
	"OCORRENCIA_VINC_SERV" NUMBER(*,0),
	"SUBNIVEL_FUNCAO" CHAR(12 CHAR),
	"EXERCICIO_FUNCAO" NUMBER(*,0),
	"NIVEL_CARGO" NUMBER(*,0),
	"UORG_VINC" NUMBER(*,0),
	"ORIGEM_DESTINO_SERV" NUMBER(*,0),
	"GRUPO_TEMPO_SERVICO" NUMBER(*,0),
	"OCOR_INGRESSO_SERV_PUB" NUMBER(*,0),
	"JORNADA_TRABALHO" NUMBER(*,0),
	"OCOR_PROGRAMADA_FERIAS" NUMBER(*,0),
	"ESCOLARIDADE" NUMBER(*,0),
	"IDADE" NUMBER(*,0),
	"FORMACAO_PROFISSIONAL" NUMBER(*,0),
	"SEXO" VARCHAR2(1 CHAR),
	"QTDE_VINCULO_SER_PES" NUMBER(*,0),
	"QTDE_CARGO_OCUP_SER_PES" NUMBER(*,0),
	"QTDE_FUNCAO_OCUP_SER_PES" NUMBER(*,0),
	"FORCA_TRABALHO_SER_PES" NUMBER(*,0),
	"QTDE_DEPTE_IR_SER_PES" NUMBER(*,0),
	"QTDE_DEPTE_SF_SER_PES" NUMBER(*,0),
	"IDADE_SER_PES" NUMBER(*,0),
	"RENDIMENTO_SER_PES" NUMBER(17,2)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 163840 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TB_40600_CUSTOS_DAT_02" ;



CHARACTERSET UTF8


RENDIMENTO_SER_PES "TO_NUMBER(:RENDIMENTO_SER_PES, '999G999D99', 'NLS_NUMERIC_CHARACTERS='',.''')"

  CREATE TABLE "DWPUB_TESTE"."WF_SERVIDOR_SIAPE_CUSTO_PROD"
   (	"MES" NUMBER(*,0),
	"VINCULO_SERV" NUMBER(21,0),
	"RUBRICA_VINC" NUMBER(*,0),
	"SUBFAIXA_REMUN_SERV" NUMBER(*,0),
	"LOCAL_RESIDENCIA_PGTO" NUMBER(*,0),
	"PROPORC_APOSENTADORIA" NUMBER(*,0),
	"SITUACAO_FUNC_VINC_SERV" NUMBER(*,0),
	"ESTADO_VINC_SERV" NUMBER(*,0),
	"OCORRENCIA_VINC_SERV" NUMBER(*,0),
	"SUBNIVEL_FUNCAO" CHAR(12 CHAR),
	"EXERCICIO_FUNCAO" NUMBER(*,0),
	"NIVEL_CARGO" NUMBER(*,0),
	"UORG_VINC" NUMBER(*,0),
	"ORIGEM_DESTINO_SERV" NUMBER(*,0),
	"GRUPO_TEMPO_SERVICO" NUMBER(*,0),
	"OCOR_INGRESSO_SERV_PUB" NUMBER(*,0),
	"JORNADA_TRABALHO" NUMBER(*,0),
	"OCOR_PROGRAMADA_FERIAS" NUMBER(*,0),
	"ESCOLARIDADE" NUMBER(*,0),
	"IDADE" NUMBER(*,0),
	"FORMACAO_PROFISSIONAL" NUMBER(*,0),
	"SEXO" VARCHAR2(1 CHAR),
	"QTDE_VINCULO_SER_PES" NUMBER(*,0),
	"QTDE_CARGO_OCUP_SER_PES" NUMBER(*,0),
	"QTDE_FUNCAO_OCUP_SER_PES" NUMBER(*,0),
	"FORCA_TRABALHO_SER_PES" NUMBER(*,0),
	"QTDE_DEPTE_IR_SER_PES" NUMBER(*,0),
	"QTDE_DEPTE_SF_SER_PES" NUMBER(*,0),
	"IDADE_SER_PES" NUMBER(*,0),
	"RENDIMENTO_SER_PES" NUMBER(17,2),
	"DESCONTO_SER_PES" NUMBER(17,2),
	"DESPESA_SER_PES" NUMBER(17,2),
	"DESPESA_MAX_SER_PES" NUMBER(17,2),
	"REMUNERACAO_SER_PES" NUMBER(17,2),
	"REMUN_ATRASADA_SER_PES" NUMBER(17,2),
	"REMUN_INFO_SER_PES" NUMBER(17,2),
	"REMUN_ORIGEM_SER_PES" NUMBER(17,2),
	"REMUN_DESTINO_SER_PES" NUMBER(17,2),
	"INDICE_MARGEM_CONSIG" NUMBER(*,0),
	"DATA_INICIO_OCORR_AFAST_VINC" TIMESTAMP (9),
	"DATA_FIM_OCORR_AFAST_VINC" TIMESTAMP (9),
	"DATA_OCORR_EXCLUSAO_VINC" TIMESTAMP (9),
	"DATA_OCORR_INGRESSO_ORGAO_VINC" TIMESTAMP (9),
	"DATA_OCORR_REVERSAO_VINC" TIMESTAMP (9),
	"DATA_OCORR_SUSP_PGTO_VINC" TIMESTAMP (9),
	"DATA_INICIO_OCORR_AFAST_MES" TIMESTAMP (9),
	"DATA_FIM_OCORR_AFAST_MES" TIMESTAMP (9),
	"DATA_OCORR_EXCLUSAO_MES" TIMESTAMP (9),
	"DATA_OCORR_INGRESSO_ORGAO_MES" TIMESTAMP (9),
	"DATA_OCORR_REVERSAO_MES" TIMESTAMP (9),
	"DATA_OCORR_MOD_FUNCIONAL_MES" TIMESTAMP (9),
	"DATA_OCORR_SUSP_PGTO_MES" TIMESTAMP (9),
	"DATA_ATUALIZACAO" TIMESTAMP (9),
	"TIPO_ATUALIZACAO" VARCHAR2(1 CHAR),
	"CD_SIORG_SK" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 163840 NEXT 1048576 MINEXTENTS 1 MAXEXTEN
TS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TB_40600_CUSTOS_DAT_02" ;


--== loader.ctl
load data
infile '/home/76455424115/MARIO.CSV'
discardfile '/home/76455424115/SQLLOADERDISCARTE.DSC'
append
into table DWPUB_TESTE.WF_SERVIDOR_SIAPE_CUSTO_PROD1
fields terminated by "," optionally enclosed by '"' TRAILING NULLCOLS
(
MES,
VINCULO_SERV, 
RUBRICA_VINC, 
SUBFAIXA_REMUN_SERV, 
LOCAL_RESIDENCIA_PGTO, 
PROPORC_APOSENTADORIA, 
SITUACAO_FUNC_VINC_SERV, 
ESTADO_VINC_SERV, 
OCORRENCIA_VINC_SERV, 
SUBNIVEL_FUNCAO, 
EXERCICIO_FUNCAO, 
NIVEL_CARGO, 
UORG_VINC, 
ORIGEM_DESTINO_SERV, 
GRUPO_TEMPO_SERVICO, 
OCOR_INGRESSO_SERV_PUB, 
JORNADA_TRABALHO, 
OCOR_PROGRAMADA_FERIAS, 
ESCOLARIDADE, 
IDADE, 
FORMACAO_PROFISSIONAL, 
SEXO, 
QTDE_VINCULO_SER_PES, 
QTDE_CARGO_OCUP_SER_PES, 
QTDE_FUNCAO_OCUP_SER_PES, 
FORCA_TRABALHO_SER_PES, 
QTDE_DEPTE_IR_SER_PES, 
QTDE_DEPTE_SF_SER_PES, 
IDADE_SER_PES, 
RENDIMENTO_SER_PES "TO_NUMBER(:RENDIMENTO_SER_PES, '999G999D99', 'NLS_NUMERIC_CHARACTERS=''.,''')",
DESCONTO_SER_PES "TO_NUMBER(:DESCONTO_SER_PES, '999G999D99', 'NLS_NUMERIC_CHARACTERS=''.,''')",
DESPESA_SER_PES "TO_NUMBER(:DESPESA_SER_PES, '999G999D99', 'NLS_NUMERIC_CHARACTERS=''.,''')",
DESPESA_MAX_SER_PES "TO_NUMBER(:DESPESA_MAX_SER_PES, '999G999D99', 'NLS_NUMERIC_CHARACTERS=''.,''')",
REMUNERACAO_SER_PES "TO_NUMBER(:REMUNERACAO_SER_PES, '999G999D99', 'NLS_NUMERIC_CHARACTERS=''.,''')",
REMUN_ATRASADA_SER_PES "TO_NUMBER(:REMUN_ATRASADA_SER_PES, '999G999D99', 'NLS_NUMERIC_CHARACTERS=''.,''')",
REMUN_INFO_SER_PES "TO_NUMBER(:REMUN_INFO_SER_PES, '999G999D99', 'NLS_NUMERIC_CHARACTERS=''.,''')",
REMUN_ORIGEM_SER_PES "TO_NUMBER(:REMUN_ORIGEM_SER_PES, '999G999D99', 'NLS_NUMERIC_CHARACTERS=''.,''')",
REMUN_DESTINO_SER_PES "TO_NUMBER(:REMUN_DESTINO_SER_PES, '999G999D99', 'NLS_NUMERIC_CHARACTERS=''.,''')",
INDICE_MARGEM_CONSIG,
DATA_INICIO_OCORR_AFAST_VINC,
DATA_FIM_OCORR_AFAST_VINC,
DATA_OCORR_EXCLUSAO_VINC,
DATA_OCORR_INGRESSO_ORGAO_VINC,
DATA_OCORR_REVERSAO_VINC,
DATA_OCORR_SUSP_PGTO_VINC,
DATA_INICIO_OCORR_AFAST_MES,
DATA_FIM_OCORR_AFAST_MES,
DATA_OCORR_EXCLUSAO_MES,
DATA_OCORR_INGRESSO_ORGAO_MES,
DATA_OCORR_REVERSAO_MES,
DATA_OCORR_MOD_FUNCIONAL_MES,
DATA_OCORR_SUSP_PGTO_MES,
DATA_ATUALIZACAO,
TIPO_ATUALIZACAO,
CD_SIORG_SK
)


--comando sql loader dentro da minha máquina.
sqlldr dwpub@dwcrg36 control=loader.ctl log=MARIO1.LOG


============================================
--== loader.ctl
load data
infile '/home/76455424115/MARIO.CSV'
discardfile '/home/76455424115/SQLLOADERDISCARTE.DSC'
append
into table DWPUB_TESTE.COMRENDIMENTO
fields terminated by "," optionally enclosed by '"' TRAILING NULLCOLS
(
MES,
VINCULO_SERV, 
RUBRICA_VINC, 
SUBFAIXA_REMUN_SERV, 
LOCAL_RESIDENCIA_PGTO, 
PROPORC_APOSENTADORIA, 
SITUACAO_FUNC_VINC_SERV, 
ESTADO_VINC_SERV, 
OCORRENCIA_VINC_SERV, 
SUBNIVEL_FUNCAO, 
EXERCICIO_FUNCAO, 
NIVEL_CARGO, 
UORG_VINC, 
ORIGEM_DESTINO_SERV, 
GRUPO_TEMPO_SERVICO, 
OCOR_INGRESSO_SERV_PUB, 
JORNADA_TRABALHO, 
OCOR_PROGRAMADA_FERIAS, 
ESCOLARIDADE, 
IDADE, 
FORMACAO_PROFISSIONAL, 
SEXO, 
QTDE_VINCULO_SER_PES, 
QTDE_CARGO_OCUP_SER_PES, 
QTDE_FUNCAO_OCUP_SER_PES, 
FORCA_TRABALHO_SER_PES, 
QTDE_DEPTE_IR_SER_PES, 
QTDE_DEPTE_SF_SER_PES, 
IDADE_SER_PES, 
RENDIMENTO_SER_PES "TO_NUMBER(:RENDIMENTO_SER_PES, '999G999D99', 'NLS_NUMERIC_CHARACTERS='',.''')"
)


colocar depois nas datas
DATA_CADASTRO "to_date(Trim(:DATA_CADASTRO),'DD/MM/YYYY HH24:MI:SS')"


-- esse deu certo
load data
infile '/home/76455424115/MARIO1.CSV'
discardfile '/home/76455424115/SQLLOADERDISCARTE.DSC'
append
into table DWPUB_TESTE.MARIO_TESTE
fields terminated by "," optionally enclosed by '"' TRAILING NULLCOLS
(
MES POSITION(01:06) INTEGER EXTERNAL,
VINCULO_SERV POSITION(07:18) INTEGER EXTERNAL,
RUBRICA_VINC "TO_NUMBER(:RUBRICA_VINC, '999G999D99', 'NLS_NUMERIC_CHARACTERS='',.''')"


-- outra para mostrar para ronaldo
2.1) Favor solicitar a publicação das tabelas:

WD_ORGAO_MAXI
WD_ORGAO_SUPE
WD_ITEM_DECODIFICADO_CCON



WF_LANCAMENTO.

Banco Origem: dbh_33393_dwtg_stg
Banco Destino: dbh_33393_dwtg

2.2) Solicitar regeração de todas as agregadas de Lançamento:
WF_LANCAMENTO_EP01,
WF_LANCAMENTO_EP02,
WF_LANCAMENTO_EP03,
WF_LANCAMENTO_EP04,
WF_LANCAMENTO_EP20

delete from dbh_33393_dwtg.WD_ORGAO_MAXI;
INSERt into dbh_33393_dwtg.WD_ORGAO_MAXI select * from dbh_33393_dwtg_stg.WD_ORGAO_MAXI;

delete from dbh_33393_dwtg.WD_ORGAO_SUPE;
INSERt into dbh_33393_dwtg.WD_ORGAO_SUPE select * from dbh_33393_dwtg_stg.WD_ORGAO_SUPE;

delete from dbh_33393_dwtg.WD_ITEM_DECODIFICADO_CCON;
INSERt into dbh_33393_dwtg.WD_ITEM_DECODIFICADO_CCON select * from dbh_33393_dwtg_stg.WD_ITEM_DECODIFICADO_CCON;


--******************************************************************************************************************************
2 Atividades

Por favor, solicitar a publicação da tabela WD_SIORG, do ambiente de stage de 2015 (dbh_33393_dwtg_stg), para o ambiente de homologação de 2015 (dbh_33393_dwtg).

Banco de Origem: dbh_33393_dwtg_stg
Banco de Destino: dbh_33393_dwtg

delete from dbh_33393_dwtg.WD_SIORG;
INSERt into dbh_33393_dwtg.WD_SIORG select * from dbh_33393_dwtg_stg.WD_SIORG;
--******************************************************************************************************************************
OK TODAS EXISTEM E


WF_PC_ARMAS_EXPLOSIVOS_PROC
WF_PC_ATIV_POL_JUD
WF_PC_FUGAS_EVASOES
WF_PC_HOM_DOLOSO
WF_PC_MORTOS_DELEGACIA
WF_PC_POPULACAO_CARCERARIA
WF_PC_VEICULOS_CARGAS

--******************************************************************************************************************************
-TERADATA
TICKET - Nro 2016/000383529

Mário,
   Verifiquei que o ticket abaixo foi com um erro.
   Como faço para corrigir o ticket?

ERRADO
Banco Origem: DBH_33393_DWTG_STG
Banco Destino: DBH_33393_DWT

CORRETO
Banco Origem: DBH_33393_DWTG_STG
Banco Destino: DBH_33393_DWTG

atenciosamente,
Akemi Adachi
SERPRO/SUPDE/DEFLA
(85) 4008-2836 

====
2 Atividades

Favor realizar a publicação abaixo:

WD_ITEM_DECODIFICADO_CCON
WD_UG
WD_ORGAO

Banco Origem: DBH_33393_DWTG_STG
Banco Destino: DBH_33393_DWT

delete from dbh_33393_dwtg.WD_ITEM_DECODIFICADO_CCON;
INSERt into dbh_33393_dwtg.WD_ITEM_DECODIFICADO_CCON select * from dbh_33393_dwtg_stg.WD_ITEM_DECODIFICADO_CCON;

delete from dbh_33393_dwtg.WD_UG;
INSERt into dbh_33393_dwtg.WD_UG select * from dbh_33393_dwtg_stg.WD_UG;

delete from dbh_33393_dwtg.WD_ORGAO;
INSERt into dbh_33393_dwtg.WD_ORGAO select * from dbh_33393_dwtg_stg.WD_ORGAO;

--**************************************************************************************************************************
2 Atividades

Solicito a publicação das tabelas WD_ORGAO e WD_UG do ambiente de stage de 2016 para o ambiente de homologação de 2016 (DBH_33393_DWTG_2016).

Banco de Origem: DBH_33393_DWTG_STG_2016
Bando de Destino: DBH_33393_DWTG_2016 

delete from dbh_33393_dwtg_2016.WD_UG;
INSERt into dbh_33393_dwtg_2016.WD_UG select * from dbh_33393_dwtg_stg_2016.WD_UG;

delete from dbh_33393_dwtg_2016.WD_ORGAO;
INSERt into dbh_33393_dwtg_2016.WD_ORGAO select * from dbh_33393_dwtg_stg_2016.WD_ORGAO;

--**************************************************************************************************************************

2 Atividades

Solicito a publicação da WD_UG para produção do DW-TG de 2015:

Banco de Origem: Oracle_33393_DWTG
Bando de Destino: DBP_33393_DWTG


delete from DBP_33393_DWTG.WD_UG;
INSERt into DBP_33393_DWTG.WD_UG select * from Oracle_33393_DWTG.WD_UG;

--**************************************************************************************************************************
2 Atividades
Por favor, solicitar a publicação das seguintes tabelas do ambiente de carga de 2015 (oracle_33393_dwtg) para o ambiente de produção de 2015 (dbp_33393_dwtg).

WD_LINHA_EVENTO_NC
WD_LINHA_EVENTO_ND
WD_LINHA_EVENTO_PE

ORIGEM: oracle_33393_dwtg
DESTINO: dbp_33393_dwtg

delete from DBP_33393_DWTG.WD_LINHA_EVENTO_NC;
INSERt into DBP_33393_DWTG.WD_LINHA_EVENTO_NC select * from Oracle_33393_DWTG.WD_LINHA_EVENTO_NC;

delete from DBP_33393_DWTG.WD_LINHA_EVENTO_ND;
INSERt into DBP_33393_DWTG.WD_LINHA_EVENTO_ND select * from Oracle_33393_DWTG.WD_LINHA_EVENTO_ND;

delete from DBP_33393_DWTG.WD_LINHA_EVENTO_PE;
INSERt into DBP_33393_DWTG.WD_LINHA_EVENTO_PE select * from Oracle_33393_DWTG.WD_LINHA_EVENTO_PE;

--**************************************************************************************************************************
--PUBLICAÇÃO DE TABELA MANUALMENTE FULL 
--CUIDADO COM INDICES
--CUIDADO COM CONSTRAINTS
--CUIDADO COM TAMANHO DA TABELA.
Banco de carga
create or replace view V_SIGPGFN_SIG_RECEITA_PRINC as select * from SIGPGFN.SIG_RECEITA_PRINC;

Produção
truncate table SIGPGFN.SIG_RECEITA_PRINC;

insert /*+ apppend */ into SIGPGFN.SIG_RECEITA_PRINC select * from V_SIGPGFN_SIG_RECEITA_PRINC@DBL_DWCRG36;
COMMIT;

--**************************************************************************************************************************
2 Atividades

Por favor, solicitar a publicação da tabela WF_ACOM_ORCAMENTARIO_LOGA do banco de stage de 2015 (DBH_33393_DWTG_STG) para o banco de homologação de 2015 (DBH_33393_DWTG).

Banco Origem: DBH_33393_DWTG_STG
Banco Destino: DBH_33393_DWTG

delete from dbh_33393_dwtg.WF_ACOM_ORCAMENTARIO_LOGA;
INSERt into dbh_33393_dwtg.WF_ACOM_ORCAMENTARIO_LOGA select * from dbh_33393_dwtg_stg.WF_ACOM_ORCAMENTARIO_LOGA;

--**************************************************************************************************************************
2 Atividades

Favor solicitar a publicação abaixo:

WD_ITEM_DECODIFICADO_CCON
WD_CONTA_CORRENTE

Banco Origem: dbh_33393_dwtg_stg
Banco Destino: dbh_33393_dwtg

delete from dbh_33393_dwtg.WD_ITEM_DECODIFICADO_CCON;
INSERt into dbh_33393_dwtg.WD_ITEM_DECODIFICADO_CCON select * from dbh_33393_dwtg_stg.WD_ITEM_DECODIFICADO_CCON;

delete from dbh_33393_dwtg.WD_CONTA_CORRENTE;
INSERt into dbh_33393_dwtg.WD_CONTA_CORRENTE select * from dbh_33393_dwtg_stg.WD_CONTA_CORRENTE;

--**************************************************************************************************************************
2016RS/000124526 - MARCELO GIBI - limpeza de cache - já fechado - consultar para passar dados para Ronaldo.

--**************************************************************************************************************************
--TESTANDO com Fernanda
-- NÃO ESTÁ OFICIAL AINDA
TB_08676_EDBV_USR_01

--**************************************************************************************************************************
2 Atividades

Solicitar a publicação da tabela WF_ITEM_CENTRO_CUSTO.

Ambiente Produção 2015:
Origem: ORACLE_33393_DWTG
Destino: DBP_33393_DWTG


Ambiente Homologação 2015:
Origem: DBH_33393_DWTG_STG
Destino: DBH_33393_DWTG

delete from dbp_33393_dwtg.WF_ITEM_CENTRO_CUSTO;
insert into dbp_33393_dwtg.WF_ITEM_CENTRO_CUSTO select * from oracle_33393_dwtg.WF_ITEM_CENTRO_CUSTO;

delete from dbh_33393_dwtg.WF_ITEM_CENTRO_CUSTO;
insert into dbh_33393_dwtg.WF_ITEM_CENTRO_CUSTO select * from dbh_33393_dwtg_stg.WF_ITEM_CENTRO_CUSTO;

--**************************************************************************************************************************
2 Atividades

1. Publicação da tabela abaixo nos ambientes de Produção de 2015 (DBP_33393_DWTG) e 
   2016 (DBP_33393_DWTG_2016) com base nos respectivos ambientes de carga (ORACLE_33393_DWTG e DBC_33393_DWTG_2016).

delete from DBP_33393_DWTG_2016.WA_MES_ZERO_SEM_ANO;
insert into DBP_33393_DWTG_2016.WA_MES_ZERO_SEM_ANO select * from DBC_33393_DWTG_2016.WA_MES_ZERO_SEM_ANO;

delete from DBP_33393_DWTG.WA_MES_ZERO_SEM_ANO;
insert into DBP_33393_DWTG.WA_MES_ZERO_SEM_ANO select * from ORACLE_33393_DWTG.WA_MES_ZERO_SEM_ANO;

veio do ticket >>>
insert into DBP_33393_DWTG_2016.WA_MES_ZERO_SEM_ANO select * from DBC_33393_DWTG_2016.WA_MES_ZERO_SEM_ANO;
insert into DBP_33393_DWTG.WA_MES_ZERO_SEM_ANO select * from ORACLE_33393_DWTG.WA_MES_ZERO_SEM_ANO;

2. Alteração das views abaixo no ambiente Microstrategy

REPLACE VIEW MSTRPRODDWTG.WV_MES_ZERO ( ID_ANO , ID_MES ,
ID_ANO_ZERO , ID_MES_ZERO ) AS LOCK ROW FOR ACCESS
SELECT DISTINCT A.ID_ANO, M.ID_MES, A.ID_ANO AS ID_ANO_ZERO, 0 AS ID_MES_ZERO
FROM DBP_33393_DWTG.WD_ANO A, DBP_33393_DWTG.WA_MES_ZERO_SEM_ANO M
WHERE A.ID_ANO = 2008;

REPLACE VIEW MSTRPRODDWTG2016.WV_MES_ZERO ( ID_ANO , ID_MES ,
ID_ANO_ZERO , ID_MES_ZERO ) AS LOCK ROW FOR ACCESS
SELECT DISTINCT A.ID_ANO, M.ID_MES, A.ID_ANO AS ID_ANO_ZERO, 0 AS ID_MES_ZERO
FROM DBP_33393_DWTG_2016.WD_ANO A, DBP_33393_DWTG_2016.WA_MES_ZERO_SEM_ANO M
WHERE A.ID_ANO = 2008;

--**************************************************************************************************************************

IP Carga : 161.148.236.33
BANCO : Dbc_06818_Dwcorporativo

favor executar o seguinte script no banco de carga.

ALTER TABLE sigecom_relacional.PIF_PERCENTUAL_ITEM_FATURAVEL
ADD pif_val_valor_unitario_contrato numeric(15,2) DEFAULT 0;

ALTER TABLE sigecom_relacional.PIF_PERCENTUAL_ITEM_FATURAVEL
ADD pif_val_quantidade numeric(25,4) DEFAULT 0

--**************************************************************************************************************************
2 Atividades

Solicitar a publicação da tabela WD_UORG_VINC.

Ambiente Produção 2015:
Origem: ORACLE_33393_DWTG
Destino: DBP_33393_DWTG


Ambiente Homologação 2015:
Origem: DBH_33393_DWTG_STG
Destino: DBH_33393_DWTG

delete from DBP_33393_DWTG_2016.WD_UORG_VINC;
insert into DBP_33393_DWTG_2016.WD_UORG_VINC select * from DBC_33393_DWTG_2016.WD_UORG_VINC;

delete from DBP_33393_DWTG.WD_UORG_VINC;
insert into DBP_33393_DWTG.WD_UORG_VINC select * from ORACLE_33393_DWTG.WD_UORG_VINC;

--*feito*************************************************************************************************************************
2 Atividades 

1. Publicação da tabela abaixo nos ambientes de Homologação de 2015 (DBH_33393_DWTG) e 2016 (DBH_33393_DWTG_2016) com base nos respectivos ambientes de stage (DBH_33393_DWTG_STG e DBH_33393_DWTG_STG_2016).

INSERT INTO DBH_33393_DWTG_2016.WA_MES_ZERO_SEM_ANO SELECT * FROM DBH_33393_DWTG_STG_2016.WA_MES_ZERO_SEM_ANO;
INSERT INTO DBH_33393_DWTG.WA_MES_ZERO_SEM_ANO SELECT * FROM DBH_33393_DWTG_STG.WA_MES_ZERO_SEM_ANO;

delete from DBH_33393_DWTG_2016.WA_MES_ZERO_SEM_ANO;
INSERT INTO DBH_33393_DWTG_2016.WA_MES_ZERO_SEM_ANO SELECT * FROM DBH_33393_DWTG_STG_2016.WA_MES_ZERO_SEM_ANO;

delete from DBH_33393_DWTG.WA_MES_ZERO_SEM_ANO;
INSERT INTO DBH_33393_DWTG.WA_MES_ZERO_SEM_ANO SELECT * FROM DBH_33393_DWTG_STG.WA_MES_ZERO_SEM_ANO;


2. Alteração das views abaixo no ambiente Microstrategy de Homologação

REPLACE VIEW MSTRHOMDWTG.WV_MES_ZERO (ID_ANO, ID_MES,
ID_ANO_ZERO, ID_MES_ZERO ) AS LOCK ROW FOR ACCESS
SELECT DISTINCT A.ID_ANO, M.ID_MES, A.ID_ANO AS ID_ANO_ZERO, 0 AS ID_MES_ZERO
FROM DBH_33393_DWTG.WD_ANO A, DBH_33393_DWTG.WA_MES_ZERO_SEM_ANO M
WHERE A.ID_ANO = 2008;

REPLACE VIEW MSTRHOMDWTG2016.WV_MES_ZERO (ID_ANO, ID_MES,
ID_ANO_ZERO, ID_MES_ZERO ) AS LOCK ROW FOR ACCESS
SELECT DISTINCT A.ID_ANO, M.ID_MES, A.ID_ANO AS ID_ANO_ZERO, 0 AS ID_MES_ZERO
FROM DBH_33393_DWTG_2016.WD_ANO A, DBH_33393_DWTG_2016.WA_MES_ZERO_SEM_ANO M
WHERE A.ID_ANO = 2008;

--**************************************************************************************************************************
2 Atividades
1. Criação das seguintes views no ambiente do Microstrategy de Homologação de 2015 (MSTRHOMDWTG) que serão mapeadas na ferramenta.
Todas comandos PL/SQL do item 1 estão no arquivo em anexo: TEXTO-TICKET-2015

2. Publicar a tabela WD_SIORG do banco de stage de 2015 (DBH_33393_DWTG_STG) para o banco de Homologação de 2015 (DBH_33393_DWTG).

delete from DBH_33393_DWTG.WD_SIORG;
INSERt into DBH_33393_DWTG.WD_SIORG select * from DBH_33393_DWTG_STG.WD_SIORG;

1. Criação das seguintes views no ambiente do Microstrategy de Homologação de 2015 (MSTRHOMDWTG) que serão mapeadas na ferramenta.

CREATE VIEW MSTRHOMDWTG.WV_SIORG_N08
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N08,
     S.CO_SIORG AS CO_SIORG_N08,
     S.DS_SIORG AS DS_SIORG_N08
FROM DBH_33393_DWTG.WD_SIORG S
JOIN DBH_33393_DWTG.WD_SIORG AS S8 ON S8.ID_SIORG_N08 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

CREATE VIEW MSTRHOMDWTG.WV_SIORG_N09
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N09,
     S.CO_SIORG AS CO_SIORG_N09,
     S.DS_SIORG AS DS_SIORG_N09
FROM DBH_33393_DWTG.WD_SIORG S
JOIN DBH_33393_DWTG.WD_SIORG AS S9 ON S9.ID_SIORG_N09 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

CREATE VIEW MSTRHOMDWTG.WV_SIORG_N10
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N10,
     S.CO_SIORG AS CO_SIORG_N10,
     S.DS_SIORG AS DS_SIORG_N10
FROM DBH_33393_DWTG.WD_SIORG S
JOIN DBH_33393_DWTG.WD_SIORG AS S10 ON S10.ID_SIORG_N10 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

CREATE VIEW MSTRHOMDWTG.WV_SIORG_N11
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N11,
     S.CO_SIORG AS CO_SIORG_N11,
     S.DS_SIORG AS DS_SIORG_N11
FROM DBH_33393_DWTG.WD_SIORG S
JOIN DBH_33393_DWTG.WD_SIORG AS S11 ON S11.ID_SIORG_N11 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

CREATE VIEW MSTRHOMDWTG.WV_SIORG_N12
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N12,
     S.CO_SIORG AS CO_SIORG_N12,
     S.DS_SIORG AS DS_SIORG_N12
FROM DBH_33393_DWTG.WD_SIORG S
JOIN DBH_33393_DWTG.WD_SIORG AS S12 ON S12.ID_SIORG_N12 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

CREATE VIEW MSTRHOMDWTG.WV_SIORG_N13
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N13,
     S.CO_SIORG AS CO_SIORG_N13,
     S.DS_SIORG AS DS_SIORG_N13
FROM DBH_33393_DWTG.WD_SIORG S
JOIN DBH_33393_DWTG.WD_SIORG AS S13 ON S13.ID_SIORG_N13 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

CREATE VIEW MSTRHOMDWTG.WV_SIORG_N14
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N14,
     S.CO_SIORG AS CO_SIORG_N14,
     S.DS_SIORG AS DS_SIORG_N14
FROM DBH_33393_DWTG.WD_SIORG S
JOIN DBH_33393_DWTG.WD_SIORG AS S14 ON S14.ID_SIORG_N14 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

CREATE VIEW MSTRHOMDWTG.WV_SIORG_N15
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N15,
     S.CO_SIORG AS CO_SIORG_N15,
     S.DS_SIORG AS DS_SIORG_N15
FROM DBH_33393_DWTG.WD_SIORG S
JOIN DBH_33393_DWTG.WD_SIORG AS S15 ON S15.ID_SIORG_N15 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

CREATE VIEW MSTRHOMDWTG.WV_SIORG_N16
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N16,
     S.CO_SIORG AS CO_SIORG_N16,
     S.DS_SIORG AS DS_SIORG_N16
FROM DBH_33393_DWTG.WD_SIORG S
JOIN DBH_33393_DWTG.WD_SIORG AS S16 ON S16.ID_SIORG_N16 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

CREATE VIEW MSTRHOMDWTG.WV_SIORG_N17
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N17,
     S.CO_SIORG AS CO_SIORG_N17,
     S.DS_SIORG AS DS_SIORG_N17
FROM DBH_33393_DWTG.WD_SIORG S
JOIN DBH_33393_DWTG.WD_SIORG AS S17 ON S17.ID_SIORG_N17 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

CREATE VIEW MSTRHOMDWTG.WV_SIORG_N18
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N18,
     S.CO_SIORG AS CO_SIORG_N18,
     S.DS_SIORG AS DS_SIORG_N18
FROM DBH_33393_DWTG.WD_SIORG S
JOIN DBH_33393_DWTG.WD_SIORG AS S18 ON S18.ID_SIORG_N18 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

CREATE VIEW MSTRHOMDWTG.WV_SIORG_N19
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N19,
     S.CO_SIORG AS CO_SIORG_N19,
     S.DS_SIORG AS DS_SIORG_N19
FROM DBH_33393_DWTG.WD_SIORG S
JOIN DBH_33393_DWTG.WD_SIORG AS S19 ON S19.ID_SIORG_N19 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

CREATE VIEW MSTRHOMDWTG.WV_SIORG_N20
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N20,
     S.CO_SIORG AS CO_SIORG_N20,
     S.DS_SIORG AS DS_SIORG_N20
FROM DBH_33393_DWTG.WD_SIORG S
JOIN DBH_33393_DWTG.WD_SIORG AS S20 ON S20.ID_SIORG_N20 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

2. Publicar a tabela WD_SIORG do banco de stage de 2015 (DBH_33393_DWTG_STG) para o banco de Homologação de 2015 (DBH_33393_DWTG).

--*feito05/05************************************************************************************************************************************
2 Atividades

Por favor, solicitar a publicação da tabela WD_SIORG dos ambientes de stage de 2015 (dbh_33393_dwtg_stg) e 2016 (dbh_33393_dwtg_stg_2016) para seus respectivos ambientes de homologação (dbh_33393_dwtg e dbh_33393_dwtg_2016).

Banco de Origem: dbh_33393_dwtg_stg
Banco de Destino: dbh_33393_dwtg

Banco de Origem: dbh_33393_dwtg_stg_2016
Banco de Destino: dbh_33393_dwtg_2016

delete from DBH_33393_DWTG_2016.WD_SIORG;
INSERT INTO DBH_33393_DWTG_2016.WD_SIORG SELECT * FROM DBH_33393_DWTG_STG_2016.WD_SIORG;

delete from DBH_33393_DWTG.WD_SIORG;
INSERT INTO DBH_33393_DWTG.WD_SIORG SELECT * FROM DBH_33393_DWTG_STG.WD_SIORG;

--*feito05/05************************************************************************************************************************************
2 Atividades

Favor realizar a publicação das tabelas:

WD_UORG_VINC
WD_CONTA_CORRENTE

Ambiente Produção 2015:
Origem: ORACLE_33393_DWTG
Destino: DBP_33393_DWTG

delete from DBP_33393_DWTG.WD_UORG_VINC;
INSERT INTO DBP_33393_DWTG.WD_UORG_VINC SELECT * FROM ORACLE_33393_DWTG.WD_UORG_VINC;

delete from DBP_33393_DWTG.WD_CONTA_CORRENTE;
INSERT INTO DBP_33393_DWTG.WD_CONTA_CORRENTE SELECT * FROM ORACLE_33393_DWTG.WD_CONTA_CORRENTE;


--*feito05/05************************************************************************************************************************************
1. Publicação da tabela abaixo nos ambientes de Homologação de 2015 (DBH_33393_DWTG) e 2016 (DBH_33393_DWTG_2016) com base nos respectivos ambientes de stage (DBH_33393_DWTG_STG e DBH_33393_DWTG_STG_2016).

INSERT INTO DBH_33393_DWTG_2016.WA_MES_ZERO_SEM_ANO SELECT * FROM DBH_33393_DWTG_STG_2016.WA_MES_ZERO_SEM_ANO;

INSERT INTO DBH_33393_DWTG.WA_MES_ZERO_SEM_ANO SELECT * FROM DBH_33393_DWTG_STG.WA_MES_ZERO_SEM_ANO;


delete from DBH_33393_DWTG_2016.WA_MES_ZERO_SEM_ANO;
INSERT INTO DBH_33393_DWTG_2016.WA_MES_ZERO_SEM_ANO SELECT * FROM DBH_33393_DWTG_STG_2016.WA_MES_ZERO_SEM_ANO;

delete from DBH_33393_DWTG.WA_MES_ZERO_SEM_ANO;
INSERT INTO DBH_33393_DWTG.WA_MES_ZERO_SEM_ANO SELECT * FROM DBH_33393_DWTG_STG.WA_MES_ZERO_SEM_ANO;

2. Alteração das views abaixo no ambiente Microstrategy de Homologação

REPLACE VIEW MSTRHOMDWTG.WV_MES_ZERO  ("ID_ANO","ID_MES",
    "ID_ANO_ZERO","ID_MES_ZERO")  AS  LOCK ROW FOR ACCESS
SELECT DISTINCT A.ID_ANO, M.ID_MES, A.ID_ANO AS ID_ANO_ZERO, 0 AS ID_MES_ZERO
FROM DBH_33393_DWTG.WD_ANO A, DBH_33393_DWTG.WA_MES_ZERO_SEM_ANO M
WHERE A.ID_ANO >= 2008;

REPLACE VIEW MSTRHOMDWTG2016.WV_MES_ZERO  ("ID_ANO","ID_MES",
    "ID_ANO_ZERO","ID_MES_ZERO")  AS  LOCK ROW FOR ACCESS
SELECT DISTINCT A.ID_ANO, M.ID_MES, A.ID_ANO AS ID_ANO_ZERO, 0 AS ID_MES_ZERO
FROM DBH_33393_DWTG_2016.WD_ANO A, DBH_33393_DWTG_2016.WA_MES_ZERO_SEM_ANO M
WHERE A.ID_ANO >= 2008;

--*feito05/05************************************************************************************************************************************

---------------------------------------------------------------------------------
1. Criação das tabelas abaixo no ambiente de Homologação de 2015 (DBH_33393_DWTG).

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N01 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N01 INTEGER,
      CO_SIORG_N01 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N01 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N01 );

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N02 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N02 INTEGER,
      CO_SIORG_N02 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N02 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N02 );

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N03 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N03 INTEGER,
      CO_SIORG_N03 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N03 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N03 );

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N04 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N04 INTEGER,
      CO_SIORG_N04 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N04 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N04 );

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N05 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N05 INTEGER,
      CO_SIORG_N05 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N05 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N05 );

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N06 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N06 INTEGER,
      CO_SIORG_N06 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N06 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N06 );

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N07 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N07 INTEGER,
      CO_SIORG_N07 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N07 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N07 );

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N08 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N08 INTEGER,
      CO_SIORG_N08 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N08 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N08 );

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N09 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N09 INTEGER,
      CO_SIORG_N09 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N09 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N09 );

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N10 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N10 INTEGER,
      CO_SIORG_N10 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N10 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N10 );

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N11 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N11 INTEGER,
      CO_SIORG_N11 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N11 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N11 );

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N12 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N12 INTEGER,
      CO_SIORG_N12 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N12 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N12 );

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N13 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N13 INTEGER,
      CO_SIORG_N13 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N13 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N13 );

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N14 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N14 INTEGER,
      CO_SIORG_N14 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N14 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N14 );

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N15 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N15 INTEGER,
      CO_SIORG_N15 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N15 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N15 );

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N16 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N16 INTEGER,
      CO_SIORG_N16 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N16 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N16 );

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N17 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N17 INTEGER,
      CO_SIORG_N17 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N17 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N17 );

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N18 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N18 INTEGER,
      CO_SIORG_N18 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N18 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N18 );

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N19 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N19 INTEGER,
      CO_SIORG_N19 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N19 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N19 );

CREATE MULTISET TABLE DBH_33393_DWTG.WV_SIORG_N20 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N20 INTEGER,
      CO_SIORG_N20 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N20 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N20 );



----------------------------------------------------------------------------------------------
2. Criação das seguintes views e tabelas no ambiente de Homologação de 2016 (MSTRHOMDWTG2016 e DBH_33393_DWTG_2016) que serão mapeadas na ferramenta.

REPLACE VIEW MSTRHOMDWTG2016.WV_SIORG_N08
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N08,
     S.CO_SIORG AS CO_SIORG_N08,
     S.DS_SIORG AS DS_SIORG_N08
FROM DBH_33393_DWTG_2016.WD_SIORG S
JOIN DBH_33393_DWTG_2016.WD_SIORG AS S8 ON S8.ID_SIORG_N08 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRHOMDWTG2016.WV_SIORG_N09
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N09,
     S.CO_SIORG AS CO_SIORG_N09,
     S.DS_SIORG AS DS_SIORG_N09
FROM DBH_33393_DWTG_2016.WD_SIORG S
JOIN DBH_33393_DWTG_2016.WD_SIORG AS S9 ON S9.ID_SIORG_N09 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRHOMDWTG2016.WV_SIORG_N10
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N10,
     S.CO_SIORG AS CO_SIORG_N10,
     S.DS_SIORG AS DS_SIORG_N10
FROM DBH_33393_DWTG_2016.WD_SIORG S
JOIN DBH_33393_DWTG_2016.WD_SIORG AS S10 ON S10.ID_SIORG_N10 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRHOMDWTG2016.WV_SIORG_N11
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N11,
     S.CO_SIORG AS CO_SIORG_N11,
     S.DS_SIORG AS DS_SIORG_N11
FROM DBH_33393_DWTG_2016.WD_SIORG S
JOIN DBH_33393_DWTG_2016.WD_SIORG AS S11 ON S11.ID_SIORG_N11 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRHOMDWTG2016.WV_SIORG_N12
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N12,
     S.CO_SIORG AS CO_SIORG_N12,
     S.DS_SIORG AS DS_SIORG_N12
FROM DBH_33393_DWTG_2016.WD_SIORG S
JOIN DBH_33393_DWTG_2016.WD_SIORG AS S12 ON S12.ID_SIORG_N12 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRHOMDWTG2016.WV_SIORG_N13
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N13,
     S.CO_SIORG AS CO_SIORG_N13,
     S.DS_SIORG AS DS_SIORG_N13
FROM DBH_33393_DWTG_2016.WD_SIORG S
JOIN DBH_33393_DWTG_2016.WD_SIORG AS S13 ON S13.ID_SIORG_N13 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRHOMDWTG2016.WV_SIORG_N14
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N14,
     S.CO_SIORG AS CO_SIORG_N14,
     S.DS_SIORG AS DS_SIORG_N14
FROM DBH_33393_DWTG_2016.WD_SIORG S
JOIN DBH_33393_DWTG_2016.WD_SIORG AS S14 ON S14.ID_SIORG_N14 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRHOMDWTG2016.WV_SIORG_N15
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N15,
     S.CO_SIORG AS CO_SIORG_N15,
     S.DS_SIORG AS DS_SIORG_N15
FROM DBH_33393_DWTG_2016.WD_SIORG S
JOIN DBH_33393_DWTG_2016.WD_SIORG AS S15 ON S15.ID_SIORG_N15 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRHOMDWTG2016.WV_SIORG_N16
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N16,
     S.CO_SIORG AS CO_SIORG_N16,
     S.DS_SIORG AS DS_SIORG_N16
FROM DBH_33393_DWTG_2016.WD_SIORG S
JOIN DBH_33393_DWTG_2016.WD_SIORG AS S16 ON S16.ID_SIORG_N16 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRHOMDWTG2016.WV_SIORG_N17
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N17,
     S.CO_SIORG AS CO_SIORG_N17,
     S.DS_SIORG AS DS_SIORG_N17
FROM DBH_33393_DWTG_2016.WD_SIORG S
JOIN DBH_33393_DWTG_2016.WD_SIORG AS S17 ON S17.ID_SIORG_N17 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRHOMDWTG2016.WV_SIORG_N18
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N18,
     S.CO_SIORG AS CO_SIORG_N18,
     S.DS_SIORG AS DS_SIORG_N18
FROM DBH_33393_DWTG_2016.WD_SIORG S
JOIN DBH_33393_DWTG_2016.WD_SIORG AS S18 ON S18.ID_SIORG_N18 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRHOMDWTG2016.WV_SIORG_N19
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N19,
     S.CO_SIORG AS CO_SIORG_N19,
     S.DS_SIORG AS DS_SIORG_N19
FROM DBH_33393_DWTG_2016.WD_SIORG S
JOIN DBH_33393_DWTG_2016.WD_SIORG AS S19 ON S19.ID_SIORG_N19 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRHOMDWTG2016.WV_SIORG_N20
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N20,
     S.CO_SIORG AS CO_SIORG_N20,
     S.DS_SIORG AS DS_SIORG_N20
FROM DBH_33393_DWTG_2016.WD_SIORG S
JOIN DBH_33393_DWTG_2016.WD_SIORG AS S20 ON S20.ID_SIORG_N20 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N01 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N01 INTEGER,
      CO_SIORG_N01 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N01 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N01 );

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N02 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N02 INTEGER,
      CO_SIORG_N02 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N02 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N02 );

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N03 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N03 INTEGER,
      CO_SIORG_N03 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N03 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N03 );

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N04 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N04 INTEGER,
      CO_SIORG_N04 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N04 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N04 );

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N05 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N05 INTEGER,
      CO_SIORG_N05 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N05 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N05 );

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N06 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N06 INTEGER,
      CO_SIORG_N06 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N06 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N06 );

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N07 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N07 INTEGER,
      CO_SIORG_N07 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N07 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N07 );

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N08 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N08 INTEGER,
      CO_SIORG_N08 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N08 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N08 );

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N09 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N09 INTEGER,
      CO_SIORG_N09 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N09 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N09 );

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N10 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N10 INTEGER,
      CO_SIORG_N10 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N10 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N10 );

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N11 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N11 INTEGER,
      CO_SIORG_N11 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N11 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N11 );

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N12 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N12 INTEGER,
      CO_SIORG_N12 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N12 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N12 );

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N13 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N13 INTEGER,
      CO_SIORG_N13 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N13 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N13 );

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N14 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N14 INTEGER,
      CO_SIORG_N14 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N14 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N14 );

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N15 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N15 INTEGER,
      CO_SIORG_N15 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N15 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N15 );

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N16 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N16 INTEGER,
      CO_SIORG_N16 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N16 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N16 );

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N17 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N17 INTEGER,
      CO_SIORG_N17 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N17 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N17 );

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N18 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N18 INTEGER,
      CO_SIORG_N18 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N18 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N18 );

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N19 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N19 INTEGER,
      CO_SIORG_N19 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N19 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N19 );

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WV_SIORG_N20 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_SIORG_N20 INTEGER,
      CO_SIORG_N20 VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N20 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( ID_SIORG_N20 );

--*feito05/05************************************************************************************************************************************
2 Atividades

2.1) Favor realizar a publicação das tabelas abaixo:

WD_CELULA_ORCAMENTARIA
WF_DOC_NE
WD_CONTA_CORRENTE
WD_UORG_VINC
WD_ITEM_DECODIFICADO_CCON


WF_LANCAMENTO


Ambiente Homologação 2015:
Origem: DBH_33393_DWTG_STG
Destino: DBH_33393_DWTG

2.2) Favor re-gerar todas as tabelas agregadas referentes à WF_LANCAMENTO.


delete from dbh_33393_dwtg.WD_CELULA_ORCAMENTARIA;
INSERt into dbh_33393_dwtg.WD_CELULA_ORCAMENTARIA select * from dbh_33393_dwtg_stg.WD_CELULA_ORCAMENTARIA;

delete from dbh_33393_dwtg.WF_DOC_NE;
INSERt into dbh_33393_dwtg.WF_DOC_NE select * from dbh_33393_dwtg_stg.WF_DOC_NE;

delete from dbh_33393_dwtg.WD_CONTA_CORRENTE;
INSERt into dbh_33393_dwtg.WD_CONTA_CORRENTE select * from dbh_33393_dwtg_stg.WD_CONTA_CORRENTE;

delete from dbh_33393_dwtg.WD_UORG_VINC;
INSERt into dbh_33393_dwtg.WD_UORG_VINC select * from dbh_33393_dwtg_stg.WD_UORG_VINC;

delete from dbh_33393_dwtg.WD_ITEM_DECODIFICADO_CCON;
INSERt into dbh_33393_dwtg.WD_ITEM_DECODIFICADO_CCON  select * from dbh_33393_dwtg_stg.WD_ITEM_DECODIFICADO_CCON;

não esquece de rodar as view lá na pasta scripts do teradata.
--*feito05/05************************************************************************************************************************************
TB_21763_DVDR_DAT_01

--************************************************************************************************************************************
2 Atividades

Por favor, solicitar a publicação das tabelas WD_ORGAO e WD_UG dos ambientes de stage de 2015 e 2016 para os respectivos ambientes de homologação.

Banco de Origem: DBH_33393_DWTG_STG
Banco de Destino: DBH_33393_DWTG

Banco de Origem: DBH_33393_DWTG_STG_2016
Banco de Destino: DBH_33393_DWTG_2016

delete from dbh_33393_dwtg.WD_ORGAO;
INSERt into dbh_33393_dwtg.WD_ORGAO select * from dbh_33393_dwtg_stg.WD_ORGAO;

delete from dbh_33393_dwtg.WD_UG;
INSERt into dbh_33393_dwtg.WD_UG  select * from dbh_33393_dwtg_stg.WD_UG;

delete from dbh_33393_dwtg_2016.WD_ORGAO;
INSERt into dbh_33393_dwtg_2016.WD_ORGAO select * from dbh_33393_dwtg_stg_2016.WD_ORGAO;

delete from dbh_33393_dwtg_2016.WD_UG;
INSERt into dbh_33393_dwtg_2016.WD_UG  select * from dbh_33393_dwtg_stg_2016.WD_UG;


--feito 09/05********************************************************************************************************************************
(11:17:50) Fernanda da Silva Alves: Banco: bimd004
Domínio: pc961ddom
(11:18:02) Fernanda da Silva Alves: apagar o conteudo mas antes realizar backup​

create user PC961DDOM_BACKUP_20160509 IDENTIFIED by "pc961ddom" default tablespace "TB_07653_PC961DDOM_DAT_01";

nohup impdp dwpub/dwpubmd@bimd004 directory=DWPUB_DATAPUMP network_link=DBL_BIMD004 schemas=PC961DDOM remap_schema=PC961DDOM:PC961DDOM_BACKUP_20160509 nologfile=y > importmetadados20160509.log &

--TESTAR DBL-LINK PARA para fazer impdb
SQL> select name from v$database@DBL_BIMD004;


select count(*) from dba_objects where owner = 'PC961DDOM';
--=================================================================================
11:30:49 DWPUB:bimd004 > select name from v$database@DBL_WHPRO102;

NAME
---------------------------
BIMD004

Elapsed: 00:00:00.10
11:32:28 DWPUB:bimd004 > select count(*) from dba_objects where owner = 'PC961DDOM';

  COUNT(*)
----------
       807

SQL>  select count(*) from dba_objects where owner = 'PC961DDOM_BACKUP_20160509';

  COUNT(*)
----------
       807

--feito 09/05/2016 - 15:17 finalizou*******************************************************************************************************************
(14:31:32) Fernanda da Silva Alves: copiar de:
dwmd35 - esquema: ​pctrtransitodes910
PCTRTRANSITODES910

Copiar para:
Banco bimd004 - PC961DTRSTREP
=====================================================================================================================================================
TB_PCTRDESMD_DAT_01

						    Total	  Total       Ocupado	      Livre  (%)     Largest
TABLESPACE				  Extensivel (Mb)  Alocado (Mb) 	 (Mb)	      (Mb)   Livre	(Mb) Fragmentacao
---------------------------------------- ---------------- ------------- ------------- ------------- ------ --------- ------------
TB_PCTRDESMD_DAT_01				  5,200.0	5,200.0       3,919.9	    1,280.1   24.6   1,231.9	      2.0
					 ---------------- ------------- ------------- -------------
sum						  5,200.0	5,200.0       3,919.9	    1,280.1


						    Total	  Total       Ocupado	      Livre  (%)     Largest
TABLESPACE				  Extensivel (Mb)  Alocado (Mb) 	 (Mb)	      (Mb)   Livre	(Mb) Fragmentacao
---------------------------------------- ---------------- ------------- ------------- ------------- ------ --------- ------------
TB_39900_PC961DTRSTREP_DAT_01			 32,767.0	1,024.0 	  1.0	    1,023.0   99.9   1,023.0	      1.0
					 ---------------- ------------- ------------- -------------
sum						 32,767.0	1,024.0 	  1.0	    1,023.0

=========================================================================================================================================================
alter user pctrtransitodes910 account lock;

nohup impdp dwpub/dwpubmd@bimd004 directory=DWPUB_DATAPUMP network_link=DBL_DWMD35 schemas=PCTRTRANSITODES910 remap_schema=PCTRTRANSITODES910:PC961DTRSTREP remap_tablespace=TB_PCTRDESMD_DAT_01:TB_39900_PC961DTRSTREP_DAT_01 nologfile=y > importmetadados20160509.log &

-- TESTAR A QUANTIDADE DO OBJETOS DE CADA SCHEMA.========================
select count(*) from dba_objects where owner = 'PCTRDWTREINA910';

dwmd35 > select count(*) from dba_objects where owner = 'PCTRTRANSITODES910';

  COUNT(*)
----------
       742

select count(*) from dba_objects where owner = 'PC961DTRSTREP'

15:07:57 DWPUB:bimd004 > select count(*) from dba_objects where owner = 'PC961DTRSTREP';

  COUNT(*)
----------
	 0

15:16:25 DWPUB:bimd004 > select count(*) from dba_objects where owner = 'PC961DTRSTREP';

  COUNT(*)
----------
       742

15:16:38 DWPUB:bimd004 >
--*feito 09/05****************************************************************************************************************
2 Atividades
Prezados, favor publicar a tabela WD_ITEM_DECODIFICADO_CCON

Banco de Origem: DBH_33393_DWTG_STG
Banco de Destino: DBH_33393_DWTG

delete from dbh_33393_dwtg.WD_ITEM_DECODIFICADO_CCON;
INSERt into dbh_33393_dwtg.WD_ITEM_DECODIFICADO_CCON  select * from dbh_33393_dwtg_stg.WD_ITEM_DECODIFICADO_CCON;

2016RS/000144609 


--*feito 09/05****************************************************************************************************************
WF_EDBV_AQVO
WD_EDBV_TIPO_ARQ
WD_EDBV_TIPO_VIAJANTE
WF_EDBV_APBG????
WF_EDBV_APDO
WF_EDBV_TEBE
WF-EDBV_DEHT
WD_EDBV_FAIXA_ETARIA
WF_EDBV_MOHT
WD_EDBV_AEROPORTOS_IATA
WF_EDBV_APVI
WD_EDBV_TIPO_ES
WD_EDBV_CIA_AEREA
WD_EDBV_SIT_VOO
WF_EDBV_DECL
WD_EDBV_DECL
WF_EDBV_TEBE
WF_EDBV_ABEM
WF_EDBV_ARCI
WF_EDBV_ARCA
WF_EDBV_AREP
WF_EDBV_ARPR
WF_EDBV_ARPS
WD_EDBV_TIPO_SEL_MAN
WD_EDBV_TIPO_ABRANGENCIA
WD_EDBV_TIPO_MODUL
WD_EDBV_TIPO_MOTIVO
WD_EDBV_TIPO_DECL
WD_EDBV_DECL_PLACA_PERG_PORTE
WD_EDBV_DECL_PLACA_ADM_RES
WD_EDBV_SIT_DECL
WD_EDBV_DECL_PLACA_PERG_VAR
WD_EDBV_DECL_PLACA_VIAJANTE
WD_EDBV_AREP
WD_EDBV_AR SP
WF_EDBV_AREM



WD_EDBV_AEROPORTOS_IATA
WD_EDBV_CIA_AEREA
WD_EDBV_FAIXA_ETARIA
WD_EDBV_RECINTO_ADUANEIRO
WD_EDBV_SIT_VOO
WD_EDBV_TIPO_ARQ
WD_EDBV_TIPO_ES
WD_EDBV_TIPO_VIAJANTE
WD_EDBV_TP_DOC_VIAJ
WF_EDBV_APBG
WF_EDBV_APDO
WF_EDBV_APVI
WF_EDBV_APVO
WF_EDBV_AQVO

UPDATE DWPUB.CONTROLE_GRANTS_FERRAMENTAS SET OWNER_FERRAMENTA = 'ADMEDBV' WHERE DEFAULT_TABLESPACE LIKE 'TB_08676_EDBV_USR_01';

create synonym ADMEDBV.WD_EDBV_TIPO_ES for EDBV.WD_EDBV_TIPO_ES;
create synonym ADMEDBV.WF_EDBV_AQVO for EDBV.WF_EDBV_AQVO;
create synonym ADMEDBV.WD_EDBV_RECINTO_ADUANEIRO for EDBV.WD_EDBV_RECINTO_ADUANEIRO;
create synonym ADMEDBV.WD_EDBV_FAIXA_ETARIA for EDBV.WD_EDBV_FAIXA_ETARIA;
create synonym ADMEDBV.WF_EDBV_APVO for EDBV.WF_EDBV_APVO;
create synonym ADMEDBV.WD_EDBV_TIPO_VIAJANTE for EDBV.WD_EDBV_TIPO_VIAJANTE;
create synonym ADMEDBV.WD_EDBV_TIPO_ARQ for EDBV.WD_EDBV_TIPO_ARQ;
create synonym ADMEDBV.WD_EDBV_SIT_VOO for EDBV.WD_EDBV_SIT_VOO;
create synonym ADMEDBV.WD_EDBV_CIA_AEREA for EDBV.WD_EDBV_CIA_AEREA;
create synonym ADMEDBV.WD_EDBV_AEROPORTOS_IATA for EDBV.WD_EDBV_AEROPORTOS_IATA;
create synonym ADMEDBV.WD_EDBV_TP_DOC_VIAJ for EDBV.WD_EDBV_TP_DOC_VIAJ;
create synonym ADMEDBV.WF_EDBV_APVI for EDBV.WF_EDBV_APVI;
create synonym ADMEDBV.WF_EDBV_APDO for EDBV.WF_EDBV_APDO;
create synonym ADMEDBV.WF_EDBV_APBG for EDBV.WF_EDBV_APBG;

--*feito 10/05****************************************************************************************************************
2 Atividades
Prezados, favor publicar a tabela WD_UO

Banco de Origem: DBH_33393_DWTG_STG
Banco de Destino: DBH_33393_DWTG

delete from dbh_33393_dwtg.WD_UO;
INSERt into dbh_33393_dwtg.WD_UO  select * from dbh_33393_dwtg_stg.WD_UO;

--************************************************************************************************************************************
-- fazer ainda============================================================================
2 Atividades

1) PUBLICAR AS TABELAS ABAIXO:

ORIGEM: ORACLE_33393_DWTG.WA_CALENDARIO_SIAFI
DESTINO: DBP_33393_DWTG.WA_CALENDARIO_SIAFI

ORIGEM: DBH_33393_DWTG_STG.WA_CALENDARIO_SIAFI
DESTINO: DBH_33393_DWTG.WA_CALENDARIO_SIAFI

ORIGEM: DBH_33393_DWTG_STG_2016.WA_CALENDARIO_SIAFI
DESTINO: DBH_33393_DWTG_2016.WA_CALENDARIO_SIAFI

2) CRIAR A VIEW DO ARQUIVO EM ANEXO NOS AMBIENTES:

- HOMOLOGACAO 2015
- HOMOLOGACAO 2016
- PRODUCAO 2015
- PRODUCAO 2016



delete from DBP_33393_DWTG.WA_CALENDARIO_SIAFI;
INSERt into DBP_33393_DWTG.WA_CALENDARIO_SIAFI select * from ORACLE_33393_DWTG.WA_CALENDARIO_SIAFI;

delete from DBH_33393_DWTG.WA_CALENDARIO_SIAFI
INSERt into DBH_33393_DWTG.WA_CALENDARIO_SIAFI select * from DBH_33393_DWTG_STG.WA_CALENDARIO_SIAFI;

delete from DBH_33393_DWTG_2016.WA_CALENDARIO_SIAFI;
INSERt into DBH_33393_DWTG_2016.WA_CALENDARIO_SIAFI select * from DBH_33393_DWTG_STG_2016.WA_CALENDARIO_SIAFI;


1) PUBLICAR AS TABELAS ABAIXO:

ORIGEM: ORACLE_33393_DWTG.WA_CALENDARIO_SIAFI
DESTINO: DBP_33393_DWTG.WA_CALENDARIO_SIAFI

ORIGEM: DBH_33393_DWTG_STG.WA_CALENDARIO_SIAFI
DESTINO: DBH_33393_DWTG.WA_CALENDARIO_SIAFI

ORIGEM: DBH_33393_DWTG_STG_2016.WA_CALENDARIO_SIAFI
DESTINO: DBH_33393_DWTG_2016.WA_CALENDARIO_SIAFI



2) CRIAR A VIEW ABAIXO NOS AMBIENTES:

	- HOMOLOGACAO 2015
	- HOMOLOGACAO 2016
	- PRODUCAO 2015
	- PRODUCAO 2016

- DBH_33393_DWTG
- DBH_33393_DWTG_2016
- DBP_33393_DWTG
- DBP_33393_DWTG_2016


-- CriaÃ§Ã£o da tabela vazia para importacao no microstrategy
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_CALENDARIO_SIAFI_ATUAL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_ANO SMALLINT,
      ID_MES BYTEINT,
      DT_FECHAMENTO_CCONT INTEGER,
      ANO_MES_NUMERICO NUMBER,
      DATA_VARCHAR VARCHAR(10) CHARACTER SET UNICODE NOT CASESPECIFIC,
      DATA_TIMESTAMP TIMESTAMP(0)
     )
PRIMARY INDEX ( ID_ANO );

-- CriaÃ§Ã£o de view de negÃ³cio
REPLACE VIEW mstrproddwtg2016.WV_CALENDARIO_SIAFI_ATUAL AS
SELECT 
	ID_ANO, 
	ID_MES, 
	DT_FECHAMENTO_CCONT,
	TO_NUMBER(TO_CHAR(ID_ANO) || cast(lpad(cast(ID_MES as varchar(2)),2,'0') as varchar(2))) AS ANO_MES_NUMERICO,
	SUBSTR(TO_CHAR(DT_FECHAMENTO_CCONT),7,2) || '/' || SUBSTR(TO_CHAR(DT_FECHAMENTO_CCONT),5,2) || '/' || SUBSTR(TO_CHAR(DT_FECHAMENTO_CCONT),1,4) AS DATA_VARCHAR,
	CAST(TO_CHAR(DT_FECHAMENTO_CCONT) AS TIMESTAMP(0) FORMAT 'YYYYMMDD') AS DATA_TIMESTAMP
FROM DBP_33393_DWTG_2016.WA_CALENDARIO_SIAFI C
WHERE ID_ANO = (SELECT MAX(ID_ANO) 
		FROM DBP_33393_DWTG_2016.WA_CALENDARIO_SIAFI 
		WHERE CURRENT_DATE > CAST(TO_CHAR(DT_FECHAMENTO_CCONT) AS TIMESTAMP(0) FORMAT 'YYYYMMDD'))
  AND ID_MES = (SELECT MAX(ID_MES) 
		FROM DBP_33393_DWTG_2016.WA_CALENDARIO_SIAFI 
		WHERE CURRENT_DATE > CAST(TO_CHAR(DT_FECHAMENTO_CCONT) AS TIMESTAMP(0) FORMAT 'YYYYMMDD') AND ID_ANO = C.ID_ANO)
;   

-- feito produçao 12/05/2016============================================================================

replace view mstrhomdwtg.' || TRIM(tablename) || ' as lock row for access select * from dbp_33393_dwtg_2016.' || TRIM(tablename) || ';

WF_PENSIONISTA_SIAPE_CUSTO

replace view mstrproddwtg2016.WF_PENSIONISTA_SIAPE_CUSTO as lock row for access select * from dbp_33393_dwtg_2016.WF_PENSIONISTA_SIAPE_CUSTO;
replace view mstrproddwtg2016.WF_PENSIONISTA_SIAPE_CUSTO_01 as lock row for access select * from dbp_33393_dwtg_2016.WF_PENSIONISTA_SIAPE_CUSTO_01;
replace view mstrproddwtg2016.WF_SERVIDOR_SIAPE_CUSTO as lock row for access select * from dbp_33393_dwtg_2016.WF_SERVIDOR_SIAPE_CUSTO;
replace view mstrproddwtg2016.WF_SERVIDOR_SIAPE_CUSTO_01 as lock row for access select * from dbp_33393_dwtg_2016.WF_SERVIDOR_SIAPE_CUSTO_01;


CREATE VIEW MSTRPRODDWTG2016.WF_PENSIONISTA_SIAPE_CUSTO AS
    LOCKING ROW FOR ACCESS
    SELECT * FROM WF_PENSIONISTA_SIAPE_CUSTO
;

CREATE VIEW MSTRPRODDWTG2016.WF_PENSIONISTA_SIAPE_CUSTO_01 AS
    LOCKING ROW FOR ACCESS
    SELECT * FROM WF_PENSIONISTA_SIAPE_CUSTO_01;
;

CREATE VIEW MSTRPRODDWTG2016.WF_SERVIDOR_SIAPE_CUSTO AS
    LOCKING ROW FOR ACCESS
    SELECT * FROM WF_SERVIDOR_SIAPE_CUSTO;
;

CREATE VIEW MSTRPRODDWTG2016.WF_SERVIDOR_SIAPE_CUSTO_01 AS
    LOCKING ROW FOR ACCESS
    SELECT *FROM WF_SERVIDOR_SIAPE_CUSTO_01;
;

--feito 12/05/2016**************************************************************************************************************************
2 Atividades

Cria??o de tabela WA_CALENDARIO_SIAFI nos ambientes DBP_33393_DWTG_2016, DBP_33393_DWTG, DBH_33393_DWTG, DBH_33393_DWTG_2016 de acordo com o script em anexo.

BANCOS:

- DBP_33393_DWTG_2016
- DBP_33393_DWTG
- DBH_33393_DWTG
- DBH_33393_DWTG_2016


COMANDO:

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WA_CALENDARIO_SIAFI ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_ANO SMALLINT NOT NULL,
      ID_MES BYTEINT NOT NULL,
      DT_FECHAMENTO_CCONT INTEGER NOT NULL,
      DT_FECHAMENTO_CONFORMIDADE INTEGER NOT NULL,
      AN_EXERCICIO_C SMALLINT NOT NULL,
      DT_CARGA_C INTEGER NOT NULL,
      NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      IN_OPERACAO_C BYTEINT NOT NULL)
UNIQUE PRIMARY INDEX ( ID_ANO ,ID_MES );
--feito 14/05************************************************************************************************************************

replace view mstrhomdwtg2016.WF_PENSIONISTA_SIAPE_CUSTO as lock row for access select * from dbh_33393_dwtg_2016.WF_PENSIONISTA_SIAPE_CUSTO;
replace view mstrhomdwtg2016.WF_PENSIONISTA_SIAPE_CUSTO_01 as lock row for access select * from dbh_33393_dwtg_2016.WF_PENSIONISTA_SIAPE_CUSTO_01;
replace view mstrhomdwtg2016.WF_SERVIDOR_SIAPE_CUSTO as lock row for access select * from dbh_33393_dwtg_2016.WF_SERVIDOR_SIAPE_CUSTO;
replace view mstrhomdwtg2016.WF_SERVIDOR_SIAPE_CUSTO_01 as lock row for access select * from dbh_33393_dwtg_2016.WF_SERVIDOR_SIAPE_CUSTO_01;

--feito 12/05/2016**********************************************************************************************************************

Alter Table Arcx.Wf_Di_Selecionar_Conf Drop Partition Pt_Wfsel_Ra_Dt_Dia_200801;
Alter Table Arcx.Wf_Di_Selecionar_Conf Drop Partition Pt_Wfsel_Ra_Dt_Dia_200802;
Alter Table Arcx.Wf_Di_Selecionar_Conf Drop Partition Pt_Wfsel_Ra_Dt_Dia_200803;
Alter Table Arcx.Wf_Di_Selecionar_Conf Drop Partition Pt_Wfsel_Ra_Dt_Dia_200804;


--**********************************************************************************************************************
MOSTRAR - 
Example
The following example archives all databases when all AMPs are online:
   LOGON DBC,DBC;
   ARCHIVE DATA TABLES (DBC) ALL,
   RELEASE LOCK,
   FILE=ARCHIVE;
   LOGOFF;

3451-0700

--**********************************************************************************************************************
2 Atividades

Prezados, favor publicar as tabelas abaixo no DW-TG 2016.

TABELAS:
- WD_NATUREZA_RECEITA2
- WD_SUBALINEA2_NARE 
- WD_ESPECIE_RECEITA2_NARE

ORIGEM: dbc_33393_dwtg_2016
DESTINO: dbp_33393_dwtg_2016

delete from dbp_33393_dwtg_2016.WD_NATUREZA_RECEITA2;
INSERt into dbp_33393_dwtg_2016.WD_NATUREZA_RECEITA2 select * from dbc_33393_dwtg_2016.WD_NATUREZA_RECEITA2;

delete from dbp_33393_dwtg_2016.WD_SUBALINEA2_NARE;
INSERt into dbp_33393_dwtg_2016.WD_SUBALINEA2_NARE select * from dbc_33393_dwtg_2016.WD_SUBALINEA2_NARE;

delete from dbp_33393_dwtg_2016.WD_ESPECIE_RECEITA2_NARE;
INSERt into dbp_33393_dwtg_2016.WD_ESPECIE_RECEITA2_NARE select * from dbc_33393_dwtg_2016.WD_ESPECIE_RECEITA2_NARE;



--feito em 16/05**********************************************************************************************************************


2 Atividades

Prezados, favor publicar as seguintes tabelas do banco de stage de 2015 (dbh_33393_dwtg_stg) para o banco de Homologação de 2015 (dbh_33393_dwtg).

WD_CELULA_ORCAMENTARIA
WF_DOC_NE
WF_PAGAMENTO

Banco de Origem: dbh_33393_dwtg_stg
Banco de Destino: dbh_33393_dwtg


delete from dbh_33393_dwtg.WD_CELULA_ORCAMENTARIA;
INSERt into dbh_33393_dwtg.WD_CELULA_ORCAMENTARIA select * from dbh_33393_dwtg_stg.WD_CELULA_ORCAMENTARIA;

delete from dbh_33393_dwtg.WF_DOC_NE;
INSERt into dbh_33393_dwtg.WF_DOC_NE select * from dbh_33393_dwtg_stg.WF_DOC_NE;

delete from dbh_33393_dwtg.WF_PAGAMENTO;
INSERt into dbh_33393_dwtg.WF_PAGAMENTO select * from dbh_33393_dwtg_stg.WF_PAGAMENTO;

--**********************************************************************************************************************
REPLACE VIEW mstrhomdwtg.WA_CALENDARIO_SIAFI AS
	lock row for access
	select * from dbh_33393_dwtg.WA_CALENDARIO_SIAFI
;

REPLACE VIEW mstrhomdwtg2016.WA_CALENDARIO_SIAFI AS
	lock row for access
	select * from dbh_33393_dwtg_2016.WA_CALENDARIO_SIAFI
;

REPLACE VIEW mstrproddwtg.WA_CALENDARIO_SIAFI AS
	lock row for access
	select * from dbp_33393_dwtg.WA_CALENDARIO_SIAFI
;

--*****feito 19/05/2016***************************************************************************************************************

2 Atividades

Prezados, favor :

1) publicar as tabelas WF_LANCAMENTO e WD_ITEM_DECODIFICADO_CCON

Banco Origem: dbh_33393_dwtg_stg
Banco Destino: dbh_33393_dwtg

2) Regerar as agregadas: WF_LANCAMENTO_EP01, WF_LANCAMENTO_EP02, WF_LANCAMENTO_EP03, WF_LANCAMENTO_EP04, WF_LANCAMENTO_EP20  no Banco Destino: dbh_33393_dwtg

delete from dbh_33393_dwtg.WD_ITEM_DECODIFICADO_CCON;
INSERt into dbh_33393_dwtg.WD_ITEM_DECODIFICADO_CCON select * from dbh_33393_dwtg_stg.WD_ITEM_DECODIFICADO_CCON;

--*****feito 19/05/2016***************************************************************************************************************

alter table sigpgfn.sig_devedor_detalhado add (ID_DIA_MOTIVO_SITUACAO DATE, ID_MOTIVO_SITUACAO NUMBER(2,0));

alter table sigpgfn.sigsaj_classe add (ID_IND_ORIGINARIA_RECURSO VARCHAR2(13 BYTE), ID_IND_DESATIVADO VARCHAR2(3 BYTE), ID_IND_EXECUCAO_FISCAL VARCHAR2(3 BYTE));

--*****feito 21/05/2016***************************************************************************************************************

ALTER TABLE SPED.WF_SPED_DEIS MOVE PARTITION PT_DEIS_201602 TABLESPACE TB_21746_SPED_DAT_00;


SPED.WF_SPED_DEIS partition (PT_DEIS_201602)

TB_21746_SPED_DAT_01

TB_21746_SPED_DAT_00

31/05/2016****************************************************************************************************************
ALTER TABLE DBH_33393_DWTG.WD_CONTA_CONTABIL_EXERCICIO  ADD  ID_TP_CCOR_CCON SMALLINT NOT NULL DEFAULT -9;
não existe ALTER TABLE DBH_33393_DWTG_2016.WD_CONTA_CONTABIL_EXERCICIO  ADD  ID_TP_CCOR_CCON SMALLINT NOT NULL DEFAULT -9;
não existe ALTER TABLE DBC_33393_DWTG_2016.WD_CONTA_CONTABIL_EXERCICIO  ADD  ID_TP_CCOR_CCON SMALLINT NOT NULL DEFAULT -9;
não existe ALTER TABLE DBP_33393_DWTG_2016.WD_CONTA_CONTABIL_EXERCICIO  ADD  ID_TP_CCOR_CCON SMALLINT NOT NULL DEFAULT -9;
não existe ALTER TABLE ORACLE_33393_DWTG.WD_CONTA_CONTABIL_EXERCICIO  ADD  ID_TP_CCOR_CCON SMALLINT NOT NULL DEFAULT -9;
não existe ALTER TABLE DBP_33393_DWTG.WD_CONTA_CONTABIL_EXERCICIO  ADD  ID_TP_CCOR_CCON SMALLINT NOT NULL DEFAULT -9;



2 Atividades

Prezados,
Favor realizar a publicação das tabelas WD_DOC_NE e WF_DOC_NE.

Origem: DBH_33393_DWTG_STG
Destino: DBH_33393_DWTG

--não feito ainda** EM 31/05/2016****************************************************************************************************************
- Criar a tabela logo abaixo nos seguintes ambientes Teradata:

	DBH_33393_DWTG_2016;
	DBH_33393_DWTG;	
	DBC_33393_DWTG_2016;
	DBP_33393_DWTG_2016;
	ok - ORACLE_33393_DWTG;
	ok -DBP_33393_DWTG;


- Executar o seguinte comando para os ambientes definidos acima:

	CREATE MULTISET TABLE DBP_33393_DWTG.WD_CONTA_CONTABIL_EXERCICIO ,NO FALLBACK ,
		   NO BEFORE JOURNAL,
		   NO AFTER JOURNAL,
		   CHECKSUM = DEFAULT,
		   DEFAULT MERGEBLOCKRATIO
		   (
		    ID_ANO SMALLINT NOT NULL,
		    ID_CONTA_CONTABIL INTEGER NOT NULL,
		    NO_CONTA_CONTABIL VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
		    IN_CREDITO_CCON BYTEINT NOT NULL,
		    IN_DEBITO_CCON BYTEINT NOT NULL,
		    IN_SALDO_CCON BYTEINT NOT NULL,
		    IN_ISF_CCON VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
		    ID_CONTA_CONTABIL_DESTINO INTEGER NOT NULL,
		    ID_CLASSE_CCON BYTEINT NOT NULL,
		    ID_GRUPO_CCON BYTEINT NOT NULL,
		    ID_SUBGRUPO_CCON BYTEINT NOT NULL,
		    ID_TITULO_CCON BYTEINT NOT NULL,
		    ID_SUBTITULO_CCON BYTEINT NOT NULL,
		    ID_ITEM_CCON BYTEINT NOT NULL,
		    CO_SUBITEM_CCON VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
		    ID_TP_CCOR_N_CCON SMALLINT NOT NULL,
		    ID_TP_CCOR_F_CCON SMALLINT NOT NULL,
		    ID_TP_CCOR_P_CCON SMALLINT NOT NULL,
		    ID_ENCERRAMENTO_CCON BYTEINT NOT NULL,
		    AN_EXERCICIO_C SMALLINT NOT NULL,
		    DT_CARGA_C INTEGER NOT NULL,
		    NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
		    IN_OPERACAO_C BYTEINT NOT NULL,
		    SN_ESCRITURACAO_CCON VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
		    ID_IN_INVERTE_SALDO_CCON BYTEINT NOT NULL,
		    ID_IN_TP_SALDO_CCON BYTEINT NOT NULL,
		    ID_TP_CCOR_CCON SMALLINT NOT NULL DEFAULT -9 )
	UNIQUE PRIMARY INDEX PK_WD_CONTA_CONTABIL_EXER ( ID_ANO ,ID_CONTA_CONTABIL );


--mariox**FEITO EM 31/05/2016****************************************************************************************************************

2 Atividades

Prezados,
Favor realizar a publicação das tabelas, no Ambiente Homologação 2015:

WD_ORGAO
WD_ORGAO_SUPE
WD_ORGAO_MAXI

Origem: DBH_33393_DWTG_STG
Destino: DBH_33393_DWTG

delete from dbh_33393_dwtg.WD_ORGAO;
INSERt into dbh_33393_dwtg.WD_ORGAO select * from dbh_33393_dwtg_stg.WD_ORGAO;

delete from dbh_33393_dwtg.WD_ORGAO_SUPE;
INSERt into dbh_33393_dwtg.WD_ORGAO_SUPE select * from dbh_33393_dwtg_stg.WD_ORGAO_SUPE;

delete from dbh_33393_dwtg.WD_ORGAO_MAXI;
INSERt into dbh_33393_dwtg.WD_ORGAO_MAXI select * from dbh_33393_dwtg_stg.WD_ORGAO_MAXI;


--mariox**FEITO EM 01/06/2016****************************************************************************************************************

2 Atividades

Prezados,
Favor realizar a publica??o das tabelas, no Ambiente Homologa??o 2015:

WD_ITEM_DECODIFICADO_CCON
WD_ST_UPAG_SIAPE

Origem: DBH_33393_DWTG_STG
Destino: DBH_33393_DWTG


delete from dbh_33393_dwtg.WD_ITEM_DECODIFICADO_CCON;
INSERt into dbh_33393_dwtg.WD_ITEM_DECODIFICADO_CCON select * from dbh_33393_dwtg_stg.WD_ITEM_DECODIFICADO_CCON;

delete from dbh_33393_dwtg.WD_ST_UPAG_SIAPE;
INSERt into dbh_33393_dwtg.WD_ST_UPAG_SIAPE select * from dbh_33393_dwtg_stg.WD_ST_UPAG_SIAPE;


--mariox**FEITO EM 01/06/2016****************************************************************************************************************

2 Atividades

Prezados,
Favor realizar a publicação das tabelas, no Ambiente Homologação 2015:

WD_PRODUTO
WD_UNIDADE_MEDIDA

Origem: DBH_33393_DWTG_STG
Destino: DBH_33393_DWTG

delete from dbh_33393_dwtg.WD_PRODUTO;
INSERt into dbh_33393_dwtg.WD_PRODUTO select * from dbh_33393_dwtg_stg.WD_PRODUTO;

delete from dbh_33393_dwtg.WD_UNIDADE_MEDIDA;
INSERt into dbh_33393_dwtg.WD_UNIDADE_MEDIDA select * from dbh_33393_dwtg_stg.WD_UNIDADE_MEDIDA;


--mariox**FEITO EM 01/06/2016****************************************************************************************************************
2 Atividades

Prezados,
Favor realizar a publicação das tabelas, no Ambiente Homologação 2015:

WD_ITEM_DECODIFICADO_CCON
WD_ST_UPAG_SIAPE

Origem: DBH_33393_DWTG_STG
Destino: DBH_33393_DWTG

delete from dbh_33393_dwtg.WD_ITEM_DECODIFICADO_CCON;
INSERt into dbh_33393_dwtg.WD_ITEM_DECODIFICADO_CCON select * from dbh_33393_dwtg_stg.WD_ITEM_DECODIFICADO_CCON;

delete from dbh_33393_dwtg.WD_ST_UPAG_SIAPE;
INSERt into dbh_33393_dwtg.WD_ST_UPAG_SIAPE select * from dbh_33393_dwtg_stg.WD_ST_UPAG_SIAPE;

--mariox**FEITO EM 02/06/2016****************************************************************************************************************
2 Atividades

2.1. Por favor, solicitar a criação da coluna abaixo no ambiente de Produção de 2015 e 2016, conforme comando abaixo:

ALTER TABLE DBP_33393_DWTG_2016.WD_UG ADD ID_UO INTEGER NOT NULL DEFAULT -9;
ALTER TABLE DBP_33393_DWTG.WD_UG ADD ID_UO INTEGER NOT NULL DEFAULT -9;

2.2. Solicito a publicação da tabela WD_UG dos ambientes de stage de 2015 e 2016 em seus respectivos ambientes de Produção, conforme descrito abaixo.

* ORACLE_33393_DWTG publicar em DBP_33393_DWTG
* DBC_33393_DWTG_2016 publicar em DBP_33393_DWTG_2016

delete from dbp_33393_dwtg.WD_UG;
INSERt into dbp_33393_dwtg.WD_UG select * from ORACLE_33393_DWTG.WD_UG;

delete from DBP_33393_DWTG_2016.WD_UG;
INSERt into DBP_33393_DWTG_2016.WD_UG select * from DBC_33393_DWTG_2016.WD_UG;

--mariox**FEITO EM 03/06/2016**********************************************************************************************************************
2 Atividades
Por favor solicitar a publicação da tabela WD_UO.

Banco de origem: DBH_33393_DWTG_STG
Banco de destino: DBH_33393_DWTG

delete from DBH_33393_DWTG.WD_UO;
INSERt into DBH_33393_DWTG.WD_UO select * from DBH_33393_DWTG_STG.WD_UO;

--***********************************************************************************************************************************************
10741


--SERVICE NAME DO ORACLE - É UM ALIAS DA INSTANCIA DO BANCO
-- E SERVE PARA APROPRIAÇÃO E PARA GERENCIAMENTO ESPECÍFICO DENTRO DA INSTÂNCIA COM INFORMAÇÕES SOBRE O CÓDIGO DE SERVIÇO.


--16/07/2018 - ver processo novo para 3 INSTÂNCIAS DO EXADATA

oracle11@dfcdsrvp0076 /home/oracle11 $ srvctl add service -d bipro001 -s Dbp_39900_trst_bipro001
oracle11@dfcdsrvp0076 /home/oracle11 $ srvctl start service -d bipro001 -s Dbp_39900_trst_bipro001
-- 
Em 03/06/2016 11:33:05, Mario Marcos Martins de Souza escreveu:

    Rodrigo,
    Por favor criar esse service:

     srvctl add service -d bipro001 dbp_39900_dwtransito_bipro001

APAGAR ESSE     
 srvctl add service -d bipro001 dbp_39900_trst_bipro001

        Dbp_05663_bialm_bdpro071
        Db[p-h-t]_xxxxx_mnemonico_nomebanco
        -- 

        Atenciosamente,

        RODRIGO F. ALBERNAZ DE MORAIS
        SERPRO - REGIONAL BRASÍLIA
        SUPCD/CDBSA/CDBDB
        (61) 2021-9145


        Em 03/06/2016 11:09:26, Rodrigo Ferreira Albernaz de Morais escreveu:

            Criar service name
            srvctl add service -d <nome_banco> -s <nome_serviço>

            Iniciar serviço
            srvctl start service -d <nome_banco> -s <nome_serviço>

            Parar serviço
            srvctl stop service -d <nome_banco> -s <nome_serviço>

            Remover serviço
            srvctl remove service -d bipro001 dbp_39900_trst_bipro001

            Verificar status
            srvctl status service -d <nome_banco> -s <nome_serviço>

            ex :srvctl -help
            srvctl add service -help

--16/07/2018 - ver processo novo para 3 INSTÂNCIAS DO EXADATA

--mariox**FEITO EM 08/06/2016**********************************************************************************************************************
Assunto: [DWTG] Publicação do SIORG no ambiente de Produção de 2016
De: Samuel Sales Pinheiro Wanderley <samuel.wanderley@serpro.gov.br> [+] [x]
Data: 07/06/2016 14:46:51
Destinatário: akemi.adachi@serpro.gov.br [...]
Akemi,

Segue o texto abaixo referente ao acionamento a ser criado para o ambiente de 2016.

Ats.

---

1. Criar/alterar as estruturas abaixo:

ALTER TABLE DBC_33393_DWTG_2016.WD_UG ADD ID_UO INTEGER NOT NULL DEFAULT -9;

ALTER TABLE DBP_33393_DWTG_2016.WD_UG ADD ID_UO INTEGER NOT NULL DEFAULT -9;

ALTER TABLE DBC_33393_DWTG_2016.WD_ORGAO ADD ID_SIORG INTEGER NOT NULL DEFAULT -9;

ALTER TABLE DBP_33393_DWTG_2016.WD_ORGAO ADD ID_SIORG INTEGER NOT NULL DEFAULT -9;

CREATE MULTISET TABLE DBP_33393_DWTG_2016.WD_SIORG
(
    ID_SIORG        INTEGER            NOT NULL    DEFAULT -9,
    CO_SIORG        VARCHAR(6)        NOT NULL,
    DS_SIORG        VARCHAR(110)    NOT NULL,
    ID_SIORG_N01    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N02    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N03    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N04    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N05    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N06    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N07    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N08    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N09    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N10    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N11    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N12    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N13    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N14    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N15    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N16    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N17    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N18    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N19    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N20    INTEGER            NOT NULL    DEFAULT -9,
    DT_CARGA_C        INTEGER            NOT NULL,
    AN_EXERCICIO_C    SMALLINT        NOT NULL,   
    NO_ORIGEM_C        VARCHAR(50)        NOT NULL,   
    IN_OPERACAO_C    BYTEINT            NOT NULL
) UNIQUE PRIMARY INDEX (ID_SIORG)
;

2. Realizar a publicação das tabelas abaixo do banco de carga de 2015 (DBC_33393_DWTG_2016) para o banco de produção de 2015 (DBP_33393_DWTG_2016).

- WD_UG
- WD_ORGAO
- WD_SIORG

delete from DBP_33393_DWTG_2016.WD_UG;
INSERt into DBP_33393_DWTG_2016.WD_UG select * from DBC_33393_DWTG_2016.WD_UG;

delete from DBP_33393_DWTG_2016.WD_ORGAO;
INSERt into DBP_33393_DWTG_2016.WD_ORGAO select * from DBC_33393_DWTG_2016.WD_ORGAO;

delete from DBP_33393_DWTG_2016.WD_SIORG;
INSERt into DBP_33393_DWTG_2016.WD_SIORG select * from DBC_33393_DWTG_2016.WD_SIORG;




3. Criacao das views no ambiente MSTRPRODDWTG2016 para serem mapeadas na ferramenta Microstrategy.

REPLACE VIEW MSTRPRODDWTG2016.WD_SIORG
AS
LOCKING ROW FOR ACCESS
SELECT * FROM DBP_33393_DWTG_2016.WD_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N01
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N01,
                 S.CO_SIORG AS CO_SIORG_N01,
                 S.DS_SIORG AS DS_SIORG_N01
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S1 ON S1.ID_SIORG_N01 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N02
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N02,
                 S.CO_SIORG AS CO_SIORG_N02,
                 S.DS_SIORG AS DS_SIORG_N02
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S2 ON S2.ID_SIORG_N02 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N03
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N03,
                 S.CO_SIORG AS CO_SIORG_N03,
                 S.DS_SIORG AS DS_SIORG_N03
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S3 ON S3.ID_SIORG_N03 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N04
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N04,
                 S.CO_SIORG AS CO_SIORG_N04,
                 S.DS_SIORG AS DS_SIORG_N04
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S4 ON S4.ID_SIORG_N04 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N05
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N05,
                 S.CO_SIORG AS CO_SIORG_N05,
                 S.DS_SIORG AS DS_SIORG_N05
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S5 ON S5.ID_SIORG_N05 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N06
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N06,
                 S.CO_SIORG AS CO_SIORG_N06,
                 S.DS_SIORG AS DS_SIORG_N06
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S6 ON S6.ID_SIORG_N06 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N07
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N07,
                 S.CO_SIORG AS CO_SIORG_N07,
                 S.DS_SIORG AS DS_SIORG_N07
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S7 ON S7.ID_SIORG_N07 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N08
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N08,
     S.CO_SIORG AS CO_SIORG_N08,
     S.DS_SIORG AS DS_SIORG_N08
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S8 ON S8.ID_SIORG_N08 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N09
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N09,
     S.CO_SIORG AS CO_SIORG_N09,
     S.DS_SIORG AS DS_SIORG_N09
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S9 ON S9.ID_SIORG_N09 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N10
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N10,
     S.CO_SIORG AS CO_SIORG_N10,
     S.DS_SIORG AS DS_SIORG_N10
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S10 ON S10.ID_SIORG_N10 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N11
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N11,
     S.CO_SIORG AS CO_SIORG_N11,
     S.DS_SIORG AS DS_SIORG_N11
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S11 ON S11.ID_SIORG_N11 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N12
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N12,
     S.CO_SIORG AS CO_SIORG_N12,
     S.DS_SIORG AS DS_SIORG_N12
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S12 ON S12.ID_SIORG_N12 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N13
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N13,
     S.CO_SIORG AS CO_SIORG_N13,
     S.DS_SIORG AS DS_SIORG_N13
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S13 ON S13.ID_SIORG_N13 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N14
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N14,
     S.CO_SIORG AS CO_SIORG_N14,
     S.DS_SIORG AS DS_SIORG_N14
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S14 ON S14.ID_SIORG_N14 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N15
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N15,
     S.CO_SIORG AS CO_SIORG_N15,
     S.DS_SIORG AS DS_SIORG_N15
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S15 ON S15.ID_SIORG_N15 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N16
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N16,
     S.CO_SIORG AS CO_SIORG_N16,
     S.DS_SIORG AS DS_SIORG_N16
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S16 ON S16.ID_SIORG_N16 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N17
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N17,
     S.CO_SIORG AS CO_SIORG_N17,
     S.DS_SIORG AS DS_SIORG_N17
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S17 ON S17.ID_SIORG_N17 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N18
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N18,
     S.CO_SIORG AS CO_SIORG_N18,
     S.DS_SIORG AS DS_SIORG_N18
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S18 ON S18.ID_SIORG_N18 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N19
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N19,
     S.CO_SIORG AS CO_SIORG_N19,
     S.DS_SIORG AS DS_SIORG_N19
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S19 ON S19.ID_SIORG_N19 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG2016.WV_SIORG_N20
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N20,
     S.CO_SIORG AS CO_SIORG_N20,
     S.DS_SIORG AS DS_SIORG_N20
FROM DBP_33393_DWTG_2016.WD_SIORG S
JOIN DBP_33393_DWTG_2016.WD_SIORG AS S20 ON S20.ID_SIORG_N20 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;


4. Criação das tabelas abaixo no ambiente de Produção de 2016

CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N01 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N01 INT , CO_SIORG_N01 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N01 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N01 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N02 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N02 INT , CO_SIORG_N02 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N02 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N02 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N03 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N03 INT , CO_SIORG_N03 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N03 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N03 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N04 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N04 INT , CO_SIORG_N04 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N04 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N04 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N05 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N05 INT , CO_SIORG_N05 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N05 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N05 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N06 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N06 INT , CO_SIORG_N06 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N06 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N06 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N07 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N07 INT , CO_SIORG_N07 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N07 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N07 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N08 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N08 INT , CO_SIORG_N08 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N08 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N08 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N09 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N09 INT , CO_SIORG_N09 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N09 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N09 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N10 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N10 INT , CO_SIORG_N10 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N10 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N10 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N11 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N11 INT , CO_SIORG_N11 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N11 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N11 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N12 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N12 INT , CO_SIORG_N12 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N12 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N12 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N13 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N13 INT , CO_SIORG_N13 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N13 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N13 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N14 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N14 INT , CO_SIORG_N14 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N14 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N14 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N15 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N15 INT , CO_SIORG_N15 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N15 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N15 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N16 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N16 INT , CO_SIORG_N16 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N16 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N16 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N17 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N17 INT , CO_SIORG_N17 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N17 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N17 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N18 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N18 INT , CO_SIORG_N18 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N18 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N18 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N19 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N19 INT , CO_SIORG_N19 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N19 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N19 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG_2016.WV_SIORG_N20 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N20 INT , CO_SIORG_N20 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N20 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N20 ) ;

--mariox**FEITO EM 08/06/2016**********************************************************************************************************************
2 Atividades

Favor:

1) Publicar a tabela WD_ALINEA_NARE

Banco Origem: dbh_33393_dwtg_stg
Banco Destino: dbh_33393_dwtg

delete from DBH_33393_DWTG.WD_ALINEA_NARE;
INSERt into DBH_33393_DWTG.WD_ALINEA_NARE select * from DBH_33393_DWTG_STG.WD_ALINEA_NARE;

--mariox**FEITO EM 08/06/2016**********************************************************************************************************************
Assunto: [DWTG] Publicação do SIORG no ambiente de Produção de 2015
De: Samuel Sales Pinheiro Wanderley <samuel.wanderley@serpro.gov.br> 
Data: 07/06/2016 14:45:22
Destinatário: akemi.adachi@serpro.gov.br 

Akemi,

Segue o texto do ticket referente ao ambiente de produção de 2015.


1. Criar/alterar as seguintes estruturas abaixo:

ALTER TABLE ORACLE_33393_DWTG.WD_UG ADD ID_UO INTEGER NOT NULL DEFAULT -9;

ALTER TABLE DBP_33393_DWTG.WD_UG ADD ID_UO INTEGER NOT NULL DEFAULT -9;

ALTER TABLE ORACLE_33393_DWTG.WD_ORGAO ADD ID_SIORG INTEGER NOT NULL DEFAULT -9;

ALTER TABLE DBP_33393_DWTG.WD_ORGAO ADD ID_SIORG INTEGER NOT NULL DEFAULT -9;

CREATE MULTISET TABLE DBP_33393_DWTG.WD_SIORG
(
    ID_SIORG        INTEGER            NOT NULL    DEFAULT -9,
    CO_SIORG        VARCHAR(6)        NOT NULL,
    DS_SIORG        VARCHAR(110)    NOT NULL,
    ID_SIORG_N01    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N02    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N03    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N04    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N05    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N06    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N07    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N08    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N09    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N10    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N11    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N12    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N13    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N14    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N15    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N16    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N17    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N18    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N19    INTEGER            NOT NULL    DEFAULT -9,
    ID_SIORG_N20    INTEGER            NOT NULL    DEFAULT -9,
    DT_CARGA_C        INTEGER            NOT NULL,
    AN_EXERCICIO_C    SMALLINT        NOT NULL,   
    NO_ORIGEM_C        VARCHAR(50)        NOT NULL,   
    IN_OPERACAO_C    BYTEINT            NOT NULL
) UNIQUE PRIMARY INDEX (ID_SIORG)
;


2. Realizar a publicação das tabelas abaixo do banco de carga de 2015 (ORACLE_33393_DWTG) para o banco de produção de 2015 (DBP_33393_DWTG).

- WD_UG
- WD_ORGAO
- WD_SIORG

delete from DBP_33393_DWTG.WD_UG;
INSERt into DBP_33393_DWTG.WD_UG select * from ORACLE_33393_DWTG.WD_UG;

delete from DBP_33393_DWTG.WD_ORGAO;
INSERt into DBP_33393_DWTG.WD_ORGAO select * from ORACLE_33393_DWTG.WD_ORGAO;

delete from DBP_33393_DWTG.WD_SIORG;
INSERt into DBP_33393_DWTG.WD_SIORG select * from ORACLE_33393_DWTG.WD_SIORG;



3. Realizar a criacao das views no ambiente MSTRPRODDWTG para serem mapeadas na ferramenta Microstrategy.

REPLACE VIEW MSTRPRODDWTG.WD_SIORG
AS
LOCKING ROW FOR ACCESS
SELECT * FROM DBP_33393_DWTG.WD_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N01
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N01,
                 S.CO_SIORG AS CO_SIORG_N01,
                 S.DS_SIORG AS DS_SIORG_N01
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S1 ON S1.ID_SIORG_N01 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N02
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N02,
                 S.CO_SIORG AS CO_SIORG_N02,
                 S.DS_SIORG AS DS_SIORG_N02
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S2 ON S2.ID_SIORG_N02 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N03
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N03,
                 S.CO_SIORG AS CO_SIORG_N03,
                 S.DS_SIORG AS DS_SIORG_N03
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S3 ON S3.ID_SIORG_N03 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N04
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N04,
                 S.CO_SIORG AS CO_SIORG_N04,
                 S.DS_SIORG AS DS_SIORG_N04
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S4 ON S4.ID_SIORG_N04 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N05
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N05,
                 S.CO_SIORG AS CO_SIORG_N05,
                 S.DS_SIORG AS DS_SIORG_N05
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S5 ON S5.ID_SIORG_N05 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N06
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N06,
                 S.CO_SIORG AS CO_SIORG_N06,
                 S.DS_SIORG AS DS_SIORG_N06
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S6 ON S6.ID_SIORG_N06 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N07
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N07,
                 S.CO_SIORG AS CO_SIORG_N07,
                 S.DS_SIORG AS DS_SIORG_N07
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S7 ON S7.ID_SIORG_N07 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N08
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N08,
     S.CO_SIORG AS CO_SIORG_N08,
     S.DS_SIORG AS DS_SIORG_N08
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S8 ON S8.ID_SIORG_N08 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N09
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N09,
     S.CO_SIORG AS CO_SIORG_N09,
     S.DS_SIORG AS DS_SIORG_N09
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S9 ON S9.ID_SIORG_N09 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N10
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N10,
     S.CO_SIORG AS CO_SIORG_N10,
     S.DS_SIORG AS DS_SIORG_N10
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S10 ON S10.ID_SIORG_N10 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N11
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N11,
     S.CO_SIORG AS CO_SIORG_N11,
     S.DS_SIORG AS DS_SIORG_N11
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S11 ON S11.ID_SIORG_N11 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N12
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N12,
     S.CO_SIORG AS CO_SIORG_N12,
     S.DS_SIORG AS DS_SIORG_N12
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S12 ON S12.ID_SIORG_N12 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N13
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N13,
     S.CO_SIORG AS CO_SIORG_N13,
     S.DS_SIORG AS DS_SIORG_N13
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S13 ON S13.ID_SIORG_N13 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N14
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N14,
     S.CO_SIORG AS CO_SIORG_N14,
     S.DS_SIORG AS DS_SIORG_N14
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S14 ON S14.ID_SIORG_N14 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N15
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N15,
     S.CO_SIORG AS CO_SIORG_N15,
     S.DS_SIORG AS DS_SIORG_N15
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S15 ON S15.ID_SIORG_N15 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N16
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N16,
     S.CO_SIORG AS CO_SIORG_N16,
     S.DS_SIORG AS DS_SIORG_N16
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S16 ON S16.ID_SIORG_N16 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N17
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N17,
     S.CO_SIORG AS CO_SIORG_N17,
     S.DS_SIORG AS DS_SIORG_N17
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S17 ON S17.ID_SIORG_N17 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N18
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N18,
     S.CO_SIORG AS CO_SIORG_N18,
     S.DS_SIORG AS DS_SIORG_N18
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S18 ON S18.ID_SIORG_N18 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N19
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N19,
     S.CO_SIORG AS CO_SIORG_N19,
     S.DS_SIORG AS DS_SIORG_N19
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S19 ON S19.ID_SIORG_N19 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;

REPLACE VIEW MSTRPRODDWTG.WV_SIORG_N20
AS
LOCKING ROW FOR ACCESS
SELECT S.ID_SIORG AS  ID_SIORG_N20,
     S.CO_SIORG AS CO_SIORG_N20,
     S.DS_SIORG AS DS_SIORG_N20
FROM DBP_33393_DWTG.WD_SIORG S
JOIN DBP_33393_DWTG.WD_SIORG AS S20 ON S20.ID_SIORG_N20 = S.ID_SIORG
GROUP BY S.ID_SIORG, S.CO_SIORG, S.DS_SIORG;


4. Criação das tabelas abaixo no ambiente de Produção de 2015 para possibilitar o mapeamento na ferramenta Microstrategy

CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N01 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N01 INT , CO_SIORG_N01 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N01 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N01 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N02 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N02 INT , CO_SIORG_N02 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N02 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N02 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N03 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N03 INT , CO_SIORG_N03 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N03 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N03 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N04 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N04 INT , CO_SIORG_N04 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N04 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N04 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N05 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N05 INT , CO_SIORG_N05 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N05 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N05 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N06 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N06 INT , CO_SIORG_N06 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N06 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N06 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N07 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N07 INT , CO_SIORG_N07 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N07 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N07 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N08 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N08 INT , CO_SIORG_N08 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N08 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N08 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N09 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N09 INT , CO_SIORG_N09 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N09 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N09 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N10 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N10 INT , CO_SIORG_N10 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N10 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N10 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N11 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N11 INT , CO_SIORG_N11 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N11 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N11 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N12 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N12 INT , CO_SIORG_N12 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N12 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N12 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N13 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N13 INT , CO_SIORG_N13 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N13 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N13 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N14 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N14 INT , CO_SIORG_N14 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N14 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N14 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N15 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N15 INT , CO_SIORG_N15 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N15 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N15 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N16 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N16 INT , CO_SIORG_N16 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N16 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N16 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N17 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N17 INT , CO_SIORG_N17 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N17 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N17 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N18 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N18 INT , CO_SIORG_N18 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N18 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N18 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N19 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N19 INT , CO_SIORG_N19 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N19 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N19 ) ;
CREATE MULTISET TABLE DBP_33393_DWTG.WV_SIORG_N20 , NO FALLBACK , NO BEFORE JOURNAL , NO AFTER JOURNAL , CHECKSUM = DEFAULT , DEFAULT MERGEBLOCKRATIO ( ID_SIORG_N20 INT , CO_SIORG_N20 VARCHAR ( 6 ) CHARACTER SET LATIN NOT CS , DS_SIORG_N20 VARCHAR ( 110 ) CHARACTER SET LATIN NOT CS ) PRIMARY INDEX ( ID_SIORG_N20 ) ;

--criado em 10/06/2016 *****************************************************************************************************************************************
===================
--CRIANDO METADADOS NO BANCO PMD02 para TESTE  - MODELO PARA CRIAÇÃO DE TABLESPACE, USUÁRIO E PRIVILÉGIOS DE USUÁRIOS
-----------------------------------------------------------CRIANDO TABLESPACE COM 1 DATAFILES ----------------------------------------------------------------
ANDRÉ AUTORIZOU  PROVISORIAMENTE PARA TESTE - DEPOIS REMOVER MÁRIO

CREATE TABLESPACE TB_07651_ADUANEIRO_DAT_01 DATAFILE '+DG_PMD02_01/pmd02/datafile/tb_07651_aduaneiro_dat_01.001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 2048M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------

create user ADUANEIRO IDENTIFIED by "aduaneiro" default tablespace "TB_07651_ADUANEIRO_DAT_01";

----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to ADUANEIRO;

--feito 13/06/2016********************************************************************************************************************************************************
2 Atividades

Favor realizar a publicação das seguintes tabelas:

- WD_DOCUMENTO
- WD_DOC_NE
- WF_DOCUMENTO
- WF_DOC_NE

Banco de Origem: dbh_33393_dwtg_stg
Banco de Destino: dbh_33393_dwtg

Obrigado.

delete from dbh_33393_dwtg.WD_DOCUMENTO;
INSERt into dbh_33393_dwtg.WD_DOCUMENTO select * from dbh_33393_dwtg_stg.WD_DOCUMENTO;

delete from dbh_33393_dwtg.WD_DOC_NE;
INSERt into dbh_33393_dwtg.WD_DOC_NE select * from dbh_33393_dwtg_stg.WD_DOC_NE;

delete from dbh_33393_dwtg.WF_DOCUMENTO;
INSERt into dbh_33393_dwtg.WF_DOCUMENTO select * from dbh_33393_dwtg_stg.WF_DOCUMENTO;

delete from dbh_33393_dwtg.WF_DOC_NE;
INSERt into dbh_33393_dwtg.WF_DOC_NE select * from dbh_33393_dwtg_stg.WF_DOC_NE;


--feito 13/06/2016********************************************************************************************************************************************************2 Atividades

Favor:

- Realizar a publicação da tabela WD_SIORG do banco de Carga de 2015 (ORACLE_33393_DWTG) para o banco de Produção de 2015 (DBP_33393_DWTG).

- Realizar a publicação da tabela WD_SIORG do banco de Carga de 2016 (DBC_33393_DWTG_2016) para o banco de Produção de 2016 (DBP_33393_DWTG_2016).

Obrigada.

delete from DBP_33393_DWTG.WD_SIORG;
INSERt into DBP_33393_DWTG.WD_SIORG select * from ORACLE_33393_DWTG.WD_SIORG;

delete from DBP_33393_DWTG_2016.WD_SIORG;
INSERt into DBP_33393_DWTG_2016.WD_SIORG select * from DBC_33393_DWTG_2016.WD_SIORG;


--feito 14/06/2016********************************************************************************************************************************************************2 Atividades
--------------------------------------------------------------------------------------------------------------------------------------------------
-- USUÁRIO SOMENTE LEITURA 
create user ADMSFMDPRO1 IDENTIFIED by "456sptfp4321bsa" default tablespace "TB_07650_SFMDPRO_DAT_01";

----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
select 
'grant select on SFMDPRO.'
||table_name||
' to ADMSFMDPRO1;' 
from dba_tables where owner='SFMDPRO';

grant connect, select any table to ADMSFMDPRO1;







--***feito 16/06/2016***************************************************************************************************************************

2 Atividades

Favor:

1) Favor publicar a tabela WF_ACOM_ORCAMENTARIO_LOGA

Banco Origem: dbh_33393_dwtg_stg
Banco Destino: dbh_33393_dwtg

delete from dbh_33393_dwtg.WF_ACOM_ORCAMENTARIO_LOGA;
INSERt into dbh_33393_dwtg.WF_ACOM_ORCAMENTARIO_LOGA select * from dbh_33393_dwtg_stg.WF_ACOM_ORCAMENTARIO_LOGA;



--***feito 17/06/2016***************************************************************************************************************************
-- falta coletar estatística

Por favor, criar um ticket para a SUPCD realizar a atualização das estruturas de 2015, para possibilitar a integração com o exercício de 2016.
Obrigado.

1. Criação das seguintes tabelas:

--WD_CATEGORIA_ECONOMICA2_NARE
CREATE MULTISET TABLE DBH_33393_DWTG.WD_CATEGORIA_ECONOMICA2_NARE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_CATEGORIA_ECONOMICA2_NARE BYTEINT NOT NULL,
      NO_CATEGORIA_ECONOMICA2_NARE VARCHAR(45) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      AN_EXERCICIO_C SMALLINT NOT NULL,
      DT_CARGA_C INTEGER NOT NULL,
      NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      IN_OPERACAO_C BYTEINT NOT NULL
      )
UNIQUE PRIMARY INDEX ( ID_CATEGORIA_ECONOMICA2_NARE );

--WD_ORIGEM_RECEITA2_NARE
CREATE MULTISET TABLE DBH_33393_DWTG.WD_ORIGEM_RECEITA2_NARE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_CATEGORIA_ECONOMICA2_NARE BYTEINT NOT NULL,
      ID_ORIGEM_RECEITA2_NARE BYTEINT NOT NULL,
      CO_ORIGEM_RECEITA2_NARE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      NO_ORIGEM_RECEITA2_NARE VARCHAR(45) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      AN_EXERCICIO_C SMALLINT NOT NULL,
      DT_CARGA_C INTEGER NOT NULL,
      NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      IN_OPERACAO_C BYTEINT NOT NULL)
UNIQUE PRIMARY INDEX WD_ORIGEM_RECE_UPI_INDX_176245 ( ID_CATEGORIA_ECONOMICA2_NARE ,
ID_ORIGEM_RECEITA2_NARE );

--WD_ESPECIE_RECEITA2_NARE
CREATE MULTISET TABLE DBH_33393_DWTG.WD_ESPECIE_RECEITA2_NARE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_CATEGORIA_ECONOMICA2_NARE BYTEINT NOT NULL,
      ID_ORIGEM_RECEITA2_NARE BYTEINT NOT NULL,
      ID_ESPECIE_RECEITA2_NARE BYTEINT NOT NULL,
      CO_ESPECIE_RECEITA2_NARE VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      NO_ESPECIE_RECEITA2_NARE VARCHAR(45) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      AN_EXERCICIO_C SMALLINT NOT NULL,
      DT_CARGA_C INTEGER NOT NULL,
      NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      IN_OPERACAO_C BYTEINT NOT NULL)    
UNIQUE PRIMARY INDEX ( ID_CATEGORIA_ECONOMICA2_NARE ,ID_ORIGEM_RECEITA2_NARE ,
ID_ESPECIE_RECEITA2_NARE );

--WD_RUBRICA2_NARE
CREATE MULTISET TABLE DBH_33393_DWTG.WD_RUBRICA2_NARE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_CATEGORIA_ECONOMICA2_NARE BYTEINT NOT NULL,
      ID_ORIGEM_RECEITA2_NARE BYTEINT NOT NULL,
      ID_ESPECIE_RECEITA2_NARE BYTEINT NOT NULL,
      ID_RUBRICA2_NARE BYTEINT NOT NULL,
      CO_RUBRICA2_NARE VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      NO_RUBRICA2_NARE VARCHAR(45) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      AN_EXERCICIO_C SMALLINT NOT NULL,
      DT_CARGA_C INTEGER NOT NULL,
      NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      IN_OPERACAO_C BYTEINT NOT NULL)
UNIQUE PRIMARY INDEX ( ID_CATEGORIA_ECONOMICA2_NARE ,ID_ORIGEM_RECEITA2_NARE ,
ID_ESPECIE_RECEITA2_NARE ,ID_RUBRICA2_NARE );

--WD_ALINEA2_NARE
CREATE MULTISET TABLE DBH_33393_DWTG.WD_ALINEA2_NARE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_CATEGORIA_ECONOMICA2_NARE BYTEINT NOT NULL,
      ID_ORIGEM_RECEITA2_NARE BYTEINT NOT NULL,
      ID_ESPECIE_RECEITA2_NARE BYTEINT NOT NULL,
      ID_RUBRICA2_NARE BYTEINT NOT NULL,
      ID_ALINEA2_NARE BYTEINT NOT NULL,
      CO_ALINEA2_NARE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      CO_ALINEA2_COMPLETO_NARE VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      NO_ALINEA2_NARE VARCHAR(45) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      AN_EXERCICIO_C SMALLINT NOT NULL,
      DT_CARGA_C INTEGER NOT NULL,
      NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      IN_OPERACAO_C BYTEINT NOT NULL)
UNIQUE PRIMARY INDEX ( ID_CATEGORIA_ECONOMICA2_NARE ,ID_ORIGEM_RECEITA2_NARE ,
ID_ESPECIE_RECEITA2_NARE ,ID_RUBRICA2_NARE ,ID_ALINEA2_NARE);

--WD_SUBALINEA2_NARE
CREATE MULTISET TABLE DBH_33393_DWTG.WD_SUBALINEA2_NARE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_CATEGORIA_ECONOMICA2_NARE BYTEINT NOT NULL,
      ID_ORIGEM_RECEITA2_NARE BYTEINT NOT NULL,
      ID_ESPECIE_RECEITA2_NARE BYTEINT NOT NULL,
      ID_RUBRICA2_NARE BYTEINT NOT NULL,
      ID_ALINEA2_NARE BYTEINT NOT NULL,
      ID_SUBALINEA2_NARE BYTEINT NOT NULL,
      CO_SUBALINEA2_NARE VARCHAR(7) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,    
      NO_SUBALINEA2_NARE VARCHAR(45) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      AN_EXERCICIO_C SMALLINT NOT NULL,
      DT_CARGA_C INTEGER NOT NULL,
      NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      IN_OPERACAO_C BYTEINT NOT NULL)
UNIQUE PRIMARY INDEX ( ID_CATEGORIA_ECONOMICA2_NARE ,ID_ORIGEM_RECEITA2_NARE ,
ID_ESPECIE_RECEITA2_NARE ,ID_RUBRICA2_NARE ,ID_ALINEA2_NARE, ID_SUBALINEA2_NARE );

--WD_NATUREZA_RECEITA2
CREATE MULTISET TABLE DBH_33393_DWTG.WD_NATUREZA_RECEITA2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_CATEGORIA_ECONOMICA2_NARE BYTEINT NOT NULL,
      ID_ORIGEM_RECEITA2_NARE BYTEINT NOT NULL,
      ID_ESPECIE_RECEITA2_NARE BYTEINT NOT NULL,
      ID_RUBRICA2_NARE BYTEINT NOT NULL,
      ID_ALINEA2_NARE BYTEINT NOT NULL,
      ID_SUBALINEA2_NARE BYTEINT NOT NULL,
      ID_TIPO_RECEITA2_NARE BYTEINT NOT NULL,
      CO_NATUREZA_RECEITA2 VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      NO_NATUREZA_RECEITA2 VARCHAR(45) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      AN_EXERCICIO_C SMALLINT NOT NULL,
      DT_CARGA_C INTEGER NOT NULL,
      NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      IN_OPERACAO_C BYTEINT NOT NULL)
UNIQUE PRIMARY INDEX ( ID_CATEGORIA_ECONOMICA2_NARE ,ID_ORIGEM_RECEITA2_NARE ,
ID_ESPECIE_RECEITA2_NARE ,ID_RUBRICA2_NARE ,ID_ALINEA2_NARE ,ID_SUBALINEA2_NARE, ID_TIPO_RECEITA2_NARE );

--WD_TIPO_RECEITA2_NARE
CREATE MULTISET TABLE DBH_33393_DWTG.WD_TIPO_RECEITA2_NARE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_TIPO_RECEITA2_NARE BYTEINT NOT NULL,
      NO_TIPO_RECEITA2 VARCHAR(45) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      AN_EXERCICIO_C SMALLINT NOT NULL,
      DT_CARGA_C INTEGER NOT NULL,
      NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      IN_OPERACAO_C BYTEINT NOT NULL
      )
UNIQUE PRIMARY INDEX ( ID_TIPO_RECEITA2_NARE );


2. Alteração das tabelas abaixo:

ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EE01 ADD ID_CATEGORIA_ECONOMICA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EE01 ADD ID_ORIGEM_RECEITA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EE01 ADD ID_ESPECIE_RECEITA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EE01 ADD ID_RUBRICA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EE01 ADD ID_ALINEA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EE01 ADD ID_SUBALINEA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EE01 ADD ID_TIPO_RECEITA2_NARE BYTEINT;

ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EP01 ADD ID_CATEGORIA_ECONOMICA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EP01 ADD ID_ORIGEM_RECEITA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EP01 ADD ID_ESPECIE_RECEITA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EP01 ADD ID_RUBRICA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EP01 ADD ID_ALINEA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EP01 ADD ID_SUBALINEA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EP01 ADD ID_TIPO_RECEITA2_NARE BYTEINT;

ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EP20 ADD ID_CATEGORIA_ECONOMICA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EP20 ADD ID_ORIGEM_RECEITA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EP20 ADD ID_ESPECIE_RECEITA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EP20 ADD ID_RUBRICA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EP20 ADD ID_ALINEA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EP20 ADD ID_SUBALINEA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_EP20 ADD ID_TIPO_RECEITA2_NARE BYTEINT;

ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_LRF1 ADD ID_CATEGORIA_ECONOMICA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_LRF1 ADD ID_ORIGEM_RECEITA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_LRF1 ADD ID_ESPECIE_RECEITA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_LRF1 ADD ID_RUBRICA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_LRF1 ADD ID_ALINEA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_LRF1 ADD ID_SUBALINEA2_NARE BYTEINT;
ALTER TABLE DBH_33393_DWTG.WF_LANCAMENTO_LRF1 ADD ID_TIPO_RECEITA2_NARE BYTEINT;

3. Publicação das tabelas abaixo a partir do ambiente de Stage de 2015 (DBH_33393_DWTG_STG) para o ambiente de Homologação de 2015 (DBH_33393_DWTG).
- WD_ALINEA2_NARE
- WD_CATEGORIA_ECONOMICA2_NARE
- WD_ESPECIE_RECEITA2_NARE
- WD_NATUREZA_RECEITA2
- WD_ORIGEM_RECEITA2_NARE
- WD_RUBRICA2_NARE
- WD_SUBALINEA2_NARE
- WD_TIPO_RECEITA2_NARE
- WD_DOCUMENTO
- WD_DOC_NE
- WF_DOC_NE

4. Com a alteração da estrutura, será necessária a recriação das seguintes views no ambiente MSTRHOMDWTG
- WF_LANCAMENTO_EP01
- WF_LANCAMENTO_EP20
- WF_LANCAMENTO_LRF1

delete from dbh_33393_dwtg.WD_ALINEA2_NARE;
INSERt into dbh_33393_dwtg.WD_ALINEA2_NARE select * from dbh_33393_dwtg_stg.WD_ALINEA2_NARE;

delete from dbh_33393_dwtg.WD_CATEGORIA_ECONOMICA2_NARE;
INSERt into dbh_33393_dwtg.WD_CATEGORIA_ECONOMICA2_NARE select * from dbh_33393_dwtg_stg.WD_CATEGORIA_ECONOMICA2_NARE;

delete from dbh_33393_dwtg.WD_ESPECIE_RECEITA2_NARE;
INSERt into dbh_33393_dwtg.WD_ESPECIE_RECEITA2_NARE select * from dbh_33393_dwtg_stg.WD_ESPECIE_RECEITA2_NARE;

delete from dbh_33393_dwtg.WD_NATUREZA_RECEITA2;
INSERt into dbh_33393_dwtg.WD_NATUREZA_RECEITA2 select * from dbh_33393_dwtg_stg.WD_NATUREZA_RECEITA2;

delete from dbh_33393_dwtg.WD_ORIGEM_RECEITA2_NARE;
INSERt into dbh_33393_dwtg.WD_ORIGEM_RECEITA2_NARE select * from dbh_33393_dwtg_stg.WD_ORIGEM_RECEITA2_NARE;

delete from dbh_33393_dwtg.WD_RUBRICA2_NARE;
INSERt into dbh_33393_dwtg.WD_RUBRICA2_NARE select * from dbh_33393_dwtg_stg.WD_RUBRICA2_NARE;

delete from dbh_33393_dwtg.WD_SUBALINEA2_NARE;
INSERt into dbh_33393_dwtg.WD_SUBALINEA2_NARE select * from dbh_33393_dwtg_stg.WD_SUBALINEA2_NARE;

delete from dbh_33393_dwtg.WD_TIPO_RECEITA2_NARE;
INSERt into dbh_33393_dwtg.WD_TIPO_RECEITA2_NARE select * from dbh_33393_dwtg_stg.WD_TIPO_RECEITA2_NARE;

delete from dbh_33393_dwtg.WD_DOCUMENTO;
INSERt into dbh_33393_dwtg.WD_DOCUMENTO select * from dbh_33393_dwtg_stg.WD_DOCUMENTO;

delete from dbh_33393_dwtg.WD_DOCUMENTO;
INSERt into dbh_33393_dwtg.WD_DOCUMENTO select * from dbh_33393_dwtg_stg.WD_DOCUMENTO;

delete from dbh_33393_dwtg.WD_DOC_NE;
INSERt into dbh_33393_dwtg.WD_DOC_NE select * from dbh_33393_dwtg_stg.WD_DOC_NE;

delete from dbh_33393_dwtg.WF_DOC_NE;
INSERt into dbh_33393_dwtg.WF_DOC_NE select * from dbh_33393_dwtg_stg.WF_DOC_NE;


WD_CATEGORIA_ECONOMICA2_NARE
WD_ORIGEM_RECEITA2_NARE
WD_ESPECIE_RECEITA2_NARE
WD_RUBRICA2_NARE
WD_ALINEA2_NARE
WD_SUBALINEA2_NARE
WD_NATUREZA_RECEITA2
WD_TIPO_RECEITA2_NARE
WD_SIORG
WD_EVENTO_COMPLEMENTAR
WF_ITEM_CENTRO_CUSTO
WD_EVENTO_COMPLEMENTAR


====COLETA POR TABELA
select 'collect statistics on dbpro_33393_dwtg.' || trim(tablename) || ' column (' || trim(columnname) || ');'
from dbc.columnsv 
where databasename = 'dbpro_33393_dwtg'
and tablename = 'WD_EVENTO_COMPLEMENTAR'
and columnname not like all ('VA%','QT%');



--=====================================================================================================================================
--feito 09/05********************************************************************************************************************************
(11:17:50) Fernanda da Silva Alves: Banco: bimd004
Domínio: pc961ddom
(11:18:02) Fernanda da Silva Alves: apagar o conteudo mas antes realizar backup​

create user PC961DDOM_BACKUP_20160509 IDENTIFIED by "pc961ddom" default tablespace "TB_07653_PC961DDOM_DAT_01";

nohup impdp dwpub/dwpubmd@bimd004 directory=DWPUB_DATAPUMP network_link=DBL_BIMD004 schemas=PC961DDOM remap_schema=PC961DDOM:PC961DDOM_BACKUP_20160509 nologfile=y > importmetadados20160509.log &

--TESTAR DBL-LINK PARA para fazer impdb
SQL> select name from v$database@DBL_BIMD004;


select count(*) from dba_objects where owner = 'PC961DDOM';
--=================================================================================
11:30:49 DWPUB:bimd004 > select name from v$database@DBL_BIMD004;

NAME
---------------------------
BIMD004

Elapsed: 00:00:00.10
11:32:28 DWPUB:bimd004 > select count(*) from dba_objects where owner = 'PC961DDOM';

  COUNT(*)
----------
       807

SQL>  select count(*) from dba_objects where owner = 'PC961DDOM_BACKUP_20160509';

  COUNT(*)
----------
       807

--feito 20/06/2016 - 14:32 finalizou*******************************************************************************************************************
(14:31:32) Fernanda da Silva Alves: copiar de:
dwmd35 - esquema: ​pctrsinespdes910
PCTRSINESPDES910
TB_PCTRDESMD_DAT_01
Copiar para:
Banco bimd004 - 07996 - PC961DANLSREP
TB_07996_PC961DANLSREP_DAT_01


## =====================================================================================================================================
CREATE TABLESPACE TB_07996_PC961DANLSREP_DAT_01 DATAFILE '+DG_BSA105/d_07996_pwc/bimd004/tb_07996_pc961danlsrep_dat_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD004 PARA O TABLESPACE CRIADO----------------------------------------
create user PC961DANLSREP IDENTIFIED by "456pctrdes321bsa" default tablespace "TB_07996_PC961DANLSREP_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961DANLSREP;

=====================================================================================================================================================
TB_07996_PC961DANLSREP_DAT_01


Enter value for nome_tablespace: TB_07996_PC961DANLSREP_DAT_01

						    Total	  Total       Ocupado	      Livre  (%)     Largest
TABLESPACE				  Extensivel (Mb)  Alocado (Mb) 	 (Mb)	      (Mb)   Livre	(Mb) Fragmentacao
---------------------------------------- ---------------- ------------- ------------- ------------- ------ --------- ------------
TB_07996_PC961DANLSREP_DAT_01			 32,767.0	1,024.0 	  1.0	    1,023.0   99.9   1,023.0	      1.0
					 ---------------- ------------- ------------- -------------
sum						 32,767.0	1,024.0 	  1.0	    1,023.0


=========================================================================================================================================================
--PARA O USUÁRIO ANTERIOR
alter user PCTRSINESPDES910 account lock;

TB_PCTRDESMD_DAT_01

nohup impdp dwpub/dwpubmd@bimd004 directory=DWPUB_DATAPUMP network_link=DBL_DWMD35 schemas=PCTRSINESPDES910 remap_schema=PCTRSINESPDES910:PC961DANLSREP remap_tablespace=TB_PCTRDESMD_DAT_01:TB_07996_PC961DANLSREP_DAT_01 nologfile=y > importmetadados20160620.log &

-- TESTAR A QUANTIDADE DO OBJETOS DE CADA SCHEMA.========================
select count(*) from dba_objects where owner = 'PCTRSINESPDES910';

14:08:29 DWPUB:dwmd35 > select count(*) from dba_objects where owner = 'PCTRSINESPDES910';

  COUNT(*)
----------
       742

select count(*) from dba_objects where owner = 'PC961DANLSREP'

14:10:54 DWPUB:bimd004 > select count(*) from dba_objects where owner = 'PC961DANLSREP';

  COUNT(*)
----------
	 0

SQL> select count(*) from dba_objects where owner = 'PC961DANLSREP';

  COUNT(*)
----------
       742
       
--feito 20/06/2016 - 14:34 finalizou*******************************************************************************************************************
(14:31:32) Fernanda da Silva Alves: copiar de:
dwmd35 - esquema: ​pctrsigepeintdes910
PCTRSIGEPEINTDES910
TB_PCTRDESMD_DAT_01

Copiar para:
Banco bimd004 - 07613 - PC961DSGPEREP
TB_07613_PC961DSGPEREP_DAT_01


5-PC961DSGPEREP
## =====================================================================================================================================
CREATE TABLESPACE TB_07613_PC961DSGPEREP_DAT_01 DATAFILE '+DG_BSA105/d_07613_pwc/bimd004/tb_07613_pc961dsgperep_dat_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD004 PARA O TABLESPACE CRIADO----------------------------------------
create user PC961DSGPEREP IDENTIFIED by "456pctrdes321bsa" default tablespace "TB_07613_PC961DSGPEREP_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961DSGPEREP;


Enter value for nome_tablespace: TB_07613_PC961DSGPEREP_DAT_01

						    Total	  Total       Ocupado	      Livre  (%)     Largest
TABLESPACE				  Extensivel (Mb)  Alocado (Mb) 	 (Mb)	      (Mb)   Livre	(Mb) Fragmentacao
---------------------------------------- ---------------- ------------- ------------- ------------- ------ --------- ------------
TB_07613_PC961DSGPEREP_DAT_01			 32,767.0	1,024.0 	  1.0	    1,023.0   99.9   1,023.0	      1.0
					 ---------------- ------------- ------------- -------------
sum						 32,767.0	1,024.0 	  1.0	    1,023.0


=========================================================================================================================================================
--PARA O USUÁRIO ANTERIOR
14:36:54 DWPUB:dwmd35 > alter user PCTRSIGEPEINTDES910 account lock;

TB_PCTRDESMD_DAT_01

nohup impdp dwpub/dwpubmd@bimd004 directory=DWPUB_DATAPUMP network_link=DBL_DWMD35 schemas=PCTRSIGEPEINTDES910 remap_schema=PCTRSIGEPEINTDES910:PC961DSGPEREP remap_tablespace=TB_PCTRDESMD_DAT_01:TB_07613_PC961DSGPEREP_DAT_01 nologfile=y > importmetadados20160620-01.log &

-- TESTAR A QUANTIDADE DO OBJETOS DE CADA SCHEMA.========================
select count(*) from dba_objects where owner = 'PCTRSINESPDES910';

14:44:33 DWPUB:dwmd35 > select count(*) from dba_objects where owner = 'PCTRSIGEPEINTDES910';

  COUNT(*)
----------
       742

select count(*) from dba_objects where owner = 'PC961DSGPEREP'

14:10:54 DWPUB:bimd004 > select count(*) from dba_objects where owner = 'PC961DSGPEREP';

  COUNT(*)
----------
	 0

SQL> select count(*) from dba_objects where owner = 'PC961DSGPEREP';

  COUNT(*)
----------14:54:45 DWPUB:bimd004 > select count(*) from dba_objects where owner = 'PC961DSGPEREP';

  COUNT(*)
----------
       742
       
--acima feito 20/06/2016 - 14:56 finalizou*******************************************************************************************************************
--feito 20/06/2016*************************************************************************************************************************************************
2 Atividades

Favor publicar a tabela WD_PT do ambiente de Stage de 2015 (DBH_33393_DWTG_STG) para o ambiente de Homologação de 2015 (DBH_33393_DWTG).

Banco Origem: DBH_33393_DWTG_STG
Banco Destino: DBH_33393_DWTG


delete from dbh_33393_dwtg.WD_PT;
INSERt into dbh_33393_dwtg.WD_PT  select * from dbh_33393_dwtg_stg.WD_PT;

--**********************************************************************************************************************************************************
--APGAR OBJETOS DEIXANDO O SCHEMA LIMPINHO. == DELETE SCHEMA DELETE USER DELETE USUARIO

select 'drop ' || object_type || ' ' || owner || '."' || object_name || '";'
from dba_objects
where owner = 'DQDCACHE'
and object_type not like '%PARTITION'
and object_type not like 'LOB'
order by object_type, object_name;

--**********************************************************************************************************************************************************
--feito 23/06/2016 - 14:50 finalizou*******************************************************************************************************************
(14:31:32) copiar de:
dwmd35 - esquema: ​pctrdwfinancdes910
PCTRDWFINANCDES910
TB_PCTRDESMD_DAT_01
Copiar para:
Banco bimd004 - 086010 - PC961DFINCREP
TB_86010_PC961DFINCREP_DAT_01


3-PC961DFINCREP
## =====================================================================================================================================
CREATE TABLESPACE TB_86010_PC961DFINCREP_DAT_01 DATAFILE '+DG_BSA105/d_86010_pwc/bimd004/tb_86010_pc961dfincrep_dat_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD004 PARA O TABLESPACE CRIADO----------------------------------------
create user PC961DFINCREP IDENTIFIED by "456pctrdes321bsa" default tablespace "TB_86010_PC961DFINCREP_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961DFINCREP;

TB_86010_PC961DFINCREP_DAT_01


Enter value for nome_tablespace: TB_86010_PC961DFINCREP_DAT_01

					  Total 	Total	    Ocupado	    Livre  (%)	   Largest   Fragmen
TABLESPACE                      Extensivel (Mb)  Alocado (Mb)          (Mb)         (Mb)   Livre      (Mb)      ta��o
------------------------------ ---------------- ------------- ------------- ------------- ------ --------- ---------
TB_86010_PC961DFINCREP_DAT_01	       32,767.0       1,024.0		1.0	  1,023.0   99.9   1,023.0	 1.0
			       ---------------- ------------- ------------- -------------
sum				       32,767.0       1,024.0		1.0	  1,023.0


=========================================================================================================================================================

nohup impdp dwpub/dwpubmd@bimd004 directory=DWPUB_DATAPUMP network_link=DBL_DWMD35 schemas=PCTRDWFINANCDES910 remap_schema=PCTRDWFINANCDES910:PC961DFINCREP remap_tablespace=TB_PCTRDESMD_DAT_01:TB_86010_PC961DFINCREP_DAT_01 nologfile=y > importmetadados20161107.log &

-- TESTAR A QUANTIDADE DO OBJETOS DE CADA SCHEMA.========================
14:08:29 DWPUB:dwmd35 > select count(*) from dba_objects where owner = 'PCTRDWFINANCDES910';

  COUNT(*)
----------
       742


14:47:36 DWPUB:bimd004 > select count(*) from dba_objects where owner = 'PC961DFINCREP';

  COUNT(*)
----------
	 0

depois ......
SQL> select count(*) from dba_objects where owner = 'PC961DANLSREP';

  COUNT(*)
----------
       742
       
--*********************************************************************************************************************************************************

--feito 23/06/2016 - 15:28 finalizou******************************************************************************************************************
(14:31:32) copiar de:
dwmd35 - esquema: ​pctrsigepeintprod910
PCTRSIGEPEINTPROD910
TB_PCTRDESMD_DAT_01
Copiar para:
Banco bimd002 - 07613 - PC961PSGPEREP
TB_07613_PC961PSGPEREP_DAT_01


3-PC961PSGPEREP
## =====================================================================================================================================
CREATE TABLESPACE TB_07613_PC961PSGPEREP_DAT_01 DATAFILE '+DG_BSA097/p_07653_pwrcenter/bimd002/tb_07613_pc961psgperep_dat_01_01.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 6144M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD004 PARA O TABLESPACE CRIADO----------------------------------------
create user PC961PSGPEREP IDENTIFIED by "456pctrpro321bsa" default tablespace "TB_07613_PC961PSGPEREP_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961PSGPEREP;

TB_07613_PC961PSGPEREP_DAT_01


Enter value for nome_tablespace: TB_86010_PC961DFINCREP_DAT_01

						    Total	  Total       Ocupado	      Livre  (%)     Largest
TABLESPACE				  Extensivel (Mb)  Alocado (Mb) 	 (Mb)	      (Mb)   Livre	(Mb) Fragmentacao
---------------------------------------- ---------------- ------------- ------------- ------------- ------ --------- ------------
TB_07613_PC961PSGPEREP_DAT_01			  6,144.0	1,024.0 	  1.0	    1,023.0   99.9   1,023.0	      1.0
					 ---------------- ------------- ------------- -------------
sum						  6,144.0	1,024.0 	  1.0	    1,023.0



=========================================================================================================================================================

nohup impdp dwpub/dwpubmd@bimd002 directory=DWPUB_DATAPUMP network_link=DBL_DWMD35 schemas=PCTRSIGEPEINTPROD910 remap_schema=PCTRSIGEPEINTPROD910:PC961PSGPEREP remap_tablespace=TB_PCTRDESMD_DAT_01:TB_07613_PC961PSGPEREP_DAT_01 nologfile=y > importmetadados20160712.log &

-- TESTAR A QUANTIDADE DO OBJETOS DE CADA SCHEMA.========================
14:08:29 DWPUB:dwmd35 > select count(*) from dba_objects where owner = 'PCTRSIGEPEINTPROD910';

  COUNT(*)
----------
       742


14:47:36 DWPUB:bimd002 > select count(*) from dba_objects where owner = 'PC961PSGPEREP';

  COUNT(*)
----------
	 0

depois ......
SQL> select count(*) from dba_objects where owner = 'PC961DANLSREP';

  COUNT(*)
----------
       742
       
--*********************************************************************************************************************************************************



2 Atividades

Favor:

1) Publicar a tabela WD_CONTA_CORRENTE

Origem: DBH_33393_DWTG_STG
Destino: DBH_33393_DWTG


delete from dbh_33393_dwtg.WD_CONTA_CORRENTE;
INSERt into dbh_33393_dwtg.WD_CONTA_CORRENTE  select * from dbh_33393_dwtg_stg.WD_CONTA_CORRENTE;


-- ************fazendo 30/06/2016*******************************************************************************************************************************

2 Atividades

2.1) favor solicitar a publicação das tabelas abaixo:

WD_REST_UG_EMITENTE_EVENTO
WD_REST_FORE_EVENTO
WD_REST_EXEC_NE_EVENTO
WD_DOC_NE_ITEM
WD_UO
WF_ACOM_ORCAMENTARIO_LOGA
WD_DOC_NE
WF_DOC_NE
WD_DOCUMENTO
WF_DOCUMENTO


soltar com o replicar depois de pronto.
WF_LANCAMENTO

Banco Origem: dbh_33393_dwtg_stg
Banco Destino: dbh_33393_dwtg

delete from dbh_33393_dwtg.WD_REST_UG_EMITENTE_EVENTO;
INSERt into dbh_33393_dwtg.WD_REST_UG_EMITENTE_EVENTO  select * from dbh_33393_dwtg_stg.WD_REST_UG_EMITENTE_EVENTO;

delete from dbh_33393_dwtg.WD_REST_FORE_EVENTO;
INSERt into dbh_33393_dwtg.WD_REST_FORE_EVENTO  select * from dbh_33393_dwtg_stg.WD_REST_FORE_EVENTO;

delete from dbh_33393_dwtg.WD_REST_EXEC_NE_EVENTO;
INSERt into dbh_33393_dwtg.WD_REST_EXEC_NE_EVENTO  select * from dbh_33393_dwtg_stg.WD_REST_EXEC_NE_EVENTO;

delete from dbh_33393_dwtg.WD_DOC_NE_ITEM;
INSERt into dbh_33393_dwtg.WD_DOC_NE_ITEM  select * from dbh_33393_dwtg_stg.WD_DOC_NE_ITEM;

delete from dbh_33393_dwtg.WD_UO;
INSERt into dbh_33393_dwtg.WD_UO  select * from dbh_33393_dwtg_stg.WD_UO;

delete from dbh_33393_dwtg.WF_ACOM_ORCAMENTARIO_LOGA;
INSERt into dbh_33393_dwtg.WF_ACOM_ORCAMENTARIO_LOGA  select * from dbh_33393_dwtg_stg.WF_ACOM_ORCAMENTARIO_LOGA;

delete from dbh_33393_dwtg.WD_DOC_NE;
INSERt into dbh_33393_dwtg.WD_DOC_NE  select * from dbh_33393_dwtg_stg.WD_DOC_NE;

delete from dbh_33393_dwtg.WD_DOCUMENTO;
INSERt into dbh_33393_dwtg.WD_DOCUMENTO  select * from dbh_33393_dwtg_stg.WD_DOCUMENTO;

delete from dbh_33393_dwtg.WF_DOCUMENTO;
INSERt into dbh_33393_dwtg.WF_DOCUMENTO  select * from dbh_33393_dwtg_stg.WF_DOCUMENTO;

delete from dbh_33393_dwtg.WF_DOC_NE;
INSERt into dbh_33393_dwtg.WF_DOC_NE  select * from dbh_33393_dwtg_stg.WF_DOC_NE;




2) Regerar as agregadas:

replicar             !! replicar       !! replicar          || replicar        || refazer scripts 

WF_LANCAMENTO_EP01, WF_LANCAMENTO_EP02, WF_LANCAMENTO_EP03, WF_LANCAMENTO_EP04, WF_LANCAMENTO_EP20

no Banco: dbh_33393_dwtg

--ANDRÉ MAGALHÃES -- FALOU PARA FAZER EE01 --- ARRUMAR SCRIPT WF_LANCAMENTO_EE01
--**************************************************************************
PONTO SISCOP
menor que 15 minutos não aplica 27

#85 - 3076 fagner

--**************************************************************************
MÉTRICAS NÃO DEVEM FICAR NO GROUP BY NO SQL



----JEDIT******************************************************************************************************************************************************************
--USEI O JEDIT PARA UNIFICAR UM TEXTO COM REST DE LINE IGNORED .. JUNTOU TUDO E UNIIFCOU E  CONSEGUIR EXECUTAR O SCRIPT== A OPÇÃO EDIT + TEXT + JOIN LINES " CTRL + J
18:46:08 DWPUB:bipro001 > CREATE OR REPLACE FORCE VIEW SIGPGFN.SIG_VW_CORESP (ID_CORESP, ID_REGIAO_POLITICA, DS_CPF_CNPJ_DEVEDOR_DETALHADO, NR_CPF_CNPJ_DEVEDOR_DETALHADO, NM_DEVEDOR_DETALHADO, ID_PAIS, ID_UF, ID_MUNICIPIO, ID_NAT_JURIDICA_DEVEDOR, ID_ATIVIDADE_DEVEDOR, ID_TIPO_PESSOA, ID_DEVEDOR_AGREGADO, ID_SITUACAO_CAD_SUCESSOR, ID_DIA_MOTIVO_SITUACAO, ID_MOTIVO_SITUACAO, ANO_OBITO, ID_DIA_NASCIMENTO, ID_IND_OBITO, ID_SITUACAO_CAD_CPFCNPJ, ID_DEVEDOR_SUCESSOR, NM_DEVEDOR_SUCESSOR, NR_DEVEDOR_SUCESSOR, DS_CNPJ_DEVEDOR_SUCESSOR, ID_IND_MATRIZ_DEVEDOR, ID_IND_MATRIZ_SUCESSOR) AS (SELECT DISTINCT SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_DEVEDOR_DETALHADO ID_CORESP, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_REGIAO_POLITICA, SIGPGFN.SIG_DEVEDOR_DETALHADO.DS_CPF_CNPJ_DEVEDOR_DETALHADO, SIGPGFN.SIG_DEVEDOR_DETALHADO.NR_CPF_CNPJ_DEVEDOR_DETALHADO, SIGPGFN.SIG_DEVEDOR_DETALHADO.NM_DEVEDOR_DETALHADO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_PAIS, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_UF, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_MUNICIPIO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_NAT_JURIDICA_DEVEDOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_ATIVIDADE_DEVEDOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_TIPO_PESSOA, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_DEVEDOR_AGREGADO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_SITUACAO_CAD_SUCESSOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_DIA_MOTIVO_SITUACAO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_MOTIVO_SITUACAO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ANO_OBITO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_DIA_NASCIMENTO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_IND_OBITO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_SITUACAO_CAD_CPFCNPJ, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_DEVEDOR_SUCESSOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.NM_DEVEDOR_SUCESSOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.NR_DEVEDOR_SUCESSOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.DS_CNPJ_DEVEDOR_SUCESSOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_IND_MATRIZ_DEVEDOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_IND_MATRIZ_SUCESSOR FROM SIGPGFN.DEVEDORES_INSCRICAO, SIGPGFN.SIG_DEVEDOR_DETALHADO WHERE SIGPGFN.DEVEDORES_INSCRICAO.ID_DEVEDOR_DETALHADO = SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_DEVEDOR_DETALHADO AND DEVEDORES_INSCRICAO.CO_TIPO_DEVEDOR <> 1);

View created.

--*feito 07/07/2016*************************************************************************

2 Atividades

Por favor, realizar a publicação da tabela WD_DOC_NE a partir do banco de Stage de 2015 para o banco de Homologação de 2015.

Banco de Origem: DBH_33393_DWTG_STG
Banco de Destino: DBH_33393_DWTG

delete from dbh_33393_dwtg.WD_DOC_NE;
INSERt into dbh_33393_dwtg.WD_DOC_NE  select * from dbh_33393_dwtg_stg.WD_DOC_NE;


--  fazendo************************************************************************

1. Criar as estruturas abaixo no banco de Homologação de 2016:

CREATE MULTISET TABLE DBH_33393_DWTG_2016.WF_CUSTO_DIRETO 
(
	QT_ITEM_CUSTO_DIRETO BYTEINT NOT NULL DEFAULT 1,
	VA_ITEM_CUSTO_DIRETO DECIMAL(17,2) NOT NULL DEFAULT 0,
	NR_ITEM_CUSTO_DIRETO BIGINT NOT NULL,
	ID_ABA BIGINT NOT NULL,
	ID_DIA_ALTERACAO	BYTEINT	NOT NULL	DEFAULT -9,
	ID_MES_ALTERACAO	BYTEINT	NOT NULL	DEFAULT -9,
	ID_ANO_ALTERACAO	SMALLINT	NOT NULL	DEFAULT -9,
	ID_DIA_EMISSAO_DOC_HABIL	BYTEINT	NOT NULL	DEFAULT -9,
	ID_MES_EMISSAO_DOC_HABIL	BYTEINT	NOT NULL	DEFAULT -9,
	ID_ANO_EMISSAO_DOC_HABIL	SMALLINT	NOT NULL	DEFAULT -9,
	ID_DOC_HABIL	VARCHAR(23)	 NOT NULL	DEFAULT '-9',
	ID_SITUACAO_ICC	BIGINT	NOT NULL	DEFAULT -9,
	ID_INDICADOR_EFEITO_ICC	BYTEINT	NOT NULL	DEFAULT -9,
	ID_CATEGORIA_ECONOMICA_NADE	BYTEINT	NOT NULL	DEFAULT -9,
	ID_ELEMENTO_DESPESA_NADE	BYTEINT	NOT NULL	DEFAULT -9,
	ID_MOAP_NADE	BYTEINT	NOT NULL	DEFAULT -9,
	ID_GRUPO_DESPESA_NADE	BYTEINT	NOT NULL	DEFAULT -9,
	ID_SUBITEM_NADE	BYTEINT	NOT NULL	DEFAULT -9,
	ID_DOC_NE	VARCHAR(23)	NOT NULL	DEFAULT '-9',
	ID_LISTA_ITENS_NE	VARCHAR(23)	NOT NULL	DEFAULT '-9',
	ID_ORGAO_PI	INTEGER	NOT NULL	DEFAULT -9,
	ID_PI	VARCHAR(11)	NOT NULL	DEFAULT '-9',
	ID_ESFERA_ORCAMENTARIA	BYTEINT	NOT NULL	DEFAULT -9,
	ID_FONTE_RECURSO_DETA	BIGINT	NOT NULL	DEFAULT -9,
	ID_UG_RESP_DOC_NE	INTEGER	NOT NULL	DEFAULT -9,
	ID_PTRES	INTEGER	NOT NULL	DEFAULT -9,
	ID_FUNCAO_PT	VARCHAR(2)	NOT NULL	DEFAULT '-9',
	ID_SUBFUNCAO_PT	VARCHAR(3)	NOT NULL	DEFAULT '-9',
	ID_PROGRAMA_PT	VARCHAR(4)	NOT NULL	DEFAULT '-9',
	ID_ACAO_PT	VARCHAR(4)	NOT NULL	DEFAULT '-9',
	ID_LOCALIZADOR_GASTO_PT	VARCHAR(4)	NOT NULL	DEFAULT '-9',
	ID_CELULA_ORCAMENTARIA_SK	INTEGER	NOT NULL	DEFAULT -9,
	AN_EXERCICIO_C	SMALLINT	NOT NULL,
	NO_ORIGEM_C	VARCHAR(50)	NOT NULL,
	DT_CARGA_C	INTEGER	NOT NULL,
	IN_OPERACAO_C	BYTEINT	NOT NULL,
	DT_CARGA_INCLUSAO_C	INTEGER	NOT NULL,
	NO_ORIGEM_INCLUSAO_C	VARCHAR(50)	NOT NULL,
    ID_INICIATIVA_PT VARCHAR(4) NOT NULL DEFAULT '-9',
    ID_OBJETIVO_PT VARCHAR(4)  NOT NULL DEFAULT '-9'	

) UNIQUE PRIMARY INDEX(NR_ITEM_CUSTO_DIRETO,ID_ABA)
;


CREATE MULTISET TABLE DBH_33393_DWTG_2016.WD_ABA 
(
	ID_ABA	BIGINT	NOT NULL,
	NO_ABA	VARCHAR(80)	NOT NULL DEFAULT '-9',
	AN_EXERCICIO_C	SMALLINT	NOT NULL,
	NO_ORIGEM_C	VARCHAR(50)	NOT NULL,
	DT_CARGA_C	INTEGER	NOT NULL,
	IN_OPERACAO_C	BYTEINT	NOT NULL,
	DT_CARGA_INCLUSAO_C	INTEGER	NOT NULL ,
	NO_ORIGEM_INCLUSAO_C	VARCHAR(50)	NOT NULL
) UNIQUE PRIMARY INDEX(ID_ABA)
;


REPLACE VIEW MSTRHOMDWTG2016.WD_ABA AS
LOCKING ROW FOR ACCESS SELECT * FROM DBH_33393_DWTG_2016.WD_ABA
;

REPLACE VIEW MSTRHOMDWTG2016.WF_CUSTO_DIRETO AS
LOCKING ROW FOR ACCESS SELECT * FROM DBH_33393_DWTG_2016.WF_CUSTO_DIRETO
;

2. Realizar a publicação das tabelas WD_ABA e WF_CUSTO_DIRETO do ambiente de stage de 2016 (dbh_33393_dwtg_stg_2016)
para o ambiente de Homologação de 2016 (dbh_33393_dwtg_2016)


delete from dbh_33393_dwtg_2016.WD_ABA;
INSERt into dbh_33393_dwtg_2016.WD_ABA  select * from dbh_33393_dwtg_stg_2016.WD_ABA;

delete from dbh_33393_dwtg_2016.WF_CUSTO_DIRETO;
INSERt into dbh_33393_dwtg_2016.WF_CUSTO_DIRETO  select * from dbh_33393_dwtg_stg_2016.WF_CUSTO_DIRETO;


--**************************************************************************

-- OS USUÁRIOS ADM só TEM SINÔNIMOS. ELES NÃO TEM OBJETOS a não ser alguma tabela ZZZ que é o MICROSTRATEGY QUE CRIA.

--******08/07/2016********************************************************************
TICKET DA SUSANA / VANUBIA - BAHIA

GRANT SELECT ON PROC.WF_PROC_DETR TO ADMPROC;
GRANT SELECT ON PROC.WF_PROC_SARE TO ADMPROC;


Conceder permissão de select para o usuário ADMPROC na tabela PROC.WF_PROC_DETR e PROC.WF_PROC_SARE.
Script anexo no spekx.

--******11/07/2016*********************************************************************************************************************
2 Atividades

Por favor, realizar a publicacao da tabela WF_CUSTO_DIRETO a partir do banco de Stage de 2016 para o banco de Homologacao de 2016.

Banco de Origem: DBH_33393_DWTG_STG_2016
Banco de Destino: DBH_33393_DWTG_2016

delete from DBH_33393_DWTG_2016.WF_CUSTO_DIRETO;
INSERt into DBH_33393_DWTG_2016.WF_CUSTO_DIRETO  select * from DBH_33393_DWTG_STG_2016.WF_CUSTO_DIRETO;

--*************************************************************************************************************************************

2 Atividades

Por favor, realizar a publicacao da tabela WD_DOC_ORIGEM a partir do banco de Stage de 2016 para o banco de Homologacao de 2016.

Banco de Origem: DBH_33393_DWTG_STG_2016
Banco de Destino: DBH_33393_DWTG_2016

Obrigado.
delete from DBH_33393_DWTG_2016.WD_DOC_ORIGEM;
INSERt into DBH_33393_DWTG_2016.WD_DOC_ORIGEM  select * from DBH_33393_DWTG_STG_2016.WD_DOC_ORIGEM;

--*************************************************************************************************************************************

CREATE OR REPLACE FORCE VIEW "PESSOAL"."WV_ANO_PREVISAO_APOSENTADORIA" ("ANO", "MES", "VINCULO_SERV", "SITUACAO_VINC_SERV", "SITUACAO_FUNC_VINC_SERV", "ESTADO_VINC_SERV", "QTDE_VINCULO_SER_PES", "NIVEL_CARGO", "UORG_VINC", "ANO_PREVISAO_APOSENTADORIA")
AS
  SELECT A.ANO ,
    A.MES ,
    A.VINCULO_SERV ,
    d.SITUACAO_VINC_SERV ,
    A.SITUACAO_FUNC_VINC_SERV ,
    A.ESTADO_VINC_SERV ,
    A.QTDE_VINCULO_SER_PES ,
    A.NIVEL_CARGO ,
    A.UORG_VINC ,
    CASE
      WHEN b.aposentadoria_vinc_serv    = 0
      AND b.ABONO_PERMANENCIA_VINC_SERV = 0
      THEN
        CASE
          WHEN ((
            CASE
              WHEN a.sexo = 'F'
              THEN 30
              ELSE 35
            END )                                  - c.TEMPO_SERVICO_APOSENT) > 0
          THEN TO_NUMBER(SUBSTR(A.MES,1,4),'9999') + ((
            CASE
              WHEN a.sexo = 'F'
              THEN 30
              ELSE 35
            END ) - c.TEMPO_SERVICO_APOSENT)
          ELSE TO_NUMBER(SUBSTR(A.MES,1,4),'9999')
        END
      WHEN b.aposentadoria_vinc_serv     = 0
      AND b.ABONO_PERMANENCIA_VINC_SERV <> 0
      THEN -1 -- 'ABONO'
      ELSE -9 -- 'APOSENTADO'
    END ANO_PREVISAO_APOSENTADORIA
  FROM pessoal.wf_pessoal301 a,
    estado_vinc_serv b,
    grupo_tempo_servico c,
    SITUACAO_FUNC_VINC_SERV d
  WHERE b.estado_vinc_serv      = a.estado_vinc_serv
  AND c.grupo_tempo_servico     = a.grupo_tempo_servico
  AND d.SITUACAO_FUNC_VINC_SERV = a.SITUACAO_FUNC_VINC_SERV;

View created.

--*************************************************************************************************************************************
COL TABELA FOR A50
set pages 5000  
set lines 900
spool COUNTTABELAS.SQL
select 'select ''' || OWNER || '.' || table_name || ''' tabela, count(*) qtd_indices from dba_indexes where owner = ''' || owner || ''' and table_name = ''' || table_name || ''' union'
from dba_tables
where owner = 'CNPF'
order by table_name
/

--*************************************************************************************************************************************
copiar de um banco para o outro - ANDRÉ MAGALHÃES

dbp_33393_dwtg para dbp_33393_dwtg_2015

select 
'INSERT INTO dbp_33393_dwtg_2015.' -- BANCO DESTINO
||Trim(Tablename)||     -- TABELA DESTINO
' select * from dbp_33393_dwtg.'  -- BANCO ORIGEM
||Trim(Tablename)||';'   -- TABELA ORIGEM COM DADOS 
from
dbc.tablesv
where 
databasename = 'dbp_33393_dwtg'


--*************************************************************************************************************************************
--=====================================================================================
BACKUP A PEDIDO DO JOSÉ LOPES - PARA O METADADOS DO DE DESENVOLVIMENTO DO MINISTÉRIO DA JUSTIÇA 
MS941DMJMD  backup para José Lopes no mesmo banco. BIMD004

bimd004 > select default_tablespace from dba_users where username = 'MS941DMJMD';

						    Total	  Total       Ocupado	      Livre  (%)     Largest
TABLESPACE				  Extensivel (Mb)  Alocado (Mb) 	 (Mb)	      (Mb)   Livre	(Mb) Fragmentacao
---------------------------------------- ---------------- ------------- ------------- ------------- ------ --------- ------------
TB_07651_MS941DMJMD_DAT_01			 32,767.0	1,024.0 	164.2	      859.8   84.0     859.0	      6.0
					 ---------------- ------------- ------------- -------------
sum						 32,767.0	1,024.0 	164.2	      859.8


create user MS941DMJMD_BACKUP_20160715 IDENTIFIED by "ms941dmjmd" default tablespace "TB_07651_MS941DMJMD_DAT_01";

nohup impdp dwpub/dwpubmd@bimd004 directory=DWPUB_DATAPUMP network_link=DBL_BIMD004 schemas=MS941DMJMD remap_schema=MS941DMJMD:MS941DMJMD_BACKUP_20160715 nologfile=y > importmetadados20160715.log &

--nesse caso não precisou
--TESTAR DBL-LINK PARA para fazer impdb
SQL> select name from v$database@DBL_PMD01.WORLD;
---

select count(*) from dba_objects where owner = 'MS941DMJMD';
--=================================================================================

SQL> select count(*) from dba_objects where owner = 'MSTR941PUBNC';

  COUNT(*)
----------
       83

SQL>  select count(*) from dba_objects where owner = 'MS941DMJMD_BACKUP_20160715';

  COUNT(*)
----------
       83
--*************************************************************************************************************************************
--feito 02/08/2016 - 15:28 fainda fazendo******************************************************************************************************************
(14:31:32) copiar de:
dwmd35 - esquema: PCTRPGFNDES910
TB_PCTRDESMD_DAT_01

Copiar para:
Banco bimd004 
PC961DPGFNREP
TB_37260_PC961DPGFNREP_DAT_01

3-PC961DPGFNREP
## =====================================================================================================================================

=========================================================================================================================================================

nohup impdp dwpub/dwpubmd@bimd004 directory=DWPUB_DATAPUMP network_link=DBL_DWMD35 schemas=PCTRPGFNDES910 remap_schema=PCTRPGFNDES910:PC961DPGFNREP remap_tablespace=TB_PCTRDESMD_DAT_01:TB_37260_PC961DPGFNREP_DAT_01 nologfile=y > importmetadados20160802.log &

-- TESTAR A QUANTIDADE DO OBJETOS DE CADA SCHEMA.========================
14:08:29 DWPUB:dwmd35 > select count(*) from dba_objects where owner = 'PCTRPGFNDES910';

  COUNT(*)
----------
       742


14:47:36 DWPUB:bimd004 > select count(*) from dba_objects where owner = 'PCTRPGFNDES910';

  COUNT(*)
----------
	 0

depois ......
SQL> select count(*) from dba_objects where owner = 'PC961DANLSREP';

  COUNT(*)
----------
       742



--******03/08/2016*********************************************************************************************************************
2 Atividades

Por favor, realizar a publicacao da tabela WD_UPAG_SIAPE a partir do banco de carga Integrado para o banco de Homologacao Integrado.

Banco de Origem: ORACLE_33393_DWTG
Banco de Destino: DBP_33393_DWTG

delete from DBP_33393_DWTG.WD_UPAG_SIAPE;
INSERt into DBP_33393_DWTG.WD_UPAG_SIAPE select * from ORACLE_33393_DWTG.WD_UPAG_SIAPE;

--*************************************************************************************************************************************

select databasename ( title '' ), espaco  ( title '') from (
select
CASE spa.databasename
        WHEN 'oracle_33393_dwtg' THEN 'dbc_33393_dwtg'
        WHEN 'dbh_33393_tuto' THEN 'dbh_33393_dwtg'
        ELSE SUBSTR(spa.databasename, 0, 15)
END as databasename,
sum(spa.MaxPerm) as espaco
FROM DBC.DatabasesV base
LEFT JOIN DBC.DiskSpaceV spa on (base.DatabaseName = spa.DatabaseName)
where base.OwnerName = 'STN'
GROUP BY CASE spa.databasename
        WHEN 'oracle_33393_dwtg' THEN 'dbc_33393_dwtg'
        WHEN 'dbh_33393_tuto' THEN 'dbh_33393_dwtg'
        ELSE SUBSTR(spa.databasename, 0, 15)
END
UNION
   SELECT 'dbi_08186_teradata' as databasename,  sum(spa.MaxPerm) as espaco
  FROM DBC.DatabasesV base
  LEFT JOIN DBC.DiskSpaceV spa on (base.DatabaseName = spa.DatabaseName)
  where base.OwnerName <> 'STN'
GROUP BY 'dbi_08186_teradata')
as apropriacao
order by 1;

--===============================================================================================================================================
rodar depois
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC ,ID_ANO_LANC, ID_MES_LANC ,ID_DOCUMENTO_LANC ,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_DOCUMENTO_LANC ,ID_UG_EXEC,ID_MOEDA_UG_EXEC_H , ID_CATEGORIA_ECONOMICA_NADE, ID_GRUPO_DESPESA_NADE ,ID_MOAP_NADE , ID_ELEMENTO_DESPESA_NADE,ID_ORGAO_PI ,ID_PI ,ID_ACAO_PT ,ID_LOCALIZADOR_GASTO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_DOCUMENTO_LANC ,ID_UG_EXEC,ID_CATEGORIA_ECONOMICA_NADE , ID_GRUPO_DESPESA_NADE ,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE , ID_ORGAO_PI ,ID_LOCALIZADOR_GASTO_PT)  ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_CATEGORIA_ECONOMICA_NADE , ID_GRUPO_DESPESA_NADE ,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE , ID_ORGAO_PI ,ID_LOCALIZADOR_GASTO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;

--==============================================================================
--INSERÇÃO DE DADOS 
select 
'INSERT INTO DBHOM_33393_DWTG.' -- BANCO DESTINO
||Trim(Tablename)||     -- TABELA DESTINO
' select * from DBPRO_33393_DWTG.'  -- BANCO ORIGEM
||Trim(Tablename)||';'   -- TABELA ORIGEM COM DADOS 
from
dbc.tablesv
where 
databasename = 'DBPRO_33393_DWTG'

--================================================================================================================================================
--COPIA DE COLETA DE ESTATISTICA DE ******UM BANCO PARA O OUTRO SE O MESMO APRESENTAR AS MESMAS CARACTERÍSTICAS******
--
select 
'COLLECT STATISTICS DBDES_33393_DWTG.' -- BANCO DESTINO
||Trim(Tablename)||     -- TABELA DESTINO
' from DBPRO_33393_DWTG.'  -- BANCO ORIGEM
||Trim(Tablename)||';'   -- TABELA ORIGEM COM DADOS 
from
dbc.tablesv
where 
databasename = 'DBPRO_33393_DWTG'

--=================================================================================================================================================



--=====================================================================================================================
PC961DPGFNREP

## =====================================================================================================================================

CREATE TABLESPACE TB_07653_PC961PPGFNREP_DAT_01 DATAFILE '+DG_BSA097/p_07653_pwrcenter/bimd002/tb_07653_PC961PPGFNREP_dat_01_01.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 6144M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------

create user PC961PPGFNREP IDENTIFIED by "456pctrprod321bsa" default tablespace "TB_07653_PC961PPGFNREP_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------

grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961PPGFNREP;

antonio corretor jeep renegade3247-2727

--=====================================================================================================================================


--*****feito 19/09/2016***************************************************************************************************************

ALTER TABLE SPED.WF_SPED_DEIS MOVE PARTITION PT_DEIS_201607 TABLESPACE TB_21746_SPED_DAT_00;

SPED.WF_SPED_DEIS partition (PT_DEIS_201602)

TB_21746_SPED_DAT_01 para  TB_21746_SPED_DAT_00

e depois reexcutei o job no controlm 

--******************************************************************************************************************
executar ticket 20/09/2016
alter table sigpgfn.sig_faixa_valor ADD ( VR_INICIO NUMBER, VR_FIM NUMBER); 
--******************************************************************************************************************

TESTAR EM CASA                                                                          
http://centralpacotes.serpro/portaldesoftware

--21/09/2016===- ok===================================================================================================================
Mário,

Favor criar uma cópia do esquema abaixo com o nome (ms104desmd) no mesmo banco.

Banco: bimd004
Esquema: ms101desstnmd

Obrigada.

-- 
Atenciosamente,

Fernanda da Silva Alves
Serviço Federal de Processamento de Dados (SERPRO)
SUPCD/CDBSA/CDSDW
(61) 2021-9563


TB_07651_MS101DESSTNMD_DAT_01
ms101desstnmd

ms104desmd - novo

--create user MS104DESMD IDENTIFIED by "ms941dmjmd" default tablespace "TB_07651_MS101DESSTNMD_DAT_01";

nohup impdp dwpub/dwpubmd@bimd004 directory=DWPUB_DATAPUMP network_link=DBL_BIMD004 schemas=MS101DESSTNMD remap_schema=MS101DESSTNMD:MS104DESMD nologfile=y > importmetadados20160921.log &

grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS104DESMD;

select count(*) from dba_objects where owner = 'MSTR941PUBMD';
select count(*) from dba_objects where owner = 'MS1MSTR941PUBMDTESTE';

--======================================================================================================================
--21/09/2016============================================================================================================
FAZER PARA BANCO DE HOMOLOGAÇÃO BIMD001
Banco: bimd004
Esquema: MS101DESSTNMD

TB_07651_MS101DESSTNMD_DAT_01
ms101desstnmd

ms104testemd - novo
bimd001
CREATE TABLESPACE TB_07651_MS104TESTEMD_DAT_01 DATAFILE  '+DG_BSA093/h_07651_mstr/bimd001/tb_07651_ms104testemd_dat_01_001.dbf'  SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

create user MS104TESTEMD IDENTIFIED by "ms104testemd" default tablespace "TB_07651_MS104TESTEMD_DAT_01";

nohup impdp dwpub/dwpubmd@bimd004 directory=DWPUB_DATAPUMP network_link=DBL_BIMD004 schemas=MS101DESSTNMD remap_schema=MS101DESSTNMD:MS104DESMD nologfile=y > importmetadados20160921.log &

grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS104TESTEMD;

select count(*) from dba_objects where owner = 'MS101DESSTNMD';
select count(*) from dba_objects where owner = 'MS104TESTEMD';

--EXPORT PARA PASSAR DA MAQUINA DE METADADOS DE DESENVOLVIMENTO PARA A DE HOMOLOGAÇÃO.
--ESSE DIRETORIO DATA_PUMP_DIR É O QUE CABE O ARQUIVO.
--DEPOIS 
nohup expdp dwpub/dwpubmd@bimd004 directory=DATA_PUMP_DIR NOLOGFILE=Y DUMPFILE=ms104testemd_20160921_atu.dmp SCHEMAS=ms101desstnmd > /home/dwpublic/dwpub/work/expms104testemd_20160921.log &


--======================================================
comando para ver qual é o diretorio do DATA_PUMP_DIR.

17:46:46 DWPUB:bimd004 > select * from dba_directories; 

OWNER											   DIRECTORY_NAME
------------------------------------------------------------------------------------------ ------------------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SYS											   DWPUB_DATAPUMP
/home/dwpublic/dwpub/DWPUB_DATAPUMP/

SYS											   XMLDIR
/u01/app/oracle/product/11.2.0.4/dbhome_1/rdbms/xml

SYS											   ORACLE_OCM_CONFIG_DIR
/u01/app/oracle/product/11.2.0.4/dbhome_1/ccr/state

SYS											   DATA_PUMP_DIR
/opt/93031_isbux_dbfiles/oracle/exp/EVENTUAL/expbimd004

SYS											   ORACLE_OCM_CONFIG_DIR2
/u01/app/oracle/product/11.2.0.4/dbhome_1/ccr/state


17:47:04 DWPUB:bimd004 > 

--======================================================
precisou de LIBERAÇÃO DE ACESSO DA ROSANGELA DO AIX.


--copiando do bimd004 para o meu computador
scp dwpub@161.148.239.23:/opt/93031_isbux_dbfiles/oracle/exp/EVENTUAL/expbimd004/ms104testemd_20160921_atu.dmp .

--copiando do meu computador para bimd001

scp /home/76455424115/ms104testemd_20160921_atu.dmp dwpub@161.148.240.19:/u01/app/oracle/admin/bimd001/dpdump/

-- pedir para o aix.

ALTERAR O DIRETORIO PARA ESCREVERMOS NOS MESMOS PARA QUE POSSAMOS FAZER 
COPIAS DE NOSSAS MÁQUINAS PARA ESSES DIRETORIOS QUANDO NECESSITRAMOS E ATÉ MESMO APAGAR OS REFERIDOS ARQUIVOS.

=========================================================================
BIMD004
IP: 161.148.239.23
DIRETÓRIO: /opt/93031_isbux_dbfiles/oracle/exp/EVENTUAL/expbimd004/

=========================================================================
BIMD001
IP: 161.148.240.19
DIRETORIO: /u01/app/oracle/admin/bimd001/dpdump/

==========================================================================

REMOVER ESSE ARQUIVO COM Aix - rosangela.
-rw-r--r--    1 oracle11 asmadmin 1889226752 Sep 21 17:59 ms104testemd_20160921_atu.dmp
/opt/93031_isbux_dbfiles/oracle/exp/EVENTUAL/expbimd004:P81> rm -f ms104testemd_20160921_atu.dmp
rm: ms104testemd_20160921_atu.dmp not removed.
Permission denied
/opt/93031_isbux_dbfiles/oracle/exp/EVENTUAL/expbimd004:P81> 


--===============
  CREATE INDEX "SGPJ"."SIFM_PJRF_VINC_BT" ON "SGPJ"."WF_V3_SIF_MENSAL" ("NR_PESSOA_JURIDICA_VINC")
  PCTFREE 0 INITRANS 20 MAXTRANS 255  NOLOGGING
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TB_21709_SGPJ_IND_02"
  PARALLEL 6  LOCAL;

alter diskgroup DG_SPO002 add directory '+DG_SPO002/p_21709_dwsigapj/'; 
alter diskgroup DG_SPO002 add directory '+DG_SPO002/p_21709_dwsigapj/pdw03/';

CREATE TABLESPACE TB_21709_SGPJ_IND_02 DATAFILE  '+DG_SPO002/p_21709_dwsigapj/pdw03/tb_21709_sgpj_ind_01_001.dbf'  SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

ALTER TABLESPACE TB_21709_SGPJ_IND_02 ADD DATAFILE '+DG_SPO002/p_21709_dwsigapj/pdw03/tb_21709_sgpj_ind_01_002.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_21709_SGPJ_IND_02 ADD DATAFILE '+DG_SPO002/p_21709_dwsigapj/pdw03/tb_21709_sgpj_ind_01_003.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;

--===================================================================
APAGAR SEGUNDA --- NÃO ÉSSSE DISKGROUP É O 002
alter diskgroup DG_SPO001 add directory '+DG_SPO001/p_21709_dwsigapj/'; 
alter diskgroup DG_SPO001 add directory '+DG_SPO001/p_21709_dwsigapj/pdw03/';

--===================================================================
24/09/2016***************************************************************************************************************
1
ALTER TABLE SPED.WF_SPED_DEIS MOVE PARTITION PT_DEIS_201608 TABLESPACE TB_21746_SPED_DAT_00;

SPED.WF_SPED_DEIS
PT_DEIS_201608

TB_21746_SPED_DAT_01 para  TB_21746_SPED_DAT_00

e depois reexcutei o job no controlm 

--===================================================================
24/09/2016***************************************************************************************************************
2
ALTER TABLE SPED.WF_SPED_DEFS  MOVE PARTITION PT_DEFS_201608 TABLESPACE TB_21746_SPED_DAT_00;

SPED.WF_SPED_DEFS
PT_DEFS_201608

TB_21746_SPED_DAT_01 para  TB_21746_SPED_DAT_00

e depois reexcutei o job no controlm 

24/09/2016***************************************************************************************************************
3
ALTER TABLE SPED.WF_SPED_DEFS_PF_DE1  MOVE PARTITION PT_DEFSPFDE1_2016 TABLESPACE TB_21746_SPED_DAT_00;

SPED.WF_SPED_DEFS_PF_DE1
PT_DEFSPFDE1_2016


SPED.WF_SPED_DEFS_PF_DE1
PT_DEFSPFDE1_2016


TB_21746_SPED_DAT_01 para  TB_21746_SPED_DAT_00

e depois reexcutei o job no controlm

24/09/2016***************************************************************************************************************
4
ALTER TABLE SPED.WF_SPED_DEIE  MOVE PARTITION PT_DEIE_201608 TABLESPACE TB_21746_SPED_DAT_00;

SPED.WF_SPED_DEIE
PT_DEIE_201608

TB_21746_SPED_DAT_01 para  TB_21746_SPED_DAT_00

e depois reexcutei o job no controlm

--===============================================================================================================================

PROC/WF_PROC_SARE
--===============================================================================================================================
B_CD_CEI_INF_INTERESSADO       NUMBER 
 B_CD_CPF_INTERESSADO           NUMBER                                                                                            
 B_CD_CNPJ_INTERESSADO          NUMBER                                                                                            
 B_CD_NIT_INF_INTERESSADO       NUMBER                                                                                            
 SG_IND_IN_PRINCIPAL            VARCHAR2                                                                                          
 SG_IND_IN_DETENTOR_CRED        VARCHAR2                                                                                          
 
 
 "/dwad_01/home/dwpub/PROC/WF_PROC_SARE/estrut_PROC_WF_PROC_SARE_origem.txt" [Read only] 138 lines, 27738 characters

 
 "/dwad_01/home/dwpub/PROC/WF_PROC_SARE/estrut_PROC_WF_PROC_SARE.txt" [Read only] 132 lines, 26532 characters

 --===============================================================================================================================
EXECUTAR ESSE SCRIPT ABAIXO.

-- resolvido 
- executar assim que estiver janela 


  CREATE BITMAP INDEX "SPED"."DEIS_NR_SPED_PRTS_AT_BM" ON "SPED"."WF_SPED_DEIS" ("NR_SPED_PRTS_AT")
  PCTFREE 1 INITRANS 2 MAXTRANS 255  NOLOGGING
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TB_21746_SPED_IND_01"
  PARALLEL (DEGREE 6 INSTANCES DEFAULT)  LOCAL;


CREATE TABLESPACE TB_21746_SPED_IND_02 DATAFILE  '+DG_SPO002/p_21746_dwtemasped/pdw03/tb_21746_sped_ind_00_01.dbf'  SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

ALTER TABLESPACE TB_21746_SPED_IND_02 ADD DATAFILE '+DG_SPO002/p_21746_dwtemasped/pdw03/tb_21746_sped_ind_00_02.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_21746_SPED_IND_02 ADD DATAFILE '+DG_SPO002/p_21746_dwtemasped/pdw03/tb_21746_sped_ind_00_03.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;

 --===============================================================================================================================
PENDENCIAS PARA RESOLVER CONTROM SÃO PAULO
1-PROC - ALTERAÇÃO DE ESTRUTURA === ESTÁ COM A EQUIPE DE DESENVOLVIMENTO
2-SPED - CRIAÇÃO DE INDICE ==== AGUARDANDO DÁ O CANCELAMENTO NOVAMENTE === PARA SIM EXECUTAR O SCRIPT ACIMA. E AI AGUARDAR UNS DOIS DIAS
3-

--===============================================================================================================================
-- PARA CRIAR UM USUÁRIO SIMPLES - PARA CONEXÃO USE O DCPF E CONEXÕES BÁSICAS.
-- SE PRECISAR DEMAIS, É CONFORME SOLICITAÇÃO


create user SFMDHOMMP IDENTIFIED by "321sfmdhommp" default tablespace "TB_10171_SFMDHOMMP_DAT_01";
grant resource, connect, create view to SFMDHOMMP;
--===============================================================================================================================
--criação de usuário novo do SPOTFIRE - PARA GIOVANNA  à pedido do Fernandão.
SFMDHOMMP
CÓDIGO DE SERVIÇO 10171

CREATE TABLESPACE TB_07650_SFMDHOMMP_DAT_01 DATAFILE  '+DG_BSA093/h_07650_spotfire/bimd001/tb_07650_sfmdhommp_dat_01_001.dbf'  SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 6144M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

create user SFMDHOMMP IDENTIFIED by "321sfmdhommp" default tablespace "TB_07650_SFMDHOMMP_DAT_01";
grant resource, create table, create trigger, connect, create view, unlimited tablespace to SFMDHOMMP;

--===============================================================================================================================

--26/09/2016===- ok===================================================================================================================
drop user MS104DESMD cascade;

copiando novamente
Mário,

Favor criar uma cópia do esquema abaixo com o nome (ms104desmd) no mesmo banco.

Banco: bimd004
Esquema: ms101desstnmd

Obrigada.

-- 
Atenciosamente,

Fernanda da Silva Alves
Serviço Federal de Processamento de Dados (SERPRO)
SUPCD/CDBSA/CDSDW
(61) 2021-9563


TB_07651_MS101DESSTNMD_DAT_01
ms101desstnmd

ms104desmd - novo

--alter user MS104DESMD IDENTIFIED by "ms104desmd" 

nohup impdp dwpub/dwpubmd@bimd004 directory=DWPUB_DATAPUMP network_link=DBL_BIMD004 schemas=MS101DESSTNMD remap_schema=MS101DESSTNMD:MS104DESMD nologfile=y > importmetadados20160926.log &

grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS104DESMD;

select count(*) from dba_objects where owner = 'MS101DESSTNMD';
select count(*) from dba_objects where owner = 'MS104DESMD';

--======================================================================================================================
TESTE TERADATA 

WD_DOC_DAR 
WD_DOC_GFIP 
WD_DOC_GRU
WD_DOC_ND
WD_DOC_NL 
WD_DOC_NS 
WD_DOC_NT 
WD_DOC_OB 
WD_DOC_PE 
WD_DOC_RA 

--======================================================================================================================
sigpgfn 
alter table sigpgfn.sig1_arrecadacao add(ID_PRECEDENCIA NUMBER(1,0));
alter table sigpgfn.sig1_arrecadacao_adr add(ID_PRECEDENCIA NUMBER(1,0),ID_DIA_ARRECADACAO DATE); 

--======================================================================================================================
privilégio E  criação de sinonimos para esquema ANLS no desenvolvimento para SNSP
grant resource, create table, create trigger, connect, create view, create SYNONYM, unlimited tablespace to ANLS WITH ADMIN OPTION;
grant resource, create table, create trigger, connect, create view, create SYNONYM, unlimited tablespace to SNSP WITH ADMIN OPTION;

grant select on snsp.WD_LOCALIDADE to anls;
grant select on snsp.WD_GRUPO_LOCALID to anls;
grant select on snsp.WD_MAPA_LOCALID to anls;
grant select on snsp.WD_REGIAO to anls;
grant select on snsp.WD_PAIS to anls;
grant select on snsp.WD_UF to anls;
grant select on snsp.WF_POPULACAO to anls;
grant select on snsp.WF_FROTA_VEICULO to anls;
grant select on snsp.WD_RACA_VIT_INF to anls;
grant select on snsp.WD_SEXO to anls;

CREATE SYNONYM ADMANLS.WD_LOCALIDADE   FOR SNSP.WD_LOCALIDADE;
CREATE SYNONYM ADMANLS.WD_GRUPO_LOCALID  FOR SNSP.WD_GRUPO_LOCALID;
CREATE SYNONYM ADMANLS.WD_MAPA_LOCALID  FOR SNSP.WD_MAPA_LOCALID;
CREATE SYNONYM ADMANLS.WD_REGIAO FOR SNSP.WD_REGIAO --------;
CREATE SYNONYM ADMANLS.WD_PAIS FOR SNSP.WD_PAIS;
CREATE SYNONYM ADMANLS.WD_UF  FOR SNSP.WD_UF;
CREATE SYNONYM ADMANLS.WF_POPULACAO  FOR SNSP.WF_POPULACAO;
CREATE SYNONYM ADMANLS.WF_FROTA_VEICULO  FOR SNSP.WF_FROTA_VEICULO;
CREATE SYNONYM ADMANLS.WD_RACA_VIT_INF  FOR SNSP.WD_RACA_VIT_INF;
CREATE SYNONYM ADMANLS.WD_SEXO FOR SNSP.WD_SEXO;

DESC ADMANLS.WD_MAPA_LOCALID 
DESC ADMANLS.WD_REGIAO 
DESC ADMANLS.WD_PAIS 
DESC ADMANLS.WD_UF  
DESC ADMANLS.WF_POPULACAO  
DESC ADMANLS.WF_FROTA_VEICULO  
DESC ADMANLS.WD_RACA_VIT_INF  
DESC ADMANLS.WD_SEXO 

--======================================================================================================================
snsp
IP: 161.148.236.101
HOSTNAME: dfcdsrvpbi0018
SID: WHPRO101

--======================================================================================================================
script creuza 03/10/2016
CREATE TABLE "SIGPGFN"."WD_SIG_IND_OPTANTE_PARC_ESP"
  (
    "ID_IND_OPTANTE" NUMBER(2,0),
    "DS_IND_OPTANTE" VARCHAR2(100 BYTE)
  )
  SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING STORAGE
  (
    INITIAL 163840 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
  )
  TABLESPACE "TB_37260_SIGPGFN_DAT_01" ;

CREATE TABLE "SIGPGFN"."WD_SIG_MODALIDADE_PARC_ESP"
  (
    "ID_MODALIDADE_11941" NUMBER(3,0),
    "DS_MODALIDADE_11941" VARCHAR2(70 BYTE),
    "DT_ATUALIZACAO" DATE
  )
  SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING STORAGE
  (
    INITIAL 163840 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
  )
  TABLESPACE "TB_37260_SIGPGFN_DAT_01" ;

CREATE TABLE "SIGPGFN"."WD_SIG_TIPO_PARCELAMENTO"
  (
    "ID_TIPO_PARCELAMENTO" NUMBER(2,0) NOT NULL ENABLE,
    "DS_TIPO_PARCELAMENTO" VARCHAR2(30 BYTE),
    CONSTRAINT "WD_SIG_TIPO_PARCELAMENTO_PK" PRIMARY KEY ("ID_TIPO_PARCELAMENTO") USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING STORAGE(INITIAL 163840 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "TB_37260_SIGPGFN_DAT_01" ENABLE
  )
  SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING STORAGE
  (
    INITIAL 163840 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
  )
  TABLESPACE "TB_37260_SIGPGFN_DAT_01" ;

CREATE TABLE "SIGPGFN"."WF_SIG8_PARCELAMENTO_ESPECIAL"
  (
    "NR_PARCELAMENTO_ESPECIAL" NUMBER(10,0),
    "ID_DIA_ADESAO" DATE,
    "ID_DIA_NEGOCIACAO" DATE,
    "ID_DIA_EXCLUSAO" DATE,
    "ID_DEVEDOR_DETALHADO"     NUMBER(8,0),
    "ID_TIPO_PARCELAMENTO"     NUMBER(2,0),
    "ID_MODALIDADE_PARC_ESP"   NUMBER(3,0),
    "ID_IND_GDE"               NUMBER(2,0),
    "QT_PARCELAMENTO_ESPECIAL" NUMBER(1,0),
    "ID_TIPO_DEVEDOR"          NUMBER(1,0),
    "ID_INSCRICAO"             NUMBER(8,0),
    "ID_IND_OPTANTE"           NUMBER(2,0)
  )
  SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING STORAGE
  (
    INITIAL 163840 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
  )
  TABLESPACE "TB_37260_SIGPGFN_DAT_01" ;

--======================================================================================================================
BANCO: PMD02 - METADADOS CORPORATIVO PRODUÇÃO 
MSTR941PUBMD


BANCO: BIMD002 - METADADOS CONDOMINIO PRODUÇÃO 
MSTR104PUBMDCORPTESTE

--======================================================================================================================
BUSCAMOS ESSE ARQUIVO NO PMD02 METADADOS E MANDAMOS PARA MINHA MÁQUIAN COM SCP
/dwed_01/dw/dwpub/expdat.dmp

--PRIMEIRO FOMOS PARA A MAQUINA DA CARGA - CRIAMOS UM DB_LINK PARA A PMD02 E AI **FOI FEITO DIRETO** 
--DA MAQUINA PMD02 PARA A MAQUINA DWC01, com  o comando abaixo. sem copia alguma. somente db_link
nohup expdp $user/$password directory=DWPUB_DATAPUMP NOLOGFILE=Y NETWORK_LINK=DBL_PMD02 SCHEMAS=MSTR941PUBMD COMPRESSION=ALL  > expdp_MSTR941PUBMD_pmd02_dwc01_10102016.log &

--depois copiamos o arquivo para minha maquina no sepro com o tamanho de 4.6 comprimido
scp dwpub@10.50.240.135:/dwed_01/dw/dwpub/expdat.dmp .


--MANDANDO PARA BIMD002 
--cuidado com a limitação de usuário que só pode gravar 1 gb na ára do diretorio no sistema operacional
scp expdat.dmp dwpub@161.148.236.19:/opt/93031_isbux_dbfiles/oracle/exp/EVENTUAL/bimd002

						    Total	  Total       Ocupado	      Livre  (%)     Largest
TABLESPACE				  Extensivel (Mb)  Alocado (Mb) 	 (Mb)	      (Mb)   Livre	(Mb) Fragmentacao
---------------------------------------- ---------------- ------------- ------------- ------------- ------ --------- ------------
SYSAUX						 32,768.0	1,080.0       1,021.7	       58.3    5.4	51.0	     21.0
SYSTEM						 32,768.0	2,640.0       2,629.6	       10.4	.4	10.0	      2.0
TB_07651_ADUANEIRO_DAT_01			  2,048.0	  512.0 	304.3	      207.7   40.6	 7.0	  1,106.0
TB_21700_MSTR941PUBMD_DAT_01			153,600.0      37,888.0      36,685.2	    1,202.8    3.2     819.0	      3.0
TEMP						 32,768.0	2,005.0 	   .0	    2,005.0  100.0   2,005.0	      1.0
UNDOTBS1					 32,768.0	6,595.0 	 33.2	    6,561.8   99.5   3,923.0	     15.0
USERS						 32,768.0	   25.0 	 19.8		5.2   20.8	 5.0	      2.0
					 ---------------- ------------- ------------- -------------
sum						319,488.0      50,745.0      40,693.8	   10,051.2

--==criar tablespace
TB_21700_MSTR941PUBMD_DAT_01			153,600.0      37,888.0      36,685.2	    1,202.8    3.2     819.0	      3.0



------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------

CREATE TABLESPACE TB_07651_MS941PUBMDTES_DAT_01 DATAFILE '+DG_BSA097/p_07651_mstr/bimd002/tb_07651_ms941pubmdteste_dat_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
ALTER TABLESPACE TB_07651_MS941PUBMDTES_DAT_01 ADD DATAFILE '+DG_BSA097/p_07651_mstr/bimd002/tb_07651_ms941pubmdteste_dat_01_002.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M; 

------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------
create user MSTR941PUBMDTESTE IDENTIFIED by "mstr941pubmdteste" default tablespace "TB_07651_MS941PUBMDTES_DAT_01";

----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, connect, unlimited tablespace to MSTR941PUBMDTESTE;

----------------------------------------------------------IMPORTANDO O METADADOS PARA O USUÁRIO CRIADO-----------------------------------------------------
--FAÇA ISSO AQUI PARA IMPORTAR OS DADOS NO METADADOS.

nohup impdp dwpub/dwpubmd@bimd002 directory=DATA_PUMP_DIR DUMPFILE=expdat.dmp schemas=MSTR941PUBMD remap_schema=MSTR941PUBMD:MSTR941PUBMDTESTE remap_tablespace=TB_21700_MSTR941PUBMD_DAT_01:TB_07651_MS941PUBMDTES_DAT_01 nologfile=y > importmetadados20161011.log &


--TESTE A QUANTIDADE DE OBJETOS NO BANCO ORIGEM PMD02 E SELECT NO BIMD002.
PMD02:    select count(*) from dba_objects where owner = 'MSTR941PUBMD';
BIMD002:  select count(*) from dba_objects where owner = 'MSTR941PUBMDTESTE';

--======================================================================================================================
SOLICITAÇÃO DE ÁREA NO TABLESPACE DO COBRANÇA POR PEDIDO DE GIOVANNA
ALOCAR 2 TB - NO BANCO DE CARGA DWC01

COBR_STG
CÓDIGO DE SERVIÇO: 21764
SUGESTÃO TABLESPACE: TB_21764_XXXX_STG_02
DISCO SÃO HIGH END 


TB_21764_COBR_STG_01

TB_21764_COBR_STG_02

--======================================================================================================================
teste select do imp e exp para fernanda e josé lopes.
Select OBJECT_ID, OBJECT_NAME, OBJECT_TYPE, PARENT_ID From MSTR941PUBMDTESTE.DSSMDOBJINFO Where OBJECT_ID in (Select Distinct OBJECT_ID From MSTR941PUBMDTESTE.DSSMDOBJDEPN Where DEPN_OBJID = '18B5E17D11E678F000100080622EB3A3')

--======================================================================================================================
script sigpgfn CREUZA - ticket 2016RS/000305762
CREATE TABLE SIGPGFN.WD_SIG_ESTRATEGIA_COBRANCA (ID_ESTRATEGIA_COBRANCA NUMBER(2,0), DS_ESTRATEGIA_COBRANCA VARCHAR2(30 BYTE)) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING STORAGE ( INITIAL 163840 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE TB_37260_SIGPGFN_DAT_01; 

--======================================================================================================================
teradata - join.

STN-QTD LINHAS EXCEDIDAS   >>> 1.000.000 LINHAS
STN-QTD TEMPO EXCEDIDO   >>> 30 MINUTOS

STN-PRODUTO CARTESIANO >>>> PRODUCT JOIN
STN-TIPO DE SETENCA >>>>> SOMENTE SELECT

--======================================================================================================================
WV_CONTROLE_ETC_ATUAL
2 Atividades

Por favor, solicitar a alteração da view WV_CONTROLE_ETC_ATUAL em todos os usuários do Microstrategy de Produção e Homologação, de acordo com o arquivo em anexo.
Arquivo: TEXTO-TICKET.txt
2 Atividades

Por favor, solicitar a alteração da view WV_CONTROLE_ETC_ATUAL em todos os usuários do Microstrategy de Produção e Homologação, de acordo com o comando abaixo:

--Producao
REPLACE VIEW ms_33393_dwtg_pro.WV_CONTROLE_ETC_ATUAL AS LOCK ROW FOR ACCESS SELECT * FROM dbpro_33393_dwtg.WA_CONTROLE_ETC WHERE DT_EXTRACAO_INICIO = (SELECT MAX(DT_EXTRACAO_INICIO) FROM dbpro_33393_dwtg.WA_CONTROLE_ETC);

REPLACE VIEW jv_33393_dwtg_pro.WV_CONTROLE_ETC_ATUAL AS LOCK ROW FOR ACCESS SELECT * FROM dbpro_33393_dwtg.WA_CONTROLE_ETC WHERE DT_EXTRACAO_INICIO = (SELECT MAX(DT_EXTRACAO_INICIO) FROM dbpro_33393_dwtg.WA_CONTROLE_ETC);

REPLACE VIEW jv_33393_dwtg_pro_interno.WV_CONTROLE_ETC_ATUAL AS LOCK ROW FOR ACCESS SELECT * FROM dbpro_33393_dwtg.WA_CONTROLE_ETC WHERE DT_EXTRACAO_INICIO = (SELECT MAX(DT_EXTRACAO_INICIO) FROM dbpro_33393_dwtg.WA_CONTROLE_ETC);

REPLACE VIEW jv_33393_dwtg_pro_externo.WV_CONTROLE_ETC_ATUAL AS LOCK ROW FOR ACCESS SELECT * FROM dbpro_33393_dwtg.WA_CONTROLE_ETC WHERE DT_EXTRACAO_INICIO = (SELECT MAX(DT_EXTRACAO_INICIO) FROM dbpro_33393_dwtg.WA_CONTROLE_ETC);

--Homologacao
REPLACE VIEW ms_33393_dwtg_hom.WV_CONTROLE_ETC_ATUAL AS LOCK ROW FOR ACCESS SELECT * FROM dbhom_33393_dwtg.WA_CONTROLE_ETC WHERE DT_EXTRACAO_INICIO = (SELECT MAX(DT_EXTRACAO_INICIO) FROM dbhom_33393_dwtg.WA_CONTROLE_ETC);

WA_CONTROLE_ETC

--======================================================================================================================
creuza
update sigpgfn.sig_inscricao
set nu_juizo = -9
where nu_juizo is null; 

--======================================================================================================================
AKEMI
UPDATE
DBPRO_33393_DWTG.WF_LANCAMENTO
SET ID_INICIATIVA_PT = '00AC',
ID_OBJETIVO_PT = '0131',
NO_ORIGEM_C = NO_ORIGEM_C || '-RL964080'
WHERE NR_UNICO = 201508001383271702

--======================================================================================================================
2 Atividades

Por favor, solicitar a publicação da tabela WF_CUSTO_DIRETO do Banco de Desenvolvimento (dbd_33393_dwtg) para o Banco de Homologação (dbhom_33393_dwtg).

Banco de Origem: dbd_33393_dwtg
Banco de Destino: dbhom_33393_dwtg

delete from dbhom_33393_dwtg.wf_custo_direto;
insert into dbhom_33393_dwtg.wf_custo_direto select * from dbd_33393_dwtg.wf_custo_direto;

--======================================================================================================================
--FAZER COPIAS DO METADADOS DO DESENVOLVIMENTO

NOME ANTIGO:  MSTR941DESMD
NOME NOVO 1-: MS104DCONDMD
NOME NOVO 2-: MS104DCONDMD_BKP

GROUP_NUMBER NAME		  STATE 			      TOTAL_MB	  FREE_MB REQUIRED_MIRROR_FREE_MB USABLE_FILE_MB
------------ -------------------- --------------------------------- ---------- ---------- ----------------------- --------------
	   1 DG_BSA105		  CONNECTED				204800	   126086			0	  126086
	   2 DG_BSA106		  CONNECTED				 30720	    30172			0	   30172

09:26:08 DWPUB:bimd004 > @data_files
Enter value for nome_tablespace: TB_07651_MSTR941DESMD_DAT_01

-- MODELO

FILE_NAME									 INCREMENT_BY TAMANHO_MB
-------------------------------------------------------------------------------- ------------ ----------
+DG_BSA105/p_07651_mstr/bimd004/tb_07651_mstr941desmd_dat_01_001.dbf			78336	   11016
---------------------------------------------------------------------------------------------------------------------------------------------------											      ----------
CREATE TABLESPACE TB_07651_MS104DCONDMD_DAT_01 DATAFILE '+DG_BSA105/d_07651_mstr/bimd004/tb_07651_ms104dcondmd_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------
create user MS104DCONDMD IDENTIFIED by "456descond321$bsamd" default tablespace "TB_07651_MS104DCONDMD_DAT_01";
create user MS104DCONDMD_BKP IDENTIFIED by "456descond321$bsamd" default tablespace "TB_07651_MS104DCONDMD_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS104DCONDMD;
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS104DCONDMD_BKP;

alter user MS104DCONDMD_BKP account unlock;
alter user MS104DCONDMD account unlock;

nohup impdp dwpub/dwpubmd@bimd004 directory=DWPUB_DATAPUMP network_link=DBL_BIMD004 schemas=MSTR941DESMD remap_schema=MSTR941DESMD:MS104DCONDMD remap_tablespace=TB_07651_MSTR941DESMD_DAT_01:TB_07651_MS104DCONDMD_DAT_01 nologfile=y > importmetadados20161019.log &
nohup impdp dwpub/dwpubmd@bimd004 directory=DWPUB_DATAPUMP network_link=DBL_BIMD004 schemas=MSTR941DESMD remap_schema=MSTR941DESMD:MS104DCONDMD_BKP remap_tablespace=TB_07651_MSTR941DESMD_DAT_01:TB_07651_MS104DCONDMD_DAT_01 nologfile=y > importmetadados20161019-BKP.log &

select count(*) from dba_objects where owner = 'MSTR941DESMD';
 COUNT(*)
----------
       108

select count(*) from dba_objects where owner = 'MS104DCONDMD';


--====================================================================================================
--criar nova lista de historico baseado na anteiro.

SCHEMA NOVO: MS104DCONDLH
             
CREATE TABLESPACE TB_07651_MS104DCONDLH_DAT_01 DATAFILE '+DG_BSA105/d_07651_mstr/bimd004/tb_07651_ms104dcondlh_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 8191M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

------------------------------------------------------------CRIANDO USUÁRIO NO BIMD004 PARA O TABLESPACE CRIADO----------------------------------------
create user MS104DCONDLH IDENTIFIED by "456descond321$bsalh" default tablespace "TB_07651_MS104DCONDLH_DAT_01";

----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS104DCONDLH;

--====================================================================================================




--====================================================================================================
--FAZER METADADOS DA HOMOLOGAÇÃO DO CONDOMINIO


BIMD001

NOME ANTIGO:  MSTR941HOMMDTEMP 
NOME NOVO 1-: MS104HCONDMD - OK CRIADO
NOME NOVO 2-: MS104HCONDMD_BKP - OK CRAIDO

21:03:05 DWPUB:bimd001 > @asm

GROUP_NUMBER NAME		  STATE 			      TOTAL_MB	  FREE_MB REQUIRED_MIRROR_FREE_MB USABLE_FILE_MB
------------ -------------------- --------------------------------- ---------- ---------- ----------------------- --------------
	   1 DG_BSA093		  CONNECTED				524288	   146356			0	  146356
	   2 DG_BSA099		  CONNECTED				 61440	    61370			0	   61370


MSTR941HOMMDTEMP	  OPEN				 TB_07651_MSTR941HOMMD_DAT_02



FILE_NAME									 INCREMENT_BY TAMANHO_MB
-------------------------------------------------------------------------------- ------------ ----------
+DG_BSA093/h_07651_mstr/bimd001/tb_07651_mstr941homhist_dat_02_001.dbf			    0	   32767
											      ----------
sum												   32767


---------------------------------------------------------------------------------------------------------------------------------------------------											      ----------
CREATE TABLESPACE TB_07651_MS104HCONDMD_DAT_01 DATAFILE '+DG_BSA093/h_07651_mstr/bimd001/tb_07651_ms104hcondmd_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
ALTER TABLESPACE TB_07651_MS104HCONDMD_DAT_01 ADD DATAFILE '+DG_BSA093/h_07651_mstr/bimd001/tb_07651_ms104hcondmd_dat_01_002.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M; 


------------------------------------------------------------CRIANDO USUÁRIO NO BIMD001 PARA O TABLESPACE CRIADO----------------------------------------
create user MS104HCONDMD IDENTIFIED by "456homcond321$bsamd" default tablespace "TB_07651_MS104HCONDMD_DAT_01";
create user MS104HCONDMD_BKP IDENTIFIED by "456homcond321$bsamd" default tablespace "TB_07651_MS104HCONDMD_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS104HCONDMD;
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS104HCONDMD_BKP;

alter user MS104HCONDMD_BKP account lock;


nohup impdp dwpub/dwpubmd@bimd001 directory=DWPUB_DATAPUMP network_link=DBL_BIMD001 schemas=MSTR941HOMMDTEMP remap_schema=MSTR941HOMMDTEMP:MS104HCONDMD remap_tablespace=TB_07651_MSTR941HOMMD_DAT_02:TB_07651_MS104HCONDMD_DAT_01 nologfile=y > importmetadados20161019-2.log &
nohup impdp dwpub/dwpubmd@bimd001 directory=DWPUB_DATAPUMP network_link=DBL_BIMD001 schemas=MSTR941HOMMDTEMP remap_schema=MSTR941HOMMDTEMP:MS104HCONDMD_BKP remap_tablespace=TB_07651_MSTR941HOMMD_DAT_02:TB_07651_MS104HCONDMD_DAT_01 nologfile=y > importmetadados20161019-BKP-2.log &

21:16:01 DWPUB:bimd001 > select count(*) from dba_objects where owner = 'MSTR941HOMMDTEMP';

  COUNT(*)
----------
       249


21:23:08 DWPUB:bimd001 > select count(*) from dba_objects where owner ='MS104HCONDMD';

  COUNT(*)
----------
       249

1 row selected.

21:30:51 DWPUB:bimd001 > select count(*) from dba_objects where owner ='MS104HCONDMD_BKP';

  COUNT(*)
----------
       249

--======================================================================================================================================
SCHEMA NOVO: MS104DCONDLH - OK CRIADO
             
CREATE TABLESPACE TB_07651_MS104HCONDLH_DAT_01 DATAFILE '+DG_BSA093/h_07651_mstr/bimd001/tb_07651_ms104hcondlh_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 8191M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

------------------------------------------------------------CRIANDO USUÁRIO NO BIMD004 PARA O TABLESPACE CRIADO----------------------------------------
create user MS104HCONDLH IDENTIFIED by "456homcond321$bsalh" default tablespace "TB_07651_MS104HCONDLH_DAT_01";

----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS104HCONDLH;

--====================================================================================================
21/10/2016
ENTERPRISE MANAGER - 160 GB - WHPRO102
MSTR941PUBEM    - TB_07651_MSTR941PUBEM_DAT_01
MS104PCONDEM    - TB_07651_MS104PCONDEM_DAT_01
TABLESPACE				  Extensivel (Mb)  Alocado (Mb) 	 (Mb)	      (Mb)   Livre	(Mb) Fragmentacao
---------------------------------------- ---------------- ------------- ------------- ------------- ------ --------- ------------
TB_07651_MSTR941PUBEM_DAT_01			262,136.0     188,786.0     105,361.9	   83,424.1   44.2   3,968.0	    449.0
TB_07651_MSTR941PUBEM_IND_01			 65,534.0      53,244.0      23,004.0	   30,240.0   56.8   3,968.0	     82.0
					 ---------------- ------------- ------------- -------------
sum						327,670.0     242,030.0     128,365.9	  113,664.1




--------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLESPACE TB_07651_MS104PCONDEM_DAT_01 DATAFILE '+DG_BSA096/p_07651_mstr/whpro102/tb_07651_ms104pcondem_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

ALTER TABLESPACE TB_07651_MS104PCONDEM_DAT_01 ADD DATAFILE '+DG_BSA096/p_07651_mstr/whpro102/tb_07651_ms104pcondem_dat_01_002.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_07651_MS104PCONDEM_DAT_01 ADD DATAFILE '+DG_BSA096/p_07651_mstr/whpro102/tb_07651_ms104pcondem_dat_01_003.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M; 
ALTER TABLESPACE TB_07651_MS104PCONDEM_DAT_01 ADD DATAFILE '+DG_BSA096/p_07651_mstr/whpro102/tb_07651_ms104pcondem_dat_01_004.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M; 
ALTER TABLESPACE TB_07651_MS104PCONDEM_DAT_01 ADD DATAFILE '+DG_BSA096/p_07651_mstr/whpro102/tb_07651_ms104pcondem_dat_01_005.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M; 
ALTER TABLESPACE TB_07651_MS104PCONDEM_DAT_01 ADD DATAFILE '+DG_BSA096/p_07651_mstr/whpro102/tb_07651_ms104pcondem_dat_01_006.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M; 
ALTER TABLESPACE TB_07651_MS104PCONDEM_DAT_01 ADD DATAFILE '+DG_BSA096/p_07651_mstr/whpro102/tb_07651_ms104pcondem_dat_01_007.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M; 
ALTER TABLESPACE TB_07651_MS104PCONDEM_DAT_01 ADD DATAFILE '+DG_BSA096/p_07651_mstr/whpro102/tb_07651_ms104pcondem_dat_01_008.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M; 
 

CREATE TABLESPACE TB_07651_MS104PCONDEM_IND_01 DATAFILE '+DG_BSA096/p_07651_mstr/whpro102/tb_07651_ms104pcondem_ind_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
ALTER TABLESPACE TB_07651_MS104PCONDEM_IND_01 ADD DATAFILE '+DG_BSA096/p_07651_mstr/whpro102/tb_07651_ms104pcondem_ind_01_002.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;

------------------------------------------------------------CRIANDO USUÁRIO NO BIMD004 PARA O TABLESPACE CRIADO----------------------------------------
create user MS104PCONDEM IDENTIFIED by "456prodcond321$bsaem" default tablespace "TB_07651_MS104PCONDEM_DAT_01";

----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS104PCONDEM;
grant create procedure to MS104PCONDEM;

--**************************************************************************************************************************************************
BIMD002
MSTR941PUBHIST  -  130 gb - ok criado

TABLESPACE				  Extensivel (Mb)  Alocado (Mb) 	 (Mb)	      (Mb)   Livre	(Mb) Fragmentacao
---------------------------------------- ---------------- ------------- ------------- ------------- ------ --------- ------------
TB_07651_MSTR941PUBHIST_DAT_01			131,068.0     113,981.0     105,483.2	    8,497.8    7.5   3,968.0	      4.0
					 ---------------- ------------- ------------- -------------
sum						131,068.0     113,981.0     105,483.2	    8,497.8

CREATE TABLESPACE TB_07651_MS104PCONDLH_DAT_01 DATAFILE '+DG_BSA097/p_07651_mstr/bimd002/tb_07651_ms104pcondlh_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
ALTER TABLESPACE TB_07651_MS104PCONDLH_DAT_01 ADD DATAFILE '+DG_BSA097/p_07651_mstr/bimd002/tb_07651_ms104pcondlh_dat_01_002.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_07651_MS104PCONDLH_DAT_01 ADD DATAFILE '+DG_BSA097/p_07651_mstr/bimd002/tb_07651_ms104pcondlh_dat_01_003.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_07651_MS104PCONDLH_DAT_01 ADD DATAFILE '+DG_BSA097/p_07651_mstr/bimd002/tb_07651_ms104pcondlh_dat_01_004.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD002 PARA O TABLESPACE CRIADO----------------------------------------
create user MS104PCONDLH IDENTIFIED by "456prodcond321$bsalh" default tablespace "TB_07651_MS104PCONDLH_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS104PCONDLH;
--------------------------------------------------------------------------------------------------------------------------------------------

--**************************************************************************************************************************************************
BIMD002
MSTRCOAFMD -"456prodcond321$bsamd" - ok criado.


FAZER DOIS USUÁRIOS VAZIOS UM É O ENTERPRISE MANAGER QUE ESTÁ NA MÁQUINA DE WH - WHPRO102 - criar um novo vazio com o mesmo tamanho do outro anteiror.

ir no bimd002 e criar o outro usuário vazio da lista de histórico da produção vazio com o mesmo tamanho do anterior.

+DG_BSA097/p_07651_mstr/bimd002/tb_07423_mstrcoafmdteste_dat_01_001.dbf

CREATE TABLESPACE TB_07423_MSTRCOAFMD_DAT_01 DATAFILE '+DG_BSA097/p_07651_mstr/bimd002/tb_07423_mstrcoafmdteste_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 8191M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

------------------------------------------------------------CRIANDO USUÁRIO NO BIMD002 PARA O TABLESPACE CRIADO----------------------------------------
alter user MSTRCOAFMD IDENTIFIED by "456prodcond321$bsamd";
create user MSTRCOAFMD IDENTIFIED by "456prodcond321$bsamd" default tablespace "TB_07423_MSTRCOAFMD_DAT_01";

----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MSTRCOAFMD;


--=================================================================================================================================================
--BIMD002
-- Usuário: SFMDPRO76 - ok criado
--TB_07650_SFMDPRO76_DAT_01

+DG_BSA097/p_07650_spotfire/bimd002/tb_07650_sfmdpro76_dat_01_001.dbf

CREATE TABLESPACE TB_07650_SFMDPRO76_DAT_01 DATAFILE '+DG_BSA097/p_07650_spotfire/bimd002/tb_07650_sfmdpro76_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 8191M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

------------------------------------------------------------CRIANDO USUÁRIO NO BIMD002 PARA O TABLESPACE CRIADO----------------------------------------
create user SFMDPRO76 IDENTIFIED by "sfmdpro76" default tablespace "TB_07650_SFMDPRO76_DAT_01";

----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to SFMDPRO76;

--===========================================================================================================================================================
Mário,

Peço criar um usuário "admcargani" com acesso as tabelas DIME no banco de homologação do DWRFB.

Obrigada.

--DWH01
--ADMCGNI + permissão para o DIME - criado esse aqui para adequação de nomenclatura

-- USUÁRIO SOMENTE LEITURA 
create user ADMCGNI IDENTIFIED by "admcgni"; 

----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
select 
'grant select on DIME.'
||table_name||
' to ADMPRDH;' 
from dba_tables where owner='DIME';

grant connect, select any table to ADMCGNI;


select distinct ' create synonym ADMCGNI.' || t.table_name || ' for ' ||  t.owner || '.' || t.table_name ||';' 
from dba_tables t 
where not exists (select null from dba_synonyms s 
		where t.owner = s.table_owner 
		and t.table_name = s.table_name 
		and s.owner = 'ADMCGNI') 
		AND T.OWNER = 'DIME'
/


select distinct ' create synonym ADMPRDH.' || t.table_name || ' for ' ||  t.owner || '.' || t.table_name ||';' 
from dba_tables t 
where not exists (select null from dba_synonyms s 
		where t.owner = s.table_owner 
		and t.table_name = s.table_name 
		and s.owner = 'ADMPRDH') 
		AND T.OWNER = 'PRDH'
/














grant update, insert, delete ON DIME.WD_FL_FILTRO_PF to ADMCGNI;
grant update, insert, delete ON DIME.wd_fl_pf to ADMCGNI;
grant update, insert, delete ON DIME.WD_FL_FILTRO_PJ_EMP to ADMCGNI;
grant update, insert, delete ON DIME.wd_fl_pj_emp to ADMCGNI;
grant update, insert, delete ON DIME.WD_FL_FILTRO_PJ_ESTAB to ADMCGNI;
grant update, insert, delete ON DIME.wd_fl_pj_estab to ADMCGNI;
grant update, insert, delete ON DIME.WD_FL_FILTRO_PROC to ADMCGNI;
grant update, insert, delete ON DIME.wd_fl_proc to ADMCGNI;
grant update, insert, delete ON DIME.WD_FL_FILTRO_GENERICO_NUM to ADMCGNI;
grant update, insert, delete on dime.wd_fl_generico_num to ADMCGNI;



--===========================================================================================================================================================
COBR_POC
TB_21764_COBR_STG_02
Banco de Dados: DWC01
IP: 10.50.240.135
Por ta: 1521

create user COBR_POC IDENTIFIED by "cobr_poc" default tablespace "TB_21764_COBR_STG_02";

grant resource, create table, create trigger, connect, create view, unlimited tablespace to COBR_POC;

--===========================================================================================================================================================
--observação o alter table tem que ter o owner no inicio e não no final conforme abaixo
Alter Table Adnf.Wf_Import_Rec_Tab Rename To Wf_Import_Rec_Tab_Old;
alter table adnf.WF_IMPORT_REC_NEW rename to WF_IMPORT_REC_TAB;

--===========================================================================================================================================================

2 Atividades

Por favor, abrir uma solicitação para a realização das alterações abaixo no ambiente de Homologação (DBHOM_33393_DWTG).

Arquivo em Anexo: TICKET-2110.txt

Grupo: GMCDDF

Favor abrir RS para a equipe SUPCD/CDBSA/CDSDW.

1. Dados do gestor do tema:
1.1 Nome : Andersson Sousa
1.2 E- mail: andersson.sousa@serpro.gov.br
1.3 Ramal: (61)7923
1.4 URC: SUNAF
1.5 Código de Serviço: 33393
1.6 Nome do Serviço: DW-TG (Tesouro Gerencial)

2 Atividades

Por favor, abrir uma solicitação para a realização das alterações abaixo no ambiente de Homologação (DBHOM_33393_DWTG).

2.2. Realizar as seguintes alterações na tabela WF_LANCAMENTO:

ALTER TABLE DBHOM_33393_DWTG.WF_LANCAMENTO ADD ID_TP_DOCUMENTO CHAR(2) NOT NULL DEFAULT '-9';
ALTER TABLE DBHOM_33393_DWTG.WF_LANCAMENTO ADD ID_UG_EMIT_DOC INTEGER NOT NULL DEFAULT -9;
ALTER TABLE DBHOM_33393_DWTG.WF_LANCAMENTO ADD CO_UG_EMIT_DOC CHAR(6) NOT NULL DEFAULT '-9';
ALTER TABLE DBHOM_33393_DWTG.WF_LANCAMENTO ADD CO_UG_EXEC CHAR(6) NOT NULL DEFAULT '-9';

   
REPLACE VIEW MS_33393_DWTG_HOM.WF_LANCAMENTO AS LOCK ROW FOR ACCESS SELECT * FROM DBHOM_33393_DWTG.WF_LANCAMENTO;

ALTER TABLE DBHOM_33393_DWTG.WF_LANCAMENTO_EP01 ADD CO_UG_EXEC CHAR(6) NOT NULL DEFAULT '-9';
ALTER TABLE DBHOM_33393_DWTG.WF_LANCAMENTO_EP02 ADD CO_UG_EXEC CHAR(6) NOT NULL DEFAULT '-9';
ALTER TABLE DBHOM_33393_DWTG.WF_LANCAMENTO_EP03 ADD CO_UG_EXEC CHAR(6) NOT NULL DEFAULT '-9';
ALTER TABLE DBHOM_33393_DWTG.WF_LANCAMENTO_EP04 ADD CO_UG_EXEC CHAR(6) NOT NULL DEFAULT '-9';
ALTER TABLE DBHOM_33393_DWTG.WF_LANCAMENTO_EP20 ADD CO_UG_EXEC CHAR(6) NOT NULL DEFAULT '-9';

REPLACE VIEW MS_33393_DWTG_HOM.WF_LANCAMENTO_EP01 AS LOCK ROW FOR ACCESS SELECT * FROM DBHOM_33393_DWTG.WF_LANCAMENTO_EP01;
REPLACE VIEW MS_33393_DWTG_HOM.WF_LANCAMENTO_EP02 AS LOCK ROW FOR ACCESS SELECT * FROM DBHOM_33393_DWTG.WF_LANCAMENTO_EP02;
REPLACE VIEW MS_33393_DWTG_HOM.WF_LANCAMENTO_EP03 AS LOCK ROW FOR ACCESS SELECT * FROM DBHOM_33393_DWTG.WF_LANCAMENTO_EP03;
REPLACE VIEW MS_33393_DWTG_HOM.WF_LANCAMENTO_EP04 AS LOCK ROW FOR ACCESS SELECT * FROM DBHOM_33393_DWTG.WF_LANCAMENTO_EP04;
REPLACE VIEW MS_33393_DWTG_HOM.WF_LANCAMENTO_EP20 AS LOCK ROW FOR ACCESS SELECT * FROM DBHOM_33393_DWTG.WF_LANCAMENTO_EP20;

no outro script
2.3. Alterar os scripts de geração das tabelas agregadas de Homologação (DBHOM_33393_DWTG) para incluir a nova coluna (CO_UG_EXEC CHAR(6)) criada na WF_LANCAMENTO.

2.4. Realizar a geração das seguintes tabelas agregadas de Lançamento em Homologação (DBHOM_33393_DWTG):
incluvise a lanpçametno
- WF_LANCAMENTO_EP01
- WF_LANCAMENTO_EP02
- WF_LANCAMENTO_EP03
- WF_LANCAMENTO_EP04
- WF_LANCAMENTO_EP20



--===========================================================================================================================================================
-- AGUARDAR SAMUEL
corrigidno teradata.

ALTER TABLE empregados DROP COLUMN sexo

ALTER TABLE DBHOM_33393_DWTG.WF_LANCAMENTO DROP ID_TP_DOCUMENTO;
ALTER TABLE DBHOM_33393_DWTG.WF_LANCAMENTO DROP ID_UG_EMIT_DOC;
ALTER TABLE DBHOM_33393_DWTG.WF_LANCAMENTO DROP CO_UG_EMIT_DOC;
ALTER TABLE DBHOM_33393_DWTG.WF_LANCAMENTO DROP CO_UG_EXEC;


ALTER TABLE DBHOM_33393_DWTG.WF_LANCAMENTO_EP01 DROP CO_UG_EXEC;
ALTER TABLE DBHOM_33393_DWTG.WF_LANCAMENTO_EP02 DROP CO_UG_EXEC;
ALTER TABLE DBHOM_33393_DWTG.WF_LANCAMENTO_EP03 DROP CO_UG_EXEC;
ALTER TABLE DBHOM_33393_DWTG.WF_LANCAMENTO_EP04 DROP CO_UG_EXEC;
ALTER TABLE DBHOM_33393_DWTG.WF_LANCAMENTO_EP20 DROP CO_UG_EXEC;

--===========================================================================================================================================================
Demanda : configurar no ambiente de banco de homologação do DW Corporativo RFB(dwh01) as tabelas usadas pela aplicação CargaNI para leitura e gravação pelo usuário admcrgni
Ambiente: homologação

Descrição Detalhada: Deve ser dado privilégio ao usuário admcrgni de leitura e gravação nas tabelas da aplicação cargaNi no banco DWH01 do DW Corporativo RFB: 
ADMCGNI
DWH01
grant update, insert, delete on DIME.WD_FL_FILTRO_PF to ADMCGNI;
grant update, insert, delete on DIME.wd_fl_pf to ADMCGNI;
grant update, insert, delete on DIME.WD_FL_FILTRO_PJ_EMP to ADMCGNI;
grant update, insert, delete on DIME.wd_fl_pj_emp to ADMCGNI;
grant update, insert, delete on DIME.WD_FL_FILTRO_PJ_ESTAB to ADMCGNI;
grant update, insert, delete on DIME.wd_fl_pj_estab to ADMCGNI;
grant update, insert, delete on DIME.WD_FL_FILTRO_PROC to ADMCGNI;
grant update, insert, delete on DIME.wd_fl_proc to ADMCGNI;
grant update, insert, delete on DIME.WD_FL_FILTRO_GENERICO_NUM to ADMCGNI;
grant update, insert, delete on DIME.WD_FL_GENERICO_NUM to ADMCGNI;

--===========================================================================================================================================================

--**************************************************************************************************************************************************
BIMD002
MSTR941PRODMDTEMP - ANTIGO
MS104PCONDMD  -  64 gb - 

TABLESPACE				  Extensivel (Mb)  Alocado (Mb) 	 (Mb)	      (Mb)   Livre	(Mb) Fragmentacao
---------------------------------------- ---------------- ------------- ------------- ------------- ------ --------- ------------
TB_07651_MSTR941PUBHIST_DAT_01			131,068.0     113,981.0     105,483.2	    8,497.8    7.5   3,968.0	      4.0
					 ---------------- ------------- ------------- -------------
sum						131,068.0     113,981.0     105,483.2	    8,497.8

CREATE TABLESPACE TB_07651_MS104PCONDMD_DAT_01 DATAFILE '+DG_BSA097/p_07651_mstr/bimd002/tb_07651_ms104pcondmd_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
ALTER TABLESPACE TB_07651_MS104PCONDMD_DAT_01 ADD DATAFILE '+DG_BSA097/p_07651_mstr/bimd002/tb_07651_ms104pcondmd_dat_01_002.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD002 PARA O TABLESPACE CRIADO----------------------------------------
create user MS104PCONDMD IDENTIFIED by "456prodcond321$bsamd" default tablespace "TB_07651_MS104PCONDMD_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS104PCONDMD;
--------------------------------------------------------------------------------------------------------------------------------------------
Executar amanhã de manhã.

comando para matar as sessões no banco se estiver alguma on-line

alter user MSTR941PRODMDTEMP account lock;

@sessoes
ALTER SYSTEM KILL SESSION '1, 81';


nohup impdp dwpub/dwpubmd@bimd002 directory=DWPUB_DATAPUMP network_link=DBL_BIMD002 schemas=MSTR941PRODMDTEMP remap_schema=MSTR941PRODMDTEMP:MS104PCONDMD remap_tablespace=TB_07651_MSTR941PROMD_DAT_02:TB_07651_MS104PCONDMD_DAT_01 nologfile=y > importmetadados20161027.log &

--**************************************************************************************************************************************************
Sugestão de grupo: GMCDDFPUBDW

1. Descrição da demanda: Solicito a desativação dos bancos de dados DBH_33393_DWTG_STG e ORACLE_33393_DWTG, Ambiente exclusivo do Tesouro Gerencial - TG.
2. Número do SISCOR: 028911/2016-50
3. Nome do cliente: Secretaria do Tesouro Nacional - STN
4. Nome do serviço: DW TG - Ambiente Exclusivo
5. Código do serviço: 33393
6. Data/Hora da expectativa da desativação do Serviço: imediata
7. Será substitui por outro serviço? (SIM ou NÃO): Não
8. O que será desativado? (Banco, Aplicação ou Ambos): Banco
9. Informar a necessidade de backup: Realizar backup da estrutura e dados
9.1. Tempo de retenção do backup e quantidade de cópias: 06 meses
10. Serviço possui comunidade? (SIM ou NÃO) Qual o grupo? Não
11. Motivo da desativação: Solicitação do cliente
12. UG de Serviço : SUNAF
13. Ambiente : Exclusivo
14. URL de referência : Não se aplica.
15. Plataforma da aplicação: Unix
16. Equipe Responsável pela execução da mudança :
17. Pasta no ftp (se for o caso): Não se aplica.
18. Sugestão de Grupo na ferramenta de workflow: GMCDDFPUBDW

--**************************************************************************************************************************************************
26,882,43
backup para 
bimd004
ms941desstnmd

create user MS941DESSTNMD_BKP IDENTIFIED by "456prodcond321$bsamd" default tablespace "TB_07651_MS941DESSTNMD_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS941DESSTNMD_BKP;

alter user MS941DESSTNMD_BKP account lock;

nohup impdp dwpub/dwpubmd@bimd004 directory=DWPUB_DATAPUMP network_link=DBL_BIMD004 schemas=MS941DESSTNMD remap_schema=MS941DESSTNMD:MS941DESSTNMD_BKP remap_tablespace=TB_07651_MS941DESSTNMD_DAT_01:TB_07651_MS941DESSTNMD_DAT_01 nologfile=y > importmetadados20161027.log &

--**************************************************************************************************************************************************
apgando o usuário da lista de historico no banco bimd002 - da produção 
drop user MSTR941PUBHIST cascade;
MSTR941PUBHIST

apgar também depois a tablespace.


--**************************************************************************************************************************************************
--QUINTA FEIRA PERGUNTAR PARA FERNANDA POR QUE A TABLESPACE DA LISTA DE HISTÓRICO ESTÁ VINCULADO A ESSA BACKUP AQUI - PERGUNTAR SE PODE LIMAR TAMBÉM.

20:50:08 DWPUB:bimd002 > @tamanho_esquema
Enter value for nome_owner: PESSOAL_BKP

SEGMENT_TYPE		       TAMANHO_MB
------------------------------ ----------
INDEX				 1164,375
TABLE				1033,6875
			       ----------
sum				2198,0625

--**************************************************************************************************************************************************
--OK EXECUTADO.
Banco de dados: DWH01
Schema: SCND
Plataforma: Avançada ( Oracle)
IP: 10.50.240.237
Codigo Sistema: 08148
Tema: DW CND

Favor desanexar o arquivo ALTER_PCPO_HOM.sql
e executar no banco de homologação DWH01, schema SCND.
Favor retornar a log gerada: ALTER_PCPO_HOM.log

Favor enviar para o grupo: GMCDDFPUBDW

--**************************************************************************************************************************************************
c01689999195
c016899$

c07104706739
c071047$

c16531907878
c165319$
--**************************************************************************************************************************************************
RS - 2016RS/000325713 --SUSPENSO PARA O OUTRO FINAL DE SEMANA--
1. Realizar as seguintes alteraÇÃ§Ãµes na tabela WF_LANCAMENTO:

ALTER TABLE DBPRO_33393_DWTG.WF_LANCAMENTO ADD ID_TP_DOCUMENTO CHAR(2) NOT NULL DEFAULT '-9';
ALTER TABLE DBPRO_33393_DWTG.WF_LANCAMENTO ADD ID_UG_EMIT_DOC INTEGER NOT NULL DEFAULT -9;
ALTER TABLE DBPRO_33393_DWTG.WF_LANCAMENTO ADD CO_UG_EMIT_DOC CHAR(6) NOT NULL DEFAULT '-9';
ALTER TABLE DBPRO_33393_DWTG.WF_LANCAMENTO ADD CO_UG_EXEC CHAR(6) NOT NULL DEFAULT '-9';

REPLACE VIEW MS_33393_DWTG_PRO.WF_LANCAMENTO AS LOCKING ROW FOR ACCESS SELECT * FROM DBPRO_33393_DWTG.WF_LANCAMENTO;

ALTER TABLE DBPRO_33393_DWTG.WF_LANCAMENTO_EP01 ADD CO_UG_EXEC CHAR(6) NOT NULL DEFAULT '-9';
ALTER TABLE DBPRO_33393_DWTG.WF_LANCAMENTO_EP02 ADD CO_UG_EXEC CHAR(6) NOT NULL DEFAULT '-9';
ALTER TABLE DBPRO_33393_DWTG.WF_LANCAMENTO_EP03 ADD CO_UG_EXEC CHAR(6) NOT NULL DEFAULT '-9';
ALTER TABLE DBPRO_33393_DWTG.WF_LANCAMENTO_EP04 ADD CO_UG_EXEC CHAR(6) NOT NULL DEFAULT '-9';
ALTER TABLE DBPRO_33393_DWTG.WF_LANCAMENTO_EP20 ADD CO_UG_EXEC CHAR(6) NOT NULL DEFAULT '-9';

REPLACE VIEW MS_33393_DWTG_PRO.WF_LANCAMENTO_EP01 AS LOCK ROW FOR ACCESS SELECT * FROM DBPRO_33393_DWTG.WF_LANCAMENTO_EP01;
REPLACE VIEW MS_33393_DWTG_PRO.WF_LANCAMENTO_EP02 AS LOCK ROW FOR ACCESS SELECT * FROM DBPRO_33393_DWTG.WF_LANCAMENTO_EP02;
REPLACE VIEW MS_33393_DWTG_PRO.WF_LANCAMENTO_EP03 AS LOCK ROW FOR ACCESS SELECT * FROM DBPRO_33393_DWTG.WF_LANCAMENTO_EP03;
REPLACE VIEW MS_33393_DWTG_PRO.WF_LANCAMENTO_EP04 AS LOCK ROW FOR ACCESS SELECT * FROM DBPRO_33393_DWTG.WF_LANCAMENTO_EP04;
REPLACE VIEW MS_33393_DWTG_PRO.WF_LANCAMENTO_EP20 AS LOCK ROW FOR ACCESS SELECT * FROM DBPRO_33393_DWTG.WF_LANCAMENTO_EP20;

2. Alterar os scripts de geraÃ§Ã£o das tabelas agregadas para incluir a nova coluna (CO_UG_EXEC CHAR(6)) criada na WF_LANCAMENTO.

REPLACE VIEW DBPRO_33393_DWTG.WF_LANCAMENTO_EP01 AS 
SELECT
    ROW_NUMBER() OVER (ORDER BY ID_ANO_LANC, ID_MES_LANC) AS NR_NUMBER, 
    IN_VALIDADE_CCOR,
    ID_CONTA_CONTABIL_LANC,
    ID_ANO_LANC,
    ID_MES_LANC,
    ID_UG_EXEC,
    ID_MOEDA_UG_EXEC_H,
    ID_ORGAO_EXEC_H,
    ID_ORGAO_SUPE_EXEC_H,
    ID_ORGAO_MAXI_EXEC_H,
    ID_ORCA_FISCAL_ORGAO_EXEC_H,
    ID_TP_ADMIN_ORGAO_EXEC_H,
    ID_ORGAO_EMIT_DOC_H,
    ID_ORGAO_SUPE_EMIT_DOC_H,
    ID_ORGAO_MAXI_EMIT_DOC_H,
    ID_ESFERA_ORCAMENTARIA,
    ID_FONTE_RECURSO_DETA,
    ID_CATEGORIA_ECONOMICA_NADE,
    ID_GRUPO_DESPESA_NADE,
    ID_MOAP_NADE,
    ID_ELEMENTO_DESPESA_NADE,
    ID_SUBITEM_NADE,
    ID_UG_RESP,
    ID_ORGAO_PI,
    ID_PI,
    ID_PTRES,
    ID_RESULTADO_LEI,
    ID_TP_CREDITO,
    ID_UO,
    ID_PO,
    ID_ANO_CONTROLE,
    ID_MES_CONTROLE,
    ID_DIA_CONTROLE,
    ID_TV,
    ID_TP_TV,
    ID_BANCO,
    ID_AGENCIA_BANCARIA,
    ID_CONTA_BANCARIA,
    ID_CONTA_CORRENTE_SK,
    ID_TP_CCOR,
    ID_TP_ENTIDADE_CCOR,
    ID_ENTIDADE_CCOR,
    ID_DOCUMENTO_CCOR,
    ID_RECURSO,
    ID_RECEITA,
    ID_DESTINACAO_RECEITA,
    ID_CATEGORIA_ECONOMICA_NARE,
    ID_ORIGEM_RECEITA_NARE,
    ID_ESPECIE_RECEITA_NARE,
    ID_RUBRICA_NARE,
    ID_ALINEA_NARE,
    ID_SUBALINEA_NARE,  
    ID_ORGAO_CENTRO_CUSTO,
    ID_CENTRO_CUSTO,
    ID_UG_CCOR,
    ID_ORGAO_CCOR,
    ID_GESTAO_CCOR,
    ID_UF_CCOR,
    ID_FUNCAO_PT,
    ID_SUBFUNCAO_PT,
    ID_PROGRAMA_PT,
    ID_ACAO_PT,
    ID_LOCALIZADOR_GASTO_PT,
    ID_MUNICIPIO_REME,
    ID_RECEITA_MUNICIPAL_ESTADUAL,
    ID_UG_UF,
    ID_CELULA_ORCAMENTARIA_SK,
    ID_DIVIDA_EXTERNA,
    ID_ANO_CCOR,
    ID_MES_CCOR,
    ID_ANO_SAQUE,
    ID_MES_SAQUE,
    ID_IDOC,
    ID_DESTINACAO_RECOLHIMENTO,
    ID_RECOLHIMENTO_GRU,
    ID_PAGAMENTO_GPS,
    ID_GFIP,
    ID_VINCULACAO_PAGAMENTO,
    ID_TP_ENTIDADE_IG_CCOR,
    ID_ENTIDADE_IG_CCOR,
    ID_TP_ARRECADACAO,
    ID_CONTA_CONTABIL_REFE,
    ID_CATEGORIA_GASTO_CCOR,
    ID_TP_DOC_CCOR,
    ID_UG_DOC_HABIL,
    ID_DOC_HABIL,
    ID_ANO_TAXA_CAMBIO_CCOR,
    ID_MES_TAXA_CAMBIO_CCOR,
    ID_DIA_TAXA_CAMBIO_CCOR,
    ID_IN_RESULTADO_RECEITA,
    ID_TP_DESPESA,
    ID_GRUPO_DE_FONTE,
    ID_CONTA_CONTABIL_CLAS_1,
    ID_BANCO_ARRECADADOR,       
    CAST(SUM(QT_LANCAMENTO) AS NUMBER(18,0)) QT_LANCAMENTO,
    CAST(SUM(VA_CREDITO) AS DECIMAL(18,2)) VA_CREDITO,
    CAST(SUM(VA_DEBITO) AS DECIMAL(18,2)) VA_DEBITO,
    CAST(SUM(VA_MOVIMENTO_LIQUIDO) AS DECIMAL(18,2)) VA_MOVIMENTO_LIQUIDO,
    ID_CATEGORIA_ECONOMICA2_NARE,
    ID_ORIGEM_RECEITA2_NARE,
    ID_ESPECIE_RECEITA2_NARE,
    ID_RUBRICA2_NARE,
    ID_ALINEA2_NARE,
    ID_SUBALINEA2_NARE,   
    ID_TIPO_RECEITA2_NARE,
    CO_UG_EXEC
FROM DBPRO_33393_DWTG.WF_LANCAMENTO 
GROUP BY 
    IN_VALIDADE_CCOR,
    ID_CONTA_CONTABIL_LANC,
    ID_ANO_LANC,
    ID_MES_LANC,
    ID_UG_EXEC,
    ID_MOEDA_UG_EXEC_H,
    ID_ORGAO_EXEC_H,
    ID_ORGAO_SUPE_EXEC_H,
    ID_ORGAO_MAXI_EXEC_H,
    ID_ORCA_FISCAL_ORGAO_EXEC_H,
    ID_TP_ADMIN_ORGAO_EXEC_H,
    ID_ORGAO_EMIT_DOC_H,
    ID_ORGAO_SUPE_EMIT_DOC_H,
    ID_ORGAO_MAXI_EMIT_DOC_H,
    ID_ESFERA_ORCAMENTARIA,
    ID_FONTE_RECURSO_DETA,
    ID_CATEGORIA_ECONOMICA_NADE,
    ID_GRUPO_DESPESA_NADE,
    ID_MOAP_NADE,
    ID_ELEMENTO_DESPESA_NADE,
    ID_SUBITEM_NADE,
    ID_UG_RESP,
    ID_ORGAO_PI,
    ID_PI,
    ID_PTRES,
    ID_RESULTADO_LEI,
    ID_TP_CREDITO,
    ID_UO,
    ID_PO,
    ID_ANO_CONTROLE,
    ID_MES_CONTROLE,
    ID_DIA_CONTROLE,
    ID_TV,
    ID_TP_TV,
    ID_BANCO,
    ID_AGENCIA_BANCARIA,
    ID_CONTA_BANCARIA,
    ID_CONTA_CORRENTE_SK,
    ID_TP_CCOR,
    ID_TP_ENTIDADE_CCOR,
    ID_ENTIDADE_CCOR,
    ID_DOCUMENTO_CCOR,
    ID_RECURSO,
    ID_RECEITA,
    ID_DESTINACAO_RECEITA,
    ID_CATEGORIA_ECONOMICA_NARE,
    ID_ORIGEM_RECEITA_NARE,
    ID_ESPECIE_RECEITA_NARE,
    ID_RUBRICA_NARE,
    ID_ALINEA_NARE,
    ID_SUBALINEA_NARE,
    ID_ORGAO_CENTRO_CUSTO,
    ID_CENTRO_CUSTO,
    ID_UG_CCOR,
    ID_ORGAO_CCOR,
    ID_GESTAO_CCOR,
    ID_UF_CCOR,
    ID_FUNCAO_PT,
    ID_SUBFUNCAO_PT,
    ID_PROGRAMA_PT,
    ID_ACAO_PT,
    ID_LOCALIZADOR_GASTO_PT,
    ID_MUNICIPIO_REME,
    ID_RECEITA_MUNICIPAL_ESTADUAL,
    ID_UG_UF,
    ID_CELULA_ORCAMENTARIA_SK,
    ID_DIVIDA_EXTERNA,
    ID_ANO_CCOR,
    ID_MES_CCOR,
    ID_ANO_SAQUE,
    ID_MES_SAQUE,
    ID_IDOC,
    ID_DESTINACAO_RECOLHIMENTO,
    ID_RECOLHIMENTO_GRU,
    ID_PAGAMENTO_GPS,
    ID_GFIP,
    ID_VINCULACAO_PAGAMENTO,
    ID_TP_ENTIDADE_IG_CCOR,
    ID_ENTIDADE_IG_CCOR,
    ID_TP_ARRECADACAO,
    ID_CONTA_CONTABIL_REFE,
    ID_CATEGORIA_GASTO_CCOR,
    ID_TP_DOC_CCOR,
    ID_UG_DOC_HABIL,
    ID_DOC_HABIL,
    ID_ANO_TAXA_CAMBIO_CCOR,
    ID_MES_TAXA_CAMBIO_CCOR,
    ID_DIA_TAXA_CAMBIO_CCOR,
    ID_IN_RESULTADO_RECEITA,
    ID_TP_DESPESA,
    ID_GRUPO_DE_FONTE,
    ID_CONTA_CONTABIL_CLAS_1,
    ID_BANCO_ARRECADADOR,
    ID_CATEGORIA_ECONOMICA2_NARE,
    ID_ORIGEM_RECEITA2_NARE,
    ID_ESPECIE_RECEITA2_NARE,
    ID_RUBRICA2_NARE,
    ID_ALINEA2_NARE,
    ID_SUBALINEA2_NARE,   
    ID_TIPO_RECEITA2_NARE,
    CO_UG_EXEC
;
 
replace view DBPRO_33393_DWTG.WF_LANCAMENTO_EP02 AS 
SELECT ID_CONTA_CONTABIL_LANC,
      ID_ANO_LANC,
      ID_MES_LANC,
      ID_UG_EXEC,
      ID_MOEDA_UG_EXEC_H,
      ID_ORGAO_EXEC_H,
      ID_ORGAO_SUPE_EXEC_H,
      ID_ORGAO_MAXI_EXEC_H,
      ID_ORCA_FISCAL_ORGAO_EXEC_H,
      ID_TP_ADMIN_ORGAO_EXEC_H,
      CAST(sum(QT_LANCAMENTO) AS NUMBER(18,0)) QT_LANCAMENTO,
      CAST(sum(VA_CREDITO) AS DECIMAL(18,2)) VA_CREDITO,
      CAST(sum(VA_DEBITO) AS DECIMAL(18,2)) VA_DEBITO,
      CAST(sum(VA_MOVIMENTO_LIQUIDO) AS DECIMAL(18,2)) VA_MOVIMENTO_LIQUIDO,
      CO_UG_EXEC
FROM DBPRO_33393_DWTG.WF_LANCAMENTO 
GROUP BY 
      ID_CONTA_CONTABIL_LANC,
      ID_ANO_LANC,
      ID_MES_LANC,
      ID_UG_EXEC,
      ID_MOEDA_UG_EXEC_H,
      ID_ORGAO_EXEC_H,
      ID_ORGAO_SUPE_EXEC_H,
      ID_ORGAO_MAXI_EXEC_H,
      ID_ORCA_FISCAL_ORGAO_EXEC_H,
      ID_TP_ADMIN_ORGAO_EXEC_H,
      CO_UG_EXEC
;
 
replace view DBPRO_33393_DWTG.WF_LANCAMENTO_EP03 
AS SELECT 
      ID_CONTA_CONTABIL_LANC,
      ID_ANO_LANC,
      ID_MES_LANC,
      ID_UG_EXEC,
      ID_MOEDA_UG_EXEC_H,
      ID_ORGAO_EXEC_H,
      ID_ORGAO_SUPE_EXEC_H,
      ID_ORGAO_MAXI_EXEC_H,
      ID_ORCA_FISCAL_ORGAO_EXEC_H,
      ID_TP_ADMIN_ORGAO_EXEC_H,
      ID_PTRES,
      ID_UO,
      ID_FUNCAO_PT,
      ID_SUBFUNCAO_PT,
      ID_PROGRAMA_PT,
      ID_ACAO_PT,
      ID_LOCALIZADOR_GASTO_PT,
      ID_PO,
      CAST(sum(QT_LANCAMENTO) AS NUMBER(18,0)) QT_LANCAMENTO,
      CAST(sum(VA_CREDITO) AS DECIMAL(18,2)) VA_CREDITO,
      CAST(sum(VA_DEBITO) AS DECIMAL(18,2)) VA_DEBITO,
      CAST(sum(VA_MOVIMENTO_LIQUIDO) AS DECIMAL(18,2)) VA_MOVIMENTO_LIQUIDO,
      CO_UG_EXEC
FROM DBPRO_33393_DWTG.WF_LANCAMENTO 
GROUP BY 
      ID_CONTA_CONTABIL_LANC,
      ID_ANO_LANC,
      ID_MES_LANC,
      ID_UG_EXEC,
      ID_MOEDA_UG_EXEC_H,
      ID_ORGAO_EXEC_H,
      ID_ORGAO_SUPE_EXEC_H,
      ID_ORGAO_MAXI_EXEC_H,
      ID_ORCA_FISCAL_ORGAO_EXEC_H,
      ID_TP_ADMIN_ORGAO_EXEC_H,
      ID_PTRES,
      ID_UO,
      ID_FUNCAO_PT,
      ID_SUBFUNCAO_PT,
      ID_PROGRAMA_PT,
      ID_ACAO_PT,
      ID_LOCALIZADOR_GASTO_PT,
      ID_PO,
      CO_UG_EXEC
;
 
replace view DBPRO_33393_DWTG.WF_LANCAMENTO_EP04 AS 
SELECT 
      ID_CONTA_CONTABIL_LANC,
      ID_ANO_LANC,
      ID_MES_LANC,
      ID_UG_EXEC,
      ID_MOEDA_UG_EXEC_H,
      ID_ORGAO_EXEC_H,
      ID_ORGAO_SUPE_EXEC_H,
      ID_ORGAO_MAXI_EXEC_H,
      ID_ORCA_FISCAL_ORGAO_EXEC_H,
      ID_TP_ADMIN_ORGAO_EXEC_H,
      ID_CATEGORIA_ECONOMICA_NADE,
      ID_GRUPO_DESPESA_NADE,
      ID_MOAP_NADE,
      ID_ELEMENTO_DESPESA_NADE,
      ID_SUBITEM_NADE,
      CAST(sum(QT_LANCAMENTO) AS NUMBER(18,0)) QT_LANCAMENTO,
      CAST(sum(VA_CREDITO) AS DECIMAL(18,2)) VA_CREDITO,
      CAST(sum(VA_DEBITO) AS DECIMAL(18,2)) VA_DEBITO,
      CAST(sum(VA_MOVIMENTO_LIQUIDO) AS DECIMAL(18,2)) VA_MOVIMENTO_LIQUIDO,
      CO_UG_EXEC
FROM DBPRO_33393_DWTG.WF_LANCAMENTO        
GROUP BY 
      ID_CONTA_CONTABIL_LANC,
      ID_ANO_LANC,
      ID_MES_LANC,
      ID_UG_EXEC,
      ID_MOEDA_UG_EXEC_H,
      ID_ORGAO_EXEC_H,
      ID_ORGAO_SUPE_EXEC_H,
      ID_ORGAO_MAXI_EXEC_H,
      ID_ORCA_FISCAL_ORGAO_EXEC_H,
      ID_TP_ADMIN_ORGAO_EXEC_H,
      ID_CATEGORIA_ECONOMICA_NADE,
      ID_GRUPO_DESPESA_NADE,
      ID_MOAP_NADE,
      ID_ELEMENTO_DESPESA_NADE,
      ID_SUBITEM_NADE,
      CO_UG_EXEC
;
 
replace view DBPRO_33393_DWTG.WF_LANCAMENTO_EP20 AS 
SELECT 
      IN_ISF_LANC,
      ID_CONTA_CONTABIL_LANC,
      ID_ANO_LANC,
      ID_MES_LANC,
      ID_UG_EXEC,
      ID_MOEDA_UG_EXEC_H,
      ID_ORGAO_EXEC_H,
      ID_ORGAO_SUPE_EXEC_H,
      ID_ORGAO_MAXI_EXEC_H,
      ID_ORCA_FISCAL_ORGAO_EXEC_H,
      ID_TP_ADMIN_ORGAO_EXEC_H,
      ID_ESFERA_ORCAMENTARIA,
      ID_FONTE_RECURSO_DETA,
      ID_CATEGORIA_ECONOMICA_NADE,
      ID_GRUPO_DESPESA_NADE,
      ID_MOAP_NADE,
      ID_ELEMENTO_DESPESA_NADE,
      ID_SUBITEM_NADE,
      ID_ORGAO_PI,
      ID_PI,
      ID_PTRES,
      ID_RESULTADO_LEI,
      ID_TP_CREDITO,
      ID_UO,
      ID_PO,
      ID_CONTA_CORRENTE_SK,
      ID_TP_CCOR,
      ID_TP_ENTIDADE_CCOR,
      ID_ENTIDADE_CCOR,
      ID_DOCUMENTO_CCOR,
      ID_RECEITA,
      ID_DESTINACAO_RECEITA,
      ID_CATEGORIA_ECONOMICA_NARE,
      ID_ORIGEM_RECEITA_NARE,
      ID_ESPECIE_RECEITA_NARE,
      ID_RUBRICA_NARE,
      ID_ALINEA_NARE,
      ID_SUBALINEA_NARE,      
      ID_UG_CCOR,
      ID_ORGAO_CCOR,
      ID_GESTAO_CCOR,
      ID_FUNCAO_PT,
      ID_SUBFUNCAO_PT,
      ID_PROGRAMA_PT,
      ID_ACAO_PT,
      ID_LOCALIZADOR_GASTO_PT,
      ID_CELULA_ORCAMENTARIA_SK,
      ID_TP_ENTIDADE_IG_CCOR,
      ID_ENTIDADE_IG_CCOR,
      ID_TP_ARRECADACAO,
      CAST(sum(QT_LANCAMENTO) AS NUMBER(18,0)) QT_LANCAMENTO,
      CAST(sum(VA_CREDITO) AS DECIMAL(18,2)) VA_CREDITO,
      CAST(sum(VA_DEBITO) AS DECIMAL(18,2)) VA_DEBITO,
      CAST(sum(VA_MOVIMENTO_LIQUIDO) AS DECIMAL(18,2)) VA_MOVIMENTO_LIQUIDO,
         ID_CATEGORIA_ECONOMICA2_NARE,
      ID_ORIGEM_RECEITA2_NARE,
      ID_ESPECIE_RECEITA2_NARE,
      ID_RUBRICA2_NARE,
      ID_ALINEA2_NARE,
      ID_SUBALINEA2_NARE,   
      ID_TIPO_RECEITA2_NARE,
      CO_UG_EXEC
FROM DBPRO_33393_DWTG.WF_LANCAMENTO     
GROUP BY 
      IN_ISF_LANC,
      ID_CONTA_CONTABIL_LANC,
      ID_ANO_LANC,
      ID_MES_LANC,
      ID_UG_EXEC,
      ID_MOEDA_UG_EXEC_H,
      ID_ORGAO_EXEC_H,
      ID_ORGAO_SUPE_EXEC_H,
      ID_ORGAO_MAXI_EXEC_H,
      ID_ORCA_FISCAL_ORGAO_EXEC_H,
      ID_TP_ADMIN_ORGAO_EXEC_H,
      ID_ESFERA_ORCAMENTARIA,
      ID_FONTE_RECURSO_DETA,
      ID_CATEGORIA_ECONOMICA_NADE,
      ID_GRUPO_DESPESA_NADE,
      ID_MOAP_NADE,
      ID_ELEMENTO_DESPESA_NADE,
      ID_SUBITEM_NADE,
      ID_ORGAO_PI,
      ID_PI,
      ID_PTRES,
      ID_RESULTADO_LEI,
      ID_TP_CREDITO,
      ID_UO,
      ID_PO,
      ID_CONTA_CORRENTE_SK,
      ID_TP_CCOR,
      ID_TP_ENTIDADE_CCOR,
      ID_ENTIDADE_CCOR,
      ID_DOCUMENTO_CCOR,
      ID_RECEITA,
      ID_DESTINACAO_RECEITA,
      ID_CATEGORIA_ECONOMICA_NARE,
      ID_ORIGEM_RECEITA_NARE,
      ID_ESPECIE_RECEITA_NARE,
      ID_RUBRICA_NARE,
      ID_ALINEA_NARE,
      ID_SUBALINEA_NARE,
      ID_UG_CCOR,
      ID_ORGAO_CCOR,
      ID_GESTAO_CCOR,
      ID_FUNCAO_PT,
      ID_SUBFUNCAO_PT,
      ID_PROGRAMA_PT,
      ID_ACAO_PT,
      ID_LOCALIZADOR_GASTO_PT,
      ID_CELULA_ORCAMENTARIA_SK,
      ID_TP_ENTIDADE_IG_CCOR,
      ID_ENTIDADE_IG_CCOR,
      ID_TP_ARRECADACAO,      
      ID_CATEGORIA_ECONOMICA2_NARE,
      ID_ORIGEM_RECEITA2_NARE,
      ID_ESPECIE_RECEITA2_NARE,
      ID_RUBRICA2_NARE,
      ID_ALINEA2_NARE,
      ID_SUBALINEA2_NARE,   
      ID_TIPO_RECEITA2_NARE,
      CO_UG_EXEC
   ; 

3. Publicar a tabela WF_LANCAMENTO do ambiente de carga DBCAR_33393_DWTG para o ambiente de ProduÃ§Ã£o (DBPRO_33393_DWTG).

4. Realizar a geraÃ§Ã£o das seguintes tabelas agregadas de LanÃ§amento:
- WF_LANCAMENTO_EP01
- WF_LANCAMENTO_EP02
- WF_LANCAMENTO_EP03
- WF_LANCAMENTO_EP04
- WF_LANCAMENTO_EP20

5. Publicar a tabela WD_SUBORGAO_UG do ambiente de carga DBCAR_33393_DWTG para o ambiente de ProduÃ§Ã£o (DBPRO_33393_DWTG).

6. Recriar a view da tabela WD_SUBORGAO_UG no ambiente do Microstrategy de ProduÃ§Ã£o (MS_33393_DWTG_PRO)
REPLACE VIEW MS_33393_DWTG_PRO.WD_SUBORGAO_UG AS LOCKING ROW FOR ACCESS SELECT * FROM DBPRO_33393_DWTG.WD_SUBORGAO_UG.

--***************************************************************************************************************************
dbcar_33393_dwtg_hom - novo banco. colocar somente a estrutura igual ao dbcar ok.

Css,
Esta demanda é uma Requisição de Mudança (GMCDDF).
Por favor encaminhar para GMCDDFPUBDW.
Prazo de atendimento da demanda: 10 Dias

1. Dados do Gestor do Tema
1.1 Nome: Andersson Sousa
1.2 E-mail: andersson.sousa@serpro.gov.br
1.3 Ramal: 61 7923
1.4 Celular:

2. Dados do Chefe do Desenvolvimento
2.1 Nome: Akemi Adachi
2.2 E-mail: akemi.adachi@serpro.gov.br
2.3 Ramal: 85 2836
2.4 Celular de plantão:

3. Dados do Serviço
3.1 URC: SUNAF
3.2 Cliente Externo: STN
3.3 Nome do Serviço: Tesouro Gerencial - Banco de Dados de Carga - Homologação
3.4 Código do Serviço: 33393
3.5 Número CPS:
3.6 Qual Arquitetura do Serviço?
(x) Data Warehouse Corporativo da STN

4. Qual Ambiente?

5. Área alocada para dados (GB)?
1 Terabyte

--***************************************************************************************************************************
criando o diretorio no diskgroup - com sysdba

--entrar como sysdba
sqlplus dwpub@bimd004 as sysdba - em Brasilia
sqlplus / as sysdba para são paulo

alter diskgroup DG_BSA097 add directory '+DG_BSA097/p_86010_pwrcenter/'; 
alter diskgroup DG_BSA097 add directory '+DG_BSA097/p_86010_pwrcenter/bimd002/';

3-PC961PFINCREP
## =====================================================================================================================================

CREATE TABLESPACE TB_86010_PC961PFINCREP_DAT_01 DATAFILE '+DG_BSA097/p_86010_pwrcenter/bimd002/tb_86010_pc961pfincrep_dat_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 6144M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD004 PARA O TABLESPACE CRIADO----------------------------------------
create user PC961PFINCREP2 IDENTIFIED by "456pctrprod321bsa" default tablespace "TB_86010_PC961PFINCREP_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961PFINCREP2;

--***************************************************************************************************************************
ver com Régio. -->> AGUARDANDO TICKET DA AKEMI PARA ALTERAR O BANCO 
demanda para atualizar para o novo banco.
REPLICAR_DBHOM_DIMENSOES.SH
REPLICAR_DBHOM_FATOS_OTHERS.SH
REPLICAR_DBHOM_FATOS_LANC.SH -->> só a lançamento mudar o nome do banco.

--***************************************************************************************************************************
demanda AKEMI - REGIO - PARA HOMOLOGAÇÃO. 10/11/2016

--1. Criacao das views no ambiente MS_33393_DWTG_HOM.

REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N01
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N01, 
                 S.DS_SIORG AS DS_SIORG_N01,
                 S.SG_SIORG AS SG_SIORG_N01,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N01,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N01,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N01,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N01,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N01,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N01,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N01,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N01,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N01,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N01,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N01,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N01,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N01
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S1 ON S1.CO_SIORG_N01 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;


REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N02
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N02, 
                 S.DS_SIORG AS DS_SIORG_N02,
                 S.SG_SIORG AS SG_SIORG_N02,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N02,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N02,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N02,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N02,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N02,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N02,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N02,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N02,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N02,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N02,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N02,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N02,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N02
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S2 ON S2.CO_SIORG_N02 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;

REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N03
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N03, 
                 S.DS_SIORG AS DS_SIORG_N03,
                 S.SG_SIORG AS SG_SIORG_N03,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N03,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N03,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N03,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N03,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N03,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N03,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N03,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N03,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N03,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N03,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N03,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N03,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N03
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S3 ON S3.CO_SIORG_N03 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;

REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N04
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N04, 
                 S.DS_SIORG AS DS_SIORG_N04,
                 S.SG_SIORG AS SG_SIORG_N04,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N04,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N04,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N04,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N04,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N04,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N04,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N04,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N04,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N04,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N04,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N04,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N04,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N04
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S4 ON S4.CO_SIORG_N04 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;

REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N05
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N05, 
                 S.DS_SIORG AS DS_SIORG_N05,
                 S.SG_SIORG AS SG_SIORG_N05,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N05,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N05,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N05,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N05,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N05,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N05,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N05,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N05,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N05,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N05,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N05,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N05,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N05
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S5 ON S5.CO_SIORG_N05 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;
		 
REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N06
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N06, 
                 S.DS_SIORG AS DS_SIORG_N06,
                 S.SG_SIORG AS SG_SIORG_N06,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N06,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N06,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N06,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N06,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N06,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N06,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N06,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N06,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N06,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N06,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N06,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N06,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N06
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S6 ON S6.CO_SIORG_N06 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;

REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N07
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N07, 
                 S.DS_SIORG AS DS_SIORG_N07,
                 S.SG_SIORG AS SG_SIORG_N07,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N07,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N07,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N07,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N07,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N07,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N07,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N07,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N07,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N07,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N07,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N07,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N07,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N07
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S7 ON S7.CO_SIORG_N07 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;

REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N08
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N08, 
                 S.DS_SIORG AS DS_SIORG_N08,
                 S.SG_SIORG AS SG_SIORG_N08,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N08,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N08,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N08,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N08,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N08,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N08,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N08,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N08,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N08,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N08,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N08,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N08,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N08
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S8 ON S8.CO_SIORG_N08 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;

REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N09
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N09, 
                 S.DS_SIORG AS DS_SIORG_N09,
                 S.SG_SIORG AS SG_SIORG_N09,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N09,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N09,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N09,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N09,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N09,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N09,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N09,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N09,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N09,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N09,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N09,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N09,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N09
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S9 ON S9.CO_SIORG_N09 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;

REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N10
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N10, 
                 S.DS_SIORG AS DS_SIORG_N10,
                 S.SG_SIORG AS SG_SIORG_N10,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N10,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N10,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N10,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N10,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N10,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N10,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N10,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N10,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N10,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N10,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N10,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N10,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N10
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S10 ON S10.CO_SIORG_N10 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;

REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N11
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N11, 
                 S.DS_SIORG AS DS_SIORG_N11,
                 S.SG_SIORG AS SG_SIORG_N11,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N11,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N11,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N11,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N11,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N11,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N11,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N11,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N11,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N11,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N11,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N11,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N11,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N11
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S11 ON S11.CO_SIORG_N11 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;

REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N12
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N12, 
                 S.DS_SIORG AS DS_SIORG_N12,
                 S.SG_SIORG AS SG_SIORG_N12,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N12,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N12,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N12,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N12,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N12,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N12,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N12,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N12,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N12,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N12,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N12,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N12,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N12
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S12 ON S12.CO_SIORG_N12 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;

REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N13
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N13, 
                 S.DS_SIORG AS DS_SIORG_N13,
                 S.SG_SIORG AS SG_SIORG_N13,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N13,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N13,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N13,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N13,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N13,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N13,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N13,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N13,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N13,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N13,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N13,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N13,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N13
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S13 ON S13.CO_SIORG_N13 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;

REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N14
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N14, 
                 S.DS_SIORG AS DS_SIORG_N14,
                 S.SG_SIORG AS SG_SIORG_N14,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N14,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N14,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N14,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N14,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N14,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N14,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N14,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N14,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N14,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N14,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N14,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N14,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N14
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S14 ON S14.CO_SIORG_N14 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;

REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N15
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N15, 
                 S.DS_SIORG AS DS_SIORG_N15,
                 S.SG_SIORG AS SG_SIORG_N15,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N15,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N15,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N15,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N15,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N15,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N15,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N15,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N15,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N15,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N15,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N15,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N15,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N15
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S15 ON S15.CO_SIORG_N15 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;

REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N16
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N16, 
                 S.DS_SIORG AS DS_SIORG_N16,
                 S.SG_SIORG AS SG_SIORG_N16,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N16,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N16,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N16,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N16,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N16,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N16,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N16,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N16,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N16,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N16,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N16,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N16,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N16
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S16 ON S16.CO_SIORG_N16 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;

REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N17
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N17, 
                 S.DS_SIORG AS DS_SIORG_N17,
                 S.SG_SIORG AS SG_SIORG_N17,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N17,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N17,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N17,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N17,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N17,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N17,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N17,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N17,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N17,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N17,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N17,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N17,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N17
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S17 ON S17.CO_SIORG_N17 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;

REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N18
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N18, 
                 S.DS_SIORG AS DS_SIORG_N18,
                 S.SG_SIORG AS SG_SIORG_N18,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N18,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N18,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N18,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N18,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N18,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N18,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N18,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N18,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N18,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N18,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N18,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N18,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N18
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S18 ON S18.CO_SIORG_N18 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;

REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N19
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N19, 
                 S.DS_SIORG AS DS_SIORG_N19,
                 S.SG_SIORG AS SG_SIORG_N19,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N19,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N19,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N19,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N19,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N19,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N19,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N19,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N19,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N19,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N19,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N19,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N19,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N19
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S19 ON S19.CO_SIORG_N19 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;

REPLACE VIEW MS_33393_DWTG_HOM.WV_SIORG_N20
AS
LOCKING ROW FOR ACCESS
SELECT S.CO_SIORG AS CO_SIORG_N20, 
                 S.DS_SIORG AS DS_SIORG_N20,
                 S.SG_SIORG AS SG_SIORG_N20,
                 S.ID_CATEGORIA_SIORG AS ID_CATEGORIA_SIORG_N20,
                 S.DS_CATEGORIA_SIORG AS DS_CATEGORIA_SIORG_N20,
                 S.DS_TP_ALTERACAO_SIORG AS DS_TP_ALTERACAO_SIORG_N20,
                 S.ID_ESFERA_SIORG AS ID_ESFERA_SIORG_N20,
                 S.DS_ESFERA_SIORG AS DS_ESFERA_SIORG_N20,
                 S.ID_PODER_SIORG AS ID_PODER_SIORG_N20,
                 S.DS_PODER_SIORG AS DS_PODER_SIORG_N20,
                 S.ID_NATUREZA_JURIDICA_SIORG AS ID_NATUREZA_JURIDICA_SIORG_N20,
                 S.DS_NATUREZA_JURIDICA_SIORG AS DS_NATUREZA_JURIDICA_SIORG_N20,
                 S.ID_SUBNATUREZA_JURIDICA_SIORG AS ID_SUBNATUREZA_JURIDICA_SIORG_N20,
                 S.DS_SUBNATUREZA_JURIDICA_SIORG AS DS_SUBNATUREZA_JURIDICA_SIORG_N20,
                 S.ID_TP_UNIDADE_SIORG AS ID_TP_UNIDADE_SIORG_N20,
                 S.DS_TP_UNIDADE_SIORG AS DS_TP_UNIDADE_SIORG_N20
FROM DBHOM_33393_DWTG.WD_SIORG S
JOIN DBHOM_33393_DWTG.WD_SIORG AS S20 ON S20.CO_SIORG_N20 = S.CO_SIORG
GROUP BY S.CO_SIORG, S.DS_SIORG, S.SG_SIORG, S.ID_CATEGORIA_SIORG, S.DS_CATEGORIA_SIORG, 
         S.DS_TP_ALTERACAO_SIORG, S.ID_ESFERA_SIORG, S.DS_ESFERA_SIORG, S.ID_PODER_SIORG, 
		 S.DS_PODER_SIORG, S.ID_NATUREZA_JURIDICA_SIORG, S.DS_NATUREZA_JURIDICA_SIORG, 
		 S.ID_SUBNATUREZA_JURIDICA_SIORG, S.DS_SUBNATUREZA_JURIDICA_SIORG, 
		 S.ID_TP_UNIDADE_SIORG, S.DS_TP_UNIDADE_SIORG;

--2. Criacao das tabelas com estrutura das views 
CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N01 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N01 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N01 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N01 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N01 INTEGER,
      DS_CATEGORIA_SIORG_N01 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N01 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N01 INTEGER,
      DS_ESFERA_SIORG_N01 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N01 INTEGER,
      DS_PODER_SIORG_N01 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N01 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N01 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N01 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N01 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N01 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N01 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N01 );

CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N02 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N02 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N02 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N02 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N02 INTEGER,
      DS_CATEGORIA_SIORG_N02 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N02 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N02 INTEGER,
      DS_ESFERA_SIORG_N02 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N02 INTEGER,
      DS_PODER_SIORG_N02 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N02 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N02 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N02 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N02 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N02 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N02 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N02 );

CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N03 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N03 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N03 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N03 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N03 INTEGER,
      DS_CATEGORIA_SIORG_N03 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N03 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N03 INTEGER,
      DS_ESFERA_SIORG_N03 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N03 INTEGER,
      DS_PODER_SIORG_N03 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N03 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N03 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N03 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N03 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N03 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N03 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N03 );

CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N04 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N04 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N04 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N04 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N04 INTEGER,
      DS_CATEGORIA_SIORG_N04 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N04 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N04 INTEGER,
      DS_ESFERA_SIORG_N04 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N04 INTEGER,
      DS_PODER_SIORG_N04 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N04 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N04 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N04 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N04 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N04 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N04 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N04 );

CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N05 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N05 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N05 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N05 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N05 INTEGER,
      DS_CATEGORIA_SIORG_N05 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N05 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N05 INTEGER,
      DS_ESFERA_SIORG_N05 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N05 INTEGER,
      DS_PODER_SIORG_N05 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N05 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N05 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N05 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N05 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N05 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N05 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N05 );

CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N06 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N06 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N06 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N06 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N06 INTEGER,
      DS_CATEGORIA_SIORG_N06 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N06 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N06 INTEGER,
      DS_ESFERA_SIORG_N06 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N06 INTEGER,
      DS_PODER_SIORG_N06 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N06 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N06 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N06 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N06 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N06 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N06 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N06 );

CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N07 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N07 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N07 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N07 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N07 INTEGER,
      DS_CATEGORIA_SIORG_N07 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N07 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N07 INTEGER,
      DS_ESFERA_SIORG_N07 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N07 INTEGER,
      DS_PODER_SIORG_N07 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N07 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N07 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N07 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N07 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N07 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N07 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N07 );

CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N08 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N08 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N08 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N08 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N08 INTEGER,
      DS_CATEGORIA_SIORG_N08 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N08 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N08 INTEGER,
      DS_ESFERA_SIORG_N08 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N08 INTEGER,
      DS_PODER_SIORG_N08 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N08 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N08 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N08 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N08 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N08 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N08 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N08 );

CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N09 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N09 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N09 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N09 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N09 INTEGER,
      DS_CATEGORIA_SIORG_N09 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N09 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N09 INTEGER,
      DS_ESFERA_SIORG_N09 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N09 INTEGER,
      DS_PODER_SIORG_N09 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N09 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N09 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N09 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N09 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N09 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N09 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N09 );

CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N10 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N10 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N10 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N10 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N10 INTEGER,
      DS_CATEGORIA_SIORG_N10 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N10 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N10 INTEGER,
      DS_ESFERA_SIORG_N10 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N10 INTEGER,
      DS_PODER_SIORG_N10 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N10 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N10 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N10 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N10 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N10 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N10 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N10 );

CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N11 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N11 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N11 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N11 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N11 INTEGER,
      DS_CATEGORIA_SIORG_N11 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N11 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N11 INTEGER,
      DS_ESFERA_SIORG_N11 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N11 INTEGER,
      DS_PODER_SIORG_N11 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N11 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N11 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N11 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N11 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N11 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N11 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N11 );

CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N12 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N12 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N12 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N12 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N12 INTEGER,
      DS_CATEGORIA_SIORG_N12 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N12 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N12 INTEGER,
      DS_ESFERA_SIORG_N12 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N12 INTEGER,
      DS_PODER_SIORG_N12 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N12 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N12 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N12 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N12 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N12 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N12 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N12 );

CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N13 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N13 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N13 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N13 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N13 INTEGER,
      DS_CATEGORIA_SIORG_N13 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N13 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N13 INTEGER,
      DS_ESFERA_SIORG_N13 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N13 INTEGER,
      DS_PODER_SIORG_N13 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N13 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N13 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N13 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N13 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N13 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N13 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N13 );

CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N14 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N14 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N14 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N14 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N14 INTEGER,
      DS_CATEGORIA_SIORG_N14 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N14 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N14 INTEGER,
      DS_ESFERA_SIORG_N14 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N14 INTEGER,
      DS_PODER_SIORG_N14 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N14 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N14 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N14 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N14 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N14 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N14 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N14 );

CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N15 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N15 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N15 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N15 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N15 INTEGER,
      DS_CATEGORIA_SIORG_N15 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N15 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N15 INTEGER,
      DS_ESFERA_SIORG_N15 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N15 INTEGER,
      DS_PODER_SIORG_N15 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N15 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N15 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N15 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N15 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N15 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N15 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N15 );

CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N16 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N16 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N16 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N16 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N16 INTEGER,
      DS_CATEGORIA_SIORG_N16 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N16 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N16 INTEGER,
      DS_ESFERA_SIORG_N16 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N16 INTEGER,
      DS_PODER_SIORG_N16 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N16 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N16 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N16 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N16 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N16 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N16 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N16 );

CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N17 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N17 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N17 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N17 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N17 INTEGER,
      DS_CATEGORIA_SIORG_N17 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N17 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N17 INTEGER,
      DS_ESFERA_SIORG_N17 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N17 INTEGER,
      DS_PODER_SIORG_N17 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N17 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N17 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N17 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N17 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N17 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N17 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N17 );

CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N18 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N18 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N18 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N18 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N18 INTEGER,
      DS_CATEGORIA_SIORG_N18 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N18 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N18 INTEGER,
      DS_ESFERA_SIORG_N18 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N18 INTEGER,
      DS_PODER_SIORG_N18 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N18 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N18 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N18 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N18 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N18 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N18 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N18 );

CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N19 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N19 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N19 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N19 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N19 INTEGER,
      DS_CATEGORIA_SIORG_N19 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N19 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N19 INTEGER,
      DS_ESFERA_SIORG_N19 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N19 INTEGER,
      DS_PODER_SIORG_N19 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N19 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N19 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N19 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N19 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N19 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N19 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N19 );

CREATE MULTISET TABLE DBHOM_33393_DWTG.WV_SIORG_N20 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CO_SIORG_N20 CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_SIORG_N20 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      SG_SIORG_N20 VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_CATEGORIA_SIORG_N20 INTEGER,
      DS_CATEGORIA_SIORG_N20 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_ALTERACAO_SIORG_N20 VARCHAR(15) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_ESFERA_SIORG_N20 INTEGER,
      DS_ESFERA_SIORG_N20 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_PODER_SIORG_N20 INTEGER,
      DS_PODER_SIORG_N20 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_NATUREZA_JURIDICA_SIORG_N20 INTEGER,
      DS_NATUREZA_JURIDICA_SIORG_N20 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_SUBNATUREZA_JURIDICA_SIORG_N20 INTEGER,
      DS_SUBNATUREZA_JURIDICA_SIORG_N20 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC,
      ID_TP_UNIDADE_SIORG_N20 CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      DS_TP_UNIDADE_SIORG_N20 VARCHAR(110) CHARACTER SET LATIN NOT CASESPECIFIC)
UNIQUE PRIMARY INDEX ( CO_SIORG_N20 );

finalizda--***************************************************************************************************************************

teste_dados_para_novo_database

Failure ARC0202 was not expected

JOB teste_dados_para_novo_database
SESSIONS 72
MULTISTREAM 4
STREAM MAXSERPRO01-1-17
STREAM MAXSERPRO01-1-17
STREAM MAXSERPRO01-1-17
STREAM MAXSERPRO01-1-17
COMMANDLINE CSNAME=ASCII  CHECKSUM=2 
TDPID PRODUCAO
USERID dwpubbackup
CATALOG ON
SOURCEUID 5694f543000001b4
SCRIPT Restore
LOGON $LOGON;

COPY DATA TABLES
        (dbdes_33393_dwtg"."RUSH_ORDER) (FROM ("DBH_33393_TUTO"."RUSH_ORDER")), 
        (dbdes_33393_dwtg"."STATE_REGION_MNTH_SLS) (FROM ("DBH_33393_TUTO"."STATE_REGION_MNTH_SLS")), 
RELEASE LOCK,
FILE=ARCHIVE;

LOGOFF;
ENDSCRIPT



--***************************************************************************************************************************
MS941HOMSTNMDBKP3 -->> FIZ UM BACKUP DO ORIGINAL MS941HOMSTNMD POR MINHA CONTA.
create user MS941HOMSTNMDBKP3 IDENTIFIED by "456homstn321$bsamd" default tablespace "TB_07651_MSHOMSTNMDBKP_DAT_01";


retornar para o usuário principal MS941HOMSTNMD
MS941HOMSTNMDBKP
TB_07651_MS941HOMSTNMD_DAT_01 -->> DAS DUAS

TAMANHO ESTÁ OK. PODE FAZER 

drop user MS941HOMSTNMDBKP2 cascade;

CREATE TABLESPACE TB_07651_MSHOMSTNMDBKP_DAT_01 DATAFILE '+DG_BSA093/h_07651_mstr/bimd001/tb_07651_mshomstnmdbkp2_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 1024M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

create user MS941HOMSTNMDBKP3 IDENTIFIED by "456homstn321$bsamd" default tablespace "TB_07651_MSHOMSTNMDBKP_DAT_01";

----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS941HOMSTNMDBKP3;


nohup impdp dwpub/dwpubmd@bimd001 directory=DWPUB_DATAPUMP network_link=DBL_BIMD001 schemas=MS941HOMSTNMD remap_schema=MS941HOMSTNMD:MS941HOMSTNMDBKP3 remap_tablespace=TB_07651_MS941HOMSTNMD_DAT_01:TB_07651_MSHOMSTNMDBKP_DAT_01 nologfile=y > importmetadados20161111-bkp3.log &

nohup impdp dwpub/dwpubmd@bimd001 directory=DWPUB_DATAPUMP network_link=DBL_BIMD001 schemas=MS941HOMSTNMDBKP remap_schema=MS941HOMSTNMDBKP:MS941HOMSTNMD nologfile=y > importmetadados20161111.log &


--TESTAR DBL-LINK PARA para fazer impdp
SQL> select name from v$database@DBL_PMD01.WORLD;


select count(*) from dba_objects where owner = 'MS941HOMSTNMDBKP3';
select count(*) from dba_objects where owner = 'MS941HOMSTNMD';
--=================================================================================
--BIMD001-GUSTAVO - feito pelo Alisson 11/11/2016

--PROXIMA ETAPA PARA FAZER
1-DROPAR O ORGINAL -->> MS941HOMSTNMD -- Tenho backup bkp3
2-MANTER O MS941HOMSTNMDBKP -->> ATÉ O GUSTAVO LIBERAR PARA FAZER OUTRO BACKUP 
3-QUANDO O GUSTAVO LIBERAR - CRIAR UM NOVO COM O NOME DO ORIGINAL -->> MS941HOMSTNMD E BUSCAR OS DADOS DO -->> MS941HOMSTNMDBKP
4-MANTER OS DOIS -->> MS941HOMSTNMD E O MS941HOMSTNMDBKP
5-
--finalizada em 14/11/2016=================================================================================
1-Informações
a) Começamos a demanda pela execução dos passos 1 e 2 na produção pela SUPCD e os mesmos lá no SUPDE.
b) tivemos problemas de energia lá em Fortaleza o que era para começar 09:30 e começou 15:30
c) o pessoal da DE teve problema com a wf_lancamento no banco de carga com o erro no more room que foi resolvido
   com a copia em outra tabela lancamento new assim foi resolvido o erro e aplicado o update e o insert na tabela corretamente
   Com isso o ambiente ficou com às devidas alterações e correções para que a SUPCD - Mário/Ronaldo pudesse trabalhar.
d) SUPCD - começamos a trabalhar às 20:00
   1- primeiro tivemos um problema idêntico com a lancamento que deu erro no more room 
       que foi contornado: "primeiro com o teste de criação de uma nova tabela vazia idêntica a lançamento
   2- depois, foi coletado a estatística da lançamento cheia com o comando show stats on dbpro_33393_dwtg.wf_lancamento e colocado no notepad  para ser aplicado na tabela nova
      assim que criada e depois que for inserida na tabela
   3- em seguida foi executado o script de adição das colunas novas na sequência foi aplicado as estatísticas na tabela nova, e depois foi feito um teste de inclusão de 
   apenas 1000 registros para ver se estava tudo rodando legal no script de replicação - REPLICAR_FATOS_LANC.SH que encontra-se na máquina 161.148.236.49
   4- depois de testado este procedimento continuamos apagando (DROP) a tabela lancamento
   5- posteriormente aplicamos a estatísticas  na tabela vazia
   6- posteriormente usamos o script REPLICAR_FATOS_LANC.DOMINGO.SH para publicar a lancamento e agregadas com script por ano de exercicio lá dentro:
      exemplo insert com clausuar where de 2008, 2009, 2010 e assim em diante dentro do arquivo sh.
   7- essa execução durou 7 horas e acabou por volta da 01:30 da manhã
   8- após isso foi aplicado a coleta de estatisitca por tabela, mas as 10:00 da manhã do outro dia cancelei por tabela e resolvi fazer por coluna
   9- como eu coletei estatística antes consegui visualizar no teradata administrator pela estatistica na tabela lancamento as colunas simples e colunas compostas
  10- com isso selecionei todas e fiz um script coletando por coluna simples e depois por coluna composta conforme abaixo.
  11- depois executei começando às 10:00 da manhã de 13/11/2016, com meu acompanhamento fui verificando até terminar às 07:50 da manhã de 14/11/2016
  12- terminado o processo acima com todos os dados inseridos e todos as coletas feitas partir para as agregadas.
  13- as agregadas foram somente coletados as colunas que foi adicionada, pois os dados dos exercicios já estavam coletados anteriormente
  14- foi executado os relatórios para teste pelo José Lopes que já havia parado no dia 12/11/2016 a noite o Inteligente Server para que ninguem usasse
      o TG na segunda dia 14/11/2016 que foi a janela cedida pela STN para fazer esses ajustes.
  15- vou conferir em 15/11/2016 na parte da manhã a alteração feita no arquivo REPLICAR_FATOS_LANC.SH para ver se tudo está correndo bem.
  16- Régio vai apagar - a lançamento anterior da carga na quinta feira autorizado pela Giovanna.

DEMANDA GIGANTE 

1. Realizar as seguintes alterações na tabela WF_LANCAMENTO:

ALTER TABLE DBPRO_33393_DWTG.WF_LANCAMENTO ADD ID_TP_DOCUMENTO CHAR(2) NOT NULL DEFAULT '-9';
ALTER TABLE DBPRO_33393_DWTG.WF_LANCAMENTO ADD ID_UG_EMIT_DOC INTEGER NOT NULL DEFAULT -9;
ALTER TABLE DBPRO_33393_DWTG.WF_LANCAMENTO ADD CO_UG_EMIT_DOC CHAR(6) NOT NULL DEFAULT '-9';
ALTER TABLE DBPRO_33393_DWTG.WF_LANCAMENTO ADD CO_UG_EXEC CHAR(6) NOT NULL DEFAULT '-9';

REPLACE VIEW MS_33393_DWTG_PRO.WF_LANCAMENTO AS LOCKING ROW FOR ACCESS SELECT * FROM DBPRO_33393_DWTG.WF_LANCAMENTO;
ok
ALTER TABLE DBPRO_33393_DWTG.WF_LANCAMENTO_EP01 ADD CO_UG_EXEC CHAR(6) NOT NULL DEFAULT '-9';
ALTER TABLE DBPRO_33393_DWTG.WF_LANCAMENTO_EP02 ADD CO_UG_EXEC CHAR(6) NOT NULL DEFAULT '-9';
ALTER TABLE DBPRO_33393_DWTG.WF_LANCAMENTO_EP03 ADD CO_UG_EXEC CHAR(6) NOT NULL DEFAULT '-9';
ALTER TABLE DBPRO_33393_DWTG.WF_LANCAMENTO_EP04 ADD CO_UG_EXEC CHAR(6) NOT NULL DEFAULT '-9';
ALTER TABLE DBPRO_33393_DWTG.WF_LANCAMENTO_EP20 ADD CO_UG_EXEC CHAR(6) NOT NULL DEFAULT '-9';
ok
REPLACE VIEW MS_33393_DWTG_PRO.WF_LANCAMENTO_EP01 AS LOCK ROW FOR ACCESS SELECT * FROM DBPRO_33393_DWTG.WF_LANCAMENTO_EP01;
REPLACE VIEW MS_33393_DWTG_PRO.WF_LANCAMENTO_EP02 AS LOCK ROW FOR ACCESS SELECT * FROM DBPRO_33393_DWTG.WF_LANCAMENTO_EP02;
REPLACE VIEW MS_33393_DWTG_PRO.WF_LANCAMENTO_EP03 AS LOCK ROW FOR ACCESS SELECT * FROM DBPRO_33393_DWTG.WF_LANCAMENTO_EP03;
REPLACE VIEW MS_33393_DWTG_PRO.WF_LANCAMENTO_EP04 AS LOCK ROW FOR ACCESS SELECT * FROM DBPRO_33393_DWTG.WF_LANCAMENTO_EP04;
REPLACE VIEW MS_33393_DWTG_PRO.WF_LANCAMENTO_EP20 AS LOCK ROW FOR ACCESS SELECT * FROM DBPRO_33393_DWTG.WF_LANCAMENTO_EP20;

2. Alterar os scripts de geração das tabelas agregadas para incluir a nova coluna (CO_UG_EXEC CHAR(6)) criada na WF_LANCAMENTO.

1. Alterar os scripts de geração das tabelas agregadas para incluir a nova coluna (CO_UG_EXEC CHAR(6)) criada na WF_LANCAMENTO.

ok
--***************************************************************************************

delete from dbpro_33393_dwtg.WF_LANCAMENTO where id_ano_lanc = 2016;

-- views viram tabelas
delete from dbpro_33393_dwtg.WF_LANCAMENTO_EP01 where id_ano_lanc = 2016;
delete from dbpro_33393_dwtg.WF_LANCAMENTO_EP02;
delete from dbpro_33393_dwtg.WF_LANCAMENTO_EP03 where id_ano_lanc = 2016;
delete from dbpro_33393_dwtg.WF_LANCAMENTO_EP04 where id_ano_lanc = 2016;
delete from dbpro_33393_dwtg.WF_LANCAMENTO_EP20 where id_ano_lanc = 2016;

--***************************************************************************************
INSERT  INTO dbpro_33393_dwtg.WF_LANCAMENTO
	SELECT *
	FROM dbcar_33393_dwtg.WF_LANCAMENTO
	WHERE ID_ANO_LANC = 2016;

--***************************************************************************************
insert into dbpro_33393_dwtg.WF_LANCAMENTO_EP01
select 
		  ROW_NUMBER() OVER (ORDER BY ID_ANO_LANC, ID_MES_LANC),
      IN_VALIDADE_CCOR,
      ID_CONTA_CONTABIL_LANC,
      ID_ANO_LANC,
      ID_MES_LANC,
      ID_UG_EXEC,
      ID_MOEDA_UG_EXEC_H,
      ID_ORGAO_EXEC_H,
      ID_ORGAO_SUPE_EXEC_H,
      ID_ORGAO_MAXI_EXEC_H,
      ID_ORCA_FISCAL_ORGAO_EXEC_H,
      ID_TP_ADMIN_ORGAO_EXEC_H,
      ID_ORGAO_EMIT_DOC_H,
      ID_ORGAO_SUPE_EMIT_DOC_H,
      ID_ORGAO_MAXI_EMIT_DOC_H,
      ID_ESFERA_ORCAMENTARIA,
      ID_FONTE_RECURSO_DETA,
      ID_CATEGORIA_ECONOMICA_NADE,
      ID_GRUPO_DESPESA_NADE,
      ID_MOAP_NADE,
      ID_ELEMENTO_DESPESA_NADE,
      ID_SUBITEM_NADE,
      ID_UG_RESP,
      ID_ORGAO_PI,
      ID_PI,
      ID_PTRES,
      ID_RESULTADO_LEI,
      ID_TP_CREDITO,
      ID_UO,
      ID_PO,
      ID_ANO_CONTROLE,
      ID_MES_CONTROLE,
      ID_DIA_CONTROLE,
      ID_TV,
      ID_TP_TV,
      ID_BANCO,
      ID_AGENCIA_BANCARIA,
      ID_CONTA_BANCARIA,
      ID_CONTA_CORRENTE_SK,
      ID_TP_CCOR,
      ID_TP_ENTIDADE_CCOR,
      ID_ENTIDADE_CCOR,
      ID_DOCUMENTO_CCOR,
      ID_RECURSO,
      ID_RECEITA,
      ID_DESTINACAO_RECEITA,
      ID_CATEGORIA_ECONOMICA_NARE,
      ID_ORIGEM_RECEITA_NARE,
      ID_ESPECIE_RECEITA_NARE,
      ID_RUBRICA_NARE,
      ID_ALINEA_NARE,
      ID_SUBALINEA_NARE,
      ID_ORGAO_CENTRO_CUSTO,
      ID_CENTRO_CUSTO,
      ID_UG_CCOR,
      ID_ORGAO_CCOR,
      ID_GESTAO_CCOR,
      ID_UF_CCOR,
      ID_FUNCAO_PT,
      ID_SUBFUNCAO_PT,
      ID_PROGRAMA_PT,
      ID_ACAO_PT,
      ID_LOCALIZADOR_GASTO_PT,
      ID_MUNICIPIO_REME,
      ID_RECEITA_MUNICIPAL_ESTADUAL,
      ID_UG_UF,
      ID_CELULA_ORCAMENTARIA_SK,
      ID_DIVIDA_EXTERNA,
      ID_ANO_CCOR,
      ID_MES_CCOR,
      ID_ANO_SAQUE,
      ID_MES_SAQUE,
      ID_IDOC,
      ID_DESTINACAO_RECOLHIMENTO,
      ID_RECOLHIMENTO_GRU,
      ID_PAGAMENTO_GPS,
      ID_GFIP,
      ID_VINCULACAO_PAGAMENTO,
      ID_TP_ENTIDADE_IG_CCOR,
      ID_ENTIDADE_IG_CCOR,
      ID_TP_ARRECADACAO,
      ID_CONTA_CONTABIL_REFE,
      ID_CATEGORIA_GASTO_CCOR,
      ID_TP_DOC_CCOR,
      ID_UG_DOC_HABIL,
      ID_DOC_HABIL,
      ID_ANO_TAXA_CAMBIO_CCOR,
      ID_MES_TAXA_CAMBIO_CCOR,
      ID_DIA_TAXA_CAMBIO_CCOR,
      ID_IN_RESULTADO_RECEITA,
      ID_TP_DESPESA,
      ID_GRUPO_DE_FONTE,
      ID_CONTA_CONTABIL_CLAS_1,
      ID_BANCO_ARRECADADOR,
      CAST(sum(QT_LANCAMENTO) AS NUMBER(18,0)) QT_LANCAMENTO,
      CAST(sum(VA_CREDITO) AS DECIMAL(18,2)) VA_CREDITO,
      CAST(sum(VA_DEBITO) AS DECIMAL(18,2)) VA_DEBITO,
      CAST(sum(VA_MOVIMENTO_LIQUIDO) AS DECIMAL(18,2)) VA_MOVIMENTO_LIQUIDO,
      ID_CATEGORIA_ECONOMICA2_NARE,
      ID_ORIGEM_RECEITA2_NARE,
      ID_ESPECIE_RECEITA2_NARE,
      ID_RUBRICA2_NARE,
      ID_ALINEA2_NARE,
      ID_SUBALINEA2_NARE,
      ID_TIPO_RECEITA2_NARE,
      CO_UG_EXEC
     FROM dbpro_33393_dwtg.WF_LANCAMENTO  where id_ano_lanc = 2016
      GROUP BY
      IN_VALIDADE_CCOR,
      ID_CONTA_CONTABIL_LANC,
      ID_ANO_LANC,
      ID_MES_LANC,
      ID_UG_EXEC,
      ID_MOEDA_UG_EXEC_H,
      ID_ORGAO_EXEC_H,
      ID_ORGAO_SUPE_EXEC_H,
      ID_ORGAO_MAXI_EXEC_H,
      ID_ORCA_FISCAL_ORGAO_EXEC_H,
      ID_TP_ADMIN_ORGAO_EXEC_H,
      ID_ORGAO_EMIT_DOC_H,
      ID_ORGAO_SUPE_EMIT_DOC_H,
      ID_ORGAO_MAXI_EMIT_DOC_H,
      ID_ESFERA_ORCAMENTARIA,
      ID_FONTE_RECURSO_DETA,
      ID_CATEGORIA_ECONOMICA_NADE,
      ID_GRUPO_DESPESA_NADE,
      ID_MOAP_NADE,
      ID_ELEMENTO_DESPESA_NADE,
      ID_SUBITEM_NADE,
      ID_UG_RESP,
      ID_ORGAO_PI,
      ID_PI,
      ID_PTRES,
      ID_RESULTADO_LEI,
      ID_TP_CREDITO,
      ID_UO,
      ID_PO,
      ID_ANO_CONTROLE,
      ID_MES_CONTROLE,
      ID_DIA_CONTROLE,
      ID_TV,
      ID_TP_TV,
      ID_BANCO,
      ID_AGENCIA_BANCARIA,
      ID_CONTA_BANCARIA,
      ID_CONTA_CORRENTE_SK,
      ID_TP_CCOR,
      ID_TP_ENTIDADE_CCOR,
      ID_ENTIDADE_CCOR,
      ID_DOCUMENTO_CCOR,
      ID_RECURSO,
      ID_RECEITA,
      ID_DESTINACAO_RECEITA,
      ID_CATEGORIA_ECONOMICA_NARE,
      ID_ORIGEM_RECEITA_NARE,
      ID_ESPECIE_RECEITA_NARE,
      ID_RUBRICA_NARE,
      ID_ALINEA_NARE,
      ID_SUBALINEA_NARE,
      ID_ORGAO_CENTRO_CUSTO,
      ID_CENTRO_CUSTO,
      ID_UG_CCOR,
      ID_ORGAO_CCOR,
      ID_GESTAO_CCOR,
      ID_UF_CCOR,
      ID_FUNCAO_PT,
      ID_SUBFUNCAO_PT,
      ID_PROGRAMA_PT,
      ID_ACAO_PT,
      ID_LOCALIZADOR_GASTO_PT,
      ID_MUNICIPIO_REME,
      ID_RECEITA_MUNICIPAL_ESTADUAL,
      ID_UG_UF,
      ID_CELULA_ORCAMENTARIA_SK,
      ID_DIVIDA_EXTERNA,
      ID_ANO_CCOR,
      ID_MES_CCOR,
      ID_ANO_SAQUE,
      ID_MES_SAQUE,
      ID_IDOC,
      ID_DESTINACAO_RECOLHIMENTO,
      ID_RECOLHIMENTO_GRU,
      ID_PAGAMENTO_GPS,
      ID_GFIP,
      ID_VINCULACAO_PAGAMENTO,
      ID_TP_ENTIDADE_IG_CCOR,
      ID_ENTIDADE_IG_CCOR,
      ID_TP_ARRECADACAO,
      ID_CONTA_CONTABIL_REFE,
      ID_CATEGORIA_GASTO_CCOR,
      ID_TP_DOC_CCOR,
      ID_UG_DOC_HABIL,
      ID_DOC_HABIL,
      ID_ANO_TAXA_CAMBIO_CCOR,
      ID_MES_TAXA_CAMBIO_CCOR,
      ID_DIA_TAXA_CAMBIO_CCOR,
      ID_IN_RESULTADO_RECEITA,
      ID_TP_DESPESA,
      ID_GRUPO_DE_FONTE,
      ID_CONTA_CONTABIL_CLAS_1,
      ID_BANCO_ARRECADADOR,
      ID_CATEGORIA_ECONOMICA2_NARE,
      ID_ORIGEM_RECEITA2_NARE,
      ID_ESPECIE_RECEITA2_NARE,
      ID_RUBRICA2_NARE,
      ID_ALINEA2_NARE,
      ID_SUBALINEA2_NARE,
      ID_TIPO_RECEITA2_NARE,
      CO_UG_EXEC;

--***************************************************************************************
insert into dbpro_33393_dwtg.WF_LANCAMENTO_EP03 
SELECT 
      ID_CONTA_CONTABIL_LANC,
      ID_ANO_LANC,
      ID_MES_LANC,
      ID_UG_EXEC,
      ID_MOEDA_UG_EXEC_H,
      ID_ORGAO_EXEC_H,
      ID_ORGAO_SUPE_EXEC_H,
      ID_ORGAO_MAXI_EXEC_H,
      ID_ORCA_FISCAL_ORGAO_EXEC_H,
      ID_TP_ADMIN_ORGAO_EXEC_H,
      ID_PTRES,
      ID_UO,
      ID_FUNCAO_PT,
      ID_SUBFUNCAO_PT,
      ID_PROGRAMA_PT,
      ID_ACAO_PT,
      ID_LOCALIZADOR_GASTO_PT,
      ID_PO,
      CAST(sum(QT_LANCAMENTO) AS NUMBER(18,0)) QT_LANCAMENTO,
      CAST(sum(VA_CREDITO) AS DECIMAL(18,2)) VA_CREDITO,
      CAST(sum(VA_DEBITO) AS DECIMAL(18,2)) VA_DEBITO,
      CAST(sum(VA_MOVIMENTO_LIQUIDO) AS DECIMAL(18,2)) VA_MOVIMENTO_LIQUIDO,
      CO_UG_EXEC
     FROM dbpro_33393_dwtg.WF_LANCAMENTO where id_ano_lanc = 2016 
       GROUP BY 
      ID_CONTA_CONTABIL_LANC,
      ID_ANO_LANC,
      ID_MES_LANC,
      ID_UG_EXEC,
      ID_MOEDA_UG_EXEC_H,
      ID_ORGAO_EXEC_H,
      ID_ORGAO_SUPE_EXEC_H,
      ID_ORGAO_MAXI_EXEC_H,
      ID_ORCA_FISCAL_ORGAO_EXEC_H,
      ID_TP_ADMIN_ORGAO_EXEC_H,
      ID_PTRES,
      ID_UO,
      ID_FUNCAO_PT,
      ID_SUBFUNCAO_PT,
      ID_PROGRAMA_PT,
      ID_ACAO_PT,
      ID_LOCALIZADOR_GASTO_PT,
      ID_PO,
      CO_UG_EXEC;

--***************************************************************************************
insert into dbpro_33393_dwtg.WF_LANCAMENTO_EP02
SELECT ID_CONTA_CONTABIL_LANC,
      ID_ANO_LANC,
      ID_MES_LANC,
      ID_UG_EXEC,
      ID_MOEDA_UG_EXEC_H,
      ID_ORGAO_EXEC_H,
      ID_ORGAO_SUPE_EXEC_H,
      ID_ORGAO_MAXI_EXEC_H,
      ID_ORCA_FISCAL_ORGAO_EXEC_H,
      ID_TP_ADMIN_ORGAO_EXEC_H,
      CAST(sum(QT_LANCAMENTO) AS NUMBER(18,0)) QT_LANCAMENTO,
      CAST(sum(VA_CREDITO) AS DECIMAL(18,2)) VA_CREDITO,
      CAST(sum(VA_DEBITO) AS DECIMAL(18,2)) VA_DEBITO,
      CAST(sum(VA_MOVIMENTO_LIQUIDO) AS DECIMAL(18,2)) VA_MOVIMENTO_LIQUIDO,
      CO_UG_EXEC
     FROM dbpro_33393_dwtg.WF_LANCAMENTO_EP03 
       GROUP BY 
      ID_CONTA_CONTABIL_LANC,
      ID_ANO_LANC,
      ID_MES_LANC,
      ID_UG_EXEC,
      ID_MOEDA_UG_EXEC_H,
      ID_ORGAO_EXEC_H,
      ID_ORGAO_SUPE_EXEC_H,
      ID_ORGAO_MAXI_EXEC_H,
      ID_ORCA_FISCAL_ORGAO_EXEC_H,
      ID_TP_ADMIN_ORGAO_EXEC_H,
      CO_UG_EXEC;

--***************************************************************************************
insert into dbpro_33393_dwtg.WF_LANCAMENTO_EP04
SELECT 
      ID_CONTA_CONTABIL_LANC,
      ID_ANO_LANC,
      ID_MES_LANC,
      ID_UG_EXEC,
      ID_MOEDA_UG_EXEC_H,
      ID_ORGAO_EXEC_H,
      ID_ORGAO_SUPE_EXEC_H,
      ID_ORGAO_MAXI_EXEC_H,
      ID_ORCA_FISCAL_ORGAO_EXEC_H,
      ID_TP_ADMIN_ORGAO_EXEC_H,
      ID_CATEGORIA_ECONOMICA_NADE,
      ID_GRUPO_DESPESA_NADE,
      ID_MOAP_NADE,
      ID_ELEMENTO_DESPESA_NADE,
      ID_SUBITEM_NADE,
      CAST(sum(QT_LANCAMENTO) AS NUMBER(18,0)) QT_LANCAMENTO,
      CAST(sum(VA_CREDITO) AS DECIMAL(18,2)) VA_CREDITO,
      CAST(sum(VA_DEBITO) AS DECIMAL(18,2)) VA_DEBITO,
      CAST(sum(VA_MOVIMENTO_LIQUIDO) AS DECIMAL(18,2)) VA_MOVIMENTO_LIQUIDO,
      CO_UG_EXEC
     FROM dbpro_33393_dwtg.WF_LANCAMENTO  where id_ano_lanc = 2016       
       GROUP BY 
      ID_CONTA_CONTABIL_LANC,
      ID_ANO_LANC,
      ID_MES_LANC,
      ID_UG_EXEC,
      ID_MOEDA_UG_EXEC_H,
      ID_ORGAO_EXEC_H,
      ID_ORGAO_SUPE_EXEC_H,
      ID_ORGAO_MAXI_EXEC_H,
      ID_ORCA_FISCAL_ORGAO_EXEC_H,
      ID_TP_ADMIN_ORGAO_EXEC_H,
      ID_CATEGORIA_ECONOMICA_NADE,
      ID_GRUPO_DESPESA_NADE,
      ID_MOAP_NADE,
      ID_ELEMENTO_DESPESA_NADE,
      ID_SUBITEM_NADE,
      CO_UG_EXEC;

--***************************************************************************************
insert into dbpro_33393_dwtg.WF_LANCAMENTO_EP20
SELECT
      IN_ISF_LANC, 
      ID_CONTA_CONTABIL_LANC,
      ID_ANO_LANC,
      ID_MES_LANC,
      ID_UG_EXEC,
      ID_MOEDA_UG_EXEC_H,
      ID_ORGAO_EXEC_H,
      ID_ORGAO_SUPE_EXEC_H,
      ID_ORGAO_MAXI_EXEC_H,
      ID_ORCA_FISCAL_ORGAO_EXEC_H,
      ID_TP_ADMIN_ORGAO_EXEC_H,
      ID_ESFERA_ORCAMENTARIA,
      ID_FONTE_RECURSO_DETA,
      ID_CATEGORIA_ECONOMICA_NADE,
      ID_GRUPO_DESPESA_NADE,
      ID_MOAP_NADE,
      ID_ELEMENTO_DESPESA_NADE,
      ID_SUBITEM_NADE,
      ID_ORGAO_PI,
      ID_PI, 
      ID_PTRES,
      ID_RESULTADO_LEI,
      ID_TP_CREDITO,
      ID_UO,
      ID_PO,
      ID_CONTA_CORRENTE_SK,
      ID_TP_CCOR,
      ID_TP_ENTIDADE_CCOR,
      ID_ENTIDADE_CCOR,
      ID_DOCUMENTO_CCOR,
      ID_RECEITA,
      ID_DESTINACAO_RECEITA,
      ID_CATEGORIA_ECONOMICA_NARE,
      ID_ORIGEM_RECEITA_NARE,
      ID_ESPECIE_RECEITA_NARE,
      ID_RUBRICA_NARE,
      ID_ALINEA_NARE,
      ID_SUBALINEA_NARE,
      ID_UG_CCOR,
      ID_ORGAO_CCOR,
      ID_GESTAO_CCOR,
      ID_FUNCAO_PT,
      ID_SUBFUNCAO_PT,
      ID_PROGRAMA_PT,
      ID_ACAO_PT,
      ID_LOCALIZADOR_GASTO_PT,
      ID_CELULA_ORCAMENTARIA_SK,
      ID_TP_ENTIDADE_IG_CCOR,
      ID_ENTIDADE_IG_CCOR,
      ID_TP_ARRECADACAO,
      CAST(sum(QT_LANCAMENTO) AS NUMBER(18,0)) QT_LANCAMENTO,
      CAST(sum(VA_CREDITO) AS DECIMAL(18,2)) VA_CREDITO,
      CAST(sum(VA_DEBITO) AS DECIMAL(18,2)) VA_DEBITO,
      CAST(sum(VA_MOVIMENTO_LIQUIDO) AS DECIMAL(18,2)) VA_MOVIMENTO_LIQUIDO,
      ID_CATEGORIA_ECONOMICA2_NARE,
      ID_ORIGEM_RECEITA2_NARE,
      ID_ESPECIE_RECEITA2_NARE,
      ID_RUBRICA2_NARE,
      ID_ALINEA2_NARE,
      ID_SUBALINEA2_NARE,
      ID_TIPO_RECEITA2_NARE,
      CO_UG_EXEC
      FROM dbpro_33393_dwtg.WF_LANCAMENTO  where id_ano_lanc = 2016
       GROUP BY
      IN_ISF_LANC, 
      ID_CONTA_CONTABIL_LANC,
      ID_ANO_LANC,
      ID_MES_LANC,
      ID_UG_EXEC,
      ID_MOEDA_UG_EXEC_H,
      ID_ORGAO_EXEC_H,
      ID_ORGAO_SUPE_EXEC_H,
      ID_ORGAO_MAXI_EXEC_H,
      ID_ORCA_FISCAL_ORGAO_EXEC_H,
      ID_TP_ADMIN_ORGAO_EXEC_H,
      ID_ESFERA_ORCAMENTARIA,
      ID_FONTE_RECURSO_DETA,
      ID_CATEGORIA_ECONOMICA_NADE,
      ID_GRUPO_DESPESA_NADE,
      ID_MOAP_NADE,
      ID_ELEMENTO_DESPESA_NADE,
      ID_SUBITEM_NADE,
      ID_ORGAO_PI,
      ID_PI, 
      ID_PTRES,
      ID_RESULTADO_LEI,
      ID_TP_CREDITO,
      ID_UO,
      ID_PO,
      ID_CONTA_CORRENTE_SK,
      ID_TP_CCOR,
      ID_TP_ENTIDADE_CCOR,
      ID_ENTIDADE_CCOR,
      ID_DOCUMENTO_CCOR,
      ID_RECEITA,
      ID_DESTINACAO_RECEITA,
      ID_CATEGORIA_ECONOMICA_NARE,
      ID_ORIGEM_RECEITA_NARE,
      ID_ESPECIE_RECEITA_NARE,
      ID_RUBRICA_NARE,
      ID_ALINEA_NARE,
      ID_SUBALINEA_NARE,
      ID_UG_CCOR,
      ID_ORGAO_CCOR,
      ID_GESTAO_CCOR,
      ID_FUNCAO_PT,
      ID_SUBFUNCAO_PT,
      ID_PROGRAMA_PT,
      ID_ACAO_PT,
      ID_LOCALIZADOR_GASTO_PT,
      ID_CELULA_ORCAMENTARIA_SK,
      ID_TP_ENTIDADE_IG_CCOR,
      ID_ENTIDADE_IG_CCOR,
      ID_TP_ARRECADACAO,
      ID_CATEGORIA_ECONOMICA2_NARE,
      ID_ORIGEM_RECEITA2_NARE,
      ID_ESPECIE_RECEITA2_NARE,
      ID_RUBRICA2_NARE,
      ID_ALINEA2_NARE,
      ID_SUBALINEA2_NARE,
      ID_TIPO_RECEITA2_NARE,
      CO_UG_EXEC;

--***************************************************************************************
3. Publicar a tabela WF_LANCAMENTO do ambiente de carga DBCAR_33393_DWTG para o ambiente de Produção (DBPRO_33393_DWTG).
ok
4. Realizar a geração das seguintes tabelas agregadas de Lançamento:
- WF_LANCAMENTO_EP01
- WF_LANCAMENTO_EP02
- WF_LANCAMENTO_EP03
- WF_LANCAMENTO_EP04
- WF_LANCAMENTO_EP20

5.ALTER TABLE DBPRO_33393_DWTG.WD_SUBORGAO_UG ADD CO_UG CHAR(6) NOT NULL DEFAULT '-9';
ok
delete from DBPRO_33393_DWTG.WD_SUBORGAO_UG;
insert into DBPRO_33393_DWTG.WD_SUBORGAO_UG select * from dbcar_33393_dwtg.WD_SUBORGAO_UG;

ok
6. Publicar a tabela WD_SUBORGAO_UG do ambiente de carga DBCAR_33393_DWTG para o ambiente de Produção (DBPRO_33393_DWTG).
ok
7. Recriar a view da tabela WD_SUBORGAO_UG no ambiente do Microstrategy de Produção (MS_33393_DWTG_PRO)

REPLACE VIEW MS_33393_DWTG_PRO.WD_SUBORGAO_UG AS LOCKING ROW FOR ACCESS SELECT * FROM DBPRO_33393_DWTG.WD_SUBORGAO_UG;

finalizada--=================================================================================
AGORA E A ESTATISTICA
COLUNAS SIMPLES
PEGAR NO SQL ASSISTENT 

collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (IN_ISF_LANC);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_CONTA_CONTABIL_LANC);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ANO_LANC);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_MES_LANC);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_UG_EXEC);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_MOEDA_UG_EXEC_H);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ORGAO_EXEC_H);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ORGAO_SUPE_EXEC_H);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ORGAO_MAXI_EXEC_H);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ORCA_FISCAL_ORGAO_EXEC_H);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_TP_ADMIN_ORGAO_EXEC_H);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ESFERA_ORCAMENTARIA);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_FONTE_RECURSO_DETA);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_CATEGORIA_ECONOMICA_NADE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_GRUPO_DESPESA_NADE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_MOAP_NADE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ELEMENTO_DESPESA_NADE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_SUBITEM_NADE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ORGAO_PI);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_PI);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_PTRES);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_RESULTADO_LEI);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_TP_CREDITO);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_UO);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_PO);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_CONTA_CORRENTE_SK);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_TP_CCOR);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_TP_ENTIDADE_CCOR);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ENTIDADE_CCOR);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_DOCUMENTO_CCOR);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_RECEITA);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_DESTINACAO_RECEITA);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_CATEGORIA_ECONOMICA_NARE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ORIGEM_RECEITA_NARE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ESPECIE_RECEITA_NARE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_RUBRICA_NARE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ALINEA_NARE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_SUBALINEA_NARE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_UG_CCOR);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ORGAO_CCOR);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_GESTAO_CCOR);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_FUNCAO_PT);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_SUBFUNCAO_PT);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_PROGRAMA_PT);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ACAO_PT);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_LOCALIZADOR_GASTO_PT);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_CELULA_ORCAMENTARIA_SK);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_TP_ENTIDADE_IG_CCOR);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ENTIDADE_IG_CCOR);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_TP_ARRECADACAO);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_CATEGORIA_ECONOMICA2_NARE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ORIGEM_RECEITA2_NARE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ESPECIE_RECEITA2_NARE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_RUBRICA2_NARE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ALINEA2_NARE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_SUBALINEA2_NARE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_TIPO_RECEITA2_NARE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (CO_UG_EXEC);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (IN_VALIDADE_CCOR);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ORGAO_EMIT_DOC_H);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ORGAO_SUPE_EMIT_DOC_H);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ORGAO_MAXI_EMIT_DOC_H);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_UG_RESP);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ANO_CONTROLE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_MES_CONTROLE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_DIA_CONTROLE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_TV);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_TP_TV);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_BANCO);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_AGENCIA_BANCARIA);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_CONTA_BANCARIA);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_RECURSO);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ORGAO_CENTRO_CUSTO);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_CENTRO_CUSTO);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_UF_CCOR);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_MUNICIPIO_REME);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_RECEITA_MUNICIPAL_ESTADUAL);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_UG_UF);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_DIVIDA_EXTERNA);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ANO_CCOR);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_MES_CCOR);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ANO_SAQUE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_MES_SAQUE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_IDOC);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_DESTINACAO_RECOLHIMENTO);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_RECOLHIMENTO_GRU);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_PAGAMENTO_GPS);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_GFIP);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_VINCULACAO_PAGAMENTO);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_CONTA_CONTABIL_REFE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_CATEGORIA_GASTO_CCOR);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_TP_DOC_CCOR);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_UG_DOC_HABIL);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_DOC_HABIL);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ANO_TAXA_CAMBIO_CCOR);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_MES_TAXA_CAMBIO_CCOR);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_DIA_TAXA_CAMBIO_CCOR);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_IN_RESULTADO_RECEITA);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_TP_DESPESA);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_GRUPO_DE_FONTE);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_CONTA_CONTABIL_CLAS_1);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_BANCO_ARRECADADOR);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_TP_ENTIDADE_FAVO_DOC);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_ENTIDADE_FAVO_DOC);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_LANCAMENTO_INVA_SK);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (AN_EXERCICIO_C);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (DT_CARGA_C);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (NO_ORIGEM_C);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (IN_OPERACAO_C);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_INICIATIVA_PT);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_OBJETIVO_PT);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_TP_DOCUMENTO);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_UG_EMIT_DOC);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (CO_UG_EMIT_DOC);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_DOCUMENTO_LANC);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (NR_UNICO);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_EVENTO);
collect statistics on dbpro_33393_dwtg.WF_LANCAMENTO column (ID_DIA_LANC);

COLUNAS COMPOSTAS

COLLECT STATISTICS COLUMN (ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_ORGAO_PI,ID_PI,ID_PTRES,ID_RESULTADO_LEI,ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT,ID_LOCALIZADOR_GASTO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC,ID_UG_EXEC,ID_TP_ENTIDADE_FAVO_DOC,ID_ENTIDADE_FAVO_DOC,ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_UG_RESP,ID_ORGAO_PI,ID_PI,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_PTRES,ID_RESULTADO_LEI,ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT,ID_LOCALIZADOR_GASTO_PT,ID_GRUPO_DE_FONTE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC,ID_ESFERA_ORCAMENTARIA,ID_ORGAO_PI,ID_PI,ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT,ID_LOCALIZADOR_GASTO_PT,ID_DIVIDA_EXTERNA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_UG_EXEC,ID_ORGAO_EMIT_DOC_H,ID_ORGAO_SUPE_EMIT_DOC_H,ID_ORGAO_MAXI_EMIT_DOC_H,ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE,ID_DOCUMENTO_CCOR) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ORGAO_EMIT_DOC_H,ID_ORGAO_SUPE_EMIT_DOC_H,ID_ORGAO_MAXI_EMIT_DOC_H,ID_ESFERA_ORCAMENTARIA,ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_UG_RESP,ID_ORGAO_PI,ID_PI,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_TP_ENTIDADE_FAVO_DOC,ID_ENTIDADE_FAVO_DOC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE,ID_ORGAO_PI,ID_PI,ID_RESULTADO_LEI,ID_DOCUMENTO_CCOR,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC,ID_UG_EXEC,ID_TP_ENTIDADE_FAVO_DOC,ID_ENTIDADE_FAVO_DOC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_ORGAO_PI,ID_PI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_ORGAO_EMIT_DOC_H,ID_ORGAO_SUPE_EMIT_DOC_H,ID_ORGAO_MAXI_EMIT_DOC_H,ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE,ID_DOCUMENTO_CCOR) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_UG_EXEC,ID_MOEDA_UG_EXEC_H,ID_ORGAO_EMIT_DOC_H,ID_ORGAO_SUPE_EMIT_DOC_H,ID_ORGAO_MAXI_EMIT_DOC_H,ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_UG_EXEC,ID_ORGAO_EMIT_DOC_H,ID_ORGAO_SUPE_EMIT_DOC_H,ID_ORGAO_MAXI_EMIT_DOC_H,ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE,ID_DOCUMENTO_CCOR) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_UG_EXEC,ID_TP_ENTIDADE_FAVO_DOC,ID_ENTIDADE_FAVO_DOC,ID_ESFERA_ORCAMENTARIA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_UG_RESP,ID_ORGAO_PI,ID_PI,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_TP_ENTIDADE_FAVO_DOC,ID_ENTIDADE_FAVO_DOC,ID_ESFERA_ORCAMENTARIA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_UG_RESP,ID_ORGAO_PI,ID_PI,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_UG_EXEC,ID_ORGAO_EMIT_DOC_H,ID_ORGAO_SUPE_EMIT_DOC_H,ID_ORGAO_MAXI_EMIT_DOC_H,ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (IN_ISF_LANC,ID_UG_EXEC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE,ID_UG_RESP,ID_ORGAO_PI,ID_PI,ID_PTRES,ID_GRUPO_DE_FONTE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_DIA_LANC,ID_UG_EXEC,ID_TP_ENTIDADE_FAVO_DOC,ID_ENTIDADE_FAVO_DOC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_ORGAO_PI,ID_PI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_MES_LANC,ID_DIA_LANC,ID_TP_ENTIDADE_FAVO_DOC,ID_ENTIDADE_FAVO_DOC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_ORGAO_PI,ID_PI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_UG_EXEC,ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE,ID_DOCUMENTO_CCOR) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_UG_EXEC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_ORGAO_PI,ID_PI,ID_ACAO_PT,ID_LOCALIZADOR_GASTO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_DOCUMENTO_LANC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_ORGAO_PI,ID_PI,ID_PTRES,ID_DOCUMENTO_CCOR) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE,ID_DOCUMENTO_CCOR) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_UG_EXEC,ID_MOEDA_UG_EXEC_H,ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_UG_EXEC,ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE,ID_DOCUMENTO_CCOR) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H,ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_UG_RESP,ID_ORGAO_PI,ID_PI,ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC,ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_UG_EXEC,ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MOEDA_UG_EXEC_H,ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE,ID_DOCUMENTO_CCOR) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H,ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE,ID_UG_RESP,ID_ORGAO_PI,ID_PI,ID_DOCUMENTO_CCOR) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_GRUPO_DESPESA_NADE,ID_UG_RESP,ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_TP_ENTIDADE_FAVO_DOC,ID_ENTIDADE_FAVO_DOC,ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT,ID_LOCALIZADOR_GASTO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC,ID_MOEDA_UG_EXEC_H,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ESFERA_ORCAMENTARIA,ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT,ID_LOCALIZADOR_GASTO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ORGAO_PI,ID_PI,ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ORGAO_EMIT_DOC_H,ID_ORGAO_SUPE_EMIT_DOC_H,ID_ORGAO_MAXI_EMIT_DOC_H,ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT,ID_LOCALIZADOR_GASTO_PT,ID_GRUPO_DE_FONTE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE,ID_PTRES,ID_DOCUMENTO_CCOR) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE,ID_UG_RESP,ID_PTRES,ID_DOCUMENTO_CCOR) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE,ID_UG_RESP,ID_DOCUMENTO_CCOR,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE,ID_ORGAO_PI,ID_PI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT,ID_LOCALIZADOR_GASTO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT,ID_LOCALIZADOR_GASTO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_DIA_LANC,ID_MOEDA_UG_EXEC_H,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_EVENTO,ID_UG_RESP,ID_ORGAO_PI,ID_PI,ID_PTRES,ID_BANCO,ID_AGENCIA_BANCARIA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT,ID_DIVIDA_EXTERNA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT,ID_CELULA_ORCAMENTARIA_SK) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_UG_EXEC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MOEDA_UG_EXEC_H,ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_FONTE_RECURSO_DETA,ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_DIA_LANC,ID_GRUPO_DESPESA_NADE,ID_UG_RESP,ID_RESULTADO_LEI,ID_UO,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_ANO_LANC,ID_ORGAO_EMIT_DOC_H,ID_ORGAO_SUPE_EMIT_DOC_H,ID_ORGAO_MAXI_EMIT_DOC_H,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_ORGAO_PI,ID_PI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_RESULTADO_LEI,ID_SUBITEM_NADE,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CORRENTE_SK,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT,ID_LOCALIZADOR_GASTO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT,ID_LOCALIZADOR_GASTO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_DOCUMENTO_LANC,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT,ID_LOCALIZADOR_GASTO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT,ID_LOCALIZADOR_GASTO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_BANCO,ID_AGENCIA_BANCARIA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_TP_ENTIDADE_FAVO_DOC,ID_ENTIDADE_FAVO_DOC,ID_FONTE_RECURSO_DETA,ID_ORGAO_PI,ID_PI,ID_DOCUMENTO_CCOR) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UO,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE,ID_CELULA_ORCAMENTARIA_SK) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_MOEDA_UG_EXEC_H,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H,ID_ANO_SAQUE,ID_MES_SAQUE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_FONTE_RECURSO_DETA,ID_UO,ID_ANO_SAQUE,ID_MES_SAQUE,ID_VINCULACAO_PAGAMENTO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_ORGAO_EMIT_DOC_H,ID_ORGAO_SUPE_EMIT_DOC_H,ID_ORGAO_MAXI_EMIT_DOC_H,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_ANO_LANC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_PO,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_DOCUMENTO_LANC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_FONTE_RECURSO_DETA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_DOCUMENTO_LANC,ID_ORGAO_EMIT_DOC_H,ID_ORGAO_SUPE_EMIT_DOC_H,ID_ORGAO_MAXI_EMIT_DOC_H,ID_FONTE_RECURSO_DETA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_EVENTO,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_UG_RESP) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_SUBITEM_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE,ID_UO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_ACAO_PT,ID_LOCALIZADOR_GASTO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_DOCUMENTO_LANC,ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_LOCALIZADOR_GASTO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_UO,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC,ID_MOEDA_UG_EXEC_H,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC,ID_MOEDA_UG_EXEC_H,ID_FONTE_RECURSO_DETA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_EVENTO,ID_UG_RESP,ID_ORGAO_PI,ID_PI,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_FONTE_RECURSO_DETA,ID_ANO_SAQUE,ID_MES_SAQUE,ID_VINCULACAO_PAGAMENTO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H,ID_FONTE_RECURSO_DETA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_UG_EXEC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H,ID_VINCULACAO_PAGAMENTO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ENTIDADE_FAVO_DOC,ID_DOCUMENTO_LANC,ID_ORGAO_EMIT_DOC_H,ID_ORGAO_SUPE_EMIT_DOC_H,ID_ORGAO_MAXI_EMIT_DOC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC,ID_TP_ENTIDADE_FAVO_DOC,ID_ENTIDADE_FAVO_DOC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ESFERA_ORCAMENTARIA,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC,ID_ORGAO_PI,ID_PI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ACAO_PT,ID_PI,ID_MES_LANC,ID_CONTA_CONTABIL_LANC,ID_ANO_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ENTIDADE_FAVO_DOC,ID_ANO_LANC,ID_TP_ENTIDADE_FAVO_DOC,ID_CONTA_CONTABIL_LANC,ID_UG_EXEC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ORGAO_EMIT_DOC_H,ID_ORGAO_SUPE_EMIT_DOC_H,ID_ORGAO_MAXI_EMIT_DOC_H,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC,ID_DOCUMENTO_LANC,ID_UG_EXEC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC,ID_UG_EXEC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_DOCUMENTO_LANC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H,ID_CELULA_ORCAMENTARIA_SK) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H,ID_CONTA_CORRENTE_SK) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_ORGAO_PI,ID_PI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DOCUMENTO_LANC,ID_MOEDA_UG_EXEC_H,ID_UO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_MOAP_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_RESULTADO_LEI,ID_SUBITEM_NADE,ID_CONTA_CONTABIL_LANC,ID_UG_EXEC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_RESULTADO_LEI,ID_SUBITEM_NADE,ID_TP_ENTIDADE_FAVO_DOC,ID_ENTIDADE_FAVO_DOC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_RESULTADO_LEI,ID_SUBITEM_NADE,ID_ORGAO_PI,ID_PI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_FUNCAO_PT,ID_SUBFUNCAO_PT,ID_PROGRAMA_PT,ID_LOCALIZADOR_GASTO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H,ID_FONTE_RECURSO_DETA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE,ID_UG_RESP) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H,ID_RESULTADO_LEI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_DIA_LANC,ID_MOEDA_UG_EXEC_H,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_MES_LANC,ID_DIA_LANC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_UG_EXEC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H,ID_ORGAO_PI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_DIA_LANC,ID_MOEDA_UG_EXEC_H,ID_FONTE_RECURSO_DETA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_DOCUMENTO_LANC,ID_ORGAO_EMIT_DOC_H,ID_ORGAO_SUPE_EMIT_DOC_H,ID_ORGAO_MAXI_EMIT_DOC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC,ID_ESFERA_ORCAMENTARIA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC,ID_UG_EXEC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC,ID_DIVIDA_EXTERNA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC,ID_UO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_DIA_LANC,ID_UG_EXEC,ID_CONTA_CORRENTE_SK) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_ANO_LANC,ID_GRUPO_DESPESA_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_ANO_LANC,ID_GRUPO_DESPESA_NADE,ID_DOCUMENTO_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_ANO_LANC,ID_GRUPO_DESPESA_NADE,ID_CONTA_CONTABIL_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC,ID_UG_RESP) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_UG_EXEC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_RESP,ID_ORGAO_PI,ID_PI,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ENTIDADE_FAVO_DOC,ID_ANO_LANC,ID_TP_ENTIDADE_FAVO_DOC,ID_UG_EXEC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ENTIDADE_FAVO_DOC,ID_ANO_LANC,ID_TP_ENTIDADE_FAVO_DOC,ID_CONTA_CONTABIL_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H,ID_EVENTO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_DIA_LANC,ID_UG_EXEC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_TP_ENTIDADE_FAVO_DOC,ID_ENTIDADE_FAVO_DOC,ID_DOCUMENTO_CCOR) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DOCUMENTO_LANC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_DOCUMENTO_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H,ID_UO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_CELULA_ORCAMENTARIA_SK) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_UG_RESP) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_UO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_ORGAO_PI,ID_PI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_RESULTADO_LEI,ID_MES_LANC,ID_ANO_LANC,ID_UO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_ANO_LANC,ID_ORGAO_PI,ID_PI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,IN_ISF_LANC,ID_PI,QT_LANCAMENTO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_ANO_LANC,ID_CONTA_CONTABIL_LANC,ID_DOCUMENTO_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_ANO_LANC,ID_UO,ID_UG_RESP) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC,ID_VINCULACAO_PAGAMENTO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_VINCULACAO_PAGAMENTO,ID_ANO_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_DOCUMENTO_CCOR) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_RESULTADO_LEI,ID_SUBITEM_NADE,ID_DOCUMENTO_CCOR) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_RESULTADO_LEI,ID_SUBITEM_NADE,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_RESULTADO_LEI,ID_SUBITEM_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_RESULTADO_LEI,ID_SUBITEM_NADE,ID_FONTE_RECURSO_DETA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_ORGAO_PI,ID_PI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_RESULTADO_LEI,ID_SUBITEM_NADE,ID_CONTA_CONTABIL_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_RESULTADO_LEI,ID_SUBITEM_NADE,ID_UG_EXEC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_GRUPO_DESPESA_NADE,ID_UO,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MES_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_DIA_LANC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_ANO_LANC,ID_UG_EXEC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DIA_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_MOEDA_UG_EXEC_H,ID_FONTE_RECURSO_DETA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_UG_EXEC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_MOEDA_UG_EXEC_H,ID_ORGAO_PI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_SAQUE,ID_MES_SAQUE,ID_VINCULACAO_PAGAMENTO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_ANO_SAQUE,ID_MES_SAQUE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_VINCULACAO_PAGAMENTO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_FONTE_RECURSO_DETA,ID_ANO_SAQUE,ID_MES_SAQUE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_UG_EXEC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ORGAO_EMIT_DOC_H,ID_ORGAO_SUPE_EMIT_DOC_H,ID_ORGAO_MAXI_EMIT_DOC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_DOCUMENTO_LANC,ID_ORGAO_PI,ID_PI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_GRUPO_DESPESA_NADE,ID_ANO_LANC,ID_UG_EXEC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_FONTE_RECURSO_DETA,ID_BANCO,ID_AGENCIA_BANCARIA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_PTRES,ID_BANCO,ID_AGENCIA_BANCARIA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_RESP,ID_BANCO,ID_AGENCIA_BANCARIA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_MES_LANC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_DOCUMENTO_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_DOCUMENTO_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_GRUPO_DE_FONTE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_GRUPO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_DOCUMENTO_LANC,ID_UG_EXEC,ID_FONTE_RECURSO_DETA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_FONTE_RECURSO_DETA,ID_ACAO_PT,ID_VINCULACAO_PAGAMENTO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_GRUPO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_CELULA_ORCAMENTARIA_SK) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_FONTE_RECURSO_DETA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_UG_RESP) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_UO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_ANO_LANC,ID_DOCUMENTO_CCOR) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_ANO_LANC,ID_ESFERA_ORCAMENTARIA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_ANO_LANC,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_ANO_LANC,ID_UG_RESP) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_ANO_LANC,ID_ORGAO_PI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_ANO_LANC,ID_TP_ENTIDADE_FAVO_DOC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_ANO_LANC,ID_DOCUMENTO_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_ANO_LANC,ID_FONTE_RECURSO_DETA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ORGAO_PI,ID_PI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC,ID_VINCULACAO_PAGAMENTO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ESFERA_ORCAMENTARIA,ID_FONTE_RECURSO_DETA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_RESULTADO_LEI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_TP_ENTIDADE_FAVO_DOC,ID_ENTIDADE_FAVO_DOC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ORGAO_PI,ID_PI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_RESULTADO_LEI,ID_SUBITEM_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_UG_EXEC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_RESULTADO_LEI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_FONTE_RECURSO_DETA,ID_UG_RESP) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_GRUPO_DESPESA_NADE,ID_UO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_RESULTADO_LEI,ID_UO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_DOCUMENTO_CCOR) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_FONTE_RECURSO_DETA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_CELULA_ORCAMENTARIA_SK) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MOEDA_UG_EXEC_H,ID_FONTE_RECURSO_DETA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MOEDA_UG_EXEC_H,ID_CELULA_ORCAMENTARIA_SK) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MOEDA_UG_EXEC_H,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MOEDA_UG_EXEC_H,ID_GRUPO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MOEDA_UG_EXEC_H,ID_UG_RESP) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_GRUPO_DESPESA_NADE,ID_RESULTADO_LEI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MOEDA_UG_EXEC_H,ID_RESULTADO_LEI) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MOEDA_UG_EXEC_H,ID_UO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_GRUPO_DESPESA_NADE,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_UO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ACAO_PT,ID_CONTA_CORRENTE_SK) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ACAO_PT,ID_DOCUMENTO_CCOR) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ACAO_PT,ID_CONTA_CONTABIL_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ACAO_PT,ID_DOCUMENTO_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_GRUPO_DESPESA_NADE,ID_UG_EXEC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,VA_CREDITO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_DOCUMENTO_LANC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_DOCUMENTO_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ACAO_PT,ID_LOCALIZADOR_GASTO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MES_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_SUBITEM_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CATEGORIA_ECONOMICA_NADE,ID_GRUPO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_GRUPO_DESPESA_NADE,ID_ELEMENTO_DESPESA_NADE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_UG_RESP) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_UO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_FONTE_RECURSO_DETA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_DOCUMENTO_LANC,ID_UG_EXEC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_SAQUE,ID_MES_SAQUE) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_ANO_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_VINCULACAO_PAGAMENTO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_ESFERA_ORCAMENTARIA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CELULA_ORCAMENTARIA_SK,ID_DIVIDA_EXTERNA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ESFERA_ORCAMENTARIA,ID_CELULA_ORCAMENTARIA_SK) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_FONTE_RECURSO_DETA,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UO,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_RESP,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_UG_RESP) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_EXEC,ID_EVENTO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_BANCO,ID_AGENCIA_BANCARIA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_UG_RESP) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_UG_EXEC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_DOCUMENTO_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_TP_ENTIDADE_FAVO_DOC,ID_UO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_ANO_LANC,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_MES_LANC,ID_UG_EXEC) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_UG_RESP,ID_UO) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_TP_ENTIDADE_FAVO_DOC,ID_ESFERA_ORCAMENTARIA) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_CONTA_CONTABIL_LANC,ID_PTRES) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_DOCUMENTO_CCOR,ID_ORGAO_SUPE_EMIT_DOC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_VINCULACAO_PAGAMENTO,ID_CATEGORIA_GASTO_CCOR) ON dbpro_33393_dwtg.WF_LANCAMENTO;
COLLECT STATISTICS COLUMN (ID_VINCULACAO_PAGAMENTO,ID_MOEDA_UG_EXEC_H) ON dbpro_33393_dwtg.WF_LANCAMENTO;

--=======================================================================================================
--USUARIOS
--privileǵios - como criar usuario com para acessar tabelas em outro esquema sem sinônimos - 
--veja o que o solicitante quer.
--normalmente o solicitante pede os acessos que ele quer
--Ronaldo dar o privileǵio somente de resource, connect e unlimited tablespace
--se por acaso for para outro esquema que o cara vai copiar ai sim dar privilegio de select para todas as tabelas.

--Eu crio sinônimo quando eu precisar fazer select sem usar prefixo -->> resumindo o usuario não precisa de preocupar com o esquema da tabela principal
--Não usei sinônimo aqui porque o solicitante não pediu, ou seja, eu só dei grant de select e mais os privilégios para ele ler o catalog_role e o dictionary
--select any table enxerga todas as tabelas de todos os esquemas. Esse privilégio tem que ter cuidado, só ficará limitado a usuário e senha.

-----------------------------------------------------------------------
--se ele for precisar ver os dicionarios e prevenir o erro Connection to Oracle established successfully. Error occurred while collecting data.
--se ele falar que vai conectar todas as tabelas e ler todas do dicionario você já tem que dar esse previlegio.

--------------------------------------------------------------------------------------------------------------------
-- USUÁRIO PARA POC SQL SERVER A PEDIDO DE FÁBIO 
create user "SIGPGFN_MSSQL" identified by "pgfn_mssql" default tablespace "TB_37260_SIGPGFN_USR_01";
-----------------------------------------------------------------------
grant resource, connect, unlimited tablespace to SIGPGFN_MSSQL;
-----------------------------------------------------------------------
select 
'grant select on SIGPGFN.'
||table_name||
' to SIGPGFN_MSSQL;' 
from dba_tables where owner='SIGPGFN';


15:54:41 DWPUB:whpro102 > grant select_catalog_role to SIGPGFN_MSSQL;

Grant succeeded.

15:55:08 DWPUB:whpro102 > grant select ANY dictionary to SIGPGFN_MSSQL;

Grant succeeded.

--por acaso se ocorrer esse erros aqui é só dá a permissão para cada um a pedido do solicitante.
User does not have required permissions:
SELECT ANY TABLE
CREATE ANY PROCEDURE
SELECT ANY SEQUENCE
CREATE ANY TYPE
CREATE ANY TRIGGER

DEPOIS TINHA DADO ERRO NOVAMENTE E AI EU EXECUTEI ESSE AQUI EM BAIXO PARA RESOLVER
grant SELECT ANY TABLE, CREATE ANY PROCEDURE, SELECT ANY SEQUENCE, CREATE ANY TYPE, CREATE ANY TRIGGER TO SIGPGFN_MSSQL;

--=======================================================================================================
-- Executar os seguintes comandos:
2016RS/000335841 - ok

ALTER TABLE DBCAR_33393_DWTG.WD_RUBRICA_VINC
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD ID_CATEGORIA_ECONOMICA_NADE BYTEINT NOT NULL DEFAULT -8 ,
	ADD ID_GRUPO_DESPESA_NADE BYTEINT NOT NULL DEFAULT -8 ,
	ADD ID_MOAP_NADE BYTEINT NOT NULL DEFAULT -8 ,
	ADD ID_ELEMENTO_DESPESA_NADE BYTEINT NOT NULL DEFAULT -8 ,
	ADD ID_SUBITEM_NADE BYTEINT NOT NULL DEFAULT -8
;

ALTER TABLE DBPRO_33393_DWTG.WD_RUBRICA_VINC 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD ID_CATEGORIA_ECONOMICA_NADE BYTEINT NOT NULL DEFAULT -8 ,
	ADD ID_GRUPO_DESPESA_NADE BYTEINT NOT NULL DEFAULT -8 ,
	ADD ID_MOAP_NADE BYTEINT NOT NULL DEFAULT -8 ,
	ADD ID_ELEMENTO_DESPESA_NADE BYTEINT NOT NULL DEFAULT -8 ,
	ADD ID_SUBITEM_NADE BYTEINT NOT NULL DEFAULT -8
;

REPLACE VIEW MS_33393_DWTG_PRO.WD_RUBRICA_VINC AS LOCK ROW FOR ACCESS SELECT * FROM DBPRO_33393_DWTG.WD_RUBRICA_VINC;

--===============-============================================================================================================================
RDM
2017RDM/00000279

1. Recriar a tabela abaixo:
 
PEGAR A ESTATÍSTICA COM SHOWSTATS

count == 19059

SHOW STATS ON DBPRO_33393_DWTG.WD_UO_PT_INICIATIVA;


COLLECT STATISTICS 
                   -- default SYSTEM SAMPLE PERCENT 
                   -- default SYSTEM THRESHOLD PERCENT 
            COLUMN ( ID_SUBFUNCAO_PT ) , 
            COLUMN ( ID_ACAO_PT ) , 
            COLUMN ( ID_LOCALIZADOR_GASTO_PT ) , 
            COLUMN ( ID_INICIATIVA_PT ) , 
            COLUMN ( ID_PROGRAMA_PT ) , 
            COLUMN ( ID_FUNCAO_PT ) , 
            COLUMN ( ID_UO ) , 
            COLUMN ( PARTITION ) 
                ON DBPRO_33393_DWTG.WD_UO_PT_INICIATIVA ;


DROP TABLE DBPRO_33393_DWTG.WD_UO_PT_INICIATIVA;

CREATE MULTISET TABLE DBPRO_33393_DWTG.WD_UO_PT_INICIATIVA ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ID_UO INTEGER NOT NULL,
      ID_FUNCAO_PT VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      ID_SUBFUNCAO_PT VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      ID_PROGRAMA_PT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      ID_ACAO_PT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      ID_LOCALIZADOR_GASTO_PT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      ID_ANO SMALLINT NOT NULL,
      ID_INICIATIVA_PT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      AN_EXERCICIO_C SMALLINT NOT NULL,
      DT_CARGA_C INTEGER NOT NULL,
      NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      IN_OPERACAO_C BYTEINT NOT NULL,
      ID_OBJETIVO_PT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9')
UNIQUE PRIMARY INDEX ( ID_UO ,ID_FUNCAO_PT ,ID_SUBFUNCAO_PT ,
ID_PROGRAMA_PT ,ID_ACAO_PT ,ID_LOCALIZADOR_GASTO_PT ,ID_ANO );

2. Publicar os dados a partir do Banco de Carga (dbcar_33393_dwtg) para o Banco de Produção (dbpro_33393_dwtg)

delete from DBPRO_33393_DWTG.WD_UO_PT_INICIATIVA;
INSERT INTO DBPRO_33393_DWTG.WD_UO_PT_INICIATIVA SELECT * FROM DBCAR_33393_DWTG.WD_UO_PT_INICIATIVA;

3. Recriação de Views no ambiente Microstrategy de Produção

replace view ms_33393_dwtg_pro.WD_UO_PT_INICIATIVA as lock row for access select * from dbpro_33393_dwtg.WD_UO_PT_INICIATIVA;

Grupo Executor: GMCDDF



--============================================================================================================================
VALDIANA - USAR O SCRIPT QUE ESTÁ EM COMANDOS RAPIDOS.

( ) Publicar todas
(X) Especificar quais (tabela e (sub)partição)
Tabela: WF_ARRC_COMP_LIQ_DIAS_VERT
Subpartição:
SPT_ADIV_RA_DEC_2017_02_1

Tabela: WF_ARRC_COMP_LIQ_TOT_VERT
Subpartição:
SPT_ATOV_RA_DEC_2017_02_1 


Tabela: WF_ARRC_COMP_LIQ_DECS_VERT
Subpartição:
SPT_ADCV_RA_DEC_2017_02_1
--============================================================================================================================
21/02/2017 - DEFLA REGIO
SCRIPT 
--********************************************************************************
-- ATENCAO     ATENCAO     ATENCAO     ATENCAO     ATENCAO     ATENCAO     ATENCAO
--********************************************************************************
-- Antes de executar esse script nas tabelas de producao, entrar em contato com
-- o desenvolvimento (Alberto Regio #85 4602), pois e necessario executar esse
-- mesmo script no ambiente de carga, caso contrario havera erro no processo de
-- publicacao do DWTG.
--********************************************************************************

database dbpro_33393_dwtg;

-- Alteração do tipo de dados do campo PARENTESCO_VINC DE BYTEINT PARA SMALLINT.
CT WD_PARENTESCO_VINC_BKP_siape AS WD_PARENTESCO_VINC WITH DATA;
DROP TABLE WD_PARENTESCO_VINC;

CREATE MULTISET TABLE WD_PARENTESCO_VINC ,NO FALLBACK ,
NO BEFORE JOURNAL,
NO AFTER JOURNAL,
CHECKSUM = DEFAULT,
DEFAULT MERGEBLOCKRATIO
(
      PARENTESCO_VINC SMALLINT,
      NOME_PARENTESCO_VINC VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC,
      DATA_ATUALIZACAO TIMESTAMP(6),
      TIPO_ATUALIZACAO CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC
)
PRIMARY INDEX ( PARENTESCO_VINC );

INSERT INTO WD_PARENTESCO_VINC  SELECT * FROM WD_PARENTESCO_VINC_BKP_siape;
DROP TABLE WD_PARENTESCO_VINC_BKP_siape;
--******************************************************************************************************************************************************************
ALTER TABLE  WD_AREA_ATUACAO_CARGO 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE  WD_ATIVIDADE_GOVERNO 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE  WD_CARGO 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE  WD_CARGO_BASICO 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE  WD_CLASSE_CARGO 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE  WD_COTA_PARTE 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE  WD_ESCOLARIDADE 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE  WD_ESCOLARIDADE_CARGO 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE  WD_FAIXA_ETARIA 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_FORMACAO_PROFISSIONAL 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_FUNCAO 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_GRUPO_CARGO 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_GRUPO_RUBRICA 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_GRUPO_SIT_VINC_SERV 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_HABILIT_PROFISSIONAL 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_IDADE 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_JORNADA_CARGO 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_JORNADA_TRABALHO 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_NIVEL_CARGO 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_NIVEL_CLASSE_CARGO_EFETIVO 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_NIVEL_FUNCAO 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_ORGAO_DESTINO 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_ORGAO_ORIGEM 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_ORGAO_SUPERIOR_DESTINO 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_ORGAO_SUPERIOR_ORIGEM 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_ORGAO_SUPERIOR_VINC 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_ORGAO_VINC 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_ORIGEM_DESTINO_SERV 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_PARENTESCO_VINC 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_PLANO_CARGO 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_REGIME_JURIDICO 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_RUBRICA_VINC
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_SEXO
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_SITUACAO_FUNC_VINC_SERV
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_SITUACAO_VINC_SERV
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_SUBGRUPO_RUBRICA
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_SUBNIVEL_FUNCAO
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_UG_ACERTO_SIAPE
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_UG_UPAG_C
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_UORG_VINC
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_UORG_VINC_N1
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_UORG_VINC_N2
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_UORG_VINC_N3
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_UPAG
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_UPAG_C_SIAPE
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_UPAG_SIAPE 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_UPAG_UG_SIAPE
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WD_UPAG_VINC
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WF_PENSIONISTA_SIAPE_CUSTO
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WF_PENSIONISTA_SIAPE_CUSTO_01
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9 ,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9 ,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WF_SERVIDOR_SIAPE_CUSTO 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
--******************************************************************************************************************************************************************
ALTER TABLE WF_SERVIDOR_SIAPE_CUSTO_01 
	ADD AN_EXERCICIO_C SMALLINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9',
	ADD IN_OPERACAO_C BYTEINT NOT NULL DEFAULT -9,
	ADD DT_CARGA_INCLUSAO_C INTEGER NOT NULL DEFAULT -9,
	ADD NO_ORIGEM_INCLUSAO_C VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL DEFAULT '-9';
fim
--============================================================================================================================
DESATIVAÇÃO MJ -23/02/2017

Solicito que os ambientes (desenvolvimento, homologação e produção) do DW Estatística que estavam na versão 9.4.1 do Microstrategy sejam desativados. 
Solicito também que a licença Microstrategy do DW Estatística seja passada para o Tesouro Gerencial.

* RdM Origem: 2017RDM/000003330
###############################

* Código/Nome de Serviço:
#########################
07624 - SNSP - DW ESTATÍSTICA

* Informações sobre recursos:
(Esquemas, Tablespaces, Diretórios ASM, Diretórios SO, Serviços Oracle)
#############################################################################

############# Banco de Dados ##############
WHPRO101
WHHOM101
WHDES101



### Esquemas ###


### Tablespaces ###



### Diretórios ASM ###



### Serviços Oracle ###



################# Sistema Operacional ##################

### Diretórios SO ###



* Export dos esquemas para backup:
##################################

### Comandos EXPORT

* Verificar o diretório de DATA PUMP a ser utilizado.

export ORACLE_SID=
export RDM=
export ESQUEMA=
export DATA_PUMP_DIR=

nohup expdp $user/$password directory=$DATA_PUMP_DIR full=y INCLUDE=SCHEMA:\"IN \(\'ESQUEMA\',\'ESQUEMA2\'\)\",SYSTEM_GRANT,ROLE_GRANT JOB_NAME=job_exp_${ESQUEMA} logfile=expdp_${ESQUEMA}_${RDM}_${ORACLE_SID}_`date '+%Y%m%d_%H%M'`.log dumpfile=expdp_${ESQUEMA}_${RDM}_${ORACLE_SID}_`date '+%Y%m%d_%H%M'`_%U.dmp PARALLEL=1 FILESIZE=60G > expdp_${ESQUEMA}_${RDM}_${ORACLE_SID}_`date '+%Y%m%d_%H%M'`.nohup &

### Dump gerado ###
P21> du -sm /caminho/do/dump/*xxxxxxRDMxxxxxxx*



* Solicitação de Backup do DUMP
###############################

**************** AIX ******************
RdM: XXXXXXXXXXXXXXXX

Favor encaminhar para GMCDDFUNIX,

Hostname: 
IP: 
Ambiente: 
Código de Serviço: 

Objetivo: Armazenar em fita o último backup do esquema TEMA do banco BANCO. O sistema será desativado em ambiente de desenvolvimento.

Atividade: Favor realizar backup anual, com retenção de 1 ano dos arquivos abaixo da máquina. 

P21> du -sm /caminho/do/dump/*xxxxxxRDMxxxxxxx*


Qualquer dúvida, por gentileza nos contatar.
Obrigado.
********************************

* Remoção do filesystem no SO
##################################
**************** AIX ******************
RdM: XXXXXXXXXXXXXXXX 

Favor encaminhar para GMCDDFUNIX.

Remoção de Filesystem - Desativação do DW TEMA - Ambiente

Hostname: 
IP: 
Ambiente: 
Código de Serviço: 

* Remover filesystem:

df -g | grep COD_SERVICO
Filesystem       GB blocks      Free %Used    Iused %Iused Mounted on


**********************************

* Remoção de usuários e tablespaces (DROPs)
####################################

drop user TEMA cascade;

drop tablespace NOME_TABLESPACE including contents and datafiles;


********************************


* Remoção dos diretórios ASM
##############################

* Conectar como SYSDBA

alter diskgroup NOME_DG drop directory '+NOME_DG/caminho/diretorio';
alter diskgroup NOME_DG drop directory '+NOME_DG/caminho';

********************************
* Solicitação de desativação de jobs no Control-M 
#################################################

* Ticket para GMCD**CTM 


========== RESUMO ============

* Atividades realizadas:

- Realizado backup dos esquemas
- Removidos os esquemas
- Removidos tablespaces sob o código de serviço
- Removido serviço Oracle



--=============================================================================================================

find . -type f -size +35k -exec ls -lh {} \; | awk '{ print $9 ": " $5 }'

'
--====================================================================================================================
estou aqui no arquivo 3 sh ....continuar daqui no aquitro total3. 
COLLECT STATISTICS COLUMN (CO_UG_EMIT_DOC ,ID_ANO_LANC ,ID_MES_LANC , ID_DOCUMENTO_LANC) ON dbpro_33393_dwtg.WF_LANCAMENTO  ;

--=====================================================
23/02/2017 -  LEANDRO - CETEC - TESTE DE EXECUÇÃO DE JDV

1-O profile JDV interno e externo tem 1500 gb de spool e na primeira execução já estourou o spool.
  Foi mudado para o profile de 1500 para 11000gb de spool para realizar o mesmo.

2-Alterado o crontab da máquina 49 para liberar o jdv para uso pelo leandro

3-o backup do carga foi ajustado para começar mais cedo, às 19:30, para podermos começar às 21:30

4-o workload no tasm do teradata foi alterado para teste somente no horário do teste.

5-

--=====================================================================================================
--MUDAR TABELAS PARA OUTRA TABLESPACE
select segment_name from dba_segments where tablespace_name = 'TB_07624_SNSP_DAT_01' and owner = 'DWPUB';

alter table DWPUB.PLAN_TABLE move tablespace USERS;
alter table DWPUB.MSI_UPGRADE_PROGRESS move tablespace USERS;  
alter table DWPUB.CONTROLE_BATIMENTO move tablespace USERS;


--=====================================================================================================
Nome do Sistema: TG - Tesouro Gerencial.
Código Serviço: 33393.
UG de Serviço: SUNAF.
Ambiente: Tesouro Gerencial - Homologação.
Descrição Detalhada da Demanda: Em virtude da necessidade de liberarmos o ambiente de homologação para utilização efetiva como ambiente de homologação das demandas evolutivas e corretivas, solicito realizar duplicação do ambiente de homologação para um novo ambiente. A seguir detalho minha solicitação:
1. Duplicação do ambiente de homologação (ambiente e banco de dados) mantendo todos os usuários que hoje já acessam o homologação;
2. Manter a mesma URL (hom.tesourogerencial.tesouro.gov.br) porém, após a duplicação do ambiente, com o apoio da equipe de desenvolvimento habilitaremos um listbox no qual será possível escolher o ambiente para login (Tesouro Gerencial - Homologação OU Tesouro Gerencial - Visão 2016).
Obrigado.
Um dos grupos executores: GMCDDFOLAPDW - Brasília.
O outro grupo é de banco de dados.


--=====================================================================================================
Iara, Thiago Sodré, André Magalhães, Ronaldo Bezerra

No último feriado de carnaval, no dia 25, 26, 27 até a noite,  foi executado coleta de estatísticas para melhorar a performance do banco Teradata.
Foi realizado  587 comandos para coletar, contudo ainda faltam 1532.

O restante vou iniciar novamente no sábado dia 04/03 na parte da manhã e encerrarei na segunda dia 06 às 06:30 h., independente do que já estiver executado.

---================================================================================================
ajuste HOMOLGAÇÃO NOVA --DBPRO_2016 




INSERT into DBHOM_33393_DWTG.WD_UO_PT_INICIATIVA_NEW select * from dbHOM_33393_dwtg.WD_UO_PT_INICIATIVA; 

delete from DBPRO_33393_DWTG_2016.WA_DIA_ACUM_SEM_ANO_MES;
INSERt into DBPRO_33393_DWTG_2016.WA_DIA_ACUM_SEM_ANO_MES select * from DBHOM_33393_DWTG.WA_DIA_ACUM_SEM_ANO_MES;

---================================================================================================
02/03/2017 -  LEANDRO - CETEC - TESTE DE EXECUÇÃO DE JDV ---- SEGUNDO TESTE

1-O profile JDV interno e externo tem 1500 gb de spool e na primeira execução já estourou o spool.
  Foi mudado para o profile de 1500 para 11000gb de spool para realizar o mesmo.
--NÃO VOU FAZER POR ENQUANTO

2-Alterado o crontab da máquina 49 para liberar o jdv para uso pelo leandro
--OK ALTERADO 

3-o backup do carga foi ajustado para começar mais cedo, às 19:30, para podermos começar às 21:30

4-o workload no tasm do teradata foi alterado para teste somente no horário do teste.
--SOMENTE ÀS 21:30

5-

--====================================================================================================
replace view jv_33393_dwtg_pro_interno.WF_LANCAMENTO as lock row for access select * from dbpro_33393_dwtg.WF_LANCAMENTO where id_ano_lanc = 2017;


replace view jv_33393_dwtg_pro_interno.WD_ABA as lock row for access select * from dbpro_33393_dwtg.WD_ABA;


replace view jv_33393_dwtg_pro_externo.WD_ABA as lock row for access select * from dbpro_33393_dwtg.WD_ABA;

replace view ms_33393_dwtg_pro.WD_ABA as lock row for access select * from dbpro_33393_dwtg.WD_ABA;


--====================================================================================================
"Ninguém ignora tudo, ninguém sabe tudo, por isso, aprendemos sempre"

(Paulo Freire)

--====================================================================================================
Iara, Thiago Sodré, André Magalhães, Ronaldo Bezerra

Dando continuidade à Coleta de Estatística no Teradada fizemos execuções no último final de semana do dia 04, 05, 06 até às 06:40 da manhã,

Foi realizado  mais 444 comandos de coletas, restam ainda 1088.

Esse restante iriei iniciar novamente no sábado dia 11/03 na parte da manhã e encerrarei na segunda dia 13 às 06:30 h., independente do que já estiver executado.



--====================================================================================================
Grupo: GMCDDFPUBDW

1. Dados do gestor do tema:
1.1 Nome: Andersson Sousa
1.2 E-mail: andersson.sousa@serpro.gov.br
1.3 Ramal: (61) 7923
1.4 URC: SUNAF
1.5 Codigo de Servico: 33393
1.6 Nome do Servico: DW-TG (Tesouro Gerencial)

2 Atividade

Publicação de Dados

3. Demanda:

Publicar todas as tabelas do Banco de Carga de Homologação (DBCAR_33393_DWTG_HOM) para o Banco de Homologação (DBHOM_33393_DWTG).

BANCO DE ORIGEM:  DBCAR_33393_DWTG_HOM
BANCO DE DESTINO: DBHOM_33393_DWTG

IMPORTANTE: Os dados a serem publicados são do PAGEF, referentes a 2008 a 2013.
            Este acionamento deve ser atendido no dia 06/03/2017, após 19:00 hs.
            A priorização será realizada pela SUNAF.



00 19 * * * /data/dwpub/CONTROLMDWTGHOM/nohup ./REPLICAR_DBHOM_DIMENSOES_ORIGEM_CARGA_HOM.SH > REPLICAR_DBHOM_DIMENSOES_ORIGEM_CARGA_HOM.SH.log1 &
00 19 * * * /data/dwpub/CONTROLMDWTGHOM/nohup ./REPLICAR_DBHOM_FATOS_LANC_ORIGEM_CARGA_HOM.SH > 

show stats on dbpro_33393_dwtg.WD_ORGAO_EXERCICIO;
show stats on dbpro_33393_dwtg.WD_ORGAO_SUPE_EXERCICIO;
show stats on dbpro_33393_dwtg.WD_UG_EXERCICIO;
show stats on dbpro_33393_dwtg.WD_UO_EXERCICIO;

Count(*)
WD_ORGAO_EXERCICIO_NEW
6.654
WD_ORGAO_SUPE_EXERCICIO_NEW
4.069
WD_UG_EXERCICIO_NEW
417.349
WD_UO_EXERCICIO_NEW
9.699


show stats on dbpro_33393_dwtg.WD_UO_EXERCICIO_NEW;

COLLECT STATISTICS 
                   -- default SYSTEM SAMPLE PERCENT 
                   -- default SYSTEM THRESHOLD PERCENT 
            COLUMN ( ID_ANO ) , 
            COLUMN ( ID_UO ) , 
            COLUMN ( CO_UO ) , 
            COLUMN ( NO_UO ) , 
            COLUMN ( ID_ORGAO_UO ) , 
            COLUMN ( AN_EXERCICIO_C ) , 
            COLUMN ( DT_CARGA_C ) , 
            COLUMN ( NO_ORIGEM_C ) , 
            COLUMN ( IN_OPERACAO_C ) , 
            COLUMN ( CO_UO_OK ) , 
            COLUMN ( NO_UO_OK ) , 
            COLUMN ( ID_UG_RESP_UO ) 
                ON dbpro_33393_dwtg.WD_UO_EXERCICIO_NEW ;



COLLECT STATISTICS 
                   -- default SYSTEM SAMPLE PERCENT 
                   -- default SYSTEM THRESHOLD PERCENT 
            COLUMN ( ID_ANO ) , 
            COLUMN ( ID_ORGAO_SUPE ) , 
            COLUMN ( CO_ORGAO_SUPE ) , 
            COLUMN ( NO_ORGAO_SUPE ) , 
            COLUMN ( ID_ORGAO_MAXI ) , 
            COLUMN ( AN_EXERCICIO_C ) , 
            COLUMN ( DT_CARGA_C ) , 
            COLUMN ( NO_ORIGEM_C ) , 
            COLUMN ( IN_OPERACAO_C ) 
                ON dbpro_33393_dwtg.WD_ORGAO_SUPE_EXERCICIO_NEW;


COLLECT STATISTICS 
                   -- default SYSTEM SAMPLE PERCENT 
                   -- default SYSTEM THRESHOLD PERCENT 
            COLUMN ( ID_ANO ) , 
            COLUMN ( ID_ORGAO ) , 
            COLUMN ( CO_ORGAO ) , 
            COLUMN ( NO_ORGAO ) , 
            COLUMN ( SN_GERA_COTA_STN ) , 
            COLUMN ( SN_TOMADA_CONTAS_CONS ) , 
            COLUMN ( SN_ACUMULA_BALANCO_GFSM ) , 
            COLUMN ( ID_ORCA_FISCAL_ORGAO ) , 
            COLUMN ( ID_PODER_ORGAO ) , 
            COLUMN ( ID_ORGAO_SUPE ) , 
            COLUMN ( ID_GESTAO_PRIN ) , 
            COLUMN ( ID_TP_ADMIN_ORGAO ) , 
            COLUMN ( CO_UG_SETO_CONTABIL_ORGAO ) , 
            COLUMN ( NO_UG_SETO_CONTABIL_ORGAO ) , 
            COLUMN ( CO_UG_SETO_FINANCEIRO_ORGAO ) , 
            COLUMN ( NO_UG_SETO_FINANCEIRO_ORGAO ) , 
            COLUMN ( AN_EXERCICIO_C ) , 
            COLUMN ( DT_CARGA_C ) , 
            COLUMN ( NO_ORIGEM_C ) , 
            COLUMN ( IN_OPERACAO_C ) , 
            COLUMN ( SN_PLANO_INTERNO ) , 
            COLUMN ( CO_ORGAO_OK ) , 
            COLUMN ( NO_ORGAO_OK ) , 
            COLUMN ( CO_UG_INTEGRACAO_ORGAO ) , 
            COLUMN ( NO_UG_INTEGRACAO_ORGAO ) , 
            COLUMN ( SG_ORGAO ) , 
            COLUMN ( ID_UTILIZACAO_SIAFI_ORGAO ) , 
            COLUMN ( DT_ATO_CRIACAO_ORGAO ) , 
            COLUMN ( CO_UG_SETO_ORCA_ORGAO ) , 
            COLUMN ( NO_UG_SETO_ORCA_ORGAO ) , 
            COLUMN ( CO_CNPJ_ORGAO ) , 
            COLUMN ( CO_ORGAO_SOF ) , 
            COLUMN ( SN_SITUACAO_ATIVA ) , 
            COLUMN ( SN_ACUMULA_BALANCO_UNIAO ) , 
            COLUMN ( CO_ORGAO_SIAPE ) , 
            COLUMN ( ID_FORMA_UTILIZACAO_CPR ) , 
            COLUMN ( ID_DETALHAMENTO_CREDITO ) , 
            COLUMN ( SN_USA_CENTRO_CUSTO ) , 
            COLUMN ( ID_UTILIZACAO_SIASG_ORGAO ) , 
            COLUMN ( SN_AGENCIA_EXECUTIVA ) , 
            COLUMN ( ID_TP_RELACIONAMENTO_ORGAO ) , 
            COLUMN ( IN_CLAS_BALANORC ) , 
            COLUMN ( SN_USA_NOVO_SIAFI ) , 
            COLUMN ( CO_SIORG ) 
                ON dbpro_33393_dwtg.WD_ORGAO_EXERCICIO_NEW;

select 'collect statistics on dbpro_33393_dwtg.' || trim(tablename) || ' column (' || trim(columnname) || ');'
from dbc.columnsv 
where databasename = 'dbpro_33393_dwtg'
and tablename = 'WD_UG_EXERCICIO'
and columnname not like all ('VA%','QT%');


DROP TABLE DBPRO_33393_DWTG.WD_UG_EXERCICIO;
DROP TABLE DBPRO_33393_DWTG.WD_UO_EXERCICIO;
DROP TABLE DBPRO_33393_DWTG.WD_ORGAO_EXERCICIO;
DROP TABLE DBPRO_33393_DWTG.WD_ORGAO_SUPE_EXERCICIO;

rename table dbpro_33393_dwtg.WD_ORGAO_EXERCICIO_NEW TO dbpro_33393_dwtg.WD_ORGAO_EXERCICIO;
rename table dbpro_33393_dwtg.WD_ORGAO_SUPE_EXERCICIO_NEW TO dbpro_33393_dwtg.WD_ORGAO_SUPE_EXERCICIO;
rename table dbpro_33393_dwtg.WD_UG_EXERCICIO_NEW TO dbpro_33393_dwtg.WD_UG_EXERCICIO;
rename table dbpro_33393_dwtg.WD_UO_EXERCICIO_NEW TO dbpro_33393_dwtg.WD_UO_EXERCICIO;


--====================================================================================================
Favor abrir RS para a equipe SUPCD/CDBSA/CDSDW.

1. Dados do gestor do tema:
1.1 Nome : Andersson Sousa
1.2 E-mail: andersson.sousa@serpro.gov.br
1.3 Ramal: (61)7923
1.4 URC: SUNAF
1.5 Código de Serviço: 33393
1.6 Nome do Serviço: DW-TG (Tesouro Gerencial)

2 Atividades

Publicação do Banco de Carga (DBCAR_33393_DWTG) para o Banco de Produção (DBPRO_33393_DWTG) das seguintes tabelas:

DBPRO_33393_DWTG.WD_UG_EXERCICIO;
DBPRO_33393_DWTG.WD_UO_EXERCICIO;
DBPRO_33393_DWTG.WD_ORGAO_EXERCICIO;
DBPRO_33393_DWTG.WD_ORGAO_SUPE_EXERCICIO;

delete from dbpro_33393_dwtg.WD_ORGAO_EXERCICIO;
insert into dbpro_33393_dwtg.WD_ORGAO_EXERCICIO select * from dbcar_33393_dwtg.WD_ORGAO_EXERCICIO;

delete from dbpro_33393_dwtg.WD_ORGAO_SUPE_EXERCICIO;
insert into dbpro_33393_dwtg.WD_ORGAO_SUPE_EXERCICIO select * from dbcar_33393_dwtg.WD_ORGAO_SUPE_EXERCICIO;

delete from dbpro_33393_dwtg.WD_UG_EXERCICIO;
insert into dbpro_33393_dwtg.WD_UG_EXERCICIO select * from dbcar_33393_dwtg.WD_UG_EXERCICIO;

delete from dbpro_33393_dwtg.WD_UO_EXERCICIO;
insert into dbpro_33393_dwtg.WD_UO_EXERCICIO select * from dbcar_33393_dwtg.WD_UO_EXERCICIO;


--====================================================================================================
--****************************
 2017SS/0000118732
Mário,

Segue o acionamento criado para publicação da tabela WF_DOCUMENTO do banco de Carga de Homologação para o banco de Homologação.

Banco de Origem: DBCAR_33393_DWTG_HOM
Bando de Destino: DBHOM_33393_DWTG

Ats.
--*****************************

2017SS/0000128220 - historiamento 2

--*****************************

2017SS/000011471

Publicar todas as tabelas do Banco de Carga de Homologação (DBCAR_33393_DWTG_HOM) para o Banco de Homologação (DBHOM_33393_DWTG).

		BANCO DE ORIGEM:  DBCAR_33393_DWTG_HOM
		BANCO DE DESTINO: DBHOM_33393_DWTG


2017SS/0000114712

		3. Demanda:

		Publicar todas as tabelas do Banco de Carga de Homologação (DBCAR_33393_DWTG_HOM) para o Banco de Homologação (DBHOM_33393_DWTG).

		BANCO DE ORIGEM:  DBCAR_33393_DWTG_HOM
		BANCO DE DESTINO: DBHOM_33393_DWTG

		IMPORTANTE: Os dados a serem publicados são do PAGEF, referentes a 2008 a 2013.
		Este acionamento deve ser atendido no dia 06/03/2017, após 19:00 hs.
		A priorização será realizada pela SUNAF.

	Em caso de dúvidas, estamos a disposição.

--*********************************************************************************************************************************************
DE USR 
CREATE TABLESPACE TB_21760_META_USR_01 DATAFILE  '+DG_DWD01_01/dwd01/datafile/tb_21760_meta_usr_01.dbf'  SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 1024M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

create user ADMMETA IDENTIFIED by "456descorp321$spowh" default tablespace "TB_21760_META_USR_01";

grant resource, connect,  select any table, unlimited tablespace to ADMMETA;

--*********************************************************************************************************************************************
-EXTENDER A TABLESPACE DO USUÁRIO ABAIXO: 
MS941PRODSTNMD		  OPEN				 TB_07651_MS941PRODSTNMD_DAT_01

+DG_BSA097/p_07651_mstr/bimd002/tb_07651_ms941desstnmd_dat_01_003.dbf

ALTER TABLESPACE TB_07651_MS941PRODSTNMD_DAT_01 ADD DATAFILE '+DG_BSA097/p_07651_mstr/bimd002/tb_07651_ms941desstnmd_dat_01_005.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;



--*********************************************************************************************************************************************
cpus - Júlio.. Cezar

PRODUÇÃO = vp * smt = cpus virtuais
12/48  ==> isso é virtual = thread
CPU: 5 ===>> física entitletd       
SMT:4
VP: 12      
TOTAL:
MEM: 128
===============
--fórmula -- para calculo de thread
cpu virtual  = smt*vp ===>> que é igual a thred
vp = virtual process (process)
smt = 
entitle cpu = cpu física
-------------------------


--*********************************************************************************************************************************************
CREATE TABLESPACE TB_07653_PC961PDOM_DAT_01 DATAFILE '+DG_BSA097/p_07653_pwrcenter/bimd002/tb_07653_pc961pdom_dat_01_01.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------
create user PC961PDOM2 IDENTIFIED by "456pctrprod321bsa" default tablespace "TB_07653_PC961PDOM_DAT_01";

----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, connect, unlimited tablespace to PC961PDOM2;
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961PDOM2;

--*********************************************************************************************************************************************
para abrir aba mudanças no SCCD - mario

2017SS/0000167436
--==============================================================================================================================================
2017RDM/0000000513 - SCCD - EM ATENDIMENTO

Número SISCOR = 006327/2017-70

1. Descrição da demanda: Desativação do ambiente de homologação do DW Estatística.
2. Número do registro da Demanda (DEMANDAS / SCD / SIGOP): Demanda nr. 105994
3. Nome do cliente: Ministério da Justiça
4. Nome do serviço: DW Estatística
5. Código do serviço: 07624
6. CPS: 416.1
7. Data/Hora da expectativa da desativação do Serviço: 06/03/2017 
8. Será substituído por outro serviço? (SIM / NÃO): NAO.
9. Será desativado? (Aplicação / Banco): Desativar aplicação e banco.
10. Existem rotinas batch a desativar ? (SIM / NÂO): Desativar a a publicação de dados do DW SNSP (DW Estatística) para o banco bihom001. 
11. Informar a necessidade de backup e o tempo de retenção (1 a 5 anos): fazer backup de banco e aplicação por 1 ano.
12. Informar quantidade de copias, deve ser solicitado caso o cliente não tenha requerido o backup e está disponível somente para plataforma baixa: 1 cópia de banco e 1 cópia da aplicação. 
13. Serviço possui comunidade? (SIM / NÃO) Qual o grupo? Sim. GSDEPRSINESPDWESTAT
14. Motivo da desativação: A pedido do Cliente (Ministério da Justiça).



=================================================================================================================================
 2017RDM/000006671 - PENDENTE

Bom dia,

favor encaminhar Requisição de Mudança para GMCDDFORACLE.

Atividade: Favor realizar backup do esquema abaixo, com retenção de 1 ano.

Banco: BIMD002
Máquina: dfcdsrvp0074
IP: 161.148.236.19
Esquemas: 
MS941PMJLH		  
MS941PMJMD		

Motivo: Desativação de Serviço

Qualquer dúvida, por gentileza nos contatar.
Obrigado.

=================================================================================================================================
2017RDM/000006672 - PENDENTE


Bom dia,

favor encaminhar Requisição de Mudança para GMCDDFORACLE.

Atividade: Favor realizar backup do esquema abaixo, com retenção de 1 ano.

Banco: BIMD004
Máquina: dfcdsrvp0081
IP: 161.148.239.23
Esquemas: 
MS941DMJLH		  
MS941DMJMD		

Motivo: Desativação de Serviço

Qualquer dúvida, por gentileza nos contatar.
Obrigado.

=================================================================================================================================
 2017RDM/000006673 - PENDENTE

Bom dia,

favor encaminhar Requisição de Mudança para GMCDDFORACLE.

Atividade: Favor realizar backup do esquema abaixo, com retenção de 1 ano.

Banco: BIMD001
Máquina: dfcdsrvp0070
IP: 161.148.240.19
Esquemas: 
MS941HMJLH		  
MS941HMJMD		

Motivo: Desativação de Serviço

Qualquer dúvida, por gentileza nos contatar.
Obrigado.

=================================================================================================================================
data e hora da última coleta do lista para o banco DGCDSRVPBI0025

Falar com RONALDO SÃO PAULO.

fonte 

oraclebsa_ext
oraclebsa_ext
oraclebsa_ext
oraclebsa_ext
oraclebsa_ext

["2017-03-22 14:40:00",infinity)
["2017-03-22 08:23:00",infinity)
["2017-03-22 14:40:00",infinity)
["2017-03-22 14:40:00",infinity)
["2017-03-22 08:23:00",infinity)


--======================================================================================================================================
Mário,

Amanhã vamos precisar que seja criado alguns usuários para o novo serviço do Powercenter de Produção do Condomínio.

Segue abaixo os dados dos usuários que estão sendo utilizados no atual serviço do Powercenter de Produção.

Banco: BIMD002

Usuários dos serviços de Repositório:

1024 PARA TODOS

PC961PSGPEREP  
PC961PANLSREP 
PC961PPGFNREP
PC961PTRSTREP
PC961PFINCREP


Favor apenas criar novos usuários no banco com as mesmas permissões dos usuários acima.

create user PC961PSGPEREP2 IDENTIFIED by "456pctrprod321bsa" default tablespace "TB_07613_PC961PSGPEREP_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961PSGPEREP2;

create user PC961PANLSREP2 IDENTIFIED by "456pctrprod321bsa" default tablespace "TB_07996_PC961PANLSREP_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961PANLSREP2;

create user PC961PPGFNREP2 IDENTIFIED by "456pctrprod321bsa" default tablespace "TB_07653_PC961PPGFNREP_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961PPGFNREP2;

create user PC961PTRSTREP2 IDENTIFIED by "456pctrprod321bsa" default tablespace "TB_39900_PC961PTRSTREP_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961PTRSTREP2;

create user PC961PFINCREP2 IDENTIFIED by "456pctrprod321bsa" default tablespace "TB_86010_PC961PFINCREP_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to PC961PFINCREP2;

--======================================================================================================================================

cat *.sql | grep -ir  WF_LANCAMENTO L | wc -l

--======================================================================================================================================
demandas de backup.

MS941HMJLH
MS941HMJMD

MS941PMJLH
MS941PMJMD

MS941DMJLH
MS941DMJMD 

somente requisição de serviço. - RDM é só no SCCD.
css.serpro@serpro.gov.br
abrir para a 

--======================================================================================================================================
2017SS/0000206484 - SCCD - POSTGRES -
Sistema: DW Corporativo
Cod Servi?o: 06818
Ambiente: Banco DESENVOLVIMENTO - OLAP.
IP banco desenvolvimento OLAP : 161.148.239.33:5432 - Dbd_06818_Dwcorporativo
 
Solicito incluir no pghba.conf deste banco mencionado desenvolvimento -Dbd_06818_Dwcorporativo a entrada para os seguintes :
IP "161.148.26.50", user "77515129972" permissao all;

Motivo:  Relacionado a demanda  2017SS/0000191396 ; ocorreu erro seguinte -abaixo, que solicita nova inclusao de IP.
------
The server doesn't grant access to the database: the server reports
FATAL: no pg_hba.conf entry for host "161.148.26.50", user "77515129972", database "Dbd_06818_Dwcorporativo"
To access a database on a PostgreSQL server, you first have to grant primary access to the server for your client (Host Based Authentication). PostgreSQL will check the pg_hba.conf file if a pattern that matches your client address / username / database is present and enabled before any SQL GRANT access control lists are evaluated.
 -----

 contato - erica kroon - 61.9364

--======================================================================================================================================
'
2017SS/0000208487 - SCCD - execução de script.

Encaminhar para GMCDDF-PUBDW (Equipe de Banco Postgres do dw)
Sistema: DW Corporativo
Ambientes: bd CARGA /PRODUCAO OLAP
Cod Servico : 06818
Banco CARGA/PRODUCAO OLAP: Dbc_06818_Dwcorporativo / Dbp_06818_Dwcorporativo (161.148.236.33)
Banco HOMOLOGACAO OLAP: Dbh_06818_Dwcorporativo (161.148.240.33)

Executar o script ABAIXO que irá alterar campo de tabela no esquema SGP_Relacional dos bancos produtivos OLAP, de CARGA,  Homologação e  Produção do bi corporativo.
Favor enviar log da execucao - erica.moscoso@serpro.gov.br

---script:::
ALTER TABLE sgp_relacional.TB_HIST_PSAO_ALMC ALTER COLUMN NU_TELE_CELR_PSNT TYPE numeric(11,0);

--======================================================================================================================================
--view para achar as quotas por tablespace.
dba_ts_quotas 
desc dba_ts_quotas
--======================================================================================================================================
--O Usuário do quartzo estava locado e o leandro da cetec pediu para tirar do lock.
--o motivo que estava locado nem ele nem eu sabiamos. Porém guardei essa informação aqui em baixo.

SIASG_QTZ		  LOCKED			 TB_42012_SIASG_USR_01		     10-03-17 00:30

126 rows selected.
15:15:47 DWPUB:whpro102 > alter user SIASG_QTZ account unlock;
User altered.

--======================================================================================================================================
mudar para d-1

Mário - 2017SS/0000220023 - relatório Teradata p/ o TG (essa eu não sei fazer mesmo)

rdesktop -g 1510x840 -d DFCDDOM0001 -u 76455424115 -r disk:Desktop=/home/76455424115/Desktop 161.148.236.94

--======================================================================================================================================

CREATE TABLESPACE TB_07651_MS104DMDTESTE_DAT_01 DATAFILE '+DG_BSA105/d_07651_mstr/bimd004/tb_07651_ms104dmdteste_dat_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------
create user MS104DCONDMDTESTE IDENTIFIED by "456descond321$bsamd" default tablespace "TB_07651_MS104DMDTESTE_DAT_01";

----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO cRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS104DCONDMDTESTE;

--======================================================================================================================================

+DG_SPO003/p_21782_dwdirpf/pdw03/tb_21782_irpf_ind_01_21.dbf

+DG_SPO002/p_21782_dwdirpf/pdw03/tb_21782_irpf_ind_01_22.dbf --  vou criar


- resolvido 
- executar assim que estiver janela 


  CREATE BITMAP INDEX "IRPF"."CDSDW_WF_BDIR_DD_DECL_CPF_BM" ON "IRPF"."WF_IRPF_BDIR" ("DD_DECL_CPF")
  PCTFREE 1 INITRANS 2 MAXTRANS 255  NOLOGGING
  STORAGE( MINEXTENTS 1 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TB_21782_IRPF_IND_02"  LOCAL;




CREATE TABLESPACE TB_21782_IRPF_IND_02 DATAFILE  '+DG_SPO002/p_21782_dwdirpf/pdw03/tb_21782_irpf_ind_02_01.dbf'  SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

ALTER TABLESPACE TB_21782_IRPF_IND_02 ADD DATAFILE '+DG_SPO002/p_21782_dwdirpf/pdw03/tb_21782_irpf_ind_02_02.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_21782_IRPF_IND_02 ADD DATAFILE '+DG_SPO002/p_21782_dwdirpf/pdw03/tb_21782_irpf_ind_02_03.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;

--======================================================================================================================================
parei aqui
COLLECT STATISTICS COLUMN (ID_UG_EXEC ,ID_CATEGORIA_ECONOMICA_NADE , ID_GRUPO_DESPESA_NADE ,ID_MOAP_NADE ,ID_ELEMENTO_DESPESA_NADE , ID_DOCUMENTO_CCOR ,ID_ACAO_PT) ON dbpro_33393_dwtg.WF_LANCAMENTO  ;
--======================================================================================================================================

--*****feito 12/04/2017***************************************************************************************************************
movendo partição dvdr para 02
TB_21763_DVDR_DAT_02

Comando : Insert /*+ append */ into DVDR.WF_DVDR_DEBITO partition (PT_DEBITO_VRS_126) nologging select * from VPTDEBITOVRS126@DBL_P\


ALTER TABLE DVDR.WF_DVDR_DEBITO MOVE PARTITION PT_DEBITO_VRS_126 TABLESPACE TB_21763_DVDR_DAT_02;



--======================================================================================================================================
backup - MS941PRODSTNMD

MS941PSTNMD

CREATE TABLESPACE TB_07651_MS941PSTNMD_DAT_01 DATAFILE '+DG_BSA097/p_07651_mstr/bimd002/tb_07651_ms941pstnmd_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

ALTER TABLESPACE TB_07651_MS941PSTNMD_DAT_01 ADD DATAFILE '+DG_BSA097/p_07651_mstr/bimd002/tb_07651_ms941pstnmd_dat_01_002.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;

ALTER TABLESPACE TB_07651_MS941PSTNMD_DAT_01 ADD DATAFILE '+DG_BSA097/p_07651_mstr/bimd002/tb_07651_ms941pstnmd_dat_01_003.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;

------------------------------------------------------------CRIANDO USUÁRIO NO BIMD002 PARA O TABLESPACE CRIADO----------------------------------------
create user MS941PSTNMD IDENTIFIED by "456prodstn321$bsamd" default tablespace "TB_07651_MS941PSTNMD_DAT_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS941PSTNMD;
--------------------------------------------------------------------------------------------------------------------------------------------
na p74
nohup impdp dwpub/dwpubmd@bimd002 directory=DWPUB_DATAPUMP network_link=DBL_BIMD002 schemas=MS941PRODSTNMD remap_schema=MS941PRODSTNMD:MS941PSTNMD remap_tablespace=TB_07651_MS941PRODSTNMD_DAT_01:TB_07651_MS941PSTNMD_DAT_01 nologfile=y > importmetadados20170412.log &

select object_type, count(object_type) from dba_objects where owner = 'MS941PRODSTNMD' group by object_type;

select object_type, count(object_type) from dba_objects where owner = 'AFIS' group by object_type;
select object_type, count(object_type) from dba_objects where owner = 'ADMAFIS' group by object_type;
select object_type, count(object_type) from dba_objects where owner = 'MS_21727_AFIS_PRE' group by object_type;

19:16:08 DWPUB:bimd002 > select object_type, count(object_type) from dba_objects where owner = 'MS941PRODSTNMD' group by object_type;

OBJECT_TYPE							      COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
INDEX										      54
TABLE										      72
TRIGGER 									       1

3 rows selected.

Elapsed: 00:00:00.21
19:16:23 DWPUB:bimd002 > select object_type, count(object_type) from dba_objects where owner = 'MS941PSTNMD' group by object_type;

OBJECT_TYPE							      COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
INDEX										      54
TABLE										      72
TRIGGER 									       1


--ESTATÍSTICA ORACLE POR SCHEMA -OWNER
exec DBMS_STATS.GATHER_SCHEMA_STATS(ownname=>'MS941PSTNMD',CASCADE=>TRUE, GRANULARITY => 'ALL',estimate_percent=>DBMS_STATS.AUTO_SAMPLE_SIZE, method_opt => 'for all indexed columns size auto', degree => 256);

19:19:35 DWPUB:bimd002 > exec DBMS_STATS.GATHER_SCHEMA_STATS(ownname=>'MS941PSTNMD',CASCADE=>TRUE, GRANULARITY => 'ALL',estimate_percent=>DBMS_STATS.AUTO_SAMPLE_SIZE, method_opt => 'for all indexed columns size auto', degree => 256);

PL/SQL procedure successfully completed.

Elapsed: 00:03:10.52


----**********************************************************************************************************************************
backup - MS941PRODSTNEM
backup - TB_07651_MS941PRODSTNEM_DAT_01

novo - ferramenta 
novo - schema

novo - MS_07651_MS941PSTNEM_PRO
novo - TB_07651_MS941PSTNEM_DAT_01

+DG_BSA096/p_07651_mstr/whpro102/tb_07651_ms941pstnem_dat_01_001.dbf


--entrar como sysdba
sqlplus dwpub@whpro102 as sysdba - em Brasilia
sqlplus / as sysdba para são paulo

alter diskgroup DG_BSA096 add directory '+DG_BSA096/p_33393_mstr/'; 
alter diskgroup DG_BSA096 add directory '+DG_BSA096/p_33393_mstr/whpro102/';


CREATE TABLESPACE TB_33393_MS941PSTNEM_DAT_01 DATAFILE '+DG_BSA096/p_33393_mstr/whpro102/tb_33393_ms941pstnem_dat_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

ALTER TABLESPACE TB_33393_MS941PSTNEM_DAT_01 ADD DATAFILE '+DG_BSA096/p_33393_mstr/whpro102/tb_33393_ms941pstnem_dat_dat_01_002.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;

ALTER TABLESPACE TB_33393_MS941PSTNEM_DAT_01 ADD DATAFILE '+DG_BSA096/p_33393_mstr/whpro102/tb_33393_ms941pstnem_dat_01_003.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;

ALTER TABLESPACE TB_33393_MS941PSTNEM_DAT_01 ADD DATAFILE '+DG_BSA096/p_33393_mstr/whpro102/tb_33393_ms941pstnem_dat_01_004.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;

ALTER TABLESPACE TB_33393_MS941PSTNEM_DAT_01 ADD DATAFILE '+DG_BSA096/p_33393_mstr/whpro102/tb_33393_ms941pstnem_dat_01_005.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;


CREATE TABLESPACE TB_33393_MS941PSTNEM_USR_01 DATAFILE '+DG_BSA096/p_33393_mstr/whpro102/tb_33393_ms941pstnem_usr_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 1024M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

------------------------------------------------------------CRIANDO USUÁRIO NO BIMD002 PARA O TABLESPACE CRIADO----------------------------------------
create user MS941PSTNEM IDENTIFIED by "456prodstn321$bsaem" default tablespace "TB_33393_MS941PSTNEM_DAT_01";
create user MS_33393_MS941PSTNEM_PRO IDENTIFIED by "456prodstn321$bsaem" default tablespace "TB_33393_MS941PSTNEM_USR_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
CREATE ROLE RL_FERRAMENTA_MS941PSTNEM;
GRANT RL_FERRAMENTA_MS941PSTNEM TO MS_33393_MS941PSTNEM_PRO;
--------------------------------------------------------------------------------------------------------------------------------------------
na p76
nohup impdp dwpub/dwpubpubbsb@whpro102 directory=DWPUB_DATAPUMP network_link=DBL_BIMD002 schemas=MS941PRODSTNEM remap_schema=MS941PRODSTNEM:MS941PSTNEM remap_tablespace=TB_07651_MS941PRODSTNEM_DAT_01:TB_33393_MS941PSTNEM_DAT_01 nologfile=y > importenterprisemanager20170427.log &

----**********************************************************************************************************************************
nova forma de aplicar role na ferramenta
Grant Select On SIGPGFN.SIG7_INSCRICAO_EXTINTA_H To RL_FERRAMENTA;


revoke Select On Sgpj.WF_DREX_DETL from RL_FERRAMENTA;
revoke Select On Sgpj.WF_DREX_DECL from RL_FERRAMENTA;
revoke Select On Sgpj.WF_DREX_DEMS from RL_FERRAMENTA;

Grant Select On Sgpj.WF_DREX_DETL To RL_DESENV_SGPJ;
Grant Select On Sgpj.WF_DREX_DECL To RL_DESENV_SGPJ;
Grant Select On Sgpj.WF_DREX_DEMS To RL_DESENV_SGPJ;



Grant Select On MS_ADMAFIS To RL_FERRAMENTA;
--==============================================================================================================================
--PARA DESENVOLVIMENTO
create user ADMAFIS IDENTIFIED by "456descorp321$spowh" default tablespace "TB_21727_AFIS_DAT_01";
Grant Select On ADMAFIS To RL_FERRAMENTA;

select 
'grant select on DIME.'
||table_name||
' to ADMPROC;' 
from dba_tables where owner='DIME';



grant resource, create table, create trigger, connect, create view, unlimited tablespace to ADMSAPJ;

--==============================================================================================================================
daniel veriricar grade mário
tesouro direto turbinado

--====================================================================================================================================
Mário,
Encaminho as informações para a inserção dos registros:
Banco: PMD03
Esquema: mstr941pubem
-- 
Atenciosamente,

Fernanda da Silva Alves
Serviço Federal de Processamento de Dados (SERPRO)
SUPCD/CDGOD/CDGDB
(61) 2021-9563

sqlplus mstr941pubem@pmd03

--====================================================================================================================================
select * from dwpub_dwtg.controle_publicacao_mar  where dataexecucao = 20170426;
delete from dwpub_dwtg.controle_publicacao  where dataexecucao = 20170426;

SELECT 'select ''insert into dwpub_dwtg.CONTROLE_PUBLICACAO values ( DATE (FORMAT ''''yyyymmdd'''') (CHAR(8)),''''dbpro_33393_dwtg'''',''''' || trim(tablename) || ''''',''''' || trim(tablename) || ''''',2,0,'' || (lock row for access select count(*)(float) from dbcar_33393_dwtg.' || trim(tablename) || ') || '','' || (lock row for access select count(*)(float) from dbpro_33393_dwtg.' || trim(tablename) || ') || '',0,0,NULL,NULL,0,1);'' (title '''');' (title '')
FROM dbc.tablesv where databasename = 'dbpro_33393_dwtg' and tablename in
('WA_CALENDARIO_SIAFI');

select 'insert into dwpub_dwtg.CONTROLE_PUBLICACAO values ( DATE (FORMAT ''yyyymmdd'') (CHAR(8)),''dbpro_33393_dwtg'',''WF_LANCAMENTO_EP01'',''WF_LANCAMENTO_EP01'',2,0,' || (lock row for access select count(*)(float) from dbcar_33393_dwtg.WF_LANCAMENTO_EP01) || ',' || (lock row for access select count(*)(float) from dbpro_33393_dwtg.WF_LANCAMENTO_EP01) || ',0,0,NULL,NULL,0,1);' (title '');

---========================================================================================================================================================
OBTER DDL PEQUENAS DE USUÁRIO.
set verify off feedback off timi off pages 0 trimspool on
SQL> col ddl for a200
SQL> set feedback on timi on pages 10000 trimspool on
SQL> 

select dbms_metadata.get_ddl ('USER', 'ADMACES') DDL from dual;

--===========================================================================================================
--PARA HOMOLOGAÇÃO
create user ADMAFIS IDENTIFIED by "456homcorp321$spowh"

-- não tem 
Grant Select On ADMAFIS To RL_FERRAMENTA;

select 
'grant select on IRPJ.'
||table_name||
' to ADMSAPJ;' 
from dba_tables where owner='IRPJ';

grant SELECT ANY TABLE TO ADMSAPJ;

--===========================================================================================================
-- para criar tablespace se precisar no EXADATA - por André Magalhães.
CREATE BIGFILE TABLESPACE TB_21746_PROC_IND_00 DATAFILE '+SPDG0001/WHPRO130/DATAFILE/tb_21748_proc_ind_00.dbf' SIZE 250G REUSE AUTOEXTEND ON NEXT 5G MAXSIZE 300G LOGGING EXTENT MANAGEMENT LOCAL SEGMENT SPACE MANAGEMENT AUTO BLOCKSIZE 8192;
CREATE BIGFILE TABLESPACE TB_21748_PROC_DAT_00 DATAFILE '+SPDG0001/WHPRO130/DATAFILE/tb_21748_proc_dat_00.dbf' SIZE 300G REUSE AUTOEXTEND ON NEXT 5G MAXSIZE 400G LOGGING EXTENT MANAGEMENT LOCAL SEGMENT SPACE MANAGEMENT AUTO;
CREATE BIGFILE TABLESPACE TB_21748_PROC_USR_00 DATAFILE '+SPDG0001/WHPRO130/DATAFILE/tb_21748_proc_usu_00.dbf' SIZE 300G REUSE AUTOEXTEND ON NEXT 5G MAXSIZE 400G LOGGING EXTENT MANAGEMENT LOCAL SEGMENT SPACE MANAGEMENT AUTO;

Pdbf 			       524288	   32767

ALTER TABLESPACE TB_21739_PGTO_IND_01 DROP DATAFILE '+SPDG0001/WHPRO130/DATAFILE/tb_21739_pgto_ind_24.dbf';
ALTER TABLESPACE TB_21739_PGTO_IND_01 ADD DATAFILE '+SPDG0001/WHPRO130/DATAFILE/tb_21739_pgto_ind_01_24.dbf' SIZE 32767M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
--===========================================================================================================
select dbms_metadata.get_ddl ('USER', 'SAPJ') DDL from dual;

 CREATE USER "ADMSAPJ" IDENTIFIED BY VALUES 'S:6E064F696790572C7510D137834AD978244FFF3C73001A78A2FE9B475190;C8C4E51F6F95C913'
      DEFAULT TABLESPACE "TB_07998_SAPJ_USR_01"
      PROFILE "FERRAMENTA";
--===========================================================================================================
-- ok resolvido -- MUDANÇA MÁRIO NO SCCD - solicitada para melhorar as minhas abas.
A Solicitação de Serviço 2017SS/0000428453 foi criada.


--=======================================================================================================================================
--feito
CREATE TABLESPACE TB_07651_MS9PSTNMD_SQL_DAT_01 DATAFILE '+DG_BSA097/p_07651_mstr/bimd002/tb_07651_ms9pstnmd_sql_dat_01_001.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

------------------------------------------------------------CRIANDO USUÁRIO NO BIMD005 PARA O TABLESPACE CRIADO----------------------------------------
create user MS9PSTNMD_SQL IDENTIFIED by "456prodstn321$bsamd" default tablespace "TB_07651_MS9PSTNMD_SQL_DAT_01";
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS9PSTNMD_SQL;
nohup impdp dwpub/dwpubmd@bimd002 directory=DWPUB_DATAPUMP network_link=DBL_BIMD002 schemas=MS941PSTNMD remap_schema=MS941PSTNMD:MS9PSTNMD_SQL remap_tablespace=TB_07651_MS941PSTNMD_DAT_01:TB_07651_MS9PSTNMD_SQL_DAT_01 nologfile=y > importmetadados20170705.log &
select object_type, count(object_type) from dba_objects where owner = 'MS941PSTNMD' group by object_type;
OBJECT_TYPE							      COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
INDEX										      54
TABLE										      72
TRIGGER 									       1

select object_type, count(object_type) from dba_objects where owner = 'MS9PSTNMD_SQL' group by object_type;

OBJECT_TYPE							      COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
INDEX										      54
TABLE										      72
TRIGGER 									       1
--=======================================================================================================================================
--nohup impdp dwpub/dwpubmd@bimd004 directory=DWPUB_DATAPUMP dumpfile=MS104DESMD sqlfile=ddl.sql nologfile=y > importddl20170711.log &


select 'alter system kill session ''' || s1.sid || ',' || s1.serial# || ''';' 
from  v$session s1 , v$process p1
  where s1.sid not in (select px1.sid from  v$px_session px1)
      and s1.paddr = p1.addr
      and s1.username is not null
--      and Status like 'INA%'
      AND s1.username = 'MS104HSTNNT';


--=============================================================
--VER COM RONALDO DEPOIS - QUESTÃO PLANTÃO 26/07

1.
. /opt/approtinas/pro_21762_dwcorp/CONTROLMIRPF/PARAM.SH
set +vx

date
Inicio="`date`"
dia_log=`date +"%Y_%m_%d_%H:%M:%S"`

LOG=${DIRLOG}/config_${dia_log}.log

sqlplus -S $usercontrolm/$passwordcontrolm@$sidproducao <<EOF_SQLPLUS
spool ${LOG}

2.
. /opt/approtinas/pro_21761_dwcorp/CONTROLM_DIRF/PARAM.SH
set +vx

date
Inicio="`date`"
dia_log=`date +"%Y_%m_%d-%H_%M_%S"`

ERRO: PASSOU PARA A MENSAGEM QUE VOCÊ CRIOU RONALDO SERÁ QUE UM DESSES PARÂMETROS AI 

--=============================================================
select username, account_status, default_tablespace, lock_date, expiry_date, created from dba_users where username like '%' order by 1

select * from dba_objects where owner = 'PCTR_SUNAC';

--=============================================================
--SOLICITAÇÃO BACKUP

Conforme conversamos, peço solicitar o backup dos esquemas de metadados dos ambientes de desenvolvimento e produção do condomínio com 
retenção de 1 ano para atender a solicitação de desativação do serviço.

Hostname: dfcdsrvp0081, dfcdsrvp0074 - metadados.
IP: 161.148.239.23, 161.148.236.16
Ambiente: Desenvolvimento e produção
Código de Serviço: 33396
Esquemas: MS104DCONDMD, MS104PCONDMD


Objetivo: Realizar backup e armazenar em fita o backup  dos temas acima.
          Motivo é que o sistema será desativado em ambiente de desenvolvimento e produção do condomínio.

Atividade: Favor realizar backup anual dos mesmos esquemas, com retenção de 1 ano.

Qualquer dúvida, por gentileza nos contatar.
Obrigado.
*******************************
--alterar senha
15:30:23 DWPUB:bimd002 > alter user MS104PSTNNT identified by "456prodcond321$bsant";

User altered.

--============================================================
GRANT RL_FERRAMENTA_MS941PRFBEM TO MS_21700_MS104PRFBEM_PRO;

GRANT RL_FERRAMENTA_MS921PRFBEM TO MS_21700_MS104PRFBEM_PRO;



--================================================================
-- SESSOES DO ORACLE - MATAR TODAS SESSÕES DO USUÁRIO DE UMA VEZ
----- COM SQL

select 'alter system kill session ''' || s1.sid || ',' || s1.serial# || ''';' 
from  v$session s1 , v$process p1
  where s1.sid not in (select px1.sid from  v$px_session px1)
      and s1.paddr = p1.addr
      and s1.username is not null
--      and Status like 'INA%'
      AND s1.username = 'MS104PSTNNT';

--============================================================
--VER LIMITES PARAMETRIZADOS NO BANCO ORACLE
 select * from v$resource_limit;

--MUITO INTERESSANTE MOSTRA TODOS OS USUÁRIOS E QUANTAS SESSÕES ESTÃO ABERTAS PELOS MESMO POR TOTAL
select inst_id,username,service_name,machine,count(*) from gv$session group by inst_id,username,service_name,machine order by 1,2,3

A) -- SESSOES DO ORACLE - MOSTRAR SESSÕES QUE ESTÃO COM STATUS KILLED 

SELECT s.inst_id, s.sid, s.SERIAL#, s.STATUS, s.USERNAME, s.MACHINE FROM gv$session s WHERE s.status = 'KILLED';

SELECT s.inst_id, s.sid, s.SERIAL#, s.STATUS, s.USERNAME, s.MACHINE FROM gv$session s WHERE s.status = 'ACTIVE' and s.USERNAME = 'SIGEPE';


--============================================================
-- SESSOES DO ORACLE - MOSTRAR SESSÕES QUE ESTÃO COM STATUS KILLED E QUE ESTÃO FAZENDO ROLL BACK

select t.INST_ID
           , s.sid
           , s.program
           , t.status as transaction_status
           , s.status as session_status
           , s.lockwait
           , s.pq_status
           , t.used_ublk as undo_blocks_used
           , decode(bitand(t.flag, 128), 0, 'NO', 'YES') rolling_back
   from
       gv$session s
       , gv$transaction t
   where s.taddr = t.addr
   and s.inst_id = t.inst_id
   and s.STATUS = 'KILLED'
   order by t.inst_id;

--============================================================
-- SESSOES DO ORACLE - MOSTRAR SESSÕES QUE ESTÃO COM STATUS KILLED E QUE ESTÃO FAZENDO ROLL BACK OU NÃO
SELECT s.username, s.osuser, s.machine, s.sid, s.serial#, p.spid
   FROM gv$session s, gv$process p
    WHERE s.inst_id = p.inst_id
    AND s.paddr = p.addr
    AND s.username IS NOT NULL
    AND s.STATUS = 'KILLED';

--A MELHOR DE TODAS USAR DEPOIS DE EXECUTADO A PRIMEIRA E A SEGUNDA 
--ESSA AQUI MOSTRA SE OS PROCESSOS KILLED ESTÃO AGUARDANDO O CLIENTE.
SELECT sw.INST_ID, SW.SID, SW.SEQ#, SW.EVENT, SW.STATE, sw.WAIT_TIME
    FROM gv$session_wait sw
    WHERE sw.sid IN (SELECT sid FROM gv$session s WHERE s.status = 'KILLED' AND s.inst_id = sw.INST_ID)
    ORDER BY sw.inst_id
    /



SELECT sw.INST_ID, SW.SID, SW.SEQ#, SW.EVENT, SW.STATE, sw.WAIT_TIME
    FROM gv$session_wait sw
    WHERE sw.sid IN (SELECT sid FROM gv$session s WHERE s.status = 'ACTIVE' AND s.inst_id = sw.INST_ID AND s.USERNAME = 'SIGEPE')
    ORDER BY sw.inst_id
    /





--============================================================
Possivelmente após a receber o kill e tentar comunicar o cliente o Oracle modificou o “paddr” da sessão. Assim, a ligação entre a gv$session e a gv$process foi “interrompida”. Partindo disso, podemos localizar todos os processos sem relação com sessões. A consulta abaixo retorna os processos sem sessões, como estamos em um ambiente RAC observe as instâncias de cada sessão.
SQL> SELECT p.INST_ID, p.pid, p.serial#, p.spid, p.program
    FROM gv$process p
    WHERE p.spid is not null
    AND NOT EXISTS (SELECT 1 FROM gv$session s WHERE s.inst_id = p.inst_id and s.paddr = p.addr)
    AND p.pname is null
    ORDER BY p.inst_id
    /

   INST_ID        PID    SERIAL# SPID                     PROGRAM
---------- ---------- ---------- ------------------------ ------------------------------------------------
         1        115        210 24011                    oracle@exadb01.tjsc.jus.br
         1         79        134 4533                     oracle@exadb01.tjsc.jus.br
         2        110        150 29153                    oracle@exadb02.tjsc.jus.br
         3         53        214 24512                    oracle@exadb03.tjsc.jus.br

--LOOP CEDIDO PELO EUDES - ORACLE 
--EXECUTE O LOOP  e vai matar todos.


SQL>
A coluna “spid” nos dá o número do processo do sistema operacional, para finalizar ele basta verificar se está como “LOCAL=NO”. Assim, sabemos que é uma conexão do usuário e nenhum processo interno do Oracle.
Verificando o processo e fazendo o “kill -9” no sistema operacional a sessão com status “killed” é removida do Oracle. Abaixo, observe a instância (servidor), o tipo do processo e seu número; relacione com o resultado da última consulta.
[root@exadb01 ~]# ps -ef |grep 24011
root     14628 14154  0 14:24 pts/4    00:00:00 grep 24011
oracle   24011     1  0 Aug28 ?        00:00:05 oracleopg51 (LOCAL=NO)
[root@exadb01 ~]# ps -ef |grep 4533
oracle    4533     1  0 Aug28 ?        00:00:00 oracleopg51 (LOCAL=NO)
root     14826 14154  0 14:24 pts/4    00:00:00 grep 4533
[root@exadb01 ~]#
[root@exadb01 ~]#
[root@exadb01 ~]# kill -9 24011 
[root@exadb01 ~]# kill -9 4533
[root@exadb01 ~]#
[root@exadb01 ~]# ssh exadb02
Last login: Mon Jun 24 17:27:12 2013 from 10.17.42.21
[root@exadb02 ~]#
[root@exadb02 ~]# ps -ef |grep 29153
root     25421 25226  0 14:25 pts/0    00:00:00 grep 29153
oracle   29153     1  0 Aug28 ?        00:00:17 oracleopg52 (LOCAL=NO)
[root@exadb02 ~]# kill -9 29153
[root@exadb02 ~]#
[root@exadb02 ~]#
[root@exadb02 ~]# ssh exadb03
Last login: Mon Jun 24 17:27:47 2013 from 10.17.42.21
[root@exadb03 ~]#
[root@exadb03 ~]# ps -ef |grep 24512
root     22948 22815  0 14:25 pts/0    00:00:00 grep 24512
oracle   24512     1  0 Aug28 ?        00:00:12 oracleopg53 (LOCAL=NO)
[root@exadb03 ~]# kill -9 24512
[root@exadb03 ~]#
Se verificarmos, não existe mais nenhum processo na gv$process sem relação na gv$session, bem como nenhum sessão marcada como “killed”. Algumas vezes o Oracle demora alguns segundos até remover a sessão após o kill do sistema operacional.
SQL> SELECT p.INST_ID, p.pid, p.serial#, p.spid, p.program
  2  FROM gv$process p
  3  WHERE p.spid is not null
  4  AND NOT EXISTS (SELECT 1 FROM gv$session s WHERE s.inst_id = p.inst_id and s.paddr = p.addr)
  5  AND p.pname is null
  6  ORDER BY p.inst_id
  7  /

   INST_ID        PID    SERIAL# SPID                     PROGRAM
---------- ---------- ---------- ------------------------ ------------------------------------------------
--para localizar na máquina
/home/dwpublic/dwpub:P74> ps -ef | grep bimd002 | grep LOCAL=NO | grep "Aug 16" | wc -l
ps -ef | grep bimd002 | grep LOCAL=NO | grep "Aug 16"


SQL> 
SQL> SELECT s.inst_id, s.sid, s.SERIAL#, s.STATUS, s.USERNAME, s.MACHINE
    FROM gv$session s
    WHERE s.status = 'KILLED'
    /

   INST_ID        SID    SERIAL# STATUS  


--===============================================================================================================
--ORACLE - USER MAIS PERFEITO POR USUÁRIO SE QUISER OU TODOS ... É SÓ TIRAR O USUÁRIO SE QUISER.. POR "ANDRÉ MAGALHÃES".
col Logon for a14 trunc
col username for a20 trunc head 'Usuario'
col PROCESS for a9 trunc head 'Processo'
col osuser for a12 trunc head 'OS Usuario'
col "QC SID" for A6 
col "SID" for 99999
col serial for 99999 head 'Ser|ial#'
col PID for a10 trunc
col QCSID1 format 999 head 'QC|Sid'
col status for a3 trunc head 'Sta|tus'
col PROGRAM for a37
col machine for a20  trunc
col Tipo for A2 head 'Np|Qc|Sl'
col QCSID1 format 990 head 'QC|Sid'
col SERVICE_NAME for a30
set pages 200 
set linesize 300

select to_char (logon_time, 'DD/MM HH24:MI:SS') "Logon", status ,
       decode(px.qcinst_id,NULL,s.username, 
             ' - '||lower(substr(s.program,length(s.program)-4,4) ) ) "Username", 
       decode(px.qcinst_id,NULL, 'QC', 'Sl') Tipo , 
       s.sid "SID", s.serial# Serial, p.spid PID,
       px.qcsid QCSID1, Machine, s.osuser,
       s.server, s.program, s.PROCESS, s.SERVICE_NAME
  from  v$px_session px, v$session s , v$process p
  where px.sid=s.sid (+)  and px.serial#=s.serial# 
        and s.paddr = p.addr
        and s.username is not null
        and s.username = 'MS104HSTNNT'
UNION
select to_char (s1.logon_time, 'DD/MM HH24:MI:SS') "Logon", Status,
       s1.username "Username", 'Np' Tipo, 
       s1.sid "SID", s1.serial# Serial, p1.spid PID,
       000 , s1.Machine, s1.osuser,
       s1.server, s1.program, s1.PROCESS, s1.SERVICE_NAME
  from  v$session s1 , v$process p1
  where s1.sid not in (select px1.sid from  v$px_session px1)  
      and s1.paddr = p1.addr
      and s1.username is not null
      and s1.username = 'MCPJ'
order by 8, 4, 1, 3;
-- 

--===============================================================================================================
2017SS/0000702126 - RODAR EM 05/09/2017 -- feito

EXECUTAR PARA CREUZA EM HORÁRIO FORA DO EXPEDIENTE

ALTER TABLE SIGPGFN.SIGSISPAR_INSCRICAO_PARC RENAME COLUMN ID_INSCRICAO TO ID_INSCRICAO_TODAS_ORIGENS;

ALTER TABLE SIGPGFN.SIGSISPAR_INSCRICAO_PARC  
MODIFY (ID_INSCRICAO_TODAS_ORIGENS number(17,0) );

--===============================================================================================================
2017SS/0000701908 - valdiana para André - feito

2017SS/0000685416 - Bruno Tavares --- ver amanhã cedo urgente.


--===============================================================================================================
2017SS/0000705069 -- feito

ALTER TABLE SIGPGFN.SIG_DEVEDOR_DETALHADO RENAME COLUMN ID_IGP_PRINCIPAL TO ID_IGR_INDIVIDUAL;

ALTER TABLE SIGPGFN.SIG_DEVEDOR_DETALHADO RENAME COLUMN ID_IGP_GRUPO TO ID_IGR_GRUPO;

alter table SIGPGFN.SIGSISPAR_INSCRICAO_PARC add(ID_TIPO_INSCRICAO    NUMBER(1,0));



15:22:37 DWPUB:whpro102 > alter table SIGPGFN.SIGSISPAR_INSCRICAO_PARC add(ID_TIPO_INSCRICAO    NUMBER(1,0));
alter table SIGPGFN.SIGSISPAR_INSCRICAO_PARC add(ID_TIPO_INSCRICAO    NUMBER(1,0))
                                                 *
ERROR at line 1:
ORA-01430: column being added already exists in table
--===============================================================================================================
2017SS/0000709363

ALTER TABLE SIGPGFN.SIGSISPAR_INSCRICAO_PARC drop column ID_INSCRICAO;
ALTER TABLE SIGPGFN.SIGSISPAR_INSCRICAO_PARC add (ID_INSCRICAO_TODAS_ORIGENS NUMBER(17,0));
ALTER TABLE SIGPGFN.ecac_d_inscricao_todas_origens add(ID_IGR_GRUPO NUMBER(1,0), ID_IGR_INDIVIDUAL NUMBER(1,0));

17:22:26 DWPUB:whpro102 > ALTER TABLE SIGPGFN.SIGSISPAR_INSCRICAO_PARC drop column ID_INSCRICAO;
ALTER TABLE SIGPGFN.SIGSISPAR_INSCRICAO_PARC drop column ID_INSCRICAO
                                                         *
ERROR at line 1:
ORA-39726: unsupported add/drop column operation on compressed tables


--===============================================================================================================
ADUANEIRO 2017SS/0000711297 fechar amanhã 06/09/2017

CSS, Não é requisição de mudança!!

Boa tarde,
Esta demanda é uma Solicitação de Serviços.

Favor encaminhar para GMCDSPCTM.

Horário de Submissão: hoje, 21hs
Código de serviço - 21797
Serviço: DW ADUANEIRO
Servidor: spcdsrvv3012  - 10.193.34.96 - Exatada
Ambiente: Produção
Table: T2179799 ( Antiga: T1311399)
Aplicacao: 21797 (Antiga: DWPUB-ADUANEIRO)
Grupo: BI-ADUANEIRO
Job Name: CRIA_JOB_ADUANEIRO
Script : /opt/approtinas/pro_21761_dwcorp/CONTROLMADUAN/CRIA_JOB_ADUANEIRO.SH

Prezados,

Favor executar o CRIA_JOB_ADUANEIRO_ADUANEIRO.SH (/opt/approtinas/pro_21761_dwcorp/CONTROLMADUAN),  hoje, 21hs, 05/09/2017, para publicação do DW ADUANEIRO  na Produção.
Qualquer dúvida e/ou erro durante o processamento, favor entrar em contato com o plantão da CDSDW (9265-9448).


--===============================================================================================================
2017SS/0000712556 - exportação Brasília


CSS, NÃO é mudança!!

Essa demanda é uma solicitação de serviços.

Favor encaminhar para GMCDDFCTM.
Rotina: Cria_job

Favor executar job no Control-M conforme informações abaixo.

Rotina: CRIA_JOB
Horário de Submissão: imediato, assim que possível
Código de serviço - 36041
Servidor: dfcdsrvp0076 - 161.148.236.20 - WHPRO102
Ambiente: Produção

Prezados, Favor executar o CRIA_JOB (/home/dwpublic/dwpub/CONTROLMCOMEXT), imediato, assim que possível,  para publicação na Homologação.
Qualquer dúvida e/ou erro durante o processamento, favor entrar em contato comigo.


--===============================================================================================================
2017SS/0000713470
alter table afis.wf_afis_rpfg add (QT_AFIS_RPFG_MALHA_ITR number(10) default 0 not null, QT_AFIS_RPFG_MALHA_PF  number(10) default 0 not null, QT_AFIS_RPFG_MALHA_PJ  number(10) default 0 not null)
/
--===============================================================================================================
2017RDM/0000011794 - rdm para manutenção Teradata.

2017RI/0000175448 sinesp. Dar uma olhada para ver se os relatorios estão funcionando na homologação do condominio do sinesp... .SNSP - GUSTAVO

--===============================================================================================================
GRUPO CLASSIFICAÇÃO SS DWPUB BANCO PUBDW QUANDO PRECISAR PUB
CD \ CDSS \ CDSSBI \ CDSSBIDWM \ CDSSBIDWMSNP


GRUPO CLASSIFICAÇÃO INCIDENTE OLAP QUANDO PRECISAR OLAP
CD \ CDRI \ CDRIDW \ CDRIDWOLP

--===============================================================================================================
GRUPO CLASSIFICAÇÃO INCIDENTE WINDOWS
CD \ CDRI \ CDRISO \ CDRISOWIN

GRUPO CLASSIFICAÇÃO INCIDENTE POSTGRES
CD \ CDRI \ CDRIBD \ CDRIBDPGR

2017RI/0000179879

--===============================================================================================================
--CRIEI NO EXADATA PRODUÇÃO PARA GUSTAVO EM 14/09/2017 - USUÁRIO -  MODELO NOVO NA PRODUÇÃO

GIOVANNA USUARIO USUÁRIO

CREATE TABLESPACE TB_07988_SAPJ_USR_01 DATAFILE '+SPDG0001/WHPRO130/DATAFILE/tb_07998_sapj_usr_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 1024M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;

------------------------------------------------------------CRIANDO USUÁRIO NO BIMD002 PARA O TABLESPACE CRIADO----------------------------------------
create user MS_07988_SAPJ_PRO IDENTIFIED by "456prodcorp321$spowh" default tablespace "TB_07988_SAPJ_USR_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
CREATE ROLE RL_FERRAMENTA_SAPJ;
GRANT RL_FERRAMENTA_SAPJ TO MS_07988_SAPJ_PRO;
GRANT RL_FERRAMENTA_DIME TO MS_07988_SAPJ_PRO;
GRANT RL_FERRAMENTA_IRPJ TO MS_07988_SAPJ_PRO;
GRANT RL_FERRAMENTA_CNPJ TO MS_07988_SAPJ_PRO;
GRANT RL_FERRAMENTA_EECF TO MS_07988_SAPJ_PRO;
GRANT RL_FERRAMENTA_SGPJ TO MS_07988_SAPJ_PRO;

--===============================================================================================================
2017SS/0000719877 - fazer 


 Encaminhar para GMCDDF/GMCDDFPUBDW: 
Codigo Servico: 06818/4-98 
Nome do Servico: DWCORPORATIVO (Postgres) 
Ambiente: Carga 161.148.236.33: 
Carga: Dbc_06818_Dwcorporativo 
Favor executar os scripts em anexo no ambiente de Carga:
 
- sgp_relacional.vw_funcionarios_atual_consignacoes_CARGA
- sigecom_relacional_vw_capacidade_contratada_CARGA
- sigecom_relacional.vw_capacidade_instalada_CARGA
- vw_folha_funcionario_carga
- vw_folha_carga

--===============================================================================================================
COPIA METADADOS PARA BACKUP DO STN

origem: bimd002: esquema: MS104PSTNMD
esquema destino MS104PSTNMD_BKP

-- OK CRIADO

CREATE USER "MS104PSTNMD_BKP" IDENTIFIED BY 123456
DEFAULT TABLESPACE "TB_07651_MS941PSTNMD_DAT_01"
TEMPORARY TABLESPACE "TEMP"
PROFILE "METADADOS";

-- OK PRIVILEGIOS JÁ REALIZADOS
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS104PSTNMD_BKP;

--fazer antes do dump com a liberação do José Lopes ---ok realizado
select object_type, count(object_type) from dba_objects where owner = 'MS104PSTNMD' group by object_type;

SQL> select object_type, count(object_type) from dba_objects where owner = 'MS104PSTNMD' group by object_type;

OBJECT_TYPE             COUNT(OBJECT_TYPE)
----------------------- ------------------
INDEX                                   58
TABLE                                   95
TRIGGER                                  1


-- dump para backup - FAZER AMANHA DEPOIS DO JOSÉ LOPES
--NA P74
nohup impdp dwpub/dwpubmd@bimd002 directory=DWPUB_DATAPUMP network_link=DBL_BIMD002 schemas=MS104PSTNMD remap_schema=MS104PSTNMD:MS104PSTNMD_BKP nologfile=y > importmetadados20170916.log &

--fazer depois  do dump 
select object_type, count(object_type) from dba_objects where owner = 'MS104PSTNMD_BKP' group by object_type;


SQL> select object_type, count(object_type) from dba_objects where owner = 'MS104PSTNMD_BKP' group by object_type;

OBJECT_TYPE             COUNT(OBJECT_TYPE)
----------------------- ------------------
INDEX                                   58
TABLE                                   95
TRIGGER                                  1

SQL> 


--===============================================================================================================
SCRIPT POSTGRES DANIEELA - EXECUÇÃO
	
2017SS/0000772623

[dwpub@dfcdsrvvbi0017 ~]$ tail -f carga_funcao_sgp_cad_beneficiarios_20170925.sql.log
DROP FUNCTION
CREATE FUNCTION
ALTER FUNCTION


[dwpub@dfcdsrvvbi0017 ~]$ tail -f carga_vw_cad_beneficiarios_20170925.sql.log
DROP VIEW
CREATE VIEW
ALTER TABLE
COMMENT




--===============================================================================================================
--para coneectar com outro usuario usando o dwpub

--aqui funcionou
alter user arrc_stg grant connect through DWPUB
alter user arrc grant connect through DWPUB
conn dwpub[arrc_stg]@whdes130
e senha do dwpub

--===============================================================================================================

SELECT * FROM ROLE_TAB_PRIVS WHERE ROLE = 'RL_FERRAMENTA_SIGPFGN';
SELECT * FROM ROLE_TAB_PRIVS WHERE ROLE like 'RL_FERRAMENTA_%';

--===============================================================================================================

Prezados,

Bom dia. Estamos tratando uma demanda nova para os clientes PGFN e COAF. Trata-se de acesso às bases do SIG-DW PGFN por meio do  Barramento do Quartzo.

1. Criação de Usuário somente Leitura no Banco de Dados Oracle DW-BI

DEMANDA: Solicito criar um chamado para a equipe de BANCO DE DADOS ORACLE com o objetivo de incluir um novo serviço no QUARTZO, conforme informações abaixo.

GRUPO EXECUTOR: Banco de Dados Oracle DW-BI - Brasilia

BASE ORIGEM
Ambiente: Produção
Cód. Serviço:  10395
Nome do Serviço: Serviço de Inteligência Analítica do MF - SAS
Banco de dados:
[X] Oracle
[ ] SQLServer
[ ] MySQL
[ ] PostgreSQL
[ ] Zope(ZODB)
[ ] Adabas

TIPO DE ACESSO e USUÁRIO
[ ] RÉPLICA - Criar réplica do banco de dados, usuário e senha com permissão de leitura no banco
[ ] CLUSTER - Criar usuário e senha com permissão de leitura para acessar o cluster de produção
[x] PRODUÇÂO - Criar usuário e senha com permissão de leitura para acessar a base de dados de produção

ESPECIALISTA BANCO:
GRUPO: Equipe do Thiago Sodré, da CDBSA, suporte a BI

--NÃO PRECISEI CRIAR JÁ EXISTIA --CREATE TABLESPACE TB_37260_SIGPGFN_USR_01 DATAFILE '+DG_BSA096/p_37260_dwpgfn/whpro102/tb_37260_sigpgfn_usr_01_001.dbf' SIZE 512M AUTOEXTEND ON NEXT 512M MAXSIZE 1024M EXTENT MANAGEMENT LOCAL AUTOALLOCATE SEGMENT SPACE MANAGEMENT AUTO FLASHBACK OFF;
drop user QZ_37260_SIGPGFN_PRO cascade;

CREATE USER "QZ_37260_SIGPGFN_PRO" IDENTIFIED BY "QUARTZOSIGPGFN"
      DEFAULT TABLESPACE "TB_37260_SIGPGFN_USR_01"
      TEMPORARY TABLESPACE "TEMP";

grant resource, connect, unlimited tablespace to QZ_37260_SIGPGFN_PRO;

CREATE ROLE RL_FERRAMENTA_QZ_SIGPGFN;

Grant Select On SIGPGFN.ECAC_D_INSCRICAO_TODAS_ORIGENS To RL_FERRAMENTA_QZ_SIGPGFN;
Grant Select On SIGPGFN.SIG_DEVEDOR_AGREGADO To RL_FERRAMENTA_QZ_SIGPGFN;
Grant Select On SIGPGFN.SIG_DEVEDOR_DETALHADO To RL_FERRAMENTA_QZ_SIGPGFN;
Grant Select On SIGPGFN.SIG_PSFN_PFN To RL_FERRAMENTA_QZ_SIGPGFN;
Grant Select On SIGPGFN.SIG_RECEITA_PRINC To RL_FERRAMENTA_QZ_SIGPGFN;
Grant Select On SIGPGFN.SIGTDI5_ESTOQUE_DIVIDA To RL_FERRAMENTA_QZ_SIGPGFN;
Grant Select On SIGPGFN.WD_SIG_TIPO_SITUACAO To RL_FERRAMENTA_QZ_SIGPGFN;

2ª etapa - 30/10/2017
Grant Select On SIGPGFN.SIG_DEVEDOR_DETALHADO To RL_FERRAMENTA_QZ_SIGPGFN;
Grant Select On SIGPGFN.WD_SIG_SISTEMA_ORIGEM To RL_FERRAMENTA_QZ_SIGPGFN;
Grant Select On SIGPGFN.SIG_INDICADOR To RL_FERRAMENTA_QZ_SIGPGFN;
Grant Select On SIGPGFN.SIG_IND_GDE To RL_FERRAMENTA_QZ_SIGPGFN;
Grant Select On SIGPGFN.SIG_FAIXA_VALOR To RL_FERRAMENTA_QZ_SIGPGFN;

GRANT RL_FERRAMENTA_QZ_SIGPGFN TO QZ_37260_SIGPGFN_PRO;


ECAC_D_INSCRICAO_TODAS_ORIGENS
SIG_DEVEDOR_AGREGADO
SIG_DEVEDOR_DETALHADO
SIG_PSFN_PFN
SIG_RECEITA_PRINC
SIGTDI5_ESTOQUE_DIVIDA
WD_SIG_TIPO_SITUACAO

OUTRO TICKET 

ECAC_D_INSCRICAO_TODAS_ORIGENS
SIG_DEVEDOR_AGREGADO
SIG_DEVEDOR_DETALHADO
SIG_PSFN_PFN
SIG_RECEITA_PRINC
SIGTDI5_ESTOQUE_DIVIDA
WD_SIG_TIPO_SITUACAO
WD_SIG_SISTEMA_ORIGEM
SIG_INDICADOR
SIG_IND_GDE
SIG_FAIXA_VALOR


SELECT * FROM ROLE_TAB_PRIVS WHERE ROLE = 'RL_FERRAMENTA_QZ_SIGPGFN';


alter user QZ_37260_SIGPGFN_PRO grant connect through DWPUB
alter user ADMPERD grant connect through DWPUB
conn dwpub[QZ_37260_SIGPGFN_PRO]@whpro102
e senha do dwpub

--===============================================================================================================
-count partição
select count(*) from DIRF.WF_DIRF_VLRS partition (PT_WF_VLRS_ANO_2014);
--===============================================================================================================

--===============================================================================================================
--PARA BACKUP STN DIA 05/10/2017 COPIA METADADOS PARA BACKUP DO STN

2 -
origem: MDPRO103: esquema: MS104PSTNMD
esquema destino MS104PSTNMD_BKP

-- CRIAR

CREATE USER "MS104PSTNMD_BKP" IDENTIFIED BY 123456
DEFAULT TABLESPACE "TB_07651_MS941PSTNMD_DAT_01"
TEMPORARY TABLESPACE "TEMP"
PROFILE "METADADOS";

-- PRIVILEGIOS
grant resource, create table, create trigger, connect, create view, unlimited tablespace to MS104PSTNMD_BKP;

--fazer antes do dump com a liberação do José Lopes ---ok realizado
select object_type, count(object_type) from dba_objects where owner = 'MS104PSTNMD' group by object_type;

OBJECT_TYPE		COUNT(OBJECT_TYPE)
----------------------- ------------------
INDEX					58
TABLE					95
TRIGGER 				 1


-- dump para backup - FAZER HOJE A NOITE APÓS JOSÉ AVISAR
--NA P74
nohup impdp dwpub/dwpubmd@bimd002 directory=DWPUB_DATAPUMP network_link=DBL_BIMD002 schemas=MS104PSTNMD remap_schema=MS104PSTNMD:MS104PSTNMD_BKP nologfile=y > importmetadados20170916.log &

--fazer depois  do dump 
SQL> select object_type, count(object_type) from dba_objects where owner = 'MS104PSTNMD_BKP' group by object_type;

--===============================================================================================================
-- ver owner/schema por tablespaces
select distinct owner from dba_segments where tablespace_name = 'TB_07651_MS941PRODSTNEM_DAT_01';

drop user MS104PSTNMD_BKP cascade;
--não usar
drop tablespace TB_07651_MS941PRODSTNMD_DAT_01 INCLUDING CONTENTS and DATAFILES;

--===============================================================================================================

--===============================================================================================================
--para José Araújo -- 10/10/2017 feito
DROP TABLE EECF.WD_EECF_EECF_PLACA_7;

-- Create table
create table EECF.WD_EECF_EECF_PLACA_7
(
  NR_EECF_EECF_PLACA_7     NUMBER(5) default -8 not null,
  NR_EECF_EECF_IND_BLOCO_N NUMBER(1) default -8 not null,
  NR_EECF_EECF_IND_BLOCO_P NUMBER(1) default -8 not null,
  NR_EECF_EECF_IND_BLOCO_Q NUMBER(1) default -8 not null,
  NR_EECF_EECF_IND_BLOCO_T NUMBER(1) default -8 not null,
  NR_EECF_EECF_IND_BLOCO_U NUMBER(1) default -8 not null,
  NR_EECF_EECF_IND_BLOCO_X NUMBER(1) default -8 not null,
  NR_EECF_EECF_IND_BLOCO_Y NUMBER(1) default -8 not null,
  NR_EECF_EECF_IND_BLOCO_9 NUMBER(1) default -8 not null,
  B_CD_EECF_EECF_PLACA_7   NUMBER(10) default -8 not null,
  DT_ATUALIZACAO           DATE default sysdate not null,
  DT_INCLUSAO              DATE default sysdate not null
)
tablespace TB_08299_EECF_DAT_01
  pctfree 5
  initrans 20
  maxtrans 255
  storage
  (
    initial 80K
    next 1M
    minextents 1
    maxextents unlimited
  );

Insert /*+ append */ into EECF.WD_EECF_EECF_PLACA_7 nologging select /*+ PARALLEL(origem,4)*/ * from EECF.WD_EECF_EECF_PLACA_7@DBL_WHCAR130 


CREATE BITMAP INDEX  EECF.DPL7_IND_BLOCO_T_BM ON  EECF.WD_EECF_EECF_PLACA_7 (NR_EECF_EECF_IND_BLOCO_T) NOLOGGING  COMPUTE STATISTICS PCTFREE  5 INITRANS 20 MAXTRANS 255 TABLESPACE TB_08299_EECF_IND_01;

CREATE BITMAP INDEX   EECF.DPL7_IND_BLOCO_N_BM ON  EECF.WD_EECF_EECF_PLACA_7 (NR_EECF_EECF_IND_BLOCO_N) NOLOGGING  COMPUTE STATISTICS PCTFREE  5 INITRANS 20 MAXTRANS 255 TABLESPACE TB_08299_EECF_IND_01;

CREATE INDEX   EECF.DPL7_IND_BLOCO_U_BM ON  EECF.WD_EECF_EECF_PLACA_7 (NR_EECF_EECF_IND_BLOCO_U) NOLOGGING  COMPUTE STATISTICS PCTFREE  5 INITRANS 20 MAXTRANS 255 TABLESPACE TB_08299_EECF_IND_01;

CREATE BITMAP INDEX   EECF.DPL7_IND_BLOCO_P_BM ON  EECF.WD_EECF_EECF_PLACA_7 (NR_EECF_EECF_IND_BLOCO_P) NOLOGGING  COMPUTE STATISTICS PCTFREE  5 INITRANS 20 MAXTRANS 255 TABLESPACE TB_08299_EECF_IND_01;

CREATE INDEX   EECF.DPL7_IND_BLOCO_9_BM ON  EECF.WD_EECF_EECF_PLACA_7 (NR_EECF_EECF_IND_BLOCO_9) NOLOGGING  COMPUTE STATISTICS PCTFREE  5 INITRANS 20 MAXTRANS 255 TABLESPACE TB_08299_EECF_IND_01;

CREATE BITMAP INDEX   EECF.DPL7_IND_BLOCO_Y_BM ON  EECF.WD_EECF_EECF_PLACA_7 (NR_EECF_EECF_IND_BLOCO_Y) NOLOGGING  COMPUTE STATISTICS PCTFREE  5 INITRANS 20 MAXTRANS 255 TABLESPACE TB_08299_EECF_IND_01;

CREATE BITMAP INDEX   EECF.DPL7_IND_BLOCO_X_BM ON  EECF.WD_EECF_EECF_PLACA_7 (NR_EECF_EECF_IND_BLOCO_X) NOLOGGING  COMPUTE STATISTICS PCTFREE  5 INITRANS 20 MAXTRANS 255 TABLESPACE TB_08299_EECF_IND_01;

CREATE INDEX   EECF.DPL7_IND_BLOCO_Q_BM ON  EECF.WD_EECF_EECF_PLACA_7 (NR_EECF_EECF_IND_BLOCO_Q) NOLOGGING  COMPUTE STATISTICS PCTFREE  5 INITRANS 20 MAXTRANS 255 TABLESPACE TB_08299_EECF_IND_01;

COMMIT;

--===============================================================================================================

 SELECT distinct s.sid || ',' || s.serial# SID_SERIAL,
    	s.process,
  	    s.osuser,
  	     s.username,
  	    s.program,
    	s.status,
    	to_char(logon_time,'dd-mm-yyyy hh24:mi:ss') logon,
  	     sq.SQL_TEXT
    FROM   gv$session s, gv$sql sq
   where s.sql_id = sq.sql_id (+)
   and s.username like '%&name%'
  order by s.username,s.osuser
/



 SELECT distinct s.sid || ',' || s.serial# SID_SERIAL,
  	     s.username,
    	s.status,
  	     sq.SQL_TEXT
    FROM   gv$session s, gv$sql sq
   where s.sql_id = sq.sql_id (+)
   and s.username like '%&name%'
  order by s.username
/

--================================================================================================================
--JULIANA
CARGA POWERCENTER - DW AFIS - 
ALGUMAS VEZES - FEZ ALTERAÇÃO NA SEXTA COM ORIENTAÇÃO DO DW CORPORATIVO. 
MONITOR FORA ---- -------
POWER CENTER - TRAVADO - TIME OUT NO MONITOR DO POWER CENTER - FEZ AUDIO AGORA DE MANNHÃ RONALDO E GUSTAVO DA PARTE DO BANCO ......
REINICIOU A EXECUÇÃO E CONTINOU - É LENTIDÃO OK NO DESENVOLVIMENTO 212.000.00  NA CARGA DE PRODUÇÃO 6.400 DEMORANDO TIME OUT POWERCENTER 
PROBLEMA DE DEAD LOCK NO BANCO -

BANCO EXADATA CARGA - 
TEMA AFIS --

 --================================================================================================================
--verificando para Eraldo

select sql_text, object_status, first_load_time, username, sid, lockwait
from   v$session ses, v$sql sql
where ses.sql_id = sql.sql_id;

alter system kill session '688,24638'

--===============================================================================================

Solicito execução do script anexo da seguinte forma:
- script tabelas_proc_producao.sql - executar com o usuário PROC no ambiente de PRODUCAO do DW.
Por gentileza, enviar os resultados. 

--===============================================================================================
creuza - 2017SS/0000887475
##### Oracle --- Criação de usuário ######

1. Dados do Gestor do Tema
1.1 Nome: creuza
1.2 E-mail: creuza.brusco@serpro.gov.br
1.3 Ramal: 8788
1.4 Celular:

2. Dados do Chefe do Desenvolvimento
2.1 Nome:
2.2 E-mail:
2.3 Ramal:
2.4 Celular de plantão:

3. Dados do Serviço
3.1 URC: SUNFJ
3.2 Cliente Externo: PGFN
3.3 Nome do Serviço:
3.4 Código do Serviço: 37260
3.5 Número CPS:
3.6 Qual Arquitetura do Serviço?
    (x) Data Warehouse do Condomínio
    ( ) Data Warehouse do Condomínio Serpro
    ( ) Data Warehouse Corporativo da RFB
    ( ) Data Warehouse Corporativo da STN
    ( ) Data Warehouse Corporativo do MJ

4.  Qual Ambiente?
    ( ) Desenvolvimento
    ( ) Carga
    ( ) Homologação
    ( ) Treinamento
    (x) Produção

5. criar dois usuários:
5.1. será um usuário no banco de produção do DW da PGFN, onde o projeto DD-COAF (Microstrategy) e grupo de usuário do SAS 
(SAS_COAF_Gestor, SAS_COAF_Gestão_Informação, SAS_COAF_Inteligencia, SAS_COAF_Gerencial, SAS_SERPRO_FJINE), sugestão de nome: SIGPGFN_PRO_COAF.
- permissão de leitura
- tabelas acessadas:
ECAC_D_INSCRICAO_TODAS_ORIGENS
SIG_DEVEDOR_AGREGADO
SIG_DEVEDOR_DETALHADO
SIG_PSFN_PFN
SIG_RECEITA_PRINC
SIGTDI5_ESTOQUE_DIVIDA
WD_SIG_TIPO_SITUACAO
WD_SIG_SISTEMA_ORIGEM
SIG_INDICADOR
SIG_IND_GDE
SIG_FAIXA_VALOR

5.2. será um usuário no banco de produção do DW da PGFN, grupo de usuário do SAS (SAS-PGFN, SAS_SERPRO_FJINE), sugestão de nome: SAS_SIGPGFN_PRO.
- permissão de leitura
- tabelas acessadas:
todas do esquema sigpgfn

se alterar os nomes sugeridos, por favor, me avise.


1-Tarefa 1 

usuario: MS_37260_SIGPGFN_COAF_PRO

ECAC_D_INSCRICAO_TODAS_ORIGENS
SIG_DEVEDOR_AGREGADO
SIG_DEVEDOR_DETALHADO
SIG_PSFN_PFN
SIG_RECEITA_PRINC
SIGTDI5_ESTOQUE_DIVIDA
WD_SIG_TIPO_SITUACAO
WD_SIG_SISTEMA_ORIGEM
SIG_INDICADOR
SIG_IND_GDE
SIG_FAIXA_VALOR

CRIAR ROLE 

CREATE USER "MS_37260_SIGPGFN_COAF_PRO" IDENTIFIED BY "456prodcond321$bsawh"
      DEFAULT TABLESPACE "TB_37260_SIGPGFN_USR_01"
      TEMPORARY TABLESPACE "TEMP";

grant resource, connect, unlimited tablespace to MS_37260_SIGPGFN_COAF_PRO;

GRANT RL_FERRAMENTA_QZ_SIGPGFN TO MS_37260_SIGPGFN_COAF_PRO;

SELECT * FROM ROLE_TAB_PRIVS WHERE ROLE = 'RL_FERRAMENTA_QZ_SIGPGFN';

alter user MS_37260_SIGPGFN_COAF_PRO grant connect through DWPUB
conn dwpub[MS_37260_SIGPGFN_COAF_PRO]@whpro102
e senha do dwpub

--Grant Select On SIGPGFN.ECAC_D_INSCRICAO_TODAS_ORIGENS To RL_FERRAMENTA_QZ_SIGPGFN;
--Grant Select On SIGPGFN.SIG_DEVEDOR_AGREGADO To RL_FERRAMENTA_QZ_SIGPGFN;
--Grant Select On SIGPGFN.SIG_DEVEDOR_DETALHADO To RL_FERRAMENTA_QZ_SIGPGFN;
--Grant Select On SIGPGFN.SIG_PSFN_PFN To RL_FERRAMENTA_QZ_SIGPGFN;
--Grant Select On SIGPGFN.SIG_RECEITA_PRINC To RL_FERRAMENTA_QZ_SIGPGFN;
--Grant Select On SIGPGFN.SIGTDI5_ESTOQUE_DIVIDA To RL_FERRAMENTA_QZ_SIGPGFN;
--Grant Select On SIGPGFN.WD_SIG_TIPO_SITUACAO To RL_FERRAMENTA_QZ_SIGPGFN;

--2ª etapa - 30/10/2017
--Grant Select On SIGPGFN.SIG_DEVEDOR_DETALHADO To RL_FERRAMENTA_QZ_SIGPGFN;
--Grant Select On SIGPGFN.WD_SIG_SISTEMA_ORIGEM To RL_FERRAMENTA_QZ_SIGPGFN;
--Grant Select On SIGPGFN.SIG_INDICADOR To RL_FERRAMENTA_QZ_SIGPGFN;
--Grant Select On SIGPGFN.SIG_IND_GDE To RL_FERRAMENTA_QZ_SIGPGFN;
--Grant Select On SIGPGFN.SIG_FAIXA_VALOR To RL_FERRAMENTA_QZ_SIGPGFN;

2-Tarefa 2

USUARIO: 

CREATE USER "SIGPGFN_SAS" IDENTIFIED BY "SIGPGFN_SAS$"
      DEFAULT TABLESPACE "TB_37260_SIGPGFN_USR_01"
      TEMPORARY TABLESPACE "TEMP";

grant resource, connect, unlimited tablespace to SIGPGFN_SAS;

-- GRANT DAS TABELAS PARA O SCHEMA.
select
  'grant select on SIGPGFN.'
  ||table_name||
  ' to RL_FERRAMENTA_SIGPGFN;'
  from dba_tables where owner='SIGPGFN';

select
  'grant select on SIGPGFN.'
  ||table_name||
  ' to SIGPGFN_SAS;'
  from dba_tables where owner='SIGPGFN';

15:54:41 DWPUB:whpro102 > grant select_catalog_role to SIGPGFN_SAS;

Grant succeeded.

15:55:08 DWPUB:whpro102 > grant select ANY dictionary to SIGPGFN_SAS;


SELECT * FROM ROLE_TAB_PRIVS WHERE ROLE = 'RL_FERRAMENTA_SIGPGFN';

GRANT RL_FERRAMENTA_SIGPGFN TO SIGPGFN_SAS;

alter user SIGPGFN_SAS grant connect through DWPUB
conn dwpub[SIGPGFN_SAS]@whpro102
e senha do dwpub

--===============================================================================================
--em casa para resolver dime com shimada 09/11/17
NO BANCO


TABLE_NAME
--------------------------------------------------------------------------------
WD_ME_CAPITULOS_NCM
WD_ME_POSICOES_NCM
WD_ME_SECOES_NCM
WD_ME_SUBITENS_NCM


DIME;WD_ME_CAPITULOS_NCM
DIME;WD_ME_POSICOES_NCM
DIME;WD_ME_SUBITENS_NCM


--==========================================================================================
Extender
TB_08299_EECF_IND_01

--VERIFICAR ABAIXO OS DADOS PARA O EECF
+SPDG0001/WHPRO130/DATAFILE/tb_21739_pgto_ind_01_35.dbf

ALTER TABLESPACE TB_08299_EECF_IND_02 ADD DATAFILE '+SPDG0001/WHPRO130/DATAFILE/tb_08299_eecf_ind_01_24.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_IND_02 ADD DATAFILE '+SPDG0001/WHPRO130/DATAFILE/tb_08299_eecf_ind_01_25.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_IND_02 ADD DATAFILE '+SPDG0001/WHPRO130/DATAFILE/tb_08299_eecf_ind_01_26.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_IND_02 ADD DATAFILE '+SPDG0001/WHPRO130/DATAFILE/tb_08299_eecf_ind_01_27.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_IND_02 ADD DATAFILE '+SPDG0001/WHPRO130/DATAFILE/tb_08299_eecf_ind_01_28.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_IND_02 ADD DATAFILE '+SPDG0001/WHPRO130/DATAFILE/tb_08299_eecf_ind_01_29.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_08299_EECF_IND_02 ADD DATAFILE '+SPDG0001/WHPRO130/DATAFILE/tb_08299_eecf_ind_01_30.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;


+SPDG0001/WHPRO130/DATAFILE/tb_08299_eecf_ind_01_16.dbf

SELECT * FROM USER_INDEXES WHERE TABLE_NAME='WD_EECF_CONTA_REF_N2';

ALTER TABLESPACE media

AUTOEXTEND ON NEXT 100M MAXSIZE UNLIMITED;

--=========================================================================================
--CREUZA

alter table SIGPGFN.SIG_DEVEDOR_DETALHADO
modify
(
    DS_TEMPO_COBRANCA_FGTS_ANOS  NUMBER(4),
    DS_TEMPO_COBRANCA_FGTS_MESES NUMBER(5)
);
commit;

--=========================================================================================
DICAS - EXADATA - Brasília
1-ENTRAR com SSH nas máquinas 161.148.236.115 ou 109, 110,  e escrever producao ou carga ou desenvolvimento ou preproducao - dicas Ronaldo
111 não 
2-PASTA DWPUB - já está com os scripts do Ronaldo para manuteção.
--=========================================================================================
2017SS/0000980886

alter table sigpgfn.wd_sigprev_situacao_inscricao ADD (ID_ESTRATEGIA_COBRANCA    NUMBER(2,0));

--=========================================================================================
--PROCESSO PARA O ADM. Esse aqui não é para o PROCESSO MS da produção.

------------------------------------------------------------CRIANDO USUÁRIO NO PDW03 PARA O TABLESPACE CRIADO----------------------------------------
alter user EECF account lock; só na produção. No desenvolvimento não é necessário.


--se estiver o erro ORA-02236: invalid file name 
--use o comando abaixo para resolver
alter session set db_create_file_dest = '+SPDG0031';

CREATE TABLESPACE "TB_37121_EFDC_USR_01" DATAFILE  SIZE 1G AUTOEXTEND ON NEXT 1G MAXSIZE 1G
  LOGGING ONLINE PERMANENT BLOCKSIZE 16384
  EXTENT MANAGEMENT LOCAL AUTOALLOCATE DEFAULT
 NOCOMPRESS  SEGMENT SPACE MANAGEMENT AUTO;

---------------------------------------------------------------------------------------------------------------------------------------------------
create user ADMEFDC IDENTIFIED by "456descorp321$spowh" default tablespace "TB_37121_EFDC_USR_01";
----------------------------------------------------------DEFININDO PREVILÉGIO PARA O USUÁRIO CRIADO-----------------------------------------------------
--para usuários adm - criar sinônimos depois que o usuário principal for criado e os objetos gerados pelo pessoal de ferramenta.
grant resource, connect,  select any table, unlimited tablespace to ADMEFDC;

select 
'grant select on EFDC.'
||table_name||
' to ADMEFDC;' 
from dba_tables where owner='EFDC';

select distinct ' create synonym ADMEFDC.' || t.table_name || ' for ' ||  t.owner || '.' || t.table_name ||';' 
from dba_tables t 
where not exists (select null from dba_synonyms s 
		where t.owner = s.table_owner 
		and t.table_name = s.table_name 
		and s.owner = 'ADMEFDC') 
		AND T.OWNER = 'DIME'
/

--=========================================================================================
04:27:59 08/12/2017	ERROR: RESOLVED VALUE FOR SUBJECT IS LONGER THAN 99 CHARACTERS	5522
04:27:59 08/12/2017	EMAIL TO lista-br-dwtg@grupos.serpro.gov.br,lista-sunaf-prod-stn@grupos.serpro.gov.br comunidadestn@serpro.gov.br,centro-comando.rjo@serpro.gov.br,lista-cdgdb@grupos.serpro.gov.br FAILED	5141

[33393] Sucesso no final da publicação do DW-STN (Contigência)-PRO_ALTERA_STATUS_DWTG_PRO 

--=========================================================================================
--13/12/2017
--dblink criado para resolver o problema entre conexões são paulo e brasilia, tabém foi alterado a senha.
CREATE DATABASE LINK "DBL_DWCORPC.SERPRO"
   CONNECT TO "USR_DBL_DWCOND" IDENTIFIED BY "Pwdusrdbldwcond01"
   USING '(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = 10.31.23.35)(PORT = 1521)) (CONNECT_DATA = (SERVER = DEDICATED) (SERVICE_NAME = WHDES130)))';


CREATE DATABASE LINK "DBL_DWCORPCC.SERPRO"
   CONNECT TO "USR_DBL_DWCOND" IDENTIFIED BY "Pwdusrdbldwcond01"
   USING '(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = 10.193.35.2)(PORT = 1521)) (CONNECT_DATA = (SERVER = DEDICATED) (SERVICE_NAME = WHCAR130)))';

IP: 10.193.35.2
BANCO: WHCAR130
sugestão de nome usuário: USR_DBL_DWCOND
usuário este com permissão para o tema FATOCE E GLOBALCE

Demanda: Favor criar usuário no banco de carga WHCAR130. Usuário este que servirá para utilização no DB_LINK no Banco de Carga Oracle Brasília.

Por fim, nos passar por email os dados para respectiva criação do db_link.


--=========================================================================================
Migração da carga P9 Brasília, 
Prezado Edilson, 

NÃO COLOCAR EM READ ONLY
c_86010_dwsupgf_tra 
c_36041_dwaduana_tra   

COLOCAR EM READ ONLY
c_42012_dwevol_tra     
c_42814_dwconv_tra     
c_54147_siapedw_tra    
c_92206_dwscdp_tra   
c_92208_dwdest_tra 
c_06840_sigepe_tra     
c_07170_bgie_tra       
c_07613_sgpe_tra       
c_07768_siscoserv_tra  
c_10362_dwconv_tra     
c_35104_ssddwspu_tra   
c_37260_dwpgfn_tra     
c_39900_dwrenainf_tra  
c_39900_trst_tra
c_42814_dwconv_tra

2017SS/0001043762

--=========================================================================================
--já criei -- criar no meu tnsnames.ora
MDPRE101 - HOM
MDPRO103 - STN - esse é exclusivo

--==============================================================================================
##### Atualização/Alteração de Objeto de BANCO ORACLE  ######
Favor, encamaminhar ao grupo GMCDDFPUBDW

Tipo da Demanda: Requisição de Mudança
Objetivo da Demanda: Executar o script em anexo no banco de publicação do DW Aduaneiro. Corresponde a  "etapa 819" do processo de publicação deste DW.
Alvo (Banco): Banco de Produção (WHPRO130)
Restrições/Pré requisitos/Observações: N/A
Data / Hora para Execução:  13/12/17 18:00h
Código de Serviço: 21797
Banco / Ambiente: Produção
Nome do arquivo anexado: atu_radar_importacao.zip
Nome do arquivo sql (Chamador): atu_radar_importacao.sql
Retorno do Processamento para:
Neila Souza - neila.souza@serpro.gov.br, encaminhar por email o resultado.

--

delete from adnf.wd_di_radar@DBL_WHCAR130
/

commit;

insert into adnf.wd_di_radar@DBL_WHCAR130
select * from adnf.wd_di
where nr_di in
(select to_number(substr(a.NR_NUM_DOC,1,10)) from
     adnf.WD_FICHA_RAD@DBL_WHCAR130 c,
     adnf.WD_rast_RAD_ocor_temp@DBL_WHCAR130 a
where
     c.nr_ficha_RAD = a.nr_ficha_RAD
and  c.nr_tipo_doc  = 1)
/

commit
/

delete from adnf.wf_importacao_radar@DBL_WHCAR130
/

insert into adnf.wf_importacao_radar@DBL_WHCAR130
select * from adnf.wf_importacao
where nr_di in
(select nr_di from adnf.wd_di_radar@DBL_WHCAR130)
/

commit
/

delete from adnf.wd_adicao_radar@DBL_WHCAR130
/

insert into adnf.wd_adicao_radar@DBL_WHCAR130
select * from adnf.wd_adicao
where nr_adicao in
(select nr_adicao from adnf.wf_importacao_radar@DBL_WHCAR130)
/

commit
/

insert into adnf.wd_aduan_publicacao values (819,20080201,'ATU_RADAR_IMPORTACAO.SQL',to_char(sysdate,'yyyymmdd'),'IMP');

commit;

--==
--==============================================================================================
2017SS/0001042304 - feito
##### Oracle --- Executar Scripts ######

Css,
Esta demanda é uma Requisição de Serviço.
Por favor encaminhar para GMCDDFPUBDW.
Prazo de atendimento da demanda: 1920min (04 dias)

1. Dados do Gestor do Tema
1.1 Nome: Carlos Bruno Gomes Cahu
1.2 E-mail: carlos.cahu@serpro.gov.br
1.3 Ramal: (61)2021-7856

2. Dados do Chefe do Desenvolvimento
2.1 Nome: Eraldo Rui Cardoso
2.2 E-mail: eraldo.cardoos@serpro.gov.br
2.3 Ramal: (41)3593-8746

3. Dados do Serviço
3.1 URC: SUNMP
3.2 Cliente Externo: MP
3.3 Nome do Serviço: Gestão de Habilitação de Usuários de DW
3.4 Código do Serviço: 10371
3.6 Qual Arquitetura do Serviço?
    (X) Data Warehouse do Condomínio
    ( ) Data Warehouse do Condomínio Serpro
    ( ) Data Warehouse Corporativo da RFB
    ( ) Data Warehouse Corporativo da STN
    ( ) Data Warehouse Corporativo do MJ

4.  Qual Ambiente?
    ( ) Desenvolvimento
    ( ) Carga
    ( ) Homologação
    ( ) Treinamento
    (X) Produção

5. Nome do Script:
ScriptProdGHU.sql

6. Qual o e-mail para recebimento de Log?
danilo.freitas@serpro.gov.br

Obs: Enviar o Script para o e-mail lista-cdsdw@grupos.serpro.gov.br, inserindo o número do acionamento e o nome o Script no assunto.

--------------------------------------------------------
--  Arquivo criado - Quarta-feira-Dezembro-13-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_LOG_GHU
--------------------------------------------------------

   CREATE SEQUENCE  "GHUS"."SEQ_LOG_GHU"  MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  CYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Table ADMINISTRADOR_GHU
--------------------------------------------------------

  CREATE TABLE "GHUS"."ADMINISTRADOR_GHU" 
   (	"USUARIO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 163840 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TB_10371_GHUS_DAT_01" ;
--------------------------------------------------------
--  DDL for Table LOG_GHU
--------------------------------------------------------

  CREATE TABLE "GHUS"."LOG_GHU" 
   (	"NR_ID_LOG" NUMBER(12,0), 
	"DT_LOG_DATA_HORA" TIMESTAMP (6) DEFAULT SYSDATE, 
	"DS_IP_CADASTRADOR" VARCHAR2(15 BYTE) DEFAULT 'N/A', 
	"NR_CPF_CADASTRADOR" VARCHAR2(15 BYTE) DEFAULT 'N/A', 
	"NR_NIVEL_CADASTRADOR" VARCHAR2(50 BYTE) DEFAULT 'N/A', 
	"NR_CPF_USUARIO_ALTERADO" VARCHAR2(15 BYTE) DEFAULT 'N/A', 
	"NR_EVENTO_OCORRIDO" VARCHAR2(15 BYTE), 
	"DS_OBSERVACAO" VARCHAR2(2500 BYTE) DEFAULT 'N/A'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 163840 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TB_10371_GHUS_DAT_01" ;
REM INSERTING into GHUS.ADMINISTRADOR_GHU
SET DEFINE OFF;
Insert into GHUS.ADMINISTRADOR_GHU (USUARIO) values ('01954503962');
Insert into GHUS.ADMINISTRADOR_GHU (USUARIO) values ('03968760999');
Insert into GHUS.ADMINISTRADOR_GHU (USUARIO) values ('06310645676');
Insert into GHUS.ADMINISTRADOR_GHU (USUARIO) values ('07090679926');
Insert into GHUS.ADMINISTRADOR_GHU (USUARIO) values ('05597230409');


--==============================================================================================

##### Oracle --- Publicar 1 tabela ###### -- banco ainda não está liberado

1. Dados do Gestor do Tema
1.1 Nome: creuza
1.2 E-mail: creuza.brusco@serpro.gov.br
1.3 Ramal: 8788
1.4 Celular:

2. Dados do Chefe do Desenvolvimento
2.1 Nome:
2.2 E-mail:
2.3 Ramal:
2.4 Celular de plantão:

3. Dados do Serviço
3.1 URC: SUNFJ
3.2 Cliente Externo: PGFN
3.3 Nome do Serviço:
3.4 Código do Serviço: 37260
3.5 Qual Arquitetura do Serviço?
    (x) Data Warehouse do Condomínio
    ( ) Data Warehouse do Condomínio Serpro
    ( ) Data Warehouse Corporativo da RFB
    ( ) Data Warehouse Corporativo da STN
    ( ) Data Warehouse Corporativo do MJ

4. Nome do Esquema? sigpgfn

5. Qual Ambiente de Origem?
    ( ) Desenvolvimento
    (x) Carga
    ( ) Homologação
    ( ) Treinamento
    ( ) Produção

6. Qual Ambiente de Destino?
    ( ) Desenvolvimento
    ( ) Carga
    ( ) Homologação
    ( ) Treinamento
    (x) Produção

7. Qual a Data e Hora sugerida para publicação: 15/12 às 10 horas
   
8. Qual a tabela?
Prezados, por favor, realizar a transferência full da tabela: WD_SIGRFB_IGR.
é uma tabela com 5 registros

--==================================================================================
2017SS/0001047622 - atendida.

Bom dia.

Estou tentando acessar o banco de desenvolvimento 161.148.239.62 /whdes135  e não consigo logar no esquema GDPGFN, está dando erro de login.
Poderia me confirmar por favor a senha?

No banco de desenvolvimento anterior usávamos usuário: gdpgfn   senha: xgdpgfn

Obrigado



Atenciosamente,
Renato Monteiro Guedes Junior
Superintendência de Desenvolvimento - SUPDE/DERJO/DE710
☎(21)3509-7492


--==========================================================================================
PARA DBLINK WHCAR130

CREATE USER "USR_DBL_DWCOND" IDENTIFIED BY VALUES 'S:9C822C5C61A440819EEDBF9C1ABEC8E25076C2912206D47EC3053DE25BCE;T:B8AAE762BAFC5FE062810AAB56B13E8402A855D8EC4585773A14669C23A0532EE10A17E44B3D91832D3D85D8945E16E674C480E31765430A9FFCCD1A02F0CC24710357C387C304F5E45114E7F22075D1;4A36AD2AF3A84EDE'
      DEFAULT TABLESPACE "TB_21761_USU_DAT_01"
      TEMPORARY TABLESPACE "TEMP";

DROP PUBLIC DATABASE LINK "DBL_DWCORPCC.SERPRO";

grant resource, connect, create view, create session to USR_DBL_DWCOND; 

 --=======================================================================================
10.193.35.2 ou .4 ou .6 - ipvip -----da carga exadata são paulo
  --=======================================================================================
21/12/2017
--ANTES CRIEI O DB_LINK que não existia
--ok dblink criado com sucesso
CREATE DATABASE LINK "DBL_MDPRO103" CONNECT TO "DWPUB" IDENTIFIED BY "dwpubmd" USING '(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = dfcdcluv9001-scan.dfcddom0001.serpro)(PORT = 1521)) (CONNECT_DATA = (SERVER = DEDICATED) (SERVICE_NAME = mdpro103)))';

--Antes de exportar
select object_type, count(object_type) from dba_objects where owner = 'PCTR961DESDWTG' group by object_type;

OBJECT_TYPE							      COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
TABLE										     345
INDEX										     241
VIEW										     170
--ver espaço da tablespace para ver se cabe o outro tema
@asm
@tablespace = TB_07653_PCTR961DESDWTG_DAT_01	

TABLESPACE				  Extensivel (Mb)  Alocado (Mb) 	 (Mb)	      (Mb)   Livre	(Mb) Fragmentacao
---------------------------------------- ---------------- ------------- ------------- ------------- ------ --------- ------------
TB_07653_PCTR961DESDWTG_DAT_01		     33,554,432.0	1,836.0       1,261.7	      574.3   31.3     573.0	      4.0

15:24:18 DWPUB:mdpro103 > @tamanho_esquema
Enter value for nome_owner: PCTR961DESDWTG
old   4: owner = '&NOME_OWNER'
new   4: owner = 'PCTR961DESDWTG'

SEGMENT_TYPE		       TAMANHO_MB
------------------------------ ----------
INDEX				 442,1875
TABLE				 751,5625
			       ----------
sum				  1193,75

--ok
 CREATE USER "PCTR961DESDWTG_BKP" IDENTIFIED BY VALUES 'S:D12978F09D0E7430F535C21814FBDDA5A2085E85961F1A0C08713C3DE004;1D3B68D38D9CFD72'
      DEFAULT TABLESPACE "TB_07653_PCTR961DESDWTG_DAT_01"
      TEMPORARY TABLESPACE "TEMP"
      PROFILE "METADADOS";TB_07651_MS941PSTNMD_DAT_01
--ok
grant CONNECT, resource, create trigger, create view, resource, unlimited tablespace to PCTR961DESDWTG_BKP;

nohup impdp $user/$passwordmd@mdpro103 directory=DWPUB_DATAPUMP NOLOGFILE=Y NETWORK_LINK=DBL_MDPRO103 SCHEMAS=PCTR961DESDWTG REMAP_SCHEMA=PCTR961DESDWTG:PCTR961DESDWTG_BKP REMAP_TABLESPACE=TB_07653_PCTR961DESDWTG_DAT_01:TB_07653_PCTR961DESDWTG_DAT_01 > impdp_PCTR961DESDWTG_BKP_MDPRO103-MDPRO103_20171221.log &

--Depois de exportar
select object_type, count(object_type) from dba_objects where owner = 'PCTR961DESDWTG_BKP' group by object_type;
OBJECT_TYPE							      COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
TABLE										     345
VIEW										     170
INDEX										     241




  --=======================================================================================
--COPIA METADADOS PRODUÇÃO STN MDPRO103 para MDPRO103 - backup para fazer teste à pedido Ferramenta fazer 22:05 da noite 

--fazer na hora
select object_type, count(object_type) from dba_objects where owner = 'MS104PSTNMD' group by object_type;

TRIGGER 				 1
TABLE					96
INDEX					58


--ver espaço da tablespace para ver se cabe o outro tema
@asm
@tablespace = 
TB_07651_MS941PSTNMD_DAT_01
--ok

  CREATE USER "MS104PSTNMD_BKP" IDENTIFIED BY "MS104PSTNMD_BKP$"
      DEFAULT TABLESPACE "TB_07651_MS941PSTNMD_DAT_01"
      TEMPORARY TABLESPACE "TEMP"
      PROFILE "METADADOS";

--ok
grant CONNECT, resource, create trigger, create view, unlimited tablespace to MS104PSTNMD_BKP;

--fazer 22:05
--entrar na máquina 115 e digitar a palavra producao >> ai depois cole o comando abaixo:
nohup impdp $user/$passwordmd@mdpro103 directory=DWPUB_DATAPUMP NOLOGFILE=Y NETWORK_LINK=DBL_MDPRO103 SCHEMAS=MS104PSTNMD REMAP_SCHEMA=MS104PSTNMD:MS104PSTNMD_BKP REMAP_TABLESPACE=TB_07651_MS941PSTNMD_DAT_01:TB_07651_MS941PSTNMD_DAT_01 > impdp_MS104PSTNMD_BKP_MDPRO103-MDPRO103_20171221.log &

--depois acompanhar com tail -f o nome do arquivo de log

--para encerrar
select object_type, count(object_type) from dba_objects where owner = 'MS104PSTNMD_BKP' group by object_type;


  --=======================================================================================
--À PEDIDO DO GUSTAVO FERRAMENTA

grant select on MCPJ.WD_MCPJ_PJ_ESTABELECIMENTOS to WHMS; 

create synonym WHMS.WD_MCPJ_PJ_ESTABELECIMENTOS for MCPJ.WD_MCPJ_PJ_ESTABELECIMENTOS;

SQL> grant select on MCPJ.WD_MCPJ_PJ_ESTABELECIMENTOS to WHMS; 

Grant succeeded.

SQL> create synonym WHMS.WD_MCPJ_PJ_ESTABELECIMENTOS for MCPJ.WD_MCPJ_PJ_ESTABELECIMENTOS;

Synonym created.

  --=======================================================================================
--ver privilégios gerais que o usuário tem 


SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTEE LIKE 'MS104PSTNMD'

SELECT GRANTEE, GRANTED_ROLE, ADMIN_OPTION, DEFAULT_ROLE FROM DBA_ROLE_PRIVS WHERE GRANTEE LIKE 'MS104PSTNMD'

SELECT * FROM DBA_TAB_PRIVS WHERE TABLE_NAME = 'DSSMDOBJINFO'; 

--=============================================================================================
ALTER TABLE FATOCE.EXPORTACAO1_TAB ADD PARTITION "EXP1_2018"  VALUES LESS THAN (2019);
ALTER TABLE FATOCE.IMPORT_PROD1_TAB ADD PARTITION "IMPORT_PROD1_2018"  VALUES LESS THAN (2019);
ALTER TABLE FATOCE.IMPORTACAO1_TAB ADD PARTITION "IMP1_2018"  VALUES LESS THAN (2019);




# Produção
 WHPRO103 =
   (DESCRIPTION =
     (ADDRESS = (PROTOCOL = TCP)(HOST = 161.148.236.115)(PORT = 1521))
     (CONNECT_DATA =
       (SERVER = DEDICATED)
       (SERVICE_NAME = whpro103)
     )
   )

--=================================================================================================

--comando que usei para gerar csv no sql develper e gerou o arquivo na minha máquina exportar.csv.
--COLOCADO NA PASTA CDORA

SELECT /*csv*/ * FROM MS104PSTNMD.DSSMDOBJINFO WHERE OBJECT_TYPE=3

--===============================================================================================
Luciano
SISCOSERV ---------------------DWSISCOSERV ----------------------------07768

MUDAR DE C PARA CAR diretorio 

--===============================================================================================
A)
--1-Comando top find -- usar sempre
--Esse aqui em baixo é para achar os arquivos *.clt no diretório atual, e o comando exec à frente
--é para substituir c_42012_dwevol_tra por car_42012_dwevol_tra, fazendo backup dos arquivos anteriores
--Se precisar visualizar antes no linux é só tirar o -i e a extensão .old_20180109 e você verá na tela o resultado.
--para procurar somente arquivos execute "find . -name "*.ctl"
find . -name "*.ctl" -exec sed -i.old_20180109 's/c_42012_dwevol_tra/car_42012_dwevol_tra/g' {} \

B)
# Remove arquivos terminados em .log (case insensitive) com mais de 90 
dias encontrados no diretório corrente recursivamente.

find . -ctime +90 -name '*.[lL][oO][gG]' -exec rm -f {} \;

-- ===================================================================================
--02/02/2018########Backup usuários ###########################################################
Usuários do banco de dados que são utilizados atualmente pelos serviços do PowerCenter


Banco: MDPRO103

Domínio
usuário: PCTR961DOMDWTGTEMP
1-Novo: PCTR961DOMDWTGTEMP_BKP
senha:
Serviços de Repositório
Tablespace: TB_07653_PCTR961DOMDWTG_DAT_01

--OK
--Antes de exportar
select object_type, count(object_type) from dba_objects where owner = 'PCTR961DOMDWTGTEMP' group by object_type;

OBJECT_TYPE							      COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
LOB										     102
TABLE										     153
INDEX										     536
VIEW										      16

--ok
CREATE USER "PCTR961DOMDWTGTEMP_BKP" IDENTIFIED BY VALUES 'S:39587811C07C4EBEA96EFCE8B3AA8FF12D16700845F23345942C9954E868;F6614F06E22628E4'
      DEFAULT TABLESPACE "TB_07653_PCTR961DOMDWTG_DAT_01"
      TEMPORARY TABLESPACE "TEMP"
      PROFILE "METADADOS";

--ok
grant CONNECT, create trigger, create view, resource, unlimited tablespace to PCTR961DOMDWTGTEMP_BKP;


--Executar dia  03/02/2018
nohup impdp $user/$passwordmd@mdpro103 directory=DWPUB_DATAPUMP NOLOGFILE=Y NETWORK_LINK=DBL_MDPRO103 SCHEMAS=PCTR961DOMDWTGTEMP REMAP_SCHEMA=PCTR961DOMDWTGTEMP:PCTR961DOMDWTGTEMP_BKP REMAP_TABLESPACE=TB_07653_PCTR961DOMDWTG_DAT_01:TB_07653_PCTR961DOMDWTG_DAT_01 > impdp_PCTR961DOMDWTGTEMP_BKP_MDPRO103_20180203.log &

--Depois de exportar
select object_type, count(object_type) from dba_objects where owner = 'PCTR961DOMDWTGTEMP_BKP' group by object_type;

OBJECT_TYPE                                                           COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
LOB                                                                                  102
INDEX                                                                                536
TABLE                                                                                153
VIEW                                                                                  16


--&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

Desenvolvimento
usuário: PCTR961DESDWTG
senha: 456pctrdes321bsa
2-Novo: PCTR961DESDWTG_BKP1
Tablespace: TB_07653_PCTR961DESDWTG_DAT_01

--OK
--Antes de exportar
select object_type, count(object_type) from dba_objects where owner = 'PCTR961DESDWTG' group by object_type;

OBJECT_TYPE							      COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
TABLE										     345
INDEX										     241
VIEW										     170

--ok
CREATE USER "PCTR961DESDWTG_BKP1" IDENTIFIED BY VALUES 'S:D12978F09D0E7430F535C21814FBDDA5A2085E85961F1A0C08713C3DE004;1D3B68D38D9CFD72'
      DEFAULT TABLESPACE "TB_07653_PCTR961DESDWTG_DAT_01"
      TEMPORARY TABLESPACE "TEMP"
      PROFILE "METADADOS";
--ok
grant CONNECT, create trigger, create view, resource, unlimited tablespace to PCTR961DESDWTG_BKP1;


--Executar dia  03/02/2018
nohup impdp $user/$passwordmd@mdpro103 directory=DWPUB_DATAPUMP NOLOGFILE=Y NETWORK_LINK=DBL_MDPRO103 SCHEMAS=PCTR961DESDWTG REMAP_SCHEMA=PCTR961DESDWTG:PCTR961DESDWTG_BKP1 REMAP_TABLESPACE=TB_07653_PCTR961DESDWTG_DAT_01:TB_07653_PCTR961DESDWTG_DAT_01 > impdp_PCTR961DESDWTG_BKP1_MDPRO103_20180203.log &

--Depois de exportar
select object_type, count(object_type) from dba_objects where owner = 'PCTR961DESDWTG_BKP1' group by object_type;

OBJECT_TYPE                                                           COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
TABLE                                                                                345
VIEW                                                                                 170
INDEX                                                                                241

--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

usuário: PCTR961DESTNSP
senha: 456pctrdes321bsa
3-Novo: PCTR961DESTNSP_BKP
Tablespace: TB_08291_PCTR961DESTNSP_DAT_01

--OK
--Antes de exportar
select object_type, count(object_type) from dba_objects where owner = 'PCTR961DESTNSP' group by object_type;

OBJECT_TYPE							      COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
TABLE										     345
INDEX										     241
VIEW										     170

3 rows selected.

--ok

 CREATE USER "PCTR961DESTNSP_BKP" IDENTIFIED BY VALUES 'S:88F4BB3938856FC8CD07140CCA3A627DFAD62B659DA768197F681F27EBEA;05521829DCD25C32'
      DEFAULT TABLESPACE "TB_08291_PCTR961DESTNSP_DAT_01"
      TEMPORARY TABLESPACE "TEMP"
      PROFILE "METADADOS";


--ok
grant CONNECT, create trigger, create view, resource, unlimited tablespace to PCTR961DESTNSP_BKP;


--Executar dia  03/02/2018
nohup impdp $user/$passwordmd@mdpro103 directory=DWPUB_DATAPUMP NOLOGFILE=Y NETWORK_LINK=DBL_MDPRO103 SCHEMAS=PCTR961DESTNSP REMAP_SCHEMA=PCTR961DESTNSP:PCTR961DESTNSP_BKP REMAP_TABLESPACE=TB_08291_PCTR961DESTNSP_DAT_01:TB_08291_PCTR961DESTNSP_DAT_01 > impdp_PCTR961DESTNSP_BKP_MDPRO103_20180203.log &

--Depois de exportar
select object_type, count(object_type) from dba_objects where owner = 'PCTR961DESTNSP_BKP' group by object_type;

OBJECT_TYPE                                                           COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
TABLE                                                                                345
VIEW                                                                                 170
INDEX                                                                                241




--*****************************************************************************************************************************************
Homologação
usuário: PCTR961HOMDWTG
senha: 456pctrhom321bsa
4-Novo: PCTR961HOMDWTG_BKP
Tablespace: TB_33393_PCTR961HOMDWTG_DAT_01

--OK
--Antes de exportar
select object_type, count(object_type) from dba_objects where owner = 'PCTR961HOMDWTG' group by object_type;

OBJECT_TYPE							      COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
TABLE										     345
INDEX										     241
VIEW										     170

3 rows selected.

--ok

 CREATE USER "PCTR961HOMDWTG_BKP" IDENTIFIED BY VALUES 'S:B320E08B1346855CB62D30B46103103660B1A06896916FA9BE52CB9BE596;9BBFEB1E47C0ED26'
      DEFAULT TABLESPACE "TB_33393_PCTR961HOMDWTG_DAT_01"
      TEMPORARY TABLESPACE "TEMP";

--ok
grant CONNECT, create trigger, create view, resource, unlimited tablespace to PCTR961HOMDWTG_BKP;


--Executar dia  03/02/2018
nohup impdp $user/$passwordmd@mdpro103 directory=DWPUB_DATAPUMP NOLOGFILE=Y NETWORK_LINK=DBL_MDPRO103 SCHEMAS=PCTR961HOMDWTG REMAP_SCHEMA=PCTR961HOMDWTG:PCTR961HOMDWTG_BKP REMAP_TABLESPACE=TB_33393_PCTR961HOMDWTG_DAT_01:TB_33393_PCTR961HOMDWTG_DAT_01 > impdp_PCTR961HOMDWTG_BKP_MDPRO103_20180203.log &

--Depois de exportar
select object_type, count(object_type) from dba_objects where owner = 'PCTR961HOMDWTG_BKP' group by object_type;

OBJECT_TYPE                                                           COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
TABLE                                                                                345
VIEW                                                                                 170
INDEX                                                                                241

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Produção
usuário: PCTR961PRODDWTG
senha: 456pctrprod321bsa
5-Novo: PCTR961PRODDWTG_BKP
Tablespace: TB_07653_PCTR961PRODWTG_DAT_01

--OK
--Antes de exportar
select object_type, count(object_type) from dba_objects where owner = 'PCTR961PRODDWTG' group by object_type;

OBJECT_TYPE							      COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
TABLE										     345
INDEX										     241
VIEW										     170

3 rows selected.

--ok

  CREATE USER "PCTR961PRODDWTG_BKP" IDENTIFIED BY VALUES 'S:405A2F0975DB439B6F2754B826E1CB3566F62BA95272A4F06BE76850C451;99C53BAE71829615'
      DEFAULT TABLESPACE "TB_07653_PCTR961PRODWTG_DAT_01"
      TEMPORARY TABLESPACE "TEMP"
      PROFILE "METADADOS";

--ok
grant CONNECT, create trigger, create view, resource, unlimited tablespace to PCTR961PRODDWTG_BKP;


--Executar dia  03/02/2018
nohup impdp $user/$passwordmd@mdpro103 directory=DWPUB_DATAPUMP NOLOGFILE=Y NETWORK_LINK=DBL_MDPRO103 SCHEMAS=PCTR961PRODDWTG REMAP_SCHEMA=PCTR961PRODDWTG:PCTR961PRODDWTG_BKP REMAP_TABLESPACE=TB_07653_PCTR961PRODWTG_DAT_01:TB_07653_PCTR961PRODWTG_DAT_01 > impdp_PCTR961PRODDWTG_BKP_MDPRO103_20180203.log &

--Depois de exportar
select object_type, count(object_type) from dba_objects where owner = 'PCTR961PRODDWTG_BKP' group by object_type;

OBJECT_TYPE                                                           COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
TABLE                                                                                345
VIEW                                                                                 170
INDEX                                                                                241



--#############################################################################################################################################

usuário: PCTR961PROTNSP
senha: 456pctrprod321bsa
6-Novo: PCTR961PROTNSP_BKP
Tablespace: TB_08291_PCTR961PROTNSP_DAT_01

--OK
--Antes de exportar
select object_type, count(object_type) from dba_objects where owner = 'PCTR961PROTNSP' group by object_type;

OBJECT_TYPE							      COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
TABLE										     345
INDEX										     241
VIEW										     170

3 rows selected.


--ok

CREATE USER "PCTR961PROTNSP_BKP" IDENTIFIED BY VALUES 'S:5B8468AEB9145FCC14860AE394A42CF12AFA07A45967D7A0251A46761962;C32B8537C2AD7EE3'
      DEFAULT TABLESPACE "TB_08291_PCTR961PROTNSP_DAT_01"
      TEMPORARY TABLESPACE "TEMP"
      PROFILE "METADADOS";

--ok
grant CONNECT, create trigger, create view, resource, unlimited tablespace to PCTR961PROTNSP_BKP;


--Executar dia  03/02/2018
nohup impdp $user/$passwordmd@mdpro103 directory=DWPUB_DATAPUMP NOLOGFILE=Y NETWORK_LINK=DBL_MDPRO103 SCHEMAS=PCTR961PROTNSP REMAP_SCHEMA=PCTR961PROTNSP:PCTR961PROTNSP_BKP REMAP_TABLESPACE=TB_08291_PCTR961PROTNSP_DAT_01:TB_08291_PCTR961PROTNSP_DAT_01 > impdp_PCTR961PROTNSP_BKP_MDPRO103_20180203.log &

--Depois de exportar
select object_type, count(object_type) from dba_objects where owner = 'PCTR961PROTNSP_BKP' group by object_type;

OBJECT_TYPE                                                           COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
TABLE                                                                                345
VIEW                                                                                 170
INDEX                                                                                241


--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

USERNAME		  ACCOUNT_STATUS		 DEFAULT_TABLESPACE		     LOCK_DATE	    EXPIRY_DATE
------------------------- ------------------------------ ----------------------------------- -------------- --------------
PCTR961DESDWTG_BKP1	  OPEN				 TB_07653_PCTR961DESDWTG_DAT_01
PCTR961DESTNSP_BKP	  OPEN				 TB_08291_PCTR961DESTNSP_DAT_01
PCTR961DOMDWTGTEMP_BKP	  OPEN				 TB_07653_PCTR961DOMDWTG_DAT_01
PCTR961HOMDWTG_BKP	  OPEN				 TB_33393_PCTR961HOMDWTG_DAT_01
PCTR961PRODDWTG_BKP	  OPEN				 TB_07653_PCTR961PRODWTG_DAT_01
PCTR961PROTNSP_BKP	  OPEN				 TB_08291_PCTR961PROTNSP_DAT_01

6 rows selected.

--#############################################################################################################################################
--ESSE AQUI SÃO AS PASTAS PRINCIPAIS DA 49 
MAXSERPRO01-1-16:~ # cd /data
MAXSERPRO01-1-16:/data # ls                                                                           
20160602_bkp_online_data.tar.bz2         lancamentos20141212_2014                                     
arquivos_prod                            lost+found                                                   
backup_17122015                          p_08291_tesourotransparente_pcenter_tra                      
backups_diversos                         p_33393_dwstn_pcenter_tra                                    
custos                                   p_33393_dwstn_pcenter_tra_new                                
custos_utf8                              pagef                                                        
d_08291_tesourotransparente_pcenter_tra  qware                                                        
d_33393_dwstn_pcenter_tra                serpro                                                       
dwpub                                    snsp                                                         
h_33393_dwstn_pcenter_tra                teste.sh                                                     
MAXSERPRO01-1-16:/data # cd /                                                                         
MAXSERPRO01-1-16:/ # ls -ltr                                                                          
total 1952                                                                                            
drwxr-xr-x   2 root    root    4096 2009-09-05 07:25 media                                            
drwx------   2 root    root   16384 2013-06-07 15:43 lost+found                                       
drwxr-xr-x   4 root    root    4096 2013-06-07 15:47 srv                                              
drwxr-xr-x   3 root    root    4096 2014-10-09 03:35 mnt                                              
drwxr-xr-x   6 root    root    4096 2014-11-24 20:30 lib64                                            
drwxr-xr-x   9 root    root    4096 2014-11-24 20:30 lib                                              
drwxr-xr-x  14 root    root    4096 2015-04-10 17:17 usr
drwxr-xr-x   3 root    root    4096 2016-09-14 10:24 boot
-rw-------   1 root    root     622 2017-06-14 18:29 .viminfo
dr-xr-xr-x 222 root    root       0 2017-08-22 11:26 proc
drwxr-xr-x  11 root    root       0 2017-08-22 11:26 sys
-rw-r-----   1 root    root 1705262 2017-12-27 09:21 arq1.txt
drwxr-xr-x  13 root    root    7320 2018-01-02 12:55 dev
drwxr-xr-x  13 root    root    4096 2018-01-03 16:05 home
drwxr-xr-x  12 root    root    4096 2018-01-11 21:53 opt
drwxrwxr-x  19 pcenter root    4096 2018-01-31 18:19 data
-rwxr--r--   1 root    root    4512 2018-02-01 12:42 .put
drwxr-xr-x  15 root    root    4096 2018-02-01 12:47 var
drwxr-xr-x   3 root    root    8192 2018-02-01 12:47 sbin
-rw-r--r--   1 root    root       0 2018-02-01 12:47 3
drwxr-xr-x  90 root    root    8192 2018-02-02 15:48 etc
drwxr-xr-x   2 root    root    4096 2018-02-02 18:42 bin
drwx------  23 root    root    4096 2018-02-03 16:35 root
drwxrwxrwt  66 root    root  184320 2018-02-03 16:41 tmp
MAXSERPRO01-1-16:/ # 

MAXSERPRO01-1-16:/ # cd home
MAXSERPRO01-1-16:/home # ls -ltr
total 44
drwxr-x--- 2 oracle11     oinstall 4096 2014-11-24 17:51 oracle11
drwxr-x--- 2 monitoracao  supcd    4096 2015-04-16 08:27 monitoracao
drwxr-xr-x 8 julio        dwtg     4096 2015-08-07 15:53 julio
drwxr-xr-x 8 D41410459349 dwtg     4096 2015-08-10 09:51 D41410459349
drwxr-x--- 2 D72291869353 dwtg     4096 2016-03-23 16:08 D72291869353
drwxr-xr-x 8 D69992282304 users    4096 2018-01-04 16:10 D69992282304
drwxr-x--- 4 D91412706300 dwtg     4096 2018-01-31 11:46 D91412706300
drwxr-x--- 3 root         root     4096 2018-02-01 12:57 support
drwxr-x--- 3 D00465033318 dwtg     4096 2018-02-02 14:54 D00465033318
drwxr-x--- 3 dwpub        root     4096 2018-02-03 12:13 dwpub
drwxr-x--- 8 pcenter      root     4096 2018-02-03 13:49 pcenter
MAXSERPRO01-1-16:/home #
MAXSERPRO01-1-16:/home # cd /var
MAXSERPRO01-1-16:/var # ls
adm    crash  gsctools  lock  lost+found  opt  spool  twbpkg  yp
cache  games  lib       log   mail        run  tmp    X11R6
MAXSERPRO01-1-16:/var # cd run
MAXSERPRO01-1-16:/var/run # ls
acpid.socket        dbus                 klogd.pid   openct   setleds-on     swapspace.pid  zmd
agentx              dsm_om_connsvcd.pid  nscd        resmgr   smpppd         syslog-ng.pid
atd.pid             hal                  ntp         samba    snmpd.pid      tdsmagent.pid
chassismonitor.pid  heartbeat            ntpmon.pid  sasl2    sshd.init.pid  uscreens
cron.pid            keymap               numlock-on  screens  sudo           utmp
MAXSERPRO01-1-16:/var/run # ls -ltr
total 116
drwxr-xr-x 2 root       root        4096 2007-04-27 13:34 openct
drwxr-x--- 2 root       dialout     4096 2008-04-21 23:08 smpppd
drwxr-xr-x 2 root       root        4096 2009-09-05 08:04 sasl2
srw-rw-rw- 1 root       root           0 2013-06-07 12:06 acpid.socket
drwxr-xr-x 3 root       root        4096 2013-06-07 15:49 resmgr
drwxr-xr-x 4 root       root        4096 2013-06-07 15:54 heartbeat
drwxr-xr-x 2 root       root        4096 2013-07-29 11:59 samba
drwx------ 2 root       root        4096 2014-03-14 12:47 agentx
drwxr-xr-x 2 root       root        4096 2014-06-25 04:41 nscd
lrwxrwxrwx 1 root       root          22 2014-10-06 11:37 ntp -> ../lib/ntp/var/run/ntp
drwxr-xr-x 2 root       root        4096 2014-11-24 20:27 zmd
drwxr-xr-x 2 haldaemon  haldaemon   4096 2015-06-23 11:40 hal
drwxrwxrwt 2 root       root        4096 2017-08-22 11:33 uscreens
drwxr-xr-x 2 root       root        4096 2017-08-22 11:33 screens
drwxr-xr-x 2 messagebus messagebus  4096 2017-08-22 14:33 dbus
---------- 1 root       root           5 2017-08-22 14:33 swapspace.pid
-rw------- 1 root       root           5 2017-08-22 14:34 snmpd.pid
-rw------- 1 root       root           5 2017-08-22 14:34 dsm_om_connsvcd.pid
-rw-r--r-- 1 root       root           0 2017-08-22 14:34 setleds-on
-rw-r--r-- 1 root       root           0 2017-08-22 14:34 numlock-on
-rw-r--r-- 1 root       root          45 2017-08-22 14:34 keymap
-rw-r--r-- 1 root       root           6 2017-08-22 14:34 atd.pid
-rw-r--r-- 1 root       root           6 2017-08-22 14:34 cron.pid
-rw-r----- 1 root       root           6 2017-08-25 14:17 sshd.init.pid
-rw-r--r-- 1 root       root           5 2017-08-31 12:53 tdsmagent.pid
-rw------- 1 root       root           5 2017-08-31 12:53 syslog-ng.pid
-rw-r----- 1 root       root           5 2017-08-31 12:53 klogd.pid
-rw-r----- 1 root       root           5 2017-08-31 12:53 chassismonitor.pid
drwx------ 6 root       root        4096 2018-01-04 16:49 sudo
-rw-r--r-- 1 root       root           5 2018-02-01 12:47 ntpmon.pid
-rw-rw-r-- 1 root       tty        11520 2018-02-03 16:41 utmp
MAXSERPRO01-1-16:/var/run # 



--==================================================================================================
===================================================================================~                               
2018SS/0000113149
##### Oracle --- Executar Scripts ######

1. Dados do Gestor do Tema
1.1 Nome: creuza
1.2 E-mail: creuza.brusco@serpro.gov.br
1.3 Ramal: 8788
1.4 Celular:

2. Dados do Chefe do Desenvolvimento
2.1 Nome:
2.2 E-mail:
2.3 Ramal:
2.4 Celular de plantão:

3. Dados do Serviço
3.1 URC: SUNGE
3.2 Cliente Externo: PGFN
3.3 Nome do Serviço:
3.4 Código do Serviço: 37260
3.5 Número CPS:
3.6 Qual Arquitetura do Serviço?
    (x) Data Warehouse do Condomínio
    ( ) Data Warehouse do Condomínio Serpro
    ( ) Data Warehouse Corporativo da RFB
    ( ) Data Warehouse Corporativo da STN
    ( ) Data Warehouse Corporativo do MJ

4.  Qual Ambiente?
    ( ) Desenvolvimento
    ( ) Carga
    ( ) Homologação
    ( ) Treinamento
    (x) Produção

5. Nome do Script:
ALTER TABLE SIGPGFN.SIG_DEVEDOR_AGREGADO ADD(
ID_SITUACAO_CAD_CPFCNPJ NUMBER(2,0),
ID_MOTIVO_SITUACAO  NUMBER(2,0)
);

update SIGPGFN.SIG_RECEITA_PRINC set IND_DIVIDA_ATIVA   = 0 where IND_DIVIDA_ATIVA is null;
update SIGPGFN.SIG_RECEITA_PRINC set IND_PREVIDENCIARIO = 0 where IND_PREVIDENCIARIO is null;
update SIGPGFN.SIG_RECEITA_PRINC set IND_DIVIDA_ATIVA   = 1 where CO_RECEITA_PRINC in (4429, 5427);
update SIGPGFN.SIG_RECEITA_PRINC set IND_PREVIDENCIARIO = 1 where CO_RECEITA_PRINC = 4429;
commit;


insert into SIGPGFN.SIGSISPAR_PARC_MODALIDADE (ID_PARC_MODALIDADE, CO_PARCELAMENTO, DS_PARCELAMENTO, CO_MODALIDADE, DS_PARC_MODALIDADE, ID_ANOMES_CRICAO)
values (93, 9, 'Liquidacao Credito Rural e Fundiario', 3, 'LIQUIDACAO CREDITO RURAL LEI 13.340/2016 - PESSOAS FISICA E JURIDICA', 201801);

insert into SIGPGFN.SIGSISPAR_PARC_MODALIDADE (ID_PARC_MODALIDADE, CO_PARCELAMENTO, DS_PARCELAMENTO, CO_MODALIDADE, DS_PARC_MODALIDADE, ID_ANOMES_CRICAO)
values (94, 9, 'Liquidacao Credito Rural e Fundiario', 4, 'LIQUIDACAO CREDITO FUNDIARIO LEI 13.340 - PESSOA FISICA', 201801);

insert into SIGPGFN.SIGSISPAR_PARC_MODALIDADE (ID_PARC_MODALIDADE, CO_PARCELAMENTO, DS_PARCELAMENTO, CO_MODALIDADE, DS_PARC_MODALIDADE, ID_ANOMES_CRICAO)
values (95, 9, 'Liquidacao Credito Rural e Fundiario', 5, 'LIQUIDACAO CREDITO FUNDIARIO LEI 13340 - PESSOA JURIDICA', 201801);

insert into SIGPGFN.SIGSISPAR_PARC_MODALIDADE (ID_PARC_MODALIDADE, CO_PARCELAMENTO, DS_PARCELAMENTO, CO_MODALIDADE, DS_PARC_MODALIDADE, ID_ANOMES_CRICAO)
values (191, 19, 'PARCELAMENTO DA LEI N. 13586, DE 28 DE DEZEMBRO DE 2017', 1, 'PARCELAMENTO DA LEI 13.586/2017', 201801);

insert into SIGPGFN.SIGSISPAR_PARC_MODALIDADE (ID_PARC_MODALIDADE, CO_PARCELAMENTO, DS_PARCELAMENTO, CO_MODALIDADE, DS_PARC_MODALIDADE, ID_ANOMES_CRICAO)
values (1435, 14, 'PROGRAMA ESPECIAL DE REGULARIZACAO TRIBUTARIA - PERT - DEMAIS DEBITOS', 35, 'DEMAIS DEBITOS ATE 15 MILHOES - ENTRADA E SALDO A VISTA - PF E BCN', 201801);

insert into SIGPGFN.SIGSISPAR_PARC_MODALIDADE (ID_PARC_MODALIDADE, CO_PARCELAMENTO, DS_PARCELAMENTO, CO_MODALIDADE, DS_PARC_MODALIDADE, ID_ANOMES_CRICAO)
values (1535, 15, 'PROGRAMA ESPECIAL DE REGULARIZACAO TRIBUTARIA - PERT - DEBITOS PREVIDENCIARIOS', 35, 'DEBITOS PREVIDENCIARIOS ATE 15 MILHOES - ENTRADA E SALDO A VISTA - PF E BCN', 201801);
commit;

===================================================================================~                               
--REGRAS DE FIREWALL -- DO EXADATA BRASÍLIA QUANDO PRECISAR PEDIR
--PORTAS E IPS PARA PEDIDO DE REGRAS DE FIREWALL

Nro da Solicitação: 2018SS/0000110875
Data e Hora da Solicitação: 06/02/18 16:52:09
Data/Hora Conclusão: 07/02/18 09:55:24
Descrição: Descrição:  Prezados, favor abrir RS para GSSIDFFWL com a seguinte solicitação:

Favor abrir regras de firewall conforme dados abaixo:

1. Código do serviço: 33393
2. Sistema: Tesouro Gerencial
3. Grupo Responsável: GSSIDFFWL
4. Demanda: Criar regras de firewall conforme detalhamento abaixo:
4.1. Origem: 161.148.238.41
4.2. Destino: 161.148.236.109 ao 161.148.236.117
4.3. Portas : 1500 a 1599
5. Motivo: Acesso do IS Microstrategy para o banco Exadata
6. Período de vigência da regra: Indeterminado.
Solução Aplicada: Solicitação atendida como requisitado.

===================================================================================~                               

#! /bin/ksh
#
# Autor...: Servico Federal de Processamento de Dados
# Data....: 09/02/2018
# Tecnico.: Mario Marcos
# Revisoes: --

echo "Carga teste - final de semana não vai rolar estatística full. Só vai rolar depois da migração do banco.
exit 0
~       

===================================================================================~
--Realizado em 21/02/2018
--COPIA METADADOS PRODUÇÃO STN MDPRO103 para MDPRO103 - backup para fazer teste à pedido Ferramenta fazer 22:05 da noite 

--fazer na hora
select object_type, count(object_type) from dba_objects where owner = 'MS104PSTNMD' group by object_type;

OBJECT_TYPE             COUNT(OBJECT_TYPE)
----------------------- ------------------
TRIGGER                                  1
TABLE                                  114
INDEX                                   58


--ver espaço da tablespace para ver se cabe o outro tema
@asm
@tablespace = 
TB_07651_MS941PSTNMD_DAT_01
--ok

  CREATE USER "MS104PSTNMD_BKP2" IDENTIFIED BY "MS104PSTNMD_BKP2$"
      DEFAULT TABLESPACE "TB_07651_MS941PSTNMD_DAT_01"
      TEMPORARY TABLESPACE "TEMP"
      PROFILE "METADADOS";

--ok
grant CONNECT, resource, create trigger, create view, unlimited tablespace to MS104PSTNMD_BKP2;

--fazer 22:05
--entrar na máquina 115 e digitar a palavra producao >> ai depois cole o comando abaixo:
nohup impdp $user/$passwordmd@mdpro103 directory=DWPUB_DATAPUMP NOLOGFILE=Y NETWORK_LINK=DBL_MDPRO103 SCHEMAS=MS104PSTNMD REMAP_SCHEMA=MS104PSTNMD:MS104PSTNMD_BKP2 REMAP_TABLESPACE=TB_07651_MS941PSTNMD_DAT_01:TB_07651_MS941PSTNMD_DAT_01 > impdp_MS104PSTNMD_BKP2_MDPRO103-MDPRO103_20170221.log &

--depois acompanhar com tail -f o nome do arquivo de log

--para encerrar
select object_type, count(object_type) from dba_objects where owner = 'MS104PSTNMD_BKP2' group by object_type;

OBJECT_TYPE             COUNT(OBJECT_TYPE)
----------------------- ------------------
TRIGGER                                  1
TABLE                                  114
INDEX                                   58

===================================================================================~
--Realizado em 22/02/2018
--COPIA LISTA DE HISTÓRICOS STN MDPRO103 para MDPRO103 - backup para fazer teste à pedido Ferramenta fazer 14:37 sem parar a lista de histórico 

--fazer na hora
select object_type, count(object_type) from dba_objects where owner = 'MS104PSTNHS' group by object_type;

OBJECT_TYPE                                                           COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
LOB                                                                                    2
INDEX                                                                                  6
TABLE                                                                                  4




--ver espaço da tablespace para ver se cabe o outro tema
@asm
@tablespace = 
TB_07651_MS941PRODSTNHS_DAT_01
--ok

CREATE USER "MS104PSTNHS_BKP" IDENTIFIED BY "MS104PSTNHS_BKP$"
      DEFAULT TABLESPACE "TB_07651_MS941PRODSTNHS_DAT_01"
      TEMPORARY TABLESPACE "TEMP"
      PROFILE "METADADOS";


--ok
grant CONNECT, resource, create trigger, create view, unlimited tablespace to MS104PSTNHS_BKP;

--entrar na máquina 115 e digitar a palavra producao >> ai depois cole o comando abaixo:
nohup impdp $user/$passwordmd@mdpro103 directory=DWPUB_DATAPUMP NOLOGFILE=Y NETWORK_LINK=DBL_MDPRO103 SCHEMAS=MS104PSTNHS REMAP_SCHEMA=MS104PSTNHS:MS104PSTNHS_BKP REMAP_TABLESPACE=TB_07651_MS941PRODSTNHS_DAT_01:TB_07651_MS941PRODSTNHS_DAT_01 > impdp_MS104PSTNHS_BKP_MDPRO103-MDPRO103_20170222.log &

--depois acompanhar com tail -f o nome do arquivo de log

--para encerrar
select object_type, count(object_type) from dba_objects where owner = 'MS104PSTNHS_BKP' group by object_type;

LOB                                                                                    2
TABLE                                                                                  4
INDEX                                                                                  6


===================================================================================~
--FAZER NA MÁQUINA 117 POR CAUSA DA VARIAVEL DE AMBIENTE DA SENHA DO METADADOS

--Realizado em 23/02/2018
--COPIA METADADOS NOVAMENTE PARA FERRAMENTA MDPRO103 - backup para fazer teste à pedido Ferramenta fazer 22:00  

--fazer na hora
select object_type, count(object_type) from dba_objects where owner = 'MS104PSTNMD' group by object_type;





--ver espaço da tablespace para ver se cabe o outro tema
@asm
@tablespace = 
TB_07651_MS941PSTNMD_DAT_01
--ok
--JÁ EXISTE --CREATE USER "MS104PSTNMD_BKP5" IDENTIFIED BY "MS104PSTNMD_BKP5$"
      DEFAULT TABLESPACE "TB_07651_MS941PSTNMD_DAT_01"
      TEMPORARY TABLESPACE "TEMP"
      PROFILE "METADADOS";

-- JÁ FOI FEITO -- grant CONNECT, resource, create trigger, create view, unlimited tablespace to MS104PSTNMD_BKP5;

--entrar na máquina 115 e digitar a palavra producao >> ai depois cole o comando abaixo:
nohup impdp $user/$passwordmd@mdpro103 directory=DWPUB_DATAPUMP NOLOGFILE=Y NETWORK_LINK=DBL_MDPRO103 SCHEMAS=MS104PSTNMD REMAP_SCHEMA=MS104PSTNMD:MS104PSTNMD_BKP5 REMAP_TABLESPACE=TB_07651_MS941PSTNMD_DAT_01:TB_07651_MS941PSTNMD_DAT_01 > impdp_MS104PSTNMD_BKP5_MDPRO103-MDPRO103_20180223.log &

--ok

--depois acompanhar com tail -f o nome do arquivo de log

--para encerrar
select object_type, count(object_type) from dba_objects where owner = 'MS104PSTNMD_BKP5' group by object_type;



===================================================================================~
drop user MS104PSTNMD_BKP3 cascade;
drop user MS104PSTNMD_BKP4 cascade;

===================================================================================~
--FAZER NA MÁQUINA 117 POR CAUSA DA VARIAVEL DE AMBIENTE DA SENHA DO METADADOS

--Realizado em 25/02/2018
--COPIA METADADOS NOVAMENTE PARA FERRAMENTA MDPRO103 - backup para fazer teste à pedido Ferramenta fazer 22:00  

--fazer na hora
select object_type, count(object_type) from dba_objects where owner = 'MS104PSTNMD' group by object_type;

OBJECT_TYPE             COUNT(OBJECT_TYPE)
----------------------- ------------------
TRIGGER                                  1
TABLE                                  117
INDEX                                   58




--ver espaço da tablespace para ver se cabe o outro tema
@asm
@tablespace = 
TB_07651_MS941PSTNMD_DAT_01
--ok
CREATE USER "MS104PSTNMD_BKP7" IDENTIFIED BY "MS104PSTNMD_BKP7$"
      DEFAULT TABLESPACE "TB_07651_MS941PSTNMD_DAT_01"
      TEMPORARY TABLESPACE "TEMP"
      PROFILE "METADADOS";

grant CONNECT, resource, create trigger, create view, unlimited tablespace to MS104PSTNMD_BKP7;

--entrar na máquina 115 e digitar a palavra producao >> ai depois cole o comando abaixo:
nohup impdp $user/$passwordmd@mdpro103 directory=DWPUB_DATAPUMP NOLOGFILE=Y NETWORK_LINK=DBL_MDPRO103 SCHEMAS=MS104PSTNMD REMAP_SCHEMA=MS104PSTNMD:MS104PSTNMD_BKP7 REMAP_TABLESPACE=TB_07651_MS941PSTNMD_DAT_01:TB_07651_MS941PSTNMD_DAT_01 > impdp_MS104PSTNMD_BKP7_MDPRO103-MDPRO103_20180223.log &

--ok

--depois acompanhar com tail -f o nome do arquivo de log

--para encerrar
select object_type, count(object_type) from dba_objects where owner = 'MS104PSTNMD_BKP7' group by object_type;



===================================================================================~
Bom dia Mario,

segue os comandos abaixo, onde a coluna STALE_STATS indica que o objeto precisa ou não de coleta de estatíscas.
A coleta é realizada pelo job automático a partir das 22h nos dias de semana.

SQL> select count(*) from dba_tab_statistics where owner='MS104PSTNMD_BKP' and STALE_STATS='YES';

  COUNT(*)
----------
     0

SQL> select count(*) from dba_tab_statistics where owner='MS104PSTNMD_BKP';

  COUNT(*)
----------
    99

SQL> select count(*) from dba_tab_statistics where owner='MS104PSTNMD' and STALE_STATS='YES';

  COUNT(*)
----------
     1

SQL> select TABLE_NAME from dba_tab_statistics where owner='MS104PSTNMD' and STALE_STATS='YES';

TABLE_NAME
--------------------------------------------------------------------------------
DSSMDOBJLOCK

SQL> alter session set nls_date_format='dd/mm/yyyy hh24:mi';
select sysdate from dual;

Session altered.

SQL> 
SYSDATE
----------------
27/02/2018 09:27

SQL> 
SQL> exec dbms_stats.GATHER_SCHEMA_STATS( ownname=> 'MS104PSTNMD_BKP', -
estimate_percent=> DBMS_STATS.AUTO_SAMPLE_SIZE, -
cascade=> DBMS_STATS.AUTO_CASCADE, -
degree=> 4, -
no_invalidate=> DBMS_STATS.AUTO_INVALIDATE, -
granularity=> 'AUTO', -
method_opt=> 'FOR ALL INDEXED COLUMNS SIZE AUTO');
> > > > > > 
select sysdate from dual;

PL/SQL procedure successfully completed.

SQL> SQL> 
SYSDATE
----------------
27/02/2018 09:29

Abraços,
Eudes Lima Tavares
SUPCD/CDBSA/CDBDB

===================================================================================~
--consulta para ver donos, owner de tabelas.
select owner, object_type, object_name from dba_objects where object_name = 'WD_UF' AND OWNER like '%SNSP%';

===================================================================================~
--FAZER NA MÁQUINA 117 POR CAUSA DA VARIAVEL DE AMBIENTE DA SENHA DO METADADOS

--Realizado em 28/02/2018
--COPIA METADADOS NOVAMENTE PARA FERRAMENTA MDDES104 - backup para fazer teste à pedido Ferramenta fazer 10:55  

--fazer na hora
select object_type, count(object_type) from dba_objects where owner = 'MS104DSTNMD' group by object_type;

OBJECT_TYPE                                                           COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
TRIGGER                                                                                1
INDEX                                                                                 58
TABLE                                                                                 31


--ver espaço da tablespace para ver se cabe o outro tema
@asm
@tablespace = 
TB_07651_MS941DESSTNMD_DAT_01
--ok

CREATE USER "MS104DSTNMD_BKP" IDENTIFIED BY  "MS104DSTNMD_BKP$"
      DEFAULT TABLESPACE "TB_07651_MS941DESSTNMD_DAT_01"
      TEMPORARY TABLESPACE "TEMP";


grant CONNECT, resource, create trigger, create view, unlimited tablespace to MS104DSTNMD_BKP;

--entrar na máquina 117 e digitar a palavra producao >> ai depois cole o comando abaixo:
nohup impdp $user/$passwordmd@mddes104 directory=DWPUB_DATAPUMP NOLOGFILE=Y NETWORK_LINK=DBL_MDDES104 SCHEMAS=MS104DSTNMD REMAP_SCHEMA=MS104DSTNMD:MS104DSTNMD_BKP REMAP_TABLESPACE=TB_07651_MS941DESSTNMD_DAT_01:TB_07651_MS941DESSTNMD_DAT_01 > impdp_MS104DSTNMD__BKP_MDDES104-MDDES104_20180228.log &

--ok

--depois acompanhar com tail -f o nome do arquivo de log

--para encerrar
select object_type, count(object_type) from dba_objects where owner = 'MS104DSTNMD_BKP' group by object_type;
11:41:55 DWPUB:mddes104 > select object_type, count(object_type) from dba_objects where owner = 'MS104DSTNMD_BKP' group by object_type;

OBJECT_TYPE                                                           COUNT(OBJECT_TYPE)
--------------------------------------------------------------------- ------------------
TRIGGER                                                                                1
TABLE                                                                                 31
INDEX                                                                                 58

===================================================================================~
--criando tabela de um banco direto para o outro - oracle
--do banco de pré-producao para o banco de produção whpro130
create table admaduaneiro.hatus as select * from admaduaneiro.hatus@dbl_whpre130

===================================================================================~
-matar sessões - kill
alter system kill session '763,42852' immediate;
alter system kill session '23,48145' immediate;
alter system kill session '1036,54176' immediate;
alter system kill session '289,21955' immediate;
alter system kill session '1303,11379' immediate;

===================================================================================~
modelo publicação simples tabela pequena e sem index - 

Atendido.


SQL> select name from v$database;

NAME
---------------------------
WHDES130


SQL>     truncate table DIME.WD_RC_RECEITAS;
truncate table DIME.WD_RC_REC_VARIACAO;

Table truncated.

SQL> 
Table truncated.

SQL> insert into DIME.WD_RC_RECEITAS nologging select * from DIME.WD_RC_RECEITAS@dbl_whcar130;
commit;
insert into DIME.WD_RC_REC_VARIACAO nologging select * from DIME.WD_RC_REC_VARIACAO@dbl_whcar130;
commit;
6264 rows created.

SQL> 
Commit complete.

SQL> 
3083 rows created.

SQL> 

Commit complete.


===================================================================================~
--POR GIOVANNA
Pessoal,



por favor, só executar scripts na produção e homologação do Condomínio e da Receita utilizando proxy.



conn dwpub[owner]@whbanco

Enter password: (senha do DWPUB)



Eu já alterei as permissões de todos os usuários de esquema (exceto usuários ADMXXXX).



O intuito é evitar criar objetos no DWPUB quando executamos scripts e o desenvolvedor, por acaso, não coloca o owner.

===================================================================================~
09/03/2018
--METADADOS
--DATA LAKE RFB 
--ver espaço da tablespace para ver se cabe o outro tema
TB_21761_MS104PDTLMD_DAT_00
--ok

CREATE BIGFILE TABLESPACE "TB_21761_MS104PDTLMD_DAT_00" DATAFILE
  '+SPDG0003/MDPRO130/DATAFILE/tb_21761_ms104pdtlmd_dat_00' SIZE 69793218560
  AUTOEXTEND ON NEXT 5368709120 MAXSIZE 102400M
  LOGGING ONLINE PERMANENT BLOCKSIZE 8192
  EXTENT MANAGEMENT LOCAL AUTOALLOCATE DEFAULT
 NOCOMPRESS  SEGMENT SPACE MANAGEMENT AUTO;


CREATE USER "MS104PDTLMD" IDENTIFIED BY "456prodcorp321$spomd"
      DEFAULT TABLESPACE "TB_21761_MS104PDTLMD_DAT_00"
      TEMPORARY TABLESPACE "TEMP";

grant CONNECT, resource, create trigger, create view, unlimited tablespace to MS104PDTLMD;

===================================================================================~
-EXEMPLO BOM
09/03/2018 - criar ainda
--LISTA DE HISTÓRICO
--DATA LAKE RFB 
--ver espaço da tablespace para ver se cabe o outro tema
TB_21761_MS104PDTLLH_DAT_00
--ok

CREATE BIGFILE TABLESPACE "TB_21761_MS104PDTLLH_DAT_00" DATAFILE
  '+SPDG0003/MDPRO130/DATAFILE/tb_21761_ms104pdtllh_dat_00' SIZE 69793218560
  AUTOEXTEND ON NEXT 5368709120 MAXSIZE 81920M
  LOGGING ONLINE PERMANENT BLOCKSIZE 8192
  EXTENT MANAGEMENT LOCAL AUTOALLOCATE DEFAULT
 NOCOMPRESS  SEGMENT SPACE MANAGEMENT AUTO;


CREATE USER "MS104PDTLLH" IDENTIFIED BY "456prodcorp321$spolh"
      DEFAULT TABLESPACE "TB_21761_MS104PDTLLH_DAT_00"
      TEMPORARY TABLESPACE "TEMP";

grant CONNECT, resource, create trigger, create view, unlimited tablespace to MS104PDTLLH;
===================================================================================~

DE ADNF PARA 
ADMADUANEIRO
TESTE_SOLANGE

grant select on ADNF.TESTE_SOLANGE to ADMADUANEIRO; 

===================================================================================~
19/03/2018 - feito
2018SS/0000233310
Css,
Esta demanda é uma Requisição de Serviço.
Por favor encaminhar para GMCDDFPUBDW.
                        
1. Dados do Gestor do Tema
1.1 Nome: Kátia Ribeiro Pereira
1.2 E-mail: katia.pereira@serpro.gov.br
1.3 Ramal:11) #61 8725
1.4 Celular: (61)9226-1290

2. Dados do Chefe do Desenvolvimento
2.1 Nome: Maurilio Chiuzini
2.2 E-mail: maurilio.chiuzini@serpro.gov.br
2.3 Ramal:(11) 1552
2.4 Celular de plantão: (11)99985-4879

3. Dados do Serviço
3.1 URC: SUNMF
3.2 Cliente Externo: RFB
3.3 Nome do Serviço: DW CND
3.4 Código do Serviço: 08148
3.5 Número CPS:
3.6 Qual Arquitetura do Serviço?
    ( ) Data Warehouse do Condomínio
    ( ) Data Warehouse do Condomínio Serpro
    (X) Data Warehouse Corporativo da RFB
    ( ) Data Warehouse Corporativo da STN
    ( ) Data Warehouse Corporativo do MJ

4.  Qual Ambiente?
    ( ) Desenvolvimento
    ( ) Carga
    (X) Homologação
    ( ) Treinamento
    ( ) Produção

5.  Script:

ALTER TABLE SCND.WF_SCND_CEMI SET INTERVAL ();

ALTER TABLE SCND.WF_SCND_CEMI ADD PARTITION PT_WFTR_REF_2018 VALUES LESS THAN (20190101) SEGMENT CREATION DEFERRED
TABLESPACE TB_08148_SCND_DAT_01;  

ALTER TABLE SCND.WF_SCND_CEMI SET INTERVAL (10000);

6. Qual o e-mail para recebimento de Log?

aparecido.silva@serpro.gov.br

--===================================================================================
19/03/2018 - feito
2018SS/0000233173
Css,
Esta demanda é uma Requisição de Serviço.
Por favor encaminhar para GMCDDFPUBDW.

1. Dados do Gestor do Tema
1.1 Nome: Kátia Ribeiro Pereira
1.2 E-mail: katia.pereira@serpro.gov.br
1.3 Ramal:11) #61 8725
1.4 Celular: (61)9226-1290

2. Dados do Chefe do Desenvolvimento
2.1 Nome: Maurilio Chiuzini
2.2 E-mail: maurilio.chiuzini@serpro.gov.br
2.3 Ramal:(11) 1552
2.4 Celular de plantão: (11)99985-4879

3. Dados do Serviço
3.1 URC: SUNMF
3.2 Cliente Externo: RFB
3.3 Nome do Serviço: DW CND
3.4 Código do Serviço: 08148
3.5 Número CPS:
3.6 Qual Arquitetura do Serviço?
    ( ) Data Warehouse do Condomínio
    ( ) Data Warehouse do Condomínio Serpro
    (X) Data Warehouse Corporativo da RFB
    ( ) Data Warehouse Corporativo da STN
    ( ) Data Warehouse Corporativo do MJ

4.  Qual Ambiente?
    ( ) Desenvolvimento
    ( ) Carga
    ( ) Homologação
    ( ) Treinamento
    (X) Produção

5.  Script:

ALTER TABLE SCND.WF_SCND_CEMI SET INTERVAL ();

ALTER TABLE SCND.WF_SCND_CEMI ADD PARTITION PT_WFTR_REF_2018 VALUES LESS THAN (20190101) SEGMENT CREATION DEFERRED
TABLESPACE TB_08148_SCND_DAT_00;  

ALTER TABLE SCND.WF_SCND_CEMI SET INTERVAL (10000);

6. Qual o e-mail para recebimento de Log?

aparecido.silva@serpro.gov.br


--============================================================
--feito em 21/03/2018
CREATE ROLE RL_FERRAMENTA_ADND;
GRANT RL_FERRAMENTA_ARRC TO ADMPRDH;

--==================================================================
--NÃO USAR ISTO AQUI ---
--USAR O SRVCTL -- com a equipe administração oracle ou o Albernaz na 
--nossa equipe.

%Colocar no cdora depois de testado.

%--criando um service name no metadados 
%Dbpro_21761_dwolap_mdpro130
%1- criando
%exec dbms_service.CREATE_SERVICE(SERVICE_NAME=>'Dbp_21761_dwolap_mdpro130', %%network_name=>'Dbp_21761_dwolap_mdpro130'); 

%2-startando.
%exec dbms_service.START_SERVICE('Dbp_21761_dwolap_mdpro130');

--======================================================================
--count agrupado por ano oracle 

select ANO, count(*) from
(select a11.ID_TIPO_CRIME  ID_TIPO_CRIME,
         a14.DS_TIPO_CRIME  DS_TIPO_CRIME,
          a11.ID_UF  ID_UF,
          a15.DS_UF  DS_UF,
          a11.ID_MUNICIPIO  ID_MUNICIPIO,
          a12.DS_MUNICIPIO  DS_MUNICIPIO,
          a11.ANO  ANO,
          a11.MES  MES,
          a13.DS_PERIODO  DS_PERIODO,
          sum(a11.QT_OCORRENCIA_PC)  PCQTDEOCORRNCIAS
  from        SNSP.WF_PC_OCORRENCIAS        a11
          join        SNSP.VW_MUNICIPIO        a12
            on         (a11.ID_MUNICIPIO = a12.ID_MUNICIPIO)
          join        SNSP.WD_PERIODO        a13
            on         (a11.ANO = a13.ANO and a11.MES = a13.MES)
          join        SNSP.WD_CATEGORIA   a14
            on         (a11.ID_TIPO_CRIME = a14.ID_TIPO_CRIME)
          join        SNSP.WD_UF        a15
            on         (a11.ID_UF = a15.ID_UF)
  where a11.ANO in (2004)
  group by  a11.ID_TIPO_CRIME,
          a14.DS_TIPO_CRIME,
          a11.ID_UF,
          a15.DS_UF,
          a11.ID_MUNICIPIO,
          a12.DS_MUNICIPIO,
          a11.ANO,
          a11.MES,
          a13.DS_PERIODO
) group by ANO;
--=====================================================================
--EUDES DO ORACLE QUE INFORMOU QUE ESTAVA EM 96% RENAINF - TRANSITO
aumentar tablespace RENAINF
TB_39900_RENAINF_DAT_01
+DFDG0002/car_39900_dwrenainf/whcar136/tb_39900_renainf_dat_01_456.dbf

ALTER TABLESPACE TB_39900_RENAINF_DAT_01 ADD DATAFILE '+DFDG0002/car_39900_dwrenainf/whcar136/tb_39900_renainf_dat_01_457.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_39900_RENAINF_DAT_01 ADD DATAFILE '+DFDG0002/car_39900_dwrenainf/whcar136/tb_39900_renainf_dat_01_458.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;
ALTER TABLESPACE TB_39900_RENAINF_DAT_01 ADD DATAFILE '+DFDG0002/car_39900_dwrenainf/whcar136/tb_39900_renainf_dat_01_459.dbf' SIZE 1024M AUTOEXTEND ON NEXT 512M MAXSIZE 32767M;

--==========================================================================
2018SS/0000372099

Demanda: Excluir arquivos - DW-icomex
Grupo responsável: GMCDDFPUBDW
Código do sistema: 36041

Favor remover todos os arquivos ".log" contido no diretório "/car_36041_dwaduana_tra/ods/". Ambiente de carga do dw-icomex.
Obrigado.

ANTES
[dwpub@dfcdexavbi0003-adm ods]$ ls *.log | wc -l
877

DEPOIS
[oracle@dfcdexavbi0003-adm ods]$ ls *.log | wc -l
ls: cannot access *.log: No such file or directory
0

--==========================================================================
2018SS/0000397276

Descrição: Por favor, encaminhar para equipe de FIREWALL de BRASÍLIA como requisição de serviço RS (GMSIDFFWL).
ABRINDO COMO INCIDENTE.

Senhores, à duas semanas que o fornecedor de banco de dados Teradata está acessando o appliance de fora do Serpro para o nosso Data Center, para fazer manutenções e está encontrando lentidão extrema. Por favor analisar com urgência, vez que está agendado para o próximo final de semana uma atualização de firmware do referido appliance. No momento após testes no dia de hoje 15/05/2018, persiste a lentidão.
 
 
Segue os dados do ip e portas tanto do nosso appliance  quanto dos ip origens.

APPLIANCE TERADTA SERPRO

o IP é o 161.148.236.50

 
As portas são:

 
80
	
TCP
	
Axeda http
	
Axeda Agent Web Server

443
	
TCP


Axeda https
	

Axeda Agent Web Server (SSL interface)

Axeda Gateway
	
162
	
UDP
	
xGate
	
Axeda Gateway

3011
	

TCP
	

xGate
	

Axeda Gateway

3030
	

TCP
	

xGate
	

Axeda Gateway (Deployment Utility)

3031
	

TCP
	

xGate
	

Axeda Gateway

 

IP ORIGEM DAS CONEXÕES.

 

Source
	

Source Host Type
	

Destination
	

Port/Protocol/Service List

Routing/Firewall Changes
	

Description
	

IP Address (Internal)

Agent IP Address *
(SWS or CMICs)
	

Teradata-SWS
	

From SWS to Internet

Internal and External Routing and Firewall Rules
	

Teradata ServiceConnect Server Farm
	

153.65.20.0/24 (preferred)

OR

all of these

153.65.20.101 (serviceconnect.teradata.com)
153.65.20.36 (scremote1.teradata.com)
153.65.20.170 (scremote2.teradata.com)
153.65.20.38 (scremote3.teradata.com)
153.65.20.39 (scremote4.teradata.com)
153.65.20.40 (scremote5.teradata.com)
153.65.20.41 (scremote6.teradata.com)

IPS and proxy server protections need to allow RAW socket connections on tcp443 to these hosts.  This is not browser-initiated traffic and default inspection rules may drop traffic to the scremoteX servers.  Whitelisting the agents is recommended even if you currently allow this traffic as global policies may change in the future and inadvertently disable ServiceConnect.
	

443/tcp

153.65.20.33
	

22/tcp
and/or
20/tcp
21/tcp
SSH to support SFTP
and/or
FTP (to support customer IDS/IPS)
FTP (to support customer IDS/IPS)

OPTIONAL (preferred)

Agent IP Address *
(SWS or CMICs)
	
Teradata-SWS
	
From SWS to Customer DNS Infrastructure

Customer DNS Server Address(es)

53/udp
53/tcp
	
DNS Services
	
[OPTIONAL Service - only at Customer Request]

Agent IP Address *
(SWS or CMICs)
	

Teradata-SWS
	

From SWS to Policy Server

Internal Routing and Firewall Rules
	
Policy Server

Customer Assigned Policy Server IP Address

8009/tcp
OR
Customer Selected Port
	
Gateway Agent to Policy Server Communication

[OPTIONAL Service - only at Customer Request]

Policy Server Administrative Workstation(s) / User networks

Policy Server Administrator Workstations
	

From Policy Server Admin Workstation(s) to Policy Server

Internal Routing and Firewall Rules
	
Policy Server
	
Customer Assigned Policy Server IP Address
	
8009/tcp
OR
Customer Selected Port
	
Administrative Workstation(s) to Policy Server - Application Access

Policy Server

Allow SMTP mail relay from the Policy Server to smtp relay server to generate notifications messages to Policy Server Admins and Approvers.
	
From Policy Server to smtp mail relay server

Internal Routing and Firewall Rules
	
SMTP Mail Relay Server

SMTP Mail relay host

25/tcp
SMTP
Policy Server to smtp mail relay server


*     For each site ID, the ServiceConnect agent resides on either an SWS or two CMICs depending on the configuration defined for the site.


**   Patch Download access (Row 5) should be allowed from the SWS even when the agent is installed on the CMICs.  The CMICs do not reserve disk space to stage patches.

--

lista-supop-seguranca-bsa@grupos.serpro.gov.br
--===============================================================================
Classificação a estudar para implantarmos no alter


ALTER SYSTEM KILL SESSION '1, 81';

SELECT dbms_metadata.get_ddl( 'PROCEDURE','KILL_SESSION') FROM DUAL;

--------------------------------------------------------------------------------------------------
--PARA RESOLVER QUESTÃO DO USER DO DESENVOLVIMENTO NÃO TER PERMISSÃO PARA MATAR SESSÕES COM KILL
--FONTE COLABORA POR ROSÂNGELA ORACLE -- QUE ORIENTOU-ME

--executei este aqui dentro do usuário. (ou no dwpub)
grant ALTER SYSTEM to SGPE; -- SÓ USEI ESTE POR ENQUANTO E TESTEI COM CONN DWPUB[SGPE]@WHDES135


--contudo se precisar de mais detalhes vá no link abaixo no colabora com todos os dados.

--testado por Cristiane.


--Complementando todo procedimento está mapeado no colabora:

https://colabora.supcd.serpro/home/oracle/notas-tecnicas/oracle-eliminacao-de-sessoes-de-banco-pelo-proprio-usuario/?searchterm=Elimina%C3%A7%C3%A3o%20de%20sess%C3%B5es%20de%20banco%20pelo%20pr%C3%B3prio%20usu%C3%A1rio

--------------------------------------------------------------------------------------------------
kill_job - matar impdp e expdp

SELECT owner_name, job_name, operation, job_mode, state
  FROM dba_datapump_jobs;


impdp $user/$passwordcar@whcar130 attach=SYS_IMPORT_FULL_09

STATUS - para ver o status do job
KILL_JOB - para matar o job

-----------------------------------------------------------------------------------
TESTANDO NOVAMENTE PARA VER SE PEGA A ATUALIZAÇÃO



