# Dealing with missing data 
# get slightly cleaned up data 
getwd()
setwd("C:/Git/R Programming Exercises/radvanced/dataset-cleaning")
source("DatasetCleaning-1.R")

#Create data backup 
fin_bckp <- fin

#Industry info is imp so we 1st need to remove all rows where industry info is missing
fin <- fin[ !is.na(fin$Industry) , ]

#resetting the data frame index i.e adjust row numbers after NA row deletion
#Note that we are not changing the value of the column ID but the dataset row nos.

# Manually set the rownames based on rowcount
rownames(fin) <- 1:nrow(fin)
fin

#Another method
rownames(fin) <- NULL

# Replacing missing data : Factual analysis method - here you basically try to fill 
# out the missing data for columns where you know the values for sure

#Find out the rows with missing state code info
fin[is.na(fin$State) , ]

#Fill out rows with New York state code missing
fin[is.na(fin$State) & fin$City == "New York", "State"] <- "NY"
fin[is.na(fin$State) , ]

#Fill out rows with New York state code missing
fin[is.na(fin$State) & fin$City == "San Francisco", "State"] <- "CA"
fin[is.na(fin$State) , ]
fin[c(82,265),]

#Check for rows with missing data 
fin[!complete.cases(fin), ]

# Replacing missing data - Median Computation Method
# Use Employee number median to complete NA values in Employees for retail industry
med_emp_retail <- median(fin[fin$Industry=="Retail","Employees"], na.rm = TRUE)
fin[is.na(fin$Employees) & fin$Industry == "Retail" , "Employees"] <- med_emp_retail

# Use Employee number median to complete NA values in Employees for financial services
med_emp_fin_serv <- median(fin[fin$Industry=="Financial Services","Employees"], na.rm = TRUE)
fin[is.na(fin$Employees) & fin$Industry == "Financial Services" , "Employees"] <- med_emp_fin_serv

# Use Growth number median to complete NA values in Growth for construction
med_emp_growth <- median(fin[fin$Industry=="Construction","Growth"], na.rm = TRUE)
fin[is.na(fin$Growth) & fin$Industry == "Construction" , "Growth"] <- med_emp_growth

# Use Revenue median to complete NA values in Revenue for construction
med_rev_construction <- median(fin[fin$Industry=="Construction","Revenue"], na.rm = TRUE)
fin[is.na(fin$Revenue) & fin$Industry == "Construction" , "Revenue"] <- med_rev_construction

# Use Profit median to complete NA values in Profit for construction
med_profit_construction <- median(fin[fin$Industry=="Construction","Profit"], na.rm = TRUE)
fin[is.na(fin$Profit) & fin$Industry == "Construction" , "Profit"] <- med_profit_construction

# Use Expenses median to complete NA values in Expenses for construction
med_exp_construction <- median(fin[fin$Industry=="Construction","Expenses"], na.rm = TRUE)
med_exp_construction
fin[is.na(fin$Expenses) & fin$Industry == "Construction" , "Expenses"] <- med_exp_construction

# Find expenses for row with missing NA and industry IT Services using formula
# Here we wont use median because Profit value was already given and 
# Expenses can be calculated as Expenses = Revenue - Profit
fin[!complete.cases(fin), ]

exp_IT <- fin[is.na(fin$Expenses) ,"Revenue"] - fin[is.na(fin$Expenses) ,"Profit"]
exp_IT
fin[is.na(fin$Expenses) , "Expenses"] <- exp_IT

fin[15,]

fin[!complete.cases(fin), ] # This one row will be left because Inception column
#is not going to be used for data analysis


