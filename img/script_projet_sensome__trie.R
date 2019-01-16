library(SensoMineR)
data(perfume_ideal)
write.table(perfume_ideal, "data.csv",row.names=FALSE, sep=";",dec=",", na=" ")
summary(perfume_ideal)
perfume_ideal[1:20,1:20]

#Importation du jeu de donnees parfum
parfum <- read.table("G:/Sensometrie/data.csv", header=TRUE, sep=";", na.strings="NA", dec=",", strip.white=TRUE)
summary(parfum)
dim(parfum) #1442 lignes et 45 colonnes

res <- ConsistencyIdeal(perfume_ideal, col.p=2, col.j=1,
				col.lik=ncol(perfume_ideal), id.recogn="id_",
				type="both", nbsim=100)
####################
4.1. ###Le panel de consommateur a-t-il un unique idéal ou plusieurs idéaux? 
####################
#4.1. Au niveau du panel de consommateur
####
#4.1.1.1.GLOBALEMENT 
####
dataacp<-read.table("G:/Sensometrie/dataACP1.csv", header=TRUE, sep=";", na.strings="NA", dec=",", strip.white=TRUE)
dim(dataacp)
names(dataacp)

vect<-c("Angel","AromaticsElixir","Chaneln5","Cinema","CocoMelle","JAdore_EP","JAdore_ET","LInstant","LolitaLempicka","Pleasures","PurePoison","PurePoison2","Shalimar","Shalimar2")
moyenne<-matrix(0,14,21)
for (j in 1:14){
	select<-which(dataacp$product==vect[j])
	sel<-dataacp[select,]
	for (i in 2:22){
		moyenne[j,i-1]<-mean(sel[,i])
	}
}
moyenne
rownames(moyenne)<-c("Angel","AromaticsElixir","Chaneln5","Cinema","CocoMelle","JAdore_EP","JAdore_ET","LInstant","LolitaLempicka","Pleasures","PurePoison","PurePoison2","Shalimar","Shalimar2")
colnames(moyenne)<-c("intensity", "freshness", "jasmin", "rose", "camomille", "fresh_lemon","vanilla","citrus","anis","sweet_fruit","honey","caramel","spicy","woody","leather","nutty","musk","animal", "earthy","incense","green")


vect<-c("Angel","AromaticsElixir","Chaneln5","Cinema","CocoMelle","JAdore_EP","JAdore_ET","LInstant","LolitaLempicka","Pleasures","PurePoison","PurePoison2","Shalimar","Shalimar2")
moyenne_id<-matrix(0,14,21)
for (j in 1:14){
	select<-which(dataacp$product==vect[j])
	sel<-dataacp[select,]
	for (i in 23:43){
		moyenne_id[j,i-22]<-mean(sel[,i])
	}
}
moyenne_id
rownames(moyenne_id)<-c("id_Angel","id_AromaticsElixir","id_Chaneln5","id_Cinema","id_CocoMelle","id_JAdore_EP","id_JAdore_ET","id_LInstant","id_LolitaLempicka","id_Pleasures","id_PurePoison","id_PurePoison2","id_Shalimar","id_Shalimar2")
colnames(moyenne_id)<-c("id_intensity", "id_freshness", "id_jasmin", "id_rose", "id_camomille", "id_fresh_lemon","id_vanilla","id_citrus","id_anis","id_sweet_fruit","id_honey","id_caramel","id_spicy","id_woody","id_leather","id_nutty","id_musk","id_animal", "id_earthy","id_incense","id_green")

dataacp1<-rbind(moyenne, moyenne_id)
dim(dataacp1)

res.PCA<-PCA(dataacp1, ind.sup=15:28)

#Il faut juste rajouter les ellipses de confiance en illustratif pour les produits ideaux 

####
#4.1.1.2. POUR CHAQUE ATTRIBUT
####

parfumACP <- read.table("G:/Sensometrie/dataACP.csv", header=TRUE, sep=";", na.strings="NA", dec=",", strip.white=TRUE)
parfumACP$user<-as.factor(parfumACP$user)
dim(parfumACP)
library(car)
Fsenso<-rep(0,21)
names(parfumACP)
for (i in 3:23){
	res<-Anova(lm(parfumACP[,i]~product+user, data=parfumACP))
	Fsenso[i-2]<-res[1,3]
}
Fsenso

Fideal<-rep(0,21)
for (i in 24:44){
	res<-Anova(lm(parfumACP[,i]~product+user, data=parfumACP))
	Fideal[i-23]<-res[1,3]
}
Fideal

