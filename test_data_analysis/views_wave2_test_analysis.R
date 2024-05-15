library(tidyverse)

views_test_data <- 
  read.csv("/Users/hibiki/Documents/Wave 2 Left - FINAL - TEST_May 14, 2024_11.59.csv") %>%
  slice(-c(1:2))


views_test_data <- read.csv(text = capture.output(write.csv(views_test_data, row.names = FALSE)))

table(views_test_data$Age2, useNA = "always")
