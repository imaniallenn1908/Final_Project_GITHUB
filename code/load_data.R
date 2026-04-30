here::i_am("code/load_data.R")

readRDS("code/data.rds")

saveRDS(data, file = "/final/code/data.rds")
