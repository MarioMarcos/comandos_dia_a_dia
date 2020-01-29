#coloca dados no vetor
age <- c(1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5, 6)

#coloca dados no vetor 2
words <- c(3, 22, 272, 446, 896, 1222, 1540, 1870, 2072, 2562)

#mostra gráfico de disperssão       
plot(age, words)

#reta de regressao
abline(lm(words~age))

#realizar a analise de regressao
summary(lm(words ~ age))

##############################################################33
#OUTRO EXEMPLO 

#CALCULANDO O COEFICIENTE 

#iniciando variáveis
  preco <- c(36, 43, 49, 55, 61, 63, 69, 72, 74, 77)
  demanda <- c(350, 330, 296, 252, 230, 218, 203, 196, 188, 167)

#descobrindo o coeficiente   
  cor(preco, demanda)


#fazendo o modelo de regressao linear
  modelo.regressao <- lm(demanda ~ preco)

#sumario do modelo de regressao
  summary(modelo.regressao)
  
  
  
  
#ointercept é 511.1640, o preco -4.4769 ficou assim y = -4.4769x + 511.1640 e esse é o resultado final do modelo
#o x pode ser substituido por algum valor para calculo do modelo

#fazendo um exemplo:
#considerando que a relacao entre as variaives nao é alterada mesmo fora do intevalor observado, determine qual 
#qual a demanda esperada para um preco de 80 reais
#resultado y = -4,4769 x + 511,164
  #y(80) = -4.4769(80) + 511,164 = aproximandamente 153 unidades.
    
#testar o comando scan depois como o seguinte variável x <-scan() ela vai pegar uma lista de valores que está na área de transferência colocada por nos e vai jogar dentro da variavel.
#dica no video do youtube pasta estatísticas.  