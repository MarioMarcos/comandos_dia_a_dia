-- comandos vi e shel linux e aix
 esc + k para cima
 esc + j para baixo
 esc + h esquerda
 esc + l direita
 esc + o adiciona linha abaixo
 esc + u retorna o ultimo comando 
 esc + Shift + $ >>> vai para o ultima linha
 esc + Shift + ^ >>> vai para o inicio da linha
 esc + Shift + a >>> vai para o final da linha
 esc + /  >>> busca palavras
-----------------------------------------------------------------------------
 esc + Shift + g >>> vai para o final do arquivo
:1 + enter === vai para o inicio do arquivo 
esc + Shift + a >>> vai para o final da linha
a ==>> abre comando de insert 
-----------------------------------------------------------------------------
--- vai te mostrar o arquivo no rodapé e se é somente leitura ou não.
ctrl + g 
-----------------------------------------------------------------------------
--para copiar e colcar várias linhas no vi no linux e aix
esc
y + quantidade de linha que ele vai copiar na área de transferência do vi
depois digite y >>>> ai ele pega.   >>>>>> depois digite p. Pronto já vai colar o seu texto
-----------------------------------------------------------------------------
--para mostrar linhas no vi
:se nu  >>>>>> para mostrar linhas no vi

-----------------------------------------------------------------------------
--substituir palavras use o comando abaixo:

:%s/mário/josé/gic === substitui tudo no arquivo
:%s/mário/josé   === substitui a primeira localizada.

:%s/(2016,2017)/(2017)/gic
%s/jv_33393_dwtg_pro_externo.sql/jv_33393_dwtg_pro_externo/gic

(2016,2017)

----JEDIT******************************************************************************************************************************************************************
--USEI O JEDIT PARA UNIFICAR UM TEXTO COM REST DE LINE IGNORED .. JUNTOU TUDO E UNIIFCOU E  CONSEGUIR EXECUTAR O SCRIPT== A OPÇÃO EDIT + TEXT + JOIN LINES " CTRL + J
18:46:08 DWPUB:bipro001 > CREATE OR REPLACE FORCE VIEW SIGPGFN.SIG_VW_CORESP (ID_CORESP, ID_REGIAO_POLITICA, DS_CPF_CNPJ_DEVEDOR_DETALHADO, NR_CPF_CNPJ_DEVEDOR_DETALHADO, NM_DEVEDOR_DETALHADO, ID_PAIS, ID_UF, ID_MUNICIPIO, ID_NAT_JURIDICA_DEVEDOR, ID_ATIVIDADE_DEVEDOR, ID_TIPO_PESSOA, ID_DEVEDOR_AGREGADO, ID_SITUACAO_CAD_SUCESSOR, ID_DIA_MOTIVO_SITUACAO, ID_MOTIVO_SITUACAO, ANO_OBITO, ID_DIA_NASCIMENTO, ID_IND_OBITO, ID_SITUACAO_CAD_CPFCNPJ, ID_DEVEDOR_SUCESSOR, NM_DEVEDOR_SUCESSOR, NR_DEVEDOR_SUCESSOR, DS_CNPJ_DEVEDOR_SUCESSOR, ID_IND_MATRIZ_DEVEDOR, ID_IND_MATRIZ_SUCESSOR) AS (SELECT DISTINCT SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_DEVEDOR_DETALHADO ID_CORESP, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_REGIAO_POLITICA, SIGPGFN.SIG_DEVEDOR_DETALHADO.DS_CPF_CNPJ_DEVEDOR_DETALHADO, SIGPGFN.SIG_DEVEDOR_DETALHADO.NR_CPF_CNPJ_DEVEDOR_DETALHADO, SIGPGFN.SIG_DEVEDOR_DETALHADO.NM_DEVEDOR_DETALHADO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_PAIS, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_UF, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_MUNICIPIO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_NAT_JURIDICA_DEVEDOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_ATIVIDADE_DEVEDOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_TIPO_PESSOA, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_DEVEDOR_AGREGADO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_SITUACAO_CAD_SUCESSOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_DIA_MOTIVO_SITUACAO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_MOTIVO_SITUACAO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ANO_OBITO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_DIA_NASCIMENTO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_IND_OBITO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_SITUACAO_CAD_CPFCNPJ, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_DEVEDOR_SUCESSOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.NM_DEVEDOR_SUCESSOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.NR_DEVEDOR_SUCESSOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.DS_CNPJ_DEVEDOR_SUCESSOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_IND_MATRIZ_DEVEDOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_IND_MATRIZ_SUCESSOR FROM SIGPGFN.DEVEDORES_INSCRICAO, SIGPGFN.SIG_DEVEDOR_DETALHADO WHERE SIGPGFN.DEVEDORES_INSCRICAO.ID_DEVEDOR_DETALHADO = SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_DEVEDOR_DETALHADO AND DEVEDORES_INSCRICAO.CO_TIPO_DEVEDOR <> 1);

View created.


----JEDIT******************************************************************************************************************************************************************
no jota edit utilize , troque por \n para quebrar a linha para ver quantidade de registros se precisar - é só uma contagem.


==========================================================================================
Comando	Ação no texto selecionado
d	Apaga
y	Copia
p	Cola
c	Troca por outro texto
r	Troca cada letra por um caractere
J	Junta todas as linhas em uma só
U	Converte para maiúsculas
u	Converte para minúsculas
~	Inverte maiúsculas e minúsculas
gq	Reformata as linhas para a largura desejada
!	Manda as linhas para um comando externo (!sort)
:	Aplica um comando 'ex' nas linhas (:s/isso/aquilo/)


--DICAS PARA COLOCAR NO ARQUIVO .vimrc na sua pasta home. senão existir crie um ok.
"Arquivo de Configurações do Vim - C/C++
syntax on   "syntax highlight
set showmatch "mostra caracteres ( { [ quando fechados
set textwidth=79 "largura do texto
set nowrap  "sem wrap (quebra de linha)
set mouse=a "habilita todas as acoes do mouse
set nu "numeracao de linhas
set ts=4 "Seta onde o tab para
set sw=4 "largura do tab
set et "espacos em vez de tab
"





