
2019SS/0000734294


1 - Por favor cadastrar os funcionários do Serpro no hue com acessos às base de dados do DATAPEN.

- Se possível informar o link de acesso para que possamos repassar para os mesmos.

[Usuário já cadastro como exemplo: Arildo José Gueno - 039.520.419-47]

    Nomes / CPFs / e-mail:
        SEDAT
            Leandro de Paula Silva / 06176019680 / leandro-de-paula.silva@serpro.gov.br
            Helder Geraldo Ribeiro / 04099088600 / helder.ribeiro@serpro.gov.br
            Rodrigo Henriques Medeiros / 03083703686 / Rodrigo Henriques Medeiros
        DRRCP
            Lindolfo Rodrigues Belico / 04146869692 / lindolfo.belico@serpro.gov.br
            Esli de Almeida Rocha / 60489014615 / esli.rocha@serpro.gov.br
            Joao David Sales Rosa / 05271197689 / joao.rosa@serpro.gov.br
            Gilson Marcelino de Oliveira / 05688240679 / gilson.oliveira@serpro.gov.br

2 - Em seguida cadastrar o usuário abaixo no hue e no Ad para o Ministério da Justiça para acesso ao DATAPEN.

     Paulo César Severo da Silva
     paulo.csilva@mj.gov.br
     CPF: 006.791.159-51
     Tel. 45 99818-8698

 [usuário já cadastro como exemplo: CN=Washington Clark dos Santos,OU=MJ,OU=Usuarios,OU=oudatalake,DC=datalake,DC=serpro 56271417604 clark.santos@mj.gov.br]


3- Em seguida repassar a referida SS para o grupo GSCDDFOLAPDW para cadastro do usuário Paulo César Severo da Silva no QLIK SENSE com acesso ao DATAPEN.





=====================================================================================================================
2019RDM/0000082866

CÓDIGO DE SERVIÇO: 10396

SUPCD: demanda interna

Criar plataforma self-service de processamento distribuído, utilizando o ecossistema Hadoop ou semelhante, de forma que o armazenamento e processamento estejam preferencialmente separados, culminando em uma melhor gestão do ambiente no Serpro.
Essa plataforma deve possuir várias camadas, detalhadas em um documento de arquitetura, contemplando:
- Lago de Dados do Serpro / DataMarket
- Camada de Serviço
- Camada de Repositório
- Camada de Processamento
- Ferramental Analítico


ACRE 
ALAGOAS
AMAPA
MARANHAO
MATO GROSSO
TOCANTINS
SANTA CATARINA

Acompanhar projeto

-----------------------------

Migrar backend dos ambientes de DW do MJ para o DataLake de Brasília, com os seguintes requisitos:

- SISDEPEN
   - Bases:
      - SISDEPEN (Oracle)
      - SIAPEN (4 estados que serão carregados via CSV)
   - Ferramentas:
      - QlikSense (ambiente do GovData, com identificação visual)
      - Hue

- SINESP
   - Bases:
      - DW (Oracle)
   - Ferramentas:
     - QlikSense (ambiente do GovData, com identificação visual)
     - MicroStrategy (condomínio apontando para o DataLake)
     - Hue




------------------------------------------------------------------

2019SS/0000736346


Solicito à expansão de mais 200 GB do disco F:\  do Servidor DFCDSRVV0034, IP: 10.30.92.74

Motivo: Trabalho para transferência de Ingestão de dados para o Datalake Brasília do projeto DATAPEN - Dados Penitenciários dos estados.


Classificação para Virtualização

CONFIGURAR RECURSO (MEMORIA, VCPU OU DISCO) EM SERVIDOR VIRTUAL
CD \ CDSS \ CDSSEAV \ CDSSEAVCRSV
GSCDBRVIRTUAL





------------------------------------------------------------------
2019SS/0000741425

Dados de sua Solicitação de Serviço: 
Número da Solicitação: 2019SS/0000741425
Data e Hora de Criação: 20/08/19 15:43:38
Nome da Pessoa Impactada: Ronaldo Bezerra da Silva
Município Atendimento: BRASILIA
UF Atendimento: DF
Descrição:
Realizar carga no Data Lake BSA, conforme informações abaixo:
 
Projeto: Degustação do MJ - DEPEN
Código de Serviço: 11403 
Origem: Banco de dados SQL Server, Banco: dbp_11403_se_sispen, 10.193.0.124, Porta 1433
Destino: Hive "sap_se"

Observações: 
- Credenciais enviadas por e-mail ao grupo CDDLG. 
- Ingestão do dump: SAP-2019-08-14.7z - 39GB


