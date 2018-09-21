# ML - k-Nearest Neighbour
#install.packages("class", dependencies=T)
library(class)
head(iris)
summary(iris)
#
amostra = sample(2,150, replace=T,prob=c(0.70,0.30))
iris_treino = iris[amostra==1,]
classificar = iris[amostra==2,]
#
dim(iris_treino)
dim(classificar)
#
previsao = knn(iris_treino[,1:4], classificar[,1:4], iris_treino[,5], k=3)
table(classificar[,5],previsao)
