#1. Write a program to create barplots for all the categorical columns in mtcars.

#Answer
#I found this cyl,carb,gear,am,vs etc variable as categorical in mtcars dataset
#hence plotting this!!

counts<- table(mtcars$cyl)
barplot(counts ,main ="bar plot of cyl",xlab="cyl",ylab = "counts",col="blue")
counts<- table(mtcars$carb)
barplot(counts ,main ="bar plot of carb",xlab="carb",ylab = "counts",col="pink")
counts<- table(mtcars$gear)
barplot(counts ,main ="bar plot of gear",xlab="gear",ylab = "counts",col="yellow")
counts<- table(mtcars$am)
barplot(counts ,main ="bar plot of am",xlab="am",ylab = "counts",col="red")
counts<- table(mtcars$vs)
barplot(counts ,main ="bar plot of vs",xlab="vs",ylab = "counts",col="green")



#2 Create a scatterplot matrix by gear types in mtcars dataset.

#Answer

#scatter plot for dataset mtcars
library(ggplot2)
library(car)
scatterplotMatrix(~mpg+disp+drat+hp|gear,data=mtcars,
                   main="Three Gear Options")



#3. Write a program to create a plot density by class variable.

#Answer

#as per concerning to acadgild support about the issue that there is no class variable 
#i find in mtcars dataset so that unable to plot through mtcars dataset
#however i find other variable other than class variables in mtcars dataset hence i'm plotting that here

class(mtcars)

#plot density of mpg variable
d<- density(mtcars$mpg)
plot(d, main="kernel density of mpg")
polygon(d,col="blue",border ="black")

#plot density of disp variable
c<- density(mtcars$disp)
plot(c, main="kernel density of disp")
polygon(c,col="green",border ="red")
