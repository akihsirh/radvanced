setwd("C:/Git/R Programming Exercises/radvanced/apply family")
getwd()
source("DataPrep.R")
setwd("C:/Git/R Programming Exercises/radvanced/apply family")
getwd()

#One way of meeting the 1st assignment in the challenge
# Use the apply function to find the mean row-wise across all cities
apply(Chicago, 1, mean)
apply(NewYork, 1, mean)
apply(SanFrancisco, 1, mean)
apply(Houston, 1, mean)

#~~~~~~~~~~~~~~~~~~~~~~~~~Assignment 1
# A table showing the annual averages of each observed metric for every city 
round(sapply(Weather, rowMeans) , 2)

#~~~~~~~~~~~~~~~~~~~~~~~~~Assignment 2 
#A table showing by how much temperature ???uctuates each month from min to max (in %). 
#Take min temperature as the base
sapply(Weather, function(h) round( (h[1,]-h[2,])/h[2,] ,2) * 100 )

#~~~~~~~~~~~~~~~~~~~~~~~~~Assignment 3
# A table showing the annual maximums of each observed metric for every city 

#Two approaches - first use a function to apply max to every matrix passed to it
sapply(Weather, function(h) apply(h, 1, max))

#Preferred approach
sapply(Weather, apply, 1, max)

#~~~~~~~~~~~~~~~~~~~~~~~~~Assignment 4
#A table showing the annual minimums of each observed metric for every city 
sapply(Weather, apply, 1, min)

#~~~~~~~~~~~~~~~~~~~~~~~~~Assignment 5
# A table showing in which months the annual maximums 
# of each metric were observed in every city (Advanced)

#One approach
sapply(Weather, function(h) 
  apply(h, 1 , function(i) 
    names(which.max(i))))

#Preferred Approach
sapply(Weather, apply , 1 , function(i) names(which.max(i)))




