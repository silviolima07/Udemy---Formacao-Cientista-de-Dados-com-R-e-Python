# Base mtcars do R
colnames(mtcars)
dim(cars)
#
# Analisando a correlacao entre as 4 primeiras colunas
cor(mtcars[1:4])
#
# Regressao Simples
# Usando mpg como variaveis resposta (Y - dependente)
# Como variavel explanatoria a variavel disp
#
modelo =  lm(mpg ~ disp, data=mtcars)
modelo
#
# Coeficiente de Determinacao - mostra o quanto a variavel dependente é explicada pela variavel explanatoria
#
summary(modelo)$r.squared
#
# No caso de ter mais de uma variavel explanatória, usa-se o r ajustado, que será sempre menor que o r normal
summary(modelo)$adj.r.squared
#
plot(mpg ~ disp, data=mtcars)
abline(modelo)
#
# Previsao
#
predict(modelo, data.frame(disp=200))
#
# Regressao Multipla
#
modelo = lm(mpg ~disp + hp + cyl, data=mtcars)
modelo
#
# Coeficiente de Determinacao com mais de uma variavel explanatoria
summary(modelo)$adj.r.squared
#
predict(modelo, data.frame(disp=200,hp=100,cyl=50))
