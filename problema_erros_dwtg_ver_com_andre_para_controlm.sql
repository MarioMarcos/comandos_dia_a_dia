dwpub@MAXSERPRO01-1-16:/data/dwpub/CONTROLMDWTGPRO> ./REPLICAR_DBPRO_FATOS_OTHERS.SH
Fri May 31 09:33:19 -03 2019
BTEQ 15.10.01.14 Fri May 31 09:33:19 2019 PID: 8234
 
+---------+---------+---------+---------+---------+---------+---------+----

.LOGON dbc/dbc,

 *** Logon successfully completed.
 *** Teradata Database Release is 16.10.02.11                   
 *** Teradata Database Version is 16.10.02.13                     
 *** Transaction Semantics are BTET.
 *** Session Character Set Name is 'ASCII'.
 
 *** Total elapsed time was 5 seconds.
 
+---------+---------+---------+---------+---------+---------+---------+----

.SET PAGELENGTH 1000;
+---------+---------+---------+---------+---------+---------+---------+----
.SET WIDTH 1000;
+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-

.OS rm -f /data/dwpub/CONTROLMDWTGPRO/log/replicar_fatos_others_2019_05_31_09:33:19.log;
+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
.EXPORT report file = /data/dwpub/CONTROLMDWTGPRO/log/replicar_fatos_others_2019_05_31_09:33:19.log;
 *** To reset export, type .EXPORT RESET
+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-

database dbpro_33393_dwtg;

 *** New default database accepted. 
 *** Total elapsed time was 1 second.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-

drop index (ID_ANO_PAGEF) on dbpro_33393_dwtg.wf_documento;
 *** Failure 3526 The specified index does not exist.
                Statement# 1, Info =0 

 *** Total elapsed time was 1 second.

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
drop index (ID_MES_PAGEF) on dbpro_33393_dwtg.wf_documento;
 *** Failure 3526 The specified index does not exist.
                Statement# 1, Info =0 

 *** Total elapsed time was 1 second.

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-

delete from dbpro_33393_dwtg.WF_ACOM_ORCAMENTARIO_LOGA;

 *** Delete completed. 339208 rows removed. 
 *** Total elapsed time was 1 second.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
delete from dbpro_33393_dwtg.WF_ACOM_ORCAMENTARIO_PO;

 *** Delete completed. 24070 rows removed. 
 *** Total elapsed time was 1 second.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
delete from dbpro_33393_dwtg.WF_ATRIBUTO_PERTINENTE;

 *** Delete completed. No rows removed. 
 *** Total elapsed time was 1 second.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
delete from dbpro_33393_dwtg.WF_CUSTO_DIRETO;

 *** Delete completed. 27439985 rows removed. 
 *** Total elapsed time was 1 second.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
delete from dbpro_33393_dwtg.WF_DOCUMENTO;

 *** Delete completed. 908336214 rows removed. 
 *** Total elapsed time was 1 second.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
delete from dbpro_33393_dwtg.WF_DOC_NE;

 *** Delete completed. 45690923 rows removed. 
 *** Total elapsed time was 1 second.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
delete from dbpro_33393_dwtg.WF_ITEM_CENTRO_CUSTO;

 *** Delete completed. 16491117 rows removed. 
 *** Total elapsed time was 1 second.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
delete from dbpro_33393_dwtg.WF_PAGAMENTO where id_ano_emissao_doc in (2019);

 *** Delete completed. 4138545 rows removed. 
 *** Total elapsed time was 2 seconds.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
delete from dbpro_33393_dwtg.WF_PENSIONISTA_SIAPE_CUSTO;

 *** Delete completed. No rows removed. 
 *** Total elapsed time was 1 second.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
delete from dbpro_33393_dwtg.WF_SERVIDOR_SIAPE_CUSTO;

 *** Delete completed. No rows removed. 
 *** Total elapsed time was 1 second.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
delete from dbpro_33393_dwtg.WF_PENSIONISTA_SIAPE_CUSTO_01;

 *** Delete completed. No rows removed. 
 *** Total elapsed time was 1 second.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
delete from dbpro_33393_dwtg.WF_SERVIDOR_SIAPE_CUSTO_01;

 *** Delete completed. No rows removed. 
 *** Total elapsed time was 1 second.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-

