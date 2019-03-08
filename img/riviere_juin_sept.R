#######################################################
## Jeu de données rivière données juin et septembre ###
#######################################################

## Importation des données

riviere <- read.table("https://husson.github.io/img/riviere_juin_sept.csv",sep=";",header=TRUE,row.names=1,fileEncoding="latin1")
summary(riviere)
library(FactoMineR)

## AFM

res=MFA(riviere,group=c(2,10,10),type=c("n","s","s"),num.group.sup=1,name.group=c("quali","juin","sept"))
plot(res,hab=1)
plot(res,hab=2)

## Classification
res.hcpc <- HCPC(res,nb.clust=3)
res.hcpc$desc.var
