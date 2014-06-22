# Read files and create dataset
getData <- function(dataType, columnames){
    
    subject<- read.table(paste("./",dataType,"/","subject_", dataType, ".txt", sep = ""), header=F, col.names=c("SubjectID"))
    activity <- read.table(paste("./",dataType,"/","y_", dataType, ".txt", sep = ""), header=F, col.names=c("ActivityID"))  
    x <- read.table(paste("./",dataType,"/","X_", dataType, ".txt", sep = ""), header=F, col.names= columnames$Feature) 
    
    return (cbind(subject,activity,x)) 
}


# Download dataset zip file and unzip files if does not exists.
if (!file.exists("UCI HAR Dataset")) 
{
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    dir.create("UCI HAR Dataset")
    download.file(url, "dataset.zip")
    unzip("./dataset.zip")
}

# Get Activity Labels and Features
setwd("./UCI HAR Dataset")
activity_labels <- read.table("activity_labels.txt", header=F, col.names=c("ActivityID", "ActivityName"))
features <- read.table("features.txt", header=F, col.names=c("FeatureID", "Feature"))

# Get test data
test <- getData("test", features)

# Get train data
train <- getData("train", features)

# Merge test and train data

data <- rbind(test, train)

# Extracts only the measurements on the mean and standard deviation for each measurement
data1 <- data[, c(grep("SubjectID", colnames(data)),grep("ActivityID", colnames(data)),grep("std", colnames(data)), grep("mean", colnames(data)))]

# Set descriptive activity names to name the activities in the data set
data_set1 <- merge(data1, activity_labels, )

# Save tidy dataset
write.csv(data_set1,"tidydataset1.csv")


# Melt data to required ids for average
library(reshape2)
datamelt <- melt(data_set1, id=c("ActivityID", "SubjectID", "ActivityName"), measure.vars=setdiff(colnames(data_set1), c("ActivityID", "SubjectID", "ActivityName")))

# Get the average of each variable for each activity and each subject
data_set2 <- dcast(datamelt, datamelt$ActivityName + datamelt$SubjectID ~ variable, mean)  

# Save average tidy dataset
write.csv(data_set2,"tidydataset2.csv")



