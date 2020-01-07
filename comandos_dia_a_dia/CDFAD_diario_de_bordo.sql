======================================================================================
Teradata Setup para configurar o viewpoint - mostrar para o pessoal do relay
======================================================================================
--verificar e corrigir atualização do backup do depois o jatai_bkp serprodrive

DTEXEC /FILE "\"F:\CONTROLM\in\BlocoFinal2.dtsx\"" /CHECKPOINTING OFF /REPORTING E /DECRYPT dwpub*di69

--ver com André se ficou esta senha mesmo ou se ele registrou em algum lugar
user:dtl_10593_extracao_pro
senha: dtl_extracao_456
testado funcional.


/inf_07643_bicondom_exp/EVENTUAL/whpro1031-=================================================================================================================================
00 20 2-31 * * /opt/teradata/tara/server/bin/taralaunch -j diario_full_carga_stn.arc -u administrator -p Admin_tara1
00 20 1 * * /opt/teradata/tara/server/bin/taralaunch -j mensal_full_prod_stn.arc -u administrator -p Admin_tara1

30 17 * * * tar -czvf /home/76455424115/bkp/SerproDrive.bkp.tar.gz /home/76455424115/SerproDrive

00 11 * * * /home/76455424115/bin/teste
=================================================================================
suporte a windows agregate - teradata -----
==============================================================================================
RELATÓRIOS PRIORITÁRIOS TERADATA

18/11/2018 

14:36 X 16:19    ---   PREVISÃO 15:16

08:11 iniciou - terminou 08:51 MELHOR CASO 
11:42 iniciou - termino: 12:32 --PREVISÃO---12:22 PIOR CASO

************************************************************************
cpf victor hugo: 82591580430

01-08-12-19-38-39
12-39-19-01-38-08

-----------------------------------------------
TESTE 4 - VI
A => Insere o texto no fim da linha onde se encontra o cursor
o => Adiciona uma linha vazia abaixo da linha corrente
O => Adiciona uma linha vazia acima da linha corrente
Ctrl + h => Apaga último caracter à esquerda
Ctrl + g => Mostra o nome do arquivo no final da linha - muito util também.


modelo demanda para Mário
Demanda já atendida por Mário Marcos Martins de Souza. Sendo aberta para registro.

-----------------------------------------------------------------------------------------------------------
EDBV - ATÉ A CARGA - 42 HORAS <> 65 HORAS <> sem publicação
-----------------------------------------------------------------------------------------------------------
---teste ver com o Charles se podemos limpar a table_modification no inicio do ETL. a garantia
INCREMENTAL - 

DOCUMENTAÇÃO ORACLE SOMENTE É LIMPA NA COLETA DE STATÍSTICA - 

TESTES - SUGESTÃO SOLANGE 
1-PUBLICAÇÃO ELA VAI NA TABLE MODIFICATION PARA PEGAR APÓS A CARGA  AS PARTIÇÕES QUE SOFRERAM MODIFICAÇÃO
  E AS QUE NÃO SOFRERAM NÃO SERAM PUBLICADAS.
2- OPÇÃO PUBLICAÇÃO FULL SEMPRE.
3- 

--SOLUÇÃO por Charles e Mário Marcos
1-REDUZIR O ESCOPO DA CONSULTA EM SOMENTE AS TABELAS QUE VÃO TER STATÍSTICAS MODIFICADAS.

2-testando aqui em baixo

select distinct TABLE_NAME, to_char(TIMESTAMP,'dd/mm/yyyy hh24:mi') HORARIO, PARTITION_NAME from dba_tab_modifications where table_owner = 'EDBV';

select to_char(TIMESTAMP,'dd/mm/yyyy hh24:mi') HORARIO, INSERTS, UPDATES, DELETES from dba_tab_modifications where TABLE_OWNER='TESTE' and TABLE_NAME='TESTE';










-----------------------------------------------------------------------------------------------------------
######################################################################
********************* DIARIO DE BORDO *******************************
######################################################################
************************************************************************
Gotardo lembrar

MAIO/2019


- 2019SS/0000421004 - 16/05/2019 - pub dime todos
- 2019SS/0000421008 - 16/05/2019 - pub dime
- 2019SS/0000421010 - 16/05/2019 - pub dime


no prazo - 2019SS/0000420107 - 16/05/2019 - pub EPRO
no prazo - 2019SS/0000419624 - 16/05/2019 - pub - dwtg
no prazo - 2019SS/0000381923 - 08/09/2019 - fabio pub EECF vai demorar
no prazo - 2019SS/0000413414 - 14/05/2019 - pub aduaneiro
no prazo - 2019SS/0000410880 - 14/05/2019 - dwtg - exec
no prazo - 2019SS/0000400506 - 10/09/2019 - pub DIME - DES
no prazo - 2019SS/0000399645 - 10/09/2019 - pub DIME - PROD - DES - HOM
no prazo - 2019SS/0000400454 - 10/09/2019 - PUB DIME - PROD - DESEN
no prazo - 2019SS/0000400799 - 10/09/2019 - PUB DIME - PROD - DESEN
no prazo - 2019SS/0000400998 - 10/09/2019 - pub DIME/AFIS 2
no prazo - 2019SS/0000400607 - 10/09/2019 - PUB DIME/AFIS
no prazo - 2019SS/0000393451 - 08/09/2019 - exec snsp
no prazo - 2019SS/0000388488 - 07/09/2019 - pub dime
no prazo - 2019SS/0000381923 - 06/05/2019 - pub EECF
no prazo - 2019SS/0000382026 - 06/05/2019 - PUB SIGPGFN
no prazo - 2019RI/0000080404 - 06/05/2019 - incidente DWTG lentidão.
no prazo - 2019SS/0000376845 - 06/05/2019 - exec so
no prazo - 2019AT/0000027980 - 06/05/2019 - atv. bigfie ACDE
no prazo - 2019SS/0000378558 - 03/05/2019 - pub DIME todos
no prazo - 2019SS/0000378582 - 03/05/2019 - pub DIME todos
no prazo - 2019SS/0000378602 - 03/05/2019 - pub DIME todos
no prazo - 2019SS/0000377778 - 03/05/2019 - PUB sgpf
no prazo - 2019SS/0000379299 - 03/05/2019 - exec script
no prazo - 2019SS/0000377827 - 03/05/2019 - pub dwtg
no prazo - 2019SS/0000376844 - 03/05/2019 - exec script
fp prazo - 2019SS/0000338456 - 22/04/2019 - dwtg - TABELAS LRF
no prazo - 2019SS/0000370045 - 02/05/2019 - pub dime TODOS
no prazo - 2019SS/0000370059 - 02/05/2019 - PUB DIME DESEN
no prazo - 2019SS/0000370068 - 02/05/2019 - PUB DIME PROD
no prazo - 2019SS/0000374671 - 02/05/2019 - PUB IRPF
no prazo - 2019SS/0000371480 - 02/05/2019 - SCRIPT EECF




ABRIL/2019

no prazo - 2019SS/0000286490 - 04/04/2019 - exec script
fp prazo - 2019SS/0000241369 - 03/04/2019 - trb com Charles Oracle
no prazo - 2019SS/0000280490 - 03/04/2019 - exec script


MARÇO/2019
no prazo - 2019SS/0000263071 - 28/03/2019 - pub dime
no prazo - 2019SS/0000263052 - 28/03/2019 - pub dime
no prazo - 2019SS/0000263905 - 28/03/2019 - pub sgpf
no prazo - 2019SS/0000262970 - 28/03/2019 - exec dwtg
no prazo - 2019SS/0000262539 - 28/03/2019 - DWTG VICTOR CGU
no prazo - 2019SS/0000259089 - 27/03/2019 - exec dwtg
no prazo - 2019AT/0000019900 - 27/03/2019 - rdm cancelada
no prazo - 2019SS/0000252739 - 26/03/2019 - pub DIME DESE
no prazo - 2019SS/0000252757 - 26/03/2019 - pub DIME prod
no prazo - 2019SS/0000234747 - 20/03/2019 - cria user
no prazo - 2019SS/0000234831 - 20/03/2019 - exec script
no prazo - 2019SS/0000230245 - 19/03/2019 - pub sigpgfn
no prazo - 2019SS/0000228195 - 19/03/2019 - exec script
no prazo - 2019SS/0000228490 - 19/03/2019 - exec script
no prazo - 2019SS/0000219631 - 15/03/2019 - pub - pgfn
no prazo - 2019SS/0000219159 - 15/03/2019 - pub - dwtg
no prazo - 2019SS/0000199713 - 11/03/2019 - exec script para criar usuário
no prazo - 2019SS/0000206081 - 12/03/2019 - pub ACES -homo 
no prazo - 2019SS/0000206169 - 12/03/2019 - PUB IRPF - PARA HOJE
no prazo - 2019SS/0000199675 - 11/03/2019 - pub irpf - PARA HOJE
no prazo - 2019SS/0000208565 - 13/03/2019 - PUB DIME
no prazo - 2019SS/0000208431 - 13/03/2019 - PUB DIME
no prazo - 2019SS/0000209195 - 13/03/2019 - exec script
no prazo - 2019SS/0000206185 - 12/03/2019 - pub siga pf - SGPF
no prazo - 2019SS/0000201223 - 12/03/2019 - exec script
no prazo - 2019SS/0000200507 - 11/03/2019 - pub dime - todos
no prazo - 2019SS/0000200517 - 11/03/2019 - pub dime - desen
no prazo - 2019RI/0000045201 - 11/03/2019 - exec script
no prazo - 2019SS/0000200036 - 11/03/2019 - exec script
no prazo - 2019SS/0000199658 - 11/03/2019 - exec script
no prazo - 2019SS/0000193744 - 08/03/2019 - pub - sgpf
no prazo - 2019SS/0000194532 - 08/03/2019 - pub - IRPF
no prazo - 2019SS/0000195042 - 08/03/2019 - pub - dime todos
no prazo - 2019SS/0000195061 - 08/03/2019 - pub - dime
no prazo - 2019SS/0000195076 - 08/03/2019 - pub dime prod
no prazo - 2019SS/0000195940 - 08/03/2019 - pub - SGPF
no prazo - 2019SS/0000195887 - 08/03/2019 - exec script
no prazo - 2019SS/0000195881 - 08/03/2019 - exec script
no prazo - 2019SS/0000191812 - 08/03/2019 - exec tunning André
no prazo - 2019SS/0000193516 - 08/03/2019 - exec script
no prazo - 2019SS/0000189840 - 07/03/2019 - pub SSDPU
no prazo - 2019SS/0000189524 - 07/03/2019 - pub dime
no prazo - 2019SS/0000189543 - 07/03/2019 - pub dime - desen
no prazo - 2019SS/0000189506 - 07/03/2019 - pub dime - todos
no prazo - 2019SS/0000191556 - 07/03/2019 - exec script
no prazo - 2019SS/0000191694 - 07/03/2019 - pub siscoserv.


FEVEREIRO/2019

no prazo - 2019SS/0000184069 - 01/03/2019 - exec script pgfn
no prazo - 2019SS/0000182989 - 01/03/2019 - exec so dados.
no prazo - 2019SS/0000182683 - 01/03/2019 - pub dwtg 
no prazo - 2019SS/0000180949 - 28/02/2019 - exec view alyne
no prazo - 2019SS/0000173193 - 27/02/2019 - exec so
no prazo - 2019SS/0000174775 - 27/02/2019 - exec so
no prazo - 2019SS/0000172289 - 26/02/2019 - pub dwtg wf pgto
no prazo - 2019AT/0000011405 - 25/02/2019 - atv para excluir o banco tg
no prazo - 2019SS/0000164587 - 25/02/2019 - pub - dwtg
no prazo - 2019AT/0000009824 - 25/02/2019 - bigfile AFIS
no prazo - 2019SS/0000164178 - 25/02/2019 - exec script
no prazo - 2019SS/0000162327 - 25/02/2019 - exec script
no prazo - 2019SS/0000157286 - 21/02/2019 - pub dime
no prazo - 2019SS/0000157349 - 21/02/2019 - pub dime
no prazo - 2019SS/0000157385 - 21/02/2019 - pub dime
no prazo - 2019SS/0000160176 - 20/02/2019 - análise erro
no prazo - 2019SS/0000151987 - 20/02/2019 - pub cobr
no prazo - 2019SS/0000149611 - 20/02/2019 - exec script dwtg
no prazo - 2019SS/0000146431 - 19/02/2019 - exec script
no prazo - 2019SS/0000146477 - 19/02/2019 - exec script
no prazo - 2019SS/0000143685 - 18/02/2019 - exec dwtg
no prazo - 2019SS/0000136045 - 15/02/2019 - exec script terminando ainda
no prazo - 2019SS/0000131856 - 14/02/2019 - pub CNPJ
no prazo - 2019SS/0000138412 - 15/02/2019 - exec script MRE
no prazo - 2019SS/0000133379 - 14/02/2019 - pub DIME prod, dese, hom
no prazo - 2019SS/0000133485 - 14/02/2019 - pub DIME des
no prazo - 2019SS/0000134561 - 14/02/2019 - pub sigapf
no prazo - 2019SS/0000134920 - 14/02/2019 - pub sigpgfn
no prazo - 2019SS/0000134759 - 14/02/2019 - exec script
no prazo - 2019SS/0000133820 - 14/02/2019 - exec script - dw
no prazo - 2019SS/0000132524 - 14/02/2019 - exec script
no prazo - 2019SS/0000129114 - 13/02/2019 - pub CNPF
no prazo - 2019SS/0000131685 - 14/02/2019 - exec script
no prazo - 2019SS/0000128146 - 13/02/2019 - pub AFIS
no prazo - 2019SS/0000128560 - 13/02/2019 - exec script siscoserv
no prazo - 2019RI/0000029553 - 13/02/2019 - ated. incidente siscoserv. 
no prazo - 2019SS/0000117063 - 11/02/2019 - pub Aduaneiro BSB
no prazo - 2019RI/0000027653 - 11/02/2019 - Incidente - Teradata
no prazo - 2019SS/0000116318 - 11/02/2019 - pub DCTF
no prazo - 2019SS/0000116797 - 11/02/2019 - exec script
no prazo - 2019SS/0000116632 - 11/02/2019 - exec script
no prazo - 2019SS/0000111368 - 08/02/2019 - exec script
no prazo - 2019SS/0000109208 - 07/02/2019 - pub irpf
no prazo - 2019SS/0000101730 - 07/02/2019 - pub PROC
no prazo - 2019SS/0000098484 - 07/02/2019 - exec DCTF
no prazo - 2019SS/0000101964 - 06/02/2019 - exec script dwtg
no prazo - 2019SS/0000098197 - 05/02/2019 - pub AFIS
no prazo - 2019SS/0000097997 - 05/02/2019 - exec script
no prazo - 2019SS/0000095009 - 05/02/2019 - exec script - Cancelado por já ter sido atendido por outro analista
no prazo - 2019SS/0000094990 - 05/02/2019 - exec script
no prazo - 2019SS/0000094817 - 05/02/2019 - exec script
no prazo - 2019SS/0000091333 - 04/02/2019 - pub sigpgfn
no prazo - 2019SS/0000092423 - 04/02/2019 - pub aduan
no prazo - 2019SS/0000084095 - 04/02/2019 - exec script
no prazo - 2019SS/0000087674 - 01/02/2019 - exec script
no prazo - 2019SS/0000086035 - 01/02/2019 - exec script
no prazo - 2019SS/0000079399 - 01/02/2019 - dump ambiente


JANEIRO/2019

no prazo - 2019RI/0000019020 - 30/01/2019 - incidente Teradata por email.
no prazo - 2019SS/0000077005 - 30/01/2019 - exec script
no prazo - 2019SS/0000077133 - 30/01/2019 - exec script
no prazo - 2019SS/0000074654 - 29/01/2019 - exec script so
no prazo - 2019SS/0000072406 - 29/01/2019 - exec script
no prazo - 2019SS/0000065054 - 25/01/2019 - pub dime desen
no prazo - 2019SS/0000065034 - 25/01/2019 - pub dime -desen e prod - fechado por colegas
no prazo - 2019SS/0000064877 - 25/01/2019 - pub -sgpf              - fechado por colegas
no prazo - 2019SS/0000065210 - 25/01/2019 - exec script
no prazo - 2019SS/0000061296 - 24/01/2019 - pub dime -desen e prod
no prazo - 2019SS/0000058104 - 23/01/2019 - pub dime -desen e prod
no prazo - 2019SS/0000058120 - 23/01/2019 - pub dim - desen
no prazo - 2019SS/0000056149 - 23/01/2019 - pub cnpf
no prazo - 2019SS/0000056697 - 23/01/2019 - exec script
no prazo - 2019SS/0000056501 - 23/01/2019 - exec script
no prazo - 2019SS/0000056392 - 23/01/2019 - exec script
no prazo - 2019SS/0000052319 - 22/01/2019 - pub - irpf
no prazo - 2019SS/0000049503 - 21/01/2019 - pub dime des
no prazo - 2019SS/0000049691 - 21/01/2019 - exec script
no prazo - 2019RI/0000011301 - 18/01/2019 - incidente dwtg antigo
no prazo - 2019RI/0000010744 - 18/01/2019 - incidente dwtg antigo
no prazo - 2019SS/0000041577 - 17/01/2019 - pub dwtg fazer à noite.
no prazo - 2019SS/0000040725 - 17/01/2019 - exec dump dwtg
no prazo - 2019SS/0000037697 - 16/01/2019 - pub cobr
no prazo - 2019SS/0000037669 - 16/01/2019 - pub - AFIS
no prazo - 2019SS/0000032719 - 15/01/2019 - pub - irpf
no prazo - 2019SS/0000038132 - 16/01/2019 - exec script dwtg
no prazo - 2019SS/0000038040 - 16/01/2019 - exec script dwtg
no prazo - 2019SS/0000036542 - 16/01/2019 - exec script
no prazo - 2019SS/0000033151 - 16/01/2019 - exec script
no prazo - 2019SS/0000029413 - 14/01/2019 - exec script
no prazo - 2019SS/0000032221 - 15/01/2019 - exec script
no prazo - 2019SS/0000029982 - 14/01/2019 - pub svrf
no prazo - 2019SS/0000028820 - 14/01/2019 - pub mdic - svmd
no prazo - 2019SS/0000028680 - 14/01/2019 - exec script
no prazo - 2019SS/0000028652 - 14/01/2019 - exec script
no prazo - 2019SS/0000028698 - 14/01/2019 - exec script
no prazo - 2019SS/0000028488 - 14/01/2019 - exec script
no prazo - 2019SS/0000024890 - 11/01/2019 - pub dvdr
no prazo - 2019SS/0000022127 - 10/01/2019 - exec script
no prazo - 2019SS/0000022127 - 10/01/2019 - exec scritt 
no prazo - 2019SS/0000022476 - 10/01/2019 - exec script
no prazo - 2019SS/0000022199 - 10/01/2019 - exec script
no prazo - 2019SS/0000018545 - 09/01/2019 - pub arcx
no prazo - 2019SS/0000013121 - 08/01/2019 - exec so 
no prazo - 2019SS/0000014180 - 08/01/2019 - exec script
no prazo - 2019SS/0000010221 - 07/01/2019 - pub - pessoal
no prazo - 2019SS/0000010610 - 07/01/2019 - pub - sgpf
no prazo - 2019SS/0000011831 - 07/01/2019 - pub - dime desen
no prazo - 2019SS/0000011719 - 07/01/2019 - pub - dime prod
no prazo - 2019SS/0000008578 - 04/01/2018 - exec script
no prazo - 2019SS/0000008061 - 04/01/2018 - exec script
no prazo - 2019SS/0000008069 - 04/01/2018 - exec script
no prazo - 2019SS/0000004102 - 03/01/2018 - exec script
no prazo - 2019SS/0000005586 - 03/01/2018 - pub - arrc
no prazo - 2019SS/0000004693 - 03/01/2018 - pub script aduaneiro
no prazo - 2019SS/0000001849 - 02/01/2018 - pub sigpgfn



DEZEMBRO 


no prazo - 2018SS/0000971859 - 14/12/2018 - exec script
no prazo - 2018SS/0000968241 - 13/12/2018 - exec script
no prazo - 2018SS/0000968172 - 13/12/2018 - exec script
no prazo - 2018SS/0000965386 - 12/12/2018 - pub SGPF
no prazo - 2018SS/0000964358 - 12/12/2018 - pub IRPF gotardo.
no prazo - 2018SS/0000965540 - 12/12/2018 - exec script 
no prazo - 2018SS/0000964912 - 12/12/2018 - exec script
no prazo - 2018SS/0000964822 - 12/12/2018 - exec script
no prazo - 2018SS/0000964314 - 12/12/2018 - exec so
no prazo - 2018SS/0000959244 - 10/12/2018 - exec script
no prazo - 2018SS/0000957705 - 10/12/2018 - exec valdiana arrc
no prazo - 2018AT/0000076629 - 10/12/2018 - at - bigfile arrc
no prazo - 2018AT/0000078024 - 10/12/2018 - at - contigência
no prazo - 2018SS/0000956994 - 10/12/2018 - exec script
no prazo - 2018SS/0000957304 - 10/12/2018 - exec script
no prazo - 2018SS/0000956762 - 10/12/2018 - pub script dwtg
no prazo - 2018SS/0000942800 - 04/12/2018 - pub script
no prazo - 2018SS/0000944126 - 04/12/2018 - exec script
no prazo - 2018SS/0000940165 - 03/12/2018 - exec script
no prazo - 2018SS/0000939982 - 03/12/2018 - exec script

NOVEMBRO

no prazo - 2018SS/0000918314 - 26/11/2018 - pub dwtg
no prazo - 2018SS/0000911302 - 21/11/2018 - pub svrf
no prazo - 2018SS/0000909103 - 21/11/2018 - executar script
no prazo - 2018SS/0000909065 - 21/11/2018 - executar script
no prazo - 2018SS/0000909049 - 21/11/2018 - exec script
no prazo - 2018SS/0000895006 - 13/11/2018 - exec script
no prazo - 2018SS/0000893225 - 13/11/2018 - exec script
no prazo - 2018SS/0000889097 - 12/11/2018 - script exec 
no prazo - 2018SS/0000889124 - 12/11/2018 - pub aduan bsb
no prazo - 2018SS/0000888452 - 12/11/2018 - script exec
no prazo - 2018SS/0000885932 - 09/11/2018 - pub aduaneiro
no prazo - 2018SS/0000886080 - 09/11/2018 - exec proc
no prazo - 2018SS/0000884917 - 09/11/2018 -  exec script
no prazo - 2018SS/0000881160 - 08/11/2018 - pub - aces
no prazo - 2018SS/0000882681 - 08/11/2018 - exec script
no prazo - 2018SS/0000878411 - 07/11/2018 - pub - dime - desen
no prazo - 2018SS/0000878709 - 07/11/2018 - exec script
no prazo - 2018SS/0000877902 - 07/11/2018 - exec script
no prazo - 2018SS/0000874400 - 06/11/2018 - pub - dime - des - prod - prepro
no prazo - 2018SS/0000874463 - 06/11/2018 - pub dime -des
no prazo - 2018SS/0000874420 - 06/11/2018 - pub - dime - prod
no prazo - 2018SS/0000874819 - 06/11/2018 - exec script so.
no prazo - 2018SS/0000873619 - 06/11/2018 - exec script
no prazo - 2018SS/0000870481 - 05/10/2018 - exec script so.
no prazo - 2018SS/0000866736 - 05/10/2018 - execu script
=======================================
OUTUBRO
no prazo - 2018SS/0000859935 - 30/10/2018 - pub sgpf
no prazo - 2018SS/0000859619 - 30/10/2018 - pub dime desen
no prazo - 2018SS/0000859611 - 30/10/2018 - pub dime prod
fo prazo - 2018SS/0000852598 - 26/10/2018 - exec.sc - giovanna fechou
no prazo - 2018SS/0000859566 - 30/10/2018 - exec script - sgpgfn
no prazo - 2018SS/0000858137 - 30/10/2018 - exec script
no prazo - 2018SS/0000858408 - 30/10/2018 - exec script - canc. por cliente.
no prazo - 2018AT/0000070221 - 28/10/2018 - bigfile e hcc amco
no prazo - 2018SS/0000854116 - 30/10/2018 - exec script - snsp
no prazo - 2018SS/0000850353 - 26/10/2018 - exec. script
no prazo - 2018SS/0000852586 - 26/10/2018 - exec. dwtg
no prazo - 2018AT/0000065876 - 23/10/2018 - bigfile mdct
no prazo - 2018AT/0000065877 - 23/10/2018 - bigfile prdc, perd
no prazo - 2018SS/0000841514 - 23/10/2018 - pub - irpf
no prazo - 2018SS/0000842661 - 23/10/2018 - pub - aduaneiro
no prazo - 2018SS/0000841366 - 23/10/2018 - script neila
no prazo - 2018SS/0000837239 - 22/10/2018 - pub - dime - prod
no prazo - 2018SS/0000837428 - 22/10/2018 - pub sgpj
no prazo - 2018SS/0000837652 - 22/10/2018 - exec so
no prazo - 2018SS/0000833229 - 22/10/2018 - exec script
no prazo - 2018AT/0000065876 - 20/10/2018 - atividade bigfile
no prazo - 2018AT/0000065877 - 20/10/2018 - atividade bigfile	
no prazo - 2018SS/0000833606 - 19/10/2018 - pub dime desenv
no prazo - 2018SS/0000832402 - 19/10/2018 - exec script
no prazo - 2018SS/0000828262 - 18/10/2018 - pub ditr
no prazo - 2018SS/0000828402 - 18/10/2018 - pub dime - prod
no prazo - 2018SS/0000828365 - 18/10/2018 - pub dime - desenv
no prazo - 2018SS/0000824421 - 17/10/2018 - pub cobr
no prazo - 2018SS/0000826880 - 17/10/2018 - pub cnpj
no prazo - 2018SS/0000824142 - 17/10/2018 - ex script
no prazo - 2018SS/0000820050 - 16/10/2018 - pub - dime - prod - desen - hom
no prazo - 2018SS/0000822685 - 16/10/2018 - pub - dime - prod
no prazo - 2018SS/0000822765 - 16/10/2018 - pub - dime - desenv
no prazo - 2018SS/0000818344 - 15/10/2018 - pub sigpgfn
no prazo - 2018SS/0000818602 - 15/10/2018 - pub - anco
no prazo - 2018SS/0000818131 - 15/10/2018 - script - so
no prazo - 2018SS/0000817603 - 15/10/2018 - PUB - MACO


SETEMBRO

