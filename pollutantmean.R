
pollutantmean <- function(directory, pollutant, id = 1:332) {
  ##setwd("/Users/totomai/Documents/R Programming - Coursera/testfunctions")
  ##source("test-repo/pollutantmean.R")

  dirlist<-list.files(path="specdata",pattern=".csv",full.names=TRUE)  ##scans the path and creates a list of the filenames into dirlist
  
  
  ##testing ongoing
  print (c("Monitoring these files:",dirlist[id]))  ## --test--print out monitor files read
  mem<-lapply(dirlist[id],read.csv)  #stores the file data into memory as data.frames
  ## need to combine mem[id] to 1 matrix
  ##print(str(mem[id]))
  str(mem[id][[1]])
  ##  test --mean(mem[id][[1]][[2]],na.rm=TRUE) # output list -- id no. -- sulfate or nitrate (2 or 3)
  
  
  
  ##a<- pollutantmean("specdata","sulfate",1:3)

  
  
  
  ## 'pollutant' is a character vector of length 1 indicating

  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
}