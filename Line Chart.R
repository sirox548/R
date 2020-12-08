# LOADING PACKAGES ########################################
library(pacman, tidyverse, datasets)

# SINGLE TIME SERIES ######################################

# US-POPULATION ##########
?uspop
uspop

?ts # Get info about time series objects

# plot with default plot()
plot(uspop)


# plot with options
uspop %>%
  plot(
    main = "US population 1790 - 1970",,
    xlab = "Years",
    ylab = "Population (in millions)",
    )
abline(v = 1930, col = "blue")
text(1930, 10, "1930", col = "red3")
abline(v = 1940, col = "green")
text(1940, 2, "1940", col = "red3")


# plot with plot.ts() alternatively ts.plot()
?plot.ts
plot.ts(uspop)


# MULTIPLE TIME SERIES #####################################

# EuStockmarket
?EuStockMarkets
EuStockMarkets


# Different plot functions
plot.ts(EuStockMarkets)
ts.plot(EuStockMarkets)
