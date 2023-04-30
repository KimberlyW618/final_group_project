------------ Joins for more tables ------------

-- Income_US to Inflation_CPI_87
SELECT inc_us.year, avg_yearly_income_us, yearly_increase, yearly_inflation
--INTO income_us_inflation_87
FROM income_US AS inc_us
JOIN inflation_cpi_87 AS inf_87 
ON inc_us.year = inf_87.year
ORDER BY year;


-- Income_ST to Inlation_CPI_87 
SELECT inc_st.*, inf_87.yearly_increase, inf_87.yearly_inflation
--INTO income_st_inflation_87
FROM income_st AS inc_st 
JOIN inflation_cpi_87 AS inf_87
ON inc_st.year = inf_87.year
ORDER BY year;


-- Student_Loan_Debt to Tuition_87 
SELECT year_grad, debt_at_grad, adjusted_for_inflation, public, private
--INTO stu_debt_tuition_87 
FROM  Student_Loan_Debt AS sld  
JOIN  Tuition_87 AS tu_87 
ON tu_87.year = sld.year_grad
ORDER BY year_grad;


-- Student_Loan_Debt to Income_US 
SELECT year_grad, debt_at_grad, adjusted_for_inflation, avg_yearly_income_us
--INTO stu_debt_inc_us 
FROM  student_loan_debt AS stu  
JOIN income_us AS inc_us
ON inc_us.year = stu.year_grad
ORDER BY year_grad;


-- Student_Loan_Debt to Income_ST  
SELECT inc_st.*, stu.debt_at_grad, adjusted_for_inflation
--INTO stu_debt_inc_st 
FROM student_loan_debt AS stu 
JOIN income_st AS inc_st 
ON stu.year_grad = inc_st.year
ORDER BY inc_st.year;

SELECT * FROM income_us_inflation_87;
SELECT * FROM income_st_inflation_87;
SELECT * FROM stu_debt_tuition_87; 
SELECT * FROM stu_debt_inc_us;
SELECT * FROM stu_debt_inc_st;
