# Code Book for Tidy Data Assignment
Use the links to navigate the code book. For those looking to jump right to the final data steps, follow the [Final Data Set](#final-data-set) link.

[Raw Data](#raw-data)<br>
[Data Subset](#data-subset)<br>
[Data Tidying](#data-tidying)<br>
[Final Data Set](#final-data-set)<br>

## Raw Data
The <b>Human Activity Recognition Using Smartphones Data Set</b> was used as raw data for this tidy data creation assignment. See the README.md file for additional information about this data and a link to obtain the raw data.

The raw data comes split into a training set and a test set. The initial steps of the tidying process was to merge the training data and the test data into 1 full data set. This step involved merging the subject, activities and measurements training data, which created a 7352x563 data frame. The same process was done for the subject, activities and measurements test data, which created a 2947x563 data frame. The full data was created by merging these two data frames, which created a 10299x563 data frame.

The following are the column names associated with the raw data:

tBodyAcc-mean()-X<br>
tBodyAcc-mean()-Y<br>
tBodyAcc-mean()-Z<br>
tBodyAcc-std()-X<br>
tBodyAcc-std()-Y<br>
tBodyAcc-std()-Z<br>
tBodyAcc-mad()-X<br>
tBodyAcc-mad()-Y<br>
tBodyAcc-mad()-Z<br>
tBodyAcc-max()-X<br>
tBodyAcc-max()-Y<br>
tBodyAcc-max()-Z<br>
tBodyAcc-min()-X<br>
tBodyAcc-min()-Y<br>
tBodyAcc-min()-Z<br>
tBodyAcc-sma()<br>
tBodyAcc-energy()-X<br>
tBodyAcc-energy()-Y<br>
tBodyAcc-energy()-Z<br>
tBodyAcc-iqr()-X<br>
tBodyAcc-iqr()-Y<br>
tBodyAcc-iqr()-Z<br>
tBodyAcc-entropy()-X<br>
tBodyAcc-entropy()-Y<br>
tBodyAcc-entropy()-Z<br>
tBodyAcc-arCoeff()-X,1<br>
tBodyAcc-arCoeff()-X,2<br>
tBodyAcc-arCoeff()-X,3<br>
tBodyAcc-arCoeff()-X,4<br>
tBodyAcc-arCoeff()-Y,1<br>
tBodyAcc-arCoeff()-Y,2<br>
tBodyAcc-arCoeff()-Y,3<br>
tBodyAcc-arCoeff()-Y,4<br>
tBodyAcc-arCoeff()-Z,1<br>
tBodyAcc-arCoeff()-Z,2<br>
tBodyAcc-arCoeff()-Z,3<br>
tBodyAcc-arCoeff()-Z,4<br>
tBodyAcc-correlation()-X,Y<br>
tBodyAcc-correlation()-X,Z<br>
tBodyAcc-correlation()-Y,Z<br>
tGravityAcc-mean()-X<br>
tGravityAcc-mean()-Y<br>
tGravityAcc-mean()-Z<br>
tGravityAcc-std()-X<br>
tGravityAcc-std()-Y<br>
tGravityAcc-std()-Z<br>
tGravityAcc-mad()-X<br>
tGravityAcc-mad()-Y<br>
tGravityAcc-mad()-Z<br>
tGravityAcc-max()-X<br>
tGravityAcc-max()-Y<br>
tGravityAcc-max()-Z<br>
tGravityAcc-min()-X<br>
tGravityAcc-min()-Y<br>
tGravityAcc-min()-Z<br>
tGravityAcc-sma()<br>
tGravityAcc-energy()-X<br>
tGravityAcc-energy()-Y<br>
tGravityAcc-energy()-Z<br>
tGravityAcc-iqr()-X<br>
tGravityAcc-iqr()-Y<br>
tGravityAcc-iqr()-Z<br>
tGravityAcc-entropy()-X<br>
tGravityAcc-entropy()-Y<br>
tGravityAcc-entropy()-Z<br>
tGravityAcc-arCoeff()-X,1<br>
tGravityAcc-arCoeff()-X,2<br>
tGravityAcc-arCoeff()-X,3<br>
tGravityAcc-arCoeff()-X,4<br>
tGravityAcc-arCoeff()-Y,1<br>
tGravityAcc-arCoeff()-Y,2<br>
tGravityAcc-arCoeff()-Y,3<br>
tGravityAcc-arCoeff()-Y,4<br>
tGravityAcc-arCoeff()-Z,1<br>
tGravityAcc-arCoeff()-Z,2<br>
tGravityAcc-arCoeff()-Z,3<br>
tGravityAcc-arCoeff()-Z,4<br>
tGravityAcc-correlation()-X,Y<br>
tGravityAcc-correlation()-X,Z<br>
tGravityAcc-correlation()-Y,Z<br>
tBodyAccJerk-mean()-X<br>
tBodyAccJerk-mean()-Y<br>
tBodyAccJerk-mean()-Z<br>
tBodyAccJerk-std()-X<br>
tBodyAccJerk-std()-Y<br>
tBodyAccJerk-std()-Z<br>
tBodyAccJerk-mad()-X<br>
tBodyAccJerk-mad()-Y<br>
tBodyAccJerk-mad()-Z<br>
tBodyAccJerk-max()-X<br>
tBodyAccJerk-max()-Y<br>
tBodyAccJerk-max()-Z<br>
tBodyAccJerk-min()-X<br>
tBodyAccJerk-min()-Y<br>
tBodyAccJerk-min()-Z<br>
tBodyAccJerk-sma()<br>
tBodyAccJerk-energy()-X<br>
tBodyAccJerk-energy()-Y<br>
tBodyAccJerk-energy()-Z<br>
tBodyAccJerk-iqr()-X<br>
tBodyAccJerk-iqr()-Y<br>
tBodyAccJerk-iqr()-Z<br>
tBodyAccJerk-entropy()-X<br>
tBodyAccJerk-entropy()-Y<br>
tBodyAccJerk-entropy()-Z<br>
tBodyAccJerk-arCoeff()-X,1<br>
tBodyAccJerk-arCoeff()-X,2<br>
tBodyAccJerk-arCoeff()-X,3<br>
tBodyAccJerk-arCoeff()-X,4<br>
tBodyAccJerk-arCoeff()-Y,1<br>
tBodyAccJerk-arCoeff()-Y,2<br>
tBodyAccJerk-arCoeff()-Y,3<br>
tBodyAccJerk-arCoeff()-Y,4<br>
tBodyAccJerk-arCoeff()-Z,1<br>
tBodyAccJerk-arCoeff()-Z,2<br>
tBodyAccJerk-arCoeff()-Z,3<br>
tBodyAccJerk-arCoeff()-Z,4<br>
tBodyAccJerk-correlation()-X,Y<br>
tBodyAccJerk-correlation()-X,Z<br>
tBodyAccJerk-correlation()-Y,Z<br>
tBodyGyro-mean()-X<br>
tBodyGyro-mean()-Y<br>
tBodyGyro-mean()-Z<br>
tBodyGyro-std()-X<br>
tBodyGyro-std()-Y<br>
tBodyGyro-std()-Z<br>
tBodyGyro-mad()-X<br>
tBodyGyro-mad()-Y<br>
tBodyGyro-mad()-Z<br>
tBodyGyro-max()-X<br>
tBodyGyro-max()-Y<br>
tBodyGyro-max()-Z<br>
tBodyGyro-min()-X<br>
tBodyGyro-min()-Y<br>
tBodyGyro-min()-Z<br>
tBodyGyro-sma()<br>
tBodyGyro-energy()-X<br>
tBodyGyro-energy()-Y<br>
tBodyGyro-energy()-Z<br>
tBodyGyro-iqr()-X<br>
tBodyGyro-iqr()-Y<br>
tBodyGyro-iqr()-Z<br>
tBodyGyro-entropy()-X<br>
tBodyGyro-entropy()-Y<br>
tBodyGyro-entropy()-Z<br>
tBodyGyro-arCoeff()-X,1<br>
tBodyGyro-arCoeff()-X,2<br>
tBodyGyro-arCoeff()-X,3<br>
tBodyGyro-arCoeff()-X,4<br>
tBodyGyro-arCoeff()-Y,1<br>
tBodyGyro-arCoeff()-Y,2<br>
tBodyGyro-arCoeff()-Y,3<br>
tBodyGyro-arCoeff()-Y,4<br>
tBodyGyro-arCoeff()-Z,1<br>
tBodyGyro-arCoeff()-Z,2<br>
tBodyGyro-arCoeff()-Z,3<br>
tBodyGyro-arCoeff()-Z,4<br>
tBodyGyro-correlation()-X,Y<br>
tBodyGyro-correlation()-X,Z<br>
tBodyGyro-correlation()-Y,Z<br>
tBodyGyroJerk-mean()-X<br>
tBodyGyroJerk-mean()-Y<br>
tBodyGyroJerk-mean()-Z<br>
tBodyGyroJerk-std()-X<br>
tBodyGyroJerk-std()-Y<br>
tBodyGyroJerk-std()-Z<br>
tBodyGyroJerk-mad()-X<br>
tBodyGyroJerk-mad()-Y<br>
tBodyGyroJerk-mad()-Z<br>
tBodyGyroJerk-max()-X<br>
tBodyGyroJerk-max()-Y<br>
tBodyGyroJerk-max()-Z<br>
tBodyGyroJerk-min()-X<br>
tBodyGyroJerk-min()-Y<br>
tBodyGyroJerk-min()-Z<br>
tBodyGyroJerk-sma()<br>
tBodyGyroJerk-energy()-X<br>
tBodyGyroJerk-energy()-Y<br>
tBodyGyroJerk-energy()-Z<br>
tBodyGyroJerk-iqr()-X<br>
tBodyGyroJerk-iqr()-Y<br>
tBodyGyroJerk-iqr()-Z<br>
tBodyGyroJerk-entropy()-X<br>
tBodyGyroJerk-entropy()-Y<br>
tBodyGyroJerk-entropy()-Z<br>
tBodyGyroJerk-arCoeff()-X,1<br>
tBodyGyroJerk-arCoeff()-X,2<br>
tBodyGyroJerk-arCoeff()-X,3<br>
tBodyGyroJerk-arCoeff()-X,4<br>
tBodyGyroJerk-arCoeff()-Y,1<br>
tBodyGyroJerk-arCoeff()-Y,2<br>
tBodyGyroJerk-arCoeff()-Y,3<br>
tBodyGyroJerk-arCoeff()-Y,4<br>
tBodyGyroJerk-arCoeff()-Z,1<br>
tBodyGyroJerk-arCoeff()-Z,2<br>
tBodyGyroJerk-arCoeff()-Z,3<br>
tBodyGyroJerk-arCoeff()-Z,4<br>
tBodyGyroJerk-correlation()-X,Y<br>
tBodyGyroJerk-correlation()-X,Z<br>
tBodyGyroJerk-correlation()-Y,Z<br>
tBodyAccMag-mean()<br>
tBodyAccMag-std()<br>
tBodyAccMag-mad()<br>
tBodyAccMag-max()<br>
tBodyAccMag-min()<br>
tBodyAccMag-sma()<br>
tBodyAccMag-energy()<br>
tBodyAccMag-iqr()<br>
tBodyAccMag-entropy()<br>
tBodyAccMag-arCoeff()1<br>
tBodyAccMag-arCoeff()2<br>
tBodyAccMag-arCoeff()3<br>
tBodyAccMag-arCoeff()4<br>
tGravityAccMag-mean()<br>
tGravityAccMag-std()<br>
tGravityAccMag-mad()<br>
tGravityAccMag-max()<br>
tGravityAccMag-min()<br>
tGravityAccMag-sma()<br>
tGravityAccMag-energy()<br>
tGravityAccMag-iqr()<br>
tGravityAccMag-entropy()<br>
tGravityAccMag-arCoeff()1<br>
tGravityAccMag-arCoeff()2<br>
tGravityAccMag-arCoeff()3<br>
tGravityAccMag-arCoeff()4<br>
tBodyAccJerkMag-mean()<br>
tBodyAccJerkMag-std()<br>
tBodyAccJerkMag-mad()<br>
tBodyAccJerkMag-max()<br>
tBodyAccJerkMag-min()<br>
tBodyAccJerkMag-sma()<br>
tBodyAccJerkMag-energy()<br>
tBodyAccJerkMag-iqr()<br>
tBodyAccJerkMag-entropy()<br>
tBodyAccJerkMag-arCoeff()1<br>
tBodyAccJerkMag-arCoeff()2<br>
tBodyAccJerkMag-arCoeff()3<br>
tBodyAccJerkMag-arCoeff()4<br>
tBodyGyroMag-mean()<br>
tBodyGyroMag-std()<br>
tBodyGyroMag-mad()<br>
tBodyGyroMag-max()<br>
tBodyGyroMag-min()<br>
tBodyGyroMag-sma()<br>
tBodyGyroMag-energy()<br>
tBodyGyroMag-iqr()<br>
tBodyGyroMag-entropy()<br>
tBodyGyroMag-arCoeff()1<br>
tBodyGyroMag-arCoeff()2<br>
tBodyGyroMag-arCoeff()3<br>
tBodyGyroMag-arCoeff()4<br>
tBodyGyroJerkMag-mean()<br>
tBodyGyroJerkMag-std()<br>
tBodyGyroJerkMag-mad()<br>
tBodyGyroJerkMag-max()<br>
tBodyGyroJerkMag-min()<br>
tBodyGyroJerkMag-sma()<br>
tBodyGyroJerkMag-energy()<br>
tBodyGyroJerkMag-iqr()<br>
tBodyGyroJerkMag-entropy()<br>
tBodyGyroJerkMag-arCoeff()1<br>
tBodyGyroJerkMag-arCoeff()2<br>
tBodyGyroJerkMag-arCoeff()3<br>
tBodyGyroJerkMag-arCoeff()4<br>
fBodyAcc-mean()-X<br>
fBodyAcc-mean()-Y<br>
fBodyAcc-mean()-Z<br>
fBodyAcc-std()-X<br>
fBodyAcc-std()-Y<br>
fBodyAcc-std()-Z<br>
fBodyAcc-mad()-X<br>
fBodyAcc-mad()-Y<br>
fBodyAcc-mad()-Z<br>
fBodyAcc-max()-X<br>
fBodyAcc-max()-Y<br>
fBodyAcc-max()-Z<br>
fBodyAcc-min()-X<br>
fBodyAcc-min()-Y<br>
fBodyAcc-min()-Z<br>
fBodyAcc-sma()<br>
fBodyAcc-energy()-X<br>
fBodyAcc-energy()-Y<br>
fBodyAcc-energy()-Z<br>
fBodyAcc-iqr()-X<br>
fBodyAcc-iqr()-Y<br>
fBodyAcc-iqr()-Z<br>
fBodyAcc-entropy()-X<br>
fBodyAcc-entropy()-Y<br>
fBodyAcc-entropy()-Z<br>
fBodyAcc-maxInds-X<br>
fBodyAcc-maxInds-Y<br>
fBodyAcc-maxInds-Z<br>
fBodyAcc-meanFreq()-X<br>
fBodyAcc-meanFreq()-Y<br>
fBodyAcc-meanFreq()-Z<br>
fBodyAcc-skewness()-X<br>
fBodyAcc-kurtosis()-X<br>
fBodyAcc-skewness()-Y<br>
fBodyAcc-kurtosis()-Y<br>
fBodyAcc-skewness()-Z<br>
fBodyAcc-kurtosis()-Z<br>
fBodyAcc-bandsEnergy()-1,8<br>
fBodyAcc-bandsEnergy()-9,16<br>
fBodyAcc-bandsEnergy()-17,24<br>
fBodyAcc-bandsEnergy()-25,32<br>
fBodyAcc-bandsEnergy()-33,40<br>
fBodyAcc-bandsEnergy()-41,48<br>
fBodyAcc-bandsEnergy()-49,56<br>
fBodyAcc-bandsEnergy()-57,64<br>
fBodyAcc-bandsEnergy()-1,16<br>
fBodyAcc-bandsEnergy()-17,32<br>
fBodyAcc-bandsEnergy()-33,48<br>
fBodyAcc-bandsEnergy()-49,64<br>
fBodyAcc-bandsEnergy()-1,24<br>
fBodyAcc-bandsEnergy()-25,48<br>
fBodyAcc-bandsEnergy()-1,8<br>
fBodyAcc-bandsEnergy()-9,16<br>
fBodyAcc-bandsEnergy()-17,24<br>
fBodyAcc-bandsEnergy()-25,32<br>
fBodyAcc-bandsEnergy()-33,40<br>
fBodyAcc-bandsEnergy()-41,48<br>
fBodyAcc-bandsEnergy()-49,56<br>
fBodyAcc-bandsEnergy()-57,64<br>
fBodyAcc-bandsEnergy()-1,16<br>
fBodyAcc-bandsEnergy()-17,32<br>
fBodyAcc-bandsEnergy()-33,48<br>
fBodyAcc-bandsEnergy()-49,64<br>
fBodyAcc-bandsEnergy()-1,24<br>
fBodyAcc-bandsEnergy()-25,48<br>
fBodyAcc-bandsEnergy()-1,8<br>
fBodyAcc-bandsEnergy()-9,16<br>
fBodyAcc-bandsEnergy()-17,24<br>
fBodyAcc-bandsEnergy()-25,32<br>
fBodyAcc-bandsEnergy()-33,40<br>
fBodyAcc-bandsEnergy()-41,48<br>
fBodyAcc-bandsEnergy()-49,56<br>
fBodyAcc-bandsEnergy()-57,64<br>
fBodyAcc-bandsEnergy()-1,16<br>
fBodyAcc-bandsEnergy()-17,32<br>
fBodyAcc-bandsEnergy()-33,48<br>
fBodyAcc-bandsEnergy()-49,64<br>
fBodyAcc-bandsEnergy()-1,24<br>
fBodyAcc-bandsEnergy()-25,48<br>
fBodyAccJerk-mean()-X<br>
fBodyAccJerk-mean()-Y<br>
fBodyAccJerk-mean()-Z<br>
fBodyAccJerk-std()-X<br>
fBodyAccJerk-std()-Y<br>
fBodyAccJerk-std()-Z<br>
fBodyAccJerk-mad()-X<br>
fBodyAccJerk-mad()-Y<br>
fBodyAccJerk-mad()-Z<br>
fBodyAccJerk-max()-X<br>
fBodyAccJerk-max()-Y<br>
fBodyAccJerk-max()-Z<br>
fBodyAccJerk-min()-X<br>
fBodyAccJerk-min()-Y<br>
fBodyAccJerk-min()-Z<br>
fBodyAccJerk-sma()<br>
fBodyAccJerk-energy()-X<br>
fBodyAccJerk-energy()-Y<br>
fBodyAccJerk-energy()-Z<br>
fBodyAccJerk-iqr()-X<br>
fBodyAccJerk-iqr()-Y<br>
fBodyAccJerk-iqr()-Z<br>
fBodyAccJerk-entropy()-X<br>
fBodyAccJerk-entropy()-Y<br>
fBodyAccJerk-entropy()-Z<br>
fBodyAccJerk-maxInds-X<br>
fBodyAccJerk-maxInds-Y<br>
fBodyAccJerk-maxInds-Z<br>
fBodyAccJerk-meanFreq()-X<br>
fBodyAccJerk-meanFreq()-Y<br>
fBodyAccJerk-meanFreq()-Z<br>
fBodyAccJerk-skewness()-X<br>
fBodyAccJerk-kurtosis()-X<br>
fBodyAccJerk-skewness()-Y<br>
fBodyAccJerk-kurtosis()-Y<br>
fBodyAccJerk-skewness()-Z<br>
fBodyAccJerk-kurtosis()-Z<br>
fBodyAccJerk-bandsEnergy()-1,8<br>
fBodyAccJerk-bandsEnergy()-9,16<br>
fBodyAccJerk-bandsEnergy()-17,24<br>
fBodyAccJerk-bandsEnergy()-25,32<br>
fBodyAccJerk-bandsEnergy()-33,40<br>
fBodyAccJerk-bandsEnergy()-41,48<br>
fBodyAccJerk-bandsEnergy()-49,56<br>
fBodyAccJerk-bandsEnergy()-57,64<br>
fBodyAccJerk-bandsEnergy()-1,16<br>
fBodyAccJerk-bandsEnergy()-17,32<br>
fBodyAccJerk-bandsEnergy()-33,48<br>
fBodyAccJerk-bandsEnergy()-49,64<br>
fBodyAccJerk-bandsEnergy()-1,24<br>
fBodyAccJerk-bandsEnergy()-25,48<br>
fBodyAccJerk-bandsEnergy()-1,8<br>
fBodyAccJerk-bandsEnergy()-9,16<br>
fBodyAccJerk-bandsEnergy()-17,24<br>
fBodyAccJerk-bandsEnergy()-25,32<br>
fBodyAccJerk-bandsEnergy()-33,40<br>
fBodyAccJerk-bandsEnergy()-41,48<br>
fBodyAccJerk-bandsEnergy()-49,56<br>
fBodyAccJerk-bandsEnergy()-57,64<br>
fBodyAccJerk-bandsEnergy()-1,16<br>
fBodyAccJerk-bandsEnergy()-17,32<br>
fBodyAccJerk-bandsEnergy()-33,48<br>
fBodyAccJerk-bandsEnergy()-49,64<br>
fBodyAccJerk-bandsEnergy()-1,24<br>
fBodyAccJerk-bandsEnergy()-25,48<br>
fBodyAccJerk-bandsEnergy()-1,8<br>
fBodyAccJerk-bandsEnergy()-9,16<br>
fBodyAccJerk-bandsEnergy()-17,24<br>
fBodyAccJerk-bandsEnergy()-25,32<br>
fBodyAccJerk-bandsEnergy()-33,40<br>
fBodyAccJerk-bandsEnergy()-41,48<br>
fBodyAccJerk-bandsEnergy()-49,56<br>
fBodyAccJerk-bandsEnergy()-57,64<br>
fBodyAccJerk-bandsEnergy()-1,16<br>
fBodyAccJerk-bandsEnergy()-17,32<br>
fBodyAccJerk-bandsEnergy()-33,48<br>
fBodyAccJerk-bandsEnergy()-49,64<br>
fBodyAccJerk-bandsEnergy()-1,24<br>
fBodyAccJerk-bandsEnergy()-25,48<br>
fBodyGyro-mean()-X<br>
fBodyGyro-mean()-Y<br>
fBodyGyro-mean()-Z<br>
fBodyGyro-std()-X<br>
fBodyGyro-std()-Y<br>
fBodyGyro-std()-Z<br>
fBodyGyro-mad()-X<br>
fBodyGyro-mad()-Y<br>
fBodyGyro-mad()-Z<br>
fBodyGyro-max()-X<br>
fBodyGyro-max()-Y<br>
fBodyGyro-max()-Z<br>
fBodyGyro-min()-X<br>
fBodyGyro-min()-Y<br>
fBodyGyro-min()-Z<br>
fBodyGyro-sma()<br>
fBodyGyro-energy()-X<br>
fBodyGyro-energy()-Y<br>
fBodyGyro-energy()-Z<br>
fBodyGyro-iqr()-X<br>
fBodyGyro-iqr()-Y<br>
fBodyGyro-iqr()-Z<br>
fBodyGyro-entropy()-X<br>
fBodyGyro-entropy()-Y<br>
fBodyGyro-entropy()-Z<br>
fBodyGyro-maxInds-X<br>
fBodyGyro-maxInds-Y<br>
fBodyGyro-maxInds-Z<br>
fBodyGyro-meanFreq()-X<br>
fBodyGyro-meanFreq()-Y<br>
fBodyGyro-meanFreq()-Z<br>
fBodyGyro-skewness()-X<br>
fBodyGyro-kurtosis()-X<br>
fBodyGyro-skewness()-Y<br>
fBodyGyro-kurtosis()-Y<br>
fBodyGyro-skewness()-Z<br>
fBodyGyro-kurtosis()-Z<br>
fBodyGyro-bandsEnergy()-1,8<br>
fBodyGyro-bandsEnergy()-9,16<br>
fBodyGyro-bandsEnergy()-17,24<br>
fBodyGyro-bandsEnergy()-25,32<br>
fBodyGyro-bandsEnergy()-33,40<br>
fBodyGyro-bandsEnergy()-41,48<br>
fBodyGyro-bandsEnergy()-49,56<br>
fBodyGyro-bandsEnergy()-57,64<br>
fBodyGyro-bandsEnergy()-1,16<br>
fBodyGyro-bandsEnergy()-17,32<br>
fBodyGyro-bandsEnergy()-33,48<br>
fBodyGyro-bandsEnergy()-49,64<br>
fBodyGyro-bandsEnergy()-1,24<br>
fBodyGyro-bandsEnergy()-25,48<br>
fBodyGyro-bandsEnergy()-1,8<br>
fBodyGyro-bandsEnergy()-9,16<br>
fBodyGyro-bandsEnergy()-17,24<br>
fBodyGyro-bandsEnergy()-25,32<br>
fBodyGyro-bandsEnergy()-33,40<br>
fBodyGyro-bandsEnergy()-41,48<br>
fBodyGyro-bandsEnergy()-49,56<br>
fBodyGyro-bandsEnergy()-57,64<br>
fBodyGyro-bandsEnergy()-1,16<br>
fBodyGyro-bandsEnergy()-17,32<br>
fBodyGyro-bandsEnergy()-33,48<br>
fBodyGyro-bandsEnergy()-49,64<br>
fBodyGyro-bandsEnergy()-1,24<br>
fBodyGyro-bandsEnergy()-25,48<br>
fBodyGyro-bandsEnergy()-1,8<br>
fBodyGyro-bandsEnergy()-9,16<br>
fBodyGyro-bandsEnergy()-17,24<br>
fBodyGyro-bandsEnergy()-25,32<br>
fBodyGyro-bandsEnergy()-33,40<br>
fBodyGyro-bandsEnergy()-41,48<br>
fBodyGyro-bandsEnergy()-49,56<br>
fBodyGyro-bandsEnergy()-57,64<br>
fBodyGyro-bandsEnergy()-1,16<br>
fBodyGyro-bandsEnergy()-17,32<br>
fBodyGyro-bandsEnergy()-33,48<br>
fBodyGyro-bandsEnergy()-49,64<br>
fBodyGyro-bandsEnergy()-1,24<br>
fBodyGyro-bandsEnergy()-25,48<br>
fBodyAccMag-mean()<br>
fBodyAccMag-std()<br>
fBodyAccMag-mad()<br>
fBodyAccMag-max()<br>
fBodyAccMag-min()<br>
fBodyAccMag-sma()<br>
fBodyAccMag-energy()<br>
fBodyAccMag-iqr()<br>
fBodyAccMag-entropy()<br>
fBodyAccMag-maxInds<br>
fBodyAccMag-meanFreq()<br>
fBodyAccMag-skewness()<br>
fBodyAccMag-kurtosis()<br>
fBodyBodyAccJerkMag-mean()<br>
fBodyBodyAccJerkMag-std()<br>
fBodyBodyAccJerkMag-mad()<br>
fBodyBodyAccJerkMag-max()<br>
fBodyBodyAccJerkMag-min()<br>
fBodyBodyAccJerkMag-sma()<br>
fBodyBodyAccJerkMag-energy()<br>
fBodyBodyAccJerkMag-iqr()<br>
fBodyBodyAccJerkMag-entropy()<br>
fBodyBodyAccJerkMag-maxInds<br>
fBodyBodyAccJerkMag-meanFreq()<br>
fBodyBodyAccJerkMag-skewness()<br>
fBodyBodyAccJerkMag-kurtosis()<br>
fBodyBodyGyroMag-mean()<br>
fBodyBodyGyroMag-std()<br>
fBodyBodyGyroMag-mad()<br>
fBodyBodyGyroMag-max()<br>
fBodyBodyGyroMag-min()<br>
fBodyBodyGyroMag-sma()<br>
fBodyBodyGyroMag-energy()<br>
fBodyBodyGyroMag-iqr()<br>
fBodyBodyGyroMag-entropy()<br>
fBodyBodyGyroMag-maxInds<br>
fBodyBodyGyroMag-meanFreq()<br>
fBodyBodyGyroMag-skewness()<br>
fBodyBodyGyroMag-kurtosis()<br>
fBodyBodyGyroJerkMag-mean()<br>
fBodyBodyGyroJerkMag-std()<br>
fBodyBodyGyroJerkMag-mad()<br>
fBodyBodyGyroJerkMag-max()<br>
fBodyBodyGyroJerkMag-min()<br>
fBodyBodyGyroJerkMag-sma()<br>
fBodyBodyGyroJerkMag-energy()<br>
fBodyBodyGyroJerkMag-iqr()<br>
fBodyBodyGyroJerkMag-entropy()<br>
fBodyBodyGyroJerkMag-maxInds<br>
fBodyBodyGyroJerkMag-meanFreq()<br>
fBodyBodyGyroJerkMag-skewness()<br>
fBodyBodyGyroJerkMag-kurtosis()<br>
angle(tBodyAccMean,gravity)<br>
angle(tBodyAccJerkMean),gravityMean)<br>
angle(tBodyGyroMean,gravityMean)<br>
angle(tBodyGyroJerkMean,gravityMean)<br>
angle(X,gravityMean)<br>
angle(Y,gravityMean)<br>
angle(Z,gravityMean)<br>

## Data Subset
The full raw data set was subsetting by extracting the subject_id, activity and all \*-std() and \*-mean() data. The created a 10299x20 data frame.

The following columns are associated with this data subset:

subject_id<br>
activity<br>
tBodyAccMag-mean()<br>
tBodyAccMag-std()<br>
tGravityAccMag-mean()<br>
tGravityAccMag-std()<br>
tBodyAccJerkMag-mean()<br>
tBodyAccJerkMag-std()<br>
tBodyGyroMag-mean()<br>
tBodyGyroMag-std()<br>
tBodyGyroJerkMag-mean()<br>
tBodyGyroJerkMag-std()<br>
fBodyAccMag-mean()<br>
fBodyAccMag-std()<br>
fBodyBodyAccJerkMag-mean()<br>
fBodyBodyAccJerkMag-std()<br>
fBodyBodyGyroMag-mean()<br>
fBodyBodyGyroMag-std()<br>
fBodyBodyGyroJerkMag-mean()<br>
fBodyBodyGyroJerkMag-std()<br>

## Data Tidying
A few steps were done to create a tidy data set from the data subset that was created in the previous step.

### Descriptive Activity Names
The activity values were changed from numeric values to string values. The following shows the mapping used to make these changes:

1 changed to WALKING

2 changed to WALKING_UPSTAIRS

3 changed to WALKING_DOWNSTAIRS

4 changed to SITTING

5 changed to STANDING

6 changed to LAYING

### Descriptive Column Names
The following table shows the original column name and the new, descriptive column name:

|Original Column Name|New Column Name|
|--------------------|:-------------:|
|tBodyAccMag-mean()|TimeBodyAccelerometerMagnitudeMean|
|tBodyAccMag-std()|TimeBodyAccelerometerMagnitudeSTD|
|tGravityAccMag-mean()|TimeGravityAccelerometerMagnitudeMean|
|tGravityAccMag-std()|TimeGravityAccelerometerMagnitudeSTD|
|tBodyAccJerkMag-mean()|TimeBodyAccelerometerJerkMagnitudeMean|
|tBodyAccJerkMag-std()|TimeBodyAccelerometerJerkMagnitudeSTD|
|tBodyGyroMag-mean()|TimeBodyGyroscopeMagnitudeMean|
|tBodyGyroMag-std()|TimeBodyGyroscopeMagnitudeSTD|
|tBodyGyroJerkMag-mean()|TimeBodyGyroscopeJerkMagnitudeMean|
|tBodyGyroJerkMag-std()|TimeBodyGyroscopeJerkMagnitudeSTD|
|fBodyAccMag-mean()|FrequencyBodyAccelerometerMagnitudeMean|
|fBodyAccMag-std()|FrequencyBodyAccelerometerMagnitudeSTD|
|fBodyBodyAccJerkMag-mean()|FrequencyBodyAccelerometerJerkMagnitudeMean|
|fBodyBodyAccJerkMag-std()|FrequencyBodyAccelerometerJerkMagnitudeSTD|
|fBodyBodyGyroMag-mean()|FrequencyBodyGyroscopeMagnitudeMean|
|fBodyBodyGyroMag-std()|FrequencyBodyGyroscopeMagnitudeSTD|
|fBodyBodyGyroJerkMag-mean()|FrequencyBodyGyroscopeJerkMagnitudeMean|
|fBodyBodyGyroJerkMag-std()|FrequencyBodyGyroscopeJerkMagnitudeSTD|

### Computing mean values
The subsetted data was further made tidy by computing the mean of all \*-std() and \*-mean() values for each subject and each activity. The yielded a 180x20 data frame.

### Column Rename
The data that resulted from the previous step was further tidied by updating the column names to reflect that these values are now averages. The following section details these new column names.

## Final Data Set
The following details the final data set columns names and their description:

|Variable Name|Description|
|-------------|-----------|
|subject_id|The identifier of the subject associated with the observation|
|activity|The activity associated with the observation. Possible values are Walking, Walking_Upstairs, Walking_Downstairs, Sitting, Standing, Laying|
|Average of TimeBodyAccelerometerMagnitudeMean Values|Average of all TimeBodyAccelerometerMagnitudeMean values associated with the subject and activity|
|Average of TimeBodyAccelerometerMagnitudeSTD Values|Average of all TimeBodyAccelerometerMagnitudeSTD values associated with the subject and activity|
|Average of TimeGravityAccelerometerMagnitudeMean Values|Average of all TimeGravityAccelerometerMagnitudeMean values associated with the subject and activity|
|Average of TimeGravityAccelerometerMagnitudeSTD Values|Average of all TimeGravityAccelerometerMagnitudeSTD values associated with the subject and activity|
|Average of TimeBodyAccelerometerJerkMagnitudeMean Values|Average of all TimeBodyAccelerometerJerkMagnitudeMean values associated with the subject and activity|
|Average of TimeBodyAccelerometerJerkMagnitudeSTD Values|Average of all TimeBodyAccelerometerJerkMagnitudeSTD values associated with the subject and activity|
|Average of TimeBodyGyroscopeMagnitudeMean Values|Average of all TimeBodyGyroscopeMagnitudeMean values associated with the subject and activity|
|Average of TimeBodyGyroscopeMagnitudeSTD Values|Average of all TimeBodyGyroscopeMagnitudeSTD values associated with the subject and activity|
|Average of TimeBodyGyroscopeJerkMagnitudeMean Values|Average of all TimeBodyGyroscopeJerkMagnitudeMean values associated with the subject and activity|
|Average of TimeBodyGyroscopeJerkMagnitudeSTD Values|Average of all TimeBodyGyroscopeJerkMagnitudeSTD values associated with the subject and activity|
|Average of FrequencyBodyAccelerometerMagnitudeMean Values|Average of all FrequencyBodyAccelerometerMagnitudeMean values associated with the subject and activity|
|Average of FrequencyBodyAccelerometerMagnitudeSTD Values|Average of all FrequencyBodyAccelerometerMagnitudeSTD values associated with the subject and activity|
|Average of FrequencyBodyAccelerometerJerkMagnitudeMean Values|Average of all FrequencyBodyAccelerometerJerkMagnitudeMean values associated with the subject and activity|
|Average of FrequencyBodyAccelerometerJerkMagnitudeSTD Values|Average of all FrequencyBodyAccelerometerJerkMagnitudeSTD values associated with the subject and activity|
|Average of FrequencyBodyGyroscopeMagnitudeMean Values|Average of all FrequencyBodyGyroscopeMagnitudeMean values associated with the subject and activity|
|Average of FrequencyBodyGyroscopeMagnitudeSTD Values |Average of all FrequencyBodyGyroscopeMagnitudeSTD values associated with the subject and activity|
|Average of FrequencyBodyGyroscopeJerkMagnitudeMean Values|Average of all FrequencyBodyGyroscopeJerkMagnitudeMean values associated with the subject and activity|
|Average of FrequencyBodyGyroscopeJerkMagnitudeSTD Values|Average of all FrequencyBodyGyroscopeJerkMagnitudeSTD values associated with the subject and activity|

Space prohibits illustrating the entire resulting data set. Here is the output of the R str() function, which provides some insight as to what the final tidy data looks like:

<pre>
<code>Classes ‘grouped_df’, ‘tbl_df’, ‘tbl’ and 'data.frame':	180 obs. of  20 variables:
 $ subject_id                                                   : int  1 1 1 1 1 1 2 2 2 2 ...
 $ activity                                                     : chr  "Laying" "Sitting" "Standing" "Walking" ...
 $ Average of TimeBodyAccelerometerMagnitudeMean Values         : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 $ Average of TimeBodyAccelerometerMagnitudeSTD Values          : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 $ Average of TimeGravityAccelerometerMagnitudeMean Values      : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 $ Average of TimeGravityAccelerometerMagnitudeSTD Values       : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 $ Average of TimeBodyAccelerometerJerkMagnitudeMean Values     : num  -0.9544 -0.9874 -0.9924 -0.1414 -0.0894 ...
 $ Average of TimeBodyAccelerometerJerkMagnitudeSTD Values      : num  -0.9282 -0.9841 -0.9931 -0.0745 -0.0258 ...
 $ Average of TimeBodyGyroscopeMagnitudeMean Values             : num  -0.8748 -0.9309 -0.9765 -0.161 -0.0757 ...
 $ Average of TimeBodyGyroscopeMagnitudeSTD Values              : num  -0.819 -0.935 -0.979 -0.187 -0.226 ...
 $ Average of TimeBodyGyroscopeJerkMagnitudeMean Values         : num  -0.963 -0.992 -0.995 -0.299 -0.295 ...
 $ Average of TimeBodyGyroscopeJerkMagnitudeSTD Values          : num  -0.936 -0.988 -0.995 -0.325 -0.307 ...
 $ Average of FrequencyBodyAccelerometerMagnitudeMean Values    : num  -0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...
 $ Average of FrequencyBodyAccelerometerMagnitudeSTD Values     : num  -0.798 -0.928 -0.982 -0.398 -0.187 ...
 $ Average of FrequencyBodyAccelerometerJerkMagnitudeMean Values: num  -0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...
 $ Average of FrequencyBodyAccelerometerJerkMagnitudeSTD Values : num  -0.922 -0.982 -0.993 -0.103 -0.104 ...
 $ Average of FrequencyBodyGyroscopeMagnitudeMean Values        : num  -0.862 -0.958 -0.985 -0.199 -0.186 ...
 $ Average of FrequencyBodyGyroscopeMagnitudeSTD Values         : num  -0.824 -0.932 -0.978 -0.321 -0.398 ...
 $ Average of FrequencyBodyGyroscopeJerkMagnitudeMean Values    : num  -0.942 -0.99 -0.995 -0.319 -0.282 ...
 $ Average of FrequencyBodyGyroscopeJerkMagnitudeSTD Values     : num  -0.933 -0.987 -0.995 -0.382 -0.392 ...
 - attr(*, "vars")=List of 1
  ..$ : symbol subject_id
  - attr(*, "drop")= logi TRUE</code>
  </pre>
