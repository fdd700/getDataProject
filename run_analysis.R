##If data files are not there yet
if(!file.exists('./UCI HAR Dataset/train/X_train.txt') ){
  if(!file.exists('./data')) {
    dir.create('./data')    
  }  
  download.file(
    'http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip',
                './data/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip')

  #unzip into the working directory 
  unzip("./data/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
}


##Import Data form UCI HAR Dataset folder in working directory
x_train = read.table("./UCI HAR Dataset/train/X_train.txt")
x_test = read.table("./UCI HAR Dataset/test/X_test.txt")
y_train = read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train = read.table("./UCI HAR Dataset/train/subject_train.txt")
y_test = read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test = read.table("./UCI HAR Dataset/test/subject_test.txt")

#as a vector these two
features = read.table("./UCI HAR Dataset/features.txt")$V2
activity_labels = read.table("./UCI HAR Dataset/activity_labels.txt")$V2

#Clean column bames
clean = gsub("[[:punct:]]",
             "", features,
               ignore.case = FALSE, perl = FALSE)
colnames(x_train) = colnames(x_test) = clean
colnames(subject_train) = "Subject"
colnames(y_train) = "Activity"
colnames(subject_test) = "Subject"
colnames(y_test) = "Activity"

#mege data into one dataframe

tests = cbind(subject_test,y_test,x_test)
trains = cbind(subject_train,y_train,x_train)
dft = rbind(trains,tests)

#leave only colUmns needed
dfg=dft[, grep("mean|std|Subject|Activity", names(dft))]

#label activities
dfg$Activity = activity_labels[dfg$Activity]

#create the resulting dataframe by melting & casting 
library(reshape2)
df = dcast(melt(dfg, id.var = c("Subject", "Activity")),
			Subject + Activity ~ variable, mean)

#write the dataframe into a file
write.table(df, file="means.txt")