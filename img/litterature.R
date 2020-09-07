library(FactoMineR)
setwd("C:/Users/husson/AOBox/Travail/huss/Recherch/Articles/FactoMineR/AFC_text_litterature")
don=read.table("litterature.csv",header=TRUE,row.names=1,sep=";",check.names=FALSE,quote="\"")
resCA=CA(don,quanti.sup=1,quali.sup=2:3)
resCA$row$coord[,1]=-resCA$row$coord[,1]
resCA$col$coord[,1]=-resCA$col$coord[,1]
resCA$quali.sup$coord[,1]=-resCA$quali.sup$coord[,1]
resCA$quanti.sup$coord[,1]=-resCA$quanti.sup$coord[,1]

plot(resCA,invis=c("col","quali"), hab=2,title="",palette=palette(c("black","green3","blue","darkred","orange")),shadow=TRUE)
plot(resCA,invis=c("col","quali"), hab=3,title="",palette=palette(c("black","darkred","orange","lightblue","blue","green3","magenta")))
### classif
res.hcpc = HCPC(resCA,nb.clust=-1,graph=FALSE,consol=FALSE)
resCA=CA(cbind.data.frame(don[,1:3],res.hcpc$data.clust[rownames(don),ncol(res.hcpc$data.clust)],don[,-(1:3)]),quanti.sup=1,quali.sup=2:4)
plot(res.hcpc,choice="tree",palette=palette(c("black","green3","blue","darkred","orange","red","grey","magenta")),new.plot=TRUE)
resCA$row$coord[,1]=-resCA$row$coord[,1]
resCA$col$coord[,1]=-resCA$col$coord[,1]
resCA$quali.sup$coord[,1]=-resCA$quali.sup$coord[,1]
plot(resCA,invis=c("col","quali"), hab=4,cex=1.2,title="",cex.axis=1.2,cex.lab=1.2,palette=palette(c("yellow","black","green3","blue","darkred","orange","red","grey","magenta")),shadow=TRUE,new.plot=TRUE)


oo = catdes(cbind.data.frame(res.hcpc$data.clust$clust,don[,-1]),1,proba=0.15)
liste=NULL
don2 = t(don[,-c(1:3)])
don2=cbind.data.frame(Epoque=as.factor(c(rep("aa",nrow(don2)-nlevels(res.hcpc$data.clust$clust)),levels(res.hcpc$data.clust$clust))),don2)
don2[1:nrow(don2),1]="aa"
for (k in 1:nlevels(res.hcpc$data.clust$clust)) {
  don2[rownames(oo$quanti[[k]]),1]=names(oo$quanti)[k]
  liste=c(liste,rownames(oo$quanti[[k]])[1:min(10,nrow(oo$quanti[[k]]))])
}

newCA=CA(don2,quali.sup=1,graph=FALSE)
newCA$row$coord[,1]=-newCA$row$coord[,1]
newCA$col$coord[,1]=-newCA$col$coord[,1]
newCA$quali.sup$coord[,1]=-newCA$quali.sup$coord[,1]
plot(newCA,invis=c("quali","col"),selectRow=liste[1],hab=1,unselect=0,title="",auto="yes",palette=palette(c("transparent","darkred","red","orange","green3","grey","black","blue","magenta")))
