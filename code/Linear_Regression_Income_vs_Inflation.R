setwd("~/Desktop/Final_Project/final_group_project/R_Analysis")
Income_table <- read.csv(file='Income_inflation.csv')

summary(Income_table)
class(Income_table$Income)
class(Income_table$Inflated_Income)
Income_table

Income <- Income_table$Income
Inflated_Income <- Income_table$Inflated_Income

t.test(Income, Inflated_Income, data = Income_table, var.equal = TRUE, paired = TRUE)



plot(Inflated_Income ~ Income, data = Income_table)


income.year.lm <- lm(Inflated_Income ~ Income, data = Income_table)
summary(income.year.lm)

