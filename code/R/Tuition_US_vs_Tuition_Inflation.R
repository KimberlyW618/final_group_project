#Checking and setting working directory
setwd("~/Desktop/Final_Project/final_group_project/R_Analysis")
getwd()
#Import data
tuition_data <- read.csv("Tuition_87.csv", header = TRUE, sep = ",")
class(tuition_data$year)
class(tuition_data$public)
mean(tuition_data$public)
sd(tuition_data$public)
summary(tuition_data$public)
IQR(tuition_data$public)
#loat ggplot 2
library(ggplot2)

#Hypothesis testing

#State null and alternative hypothesis
  ## null: there is no difference in mean tuition price (public and private) between 
    ## historical data and proposed tuition based on inflation
  ## alternative: there is a difference between mean tuition price (public and private) between
    ## historical data and proposed tuition based on inflation

# is is a one-sided or two sided? (two sample, paired t-test)

#graph
line_graph <- ggplot(tuition_data, aes(x = year)) + geom_line(aes(y= public), color = "blue") + geom_line(aes(y = private), color = "red") + geom_line(aes(y= public_x_inflation), color = "black") + geom_line(aes(y = private_x_inflation), color = "green")
line_graph + scale_y_continuous(name= "Tuition Cost")
line_graph + scale_x_continuous(name= "Years")

#create new table
tuition_data
data_new <- tuition_data[ , c("public", "public_x_inflation")]
data_new2 <- tuition_data[ , c("private", "private_x_inflation")]
data_new
data_new2

chisq.test(tuition_data)
chisq.test(data_new)
chisq.test(data_new2)
