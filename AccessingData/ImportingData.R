
# INSTALL AND LOAD PACKAGES ################################

library(datasets)  # Load base packages manually


if (!require("pacman")) install.packages("pacman")
pacman::p_load(pacman, rio) 

library(rio)



# IMPORTING WITH RIO #######################################

# CSV
rio_csv <- import("C:\\Users\\STORM Tech\\Desktop\\Code\\DataScienceR\\ImportingData_Datasets\\mbb.csv")
head(rio_csv)

# TXT
rio_txt <- import("C:\\Users\\STORM Tech\\Desktop\\Code\\DataScienceR\\ImportingData_Datasets\\mbb.txt")
head(rio_txt)

# Excel XLSX
rio_xlsx <- import("C:\\Users\\STORM Tech\\Desktop\\Code\\DataScienceR\\ImportingData_Datasets\\mbb.xlsx")
head(rio_xlsx)




# DATA VIEWER ##############################################

View(rio_csv)





# READ.TABLE FOR TXT FILES #################################

# TEXT FILES

# Load a spreadsheet that has been saved as tab-delimited text file. Need to give complete address to file. This command gives an error on missing data but works on  complete data.
r_txt1 <- read.table("C:\\Users\\STORM Tech\\Desktop\\Code\\DataScienceR\\ImportingData_Datasets\\mbb.txt", header = TRUE)

# This works with missing data by specifying the separator: \t is for tabs, sep = "," for commas. R converts missing to "NA" by default.
r_txt2 <- read.table("C:\\Users\\STORM Tech\\Desktop\\Code\\DataScienceR\\ImportingData_Datasets\\mbb.txt", 
  header = TRUE, 
  sep = "\t")



# READ.CSV FOR CSV FILES ###################################


# CSV FILES Don't have to specify delimiters for missing data because CSV means "comma separated values"
trends.csv <- read.csv("C:\\Users\\STORM Tech\\Desktop\\Code\\DataScienceR\\ImportingData_Datasets\\mbb.csv", header = TRUE)






# CLEAN UP #################################################

rm(list = ls())
p_unload(all)  
cat("\014") 


