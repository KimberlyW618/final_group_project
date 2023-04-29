------------- Schema for final group projet on college tuition/inflation/income... data --------------------

-- Drop Tables as needed 

DROP TABLE "Income_ST"; 
DROP TABLE "Income_US";
DROP TABLE "Inflation_CPI_87";
DROP TABLE "Inflation_CPI_All"; 
DROP TABLE "Labor-Force_Participation";
DROP TABLE "Student_Loan_Debt";
DROP TABLE "Tuition_87";  
DROP TABLE "Tuition_ST_94";
DROP TABLE "Underemplyment"; 
DROP TABLE "Unemployment";
DROP TABLE "Wages_By_Ed";
DROP TABLE "Wages_Top_Bottom";
DROP TABLE "Wealth";

DROP TABLE Income_ST; 
DROP TABLE Income_US;
DROP TABLE Inflation_CPI_87;
DROP TABLE Inflation_CPI_All; 
DROP TABLE Labor_Force_Participation;
DROP TABLE Student_Loan_Debt;
DROP TABLE Tuition_87;  
DROP TABLE Tuition_ST_94;
DROP TABLE Underemplyment; 
DROP TABLE Unemployment;
DROP TABLE Wages_By_Ed;
DROP TABLE Wages_Top_Bottom;
DROP TABLE Wealth;

-- Creat an average yearly state income table
CREATE TABLE Income_ST (
    year INT   NOT NULL,
    United_States FLOAT   NOT NULL,
    Alabama FLOAT   NOT NULL,
    Alaska FLOAT   NOT NULL,
    Arizona FLOAT   NOT NULL,
    Arkansas FLOAT   NOT NULL,
    California FLOAT   NOT NULL,
    Colorado FLOAT   NOT NULL,
    Connecticut FLOAT   NOT NULL,
    Delaware FLOAT   NOT NULL,
    DC FLOAT   NOT NULL,
    Florida FLOAT   NOT NULL,
    Georgia FLOAT   NOT NULL,
    Hawaii FLOAT   NOT NULL,
    Idaho FLOAT   NOT NULL,
    Illinois FLOAT   NOT NULL,
    Indiana FLOAT   NOT NULL,
    Iowa FLOAT   NOT NULL,
    Kansas FLOAT   NOT NULL,
    Kentucky FLOAT   NOT NULL,
    Louisiana FLOAT   NOT NULL,
    Maine FLOAT   NOT NULL,
    Maryland FLOAT   NOT NULL,
    Massachusetts FLOAT   NOT NULL,
    Michigan FLOAT   NOT NULL,
    Minnesota FLOAT   NOT NULL,
    Mississippi FLOAT   NOT NULL,
    Missouri FLOAT   NOT NULL,
    Montana FLOAT   NOT NULL,
    Nebraska FLOAT   NOT NULL,
    Nevada FLOAT   NOT NULL,
    New_Hampsire FLOAT   NOT NULL,
    New_Jersey FLOAT   NOT NULL,
    New_Mexico FLOAT   NOT NULL,
    New_York FLOAT   NOT NULL,
    North_Carolina FLOAT   NOT NULL,
    North_Dakota FLOAT   NOT NULL,
    Ohio FLOAT   NOT NULL,
    Oklahoma FLOAT   NOT NULL,
    Oregon FLOAT   NOT NULL,
    Pennsylvania FLOAT   NOT NULL,
    Rhode_Island FLOAT   NOT NULL,
    South_Carolina FLOAT   NOT NULL,
    South_Dakota FLOAT   NOT NULL,
    Tennessee FLOAT   NOT NULL,
    Texas FLOAT   NOT NULL,
    Utah FLOAT   NOT NULL,
    Vermont FLOAT   NOT NULL,
    Virgina FLOAT   NOT NULL,
    Washington FLOAT   NOT NULL,
    West_Virgina FLOAT   NOT NULL,
    Wisconsin FLOAT   NOT NULL,
    Wyoming FLOAT   NOT NULL,
    CONSTRAINT PK_Income_ST PRIMARY KEY (
        year
     ) 
);

-- Creat an average yearly US income table
CREATE TABLE Income_US (
    year INT   NOT NULL,
    avg_yearly_income_us FLOAT   NOT NULL,
    CONSTRAINT PK_Income_US PRIMARY KEY (
       year
  )
);

-- Creat an inflation/CPI table that goes back to 1987
CREATE TABLE Inflation_CPI_87 (
    year INT   NOT NULL,
    yearly_increase FLOAT   NOT NULL,
    yearly_inflation FLOAT   NOT NULL,
    CONSTRAINT PK_Inflation_CPI_87 PRIMARY KEY (
        "year"
     )
);

-- Creat an inflation/CPI table that goes back to 1914
CREATE TABLE Inflation_CPI_All (
    year INT   NOT NULL,
    yearly_increase FLOAT   NOT NULL,
    yearly_inflation FLOAT   NOT NULL,
    CONSTRAINT PK_Inflation_CPI_All PRIMARY KEY (
        year
     )
);

