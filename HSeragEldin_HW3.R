#1
GlobalGap <- read.csv("GGI2013.csv")

GlobalGap_O <- na.omit(GlobalGap)

#2 - 
library(tidyverse)

GlobalGap_long <- pivot_longer(GlobalGap_O, 
                               cols = c(X2006, X2010, X2013), 
                               names_to = "Year", 
                               values_to = "Score")

GlobalGap_long$Year <- sub("X", "", GlobalGap_long$Year)


ggplot(GlobalGap_long, aes(x = Score)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.01, color = "black", fill = "lightblue", alpha = 0.6) +
  geom_density(color = "red", size = 1.5) +
  facet_wrap(~Year) + 
  theme_minimal() +
  labs(title = "Histogram and Smoothed Density Estimate",
       x = "Score",
       y = "Density")



#3 - 
ggplot(GlobalGap_long, aes(x = as.factor(Year), y = Score)) +
  geom_boxplot(fill = "lightblue", color = "black") +
  theme_minimal() +
  labs(title = "Box and Whisker Plot of Scores by Year",
       x = "Year",
       y = "Score") +
  geom_jitter(width = 0.2, alpha = 0.5, color = "darkred") 

#4 - 

library(dplyr)

summary_stats <- GlobalGap_long %>%
  group_by(Year) %>%
  summarise(
    Mean = mean(Score, na.rm = TRUE),
    StandardDeviation = sd(Score, na.rm = TRUE)
  )

print(summary_stats)

#5 - 

shapiro.test(GlobalGap_O$X2006)

shapiro.test(GlobalGap_O$X2010)

shapiro.test(GlobalGap_O$X2013)


#6 - 
GlobalGap_O$Z2006 <- scale(GlobalGap_O$X2006, center = TRUE, scale = TRUE)
GlobalGap_O$Z2010 <- scale(GlobalGap_O$X2010, center = TRUE, scale = TRUE)
GlobalGap_O$Z2013 <- scale(GlobalGap_O$X2013, center = TRUE, scale = TRUE)

#7 - 
ci_2006 <- t.test(GlobalGap_O$X2006)$conf.int

ci_2010 <- t.test(GlobalGap_O$X2010)$conf.int

ci_2013 <- t.test(GlobalGap_O$X2013)$conf.int

print(ci_2006)
print(ci_2010)
print(ci_2013)

#8 - 

#9 - 
t.test(GlobalGap_O$X2006, GlobalGap_O$X2013, paired = TRUE, var.equal = FALSE, alternative = "two.sided")

