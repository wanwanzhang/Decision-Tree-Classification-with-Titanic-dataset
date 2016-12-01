# Classification Tree with rpart
#install.packages("party")
library(rpart)
test<-read.csv("C:/Users/Wanwan Zhang/Desktop/2016FALL/ADS/5/test.csv")
train<-read.csv("C:/Users/Wanwan Zhang/Desktop/2016FALL/ADS/5/train.csv")

str(test)
str(train)

# Check Survival rates of all people
table(train$Survived)

# Survival rates in proportions
prop.table(table(train$Survived))



##list of rows with missing values
train1[!complete.cases(train1),]

##if any missing values are there omit them 
train1<-na.omit(train1,na.action = TRUE)

# grow tree
fit<- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked, data = train1, method = "class")
printcp(fit)# results
plotcp(fit)# visualize cross-validation results
summary(fit)#detailed summary of splits 
#plot tree
plot(fit, uniform = TRUE, main= "Classification Tree for Survived")
text(fit, use.n = TRUE, cex =.8)
#craete atrractive postscript plot of trees 
post(fit, file= "C:/Users/Wanwan Zhang/Desktop/2016FALL/ADS/traintree.ps", title = "Classification Tree for Survived")
# prune the tree 
pfit<- prune(fit, cp=   fit$cptable[which.min(fit$cptable[,"xerror"]),"CP"])

# plot the pruned tree 
plot(pfit, uniform=TRUE, 
     main="Pruned Classification Tree for Survived")
text(pfit, use.n=TRUE, all=TRUE, cex=.8)
post(pfit, file = "C:/Users/Wanwan Zhang/Desktop/2016FALL/ADS/ptraintree.ps", 
     title = "Pruned Classification Tree for Survived")


X8	Y1


# Regression Tree 
library(rpart)
regressiontest<-read.csv("C:/Users/Wanwan Zhang/Desktop/2016FALL/ADS/5/ENB2012_data.csv")
# grow tree 
fit <- rpart(Y1~X1 + X2 + X3 + X4+X5 + X6 + X7 + X8, 
             method="anova", data=regressiontest)

printcp(fit) # display the results 
plotcp(fit) # visualize cross-validation results 
summary(fit) # detailed summary of splits

# create additional plots 
par(mfrow=c(1,2)) # two plots on one page 
rsq.rpart(fit) # visualize cross-validation results  	

# plot tree 
plot(fit, uniform=TRUE, 
     main="Regression Tree for Y1 ")
text(fit, use.n=TRUE, all=TRUE, cex=.8)

# create attractive postcript plot of tree 
post(fit, file = "c:/tree2.ps", 
     title = "Regression Tree for Y1 ")

# prune the tree 
pfit<- prune(fit, cp=0.01160389) # from cptable   

# plot the pruned tree 
plot(pfit, uniform=TRUE, 
     main="Pruned Regression Tree for Y1")
text(pfit, use.n=TRUE, all=TRUE, cex=.8)
post(pfit, file = "C:/Users/Wanwan Zhang/Desktop/2016FALL/ADS/5/TREE3.PS", 
     title = "Pruned Regression Tree for Y1")

# Regression Tree 
library(rpart)
regressiontest<-read.csv("C:/Users/Wanwan Zhang/Desktop/2016FALL/ADS/5/ENB2012_data.csv")
# grow tree 
fit <- rpart(Y2~X1 + X2 + X3 + X4+X5 + X6 + X7 + X8, 
             method="anova", data=regressiontest)

printcp(fit) # display the results 
plotcp(fit) # visualize cross-validation results 
summary(fit) # detailed summary of splits

# create additional plots 
par(mfrow=c(1,2)) # two plots on one page 
rsq.rpart(fit) # visualize cross-validation results  	

# plot tree 
plot(fit, uniform=TRUE, 
     main="Regression Tree for Y2 ")
text(fit, use.n=TRUE, all=TRUE, cex=.8)

# create attractive postcript plot of tree 
post(fit, file = "C:/Users/Wanwan Zhang/Desktop/2016FALL/ADS/5/TREE2.PS", 
     title = "Regression Tree for Y2 ")

# prune the tree 
pfit<- prune(fit, cp=0.01160389) # from cptable   

# plot the pruned tree 
plot(pfit, uniform=TRUE, 
     main="Pruned Regression Tree for Y2")
text(pfit, use.n=TRUE, all=TRUE, cex=.8)
post(pfit, file = "C:/Users/Wanwan Zhang/Desktop/2016FALL/ADS/5/PTREE3.ps", 
     title = "Pruned Regression Tree for Y2")
