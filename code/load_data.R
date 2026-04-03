here::i_am("code/load_data.R")

data = readRDS("~/Desktop/DATA 550/final/code/data.rds")

saveRDS(
  data,
  file = here::here("code", "data.rds")
)