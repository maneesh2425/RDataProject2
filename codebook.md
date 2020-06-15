
# Code Book
**Getting and Cleaning Data Project**
By: Syed Abdullah Muzaffar
Language: R

Related Script: "data_analysis.R"

**Variables:**
**Dataset: UCI HAR Dataset**
**Step 1:**
 - **dir**
	 - The directory that the dataset is stored in:
 - **activity**
	 - The list of activities with their numeric id and description
 - **features**
	 -  The list of features
 - **train_sub**
	 - Subject tests for the training dataset
 - **train_X**
	 - Feature values for the training dataset
 - **train_y**
	 - Activity ID's for the training dataset
 - **test_sub**
	 - Subject tests for the test dataset
 - **test_X**
	 - Feature values for the test dataset
 - **test_y**
	 - Activity ID's for the test dataset
 
 - **sub**
	 - Merges **train_sub** and **test_sub**
 - **X**
	 - Merges **train_X** and **test_X**
 - **y**
	 - Merges **train_y** and **test_y**

The **train_*** and  **test_*** data frames are removed

 - **Data** 
	 - Merges **sub**, **y**, **X** by columns
	 - The column names for Data columns **X** are replaced by Descriptive **features**

**Step 2:**
 - **Data**
	 - Only the mean and standard deviation measurements are extracted.

**Step 3:**
 - **Data**
	 - Replace Activity ID with Activity Name in the 2nd column

**Step 4:**
 - **Data**
	 - Columns 2:END are labelled with descriptive names
		 - Acc -> Accelerometer
		 - Gyro -> Gyroscope
		 - Mag -> Magnitude
		 - mean -> Mean
		 - std -> SD
		 - Freq \f -> Frequency
		 - t -> Time
		 -  "-" (dashes) are removed
		 - Some minor issues are fixed (extra brackets)

**Step 5:**
 - **Data2**
	 - Contains the averages for each activity and group feature
	 - exported to **"Data2.txt"**
