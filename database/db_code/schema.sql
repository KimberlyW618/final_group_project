﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/xA4WHS
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Tuition_87" (
    "year" INT   NOT NULL,
    "public" FLOAT   NOT NULL,
    "private" FLOAT   NOT NULL,
    CONSTRAINT "pk_Tuition_87" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Tuition_ST_94" (
    "year" INT   NOT NULL,
    "state" VARCHAR   NOT NULL,
    "public_instate" FLOAT   NOT NULL,
    "public_out_of_state" FLOAT   NOT NULL,
    "private" FLOAT   NOT NULL,
    CONSTRAINT "pk_Tuition_ST_94" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Income_US" (
    "year" INT   NOT NULL,
    "avg_yearly_income_us" FLOAT   NOT NULL,
    CONSTRAINT "pk_Income_US" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Income_ST" (
    "year" INT   NOT NULL,
    "United_States" FLOAT   NOT NULL,
    "Alabama" FLOAT   NOT NULL,
    "Alaska" FLOAT   NOT NULL,
    "Arizona" FLOAT   NOT NULL,
    "Arkansas" FLOAT   NOT NULL,
    "California" FLOAT   NOT NULL,
    "Colorado" FLOAT   NOT NULL,
    "Connecticut" FLOAT   NOT NULL,
    "Delaware" FLOAT   NOT NULL,
    "DC" FLOAT   NOT NULL,
    "Florida" FLOAT   NOT NULL,
    "Georgia" FLOAT   NOT NULL,
    "Hawaii" FLOAT   NOT NULL,
    "Idaho" FLOAT   NOT NULL,
    "Illinois" FLOAT   NOT NULL,
    "Indiana" FLOAT   NOT NULL,
    "Iowa" FLOAT   NOT NULL,
    "Kansas" FLOAT   NOT NULL,
    "Kentucky" FLOAT   NOT NULL,
    "Louisiana" FLOAT   NOT NULL,
    "Maine" FLOAT   NOT NULL,
    "Maryland" FLOAT   NOT NULL,
    "Massachusetts" FLOAT   NOT NULL,
    "Michigan" FLOAT   NOT NULL,
    "Minnesota" FLOAT   NOT NULL,
    "Mississippi" FLOAT   NOT NULL,
    "Missouri" FLOAT   NOT NULL,
    "Montana" FLOAT   NOT NULL,
    "Nebraska" FLOAT   NOT NULL,
    "Nevada" FLOAT   NOT NULL,
    "New_Hampsire" FLOAT   NOT NULL,
    "New_Jersey" FLOAT   NOT NULL,
    "New_Mexico" FLOAT   NOT NULL,
    "New_York" FLOAT   NOT NULL,
    "North_Carolina" FLOAT   NOT NULL,
    "North_Dakota" FLOAT   NOT NULL,
    "Ohio" FLOAT   NOT NULL,
    "Oklahoma" FLOAT   NOT NULL,
    "Oregon" FLOAT   NOT NULL,
    "Pennsylvania" FLOAT   NOT NULL,
    "Rhode_Island" FLOAT   NOT NULL,
    "South_Carolina" FLOAT   NOT NULL,
    "South_Dakota" FLOAT   NOT NULL,
    "Tennessee" FLOAT   NOT NULL,
    "Texas" FLOAT   NOT NULL,
    "Utah" FLOAT   NOT NULL,
    "Vermont" FLOAT   NOT NULL,
    "Virgina" FLOAT   NOT NULL,
    "Washington" FLOAT   NOT NULL,
    "West_Virgina" FLOAT   NOT NULL,
    "Wisconsin" FLOAT   NOT NULL,
    "Wyoming" FLOAT   NOT NULL,
    CONSTRAINT "pk_Income_ST" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Wealth" (
    "year" INT   NOT NULL,
    "yearly_ranking" INT   NOT NULL,
    "name" VARCHAR   NOT NULL,
    "net_worth_USDn_billion" FLOAT   NOT NULL,
    "age" VARCHAR   NOT NULL,
    "wealth_source" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Wealth" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Inflation_CPI_All" (
    "year" INT   NOT NULL,
    "yearly_increase" FLOAT   NOT NULL,
    "yearly_inflation" FLOAT   NOT NULL,
    CONSTRAINT "pk_Inflation_CPI_All" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Inflation_CPI_87" (
    "year" INT   NOT NULL,
    "yearly_increase" FLOAT   NOT NULL,
    "yearly_inflation" FLOAT   NOT NULL,
    CONSTRAINT "pk_Inflation_CPI_87" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Unemployment" (
    "year" INT   NOT NULL,
    "all" FLOAT   NOT NULL,
    "bachelor_degree" FLOAT   NOT NULL,
    "women_b_degree" FLOAT   NOT NULL,
    "men_b_degree" FLOAT   NOT NULL,
    "less_then_hs" FLOAT   NOT NULL,
    "high_school" FLOAT   NOT NULL,
    "some_college" FLOAT   NOT NULL,
    "advanced_degree" FLOAT   NOT NULL,
    "women" FLOAT   NOT NULL,
    "men" FLOAT   NOT NULL,
    CONSTRAINT "pk_Unemployment" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Wages_By_Ed" (
    "year" INT   NOT NULL,
    "less_then_HS" FLOAT   NOT NULL,
    "high_school" FLOAT   NOT NULL,
    "some_college" FLOAT   NOT NULL,
    "bachelor_degree" FLOAT   NOT NULL,
    "advanced_degree" FLOAT   NOT NULL,
    "less_then_hs_share" FLOAT   NOT NULL,
    "high_school_share" FLOAT   NOT NULL,
    "some_college_share" FLOAT   NOT NULL,
    "bachelor_degree_share" FLOAT   NOT NULL,
    "advanced_degree_share" FLOAT   NOT NULL,
    CONSTRAINT "pk_Wages_By_Ed" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Wages_Top_Bottom" (
    "year" INT   NOT NULL,
    "bottom_90_avg" FLOAT   NOT NULL,
    "90-95_avg" FLOAT   NOT NULL,
    "95-99_avg" FLOAT   NOT NULL,
    "90-99_avg" FLOAT   NOT NULL,
    "top_5p_avg" FLOAT   NOT NULL,
    "99-99-9_avg" FLOAT   NOT NULL,
    "upper_0-1_avg" FLOAT   NOT NULL,
    "99-100_avg" FLOAT   NOT NULL,
    CONSTRAINT "pk_Wages_Top_Bottom" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Labor-Force_Participation" (
    "year" INT   NOT NULL,
    "all" FLOAT   NOT NULL,
    "less_then_hs" FLOAT   NOT NULL,
    "high_school" FLOAT   NOT NULL,
    "some_college" FLOAT   NOT NULL,
    "bachelor_degree" FLOAT   NOT NULL,
    "advanced_degree" FLOAT   NOT NULL,
    "women" FLOAT   NOT NULL,
    "men" FLOAT   NOT NULL,
    CONSTRAINT "pk_Labor-Force_Participation" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Underemplyment" (
    "year" INT   NOT NULL,
    "all" FLOAT   NOT NULL,
    "bachelor_degree" FLOAT   NOT NULL,
    "women_b_degree" FLOAT   NOT NULL,
    "men_b_degree" FLOAT   NOT NULL,
    "less_then_hs" FLOAT   NOT NULL,
    "high_school" FLOAT   NOT NULL,
    "some_college" FLOAT   NOT NULL,
    "advanced_degree" FLOAT   NOT NULL,
    "women" FLOAT   NOT NULL,
    "men" FLOAT   NOT NULL,
    CONSTRAINT "pk_Underemplyment" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Student_Loan_Debt" (
    "year_grad" INT   NOT NULL,
    "debt_at_grad" FLOAT   NOT NULL,
    "adjusted_for_inflation" FLOAT   NOT NULL,
    CONSTRAINT "pk_Student_Loan_Debt" PRIMARY KEY (
        "year_grad"
     )
);

