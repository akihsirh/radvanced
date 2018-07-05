setwd("C:/Git/R Programming Exercises/radvanced/lists")
getwd()
source("MachineData.R")

#Take data for the machine RL1
summary(machineData)
rl1_machine <- machineData[machineData$Machine == "RL1" , ]
summary(rl1_machine)

rl1_machine$Machine <- factor(rl1_machine$Machine)
summary(rl1_machine)

#List wanted 
#Character : Machine Name
#Vector: (min, mean and max) for the month. Utilization hours (excluding unknown hours)
#Logical: Utilization ever below 90 ? 
#Vector: All hours where utilization is unknown
#DataFrame: For this machine
#Plot: For all machines

stats_util_rl1 <- c(min(rl1_machine$Utilization, na.rm = TRUE) ,
                    mean(rl1_machine$Utilization, na.rm = TRUE) ,
                    max(rl1_machine$Utilization, na.rm = TRUE))

under_90_util_rl1 <- as.logical(length(which(rl1_machine$Utilization < 0.90)))

list_rl1 <- list(unique(as.character(rl1_machine$Machine)) ,
                 stats_util_rl1 ,
                 under_90_util_rl1)

# name components of list
# 1. First way 
names(list_rl1) <- c("Machine", "Stats", "LowThreshold")

#2. Second way
rm(list_rl1)

list_rl1 <- list(Machine = unique(as.character(rl1_machine$Machine)) ,
                 Stats = stats_util_rl1 ,
                 LowThreshold = under_90_util_rl1)
#Extracting components of a list 
#1. [] -> will return the list 
#2. [[]]-> will return the actual object 
#3. $ -> same as [[]] but has more reader usability

list_rl1$UnknownHours <- rl1_machine[is.na(rl1_machine$Utilization) , "PosixTime"]

list_rl1[5] <- "New Devils"

list_rl1
list_rl1[5] <- NULL

#Notice that in lists that removing an element in the middle doesnt mess up the numeration
# The number of the elements adjusts automatically

list_rl1$Data <- rl1_machine
summary(list_rl1)
str(list_rl1)

#Creating the plot 
library(ggplot2)
str(machineData)

h <- ggplot(machineData)
myplot <- h + geom_line(aes(x=PosixTime , y = Utilization , colour = Machine) ,
              size = 1) +
  facet_grid(Machine~.) +
  geom_hline(yintercept = 0.9 , size = 1.2 , colour = "Pink" , 
             linetype = 5 )

list_rl1$Plot <- myplot

list_rl1
