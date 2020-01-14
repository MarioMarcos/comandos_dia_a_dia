PARA ACESSAR SYSDBA NO ORACLE EXADATA BRASÍLIA 

ps -ef | grep whpre
[dwpub@dfcdexavbi0003-adm ~]$ export ORACLE_SID=WHPRO1013
[dwpub@dfcdexavbi0003-adm ~]$ sqlplus / as sysdba

ai estará ok para usar como sysdba


-----------------------------------------

--MUDANDO PARA SYSDBA E executando comandos no ASM.

--ERRO de WALLET
--o Wallet está configurado para o banco e o TNS_ADMIN está setado para outro.
--a solução é dar um ps -ef | grep ora_ e pegar a sessao do banco que está rodando 
--no caso o exemplo é do whpre1013.>>>>>>>>>>..
--depois é fazer um export ORACLE_SID=whpre1013>>>>>>>>>>..
--depois digitar unset TNS_ADMIN na sua sessão
--exemplo unset TNS_ADMIN e depois um echo $TNS_ADMIN para verificar se zerou realmente.
--depois é só executar o comando que você quer para aquele banco no caso para executar no ASM
--por fim saia da sua sessão e o TNS_ADMIN, voltará ao parâmetro correto.

executar o export ORACLE_SID=whpre1013na sessão zerar o TNS_ADMIN 

SQL> alter diskgroup DFDG0002 add directory '+DFDG0002/pre_07996_snsg/';
alter diskgroup DFDG0002 add directory '+DFDG0002/pre_07996_snsg/'
*
ERROR at line 1:
ORA-12578: TNS:wallet open failed


PARA ACESSAR SYSDBA NO ORACLE EXADATA BRASÍLIA 

ps -ef | grep ora_
[dwpub@dfcdexavbi0003-adm ~]$ export ORACLE_SID=WHPRO1013
[dwpub@dfcdexavbi0003-adm ~]$ unset TNS_ADMIN
[dwpub@dfcdexavbi0003-adm ~]$ echo $TNS_ADMIN

verifcar se está vazio... Tem que estar vazio o TNS_ADMIN

[dwpub@dfcdexavbi0003-adm ~]$ sqlplus / as sysdba


SQL*Plus: Release 12.1.0.2.0 Production on Thu Mar 14 10:09:06 2019

Copyright (c) 1982, 2014, Oracle.  All rights reserved.


Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, Real Application Clusters, Automatic Storage Management, OLAP,
Advanced Analytics and Real Application Testing options

SQL> alter diskgroup DFDG0002 add directory '+DFDG0002/pre_07996_snsg/';

Diskgroup altered.

SQL> 
SQL> 
SQL> alter diskgroup DFDG0002 add directory '+DFDG0002/pre_07996_snsg/whpre101/';

Diskgroup altered.

SQL>

