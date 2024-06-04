# Getting and Cleaning Data Course Project
 Repo for storing the script, tidy data set and code book for the Getting and Cleaning Data course on Coursera, for Data Science Specialization.

 It contains the following files:

 UCI HAR Dataset - original data for analysis, more info on its own README.

 run_analysis.R - script that contains the necessary code to clean the data and write it to .txt files. The following process was carried out:

 1. All the train and test data was read;
 2. Train and test data was merged;
 3. Activity labels and subjects were added to data frame;
 4. New dataset with only mean and standard deviation measures was created;
 5. Summary by actitivy and subject was made on this dataset;
 6. Finally, both datasets were written on .txt file;

 CodeBook.md - the codebook explaining all the variables and the process made by the script.

 mean_and_std.txt - tidy dataset with all the train and test data mean and standard deviation measures.

 summary_mean.txt - tidy dataset that summarises the mean_and_std.txt data by activity and subject.
