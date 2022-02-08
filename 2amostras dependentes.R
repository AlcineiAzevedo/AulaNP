remove(list=ls())
Laranja=c(4,3,5,2,4,2,3,4,5,4)
Limao=c(3,4,2,1,3,2,2,5,2,3)
hist(Laranja)
lines(density(Laranja))
shapiro.test(Laranja)

hist(Limao)
lines(density(Limao))
shapiro.test(Limao)

##########################################
# Analise parametrica
?t.test
t.test(x =Laranja,y = Limao,paired = TRUE) #Teste bilateral
t.test(x =Laranja,y = Limao,alternative = "less",paired = TRUE) #Teste unilateral
t.test(x =Laranja,y = Limao,alternative = "greater",paired = TRUE) #Teste unilateral

# Analise nao-parametrica
?wilcox.test
wilcox.test(x =Laranja,y = Limao,paired = TRUE) #Teste bilateral
wilcox.test(x =Laranja,y = Limao,alternative = "less",paired = TRUE) #Teste unilateral
wilcox.test(x =Laranja,y = Limao,alternative = "greater",paired = TRUE) #Teste unilateral


###################################################################
### Comparacao com anova em dBc
D=rbind(cbind("Laranja",Laranja),cbind("Limao",Limao))
D2=data.frame(D[,1],Pessoas=rep(1:10,2),D[,2])
colnames(D2)=c("Sabor","Pessoas","Nota")
D2$Pessoas=as.factor(D2$Pessoas)


m=aov(Nota~Sabor+Pessoas,data=D2)
anova(m)
t.test(x =Laranja,y = Limao,paired = TRUE)

library(easyanova)
ea1(D2,design = 2)
