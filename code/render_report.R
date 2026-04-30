here::i_am("code/render_report.R")

rmarkdown::render(
  input = "code/Final-Project.Rmd",
  output_dir = "report"
)