here::i_am("code/render_report.R")

dir.create("report", showWarnings = FALSE, recursive = TRUE)

rmarkdown::render(
  input = "/final/Final-Project.Rmd",
  output_file = "/final/report/Final-Project.html",
  knit_root_dir = "/final"
)