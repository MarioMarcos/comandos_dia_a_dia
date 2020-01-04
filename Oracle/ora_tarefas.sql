INFORMAÇÕES ANDRÉ MAGALHÃES

1-WA_CONTROLE_ETC NA PRODUÇÃO - FOI CRIADO UM JOB NOVO PARA ATUALIZAR ESSA TABELA
2-FOI CRIADO ALTERADO O WORKLOAD V6 PARA CONTEMPLAR RESTRIÇÕES DOS USUÁRIO CADASTRADOS DA STN
3-FOI EXECLUIDO OS BANCOS DO DBH_33393_DWTG_STG E ORACLE_33393_DWTG 
4-FOI FEITO O BACKUP DOS MESMO, CONTUDO ESTOU TENTANDO RESTAURAR UM DELE PARA VER SE DAR CERTO
5-FOI MUDADO O REPLICAR_FATOS_LANC.SH DA HOMOLOGAÇÃO PARA CONTEMPLAR NOVA SITUAÇÃO DA WF_LANÇAMENTO - SAMUEL TE EXPLICA MELHOR
6-O BANCO COM OS TESTES DO ATTUNITY FOI REINICIADO TRES VEZES PELA TERADATA, CONTUDO INFORMAÇÕES DA PRÓPRIA TERADATA É QUE FOI BUG QUE VÃO SER CORRIGIDOS COM O PATHC E FIRMWARE NOVO
7-APLICAMOS O PATHC E O NOVO FIRMAWREA HOJE NO SÁBADO - ---- 
8-FOI FEITO A EXCLUSÃO DO BANCO DBH_33393_DWTG_STG E ORACLE_33393_DWTG E DEPOIS FIZ O RESTORE DE UM DELES COM MUITO TRABALHO MAIS DEU CERTO.
9-OBSERVAR NO BACKUP, CONSEGUI COPIAR O USUARIO COM O COMANDO ALL NOS BANCOS
10-aumentei 500g no dbpro
11-FUI adicionar colunas na lanmento e estourou no more room no dbpro. ai resolvi de outra maneira.
12-o Jose lopes conseguiu criar uma tabela no dbpro com o usario do microstrategy na sei como vez que ele nao tem permissao de criar. mas isso e so uma observacao.
13-foi criado o banco dbcar_33393_dwtg_hom para servir de carga da homologacao .... 
14-Porque a ep02 que busca na ep03 nao tem clausula where com o ano de 2016
15-para que ser essa ee01 - pois o desenvolvimento retirou a mesma da publicacao.
16-apagamos a tabela wf_custo_direto e incluimos a tabela wd_in_tp_acrescimo
17-as tabelas wd_siorg foram todas alteradas para novas estruturas
18-reunião para virada do ano.
19-alterado usuário STN por outro que já existia. 
20-coletando estatística depois do drop e depois das mudanças das colunas - perfil dos sql começou a mudar.
21-Backup do Banco de carga locou o banco e ai já viu. era feriado e produção não viu .. ai deu merda. só foi publicado tudo às 16:00
22-CORRIGIR O BACKUP MENSAL TERADATA

ADICIONAR O DBCAR_HOM
E RETIRAR O DBH_STG
12/01/2016 20:02:47  ARCHIVING DATABASE "DBH_33393_DWTG_STG"
12/01/2016 20:02:47  *** Error 3802:Database 'DBH_33393_DWTG_STG' does not exist.
12/01/2016 20:02:47  *** Warning ARC1003:DATABASE "DBH_33393_DWTG_STG" - skipped 
                     from DUMP Operation.


23-APAGUEI O DBP_33393_DWTG - fiz backup antes no mensal
24-correção nas rotinas de publicação dos jobs do controlm de banco de homologação.
25-




