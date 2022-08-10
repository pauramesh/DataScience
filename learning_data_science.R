# (CTRL + Shift + C)

# Installing packages from Github
install.packages("devtools")
library(devtools)
install_github("author/package")

# Installing packages from CRAN

# Some useful links about packages 
# http://faculty.washington.edu/kenrice/rintro/sess08.pdf
# https://www.datacamp.com/tutorial/r-packages-guide


# install.packages()- gives list of packages available for installation 
install.packages("foreign")
# Loading packages 
library(foreign)
# to see packages installed 
library()

# To see packages that are outdated 
old.packages()

# To update all packages
update.packages()

# Vignettes: A package vignette gives an overview of the package and sometimes includes examples
browseVignettes()
browseVignettes("ggplot2")

# Unlaoding packages 
detach()
detach("package:ggplot2",  unload=TRUE)

# Info about your R session 
sessionInfo()

# search()- without any argument can be used for information on which packages are currently loaded 

old.packages()


x<- 1:20
x
# Matrics

m<- matrix (1:6, nrow=2, ncol=3)
m

# Matrices can be created directly from vectors by adding dimension attribute
m<- 1:10
m

dim(m)<- c(2,5)
m

# c-binding and r-binding
x<-1:3
y<- 10:12
cbind(x,y)
rbind(x,y)


# Factors 
# factors are treated specially by modeling functions lm() and glm()
x<- factor(c("yes", "yes", "no", "yes", "no"), levels= c("yes", "no"))
x
table(x)

unclass(x)
class(x)
x 

# Missing values 
# NaN value is also NA but the converse is not true 

# Names 
x<- 1:3
names(x)<- c("foo", "bar", "norf")
x
names(x)


# Reading data 
# read.table, read.csv for reading tabular data
# readLines, for reading lines of a text file
# source, for reading in R code files (inverse of dump)
# dget, for reading in R code files(inverse of dput)
# load, for reading in saved workspaces
# unserialize, for reading single R objects in binary form


# Writing data
# write.table
# writeLines
# dump
# dput
# save
# serialize

# Removing missing values 
x<- c(1, 2, NA, 4, NA, 5)
bad<- is.na(x)
x[!bad]
mean(x[!bad])
xnew<- x[!bad]
xnew

x<- c(1, 2, NA, 4, NA, 5)
y<- c("a", "b", NA, "d", NA, "f")
good<- complete.cases(x,y)
good
x[good]
y[good]

airquality[152:153, ]
good_air<- complete.cases(airquality)
airquality[good_air, ][1:6, ]

# Double equal sign (==) to test for equality

# Matrix multiplication 
# x %*% y

x<- 4
class(x)
x <- c(4, TRUE)
class(x)

x <- c(1,3, 5)
y <- c(3, 2, 10)
m<- cbind(x,y)
m

x <- list(2, "a", "b", TRUE)
class(x[[1]])

x <- 1:4 
y <- 2
x + y


x <- c(17, 14, 4, 5, 13, 12, 10)
x[x > 10] <- 4
x[x < 10] <- 4

x[x == 4] > 10
x[x >= 11] <- 4
x[x > 10] == 4
x

hw1_data <- read_csv("hw1_data.csv")

head(hw1_data, n=3)
tail(hw1_data, n=2)
hw1_data$Ozone [47]
x<- hw1_data$Ozone
bad<- is.na(x)
mean(x[!bad])

table(bad)
x<- hw1_data$Ozone
bad<- is.na(x)
mean(!bady)

x<- (hw1_data$Solar.R[hw1_data$Ozone>31 & hw1_data$Temp>90])
bad<- is.na(x)
mean (x [!bad])

x<- (hw1_data$Temp[hw1_data$Month==6])
bad<- is.na(x)
mean (x [!bad])

x<- (hw1_data$Ozone[hw1_data$Month==5])
range(x, na.rm = T)


# Practical R Exercises in swirl Part 1
install.packages("swirl")
packageVersion("swirl")
library(swirl)
swirl()
Ramesh
install_from_swirl("R Programming")
1
exit


# temporarily, leave the lesson by typing play() and then return by typing nxt().

#Functions

add2<- function(x, y) {
  x + y
}

add2(2,4)

above10<- function(x) {
  use< x>10
  x[use]
}

above<- function(x, n=10) {
  use<- x>n
  x[use]
}
x<-1:20
above(x)

