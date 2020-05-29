library(SensoMineR)
### Importation des donnees
donnees <- read.table("https://husson.github.io/MOOC_senso/desc_cocktail.csv",header=TRUE, sep=";")
summary(donnees)
pref <- read.table("https://husson.github.io/MOOC_senso/hedo_cocktail.csv",header=TRUE, sep=";", row.names=1)
summary(pref)

### Calcul du tableau moyen des description sensoriel
desc <- averagetable(donnees, formul = "~Produit+Juge",firstvar = 5)

### Concatenation du tableau sensoriel et du tableau de preferences
don_concat <- cbind.data.frame(pref[rownames(desc),],desc)  ## les donnees de pref sont triees dans le meme ordre que celles de desc

### Cartographie externe : construction d'un espace produit et projection des preferences (modele vectoriel)
res.pca <- PCA(don_concat,quanti.sup=1:ncol(pref))

### Cartographie externe : construction d'un espace produit et projection des preferences (modele quadratique)
res.carto <- carto(res.pca$ind$coord[,1:2], pref)
