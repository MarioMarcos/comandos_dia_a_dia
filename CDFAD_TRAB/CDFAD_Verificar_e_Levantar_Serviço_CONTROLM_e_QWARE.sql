%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

----------------------------------------------------------------------------------------------
--CONTROLM - Verificar se está no ar e também levantar o serviço
----------------------------------------------------------------------------------------------
controlm no ar - por Rômulo - verificando se está no ar
controlm
AQUI EM BAIXO MOSTRA QUE ESTÁ NO AR
ps -ef | grep ctm
root     18756     1  0 Oct23 ?        00:00:14 /var/opt/teradata/controlm/ctm/exe/p_ctmag

--LEVANTAR OU PARA O AGENTE DO CONTROLM NA MAQUINA 49,

Segue abaixo os comandos para Parar e Iniciar o agente do Control-M no servidor 161.148.236.49 do PowerCenter da STN, lembrando que os comandos devem ser executados no usuário ROOT.


Comando para Iniciar o agente do Control-M

/var/opt/teradata/controlm/ctm/scripts/start-ag -u ctmagent -p ALL


Comando para Parar o agente do Control-M

/var/opt/teradata/controlm/ctm/scripts/shut-ag -u ctmagent -p ALL


Comando para verificar se o serviço do agente do Control-M está ativo

ps -ef | grep ctma


Quando o agente estiver funcionando ficará como demostrado logo abaixo:

MAXSERPRO01-1-16:/var/opt/teradata/controlm/ctm/scripts # ps -ef | grep ctma
root     15816     1  0 09:19 pts/0    00:00:00 /var/opt/teradata/controlm/ctm/exe/p_ctmag
root     15867     1  0 09:19 pts/0    00:00:00 /var/opt/teradata/controlm/ctm/exe/p_ctmat
root     15869 15867  0 09:19 pts/0    00:00:00 /var/opt/teradata/controlm/ctm/exe/p_ctmatw -ATW_NAME ATW000
root     16148 13609  0 09:21 pts/0    00:00:00 grep ctma



obs: o -ATW_NAME ATW000 tem que estar dessa maneira senão não estará no ar por exemplo  -ATW_NAME ATW001



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


------------------------------------------------------------------------
--QWARE - Verificar se está no ar e também levantar o serviço
------------------------------------------------------------------------
verificando se está no ar - qware no ar - por Rômulo -
AQUI EM BAIXO MOSTRA QUE ESTÁ NO AR
ps -ef | grep qware
qware    12122 12119  0 Oct23 ?        00:02:10 /var/opt/teradata/qware/bin/qwserver


--mais um mando para testar e também subir o qware
Segue o comando para verificar os serviços (filas e portas):
/var/opt/teradata/qware/bin/./qwinq -a localhost -u qware -p ctm600 -S

>>>>>>>>> Startar serviço Q-ware
/var/opt/teradata/qware/bin/./qwinit.sh start

>>>>>>>>Parar serviço Q-ware
/var/opt/teradata/qware/bin/./qwinit.sh stop

Verificar processos do Q-ware
ps -ef | grep qw
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
