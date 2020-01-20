Estes aqui são os passos a implementar para trabalhar com o processo da documentãção do estaleiro utilizando o GIT HUB

AULA 42 do curso de git e git real

instalação do git flow
colocar no git  - chetssheet - para git flow 

	- sudo apt-get install git-flow

	- para inicializar git-flow init

AULA 43 - git flow na prática aula 43
OBS: pelo branch 

AULA 44 - Criando release para produção do develop para o master.



======================================================================================================================================================
AQUI JÁ É A PARTE DO HUGO / ESTALEIRO / NO VSCODE 

site official do HUBO THEME: https://themes.gohugo.io/hugo-theme-learn/

	- Para habilitar o VSCODE para o GIT é só entrar no VSCODE depois open folder na pasta de trabalho do repositório que você deseja trabalhar 

	- Depois de já configurado a parte do GIT / VSCODE / HUGO SERVER / E PASSO A PASSO PARA CONTRIBUIR COM DOCUMENTAÇÃO

 	- No diretório de trabalho no terminal digite HUGO SERVER ==Aqui já habilita a visualização da página no navegador para trabalhar inclusive nas alterações que estão sendo feita ou no vscode ou no próprio gitlab, aí você faz a alteração e já vai vendo no navegador.

	- Crie uma página nova! Existem dois tipos de páginas, e isso deve ser observado. Via de regra, basta criar uma nova página com hugo new capitulo/subcapitulo/funcionalidade.md. Não tenha medo de errar, nós vamos revisar o PR para você!!

	- Caso queira verificar o resultado de sua contribuição, é possível testar localmente utilizando o comando hugo server a partir do diretório principal. Será iniciada uma instância de servidor web acessível em http://localhost:1313; Alterações efetuadas no código são aplicadas ao salvar o arquivo e recarregar a página, então é possível verificar imediatamente como será o resultado das alterações.

	- Após criada a nova página, suba ela para o seu repositório e abra um Pull Request para nós, que iremos referenciar. Caso exista pressa, referencie um @all  no comentário que alguém irá verificar. Ao fazer o merge request, insira nos comentários um: "Fixes: #numero da issue que você abriu". (isso vai fazer com que a issue seja fechada assim que o merge for aceito.

	- Aguarde! Após aceito o seu PR, iremos marcar ele com uma label conforme a categoria de contribuição (que servirá para pontuação), realizar o Merge e a Integração Continua irá fazer toda a mágica de publicação da página :D
