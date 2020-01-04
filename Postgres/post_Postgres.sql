-- MÉTRICAS NÃO DEVEM FICAR NO GROUP BY NO SQL -- POR ANDRÉ MAGALHÃES

select 
from
where
group by 
having
order by

--1 - EXECUTAR SCRIPT MAIS RÁPIDO DENTRO DO S.O e os arquivos sql tem que estar na pasta=====================


nohup psql -U postgres -d Dbc_06818_Dwcorporativo -f 2016-12-28_tiat_tipo_atividade.sql > LOG_CARGA20170104.LOG 2>&1 & 			----->>>>>> CARGA

nohup psql -U postgres -d Dbp_06818_DwCorporativo -f 2016-12-28_tiat_tipo_atividade.sql > LOG_PROD20170104.LOG 2>&1 &  	----->>>>>> PRODUÇÃO

nohup psql -U postgres -d Dbd_06818_Dwcorporativo -f vw_info_contratos_empregado_DEV.sql > LOGERICA20160107_DEV1.LOG 2>&1 & ----->>>>>> DESENVOLVIMENTO

nohup psql -U postgres -d Dbh_06818_DwCorporativo -f fct_relacional_homologacao.sql > LOGHOM20160226.LOG 2>&1 & ----->>>>>> HOMOLOGAÇÃO


--2 - CADASTRA NO PG_HBA=========================================================================
-- ALTERAR OU INCLUIR USUÁRIOS E IP NO PG_HBA.CONF

OBS: SOMENTE USAREI O RELOAD SE EU ALTERAR OS ARQUIVOS: PG_HBA.CONF, POSTGRESQL.CONF - por ronaldo
[postgres@dfcdmvm0035 ~]$ pg_ctl reload -D /opt/dbfiles/postgresql/9.4/
o resultado se positivo será esse.
server signaled
--3 - ============================================================================================
       ou \l+ para listar todos os bancos.	
####################
### Comandos básicos no Postgres:
\! pwd = é aonde o seu log vai estar 
\? : Ajuda, mostra as formas de usar os comandos internos do "psql"
\l : Listar bancos de dados
\c [nome] : Conectar-se a um banco "nome"
\c - [usuario] : Trocar usuário no banco para "usuario"
\q : Sair do "psql"
\i [script] : Executa o "script" - EXEMPLO \i /tmp/mario.sql
\! [comando] : Executa "comando" na linha de comando do Sistema Operacional.
\o [arquivo] : Gerar spool "arquivo". Finalizar com um "\o" sem argumento (análogo a um "spool off")
\dt - tabelas genéricas
\dn - schemas por banco
\db  = lista tablespace
\dg = lista roles 
\di = lista index
\dv =  lista views
\dt nomedoesquema.* = para listar tabelas por esquema

--===lista todos os schemas do banco postgres - TESTADO========================================
 select nspname from pg_catalog.pg_namespace;

--======CADASTRO DE USUÁRIOS==================================================================================
 CREATE USER "00717624188" WITH PASSWORD 'JtUQHjwDh8oRQ';
 CREATE USER "00368100375" WITH PASSWORD 'N54WL9HLfKxTI';
 CREATE USER "04817003669" WITH PASSWORD '5NPa1MFBTW6cE';
 CREATE USER "03323620941" WITH PASSWORD 'eYodfLbYi2cW6';
 CREATE USER "01218493178" WITH PASSWORD 'eYodfLbYi2cW6';
  
grant usr_dwcorp to "00717624188";
grant usr_dwcorp to "00368100375";
grant usr_dwcorp to "04817003669";
grant usr_dwcorp to "03323620941";
grant usr_dwcorp to "01218493178";

---=================================================================================================================
-- PARA FAZER DUMP PEGUE O ARQUIVO DUMP E RESTORE DE POSTGRES.SQL NAS PASTA JATAI /POSTGRES

--===ALTERAR SENHA DE USUÁRIO====
alter user "00368100375" with password 'w3VFspuleQJpY';

