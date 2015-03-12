---
output: pdf_document
---
# CodeBook run_analysis.R
This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.

# Input data
The input data is obtained from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

# Transformations
The following transformation have taken place to clean up the data and create the output files:

1 All the different datasets are loaded:
- features.txt - full list of the different features that are measured.
- activity_labels.txt - list of descriptive names of the activities
- subject_test.txt - subject IDs for testdata
- X_test.txt - measurements for testdata
- y_test.txt - activity IDs for testdata
- subject_train.txt - subject IDs for traindata
- X_train.txt - measurements for traindata
- y_train.txt - activity IDs for traindata.
2 For both training and testdata the following transformations are performed:
- Appropriately label the measurement data set with descriptive colunm names using the features.txt file 
- Extract only the measurements on the mean and standard deviation for each measurement. 
- Merge activityIDs with the activity labels to get descriptive activity names.
- Combine (using cbind) the measurement data with the subject data and activity data
3 Merge (using rbind) the training and testset data to get the fulltidy dataset
4 Using the fulltidy dataset create a second dataset that calculates for subject and activity the average for each measurement. This dataset is called TidyAgg.


# Output
## Fulltidy dataset
A dataset fulltidy is created when running the run_analysis.R script. 
This dataset shows for each subject and activity the mean and standard deviation of a certain measure. The first columsn is the subject_ID, column 2 and 3 is the Activity_ID and Activity_Name, the rest of the columns are the mean and standard deviation for each measurement. The full list of columns:

|colnames.fulltidy.          |
|:---------------------------|
|subject_ID                  |
|Activity_Id                 |
|Activity_Name               |
|tBodyAcc-mean()-X           |
|tBodyAcc-mean()-Y           |
|tBodyAcc-mean()-Z           |
|tGravityAcc-mean()-X        |
|tGravityAcc-mean()-Y        |
|tGravityAcc-mean()-Z        |
|tBodyAccJerk-mean()-X       |
|tBodyAccJerk-mean()-Y       |
|tBodyAccJerk-mean()-Z       |
|tBodyGyro-mean()-X          |
|tBodyGyro-mean()-Y          |
|tBodyGyro-mean()-Z          |
|tBodyGyroJerk-mean()-X      |
|tBodyGyroJerk-mean()-Y      |
|tBodyGyroJerk-mean()-Z      |
|tBodyAccMag-mean()          |
|tGravityAccMag-mean()       |
|tBodyAccJerkMag-mean()      |
|tBodyGyroMag-mean()         |
|tBodyGyroJerkMag-mean()     |
|fBodyAcc-mean()-X           |
|fBodyAcc-mean()-Y           |
|fBodyAcc-mean()-Z           |
|fBodyAccJerk-mean()-X       |
|fBodyAccJerk-mean()-Y       |
|fBodyAccJerk-mean()-Z       |
|fBodyGyro-mean()-X          |
|fBodyGyro-mean()-Y          |
|fBodyGyro-mean()-Z          |
|fBodyAccMag-mean()          |
|fBodyBodyAccJerkMag-mean()  |
|fBodyBodyGyroMag-mean()     |
|fBodyBodyGyroJerkMag-mean() |
|tBodyAcc-std()-X            |
|tBodyAcc-std()-Y            |
|tBodyAcc-std()-Z            |
|tGravityAcc-std()-X         |
|tGravityAcc-std()-Y         |
|tGravityAcc-std()-Z         |
|tBodyAccJerk-std()-X        |
|tBodyAccJerk-std()-Y        |
|tBodyAccJerk-std()-Z        |
|tBodyGyro-std()-X           |
|tBodyGyro-std()-Y           |
|tBodyGyro-std()-Z           |
|tBodyGyroJerk-std()-X       |
|tBodyGyroJerk-std()-Y       |
|tBodyGyroJerk-std()-Z       |
|tBodyAccMag-std()           |
|tGravityAccMag-std()        |
|tBodyAccJerkMag-std()       |
|tBodyGyroMag-std()          |
|tBodyGyroJerkMag-std()      |
|fBodyAcc-std()-X            |
|fBodyAcc-std()-Y            |
|fBodyAcc-std()-Z            |
|fBodyAccJerk-std()-X        |
|fBodyAccJerk-std()-Y        |
|fBodyAccJerk-std()-Z        |
|fBodyGyro-std()-X           |
|fBodyGyro-std()-Y           |
|fBodyGyro-std()-Z           |
|fBodyAccMag-std()           |
|fBodyBodyAccJerkMag-std()   |
|fBodyBodyGyroMag-std()      |
|fBodyBodyGyroJerkMag-std()  |

