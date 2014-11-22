CodeBook

===================================================

INFORMATION ABOUT THE DATA, VARIABLES, AND THEIR COLLECTION FROM THE CREATORS OF THIS DATASET:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

Other Notes: 

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

The complete list of variables of each feature vector is available in 'features.txt'

For more information about this dataset, contact activityrecognition@smartlab.ws.


**My Note: in the “tidy” dataset submitted for this project, these variables were renamed, using the conventions outlined below.


======================================================================

INFORMATION ABOUT THE SUBMITTED DATASET

Each row of the finalSummary dataset represents a distinct combination of subject, activity, variable and average (mean) value for that distinct subject, activity, variable combination.

The finalSummary dataset contains the following columns:

	⁃	Subject: indicates the subject (person) from whose device the data was collected (n = 30). Each n indicates a distinct subject. These were not given more descriptive names because no further information regarding subject identity was provided.
	⁃	Activity: indicates the activity category for the subject and variable measurement. Activities were assigned using the the data contained in the y_test.txt and y_train.txt files (see “naming conventions for activity names” below). Activity names are:

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

	⁃	variable: This column specifies the descriptive variable name for which the variable measurement was calculated. See below for descriptions on how the creators’ original names were processed to create these descriptive variable names.
	
	Variable measures are:

TimeBodyAccelerometermeanXAxis
TimeBodyAccelerometermeanYAxis
TimeBodyAccelerometermeanZAxis
TimeBodyAccelerometerstdXAxis
TimeBodyAccelerometerstdYAxis
TimeBodyAccelerometerstdZAxis
TimeGravityAccelerometermeanXAxis
TimeGravityAccelerometermeanYAxis
TimeGravityAccelerometermeanZAxis
TimeGravityAccelerometerstdXAxis
TimeGravityAccelerometerstdYAxis
TimeGravityAccelerometerstdZAxis
TimeBodyAccelerometerJerkmeanXAxis
TimeBodyAccelerometerJerkmeanYAxis
TimeBodyAccelerometerJerkmeanZAxis
TimeBodyAccelerometerJerkstdXAxis
TimeBodyAccelerometerJerkstdYAxis
TimeBodyAccelerometerJerkstdZAxis
TimeBodyGyroscopemeanXAxis
TimeBodyGyroscopemeanYAxis
TimeBodyGyroscopemeanZAxis
TimeBodyGyroscopestdXAxis
TimeBodyGyroscopestdYAxis
TimeBodyGyroscopestdZAxis
TimeBodyGyroscopeJerkmeanXAxis
TimeBodyGyroscopeJerkmeanYAxis
TimeBodyGyroscopeJerkmeanZAxis
TimeBodyGyroscopeJerkstdXAxis
TimeBodyGyroscopeJerkstdYAxis
TimeBodyGyroscopeJerkstdZAxis
TimeBodyAccelerometerMagmean
TimeBodyAccelerometerMagstd
TimeGravityAccelerometerMagmean
TimeGravityAccelerometerMagstd
TimeBodyAccelerometerJerkMagmean
TimeBodyAccelerometerJerkMagstd
TimeBodyGyroscopeMagmean
TimeBodyGyroscopeMagstd
TimeBodyGyroscopeJerkMagmean
TimeBodyGyroscopeJerkMagstd
FrequencyDomainSignalBodyAccelerometermeanXAxis
FrequencyDomainSignalBodyAccelerometermeanYAxis
FrequencyDomainSignalBodyAccelerometermeanZAxis
FrequencyDomainSignalBodyAccelerometerstdXAxis
FrequencyDomainSignalBodyAccelerometerstdYAxis
FrequencyDomainSignalBodyAccelerometerstdZAxis
FrequencyDomainSignalBodyAccelerometermeanFreqXAxis
FrequencyDomainSignalBodyAccelerometermeanFreqYAxis
FrequencyDomainSignalBodyAccelerometermeanFreqZAxis
FrequencyDomainSignalBodyAccelerometerJerkmeanXAxis
FrequencyDomainSignalBodyAccelerometerJerkmeanYAxis
FrequencyDomainSignalBodyAccelerometerJerkmeanZAxis
FrequencyDomainSignalBodyAccelerometerJerkstdXAxis
FrequencyDomainSignalBodyAccelerometerJerkstdYAxis
FrequencyDomainSignalBodyAccelerometerJerkstdZAxis
FrequencyDomainSignalBodyAccelerometerJerkmeanFreqXAxis
FrequencyDomainSignalBodyAccelerometerJerkmeanFreqYAxis
FrequencyDomainSignalBodyAccelerometerJerkmeanFreqZAxis
FrequencyDomainSignalBodyGyroscopemeanXAxis
FrequencyDomainSignalBodyGyroscopemeanYAxis
FrequencyDomainSignalBodyGyroscopemeanZAxis
FrequencyDomainSignalBodyGyroscopestdXAxis
FrequencyDomainSignalBodyGyroscopestdYAxis
FrequencyDomainSignalBodyGyroscopestdZAxis
FrequencyDomainSignalBodyGyroscopemeanFreqXAxis
FrequencyDomainSignalBodyGyroscopemeanFreqYAxis
FrequencyDomainSignalBodyGyroscopemeanFreqZAxis
FrequencyDomainSignalBodyAccelerometerMagmean
FrequencyDomainSignalBodyAccelerometerMagstd
FrequencyDomainSignalBodyAccelerometerMagmeanFreq
FrequencyDomainSignalBodyBodyAccelerometerJerkMagmean
FrequencyDomainSignalBodyBodyAccelerometerJerkMagstd
FrequencyDomainSignalBodyBodyAccelerometerJerkMagmeanFreq
FrequencyDomainSignalBodyBodyGyroscopeMagmean
FrequencyDomainSignalBodyBodyGyroscopeMagstd
FrequencyDomainSignalBodyBodyGyroscopeMagmeanFreq
FrequencyDomainSignalBodyBodyGyroscopeJerkMagmean
FrequencyDomainSignalBodyBodyGyroscopeJerkMagstd
FrequencyDomainSignalBodyBodyGyroscopeJerkMagmeanFreq
AngleTimeBodyAccelerometerMeangravity
AngleTimeBodyAccelerometerJerkMeangravityMean
AngleTimeBodyGyroscopeMeangravityMean
AngleTimeBodyGyroscopeJerkMeangravityMean
angleXAxisgravityMean
angleYAxisgravityMean
angleZAxisgravityMean

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
angle(): Angle between two vectors.

	⁃	The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals from the “Human Activity Recognition Using Smartphones Dataset”. These time domain signals (prefix ‘Time’ to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal ( denoted by “Accelerometer, for the device which measured it) was then separated into body and gravity acceleration signals (such as TimeBodyAccelerometerXAxis and TimeGravityAccelerometerZAxis) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. The tail of these and other relevant measurements contains the axis which they measure, and includes “XAxis”, “YAxis”, and “ZAxis” for all relevant cases.

	⁃	Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerometerJerk, and TimeBodyGyroscopeJerk, both for the X, Y, and Z axes). The magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerometerMagMean, etc.). “Gyroscope” is used to indicate measurements collected using the device’s gyroscope.

	⁃	Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAccelerometer, FrequencyBodyAccelerometerJerk-XAxis, FrequencyBodyGyroscopeXAxis, FrequencyBodyAccelerometerJerkMag, FrequencyBodyGyroscopeMag, FrequencyBodyGyroscopeJerkMag (all of which include XAxis, YAxis, and ZAxis specifications). 

	⁃	Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
