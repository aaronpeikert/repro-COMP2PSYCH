if(!requireNamespace("pacman"))install.packages("pacman")
pacman::p_load(here)

source(here("R", "funs.R"))

#----game----
# this game is inspired by:
# Marino, L. Thinking chickens: a review of cognition, emotion, and behavior in
# the domestic chicken. Anim Cogn 20, 127–147 (2017).
# https://doi.org/10.1007/s10071-016-1064-4

myresults <- game()
write.csv(myresults, here("data", "raw", "my_unique_name.csv"))
