here::i_am("code/render_report.R")

rmarkdown::render(
  input = "Final-Project.Rmd",
  output_dir = "../report"
)