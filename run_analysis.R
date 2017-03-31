#The script run_analysis.R
#For detailed information see README.md and CodeBook.md

#Load libraries
library(dplyr)

#Read common data for train and test sets
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
colnames(activity_labels) <- c("activity", "description")
features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
colnames(features) <- c("idnumber","variable")

#Read train set
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", stringsAsFactors = FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", stringsAsFactors = FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = FALSE)

#Read test set
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", stringsAsFactors = FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", stringsAsFactors = FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = FALSE)

#Merging data from train and test sets together
X_total <- rbind(X_train, X_test)
y_total <- rbind(y_train, y_test)
subject_total <- rbind(subject_train,subject_test)

#Add variable (column) names
colnames(X_total) <- features[ , 2]
colnames(y_total) <- c("activity")
colnames(subject_total) <- c("subjectid")

#Removing duplicates from X_total and selecting mean() and std() variables
X_total_nodupl <- X_total[ , !duplicated(names(X_total))]
X_total_final <- select(X_total_nodupl, contains("mean()"), contains("std()") )

#Adding decsriptive names to activities
y_total_final <- left_join(y_total, activity_labels, by = "activity")

#Preparation of the tidy data containing the subjectid, activity, and mean() and std() columns
tidy <- cbind(subject_total, activity = y_total_final$description, X_total_final)
names(tidy) <- tolower(names(tidy)) %>% gsub("mean\\()","mean",.) %>% 
        gsub("std\\()","std",.) %>% gsub("-x", "-x-axis",.) %>%
        gsub("-y", "-y-axis",.) %>% gsub("-z", "-z-axis",.) %>%
        gsub("tbody","time-body",.) %>% gsub("fbody", "freq-body", .) %>%
        gsub("tgravity","time-gravity",.) %>% gsub("fgravity", "freq-gravity", .) %>%
        gsub("acc", "-acceleration",.) %>% gsub("gyro","-velocity",.) %>%
        gsub("jerk","-jerk",.) %>% gsub("mag", "-magnitude",.)

#Group data by subjectid and activity (create 6 x 30 = 180 groups)
#and calculate mean for each column
tidy_grouped <- group_by(tidy, subjectid, activity)
tidy_grouped_mean <- summarise_each(tidy_grouped, funs(mean))

#Writing data into .txt file
write.table(tidy_grouped_mean, "./tidy.txt", sep = "\t", quote = FALSE, row.names = FALSE)
