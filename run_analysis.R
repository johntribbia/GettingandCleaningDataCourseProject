# This R script accomplishes the following four objectives:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of 
#    each variable for each activity and each subject.

## Load packates
library(dplyr)
library(tidyr)

## Set working directory
wd <- "/Users/user.name/FILEPATH"
setwd(wd)
## Unzip and Extract data from url
temp <- tempfile()
filename <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(filename, temp, mode = "wb")
unzip(temp)

## extract activity labels and features data from /UCI HAR Dataset/ directory
activity_labels <- tbl_df(read.table("./UCI HAR Dataset/activity_labels.txt"))
colnames(activity_labels) <- c("activity_id","activity")
features <- (read.table("./UCI HAR Dataset/features.txt"))
colnames(features) <- c("col_index","feature")
# subset features to only include mean and standard deviation for each measurement
features_subset <- features[which(!grepl("meanFreq",features$feature) & grepl("mean|std",features$feature)),] 

## exract subject data from /train/ directory
subject_train <- tbl_df(read.table("./UCI HAR Dataset/train/subject_train.txt"))
colnames(subject_train) <- c("subject_id")

## exract x_train (feature) data from /train/ directory 
x_train <- tbl_df(read.table("./UCI HAR Dataset/train/x_train.txt"))
# use col_index in features_subset df to select only mean() and std() features (66 in total)
x_train <- x_train[,features_subset$col_index]
colnames(x_train) <- features_subset$feature

## exract y_train (activity) data from /train/ directory 
y_train <- tbl_df(read.table("./UCI HAR Dataset/train/y_train.txt"))
colnames(y_train) <- c("activity_id")
# join y_train data with activity_labels
y_train <- inner_join(y_train,activity_labels, by = "activity_id")

## train: combine subject, activity, and feature data
train_df <- bind_cols(subject_train,y_train,x_train)

## exract subject data from /test/ directory
subject_test <- tbl_df(read.table("./UCI HAR Dataset/test/subject_test.txt"))
colnames(subject_test) <- c("subject_id")

## exract x_test (feature) data from /test/ directory 
x_test <- tbl_df(read.table("./UCI HAR Dataset/test/x_test.txt"))
# use col_index in features_subset df to select only mean() and std() features (66 in total)
x_test <- x_test[,features_subset$col_index]
colnames(x_test) <- features_subset$feature

## exract y_test (activity) data from /test/ directory 
y_test <- tbl_df(read.table("./UCI HAR Dataset/test/y_test.txt"))
colnames(y_test) <- c("activity_id")
# join y_test data with activity_labels
y_test <- inner_join(y_test,activity_labels, by = "activity_id")

## test: combine subject, activity, and feature data
test_df <- bind_cols(subject_test,y_test,x_test)

## Merge test and training data
merge_df <- bind_rows(test_df,train_df)

# store colnames of merge_df as ids and features
id_labels <- c("subject_id", "activity_id", "activity")
feature_labels <- setdiff(colnames(merge_df), id_labels)

## reshape data to prepare computing averages for each activity and each subject
gather_df <- merge_df %>%
  gather(key = id_labels, value = feature_labels, -one_of(id_labels))

colnames(gather_df) <- c("subject_id","activity_id","activity","feature","feature_value")

## create independent tidy data set with the average of each variable for each activity name and each subject
# long data with means
tidy_df_stage <- gather_df %>%
  group_by(subject_id, activity, feature) %>%
  summarise(mean_value = mean(feature_value))

# spread to wide tidy dataframe with means
tidy_df <- tidy_df_stage %>%
  spread(feature,mean_value)

# create descriptive variable names for tidy_df
tidy_id_labels <- c("subject_id","activity")
tidy_value_labels <- paste0("AVG(",setdiff(colnames(tidy_df), tidy_id_labels),")")
tidy_colnames <- combine(tidy_id_labels,tidy_value_labels)
tidy_colnames <- gsub("std()", "SD", tidy_colnames)
tidy_colnames <- gsub("mean()", "MEAN", tidy_colnames)
tidy_colnames <- gsub("Acc", "Accelerometer", tidy_colnames)
tidy_colnames <- gsub("Gyro", "Gyroscope", tidy_colnames)
tidy_colnames <- gsub("Mag", "Magnitude", tidy_colnames)
tidy_colnames <- gsub("BodyBody", "Body", tidy_colnames)
colnames(tidy_df) <- tidy_colnames


## write tidy_means.txt
write.table(tidy_df, "tidy_means.txt", row.names = FALSE)

# check data
tidy_df

