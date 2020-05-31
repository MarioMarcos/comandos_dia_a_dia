----------PROBLEMA NA AREA DE TRABALHO DO KDE com Ubuntu quando coloquei transparencia------------------------------------
--17/07/2020
--100% em umas configuraçoes de area de trabalho. (transparencia)
   Resolvido com um atalho ALT + SHIFT + F12 -- foi um milagre ai ele retorna a tela normal e voce vai la e retira a configuracao.



-----TOKEN - WATCHDATA - ERRO FECHAR BROWSE-------------27/03/2020-----------------------
Mas antes de fazer o que esta abaixo - vá nas pasta SerproCDIGM/MANUAL_INSTALACAO_CERTIFICADOS_DIGITAIS_SERPRO que está no meu 
serprodrive e vá no manual - orientações-token-Watchdata.pdf  e vá passo a passo para verificar
depois na terceira opção faça os passos corretos. 
ISSO É PARA ACESSAR O SCCD E OUTROS, INCLUSIVE O EMAIL COM CERTIFICADO e nos navegadores
corrigir principalmente o erro "Fechar Brows e retirar o token e tente novamente" um saco
mas deu certo com o apoio do suporte remoto na pessoa de "sueli real" <sueli.real@serpro.gov.br>; 
----------------------------------------------------------------------------------------
======================================================================================================================
21/05/2020 - Esta solução é que deve ser colocado primeiro e vai resolver todas questões do sites serpro
Dicas para resolver DNS com problemas acessos no navegador para o Serpro - OVPN - fazer isso sempre que instalar um ubuntu novo.
Sem isso não vai funcionar os sites do serpro.
Por Ronaldo Bezerra - ajudou e resolveu tudo

1- instalei o sudo apt install resolvconf ----- para alterar e fixar o resolv.conf - colocar no linux.sql para instalar depois a configuração do resolv.conf DNS
e executei esse aqui também 

2- entrar no arquivo: cd /etc/resolvconf/resolv.conf.d/     ===>>>>   vi head   ====>>>> alterar e colocar os DNSs abaixo
nameserver 10.31.18.14
nameserver 10.31.8.100
nameserver 8.8.8.8
nameserver 8.8.4.4



3- reiniciei o serviço: systemctl restart resolvconf - para reiniciar o serviço
e depois testei e funcionou no navegador depois da OVPN conectada todos os sites do serpro entraram sem problemas

obs: se isso acima não funcionar, a solução será colocar ip e url no /etc/hosts e depois conectar na ovpn e testar cada site. É bem mais trabalhoso


===============================================================================
Essa aqui é só se a de cima não funcionar corretamente ok.
24/03/2020 - configuracao para acesso ao SCCD, GIT E PLAYOPS
==Solucao para o problema no SCCD que mesmo com OVPN  funcionando não inicializava o sccd, git, playops  nos browsers chrome e no firefox
==end. https://www.sccdtk.serpro ou https://www.sccd.serpro 
=no linux como root coloque isso aqui no /etc/hosts e reinicie o computador
10.30.120.19     www.sccd.serpro
10.31.38.23      ns4.serpro
10.30.120.22     www.sccdtk.serpro

10.31.22.120     www.git.serpro
10.31.18.14      ns3.serpro

10.30.0.40       www.entreposto.bsa.serpro
10.200.244.104   www.playops.serpro

10.30.91.66      www.siscopweb.serpro

verificar que talvez colocando o entreposto.bsa.serpro resolva tudo de ai de cima ===== testar ainda


OBS: no windows estava funcionando normalmente com OVPN funcionando
para descobrir um ip de uma aplicacao segura tem que entrar em outra máquina que ele estaja rodando
e usar o modo desenvolvedor do navegador e em network >>> ctrl + R e depois clique em cima do nome do link principal de depois 
em hedears vai achar o ip da aplicacao.
-----------------------------------------------------------------------------------------

Driver de vídeo===23/03/2020===Monitor============================================================

Meu computador travou depois que ajustei uns parâmetros de driver NVIDIA

O que resolveu foi removendo o nvidia e voltando o drive padrão.. 
Com esses comandos abaixo executados como root - acessados pelo GRUB e reiniciei e funcionou novamente


--Ver se existe o drives NVIDIA
dpkg -l | grep -i nvidia

In summary

--Remove todos os drives nvidia
sudo apt-get remove --purge '^nvidia-.*'

--instala ubuntu-desktop
sudo apt-get install ubuntu-desktop

--apaga o xorg drive de inicalização - aqui vai ser recriado outro automático quando reiniciar
sudo rm /etc/X11/xorg.conf

--coloca o drive padrão e depois reinicia.
echo 'nouveau' | sudo tee -a /etc/modules

=================================================================================================
! /bin/ksh
o link do watchdata para instalação do token ----- está na pasta documentos/outros.

--==================================================================================================================================
-- aqui é para ver se tem alguma linha repetida no linux.
-- grave o arquivo em linux no arquivo de teste
sort teste -->> ordena o dado no arquivo.
cat teste | wc -l -->> conta o arquivo
cat teste | uniq | wc -l -->> conta o arquivo depois do unique 
--====================================================================================================================================

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--fazer inclusão desse comando para avisar na tela sobre sucesso ou insucesso na cópia de pastas -- motivo: quero mensagem na copia de arquivos 
--de backup da pasta Jatai completa e da pasta Entreposto windows compartilhada.
--ainda não está pronto mas vou mexer depois - 16/08/2016
zenity --info --title="jose" --text="mario marcos"



-- link para várias dicas de shell com echo
https://www.vivaolinux.com.br/dica/Truques-para-tratamento-de-variaveis-em-shell-script
--=====================
30 + SHELL E LINUX -- SO E SHELL
cal 2016 - mostra calendário no linux --== show RONALDO

Ctrl + Alt = Abrir Terminal
Ctrl + Alt + c = Abrit área de Transferência.

-- dicas boas de shell para movimentar no aix
cat COCIF_0012_2015_01_Ficha_Inicial.sql >> cria_tabela_Inicial.sh == adiciona os txt no final do outro arquivo e adiciona.
ls ../../ vai para o diretorio principal
lista diretórios somente
ls -d */
lista diretorios e subdiretorios e seu arquivos
ls -R -ltr


cd - >>> volta o diretorio anterior >> show
 ~~/scripts/monta_script_extracao_tab_pdw03-com_zip-sem_cab-asp_dup.sh ADMIRPJ IBGE_20151109_INICIAL; >> vai para o diretorio rais e depois para pasta scripts e executa o mesmo
