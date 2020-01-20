# import data set

library(datasets)

# it will display heading of the data wtih initial rows 
head(iris)
names(iris)

#import ggplot library to plot the dataset
library(ggplot2)
ggplot(iris, aes(Petal.Length, Petal.Width,color = Species)) + geom_point()


# set the point on initial seed
set.seed(15)

# create k-Means Cluster for iris data set
irisCluster <- kmeans(iris[,3:4], 3, nstart = 15)


irisCluster



# print the values in tabular form
table(irisCluster$cluster, iris$Species)


irisCluster$cluster <- as.factor(irisCluster$cluster)

# plot cluster using K-Means model
ggplot(iris, aes(Petal.Length, Petal.Width, color = irisCluster$cluster)) + geom_point()
