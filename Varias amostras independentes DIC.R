remove(list=ls())
setwd("D:/Backup Pendrive/_PacotesR/_R cran/Dropbox/_R cran/_R cran/Parse/Aula NP")
D=read.table("DIC.txt",h=T)

library(easyanova)
#########################################
# Estatistica parametrica
?ea1
ea1(D,design =1,plot=4)

#########################################
# Estatistica Nao parametrica
ea1(D,design =14)
