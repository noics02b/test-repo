
pollutantmean <- function(directory, pollutant, id = 1:332) {
  ##setwd("/Users/totomai/Documents/R Programming - Coursera/testfunctions/test-repo")
  ##source("test-repo/pollutantmean.R")

  dirlist<-list.files(path="specdata",pattern=".csv",full.names=TRUE)  ##scans the path and creates a list of the filenames into dirlist
  
  
  ##testing ongoing
  ##print (c("Monitoring these files:",dirlist[id]))  ## --test--print out monitor files read
  mem<-lapply(dirlist[id],read.csv)  #stores the file data into memory as data.frames
  ## need to combine mem[id] to 1 matrix
  ##print(str(mem[id]))
  ##str(mem[id][[2]])
  ## mem[id][[3]]
  ##  test --mean(mem[id][[1]][[2]],na.rm=TRUE) # output list -- id no. -- sulfate or nitrate (2 or 3)
  
  
  if (pollutant=="sulfate") {pick = 2}
  if (pollutant=="nitrate")  {pick =3}
  mem[id]
  ##a<-rbind(mem[[1]],mem[[2]])
  
  newdata<-NA
  for (i in length(id)) {##print (pollutant)
               newdata<-rbind(newdata,mem[[i]])                }
  ##return (newdata)
  print(mean(newdata[[pick]],na.rm=TRUE))
  
  
  ##a<- pollutantmean("specdata","sulfate",1:3)
}