FROM rocker/r-ver:4.4.1

#set working directory
WORKDIR /final

#system dependencies 
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    curl \
    ca-certificates \
    pandoc \
    && rm -rf /var/lib/apt/lists/*

#install renv
RUN R -e "install.packages('renv', repos='https://cloud.r-project.org')"

#copy renv  
COPY renv.lock renv.lock
COPY renv/activate.R renv/activate.R


#copy code and other relevant files
COPY code/ /final/code/
COPY Final-Project.Rmd /final/
COPY *.R /final/

#restore all packages from renv.lock 
RUN R -e "options(repos = c(CRAN = 'https://cloud.r-project.org')); renv::restore(prompt = FALSE)"

#run Rscripts to make report
RUN Rscript code/load_data.R
RUN Rscript code/render_report.R
