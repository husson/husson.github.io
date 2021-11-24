### Tutoriel sur la science des données
### Jourées d'Hammamet - F. Husson

## Importation des données
Temperature <- read.table("Temp_Tunisie.csv",header=TRUE,sep=";",dec=",",row.names=1,fileEncoding="latin1",stringsAsFactors = TRUE)

# Ligne suivante pour installer le package FactoMineR (à installer 1 seule fois)
# install.packages("FactoMineR")
library(FactoMineR)
resACP <- PCA(Temperature[,-16],quanti.sup=13:14,quali.sup=15)

plot(resACP,invisible="quali",title="Graphe des individus")
plot(resACP,hab=15,title="Graphe des individus et variable région")
plot(resACP,choix="var",title="Graphe avec variables supplémentaires")

### Utilisation du package Factoshiny
# Ligne suivante pour installer le package Factoshiny (à installer 1 seule fois)
# install.packages("Factoshiny")

library(Factoshiny)
Factoshiny(Temperature)

### Faire une classification
resHCPC=HCPC(resACP)

### Arbre
bank <- read.csv("https://r-stat-sc-donnees.github.io/bank-additional.csv",sep=";",stringsAsFactors = TRUE)
summary(bank)

## Création d'un échantillon d'apprentissage et d'un échantillon test
set.seed(5678)
perm <- sample(nrow(bank),3000)
app <- bank[perm,]
test <- bank[-perm,]

library(rpart)
## Construction de l'arbre par défaut
arbre1 <- rpart(y~., data=app)

## Elaguage de l'arbre - choix de la taille de l'arbre
printcp(arbre1)

## Trouver le CP qui donne l'erreur mini
LigneARetenir <- which.min(arbre1$cptable[,"xerror"])
cp_opt <- arbre1$cptable[LigneARetenir,"CP"]
## arbre optimal ligne 4, avec 6 noeuds
arbre.fin <- prune(arbre1,cp=cp_opt) ## prendre une valeur légèrement supériere à 0.01325

library(visNetwork)
visTree(arbre.fin)

pred <- predict(arbre.fin,newdata=test, type="class")  ## type="class" car Y quali

## Tableau croisé confrontant prédictions et observations 
table(pred,test$y)

## calcul du taux de mauvais classement
mean(pred!=test$y)

## Construction de l'arbre complet (pas utile)
arbre_complet <- rpart(y~., data=app,cp=0,minsplit=2)
visTree(arbre_complet)


#### Forêt aléatoire
library(randomForest)
spam <- read.table("spam.csv",header=TRUE,sep=";",stringsAsFactors = TRUE)
set.seed(5678)
perm <- sample(4601,3000)
app <- spam[perm,]
valid <- spam[-perm,]


set.seed(1234)
foret <- randomForest(type~.,data=app)
plot(foret)  ## taux d'erreur stable ==> on prend 500 arbres

set.seed(5432)
foret1 <- randomForest(type~.,data=app,mtry=10)
prev.valid <- predict(foret1,newdata=valid)
prev.valid[1:10]

prob.valid <- predict(foret1,newdata=valid,type="prob")
prob.valid[1:10,]



## Tableau croisé confrontant prédictions et observations 
table(prev.valid,valid$type)

## calcul du taux de mauvais classement
mean(prev.valid!=valid$type)

