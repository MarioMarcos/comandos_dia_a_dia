http://www.figlet.org/fonts/doom.flf - SITE PARA VER ESSAS FONTES LEGAIS AI EM BAIXO

--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- _____   _____    _
--/  ___| |  _  |  | |
--\ `--.  | | | |  | |
-- `--. \ | | | |  | |    
--/\__/ / \ \/' /  | |____
--\____/   \_/\_\  \_____/   SERVER
       
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%INFORMAÇÕES IMPORTANTES%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

--
--A carga dura aproximadamente 4 horas, sendo que a primeira parte dura (01) uma hora e a segunda que é a carga_lancamento e seus dependentes demora
--mais 3 horas e 30.


INSTALAÇÃO DA APLICAÇÃO SQL SERVER, VISUAL STUDIO E INTEGRATION SERVER (DATA TOOLS)- MIGRAÇÃO DE SERVIDOR 

1-NÃO ESQUECER QUE TEM QUE SER NA MESMA LINGUAGEM 
2-VER A COMPATIBILIDADE DE VERSÕES
3-CADA MÁQUINA TEM QUE INSTALAR O TTU - UTILITES DA TERADATA QUE VEM PRINCIPALMENTE COM O ODBC -- pode ser o completo, inclusive com o odbc compatível já dentro do TTU
4-OLHAR AS REGRAS DE FIREWALL - INCLUSIVE A DO EMAIL - SQL SERVER RELAY
5-INSTALAR OS DRIVES DO ATTUNITY QUE ESTÃO NO LINK COM O MÁRIO 
6-VERIFICAR EXECUÇÃO DO DTEXEC NA MÁQUINA E SE O CONTROLM ESTÁ AGINDO CORRETAMENTE.
7-VERIFICAR SE O CONTROLM ESTÁ EXECUTANDO OS BLOCOS NORMALMENTE
8-MEU USUÁRIO CPF TEM QUE TER PREVILÉGIO PARA ALTERAR LOGIN DE OUTROS USUÁRIOS E TAMBÉM GERENCIAR PERMISSÕES DE OUTROS USUÁRIOS.

--*********************************************************************************************************************************************
--TABELAS QUE ESTÃO COM INCREMENTAL (PRECISO REVER ESTE PROCESSO PELO QUE ESTÁ IGUAL OU MELHORADO DA WF_LANCAMENTO)
--deletando os duplicados ou processo de tabela temporária que é o carro chefe na lançamento.

INCREMENTAIS

TABELAS INCREMENTAIS (Origem no BD carga Teradata) - Sql Server Colunar
1-WF_LANCAMENTO	DT_CARGA_C >= DATE-1
2-WF_PAGAMENTO	ANO ATUAL
3-WF_DOCUMENTO	DT_CARGA_C >= DATE-1
4-WD_DOCUMENTO	DT_CARGA_C >= DATE-1
5-WD_DOC_RA	DT_CARGA_C >= DATE-1
6-WD_DOC_NS	DT_CARGA_C >= DATE-1
7-WD_LINHA_EVENTO_RA	DT_CARGA_C >= DATE-1
8-WD_LINHA_EVENTO_NS	DT_CARGA_C >= DATE-1
TABELAS INCREMENTAIS AGREGADAS (Origem no BD Carga em views WV no Teradata) - Sql Server Colunar
09 - WF_LANCAMENTO_EE01	D-6
10- WF_LANCAMENTO_EP01	POR ANO
11- WF_LANCAMENTO_EP02	POR ANO
12- WF_LANCAMENTO_EP03	POR ANO
13- WF_LANCAMENTO_EP04	POR ANO
14- WF_LANCAMENTO_EP20	POR ANO

BL-10-WD_DOCUMENTO	
BL-11-WD_DOC_RA	
BL-11-WD_DOC_NS	
BL-16-WD_LINHA_EVENTO_NS
BL-16-WD_LINHA_EVENTO_RA
BL-12-WF_DOCUMENTO 	
BL-16-WF_PAGAMENTO	 	
BL-carga_lancamento - WF_LANCAMENTO

--TABELA QUE PRECISA SER COLOCADO NO INCREMENTAL (URGENTE)

1-WF_SERVIDOR_SIAPE_CUSTO - e pegando update de mais dias .....ver possibilidade de utilizar esquema SAMUEL


--É necessário toda vez que excluir uma tabela, se for recriar criar índice colunar para ela, pois se não for criado o índice a tabela não aparecerá no batimento.

--*********************************************************************************************************************************************

--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--A PARTIR DAQUI É RASCUNHO REALMENTE:%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
--colocar amanhã dia 27/06/2017 depois de carregar tudo, colocar para voltar esse script aqui.
lock row for access select * from dbcar_33393_dwtg.wf_documento where dt_carga_c = date(format 'yyyymmdd')  (char(10));
lock row for access select * from dbcar_33393_dwtg.wf_pagamento where dt_carga_c = date(format 'yyyymmdd')  (char(10));

--colcocar a wf_pagamento incluir o ano para pegar somente o incremental com tabela temporária, mas se não der tempo colocar pelo menos o ano 2017

--==============================================
--===========================================================================================================
Idéias - Informações SQl - atividades pendentes - pendências
-- avaliar os tempos. Depois do Delete ficou muito mais lento o a replica.
-- verificar se a tabela wd_doc_ns atualizou e se acrescentou o campo automaticamente através do data tools.
-- verificar o script das agregadas depois - dentro do sql eles estão fazendo somente 2017 ok.. se for fazer outro exercicio não está dando certo
-- se for o caso buscar o exercicio direto da agregada do teradata.
-- avaliar A TABELA FINAL RUBRICA_VINC que está com quantidade de registros 0
-- Fazer novo bloco com reorganize novamente separado do bloco carga lançamento
-- instalar pacote attunity na máquina 64 e nos entrepostos 74 e 75
-- habilitar os clients sql server para usarem nos entrepostos para melhor desenvolver.
-- criar um bloco de manutençaõ no inicio da carga, para quando ter uma inclusão de tabela se não for uma emergencia fazer a noite
-- renomear bancos e tabelas para o código 10171 da sd
-- renomear banco dwpub e colocar o código 10171 da sd.
--Implantar estatísticas no banco dbpro
--Aplicar Pacotes de correção microsoft. Acertar com José Rodrigo e quem vai aplicar é o Nakamura/Bruno
--fazer batimento - do batimento para ver quantidade de tabelas 406 para acionar no controlm a noite e preparar para agir 
--implantar siape_custos com tabela temporária e incremental -- delta.
'OK' --%%%%%%%%%%arrumar a tabela WD_DOC_ORIGEM que está em três blocos no 09, 10, e também no bloco 16 - ver aonde está correto "O CORRETO E NO BLOCO FINAL.
--ver questão com regio e samuel sobre bloco 17 e aonde encaixa o 16 antes ou depois da lançamento.
'ok'--dar uma olhada ver se pode melhorar a tabela WD_LISTA_CREDOR_OB, ela demora muito para ser carregada.
'ok'--ver questão WD_LINHA_EVENTO_OB muito lenta para carregar 
'ok'--ver quesao wd_CONTA_CORRENTE lenta para carregar também.
'ok'--%%%%%%%%%tirar urgente a wf_pagamento do container do bloco 16 e criar um container especifico para ela inclusive com o truncate dentro do bloco 16.
--Testar para colocar as agregadas em paralelo buscando na lançamento para ver se ganharemos mais tempo na carga depois que o bloco já estiver 
--em paralelo.
--===========================================================================================================
teradata assistent --<>

select count_big(*) from wf_PAGAMENTO (nolock) where an_exercicio_c =  2017;

--select distinct(AN_EXERCICIO_C), count_big(*) from wf_pagamento (nolock) GROUP BY AN_EXERCICIO_C ORDER BY 1;

--select count(*) from dbpro_33393_dwtg.dbo.wf_lancamento_ep01 where id_ano_lanc = 2017--5;

--DELETE FROM WF_PAGAMENTO WHERE AN_EXERCICIO_C = 2017;

cscript uninstall_TTU.vbs TDODBC /SUITE:ALL /PRIORTOVERSION:15.10.01.05
cscript uninstall_TTU.vbs /SUITE:ALL /PRIORTOVERSION:15.10.01.05 /FORCE:TRUE
cscript uninstall_TTU.vbs TDODBC /PRIORTOVERSION:15.10.01.05
--===========================================================================================================
--MUDAR NOS BLOCOS DO SQL -SERVER 
BLOCO WF_PAGAMENTO DEPOIS DO BLOCO 15 NO POWERCENTER - RECOLOCAR ISSO URGENTE DEPOIS DO BLOCO 15  

lock row for access select * from dbcar_33393_dwtg.wf_pagamento where an_exercicio_c = 2017;

acompanhar amanhã dia 04/07/2017 - a tabela wf_pagamento para ver se vai bater depois da mudança de blocos do 14 para o 16

--===========================================================================================================
--fake name generator - gerador de dados 
-- pt.fakenamegenerator.com - sugestão para geração de dados
--o outro é o www.mockarro.com - é gratuito, mas tem que fazer uma conta e só é gratuito até 1000 registros.
--pelo curso de integration service por mafra 

--===========================================================================================================
-- fazer hoje mudar blocos -- REVER ISSO AQUI por que as agregadas estão na produção e não na carga.

EE01  VOU COPIAR FULL 
EP_01 ESTUDAR MELHOR
EP_02 VOU COPIAR FULL 
EP_03 VOU COPIAR FULL 
EP_04 VOU COPIAR FULL 
EP_20 ESTUDAR MELHOR

--===========================================================================================================
--ATUALIZAÇÃO DO BANCO, uma vez que houve esta mesma alteração no banco de produção e carga do dwtg - teradata
1-
﻿/* 4444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444
			Incluir campo na tabela final
 4444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444*/
 mapear e publicar pelo bloco do integration service.

ALTER TABLE DBPRO_33393_DWTG.WD_DOC_NL ADD PE_TAXA_CAMBIO DECIMAL(12,4) NOT NULL DEFAULT 1;
ALTER TABLE DBPRO_33393_DWTG.WD_DOC_OB ADD PE_TAXA_CAMBIO DECIMAL(12,4) NOT NULL DEFAULT 1;

--mapear para pegar a nova e pegar o script e gerar tabelas news e depois publicar para ela
--em seguida publicar via teradata.
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
Alteração WD_DOC_NC	
Alteração WD_DOC_ND	
Alteração WD_DOC_PE
Alteração WD_DOC_PF	
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
--publicação

