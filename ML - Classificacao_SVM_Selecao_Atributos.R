# ML - SVM
# Package e1071
library(e1071)
# Usando todos atributos no modelo
modelo = svm(class ~ ., credito_treino)
modelo
#
previsao = predict(modelo, newdata=credito_teste)
previsao
#
confusao = table(credito_teste$class, previsao)
#
taxa_acerto = (confusao[1] + confusao[4]) / sum(confusao)
taxa_acerto
#
# Selecionando atributos
install.packages("FSelector", dependencies=T)
library(FSelector)
#
random.forest.importance(class ~ ., credito)
#
# Selecionar os atributos com maior importancia

modelo = svm(class ~ checking_status + duration + credit_history + purpose, credito_teste)

previsao = predict(modelo, credito_teste)

confusao = table(credito_teste$class, previsao)
confusao

taxa_acerto_apos_Selecao = (confusao[1]+confusao[4])/sum(confusao)
taxa_acerto_apos_Selecao

taxa_acerto
