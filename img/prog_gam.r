#### reg
ozone = read.table("ozone.csv",header=T,row.names=1,sep=";")
res.lm=lm(ozone$maxO3~ozone$T15)
#pdf("fig/reg_ozone.pdf")
par(mar=c(4,4,2,.5))
plot(maxO3~T15,data=ozone,pch="+")
points(predict(res.lm)~ozone$T15,type="l",col="blue",lwd=3)
title("Régression linéaire sur les données d'ozone")
#dev.off()

###régression polynomiale
xc=scale(ozone$T15,scale=F)
#pdf("fig/reg_poly_5.pdf")
par(mar=c(4,4,2,.5))
plot(maxO3~T15,data=ozone,pch="+",main="Régression polynomiale sur les données d'ozone")
res.lm=lm(ozone$maxO3~xc+I(xc^2))
points(predict(res.lm)[order(ozone$T15)]~ozone$T15[order(ozone$T15)],type="l",col="red",lwd=3)
res.lm=lm(ozone$maxO3~xc+I(xc^2)+I(xc^3)+I(xc^4)+I(xc^5))
points(predict(res.lm)[order(ozone$T15)]~ozone$T15[order(ozone$T15)],type="l",col="blue",lwd=3)
res.lm=lm(ozone$maxO3~xc+I(xc^2)+I(xc^3)+I(xc^4)+I(xc^5)+I(xc^6)+I(xc^7)+I(xc^8)+I(xc^9)+I(xc^10))
points(predict(res.lm)[order(ozone$T15)]~ozone$T15[order(ozone$T15)],type="l",col="green",lwd=3)
legend("topleft",c("degré 2","degré 5","degré 10"),text.col=c("red","blue","green"))
#dev.off()

### régression polynomiale avec variations locales fortes
x = seq(1:1000)/1000
xc=scale(x,scale=F)
y = x+10*xc^3-3*xc^5+rnorm(1000,sd=.05)
y[301:400]=y[301:400]+c(1:50,50:1)/25
#pdf("fig/reg_poly_var_locale.pdf")
par(mar=c(4,4,2,.5))
plot(y~x,main="Régression polynomiale",pch="+")
res.lm=lm(y~xc+I(xc^2))
points(predict(res.lm)~x,type="l",col="red",lwd=3)
res.lm=lm(y~xc+I(xc^2)+I(xc^3)+I(xc^4)+I(xc^5))
points(predict(res.lm)~x,type="l",col="blue",lwd=3)
res.lm=lm(y~xc+I(xc^2)+I(xc^3)+I(xc^4)+I(xc^5)+I(xc^6)+I(xc^7)+I(xc^8)+I(xc^9)+I(xc^10))
points(predict(res.lm)~x,type="l",col="green",lwd=3)
legend("topleft",c("degré 2","degré 5","degré 10"),text.col=c("red","blue","green"))
#dev.off()

## KernSmooth sur les mêmes données
library(KernSmooth)
#pdf("fig/reg_non_para_var_locale.pdf")
par(mar=c(4,4,2,.5))
plot(y~x,main="Régression non paramétrique",pch="+")
fx=locpoly(x,y,degree=0,bandwidth=0.005)
lines(fx$x,fx$y,col="blue",lwd=3)
#dev.off()

## régressogramme
#pdf("fig/regressogramme.pdf")
par(mar=c(4,4,2,.5))
plot(maxO3~T15,data=ozone,main="Régressogramme",pch="+",cex=.7,col="grey")
indice = which((ozone$T15>12.5)&(ozone$T15<17.5)) 
points(ozone$maxO3[indice]~ozone$T15[indice],pch="+",cex=.7,col="red")
abline(v=12.5,lty=2)
abline(v=17.5,lty=2)
moy = mean(ozone$maxO3[indice])
lines(c(12.5,17.5),c(moy,moy),col="blue",lwd=3)
#dev.off()

