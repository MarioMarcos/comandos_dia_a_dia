CONSULTAS TERADATA POR LEANDRO KOBAYASHI - SOBRE CPU, AWT E OUTROS ===

-- TESTAR DEPOIS COM ANDRÉ, RONALDO OU SOZINHO.

-- Capacity Planning CPU Query - System

 

LOCKING ROW FOR ACCESS

SELECT

  thedate (FORMAT 'YYYY-MM-DD') AS The_Date

,CAST((TheTime (FORMAT '99:99:99')) AS CHAR(8)) AS TheTime

,EXTRACT(HOUR FROM TheTime) AS Hr

,EXTRACT(MINUTE FROM TheTime) AS Mn

,AVG((CPUUServ + CPUUExec)  / (CPUUServ+CPUUExec+CPUIOWait+CPUIdle ) * 100) (NAMED "AvgBusy%", FORMAT '9999.99')

,AVG(CPUUServ / (CPUUServ+CPUUExec+CPUIOWait+CPUIdle )*100) (NAMED "AvgOS%", FORMAT '9999.99')

,AVG(CPUIOWait / (CPUUServ+CPUUExec+CPUIOWait+CPUIdle )*100) (NAMED "AvgIOWait%", FORMAT '9999.99')

,AVG(CPUIdle / (CPUUServ+CPUUExec+CPUIOWait+CPUIdle )*100) (NAMED "AvgIdle%", FORMAT '9999.99')

,AVG(CPUUExec / (CPUUServ+CPUUExec+CPUIOWait+CPUIdle )*100) (NAMED "AvgUser%", FORMAT '9999.99')

,(1 -  AvgBusy/ MaxBusy) * 100 (NAMED "BusySkew%" , FORMAT '9999.99')

,MAX(CPUUServ + CPUUExec) MaxBusy

,AVG(CPUUServ + CPUUExec) AvgBusy

FROM dbc.resusagespma

WHERE thedate between 1140728  and date

And  vproc1 NE 0

GROUP BY 1,2,3,4

ORDER BY 1,2

;

 

-- AWT

LOCKING ROW FOR ACCESS

 

SELECT  thedate (FORMAT 'YYYY-MM-DD') AS The_Date   

                ,TheTime

--             ,NodeID

--             ,VprID

--             ,NodeType

                ,AVG(MailBoxDepth) AvgMailboxDepth

                ,SUM(FlowControlled) NumAmpsInFlowControl

                ,SUM(FlowCtlCnt) SumFlowCtlCnt

                --,SUM(FlowCtlTime) SumFlowCtlTime

                /* Start of changes applied by ADC to remove the division by CollectIntervals*/

                ,AVG(WorkTypeInuse00) as AvgWorkNew

                ,MAX(WorkTypeInuse00) as MaxWorkNew

                ,AVG(WorkTypeInuse01) as AvgWorkOne

                ,MAX(WorkTypeInuse01) as MaxWorkOne

                ,AVG(WorkTypeInuse08) as AvgWorkEight

                ,MAX(WorkTypeInuse08) as MaxWorkEight

                ,AVG(WorkTypeInuse09) as AvgWorkNine

                ,MAX(WorkTypeInuse09) as MaxWorkNine

                /* End of changes applied by ADC to remove the division by CollectIntervals*/

                ,AVG(WorkTypeMax00) as AvgWorkNewMax

                ,MAX(WorkTypeMax00) as MaxWorkNewMax

                ,AVG(WorkTypeMax01) as AvgWorkOneMax

                ,MAX(WorkTypeMax01) as MaxWorkOneMax

                ,AVG(WorkTypeMax08) as AvgWorkEightMax

                ,MAX(WorkTypeMax08) as MaxWorkEightMax

                ,AVG(WorkTypeMax09) as AvgWorkNineMax

                ,MAX(WorkTypeMax09) as MaxWorkNineMax

                ,AVG(InUseMax) AvgInUseMax

                ,MAX(InUseMax) MaxInUseMax

FROM   dbc.resusagesawt

