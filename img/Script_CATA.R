## Installer au préalable les packages chargés dans library : FactoMineR, RVAideMemoire ! 

## Importation des données
data_CATA<-read.table(file ="CATA.csv" ,header=T, sep=";",dec=",")

## Résumé des données 
summary(data_CATA)

## La variable consommateur a été importés en qualitative == > Changement de sa nature :
data_CATA$Consommateur<-as.factor(data_CATA$Consommateur)

## On met les noms des pommes correspondantes aux numéros des echantillons 
levels(data_CATA$Produit)<-c("Granny Smith","Crisp Pink","Royal Gala","Fuji","Red Delicious","Ideal")
 
## Les données data_CATA2 sont les données issues du tableau brut sans le produit IDEAL :

ind<-which(data_CATA$Produit=="Ideal")
data_CATA2<-data_CATA[-ind,]

### Test Q de Cochran + comparaisonn multiple :

library(RVAideMemoire)

cochran.qtest(Ferme~Produit|Consommateur,data=data_CATA2)
  
### Fonction qui permet de créer un tableau de contingence à partir de données verticales et équilibrées :

nbjuge <- 119
list_juges <- 0:(nbjuge-1)
nbproduit <- 6
nbdescripteur <- 15
nom_descripteur <- colnames(data_CATA[,4:18])
nom_produit <- levels(data_CATA$Produit)
tab_cont <- matrix(nrow=nbproduit,ncol=nbdescripteur,dimnames=list(nom_produit, nom_descripteur))
for(i in 1:nbproduit){
  tab_cont[i,] <- colSums(data_CATA[list_juges*nbproduit+i,-(1:3)])  ## On supprime les trois premieres colonnes
  tab_cont<-data.frame(tab_cont)
  }

### Mise en oeuvre de L'AFC sur un tableau de contingence :

library(FactoMineR)

AFC<-CA(tab_cont)

## Test d'indépendance entre les lignes et les colonnes :
chisq.test(tab_cont)




