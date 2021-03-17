﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


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

