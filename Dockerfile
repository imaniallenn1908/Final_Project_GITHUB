FROM debian:bookworm-slim

#set working directory
WORKDIR /final

#system dependencies 
RUN apt-get update && apt-get install -y \
    r-base \
    r-base-dev \
    libcurl4 \
    libssl3 \
    libxml2 \
    make \
    && rm -rf /var/lib/apt/lists/*

#install renv
RUN R -e "install.packages('renv', repos='https://cloud.r-project.org')"

#copy renv  
COPY renv.lock renv.lock
COPY renv/activate.R renv/activate.R


#copy code
COPY code/ code/
COPY *.Rmd ./
COPY *.R ./

#restore all packages from renv.lock 
RUN R -e "renv::restore(prompt = FALSE)"

#run Rscripts to make report
RUN Rscript code/load_data.R && \
  Rscript code/render_report.R
