here::i_am("code/load_data.R")

readRDS("code/data.rds")

saveRDS(
  data,
  file = here::here("code", "data.rds")
)