WHERE {{  thedate  # __DATE_CLAUSE__ }}

                group by 1,2

;

 

 

-- Suspect Queries

LOCKING ROW FOR ACCESS

                SELECT   Rank(ImpactCPU) as CPURank 

                                                , a.UserName

                ,a.acctstring AS AcctString

                ,appid

                ,a.AMPCPUTime as SumCPU

                ,a.TotalIOCount as SumIO

                                                ,Case when AMPCPUTime = 0 then 0 else MaxAmpCPUTime/(AMPCPUTime / (HashAmp()+1)) End (dec(8,2)) as CPUSKW

                                                ,Case when  totaliocount = 0 then 0 else MaxAMPIO/(TotalIOCount / (HashAmp()+1)) End (dec(8,2)) as IOSKW

                                                ,Case when /*AMPCPUTime < 1 or*/ TotalIOCount = 0 then 0  else (a.AMPCPUTime *1000)/a.TotalIOCount  end  as PJI

                                                ,Case when /*AMPCPUTime < 1 or */AMPCPUTime = 0 then 0  else a.TotalIOCount/(a.AMPCPUTime *1000) end  as UII

                ,a.MaxAmpCPUTime * (hashamp()+1)  /*no. of Amps*/ as ImpactCPU

                ,a.MaxAmpIO * (hashamp()+1)  /*no. of Amps*/ as ImpactIO

                                                , ((firstresptime - starttime) hour(4) to second) (Named ElapsedTime)

                ,a.expandacctstring

                ,cast(starttime as date FORMAT 'YYYY-MM-DD') LogDate

                                                ,a.QueryID

                                                ,a.extrafield5 as StmtType

                                                /*

                                                , a.SpoolUsage

            ,CAST(extract(hour from ((a.firststeptime - a.starttime) HOUR(2) TO SECOND(2) ) ) * 3600 + extract(minute from ((a.firststeptime - a.starttime) HOUR(2) TO SECOND(2) ) ) * 60 + extract(second from ((a.firststeptime - a.starttime) HOUR(2) TO SECOND(2) ) ) AS INTEGER)   as ParseDictTime

                ,((firstresptime-starttime) day(4) to second) as QryRespTime

                ,NumofActiveAmps

                ,NumResultRows

                                                */

                                                FROM dbc.dbqlogtbl  a

                WHERE (   CpuSkw > 2.0 /*2.0*/  or IOSkw > 2.0 /*2.0*/  /* Start with 2.0 as a threshold for CoExistence systems */

                or UII > 3                                                               /* UnNecessary IO Indicator - may offer an opportunity for Indexing */

                or pji > 3                                                                /* Could use a higher threshold (6) for 5200 systems  */

                )   and Logdate Between 1140901 and date

                --GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26

                qualify Rank(ImpactCPU) <= 1000

                ORDER BY 1

;

 

 

-- QueryBuckets

LOCK ROW

FOR access

 

SELECT CASE

                WHEN EstProcTime < .25

                                                THEN '00) Less Than .25 Second'

                                WHEN EstProcTime BETWEEN .2500001

                                                                AND .5

                                                THEN '01) Between .25 and .5 Seconds'

                                WHEN EstProcTime BETWEEN .500001

                                                                AND 1

                                                THEN '01) Between .5 and 1 Seconds'

                                WHEN EstProcTime BETWEEN 1.00001

                                                                AND 2

                                                THEN '02) Between 1 & 2 Seconds'

                                WHEN EstProcTime BETWEEN 2.00001

                                                                AND 3

                                                THEN '03) Between 2 & 3 Seconds'

                                WHEN EstProcTime BETWEEN 3.00001

                                                                AND 4

                                                THEN '04) Between 3 & 4 Seconds'

                                WHEN EstProcTime BETWEEN 4.00001

                                                                AND 5

                                                THEN '05) Between 4 & 5 Seconds'

                                WHEN EstProcTime BETWEEN 5.00001

                                                                AND 6

                                                THEN '06) Between 5 & 6 Seconds'

                                WHEN EstProcTime BETWEEN 6.00001

                                                                AND 7

                                                THEN '07) Between 6 & 7 Seconds'

                                WHEN EstProcTime BETWEEN 7.00001

                                                                AND 8

                                                THEN '08) Between 7 & 8 Seconds'

                                WHEN EstProcTime BETWEEN 8.00001

                                                                AND 9

                                                THEN '09) Between 8 & 9 Seconds'

                                WHEN EstProcTime BETWEEN 9.00001

                                                                AND 10

                                                THEN '10) Between 9 & 10 Seconds'

                                WHEN EstProcTime BETWEEN 10.00001

                                                                AND 20

                                                THEN '11) Between 10 & 20 Seconds'

                                WHEN EstProcTime BETWEEN 20.00001

                                                                AND 30

                                                THEN '12) Between 20 & 30 Seconds'

                                WHEN EstProcTime BETWEEN 30.00001

                                                                AND 40

                                                THEN '13) Between 30 & 40 Seconds'

                                WHEN EstProcTime BETWEEN 40.00001

                                                                AND 50

                                                THEN '14) Between 40 & 50 Seconds'

                                WHEN EstProcTime BETWEEN 50.00001

                                                                AND 60

                                                THEN '15) Between 50 & 60 Seconds'

                                WHEN EstProcTime BETWEEN 60.00001

                                                                AND 70

                                                THEN '16) Between 60 & 70 Seconds'

                                WHEN EstProcTime BETWEEN 70.00001

                                                                AND 80

                                                THEN '17) Between 70 & 80 Seconds'

                                WHEN EstProcTime BETWEEN 80.00001

                                                                AND 90

                                                THEN '18) Between 80 & 90 Seconds'

                                WHEN EstProcTime BETWEEN 90.00001

                                                                AND 100

                                                THEN '19) Between 90 & 100 Seconds'

                                WHEN EstProcTime BETWEEN 100.00001

                                                                AND 110

                                                THEN '20) Between 100 & 110 Seconds'

                                WHEN EstProcTime BETWEEN 110.00001

                                                                AND 120

                                                THEN '21) Between 110 & 120 Seconds'

                                WHEN EstProcTime BETWEEN 120.00001

                                                                AND 130

                                                THEN '22) Between 120 & 130 Seconds'

                                WHEN EstProcTime BETWEEN 130.00001

                                                                AND 140

                                                THEN '23) Between 130 & 140 Seconds'

                                WHEN EstProcTime BETWEEN 140.00001

                                                                AND 150

                                                THEN '24) Between 140 & 150 Seconds'

                                WHEN EstProcTime BETWEEN 150.00001

                                                                AND 160

                                                THEN '25) Between 150 & 160 Seconds'

                                WHEN EstProcTime BETWEEN 160.00001

                                                                AND 170

                                                THEN '26) Between 160 & 170 Seconds'

                                WHEN EstProcTime BETWEEN 170.00001

                                                                AND 180

                                                THEN '27) Between 170 & 180 Seconds'

                                WHEN EstProcTime BETWEEN 180.00001

                                                                AND 240

                                                THEN '28) Between 180 & 240 Seconds'

                                WHEN EstProcTime BETWEEN 240.00001

                                                                AND 300

                                                THEN '29) Between 240 & 300 Seconds'

                                WHEN EstProcTime BETWEEN 300.00001

                                                                AND 360

                                                THEN '30) Between 300 & 360 Seconds'

                                WHEN EstProcTime BETWEEN 360.00001

                                                                AND 420

                                                THEN '31) Between 360 & 420 Seconds'

                                WHEN EstProcTime BETWEEN 420.00001

                                                                AND 480

                                                THEN '32) Between 420 & 480 Seconds'

                                WHEN EstProcTime BETWEEN 480.00001

                                                                AND 540

                                                THEN '33) Between 480 & 540 Seconds'

                                WHEN EstProcTime BETWEEN 540.00001

                                                                AND 600

                                                THEN '34) Between 540 & 600 Seconds'

                                WHEN EstProcTime BETWEEN 600.00001

                                                                AND 660

                                                THEN '35) Between 600 & 660 Seconds'

                                WHEN EstProcTime BETWEEN 660.00001

                                                                AND 720

                                                THEN '36) Between 660 & 720 Seconds'

                                WHEN EstProcTime BETWEEN 720.00001

                                                                AND 780

                                                THEN '37) Between 720 & 780 Seconds'

                                WHEN EstProcTime BETWEEN 780.00001

                                                                AND 840

                                                THEN '38) Between 780 & 840 Seconds'

                                WHEN EstProcTime BETWEEN 840.00001

                                                                AND 900

                                                THEN '39) Between 840 & 900 Seconds'

                                WHEN EstProcTime BETWEEN 900.00001

                                                                AND 960

                                                THEN '40) Between 900 & 960 Seconds'

                                WHEN EstProcTime BETWEEN 960.00001

                                                                AND 1080

                                                THEN '41) Between 960 & 1080 Seconds'

                                WHEN EstProcTime BETWEEN 1080.00001

                                                                AND 1200

                                                THEN '42) Between 1080 & 1200 Seconds'

                                WHEN EstProcTime > 1200

                                                THEN '43) Greater Than 1200 seconds'

                                ELSE ' Unknown'

                                END AS EstProcessTime

                ,COUNT(*) AS querycount

                ,CAST(SUM((ampcputime + parsercputime)) AS INT) AS TotalCPUTime

                ,MAXIMUM(ParserCPUTime + AmpCPUTime) AS Max_Query_CPU

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) <= .5

                                                                AND NumOfActiveAmps <= 1

                                                                THEN 1

                                                ELSE 0

                                                END) AS SACPUlthalfsec

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > .5

                                                                AND (ParserCPUTime + AmpCPUTime) <= 1

                                                                AND NumOfActiveAmps <= 1

                                                                THEN 1

                                                ELSE 0

                                                END) AS SACPUhalfsecTo1

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) <= .5

                                                                AND NumofActiveAmps > 1

                                                                THEN 1

                                                ELSE 0

                                                END) AS NSACPUlthalfsec

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > .5

                                                                AND (ParserCPUTime + AmpCPUTime) <= 1

                                                                AND NumOfActiveAmps > 1

                                                                THEN 1

                                                ELSE 0

                                                END) AS NSACPUhalfsecTo1

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 1

                                                                AND (ParserCPUTime + AmpCPUTime) <= 5

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_1to5

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 5

                                                                AND (ParserCPUTime + AmpCPUTime) <= 10

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_5to10

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 10

                                                                AND (ParserCPUTime + AmpCPUTime) <= 15

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_10to15

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 15

                                                                AND (ParserCPUTime + AmpCPUTime) <= 20

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_15to20

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 20

                                                                AND (ParserCPUTime + AmpCPUTime) <= 30

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_20to30

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 30

                                                                AND (ParserCPUTime + AmpCPUTime) <= 40

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_30to40

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 40

                                                                AND (ParserCPUTime + AmpCPUTime) <= 45

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_40to45

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 45

                                                                AND (ParserCPUTime + AmpCPUTime) <= 50

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_45to50

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 50

                                                                AND (ParserCPUTime + AmpCPUTime) <= 55

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_50to55

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 55

                                                                AND (ParserCPUTime + AmpCPUTime) <= 60

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_55to60

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 65

                                                                AND (ParserCPUTime + AmpCPUTime) <= 70

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_65to70

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 70

                                                                AND (ParserCPUTime + AmpCPUTime) <= 80

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_70to80

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 80

                                                                AND (ParserCPUTime + AmpCPUTime) <= 90

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_80to90

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 90

                                                                AND (ParserCPUTime + AmpCPUTime) <= 100

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_90to100

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 100

                                                                AND (ParserCPUTime + AmpCPUTime) <= 150

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_100to150

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 150

                                                                AND (ParserCPUTime + AmpCPUTime) <= 200

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_150to200

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 200

                                                                AND (ParserCPUTime + AmpCPUTime) <= 250

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_200to250

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 250

                                                                AND (ParserCPUTime + AmpCPUTime) <= 300

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_250to300

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 300

                                                                AND (ParserCPUTime + AmpCPUTime) <= 350

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_300to350

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 350

                                                                AND (ParserCPUTime + AmpCPUTime) <= 400

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_350to400

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 400

                                                                AND (ParserCPUTime + AmpCPUTime) <= 450

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_400to450

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 450

                                                                AND (ParserCPUTime + AmpCPUTime) <= 500

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_450to500

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 500

                                                                AND (ParserCPUTime + AmpCPUTime) <= 550

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_500to550

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 550

                                                                AND (ParserCPUTime + AmpCPUTime) <= 600

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_550to600

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 600

                                                                AND (ParserCPUTime + AmpCPUTime) <= 650

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_600to650

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 650

                                                                AND (ParserCPUTime + AmpCPUTime) <= 700

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_650to700

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 700

                                                                AND (ParserCPUTime + AmpCPUTime) <= 750

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_700to750

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 750

                                                                AND (ParserCPUTime + AmpCPUTime) <= 800

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_750to800

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 800

                                                                AND (ParserCPUTime + AmpCPUTime) <= 850

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_800to850

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 850

                                                                AND (ParserCPUTime + AmpCPUTime) <= 900

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_850to900

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 900

                                                                AND (ParserCPUTime + AmpCPUTime) <= 950

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_900to950

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 950

                                                                AND (ParserCPUTime + AmpCPUTime) <= 1000

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_950to1000

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 1000

                                                                AND (ParserCPUTime + AmpCPUTime) <= 1100

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_1000to1100

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 1100

                                                                AND (ParserCPUTime + AmpCPUTime) <= 1200

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_1100to1200

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 1200

                                                                AND (ParserCPUTime + AmpCPUTime) <= 1300

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_1200to1300

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 1300

                                                                AND (ParserCPUTime + AmpCPUTime) <= 1400

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_1300to1400

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 1400

                                                                AND (ParserCPUTime + AmpCPUTime) <= 1500

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_1400to1500

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 1500

                                                                AND (ParserCPUTime + AmpCPUTime) <= 1600

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_1500to1600

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 1600

                                                                AND (ParserCPUTime + AmpCPUTime) <= 1700

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_1600to1700

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 1700

                                                                AND (ParserCPUTime + AmpCPUTime) <= 1800

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_1700to1800

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 1800

                                                                AND (ParserCPUTime + AmpCPUTime) <= 1900

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_1800to1900

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 1900

                                                                AND (ParserCPUTime + AmpCPUTime) <= 2000

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_1900to2000

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 2000

                                                                AND (ParserCPUTime + AmpCPUTime) <= 3000

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_2000to3000

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 3000

                                                                AND (ParserCPUTime + AmpCPUTime) <= 4000

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_3000to4000

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 4000

                                                                AND (ParserCPUTime + AmpCPUTime) <= 5000

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_4000to5000

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 5000

                                                                AND (ParserCPUTime + AmpCPUTime) <= 10000

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_5000to10000

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 10000

                                                                AND (ParserCPUTime + AmpCPUTime) <= 20000

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_10000to20000

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 20000

                                                                AND (ParserCPUTime + AmpCPUTime) <= 30000

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_20000to30000

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 30000

                                                                AND (ParserCPUTime + AmpCPUTime) <= 40000

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_30000to40000

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 40000

                                                                AND (ParserCPUTime + AmpCPUTime) <= 50000

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_40000to50000

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 50000

                                                                AND (ParserCPUTime + AmpCPUTime) <= 75000

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_50000to75000

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 75000

                                                                AND (ParserCPUTime + AmpCPUTime) <= 100000

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_75000to100000

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 100000

                                                                AND (ParserCPUTime + AmpCPUTime) <= 125000

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_100000to125000

                ,SUM(CASE

                                                WHEN (ParserCPUTime + AmpCPUTime) > 125000

                                                                AND (ParserCPUTime + AmpCPUTime) <= 150000

                                                                THEN 1

                                                ELSE 0

                                                END) AS CPU_125000to150000

FROM pdcrdata.dbqlogtbl_hst T1

LEFT OUTER JOIN tdwm.ruledefs t ON t1.wdid = t.ruleid

WHERE (

                                ampcputime > 0

                                OR numsteps > 0

                                )

                --AND rulename LIKE '%MSTR%'

                AND logdate BETWEEN '2014-08-15'

                                AND DATE

GROUP BY 1

ORDER BY 1

 

 

 

Leandro Okabayashi

Solution Architect, CLA

Teradata 14 Certified Master
Rua Olimpiadas, 205 cj21

São Paulo, SP 04164-010
+55 11 97623-3072

