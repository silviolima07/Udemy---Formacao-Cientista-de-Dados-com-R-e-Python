# Medidas de Centralidade e Variabilidade
#
jogadores = c(40000,18000, 12000, 250000,30000,140000, 300000, 40000, 800000)
mean(jogadores)
median(jogadores)
quartis = quantile(jogadores)
quartis[4]
sd(jogadores)
summary(jogadores)
quartis