here::i_am("code/render_report.R")

rmarkdown::render(
  input = "Final-Project.Rmd",
  output_file = file.path("report", "Final-Project.html"),
  knit_root_dir = "/final"
)