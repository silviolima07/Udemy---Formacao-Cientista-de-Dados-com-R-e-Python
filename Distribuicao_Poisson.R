# Distribuicao de Poisson
# Quando o evento procurado ocorre em intervalos de tempo
#
# Numa estrada a media de acidentes que hora diariamente é 2 acidentes.
# Qual a probabilidade de ocorrencia de 3 acidentes ?
# x = 3
dpois(3, lambda = 2)

# Qual a probabilidade de ocorrer 3 ou menos acidentes ?
# x <= 3
ppois(3, lambda=2)

# Qual a probilidade de ocorrer mais de 3
# x > 3

ppois(3, lambda = 2, lower.tail = F)