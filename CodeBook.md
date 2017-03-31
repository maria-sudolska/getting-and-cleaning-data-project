# CODEBOOK

## Intro

Script: run_analysis.R
Data on 'Human Activity Recognition Using Smartphones Dataset, Version 1.0'
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)

The original data set is available here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### How the tidy data set has been obtained from the original data

The tidy data set has been extracted from the original data set as follows:
- The two separate 'train' and 'test' data sets were merged into one data set.
- Only the measurements of the type 'mean' and 'std' were selected out. That is, columns containing strings 'mean()' and 'std()' were used. 
- For each subject and activity, average values of the selected 'mean' and 'std' measurements were calculated and put into the final data.
- The labels of activities were transformed to names of activities, using 'activity_labels.txt' as a key.
- The names of the variables were modified as described below.

The data set contains average values (calculated as arithmetic mean) for mean and standard deviation variables (listed below) measured for each subject and each activity. 

### Variables and their characteristics

subjectid
        
        1..30   Identifier of the subject who carried out the experiment.

activity                                      
        
        The type of activity performed by the subject: 
        WALKING
        WALKING_UPSTAIRS
        WALKING_DOWNSTAIRS
        SITTING
        STANDING
        LAYING
        
time-body-acceleration-mean-x-axis
        
        Mean of the time domain body linear acceleration signal for x axis.
        Normalized and bound within [-1,1].

time-body-acceleration-mean-y-axis             
        
        Mean of the time domain body linear acceleration signal for y axis.
        Normalized and bound within [-1,1].
        
time-body-acceleration-mean-z-axis              
        
        Mean of the time domain body linear acceleration signal for z axis.
        Normalized and bound within [-1,1].
        
time-gravity-acceleration-mean-x-axis 
        
        Mean of the time domain gravity linear acceleration signal for x axis.
        Normalized and bound within [-1,1].

time-gravity-acceleration-mean-y-axis      
        
        Mean of the time domain gravity linear acceleration signal for y axis.
        Normalized and bound within [-1,1].

time-gravity-acceleration-mean-z-axis          
        
        Mean of the time domain gravity linear acceleration signal for z axis.
        Normalized and bound within [-1,1].

time-body-acceleration-jerk-mean-x-axis    
        
        Mean of the time domain body Jerk acceleration signal for x axis.
        Normalized and bound within [-1,1].

time-body-acceleration-jerk-mean-y-axis  
        
        Mean of the time domain body Jerk acceleration signal for y axis.
        Normalized and bound within [-1,1].

time-body-acceleration-jerk-mean-z-axis         
        
        Mean of the time domain body Jerk acceleration signal for z axis.
        Normalized and bound within [-1,1].

time-body-velocity-mean-x-axis 
        
        Mean of the time domain body linear velocity signal for x axis.
        Normalized and bound within [-1,1].

time-body-velocity-mean-y-axis
        
        Mean of the time domain body linear velocity signal for y axis.
        Normalized and bound within [-1,1].

time-body-velocity-mean-z-axis   
        
        Mean of the time domain body linear velocity signal for z axis.
        Normalized and bound within [-1,1].

time-body-velocity-jerk-mean-x-axis             
        
        Mean of the time domain body Jerk velocity signal for x axis.
        Normalized and bound within [-1,1].

time-body-velocity-jerk-mean-y-axis 
        
        Mean of the time domain body Jerk velocity signal for y axis.
        Normalized and bound within [-1,1].

time-body-velocity-jerk-mean-z-axis        
        
        Mean of the time domain body Jerk velocity signal for z axis.
        Normalized and bound within [-1,1].

time-body-acceleration-magnitude-mean 
        
        Mean of the magnitude of the time domain body linear acceleration signal.
        Calculated using the Euclidean norm.
        Normalized and bound within [-1,1].

time-gravity-acceleration-magnitude-mean
        
        Mean of the magnitude of the time domain gravity linear acceleration signal.
        Calculated using the Euclidean norm.
        Normalized and bound within [-1,1].

time-body-acceleration-jerk-magnitude-mean 
        
        Mean of the magnitude of the time domain body Jerk acceleration signal.
        Calculated using the Euclidean norm.
        Normalized and bound within [-1,1].