TimeBodyAccelerometerMean
TimeBodyAccelerometerJerkMean
TimeBodyGyroscopeMean
TimeBodyGyroscopeJerkMean

====================================================================

NOTES ON MY OWN TRANSFORMATIONS OF THE DATA

SELECTION OF MEAN AND STANDARD DEVIATION MEASUREMENTS:

The project assignment instructions instruct me to extract “only the measurements on the mean and standard deviation for each measurement,” and I followed those instructions literally. The final tidy data set I submitted includes only measures of either mean and standard deviation, and includes all such measures from the provided sensor data. I took this to include any and all variables which included either “mean” or “std” in their names (the information listed above, from the creators of the dataset, specifies that these are used to denote these two measures). 

Although the original dataset does include variables that include the string “mean” in a number of positions—i.e., “tGravityAcc-mean()-X”, “fBodyAcc-meanFreq()-X”, and even “angle(tBodyAccJerkMean),gravityMean)”—I took the language of the project assignment to state that including all measurements of any mean were acceptable. In addition, my technical knowledge is not sufficient to allow me to discriminate between which of the aforementioned features might not actually indicate that they were the mean of the specified measure, so I opted for an inclusive approach which counted all features containing “mean.” There were no similar concerns with identifying variables measuring standard deviation.

The analysis was not limited to only variables which contained paired ‘mean’ and ‘sd’ observations for the same reasons.

