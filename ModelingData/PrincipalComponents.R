
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
  ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, 
  stringr, tidyr) 

library(datasets) 



# LOAD DATA ################################################

head(mtcars)
cars <- mtcars[, c(1:4, 6:7, 9:11)]
head(cars)


# COMPUTE PCA ##############################################

# For entire data frame ####################################
pc <- prcomp(cars,
        center = TRUE,  # Centers means to 0 (optional)
        scale = TRUE)   # Sets unit variance (helpful)

# To specify variables #####################################

pc <- prcomp(~ mpg + cyl + disp + hp + wt + qsec + am +
        gear + carb, 
        data = mtcars, 
        center = TRUE,
        scale = TRUE)

# EXAMINE RESULTS ##########################################

# Get summary stats
summary(pc)

# Screeplot for number of components
plot(pc)

# Get standard deviations and rotation
pc

# See how cases load on PCs
predict(pc) %>% round(2)

# Biplot of first two components
biplot(pc)



# CLEAN UP #################################################

rm(list = ls()) 
p_unload(all)  
detach("package:datasets", unload = TRUE)
dev.off()  
cat("\014")  

