# Code Book

The run_analysis.R script performs the necessary steps to clean the data and write it to .txt files. The following process was carried out:

 1. All the train and test data was read;
 2. Train and test data was merged;
 3. Activity labels and subjects were added to data frame;
 4. New dataset with only mean and standard deviation measures was created;
 5. Summary by actitivy and subject was made on this dataset;
 6. Finally, both datasets were written on .txt files: 

The following variables appear on each data set:

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
 
In mean_and_std.txt, each of these variables was analysed by taking its mean and standard deviation.

In summary_mean.txt, the mean_and_std.txt data was summarised by activity and subject.

 