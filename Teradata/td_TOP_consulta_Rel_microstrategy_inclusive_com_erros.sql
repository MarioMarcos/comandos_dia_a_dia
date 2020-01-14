--------------------------------------------------------------------------
16/01/2019 - CONSULTA RELATORIOS MICROSTRATEGY PRO e VIP de producao
POR DATA 5 DIAS ATRÁS DA DATA ATUAL, INCLUSIVE POR ERROS

obs: melhorar para colocar total por dia, verificar possibilidade depois.

---------------------------------------------------------------------------
lock row for access 
--
SELECT
TO_CHAR(D.STARTTIME,'DD/MM/YYYY')  as datainicial
, USERNAME
, count(*) as TOTAL
, sum(case when (TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',1,2)) = 'project_name=TESOUROGERENCIAL') then 1 else 0 end) as relatorios_executados
-- , (sum(case when (TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',1,2)) = 'project_name=TESOUROGERENCIAL') then 1 else 0 end)/count(distinct TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',3,4)))) as rel_media_user
, count(distinct TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',3,4))) as qtd_usuarios
, count(distinct TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',5,6))) as qtd_relatorios
, max(spoolusage)/1024/1024 as "Spool_Maximo (MB)"
-- ,sum(CASE WHEN  errorcode <> 0 THEN 1 ELSE 0 END) AS comErro -- remover warning
,sum(CASE WHEN  errorcode <> 0 and ErrorText not like 'Warning%' THEN 1 ELSE 0 END) AS comErro
,sum(CASE WHEN  errorcode = 3156 THEN 1 ELSE 0 END) AS TDWMKilled
,sum(CASE WHEN  errorcode = 3134 THEN 1 ELSE 0 END) AS DBAAborted
,sum(CASE WHEN  errorcode = 3110 THEN 1 ELSE 0 END) AS UserAborted
,sum(CASE WHEN  errorcode = 2646 THEN 1 ELSE 0 END) AS NoMoreSpool

,sum(CASE WHEN  errorcode = 3149 and ErrorText not like 'Warning%' THEN 1 ELSE 0 END) AS FiltroAbort
,sum(CASE WHEN  errorcode = 3149 and ErrorText like '%QTD DE LINHAS EXCEDIDA%' THEN 1 ELSE 0 END) AS FiltroAbortLinh
,sum(CASE WHEN  errorcode = 3149 and ErrorText like '%TEMPO DE EXEC EXCEDIDO%' THEN 1 ELSE 0 END) AS FiltroAbortTemp
,sum(CASE WHEN  errorcode = 3149 and ErrorText like 'Warning%' THEN 1 ELSE 0 END) AS FiltroWarning
--

from dbc.qrylog d inner join dbc.qrylogsql s on (d.procid=s.procid and d.queryid=s.queryid)
 --from dbpro_33393_dwtg_audit.qrylog d inner join dbpro_33393_dwtg_audit.qrylogsql s on (d.procid=s.procid and d.queryid=s.queryid)
-- where SUBSTR (CAST (starttime AS VARCHAR(19)) ,1,10) >= '2018-12-05'
where d.COLLECTTIMESTAMP (DATE) >= DATE-4
and username in ('MS_33393_DWTG_PRO','MS_33393_DWTG_PRO_VIP')
-- and queryband is not null
-- and TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',1,2)) = 'project_name=TESOUROGERENCIAL'
--GROUP BY SUBSTR (CAST (starttime AS VARCHAR(19)) ,1,13), username
GROUP BY 
TO_CHAR(D.STARTTIME,'DD/MM/YYYY'), 
--(EXTRACT(HOUR FRTO_CHAR(D.STARTTIME,'DD/MM/YYYY') AS DATA,OM d.StartTime)), 
username
ORDER BY 1, 2


------------------------------------------------------------------------------------
03/01/2019 - por Andre Magalhaes
CONSULTA RELATORIOS GERAL de producao
POR DATA 5 DIAS ATRÁS DA DATA ATUAL, INCLUSIVE POR ERROS E MAIS DADOS

obs: melhorar para colocar total por dia, verificar possibilidade depois.

--------------------------------------------------------------------------

lock row for access 
--
SELECT
TO_CHAR(D.STARTTIME,'DD/MM/YYYY')  as datainicial
, USERNAME
, count(*) as TOTAL
, sum(case when (TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',1,2)) = 'project_name=TESOUROGERENCIAL') then 1 else 0 end) as relatorios_executados
-- , (sum(case when (TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',1,2)) = 'project_name=TESOUROGERENCIAL') then 1 else 0 end)/count(distinct TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',3,4)))) as rel_media_user
, count(distinct TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',3,4))) as qtd_usuarios
, count(distinct TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',5,6))) as qtd_relatorios
, min(ELAPSEDTIME) as Tempo_Minimo
, avg(ELAPSEDTIME) as Tempo_Medio
, max(ELAPSEDTIME) as Tempo_Maximo
, min(numresultrows) as Linhas_Minimo
, avg(numresultrows) as Linhas_Medio
, max(numresultrows) as Linhas_Maximo
, max(spoolusage)/1024/1024 as "Spool_Maximo (MB)"
-- ,sum(CASE WHEN  errorcode <> 0 THEN 1 ELSE 0 END) AS comErro -- remover warning
,sum(CASE WHEN  errorcode <> 0 and ErrorText not like 'Warning%' THEN 1 ELSE 0 END) AS comErro
,sum(CASE WHEN  errorcode = 3156 THEN 1 ELSE 0 END) AS TDWMKilled
,sum(CASE WHEN  errorcode = 3134 THEN 1 ELSE 0 END) AS DBAAborted
,sum(CASE WHEN  errorcode = 3110 THEN 1 ELSE 0 END) AS UserAborted
,sum(CASE WHEN  errorcode = 2646 THEN 1 ELSE 0 END) AS NoMoreSpool
,sum(CASE WHEN  errorcode IN ( 2580 , 2635 , 2634 , 2583 , 2652 , 7547 ,
        2594 , 2636 , 5728 , 2570 , 2636 , 2550 , 2572 , 2738 , 2802 ,
        2801 , 3604 , 2574 , 2803 , 5343 , 2571 , 2575 , 2641 , 7449 ,
        7545 ) THEN 1 ELSE 0 END) AS "Load/FexpError"
,sum(CASE WHEN  errorcode = 2644 THEN 1 ELSE 0 END) AS NoMoreRoominDB
,sum(CASE WHEN  errorcode = 7435 THEN 1 ELSE 0 END) AS NoMoreRoominTemp
,sum(CASE WHEN  errorcode = 3150 THEN 1 ELSE 0 END) AS MaxRowsLimit
,sum(CASE WHEN  errorcode = 2631 THEN 1 ELSE 0 END) AS DeadlockAbort
,sum(CASE WHEN  errorcode IN ( 2621 , 2620 , 3996 , 2618 , 2665 , 2666 ,
        6760 , 2665 , 2662 , 3669 , 2616 , 7453 , 2617 , 2513 , 2650 ,
        2663 , 7452 , 7595 , 7596 , 7504 , 2603 , 2614 , 2619 , 
        2667 ) THEN 1 ELSE 0 END) AS "BadChar/NumOverflow/Date/SubstrIssues"
,sum(CASE WHEN  errorcode IN ( 3541 , 3552 , 3631 , 5337 , 5847 , 2640 ,
        3803 , 3807 ) THEN 1 ELSE 0 END) AS DatabaseTableModifErrors
,sum(CASE WHEN  errorcode = 7423 THEN 1 ELSE 0 END) AS LockIssue
,sum(CASE WHEN  errorcode = 3149 and ErrorText not like 'Warning%' THEN 1 ELSE 0 END) AS FiltroAbort
,sum(CASE WHEN  errorcode = 3149 and ErrorText like '%QTD DE LINHAS EXCEDIDA%' THEN 1 ELSE 0 END) AS FiltroAbortLinh
,sum(CASE WHEN  errorcode = 3149 and ErrorText like '%TEMPO DE EXEC EXCEDIDO%' THEN 1 ELSE 0 END) AS FiltroAbortTemp
,sum(CASE WHEN  errorcode = 3149 and ErrorText like 'Warning%' THEN 1 ELSE 0 END) AS FiltroWarning
--

from dbc.qrylog d inner join dbc.qrylogsql s on (d.procid=s.procid and d.queryid=s.queryid)
 --from dbpro_33393_dwtg_audit.qrylog d inner join dbpro_33393_dwtg_audit.qrylogsql s on (d.procid=s.procid and d.queryid=s.queryid)
-- where SUBSTR (CAST (starttime AS VARCHAR(19)) ,1,10) >= '2018-12-05'
where d.COLLECTTIMESTAMP (DATE) >= DATE-4
-- username in ('MS_33393_DWTG_PRO','MS_33393_DWTG_PRO_VIP')
-- and queryband is not null
-- and TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',1,2)) = 'project_name=TESOUROGERENCIAL'
--GROUP BY SUBSTR (CAST (starttime AS VARCHAR(19)) ,1,13), username
GROUP BY 
TO_CHAR(D.STARTTIME,'DD/MM/YYYY'), 
--(EXTRACT(HOUR FRTO_CHAR(D.STARTTIME,'DD/MM/YYYY') AS DATA,OM d.StartTime)), 
username
ORDER BY 1, 2



--------------------------------------------------------------------------
03/01/2019 - CONSULTA MAS COM DATAS SEPARADAS POR ANO, MES E DIA
POUCO UTILIZADO.
---------------------------------------------------------------------------

lock row for access 
--
SELECT
(EXTRACT(YEAR FROM d.StartTime)) as ANO,
(EXTRACT(MONTH FROM d.StartTime)) as MES,
(EXTRACT(DAY FROM d.StartTime)) as DIA,
-- (EXTRACT(HOUR FROM d.StartTime)) as HORA,
  USERNAME
, count(*) as TOTAL
, sum(case when (TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',1,2)) = 'project_name=TESOUROGERENCIAL') then 1 else 0 end) as relatorios_executados
-- , (sum(case when (TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',1,2)) = 'project_name=TESOUROGERENCIAL') then 1 else 0 end)/count(distinct TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',3,4)))) as rel_media_user
, count(distinct TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',3,4))) as qtd_usuarios
, count(distinct TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',5,6))) as qtd_relatorios
, min(ELAPSEDTIME) as Tempo_Minimo
, avg(ELAPSEDTIME) as Tempo_Medio
, max(ELAPSEDTIME) as Tempo_Maximo
, min(numresultrows) as Linhas_Minimo
, avg(numresultrows) as Linhas_Medio
, max(numresultrows) as Linhas_Maximo
, max(spoolusage)/1024/1024 as "Spool_Maximo (MB)"
-- ,sum(CASE WHEN  errorcode <> 0 THEN 1 ELSE 0 END) AS comErro -- remover warning
,sum(CASE WHEN  errorcode <> 0 and ErrorText not like 'Warning%' THEN 1 ELSE 0 END) AS comErro
,sum(CASE WHEN  errorcode = 3156 THEN 1 ELSE 0 END) AS TDWMKilled
,sum(CASE WHEN  errorcode = 3134 THEN 1 ELSE 0 END) AS DBAAborted
,sum(CASE WHEN  errorcode = 3110 THEN 1 ELSE 0 END) AS UserAborted
,sum(CASE WHEN  errorcode = 2646 THEN 1 ELSE 0 END) AS NoMoreSpool
,sum(CASE WHEN  errorcode IN ( 2580 , 2635 , 2634 , 2583 , 2652 , 7547 ,
        2594 , 2636 , 5728 , 2570 , 2636 , 2550 , 2572 , 2738 , 2802 ,
        2801 , 3604 , 2574 , 2803 , 5343 , 2571 , 2575 , 2641 , 7449 ,
        7545 ) THEN 1 ELSE 0 END) AS "Load/FexpError"
,sum(CASE WHEN  errorcode = 2644 THEN 1 ELSE 0 END) AS NoMoreRoominDB
,sum(CASE WHEN  errorcode = 7435 THEN 1 ELSE 0 END) AS NoMoreRoominTemp
,sum(CASE WHEN  errorcode = 3150 THEN 1 ELSE 0 END) AS MaxRowsLimit
,sum(CASE WHEN  errorcode = 2631 THEN 1 ELSE 0 END) AS DeadlockAbort
,sum(CASE WHEN  errorcode IN ( 2621 , 2620 , 3996 , 2618 , 2665 , 2666 ,
        6760 , 2665 , 2662 , 3669 , 2616 , 7453 , 2617 , 2513 , 2650 ,
        2663 , 7452 , 7595 , 7596 , 7504 , 2603 , 2614 , 2619 , 
        2667 ) THEN 1 ELSE 0 END) AS "BadChar/NumOverflow/Date/SubstrIssues"
,sum(CASE WHEN  errorcode IN ( 3541 , 3552 , 3631 , 5337 , 5847 , 2640 ,
        3803 , 3807 ) THEN 1 ELSE 0 END) AS DatabaseTableModifErrors
,sum(CASE WHEN  errorcode = 7423 THEN 1 ELSE 0 END) AS LockIssue
,sum(CASE WHEN  errorcode = 3149 and ErrorText not like 'Warning%' THEN 1 ELSE 0 END) AS FiltroAbort
,sum(CASE WHEN  errorcode = 3149 and ErrorText like '%QTD DE LINHAS EXCEDIDA%' THEN 1 ELSE 0 END) AS FiltroAbortLinh
,sum(CASE WHEN  errorcode = 3149 and ErrorText like '%TEMPO DE EXEC EXCEDIDO%' THEN 1 ELSE 0 END) AS FiltroAbortTemp
,sum(CASE WHEN  errorcode = 3149 and ErrorText like 'Warning%' THEN 1 ELSE 0 END) AS FiltroWarning
--

from dbc.qrylog d inner join dbc.qrylogsql s on (d.procid=s.procid and d.queryid=s.queryid)
 --from dbpro_33393_dwtg_audit.qrylog d inner join dbpro_33393_dwtg_audit.qrylogsql s on (d.procid=s.procid and d.queryid=s.queryid)
-- where SUBSTR (CAST (starttime AS VARCHAR(19)) ,1,10) >= '2018-12-05'
where d.COLLECTTIMESTAMP (DATE) >= DATE-4
-- username in ('MS_33393_DWTG_PRO','MS_33393_DWTG_PRO_VIP')
-- and queryband is not null
-- and TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',1,2)) = 'project_name=TESOUROGERENCIAL'
--GROUP BY SUBSTR (CAST (starttime AS VARCHAR(19)) ,1,13), username
GROUP BY 
(EXTRACT(YEAR FROM d.StartTime)),
(EXTRACT(MONTH FROM d.StartTime)),
(EXTRACT(DAY FROM d.StartTime)),
--(EXTRACT(HOUR FROM d.StartTime)), 
username
ORDER BY 1, 2, 3, 4

------------------------------------------------------------------------------------
EXEMPLO COM DATA DEFINIDA OU SEJA DATA ÚNICA  
---------------------------------------------------------------------------

lock row for access 
--
SELECT
TO_CHAR(D.STARTTIME,'DD/MM/YYYY')  as datainicial
, USERNAME
, count(*) as TOTAL
, sum(case when (TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',1,2)) = 'project_name=TESOUROGERENCIAL') then 1 else 0 end) as relatorios_executados
-- , (sum(case when (TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',1,2)) = 'project_name=TESOUROGERENCIAL') then 1 else 0 end)/count(distinct TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',3,4)))) as rel_media_user
, count(distinct TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',3,4))) as qtd_usuarios
, count(distinct TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',5,6))) as qtd_relatorios
, min(ELAPSEDTIME) as Tempo_Minimo
, avg(ELAPSEDTIME) as Tempo_Medio
, max(ELAPSEDTIME) as Tempo_Maximo
, min(numresultrows) as Linhas_Minimo
, avg(numresultrows) as Linhas_Medio
, max(numresultrows) as Linhas_Maximo
, max(spoolusage)/1024/1024 as "Spool_Maximo (MB)"
-- ,sum(CASE WHEN  errorcode <> 0 THEN 1 ELSE 0 END) AS comErro -- remover warning
,sum(CASE WHEN  errorcode <> 0 and ErrorText not like 'Warning%' THEN 1 ELSE 0 END) AS comErro
,sum(CASE WHEN  errorcode = 3156 THEN 1 ELSE 0 END) AS TDWMKilled
,sum(CASE WHEN  errorcode = 3134 THEN 1 ELSE 0 END) AS DBAAborted
,sum(CASE WHEN  errorcode = 3110 THEN 1 ELSE 0 END) AS UserAborted
,sum(CASE WHEN  errorcode = 2646 THEN 1 ELSE 0 END) AS NoMoreSpool
,sum(CASE WHEN  errorcode IN ( 2580 , 2635 , 2634 , 2583 , 2652 , 7547 ,
        2594 , 2636 , 5728 , 2570 , 2636 , 2550 , 2572 , 2738 , 2802 ,
        2801 , 3604 , 2574 , 2803 , 5343 , 2571 , 2575 , 2641 , 7449 ,
        7545 ) THEN 1 ELSE 0 END) AS "Load/FexpError"
,sum(CASE WHEN  errorcode = 2644 THEN 1 ELSE 0 END) AS NoMoreRoominDB
,sum(CASE WHEN  errorcode = 7435 THEN 1 ELSE 0 END) AS NoMoreRoominTemp
,sum(CASE WHEN  errorcode = 3150 THEN 1 ELSE 0 END) AS MaxRowsLimit
,sum(CASE WHEN  errorcode = 2631 THEN 1 ELSE 0 END) AS DeadlockAbort
,sum(CASE WHEN  errorcode IN ( 2621 , 2620 , 3996 , 2618 , 2665 , 2666 ,
        6760 , 2665 , 2662 , 3669 , 2616 , 7453 , 2617 , 2513 , 2650 ,
        2663 , 7452 , 7595 , 7596 , 7504 , 2603 , 2614 , 2619 , 
        2667 ) THEN 1 ELSE 0 END) AS "BadChar/NumOverflow/Date/SubstrIssues"
,sum(CASE WHEN  errorcode IN ( 3541 , 3552 , 3631 , 5337 , 5847 , 2640 ,
        3803 , 3807 ) THEN 1 ELSE 0 END) AS DatabaseTableModifErrors
,sum(CASE WHEN  errorcode = 7423 THEN 1 ELSE 0 END) AS LockIssue
,sum(CASE WHEN  errorcode = 3149 and ErrorText not like 'Warning%' THEN 1 ELSE 0 END) AS FiltroAbort
,sum(CASE WHEN  errorcode = 3149 and ErrorText like '%QTD DE LINHAS EXCEDIDA%' THEN 1 ELSE 0 END) AS FiltroAbortLinh
,sum(CASE WHEN  errorcode = 3149 and ErrorText like '%TEMPO DE EXEC EXCEDIDO%' THEN 1 ELSE 0 END) AS FiltroAbortTemp
,sum(CASE WHEN  errorcode = 3149 and ErrorText like 'Warning%' THEN 1 ELSE 0 END) AS FiltroWarning
--

from dbc.qrylog d inner join dbc.qrylogsql s on (d.procid=s.procid and d.queryid=s.queryid)
 --from dbpro_33393_dwtg_audit.qrylog d inner join dbpro_33393_dwtg_audit.qrylogsql s on (d.procid=s.procid and d.queryid=s.queryid)
-- where SUBSTR (CAST (starttime AS VARCHAR(19)) ,1,10) >= '2018-12-05'
where d.COLLECTTIMESTAMP (DATE) >= DATE-4
-- username in ('MS_33393_DWTG_PRO','MS_33393_DWTG_PRO_VIP')
-- and queryband is not null
-- and TRIM(REGEXP_SUBSTR(queryBand,'[^;]+',1,2)) = 'project_name=TESOUROGERENCIAL'
--GROUP BY SUBSTR (CAST (starttime AS VARCHAR(19)) ,1,13), username
GROUP BY 
TO_CHAR(D.STARTTIME,'DD/MM/YYYY'), 
--(EXTRACT(HOUR FRTO_CHAR(D.STARTTIME,'DD/MM/YYYY') AS DATA,OM d.StartTime)), 
username
ORDER BY 1, 2






