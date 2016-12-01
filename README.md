# Decision-Tree-Classification-with-Titanic-dataset
For the train dataset
preprocessing of the dataset and exploration about the data

1.	check the table using view train, found out some columns are useful to predict the survived rate, so I Only choose Pclass + Sex + Age + SibSp + Parch + Fare + Embarked.
2.	Did the data cleaning, check rows and columns, if they are empty, and replace with na.
3.	Check the absolute rate of survived to have around percentage for exploring data.
4.	Check the coefficient between the survived rate with other factors, and see how it got effected.

During the process of modeling:

1.	Build classification decision tree using rpart, save the result in fit.

2.	Before building the tree model, we need to balance two aspects, the difference after classification should be smaller, and also need to avoid matching too much and make the error od model becomes larger. so we need to consider CP and Xerror, to make CP smaller when Xerror is smallest.
3.	First use printcp got the all kinds of error, the Root node error and Xerror 
4.	Apply plotcp graphic about CP and Xerror, find the CP value when Xerror smallest, decide the CP value
5.	Cut some branches which are not effective using prune, Prune the dataset and plot prune tree , and create the ps file
