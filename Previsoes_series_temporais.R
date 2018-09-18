# Previsoes com Series Temporais
#
AirPassengers
#
# Média
mean(AirPassengers)
#
# Usando apenas o ultimo ano para analise
mean(window(AirPassengers,start=c(1960,1),end=c(1960,12)))
#
# Média móvel
# Package forest
install.packages("forecast")
library(forecast)
#
#plot(wineind)
#sm <- ma(wineind,order=12)
#lines(sm,col="red")

mediamovel = ma(AirPassengers,order=12)
mediamovel
#
previsao = forecast(mediamovel,h=12)
previsao
plot(previsao)
#
arima = auto.arima(AirPassengers)
previsao = forecast(arima,h=12)
previsao
#
# Dessa vez a tendencia, a sazonalidade e o componente aleatorio sao incorporados ao grafico gerado
plot(previsao)
