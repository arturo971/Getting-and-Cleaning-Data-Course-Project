#here im  downloading the files and setting the workking directory

if (!dir.exists("/Users/arturo/Dropbox/Coursera/data/getting and cleaning data/week4/project")){
        dir.create("/Users/arturo/Dropbox/Coursera/data/getting and cleaning data/week4/project")
}
setwd("/Users/arturo/Dropbox/Coursera/data/getting and cleaning data/week4/project")
if (!dir.exists("/Users/arturo/Dropbox/Coursera/data/getting and cleaning data/week4/project/UCI HAR Dataset")){
        url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        temp<-tempfile()
        download.file(url = url,temp, method = "curl")
        unzip(temp)
        unlink(temp)
}

#Here im reading all the tables and giving them names 

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

#im setting the variables names included in the txt files.

colnames(test)<-as.list(features[,2])
colnames(train)<-as.list(features[,2])

#binding the subjects, activity and the measurments into one dataset each for train and test
test<-cbind(test_subject,test_activity,test)
train<-cbind(train_subject,train_activity,train)

#im setting the activity as a factor and giving it a label for easier usage

test[,2]<-ordered(test[,2],levels=activitylabels$V1,labels=activitylabels$V2)
train[,2]<-ordered(train[,2],levels=activitylabels$V1,labels=activitylabels$V2)

library(dplyr)
#this part is optional just to know if the obervation comed from a test or a training
test$type<-1
train$type<-2

#joining the train and test datasets and just keeping the variableas that have mean and std
alldata<-rbind(test,train)
alldata<-alldata[,c(1,2,grep("mean\\(\\)|std\\(\\)|type",colnames(alldata)))]
alldata$type<-as.factor(alldata$type)
alldata$type<-ordered(alldata$type,levels=c(1,2),labels=c("test","train"))

#giving easier names to understand to the variables
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

#grouping by subject and activity, and getting the mean 
alldatabysubject<-group_by(alldata,subject,activity)
mean_by_subj_and_activity<-summarise_all(alldatabysubject,mean)

#Exporting the tidy data set into a csv file
write.table(alldatabysubject,"tidydata.csv",row.names = F)

