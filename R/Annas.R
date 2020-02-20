if(!requireNamespace("pacman"))install.packages("pacman")
pacman::p_load(here, tidyverse, viridis)

source(here("R", "read.R"))

results <- results %>% mutate(diff = factor(diff))

ggplot(results, 
       aes(diff, time, 
           fill = id, 
           group = diff)) + 
  geom_point() + 
  geom_boxplot(outlier.alpha = .3) +
  facet_wrap(~id, scales = "free_y")  +
  scale_y_log10() +
  scale_fill_viridis_d() +
  theme_bw() +
  theme(legend.position = "none", panel.grid = element_blank())+
  NULL
