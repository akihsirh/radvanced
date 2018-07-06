setwd("C:/Git/R Programming Exercises/radvanced/apply family")
getwd()
source("DataPrep.R")
setwd("C:/Git/R Programming Exercises/radvanced/apply family")
getwd()

#----------------------Using sapply()
#it works as lapply but will return the results of lapply as a 
# vector or matrix

#take the mean of all the rows in every city in the list

lapply(Weather, rowMeans)
sapply(Weather, rowMeans)

#get the average high for every city for January 
lapply(Weather, "[",1,1)
sapply(Weather, "[",1,1)

#get all metrics for every city for March
lapply(Weather, function(h) h[,3])
sapply(Weather, function(h) h[,3])

#When you want sapply to return results like lapply
sapply(Weather, function(h) h[,3], simplify = FALSE)
