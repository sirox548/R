# Load Data ##################################

x <- c(24,20,13,5,2,1)
barplot(x)

# Adding colors to barplot
?colors
colors()

# Color names
barplot(x, col = "tan2")
barplot(x, col = "yellow")

# RGB triplets (0.00 - 1.00)
barplot(x, col = rgb(.80, 0, 0))
barplot(x, col = rgb(.62, .71, .80))

# RGB triplets (0 - 255)
barplot(x, col = rgb(205, 0, 0, max = 255))
barplot(x, col = rgb(90, 0, 63, max = 255))

# RGB hexcodes
barplot(x, col = "#9FB6CD")

# MULTIPLE COLORS ###############################
barplot(x, col = c("tan2", "yellow", "red3"))
        

# USING COLOR PALETTES ###########################
?palette
palette()

barplot(x, col = 1:6)
barplot(x, col = rainbow(6))


y <- c(12,35,30,8,15,10)
pie(y)
pie(y, col = terrain.colors(6))
pie(y, col = cm.colors(6))
pie(y, col = heat.colors(6 ))
pie(y, col = rainbow(6))




# CREATING CHATS AND GRAPHS.###########################
library("pacman", "tidyverse")

# Load Data from tidyverse library
# Diamonds datasets from ggplot
?diamonds
diamonds


# Barplot of frequencies ###############################
?plot
?barplot

# Shortest method to make a barplot.
plot(diamonds$cut)

# Similar process using the pipes command.
# function %>%
  #select(columns etc)
  #conditions 
  #plot()

diamonds %>%
  select(color) %>%
  plot()

# To create using a barplot in some instances 
# Table is require
?table

diamonds %>%
  select(clarity) %>%
  table() %>%
  barplot()

# sorting bars by decreasing order
diamonds %>%
  select(clarity) %>%
  table() %>%
  sort(decreasing = T) %>%
  barplot(col = heat.colors(8))


# Add options to plot
diamonds %>%
  select(clarity) %>%
  table() %>%
  barplot(
    main = "Clarity of Diamonds",
    sub = "(Source: ggplot2::diamonds)",
    horiz = T, # draw horizontal bars
    ylab = "Clarity of Diamonds", # flip axis labels
    xlab = "Frequency",
    xlim = c(0, 15000), # limits for x-axis
    border = NA,
    col = heat.colors(8)
  )


# Stacked bars
# Step 1: create table
df <- diamonds %>%
      select(color, clarity) %>%
      table() %>%
      print()

# Stacked bars: step 1: create graph
df %>%
  barplot(col = heat.colors(7), legend = rownames(.)) # Draw plot w/legend

# Side-by-side bar
df %>%
  barplot(col = heat.colors(7), legend = rownames(.),
  beside = T)


# HISTOGRAM #############################################
?hist
hist(diamonds$price)


# Histogram with options
hist(diamonds$price,
     breaks = 7, # suggest number of breaks
     main = "Histogram of Price of Diamonds",
     sub = "(Source: ggplot2::diamonds)",
     ylab = "Frequency",
     xlab = "Prices of Diamonds",
     border = NA, # no borders on bars
     col = "tan4"
     )

# BOXPLOT ###############################################
?boxplot
# Boxplot default
boxplot(diamonds$price)

# Boxplot options
diamonds %>%
  select(price) %>%
  boxplot(
    horizontal = T,  # Horizontal
    notch = T,        # Confidence interval for median 
    main = "Boxplot of Price of Diamonds",
    sub = "(Source: ggplot2::daimonds)",
    xlab = "Price of Diamonds",
    col = "green3"
  )


# BOXPLOT BY GROUP ######################################

diamonds %>%
  select(color, price) %>%
  plot()

# Boxplot by group using boxplot()
diamonds %>%
  select(color, price) %>%
  boxplot(
    price ~ color, # Tilde indicate formula
    data =  . ,
    col = "green3"
  )




# CLEAN UP  #############################################
#dev.off()
#rm(list = ls())
#cat("\014")
