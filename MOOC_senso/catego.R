library(SensoMineR)
### Importation des donnees
donnees <- read.table("https://husson.github.io/MOOC_senso/catego_parfums.csv",header=TRUE, sep=";")
summary(donnees)

### Realisation de la categorisation
res.fast<-fast(donnees,sep.words=";")

### Detection des mots consensuels
res.consensual<-ConsensualWords(res.fast)

### Avec la fonction MCA de FactoMineR (sans la fonction fast)
res.mca <- MCA(donnees)
plot.MCA(res.mca, invisible="var", col.ind="black")
plot.MCA(res.mca, invisible="ind", col.var="black")
