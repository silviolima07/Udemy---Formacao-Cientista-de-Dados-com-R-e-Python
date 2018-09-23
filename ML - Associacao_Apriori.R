# ML - Associacao - Apriori
# Conceitos: 
# support: No total de transacoes, quantas vezes o produto A e B estao juntos. Calculo: total(A e B) / total geral
# confianca: Quantas o produto A e B aparecem juntos, dividido pelo numero de vezes que o produto A aparece. Calculo: total(A e B) / total (A)            
#
#install.packages("arulesCBA", dependencies=T)
library(arulesCBA)
#
transacoes = read.csv(file.choose(), sep=",")
# transacoes = read.transactions(file.choose(), format="basket", sep=",")
dim(transacoes)
inspect(transacoes)
#
image(transacoes)
#
# valores minimos de supp e conf
regras = apriori(transacoes, parameter=list(supp=0.5, conf=0.5))
regras
#
inspect(regras)
#
#install.packages("arulesViz", dependencies=T)
library(arulesViz)
#
plot(regras)
plot(regras, method="graph", control=list(type="items"))

