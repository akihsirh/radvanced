#Factor Variable Trap (FVT)

#Create a character vector
ch <- c("13","12","14","15","16")
typeof(ch)

#Convert characters into numerics
n <- as.numeric(ch)
typeof(n)

#Convert factors into numeric
fv <- factor(ch)
fv

nf <- as.numeric(fv)
typeof(nf)
nf          # [1] 2 1 3 4 5

#Lets check type of the factor vector
typeof(fv)

# the type of the factor vector is integer. However this integer is not equal to the 
# integer values within the factor vector. This is nothing but the category number
# that R assigns to each "level" within the factor. The smallest or first one is assigned 
# integer 1 and this increases by one with every greater factor. Since 12 was the smallest
# level it was assigned 1 and 16 being the highest was assigned 5.

#===========To create a numeric vector out a factor vector we first need to convert
# it into a character vector and then a factor vector

nf <- as.numeric(as.character(fv))
typeof(nf)
nf          #[1] 13 12 14 15 16