- 2018SS/0000752085 - 19/09/2018 - subscrição dwtg - vai demorar um pouco.
- 2018AT/0000062312 - 28/09/2018 - hcc e bigfile no CNPJ produção
- 2018SS/0000778700 - 28/09/2018 - pub siga pf
no prazo - 2018SS/0000777077 - 27/09/2018 - PUB IRPF
no prazo - 2018SS/0000762153 - 26/09/2018 - pub IRPF - somente 4 tabelas que estavam faltando publicando de novo
no prazo - 2018SS/0000771114 - 26/09/2018 - exec script
no prazo - 2018SS/0000771088 - 26/09/2018 - exec script
no prazo - 2018SS/0000766391 - 25/09/2018 - pub COBR
no prazo - 2018SS/0000767733 - 25/09/2018 - exec glauber
no prazo - 2018SS/0000768004 - 25/09/2018 - pub MACO
no prazo - 2018SS/0000768408 - 25/09/2018 - exec homologacao
no prazo - 2018SS/0000768074 - 25/09/2018 - exec homologacao
no prazo - 2018AT/0000062289 - 25/09/2018 - atividade para bigfile SCND
no prazo - 2018SS/0000762153 - 24/09/2018 - pub IRPF
no prazo - 2018SS/0000764298 - 24/09/2018 - pub dime - prod
no prazo - 2018SS/0000764311 - 24/09/2018 - pub dime - desen
no prazo - 2018SS/0000761544 - 24/09/2018 - exec script andr
no prazo - 2018SS/0000760239 - 21/09/2018 - pub ditr
no prazo - 2018SS/0000759040 - 21/09/2018 - pub - aduan bsb
no prazo - 2018SS/0000759426 - 21/09/2018 - pub arcx
no prazo - 2018SS/0000756515 - 20/09/2018 - pub aduan sp
no prazo - 2018SS/0000754903 - 20/09/2018 - pub cobr
no prazo - 2018SS/0000756568 - 20/09/2018 - pub - ditr
no prazo - 2018SS/0000756535 - 20/09/2018 - exec script
no prazo - 2018SS/0000755253 - 20/09/2018 - exec so
no prazo - 2018SS/0000754384 - 19/08/2018 - pub aduan - Para André Mag.
no prazo - 2018SS/0000751514 - 19/09/2018 - pub dime
no prazo - 2018SS/0000750717 - 19/09/2018 - exec script
no prazo - 2018SS/0000750505 - 19/09/2018 - exec script
no prazo - 2018SS/0000749519 - 18/09/2018 - exec script
no prazo - 2018SS/0000747980 - 18/09/2018 - PUB dw cpf
no prazo - 2018SS/0000749503 - 18/09/2018 - exec script
no prazo - 2018SS/0000747834 - 18/09/2018 - EXEC scripts
no prazo - 2018SS/0000748495 - 18/09/2018 - exec script
no prazo - 2018SS/0000742377 - 17/09/2018 - exec script
no prazo - 2018AT/0000062117 - 18/09/2018 - ativ. bigfile.
no prazo - 2018SS/0000742363 - 17/09/2018 - exec script
no prazo - 2018SS/0000735091 - 13/09/2018 - pub - dime - prod - desen - hom
no prazo - 2018SS/0000735175 - 13/09/2018 - pub - dime - dese
no prazo - 2018SS/0000735194 - 13/09/2018 - pub - dime - prod
no prazo - 2018SS/0000734935 - 13/09/2018 - pub perd
no prazo - 2018SS/0000734272 - 13/09/2018 - exec script sql
no prazo - 2018SS/0000730215 - 12/09/2018 - pub aces
no prazo - 2018SS/0000732095 - 12/09/2018 - pub - dime - prod
no prazo - 2018SS/0000732080 - 12/09/2018 - pub - dime - dese
no prazo - 2018SS/0000732064 - 12/09/2018 - pub - dime - prod - desen - hom
no prazo - 2018SS/0000730731 - 12/09/2018 - exec script
no prazo - 2018SS/0000731751 - 12/09/2018 - exec script
no prazo - 2018SS/0000731269 - 12/09/2018 - exec script
no prazo - 2018RI/0000214783 - 12/09/2018 - tratamento de incidente.
no prazo - 2018SS/0000726992 - 11/09/2018 - pub aduaneiro
no prazo - 2018SS/0000727377 - 11/09/2018 - pub - dime - prod - desen - hom
no prazo - 2018SS/0000727539 - 11/09/2018 - pub - dime - dese
no prazo - 2018SS/0000727560 - 11/09/2018 - pub - dime - prod
no prazo - 2018RI/0000214783 - 11/09/2018 - dwtg incidente
no prazo - 2018SS/0000727260 - 11/09/2018 - exec script 
no prazo - 2018SS/0000727346 - 11/09/2018 - exec script 
no prazo - 2018SS/0000727173 - 11/09/2018 - exec script 
no prazo - 2018SS/0000727165 - 11/09/2018 - exec script 
no prazo - 2018SS/0000727143 - 11/09/2018 - exec script 
no prazo - 2018SS/0000727232 - 11/09/2018 - exec script
no prazo - 2018SS/0000726931 - 11/09/2018 - exec so
no prazo - 2018SS/0000727695 - 11/09/2018 - exec script creuza
no prazo - 2018AT/0000060215 - 11/09/2018 - exec so
no prazo - 2018SS/0000721900 - 10/09/2018 - pub - mdic - sem classifica
no prazo - 2018SS/0000722796 - 10/09/2018 - pub - dime - prod
no prazo - 2018SS/0000722288 - 10/09/2018 - pub - dime - des
no prazo - 2018SS/0000722272 - 10/09/2018 - pub - dime - prod
no prazo - 2018SS/0000722247 - 10/09/2018 - pub - dime - prod - desen - hom
no prazo - 2018SS/0000722848 - 10/09/2018 - pub - dime - des
no prazo - 2018SS/0000722728 - 10/09/2018 - pub - trst - prod e hom
no prazo - 2018SS/0000721723 - 10/09/2018 - exec so
no prazo - 2018SS/0000718754 - 06/09/2018 - pub -SSdpu
no prazo - 2018SS/0000719110 - 06/09/2018 - pub mcpj
no prazo - 2018SS/0000718542 - 06/09/2018 - exec so
no prazo - 2018SS/0000717743 - 06/09/2018 - exec script
no prazo - 2018SS/0000716860 - 05/09/2018 - PUB MCPJ
no prazo - 2018SS/0000714431 - 05/09/2018 - pub SVRF
no prazo - 2018SS/0000716643 - 05/09/2018 - pub aduaneiro -  sem classifica
no prazo - 2018SS/0000716880 - 05/09/2018 - exec script
no prazo - 2018SS/0000716979 - 05/09/2018 - alter user - balduino
no prazo - 2018SS/0000714239 - 05/09/2018 - exec script 
no prazo - 2018SS/0000714266 - 05/09/2018 - exec script
no prazo - 2018SS/0000710340 - 04/09/2018 - pub trst
no prazo - 2018SS/0000708972 - 04/09/2018 - script
no prazo - 2018SS/0000705797 - 03/09/2018 - pub epro
no prazo - 2018SS/0000704996 - 03/09/2018 - exe script
no prazo - 2018SS/0000706977 - 03/09/2018 - pub afis

AGOSTO

no prazo - 2018SS/0000702828 - 31/08/2018 -  exec script
no prazo - 2018SS/0000701638 - 31/08/2018 - exec script
no prazo - 2018SS/0000701800 - 31/08/2018 - pub - cobr
no prazo - 2018SS/0000697150 - 30/08/2018 - pub - dime - prod - desen - hom
no prazo - 2018SS/0000697176 - 30/08/2018 - pub - dime - desen
no prazo - 2018SS/0000697198 - 30/08/2018 - pub - dime - prod
no prazo - 2018SS/0000697588 - 30/08/2018 - script so.
no prazo - 2018SS/0000694572 - 29/08/2018 - pub - dime - prod
no prazo - 2018SS/0000694582 - 29/08/2018 - pub - dime - desen
no prazo - 2018SS/0000694597 - 29/08/2018 - pub - dime - prod - desen - hom
no prazo - 2018SS/0000693643 - 29/08/2018 - script so.
no prazo - 2018SS/0000693417 - 29/08/2018 - script so.
no prazo - 2018SS/0000692453 - 29/08/2018 - script so.
no prazo - 2018SS/0000690820 - 28/08/2018  -i2 aly - exec script
no prazo - 2018SS/0000689196 - 28/08/2018 - pub - dime - prod - desen - hom 
no prazo - 2018SS/0000689133 - 28/08/2018 - pub - dime - prod
no prazo - 2018SS/0000689160 - 28/08/2018 - pub - desen
no prazo - 2018SS/0000690681 - 28/08/2018 - script so
no prazo - 2018SS/0000686719 - 28/08/2018 - view cgu
no prazo - 2018SS/0000689589 - 28/08/2018 - script so
no prazo - 2018SS/0000688269 - 28/08/2018 - dados so -- falta o script
no prazo - 2018SS/0000688156 - 28/08/2018 - dados so
no prazo - 2018SS/0000684144 - 27/08/2018 - pub - dime - desen
no prazo - 2018SS/0000684160 - 27/08/2018 - pub - dime - prod - desen - hom
no prazo - 2018SS/0000684101 - 27/08/2018 - pub - dime - prod
no prazo - 2018SS/0000684117 - 27/08/2018 - pub - aduaneiro condominio bsb
no prazo - 2018SS/0000684065 - 27/08/2018 - pub - epro script mudar a pub
no prazo - 2018SS/0000684193 - 27/08/2018 - pub epro - e script mudar a pub
no prazo - 2018SS/0000684783 - 27/08/2018 - script dwtg
no prazo - 2018SS/0000682059 - 27/08/2018 - exec script - canc repetida 1988
no prazo - 2018SS/0000681988 - 27/08/2018 - exec script
no prazo - 2018SS/0000679376 - 27/08/2018 - backup schema
no prazo - 2018SS/0000675061 - 23/08/2018 - pub - prod
no prazo - 2018SS/0000675025 - 23/08/2018 - pub - dime - prod - desen - hom
no prazo - 2018SS/0000677863 - 23/08/2018 - script tg
no prazo - 2018SS/0000675075 - 23/08/2018 - pub - des
no prazo - 2018SS/0000677171 - 23/08/2018 - pub - cobr
no prazo - 2018SS/0000675182 - 23/08/2018 - pub epro
no prazo - 2018SS/0000672344 - 22/08/2018 - pub dime - prod - desen - hom
no prazo - 2018SS/0000671869 - 22/08/2018 - script
no prazo - 2018SS/0000666139 - 21/08/2018 - pub dime - prod - desen - hom
no prazo - 2018SS/0000666112 - 21/08/2018 - pub dime - prod
no prazo - 2018SS/0000666121 - 21/08/2018 - pub - dime - dese 
no prazo - 2018SS/0000666542 - 21/08/2018 - pub sgpf
no prazo - 2018SS/0000666441 - 21/08/2018 - script so
no prazo - 2018SS/0000666433 - 21/08/2018 - script dwtg
no prazo - 2018AT/0000052074 - 21/08/2018 - hcc e bigfile preproducao SP.
no prazo - 2018SS/0000665868 - 21/08/2018 - scripts dwtg defla
no prazo - 2018SS/0000664396 - 20/08/2018 - scripts dwtg defla
no prazo - 2018SS/0000662659 - 20/08/2018 - pub dime - prod
no prazo - 2018SS/0000662679 - 20/08/2018 - pub dime - dese 
no prazo - 2018SS/0000662761 - 20/08/2018 - pub dime - prod - desen - hom
no prazo - 2018SS/0000660645 - 20/08/2018 - script tg - CANCELADA
no prazo - 2018SS/0000658390 - 17/08/2018 - pub dime - DES
no prazo - 2018SS/0000658345 - 17/08/2018 - pub dime - prod - desen - hom
no prazo - 2018SS/0000658366 - 17/08/2018 - pub dime - prod
no prazo - 2018SS/0000653081 - 16/08/2018 - pub dime - prod - des-hom
no prazo - 2018SS/0000653065 - 16/08/2018 - pub dime - prod
no prazo - 2018SS/0000653056 - 16/08/2018 - pub dime - desen
no prazo - 2018SS/0000654056 - 16/08/2018 - pub - sigpgfn
fo prazo - 2018SS/0000638160 - 11/08/2018 - script criar log no gen. cond
no prazo - 2018SS/0000654512 - 16/08/2018 - script so
no prazo - 2018SS/0000649606 - 16/08/2018 - exec script
no prazo - 2018SS/0000649652 - 16/08/2018 - script - bd
no prazo - 2018SS/0000649987 - 15/08/2018 - scirpt so
no prazo - 2018SS/0000649576 - 15/08/2018 - script sql server
no prazo - 2018SS/0000645648 - 14/08/2018 - script - so
no prazo - 2018SS/0000645783 - 14/08/2018 - script - so
no prazo - 2018SS/0000645209 - 14/08/2018 - script - sigpgfn
no prazo - 2018SS/0000645154 - 14/08/2018 - pub dime -prod2 -  
no prazo - 2018SS/0000644366 - 14/08/2018 - pub dime - desen
no prazo - 2018SS/0000644379 - 14/08/2018 - pub dime - prod
no prazo - 2018SS/0000644406 - 14/08/2018 - pub dime - prod-dese-hom
no prazo - 2018SS/0000641080 - 13/08/2018 - pub SVMD
no prazo - 2018SS/0000635996 - 10/08/2018 - pub - dime - prod-dese-hom
no prazo - 2018SS/0000635986 - 10/08/2018 - pub - prod
no prazo - 2018SS/0000636590 - 10/08/2018 - pub-ssdspu--não categorizei
no prazo - 2018SS/0000635968 - 10/08/2018 - pub - desen
no prazo - 2018SS/0000637084 - 10/08/2018 - script sigpgfn
no prazo - 2018SS/0000635745 - 10/08/2018 - script 35104
no prazo - 2018SS/0000635796 - 10/08/2018 - script 5796
no prazo - 2018SS/0000632384 - 09/08/2018 - pub - dime - desen
no prazo - 2018SS/0000632399 - 09/08/2018 - pub - dime - prod
no prazo - 2018SS/0000632418 - 09/08/2018 - pub - dime - prod-dese-hom
no prazo - 2018SS/0000634166 - 09/08/2018 - script glauber
no prazo - 2018SS/0000630004 - 08/08/2018 - script 
no prazo - 2018SS/0000629086 - 08/08/2018 - pub-dime-prod - desenv - whpre
no prazo - 2018SS/0000629108 - 08/08/2018 - pub - dime - prod
no prazo - 2018SS/0000629136 - 08/08/2018 - pub - dime - desen
no prazo - 2018SS/0000628517 - 08/08/2018 - script so 
no prazo - 2018SS/0000628891 - 08/08/2018 - scripts so
no prazo - 2018SS/0000624947 - 07/08/2018 - pub - aces
no prazo - 2018SS/0000623490 - 07/08/2018 - pub - dime pro
no prazo - 2018SS/0000624412 - 07/08/2018 - script  - pendente
no prazo - 2018SS/0000624432 - 07/08/2018 - pub - perd
no prazo - 2018SS/0000624355 - 07/08/2018 - pub - svrf
no prazo - 2018SS/0000624634 - 07/08/2018 - script luciano /fabio
no prazo - 2018SS/0000618507 - 06/08/2018 - script 
no prazo - 2018SS/0000619792 - 06/08/2018 - pub epro
no prazo - 2018SS/0000619953 - 06/08/2018 - pub aduaneiro
ali - no prazo - 2018SS/0000609669 - 02/08/2018 - pub-dime - todos forte
ali - no prazo - 2018SS/0000609997 - 02/08/2018 - pub - dime
ali -no prazo - 2018SS/0000605391 - 02/08/2018 - pub sgpj
no prazo - 2018SS/0000605214 - 02/08/2018 - gotardo  - sem categorizar
no prazo - 2018SS/0000610842 - 02/08/2018 - script luciano apagar 
no prazo - 2018SS/0000611858 - 02/08/2018 - adnf 
no prazo - 2018SS/0000610144 - 02/08/2018 - script epro
no prazo - 2018SS/0000601654 - 02/08/2018 - pub - mcpj
no prazo - 2018SS/0000604715 - 01/08/2018 - script cobr
no prazo - 2018SS/0000606097 - 01/08/2018 - pub-dime-prod
no prazo - 2018SS/0000606111 - 01/08/2018 - pub-dime-desen
no prazo - 2018SS/0000607809 - 01/08/2018 - pub-dime-todos hom/des/prod.
no prazo - 2018SS/0000607953 - 01/08/2018 - PUB-EPRO

JULHO

no prazo - 2018SS/0000600927 - 31/07/2018 - pub-dime-desen
no prazo - 2018SS/0000601779 - 31/07/2018 - script - gotardo irpf
no prazo - 2018SS/0000601682 - 31/07/2018 - script - gotaldo irpf
no prazo - 2018SS/0000600679 - 31/07/2018 - script - td
no prazo - 2018SS/0000597927 - 30/07/2018 - pub - mcpj
no prazo - 2018SS/0000597308 - 30/07/2018 - pub-dime-todos hom/des/prod.
no prazo - 2018SS/0000597000 - 30/07/2018 - pub e script - siape - mas não estava categorizado devidamente por isso me ferrei de novo.
no prazo - 2018SS/0000596777 - 30/07/2018 - script - cobr
no prazo - 2018SS/0000596498 - 30/07/2018 - script - TG
no prazo - 2018SS/0000593266 - 27/07/2018 - script - MCPJ - maco
no prazo - 2018SS/0000593344 - 27/07/2018 - script - homologacao
no prazo - 2018SS/0000594318 - 27/07/2018 - pub-dime-prod
no prazo - 2018SS/0000594337 - 27/07/2018 - pub-dime-desen
no prazo - 2018SS/0000594248 - 27/07/2018 - pub-dime-todos hom/des/prod.
no prazo - 2018SS/0000594580 - 28/07/2018 - pub - dwtg - victor
no prazo - 2018SS/0000584431 - 25/07/2018 - pub - sgpf
no prazo - 2018SS/0000584325 - 25/07/2018 - pub-dime-todos hom/des/prod.
no prazo - 2018SS/0000584367 - 25/07/2018 - pub-dime-desen
no prazo - 2018SS/0000584386 - 25/07/2018 - pub-dime-prod
no prazo - 2018SS/0000584841 - 25/07/2018 - script
no prazo - 2018SS/0000581230 - 24/07/2018 - script 
no prazo - 2018SS/0000581245 - 24/07/2018 - script 
no prazo - 2018SS/0000580645 - 24/07/2018 - pub - dime
no prazo - 2018SS/0000580599 - 24/07/2018 - pub - dime
no prazo - 2018SS/0000580574 - 24/07/2018 - pub - dime
GAME OK = no prazo - 2018SS/0000580540 - 24/07/2018 - script - eecf 
cancelada - 2018SS/0000580247 - 24/07/2018 - script - configuração
GAME OK = no prazo - 2018SS/0000574800 - 24/07/2018 - cript-configuração 
GAME OK = no prazo - 2018SS/0000578727 - 23/07/2018 - pub - impor - adua
GAME OK = no prazo - 2018SS/0000578415 - 23/07/2018 - script - susana
GAME OK = no prazo - 2018SS/0000577784 - 23/07/2018 - script - luciano
GAME OK = no prazo - 2018SS/0000577802 - 23/07/2018 - script - luciano
GAME OK = no prazo - 2018SS/0000578512 - 23/07/2018 - script - luciano
GAME OK = no prazo - 2018SS/0000573235 - script - pgfn  
GAME OK = no prazo - 2018SS/0000572623 - pub - dime
GAME OK = no prazo - 2018SS/0000572750 - pub - dime
GAME OK = no prazo - 2018SS/0000572788 - pub - dime
GAME OK = no prazo - 2018SS/0000569389 - script - tg
GAME OK = no prazo - 2018SS/0000569491 - script  - tg - Alli
GAME OK = no prazo - 2018SS/0000568926 - pub - dime
GAME OK = no prazo - 2018SS/0000568968 - pub - dime
GAME OK = no prazo - 2018SS/0000570946 - pub - pgto
GAME OK = no prazo - 2018SS/0000568866 - pub - 
GAME OK = no prazo - 2018SS/0000564822 - 18/07/2018 - script rfb homo
GAME OK = no prazo - 2018SS/0000564578 - 18/07/2018 - pub dime
GAME OK = no prazo - 2018SS/0000564644 - 18/07/2018 - TG publicação
GAME OK = no prazo - 2018SS/0000560122 - 17/07/2018 - PGFN 
GAME OK = no prazo - 2018SS/0000561163 - 17/07/2018 - SIGAPF 
GAME OK = no prazo - 2018SS/0000551948 - 13/07/2018 - pub - PGTO_SA - aguradando
GAME OK = no prazo - 2018SS/0000552713 - 13/07/2018 - pub -cnpf - aguardando
GAME OK = no prazo - 2018SS/0000552362 - 13/07/2018 - script - ricardo
GAME OK = no prazo - 2018SS/0000552281 - 13/07/2018 - scritp everton
GAME OK = no prazo - 2018SS/0000551806 - 13/07/2018  - script ricardo
GAME OK = no prazo - 2018SS/0000548624 - 12/07/2018 - publicao pgfn 
GAME OK = no prazo - 2018AT/0000044501 - 11/07/2018 - grants exadata
GAME OK = no prazo - 2018SS/0000546031 - 11/07/2018 -tg - publicação
GAME OK = no prazo - 2018SS/0000540101 - 11/07/2018 - tg - inconsistência.
GAME OK = no prazo - 2018SS/0000538333 - 10/07/2018 - tg
GAME OK = no prazo - 2018SS/0000538939 - 10/07/2018 - SO


09/07/2018

1-VOLTANDO DE FÉRIAS
2-


22/06/2018

f1-2018SS/0000496459
f2-2018SS/0000496596
f3-2018SS/0000496973



--JUNHO

21/06/2018

f1-2018SS/0000487978


20/06/2018

1-2018SS/0000488434
2-22018SS/0000489699


19/06/2018

1-2018SS/0000485973



18/06/2018

1-
 
16-17/06/2018

1-final de semana


15/06/2018

1-2018SS/0000479223
2-2018SS/0000477341

14/06/2018

1-2018SS/0000473114




13/06/2016

1-Testes e resolvendo sql colunar com problemas na máquina 52


12/06/2018

2018SS/0000466907 - abrir para ajustar o acesso do Pedro para o Teradata.

1-2018SS/0000465744
2-2018SS/0000466184
f3-


11/06/2018

1-teste no sql server 

09-10/06/2018

1-final de semana


08/06/2018

1-2018SS/0000458095 passar para postgres
2-2018SS/0000454625 - dime
3-2018SS/0000458372 -


07/06/2018

1-2018SS/0000456874


06/06/2018

1-2018SS/0000450683
2-

05/06/2018

1-Análise de relatório para SUNGE - diferença entre Teradata e Sql colunar.
2-


04/06/2018

1-2018SS/0000442719 
2-2018SS/0000439144 
3-2018SS/0000443544 
4-2018SS/0000443843 


02-03/04/2018

1-final de semana


01/04/2016

1-aniversário troca 


--MAIO

31/05/2018

1-feriado


30/05/2018

1-2018SS/0000434242
2-2018RDM/0000009781- extração exercicío 2016 na wf_lancamento
atividade número: 2018AT/0000034855
3-2018SS/0000436830



29/05/2018

1-2018SS/0000431483
f2-2018SS/0000431493
3-2018SS/0000431493
4-2018SS/0000431631
5- view sql colunar 432872


28/05/2018

1-2018SS/0000427389
2-2018SS/0000429448



26-27/05/2048

1-final de semana.


25/05/2018

1-2018SS/0000425208 
2-2018SS/0000425608
	
24/05/2018

1-2018SS/0000420757
2-2018SS/0000421323 
f3-2018SS/0000422381
4-2018SS/0000422416
5-2018SS/0000422467


23/05/2018

F1-2018SS/0000417246 pub DITR
2-2018SS/0000417711
3-2018SS/0000418026



22/05/2016

f1-2018AT/0000032525
2018SS/0000413366 - FALTA NO GAME 


21/05/2018

1-RDM: 2018RDM/0000008723 - sql migração verificar com o thiago as atividades.
2-2018SS/0000410510 - Leonardo Garret - FALTA NO GAME
3-2018AT/0000032196 - FALTA NO GAME 
4-Realizei coleta de informações para pessoal de são paulo sobre o sql colunar 




18/05/2018

1-2018SS/0000405745 - FALTA NO GAME 
2-2018SS/0000407230 - FALTA NO GAME 
3-2018SS/0000407357 - FALTA NO GAME 
4-2018SS/0000407342 - FALTA NO GAME 

17/05/2018

1-Atendimento ao acionamento 2018SS/0000396313 - FALTA NO GAME 
2-Atendimento ao acionamento 2018SS/0000402601 - FALTA NO GAME 
3-Atendimento ao acionamento 2018SS/0000400604 - FALTA NO GAME 

16/05/2018

1-Atendimento ao acionamento 2018SS/0000399491 - publicar dw - 2018SS/0000400756 
2-

15/05/2018

1-Monitorando o ambiente Teradata com Viewpoint e Sql colunar no inicio da manhã
2-incidente teradata
3-15:05 - reunião com André freitas sobre otimização sql colunar

14/05/2018

1-Monitorando o ambiente Teradata com Viewpoint
2-conferẽncia de informações para Ricardo Teradata
3-Informações e testes de conexão com Júlio César sobre sql server com spotifire.
4-

12-13/05/2018

1-final de semana

11/05/2018

1-Instalação do TARA GUI para windows no entreposto 10.30.92.75 para melhorar a performance e utilização da ferramenta de backup teradata.
2-Verificação de planilha da Teradata de serviços realizados em abril de 2018, solicitado por Thiago Chefia.
3-Resolução de diferença no sql colunar incidente número 2018RI/0000103508 - 
4-Execução de script do oracle conforme ticket 2018SS/0000389355
 
10/05/2018

1-Alteração na views CGU_24 para correção do ano do exercicio à pedido de Thiago
2-Repasse de documentação sobre o dwtg para Albernaz prepara no colabora.
3-TEstando no sql colunar no servidor novo 161.148.236.58 e fazendo análise.
4-Verificação de Incidentes da TEradata no mês de 04 de 2018 à pedido do chefe Thiago Sodré.
5-

09/05/2018

1-Acompanhar e participar de consultoria Teradata com Rafael - USTs
2-Criação de views 24 para SUNGE a pedido de Andersson
3-Conferência da relação de views com relação que está no VDB do Daas, soliitada por Andersson SUNGE.
4-Baixa de arquivos para Ricardo Teradata, vez que a conexão estava muito ruim. Foram baixaos mais de 600 arquivos para a máquina Appliance Teradata.
5-

08/05/2018

1-Acompanhar e participar de consultoria Teradata com Rafael - USTs
2-Redirecionamento de demanda para olapdw - ss nº ticket -->  2018SS/0000380175
3-Teste da nova máquina 58 do sql server para ver se a mesma se encontra funcional.
4-Baixando arquivos para a TEradata e colocando na pasta conforme pedido do Ricardo Teradata para trabalho do final de semana.
5-


07/05/2018

1-Atendimento ao acionamento 2018SS/0000370403 - Publicação de Aduaneiro - solicitada pela SS 2018SS/0000371257
2-Atendimento a aumento de tablespace do RENAINF 39900 - por informações de Eudes banco oracle, que informou que a mesma estava à 96%
3-Atendimento ao acionamento 2018SS/0000372099 - Executar script
4-Solicitação de serviço para abertura de regra de firewall para os entreposto serem utilizados com o taragui windows, através da SS nº2018SS/0000372840


05-06/05/2018

1-final de semana 

04/05/2018

1-Análise de relatório sql com problemas view CGU para  descobrir aonde está a lacuna. á pedido de ANDERSSON SUNGE.
2-Repasse de email para equipe de desenvolvimento de problema encontrado na publicação do aduaneiro no plantão do Rodrigo 
3-Preparação para execução da demanda 2018SS/0000357212 após às 18:00 hs.


03/05/2018

1-Repassando chamado para equipe de olap - sobre aplicação de certificado.
2-Atendimento ao acionamento 2018SS/0000362728 - Publicação de Aduaneiro
3-coleta de sql da view 22 para Andersson SUNGE - e envio para o mesmo.
4-Alteração na views CGU 23 que estava com um ç no nome e atrapalhando a atualização da mesma no vdb do jdv
5-


