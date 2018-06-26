# get cleaned up data 
getwd()
setwd("C:/Git/R Programming Exercises/radvanced/dataset-cleaning")
source("DatasetCleaning-2.R")

#Import library
library(ggplot2)

#A scatterplot classified by industry showing revenue, expenses, profit
plot1 <- ggplot(data=fin)

plot1 + geom_point(aes(x=Revenue , y=Expenses, colour=Industry, size=Profit))

#A scatter plot that includes industry trends for expenses
plot2 <- ggplot(data=fin, aes(x=Revenue , y=Expenses, colour=Industry))
plot2 + geom_point() +
  geom_smooth(fill=NA, size =2.0)

#Boxplot for industry and growth
plot3 <- ggplot(data=fin, aes(x=Industry , y=Growth, colour=Industry))
plot3 + geom_jitter() + 
  geom_boxplot(size = 1, alpha = 0.5, outlier.colour = NA)

