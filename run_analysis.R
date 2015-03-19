##Getting and cleaning data - Courseproject

##0. Load Libraries
install.packages("dplyr")
install.packages("data.table")
library("plyr")
library(dplyr)
library(data.table)
##0. Download data
if(!file.exists("./Courseproject")){dir.create("./Courseproject")}
if(!file.exists("./Courseproject/temp")){dir.create("./Courseproject/temp")}
fileUrl1 = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl1,destfile="./Courseproject/temp/Dataset.zip",method="curl")
unzip(zipfile="./Courseproject/temp/Dataset.zip", exdir="./Courseproject/")
setwd("./Courseproject")
##1. Merges the training and the test sets to create one data set.
##1.1 Reads all the test files to datasets
##Tests
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
head(subject_test)
head(y_test)
head(X_test)
##Train
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
head(subject_train)
head(y_train)
head(X_train)
##1.2 Combines the train and test sets to two separate datasets
data_test<-cbind(subject_test, y_test ,X_test)
data_train<-cbind(subject_train, y_train ,X_train)
##1.3 Add variable train_or_test, which has the value "test" in the test dataset and "train" in the train dataset
data_test$train_or_test <- "test"
data_train$train_or_test <- "train"
data_test<-data_test[,c(ncol(data_test),1:(ncol(data_test)-1))]
data_train<-data_train[,c(ncol(data_train),1:(ncol(data_train)-1))]
##1.3 Combines the datasets to one single file
names(data_test)
names(data_train)
##1.4 the dataframes have identical dimensions and column names 
dim(data_test) == dim(data_train)
names(data_test) == names(data_test)
dim(data_test)
dim(data_train)
##1.5 Binds the two dataframes together
data<-rbind(data_test, data_train)
dim(data)
features<-read.table("./UCI HAR Dataset/features.txt")
features<-as.vector(features$V2)
colnames(data) <- c("Train_or_Test", "Subject", "Activity", features)

##2. Extract only the measurements on the mean and standard deviation for each measurement. 
##2.1 Delete other than mean and std
mean_std_data<-subset(data, select = c("Train_or_Test", "Subject", "Activity", "tBodyAcc-mean()-X", "tBodyAcc-mean()-Y", "tBodyAcc-mean()-Z", "tBodyAcc-std()-X", "tBodyAcc-std()-Y", "tBodyAcc-std()-Z", "tGravityAcc-mean()-X", "tGravityAcc-mean()-Y", "tGravityAcc-mean()-Z", "tGravityAcc-std()-X", "tGravityAcc-std()-Y", "tGravityAcc-std()-Z", "tBodyAccJerk-mean()-X", "tBodyAccJerk-mean()-Y", "tBodyAccJerk-mean()-Z", "tBodyAccJerk-std()-X", "tBodyAccJerk-std()-Y", "tBodyAccJerk-std()-Z", "tBodyGyro-mean()-X", "tBodyGyro-mean()-Y", "tBodyGyro-mean()-Z", "tBodyGyro-std()-X", "tBodyGyro-std()-Y", "tBodyGyro-std()-Z", "tBodyGyroJerk-mean()-X", "tBodyGyroJerk-mean()-Y", "tBodyGyroJerk-mean()-Z", "tBodyGyroJerk-std()-X", "tBodyGyroJerk-std()-Y", "tBodyGyroJerk-std()-Z", "tBodyAccMag-mean()", "tBodyAccMag-std()", "tGravityAccMag-mean()", "tGravityAccMag-std()", "tBodyAccJerkMag-mean()", "tBodyAccJerkMag-std()", "tBodyGyroMag-mean()", "tBodyGyroMag-std()", "tBodyGyroJerkMag-mean()", "tBodyGyroJerkMag-std()", "fBodyAcc-mean()-X", "fBodyAcc-mean()-Y", "fBodyAcc-mean()-Z", "fBodyAcc-std()-X", "fBodyAcc-std()-Y", "fBodyAcc-std()-Z", "fBodyAccJerk-mean()-X", "fBodyAccJerk-mean()-Y", "fBodyAccJerk-mean()-Z", "fBodyAccJerk-std()-X", "fBodyAccJerk-std()-Y", "fBodyAccJerk-std()-Z", "fBodyGyro-mean()-X", "fBodyGyro-mean()-Y", "fBodyGyro-mean()-Z", "fBodyGyro-std()-X", "fBodyGyro-std()-Y", "fBodyGyro-std()-Z", "fBodyAccMag-mean()", "fBodyAccMag-std()", "fBodyBodyAccJerkMag-mean()", "fBodyBodyAccJerkMag-std()", "fBodyBodyGyroMag-mean()", "fBodyBodyGyroMag-std()", "fBodyBodyGyroJerkMag-mean()", "fBodyBodyGyroJerkMag-std()"))

##3. Uses descriptive activity names to name the activities in the data set
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
activity_number<-as.vector(activity_labels$V1)
activity_label<-as.vector(activity_labels$V2)
mean_std_data$Activity <- factor(mean_std_data$Activity,
                    levels = c(activity_number),
                    labels = c(activity_label))
mean_std_data$Activity
head(mean_std_data)
dim(mean_std_data)
mean_std_data

#4.Naming columns.
##Replacing acronyms with longer names

names(mean_std_data)<-gsub("Acc", "Accelerometer", names(mean_std_data))
names(mean_std_data)<-gsub("Gyro", "Gyroscope", names(mean_std_data))
names(mean_std_data)<-gsub("BodyBody", "Body", names(mean_std_data))
names(mean_std_data)<-gsub("Mag", "Magnitude", names(mean_std_data))
names(mean_std_data)<-gsub("^t", "Time", names(mean_std_data))
names(mean_std_data)<-gsub("^f", "Frequency", names(mean_std_data))
names(mean_std_data)<-gsub("tBody", "TimeBody", names(mean_std_data))
names(mean_std_data)<-gsub("-mean()", "Mean", names(mean_std_data), ignore.case = TRUE)
names(mean_std_data)<-gsub("-std()", "STD", names(mean_std_data), ignore.case = TRUE)
names(mean_std_data)<-gsub("-freq()", "Frequency", names(mean_std_data), ignore.case = TRUE)
names(mean_std_data)<-gsub("angle", "Angle", names(mean_std_data))
names(mean_std_data)<-gsub("gravity", "Gravity", names(mean_std_data))
names(mean_std_data)

##5 From the data set in step 4, creates a second, independent tidy data set with the average of each 
##variable for each activity and each subject 

## Create tidyData as a data set with average for each activity and subject. 
sensor_avg_by_act_sub = ddply(mean_std_data, c("Subject","Activity"), numcolwise(mean))
##Saves the dataset
write.table(sensor_avg_by_act_sub, file = "Tidy.txt", row.names = FALSE)
