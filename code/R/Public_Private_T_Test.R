#Checking and setting working directory
setwd("~/Desktop/Final_Project/final_group_project/R_Analysis")
getwd()

#Import data
public_data <- read.csv("public_and_inflation.csv", header = TRUE, sep = ",")
summary(public_data)
class(public_data$Inflation)
class(public_data$Public)
public_data


Inflation <- public_data$Inflation
Public <- public_data$Public

t.test(Public, Inflation, data = public_data, var.equal = TRUE, paired = TRUE)

private_data <- read.csv("private_inflation.csv", header = TRUE, sep = ",")
Inflation_Private <-private_data$Inflation
Private <- private_data$Private

t.test(Private, Inflation_Private, data = private_data, var.equal = TRUE, paired = FALSE)
