library(SensoMineR)
### Importation des donnees
donnees <- read.table("https://husson.github.io/MOOC_senso/chocolat.csv",header=TRUE, sep=";")
# Transformation des 3 premieres variables comme variables qualitatives
for (i in 1:3) donnees[,i] <- as.factor(donnees[,i])
summary(donnees)

### Caracterisation des produits
resdecat<-decat(sensochoc, formul="~Produit+Juge+Seance+Produit:Juge+Seance:Produit+Juge:Seance", firstvar = 5)
resdecat

barrow(resdecat$tabT)
barrow(t(resdecat$tabT), numr = 3, numc = 3)
barrow(resdecat$coeff, color = "orange") 