- unzip -p + nome do zip >> ver o conteúdo do zip
- unzip -p + nome do zip | head >> ver as dez primeiras linha do conteúdo do zip
- nohup ./DIME_WD_DT_DIAS.sh > /dev/null 2>&1 & >> saída para ninguem só executa e joga em segundo plano 
- grep separador * >>> procura o conteudo separador dentro do diretorio em todos os arquivos
- gzip -dc ADMIRPJ_IBGE_20151109_INICIAL.gz | wc -l >>>>> ver atual
 quantidade dos registros sendo colocados na hora dentro do arquivo

no GZIP olhe sempre quem é o dono do arquivo para poder funcionar

- du -sm ziblakEa ADMIRPJ_IBGE_20151109_INICIAL.gz >>>>>> comparando em percentual dos dois arquivos aumentando de um para outro
- CTRL + l no no explorer do ubuntu >>>>>>>> abrir para colocar ftp exemplo sftp://10.20.50.135 e outros
- du -m *.zip >>>>> para ver os dados dos arquivos zips em megabytes
--====================================================================
- mkfifo ADMIRPJ_IBGE_20151109_INICIAL.pipe >>>>>>>>>>>  COMPACTANDO ARQUIVO E CONVERTENDO PARA GZ PARA ZIP.
    zip -FI ADMIRPJ_IBGE_20151109_INICIAL.zip ADMIRPJ_IBGE_20151109_INICIAL.pipe &
    nohup gzip -dc ADMIRPJ_IBGE_20151109_INICIAL.gz > ADMIRPJ_IBGE_20151109_INICIAL.pipe &    
--====================================================================
- ls > execultor.sql >>>>>>>>>>> lista o arquivo dentro do arquivo.sql e o uso é para pegar tudo do ls e jogar dentro do arquivo. legal para comando sql.
 java -jar finanx.jar
-  scp dwpub@161.148.236.20:/home/dwpublic/dwpub/logmarcos.log . 
-  scp dwpub@161.148.236.20:/home/dwpublic/dwpub/work/20150920_siscomex/scripts_produto_hist_20151117.log . >>>>>>>>>>>>  copiar arquivos
-  scp * 76455424115@10.193.34.96:/opt/approtinas/pro_21761_dwcorp/V01/work/mario/   

--com túnel da 117 aberto execute isso aqui.
--para um arquivo
scp -P 10117 dwpub@localhost:temp.txt .

--para pegar arquivo dentro de uma pasta
scp -P 10117 dwpub@localhost:/car_54147_siapedw_tra/carga/pessoal3/vinc*.* .


>>>>>>>>>>>> copiar todos arquivos para a pasta mario em outro servidor

- rm -i *.sql   >>>>> apagar com confirmação yes ou no
-uname -m >>>>>>> descobrir o tipo de processador e os bits
--======verifica arquivo com file e converte se for o caso com o flip -bu
ex: file * >>>>> o file verifica e o flip converte para o formado ascii
ex: flip -bu nome do arquivo
scp 20160106_DWT02_DIME_WD_PESSOAS_FISICAS.sql dwpub@10.50.240.36:/dwad/home/dwpub/work/20160107_dime

dwpub - PDW031>~/scripts/gerar_txts_tabs_ENTRADA_nopart.sh >>>>>>>vai para o diretorio rais e depois para pasta scripts e executa o mesmo

--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
--localizar arquivo no disco 
find . -iname *.mar    

--localizar arquivo no disco diferente de *.mar
find . -not -iname *.mar    


-- estando na raiz ele procura em toda máquina
find . -iname atu_exportacao1_agreg101_dwcorp.sql

-- estando na raiz ele procura em toda máquina arquivos maiores que 2mb -->> porém você pode colocar para arquivos maiores
find . -size +2048 -print


--Para saber quantas fotos (.jpg) existem no diretório de imagens /home/lsantos/Imagens: 

 find /home/lsantos/Imagens/ -iname "*.jpg" | wc -l
8 

-- Use o comando find para encontrar arquivos vazios
Para isto, use o parâmetro -empty (vazio). No exemplo, abaixo, vou mostrar como fazer a busca, no seu diretório home:

find ~ -empty
find . -empty




--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dwpub - PDW031>wc -l ENTRADA.TXT >>>>>>>>>>>>>>>>>>>>>>>  conta linhas dentro do arquivo
      resultado >>>>>>>>>>>>>93 ENTRADA.TXT
dwpub - PDW031>ls W* | wc -l
      93   >>>>>>>..... conta qtd de arquivos.

-- olhar os usuários do aix
id dwpub
cat /etc/passwd

-- listar diretórios e gravar em arquivo
df -g *tra > areadetra.txt

--VERIFICAR IP ALIAS EM MÁQUINAS LINUX E AIX
 cat /etc/hosts

--VERIFICAR VERSÃO DO LINUX E DO UBUNTU INCLUSIVE QUANTOS BITS 
 cat /etc/issue.net; uname -ar

--CRIAR LINK DE UMA PASTA PARA UM PATH QUE VOCÊ DESEJA -- AI O MESMO APARECERÁ COMO PASTA NO LUGAR QUE VOCÊ QUISER. 
 ln -s /var/opt/teradata/controlm/ctm/sysout /data/dwpub/sysout_controlm

--*********************************************************************************************************************************************************
-- COMO DESCOBRIR O JAVAC Compilador que está atualizado no momento no meu ubuntu, ou seja se eu instalar outro java ele vai assumir ou parâmetro 
-- atualizado e ai alguns sistemas tenho que trocar o link e apontar para o novo conforme abaixo == POR RONALDO

--=="comando interessante para mudar o caminho do java" é esse aqui. Atenção não precisa para a situação abaixo. mas é bom saber 
sudo update-alternatives --config java


76455424115@serpro-1553083:/usr/bin$ which javac
/usr/bin/javac
76455424115@serpro-1553083:/usr/bin$ ls -l /usr/bin/javac
lrwxrwxrwx 1 root root 23 Fev 23  2015 /usr/bin/javac -> /etc/alternatives/javac
76455424115@serpro-1553083:/usr/bin$ ls -l /etc/alternatives/javac
lrwxrwxrwx 1 root root 36 Ago 20  2015 /etc/alternatives/javac -> /usr/lib/jvm/java-8-oracle/bin/javac
76455424115@serpro-1553083:/usr/bin$ ls -l /usr/lib/jvm/java-8-oracle/bin/javac
-rwxr-xr-x 1 root root 5881 Ago 20  2015 /usr/lib/jvm/java-8-oracle/bin/javac

