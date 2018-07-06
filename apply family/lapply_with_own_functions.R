setwd("C:/Git/R Programming Exercises/radvanced/apply family")
getwd()
source("DataPrep.R")
setwd("C:/Git/R Programming Exercises/radvanced/apply family")
getwd()

#-----------------   Combining laaply with "[]" operator

#get the average high for every city for January 
lapply(Weather, "[",1,1)

#get the average high for every city throughout the year 
lapply(Weather, "[",1,)

#get all metrics for every city for March
lapply(Weather, "[", , 3)

#-----------------   replicating the above with own functions

#get the average high for every city for January 
lapply(Weather, function(h) h[1,1])

#get the average high for every city throughout the year 
lapply(Weather, function(h) h[1,])

#get all metrics for every city for March
lapply(Weather, function(h) h[,3])
