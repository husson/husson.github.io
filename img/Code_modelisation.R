ozone <- read.table("https://r-stat-sc-donnees.github.io/ozone.txt", 
  header=TRUE, stringsAsFactors = TRUE)

library(ggplot2)
ggplot(ozone) +
  aes(x=T9, y=maxO3) + 
  geom_point() +
  geom_smooth(method="lm", se=FALSE) +
  ggtitle("Effet de T9 sur le maximum d'ozone")

ggplot(ozone) +
  aes(x=vent, y=maxO3, fill=vent,col=vent) +
  geom_boxplot(outlier.shape=NA,alpha=0.4) +
  geom_jitter()+
  ggtitle("Effet du vent sur le maximum d'ozone") 

ggplot(ozone) + 
  aes(x=T9, y=maxO3, col = vent, group=vent) + 
  geom_smooth(method="lm", se=FALSE) + 
  geom_point()+ 
  ggtitle("Effet de T9 sur MaxO3 selon le vent")

library(dplyr)
ozone %>% group_by(vent, pluie) %>% 
  summarize(MOY = mean(maxO3)) %>%
  ggplot() + 
  aes(x=vent, y=MOY, col=pluie, group=pluie) + 
  geom_line() + geom_point() +
  ggtitle("Interaction pluie:vent sur maxO3")+
  xlab("Direction du vent")+
  ylab("Maximum d'ozone")

library(FactoMineR)
LinearModel(maxO3 ~ T0+T12+T15+Ne9+Ne12+Ne15+Vx9+Vx12+Vx15+maxO3v+pluie+vent, data=ozone)

library(FactoMineR)
LinearModel(maxO3 ~ ., data = ozone)    ## écriture simplifiée

library(FactoMineR)
LinearModel(maxO3~., data=ozone, selection="bic")

mod <- LinearModel(sucre~choc+juge+choc:juge, data=chocolats)
meansComp(mod,~choc, adjust="bonferonni")

xnew <- data.frame(T12=c(19,23),  Ne9=c(8,10),  Vx9=c(1.2,0.9), maxO3v=c(70,95))
predict(model,xnew,interval="pred")

predict(model,xnew,interval="confidence")

model <- lm(maxO3~ T9 + T12 + T15 + Ne9 + Ne12 + Ne15 + Vx9 + Vx12 + Vx15 + 
    maxO3v + pluie + vent ,data=ozone)
res <- residuals(model)
boxplot(res~vent,data=ozone)
bartlett.test(res~vent,data=ozone)

model <- lm(maxO3~ T9 + T12 + T15 + Ne9 + Ne12 + Ne15 + Vx9 + Vx12 + Vx15 + 
    maxO3v + pluie + vent ,data=ozone)
res <- residuals(model)
hist(res,main="Histogramme résidus",xlab="Résidus")
shapiro.test(res)

LinearModel(maxO3 ~ (T9 + T12 + T15 + Ne9 + Ne12 + Ne15 + Vx9 + Vx12 + Vx15 + 
    maxO3v + pluie + vent) * (pluie + vent), data=ozone, selection="bic")
