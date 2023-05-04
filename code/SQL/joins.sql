
---- A bit of clean up and averaging -------

--- get average for the public and private coulmns
SELECT *, (public + private)/2 AS
average 
-- INTO tuition_871
From Tuition_87;

SELECT * FROM tuition_87;

-- make an int so we drop the penies 
SELECT CAST(average AS INT) AS average, year, public, private 
-- INTO tuition_87
FROM tuition_871;

SELECT * FROM tuition_87;

DROP TABLE tuition_87_;
DROP TABLE tuition_871;

UPDATE unemployment
SET "all" = ("all" * 100);
SELECT CAST("all" AS NUMERIC(5,2)) FROM unemployment;
SELECT * FROM unemployment;

SELECT CAST("all" AS NUMERIC(4,2)) FROM unemployment;

UPDATE unemployment
SET bachelor_degree = bachelor_degree * 100(2);
SELECT * FROM unemployment;
SELECT CAST(bachelor_degree AS INT) AS bachelor_degree




------------ Joins for more tables (for the R analysis) ------------

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


-- Student_Loan_Debt to tuition_us_a
SELECT year, debt_at_grad, adjusted_for_inflation, public, private, average 
--INTO stu_debt_tu_87 
FROM  Student_Loan_Debt AS sld  
JOIN  tuition_us_avg_87 AS tu 
ON tu.year = sld.year_grad
ORDER BY year;


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
SELECT * FROM tuition_us_a_87;
SELECT * FROM tuition_us_avg_87;
