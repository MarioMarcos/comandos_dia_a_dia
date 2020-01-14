--esse aqui estou observando, me parece que tem problemas com requesttext com o show table

.logon 
.set width 20000
.set titledashes off

.export report file=cm_crt_table.sql

select requesttext(title '') from DBC.TABLES where databasename='WRK_DB' and tablename like 'CM%';

.export reset

.logoff

.quit


===================================================================================
--and tablename like 'CM%' - se precisar por tabelas específicas
-- .export report file=cm_crt_table.run ==>>> se quiser executar direto criando um banco novo
-- .run file = cm_crt_table.run

.logon
.set width 200
.set titledashes off
.set format off
.set rtitle ''

.Export report file=cm_crt_table.sql

select 'Show Table ||Trim(Databasename)||'.'||Trim(Tablename)||';' (title '')
from DBC.TABLESV where databasename='dbd_33393_Dwtg' and tablekind = 'T';

.export reset
.set width 400
.set titledashes off
.set format off
.set rtitle ''
.export reset
.logoff

.quit




=======================================================================================
--arquivo original

.logon
.set width 200
.set titledashes off
.set format off
.set rtitle ''

.export report file=cm_crt_table.run

select 'Show Table ||Trim(Databasename)||'.'||Trim(Tablename)||';' (title '')
from DBC.TABLES where databasename='WRK_DB' and tablename like 'CM%'
and tablekind = 'T';

.export reset
.Export report file=cm_crt_table.sql
.set width 400
.set titledashes off
.set format off
.set rtitle ''
.run file = cm_crt_table.run
.export reset
.logoff

.quit