NAMING CONVENTIONS FOR ACTIVITY NAMES:

Activity names were assigned using the data contained in the y_test.txt and y_train.txt files, and were converted to their textual names (i.e., 1 = “WALKING”, 2 = “WALKING_UPSTAIRS”) using the data contained in the activity_labels.txt file included with the dataset.

NAMING CONVENTIONS FOR VARIABLE NAMES:

Because the project requires “appropriately labeling the dataset with descriptive variable names,” I applied a number of small transformations to the variable names of the dataset, after subsetting out only those measurement which included mean and standard deviation. Here is a listing of the transformations applied to variable names:

	⁃	Variable names were passed through the function make.names() to make syntactically valid names and to eliminate illegal characters, and then all periods (“.”) and spaces at the end of names were removed (this was to follow Dr. Leek’s specifications regarding text in data sets on slide 16 of the “editing text variables” lecture, here http://jtleek.com/modules/03_GettingData/04_01_editingTextVariables/#1)
	⁃	The markers -X, -Y, and -Z were replaced from the ends of variable names to instead include the axis that they measured (XAxis, YAxis, ZAxis), which was more descriptive and would ensure that users understood what those letters represented.
	⁃	Names beginning with “t” or “f” had those characters replaced with what they actually represented (“Time” and “FrequencyDomainSignal”, respectively), again to ensure that users understood what they represented—the meaning of a t or f could be confusing to users. “features_info.txt” specifies this as the meaning of the leading “t” and “f”.
	⁃	Instances of “Acc” or “Gyro” were replaced with “Accelerometer” and “Gyroscope”. These are the means by which those variables were measured. “features_info.txt” specifies this as the meaning of the “Acc” and “Gyro” strings.


FORMAT OF FINAL “TIDY” DATA:

The decision to provide the code in its “narrow” format instead of a “wide” format was made for a number of reasons, each based on usability of the data and the definition of “tidy” data from this course and the original “Tidy Data” paper by Wickham: 


	1.	As discussed in the “Tidy data and the assignment” forum (https://class.coursera.org/getdata-009/forum/thread?thread_id=192), and as stated by the Community TA member David in the “Project FAQ” forum (https://class.coursera.org/getdata-009/forum/thread?thread_id=58), both formats are acceptable as “tidy” data. This data fits the definition of tidy data because it contains only one variable per column, only one observation per row, and includes (human-readable) column headings. 
	2.	In the Wickham “Tidy Data” paper, the author acknowledges that the specific definition of “tidy” data is problem-specific (it depends on the problem the data will use used to solve), and as we have no information about the intended use for this summary dataset, I minimized the number of columns by providing a “narrow” dataset for ease of analysis downstream.
	3.	This was the way it was output by my code, and I did not alter it in an attempt to keep the code as simple as possible when nothing about the task requires the data to be in “wide” format. All other things being equal, I assumed that the simplest process was best.

A NOTE ON CAPITALIZATION:

Although Dr. Leek suggests that data not include capitalizations—he recommends formatting it in all lowercase text “when possible”—I found that suggestion to be in conflict with the requirement that our final dataset be tidy—and, therefore, have human-readable variable names. Without allowing the capitalization in the variable names to remain, they would be incomprehensible, or else extremely difficult, for almost any observer to understand. Variables would have names including “frequencydomainsignalbodybodyaccelerometerjerkmagmeanfreq” and “frequencydomainsignalbodyaccelerometerjerkmeanfreqyaxis”. In order to ensure that they were reasonably easy for an observer to read—and that the data was therefore tidy—I opted to preserve the “camel” formatting which includes some capital letters. 
