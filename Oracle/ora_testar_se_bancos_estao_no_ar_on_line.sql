--=======================================================================================================================================================
--VERIFICAR COMO ESTÁ O BANCO 
1-ENTRAR NA MÁQUINA E EXECUTAR "VMSTAT 10 1000". COM ISSO VOCÊ VER A QUANTIDADE DE CPU E VER NO ULTIMO CAMPO O PERCENTUAL QUE ESTÁ SENDO UTILIZADO 
  FAÇA ISSO AQUI PRIMEIRO PARA VER E FALAR PARA O PESSOAL DA FERRAMENTA. DEPOIS SE PRECISAR FAÇA OS DEMAIS.

2-VERIFICAR SE O BANCO ESTÁ NO AR COM SCRIPT ./BDTESTE NA PASTA ~/JATAI/TRABALHOSERPRO/scripts/scriptsronaldo/./bdteste.sh

3-VERIFICAR SE EXISTE INDICES NO SCHEMA NAS TABELAS -- ATRAVÉS DO ENTERPRISE MANAGER NO ENTREPOSTO DENTRO DO SCHEMA, INDICES. OU ATRAVÉS DE SCRIPT @IND

4-VERIFICAR SE AS TABELAS TEM ESTATÍSTICA E QUANDO FOI A ULTIMA EXECUÇÃO DAS MESMAS.
select table_name, last_analyzed from dba_tables where owner = 'ARRC'

5-VERIFICAR SE A TABLESPACE ESTÁ CHEIA. @TABLESPACES OU @ESPACO

6-PEDIR PARA O PESSOAL OLHAR COMO ESTÁ A REDE EM ULTIMO CASO.

--=======================================================================================================================================================


