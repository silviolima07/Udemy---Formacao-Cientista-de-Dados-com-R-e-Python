# Regressao Logistica
#
eleicao = read.csv(file.choose(),sep=";",header=T)
edit(eleicao)
plot(eleicao$DESPESAS,eleicao$SITUACAO)
summary(eleicao)
# Correlacao
cor(eleicao$DESPESAS,eleicao$SITUACAO)
# 
modelo = glm(SITUACAO ~ DESPESAS, data=eleicao, family="binomial")
modelo
#
plot(eleicao$DESPESAS,eleicao$SITUACAO,col='red',pch=20)
points(eleicao$DESPESAS,modelo$fitted, pch=4)
#
# Prever se novos candidatos serao eleitos
prevereleicao = read.csv(file.choose(),sep=";", header=T)
fix(prevereleicao)
prevereleicao$RESULT = (predict(modelo, newdata = prevereleicao, type="response")*100)
prevereleicao