## régressogramme
#pdf("fig/regressogramme2.pdf")
par(mar=c(4,4,2,.5))
plot(maxO3~T15,data=ozone,main="Régressogramme",pch="+",cex=.7,col="grey")
for (i in 0:10){
  indice = which((ozone$T15>(2.5+(i*5)))&(ozone$T15<(7.5+i*5))) 
  abline(v=2.5+(i*5),lty=2)
  abline(v=7.5+(i*5),lty=2)
  moy = mean(ozone$maxO3[indice])
  lines(c(2.5+(i*5),7.5+(i*5)),c(moy,moy),col="red",lwd=3)
  if (i >0) lines(c(2.5+(i*5),2.5+(i*5)),c(moy,moyold),col="red",lwd=3)
  moyold=moy
}
#dev.off()

## régressogramme 2 fenêtres
#pdf("fig/regressogramme3.pdf")
par(mar=c(4,4,2,.5))
plot(maxO3~T15,data=ozone,main="Régressogramme",pch="+",cex=.7,col="grey")
for (i in 0:50){
  indice = which((ozone$T15>(2.5+i))&(ozone$T15<(3.5+i))) 
  moy = mean(ozone$maxO3[indice])
  lines(c(2.5+(i),3.5+(i)),c(moy,moy),col="blue",lwd=3)
  if (i >0) lines(c(2.5+(i),2.5+(i)),c(moy,moyold),col="blue",lwd=3)
  moyold=moy
#  abline(v=2.5+(i),lty=2)
#  abline(v=3.5+(i),lty=2)
}
for (i in 0:10){
  indice = which((ozone$T15>(2.5+(i*5)))&(ozone$T15<(7.5+i*5))) 
  moy = mean(ozone$maxO3[indice])
  lines(c(2.5+(i*5),7.5+(i*5)),c(moy,moy),col="red",lwd=3)
  if (i >0) lines(c(2.5+(i*5),2.5+(i*5)),c(moy,moyold),col="red",lwd=3)
  moyold=moy
}
#dev.off()

###moyenne mobile
library(KernSmooth)
#pdf("fig/moy_mobile.pdf")
par(mar=c(4,4,2,.5))
plot(maxO3~T15,data=ozone,main="Moyenne mobile",pch="+")
lines(ksmooth(ozone$T15, ozone$maxO3, "box", bandwidth=15), col="blue",lwd=3)
#dev.off()

###moyenne mobile pondérée
library(KernSmooth)
#pdf("fig/moy_mobile_ponderee.pdf")
par(mar=c(4,4,2,.5))
plot(maxO3~T15,data=ozone,main="Moyenne mobile pondérée",pch="+")
fx=locpoly(ozone$T15,ozone$maxO3,degree=0,bandwidth=0.1)
lines(fx$x,fx$y, col="green",lwd=3)
fx=locpoly(ozone$T15,ozone$maxO3,degree=0,bandwidth=1)
lines(fx$x,fx$y, col="blue",lwd=3)
fx=locpoly(ozone$T15,ozone$maxO3,degree=0,bandwidth=3)
lines(fx$x,fx$y, col="red",lwd=3)
legend("topleft",c("bandwith = 3","bandwith = 1","bandwith = 0.1"),text.col=c("red","blue","green"))
#dev.off()

###moyenne mobile pondéré versus polynome local pondéré
#pdf("fig/moy_mobile_poly_local.pdf")
par(mar=c(4,4,2,.5))
plot(maxO3~T15,data=ozone,main="Moyenne mobile pondérée / polynôme local pondéré",pch="+")
fx=locpoly(ozone$T15,ozone$maxO3,degree=0,bandwidth=3)
lines(fx$x,fx$y, col="red",lwd=2)
fx=loess(ozone$maxO3[order(ozone$T15)] ~ ozone$T15[order(ozone$T15)], span = 0.5, degree = 2) 
lines(ozone$T15[order(ozone$T15)],predict(fx), col="blue",lwd=2)
legend("topleft",c("Moyenne mobile pondérée","Polynôme local pondéré"),text.col=c("red","blue"))
#dev.off()

### spline
library(splines)
#pdf("fig/spline.pdf")
i=order(ozone[,"T15"])
t15=ozone[i,"T15"]
oz=ozone[i,"maxO3"]
base=bs(t15,knots=quantile(t15,c(.25,.5,.75)),intercept=FALSE,degree=3)
reg=lm(oz~base)
plot(maxO3~T15,data=ozone,main="Régression B-spline",pch="+")
lines(t15,reg$fit, col="red",lwd=3)
#dev.off()

