library(SensoMineR)
### Construction d'un plan de Williams avec 12 produits
planWilliams <- WilliamsDesign(12)
planWilliams

### Construction d'un plan optimal avec 8 produits et 12 juges
planOpt <- optimaldesign(nbPanelist=12,nbProd=8)
planOpt

### Construction d'un plan optimal avec 8 produits, 12 juges, 5 produits degustes par juge
planOpt <- optimaldesign(nbPanelist=12,nbProd=8,nbProdByPanelist=5)
planOpt

