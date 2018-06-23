# Dealing with missing data 

# get slightly cleaned up data 
getwd()
setwd("C:/Git/R Programming Exercises/radvanced/dataset-cleaning")
source("DatasetCleaning-1.R")

#Create data backup 
fin_bckp <- fin

#Industry info is imp so we 1st need to remove all rows where industry info is missing
fin <- fin[ !is.na(fin$Industry) , ]

#resetting the data frame index i.e adjust dataset row numbers after NA row deletion
