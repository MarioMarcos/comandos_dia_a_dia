-- SE PREFEIR USE O @PUBLICACAO.SQL DO ANDRÉ SOMENTE NO MODO SQLPLUS 
-- O DO ANDRÉ É MAIS OBJETIVO, MAS ESSE AQUI É MAIS COMPLETO.


-- RELATÓRIO DE PUBLICAÇÃO COMPLETO.

set lines 800
col job_name for a30
col owner for a10
col TABLE_NAME for a30
set verify off

select
DATAEXECUCAO
, TABLE_NAME
, JOB_NAME
, JOB_TYPE
, QTD_REG_CARGA
, QTD_REG_INSERT
, QTD_REG_PROD PROD_ANTES
, EXECUCOES
from
controle_publicacao
where
OWNER = 'IRPF'
and
job_type in (2, 10)
and
dataexecucao = '20190312'
order by
owner,table_name, job_name;


=---MOSTRA A MESMA PUBLICAÇÃO COM O TEMPO DE DURAÇÃO DA INSERÇÃO DOS DADOS NAS MESMAS TABELAS >>> MUDE O TEMA E A DATA=====================================
select DATAEXECUCAO, OWNER, TABLE_NAME, sum(QTD_REG_INSERT) regs_inseridos,round(sum((data_end-data_start)*1440),1) minutos
from controle_publicacao
where owner = 'EECF'
and job_type = 2
and dataexecucao = '20190506'
group by DATAEXECUCAO, OWNER, TABLE_NAME
/

07768

--==RELATORIO PUBLICACÃO POR TABELA, POR DATA =====DAR PARA VER QUANDO A TABELA FOI PUBLICADO PELA ULTIMA VEZ===================================================
-- publicaçao por tabela e por data se for o caso.
set lines 800
col job_name for a35
col owner for a10
col TABLE_NAME for a35
col JOB_NAME for a35
set verify off

select DATAEXECUCAO, 
TABLE_NAME, 
JOB_NAME, 
QTD_REG_PROD, 
QTD_REG_CARGA, 
QTD_REG_INSERT, 
QTD_REG_UPDATE,
QTD_REG_REJECT,
DATA_START,
DATA_END
from controle_publicacao
where owner in ('EECF')
and job_type = 2
and to_date(dataexecucao,'yyyymmdd') >= to_date('20190506','yyyymmdd')
--and TABLE_NAME = 'WF_ANCO_DECA'
order by owner,table_name, job_name, DATAEXECUCAO;



