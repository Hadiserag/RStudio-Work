library(tidyverse)

data <- read.csv("biontech_adolescents.csv")

cleaned_data <- na.omit(data)


treatment_group <- filter(cleaned_data, group == "vaccine")
control_group <- filter(cleaned_data, group == "placebo")

positivetests_treatment <- sum(treatment_group$outcome == "COVID-19")
positivetests_control <- sum(control_group$outcome == "COVID-19")

n_treatment <- nrow(treatment_group)
n_control <- nrow(control_group)

result <- binom.test(positivetests_treatment, n_treatment, positivetests_control / n_control, alternative = "less")

result