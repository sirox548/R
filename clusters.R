# LOADING PACKAGES ###########################################
library(pacman, tidyverse, rio)

# Load and prepare data ##################################
df <- import("data/StateData.xlsx") %>% 
  as_tibble() %>%
  select(state_code,region, psychRegions, instagram:modernDance) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  #rename(y = psychRegions)
  print()

# Calculate clusters
  hc <- df %>%     # data
    dist %>%       # Compute distance/dissimilarity matrix
    hclust         # Compute hierarchical cluster
  
# Plot dendrogram
hc %>% plot(labels = df$state_code)


# Draw boxes around clusters
hc %>% rect.hclust(k = 2, border = "red2")
hc %>% rect.hclust(k = 3, border = "red3")
hc %>% rect.hclust(k = 4, border = "blue")



# SELECTING CASES AND SUBGROUPS ##########################

# FILTER BY ONE VARIABLE #################################
# "entrepreneur" is a quantitative variable
df %>%
  filter(entrepreneur > 1) %>%
  print()

# "region" is a character variable
df %>%
  filter(region == "South") %>%
  print()


# "psychRegions" is a factor
df %>%
  filter(psychRegions == "Relaxed and Creative") %>%
  print()

# FILTER BY MULTIPLE VARAIABLES ##########################
# "OR" is the "|" symbol 
df %>% 
  filter(region == "South" | psychRegions == "Relaxed and Creative") %>%
  print()

  
# "AND" is the "&" symbol 
  df %>% 
    filter(region == "South" & psychRegions == "Relaxed and Creative") %>%
  print()
  
# "NOT" is the "!" symbol 
  df %>% 
    filter(region == "South" &  !psychRegions == "Relaxed and Creative") %>%
  print()
  



# CLEAN UP
dev.off()
rm(list = ls())
cat("\014")