ratio<-rep(0,21)
for (i in 1:21){
	ratio[i]<-Fideal[i]/Fsenso[i]
}
ratio<-as.matrix(ratio)
boxplot(ratio, main="Distribution du ratio des valeurs de fisher \n de l'effet produit pour les intensités perçues et idéales", xlab="parfum", ylab="ratio : F(z_jpa)/F(y_jpa)")
rownames(ratio)<-c("intensity", "freshness", "jasmin", "rose", "camomille", "fresh_lemon","vanilla","citrus","anis","sweet_fruit","honey","caramel","spicy","woody","leather","nutty","musk","animal", "earthy","incense","green")
plot(ratio)

####
#4.1.1.3. INFLUENCE DE L'EFFET PRODUIT sur l'evaluation du produit ideal
####
#Recupération des pval et des coef de l'effet produit pour les attributs idéaux
pval<-rep(0,21)
coef_id<-matrix(0,14,21)
for (i in 24:44){
	res<-Anova(lm(parfumACP[,i]~product+user, data=parfumACP))
	res.lm<-lm(parfumACP[,i]~product+user, data=parfumACP)
	coef_id[1,i-23]<-res.lm$coefficients[1]
	coef_id[2,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[2]
	coef_id[3,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[3]
	coef_id[4,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[4]
	coef_id[5,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[5]
	coef_id[6,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[6]
	coef_id[7,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[7]
	coef_id[8,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[8]
	coef_id[9,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[9]
	coef_id[10,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[10]
	coef_id[11,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[11]
	coef_id[12,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[12]
	coef_id[13,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[13]
	coef_id[14,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[14]
	pval[i-23]<-res[1,4]
}
pval

colnames(coef_id)<-c("influence sur intensity", "influence sur freshness", "influence sur jasmin", "influence sur rose", "influence sur camomille", "influence sur fresh_lemon","influence sur vanilla","influence sur citrus","influence sur anis","influence sur sweet_fruit","influence sur honey","influence sur caramel","influence sur spicy","influence sur woody","influence sur leather","influence sur nutty","influence sur musk","influence sur animal", "influence sur earthy","influence sur incense","influence sur green")
coef_id
#J'ai bien 13 sur 21 attributs qui ont un effet produit significatif :)

#Recuperation des coefficients de correlation entre intensites percues et note ideale 
clas<-read.table("G:/Sensometrie/Classeur1.csv", header=TRUE, sep=";", na.strings="NA", dec=",", strip.white=TRUE)
#class: jeu de donnees avec que les attributs des intensites percues
dim(clas)
vect<-c("Angel","AromaticsElixir","Chaneln5","Cinema","CocoMelle","JAdore_EP","JAdore_ET","LInstant","LolitaLempicka","Pleasures","PurePoison","PurePoison2","Shalimar","Shalimar2")
moyenne<-matrix(0,14,21)
for (j in 1:14){
	select<-which(clas$product==vect[j])
	sel<-clas[select,]
	for (i in 2:22){
		moyenne[j,i-1]<-mean(sel[,i])
	}
}
moyenne
rownames(moyenne)<-c("Angel","AromaticsElixir","Chaneln5","Cinema","CocoMelle","JAdore_EP","JAdore_ET","LInstant","LolitaLempicka","Pleasures","PurePoison","PurePoison2","Shalimar","Shalimar2")
colnames(moyenne)<-c("intensity", "freshness", "jasmin", "rose", "camomille", "fresh_lemon","vanilla","citrus","anis","sweet_fruit","honey","caramel","spicy","woody","leather","nutty","musk","animal", "earthy","incense","green","id_intensity", "id_freshness", "id_jasmin", "id_rose", "id_camomille", "id_fresh_lemon","id_vanilla","id_citrus","id_anis","id_sweet_fruit","id_honey","id_caramel","id_spicy","id_woody","id_leather","id_nutty","id_musk","id_animal", "id_earthy","id_incense","id_green")
moyenne
dim(moyenne)
res.PCA<-PCA(moyenne,quanti.sup=21:42)

data<-cbind(moyenne,coef_id)
dim(data)
res.pca<-PCA(data, quanti.sup=22:42)
res.pca$var$cor
res.pca$quanti.sup$cor

colnames(coef_id)<-c("id_intensity", "id_freshness", "id_jasmin", "id_rose", "id_camomille", "id_fresh_lemon","id_vanilla","id_citrus","id_anis","id_sweet_fruit","id_honey","id_caramel","id_spicy","id_woody","id_leather","id_nutty","id_musk","id_animal", "id_earthy","id_incense","id_green")
coef_id

#Recupération des pval et des coef de l'effet produit pour les attributs non ideaux
pval<-rep(0,21)
coef<-matrix(0,14,21)
for (i in 3:23){
	res<-Anova(lm(parfumACP[,i]~product+user, data=parfumACP))
	res.lm<-lm(parfumACP[,i]~product+user, data=parfumACP)
	coef[1,i-23]<-res.lm$coefficients[1]
	coef[2,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[2]
	coef[3,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[3]
	coef[4,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[4]
	coef[5,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[5]
	coef[6,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[6]
	coef[7,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[7]
	coef[8,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[8]
	coef[9,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[9]
	coef[10,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[10]
	coef[11,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[11]
	coef[12,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[12]
	coef[13,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[13]
	coef[14,i-23]<-res.lm$coefficients[1]+res.lm$coefficients[14]
	pval[i-23]<-res[1,4]
}
pval
coef
colnames(coef)<-c("intensity", "freshness", "jasmin", "rose", "camomille", "fresh_lemon","vanilla","citrus","anis","sweet_fruit","honey","caramel","spicy","woody","leather","nutty","musk","animal", "earthy","incense","green")
coef
coefACP<-cbind(coef, coef_id)
dim(coefACP)
res.PCA<-PCA(coefACP, quanti.sup=22:42)

#Influence des intensite percues sur l'evaluation des produits ideaux pour un attribut ideal non significatif (intensity, pval=0.0562) et significatif (freshness, pval=9.74e-7) 

#pour l'attribut intensite
ordre<-with(parfumACP,reorder(parfumACP$product,parfumACP$intensity, mean))
res1<-boxplot(parfumACP$id_int~ordre)
boxplot(parfumACP$intensity~ordre, cex.axis=0.7)
lines(res1$conf[1,], type="p")

#pour l'attribut freshness
ordre<-with(parfumACP,reorder(parfumACP$product, parfumACP$freshness, mean))
res1<-boxplot(parfumACP$id_fresh~parfumACP$product)
res<-boxplot(parfumACP$freshness~ordre, cex.axis=0.6)
lines(res1$conf[1,], type="p")


#4.1. Au niveau du consommateur
#Avec Anova type III
SSQ_id<-rep(0,21)
for (i in 24:44){
	res<-Anova(lm(parfumACP[,i]~user, data=parfumACP),type="III")
	SSQ_id[i-23]<-res[3,1]
}
SSQ_id

SSQ<-rep(0,21)
for (i in 3:23){
	res<-Anova(lm(parfumACP[,i]~user, data=parfumACP),type="III")
	SSQ[i-3]<-res[3,1]
}
SSQ

ratio<-rep(0,20)
for (i in 1:20){
	ratio[i]<-SSQ_id[i]/SSQ[i]
}
ratio
boxplot(ratio, main="Ratio des sommes des carrés des résidus")
#Je n'obtiens pas le meme graphique ... :(

#Essai avec aov

SSQ_id<-rep(0,21)
for (i in 24:44){
	res<-summary(aov(lm(parfumACP[,i]~user, data=parfumACP)))
	SSQ_id[i-23]<-res[[1]][2,2]
}
SSQ_id

SSQ<-rep(0,21)
for (i in 3:23){
	res<-summary(aov(lm(parfumACP[,i]~user, data=parfumACP)))
	SSQ[i-3]<-res[[1]][2,2]
}
SSQ

summary(lm(parfumACP[,3]~user, data=parfumACP))
ratio<-rep(0,20)
for (i in 1:20){
	ratio[i]<-SSQ_id[i]/SSQ[i]
}
ratio
boxplot(ratio, main="Ratio des sommes des carrés des résidus")
#Je n'obtiens pas le meme graphique ... :(
summary(aov(lm(parfumACP[,i]~user, data=parfumACP)))


####################
4.2. ###Variabilite au niveau des profil ideaux moyens 
####################

#ACP sur les profils moyens corriges, les produits testes sont projetes en supplementaires
#Axes 2 et 3 car sur l'Axe 1 ne sont pas bien separes
#Ideal profile method sur les axes 2,3 pour palier l'effet taille
res<-ConsistencyIdeal(perfume_ideal, col.p=2, col.j=1, col.lik=ncol(perfume_ideal), 
			id.recogn="id_", type="both", scale.unit=TRUE,
                  ncp=NULL, axes=c(2,3), nbsim=100, replace.na=FALSE, graph=TRUE)

#the datasets used for the different PCA
res$Senso
res$Senso$panel #jeu de donnees utilises pour faire les ACP

#the results of the PCA for the creation of the ideal space
res$Senso$panel$PCA.ideal

#the results of the PCA with projection of the hedonic scores
res$Senso$panel$PCA.ideal_hedo

#the results of the PCA with the proojection of the sensory descriptions
res$Senso$panel$PCA.ideal_senso

#the correlation between the product projected from the sensory and hedonic points of view
res$Senso$panel$correlation

#a list containing the hedonic scores for the product, ideal products, average ideal product and the standardized ideal product for each consumer
res$Hedo$hedo

res$Senso$conso

