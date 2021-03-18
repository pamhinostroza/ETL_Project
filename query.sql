SELECT * FROM homes_df;
SELECT * FROM income_df;
SELECT * FROM living_cost_df;

SELECT homes_df.*, living_cost_df.cost_index, income_df.income FROM homes_df
INNER JOIN living_cost_df
ON homes_df.state = living_cost_df.state
INNER JOIN income_df
ON income_df.state = living_cost_df.state;