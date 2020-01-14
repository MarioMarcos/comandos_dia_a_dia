MODELO PARA ABERTURA DE INCIDENTE PELA CSS -  POR GIOVANNA

enviar para:
--------
css
listacdgdb
monitoracao
centro de comando bsa
lista cdsporac
--------
CSS,
gentileza abrir incidente de alta severidade ao grupo ORACLE SPO.

Ambiente produção
serviço DW RFB
código 21761
banco WHPRO130

Pedimos a gentileza de verificar lentidão extrema no banco de produção do DW RFB, à ponto de impossibilitar o login no mesmo.


===================================================================================~
modelo publicação simples tabela pequena e sem index - 

Atendido.


SQL> select name from v$database;

NAME
---------------------------
WHDES130


SQL>     truncate table DIME.WD_RC_RECEITAS;
truncate table DIME.WD_RC_REC_VARIACAO;

Table truncated.

SQL> 
Table truncated.

SQL> insert into DIME.WD_RC_RECEITAS nologging select * from DIME.WD_RC_RECEITAS@dbl_whcar130;
commit;
insert into DIME.WD_RC_REC_VARIACAO nologging select * from DIME.WD_RC_REC_VARIACAO@dbl_whcar130;
commit;
6264 rows created.

SQL> 
Commit complete.

SQL> 
3083 rows created.

SQL> 

Commit complete.





################################-BRASILIA-########################################

===================================================================================
-----homologação condomínio

#######
CSS, boa tarde!

abrir como Solicitação de serviços.

Favor encaminhar para GMCDDFCTM.
Boa tarde!
Favor executar job no Control-M conforme informações abaixo.
Rotina: CRIA_JOB
Horário de Submissão: hoje (30/07/2018), imediato, assim que possível.
Código de serviço - 93031
Servidor: dfcdexavbi0001 - 161.148.236.115 - WHPRE101
Ambiente: Homologação
Prezados, Favor executar o CRIA_JOB (/pre_07643_bicondom_tra/CONTROLM/), hoje (30/07/2018), imediato, assim que possível,  para publicação na Pré Producao.
Qualquer dúvida e/ou erro durante o processamento, favor entrar em contato comigo.


#######

===================================================================================

-----produção condominio



-----GENERICO - PRINCIAL - BRASILIA - 93031
CSS, Não é mudança!

Boa tarde. 

Favor executar job no Control-M conforme informações abaixo. 

Rotina: CRIA_JOB_CONDOMINIO 
Horário de Submissão: 18:00 
Código de serviço - 93031 
Servidor: dfcdcluv9001 - WHPRO103
Ambiente: Produção 

Prezados, Favor executar o CRIA_JOB_CONDOMINIO (/pro_07643_bicondom_tra/CONTROLM), da tabela T9303100, hoje (23/01/2018) às 18h para publicação do DW na Produção. 
Qualquer dúvida e/ou erro durante o processamento, favor entrar em contato com o plantão da CDFAD (9265-9448). 

Obrigado.
--------------

-----SIGPGFN - 

CSS, Não é mudança!

Boa tarde!

Esta demanda é uma Solicitação de Serviços.
Favor encaminhar para GMCDDFCTM.

Favor executar job no Control-M conforme informações abaixo.
Rotina: CRIA_JOB
Horário de Submissão: 18:30hs
Código de serviço - 37260
Servidor: dfcdexavbi0003 - 161.148.236.115 - WHPRO103
Ambiente: Produção
Prezados, Favor executar o CRIA_JOB (/pro_07643_bicondom_tra/CONTROLMSIGPGFN), hoje (12/07/2018), para publicação na Produção.
Qualquer dúvida e/ou erro durante o processamento, favor entrar em contato comigo.

--------------





--SIGEPE 

CSS, Não é mudança!

Bom dia!

Esta demanda é uma Solicitação de Serviços.
Favor encaminhar para GMCDDFCTM.

Favor executar job no Control-M conforme informações abaixo. 

