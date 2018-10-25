rm(list = ls())
setwd("C:\\Users\\rezab\\Desktop\\D.S\\Coursera\\2.Getting and Cleaning data\\Project")
##
## Point 1
##
### Reading train data into R

     if(!exists("x.train")){
     x.train <- read.table(file = "./UCI HAR Dataset/train/X_train.txt")
     
}


if(!exists("y.train")){
     y.train <- read.table(file = "./UCI HAR Dataset/train/y_train.txt")
}

if(!exists("subject.train")){
     subject.train <- read.table(file = "./UCI HAR Dataset/train/subject_train.txt")
}

### Reading test data into R

if(!exists("x.test")){
     x.test <- read.table(file = "./UCI HAR Dataset/test/X_test.txt")
}

if(!exists("y.test")){
     y.test <- read.table(file = "./UCI HAR Dataset/test/y_test.txt")
}

if(!exists("subject.test")){
     subject.test <- read.table(file = "./UCI HAR Dataset/test/subject_test.txt")
}

### Reading Variable names into R
if(!exists("features")){
     features <- read.table(file = "./UCI HAR Dataset/features.txt",
                            stringsAsFactors = FALSE)
}

### Reading Activity labels into R
if(!exists("activity.type")){
     activity.type<- read.table(file = "./UCI HAR Dataset/activity_labels.txt",
                                stringsAsFactors = FALSE)
}
##
## Point 2
##
### Creating a data frame composed of each subject's identification number,
### activity type identification number and other data for measured variables.

x.train.total <- cbind(subject.train, y.train, x.train)

x.test.total <- cbind(subject.test, y.test, x.test)

### Merging the training and the test sets to create one data set.

x.total <- rbind(x.train.total, x.test.total)

### removing reduntant data sets
#rm(x.train.total, subject.train, y.train, x.train,
#   x.test.total, subject.test, y.test, x.test)

### Naming the data set

names(x.total)[3:ncol(x.total)] <- features[, 2]

names(x.total)[1:2] <- c("Subject", "Activity")

##
## Point 3
##
### Assigning descriptive activity names to name the activities in the data set
for(i in 1:6){
     x.total[grepl(x = x.total[, 2], pattern = activity.type[i, 1]), 2] <-
          activity.type[i, 2]
}

##
## Point 4
##
### Extracting only the measurements on the mean and standard deviation for
### each measurement.

library(dplyr)

aux <-(grepl(x = names(x.total), pattern = "[Mm]ean|[Ss]td|Subject|Activity"))

x.total <- x.total[, aux]

aux <- (grepl(x = names(x.total), pattern = "angle"))

x.total <- x.total[, !aux]

##
## Point 5
##
### saving old names

oldnames <- names(x.total)

### Appropriately labeling of the data set with descriptive variable names.

library(stringr)

names(x.total) <- make.names(names(x.total))

names(x.total) <- names(x.total) %>%
     str_replace_all("\\.", "") %>%
     str_replace("[Ff]req", ".Freq") %>%
     str_replace("^t", "TimeDomain.") %>%
     str_replace("^f", "FrequencyDomain.") %>%
     str_replace("BodyAccJerk", "Body.Linear.Jerk.Signal.")  %>%
     str_replace("BodyGyroJerk", "Body.Angular.Jerk.Signal.")  %>%
     str_replace("BodyAcc", "Body.Linear.Acceleration.Signal.") %>%
     str_replace("BodyGyro", "Body.Angular.Acceleration.Signal.") %>%
     str_replace("GravityAcc", "Gravity.Acceleration.Signal.") %>%
     str_replace("Mag", "Magnitude.") %>%
     str_replace("[Mm]ean", "Mean") %>%
     str_replace("[Ss]td", "Std") %>%
     str_replace("X$", ".X") %>%
     str_replace("Y$", ".Y") %>%
     str_replace("Z$", ".Z") %>%
     str_replace("BodyBody", "Body")

### new names
newnames <- names(x.total)

##
## Point 6.1
##
### Createing a second, independent tidy data set with the average of
### each variable for each activity and each subject.
library(reshape2)

x.t.average <- tapply(x.total[, 3],
                      list(x.total$Subject, x.total$Activity),
                      mean)

### Completed data set averaged on each variable: x.t.average
x.t.average <- melt(data = x.t.average,
                    measure.vars = activity.type[, 2])

names(x.t.average)[3] <- names(x.total)[3] 

for(i in 4:length(x.total)){
     aux <- melt(data = tapply(x.total[, i],
                               list(x.total$Subject, x.total$Activity),
                               mean),
                 measure.vars = activity.type[, 2])
     
     names(aux)[3] <- names(x.total)[i]
     x.t.average <- merge(x = x.t.average, y = aux)
     
}
names(x.t.average)[1:2] <- c("Subject", "Activity")

x.t.average <- arrange(x.t.average, Subject)


write.table(x = x.t.average, file = "./TidyData.txt", row.names = FALSE)

##
## Point 6.2
##
### Alternative way of createing a second, independent tidy data set with the
### average of each variable for each activity and each subject.

x.t.melted <- melt(x.total, id = c("Subject", "Activity"))
x.t.mean <- dcast(x.t.melted, Subject + Activity ~ variable, mean)


write.table(x = x.t.mean, file = "./TidyData2.txt", row.names = FALSE)
