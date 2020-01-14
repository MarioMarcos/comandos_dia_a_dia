13/11/2018
-------------------------------------------------------------------
--SCRIPT PARA FAZER O GRANT ---- VER BATIMENTO NO GRANT E DO REVOKE 
--pois tem que ter os mesmos usuários. depois do grant de volta.
rodar o script para conferência se está tudo de volta.

--------------------------------------------------------------------

xxxxx
SELECT 'GRANT LOGON ON ALL TO "' || TRIM(USERNAME) || '";'
FROM	DBC.USERS
WHERE	OWNERNAME NOT IN ('DBC', 'SYSDBA', 'DWPUB', 'DWPUBBACKUP')
AND 	NOT USERNAME IN (
SELECT	USERNAME
FROM	DBC.LOGONRULES
WHERE	LOGONSTATUS = 'G'
)
ORDER BY 1
;


SELECT 'GRANT LOGON ON ALL TO "' || TRIM(USERNAME) || '";'
FROM	DBC.USERS
WHERE	OWNERNAME NOT IN ('DBC', 'SYSDBA', 'DWPUB', 'DWPUBBACKUP')
AND 	NOT USERNAME IN (
SELECT	USERNAME
FROM	DBC.LOGONRULES
WHERE	LOGONSTATUS = 'R'
)
ORDER BY 1
;

GRANT LOGON ON ALL TO "jv_33393_dwtg_pro_externo";
GRANT LOGON ON ALL TO "C01478515643";
GRANT LOGON ON ALL TO "C01689999195";
GRANT LOGON ON ALL TO "C70653186134";
GRANT LOGON ON ALL TO "C78921619100";
GRANT LOGON ON ALL TO "D00465033318";
GRANT LOGON ON ALL TO "D12009415353";
GRANT LOGON ON ALL TO "D36899038315";
GRANT LOGON ON ALL TO "D41410459349";
GRANT LOGON ON ALL TO "D42250110387";
GRANT LOGON ON ALL TO "D42741815372";
GRANT LOGON ON ALL TO "D46232133315";
GRANT LOGON ON ALL TO "D56804253353";
GRANT LOGON ON ALL TO "D63872269372";
GRANT LOGON ON ALL TO "D69992282304";
GRANT LOGON ON ALL TO "D70653186134";
GRANT LOGON ON ALL TO "D72291869353";
GRANT LOGON ON ALL TO "D77017714334";
GRANT LOGON ON ALL TO "D78161550506";
GRANT LOGON ON ALL TO "D78886562349";
GRANT LOGON ON ALL TO "D80469060344";
GRANT LOGON ON ALL TO "D81657617300";
GRANT LOGON ON ALL TO "D82200424353";
GRANT LOGON ON ALL TO "D91412706300";
GRANT LOGON ON ALL TO "dtl_10593_dwtg_pro_externo";
GRANT LOGON ON ALL TO "jv_33393_dwtg_pro_interno";
GRANT LOGON ON ALL TO "mstrdesdwtg";
GRANT LOGON ON ALL TO "mstrdesdwtg_mart";
GRANT LOGON ON ALL TO "ms_33393_dwtg_hom";
GRANT LOGON ON ALL TO "ms_33393_dwtg_pro";
GRANT LOGON ON ALL TO "ms_33393_dwtg_pro_vip";
GRANT LOGON ON ALL TO "pctrdesdwtg";
GRANT LOGON ON ALL TO "pctrhomdwtg";
GRANT LOGON ON ALL TO "pc_33393_dwtg_car";



GRANT LOGON ON ALL TO "ms_33393_dwtg_pro";
GRANT LOGON ON ALL TO "ms_33393_dwtg_pro_vip";




-------------------------------------------------------------------
--SCRIPT PARA FAZER O REVOKE ---- VER BATIMENTO NO GRANT E DO REVOKE 
--pois tem que ter os mesmos usuários.
--------------------------------------------------------------------
SELECT 'REVOKE LOGON ON ALL FROM "' || TRIM(USERNAME) || '";'
FROM	DBC.USERS
WHERE	OWNERNAME NOT IN ('DBC', 'SYSDBA', 'DWPUB', 'DWPUBBACKUP')
AND 	NOT USERNAME IN (
SELECT	USERNAME
FROM	DBC.LOGONRULES
WHERE	LOGONSTATUS = 'R'
)
ORDER BY 1
;

