# Outliers
#
boxplot(iris$Sepal.Width)
# Sem os outliers
boxplot(iris$Sepal.Width, outline=F)
# Valores outliers
boxplot.stats(iris$Sepal.Width)$out
#
# Biblioteca Outliers
#install.packages('outliers')
library(outliers)
outlier(iris$Sepal.Width,opposite = FALSE)
