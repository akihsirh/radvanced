setwd("C:/Git/R Programming Exercises/radvanced/apply family")
getwd()
source("DataPrep.R")
setwd("C:/Git/R Programming Exercises/radvanced/apply family")
getwd()

#Using lapply()
#transpose the weather data for each city such that the months are rows
# and the different weather stats are column names
# save this transposed data for each of the city within a new list

my_transposed_weather_data <- lapply(Weather, t)
my_transposed_weather_data

#Add a new of your choice to every matrix within the list
added_row <- lapply(Weather, rbind , NewRow = 1:12)
added_row

#In the above example the lapply func took a third parameter which 
# specified how the second function needed to be run

#--------------------
#take the mean of all the rows in every city in the list

same_as_apply_mean_to_row <- lapply(Weather, rowMeans)
same_as_apply_mean_to_row
#The rowmeans function works in the same way as apply(matrix,1,func)

#other such functions
#?colMeans()
#?rowSums()
#?colSums()

#-----------------   Combining laaply with "[]" operator

#get the average high for every city for January 
lapply(Weather, "[",1,1)

#get the average high for every city throughout the year 
lapply(Weather, "[",1,)

#get all metrics for every city for March
lapply(Weather, "[", , 3)
