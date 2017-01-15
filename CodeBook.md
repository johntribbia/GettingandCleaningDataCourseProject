# Code Book
***
## Subject and Activity
***
* Subject: subject_id (integer)
	+ID of subject measured using wearable technology
* Activity Name: activity (factor)
	+ Walking
	+ Walking Upstairs
	+ Walking Downstairs
	+ Sitting
	+ Standing
	+ Laying

***
## Measurement Means
### All measurement variables (66 in total) are the MEAN of a measurement for each subject_id and activity. These are labeled with "AVG()" around the body of the variable name. All variables are floating point. 
***
* Average MEAN of Frequency Body Accelerometer along X,Y, and Z
	+ AVG(fBodyAccelerometer-MEAN()-X)
	+ AVG(fBodyAccelerometer-MEAN()-Y)
	+ AVG(fBodyAccelerometer-MEAN()-Z)
* Average Standard Deviation of Frequency Body Accelerometer along X,Y, and Z
	+ AVG(fBodyAccelerometer-SD()-X)
	+ AVG(fBodyAccelerometer-SD()-Y)
	+ AVG(fBodyAccelerometer-SD()-Z)
* Average MEAN of Frequency Body Accelerometer Jerk along X,Y, and Z
	+ AVG(fBodyAccelerometerJerk-MEAN()-X)
	+ AVG(fBodyAccelerometerJerk-MEAN()-Y)
	+ AVG(fBodyAccelerometerJerk-MEAN()-Z)
* Average Standard Deviation of Frequency Body Accelerometer Jerk along X,Y, and Z
	+ AVG(fBodyAccelerometerJerk-SD()-X)
	+ AVG(fBodyAccelerometerJerk-SD()-Y)
	+ AVG(fBodyAccelerometerJerk-SD()-Z)
* Average MEAN and Standard Deviation of Frequency Body Accelerometer Magnitude
	+ AVG(fBodyAccelerometerMagnitude-MEAN())
	+ AVG(fBodyAccelerometerMagnitude-SD())
* Average MEAN and Standard Deviation of Frequency Body Accelerometer Jerk Magnitude
	+ AVG(fBodyAccelerometerJerkMagnitude-MEAN())
	+ AVG(fBodyAccelerometerJerkMagnitude-SD())
* Average MEAN and Standard Deviation of Frequency Body Gyroscope Jerk Magnitude
	+ AVG(fBodyGyroscopeJerkMagnitude-MEAN())
	+ AVG(fBodyGyroscopeJerkMagnitude-SD())
* Average MEAN and Standard Deviation of Frequency Body Gyroscope Magnitude
	+ AVG(fBodyGyroscopeMagnitude-MEAN())
	+ AVG(fBodyGyroscopeMagnitude-SD())
* Average MEAN of Frequency Body Gyroscope along X,Y, and Z 
	+ AVG(fBodyGyroscope-MEAN()-X)
	+ AVG(fBodyGyroscope-MEAN()-Y)
	+ AVG(fBodyGyroscope-MEAN()-Z)
* Average Standard Deviation of Frequency Body Gryo along X,Y, and Z
	+ AVG(fBodyGyroscope-SD()-X)
	+ AVG(fBodyGyroscope-SD()-Y)
	+ AVG(fBodyGyroscope-SD()-Z)
* Average MEAN of Time Body Accelerometer along X,Y, and Z
	+ AVG(tBodyAccelerometer-MEAN()-X)
	+ AVG(tBodyAccelerometer-MEAN()-Y)
	+ AVG(tBodyAccelerometer-MEAN()-Z)
* Average Standard Deviation of Time Body Accelerometer along X,Y, and Z
	+ AVG(tBodyAccelerometer-SD()-X)
	+ AVG(tBodyAccelerometer-SD()-Y)
	+ AVG(tBodyAccelerometer-SD()-Z)
* Average MEAN of Time Body Accelerometer Jerk along X,Y, and Z
	+ AVG(tBodyAccelerometerJerk-MEAN()-X)
	+ AVG(tBodyAccelerometerJerk-MEAN()-Y)
	+ AVG(tBodyAccelerometerJerk-MEAN()-Z)
* Average Standard Deviation of Time Body Accelerometer Jerk along X,Y, and Z
	+ AVG(tBodyAccelerometerJerk-SD()-X)
	+ AVG(tBodyAccelerometerJerk-SD()-Y)
	+ AVG(tBodyAccelerometerJerk-SD()-Z)
* Average MEAN and Standard Deviation of Time Body Accelerometer Jerk Magnitude
	+ AVG(tBodyAccelerometerJerkMagnitude-MEAN())
	+ AVG(tBodyAccelerometerJerkMagnitude-SD())
* Average MEAN and Standard Deviation of Time Body Accelerometer Magnitude
	+ AVG(tBodyAccelerometerMagnitude-MEAN())
	+ AVG(tBodyAccelerometerMagnitude-SD())
* Average MEAN of Time Body Gyroscope along X,Y, and Z 
	+ AVG(tBodyGyroscope-MEAN()-X)
	+ AVG(tBodyGyroscope-MEAN()-Y)
	+ AVG(tBodyGyroscope-MEAN()-Z)
* Average Standard Deviation of Time Body Gyroscope along X,Y, and Z
	+ AVG(tBodyGyroscope-SD()-X)
	+ AVG(tBodyGyroscope-SD()-Y)
	+ AVG(tBodyGyroscope-SD()-Z)
* Average MEAN of Time Body Gyroscope Jerk along X,Y, and Z
	+ AVG(tBodyGyroscopeJerk-MEAN()-X)
	+ AVG(tBodyGyroscopeJerk-MEAN()-Y)
	+ AVG(tBodyGyroscopeJerk-MEAN()-Z)
* Average Standard Deviation of Time Body Gyroscope Jerk along X,Y, and Z 
	+ AVG(tBodyGyroscopeJerk-SD()-X)
	+ AVG(tBodyGyroscopeJerk-SD()-Y)
	+ AVG(tBodyGyroscopeJerk-SD()-Z)
* Average MEAN and Standard Deviation of Time Body Jerk Magnitude
	+ AVG(tBodyGyroscopeJerkMagnitude-MEAN())
	+ AVG(tBodyGyroscopeJerkMagnitude-SD())
* Average MEAN and Standard Deviation of Time Body Gyroscope Magnitude
	+ AVG(tBodyGyroscopeMagnitude-MEAN())
    + AVG(tBodyGyroscopeMagnitude-SD())
* Average MEAN of Time Gravity Accelerometer along X,Y, and Z
	+ AVG(tGravityAccelerometer-MEAN()-X)
	+ AVG(tGravityAccelerometer-MEAN()-Y)
	+ AVG(tGravityAccelerometer-MEAN()-Z)
* Average Standard Deviation of Time Gravity Accelerometer along X,Y, and Z
	+ AVG(tGravityAccelerometer-SD()-X)
	+ AVG(tGravityAccelerometer-SD()-Y)
	+ AVG(tGravityAccelerometer-SD()-Z)
* Average MEAN and Standard Deviation of Time Gravity Accelerometer Magnitude 
	+ AVG(tGravityAccelerometerMagnitude-MEAN())
	+ AVG(tGravityAccelerometerMagnitude-SD())