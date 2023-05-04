setwd("~/Desktop/Final_Project/final_group_project/R_Analysis")
Data <- read.csv(file='Public_Tuition_CPI.csv')

summary(Data)
class(Data$Public)
class(Data$Public_CPI)
Data

Public <- Data$Public
Public_CPI <- Data$Public_CPI

t.test(Public, Public_CPI, data = Data, var.equal = TRUE, paired = TRUE)

Private_data <- read.csv(file='Private_Tuition_CPI.csv')
summary(Private_data)
class(Private_data$Private)
class(Private_data$Private_CPI)
Private_data

Private <- Private_data$Private
Private_CPI <- Private_data$Private_CPI

t.test(Private, Private_CPI, data = Private_data, var.equal = TRUE, paired = TRUE)