02/05/2018

1-Coleta de dados de CPU para atualização de firmware do meltdown.
2-Coleta de informações e sql de consulta com alto consumo de cpu, repassando para SUNGE André Freitas analisar.
3-Alteração no arquivo de hosts do controlm para a migração da máquina - 
4-Solicitação de alteração da máquina do servidor sql server para o novo ip da máquina nova na produção / controlm - 2018SS/0000360176
5-b) Coleta de informações e sql de consulta com alto consumo de cpu, repassando para SUNGE André Freitas analisar.

01/05/2018

1-FERIADO


ABRIL 

30/04/2018

1-Atendimento ao acionamento 2018SS/0000356097 - Execução de scripts
f2-Atendimento ao acionamento 2018SS/0000357212 - publicação Teradata




28-29/04/2018

1-final de semana


27/04/2018

1-Refazendo view de número 18, quebrando em 15 views para atender melhor a performance do banco e também o cliente.
2-Refazendo view de número 22, para atender melhor a performance do banco e também o cliente.
3-


26/04/2018

1-Refazendo views para CGU e verificando execução de outras para SUNGE - André Freitas
2-Exportando dados para SUNGE - Andersson de sql específico, aguardando RDM do Faísca.
3-Relatórios de views específicas para CGU, view 18 para regeração de 13 views baseados na 18 por solicitação da SUNGE.
4-


25/04/2018

1-Coleta de informações e sql de consulta com alto consumo de cpu, repassando para SUNGE André Freitas analisar.
2-Realizando count em um sql oracle para testar o retorno de relatórios à pedido de Andersson SUNGE.
3-Fazer teste em uma view número 18 para testar a performance à pedido de André Freitas
4-Envio de nomes de tabelas para vericação de utlização das mesmas pelo desenvolvimento, senão apagar as mesmas em produção.
5-

24/04/2018

1-Reunião no Ministério do trabalho sobre coleta de informações para possível repasse de trabalho ao SERPRO, com chefe Thiago Sodré e José Lopes.
2-Ajustes no sql colunar na máquina nova para migração com Nakamura Sql Server. 



23/04/2018

1-Configurando etc/hosts com nakamura sql server para rodar controlm no servidor sql
2-Criação e repasse de service_name para o banco de metadados para o datalake à pedido da ferramenta.
3-


21-22 

1-final de semana


20/04/2018

1-Execução da view 18 e 23 no sql colunar para resultado de execução e tempo, no intuito de repassar o resultado para o SUNGE - thiago Gomes.
2-Coleta de informações e sql de consulta com alto consumo de cpu, repassando para SUNGE André Freitas analisar.
3-Coleta de informações e sql de consulta com alto spool, repassando para SUNGE André Freitas analisar.
4-3-Coleta de informações e sql de consulta com alto spool, repassando para SUNGE André Freitas analisar.


19/04/2018

1-Ajustando planilha de tabelas da Réplica Teradata para Sql Server.
2-Configurando ambiente da máquina sql colunar - integration service para rodar no novo servidor.
3-Criação de view CGU para sql colunar a pedido SUNGE - André Freitas.
4-



18/04/2018

1-Informações sobre problema no microstrategy na tabela WA_DIA_ACUM - para José Lopes.
2-Atendimento ao acionamento 2018SS/0000323964 - Execução Teradata script



17/04/2018

1-Aúdio com Samuel para redefinir tabela com primary index que tinha sido criada com no pi.
2-Abertura de RDM para updates conforme solicitação do chefe.
3-Repasse de conhecimento para o Rodrigo Albernaz sobre Sql colunar 
4-Aúdio com consultor oracle sobre paralelismo no banco de produção São Paulo.
5-Atendimento ao acionamento 2018SS/0000320503 - Execução Teradata script





10 a 16/04-2018

1-Recesso pelo Falecimento da minha avó.

09/04/2018

1-Conferência com os counts do batimento dos valores publicados no sql colunar do 2013 e 2014.
2-Verificação dos acionamento realizados pela teradata no mẽs de 03/2018 conforme documento enviado pelo chefe Thiago Sodré.
3-Atendimento ao acionamento 2018SS/0000295419 - publicação Teradata
4-Fazendo reconferência no ano de 2013 do sql colunar, vez que Thiago executou e houve divergências com o teradata
5-

07-08/04/2018

1-final de semana


06/04/2018

1-Executando ajustes para publicação 2013 e 2014 do sql colunar
2-Preparandos scritps para publicação extraordinária do final de semana do Teradata de Sql colunar conforme SS nº 2018SS/0000289876



05/04/2018

1-Conferência da máquina 161.148.236.52 sql server para ver quais aplicações faltam para migração da 161.148.236.69 com o pessoal do sql server
2-Preparação para arquivos de publicação do final de semana no sql colunar do ano de 2013 
3-



04/04/2018

1-Correção sql para Thiago gomes - SUNGE fazer conferência no sql colunar para verificação de update
2-Audio com Ricardo Teradata para definir data de atualização do ambiente teradata sobre meltdown 
3-Alteração de viwes para CGU com André Freitas SUNGE
4-Informações do count das vies CGU para Andersson SUNGE
5-






03/04/2018

1-2018RDM/0000004775 - desativação do ambiente de contigência. reprogramar.
2-Atendimento ao acionamento 2018SS/0000275320 - publicação sql colunar 
3-Ajustes no sql colunar com problemas na publicação 
4-Executando count complementar para André Freitas sobre views CGUS
5-Permissionamento para usuário SIGPGFN_SAS acessar o SIGPGFN;
6-


02/04/2018

1-Permissionamento para usuários Receita Federal para acessar o ADMPRDH à pedido de Gustavo - Aplicação
2-Execução de scripts no enterprise manager para atendimento de pedido da aplicação no enterprise manager à pedido de Hatus 
3-Corrigindo sql colunar com falhas nos jobs de produção.
4-


1/04/2018

1-final de semana

--======================================================================================

MARÇO

31/03/2018

1-final de semana

30/03/2018

1-feriado



29/03/2018

1-Ajustes no sql colunar 
2-Atendimento ao Gustavo para consultas no PERD e no PRDH homologacao são paulo
3-Levantamento de views para count no colunar e teradata.
4-Atendimento à Aline da Sas para alteração do owner do banco sql para o sas metadados.
5


26-27-28/03/2018

1-Curso de Modelagem de dados multidimensional.

24-25/03/2018

1-final de semana

23/03/2018

1-Alterando views para CGU à pedido da SUNGE - André Freitas
2-publicação dos exercícios 2013 e 2014 do teradata para o sql colunar.
f3-Atendimento ao acionamento 2018SS/0000253591  - execução de script oracle





22/03/2018

1-Alterando views para CGU à pedido da SUNGE - André Freitas


21/03/2018

1-Permissão para usuário PRDH acesar admperd por pedido de Gustavo Ferramenta
2-Alterando processo de publicação do incremental no sql colunar
3-Coleta de informação para análise de relatório com spool alto - repassado para análise de André Freitas.
4-




20/03/2018

1-Alterando views para CGU à pedido da SUNGE - André Freitas
2-



19/03/2018

1-Repasse de informação à André Freitas de teste sobre a view nº 08 da CGU que estourou a memória
2-Atendimento ao acionamento 2018SS/0000233173 - execução de script oracle
3-reunião sobre mudança de zdm das máquinas do COAF e seu impacto para o sas 
4-Atendimento ao acionamento 2018SS/0000233310 - execução de script oracle



17-18/03/2018

1-final de semana

16/03/2018

1-Alterando views para CGU à pedido da SUNGE - André Freitas
2-Correção no sql colunar do siape custo 


15/03/2018

1-Fazendo ajustes no sql colunar para publicação dos dados no tg 2013 e 2014
2-Alterando views para CGU à pedido da SUNGE - André Freitas
3-

14/03/2018

1-Fazendo ajustes no sql colunar para publicação dos dados no tg 2013 e 2014
2-Correção no sql colunar do siape custo 
3-



13/03/2018

1-Monitorando o ambiente do DWTG 
2-Fechamento da atividade 2018AT/0000001690 - GMCDDFPUBDW conforme solicitação do chefe Thiago Sodré
3-




12/03/2018

1-Ajustes no Cria_job do DWTG para que os relatórios agendados possam estar disponíveis depois do horário de inicio do controlm para que possa ser executado por rerun
2-Preparando sql colunar para receber o exercicio 2013 do Teradata
3-Atendimento ao acionamento 2018SS/0000205267 - publicação extraordinária de dados 


10-11/03/2018

1-final de semana


09/03/2018

1-Conferência da publicação do ano de 2014 no Teradata
2-Atendimento ao acionamento 2018SS/0000196686 - publicação extraordinária de dados 
3-Criação de Lista de Histórico e metadados do data lake da RFB para Aplicação 
4-Preparação para publicação de exercícios no teradata de 2008 a 2013

08/03/2018

1-Ajustando sql colunar sobre dados e relatórios 
2-Informações sobre criação de dados do metadados da stn MS104PSTNMD para equipe de ferramenta
3-
4-Atendimento ao acionamento 2018SS/0000197599 - publicação extraordinária de dados 
5-Atendimento ao acionamento 2018SS/0000197649 - publicação extraordinária de dados 


07/03/2018

1-Ajustes no Sql Colunar na publicação que estava travada por relatório André Freitas.
2-Correção de dados no Sql Colunar que estava com diferença
3-

06/03/2018

1-Testes em script sql à pedido de Victor SUNGE
2-Atendimento ao acionamento 2018SS/0000189585 - execução de script
3-Coleta de sql para análise de desempenho de alto spool enviado para André Freitas.
4-Envio de informações para Rodrigo Albernaz sobre processo do oryx da área CDFAD\CDGDB
5-Execução de relatórios no sql Colunar para André Freitas / Views CGU
6-


05/03/2018


1-Análise um sql para Victor Sunge
2-Testando mudança em view CGU
3-exportando dados view CGU para André Freitas
4-

03-04/03/2018

1-Final de semana


02/03/2018

1-Monitorando o ambiente DWtg
2-Alteração de view CGU sobre dados SIAFI à pedido de André Freitas.
3-Derrubar sessões do EDBV para Deisi Desenvolvimento Curitiba.
4-Reunião com equipe para saber pendências sobre atividades e sobre horário.
5-



01/03/2018

1-Monitorando o ambiente DWtg
2-Trabalhando para implantar alertas automáticos de sessões com problemas de spool e envio por email.
3-Trabalhando juntamente com o pessoal de sql para solucionar problema para aplicação SAS.


FEVEREIRO

28/02/2018

1-Monitorando o ambiente DWtg saindo da crise
2-Resolvendo diferença do sql colunar com Teradata
3-



27/02/2018

1-Informações para Horacio sobre códigos de serviço dos serviços no servidor do Sql Colunar Sql Server.
2-Solicitação para Eudes para executar coleta de estatísticas no usuário do MS104PSTNMD_BKP  à pedido de José Lopes.
3-


26/02/2018

1-Monitorando o ambiente DWtg em crise
2-Verificação do tempo de carga e publicação 
3-Levantamento das informações sobre os dados estatísticos do DWTG
4-Alteração do Cria_job do DWTG para que sábado rode de qualquer maneira o agendamento após as estatísticas.
5-




24-25/02/2018

1-final de semana


23/02/2018

1-Monitorando o ambiente DWtg em crise
2-



22/02/2018

1-Monitorando o ambiente DWtg em crise
2-copiar lista de histórico da stn à pedido do Gustavo e do Júlio
3-


21/02/2018

1-Monitorando o ambiente DWtg em crise
2-Testando consultas para José Lopes
3-Testando novos alertas para o teradata.
4-conferência do backup do dia do Teradata
5-


20/02/2018

1-Ajustes migração banco teradata
2-

19/02/2018-

1-Ajustes migração banco teradata

17-18

1-final de semana

12 a 16

1-migração powercenter, so suse teradata e outros

10-11 -

1-final de semana


09/02/2018

1-Auxiliando na busca da solução de problemas de conexão de ini no microstrategy com o teradata homologação
2-Ajustes com Lynara no cronograma da migração do Teradata para à reunião.
3-Atendimento ao acionamento 2018SS/0000116439 - reenvio para Bruno Assunes.
4-

08/02/2018

1-Verificação de atraso na publicação do controlm do sql colunar
2-Aúdio sobre cronograma da migração Teradata 
3-Revisão de algumas views e inclusão de novas no sql colunar para cgu
4-


07/02/2018

1-Ajustes no sql colunar com diferença nas tabelas do SIAPE.
2-Atendimento ao acionamento 2018SS/0000106289 - copia de arquivo oracle
3-Informações sobre quantidade de sessões do microstrategy no teradata "ilimitada" hoje. contudo fisicamente é 2800 pelo fornecedor.
4-Audio com DEFLA, SUPCD, SUNGE para definir dados da extração e carga para teste DWTG banco novo
5-Alteração de incidente para grupo olap conforme 2018RI/0000035392
6-Atendimento e redirecionando para equipe sql server 2018SS/0000107235
7-Atendimento à ss 2018SS/0000113149 - execução de scripts oracle
8-informações sobre java com Thiago e Fagner para atualização de versão.
9-backup tuto de dbq teradata para depois excluir os dois bancos no Teradata.
10-


06/02/2018

1-Conferência com José Lopes sobre o caractere != que não mais vai rodar no odbc 16.0 Teradata
2-Ajustes no sql server com diferença nas tabelas da publicação.
3-Correçao de ajustes no controlm para correção do job CRIA_RELATORIO_CONSUMO_TD
4-Aúdio às 10 com SUPDE, SUNGE, SUPCD para migração Teradata 
5-Aúdio com Ricardo Teradata para revisar dados do cronograma migração Teradata
6-Reunião com André e Thiago para ver ajustes no cronograma da migração Teradata


03-04/02/2018 

1-final de seman


02/01/2018

1-Trabalho para criação de novos usuários de backup do metadados do powercenter para a migração do mesmo
f2-Exclusão de backups antigos no teradata e recolocação de fitas em frozen para testes de backup full com Ricardo Teradata no netbackup
3-teste de backups



01/02/2018

1-Atendimento ao acionamento 2018SS/0000081875 - publicação oracle - ADUANEIRO
2-Atendimento à Lynara com atualizações de informações sobre o cronograma migração teradata
3-Ajustes com Gustavo sobre migração powercenter.
4-Aúdio com Franklin, Hatus sobre problema microstrategy para resolução de problema.
5-


------------------------
JANEIRO


31/01/2018

1-Informações sobre job do controlm para o Desenvolvimento Fortaleza com falha no saldo classe
2-Aúdio com equipe DEFLA, SUPCD, chefia sobre migração do powercenter 
3-



30/01/2018

1-Atendimento ao acionamento 2018SS/0000079318 - AKEMI - retirada 2017
2-Audio sobre migração do powercenter
3-Resolvendo problemas no sql server - colunar que duplicou a quantidade de registro



29/01/2018

1-Atendimento ao acionamento 2018SS/0000076006 - publicação oracle - scnd aguardando usuário
2-Ajustes no backup para migração Teradata com Ricardo Teradata.
3-Atendimento ao acionamento 2018SS/0000079078 - publicação oracle problema mre - allison fez. Confirmar amannhã 
4-Atendimento ao acionamento 2018SS/0000079499 - execução de script

27-28/01/2018

1-final de semana

26/01/2018

1-Atendimento ao acionamento 2018SS/0000071242 - publicacao sigpfgn  
2-Atendimento e informações ao CARLOS - SUNES para verificação de integridade de arquivo para o Mínistério do Planejamento
3-Atendimento ao acionamento 2018SS/0000071687 - publicacao aduaneiro 


25/01/2018

1-Revisão de sql repassado por Victor SUNGE para análise e possível solução do problema
2-Atendimento ao acionamento 2018SS/0000069600 - análise sql estrutura Teradata
3-Atendimento ao acionamento 2018SS/0000068894 - extracao de arquivos para sigpgfn
4-
	
24/01/2018

1-Atendimento ao acionamento 2018SS/0000056075 - execução de script oracle
2-Atendimento ao acionamento 2018SS/0000064966 - execução de script teradata
3-Correção do config do IRPF no corporativo da Receita, vez que deu erro na publicação.
4-Atendimento ao acionamento 2018SS/0000066853 alteração de filtro no teradata
5-Atendimento ao acionamento 2018SS/0000067579 - alteração no fluxo do dwtg no controlm  suspender o contigência.
6-Testes em SQL do jdv para Jean SUPSD São Paulo.


23/01/2018

1-Informações para Pedro Gustavo sobre código 33393 do sql colunar
2-Atendimento ao acionamento 2018SS/0000059298 - verificação sql colunar
3-Atendimento ao acionamento 2018SS/0000061990 - movendo script para a máquina exadata.
4-Atendimento ao acionamento 2018SS/0000062567 - Publicação e execução de script SIGPGFN


22/01/2018

1-Acertos e ajustes sql colunar
2-à Tarde - médico



20-21/01/2018

1-final de semana


19/01/2018
1-Envio de informações para Regina Márcia sobre bancos do corporativo 
2-Informações sobre diferença de dados em um sql no colunar e no teradata, vez que as bases são iguais.
3-Audio com Defla, supgs e supcd sobre consultoria microstrategy
4-Informações sobre usts teradata solicitada pelo Chefe substituto Júlio na Teradata
5-Envio de informações para Victor sunaf - de mensagens sobre erros no Teradata.
6-

18/01/2018

1-Envio do tamanho do banco para Regina Márcia através de Júlio Cezar Chefe substituto.
2-Refazendo planilha de dados de tabelas DWTG para Madalena
3-

17/01/2018

1-Resolvendo problema no dw_pessoal para equipe Eraldo "Jeter"
2-Coleta e Envio de informação sobre alto consumo de cpu para André Freitas
3-Informações para Lynara SUPGS - sobre dados Teradata migração
4-Informações sobre agendamentos para Victor SUNAF que colocou se a retirada do contigência resolveria a questão da liberação dos agendamentos.
5-

16/01/2018

1-Ajustes em diferença no sql server colunar nas tabelas do SIAPE
2-Reunião em Aúdio com Beth, Mada, Júlio, Anderson, Akemi sobre DWTG propostas.
3-

15/01/2018

1-Ajustando estação de trabalho com novo ubuntu 
2-

14/01/2018

1-Ajustes nas conexões da minha estação com os servidores
2-


13-14/01/2018
1-fim de semana


12/01/2018

1-Atendimento ao acionamento nº 2018SS/0000031037 à SUNGE para publicação dos dados em uma tabela WD_ACAO_PT
2-Reunião com equipe OLAP, DEFLA, SUPGS e SUPCD para definirmos os cronogramas das migrações powercenter, teradata e microstraegy
3-Atendimento ao acionametno nº 2018SS/0000031826 publicação teradata



11/01/2018

1-Ajustando minha estação com ubuntu 16.04 com o suporte do Ronaldo Bezerra



10/01/2018

1-Atendimento à informações ao Gotardo Defla sobre jobs SIGEPE
2-




09/01/2018

1-Ajustando sql colunas com diferença causada por inconsistência, pois foram corrigidas tabelas no Teradata pelo desenvolvimento e não comunicadas para a supcd para 
  que fosse feita a mesma correção.
2-Acerto com Ricardo de mudanças nas datas da execução do backup do teradata antes da migração.
3-Atendimento de incidente do sql colunar 2018RI/0000006178
4-Atendimento Tema MRE para alteração no job e pós reexecução do mesmo pelo Rômulo Controlm
5-Atendimento ao acionamento 2018SS/0000018854 - execução de script no sql colunar
6-Atendimetno ao Gotardo Curitiba para correção de um job no controlm que geraHtmlDatas.sh
7-


08/01/2018

1-Atendimento á Ricardo Teradata para reiniciar a máquina de acesso ao Teradata suporte SWS ip 161.148.236.50 reiniciei com init 6
2-Atendimento ao job do TEMA DEST para ajustes para correção no controlm e na máquina de carga do exadata
3-Atendimento ao job do TEMA SIASG para ajustes para correção no controlm e na máquina de carga do exadata
4-Conversa com Fred Gil sobre incidente 07884 dwtg para melhorar os acionamentos à nossa equipe.
5-Abertura de Solicitação de Serviço para conferẽncia de regra de firewall da máquina do acesso remoto.
6-

06-07/01/2018

1-Fim de semana

05/01/2018

1-Conversa com Samuel Defla sobre diferença no sql e no teradata para a tabela lançamento
2-Reunião com Anderson, Beth, Thiago, André Magalhães, Paulo, equipe Defla, Miguel sobre consultoria Teradata
3-Geração de dados de consulta solicitada por Hatus de uma tabela no metadas da produção da STN e enviado para equipe de ferramenta.
4-Atendimento à questão do Luciano do SISCOSERV atualização 
5-Correção do arquivo GREMLIN_JOB para o controle etc 40 2018 que vai rodar hoje a noite
6-Correção da tabela WF_lancamento no sql colunar e com correção definitiva
7-

04/01/2018

1-Continuação ao Atendimento para correção dos sql server colunar
2-Atendimento ao Hatus para verificação de privilegio sobre o usuário de metadados do microstrategy stn
3-Envio de dados para André Freitas sobre uma consulta que estava degradando o ambiente para melhoria na performance  
4-Atendimento ao Acionamento 2018SS/0000007924 - publicação teradata 
5-Atendimento ao Acionamento 2018SS/0000000716 - Execução de script oracle 


03/01/2018

1-Tratamento de Incidente sobre sql server colunar com problemas na madrugada.
2-


02/01/2018

1-Ajustes no Sql server colunar com vários problemas e diferenças a serem resolvidas
2-Atualização do cronograma de migração com RICARDO Teradata.

1- feriado



--===============================================================================================================

DEZEMBRO

22/23/24/25/26/27/28/29/30/31 --

RECESSO FINAL DE ANO


21/12/2017

1-Alteração nos arquivos replicar para adequação à virada do ano 2017 para 2018
2-Alteração nos arquivos replicar para alteração das statisticas de coleta full para coleta summary que é um incremental dos arquivos
3-alteraração no job do controlm para rodar as estatísticas somente no sábado.
4-Download do driver odbc para o teradata 
4-Preparação para execução de backup do banco de metadados da stn para teste no novo projeto dwtg linux produção
5-Inicio de edição de arquivo com todas as máquinas de banco por solicitação de THIAGO SODRÉ
6-Criação de sinônimo e privilégio de select para usuário do MCPJ
7-Execução de scripts de SQL SERVER para Aline da SAS para correção do ambiente de metadados sql colunar
8-

20/12/2017

1-Verificação dos batimentos após correção no processo pelo Control_m
2-Audio com DEFLA, SUNGE, PRODUÇÃO, SUPGS sobre procedimentos de testes na publicão de tabelas do DWTG.
3-Execução de script para a SAS - Aline - para correção no processo do SAS que está com problemas de index.
4-Atendimento ao Renato DEFLA para teste de senha do usuário em questão GDPGFN
5-Atendimento ao Acionamento nº 2017SS/0001060454 para liberação de ambiente à usuário de desenvolvimento
6-



19/12/2017

1-Atendimento ao Gustavo para desbloqueio de usuários no oracle tema ICOMEX
2-Atendimento ao SAS Regina para apagar novamente as tabelas no sql server do metadados SAS
3-Conferẽncia e correção do SQL Colunar sobre diferença apresentada no dia 19/12/2017
4-


18/12/2017 

1-Atendimento ao Fornecedor Teradata para aprendizado e semana com TEradata
2-Exclusão das tabelas do Banco de metadados do SAS sql para atendimento à Regina e Aline SAS
3-Levantamento da solução para ajustes no banco de metadados do SAS com ALINE e Bruno Assunes
4-


16-17/12/2017 - final de semana

15/12/2017

1-Acompanhamento da migração exadata com Gilmar CTIS 
2-informações para o Oracle - Albernaz para resolução de problema no ORACLE BANCO dwcrg36 com powercenter.
3-acompanhamento da cópia dos arquivos do Dwcrg36 para a máquina do exadata
4-Criação de RS para Oracle São Paulo criar um usário para ser aplicado no fatoce e globalce
5-Atendimento ao Acionamento 2017SS/0000990960 - script oracle
6-Atendimento ao Acionamento 2017SS/0001042304 - script oracle
7-Atendimento ao Acionamento 2017SS/0001047622 - script oracle


14/12/2017

----1-Fazer levantamento de informações sobre Migração banco TEradata e passar para Thiago.
2-trabalhando na migração do exadata para repassar os filesystem que devem ser colocado em read only
3-Correção e verificação do relatório 10 maiores impcatatnes do DWTG
4-Aúdio sobre a necessidade de testes na publicação 2018 com DEFLA e SUNGE
5-Acompanhamento do processo de migração do EXADATA
6-Atendimento de informações ao Hilário SUPGS

13/12/2017

1-Teste e alteração no dblink do banco de desenvolvimento Brasília para banco desenvolvimento São paulo.
2-Teste de regra de firewall da máquina de carga Brasília para máquina de carga de São Paulo.
3-Teste do controlm sobre árvore TG para virada de ano com Edgard
4-Verificação de regras de firewall do banco de carga novamente para testes.

12/12/2017

1-Encaminhamento de email sobre Sigepe a pedido de Eudes Oracle para equipe DEFLA Eraldo Curitiba.
2-Correção do texto da publicação do dw - stn contigencia que está errado.
3-Teste de regra e db_link no ambiente de desenvolvimento e carga do exadata juntamente com Ronaldo e equipe são paulo e brasilia
4-Verificação junto com Gustavo Ferramenta sobre problema ocorrido no powercenter com os usuários do Oracle.
5-Reunião com Centro de comando e monitoração para passar informações sobre viewpoint de sessões.
6-


11/12/2017

1-Ajustes com Rômulo na árvore do DWTG para não ocorrer falha nas publicações do final de semana com a extensão do SIAFI
2-Coletando estatística para Relatório Beth Vaz, solicitado por André Freitas SUNGE.
3-Reunião com equipe e Chefe Thiago para defirnirmos atribuições entre o Banco Oracle São Paulo e nossa área.
4-

09-10/12/2017 - FINAL DE SEMANA

08/12/2017

1-Monitoração JOBs dos agendamentos e abortando sessões do microstrategy no viewpoint
2-Ajustando o cria_job (gremlin_job) do contigẽncia teradata para enviar email quando mudar o status ok.
3-Movendo blocos do controlm para a máquina de execução dos blocos no entreposto windows 75

07/12/2017

1-Monitoração e ajustes no viewpoint
2-Preenchimento de documento com dados da SUPCD dos scripts de publicação realizados no DWTG para DEFLA
3-Correção do processo de publicação do dwtg contigência - para correção da data e envio de email para a galera
4-Criação de usuário ADM para o tema EFDC à pedido de Gustavo nossa equipe, para que o mesmo possa criar o projeto no microstrategy
5-

06/12/2017

1-Continuaçao de alterações nos blocos do integration service para migração do ano de 2017 para 2018
2-Assembleia sobre ACT na parte da manhã
3-

05/12/2017
1-Trabalhando em correção da WF_Lancamento no SQL SERVER COLUNAR  que está com diferença devido o problema no CONTROLM de final de semana.
2-Atendimento ao Fagner DEFLA para matar processos no banco de homologacao do comunica TG.
3-Alteração nas views do Sql Colunar para virada do ano de 2017 para 2018
4-Alteração nos blocos do integration service para migração do ano de 2017 para 2018
5-

