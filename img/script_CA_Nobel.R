library(FactoMineR)

### Importation des donnees
Nobel = read.table("https://husson.github.io/img/Nobel_avecMath.csv", header=TRUE, sep=";", 
      row.names=1, ,check.names=FALSE)
summary(Nobel)

### CA
res.ca=CA(Nobel[1:8,1:6])
summary(res.ca)
barplot(res.ca$eig[,2],main="Eigenvalues", names.arg=1:nrow(res.ca$eig))

### CA with supplementary elements
res.ca=CA(Nobel[1:8,], col.sup=7)