ATENÇÃO:





-----------------------------------------------------------------------------
SCPC - demanda Mário/Humberto - 21/08/2019 - Aberta a  RDM guarda chuva : 2019RDM/0000083296

1-
De: "Carlos Eduardo Cordeiro Plantz" <carlos.plantz@serpro.gov.br>
Para: "Wilson Oliveira Silva" <wilson.oliveira-silva@serpro.gov.br>
Cc: "Luciano Arnobio da Silva e Silva" <luciano-arnobio.silva@serpro.gov.br>, "Ricardo Katz" <ricardo.katz@serpro.gov.br>, "Jhonathan Sousa" <jhonathan.sousa@serpro.gov.br>, "Emerson Rossi" <emerson.rossi@serpro.gov.br>, "jean.leite serpro" <jean.leite@serpro.gov.br>, "Marcio Binatto" <marcio.binatto@serpro.gov.br>, "Lista Cdvirtual" <lista-cdvirtual@grupos.serpro.gov.br>, "alessandro alves" <alessandro.alves@serpro.gov.br>, "marcos silva-junior" <marcos.silva-junior@serpro.gov.br>, "Fabio Fonseca" <fabio.fonseca@serpro.gov.br>, "leonardo aquino" <leonardo.aquino@serpro.gov.br>, "Fillipe Tadeu Teixeira Almeida" <filipe.almeida@serpro.gov.br>, "Ramon Vinas" <ramon.vinas@serpro.gov.br>, "bruno henriques" <bruno.henriques@serpro.gov.br>, "Avelino Lima" <avelino.lima@serpro.gov.br>, "eduardo-cesar amorim" <eduardo-cesar.amorim@serpro.gov.br>, "alessandro oliveira" <alessandro.oliveira@serpro.gov.br>, "manoel alves" <manoel.alves@serpro.gov.br>, "mauricio tosini-silveira" <mauricio.tosini-silveira@serpro.gov.br>, "Luiz Dias" <luiz.rodrigues-dias@serpro.gov.br>
Enviadas: Quinta-feira, 25 de julho de 2019 11:16:07
Assunto: Problemas ocorridos com a aplicação SCPC no dia 19/07/19 x Sugestões para melhoria do ambiente.

Bom dia.

Segue abaixo o levantamento do problema ocorrido e as possibilidades de melhoria no ambiente.

Entendo que seria necessário negociar com o cliente a criação de uma RDM para implementação dessas melhorias sugeridas pelas equipe técnica de BD e de Aplicação.

Em caso de dúvidas, favor entrar em contato.

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

Incidentes relacionados ao problema do SCPC:
2019RI/0000123651 - Incidente relacionado ao SIADWEB aberto de forma automática no dia 19/07/19 19:51:08.
- Incidentes criados automaticamente e vinculados ao 2019RI/0000123651:
2019RI/0000123655
2019RI/0000123650
2019RI/0000123649
2019RI/0000123648
2019RI/0000124927 - Incidente relacionado ao SCPC aberto pelo cliente no dia 22/07/19 08:21:52.

Detalhamento do Ambiente:
189.9.129.151 - RJCDSRVV1061 (aplicação) máquina virtual de aplicação só tem o SCPC
189.9.131.27 - RJCDSRVV0683 (BD) - máquina virtual do BD do SCPC
Banco de dados na máquina RJCDSRVV0683:
07052 - apropriação
07057 - SCPC
07062 - Painel Executivo
07435 - PAI
07485 - Portal Servico Nuvem
07857 - CPS2015
10040 - Readmine
33315 - SIADS WEB
39796 - NFUNSET NET

Detalhamento do Problema ocorrido no SCPC:
O BD do SCPC cresce, aproximadamente, mais de 1GB por mês e já estava ocupando quase 70% do espaço do disco.
Por conta disso, há uns 20 dias foi realizado uma manutenção no ambiente, colocado um disco exclusivo para o SCPC, o qual foi configurado para a pasta "/opt4", sendo que todos os outros banco estão na pasta "/opt". 

Por motivos desconhecidos da equipe técnica, a máquina "RJCDSRVV0683" travou, simplesmente não respondia mais!
Sendo assim, foi necessário restaurar o backup de todo o ambiente de BD!

Após a reclamação do cliente por meio do incidente 2019RI/0000124927, a equipe observou que somente o BD SCPC não havia voltado a sua normalidade. 
Foi necessário uma intervenção manual para mapear o disco restaurado, o qual é utilizado pela aplicação SCPC na pasta "/opt4".
Em seguida, foi realizado um "restart" do servidor e tudo voltou ao normal.

