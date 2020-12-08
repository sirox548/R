# LOADING PACKAGES ###########################################
library(pacman, tidyverse)

# Load and prepare data ##################################
df <- import("data/StateData.xlsx") %>% 
  as_tibble() %>%
  select(state_code, psychRegions, instagram:modernDance) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  print()


# SCATTERPLOT ############################################

df %>%
  select(instagram:modernDance) %>%
  plot() # plot all associations

# Bivariate scatterplot with defaults
df %>%
  select(scrapbook:modernDance) %>%
  plot() 

# Bivariate scatterplot with options
df %>%
  select(scrapbook:modernDance) %>%
  plot(
  main = "Scatterplot of Google Searches by State",
  xlab = "Searches for \"scrapbook\"",
  ylab = "Searches for \"modern dance\"",
  col = "cyan2",    # color of points
  pch = 6,        # plotting character (small circle)
  )

# plotting Character details
?pch

# Add fit linear regression line(y ~ x)
df %>%
  lm(modernDance ~ scrapbook, data = .) %>%
  abline()

# HOW TO REMOVE OUTLIERS #################################
# Identify outlier from graph
df %>%
  select(state_code, scrapbook) %>%
  filter(scrapbook > 4) %>%       # filter out outlier
  print()
  
  
  
# Bivariate scatterplot without outlier 
df %>%
  select(scrapbook:modernDance) %>%
  filter(scrapbook < 4) %>%       # filter out outlier 
  plot(
    main = "Scatterplot of Google Searches by State",
    xlab = "Searches for \"scrapbook\"",
    ylab = "Searches for \"modern dance\"",
    col = "red3",    # color of points
    pch = 6,        # plotting character (small circle)
  )


# Add fit line without outlier
df %>%
  filter(scrapbook < 4) %>% 
  lm(modernDance ~ scrapbook, data = .) %>%
  abline()


# CLEAN UP ###############################################
dev.off()
rm(list = ls())
cat("\014")