insert into dbpro_33393_dwtg.WF_ACOM_ORCAMENTARIO_LOGA select * from  dbcar_33393_dwtg.WF_ACOM_ORCAMENTARIO_LOGA;

 *** Insert completed. 339208 rows added. 
 *** Total elapsed time was 1 second.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
insert into dbpro_33393_dwtg.WF_ACOM_ORCAMENTARIO_PO select * from  dbcar_33393_dwtg.WF_ACOM_ORCAMENTARIO_PO;

 *** Insert completed. 24070 rows added. 
 *** Total elapsed time was 1 second.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
insert into dbpro_33393_dwtg.WF_ATRIBUTO_PERTINENTE select * from  dbcar_33393_dwtg.WF_ATRIBUTO_PERTINENTE;

 *** Insert completed. No rows added. 
 *** Total elapsed time was 1 second.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
insert into dbpro_33393_dwtg.WF_CUSTO_DIRETO select * from  dbcar_33393_dwtg.WF_CUSTO_DIRETO;

 *** Insert completed. 27439985 rows added. 
 *** Total elapsed time was 2 seconds.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
insert into dbpro_33393_dwtg.WF_DOCUMENTO select * from  dbcar_33393_dwtg.WF_DOCUMENTO;

 *** Insert completed. 908336214 rows added. 
 *** Total elapsed time was one minute and 31 seconds.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
insert into dbpro_33393_dwtg.WF_DOC_NE select * from  dbcar_33393_dwtg.WF_DOC_NE;

 *** Insert completed. 45690923 rows added. 
 *** Total elapsed time was 12 seconds.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
insert into dbpro_33393_dwtg.WF_ITEM_CENTRO_CUSTO select * from  dbcar_33393_dwtg.WF_ITEM_CENTRO_CUSTO;

 *** Insert completed. 16491117 rows added. 
 *** Total elapsed time was 2 seconds.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
insert into dbpro_33393_dwtg.WF_PAGAMENTO select * from  dbcar_33393_dwtg.WF_PAGAMENTO where id_ano_emissao_doc in (2019);

 *** Insert completed. 4138545 rows added. 
 *** Total elapsed time was 9 seconds.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
insert into dbpro_33393_dwtg.WF_PENSIONISTA_SIAPE_CUSTO select * from dbcar_33393_dwtg.WF_PENSIONISTA_SIAPE_CUSTO;

 *** Insert completed. 198701573 rows added. 
 *** Total elapsed time was 54 seconds.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
insert into dbpro_33393_dwtg.WF_SERVIDOR_SIAPE_CUSTO select * from dbcar_33393_dwtg.WF_SERVIDOR_SIAPE_CUSTO;

 *** Insert completed. 1704291941 rows added. 
 *** Total elapsed time was 10 minutes and 15 seconds.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
insert into dbpro_33393_dwtg.WF_PENSIONISTA_SIAPE_CUSTO_01 select * from dbcar_33393_dwtg.WF_PENSIONISTA_SIAPE_CUSTO_01;

 *** Insert completed. 42967670 rows added. 
 *** Total elapsed time was 11 seconds.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
insert into dbpro_33393_dwtg.WF_SERVIDOR_SIAPE_CUSTO_01 select * from dbcar_33393_dwtg.WF_SERVIDOR_SIAPE_CUSTO_01;

 *** Insert completed. 187989956 rows added. 
 *** Total elapsed time was 49 seconds.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-

-- indices secundarios

CREATE INDEX(ID_ANO_PAGEF) ON dbpro_33393_dwtg.wf_documento;

 *** Index has been created. 
 *** Total elapsed time was 45 seconds.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
COLLECT STATISTICS ON dbpro_33393_dwtg.wf_documento index(ID_ANO_PAGEF);

 *** Update completed. 2 rows changed. 
 *** Total elapsed time was 1 second.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-

CREATE INDEX(ID_MES_PAGEF) ON dbpro_33393_dwtg.wf_documento;

 *** Index has been created. 
 *** Total elapsed time was 33 seconds.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
COLLECT STATISTICS ON dbpro_33393_dwtg.wf_documento index(ID_MES_PAGEF);

 *** Update completed. 2 rows changed. 
 *** Total elapsed time was 1 second.


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-

.EXPORT reset
 *** Output returned to console.
+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-

.EXIT
 *** You are now logged off from the DBC.
 *** Exiting BTEQ...
 *** RC (return code) = 8 
Fri May 31 09:48:52 -03 2019
