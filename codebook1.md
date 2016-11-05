---
title: "Code Book"
output: html_document
---
## Packages necessary
Dplyr

```{r setup, include=FALSE}
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dir<-tempdir()
temp<-tempfile()
download.file(url = url,temp, method = "curl")
unzip(temp, exdir = dir)
unlink(temp)
setwd(dir)
activitylabels<-read.table("UCI HAR Dataset/activity_labels.txt",
                           header = F,
                           colClasses = c("factor","character"))
features<-read.table("UCI HAR Dataset/features.txt",
                     header = F,
                     colClasses = c("factor","character"))

test<-read.table("UCI HAR Dataset/test/X_test.txt",header = F)
train<-read.table("UCI HAR Dataset/train/X_train.txt",header = F)
test_activity<-read.table("UCI HAR Dataset/test/y_test.txt",header = F, colClasses = c("factor"),col.names = c("activity"))
test_subject<-read.table("UCI HAR Dataset/test/subject_test.txt",header = F,colClasses = c("factor"),col.names = c("subject"))
train<-read.table("UCI HAR Dataset/train/X_train.txt",header = F)
train_subject<-read.table("UCI HAR Dataset/train/subject_train.txt",header = F,colClasses = c("factor"),col.names = c("subject"))
train_activity<-read.table("UCI HAR Dataset/train/y_train.txt",header = F,colClasses = c("factor"),col.names = c("activity"))
colnames(test)<-as.list(features[,2])
colnames(train)<-as.list(features[,2])
test<-cbind(test_subject,test_activity,test)
train<-cbind(train_subject,train_activity,train)

test[,2]<-ordered(test[,2],levels=activitylabels$V1,labels=activitylabels$V2)
train[,2]<-ordered(train[,2],levels=activitylabels$V1,labels=activitylabels$V2)

library(dplyr)
test$type<-1
train$type<-2
alldata<-rbind(test,train)
#select(test,contains("mean"))
alldata<-alldata[,c(1,2,grep("mean\\(\\)|std\\(\\)|type",colnames(alldata)))]
alldata$type<-as.factor(alldata$type)
alldata$type<-ordered(alldata$type,levels=c(1,2),labels=c("test","train"))


colnames(alldata)<-gsub("^t","time_",colnames(alldata))
colnames(alldata)<-gsub("^f","frequency_",colnames(alldata))
colnames(alldata)<-gsub("Acc","accelerometer_",colnames(alldata))
colnames(alldata)<-gsub("Gyro","gyroscopic_",colnames(alldata))
colnames(alldata)<-gsub("Body","body_",colnames(alldata))
colnames(alldata)<-gsub("mean\\(\\)","mean_",colnames(alldata))
colnames(alldata)<-gsub("std\\(\\)","sd_",colnames(alldata))
colnames(alldata)<-gsub("Mag", "Magnitude", names(alldata))
colnames(alldata)<-gsub("-", "", names(alldata))
colnames(alldata)<-gsub("Gravity", "gravity_", names(alldata))
colnames(alldata)<-gsub("Jerk", "jerk_", names(alldata))
colnames(alldata)<-gsub("time_ype", "type", names(alldata))
alldatabysubject<-group_by(alldata,subject,activity)
y<-summarise_all(alldatabysubject,mean)
```
## Data Source
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Data Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## Variables
```{r}
names(alldatabysubject)
```

## Structure of the final data frame
```{r}
str(alldatabysubject)
```

## Mean of the varibles by Subject and Activity
```{r}
head(tbl_df(suppressWarnings(summarise_all(alldatabysubject,mean))))
```

