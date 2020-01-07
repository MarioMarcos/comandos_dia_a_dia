CREATE DATABASE "dbpro_33393_dwtg_2018_cop" FROM "STN" AS
	PERMANENT = 1500000000000,
	SPOOL = 0,
	TEMPORARY = 0,
	ACCOUNT = 'DBC',
	NO FALLBACK,
	NO BEFORE JOURNAL,
	NO AFTER JOURNAL;
--================================	

CREATE USER "pc_33393_dwtg_car_tmp" FROM "dbcar_33393_dwtg_tmp" AS
	PASSWORD  =  "456pctrprod321bsa",
	PERMANENT = 0,
	SPOOL = 0,
	TEMPORARY = 0,
	DEFAULT DATABASE  =  "dbcar_33393_dwtg_tmp",
	COLLATION  =  HOST,
	ACCOUNT = '$M',
	NO FALLBACK,
	NO BEFORE JOURNAL,
	NO AFTER JOURNAL,
	TIME ZONE  =  NULL,
	DATEFORM  =  INTEGERDATE,
	DEFAULT CHARACTER SET LATIN,
	DEFAULT ROLE  =  ALL;

--=======================================

CREATE PROFILE "POWERCENTER" AS
SPOOL=1048576000
TEMPORARY=0
ACCOUNT=NULL
DEFAULT DATABASE=NULL
PASSWORD = (EXPIRE=NULL,MINCHAR=NULL,MAXCHAR=NULL,MAXLOGONATTEMPTS=NULL,LOCKEDUSEREXPIRE=NULL,REUSE=NULL,DIGITS=NULL,RESTRICTWORDS=NULL,SPECCHAR=NULL);

--=======================================
usuario comum

CREATE USER "Debora" FROM "dwpub"
AS PERM = 0
PASSWORD = "********"
SPOOL = 0
TEMPORARY = 0
ACCOUNT = ('DBC')
STARTUP = ''
DEFAULT DATABASE = "dbc"
NO FALLBACK
NO BEFORE JOURNAL
NO AFTER JOURNAL
COLLATION = HOST
DEFAULT CHARACTER SET LATIN
DATEFORM=INTEGERDATE
TIME ZONE=NULL
PROFILE="ADMINISTRAÇÃO"

--=========================================================
-ARC - RESTORE DE DICIONARIO

(ms_33393_dwtg_pro_2018) (FROM (ms_33393_dwtg_pro)),
(dbpro_33393_dwtg_2018_cop) (FROM (DBPRO_33393_DWTG)),

(dbdes_33393_DWTG) (FROM (dbd_33393_DWTG)),
--=======================================================================
BANCO NOVO FAZER ISSO AQUI SE NÃO FOR RESTORE OU COPY FULL

BEGIN QUERY LOGGING WITH USECOUNT ON dbpro_33393_dwtg_2018_cop;

--=======================================================================
--RODAR COLETA DE ESTATÍSTICA DE COPIA DE BANCO AI, "cdtd" VAI SOMENTE COPIAR DE UM BANCO COM AS MESMAS CARACTERÍSTICAS E PODE RODAR NO ON-LINE, E DEPOIS RODE UMA COLETA SUMMARY DAS TABELAS DE TODAS AS TABELAS EXISTENTES.
-----------------------
--COLETA COPIA DE BANCO
-----------------------
select 
'COLLECT STATISTICS DBPRO_33393_DWTG_2018_COP.' -- BANCO DESTINO
||Trim(Tablename)||     -- TABELA DESTINO
' from DBPRO_33393_DWTG.'  -- BANCO ORIGEM
||Trim(Tablename)||';'   -- TABELA ORIGEM COM DADOS 
from
dbc.tablesv
where 
databasename = 'DBPRO_33393_DWTG';
-------------------
--COLETA SUMMARY
-------------------
SELECT DISTINCT 'COLLECT SUMMARY STATS ON ' || TRIM(T1.DatabaseName) ||'.'|| TRIM(T1.TABLENAME) ||';' (title '')
FROM DBC.TABLESX T1
INNER JOIN DBC.STATSV T2 ON (T1.DATABASENAME = T2.DATABASENAME AND T1.TABLENAME = T2.TABLENAME)
WHERE T1.DATABASENAME = 'DBPRO_33393_DWTG' AND T1.TABLEKIND NOT IN ('P','M','V');

obs: se você restaurar um banco do backup usando copy (ARC) para um novo BD nada disso é necessário.

--=======================================================================
-- MUDAR USUÁRIO DE UM BANCO PARA O OUTRO TEMPORARIAMENTE OU DEFINITIVAMENTE.
-- ISSO AQUI MUDAR O USÁRIO ENTER BANCOS.
-- POR EXEMPLO SE ELE ESTIVER NO DBP_33393_DWTG VOCÊ PODE MUDAR
-- ELE PARA O DBH_33393_DWTG ou para qualquer banco.
-- isso leva os privilégios com o usário. pelo esquema do SERPRO.

give MAXTERA to STN
give ms_33393_dwtg_hom to dbhom_33393_dwtg
give D12009415353 to dbdes_33393_dwtg

obs: O GIVE leva todos os objetos que estão abaixo da sua hierarquia. e move para o outro. Testado por Mário Marcos.

--=======================================================================
--criando uma role.
CREATE ROLE "RL_DBDES_33393_DWTG_SEL"
--=======================================================================

Verificar tamanho do banco rapidamente 

database dbpro_33393_dwtg_audit;

select  tablename
 ,sum(currentperm)/1024/1024 as Tamanho_em_MB
, sum(currentperm)/1024/1024/1024 as Tamanho_em_GB
 from dbc.Tablesizev
 where  databasename = 'dbpro_33393_dwtg_audit'
order by 1
group  by ROLLUP ( 1);


--=====================================================
--coleta estatística por tabela completa
SELECT 'COLLECT STATISTICS COLUMN ('||ColumnName||') ON DBPRO_33393_DWTG.WF_LANCAMENTO_EP01_NEW;'
     FROM DBC.StatsV
     WHERE ColumnName IS NOT NULL
        AND DatabaseName = 'DBPRO_33393_DWTG'
        AND TableName = 'WF_LANCAMENTO_EP01';

--=====================================================

