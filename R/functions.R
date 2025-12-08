 # Custom Helper Functions for Study-Level Collapsing
 # Used to process the FReD database from effect-level to study-level

library(dplyr)

 # Helper function 1: Create numeric study-level summaries
 # Computes the mean of numeric variables (e.g. effect size) within each study pair
summarise_numeric <- function(df, grouped_cols, numeric_cols) {
  df %>%
    group_by(across(all_of(grouped_cols))) %>%
    summarise(
      across(all_of(numeric_cols), ~ mean(.x, na.rm = TRUE)),
      .groups = "drop"
    )
}

 # Helper function 2: Extract a single categorical record per study pair
 # Extracts metadata (e.g. Journal name) that does not vary within a study
summarise_categorical <- function(df, grouped_cols, categorical_cols) {
  df %>%
    select(all_of(grouped_cols), all_of(categorical_cols)) %>%
    group_by(across(all_of(grouped_cols))) %>%
    slice(1) %>%
    ungroup()
}