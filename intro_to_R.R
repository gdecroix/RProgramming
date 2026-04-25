# Remember that the # symbol is for "comments"
# R will ignore anything that comes after that symbol
# In what follows, I'll insert a comment before many of the lines
# briefly stating what the line/lines does/do

# At the beginning of each script I like to clear the global environment
# using this line of code. It removes all items
# Remember ls() lists all items in the global environment
remove(list=ls())

# This is traditional when you're starting a new programming language
# Since we want R to treat this as a phrase and not the name of a variable
# we put quotes around it
print("Hello world!")

# This tells you what the "working directory" is (get working directory)
# The working directory is the folder on your computer where R will look
# for reading and writing data
getwd()

# Perhaps even more important than knowing your working directory is knowing
# how to set it to what you want. You can write code to do this, but it's
# a little easier to go to the lower right of your screen, click on the files
# tab, and navigate (using the tiny dots on the far right if needed) to the
# folder on your computer that you want to use as your working directory
# for this R session. Then click on the little gear icon in that window,
# and use the dropdown menu to choose "Set as Working Directory"
# After doing this, if you look down in the console (lower left), you'll
# see the code that R used for setting the working directory.
# Instead of using the method described above, you could have just typed
# out this code.

# Assigns the value of 2 to the variable x
# We'll use "<-" to assign the value on the right to the thing on the left
x<-2

# We can print out the value of x in the console with this command
print(x)

# Remember that R is case sensitive. This next line of code doesn't
# work because it's a capital X
print(X)

# If we run the next line, we'll see that the global environment contains
# just the variable x we just created
ls()

# This creates a numerical vector with the values listed
# The c() function stands for "concatenate" - to put together
y<-c(1,3,5,7,9)

# The following multiplies every element of y by 2 and stores it in z
# The line after prints out the value of z in the console
# (You can omit the "print" statement and just type the variable name)
z<-2*y
z

# Both z and y are vectors. What would we get if we divided one by the other?
# R does operations one component at a time
# It takes the first element of z and divides by the first element of y
# It repeats that for the second through fifth elements
# The answer to each division is 2, so it yields a vector of 2's
w<-z/y

# Sometimes we need to install additional packages
# that other people have developed to extend the
# capabilities of R
# First we need to install the package
install.packages("readxl")

# Then we need to "load" it to make it active
library(readxl)

# NOTE: Once you've installed a package, you don't need to do it again.
# But if you close R and reopen it, you will need to rerun the library()
# function to re-load any packages you want to use.

# The following line reads the Excel file into R
# and puts it in a data frame called "pets"
pets<-read_excel("pet data.xlsx")

# Insert Group A code here
dim(pets)       # Shows the number of rows and columns in the data frame
nrow(pets)      # Shows the number of rows in the data frame
ncol(pets)      # Shows the number of columns in the data frame
summary(pets)   # Provides some summary information about the data frame
str(pets)       # Stands for "structure" - shows other info about the data frame
names(pets)     # Lists the names of teh columns of the data frame
head(pets)      # Prints out the first 6 rows (default) of the data frame
head(pets,2)    # By adding the number 2, only prints the first 2 rows
tail(pets)      # Prints out the last 6 rows (default) of the data frame
tail(pets,3)    # By adding the number 3, only prints the last 3 rows


# Most of the remaining lines of code below are directly copied from the class 5
# supplemental R script. I've pasted it here with 
# the comments that were in that supplemental script.

# Group B - lines of code to insert

# To refer to only specific rows and/or columns of the data frame
# we use this generic format
#
#    dataframe[rows,columns]
#
# For example:  The following yields row 8, column 2
#
pets[8,2]

# We can also refer to more than one row or column at a time
# For example:  The following grabs rows 1-4 and columns 2-3

pets[1:4,2:3]

# If we just want a subset of the rows but ALL columns, we leave columns blank

pets[1:4, ]

# Similar if we want all rows but just some columns

# If we want non-consecutive rows (or columns) we can create a vector of
# the rows (columns) we want and use that, e.g.:

pets[c(1,3,4,9), ]

# If we just want a single column, we can use the name of the column like this:

pets$animal

# QUICK ASIDE:
# Looking back to the str() function - if you run str(pets), you'll see that
# "owner", "animal", and "name" are character (chr) variables. That is, they're text.
# If you want to explicitly tell R that these should represent different
# categories, you can convert any of them to a "factor" type variable.
# The following lines of code demonstrate the original structure with "owner"
# as a "chr" type, then convert it to a factor type, then runs str(pets) again
# to show that the change was made.
str(pets)
pets$owner <- as.factor(pets$owner)
str(pets)


# Try these three lines of code:
dim(pets$animal)
nrow(pets$animal)
length(pets$animal)
# What happened?
# The functions dim() and nrow() only work on data frames (which typically
# have both rows and columns). A single column of a data frame is actually
# a vector - to find out how many elements it has, you need to use length().


# A powerful tool related to subsetting is the ability to use logical conditions
# where we've been writing "row numbers" and "column numbers"
# In other words:
#
# Before we did this:  dataframe[rows, columns]
#   
# Now we'll do this (exactly the same idea, but richer):
#
#   dataframe[logical condition defining rows, logical condition defining columns]
#
# Try this:

dogset<-pets[pets$animal=="dog", ]

# What did it do? Break it down piece by piece.

# Don't forget to use the "double equal" when testing if something is true
# Other symbols include:
#
#    !=   Not equal
#    >
#    >=
#    <
#    <=
#    |    Or
#    &    And


# Finally, after creating this dogset data frame, we can save it by 
# writing it to your computer (in the current working directory) as a CSV file.
write.csv(dogset,"set of just dogs.csv",row.names=F)

# Adding an arbitrary edit
