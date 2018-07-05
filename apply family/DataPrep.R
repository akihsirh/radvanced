setwd("C:/Git/R Programming Exercises/radvanced/apply family/Weather Data")
getwd()

Chicago <- read.csv("Chicago-F.csv", row.names = 1)
SanFrancisco <- read.csv("SanFrancisco-F.csv", row.names = 1)
Houston <- read.csv("Houston-F.csv", row.names = 1)
NewYork <- read.csv("NewYork-F.csv", row.names = 1)

Chicago <- as.matrix(Chicago)
NewYork <- as.matrix(NewYork)
Houston <- as.matrix(Houston)
SanFrancisco <- as.matrix(SanFrancisco)

is.matrix(Chicago)

Weather <- list(Chicago = Chicago, Houston = Houston , 
                NewYork = NewYork , SanFrancisco = SanFrancisco)
