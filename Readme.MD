# Getting and Cleaning Data - Project

## Project
Script, called run_analysis.R, that does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
2. Uses descriptive activity names to name the activities in the data set
3. Appropriately labels the data set with descriptive activity names.
4. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Steps to run scripts

1. Download the data and unzip: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). A folder created UCI HAR Dataset is created.
2. Create a folder and put in this folder the run_analysis.R script and the folder called UCI HAR Dataset.
3. Set this folder as your working directory.
4. Run the script
5. The output will be:

- a dataset "fulltidy" that is a full data set with training and testdata. With descriptive columnnamess and measurement for the mean and standard deviation.
- a txt file (saved in your working directory) that has the average for each measurement for each activity and each subject.

## Transformations performed  by the run_anaysis.R script

In summary the following calculations are performed in this script:

1 The different datasets are loaded related to the measurements, activities and subjects.
2 For both sets (training and test):

- Only the measurements related to mean and std are kept, other columns are removed.
- measurement data is merged with subject and activity data
- Descriptive columns are given for each columnname.

3 Training and testdata is combined in to one dataset: fulltidy
4 Using the fulltidy dataset, a second dataset is created for the average of each measurement for each activity and subject.


