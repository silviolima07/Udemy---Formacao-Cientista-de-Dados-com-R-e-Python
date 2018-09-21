# ML - Random Forest
#install.packages("randomForest", dependencies=T)
library(randomForest)
amostra = sample(2,1000, replace=T, prob=c(0.7, 0.3))
credito_treino = credito[amostra==1,]
credito_teste = credito[amostra==2,]
#
floresta = randomForest(class ~ ., data=credito_treino, ntree=100, importance=T)
varImpPlot(floresta)
#
previsao = predict(floresta, credito_teste)
confusao = table(credito_teste$class, previsao)
confusao
#
taxa_acerto = (confusao[1] + confusao[4]) / sum(confusao)
taxa_acerto
