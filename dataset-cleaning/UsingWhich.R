getwd()
setwd("C:/Git/R Programming Exercises/radvanced/dataset-cleaning")

source("DatasetCleaning-1.R")

#which() for missing data
head(fin)

#Get data without using which for a condition
fin[fin$Profit == 8553827, ]

# The above statement also returns rows for which Profit column has NA values because 
# R doesnt know if those rows pass the filter test since NA is neither TRUE nor FALSE
# Also R will not retrieve the values in the other columns that are not NA for the 
# Profit = NA columns since bringing the values kinda implies that these rows pass the 
# filter criteria.

# to remove all the NA cases use which()
which(fin$Profit == 8553827) # returns count

fin[which(fin$Profit == 8553827), ]

#Another example
fin[fin$Employees == 45, ]
fin[which(fin$Employees == 45), ]
