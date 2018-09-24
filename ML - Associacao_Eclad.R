# ML - Associacao - Eclad
# Conceitos: 
# support: No total de transacoes, quantas vezes o produto A e B estao juntos. Calculo: total(A e B) / total geral
# confianca: Quantas o produto A e B aparecem juntos, dividido pelo numero de vezes que o produto A aparece. Calculo: total(A e B) / total (A)            
#
#install.packages("arules", dependencies=T)
library(arules)
#
transacoes = read.csv(file.choose(), sep=",")
# transacoes = read.transactions(file.choose(), format="basket", sep=",")
dim(transacoes)
inspect(transacoes)
#
image(transacoes)
#
# valores minimos de supp e maxlen que indica o numero maximo de items
regras = eclad(transacoes, parameter=list(supp=0.1, maxlen=15))
regras
#
inspect(regras)
#
#install.packages("arulesViz", dependencies=T)
library(arulesViz)
#
plot(regras)
plot(regras, method="graph", control=list(type="items"))

