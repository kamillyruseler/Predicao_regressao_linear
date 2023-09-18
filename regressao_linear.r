library(data.table)
library(ggplot2)
Base <- fread(input = paste0("Life Expectancy Data.csv"), header = T, na.strings = "NA", data.table = FALSE, dec=".")
Base <- na.omit(Base) #As colunas foram processadas para remover nulos e zeros


############## Renda vs. escolaridade

#diagrama de dispersão
ggplot(data = Base, aes(Base$Schooling, Base$`Income composition of resources`, color=Base$`Income composition of resources`)) +
  geom_point() +
  labs(x="Escolaridade (anos)", y="Renda", size="horsepower", 
       col="Renda")

#coeficiente de correlação de cada variável 
cor(Base$Schooling, Base$`Income composition of resources`, use = "complete.obs")
# correlação 0.78

#Intervalo de Confiança para Correlação
cor.test(Base$`Income composition of resources`, Base$Schooling,conf.level=0.95)$conf.int
#de 0.7654652 a 0.8026090

#modelo de regressao linear
modelo <-lm(Base$`Income composition of resources` ~Base$Schooling)
summary(modelo)
#R-squared:  0.6158
anova(modelo)

#analise de residuos
res<-resid(modelo)
plot(fitted(modelo),residuals(modelo))
abline(0,0)

coef(modelo)
# Coeficiente de determinação
summary(modelo)$r.squared
#resulta em 0.6158178

# Reta de regressão no modelo
plot(Base$Schooling, Base$`Income composition of resources`)
abline(modelo)
abline(lm(Base$`Income composition of resources`~Base$Schooling ))






############# Escolaridade vs. Expectativa de vida

#coeficiente de correlação
cor(Base$Schooling, Base$`Life expectancy`)
#correlação 0.72

#diagrama de dispersão
ggplot(data = Base, aes(Base$`Life expectancy`,Base$Schooling, color=Base$`Life expectancy`)) +
  geom_point() +
  labs(x="Expectativa de vida (anos)", y="Escolaridade (anos)", size="horsepower", 
       col="Expectativa de vida")

#Intervalo de Confiança para Correlação
cor.test(Base$`Life expectancy`, Base$Schooling,conf.level=0.95)$conf.int
#de 0.7040885 a 0.7495739

#modelo de regressao linear
modelo <-lm(Base$`Life expectancy` ~Base$Schooling)
summary(modelo)
#R-squared:  0.5294
anova(modelo)

#analise de residuos
res<-resid(modelo)
plot(fitted(modelo),residuals(modelo))
abline(0,0)

coef(modelo)
# Coeficiente de determinação
summary(modelo)$r.squared
#resulta em 0.5294455

# Reta de regressão no modelo
plot(Base$Schooling, Base$`Life expectancy`)
abline(modelo)
