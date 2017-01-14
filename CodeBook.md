# Code Book
***
## Subject and Activity
***
*Subject: subject_id (integer)
	+ID of subject measured using wearable technology
*Activity Name: activity (factor)
	+Walking
	+Walking Upstairs
	+Walking Downstairs
	+Sitting
	+Standing
	+Laying
***
## Measurement Means
***
### All measurement variables (66 in total) are the mean of a measurement for each subject_id and activity. These 
### are labeled with "AVG()" around the body of the variable name. All variables are floating point. 
***
*Average Mean of Frequency Body Acceleration along X,Y, and Z
	+AVG(fBodyAcc-mean()-X)
	+AVG(fBodyAcc-mean()-Y)
	+AVG(fBodyAcc-mean()-Z)
*Average Standard Deviation of Frequency Body Acceleration along X,Y, and Z
	+AVG(fBodyAcc-std()-X)
	+AVG(fBodyAcc-std()-Y)
	+AVG(fBodyAcc-std()-Z)
*Average Mean of Frequency Body Acceleration Jerk along X,Y, and Z
	+AVG(fBodyAccJerk-mean()-X)
	+AVG(fBodyAccJerk-mean()-Y)
	+AVG(fBodyAccJerk-mean()-Z)
*Average Standard Deviation of Frequency Body Acceleration Jerk along X,Y, and Z
	+AVG(fBodyAccJerk-std()-X)
	+AVG(fBodyAccJerk-std()-Y)
	+AVG(fBodyAccJerk-std()-Z)
*Average Mean and Standard Deviation of Frequency Body Acceleration Mag
	+AVG(fBodyAccMag-mean())
	+AVG(fBodyAccMag-std())
*Average Mean and Standard Deviation of Frequency Body Acceleration Jerk Mag
	+AVG(fBodyAccJerkMag-mean())
	+AVG(fBodyAccJerkMag-std())
*Average Mean and Standard Deviation of Frequency Body Gyro Jerk Mag
	+AVG(fBodyGyroJerkMag-mean())
	+AVG(fBodyGyroJerkMag-std())
*Average Mean and Standard Deviation of Frequency Body Gyro Mag
	+AVG(fBodyGyroMag-mean())
	+AVG(fBodyGyroMag-std())
*Average Mean of Frequency Body Gyro along X,Y, and Z 
	+AVG(fBodyGyro-mean()-X)
	+AVG(fBodyGyro-mean()-Y)
	+AVG(fBodyGyro-mean()-Z)
*Average Standard Deviation of Frequency Body Gryo along X,Y, and Z
	+AVG(fBodyGyro-std()-X)
	+AVG(fBodyGyro-std()-Y)
	+AVG(fBodyGyro-std()-Z)
*Average Mean of Time Body Acceleration along X,Y, and Z
	+AVG(tBodyAcc-mean()-X)
	+AVG(tBodyAcc-mean()-Y)
	+AVG(tBodyAcc-mean()-Z)
*Average Standard Deviation of Time Body Acceleration along X,Y, and Z
	+AVG(tBodyAcc-std()-X)
	+AVG(tBodyAcc-std()-Y)
	+AVG(tBodyAcc-std()-Z)
*Average Mean of Time Body Acceleration Jerk along X,Y, and Z
	+AVG(tBodyAccJerk-mean()-X)
	+AVG(tBodyAccJerk-mean()-Y)
	+AVG(tBodyAccJerk-mean()-Z)
*Average Standard Deviation of Time Body Acceleration Jerk along X,Y, and Z
	+AVG(tBodyAccJerk-std()-X)
	+AVG(tBodyAccJerk-std()-Y)
	+AVG(tBodyAccJerk-std()-Z)
*Average Mean and Standard Deviation of Time Body Acceleration Jerk Mag
	+AVG(tBodyAccJerkMag-mean())
	+AVG(tBodyAccJerkMag-std())
*Average Mean and Standard Deviation of Time Body Acceleration Mag
	+AVG(tBodyAccMag-mean())
	+AVG(tBodyAccMag-std())
*Average Mean of Time Body Gyro along X,Y, and Z 
	+AVG(tBodyGyro-mean()-X)
	+AVG(tBodyGyro-mean()-Y)
	+AVG(tBodyGyro-mean()-Z)
*Average Standard Deviation of Time Body Gyro along X,Y, and Z
	+AVG(tBodyGyro-std()-X)
	+AVG(tBodyGyro-std()-Y)
	+AVG(tBodyGyro-std()-Z)
*Average Mean of Time Body Gyro Jerk along X,Y, and Z
	+AVG(tBodyGyroJerk-mean()-X)
	+AVG(tBodyGyroJerk-mean()-Y)
	+AVG(tBodyGyroJerk-mean()-Z)
*Average Standard Deviation of Time Body Gyro Jerk along X,Y, and Z 
	+AVG(tBodyGyroJerk-std()-X)
	+AVG(tBodyGyroJerk-std()-Y)
	+AVG(tBodyGyroJerk-std()-Z)
*Average Mean and Standard Deviation of Time Body Jerk Mag
	+AVG(tBodyGyroJerkMag-mean())
	+AVG(tBodyGyroJerkMag-std())
*Average Mean and Standard Deviation of Time Body Gyro Mag
	+AVG(tBodyGyroMag-mean())
	+AVG(tBodyGyroMag-std())
*Average Mean of Time Gravity Acceleration along X,Y, and Z
	+AVG(tGravityAcc-mean()-X)
	+AVG(tGravityAcc-mean()-Y)
	+AVG(tGravityAcc-mean()-Z)
*Average Standard Deviation of Time Gravity Acceleration along X,Y, and Z
	+AVG(tGravityAcc-std()-X)
	+AVG(tGravityAcc-std()-Y)
	+AVG(tGravityAcc-std()-Z)
*Average Mean and Standard Deviation of Time Gravity Acceleration Mag 
	+AVG(tGravityAccMag-mean())
	+AVG(tGravityAccMag-std())
***