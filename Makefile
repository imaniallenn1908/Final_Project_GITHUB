Final-Project.html: Final-Project.Rmd code/data.rds
	Rscript code/render_report.R

data:
	Rscript code/load_data.R

.PHONY: clean
clean:
	rm -f code/*.rds && rm -f Final-Project.html