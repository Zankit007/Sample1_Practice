library(data.table)
data(iris) #iris dataset
A = data.frame(iris)
head(A)
str(A)
table(A$Species)

model1 = kmeans(subset(A,select = -c(Species)),centers = 2,nstart = 20)
model1$cluster
A$clusters = as.factor(model1$cluster)
table(A$clusters,A$Species)   ###
##Trying to Commit