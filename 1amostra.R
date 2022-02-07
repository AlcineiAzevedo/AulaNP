remove(list=ls())
homens=c(1.6,1.61,1.85,1.45,1.89,1.7,1.6,1.83,1.9,1.65,1.50)
hist(homens)
lines(density(homens))
shapiro.test(homens)

##########################################
# Analise parametrica
?t.test
t.test(homens) #Teste bilateral
t.test(homens,mu =1.71) #Teste bilateral
t.test(homens,mu =1.71,alternative = "less") #Teste bilateral
t.test(homens,mu =1.71,alternative = "greater") #Teste unilateral

# Analise nao-parametrica
?wilcox.test
wilcox.test(homens) #Teste bilateral
wilcox.test(homens,mu =1.71) #Teste bilateral
wilcox.test(homens,mu =1.71,alternative = "less") #Teste unilateral
wilcox.test(homens,mu =1.71,alternative = "greater") #Teste unilateral
