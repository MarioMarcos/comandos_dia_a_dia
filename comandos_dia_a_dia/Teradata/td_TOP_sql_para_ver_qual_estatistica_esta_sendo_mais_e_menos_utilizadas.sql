----------------------------------------------------------------------------
--AUDITORIA DOS RELATÓRIOS COM USUÁRIO MICROSTRATEGY
----------------------------------------------------------------------------
--CONSULTA PARA ACHAR SQL DE RELATÓRIO MICROSTRATREGY NO BANCO TERADATA
--USAR O ASSISTENT, POIS O VISUAL STUDIO ESTÁ COM BUG NA COLUNA SQLTEXTINFO
SÓ RODA PERFEITA NO ASSISTENT, POIS NO VISUAL STUDIO UMA COLUNA TRUNCA A QUE TEM OS SQL, POR ISSO USE O ASSISTENT PARA ESTA CONSULTA

lock row for access
select
starttime, sessionid, A.SqlTextInfo, NumSteps, clientaddr, username, NumResultRows, ErrorCode, ErrorText, AbortFlag, SpoolUsage, WDName, defaultdatabase, rtrim(queryband) as dados_relatorio_queryband, REGEXP_SUBSTR(QueryBand,'[^;]+',5,6) 

FROM DBC.DBQLSQLTBL A JOIN DBC.DBQLOGTBL B
ON A.PROCID = B.PROCID AND A.QUERYID = B.QUERYID

where B.username = 'MS_33393_DWTG_PRO' 
--and REGEXP_SUBSTR(QueryBand,'[^;]+',5,6) = 'report_name=Dívida'
--and A.SqlTextInfo  LIKE '%WV_MES_COM_NA%'

ORDER BY 1;

OUTRAS OPÇÕES PARA A CLAÚSULA WHERE

Contas Correntes Inválidos

--queryband like '%683840C111E6D8E800100080521E33A3%' 
--por nome do relatório 
--AND A.SQLTEXTINFO LIKE '%WV_MES_COM_NA%'
--por Job Guid 
--and queryband like '%2065%'
--por data específica
--SUBSTR (CAST (starttime AS VARCHAR(19)) ,1,10) = '2018-06-06'
--por intervalo de data
--and starttime(date) Between date-30 and date
--select * from dbc.qrylogV where querytext is not null;


----------------------------------------------------------------------
-- AUDITORIA DAS TABELAS, geral, por cpf, delete e por tabela
----------------------------------------------------------------------
Esse aqui é para saber quem apagou algum objeto no dia indicado 
na tabela e o cpf ou usuário.

  SELECT SQLTEXTINFO, CLIENTID, APPID, CLIENTADDR, STATEMENTTYPE, USERNAME, STATEMENTGROUP, PROFILENAME, WDNAME
  FROM DBC.DBQLSQLTBL A
  JOIN DBQLOGTBL B ON A.PROCID = B.PROCID
  AND A.QUERYID = B.QUERYID
  AND A.ZONEID = B.ZONEID
  WHERE TO_CHAR(B.STARTTIME,'DD/MM/YYYY') = '19/12/2018'
  AND B.CLIENTID IN ('DBC')
  AND B.STATEMENTTYPE = 'SELECT'
--  AND B.STATEMENTTYPE = 'DELETE'
--  AND SQLTEXTINFO LIKE '%WD_DOC_NE%'
  ;


----------------------------------------------------------------------
-- AUDITORIA DAS TABELAS, geral, por drop e por tabela
----------------------------------------------------------------------


-- AUDITORIA DAS TABELAS
  SELECT SQLTEXTINFO, STARTTIME, CLIENTID, APPID, CLIENTADDR, STATEMENTTYPE, USERNAME, STATEMENTGROUP, PROFILENAME, WDNAME
  FROM DBC.DBQLSQLTBL A
  JOIN DBQLOGTBL B ON A.PROCID = B.PROCID
  AND A.QUERYID = B.QUERYID
  AND A.ZONEID = B.ZONEID
  --WHERE TO_CHAR(B.STARTTIME,'DD/MM/YYYY') = '27/07/2018'
  --AND B.CLIENTID IN ('00465033318')
  AND B.STATEMENTTYPE like '%SELECT%'
  AND SQLTEXTINFO LIKE '%WA_CONTROLE_ETC%'
  ;
  
