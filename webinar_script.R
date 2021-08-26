###THE ABSOLUTE BASICS OF R###
#mean(c(7,8,9))
mean(c(7,8,9)) #this gives us the average of 8


##The Parenthesis: The essential component of R coding
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
fx7(fx6(fx5(fx4(fx3(fx2(fx1))))))


##The Variable: the gateway to building complexity
x <- 7 #the R way
y = 8 #the Python way

output1 = fx1(object)
output2 = fx2(output1)
fx3(output2)

#Our Data
fish.data <- read.csv("~/Desktop/two_groupers.csv") #loads the spreadsheet
library(seqinr) #this package helps load genetic data
fish.genes = read.fasta("~/Desktop/fish_genes.txt", forceDNAtolower = FALSE) #our two 16S genes


##The Operator: the bridge between logic and computation

transect.1 = c(2,4,1,6,8,2,7,0,1,23,4,6,3,5,2,10)
transect.2 <- c(1,2,5,7,9,3,6,2,12,12,5,9,0,1,12,10)
#classical arithmatic operators +,-,/,* <, >, <=, >=, ==
transect.1 / transect.2 +2-transect.2

#boolean operators: TRUE or FALSE
transect.1 > transect.2

#logical operators: | = or, & = and, ! = not
which(transect.1 > 0 & transect.1 < 23) #removes outliers
which(transect.1 == 10 & transect.2 == 10) #gives us the position where the fish are the same
which(transect.1 != 0 & transect.2 != 0) #eliminates 0's from the position


##The Indices: the essential of navigation
dataset[row,column]
fish.data[1,1] #gives a specific point
fish.data[2,1]#gives a specific point
fish.data[1,4]#gives a specific point
fish.data[1,] #gives the row information
fish.data[,2] #gives the column information
fish.data[c(3:5),] #gives the 3rd, 4th, and 5th rows
fish.data[,c(2:4)] #gives the 2nd, 3rd, and 4th column
fish.data$region #gives us the region column


##The Curly Braces: Define an action or a function
  {
  DEFINED ACTION
}
  {
  x <- 7
  2+2
  fish.data[1,1]
}

#The For Loop: the central theme of coding
for (i in 1:5) {
  print("hi") #prints hi as many times as the vector says
  print("bye")
}

#exploring the vector
for (i in -2:4) {
  print("hi") #prints hi counting from -2 to 4
}

for (i in 1:nrow(fish.data)) {
  print("hi") #prints hi for the number of rows in our dataset
}

#exploring the variable
for (i in 1:3) {
  print(i) #prints the number of the vector
}

for (i in 1:3) {
  print(paste("row", i, sep = "")) #pastes the word row to each of vector elements
}

#If statements: the other central theme of coding
if (3>2) {
  print("we know") #only prints the statement if the condition is met
}

#else statements run different actions if the condition is not met
if (3>4) {
  print("we know")
} else  {
  print("that's new") #the function prints this action
}

#A New Function
function(){
  x <-7
}


##Applications
#Fix the Region column
for (i in 1:nrow(fish.data)) {
  if (startsWith(fish.data[i,1], "g") == TRUE) {
    fish.data$region[i] <- "Australia"
  } else  {
    fish.data$region[i] = "Bahamas"
  }
}

#Determine Differences
summary(aov(weight ~ region, data = fish.data)) #gives us a p-value of 0.3
summary(aov(weight ~ species, data = fish.data)) #gives us the same p-value!


for (i in 1:3) {
  print(i)
}
