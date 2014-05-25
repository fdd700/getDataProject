## getting data course project assignment


### Data source description

Info from the source data book, 

The data comes from experiments with a group of 30 volunteers between 19-48 years old.
Six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) were recorded usig Samsung Galaxy S II smartphone embedded accelerometer and gyroscope.
 
The original data is published at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.
 
The dataset includes the following files:
 
* 'README.txt' Datasets description 
* 'features_info.txt': Variables used in the features 
* 'features.txt': Features list 
* 'activity_labels.txt': Activity names 
* 'train/X_train.txt': Training data set 
* 'train/y_train.txt': Training data labels 
* 'test/X_test.txt': Test data set 
* 'test/y_test.txt': Test data labels
* 'train/subject_train.txt': one row of data per one of 30 subjects
* 'train/Inertial Signals/total_acc_x_train.txt' , 'total_acc_x_train.txt' and 'total_acc_z_train.txt': The acceleration signal from the smartphone accelerometer X/Y/Z axis in standard gravity units 'g'
* 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
* 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample in radians/second. 

###The Data Transformations and Variables:

The data was merged, summarisation applied, column names (variable names) cleaned up. the final tidy dataset produced by the transformation script only includes activity names, subject, mean and standard deviation values.

The new varibale names are: 
tBodyAcc, tGravityAcc, tBodyAccJerk, tBodyGyro, tBodyGyroJerk, tBodyAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag, fBodyAcc, fBodyAccJerk, fBodyGyro, fBodyAccMag, fBodyBodyAccJerkMag, fBodyBodyGyroMag, fBodyBodyGyroJerkMag

with direction (X,Y and Z) appended aproprietly.



