##Load required libraries
#install.packages("reshape2")
#library(reshape2)
require(reshape2)

## Source File - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
## Download and unzip the file

## Read the data
#Unix/Mac
setwd("/banarasi/rprog")
activity_labels<-read.table("./UCIHARDataset/activity_labels.txt")
features<-read.table("./UCIHARDataset/features.txt",stringsAsFactors=FALSE)
y_train<-read.table("./UCIHARDataset/train/y_train.txt")
X_train<-read.table("./UCIHARDataset/train/X_train.txt")
subject_train<-read.table("./UCIHARDataset/train/subject_train.txt")
subject_test<-read.table("./UCIHARDataset/test/subject_test.txt")
X_test<-read.table("./UCIHARDataset/test/X_test.txt")
y_test<-read.table("./UCIHARDataset/test/y_test.txt")

#Merges the training and the test sets to create one data set.

X = rbind(X_train,X_test)


#Extracts only the measurements on the mean and standard deviation for each measurement. 

colnames(X)<-c(features$V2)
X<-X[,grep("mean\\(\\)|std\\(\\)",features$V2)]

#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive activity names.

y = rbind(y_train,y_test)
y<-merge(y,activity_labels,by.x="V1",by.y="V1",all=TRUE)
X$activity<-y$V2
X$subject <- rbind(subject_train,subject_test)$V1

#Creates a second, independent tidy data set with the average of each variable 
#for each activity and each subject. 

n<-melt(X,id.vars=c("subject","activity"))
finalTidyData<-dcast(n,subject+activity~variable,mean)
write.table(finalTidyData,file="K:\\coursera\\UCIHARDataset\\finalTidyData.txt")