columnmean<- function(y, removeNA=TRUE) {
  nc<- ncol(y)
  means<- numeric(nc)
  for(i in 1:nc) {
    means[i] <- mean(y[, i], na.rm=removeNA)
  }
  means
}

columnmean(airquality)

airquality

# Examples
mydata<- rnorm(100)
sd(mydata)
sd(x = mydata)
sd(x = mydata, na.rm = FALSE)
sd(na.rm = FALSE, x = mydata)
sd(na.rm = FALSE, mydata)
sd(mydata, na.rm = FALSE)


f<- function (a, b) {
  print (a)
  print(b)
}

f(34)


y<- 10
f<- function(x) {
  y<- 2
  y^2 + g(x)
}
g<- function(x) {
  x*y
}
f(3)


g<- function(x) {
  a<- 3
  x+a+y
}
g(2)
y<-3
g(2)


mean(c(2,4,5))
boring_function("My first function!")

args(my_mean)

evaluate <- function(func, dat){
  func(dat)
  # Write your code here!
  # Remember: the last expression evaluated will be returned! 
}
# First element of the vector
evaluate(function(x){x[1]}, c(8, 4, 0))

# Last element of the vector 
evaluate(function(x){x[length(x)]}, c(8, 4, 0))

cube <- function(x, n) {
  x^3
}
cube(3)


x <- 1:10
x
x > 5
  
  
  {
  x <- 0
  }

f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}
z <- 10
f(3)


x <- 5
y <- if(x < 3) {
  NA
} else {
  10
}
y

h <- function(x, y = NULL, d = 3L) {
  z <- cbind(x, d)
  if(!is.null(y))
    z <- z + y
  else
    z <- z + f
  g <- x + y / z
  if(d == 3L)
    return(g)
  g <- g + 10
  g
}


f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}
z <- 10
f(3)
getwd()
evaluate <- function(func, dat){
  func(dat)
}

evaluate(sum, c(2, 4, 6))
evaluate(median, c(7, 40, 9))
evaluate(floor, 11.1)

floor(11.1)
sum(c(2, 4, 6))
x<- c(2, 4, 6)
x(i)


mad_libs <- function(...){
  args<- list(...)
  place<- args[["place"]]
  adjective<- args[["adjective"]]
  noun<- args[["noun"]]
  # Do your argument unpacking here!
  
  # Don't modify any code below this comment.
  # Notice the variables you'll need to create in order for the code below to
  # be functional!
  paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")
}

mad_libs("Gainesville", "angry", "library")

"%p%" <- function(left, right){ # Remember to add arguments!
  paste(left, right)
}
"Good" %p% "job!"


# List all files in working directory
list.files() 
dir()
# View argument of a function
args()
args(list.files)
# Create a directory within the working directry 
dir.create("testdir")
# Create a new test file 
file.create("mytest.R")
# Rename file 
file.rename("x", "y")
# Copy file
file.copy("mytest2.R", "mytest3.R")
# Provide relative path to a file named mytest3.R
file.path("mytest3.R")
# Create a directory in the current working directory: 
dir.create(file.path("existing dir", "new dir"), recursive = TRUE)

# Reading multiple csv file
install.packages("tidyverse")
install.packages("fs")
library(tidyverse)
library(fs)

# Method 1: For LOOP.......

file_paths<- fs::dir_ls(directory)
file_paths[[2]]
specdata<- list()
  for (i in seq_along(file_paths)) {
    
    specdata[[i]]<- read.csv(
      file = file_paths[[i]]
    )
  }
  
  specdata<- set_names(specdata, file_paths)
  
# Method 2: PURR MAP
specdata1<- file_paths %>%
    map(function (path) {
      read.csv(path)
    })
# https://stackoverflow.com/questions/30823598/calculating-a-mean-from-data-held-in-multiple-files



# Looping on the command line 
# lapply: loop over a list and evaluate a function on each element: always returns a list
# sapply: same as lapply byt try to simplify the result
# apply: apply a function over the margin of an array
# ttapply: apply a function over subsets of a vector
# mapply: multivariate version of lapply 
# split: splits object into pieces 


# runif: generates uniform random numbers (random deviates)
  
