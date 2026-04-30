# Code Description

1. Data Processing
`code/load_data`
- Loads the raw dataset
- Cleans and processes the data
- Saves the processed dataset as `data.rds`

2. Report Generation
`code/render_report`
- Reads `data.rds` and renders the final R Markdown report `Final-Project.Rmd`
- Final report output will be `Final-Report.html`

# Reproducibility with Docker
This project is fully reproducible using Docker. The Docker image contains 
all required system dependencies, R packages, and project files needed to
generate the report. 

# Build Docker Image
In the terminal type 
docker build -t imaniallenn1908/final-project .

# Pull from DockerHub
In the terminal type 
docker pull imaniallenn1908/final-project

# Running the Automted Report
The Makefile includes a `report` target that runs the full pipeline
inside a Docker container. 

`make report` in the terminal does the following:
- Creates an empty `report/` directory in the project folder
- Runs the Docker container using the project image
- Mounts the local `report/` folder into the container
- Saves the final HTML report to `report/Final-Project.html`

# Package Synchronization (`renv`)
This project uses `renv` to manage R package versions.

`renv.lock`
- Stores all package names and versions required for the project 

# Install Packages Locally (Optional)
`make install` in the terminal will install packages locally (optional)
- Ensure your working directory is set to `final`
- Check with: `getwd()`
- If needed, `setwd("path/to/final")` can be run

# Updating Packages
If new packages are added use `renv::status()` followed by `renv::snapshot()`
This will update the `renv.lock` file to maintain reproducibility.
