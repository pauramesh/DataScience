rm(list = ls())
# setwd("C:/Users/Ramesh/OneDrive/R_STAT/Coursera/DataScience")

setwd("C:/Users/ramesh.paudyal/OneDrive/R_STAT/Coursera/DataScience")

pollutantmean <- function(directory, pollutant, id = 1:332) {
  means <- c()
  for(monitor in id){
  path <- paste(getwd(), "/", directory, "/", sprintf("%03d", monitor), ".csv", sep = "")
  files <- read.csv(path)
  data <- files[pollutant]
  means <- c(means, data[!is.na(data)])
}

mean(means)
}

pollutantmean("specdata", "sulfate", 1:10)

pollutantmean("specdata", "nitrate", 70:72)

pollutantmean("specdata", "nitrate", 23)

pollutantmean("specdata", "sulfate", 34)

pollutantmean("specdata", "nitrate")
