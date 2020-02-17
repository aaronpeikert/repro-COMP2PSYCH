if(!requireNamespace("pacman"))install.packages("pacman")
pacman::p_load(here, tidyverse, fs)

#----read----
results_files <- dir_ls(here("data", "raw"))
results <- map_dfr(results_files, read.csv, .id = "id")
results <- mutate(results, id = path_ext_remove(path_file(id)))
