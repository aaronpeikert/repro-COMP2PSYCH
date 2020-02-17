if(!requireNamespace("pacman"))install.packages("pacman")
pacman::p_load(here)

source(here("R", "funs.R"))

#----game----
myresults <- game()
write.csv(myresults, here("data", "raw", "my_unique_name.csv"))
