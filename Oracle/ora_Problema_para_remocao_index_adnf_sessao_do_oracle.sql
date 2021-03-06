--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
--SERVIÇO PARA RESOLVER SESSÕES INATIVAS NA ETAPA 811 DO ADUANEIRO 
--FOI REMOVIDO OS INDICES E DEPOIS RECRIADO PARA DEPOIS RODAR NOVAMENTE NO CONTROLM A ETAPA811
-VAMOS VER SE VAI FUNCIONAR.

--OBSERVAÇÃO:

  AS VEZES AS SESSÕES NÃO SÃO MORTAS NA MAQUINA POR QUE ESTÃO RODANDO NA OUTRA DO CLUSTER PDW03 E O PDW032


--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


09:56:34 DWPUB:pdw031 > @ind
Owner  :>ADNF
Tabela :>WF_IMPORT_PROD_TAB

INDICES 		       INDEX_T PARTI STATUS		      COLUNA					 POSITION UNIQUENESS		      TABLESPACE_NAME	   PARTI ANALYZE	      DEGREE	  INI_TRANS
--==ok criado============================================================
------------------------------ ------- ----- ------------------------ ---------------------------------------- ---------- --------------------------- -------------------- ----- -------------------- ---------- ----------
IMP_ANO_DESEMB_PROD_EXPDR_BT   NORMAL  NO    UNUSABLE		      ANO_DESEMB					1 NONUNIQUE		      TB_21797_ADNF_IND_01 NO	 19/12/16 23:05:14    2 		  5
			       NORMAL  NO    UNUSABLE		      NR_IMPDR_EXPDR					2 NONUNIQUE		      TB_21797_ADNF_IND_01 NO	 19/12/16 23:05:14    2 		  5

 CREATE INDEX "ADNF"."IMP_ANO_DESEMB_PROD_EXPDR_BT" ON "ADNF"."WF_IMPORT_PROD_TAB" ("ANO_DESEMB", "NR_IMPDR_EXPDR")
  PCTFREE 1 INITRANS 5 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TB_21797_ADNF_IND_01"
  PARALLEL (DEGREE 2 INSTANCES 2)  ;


--==ok criado============================================================
IMP_MES_DESEMB_PROD_EXPDR_BT   NORMAL  NO    UNUSABLE		      NR_MES_DESEMB					1 NONUNIQUE		      TB_21797_ADNF_IND_01 NO	 19/12/16 23:05:24    2 		  5
			       NORMAL  NO    UNUSABLE		      NR_IMPDR_EXPDR					2 NONUNIQUE		      TB_21797_ADNF_IND_01 NO	 19/12/16 23:05:24    2 		  5

CREATE INDEX "ADNF"."IMP_MES_DESEMB_PROD_EXPDR_BT" ON "ADNF"."WF_IMPORT_PROD_TAB" ("NR_MES_DESEMB", "NR_IMPDR_EXPDR")
  PCTFREE 1 INITRANS 5 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TB_21797_ADNF_IND_01"
  PARALLEL (DEGREE 2 INSTANCES 2)  ;


--=criando=============================================================
IMP_PROD_NR_ADICAO_PROD_PK     NORMAL  NO    UNUSABLE		      NR_ADICAO 					1 NONUNIQUE		      TB_21797_ADNF_IND_01 NO	 19/12/16 23:05:27    2 		  5
			       NORMAL  NO    UNUSABLE		      NR_PRODUTO_IMP					2 NONUNIQUE		      TB_21797_ADNF_IND_01 NO	 19/12/16 23:05:27    2 		  5

 CREATE INDEX "ADNF"."IMP_PROD_NR_ADICAO_PROD_PK" ON "ADNF"."WF_IMPORT_PROD_TAB" ("NR_ADICAO", "NR_PRODUTO_IMP")
  PCTFREE 1 INITRANS 5 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TB_21797_ADNF_IND_01"
  PARALLEL (DEGREE 2 INSTANCES 2)  ;


--ok criado==============================================================
IPR1_ANO1_BT		       NORMAL  NO    UNUSABLE		      ANO_DESEMB					1 NONUNIQUE		      TB_21797_ADNF_IND_01 NO	 19/12/16 23:05:31    2 		  5
--------------------------------------------------------
--  DDL for Index IPR1_ANO1_BT
--------------------------------------------------------

  CREATE INDEX "ADNF"."IPR1_ANO1_BT" ON "ADNF"."WF_IMPORT_PROD_TAB" ("ANO_DESEMB") 
  PCTFREE 1 INITRANS 5 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TB_21797_ADNF_IND_01" 
  PARALLEL (DEGREE 2 INSTANCES 2) ;


  ALTER INDEX "ADNF"."IPR1_ANO1_BT"  UNUSABLE;

