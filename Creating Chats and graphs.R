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


# CLEAN UP 
dev.off()
rm(list = ls())
cat("\014")
