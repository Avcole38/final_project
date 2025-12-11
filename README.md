<<<<<<< HEAD
# Final Project: Medical Insurance Cost Analysis 

#Overview:
#This project analyzes the *Medical Insurance Costs Dataset* from Kaggle to understand how individual characteristics influence medical insurance charges.  
The analysis focuses on the following variables:Smoking status,Age,BMI,Region, Number of children 
The goal is to identify which variables are most strongly associated with higher insurance costs.
This project is fully reproducible using **Docker**, and **Makefile**, allowing anyone to regenerate the final report exactly as it was created.

#Contents
Summary table 
graph 1= Medical Charges Based on BMI
graph 2= Medical Charges Based on Smoking Habits 

#Open Docker 
open Docker on desktop and login 

# Fork and Clone 
Fork this repository:
https://github.com/Avcole38/final_project.git
Then clone your fork by entering git clone (your SSH URL) into the terminal


#Workflow 
This project follows a reproducible analysis pipeline:
1. **00_clean_data.R** – Cleans the raw dataset and saves it to `/data`.
2. **01_make_tables.R** – Creates summary table of dataset in `/tables`.
3. **02_make_figures.R** – Creates graph 1 and graph 2 and saves them to `/figures`.
4. **03_render_report.R** – Renders the final HTML report located in `/report`.
These scripts are automatically executed inside the Docker container when `make docker-run` is run.

#make file
The Makefile automates the entire data analysis workflow so the project can be reproduced with a single command.

#dockerfile 
The Dockerfile defines a consistent and portable R environment containing all necessary packages for this project.

#Build docker image in terminal 
**make docker-build**

=======
# This is the area to describe the details of my final project and the findings 
#Overview: Medical Insurance Cost Analysis
#This project analyzes factors that influence medical insurance costs using data from Kaggle.
#In this analysis I will look at factors such as smoking status and region to decern medical 
#insurance cost billed to the individual.I will attempt to find any trends leading to higher medical care costs
# To sync packages and reproduce the working environment, make sure you install R and then install renv by running 'install.packages("renv")' in the console 
#then restore by creating the makkefile by running 'make install'
 


>>>>>>> 49d1387485c086c0529dbbe020ab5e679194df1d
