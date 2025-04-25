# Level 1: Basic Exploration

# Load required libraries
library(readr)
library(dplyr)
library(tidyr)

#0: Load data set

library(readr)
student_depression <- read_csv("C:/Users/rajar/OneDrive/Desktop/cap 482 lab/project ca2/student depression.csv")
View(student_depression)

#1: Data understanding 
# Check structure of dataset (data types of each column)
str(student_depression)

# Get summary statistics (min, max, mean, etc.)
summary(student_depression)

# Get data set dimensions (total rows and columns)
dim(student_depression)

#2: Missing Values 
# Count total missing values
sum(is.na(student_depression))

# Column-wise count of missing values
colSums(is.na(student_depression))

#3: Clean Data
# Remove unnecessary columns
student_depression <- student_depression %>% select(-"Work_Pressure", -"Job_Satisfaction")  
#Remove rows with NA
student_depression<-na.omit(student_depression)                       

#=======================================================
# 4: Calculate the percentage of students with depression
#=======================================================
percentage_depressed <- mean(student_depression$Depression) * 100
print(paste("Percentage of students with depression:", round(percentage_depressed, 2), "%"))

