if(!require(data.table)){
  install.packages("data.table")
  library(data.table)
}

if(!require(dplyr)){
  install.packages("dplyr")
  library(dplyr)
}

#
# This function runs analysis on the wearable data set and creates a tidy
# data set, based upon the instructions spelled out in the project guidelines.
# See additional comments for details
#
run_analysis <- function(
	features_file = "./UCI HAR Dataset/features.txt",	
	subject_train_data_file = "./UCI HAR Dataset/train/subject_train.txt",
	measurement_train_data_file = "./UCI HAR Dataset/train/X_train.txt",
	activity_train_data_file = "./UCI HAR Dataset/train/y_train.txt",
	subject_test_data_file ="./UCI HAR Dataset/test/subject_test.txt",
	measurement_test_data_file = "./UCI HAR Dataset/test/X_test.txt",
	activity_test_data_file = "./UCI HAR Dataset/test/y_test.txt") {

	# Verify that the supplied data files are present in the working 
	# directory. This is stated as an assumption in the assignment
	# instructions 
	if (!file.exists(features_file)) {
		stop(paste(features_file, " does not exist in working directory"))
	}
	if (!file.exists(subject_train_data_file)) {
		stop(paste(subject_train_data_file, " does not exist in working directory"))
	}
	if (!file.exists(measurement_train_data_file)) {
		stop(paste(measurement_train_data_file, " does not exist in working directory"))
	}
	if (!file.exists(activity_train_data_file)) {
		stop(paste(activity_train_data_file, " does not exist in working directory"))
	}
	if (!file.exists(subject_test_data_file)) {
		stop(paste(subject_test_data_file, " does not exist in working directory"))
	}
	if (!file.exists(measurement_test_data_file)) {
		stop(paste(measurement_test_data_file, " does not exist in working directory"))
	}
	if (!file.exists(activity_test_data_file)) {
		stop(paste(activity_test_data_file, " does not exist in working directory"))
	}

	# Read in the features labels. This will become the column headings
	# for the measurement data frames.
	measurementColumnNames =
		read.table(
			features_file,
			sep="",
			header = F,
			stringsAsFactors = F)
	measurementColumnNames <- measurementColumnNames[,2]

	# Obtain the merged training data from the supplied training data files
	trainingDataSet <- read_and_merge_data(
		measurementColumnNames,
		subject_train_data_file,
		measurement_train_data_file,
		activity_train_data_file)

	# Obtain the merged test data from the supplied test data files
	testDataSet <- read_and_merge_data(
		measurementColumnNames,
		subject_test_data_file,
		measurement_test_data_file,
		activity_test_data_file)

	# rbind the train and test data frames to yield the merged train data
	# and test data. The resulting data frame captures the complete data
	# set for the 30 test subjects
	fullDataSet <- rbind(trainingDataSet, testDataSet)

	# Sort the merged data set by column 1, which is the subject identifier.
	# Do a secondary sort on column 2, which is the activity identifier. 
	fullDataSet <- fullDataSet[order(fullDataSet$subject_id, fullDataSet$activity),]

	# As per the assignment instructions, extract only the measurements
	# on the mean and standard deviation for each measurement. Get the
	# desired column names by way of the grep command. Note that in order
	# to avoid getting all the std()-X... and mean()-X... values, use a
	# regular expression that only grabs columns the specific end with
	# -std() or -mean().
	extractedColumnNames <-
		grep(
			"subject_id|activity|std\\(\\)$|mean\\(\\)$",
			names(fullDataSet),
			value=T)

	# Using the previously obtained colunm names, subset the full data
	# frame.
	dataSubset <- fullDataSet[,extractedColumnNames]

	# As per the assignment instructions, apply descriptive names to the
	# activity column values, which currently are integers that range 1-6.
	# The following changes are made to the data frame: 
	# 1 will be changed to WALKING
	# 2 will be changed to WALKING_UPSTAIRS
	# 3 will be changed to WALKING_DOWNSTAIRS
	# 4 will be changed to SITTING
	# 5 will be changed to STANDING
	# 6 will be changed to LAYING 
	dataSubset$activity[dataSubset$activity == 1] <- "Walking"
	dataSubset$activity[dataSubset$activity == 2] <- "Walking_Upstairs"
	dataSubset$activity[dataSubset$activity == 3] <- "Walking_Downstairs"
	dataSubset$activity[dataSubset$activity == 4] <- "Sitting"
	dataSubset$activity[dataSubset$activity == 5] <- "Standing"
	dataSubset$activity[dataSubset$activity == 6] <- "Laying"

	# Make the column headers values more readable by replacing
	# abbreviations with fully spelled out verbiage. 
	names(dataSubset) <- gsub("Acc", "Accelerometer", names(dataSubset))
	names(dataSubset) <- gsub("Gyro", "Gyroscope", names(dataSubset))
	names(dataSubset) <- gsub("Mag", "Magnitude", names(dataSubset))
	names(dataSubset) <- gsub("BodyBody", "Body", names(dataSubset))
	names(dataSubset) <- gsub("^t", "Time", names(dataSubset))
	names(dataSubset) <- gsub("^f", "Frequency", names(dataSubset))
	names(dataSubset) <- gsub("-mean\\(\\)$", "Mean", names(dataSubset))
	names(dataSubset) <- gsub("-std\\(\\)$", "STD", names(dataSubset))

	# Create the required tidy data set by taking the data subset and
	# - grouping the data set by subject_id and activity
	# - taking the average of the data columns (exclude subject_id and
	#   activity)
	# Leverage pipelining and the dplyr functions to do this.
	tidyData <-
		dataSubset %>%
		group_by(subject_id,activity) %>%
		summarise_each(funs(mean(.,na.rm=TRUE)),-subject_id,-activity)

	# As the last step, let's relabel the measurement data column names to
	# indicate that these values are averages.
	newColumnNames <-
		paste0(
			"Average of ",
			colnames(tidyData[,3:ncol(tidyData)]),
			" Values")
	names(tidyData) <-
		c(names(tidyData)[1],names(tidyData)[2], newColumnNames)

	# Convert the data frame to a table and write this table to a .txt
	# file. Omit the row names, as per the assignment instructions.
	tidyDataTable <- tbl_df(tidyData)
	write.table(tidyDataTable, "./tidyDataResults.txt", sep="\t", row.names = FALSE)
}

