--Por André e Mário Marcos - 12/12/2018.

1-Para procedimento de criação de tabelas, as referidas views só vão ser criadas ou regeradas somente no processo de publicação à noite.

	a-Se por acasso precisarem de imediato, terá que ser feita manualmente no momento após a criação da tabela.
	b-lembrando que a views preferencialmente deverá constar as colunas da tabela.


2-Para casos que novas views que não possuem tabela no banco.
	a- Pegar script da view que o desenvolvedor enviou e validar se na claúsula select se as colunas estão sendo especificadas, caso não esteja deverá ser especificado.

	b- Criar a view no usuário de banco

	c- Adicionar o script da view ao processo de publicação no arquivos de vies fixas que se encontra na pasta /data/dwpub/CONTROLMXXXXX/sql/nomedoarquivofixo.sql.
	d- Em seguida criar a tabela no banco com o mesmo nome da view e com a mesma ordem das colunas da view, não esquecendo dos tipos.
   

