CREATE TABLE "living_cost_df" (
    "state" VARCHAR   NOT NULL,
    "cost_index" DECIMAL   NOT NULL,
    CONSTRAINT "pk_living_cost_df" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "homes_df" (
    "state" VARCHAR   NOT NULL,
    "median_value" INT   NOT NULL
);

CREATE TABLE "income_df" (
    "state" VARCHAR   NOT NULL,
    "income" INT   NOT NULL
);

ALTER TABLE "homes_df" ADD CONSTRAINT "fk_homes_df_state" FOREIGN KEY("state")
REFERENCES "living_cost_df" ("state");

ALTER TABLE "income_df" ADD CONSTRAINT "fk_income_df_state" FOREIGN KEY("state")
REFERENCES "living_cost_df" ("state");

SELECT * FROM homes_df;
SELECT * FROM income_df;
SELECT * FROM living_cost_df; --contains primary key

SELECT homes_df.*, living_cost_df.cost_index, income_df.income FROM homes_df
INNER JOIN living_cost_df
ON homes_df.state = living_cost_df.state
INNER JOIN income_df
ON income_df.state = living_cost_df.state;