Rotina: CRIA_JOB_SIGEPE_PRO.SH
Horário de Submissão: após as 18hs de hoje.
Código de serviço - 06840
Servidor: dfcdexavbi0003 - 161.148.236.115 - WHPRO103
Ambiente: Produção 

Prezados,
Favor executar o CRIA_JOB_SIGEPE_PRO.SH (/pro_07643_bicondom_tra/CONTROLMSIGEPE), hoje (10/01/2018) , após às 18hs, para publicação do DW SIGEPE  na Produção. 
Qualquer dúvida e/ou erro durante o processamento, favor entrar em contato conosco.

-----

-----RENACH

CSS, NÃO é mudança!!

Essa demanda é uma solicitação de serviços.
Favor encaminhar para GMCDDFCTM.
Boa tarde!
Favor executar job no Control-M conforme informações abaixo.
Rotina: CRIA_JOB_RENACH_PRO.SH
Horário de Submissão: imediato
Código de serviço - 39900
Servidor: dfcdexavbi0003 - 161.148.236.115 - WHPRO103
Ambiente: Produção
Prezados, Favor executar o CRIA_JOB_RENACH_PRO.SH (/pro_07643_bicondom_tra/CONTROLMRENACH), hoje (08/02/2018), imediato,  para publicação na Produção.
Qualquer dúvida e/ou erro durante o processamento, favor entrar em contato comigo



----ADUANEIRO BRASILIA - BRASÍLIA

CSS, Não é mudança!

Bom dia!

Esta demanda é uma Solicitação de Serviços.
Favor encaminhar para GMCDDFCTM.
Rotina: Cria_job

Favor executar job no Control-M conforme informações abaixo. 

Rotina: CRIA_JOB
Horário de Submissão: após as 19hs de hoje.
Código de serviço - 36041
Servidor: dfcdexavbi0003 - 161.148.236.115 - WHPRO103
Ambiente: Produção 

Prezados,
Favor executar o CRIA_JOB (/pro_07643_bicondom_tra/CONTROLMCOMEXT), hoje (09/01/2018) , após às 19hs, para publicação do DW ICOMEX  na Produção. 
Qualquer dúvida e/ou erro durante o processamento, favor entrar em contato conosco.


-----AFIS - ACAO FISCAL

Boa tarde.

Atividade deve ser encaminhada para GMCDSPCTM para atendimento.

Solicito a criação de novo job no Control-M para publicação de dados do
DW AFIS na produção do DW RFB Exadata, conforme especificações abaixo:

Máquina: spcdsrvv3012
IP: 10.193.34.96
JOB_NAME: CRIA_JOB_AFIS_PRO
PATH: /opt/approtinas/pro_21761_dwcorp/CONTROLM_AFIS
Script: CRIA_JOB_AFIS_PRO.SH
owner: dwpub
Código de Serviço: 21727
Condição de Saída: LIB-TO-INICIO-AFIS-PRO (STAT)

Periodicidade:
Conectado ao término com sucesso do job final da Carga do DW AFIS,
implantada pela RdM 2017RDM/0000014420.

Qualquer dúvida, favor nos contatar.
Obrigado.

--------

--SSDSPU

CSS, Não é mudança!

Boa tarde!

Esta demanda é uma Solicitação de Serviços.
Favor encaminhar para GMCDDFCTM.

Favor executar job no Control-M conforme informações abaixo.

Rotina: CRIA_JOB
Horário de Submissão: hoje (07/03/2019) às 18:00, assim que possível.
Código de serviço - 35104
Servidor: dfcdexavbi0003 - 161.148.236.113 - WHPRO103
Ambiente: Produção

Prezados, Favor executar os CRIA_JOBs, hoje (07/03/2019) às 18:00, assim que possível, para publicação do DW SPU  na Produção.

/pro_07643_bicondom_tra/CONTROLMGSSDSPU_DIMENSOES - CRIA_JOB_SSDSPU_D_PRO.SH
/pro_07643_bicondom_tra/CONTROLMGSSDSPU_FATOS/ - CRIA_JOB_SSDSPU_F_PRO.SH

Qualquer dúvida e/ou erro durante o processamento, favor entrar em contato.





