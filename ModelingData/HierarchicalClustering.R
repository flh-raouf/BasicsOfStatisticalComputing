

library(datasets)  
library(dplyr)
if (!require("pacman")) install.packages("pacman")
pacman::p_load(pacman, tidyverse) 




# LOAD DATA ################################################

head(mtcars)
cars <- mtcars[, c(1:4, 6:7, 9:11)]  # Select columns from 1 to 4, 6 to 7, and 9 to 11
head(cars)

# COMPUTE AND PLOT CLUSTERS ################################

# Save hierarchical clustering to "hc." This codes uses pipes from the package dplyr.
hc <- cars   %>%  # Get cars data and feed it to the next step
      dist   %>%  # Compute distance/dissimilarity matrix and feed it to the next step
      hclust      # Computer hierarchical clusters
  
plot(hc)          # Plot dendrogram

# ADD BOXES TO PLOT ########################################

rect.hclust(hc, k = 2, border = "gray")
rect.hclust(hc, k = 3, border = "blue")
rect.hclust(hc, k = 4, border = "green4")
rect.hclust(hc, k = 5, border = "darkred")




# CLEAN UP #################################################

rm(list = ls()) 
p_unload(all)  
detach("package:datasets", unload = TRUE) 
dev.off() 
cat("\014")  


