#####################################################################################################################

=====================================================================================================================================
--TERADATA - ATUALIZAÇÃO EM 08/05/2019

1-1:30 assunto relatórios 
2-horários errados
3-cpu- relatórios do NEGRINI
4-poc - continues
5-apresentação continuar
6-Tays - Negrini (testar a configuração com o email do Negrini - está no meu email (URGENTE)
7-Apresentação Teradata Negrini
8-Alerts Bancos - tamanho atualizar com Gustavo
9-Testar Scripts Privilégios dos bancos (testado parcialmente)
10-melhorar scripts no controlm para pegar erros nas publicações da carga para produção (URGENTE)
11-Ajustar o DSN names para pegar no teradata usando os IPs do Teradata para o Microstrategy (Diego Teradata iria informar como funciona em outro cliente)
12-



transfer
4149
4149
bolinha
transfer


=====================================================================================================================================
3-fazer teste de extração de uma tabela pequena do dime conforme orientação do Ronaldo. De preferência que seja a tabela WD_ANO
=====================================================================================================================================

3-fazer teste de extração de uma tabela pequena do dime conforme orientação do Ronaldo. De preferência que seja a tabela WD_ANO
=====================================================================================================================================
4-ANDRÉ - confirmar com André Magalhães
informaçoes que passei sobre backup
1-fazendo dbcar diariamente retenção 30 dias
2-mensal cargas retenção 12 meses
500 tb cilo de backup
=====================================================================================================================================
5-André perguntar sobre quantidade de linhas excedidas no teradata é por step ???? confirmar para Gustavo depois.
=====================================================================================================================================
6-Corrigir tablespace do sped de indice na 02 tem que fazer um diretorio novo igual ao proc e a tablespace do proc
  tem que colocar no nome do diretorio a tablespace igual a do proc. pegar o modelo lá
  não esqueça de apagar os diretorios anteriores.

7-=====================================================================================================================================
LER A NORMA CD 007  que trata de extração de dados no SERPRO.







-===REALIZADOS==================================================================================================================================

feito - PENDÊNCIAS
mudar proceso de publicação CONTROLM para o banco de homologação para o carga_hom do teradata
=====================================================================================================================================
feito - 2-APAGAR DOIS DIRETORIO NO DISKGROUP.
=====================================================================================================================================


abrir uma rdm para ajustar a pasta do controlmdwtghom colocar o nome da pasta correta no controlm --- informações alessandro
Boa tarde. 

Favor executar job no Control-M conforme informações abaixo. 

Rotina: GREMLIN_JOB.SH
Horário de Submissão: O mais breve
Código de serviço - 33393
Servidor: maxserpro01-1-16 - 161.148.236.49 -  
Ambiente: Homologação 

Prezados, Favor executar o GREMLIN_JOB.SH (/data/dwpub/CONTROLMDWTGHOM), da tabela T3339302, hoje (13/12/2016) o mais breve para publicação do DW na Homologação. 

Qualquer dúvida e/ou erro durante o processamento, favor entrar em contato com a CDSDW. Não é necessário acionamento noturno.

Obrigado.

9--=====================================================================================================================================
ATIVAR O ACCESS COUNT E LAST ACCESS NO TERADATA PARA VISUALIZAR NO BANCO DBHOM_33393_DWTG.

=====================================================================================================================================
10-script para descobrir se as tabelas est'ao sem estatistica  - teradata
OK - JÁ FEITO 


=====================================================================================================================================
11-script melhorado para extrair ddl por tabela, view, procedures, comentario, e estatisticas se for o casos. - pegar a do Ronaldo e melhorar.


=====================================================================================================================================
12-fazer testes com restore para banco com outro nome. teradata urgente

=====================================================================================================================================
13-fazer script para comparar tabelas de todo o banco teradata -- ver com Ronaldo depois.

=====================================================================================================================================
14-criar tablespace correta para o usuário ms104pcondnc no bimd002, vez que a mesma está com a tablespace antiga do nerowcache.

--======================================================================================================================================
SQL SERVER - AUDIO

1-ver trigger - update - dtcarga para atualizar em algumas tabelas - Mário / Mangusse.
2-ver count - tabelas grandes.