#### Simu avec sinusoide
x=seq(1:720)/360
y=sin(2*pi*x)+rnorm(length(x),sd=0.7)

# modele
#pdf("fig/choix_fenetre_modele.pdf")
par(mar=c(4,4,2,.5))
plot(y~x,cex=.7,pch="+",main="Modèle et données")
points(sin(2*pi*x)~x,type="l",lwd=2)
#dev.off()

#  loess plusieurs fenêtres
#pdf("fig/choix_fenetre.pdf")
par(mar=c(4,4,2,.5))
plot(y~x,cex=.7,pch="+",main="Méthode loess avec plusieurs fenêtres")
pred <- loess(y ~ x, span = 0.015, degree = 2) 
points(pred$fitted[order(x)]~x[order(x)],col="red",lwd=2,type="l")
pred <- loess(y ~ x, span = 0.1, degree = 2) 
points(pred$fitted[order(x)]~x[order(x)],col="blue",lwd=2,type="l")
pred <- loess(y ~ x, span = 0.3, degree = 2) 
points(pred$fitted[order(x)]~x[order(x)],col="green",lwd=2,type="l")
pred <- loess(y ~ x, span = .95, degree = 2) 
points(pred$fitted[order(x)]~x[order(x)],col="black",lwd=2,type="l")
legend("bottomleft",c("span=0.015","span = 0.1", "span = 0.3","span = 0.95"),text.col=c("red","blue","green","black"))
#dev.off()

# #  loess meilleurs fenêtre
#pdf("fig/choix_fenetre_ok.pdf")
par(mar=c(4,4,2,.5))
plot(y~x,cex=.7,pch="+",main="Méthode loess avec span = 0.3")
pred <- loess(y ~ x, span = 0.3, degree = 2) 
points(sin(2*pi*x)~x,type="l",lwd=2)
points(pred$fitted[order(x)]~x[order(x)],col="red",lwd=3,type="l")
legend("topleft",c("modèle","span=0.3"),text.col=c("black","red"))
#dev.off()


##### erreur ajust et prévision
X=x
Y=y
reg=loess(y ~ x, span = 0.3) 

n=length(X)
indice=sample(1:n,floor(n*2/3))
XA=X[indice]
YA=Y[indice]
XB=X[-indice]
YB=Y[-indice]
grilleb=seq(0.01,0.81,length=100)
erreurprev=erreurajust=grilleb
for(i in 1:length(grilleb)){
  reg=loess(YA~XA,span=grilleb[i])
  res = predict(reg,newdata=XB)
  erreurprev[i]=mean((YB-res)^2,na.rm=T)
  erreurajust[i]=mean((YA-reg$fitted)^2,na.rm=T)
}

titi=max(max(erreurajust),max(erreurprev))
plot(grilleb,erreurajust,type="l",ylim=c(0,titi),col="red",ylab="Erreur",xlab="Taille de fenêtre")
lines(grilleb,erreurprev,type="l")
legend("topleft",c("Ajustement","Prédiction"),text.col=c("red","black"))


### interaction
library(gam)
ozveille=ozone[,"maxO3v"]
t15=ozone[,"T15"]
ngrille=50
ov=seq(min(ozone[,"maxO3v"]),max(ozone[,"maxO3v"]),length=ngrille)
t=seq(min(ozone[,"T15"]),max(ozone[,"T15"]),length=ngrille)
newdata=expand.grid(t15=t,ozveille=ov)

#pdf("fig/interaction.pdf",width=16,height=8)
par(mfrow=c(1,2))
par(mar=c(0,2,3,0))
regmult=loess(ozone[,"maxO3"]~t15+ozveille,span=0.5,degree=1)
ajustement=matrix(predict(regmult,newdata),ngrille,ngrille)
persp(t,ov,ajustement,theta=45,phi=30,ticktype="detailed",xlab="T15",ylab="maxO3v",zlab="prédiction maxO3",expand=2/3,shade=0.5,main="maxO3 ~lo(T15+maxO3v)") #ts les options