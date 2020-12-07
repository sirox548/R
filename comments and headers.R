# File: functions.R
# Project: R Learning

# Load base packages manually ##########################
library(datasets)  # For example datasets

# Load and prepare data
?iris 
df <- iris
head(df)
tail(df)

# Using comment to disable commands 
hist(df$Sepal.Width,
      col = "#CD0000", #red3
     # border = NA, # No borders
     main = "Histogram of Sepal Width",
     xlab = "Sepal Width (in cm)"
     )

# THIS IS A LEVEL 1 HEADER ############################

## This Is a Level 2 Header ===========================

#### This is a level 3 header -------------------------


# INSTALLING AND LOADING PACKAGES #####################

# Install pacman ("package manager") if needed
if (!require("pacman")) install.packages("pacman")


# Load contributed packages with pacman
pacman::p_load(pacman, party, psych, rio, tidyverse)

# pacman: for loading/unloading packages
# party: for decision trees
# psych: for many statistical procedures
# rio: for importing data
# tidyverse: for so many reasons


# Load base packages manually
library(datasets)

# LOAD AND PREPARE DATA #################################
#  save data to data-frame(df)
# rename outcome as "y" (if it helps)
# Specify outcome with df$y

# Import CSV files with readr::read_csv() from tidyverse
(df1 <- read.csv("data/StateData.csv"))

# Import other formats with rio::import() from rio
(df2 <- import("data/StateData.xlsx") %>% as_tibble())

# Alternatively
df3 <- import("data/StateData.xlsx") %>%
  as_tibble() %>%
  select(state_code, psychRegions, instagram:modernDance) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  rename(y = psychRegions) %>%
  print()

# ANALYZE DATA ##########################################

# By using standardized object and variable names, the same 
# code can be reused for different analyses

# DECISION TREE using party::ctree
#df[, -1] excludes the state_code

fit <- ctree(y ~ ., data = df3[, -1] ) # Create tree
fit %>% plot() # Plot tree
fit %>%
  predict() %>%
  table(df3$y)

hc <- df3 %>% # Get data
  dist %>%    # Compute distance/dissimilarity matrix
  hclust %>%  # Compute hierarchical clusters
  plot(lables = df3$state_code)

# CLEAN UP ######################
# Clear environment
rm(list = ls())

# Clear packages
p_unload(all) # Remove all add-ons
detach("package:datasets", unload = TRUE) # For base

# Clear plots
dev.off() # but only if there IS a plot

# clear plots
cat("\014")
