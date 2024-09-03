#     Charger le logiciel (Xplortext)
rm(list = ls())
library(Xplortext)
#     Charger les données
load("Aspiration_Int_Fr.RData") 
 
# ########## 2. Construction du TLE et du tableau segmental; résumé des résultats et glossaures
U_stoplist<-c("bien","bonne","tout")
res.TD<-TextData(base_Fr,var.text=c(9,10), idiom="fr", var.agg="Sexe_Age", Fmin=100, Dmin=80,
                  stop.word.user=U_stoplist, stop.word.tm=TRUE,,graph=FALSE)
summary(res.TD,ndoc=0)

#     Matrice des effectifs  
TableLex<-as.matrix(res.TD$DocTerm)
dm1 <- addmargins(TableLex)
rownames(dm1)[nrow(dm1)]<-"somme"
colnames(dm1)[ncol(dm1)]<-"somme"
print(dm1, zero.print = ".")

#     Matrice de profils-lignes*100 
dm2<-rbind(TableLex,apply(TableLex,2,sum))
dm2<-prop.table(as.matrix(dm2),margin=1) 
dm2<-cbind(dm2,apply(dm2,1,sum))
rownames(dm2)[nrow(dm2)]<-"profil moyen"
colnames(dm2)[ncol(dm2)]<-"somme"
print(round(dm2*100,2))

#     Matrice de profils-colonne*100. 
dm3<-cbind(TableLex,apply(TableLex,1,sum))
dm3<-prop.table(as.matrix(dm3),margin=2)
dm3<-rbind(dm3,apply(dm3,2,sum))
rownames(dm3)[nrow(dm3)]<-"somme"
colnames(dm3)[ncol(dm3)]<-"profil moyen"
round(dm3*100,2)

#     Calcul du chi-2 
res.chi2<-chisq.test(TableLex)
print(res.chi2)

#     Tableaux des effectifs observés et théoriques (sous l'hypothèse d'indépendance). 
tabobser<-res.chi2$observed
tabobser <- addmargins(tabobser)
rownames(tabobser)[nrow(tabobser)]<-"somme"
colnames(tabobser)[ncol(tabobser)]<-"somme"
print(tabobser)

tabexpect<-res.chi2$expected
tabexpect <- addmargins(tabexpect)
rownames(tabexpect)[nrow(tabexpect)]<-"somme"
colnames(tabexpect)[ncol(tabexpect)]<-"somme"
round(tabexpect,1)

#    Tableau des taux d'associacions
tau<-(res.chi2$observed)/res.chi2$expected
round(tau,2)

#     Analyse des correspondances du tableau lexical agrégé selon la variable Sexe_Age
res.LexCA<-LexCA(res.TD, graph=FALSE)

#    Graphique des valeurs propres
plot(res.LexCA,eigen=TRUE,selDoc=NULL,selWord=NULL,title="Valeurs propres")

#    Résultats pour les documents
summary(res.LexCA,nword=0)

#     Représentation des catégories d'âges, trajectoires séparées pour chaque sexe; échelles fixées.
plot(res.LexCA,selWord=NULL,xlim=c(-0.3,0.3),ylim=c(-0.3,0.3),cex=1.2,col.doc="black",title="Représentation des documents")
lines(res.LexCA$row$coord[1:3,1],res.LexCA$row$coord[1:3,2],lwd=1.5,col="grey20")
lines(res.LexCA$row$coord[4:6,1],res.LexCA$row$coord[4:6,2],lwd=1.5,col="grey20")

#     Représentation de tous les mots; mêmes échelles que sur le graphique précédent
plot(res.LexCA,gtype="DocWord",selDoc=NULL,xlim=c(-0.3,0.3),ylim=c(-0.3,0.3),col.word="black",cex=1.2,
title="Représentation des mots")

#     Représentation des lignes et des colonnes sur le même graphique. mêmes échelles que sur les graphique précédents
plot(res.LexCA,gtype="DocWord",xlim=c(-0.3,0.3),ylim=c(-0.3,0.3),col.doc="grey50",col.word="black",cex=1.2,
title="Représentation simultanée des documents et des mots")
lines(res.LexCA$row$coord[1:3,1],res.LexCA$row$coord[1:3,2],lwd=1,col="black")
lines(res.LexCA$row$coord[4:6,1],res.LexCA$row$coord[4:6,2],lwd=1,col="black")

#     Ellipses de confiance autour des catégories d'âge et représentation des trajectoires
ellipseLexCA(res.LexCA,selWord=NULL,col.doc="black",
title="Documents - Ellipses de confiance")
lines(res.LexCA$row$coord[1:3,1],res.LexCA$row$coord[1:3,2],lwd=1,col="blue")
lines(res.LexCA$row$coord[4:6,1],res.LexCA$row$coord[4:6,2],lwd=1,col="blue")

#     Ellipses de confiance autour des mots de contribution supérieure à la contribution moyenne sur l'un ou l'autre des axes
ellipseLexCA(res.LexCA,selWord="meta 0.5",selDoc=NULL,col.word="black",
title="Quelques mots - Ellipses de confiance")




