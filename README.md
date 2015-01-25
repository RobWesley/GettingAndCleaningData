<H1>Information for Project Script and Tidy Data Set File</H1>
<br/>
To run the run_analysis.R script you must do the following:
1) Copy the script to a directory
2) Set the working directory to this directory
3) extract the UCI HAR Dataset to this directory (it should create a subdirectory named UCI HAR Dataset)
4) Run the scipt -- it will create a file named "TidyDataSet.txt"
5) To read the TidyDataSet.txt file you can run the following R code in the working directory:
data <- read.table("TidyDataSet.txt", header = TRUE)
View(data)
<br/>
<br/>
<H2> Description of Script</H2>
The run_analysis script follows the steps described in the project assignment:
You should create one R script called run_analysis.R that does the following. 
<br/>
    1) Merges the training and the test sets to create one data set.
    2) Extracts only the measurements on the mean and standard deviation for each measurement. 
    3) Uses descriptive activity names to name the activities in the data set
    4) Appropriately labels the data set with descriptive variable names. 
    5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
<br/>
<H2> Codebook for variables</H2>
The variables in the resulting tidy data set are unitless averages of the mean and standard deviation measurements in the UCI HAR Dataset.  Below is a short description of each variable.  Consult the features_info.txt file in the original data for a description of that data's variables.
<br/>
<style type="text/css">
    table.tableizer-table {
	border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
} 
.tableizer-table td {
	padding: 4px;
	margin: 3px;
	border: 1px solid #ccc;
}
.tableizer-table th {
	background-color: #104E8B; 
	color: #FFF;
	font-weight: bold;
}
</style><table class="tableizer-table">
<tr class="tableizer-firstrow"><th>Variable</th><th>Description</th></tr>
 <tr><td>Subject</td><td>The number of the test subject</td></tr>
 <tr><td>ActivityName</td><td>The activity being performed</td></tr>
 <tr><td>TimeBodyAccelerationMeanXAxis</td><td>The mean of measurements of body acceleration jerk in the time domain along the X axis</td></tr>
 <tr><td>TimeBodyAccelerationMeanYAxis</td><td>The mean of measurements of body acceleration jerk in the time domain along the Y axis</td></tr>
 <tr><td>TimeBodyAccelerationMeanZAxis</td><td>The mean of measurements of body acceleration jerk in the time domain along the Z axis</td></tr>
 <tr><td>TimeGravityAccelerationMeanXAxis</td><td>The mean of measurements of gravity acceleration jerk in the time domain along the X axis</td></tr>
 <tr><td>TimeGravityAccelerationMeanYAxis</td><td>The mean of measurements of gravity acceleration jerk in the time domain along the Y axis</td></tr>
 <tr><td>TimeGravityAccelerationMeanZAxis</td><td>The mean of measurements of gravity acceleration jerk in the time domain along the Z axis</td></tr>
 <tr><td>TimeBodyAccelerationJerkMeanXAxis</td><td>The mean of measurements of body acceleration jerk jerk in the time domain along the X axis</td></tr>
 <tr><td>TimeBodyAccelerationJerkMeanYAxis</td><td>The mean of measurements of body acceleration jerk jerk in the time domain along the Y axis</td></tr>
 <tr><td>TimeBodyAccelerationJerkMeanZAxis</td><td>The mean of measurements of body acceleration jerk jerk in the time domain along the Z axis</td></tr>
 <tr><td>TimeBodyGyroMeanXAxis</td><td>The mean of measurements of body gyroscopic movement in the time domain along the X axis</td></tr>
 <tr><td>TimeBodyGyroMeanYAxis</td><td>The mean of measurements of body gyroscopic movement in the time domain along the Y axis</td></tr>
 <tr><td>TimeBodyGyroMeanZAxis</td><td>The mean of measurements of body gyroscopic movement in the time domain along the Z axis</td></tr>
 <tr><td>TimeBodyGyroJerkMeanXAxis</td><td>The mean of measurements of body gyroscopic jerk movement in the time domain along the X axis</td></tr>
 <tr><td>TimeBodyGyroJerkMeanYAxis</td><td>The mean of measurements of body gyroscopic jerk movement in the time domain along the Y axis</td></tr>
 <tr><td>TimeBodyGyroJerkMeanZAxis</td><td>The mean of measurements of body gyroscopic jerk movement in the time domain along the Z axis</td></tr>
 <tr><td>TimeBodyAccelerationMagnitudeMean</td><td>The mean of measurements of body acceleration jerk magnitude in the time domain</td></tr>
 <tr><td>TimeGravityAccelerationMagnitudeMean</td><td>The mean of measurements of gravity acceleration jerk magnitude in the time domain</td></tr>
 <tr><td>TimeBodyAccelerationJerkMagnitudeMean</td><td>The mean of measurements of body acceleration jerk jerk magnitude in the time domain</td></tr>
 <tr><td>TimeBodyGyroMagnitudeMean</td><td>The mean of measurements of body gyroscopic movement magnitude in the time domain</td></tr>
 <tr><td>TimeBodyGyroJerkMagnitudeMean</td><td>The mean of measurements of body gyroscopic jerk movement magnitude in the time domain</td></tr>
 <tr><td>FrequencyBodyAccelerationMeanXAxis</td><td>The mean of measurements of body acceleration jerk in the frequency domain along the X axis</td></tr>
 <tr><td>FrequencyBodyAccelerationMeanYAxis</td><td>The mean of measurements of body acceleration jerk in the frequency domain along the Y axis</td></tr>
 <tr><td>FrequencyBodyAccelerationMeanZAxis</td><td>The mean of measurements of body acceleration jerk in the frequency domain along the Z axis</td></tr>
 <tr><td>FrequencyBodyAccelerationJerkMeanXAxis</td><td>The mean of measurements of body acceleration jerk jerk in the frequency domain along the X axis</td></tr>
 <tr><td>FrequencyBodyAccelerationJerkMeanYAxis</td><td>The mean of measurements of body acceleration jerk jerk in the frequency domain along the Y axis</td></tr>
 <tr><td>FrequencyBodyAccelerationJerkMeanZAxis</td><td>The mean of measurements of body acceleration jerk jerk in the frequency domain along the Z axis</td></tr>
 <tr><td>FrequencyBodyGyroMeanXAxis</td><td>The mean of measurements of body gyroscopic movement in the frequency domain along the X axis</td></tr>
 <tr><td>FrequencyBodyGyroMeanYAxis</td><td>The mean of measurements of body gyroscopic movement in the frequency domain along the Y axis</td></tr>
 <tr><td>FrequencyBodyGyroMeanZAxis</td><td>The mean of measurements of body gyroscopic movement in the frequency domain along the Z axis</td></tr>
 <tr><td>FrequencyBodyAccelerationMagnitudeMean</td><td>The mean of measurements of body acceleration jerk magnitude in the frequency domain</td></tr>
 <tr><td>FrequencyBodyAccelerationJerkMagnitudeMean</td><td>The mean of measurements of body acceleration jerk magnitude in the frequency domain</td></tr>
 <tr><td>FrequencyBodyGyroMagnitudeMean</td><td>The mean of measurements of body gyroscopic movement magnitude in the frequency domain</td></tr>
 <tr><td>FrequencyBodyGyroJerkMagnitudeMean</td><td>The mean of measurements of body gyroscopic jerk movement magnitude in the frequency domain</td></tr>
 <tr><td>TimeBodyAccelerationStdDevXAxis</td><td>The standard deviation of measurements of body acceleration jerk in the time domain along the X axis</td></tr>
 <tr><td>TimeBodyAccelerationStdDevYAxis</td><td>The standard deviation of measurements of body acceleration jerk in the time domain along the Y axis</td></tr>
 <tr><td>TimeBodyAccelerationStdDevZAxis</td><td>The standard deviation of measurements of body acceleration jerk in the time domain along the Z axis</td></tr>
 <tr><td>TimeGravityAccelerationStdDevXAxis</td><td>The standard deviation of measurements of gravity acceleration jerk in the time domain along the X axis</td></tr>
 <tr><td>TimeGravityAccelerationStdDevYAxis</td><td>The standard deviation of measurements of gravity acceleration jerk in the time domain along the Y axis</td></tr>
 <tr><td>TimeGravityAccelerationStdDevZAxis</td><td>The standard deviation of measurements of gravity acceleration jerk in the time domain along the Z axis</td></tr>
 <tr><td>TimeBodyAccelerationJerkStdDevXAxis</td><td>The standard deviation of measurements of body acceleration jerk jerk in the time domain along the X axis</td></tr>
 <tr><td>TimeBodyAccelerationJerkStdDevYAxis</td><td>The standard deviation of measurements of body acceleration jerk jerk in the time domain along the Y axis</td></tr>
 <tr><td>TimeBodyAccelerationJerkStdDevZAxis</td><td>The standard deviation of measurements of body acceleration jerk jerk in the time domain along the Z axis</td></tr>
 <tr><td>TimeBodyGyroStdDevXAxis</td><td>The standard deviation of measurements of body gyroscopic movement in the time domain along the X axis</td></tr>
 <tr><td>TimeBodyGyroStdDevYAxis</td><td>The standard deviation of measurements of body gyroscopic movement in the time domain along the Y axis</td></tr>
 <tr><td>TimeBodyGyroStdDevZAxis</td><td>The standard deviation of measurements of body gyroscopic movement in the time domain along the Z axis</td></tr>
 <tr><td>TimeBodyGyroJerkStdDevXAxis</td><td>The standard deviation of measurements of body gyroscopic jerk movement in the time domain along the X axis</td></tr>
 <tr><td>TimeBodyGyroJerkStdDevYAxis</td><td>The standard deviation of measurements of body gyroscopic jerk movement in the time domain along the Y axis</td></tr>
 <tr><td>TimeBodyGyroJerkStdDevZAxis</td><td>The standard deviation of measurements of body gyroscopic jerk movement in the time domain along the Z axis</td></tr>
 <tr><td>TimeBodyAccelerationMagnitudeStdDev</td><td>The standard deviation of measurements of body acceleration jerk magnitude in the time domain</td></tr>
 <tr><td>TimeGravityAccelerationMagnitudeStdDev</td><td>The standard deviation of measurements of gravity acceleration jerk magnitude in the time domain</td></tr>
 <tr><td>TimeBodyAccelerationJerkMagnitudeStdDev</td><td>The standard deviation of measurements of body acceleration jerk jerk magnitude in the time domain</td></tr>
 <tr><td>TimeBodyGyroMagnitudeStdDev</td><td>The standard deviation of measurements of body gyroscopic movement magnitude in the time domain</td></tr>
 <tr><td>TimeBodyGyroJerkMagnitudeStdDev</td><td>The standard deviation of measurements of body gyroscopic jerk movement magnitude in the time domain</td></tr>
 <tr><td>FrequencyBodyAccelerationStdDevXAxis</td><td>The standard deviation of measurements of body acceleration jerk in the frequency domain along the X axis</td></tr>
 <tr><td>FrequencyBodyAccelerationStdDevYAxis</td><td>The standard deviation of measurements of body acceleration jerk in the frequency domain along the Y axis</td></tr>
 <tr><td>FrequencyBodyAccelerationStdDevZAxis</td><td>The standard deviation of measurements of body acceleration jerk in the frequency domain along the Z axis</td></tr>
 <tr><td>FrequencyBodyAccelerationJerkStdDevXAxis</td><td>The standard deviation of measurements of body acceleration jerk jerk in the frequency domain along the X axis</td></tr>
 <tr><td>FrequencyBodyAccelerationJerkStdDevYAxis</td><td>The standard deviation of measurements of body acceleration jerk jerk in the frequency domain along the Y axis</td></tr>
 <tr><td>FrequencyBodyAccelerationJerkStdDevZAxis</td><td>The standard deviation of measurements of body acceleration jerk jerk in the frequency domain along the Z axis</td></tr>
 <tr><td>FrequencyBodyGyroStdDevXAxis</td><td>The standard deviation of measurements of body gyroscopic movement in the frequency domain along the X axis</td></tr>
 <tr><td>FrequencyBodyGyroStdDevYAxis</td><td>The standard deviation of measurements of body gyroscopic movement in the frequency domain along the Y axis</td></tr>
 <tr><td>FrequencyBodyGyroStdDevZAxis</td><td>The standard deviation of measurements of body gyroscopic movement in the frequency domain along the Z axis</td></tr>
 <tr><td>FrequencyBodyAccelerationMagnitudeStdDev</td><td>The standard deviation of measurements of body acceleration jerk magnitude in the frequency domain</td></tr>
 <tr><td>FrequencyBodyAccelerationJerkMagnitudeStdDev</td><td>The standard deviation of measurements of body acceleration jerk magnitude in the frequency domain</td></tr>
 <tr><td>FrequencyBodyGyroMagnitudeStdDev</td><td>The standard deviation of measurements of body gyroscopic movement magnitude in the frequency domain</td></tr>
 <tr><td>FrequencyBodyGyroJerkMagnitudeStdDev</td><td>The standard deviation of measurements of body gyroscopic jerk movement magnitude in the frequency domain</td></tr>
</table>

