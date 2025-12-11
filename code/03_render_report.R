library(rmarkdown)

# Use relative path to code folder
render("FinalProj_R_markdown-1.Rmd",
       output_file = "report/final_report.html")
dir.create("report", recursive = TRUE, showWarnings = FALSE)