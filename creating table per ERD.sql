drop table if exists tuition;
drop table if exists  income;
drop table if exists cost_of_living;
drop table if exists unemployment;
drop table if exists  wages_by_ed;
drop table if exists  wages_top_bottom;
drop table if exists labor_force_participation;
drop table if exists inflation;
drop table if exists  wealth;


create table Tuition(
year int ,
state varchar(30),
type varchar(100),
length  varchar(50),
expense varchar(100),
expense_value money,
primary key(year,state, type, length, expense)
);

create table Cost_Of_Living(
year int,
yearly_cost money not null,
percent_increase  float,
primary key(year,yearly_cost)
	); 
	
	
	
	create table Income(
	year int ,
	avg_yearly_income money,
	state varchar(100)
	primary key(year,state)
     );


create table wealth(
	year int , 
	yearly_ranking int, 
	name varchar(100),
	net_worth_usd_billion money,
	age int, 
	wealth_source varchar(100),
	primary key(year,wealth_source)
);


create table Inflation(
year int, 
yearly_inflation_percentage float,
	primary key(year, yearly_inflation_percentage)
);

create table Unemployment (
	year int , 
all_unemp float ,
bachelors float,
women_b_degree float,
men_b_degree float,
some_hs float,
high_school float,
some_college float,
advanced_degree float,
women float,
men float,
primary key(year,all_unemp)
	
);

create table Wages_By_Ed(
year int  primary key, 
some_HS money,
high_school money,
some_college money,
bachelor_degree money,
advanced_degree money,
some_HS_share float,
high_school_share float,	
some_college_share float,
bachelor_degree_share float,
advanced_degree_share float
);

create table Wages_Top_Bottom(
year int  primary key,
bottom_90_avg money,
"90-95_avg" money	,
"95-99_avg" money	,
"90-99_avg" money	,
"top_5p_avg" money,	
"99-99-9_avg" money,	
"upper_0-1_avg" money,	
"99-100_avg" money
);

create table Labor_Force_Participation(
year int primary key ,
all_labor float ,
"16-24"  float, 	
"25-54"  float,	
"5-64" float,	
"65" float, 	
some_HS  float,
high_school float,
some_college float,
bachelor_degree float,
advanced_degree float,
women float,
men float
); 


	