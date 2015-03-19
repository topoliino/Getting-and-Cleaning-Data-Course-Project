# Coursera - Getting and cleaning data - Course project

This script deals with the wearable computing data. The data is available  [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ). A full description of the data can be read [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The file run_analysis.R script is intended to do the following:
 
1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement.
1. Use descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names. 
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##A more precise description of what the run_analysis.R script does:
###0. Loads the libraries plyr, dplyr and data.table.
###0. Downloads the data and unzip's it.
###1. Merges the training and the test sets to create one data set.
- The columns of subject_test.txt, y_test.txt and X_test.txt are attached
- The columns of subject_train.txt, y_train.txt and X_train.txt are attached
- the train set is attached as extra rows in the test set
##2. Extract only the measurements on the mean and standard deviation for each measurement.
- columns that do not have mean or std are deleted




