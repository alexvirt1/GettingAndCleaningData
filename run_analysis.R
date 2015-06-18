ReadAndProcess <- function(startFolder)
{
  #read parameter and set working folder
  setwd(startFolder)
  
  #go down to the "UCI HAR Dataset folder
  setwd("UCI HAR Dataset")
  
  #read "features" to the vector of name
  features <- read.table("features.txt", col.names = c("Num", "Name")) #read the table
  featuresVector <- as.vector(features$Name)
  
  #read activity lables
  activities <- read.table("activity_labels.txt", col.names = c("Activity", "Activity Name"))
  
  #go down to the "test" folder and read "subjects"
  setwd("test")
  
  testSubjects <- read.table("subject_test.txt", col.names = c("Subject"))
  
  #read X results and assign names to columns
  XTest <- read.table("X_test.txt", col.names = featuresVector)
  
  #read Y results - activities number are described in the "activities" data frame above
  YTest <- read.table("Y_test.txt", col.names = c("Activity"))
  
  #now we have column of subjects and results with the same number of rows
  #the next step is binding them by columns and create one data set
  XSubjectsTest <- bind_cols(testSubjects, YTest, XTest)
  
  #select columns Subject, Activity, all columns with "mean" and all columns with "std"
  XSubjectTestSelected <- select(XSubjectsTest, Subject, Activity, contains("mean"), contains("std"))
  
  #now repeat the same steps for train data
  setwd("../train")
  trainSubjects <- read.table("subject_train.txt", col.names = c("Subject"))
  
  #read X results and assign names to columns
  Xtrain <- read.table("X_train.txt", col.names = featuresVector)
  
  #read Y results - activities number are described in the "activities" data frame above
  Ytrain <- read.table("Y_train.txt", col.names = c("Activity"))
  
  #now we have column of subjects and results with the same number of rows
  #the next step is binding them by columns and create one data set
  XSubjectsTrain <- bind_cols(trainSubjects, Ytrain, Xtrain)
  
  #select columns Subject, Activity, all columns with "mean" and all columns with "std"
  XSubjectTrainSelected <- select(XSubjectsTrain, Subject, Activity, contains("mean"), contains("std"))
  
  #bind both test and train data set to the one data frame
  XSubjectData = bind_rows(XSubjectTestSelected, XSubjectTrainSelected)
  
  #now join with activities to have name of activity
  XSubjectDataActivities = select(inner_join(activities,XSubjectData), -Activity)
  
  #group by activity name & Subject and then calculate means for all numeric columns using 'summarise_each'
  
  XSubjectDataGrouped <- XSubjectDataActivities %>% group_by(Activity.Name, Subject) %>% summarise_each(funs(mean))
  
  return(XSubjectDataGrouped)
}