if(!requireNamespace("pacman"))install.packages("pacman")
pacman::p_load(here, tidyverse, viridis)

source(here("R", "read.R"))

ggplot(results, 
       aes(diff, time, 
           fill = id, 
           group = diff)) + 
  geom_boxplot(outlier.alpha = .3) +
  facet_wrap(~id, scales = "free_y")  +
  theme_bw() +
  scale_y_log10() +
  theme(legend.position = "none")+
  scale_fill_viridis_d()
