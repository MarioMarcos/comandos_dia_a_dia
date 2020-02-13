

COL TABELA FOR A50
set pages 5000  
set lines 900
SELECT 'select ''' || OWNER || '.' || table_name || ''' as tabela, count(*) from ' || OWNER || '.' || table_name || ' union'
from dba_tables
where owner = 'ECF2' and TABLE_NAME IN ('WF_EECF_ATIN', 
'WF_EECF_AVIS',
'WF_EECF_BAPA',
'WF_EECF_COEL',
'WF_EECF_COEX',
'WF_EECF_COIM',
'WF_EECF_CONS',
'WF_EECF_DOCE',
'WF_EECF_ECOE',
'WF_EECF_EECF',
'WF_EECF_ESCP',
'WF_EECF_EXPO',
'WF_EECF_FCIN',
'WF_EECF_IDST',
'WF_EECF_IMPO',
'WF_EECF_IRCS',
'WF_EECF_PAGE',
'WF_EECF_PAGS',
'WF_EECF_PCON',
'WF_EECF_PEXT',
'WF_EECF_PMEP',
'WF_EECF_RDST',
'WF_EECF_RECE',
'WF_EECF_REGL',
'WF_EECF_REND',
'WF_EECF_RESU',
'WF_EECF_ROPG',
'WF_EECF_RORC',
'WF_EECF_SIGN',
'WF_EECF_SUCE',
'WF_EECF_VCOE',
'WF_EECF_VEST',
'WF_EECF_MEAF',
'WF_EECF_BCIF',
'WD_EECF_EECF',
'WD_EECF_MEAF_METODO_AV_ETQ'); 


select 'ECF2.WD_EECF_MEAF_METODO_AV_ETQ' as tabela, count(*) from ECF2.WD_EECF_MEAF_METODO_AV_ETQ union
select 'ECF2.WF_EECF_VEST' as tabela, count(*) from ECF2.WF_EECF_VEST union
select 'ECF2.WF_EECF_VCOE' as tabela, count(*) from ECF2.WF_EECF_VCOE union
select 'ECF2.WF_EECF_SUCE' as tabela, count(*) from ECF2.WF_EECF_SUCE union
select 'ECF2.WF_EECF_SIGN' as tabela, count(*) from ECF2.WF_EECF_SIGN union
select 'ECF2.WF_EECF_RORC' as tabela, count(*) from ECF2.WF_EECF_RORC union
select 'ECF2.WF_EECF_ROPG' as tabela, count(*) from ECF2.WF_EECF_ROPG union
select 'ECF2.WF_EECF_RESU' as tabela, count(*) from ECF2.WF_EECF_RESU union
select 'ECF2.WF_EECF_REND' as tabela, count(*) from ECF2.WF_EECF_REND union
select 'ECF2.WF_EECF_REGL' as tabela, count(*) from ECF2.WF_EECF_REGL union
select 'ECF2.WF_EECF_RECE' as tabela, count(*) from ECF2.WF_EECF_RECE union
select 'ECF2.WF_EECF_RDST' as tabela, count(*) from ECF2.WF_EECF_RDST union
--select 'ECF2.WF_EECF_PMEP' as tabela, count(*) from ECF2.WF_EECF_PMEP union
select 'ECF2.WF_EECF_PEXT' as tabela, count(*) from ECF2.WF_EECF_PEXT union
select 'ECF2.WF_EECF_PCON' as tabela, count(*) from ECF2.WF_EECF_PCON union
select 'ECF2.WF_EECF_PAGS' as tabela, count(*) from ECF2.WF_EECF_PAGS union
select 'ECF2.WF_EECF_PAGE' as tabela, count(*) from ECF2.WF_EECF_PAGE union
select 'ECF2.WF_EECF_MEAF' as tabela, count(*) from ECF2.WF_EECF_MEAF union
select 'ECF2.WF_EECF_IRCS' as tabela, count(*) from ECF2.WF_EECF_IRCS union
select 'ECF2.WF_EECF_IMPO' as tabela, count(*) from ECF2.WF_EECF_IMPO union
select 'ECF2.WF_EECF_IDST' as tabela, count(*) from ECF2.WF_EECF_IDST union
select 'ECF2.WF_EECF_FCIN' as tabela, count(*) from ECF2.WF_EECF_FCIN union
select 'ECF2.WF_EECF_EXPO' as tabela, count(*) from ECF2.WF_EECF_EXPO union
select 'ECF2.WF_EECF_ESCP' as tabela, count(*) from ECF2.WF_EECF_ESCP union
select 'ECF2.WF_EECF_EECF' as tabela, count(*) from ECF2.WF_EECF_EECF union
select 'ECF2.WF_EECF_ECOE' as tabela, count(*) from ECF2.WF_EECF_ECOE union
select 'ECF2.WF_EECF_DOCE' as tabela, count(*) from ECF2.WF_EECF_DOCE union
select 'ECF2.WF_EECF_CONS' as tabela, count(*) from ECF2.WF_EECF_CONS union
select 'ECF2.WF_EECF_COIM' as tabela, count(*) from ECF2.WF_EECF_COIM union
select 'ECF2.WF_EECF_COEX' as tabela, count(*) from ECF2.WF_EECF_COEX union
select 'ECF2.WF_EECF_COEL' as tabela, count(*) from ECF2.WF_EECF_COEL union
select 'ECF2.WF_EECF_BCIF' as tabela, count(*) from ECF2.WF_EECF_BCIF union
select 'ECF2.WF_EECF_BAPA' as tabela, count(*) from ECF2.WF_EECF_BAPA union
select 'ECF2.WF_EECF_AVIS' as tabela, count(*) from ECF2.WF_EECF_AVIS union
select 'ECF2.WF_EECF_ATIN' as tabela, count(*) from ECF2.WF_EECF_ATIN union
select 'ECF2.WD_EECF_EECF' as tabela, count(*) from ECF2.WD_EECF_EECF;






TABELA						     COUNT(*)
-------------------------------------------------- ----------
ECF2.WD_EECF_EECF					  163
ECF2.WD_EECF_MEAF_METODO_AV_ETQ 			   11
ECF2.WF_EECF_ATIN					   31
ECF2.WF_EECF_AVIS					51050
ECF2.WF_EECF_BAPA				       259844
ECF2.WF_EECF_BCIF					    8
ECF2.WF_EECF_COEL					    5
ECF2.WF_EECF_COEX					  402
ECF2.WF_EECF_COIM					   61
ECF2.WF_EECF_CONS					    6
ECF2.WF_EECF_DOCE					   50
ECF2.WF_EECF_ECOE					    6
ECF2.WF_EECF_EECF					  163
ECF2.WF_EECF_ESCP					  179
ECF2.WF_EECF_EXPO					  359
ECF2.WF_EECF_FCIN					    5
ECF2.WF_EECF_IDST					 1073
ECF2.WF_EECF_IMPO					   55
ECF2.WF_EECF_IRCS					 4669
ECF2.WF_EECF_MEAF					 1083
ECF2.WF_EECF_PAGE					  796
ECF2.WF_EECF_PAGS					  391
ECF2.WF_EECF_PCON					   26
ECF2.WF_EECF_PEXT					   32
ECF2.WF_EECF_PMEP					  149
ECF2.WF_EECF_RDST					 8746
ECF2.WF_EECF_RECE					 1358
ECF2.WF_EECF_REGL					30780
ECF2.WF_EECF_REND					   43
ECF2.WF_EECF_RESU					68089
ECF2.WF_EECF_ROPG					  285
ECF2.WF_EECF_RORC					   36
ECF2.WF_EECF_SIGN					  326
ECF2.WF_EECF_SUCE					    1
ECF2.WF_EECF_VCOE					  353
ECF2.WF_EECF_VEST					  632

36 rows selected.


COL TABELA FOR A50
set pages 5000  
set lines 900
SELECT 'select ''' || OWNER || '.' || table_name || ''' as tabela, count(*) from ' || OWNER || '.' || table_name || ' union'
from dba_tables
where owner = 'EECF' and TABLE_NAME IN ('WF_EECF_ATIN', 
'WF_EECF_AVIS',
'WF_EECF_BAPA',
'WF_EECF_COEL',
'WF_EECF_COEX',
'WF_EECF_COIM',
'WF_EECF_CONS',
'WF_EECF_DOCE',
'WF_EECF_ECOE',
'WF_EECF_EECF',
'WF_EECF_ESCP',
'WF_EECF_EXPO',
'WF_EECF_FCIN',
'WF_EECF_IDST',
'WF_EECF_IMPO',
'WF_EECF_IRCS',
'WF_EECF_PAGE',
'WF_EECF_PAGS',
'WF_EECF_PCON',
'WF_EECF_PEXT',
'WF_EECF_PMEP',
'WF_EECF_RDST',
'WF_EECF_RECE',
'WF_EECF_REGL',
'WF_EECF_REND',
'WF_EECF_RESU',
'WF_EECF_ROPG',
'WF_EECF_RORC',
'WF_EECF_SIGN',
'WF_EECF_SUCE',
'WF_EECF_VCOE',
'WF_EECF_VEST',
'WF_EECF_MEAF',
'WF_EECF_BCIF',
'WD_EECF_EECF',
'WD_EECF_MEAF_METODO_AV_ETQ');



select 'EECF.WF_EECF_VEST' as tabela, count(*) from EECF.WF_EECF_VEST union
select 'EECF.WF_EECF_VCOE' as tabela, count(*) from EECF.WF_EECF_VCOE union
select 'EECF.WF_EECF_SUCE' as tabela, count(*) from EECF.WF_EECF_SUCE union
select 'EECF.WF_EECF_SIGN' as tabela, count(*) from EECF.WF_EECF_SIGN union
select 'EECF.WF_EECF_RORC' as tabela, count(*) from EECF.WF_EECF_RORC union
select 'EECF.WF_EECF_ROPG' as tabela, count(*) from EECF.WF_EECF_ROPG union
select 'EECF.WF_EECF_RESU' as tabela, count(*) from EECF.WF_EECF_RESU union
select 'EECF.WF_EECF_REND' as tabela, count(*) from EECF.WF_EECF_REND union
select 'EECF.WF_EECF_REGL' as tabela, count(*) from EECF.WF_EECF_REGL union
select 'EECF.WF_EECF_RECE' as tabela, count(*) from EECF.WF_EECF_RECE union
select 'EECF.WF_EECF_RDST' as tabela, count(*) from EECF.WF_EECF_RDST union
--select 'EECF.WF_EECF_PMEP' as tabela, count(*) from EECF.WF_EECF_PMEP union
select 'EECF.WF_EECF_PEXT' as tabela, count(*) from EECF.WF_EECF_PEXT union
select 'EECF.WF_EECF_PCON' as tabela, count(*) from EECF.WF_EECF_PCON union
select 'EECF.WF_EECF_PAGS' as tabela, count(*) from EECF.WF_EECF_PAGS union
select 'EECF.WF_EECF_PAGE' as tabela, count(*) from EECF.WF_EECF_PAGE union
select 'EECF.WF_EECF_MEAF' as tabela, count(*) from EECF.WF_EECF_MEAF union
select 'EECF.WF_EECF_IRCS' as tabela, count(*) from EECF.WF_EECF_IRCS union
select 'EECF.WF_EECF_IMPO' as tabela, count(*) from EECF.WF_EECF_IMPO union
select 'EECF.WF_EECF_IDST' as tabela, count(*) from EECF.WF_EECF_IDST union
select 'EECF.WF_EECF_FCIN' as tabela, count(*) from EECF.WF_EECF_FCIN union
select 'EECF.WF_EECF_EXPO' as tabela, count(*) from EECF.WF_EECF_EXPO union
select 'EECF.WF_EECF_ESCP' as tabela, count(*) from EECF.WF_EECF_ESCP union
select 'EECF.WF_EECF_EECF' as tabela, count(*) from EECF.WF_EECF_EECF union
select 'EECF.WF_EECF_ECOE' as tabela, count(*) from EECF.WF_EECF_ECOE union
select 'EECF.WF_EECF_DOCE' as tabela, count(*) from EECF.WF_EECF_DOCE union
select 'EECF.WF_EECF_CONS' as tabela, count(*) from EECF.WF_EECF_CONS union
select 'EECF.WF_EECF_COIM' as tabela, count(*) from EECF.WF_EECF_COIM union
select 'EECF.WF_EECF_COEX' as tabela, count(*) from EECF.WF_EECF_COEX union
select 'EECF.WF_EECF_COEL' as tabela, count(*) from EECF.WF_EECF_COEL union
select 'EECF.WF_EECF_BCIF' as tabela, count(*) from EECF.WF_EECF_BCIF union
select 'EECF.WF_EECF_BAPA' as tabela, count(*) from EECF.WF_EECF_BAPA union
select 'EECF.WF_EECF_AVIS' as tabela, count(*) from EECF.WF_EECF_AVIS union
select 'EECF.WF_EECF_ATIN' as tabela, count(*) from EECF.WF_EECF_ATIN union
select 'EECF.WD_EECF_MEAF_METODO_AV_ETQ' as tabela, count(*) from EECF.WD_EECF_MEAF_METODO_AV_ETQ union
select 'EECF.WD_EECF_EECF' as tabela, count(*) from EECF.WD_EECF_EECF;


TABELA						     COUNT(*)
-------------------------------------------------- ----------
EECF.WD_EECF_EECF					  163
EECF.WD_EECF_MEAF_METODO_AV_ETQ 			   11
EECF.WF_EECF_ATIN					    0
EECF.WF_EECF_AVIS					51050
EECF.WF_EECF_BAPA				   2045848300
EECF.WF_EECF_BCIF					    0
EECF.WF_EECF_COEL					    5
EECF.WF_EECF_COEX					  402
EECF.WF_EECF_COIM					   61
EECF.WF_EECF_CONS					    6
EECF.WF_EECF_DOCE					    0
EECF.WF_EECF_ECOE					    0
EECF.WF_EECF_EECF					  163
EECF.WF_EECF_ESCP					    0
EECF.WF_EECF_EXPO					    0
EECF.WF_EECF_FCIN					    0
EECF.WF_EECF_IDST					    0
EECF.WF_EECF_IMPO					    0
EECF.WF_EECF_IRCS					    0
EECF.WF_EECF_MEAF					    0
EECF.WF_EECF_PAGE					    0
EECF.WF_EECF_PAGS					    0
EECF.WF_EECF_PCON					    0
EECF.WF_EECF_PEXT					    0
EECF.WF_EECF_PMEP					    0
EECF.WF_EECF_RDST					 8746
EECF.WF_EECF_RECE					    0
EECF.WF_EECF_REGL					    0
EECF.WF_EECF_REND					    0
EECF.WF_EECF_RESU					    0
EECF.WF_EECF_ROPG					    0
EECF.WF_EECF_RORC					    0
EECF.WF_EECF_SIGN					    0
EECF.WF_EECF_SUCE					    0
EECF.WF_EECF_VCOE					    0
EECF.WF_EECF_VEST					    0

36 rows selected.

