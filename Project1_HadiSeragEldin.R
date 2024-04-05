#### THIS IS FOR SECTION 1: BINOMIAL DATA ####

# load library tidyverse
library(tidyverse)

# read in data
data <- read.csv("cancer_in_dogs.csv")

#Separate into separate groups
treatment_group <- filter(data, order == "2,4-D")
control_group <- filter(data, order == "no 2,4-D")

#Sum positive cancer result

positiveresults_treatment <- sum(treatment_group$response == "cancer")
positiveresults_control <- sum(control_group$response == "cancer")

#Perform Right-tailed Binomial Test
result <- binom.test(positiveresults_treatment, n_treatment, positiveresults_control / n_control, alternative = "greater")


#### THIS IS FOR SECTION 2: TEST OF MEANS PART 1 ####

# read in the data
math_grades1 <- read.csv("student_math.csv")
portuguese_grades1 <- read.csv("student_por.csv")

# omit missing values 
math_grades <- na.omit(math_grades1)
portuguese_grades <- na.omit(portuguese_grades1)

# Q-Q Plot to check normality 

qqnorm(math_grades$G3) 
qqline(math_grades$G3)

qqnorm(portuguese_grades$G3) 
qqline(portuguese_grades$G3)

# boxplot to check equal variance  
boxplot(math_grades$G3, portuguese_grades$G3, names=c("Math G3 Grades", "Portuguese G3 Grades"))

# Shapiro Wilkes Test for normality 

shapiro.test(math_grades$G3)
shapiro.test(portuguese_grades$G3)

# perform the two sample independent t-test of means 
result <- t.test(math_grades$G3, portuguese_grades$G3)

# Print the test results
print(result) 



#### THIS IS FOR SECTION 2: TEST OF MEANS PART 2 ####

# read in the data 
portuguese_scores1 <- read.csv("student_por.csv") 

# omit missing values
portuguese_scores <- na.omit(portuguese_scores1) 

# Q-Q Plot to check normality

qqnorm(portuguese_scores$G1) 
qqline(portuguese_scores$G1)

qqnorm(portuguese_scores$G2) 
qqline(portuguese_scores$G2)



# boxplot to check equal variance 

boxplot(portuguese_scores$G1, portuguese_scores$G2, names=c("Portuguese G1 Scores", "Portuguese G2 Scores"))


# Shapiro Wilkes Test for normality 

shapiro.test(portuguese_scores$G1)
shapiro.test(portuguese_scores$G2)

# Perform the paired samples t-test (dependent means)  
ttestresult <- t.test(portuguese_scores$G1, portuguese_scores$G2, paired = TRUE)

# Print the test results
print(ttestresult) 


