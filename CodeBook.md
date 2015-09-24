---
title: "Code Book"
author: "Andreea Röthig"
date: "24. September 2015"
output: html_document
---

## The variables

The dataset "DT_extract_avg" includes the following variables:

 [1] "subject"                             "activity"                            "avg.tBodyAcc-std()-X"               
 [4] "avg.tBodyAcc-std()-Y"                "avg.tBodyAcc-std()-Z"                "avg.tGravityAcc-std()-X"            
 [7] "avg.tGravityAcc-std()-Y"             "avg.tGravityAcc-std()-Z"             "avg.tBodyAccJerk-std()-X"           
[10] "avg.tBodyAccJerk-std()-Y"            "avg.tBodyAccJerk-std()-Z"            "avg.tBodyGyro-std()-X"              
[13] "avg.tBodyGyro-std()-Y"               "avg.tBodyGyro-std()-Z"               "avg.tBodyGyroJerk-std()-X"          
[16] "avg.tBodyGyroJerk-std()-Y"           "avg.tBodyGyroJerk-std()-Z"           "avg.tBodyAccMag-std()"              
[19] "avg.tGravityAccMag-std()"            "avg.tBodyAccJerkMag-std()"           "avg.tBodyGyroMag-std()"             
[22] "avg.tBodyGyroJerkMag-std()"          "avg.fBodyAcc-std()-X"                "avg.fBodyAcc-std()-Y"               
[25] "avg.fBodyAcc-std()-Z"                "avg.fBodyAccJerk-std()-X"            "avg.fBodyAccJerk-std()-Y"           
[28] "avg.fBodyAccJerk-std()-Z"            "avg.fBodyGyro-std()-X"               "avg.fBodyGyro-std()-Y"              
[31] "avg.fBodyGyro-std()-Z"               "avg.fBodyAccMag-std()"               "avg.fBodyBodyAccJerkMag-std()"      
[34] "avg.fBodyBodyGyroMag-std()"          "avg.fBodyBodyGyroJerkMag-std()"      "avg.tBodyAcc-mean()-X"              
[37] "avg.tBodyAcc-mean()-Y"               "avg.tBodyAcc-mean()-Z"               "avg.tGravityAcc-mean()-X"           
[40] "avg.tGravityAcc-mean()-Y"            "avg.tGravityAcc-mean()-Z"            "avg.tBodyAccJerk-mean()-X"          
[43] "avg.tBodyAccJerk-mean()-Y"           "avg.tBodyAccJerk-mean()-Z"           "avg.tBodyGyro-mean()-X"             
[46] "avg.tBodyGyro-mean()-Y"              "avg.tBodyGyro-mean()-Z"              "avg.tBodyGyroJerk-mean()-X"         
[49] "avg.tBodyGyroJerk-mean()-Y"          "avg.tBodyGyroJerk-mean()-Z"          "avg.tBodyAccMag-mean()"             
[52] "avg.tGravityAccMag-mean()"           "avg.tBodyAccJerkMag-mean()"          "avg.tBodyGyroMag-mean()"            
[55] "avg.tBodyGyroJerkMag-mean()"         "avg.fBodyAcc-mean()-X"               "avg.fBodyAcc-mean()-Y"              
[58] "avg.fBodyAcc-mean()-Z"               "avg.fBodyAcc-meanFreq()-X"           "avg.fBodyAcc-meanFreq()-Y"          
[61] "avg.fBodyAcc-meanFreq()-Z"           "avg.fBodyAccJerk-mean()-X"           "avg.fBodyAccJerk-mean()-Y"          
[64] "avg.fBodyAccJerk-mean()-Z"           "avg.fBodyAccJerk-meanFreq()-X"       "avg.fBodyAccJerk-meanFreq()-Y"      
[67] "avg.fBodyAccJerk-meanFreq()-Z"       "avg.fBodyGyro-mean()-X"              "avg.fBodyGyro-mean()-Y"             
[70] "avg.fBodyGyro-mean()-Z"              "avg.fBodyGyro-meanFreq()-X"          "avg.fBodyGyro-meanFreq()-Y"         
[73] "avg.fBodyGyro-meanFreq()-Z"          "avg.fBodyAccMag-mean()"              "avg.fBodyAccMag-meanFreq()"         
[76] "avg.fBodyBodyAccJerkMag-mean()"      "avg.fBodyBodyAccJerkMag-meanFreq()"  "avg.fBodyBodyGyroMag-mean()"        
[79] "avg.fBodyBodyGyroMag-meanFreq()"     "avg.fBodyBodyGyroJerkMag-mean()"     "avg.fBodyBodyGyroJerkMag-meanFreq()"

## The original data

The variable names represent some time (prefix 't' to denote time) or frequency (prefix 'f' to denote frequency) measurements of the accelerometer and gyroscope embedded in the smartphones of each of the 30 persons that volunteered. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone. 

### Further details

Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The features selected for this database come from the (corresponding) accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

## Transformations of the original data

1) The new dataset includes both test and training data form the source.

2) From the original set of variables, only the ones that estimated the mean and standard deviation were included in the new dataset. 

3) The new (factor) variable "activity" has descriptive activity levels insted of numbers: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

4) The variable names of the new dataset are taken from the original source for the included features.

5) Finaly, the variables are quantifying the average of the original data for each person and each activity. Therefore, in the names of the variables was included the text avg. 

