###THE ABSOLUTE BASICS OF R


## {{{ THE PARENTHESIS: The essential component of R coding
#fx's and objects
fx()
fx(object)
fx(object, parameter1, parameter2, parameter3)

#fx's and files
fx("file")
fx("file", parameters1)
fx("~/Documents/amphibian_meta_project/data_repository.xlsx")

#fx's and fx's
fx(fx())
fx7(fx6(fx5(fx4(fx3(fx2(fx1)))))) # }}}

## {{{ THE VARIABLE: the gateway to building complexity
x <- 7
output1 <- fx1(object)
output2 <- fx2(output1)
fx3(output2)

#Our Data
fish_data <- read.csv("~/Desktop/two_groupers.csv") #loads the spreadsheet
library(seqinr) #this package helps load genetic data
fish_genes <- read.fasta("~/Desktop/fish_genes.txt", forceDNAtolower = FALSE)
# }}}

## {{{ THE OPERATOR: the bridge between logic and computation
transect_1 <- c(2, 4, 1, 6, 8, 2, 7, 0, 1, 23, 4, 6, 3, 5, 2, 10)
transect_2 <- c(1, 2, 5, 7, 9, 3, 6, 2, 12, 12, 5, 9, 0, 1, 12, 10)

#classical arithmatic operators +,-,/,* <, >, <=, >=, ==
transect_1 / transect_2 + transect_2

#boolean operators: TRUE or FALSE
transect_1 > transect_2

#logical operators: | = or, & = and, ! = not
which(transect_1 > 0 & transect_1 < 23) #removes outliers
which(transect_1 == 10 & transect_2 == 10) #prints where the fish are the same
which(transect_1 != 0 & transect_2 != 0) #eliminates 0's from the position
# }}}

## {{{ THE INDICES: the essential of navigation
dataset[row, column]
fish_data[1, 1] # prints a specific point
fish_data[2, 1] # specific point
fish_data[1, 4] # specific point
fish_data[1, ] # prints the row information
fish_data[, 2] # column information
fish_data[c(3:5), ] #prints the 3rd, 4th, and 5th rows
fish_data[, c(2:4)] #prints the 2nd, 3rd, and 4th column
fish_data$region #prints us the region column
# }}}

## {{{ The Curly Braces: Define an action or a function
  {
  2+2 # DEFINED ACTION
}

# The For Loop: the central theme of programming
for (i in 1:5) {
  print("hi") #prints hi as many times as the vector says
  print("bye")
}

for (i in -2:4) {
  print("hi") #prints hi counting from -2 to 4
}

for (i in seq_len(fish_data)) {
  print("hi") #prints hi for the number of rows in our dataset
}

for (i in 1:3) {
  print(i) #prints the number of the vector
}

for (i in 1:3) {
  print(paste("row", i, sep = ""))
} # }}}

## {{{ IF STATEMENTS: the other central theme of coding
if (3 > 2) {
  print("we know") #only prints the statement if the condition is met
}

# Else statements run different actions if the condition is not met
if (3 > 4) {
  print("we know")
} else  {
  print("that's new") #the function prints this action
}

#A New Function
function(){
  x <-7
} # }}}

## {{{ APPLICATIONS
# Fix the Region column
for (i in seq_len(fish_data)) {
  if (startsWith(fish_data[i, 1], "g") == TRUE) {
    fish_data$region[i] <- "Australia"
  } else  {
    fish_data$region[i] <- "Bahamas"
  }
}

# Determine Differences
summary(aov(weight ~ region, data = fish_data)) #prints us a p-value of 0.3
summary(aov(weight ~ species, data = fish_data)) #prints us the same p-value!


for (i in 1:3) {
  print(i)
} # }}}
