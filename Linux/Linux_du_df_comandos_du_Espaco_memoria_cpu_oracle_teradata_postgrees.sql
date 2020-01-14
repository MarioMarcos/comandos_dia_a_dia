--===ACHAR TAMANHOS DE MEMÓRIAS, ESPAÇO DO BANCO, VERSÃO DO SISTEMA OPERACIONAL

--******************************DICAS DE ESPACO GERAL NO LINUX/AIX*************************

du -shc *  -este é showwwwwwwww


==melhor usar o comando principal 
------------------------------------------------------------------------------------------------------
df -g /u01/app/oracle/admin/bimd001/dpdump ==>>> total do tamanho em Gygabyte do diretorio em GYGABYTE
df -sg  
------------------------------------------------------------------------------------------------------

df -g ==>>> tamanho em gibabyte do diretorio total da máquina
du -m ==>>> tamanho em megabyte do diretorio
du -g ==>>> tamanho em Gygabyte do diretorio

se vocẽ colocar s no parâmetro vai dar o total da pasta atual 
exemplo: 

du -sg /opt/93031_isbux_dbfiles/oracle/exp ==>>> total do tamanho em Gygabyte do diretorio em GYGABYTE
du -sg
vai mostrar o total da pasta atual

=exemplos
df -g ==>>> tamanho em Gygabyte de todos os diretorios das máquinas 
df -g /opt/93031_isbux_dbfiles/oracle/exp ==>>> tamanho em Gygabyte do diretorio 

du -sm /opt/93031_isbux_dbfiles/oracle/exp ==>>> total do tamanho em Gygabyte do diretorio em MEGABYTE
du -sg /opt/93031_isbux_dbfiles/oracle/exp ==>>> total do tamanho em Gygabyte do diretorio em GYGABYTE


 du -lhs SCRIPTS/ ==>>> ver o tamanho do diretorio em kbytes 



--===ACHAR TAMANHOS DE MEMÓRIAS, ESPAÇO DO BANCO, VERSÃO DO SISTEMA OPERACIONAL
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
POSTGRES 

-- ===informações POSTGRES banco e Sistema Operacional
postgres ==== \! uname -a ==== verificar versão do so === EXECUTAR COMANDO DENTRO DO BANCO COM psql  -U postgres
postgres ==== \l+ -->>>> verficiar tamanhos dos sgbds === EXECUTAR COMANDO DENTRO DO BANCO COM psql  -U postgres
área de dados fazer soma total dos gb ou pegar por banco se precisar

--=== VER VERSÃO DO LINUX DAS MÁQUINAS
cat /etc/redhat-release  == NO SISTEMA OPERACIONAL
usar esse comando "cat /etc/*-release" sem as aspas */ 

--=== LOCALIZAR TAMANHO DE MEMÓRIA
cat /proc/meminfo ou free -m

--ver configurações da máquina no linux
 cat /proc/cpuinfo


--*********************************** ORACLE ******************************************
PARA VER CONFIGURAÇÕES DE MÁQUINAS AIX. >>>>>>> A IARA PEDE PARA VER CONFIGURAÇÕES DAS MÁQUINAS E O COMANDO 
QUE O RONALDO OLHA É ESSE AQUI.
com isso vejo quanto tem de memórias e outras informações
como processador e outros dados.
--PARA SO 
ÁREA TRA
ÁREA SISTEMA OPERACIONAL
MEMÓRIA EM DISCO
CPU

prtconf | head -18  /**/ 

ou nmon + c -- cpu 

e também o "nmon" opção c ou opção m
olhando o entitled cpu, que o ronaldo usa para passar para a IARA
o SMT, e o VP para passar informaçoes de máquina. 

o  ENTITLED CPU, CPU VIRTUAIS E AS THREADS , threads que o ronaldo usa para passar para a IARA
--*********************************************************************************************************************************************
cpus - Júlio.. Cezar

PRODUÇÃO = vp * smt = cpus virtuais
12/48  ==> isso é virtual = thread
CPU: 5 ===>> física entitletd       
SMT:4
VP: 12      
TOTAL:
MEM: 128
===============
--fórmula -- para calculo de thread
cpu virtual  = smt*vp ===>> que é igual a thred
vp = virtual process (process)
smt = 
entitle cpu = cpu física
-------------------------


--*********************************************************************************************************************************************
--=====================================================
ÁREA TRA
ÁREA SISTEMA OPERACIONAL
MEMÓRIA EM DISCO
TAMANHO SCHEMAS/BANCO
CPU

--******************************** POSTGRES ********************************************
--=== LOCALIZAR TAMANHO DE MEMÓRIA


--PARA BD
--===informações POSTGRES banco e Sistema Operacional
postgres ==== \! uname -a ==== verificar versão do so === EXECUTAR COMANDO DENTRO DO BANCO COM psql  -U postgres
postgres ==== \l+ -->>>> verficiar tamanhos dos sgbds === EXECUTAR COMANDO DENTRO DO BANCO COM psql  -U postgres
área de dados fazer soma total dos gb ou pegar por banco se precisar


--*********************************** TERADATA ******************************************
--PARA SO
machinetype -- por André Magalhães nas máquinas linux do appliance ---- lá você pega cpu, memória, disco e outros.


--PARA BD
PARA BANCO OLHAR NO TERADATA ADMINISTRATOR OU SCRIPT TD_TAMANHO_DOS_BANCOS

