# run_analysis.R script

## load dataset features & activitiy
features <- read.table("UCI HAR Dataset/features.txt")
activity <- read.table("UCI HAR Dataset/activity_labels.txt")
## get list that contain measures of mean and standard deviation 
means <- grep("-mean\\(\\)", features[,2], value=TRUE)
stds <- grep("-std\\(\\)", features[,2], value=TRUE)
meansstds <- append(means,stds)

## testset
## load data
testset <- read.table("UCI HAR Dataset/test/X_test.txt", sep = "")
## Appropriately label the data set with descriptive variable names. 
colnames(testset) <- features[,2]
## Extract only the measurements on the mean and standard deviation for each measurement. 
testset <- testset[, meansstds]
## Load testsetlabels and merge with the activities
testsetlabels <- read.table("UCI HAR Dataset/test/y_test.txt", sep="")
testsetlabel <- merge(testsetlabels, activity, by.testsetlabels=V1, by.activity=V1, sort = FALSE)
## Set descriptive activity names to name the activities in the data set
colnames(testsetlabel) <- c("Activity_Id", "Activity_Name")
## load subjectdata and set a descriptive columnname
subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt")
colnames(subjecttest) <- c("subject_ID")
## combine the testsetlabels(activities), with the subjects and the measurements.
test <- cbind(subjecttest,testsetlabel,testset)

## Repeat the steps for the testset data on the trainingset 
trainset <- read.table("UCI HAR Dataset/train/X_train.txt", sep = "")
colnames(trainset) <- features[,2]
trainset <- trainset[, meansstds]
trainsetlabels <- read.table("UCI HAR Dataset/train/y_train.txt", sep = "")
trainsetlabel <- merge(trainsetlabels, activity, by.trainsetlabels=V1, by.activity=V1, sort = FALSE)
colnames(trainsetlabel) <- c("Activity_Id", "Activity_Name")
subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
colnames(subjecttrain) <- c("subject_ID")
train <- cbind(subjecttrain,trainsetlabel,trainset)

## Merge the training and test sets to create one data set.
fulltidy <- rbind(test,train)

## Creates a second, independent tidy data set with the average of each variable 
## for each activity and each subject.
TidyAgg <- aggregate(. ~ subject_ID + Activity_Id + Activity_Name, data=fulltidy, FUN = mean)
## Create a txt file with write.table() for submission.
write.table(TidyAgg, file="./TidyAgg.txt", row.names=FALSE)

library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn) 
