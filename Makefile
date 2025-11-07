# Makefile for Final Project

# Default rule: build the report
all: report/final_report.html

# Rule to render the R Markdown file
report/final_report.html: report/FinalProj_R_markdown-1.Rmd data/medical_cost.csv
	Rscript -e "rmarkdown::render('report/FinalProj_R_markdown-1.Rmd', output_file = 'final_report.html')"

clean:
	rm -f report/final_report.html