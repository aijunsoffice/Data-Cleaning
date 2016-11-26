# download zip file and unzip to "C:/R"
# set the work drectory to where you saved the dataset
setwd("C:/R/UCI HAR Dataset")

## Questin 1: Merges the training and the test sets to create one data set.
#  merge training set 
train_set<-cbind(read.table("./train/subject_train.txt"),read.table("./train/y_train.txt"),read.table("./train/x_train.txt"))
#  merge test set
test_set<-cbind(read.table("./test/subject_test.txt"),read.table("./test/y_test.txt"),read.table("./test/x_test.txt"))
#  combind training and test sets
full_set<-rbind(train_set, test_set)


## Questin 2: Extracts only the measurements on the mean and standard deviation for each measurement.
#  load feature name
feature_name <- read.table("features.txt", stringsAsFactors = FALSE)[,2]
#  Extract only the requirded date columes
feature_ext <- grep(("mean\\(\\)|std\\(\\)"), feature_name)
full_ext <- full_set[, c(1, 2, feature_ext+2)]
colnames(full_ext) <- c("subject", "activity", feature_name[feature_ext])


## Questin 3: Uses descriptive activity names to name the activities in the data set
#  load activity data
activity_name <- read.table("activity_labels.txt")
#  replace 1 - 6 with the activity names
full_ext$activity <- factor(full_ext$activity, levels = activity_name[,1], labels = activity_name[,2])


## Questin 4: Appropriately labels the data set with descriptive variable names.
names(full_ext) <- gsub("\\()", "", names(full_ext))
names(full_ext) <- gsub("^t", "time", names(full_ext))
names(full_ext) <- gsub("^f", "frequence", names(full_ext))
names(full_ext) <- gsub("-mean", "_mean", names(full_ext))
names(full_ext) <- gsub("-std", "_std", names(full_ext))

## Question 5: From the data set in step 4, creates a second, 
##             independent tidy data set with the average of each variable for each activity and each subject.
library(dplyr)
clean_data<-summarise_each(group_by(full_ext,subject,activity),funs(mean))
write.table(clean_data, "./Clean_Data.txt", row.names = FALSE)
