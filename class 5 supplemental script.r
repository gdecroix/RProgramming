# Group A - lines of code to insert
dim(pets)
nrow(pets)
ncol(pets)
summary(pets)
str(pets)
names(pets)
head(pets)
head(pets,2)
tail(pets)
tail(pets,3)


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

# Try these three lines of code:
dim(pets$animal)
nrow(pets$animal)
length(pets$animal)
# What happened?

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

