Instructions
=====================

This Instructions' file is intended for anyone interested in reproducing the data set generated as part of the exercise
This Instructions' file outlines the primary sections of this project, which was completed for the *Getting and Cleaning Data* course. In addition to providing a bird's eye view of the project, all files used in course of this project, it also guides the reader through each process that was carried out for the current project.

In what follows, first a brief description of the project is given, and this is followed by a step-by-step procedure that guides users on how to accomplish each component of the project.


## Purpose of this project ##

The purpose of this project is to extract data pertaining to Human activities as captured via smartphones, and to manipulate and tidy this data in order to formulate the data in a shape that is amenable to any downstream analysis.


## Step-by-step guide to project ##


### 1. Downloading Required Data ###

The data in question is named the *Human Activity Recognition data set*, and can be obtained from any of the following links: 
- [UCL Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
- [Zip file Direct Download](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) link.


### 2. Prepare Data for Manipulation ###

The data downloaded has to be placed in R's working directory for a user. To check which directory is the working directory, the R code ```getwd()``` can be executed. This will display the working directory, in which the folder named *UCI HAR Dataset* (which is obtained by unzipping the original downloaded file) has to be copied.

Once the folder is copied, the script to manipulate the data set can be run.


### 3. Run the run_analysis.R script ###

After successfully placing our downloaded data set in our working directory, the file present in this repository, titled *run_analysis.R* can be copied and run.

This script will manipulate the data set and produce a tidied version, also outputting this data set to the **working directory**.
