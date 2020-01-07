Série da semana: Primeiros passos no Flutter

Veja mais
Aprenda
STREAMING

Buscar
 
ASSINE
Login
Artigo
Criação de Triggers no Oracle
Os livros disponíveis no mercado voltados para programação Oracle, inclusive a documententação oficial, são abrangentes e neles contém uma grande quantidade de informações, que num primeiro momento podem dificultar o aprendizado da linguagem PL/SQL. Neste artigo, sem dúvida, temos apenas o essencial para a criação de Database triggers no Oracle, para que esta experiência seja rápida e direta.
4
4
 
Marcar como lido
 
Anotar
 
Imprimir
Database Trigger
 

As triggers assim como as stored procedures são armazenadas do banco de dados e podem ser compostas de instruções SQL e PL/SQL. Entretanto, stored procedure e triggers diferem na forma como estes são acionados. Uma stored procedure é explicitamente acionda por um usuário, aplicação ou trigger. As triggers são implicitamente disparadas pelo Oracle quando um determinado evento ocorre. O disparo da trigger independe do usuário ou aplicação que gerou o evento.

  
        Uma database trigger é subprograma associado a uma tabela, view ou evento. A traigger pode ser acionada uma vez quando um determinado evento ocorre ou várias vezes para cada linha afetada por uma instrução INSERT, UPDATE ou DELETE. A trigger pode ser aciondad após um determindo evento para registrá-lo ou efetuar alguma atividade posterior, ou pode ser acionado antes de um evento para previnir operações indevidas ou ajustar os novos dados para que estes estejam de acordo com a regra de negócio.
 
         Como principais motivos para o uso de database trigger, podemos citar os seguintes:
 

·         geração automática de valores de colunas derivados;

·         prevenção de transações inválidas;

·         reforçar regras de negócio complexas;

·         prover auditoria;

·         gerar estatísticas sobre acesso às tabelas;

·         prover log de transações.

 

É escopo deste artigo apenas as triggers associadas a tabelas, no entanto, existem as INSTED OF triggers voltadas para DML’s disparados contra objetos view e triggers de eventos de sistema voltadas para atividade de administração do banco de dados.

 

Elementos
 

Antes de se codificar uma trigger é interessante decidir, segundo as necessidades de regra de negócio, quais os elementos desta futura trigger.

 

Tabela 1. Elementos triggers

Componentes

Descrição

Valores

Tempo

Quando o trigger dispara em relação ao evento de acionamento (DML)

·       BEFORE

·       AFTER

Evento de acionamento

Quais operações de manipulação de tabela (DML) disparam a trigger

·       INSERT

·       UPDATE

·       DELETE

abrangência da trigger

Quantas vezes o corpo da trigger será executado

·       de linha (for each row)

·       de instrução(*)

Corpo da trigger

Que ações serão executadas

Bloco PL/SQL

(*) Opção default

 

Quanto à quantidade de vezes que a trigger será acionda, podemos afirmar que o comportamento default das por instrução e quando o DML acionador de trigger afeta apenas uma linha, tanto o trigger de instrução quanto o trigger de linha dispararão apenas uma vez. Ao passo que, quando o DML acionado afeta várias linhas o trigger de instrução será executado apenas uma vez enquanto que o trigger de linha será executado na mesma quantidade das linhas afetadas.

 

 

SQL>CREATE OR REPLACE TRIGGER jobs_biud

  2    BEFORE INSERT OR UPDATE OR DELETE ON jobs

  3  BEGIN

  4    IF TO_CHAR (SYSDATE, 'HH24') NOT BETWEEN '08' AND '18' THEN

  5     RAISE_APPLICATION_ERROR(-20205,'Alterações são permitidas apenas no horário de expediente');

  6    END IF;

  7  END jobs_biud;

 

Exemplo 1 – Trigger
 Obs: O exemplo 1 é uma trigger que será disparada apenas uma vez quando um INSERT, UPDATE ou DELETE for efetuado na tabela jobs.
 


 Predicado Condicional

 


Quando programamos uma trigger para vários eventos e temos a necessidade de identifica qual evento disparou a trigger, poderemos usar os predicados condicionais que são funções booleanas que podem ser utilizadas para determinar a operação que disparou o trigger.


 


 


SQL>CREATE OR REPLACE TRIGGER employees_biud


  2  BEFORE INSERT OR UPDATE OR DELETE ON employees


  3  BEGIN


  4    IF (TO_CHAR (SYSDATE,'HH24') NOT BETWEEN '08' AND '18') THEN


  5      IF DELETING THEN 


  6       RAISE_APPLICATION_ERROR(-20502,'Deleções na tabela de empregados apenas no horario normal');


  7      ELSIF INSERTING THEN


  8        RAISE_APPLICATION_ERROR(-20502,'Inserções na tabela de empregados apenas no horario normal');


  9      ELSIF UPDATING('SALARY') THEN


 10     RAISE_APPLICATION_ERROR(-20502,'Alterações no salário apenas no horario normal');


 11      ELSE


 12        RAISE_APPLICATION_ERROR(-20504,'Alterações nos empregados apenas no horario normal');


 13      END IF;


 14    END IF;


 15  END employees_biud;


 

Exemplo 2 – Predicado
 


Trigger de Linha

 


Uma trigger de linha é disparada uma vez para cada linha afetada pela instrução DML. Uma trigger de linha é identificada pela cláusula FOR EACH ROW.


 


Qualificadores (:new, :old)


