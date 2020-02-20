if(!requireNamespace("pacman"))install.packages("pacman")
pacman::p_load(here, tidyverse, fs)

#----read----
results_files <- dir_ls(here("data", "raw"))
# I think it would be better to use readr package here
results <- map_dfr(results_files, readr::read_csv, .id = "id")
results <- mutate(results, id = path_ext_remove(path_file(id)))
