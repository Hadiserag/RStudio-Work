
###########################################################
###########################################################

## Getting Started with R

###########################################################
###########################################################

###########################################################
## Task One: R Overview & Preliminaries
## In this task, you will learn about the R programming
## language and write basic R commands.
###########################################################

### Basic R Commands

### 1.1: Assignments in R

## Assign x to 1, y to 2 and z to 3

### 1.2: Functions

## Print Hello World

### 1.3: Computations

## Add 17 to 5

## Add 5 to x

## Add 15 to 5 and store it in a variable called n

## Find the square root of 16 and store it in a variable called p
      #Square root function

## Display the square root of 16

## Calling variable in R

# Call y, see y value in console

# Call x, see x value in console

###########################################################
## Task Two: Basic Data Types in R 
## In this task, you will understand the different data types
## in R, and how they are used in R.
###########################################################

### 2.1: Variable Assignment

## Set the variable x to (Numeric Type)
## This is the default. 

## Set the variable z (small letter z) to "Hello" (Character Type)

## Note: R is case sensitive: The variables 'z' and 'Z' can coexist
## in R environment and have different values.

# Set Z (capital Z) to "World"

### 2.2: Call Variables

# Call small z

# Call capital Z

### 2.3: Adding Object Together

## 2.4: What do you think will be the result of this?

### Data Types

### Numeric

## 2.5: Check the data type of the variable a

## 2.6: Set a variable num to 8.5

## Call the variable num

## This is used to check the data type of a variable

### Integers

## 2.7: Change numeric data type to integer

## Check the data type of the variable int

### Character

# Check the data type of the variable w

## 2.8: Create a character variable from a numeric variable

## Call the char variable

### Boolean/Logical

## 2.9: Create a logical variable u and set it as TRUE

## Check the data type of u variable

### Factors

## 2.10: Store movie ratings in a variable called fac

## Check the data type

## 2.11: Check how many levels and the data type of the levels

## 2.12: Check all variables and objects that have been defined. Where can you see this?

###########################################################
## Task Three: Data Structures in R: Vectors
## In this task, you will understand vectors as a data structure
## in R, and how to perform sub-setting on the vector created.
###########################################################

### VECTORS

## 3.1: Create a vector of the marks of 4 students: 79, 92, 85, 71

## 3.2: Check the data type of the vector

## 3.3: Check the length of the variable

## 3.4: Indexing and Slicing
## Returns the 4th mark

## Returns the 2nd, 3rd and 4th marks

## 3.5: Create a character vector: aa, bb, cc, dd, ee, ff

## 3.6 (Ex.): Check the data type and length of the vector

## 3.7 (Ex.): Retrieve the 1st, 2nd and 3rd characters in the char_vec vector

## 3.8: Create the variable char_num_vec to take numeric and character types: aa, 2, q, xyz, 32, 42

## 3.9 (Ex.) : What do you think will be the data type of the vector?

###########################################################
## Task Four: Data Structures in R: Matrices
## In this task, you will understand matrices as a data structure
## in R, and how to perform sub-setting on the matrix created by
## accessing rows and columns of the matrix
###########################################################

### MATRICES

# 4.1: Create matrix with values from marks, 2 rows and 2 columns

# Call the matrix created

## 4.2: Change byrow to TRUE

# Call the matrix created

# 4.3: Create vector with 9 integers from 1 to 9


# 4.4: Access value on second row, second column

# 4.5: Access second row

# 4.6: Access second column

# 4.7: Access sub-matrix with components on both 
# first 2 rows and first 2 columns

# 4.8: Access sub-matrix with components that are 
# not on 3rd row and 3rd column

###########################################################
## Task Five: Data Structures in R: Data frames
## In this task, you will understand data frames as a data structure
## in R, and how to access specific rows and columns of a data frame.
###########################################################

### DATA FRAMES

## 5.1: Create data frame with 2 columns: marks and char_vec Marks (90, 75, 40, 83), Names (Mark, Sally, Jim, Bob)

## Look at data frame's overall type

## 5.2: Check the structure of each variable/feature in the data frame

# 5.3: Look at columns' data types

# 5.4: Call a column in a data frame

# 5.5: Create sub data frame with first 3 rows only

## 5.6: Create a new data frame with 3 rows and explore it

## Call the data frame 

## Check the data type 

## 5.7: Create another data frame with 2 rows and the same column headers Marks (25, 35), names (Sue, Jose)

## 5.8: Use rbind and cbind to append new data to an existing dataset

## rbind - A row bind appends new values in row fashion


## Create two new columns; Gender and LastName (gender M/F) and last names (Smith, Jones, Collns, Ann, Pole)


## cbind - A column bind appends new values in column fashion

## Check the dataframe and its structure

x <- 1
y <- 2
z <- 3

print("Hello World")

17 + 5
x + 5
n <- 15 + 5
p <- sqrt(16)
print(p)
print(y)
print(x)

x <- 42
z <- "Hello"
Z <- "World"

print(z)
print(Z)

a <- 42
typeof(a)
num <- 8.5
print(num)

int <- as.integer(42)
typeof(int)
char <- as.character(42)
print(char)

u <- TRUE
typeof(u)

fac <- factor(c("G", "PG", "PG-13", "R"))
typeof(fac)
levels(fac)

ls()

marks <- c(79, 92, 85, 71)
typeof(marks)
length(marks)
marks[4]
marks[2:4]
char_vec <- c("aa", "bb", "cc", "dd", "ee", "ff")
char_vec[1:3]
char_num_vec <- c("aa", 2, "q", "xyz", 32, 42)
typeof(char_num_vec)

matrix(marks, nrow=2, ncol=2)
matrix(marks, nrow=2, ncol=2, byrow=TRUE)
mat <- matrix(1:9, nrow=3, ncol=3)
mat[2,2]
mat[2,]
mat[,2]
mat[1:2, 1:2]
mat[-3, -3]

df <- data.frame(Marks=c(90, 75, 40, 83), Names=c("Mark", "Sally", "Jim", "Bob"))
str(df)
df$Names
sub_df <- df[1:3,]
df <- cbind(df, Gender=c("M", "F", "M", "F"))
str(df)