Em uma trigger de linha, existe uma forma de acessar os valores dos campos que estão sendo processados atualmente, atraves dos identificadores :new, :old. O compilador PL/SQL irá tratá-los como tabela_da_trigger%ROWTYPE.


 


 


SQL>CREATE OR REPLACE TRIGGER employees_biur


  2    BEFORE  INSERT OR UPDATE ON employees


  3      FOR EACH ROW


  4      BEGIN


  5        IF NOT (:NEW.job_id IN ('AD_PRES', 'AD_VP')) THEN


  6          IF :NEW.salary > 15000 THEN


  7            RAISE_APPLICATION_ERROR (-20202,'Este empregado não pode receber este valor');


  8          END IF;


  9       END IF;


 10  END employees_biur;


 

Exemplo 3 – Qualificadores
                                        Tabela 2 – Qualificadores

DML


:old


:new


INSERT


NULO


Valores Novos


DELETE


Valores antigos


NULO


UPDATE


Valores antigos


Valores Novos


 


 


SQL>create table dept_audit


  2  (userid          varchar2(30)


  3  ,timestamp       date


  4  ,tipo_dml        CHAR(1)


  5  ,old_dept_id     NUMBER


  6  ,old_name        varchar2(30)


  7  ,old_manager_id  number


  8  ,old_location_id number


  9  ,new_dept_id     NUMBER


 10  ,new_name        varchar2(30)


 11  ,new_manager_id  number


 12  ,new_location_id number


 13  )


 


SQL>CREATE OR REPLACE TRIGGER department_aiudr


  2    AFTER INSERT OR UPDATE OR DELETE ON departments


  3      FOR EACH ROW


  4  DECLARE


  5    v_DML dept_audit.tipo_dml%TYPE;


  6  BEGIN


  7    IF INSERTING THEN 


  8      v_DML := 'I';


  9    ELSIF DELETING THEN


 10      v_DML := 'D';


 11    ELSIF UPDATING THEN


 12      v_DML := 'U';


 13    END IF;


 14  


 15    INSERT INTO dept_audit


 16      (userid              , timestamp            , tipo_dml 


 17      ,old_dept_id         , old_name             , old_manager_id


 18      ,old_location_id     , new_dept_id          , new_name


 19      ,new_manager_id      , new_location_id 


 20      )


 21    VALUES


 22      (USER                , SYSDATE              , v_DML 


 23      ,:OLD.department_id  ,:OLD.department_name  ,:OLD.manager_id 


 24      ,:OLD.location_id    ,:NEW.department_id    ,:NEW.department_name


 25      ,:NEW.manager_id     ,:NEW.location_id


 26      );


 27  END;


 

Exemplo 4 – Auditagem por trigger
 


Obs.: Os qualificadores :old, :new, estão disponíveis apenas nas triggers de linha.


 


 


SQL>CREATE OR REPLACE TRIGGER regions_bir


  2    BEFORE INSERT ON regions


  3      FOR EACH ROW


  4  DECLARE


  5    v_region_id regions.region_id%TYPE;


  6  BEGIN


  7    SELECT MAX(region_id)+1


  8      INTO v_region_id


  9      FROM regions;


 10    


 11    :NEW.region_id := v_region_id;


 12  END regions_bir;


 

Exemplo 5 – Autoincremento.
 


         Cláusula WHEN


Nas triggers de linha, podemos restringir a ação da trigger segundo uma condição, onde a mesma será disparada apenas para as linhas que satisfaçam a condição prevista.


 


 


SQL>CREATE OR REPLACE TRIGGER derive_commission_pct


  2    BEFORE INSERT OR UPDATE OF salary ON employees


  3    FOR EACH ROW


  4    WHEN (NEW.job_id = 'SA_REP')


  5  BEGIN


  6    IF INSERTING THEN 


  7       :NEW.commission_pct := 0;


  8    ELSIF :OLD.commission_pct IS NULL THEN 


  9       :NEW.commission_pct := 0;


 10    ELSE 


 11      :NEW.commission_pct := :OLD.commission_pct + 0.05;


 12    END IF;


 13  END;


 14  /


 

Exemplo 6 – Cláusula WHEN
 


No exemplo 6 além da cláusula condicional, percebemos na linha 2 cláusula OF seguida de um campo (salary) da tabela (employees) associada à trigger. Isso indica que a trigger só será disparada quando o update afetar a coluna indicada. Caso a cláusula OF estiver omitida a trigger do exemplo 6 será disparada indepedente da coluna afetada.


 

          Como próximo item de estudo e referentes ao assunto Database Trigger indicamos


INSTED OF TRIGGERS voltadas para DML’s disparados contra objetos view 
triggers de eventos de sistema voltadas para atividade de administração do banco de dados.

 

Espero que as informações tenham sido úteis para o trabalho com Database Triggers no Oracle 

 

Até o próximo artigo !!!

Obrigado !!!

 








                    
            

Marcar como lido
 
Anotar
 autor
Por Marcus
Em 2009
RECEBA NOSSAS NOVIDADES

Informe o seu e-mail
 Receber Newsletter
Suporte ao aluno - Deixe a sua dúvida.


Poste aqui sua dúvida ou comentário que nossa equipe responderá o mais rápido possível.
Plataforma para Programadores

Hospedagem web por Porta 80 Web Hosting
Menu

Comunidade
Revistas
Baixe o App
Fale conosco
Assinatura Empresarial
Tecnologias

Front-End
.NET
PHP
Java
Delphi
JavaScript
Python
Mobile
Banco de Dados
Eng. de Software
Notificações :)
