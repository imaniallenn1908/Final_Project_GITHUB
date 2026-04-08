# Code Description

`code/load_data`
- Loads and saves dataset as data.rds

`code/reder_report`
- Renders final Rmardown and saves as Final-Project.html


#Package Synchronization
`renv.lock`
- All package files are stored in the renv.lock file.
To ensure all correct package files / versions are installed
type `getwd()` in the R console to check which directiory 
you're in. Use `setwd()` to set working directory to the 
correct R project directory (should be "final").

- In the terminal type `make install` to load all package 
files / versions. 

- If new packages are installed type `renv::status()` into
the R console. If synchronized, there are no further steps.

- Type `renv::snapshot()` into the console to update the 
renv.lock file. 