--=OK criado===========================================================
IPR1_NR_ADICAO_BT	       NORMAL  NO    UNUSABLE		      NR_ADICAO 					1 NONUNIQUE		      TB_21797_ADNF_IND_01 NO	 19/12/16 23:05:35    2 		  5

CREATE INDEX "ADNF"."IPR1_NR_ADICAO_BT" ON "ADNF"."WF_IMPORT_PROD_TAB" ("NR_ADICAO")
  PCTFREE 1 INITRANS 5 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TB_21797_ADNF_IND_01"
  PARALLEL (DEGREE 2 INSTANCES 2)  ;
--ok criado==============================================================

TESTE_ANO_EMP_BT	       NORMAL  NO    UNUSABLE		      NR_MES_REGIS					1 NONUNIQUE		      TB_21797_ADNF_IND_01 NO	 19/12/16 23:05:46    2 		 50
			       NORMAL  NO    UNUSABLE		      NR_IMPDR_EXPDR					2 NONUNIQUE		      TB_21797_ADNF_IND_01 NO	 19/12/16 23:05:46    2 		 50

CREATE INDEX "ADNF"."TESTE_ANO_EMP_BT" ON "ADNF"."WF_IMPORT_PROD_TAB" ("NR_MES_REGIS", "NR_IMPDR_EXPDR")
  PCTFREE 1 INITRANS 5 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TB_21797_ADNF_IND_01"
  PARALLEL (DEGREE 2 INSTANCES 2)  ;


--ok criado=====================================================
WF_IMPORT_PROD_TAB_PK	       NORMAL  NO    UNUSABLE		      NR_PRODUTO_IMP					1 UNIQUE		      TB_21797_ADNF_IND_01 NO	 19/12/16 23:04:50    2 		 10

 CREATE UNIQUE INDEX "ADNF"."WF_IMPORT_PROD_TAB_PK" ON "ADNF"."WF_IMPORT_PROD_TAB" ("NR_PRODUTO_IMP")
  PCTFREE 1 INITRANS 10 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TB_21797_ADNF_IND_01"
  PARALLEL (DEGREE 2 INSTANCES 2) ;

  ALTER INDEX "ADNF"."WF_IMPORT_PROD_TAB_PK"  UNUSABLE;
--==============================================================



DROP INDEX ADNF.IMP_ANO_DESEMB_PROD_EXPDR_BT;

DROP INDEX ADNF.IMP_MES_DESEMB_PROD_EXPDR_BT;

DROP INDEX ADNF.IPR1_ANO1_BT;

DROP INDEX ADNF.IPR1_NR_ADICAO_BT;

DROP INDEX ADNF.TESTE_ANO_EMP_BT;

DROP INDEX ADNF.WF_IMPORT_PROD_TAB_PK;

DROP INDEX ADNF.IMP_PROD_NR_ADICAO_PROD_PK;


alter system kill session '2146,6555' immediate;

=========================================================================================================
--comando para ver objertos locados no oracle

col objeto for a25
col ora_user for a25
col os_user for a15

 select substr(o.object_name,1,25)  objeto,
       l.session_id                     session_id,
       l.oracle_username                ora_user,
       l.os_user_name                   os_user
from   dba_objects o, v$locked_object l
where  l.object_id = o.object_id
order by 1,3,4;

--MAGALHAES USOU O ENTERPRISE MANAGER PARA MATAR SESSOES ZUMBIS DO ANDF E CONSEGUIU NA MAQUINA 2 DO PDW032 E NÃO NÁ 1
--O ENTERPRISE MANAGER FUNCIONOU NO ENTREW2 EXECUTANDO COMO ADMINISTADOR E VÁ COM O BOTÃO DIREITO EM CIMA DA INSTANCIA E ABRA O MENU SESSOES
--AI VOCE PROCURA AS SESSOES QUE ESTÃO EXECUTANDO E TENTANDO EXECUTAR O QUE VOCÊ ESTÁ PROCURANDO.


alter table ADNF.WF_IMPORT_PROD_TAB drop constraint WF_IMPORT_PROD_TAB_PK cascade;


