

library(datasets) 
head(iris)

# SUMMARY() ################################################

summary(iris$Species)       # Categorical variable
summary(iris$Sepal.Length)  # Quantitative variable
summary(iris)               # Entire data frame

# CLEAN UP #################################################


detach("package:datasets", unload = TRUE) 
cat("\014") 

