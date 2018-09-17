# Teste de Qui Quadrado
# Base: assiste e nao assiste TV
futebol = matrix(c(19,6,43,32), nrow=2, byrow=T)
fix (futebol)
rownames(futebol) = c("Homens", "Mulheres")
colnames(futebol) = c("Assiste", "NaoAssiste")
fix(futebol)
#
chisq.test(futebol)
