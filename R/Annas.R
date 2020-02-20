if(!requireNamespace("pacman"))install.packages("pacman")
pacman::p_load(here, tidyverse)

source(here("R", "read.R"))
ggplot(results, aes(diff, time, group = diff)) + geom_boxplot() +
  theme_bw()

