
# Entering the path where the UCI HAR Dataset lies

dataDir <- file.path(getwd(), "UCI HAR Dataset")



# Formulate paths for reading data sets

trainDataPath <- file.path(dataDir, "train/X_train.txt")
trainSubjectPath <- file.path(dataDir, "train/subject_train.txt")
trainActPath <- file.path(dataDir, "train/y_train.txt")

testDataPath <- file.path(dataDir, "test/X_test.txt")
testSubjectPath <- file.path(dataDir, "test/subject_test.txt")
testActPath <- file.path(dataDir, "test/y_test.txt")



# Read in:	Feature names, 
#		Sensor signals data set, 
#		Subjects data,
#		Activities data

coltitles <- read.table(file = paste0(dataDir,"/features.txt"), header = FALSE, stringsAsFactors = FALSE)
trainData <- read.table(file = trainDataPath, header = FALSE)
colnames(trainData) <- coltitles$V2
trainSubjects <- read.table(file = trainSubjectPath, header = FALSE)
trainAct <- read.table(file = trainActPath, header = FALSE)

testData <- read.table(file = testDataPath, header = FALSE)
colnames(testData) <- coltitles$V2
testSubjects <- read.table(file = testSubjectPath, header = FALSE)
testAct <- read.table(file = testActPath, header = FALSE)




# Step 1: Merge the training and test data sets to create one data set

trainDataset <- cbind(Subjects = trainSubjects$V1, Activities = trainAct$V1, trainData)
testDataset <- cbind(Subjects = testSubjects$V1, Activities = testAct$V1, testData)
fullDataset <- rbind(trainDataset, testDataset)




# Step 2: Extract only measurements on mean and standard deviation for each measurement

colInd <- grep("(Subjects|Activities|[Mm]ean|std)", colnames(fullDataset))
newDataset <- fullDataset[, colInd]




# Step 3: Use descriptive names for activities

newDataset$Activities <- factor(newDataset$Activities, labels = c("Walking", "Walking_Upstairs", "Walking_Downstairs", "Sitting", "Standing", "Laying"))




# Step 4: Label data set variables with descriptive names

colnames(newDataset) <- c("Subject", "Activity", "Time-AccBody-X-Mean", "Time-AccBody-Y-Mean", "Time-AccBody-Z-Mean", "Time-AccBody-X-Std", "Time-AccBody-Y-Std", 

"Time-AccBody-Z-Std", "Time-AccGravity-X-Mean", "Time-AccGravity-Y-Mean", "Time-AccGravity-Z-Mean", "Time-AccGravity-X-Std", "Time-AccGravity-Y-Std", "Time-

AccGravity-Z-Std", "Time-AccBody-Jerk-X-Mean", "Time-AccBody-Jerk-Y-Mean", "Time-AccBody-Jerk-Z-Mean", "Time-AccBody-Jerk-X-Std", "Time-AccBody-Jerk-Y-Std", 

"Time-AccBody-Jerk-Z-Std", "Time-GyroBody-X-mean", "Time-GyroBody-Y-Mean", "Time-GyroBody-Z-Mean", "Time-GyroBody-X-Std", "Time-GyroBody-Y-Std", "Time-GyroBody-

Z-Std", "Time-GyroBody-Jerk-X-Mean", "Time-GyroBody-Jerk-Y-Mean", "Time-GyroBody-Jerk-Z-Mean", "Time-GyroBody-Jerk-X-Std", "Time-GyroBody-Jerk-Y-Std", "Time-

GyroBody-Jerk-Z-Std", "Time-AccBody-Mag-Mean", "Time-AccBody-Mag-Std", "Time-AccGravity-Mag-Mean", "Time-AccGravity-Mag-Std", "Time-AccBody-Jerk-Mag-Mean", 

"Time-AccBody-Jerk-Mag-Std", "Time-GyroBody-Mag-Mean", "Time-GyroBody-Mag-Std", "Time-GyroBody-Jerk-Mag-Mean", "Time-GyroBody-Jerk-Mag-Std", "Freq-AccBody-X-

Mean", "Freq-AccBody-Y-Mean", "Freq-AccBody-Z-Mean", "Freq-AccBody-X-Std", "Freq-AccBody-Y-Std", "Freq-AccBody-Z-Std", "Freq-AccBody-meanFreq-X", "Freq-AccBody-

meanFreq-Y", "Freq-AccBody-meanFreq-Z", "Freq-AccBody-Jerk-X-Mean", "Freq-AccBody-Jerk-Y-Mean", "Freq-AccBody-Jerk-Z-Mean", "Freq-AccBody-Jerk-X-Std", "Freq-

AccBody-Jerk-Y-Std", "Freq-AccBody-Jerk-Z-Std", "Freq-AccBody-Jerk-meanFreq-X", "Freq-AccBody-Jerk-meanFreq-Y", "Freq-AccBody-Jerk-meanFreq-Z", "Freq-GyroBody-

X-Mean", "Freq-GyroBody-Y-Mean", "Freq-GyroBody-Z-Mean", "Freq-GyroBody-X-Std", "Freq-GyroBody-Y-Std", "Freq-GyroBody-Z-Std", "Freq-GyroBody-meanFreq-X", "Freq-

GyroBody-meanFreq-Y", "Freq-GyroBody-meanFreq-Z", "Freq-AccBody-Mag-Mean", "Freq-AccBody-Mag-Std", "Freq-AccBody-Mag-meanFreq", "FreqAccBodyBody-Jerk-Mag-Mean", 

"Freq-AccBodyBody-Jerk-Mag-Std", "Freq-AccBodyBody-Jerk-Mag-meanFreq", "Freq-GyroBodyBody-Mag-Mean", "Freq-GyroBodyBody-Mag-Std", "Freq-GyroBodyBody-Mag-

meanFreq", "Freq-GyroBodyBody-Jerk-Mag-Mean", "Freq-GyroBodyBody-Jerk-Mag-Std", "Freq-GyroBodyBody-Jerk-Mag-meanFreq", "angle(Time-AccBody-Mean,Gravity)", 

"angle(Time-AccBody-Jerk-Mean, gravityMean)", "angle(Time-GyroBody-Mean, gravityMean)", "angle(Time-GyroBody-Jerk-Mean, gravityMean)", "angle(X, gravityMean)", 

"angle(Y, gravityMean)", "angle(Z, gravityMean)")




# Step 5: Create an independent tidy data set with average of each variable for each activity and subject
#	First identify variables required for grouping, and those not required	
#	Then, Subsetting the data set appropriately, aggregating the data, arranging the data set in order of Subjects, and converting Subject data to factors

groupingCols <- grepl("Subject|Activity", names(newDataset))
tidyDataset <- aggregate(x = newDataset[,!groupingCols], by = as.list(newDataset[,groupingCols]), FUN = mean)
tidyDataset <- tidyDataset[order(tidyDataset$Subject),]
tidyDataset$Subject <- as.factor(tidyDataset$Subject)



# Output the data set
write.table(x = tidyDataset, file = "finalDataset.txt", row.names = FALSE)

