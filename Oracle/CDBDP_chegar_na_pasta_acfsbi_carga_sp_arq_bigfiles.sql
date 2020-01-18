++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--COMO CHEGAR NA PASTA /acfsbi  aonde estamos copiando os arquivos de bigfile
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
10.30.94.59
spcdexavbi0001-adm
/acfsbi/

--COMO ACESSAR O ORACLE DE SÃO PAULO

vá para o entreposto linux são paulo 10.30.93.201

depois entre na máquina abaixo e vá diretamente

para a pasta que você quer

pwd: Serpr0cd18! da 59 usuário oracle

[76455424115@spcdsrvv0450 ~]$ ssh oracle@10.30.94.59
oracle@10.30.94.59's password: 
Last login: Sat Mar 16 17:44:20 2019 from 10.30.93.201
[oracle@spcdexavbi0001-adm ~]$

[oracle@spcdexavbi0001-adm ~]$ df -h
Filesystem            Size  Used Avail Use% Mounted on
/dev/mapper/VGExaDb-LVDbSys1
                       24G   16G  6,7G  71% /
tmpfs                 394G     0  394G   0% /dev/shm
/dev/xvda1            479M   33M  421M   8% /boot
/dev/mapper/VGExaDb-LVDbOra1
                       59G   24G   33G  43% /u01
/dev/xvdb              50G   22G   25G  48% /u01/app/12.1.0.2/grid
/dev/xvdc              50G   13G   35G  26% /u01/app/oracle/product/12.1.0.2/dbhome_1
/dev/xvde              50G   12G   35G  26% /u01/app/oracle/product/12.1.0.2/dbhome_2
10.193.34.99:/dwed_01
                      3,0T  1,9T  968G  67% /dwed_01
/dev/asm/acfsvol1-137
                       12T  6,0T  6,1T  50% /acfsbi

------------------------
[oracle@spcdexavbi0001-adm ~]$ cd /acfsbi
[oracle@spcdexavbi0001-adm acfsbi]$ ls -ltr
--------------------------------------
apague o que você quer.
[oracle@spcdexavbi0001-adm acfsbi]$ rm -f log_impdp_DLEL_2019AT0000016740_20190316_2.log
[oracle@spcdexavbi0003-adm acfsbi]$ ls -ltr
