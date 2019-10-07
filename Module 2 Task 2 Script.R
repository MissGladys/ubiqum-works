
PredictionsName <- predict(flash,testSet)
PredictionsName

# Trello M2P1S2_7 Plot the predictions vs the real values to understand the errors
plot(as.vector(PredictionsName),testSet$distance)
abline(a = 0, b = 1)
## Trello M2P1S3_1 script to run and correct errors (goal: predict a petal's length using the petal's width)
install.packages("readr")
library("readr")
IrisDataSet <- read.csv(file="c:/Users/Splendora/OneDrive/Ubiqum/iris.csv",header=TRUE,sep=",")
attributes(IrisDataSet)
summary(IrisDataSet)
str(IrisDataSet)
names(IrisDataSet)
hist(IrisDataSet$Species)
IrisDataSet$Species<-as.numeric(IrisDataSet$Species)
hist(IrisDataSet$Species)
plot(IrisDataSet$Sepal.Length)
qqnorm(IrisDataSet$Sepal.width)
qqnorm(IrisDataSet$Sepal.Width)
qqnorm(IrisDataSet$Petal.Width)
qqnorm(IrisDataSet$Petal.Length)
str(IrisDataSet)
set.seed(123)
trainSize <- round(nrow(IrisDataSet)*0.2)
testSize <- nrow(IrisDataSet) - trainSize
trainSize
testSize
trainSet <- IrisDataSet[training_indices,]
testSet <- IrisDataSet[-training_indices,]
set.seed(405)
trainSet <- IrisDataSet[training_indices,]
testSet <- IrisDataSet[-training_indices,]
LinearModel <- lm(trainSet$Petal.Width ~ trainSet$Petal.Length)
summary(LinearModel)
PredictionLength <- predict(LinearModel,testSet)
PredictionLength
install.packages("swirl")
