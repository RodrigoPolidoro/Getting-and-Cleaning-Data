# Clear environment objects before running the code
rm(list = ls())

# Start dplyr package
library(dplyr)

# Read the data into R

# First the train data
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Now the test data
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Read the activity labels and also the list of features
features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Merge both data sets into a single one
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)

# Add activity labels to y data frame
y <- y %>% left_join(activity_labels, by = c("V1" = "V1") )

# Add columns of labels (y) and subject to dataset
x <- cbind(x, y[2], subject)

# Add labels to x, y and subject
names(x) <- c( t(features[, 2]), "Activity_Label", "Subject" )

# Retains only the measurements for mean and standard deviation
x_msd <- x[ , c( grep("^(?!.*Freq).*mean|.*std", names(x), perl = TRUE), 562, 563) ]

# Creates new data set containing the average of each variable per activity and subject
x_act_sub <- group_by(x_msd, Activity_Label, Subject)
x_summary <- summarise_all(x_act_sub, list(mean = mean))

# Writes the data sets to a .txt file
write.table(x_msd, "mean_and_std.txt", row.name=FALSE)
write.table(x_summary, "summary_mean.txt", row.name=FALSE)



