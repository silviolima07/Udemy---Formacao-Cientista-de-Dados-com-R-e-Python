# Estudo de geracao de amostras
amostra = sample(c(0,1),150, replace=TRUE, prob = c(0.5,0.5))
amostra
length(amostra[amostra==1])
length(amostra[amostra==0])
set.seed(2345)
sample(c(100),1)
#
# Amostra extratificada
summary(iris)
install.packages("sampling")
amostra_extratificada = strata(iris,c("Species"),size=c(25,25,25), method="srswor")
summary(amostra_extratificada)
#
infert
summary(infert)
# Coluna education tem valores diferentes
# Gerar os valores extratificados proporcionais a cada grupo
round(120/248 * 100)
#
amostra_extratificada_interf = strata(infert, c("education"), size=c(5,48,47), method="srswor")
summary(amostra_extratificada_interf)
#
# Amostragem Sistematica
# install.packages("TeachingSampling")
amostra = S.SY(150,10)
amostra
amostrairis = iris[amostra,]
amostrairis