PUBLICANDO PARTIÇÃO UNICA 

PROC.WF_EPRO_ESTQ
PT_WF_EPRO_ESTQ_89 

SELECT '/opt/approtinas/pro_21761_dwcorp/MAINCONTROLM/INSERT.SH '  || table_owner || ' ' || table_name || ' partition ' || PARTITION_NAME || ' V_' || PARTITION_NAME || ' > /opt/approtinas/pro_21761_dwcorp/' || table_owner || '/' || table_name || '/insertV_' || PARTITION_NAME || '.nohup &'
FROM dba_tab_partitions where table_owner = 'PROC' 
-- AND PARTITION_NAME = 'PT_WF_EPRO_AFRA_201903'
and TABLE_NAME IN ('WF_EPRO_ESTQ');

dwpub - EXADATA>/opt/approtinas/pro_21761_dwcorp/MAINCONTROLM/INSERT.SH PROC WF_EPRO_ESTQ partition PT_WF_EPRO_ESTQ_89 V_PT_WF_EPRO_ESTQ_89 > /opt/approtinas/pro_21761_dwcorp/PROC/WF_EPRO_ESTQ/insertV_PT_WF_EPRO_ESTQ_89.nohup &