--=========================
MAQUINA BI CORPORATIVO
dfcdmvm0038 - 161.148.236.31

desempenho-5d-homologacao
--===pasta que contém os scripts.
cd /opt/approtinas/p_06818_dwcorporativo/

--=====================================================================================
no postgres
CREATE ROLE usr_dircl_c LOGIN
  ENCRYPTED PASSWORD 'md5a8c89c18744c210a3b8a0a9a8bcc81d3'
  NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
GRANT dbc_06818_dwcorporativo TO usr_dircl_c;

--=====================================================================================

Informational
  (options: S = show system objects, + = additional detail)
  \d[S+]                 list tables, views, and sequences
  \d[S+]  NAME           describe table, view, sequence, or index
  \da[S]  [PATTERN]      list aggregates
  \db[+]  [PATTERN]      list tablespaces
  \dc[S+] [PATTERN]      list conversions
  \dC[+]  [PATTERN]      list casts
  \dd[S]  [PATTERN]      show object descriptions not displayed elsewhere
  \ddp    [PATTERN]      list default privileges
  \dD[S+] [PATTERN]      list domains
  \det[+] [PATTERN]      list foreign tables
  \des[+] [PATTERN]      list foreign servers
  \deu[+] [PATTERN]      list user mappings
  \dew[+] [PATTERN]      list foreign-data wrappers
  \df[antw][S+] [PATRN]  list [only agg/normal/trigger/window] functions
  \dF[+]  [PATTERN]      list text search configurations
  \dFd[+] [PATTERN]      list text search dictionaries
  \dFp[+] [PATTERN]      list text search parsers
  \dFt[+] [PATTERN]      list text search templates
  \dg[+]  [PATTERN]      list roles
  \di[S+] [PATTERN]      list indexes
  \dl                    list large objects, same as \lo_list
  \dL[S+] [PATTERN]      list procedural languages
  \dm[S+] [PATTERN]      list materialized views
  \dn[S+] [PATTERN]      list schemas
  \do[S]  [PATTERN]      list operators
  \dO[S+] [PATTERN]      list collations
  \dp     [PATTERN]      list table, view, and sequence access privileges
  \drds [PATRN1 [PATRN2]] list per-database role settings
  \ds[S+] [PATTERN]      list sequences
  \dt[S+] [PATTERN]      list tables
  \dT[S+] [PATTERN]      list data types
  \du[+]  [PATTERN]      list roles
  \dv[S+] [PATTERN]      list views
  \dE[S+] [PATTERN]      list foreign tables
  \dx[+]  [PATTERN]      list extensions
  \dy     [PATTERN]      list event triggers
  \l[+]   [PATTERN]      list databases
  \sf[+] FUNCNAME        show a functions definition
  \z      [PATTERN]      same as \dp


--GERAR DDL DE OBJETOS - NO CASO DO EXEMPLO FOI DE UMA VIEW ====================================================================
 pg_dump -U postgres -d Dbp_06818_DwCorporativo -t dides.vw_proj_projeto --schema-only > dides_vw_proj_projeto.sql 2>&1 &


--============================================================================================================================
PG_HBA.CONF
No desenvolvimento

161.148.239.33
s: dwpub*b06

sudo su postgres

/opt/dbfiles/postgres/9.5/d_06818_dwcorporativo

vi pg_hba.conf

alterar o arquivo colocando o número do ticket comentado e 
edite colocando as linhas conforme exemplo:


### Atendimento da RS 2016RS/000034518 e 2016RS/000271604
host "Dbd_06818_Dwcorporativo" 22363122534    10.32.1.71/32     md5

--==========================================================================================================================
salve e feche 

e execute esse comando abaixo .

[postgres@dfcdmvm0035 ~]$ /opt/programas/postgres/9.5/bin/pg_ctl -D /opt/dbfiles/postgres/9.5/d_06818_dwcorporativo reload

o resultado se positivo será esse.
server signlad

--============================================================================================================================



