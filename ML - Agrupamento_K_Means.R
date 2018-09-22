# ML - Agrupamento - K Means
# O numero de grupos deve ser informado no algoritmo
#
dim(iris)
head(iris)
#
# O algoritmo ira separar os dados em 3 grupos (species)
summary(iris)
#
cluster = kmeans(iris[1:4], center=3)
cluster
#
cluster$cluster
table(iris$Species, cluster$cluster)
#
plot(iris[,1:4], col=cluster$cluster)
