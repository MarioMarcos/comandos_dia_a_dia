--PUBLICAÇÃO DE TABELA MANUALMENTE FULL 
--CUIDADO COM INDICES
--CUIDADO COM CONSTRAINTS
--CUIDADO COM TAMANHO DA TABELA.



select count (*) from SCND.WF_SCND_PCPO@DBL_DBL_DWCRG36;

select count (*) from SCND.WF_SCND_PCPO;

Banco de carga
create or replace view V_SIGPGFN_SIG_RECEITA_PRINC as select * from SIGPGFN.SIG_RECEITA_PRINC;

Produção
truncate table SIGPGFN.SIG_RECEITA_PRINC;

insert /*+ apppend */ into SIGPGFN.SIG_RECEITA_PRINC select * from V_SIGPGFN_SIG_RECEITA_PRINC@DBL_DWCRG36;
COMMIT;




publicação scnd exemplo======================================================================================

WF_SCND_LIBE
WF_SCND_CEMI
WD_SCND_PLACA
WD_SCND_PLACA_EXIG_SUSP
WD_SCND_PLACA_IMP
WD_SCND_PLACA_IRREG_CAD
WD_SCND_PLACA_IRREG_DEB
WD_SCND_PLACA_IRREG_DEB_2
WD_SCND_PLACA_IRREG_PARC
WD_SCND_PLACA_EXIG_SUSP_2
WD_SCND_PLACA_IRREG_DECL 




WF_SCND_PCPO
WF_SCND_PLIB
WD_SCND_PLIB_SIEF_SIT
WD_SCND_PLIB_CCPJ_SIT
WD_SCND_PLIB_CCPF_SIT
WD_SCND_PLIB_EXIG_SIT
WD_SCND_PLIB_ITR_SIT
WD_SCND_PLIB_PROFISC_SIT 


=============================================================
--DESENVOLVIMENTO
select count (*) from SCND.WF_SCND_PCPO@DBL_DWD01.WORLD;

select count (*) from SCND.WF_SCND_PCPO;

--HOMOLOGACAO
truncate table SCND.WF_SCND_PCPO;

insert /*+ apppend */ into SCND.WF_SCND_PCPO select * from SCND.WF_SCND_PCPO@DBL_DWD01.WORLD;
COMMIT;

=================================================================================================

=============================================================
--DESENVOLVIMENTO
select count (*) from SCND.WF_SCND_PLIB@DBL_DWD01.WORLD;

select count (*) from SCND.WF_SCND_PLIB;

--HOMOLOGACAO
truncate table SCND.WF_SCND_PLIB;

insert /*+ apppend */ into SCND.WF_SCND_PLIB select * from SCND.WF_SCND_PLIB@DBL_DWD01.WORLD;
COMMIT;

=================================================================================================
=============================================================
--DESENVOLVIMENTO
select count (*) from SCND.WD_SCND_PLIB_SIEF_SIT@DBL_DWD01.WORLD;

select count (*) from SCND.WD_SCND_PLIB_SIEF_SIT;

--HOMOLOGACAO
truncate table SCND.WD_SCND_PLIB_SIEF_SIT;

insert /*+ apppend */ into SCND.WD_SCND_PLIB_SIEF_SIT select * from SCND.WD_SCND_PLIB_SIEF_SIT@DBL_DWD01.WORLD;
COMMIT;

=================================================================================================
=============================================================
--DESENVOLVIMENTO
select count (*) from SCND.WD_SCND_PLIB_CCPJ_SIT@DBL_DWD01.WORLD;

select count (*) from SCND.WD_SCND_PLIB_CCPJ_SIT;

--HOMOLOGACAO
truncate table SCND.WD_SCND_PLIB_CCPJ_SIT;

insert /*+ apppend */ into SCND.WD_SCND_PLIB_CCPJ_SIT select * from SCND.WD_SCND_PLIB_CCPJ_SIT@DBL_DWD01.WORLD;
COMMIT;

=================================================================================================
--DESENVOLVIMENTO
select count (*) from SCND.WD_SCND_PLIB_CCPF_SIT@DBL_DWD01.WORLD;

select count (*) from SCND.WD_SCND_PLIB_CCPF_SIT;

--HOMOLOGACAO
truncate table SCND.WD_SCND_PLIB_CCPF_SIT;

insert /*+ apppend */ into SCND.WD_SCND_PLIB_CCPF_SIT select * from SCND.WD_SCND_PLIB_CCPF_SIT@DBL_DWD01.WORLD;
COMMIT;

=================================================================================================
--DESENVOLVIMENTO
select count (*) from SCND.WD_SCND_PLIB_EXIG_SIT@DBL_DWD01.WORLD;

select count (*) from SCND.WD_SCND_PLIB_EXIG_SIT;

--HOMOLOGACAO
truncate table SCND.WD_SCND_PLIB_EXIG_SIT;

insert /*+ apppend */ into SCND.WD_SCND_PLIB_EXIG_SIT select * from SCND.WD_SCND_PLIB_EXIG_SIT@DBL_DWD01.WORLD;
COMMIT;

=================================================================================================
--DESENVOLVIMENTO
select count (*) from SCND.WD_SCND_PLIB_ITR_SIT@DBL_DWD01.WORLD;

select count (*) from SCND.WD_SCND_PLIB_ITR_SIT;

--HOMOLOGACAO
truncate table SCND.WD_SCND_PLIB_ITR_SIT;

insert /*+ apppend */ into SCND.WD_SCND_PLIB_ITR_SIT select * from SCND.WD_SCND_PLIB_ITR_SIT@DBL_DWD01.WORLD;
COMMIT;

=================================================================================================
--DESENVOLVIMENTO
select count (*) from SCND.WD_SCND_PLIB_PROFISC_SIT@DBL_DWD01.WORLD;

select count (*) from SCND.WD_SCND_PLIB_PROFISC_SIT ;

--HOMOLOGACAO
truncate table SCND.WD_SCND_PLIB_PROFISC_SIT ;

insert /*+ apppend */ into SCND.WD_SCND_PLIB_PROFISC_SIT  select * from SCND.WD_SCND_PLIB_PROFISC_SIT@DBL_DWD01.WORLD;
COMMIT;

=================================================================================================
MCPJ
select count (*) from  MCPJ.WD_MCPJ_SMSGS@DBL_PUBLICA_VIR.WORLD;
select count (*) from  MCPJ.WD_MCPJ_SMSGS;

Banco de carga
create or replace view V_MCPJ_WD_MCPJ_SMSGS as select * from MCPJ.WD_MCPJ_SMSGS;

Produção
truncate table MCPJ.WD_MCPJ_SMSGS;

insert /*+ apppend */ into MCPJ.WD_MCPJ_SMSGS select * from V_MCPJ_WD_MCPJ_SMSGS@DBL_PUBLICA_VIR.WORLD;
COMMIT;





