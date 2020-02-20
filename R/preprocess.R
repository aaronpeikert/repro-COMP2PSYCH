if(!requireNamespace("pacman"))install.packages("pacman")
pacman::p_load(here, fs)

source(here("R", "read.R"))
results <- mutate(results, perc = diff/midpoint)
dir_create(here("data", "preprocessed"))
write.csv(results, here("data", "preprocessed", "final.csv"))
