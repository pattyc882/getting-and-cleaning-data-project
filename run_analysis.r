library(zip)
library(dplyr)


fileUrl<-("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
download.file(fileUrl, destfile = "./data/project.zip")
##unzip data file to projectfiles folder in working directory

unzip("./data/project.zip", exdir="./data/projectfiles")
##read tables in project files
xtest<-read.table("./data/projectfiles/UCI HAR Dataset/test/X_test.txt")
ytest<-read.table("./data/projectfiles/UCI HAR Dataset/test/y_test.txt")
subjecttest<-read.table("./data/projectfiles/UCI HAR Dataset/test/subject_test.txt")
xtrain<-read.table("./data/projectfiles/UCI HAR Dataset/train/X_train.txt")
ytrain<-read.table("./data/projectfiles/UCI HAR Dataset/train/y_train.txt")
subjecttrain<-read.table("./data/projectfiles/UCI HAR Dataset/train/subject_train.txt")
activitylabels<-read.table("./data/projectfiles/UCI HAR Dataset/activity_labels.txt")
features<-read.table("./data/projectfiles/UCI HAR Dataset/features.txt")

## remove column one to use features as column names
features<-features[-c(1)]
## transpose dataframe
transposedfeatures<-t(features)

## remove first column since it's a duplicate of the index
testsubjects<-subjecttest[-c(1)]
trainsubjects<-subjecttrain[-c(1)]

##assign column names to training dataframe
colnames(xtrain)<- transposedfeatures

##join tables to assign activity labels to ytrain
activitytrain<-full_join(ytrain, activitylabels)

##join activity and subject to train table
train<-cbind(activitytrain, xtrain)
train<-cbind(subjecttrain, train)

##remove unnecessary activity code column
train<-train[-c(2)]

##assign columnnames to test dataframe
colnames(xtest)<- transposedfeatures

##join tables to assign activity labels to ytest
activitytest<-full_join(ytest, activitylabels)

##join activity and subject to test table
test<-cbind(activitytest, xtest)
test<-cbind(subjecttest, test)

##remove unecessary activity code column
test<-test[-c(2)]

##combine train and test data
fulldataset<-rbind(train, test)

#rename subject number and activity columns
names(fulldataset)[1]<-paste("subjectnumber")
names(fulldataset)[2]<-paste("activity")

##subset table to only include subject, activity and any columns containing mean or std(standard deviation)
meanstdcolumns<-grep ("subject|activity|mean|std", names(fulldataset), value=TRUE)
finaldataset<-fulldataset [,meanstdcolumns]

##make column names more readable
names(finaldataset)<- gsub(x = names(finaldataset), pattern = "tBody", replacement = "timebody")  
names(finaldataset)<- gsub(x = names(finaldataset), pattern = "tGravity", replacement = "timegravity")
names(finaldataset)<- gsub(x = names(finaldataset), pattern = "fBody", replacement = "frequencybody")
names(finaldataset)<- gsub(x = names(finaldataset), pattern = "frequencybodyBody", replacement = "frequencybody")
names(finaldataset)<- gsub(x = names(finaldataset), pattern = "tBody", replacement = "timebody")
names(finaldataset)<- gsub(x = names(finaldataset), pattern = "Acc", replacement = "accelerometer")
names(finaldataset)<- gsub(x = names(finaldataset), pattern = "Gyro", replacement = "gyroscope")
names(finaldataset)<- gsub(x = names(finaldataset), pattern = "Jerk", replacement = "jerk")
names(finaldataset)<- gsub(x = names(finaldataset), pattern = "Freq", replacement = "freq")
names(finaldataset)<- gsub(x = names(finaldataset), pattern = "Mag", replacement = "mag")

##create summary table grouped on subject and activity
summarizeddata<-finaldataset %>%
  group_by(subjectnumber, activity) %>%
  summarize(across("timebodyaccelerometer-mean()-X":"frequencybodygyroscopejerkmag-meanfreq()", mean))

#export dataframe to summarizedprojectdat.csv in working directory
write.table(summarizeddata,"./data/summarizedprojectdata.txt", row.names = FALSE)
