Instructions
=====================

This Instructions' file is intended for anyone interested in reproducing the data set generated as part of the exercise
This Instructions' file outlines the primary sections of this project, which was completed for the *Getting and Cleaning Data* course. In addition to providing a bird's eye view of the project, all files used in course of this project, it also guides the reader through each process that was carried out for the current project.
In what follows, first a brief description of the project is given, and this is followed by a step-by-step procedure that guides users on how to accomplish each component of the project.


## Purpose of this project ##

The purpose of this project is to extract data pertaining to Human activities as captured via smartphones, and to manipulate and tidy this data in order to formulate the data in a shape that is amenable to any downstream analysis.


## Step-by-step guide to project ##

### 1. Downloading Required Data ###

The Human Activity Recognition data set, which will be used in this project, can be obtained from any one of the following links: 
- [UCL Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
- [Zip file Direct Download](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


### 2. Understanding the Data ###

To view a general description of the data set, or an elaborative description that focuses on variables used in the data set, the [Codebook](https://github.com/noobuseR/Getting-Cleaning-Data/blob/master/codebook.md) file can be perused.


### 3. Preparing Data for Manipulation ###

The downloaded data has to be placed in R's working directory for a user, in order to accomplish this step of the project. To check which directory is the working directory, the R code ```getwd()``` can be executed. This will display the working directory, in which the folder named **UCI HAR Dataset** *(which is obtained by unzipping the original downloaded file)* can be copied.
Once the folder is copied, the script to manipulate the data set can be run. This is described below.


### 4. Running the run_analysis.R script ###

After successfully placing our downloaded data set in our working directory, the file [run_analysis.R](https://github.com/noobuseR/Getting-Cleaning-Data/blob/master/run_analysis.R), can be copied to an ```R``` console and at once run completely.
This script will manipulate our data set and produce a tidied version, also generating an output of this data set to the **working directory**.

### 5. Software Requirement(s) ###

To carry out this project, a user will need to install a latest version of ```R```. No packages need to be downloaded from ```R``` to run the analysis script, as the coding was performed in base ```R```.

**It can be acknowledged that the code supplied for completing this project has been tested several times to make sure it generates the desired result.**
