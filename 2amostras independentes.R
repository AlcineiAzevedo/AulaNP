remove(list=ls())
homens=c(1.6,1.61,1.85,1.45,1.89,1.7,1.6,1.83,1.9,1.65,1.50)
mulheres=c(1.52,1.65,1.65,1.75,1.59,1.40,1.56,1.73,1.6,1.65)
hist(homens)
lines(density(homens))
shapiro.test(homens)

hist(mulheres)
lines(density(mulheres))
shapiro.test(mulheres)

##########################################
# Analise parametrica
?t.test
t.test(x =homens,y = mulheres) #Teste bilateral
t.test(x =homens,y = mulheres,alternative = "less") #Teste unilateral
t.test(x =homens,y = mulheres,alternative = "greater") #Teste unilateral

# Analise nao-parametrica
?wilcox.test
wilcox.test(x =homens,y = mulheres) #Teste bilateral
wilcox.test(x =homens,y = mulheres,alternative = "less") #Teste unilateral
wilcox.test(x =homens,y = mulheres,alternative = "greater") #Teste unilateral


###################################################################
### Comparacao com anova em dic
D=rbind(cbind("homems",homens),cbind("mulheres",mulheres))
D2=data.frame(D)
colnames(D2)=c("sexo","altura")

m=aov(altura~sexo,data=D2)
anova(m)
t.test(x =homens,y = mulheres)
t.test(x =homens,y = mulheres,var.equal = TRUE) #Teste bilateral