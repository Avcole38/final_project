library(ggplot2)
library(readr)
library(here)
#graph 1 
cleaned <- readRDS("data/clean_data.rds")

here::i_am("report/FinalProj_R_markdown-1.Rmd")
cleaned <- readr::read_csv(
  file = here::here("data","medical_cost.csv")
)
ggplot(cleaned,aes(bmi,charges,smoker))+ 
  geom_point(position = "jitter", size=0.5,color='blue',alpha=0.3)+
  labs(x='BMI', y='$ Charged')+
  ggtitle('Medical Charges Based on BMI')



#graph 2
ggplot(cleaned,aes(smoker, charges, fill = smoker))+
  geom_boxplot()+
  labs(x='Smoker', y= '$ Charges' )+ 
  ggtitle('Medical Charges Based on Smoking Habits ')

dir.create("report", recursive = TRUE, showWarnings = FALSE)
ggsave("figures/graph1.png")
ggsave("figures/graph2.png")
