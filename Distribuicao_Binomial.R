#dbinom
# X = numero de sucessos esperados
# Size = numero de experimentos executados
# Prob = no caso de moedas é 50% (cara ou coroa - 1 em 2)

# Qual a probabilidade de jogar uma moeda 5 vezes e dar cara 3 vezes ?
dbinom(3,5,0.5)

# Qual a probabilidade de passar 4 sinais de 4 tempos 4 vezes e pegar 0,1,2,3,4 sinais verdes ?
# 0 sinal verde
dbinom(0,4,0.25)
# 1 sinal verde
dbinom(1,4,0.25)
#2 sinais verdes
dbinom(2,4,0.25)
# 3 sinais verdes
dbinom(3,4,0.25)
# 4 sinais verdes
dbinom(4,4,0.25)
#
# Numa prova com 12 questões, qual a probabilidade de acertar 7 em 4 alternativas
dbinom(7,12,0.25)

