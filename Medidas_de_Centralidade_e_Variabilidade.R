# Medidas de Centralidade e Variabilidade
#
jogadores = c(40000,18000, 12000, 250000,30000,140000, 300000, 40000, 800000)
# Média
mean(jogadores)
# Mediana
median(jogadores)
# Quartis
quartis = quantile(jogadores)
quartis[4]
# Desvio padrao
sd(jogadores)
summary(jogadores)
quartis