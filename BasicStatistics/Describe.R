
library(datasets) 

if (!require("pacman")) install.packages("pacman")
pacman::p_load(pacman, psych) 

head(iris)

#p_help(psych, web = F)  # Opens help in R Viewer

# DESCRIBE() ###############################################



# For quantitative variables only.

describe(iris$Sepal.Length)  # One quantitative variable
describe(iris)               # Entire data frame



# CLEAN UP #################################################

rm(list = ls()) 
p_unload(all)  
detach("package:datasets", unload = TRUE) 
cat("\014")  

