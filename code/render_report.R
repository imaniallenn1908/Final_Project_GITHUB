here::i_am("code/render_report.R")

dir.create("report", showWarnings = FALSE, recursive = TRUE)

rmarkdown::render("/final/Final-Project.Rmd", knit_root_dir = "/final/report")
