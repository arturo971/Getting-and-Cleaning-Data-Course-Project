Getting and Cleaning Data Course Project
========================================

Files in this repo
------------------

-   Read me
-   code
-   Code Book
-   Tidy data set

Objectives of the project
-------------------------

The purpose of this project is to demonstrate your ability to collect,
work with, and clean a data set. The goal is to prepare tidy data that
can be used for later analysis.

Instructions
------------

-   Merges the training and the test sets to create one data set.
-   Extracts only the measurements on the mean and standard deviation
    for each measurement.
-   Uses descriptive activity names to name the activities in the data
    set *Appropriately labels the data set with descriptive
    variable names. *From the data set in step 4, creates a second,
    independent tidy data set with the average of each variable for each
    activity and each subject.

Steps to get a tidy dataset
---------------------------

1.  Setting the working directory, downloading the raw files and
    unzipping them
2.  Reading the necessary tables
3.  Naming the variables
4.  Binding the subject, activity and the measurements
5.  Setting the subject and activity as factors and put labels on
6.  Joining the test and train datasets into one
7.  Deleting the variables that don't measure mean and std
8.  Changing the variable names to make them more readable
9.  Grouping the data set by subject and activity and getting the mean
10. Write a table with the tidy data