Sugestões de melhorias para o ambiente:
1 - Criar uma nova máquina virtual para o servidor de aplicação gerando redundância do ambiente;
2 - Criar uma replicação/redundância de banco Master/Slave (assíncrona) em outro servidor;
3 - Atualizar a versão do Banco de Dados;
4 - Colocar o serviço de banco em uma máquina virtual exclusiva a este serviço apenas;
5 - Revisar a política de backup aplicada;
6 - Monitorar as transações da aplicação SCPC. 


2
Caros (as),

    Em função desta ocorrência e o elevado desgaste junto ao cliente e a comunidade usuária do SCPC, e os prejuizos advindos de glosas que o cliente tem a intenção de aplicar, peço uma análise técnica e propostas para aumentarmos as garantias de segurança e disponibilidade da aplicação com possíveis redundâncias.
    Após proposta técnica a área de negócio fará analise de impacto de preço para negociação com o cliente.

Aguardo e agradeço.


3-IR PARA RDM 


4-ATUALIZAR O RESUMO  (DESCRIÇÃO DEMANDA)
5-ANALISAR RDM

6-IC SERVIÇO (CÓDIGO DE SERVIÇO E IC DE APROVACAO) ABA MUDANÇA RDM
ITEM DE CONFIGURACAO
7-ITEM DE CONFIGURACAO - PRECISA DO ITEM ACIMA PARA APROVAR AS MUDANÇAS

SUPDR
SUPAI 
SUPSE

SUNCF
SUNGD

8-SUBMETE PARA PLANEJAMENTO

9-MARCAR NA AGENDA À REUNIÃO (MESMO SE NÃO ESTIVER TODO MUNDO, URC, DES, CD-INFRA)

10-PREPARAR O CRONOGRAMA E COMPARTILHAR COM OS PARTICIPANTES (lembrar de bloquear para que os participantes não possam mandar para outras pessoas, depois enviar mensagem comunicando de  algumas atividades iniciais

11-
====================================================================================================================================
colocar na atividade nº 2019AT/0000059265

CD \ CDAT \ CDATBD \ CDATBDIDP


Equipe de Bancos Livres,

Responsável Equipe Postgres - Bancos Livres 

Analista responsável Ronaldo Pires.

Expectativa: 2 dias

Favor proceder com a seguinte atividade para importação dos dump do banco do sistema prisional do estado do Amapá.

1) Subir dump do banco criado:
    1.1) AP:  Banco MySQL


Informações complementares por Ronaldo Bezerra:

Disponibilizado dump MySQL para importação e disponibilização de credenciais com privilégio de leitura para a faixa IP 10.188.11.* .

Local:

Entreposto Linux BSA - 10.30.92.114
/opt/transferencia/datalake/AP-siapen2019-08-17-060000.sql



====================================================================================================================================

Equipe ORACLE

Código de Serviço: 11403

Sobre as bases dos sistemas prisionais estaduais. Favor executar as seguintes atividades:

- Excluir no Oracle Exadata o Banco de Dados do Estado de MT - MATO GROSSO na homologação 
- Excluir no Oracle Exadata o Banco de Dados do Estado de PE - PERNAMBUCO na homologação 
- Manter o arquivo de dump da base do Estado de MT - MATO GROSSO até segunda ordem.
- Manter o arquivo de dump da base do Estado de PE - PERNAMBUCO até segunda ordem.

Se precisarem de alguma informação adicional, por favor nos contactar.


====================================================================================================================================

2019AT/0000064403

Realizar carga no Data Lake BSA, conforme informações abaixo:
 
Projeto: Degustação do MJ - DEPEN
Código de Serviço: 11403 
Origem: Banco de dados do Estado do Amapá em MariaDB 

Observações: 
- Credenciais enviadas por e-mail à Julio Cezar - DataLake.


====================================================================================================================================
1. PRIMEIRA REUNIÃO EM 30/09/2019

O backup do Git Corporativo, que implantamos alguns meses atrás, esta levando muitas horas para ser executado.

No momento, o espaço ocupado nas partições NFS já é de 205 GBytes e continua aumentando. Quanto mais espaço ocupado, mais tempo necessário para concluir o backup diário. Em breve, a execução do backup invadirá o horário de expediente do Serpro, podendo causar problemas.

Precisamos assim, implantar uma melhoria no procedimento de backup, para que este seja executado em um tempo menor.

Atualmente estamos fazendo todo o backup usando o gitlab rake.

Segundo o site do fornecedor Gitlab, é recomendado:
Fazer o backup usando o gitlab rake, exceto das partições NFS;
Fazer o backup das partições NFS através de Snapshot;

