if(!requireNamespace("pacman"))install.packages("pacman")
pacman::p_load(here, tidyverse)

source(here("R", "read.R"))
results$diff = as.factor(results$diff)

ggplot(results, aes(diff, time, group = diff, color=diff, shape=diff)) + 
  geom_boxplot() + 
  theme_minimal() +
  ggtitle("The Annas Plot")+
  scale_y_continuous(name="Time", breaks=c(0,5,10,15,20,25,30,35,50), labels=c(0,5,10,15,20,25,30,35,50), limits = c(0,40))+
  scale_x_discrete(name="Difference")
