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


