getwd()
setwd("C:/Git/R Programming Exercises/radvanced/dataset-cleaning")

source("DatasetCleaning-1.R")

#Find all rows with NA in a particular column

#Using column value == NA method
fin[fin$Employees == NA, ]

#The above method doesnt work because anything compared to NA is NA. 
# You will simply be returned an answer with all the rows and column values as NA

# Using the is.na function to find out values 
is.na(fin$Employees) # returns a vector with TRUE and FALSE values for every row 
#in our dataset that satisfies the condition

fin[is.na(fin$Employees) , ]

#This gives the actual answer we were looking for 
