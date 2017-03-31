# Data analysis by 'run_analysis.R'

The purpose of the script 'run_analysis.R' is to obtain a tidy data set from the original data on 'Human Activity Recognition Using Smartphones Dataset, Version 1.0' by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto (further information and details on the data may be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#). 

Tidy data set contains only the data that correspond to the mean and standard deviation (std) values of the particular variables for each subject and activity (see CodeBook.md). 

run_analysis.R creates a tidy data set in a txt format (tidy.txt). It may be viewed in R Studio using read.table() and View(), as described below.

## The script 'run_analysis.R' performs following steps:

#### 1. Reads and merges data from two subsets of the original data set, 'train' and 'test', into one data set that contains the following (per row, i.e. observation):
  - subject (from 'subject_train.txt' and 'subject_test.txt')
  - activity (from 'y_train.txt' and 'y_test.txt') 
  - measured variables (from 'X_train.txt' and 'X_test.txt')
The descriptive names of activities and column variables are extracted from the list of activities 'activity_labels.txt' and list of measured variable (i.e. features) 'features.txt'.

#### 2. Identifies and extracts the columns corresponding to variables of the type 'mean' and 'standard deviation' ('std'). 

#### 3. Creates the final data set from 'mean' and 'std' data set obtained in Step 2. that averages each variable for each subject and each activity. 

## How to run the script 'run_analysis.R'

1. Download the original data from the following link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
2. Unpack the downloaded data (you should have directory 'UCI HAR Dataset' in your working directory).
3. Copy 'run_analysis.R' into the directory that contains the directory with the downloaded data 'UCI HAR Dataset'.
4. Run the script by typing source("run_analysis.R"); use R Studio version 3.3.2.
5. The final tidy data set (with average values, see above) will be exported as tidy.txt, and placed to your working directory.

## To view the data
To view the data, load the data in R Studio and use View():

tidy <- read.table("./tidy.txt", header = TRUE)
View(tidy)
