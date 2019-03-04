#############################
## Jeu de données rivière ###
#############################

## Importation des données

setwd("C:/Users/husson/AOBox/Travail/huss/Enseign/cours/Analyse donnees/FC_cepe/data ecologie")
riviere <- read.table("riviere.csv",sep=";",header=TRUE,row.names=1,fileEncoding="latin1")
summary(riviere)

## ACP

library(FactoMineR)
res=PCA(riviere,quali.sup=1:2)
plot(res,hab=1)
plot(res,hab=2)

## Classification

res.hcpc <- HCPC(res,nb.clust=4)
res.hcpc$desc.var

plot(res,hab=1,axes=3:4) ## permet de voir que les individus 11-1 et 9-1 sont éloignés sur les axes suivants
plot(res,choix="var",axes=3:4)

