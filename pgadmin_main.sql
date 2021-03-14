CREATE TABLE "cost_living_index" (
    "State" VARCHAR   NOT NULL,
    "costIndex" INT   NOT NULL,
    "groceryCost" INT   NOT NULL,
    "housingCost" INT   NOT NULL,
    "utilitiesCost" INT   NOT NULL,
    "transportationCost" INT   NOT NULL,
    "miscCost" INT   NOT NULL,
    CONSTRAINT "pk_cost_living_index" PRIMARY KEY (
        "State"
     )
);

CREATE TABLE "median_home_prices" (
    "State" VARCHAR   NOT NULL,
    "MedianValue" INT   NOT NULL,
    CONSTRAINT "pk_median_home_prices" PRIMARY KEY (
        "MedianValue"
     )
);

CREATE TABLE "median_household_income" (
    "State" VARCHAR   NOT NULL,
    "HouseholdIncome" INT   NOT NULL
);

ALTER TABLE "median_home_prices" ADD CONSTRAINT "fk_median_home_prices_State" FOREIGN KEY("State")
REFERENCES "cost_living_index" ("State");

ALTER TABLE "median_household_income" ADD CONSTRAINT "fk_median_household_income_State" FOREIGN KEY("State")
REFERENCES "cost_living_index" ("State");

ALTER TABLE "median_household_income" ADD CONSTRAINT "fk_median_household_income_HouseholdIncome" FOREIGN KEY("HouseholdIncome")
REFERENCES "median_home_prices" ("MedianValue");

-- Revising Tables
SELECT * FROM cost_living_index;
SELECT * FROM median_home_prices;
SELECT * FROM median_household_income;