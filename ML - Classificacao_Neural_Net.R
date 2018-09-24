# ML - Redes Neurais
#
#install.packages("neuralnet", dependencies=T)
library(neuralnet)
#
myiris = iris
#
myiris = cbind(myiris, myiris$Species=='setosa')
myiris = cbind(myiris, myiris$Species=='versicolor')
myiris = cbind(myiris, myiris$Species=='virginica')
head(myiris)
tail(myiris)
#
summary(myiris)
#
names(myiris)[6]= 'setosa'
names(myiris)[7]= 'versicolor'
names(myiris)[8]= 'virginica'
#
summary(myiris)
# Separando 70% para treino e 30% para teste
amostra = sample(2,150,replace=T, prob=c(0.7, 0.3))
myiris_treino = myiris[amostra==1,]
myiris_teste = myiris[amostra==2,]
#
dim(myiris_teste)
dim(myiris_treino)
# Criar o modelo a partir dos 4 atributos de entrada e finalizando com a probabilidade de cada classe de saida
modelo = neuralnet(setosa + versicolor + virginica ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, myiris_treino, hidden=c(5,4))
print(modelo)
plot(modelo)
#
teste = compute(modelo, myiris_teste[,1:4])
teste$net.result
#
resultado = as.data.frame(teste$net.result)
resultado
# Identificar cada coluna e atributo
names(resultado)[1]="setosa"
names(resultado)[2]="versicolor"
names(resultado)[3] = "virginica"
head(resultado)
#
# Atributo class, ultima coluna(4), criado a partir da identifica do maior valor presente nas colunas de 1 a 3.
resultado$class = colnames(resultado[,1:3]) [max.col(resultado[,1:3], ties.method='first')]
resultado
#
confusao = table(resultado$class, myiris_teste$Species)
confusao
#sum(diag(confusao))
sum(confusao)
sum(diag(confusao) * 100 / sum(confusao))
