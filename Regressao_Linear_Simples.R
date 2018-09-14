# Regressao Linear Simples
# Dados referentes a velocidade e distancia necessaria para parar após frear
dim(cars)
head(cars)
cor(cars)

# Criar o modelo
# Variavel dependente (y) é speed e variavel independente  ou exploratoria (x) dist
modelo = lm(speed ~ dist, data=cars)
modelo
plot(modelo)
#
plot(speed ~ dist, data=cars)
abline(modelo)
#
modelo$coefficients
# 
# Qual o valor de speed para uma distancia de 22
modelo$coefficients[1] + modelo$coefficients[2] * 22
#
# Usando comando predict
predict(modelo, data.frame(dist=22))
#
summary(modelo)
#
modelo$residuals
modelo$fitted.values
#
plot(modelo$fitted.values, cars$dist)

