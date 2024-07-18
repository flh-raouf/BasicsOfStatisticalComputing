
library(datasets)
head(mtcars)

# BAR CHARTS ###############################################

barplot(mtcars$cyl)             # Doesn't work, it gives something unclear

# Need a table with frequencies for each category
cylinders <- table(mtcars$cyl)  # Create table from the data and feed it into cylinders variable
barplot(cylinders)              # Bar chart
plot(cylinders)                 # Default X-Y plot (lines)

# CLEAN UP #################################################

rm(list = ls()) 
detach("package:datasets", unload = TRUE)  # For base
dev.off()  
cat("\014")  
