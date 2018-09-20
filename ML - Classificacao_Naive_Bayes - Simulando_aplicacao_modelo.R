# ML - Naive Bayes
#
# Aplicando o modelo gerado sobre um novo conjunto de dados, dessa vez sem o atributo class na ultima coluna
novocredito = read.csv(file.choose(), sep=',', header=T)
fix(novocredito)
dim(novocredito)
#
predict(modelo,novocredito)
