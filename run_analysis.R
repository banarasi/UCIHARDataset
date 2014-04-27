##Load required libraries
#install.packages("reshape2")
#library(reshape2)
require(reshape2)

## Source File - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
## Download and unzip the file

## Read the data
#Unix/Mac
readData<- function() { 
  activity_labels<-read.table("activity_labels.txt",col.names=c("activityId", "activityName"))
  features<-read.table("features.txt",stringsAsFactors=FALSE,col.names=c("featureID", "featureName"))
  y_train<-read.table("./train/y_train.txt",col.names=c("activityId"))
  X_train<-read.table("./train/X_train.txt",col.names=features$featureName)
  subject_train<-read.table("./train/subject_train.txt",col.names=c("subject"))
  subject_test<-read.table("./test/subject_test.txt",col.names=c("subject"))
  X_test<-read.table("./test/X_test.txt",col.names=features$featureName)
  y_test<-read.table("./test/y_test.txt",col.names=c("activityId"))


  #Merges the training and the test sets to create one data set.
  
  data = rbind(X_train,X_test)
  
  
  #Extracts only the measurements on the mean and standard deviation for each measurement. 
  
#  colnames(X)<-c(features$V2)
  data<-data[,grep("mean\\(\\)|std\\(\\)",features$featureName)]
  
  #Uses descriptive activity names to name the activities in the data set
  #Appropriately labels the data set with descriptive activity names.
  
  y = rbind(y_train,y_test)
  y<-merge(y,activity_labels,all=TRUE)
  data$activityName<-y$activityName
  data$subject <- rbind(subject_train,subject_test)$subject
  data
}

  
#Creates a second, independent tidy data set with the average of each variable 
#for each activity and each subject. 
data<-readData()
melted_data<-melt(data,id.vars=c("subject","activityName"))
finalTidyData<-dcast(melted_data,subject+activityName~variable,mean)
write.table(finalTidyData,file="finalTidyData.txt")