# Convenience function that reads in subject, measurement and activity data
# from supplied files and returns a merged data set. Used to read in the
# training data and test data.
read_and_merge_data <- function(
	measurement_column_names,
	subject_data_file,
	measurement_data_file,
	activity_data_file) {

	# Create data frame with the subject data. Each row corresponds to a
	# test subject as identified by the subject number (1-30).
	subjectData =
		read.table(
			subject_data_file,
			sep="",
			header = F,
			stringsAsFactors = F)

	# Provide a descriptive column name of subject_id.
	colnames(subjectData) <- "subject_id"

	# Create a data frame with measurement data. Each row corresponds to
	# the 561 measurements for each activity and subject. See the
	# features.txt and features_info.txt (provided with the data set) for
	# more information.
	measurementData =
		read.table(
			measurement_data_file,
			sep="",
			header = F,
			stringsAsFactors = F)

	# Add the descriptive column names for the measurements using the
	# supplied measure_column_names. These values come from the second
	# column of the features.txt file.
	colnames(measurementData) <- measurement_column_names

	# Create data frame with the activity data. Each row corresponds to an
	# activity as identified by activity number (1-6).  The following data
	# associates a descriptive name with the activity number
	# 1 WALKING
	# 2 WALKING_UPSTAIRS
	# 3 WALKING_DOWNSTAIRS
	# 4 SITTING
	# 5 STANDING
	# 6 LAYING 
	activityData =
		read.table(
			activity_data_file,
			sep="",
			header = F,
			stringsAsFactors = F)

	# Provide a descriptive column name of activity.
	colnames(activityData) <- "activity"

	# cbind the 3 data frames together to create the full data set
	merged_data_set = cbind(subjectData, activityData, measurementData)
}