-- Creat a labor force participation table
CREATE TABLE Labor_Force_Participation (
    year INT   NOT NULL,
    "all" FLOAT   NOT NULL,
    less_then_hs FLOAT   NOT NULL,
    high_school FLOAT   NOT NULL,
    some_college FLOAT   NOT NULL,
    bachelor_degree FLOAT   NOT NULL,
    advanced_degree FLOAT   NOT NULL,
    women FLOAT   NOT NULL,
    men FLOAT   NOT NULL,
    CONSTRAINT PK_Labor_Force_Participation PRIMARY KEY (
        year
     )
);

-- Creat a student loan debt table
CREATE TABLE Student_Loan_Debt (
    year_grad INT   NOT NULL,
    debt_at_grad FLOAT   NOT NULL,
    adjusted_for_inflation FLOAT   NOT NULL,
    CONSTRAINT PK_Student_Loan_Debt PRIMARY KEY (
        year_grad
     )
);

-- Creat an average yearly tuition table that goes back to 1987
CREATE TABLE Tuition_87 (
	year INT  NOT NULL,	
    public FLOAT   NOT NULL,
    private FLOAT   NOT NULL,
    CONSTRAINT PK_Tuition_87 PRIMARY KEY (
        year
     )
);

-- Creat an average yearly state tuition table that goes back to 1994
CREATE TABLE Tuition_ST_94 (
    year INT   NOT NULL,
    state VARCHAR   NOT NULL,
    public_instate FLOAT   NOT NULL,
    public_out_of_state FLOAT ,
    private FLOAT 
);

-- Creat an underemplyment table
CREATE TABLE Underemplyment (
    year INT   NOT NULL,
    "all" FLOAT   NOT NULL,
    bachelor_degree FLOAT   NOT NULL,
    women_b_degree FLOAT   NOT NULL,
    men_b_degree FLOAT   NOT NULL,
    less_then_hs FLOAT   NOT NULL,
    high_school FLOAT   NOT NULL,
    some_college FLOAT   NOT NULL,
    advanced_degree FLOAT   NOT NULL,
    women FLOAT   NOT NULL,
    men FLOAT   NOT NULL,
    CONSTRAINT PK_Underemplyment PRIMARY KEY (
        year
     )
);

-- Creat an unemployment table
CREATE TABLE Unemployment (
    year INT   NOT NULL,
    "all" FLOAT   NOT NULL,
    bachelor_degree FLOAT   NOT NULL,
    women_b_degree FLOAT   NOT NULL,
    men_b_degree FLOAT   NOT NULL,
    less_then_hs FLOAT   NOT NULL,
    high_school FLOAT   NOT NULL,
    some_college FLOAT   NOT NULL,
    advanced_degree FLOAT   NOT NULL,
    women FLOAT   NOT NULL,
    men FLOAT   NOT NULL,
    CONSTRAINT PK_Unemployment PRIMARY KEY (
        year
     )
);

-- Creat a wages by education table
CREATE TABLE Wages_By_Ed (
    year INT   NOT NULL,
    less_then_HS FLOAT   NOT NULL,
    high_school FLOAT   NOT NULL,
    some_college FLOAT   NOT NULL,
    bachelor_degree FLOAT   NOT NULL,
    advanced_degree FLOAT   NOT NULL,
    less_then_hs_share FLOAT   NOT NULL,
    high_school_share FLOAT   NOT NULL,
    some_college_share FLOAT   NOT NULL,
    bachelor_degree_share FLOAT   NOT NULL,
    advanced_degree_share FLOAT   NOT NULL,
    CONSTRAINT PK_Wages_By_Ed PRIMARY KEY (year)
);

-- Creat a wages table that shows the top and bottom 10% of income data
CREATE TABLE Wages_Top_Bottom (
    year INT  NOT NULL,
    avg_bottom_90 FLOAT   NOT NULL,
    avg_90_95 FLOAT   NOT NULL,
    avg_95_99 FLOAT   NOT NULL,
    avg_90_99 FLOAT   NOT NULL,
    avg_top_5 FLOAT   NOT NULL,
    avg_99_99_9 FLOAT   NOT NULL,
    avg_upper_0_1 FLOAT   NOT NULL,
    avg_99_100 FLOAT   NOT NULL,
    CONSTRAINT PK_Wages_Top_Bottom PRIMARY KEY (year)
);

-- Creat a wealth table
CREATE TABLE Wealth (
    year INT   NOT NULL,
    yearly_ranking INT   NOT NULL,
    name VARCHAR   NOT NULL,
    net_worth_USDn_billion FLOAT  NOT NULL,
    age INT,
    wealth_source VARCHAR  ,
    CONSTRAINT PK_Wealth PRIMARY KEY (year, name)
);

-- Laod all the data from the clean data folder

-- Make sure all your tables data has been read in 
SELECT * FROM Income_ST; 
SELECT * FROM Income_US;
SELECT * FROM Inflation_CPI_87;
SELECT * FROM Inflation_CPI_All; 
SELECT * FROM Labor_Force_Participation;
SELECT * FROM Student_Loan_Debt;
SELECT * FROM Tuition_87;  
SELECT * FROM Tuition_ST_94;
SELECT * FROM Underemplyment; 
SELECT * FROM Unemployment;
SELECT * FROM Wages_By_Ed;
SELECT * FROM Wages_Top_Bottom;
SELECT * FROM Wealth;
