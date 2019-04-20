library(tree)
library(MASS)
library(ISLR)
library(psych)

data("iris")
A = data.frame(iris) 
head(A)

sf = sample (2,nrow(A), replace =TRUE, prob = c(0.7,0.3)) 
sf

trd = A[sf == 1, ]
trd

tsd = A[sf == 2, ]
tsd

model1 = tree(Species ~ .,trd)
plot(model1)
text(model1)

pred_species = predict(model1,tsd)
pred_species

W = cbind(tsd, pred_species) #combine tsd and pred
W

#Adding extra line

