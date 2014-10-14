
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

newDataset$Activities <- factor(newDataset$Activities, labels = c("Walking", "Walking_Upstairs", "Walking_Downstairs", 
"Sitting", "Standing", "Laying"))




# Step 4: Label data set variables with descriptive names

colnames(newDataset) <- c("Subject", "Activity", "Time-AccelBody-X-Mean", "Time-AccelBody-Y-Mean", "Time-AccelBody-Z-Mean", 
"Time-AccelBody-X-Std", "Time-AccelBody-Y-Std", "Time-AccelBody-Z-Std", "Time-AccelGravity-X-Mean", "Time-AccelGravity-Y-Mean",
"Time-AccelGravity-Z-Mean", "Time-AccelGravity-X-Std", "Time-AccelGravity-Y-Std", "Time-AccelGravity-Z-Std", 
"Time-AccelBody-Jerk-X-Mean", "Time-AccelBody-Jerk-Y-Mean", "Time-AccelBody-Jerk-Z-Mean", "Time-AccelBody-Jerk-X-Std", 
"Time-AccelBody-Jerk-Y-Std", "Time-AccelBody-Jerk-Z-Std", "Time-GyroBody-X-mean", "Time-GyroBody-Y-Mean", 
"Time-GyroBody-Z-Mean", "Time-GyroBody-X-Std", "Time-GyroBody-Y-Std", "Time-GyroBody-Z-Std", "Time-GyroBody-Jerk-X-Mean",
"Time-GyroBody-Jerk-Y-Mean", "Time-GyroBody-Jerk-Z-Mean", "Time-GyroBody-Jerk-X-Std", "Time-GyroBody-Jerk-Y-Std", 
"Time-GyroBody-Jerk-Z-Std", "Time-AccelBody-Mag-Mean", "Time-AccelBody-Mag-Std", "Time-AccelGravity-Mag-Mean",
"Time-AccelGravity-Mag-Std", "Time-AccelBody-Jerk-Mag-Mean", "Time-AccelBody-Jerk-Mag-Std", "Time-GyroBody-Mag-Mean",
"Time-GyroBody-Mag-Std", "Time-GyroBody-Jerk-Mag-Mean", "Time-GyroBody-Jerk-Mag-Std", "Freq-AccelBody-X-Mean",
"Freq-AccelBody-Y-Mean", "Freq-AccelBody-Z-Mean", "Freq-AccelBody-X-Std", "Freq-AccelBody-Y-Std", "Freq-AccelBody-Z-Std",
"Freq-AccelBody-meanFreq-X", "Freq-AccelBody-meanFreq-Y", "Freq-AccelBody-meanFreq-Z", "Freq-AccelBody-Jerk-X-Mean",
"Freq-AccelBody-Jerk-Y-Mean", "Freq-AccelBody-Jerk-Z-Mean", "Freq-AccelBody-Jerk-X-Std", "Freq-AccelBody-Jerk-Y-Std"
, "Freq-AccelBody-Jerk-Z-Std", "Freq-AccelBody-Jerk-meanFreq-X", "Freq-AccelBody-Jerk-meanFreq-Y", "Freq-AccelBody-Jerk-meanFreq-Z",
"Freq-GyroBody-X-Mean", "Freq-GyroBody-Y-Mean", "Freq-GyroBody-Z-Mean", "Freq-GyroBody-X-Std", "Freq-GyroBody-Y-Std", 
"Freq-GyroBody-Z-Std", "Freq-GyroBody-meanFreq-X", "Freq-GyroBody-meanFreq-Y", "Freq-GyroBody-meanFreq-Z", "Freq-AccelBody-Mag-Mean",
"Freq-AccelBody-Mag-Std", "Freq-AccelBody-Mag-meanFreq", "FreqAccelBodyBody-Jerk-Mag-Mean", "Freq-AccelBodyBody-Jerk-Mag-Std",
"Freq-AccelBodyBody-Jerk-Mag-meanFreq", "Freq-GyroBodyBody-Mag-Mean", "Freq-GyroBodyBody-Mag-Std", "Freq-GyroBodyBody-Mag-meanFreq",
"Freq-GyroBodyBody-Jerk-Mag-Mean", "Freq-GyroBodyBody-Jerk-Mag-Std", "Freq-GyroBodyBody-Jerk-Mag-meanFreq", 
"angle(Time-AccelBody-Mean,Gravity)", "angle(Time-AccelBody-Jerk-Mean, gravityMean)", "angle(Time-GyroBody-Mean, gravityMean)",
"angle(Time-GyroBody-Jerk-Mean, gravityMean)", "angle(X, gravityMean)", "angle(Y, gravityMean)", "angle(Z, gravityMean)")
colnames(newDataset) <- gsub("-", "\\.", colnames(newDataset))






# Step 5: Create an independent tidy data set with average of each variable for each activity and subject
#	First identify variables required for grouping, and those not required	
#	Then, Subsetting the data set appropriately, aggregating the data, arranging the data set in order of Subjects, and converting Subject data to factors

groupingCols <- grepl("Subject|Activity", names(newDataset))
tidyDataset <- aggregate(x = newDataset[,!groupingCols], by = as.list(newDataset[,groupingCols]), FUN = mean)
tidyDataset <- tidyDataset[order(tidyDataset$Subject),]
tidyDataset$Subject <- as.factor(tidyDataset$Subject)



# Output the data set
write.table(x = tidyDataset, file = "finalDataset.txt", row.names = FALSE)