Nosso objetivo é implantar um procedimento automatizado que orquestre o backup do gitlab rake e o Snapshot do NFS.

Uma das metas para se atingir o objetivo é analisar qual tecnologia de Snapshot vamos usar. Dentre as possíveis alternativas temos a tecnologia LVM para fazer snapshot apenas do disco, e também a tecnologia de Snapshot de máquina virtual que nos foi apresentada recentemente pelo Ricardo Braga da SUPCD.


ANDAMENTO DAS REUNIÕES.

1-chamada e boas vindas
2-contexto UN ou CDIGM (Mário)  ---  Esta demanda é para tratarmos sobre melhoria no processo de backup no GIT CORPORATIVO. Eu compartilhei um cronograma inicial no Serprodrive com todos, neste cronograma tem uma aba que tem o histórico da solicitação.
3-Abrir para discussões
4-Anotar desenvolvimento
5-Anotar próximas ações
6-informar próximo ponto de controle se necessário
7-Agradecer e encerrar


--=====================================================================================================================================================
1. PRIMEIRA REUNIÃO EM 02/09/2019
						
ANDAMENTO DAS REUNIÕES.

1-chamada e boas vindas

2-contexto UN ou CDIGM (Mário)  

--- Esta demanda é para tratarmos sobre à inserção de dados de exercícios dos anos de 2008 à 2012 do Teradata para o SQl Server Colunar, Eu compartilhei um cronograma inicial no Serprodrive com todos, neste cronograma tem uma aba histórico com alguns detalhes sobre à demanda inclusive uma imagem com a arquitetura simples. O Victor pode contextualizar mais detalhes sobre à demanda para depois abrirmos às discussões.

3-Abrir para discussões

4-Anotar desenvolvimento

5-Anotar próximas ações

6-informar próximo ponto de controle se necessário

7-Agradecer e encerrar

=============================================================================================
já colocado no cdigm - Tratar Demanda
VERIFICAR COM LYNARA E OS CORRETOS COLOCAR NO QUADRO CDIGM-Tratar Demanda no cartão Acompanhar Atividades.

INFOCONV

1-CONFERIR OS HORÁRIOS DOS BLACKOUTS QUE SOLICITAMOS ATRAVÉS DAS ATIVIDADES NOS EMAILS OU NOS EMAILS DE QUEM ABRIU ATIVIDADE. 
2-VER COM LYNARA SE TEMOS QUE COLOCAR O HORÁRIO REAL DE FINALIZADO À ATIVIDADE;
3-PONTO DE ATENÇÃO: EM QUE MOMENTO DEVEMOS NOS PREOCUPAR REALMENTE COM A HORA FINAL DA EXECUÇÃO DO PLANEJAMENTO. É NO GONOGO?
4-PUXAR SEMPRE DOS EXECUTORES O INICIO E O ENCERRAMENTO DAS ATIVIDADES POR LINHA EXECUTADA.
5-SEMPRE COLOCAR NO PLANEJAMENTO O HORAŔIO DA JANELA OFICIAL PARA O BLACKOUT SIGPB
6-NO ENCERRAMENTO SEMPRE LEMBRAR DE AGUARDAR 30 MINUTOS COM TODA EQUIPE PARA VER SE NÃO VAI GERAR INCIDENTES DEPOIS DA RETIRADA DO BLACKOUT.
7-Observação para que sempre tenha uma gordura na execução das atividades
8-AS ATIVIDADES SÃO TODAS PARA A HORA EXATA DO ENCERRAMENTO DA JANELA, OU PODE TER UMA GORDURA, POIS SE NÃO FECHAREM TERÃO ENCERRADA COM ATRASO.

========================================================

MIELLI
CELIO
ERICK AUSENTE - SÓ VEM À TARDE
GASPAR 
GILVANDRO -
ALFREDO
ROBINSON
DEMORA - 03:15 - NO DUMP - DO SQL SERVER


500.000.00 CONSULTAS COM SUCESSO
3.500 CONSULTAS BNDES

SE ACONTECER ALGUMA COISA ACONTECER, NADA HAVER COM MIGRAÇÃO
TEM HAVER COM CONTRATO.

1- VERIFICAR POR QUE DEMOROU TANTO O BANCO SQL SERVER
2- COLOCAR OS CARAS DE MONITORAÇÃO, FAZ OUTRA, CORRE ATRÁS
3- **VER O CONSUMO DA MÁQUINA NO BANCO - VERIFICAR COM ERICK
4- ALINHAMENTO COM A CD 













