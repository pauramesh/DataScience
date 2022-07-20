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