04/12/2017
1 - Verificação de problema ocorrido no final de semana na publicação do DWTG 
2 - Publicação dos dados da carga para produção Dwtg para atualizar os dados 
3 - Publicação dos dados da carga para AMBIENTE paraleleo do Dwtg para atualizar os dados que estavam inconsistentes.
3 - Atendimento ao Incidente 2017RI/0000306886 Teradata 
4 - Aúdio com equipe SUNAF / DEFLA / SUPGS sobre questão ambiente de contigência para atualizar os dados.
5 - Informações para Frederico SUPST - sobre horários da janela do Teradata
6 - Atendimento à SS 2017SS/0000992512 - SUNAF - Teradata
7 - 


02-03/12/2017 - FINAL DE SEMANA

01/12/2017- Reunião Audio sobre processo de Contigência que vai rolar do dia 02/03/11/2017


 --===============================================================================================================
lançado no mini gdes
NOVEMBRO/2017

30/11/2017

1-Reunião Audio sobre processo de Contigência que vai rolar do dia 02/03/11/2017

29/11/2017
1-Reunião com Lynara, Thiago - SUNAF, Thiago Sodré, Beth Vaz, Julião.
2-Reunião com Centro de Comando: Gustavo Suzukawa e Thiago Sodré, sobre monitoracao com viewpoint para o sistema de login do TG
3-Envio de dados do Desenvolvimento do Teradata para Henrique DE, conforme solicitação do Thiago, autorizado por SISCOR
4-Atendimento a Antenor SUPST - São Paulo, que solicitou informações através de view para recuperar as informações de nomes de tabelas e colunas do banco de produção do Teradata
5-Inicio da edição de script Terada para atendimento à SUPST.
6


28/11/2017

1-Monitoramento no viewpoint, bastante demanda, com exclusão de alguns relatórios no viewpoint para liberar o ambiente
2-Atendimento à André Freitas para alterar uma das views da CGU no SQL COLUNAR.
3-Testando o relatório do André Freitas para análise de dados com problema no mesmo. Relatório Hugo STN.
4-Informações relatório de senhas teradata para decidirmos sobre senha do nosso ambiente para Teradata.
5-Edição de relatório sobre monitoração do tg pelo viewpoint atendendo as situações e regras conforme combinado pela SUNAF.
6-Atendimento ao Acionamento 2017SS/0000989960 - script postgres


27/11/2017

1-Reunião sobre definição do HADOOP - quem vai poder publicar dados.
2-Atendimento sobre sql com victor sunaf - sql do Hugo.
3-Ricardo - Teradata informações sobre migração em Janeiro/2018 - do backup e em feveireiro/2018 para o Banco de Dados.
4-Configurações dos scripts do Dwtg com Teradata para virada do exercicio com André e Mário.


25-26/11/2017 - final de semana


24/11/2017

1-Reunião com Thiago e Ana Paula sobre sql colunar
2-Audio Edgard, Paulo, Luiz Alberto sobre publicação do dwtg. virada de ano
3-Continuação do trabalho com André Freitas das views para a CGU;
4-Atendimento ao Acionamento 2017SS/0000951249 - JDV resposta teradata; 
5-Atendimento ao Acionamento 2017SS/0000980886 - sigpgfn script oracle; 


23/11/2017

1-Publicação de dados da produção para ambiente paralelo Teradata -- FAZENDO
2-Atendimento ao Acionamento 2017SS/0000952810 - Mudança de Vigẽncia para 2018 Teradata - Repassando para Olap trabalhar no projeto no microstrategy
3-Reunião com Centro de comando sobre painel viewpoint - para o centro de comando visualizar sessões bem demandas.
4-Reunião com Lynara, supde, supcd e demais para verificação do processo de contigência do dwtg para o final do ano
5-Repasse de informações sobre conexão oracle para Fagner Defla.
6-Alteração do job na pasta CONTROLMDWTGPRO_COP para criação do ambiente de contigência
7-Informações com Edgard Controlm sobre fluxo do DWTG do ano anterior.
8-

22/11/2017
1-Creuza informações sobre ticket de atendimento para publicação.
2-André freitas atendimento para SQL colunar CGU - alteração em views.
3-SUSPENSA - temporariamente pela SUNAF. Vou cancelar o ticket - 2017SS/0000958652 - questão da lançamento 2015, 2016 e 2017 ---ver com o chefe 
4-Atendimento a alteraçao e atualização da view 06 da CGU para adicionar ao conjunto das 16 que serão disponibilizadas para à CGU.
5-alteração dos scripts do ambiente paralelo DWTG para cópia do mesmo - faltando apenas o gremlin job para corrigirmos.
6-Atendimento ao Antenor do DAAS são Paulo, pois o mesmo solicitou orientação sobre os horários das janelas do DAAS / jdv ok.

21/11/2017

1-Correção de diferença no batimento da tabela WA_BATIMENTO_PAGAMENTO;
2-Conversa com Thiago sobre pendências no Tg a ser resolvido.
3-Envio de relação de lista de tabelas de negócio DWTG/SQL para Thiago Sunaf
4-Atendimento ao Acionamento 2017SS/0000956903 - Scripst Postgres
5-Atendimento ao Acionamento 2017SS/0000956904 - Scripst Postgres
6-Conclusão da Atividade 2017AT/0000098172;
7-Conclusão da Atividade 2017AT/0000098955;
8-Conclusão da Atividade 2017AT/0000098115;
9-Atendimento ao Acionamento 2017SS/0000966720 - publicar teradata homologação; 
10-Encaminhamento de informações sobre tempo de publicação de um exercicio da lançamento e agregadas no tg com um exercicio para Victor SUNAF
11-Encaminhamento de informações sobre pendências nas views do projeto do CGU para Sql colunas para André Freitas.
12-Atendimento ao Incidente 2017RI/0000297807 - Whpro102 já encerrado

20/11/2017 

1-Reunião com CETEC, SUPSD, SUPGS sobre réplica Teradata / Hadoop para integração de dados.
2-atendimento ao Johantan e Thiago sobre dados do Teradata no Centro de Comando.
3-Atendimento à Gotardo DECTA sobre informações de export de carga 
4-Atendimento ao Acionamento 2017SS/0000957932 - Publicação Teradata

18-19/11/2017- fim de semana

17/11/2017

1-Atendimento ao Sql Server Colunar com problema no controlm no job de batimento que já foi corrigido pelo Romulo
2-Atualização das agregadas nas colunas sequencial que estavam gerando nulos - Thiago e Frederico Gil.
3-Reunião com Akemi, Thiago, André Mag, Samuel sobre assunto agregada nova no teradata 
4-Atendimento ao Acionamento 2017SS/0000950076 - Publicação Teradata
5-Atendimento ao incidente 2017RI/0000263885 - encerramento do mesmo sobre job da carga Eraldo Curitiba.


16/11/2017
1-FAGNER - informações sobre regra de firewall no entreposto do desenvolvimento
2-ajuda à LABYB - govi data - classificação
3-Coleta de informações no integration service sql server para novas solicitação de regras de firewall para novo ambiente HADOOP
4-Atendimento ao Acionamento 2017SS/0000949296 - Script oracle
5-Atendimento ao Acionamento 2017SS/0000941649 - Publicação Teradata
6-Atendimento ao Acionamento 2017SS/0000946546 - Execução de script
7-Atendimento ao Acionamento 2017SS/0000946544 - Publicação Teradata

15/11/2017 
1-FERIADO

14/11/2017 - 
1-FALTA - SOBREAVISO

13/11/2017
1-Aúdio com Thiago Sunaf sobre relatório teradata sql. 
2-Reunião Júlio, José Lopes, Mário e Thiago - sobre documento de melhorias DWTG
3-Abertura de RDM - para Alterar fluxo da Réplica - Sql Teradata
4-Cópia do banco de produção TERADATA para Banco produção paralelo.
5-Resposta de email enviado pela Beth Vaz direcionado para Thiago Sodré para resposta à mesma.
6-Atendimento ao Acionamento 2017SS/0000939495 - Questionamento Teradata
7-Atendimento ao Acionamento 2017SS/0000936327 - Demanda cancelada por solicitação do usuário.
8

11-12/11/2017- fim de semana

10/11/2017

1-Atendimento ao Thiago Sunaf - sobre informações do JDV - lista de tabelas disponíveis
2-Atendimento ao Thiago Sunaf - sobre informações do Relatório Sql com problema no cliente
3-Atendimento ao Acionamento 2017SS/0000921083 - Publicação Teradata 
4-Atendimento ao Acionamento 2017SS/0000916350 - Publicação Teradata
5-Continuação SQL Server com André Freitas - para continuação de implantação de views.
6-Atendimento ao Acionamento 2017SS/0000935130 - Publicação Teradata ---- ainda em execução.
7-Atendimento ao Thiago Sunaf sobre informações de sql tabela WF_PENSIONISTA_SIAPE_CUSTO
8-Atendimento para SUNAF para apagar banco de 2016 e backup no teradata - TARA
9-Reexecução das agregadas de homologação em continuação ao ticket 2017SS/0000935130
10-
 

09/11/2017
1-Conversa com Thiago Sunaf sobre sql colunar - tabelas de negócios - montar relação definitiva.
2-Atendimento ao Acionamento 2017SS/0000910350 - Publicação Teradata 
3-Atendimento André Freitas sobre views Sql Server para CGU
4-Correção situação Sql colunar agregadas
5-Atendimento ao Acionamento 2017SS/0000926270  Publicação Oracle - SIGPGFN
6-Atendimento ao Acionamento 2017SS/0000925096  Publicação Oracle - SGPF - EXADATA
7-Atendimento ao Acionamento 2017SS/0000887475  Criação de Usuário Oracle - SIGPGFN
8-Encerramento de  2 incidentes SCCD
9-Coleta de relatório com spool alto e envio para análise de André Freitas.


08/11/2017


1-Conversa sobre 408 tabelas Teradata e Sql Server resolução para definição desse assunto
2-Conversa sobre banco 2016 teradata para eliminação do mesmo.
3-Audio com SUNAF - sobre migração de metadados  microstrategy 
4-Testes de novas agregadas - no SQL SERVER para mudança de apontamento para o DBCAR ao invés de rodar no SQL SERVER.
5-Audio com SUNAF, DEFLA, SUPCD Thiago chefia para criação de ambiente PARALELO DWTG virada de ano;
6-Atendimento ao Gotardo, de Curitiba sobre SIGEPE para matar sessões e sugerir alteração no banco para matar as sessões.
7-Atendimento ao Acionamento 2017SS/0000924991  Aguardando usuario 
8-Atendimento ao Acionamento 2017SS/0000924546 Execução Script oracle
9-Atendimento ao Acionamento 2017SS/0000908253  Publicação Oracle - sigpgfn

07/11/2017

1-Conversa com Eraldo e equipe para resolução do problema de script na carga do condomínio que está muito lento em algumas publicações
2-Conversa com André freitas sobre relatórios com alto consumo de cpu e spool no Teradata, o mesmo fez vários testes e execução 
3-Aúdio com equipe do DW AFIS que encontrava-se com problema no banco de carga do EXADATA em São Paulo. O mesmo foi resolvido pelo Negrini e o Balduino entrou para ajudar também.

06/11/2017 - 

1-Monitoramento do ambiente teradata após historiamento Ana 
2-Coleta de relatórios e envio para André Freitas para análise e correção.
3-Correçaõ Sql server - agregadas com problemas.
4-Reunião com André e Thiago sobre DWTG
5-Atendimento ao Incidente 2017RI/0000263885 sobre job demorando SIGEPE
6-Atendimento ao Incidente 2017RI/0000279626 sobre job demorando automático da p76 - acao judicial

04-05/11/2017- fim de semana

03/11/2017

1-Envio de relatórios anteriores dos 10 mais impactantes Teradata para lista Sunaf
2-Correção do processo de envio dos 10 mais impactantes Teradata no microstrategy para lista sunaf
3-Reunião com André, José Lopes e Thiago, sobre definições do DWTG.
4-Atendimento ao Acionamento 2017SS/0000907877 execução script oracle
5-Atendimento ao Acionamento 2017SS/0000902725  Execução Script postgres - repassar para postrgres
6-Atendimento ao Acionamento 2017SS/0000906180 execução script oracle - aguardando usuário

02/11/2017

1-Feriado de Finados

01/11/2017

1-Atendimento ao Acionamento  2017SS/0000900752  Publicação Oracle - prioridade -aguardando para amanhã - DIME
2-Atendimento ao Acionamento 2017SS/0000896614  execução script teradata Teradata -  
3-Coleta e envio de um relatório com spoll altíssimo para SUNAF na pessao de André Freitas para análise do mesmo.
4-Atendimento e acompanhamento à consultora Teradata Ana Sipaque
5-Atendimento ao Acionamento 2017SS/0000899531  Publicação Teradata  
6-Atendimento à solicitação do Chefe Thiago Sodré para informações sobre falha de login no teradata 
7-Atendimento à incidente Teradata nº 2017RI/0000xxxxxx - node de cluster não respondendo. não peguei o número
8-Atendimento à incidente Teradata nº 2017RI/0000283786 - node de cluster não respondendo.
9-Atendimento à incidente Teradata nº 2017RI/0000283802 - node de cluster não respondendo.
10-Atendimento à incidente Teradata nº 2017RI/0000283891 - node de cluster não respondendo.
11-Atendimento à incidente Teradata nº 2017RI/0000283901 - node de cluster não respondendo.
12-Atendimento à incidente Teradata nº 2017RI/0000283994 - node de cluster não respondendo.
13-Acompanhamento de Reboot servidores entrepostos com Bruno Assunes - Sql Server.


--*************************************************************************************************************
--*************************************************************************************************************
--*************************************************************************************************************
OUTRUBRO/2017


31/10/2017

1-Atendimento ao Acionamento  2017SS/0000889129  Publicação Oracle - prioridade -aguardando para amanhã
2-Reunião com Bruno Assunes sobre detalhes e mudanças no Sql Server
3-Atendimento à solicitação do Thiago Sodré sobre dblink postgres - REPASSADO PARA GRUPO POSTGRES
4-Atendimento ao SQL colunar com André Freitas na revisão dos nomes das views para CGU.


30/10/2017 - atendidos

1-Atendimento ao Acionamento  2017SS/0000873870  Execução de script POSTGRES 
2-Coleta e envio de um relatório com spoll altíssimo para SUNAF na pessao de André Freitas para análise do mesmo.
3-Correção no banco da Replica com diferenças no batimento Teradata Sql Server nas agregadas -- CORRIGIDO
4-Teste de conexões com relatório José Lopes com André Freitas.
5-Atendimento ao Acionamento  2017SS/0000885208  Publicação Teradata - EXECUTANDO - 
6-Atendimento ao Acionamento  2017SS/0000877778  Verificação de Informações - sql server
7-Atendimento ao Acionamento  2017SS/0000889059  Execução de script orACLE - creuza 
8-Atendimento ao Acionamento 2017SS/0000892222  execução script oracle - repassar para controlm são Paulo - DIRECIONADO.
9-Atendimento ao Acionamento 2017SS/0000891770  Execução de script oracle 


--*************************************************************************************************************
--*************************************************************************************************************
--*************************************************************************************************************
===============================================================================================================
20/02/2017
1-PREPARANDO PARA COLETAR ESTATÍSTICAS .....

17/02/2017
1-Atendimento ao Acionamento 2017RS/000048843 Execução de script teradata
2-criação de tabelas de exercicio no teradata
3-coleta de estatísticas de várias consultas sql para otimização.
4-
DEMANDA DO SAMUEL QUE VEIO NO SCCD. -- NA MARRA FAZER E DEPOIS FECHAR.
2017RDM/00000279

02/02/2017
f1-Atendimento ao Acionamento 2017RS/000029463 Publicação Teradata - fazer no dia 04 após publicação normal.


26/01/2017
1-Atendimento ao Acionamento 2017RS/000024362 Execução de script teradata
 	

25/01/2017
1-Atendimento ao Acionamento 2017RS/000023004 Execução de script oracle
2-Atendimento ao Acionamento 2017RS/000023183 Execução de script oracle
3-Atendimento ao Acionamento 2017RS/000023191 Execução de script oracle
 	


24/01/2017
1-Atendimento ao Acionamento 2017RS/000022139 Publicação Teradata
2-Atendimento ao Acionamento 2017RS/000022085  Execução de script oracle


23/01/2017
1-Atendimento ao Acionamento 2017RS/000020640 Execução de script oracle

19/01/2017
1-Atendimento ao Acionamento 2017RS/000016241 PERMISSÃO DE USUÁRIO Teradata - 78886562349 
2-Atendimento ao Acionamento 2017RS/000017889 Execução de script oracle
3-Atendimento ao Acionamento 2017RS/000016714 Verificacão oracle
4-Atendimento ao Acionamento 2017RS/000017538 Execução script creuza 	
 	
Não conseguimos reabrir pois já 
REABRIR O TICEKT 14118 para depois fechar com Solicitação Atendida do tema pessal



17/01/2017
1-Atendimento ao Acionamento 2017RS/000003471  Execução de script oracle - MESMO TICKET
1-Atendimento ao Acionamento 2017RS/000003471  Publicação oracle MCPJ    - MESMO TICKET
2-Atendimento ao Acionamento 2017RS/000014329  Publicação oracle snsp - emergência.
3-Atendimento ao Acionamento 2017RS/000015181  Publicação oracle DIME

4-Atendimento ao Acionamento 2017RS/000014063  Publicação oracle CPFI
5-Atendimento ao Acionamento 2017RS/000014078  Publicação oracle COEX
6-Atendimento ao Acionamento 2017RS/000014091  Publicação oracle PRFI
7-Atendimento ao Acionamento 2017RS/000014117  Publicação oracle COBC
8-Atendimento ao Acionamento 2017RS/000014693  Publicação oracle SGPF
9-Atendimento ao Acionamento 2017RS/000014118  Publicação oracle PESSOAL/SIAPESGPF
 
16/01/2017

1-Atendimento ao Acionamento 2017RS/000013589 Publicação oracle SGPF
2-Atendimento ao Acionamento 2017RS/000013305 Publicação oracle IRPF
3-Atendimento ao Acionamento 2017RS/000013178 Publicação oracle ACES

 

14/01/2017
1-Atendimento ao Acionamento 2017RS/000012244 Publicação oracle ARCX
2-Atendimento ao Acionamento 2017RS/000012118 Publicação oracle CNPJ
3-Atendimento ao Acionamento 2017RS/000011517 Publicação oracle IRPF


13/01/2017
1-Atendimento ao Acionamento 2017RS/000011141 Publicação oracle ANLS
2-Atendimento ao Acionamento 2017RS/000011715  Execução de script oracle
3-Atendimento ao Acionamento 2017RS/000010406  Execução de script oracle
4-Atendimento ao Acionamento 2017RS/000009947  Execução de script oracle
5-Atendimento ao Acionamento 2017RS/000009913  Execução de script oracle
6-Atendimento ao Acionamento 2017RS/000012306  Execução de script oracle
7-Atendimento ao Acionamento 2017RS/000011992   Execução de script oracle 
8-Atendimento ao Acionamento 2017RDM/000000879   Execução de script oracle 
9-Atendimento ao Acionamento 2017RDM/000000920   Execução de script oracle 

 


--===============
PARA AMALIA

RDM 920 DE TABELA
SEGUNDA RDM 879
 --=============


12/01/2017
1-Atendimento ao Acionamento 2017RS/000008712 Executar script oracle
2-Atendimento ao Acionamento 2017RS/000009335 Executar script oracle para coleta de estatistica
3-Atendimento ao Acionamento 2017RS/000009220 Publicação oracle ANLS
4-Atendimento ao Acionamento 2017RS/000008656 Publicação oracle SCND
5-Atendimento ao Acionamento 2017RS/000007202 Publicação oracle SIGEPE
f6-Atendimento ao Acionamento 2017RS/000007370   Publicação oracle ARCOMEX - ARCX

 		
 

11/01/2017
1-Atendimento ao Acionamento 2017RS/000008407 Executar script oracle
2-Atendimento ao Acionamento 2017RS/000008250 Executar script oracle
3-Atendimento ao Acionamento 2017RS/000007966 Executar script oracle


10/01/2017
f1-Atendimento ao Acionamento 2017RS/000007370 Publicação Oracle  fazer amanhã 10/01/2017 cristiane.machado@serpro.gov.br 
2-Atendimento ao Acionamento 2017RS/000007817 Publicação Teradata
3-Atendimento ao Acionamento 2017RS/000007358 Executar script oracle
4-Atendimento ao Acionamento 2017RS/000003958 Publicação oracle


09/01/2017
1-Atendimento ao Acionamento 2017RS/000003494 Publicação Oracle 
2-Atendimento ao Acionamento 2017RS/000002632 Executar script oracle
3-Atendimento ao Acionamento 2017RS/000005406  Publicação Oracle 
4-Atendimento ao Acionamento 2017RS/000006388 Publicação Oracle 
5-Atendimento ao Acionamento 2017RS/000006953 Publicação Oracle 
6-Atendimento ao Acionamento 2017RS/000007048 Publicação Oracle  
7-Atendimento ao Acionamento 2017RS/000007297 Publicação Oracle ADUANEIRO

9-Atendimento ao Acionamento 2017RS/000007103 Executar script oracle
10-Atendimento ao Acionamento 2017RS/000007490 Executar script oracle
 	
(81) 98804-4000 plantao dime


06/01/2017
1-Reunião na Sede com Iara, André, André Freitas e Anderson sobre modelo dwtg - historiamento UG

05/01/2017
1-Atendimento ao Acionamento 2017RS/000004708 Publicação Teradata
2-Atendimento ao Acionamento 2017RS/000005048 Publicação Teradata
3-Atendimento ao Acionamento 2017RS/000005015 Executar script postgres
4-Atendimento ao Acionamento 2017RS/000002703 Executar script postgres
5-Atendimento ao Acionamento 2017RS/000003896 Executar script oracle
6-Atendimento ao Acionamento 2017RS/000003054 Executar script oracle
 	
04/01/2017
1-Atendimento ao Acionamento 2017RS/000000844 Executar script postgres
2-Atendimento ao Acionamento 2017RS/000002557 Execução de script Teradata
3-Atendimento ao Acionamento 2017RS/000002703 Executar script oracle
4-Atendimento ao Acionamento 2017RS/000003184 Execução de script Teradata
5-Atendimento ao Acionamento 2017RS/000003676 Executar script oracle
6-Atendimento ao Acionamento 2017RS/000003921 Executar script Teradata
 	
  
03/01/2017
1-Atendimento ao Acionamento 2017RS/000000250 Executar script postgres
2-Atendimento ao Acionamento 2017RS/000001149 Executar script postgres
 	
 	
02/01/2017
1-Atendimento ao Acionamento 2017RS/000000622 Publicação Teradata
2-Atendimento ao Acionamento 2017RS/000000579 Executar script 
3-Atendimento ao Acionamento 2017RS/000000287 Executar script - portal de publicação postgres
4-Atendimento ao Acionamento 2017RS/000003797 Executar script  oracle
5-Atendimento ao Acionamento 2017RS/000003676 Executar script  oracle

 	
30/12/2016
1-Atendimento ao Acionamento 2016RS/000371854 Execução script para publicação


29/12/2016
1-Atendimento ao Acionamento 2016RS/000370465 Execução script para publicação
2-

28/12/2016
1-TRABALHANDO NA APROPRIAÇÃO DOS AMBIENTES STN, CONDOMINIO, CORPORATIVO  DO MICROSTRATEGY WEB E IS.

27/12/2016
1-Atendimento ao Acionamento 2016RS/000369713 Publicação Teradata
2-Atendimento ao Acionamento 2016RS/000370270 Execução script sigpgfn
3-Atendimento ao Acionamento 2016RS/000369603 Executar script
4-Atendimento ao Acionamento 2016RS/000369777 copia arquivos sql bruno


26/12/2016
1-Atendimento ao Acionamento 2016RS/000367110 Publicação Teradata
f2-Atendimento ao Acionamento 2016RS/000369350 Publicação oracle aduaneiro adnf são paulo
3-Atendimento ao Acionamento 2016RS/000369349 Publicação oracle aduaneiro licenciamento	
4-Atendimento ao Acionamento 2016RS/000369082 execução de scripts oracle	
5-Atendimento ao Acionamento 2016RS/000369307 Publicação Teradata
f6-Atendimento ao Acionamento 2016RS/000369638 Publicação oracle ACES	
7-Atendimento ao Acionamento 2016RS/000369597 EXECUÇÃO DE SCRIPT VALDIANA SELECT	

16/12/2016
1-Atendimento ao Acionamento 2016RDM/000035151  criação de usuário stg perd


14/12/2016
1-Atendimento ao Acionamento 2016RDM/000035237  Publicação Teradata
2-Atendimento ao Acionamento 2016RDM/000035208  Publicação Teradata 

13/12/2016
1-

12/12/2016
1-Atendimento ao Acionamento 2016RS/000358858 Execução de script oracle - creuza
2-Atendimento ao Acionamento 2016RS/000358480 Execução de script oracle - creuza
3-Atendimento ao Acionamento 2016RS/000356838  Execução de script postgres

08/12/2016
1-apagar banco dbp_33393_dwtg
2-ambiente homologação ajustar para controlm e buscar do banco dbcar_33393_dwtg_hom

07/12/2016
1-Atendimento ao Acionamento 2016RDM/000034907 RDM PARA correção de publicação.
2-Atendimento ao Acionamento 2016RDM/000034820 RDM PARA correção de publicação.


06/12/2016
1-Atendimento ao Acionamento 2016RS/000352580 Publicação Aduaneiro pdw03
2-Atendimento ao Acionamento 2016RS/000352581 Publicação Aduaneiro whpro102 	 	
3-Atendimento ao Acionamento 2016RS/000354087 Publicação Teradata
4-Solicitação de backup para oracle do esquema metadados da STN à pedido de Fernanda
5-Reunião com equipe da SUPCD sobre BLOCKCHAIN 
6- 

05/12/2016
1-Atendimento ao Acionamento 2016RI/000377410 Resolução backup poc sql.
2-Atendimento ao Acionamento 2016RS/000352265 Sinônimos EECF homologação.
3-Revisão de esquemas de metadados para limpeza dos bancos, com Fernanda
f4-Teste no sistema de padrões se o Renato Medeiros já está acessando.
5-



 	  

02/12/2016
1-Atendimento ao Acionamento 2016RI/000378310 Resolução incidente Luciana.
2-Atendimento ao Acionamento 2016RS/000350052 Publicação Teradata

	  

01-12-2016
1-cópia do esquema de metadados da stn - à pedido do José Lopes - 


29/11/2016
1-Atendimento ao Acionamento 2016RS/000347383 Publicação Teradata
2-



28/11/2016
1-Atendimento ao Acionamento 2016RS/000346217 Execução de Script oracle



25/11/2016
1-criar usuário powercenter do anls à pedido de Fernanda
2-revisar esquemas do oracle com Fernanda para ver se pode apgar alguns
3-Atendimento ao Acionamento 2016RS/000345024 Publicação Oracle FINANCEIRO
 


24/11/2016
1-Atendimento ao Acionamento 2016RS/000343126 Criação de usuario Teradata 	




23/11/2016
1-Atendimento ao Acionamento 2016RS/000341515 Execução de Script Teradata 	
2-preparando arquivos para coleta de estatistica do Teradata.
3-Atendimento ao Acionamento 2016RS/000343050 Execução de Script oracle
4-Atendimento ao Acionamento 2016RS/000343056 Execução de Script oracle
5-Atendimento ao Acionamento 2016RS/000343015 Execução de Script oracle
 


 
22/11/2016
1-Atendimento ao Acionamento 2016RS/000341280 Publicação Oracle ADUANEIRO

