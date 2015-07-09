#Binding csv files 7/28/2014
#This file opens csv files in a directory and binds 
#them into one file.




All.files<-list.files() #Reads all the files from the working directory. For ease of use change the working directory to where your files are.

SummaryB155<-read.csv("B155 Summary.csv")   #Creates a summary csv file where the rest of the files will be binded to.
for (i in 3:58){
  print(All.files[i])       
  file<-read.csv(All.files[i],header=TRUE)
  filedim<-dim(file)
  file<-file[2:filedim[1],]
  SummaryB155<-rbind(SummaryB155,file)  
}

write.csv(SummaryB155, file = "SummaryB155Test.csv")

