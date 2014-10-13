
pollutantmean <- function(directory, pollutant, id = 1:332) {
  ##setwd("/Users/totomai/Documents/R Programming - Coursera/testfunctions")


  dirlist<-list.files(path="specdata",pattern=".csv",full.names=TRUE)  ##scans the path and creates a list of the filenames into dirlist
  
  ##testing ongoing
  print (dirlist[1:2])  ## --for test, limiting the sample list
  a<-dirlist[1:2]
  lapply(a,read.csv)
  ##read.csv(a)  ## --for test, limiting the sample
  ##datatest <- lapply(dirlist, read.csv)

  
  
  
  ## 'pollutant' is a character vector of length 1 indicating

  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
}