DOCKER_IMAGE = imaniallenn1908/final-project

Final-Project.html: Final-Project.Rmd code/data.rds
	Rscript code/render_report.R

data:
	Rscript code/load_data.R
	
report:
	mkdir -p report
	docker run --rm \
		-v $(PWD)/report:home/rstudio/project/report \
			$(DOCKER_IMAGE)

.PHONY: clean
clean:
	rm -f code/*.rds && rm -f Final-Project.html
	
.PHONY: install
install:
  Rscript -e "renv::restore(prompt = FALSE)"
