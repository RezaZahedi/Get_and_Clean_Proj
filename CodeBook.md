Getting And Cleaning Data Course Project Code Book
================
Reza Zahedi
October 25, 2018

Data Transformations and other steps in *"run\_analysis.R"* :
-------------------------------------------------------------

#### Point 1

Reading all data sets into R.

#### point 2

Merging the all the imported data sets.

#### point 3

Assigning descriptive activity names to name the activities in the data set.

#### point 4

Extracting only the measurements on the mean and standard deviation for each measurement.

#### point 5

Appropriately labeling of the data set with descriptive variable names using *regular expressions*.

#### point 6.1

First way to creat a second, independent tidy data set with the average of each variable for each activity and each subject.

#### point 6.2

Second way to creat a second, independent tidy data set with the average of each variable for each activity and each subject.

Initial and Final variable names in data set:
---------------------------------------------

<table class="table table-striped table-hover" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Old Names
</th>
<th style="text-align:left;">
New Names
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Subject
</td>
<td style="text-align:left;">
Subject
</td>
</tr>
<tr>
<td style="text-align:left;">
Activity
</td>
<td style="text-align:left;">
Activity
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyAcc-mean()-X
</td>
<td style="text-align:left;">
TimeDomain.Body.Linear.Acceleration.Signal.Mean.X
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyAcc-mean()-Y
</td>
<td style="text-align:left;">
TimeDomain.Body.Linear.Acceleration.Signal.Mean.Y
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyAcc-mean()-Z
</td>
<td style="text-align:left;">
TimeDomain.Body.Linear.Acceleration.Signal.Mean.Z
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyAcc-std()-X
</td>
<td style="text-align:left;">
TimeDomain.Body.Linear.Acceleration.Signal.Std.X
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyAcc-std()-Y
</td>
<td style="text-align:left;">
TimeDomain.Body.Linear.Acceleration.Signal.Std.Y
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyAcc-std()-Z
</td>
<td style="text-align:left;">
TimeDomain.Body.Linear.Acceleration.Signal.Std.Z
</td>
</tr>
<tr>
<td style="text-align:left;">
tGravityAcc-mean()-X
</td>
<td style="text-align:left;">
TimeDomain.Gravity.Acceleration.Signal.Mean.X
</td>
</tr>
<tr>
<td style="text-align:left;">
tGravityAcc-mean()-Y
</td>
<td style="text-align:left;">
TimeDomain.Gravity.Acceleration.Signal.Mean.Y
</td>
</tr>
<tr>
<td style="text-align:left;">
tGravityAcc-mean()-Z
</td>
<td style="text-align:left;">
TimeDomain.Gravity.Acceleration.Signal.Mean.Z
</td>
</tr>
<tr>
<td style="text-align:left;">
tGravityAcc-std()-X
</td>
<td style="text-align:left;">
TimeDomain.Gravity.Acceleration.Signal.Std.X
</td>
</tr>
<tr>
<td style="text-align:left;">
tGravityAcc-std()-Y
</td>
<td style="text-align:left;">
TimeDomain.Gravity.Acceleration.Signal.Std.Y
</td>
</tr>
<tr>
<td style="text-align:left;">
tGravityAcc-std()-Z
</td>
<td style="text-align:left;">
TimeDomain.Gravity.Acceleration.Signal.Std.Z
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyAccJerk-mean()-X
</td>
<td style="text-align:left;">
TimeDomain.Body.Linear.Jerk.Signal.Mean.X
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyAccJerk-mean()-Y
</td>
<td style="text-align:left;">
TimeDomain.Body.Linear.Jerk.Signal.Mean.Y
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyAccJerk-mean()-Z
</td>
<td style="text-align:left;">
TimeDomain.Body.Linear.Jerk.Signal.Mean.Z
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyAccJerk-std()-X
</td>
<td style="text-align:left;">
TimeDomain.Body.Linear.Jerk.Signal.Std.X
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyAccJerk-std()-Y
</td>
<td style="text-align:left;">
TimeDomain.Body.Linear.Jerk.Signal.Std.Y
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyAccJerk-std()-Z
</td>
<td style="text-align:left;">
TimeDomain.Body.Linear.Jerk.Signal.Std.Z
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyGyro-mean()-X
</td>
<td style="text-align:left;">
TimeDomain.Body.Angular.Acceleration.Signal.Mean.X
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyGyro-mean()-Y
</td>
<td style="text-align:left;">
TimeDomain.Body.Angular.Acceleration.Signal.Mean.Y
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyGyro-mean()-Z
</td>
<td style="text-align:left;">
TimeDomain.Body.Angular.Acceleration.Signal.Mean.Z
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyGyro-std()-X
</td>
<td style="text-align:left;">
TimeDomain.Body.Angular.Acceleration.Signal.Std.X
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyGyro-std()-Y
</td>
<td style="text-align:left;">
TimeDomain.Body.Angular.Acceleration.Signal.Std.Y
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyGyro-std()-Z
</td>
<td style="text-align:left;">
TimeDomain.Body.Angular.Acceleration.Signal.Std.Z
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyGyroJerk-mean()-X
</td>
<td style="text-align:left;">
TimeDomain.Body.Angular.Jerk.Signal.Mean.X
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyGyroJerk-mean()-Y
</td>
<td style="text-align:left;">
TimeDomain.Body.Angular.Jerk.Signal.Mean.Y
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyGyroJerk-mean()-Z
</td>
<td style="text-align:left;">
TimeDomain.Body.Angular.Jerk.Signal.Mean.Z
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyGyroJerk-std()-X
</td>
<td style="text-align:left;">
TimeDomain.Body.Angular.Jerk.Signal.Std.X
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyGyroJerk-std()-Y
</td>
<td style="text-align:left;">
TimeDomain.Body.Angular.Jerk.Signal.Std.Y
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyGyroJerk-std()-Z
</td>
<td style="text-align:left;">
TimeDomain.Body.Angular.Jerk.Signal.Std.Z
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyAccMag-mean()
</td>
<td style="text-align:left;">
TimeDomain.Body.Linear.Acceleration.Signal.Magnitude.Mean
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyAccMag-std()
</td>
<td style="text-align:left;">
TimeDomain.Body.Linear.Acceleration.Signal.Magnitude.Std
</td>
</tr>
<tr>
<td style="text-align:left;">
tGravityAccMag-mean()
</td>
<td style="text-align:left;">
TimeDomain.Gravity.Acceleration.Signal.Magnitude.Mean
</td>
</tr>
<tr>
<td style="text-align:left;">
tGravityAccMag-std()
</td>
<td style="text-align:left;">
TimeDomain.Gravity.Acceleration.Signal.Magnitude.Std
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyAccJerkMag-mean()
</td>
<td style="text-align:left;">
TimeDomain.Body.Linear.Jerk.Signal.Magnitude.Mean
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyAccJerkMag-std()
</td>
<td style="text-align:left;">
TimeDomain.Body.Linear.Jerk.Signal.Magnitude.Std
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyGyroMag-mean()
</td>
<td style="text-align:left;">
TimeDomain.Body.Angular.Acceleration.Signal.Magnitude.Mean
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyGyroMag-std()
</td>
<td style="text-align:left;">
TimeDomain.Body.Angular.Acceleration.Signal.Magnitude.Std
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyGyroJerkMag-mean()
</td>
<td style="text-align:left;">
TimeDomain.Body.Angular.Jerk.Signal.Magnitude.Mean
</td>
</tr>
<tr>
<td style="text-align:left;">
tBodyGyroJerkMag-std()
</td>
<td style="text-align:left;">
TimeDomain.Body.Angular.Jerk.Signal.Magnitude.Std
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAcc-mean()-X
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Acceleration.Signal.Mean.X
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAcc-mean()-Y
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Acceleration.Signal.Mean.Y
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAcc-mean()-Z
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Acceleration.Signal.Mean.Z
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAcc-std()-X
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Acceleration.Signal.Std.X
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAcc-std()-Y
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Acceleration.Signal.Std.Y
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAcc-std()-Z
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Acceleration.Signal.Std.Z
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAcc-meanFreq()-X
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Acceleration.Signal.Mean.Freq.X
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAcc-meanFreq()-Y
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Acceleration.Signal.Mean.Freq.Y
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAcc-meanFreq()-Z
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Acceleration.Signal.Mean.Freq.Z
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAccJerk-mean()-X
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Jerk.Signal.Mean.X
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAccJerk-mean()-Y
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Jerk.Signal.Mean.Y
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAccJerk-mean()-Z
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Jerk.Signal.Mean.Z
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAccJerk-std()-X
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Jerk.Signal.Std.X
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAccJerk-std()-Y
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Jerk.Signal.Std.Y
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAccJerk-std()-Z
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Jerk.Signal.Std.Z
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAccJerk-meanFreq()-X
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Jerk.Signal.Mean.Freq.X
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAccJerk-meanFreq()-Y
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Jerk.Signal.Mean.Freq.Y
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAccJerk-meanFreq()-Z
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Jerk.Signal.Mean.Freq.Z
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyGyro-mean()-X
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Angular.Acceleration.Signal.Mean.X
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyGyro-mean()-Y
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Angular.Acceleration.Signal.Mean.Y
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyGyro-mean()-Z
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Angular.Acceleration.Signal.Mean.Z
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyGyro-std()-X
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Angular.Acceleration.Signal.Std.X
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyGyro-std()-Y
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Angular.Acceleration.Signal.Std.Y
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyGyro-std()-Z
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Angular.Acceleration.Signal.Std.Z
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyGyro-meanFreq()-X
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Angular.Acceleration.Signal.Mean.Freq.X
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyGyro-meanFreq()-Y
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Angular.Acceleration.Signal.Mean.Freq.Y
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyGyro-meanFreq()-Z
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Angular.Acceleration.Signal.Mean.Freq.Z
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAccMag-mean()
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Acceleration.Signal.Magnitude.Mean
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAccMag-std()
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Acceleration.Signal.Magnitude.Std
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyAccMag-meanFreq()
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Acceleration.Signal.Magnitude.Mean.Freq
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyBodyAccJerkMag-mean()
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Jerk.Signal.Magnitude.Mean
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyBodyAccJerkMag-std()
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Jerk.Signal.Magnitude.Std
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyBodyAccJerkMag-meanFreq()
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Linear.Jerk.Signal.Magnitude.Mean.Freq
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyBodyGyroMag-mean()
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Angular.Acceleration.Signal.Magnitude.Mean
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyBodyGyroMag-std()
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Angular.Acceleration.Signal.Magnitude.Std
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyBodyGyroMag-meanFreq()
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Angular.Acceleration.Signal.Magnitude.Mean.Freq
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyBodyGyroJerkMag-mean()
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Angular.Jerk.Signal.Magnitude.Mean
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyBodyGyroJerkMag-std()
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Angular.Jerk.Signal.Magnitude.Std
</td>
</tr>
<tr>
<td style="text-align:left;">
fBodyBodyGyroJerkMag-meanFreq()
</td>
<td style="text-align:left;">
FrequencyDomain.Body.Angular.Jerk.Signal.Magnitude.Mean.Freq
</td>
</tr>
</tbody>
</table>
