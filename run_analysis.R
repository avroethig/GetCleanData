rm(list=ls())
require(plyr)

# download file if it doesn't exist
if (!file.exists("OrigDataset.zip"))
{
  fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"  
  download.file(fileurl,destfile = "OrigDataset.zip")  
}

# unzip file if unzipped directory doesn't exist
if (!dir.exists("UCI HAR Dataset"))
{
  unzip("OrigDataset.zip")
}

fl_features <- "./UCI HAR Dataset/features.txt"
DT_features<- read.table(fl_features,sep = " ", header=F)

fl_actlab <- "./UCI HAR Dataset/activity_labels.txt"
DT_actlab<- read.table(fl_actlab,sep = " ", header=F)

# ---------------------------------
fl_test <- "./UCI HAR Dataset/test/X_test.txt"
DT_test<- read.table(fl_test, header=F,row.names=NULL)

fl_testlab <- "./UCI HAR Dataset/test/y_test.txt"
DT_testlab<- read.table(fl_testlab, header=F)

fl_testsubj <- "./UCI HAR Dataset/test/subject_test.txt"
DT_testsubj<- read.table(fl_testsubj, header=F)

#---------------------------------------
fl_train <- "./UCI HAR Dataset/train/X_train.txt"
DT_train<- read.table(fl_train, header=F,row.names=NULL)

fl_trainlab <- "./UCI HAR Dataset/train/y_train.txt"
DT_trainlab<- read.table(fl_trainlab, header=F)

fl_trainsubj <- "./UCI HAR Dataset/train/subject_train.txt"
DT_trainsubj<- read.table(fl_trainsubj, header=F)

# -----------------------------------------------
# rename rownames
rownames(DT_test) <- paste("a",as.character(seq_along(1:nrow(DT_test))),sep="")
rownames(DT_testsubj) <- paste("a",as.character(seq_along(1:nrow(DT_testsubj))),sep="")
rownames(DT_testlab)  <- paste("a",as.character(seq_along(1:nrow(DT_testlab))),sep="")

# --------------------merge rows------------------------
DT <- rbind(DT_train,DT_test)
DT_subj <- rbind(DT_trainsubj,DT_testsubj)
DT_lab  <- rbind(DT_trainlab,DT_testlab)

# ---------------------add subject and activity label
names(DT) <- DT_features[,2]
act_factor <- factor(as.numeric(unlist(DT_lab)))
act_factor <- revalue(act_factor,c("1"="WALKING","2"="WALKING_UPSTAIRS","3"="WALKING_DOWNSTAIRS","4"="SITTING","5"="STANDING","6"="LAYING"))
DT <- mutate(DT,subject = factor(as.numeric(unlist(DT_subj))),activity = act_factor)
 

DT_extract <- DT[,c(grep("std()",names(DT)),grep("mean()",names(DT)),grep("subject",names(DT)),grep("activity",names(DT)))]

DT_extract_avg <- ddply(DT_extract,.(subject,activity),numcolwise(mean,na.rm = TRUE))

write.table(DT_extract_avg,file="DT_extract_avg.txt",row.name = F)