--fazer backup de arquivos depois - créditos Ronaldo Bezerra 

--ADAPTAR PARA FAZER DEPOIS O QUE EU QUERO.

-- 1º script modelo
#!/bin/sh
#
# Créditos do script, versão, etc.
#

# Confs do script
# Onde, DIR_ORIG é o diretório a ser backupeado e DIR_DEST é o 
# diretório para onde vai o arquivo compactado e BKP_NAME é o nome ao 
# qual será compactado o diretório.
DIR_ORIG="/diretorio/a/ser/compactado/"
DIR_DEST="/diretorio/a/ser/enviado/o/arquivo"
BKP_NAME="nome-do-arquivo.tgz"

# compactação do diretório de origem diretamente no diretório de destino
tar -czpf ${DIR_DEST}${BKP_NAME} ${DIR_ORIG}

# mensagem de resultado
echo "Seu backup foi realizado com sucesso."
echo "Diretório: ${DIR_ORIG}"
echo "Destino: ${DIR_DEST}${BKP_NAME}";
exit 0

-- 2º script modelo


Ao invés de ficar renomeando os arquivos, você poderia usar um pequeno script para que os arquivos fossem gerados já com a data e hora incluída no nome do arquivo:

DATA=`date +%Y-%m-%d-%H.%M`
cd /mnt/backup
tar -zcvf trabalho-"$DATA".tar.gz /mnt/hda6/trabalho/
A primeira linha do script cria uma variável DATA, contendo o resultado do comando date +%Y-%m-%d-%H.%M. O comando date retorna a data e hora atual, como em Sex Set 16 12:36:06 BRST 2005. A saída padrão dele não é muito adequada para usar em nomes de arquivos, por isso usamos as opções para alterar o formato de saída, de forma que o resultado seja 2005-09-16-12.37 (ano, mês, dia, hora, minuto, segundo). Usamos este valor no nome do arquivo com o backup, de forma que cada vez que você chame o script, seja gerado um arquivo com a data e hora em que foi gerado, sem a possibilidade de dois arquivos saírem com o mesmo nome.
