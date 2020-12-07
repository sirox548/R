# Assignment Operation
# individual values
a <- 8
b <- 2
c <- c(0, 1, -1)
c

#Assignment using equal operator
var.1 = c(3, 5, 6, 8)

#Assignment using leftward operator
var.2 <- c("Learn", "R")

#Assignment using rightward operator
c(T, 1) -> var.3

cat("var.1 is ", var.1, "\n")
cat("var.2 is ", var.2, "\n")
cat("var.3 is ", var.3, "\n")



var_x <- "this is a variable container"
cat("This class of var_x is ", class(var_x))
cat("The data type of var_x is ", typeof(var_x))

var_z <- 3.23
cat("This class of var_z is ", class(var_z))

var_y <- 57L
cat("This class of var_y is ", class(var_y))

# Multiple values
x <- c(4, 8,16)  # c stands for combine/ concatenate

# Arithmetic operations
9 + 1
i <- (a ^ b)
i
k <- (a * b)
k
j <- (a - b)
j
l <- (a + b)
i <- (a / b)
i
m <-(b%%a)
m
# Sequence of numbers
10: 0   # count do to zero
1: 15   # count values a through 15
seq(5)  # sequence of values to  1 to 5 
seq(20, 1, by = -2) # count down in two steps/ even numbers DSC
t <- seq(1, 20, by = 2) # odd number ASC
t

# printing values using parentheses 
(a + b)
sqrt(81)
log(100)
log2(100)
cos(60)


## Finding Variables
# List the variables starting with the pattern "var".
print(ls(pattern = "var"))

print(ls(all.names = TRUE))