-- COLOCAR ATÉ O NOME ORACLE O CAMINHO:  /usr/lib/jvm/java-8-oracle

--AGORA É MUDAR NO SQL DEVELOPER esse arquivo abaixo
/home/76455424115/.sqldeveloper/4.1.0/product.conf

SetJavaHome /usr/lib/jvm/java-8-oracle


--*****************************************************************************************************************
-- COMANDO CRONTAB PARA QUE REALIZA UM COMANDO NO CRONTAB
--para editar o crontab use o comando "crontab -e" de qualquer lugar do sistema vai alterar o do usuário, ou seja, o seu.
-- o arquivo fica no /etc que é o do sistema e somente leitura

-- APLICATIVO CRON TEM QUE ESTAR INSTALADO NO LINUX - NORMALMENTE ELE JÁ ESTARÁ.
-- ESSE COMANDO ABAIXO É PARA SALVAR A PASTA DO JATAI EM UMA PASTA DE BACKUP TODO DIA às 17:30 - peguei com Ronaldo o comando

30 17 * * * tar -czvf /home/00238308162/bkp/Jatai.bkp.tar.gz /home/00238308162/Jatai
-- 
esse aqui abaixo é do mário
30 17 * * * tar -czvf /home/76455424115/bkp/Serprodrive.bkp.tar.gz /home/76455424115/Serprodrive

-- isso aqui é como o crontab funciona
(09:42:05) Ronaldo Bezerra da Silva: m h  dom mon dow   command
m - minutos
h - hora
dom - dia do mês
mon - mẽs 
dow - dia da semana
--modelos e exemplos.
Todo dia de hora em hora (hora cheia)
  00 * * * * /bin/script
De cinco em cinco minutos todos os dias (note a divisão por 5 do intervalo 00-59)
  00-59/5 * * * * /bin/script
Nas seguintes horas: 10, 12, 16, 18, 22 aos 15 minutos da hora
  15 10,12,16,18,22 * * * /bin/script
Nos primeiros cinco dias do mês às 19:25
  25 19 01-05 * * /bin/script
De segunda a sexta ao meio-dia e a meia-noite
  00 00,12 * * 1-5 /bin/script
Script rodar Segunda,Quarta,Sexta às 2 horas
   0 2 * * mon,wed,fri /bin/script
Script para rodar Terça,Quinta às 3 horas
   0 3 * * tue,thu /bin/script
Script para ser executado minuto a minuto
   */1 * * * * /bin/script
--trocar o editor 
Trocar editor de texto default do crontab?
Ubuntu
$ export EDITOR=vim
--ou definitivo
sudo update-alternatives --config editor
--um dos paths do crontab 
crontab: /usr/bin/crontab

--OLHAR SE APARECE o numero do cron -- senão aparecer nenhum número é porque não está rodando 
pgrep cron
por exemplo apareceu para mim 1166 OU SEJA estava rodando.

--VER O LOG DO CRON 
cat /var/log/syslog | grep cron

--***************************************************************************************************************
-- ps -aux - MOSTRA PROCESSOS ABERTO NO LINUX UBUNTU E 3 E 4 COLUNA MOSTRA CPU E MEMÓRIA DE CADA PROCESSO
--***************************************************************************************************************
-- service --status-all >>> MOSTRA TODOS OS SERVIÇOS QUE ESTÃO ATIVOS 
----***************************************************************************************************************
--COPIAR AS 1000 PRIMEIRAS LINHAS DE UM ARQUIVO TANTO .CSV COMO TXT PARA OUTRO ARQUIVO. 
--SE VOCÊ QUISER SÓ MOSTRAR NA TELA USE O COMANDO ABAIXO SEM O ">" O NOME DO ARQUIVO. AI ELE SÓ MOSTRARÁ NA TELA
head nomedoarquivo >>>>>> MOSTRA por padrão as 10 primeiras linhas de algum arquivo.
head -1000 WF_SERVIDOR_SIAPE_CUSTO_PROD1.CSV > MARIO.CSV
--***************************************************************************************************************
--CONTAR A QUANTIDADE DE LINHAS DE UM ARQUIVO .CSV, TXT 
wc -l MARIO.CSV
--***************************************************************************************************************
--DESINSTALAR E INSTALAR NOVAMENTE GOOGLE CHROME VERSAO WEB - NÃO É A DO SERPRO QUE ESTÁ MUITO ANTIGA.
--COLOCAR DENTRO DO ARQUIVO CD/ETC/RC.LOCAL
--Esse arquivo é o compatível ao autoexec.bat do windows. Ele executa quando o computador é reiniciado.
apt-get -y remove google-chrome-serpro
apt-get -y install google-chrome-stable
--***************************************************************************************************************
--faz o backup da pasta jatai dentro da bkp usando o tar 
tar -czvf /home/76455424115/bkp/Jatai.bkp.tar.gz /home/76455424115/Jatai
--lista o contúdo do arquivo na tela
tar -tvf Jatai.bkp.tar.gz | less
--Ou então buscar o arquivo que desejamos especificamente. 
 tar tvf Jatai.bkp.tar.gz | grep NomeDoArquivoProcurado 
--Tendo encontrado nosso precioso arquivo, para extraí-lo usamos a seguinte sintaxe: 
 tar vxf NossoArquivo.tar.gz caminho/para/arquivo/desejado 

--***************************************************************************************************************
-- PEGA A MEMORIA DA MAQUINA LINUX NA POSIÇÃO 8 DO COMANDO FREE 

76455424115@serpro-1553083:~/Desktop$ free | grep Mem | cut -d " " -f8
8253404
--***************************************************************************************************************
-- MODELO DE NOME DE ARQUIVO DE BACKUP UTILIZADO PELO MESTRE RONALDO.
cp -p CRIA_ENVIA_LOGS.SH bkp/CRIA_ENVIA_LOGS.SH.OLD.20160505.SH

--***************************************************************************************************************
--buscar arquivos por palrava dentro de qualquer diretório.  
-- O union abaixo é a palavra a ser procurada dentro a
1-exemplo 
grep -r union *

2-exemplo
-- procura tudo que tenha a palavra count, depois tudo dentro desse count com a palavra union, depois tudo que contenha '' || table_name || '' conforme abaixo
grep -r count * | grep -r union | grep -r '' || table_name || ''

-- procura um arquivo dentro de um diretório "não coloque *" para este caso
ls -ltr | grep -i MARIO

