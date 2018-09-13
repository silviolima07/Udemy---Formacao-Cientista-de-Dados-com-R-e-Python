# Distribuicao Normal
# Numa caixa, temos objetos cuja média de peso é 8kg, com desvio padrao de 2kg. Qual a probabilidade de encontrar objetos com menos de 6kg
#
pnorm(6,8,2)

# Qual a chance de encontrar um objeto com mais de 6kg ?
# Nesse caso usa-se o parametro lower.tail = F pois o que interessa esta de um ponto para adiante da media central
pnorm(6,8,2,lower.tail=F)
#
# Outra solucao é retirar 1 do primeiro caso acima
1 - pnorm(6,8,2)

# Qual a chance de tirar um objeto com menos de 6kg ou mais de 10kg ?
pnorm(6,8,2)+pnorm(10,8,2,lower.tail=F)
#
#
# Qual a chance de se tirar um objeto com menos de 10kg e mais de 8kg ?
pnorm(10,8,2) - pnorm(8,8,2)
#
# Gerar um conjunto de números normalizados
x= rnorm(100)
x
# Gráfico
qqnorm(x)
qqline(x)
#
# Teste de verificacao de normalidade: Shapiro-Wilk
shapiro.test(x)
# Se p-value é mairo que 0.05 H0 é aceita e conjunto é normal
# Abaixo ou igual recusa-se a hipotese nula (H0) e não é normal