######################################-SAO PAULO-################################
===================================================================================
-----corporativo

-----GENERICO NÃO PRECISA DE ABRIR SS pois rola todo dia às 22:00 horas.


#######SGPJ - DW SGPJ 
CSS, Não É UMA MUDANÇA!!

Boa noite,

Esta demanda é uma solicitação de serviço.
Favor encaminhar para GMCDSPCTM.

        Rotina: CRIA_JOB_SGPJ.SH
        Horário de Submissão: 22hs de hoje, 11/01/2018
        Código de serviço: 21709
        Table: T21709
        Grupo: BI-SGPJ
        Serviço: DW
        Servidor: spcdsrvv3012  - WHPRO130
        Ambiente: Produção

        Prezados,
        Favor executar o CRIA_JOB_SGPJ.SH (/opt/approtinas/pro_21761_dwcorp/CONTROLM_SGPJ) 22hs de hoje, 11/01/2018, para publicação do DW SGPJ na Produção.
        Qualquer dúvida e / ou erro durante o processamento, favor entrar em contato conosco (61-99265-9448).
------



#######





CSS, boa tarde, 


Solicitação de Publicação de DW - 16/05/2018 - Pré-produção - CRIA_JOB_HOM_EXA

Rotina: CRIA_JOB_HOM_EXA
Horário de Submissão: Assim que possível. Pode ser imediato.
Código de serviço: 21761
Table: T2176199
Grupo: BI-GENERICO-HOM
Serviço: DW 
Servidor: spcdsrvv3012  - WHPRE130
Ambiente: Pré-produção (Homologação)

Prezados,
Favor executar o CRIA_JOB_HOM_EXA (/opt/approtinas/pre_21761_dwcorp/CONTROLM_GENERICO) hoje (16/05/2018) imediato, assim que possível para publicação do DW na Pré-produção (Homologação).
Qualquer dúvida e ou erro durante o processamento, favor entrar em contato com a CDFAD.

Obrigado.
------


-----EPRO QUINZENAL
Boa tarde.

Atividade deve ser encaminhada para GMCDSPCTM para atendimento.

Solicito a criação de novo job no Control-M para publicação de dados do DW EPRO - QUINZENAL na produção do DW RFB Exadata, conforme especificações abaixo:

Máquina: spcdsrvv3012
IP: 10.193.34.96
JOB_NAME: CRIA_JOB_EPRO_QZN_PRO
PATH: /opt/approtinas/pro_21761_dwcorp/CONTROLM_EPRO_QUINZENAL
Script: CRIA_JOB_EPRO_QZN.SH
owner: dwpub
Código de Serviço: 21727
Condição de Saída: LIB-TO-INICIO-EPRO-QZN (STAT)

Periodicidade:
A publicação deve ser realizada após a execução com sucesso do job ENVIA_MSG_QUINZENA, tabela do Control-M T2174836, aplicação DW-EPRO-QUINZENAL.

Qualquer dúvida, favor nos contatar.
Obrigado.
------

----DESENVOLVIMENTO  GENERICO 
CSS, Não É UMA MUDANÇA!!

Boa dia,

Esta demanda é uma solicitação de serviço.
Favor encaminhar para GMCDSPCTM.

        Rotina: CRIA_JOB_GENERICO_DES.SH
        Horário de Submissão: imediato, assim que possível, hoje, 13/07/2018
        Código de serviço: 21761
        Table: T2176199
        Grupo: BI-GENERICO-DES
        Serviço: DW
        Servidor: spcdsrvv3012  - WHDES130
        Ambiente: Desenvolvimento

        Prezados,
        Favor executar o CRIA_JOB_GENERICO_DES.SH (/opt/approtinas/des_21761_dwcorp/CONTROLM_GENERICO) imediato, assim que possível, 17/01/2018, para publicação no Desenvolvimento.
        Qualquer dúvida e / ou erro durante o processamento, favor entrar em contato conosco.

------

----HOMOLOGAÇÃO E DESENVOLVIMENTO JUNTOS 

Boa tarde.
 

