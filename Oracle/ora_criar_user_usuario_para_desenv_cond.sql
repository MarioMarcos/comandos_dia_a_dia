------------------------------------------------------------------------------------------------------
--não colocar o _ no nome do schema MS e também o user tem que ser com 4 dígitos senão o manutencao não pega
--abaixo está errado, mas o André resolveu ficou desse jeito contudo não é para fazer assim.

--CRIAR USER, USUARIOS DO DESENVOLVIMENTO, PRODUÇÃO, PREPRODUCAO
--NESTE CASO FOI O DO DESENVOLVIMENTO


CREATE USER "MS_07996_SNSP_SEG_DES" IDENTIFIED BY "456descond321$bsawh"
      DEFAULT TABLESPACE "TB_07996_SNSP_USR_01"
      TEMPORARY TABLESPACE "TEMP"
      PROFILE "FERRAMENTA";

GRANT CONNECT, RESOURCE, unlimited tablespace  TO "MS_07996_SNSP_SEG_DES";

CREATE USER "MS_07996_SNSP_AUD_DES" IDENTIFIED BY "456descond321$bsawh"
      DEFAULT TABLESPACE "TB_07996_SNSP_USR_01"
      TEMPORARY TABLESPACE "TEMP"
      PROFILE "FERRAMENTA";

GRANT CONNECT, RESOURCE, unlimited tablespace TO "MS_07996_SNSP_AUD_DES";

--ROLES 

insert into DWPUB.V1_CONTROLE_TEMAS (OWNER, COD_SERVICO, PREFIXO_TABLESPACE) values('SNSP_SEG', '07996', 'TB_07996_SNSP');

insert into DWPUB.V1_CONTROLE_FERRAMENTAS (OWNER_FERRAMENTA, OWNER_SCHEMA, DEFAULT_TABLESPACE) values('MS_07996_SNSP_SEG_DES', 'SNSP_SEG', 'TB_07996_SNSP_USR_01');

só precisa criar o user primeiro da ferramenta

como chamar a rotina para dar previlégios no sqlplus quando você trabalhar no banco após um import por exemplo

DWPUB@whpro130 > set serveroutput on
DWPUB@whpro130 > EXEC MANUTENCAO_GRANTS_FERRAMENTA()
