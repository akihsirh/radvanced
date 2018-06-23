getwd()
setwd("C:/Git/R Programming Exercises/radvanced/dataset-cleaning")

source("DatasetCleaning-1.R")
#~~~~~~~~~~~~~~~~~~~~~~~~~~~ Dealing with missing data
# 1. Predict with 100% accuracy
# 2. Leave a record as it is - when a field is not required for analysis or when the data
# has a way to account for missing data
# 3. Remove missing data records - disadv ---> incomplete analysis or little records
# 4. Replace with mean or median. Median is preferred because its not affected by outliers
# 5. Predict data based on correlations. Step up of above step
# 6. Give it a dummy value

### Locating missing data 
# Find rows with atleast one incomplete data column

#Complete cases function helps find rows in data with atleast one missing data col
# vector is returned with FALSE value against rows that have missing data
complete.cases(fin)

#use above to find rows that have incomplete data
# PS :- This function only detects cases where the empty column is represented by NA
# If the column is blank it wont detect that as a row with missing data
fin[!complete.cases(fin),]

# R stores some NA values as <NA> rather than as NA alone
# cases with bracketed NA are variables that are factors