21/11/2016
1-Atendimento ao Acionamento 2016RS/000338579 Execução de Script Teradata
2-Atendimento ao Acionamento 2016RS/000339896 Publicação Oracle ADUANEIRO

17/11/2016
1-Atendimento ao Acionamento 2016RS/000335841 Execução de Script Teradata
2-Atendimento ao Acionamento 2016RS/000335843  Execução de Script Teradata
 
14/11/2016
1-Atendimento ao Acionamento 2016RS/000332875 Execução de Script Teradata
2-Atendimento ao Acionamento 2016RS/000333262 Execução de Script Teradata
3-

11/11/2016

1-criando copia de usuarios no banco bimd001 para gustavo
2-enviar relação de scripts de tabelas da produção para Regio Fortaleza

10/11/2016
1-Atendimento ao Acionamento 2016RS/000331349 Execução de Script Teradata
2-Avaliação da estrutura de homologação teradata para mudar banco de origem do dbcar para o dbcar-hom

09/11/2016
1-Atendimento ao Acionamento 2016RS/000328569 relatorios de emails - retirar usuario. Claudia
2-Atendimento ao Acionamento 2016RS/000324300 correção de dados do SCND para Aparecido DE são Paulo.
  
08/11/2016
1-Atendimento ao Acionamento 2016RS/000328408 Publicação Oracle ADUANEIRO
2-Atendimento ao Acionamento 2016RS/000328272 Publicação Oracle ACES
f3-Atendimento ao Acionamento 2016RS/000328245 Publicação Oracle CNPF
4-Atendimento ao Acionamento 2016RS/000329097 Publicação Oracle ARRC
5-Atendimento ao Acionamento 2016RS/000328112 Publicação Oracle IRPF
6-TEM UMA DO DIME

04/11/2016
1-Atendimento ao Acionamento 2016RS/000325713 e RDM  2016RDM/000031699 Execução de Script Teradata
2-Atendimento ao Acionamento 2016RDM/000031536 Criar banco de carga-homologação Teradata


03/11/2016
1-Verifição se foi publicada os diagramas do oryx
2-Reunião sobre scripts do speck - SCCD com Labyb e Giovanna
3-Teste com banco de dados dbpro com Attunity
4-teste de aplicação de count no sql assitent
5-manual como executar os usuários da stn no teradata.
6-
 	

01/11/2016
1-Atendimento ao Acionamento 2016RDM/000031221 Execução de Script Oracle
2-Atendimento ao Acionamento 2016RS/000317837 Atendimento de privilegios - dirf
 
27/10/2016
1-Preparando backup do bancos que vão ser apagados no teradata
2-

26/10/2016
1-Criação de usuários de metadados à pedido de José Lopes. 
2-ATENDIMENTO De incidente a pedido de giovanna sobre DIRF adm - privilégios
3-Atendimento ao Acionamento 2016RS/000314325 Execução de Script Teradata
4-Atendimento ao Acionamento 2016RS/000317641 Execução de Script Teradata
5-Preparando esquemas para migração da produção amanhã microstrategy
6-Fazendo backup mensal - para teradata bancos que vão serem apagados.
 	
DIÁRIO DE BORDO - MÁRIO MARCOS
24/10/2016
1-Criação de usuários de metadados à pedido de Hatus.
2-Criação de usuários de metadados à pedido da Fernanda.
3-Atendimento ao Acionamento 2016RS/000315449 Execução de Script oracle
4-Atendimento ao Acionamento 2016RS/000316037 Execução de Script oracle
5-Atendimento Claudia Jesus de RDM para Fernanda - privilegios 
 
21/10/2016
1-Criação de usuários de metadados à pedido da Fernanda.
2

20/10/2016
1-Atendimento ao Acionamento 2016RS/000312985 Execução de Script oracle
2-Atendimento ao Acionamento 2016RS/000312925  Execução de Script oracle


19/10/2016
1-copiando metadados do desenvolvimento do condominio à pedido de Fernanda
2-Atendimento ao Acionamento 2016RS/000312562 inclusão de emails no relatorios ARCX
3-Atendimento ao Acionamento 2016RS/000312570 Execução de Script oracle
 
18/10/2016
1-editando e corrigindo processos pendentes de gestão de melhoria para EGOP

17/10/2016
1-Atendimento ao Acionamento 2016RS/000309469 Execução de Script teradata
2-Atendimento ao Acionamento 2016RS/000309395 Execução de Script oracle
3-Atendimento ao Acionamento 2016RS/000309359 Publicação Oracle ACES
4-Atendimento ao Acionamento 2016RS/000308250 Execução de Script para update da tabela wf_lancametno
fazer no final da tarde.
 
14/10/2016
1-Atendimento ao Acionamento 2016RS/000306656 Execução de Script para alteração de view no teradata
2-Atendimento ao Acionamento 2016RS/000306656 Execução de Script 
 	 
13/10/2016
1-Atendimento ao Acionamento 2016RS/000305736 Execução de Script 
2-Atendimento ao INCIDENTE 2016RI/000330710 falha de backup 
3-Atendimento ao Acionamento 2016RS/000305762 Execução de Script 
4-Atendimento ao Acionamento 2016RS/000303467 Alteração do TASM no Teradata. 
 	 	
12/10/2016
1-Atendimento ao Acionamento 2016RS/000303460 Publicação Oracle SGPE
2-Criação de usuário no oracle de METADADOS para teste no metadados de produção do corporativo.
3-Atendimento ao Acionamento 2016RS/000304707 Execução de Script 
4-Atendimento ao Acionamento 2016RS/000305693 Execução de Script 

11/10/2016
1-Atendimento ao Acionamento 2016RS/000303192 Publicação Oracle ACES
2-Atendimento ao Acionamento 2016RS/000301285 Publicação Oracle DIME ANTIGO
 
10/10/2016
1-Atendimento ao Acionamento 2016RS/000302229 Publicação Oracle ACES
2-Atendimento ao Acionamento 2016RS/000301648 Publicação Oracle COBC
3-Atendimento ao Acionamento 2016RS/000302546 Publicação Oracle CPFI
4-Atendimento ao Acionamento 2016RS/000302592 Publicação Oracle REHU 	
 	 

07/10/2016
1-Atendimento ao Acionamento 2016RS/000299842 Publicação Oracle DIME
2-Atendimento ao Acionamento 2016RS/000300611 Publicação Oracle COEX

06/10/2016
1-Análise de relatório - sobre banco de dados. - discutir novamente com Gustavo/Ronaldo e outros.
2-Atendimento ao Acionamento 2016RS/000298978 Publicação Oracle SGPF
3-Atendimento ao Acionamento 2016RS/000298759 Publicação Oracle SCDP
4-Atendimento ao Acionamento 2016RS/000300678 Execução de script oracle
5-Atendimento ao Acionamento 2016RS/000300272  Execução de Script SNSP
6-Atendimento ao Acionamento 2016RS/000300714  Execução de Script PESSOAL

 
 

05/10/2016
1-Atendimento ao Acionamento 2016RS/000289998 Análise de Relatório Teradata.
2-Atendimento ao Acionamento 2016RS/000296838 Publicação Oracle DIME
3-Atendimento ao Acionamento 2016RS/000296791 Publicação Oracle DIME
4-Atendimento ao Acionamento 2016RS/000297279 Publicação Oracle ADUANEIRO CONDOMINIO
5-Atendimento ao Acionamento 2016RS/000297553 Publicação Oracle RENAINF


04/10/2016
1-Atendimento ao Acionamento 2016RS/000296567 Publicação Oracle ACES 
2-Atendimento ao Acionamento 2016RS/000296207 Publicação Oracle ADUANEIRO
3-Atendimento ao Acionamento 2016RS/000295994 Publicação Oracle ADUANEIRO CONDOMINIO
4-Atendimento ao Acionamento 2016RS/000295780 Execução de Script oracle

  
03/10/2016
1-Reunião com chefia sobre informaões diversas dos serviços
2-Informações com Moacir sobre máquina aix e cabo placa hba - à pedido de Iara
3-Atendimento ao Acionamento 2016RS/000296504 Informações DWTG  
4-Atendimento ao Acionamento 2016RDM/000027686 rdm aumento de tablespace atendida por Ronaldo  
 	  

30/09/2016
1-Criação de Sysnoninomos para o desenvolvimento tema ANLS e SNSP
2-Atendimento ao Acionamento 2016RS/000294456 Publicação Oracle SGPJ 
 




29/09/2016
f1-Atendimento ao Acionamento 2016RS/000290449 Publicação Oracle SIGPGFN 
2-Atendimento ao Acionamento 2016RS/000291335 Publicação Oracle SIGPGFN 
3-Atendimento ao Acionamento 2016RS/000292754  Publicação Oracle SIGPGFN 
4-Atendimento ao Acionamento 2016RS/000292664  Publicação Oracle SGPF 



28/09/2016
2-VERIFICAÇÃO DE RELATÓRIO MICROSTRATEGY  	
3-Atendimento ao Acionamento 2016RS/000291862 Publicação Oracle - 

 	


27/09/2016
1-correção de erro no controlm são paulo - sped tablespace estourado
2-



26/09/2016
1-Resolvendo questões controlm-m sobre indices do SPED 
2-Ajustar questão das tabelas particionamentos das tabelas documentos.
3-copia de usuário de metadados de teste no bimd004 à pedido da Fernanda
4-Criar usuário de oracle no banco de homologação de spotfire à pedido da giovanna
5-




23/09/2016
1-Informações para Everton sobre aumento de tablespace atendida pelo Alisson 
2-Aúdio com Samuel sobre particionamento de tabelas continuação.
3-Atualizando diagrama de postgres banco no oryx
4-

22/09/2016
1-
P5-Pedido para CDSEG reservar 2 ips para máquinas DATA DISCOVERY


21/09/2016

1-Reunião Humberto sobre Desativação na CDSDW
2-Levantamento de Script para desativação e repasse para Hatus colocar no SISHATUS
3-Atendimento ao Acionamento 2016RI/000308614 Tratamento de Incidente  	  
4-Duplicação de Schema no Oracle à pedido da Fernanda - Ferramenta.


20/09/2016

1-Resolvendo questão INFORMAÇÕES DE TABELAS TERADATA que ficaram pendentes para particonamento com Ronaldo, Giovanna e Regio/Samuel DE 
2-Atendimento ao Acionamento 2016RS/000283148 Oracle - Execução de script.
3-Atendimento ao Acionamento 2016RS/000283473 Publicação Oracle - 

19/09/2016 - Retorno de férias

1-Resolvendo questão Tablespace do SPED  - ok.
2-


26/08/2016
1-Atendimento ao Acionamento 2016RS/000260737 Publicação de dados Teradata
2-DWTG com André Magalhaẽs e Ronaldo, Mário para ajustes
3-


25/08/2016
1-DWTG com André Magalhaẽs e Ronaldo, Mário para ajustes



24/08/2016
1-Execução de script de estatística do enterprise manager à pedido do Hatus.
2-

23/08/2016
1-Fazendo compressão de tabelas no teradata banco de cargas


19/08/2016
1-Fazendo compressão de tabelas no teradata banco de cargas


18/08/2016
1-Fazendo compressão de tabelas no teradata banco de cargas

17/08/2016
1-Fazendo compressão de tabelas no teradata banco de cargas
2-execução de scripts failed log do banco de stn -- pedido de Hatus
3-

16/08/2016
1-Fazendo compressão de tabelas no teradata banco de cargas
2-Programação do backup - do Teradata para o Banco de cargas dbcar
3-


15/08/2016
1-Fazendo compressão de tabelas no teradata banco de cargas
2-


11/08/2016
1-Auxílio a Ándre Magalhães nos serviços do DWTG - sobre alterações no TERADATA.
2-Reunião sala de Crise no CENTRO DE COMANDOS (DWTG).
3-


10/08/2016
1-Auxílio a Ándre Magalhães nos serviços do DWTG - sobre alterações no TERADATA.
2-Correção das apropriações no TERADATA dos valores de banco.


05/08/2016
1-Auxílio a Ándre Magalhães nos serviços do DWTG - sobre alterações no TERADATA.
2-



04/08/2016
1-Auxílio a Ándre Magalhães nos serviços do DWTG - sobre alterações no TERADATA.



03/08/2016
1-Curso de Data Warehouse - Regina Márcia
2-Auxílio a Ándre Magalhães nos serviços do DWTG - sobre alterações no TERADATA.
3-Atendimento ao Acionamento 2016RS/000233894 Publicação de dados Teradata



02/08/2016
1-Curso de Data Warehouse - Regina Márcia
2-Auxílio a Ándre Magalhães nos serviços do DWTG - sobre alterações no TERADATA.




01/08/2016
1-Auxílio a Ándre Magalhães nos serviços do DWTG - sobre alterações no TERADATA.
2-teste com tabelas para replicaçaõ hoje a noite. com André Magalhaẽs.


FÉRIAS 

15/07/2016
1-Atendimento ao Acionamento 2016RS/000222205 Execução de Scripts de Oracle
2- 
3-

14/07/2016
1-Atendimento ao Acionamento 2016RS/000219890 Publicação de dados ORACLE
2-Atendimento ao Acionamento 2016RS/000219228 Publicação de dados ORACLE
3-Continuação edição de Gestão de melhoria, especificamente para desativação para publicação final
4-Cópia do banco do teradata dbp_33393_dwtg para dbp_33393_dwtg_2015
5-melhorias com André no workload de carga no TASM - viewpoint.


13/07/2016
1-Correção script da Agregada à lançamento EE01 do banco de homologação da STN 
2-Continuação edição de Gestão de melhoria, especificamente para desativação para publicação final
3-Atendimento ao Acionamento 2016/000627266 Publicação de dados ORACLE
4-Atendimento ao Acionamento 2016RS/000218875 Publicação de dados ORACLE
5-Atendimento ao Acionamento 2016RS/000219039 Publicação de dados ORACLE
6-Atendimento ao Acionamento 2016RS/000219260 Publicação de dados ORACLE
7-Atendimento ao Acionamento 2016RS/000219919 Publicação de dados ORACLE


12/07/2016
1-Continuação edição de Gestão de melhoria, especificamente para desativação para publicação final
2-Atendimento ao Acionamento 2016RS/000217945  Publicação de dados Teradata
3-Atendimento ao Acionamento 2016RS/000218479  Publicação de dados Teradata
4-Exclusão de dados do usuário power center PC961PSGPEREP à pedido do Gustavo
5-Atendimento ao Acionamento 2016RS/000218435 Publicação de dados ORACLE

11-07-2016
1-Atendimento ao Acionamento 2016RS/000215367 Publicação de dados ORACLE
2-Verificação do usuário teradata do Alberto Régio - Fortaleza. 
3-Atendimento ao Acionamento 2016RS/000216424 Publicação de dados Teradata
4-Atendimento ao Acionamento 2016RS/000216563 Publicação de dados Teradata 
5-Atendimento ao Acionamento 2016RS/000216916 Publicação de dados ORACLE
 
07/07/2016
1-Aprendizado sobre como dar carga no BI CD do André Magalhães - por André Magalhães.
2-Atendimento ao Acionamento 2016RS/000213435 Publicação de dados Teradata
3-Atendimento ao Acionamento 2016RS/000212522 Publicação de dados Teradata
4-Curso SCCD - Solicitação de serviço. na sala de treinamento.
5-Atendimento ao Acionamento 2016RS/000212787 excução de script oracle
6-Atendimento ao Acionamento 2016RDM/000018235 excução de script oracle
 	
 	 
06/07/2016
f1-Atendimento ao Acionamento 2016RS/000210868 Execução de scripts postgres
2-Atendimento ao Acionamento 2016RS/000210873 Execução de scripts oracle
 	
05/07/2016
1-Email para Samuel Fortaleza para análise de apropriação de file system teradata.
2-

04/07/2016
1-Análise de informações do Teradata no sistema Lista
2-Palestra sobre SCCD - Atendimento TICKET
3-

01/07/2016
1-Workshop SAS - sobre análise de informações de fraude no governo 
2-ajustes nas agregadas da lançamento no banco de homologação 2015 teradata
3-


29/06/2016
1-Reunião com o Plínio sobre apropriação Teradata 
2-correção script de apropriação de bancos teradata.
3-

27/06/2016
1-Reunião com chefia sobre informações SUPCD 
2-Reunião com chefes de departamentos, chefias e alguns gestores de melhoria além de Ariadne, Adriano, Júnior e Carlos Fiuza
3-Resolução com André de problemática de publicação de dados no DWTG.
4-

24/06/2016
1-Envio de script de desativação de serviços para validação por Lula São Paulo
2-Curso SCCD visão Geral - 
3-Continuação edição de Gestão de melhoria, especificamente para desativação
4-

23/06/2016
1-Reunião com Iara, Ariadne, Ronaldo, Carlos Fiuza, André sobre APROPRIAÇÃO.
2-MIGRAÇÃO DE DADOS DO POWER CENTER - DWMD35 PARA BIMD004 E BIMD002
3-Atendimento ao Acionamento 2016RS/000197620 Publicação de dados Teradata
4-Atendimento ao Acionamento 2016RS/000196741 Publicação de dados Teradata
5-Limpar usuários no POWER CENTER  para Gustavo nos bancos bimd002 e bimd004
 

21/06/2016
1-Mudança no Script para apropriação de banco Teradata com teste com Ronaldo de São Paulo.
2-Solicitação para limpar dados do usuário PC961PTRSTREP do power center no metadados de produção.
3-Reunião com pessaol do Escritório de negócios supcd = Adriano e Lula São Paulo.

20/06/2016
1-Continuação do atendimento ao ticket 2016RS/000190658 do Teradata
2-aplicação de estatísticas em algumas tabelas do TEradata
3-importação de dados do desenvolvimento para o novo desenvolvimento do powercenter a pedido de Gustavo.
4-Exclusão de vários usuários power center para testes do Gustavo ferramenta.
5-Atendimento ao Acionamento 2016RS/000191893 Publicação de dados Teradata

 
17/06/2016
1-Apropriação de dados no Teradata com Ronaldo em São Paulo 
2-Atendimento ao Acionamento 2016RS/000190658 Publicação de dados Teradata
 	


15/06/2016
1-Estudando informações sobre apropriação com o SA no TERADATA
2-Atendimento ao Acionamento 2016RS/000189324 Publicação de dados Teradata

 

14/06/2016
1-Levantamento para Ariadne e Adriano sobre atividades realizdas entre CDSDW e SUPOP
2-Criação de usuário do ADMSMFDPRO spotifire a pedido de Waldemar 
3-Continuação edição de Gestão de melhoria, especificamente para desativação
4-


13/06/2016
1-Atendimento ao Acionamento 2016RS/000181860 Publicação de dados Teradata
2-Atendimento ao Acionamento 2016RS/000181849 Publicação de dados Teradata
3-Edição de Planilha levantamento de valores para IARA - reunião com SUNMP
4-

10-06-2016
+.-/
1-Arraiá da CDSBI com equipe
2-Criação de Usuário de teste no banco de metadados de produção do corporativo a pedido de José Lopes.
3-Envio de descrição de tabelas para Patrícia Fortaleza 
4-


09/06/2016
1-Edição de Planilha levantamento de valores para IARA - reunião com SUNMP
2-Exclusão objetos do esquema PC961TREIREP a pedido de Gustavo
3-Exclusão objetos do esquema PC961DSNSPREP a pedido de Gustavo
4-


08/06/2016
1-Conferẽncia processos publicação no controlm da publicação noturna - com Alisson
2-Atendimento ao Acionamento 2016RS/000176671 Publicação de dados Teradata
3-Atendimento ao Acionamento 2016RS/000176671 Publicação de dados Teradata
4-Atendimento ao Acionamento 2016RS/000176834  Publicação de dados Teradata


07/06/2016
1-Continuação edição de Gestão de melhoria, especificamente para desativação
2-Reunião com Chefia sobre informações do nosso Superintendente sobre XAAS - Serviço na nuvem SERPRO
3-Reunião sobre Desativação Gestão de melhoria - com Adriano, Lula, Wellington
4-


06/06/2016
1-Reunião com Júlio Eustáquio para finalizar informações da máquina Teradata
2-Continuação edição de Gestão de melhoria, especificamente para desativação
3-Troca do Service Name para o nome correto com Rodrigo Albernaz - ORACLE
4- 

03/06/2016
1-Continuação edição de Gestão de melhoria, especificamente para desativação
2-Atendimento ao Acionamento 2016RS/000173241 Publicação de dados Teradata

02/06/2016
1-Edição de Gestão de melhoria, especificamente para desativação
2-Edição de script para apropriação do Teradata
3-Atendimento ao Acionamento 2016RS/000171415 Publicação de dados Teradata


01/06/2016

1-Informações para Iara sobre Máquina Teradata
2-Reunião na SEDE com os Gestores de Melhoria de várias áreas
3-Reunião com Equipe de Banco CDSDW e Chefia.
4-Atendimento ao Acionamento 2016RS/000167971 Publicação de dados Teradata
5-Atendimento ao Acionamento 2016RS/000170373 Publicação de dados Teradata
6-Atendimento ao Acionamento 2016RS/000169703 Publicação de dados Teradata
 

31/05/2016
1-Reunião com Carlos Fiuzza - e o pessoal de Gestão de Melhorias - sobre CPS novo
f2-Atendimento ao Acionamento 2016RS/000167573 Publicação de dados Teradata
3-Atendimento ao Acionamento 2016RS/000166349 Publicação de dados Teradata
4-Atendimento ao Acionamento 2016RS/000167350 Publicação de dados Teradata
5-Execução de dados Statistics.log no BANCO BIMD002 à pedido do HATUS
6-Reunião na Sede sobre processo de Desativação no CDSDW.
7-Atendimento ao Acionamento 2016RS/000168592 Publicação de dados Teradata
8-Atendimento ao Acionamento 2016RS/000167971 Publicação de dados Teradata 	 	
9-Atendimento ao Acionamento 2016RS/000168652 Publicação de dados Teradata 	 	
10-
 	
	
30/05/2016
1-Edição da planilha de dados sobre cpu e memórias do Teradata com André Magalhães
2-Atendimento ao Acionamento 2016RS/000165973 Publicação de dados Teradata 
3-Atendimento ao Acionamento 2016RS/000166139 Publicação de dados Teradata  	


23/05/2016
1-Reunião com informações sobre ambientes CDSDW com André, Giovanna, Fábio - André professor.
2-

20/05/2016
1-Reunião na Sede com os Gestores de Melhorias.
2-


19/05/2016
1-Continuação Trabalho para implantação de scripts no Teradata com Waldemar e Júlio Eustáquio.
2-Atendimento ao Acionamento 2016RS/000156276 Execução de Script TERADATA TABELAS 
3-Atendimento ao Acionamento 2016RS/000156720 Publicação ADUANEIRO 
4-Atendimento ao Acionamento 2016RS/000157529 Repasse para equipe responsável unix  
5-execução de script para inclusão de log microstrategy no banco pmd01
6-Atendimento ao Acionamento 2016RS/000156436 INCLUSAO DE Publicação SIGPGFN 
7-Atendimento ao Acionamento 2016RS/000157425 Publicação ORACLE SIGPGFN  
8-Atendimento ao Acionamento 2016RS/000150335 Publicação ORACLE SIGPGFN  	
  
 
18/05/2016
1-Continuação Trabalho para implantação de scripts no Teradata com Waldemar e Júlio Eustáquio.
2-Reunião com Labyb para definição de scripts Teradata para Site do Hatus
3-Informações com Daniel sobre scripts Postgres

17/05/2016
1-Trabalho para implantação de scripts no Teradata com Waldemar e Júlio Eustáquio.
2-Reunião para definição de scripts com chefia e equipe banco
16/05/2016
1-Verificação de informações do Relatório Teradata com Alisson para Luiza Piedade.
2-Atendimento ao Acionamento 2016RS/000152176 Execução de Script TERADATA TABELAS 
3-Atendimento ao Acionamento 2016RS/000151523 Execução de Script TERADATA TABELAS 
4-Atendimento ao Acionamento 2016RS/000150794 Execução de Script TERADATA TABELAS 
5-Atendimento ao Acionamento 2016RS/000153029 Execução de Script TERADATA TABELAS 
 

13/05/2016
1-Atendimento ao Acionamento 2016RS/000149837 Execução de Script TERADATA TABELAS 
2-Atendimento ao Acionamento 2016RS/000150676 Execução de Script TERADATA TABELAS 
 

12/05/2016
1-Atendimento ao Acionamento 2016RS/000146346 Execução de Script TERADATA TABELAS 
2-Atendimento ao Acionamento 2016RS/000149135 Execução de Script TERADATA TABELAS 
3-Atendimento ao Acionamento 2016RS/000146944 Execução de Script TERADATA TABELAS  
4-Reunião com chefia e equipe para apresentação do sistema CDSBI. 	
5-Atendimento ao Acionamento 2016RS/000149381 Execução de Script oracle  
 	

11/05/2016
1-INSTALAÇÃO DO INSTANT ORACLE DO LINUX NA MÁQUINA DO POWERCENTER A PEDIDO DE FERNANDA PARA MIGRAÇÃO
2-Atendimento ao Acionamento 2016RS/000146944 Publicação TERADATA TABELAS 

10/05/2016
1-Apagar objetos de usuário powercenter no oracle a pedido da Fernanda - Motivo migração.
2-Atendimento ao Acionamento 2016RS/000145643 Publicação TERADATA TABELAS 
3-Curso QlikSense - Marcelo Gotti - sala de treinamento nº 5 
4-
 	
09/05/2016
1-Execução do script para rodar o STATISTICS FAILED do Microstrategy dentro do banco.
2-Edição diagrama de Desativação de Projetos PENTAHO.
3-Atendimento ao Acionamento 2016RS/000142315 Publicação TERADATA TABELAS 
4-Informações para Fernanda sobre usuários do powercenter
5-backup tema pc961ddom para Fernanda e remoção dos dados do mesmo.
6-Atendimento ao Acionamento 2016RS/000144609 Publicação TERADATA TABELAS 
7-Atendimento ao Acionamento 2016RDM/000012041 Criação de Sinônimos Oracle homologaçao sp 

 


06/05/2016
1-Informações sobre Tema EDBV para criação de sinônimos referente a RDM Nº 2016RDM/000012041
2-Edição diagrama de Desativação de Projetos PENTAHO.



05/05/2016
1-Teste versão 0.0.1 do monitor para os bancos do CDSBI
2-Atendimento ao Acionamento 2016RS/000140815 Publicação TERADATA TABELAS 
3-Atendimento ao Acionamento 2016RS/000141118 Publicação TERADATA TABELAS 
4-Atendimento ao Acionamento 2016RS/000141131 Publicação TERADATA TABELAS 
5-Atendimento ao Acionamento 2016RS/000141410 Publicação TERADATA TABELAS 
6-Atendimento ao Acionamento 2016RS/000141119 Publicação TERADATA TABELAS  	 	  



04/05/2016
1-Atendimento ao Acionamento 2016RDM/000011261 Publicação TABELA SIGPGFN - ORACLE 
2-Atendimento ao Acionamento 2016RDM/000009067 RDM - DE AMBIMENTE 
3-Atendimento ao Acionamento 2016RS/000138630 Publicação TERADATA TABELAS 
4-Atendimento ao Acionamento 2016RS/000138661 Publicação TERADATA TABELAS 
5-Atendimento ao Acionamento 2016RS/000139368 Publicação TERADATA TABELAS 


