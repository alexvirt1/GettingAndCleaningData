*Getting and Cleaning Data Course Project*

There are three files:
- finaldata.txt, this is a text file with tidy data
- run_analysis.R, the script
- columns.txt, list of columns in the file finaldata.txt

**How to run the script**

Put the source file and unpacked data files in the following folder structure:
/
  run_analysis.R
  UCI HAR Dataset/
      test/
        subject_test.txt
        X_test.txt
        y_test
      train/
        subject_test.txt
        X_test.txt
        y_test

Load the script and run with one parameter (folder name) like this:

> library(dplyr)

> setwd("C:/GitHub/GettingAndCleaningData")

> source("run_analysis.R")

> data <- ReadAndProcess("C:/GitHub/GettingAndCleaningData")

"data" will contain tidy data

**Codebook for generated data**
Activity.Name - descriptive name of activity

Subject - subject number

tBodyAcc.mean...X - mean of the value

tBodyAcc.mean...Y - mean of the value


tBodyAcc.mean...Z - mean of the value

tGravityAcc.mean...X - mean of the value

tGravityAcc.mean...Y - mean of the value

tGravityAcc.mean...Z - mean of the value

tBodyAccJerk.mean...X - mean of the value

tBodyAccJerk.mean...Y - mean of the value

tBodyAccJerk.mean...Z - mean of the value

tBodyGyro.mean...X - mean of the value

tBodyGyro.mean...Y - mean of the value

tBodyGyro.mean...Z - mean of the value

tBodyGyroJerk.mean...X - mean of the value

tBodyGyroJerk.mean...Y - mean of the value

tBodyGyroJerk.mean...Z - mean of the value

tBodyAccMag.mean.. - mean of the value

tGravityAccMag.mean.. - mean of the value

tBodyAccJerkMag.mean.. - mean of the value

tBodyGyroMag.mean.. - mean of the value

tBodyGyroJerkMag.mean.. - mean of the value

fBodyAcc.mean...X - mean of the value

fBodyAcc.mean...Y - mean of the value

fBodyAcc.mean...Z - mean of the value

fBodyAcc.meanFreq...X - mean of the value

fBodyAcc.meanFreq...Y - mean of the value

fBodyAcc.meanFreq...Z - mean of the value

fBodyAccJerk.mean...X - mean of the value

fBodyAccJerk.mean...Y - mean of the value

fBodyAccJerk.mean...Z - mean of the value

fBodyAccJerk.meanFreq...X - mean of the value

fBodyAccJerk.meanFreq...Y - mean of the value

fBodyAccJerk.meanFreq...Z - mean of the value

fBodyGyro.mean...X - mean of the value

fBodyGyro.mean...Y - mean of the value

fBodyGyro.mean...Z - mean of the value

fBodyGyro.meanFreq...X - mean of the value

fBodyGyro.meanFreq...Y - mean of the value

fBodyGyro.meanFreq...Z - mean of the value

fBodyAccMag.mean.. - mean of the value

fBodyAccMag.meanFreq.. - mean of the value

fBodyBodyAccJerkMag.mean.. - mean of the value

fBodyBodyAccJerkMag.meanFreq.. - mean of the value

fBodyBodyGyroMag.mean.. - mean of the value

fBodyBodyGyroMag.meanFreq.. - mean of the value

fBodyBodyGyroJerkMag.mean.. - mean of the value

fBodyBodyGyroJerkMag.meanFreq.. - mean of the value

angle.tBodyAccMean.gravity. - mean of the value

angle.tBodyAccJerkMean..gravityMean. - mean of the value

angle.tBodyGyroMean.gravityMean. - mean of the value

angle.tBodyGyroJerkMean.gravityMean. - mean of the value

angle.X.gravityMean. - mean of the value

angle.Y.gravityMean. - mean of the value

angle.Z.gravityMean. - mean of the value

tBodyAcc.std...X - mean of the value

tBodyAcc.std...Y - mean of the value

tBodyAcc.std...Z - mean of the value

tGravityAcc.std...X - mean of the value

tGravityAcc.std...Y - mean of the value

tGravityAcc.std...Z - mean of the value

tBodyAccJerk.std...X - mean of the value

tBodyAccJerk.std...Y - mean of the value

tBodyAccJerk.std...Z - mean of the value

tBodyGyro.std...X - mean of the value


tBodyGyro.std...Y - mean of the value

tBodyGyro.std...Z - mean of the value

tBodyGyroJerk.std...X - mean of the value

tBodyGyroJerk.std...Y - mean of the value

tBodyGyroJerk.std...Z - mean of the value

tBodyAccMag.std.. - mean of the value

tGravityAccMag.std.. - mean of the value

tBodyAccJerkMag.std.. - mean of the value

tBodyGyroMag.std.. - mean of the value

tBodyGyroJerkMag.std.. - mean of the value

fBodyAcc.std...X - mean of the value

fBodyAcc.std...Y - mean of the value

fBodyAcc.std...Z - mean of the value

fBodyAccJerk.std...X - mean of the value

fBodyAccJerk.std...Y - mean of the value

fBodyAccJerk.std...Z - mean of the value

fBodyGyro.std...X - mean of the value

fBodyGyro.std...Y - mean of the value

fBodyGyro.std...Z - mean of the value

fBodyAccMag.std.. - mean of the value

fBodyBodyAccJerkMag.std.. - mean of the value

fBodyBodyGyroMag.std.. - mean of the value

fBodyBodyGyroJerkMag.std.. - mean of the value
