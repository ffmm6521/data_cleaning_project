
# data_cleaning_project
This project serves to combine the original data sets and performed basic data analysis. The run_analysis.R file takes a number of data sets from the original file, and the outputs are in the tidy_combined.txt and tidy_mean.txt file. The tidy_combined.txt contains the data combining data from y_train.txt, X_train.txt, subject_train.txt,y_test.txt,X_test.txt,subject_test.txt. It also maps the label with a descriptive activity name from activity_labels.txt.  The tidy_mean.txt shows the average of each variable for each activity and each subject.

There are duplicated feature names. However, the values for the repeated feature names differ. To fix this problem, the run_analysis.R contains a function make.names() to make the repeated names unique.