-- procura um arquivo dentro de um diretório para este caso e as suas referências 
ls -ltr | grep -i MARIO * 

--***************************************************************************************************************
--COMO DESINTALAR PROGRAMA NO LINUX - UMAS DAS OPÇÕES.


--REMOVE O OWNCLOUD ANTERIOR E DEPOIS EXECUTE CONFORME ABAIXO.
76455424115@serpro-1553083:/$ dpkg -l | grep jatai

ii  jatai-owncloud-client                             1.5.3                                   The ownCloud client is based on Mirall - github.com/owncloud/mirall
ii  jatai-owncloud-client-l10n                        1.5.3                                   Internationalisation files for ownCloud Client
ii  libjataiowncloudsync0                             1.5.3                                   ownCloud sync library.
76455424115@serpro-1553083:/$ sudo apt-get remove jatai-owncloud-client jatai-owncloud-client-l10n libjataiowncloudsync0
Senha:
Lendo listas de pacotes... Pronto
Construindo árvore de dependências       
Lendo informação de estado... Pronto
Os seguintes pacotes foram instalados automaticamente e já não são necessários:
  libqtkeychain0 libqtwebkit4
Use 'apt-get autoremove' para removê-los.
Os pacotes a seguir serão REMOVIDOS:
  jatai-owncloud-client jatai-ownclud-client-l10n libjataiowncloudsync0
0 pacotes atualizados, 0 pacotes novos instalados, 3 a serem removidos e 0 não atualizados.
Depois desta operação, 3.457 kB de espaço em disco serão liberados.
Você quer continuar [S/n]? S

--***************************************************************************************************************
--INSTALAR PROGRAMAS NO LINUX COM PACOTES .DEB
sudo dpkg -i owncloud-client_2.2.1-13.1_i386.deb
--***************************************************************************************************************
--PARA APAGAR UM USUÁRIO DO LINUX UBUNTU --
userdel mariomarcos

--PARA CRIAR  UM USUÁRIO DO LINUX UBUNTU -- COM SENHA 
--lembrar que tem que ser com root
useradd nomeusuario
passwd nomeusuario -- para criar senha

--***************************************************************************************************************
--PARA CONFIGURAR MONITOR QUE NÃO ESTÁ DETECTANDO NO MAC OU EM OUTROS 
--tente um desses dois primeiro para reconfigurar o driver do monitor
É mais provável que você esteja enfrentando um problema de driver ou de configuração (xorg.conf, arquivo de vídeo). 
Como alternativa de solução, você pode executar o Konsole ou o Terminal, indo à linha de comando e executando:

lspci | grep -i vga

A saída deste comando permite ver qual a sua placa de vídeo. Sem sair da linha de comando, você pode emitir o seguinte:

X -configure :1

O :1 é para prevenir erro, pois, bem ou mal, sua máquina já deve estar com o primeiro Servidor Gráfico atuando. Isto vai gerar um arquivo xorg.conf. na sua "Home", na sua pasta pessoal. Copie este arquivo para a pasta destino, com o seguinte comando:

cp xorg.conf.new /etc/X11/xorg.conf

Reinicialize sua máquina e poste o resultado, por favor. Os passos que citei são uma abordagem. Há várias possíveis. Ao pedir auxílio, poste as informações que possam ajudar a resolver. Modelo de máquina, placa de vídeo (é possível que a documentação de sua máquina informe estes dados).
Boa sorte.


----***************************************************************************************************************
--USEI O JEDIT PARA UNIFICAR UM TEXTO COM REST DE LINE IGNORED .. JUNTOU TUDO E UNIIFCOU E  CONSEGUIR EXECUTAR O SCRIPT== A OPÇÃO EDIT + TEXT + JOIN LINES " CTRL + J
18:46:08 DWPUB:bipro001 > CREATE OR REPLACE FORCE VIEW SIGPGFN.SIG_VW_CORESP (ID_CORESP, ID_REGIAO_POLITICA, DS_CPF_CNPJ_DEVEDOR_DETALHADO, NR_CPF_CNPJ_DEVEDOR_DETALHADO, NM_DEVEDOR_DETALHADO, ID_PAIS, ID_UF, ID_MUNICIPIO, ID_NAT_JURIDICA_DEVEDOR, ID_ATIVIDADE_DEVEDOR, ID_TIPO_PESSOA, ID_DEVEDOR_AGREGADO, ID_SITUACAO_CAD_SUCESSOR, ID_DIA_MOTIVO_SITUACAO, ID_MOTIVO_SITUACAO, ANO_OBITO, ID_DIA_NASCIMENTO, ID_IND_OBITO, ID_SITUACAO_CAD_CPFCNPJ, ID_DEVEDOR_SUCESSOR, NM_DEVEDOR_SUCESSOR, NR_DEVEDOR_SUCESSOR, DS_CNPJ_DEVEDOR_SUCESSOR, ID_IND_MATRIZ_DEVEDOR, ID_IND_MATRIZ_SUCESSOR) AS (SELECT DISTINCT SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_DEVEDOR_DETALHADO ID_CORESP, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_REGIAO_POLITICA, SIGPGFN.SIG_DEVEDOR_DETALHADO.DS_CPF_CNPJ_DEVEDOR_DETALHADO, SIGPGFN.SIG_DEVEDOR_DETALHADO.NR_CPF_CNPJ_DEVEDOR_DETALHADO, SIGPGFN.SIG_DEVEDOR_DETALHADO.NM_DEVEDOR_DETALHADO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_PAIS, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_UF, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_MUNICIPIO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_NAT_JURIDICA_DEVEDOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_ATIVIDADE_DEVEDOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_TIPO_PESSOA, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_DEVEDOR_AGREGADO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_SITUACAO_CAD_SUCESSOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_DIA_MOTIVO_SITUACAO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_MOTIVO_SITUACAO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ANO_OBITO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_DIA_NASCIMENTO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_IND_OBITO, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_SITUACAO_CAD_CPFCNPJ, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_DEVEDOR_SUCESSOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.NM_DEVEDOR_SUCESSOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.NR_DEVEDOR_SUCESSOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.DS_CNPJ_DEVEDOR_SUCESSOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_IND_MATRIZ_DEVEDOR, SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_IND_MATRIZ_SUCESSOR FROM SIGPGFN.DEVEDORES_INSCRICAO, SIGPGFN.SIG_DEVEDOR_DETALHADO WHERE SIGPGFN.DEVEDORES_INSCRICAO.ID_DEVEDOR_DETALHADO = SIGPGFN.SIG_DEVEDOR_DETALHADO.ID_DEVEDOR_DETALHADO AND DEVEDORES_INSCRICAO.CO_TIPO_DEVEDOR <> 1);

