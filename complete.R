complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  
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
  countvalid<-tapply(noNA[[1]],noNA[[4]],length)  ## counts the no. of obs excluding NA
  output<-data.frame("id"=id,nobs=countvalid)
  return(output)
  
}