03/05/2016
1-Atendimento ao Acionamento 2016RS/000137837 Publicação TERADATA TABELAS 
2-Atendimento ao Acionamento 2016RS/000137829 Publicação TERADATA TABELAS 
g3-Atendimento ao Acionamento 2016RS/000137723 Publicação ADUANEIRO 
g4-Atendimento ao Acionamento 2016RS/000137704  Publicação ADUANEIRO 
5-Atendimento ao Acionamento 2016RS/000137908  EXECUÇÃO SCRIPT POSTGRES
6-Atendimento ao Acionamento 2016RS/000137814 EXECUÇÃO SCRIPT ORACLE


02/05/2016
1-Atendimento ao Acionamento 2016RS/000135014 Publicação ORACLE TABELAS 
2-Atendimento ao Acionamento 2016RS/000134985 Execução de script ORACLE 
3-Atendimento ao Acionamento 2016RS/000136145 Publicação ADUANEIRO 
4-Atendimento ao Acionamento 2016RS/000134103 Publicação Cobrança  
  
 	

29/04/2016
1-Publicação de tabelas do sigpgfn para Ana Júlia - Creuza
2-Atendimento ao Acionamento 2016RS/000133656 Publicação TERADATA TABELAS 
3-Atendimento ao Acionamento 2016RS/000132781 Publicação ORACLE TABELAS 
4-Atendimento ao Acionamento 2016RS/000133473 Publicação ORACLE TABELAS 
5-Atendimento ao Acionamento 2016RS/000134098 Publicação TERADATA TABELAS 
6-Atendimento ao Acionamento 2016RS/000134150 Publicação ORACLE TABELAS  dime
7-Atendimento ao Acionamento 2016RS/000134242 Publicação TERADATA TABELAS 
8-Atendimento ao Acionamento 2016RS/000134121 Publicação ORACLE TABELAS  dime
 

28/04/2016
1-Palestra da INFORMATICA sobre BIG DATA no Royal Tulip com a equipe CDSBI - SERPRO
2-

27/04/2016
1-Atendimento ao Acionamento 2016RS/000130593 Publicação TERADATA TABELAS 
2-Atendimento ao Acionamento 2016RS/000130589 Publicação TERADATA TABELAS 
3-Atendimento ao Acionamento 2016RS/000130579 Publicação TERADATA TABELAS 
4-Edição da Planilha de Banco de dados de Metadados - CDSBI

26/04/2016
1-Informações sobre tabelas RENAINF para José Lopes
2-Atendimento ao Acionamento 2016RS/000126963 Recriação de views TERADATA 
3-Atendimento ao Acionamento 2016RS/000129367 Publicação TERADATA TABELAS 
4-Atendimento ao Acionamento 2016RS/000123303 Execução de demanda  


25/04/2016
1-Atendimento ao Acionamento 2016RS/000127055 Publicação TERADATA TABELAS 
2-Atendimento ao Acionamento 2016RS/000126602 Publicação ADUANEIRO 
3-Atendimento ao Acionamento 2016RS/000126597 Publicação ADUANEIRO 
4-Levantamento de backup Teradata para IARA 

 	
21/04/2016
1-Verificação de existência de tabelas para DE São Paulo
2-Verificação processo de publicação para tabelas ju
3-Alteração de senha de usuário powercenter para Gustavo
4-

20/04/2016
1-Atendimento ao Acionamento 2016RS/000123798 Publicação TERADATA TABELAS 
2-Importando dados da tabela WF_SERVIDOR_SIAP_CUSTO_PROD.CSV para o ORACLE - BANCO DE CARGA CONDOMINIO.
3-Atendimento ao Acionamento 2016RS/000124573 Publicação TERADATA TABELAS 
4-Atendimento ao Acionamento 2016RS/000124488 Publicação TERADATA TABELAS 


19/04/2016
1-Atendimento ao Acionamento 2016RS/000122109 Publicação ADUANEIRO 
2-Atendimento ao Acionamento 2016RS/000122001 Execução de script Oracle 
3-Alteração de estrutura no script de teste de bancos de dados para verificar se os bancos estão no ar.
4-Aumento da Tablespace de lista de histórico no banco de produção.
5-Atendimento ao Acionamento 2016RS/000122552 Publicação TERADATA TABELAS 
6-Atendimento ao Acionamento 2016RS/000122616 Execução de script postgres 
7-Atendimento ao Acionamento 2016RS/000122605 Execução de script ORACLE 
8-Atendimento ao Acionamento 2016RS/000122844 Publicação TERADATA TABELAS 
9-Atendimento ao Acionamento 2016RS/000122695 Publicação TERADATA TABELAS e execução de scripts
10-Atendimento ao Acionamento 2016RS/000122757 Publicação TERADATA TABELAS e execução de scripts
 	


 f2-Atendimento em cópia de banco de dados - tabela teradata para oracle junto com o parceiro Alisson


18/04/2016
1-Exclusão de usuário de backup do narrowcast 
2-Correção e teste de scripts para teste se o banco está no ar ou não.
3-Atendimento ao Acionamento 2016RS/000121504 Publicação ADUANEIRO 
4-Atendimento ao Acionamento 2016RS/000121389 Execução de script postgres 
5-Atendimento ao Acionamento 2016RS/000121323 Execução de script Oracle 
6-Atendimento ao Acionamento 2016RS/000121289 Execução de script Oracle
7-Atendimento ao Acionamento 2016RS/000118264 Execução de script Oracle  
8-Atendimento ao Acionamento 2016RS/000120692 Execução de script Oracle  
9-Atendimento ao Acionamento 2016RS/000121690 Publicação TERADATA TABELAS 




15/04/2015
1-Atendimento ao Acionamento 2016RS/000118966 Execução de script teradata 
2-Atendimento ao Acionamento 2016RS/000119368 Execução de script teradata 
3-Atendimento ao Acionamento  2016RS/000351243 Execução de script teradata 

	

14/04/2015
1-Atendimento ao Acionamento 2016RS/000116739 Execução de script postgre 
2-Atendimento ao Acionamento 2016RS/000117342 Execução de script postgre 
 	  

13/04/2015
1-Atendimento ao Acionamento 2016RS/000115461 PUBLICAÇÃO DE TABELAS TERADATA 
2-Palestra da Attunity sobre ferramentas para gerenciamento de bancos de dados e data warehouse na Sede
3-Reunião com chefia sobre atividades sendo realizadas pela equipe


12/04/2015
1-Atendimento à solicitação do José Lopes para fazer backup do narrow cast metadados no banco PMD01.
2-Backup de dados do processo do narrow cast 


11/04/2016
1-Repasse de informações para Chefia sobre dados da máquina do teradata
2-Correção urgente no DWTG após alteração no final de semana.
3-Abertura de RDM - para mudar nomenclatura de máquinas de BI
4-Atendimento ao Acionamento 2016RS/000112343 repasse de demanda para outra equipe responsável 
5-Atendimento ao Acionamento 2016RDM/000009619 PUBLICAÇÃO DE TABELAS TERADATA 


08/04/2016
1-Atendimento ao Acionamento 2016RS/000110874 repasse de demanda para outra equipe responsável 
2-Correção de dados das máquinas servidoras 
3-Atendimento ao Acionamento 2016RDM/000009489 Execução de script teradata 


07/04/2016
1-Atendimento ao Acionamento 2016RS/000107170 Execução de script teradata 


semana que vem --- Fazer teste nos scripts e passar para Waldemar implantar na máquina e no controlm  	

06/04/2016
1-Edição e Conferência Diagramas ORYX sobre desativação de serviços
 	




05/04/2016
1-Atendimento ao Acionamento 2016RS/000103162 Publicação ADUANEIRO 
2-Atendimento ao Acionamento 2016RS/000103297 Publicação ADUANEIRO 
3-Edição e Conferência Diagramas ORYX sobre desativação de serviços


04/04/2016

1-Atendimento ao Acionamento 2016RS/000101517 Publicação TERADATA 
2-Reunião sobre documento de atividades de 2015/2016.
3-



01/04/2016
1-Levantamento de dados sobre área de transferência "TRA" do banco de Desenvolvimento DWDES35 para posterior migração.
2-Reunião com Equipe Banco - CDSBI para discussão de scripts para o Sistema SISCDSBI
3-Abertura de regra de firewall entre Controlm e os nossos ambientes.
4-Abertura de Ticket para mudanças de nomes das máquinas Teradata.
5-

--=========COLOQUEI ATÉ AQUI GDES =====27/04/2016==========================================

31/03/2016
1-Baixa do atendimento nº 2016RS/000095554 realizado por André Magalhães.
2-Atendimento ao Acionamento 2016RS/000099817  Publicação DIME 
3-Acompanhamento com André Magalhães para implantação de Script TERADATA
4-Reunião com Equipe de Bancos de Dados SUPCD para discussão de Backup da CDSBI

30/03/2016
1-Pedido de criação regra de firewall desenvolvimento para carga condominio
2-Repasse de planilha para Labyb e Julio
3-pedido de criação de regra de firewall para Control-M 
4-Tratamento de Incidente do SIGPGFN - encaminhando para a equipe responsável.
5-Atendimento da 2016RS/000098582 - EXECUÇÃO DE SCRIPT  ORACLE 	   	 	 	   	 	
 	
29/03/2016
1-PROJETO MIGRAÇÃO DO DESENVOLVIMENTO SINESP PARA DESENVOLVIMENTO NOVO 
2-CRIAÇÃO DE TABLESPACES NOVAS PARA POWERCENTER MIGRAÇÃO.
3-APAGAR OBJETOS DE ESQUEMA PARA FERRAMENTAS
4-Impressão de planilhas de ip para chefia IARA
5-Atendimento da 2016RS/000095304  - PUBLICAÇÃO DE TABELA TERADATA 	   	 	 	   	 	

28/03/2016
1-PROJETO MIGRAÇÃO DO DESENVOLVIMENTO SINESP PARA DESENVOLVIMENTO NOVO 


24/03/2016
1-CRIAÇÃO DE TABLESPACES PARA NOVO PROJETO EECF NA PDW03


23/03/2016

1-Atendimento da 2016RS/000090249 - EXECUÇÃO DE SCRIPT POSTGRES 	   	 	 	   	 	
2-Atendimento da 2016RS/000089777 - EXECUÇÃO DE SCRIPT POSTGRES 	   	 	 	   	 	
3-Repasse de informações de bancos para equipe de banco CDSBI

22/03/2016
1-Edição e Conferência Diagramas ORYX sobre desativação de serviços, para reunião 
2-Atendimento da 2016RS/000090466 - EXECUÇÃO DE SCRIPT POSTGRES
3-Atendimento da 2016RS/000090319 - EXECUÇÃO DE SCRIPT POSTGRES 	   	 	 	   	 	
4-Atendimento da 2016RS/000090194 - EXECUÇÃO DE SCRIPT POSTGRES 	   	 	 	   	 	 
  
 	
19/03/2016
1-Atendimento da 2016RS/000086964 - EXECUÇÃO DE SCRIPT POSTGRES
2-Edição e Conferência Diagramas ORYX sobre desativação de serviços, para reunião 
3-Reunião com Chefia e colegas de banco sobre SINESP migração para bancos ambiente exclusivo

18/03/2016
1-Atendimento à DE - Samuel - para consulta de informações no banco de homologação.
2-Atendimento da 2016RS/000085601 - Publicação de Tabela Teradata
3-Atendimento da 2016RS/000258824 - Publicação de Tabela Teradata
4-Conferência com Ronaldo da atividade de exclusão de tabelas ZZ através do Crontab.
5-Atendimento da 2016RS/000086200 - Publicação de Tabela Teradata
6-Atendimento da 2016RS/000085882 - Publicação de Tabela Teradata
7-Atendimento da 2016RS/000086829 - Mapeamento de usuários DBlink Postgres 
 

17/03/2016
1-Configuração de usuários do banco whdes101 sinesp na minha máquina de trabalho
2-Edição de diagrama de processos para link desativação supcd com cdsbi
3-Permissão de usuários para o tema TRST.
4-Atendimento da 2016RS/000084564 - PUBLICAÇÃO ARRECADAÇÃO - Valdiana com André Magalhães.
5-Atendimento da 2016RS/000084965 - Execução de Script Teradata
6-Confirmação de usuários demoseille - para SUPST - Sérgio.
 

16/03/2016
1-Atendimento de ticket para DWTG - PUBLICACÃO FULL DO BANCO DE HOMOLOGAÇÃO DWTG com Ronaldo - Continuação

15/03/2016
1-Informações POC - SAS IARA
2-Informações sobre DWTG para IARA
3-Atendimento de ticket para DWTG - PUBLICACÃO FULL DO BANCO DE HOMOLOGAÇÃO DWTG com Ronaldo 

14/03/2016
1-Reunião com Equipe de Bancos C
DSBI e a chefia. Problemas no plantão
2-Reunião com Equipe de Gestão de Melhoria de Processos na SEDE - assunto processo de desativação de serviços na SUPCD

11/03/2016
1-DIAGRAMA PROCESSO DESATIVAÇÃO BI PARA REUNIÃO DE SEGUNDA FEIRA COM GESTORES DE MELHORIA
2-Atendimento da 2016RS/000075922 - PUBLICAÇÃO ADUANEIRO

10/03/2016
1-Conferência Diagramas ORYX sobre desativação de serviços, para reunião de segunda feira
2-Criação de Usuários MS941 para o ENTERPRISE MANAGER no banco BIPRO001
3-Atendimento da 2016RS/000072206 - EXECUÇÃO DE SCRIPT TERADATA 	   	 	
4-Atendimento da 2016RS/000076097 - EXECUÇÃO DE SCRIPT TERADATA 	   	 	
5-Aumento de spool para o Usuário POWERCENTER à pedido do SAMUEL DEFLA.
6-Atendimento da 2016RS/000075837 - CANCELAR TICKET 	   	 	
7-Atendimento da 2016RS/000075170 - EXECUÇÃO DE SCRIPT POSTGRES 	   	 	
 
09/03/2016
1-criação de usuários de metadados e lista de histórico para ambinete de desenvolvimento 
2-criação de usuários de metadados e lista de histórico para ambinete de produção  
3-criação de usuários de metadados e lista de histórico para ambinete de homologação 
4-Conferência de foi criado diretório no  BIMD004 para POWERCENTER DESENVOLVIMENTO
5-Atendimento da 2016RS/000072275 - EXECUÇÃO DE SCRIPT POSTGRES 	   	 	
6-Atendimento da 2016RS/000074978 - EXECUÇÃO DE SCRIPT POSTGRES 	   	 	
7-Atendimento da 2016RS/000073898 - EXECUÇÃO DE SCRIPT POSTGRES
8-Atendimento da 2016RS/000073945 - EXECUÇÃO DE SCRIPT POSTGRES 	   	 	 	   	 	
9-Atendimento da 2016RS/000073968 - EXECUÇÃO DE SCRIPT POSTGRES
10-Atendimento da 2016RS/000075241 - EXECUÇÃO DE SCRIPT POSTGRES
 	   	 	 	   	 	

08/03/2016
1-Reunião com Chefia e colegas sobre CPS na sala de reunião
2-Atendimento da 2016RS/000068022 - PUBLICAÇÃO BANCOS TERADATA 	
3-Encamihamento de modelo para abertura de chamado para liberação de privilégios a um determinado usuário.


07/03/2016
1-Cópia do usuário de powercenter no banco dwmd35 para o bimd004
2-Atendimento da 2016RS/000068863 - EXECUÇÃO DE SCRIPT POSTGRES 	   	 	
3-Atendimento da 2016RS/000068582 - EXECUÇÃO DE SCRIPT POSTGRES 	   	 	
4-Atendimento da 2016RS/000070840 - EXECUÇÃO DE SCRIPT POSTGRES 	   	 	


04/03/2016

2-Atendimento da 2016RS/000068177 - EXECUÇÃO DE SCRIPT ORACLE
3-Atendimento da 2016RS/000066748 - EXECUÇÃO DE SCRIPT POSTGRES 	   	 	
4-Atendimento da 2016RS/000063629 - EXECUÇÃO DE SCRIPT POSTGRES 	
5-Atendimento da 2016RS/000068505 - EXECUÇÃO DE SCRIPT ORACLE
6-SOLUÇÃO EM CONSULTA POSTGRES SQL a pedido de André Magalhães.
7-Atendimento da 2016RS/000069652 - CRIAÇÃO DE USUÁRIO ORACLE

 	  

03/03/2016
1-Atendimento da 2016RS/000066685 - EXECUÇÃO DE SCRIPT ORACLE
2-Atendimento da 2016RS/000066207 - EXECUÇÃO DE SCRIPT ORACLE 	   	 	
3-Atendimento da 2016RS/000066540 - EXECUÇÃO DE SCRIPT POSTGRES
4-Atendimento da 2016RS/000066770 - EXECUÇÃO DE SCRIPT ORACLE 	   	 	

02/03/2016
1-Atendimento da 2016RS/000063965 - EXECUÇÃO DE SCRIPT POSTGRES
2-Apagar tabelas lixo do processo de migração TERADATA para ORACLE do BIMD004.
3-Atendimento da 2016RS/000065198 - EXECUÇÃO DE SCRIPT ORACLE
4-Atendimento da 2016RS/000065182 - EXECUÇÃO DE SCRIPT postgres
5-Atendimento da 2016RS/000063159 - EXECUÇÃO DE SCRIPT ORACLE 	  
6-Atendimento da 2016RS/000066037 - EXECUÇÃO DE SCRIPT ORACLE 	   	

01/03/2016
1-informações melhoria de processos diagrama do oracle - continuação.
2-Reunião com a Chefia sobre assuntos relativos ao SINESP
3-Cópia de arquivos do VISIO para LABYB
4-Edição da Planilha de Máquinas com a mudança de máquinas do NARROWCAST
5-Atendimento da 2016RS/000064078 - EXECUÇÃO DE SCRIPT POSTGRES
6-Atendimento da 2016RS/000061286 - EXECUÇÃO DE SCRIPT POSTGRES
7-Atendimento da 2016RS/000061283 - EXECUÇÃO DE SCRIPT POSTGRES
8-Atendimento da 2016RS/000062478 - EXECUÇÃO DE SCRIPT POSTGRES
9-Atendimento da 2016RS/000064250 - EXECUÇÃO DE SCRIPT POSTGRES

--=========COLOQUEI ATÉ AQUI GDES =====26/04/2016==========================================


29/02/2016
1-Edição de Planilha de Metadados SINESP
2-Atendimento da 2016RS/000060631 - EXECUÇÃO DE SCRIPT ORACLE
3-Atendimento da 2016RS/000060658 - EXECUÇÃO DE SCRIPT ORACLE
4-Atendimento da 2016RS/000058151 - EXECUÇÃO DE SCRIPT POSTGRES
5-Informações com Labyb e Fernanda sobre subprocesso  de desativação de PROJETOS microstrategy
6-Atendimento da 2016RS/000049128 - DUMP DE SCHEMA POSTGRES
 
    	
26/02/2016
1-Atendimento da 2016RS/000059594 - EXECUÇÃO DE SCRIPT POSTGRES
2-Atendimento da 2016RS/000058717 - EXECUÇÃO DE SCRIPT POSTGRES
f3-Atendimento da 2016RS/000056878 - EXECUÇÃO DE SCRIPT POSTGRES 
4-Atendimento da 2016RS/000058630  - EXECUÇÃO DE SCRIPT POSTGRES 
5-Reunião com Chefia e com equipe sobre informações TERADATA e tabelas temporárias.
6-Criação de usuários power center para Ferramenta 	

25/02/2016
1-Reunião com a Chefia sobre informações do SINESP - SNSP
2-Reunião de Gestão de Melhoria de Processos na SEDE com Labyb 
3-Edição de Topologia sobre STN com Hatus.
4-Informações com chefia sobre TOPOLOGIAS.

24/02/2016
1-Correção junto com Ronaldo do SINESP no banco de desenvolvimento
2-levantamento de informações sobre melhoria de processos para reunião mensal do dia 25/02/2016 às 09:30
3-Informações com Labyb sobre definição de fluxos de processos para gestão de melhoria
4-Informações com Marden Rio de janeiro sobre dúvidas relativas à processos para reunião de gestão de melhoria
5-Atendimento da 2016RS/000056878 - INFORMAÇÕES POSTGRES
6-Atendimento da 2016RS/000056445 - EXECUÇÃO DE SCRIPT POSTGRES
7-Atendimento da 2016RS/000055527 - EXECUÇÃO DE SCRIPT POSTGRES
8-Atendimento da 2016RS/000055519 - EXECUÇÃO DE SCRIPT POSTGRES

23/02/2016
1-Migração de dados do ambiente SINESP - SNSP do Teradata para o Oracle com Ronaldo.

22/02/2016
1-Atendimento da 2016RS/000052474 - EXECUÇÃO DE SCRIPT POSTGRES
2-Atendimento da 2016RS/000052003 - EXECUÇÃO DE SCRIPT POSTGRES
3-Reunião com chefia sobre pendências SINESP 
4-Reunião com equipe de banco Oracle - CDSDW

 
19/02/2016
1-Atendimento da 2016RS/000050685 - CRIAÇÃO E PUBLICAÇÃO SIGPGFN
2-Atendimento da 2016RS/000050589 - CRIAÇÃO E PUBLICAÇÃO SIGPGFN
3-Atendimento da 2016RS/000047083 - EXECUÇÃO DE SCRIPT POSTGRES
4-Atendimento da 2016RS/000047075 - EXECUÇÃO DE SCRIPT POSTGRES
5-Atendimento da 2016RS/000051768 - EXECUÇÃO DE SCRIPT POSTGRES
6-Atendimento da 2016RS/000050813 - EXECUÇÃO DE SCRIPT POSTGRES
7-Atendimento da 2016RS/000050811 - EXECUÇÃO DE SCRIPT POSTGRES
8-Atendimento da 2016RS/000051639 - PUBLICAÇÃO ADUANEIRO
9-Atendimento da 2016RS/000051321 - EXECUÇÃO DE SCRIPT POSTGRES
10-Atendimento da 2016RS/000051764 - EXECUÇÃO DE SCRIPT POSTGRES
11-Atendimento da 2016RS/000051936 - EXECUÇÃO DE SCRIPT POSTGRES
12-Atendimento da 2016RS/000051762 - EXECUÇÃO DE SCRIPT POSTGRES

18/02/2016
1-Troca de mesa para ajuste de disponibilidade da CDSDW
2-Coleta de informações no CONTROLM e no banco para soluções de problemas no SIGPGFN
3-Atendimento da 2016RS/000049837 - EXECUÇÃO DE SCRIPT POSTGRES
4-Atendimento da 2016RS/000049022 - EXECUÇÃO DE SCRIPT POSTGRES
5-Atendimento da 2016RS/000047147 - EXECUÇÃO DE SCRIPT POSTGRES
6-Atendimento da 2016RS/000047755 - EXECUÇÃO DE SCRIPT ORACLE 

17/02/2016
1 - Continuação = Conferência de dados no fluxo de RDM de postgres - Gestão de Melhorias de Processos.
2 - Criação de Usuários oracle para migraçaõ SINESP desenvolvimento.
3 - Atendimento da 2016RS/000047898 - EXECUÇÃO DE SCRIPT ORACLE
4 - Atendimento da 2016RS/000047538 - EXECUÇÃO DE SCRIPT ORACLE
5 - Atendimento da 2016RS/000048183 - EXECUÇÃO DE SCRIPT ORACLE
6 - Atendimento da 2016/000157557 - PUBLICAÇÃO TERADATA TABELAS 


16/02/2016
1 - Atendimento da 2016RS/000046510  -  PUBLICAÇÃO TEMA FINANCPAG ORACLE
2 - Edição Planilha de Máquinas do CDSDW - para equipe
3 - Continuação = Conferência de dados no fluxo de RDM de postgres - Gestão de Melhorias de Processos.
4 - Atendimento da 2016RS/000047348 - EXECUÇÃO DE SCRIPT POSTGRES
5 - Atendimento da 2016RS/000047358 - EXECUÇÃO DE SCRIPT POSTGRES
6 - Atendimento da 2016RS/000047025 - EXECUÇÃO DE SCRIPT POSTGRES
7 - Atendimento da 2016RS/000047065 - EXECUÇÃO DE SCRIPT POSTGRES   	   	


15/02/2016
1 - Reunião com Equipe CDSDW - assunto powercenter com gustavo Balduino e Claúdio BH
2 - Atendimento da 2016RS/000042344  -  PUBLICAÇÃO DE TABELAS TERADATA
3 - Atendimento da 2016RS/000043298  -  PUBLICAÇÃO DE TABELAS TERADATA
4 - Atendimento da 2016RS/000044031  -  PUBLICAÇÃO TEMA ACES 
5 - Atendimento da 2016RS/000043519  -  PUBLICAÇÃO TEMA CNPJ 
6 - Atendimento da 2016RS/000042965  -  Execução de script postgres
7 - publicação de tabelas 2016RS/000045910 teradata para Akemi - Fortaleza
8 - publicação da carga para produção ano 2015 2016RS/000045891 para Akemi - Fortaleza.
9 - 

11/02/2016
1 - Continuação = Conferência de dados no fluxo de RDM de postgres - Gestão de Melhorias de Processos.
2 - EDIÇÃO FLUXOGRAMA BANCOS DWTG TERADATA 


10/02/2016
1 - Edição de modelos de acionamentos para Sistema Bi - Teradata - Hatus
2 - Continuação = Conferência de dados no fluxo de RDM de postgres - Gestão de Melhorias de Processos.

05/02/2016
1 - Edição de Planilha para migração de serviços do banco de desenvolvimento.
2 - Continuação do Trabalho com Iara sobre migração do Banco de Desenvolvimento para nova ZDM de BI
3 - Reunião com Labyb sobre orientações no oryx e demais detalhes quanto à melhoria de processos.
4- 

04/02/2016
1 - Reunião com Ronaldo para validação de fluxo de processos na gestão de melhoria
2 - Trabalho com Iara sobre migração do Banco de Desenvolvimento para nova ZDM de BI
3 - Edição de planilha CDSBI com inclusão de dados dos bancos 
4 - Reunião com Chefia - Assunto sugestões para email ao Superintendente
5 - 

03/02/2016
1 - Continuação = Conferência de dados no fluxo de RDM de postgres - Gestão de Melhorias de Processos.
2 - Trabalho com Iara sobre migração do Banco de Desenvolvimento para nova ZDM de BI


02/02/2016
1 - Continuação = Conferência de dados no fluxo de RDM de postgres - Gestão de Melhorias de Processos.
2 - Reunião com equipe CDSDW e chefia: Assunto mobile microstrategy
3 - 

01/02/2016
1- Refazendo DUMP schema custos_relacional do banco de cargas postgres para banco de desenvolvimento 
2- Continuação = Conferência de dados no fluxo de RDM de postgres - Gestão de Melhorias de Processos.
3- EDIÇÃO DE RDMS PARA CRIAÇÃO DE AMBIENTE DE BANCOD DE DADOS NA ZDM DE BI.



29/01/2016
1 - Atendimento da – 2016RS/000028990 COPIA DE ARQUIVO SISTEMA OPERACIONAL 
2- Continuação = Conferência de dados no fluxo de RDM de postgres - Gestão de Melhorias de Processos.
3- Correção no Controlm de São Paulo Sobre o SPED - tabela não encontrada
4- Correção de dados na planilha de bancos de dados metadados - inclusão narrowcast por fernanda.
5-Fazer email para Teradata - Solicitação de informações.
6- Envio de arquivo de log para Daniel Ribeiro SUPST.
7- Reunião com André sobre informações para criação de ambiente
8- Informações para a Labyb sobre criação de ambiente para edição de processo.
9- Realização de DUMP de dois schema postgres com o Daniel.

