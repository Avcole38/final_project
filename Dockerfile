FROM rocker/tidyverse:4.5.1

# Set project root inside container
WORKDIR /project

# Copy project files into container
COPY code /project/code
COPY data /project/data
COPY report /project/report
COPY report/FinalProj_R_markdown-1.Rmd /project/FinalProj_R_markdown-1.Rmd

# Install extra needed packages
RUN R -e "install.packages(c('here','gt','knitr'))"

CMD ["bash"]
