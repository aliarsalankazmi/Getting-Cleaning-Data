Instructions
=====================

This Instructions' file is intended for anyone interested in reproducing the data set generated as part of the exercise
This Instructions' file outlines the primary sections of this project, which was completed for the *Getting and Cleaning Data* course. In addition to providing a bird's eye view of the project, all files used in course of this project, it also guides the reader through each process that was carried out for the current project.
In what follows, first a brief description of the project is given, and this is followed by a step-by-step procedure that guides users on how to accomplish each component of the project.


## Purpose of this Project ##

The purpose of this project is to extract data pertaining to Human activities as captured via smartphones, and to manipulate and tidy this data in order to formulate the data in a shape that is amenable to any downstream analysis.

![ProjectOverview](https://cloud.githubusercontent.com/assets/5294000/4696678/e4390650-5816-11e4-90db-3b0f5a3f57f5.PNG)

The image above depicts how this project was structured - which steps were carried out in sequential order to accomplish the project.   
In the following sections, a description of these steps has been provided, along with links to necessary files that complement each step.

## Step-by-step Guide to Project ##

### 1. Downloading Required Data ###

The Human Activity Recognition data set, which will be used in this project, can be obtained from the following link: 
- [Zip file Download](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


### 2. Understanding the Data ###

To understand the downloaded data set, as well as any variables used therein, the [Codebook](https://github.com/noobuseR/Getting-Cleaning-Data/blob/master/codebook.md) file can be perused. The codebook contains explanation of the data generation process, as well as description of variables, such as what the variable captures, whether it has any missing values, etc.

*This file has been provided as a part of this project.*


### 3. Preparing Data for Manipulation ###

To prepare our downloaded data set for manipulation, the software ```R``` is to be used, with the downloaded data set placed at a location which R can access to perform manipulation. Specifically, we need to unzip our downloaded file and place our data set in R's current working directory.

To check which directory is the working directory, the R code ```getwd()``` can be executed within an R console. This will display the working directory. After this, we unzip our downloaded file and place the folder named **UCI HAR Dataset** in the working directory. Once this is accomplished, the script to manipulate the data set can be run (this is described below).


### 4. Running the run_analysis.R script ###

After successfully placing the **UCI HAR Dataset** folder in our working directory, the file [run_analysis.R](https://github.com/noobuseR/Getting-Cleaning-Data/blob/master/run_analysis.R), can be copied to an ```R``` console and run completely at once. This script will manipulate our data set and produce a tidied version, while also generating an output of this data set to the **working directory**.

A pseudocode as to how the script works is as follows:
  - Formulate paths to where our data sets are located
  - Read in all the data set files
  - Merge the training and testing files to create a complete data set
  - Identify and extract only those variables that measure mean values or the standard deviation
  - Rename variables and data values to make them more comprehensive
  - Group records by each participant and activity, and calculate the average of each variable for this grouped data
  - Write the new data set to the working directory, ready for downstream analyses.

*The script file has been provided as a part of this project.*

---------------------------------------------------------------------------------------------------------

### Software Requirement(s) ###

To carry out this project, a user will need to install a latest version of ```R```. No packages need to be downloaded from ```R``` to run the analysis script, as the coding was performed in base ```R```.

**It can be acknowledged that the code supplied for completing this project has been tested several times to make sure it generates the desired result.**