--INSERT INTO WD_DOC_NC_NEW    SELECT * FROM WD_DOC_NC;
--INSERT INTO WD_DOC_ND_NEW    SELECT * FROM WD_DOC_ND;
--INSERT INTO WD_DOC_NL_NEW    SELECT * FROM WD_DOC_NL;
--INSERT INTO WD_DOC_OB_NEW    SELECT * FROM WD_DOC_OB;
--INSERT INTO WD_DOC_PE_NEW    SELECT * FROM WD_DOC_PE;
--INSERT INTO WD_DOC_PF_NEW    SELECT * FROM WD_DOC_PF;


--===========================================================================================================
reunião José Rodrigo - Microsoft

1-Polybase - hadoop
2-cluster - allinzone - nakamura representando o Bruno
3-

--depois é Mário com várias informações somente com o José Rodrigo.
--1-debug int service
--2-validate blocos - int service
--3-pergunta sobre colunar se é necessário ter o índice para que aquele script count funcione
--4-informar sobre ttu que precisa ser instaldo completo e ter o cuidado sobre o odbc 
--5-erro de memória que tem que aplicar patches
--6-Sql Server não suporta mais 64 kbytes = 65.000 bytes por bloco e não consegue transportar esse tamanho de bloco. Segue o link do problema
  por José Lopes.: https://technet.microsoft.com/en-us/library/ms143432%28v=sql.110%29.aspx
--7


--==============================
--ver se tem esquema na tabela e alguns dados como nome do esquema que está adicionado.
SELECT *   
FROM sys.tables AS t   
JOIN sys.indexes AS i   
    ON t.[object_id] = i.[object_id]   
    AND i.[type] IN (0,1)   
JOIN sys.partition_schemes ps   
    ON i.data_space_id = ps.data_space_id   
WHERE t.name = 'wf_lancamento_ep01_new';   
GO  

--==================
--ver a tabela e suas partições com partition_id e números de partições
SELECT t.name AS TableName, i.name AS IndexName, p.partition_number, p.partition_id, i.data_space_id, f.function_id, f.type_desc, r.boundary_id, r.value AS BoundaryValue   
FROM sys.tables AS t  
JOIN sys.indexes AS i  
    ON t.object_id = i.object_id  
JOIN sys.partitions AS p  
    ON i.object_id = p.object_id AND i.index_id = p.index_id   
JOIN  sys.partition_schemes AS s   
    ON i.data_space_id = s.data_space_id  
JOIN sys.partition_functions AS f   
    ON s.function_id = f.function_id  
LEFT JOIN sys.partition_range_values AS r   
    ON f.function_id = r.function_id and r.boundary_id = p.partition_number  
WHERE t.name = 'Wf_lancamento_ep01_new' AND i.type <= 1  
ORDER BY p.partition_number;  

--==================
--PARA VER A COLUNA DO PARTICIONAMENTO NA TABELA
SELECT   
    t.[object_id] AS ObjectID   
    , t.name AS TableName   
    , ic.column_id AS PartitioningColumnID   
    , c.name AS PartitioningColumnName   
FROM sys.tables AS t   
JOIN sys.indexes AS i   
    ON t.[object_id] = i.[object_id]   
    AND i.[type] <= 1 -- clustered index or a heap   
JOIN sys.partition_schemes AS ps   
    ON ps.data_space_id = i.data_space_id   
JOIN sys.index_columns AS ic   
    ON ic.[object_id] = i.[object_id]   
    AND ic.index_id = i.index_id   
    AND ic.partition_ordinal >= 1 -- because 0 = non-partitioning column   
JOIN sys.columns AS c   
    ON t.[object_id] = c.[object_id]   
    AND ic.column_id = c.column_id   
WHERE t.name = 'Wf_lancamento_ep01_new' ;   
GO  

--==================
-- TESTAR AINDA
USE AdventureWorks2008R2 ;
GO
SELECT $PARTITION.TransactionRangePF1(TransactionDate) AS Partition, 
COUNT(*) AS [COUNT] FROM Production.TransactionHistory 
GROUP BY $PARTITION.TransactionRangePF1(TransactionDate)
ORDER BY Partition ;
GO

--TESTAR AINDA 2
SELECT * FROM Production.TransactionHistory
WHERE $PARTITION.TransactionRangePF1(TransactionDate) = 5 ;

--TESTAR AINDA 3
SELECT * FROM sys.partition_range_values

--TESTAR AINDA 4
SELECT * FROM sys.partition_schemes

--

--===============================
--AQUI ESTÁ A FORMA COMO TRUNCAR TABELAS PARTICIONADAS ---- TESTAR AINDA OK
Syntax

The syntax for the TRUNCATE TABLE statement in SQL Server (Transact-SQL) is:

TRUNCATE TABLE [database_name.] [schema_name.] table_name
[ WITH ( PARTITIONS ( partition_number
                    | partition_number TO partition_number ) ] ;
Parameters or Arguments

database_name
Optional. If specified, it is the name of the database.
schema_name
Optional. If specified, it is the name of the schema that the table belongs to.
table_name
The table that you wish to truncate.
WITH ( PARTITIONS ( partition_number | partition_number TO partition_number )
Optional and can only be used with partitioned tables. If specified, partition_number is the number of the partition that you wish to truncate in the partitioned table. To list multiple partitions, comma separate the partition number values or ranges. If you try to use this clause with a table that is not partitioned, SQL Server will return an error. This feature is not available in all versions of SQL Server.
Note

If you truncate a table, the counters on any identity columns will be reset.
You can not truncate a table that is referenced by a Foreign Key.
Before you can truncate a table, you must have the necessary privileges such as ALTER TABLE.
Example

In SQL Server, truncating a table is a fast way to clear out records from a table if you don't need to worry about rolling back. When a table is truncated, the row deletions are not logged which is why rolling back is not possible. Truncating a table is also a lot easier than dropping the table and recreating it.

Let's look at an example of how to use the TRUNCATE TABLE statement in SQL Server.

For example:

TRUNCATE TABLE employees;
This example would truncate the table called employees and remove all records from that table.

It would be equivalent to the following DELETE statement in SQL Server:

DELETE FROM employees;
Both of these statements would result in all data from the employees table being deleted. The main difference between the two is that you can roll back the DELETE statement if you choose, but you can't roll back the TRUNCATE TABLE statement.

Let's look at one more example where we prefix the table name with the database name.

For example:

TRUNCATE TABLE totn.contacts;
This example would truncate the table called contacts in the database called totn.

With Partitions

If you want to truncate a specific partition or range of partitions, you can use the WITH PARTITIONS clause.

For example:

TRUNCATE TABLE employees
WITH (PARTITIONS (3DELETO 5, 7));
In this example, the employees table is a partitioned table and the TRUNCATE TABLE statement would truncate partitions 1 through 5 as well as partition 7 in this partitioned table.

Frequently Asked Questions

Question: Can you rollback a TRUNCATE TABLE statement in SQL Server?

Answer: A TRUNCATE TABLE statement can be rolled back in SQL Server by using a transaction.

For example:

CREATE TABLE test_table (column1 int);

INSERT INTO test_table VALUES (1);
INSERT INTO test_table VALUES (2);
INSERT INTO test_table VALUES (3);

-- Create a transaction
BEGIN TRAN;

-- Truncate table
TRUNCATE TABLE dbo.test_table;

-- Rollback truncate table
ROLLBACK;

SELECT * FROM test_table;
The SELECT statement above should return the following records:

column1
----------
1
2
3     
As you can see, the TRUNCATE TABLE statement was successfully rolled back and the 3 records are still within test_table.

--===================================================================================================================================
Por José Rodrigo - Microsoft 
No DataFlow
DelayValidation - sempre true para não validar colunas e estrutura no teradata -- pode ser usado no container que assume tudo mesmo os dataflows sendo false
Teradata.Source.MaxSessions e Minisessions definir como 5 para paralelizar quantidade máxima de sessões.

AutoAdjustBuffersize = false passamos para true
DefaultBuffersizeMaxRows = 10000 passou para 1048576

Dendro do Data Flow em edit do destinations mudar
o campo:

ROWS PER BATCH PARA 1048576
e o Maximum insert commit size para 1048576


--CONSULTA PARA VER COMO ESTÁ OS GRUPOS FÍSICOS -
select * from sys.dm_db_column_store_row_group_physical_stats where object_id = object_id('WF_LANCAMENTO_EP01');

--================================================================================================================================
--modelo para startar na mão dentro do cmd do windows um job do integration service.
DTEXEC /FILE "\"C:\CONTROLM\in\Carga_Lancamento2017.dtsx\"" /CHECKPOINTING OFF /REPORTING E /DECRYPT dwpub*di69 

--================================================================================================================================
--demanda SIAPI

BL-10-WD_DOCUMENTO		:DIA - E APAGA DUPLICADOS  == quando publicar essas tabelas não esquecer de rodar para apagar os duplicados.
BL-11-WD_DOC_RA
BL-11-WD_DOC_NS
BL-16-WD_LINHA_EVENTO_NS	:DIA - E APAGA DUPLICADOS  == quando publicar essas tabelas não esquecer de rodar para apagar os duplicados.
BL-16-WD_LINHA_EVENTO_RA 	:DIA - E APAGA DUPLICADOS  == quando publicar essas tabelas não esquecer de rodar para apagar os duplicados.
BL-12-WF_DOCUMENTO 



--================================================================================================================================

Exemplos de utilização de datas no teradata e no sqlserver

-- Teradata
lock row for access select * from dbcar_33393_dwtg.WF_LANCAMENTO where id_ano_lanc=2017 and dt_carga_c = date (format 'yyyymmdd')  (char(10));

-- SQLSERVER
select format(CURRENT_TIMESTAMP-1,'yyyyMMdd');

--=================================================================================================================================

colocar no contorlm in do sql amanhã 01/08/2017 depois de ver como vai ser a reação das outras mudanças
já está tudo pronto – é só implantar.
blocofinal
pronta_para_implantar_carga_lancamento_agregadas
pronta_para_implantar_carga_lancamento


2017RDM/0000009475

--=================================================================================================================================
Blocos mais demorados no SQL 

Bloco 11 - 39 min a partir daqui é que começa a demora
Bloco 12 - 1:20 h
Bloco 16 - 59 min
-----atacar esses aqui urgentemente0---------------------------
Bloco Final - 47 min
Carga_lançamento_agregada = 2:08 h
Batimento estranhamente em média de 40 minutos

--=================================================================================================================================
sp_rename 'WF_LANCAMENTO_EP01', 'WF_LANCAMENTO_EP01_OLD';

sp_rename 'WF_LANCAMENTO_EP01_NEW', 'WF_LANCAMENTO_EP01';    

---================================================================================================================================
CREATE VIEW [dbo].[WF_LANCAMENTO_EP01_VIEW]
AS 
select 
	ROW_NUMBER() OVER (ORDER BY ID_ANO_LANC, ID_MES_LANC),
      IN_VALIDADE_CCOR,
      ID_CONTA_CONTABIL_LANC,
      ID_ANO_LANC,
      ID_MES_LANC,
      ID_UG_EXEC,
      ID_MOEDA_UG_EXEC_H,
      ID_ORGAO_EXEC_H,
      ID_ORGAO_SUPE_EXEC_H,
      ID_ORGAO_MAXI_EXEC_H,
      ID_ORCA_FISCAL_ORGAO_EXEC_H,
      ID_TP_ADMIN_ORGAO_EXEC_H,
      ID_ORGAO_EMIT_DOC_H,
      ID_ORGAO_SUPE_EMIT_DOC_H,
      ID_ORGAO_MAXI_EMIT_DOC_H,
      ID_ESFERA_ORCAMENTARIA,
      ID_FONTE_RECURSO_DETA,
      ID_CATEGORIA_ECONOMICA_NADE,
      ID_GRUPO_DESPESA_NADE,
      ID_MOAP_NADE,
      ID_ELEMENTO_DESPESA_NADE,
      ID_SUBITEM_NADE,
      ID_UG_RESP,
      ID_ORGAO_PI,
      ID_PI,
      ID_PTRES,
      ID_RESULTADO_LEI,
      ID_TP_CREDITO,
      ID_UO,
      ID_PO,
      ID_ANO_CONTROLE,
      ID_MES_CONTROLE,
      ID_DIA_CONTROLE,
      ID_TV,
      ID_TP_TV,
      ID_BANCO,
      ID_AGENCIA_BANCARIA,
      ID_CONTA_BANCARIA,
      ID_CONTA_CORRENTE_SK,
      ID_TP_CCOR,
      ID_TP_ENTIDADE_CCOR,
      ID_ENTIDADE_CCOR,
      ID_DOCUMENTO_CCOR,
      ID_RECURSO,
      ID_RECEITA,
      ID_DESTINACAO_RECEITA,
      ID_CATEGORIA_ECONOMICA_NARE,
      ID_ORIGEM_RECEITA_NARE,
      ID_ESPECIE_RECEITA_NARE,
      ID_RUBRICA_NARE,
      ID_ALINEA_NARE,
      ID_SUBALINEA_NARE,
      ID_ORGAO_CENTRO_CUSTO,
      ID_CENTRO_CUSTO,
      ID_UG_CCOR,
      ID_ORGAO_CCOR,
      ID_GESTAO_CCOR,
      ID_UF_CCOR,
      ID_FUNCAO_PT,
      ID_SUBFUNCAO_PT,
      ID_PROGRAMA_PT,
      ID_ACAO_PT,
      ID_LOCALIZADOR_GASTO_PT,
      ID_MUNICIPIO_REME,
      ID_RECEITA_MUNICIPAL_ESTADUAL,
      ID_UG_UF,
      ID_CELULA_ORCAMENTARIA_SK,
      ID_DIVIDA_EXTERNA,
      ID_ANO_CCOR,
      ID_MES_CCOR,
      ID_ANO_SAQUE,
      ID_MES_SAQUE,
      ID_IDOC,
      ID_DESTINACAO_RECOLHIMENTO,
      ID_RECOLHIMENTO_GRU,
      ID_PAGAMENTO_GPS,
      ID_GFIP,
      ID_VINCULACAO_PAGAMENTO,
      ID_TP_ENTIDADE_IG_CCOR,
      ID_ENTIDADE_IG_CCOR,
      ID_TP_ARRECADACAO,
      ID_CONTA_CONTABIL_REFE,
      ID_CATEGORIA_GASTO_CCOR,
      ID_TP_DOC_CCOR,
      ID_UG_DOC_HABIL,
      ID_DOC_HABIL,
      ID_ANO_TAXA_CAMBIO_CCOR,
      ID_MES_TAXA_CAMBIO_CCOR,
      ID_DIA_TAXA_CAMBIO_CCOR,
      ID_IN_RESULTADO_RECEITA,
      ID_TP_DESPESA,
      ID_GRUPO_DE_FONTE,
      ID_CONTA_CONTABIL_CLAS_1,
      ID_BANCO_ARRECADADOR,
      CAST(QT_LANCAMENTO) AS NUMBER(18,0)) QT_LANCAMENTO,
      CAST(VA_CREDITO) AS DECIMAL(18,2)) VA_CREDITO,
      CAST(VA_DEBITO) AS DECIMAL(18,2)) VA_DEBITO,
      CAST(VA_MOVIMENTO_LIQUIDO) AS DECIMAL(18,2)) VA_MOVIMENTO_LIQUIDO,
      ID_CATEGORIA_ECONOMICA2_NARE,
      ID_ORIGEM_RECEITA2_NARE,
      ID_ESPECIE_RECEITA2_NARE,
      ID_RUBRICA2_NARE,
      ID_ALINEA2_NARE,
      ID_SUBALINEA2_NARE,
      ID_TIPO_RECEITA2_NARE,
      CO_UG_EXEC
     FROM WF_LANCAMENTO where id_ano_lanc IN (2017);
