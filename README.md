# Tidy Data from the Human Activity Recognition Using Smartphones Dataset
***
Several steps were taken to transform the original Human Activity Recognition Using Smartphones Dataset. The numerical test and train sets were merged along with subject identifiers and activity labels to create a single data set. The activity identifiers are translated from ID numbers into human-readable names. Of the original numerical data, only the mean and standard deviation measures were retained. Those variables were further summarized by evaluating the mean for each subject/activity pair. The data is in "wide" format as described by Wickham. Additionally, there is a single row for each subject/activity pair and a single column for each measurement.
***
The final data set can be found in the tidy_means.txt file. A detailed description of the variables can be found in CodeBook.md.