REVOKE LOGON ON ALL FROM "DEBORA";
REVOKE LOGON ON ALL FROM "C01689999195";
REVOKE LOGON ON ALL FROM "C70653186134";
REVOKE LOGON ON ALL FROM "C78921619100";
REVOKE LOGON ON ALL FROM "D00465033318";
REVOKE LOGON ON ALL FROM "D12009415353";
REVOKE LOGON ON ALL FROM "D36899038315";
REVOKE LOGON ON ALL FROM "D41410459349";
REVOKE LOGON ON ALL FROM "D42250110387";
REVOKE LOGON ON ALL FROM "D42741815372";
REVOKE LOGON ON ALL FROM "D46232133315";
REVOKE LOGON ON ALL FROM "D56804253353";
REVOKE LOGON ON ALL FROM "D63872269372";
REVOKE LOGON ON ALL FROM "D69992282304";
REVOKE LOGON ON ALL FROM "D70653186134";
REVOKE LOGON ON ALL FROM "D72291869353";
REVOKE LOGON ON ALL FROM "D77017714334";
REVOKE LOGON ON ALL FROM "D78161550506";
REVOKE LOGON ON ALL FROM "D78886562349";
REVOKE LOGON ON ALL FROM "D80469060344";
REVOKE LOGON ON ALL FROM "D81657617300";
REVOKE LOGON ON ALL FROM "D82200424353";
REVOKE LOGON ON ALL FROM "D91412706300";
REVOKE LOGON ON ALL FROM "dtl_10593_dwtg_pro_externo";
REVOKE LOGON ON ALL FROM "jv_33393_dwtg_pro_interno";
REVOKE LOGON ON ALL FROM "mstrdesdwtg";
REVOKE LOGON ON ALL FROM "ms_33393_dwtg_hom";
REVOKE LOGON ON ALL FROM "ms_33393_dwtg_pro";
REVOKE LOGON ON ALL FROM "ms_33393_dwtg_pro_temp";
REVOKE LOGON ON ALL FROM "ms_33393_dwtg_pro_vip";
REVOKE LOGON ON ALL FROM "pctrdesdwtg";
REVOKE LOGON ON ALL FROM "mstrdesdwtg_mart";
REVOKE LOGON ON ALL FROM "ms_33393_dwtg_pro";
REVOKE LOGON ON ALL FROM "ms_33393_dwtg_pro_vip";
REVOKE LOGON ON ALL FROM "pctrhomdwtg";
REVOKE LOGON ON ALL FROM "pc_33393_dwtg_car";
REVOKE LOGON ON ALL FROM "jv_33393_dwtg_pro_externo";


--PARA BLOQUEAR OS USUARIOS DE DESENVOLVIMENTO NO BANCO
REVOKE LOGON ON ALL FROM "pctrdesdwtg";
REVOKE LOGON ON ALL 
FROM "mstrdesdwtg_mart";
REVOKE LOGON ON ALL FROM "mstrdesdwtg";
REVOKE LOGON ON ALL FROM "D00465033318";
REVOKE LOGON ON ALL FROM "D12009415353";
REVOKE LOGON ON ALL FROM "D36899038315";
REVOKE LOGON ON ALL FROM "D41410459349";
REVOKE LOGON ON ALL FROM "D42250110387";
REVOKE LOGON ON ALL FROM "D42741815372";
REVOKE LOGON ON ALL FROM "D46232133315";
REVOKE LOGON ON ALL FROM "D56804253353";
REVOKE LOGON ON ALL FROM "D63872269372";
REVOKE LOGON ON ALL FROM "D69992282304";
REVOKE LOGON ON ALL FROM "D70653186134";
REVOKE LOGON ON ALL FROM "D72291869353";
REVOKE LOGON ON ALL FROM "D77017714334";
REVOKE LOGON ON ALL FROM "D78161550506";
REVOKE LOGON ON ALL FROM "D78886562349";
REVOKE LOGON ON ALL FROM "D80469060344";
REVOKE LOGON ON ALL FROM "D81657617300";
REVOKE LOGON ON ALL FROM "D82200424353";
REVOKE LOGON ON ALL FROM "D91412706300";


--------------------------------------------------------------------
RODAR DEPOIS DO GRANT PARA VER SE TEM ALGUÉM BLOQUEADO COM REVOKE.
SÓ TEM QUE TER O JV EXTERNO.. O RESTO NÃO TEM QUE APARECER
--------------------------------------------------------------------
SELECT	*
FROM	DBC.LOGONRULES
WHERE	LOGONSTATUS = 'R'
ORDER BY USERNAME
;


--DEPOIS DO REVOKE FAZER O BACKUP DBC ou DBC DICionário com o arquivo arc no servidor .40 de nome: 
