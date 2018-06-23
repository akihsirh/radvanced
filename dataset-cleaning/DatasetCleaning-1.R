getwd()
setwd("C:/Git/R Programming Exercises/radvanced/dataset-cleaning")

# Basic import --> fin <- read.csv("Future500.csv")
# Import that deals with missing data 
fin <- read.csv("Future500.csv", na.strings = c(""))

head(fin)
str(fin)

#Convert from non factor to factor
fin$ID <- factor(fin$ID)
fin$Inception <- factor(fin$Inception)

#Cleaning up extra symbols from data such as 'Dollars', '$' and ','
typeof(fin$Revenue)
head(fin)

#Clean up Expenses column
fin$Expenses <- gsub(" Dollars","",fin$Expenses)
fin$Expenses <- gsub(",","",fin$Expenses)
head(fin)
str(fin)

#Clean up Revenue
fin$Revenue <- gsub("\\$","",fin$Revenue)
head(fin)
str(fin)

fin$Revenue <- gsub(",","",fin$Revenue)
head(fin)
str(fin)

#Clean up Growth
fin$Growth <- gsub("%","",fin$Growth)
head(fin)
str(fin)

# Convert the cleaned up columns back from character into a proper type.Notice that
# gsub converted the factor columns into characcter for us

fin$Growth <- as.numeric(fin$Growth)
fin$Expenses <- as.numeric(fin$Expenses)
fin$Revenue <- as.numeric(fin$Revenue)
head(fin)
str(fin)

