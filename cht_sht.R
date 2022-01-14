# R CHEET SHEET

## {{{ WORKSHEET 2: Numbers vs Strings
# Numbers
3
# Numbers retain numerical properties
3 * 3
# a string
"three"
# Strings are always surrounded by quotes. No numerical properties
"three" * "three" # Error

# Logic and Conditionals
3 > 4 # Logical statement. Asking whether 3 is greater than 4. FALSE
4 == 4 # TRUE
"three" == "three" # works for strings too
5 != 4 # TRUE
"three" == 3 #FALSE. strings have no numerical properties

# Vectors and Variables
c(8, 1, 9, -1, 5, 6) # numerical vector
c("red", "orange", "yellow", "green", "blue") # character vector
# numerical vector stored as variable (or object) called "x"
x <- c(8, 1, 9, -1, 5, 6)
# character vector stored as "y"
y <- c("red", "orange", "yellow", "green", "blue")

# Use square brackets [] to navigate vectors
x[1] # First element of the vector
x[3] # Third element

# Use square brackets [] to navigate two-dimensional data
# [row, column]
mtx <- matrix(x, nrow = 3, ncol = 2) # matrices can only be numeric
mtx[1, 1] # returns entry in the first row and first column
mtx[1, 2] # returns entry in the first row and second column
mtx[3, 3] # returns entry in the third row and third column
mtx[2, ] # returns all entries in second row

# Data Frames (IMPORTANT)
# Data frames are the most common data type you"ll be working with
our_group <- data.frame(first_names = c("ryan", "vu", "kelly", "daniella"),
                        zip_codes = c(94933, 95823, 92395, 79912),
                        fav_music = c("vogue", "k-pop", "rap", "french pop"))
# Use $ to navigate data frame columns
our_group$first_names  # Returns all entries in first_name column
our_group$first_names[2] # Returns second entry in first_name column
our_group[4, 4] # Returns entry in the 4th row and 4th column
# }}}

## {{{ WORKSHEET 3: Functions
# Function format: function(object)
z <- c(7, 8, 9)
sum(z) # the function is "sum" the object is "z"
mean(z) # returns the mean of the object "z"
sd(z) # returns the standard deviation of the object

#function inside of a function: fx2(fx1(object))
# The output of fx1 is the object of fx2
diff(c(mean(z), sd(z))) #returns the diff of the mean and standard deviation
# }}}

## {{{ WORKSHEET 4: Importing & Exporting Data
# Example file pathway: "/User/your_username/Downloads/"
# Loading Data
setwd("/User/your_username/Downloads/") # sets working directory (folder)
getwd() # gets working directory
your_data <- read.csv("file_name.txt")

# Exporting Data
a <- seq(1, 71, 3) # goes from 1 to 71 in increments of 3. So 1,4,7,10... to 71
write(a, file = "our_sequence.txt") #Exports "a" as a file
# }}}

## {{{ WORKSHEET 5: For Loops
# The print() function below runs 3 times.
# Once when i = 1, again when i = 2, and again when i = 3
# Each time it runs, it will run the same function
# The function we want repeated goes between the curly braces.
for (i in 1:3) {
    print("hello world")
}

# Return different outputs
for (i in 1:3) {
    print(i)
}

# i can be written as anything
for (nu in 1:3) {
    print(nu)
}

# For loops work on strings as well
color <- c("red", "orange", "yellow", "green", "blue")
for (i in color) {
    print(i)
}

# Using for Loops with Data (make sure to run lines 52-54 first)
for(i in 1:4){
    our_group$first_names[i]
}

# Looping multiple functions
for(i in 1:4){
    our_group$first_names[i]
    our_group$zip_codes[i]  - 9000
    print("if each of us had a smaller zip code")
} # }}}

## {{{ WORKSHEET 6: If Statements
# If statements perform certain function only if a condition is met
# Only prints when condition is met
if (1 == 1) {
    print("obviously")
}

# No output
if (1 == 42) {
    print("obviously")
}

# Else statements perform different functions for when the condition is false
if (1 == 42) {
    print("obviously")
} else {
    print("apparently not")
}

# You can also use "else if" statements to string together multiple conditions
if (1 == 42) {
    print("condition 1 is true")
} else if (20 > 30) {
    print("condition 2 is true")
} else if (100 > 12) {
    print("condition 3 is true")
}

# If statements are very useful when used within for loops
for (i in seq_len(our_group)) {
    if (our_group$zip_codes[i] == 95823) {
        print("Vu's hometown")
    }
}

# Lets add a new column to our_group that has the state for each zip code.
our_group$state <- 0

for (i in 1:length(our_group)) {
    if (our_group$zip_codes[i] == 94933) {
        our_group$state[i] <- "California"
    } else if (our_group$zip_codes[i] == 95823) {
        our_group$state[i] <- "California"
        # hint: copying and pasting can come in handy here
    } else if (our_group$zip_codes[i] == 92395) {
        our_group$state[i] <- "California"
    } else if (our_group$zip_codes[i] == 79912) {
        our_group$state[i] <- "Texas"
    }
} # }}}

## {{{ WORKSHEET 7: Plots
# Using ggplot is much more versatile than using the base R plot
# There are too many customization option for ggplot to explain efficiently
# With time & practice, I"m certain you"ll start understanding them :)

# To use ggplot, we have to install and load tidyverse
library(tidyverse) # you can load tidyverse at the beginning of the script also

# Basic information to plot
# We still need to tell ggplot which type of plot to create
ggplot(data = our_group, aes(x = first_names, y = zip_codes))


#Now we can tell ggplot what type of plot we would like to create by addition
ggplot(data = our_group, aes(x = first_names, y = zip_codes)) +
    geom_col() #column (or bar) plot

# Let"s change the "fill" of the plot according to the state column
ggplot(data = our_group, aes(x = first_names, y = zip_codes, fill = state)) +
    geom_col()

# Let"s rename all of the axis titles, and give this plot a title
ggplot(data = our_group, aes(x = first_names, y = zip_codes, fill = state)) +
    geom_col()+
    labs(x = "Names", y = "Zip Codes", title = "Group Residence",
         fill = "Home State")


# Finally, let"s resize all of the axis title to make them larger
ggplot(data = our_group, aes(x = first_names, y = zip_codes, fill = state)) +
    geom_col() +
    labs(x = "Names", y = "Zip Codes", title = "Group Residence",
         fill = "Home State") +
    theme(axis.title.x = element_text(size = 16),
          axis.title.y = element_text(size = 16),
          plot.title = element_text(size = 20, face = "bold"),
          legend.title = element_text(size = 14))

# I could go on to change literally every element of this plot using ggplot
# Use this cheatsheet any time you're stuck
# }}}