View created.

18:46:11 DWPUB:bipro001 > 

----***************************************************************************************************************
alt + f2 == abre a tela para você executar um programa. tipo: glipper que é o gerenciador de área de transferência. ou o 

----CRIAR, APAGAR, DAR PRIVILÉGIOS À USUÁRIO LINUX UBUNTU************************************************************************************************

Como adicionar e excluir usuários no Ubuntu 14.04
Por Wime | 06/06/2013
Quando você instala o Ubuntu, normalmente o primeiro acesso será a partir do usuário root. Embora isso lhe dá o poder de fazer todas as alterações necessárias no servidor, recomendamos criar um novo usuário com privilégios de root no servidor. Além disso, se outras pessoas estarão acessando o servidor, você precisará criar novos usuários para eles também. Neste tutorial abordaremos de forma superficial sobre como criar um novo usuário, concedendo-lhes privilégios de root, e exclusão de usuários.
Quando você executa todas as tarefas root com o novo usuário, você terá que usar a frase “sudo” antes do comando. Este é um comando útil por 2 motivos: 1)  impede o usuário de fazer qualquer sistema de destruição erros 2) armazena todos os comandos executados com sudo em um arquivo onde poderão ser revistos mais tarde, se necessário. Tenha em mente, contudo, que este usuário é tão poderoso como o usuário root.
O que significa as palavras em vermelho?
As linhas que o usuário precisa alterar ou personalizar estará em vermelho neste tutorial!

O resto deverá ser copiado e colado no terminal.

Instalação
Este tutorial exige o acesso root ou um usuário com privilégios sudo.

Adicionando usuários no Ubuntu 12.04
Para adicionar um novo usuário no Ubuntu, use o comando adduser, substituindo o “novo_usuario” com o seu nome preferido.

sudo adduser novo_usuario

Assim que você digitar este comando, o Ubuntu irá iniciar automaticamente o processo onde você deverá:

Digitar e confirmar sua senha.
Digitar as informações do usuário. Isso não é necessário, pressionando ENTER irá preencher automaticamente o campo com as informações padrão.
Pressionar Y (ou ENTER) quando o Ubuntu perguntar se as informações estão corretas.
Parabéns, você acabou de adicionar um novo usuário. Você poderá encerrar a sessão do usuário root. Utilizando o comando exit, será feito o logout e, em seguida, será solicitado um novo login, entre com os dados no novo usuário.

Como conceder a um usuário privilégios root
Como mencionado anteriormente, é mais seguro utilizar um usuário com privilégios de root.

Você pode criar o usuário sudo abrindo o arquivo sudoers com este comando:

sudo /usr/sbin/visudo
Adicionando o nome do usuário e as mesmas permissões como root sob a especificação de privilégios do usuário irá conceder-lhes os privilégios sudo.

# User privilege specification
root            ALL=(ALL:ALL) ALL 
novo_usuario    ALL=(ALL:ALL) ALL
Pressione ‘CTRL + X’ para sair do arquivo e, em seguida, ‘Y’ para salvá-lo.

Como excluir um usuário
Se você não quiser ter um usuário específico no seu servidor, você poderá excluí-lo com um único comando.

sudo userdel novo_usuario
Você também poderá optar em manter ou excluir o diretório “home” do usuário.

Para excluir, entre com o comando abaixo:

sudo rm -rf /home/novo_usuario
----***************************************************************************************************************
--QUANDO MUDAR NOME DE BANCO OU MIGRAÇÃO DE MÁQUINA FAZER O PROCEDIMENTO ABAIXO
--ENTRAR NOME: vi /home/76455424115/.ssh/known_hosts
-- e excluir a linha 6 conforme demonstra abaixo. salvar e pronto é só acessar.


@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
Someone could be eavesdropping on you right now (man-in-the-middle attack)!
It is also possible that a host key has just been changed.
The fingerprint for the RSA key sent by the remote host is
32:e2:dd:f9:cc:28:c8:8a:76:33:64:08:4e:b0:fd:93.
Please contact your system administrator.
Add correct host key in /home/76455424115/.ssh/known_hosts to get rid of this message.
Offending RSA key in /home/76455424115/.ssh/known_hosts:6
  remove with: ssh-keygen -f "/home/76455424115/.ssh/known_hosts" -R 161.148.236.20
RSA host key for 161.148.236.20 has changed and you have requested strict checking.
Host key verification failed.


----***************************************************************************************************************
-- gzip em um arquivo ou pasta simplesnte compacta e não existirá mais o arquivo original.
GZIP -DC > MARIO.TXT   ===--- EXEMPLO GERANDO DE UM ARQUIVO .GZ PARA UM .TXT


gzip [parâmetros] [nome_do_arquivo]

Entre os parâmetros disponíveis, tem-se:

-c - extrai um arquivo para a saída padrão;
-d - descompacta um arquivo comprimido;
-l - lista o conteúdo de um arquivo compactado;
-v - exibe detalhes sobre o procedimento;
-r - compacta pastas;
-t testa a integridade de um arquivo compactado.


----***************************************************************************************************************
--CURSO NO YOUBUTE - esses comandos abaixos podem ser aproveitados.

cd -                                   —>> volta ao diretório anterior e não é o hierarquicamente anterior, e sim o imediatamente anterior
mkdir -p mario/marcos    —>> cria um diretório duplo já com o principal mario e um interno marcos
glipper&                            —>> executa o programa e coloca em background liberando o terminal para outras coisas
cat e tac                           —>> tac é bom para ver final de arquivos de log, ai ele coloca o final no inicio
less                                  —>> quando arquivo for muito grande == NÃO SERVE PARA O AIX. MAIS O FUTURO VAI SER LINUX 
cp -a                               —>> usar esse aqui que copia tudo, link simbólico, subdiretor e outros atributos. NO AIX TEM QUE USAR -pr
history -c                        —>> limpa todos os comandos digitados anteriormente == NO AIX só apagando o arquivo abaixo.
o arquivo .bash_history contém o armazenamento do arquivo de history.

head e tail                       —>> head ver 10 primeiras linhas ou com -xx numero ver mais linhas e tail ver ultimas 10 linhas ou com -xx ver ultimas linhas

grep -i “error32” comando.txt  —>> mostrará as linhas que conte´m a palavra error32 no arquivo ignorando se tem letras maiúsculas ou minúsculas na palavra