## TidyAgg dataset
The second dataset created when runnning the run_analysis.R script is the TidyAgg dataset. The second dataset shows for each measurement the average per subject and activityID.
The first columsn is the subject_ID, column 2 and 3 are the Activity_ID and Activity_Name, the rest of the columns are the average of the mean and standard deviation for each measurement for that activity and subject. The full list of columns:

|colnames.TidyAgg.           |
|:---------------------------|
|subject_ID                  |
|Activity_Id                 |
|Activity_Name               |
|tBodyAcc-mean()-X           |
|tBodyAcc-mean()-Y           |
|tBodyAcc-mean()-Z           |
|tGravityAcc-mean()-X        |
|tGravityAcc-mean()-Y        |
|tGravityAcc-mean()-Z        |
|tBodyAccJerk-mean()-X       |
|tBodyAccJerk-mean()-Y       |
|tBodyAccJerk-mean()-Z       |
|tBodyGyro-mean()-X          |
|tBodyGyro-mean()-Y          |
|tBodyGyro-mean()-Z          |
|tBodyGyroJerk-mean()-X      |
|tBodyGyroJerk-mean()-Y      |
|tBodyGyroJerk-mean()-Z      |
|tBodyAccMag-mean()          |
|tGravityAccMag-mean()       |
|tBodyAccJerkMag-mean()      |
|tBodyGyroMag-mean()         |
|tBodyGyroJerkMag-mean()     |
|fBodyAcc-mean()-X           |
|fBodyAcc-mean()-Y           |
|fBodyAcc-mean()-Z           |
|fBodyAccJerk-mean()-X       |
|fBodyAccJerk-mean()-Y       |
|fBodyAccJerk-mean()-Z       |
|fBodyGyro-mean()-X          |
|fBodyGyro-mean()-Y          |
|fBodyGyro-mean()-Z          |
|fBodyAccMag-mean()          |
|fBodyBodyAccJerkMag-mean()  |
|fBodyBodyGyroMag-mean()     |
|fBodyBodyGyroJerkMag-mean() |
|tBodyAcc-std()-X            |
|tBodyAcc-std()-Y            |
|tBodyAcc-std()-Z            |
|tGravityAcc-std()-X         |
|tGravityAcc-std()-Y         |
|tGravityAcc-std()-Z         |
|tBodyAccJerk-std()-X        |
|tBodyAccJerk-std()-Y        |
|tBodyAccJerk-std()-Z        |
|tBodyGyro-std()-X           |
|tBodyGyro-std()-Y           |
|tBodyGyro-std()-Z           |
|tBodyGyroJerk-std()-X       |
|tBodyGyroJerk-std()-Y       |
|tBodyGyroJerk-std()-Z       |
|tBodyAccMag-std()           |
|tGravityAccMag-std()        |
|tBodyAccJerkMag-std()       |
|tBodyGyroMag-std()          |
|tBodyGyroJerkMag-std()      |
|fBodyAcc-std()-X            |
|fBodyAcc-std()-Y            |
|fBodyAcc-std()-Z            |
|fBodyAccJerk-std()-X        |
|fBodyAccJerk-std()-Y        |
|fBodyAccJerk-std()-Z        |
|fBodyGyro-std()-X           |
|fBodyGyro-std()-Y           |
|fBodyGyro-std()-Z           |
|fBodyAccMag-std()           |
|fBodyBodyAccJerkMag-std()   |
|fBodyBodyGyroMag-std()      |
|fBodyBodyGyroJerkMag-std()  |
