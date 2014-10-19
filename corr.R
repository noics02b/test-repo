corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  
  
  ## coding starts here!
  ##setwd("/Users/totomai/Documents/R Programming - Coursera/testfunctions/test-repo")
  dirlist<-list.files(path="specdata",pattern=".csv",full.names=TRUE)  ##scans the path and creates a list of the filenames into dirlist
  mem<-lapply(dirlist[id],read.csv)  ##stores the file data into memory as data.frames
  
  newdata<-NA ## initial value, will be ignored anyway by the mean function
  for (i in 1:length(id)) { 
    #print (i, str(mem[[i]]))
    newdata<-rbind(newdata,mem[[i]])  ## compiles all monitor data into just 1
  }
  noNA<-na.omit(newdata)  ## discards all NA data
}