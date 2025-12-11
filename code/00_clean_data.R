library(dplyr)
library(readr)
library(here)

data <- read_csv("data/medical_cost.csv")
cleaned <- data %>% 
  filter(!is.na(charges)) %>% 
  select(Id, age, sex, bmi, children, smoker, region, charges)


saveRDS(cleaned, "data/clean_data.rds")
