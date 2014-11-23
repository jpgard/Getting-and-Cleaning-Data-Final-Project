
##create directory if not already in existence, and download file to this directory


if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/galaxyData.zip",method="curl")


##unzip downloaded file

setwd("./data")

unzip("galaxyData.zip")

##read the test and training files, and then binds them into one dataset

setwd("./UCI HAR Dataset/test")

test <- cbind(read.table("X_test.txt"), read.table("y_test.txt"), read.table("subject_test.txt"))

setwd("../")
setwd("./train")

train <- cbind(read.table("X_train.txt"), read.table("y_train.txt"), read.table("subject_train.txt"))

fulldata <- rbind(test, train)

##attach names of variables to fulldata, from features.txt
##read names of variables from features.txt

setwd("../")
features <- read.table("features.txt")
vnames <- features[,2]

##assign names to variables in fulldata using vnames, "Activity" and "Subject"
colnames(fulldata) <- c(as.character(vnames), "Activity", "Subject")


##Use descriptive activity names to name the activities in the dataset; convert to factor

fulldata$Activity <- factor(fulldata$Activity, labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

##convert "Subject" variable to factor
fulldata$Subject <- factor(fulldata$Subject)


##begin section to subset out only measures for mean and std
##create index vector of variables that include std or mean, assign to allVars
subVars <- grep("std|mean", vnames, ignore.case=TRUE)

##include activity and subject variables in subset variables; assign to allVars
allVars <- sort(c(subVars, 562, 563))

##use the allVars index to subset data just to include strictly variables with mean or sd
##assign this to subset_data

subset_data <- fulldata[, allVars]

##begin section tomake syntactically valid names from column names in subset_data, and 
##assign to replace column names

colnames(subset_data) <- make.names(colnames(subset_data))

##remove extraneous periods and white space from column names introduced by make.names()
names(subset_data) <- gsub("\\.", "", names(subset_data))

library(stringr)
names(subset_data) <- str_trim(names(subset_data))

##replace X, Y, Z with text denoting axis measurement and time/frequency signal type,
##as specified in features_info.txt. Names do not include dots, underscores, or white
##spaces as described in lecture 04-01 ("Editing text variables"). 
##see CodeBook for detailed discussion of these transformations

names(subset_data) <- gsub("X", "XAxis", names(subset_data))
names(subset_data) <- gsub("Y", "YAxis", names(subset_data))
names(subset_data) <- gsub("Z", "ZAxis", names(subset_data))

names(subset_data) <- sub("^t", "Time", names(subset_data))
names(subset_data) <- sub("^f", "FrequencyDomainSignal", names(subset_data))
names(subset_data) <- sub("^anglet", "AngleTime", names(subset_data))
names(subset_data) <- sub("Acc", "Accelerometer", names(subset_data))
names(subset_data) <- sub("Gyro", "Gyroscope", names(subset_data))

##use melt function to obtain "tall/skinny" data, with "Activity" and "Subject" as id variables

library(reshape2)
subset_dataMelt <- melt(subset_data, id=c("Activity", "Subject"))

##compute and return mean value for each unique subject/activity/variable combination

library(plyr)
finalSummary <- ddply(subset_dataMelt, .(Subject, Activity, variable), summarize, average = mean(value))
finalSummary

##script to write table of finalSummary (remove commenting to run):
##write.table(finalSummary, file="./finalSummary.txt", row.names=FALSE)

