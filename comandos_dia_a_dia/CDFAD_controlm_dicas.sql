SOBRE ERRO CONTROLM 

Equipe de banco,

as equipes do Control-m de BSA e SPO não possuem mais plantão presencial no final de semana em alguns horários, em função de redução de horas extras.
Em caso de necessidade, o centro de comandos deve ser acionado, para ligar para o plantonista.


IP CONTROLM - SÃO PAULO 10.30.93.140

IP SERVIDOR DO CONTROLM BRASÍLIA
telnet 10.200.145.88 9005

--*********************************************************************************************************************************************
1-ERRO - SE FOR "OBJETO INVÁLIDO" - SEMPRE FORÇAR OK, pois se não há mais colunas para aquele índice não há razão para existir esse mesmo índice
2-OS DUMMYNS e o STATS pode "forçar ok" se estiverem parados
3-OS MONITORING pode dar "BYPASS" POR RONALDO
4-SE VOCÊ FOR DEIXAR PARA FAZER ALGUMA ALTERAÇÃO NO OUTRO DIA NO CONTROLM SEMPRE "COLOQUE EM HOLD", POIS SE VOCÊ PRECISAR "DAR RERUN" OU OUTRO COMANDO EM OUTRO DIA O MESMO IRÁ ACEITAR, MAS SE VOCÊ DEIXAR SEM COLOCAR EM HOLD ELE NÃO VAI MAIS ACEITAR.
5-"INDEXV2.SH, CRIAR_JOBS, DROPINDEX" - SEMPRE ANALISAR MAIS PROFUNDAMENTE PARA LOCALIZAR OS ERROS.
6-PARA SOLTAR O ENTRADA.SH É SÓ DAR UM BYPASS - É ISSO QUE O ALISSON FALA QUE É SOLTAR O ENTRADA. NORMALMENTE ISSO ACONTECE QUANDO O AUTOMÁTICO NÃO INICIOU SOZINHO. DEPENDE DO TEMA.
7-SE UM INSERT NÃO RODOU, E VOCÊ QUER RODAR ELE DE NOVO, LEMBRE SEMPRE QUE TEM QUE OLHAR SE O MESMO TEM TRUNCATE, POIS ELE IRÁ APAGAR A TABELA DESTINO NOVAMENTE E INSERIR NOVAMENTE.
8-SOMENTE O SPED É INCREMENTAL. por isso temos que analisar na hora de dá um "rerun" novamente.
9-QUANDO FOR PUBLICAR TABELAS NA MÃO LEMBRE-SE DE VER SE A TABELA TEM INDICES COM O SCRIPT @INDICES_TABELA. SE TIVER TEM QUE REMOVER DDL E DEPOIS DE INSERIDO OS DADOS TEM QUE  CRIAR NOVAMENTE.
10-desenvolvimento só pode acessar o desenvolvimento dcpf informações Alisson
11-Não executamos scripts nos bancos de cargas - se precisar tem que mandar para script para controlm são paulo ou brasília.
12-TEMAS QUE NÃO PODEM APAGAR AS CONSTRAINTS == ADNF, SPED, ARRC, XXXX,   -->> se por acaso precisar entrar em contato com Alisson ou Ronaldo para ajudar resolver por enquanto até você aprender
13-NO Controlm se vocẽ quiser ver a estatística de um job você só conseguirá "no open viewpoint", pois no arquive você não conseguirá ver as estatíticas - 
14-Os insert se derem problema durante a publicação e você republicar com rerun vai reiniciar de novo truncando a tabela e inserindo os dados novamente
   OBS: O SPED É O ÚNICO QUE NÃO É ASSIM. por isso cuidado na hora de dar o rerun no SPED.
15-Depois de dar o rerun nas tabelas se demorar muito - observe que o horário vira ao 12:00 no de são paulo, talvez sua tela estará congelada e tem um botão no controlm no centro da tela
   dê refresh para ver se atualizar as tabelas para ver se está tudo ok. Por Alisson.
16-Se houver incidente na nossa caixa, ou se o centro de comando nos ligar no plantão para falar sobre área TRA no file system, na verdade quem tem que ser acionado é a equipe de desenvolvimento
   do tema em questão ao invés da nossa equipe.
17-ver sempre o log quando for monitorar um job, pois foi no log que o ronaldo viu que o libera_agendamento do tg tinha sido    
   bypass (ignorado) para iniciar o processo do libera agendmento. E eu nao tinha visto.

18-nao deve existir constraint em ambiente produtivo (homologacao, producao). Verificar scripts sempre antes de executar. Se houver no script ou retira na mao ou devolve o ticket para remocao do solicitante.
19-Existe no controlm desktop como ver os backups agendados no controlm. E so procurar por tema.
20-quando monitoracao ligar sempre verifique os servidores que eles estao falando, pois podemos nos engana achando que nao existe, mas na verdade pode ser uma poc ou outra situacao que outro colega esteja tratando.
21-DWTG - o job altera status - tem na bat dele somente a alteração de dada da publicação e também as subscrições prioritárias do Gabriel. ela é iniciada logo a pós o fim da 
   da publicação dos dados. 
