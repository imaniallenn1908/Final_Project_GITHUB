here::i_am("code/load_data.R")
data <- load_data()
stopifnot(is.data.frame(data))
saveRDS(data, file = "/final/code/data.rds")