time-body-velocity-magnitude-mean               
        
        Mean of the magnitude of the time domain body linear velocity signal.
        Calculated using the Euclidean norm.
        Normalized and bound within [-1,1].

time-body-velocity-jerk-magnitude-mean
        
        Mean of the magnitude of the time domain body Jerk velocity signal.
        Calculated using the Euclidean norm.
        Normalized and bound within [-1,1].

freq-body-acceleration-mean-x-axis  
        
        Mean of the frequency domain body linear acceleration signal for x axis.
        Normalized and bound within [-1,1].

freq-body-acceleration-mean-y-axis  
        
        Mean of the frequency domain body linear acceleration signal for y axis.
        Normalized and bound within [-1,1].

freq-body-acceleration-mean-z-axis         
        
        Mean of the frequency domain body linear acceleration signal for z axis.
        Normalized and bound within [-1,1].

freq-body-acceleration-jerk-mean-x-axis  
        
        Mean of the frequency domain body Jerk acceleration signal for x axis.
        Normalized and bound within [-1,1].

freq-body-acceleration-jerk-mean-y-axis  
        
        Mean of the frequency domain body Jerk acceleration signal for y axis.
        Normalized and bound within [-1,1].

freq-body-acceleration-jerk-mean-z-axis    
        
        Mean of the frequency domain body Jerk acceleration signal for z axis.
        Normalized and bound within [-1,1].

freq-body-velocity-mean-x-axis
        
        Mean of the frequency domain body linear velocity signal for x axis.
        Normalized and bound within [-1,1].

freq-body-velocity-mean-y-axis 
        
        Mean of the frequency domain body linear velocity signal for y axis.
        Normalized and bound within [-1,1].

freq-body-velocity-mean-z-axis             
        
        Mean of the frequency domain body linear velocity signal for z axis.
        Normalized and bound within [-1,1].

freq-body-acceleration-magnitude-mean
        
        Mean of the magnitude of the frequency domain body linear acceleration signal.
        Calculated using the Euclidean norm.
        Normalized and bound within [-1,1].

freq-bodybody-acceleration-jerk-magnitude-mean
        
        Mean of the magnitude of the frequency domain body Jerk acceleration signal.
        Calculated using the Euclidean norm.
        Normalized and bound within [-1,1].

freq-bodybody-velocity-magnitude-mean 
        
        Mean of the magnitude of the frequency domain body linear velocity signal.
        Calculated using the Euclidean norm.
        Normalized and bound within [-1,1].

freq-bodybody-velocity-jerk-magnitude-mean
        
        Mean of the magnitude of the frequency domain body Jerk velocity signal.
        Calculated using the Euclidean norm.
        Normalized and bound within [-1,1].

time-body-acceleration-std-x-axis 
        
        Standard deviation of the time domain body linear acceleration signal for x axis.
        Normalized and bound within [-1,1].

time-body-acceleration-std-y-axis
        
        Standard deviation of the time domain body linear acceleration signal for y axis.
        Normalized and bound within [-1,1].

time-body-acceleration-std-z-axis          
        
        Standard deviation of the time domain body linear acceleration signal for z axis.
        Normalized and bound within [-1,1].

time-gravity-acceleration-std-x-axis 
        
        Standard deviation of the time domain gravity linear acceleration signal for x axis.
        Normalized and bound within [-1,1].

time-gravity-acceleration-std-y-axis
        
        Standard deviation of the time domain gravity linear acceleration signal for y axis.
        Normalized and bound within [-1,1].

time-gravity-acceleration-std-z-axis       
        
        Standard deviation of the time domain gravity linear acceleration signal for z axis.
        Normalized and bound within [-1,1].

time-body-acceleration-jerk-std-x-axis  
        
        Standard deviation of the time domain body Jerk acceleration signal for x axis.
        Normalized and bound within [-1,1].

time-body-acceleration-jerk-std-y-axis  
        
        Standard deviation of the time domain body Jerk acceleration signal for y axis.
        Normalized and bound within [-1,1].

time-body-acceleration-jerk-std-z-axis         
        
        Standard deviation of the time domain body Jerk acceleration signal for z axis.
        Normalized and bound within [-1,1].
        
time-body-velocity-std-x-axis                   
        
        Standard deviation of the time domain body linear velocity signal for x axis.
        Normalized and bound within [-1,1].
        
