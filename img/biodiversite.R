##################################
## Jeu de donnees biodiversite ###
##################################

## Importation des donnees

biodiversite <- read.table("https://husson.github.io/img/biodiversite.csv",sep=";",header=TRUE,row.names=1,fileEncoding="latin1",check.names=FALSE)
summary(biodiversite)

## AFC
library(FactoMineR)
res=CA(biodiversite,col.sup=7,quali.sup=1)
plot(res,invisible="row")
plot(res,invisible="col",hab=1,cex=0.8)

## Classification des pays
res.hcpc <- HCPC(res,cluster.CA="rows",nb.clust=3)
res.hcpc$desc.var