28/01/2016

1-REPASSE PLANILHA DE SOLUÇÃO DE ERRO DE ESTOURO DE TABLESPACES PARA PASTA PUBLICAÇÕES COMPARTILHADA COM BANCOS
2-Continuação = Conferência de dados no fluxo de RDM de postgres - Gestão de Melhorias de Processos.
3-Atualização Planilha Informações METADADOS BANCOS DE DADOS
4- Atendimento da  2016RS/000026246 – PUBLICAÇÃO SGPF DEPOIS DE OUTRO ACIONAMENTO DO ALISSON ACIONAMENTO 2016RS/000026224. 
5 -Atendimento da – 2016RS/000028843 -  EXECUÇÃO DE SCRIPT POSTGRES
6- Atendimento da – 2016RS/000028567  -  EXECUÇÃO DE SCRIPT POSTGRES
7- procurar ticket do daniel ribeiro

27/01/2016 - 
1 - Reunião com LABYB - sobre informações e serviços Gestão de Melhoria de Processo
2 - Conferência de dados no fluxo de RDM de postgres
3 - Atendimento da – 2016RS/000025765  EXECUÇÃO DE SCRIPT ORACLE 
4 - Atendimento da – 2016RS/000025012  EXECUÇÃO DE SCRIPT ORACLE 
5 - Editando planilha para ambientes de metadados do condomínio e corporativo - informações por Fernanda
	
26/01/2016 - 
1- CURSO TERADATA NA MAXTERA

25/01/2016 - 
1- CURSO TERADATA NA MAXTERA


22/01/2016
1- LEVANTAMENTO DE DADOS EM PLANILHA SOBRE AMBIENTES SNSP PARA IARA
2- PREPARANDO LEVANTAMENTO DE DOCUMENTO SOBRE AMBIENTES MICROSTRATEGY E POWERCENTER BANCOS DE METADADOS PARA IARA
3- Atendimento da – 2016RS/000019181  EXECUÇÃO DE SCRIPT POSTGRES 
4- Atendimento da – 2016RS/000021369  EXECUÇÃO DE SCRIPT POSTGRES 
 	

21/01/2016
1-Atendimento da – 2016RS/000015311  CONFIG. PG_HBA POSTGRES
2-Atendimento da – 2016RS/000019181  EXECUÇÃO DE SCRIPT ORACLE
 	
13/01/2016
1-Atendimento da – 2016RS/000011893  EXECUÇÃO DE SCRIPT ORACLE
2-Atendimento da – 2016RS/000011812  EXECUÇÃO DE SCRIPT ORACLE
3-Atendimento da  2016RS/000010650 – PUBLICAÇÃO SIGPGFN

12/01/2016
1-Atendimento da 2016RS/000008300 – PUBLICAÇÃO ARCX - ARCOMEX
2-Atendimento da 2016RS/000006976 – PUBLICAÇÃO SGPF 	


10/01/2016
1-Atendimento da 2016RS/000005259 – PUBLICAÇÃO SGPE 1


09/01/2016
1-Atendimento da 2016RS/000006929  – PUBLICAÇÃO IRPF – depois rel cristiante
   cristiane.machado@serpro.gov.br 
2-Atendimento da – 2016RS/000007366  EXECUÇÃO DE SCRIPT ORACLE
3-Atendimento da – 2016RS/000005416  CRIAÇÃO DE DIRETORIO SO AIX CARGA
4-Atendimento da 2016RS/000007535 – PUBLICAÇÃO MCPJ - MACO
 	

08/01/2016
1-Atendimento da 2016RS/000005853 – PUBLICAÇÃO SIGPGFN
2-Atendimento da – 2016RS/000005259 PUBLICAÇÃO SGPE
3-Atendimento da 2016RS/000003014 – PUBLICAÇÃO SGPJ
4-Atendimento da – 2016RS/000006105 PUBLICAÇÃO SGPJ
5-Atendimento da – 2016RS/000006545 EXECUÇÃO DE SCRIPT ORACLE


07/01/2016
1-Atendimento da 2015RS/000569084 – PUBLICAÇÃO SGPF agendado 
2-Atendimento da 2016RS/000004382 – EXECUÇÃO DE SCRIPT ORACLE 
3-Atendimento da 2016RS/000005053 – EXECUÇÃO DE SCRIPT ORACLE 
4-Atendimento da 2016RS/000003925 – PUBLICAÇÃO SGPE 
5-Atendimento da 2016RS/000003899 – PUBLICAÇÃO IRPF 
  	
06/01/2016 DE MADRUGADA
1-Atendimento da 2016RS/000002656 – PUBLICAÇÃO ADUANEIRO
2-Atendimento da 2016RS/000001541 – PUBLICAÇÃO RENAINF
3-Atendimento da 2016RS/000002517 – PUBLICAÇÃO DIME AGENDADO
4-Atendimento da 2016RS/000002525 – PUBLICAÇÃO DIME 2 AGENDAO
5-Atendimento da 2016RS/000002535  – PUBLICAÇÃO DIME 3 AGENDAO
6-Atendimento da 2016RS/000003618  – PUBLICAÇÃO DIME COM SCRIPT AGENDAO
7-Atendimento da 2016RS/000002627  – PUBLICAÇÃO IRPF AGENDAO
8-Atendimento da 2016RS/000002640  – PUBLICAÇÃO SGPF AGENDAO


--========================= A PARTIR DAQUI MANDEI PARA O GDES == 02/02/2016===================================
 	
30/12/2015
1-Atendimento da 2015RS/000569084 – PUBLICAÇÃO SGPF agendado 
2-Atendimento da 2015RS/000568927 – ALTERAÇÃO EMAIL PUBLICAÇÃO 
3-Atendimento da 2015RS/000569322  – PUBLICAÇÃO CNPF agendado 
4-Atendimento da 2015RS/000567830  – EXECUÇÃO DE SCRIPT POSTGRES DBLINK
AGUARDO REGRA EXECUÇÃO DE REGRA DE FIREWALL
5-Atendimento da 2015RS/000569426  – PUBLICAÇÃO CNPF  2agendado 
6-Atendimento da 2015RS/000569408   – PUBLICAÇÃO DIME 1 agendado 
7-Atendimento da 2015RS/000569404   – PUBLICAÇÃO DIME 2 agendado
8-Atendimento da 2015RDM/000036039   – EXECUÇÃO DE SCRIPT ORACLE DROP INDEX
9-Atendimento da 2015RS/000569488  – EXECUÇÃO DE SCRIPT POSTGRES




29/12/2015
1-Atendimento da  2015RS/000568556  – EXECUÇÃO DE SCRIPT ORACLE 
2-Atendimento da  2015RS/000568382  – EXECUÇÃO DE SCRIPT ORACLE 
3-Atendimento da  2015RS/000568380   – EXECUÇÃO DE SCRIPT ORACLE 
4-Atendimento da  2015RS/000568301 – PUBLICAÇÃO IRPF 


28/12/2015
1-Atendimento da 2015RS/000566846  – EXECUÇÃO DE SCRIPT POSTGRES
2-Atendimento da 2015RS/000567665  – EXECUÇÃO DE SCRIPT ORACLE 
3-Atendimento da 2015RS/000567642   – EXECUÇÃO DE SCRIPT ORACLE 
4-Atendimento da 2015RS/000567850  – EXECUÇÃO DE SCRIPT POSTGRES
5-Atendimento da 2015RS/000565766  – EXECUÇÃO DE SCRIPT POSTGRES
 


23/12/2015
1-Atendimento da  2015RDM/000035433 – EXECUÇÃO DE SCRIPT ORACLE
2-Atendimento da 2015RS/000565591 – PUBLICAÇÃO DEST AGENDADO
3-Atendimento da 2015RS/000566613 – PUBLICAÇÃO DIME 2 AGENDADO
4-Atendimento da 2015RS/000565891  – EXECUÇÃO DE SCRIPT POSTGRES
5-Atendimento da 2015RS/000566618 – PUBLICAÇÃO DIME 1 AGENDADO
6-Atendimento da 2015RS/000565609 – EXECUÇÃO DE SCRIPT ORACLE 
7-Atendimento da 2015RS/000566661  – EXECUÇÃO DE SCRIPT POSTGRES
8-Atendimento da 2015RS/000565909  – EXECUÇÃO DE SCRIPT POSTGRES
 

18/12/2015
1-Atendimento da  2015RDM/000035432 – EXECUÇÃO DE SCRIPT ORACLE
2-Atendimento da 2015RS/000563594 – PUBLICAÇÃO ADUANEIRO AGENDADO
3-Atendimento da  – PUBLICAÇÃO SGPF
4-Atendimento da 2015RS/000563619 – EXECUÇÃO DE SCRIPT ORACLE
 	
 	
11/12/2015
1-Atendimento da 2015RS/000555631 – PUBLICAÇÃO MCPJ
2- 	

10/12/2015
1-Atendimento da 2015RS/000554081 – PUBLICAÇÃO ADUANEIRO AGENDADO
2-Atendimento da 2015RS/000554073 – PUBLICAÇÃO SIGPGFN
3-Atendimento da 2015RS/000553753 – PUBLICAÇÃO ACES agendado
4-Atendimento da 2015RS/000554262 – EXECUÇÃO DE SCRIPT POSTGRES

09/12/2015
1-Atendimento da 2015RS/000552043 – EXECUÇÃO DE SCRIPT ORACLE
2-Atendimento da 2015RS/000552152 – PUBLICAÇÃO ADUANEIRO
3-Atendimento da 2015RS/000551922 – EXECUÇÃO DE SCRIPT POSTGRES
4-Atendimento da 2015RS/000548776   – PUBLICAÇÃO DIME AGENDADO fiz de novo
5-Atendimento da 2015RS/000553433     – PUBLICAÇÃO REHU AGENDADO fiz de novo
6-Atendimento da  2015RS/000552954 – EXECUÇÃO DE SCRIPT POSTGRES
7-Atendimento da  2015RS/000552781 - EXECUÇÃO DE SCRIPT POSTGRES
8-Atendimento da 2015RS/000553511     – PUBLICAÇÃO ARRC AGENDADO 
9-Atendimento da 2015RS/000553428 - EXECUÇÃO DE SCRIPT POSTGRES	
10- 	2015RS/000554262



08/12/2015
1-Atendimento da  2015RS/000551707  – EXECUÇÃO DE SCRIPT ORACLE
2-Atendimento da 2015RS/000547783   – PUBLICAÇÃO ADUANEIRO
  

07/12/2015

2-Atendimento da 2015RS/000550434   – EXECUÇÃO DE SCRIPT ORACLE



03/12/2015
1-Atendimento da 2015RS/000547783   – PUBLICAÇÃO ADUANEIRO
 	 

01/12/2015
1-Atendimento da 2015RS/000540383   – EXECUÇÃO DE SCRIPT ORACLE
2-Atendimento da 2015RS/000544034   – PUBLICAÇÃO ADUANEIRO
3-Atendimento da 2015RS/000541650   – EXECUÇÃO DE SCPRIT ORACLE
4-Atendimento da 2015RS/000544389   – EXECUÇÃO DE SCPRIT POSTGRES
 	  	

27/11/2015

2-Atendimento da 2015RS/000541255   – EXECUÇÃO DE SCPRIT ORACLE
3-Atendimento da 2015RS/000539423   – EXECUÇÃO DE SCPRIT ORACLE 	
4-Atendimento da 2015RS/000541327   – PUBLICAÇÃO TEMA SIGA PF AGENDADA
 	
26/11/2015
1-Atendimento da 2015RS/000538365   – EXECUÇÃO DE SCPRIT ORACLE
2-Atendimento da  2015RS/000539484   – PEDIDO DE DDL
3-TRABALHANDO COM PLANILHA DE DESVIOS DOS SERVIDORES DO BI.

24/11/2015
1-Atendimento da  2015RS/000535482   – PUBLICAR ORACLE 
2-Atendimento da 2015RS/000535904 – PUBLICAÇÃO ANCO_STG AGENDAR agendado
	 

19/11/2015
1-Atendimento da 2015RS/000529937   – CORRIGIR PUBLICAÇÃO ORACLE
2-Atendimento da 2015RS/000531662 - EXECUÇÃO DE SCRIPT ORACLE  SISCOMEX

18/11/2015
1-Atendimento da 2015RS/000530618 – CORRIGIR PUBLICAÇÃO ORACLE
2-Atendimento da  2015RS/000530452 – CORRIGIR PUBLICAÇÃO ORACLE

17/11/2015

1-Atendimento da 2015RS/000529135 - EXECUÇÃO DE SCRIPT ORACLE
2-Atendimento da 2015RS/000528705 – CORRIGIR PUBLICAÇÃO ORACLE
3-Atend. da 2015RS/000528535 – PUBLICAÇÃO MCPJ AGENDADO OK RONALDO E MÁRIO
4-Atendimento da 2015RS/000529506 - EXECUÇÃO DE SCRIPT ORACLE  SISCOMEX
5-Atendimento da 2015RS/000529713 – PUBLICAÇÃO COEX AGENDADO
6-Atendimento da 2015RS/000529819  – PUBLICAÇÃO ARRC AGENDADO
7-Atendimento da 2015RS/000529758   – PUBLICAÇÃO REHU AGENDADO
8-Atendimento da 2015RS/000529736    – PUBLICAÇÃO PRFI AGENDADO




16/11/2015
1-Atendimento da  2015RS/000528086 - EXECUÇÃO DE SCRIPT ORACLE
2-Atendimento da  2015RS/000528081 – PUBLICAÇÃO DEST AGENDADO
3-Atendimento da  2015RS/000528425 – PUBLICAÇÃO PROC AGENDADO
 	


13/11/2015
1-Atendimento da  2015RS/000525466 - EXECUÇÃO DE SCRIPT ORACLE
2-Atendimento da  2015RS/000525126 - EXECUÇÃO DE SCRIPT POSTGRES
3-Atendimento da  2015RS/000526510 - EXECUÇÃO DE SCRIPT ORACLE  SISCOMEX
4-Atendimento da 2015RS/000526656 - EXECUÇÃO DE SCRIPT POSTGRES
5-Atendimento da  2015RDM/000031423 - EXECUÇÃO DE SCRIPT ORACLE






12/11/2015

1-Atendimento da 2015RS/000522509 - EXECUÇÃO DE SCRIPT POSTGRES
2-Atendimento da 2015RS/000524714   – PUBLICACAO ADUANEIRO 
3-Atendimento da  	2015RS/000524529 	 - EXECUÇÃO DE SCRIPT ORACLE 
4-Atendimento da  	2015RS/000525025 	 - EXECUÇÃO DE SCRIPT ORACLE  SISCOMEX
5-Atendimento da  	 	2015RS/000524488 	 - EXECUÇÃO DE SCRIPT ORACLE 
6-Atendimento da 2015RDM/000031554 – AUMENTO DE TABLESPACE ORACLE


11/11/2015

2-Atendimento da 2015RDM/000027761 – ATENDIMENTO MAURICIO 
3-Atendimento da 2015RS/000523715 – ATENDIMENTO MAURICIO 

08/11/2015
1-Atendimento da  2015RS/000519677   – PUBLICACAO ADUANEIRO – AGENDAdo
2-APURAÇÃO ESPECIAL IBGE COM RONALDO

07/11/2015
1-Atendimento da 2015RS/000517200  – ANALISE DE RELATÓRIO
2-Atendimento da 2015RS/000515641  – PUBLICACAO ADUANEIRO – AGENDADO
3-Atendimento da 2015RS/000518314  – PUBLICACAO ADUANEIRO – AGENDADO
4-Atendimento da 2015RS/000518227 - EXECUÇÃO DE SCRIPT ORACLE 

06/11/2015
1-Atendimento da 2015RS/000516524  – PUBLICACAO ADUANEIRO – AGENDADO
2-Atendimento da  2015RS/000515386  – PUBLICACAO DIME - AGENDADO
3-Atendimento da 2015RS/000516651 - EXECUÇÃO DE SCRIPT ORACLE – em execução às 20:00

05/11/2015
1- Atendimento da 2015RS/000514966  – CRIAÇÃO DE USUÁRIO ORACLE	retorno usuário
2-AJUSTAR TEMA SIGPGFN – TRES TABELAS COM PROBLEMAS



04/11/2015
1-Atendimento da  2015RS/000514137  – PUBLICACAO MCPJ – AGENDANDO
2-Atendimento da 2015RS/000512387 - EXECUÇÃO DE SCRIPT ORACLE – em execução às 22:00
3-Atendimento da 2015RS/000512349 - EXECUÇÃO DE SCRIPT ORACLE – em execução às 22:00
4-Atendimento da 2015RS/000514900  – PUBLICACAO ADUANEIRO 
5-Atendimento da  2015RS/000514448  – PUBLICACAO SIGA PF 


03/11/2015
1-Atendimento da 2015RS/000512477  – PUBLICACAO RENAINF – AGENDANDO
2-Atendimento da 2015RS/000512772  - PUBLICACAO  - MCPJ 
3-Atendimento da 2015RS/000513414  - PUBLICACAO  - MCPJ – 2 


29/10/2015
1-Atendimento da 2015RS/000511375  – PUBLICACAO SIGPFN

29/09/2015
1-Atendimento da 2015RS/000476848  – PUBLICACAO DIME - AGENDADO
2-Atendimento da 2015RS/000476866  – PUBLICACAO DIME – AGENDADO
3-Atendimento da 2015RS/000480146  - PUBLICACAO  - SNSP ORACLE 
4-Atendimento da 2015RS/000480205  – PUBLICACAO MCPJ – AGENDADO
5-Atendimento da  2015RS/000479471  - Execução de Script POSTGRES

	
28/09/2015
1-Atendimento da 2015RS/000478905  – PUBLICACAO ADUANEIRO – CORPORATIVO
2-Atendimento da  2015RS/000478199  - Execução de Script ORACLE
3-Atendimento da  2015RS/000476912  - Execução de Script ORACLE


	


25/09/2015
1-Atendimento da  2015RS/000475924 - Execução de Script ORACLE
2-Atendimento da 2015RS/000476224  – PUBLICACAO ADUANEIRO – CONDOMINIO
3-Atendimento da  2015RS/000477073  - Execução de Script postgres



24/09/2015
1-Atendimento da 2015RS/000472477   – PUBLICACAO DIME 
2-Atendimento da 2015RS/000473531  – PUBLICACAO DEST 


23/09/2015
1-Atendimento da 2015RI/000323413 – incidente resolvido tema PESSOAL.
2-Atendimento da 2015RS/000470744  – PUBLICACAO ADUANEIRO – CONDOMINIO 
3-Atendimento da 2015RS/000472449 – PUBLICAÇÃO TABELA TERADATA
4-Atendimento da 2015RDM/000027910 – PUBLICAÇÃO TABELA TERADATA


22/09/2015
1-Atendimento da 2015RS/000468855 – PUBLICACAO DEST
2-Atendimento da 2015RS/000469367  – PUBLICACAO ADUANEIRO
3-Aprendizado com Ronaldo sobre Scripts diversos e agendamento de scripts 

21/09/2015
1-Atendimento da 2015RS/000466987  - PUBLICACAO DEST 
2-Atendimento da 2015RS/000466410 – PUBLICACAO SNSP PRODUÇÃO
3- Atendimento da  2015RS/000464052  – REGRA PARA LIBERAÇÃO DE IPS – TERADATA - WAIT

18/09/2015
1-Resolução de Incidente 2015RI/000318287 com André Magalhães
2-Atendimento da 2015RS/000465037  - Execução de Script POSTGRES
3-Atendimento da 2015RS/000463126  - PUBLICACAO PROC 
4-Atendimento da 2015RS/000466821 – REPUBLICAÇÃO DA TABELA WF LANÇAME- TERADATA
5-Atendimento da 2015RS/000466327- Execução de Script ORACLE



17/09/2015
1-Atendimento da – 2015RS/000461782  – Coleta de Informações ORACLE
2-Atendimento da –  2015RS/000464072  – Criação de Usuários TERADATA
3-Reunião com Equipe CDSBI sobre assunto diversos
4-Atendimento da 2015RS/000463185  - Execução de Script ORACLE
5-Solicitação Régio Fortaleza para conferir informações duas tabelas TERADATA

16/09/2015
1-Publicação SINESP – 2015RS/000460898 ORACLE-TERADATA SINESP BD HOMOLOGAÇÃO.	








































15/09/2015
1-Resolução de Incidente nº 2015RI/000313325 
2-Reunião com Equipe para aprendizado sobre CPS.
3- Resolução de Incidente nº 2015RI/000314026
4-Atendimento da – 2015RS/000459629  – Execução de Script POSTGRES

14/09/2015
1- Atendimento da – 2015RS/000456867  – PUBLICAÇÃO SIGPGFN  
2-Atendimento da –  	2015RS/000458275  – PUBLICAÇÃO ADUANEIRO 
3-Publicação SINESP – 2015RS/000448699 ORACLE - TERADATA MÁRIO E RONALDO.	
4-Publicação SINESP – 2015RS/000455673 ORACLE - TERADATA MÁRIO COM acompanhamento RONALDO.
5-Atendimento da – 2015RS/000443087 – Abertura de Regra Dnit – CGU – junto com Ronaldo
6-Resolução do problema JDV – com linux – supop e outros. Junto com JÚLIO


11/09/2015
1-Continuação dos trabalhos sobre mudança de DATATYPES das tabelas do TERADATA.
2-Reunião sobre apresentação do Elasticsearch e kibana com equipe
3-Atendimento da – 2015RS/000452713 – PUBLICAÇÃO DEST 
4-Atendimento da – 2015RS/00045203 – PUBLICAÇÃO DW-FISC 


===MÁRIO - PUBLICAÇÕES AGENDADAS 11/09/2015======================

===ALISSON - PUBLICAÇÕES AGENDADAS 10/09/2015======================


10/09/2015
1-Inicio dos trabalhos sobre mudança de DATATYPES das tabelas do TERADATA.
2-Transferência de ticket para equipe responsável. 2015RS/000451250
3-Transferência de ticket para equipe responsável. 2015RDM/000026691
4-Atendimento à Giovana que solicitou informações pessoalmente sobre tabela TERADATA 


09/09/2015
1-Inicio dos trabalhos sobre mudança de DATATYPES das tabelas do TERADATA.
2-Atendimento da – 2015RS/000449571 – Publicação ORACLE 
3-Atendimento da – 2015RS/000450432 – Publicação ORACLE – tema MCPJ – e encerrado por Alisson
4-Reunião com Labyb sobre Mapeamento de Processos de Banco - RS	
5-Atendimento da – 2015RS/000452092 – Ticket encaminhado para grupo responsável	
6-Atendimento da – 2015RS/000451795 – Execução de Script Postgres
	

08/09/2015
1-Atendimento da – 2015RS/000447748 – Publicação ORACLE
2-Reunião com Equipe sobre Pendências, novos parceiros, novas demandas para a equipe.
3-Informações com Daniel sobre DUMP no POSTGRES
4-Atendimento da – 2015RS/000449704 – PUBLICAÇÃO TERADATA – WF-LANÇAMENTO
5-Análise junto com Ronaldo dos Incidentes na Caixa de Tickets.
6-Análise junto com André Magalhães, do incidente 2015RI/000280220 – já fechado por nós. 	

04/09/2015
1-Reunião para detalhes sobre a mudança de salas com toda equipe.
2-Atendimento da – 2015RS/000445196 – Execução de Script ORACLE	
3-Conferência de tamanhos de tabelas enviada para Valdecio / Sunaf
4-Atendimento da – 2015RS/000448037 – Postgres conferência de senha
5-Conferência de Arquivos com Erica Moscovo no Servidor de Pdi
6-Conferência de RDM com Ronaldo e Daniel para dar baixa.

03/09/2015
1-Curso Teradata – na LOGUS TI com equipe CDSBI

02/09/2015
1-Curso Teradata – na LOGUS TI com equipe CDSBI.
2-Atendimento da – ticket Valdecio Sunaf – STN – DADOS VALDECIO – TERADATA
3-Atendimento da – 2015RS/000443335 – Execução de Script ORACLE
4-Atendimento da – 2015RS/000444696 – Execução de Script POSTGRES



01/09/2015
1-Curso Teradata – na LOGUS TI com equipe CDSBI.
2-Ticket passado para grupo responsavel - 2015RS/000441608  - OLAP

31/08/2015
1-Curso Teradata – na LOGUS TI com equipe CDSBI.
2-Atendimento da – 2015RS/000439395 – Execução de Script Postgres 
3-Atendimento da – 2015RS/000438432 – Execução de Script – PDI ferramentas – PASSEI PARA O GRUPO RESPONSÁVEL.
4-Atendimento da – 2015RS/000437130 – Execução de Script Oracle 	



29/08/2015
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



28/08/2015
1-Curso Teradata – na LOGUS TI com equipe CDSBI.

27/08/2015
1-Curso Teradata – na LOGUS TI com equipe CDSBI.
2-Atendimento da – 2015RS/000436277 – EXECUÇÃO DE SCRIPT ORACLE 
3-Atendimento da – 2015RS/000432047 – PUBLICACAÇÃO ADUANEIRO
4-Atendimento da – 2015RS/000435779 – Execução de Script Postgres 
5-Atendimento da – 2015RS/000435667 – Execução de Script Postgres 



 	
26/08/2015
1-Curso Teradata – na LOGUS TI com equipe CDSBI.
2-Atendimento da – 2015RS/000432093 – Execução de Script Postgres *
3-Atendimento da – 2015RS/000431800 – Execução de Script Postgres *
4-RDM informativa 2015RDM/000021177 – sobre patch teradata – RDM já fechada.

25/08/2015
1-Curso Teradata – na LOGUS TI com equipe CDSBI.
3-Atendimento da – 2015RS/000431890 – Execução de Script Postgres *
4-Atendimento da – 2015RS/000433751 – Execução de Script ORACLE *
5-Atendimento da – 2015RS/000432965 – Execução de Script ORACLE *
6-Migração com Ronaldo e Daniel do Banco de Desenvolvimento do POSTGRES


























24/08/2015

1-Curso Teradata – na LOGUS TI com equipe CDSBI.
2-Atendimento da – 2015RS/000429089 – PUBLICAÇÃO ORACLE *
3-Atendimento da – 2015RS/000429474 – EXECUÇÃO DE SCRIPT POSTGRES*
4-Atendimento da – 2015RS/000430248 – EXECUÇÃO DE SCRIPT POSTGRES* 
5-Atendimento da – 2015RS/000430838 – Execução de Script ORACLE *
6-Atendimento da – 2015RS/000430874 – Execução de Script ORACLE *
7-Resolução de problema no CONTROLM com Ronaldo sobre alteração de coluna na PUBLICAÇÃO  
  TEMA PGTO E PROC.


22/08/2015
1-Atendimento da – 2015RS/000428874 – PUBLICAÇÃO ORACLE 
2-Continuação Edição PO – Procedimentos operacionais da CDSDW acertados na Reunião

21/08/2015
1-Atendimento da – 2015RS/000427976 – PUBLICAÇÃO ORACLE 
2-Reunião com Daniel, Ronaldo, Labyb sobre Procedimentos Operacionais.
3-Continuação Edição PO – Procedimentos operacionais da CDSDW acertados na Reunião. 
4-Encerramento de incidente para SIACI – DNIT

20/08/2015
1-Reunião com a equipe geral CDSBI – sobre serviços diversos.
2-Atendimento da – 2015RDM/000024537 – TROCA DE SENHA DE USUÁRIO ORACLE 
3-Atendimento da – 2015RS/000428424 – SCRIPT PG_HBA POSTGRE
4-Tratamento de INCIDENTE SIAC – DNIT – acompanhamento com Ronaldo.