time-body-velocity-std-y-axis 
        
        Standard deviation of the time domain body linear velocity signal for y axis.
        Normalized and bound within [-1,1].

time-body-velocity-std-z-axis              
        
        Standard deviation of the time domain body linear velocity signal for z axis.
        Normalized and bound within [-1,1].

time-body-velocity-jerk-std-x-axis  
        
        Standard deviation of the time domain body Jerk velocity signal for x axis.
        Normalized and bound within [-1,1].

time-body-velocity-jerk-std-y-axis  
        
        Standard deviation of the time domain body Jerk velocity signal for y axis.
        Normalized and bound within [-1,1].

time-body-velocity-jerk-std-z-axis         
        
        Standard deviation of the time domain body Jerk velocity signal for z axis.
        Normalized and bound within [-1,1].

time-body-acceleration-magnitude-std 
        
        Standard deviation of the magnitude of the time domain body linear acceleration signal.
        Calculated using the Euclidean norm.
        Normalized and bound within [-1,1].

time-gravity-acceleration-magnitude-std
        
        Standard deviation of the magnitude of the time domain gravity linear acceleration signal.
        Calculated using the Euclidean norm.
        Normalized and bound within [-1,1].

time-body-acceleration-jerk-magnitude-std 
        
        Standard deviation of the magnitude of the time domain body Jerk acceleration signal.
        Calculated using the Euclidean norm.
        Normalized and bound within [-1,1].

time-body-velocity-magnitude-std 
        
        Standard deviation of the magnitude of the time domain body linear velocity signal.
        Calculated using the Euclidean norm.
        Normalized and bound within [-1,1].

time-body-velocity-jerk-magnitude-std 
        
        Standard deviation of the magnitude of the time domain body Jerk velocity signal.
        Calculated using the Euclidean norm.
        Normalized and bound within [-1,1].

freq-body-acceleration-std-x-axis
        
        Standard deviation of the frequency domain body linear acceleration signal for x axis.
        Normalized and bound within [-1,1].

freq-body-acceleration-std-y-axis
        
        Standard deviation of the frequency domain body linear acceleration signal for y axis.
        Normalized and bound within [-1,1].

freq-body-acceleration-std-z-axis          
        
        Standard deviation of the frequency domain body linear acceleration signal for z axis.
        Normalized and bound within [-1,1].

freq-body-acceleration-jerk-std-x-axis
        
        Standard deviation of the frequency domain body Jerk acceleration signal for x axis.
        Normalized and bound within [-1,1].

freq-body-acceleration-jerk-std-y-axis 
        
        Standard deviation of the frequency domain body Jerk acceleration signal for y axis.
        Normalized and bound within [-1,1].

freq-body-acceleration-jerk-std-z-axis     
        
        Standard deviation of the frequency domain body Jerk acceleration signal for z axis.
        Normalized and bound within [-1,1].

freq-body-velocity-std-x-axis                  
        
        Standard deviation of the frequency domain body linear velocity signal for x axis.
        Normalized and bound within [-1,1].

freq-body-velocity-std-y-axis 
        
        Standard deviation of the frequency domain body linear velocity signal for y axis.
        Normalized and bound within [-1,1].

freq-body-velocity-std-z-axis              
        
        Standard deviation of the frequency domain body linear velocity signal for z axis.
        Normalized and bound within [-1,1].

freq-body-acceleration-magnitude-std 
        
        Standard deviation of the magnitude of the frequency domain body linear acceleration signal.
        Calculated using the Euclidean norm.
        Normalized and bound within [-1,1].

freq-bodybody-acceleration-jerk-magnitude-std  
        
        Standard deviation of the magnitude of the frequency domain body Jerk acceleration signal.
        Calculated using the Euclidean norm.
        Normalized and bound within [-1,1].
        
freq-bodybody-velocity-magnitude-std 
        
        Standard deviation of the magnitude of the frequency domain body linear velocity signal.
        Calculated using the Euclidean norm.
        Normalized and bound within [-1,1].

freq-bodybody-velocity-jerk-magnitude-std  
        
        Standard deviation of the magnitude of the frequency domain body Jerk velocity signal.
        Calculated using the Euclidean norm.
        Normalized and bound within [-1,1].
