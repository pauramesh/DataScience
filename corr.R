corr <- function(directory, threshold = 0){
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the 
  ## number of completely observed observations (on all
  ## variables) requi?red to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  ## NOTE: Do not round the result!
  correlations <- numeric(0)
  
  complete_cases <- complete(directory)
  complete_cases <- complete_cases[complete_cases$nobs>=threshold, ]
  #print(complete_cases["id"])
  #print(unlist(complete_cases["id"]))
  #print(complete_cases$id)
  
  if(nrow(complete_cases)>0){
    for(monitor in complete_cases$id){
      path <- paste(getwd(), "/", directory, "/", sprintf("%03d", monitor), ".csv", sep = "")
      # print(path)
      data <- read.csv(path)
      #print(monitor_data)
      cor_data1 <- data[(!is.na(data$sulfate)), ]
      cor_data2 <- cor_data1[(!is.na(cor_data1$nitrate)), ]
      data_sulfate <- cor_data2["sulfate"]
      data_nitrate <- cor_data2["nitrate"]
      correlations <- c(correlations, cor(data_sulfate, data_nitrate))
    }
  }
  correlations
}
cr <- corr("specdata", 150)

summary(cr)

head(cr)

summary(cr)

cr <- corr("specdata", 5000)

summary(cr)

length(cr)

cr <- corr("specdata")
summary(cr)
length(cr)



cr <- corr("specdata")                
cr <- sort(cr)   
RNGversion("3.5.1")
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)



cr <- corr("specdata", 129)                
cr <- sort(cr)                
n <- length(cr)    
RNGversion("3.5.1")
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)


cr <- corr("specdata", 2000)                
n <- length(cr)                
cr <- corr("specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))
