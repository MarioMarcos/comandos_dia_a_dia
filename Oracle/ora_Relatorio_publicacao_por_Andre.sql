ACCEPT OWN CHAR PROMPT 'Owner  :>';
ACCEPT DAT CHAR PROMPT 'DataExec  :>';

col table_name for a30
col job_name for a30

SELECT TABLE_NAME, JOB_NAME, QTD_REG_PROD, QTD_REG_CARGA, QTD_REG_INSERT, (QTD_REG_CARGA-QTD_REG_INSERT) AS DIF
FROM controle_publicacao 
where owner = upper('&OWN') AND DATAEXECUCAO = ('&DAT') and job_type = 2
order by 1,2;