col/row sums and means 
rowSums= apply(x, 1, sum)
rowMeans= apply(x, 1, mean)
colSums= apply(z, 2, sum)
colMeans= apply(x, 2, mean)
a<- array(rnorm(2 * 2 * 10), c(2, 2, 10))
apply(a, c(1, 2), mean)
rowMeans(a, dims=2)
str(mapply) #see structure of mapply
args(mapply)

?str

# list(rep 1, 4), rep (2, 3), rep(3, 2), rep(4, 1)): repeat 1 four times, 2 three times, and so on
#  is easy to do with mapply function
mapply(rep, 1:4, 4:1)
# vectorizing a function: ________This part doesn't seem to work like the instructor said 
# noise<- function(n, mean, sd) {
#   rnorm(n, mean, sd)
# }
# noise(5, 1, 2)
# noise(1.5, 1.5, 2)
# 
# mapply(noise, 1.5, 1.5, 2)

str(tapply)



# Create a script file in R
# file.create("test.R")
# Open the file 
# file.edit('test.R')
# copy file to working directory



library(datasets)
head(airquality)
s<- split(airquality, airquality$Month)
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")], na.rm= TRUE))


set.seed(1)
rpois(5, 2)



set.seed(10)
x <- rep(0:1, each = 5)
e <- rnorm(10, 0, 20)
y <- 0.5 + 2 * x + e


library(datasets)
Rprof()
fit <- lm(y ~ x1 + x2)
Rprof(NULL)
sumamry(Rproof())


Rprof(tmp <- tempfile())
example(glm)
Rprof()
summaryRprof(tmp)
unlink(tmp)


library(datasets)
data(iris)
# what is the mean of 'Sepal.Length' for the species virginica?
# 1
x<- (iris$Sepal.Length[iris$Species == "virginica"])
bad<- is.na(x)
mean (x [!bad])

# 2
x<- mean((iris$Sepal.Length[iris$Species == "virginica"]))
round(x, 0)

# 3
round(mean((iris$Sepal.Length[iris$Species == "virginica"])), 0)

# Calculate means by species
# 1
tapply(iris$Sepal.Length, iris$Species, mean)
# 2
with(iris, tapply(Sepal.Length, Species, mean))

# what R code returns a vector of the means of the variables 
# 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?
apply(iris[, 1:4], 2, mean)


library(datasets)
data(mtcars)
# How can one calculate the average miles per gallon (mpg) by number of 
# cylinders in the car (cyl)? Select all that apply.
# all of the following 
tapply(mtcars$mpg, mtcars$cyl, mean) # mean variable comes first, and then grouping variable, and function)
with(mtcars, tapply(mpg, cyl, mean))
sapply(split(mtcars$mpg, mtcars$cyl), mean)



# Calculates column means but display in different ways
apply(mtcars, 2, mean)
lapply(mtcars, mean)

# what is the absolute difference between the average horsepower 
# of 4-cylinder cars and the average horsepower of 8-cylinder cars?

x<- mean(mtcars$hp[mtcars$cyl == "8"])
y<- mean(mtcars$hp[mtcars$cyl == "4"])
round(x-y)

debug(ls)
ls()

# Week 3, swirl practice 
library(swirl)
swirl()
Ramesh
# lapply and sapply
# dataset= flags 
head(flags)
# check the dimensions (number of cases and variables respectively)
dim(flags)
cls_list<- lapply(flags, class)
cls_list
class(cls_list)
# simplify cls_list to a character vector
as.character(cls_list)
cls_vect<- sapply(flags, class)
class(cls_vect)
# number of countries (in our dataset) with the color orange on their flag
sum(flags$orange)
# repeat this operation for each of the colors recorded in the dataset
flag_colors<- flags[, 11:17]
head(flag_colors)
lapply(flag_colors, sum)


# see a list of the variables in workspace
ls()
rm(list=ls())

# Programming in R week 3 peer assignment

ls("progR_week3/")


file.edit("cachematrix.R")


a<- 1:20

a

makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}

cachemean <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}
cachemean(x)


## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  m<- NULL
  set<- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
  
  ## Return a matrix that is the inverse of 'x'
}


# Testing the function 
a<-- matrix(1:4, nrow=2, byrow=TRUE)
# Return innverse of the matrix without using the function
solve(a)

a1<- makeCacheMatrix(a)
# Return inverse from computation (using the function)
cacheSolve(a1)

# Return inverse from cache
cacheSolve(a1)
