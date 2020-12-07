# Loading base packages manually
library(datasets)
?datasets
library(help = "datasets")


# SAMPLE DATASETS IN R LIBRARY ###########################

#IRIS DATA
?iris
iris
df <- iris
head(df)

# UCBAdmissions
?UCBAdmissions
UCBAdmissions


# Titanic
?Titanic
Titanic

library(pacman, tidyverse, rio)
library(party)

# IMPORTING DATA INTO OTHER FORMATS INTO R.###############

# Importing CSV files with read::read_csv() from tidyverse
(df <- read_csv("data/StateData.csv"))

# Import other formats with rio::import() from rio
(df <- import("data/StateData.xlsx") %>% as_tibble())

# Using select to get specific columns from the dataset. ###
df <- import("data/StateData.xlsx") %>% 
    as_tibble() %>%
    select(state_code, psychRegions, instagram:modernDance) %>%
    mutate(psychRegions = as.factor(psychRegions)) %>%
    rename(y = psychRegions) %>%
    print()
    
