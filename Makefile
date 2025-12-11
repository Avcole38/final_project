.PHONY: clean docker-run

# Build report dependencies
report/final_report.html: code/03_render_report.R report/FinalProj_R_markdown-1.Rmd \
                          tables/Summary_table.rds figures/graph1.png figures/graph2.png
	Rscript code/03_render_report.R

# Figures
figures/graph1.png figures/graph2.png: code/02_make_figures.R cleaned_data/clean_data.rds
	mkdir -p figures
	Rscript code/02_make_figures.R

# Tables
tables/Summary_table.rds: code/01_make_tables.R cleaned_data/clean_data.rds
	mkdir -p tables
	Rscript code/01_make_tables.R

# Clean data
cleaned_data/clean_data.rds: code/00_clean_data.R data/medical_cost.csv
	mkdir -p cleaned_data
	Rscript code/00_clean_data.R

# Clean all outputs
clean:
	rm -f cleaned_data/*.rds
	rm -f tables/*.rds
	rm -f figures/*.png
	rm -f report/*.html

docker-run:
	mkdir -p report
	docker run --rm \
	  -v "$$(pwd)/report":/project/report \
	  -v "$$(pwd)/data":/project/data \
	  -v "$$(pwd)/tables":/project/tables \
	  -v "$$(pwd)/figures":/project/figures \
	  -v "$$(pwd)/code":/project/code \
	  acoleman38/finalproj \
	  bash -c "Rscript /project/code/00_clean_data.R && \
	           Rscript /project/code/01_make_tables.R && \
	           Rscript /project/code/02_make_figures.R && \
	           Rscript /project/code/03_render_report.R"