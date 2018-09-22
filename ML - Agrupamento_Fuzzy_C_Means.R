# ML - Agrupamento - Fuzzy C-Means
# Uma instancia pode pertencer a mais de um grupo
# No K-Mean a instancia pertence a um grupo ou a nenhum
#
# install.packages("e10171", dependencies=T)
#library(e1071)
cluster = cmeans(iris[,1:4], center=3)
cluster
# É apresentado a probabilidade de que a instancia pertence a um dos 3 grupos.
#
table(iris$Species,cluster$cluster)