no grep se voce colocar parâmetro -v ele ignora a sentença tipo não quero ver “error32” no arquivo. ai ele trará tudo menos as unhas que contenham error32

grep -ri “erro32”  .           —>> vai procurar pela palavra em error32 no diretório atual e com maiúscula ou minúscula ai demora um pouco mais procura em tudo.

--TAR E GZIP JUNTOS PARA COMPRIMIR ARQUIVOS.
tar -cz Documentos > Backup_Documentos.tar.gz  —>>> o parametro -c é de create e z já é utilizando o gzip, ou seja, já faz o serviço completo compacta e comprime.
exemplo: 
tar -cz CONTROLMDWTGHOM > CONTROLMDWTGHOM.tar.gz 

tar -zxf Backup_Documentos.tar.gz —>>> para descomprimir o arquivo tar zipado.

tar -vzxf Backup_Documentos.tar.gz  —>>> faz a mesma coisa de cima mas mostrando o que foi feito

tar -tvf CONTROLMDWTGHOM.tar.gz  —>>> mostra o conteúdo do arquivo zipado 
--====

no grep se você colocar o parâmetro -l ,inicial da palavra lado, ele serve para na seleção não mostrar o texto e sim o nome do arquivo, isso é bom para não poluir a tela.

help do grep ==>>> grep --help
S
grep -C 2 -i “palavra” arquivo.txt —>>>> mostra as duas linhas acima e abaixo do texto solicita​do​


----***************************************************************************************************************
nmap -sT -O localhost PARA DESCOBRIR PORTAR ABERTAS NO LINUX

--==================================================================================================================

--MONTAR UM PENDRIVE - EM MAQUINA LINUX

dmesg = ver qual a unidade de mnontagem do pendrive
sudo mkdir /mnt/pendrive
sudo mount /dev/sdb1 /mnt/pendrive/
cd /mnt/pendrive

w--para desmontar -- não pode deixar de executar o comando abaixo pois senão irá corromper o pendrive
sudo umount /mnt/pendrive
--====================================================================================================
--LOCALIZAR PACOTES, OBJETOS OU PROGRAMAS INSTALDOS
76455424115@ubuntu:~$ dpkg -l | grep libpkcs11
ii  libpkcs11-helper1:amd64                    1.11-5                                              amd64        library that simplifies the interaction with PKCS#11
--ESSE AQUI ABAIXO REMOVE OS PACOTE
76455424115@ubuntu:~$ sudo apt-get remove libpkcs11-helper1:amd64

--====================================================================================================
--COMANDO PARA QUE VERSOES DE PACOTES NO LINUX UBUNTU NÃO ATUALIZEM QUANDO FOR REALIZADA UMA ATUALIZAÇÃO PELO UBUNTU.
echo "nome_pacote hold" | dpkg --set-selections 

--ver os pacotes que estao apontados para ser instalados e os que nao vao atualizar (hold)
dpkg --get-selections


--USADO PARA MANTER AS VERSOES MESMO
echo "libpkcs11-helper1 hold" | dpkg --set-selections 
echo "openvpn hold" | dpkg --set-selections 

--====================================================================================================
--Atualizei a versão do meu sistema operacional Linux Ubuntu para a versão 16.04, ou superior, e não consigo mais autenticar. O que fazer?

É necessário que os dois pacotes abaixo sejam reinstalados.

Pacote “openvpn”. Fazer a reversão da versão 2.3.10 para a versão 2.3.2-7
Pacote “libpkcs11-helper”. Fazer a reversão da versão 1.11-5 para a versão 1.11-1
--====================================================================================================
mkpasswd --- para criar uma senha criptografada no linux para colocar em qualquer senha.
--====================================================================================================
-- aix - para acessar a máquina e copiar um arquivo - vá no hp sa no estreposto windows
e entre como root no servidor em questão. Se ele deixar entrar você pode ir na pasta que você quiser e dar o privilégio para
você poder copiar o arquivo. Ai use o scp -r dwpub xxxxxxxxxxxxxxx para conseguir fazer a copia que você quer.
--====================================================================================================
--apaga todo histórico da máquina do home
history -c

o arquivo se você quiser apagar parcial, abra o arquivo .bash_history e edite ele.
$ sed -i 15d .bash_history  -->> esse comando apaga uma linha específica.
--====================================================================================================

--ESTE EXEMPLO ABAIXO É PORQUE PEGUEI UM LOG DE UMA EXTRACAO DE ESTATISTICA DO TERADATA E RODEI PARA 
--VER QUAIS TABELAS ESTAVAM SEM ESTATÍSTICAS. AI O RONALDO ME PASSOU ESSE SCRIPT PARA PODERMOS VER SOMENTE AS QUE 
--ESTÃO SEM ESTATISTICAS.

cat extracao_stats_mario.sh.log | grep -B 1 3624 | grep -v 3624 | grep -v -e -- | cut -d "." -f2 | tr -d ";" | sort 

cat extracao_stats_mario.sh.log | grep -B 1 3624 | grep -v 3624 | grep -v -e -- | cut -d "." -f2 | tr -d ";" | sort | uniq | wc -l 

--exemplo novo 
cat REPLICAR_DBHOM_DIMENSOES_ORIGEM_CARGA_HOM.SH.log | grep -irB 1 failure | grep -v failure | grep -v -e -- | grep -ir insert > novoarqmario.txt    ---->>>>> exemplo novo

``
--RETIRE O WC -L para você ver a lista se vocẽ quiser.
--Senão vocẽ deixe para ver somente os unicos.

--ESSE AQUI TRÁS O QUE EU QUERO CONTANDO TODOS OS OS DADOS QUE CONTENHA O CÓDIGO "3624" 
--SE vocẽ tirar o wc-l vai trazer os dados das tabelas com o código 3624 
--vamos lá
-- o grep -B 1 3624 ==>>>>> pega as linhas com o código 3624 ela mesma e a linha anterior 
-- o grep -v 3624   ==>>>> elimina a linah do código
-- o grep -v -e --  ==>>>  elimina a linha do -- mas é usado o -e para eliminar mesmo sem mostrar nada
-- o  cut -d "." -f2  ====>>>> pega somente o nome da tabela eliminando os outros campos ao lado e o f2 que delimita quem está do lado esquerdo e do lado direito do ponto
-- o  tr -d ";"   ==>>>>> o tr elimina o campo ; e tira ele da lista
-- o  sort  ======>>>> ordena os arquivos 
-- uniq ======>>>>>> elimina linnhas repetidas se precisar
-- wc - l  =======>>> conta os arquivos
--


--====================================================================================================

