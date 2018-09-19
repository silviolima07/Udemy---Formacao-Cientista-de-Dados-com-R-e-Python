# ML - Naive Bayes
#
# instalar algoritmos el071 ou klaR
install.packages("el071",dependencies=T)
#install.packages("klaR",dependencies=T)
library(el071)
#
# Base: credit.csv
credito = read.csv(file.choose(), sep=",", header=T)
fix(credito)

dim(credito)

# Treinar o modelo: 70% pra treino e 30% pra teste
# Gerar uma amostra com 1000 elementos, cujos valores podem ser 1 ou 2, haverá reposição e as probabilidades serao 70% de 1 e 30% de 2
amostra = sample(2, 1000, replace=T, prob=c(0.7, 0.3))
amostra
#
# credito_treino irá receber as linhas de credito onde valor de amostra é igual a 1
credito_treino = credito[amostra==1,]
#
# credito_teste irá receber as linhas de credito onde valor de amostra é igual a 2
credito_teste = credito[amostra==2,]
#
dim(credito_treino)
dim(credito_teste)
# 
# Chamar o algoritmo para criação do modelo e passar inicialmente a variavel de resposta ou variavel dependente, no caso é class. Em seguindo as variaveis independentes ou explanatorias. Como todas as demais serao usadas, o R permite usar um ponto(.) no lugar de declarar cada variavel. Se fosse feita uma seleção de variaveis, elas seriam declaradas no lugar do ponto. E por ultimo o conjunto de dados a ser usado, no caso sera credito_treino.
modelo = naiveBayes(class ~ . , credito_treino )
modelo
#
# Avaliar o desempenho do modelo
#
previsao = predict(modelo, credito_teste)
#
confusao = table(credito_teste$class, previsao)
confusao
#
# Na diagonal da table confusao ficam os acertos de classificacao
taxa_acerto = (confusao[1] + confusao[4]) / sum(confusao)
#
# A taxa de erros é diferença que falta para 1
taxa_erro = 1 - taxa_acerto
