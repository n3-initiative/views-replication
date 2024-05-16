library(tidyverse)

views_test_data <- 
  read.csv("/Users/hibiki/Documents/Wave 2 Left - FINAL - TEST_May 14, 2024_11.59.csv") %>%
  slice(-c(1:2))


views_test_data <- read.csv(text = capture.output(write.csv(views_test_data, row.names = FALSE)))

table(views_test_data$Age2, useNA = "always")

nonresponse <- views_test_data %>%
  # summarise across all variables, create a count of NAs
  summarise(
    across(
      everything(),
      ~ sum(is.na(.)),
      .names = "count_{col}"
      )
    ) %>%
  # reshape long so that column names are in a questions column and the count of NAs are in a values column
  pivot_longer(
    everything(),
    names_to = "question",
    values_to = "n_nonresponse"
  ) %>%
  # calculate the % nonresponse and sort descending on nonresponse (highest nonresponse on top)
  mutate(nonresponse_percent = n_nonresponse/nrow(views_test_data) * 100) %>%
  arrange(desc(nonresponse_percent))
