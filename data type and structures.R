### Data Types #####

# Numeric
x1 <- 89
x1
typeof(x1)

x2 <- 9.2
x2
typeof(x2)


# Character variable
c1 <- "hello"
c1
typeof(c1)


# Logical 
b1 <- TRUE
b1
typeof(b1)

# Vector
v1 <- c(11, 0, 4, 0)
v1
typeof(v1)
is.vector(v1)

v2 <- c(TRUE, FALSE, FALSE, TRUE, TRUE, TRUE)
v2
is.vector(v2)

v3 <- c('a', 'c', 'd', 'e')
v3
is.vector(v3)


## Matrix
m1 <- matrix(c(TRUE, FALSE, FALSE, TRUE, TRUE, TRUE), nrow = 2)
m1

m2 <- matrix(c('a', 'c', 'd', 'e'), nrow =2, byrow = T)
m2


## Arrays
# dimensions (rows, columns, tables)

a1 <- array(c(seq(24)), c(4, 3, 2))
a1

a2 <- array(c(1:24), c(4, 3, 2))
a2

## Data Frames
vNumeric <- c(1, 3, 5)
vCharacter <- c('a', 'b', 'c')
vLogical <- c(T, T, F)

df1 <- cbind(vNumeric, vCharacter, vLogical)
df1     # coerces all values to most basic data types

df2 <- as.data.frame(cbind(vNumeric, vCharacter, vLogical))
df2     # forms a data frame with three different types.


## List

l1 <- c(1, 3, 5)
l2 <- c('a', 'b', 'c')
l3 <- c(T, T, F)

l4 <- list(l1, l2, l3)
l4

## Coercing types / Changing data types

(coerce1 <- c(1, "b", T))
typeof(coerce1)

(coerce2 <- 5)
typeof(coerce2)

coerce3 <- as.integer(coerce2)
typeof(coerce3)


coerce4 <- c('3', '7', '9')
typeof(coerce4)

(coerce5 <- as.numeric(coerce4))
typeof(coerce5)


rm(list = ls())
