##Study design
### Data Source
  Data collected from the accelerometers from the Samsung Galaxy S smartphone. 
  The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
  Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
  wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 
  we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
  The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly 
  partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the 
  test data. 

  Data can be downloaded from the below link

  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
 
### Transformations 
  Training and test data merged to create one dataset.
  Extracted only the measurements on the mean and standard deviation for each measurement.
  Appropriately labeled the data set with descriptive activity names

 
### The Tidy dataset 
  Final Tidy dataset generated with the average of each variable for each activity and each subject. 
  The Tidy dataset saved as following file
 
* finalTidyData.txt


## Code book
  Tidy dataset has 35 observation with 68 variables.
* subject - catageorical non ordinal variable 
* activityName - catageorical non ordinal variable
  
all other variables are Numeric Continous variables

List of features

* 1 subject
* 2	activityName
* 3	tBodyAccMeanX
* 4	tBodyAccMeanY
* 5	tBodyAccMeanZ
* 6	tBodyAccStdX
* 7	tBodyAccStdY
* 8	tBodyAccStdZ
* 9	tGravityAccMeanX
* 10	tGravityAccMeanY
* 11	tGravityAccMeanZ
* 12	tGravityAccStdX
* 13	tGravityAccStdY
* 14	tGravityAccStdZ
* 15	tBodyAccJerkMeanX
* 16	tBodyAccJerkMeanY
* 17	tBodyAccJerkMeanZ
* 18	tBodyAccJerkStdX
* 19	tBodyAccJerkStdY
* 20	tBodyAccJerkStdZ
* 21	tBodyGyroMeanX
* 22	tBodyGyroMeanY
* 23	tBodyGyroMeanZ
* 24	tBodyGyroStdX
* 25	tBodyGyroStdY
* 26	tBodyGyroStdZ
* 27	tBodyGyroJerkMeanX
* 28	tBodyGyroJerkMeanY
* 29	tBodyGyroJerkMeanZ
* 30	tBodyGyroJerkStdX
* 31	tBodyGyroJerkStdY
* 32	tBodyGyroJerkStdZ
* 33	tBodyAccMagMean
* 34	tBodyAccMagStd
* 35	tGravityAccMagMean
* 36	tGravityAccMagStd
* 37	tBodyAccJerkMagMean
* 38	tBodyAccJerkMagStd
* 39	tBodyGyroMagMean
* 40	tBodyGyroMagStd
* 41	tBodyGyroJerkMagMean
* 42	tBodyGyroJerkMagStd
* 43	fBodyAccMeanX
* 44	fBodyAccMeanY
* 45	fBodyAccMeanZ
* 46	fBodyAccStdX
* 47	fBodyAccStdY
* 48	fBodyAccStdZ
* 49	fBodyAccJerkMeanX
* 50	fBodyAccJerkMeanY
* 51	fBodyAccJerkMeanZ
* 52	fBodyAccJerkStdX
* 53	fBodyAccJerkStdY
* 54	fBodyAccJerkStdZ
* 55	fBodyGyroMeanX
* 56	fBodyGyroMeanY
* 57	fBodyGyroMeanZ
* 58	fBodyGyroStdX
* 59	fBodyGyroStdY
* 60	fBodyGyroStdZ
* 61	fBodyAccMagMean
* 62	fBodyAccMagStd
* 63	fBodyBodyAccJerkMagMean
* 64	fBodyBodyAccJerkMagStd
* 65	fBodyBodyGyroMagMean
* 66	fBodyBodyGyroMagStd
* 67	fBodyBodyGyroJerkMagMean
* 68	fBodyBodyGyroJerkMagStd

## References

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