----------------------------------------------------------------------
--FIM
----------------------------------------------------------------------
lock row for access
select
starttime, sessionid, A.SqlTextInfo, NumSteps, clientaddr, username, NumResultRows, ErrorCode, ErrorText, AbortFlag, SpoolUsage, WDName, defaultdatabase, rtrim(queryband) as dados_relatorio_queryband, REGEXP_SUBSTR(QueryBand,'[^;]+',5,6) 

FROM DBC.DBQLSQLTBL A JOIN DBC.DBQLOGTBL B
ON A.PROCID = B.PROCID AND A.QUERYID = B.QUERYID

where B.username = 'DBC', 
--and REGEXP_SUBSTR(QueryBand,'[^;]+',5,6) = 'report_name=Dívida'
--and A.SqlTextInfo  LIKE '%WV_MES_COM_NA%'
a.sessionid = '2821749'
ORDER BY 1;

---------------------------------------------------------------------

Mario, Segue count geral com base nos horarios de execução. Por Débora Teradata - "POR PASSOS".

SELECT COUNT (*)
FROM DBC.QRYLOG
WHERE STARTTIME BETWEEN '2018-12-21 09:01:00' AND  '2018-12-21 10:01:00'
AND USERNAME LIKE 'MS%'

RESULTADO PASSOS = 1.564 
++++

SELECT COUNT (*)
FROM DBC.QRYLOG
WHERE STARTTIME BETWEEN '2018-11-18 12:43:00' AND  '2018-11-18 13:43:00'
AND USERNAME LIKE 'MS%'

RESULTADO PASSOS = 3.130

------------------------------------------------------------------
--Esse aqui é SOMENTE Claudusulas SELECT e usuários específicos por intervalo de dias 

SELECT COUNT (*)
FROM DBC.QRYLOG
WHERE COLLECTTIMESTAMP (DATE) = DATE
AND STATEMENTTYPE LIKE '%SELECT%'
AND USERNAME IN ('MS_33393_DWTG_PRO' , 'MS_33393_DWTG_PRO_VIP' )
AND STARTTIME BETWEEN '2018-11-20 08:00:00' AND  '2018-11-20 17:00:00'

10.440

abaixo está o mesmo comando só que no banco histórico para comparativo.

SELECT COUNT (*)
FROM dbpro_33393_dwtg_audit.AUDITQLLogTbl
WHERE COLLECTTIMESTAMP (DATE) = '2018-11-13'
AND STATEMENTTYPE LIKE '%SELECT%'
AND USERNAME IN ('MS_33393_DWTG_PRO' , 'MS_33393_DWTG_PRO_VIP' )
AND STARTTIME BETWEEN '2018-11-13 08:00:00' AND  '2018-11-13 17:00:00'

11.465

------------------------------------------------------------------
--RASCUNHO 12/12/2018
SELECT COUNT (*)
FROM DBC.QRYLOG
WHERE COLLECTTIMESTAMP (DATE) = DATE
AND STATEMENTTYPE LIKE '%SELECT%'
AND USERNAME IN ('MS_33393_DWTG_PRO' , 'MS_33393_DWTG_PRO_VIP', 'MS_33393_DWTG_PRO_2018' )
AND STARTTIME BETWEEN '2018-12-12 07:00:00' AND  '2018-12-12 08:00:00'



------------------------------------------------------------------
--RELATÓRIO TOTAL POR DIA E POR USUÁRIO - SOMENTE SELECTS  12/12/2018
SELECT a.USERNAME  
        ,a.starttime (DATE)
        --,TRIM(REGEXP_SUBSTR(a.queryBand,'[^;]+',3,4)) as username_qry
        ,count(*)
 FROM DBC.DBQLogTbl a
 WHERE 
    a.StatementType = 'Select'
    AND a.starttime (DATE) >= '2018/12/07' --and a.starttime (DATE) <= '2019/01/30'
    AND a.USERNAME = 'MS_33393_DWTG_PRO_2018'
    --AND abortflag = 'T'
    --AND NUMRESULTROWS >= 1 
    GROUP BY 1,2--,3
    ORDER BY 1,2;