19/08/2015
1-Finalização do Atendimento da – 2015RS/000407292 – Execução de demanda para Teradata com  
   André Magalhães.
2-Continuação Edição PO – Procedimentos operacionais da CDSDW acertados na Reunião. 
3-Atendimento de Incidente sobre SIACI – DNIT com Ronaldo Bezerra
4-Abertura de RDM para ampliação de área de tablespace e área de diskgroup para equipe oracle   
   para atender incidente SIACI – DNIT.
5-Edição de Topologia Qlik Sense – a pedido de IARA.

18/08/2015
1-Atendimento da – 2015RS/000420951 – Execução de Script Postgres
2-Continuação Edição PO – Procedimentos operacionais da CDSDW acertados na Reunião. 
3-Documento descritivo sobre Microstrategy com Gustavo Ferramentas
4-Abertura de RDM para intervenção na máquina TERADATA no domingo dia 23/08

17/08/2015
1-Reunião com Daniel, Labyb e Ronaldo sobre processos da CDSDW.   
2-Edição PO – Procedimentos operacionais da CDSDW acertados na Reunião. 

14/08/2015
1-Reunião na Regional sobre Plano de Negócios Data Discovery com Iara, Hatus, Maria Helena,   
   Marcelo Meira 
2-Encerramento sobre Reestruturação de DATATYPE no TERADATA em trabalho conjunto com  
   André.

13/08/2015
1-Atendimento da – 2015RS/000416362 – PUBLICAÇÃO ORACLE
2-Informações com Ronaldo sobre atendimento no sobreaviso de Job com problema.
3-Reunião na Sede sobre Plano de Negócios Data Discovery
4-Continuação de Reestruturação de DATATYPE no TERADATA em trabalho conjunto com André.
5-Atendimento da – 2015RS/000417586 – PUBLICAÇÃO ORACLE - CORREÇÃO


















12/08/2015
1-Atendimento da – 2015RS/000415083 – EXECUÇÃO DE SCRIPT POSTGRE 
2-Atendimento da – 2015RS/000415071 – EXECUÇÃO DE SCRIPT POSTGRE 
3-Continuação de Reestruturação de DATATYPE no TERADATA em trabalho conjunto com André.
4-Atendimento da –  2015RS/000416934 – EXECUÇAO SCRIPT


11/08/2015
1-Atendimento da – 2015RS/000412209 – EXECUÇÃO DE SCRIPT ORACLE 
2-Atendimento da – 2015RS/000411475 – PUBLICAÇÃO ORACLE  
3-Continuação de Reestruturação de DATATYPE no TERADATA em trabalho conjunto com André.
4-Atendimento da – 2015RS/000414270 – enviando para o grupo de ferramentas olap. 


10/08/2015
1-Atendimento da – 2015RS/000405847  – PUBLICAÇÃO ORACLE 
2-Atendimento da -  2015RS/000408827 – EXECUÇÃO DE SCRIPT ORACLE 
3-Atendimento da – 2015RS/000409903 – EXECUÇÃO DE SCRIPT ORACLE
4-Reunião com Labyb, Daniel – sobre Procedimentos Operacionais.
5-Instruções para Daniel de como fazer DUMP e RESTORE no POSTGRES
6-Reestruturação de DATATYPE no TERADATA em trabalho conjunto com André.
7-Atendimento da – 2015RS/000410606 – MATAR PROCESSO PENTAHO - 


======================================================================
07/08/2015
1-Reunião pessoal de Banco Postgres Livre – sobre documentação de processos
2-Reunião Labyb, Daniel, Iara e Mário sobre documentação de processos.
3-Reunião sobre Validação de Processos CPS com equipe.
4-Atendimento da – 2015RS/000408015  – PUBLICAÇÃO ORACLE
5-Atendimento da – 2015RS/000410262 – EXECUÇÃO DE SCRIPT ORACLE
6-Atendimento da – 2015RS/000411164  – REPASSANDO PARA OLAP 

06/08/2015
1-Atendimento da – 2015RS/000398372  – Grants de Acesso postgres – Mário e Daniel
2-Instruções e edição de PO – Procedimentos Operacionais. - Mário

05/08/2015
1-Atendimento da – 2015RS/000406144  – Publicação  banco ORACLE – Mário 
2-Instruções com Ronaldo sobre publicações e atendimento no sobreaviso
3-Atendimento da – 2015RS/000406648  – Publicação  banco ORACLE – Mário 

04/08/2015
1- Continuação de Mapeamento de processos da equipe de banco juntamente com Daniel e Labyb
2- Atendimento da 2015RS/000403155 – DUMP banco Postgres – Mário e Daniel
3-Atendimento da – 2015RS/000395063  – Execução de script banco postgres – Mário 
4-Atendimento da – 2015RS/000393379  – Execução de script – Mário  postgres

03/08/2015
1-Reunião com toda equipe e a chefia para discorrer sobre as pendências e atividades do mês de   
   Julho-2015
2-Mapeamento de processos da equipe de banco juntamente com Daniel e Labyb

28/07/2015
1-Atendimento Daniel SUPST – para conferência de Usuário no Postgres
2-Atendimento da 2015RS/000392262 – Execução de Script Postgres – Mário e Daniel
3-Atendimento da 2015RS/000391261 – Execução de Script Postgres
4-

24/07/2015
1-Atendimento da RS-2015RS/000386953 – Spotifire passando para olapdw
2-Acompanhamento da problemática do DWTG no TERADATA 
3-Atendimento da RS-2015RS/000388439 – Criação de Usuário Postgres
4-



23/07/2015
1-Instruções básicas ao Daniel sobre atendimento de TICKETS
2-Atendimento à Isabela SUPST – sobre Privilégios no POSTGRES
3-Atendimento da RS-2015RS/000384392 – execução de script  Postgres 
4-Atendimento da RS-2015RS/000384498 – execução de script  Postgres 
5-Atendimento da RS-2015RS/000386056– execução de script  Postgres 
6-Atendimento da RS-2015RS/000384583 – execução de script  Postgres 

22/07/2015
1-Atend. da RS-2015RS/000382169 – execução de script  Postgres 
2-Atend. da RS-2015RS/000382244 – execução de script  Postgres – cancelado pelo usuário
3-Atend. da RS-2015RS/000382251 – execução de script  Postgres – cancelado pelo usuário
4-Atend. da RS-2015RS/000382044 – Publicação Aduaneiro
5-Instruções básicas ao Daniel sobre atendimento de TICKETS
6-Atend. da RS-2015RS/000382475 – Execução de script Postgres – Script 
7-Atend. da RS-2015RS/000383817 – Execução de script Postgres – usuários 

21/07/2015
1-Criação de Topologia DATA DISCOVERY para reunião – Data Discovery
2-Participação em Reunião sobre Data Discovery com HATUS na Sede 
3-Atend. da RS-2015RS/000377575– dump postgres
4-Atend. da RS-2015RS/000381971 – execução de script Postgres
===

10/07/2015
1-Atend. da RS - 2015RS/000359224 – Execução de Script ORACLE  P/ POWERDESIGNER
2-Atend. da RS - 2015RS/000362793 – Envio de DDL ORACLE  
3-Envio de Informações para comentários TERADATA para Daniel SUNAF
4-Atend. da RS – 2015/000758568 – Privilégios de Usuários POSTGRES
5-Atend. da RS – 2015RS/000346288 – Privilégios de Usuários POSTGRES
===
09/07/2015
1-Atend. da RS - 2015RS/000359224 – Execução de Script TERADATA  

08/07/2015
1-Atend. da RS - 2015RS/000358428 – Execução de Script POSTGRES;
2-Atend. da RS  – 2015RS/000355817 DUMP DE SCHEMA POSTGRES;
3-Atend. da RS  – 2015RS/000344919 DUMP DE SCHEMA POSTGRES;
4-Atend. da RS  –2015RS/000354454 DUMP DE SCHEMA POSTGRES;
===
07/07/2015
1-Atend. da 2015RS/000355173  – Execução de Script POSTGRES;
2-Atend. da 2015RS/000356576  – Criação de Usuários POSTGRES;


=
06/07/2015
1- Encaminhamento TOPOLOGIAS PARA MARCELO À PEDIDO DA IARA
2-Preparando informações para Ariadne 
3-Atend. da 2015RS/000346161 -Criação de Usuários POSTGRES
4-Atend. da 2015RS/000353904 -Execução de scripts POSTGRES
5-Atend. da 2015RS/000352923 –Correção de Privilégios  USUÁRIOS POSTGRES
6-Atend.da 2015RS/000348196 –Correção de Privilégios  USUÁRIOS POSTGRES
7-Atend. da 2015RS/000349942–Criação de Usuário para acessar banco carga 
   POSTGRES
=
03/07/2015
1- reunião com produção control-m
2-Envio de Email para Leandro solicitando informações e providências sobre problemática no 
   Powercenter com Teradata.
=
02/07/2015
1-Atend. de 2015RS/000342787-PUBLICAÇÃO ADUAN CORPORATIVO 
2-Atend. de 2015RS/000344384 -PUBLICAÇÃO ADUAN CONDOMINIO
3-Atend. de 2015RS/000346105-CRIAÇÃO DE USUÁRIO POSTGRES
4-Atend. de 2015RS/000346161-USUÁRIOS NO PG_HBA POSTGRES
5-Atend. de 2015RS/000346405-USUÁRIOS NO PG_HBA POSTGRES
6-Atend. de 2015RS/000348221-USUÁRIOS NO PG_HBA POSTGRES
=
1º/07/2015
1-Atendimento de RS-2015RS/000337358-ALTERAÇÃO DE PRIVILÉGIOS DE USUÁRIOS 
   TERADATA 
2-Atendimento de  RS - 2015RS/000342175 – EXEC. SCRIPT PRIVILÉGIOS DE USUARIO 
   POSTGRES
3-Participação para correção de problemas no processo de publicação do DWTG com Equipe
3-Atendimento de  RS - 2015RS/000345801 – EXEC. SCRIPT POSTGRES

==
30/06/2015
1-Atendimento de  RS - 2015RS/000341721 - CRIAÇÃO DE USUÁRIO
2-Reunião sobre Ágil – Metodologia – e kaban com equipe e professor João Paulo
3-Atendimento de RS-2015RS/000335328-EXECUÇÃO SCRIPT TERADATA -sobre COMENTÁRIOS

==
29/06/2015
1-Atendimento de  RS - 2015RS/000335997 - EXECUÇÃO SCRIPT POSTGRES
2-Atendimento de  RS - 2015RS/000337334 - EXECUÇÃO SCRIPT TERADATA ALTERAÇÃO   
   INDEX
3-Atendimento à TERADATA com Leandro – suporte para que o mesmo executasse demandas 
   TERADATA
4-CRIAÇÃO DE TOPOLOGIAS PARA AMBIENTE DATA DISCOVERY




===
26/06/2015
1-Atendimento de  RS - 2015RS/000333853 - PUBLICAÇÃO ADUANEIRO
2-Realização de Exercicio BMPN - com Labyb no curso de BMPN SISGAD
3-Atendimento de  RS - 2015RS/000334861 - EXECUÇÃO SCRIPT POSTGRES
4-Atendimento de  RS - 2015RS/000334291 - EXECUÇÃO SCRIPT POSTGRES
5-Execução de Demanda TERADATA 2015/000751392 para AKEMI FORTALEZA 


===
25/06/2015
1-Atendimento da RS - 2015RS/000331913 - PUBLICAÇÃO ADUANEIRO
2-Resolução de Problemática no Teradata/Powercenter com André e equipe 
3-Reunião com Iara e Equipe sobre informações da problemática Teradata/Powercenter
4-Atendimento da - 2015RS/000334824  - EDIÇÃO DO ARQ. PG_HBA - INCLUSÃO DE IP  



========================================
2-Realizando Curso de BPMN - SISGAD ESTOU NO CAP 3 - item 3.2.1.1. 


	 	
04/05/2015

1-Levantamento de Área de dados nos ambientes de Produção, Homologação e 
   Treinamento.
2-Atendimento da RS - 2015RS/000234959
3-Atendimento da RS - 2015RS/000234984

===

05/05/2015
1-Participação em Workshop Informática no Hotel Royal Tulip Brasília
2-Levantamento de Área de dados nos ambientes de Produção, Homologação e 
   Treinamento. 
===

06/05/2015
1-Levantamento de Área de dados nos ambientes de Produção, Homologação e 
   Treinamento. 
2-Criação de Usuário e Banco de dados no Teradata com André Magalhães

===
07/05/2015
1-Levantamento adicional no CPS de todos os USERS e adição na planilha do  
   levantamento dos ambientes. 
2-Atendimento da RS - 2015RS/000241556
3-Atendimento da RS - 2015RS/000241458
4-Atendimento da RS - 2015RS/000239786

===
08/05/2015
1-Levantamento de Área de dados nos ambientes de Produção, Homologação e 
   Treinamento. CONFERÊNCIA COM ANDRÉ E ENTREGA PARA IARA
2-Adição da coluna USERS na planilha do levantamento dos ambientes. para conferência com CONTRATO CPS. 
3-Atendimento da 2015RS/000243813
4-Atendimento da 2015RS/000243913




===
11/05/2015
1-CRIAÇÃO DE TOPOLOGIA PARA RDM DE CRIAÇÃO DE USUÁRIO TERADATA. 
2-Atendimento da 2015RS/000243803 com ajuda de Ronaldo
3-Atendimento da 2015RS/000249187

===
12/05/2015
1-Atendimento da 2015RS/000248789
2-Atendimento da 2015RS/000248824
3-Atendimento da 2015RS/000246520
4-Edição de TOPOLOGIA POWERCENTER PARA Iara

===
13/05/2015
1-Atendimento da 2015RS/000249705
2-Verificação de publicação ACES e encaminhamento de Relatório para Luciano DE712
3-Acompanhamento de Extração com André Magalhães do schema Custos do Oracle para 
   Teradata.
4-Atendimento da 2015RS/000253923
5-Atendimento da 2015RS/000254812 
6-Acompanhamento de abertura de RDM de Desativação de ambiente 

===
14/05/2015
1-Atendimento da 2015RS/000252541 - publicação DIME
2-Finalização de atendimento do ticket 2015RI/000163888, realizado por André Magalhães 
   Ticket sobre espaco do sysaux.
3-Edição de topologia PowerCenter - Teradata - para Iara e Régio Fortaleza
 

===
15/05/2015
1-Análise da RDM 2015RDM/000012948 para possível execução. André vai ajudar a    
   resolver na segunda dia 18/05/2015;

===
18/05/2015
1- Participação em Workshop Plataforma Ágil - na ESAF - 1º DIA
2-Atendimento da 2015RS/000259955 - publicação PERD
3-Atendimento da 2015RS/000260648 - publicação PESSOAL



===
19/05/2015

1- Participação em Workshop Plataforma Ágil - na ESAF - 2º DIA
2- Atendimento da 2015RS/000263269 - PUBLICACAO PROC 
3- Atendimento da 2015RS/000263203 - PUBLICACAO ADUANEIRO CORPORATIVO
4- Atendimento da 2015RS/000263461 - CRIAÇÃO DE USUÁRIO - POSTGRES
5- Atendimento da 2015RS/000263520 - CRIAÇÃO DE USUÁRIO - POSTGRES


===
20/05/2015
1- Participação em Workshop Plataforma Ágil - na ESAF - 3º E ÚLTIMO DIA
2- Atendimento da 2015RS/000264403 - PUBLICAÇÃO ADUANEIRO 
3- Atendimento da 2015RS/000263475 - INSCRIÇÃO DE USUÁRIO POSTGRES NO   
    PG_HBA. 
4-Atendimento da 2015RS/000268112 - CRIAÇÃO DE SCHEMA CUSTOS NO POSTGRES
5-Atendimento da 2015RS/000266019 - CRIAÇÃO DE SCHEMA MANTIS NO POSTGRES

===
21/05/2015
1-Atendimento da 2015RS/000269376 - PUBLICAÇÃO ACES
2-Reunião com Hatus, Iara, Labyb - sobre Sistema de Acionamentos CDSBI
2-Ronaldo Atendimento da 2015RS/000247677 - CRIAÇÃO DE USUÁRIOS POSTGRES

===
22/05/2015
1-Instalação do PGADMIN - administrador de bancos do Postgres na Máq. Mário e Ronaldo  
    por Waldemar/Mário/Ronaldo
2-Cadastramento de Usuário e Senha do Teradata - TAYS.COM
3-Atendimento da 2015RS/000270773 - PUBLICAÇÃO DE TABELA PGTO 
4-Atendimento da 2015RS/000271795 - ACRESCENTAR USUARIO A ROLE
5-Atendimento da 2015RS/000271944 - EXECUÇÃO DE SCRIPT - ALTERAÇÃO DE TABS
6-Atendimento da 2015RS/000271996 - EXECUÇÃO DE SCRIPT - CRIAÇÃO DE VIEWS  
   POSTGRES.







===
25/05/2015
1-Informações e Orientações sobre Extração e importação do Schema PAGEF E CUSTOS      
   ORACLE / TERADATA com André Magalhães;
2-Atendimento da 2015RS/000271843 - POSTGRES - INCLUSÃO DE IPS PG_HBA;
3-Atendimento da 2015RS/000276410 - POSTGRES - EXECUÇÃO DE SCRIPTS;
4-Atendimento da 2015RS/000276823 - POSTGRES - EXECUÇÃO DE SCRIPTS CRIAÇÃO 
   VIEWS;
===
26/05/2015
1-Atendimento da 2015RS/000276825 - PUBLICAÇÃO ADUANEIRO - CONDOMINIO  
2-Atendimento da 2015RS/000276837 - PUBLICAÇÃO ADUANEIRO - CORPORATIVO 
3-Criando manual de sobreaviso para Mário com orientações de Ronaldo.
4-1-Informações e Orientações sobre Extração e importação do Schema PAGEF E CUSTOS      
   ORACLE / TERADATA com André Magalhães; - continuação

=
27/05/2015
1-Criação de Schema TESTERNF para teste RNF José Lopes - 10 GB
2-Inf. e Orientações sobre Extração e import. do Schema PAGEF E CUSTOS      
   ORACLE / TERADATA com André; - continuação
3-Inf. sobre BACKUP NO TERADATA COM RICARDO, JEFERSON e ANDRÉ
4-Inf. sobre MÁQUINA TERADATA NO CENTRO DE DADOS COM WALDEMAR, 
   RICARDO TERADATA, JEFERSON MAXTERA E  ANDRÉ 
5-Reunião com IARA sobre atualização de alocação de TABLESPACES;
=
28/05/2015
1-Fechamento de sessões powercenter no BIMD002 à pedido de José Lopes
2-Atend. da 2015RS/000280052 - CRIAÇÃO DE SCHEMA - POSTGRES-PRODUÇÃO
3-Atend. da 2015RS/000280034 - CRIAÇÃO DE SCHEMA - POSTGRES-HOMOLOGAÇÃO.
4-Atend. da 2015RS/000279999  - CRIAÇÃO DE SCHEMA - POSTGRES-CARGAS
5-Atend. da 2015RS/000280844 - EXEC. DE SCRIPT POSTGRES - BACKUP.
6-Atend. da 2015RS/000280855 - EXEC.DE SCRIPT POSTGRES - BACKUP.
7-Edição plani. de cont. de aloc. de espaços de Tablespaces do Corp. dos ambientes 
   de hom/treI/produção.

===
29/05/2015
1-Atend. da 2015RS/000284845 - CRIAÇÃO DE USUÁRIO POSTGRES.
2-Atend. da 2015RS/000282870 - ADICIONAR IPS NO PG_HBA POSTGRES



===
01/06/2015
1-Atend. da 2015RS/000289272 - DUMP DE SCHEMA POSTGRES - com Ronaldo. 
   executado conversar com Daniel para ver aonde vai colocar

===
02/06/2015
1-Atend. da 2015RS/000290508 - PUBLICAÇÃO ADUANEIRO
2-Levantamento das Máquinas dos Ambientes Corporativo, Condomínio, Pentaho, STN à 
    pedido da Iara.

===
03/06/2015
2-Atend. da 2015RS/000291966 - CRIAR USUÁRIO POSTGRES.
3-Atend. da 2015RS/000289650 - EXECUÇÃO DE CRIAÇÃO DE SCRIPT 
4-Atend. da solicitação da Equipe de Linux/SUPCD para inclusão de IP no  
   pg_hba.conf do POSTGRES.
5-Atend. da 2015RS/000291966 - Adicionar ip ao pg_hba.conf postgress
===
05/06/2015
1-Atend. da 2015RS/000295848 - PUBLICAÇÃO ADUANEIRO
2-Atend. da 2015RS/000295858 - PUBLICAÇÃO ADUANEIRO
3-Atend. da 2015RS/000283124 - PUBLICAÇÃO ADND E ADNF. passar para André 
   André atendeu e Mário acompanhou 

===
08/06/2015
1-Atendimento da 2015RS/000297663 - PUBLICAÇÃO ADUANEIRO
2-Informações Isabela - SUPST - sobre Banco Postgres
3-Atualização de Planilha de Servidores da CDSDW - com Labyb
4-Atendimento da 2015RS/000298329 - EXECUÇÃO DE SCRIPTS POSTGRES
5-Atendimento da 2015RS/000289573 - EXECUÇÃO DE SCRIPTS POSTGRES - BACKUP
6-Atendimento da 2015RS/000300396 - EXECUÇÃO DE SCRIPTS POSTGRES - CRIAÇÃO DE 
   INDICE.

===
09/06/2015
1-Atendimento da 2015RS/000300963 - PUBLICAÇÃO CORPORATIVO ADUANEIRO
2-Atendimento à Erica para solução de POSTGRES - pendência à pedido de Ronaldo/Férias
3-Atendimento da 2015RS/000297735 - EXECUÇÃO DE SCRIPTS NOS BANCOS POSTRES em todos os ambientes.


===
10/06/2015

1-Atendimento da 2015RS/000298723 - EXECUÇÃO DE SCRIPTS POSTGRES
3-Reunião na sede Serpro sobre finalização de informações sobre aquisição DATA MINING SAS à pedido da Iara.
4-Áudio com Régio, Leandro Teradata, Fred, André e Mário - sobre informações a colher no Teradata no fato ocorrido no lançamento dos blocos 7,8 e 9 do power center.
5-Repasse de informações sobre processo POWERCENTER /  TERADATA para Leandro Teradata 

===
11/06/2015
1-Reunião com colegas de trabalho e Chefia, sobre assuntos correlatos com nossa área
2-Atendimento da 2015RS/000298280- COPIA DE SCHEMA ENTRE BANCOS POSTGRES
3-Atendimento da 2015RS/000309287 - CRIAÇÃO DE PRIVILEǴIO PARA AMBIENTE POSGRES

===
12/06/2015
1-Reunião com Iara e equipe sobre problemática de duplicação de projetos no banco e nas 
   ferramentas.
2-Atendimento da 2015RS/000296787 - EXECUÇÃO DE SCRIPT ORACLE 
3-Atendimento da 2015RS/000311470 - EXECUÇÃO DE SCRIPT POSTGRES
4-Acompanhamento de Publicação PROC - a pedido de Alisson.

===
15/06/2015
1-Atendimento da 2015RS/000311819 - EXECUÇÃO DE SCRIPT POSTGRES
2-Solicitação de Informações por Iara Chefia sobre número de serviços no Postgres no dia 12/06


===
16/06/2015
1-Atendimento da 2015RS/000314276 - PUBLICAÇÃO ADUANEIRO
2-Atendimento da 2015RS/000315037 - EXECUÇÃO DE SCRIPT POSTGRES
3-Atendimento da 2015RS/000315017 - EXECUÇÃO DE SCRIPT POSTGRES para APAGAR E 
   RECRIAR SCHEMA.
4-Atendimento da 2015RS/000315005   - EXECUÇÃO DE SCRIPT POSTGRES para APAGAR E 
   RECRIAR SCHEMA.
5-Atendimento da 2015RS/000315000   - EXECUÇÃO DE SCRIPT POSTGRES para APAGAR E RECRIAR SCHEMA.
6-Atendimento da  2015RS/000315702 - EXECUÇÃO DE SCRIPT POSTGRES

===
17/06/2015
1-Atendimento da 2015RS/000317830   - EXECUÇÃO DE SCRIPT POSTGRES para APAGAR E RECRIAR SCHEMA.
2-Atendimento da 2015RS/000317822   - EXECUÇÃO DE SCRIPT POSTGRES para APAGAR E RECRIAR SCHEMA.
3-Atendimento da 2015RS/000317818  - CADASTRO DE USUÁRIO POSTGRES

====
18/06/2015
1-Reunião na Sede - sobre Plano de Negócios DD - Data Discovery com equipe e Iara.
2-Atendimento da 2015RS/000321629   - EXECUÇÃO DE SCRIPT POSTGRES para CRIAÇÃO DE USUÁRIOS
3-Atendimento da 2015RS/000321489 - EXECUÇÃO DE SCRIPT POSTGRES para CRIAÇÃO DE USUÁRIOS
4-Atendimento da 2015RS/000321499 - INCLUSÃO DE IP NO PG_HBA DO POSTGRES 
5-Atendimento da 2015RS/000322362 - EXECUÇÃO DE SCRIPT NO BANCO POSTGRES
6-Atendimento à Flavio -CD sobre pg_hba de um usuário que estava com problemas.

====
19/06/2015
1-Atendimento de solicitação de cópias de tabelas de schema oracle à pedido de José Lopes
2-Atendimento da 2015RS/000319728 - EXECUÇÃO DE SCRIPT NO BANCO POSTGRES para dump

====
22/06/2015
1-Atendimento do atendimento  2015RS/000319728 - CORREÇÃO DE PRIVILÉGIOS POSTGRES
2-Atendimento do atendimento  2015RS/000326962 - CORREÇÃO DE PRIVILÉGIOS POSTGRES
3-Atendimento do atendimento  2015RS/000324231 - EXECUÇÃO DE SCRIPT POSTGRES	

===
23/06/2015
1-Atendimento do atendimento 2015RS/000327361 - PUBLICAÇÃO ADUANEIRO
2-Atendimento do atendimento 2015RS/000324546 - CRIAÇÃO DE USUÁRIO TERADATA
3-Atendimento do atendimento - 2015RS/000328097 CRIAÇÃO DE TABELA E VIEW TERADATA - andré corrigir ainda!!!
4-Atendimento do atendimento - 2015RS/000328900 EXEC SCRIPT ORACLE

===
24/06/2015
1-Atendimento do atendimento - 2015RS/000328706 - PUBLICAÇÃO ADUANEIRO
2-Atendimento do atendimento - 2015RS/000330346  - EXECUÇÃO DE SCRIPT POSTGRES 
3 -Atendimento do atendimento -RDM 2015RDM/000017585 CRIAÇÃO DE TABELA E VIEW 
   TERADATA


==ATIVIDADES MÁRIO GDES2016 JUNHO

1-AUXILIO NA MIGRAÇÃO DE BANCO DE DESENVOLVIMENTO CONDOMINIO PARA ZDM DE BI  
2-EDIÇÃO DOS MODELOS DE ACIONAMENTOS TERADATA PARA SITE DO BICDSDW - ok 
3-FINALIZAR FLUXOS DE RDM DE POSTGRES E TERADATA PARA O SISTEMA ORYX - GESTÃO DE MELHORIA DE PROCESSOS
4-ATENDIMENTO DE REQUISIÇÕES DE SERVIÇOS E DE MUDANÇAS - ok 