Esta demanda é uma Solicitação de Serviços.
Favor encaminhar para GMCDSPCTM.

Rotinas: CRIA_JOB_HOM_EXA e CRIA_JOB_GENERICO_DES
Horário de Submissão: Assim que possível. Pode ser imediato.
Código de serviço: 21761
Table: T2176199
Sub Applications: BI-GENERICO-HOM e BI-GENERICO-DES
Serviço: DW 
Servidor: spcdsrvv3012  - WHPRE130 e WHDES130
Ambiente: Pré-produção (Homologação) e Desenvolvimento

Prezados,
Favor executar os jobs CRIA_JOB_HOM_EXA e CRIA_JOB_GENERICO_DES hoje (23/01/2018) assim que possível para publicação do DW na Pré-produção (Homologação) e no Desenvolvimento.

Qualquer dúvida e ou erro durante o processamento, favor entrar em contato com a CDFAD em horário de expediente (8h às 18h).

Obrigado.

--------

---ADUANEIRO SAO PAULO - SÃO PAULO
CSS, Não é requisição de mudança!!

Boa tarde,
Esta demanda é uma Solicitação de Serviços.

            Favor encaminhar para GMCDSPCTM.

            Horário de Submissão: hoje, 23hs
            Código de serviço - 21797
            Serviço: DW ADUANEIRO
            Servidor: spcdsrvv3012  - 10.193.34.96 - Exatada
            Ambiente: Produção
            Table: T2179799 ( Antiga: T1311399)
            Aplicacao: 21797 (Antiga: DWPUB-ADUANEIRO)
            Grupo: BI-ADUANEIRO
            Job Name: CRIA_JOB_ADUANEIRO
            Script : /opt/approtinas/pro_21761_dwcorp/CONTROLMADUAN/CRIA_JOB_ADUANEIRO.SH

            Prezados,

            Favor executar o CRIA_JOB_ADUANEIRO_ADUANEIRO.SH (/opt/approtinas/pro_21761_dwcorp/CONTROLMADUAN),  hoje, 23hs, 18/01/2018, para publicação do DW ADUANEIRO  na Produção.
            Qualquer dúvida e/ou erro durante o processamento, favor entrar em contato com o plantão da CDSDW (9265-9448).
------


-ARRECADAÇÃO BRUTA - ARRC

CSS, Boa tarde!

Esta demanda é uma Solicitação de Serviços.
Favor encaminhar para GMCDSPCTM.

Rotina: CRIA_JOB_ARRC_BRUTA.SH
Horário de Submissão: 26/02/2018, excepcionalmente, às 21hs.
Código de serviço: 21705
Table: T21705
JOB_NAME: CRIA_JOB_ARRC_BRUTA_EXA
Serviço: DW 
Servidor: spcdsrvv3012  - WHPRO130
Ambiente: Produção 


Passar como parâmetro: 

ANO: 2018
MES: 02
DECENDIO: 2

Prezados,
Favor executar o CRIA_JOB_ARRC_BRUTA.SH (/opt/approtinas/pro_21761_dwcorp/CONTROLMARRC_BRUT) hoje (26/02/2018), excepcionalmente, às 21hs, para publicação do DW  na Produção .
Qualquer dúvida e ou erro durante o processamento, favor entrar em contato.


----DIME-EVENTUAL 

CSS, 

Boa tarde
 
Esta demanda é uma Solicitação de Serviços.
Favor encaminhar para GMCDSPCTM.

Rotinas: CRIA_JOB_DIME_EVENTUAL_PRO
Horário de Submissão: 22:00h.
Código de Serviço: 21702
Table: T2176199
Sub Applications:  21702
Serviço: DW 
Servidor: spcdsrvv3012  -  WHPRO130
Ambiente:  Produção 

Prezados,
Favor executar os jobs CRIA_JOB_DIME_EVENTUAL_PRO,  hoje (16/10/2018) às 22:00h para publicação do DW na produção .

Qualquer dúvida e ou erro durante o processamento, favor entrar em contato com a CDFAD.

Obrigado.



===================================================================================





