library(FactoMineR)
don=read.table("https://husson.github.io/img/litterature.csv",header=TRUE,row.names=1,sep=";",check.names=FALSE,quote="\"")
resCA=CA(don,quanti.sup=1,quali.sup=2:3)
ellipseCA(resCA,ellipse="row",invisible="col")

plot(resCA,invis=c("col","quali"), hab=2,title="",palette=palette(c("black","green3","blue","darkred","orange")))
plot(resCA,invis=c("col","quali"), hab=3,title="",palette=palette(c("black","darkred","orange","lightblue","blue","green3","magenta")))

### classif
res.hcpc = HCPC(resCA,nb.clust=-1,graph=FALSE,consol=FALSE)
resCA=CA(res.hcpc$data.clust,quanti.sup=1,quali.sup=c(2:3,ncol(don)+1))
plot(res.hcpc,choice="tree",palette=palette(c("black","green3","blue","darkred","orange","red","grey","magenta")))
plot(resCA,invis=c("col","quali"), hab=ncol(don)+1,palette=palette(c("yellow","black","green3","blue","darkred","orange","red","grey","magenta")))


oo = descfreq(res.hcpc$data.clust[,-c(1:3,ncol(res.hcpc$data.clust))],res.hcpc$data.clust$clust,proba=0.15)
liste=NULL
don2 = t(don[,-c(1:3)])
don2=cbind.data.frame(Classe=as.factor(c(rep("Aucune",nrow(don2)-nlevels(res.hcpc$data.clust$clust)),levels(res.hcpc$data.clust$clust))),don2)
don2[1:nrow(don2),1]="Aucune"
for (k in 1:nlevels(res.hcpc$data.clust$clust)) {
  don2[rownames(oo[[k]])[1:min(10,nrow(oo[[k]]))],1]=k
  liste=c(liste,rownames(oo[[k]])[1:min(10,nrow(oo[[k]]))])
}

newCA=CA(don2,quali.sup=1,graph=FALSE)
plot(newCA,invis=c("quali"),selectRow=liste,hab=1,cex=0.7,autoLab="no",unselect=1,title="",palette=palette(c("darkred","red","orange","green3","grey","black","blue","magenta","transparent")))