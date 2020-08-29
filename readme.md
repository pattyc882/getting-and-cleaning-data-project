---
title: "readme"
output: html_document
---
Comments are included in script to describe actions taken on the data.

I first manually created a projectfiles folder in the data working directory.

Zip and dplyr libraries are loaded.  Then the file is downloaded from the 
supplied URL and unzipped to the project files folder.  All tables were read in
using read.table.  Data frame names remained the same as the files with the exception
of removing underscores.

Column 1 was then deleted from the features dataframe since it is not needed to 
use the contents as column names.  The features dataframe was transposed to allow
it to be easily used for column names.  Column 1 is also removed from the testsubjects 
and trainsubjects dataframe since it's a duplicate of the index values.

The following actions were applied first to the train data then to the test data. 
Column names were assigned to the xtest and xtrain dataframes from the transposed
features data frame.  Next, the activity lables and subject tables were added to the 
test and train dataframes using cbind.  V1 in activity lables was used as a key 
column when joining the tables but is no longer needed so it was deleted.

Next, the train and test tables were joined.  Subject numer and activity labels
were applied to the first two columns of the new datase.

Gsub was used to make the column names more human readable.

In order to subset the data to just the subject ID, activity, columns reporting means
and columns reporting standard deviation, grep was used with subject|activity|mean|std
used as the pattern and a new dataframe was created from this step.  Another new 
dataframe was created reporting means for each subject/activity.

Last, the dataframe containing only the means of the selected variables is exported to a csv file.