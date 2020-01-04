--altera arquivos por Ronaldo shell script para ir dentro dos arquivos e procurar e substituir dentro de um txt.
--por Ronaldo Bezerra.


#/bin/sh

# Arquivo altera_arquivo.sh
###########################

##################
# Script utilizado para substituir palavras dentro de um arquivo de texto.
# Forma de utilizar:
# altera_arquivo.sh arquivo.txt 201902 201902 
# altera_arquivo.sh \*  201701 201702
# ou
# altera_arquivo.sh arquivo.txt APAGAISSO
##################

# Se o script for chamado com numero de argumentos errado
# mostra a forma de utilizacao
if [[ -z $2 ]]
then
	echo " "
        echo "Uso: $0 <arquivo texto> <texto a procurar> <texto substituto>(opcional)"
	echo " "
        exit
fi


##################
# Para executar em varios arquivos usando nomeArquivo201702, o asterisco deve ser escapado com "\".
##################

function verifica_erro
{
        # Verificando se houve algum erro
        if [[ $? != 0 ]]
        then
                echo " "
                echo " OCORREU UM ERRO! "
                echo "Script terminado!"
                echo " "
                exit 99
        fi
}



# "echo" com interpretacao de scripting no Linux/Bash
# ECHO="echo -e"
# "echo" com interpretacao de scripting no AIX/Ksh
ECHO="echo"

ARQUIVOS=$1
PROCURAR=$2
SUBSTITUIR=$3

for arq in $ARQUIVOS; 
do 
	$ECHO "Alterando ${arq}... \\c"; 
	cat $arq | sed s/$PROCURAR/$SUBSTITUIR/g > ${arq}_temp;
	verifica_erro;
	cat ${arq}_temp > $arq;
	verifica_erro;
	rm -f ${arq}_temp;
	verifica_erro;
	$ECHO "feito"; 
done