GO

====
    
2017SS/0000608159 -- REGRAS DE FIREWALL PARA HADOOP -   
Descrição: Por favor, encaminhar para equipe de FIREWALL de BRASÍLIA como requisição de serviço RS (GMSIDFFWL).

Prezados

Solicito as regras abaixo:

UG: SUPSD
Código Serviço: 10171
Ambiente: Produção
Duração da regra: indeterminada

Solicito abertura de regra conforme especificado abaixo:

Regra 1:
IP origem: 161.148.236.41, 161.148.236.42, 161.148.236.43, 161.148.236.44, 161.148.236.45, 161.148.236.46, 161.148.236.47, 161.148.236.48, 
Ip Destinos: 161.148.242.11
Porta: 50070, 1025

Regra 2: 
IP origem: 161.148.236.99
Ip Destinos: 161.148.242.11
Porta: 50070

Objetivo: Execução de rotinas de publicão entre o DWTG e O Hadoop GOVI DATA.

---================================================================================================================================
2. Demanda

Favor realizar as duas alterações abaixo no banco de produção (dbpro_33393_dwtg).
IMPORTANTE: Elas precisam ser concluídas hoje (09/08), para entrar em produção no próximo ETL.

São elas:

alter table dbpro_33393_dwtg.WD_FONTE_CADASTRO ADD ID_UO_FONTE_RECURSO INTEGER NOT NULL DEFAULT -9;

alter table dbpro_33393_dwtg.WD_FONTE_RECURSO_DETA ADD ID_UO_FONTE_RECURSO INTEGER NOT NULL DEFAULT -9;

OBS: Lembrando também que essas alterações deverão refletir no banco SQL-SERVER.

---================================================================================================================================
2017RDM/0000009995
Prezados, 

Encaminhar para GMCDDFCTM

Prezado, Favor alterar a árvore do código de serviço 10171 para acrescentar alguns scripts de carga_tabelas_agregadas conforme documento operacional em anexo. 

Obs: Os acionamentos para o plantão à esses blocos em desenvolvimento devem ser direcionados para CDGDB.

Segue em anexo o Procedimento Operacional.

------------------------------------------------------------------------------------------------
Código de Serviço: 10171
Path: C:\CONTROLM\in\, e C:\CONTROLM\in\Carga_Siape 
Server: 161.148.236.69 - dfcdsrv0903
=========================================
 2017SS/0000615105


portar para HADOOP para SQL 


Daemon	Default Port	Configuration Parameter

HDFS	Namenode	50070	dfs.http.address
	Datanodes	50075	dfs.datanode.http.address
Secondarynamenode	50090	dfs.secondary.http.address
Backup/Checkpoint node?	50105	dfs.backup.http.address

MR	Jobracker	50030	mapred.job.tracker.http.address
	Tasktrackers	50060	mapred.task.tracker.http.address


Descrição: Por favor, encaminhar para equipe de FIREWALL de BRASÍLIA como requisição de serviço RS (GMSIDFFWL).

Prezados

Solicito as regras abaixo:

UG: SUPSD
Código Serviço: 10171
Ambiente: Produção
Duração da regra: indeterminada

Solicito abertura de regra conforme especificado abaixo:

Das máquinas

Origem: 161.148.236.99, 161.148.236.41, 161.148.236.42, 161.148.236.43, 161.148.236.44, 161.148.236.45, 161.148.236.46, 161.148.236.47, 161.148.236.48  

Destino:
161.148.242.24  dfcdsrvbi0034
161.148.242.18  dfcdsrvbi0028
161.148.242.11  dfcdsrvbi0015
161.148.242.12  dfcdsrvbi0018
161.148.242.13  dfcdsrvbi0019
161.148.242.22  dfcdsrvbi0032
161.148.242.25  dfcdsrvbi0035
161.148.242.28  dfcdsrvbi0038
161.148.242.51  dfcdsrvbi0041
161.148.242.50  dfcdsrvbi0016

Das máquinas 

Portas: 
1025
50070
50075	
50090	
50105	
50030	
50060	

Objetivo: Execução de rotinas de publicão entre o DWTG e O Hadoop GOVI DATA.

--============================================================================
2017SS/0000655137

Prezados

Solicito as regras abaixo:

UG: SUPSD
Código Serviço: 10171
Ambiente: Produção
Duração da regra: indeterminada

Solicito abertura de regra conforme especificado abaixo:

Das máquinas

Origem: 161.148.236.99, 161.148.236.41, 161.148.236.42, 161.148.236.43, 161.148.236.44, 161.148.236.45, 161.148.236.46, 161.148.236.47, 161.148.236.48  

Destino:
161.148.242.24  dfcdsrvbi0034
161.148.242.18  dfcdsrvbi0028
161.148.242.11  dfcdsrvbi0015
161.148.242.12  dfcdsrvbi0018
161.148.242.13  dfcdsrvbi0019
161.148.242.22  dfcdsrvbi0032
161.148.242.25  dfcdsrvbi0035
161.148.242.28  dfcdsrvbi0038
161.148.242.51  dfcdsrvbi0041
161.148.242.50  dfcdsrvbi0016

