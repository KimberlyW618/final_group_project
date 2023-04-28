select * from income; 
select * from inflation; 
select * from labor_force_participation;
select * from unemployment; 
select * from wages_by_ed;
select * from wages_top_bottom;
select * from wealth;




--  errors 
Tuition_st_94 : Public_out_of_state should have NULL or 0  values
income_st :  should have only 3 columns but in csv file it has more number of columns




-- doesnt have data 
cost_of_living
underemployement
tuition_87




inflation, income


select year, yearly_inflation_percentage, avg_yearly_income_us
from inflation join income using(year);


