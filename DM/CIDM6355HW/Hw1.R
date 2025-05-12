#define and choose Training and Prediction dataset
Lab4Train<-read.csv(file.choose(), header=T)
Lab4Predict<-read.csv(file.choose(), header=T)
#view column names and dimensions of the training dataset
names(Lab4Train)
dim(Lab4Train)
#view the summary statistics of the training dataset
summary(Lab4Train)
#attach the training dataset for ease of writing and maintaing code
attach(Lab4Train)
#install the library rpart for decision tree
install.packages("rpart")
#invoke the needed library
library(rpart)
#build decision tree model using rpart function
#Species_name is your target attribute, use ~ to connect the four predicting attributes and then use method="class"
Lab4Tree<-rpart(Species_name ~ Petal_width + Petal_length + Sepal_width + Sepal_length, method="class")
#examine the properties of the decision tree model created using rpart function
summary(Lab4Tree)
#install another library to generate a decision tree graph
install.packages("rpart.plot")
library(rpart.plot)
prp(Lab4Tree, extra=4, faclen=0, varlen=0)
#Apply the decision tree model to the prediciton dataset to generate the value of target attribute in the prediciton dataset
Lab4Score<-predict(Lab4Tree, Lab4Predict)
#view the predicitons
Lab4Score
Lab4Predictions<-data.frame(Lab4Predict, Lab4Score)
str(Lab4Predictions)
summary(Lab4Predictions)
