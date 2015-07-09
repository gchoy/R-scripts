#This script renames and dupliates files

filenames<- paste("file", 1:100, sep="") #Generates filenames separated by a blank space

All.files<-list.files()

for (i in 1:100){
  print(All.files[i])
  file<-read.csv(All.files[i],header=TRUE)
  write.csv(All.files[i], file = paste(filenames[i], ".csv", sep=""))    
  
}
