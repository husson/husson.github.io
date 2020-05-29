library(SensoMineR)
### Importation des donnees
donnees <- read.table("https://husson.github.io/MOOC_senso/chocolat.csv",header=TRUE, sep=";")
# Transformation des 3 premieres variables comme variables qualitatives
for (i in 1:3) donnees[,i] <- as.factor(donnees[,i])
summary(donnees)

### Evaluation de la performance du jury
res <- panelperf(donnees, firstvar = 5, formul = "~Produit+Juge+Seance+Produit:Juge+Seance:Produit+Juge:Seance")
res
# Tri des resultats par probabilites critiques croissantes de l'effet produit
coltable(magicsort(res$p.value, sort.mat = res$p.value[,1], bycol =FALSE,method = "median"), main.title = "Performance du jury")

### Etude de l'interaction produit:seance (pour le descripteur collant)
resinteract <- interact(donnees, col.p = 4, col.j = 2, firstvar = 17, lastvar=17)
graphinter(sensochoc, col.p = 4, col.j = 2, firstvar = 17, lastvar = 17,numr = 1, numc = 1)
	
### Evaluation de la performance des juges ET du jury
res<-paneliperf(donnees, formul = "~Produit+Juge+Seance+Produit:Juge+Seance:Produit+Juge:Seance",formul.j = "~Product", col.j = 1, firstvar = 5, synthesis = TRUE)
resprob<-magicsort(res$prob.ind, method = "median")
coltable(resprob, level.lower = 0.05, level.upper = 1, main.title = "Proba critiques des tests F de l'effet produit (par juge)")
hist(resprob,main="Histogramme des probabilites critiques",xlab="Probabilites critiques")

resr2<-magicsort(res$r2.ind, method = "median", ascending = FALSE)
coltable(resr2, level.lower = 0.00, level.upper = 0.85,main.title = "Consensus entre juge et jury evalue par le R2 (par juge)")

resagree<-magicsort(res$agree, sort.mat = res$r2.ind, method = "median")
coltable(resagree, level.lower = 0.00, level.upper = 0.85,main.title = "Consensus entre juges")
hist(resagree,main="Histogramme des consensus entre juges et jury",xlab="Coefficient de correlation entre l'effet produit pour le modele complet et le modele par juge")

coltable(magicsort(res$p.value, sort.mat = res$p.value[,1], bycol = FALSE,method = "median"),main.title = "Performance du jury (triee par probabilite critique de l'effet produit)")