Porta: 
50111

Objetivo: Execução de rotinas de publicão entre o DWTG e O Hadoop GOVI DATA.




--===============================================================================================================
rafael@cubo.uno

[HDFS File Destination] Error: 'Type=Microsoft.DataTransfer.Common.Shared.HybridDeliveryException,Message=Writing to &apos;Hdfs&apos; failed. &apos;One or more errors occurred.&apos;,Source=Microsoft.DataTransfer.ClientLibrary,StackTrace=   at Microsoft.DataTransfer.ClientLibrary.Cabo.Sink.CaboSink.Write(IEnumerable`1 streams)
   at Microsoft.DataTransfer.ClientLibrary.BinaryTransfer.Run(),''Type=Microsoft.DataTransfer.Common.Shared.HybridDeliveryException,Message=The data type SByte is not supported.,Source=Microsoft.DataTransfer.Common,StackTrace=   at Microsoft.DataTransfer.Common.Shared.ConversionUtil.ConvertToStringCommon(Object value&#44; ClrTypeCode typeCode&#44; String format&#44; CultureInfo cultureInfo&#44; String columnName)
   at Microsoft.DataTransfer.ClientLibrary.CsvFormatSerializer.InternalWrite(Object value&#44; String columnName)
   at Microsoft.DataTransfer.ClientLibrary.CsvFormatSerializer.SerializeData()
   at System.Threading.Tasks.Task.Execute(),''Type=System.OperationCanceledException,Message=The operation was canceled.,Source=System,StackTrace=   at System.Collections.Concurrent.BlockingCollection`1.TryTakeWithNoTimeValidation(T&amp; item&#44; Int32 millisecondsTimeout&#44; CancellationToken cancellationToken&#44; CancellationTokenSource combinedTokenSource)
   at Microsoft.DataTransfer.ClientLibrary.Cabo.Uploader.SimpleProducerConsumer.Consume(),''Type=System.OperationCanceledException,Message=The operation was canceled.,Source=mscorlib,StackTrace=   at System.Threading.CancellationToken.ThrowOperationCanceledException()
   at System.Threading.ManualResetEventSlim.Wait(Int32 millisecondsTimeout&#44; CancellationToken cancellationToken)
   at System.Threading.Tasks.Task.SpinThenBlockingWait(Int32 millisecondsTimeout&#44; CancellationToken cancellationToken)
   at System.Threading.Tasks.Task.InternalWait(Int32 millisecondsTimeout&#44; CancellationToken cancellationToken)
   at System.Threading.Tasks.Task.Wait(Int32 millisecondsTimeout&#44; CancellationToken cancellationToken)
   at Microsoft.DataTransfer.ClientLibrary.Cabo.Sink.CaboSink.WaitForUploadCompletion(),'



--=====================================================================================================================================
Descrição: Por favor, encaminhar para equipe de FIREWALL de BRASÍLIA como requisição de serviço RS (GMSIDFFWL).

Prezados

Solicito as regras abaixo:

UG: SUPSD
Código Serviço: 10171
Ambiente: Produção
Duração da regra: indeterminada

Solicito abertura de regra conforme especificado abaixo:

Das máquinas

Origem: 161.148.236.64, 161.148.236.65, 161.148.236.69

Destino:
161.148.242.24  dfcdsrvbi0034
161.148.242.18  dfcdsrvbi0028
161.148.242.11  dfcdsrvbi0015
161.148.242.12  dfcdsrvbi0018
161.148.242.13  dfcdsrvbi0019
161.148.242.22  dfcdsrvbi0032
161.148.242.25  dfcdsrvbi0035
161.148.242.28  dfcdsrvbi0038
161.148.242.51  dfcdsrvbi0041
161.148.242.50  dfcdsrvbi0016

Das máquinas 

Portas: 
1025
50070
50075	
50090	
50105	
50030	
50060	
50111
Objetivo: Execução de rotinas de publicão entre o DWTG e O Hadoop GOVI DATA.


--=====================================================================================================================================

Descrição: Por favor, encaminhar para equipe de FIREWALL de BRASÍLIA como requisição de serviço RS (GMSIDFFWL).

Prezados

Solicito as regras abaixo:

UG: SUPSD
Código Serviço: 33393
Ambiente: Produção
Duração da regra: indeterminada

Solicito abertura de regra conforme especificado abaixo:

Das máquinas

Origem o grupo: SUPDE/DEFLA/DE307

Destino:
161.148.236.41, 161.148.236.42, 161.148.236.43, 161.148.236.44, 161.148.236.45, 161.148.236.46, 161.148.236.47, 161.148.236.48  

Porta: 
1025

Objetivo: Inclusão do funcionário do desenvolvimento Pedro Rogério Muniz Ferreira (SUPDE) - CPF: 78161550506 - teve sua estação de trabalho substituída.


--=====================================================================================================
julio

63872269372 - cpf Henrique - liberar usuario - escreve e ler tudo 
espaco em disco verificar com julio.

--======================================================================================================
modelo para Grant sql server
use [dbpro_10395_sna]
GO
GRANT DELETE TO [sas94pcoaffcmmd_cli]
GO
use [dbpro_10395_sna]
GO
GRANT INSERT TO [sas94pcoafsnamd_cli]
GO
use [dbpro_10395_fcm]
GO
GRANT SELECT TO [sas94pcoaffcmmd_cli]
GO

--======================================================================================================
2017SS/0000725717

classificação firewall
08159 \ 0815906 \ 081590601
Descrição: Por favor, encaminhar para equipe de FIREWALL de BRASÍLIA como requisição de serviço RS (GMSIDFFWL).

Prezados

Solicito as regras abaixo:

UG: SUPSD
Código Serviço: 10171
Ambiente: Produção
Duração da regra: indeterminada

Solicito abertura de regra conforme especificado abaixo:

Das máquinas

Origem 1: 

161.148.242.24  dfcdsrvbi0034
161.148.242.18  dfcdsrvbi0028
161.148.242.11  dfcdsrvbi0015
161.148.242.12  dfcdsrvbi0018
161.148.242.13  dfcdsrvbi0019
161.148.242.22  dfcdsrvbi0032
161.148.242.25  dfcdsrvbi0035
161.148.242.28  dfcdsrvbi0038
161.148.242.51  dfcdsrvbi0041
161.148.242.50  dfcdsrvbi0016

Destino 1 :
161.148.236.41, 161.148.236.42, 161.148.236.43, 161.148.236.44, 161.148.236.45, 161.148.236.46, 161.148.236.47, 161.148.236.48, 161.148.236.49 

Porta:
1025

e 

Origem 2 : 

161.148.242.24  dfcdsrvbi0034
161.148.242.18  dfcdsrvbi0028
161.148.242.11  dfcdsrvbi0015
161.148.242.12  dfcdsrvbi0018
161.148.242.13  dfcdsrvbi0019
161.148.242.22  dfcdsrvbi0032
161.148.242.25  dfcdsrvbi0035
161.148.242.28  dfcdsrvbi0038
161.148.242.51  dfcdsrvbi0041
161.148.242.50  dfcdsrvbi0016

Destino 2: 161.148.236.64, 161.148.236.65, 161.148.236.69

Porta: 
1433

Objetivo: Execução de rotinas de publicão entre o DWTG e O Hadoop GOVI DATA.

--===========================================================================================
--MAFRA CURSO SQL SERVER 

aplicativos de destaque: 

SQLDIAG - rastreamento para ver o funcionamento do servidor sql no windows.
PROFILER  - rastreamento gráfico de dados do sql server
BCP    - ferramenta para importação e exportação de txt
SQLCMD - linhas de comando do sql

- tcp-ip -- para usar com clientes na rede
- shared memory -- para usar se o banco for local.  - mais rápido por vai buscar na memória ram


--===========================================================================================
1----------------------------- SALDO GERAL DO SIAFI -----------------------------
2------------------------------- MAS O BATIMENTO --------------------------------
3-VER O QUE VER MAIS PODE SER FEITA----------------------------------------------
4-Relatório de Batimento do Sql Server com o Teradata - sugestão Alisson e Ronaldo
--===========================================================================================
2017SS/0000751446

10.32.1.128 ---- 161.148.236.64/65/69 - 1433

Descrição: Por favor, encaminhar para equipe de FIREWALL de BRASÍLIA como requisição de serviço RS (GMSIDFFWL).

Prezados

Solicito as regras abaixo:

UG: SUPSD
Código Serviço: 10171
Ambiente: Produção
Duração da regra: indeterminada
Regra: bidirecional

Solicito abertura de regra conforme especificado abaixo:

Das máquinas

Origem: 
10.32.1.128


Destino: 161.148.236.64, 161.148.236.65, 161.148.236.69.

Porta: 
1433

Objetivo: Execução de rotinas de publicão entre o DWTG e O Hadoop GOVI DATA.
--===============================================================================================================================
para mandar relatórios de batimentos -  lista da sunaf: lista-gestor-dwtg@grupos.serpro.gov.br 

Reunião 22/09/2017 - TG - 
1-vdb - sunaf/Anderson - levantar tabelas para VDB - Dass
2-producao entrega -- DASS - acompanhamento padrão --- talvez uma área de entrega ou Daniel.......: ciência para todos e nós ok nós mesmos vamos agir se de diferença
 -email para Ana e Dass Daniel entrega  
3-plano b 1 momento nós e depois a carga do hadoop vai passar para SD 
4-ANS : do Dass --- nao esta em maos 
5-licenças SQL server - -- está pendente Pedro - fica pendente para receber resposta
6-entrada em Produção: sexta -feira que vem para resolver. entrada 29/09/2017

--===============================================================================================================================
2017RDM/0000013126
Prezados, 

Encaminhar para GMCDDFCTM

Prezado, Favor alterar o servidor de todos os blocos para árvore do código de serviço 10171 conforme servidor abaixo

------------------------------------------------------------------------------------------------
Código de Serviço: 10171
Path: C:\CONTROLM\in\
Server: 10.30.92.75 - dfcdsrvv0035

0800-707-8484 - HETZ LOCALIZA - para segurado tokio marine 80,00 
0800-703-7150m- jeep


colocar no pghba 161.148.236.34  para accessar 161.148.236.95 
-==============================================================================
--para waldemar - executado
use [dbpro_10395_sna]
GO
GRANT INSERT TO [sas94pcoafsnamd_cli]
GO

visualmente você pode ver em propriedades do banco ou do usuário e em securities >>> search >>> a opção do meio

17098084172

--VIEW_CGU============================================================================

01 - 08:00 minutos 		Nova:05 exercicios: 10:24 min 
02 - 04:57 minutos		Nova 05 exercícios: 10:00 min 
03 - 01:28 minutos		Nova 05 exercícios: 06:24 min 
04 - 10:05 MINUTOS		Nova 05 exercícios: 20:55 min 
05 - 02:37 minutos		Nova 05 exercícios: 05:12 min 
06 - 03:50 horas e minutos	Nova 05 exercícios: 08:59 min 
06 - 				Nova 01 exercício : 01:14 min 2016 
07 - 02:26 minutos		Nova 05 exercícios: 12:10 min
08 - 48:22 minutos		Nova 05 exercícios:   :   min 
08 -				Nova 01 exercício :   :   min 2016 
09 - 22:26 minutos		Nova 05 exercícios: 30:36 min     nova/nova: 10:06 min 
09 - 				Nova 01 exercício : 16:55 min 2016 
10 - 01:38 horas/minutos	Nova 01 exercícios:   :   min 2017
10 -   :   horas/minutos	Nova 01 exercícios:   :   min 2018
10 -                            Nova 01 exercício :   :   min 2016 
11 - 01:00 minuto		Nova 05 exercícios: 06:22 min 
12 - 00:56 segundos		Nova 05 exercícios: 06:52 min * rodar novamente
13 - 04:04 minutos          	Nova 05 exercícios: 07:03 min * rodar novamente
14 - 02:17 minutos 		Nova 05 exercícios: 05:36 min * rodar novamente
15 - 04:17 minutos		Nova 05 exercícios: 01:09 horas/minutos
16 - 00:22 segundos		Nova 05 exercícios: 17:54 min * rodar novamente
17 - 00:50 segundos		Nova 05 exercícios: 28:40 min 
18 - 02:49 horas e minutos	Nova 05 exercícios:   :   horas/minutos %%%%muito lenta para rodar no sql colunar, testar na máquia  nova depois, pois rodei no teradata e demorou 40 minutos.
18 - 				Nova 01 exercício:    :   horas/minutos 2016
18-01  				Nova 01 mês:	    52:04 minutos 2016
18-02  				Nova 01 mês:	    52:04 minutos 2016 testar depois
18-03  				Nova 01 mês:	    52:04 minutos 2016 testar depois
18-04  				Nova 01 mês:	    52:04 minutos 2016 testar depois
18-05  				Nova 01 mês:	    52:04 minutos 2016 testar depois
18-06  				Nova 01 mês:	    52:04 minutos 2016 testar depois
18-07  				Nova 01 mês:	    52:04 minutos 2016 testar depois
18-08  				Nova 01 mês:	    52:04 minutos 2016 testar depois
18-09  				Nova 01 mês:	    52:04 minutos 2016 testar depois
18-10  				Nova 01 mês:	    52:04 minutos 2016 testar depois
18-11  				Nova 01 mês:	    52:04 minutos 2016 testar depois
18-12  				Nova 01 mês:	    52:04 minutos 2016 testar depois
18-13-14-0 			Nova 01 mês:	    15:24 horas/minutos 2016 modificar 
18 - 				Nova 01 dia      :  03:34 minutos dia 25
19 - 00:12 segundos		Nova 05 exercícios: 01:31 horas/minutos
20 - 		 		Nova 05 exercícios: 20:45 minutos
21 - 				Nova 05 exercícios: 06:20 minutos
22 -              		Nova 05 exercícios: 02:22 minutos
23 - 				Nova 05 exercícios: 15:47 minutos 
24 - 				Nova >= 2013: 05:16 minutos/segundos 
--====================================
WV_CGU_MOV_DIARIO_NECCOR_DOC_LANCAMENTO_DF_01
WV_CGU_MOV_DIARIO_NECCOR_DOC_LANCAMENTO_DR_02
WV_CGU_MOV_DIARIO_NECCOR_DOC_LANCAMENTO_GF_03
WV_CGU_MOV_DIARIO_NECCOR_DOC_LANCAMENTO_GP_04
WV_CGU_MOV_DIARIO_NECCOR_DOC_LANCAMENTO_GR_05
WV_CGU_MOV_DIARIO_NECCOR_DOC_LANCAMENTO_NE_06
WV_CGU_MOV_DIARIO_NECCOR_DOC_LANCAMENTO_NE_06_2016
WV_CGU_MOV_DIARIO_NECCOR_DOC_LANCAMENTO_NL_07
WV_CGU_MOV_DIARIO_NECCOR_DOC_LANCAMENTO_NS_08
WV_CGU_MOV_DIARIO_NECCOR_DOC_LANCAMENTO_NS_08_2016
WV_CGU_MOV_DIARIO_NECCOR_DOC_LANCAMENTO_OB_09
WV_CGU_MOV_DIARIO_NECCOR_DOC_LANCAMENTO_OB_09_2016
WV_CGU_MOV_DIARIO_MOV_LIQ_CONTAS_NECCOR_10_2016
WV_CGU_MOV_DIARIO_MOV_LIQ_CONTAS_NECCOR_10_2017
WV_CGU_MOV_DIARIO_MOV_LIQ_CONTAS_NECCOR_10_2018
WV_CGU_MOV_DIARIO_MOV_LIQ_CONTAS_NECCOR_110_2016
WV_CGU_TRANSFERENCIA_EMPENHO_11
WV_LB_LISTA_DE_BANCOS_12
WV_LC_LISTA_DE_CREDORES_13
WV_LF_LISTA_DE_FATURAS_14
WV_LI_LISTA_DE_ITENS_15
WV_LP_LISTA_DE_PRECATORIOS_16
WV_CGU_EXEC_ORC_PARASOF_17
WV_CGU_Mov_Diario_MovLiq_Contas_NECCor_Transacao_Dia_18
WV_CGU_MOV_DIARIO_MOVLIQ_CONTAS_NECCOR_TRANSACAO_DIA_18_201801
WV_CGU_MOV_DIARIO_MOVLIQ_CONTAS_NECCOR_TRANSACAO_DIA_18_201802
WV_CGU_MOV_DIARIO_MOVLIQ_CONTAS_NECCOR_TRANSACAO_DIA_18_201803
WV_CGU_MOV_DIARIO_MOVLIQ_CONTAS_NECCOR_TRANSACAO_DIA_18_201804
WV_CGU_MOV_DIARIO_MOVLIQ_CONTAS_NECCOR_TRANSACAO_DIA_18_201805
WV_CGU_MOV_DIARIO_MOVLIQ_CONTAS_NECCOR_TRANSACAO_DIA_18_201806
WV_CGU_MOV_DIARIO_MOVLIQ_CONTAS_NECCOR_TRANSACAO_DIA_18_201807
WV_CGU_MOV_DIARIO_MOVLIQ_CONTAS_NECCOR_TRANSACAO_DIA_18_201808
WV_CGU_MOV_DIARIO_MOVLIQ_CONTAS_NECCOR_TRANSACAO_DIA_18_201809
WV_CGU_MOV_DIARIO_MOVLIQ_CONTAS_NECCOR_TRANSACAO_DIA_18_201810
WV_CGU_MOV_DIARIO_MOVLIQ_CONTAS_NECCOR_TRANSACAO_DIA_18_201811
WV_CGU_MOV_DIARIO_MOVLIQ_CONTAS_NECCOR_TRANSACAO_DIA_18_201812
WV_CGU_MOV_DIARIO_MOVLIQ_CONTAS_NECCOR_TRANSACAO_DIA_18_201813
WV_CGU_MOV_DIARIO_MOVLIQ_CONTAS_NECCOR_TRANSACAO_DIA_18_201814
WV_CGU_MOV_DIARIO_MOVLIQ_CONTAS_NECCOR_TRANSACAO_DIA_18_Zero
WV_RECEITA_EXECUTIVO_CELULA_RECEITA_19
WV_CGU_Doc_OB_Outras_20
WV_CGU_OB_Cancelamento_OB_21
WV_CGU_OB_Cancelamento_NS_22
WV_CGU_Doc_Lancamento_OB_Demais_23
WV_CGU_Doc Lançamento_OB_Sem_NECCor_24_2016
--===================================
2017SS/0000877778

Alguns campos do tipo texto, provenientes da base do SISCOAF1 (dbp_35054_coaf_ss),  estão aparecendo de forma truncada no ambiente SAS. 

Favor verificar, na base réplica do SISCOAF1, o tamanho alocado ao campo "informacoesAdicionais", da tabela "Comunicacao". Este tamanho deve ser comparado com o mesmo campo/tabela no banco de dados do SISCOAF1 de origem (produção).

Caso exista diferença entre os tamanhos deste campo, a réplica deve ser alterada de forma a refletir o banco de produção. 

Informação adicional: o problema de truncagem pode ser verificado na linha da tabela "Comunicacao", base réplica do Siscoaf1, onde idComunicacao = 13688017. Neste, podemos notar claramente o texto truncado.

--Mário
Resposta: informacoesAdicionais = Text, null na replica - REPLICA

--Assunes
Resposta: informacoesAdicionais = Text, null na replica - PRODUÇÃO

Conforme verificado à base é exatamente idêntica, mesmo por que o Sql Server que faz o espelhamento sem interferência das equipes.

--========================================================================================
2017RDM/0000015982
Prezados, 
Encaminhar para GMCDDFCTM
Prezado, Favor alterar a árvore do código de serviço 10171 para ajustar sequência de alguns scripts de carga_tabelas_agregadas conforme documento operacional em anexo. 
Obs: Os acionamentos para o plantão à esses blocos em desenvolvimento devem ser direcionados para CDGDB. 
Segue em anexo o Procedimento Operacional.
------------------------------------------------------------------------------------------------
Código de Serviço: 10171
Path: C:\CONTROLM\in\, e C:\CONTROLM\in\Carga_Siape 
Server: 161.148.236.69 - dfcdsrv0903
=========================================
161.148.236.64/65/69 - 1433
161.148.236.41 a 161.148.236.48

10.30.92.75 ---- 
161.148.236.99


classificação firewall
08159 \ 0815906 \ 081590601


Descrição: Por favor, encaminhar para equipe de FIREWALL de BRASÍLIA como requisição de serviço RS (GMSIDFFWL).

Prezados

Solicito as regras abaixo:

UG: SUPSD
Código Serviço: 10171
Ambiente: Produção
Duração da regra: indeterminada
Regra: bidirecional

Solicito abertura de regra conforme especificado abaixo:

Das máquinas

Origem: 
10.30.92.75

Destino: máquinas hadoop

Portas: 
xxxxx

Objetivo: Execução de rotinas de publicão entre o DWTG e O Hadoop GOVI DATA.


Das máquinas

Origem 1: 

161.148.242.24  dfcdsrvbi0034
161.148.242.18  dfcdsrvbi0028
161.148.242.11  dfcdsrvbi0015
161.148.242.12  dfcdsrvbi0018
161.148.242.13  dfcdsrvbi0019
161.148.242.22  dfcdsrvbi0032
161.148.242.25  dfcdsrvbi0035
161.148.242.28  dfcdsrvbi0038
161.148.242.51  dfcdsrvbi0041
161.148.242.50  dfcdsrvbi0016

Destino 1 :
161.148.236.41, 161.148.236.42, 161.148.236.43, 161.148.236.44, 161.148.236.45, 161.148.236.46, 161.148.236.47, 161.148.236.48, 161.148.236.49 

Porta:
1025

e 

Origem 2 : 

161.148.242.24  dfcdsrvbi0034
161.148.242.18  dfcdsrvbi0028
161.148.242.11  dfcdsrvbi0015
161.148.242.12  dfcdsrvbi0018
161.148.242.13  dfcdsrvbi0019
161.148.242.22  dfcdsrvbi0032
161.148.242.25  dfcdsrvbi0035
161.148.242.28  dfcdsrvbi0038
161.148.242.51  dfcdsrvbi0041
161.148.242.50  dfcdsrvbi0016

Destino 2: 161.148.236.64, 161.148.236.65, 161.148.236.69

Porta: 
1433

Objetivo: Execução de rotinas de publicão entre o DWTG e O Hadoop GOVI DATA.

1025
50070
50075	
50090	
50105	
50030	
50060	
50111

--==========================================================================================================
curso SQL SERVER
MAFRA

PROJETO BANCO NOVO TEM QUE CONTEMPLAR 18 MESES PARA FRENTE - ANALISE UM MES DE DADOS:
EXEMPLO SE  A PREVISÃO É 30 G MẼS - MULTIPLIQUE POR 18 PARA TER TRANQUILIDADE E SÓ MONITORE DEPOIS, OU SEJA
DEVER SER CRIADO 540 G NO PROJETO.


--==portas hadoop hortoworks

8088  -  yarn
50070 - ver arquivos no cluster - explorer

--=============================================================================================================
--Reunião Hadoop - para enviar para o Horton-works 
1-kerberos - 
2-portas   - 
vai ter nova reunião

--=============================================================================================================
--Passar para PRODUÇÃO -- temporário.
Error: 2018-01-03 02:43:03.35
   Code: 0x00000328
   Source: WD_SIORG Teradata Source [107]
   Description: TPT Export error encountered during Initiate phase. CLI error 207 (no message text available)
End Error

--================================================================================================================
--testar no sql server a difernça com a lançamento.

count no me 1 no sql e no teradata
count no mes 0 no sql  e no teradata  2018 

corrigir no integration
delete from wf_lancamento = id_mes_lanc = 0 and id_ano_lanc = 2018;

--=====================================================
--TUNING EM BANCOS SQL SERVER - INFORMAÇÕES NAKAMURA
--NAKAMURA FALOU TAMBÉM QUE O IDEAL EM TUNNING - TUNING É SEPARAR O SELECT GRANDE EM PEQUENOS SELECTS E DEPOIS E VENDO QUAL VAI SER MAIS DEMORADO PARA ESTUDAR.

Contato
Listas
Nome:  Eiji Takehana

Lotação:  DIDES/SUPSD/SDSTD/SDSDS

DIVISAO DE SUPORTE AO DESENVOLVIMENTO NO DIAGNOSTICO DE SISTEMAS

Regional:  SERPRO - SEDE

Funcao:   

Email:  eiji.takehana@serpro.gov.br

Telefone:  (61)2021-9648
Matrícula:  12010006

--=====================================================
SELECT distinct s.sid || ',' || s.serial# || ',@' || s.INST_ID SID_SERIAL,
         s.username,
            sq.SQL_TEXT
   FROM   gv$session s, gv$sql sq
   where s.sql_id = sq.sql_id (+)
  and (s.username like '%&usuario%' ) --or s.username is null) -- Para mostrar as sessoes do Oracle
 order by s.username


sas94pcoafsnamd_cli

--============================================================================
--rascunhos
delete from WF_LANCAMENTO where ID_ANO_LANC=2014 and ID_MES_LANC = 10 and ID_DIA_LANC = 31;


delete from WF_LANCAMENTO where ID_ANO_LANC=2014 and ID_MES_LANC = 10;

select count_big(*) from wf_lancamento where ID_ANO_LANC=2014 and ID_MES_LANC = 10;

select id_dia_lanc, count(*) from wf_lancamento (nolock) where id_ano_lanc = 2014 and id_mes_lanc = 10 group by id_dia_lanc order by 1;



-- no teradata lock row for access select * from dbcar_33393_dwtg.WF_LANCAMENTO where ID_ANO_LANC=2014 and ID_MES_LANC = 10 and ID_DIA_LANC = 31;

--============================================================================
--criação do job geneŕico_carga_lan
2018RDM/0000005086

-----============================================================================
--COLCOAR NA PASTA DE SCRIPTS COLOCAR NA SQL SERVER

--ESSE AQUI É O COMANDO DIRETO PARA ALTERAR O DONO DO ESQUEMA.
ALTER SCHEMA snadb TRANSFER OBJECT::dbo.SNA_COLUMN_DISPLAY;  
GO

--CONSEGUI FAZER OCM ESSE AQUI CRIAR UM COMANDO EM MASSA SHOW 
--PARA ALTER O DONO DO ESQUEMA. 
--DEPOIS COLOCAR NOS SCRIPTS
SELECT 'ALTER SCHEMA snadb TRANSFER OBJECT::' + '' + 'dbo.' + NAME + ';' FROM SYSOBJECTS;
go


--========================================================
----------------------------------
--WD_DOC_OB 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ALTER TABLE DBPRO_33393_DWTG.WD_DOC_OB ADD ID_LISTA_CREDOR_OB VARCHAR(23) NOT NULL DEFAULT '-9';  
ALTER TABLE DBPRO_33393_DWTG.WD_DOC_OB ADD ID_LISTA_FATURA_OB  VARCHAR(23) NOT NULL DEFAULT '-9';  
ALTER TABLE DBPRO_33393_DWTG.WD_DOC_OB ADD ID_LISTA_PREC_OB        VARCHAR(23) NOT NULL DEFAULT '-9';  
ALTER TABLE DBPRO_33393_DWTG.WD_DOC_OB ADD ID_LISTA_BANCO_OB     VARCHAR(23) NOT NULL DEFAULT '-9';  

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--WD_DOC_NE
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ALTER TABLE DBPRO_33393_DWTG.WD_DOC_NE ADD ID_LISTA_ITENS_NE VARCHAR(23) NOT NULL DEFAULT '-9';

2.2. Será necessário também criá-las no SQL Server Colunar (espelho de Produção).

--========================================================
--Falar com Thiago--chefia 29/03/2018

--SS - 2018SS/0000270813
audio update novamente da lançamento total no teradata
foi realizado no teradata em 14/03/2018
pode já ter contemplado o 2013 e 2014.
--Thiago como conferir.
14/03/2018 feito tudo em carga..........2013 já estará contemplado 
14-15-16-17

18:000 milhões de atualizações.

--========================================================
--fazer hoje 29/03/2018

1. Dados do gestor do tema:
    1.1. Nome: Andersson Sousa
    1.2. E-mail: andersson.sousa@serpro.gov.br
    1.3. Ramal: (61) 7923
    1.4. URC: DIRCL/SUNGE/GESAN/GEAEF
    1.5. Codigo de Servico: 33393
    1.6. Nome do Servico: DW-TG (Tesouro Gerencial)

2. Demanda:

Por favor, abrir um acionamento para a equipe de banco da SUPCD em atendimento à implantação da demanda TG-1469224, conforme texto abaixo.

2.1. Solicito a criação das colunas abaixo nas tabelas WD_DOC_OB e WD_DOC_NE em Homologação (DBHOM_33393_DWTG)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--WD_DOC_OB
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ALTER TABLE DBHOM_33393_DWTG.WD_DOC_OB ADD ID_LISTA_CREDOR_OB VARCHAR(23) NOT NULL DEFAULT '-9';  
ALTER TABLE DBHOM_33393_DWTG.WD_DOC_OB ADD ID_LISTA_FATURA_OB  VARCHAR(23) NOT NULL DEFAULT '-9';  
ALTER TABLE DBHOM_33393_DWTG.WD_DOC_OB ADD ID_LISTA_PREC_OB        VARCHAR(23) NOT NULL DEFAULT '-9';  
ALTER TABLE DBHOM_33393_DWTG.WD_DOC_OB ADD ID_LISTA_BANCO_OB     VARCHAR(23) NOT NULL DEFAULT '-9';  

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--WD_DOC_NE
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ALTER TABLE DBHOM_33393_DWTG.WD_DOC_NE ADD ID_LISTA_ITENS_NE VARCHAR(23) NOT NULL DEFAULT '-9';

--========================================================
--COUNT POR GRUPO MOSTRANDO O ANO E TUDO MAIS COLOCAR NO SCRIPTS SQL SERVER E DEPOIS NO CDTD TERADATA
SELECT ID_ANO, count(*) 
  FROM [dbo].[WV_CGU_Mov_Diario_MovLiq_Contas_NECCor_Transacao_Dia_18] group by id_ano order by id_ano;


--================================================================
--modelo para colocar o varchar e o cast em troca do to_char do teradata -
colocar na pasta de script do sql colunar

SELECT
COUNT(*)
FROM WF_LANCAMENTO L, WD_CONTA_CORRENTE CC
WHERE 1 = 1 
AND L.ID_ANO_LANC IN (2018)
AND L.ID_TP_CCOR IN (7)
AND L.IN_VALIDADE_CCOR <> 'I'
AND cast((L.ID_CONTA_CONTABIL_LANC), varchar) LIKE '1421292%'
AND L.ID_CONTA_CORRENTE_SK = CC.ID_CONTA_CORRENTE_SK
AND L.ID_CATEGORIA_ECONOMICA_NADE <> 4 
AND L.ID_GRUPO_DESPESA_NADE <> 4
AND L.ID_MOAP_NADE <> 90
AND L.ID_ELEMENTO_DESPESA_NADE <> 52
AND L.ID_SUBITEM_NADE <> CC.NR_CONTA_CORRENTE;

--======================================================================
--Por SUPDE SAMUEL -- esse script é um update feito dentro do SQL SERVER
--contudo ele só foi possível executar pois mudamos o from para abaixo do set
--e também a função cast em substituição ao TO_CHAR do Teradata.
--por Nakamura Sql Server que ajudou e executou.


UPDATE
    WF_LANCAMENTO
SET
    ID_CATEGORIA_ECONOMICA_NADE = 4,
    ID_GRUPO_DESPESA_NADE = 4,
    ID_MOAP_NADE = 90,
    ID_ELEMENTO_DESPESA_NADE = 52,
    ID_SUBITEM_NADE = CC.NR_CONTA_CORRENTE

FROM
    WD_CONTA_CORRENTE CC
WHERE WF_LANCAMENTO.ID_ANO_LANC = 2018
AND WF_LANCAMENTO.ID_TP_CCOR IN (7)
AND WF_LANCAMENTO.IN_VALIDADE_CCOR <> 'I'
AND cast(WF_LANCAMENTO.ID_CONTA_CONTABIL_LANC as varchar) LIKE '1231108%'
AND WF_LANCAMENTO.ID_CONTA_CORRENTE_SK = CC.ID_CONTA_CORRENTE_SK
AND WF_LANCAMENTO.ID_CATEGORIA_ECONOMICA_NADE = 3
AND WF_LANCAMENTO.ID_GRUPO_DESPESA_NADE = 3
AND WF_LANCAMENTO.ID_MOAP_NADE = 90
AND WF_LANCAMENTO.ID_ELEMENTO_DESPESA_NADE = 30;

--=====================================================================

--O original era este no Teradata

UPDATE
    DBCAR_33393_DWTG.WF_LANCAMENTO
FROM
    DBCAR_33393_DWTG.WD_CONTA_CORRENTE CC
SET
    ID_CATEGORIA_ECONOMICA_NADE = 4,
    ID_GRUPO_DESPESA_NADE = 4,
    ID_MOAP_NADE = 90,
    ID_ELEMENTO_DESPESA_NADE = 52,
    ID_SUBITEM_NADE = CC.NR_CONTA_CORRENTE
WHERE WF_LANCAMENTO.ID_ANO_LANC = 2018
AND WF_LANCAMENTO.ID_TP_CCOR IN (7)
AND WF_LANCAMENTO.IN_VALIDADE_CCOR <> 'I'
AND TO_CHAR(WF_LANCAMENTO.ID_CONTA_CONTABIL_LANC) LIKE '1231108%'
AND WF_LANCAMENTO.ID_CONTA_CORRENTE_SK = CC.ID_CONTA_CORRENTE_SK
AND WF_LANCAMENTO.ID_CATEGORIA_ECONOMICA_NADE = 3
AND WF_LANCAMENTO.ID_GRUPO_DESPESA_NADE = 3
AND WF_LANCAMENTO.ID_MOAP_NADE = 90
AND WF_LANCAMENTO.ID_ELEMENTO_DESPESA_NADE = 30;




--===================================================================
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
05/04/2018 - RODAR FINAL DE SEMANA - DEMANDA 
2018SS/0000289876


Mário,
   Segue os comandos a serem executados na WF_LANCAMENTO do Banco de Dados SQL Colunar.
   Junto a cada instrução segue também o número de linhas afetadas pelo comando UPDATE e o comando SQL de conferência, que deverá retornar 0 linhas para cada uma das consultas.

Ats.

---------------------------------------------- 2014 ----------------------------------------------

---------------------------------------------- SQL 1
-- Quantidade de registros afetados no SQL 1: 251.876
UPDATE
    WF_LANCAMENTO
SET
    ID_CATEGORIA_ECONOMICA_NADE = 4,
    ID_GRUPO_DESPESA_NADE = 4,
    ID_MOAP_NADE = 90,
    ID_ELEMENTO_DESPESA_NADE = 52,
    ID_SUBITEM_NADE = CC.NR_CONTA_CORRENTE
FROM
    WD_CONTA_CORRENTE CC
WHERE WF_LANCAMENTO.ID_ANO_LANC = 2014
AND WF_LANCAMENTO.ID_TP_CCOR IN (7)
AND WF_LANCAMENTO.IN_VALIDADE_CCOR <> 'I'
AND CAST((WF_LANCAMENTO.ID_CONTA_CONTABIL_LANC) as VARCHAR) LIKE '1421292%'
AND WF_LANCAMENTO.ID_CONTA_CORRENTE_SK = CC.ID_CONTA_CORRENTE_SK;

-- Conferência SQL 1: Deverá retornar 0 registros
SELECT COUNT(*)
FROM WF_LANCAMENTO L, WD_CONTA_CORRENTE CC
WHERE L.ID_ANO_LANC = 2014
AND L.ID_TP_CCOR IN (7)
AND L.IN_VALIDADE_CCOR <> 'I'
AND CAST((L.ID_CONTA_CONTABIL_LANC) as VARCHAR) LIKE '1421292%'
AND L.ID_CONTA_CORRENTE_SK = CC.ID_CONTA_CORRENTE_SK
AND L.ID_CATEGORIA_ECONOMICA_NADE <> 4 
AND L.ID_GRUPO_DESPESA_NADE <> 4
AND L.ID_MOAP_NADE <> 90
AND L.ID_ELEMENTO_DESPESA_NADE <> 52
AND L.ID_SUBITEM_NADE <> CC.NR_CONTA_CORRENTE;

---------------------------------------------- SQL 2
-- Quantidade de registros afetados: 155.478
UPDATE
    WF_LANCAMENTO
SET
    ID_CATEGORIA_ECONOMICA_NADE = 3,
    ID_GRUPO_DESPESA_NADE = 3,
    ID_MOAP_NADE = 90,
    ID_ELEMENTO_DESPESA_NADE = 30,
    ID_SUBITEM_NADE = CC.NR_CONTA_CORRENTE
FROM
    WD_CONTA_CORRENTE CC
WHERE WF_LANCAMENTO.ID_ANO_LANC = 2014
AND WF_LANCAMENTO.ID_TP_CCOR IN (7)
AND WF_LANCAMENTO.IN_VALIDADE_CCOR <> 'I'
AND CAST((WF_LANCAMENTO.ID_CONTA_CONTABIL_LANC) as VARCHAR) LIKE '113140%'
AND WF_LANCAMENTO.ID_CONTA_CORRENTE_SK = CC.ID_CONTA_CORRENTE_SK;

-- Conferência SQL 2: Deverá retornar 0 registros

SELECT COUNT(*) 
FROM WF_LANCAMENTO L, WD_CONTA_CORRENTE CC
WHERE 1 = 1 
AND L.ID_ANO_LANC = 2014
AND L.ID_TP_CCOR IN (7)
AND L.IN_VALIDADE_CCOR <> 'I'
AND CAST((L.ID_CONTA_CONTABIL_LANC) as VARCHAR) LIKE '113140%'
AND L.ID_CONTA_CORRENTE_SK = CC.ID_CONTA_CORRENTE_SK
AND L.ID_CATEGORIA_ECONOMICA_NADE <> 3 
AND L.ID_GRUPO_DESPESA_NADE <> 3
AND L.ID_MOAP_NADE <> 90
AND L.ID_ELEMENTO_DESPESA_NADE <> 30
AND L.ID_SUBITEM_NADE <> CC.NR_CONTA_CORRENTE;

---------------------------------------------- SQL 3
-- Quantidade de registros afetados: 2.213.701
UPDATE
    WF_LANCAMENTO
SET
    ID_CATEGORIA_ECONOMICA_NADE = 3,
    ID_GRUPO_DESPESA_NADE = 3,
    ID_MOAP_NADE = 90,
    ID_ELEMENTO_DESPESA_NADE = 30,
    ID_SUBITEM_NADE = CC.NR_CONTA_CORRENTE
FROM
    WD_CONTA_CORRENTE CC
WHERE WF_LANCAMENTO.ID_ANO_LANC = 2014
AND WF_LANCAMENTO.ID_TP_CCOR IN (7)
AND WF_LANCAMENTO.IN_VALIDADE_CCOR <> 'I'
AND CAST((WF_LANCAMENTO.ID_CONTA_CONTABIL_LANC) as VARCHAR) LIKE '113180%'
AND WF_LANCAMENTO.ID_CONTA_CORRENTE_SK = CC.ID_CONTA_CORRENTE_SK;

-- Conferência SQL 3: Deverá retornar 0 registros
SELECT COUNT(*) 
FROM WF_LANCAMENTO L, WD_CONTA_CORRENTE CC
WHERE 1 = 1 
AND L.ID_ANO_LANC = 2014
AND L.ID_TP_CCOR IN (7)
AND L.IN_VALIDADE_CCOR <> 'I'
AND CAST((L.ID_CONTA_CONTABIL_LANC) as VARCHAR) LIKE '113180%'
AND L.ID_CONTA_CORRENTE_SK = CC.ID_CONTA_CORRENTE_SK
AND L.ID_CATEGORIA_ECONOMICA_NADE <> 3 
AND L.ID_GRUPO_DESPESA_NADE <> 3
AND L.ID_MOAP_NADE <> 90
AND L.ID_ELEMENTO_DESPESA_NADE <> 30
AND L.ID_SUBITEM_NADE <> CC.NR_CONTA_CORRENTE;

---------------------------------------------- SQL 4
-- Quantidade de registros afetados: 7.521
UPDATE
    WF_LANCAMENTO
SET
    ID_CATEGORIA_ECONOMICA_NADE = 3,
    ID_GRUPO_DESPESA_NADE = 3,
    ID_MOAP_NADE = 90,
    ID_ELEMENTO_DESPESA_NADE = 30,
    ID_SUBITEM_NADE = CC.NR_CONTA_CORRENTE
FROM
    WD_CONTA_CORRENTE CC
WHERE 1=1
AND WF_LANCAMENTO.ID_ANO_LANC = 2014
AND WF_LANCAMENTO.ID_TP_CCOR IN (7)
AND WF_LANCAMENTO.IN_VALIDADE_CCOR <> 'I'
AND CAST((WF_LANCAMENTO.ID_CONTA_CONTABIL_LANC) as VARCHAR) LIKE '113181%'
AND WF_LANCAMENTO.ID_CONTA_CORRENTE_SK = CC.ID_CONTA_CORRENTE_SK;

-- Conferência SQL 4: Deverá retornar 0 registros
SELECT COUNT(*) 
FROM WF_LANCAMENTO L, WD_CONTA_CORRENTE CC
WHERE 1 = 1 
AND L.ID_ANO_LANC = 2014
AND L.ID_TP_CCOR IN (7)
AND L.IN_VALIDADE_CCOR <> 'I'
AND CAST((L.ID_CONTA_CONTABIL_LANC) as VARCHAR) LIKE '113181%'
AND L.ID_CONTA_CORRENTE_SK = CC.ID_CONTA_CORRENTE_SK
AND L.ID_CATEGORIA_ECONOMICA_NADE <> 3 
AND L.ID_GRUPO_DESPESA_NADE <> 3
AND L.ID_MOAP_NADE <> 90
AND L.ID_ELEMENTO_DESPESA_NADE <> 30
AND L.ID_SUBITEM_NADE <> CC.NR_CONTA_CORRENTE;

---------------------------------------------- 2015 A 2018 ----------------------------------------------

---------------------------------------------- SQL 5
-- Quantidade de registros afetados: 629.534 
UPDATE
    WF_LANCAMENTO
SET
    ID_CATEGORIA_ECONOMICA_NADE = 4,
    ID_GRUPO_DESPESA_NADE = 4,
    ID_MOAP_NADE = 90,
    ID_ELEMENTO_DESPESA_NADE = 52,
    ID_SUBITEM_NADE = CC.NR_CONTA_CORRENTE
FROM
    WD_CONTA_CORRENTE CC
WHERE 1=1
AND WF_LANCAMENTO.ID_ANO_LANC BETWEEN 2015 AND 2018
AND WF_LANCAMENTO.ID_TP_CCOR IN (7)
AND WF_LANCAMENTO.IN_VALIDADE_CCOR <> 'I'
AND CAST((WF_LANCAMENTO.ID_CONTA_CONTABIL_LANC) as VARCHAR) LIKE '1231108%'
AND WF_LANCAMENTO.ID_CONTA_CORRENTE_SK = CC.ID_CONTA_CORRENTE_SK
AND WF_LANCAMENTO.ID_CATEGORIA_ECONOMICA_NADE = 3
AND WF_LANCAMENTO.ID_GRUPO_DESPESA_NADE = 3
AND WF_LANCAMENTO.ID_MOAP_NADE = 90
AND WF_LANCAMENTO.ID_ELEMENTO_DESPESA_NADE = 30;

-- Conferência SQL 5: Deverá retornar 0 registros
SELECT COUNT(*) 
FROM WF_LANCAMENTO L, WD_CONTA_CORRENTE CC
WHERE 1 = 1 
AND L.ID_ANO_LANC IN(2015,2016,2017,2018)
AND L.ID_MES_LANC = 1
AND L.ID_TP_CCOR IN (7)
AND L.IN_VALIDADE_CCOR <> 'I'
AND CAST((L.ID_CONTA_CONTABIL_LANC) as VARCHAR) LIKE '1231108%'
AND L.ID_CONTA_CORRENTE_SK = CC.ID_CONTA_CORRENTE_SK
AND L.ID_CATEGORIA_ECONOMICA_NADE <> 4 
AND L.ID_GRUPO_DESPESA_NADE <> 4
AND L.ID_MOAP_NADE <> 90
AND L.ID_ELEMENTO_DESPESA_NADE <> 52
AND L.ID_SUBITEM_NADE <> CC.NR_CONTA_CORRENTE;

Samuel Sales Pinheiro Wanderley
SUPDE/DEFLA/DE307
(85) 4008.2812
samuel.wanderley@serpro.gov.br

--====================================================================
2018SS/0000360176

Prezados, 
Encaminhar para GMCDDFCTM
Prezado, Favor reazliar um teste de conexão do controlm com o bloco do Sql Colunar na árvore do código de serviço 10171, alterando o hostname pelo ip do cluster e realizando a execução do Blocofinal2.dtsx
Código de Serviço: 10171
Path: F:\CONTROLM\in\
Server: 161.148.236.58 a ser executado o teste


------------------------------------------------------------------------------------------------
2018-05-10
--COLOCAR EM SQL SERVER PASTAS E NAS TAREFAS
lembrar para futuras instalações sql server

rever o tipo de segurnaça no propriedade do projeto tem que colocar a senha igual aos blocos e depois converter para modelo de desenvolvimento e também conferir se o banco está realmente a versão correta exemplo sql server 2016 nas propriedade do projeto em general. 

--====================================================================
--COLOCAR EM SQL SERVER PASTAS E NAS TAREFAS
--ver por banco conexão e atenção ao open_tran que significa em transação e status que está informando se está em slleping, runing e cmd como awating command;
select db_name(dbid), * from master..sysprocesses where loginame = 'sf76pgvdtmd';

--==========================================================================


2018RDM/0000008888
	

Prezados, 

Encaminhar para GMCDDFCTM

Prezado, Favor alterar o path da árvore do código de serviço 10171, pois será feita uma migração para um novo servidor do sql server, conforme documento operacional em anexo. 

Obs: Os acionamentos para o plantão à esses blocos em desenvolvimento devem ser direcionados para CDFAD.

Segue em anexo o Procedimento Operacional.

------------------------------------------------------------------------------------------------
Código de Serviço: 10171
Path: F:\CONTROLM\in\, e F:\CONTROLM\in\Carga_Siape 
Server: 161.148.236.69
=========================================
--ABERTURA de SS PARA O RELAY 
2018SS/0000409837
GMCDDFRELAY
classificação relay
CD \ CDSS \ CDSSCE \ CDSSCERE \ CDSSCEREAEMA


Por favor, encaminhar para GMCDDFRELAY

Solicito incluir no sender mail-apl.serpro.gov.br para os seguintes endereços: 161.148.236.52 e 161.148.236.56

Nome da Aplicação...........: ﻿Réplica DWTG do Teradata para Sql Colunar
Código de Serviço	    : 10171	 
Qual o objetivo da aplicação: Envio de Comunicação e envios de relatorios para lista de gestores
Unidade de Negócio..........: SUPSD
Responsável pela aplicação..: Ana Paula Tolentino 
Telefone responsável........: 9188
Email responsável...........: ana-paula.tolentino@serpro.gov.br
Endereço de e-mail utilizado pela aplicação como dwpub@serpro.gov.br


===================================================================================

Descrição: Por favor, encaminhar para equipe de FIREWALL de BRASÍLIA como requisição de serviço RS (GMSIDFFWL).

Prezados

Solicito as regras abaixo:

UG: SUPSD
Código Serviço: xxxxxxxxx
Ambiente: Produção
Duração da regra: indeterminada

Solicito abertura de regra conforme especificado abaixo:

Regra:
IP origem: 10.30.92.75
Ip Destinos: 161.148.242.46
Porta: 22

Objetivo: Execução de rotinas de publicão entre o DWTG e o Data Lake do Hadoop.

--=================================================================================
máquinas sql server
161.148.236.69 - cluster - scan ou vip 
161.148.236.52 - máquina 1 - DFCDSRV1022
161.148.236.56 - máquina 2 - DFCDSRV1023


--===============================================================================
Thiago, 

IP: 161.148.236.69 - cluster

Estamos com problemas no banco Sql Colunar na madrugada quando é feita a Carga/publicação do Teradata para o Sql. 

O que ocorre é que com a migração para as máquinas novas está acontecendo uma queda do banco no momento que inicia a referida carga. Essa queda é contornada com a inicialização do banco que dura por volta de 3 horas depois.

Nossa carga que terminaria aproximadamente todos os dias por volta das 02:30 está finalizando por volta de 05:03 a 06:00.  

Tanto nossa equipe quanto à equipe do Sql Server está tentando resolver o problema, contudo ainda não achamos à solução do mesmo.

Em tempo, ainda informo que a produção está nos acionando diariamente no plantão do banco DW para que seja resolvido à situação, porém nem a nossa equipe nem a equipe do Sql Sever tem a pronta solução. No entanto a produção já sabe contornar o problema para que seja publicado os dados de cada dia.

O que peço é que façamos uma reunião para alinhar os próximos passos para tentar resolver o problema de forma definitiva.

att, 


PROBLEMA ERA EXTENDER A MEMÓRIA DO SISTEMA OPERACIONAL.

--===============================================================================
10.30.6.2 - SISCOAF 1 - REPLICA DO COAF
DFCDDOM001/CPF

--==========================================================================
indice e tabelas na dba_segments
partiçoes e index na dba_tab_partitions e dba_ind_partitions

por albernaz para ver se tem partições em mais de uma tablespace.
select partition_name, table_name, tablespace_name from dba_tab_partitions where table_owner = 'COBR' and table_name = 'XXXXXXXXX';
============================================================================


Prezados, 

Encaminhar para GMCDDFCTM

Prezado, Favor alterar o path da árvore do código de serviço 10171, pois será feita uma migração para um novo servidor do sql server, conforme documento operacional em anexo. 

Obs: Os acionamentos para o plantão à esses blocos em desenvolvimento devem ser direcionados para CDFAD.

Segue em anexo o Procedimento Operacional.


Prezados, 
Encaminhar para GMCDDFCTM
Prezado, Favor colocar em HOLD a árvore do código de serviço 33393 e 10171 até segunda ordem. 
no dia de hoje 16/11/2018. 

Obs: A mesma será liberada em momento oportuno 
 ser direcionados para CDGDB. 
Segue em anexo o Procedimento Operacional.
------------------------------------------------------------------------------------------------
Código de Serviço: 10171
Path: C:\CONTROLM\in\, e C:\CONTROLM\in\Carga_Siape 
Server: 161.148.236.69 - dfcdsrv0903


-==================================================
BACKUP ESTRUTURA dos blocos do INTEGRATION SERVICE 
backup estrutura do banco dbpro_33393_dwtg encontra-se na pasta de f:\CONTROLM/BACKUP no ip 161.148.236.69 
e fora da máquia 

-==================================================

Dica para fazer Backup dentro do sgbd Sql Server ..
OBS: para ddl em massa tipo pegar todas as tabelas ou todas views ou o próprio banco inteiro vá neste menu abaixo:

1-Clique com o botão direito em cima do banco que deseja fazer o backup ou pegar a ddl ==>> tasks ==>> Generate scripts ==>> next ==>> escolha se é o banco todo ou tabelas ou views ou users ou schemas ====>> next ==>> obs: tem informações interessantes no botão Advanced como por exemplo fazer backup ou somente pegar estrurura ==>>> depois é só next e ele irá copiar no local indicado.
--===============================================================












