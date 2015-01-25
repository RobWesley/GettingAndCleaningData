#
# Script for Getting and Cleaning Data Class Project


#####################################################################
# Libraries
library(data.table)
library(dplyr)
#####################################################################

#####################################################################
# first read in the raw data files, assumes the script is being run in a directory above the data directory
testSet <- read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE)             # set of test readings
trainingSet <- read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE)       # set of training readings
testLabels <- read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE)          # activity number for each test row 
trainingLabels <- read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE)    # activity number for each training row
features <- read.table("./UCI HAR Dataset/features.txt",header=FALSE)               # what each reading represents for each column in test and training rows
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt",header=FALSE)  # what each activity number is
testSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE)  # which subject did each test set
trainingSubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE)  # which subject did each training set
#####################################################################

#####################################################################
# Step 1 in the Assignment
# Merge the training and the test sets to create one data set.

#change the column name of the datasets
colnames(testLabels) <- c("ActivityNumber")
colnames(trainingLabels) <- c("ActivityNumber")
colnames(activityLabels) <- c("ActivityNumber", "ActivityName")
colnames(testSubjects) <- c("Subject")
colnames(trainingSubjects) <- c("Subject")

#change the column names of the test and training datasets
colnames(testSet) <- features$V2
colnames(trainingSet) <- features$V2

# add activity label numbers to the reading sets
testSet <- cbind(testLabels, testSet)
trainingSet <- cbind(trainingLabels, trainingSet)

# add activity label numbers to the reading sets
testSet <- cbind(testSubjects, testSet)
trainingSet <- cbind(trainingSubjects, trainingSet)

# combine the test set and training set
dataSet <- rbind(testSet, trainingSet) 
# End of Step 1
#####################################################################


#####################################################################
# Step 3 in the Assignment
# Descriptive Activity Name
#add a column to the data set with the Activity Name
dataSet <- merge(activityLabels, dataSet, by="ActivityNumber")
# End of Step 3
#####################################################################


#####################################################################
# Step 2 in the Assignment
# Extract only the measurements on the mean and standard deviation for each measurement. 
# keep the Activity Name and Subject Column for later steps
dataSet <- select(dataSet, ActivityName, Subject, contains("mean()"), contains("std()"))
# End of Step 2
#####################################################################

#####################################################################
# Step 4 in the Assignment
# Appropriately label the data set with descriptive variable names
cnames <- colnames(dataSet)
cnames <- sub("()", "", cnames, fixed = TRUE) # get rid of ()
cnames <- sub("-", "", cnames, fixed = TRUE) # get rid of -
cnames <- sub("-", "", cnames, fixed = TRUE) # get rid of -
cnames <- sub("BodyBody","Body",cnames) # get rid of second Body in names
cnames <- sub("tBody", "TimeBody", cnames) #expand Time prefix
cnames <- sub("fBody", "FrequencyBody", cnames) #expand Frequency prefix
cnames <- sub("tGravity", "TimeGravity", cnames) #expand Time prefix
cnames <- sub("fGravity", "FrequencyGravity", cnames) #expand Frequency prefix
cnames <- sub("Acc", "Acceleration", cnames) #expand Acceleration prefix
cnames <- sub("Mag", "Magnitude", cnames) #expand Magnitude prefix
cnames <- sub("mean", "Mean", cnames) #camel case Mean
cnames <- sub("std", "StdDev", cnames) #expand standard deviation prefix
cnames <- sub("X", "XAxis", cnames, fixed = TRUE) # expand X Axis
cnames <- sub("Y", "YAxis", cnames, fixed = TRUE) # expand Y Axis
cnames <- sub("Z", "ZAxis", cnames, fixed = TRUE) # expand Z Axis

# Put descriptive column names back onto data set
colnames(dataSet) <- cnames
# End of Step 4
#####################################################################

#####################################################################
# Step 5 in the Assignment
#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
bySubjectActivity <- dataSet %>% group_by(Subject,ActivityName)
newSet <- bySubjectActivity %>% summarise_each(funs(mean))
write.table(newSet,"TidyDataSet.txt", row.name=FALSE)
# End of Step 5
#####################################################################
