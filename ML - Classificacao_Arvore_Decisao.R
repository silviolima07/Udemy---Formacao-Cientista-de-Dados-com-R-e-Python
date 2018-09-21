# ML - Arvore de Decisao

# Será usado o package rpart
#install.packages('rpart',dependencies=T)
library(rpart)
#
credito = read.csv(file.choose(), sep=',', header=T)
fix(credito)
#
# Criar a amostra
amostra = sample(2,1000, replace=T, prob=c(0.7,0.3))
amostra
credito_treino = credito[amostra==1,]
credito_teste = credito[amostra==2,]
#
# Modelo Arvore de Decisao
# rpart pode ser usado para classificacao ( method = 'class') e regressao (method = "anova" 
arvore = rpart(class ~ ., data=credito_treino, method="class")
print(arvore)
#
plot(arvore)
text(arvore, use.n=T, all=T, cex=0.8)
#
previsao = predict(arvore, newdata = credito_teste )
previsao
#
cred = cbind(credito_teste, previsao)
fix(cred)
cred['Result'] = ifelse(cred$bad >= 0.5, 'bad', 'good')
fix(cred)
#
confusao = table(cred$class, cred$Result)
confusao
taxa_acerto = (confusao[1] + confusao[4]) / sum(confusao)
taxa_acerto
#
taxa_erro = (confusao[2] + confusao[3]) / sum(confusao)
taxa_erro
