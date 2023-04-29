-- Income_US to Inflation_CPI_87


select inc.year, avg_yearly_income_us, yearly_increase,yearly_inflation
from "Income_US"  as inc 
join   "Inflation_CPI_87" as inf 
on inc.year = inf.year
order by inc.year;



-- Income_ST to Inlation_CPI_87 

select I.*,Inf.yearly_increase, Inf.yearly_inflation
from "Income_ST" I join "Inflation_CPI_87"  Inf
on I.year = Inf.year
order by I.year;


-- Student_Loan_Debt to Tuition_87 

select year_grad, debt_at_grad, adjusted_for_inflation, public, private
from  "Student_Loan_Debt" S  
JOIN  "Tuition_87" T 
on T.year = S.year_grad
order by year_grad;


-- Student_Loan_Debt to Income_US 

select year_grad,debt_at_grad, adjusted_for_inflation, avg_yearly_income_us
from  "Student_Loan_Debt" S  
JOIN "Income_US"  I
on I.year = S.year_grad
order by year_grad;

-- Student_Loan_Debt to Income_ST (edited) 

select I.*,S.debt_at_grad, adjusted_for_inflation
from "Student_Loan_Debt" S 
join "Income_ST" I 
on S.year_grad = I.year
order by I.year;

