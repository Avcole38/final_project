library(readr)
library(dplyr)
library(here)
library(gt)
cleaned <- readRDS("data/clean_data.rds")

Summary_table  <- cleaned %>%
  group_by(smoker) %>%
  summarise(
    count = n(),
    mean_charges = mean(charges, na.rm = TRUE),
    median_charges = median(charges, na.rm = TRUE),
    mean_bmi = mean(bmi, na.rm = TRUE),
    median_bmi = median(bmi, na.rm = TRUE)
  )
Summary_table %>% 
  select(smoker, mean_charges, mean_bmi,count) %>% 
  gt() %>% 
  cols_label( 
    mean_charges = '$ Charged',
    mean_bmi= 'BMI',
    smoker= 'Smoker Status',
    count= 'Number of pepople'
  )%>% 
  tab_header(
    title= 'Summary Table of Medical Charges Differing based on BMI and Smoker Status')

saveRDS(Summary_table ,here("tables", "Summary_table.rds"))

