-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/xA4WHS
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Tuition_87" (
    "year" date   NOT NULL,
    "public_instate" varchar   NOT NULL,
    "public_out_of_state" varchar   NOT NULL,
    "private" varchar   NOT NULL,
    CONSTRAINT "pk_Tuition_87" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Tuition_ST_94" (
    "year" year   NOT NULL,
    "state" varchar   NOT NULL,
    "public_instate" varchar   NOT NULL,
    "public_out_of_state" varchar   NOT NULL,
    "private" varchar   NOT NULL,
    CONSTRAINT "pk_Tuition_ST_94" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Cost_Of_Living" (
    "year" date   NOT NULL,
    "yearly_cost" float   NOT NULL,
    "percent_increase" float   NOT NULL,
    CONSTRAINT "pk_Cost_Of_Living" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Income" (
    "year" year   NOT NULL,
    "avg_yearly_income_us" float   NOT NULL,
    CONSTRAINT "pk_Income" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Income_ST" (
    "year" year   NOT NULL,
    "state" varchar   NOT NULL,
    "avg_yearly_income_st" float   NOT NULL,
    CONSTRAINT "pk_Income_ST" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Wealth" (
    "year" year   NOT NULL,
    "yearly_ranking" int   NOT NULL,
    "name" varchar   NOT NULL,
    "net_worth_USDn_billion" float   NOT NULL,
    "age" int   NOT NULL,
    "wealth_source" varchar   NOT NULL,
    CONSTRAINT "pk_Wealth" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Inflation" (
    "year" year   NOT NULL,
    "yearly_inflation_percentage" float   NOT NULL,
    CONSTRAINT "pk_Inflation" PRIMARY KEY (
        "year","yearly_inflation_percentage"
     )
);

CREATE TABLE "Unemployment" (
    "year" year   NOT NULL,
    "all" float   NOT NULL,
    "bachelor_degree" float   NOT NULL,
    "women_b_degree" float   NOT NULL,
    "men_b_degree" float   NOT NULL,
    "less_then_hs" float   NOT NULL,
    "high_school" float   NOT NULL,
    "some_college" float   NOT NULL,
    "advanced_degree" float   NOT NULL,
    "women" float   NOT NULL,
    "men" float   NOT NULL,
    CONSTRAINT "pk_Unemployment" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Wages_By_Ed" (
    "year" year   NOT NULL,
    "less_then_HS" float   NOT NULL,
    "high_school" float   NOT NULL,
    "some_college" float   NOT NULL,
    "bachelor_degree" float   NOT NULL,
    "advanced_degree" float   NOT NULL,
    "less_then_hs_share" float   NOT NULL,
    "high_school_share" float   NOT NULL,
    "some_college_share" float   NOT NULL,
    "bachelor_degree_share" float   NOT NULL,
    "advanced_degree_share" float   NOT NULL,
    CONSTRAINT "pk_Wages_By_Ed" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Wages_Top_Bottom" (
    "year" year   NOT NULL,
    "bottom_90_avg" float   NOT NULL,
    "90-95_avg" float   NOT NULL,
    "95-99_avg" float   NOT NULL,
    "90-99_avg" float   NOT NULL,
    "top_5p_avg" float   NOT NULL,
    "99-99-9_avg" float   NOT NULL,
    "upper_0-1_avg" float   NOT NULL,
    "99-100_avg" float   NOT NULL,
    CONSTRAINT "pk_Wages_Top_Bottom" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Labor-Force_Participation" (
    "year" year   NOT NULL,
    "all" float   NOT NULL,
    "less_then_hs" float   NOT NULL,
    "high_school" float   NOT NULL,
    "some_college" float   NOT NULL,
    "bachelor_degree" float   NOT NULL,
    "advanced_degree" float   NOT NULL,
    "women" float   NOT NULL,
    "men" float   NOT NULL,
    CONSTRAINT "pk_Labor-Force_Participation" PRIMARY KEY (
        "year"
     )
);

CREATE TABLE "Underemplyment" (
    "year" year   NOT NULL,
    "all" float   NOT NULL,
    "bachelor_degree" float   NOT NULL,
    "women_b_degree" float   NOT NULL,
    "men_b_degree" float   NOT NULL,
    "less_then_hs" float   NOT NULL,
    "high_school" float   NOT NULL,
    "some_college" float   NOT NULL,
    "advanced_degree" float   NOT NULL,
    "women" float   NOT NULL,
    "men" float   NOT NULL,
    CONSTRAINT "pk_Underemplyment" PRIMARY KEY (
        "year"
     )
);

ALTER TABLE "Tuition_87" ADD CONSTRAINT "fk_Tuition_87_year" FOREIGN KEY("year")
REFERENCES "Tuition_ST_94" ("");

ALTER TABLE "Tuition_ST_94" ADD CONSTRAINT "fk_Tuition_ST_94_year" FOREIGN KEY("year")
REFERENCES "Tuition_87" ("");

ALTER TABLE "Cost_Of_Living" ADD CONSTRAINT "fk_Cost_Of_Living_year" FOREIGN KEY("year")
REFERENCES "Tuition_87" ("");

ALTER TABLE "Income" ADD CONSTRAINT "fk_Income_year" FOREIGN KEY("year")
REFERENCES "Tuition_87" ("");

ALTER TABLE "Income_ST" ADD CONSTRAINT "fk_Income_ST_year" FOREIGN KEY("year")
REFERENCES "Tuition_87" ("");

ALTER TABLE "Wealth" ADD CONSTRAINT "fk_Wealth_year" FOREIGN KEY("year")
REFERENCES "Tuition_87" ("");

ALTER TABLE "Inflation" ADD CONSTRAINT "fk_Inflation_year" FOREIGN KEY("year")
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

