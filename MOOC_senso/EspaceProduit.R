library(SensoMineR)
### Importation des donnees
donnees <- read.table("https://husson.github.io/MOOC_senso/chocolat.csv",header=TRUE, sep=";")
# Transformation des 3 premieres variables comme variables qualitatives
for (i in 1:3) donnees[,i] <- as.factor(donnees[,i])
summary(donnees)

### Construction de l'espace produit
res <- panellipse(donnees, col.p = 4, col.j = 2, firstvar = 6)
### Table des probabilites critiques des tests des T2 de Hotelling
coltable(res$hotelling, main.title = "Probabilites critiques des tests T2 de Hotelling")

### Construction de l'espace produit (sans selection de descripteur)
res <- panellipse(donnees, col.p = 4, col.j = 2, firstvar = 5,level.search.desc = 1)

## Si on ne centre pas les donnees par juge (a eviter)
res2 <- panellipse(donnees, col.p = 4, col.j = 2, centerbypanelist = FALSE, firstvar = 6)
coltable(res2$hotelling, main.title = "Probabilites critiques des tests T2 de Hotelling")

## Si on considere seulement 12 juges dans le jury virtuel
res2 <- panellipse(donnees, col.p = 4, col.j = 2, nbchoix = 12, firstvar = 6)
coltable(res2$hotelling, main.title = "Probabilites critiques des tests T2 de Hotelling")

