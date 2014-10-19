
pollutantmean <- function(directory, pollutant, id = 1:332) {
  ##setwd("/Users/totomai/Documents/R Programming - Coursera/testfunctions/test-repo")
  ##source("test-repo/pollutantmean.R")

  dirlist<-list.files(path="specdata",pattern=".csv",full.names=TRUE)  ##scans the path and creates a list of the filenames into dirlist
  mem<-lapply(dirlist[id],read.csv)  ##stores the file data into memory as data.frames
  ##  test --mean(mem[id][[1]][[2]],na.rm=TRUE) # output list -- id no. -- sulfate or nitrate (2 or 3)
  
  ## Given 2 fixed inputs corresponding to columns 2 and 3 on the mem (data frame)
  if (pollutant=="sulfate") {pick = 2}
  if (pollutant=="nitrate")  {pick =3}
  
  newdata<-NA ## initial value, will be ignored anyway by the mean function
  for (i in 1:length(id)) { 
              newdata<-rbind(newdata,mem[[i]])  ## compiles all monitor data into just 1
                          }
  write.csv(newdata, "data.csv", row.names=FALSE)  ##bonus: writes the converged data frame into a file data.csv for checking
  return (mean(newdata[[pick]],na.rm=TRUE))
              }