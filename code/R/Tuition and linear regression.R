#Checking and setting working directory
setwd("~/Desktop/Final_Project/final_group_project/R_Analysis")
getwd()

#Import data
Tuition <- read.csv("Tuition_87.csv", header = TRUE, sep = ",")

Year <- Tuition$year
Public <- Tuition$public
Private <- Tuition$private

class(Private)
class(Public)
class(Year)

hist(Tuition$public)
hist(Tuition$private)

plot(Public ~ Year, data = Tuition)

public.year.lm <- lm(Public ~Year, data = Tuition)
summary(public.year.lm)

plot(Private ~ Year, data = Tuition)

private.year.lm <- lm(Private ~ Year, data = Tuition)
summary(private.year.lm)
