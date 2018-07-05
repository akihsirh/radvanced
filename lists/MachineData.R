setwd("C:/Git/R Programming Exercises/radvanced/lists")
getwd()

#Load data 
machineData <- read.csv("Machine-Utilization.csv")
tail(machineData)
head(machineData)

str(machineData)
summary(machineData)

#Create a utilization column
machineData$Utilization <- 1 - machineData$Percent.Idle
head(machineData, 14)

#Handling date times in the dataset
machineData$PosixTime <- as.POSIXct(machineData$Timestamp , 
                                    format="%d/%m/%Y %H:%M")

head(machineData, 12)
summary(machineData)
str(machineData)

#How to rearrange columns in the data frame
machineData$Timestamp <- NULL
machineData <- machineData[ , c(4,1,2,3)]
head(machineData, 10)
