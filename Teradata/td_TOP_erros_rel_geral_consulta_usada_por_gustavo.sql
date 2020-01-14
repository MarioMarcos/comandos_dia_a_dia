--CONSULTA RELATORIOS COM ERROS ESPECÍFICOS E DEMAIS INFORMAÇÕES NO DBQL
lock row for access
SELECT a.SessionID
        ,a.USERNAME  
        ,a.StartTime
        ,a.FirstRespTime
        --,a.FirstRespTime - a.StartTime as duration
        ,((a.firstresptime - a.firststeptime) HOUR(4) TO SECOND(6)) AS ExecutionTime
        ,a.SpoolUsage
        ,a.AMPCPUTime AS SumCPU
        ,a.MaxAmpCPUTime * (HASHAMP()+1)  /*no. of Amps*/ AS ImpactCPU
        ,ErrorCode
        ,errorText
        ,a.StatementType
        --,a.queryBand
        ,TRIM(REGEXP_SUBSTR(a.queryBand,'[^;]+',3,4)) as username_qry
        ,TRIM(REGEXP_SUBSTR(a.queryBand,'[^;]+',4,5)) as report_guid
        ,TRIM(REGEXP_SUBSTR(a.queryBand,'[^;]+',5,6)) as report_name
        ,TRIM(REGEXP_SUBSTR(a.queryBand,'[^;]+',6,7)) as job_guid
        ,CASE WHEN s.sqltextinfo IS NOT NULL OR s.sqltextinfo =  ' '
            THEN  s.SQLTextInfo||';'
            ELSE  a.querytext||';'   End AS QryText
 FROM DBC.DBQLogTbl a
 LEFT OUTER JOIN (SELECT Procid, Queryid
                        --, logdate
                        ,SUBSTR(sqltextinfo,1,150000) AS sqltextinfo 
                        FROM  DBC.DBQLSQLTbl  s -- pdcrinfo.DBQLSQLTbl_hst
                        WHERE CollectTimeStamp(date) >= '2019/04/03'
                              AND sqlrowno = 1) AS s
   ON  s.ProcID    = a.ProcID
   AND  s.QueryID  = a.QueryID
 WHERE  
    a.StatementType = 'Select'
	AND a.starttime (DATE) >= '2019/04/03'
     AND a.SessionID = '3,534,047'
    --AND ErrorCode = '3,156'
    --AND job_guid = 'job_GUID=10737'
 ORDER BY ImpactCPU DESC;