ALTER TABLE "Tuition_87" ADD CONSTRAINT "fk_Tuition_87_year" FOREIGN KEY("year")
REFERENCES "Tuition_ST_94" ("");

ALTER TABLE "Tuition_ST_94" ADD CONSTRAINT "fk_Tuition_ST_94_year" FOREIGN KEY("year")
REFERENCES "Tuition_87" ("");

ALTER TABLE "Income_US" ADD CONSTRAINT "fk_Income_US_year" FOREIGN KEY("year")
REFERENCES "Tuition_87" ("");

ALTER TABLE "Income_ST" ADD CONSTRAINT "fk_Income_ST_year" FOREIGN KEY("year")
REFERENCES "Tuition_87" ("");

ALTER TABLE "Wealth" ADD CONSTRAINT "fk_Wealth_year" FOREIGN KEY("year")
REFERENCES "Tuition_87" ("");

ALTER TABLE "Inflation_CPI_All" ADD CONSTRAINT "fk_Inflation_CPI_All_year" FOREIGN KEY("year")
REFERENCES "Tuition_87" ("");

ALTER TABLE "Inflation_CPI_87" ADD CONSTRAINT "fk_Inflation_CPI_87_year" FOREIGN KEY("year")
REFERENCES "Tuition_87" ("");

ALTER TABLE "Unemployment" ADD CONSTRAINT "fk_Unemployment_year" FOREIGN KEY("year")
REFERENCES "Tuition_87" ("");

ALTER TABLE "Wages_By_Ed" ADD CONSTRAINT "fk_Wages_By_Ed_year" FOREIGN KEY("year")
REFERENCES "Tuition_87" ("");

ALTER TABLE "Wages_Top_Bottom" ADD CONSTRAINT "fk_Wages_Top_Bottom_year" FOREIGN KEY("year")
REFERENCES "Tuition_87" ("");

ALTER TABLE "Labor-Force_Participation" ADD CONSTRAINT "fk_Labor-Force_Participation_year" FOREIGN KEY("year")
REFERENCES "Tuition_87" ("");

ALTER TABLE "Underemplyment" ADD CONSTRAINT "fk_Underemplyment_year" FOREIGN KEY("year")
REFERENCES "Tuition_87" ("");

ALTER TABLE "Student_Loan_Debt" ADD CONSTRAINT "fk_Student_Loan_Debt_year_grad" FOREIGN KEY("year_grad")
REFERENCES "Tuition_87" ("");
