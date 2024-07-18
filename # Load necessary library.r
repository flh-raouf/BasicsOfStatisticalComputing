# Load necessary libraries
library(ggplot2)
library(dplyr)
library(tidyr)
library(readr)
library(purrr)
library(tibble)
library(stringr)
library(forcats)
library(lubridate)
library(magrittr)
library(data.table)

# Generate random data
set.seed(42)  # For reproducibility
data <- rnorm(1000)

# Create a histogram
hist(data, breaks = 30, col = 'skyblue', border = 'white',
     main = "Histogram of Randomly Generated Data",
     xlab = "Value", ylab = "Freq")