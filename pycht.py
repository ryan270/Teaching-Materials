## PYTHON WORKSHEET CHEAT SHEAT


#-------------------------------------#
##WORKSHEET 2: Data Types

# Numbers
12
# Numbers retain numerical properties, so you can perform math on them
12+15
# There are three types of number in python
# Integers
12
# Float
0.34
# Complex (we'll mostly work with the first two)
1+2j

# Conditionals / Boolean
# You can make numerical expressions that can be TRUE or FALSE
3 < 4
1 == 1
4 >= 10

# Strings
# Always surrounded by quotes
'Hello'
'This is a string'
"seven"
'7'

# String/Number Practices
# Variables: all data can be stored as objects
our_value = 3*8+12
our_color = 'mint'
our_value
our_color

# Check the data type
type(our_value)
type(our_color)

#Convert betwwen Number and string
# Only numbers typed as numbers can go back and forth
int('7')
str(our_value)


#-------------------------#
## DATA STRUCTURES
# Lists: the most common structure in python
# Lists can be made of numbers, strings, or both
our_list = ['birds', 'bees', 'apples', 'oranges']
num_list = [3,11,42,98,12]

# Use square brackets [] to navigate lists & sleect certain elements
our_list[0] # First Element
our_list[1] # Second Element
num_list[-1] # Last Element
our_list[:2]
our_list[:3]
num_list[2:]
num_list[3:]

# We can use 'in' to check if elements are in our list
'birds' in our_list
42 in num_list
'banana' in our_list

# We perform actions on lists using methods 
num_list.append(3) #Add 3 to end of list
num_list.insert(2, 12) #Insert 12 to 2nd position
num_list.pop(3) # Removes element at 3rd position
num_list.count(3) # Returns number of elemnts matching term
num_list.sort() # Sorts list
print("\n".join(our_list)) #Changed the separator
print(" and the ".join(our_list)) # Added custom separator

# Tuples: Useful for related pieces of information
('seq1', 'AATAGTC')

# We can even make a list of tuples
frog_fasta = [('seq1', 'AATAGTC'),
              ('seq2', 'AATACTC'),
              ('seq3', 'AATATTC'),
              ('seq4', 'AATAGTC'),
              ('seq5', 'AATAATC')]
frog_fasta[1]

# Dictionaries: storing pairs of elements (keys & values)
# Like a comprehensive tuple
samples =  {'frog1': ['AATAGTC', 'R. sierrae', 'lowland'],
            'frog2': ['AATAATC', 'R. mucosa', 'highland'],
            'frog3': ['AATAGTC', 'R. sierrae', 'lowland']
            }
