here::i_am("code/render_report.R")

rmarkdown::render(
  here::here("Final-Project.Rmd"),
  knit_root_dir = here::here()
)