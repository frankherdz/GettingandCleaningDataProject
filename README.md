# Getting and Cleaning Data Project

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
The following files are included in this project:
* A tidy data (tidydataset1.csv) set derived from data and measures from this link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
* A tidy data (tidydataset2.csv) set based on the average from tidy data set created on step #1.
* REAME.MD file.
* CODEBOOKk.MD file.
* run_analysis.R

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 


## Script: run_analysis.R 

This script will download data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. This data is saved in a zip and then unzip.
The data is cleaned and transformed to the following tidy data set:


* tidydataset1.csv - Get all data related to mean and standard deviation for each measurement. 
* tidydataset2.csv - Get all the average of each variable for each activity and each subject
