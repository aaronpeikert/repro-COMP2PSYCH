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
  theme_minimal() +
  scale_y_log10(name="Time") +
  theme(legend.position = "none")+
  scale_fill_viridis_d()+
  ggtitle("The Annas Plot")+
  scale_x_discrete(name="Difference")+
  theme(legend.position = "none")
