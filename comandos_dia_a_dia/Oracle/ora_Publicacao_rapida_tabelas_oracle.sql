--PUBLICAÇÃO RÁPIDA 
--observar tamanho das tabelas se for pequenas pode publicar normalmente
--se for grande, tem que retirar os indices e depois recriá-los.


SQL> select name from v$database;

NAME
---------------------------
WHPRO130

avalie se precisa truncar ou não.

truncate Table AFIS.WF_AFIS_CMDO

insert into AFIS.WF_AFIS_CMDO nologging select * from AFIS.WF_AFIS_CMDO@DBL_WHDES130;

commit;



