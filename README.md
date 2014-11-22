getdata-009-jpgard
==================

Final Project for Coursera Getting and Cleaning Data

README

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The summary dataset submitted as a part of this project was prepared using run_analysis.R, which reads the test, train, and activity data, selects measures of only mean and standard deviation, and computes the average (mean) of each of those measures for each activity for each subject. Measure names are cleaned up and reformatted to align with the principles of “tidy” data.

The dataset includes the following files:
=========================================

- 'README.md’

- ‘CodeBook.md’

- ‘run_analysis.R’

Notes:

For information about the data, variables, organization, and naming conventions, see the ‘CodeBook.md’ document. ‘run_analysis.R’ also contains extensive commenting outlining the components and functions of the script.
