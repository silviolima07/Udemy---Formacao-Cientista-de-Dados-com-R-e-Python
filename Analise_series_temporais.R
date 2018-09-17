# Series Temporais
#
# Base usada: AirPassengers
AirPassengers
#
start(AirPassengers)
end(AirPassengers)
#
plot(AirPassengers)
#
plot(aggregate(AirPassengers))
#
monthplot(AirPassengers)
# 
# Selecionando apenas uma parte para ser analisada
subst = window(AirPassengers,start=c(1960,1),end=c(1960,12))
subst
plot(subst)

#
plot(AirPassengers)
#
# Decompor os elementos que compoem a serie temporal
dec = decompose(AirPassengers)
dec
#
dec$seasonal
dec$trend
dec$random
plot(dec$seasonal)
plot(dec$trend)
plot(dec$random)
#
plot(dec)