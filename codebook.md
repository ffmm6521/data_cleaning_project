
#  Code book

#List of the original data sets inside the downloaded zip file:
- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt':   Each row identifies the subject who performed the activity for each window sample.
Its range is from 1 to 30. (for training set)

- 'test/subject_test.txt':  Each row identifies the subject who performed the activity for each window sample.
Its range is from 1 to 30. (for test set)



The tidy_mean.txt: shows the average of each variable for each activity and each subject. There are totally 180 average values, 6(number of activities) * 30(number of subject). The columns are the 79 features related to mean and standard deviation.For all the units, explanation of specific feature info, please refer to the original files.
#unit
Features are normalized and bounded within [-1,1]. They are unitless.
#tidy data set and selected features.
Classes ‘data.table’ and 'data.frame':	180 obs. of  88 variables:
  $ subject                          : int
  $ activity                         : chr
  $ timeBodyAccmeanX                 : num
  $ timeBodyAccmeanY                 : num
  $ timeBodyAccmeanZ                 : num
  $ timeBodyAccstdX                  : num
  $ timeBodyAccstdY                  : num
  $ timeBodyAccstdZ                  : num
  $ timeGravityAccmeanX              : num
  $ timeGravityAccmeanY              : num
  $ timeGravityAccmeanZ              : num
  $ timeGravityAccstdX               : num
  $ timeGravityAccstdY               : num
  $ timeGravityAccstdZ               : num
  $ timeBodyAccJerkmeanX             : num
  $ timeBodyAccJerkmeanY             : num
  $ timeBodyAccJerkmeanZ             : num
  $ timeBodyAccJerkstdX              : num
  $ timeBodyAccJerkstdY              : num
  $ timeBodyAccJerkstdZ              : num
  $ timeBodyGyromeanX                : num
  $ timeBodyGyromeanY                : num
  $ timeBodyGyromeanZ                : num
  $ timeBodyGyrostdX                 : num
  $ timeBodyGyrostdY                 : num
  $ timeBodyGyrostdZ                 : num
  $ timeBodyGyroJerkmeanX            : num
  $ timeBodyGyroJerkmeanY            : num
  $ timeBodyGyroJerkmeanZ            : num
  $ timeBodyGyroJerkstdX             : num
  $ timeBodyGyroJerkstdY             : num
  $ timeBodyGyroJerkstdZ             : num
  $ timeBodyAccMagmean               : num
  $ timeBodyAccMagstd                : num
  $ timeGravityAccMagmean            : num
  $ timeGravityAccMagstd             : num
  $ timeBodyAccJerkMagmean           : num
  $ timeBodyAccJerkMagstd            : num
  $ timeBodyGyroMagmean              : num
  $ timeBodyGyroMagstd               : num
  $ timeBodyGyroJerkMagmean          : num
  $ timeBodyGyroJerkMagstd           : num
  $ fouTranBodyAccmeanX              : num
  $ fouTranBodyAccmeanY              : num
  $ fouTranBodyAccmeanZ              : num
  $ fouTranBodyAccstdX               : num
  $ fouTranBodyAccstdY               : num
  $ fouTranBodyAccstdZ               : num
  $ fouTranBodyAccmeanFreqX          : num
  $ fouTranBodyAccmeanFreqY          : num
  $ fouTranBodyAccmeanFreqZ          : num
  $ fouTranBodyAccJerkmeanX          : num
  $ fouTranBodyAccJerkmeanY          : num
  $ fouTranBodyAccJerkmeanZ          : num
  $ fouTranBodyAccJerkstdX           : num
  $ fouTranBodyAccJerkstdY           : num
  $ fouTranBodyAccJerkstdZ           : num
  $ fouTranBodyAccJerkmeanFreqX      : num
  $ fouTranBodyAccJerkmeanFreqY      : num
  $ fouTranBodyAccJerkmeanFreqZ      : num
  $ fouTranBodyGyromeanX             : num
  $ fouTranBodyGyromeanY             : num
  $ fouTranBodyGyromeanZ             : num
  $ fouTranBodyGyrostdX              : num
  $ fouTranBodyGyrostdY              : num
  $ fouTranBodyGyrostdZ              : num
  $ fouTranBodyGyromeanFreqX         : num
  $ fouTranBodyGyromeanFreqY         : num
  $ fouTranBodyGyromeanFreqZ         : num
  $ fouTranBodyAccMagmean            : num
  $ fouTranBodyAccMagstd             : num
  $ fouTranBodyAccMagmeanFreq        : num
  $ fouTranBodyAccJerkMagmean        : num
  $ fouTranBodyAccJerkMagstd         : num
  $ fouTranBodyAccJerkMagmeanFreq    : num
  $ fouTranBodyGyroMagmean           : num
  $ fouTranBodyGyroMagstd            : num
  $ fouTranBodyGyroMagmeanFreq       : num
  $ fouTranBodyGyroJerkMagmean       : num
  $ fouTranBodyGyroJerkMagstd        : num
  $ fouTranBodyGyroJerkMagmeanFreq   : num
  $ angletBodyAccMeangravity         : num
  $ angletBodyAccJerkMeangravityMean : num
  $ angletBodyGyroMeangravityMean    : num
  $ angletBodyGyroJerkMeangravityMean: num
  $ angleXgravityMean                : num
  $ angleYgravityMean                : num
  $ angleZgravityMean                : num