--ESTE EXEMPLO ABAIXO É PORQUE PEGUEI VÁRIAS COLETAS DE ESTATICAS DOS SQL DO MICROSTRATEGY QUE ESTAVAM DEMORANDO MAIS DE 2 ATÉ 3 HORAS
--DEPOIS USEI O comando abaixo para executar o shell para retirar as estatísticas e deixar somente os comandos colhidos do sql do microstrategy

./td_explain_helpstats.sh /data/dwpub/scripts/COLETAEXPLAIN/61.SQL

--depois rodei esse aqui em baixo para pegar de 59 até o 111 e criar um loop com todos os comando e jogando dentro de um cata e depois
--ordenei e coloquei dentro de um unico arquivo do 59 até o 111 para rodar posteriormente no banco teradata com uma janela melho de execução
--pois de dida iria ficar impossível.

dwpub@MAXSERPRO01-1-16:/data/dwpub/scripts/COLETAEXPLAIN> cat `for X in {59..111}; do echo "${X}.SQL.stats"; done | paste -sd " "` | sort | uniq > total2_stats.sql

-- executar isso aqui -->>> 
cat `for X in {112..682}; do echo "${X}.sql.stats"; done | paste -sd " "` | sort | uniq > total4_stats.sql

dicas for, paste show de bola - POR RONALDO BEZERRA.

--====================================================================================================
--show esse comando - ele pega e coloca a palavra explain na primeira linha e quebra a linha para 572 arquivos que estavam na pasta.
--show de bola

for i in *.sql; do sed -i "1s/^/EXPLAIN\n/" $i ; done


# Insere no fim do arquivo: - não testei e nem usei esse aqui em baixo ainda
for i in /var/named/*.db ; do echo "email IN A 10.0.0.7" >> $i ; done 


*/


# este aqui em baixo usei para gerar um sh em massa para o comando espcífico pegando o número de 112 a 668 e colocando no final do arquivo.
# funcionou perfeito.

for i in {1093..1351}; do echo "./td_explain_helpstats.sh /data/dwpub/scripts/sql_stats_andre/${i}.sql" >> mario_teste.sh ; done

for i in {1093..1351}; do echo "./td_explain_helpstats.sh /data/dwpub/scripts/COLETAEXPLAIN/${i}.sql" >> mario_teste.sh ; done

--esse aqui é para mudar o nome de 111 arquivos de .SQL para .sql
for i in {1093..1351}; do echo "mv ${i}.txt ${i}.sql" >> muda_nome.sh ; done

--=================================================================================================================================
--linux - encontra no diretório atual e dentro dos subdiretorios e quando achar executa os mesmos apagando todos os arquivos .log
--se quiser testar antes é só trocar o rm -f por ls -l para testar ele vai listar os arquivos.

find . -uname "*.log" -exec rm -f '{}' \; -->>> apaga todos os logs recursivamente
find . -uname "*.log" -exec ls -l '{}' \; -->>> lista todos os logs recursivamente

--=================================================================================================================================

--criar usuario linux forçando para pegar só números.... 
--isso serve para quando está criando um usuario novo e não pode ser acessado sem letras
--primeiro você cria um normal com letra minuscla e depois cria esse novo com esse comando abaixo
--ai você exclui o anteiror.

sudo adduser 76455424115 --force-badname

----------------------------------------------------------------------------------
--para entrar no setup das máquinas ubuntu

use delete ou ctrl + p

-----------------------------------------------
-- para ver a memória mais completo do que free -m
cat /proc/meminfo 
--=================================================================================================================================
--ver configurações da máquina no linux
 cat /proc/cpuinfo


--=================================================================================================================================
--descompactar arquivo gz
gzip -d instantclient-sqlplus-linux.x64-12.2.0.1.0.zip.gz

--=================================================================================================================================
--descompactar arquivo zip
unzip instantclient-basic-linux.x64-12.2.0.1.0.zip

--=================================================================================================================================
--se gerar o erro dessa biblioteca libaio1 é só executar isso aqui - QUANDO FOR INSTALAR O INSTANTCLIENT - INSTANT CLIENT ORACLE
down vote
type the following:

sudo apt-get install libaio1 libaio-dev


--========================================================================================
--Comando top find -- usar sempre
--Esse aqui em baixo é para achar os arquivos *.clt no diretório atual, e o comando exec à frente
--é para substituir c_42012_dwevol_tra por car_42012_dwevol_tra, fazendo backup dos arquivos anteriores
--Se precisar visualizar antes no linux é só tirar o -i e a extensão .old_20180109 e você verá na tela o resultado.
--para procurar somente arquivos execute "find . -name "*.ctl"

find . -name "*.ctl" -exec sed -i.old_20180109 's/c_42012_dwevol_tra/car_42012_dwevol_tra/g' {} \

--========================================================================================
# Remove arquivos terminados em .log (case insensitive) com mais de 90 
dias encontrados no diretório corrente recursivamente.

find . -ctime +90 -name '*.[lL][oO][gG]' -exec rm -f {} \;

--========================================================================================
--scp para máquinas da nossa rede interna aqui da própria equipe
scp TERADATA_MÁQUINAS.png 10.35.2.54:/tmp/TERADATA_MÁQUINAS_2.png


--===========================================================================
--Modificar o icone no lançador do ubuntu na área de trabalho
--ir até a pasta abaixo e criar um arquivo tipo firefox.desktop com root, depois de chmod +x no arquivos
--posteriormente dentro do arquivo coloque o texto abaixo, fazendo as devidas alterações
root@serpro-1553083:/usr/share/applications# pwd
/usr/share/applications

[Desktop Entry]
Name=Firefox
Type=Application
Exec=/home/76455424115/firefox/firefox
Icon=/home/76455424115/firefox/browser/icons/mozicon128.png

--=============================================================================
--LOGAR SEM TOKEN POR UM DIA NO LINUX

1- TECLAR CTRL+AL+F1 -->>> IR PARA TERMINAL ANTES DE LOGAR
2- DIGITAR SUDO SU - para ir para root
3- digitar root@serpro-1553083:/# login-sem-token -h
4- digitar root@serpro-1553083:/# login-sem-token -s
5- root@serpro-1553083:/# reboot
6- e pronto, ai vocẽ vai logar com a senha LDAP por um dia. No outro dia
   vai voltar a pedir token. 