22-DWTG - o job libera agendamento é o restante das subscrições do microstrategy e só roda depois das publicações altera status - desde que finalize as publicações antes das 05:20,
   no qual irá aguardar mais 40 minutos para inicias a execução do restante dos relatórios. se por acaso as publicações finalizarem após 05:20 esse job não executará e ficará cinza.
   
23-As condições de um job de entrada e saída servem para que os mesmos iniciem ou finalizem determinada tarefa, veja isso com o 4 botão do menu superior ao lado de filter.
   setas pretas de entrada e saída. Um job pode ficar com uma seta preta de saída, porém não executa nada.   
24-Um job pode receber várias condições e somente finalizar quando todas estiverem satisfeitas. Contudo o Controlm pode configurar para que somente uma das condições seja necessária
   para iniciar o outro job.
25-Aduaneiro - FATOCE - se tiver problema ver com EVERTon plantao de desenvolvimento para discutir em conjunto. Isso se voce nao souber resolver.   
26-"SET" para você ver qual é o owner de um projeto - clique no job, depois em set para ver qual é o owner dos jobs no controlm.
27-para ver se uma árvore está CANCELADA no controlm mesmo aparecendo na tela clique na QUARTA JANELINHA no centro da tela superior ai vai aparecer os jobs todos com os x vermelho.
   se você precisar peça na produção para clicar no undelete e trazer a árvore de volta.
28-NUNCA TRUNCAR O SPED, ARRC, OU ADUANEIRO, antes de executar procurar equipe para trocar idéia sobre a demanda.

--***********************************************************************************************************************************************
--MODELO DE ACIONAMENTO PARA SÃO PAULO PARA SER ATENDIDO NA HORÁR DO ALMOÇO A PEDIDO DE PRIORIZAÇÃO****************************

Bom dia. 

CSS, favor encaminhar Requisição de Serviço para GMCDSPCTM.

Favor executar job no Control-M conforme informações abaixo. 

Rotina: CRIA_JOB_COBR
Horário de Submissão: 12:00
Código de Serviço: 21764 
Servidor: spcdsrvp0104
Banco: PDW031
Ambiente: Produção 

Prezados, Favor executar o CRIA_JOB_COBR (/dwad_01/home/dwpub/CONTROLM_COBR), da tabela T2176499, hoje (08/07/2016) às 12h para publicação do DW na Produção.

Observação: O job ENTRADA pode ficar preso por conta do horário, favor liberar execução assim que o CRIA_JOB terminar OK.

Qualquer dúvida e/ou erro durante o processamento, favor entrar em contato com o plantão da CDSDW (9265-9448) ou diretamente com a CDSDW durante o expediente. 

Obrigado.

--******************************************************************************************************************************************************

--PARA EXECUTAR PUBLICAÇÃO RAPIDAMENTE, UTILIZE O SCRIPT QUE ESTÁ NA PDW031 para publicação DE TABELAS PEQUENAS OU SE FOR GRANDE FAZER FORA DE HORÁRIO
--não esqueça de preparar o entrada.txt e gerar os outros txts para depois executar o script.
   ESSE SCRIPT É SÓ CHAMAR DE DENTRO DA PASTA #~/dwad_01/home/dwpub/scripts/./gerar_pub_manual.sh
--observar para executar e qual máquina

--******************************************************************************************************************************************************
Informações sobre índices Ronaldo

Eraldo, vocês podem e devem enviar os scripts de índices quando necessário. A CDGDB (antiga CDSDW) não faz gestão de índices. As sugestões de criação de índices devem vir das equipes de desenvolvimento.  Em alguns casos a nossa equipe pode sugerir ou auxiliar na criação de algum índice, mas não é uma regra.

--******************************************************************************************************************************************************
PRODUÇÃO POR THIAGO SODRÉ
Senhores,


Fizemos algumas mudanças nos jobs de monitoramento do DWTG para que sejam gerados incidentes de alta severidade nos casos de atrasos na execução de jobs anteriores e pertencentes ao Bloco 9.

Vale esclarecer que o processamento do DWTG é dividido em vários blocos, porém nos foi repassado o tempo limite apenas para o Bloco 9, que é de 03:30.

Sendo assim, com a implantação de mais essa alerta,  espera-se ter um maior controle sobre DWTG.


Monitoração,


Como as rotinas do DWTG estão agendadas para darem carga todos os dias, será preciso que vocês desconsiderem os incidentes relacionados a esse serviço quando não houver REDE SIAFI, ou seja, quando não houver carga SIAFI.

A princípio, só haverá rede em todos os sábados de dezembro (3, 10, 17, 24 e 31/12).

Por fim, para ciência de todos, seguem a escala da produção para os dias supracitados:

 DATA
	

RESPONSÁVEIS

03/12/2016
	

 João
	

Waldimar

10/12/2016
	
Waldimar
Francilene

17/12/2016


João
Joseph

24/12/2016
	
Hiram
Jailton

31/12/2016
Leiliane
Rafael

-- 
Atenciosamente,
Thiago Barbosa Sodré
Chefe do Setor de Apoio ao Controle da Produção de Brasília
Superintendência de Produtos e Serviços - Centro de Dados
Serviço Federal de Processamento de Dados
SERPRO/SUPCD/CDBSA/CDCPB/CDBS1
thiago.sodre@serpro.gov.br
61 2021-7571/92246423







