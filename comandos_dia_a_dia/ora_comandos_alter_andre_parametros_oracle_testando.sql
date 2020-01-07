+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Consulta para verificar e gerar comandos em massa para alterar pctfree e compress de tabelas, 
tabelas particionadas e tabelas subparticionadas dos objetos do banco oracle - por André Magalhaes e Mário Marcos
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

select partition_name, pct_free, ini_trans, max_trans, COMPRESSION, COMPRESS_FOR from dba_tab_partitions
where table_name = 'WD_EECF_CONTA_EMP_N6_TESTE' and table_owner = 'EECF';

POR BANCO
select partition_name, pct_free, ini_trans, max_trans, COMPRESSION, COMPRESS_FOR from dba_tab_partitions
where table_owner = 'EECF';


------------TABELAS---------------------------------------

POR TABELA
select 'alter table ' || owner || '.' || table_name || ' move pctfree 1 compress for query high;' from dba_tables where table_name = 'WD_EECF_CONTA_EMP_N6_TESTE' and owner = 'EECF';

POR SCHEMA/USER
select 'alter table ' || owner || '.' || table_name || ' move pctfree 1 compress for query high;' from dba_tables where  owner = 'EECF';

obs: lembrete depois de move as partições, tabelas ou subpartições e houver indices por favor fazer REBUILD dos referidos indices.


-------------PARTIÇÕES------------------------------------

POR TABELA
select 'alter table ' || table_owner || '.' || table_name || ' move partition ' || partition_name || ' tablespace TB_08299_EECF_DAT_01 pctfree 1 compress for query high;' from dba_tab_partitions where table_name = 'WD_EECF_CONTA_EMP_N6_TESTE' and table_owner = 'EECF';

POR SCHEMA/USER
select 'alter table ' || table_owner || '.' || table_name || ' move partition ' || partition_name || ' tablespace TB_08299_EECF_DAT_01 pctfree 1 compress for query high;' from dba_tab_partitions where Table_owner = 'EECF';


obs: lembrete depois de move as partições, tabelas ou subpartições e houver indices por favor fazer REBUILD dos referidos indices.



--------------SUBPARTIÇÕES------------------------------

POR TABELA
select 'alter table ' || table_owner || '.' || table_name || ' move subpartition ' || subpartition_name || ' tablespace TB_08299_EECF_DAT_01 pctfree 1 compress for query high;' from dba_tab_subpartitions where table_name = 'WD_EECF_CONTA_EMP_N6_TESTE' and table_owner = 'EECF';

POR SCHEMA/USER
select 'alter table ' || table_owner || '.' || table_name || ' move subpartition ' || subpartition_name || ' tablespace TB_08299_EECF_DAT_01 pctfree 1 compress for query high;' from dba_tab_subpartitions where table_owner = 'EECF';



obs: lembrete depois de move as partições, tabelas ou subpartições e houver indices por favor fazer REBUILD dos referidos indices.
=================================================================================================================

