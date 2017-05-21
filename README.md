# Getting and Cleaning Data Week 4 Assignment
This project is the submission for the Getting and Cleaning Data Course Project.

## Files
This project contains the following files:

* run_analysis.R - the R script that performs the steps necessary to create tidy data as per assignment instructions
* CodeBook.md - the code book that describes the tidy data set
* tidyDataResults.txt - the results of running the run_analysis() function of the run_analysis.R script against the raw data
* README.md - this file

## Background
The following is reprinted from the assignment instructions

<i>One of the most exciting areas in all of data science right now is wearable computing - see for example this article. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</i>

## R Script Details
The run_analysis.R script performs the following steps to achieve the desired tidy data set:

1. Verifies all required data files are present in the working directory. If any are missing, the script will stop with a descriptive message
2. Reads the features.txt data file and creates a data frame
3. Reads the train data for subjects, activities and measurements and creates data frames from this data
4. Applies a meaningful colunm name of "subject_id" to the train subject data frame
5. Uses the features data frame to apply meaningful column names to the train measurements data frame
6. Applies a meaningful column name of "activity" to the train activities data frame
7. Merges the train subjects, activities and measurements data frames to create a complete train data set
8. Reads the test data for subjects, activities and measurements and creates data frames from this data
9. Applies a meaningful colunm name of "subject_id" to the test subject data frame
10. Uses the features data frame to apply meaningful column names to the test measurements data frame
11. Applies a meaningful column name of "activity" to the test activities data frame
12. Merges the test subjects, activities and measurements data frames to create a complete test data set
13. Merges the complete train data data frame and the complete test data data frame to create a full data set that is ready for cleaning and tidying
14. Sorts the full data set on subject_id and activity
15. Subsets the full data set data frame using subject_id, activities and all \*-std() and \*-mean() columns
16. Replaces the numeric activity ids in the subset data frame with descriptive string values, based on the activity_labels.txt file
17. Creates meaningful column names for the \*-std() and \*-mean() columns by replacing abbreviations with full verbiage
18. Creates a new data frame that contains the subject_id, activity and the average of all \*-std() and \*-mean() values for each subject and each activity; uses chaining and dplyr functions for this work
19. Creates meaningful column names for the new tidy data set's \*-std() and \*-mean() columns by prepending <b>Average of </b> to the column name and appending <b> Values</b> to the column name
20. Converts the tidy data frame to a data table
21. Writes the data table to a file

## Usage
The following steps can be used to locally execute the run_analysis.R script.

<b>Note that it is assumed that all the necessary data files are present in the current working directory.</b>

1. Clone this Git repository
2. Copy the run_analysis.R script to your R working directory
3. Start your local R environment
4. Read in the run_analysis.R script by issuing the <i>source("run_analysis.R")</i> command at the R prompt
5. Execute the run_analysis function by issuing the <i>run_analysis()</i> command at the R prompt
6. Check your R working directory and verify that the <b>tidyDataResults.txt</b> file exists

The above steps assumes that the <b>UCI HAR Dataset</b> directory exists in your R working directory and that this directory contains the data files. The following are the arguments and default values for run_analysis():

| Argument | Default Value |
|----------|:-------------:|
|features_file|./UCI HAR Dataset/features.txt|
|subject_train_data_file|./UCI HAR Dataset/train/subject_train.txt|
|measurement_train_data_file|./UCI HAR Dataset/train/X_train.txt|
|activity_train_data_file|./UCI HAR Dataset/train/y_train.txt|
|subject_test_data_file|./UCI HAR Dataset/test/subject_test.txt|
|measurement_test_data_file|./UCI HAR Dataset/test/X_test.txt|
|activity_test_data_file|./UCI HAR Dataset/test/y_test.txt|

Alternatively, you can supply non-default values for the data files to the run_analysis() function. Note that the non-default arguments values should point to a valid, known file. If not, the script will terminate.

## Code Book
Inspect the CodeBook.md file for details of the tidy data set.
