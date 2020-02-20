if(!requireNamespace("pacman"))install.packages("pacman")
pacman::p_load(here, tidyverse)

source(here("R", "read.R"))

results <- results %>% mutate(diff = factor(diff))

ggplot(results, aes(diff, time, group = diff, color = diff)) + geom_point() + 
  geom_boxplot() +
  scale_y_continuous(trans='log10') + 
  theme_bw()
