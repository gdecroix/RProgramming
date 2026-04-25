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
