# ML - Agrupamento - K-Medoids
# Este algoritmo usa o valor mais significativo das instancias como centro para criar os grupos
# K-Means usa a média entre as instancias como centro
#
#install.packages("cluster", dependencies=T)
library(cluster)
#
cluster = pam(iris[,1:4], k=3)
cluster
#
plot(cluster)
#
# Avaliando
table(iris$Species, cluster$clustering)