--=============================================================================
--SHOW DE COMANDO PARA VERFICAR TODOS OS ARQUIVOS DE UMA PASTA SE ESTÃO IGUAIS COM OUTRA PASTA DE OUTRO SERVIDOR
--e se mudar as pastas também pode ser do mesmo servidor.
OBS: gerar nos dois servidores, mas fazer o "sort" dos dois arquivos gerados dentro do mesmo servidor, pois o sistema operacional tem que ser idêntico. NÃO PODE SER DIFERENTE.

find ./p_08291_tesourotransparente_pcenter_tra -type f -print0 | xargs -0 md5sum > /tmp/p_08291_tesourotransparente_pcenter_tra49.md5  -->  na máquina 49
find ./p_08291_tesourotransparente_pcenter_tra -type f -print0 | xargs -0 md5sum > /tmp/p_08291_tesourotransparente_pcenter_tra16.md5  -->  na máquina 16

fazer um sort depois.

e depois analisar com um diff ou vimdiff ou aplicativo compatível             
--=============================================================================
-- ADICIONANDO UM USUÁRIO A UM GRUPO NO OPENSUSE

Acabei de instalar o VirtualBOX no OpenSUSE e na hora que tentei adicionar meu usuário ao grupo vboxusers obtive uma mensagem de erro que nunca havia visto.

# gpasswd -a usuario grupo

Eu sempre usei o comando acima, mas no OpenSUSE parece que a opção "-a" não existe no gpasswd. Bom, procura daqui, procura dali encontrei o

# usermod usuario -A grupo

# usermod qware -A users

Fica a dica.

--=============================================================================
--COMANDO PARA VER DETALHES DAS PASTAS
stat /data/dwpub/CONTROLMDWTGPRO


--===========================================================================
Por Ronaldo - 20180724
REMOVER E INSTALAR O JAVA NO UBUNTU GNOME.

remover os java instalados  - e se tiver do serpro pode deixar
acha e usa o autoremove -  com os comandos abaixo
dpkg -l | grep -i java
e depois sudo apt-get java-7-serpro autoremove - se fosse esse a remover 
no caso aqui eu removi o java 7 não o do serpro para instalar o 8 abaixo.

instalar esses trẽs aqui
sudo apt-cache search jdk | grep -i jdk - para ver se tem jdk no repositório
sudo apt-cache search jre | grep -i jre - para ver se tem jre no repositório
sudo apt-cache search fx | grep -i fx - para ver se tem fx no repositório
é esse aqui também  o que foi achadoopenjfx - JavaFX/OpenJFX 8 - Rich client application platform for Java


--AQUI INSTALA OS JAVA QUE PRECISAM ok
sudo apt-get install openjdk-8-jdk openjdk-8-jre
sudo apt-get install openjfx

--=====================================================================
--SSH COM TÚNEL - TUNEL 

ssh -X -q -p 22130 76455424115@localhost
tunel tem que se 22130 - teste um comando ls -- o túnel eu já tenho.
exemplo = tunelexa ls -ltr --- para mostrar os arquivos lá no exadata

--NÃO ESQUEÇA DE HABILITAR O TÚNEL PRIMEIRO.
tunelexaspo e depois o alias que vou colocar no bash 
- exaspo

--esse aqui executa o comando no final e lista na tela
ssh -X -q -p 22130 76455424115@localhost ls -ltr

--esse aqui já cai direto na tela do exadata- ai voce já pode digitar para qual ambiente quer ir. 
ssh -X -t -p 22130 76455424115@localhost 'sudo su - dwpub'

Por exemplo: 
$ ssh teste@10.0.0.1 -p 2255 'cd ~/Desktop ; ./meuScript' 
Neste exemplo, o usuário "teste" da máquina "10.0.0.1" vai dirigir o shell até sua desktop e depois executar o script "meuScript". Isto poderia ser feito em uma única linha, só queria mostrar o uso do ";". 

--==================================================================
---------------------------------------------------------------------
Para formatar pen-drive na mão no terminal do ubuntu - testado
pode usar também na interface gráfica o discos no gnome/ubuntu
---------------------------------------------------------------------

descubra seu pen drive com ele espetado digite o comando abaixo
14/09/18 - 11:51:48 | mount

depois de descoberto execute os comandos abaixo.
14/09/18 - 11:53:14 | umount /dev/sdc1
14/09/18 - 11:54:02 | mkfs.vfat /dev/sdc1

pronto seu pen-drive está formatado no padrão fat.. se quiser mudar use o 
discos e mude o padrão.
---------------------------------------------------------------------

--==================================================================
QUANDO ESQUECER OU QUISER TROCAR A SENHA DO USUARIO UBUNTU. 
entre pelo grub no recovery menu (filesystem state: read-only) na inicialização

1-Selecione a opção "root":
2- mount -rw -o remount / ==>> monta o barro 
3- passwd nome_do_usuario ==>> troca a senha do usuario e digite enter 

obs: isso só pode ser feito localmente.

dicas:

https://www.diolinux.com.br/2014/12/como-resetar-senha-do-ubuntu.html?m=1

--==================================================================
--Como colocar o indicador NUMLOCK e capslock no linux 

reposítorio para colocar o indicador de keylock e num lock

sudo add-apt-repository ppa:tsbarnes/indicator-keylock

instalador

sudo apt-get install indicator-keylock


----------------
num lock ativo no inicio do ubuntu automaticamente.

1-sudo apt-get install numlockx

2-sudo gedit /usr/share/lightdm/lightdm.conf.d/50-unity-greeter.conf

3-root@Aspire-A515-51G:/usr/share/lightdm/lightdm.conf.d#
 
4-editar o arquivo e colocar esta linha de comando
greeter-setup-script=/usr/bin/numlockx on

e vamos ver se dá certo.

------------------------------------------------------------------------------------------
MEU CRONTAB ATUAL INCLUSIVE COM ATUALIZA GOOGLE DRIVE
-------------------------------------------------------------------------------------------
# Edit this file to introduce tasks to be run by cron.
#
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
#
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any').#
# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
#
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
#
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
#
# For more information see the manual pages of crontab(5) and cron(8)
#
# m h  dom mon dow   command
30 17 * * * tar -czvf /home/76455424115/bkp/SerproDrive.bkp.tar.gz /home/76455424115/SerproDrive
45 15 * * * /home/76455424115/bin/atualiza_SerproDrive_para_google_drive >> /home/76455424115/bin/atualiza_SerproDrive_para_google_drive_log
=============================================================================================================
comando para executar snap em .sh
#!/bin/bash
  2 
  3 snap run scrcpy
=============================================================================================================
#ver que hora que desligou o micro
cat auth.log | grep "session closed for user root" | grep "Feb 10"                           


