#Code book

This code book describes the data collected with wearable computing. The data focuses on different activities in training and test situations.

The source  data can be downloaded here [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ). The full description of the original data can be found here: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones ](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones ).

The data comprises of 68 variables and 180 observations. Each observation (row) represents a mean for measurements for each subject and each activity.

###What was done to construct the dataset

1. The variables were first downloaded from the [website](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 
2. The subject Id's, activities and accelerometer data were combined, and train and test-datasets were also attached.
3. Only the means and standard deviations for each measurement were extracted.
4. Acitivy names were labeled.
4. The dataset was labeled according to the data description. 
5. The final data set with the average of each variable for each activity and each subject was created

###The variables are as follows:

1. Train_or_test - describes whether the activity was done in train or test situation. Values ("train", "test")
2. Subject - describes the subject  who performed the activity. Range (1-30)
3. Activity - describes the activity. Values ("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

Features - variables of mean and standard deviations for Range, normalized within [-1, 1]. The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. They represent a feature vector for each pattern:


   - TimeBodyAccelerometerMean()-X
   - TimeBodyAccelerometerMean()-Y
   - TimeBodyAccelerometerMean()-Z
   - TimeBodyAccelerometerSTD()-X
   - TimeBodyAccelerometerSTD()-Y
   - TimeBodyAccelerometerSTD()-Z
   - TimeGravityAccelerometerMean()-X
   - TimeGravityAccelerometerMean()-Y
   - TimeGravityAccelerometerMean()-Z
   - TimeGravityAccelerometerSTD()-X
   - TimeGravityAccelerometerSTD()-Y
   - TimeGravityAccelerometerSTD()-Z
   - TimeBodyAccelerometerJerkMean()-X
   - TimeBodyAccelerometerJerkMean()-Y
   - TimeBodyAccelerometerJerkMean()-Z
   - TimeBodyAccelerometerJerkSTD()-X
   - TimeBodyAccelerometerJerkSTD()-Y
   - TimeBodyAccelerometerJerkSTD()-Z
   - TimeBodyGyroscopeMean()-X
   - TimeBodyGyroscopeMean()-Y
   - TimeBodyGyroscopeMean()-Z
   - TimeBodyGyroscopeSTD()-X
   - TimeBodyGyroscopeSTD()-Y
   - TimeBodyGyroscopeSTD()-Z
   - TimeBodyGyroscopeJerkMean()-X
   - TimeBodyGyroscopeJerkMean()-Y
   - TimeBodyGyroscopeJerkMean()-Z
   - TimeBodyGyroscopeJerkSTD()-X
   - TimeBodyGyroscopeJerkSTD()-Y
   - TimeBodyGyroscopeJerkSTD()-Z
   - TimeBodyAccelerometerMagnitudeMean()
   - TimeBodyAccelerometerMagnitudeSTD()
   - TimeGravityAccelerometerMagnitudeMean()
   - TimeGravityAccelerometerMagnitudeSTD()
   - TimeBodyAccelerometerJerkMagnitudeMean()
   - TimeBodyAccelerometerJerkMagnitudeSTD()
   - TimeBodyGyroscopeMagnitudeMean()
   - TimeBodyGyroscopeMagnitudeSTD()
   - TimeBodyGyroscopeJerkMagnitudeMean()
   - TimeBodyGyroscopeJerkMagnitudeSTD()
   - FrequencyBodyAccelerometerMean()-X
   - FrequencyBodyAccelerometerMean()-Y
   - FrequencyBodyAccelerometerMean()-Z
   - FrequencyBodyAccelerometerSTD()-X
   - FrequencyBodyAccelerometerSTD()-Y
   - FrequencyBodyAccelerometerSTD()-Z
   - FrequencyBodyAccelerometerJerkMean()-X
   - FrequencyBodyAccelerometerJerkMean()-Y
   - FrequencyBodyAccelerometerJerkMean()-Z
   - FrequencyBodyAccelerometerJerkSTD()-X
   - FrequencyBodyAccelerometerJerkSTD()-Y
   - FrequencyBodyAccelerometerJerkSTD()-Z
   - FrequencyBodyGyroscopeMean()-X
   - FrequencyBodyGyroscopeMean()-Y
   - FrequencyBodyGyroscopeMean()-Z
   - FrequencyBodyGyroscopeSTD()-X
   - FrequencyBodyGyroscopeSTD()-Y
   - FrequencyBodyGyroscopeSTD()-Z

</p>

Additional vectors obtained by averaging the signals. 

</p> 
 
   - FrequencyBodyAccelerometerMagnitudeMean()
   - FrequencyBodyAccelerometerMagnitudeSTD()
   - FrequencyBodyAccelerometerJerkMagnitudeMean()
   - FrequencyBodyAccelerometerJerkMagnitudeSTD()
   - FrequencyBodyGyroscopeMagnitudeMean()


 
