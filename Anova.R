# Analise de Variancia
#
tratamento = read.csv(file.choose(),sep=";", header = T)
fix(tratamento)
boxplot(tratamento$Horas ~ tratamento$Remedio)
an = aov(Horas ~ Remedio, data=tratamento)
summary(an)
#
# Tukey
tukey = TukeyHSD(an)
tukey
plot(tukey)
# Dois fatores
an = aov(Horas ~ Remedio * Sexo, data=tratamento)
summary(an)